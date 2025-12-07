uint64_t sub_1D677B630()
{
  v42 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 184);
  sub_1D677E2B8(*(v0 + 200), v2, type metadata accessor for DebugFormatCanvasBindResult);
  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_state;
  swift_beginAccess();
  sub_1D60CEB88(v2, v1 + v3);
  swift_endAccess();
  v4 = *(v0 + 344);
  sub_1D72629AC();
  if (!v4)
  {
    v8 = *(v0 + 312);
    v9 = *(v0 + 288);
    sub_1D676AE48();

    if (v8 == v9)
    {
      while (1)
      {
        v12 = *(v0 + 256);
        v13 = *(v0 + 272) + 1;
        sub_1D677DBBC(*(v0 + 224), type metadata accessor for DebugFormatWorkspaceCanvasSection);
        if (v13 == v12)
        {
          break;
        }

        v14 = *(v0 + 264);
        v15 = *(v0 + 272) + 1;
        *(v0 + 272) = v15;
        v16 = *(v0 + 224);
        v17 = *(v0 + 208);
        sub_1D677E3E4(*(v0 + 120) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + v14 * v15, v16, type metadata accessor for DebugFormatWorkspaceCanvasSection);
        v18 = *(v16 + *(v17 + 40));
        *(v0 + 280) = v18;
        if (v18 >> 62)
        {
          v10 = sub_1D7263BFC();
          *(v0 + 288) = v10;
          if (v10)
          {
LABEL_12:
            v19 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          v10 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          *(v0 + 288) = v10;
          if (v10)
          {
            goto LABEL_12;
          }
        }
      }

      v21 = *(*(v0 + 128) + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_editor);

      sub_1D725972C();

      if ((*(v0 + 358) & 1) == 0)
      {
        goto LABEL_26;
      }

      v22 = sub_1D67728D8();

      sub_1D725972C();

      v23 = *(v0 + 120);
      if (*(v0 + 359))
      {
        v24 = v22;
        v25 = sub_1D60CAD44(v23, v24, &v41);
      }

      else
      {

        v25 = *(v0 + 120);
      }

      v26 = *(v0 + 128);
      *&v26[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections] = v25;

      v27 = objc_opt_self();
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_1D677E6A0;
      *(v29 + 24) = v28;
      *(v0 + 48) = sub_1D677E6A4;
      *(v0 + 56) = v29;
      *(v0 + 16) = MEMORY[0x1E69E9820];
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_1D69C9704;
      *(v0 + 40) = &block_descriptor_57;
      v30 = _Block_copy((v0 + 16));
      v31 = v26;

      [v27 performWithoutAnimation_];
      _Block_release(v30);
      LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

      if ((v27 & 1) == 0)
      {
LABEL_26:
        v32 = *(v0 + 168);

        sub_1D725B31C();

        v33 = type metadata accessor for DebugFormatWorkspaceCanvasSelection(0);
        v34 = *(v33 - 8);
        v35 = (*(v34 + 48))(v32, 1, v33);
        sub_1D677DBBC(v32, sub_1D677A398);
        if (v35 == 1)
        {
          v37 = *(v0 + 152);
          v36 = *(v0 + 160);
          v38 = *(v0 + 356);
          v39 = *(v0 + 128);
          sub_1D677E3E4(*(v0 + 144), v37, type metadata accessor for DebugFormatWorkspace);
          v40 = *(v39 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections);

          sub_1D6A3B508(v37, v38 & 0x1FF, v21, v40, v36);
          (*(v34 + 56))(v36, 0, 1, v33);
          sub_1D67731E8(v36);
        }

        v6 = *(v0 + 8);
        goto LABEL_3;
      }

      goto LABEL_32;
    }

    v19 = *(v0 + 312);
LABEL_14:
    *(v0 + 296) = 0;
    v20 = *(v0 + 280);
    if ((v20 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA6FB460](v19);
    }

    else
    {
      if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v10, v20, v11);
      }
    }

    *(v0 + 304) = v10;
    *(v0 + 312) = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      *(v0 + 320) = sub_1D67726D8();
      v10 = sub_1D677B378;
      v20 = 0;
      v11 = 0;

      return MEMORY[0x1EEE6DFA0](v10, v20, v11);
    }

    __break(1u);
    goto LABEL_31;
  }

  v5 = *(v0 + 224);

  sub_1D677DBBC(v5, type metadata accessor for DebugFormatWorkspaceCanvasSection);

  v6 = *(v0 + 8);
LABEL_3:

  return v6();
}

uint64_t sub_1D677BCCC()
{

  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return MEMORY[0x1EEE6DFA0](sub_1D677BD38, v1, v2);
}

uint64_t sub_1D677BD38()
{
  v40 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 184);
  *v2 = *(v0 + 344);
  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_state;
  swift_beginAccess();
  sub_1D60CEB88(v2, v1 + v3);
  swift_endAccess();
  sub_1D72629AC();
  v5 = *(v0 + 312);
  v6 = *(v0 + 288);
  sub_1D676AE48();

  if (v5 != v6)
  {
    v16 = *(v0 + 312);
LABEL_13:
    *(v0 + 296) = 0;
    v17 = *(v0 + 280);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1DA6FB460](v16);
    }

    else
    {
      if (v16 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v7, v17, v8);
      }
    }

    *(v0 + 304) = v7;
    *(v0 + 312) = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      *(v0 + 320) = sub_1D67726D8();
      v7 = sub_1D677B378;
      v17 = 0;
      v8 = 0;

      return MEMORY[0x1EEE6DFA0](v7, v17, v8);
    }

    __break(1u);
    goto LABEL_30;
  }

  while (1)
  {
    v9 = *(v0 + 256);
    v10 = *(v0 + 272) + 1;
    sub_1D677DBBC(*(v0 + 224), type metadata accessor for DebugFormatWorkspaceCanvasSection);
    if (v10 == v9)
    {
      break;
    }

    v11 = *(v0 + 264);
    v12 = *(v0 + 272) + 1;
    *(v0 + 272) = v12;
    v13 = *(v0 + 224);
    v14 = *(v0 + 208);
    sub_1D677E3E4(*(v0 + 120) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + v11 * v12, v13, type metadata accessor for DebugFormatWorkspaceCanvasSection);
    v15 = *(v13 + *(v14 + 40));
    *(v0 + 280) = v15;
    if (v15 >> 62)
    {
      v7 = sub_1D7263BFC();
      *(v0 + 288) = v7;
      if (v7)
      {
LABEL_11:
        v16 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v7 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 288) = v7;
      if (v7)
      {
        goto LABEL_11;
      }
    }
  }

  v18 = *(*(v0 + 128) + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_editor);

  sub_1D725972C();

  if (*(v0 + 358))
  {
    v19 = sub_1D67728D8();

    sub_1D725972C();

    v20 = *(v0 + 120);
    if (*(v0 + 359))
    {
      v21 = v19;
      v22 = sub_1D60CAD44(v20, v21, &v39);
    }

    else
    {

      v22 = *(v0 + 120);
    }

    v23 = *(v0 + 128);
    *&v23[OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections] = v22;

    v24 = objc_opt_self();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1D677E6A0;
    *(v26 + 24) = v25;
    *(v0 + 48) = sub_1D677E6A4;
    *(v0 + 56) = v26;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1D69C9704;
    *(v0 + 40) = &block_descriptor_57;
    v27 = _Block_copy((v0 + 16));
    v28 = v23;

    [v24 performWithoutAnimation_];
    _Block_release(v27);
    LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

    if (v24)
    {
      goto LABEL_31;
    }
  }

  v29 = *(v0 + 168);

  sub_1D725B31C();

  v30 = type metadata accessor for DebugFormatWorkspaceCanvasSelection(0);
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v29, 1, v30);
  sub_1D677DBBC(v29, sub_1D677A398);
  if (v32 == 1)
  {
    v34 = *(v0 + 152);
    v33 = *(v0 + 160);
    v35 = *(v0 + 356);
    v36 = *(v0 + 128);
    sub_1D677E3E4(*(v0 + 144), v34, type metadata accessor for DebugFormatWorkspace);
    v37 = *(v36 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections);

    sub_1D6A3B508(v34, v35 & 0x1FF, v18, v37, v33);
    (*(v31 + 56))(v33, 0, 1, v30);
    sub_1D67731E8(v33);
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1D677C3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v45 = a1;
  v46 = a4;
  v48 = a3;
  v47 = a6;
  v49 = type metadata accessor for DebugFormatWorkspaceCanvasSection(0) - 8;
  MEMORY[0x1EEE9AC00](v49, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D7259CFC();
  v10 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v13;
  v14 = sub_1D7259F5C();
  v58 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v18;
  v43 = type metadata accessor for DebugFormatWorkspaceGroup(0) - 8;
  MEMORY[0x1EEE9AC00](v43, v19);
  v21 = (&v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for DebugFormatWorkspace(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v42 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D677E3E4(a2, v42, type metadata accessor for DebugFormatWorkspace);
  sub_1D677E3E4(v45, v21, type metadata accessor for DebugFormatWorkspaceGroup);
  v45 = v15;
  v40 = *(v15 + 16);
  v40(v18, v46, v14);
  v46 = v10;
  v25 = *(v10 + 16);
  v26 = v41;
  v25(v13, v44, v41);
  v27 = v21[1];
  *v9 = *v21;
  *(v9 + 1) = v27;
  v28 = v48;
  v9[17] = v48;
  LODWORD(v44) = (v28 >> 8) & 1;
  v9[18] = v44;
  v29 = v49;
  sub_1D677E3E4(v21, &v9[*(v49 + 36)], type metadata accessor for DebugFormatWorkspaceGroup);
  v40(&v9[*(v29 + 40)], v50, v58);
  v30 = v39;
  v25(&v9[*(v29 + 44)], v39, v26);
  v31 = v42;
  v32 = *(v21 + *(v43 + 36));
  v57 = v30;

  sub_1D62ED9D8(sub_1D60CEC1C, v56, v32);
  v33 = sub_1D72626EC();

  v52 = v31;
  v53 = v21;
  v54 = v48;
  v55 = v44;
  sub_1D5ECBB04(sub_1D60CEC3C, v51, v33);
  v35 = v34;

  *&v9[*(v49 + 48)] = v35;
  if (v35 >> 62)
  {
    v36 = sub_1D7263BFC();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v45 + 8))(v50, v58);
  v9[16] = v36 < 2;
  sub_1D677E2B8(v9, v47, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  (*(v46 + 8))(v30, v26);
  sub_1D677DBBC(v21, type metadata accessor for DebugFormatWorkspaceGroup);
  return sub_1D677DBBC(v31, type metadata accessor for DebugFormatWorkspace);
}

id sub_1D677C898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_1D677C914(__n128 a1)
{
  v2 = v1;
  sub_1D677A398(0, a1);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = aBlock - v9;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___navigationItemManager) = 0;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___generator) = 0;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___exporter) = 0;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___sorter) = 0;
  v11 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v2 + v11) = v12;
  v13 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_collectionView;
  v14 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  aBlock[4] = sub_1D70DF728;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D677C898;
  aBlock[3] = &block_descriptor_86;
  v15 = _Block_copy(aBlock);
  v16 = [v14 initWithSectionProvider_];
  _Block_release(v15);

  v17 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v16 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *(v2 + v13) = v17;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___devicesBarButtonItem) = 0;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___userInterfaceBarButtonItem) = 0;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___interfaceLayoutDirectionBarButtonItem) = 0;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___activateBarButtonItem) = 0;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___snapshotExportBarButtonItem) = 0;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___dimissBarButtonItem) = 0;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController____lazy_storage___statusView) = 0;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_prewarmTask) = 0;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_exportTask) = 0;
  v18 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController__selection;
  v19 = type metadata accessor for DebugFormatWorkspaceCanvasSelection(0);
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_1D677E3E4(v10, v6, sub_1D677A398);
  sub_1D677A3CC(0, &unk_1EC88B450, sub_1D677A398, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v20 = sub_1D725B2FC();
  sub_1D677DBBC(v10, sub_1D677A398);
  *(v2 + v18) = v20;
  *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections) = MEMORY[0x1E69E7CC0];
  v21 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
  v22 = type metadata accessor for DebugFormatWorkspace(0);
  (*(*(v22 - 8) + 56))(v2 + v21, 1, 1, v22);
  sub_1D726402C();
  __break(1u);
}

double sub_1D677CCC4()
{

  sub_1D725972C();

  if (v1 <= 2)
  {

    sub_1D725973C();
  }

  return result;
}

double sub_1D677CD60()
{

  sub_1D725972C();

  if (v1 <= 1)
  {

    sub_1D725973C();
  }

  return result;
}

uint64_t sub_1D677CDFC()
{
  v1 = v0;
  sub_1D677A3CC(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v50 = &v44 - v5;
  sub_1D677A398(0, v4);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DebugFormatWorkspaceCanvasSelection(0);
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v48 = &v44 - v15;
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DebugFormatWorkspace(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v46 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v44 - v26;
  v28 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
  swift_beginAccess();
  sub_1D677E3E4(v1 + v28, v19, sub_1D60CB67C);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v29 = sub_1D60CB67C;
    v30 = v19;
  }

  else
  {
    sub_1D677E2B8(v19, v27, type metadata accessor for DebugFormatWorkspace);

    sub_1D725B31C();

    v31 = v49;
    if ((*(v49 + 48))(v9, 1, v10) == 1)
    {
      sub_1D677DBBC(v27, type metadata accessor for DebugFormatWorkspace);
      v29 = sub_1D677A398;
      v30 = v9;
    }

    else
    {
      v45 = type metadata accessor for DebugFormatWorkspaceCanvasSelection;
      v32 = v9;
      v33 = v48;
      sub_1D677E2B8(v32, v48, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
      v34 = sub_1D726294C();
      (*(*(v34 - 8) + 56))(v50, 1, 1, v34);
      v35 = v47;
      sub_1D677E3E4(v33, v47, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
      v36 = v46;
      sub_1D677E3E4(v27, v46, type metadata accessor for DebugFormatWorkspace);
      sub_1D726290C();
      v37 = v1;
      v38 = sub_1D72628FC();
      v39 = (*(v31 + 80) + 40) & ~*(v31 + 80);
      v40 = (v11 + *(v21 + 80) + v39) & ~*(v21 + 80);
      v41 = swift_allocObject();
      v42 = MEMORY[0x1E69E85E0];
      v41[2] = v38;
      v41[3] = v42;
      v41[4] = v37;
      sub_1D677E2B8(v35, v41 + v39, v45);
      sub_1D677E2B8(v36, v41 + v40, type metadata accessor for DebugFormatWorkspace);
      sub_1D6736BD4(0, 0, v50, &unk_1D72E9490, v41);

      sub_1D677DBBC(v33, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
      v29 = type metadata accessor for DebugFormatWorkspace;
      v30 = v27;
    }
  }

  return sub_1D677DBBC(v30, v29);
}

unint64_t sub_1D677D34C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D725EF8C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DebugFormatWorkspaceCanvasSection(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v2 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections);
    if (result < *(v14 + 16))
    {
      sub_1D677E3E4(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * result, v12, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      type metadata accessor for DebugFormatWorkspaceCanvasHeaderView();
      (*(v4 + 104))(v7, *MEMORY[0x1E69D8478], v3);
      v15 = sub_1D7262F7C();
      (*(v4 + 8))(v7, v3);
      v16 = *(v15 + OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasHeaderView_label);
      v17 = sub_1D6769DC8();
      [v16 setAttributedText_];

      sub_1D677DBBC(v12, type metadata accessor for DebugFormatWorkspaceCanvasSection);
      return v15;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D677D598(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v54 = a1;
  sub_1D677A398(0, a2);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v52 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v52 - v9;
  v53 = type metadata accessor for DebugFormatWorkspaceCanvasSelection(0);
  v57 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DebugFormatWorkspaceCanvasSection(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v55 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DebugFormatWorkspace(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_workspace;
  swift_beginAccess();
  v56 = v3;
  sub_1D677E3E4(v3 + v27, v21, sub_1D60CB67C);
  v29 = *(v23 + 48);
  v28 = v23 + 48;
  if (v29(v21, 1, v22) == 1)
  {
    v30 = sub_1D60CB67C;
    v31 = v21;
    return sub_1D677DBBC(v31, v30);
  }

  sub_1D677E2B8(v21, v26, type metadata accessor for DebugFormatWorkspace);
  v32 = sub_1D7258DAC();
  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v28 = v26;
  v33 = *(v56 + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_sections);
  if (v32 >= *(v33 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v27 = v55;
  sub_1D677E3E4(v33 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v32, v55, type metadata accessor for DebugFormatWorkspaceCanvasSection);
  v34 = *(v27 + *(v14 + 40));
  result = sub_1D7258D9C();
  if ((v34 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v37 = MEMORY[0x1DA6FB460]();
    v36 = v53;
    goto LABEL_9;
  }

  v36 = v53;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v34 + 8 * result + 32);

LABEL_9:

    sub_1D725B31C();

    v38 = *(v57 + 48);
    if (v38(v10, 1, v36) == 1)
    {
      sub_1D677E3E4(v28, v13, type metadata accessor for DebugFormatWorkspace);
      v39 = *(v27 + 17);
      v40 = *(v27 + 18);
      *&v13[*(v36 + 24)] = MEMORY[0x1E69E7CC8];
      v41 = &v13[*(v36 + 20)];
      *v41 = v39;
      v41[1] = v40;
      if (v38(v10, 1, v36) != 1)
      {
        sub_1D677DBBC(v10, sub_1D677A398);
      }
    }

    else
    {
      sub_1D677E2B8(v10, v13, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
    }

    v42 = sub_1D6A3B45C(v37);
    v44 = *(v37 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group);
    v43 = *(v37 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group + 8);
    if (v42)
    {
      sub_1D607E1D4(*(v37 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group), *(v37 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_group + 8));
    }

    else
    {
      v45 = v28;
      v47 = *(v37 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 24);
      v46 = *(v37 + OBJC_IVAR____TtC8NewsFeed30DebugFormatWorkspaceCanvasItem_canvas + 32);
      v48 = *(v36 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = *&v13[v48];
      v50 = v46;
      v28 = v45;
      sub_1D6D76D20(v47, v50, v44, v43, isUniquelyReferenced_nonNull_native);

      *&v13[v48] = v58;
      v27 = v55;
    }

    v51 = v52;
    sub_1D677E3E4(v13, v52, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
    (*(v57 + 56))(v51, 0, 1, v36);
    sub_1D67731E8(v51);

    sub_1D677DBBC(v13, type metadata accessor for DebugFormatWorkspaceCanvasSelection);
    sub_1D677DBBC(v28, type metadata accessor for DebugFormatWorkspace);
    v30 = type metadata accessor for DebugFormatWorkspaceCanvasSection;
    v31 = v27;
    return sub_1D677DBBC(v31, v30);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D677DBBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D677DC1C(uint64_t a1)
{
  if (!qword_1EC88B460)
  {
    type metadata accessor for DebugFormatCanvasView(255);
    sub_1D677DF4C(&qword_1EC88B468, type metadata accessor for DebugFormatCanvasView, &unk_1D73A3D90);
    v1 = sub_1D725DC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88B460);
    }
  }
}

uint64_t sub_1D677DCB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DebugFormatWorkspaceCanvasSection(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D5B64684;

  return sub_1D6779BA8(a1, v8, v9, v10, v1 + v6, v11, v12);
}

void sub_1D677DDFC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D677DE70(255, a3, a4, a5);
    type metadata accessor for os_unfair_lock_s(255);
    v6 = sub_1D7263E4C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D677DE70(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D677DED8(255, a3, a4);
    v5 = sub_1D7261E1C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D677DED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5BA6EF4();
    v4 = sub_1D726297C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D677DF4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D677DF94(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DebugFormatWorkspaceCanvasSelection(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D5B64684;

  return sub_1D6775F44(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1D677E0FC(uint64_t a1, uint64_t a2)
{
  sub_1D60CB67C(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D677E164(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v6 = *(v5 + 64);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1 + ((*(v5 + 80) + 56) & ~*(v5 + 80));
  v13 = *(v12 + v6);
  if (*(v12 + v6 + 1))
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D5B64680;

  return sub_1D677ABF4(a1, v7, v8, v9, v10, v11, v12, v14 | v13);
}

uint64_t sub_1D677E2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D677E320()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8NewsFeed40DebugFormatWorkspaceCanvasViewController_collectionView);
  [v1 contentOffset];
  v3 = v2;
  v5 = v4;
  [v1 reloadData];

  return [v1 setContentOffset_];
}

uint64_t sub_1D677E3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D677C3B8(a1, *(v2 + 16), v3 | *(v2 + 24), *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_1D677E3E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D677E464(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64680;

  return sub_1D6777BAC(a1, v6, v7, v8, v1 + v5, v9);
}

void sub_1D677E594(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D677E5E4(uint64_t a1, char a2)
{
  sub_1D72585BC();

  sub_1D677859C(a1, a2);
}

uint64_t ExportedFeedDatabase.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FeedDatabaseExporter.__allocating_init(cloudContext:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t FeedDatabaseExporter.databaseURLs(for:)(uint64_t a1)
{
  v4 = *(a1 + 16);

  sub_1D677E798(&v4);
  v2 = v1;

  return v2;
}

void sub_1D677E798(uint64_t *a1)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v43 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v38 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  v42 = *a1;
  v15 = [objc_opt_self() defaultManager];
  v16 = [*(v1 + 16) contentDirectory];
  sub_1D726207C();

  sub_1D725840C();

  v17 = sub_1D725844C();
  v36 = *(v5 + 8);
  v37 = v5 + 8;
  v36(v14, v4);
  v44[0] = 0;
  v18 = [v15 contentsOfDirectoryAtURL:v17 includingPropertiesForKeys:0 options:0 error:v44];

  v19 = v44[0];
  if (v18)
  {
    v20 = sub_1D726267C();
    v21 = v19;

    v41 = *(v20 + 16);
    if (v41)
    {
      v22 = 0;
      v39 = (v5 + 32);
      v40 = v5 + 16;
      v23 = MEMORY[0x1E69E7CC0];
      v34 = v5;
      v35 = v4;
      v24 = v38;
      while (1)
      {
        if (v22 >= *(v20 + 16))
        {
          __break(1u);
        }

        v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v26 = *(v5 + 72);
        (*(v5 + 16))(v24, v20 + v25 + v26 * v22, v4);
        v27 = sub_1D677F5CC(v24, v42);
        if (v2)
        {
          break;
        }

        if (v27)
        {
          v28 = *v39;
          (*v39)(v43, v24, v4);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44[0] = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D69971B4(0, v23[2] + 1, 1);
            v23 = v44[0];
          }

          v31 = v23[2];
          v30 = v23[3];
          if (v31 >= v30 >> 1)
          {
            sub_1D69971B4((v30 > 1), v31 + 1, 1);
            v23 = v44[0];
          }

          v23[2] = v31 + 1;
          v32 = v23 + v25 + v31 * v26;
          v4 = v35;
          v28(v32, v43, v35);
          v5 = v34;
          v24 = v38;
        }

        else
        {
          v36(v24, v4);
        }

        if (v41 == ++v22)
        {
          goto LABEL_15;
        }
      }

      v36(v24, v4);

      __break(1u);
    }

    else
    {
LABEL_15:
    }
  }

  else
  {
    v33 = v44[0];
    sub_1D725829C();

    swift_willThrow();
  }
}

uint64_t FeedDatabaseExporter.exportDatabase(for:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v5 = sub_1D725C7FC();
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  v6 = sub_1D725C60C();
  *(v3 + 112) = v6;
  *(v3 + 120) = *(v6 - 8);
  *(v3 + 128) = swift_task_alloc();
  v7 = sub_1D72585BC();
  *(v3 + 136) = v7;
  *(v3 + 144) = *(v7 - 8);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v8 = sub_1D725C85C();
  *(v3 + 168) = v8;
  *(v3 + 176) = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  *(v3 + 184) = v9;
  *(v3 + 192) = v10;
  *(v3 + 200) = *(a2 + 1);
  *(v3 + 216) = a2[3];

  return MEMORY[0x1EEE6DFA0](sub_1D677ED94, 0, 0);
}

uint64_t sub_1D677ED94()
{
  v20 = v0[26];
  v1 = v0[22];
  v2 = v0[20];
  v15 = v0[23];
  v16 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v14 = v0[17];
  v17 = v0[12];
  v18 = v0[13];
  v5 = v0[10];
  v19 = v0[11];
  v21 = v0[24];
  v22 = v0[25];

  MEMORY[0x1DA6F9910](6448173, 0xE300000000000000);
  v0[28] = v21;
  v0[29] = v22;
  sub_1D725C86C();
  v6 = [*(v5 + 16) contentDirectory];
  sub_1D726207C();

  sub_1D725840C();

  sub_1D725848C();
  v7 = sub_1D725852C();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v4, v14);
  v10(v2, v14);
  *v15 = v7;
  v15[1] = v9;
  (*(v1 + 104))(v15, *MEMORY[0x1E69D6280], v16);
  sub_1D677F4F8(0, &qword_1EDF023B0, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  sub_1D725C5FC();
  v0[8] = v11;
  sub_1D677F4A0();
  sub_1D677F4F8(0, &qword_1EDF05340, MEMORY[0x1E69E62F8]);
  sub_1D677F558();
  sub_1D7263B6C();
  (*(v17 + 104))(v18, *MEMORY[0x1E69D6268], v19);
  v0[30] = sub_1D725C80C();
  v0[31] = v20();
  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = sub_1D677F114;

  return MEMORY[0x1EEE44EE0](v12);
}

uint64_t sub_1D677F114()
{
  *(*v1 + 264) = v0;

  if (v0)
  {

    v2 = sub_1D677F3F8;
  }

  else
  {
    v2 = sub_1D677F258;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D677F258()
{
  v14 = v0;
  v1 = v0[33];
  sub_1D725C7DC();
  if (v1)
  {
  }

  else
  {
    sub_1D725C82C();
    v4 = v0[28];
    v3 = v0[29];
    sub_1D5C3C480();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    v13 = inited;

    sub_1D677E798(&v13);
    v7 = v0[29];
    v6 = v0[30];
    v9 = v8;
    v10 = v0[28];
    v11 = v0[9];

    *v11 = v6;
    v11[1] = v10;
    v11[2] = v7;
    v11[3] = v9;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D677F3F8()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D677F4A0()
{
  result = qword_1EDF174D0;
  if (!qword_1EDF174D0)
  {
    sub_1D725C60C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF174D0);
  }

  return result;
}

void sub_1D677F4F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D725C60C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D677F558()
{
  result = qword_1EDF05338;
  if (!qword_1EDF05338)
  {
    sub_1D677F4F8(255, &qword_1EDF05340, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05338);
  }

  return result;
}

BOOL sub_1D677F5CC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 40;
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 16;

    sub_1D725841C();
    sub_1D5BF4D9C();
    v5 = sub_1D7263ABC();

    v2 = v4;
  }

  while ((v5 & 1) == 0);
  return v3 != 0;
}

uint64_t FeedDatabaseExporter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1D677F734(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasHeaderView_label;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasHeaderView_label;
  v13 = *&v11[OBJC_IVAR____TtC8NewsFeed36DebugFormatWorkspaceCanvasHeaderView_label];
  v14 = v11;
  [v14 addSubview_];
  [*&v11[v12] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v11[v12] setNumberOfLines_];
  v15 = objc_opt_self();
  sub_1D5E42B34();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D728AF30;
  v17 = [*&v11[v12] leadingAnchor];
  v18 = [v14 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v16 + 32) = v19;
  v20 = [*&v11[v12] trailingAnchor];
  v21 = [v14 trailingAnchor];

  v22 = [v20 constraintEqualToAnchor_];
  *(v16 + 40) = v22;
  v23 = [*&v11[v12] bottomAnchor];
  v24 = [v14 bottomAnchor];

  v25 = [v23 constraintEqualToAnchor_];
  *(v16 + 48) = v25;
  sub_1D60D0DF4();
  v26 = sub_1D726265C();

  [v15 activateConstraints_];

  return v14;
}

uint64_t sub_1D677FAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[515] = v6;
  v7[514] = a6;
  v7[513] = a5;
  v7[512] = a4;
  v7[511] = a3;
  v7[510] = a2;
  v7[509] = a1;
  v8 = sub_1D725895C();
  v7[516] = v8;
  v7[517] = *(v8 - 8);
  v7[518] = swift_task_alloc();
  v9 = sub_1D7259D1C();
  v7[519] = v9;
  v7[520] = *(v9 - 8);
  v7[521] = swift_task_alloc();
  v7[522] = swift_task_alloc();
  v10 = sub_1D7259CFC();
  v7[523] = v10;
  v7[524] = *(v10 - 8);
  v7[525] = swift_task_alloc();
  v7[526] = swift_task_alloc();
  v11 = sub_1D725A19C();
  v7[527] = v11;
  v7[528] = *(v11 - 8);
  v7[529] = swift_task_alloc();
  v12 = sub_1D7259F5C();
  v7[530] = v12;
  v7[531] = *(v12 - 8);
  v7[532] = swift_task_alloc();
  v7[533] = swift_task_alloc();
  v13 = sub_1D7257A4C();
  v7[534] = v13;
  v7[535] = *(v13 - 8);
  v7[536] = swift_task_alloc();
  v14 = sub_1D72585BC();
  v7[537] = v14;
  v7[538] = *(v14 - 8);
  v7[539] = swift_task_alloc();
  v7[540] = swift_task_alloc();
  v7[541] = swift_task_alloc();
  v7[542] = swift_task_alloc();
  v7[543] = swift_task_alloc();
  v7[544] = swift_task_alloc();
  v7[545] = swift_task_alloc();
  v7[546] = type metadata accessor for DebugFormatWorkspaceSnapshotManifest(0);
  v7[547] = swift_task_alloc();
  v15 = sub_1D725891C();
  v7[548] = v15;
  v7[549] = *(v15 - 8);
  v7[550] = swift_task_alloc();
  v7[551] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D677FF00, 0, 0);
}

uint64_t sub_1D677FF00(uint64_t a1)
{
  v2 = *(v1 + 4408);
  v3 = *(v1 + 4400);
  v4 = *(v1 + 4392);
  v5 = *(v1 + 4384);
  v6 = *(v1 + 4376);
  v7 = *(v1 + 4368);
  sub_1D725890C();
  v8 = *(v4 + 16);
  v8(v3, v2, v5);
  v9 = *(v7 + 32);
  *(v1 + 1060) = v9;
  *(v6 + v9) = MEMORY[0x1E69E7CC0];
  v8(v6, v3, v5);
  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  v10 = *(v1 + 4376);
  v11 = *(v1 + 4368);
  v12 = sub_1D725BD1C();
  v13 = __swift_project_value_buffer(v12, qword_1EDF3CA58);
  v14 = *(v11 + 20);
  v15 = *(*(v12 - 8) + 16);
  v15(v10 + v14, v13, v12);
  if (qword_1EDF3CA98 != -1)
  {
    swift_once();
  }

  v16 = *(v1 + 4376);
  v17 = *(v1 + 4368);
  v18 = __swift_project_value_buffer(v12, qword_1EDF3CAA0);
  v15(v16 + *(v17 + 24), v18, v12);
  if (qword_1EC87DA80 != -1)
  {
    swift_once();
  }

  v19 = *(v1 + 4400);
  v20 = *(v1 + 4392);
  v21 = *(v1 + 4384);
  v22 = *(v1 + 4376);
  v23 = *(v1 + 4368);
  v24 = *(v20 + 8);
  *(v1 + 4416) = v24;
  *(v1 + 4424) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v139 = v24;
  v24(v19, v21);
  v25 = __swift_project_value_buffer(v12, qword_1EC9BAC88);
  v15(v22 + *(v23 + 28), v25, v12);
  v26 = NSTemporaryDirectory();
  v142 = sub_1D726207C();
  v28 = v27;

  if (qword_1EDF272B0 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDFFCAA0;
  v30 = sub_1D725881C();
  v31 = [v29 stringFromDate_];

  v32 = sub_1D726207C();
  v34 = v33;

  MEMORY[0x1DA6F9910](v32, v34);

  v35 = 0x636170736B726F77;
  v36 = 0xEA00000000002D65;
  sub_1D725796C();

  *(v1 + 3992) = 0x636170736B726F77;
  *(v1 + 4000) = 0xEA00000000002D65;
  sub_1D5BF4D9C();
  v37 = sub_1D7263A1C();
  v39 = v38;
  v41 = v40;

  if (v41)
  {
    v42 = 0xEA00000000002D65;
  }

  else
  {
    do
    {
      sub_1D6C2BD5C(v37, v39, 0x2DuLL, 0xE100000000000000, v35, v36);
      v35 = v43;
      v42 = v44;

      *(v1 + 3992) = v35;
      *(v1 + 4000) = v42;
      v37 = sub_1D7263A1C();
      v39 = v45;
      v47 = v46;

      v36 = v42;
    }

    while ((v47 & 1) == 0);
  }

  (*(*(v1 + 4280) + 8))(*(v1 + 4288), *(v1 + 4272));
  *(v1 + 3976) = v35;
  *(v1 + 3984) = v42;
  *(v1 + 3960) = v142;
  *(v1 + 3968) = v28;
  sub_1D726235C();
  sub_1D726226C();

  sub_1D725840C();

  v48 = objc_opt_self();
  v49 = [v48 defaultManager];
  v50 = sub_1D725844C();
  *(v1 + 4056) = 0;
  v51 = [v49 removeItemAtURL:v50 error:v1 + 4056];

  v52 = *(v1 + 4056);
  if (v51)
  {
    v53 = v52;
  }

  else
  {
    v54 = v52;
    v55 = sub_1D725829C();

    swift_willThrow();
  }

  v56 = [v48 defaultManager];
  v57 = sub_1D725844C();
  *(v1 + 4048) = 0;
  v58 = [v56 createDirectoryAtURL:v57 withIntermediateDirectories:0 attributes:0 error:v1 + 4048];

  v59 = *(v1 + 4048);
  if (v58)
  {
    v60 = v59;
  }

  else
  {
    v61 = v59;
    v62 = sub_1D725829C();

    swift_willThrow();
  }

  sub_1D725849C();
  v63 = [v48 defaultManager];
  v64 = sub_1D725844C();
  *(v1 + 4040) = 0;
  v65 = [v63 createDirectoryAtURL:v64 withIntermediateDirectories:0 attributes:0 error:v1 + 4040];

  v66 = *(v1 + 4040);
  if (v65)
  {
    v67 = *(v1 + 4088);
    *(v1 + 4032) = MEMORY[0x1E69E7CC8];
    v68 = *(v67 + 16);
    *(v1 + 4432) = v68;
    if (v68)
    {
      *(v1 + 1244) = *MEMORY[0x1E69D7278];
      *(v1 + 1428) = *MEMORY[0x1E69D7110];
      v69 = v66;
      v70 = 0;
      while (1)
      {
        *(v1 + 4448) = MEMORY[0x1E69E7CC0];
        *(v1 + 4440) = v70;
        v71 = *(v1 + 4088) + 2 * v70;
        v72 = *(v71 + 32);
        *(v1 + 1243) = v72;
        v73 = *(v71 + 33);
        *(v1 + 1427) = v73;
        *(v1 + 3944) = sub_1D6E23ADC(v72);
        *(v1 + 3952) = v74;
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        v75 = v73 ? 0x70616373646E616CLL : 0x7469617274726F70;
        v76 = v73 ? 0xE900000000000065 : 0xE800000000000000;
        MEMORY[0x1DA6F9910](v75, v76);

        *(v1 + 4456) = *(v1 + 3944);
        *(v1 + 4464) = *(v1 + 3952);
        sub_1D72629AC();
        v77 = *(*(v1 + 4096) + 16);
        *(v1 + 4472) = v77;
        if (v77)
        {
          break;
        }

        v70 = *(v1 + 4440) + 1;
        if (v70 == *(v1 + 4432))
        {
          goto LABEL_32;
        }
      }

      v93 = *(v1 + 4120);
      *(v1 + 4480) = sub_1D726290C();
      *(v1 + 1611) = sub_1D6F79CFC(v72);
      *(v1 + 4488) = objc_opt_self();
      *(v1 + 4496) = *(v93 + 16);
      *(v1 + 4536) = 0u;
      *(v1 + 4552) = 0u;
      *(v1 + 4504) = 0u;
      *(v1 + 4520) = 0u;
      v94 = *(v1 + 4096);
      *(v1 + 1612) = *(v94 + 32);
      *(v1 + 4568) = *(v94 + 40);
      *(v1 + 1613) = *(v94 + 48);
      *(v1 + 1614) = *(v94 + 49);
      *(v1 + 4576) = sub_1D72628FC();
      v96 = sub_1D726285C();

      return MEMORY[0x1EEE6DFA0](sub_1D6781138, v96, v95);
    }

    else
    {
      v86 = v66;
LABEL_32:

      sub_1D725849C();
      sub_1D678ED98(&qword_1EC88B4F0, type metadata accessor for DebugFormatWorkspaceSnapshotManifest, &unk_1D73468C0);
      v87 = sub_1D72578BC();
      *(v1 + 4936) = v87;
      *(v1 + 4944) = v88;
      v89 = v87;
      v90 = v88;
      sub_1D725869C();
      v141 = v89;
      v144 = v90;
      v97 = *(v1 + 4136);
      v138 = *(v1 + 4144);
      v140 = *(v1 + 4128);
      v98 = *(v1 + 4080);
      sub_1D725849C();
      v99 = (v98 + *(type metadata accessor for DebugFormatWorkspace(0) + 20));
      v100 = v99[8];
      v101 = v99[9];
      v102 = v99[10];
      *(v1 + 2895) = *(v99 + 175);
      *(v1 + 2864) = v101;
      *(v1 + 2880) = v102;
      *(v1 + 2848) = v100;
      v103 = v99[4];
      v104 = v99[5];
      v105 = v99[7];
      *(v1 + 2816) = v99[6];
      *(v1 + 2832) = v105;
      *(v1 + 2784) = v103;
      *(v1 + 2800) = v104;
      v106 = *v99;
      v107 = v99[1];
      v108 = v99[3];
      *(v1 + 2752) = v99[2];
      *(v1 + 2768) = v108;
      *(v1 + 2720) = v106;
      *(v1 + 2736) = v107;
      v110 = v99[2];
      v109 = v99[3];
      *(v1 + 3456) = v99[1];
      *(v1 + 3472) = v110;
      *(v1 + 3488) = v109;
      v111 = v99[7];
      v113 = v99[4];
      v112 = v99[5];
      *(v1 + 3536) = v99[6];
      *(v1 + 3552) = v111;
      *(v1 + 3504) = v113;
      *(v1 + 3520) = v112;
      v115 = v99[9];
      v114 = v99[10];
      v116 = v99[8];
      *(v1 + 3615) = *(v99 + 175);
      *(v1 + 3584) = v115;
      *(v1 + 3600) = v114;
      *(v1 + 3568) = v116;
      sub_1D5ECF1C0(v1 + 2720, v1 + 2536);
      sub_1D725894C();
      v117 = sub_1D725893C();
      v119 = v118;
      *(v1 + 4952) = v117;
      *(v1 + 4960) = v118;
      (*(v97 + 8))(v138, v140);

      *(v1 + 2904) = v117;
      *(v1 + 2912) = v119;
      v120 = *(v1 + 3472);
      *(v1 + 2920) = *(v1 + 3456);
      *(v1 + 2936) = v120;
      v121 = *(v1 + 3536);
      *(v1 + 2984) = *(v1 + 3520);
      *(v1 + 3000) = v121;
      v122 = *(v1 + 3504);
      *(v1 + 2952) = *(v1 + 3488);
      *(v1 + 2968) = v122;
      v123 = *(v1 + 3568);
      *(v1 + 3016) = *(v1 + 3552);
      *(v1 + 3032) = v123;
      v124 = *(v1 + 3600);
      *(v1 + 3048) = *(v1 + 3584);
      *(v1 + 3064) = v124;
      *(v1 + 3079) = *(v1 + 3615);
      v125 = *(v1 + 3048);
      *(v1 + 2480) = *(v1 + 3032);
      *(v1 + 2496) = v125;
      *(v1 + 2512) = *(v1 + 3064);
      *(v1 + 2527) = *(v1 + 3079);
      v126 = *(v1 + 2984);
      *(v1 + 2416) = *(v1 + 2968);
      *(v1 + 2432) = v126;
      v127 = *(v1 + 3016);
      *(v1 + 2448) = *(v1 + 3000);
      *(v1 + 2464) = v127;
      v128 = *(v1 + 2920);
      *(v1 + 2352) = *(v1 + 2904);
      *(v1 + 2368) = v128;
      v129 = *(v1 + 2952);
      *(v1 + 2384) = *(v1 + 2936);
      *(v1 + 2400) = v129;
      sub_1D5ECF1C0(v1 + 2904, v1 + 2168);
      sub_1D5E3303C();
      *(v1 + 4968) = sub_1D72578BC();
      *(v1 + 4976) = v130;
      v131 = *(v1 + 2496);
      *(v1 + 1744) = *(v1 + 2480);
      *(v1 + 1760) = v131;
      *(v1 + 1776) = *(v1 + 2512);
      *(v1 + 1791) = *(v1 + 2527);
      v132 = *(v1 + 2432);
      *(v1 + 1680) = *(v1 + 2416);
      *(v1 + 1696) = v132;
      v133 = *(v1 + 2464);
      *(v1 + 1712) = *(v1 + 2448);
      *(v1 + 1728) = v133;
      v134 = *(v1 + 2368);
      *(v1 + 1616) = *(v1 + 2352);
      *(v1 + 1632) = v134;
      v135 = *(v1 + 2400);
      *(v1 + 1648) = *(v1 + 2384);
      *(v1 + 1664) = v135;
      sub_1D5ECF21C(v1 + 1616);
      sub_1D725869C();
      v136 = swift_task_alloc();
      *(v1 + 4984) = v136;
      *v136 = v1;
      v136[1] = sub_1D67893C8;

      return sub_1D678CD4C(v141, v144);
    }
  }

  else
  {
    v78 = *(v1 + 4408);
    v79 = *(v1 + 4384);
    v143 = *(v1 + 4376);
    v80 = *(v1 + 4360);
    v81 = *(v1 + 4352);
    v82 = *(v1 + 4304);
    v83 = *(v1 + 4296);
    v137 = *(v1 + 4120);
    v84 = v66;
    sub_1D725829C();

    swift_willThrow();
    v85 = *(v82 + 8);
    v85(v81, v83);
    v85(v80, v83);
    v139(v78, v79);
    sub_1D678EB84(v143, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    sub_1D678ADBC(v137);

    v91 = *(v1 + 8);

    return v91();
  }
}

uint64_t sub_1D6781138()
{
  v1 = *(v0 + 1614);
  v2 = *(v0 + 1613);
  v3 = *(v0 + 4568);
  v4 = *(v0 + 1612);
  v5 = *(v0 + 1427);
  v6 = *(v0 + 1243);
  v7 = *(v0 + 4104);

  if (v1)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  sub_1D67F6CC8(1, 0, v4, v3, v8 | v2, v9 | v6, v0 + 3696);
  v10 = *(v0 + 3762);
  [v7 bounds];
  v11 = sub_1D6E24328(v6, v7);
  v13 = v12;
  if (v6 < 0x1B)
  {
    v14 = &unk_1F5118C90;
LABEL_9:
    v15 = sub_1D5E29338(v14);
    goto LABEL_10;
  }

  if (v6 - 27 < 6)
  {
    v14 = &unk_1F5118C68;
    goto LABEL_9;
  }

  v15 = MEMORY[0x1E69E7CD0];
LABEL_10:
  v16 = *(v0 + 4112);
  v17 = *(v0 + 4104);
  v18 = *(v0 + 1243) - 33;
  v19 = sub_1D61867BC(v10, v15);

  v20 = [v17 traitCollection];
  *(swift_task_alloc() + 16) = v0 + 3696;
  v21 = sub_1D72630DC();

  [v17 layoutMargins];
  sub_1D7262E0C();
  sub_1D7262DFC();
  [v16 safeAreaInsets];
  v23 = v22;
  v25 = v24;
  if (v18 >= 2)
  {
    sub_1D7262DFC();
    sub_1D7262E0C();
    v23 = v26;
    v25 = v27;
  }

  if (v19 & v10)
  {
    v28 = v11;
  }

  else
  {
    v28 = v13;
  }

  if (v19 & v10)
  {
    v11 = v13;
  }

  v29 = *(v0 + 4488);
  v30 = *(v0 + 1244);
  v31 = *(v0 + 4232);
  v32 = *(v0 + 4224);
  v33 = *(v0 + 4216);
  sub_1D6E24200(*(v0 + 4112), v11, v28, v23, v25);
  sub_1D725A64C();
  sub_1D726332C();
  v34 = [v29 mainScreen];
  [v34 nativeBounds];

  v35 = [v21 preferredContentSizeCategory];
  v36 = *(v32 + 104);
  *(v0 + 4584) = v36;
  *(v0 + 4592) = (v32 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v36(v31, v30, v33);
  sub_1D7259E5C();

  return MEMORY[0x1EEE6DFA0](sub_1D6781578, 0, 0);
}

uint64_t sub_1D6781578()
{
  v1 = *(v0 + 4504);
  v2 = *(v0 + 1428);
  v3 = *(v0 + 4176);
  v4 = *(v0 + 4160);
  v5 = *(v0 + 4152);
  v6 = *(v4 + 104);
  *(v0 + 4600) = v6;
  *(v0 + 4608) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v6(v3, v2, v5);
  sub_1D7259D0C();
  if (v1)
  {
    v7 = *(v0 + 4520);
    v8 = *(v0 + 4264);
    v9 = *(v0 + 4248);
    v10 = *(v0 + 4240);
    v11 = *(v0 + 4176);
    v12 = *(v0 + 4160);
    v13 = *(v0 + 4152);

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);

    if (v7)
    {
      v14 = *(v0 + 4552);
      v15 = *(v0 + 4536);
      v48 = *(v0 + 4520);

      v49 = v15;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *(v0 + 4448);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_1D69949A4(0, *(v17 + 2) + 1, 1, *(v0 + 4448));
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = sub_1D69949A4((v18 > 1), v19 + 1, 1, v17);
      }

      v43 = *(v0 + 4528);
      v44 = *(v0 + 4544);
      v20 = *(v0 + 4512);
      v42 = *(v0 + 4416);
      v46 = *(v0 + 4520);
      v47 = *(v0 + 1060);
      v21 = *(v0 + 4408);
      v22 = *(v0 + 4384);
      v45 = *(v0 + 4376);
      v23 = *(v0 + 4360);
      v24 = *(v0 + 4296);
      v25 = *(*(v0 + 4304) + 8);
      v25(*(v0 + 4352), v24);
      v25(v23, v24);
      v42(v21, v22);
      *(v17 + 2) = v19 + 1;
      v26 = &v17[48 * v19];
      *(v26 + 4) = v20;
      *(v26 + 5) = v48;
      *(v26 + 6) = v43;
      *(v26 + 7) = v49;
      *(v26 + 8) = v44;
      *(v26 + 9) = v14;
      sub_1D678E758(v20, v46);
      *(v45 + v47) = v17;
    }

    else
    {
      v31 = *(v0 + 4416);
      v32 = *(v0 + 4408);
      v33 = *(v0 + 4384);
      v34 = *(v0 + 4360);
      v35 = *(v0 + 4296);
      v36 = *(*(v0 + 4304) + 8);
      v36(*(v0 + 4352), v35);
      v36(v34, v35);
      v31(v32, v33);
    }

    v37 = *(v0 + 4120);
    sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    sub_1D678ADBC(v37);

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v27 = *(v0 + 4176);
    v28 = *(v0 + 4160);
    v29 = *(v0 + 4152);
    v30 = *(v28 + 8);
    *(v0 + 4616) = v30;
    *(v0 + 4624) = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v27, v29);
    sub_1D72629AC();
    *(v0 + 4632) = 0;
    *(v0 + 4640) = sub_1D72628FC();
    v41 = sub_1D726285C();

    return MEMORY[0x1EEE6DFA0](sub_1D6781C08, v41, v40);
  }
}

uint64_t sub_1D6781C08()
{
  v1 = *(v0 + 1614);
  v2 = *(v0 + 1613);
  v3 = *(v0 + 4568);
  v4 = *(v0 + 1612);
  v5 = *(v0 + 1427);
  v6 = *(v0 + 1243);
  v7 = *(v0 + 4104);

  if (v1)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  sub_1D67F6CC8(2, 0, v4, v3, v8 | v2, v9 | v6, v0 + 3624);
  v10 = *(v0 + 3690);
  [v7 bounds];
  v11 = sub_1D6E24328(v6, v7);
  v13 = v12;
  if (v6 < 0x1B)
  {
    v14 = &unk_1F5118C90;
LABEL_9:
    v15 = sub_1D5E29338(v14);
    goto LABEL_10;
  }

  if (v6 - 27 < 6)
  {
    v14 = &unk_1F5118C68;
    goto LABEL_9;
  }

  v15 = MEMORY[0x1E69E7CD0];
LABEL_10:
  v16 = *(v0 + 4112);
  v17 = *(v0 + 4104);
  v18 = *(v0 + 1243) - 33;
  v19 = sub_1D61867BC(v10, v15);

  v20 = [v17 traitCollection];
  *(swift_task_alloc() + 16) = v0 + 3624;
  v21 = sub_1D72630DC();

  [v17 layoutMargins];
  sub_1D7262E0C();
  sub_1D7262DFC();
  [v16 safeAreaInsets];
  v23 = v22;
  v25 = v24;
  if (v18 >= 2)
  {
    sub_1D7262DFC();
    sub_1D7262E0C();
    v23 = v26;
    v25 = v27;
  }

  if (v19 & v10)
  {
    v28 = v11;
  }

  else
  {
    v28 = v13;
  }

  if (v19 & v10)
  {
    v11 = v13;
  }

  v29 = *(v0 + 4584);
  v30 = *(v0 + 4488);
  v31 = *(v0 + 1244);
  v32 = *(v0 + 4232);
  v33 = *(v0 + 4216);
  sub_1D6E24200(*(v0 + 4112), v11, v28, v23, v25);
  sub_1D725A64C();
  sub_1D726332C();
  v34 = [v30 mainScreen];
  [v34 nativeBounds];

  v35 = [v21 preferredContentSizeCategory];
  v29(v32, v31, v33);
  sub_1D7259E5C();

  return MEMORY[0x1EEE6DFA0](sub_1D6782030, 0, 0);
}

uint64_t sub_1D6782030()
{
  v1 = *(v0 + 4632);
  (*(v0 + 4600))(*(v0 + 4168), *(v0 + 1428), *(v0 + 4152));
  sub_1D7259D0C();
  v2 = *(v0 + 4616);
  if (v1)
  {
    v52 = *(v0 + 4264);
    v54 = *(v0 + 4520);
    v3 = *(v0 + 4256);
    v4 = *(v0 + 4248);
    v5 = *(v0 + 4240);
    v50 = *(v0 + 4208);
    v6 = *(v0 + 4192);
    v7 = *(v0 + 4184);
    v8 = *(v0 + 4168);
    v9 = *(v0 + 4152);

    v2(v8, v9);
    v10 = *(v4 + 8);
    v10(v3, v5);
    (*(v6 + 8))(v50, v7);
    v10(v52, v5);

    if (v54)
    {
      v11 = *(v0 + 4552);
      v12 = *(v0 + 4536);
      v51 = *(v0 + 4520);

      v53 = v12;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v0 + 4448);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1D69949A4(0, *(v14 + 2) + 1, 1, *(v0 + 4448));
      }

      v16 = *(v14 + 2);
      v15 = *(v14 + 3);
      if (v16 >= v15 >> 1)
      {
        v14 = sub_1D69949A4((v15 > 1), v16 + 1, 1, v14);
      }

      v45 = *(v0 + 4528);
      v46 = *(v0 + 4544);
      v17 = *(v0 + 4512);
      v44 = *(v0 + 4416);
      v48 = *(v0 + 4520);
      v49 = *(v0 + 1060);
      v18 = *(v0 + 4408);
      v19 = *(v0 + 4384);
      v47 = *(v0 + 4376);
      v20 = *(v0 + 4360);
      v21 = *(v0 + 4296);
      v22 = *(*(v0 + 4304) + 8);
      v22(*(v0 + 4352), v21);
      v22(v20, v21);
      v44(v18, v19);
      *(v14 + 2) = v16 + 1;
      v23 = &v14[48 * v16];
      *(v23 + 4) = v17;
      *(v23 + 5) = v51;
      *(v23 + 6) = v45;
      *(v23 + 7) = v53;
      *(v23 + 8) = v46;
      *(v23 + 9) = v11;
      sub_1D678E758(v17, v48);
      *(v47 + v49) = v14;
    }

    else
    {
      v25 = *(v0 + 4416);
      v26 = *(v0 + 4408);
      v27 = *(v0 + 4384);
      v28 = *(v0 + 4360);
      v29 = *(v0 + 4296);
      v30 = *(*(v0 + 4304) + 8);
      v30(*(v0 + 4352), v29);
      v30(v28, v29);
      v25(v26, v27);
    }

    v31 = *(v0 + 4120);
    sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    sub_1D678ADBC(v31);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    v2(*(v0 + 4168), *(v0 + 4152));
    sub_1D72629AC();
    v24 = *(v0 + 4520);
    if (v24)
    {
      v34 = *(v0 + 4552);
      v35 = *(v0 + 4544);
      v36 = *(v0 + 4536);
      v37 = *(v0 + 4528);
      v38 = *(v0 + 4512);
    }

    else
    {
      v39 = *(v0 + 1243);
      v35 = sub_1D7259CCC();
      v38 = sub_1D6E236D4(v39);
      v36 = 0xE800000000000000;
      if (*(v0 + 1427))
      {
        v36 = 0xE900000000000065;
      }

      v37 = 0x70616373646E614CLL;
      if (!*(v0 + 1427))
      {
        v37 = 0x7469617274726F50;
      }

      v34 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 4688) = v34;
    *(v0 + 4680) = v35;
    *(v0 + 4672) = v36;
    *(v0 + 4664) = v37;
    *(v0 + 4656) = v24;
    *(v0 + 4648) = v38;
    v40 = swift_task_alloc();
    *(v0 + 4696) = v40;
    *v40 = v0;
    v40[1] = sub_1D67827A0;
    v41 = *(v0 + 4208);
    v42 = *(v0 + 4120);
    v43 = *(v0 + 4080);

    return sub_1D678AE80(v0 + 4032, v41, v42, v43);
  }
}

uint64_t sub_1D67827A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 4704) = a1;
  *(v3 + 4712) = v1;

  if (v1)
  {

    v4 = sub_1D6789C4C;
  }

  else
  {
    v4 = sub_1D6782900;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D6782900(uint64_t a1)
{
  v2 = *(v1 + 4712);
  sub_1D72629AC();
  *(v1 + 4720) = v2;
  if (v2)
  {
    v46 = *(v1 + 4688);
    v45 = *(v1 + 4672);
    v3 = *(v1 + 4656);
    v43 = *(v1 + 4264);
    v4 = *(v1 + 4256);
    v5 = *(v1 + 4248);
    v6 = *(v1 + 4240);
    v7 = *(v1 + 4208);
    v8 = *(v1 + 4200);
    v9 = *(v1 + 4192);
    v10 = *(v1 + 4184);

    v11 = *(v9 + 8);
    v11(v8, v10);
    v12 = *(v5 + 8);
    v12(v4, v6);
    v11(v7, v10);
    v12(v43, v6);

    v44 = v3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v1 + 4448);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1D69949A4(0, *(v14 + 2) + 1, 1, *(v1 + 4448));
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1D69949A4((v15 > 1), v16 + 1, 1, v14);
    }

    v37 = *(v1 + 4664);
    v38 = *(v1 + 4680);
    v17 = *(v1 + 4648);
    v36 = *(v1 + 4416);
    v41 = *(v1 + 1060);
    v18 = *(v1 + 4408);
    v19 = *(v1 + 4384);
    v39 = *(v1 + 4376);
    v40 = *(v1 + 4656);
    v20 = *(v1 + 4360);
    v21 = *(v1 + 4296);
    v42 = *(v1 + 4120);
    v22 = *(*(v1 + 4304) + 8);
    v22(*(v1 + 4352), v21);
    v22(v20, v21);
    v36(v18, v19);
    *(v14 + 2) = v16 + 1;
    v23 = &v14[48 * v16];
    *(v23 + 4) = v17;
    *(v23 + 5) = v44;
    *(v23 + 6) = v37;
    *(v23 + 7) = v45;
    *(v23 + 8) = v38;
    *(v23 + 9) = v46;
    sub_1D678E758(v17, v40);
    *(v39 + v41) = v14;
    sub_1D678EB84(v39, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    sub_1D678ADBC(v42);

    v24 = *(v1 + 8);

    return v24();
  }

  else
  {
    v26 = *(v1 + 4472);
    v27 = *(v1 + 4560) + 1;
    if (*(v1 + 1427))
    {
      v28 = 0x70616373646E614CLL;
    }

    else
    {
      v28 = 0x7469617274726F50;
    }

    if (*(v1 + 1427))
    {
      v29 = 0xE900000000000065;
    }

    else
    {
      v29 = 0xE800000000000000;
    }

    *(v1 + 4728) = *(*(v1 + 4704) + 16);
    *(v1 + 3912) = 0;
    *(v1 + 3920) = 0xE000000000000000;
    v30 = *(v1 + 1243);

    sub_1D7263D4C();

    *(v1 + 3928) = 0xD000000000000019;
    *(v1 + 3936) = 0x80000001D73D4460;
    v31 = sub_1D6E236D4(v30);
    MEMORY[0x1DA6F9910](v31);

    MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
    MEMORY[0x1DA6F9910](v28, v29);

    MEMORY[0x1DA6F9910](10272, 0xE200000000000000);
    *(v1 + 4024) = v27;
    v32 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v32);

    MEMORY[0x1DA6F9910](543584032, 0xE400000000000000);
    *(v1 + 4016) = v26;
    v33 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v33);

    MEMORY[0x1DA6F9910](774778409, 0xE400000000000000);
    *(v1 + 4736) = *(v1 + 3928);
    *(v1 + 4744) = *(v1 + 3936);
    *(v1 + 4752) = sub_1D72628FC();
    v35 = sub_1D726285C();

    return MEMORY[0x1EEE6DFA0](sub_1D6782EF8, v35, v34);
  }
}

uint64_t sub_1D6782EF8()
{
  v1 = v0[593];
  v2 = v0[592];
  v3 = v0[591];
  v4 = v0[562];

  type metadata accessor for DebugFormatWorkspaceCanvasStatusProgress();
  swift_allocObject();
  v0[595] = sub_1D676AC6C(v4, v3, v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1D6782FE0, 0, 0);
}

uint64_t sub_1D6782FE0()
{
  v2 = -112;
  v3 = *(v1 + 4568);
  v4 = sub_1D5EDF2A8(*(v1 + 1612));
  v6 = v5;
  *(v1 + 4768) = v4;
  *(v1 + 4776) = v5;
  if (v3)
  {
    if (v3 == 1)
    {
      v7 = 0xED00007466654C20;
      v8 = 0x6F74207468676952;
    }

    else
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v7 = 0xED00007468676952;
    v8 = 0x206F74207466654CLL;
  }

  *(v1 + 4792) = v7;
  *(v1 + 4784) = v8;
  v9 = *(v1 + 4704);
  v10 = *(v1 + 1614);
  *(v1 + 5008) = *(v1 + 1613);
  *(v1 + 1059) = v10;
  v11 = *(v9 + 16);
  *(v1 + 4800) = v11;
  v12 = *(v1 + 4720);
  if (!v11)
  {
    v40 = *(v1 + 4688);

    sub_1D6E1B254(MEMORY[0x1E69E7CC0]);
    v42 = v41;

    v240 = *(v1 + 5008);
    v237 = *(v1 + 1059);

    v245 = v42;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1D699486C(0, *(v40 + 2) + 1, 1, v40);
    }

    v44 = *(v40 + 2);
    v43 = *(v40 + 3);
    v252 = v12;
    if (v44 >= v43 >> 1)
    {
      v248 = sub_1D699486C((v43 > 1), v44 + 1, 1, v40);
    }

    else
    {
      v248 = v40;
    }

    v226 = *(v1 + 4784);
    v230 = *(v1 + 4792);
    v218 = *(v1 + 4768);
    v222 = *(v1 + 4776);
    v45 = *(v1 + 4560);
    v233 = *(v1 + 4472);
    v216 = *(v1 + 4264);
    v46 = *(v1 + 4256);
    v47 = *(v1 + 4248);
    v48 = *(v1 + 4240);
    v49 = *(v1 + 4208);
    v50 = *(v1 + 4200);
    v51 = *(v1 + 4192);
    v52 = *(v1 + 4184);

    v223 = v45 + 1;
    v53 = *(v51 + 8);
    v53(v50, v52);
    v54 = *(v47 + 8);
    v54(v46, v48);
    v53(v49, v52);
    v54(v216, v48);
    v55 = v248;
    *(v248 + 2) = v44 + 1;
    v56 = &v248[48 * v44];
    *(v56 + 4) = v218;
    *(v56 + 5) = v222;
    *(v56 + 6) = v226;
    *(v56 + 7) = v230;
    v56[64] = v240;
    v56[65] = v237;
    *(v56 + 9) = v245;

    if (v223 == v233)
    {
      v57 = *(v1 + 4656);

      if (v57)
      {
        v58 = *(v1 + 4672);
        v59 = *(v1 + 4656);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = *(v1 + 4448);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = sub_1D69949A4(0, *(v61 + 2) + 1, 1, *(v1 + 4448));
        }

        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        if (v63 >= v62 >> 1)
        {
          v61 = sub_1D69949A4((v62 > 1), v63 + 1, 1, v61);
        }

        v64 = *(v1 + 4680);
        v65 = *(v1 + 4664);
        v66 = *(v1 + 4656);
        v67 = *(v1 + 4648);
        v68 = *(v1 + 1060);
        v69 = *(v1 + 4376);
        *(v61 + 2) = v63 + 1;
        v70 = &v61[48 * v63];
        *(v70 + 4) = v67;
        *(v70 + 5) = v59;
        *(v70 + 6) = v65;
        *(v70 + 7) = v58;
        *(v70 + 8) = v64;
        *(v70 + 9) = v248;
        sub_1D678E758(v67, v66);
        *(v69 + v68) = v61;
      }

      else
      {
        v61 = *(v1 + 4448);
      }

      v136 = *(v1 + 4440) + 1;
      if (v136 == *(v1 + 4432))
      {
        goto LABEL_40;
      }

      *(v1 + 4448) = v61;
      *(v1 + 4440) = v136;
      v146 = *(v1 + 4088) + 2 * v136;
      v147 = *(v146 + 32);
      *(v1 + 1243) = v147;
      v148 = *(v146 + 33);
      *(v1 + 1427) = v148;
      *(v1 + 3944) = sub_1D6E23ADC(v147);
      *(v1 + 3952) = v149;
      MEMORY[0x1DA6F9910](95, 0xE100000000000000);
      if (v148)
      {
        v150 = 0x70616373646E616CLL;
      }

      else
      {
        v150 = 0x7469617274726F70;
      }

      if (v148)
      {
        v151 = 0xE900000000000065;
      }

      else
      {
        v151 = 0xE800000000000000;
      }

      MEMORY[0x1DA6F9910](v150, v151);

      *(v1 + 4456) = *(v1 + 3944);
      *(v1 + 4464) = *(v1 + 3952);
      sub_1D72629AC();
      if (v252)
      {
        v152 = *(v1 + 4416);
        v153 = *(v1 + 4408);
        v154 = *(v1 + 4384);
        v254 = *(v1 + 4376);
        v155 = *(v1 + 4360);
        v156 = *(v1 + 4352);
        v157 = *(v1 + 4304);
        v158 = *(v1 + 4296);
        v249 = *(v1 + 4120);

        v159 = *(v157 + 8);
        v159(v156, v158);
        v159(v155, v158);
        v152(v153, v154);
        sub_1D678EB84(v254, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
        goto LABEL_51;
      }

      v163 = *(*(v1 + 4096) + 16);
      *(v1 + 4472) = v163;
      if (!v163)
      {

        v202 = *(v1 + 4440) + 1;
        if (v202 == *(v1 + 4432))
        {
          v252 = 0;
LABEL_40:

          sub_1D725849C();
          sub_1D678ED98(&qword_1EC88B4F0, type metadata accessor for DebugFormatWorkspaceSnapshotManifest, &unk_1D73468C0);
          v137 = sub_1D72578BC();
          *(v1 + 4936) = v137;
          *(v1 + 4944) = v138;
          if (!v252)
          {
            v160 = v137;
            v161 = v138;
            sub_1D725869C();
            v242 = v161;
            v166 = *(v1 + 4144);
            v250 = *(v1 + 4136);
            v255 = *(v1 + 4128);
            v167 = *(v1 + 4080);
            sub_1D725849C();
            v168 = (v167 + *(type metadata accessor for DebugFormatWorkspace(0) + 20));
            v169 = v168[8];
            v170 = v168[9];
            v171 = v168[10];
            *(v1 + 2895) = *(v168 + 175);
            *(v1 + 2864) = v170;
            *(v1 + 2880) = v171;
            *(v1 + 2848) = v169;
            v172 = v168[4];
            v173 = v168[5];
            v174 = v168[7];
            *(v1 + 2816) = v168[6];
            *(v1 + 2832) = v174;
            *(v1 + 2784) = v172;
            *(v1 + 2800) = v173;
            v175 = *v168;
            v176 = v168[1];
            v177 = v168[3];
            *(v1 + 2752) = v168[2];
            *(v1 + 2768) = v177;
            *(v1 + 2720) = v175;
            *(v1 + 2736) = v176;
            v179 = v168[2];
            v178 = v168[3];
            *(v1 + 3456) = v168[1];
            *(v1 + 3472) = v179;
            *(v1 + 3488) = v178;
            v180 = v168[7];
            v182 = v168[4];
            v181 = v168[5];
            *(v1 + 3536) = v168[6];
            *(v1 + 3552) = v180;
            *(v1 + 3504) = v182;
            *(v1 + 3520) = v181;
            v184 = v168[9];
            v183 = v168[10];
            v185 = v168[8];
            *(v1 + 3615) = *(v168 + 175);
            *(v1 + 3584) = v184;
            *(v1 + 3600) = v183;
            *(v1 + 3568) = v185;
            sub_1D5ECF1C0(v1 + 2720, v1 + 2536);
            sub_1D725894C();
            v186 = sub_1D725893C();
            v188 = v187;
            *(v1 + 4952) = v186;
            *(v1 + 4960) = v187;
            v189 = v166;
            v190 = v186;
            (*(v250 + 8))(v189, v255);

            *(v1 + 2904) = v190;
            *(v1 + 2912) = v188;
            v191 = *(v1 + 3472);
            *(v1 + 2920) = *(v1 + 3456);
            *(v1 + 2936) = v191;
            v192 = *(v1 + 3536);
            *(v1 + 2984) = *(v1 + 3520);
            *(v1 + 3000) = v192;
            v193 = *(v1 + 3504);
            *(v1 + 2952) = *(v1 + 3488);
            *(v1 + 2968) = v193;
            v194 = *(v1 + 3568);
            *(v1 + 3016) = *(v1 + 3552);
            *(v1 + 3032) = v194;
            v195 = *(v1 + 3600);
            *(v1 + 3048) = *(v1 + 3584);
            *(v1 + 3064) = v195;
            *(v1 + 3079) = *(v1 + 3615);
            v196 = *(v1 + 3048);
            *(v1 + 2480) = *(v1 + 3032);
            *(v1 + 2496) = v196;
            *(v1 + 2512) = *(v1 + 3064);
            *(v1 + 2527) = *(v1 + 3079);
            v197 = *(v1 + 2984);
            *(v1 + 2416) = *(v1 + 2968);
            *(v1 + 2432) = v197;
            v198 = *(v1 + 3016);
            *(v1 + 2448) = *(v1 + 3000);
            *(v1 + 2464) = v198;
            v199 = *(v1 + 2920);
            *(v1 + 2352) = *(v1 + 2904);
            *(v1 + 2368) = v199;
            v200 = *(v1 + 2952);
            *(v1 + 2384) = *(v1 + 2936);
            *(v1 + 2400) = v200;
            sub_1D5ECF1C0(v1 + 2904, v1 + 2168);
            sub_1D5E3303C();
            *(v1 + 4968) = sub_1D72578BC();
            *(v1 + 4976) = v201;
            v209 = *(v1 + 2496);
            *(v1 + 1744) = *(v1 + 2480);
            *(v1 + 1760) = v209;
            *(v1 + 1776) = *(v1 + 2512);
            *(v1 + 1791) = *(v1 + 2527);
            v210 = *(v1 + 2432);
            *(v1 + 1680) = *(v1 + 2416);
            *(v1 + 1696) = v210;
            v211 = *(v1 + 2464);
            *(v1 + 1712) = *(v1 + 2448);
            *(v1 + 1728) = v211;
            v212 = *(v1 + 2368);
            *(v1 + 1616) = *(v1 + 2352);
            *(v1 + 1632) = v212;
            v213 = *(v1 + 2400);
            *(v1 + 1648) = *(v1 + 2384);
            *(v1 + 1664) = v213;
            sub_1D5ECF21C(v1 + 1616);
            sub_1D725869C();
            v214 = swift_task_alloc();
            *(v1 + 4984) = v214;
            *v214 = v1;
            v214[1] = sub_1D67893C8;

            return sub_1D678CD4C(v160, v242);
          }

          v139 = *(v1 + 4416);
          v140 = *(v1 + 4408);
          v141 = *(v1 + 4384);
          v253 = *(v1 + 4376);
          v142 = *(v1 + 4360);
          v143 = *(v1 + 4352);
          v144 = *(v1 + 4296);
          v249 = *(v1 + 4120);
          v145 = *(*(v1 + 4304) + 8);
          v145(*(v1 + 4328), v144);
          v145(v143, v144);
          v145(v142, v144);
          v139(v140, v141);
          sub_1D678EB84(v253, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
LABEL_51:
          v135 = v249;
LABEL_52:
          sub_1D678ADBC(v135);

          v162 = *(v1 + 8);

          return v162();
        }

        while (1)
        {
          *(v1 + 4448) = v61;
          *(v1 + 4440) = v202;
          v203 = *(v1 + 4088) + 2 * v202;
          v147 = *(v203 + 32);
          *(v1 + 1243) = v147;
          v204 = *(v203 + 33);
          *(v1 + 1427) = v204;
          *(v1 + 3944) = sub_1D6E23ADC(v147);
          *(v1 + 3952) = v205;
          MEMORY[0x1DA6F9910](95, 0xE100000000000000);
          v206 = v204 ? 0x70616373646E616CLL : 0x7469617274726F70;
          v207 = v204 ? 0xE900000000000065 : 0xE800000000000000;
          MEMORY[0x1DA6F9910](v206, v207);

          *(v1 + 4456) = *(v1 + 3944);
          *(v1 + 4464) = *(v1 + 3952);
          sub_1D72629AC();
          v208 = *(*(v1 + 4096) + 16);
          *(v1 + 4472) = v208;
          if (v208)
          {
            break;
          }

          v252 = 0;
          v202 = *(v1 + 4440) + 1;
          if (v202 == *(v1 + 4432))
          {
            goto LABEL_40;
          }
        }
      }

      v164 = *(v1 + 4120);
      *(v1 + 4480) = sub_1D726290C();
      *(v1 + 1611) = sub_1D6F79CFC(v147);
      v165 = objc_opt_self();
      v124 = 0;
      v120 = 0;
      v55 = 0;
      v123 = 0;
      *(v1 + 4488) = v165;
      *(v1 + 4496) = *(v164 + 16);
      v122 = 0uLL;
      v121 = 0uLL;
    }

    else
    {
      v120 = *(v1 + 4680);
      v121 = *(v1 + 4664);
      v122 = *(v1 + 4648);
      v123 = *(v1 + 4560) + 1;
      v124 = v252;
    }

    *(v1 + 4560) = v123;
    *(v1 + 4552) = v55;
    *(v1 + 4544) = v120;
    *(v1 + 4528) = v121;
    *(v1 + 4512) = v122;
    *(v1 + 4504) = v124;
    v125 = *(v1 + 4096) + 24 * v123;
    *(v1 + 1612) = *(v125 + 32);
    *(v1 + 4568) = *(v125 + 40);
    *(v1 + 1613) = *(v125 + 48);
    *(v1 + 1614) = *(v125 + 49);
    *(v1 + 4576) = sub_1D72628FC();
    v127 = sub_1D726285C();

    return MEMORY[0x1EEE6DFA0](sub_1D6781138, v127, v126);
  }

  *(v1 + 4808) = MEMORY[0x1E69E7CC0];
  *(v1 + 4816) = 0;
  if (!*(v9 + 16))
  {
    __break(1u);
    goto LABEL_72;
  }

  v13 = *(v9 + 32);

  sub_1D72629AC();
  if (v12)
  {
    v7 = *(v1 + 4808);
    v0 = *(v1 + 4688);

    sub_1D6E1B254(v7);
    v6 = v14;

    LOBYTE(v7) = *(v1 + 5008);
    v2 = *(v1 + 1059);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_10:
      v16 = *(v0 + 2);
      v15 = *(v0 + 3);
      v246 = v6;
      v243 = v7;
      v239 = v2;
      if (v16 >= v15 >> 1)
      {
        v251 = sub_1D699486C((v15 > 1), v16 + 1, 1, v0);
      }

      else
      {
        v251 = v0;
      }

      v228 = *(v1 + 4784);
      v231 = *(v1 + 4792);
      v224 = *(v1 + 4776);
      v235 = *(v1 + 4656);
      v217 = *(v1 + 4264);
      v220 = *(v1 + 4768);
      v17 = *(v1 + 4256);
      v18 = *(v1 + 4248);
      v19 = *(v1 + 4240);
      v20 = *(v1 + 4208);
      v21 = *(v1 + 4200);
      v22 = *(v1 + 4192);
      v23 = *(v1 + 4184);

      v24 = *(v22 + 8);
      v24(v21, v23);
      v25 = *(v18 + 8);
      v25(v17, v19);
      v24(v20, v23);
      v25(v217, v19);
      *(v251 + 2) = v16 + 1;
      v26 = &v251[48 * v16];
      *(v26 + 4) = v220;
      *(v26 + 5) = v224;
      *(v26 + 6) = v228;
      *(v26 + 7) = v231;
      v26[64] = v243;
      v26[65] = v239;
      *(v26 + 9) = v246;

      if (v235)
      {
        v27 = *(v1 + 4672);
        v28 = *(v1 + 4656);

        v29 = swift_isUniquelyReferenced_nonNull_native();
        v30 = *(v1 + 4448);
        v247 = v27;
        if ((v29 & 1) == 0)
        {
          v30 = sub_1D69949A4(0, *(v30 + 2) + 1, 1, v30);
        }

        v32 = *(v30 + 2);
        v31 = *(v30 + 3);
        v244 = v28;
        if (v32 >= v31 >> 1)
        {
          v30 = sub_1D69949A4((v31 > 1), v32 + 1, 1, v30);
        }

        v232 = *(v1 + 4656);
        v33 = *(v1 + 4648);
        v221 = *(v1 + 4664);
        v215 = *(v1 + 4416);
        v236 = *(v1 + 1060);
        v34 = *(v1 + 4408);
        v35 = *(v1 + 4384);
        v225 = *(v1 + 4680);
        v229 = *(v1 + 4376);
        v36 = *(v1 + 4360);
        v37 = *(v1 + 4296);
        v38 = *(*(v1 + 4304) + 8);
        v38(*(v1 + 4352), v37);
        v38(v36, v37);
        v215(v34, v35);
        *(v30 + 2) = v32 + 1;
        v39 = &v30[48 * v32];
        *(v39 + 4) = v33;
        *(v39 + 5) = v244;
        *(v39 + 6) = v221;
        *(v39 + 7) = v247;
        *(v39 + 8) = v225;
        *(v39 + 9) = v251;
        sub_1D678E758(v33, v232);
        *(v229 + v236) = v30;
      }

      else
      {
        v128 = *(v1 + 4416);
        v129 = *(v1 + 4408);
        v130 = *(v1 + 4384);
        v131 = *(v1 + 4360);
        v132 = *(v1 + 4296);
        v133 = *(*(v1 + 4304) + 8);
        v133(*(v1 + 4352), v132);
        v133(v131, v132);
        v128(v129, v130);
      }

      v134 = *(v1 + 4120);
      sub_1D678EB84(*(v1 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
      v135 = v134;
      goto LABEL_52;
    }

LABEL_72:
    v0 = sub_1D699486C(0, *(v0 + 2) + 1, 1, v0);
    goto LABEL_10;
  }

  v234 = *(v1 + 4464);
  v227 = *(v1 + 4456);
  v219 = *(v1 + 1427);
  v71 = *(v1 + 1243);
  v72 = *(v1 + 4144);
  v73 = *(v1 + 4136);
  v74 = *(v1 + 4128);
  v75 = *(v1 + 4080);
  sub_1D725894C();
  v76 = sub_1D725893C();
  v238 = v77;
  v241 = v76;
  *(v1 + 4824) = v76;
  *(v1 + 4832) = v77;
  (*(v73 + 8))(v72, v74);
  v78 = type metadata accessor for DebugFormatWorkspace(0);
  v79 = (v75 + *(v78 + 20));
  v81 = *v79;
  v80 = v79[1];
  v83 = *(v79 + 2);
  v82 = *(v79 + 3);
  v84 = *(v79 + 1);
  *(v1 + 3088) = *v79;
  *(v1 + 3104) = v84;
  *(v1 + 3120) = v83;
  *(v1 + 3136) = v82;
  v85 = *(v79 + 175);
  v86 = *(v79 + 10);
  v87 = *(v79 + 8);
  *(v1 + 3232) = *(v79 + 9);
  *(v1 + 3248) = v86;
  *(v1 + 3263) = v85;
  *(v1 + 3216) = v87;
  v89 = *(v79 + 6);
  v88 = *(v79 + 7);
  v90 = *(v79 + 4);
  *(v1 + 3168) = *(v79 + 5);
  *(v1 + 3184) = v89;
  *(v1 + 3200) = v88;
  *(v1 + 3152) = v90;
  v91 = *(v75 + *(v78 + 32));
  v92 = *v79;
  v93 = *(v79 + 1);
  v94 = *(v79 + 3);
  *(v1 + 496) = *(v79 + 2);
  *(v1 + 512) = v94;
  *(v1 + 464) = v92;
  *(v1 + 480) = v93;
  v95 = *(v79 + 4);
  v96 = *(v79 + 5);
  v97 = *(v79 + 7);
  *(v1 + 560) = *(v79 + 6);
  *(v1 + 576) = v97;
  *(v1 + 528) = v95;
  *(v1 + 544) = v96;
  v98 = *(v79 + 8);
  v99 = *(v79 + 9);
  v100 = *(v79 + 10);
  *(v1 + 639) = *(v79 + 175);
  *(v1 + 608) = v99;
  *(v1 + 624) = v100;
  *(v1 + 592) = v98;
  *(v1 + 448) = v81;
  *(v1 + 456) = v80;
  *(v1 + 643) = v71;
  *(v1 + 644) = v219;
  *(v1 + 648) = v91;
  *(v1 + 656) = v13;
  *(v1 + 3816) = 0;
  *(v1 + 3824) = 0xE000000000000000;

  sub_1D5ECF1C0(v1 + 3088, v1 + 880);

  sub_1D7263D4C();
  *(v1 + 4064) = sub_1D7259CCC();
  v101 = sub_1D72644BC();
  v103 = v102;

  *(v1 + 3832) = v101;
  *(v1 + 3840) = v103;
  MEMORY[0x1DA6F9910](95, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v227, v234);
  MEMORY[0x1DA6F9910](95, 0xE100000000000000);
  v104 = sub_1D71D6228();
  MEMORY[0x1DA6F9910](v104);

  MEMORY[0x1DA6F9910](95, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v241, v238);
  MEMORY[0x1DA6F9910](0x702E746867696C5FLL, 0xEA0000000000676ELL);
  v105 = sub_1D726210C();
  v107 = v106;

  *(v1 + 4840) = v105;
  *(v1 + 4848) = v107;
  sub_1D725849C();
  v108 = *(v1 + 624);
  *(v1 + 824) = *(v1 + 608);
  *(v1 + 840) = v108;
  *(v1 + 856) = *(v1 + 640);
  *(v1 + 872) = *(v1 + 656);
  v109 = *(v1 + 560);
  *(v1 + 760) = *(v1 + 544);
  *(v1 + 776) = v109;
  v110 = *(v1 + 592);
  *(v1 + 792) = *(v1 + 576);
  *(v1 + 808) = v110;
  v111 = *(v1 + 496);
  *(v1 + 696) = *(v1 + 480);
  *(v1 + 712) = v111;
  v112 = *(v1 + 528);
  *(v1 + 728) = *(v1 + 512);
  *(v1 + 744) = v112;
  v113 = *(v1 + 464);
  *(v1 + 664) = *(v1 + 448);
  *(v1 + 680) = v113;
  v114 = swift_task_alloc();
  *(v1 + 4856) = v114;
  *v114 = v1;
  v114[1] = sub_1D678472C;
  v115 = *(v1 + 4344);
  v116 = *(v1 + 4264);
  v117 = *(v1 + 4208);
  v118 = *(v1 + 4104);

  return sub_1D678BDFC(v1 + 664, v118, v116, v117, v115);
}

uint64_t sub_1D678472C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 4864) = a1;
  *(v3 + 4872) = v1;

  if (v1)
  {

    v4 = sub_1D678A000;
  }

  else
  {
    v4 = sub_1D67848B8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D67848B8()
{
  v2 = (v0 + 1059);
  v3 = (v0 + 448);
  if (*(v0 + 4864))
  {
    v4 = v0 + 232;
    v255 = *(v0 + 4824);
    v260 = *(v0 + 4832);
    v5 = *(v0 + 4464);
    v6 = *(v0 + 4456);
    *(v0 + 3864) = 0;
    *(v0 + 3872) = 0xE000000000000000;
    sub_1D7263D4C();
    *(v0 + 4008) = sub_1D7259CCC();
    v7 = sub_1D72644BC();
    v9 = v8;

    *(v0 + 3848) = v7;
    *(v0 + 3856) = v9;
    MEMORY[0x1DA6F9910](95, 0xE100000000000000);
    MEMORY[0x1DA6F9910](v6, v5);
    MEMORY[0x1DA6F9910](95, 0xE100000000000000);
    v10 = sub_1D71D6228();
    MEMORY[0x1DA6F9910](v10);

    MEMORY[0x1DA6F9910](95, 0xE100000000000000);
    MEMORY[0x1DA6F9910](v255, v260);

    MEMORY[0x1DA6F9910](0x6E702E6B7261645FLL, 0xE900000000000067);
    v11 = sub_1D726210C();
    v13 = v12;

    *(v0 + 4880) = v11;
    *(v0 + 4888) = v13;
    sub_1D725849C();
    v14 = *(v0 + 624);
    *(v0 + 392) = *(v0 + 608);
    *(v0 + 408) = v14;
    *(v0 + 424) = *(v0 + 640);
    v15 = *(v0 + 560);
    *(v0 + 328) = *(v0 + 544);
    *(v0 + 344) = v15;
    v16 = *(v0 + 592);
    *(v0 + 360) = *(v0 + 576);
    *(v0 + 376) = v16;
    v17 = *(v0 + 496);
    *(v0 + 264) = *(v0 + 480);
    *(v0 + 280) = v17;
    v18 = *(v0 + 528);
    *(v0 + 296) = *(v0 + 512);
    *(v0 + 312) = v18;
    v19 = *(v0 + 464);
    *(v0 + 232) = *v3;
    *(v0 + 440) = *(v0 + 656);
    *(v0 + 248) = v19;
    v20 = swift_task_alloc();
    *(v0 + 4896) = v20;
    *v20 = v0;
    v20[1] = sub_1D67861D4;
    v21 = *(v0 + 4336);
    v22 = *(v0 + 4256);
    v23 = *(v0 + 4200);
LABEL_3:
    v24 = *(v0 + 4104);

    return sub_1D678BDFC(v4, v24, v22, v23, v21);
  }

  v26 = -112;
  (*(*(v0 + 4304) + 8))(*(v0 + 4344), *(v0 + 4296));
  sub_1D5F2B134(v0 + 448);

  v27 = *(v0 + 4872);
  v28 = *(v0 + 4816) + 1;
  if (v28 != *(v0 + 4800))
  {
    *(v0 + 4816) = v28;
    v61 = *(v0 + 4704);
    if (v28 >= *(v61 + 16))
    {
      __break(1u);
    }

    else
    {
      v62 = *(v61 + 8 * v28 + 32);

      sub_1D72629AC();
      if (!v27)
      {
        v4 = v0 + 664;
        v249 = *(v0 + 4464);
        v243 = *(v0 + 4456);
        v235 = *(v0 + 1427);
        v232 = *(v0 + 1243);
        v99 = *(v0 + 4144);
        v100 = *(v0 + 4136);
        v101 = *(v0 + 4128);
        v102 = *(v0 + 4080);
        sub_1D725894C();
        v103 = sub_1D725893C();
        v254 = v104;
        v258 = v103;
        *(v0 + 4824) = v103;
        *(v0 + 4832) = v104;
        (*(v100 + 8))(v99, v101);
        v105 = type metadata accessor for DebugFormatWorkspace(0);
        v106 = (v102 + *(v105 + 20));
        v108 = *v106;
        v107 = v106[1];
        v110 = *(v106 + 2);
        v109 = *(v106 + 3);
        v111 = *(v106 + 1);
        *(v0 + 3088) = *v106;
        *(v0 + 3104) = v111;
        *(v0 + 3120) = v110;
        *(v0 + 3136) = v109;
        v112 = *(v106 + 175);
        v113 = *(v106 + 10);
        v114 = *(v106 + 8);
        *(v0 + 3232) = *(v106 + 9);
        *(v0 + 3248) = v113;
        *(v0 + 3263) = v112;
        *(v0 + 3216) = v114;
        v115 = *(v106 + 7);
        v116 = *(v106 + 4);
        v117 = *(v106 + 5);
        *(v0 + 3184) = *(v106 + 6);
        *(v0 + 3200) = v115;
        *(v0 + 3152) = v116;
        *(v0 + 3168) = v117;
        v118 = *(v102 + *(v105 + 32));
        v119 = *v106;
        v120 = *(v106 + 1);
        v121 = *(v106 + 3);
        *(v0 + 496) = *(v106 + 2);
        *(v0 + 512) = v121;
        *(v0 + 464) = v119;
        *(v0 + 480) = v120;
        v122 = *(v106 + 4);
        v123 = *(v106 + 5);
        v124 = *(v106 + 7);
        *(v0 + 560) = *(v106 + 6);
        *(v0 + 576) = v124;
        *(v0 + 528) = v122;
        *(v0 + 544) = v123;
        v125 = *(v106 + 8);
        v126 = *(v106 + 9);
        v127 = *(v106 + 10);
        *(v0 + 639) = *(v106 + 175);
        *(v0 + 608) = v126;
        *(v0 + 624) = v127;
        *(v0 + 592) = v125;
        *(v0 + 448) = v108;
        *(v0 + 456) = v107;
        *(v0 + 643) = v232;
        *(v0 + 644) = v235;
        *(v0 + 648) = v118;
        *(v0 + 656) = v62;
        *(v0 + 3816) = 0;
        *(v0 + 3824) = 0xE000000000000000;

        sub_1D5ECF1C0(v0 + 3088, v0 + 880);

        sub_1D7263D4C();
        *(v0 + 4064) = sub_1D7259CCC();
        v128 = sub_1D72644BC();
        v130 = v129;

        *(v0 + 3832) = v128;
        *(v0 + 3840) = v130;
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v243, v249);
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        v131 = sub_1D71D6228();
        MEMORY[0x1DA6F9910](v131);

        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v258, v254);
        MEMORY[0x1DA6F9910](0x702E746867696C5FLL, 0xEA0000000000676ELL);
        v132 = sub_1D726210C();
        v134 = v133;

        *(v0 + 4840) = v132;
        *(v0 + 4848) = v134;
        sub_1D725849C();
        v135 = *(v0 + 624);
        *(v0 + 824) = *(v0 + 608);
        *(v0 + 840) = v135;
        *(v0 + 856) = *(v0 + 640);
        *(v0 + 872) = *(v0 + 656);
        v136 = *(v0 + 560);
        *(v0 + 760) = *(v0 + 544);
        *(v0 + 776) = v136;
        v137 = *(v0 + 592);
        *(v0 + 792) = *(v0 + 576);
        *(v0 + 808) = v137;
        v138 = *(v0 + 496);
        *(v0 + 696) = *(v0 + 480);
        *(v0 + 712) = v138;
        v139 = *(v0 + 528);
        *(v0 + 728) = *(v0 + 512);
        *(v0 + 744) = v139;
        v140 = *(v0 + 464);
        *(v0 + 664) = *v3;
        *(v0 + 680) = v140;
        v141 = swift_task_alloc();
        *(v0 + 4856) = v141;
        *v141 = v0;
        v141[1] = sub_1D678472C;
        v21 = *(v0 + 4344);
        v22 = *(v0 + 4264);
        v23 = *(v0 + 4208);
        goto LABEL_3;
      }

      v63 = *(v0 + 4808);
      v3 = *(v0 + 4688);

      sub_1D6E1B254(v63);
      v2 = v64;

      v1 = *(v0 + 5008);
      v26 = *(v0 + 1059);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_21;
      }
    }

    v3 = sub_1D699486C(0, *(v3 + 2) + 1, 1, v3);
LABEL_21:
    v66 = *(v3 + 2);
    v65 = *(v3 + 3);
    v264 = v2;
    v262 = v1;
    v257 = v26;
    if (v66 >= v65 >> 1)
    {
      v269 = sub_1D699486C((v65 > 1), v66 + 1, 1, v3);
    }

    else
    {
      v269 = v3;
    }

    v245 = *(v0 + 4784);
    v247 = *(v0 + 4792);
    v241 = *(v0 + 4776);
    v251 = *(v0 + 4656);
    v234 = *(v0 + 4264);
    v237 = *(v0 + 4768);
    v67 = *(v0 + 4256);
    v68 = *(v0 + 4248);
    v69 = *(v0 + 4240);
    v70 = *(v0 + 4208);
    v71 = *(v0 + 4200);
    v72 = *(v0 + 4192);
    v73 = *(v0 + 4184);

    v74 = *(v72 + 8);
    v74(v71, v73);
    v75 = *(v68 + 8);
    v75(v67, v69);
    v74(v70, v73);
    v75(v234, v69);
    *(v269 + 2) = v66 + 1;
    v76 = &v269[48 * v66];
    *(v76 + 4) = v237;
    *(v76 + 5) = v241;
    *(v76 + 6) = v245;
    *(v76 + 7) = v247;
    v76[64] = v262;
    v76[65] = v257;
    *(v76 + 9) = v264;

    if (v251)
    {
      v77 = *(v0 + 4672);
      v78 = *(v0 + 4656);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = *(v0 + 4448);
      v265 = v77;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v80 = sub_1D69949A4(0, *(v80 + 2) + 1, 1, v80);
      }

      v82 = *(v80 + 2);
      v81 = *(v80 + 3);
      v263 = v78;
      if (v82 >= v81 >> 1)
      {
        v80 = sub_1D69949A4((v81 > 1), v82 + 1, 1, v80);
      }

      v248 = *(v0 + 4656);
      v83 = *(v0 + 4648);
      v238 = *(v0 + 4664);
      v231 = *(v0 + 4416);
      v252 = *(v0 + 1060);
      v84 = *(v0 + 4408);
      v85 = *(v0 + 4384);
      v242 = *(v0 + 4680);
      v246 = *(v0 + 4376);
      v86 = *(v0 + 4360);
      v87 = *(v0 + 4296);
      v88 = *(*(v0 + 4304) + 8);
      v88(*(v0 + 4352), v87);
      v88(v86, v87);
      v231(v84, v85);
      *(v80 + 2) = v82 + 1;
      v89 = &v80[48 * v82];
      *(v89 + 4) = v83;
      *(v89 + 5) = v263;
      *(v89 + 6) = v238;
      *(v89 + 7) = v265;
      *(v89 + 8) = v242;
      *(v89 + 9) = v269;
      sub_1D678E758(v83, v248);
      *(v246 + v252) = v80;
    }

    else
    {
      v142 = *(v0 + 4416);
      v143 = *(v0 + 4408);
      v144 = *(v0 + 4384);
      v145 = *(v0 + 4360);
      v146 = *(v0 + 4296);
      v147 = *(*(v0 + 4304) + 8);
      v147(*(v0 + 4352), v146);
      v147(v145, v146);
      v142(v143, v144);
    }

    v148 = *(v0 + 4120);
    sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    v149 = v148;
    goto LABEL_50;
  }

  v29 = *(v0 + 4808);
  v30 = *(v0 + 4688);

  sub_1D6E1B254(v29);
  v32 = v31;

  v253 = *(v0 + 5008);
  v250 = *v2;

  v256 = v32;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1D699486C(0, *(v30 + 2) + 1, 1, v30);
  }

  v34 = *(v30 + 2);
  v33 = *(v30 + 3);
  v268 = v27;
  if (v34 >= v33 >> 1)
  {
    v261 = sub_1D699486C((v33 > 1), v34 + 1, 1, v30);
  }

  else
  {
    v261 = v30;
  }

  v239 = *(v0 + 4784);
  v240 = *(v0 + 4792);
  v230 = *(v0 + 4768);
  v233 = *(v0 + 4776);
  v35 = *(v0 + 4560);
  v244 = *(v0 + 4472);
  v229 = *(v0 + 4264);
  v36 = *(v0 + 4256);
  v37 = *(v0 + 4248);
  v38 = *(v0 + 4240);
  v39 = *(v0 + 4208);
  v40 = *(v0 + 4200);
  v41 = *(v0 + 4192);
  v42 = *(v0 + 4184);

  v236 = v35 + 1;
  v43 = *(v41 + 8);
  v43(v40, v42);
  v44 = *(v37 + 8);
  v44(v36, v38);
  v43(v39, v42);
  v44(v229, v38);
  v45 = v261;
  *(v261 + 2) = v34 + 1;
  v46 = &v261[48 * v34];
  *(v46 + 4) = v230;
  *(v46 + 5) = v233;
  *(v46 + 6) = v239;
  *(v46 + 7) = v240;
  v46[64] = v253;
  v46[65] = v250;
  *(v46 + 9) = v256;

  if (v236 != v244)
  {
    v90 = *(v0 + 4680);
    v91 = v0 + 1059;
    v92 = *(v0 + 4664);
    v93 = *(v0 + 4648);
    v94 = *(v0 + 4560) + 1;
    v95 = v268;
LABEL_30:
    *(v0 + 4560) = v94;
    *(v0 + 4552) = v45;
    *(v0 + 4544) = v90;
    *(v0 + 4528) = v92;
    *(v0 + 4512) = v93;
    *(v0 + 4504) = v95;
    v96 = *(v0 + 4096) + 24 * v94;
    *(v0 + 1612) = *(v96 + 32);
    *(v0 + 4568) = *(v96 + 40);
    *(v91 + 554) = *(v96 + 48);
    *(v91 + 555) = *(v96 + 49);
    *(v0 + 4576) = sub_1D72628FC();
    v98 = sub_1D726285C();

    return MEMORY[0x1EEE6DFA0](sub_1D6781138, v98, v97);
  }

  v47 = *(v0 + 4656);

  if (v47)
  {
    v48 = *(v0 + 4672);
    v49 = *(v0 + 4656);

    v50 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v0 + 4448);
    if ((v50 & 1) == 0)
    {
      v51 = sub_1D69949A4(0, *(v51 + 2) + 1, 1, *(v0 + 4448));
    }

    v53 = *(v51 + 2);
    v52 = *(v51 + 3);
    if (v53 >= v52 >> 1)
    {
      v51 = sub_1D69949A4((v52 > 1), v53 + 1, 1, v51);
    }

    v54 = *(v0 + 4680);
    v55 = *(v0 + 4664);
    v56 = *(v0 + 4656);
    v57 = *(v0 + 4648);
    v58 = *(v0 + 1060);
    v59 = *(v0 + 4376);
    *(v51 + 2) = v53 + 1;
    v60 = &v51[48 * v53];
    *(v60 + 4) = v57;
    *(v60 + 5) = v49;
    *(v60 + 6) = v55;
    *(v60 + 7) = v48;
    *(v60 + 8) = v54;
    *(v60 + 9) = v261;
    sub_1D678E758(v57, v56);
    *(v59 + v58) = v51;
  }

  else
  {
    v51 = *(v0 + 4448);
  }

  v150 = *(v0 + 4440) + 1;
  if (v150 == *(v0 + 4432))
  {
    goto LABEL_38;
  }

  *(v0 + 4448) = v51;
  *(v0 + 4440) = v150;
  v160 = *(v0 + 4088) + 2 * v150;
  v161 = *(v160 + 32);
  *(v0 + 1243) = v161;
  v162 = *(v160 + 33);
  *(v0 + 1427) = v162;
  *(v0 + 3944) = sub_1D6E23ADC(v161);
  *(v0 + 3952) = v163;
  MEMORY[0x1DA6F9910](95, 0xE100000000000000);
  if (v162)
  {
    v164 = 0x70616373646E616CLL;
  }

  else
  {
    v164 = 0x7469617274726F70;
  }

  if (v162)
  {
    v165 = 0xE900000000000065;
  }

  else
  {
    v165 = 0xE800000000000000;
  }

  MEMORY[0x1DA6F9910](v164, v165);

  *(v0 + 4456) = *(v0 + 3944);
  *(v0 + 4464) = *(v0 + 3952);
  sub_1D72629AC();
  if (v268)
  {
    v166 = *(v0 + 4416);
    v167 = *(v0 + 4408);
    v168 = *(v0 + 4384);
    v271 = *(v0 + 4376);
    v169 = *(v0 + 4360);
    v170 = *(v0 + 4352);
    v171 = *(v0 + 4304);
    v172 = *(v0 + 4296);
    v266 = *(v0 + 4120);

    v173 = *(v171 + 8);
    v173(v170, v172);
    v173(v169, v172);
    v166(v167, v168);
    sub_1D678EB84(v271, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    goto LABEL_49;
  }

  v177 = *(*(v0 + 4096) + 16);
  *(v0 + 4472) = v177;
  if (v177)
  {
LABEL_54:
    v178 = *(v0 + 4120);
    *(v0 + 4480) = sub_1D726290C();
    *(v0 + 1611) = sub_1D6F79CFC(v161);
    v179 = objc_opt_self();
    v95 = 0;
    v90 = 0;
    v45 = 0;
    v94 = 0;
    *(v0 + 4488) = v179;
    *(v0 + 4496) = *(v178 + 16);
    v93 = 0uLL;
    v92 = 0uLL;
    v91 = v0 + 1059;
    goto LABEL_30;
  }

  v216 = *(v0 + 4440) + 1;
  if (v216 != *(v0 + 4432))
  {
    while (1)
    {
      *(v0 + 4448) = v51;
      *(v0 + 4440) = v216;
      v217 = *(v0 + 4088) + 2 * v216;
      v161 = *(v217 + 32);
      *(v0 + 1243) = v161;
      v218 = *(v217 + 33);
      *(v0 + 1427) = v218;
      *(v0 + 3944) = sub_1D6E23ADC(v161);
      *(v0 + 3952) = v219;
      MEMORY[0x1DA6F9910](95, 0xE100000000000000);
      v220 = v218 ? 0x70616373646E616CLL : 0x7469617274726F70;
      v221 = v218 ? 0xE900000000000065 : 0xE800000000000000;
      MEMORY[0x1DA6F9910](v220, v221);

      *(v0 + 4456) = *(v0 + 3944);
      *(v0 + 4464) = *(v0 + 3952);
      sub_1D72629AC();
      v222 = *(*(v0 + 4096) + 16);
      *(v0 + 4472) = v222;
      if (v222)
      {
        goto LABEL_54;
      }

      v268 = 0;
      v216 = *(v0 + 4440) + 1;
      if (v216 == *(v0 + 4432))
      {
        goto LABEL_38;
      }
    }
  }

  v268 = 0;
LABEL_38:

  sub_1D725849C();
  sub_1D678ED98(&qword_1EC88B4F0, type metadata accessor for DebugFormatWorkspaceSnapshotManifest, &unk_1D73468C0);
  v151 = sub_1D72578BC();
  *(v0 + 4936) = v151;
  *(v0 + 4944) = v152;
  if (v268)
  {
    v153 = *(v0 + 4416);
    v154 = *(v0 + 4408);
    v155 = *(v0 + 4384);
    v270 = *(v0 + 4376);
    v156 = *(v0 + 4360);
    v157 = *(v0 + 4352);
    v158 = *(v0 + 4296);
    v266 = *(v0 + 4120);
    v159 = *(*(v0 + 4304) + 8);
    v159(*(v0 + 4328), v158);
    v159(v157, v158);
    v159(v156, v158);
    v153(v154, v155);
    sub_1D678EB84(v270, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
LABEL_49:
    v149 = v266;
LABEL_50:
    sub_1D678ADBC(v149);

    v176 = *(v0 + 8);

    return v176();
  }

  v174 = v151;
  v175 = v152;
  sub_1D725869C();
  v259 = v175;
  v180 = *(v0 + 4144);
  v267 = *(v0 + 4136);
  v272 = *(v0 + 4128);
  v181 = *(v0 + 4080);
  sub_1D725849C();
  v182 = (v181 + *(type metadata accessor for DebugFormatWorkspace(0) + 20));
  v183 = v182[8];
  v184 = v182[9];
  v185 = v182[10];
  *(v0 + 2895) = *(v182 + 175);
  *(v0 + 2864) = v184;
  *(v0 + 2880) = v185;
  *(v0 + 2848) = v183;
  v186 = v182[4];
  v187 = v182[5];
  v188 = v182[7];
  *(v0 + 2816) = v182[6];
  *(v0 + 2832) = v188;
  *(v0 + 2784) = v186;
  *(v0 + 2800) = v187;
  v189 = *v182;
  v190 = v182[1];
  v191 = v182[3];
  *(v0 + 2752) = v182[2];
  *(v0 + 2768) = v191;
  *(v0 + 2720) = v189;
  *(v0 + 2736) = v190;
  v193 = v182[2];
  v192 = v182[3];
  *(v0 + 3456) = v182[1];
  *(v0 + 3472) = v193;
  *(v0 + 3488) = v192;
  v194 = v182[7];
  v196 = v182[4];
  v195 = v182[5];
  *(v0 + 3536) = v182[6];
  *(v0 + 3552) = v194;
  *(v0 + 3504) = v196;
  *(v0 + 3520) = v195;
  v198 = v182[9];
  v197 = v182[10];
  v199 = v182[8];
  *(v0 + 3615) = *(v182 + 175);
  *(v0 + 3584) = v198;
  *(v0 + 3600) = v197;
  *(v0 + 3568) = v199;
  sub_1D5ECF1C0(v0 + 2720, v0 + 2536);
  sub_1D725894C();
  v200 = sub_1D725893C();
  v202 = v201;
  *(v0 + 4952) = v200;
  *(v0 + 4960) = v201;
  v203 = v180;
  v204 = v200;
  (*(v267 + 8))(v203, v272);

  *(v0 + 2904) = v204;
  *(v0 + 2912) = v202;
  v205 = *(v0 + 3472);
  *(v0 + 2920) = *(v0 + 3456);
  *(v0 + 2936) = v205;
  v206 = *(v0 + 3536);
  *(v0 + 2984) = *(v0 + 3520);
  *(v0 + 3000) = v206;
  v207 = *(v0 + 3504);
  *(v0 + 2952) = *(v0 + 3488);
  *(v0 + 2968) = v207;
  v208 = *(v0 + 3568);
  *(v0 + 3016) = *(v0 + 3552);
  *(v0 + 3032) = v208;
  v209 = *(v0 + 3600);
  *(v0 + 3048) = *(v0 + 3584);
  *(v0 + 3064) = v209;
  *(v0 + 3079) = *(v0 + 3615);
  v210 = *(v0 + 3048);
  *(v0 + 2480) = *(v0 + 3032);
  *(v0 + 2496) = v210;
  *(v0 + 2512) = *(v0 + 3064);
  *(v0 + 2527) = *(v0 + 3079);
  v211 = *(v0 + 2984);
  *(v0 + 2416) = *(v0 + 2968);
  *(v0 + 2432) = v211;
  v212 = *(v0 + 3016);
  *(v0 + 2448) = *(v0 + 3000);
  *(v0 + 2464) = v212;
  v213 = *(v0 + 2920);
  *(v0 + 2352) = *(v0 + 2904);
  *(v0 + 2368) = v213;
  v214 = *(v0 + 2952);
  *(v0 + 2384) = *(v0 + 2936);
  *(v0 + 2400) = v214;
  sub_1D5ECF1C0(v0 + 2904, v0 + 2168);
  sub_1D5E3303C();
  *(v0 + 4968) = sub_1D72578BC();
  *(v0 + 4976) = v215;
  v223 = *(v0 + 2496);
  *(v0 + 1744) = *(v0 + 2480);
  *(v0 + 1760) = v223;
  *(v0 + 1776) = *(v0 + 2512);
  *(v0 + 1791) = *(v0 + 2527);
  v224 = *(v0 + 2432);
  *(v0 + 1680) = *(v0 + 2416);
  *(v0 + 1696) = v224;
  v225 = *(v0 + 2464);
  *(v0 + 1712) = *(v0 + 2448);
  *(v0 + 1728) = v225;
  v226 = *(v0 + 2368);
  *(v0 + 1616) = *(v0 + 2352);
  *(v0 + 1632) = v226;
  v227 = *(v0 + 2400);
  *(v0 + 1648) = *(v0 + 2384);
  *(v0 + 1664) = v227;
  sub_1D5ECF21C(v0 + 1616);
  sub_1D725869C();
  v228 = swift_task_alloc();
  *(v0 + 4984) = v228;
  *v228 = v0;
  v228[1] = sub_1D67893C8;

  return sub_1D678CD4C(v174, v259);
}

uint64_t sub_1D67861D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 4904) = v1;

  if (v1)
  {

    v5 = sub_1D678A544;
  }

  else
  {
    *(v4 + 4912) = a1;
    v5 = sub_1D6786364;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6786364()
{
  v280 = v0;
  v279 = *MEMORY[0x1E69E9840];
  v1 = (v0 + 448);
  if (*(v0 + 4912))
  {
    v2 = *(v0 + 4888);
    v3 = *(v0 + 4864);
    v4 = *(v0 + 4848);
    v5 = *(v0 + 4840);
    v266 = *(v0 + 4880);

    v6 = *(v0 + 624);
    v277[10] = *(v0 + 608);
    v277[11] = v6;
    v277[12] = *(v0 + 640);
    v278 = *(v0 + 656);
    v7 = *(v0 + 560);
    v277[6] = *(v0 + 544);
    v277[7] = v7;
    v8 = *(v0 + 592);
    v277[8] = *(v0 + 576);
    v277[9] = v8;
    v9 = *(v0 + 496);
    v277[2] = *(v0 + 480);
    v277[3] = v9;
    v10 = *(v0 + 528);
    v277[4] = *(v0 + 512);
    v277[5] = v10;
    v11 = *(v0 + 464);
    v277[0] = *v1;
    v277[1] = v11;
    *(v0 + 3880) = 0x2F736567616D69;
    *(v0 + 3888) = 0xE700000000000000;
    sub_1D5F2B0D8(v0 + 448, v0 + 16);

    MEMORY[0x1DA6F9910](v5, v4);

    v12 = *(v0 + 3880);
    v13 = *(v0 + 3888);
    *(v0 + 3896) = 0x2F736567616D69;
    *(v0 + 3904) = 0xE700000000000000;
    MEMORY[0x1DA6F9910](v266, v2);

    sub_1D6E1C2B8(v277, v3, v12, v13, *(v0 + 3896), *(v0 + 3904), (v0 + 3768));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v0 + 4808);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1D6994ADC(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1D6994ADC((v16 > 1), v17 + 1, 1, v15);
    }

    *(v0 + 4920) = v15;
    *(v15 + 2) = v17 + 1;
    v18 = &v15[48 * v17];
    v19 = *(v0 + 3768);
    v20 = *(v0 + 3800);
    *(v18 + 3) = *(v0 + 3784);
    *(v18 + 4) = v20;
    *(v18 + 2) = v19;
    *(v0 + 4928) = sub_1D72628FC();
    v21 = sub_1D726285C();
    v23 = sub_1D6787C18;
    goto LABEL_7;
  }

  v24 = (v0 + 1059);
  v25 = *(v0 + 4344);
  v26 = *(v0 + 4336);
  v27 = *(v0 + 4304);
  v28 = *(v0 + 4296);

  sub_1D5F2B134(v0 + 448);
  v30 = *(v27 + 8);
  v29 = v27 + 8;
  v30(v26, v28);
  v30(v25, v28);
  v31 = *(v0 + 4904);
  v32 = *(v0 + 4816) + 1;
  if (v32 != *(v0 + 4800))
  {
    *(v0 + 4816) = v32;
    v66 = *(v0 + 4704);
    if (v32 >= *(v66 + 16))
    {
      __break(1u);
    }

    else
    {
      v67 = *(v66 + 8 * v32 + 32);

      sub_1D72629AC();
      if (!v31)
      {
        v254 = *(v0 + 4464);
        v248 = *(v0 + 4456);
        v240 = *(v0 + 1427);
        v237 = *(v0 + 1243);
        v100 = *(v0 + 4144);
        v101 = *(v0 + 4136);
        v102 = *(v0 + 4128);
        v103 = *(v0 + 4080);
        sub_1D725894C();
        v265 = sub_1D725893C();
        v259 = v104;
        *(v0 + 4824) = v265;
        *(v0 + 4832) = v104;
        (*(v101 + 8))(v100, v102);
        v105 = type metadata accessor for DebugFormatWorkspace(0);
        v106 = (v103 + *(v105 + 20));
        v108 = *v106;
        v107 = v106[1];
        v110 = *(v106 + 2);
        v109 = *(v106 + 3);
        v111 = *(v106 + 1);
        *(v0 + 3088) = *v106;
        *(v0 + 3104) = v111;
        *(v0 + 3120) = v110;
        *(v0 + 3136) = v109;
        v112 = *(v106 + 175);
        v113 = *(v106 + 10);
        v114 = *(v106 + 8);
        *(v0 + 3232) = *(v106 + 9);
        *(v0 + 3248) = v113;
        *(v0 + 3263) = v112;
        *(v0 + 3216) = v114;
        v115 = *(v106 + 7);
        v116 = *(v106 + 4);
        v117 = *(v106 + 5);
        *(v0 + 3184) = *(v106 + 6);
        *(v0 + 3200) = v115;
        *(v0 + 3152) = v116;
        *(v0 + 3168) = v117;
        v118 = *(v103 + *(v105 + 32));
        v119 = *v106;
        v120 = *(v106 + 1);
        v121 = *(v106 + 3);
        *(v0 + 496) = *(v106 + 2);
        *(v0 + 512) = v121;
        *(v0 + 464) = v119;
        *(v0 + 480) = v120;
        v122 = *(v106 + 4);
        v123 = *(v106 + 5);
        v124 = *(v106 + 7);
        *(v0 + 560) = *(v106 + 6);
        *(v0 + 576) = v124;
        *(v0 + 528) = v122;
        *(v0 + 544) = v123;
        v125 = *(v106 + 8);
        v126 = *(v106 + 9);
        v127 = *(v106 + 10);
        *(v0 + 639) = *(v106 + 175);
        *(v0 + 608) = v126;
        *(v0 + 624) = v127;
        *(v0 + 592) = v125;
        *(v0 + 448) = v108;
        *(v0 + 456) = v107;
        *(v0 + 643) = v237;
        *(v0 + 644) = v240;
        *(v0 + 648) = v118;
        *(v0 + 656) = v67;
        *(v0 + 3816) = 0;
        *(v0 + 3824) = 0xE000000000000000;

        sub_1D5ECF1C0(v0 + 3088, v0 + 880);

        sub_1D7263D4C();
        *(v0 + 4064) = sub_1D7259CCC();
        v128 = sub_1D72644BC();
        v130 = v129;

        *(v0 + 3832) = v128;
        *(v0 + 3840) = v130;
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v248, v254);
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        v131 = sub_1D71D6228();
        MEMORY[0x1DA6F9910](v131);

        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v265, v259);
        MEMORY[0x1DA6F9910](0x702E746867696C5FLL, 0xEA0000000000676ELL);
        v132 = sub_1D726210C();
        v134 = v133;

        *(v0 + 4840) = v132;
        *(v0 + 4848) = v134;
        sub_1D725849C();
        v135 = *(v0 + 624);
        *(v0 + 824) = *(v0 + 608);
        *(v0 + 840) = v135;
        *(v0 + 856) = *(v0 + 640);
        *(v0 + 872) = *(v0 + 656);
        v136 = *(v0 + 560);
        *(v0 + 760) = *(v0 + 544);
        *(v0 + 776) = v136;
        v137 = *(v0 + 592);
        *(v0 + 792) = *(v0 + 576);
        *(v0 + 808) = v137;
        v138 = *(v0 + 496);
        *(v0 + 696) = *(v0 + 480);
        *(v0 + 712) = v138;
        v139 = *(v0 + 528);
        *(v0 + 728) = *(v0 + 512);
        *(v0 + 744) = v139;
        v140 = *(v0 + 464);
        *(v0 + 664) = *v1;
        *(v0 + 680) = v140;
        v141 = swift_task_alloc();
        *(v0 + 4856) = v141;
        *v141 = v0;
        v141[1] = sub_1D678472C;
        v142 = *(v0 + 4344);
        v143 = *(v0 + 4264);
        v144 = *(v0 + 4208);
        v145 = *(v0 + 4104);

        return sub_1D678BDFC(v0 + 664, v145, v143, v144, v142);
      }

      v25 = *(v0 + 4808);
      v1 = *(v0 + 4688);

      sub_1D6E1B254(v25);
      v29 = v68;

      LOBYTE(v25) = *(v0 + 5008);
      LOBYTE(v24) = *(v0 + 1059);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v70 = *(v1 + 2);
        v69 = *(v1 + 3);
        v268 = v29;
        v261 = v25;
        v263 = v24;
        if (v70 >= v69 >> 1)
        {
          v273 = sub_1D699486C((v69 > 1), v70 + 1, 1, v1);
        }

        else
        {
          v273 = v1;
        }

        v250 = *(v0 + 4784);
        v252 = *(v0 + 4792);
        v246 = *(v0 + 4776);
        v256 = *(v0 + 4656);
        v239 = *(v0 + 4264);
        v242 = *(v0 + 4768);
        v71 = *(v0 + 4256);
        v72 = *(v0 + 4248);
        v73 = *(v0 + 4240);
        v74 = *(v0 + 4208);
        v75 = *(v0 + 4200);
        v76 = *(v0 + 4192);
        v77 = *(v0 + 4184);

        v78 = *(v76 + 8);
        v78(v75, v77);
        v79 = *(v72 + 8);
        v79(v71, v73);
        v78(v74, v77);
        v79(v239, v73);
        *(v273 + 2) = v70 + 1;
        v80 = &v273[48 * v70];
        *(v80 + 4) = v242;
        *(v80 + 5) = v246;
        *(v80 + 6) = v250;
        *(v80 + 7) = v252;
        v80[64] = v261;
        v80[65] = v263;
        *(v80 + 9) = v268;

        if (v256)
        {
          v81 = *(v0 + 4672);
          v82 = *(v0 + 4656);

          v83 = swift_isUniquelyReferenced_nonNull_native();
          v84 = *(v0 + 4448);
          v269 = v81;
          if ((v83 & 1) == 0)
          {
            v84 = sub_1D69949A4(0, *(v84 + 2) + 1, 1, v84);
          }

          v86 = *(v84 + 2);
          v85 = *(v84 + 3);
          v264 = v82;
          if (v86 >= v85 >> 1)
          {
            v84 = sub_1D69949A4((v85 > 1), v86 + 1, 1, v84);
          }

          v253 = *(v0 + 4656);
          v87 = *(v0 + 4648);
          v243 = *(v0 + 4664);
          v236 = *(v0 + 4416);
          v257 = *(v0 + 1060);
          v88 = *(v0 + 4408);
          v89 = *(v0 + 4384);
          v247 = *(v0 + 4680);
          v251 = *(v0 + 4376);
          v90 = *(v0 + 4360);
          v91 = *(v0 + 4296);
          v92 = *(*(v0 + 4304) + 8);
          v92(*(v0 + 4352), v91);
          v92(v90, v91);
          v236(v88, v89);
          *(v84 + 2) = v86 + 1;
          v93 = &v84[48 * v86];
          *(v93 + 4) = v87;
          *(v93 + 5) = v264;
          *(v93 + 6) = v243;
          *(v93 + 7) = v269;
          *(v93 + 8) = v247;
          *(v93 + 9) = v273;
          sub_1D678E758(v87, v253);
          *(v251 + v257) = v84;
        }

        else
        {
          v146 = *(v0 + 4416);
          v147 = *(v0 + 4408);
          v148 = *(v0 + 4384);
          v149 = *(v0 + 4360);
          v150 = *(v0 + 4296);
          v151 = *(*(v0 + 4304) + 8);
          v151(*(v0 + 4352), v150);
          v151(v149, v150);
          v146(v147, v148);
        }

        v152 = *(v0 + 4120);
        sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
        v153 = v152;
        goto LABEL_54;
      }
    }

    v1 = sub_1D699486C(0, *(v1 + 2) + 1, 1, v1);
    goto LABEL_25;
  }

  v33 = *(v0 + 4808);
  v34 = *(v0 + 4688);

  sub_1D6E1B254(v33);
  v36 = v35;

  v258 = *(v0 + 5008);
  v255 = *v24;

  v260 = v36;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_1D699486C(0, *(v34 + 2) + 1, 1, v34);
  }

  v38 = *(v34 + 2);
  v37 = *(v34 + 3);
  v267 = v31;
  if (v38 >= v37 >> 1)
  {
    v272 = sub_1D699486C((v37 > 1), v38 + 1, 1, v34);
  }

  else
  {
    v272 = v34;
  }

  v244 = *(v0 + 4784);
  v245 = *(v0 + 4792);
  v235 = *(v0 + 4768);
  v238 = *(v0 + 4776);
  v39 = *(v0 + 4560);
  v249 = *(v0 + 4472);
  v234 = *(v0 + 4264);
  v40 = *(v0 + 4256);
  v41 = *(v0 + 4248);
  v42 = *(v0 + 4240);
  v43 = *(v0 + 4208);
  v44 = *(v0 + 4200);
  v45 = *(v0 + 4192);
  v46 = *(v0 + 4184);

  v241 = v39 + 1;
  v47 = *(v45 + 8);
  v47(v44, v46);
  v48 = *(v41 + 8);
  v48(v40, v42);
  v47(v43, v46);
  v48(v234, v42);
  v49 = v272;
  *(v272 + 2) = v38 + 1;
  v50 = &v272[48 * v38];
  *(v50 + 4) = v235;
  *(v50 + 5) = v238;
  *(v50 + 6) = v244;
  *(v50 + 7) = v245;
  v50[64] = v258;
  v50[65] = v255;
  *(v50 + 9) = v260;

  if (v241 != v249)
  {
    v94 = *(v0 + 4680);
    v52 = v0 + 1059;
    v95 = v267;
    v96 = *(v0 + 4664);
    v97 = *(v0 + 4648);
    v98 = *(v0 + 4560) + 1;
LABEL_34:
    *(v0 + 4560) = v98;
    *(v0 + 4552) = v49;
    *(v0 + 4544) = v94;
    *(v0 + 4528) = v96;
    *(v0 + 4512) = v97;
    *(v0 + 4504) = v95;
    v99 = *(v0 + 4096) + 24 * v98;
    *(v0 + 1612) = *(v99 + 32);
    *(v0 + 4568) = *(v99 + 40);
    *(v52 + 554) = *(v99 + 48);
    *(v52 + 555) = *(v99 + 49);
    *(v0 + 4576) = sub_1D72628FC();
    v21 = sub_1D726285C();
    v23 = sub_1D6781138;
LABEL_7:

    return MEMORY[0x1EEE6DFA0](v23, v21, v22);
  }

  v51 = *(v0 + 4656);

  v52 = v0 + 1059;
  if (v51)
  {
    v53 = *(v0 + 4672);
    v54 = *(v0 + 4656);

    v55 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v0 + 4448);
    if ((v55 & 1) == 0)
    {
      v56 = sub_1D69949A4(0, *(v56 + 2) + 1, 1, *(v0 + 4448));
    }

    v58 = *(v56 + 2);
    v57 = *(v56 + 3);
    if (v58 >= v57 >> 1)
    {
      v56 = sub_1D69949A4((v57 > 1), v58 + 1, 1, v56);
    }

    v59 = *(v0 + 4680);
    v60 = *(v0 + 4664);
    v61 = *(v0 + 4656);
    v62 = *(v0 + 4648);
    v63 = *(v0 + 1060);
    v64 = *(v0 + 4376);
    *(v56 + 2) = v58 + 1;
    v65 = &v56[48 * v58];
    *(v65 + 4) = v62;
    *(v65 + 5) = v54;
    *(v65 + 6) = v60;
    *(v65 + 7) = v53;
    *(v65 + 8) = v59;
    *(v65 + 9) = v272;
    sub_1D678E758(v62, v61);
    *(v64 + v63) = v56;
  }

  else
  {
    v56 = *(v0 + 4448);
  }

  v154 = *(v0 + 4440) + 1;
  if (v154 == *(v0 + 4432))
  {
    goto LABEL_42;
  }

  *(v0 + 4448) = v56;
  *(v0 + 4440) = v154;
  v164 = *(v0 + 4088) + 2 * v154;
  v165 = *(v164 + 32);
  *(v0 + 1243) = v165;
  v166 = *(v164 + 33);
  *(v0 + 1427) = v166;
  *(v0 + 3944) = sub_1D6E23ADC(v165);
  *(v0 + 3952) = v167;
  MEMORY[0x1DA6F9910](95, 0xE100000000000000);
  if (v166)
  {
    v168 = 0x70616373646E616CLL;
  }

  else
  {
    v168 = 0x7469617274726F70;
  }

  if (v166)
  {
    v169 = 0xE900000000000065;
  }

  else
  {
    v169 = 0xE800000000000000;
  }

  MEMORY[0x1DA6F9910](v168, v169);

  *(v0 + 4456) = *(v0 + 3944);
  *(v0 + 4464) = *(v0 + 3952);
  sub_1D72629AC();
  if (v267)
  {
    v170 = *(v0 + 4416);
    v171 = *(v0 + 4408);
    v172 = *(v0 + 4384);
    v173 = *(v0 + 4360);
    v174 = *(v0 + 4352);
    v175 = *(v0 + 4304);
    v176 = *(v0 + 4296);
    v270 = *(v0 + 4120);
    v275 = *(v0 + 4376);

    v177 = *(v175 + 8);
    v177(v174, v176);
    v177(v173, v176);
    v170(v171, v172);
    sub_1D678EB84(v275, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    goto LABEL_53;
  }

  v181 = *(*(v0 + 4096) + 16);
  *(v0 + 4472) = v181;
  if (v181)
  {
LABEL_58:
    v182 = *(v0 + 4120);
    *(v0 + 4480) = sub_1D726290C();
    *(v0 + 1611) = sub_1D6F79CFC(v165);
    v183 = objc_opt_self();
    v95 = 0;
    v94 = 0;
    v49 = 0;
    v98 = 0;
    *(v0 + 4488) = v183;
    *(v0 + 4496) = *(v182 + 16);
    v97 = 0uLL;
    v96 = 0uLL;
    goto LABEL_34;
  }

  v220 = *(v0 + 4440) + 1;
  if (v220 != *(v0 + 4432))
  {
    while (1)
    {
      *(v0 + 4448) = v56;
      *(v0 + 4440) = v220;
      v221 = *(v0 + 4088) + 2 * v220;
      v165 = *(v221 + 32);
      *(v0 + 1243) = v165;
      v222 = *(v221 + 33);
      *(v0 + 1427) = v222;
      *(v0 + 3944) = sub_1D6E23ADC(v165);
      *(v0 + 3952) = v223;
      MEMORY[0x1DA6F9910](95, 0xE100000000000000);
      v224 = v222 ? 0x70616373646E616CLL : 0x7469617274726F70;
      v225 = v222 ? 0xE900000000000065 : 0xE800000000000000;
      MEMORY[0x1DA6F9910](v224, v225);

      *(v0 + 4456) = *(v0 + 3944);
      *(v0 + 4464) = *(v0 + 3952);
      sub_1D72629AC();
      v226 = *(*(v0 + 4096) + 16);
      *(v0 + 4472) = v226;
      if (v226)
      {
        goto LABEL_58;
      }

      v267 = 0;
      v220 = *(v0 + 4440) + 1;
      if (v220 == *(v0 + 4432))
      {
        goto LABEL_42;
      }
    }
  }

  v267 = 0;
LABEL_42:

  sub_1D725849C();
  sub_1D678ED98(&qword_1EC88B4F0, type metadata accessor for DebugFormatWorkspaceSnapshotManifest, &unk_1D73468C0);
  v155 = sub_1D72578BC();
  *(v0 + 4936) = v155;
  *(v0 + 4944) = v156;
  if (v267)
  {
    v157 = *(v0 + 4416);
    v158 = *(v0 + 4408);
    v159 = *(v0 + 4384);
    v160 = *(v0 + 4360);
    v161 = *(v0 + 4352);
    v162 = *(v0 + 4296);
    v270 = *(v0 + 4120);
    v274 = *(v0 + 4376);
    v163 = *(*(v0 + 4304) + 8);
    v163(*(v0 + 4328), v162);
    v163(v161, v162);
    v163(v160, v162);
    v157(v158, v159);
    sub_1D678EB84(v274, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
LABEL_53:
    v153 = v270;
LABEL_54:
    sub_1D678ADBC(v153);

    v180 = *(v0 + 8);

    return v180();
  }

  v178 = v155;
  v179 = v156;
  sub_1D725869C();
  v262 = v179;
  v184 = *(v0 + 4144);
  v271 = *(v0 + 4136);
  v276 = *(v0 + 4128);
  v185 = *(v0 + 4080);
  sub_1D725849C();
  v186 = (v185 + *(type metadata accessor for DebugFormatWorkspace(0) + 20));
  v187 = v186[8];
  v188 = v186[9];
  v189 = v186[10];
  *(v0 + 2895) = *(v186 + 175);
  *(v0 + 2864) = v188;
  *(v0 + 2880) = v189;
  *(v0 + 2848) = v187;
  v190 = v186[4];
  v191 = v186[5];
  v192 = v186[7];
  *(v0 + 2816) = v186[6];
  *(v0 + 2832) = v192;
  *(v0 + 2784) = v190;
  *(v0 + 2800) = v191;
  v193 = *v186;
  v194 = v186[1];
  v195 = v186[3];
  *(v0 + 2752) = v186[2];
  *(v0 + 2768) = v195;
  *(v0 + 2720) = v193;
  *(v0 + 2736) = v194;
  v197 = v186[2];
  v196 = v186[3];
  *(v0 + 3456) = v186[1];
  *(v0 + 3472) = v197;
  *(v0 + 3488) = v196;
  v198 = v186[7];
  v200 = v186[4];
  v199 = v186[5];
  *(v0 + 3536) = v186[6];
  *(v0 + 3552) = v198;
  *(v0 + 3504) = v200;
  *(v0 + 3520) = v199;
  v202 = v186[9];
  v201 = v186[10];
  v203 = v186[8];
  *(v0 + 3615) = *(v186 + 175);
  *(v0 + 3584) = v202;
  *(v0 + 3600) = v201;
  *(v0 + 3568) = v203;
  sub_1D5ECF1C0(v0 + 2720, v0 + 2536);
  sub_1D725894C();
  v204 = sub_1D725893C();
  v206 = v205;
  *(v0 + 4952) = v204;
  *(v0 + 4960) = v205;
  v207 = v184;
  v208 = v204;
  (*(v271 + 8))(v207, v276);

  *(v0 + 2904) = v208;
  *(v0 + 2912) = v206;
  v209 = *(v0 + 3472);
  *(v0 + 2920) = *(v0 + 3456);
  *(v0 + 2936) = v209;
  v210 = *(v0 + 3536);
  *(v0 + 2984) = *(v0 + 3520);
  *(v0 + 3000) = v210;
  v211 = *(v0 + 3504);
  *(v0 + 2952) = *(v0 + 3488);
  *(v0 + 2968) = v211;
  v212 = *(v0 + 3568);
  *(v0 + 3016) = *(v0 + 3552);
  *(v0 + 3032) = v212;
  v213 = *(v0 + 3600);
  *(v0 + 3048) = *(v0 + 3584);
  *(v0 + 3064) = v213;
  *(v0 + 3079) = *(v0 + 3615);
  v214 = *(v0 + 3048);
  *(v0 + 2480) = *(v0 + 3032);
  *(v0 + 2496) = v214;
  *(v0 + 2512) = *(v0 + 3064);
  *(v0 + 2527) = *(v0 + 3079);
  v215 = *(v0 + 2984);
  *(v0 + 2416) = *(v0 + 2968);
  *(v0 + 2432) = v215;
  v216 = *(v0 + 3016);
  *(v0 + 2448) = *(v0 + 3000);
  *(v0 + 2464) = v216;
  v217 = *(v0 + 2920);
  *(v0 + 2352) = *(v0 + 2904);
  *(v0 + 2368) = v217;
  v218 = *(v0 + 2952);
  *(v0 + 2384) = *(v0 + 2936);
  *(v0 + 2400) = v218;
  sub_1D5ECF1C0(v0 + 2904, v0 + 2168);
  sub_1D5E3303C();
  *(v0 + 4968) = sub_1D72578BC();
  *(v0 + 4976) = v219;
  v227 = *(v0 + 2496);
  *(v0 + 1744) = *(v0 + 2480);
  *(v0 + 1760) = v227;
  *(v0 + 1776) = *(v0 + 2512);
  *(v0 + 1791) = *(v0 + 2527);
  v228 = *(v0 + 2432);
  *(v0 + 1680) = *(v0 + 2416);
  *(v0 + 1696) = v228;
  v229 = *(v0 + 2464);
  *(v0 + 1712) = *(v0 + 2448);
  *(v0 + 1728) = v229;
  v230 = *(v0 + 2368);
  *(v0 + 1616) = *(v0 + 2352);
  *(v0 + 1632) = v230;
  v231 = *(v0 + 2400);
  *(v0 + 1648) = *(v0 + 2384);
  *(v0 + 1664) = v231;
  sub_1D5ECF21C(v0 + 1616);
  sub_1D725869C();
  v232 = swift_task_alloc();
  *(v0 + 4984) = v232;
  *v232 = v0;
  v232[1] = sub_1D67893C8;

  return sub_1D678CD4C(v178, v262);
}

uint64_t sub_1D6787C18()
{

  sub_1D676AE48();

  return MEMORY[0x1EEE6DFA0](sub_1D6787CB4, 0, 0);
}

uint64_t sub_1D6787CB4()
{
  v1 = (v0 + 1059);
  v2 = (v0 + 448);
  v3 = *(v0 + 4816);
  v4 = *(v0 + 4800);
  v5 = *(v0 + 4344);
  v6 = *(v0 + 4336);
  v7 = *(v0 + 4304);
  v8 = *(v0 + 4296);

  sub_1D5F2B134(v0 + 448);
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  v11(v6, v8);
  v11(v5, v8);
  v12 = *(v0 + 4920);
  v13 = *(v0 + 4904);
  if (v3 + 1 != v4)
  {
    v46 = *(v0 + 4816) + 1;
    *(v0 + 4808) = v12;
    *(v0 + 4816) = v46;
    v47 = *(v0 + 4704);
    if (v46 >= *(v47 + 16))
    {
      __break(1u);
    }

    else
    {
      v48 = *(v47 + 8 * v46 + 32);

      sub_1D72629AC();
      if (!v13)
      {
        v239 = *(v0 + 4464);
        v233 = *(v0 + 4456);
        v225 = *(v0 + 1427);
        v222 = *(v0 + 1243);
        v84 = *(v0 + 4144);
        v85 = *(v0 + 4136);
        v86 = *(v0 + 4128);
        v87 = *(v0 + 4080);
        sub_1D725894C();
        v88 = sub_1D725893C();
        v244 = v89;
        v247 = v88;
        *(v0 + 4824) = v88;
        *(v0 + 4832) = v89;
        (*(v85 + 8))(v84, v86);
        v90 = type metadata accessor for DebugFormatWorkspace(0);
        v91 = (v87 + *(v90 + 20));
        v93 = *v91;
        v92 = v91[1];
        v95 = *(v91 + 2);
        v94 = *(v91 + 3);
        v96 = *(v91 + 1);
        *(v0 + 3088) = *v91;
        *(v0 + 3104) = v96;
        *(v0 + 3120) = v95;
        *(v0 + 3136) = v94;
        v97 = *(v91 + 175);
        v98 = *(v91 + 10);
        v99 = *(v91 + 8);
        *(v0 + 3232) = *(v91 + 9);
        *(v0 + 3248) = v98;
        *(v0 + 3263) = v97;
        *(v0 + 3216) = v99;
        v100 = *(v91 + 7);
        v101 = *(v91 + 4);
        v102 = *(v91 + 5);
        *(v0 + 3184) = *(v91 + 6);
        *(v0 + 3200) = v100;
        *(v0 + 3152) = v101;
        *(v0 + 3168) = v102;
        v103 = *(v87 + *(v90 + 32));
        v104 = *v91;
        v105 = *(v91 + 1);
        v106 = *(v91 + 3);
        *(v0 + 496) = *(v91 + 2);
        *(v0 + 512) = v106;
        *(v0 + 464) = v104;
        *(v0 + 480) = v105;
        v107 = *(v91 + 4);
        v108 = *(v91 + 5);
        v109 = *(v91 + 7);
        *(v0 + 560) = *(v91 + 6);
        *(v0 + 576) = v109;
        *(v0 + 528) = v107;
        *(v0 + 544) = v108;
        v110 = *(v91 + 8);
        v111 = *(v91 + 9);
        v112 = *(v91 + 10);
        *(v0 + 639) = *(v91 + 175);
        *(v0 + 608) = v111;
        *(v0 + 624) = v112;
        *(v0 + 592) = v110;
        *(v0 + 448) = v93;
        *(v0 + 456) = v92;
        *(v0 + 643) = v222;
        *(v0 + 644) = v225;
        *(v0 + 648) = v103;
        *(v0 + 656) = v48;
        *(v0 + 3816) = 0;
        *(v0 + 3824) = 0xE000000000000000;

        sub_1D5ECF1C0(v0 + 3088, v0 + 880);

        sub_1D7263D4C();
        *(v0 + 4064) = sub_1D7259CCC();
        v113 = sub_1D72644BC();
        v115 = v114;

        *(v0 + 3832) = v113;
        *(v0 + 3840) = v115;
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v233, v239);
        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        v116 = sub_1D71D6228();
        MEMORY[0x1DA6F9910](v116);

        MEMORY[0x1DA6F9910](95, 0xE100000000000000);
        MEMORY[0x1DA6F9910](v247, v244);
        MEMORY[0x1DA6F9910](0x702E746867696C5FLL, 0xEA0000000000676ELL);
        v117 = sub_1D726210C();
        v119 = v118;

        *(v0 + 4840) = v117;
        *(v0 + 4848) = v119;
        sub_1D725849C();
        v120 = *(v0 + 624);
        *(v0 + 824) = *(v0 + 608);
        *(v0 + 840) = v120;
        *(v0 + 856) = *(v0 + 640);
        *(v0 + 872) = *(v0 + 656);
        v121 = *(v0 + 560);
        *(v0 + 760) = *(v0 + 544);
        *(v0 + 776) = v121;
        v122 = *(v0 + 592);
        *(v0 + 792) = *(v0 + 576);
        *(v0 + 808) = v122;
        v123 = *(v0 + 496);
        *(v0 + 696) = *(v0 + 480);
        *(v0 + 712) = v123;
        v124 = *(v0 + 528);
        *(v0 + 728) = *(v0 + 512);
        *(v0 + 744) = v124;
        v125 = *(v0 + 464);
        *(v0 + 664) = *v2;
        *(v0 + 680) = v125;
        v126 = swift_task_alloc();
        *(v0 + 4856) = v126;
        *v126 = v0;
        v126[1] = sub_1D678472C;
        v127 = *(v0 + 4344);
        v128 = *(v0 + 4264);
        v129 = *(v0 + 4208);
        v130 = *(v0 + 4104);

        return sub_1D678BDFC(v0 + 664, v130, v128, v129, v127);
      }

      v12 = *(v0 + 4808);
      v49 = *(v0 + 4688);

      v2 = v49;

      sub_1D6E1B254(v12);
      v9 = v50;

      LOBYTE(v12) = *(v0 + 5008);
      v10 = *v1;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_16:
        v52 = *(v2 + 2);
        v51 = *(v2 + 3);
        v250 = v9;
        v246 = v12;
        v253 = v10;
        if (v52 >= v51 >> 1)
        {
          v257 = sub_1D699486C((v51 > 1), v52 + 1, 1, v2);
        }

        else
        {
          v257 = v2;
        }

        v235 = *(v0 + 4784);
        v237 = *(v0 + 4792);
        v231 = *(v0 + 4776);
        v241 = *(v0 + 4656);
        v224 = *(v0 + 4264);
        v227 = *(v0 + 4768);
        v53 = *(v0 + 4256);
        v54 = *(v0 + 4248);
        v55 = *(v0 + 4240);
        v56 = *(v0 + 4208);
        v57 = *(v0 + 4200);
        v58 = *(v0 + 4192);
        v59 = *(v0 + 4184);

        v60 = *(v58 + 8);
        v60(v57, v59);
        v61 = *(v54 + 8);
        v61(v53, v55);
        v60(v56, v59);
        v61(v224, v55);
        *(v257 + 2) = v52 + 1;
        v62 = &v257[48 * v52];
        *(v62 + 4) = v227;
        *(v62 + 5) = v231;
        *(v62 + 6) = v235;
        *(v62 + 7) = v237;
        v62[64] = v246;
        v62[65] = v253;
        *(v62 + 9) = v250;

        if (v241)
        {
          v63 = *(v0 + 4672);
          v64 = *(v0 + 4656);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = *(v0 + 4448);
          v254 = v63;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v66 = sub_1D69949A4(0, *(v66 + 2) + 1, 1, v66);
          }

          v68 = *(v66 + 2);
          v67 = *(v66 + 3);
          v251 = v64;
          if (v68 >= v67 >> 1)
          {
            v66 = sub_1D69949A4((v67 > 1), v68 + 1, 1, v66);
          }

          v238 = *(v0 + 4656);
          v69 = *(v0 + 4648);
          v228 = *(v0 + 4664);
          v221 = *(v0 + 4416);
          v242 = *(v0 + 1060);
          v70 = *(v0 + 4408);
          v71 = *(v0 + 4384);
          v232 = *(v0 + 4680);
          v236 = *(v0 + 4376);
          v72 = *(v0 + 4360);
          v73 = *(v0 + 4296);
          v74 = *(*(v0 + 4304) + 8);
          v74(*(v0 + 4352), v73);
          v74(v72, v73);
          v221(v70, v71);
          *(v66 + 2) = v68 + 1;
          v75 = &v66[48 * v68];
          *(v75 + 4) = v69;
          *(v75 + 5) = v251;
          *(v75 + 6) = v228;
          *(v75 + 7) = v254;
          *(v75 + 8) = v232;
          *(v75 + 9) = v257;
          sub_1D678E758(v69, v238);
          *(v236 + v242) = v66;
        }

        else
        {
          v131 = *(v0 + 4416);
          v132 = *(v0 + 4408);
          v133 = *(v0 + 4384);
          v134 = *(v0 + 4360);
          v135 = *(v0 + 4296);
          v136 = *(*(v0 + 4304) + 8);
          v136(*(v0 + 4352), v135);
          v136(v134, v135);
          v131(v132, v133);
        }

        v137 = *(v0 + 4120);
        sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
        v138 = v137;
        goto LABEL_47;
      }
    }

    v2 = sub_1D699486C(0, *(v2 + 2) + 1, 1, v2);
    goto LABEL_16;
  }

  v14 = *(v0 + 4688);

  sub_1D6E1B254(v12);
  v16 = v15;

  v243 = *(v0 + 5008);
  v240 = *v1;

  v245 = v16;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D699486C(0, *(v14 + 2) + 1, 1, v14);
  }

  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  v256 = v13;
  if (v18 >= v17 >> 1)
  {
    v249 = sub_1D699486C((v17 > 1), v18 + 1, 1, v14);
  }

  else
  {
    v249 = v14;
  }

  v229 = *(v0 + 4784);
  v230 = *(v0 + 4792);
  v220 = *(v0 + 4768);
  v223 = *(v0 + 4776);
  v19 = *(v0 + 4560);
  v234 = *(v0 + 4472);
  v219 = *(v0 + 4264);
  v20 = *(v0 + 4256);
  v21 = *(v0 + 4248);
  v22 = *(v0 + 4240);
  v23 = *(v0 + 4208);
  v24 = *(v0 + 4200);
  v25 = *(v0 + 4192);
  v26 = *(v0 + 4184);

  v226 = v19 + 1;
  v27 = *(v25 + 8);
  v27(v24, v26);
  v28 = *(v21 + 8);
  v28(v20, v22);
  v27(v23, v26);
  v28(v219, v22);
  v29 = v249;
  *(v249 + 2) = v18 + 1;
  v30 = &v249[48 * v18];
  *(v30 + 4) = v220;
  *(v30 + 5) = v223;
  *(v30 + 6) = v229;
  *(v30 + 7) = v230;
  v30[64] = v243;
  v30[65] = v240;
  *(v30 + 9) = v245;

  if (v226 != v234)
  {
    v76 = *(v0 + 4680);
    v32 = v0 + 1059;
    v77 = *(v0 + 4664);
    v78 = *(v0 + 4648);
    v79 = *(v0 + 4560) + 1;
    v80 = v256;
LABEL_25:
    *(v0 + 4560) = v79;
    *(v0 + 4552) = v29;
    *(v0 + 4544) = v76;
    *(v0 + 4528) = v77;
    *(v0 + 4512) = v78;
    *(v0 + 4504) = v80;
    v81 = *(v0 + 4096) + 24 * v79;
    *(v0 + 1612) = *(v81 + 32);
    *(v0 + 4568) = *(v81 + 40);
    *(v32 + 554) = *(v81 + 48);
    *(v32 + 555) = *(v81 + 49);
    *(v0 + 4576) = sub_1D72628FC();
    v83 = sub_1D726285C();

    return MEMORY[0x1EEE6DFA0](sub_1D6781138, v83, v82);
  }

  v31 = *(v0 + 4656);

  v32 = v0 + 1059;
  if (v31)
  {
    v33 = *(v0 + 4672);
    v34 = *(v0 + 4656);

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v0 + 4448);
    if ((v35 & 1) == 0)
    {
      v36 = sub_1D69949A4(0, *(v36 + 2) + 1, 1, *(v0 + 4448));
    }

    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_1D69949A4((v37 > 1), v38 + 1, 1, v36);
    }

    v39 = *(v0 + 4680);
    v40 = *(v0 + 4664);
    v41 = *(v0 + 4656);
    v42 = *(v0 + 4648);
    v43 = *(v0 + 1060);
    v44 = *(v0 + 4376);
    *(v36 + 2) = v38 + 1;
    v45 = &v36[48 * v38];
    *(v45 + 4) = v42;
    *(v45 + 5) = v34;
    *(v45 + 6) = v40;
    *(v45 + 7) = v33;
    *(v45 + 8) = v39;
    *(v45 + 9) = v249;
    sub_1D678E758(v42, v41);
    *(v44 + v43) = v36;
  }

  else
  {
    v36 = *(v0 + 4448);
  }

  v139 = *(v0 + 4440) + 1;
  if (v139 == *(v0 + 4432))
  {
    goto LABEL_35;
  }

  *(v0 + 4448) = v36;
  *(v0 + 4440) = v139;
  v149 = *(v0 + 4088) + 2 * v139;
  v150 = *(v149 + 32);
  *(v0 + 1243) = v150;
  v151 = *(v149 + 33);
  *(v0 + 1427) = v151;
  *(v0 + 3944) = sub_1D6E23ADC(v150);
  *(v0 + 3952) = v152;
  MEMORY[0x1DA6F9910](95, 0xE100000000000000);
  if (v151)
  {
    v153 = 0x70616373646E616CLL;
  }

  else
  {
    v153 = 0x7469617274726F70;
  }

  if (v151)
  {
    v154 = 0xE900000000000065;
  }

  else
  {
    v154 = 0xE800000000000000;
  }

  MEMORY[0x1DA6F9910](v153, v154);

  *(v0 + 4456) = *(v0 + 3944);
  *(v0 + 4464) = *(v0 + 3952);
  sub_1D72629AC();
  if (v256)
  {
    v155 = *(v0 + 4416);
    v156 = *(v0 + 4408);
    v157 = *(v0 + 4384);
    v258 = *(v0 + 4376);
    v158 = *(v0 + 4360);
    v159 = *(v0 + 4352);
    v160 = *(v0 + 4304);
    v161 = *(v0 + 4296);
    v255 = *(v0 + 4120);

    v162 = *(v160 + 8);
    v162(v159, v161);
    v162(v158, v161);
    v155(v156, v157);
    goto LABEL_46;
  }

  v166 = *(*(v0 + 4096) + 16);
  *(v0 + 4472) = v166;
  if (v166)
  {
LABEL_51:
    v167 = *(v0 + 4120);
    *(v0 + 4480) = sub_1D726290C();
    *(v0 + 1611) = sub_1D6F79CFC(v150);
    v168 = objc_opt_self();
    v80 = 0;
    v76 = 0;
    v29 = 0;
    v79 = 0;
    *(v0 + 4488) = v168;
    *(v0 + 4496) = *(v167 + 16);
    v78 = 0uLL;
    v77 = 0uLL;
    goto LABEL_25;
  }

  v205 = *(v0 + 4440) + 1;
  if (v205 != *(v0 + 4432))
  {
    while (1)
    {
      *(v0 + 4448) = v36;
      *(v0 + 4440) = v205;
      v206 = *(v0 + 4088) + 2 * v205;
      v150 = *(v206 + 32);
      *(v0 + 1243) = v150;
      v207 = *(v206 + 33);
      *(v0 + 1427) = v207;
      *(v0 + 3944) = sub_1D6E23ADC(v150);
      *(v0 + 3952) = v208;
      MEMORY[0x1DA6F9910](95, 0xE100000000000000);
      v209 = v207 ? 0x70616373646E616CLL : 0x7469617274726F70;
      v210 = v207 ? 0xE900000000000065 : 0xE800000000000000;
      MEMORY[0x1DA6F9910](v209, v210);

      *(v0 + 4456) = *(v0 + 3944);
      *(v0 + 4464) = *(v0 + 3952);
      sub_1D72629AC();
      v211 = *(*(v0 + 4096) + 16);
      *(v0 + 4472) = v211;
      if (v211)
      {
        goto LABEL_51;
      }

      v256 = 0;
      v205 = *(v0 + 4440) + 1;
      if (v205 == *(v0 + 4432))
      {
        goto LABEL_35;
      }
    }
  }

  v256 = 0;
LABEL_35:

  sub_1D725849C();
  sub_1D678ED98(&qword_1EC88B4F0, type metadata accessor for DebugFormatWorkspaceSnapshotManifest, &unk_1D73468C0);
  v140 = sub_1D72578BC();
  *(v0 + 4936) = v140;
  *(v0 + 4944) = v141;
  if (v256)
  {
    v142 = *(v0 + 4416);
    v143 = *(v0 + 4408);
    v144 = *(v0 + 4384);
    v258 = *(v0 + 4376);
    v145 = *(v0 + 4360);
    v146 = *(v0 + 4352);
    v147 = *(v0 + 4296);
    v255 = *(v0 + 4120);
    v148 = *(*(v0 + 4304) + 8);
    v148(*(v0 + 4328), v147);
    v148(v146, v147);
    v148(v145, v147);
    v142(v143, v144);
LABEL_46:
    sub_1D678EB84(v258, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
    v138 = v255;
LABEL_47:
    sub_1D678ADBC(v138);

    v165 = *(v0 + 8);

    return v165();
  }

  v163 = v140;
  v164 = v141;
  sub_1D725869C();
  v259 = v164;
  v169 = *(v0 + 4144);
  v248 = *(v0 + 4136);
  v252 = *(v0 + 4128);
  v170 = *(v0 + 4080);
  sub_1D725849C();
  v171 = (v170 + *(type metadata accessor for DebugFormatWorkspace(0) + 20));
  v172 = v171[8];
  v173 = v171[9];
  v174 = v171[10];
  *(v0 + 2895) = *(v171 + 175);
  *(v0 + 2864) = v173;
  *(v0 + 2880) = v174;
  *(v0 + 2848) = v172;
  v175 = v171[4];
  v176 = v171[5];
  v177 = v171[7];
  *(v0 + 2816) = v171[6];
  *(v0 + 2832) = v177;
  *(v0 + 2784) = v175;
  *(v0 + 2800) = v176;
  v178 = *v171;
  v179 = v171[1];
  v180 = v171[3];
  *(v0 + 2752) = v171[2];
  *(v0 + 2768) = v180;
  *(v0 + 2720) = v178;
  *(v0 + 2736) = v179;
  v182 = v171[2];
  v181 = v171[3];
  *(v0 + 3456) = v171[1];
  *(v0 + 3472) = v182;
  *(v0 + 3488) = v181;
  v183 = v171[7];
  v185 = v171[4];
  v184 = v171[5];
  *(v0 + 3536) = v171[6];
  *(v0 + 3552) = v183;
  *(v0 + 3504) = v185;
  *(v0 + 3520) = v184;
  v187 = v171[9];
  v186 = v171[10];
  v188 = v171[8];
  *(v0 + 3615) = *(v171 + 175);
  *(v0 + 3584) = v187;
  *(v0 + 3600) = v186;
  *(v0 + 3568) = v188;
  sub_1D5ECF1C0(v0 + 2720, v0 + 2536);
  sub_1D725894C();
  v189 = sub_1D725893C();
  v191 = v190;
  *(v0 + 4952) = v189;
  *(v0 + 4960) = v190;
  v192 = v169;
  v193 = v189;
  (*(v248 + 8))(v192, v252);

  *(v0 + 2904) = v193;
  *(v0 + 2912) = v191;
  v194 = *(v0 + 3472);
  *(v0 + 2920) = *(v0 + 3456);
  *(v0 + 2936) = v194;
  v195 = *(v0 + 3536);
  *(v0 + 2984) = *(v0 + 3520);
  *(v0 + 3000) = v195;
  v196 = *(v0 + 3504);
  *(v0 + 2952) = *(v0 + 3488);
  *(v0 + 2968) = v196;
  v197 = *(v0 + 3568);
  *(v0 + 3016) = *(v0 + 3552);
  *(v0 + 3032) = v197;
  v198 = *(v0 + 3600);
  *(v0 + 3048) = *(v0 + 3584);
  *(v0 + 3064) = v198;
  *(v0 + 3079) = *(v0 + 3615);
  v199 = *(v0 + 3048);
  *(v0 + 2480) = *(v0 + 3032);
  *(v0 + 2496) = v199;
  *(v0 + 2512) = *(v0 + 3064);
  *(v0 + 2527) = *(v0 + 3079);
  v200 = *(v0 + 2984);
  *(v0 + 2416) = *(v0 + 2968);
  *(v0 + 2432) = v200;
  v201 = *(v0 + 3016);
  *(v0 + 2448) = *(v0 + 3000);
  *(v0 + 2464) = v201;
  v202 = *(v0 + 2920);
  *(v0 + 2352) = *(v0 + 2904);
  *(v0 + 2368) = v202;
  v203 = *(v0 + 2952);
  *(v0 + 2384) = *(v0 + 2936);
  *(v0 + 2400) = v203;
  sub_1D5ECF1C0(v0 + 2904, v0 + 2168);
  sub_1D5E3303C();
  *(v0 + 4968) = sub_1D72578BC();
  *(v0 + 4976) = v204;
  v212 = *(v0 + 2496);
  *(v0 + 1744) = *(v0 + 2480);
  *(v0 + 1760) = v212;
  *(v0 + 1776) = *(v0 + 2512);
  *(v0 + 1791) = *(v0 + 2527);
  v213 = *(v0 + 2432);
  *(v0 + 1680) = *(v0 + 2416);
  *(v0 + 1696) = v213;
  v214 = *(v0 + 2464);
  *(v0 + 1712) = *(v0 + 2448);
  *(v0 + 1728) = v214;
  v215 = *(v0 + 2368);
  *(v0 + 1616) = *(v0 + 2352);
  *(v0 + 1632) = v215;
  v216 = *(v0 + 2400);
  *(v0 + 1648) = *(v0 + 2384);
  *(v0 + 1664) = v216;
  sub_1D5ECF21C(v0 + 1616);
  sub_1D725869C();
  v217 = swift_task_alloc();
  *(v0 + 4984) = v217;
  *v217 = v0;
  v217[1] = sub_1D67893C8;

  return sub_1D678CD4C(v163, v259);
}

uint64_t sub_1D67893C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 4992) = a1;
  *(v3 + 5000) = v1;

  if (v1)
  {
    v4 = sub_1D678AAB0;
  }

  else
  {
    v4 = sub_1D678950C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D678950C()
{
  v1 = *(v0 + 4992);
  v67 = v1[2];
  v63 = (v0 + 3456);
  if (v67)
  {
    v2 = (*(v0 + 4304) + 8);
    v3 = *(v0 + 5000);
    v4 = v1[6];
    v5 = v1[7];

    sub_1D725849C();

    v6 = sub_1D6011D6C(v4, v5);
    v8 = v7;

    sub_1D725869C();
    v66 = v2;
    if (v3)
    {
      v9 = *(v0 + 4976);
      v10 = *(v0 + 4968);
      v64 = *(v0 + 4960);
      v62 = *(v0 + 4952);
      v55 = *(v0 + 4944);
      v11 = *(v0 + 4936);
      v12 = *(v0 + 4416);
      v60 = *(v0 + 4408);
      v59 = *(v0 + 4384);
      v61 = *(v0 + 4376);
      v57 = *(v0 + 4352);
      v58 = *(v0 + 4360);
      v56 = *(v0 + 4328);
      v54 = *(v0 + 4320);
      v13 = *(v0 + 4312);
      v14 = *(v0 + 4296);
      v68 = *(v0 + 4120);

      sub_1D5B952F8(v6, v8);
      sub_1D5B952F8(v10, v9);
      sub_1D5B952F8(v11, v55);
      v15 = *v66;
      (*v66)(v13, v14);
      v15(v54, v14);
      v15(v56, v14);
      v15(v57, v14);
      v15(v58, v14);
      v12(v60, v59);
      sub_1D678EB84(v61, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
      *(v0 + 1064) = v62;
      *(v0 + 1072) = v64;
      v16 = *(v0 + 3600);
      *(v0 + 1208) = *(v0 + 3584);
      *(v0 + 1224) = v16;
      *(v0 + 1239) = *(v0 + 3615);
      v17 = *(v0 + 3536);
      *(v0 + 1144) = *(v0 + 3520);
      *(v0 + 1160) = v17;
      v18 = *(v0 + 3568);
      *(v0 + 1176) = *(v0 + 3552);
      *(v0 + 1192) = v18;
      v19 = *(v0 + 3472);
      *(v0 + 1080) = *v63;
      *(v0 + 1096) = v19;
      v20 = *(v0 + 3504);
      *(v0 + 1112) = *(v0 + 3488);
      *(v0 + 1128) = v20;
      sub_1D5ECF21C(v0 + 1064);
      sub_1D678ADBC(v68);

      v21 = *(v0 + 8);
      goto LABEL_9;
    }

    v65 = *v2;
    (*v2)(*(v0 + 4312), *(v0 + 4296));
    sub_1D5B952F8(v6, v8);
    if (v67 != 1)
    {
      v22 = v1 + 11;
      v23 = 1;
      do
      {
        if (v23 >= v1[2])
        {
          __break(1u);
        }

        v24 = *(v22 - 1);
        v25 = *v22;

        sub_1D725849C();

        v26 = sub_1D6011D6C(v24, v25);
        v28 = v27;

        sub_1D725869C();
        ++v23;
        v65(*(v0 + 4312), *(v0 + 4296));
        sub_1D5B952F8(v26, v28);
        v22 += 4;
      }

      while (v67 != v23);
    }
  }

  v52 = *(v0 + 4952);
  v53 = *(v0 + 4960);
  v46 = *(v0 + 4976);
  v47 = *(v0 + 4944);
  v44 = *(v0 + 4968);
  v45 = *(v0 + 4936);
  v51 = *(v0 + 4416);
  v49 = *(v0 + 4384);
  v50 = *(v0 + 4408);
  v29 = *(v0 + 4376);
  v30 = *(v0 + 4360);
  v48 = *(v0 + 4352);
  v31 = *(v0 + 4328);
  v32 = *(v0 + 4320);
  v33 = *(v0 + 4304);
  v34 = *(v0 + 4296);
  v35 = *(v0 + 4120);
  v36 = *(v0 + 4072);

  sub_1D678D40C(v29, v30, v36);
  sub_1D5B952F8(v44, v46);
  sub_1D5B952F8(v45, v47);
  v37 = *(v33 + 8);
  v37(v32, v34);
  v37(v31, v34);
  v37(v48, v34);
  v37(v30, v34);
  v51(v50, v49);
  sub_1D678EB84(v29, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  *(v0 + 3272) = v52;
  *(v0 + 3280) = v53;
  v38 = *(v0 + 3600);
  *(v0 + 3416) = *(v0 + 3584);
  *(v0 + 3432) = v38;
  *(v0 + 3447) = *(v0 + 3615);
  v39 = *(v0 + 3536);
  *(v0 + 3352) = *(v0 + 3520);
  *(v0 + 3368) = v39;
  v40 = *(v0 + 3568);
  *(v0 + 3384) = *(v0 + 3552);
  *(v0 + 3400) = v40;
  v41 = *(v0 + 3472);
  *(v0 + 3288) = *v63;
  *(v0 + 3304) = v41;
  v42 = *(v0 + 3504);
  *(v0 + 3320) = *(v0 + 3488);
  *(v0 + 3336) = v42;
  sub_1D5ECF21C(v0 + 3272);
  sub_1D678ADBC(v35);

  v21 = *(v0 + 8);
LABEL_9:

  return v21();
}

uint64_t sub_1D6789C4C()
{
  v33 = *(v0 + 4688);
  v1 = *(v0 + 4672);
  v2 = *(v0 + 4656);
  v31 = *(v0 + 4264);
  v3 = *(v0 + 4256);
  v4 = *(v0 + 4248);
  v5 = *(v0 + 4240);
  v29 = *(v0 + 4208);
  v6 = *(v0 + 4184);
  v7 = *(*(v0 + 4192) + 8);
  v7(*(v0 + 4200), v6);
  v8 = *(v4 + 8);
  v8(v3, v5);
  v7(v29, v6);
  v8(v31, v5);
  v30 = v2;

  v32 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + 4448);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1D69949A4(0, *(v10 + 2) + 1, 1, *(v0 + 4448));
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1D69949A4((v11 > 1), v12 + 1, 1, v10);
  }

  v13 = *(v0 + 4664);
  v14 = *(v0 + 4648);
  v24 = *(v0 + 4680);
  v27 = *(v0 + 1060);
  v22 = *(v0 + 4408);
  v23 = *(v0 + 4416);
  v15 = *(v0 + 4384);
  v25 = *(v0 + 4376);
  v26 = *(v0 + 4656);
  v16 = *(v0 + 4360);
  v17 = *(v0 + 4296);
  v28 = *(v0 + 4120);
  v18 = *(*(v0 + 4304) + 8);
  v18(*(v0 + 4352), v17);
  v18(v16, v17);
  v23(v22, v15);
  *(v10 + 2) = v12 + 1;
  v19 = &v10[48 * v12];
  *(v19 + 4) = v14;
  *(v19 + 5) = v30;
  *(v19 + 6) = v13;
  *(v19 + 7) = v32;
  *(v19 + 8) = v24;
  *(v19 + 9) = v33;
  sub_1D678E758(v14, v26);
  *(v25 + v27) = v10;
  sub_1D678EB84(v25, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  sub_1D678ADBC(v28);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D678A000()
{
  v1 = *(v0 + 4808);
  v2 = *(v0 + 4688);
  v53 = *(*(v0 + 4304) + 8);
  v53(*(v0 + 4344), *(v0 + 4296));
  sub_1D5F2B134(v0 + 448);
  sub_1D6E1B254(v1);
  v4 = v3;

  v49 = *(v0 + 5008);
  v48 = *(v0 + 1059);

  v51 = v4;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D699486C(0, *(v2 + 2) + 1, 1, v2);
  }

  v6 = *(v2 + 2);
  v5 = *(v2 + 3);
  if (v6 >= v5 >> 1)
  {
    v54 = sub_1D699486C((v5 > 1), v6 + 1, 1, v2);
  }

  else
  {
    v54 = v2;
  }

  v42 = *(v0 + 4784);
  v44 = *(v0 + 4792);
  v38 = *(v0 + 4768);
  v40 = *(v0 + 4776);
  v46 = *(v0 + 4656);
  v37 = *(v0 + 4264);
  v7 = *(v0 + 4256);
  v8 = *(v0 + 4248);
  v9 = *(v0 + 4240);
  v10 = *(v0 + 4208);
  v11 = *(v0 + 4200);
  v12 = *(v0 + 4192);
  v13 = *(v0 + 4184);

  v14 = *(v12 + 8);
  v14(v11, v13);
  v15 = *(v8 + 8);
  v15(v7, v9);
  v14(v10, v13);
  v15(v37, v9);
  *(v54 + 2) = v6 + 1;
  v16 = &v54[48 * v6];
  *(v16 + 4) = v38;
  *(v16 + 5) = v40;
  *(v16 + 6) = v42;
  *(v16 + 7) = v44;
  v16[64] = v49;
  v16[65] = v48;
  *(v16 + 9) = v51;

  if (v46)
  {
    v17 = *(v0 + 4672);
    v50 = *(v0 + 4656);

    v52 = v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v0 + 4448);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1D69949A4(0, *(v19 + 2) + 1, 1, *(v0 + 4448));
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1D69949A4((v20 > 1), v21 + 1, 1, v19);
    }

    v39 = *(v0 + 4664);
    v41 = *(v0 + 4680);
    v22 = *(v0 + 4648);
    v36 = *(v0 + 4416);
    v47 = *(v0 + 1060);
    v23 = *(v0 + 4408);
    v24 = *(v0 + 4384);
    v43 = *(v0 + 4376);
    v45 = *(v0 + 4656);
    v25 = *(v0 + 4360);
    v26 = *(v0 + 4296);
    v53(*(v0 + 4352), v26);
    v53(v25, v26);
    v36(v23, v24);
    *(v19 + 2) = v21 + 1;
    v27 = &v19[48 * v21];
    *(v27 + 4) = v22;
    *(v27 + 5) = v50;
    *(v27 + 6) = v39;
    *(v27 + 7) = v52;
    *(v27 + 8) = v41;
    *(v27 + 9) = v54;
    sub_1D678E758(v22, v45);
    *(v43 + v47) = v19;
  }

  else
  {
    v28 = *(v0 + 4416);
    v29 = *(v0 + 4408);
    v30 = *(v0 + 4384);
    v31 = *(v0 + 4360);
    v32 = *(v0 + 4296);
    v53(*(v0 + 4352), v32);
    v53(v31, v32);
    v28(v29, v30);
  }

  v33 = *(v0 + 4120);
  sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  sub_1D678ADBC(v33);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1D678A544()
{
  v1 = *(v0 + 4808);
  v2 = *(v0 + 4688);
  v3 = *(v0 + 4344);
  v4 = *(v0 + 4336);
  v5 = *(v0 + 4304);
  v6 = *(v0 + 4296);

  v7 = *(v5 + 8);
  v7(v4, v6);
  v58 = v7;
  v7(v3, v6);
  sub_1D5F2B134(v0 + 448);
  sub_1D6E1B254(v1);
  v9 = v8;

  v54 = *(v0 + 5008);
  v53 = *(v0 + 1059);

  v56 = v9;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D699486C(0, *(v2 + 2) + 1, 1, v2);
  }

  v11 = *(v2 + 2);
  v10 = *(v2 + 3);
  if (v11 >= v10 >> 1)
  {
    v59 = sub_1D699486C((v10 > 1), v11 + 1, 1, v2);
  }

  else
  {
    v59 = v2;
  }

  v47 = *(v0 + 4784);
  v49 = *(v0 + 4792);
  v43 = *(v0 + 4768);
  v45 = *(v0 + 4776);
  v51 = *(v0 + 4656);
  v42 = *(v0 + 4264);
  v12 = *(v0 + 4256);
  v13 = *(v0 + 4248);
  v14 = *(v0 + 4240);
  v15 = *(v0 + 4208);
  v16 = *(v0 + 4200);
  v17 = *(v0 + 4192);
  v18 = *(v0 + 4184);

  v19 = *(v17 + 8);
  v19(v16, v18);
  v20 = *(v13 + 8);
  v20(v12, v14);
  v19(v15, v18);
  v20(v42, v14);
  *(v59 + 2) = v11 + 1;
  v21 = &v59[48 * v11];
  *(v21 + 4) = v43;
  *(v21 + 5) = v45;
  *(v21 + 6) = v47;
  *(v21 + 7) = v49;
  v21[64] = v54;
  v21[65] = v53;
  *(v21 + 9) = v56;

  if (v51)
  {
    v22 = *(v0 + 4672);
    v55 = *(v0 + 4656);

    v57 = v22;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v0 + 4448);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1D69949A4(0, *(v24 + 2) + 1, 1, *(v0 + 4448));
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1D69949A4((v25 > 1), v26 + 1, 1, v24);
    }

    v44 = *(v0 + 4664);
    v46 = *(v0 + 4680);
    v27 = *(v0 + 4648);
    v41 = *(v0 + 4416);
    v52 = *(v0 + 1060);
    v28 = *(v0 + 4408);
    v29 = *(v0 + 4384);
    v48 = *(v0 + 4376);
    v50 = *(v0 + 4656);
    v30 = *(v0 + 4360);
    v31 = *(v0 + 4296);
    v58(*(v0 + 4352), v31);
    v58(v30, v31);
    v41(v28, v29);
    *(v24 + 2) = v26 + 1;
    v32 = &v24[48 * v26];
    *(v32 + 4) = v27;
    *(v32 + 5) = v55;
    *(v32 + 6) = v44;
    *(v32 + 7) = v57;
    *(v32 + 8) = v46;
    *(v32 + 9) = v59;
    sub_1D678E758(v27, v50);
    *(v48 + v52) = v24;
  }

  else
  {
    v33 = *(v0 + 4416);
    v34 = *(v0 + 4408);
    v35 = *(v0 + 4384);
    v36 = *(v0 + 4360);
    v37 = *(v0 + 4296);
    v58(*(v0 + 4352), v37);
    v58(v36, v37);
    v33(v34, v35);
  }

  v38 = *(v0 + 4120);
  sub_1D678EB84(*(v0 + 4376), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  sub_1D678ADBC(v38);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1D678AAB0()
{
  v17 = *(v0 + 4960);
  v1 = *(v0 + 4944);
  v2 = *(v0 + 4936);
  v14 = *(v0 + 4416);
  v13 = *(v0 + 4408);
  v3 = *(v0 + 4384);
  v15 = *(v0 + 4376);
  v16 = *(v0 + 4952);
  v4 = *(v0 + 4360);
  v5 = *(v0 + 4352);
  v6 = *(v0 + 4328);
  v7 = *(v0 + 4320);
  v8 = *(v0 + 4304);
  v9 = *(v0 + 4296);
  v18 = *(v0 + 4120);
  sub_1D5B952F8(*(v0 + 4968), *(v0 + 4976));
  sub_1D5B952F8(v2, v1);
  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v6, v9);
  v10(v5, v9);
  v10(v4, v9);
  v14(v13, v3);
  sub_1D678EB84(v15, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  *(v0 + 1248) = v16;
  *(v0 + 1256) = v17;
  *(v0 + 1376) = *(v0 + 3568);
  *(v0 + 1392) = *(v0 + 3584);
  *(v0 + 1408) = *(v0 + 3600);
  *(v0 + 1423) = *(v0 + 3615);
  *(v0 + 1312) = *(v0 + 3504);
  *(v0 + 1328) = *(v0 + 3520);
  *(v0 + 1344) = *(v0 + 3536);
  *(v0 + 1360) = *(v0 + 3552);
  *(v0 + 1264) = *(v0 + 3456);
  *(v0 + 1280) = *(v0 + 3472);
  *(v0 + 1296) = *(v0 + 3488);
  sub_1D5ECF21C(v0 + 1248);
  sub_1D678ADBC(v18);

  v11 = *(v0 + 8);

  return v11();
}

double sub_1D678ADBC(uint64_t a1)
{
  v1 = *(*(a1 + 16) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;

  sub_1D725B32C();

  sub_1D725B32C();

  return result;
}

uint64_t sub_1D678AE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D678AEA4, 0, 0);
}

uint64_t sub_1D678AEA4(uint64_t a1)
{
  v2 = v1[2];
  v3 = sub_1D7259CCC();
  if (*(*v2 + 16) && (sub_1D5C5E034(v3), (v4 & 1) != 0))
  {
    v11 = v1[1];

    return v11(v5);
  }

  else
  {
    v7 = v1[5];
    v8 = *(v7 + *(type metadata accessor for DebugFormatWorkspace(0) + 36));
    v9 = sub_1D7259CCC();
    v10 = swift_task_alloc();
    v1[6] = v10;
    *v10 = v1;
    v10[1] = sub_1D678AFCC;

    return sub_1D678B1D4(v8, v9);
  }
}

uint64_t sub_1D678AFCC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D678B118, 0, 0);
  }
}

uint64_t sub_1D678B118(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[2];
  v4 = sub_1D7259CCC();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  *v3 = 0x8000000000000000;
  sub_1D6D7B168(v2, v4, isUniquelyReferenced_nonNull_native);
  *v3 = v9;
  v6 = v1[7];
  v7 = v1[1];

  return v7(v6);
}

uint64_t sub_1D678B1D4(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  sub_1D5C8F9E0(0);
  v3[47] = *(v4 - 8);
  v3[48] = swift_task_alloc();
  v5 = type metadata accessor for DebugFormatWorkspaceGroup(0);
  v3[49] = v5;
  v3[50] = *(v5 - 8);
  v3[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D678B2F0, 0, 0);
}

uint64_t sub_1D678B2F0()
{
  v1 = *(v0 + 352);
  v2 = *(v1 + 16);
  *(v0 + 416) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 400);
    v5 = *(v4 + 80);
    *(v0 + 488) = v5;
    v6 = *(v4 + 72);
    *(v0 + 424) = v6;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 432) = v3;
      *(v0 + 440) = v7;
      v8 = *(v0 + 408);
      v9 = *(v0 + 392);
      sub_1D678ECFC(v1 + ((v5 + 32) & ~v5) + v6 * v3, v8, type metadata accessor for DebugFormatWorkspaceGroup);
      v10 = *(v8 + *(v9 + 20));
      *(v0 + 448) = v10;
      if (v10)
      {
        v11 = *(v10 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
        swift_beginAccess();
        v12 = *(v11 + 8);
        if (*(v12 + 16))
        {
          v13 = sub_1D5C5E034(*(v0 + 360));
          if (v14)
          {
            break;
          }
        }
      }

      v15 = *(v0 + 416);
      v16 = *(v0 + 432) + 1;
      sub_1D678EB84(*(v0 + 408), type metadata accessor for DebugFormatWorkspaceGroup);
      if (v16 == v15)
      {
        goto LABEL_8;
      }

      v6 = *(v0 + 424);
      v3 = *(v0 + 432) + 1;
      LOBYTE(v5) = *(v0 + 488);
      v1 = *(v0 + 352);
    }

    v21 = *(*(v12 + 56) + 8 * v13);
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = *(v0 + 376);
      *(v0 + 328) = v7;

      sub_1D5D65D3C(0, v22, 0);
      v24 = v21;
      v25 = *(v0 + 328);
      v26 = v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v49 = *(v23 + 72);
      for (i = v22 - 1; ; --i)
      {
        v28 = *(v0 + 384);
        sub_1D678ECFC(v26, v28, sub_1D5C8F9E0);
        *(v0 + 16) = *v28;
        v29 = v28[4];
        v31 = v28[1];
        v30 = v28[2];
        *(v0 + 64) = v28[3];
        *(v0 + 80) = v29;
        *(v0 + 32) = v31;
        *(v0 + 48) = v30;
        v32 = v28[8];
        v34 = v28[5];
        v33 = v28[6];
        *(v0 + 128) = v28[7];
        *(v0 + 144) = v32;
        *(v0 + 96) = v34;
        *(v0 + 112) = v33;
        sub_1D5D65D5C(v0 + 16, v0 + 160);
        sub_1D678EB84(v28, sub_1D5C8F9E0);
        *(v0 + 328) = v25;
        v36 = *(v25 + 16);
        v35 = *(v25 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1D5D65D3C((v35 > 1), v36 + 1, 1);
          v25 = *(v0 + 328);
        }

        *(v25 + 16) = v36 + 1;
        v37 = (v25 + 144 * v36);
        v37[2] = *(v0 + 16);
        v38 = *(v0 + 32);
        v39 = *(v0 + 48);
        v40 = *(v0 + 80);
        v37[5] = *(v0 + 64);
        v37[6] = v40;
        v37[3] = v38;
        v37[4] = v39;
        v41 = *(v0 + 96);
        v42 = *(v0 + 112);
        v43 = *(v0 + 144);
        v37[9] = *(v0 + 128);
        v37[10] = v43;
        v37[7] = v41;
        v37[8] = v42;
        if (!i)
        {
          break;
        }

        v26 += v49;
      }
    }

    else
    {

      v25 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 456) = v25;
    sub_1D725B77C();
    v44 = *(v0 + 336);
    *(v0 + 464) = v44;
    v45 = swift_task_alloc();
    *(v0 + 472) = v45;
    v46 = type metadata accessor for DebugFormatBindingResult(0);
    v47 = sub_1D5BA6EF4();
    *v45 = v0;
    v45[1] = sub_1D678B718;
    v48 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 344, v44, v46, v47, v48);
  }

  else
  {
LABEL_8:
    sub_1D678E090(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
    v18 = v17;

    v19 = *(v0 + 8);

    return v19(v18);
  }
}

uint64_t sub_1D678B718()
{
  *(*v1 + 480) = v0;

  if (v0)
  {

    v2 = sub_1D678BD64;
  }

  else
  {
    v2 = sub_1D678B868;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D678B868()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 456);
  v3 = *(v0 + 408);
  v4 = *(v0 + 344);
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v1;
  sub_1D5ECCD20(sub_1D678ECD8, v5, v2);
  v7 = v6;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 440);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1D69945B8(0, v9[2] + 1, 1, *(v0 + 440));
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1D69945B8((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  v9[v11 + 4] = v7;
  v12 = *(v0 + 416);
  v13 = *(v0 + 432) + 1;
  sub_1D678EB84(*(v0 + 408), type metadata accessor for DebugFormatWorkspaceGroup);
  if (v13 == v12)
  {
LABEL_6:
    sub_1D678E090(v9, MEMORY[0x1E69E7CC0]);
    v15 = v14;

    v16 = *(v0 + 8);

    return v16(v15);
  }

  else
  {
    while (1)
    {
      v20 = *(v0 + 424);
      v21 = *(v0 + 432) + 1;
      *(v0 + 432) = v21;
      *(v0 + 440) = v9;
      v22 = *(v0 + 408);
      v23 = *(v0 + 392);
      sub_1D678ECFC(*(v0 + 352) + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + v20 * v21, v22, type metadata accessor for DebugFormatWorkspaceGroup);
      v24 = *(v22 + *(v23 + 20));
      *(v0 + 448) = v24;
      if (v24)
      {
        v25 = *(v24 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
        swift_beginAccess();
        v26 = *(v25 + 8);
        if (*(v26 + 16))
        {
          v27 = sub_1D5C5E034(*(v0 + 360));
          if (v28)
          {
            break;
          }
        }
      }

      v18 = *(v0 + 416);
      v19 = *(v0 + 432) + 1;
      sub_1D678EB84(*(v0 + 408), type metadata accessor for DebugFormatWorkspaceGroup);
      if (v19 == v18)
      {
        goto LABEL_6;
      }
    }

    v29 = *(*(v26 + 56) + 8 * v27);
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = *(v0 + 376);
      *(v0 + 328) = MEMORY[0x1E69E7CC0];

      sub_1D5D65D3C(0, v30, 0);
      v32 = *(v0 + 328);
      v33 = v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v56 = *(v31 + 72);
      for (i = v30 - 1; ; --i)
      {
        v35 = *(v0 + 384);
        sub_1D678ECFC(v33, v35, sub_1D5C8F9E0);
        *(v0 + 16) = *v35;
        v36 = v35[4];
        v38 = v35[1];
        v37 = v35[2];
        *(v0 + 64) = v35[3];
        *(v0 + 80) = v36;
        *(v0 + 32) = v38;
        *(v0 + 48) = v37;
        v39 = v35[8];
        v41 = v35[5];
        v40 = v35[6];
        *(v0 + 128) = v35[7];
        *(v0 + 144) = v39;
        *(v0 + 96) = v41;
        *(v0 + 112) = v40;
        sub_1D5D65D5C(v0 + 16, v0 + 160);
        sub_1D678EB84(v35, sub_1D5C8F9E0);
        *(v0 + 328) = v32;
        v43 = *(v32 + 16);
        v42 = *(v32 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1D5D65D3C((v42 > 1), v43 + 1, 1);
          v32 = *(v0 + 328);
        }

        *(v32 + 16) = v43 + 1;
        v44 = (v32 + 144 * v43);
        v44[2] = *(v0 + 16);
        v45 = *(v0 + 32);
        v46 = *(v0 + 48);
        v47 = *(v0 + 80);
        v44[5] = *(v0 + 64);
        v44[6] = v47;
        v44[3] = v45;
        v44[4] = v46;
        v48 = *(v0 + 96);
        v49 = *(v0 + 112);
        v50 = *(v0 + 144);
        v44[9] = *(v0 + 128);
        v44[10] = v50;
        v44[7] = v48;
        v44[8] = v49;
        if (!i)
        {
          break;
        }

        v33 += v56;
      }
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 456) = v32;
    sub_1D725B77C();
    v51 = *(v0 + 336);
    *(v0 + 464) = v51;
    v52 = swift_task_alloc();
    *(v0 + 472) = v52;
    v53 = type metadata accessor for DebugFormatBindingResult(0);
    v54 = sub_1D5BA6EF4();
    *v52 = v0;
    v52[1] = sub_1D678B718;
    v55 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 344, v51, v53, v54, v55);
  }
}

uint64_t sub_1D678BD64()
{
  v1 = *(v0 + 408);

  sub_1D678EB84(v1, type metadata accessor for DebugFormatWorkspaceGroup);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D678BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 472) = a5;
  *(v6 + 480) = v5;
  *(v6 + 456) = a3;
  *(v6 + 464) = a4;
  *(v6 + 448) = a2;
  sub_1D678EBEC(0);
  *(v6 + 488) = swift_task_alloc();
  v8 = type metadata accessor for DebugFormatCanvasBindResult(0);
  *(v6 + 496) = v8;
  *(v6 + 504) = *(v8 - 8);
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = type metadata accessor for DebugFormatCanvasBindRequest(0);
  *(v6 + 528) = swift_task_alloc();
  v9 = *(a1 + 176);
  *(v6 + 176) = *(a1 + 160);
  *(v6 + 192) = v9;
  *(v6 + 208) = *(a1 + 192);
  *(v6 + 224) = *(a1 + 208);
  v10 = *(a1 + 112);
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = v10;
  v11 = *(a1 + 144);
  *(v6 + 144) = *(a1 + 128);
  *(v6 + 160) = v11;
  v12 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v12;
  v13 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v13;
  v14 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v14;
  *(v6 + 536) = sub_1D726290C();
  *(v6 + 544) = sub_1D72628FC();
  v16 = sub_1D726285C();
  *(v6 + 552) = v16;
  *(v6 + 560) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D678BFA0, v16, v15);
}

uint64_t sub_1D678BFA0()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 480);
  v4 = *(v0 + 456);
  v5 = *(v0 + 464);
  v6 = v2[5];
  v7 = sub_1D7259F5C();
  (*(*(v7 - 8) + 16))(&v1[v6], v4, v7);
  v8 = v2[6];
  v9 = sub_1D7259CFC();
  (*(*(v9 - 8) + 16))(&v1[v8], v5, v9);
  *v1 = 1;
  v10 = &v1[v2[7]];
  v11 = *(v0 + 176);
  v12 = *(v0 + 192);
  v13 = *(v0 + 208);
  *(v10 + 26) = *(v0 + 224);
  *(v10 + 11) = v12;
  *(v10 + 12) = v13;
  *(v10 + 10) = v11;
  v14 = *(v0 + 112);
  v15 = *(v0 + 128);
  v16 = *(v0 + 160);
  *(v10 + 8) = *(v0 + 144);
  *(v10 + 9) = v16;
  *(v10 + 6) = v14;
  *(v10 + 7) = v15;
  v17 = *(v0 + 48);
  v18 = *(v0 + 64);
  v19 = *(v0 + 96);
  *(v10 + 4) = *(v0 + 80);
  *(v10 + 5) = v19;
  *(v10 + 2) = v17;
  *(v10 + 3) = v18;
  v20 = *(v0 + 32);
  *v10 = *(v0 + 16);
  *(v10 + 1) = v20;
  *(v0 + 568) = *(v3 + 32);
  *(v0 + 576) = type metadata accessor for DebugFormatCanvasTracer();
  v21 = swift_allocObject();
  *(v0 + 584) = v21;
  sub_1D61F55EC(0);
  *(v0 + 592) = v22;
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  *(v21 + 16) = v23;
  sub_1D5F2B0D8(v0 + 16, v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1D678C150, 0, 0);
}

uint64_t sub_1D678C150()
{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[66];
  v4 = swift_task_alloc();
  v0[75] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[76] = v5;
  *v5 = v0;
  v5[1] = sub_1D678C254;
  v6 = v0[61];
  v7 = v0[62];

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000017, 0x80000001D73CECD0, sub_1D61F5678, v4, v7);
}

uint64_t sub_1D678C254()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {

    v3 = sub_1D678C5E4;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v5 = *(v2 + 560);
    v4 = *(v2 + 552);
    v3 = sub_1D678C3B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D678C3B4()
{
  v1 = v0[77];
  v2 = v0[64];
  v3 = v0[61];
  (*(v0[63] + 56))(v3, 0, 1, v0[62]);
  sub_1D678EC20(v3, v2, type metadata accessor for DebugFormatCanvasBindResult);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  sub_1D5F2882C(v2, v4);
  v7 = v6;
  v0[78] = v6;

  sub_1D72629AC();
  if (v1)
  {
    sub_1D678EB84(v0[64], type metadata accessor for DebugFormatCanvasBindResult);

    sub_1D678EB84(v0[66], type metadata accessor for DebugFormatCanvasBindRequest);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[56];
    v11 = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView;
    v0[79] = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView;
    [v10 insertSubview:*(v7 + v11) atIndex:0];
    v0[80] = sub_1D72628FC();
    v13 = sub_1D726285C();
    v0[81] = v13;
    v0[82] = v12;

    return MEMORY[0x1EEE6DFA0](sub_1D678C740, v13, v12);
  }
}

uint64_t sub_1D678C5E4()
{

  v1 = *(v0 + 560);
  v2 = *(v0 + 552);

  return MEMORY[0x1EEE6DFA0](sub_1D678C64C, v2, v1);
}

uint64_t sub_1D678C64C()
{
  v1 = v0[66];
  v2 = v0[62];
  v3 = v0[63];
  v4 = v0[61];

  (*(v3 + 56))(v4, 1, 1, v2);
  sub_1D678EB84(v1, type metadata accessor for DebugFormatCanvasBindRequest);
  sub_1D678EB84(v4, sub_1D678EBEC);

  v5 = v0[1];

  return v5(0);
}

uint64_t sub_1D678C740()
{
  v1 = *(*(v0[78] + v0[79]) + OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView);
  v0[83] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[84] = v3;
  *v3 = v0;
  v3[1] = sub_1D678C800;

  return sub_1D6CDA64C(v2);
}

uint64_t sub_1D678C800()
{
  v2 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v3 = *(v2 + 656);
    v4 = *(v2 + 648);
    v5 = sub_1D678CBEC;
  }

  else
  {

    v3 = *(v2 + 656);
    v4 = *(v2 + 648);
    v5 = sub_1D678C924;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D678C924()
{

  v1 = *(v0 + 560);
  v2 = *(v0 + 552);

  return MEMORY[0x1EEE6DFA0](sub_1D678C98C, v2, v1);
}

uint64_t sub_1D678C98C()
{
  v1 = v0[85];

  sub_1D72629AC();
  v2 = *(v0[78] + v0[79]);
  if (v1)
  {
    v3 = v0[64];
    [v2 removeFromSuperview];
    sub_1D678EB84(v3, type metadata accessor for DebugFormatCanvasBindResult);

    sub_1D678EB84(v0[66], type metadata accessor for DebugFormatCanvasBindRequest);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v4 = v2;
    sub_1D678E7A8(v4);
    v6 = v5;
    v8 = v7;

    sub_1D72629AC();
    sub_1D725869C();
    v9 = v0[79];
    v10 = v0[78];
    v13 = v0[66];
    v14 = v0[64];

    sub_1D5B952F8(v6, v8);
    [*(v10 + v9) removeFromSuperview];
    sub_1D678EB84(v14, type metadata accessor for DebugFormatCanvasBindResult);

    sub_1D678EB84(v13, type metadata accessor for DebugFormatCanvasBindRequest);

    v15 = v0[1];

    return v15(v10);
  }
}

uint64_t sub_1D678CBEC()
{

  v1 = *(v0 + 560);
  v2 = *(v0 + 552);

  return MEMORY[0x1EEE6DFA0](sub_1D678CC60, v2, v1);
}

uint64_t sub_1D678CC60()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[64];

  [*(v2 + v1) removeFromSuperview];
  sub_1D678EB84(v3, type metadata accessor for DebugFormatCanvasBindResult);

  sub_1D678EB84(v0[66], type metadata accessor for DebugFormatCanvasBindRequest);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D678CD4C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1D72577EC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  sub_1D5B4D3E0(0);
  v3[9] = swift_task_alloc();
  v5 = sub_1D72585BC();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D678CEA4, 0, 0);
}

uint64_t sub_1D678CEA4(uint64_t a1)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[9];
  v5 = sub_1D6A9DC44(v4);
  if ((*(v3 + 48))(v4, 1, v2, v5) == 1)
  {
    sub_1D678EB84(v1[9], sub_1D5B4D3E0);

    v6 = v1[1];
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }

  else
  {
    v9 = v1[8];
    v10 = v1[4];
    v11 = v1[5];
    v12 = v1[3];
    (*(v1[11] + 32))(v1[13], v1[9], v1[10]);
    sub_1D725849C();
    sub_1D72577AC();
    sub_1D725774C();
    sub_1D72577DC();
    sub_1D5E3E824(v12, v10);
    sub_1D72577CC();
    v13 = *(v11 + 24);
    v14 = swift_task_alloc();
    *(v14 + 16) = v9;
    *(v14 + 24) = v13;
    sub_1D6726A04(0, &qword_1EC88B4F8, &type metadata for DebugFormatWorkspaceSnapshotBundle, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v1[14] = sub_1D725BBAC();

    v15 = swift_task_alloc();
    v1[15] = v15;
    *v15 = v1;
    v15[1] = sub_1D678D14C;

    return MEMORY[0x1EEE44EE0](v1 + 2);
  }
}

uint64_t sub_1D678D14C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D678D344;
  }

  else
  {
    v2 = sub_1D678D27C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D678D27C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1D678D344()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  (*(v0[11] + 8))(v0[13], v0[10]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_1D678D40C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v32 = a1;
  v5 = type metadata accessor for DebugFormatWorkspaceSnapshotManifest(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - v15;
  v17 = *(v3 + 16);
  v29 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
  v30 = v17;
  aBlock = 0xD00000000000001DLL;
  v34 = 0x80000001D73D4480;

  sub_1D725B32C();

  v18 = sub_1D72585BC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v16, 1, 1, v18);
  v20 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  v28 = a2;
  v21 = sub_1D725844C();
  sub_1D678ECFC(v32, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_1D678EC20(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for DebugFormatWorkspaceSnapshotManifest);
  *(v23 + ((v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D678EAE8;
  *(v24 + 24) = v23;
  v37 = sub_1D5E469B4;
  v38 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1D678DEB4;
  v36 = &block_descriptor_43;
  v25 = _Block_copy(&aBlock);

  [v20 coordinateReadingItemAtURL:v21 options:8 error:0 byAccessor:v25];

  _Block_release(v25);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  else
  {
    sub_1D678ECFC(v16, v12, sub_1D5B4D3E0);
    v26 = *(v19 + 48);
    if (v26(v12, 1, v18) == 1)
    {
      (*(v19 + 16))(v31, v28, v18);
      if (v26(v12, 1, v18) != 1)
      {
        sub_1D678EB84(v12, sub_1D5B4D3E0);
      }
    }

    else
    {
      (*(v19 + 32))(v31, v12, v18);
    }

    sub_1D678EB84(v16, sub_1D5B4D3E0);
    aBlock = 0;
    v34 = 0xE000000000000000;

    sub_1D725B32C();
  }
}

void sub_1D678D8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67[3] = *MEMORY[0x1E69E9840];
  v5 = sub_1D7257A4C();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D72585BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v57 - v16;
  v61 = objc_opt_self();
  v18 = [v61 defaultManager];
  v64 = a1;
  v19 = sub_1D725844C();
  v67[0] = 0;
  v20 = [v18 URLForDirectory:99 inDomain:1 appropriateForURL:v19 create:1 error:v67];

  v21 = v67[0];
  if (v20)
  {
    v57 = a3;
    v58 = v13;
    sub_1D72584EC();
    v22 = v21;

    v67[0] = 0;
    v67[1] = 0xE000000000000000;
    if (qword_1EDF272B0 != -1)
    {
      swift_once();
    }

    v59 = v10;
    v60 = v9;
    v23 = qword_1EDFFCAA0;
    v24 = sub_1D725881C();
    v25 = [v23 stringFromDate_];

    v26 = sub_1D726207C();
    v28 = v27;

    v65 = 0x636170736B726F77;
    v66 = 0xEA00000000002D65;
    MEMORY[0x1DA6F9910](v26, v28);

    v30 = v65;
    v29 = v66;
    sub_1D725796C();
    sub_1D5BF4D9C();

    v65 = v30;
    v66 = v29;
    v31 = sub_1D7263A1C();
    v33 = v32;
    LOBYTE(v26) = v34;

    if (v26)
    {
      v35 = v29;
    }

    else
    {
      do
      {
        sub_1D6C2BD5C(v31, v33, 0x2DuLL, 0xE100000000000000, v30, v29);
        v30 = v38;
        v35 = v39;

        v65 = v30;
        v66 = v35;
        v31 = sub_1D7263A1C();
        v33 = v40;
        v42 = v41;

        v29 = v35;
      }

      while ((v42 & 1) == 0);
    }

    (*(v62 + 8))(v8, v63);
    MEMORY[0x1DA6F9910](v30, v35);

    MEMORY[0x1DA6F9910](1885960750, 0xE400000000000000);
    v43 = v58;
    sub_1D725848C();

    v44 = [v61 defaultManager];
    v45 = sub_1D725844C();
    v46 = sub_1D725844C();
    v67[0] = 0;
    v47 = [v44 moveItemAtURL:v45 toURL:v46 error:v67];

    if (v47)
    {
      v48 = v59;
      v49 = *(v59 + 8);
      v50 = v67[0];
      v51 = v60;
      v49(v17, v60);
      v52 = v57;
      sub_1D678EB84(v57, sub_1D5B4D3E0);
      (*(v48 + 32))(v52, v43, v51);
      (*(v48 + 56))(v52, 0, 1, v51);
      return;
    }

    v53 = v67[0];
    v37 = sub_1D725829C();

    swift_willThrow();
    v54 = v60;
    v55 = *(v59 + 8);
    v55(v43, v60);
    v55(v17, v54);
  }

  else
  {
    v36 = v67[0];
    v37 = sub_1D725829C();

    swift_willThrow();
  }

  v56 = v37;
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(v37, 0, 0, 0xD00000000000002DLL, 0x80000001D73D44B0);
}

uint64_t sub_1D678DEB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_1D72584EC();
  v8(v7);
  return (*(v4 + 8))(v7, v3);
}

double sub_1D678DF98@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1[7];
  v21[6] = a1[6];
  v21[7] = v9;
  v21[8] = a1[8];
  v10 = a1[3];
  v21[2] = a1[2];
  v21[3] = v10;
  v11 = a1[5];
  v21[4] = a1[4];
  v21[5] = v11;
  v12 = a1[1];
  v21[0] = *a1;
  v21[1] = v12;
  sub_1D678ECFC(a2, a5, type metadata accessor for FormatWorkspaceGroup);
  v13 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  *(a5 + v13[5]) = a3;
  *(a5 + v13[6]) = a4;
  v14 = (a5 + v13[7]);
  v15 = a1[7];
  v14[6] = a1[6];
  v14[7] = v15;
  v14[8] = a1[8];
  v16 = a1[3];
  v14[2] = a1[2];
  v14[3] = v16;
  v17 = a1[5];
  v14[4] = a1[4];
  v14[5] = v17;
  v18 = a1[1];
  *v14 = *a1;
  v14[1] = v18;
  sub_1D5D65D5C(v21, &v20);

  return result;
}

void sub_1D678E090(void *a1, void *a2)
{
  v3 = a1[2];
  if (v3)
  {
    v4 = a1;
    v5 = a1[4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v4[3] >> 1)
    {
      v4 = sub_1D69945B8(isUniquelyReferenced_nonNull_native, v3, 1, v4);
    }

    sub_1D5EC4040(0, 1, 0);
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = *(type metadata accessor for DebugFormatEditorWorkspaceGroup(0) - 8);
      v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v9 = v5 + v30;
      v29 = a2[2];
      v10 = *(v8 + 72);
      sub_1D5B547F4(0, &qword_1EC88EE90, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E6F90]);
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1D7273AE0;
        sub_1D678ECFC(v9, v12 + v30, type metadata accessor for DebugFormatEditorWorkspaceGroup);

        v13 = swift_isUniquelyReferenced_nonNull_native();
        if (!v13 || (v14 = a2[3] >> 1, v15 = a2, v14 <= v29))
        {
          v15 = sub_1D699164C(v13, v29 + 1, 1, a2);
          v14 = v15[3] >> 1;
        }

        if (v14 <= v15[2])
        {
          break;
        }

        v16 = v10;
        swift_arrayInitWithCopy();

        ++v15[2];
        v17 = v4;
        sub_1D678E090(v4, v15);
        v19 = v18;

        v20 = *(v19 + 16);
        v21 = v11[2];
        v22 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          goto LABEL_28;
        }

        v23 = swift_isUniquelyReferenced_nonNull_native();
        if (!v23 || v22 > v11[3] >> 1)
        {
          if (v21 <= v22)
          {
            v24 = v21 + v20;
          }

          else
          {
            v24 = v21;
          }

          v11 = sub_1D69945B8(v23, v24, 1, v11);
        }

        v10 = v16;
        if (*(v19 + 16))
        {
          if ((v11[3] >> 1) - v11[2] < v20)
          {
            goto LABEL_30;
          }

          sub_1D678ED64(0);
          swift_arrayInitWithCopy();

          v4 = v17;
          if (v20)
          {
            v25 = v11[2];
            v26 = __OFADD__(v25, v20);
            v27 = v25 + v20;
            if (v26)
            {
              goto LABEL_31;
            }

            v11[2] = v27;
          }
        }

        else
        {

          v4 = v17;
          if (v20)
          {
            goto LABEL_29;
          }
        }

        v9 += v16;
        if (!--v7)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    else
    {
LABEL_26:
    }
  }

  else
  {
    sub_1D5B547F4(0, &unk_1EC88F270, sub_1D678ED64, MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7273AE0;
    *(v28 + 32) = a2;
  }
}

uint64_t sub_1D678E45C()
{

  return swift_deallocClassInstance();
}

void *sub_1D678E4D0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_1D725785C();
  MEMORY[0x1EEE9AC00](v5, v6);
  type metadata accessor for DebugFormatService();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v3[2] = a1;
  v3[3] = v7;
  type metadata accessor for DebugFormatCanvasGenerator();
  swift_allocObject();
  v8 = swift_retain_n();
  v3[4] = sub_1D5F26CE8(v8);
  type metadata accessor for FormatJSONEncoder(0);
  swift_allocObject();
  v9 = sub_1D6BCED58(&unk_1F5118C40);
  sub_1D5B547F4(0, &qword_1EC8813F0, MEMORY[0x1E6967F78], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1D7279970;

  sub_1D725783C();
  sub_1D725782C();
  sub_1D725784C();
  sub_1D678ED98(&qword_1EC8813F8, MEMORY[0x1E6967F78], MEMORY[0x1E6967F88]);
  sub_1D678EDE0(0);
  sub_1D678ED98(&qword_1EC881408, sub_1D678EDE0, MEMORY[0x1E69E6328]);
  sub_1D7263B6C();
  sub_1D725786C();

  v3[5] = v9;
  return v3;
}

double sub_1D678E758(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1D678E7A8(void *a1)
{
  v1 = a1;
  [a1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1D7259EBC();
  v11 = [objc_opt_self() formatForTraitCollection_];

  v12 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithBounds:v11 format:{v3, v5, v7, v9}];
  v30 = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = &v30;
  *(v13 + 24) = v1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1D678EC88;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1D6139588;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D62E78B0;
  aBlock[3] = &block_descriptor_25_1;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  v17 = [(UIImage *)v12 PNGDataWithActions:v15];
  _Block_release(v15);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v18 = sub_1D725867C();
    v20 = v19;

    if ((v30 & 1) != 0 || ([v16 bounds], v31.width = v21, v31.height = v22, UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0), (v23 = UIGraphicsGetCurrentContext()) == 0))
    {
    }

    else
    {
      v24 = v23;
      v25 = [v16 layer];
      [v25 renderInContext_];

      v26 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      if (v26)
      {
        v27 = UIImagePNGRepresentation(v26);
        if (v27)
        {
          v28 = v27;
          sub_1D725867C();
          sub_1D5B952F8(v18, v20);
        }

        else
        {
        }

        v12 = v26;
      }

      else
      {

        v12 = v24;
      }
    }
  }
}

void sub_1D678EAE8(uint64_t a1)
{
  v3 = *(type metadata accessor for DebugFormatWorkspaceSnapshotManifest(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D678D8AC(a1, v1 + v4, v5);
}

uint64_t sub_1D678EB84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D678EC20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D678EC88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  [v1 bounds];
  result = [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  *v2 = result;
  return result;
}

uint64_t sub_1D678ECFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D678ED98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D678EE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a1 + 16) && (v8 = sub_1D5B69D90(a2, a3), (a2 & 1) != 0))
  {
    sub_1D5B68374(*(a1 + 56) + 40 * v8, v14);
    sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
    v9 = a4(0);
    v10 = swift_dynamicCast();
    return (*(*(v9 - 8) + 56))(a5, v10 ^ 1u, 1, v9);
  }

  else
  {
    v12 = (a4)(0, a2, a3);
    v13 = *(*(v12 - 8) + 56);

    return v13(a5, 1, 1, v12);
  }
}

double FeedGroupItem.hash(into:)(uint64_t a1)
{
  sub_1D5D50ED0();
  sub_1D72621EC();

  return result;
}

uint64_t FeedGroupItem.hashValue.getter()
{
  sub_1D7264A0C();
  sub_1D5D50ED0();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D678F0E0()
{
  sub_1D7264A0C();
  sub_1D5D50ED0();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D678F13C(uint64_t a1)
{
  sub_1D5D50ED0();
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D678F18C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D5D50ED0();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D678F1E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedGroupItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      sub_1D5D50814(*(a1 + 48) + *(v5 + 72) * (__clz(__rbit64(v15)) | (v18 << 6)), v12, type metadata accessor for FeedGroupItem);
      sub_1D5D65494(v12, v8, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        break;
      }

      v15 &= v15 - 1;
      sub_1D5D5113C(v8, type metadata accessor for FeedGroupItem);
      v17 = v18;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    *a2 = *v8;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {

        *a2 = 0;
        *(a2 + 8) = 0;
        return;
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D678F3E8(uint64_t a1)
{
  v2 = type metadata accessor for FeedGroupItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v26 - v9;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      sub_1D5D50814(*(a1 + 48) + *(v3 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v10, type metadata accessor for FeedGroupItem);
      sub_1D5D65494(v10, v6, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_1D5D5113C(v6, type metadata accessor for FeedGroupItem);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v18 = *(v6 + 13);
    v27 = *(v6 + 12);
    v28 = v18;
    v29 = *(v6 + 14);
    v30 = *(v6 + 30);
    v19 = *(v6 + 9);
    v26[8] = *(v6 + 8);
    v26[9] = v19;
    v20 = *(v6 + 11);
    v26[10] = *(v6 + 10);
    v26[11] = v20;
    v21 = *(v6 + 5);
    v26[4] = *(v6 + 4);
    v26[5] = v21;
    v22 = *(v6 + 7);
    v26[6] = *(v6 + 6);
    v26[7] = v22;
    v23 = *(v6 + 1);
    v26[0] = *v6;
    v26[1] = v23;
    v24 = *(v6 + 3);
    v26[2] = *(v6 + 2);
    v26[3] = v24;
    v25 = *(&v27 + 1);
    if (*(&v27 + 1))
    {

      sub_1D5F2DFAC(v26);
      return v25;
    }

    else
    {
      sub_1D5F2DFAC(v26);

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        return 0;
      }

      v13 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D678F664(uint64_t a1)
{
  v31 = MEMORY[0x1E69E7CD0];
  result = sub_1D5BCB16C(a1);
  v2 = result;
  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v9 = qword_1EDF431A0;
  v10 = &qword_1EDF208C0;
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v31;
    }

    v7 = *(v4 + 8 * v11);
    ++v3;
    if (v7)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        sub_1D5B68374(*(v2 + 56) + 40 * (v12 | (v11 << 6)), v30);
        sub_1D5B63F14(v30, v26);
        sub_1D5B49474(0, v9, &protocol descriptor for FeedGroupItemType);
        sub_1D5B49474(0, v10, &protocol descriptor for FormatContentSelectorProviding);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v24, v27);
          v13 = v9;
          v14 = v2;
          v15 = v10;
          v16 = v28;
          v17 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v18 = (*(v17 + 24))(v16, v17);
          sub_1D5B87D50(v18);

          v19 = v28;
          v20 = v29;
          __swift_project_boxed_opaque_existential_1(v27, v28);
          v21 = *(v20 + 32);
          v22 = v20;
          v10 = v15;
          v2 = v14;
          v23 = v21(v19, v22);
          sub_1D5B87D50(v23);
          v9 = v13;

          result = __swift_destroy_boxed_opaque_existential_1(v27);
          v3 = v11;
          if (!v7)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v25 = 0;
          memset(v24, 0, sizeof(v24));
          result = sub_1D5D5113C(v24, sub_1D6792440);
          v3 = v11;
          if (!v7)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = v3;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t FeedGroupItem.debugIdentifier.getter()
{
  v0 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v65 = (&v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for FeedSponsorshipBannerAd(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for FeedHeadline(0);
  v64 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for FeedGroupItem(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50814(v66, v26, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v50 = *(v26 + 7);
      v73 = *(v26 + 6);
      v74[0] = v50;
      *(v74 + 9) = *(v26 + 121);
      v51 = *(v26 + 1);
      v67 = *v26;
      v68 = v51;
      v52 = *(v26 + 3);
      v69 = *(v26 + 2);
      v53 = *(v26 + 4);
      v72 = *(v26 + 5);
      v70 = v52;
      v71 = v53;
      v54 = [v67 identifier];
      v34 = sub_1D726207C();

      sub_1D5ECF320(&v67);
      return v34;
    case 2u:
      sub_1D5D5113C(v26, type metadata accessor for FeedGroupItem);
      return 0x736E6F6974706FLL;
    case 3u:
      sub_1D5D5113C(v26, type metadata accessor for FeedGroupItem);
      return 0x72656874616577;
    case 4u:
      sub_1D5D5113C(v26, type metadata accessor for FeedGroupItem);
      return 0x6C6C6177796170;
    case 5u:
      sub_1D5D65494(v26, v22, type metadata accessor for FeedHeadline);
      v55 = [v22[5] identifier];
      v34 = sub_1D726207C();

      v35 = type metadata accessor for FeedHeadline;
      v36 = v22;
      goto LABEL_21;
    case 6u:
      sub_1D5D65494(v26, v18, type metadata accessor for FeedWebEmbed);
      sub_1D5D50814(v18 + *(v15 + 48), v14, sub_1D5B69BE0);
      if ((*(v64 + 48))(v14, 1, v19) == 1)
      {
        sub_1D5D5113C(v14, sub_1D5B69BE0);
        v34 = sub_1D72583DC();
      }

      else
      {
        v61 = [v14[5] identifier];
        v34 = sub_1D726207C();

        sub_1D5D5113C(v14, type metadata accessor for FeedHeadline);
      }

      v57 = type metadata accessor for FeedWebEmbed;
      goto LABEL_20;
    case 7u:
      v43 = *v26;
      v44 = [*v26 backingTag];
      v45 = [v44 identifier];
      v46 = sub_1D726207C();
      v48 = v47;

      v72 = xmmword_1D7279980;
      v73 = 0u;
      memset(v74, 0, sizeof(v74));
      LOBYTE(v75) = 0;
      *&v67 = v46;
      *(&v67 + 1) = v48;
      *&v68 = v44;
      BYTE8(v68) = 0;
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      *&v69 = 0;
      BYTE8(v69) = 0;
      *&v71 = 0;
      *(&v71 + 1) = MEMORY[0x1E69E7CD0];
      v49 = [v44 identifier];
      v34 = sub_1D726207C();

      goto LABEL_10;
    case 8u:
      v60 = [*(v26 + 2) identifier];
      v34 = sub_1D726207C();
      swift_unknownObjectRelease();

      return v34;
    case 9u:
      v37 = *(v26 + 11);
      v76 = *(v26 + 10);
      v77 = v37;
      v78 = *(v26 + 12);
      v38 = *(v26 + 7);
      v73 = *(v26 + 6);
      v74[0] = v38;
      v39 = *(v26 + 9);
      v74[1] = *(v26 + 8);
      v75 = v39;
      v40 = *(v26 + 3);
      v69 = *(v26 + 2);
      v41 = *(v26 + 4);
      v72 = *(v26 + 5);
      v70 = v40;
      v71 = v41;
      v42 = *v26;
      v68 = *(v26 + 1);
      v67 = v42;
      v34 = *(&v69 + 1);

      sub_1D5F2DF58(&v67);
      return v34;
    case 0xAu:
      v58 = *(v26 + 3);
      v59 = *(v26 + 4);
      v34 = *(v26 + 5);

      sub_1D5BF6680(v58, v59);
      swift_unknownObjectRelease();

      return v34;
    case 0xBu:
      sub_1D5D65494(v26, v10, type metadata accessor for FeedPuzzleStatistic);
      v34 = *(v10 + 5);

      v35 = type metadata accessor for FeedPuzzleStatistic;
      v36 = v10;
      goto LABEL_21;
    case 0xCu:
      sub_1D5D65494(v26, v6, type metadata accessor for FeedSponsorshipBannerAd);
      v34 = sub_1D726088C();
      v35 = type metadata accessor for FeedSponsorshipBannerAd;
      v36 = v6;
      goto LABEL_21;
    case 0xDu:
      v18 = v65;
      sub_1D5D65494(v26, v65, type metadata accessor for FeedRecipe);
      v56 = [v18[7] identifier];
      v34 = sub_1D726207C();

      v57 = type metadata accessor for FeedRecipe;
LABEL_20:
      v35 = v57;
      v36 = v18;
LABEL_21:
      sub_1D5D5113C(v36, v35);
      break;
    default:
      v27 = *v26;
      v28 = *(v26 + 1);
      v29 = [swift_unknownObjectRetain() identifier];
      v30 = sub_1D726207C();
      v32 = v31;

      v72 = xmmword_1D7279980;
      v73 = 0u;
      memset(v74, 0, sizeof(v74));
      LOBYTE(v75) = 0;
      *&v67 = v30;
      *(&v67 + 1) = v32;
      *&v68 = v27;
      BYTE8(v68) = 0;
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      *&v69 = 0;
      BYTE8(v69) = 0;
      *&v71 = 0;
      *(&v71 + 1) = MEMORY[0x1E69E7CD0];
      v33 = [v27 identifier];
      v34 = sub_1D726207C();
      swift_unknownObjectRelease();

LABEL_10:
      sub_1D5EE5B54(&v67);
      break;
  }

  return v34;
}

uint64_t FeedGroupItem.debugSourceName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedHeadline(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for FeedGroupItem(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50814(v1, v22, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v31 = *(v22 + 7);
      v57 = *(v22 + 6);
      v58[0] = v31;
      *(v58 + 9) = *(v22 + 121);
      v32 = *(v22 + 1);
      v51 = *v22;
      v52 = v32;
      v33 = *(v22 + 3);
      v53 = *(v22 + 2);
      v54 = v33;
      v34 = *(v22 + 5);
      v55 = *(v22 + 4);
      v35 = [objc_msgSend(v51 sourceChannel];
      swift_unknownObjectRelease();
      v36 = sub_1D726207C();

      sub_1D5ECF320(&v51);
      return v36;
    case 2u:
    case 3u:
    case 4u:
    case 9u:
    case 0xBu:
    case 0xCu:
      v23 = type metadata accessor for FeedGroupItem;
      v24 = v22;
      goto LABEL_3;
    case 5u:
      sub_1D5D65494(v22, v18, type metadata accessor for FeedHeadline);
      v45 = [v18[5] sourceChannel];
      if (v45)
      {
        v46 = [v45 name];
        swift_unknownObjectRelease();
        v47 = sub_1D726207C();
      }

      else
      {
        v47 = 0;
      }

      sub_1D5D5113C(v18, type metadata accessor for FeedHeadline);
      return v47;
    case 6u:
      sub_1D5D65494(v22, v13, type metadata accessor for FeedWebEmbed);
      sub_1D5D50814(&v13[*(v10 + 48)], v9, sub_1D5B69BE0);
      if ((*(v15 + 48))(v9, 1, v14) == 1)
      {
        sub_1D5D5113C(v13, type metadata accessor for FeedWebEmbed);
        v23 = sub_1D5B69BE0;
        v24 = v9;
LABEL_3:
        sub_1D5D5113C(v24, v23);
        return 0;
      }

      else
      {
        v48 = [v9[5] sourceChannel];
        if (v48)
        {
          v49 = [v48 name];
          swift_unknownObjectRelease();
          v50 = sub_1D726207C();
        }

        else
        {
          v50 = 0;
        }

        sub_1D5D5113C(v13, type metadata accessor for FeedWebEmbed);
        sub_1D5D5113C(v9, type metadata accessor for FeedHeadline);
        return v50;
      }

    case 7u:
      v39 = *v22;
      v40 = [*v22 backingTag];
      v41 = [v40 identifier];
      v42 = sub_1D726207C();
      v44 = v43;

      v56 = xmmword_1D7279980;
      v57 = 0u;
      memset(v58, 0, sizeof(v58));
      v59 = 0;

      *&v51 = v42;
      *(&v51 + 1) = v44;
      *&v52 = v40;
      goto LABEL_13;
    case 8u:
      goto LABEL_5;
    case 0xAu:
      sub_1D5BF6680(*(v22 + 3), *(v22 + 4));
LABEL_5:
      swift_unknownObjectRelease();

      return 0;
    case 0xDu:
      sub_1D5D65494(v22, v5, type metadata accessor for FeedRecipe);
      v37 = [objc_msgSend(v5[7] sourceChannel)];
      swift_unknownObjectRelease();
      v36 = sub_1D726207C();

      sub_1D5D5113C(v5, type metadata accessor for FeedRecipe);
      return v36;
    default:
      v25 = *v22;
      v26 = *(v22 + 1);
      v27 = [swift_unknownObjectRetain() identifier];
      v28 = sub_1D726207C();
      v30 = v29;

      v56 = xmmword_1D7279980;
      v57 = 0u;
      memset(v58, 0, sizeof(v58));
      v59 = 0;
      swift_unknownObjectRelease();

      *&v51 = v28;
      *(&v51 + 1) = v30;
      *&v52 = v25;
LABEL_13:
      BYTE8(v52) = 0;
      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      *&v53 = 0;
      BYTE8(v53) = 0;
      *&v55 = 0;
      *(&v55 + 1) = MEMORY[0x1E69E7CD0];
      sub_1D5EE5B54(&v51);
      return 0;
  }
}

uint64_t FeedGroupItem.debugTitle.getter()
{
  v1 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for FeedGroupItem(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50814(v0, v16, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = *(v16 + 7);
      v63 = *(v16 + 6);
      *v64 = v44;
      *&v64[9] = *(v16 + 121);
      v45 = *(v16 + 1);
      v57 = *v16;
      v46 = *(v16 + 2);
      v47 = *(v16 + 3);
      v58 = v45;
      v59 = v46;
      v48 = *(v16 + 4);
      v62 = *(v16 + 5);
      v49 = [v57 coverDate];
      v17 = sub_1D726207C();

      sub_1D5ECF320(&v57);
      return v17;
    case 2u:
    case 3u:
    case 4u:
    case 0xBu:
    case 0xCu:
      sub_1D5D5113C(v16, type metadata accessor for FeedGroupItem);
      return 0;
    case 5u:
      sub_1D5D65494(v16, v12, type metadata accessor for FeedHeadline);
      v50 = [v12[5] title];
      if (v50)
      {
        v51 = v50;
        v17 = sub_1D726207C();
      }

      else
      {
        v17 = 0;
      }

      v53 = type metadata accessor for FeedHeadline;
      v54 = v12;
      goto LABEL_22;
    case 6u:
      sub_1D5D65494(v16, v8, type metadata accessor for FeedWebEmbed);
      v17 = FeedWebEmbed.debugTitle.getter();
      v53 = type metadata accessor for FeedWebEmbed;
      v54 = v8;
      goto LABEL_22;
    case 7u:
      v30 = *v16;
      v31 = [*v16 backingTag];
      v32 = [v31 identifier];
      v33 = sub_1D726207C();
      v35 = v34;

      LOBYTE(v65) = 0;
      BYTE8(v58) = 0;
      BYTE8(v59) = 0;
      v36 = [v31 name];
      v17 = sub_1D726207C();

      goto LABEL_10;
    case 8u:
      v55 = [*(v16 + 2) name];
      v17 = sub_1D726207C();
      swift_unknownObjectRelease();

      return v17;
    case 9u:
      v18 = *(v16 + 11);
      v66 = *(v16 + 10);
      v67 = v18;
      v68 = *(v16 + 12);
      v19 = *(v16 + 7);
      v63 = *(v16 + 6);
      *v64 = v19;
      v20 = *(v16 + 9);
      *&v64[16] = *(v16 + 8);
      v65 = v20;
      v21 = *(v16 + 3);
      v59 = *(v16 + 2);
      v60 = v21;
      v22 = *(v16 + 5);
      v61 = *(v16 + 4);
      v62 = v22;
      v23 = *v16;
      v58 = *(v16 + 1);
      v24 = [*(&v60 + 1) title];
      if (v24)
      {
        v25 = v24;
        v17 = sub_1D726207C();
      }

      else
      {
        v17 = 0;
      }

      sub_1D5F2DF58(&v57);
      return v17;
    case 0xAu:
      v26 = *(v16 + 3);
      v27 = *(v16 + 4);
      v28 = [*(v16 + 7) name];
      if (v28)
      {
        v29 = v28;
        v17 = sub_1D726207C();

        sub_1D5BF6680(v26, v27);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D5BF6680(v26, v27);
        swift_unknownObjectRelease();

        return 0;
      }

      return v17;
    case 0xDu:
      sub_1D5D65494(v16, v4, type metadata accessor for FeedRecipe);
      v52 = [v4[7] title];
      v17 = sub_1D726207C();

      v53 = type metadata accessor for FeedRecipe;
      v54 = v4;
LABEL_22:
      sub_1D5D5113C(v54, v53);
      break;
    default:
      v37 = *v16;
      v38 = *(v16 + 1);
      v39 = [swift_unknownObjectRetain() identifier];
      v40 = sub_1D726207C();
      v42 = v41;

      LOBYTE(v65) = 0;
      BYTE8(v58) = 0;
      BYTE8(v59) = 0;
      v43 = [v37 name];
      v17 = sub_1D726207C();
      swift_unknownObjectRelease();

LABEL_10:
      sub_1D5EE5B54(&v57);
      break;
  }

  return v17;
}

id FeedGroupItem.debugAssetHandle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedHeadline(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for FeedGroupItem(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D50814(v1, v22, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v48 = *(v22 + 7);
      v64 = *(v22 + 6);
      v65[0] = v48;
      *(v65 + 9) = *(v22 + 121);
      v49 = *(v22 + 1);
      v58 = *v22;
      v59 = v49;
      v50 = *(v22 + 3);
      v60 = *(v22 + 2);
      v51 = [v58 coverImageAssetHandle];
      sub_1D5ECF320(&v58);
      return v51;
    case 2u:
    case 3u:
    case 4u:
    case 0xBu:
    case 0xCu:
      v23 = type metadata accessor for FeedGroupItem;
      v24 = v22;
      goto LABEL_3;
    case 5u:
      sub_1D5D65494(v22, v18, type metadata accessor for FeedHeadline);
      v52 = [v18[5] thumbnail];
      v53 = [v52 thumbnailAssetHandle];

      sub_1D5D5113C(v18, type metadata accessor for FeedHeadline);
      return v53;
    case 6u:
      sub_1D5D65494(v22, v13, type metadata accessor for FeedWebEmbed);
      sub_1D5D50814(&v13[*(v10 + 48)], v9, sub_1D5B69BE0);
      if ((*(v15 + 48))(v9, 1, v14) == 1)
      {
        sub_1D5D5113C(v13, type metadata accessor for FeedWebEmbed);
        v23 = sub_1D5B69BE0;
        v24 = v9;
LABEL_3:
        sub_1D5D5113C(v24, v23);
        return 0;
      }

      else
      {
        v56 = [v9[5] thumbnail];
        v57 = [v56 thumbnailAssetHandle];

        sub_1D5D5113C(v13, type metadata accessor for FeedWebEmbed);
        sub_1D5D5113C(v9, type metadata accessor for FeedHeadline);
        return v57;
      }

    case 7u:
      v35 = *v22;
      v36 = [*v22 backingTag];
      v37 = [v36 identifier];
      v38 = sub_1D726207C();
      v40 = v39;

      v63 = xmmword_1D7279980;
      v64 = 0u;
      memset(v65, 0, sizeof(v65));
      LOBYTE(v66) = 0;
      *&v58 = v38;
      *(&v58 + 1) = v40;
      *&v59 = v36;
      BYTE8(v59) = 0;
      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      *&v60 = 0;
      BYTE8(v60) = 0;
      *&v62 = 0;
      *(&v62 + 1) = MEMORY[0x1E69E7CD0];
      v41 = FeedTag.debugAssetHandle.getter();

      goto LABEL_8;
    case 8u:
      swift_unknownObjectRelease();

      return 0;
    case 9u:
      v26 = *(v22 + 11);
      v67 = *(v22 + 10);
      v68 = v26;
      v69 = *(v22 + 12);
      v27 = *(v22 + 7);
      v64 = *(v22 + 6);
      v65[0] = v27;
      v28 = *(v22 + 9);
      v65[1] = *(v22 + 8);
      v66 = v28;
      v29 = *(v22 + 3);
      v60 = *(v22 + 2);
      v30 = *(v22 + 4);
      v63 = *(v22 + 5);
      v61 = v29;
      v62 = v30;
      v31 = [*(&v29 + 1) thumbnailSmallImageAssetHandle];
      sub_1D5F2DF58(&v58);
      return v31;
    case 0xAu:
      v32 = v22[3];
      v33 = v22[4];
      v34 = [v22[7] coverImageAssetHandle];
      sub_1D5BF6680(v32, v33);
      swift_unknownObjectRelease();

      return v34;
    case 0xDu:
      sub_1D5D65494(v22, v5, type metadata accessor for FeedRecipe);
      v54 = [v5[7] thumbnailMedium];
      v55 = [v54 thumbnailAssetHandle];

      sub_1D5D5113C(v5, type metadata accessor for FeedRecipe);
      return v55;
    default:
      v42 = *v22;
      v43 = v22[1];
      v44 = [swift_unknownObjectRetain() identifier];
      v45 = sub_1D726207C();
      v47 = v46;

      v63 = xmmword_1D7279980;
      v64 = 0u;
      memset(v65, 0, sizeof(v65));
      LOBYTE(v66) = 0;
      *&v58 = v45;
      *(&v58 + 1) = v47;
      *&v59 = v42;
      BYTE8(v59) = 0;
      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      *&v60 = 0;
      BYTE8(v60) = 0;
      *&v62 = 0;
      *(&v62 + 1) = MEMORY[0x1E69E7CD0];
      v41 = FeedTag.debugAssetHandle.getter();
      swift_unknownObjectRelease();

LABEL_8:
      sub_1D5EE5B54(&v58);
      return v41;
  }
}

void FeedGroupItem.debugKind.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedGroupItem(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50814(v2, v23, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v37 = *(v23 + 121);
      v38 = *(v23 + 7);
      v61 = *(v23 + 6);
      v62[0] = v38;
      *(v62 + 9) = v37;
      v39 = *(v23 + 3);
      v57 = *(v23 + 2);
      v58 = v39;
      v40 = *(v23 + 5);
      v59 = *(v23 + 4);
      v60 = v40;
      v41 = *v23;
      v56 = *(v23 + 1);
      v55 = v41;
      v27 = *(&v62[0] + 1);
      v28 = *&v62[1];
      sub_1D5BF2DDC(*(&v62[0] + 1), *&v62[1]);
      sub_1D5ECF320(&v55);
      goto LABEL_15;
    case 2u:
    case 4u:
      sub_1D5D5113C(v23, type metadata accessor for FeedGroupItem);
      v24 = xmmword_1D72E9600;
      goto LABEL_18;
    case 3u:
    case 0xCu:
      *a1 = xmmword_1D72E9600;
      sub_1D5D5113C(v23, type metadata accessor for FeedGroupItem);
      return;
    case 5u:
      sub_1D5D65494(v23, v19, type metadata accessor for FeedHeadline);
      v43 = &v19[*(v16 + 48)];
      v27 = *v43;
      v28 = v43[1];
      sub_1D5BF2DDC(*v43, v28);
      v29 = type metadata accessor for FeedHeadline;
      v30 = v19;
      goto LABEL_13;
    case 6u:
      sub_1D5D65494(v23, v15, type metadata accessor for FeedWebEmbed);
      v27 = *(v15 + 3);
      v28 = *(v15 + 4);
      sub_1D5BF2DDC(v27, v28);
      v29 = type metadata accessor for FeedWebEmbed;
      v30 = v15;
      goto LABEL_13;
    case 7u:
      v50 = *v23;
      v31 = [v50 backingTag];
      v51 = [v31 identifier];
      v52 = sub_1D726207C();
      v54 = v53;

      v60 = xmmword_1D7279980;
      v61 = 0u;
      memset(v62, 0, sizeof(v62));
      LOBYTE(v63) = 0;

      *&v55 = v52;
      *(&v55 + 1) = v54;
      goto LABEL_17;
    case 8u:
      swift_unknownObjectRelease();

      v24 = xmmword_1D72E0D50;
      goto LABEL_18;
    case 9u:
      v44 = *(v23 + 11);
      v64 = *(v23 + 10);
      v65 = v44;
      v66 = *(v23 + 12);
      v45 = *(v23 + 7);
      v61 = *(v23 + 6);
      v62[0] = v45;
      v46 = *(v23 + 9);
      v62[1] = *(v23 + 8);
      v63 = v46;
      v47 = *(v23 + 3);
      v57 = *(v23 + 2);
      v58 = v47;
      v48 = *(v23 + 5);
      v59 = *(v23 + 4);
      v60 = v48;
      v49 = *v23;
      v56 = *(v23 + 1);
      v55 = v49;
      v27 = *(&v56 + 1);
      v28 = v57;
      sub_1D5BF2DDC(*(&v56 + 1), v57);
      sub_1D5F2DF58(&v55);
      goto LABEL_15;
    case 0xAu:
      v25 = *(v23 + 3);
      v26 = *(v23 + 4);
      sub_1D5BF2DDC(v25, v26);
      sub_1D5BF6680(v25, v26);
      swift_unknownObjectRelease();

      *a1 = v25;
      goto LABEL_11;
    case 0xBu:
      sub_1D5D65494(v23, v11, type metadata accessor for FeedPuzzleStatistic);
      v27 = *(v11 + 3);
      v28 = *(v11 + 4);
      sub_1D5BF2DDC(v27, v28);
      v29 = type metadata accessor for FeedPuzzleStatistic;
      v30 = v11;
LABEL_13:
      sub_1D5D5113C(v30, v29);
LABEL_15:
      *a1 = v27;
      *(a1 + 8) = v28;
      break;
    case 0xDu:
      sub_1D5D65494(v23, v7, type metadata accessor for FeedRecipe);
      v42 = *(v7 + 4);
      v26 = *(v7 + 5);
      sub_1D5BF2DDC(v42, v26);
      sub_1D5D5113C(v7, type metadata accessor for FeedRecipe);
      *a1 = v42;
LABEL_11:
      *(a1 + 8) = v26;
      break;
    default:
      v31 = *v23;
      v32 = *(v23 + 1);
      v33 = [swift_unknownObjectRetain() identifier];
      v34 = sub_1D726207C();
      v36 = v35;

      v60 = xmmword_1D7279980;
      v61 = 0u;
      memset(v62, 0, sizeof(v62));
      LOBYTE(v63) = 0;
      swift_unknownObjectRelease();

      *&v55 = v34;
      *(&v55 + 1) = v36;
LABEL_17:
      *&v56 = v31;
      BYTE8(v56) = 0;
      *&v58 = 0;
      *(&v58 + 1) = 0xE000000000000000;
      *&v57 = 0;
      BYTE8(v57) = 0;
      *&v59 = 0;
      *(&v59 + 1) = MEMORY[0x1E69E7CD0];
      sub_1D5EE5B54(&v55);
      v24 = xmmword_1D727F020;
LABEL_18:
      *a1 = v24;
      break;
  }
}

id FeedGroupItem.debugScoreProfile.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B69BE0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedHeadline(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for FeedGroupItem(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50814(v1, v22, type metadata accessor for FeedGroupItem);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v32 = *(v22 + 7);
      v52 = *(v22 + 6);
      v53[0] = v32;
      *(v53 + 9) = *(v22 + 121);
      v33 = *(v22 + 3);
      v48 = *(v22 + 2);
      v49 = v33;
      v34 = *(v22 + 5);
      v50 = *(v22 + 4);
      v51 = v34;
      v35 = *(v22 + 1);
      v46 = *v22;
      v47 = v35;
      v36 = *(&v49 + 1);
      sub_1D5ECF320(&v46);
      goto LABEL_15;
    case 2u:
    case 3u:
    case 4u:
    case 9u:
    case 0xBu:
    case 0xCu:
      v23 = type metadata accessor for FeedGroupItem;
      v24 = v22;
      goto LABEL_3;
    case 5u:
      sub_1D5D65494(v22, v18, type metadata accessor for FeedHeadline);
      v36 = [v18[5] scoreProfile];
      v37 = type metadata accessor for FeedHeadline;
      v38 = v18;
      goto LABEL_14;
    case 6u:
      sub_1D5D65494(v22, v13, type metadata accessor for FeedWebEmbed);
      sub_1D5D50814(&v13[*(v10 + 48)], v9, sub_1D5B69BE0);
      if ((*(v15 + 48))(v9, 1, v14) == 1)
      {
        sub_1D5D5113C(v13, type metadata accessor for FeedWebEmbed);
        v23 = sub_1D5B69BE0;
        v24 = v9;
LABEL_3:
        sub_1D5D5113C(v24, v23);
        result = 0;
      }

      else
      {
        v45 = [v9[5] scoreProfile];
        sub_1D5D5113C(v13, type metadata accessor for FeedWebEmbed);
        sub_1D5D5113C(v9, type metadata accessor for FeedHeadline);
        result = v45;
      }

      break;
    case 7u:
      v39 = *v22;
      v40 = [*v22 backingTag];
      v41 = [v40 identifier];
      v42 = sub_1D726207C();
      v44 = v43;

      v51 = xmmword_1D7279980;
      v52 = 0u;
      memset(v53, 0, sizeof(v53));
      v54 = 0;

      *&v46 = v42;
      *(&v46 + 1) = v44;
      *&v47 = v40;
      goto LABEL_12;
    case 8u:
      goto LABEL_5;
    case 0xAu:
      sub_1D5BF6680(*(v22 + 3), *(v22 + 4));
LABEL_5:
      swift_unknownObjectRelease();

      result = 0;
      break;
    case 0xDu:
      sub_1D5D65494(v22, v5, type metadata accessor for FeedRecipe);
      v36 = [v5[7] scoreProfile];
      v37 = type metadata accessor for FeedRecipe;
      v38 = v5;
LABEL_14:
      sub_1D5D5113C(v38, v37);
LABEL_15:
      result = v36;
      break;
    default:
      v26 = *v22;
      v27 = *(v22 + 1);
      v28 = [swift_unknownObjectRetain() identifier];
      v29 = sub_1D726207C();
      v31 = v30;

      v51 = xmmword_1D7279980;
      v52 = 0u;
      memset(v53, 0, sizeof(v53));
      v54 = 0;
      swift_unknownObjectRelease();

      *&v46 = v29;
      *(&v46 + 1) = v31;
      *&v47 = v26;
LABEL_12:
      BYTE8(v47) = 0;
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      *&v48 = 0;
      BYTE8(v48) = 0;
      *&v50 = 0;
      *(&v50 + 1) = MEMORY[0x1E69E7CD0];
      sub_1D5EE5B54(&v46);
      result = 0;
      break;
  }

  return result;
}

uint64_t _s8NewsFeed0B9GroupItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D67924A8(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v7[*(v8 + 56)];
  sub_1D5D50814(a1, v7, type metadata accessor for FeedGroupItem);
  sub_1D5D50814(a2, v9, type metadata accessor for FeedGroupItem);
  type metadata accessor for FeedGroupItem(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_10;
    case 2u:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 4u:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 7u:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    case 8u:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_30;
      }

      goto LABEL_10;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 0xAu:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
LABEL_5:
        sub_1D5D5113C(v9, type metadata accessor for FeedGroupItem);
        v10 = 1;
        v9 = v7;
      }

      else
      {
LABEL_9:
        sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
LABEL_10:
        v10 = 0;
      }

      break;
    default:
      sub_1D5D5113C(v7, type metadata accessor for FeedGroupItem);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_10;
      }

LABEL_30:
      v10 = 1;
      break;
  }

  sub_1D5D5113C(v9, type metadata accessor for FeedGroupItem);
  return v10;
}

void sub_1D6792440(uint64_t a1)
{
  if (!qword_1EDF208B8)
  {
    sub_1D5B49474(255, &qword_1EDF208C0, &protocol descriptor for FormatContentSelectorProviding);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF208B8);
    }
  }
}

void sub_1D67924A8(uint64_t a1)
{
  if (!qword_1EDF34960)
  {
    type metadata accessor for FeedGroupItem(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF34960);
    }
  }
}

uint64_t sub_1D679250C()
{
  v1 = type metadata accessor for SportsDataVisualizationResponseScoreItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SportsDataVisualizationResponseItem(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6794728(v0, v8, type metadata accessor for SportsDataVisualizationResponseItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v10 = *v8;
        v11 = v8[1];
        v18[0] = 0;
        v18[1] = 0xE000000000000000;
        sub_1D7263D4C();

        strcpy(v18, "injuryReport::");
        HIBYTE(v18[1]) = -18;

LABEL_15:
        MEMORY[0x1DA6F9910](v10, v11);

        swift_bridgeObjectRelease_n();
        goto LABEL_16;
      }

      v10 = *v8;
      v11 = v8[1];
      v12 = 0x6579616C5079656BLL;
      v13 = 0xEB000000003A3A72;
    }

    else
    {
      v10 = *v8;
      v11 = v8[1];
      if (EnumCaseMultiPayload == 3)
      {
        v12 = 0x65726F6353786F62;
        v13 = 0xEA00000000003A3ALL;
      }

      else
      {
        v12 = 0x726F6353656E696CLL;
        v13 = 0xEB000000003A3A65;
      }
    }

    v18[0] = v12;
    v18[1] = v13;

    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D6794934(v8, v4, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    strcpy(v18, "score::");
    v18[1] = 0xE700000000000000;
    MEMORY[0x1DA6F9910](*v4, v4[1]);
    v16 = v18[0];
    sub_1D6794790(v4, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    return v16;
  }

  v14 = *v8;
  v15 = v8[1];
  if (EnumCaseMultiPayload == 1)
  {
    strcpy(v18, "standing::");
    BYTE3(v18[1]) = 0;
    HIDWORD(v18[1]) = -369098752;

    MEMORY[0x1DA6F9910](v14, v15);

    swift_bridgeObjectRelease_n();
  }

  else
  {
    strcpy(v18, "bracket::");
    WORD1(v18[1]) = 0;
    HIDWORD(v18[1]) = -385875968;

    MEMORY[0x1DA6F9910](v14, v15);

    swift_bridgeObjectRelease_n();
  }

LABEL_16:

  return v18[0];
}

uint64_t sub_1D6792888()
{
  v1 = type metadata accessor for SportsDataVisualizationResponseScoreItem(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SportsDataVisualizationResponseItem(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6794728(v0, v8, type metadata accessor for SportsDataVisualizationResponseItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v10 = *v8;
LABEL_6:

    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D6794934(v8, v4, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    v10 = *v4;

    sub_1D6794790(v4, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    return v10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v10 = *v8;

    goto LABEL_6;
  }

  v10 = *v8;

LABEL_7:

  return v10;
}

char *sub_1D6792A50()
{
  v1 = v0;
  v2 = type metadata accessor for SportsDataVisualizationResponseScoreItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for SportsDataVisualizationResponseItem(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6794728(v1, v14, type metadata accessor for SportsDataVisualizationResponseItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v23 = v14[8];

        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
          v26 = *(v3 + 72);
          v20 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1D6794728(v25, v6, type metadata accessor for SportsDataVisualizationResponseScoreItem);
            v29 = *(v6 + 2);
            v28 = *(v6 + 3);

            sub_1D6794790(v6, type metadata accessor for SportsDataVisualizationResponseScoreItem);
            if (v28)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = sub_1D5B858EC(0, *(v20 + 16) + 1, 1, v20);
              }

              v31 = *(v20 + 16);
              v30 = *(v20 + 24);
              if (v31 >= v30 >> 1)
              {
                v20 = sub_1D5B858EC((v30 > 1), v31 + 1, 1, v20);
              }

              *(v20 + 16) = v31 + 1;
              v27 = v20 + 16 * v31;
              *(v27 + 32) = v29;
              *(v27 + 40) = v28;
            }

            v25 += v26;
            --v24;
          }

          while (v24);
          goto LABEL_6;
        }

        return MEMORY[0x1E69E7CC0];
      }

      v16 = type metadata accessor for SportsDataVisualizationResponseItem;
      v17 = v14;
    }

    else
    {
      sub_1D6794934(v14, v10, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v21 = *(v10 + 3);
      if (v21)
      {
        v22 = *(v10 + 2);
        sub_1D5C3C480();
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_1D7273AE0;
        *(v20 + 32) = v22;
        *(v20 + 40) = v21;

        sub_1D6794790(v10, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        return v20;
      }

      v16 = type metadata accessor for SportsDataVisualizationResponseScoreItem;
      v17 = v10;
    }

    sub_1D6794790(v17, v16);
    return MEMORY[0x1E69E7CC0];
  }

  v18 = v14[2];
  v19 = v14[3];
  sub_1D5C3C480();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7273AE0;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;

LABEL_6:

  return v20;
}

uint64_t sub_1D6792DFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  sub_1D6794F28(0, &qword_1EDF03888, sub_1D679488C, &type metadata for SportsDataVisualizationResponseItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v67 = v3;
  v61 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v56 - v5;
  v60 = type metadata accessor for SportsDataVisualizationResponseItem(0);
  MEMORY[0x1EEE9AC00](v60, v7);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v62 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v59 = (&v56 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v56 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v56 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v56 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v56 - v32;
  v34 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1D679488C();
  v65 = v6;
  v35 = v68;
  sub_1D7264B0C();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1(v84);
  }

  v36 = v29;
  v57 = v25;
  v58 = v21;
  v37 = v62;
  v38 = v63;
  v39 = v64;
  v68 = v33;
  v40 = v66;
  sub_1D67948E0();
  v41 = v65;
  sub_1D726431C();
  if (LOBYTE(v70[0]) <= 2u)
  {
    if (LOBYTE(v70[0]))
    {
      if (LOBYTE(v70[0]) == 1)
      {
        sub_1D5B68374(v84, v69);
        v45 = sub_1D683C508(v69, v70);
        (*(v61 + 8))(v41, v67, v45);
        v46 = v70[1];
        v47 = v73;
        v44 = v57;
        *v57 = v70[0];
        v44[1] = v46;
        v48 = v72;
        *(v44 + 1) = v71;
        *(v44 + 2) = v48;
        *(v44 + 48) = v47;
      }

      else
      {
        sub_1D5B68374(v84, v70);
        sub_1D6EBE570(v70, v74);
        (*(v61 + 8))(v41, v67);
        v52 = v75[0];
        v44 = v58;
        *(v58 + 2) = v74[2];
        *(v44 + 3) = v52;
        *(v44 + 57) = *(v75 + 9);
        v53 = v74[1];
        *v44 = v74[0];
        *(v44 + 1) = v53;
      }

      goto LABEL_17;
    }

    sub_1D5B68374(v84, v70);
    v39 = v36;
    sub_1D69BF4FC(v70, v36);
    (*(v61 + 8))(v41, v67);
    goto LABEL_18;
  }

  if (LOBYTE(v70[0]) > 4u)
  {
    if (LOBYTE(v70[0]) == 5)
    {
      sub_1D5B68374(v84, v70);
      sub_1D5F0E06C(v70, v80);
      (*(v61 + 8))(v41, v67);
      v49 = v80[1];
      *v38 = v80[0];
      v38[1] = v49;
      v38[2] = v81[0];
      *(v38 + 41) = *(v81 + 9);
      swift_storeEnumTagMultiPayload();
      v50 = v38;
      goto LABEL_19;
    }

    sub_1D5B68374(v84, v70);
    sub_1D6725B10(v70, v82);
    (*(v61 + 8))(v41, v67);
    v54 = v82[1];
    *v39 = v82[0];
    v39[1] = v54;
    v39[2] = v83[0];
    *(v39 + 41) = *(v83 + 9);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    v50 = v39;
    goto LABEL_19;
  }

  if (LOBYTE(v70[0]) == 3)
  {
    sub_1D5B68374(v84, v70);
    sub_1D7046504(v70, v76);
    (*(v61 + 8))(v41, v67);
    v43 = v76[1];
    v44 = v59;
    *v59 = v76[0];
    *(v44 + 1) = v43;
    *(v44 + 2) = v77[0];
    *(v44 + 41) = *(v77 + 9);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    v50 = v44;
    goto LABEL_19;
  }

  sub_1D5B68374(v84, v70);
  sub_1D70740A8(v70, v78);
  (*(v61 + 8))(v41, v67);
  v51 = v78[1];
  *v37 = v78[0];
  v37[1] = v51;
  v37[2] = v79[0];
  *(v37 + 41) = *(v79 + 9);
  swift_storeEnumTagMultiPayload();
  v50 = v37;
LABEL_19:
  v55 = v68;
  sub_1D6794934(v50, v68, type metadata accessor for SportsDataVisualizationResponseItem);
  sub_1D6794934(v55, v40, type metadata accessor for SportsDataVisualizationResponseItem);
  return __swift_destroy_boxed_opaque_existential_1(v84);
}

double sub_1D6793508(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SportsDataVisualizationResponseScoreItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsDataVisualizationResponseItem(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6794F28(0, &qword_1EC88B508, sub_1D679488C, &type metadata for SportsDataVisualizationResponseItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v55 = v12;
  v56 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v53 - v14;
  v16 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D679488C();
  v63 = v15;
  sub_1D7264B5C();
  sub_1D6794728(v2, v11, type metadata accessor for SportsDataVisualizationResponseItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v23 = *v11;
        v24 = *(v11 + 1);
        v25 = *(v11 + 2);
        v26 = *(v11 + 3);
        v28 = *(v11 + 4);
        v27 = *(v11 + 5);
        v29 = v11[48];
        LOBYTE(v60) = 1;
        sub_1D679499C();
        v30 = v55;
        v31 = v63;
        v32 = v54;
        sub_1D726443C();
        if (v32)
        {
          (*(v56 + 8))(v31, v30);
        }

        else
        {
          *&v60 = v23;
          *(&v60 + 1) = v24;
          v61.n128_u64[0] = v25;
          v61.n128_u64[1] = v26;
          *v62 = v28;
          *&v62[8] = v27;
          v62[16] = v29;
          sub_1D683CB28(v53, v33);
          (*(v56 + 8))(v63, v30);
        }
      }

      else
      {
        v42 = *(v11 + 3);
        *v62 = *(v11 + 2);
        *&v62[16] = v42;
        *&v62[25] = *(v11 + 57);
        v43 = *(v11 + 1);
        v60 = *v11;
        v61 = v43;
        LOBYTE(v57) = 2;
        sub_1D679499C();
        v44 = v55;
        v45 = v63;
        v46 = v54;
        sub_1D726443C();
        if (!v46)
        {
          *v59 = *v62;
          *&v59[16] = *&v62[16];
          *&v59[25] = *&v62[25];
          v57 = v60;
          v58 = v61;
          sub_1D6EBEECC(v53, v61);
        }

        (*(v56 + 8))(v45, v44);
        sub_1D5FC4DE4(&v60);
      }
    }

    else
    {
      sub_1D6794934(v11, v7, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      LOBYTE(v60) = 0;
      sub_1D679499C();
      v38 = v55;
      v39 = v63;
      v40 = v54;
      sub_1D726443C();
      if (!v40)
      {
        sub_1D69BFD38(v53, v41);
      }

      sub_1D6794790(v7, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      (*(v56 + 8))(v39, v38);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    v34 = v63;
    if (EnumCaseMultiPayload == 5)
    {
      v35 = *(v11 + 1);
      v60 = *v11;
      v61 = v35;
      *v62 = *(v11 + 2);
      *&v62[9] = *(v11 + 41);
      LOBYTE(v57) = 5;
      sub_1D679499C();
      v36 = v55;
      v37 = v54;
      sub_1D726443C();
      if (!v37)
      {
        v57 = v60;
        v58 = v61;
        *v59 = *v62;
        *&v59[9] = *&v62[9];
        sub_1D5F0DE38(v53);
      }

      (*(v56 + 8))(v34, v36);
      sub_1D5F0E674(&v60);
    }

    else
    {
      v50 = *(v11 + 1);
      v60 = *v11;
      v61 = v50;
      *v62 = *(v11 + 2);
      *&v62[9] = *(v11 + 41);
      LOBYTE(v57) = 6;
      sub_1D679499C();
      v51 = v55;
      v52 = v54;
      sub_1D726443C();
      if (!v52)
      {
        v57 = v60;
        v58 = v61;
        *v59 = *v62;
        *&v59[9] = *&v62[9];
        sub_1D67258D8(v53);
      }

      (*(v56 + 8))(v34, v51);
      sub_1D6726074(&v60);
    }
  }

  else
  {
    v18 = v63;
    if (EnumCaseMultiPayload == 3)
    {
      v19 = *(v11 + 1);
      v60 = *v11;
      v61 = v19;
      *v62 = *(v11 + 2);
      *&v62[9] = *(v11 + 41);
      LOBYTE(v57) = 3;
      sub_1D679499C();
      v20 = v55;
      v21 = v54;
      sub_1D726443C();
      if (!v21)
      {
        v57 = v60;
        v58 = v61;
        *v59 = *v62;
        *&v59[9] = *&v62[9];
        sub_1D7046870(v53);
      }

      (*(v56 + 8))(v18, v20);
      sub_1D6794A44(&v60);
    }

    else
    {
      v47 = *(v11 + 1);
      v60 = *v11;
      v61 = v47;
      *v62 = *(v11 + 2);
      *&v62[9] = *(v11 + 41);
      LOBYTE(v57) = 4;
      sub_1D679499C();
      v48 = v55;
      v49 = v54;
      sub_1D726443C();
      if (!v49)
      {
        v57 = v60;
        v58 = v61;
        *v59 = *v62;
        *&v59[9] = *&v62[9];
        sub_1D7074414(v53);
      }

      (*(v56 + 8))(v18, v48);
      sub_1D67949F0(&v60);
    }
  }

  return result;
}

void sub_1D6793C40(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7079546465626D65 && a2 == 0xE900000000000065)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D6793CD0(uint64_t a1)
{
  v2 = sub_1D679488C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6793D0C(uint64_t a1)
{
  v2 = sub_1D679488C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6793D60(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D6793E94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D6794C28(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D6793EC4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEF474E49444E4154;
    v9 = 0x425F5354524F5053;
    if (v2 == 1)
    {
      v9 = 0x535F5354524F5053;
    }

    else
    {
      v8 = 0xEE0054454B434152;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x535F5354524F5053;
    }

    if (v10)
    {
      v12 = 0xEC00000045524F43;
    }

    else
    {
      v12 = v8;
    }

    *a1 = v11;
    a1[1] = v12;
  }

  else
  {
    v3 = 0x80000001D73BCEC0;
    v4 = 0xD000000000000013;
    if (v2 == 5)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x80000001D73BCEE0;
    }

    v5 = 0xD000000000000010;
    v6 = 0x80000001D73BCE80;
    if (v2 != 3)
    {
      v5 = 0xD000000000000011;
      v6 = 0x80000001D73BCEA0;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_1D67940A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[2] = a5;
  v14[1] = a4;
  sub_1D6794F28(0, &qword_1EC88B528, sub_1D6794E80, &type metadata for SportsDataVisualizationResponseDataSource.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6794E80();
  sub_1D7264B5C();
  v16 = 0;
  v12 = v14[3];
  sub_1D72643FC();
  if (!v12)
  {
    v15 = 1;
    sub_1D726437C();
  }

  return (*(v8 + 8))(v11, v7);
}