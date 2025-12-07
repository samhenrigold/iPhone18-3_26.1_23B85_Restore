void FormatLayoutViewRenderer.renderAction<A>(context:itemData:view:sourceItemData:actionSenderHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = a1;
  v79 = a8;
  v80 = a3;
  v12 = type metadata accessor for FormatItemNodeData(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v15 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v20 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v77 - v24;
  v27 = a2 + *(v26 + 32);
  v28 = *v27;
  v29 = *(v27 + 8);
  if (v29 <= 1)
  {
    v30 = v28;
    if (!v29)
    {
      v31 = swift_allocObject();
      swift_weakInit();
      (*(v16 + 16))(v25, v78, a7);
      v32 = (*(v16 + 80) + 40) & ~*(v16 + 80);
      v33 = swift_allocObject();
      v34 = v79;
      *(v33 + 2) = a7;
      *(v33 + 3) = v34;
      *(v33 + 4) = v31;
      (*(v16 + 32))(&v33[v32], v25, a7);
      *&v33[(v17 + v32 + 7) & 0xFFFFFFFFFFFFFFF8] = v30;
      v35 = v80;
      sub_1D61CA640(v30, 0);
      sub_1D61CA640(v30, 0);

      sub_1D725A7EC();
      v36 = v81;
      v37 = sub_1D725F64C();

      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = sub_1D61CA65C;
      v39[4] = v33;

      v40 = *(v35 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture);
      if (v40)
      {
        v41 = v40;
        [v41 setEnabled_];
      }

      sub_1D61CA538(v30, 0);

      return;
    }

    v57 = swift_allocObject();
    *(v57 + 16) = a5;
    *(v57 + 24) = a6;
    *(v57 + 32) = v30;
    v58 = v80;

    sub_1D725A7EC();
    v59 = v81;
    v60 = sub_1D725F64C();

    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = swift_allocObject();
    v62[2] = v61;
    v62[3] = sub_1D61CCD00;
    v62[4] = v57;

    v63 = *(v58 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture);
    if (v63)
    {
      v64 = v63;
      [v64 setEnabled_];
    }

LABEL_24:

    return;
  }

  if (v29 == 2)
  {
    v77 = v28;
    v42 = v23;
    v43 = swift_allocObject();
    swift_weakInit();
    sub_1D5BC885C(a2, &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FormatItemNodeData);
    (*(v16 + 16))(v20, v78, a7);
    v44 = (*(v42 + 80) + 40) & ~*(v42 + 80);
    v45 = (v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (*(v16 + 80) + v45 + 8) & ~*(v16 + 80);
    v47 = swift_allocObject();
    v48 = v79;
    *(v47 + 2) = a7;
    *(v47 + 3) = v48;
    *(v47 + 4) = v43;
    sub_1D61CCB4C(v15, &v47[v44], type metadata accessor for FormatItemNodeData);
    v49 = v77;
    *&v47[v45] = v77;
    (*(v16 + 32))(&v47[v46], v20, a7);
    v50 = v80;
    sub_1D61CA640(v49, 2);

    sub_1D725A7EC();
    v51 = v81;
    v52 = sub_1D725F64C();

    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = swift_allocObject();
    v54[2] = v53;
    v54[3] = sub_1D61CA554;
    v54[4] = v47;

    v55 = *(v50 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture);
    if (v55)
    {
      v56 = v55;
      [v56 setEnabled_];
    }

    else
    {
    }

    goto LABEL_24;
  }

  v65 = v80;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      sub_1D725A7EC();
      v70 = v81;
      v67 = sub_1D725F64C();

      v71 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v72 = swift_allocObject();
      v72[2] = v71;
      v72[3] = sub_1D61C637C;
      v72[4] = 0;
LABEL_17:

      v73 = *(v65 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture);
      if (v73)
      {
        [v73 setEnabled_];
      }

      return;
    }
  }

  else if (v28)
  {
    sub_1D725A7EC();
    v66 = v81;
    v67 = sub_1D725F64C();

    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v69 = swift_allocObject();
    v69[2] = v68;
    v69[3] = sub_1D61C6364;
    v69[4] = 0;
    goto LABEL_17;
  }

  sub_1D725A7CC();
  v74 = v81;
  if (v81)
  {
    v75 = sub_1D725F64C();
  }

  v76 = *(v65 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture);
  if (v76)
  {
    [v76 setEnabled_];
  }
}

double sub_1D61C5EF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v37 = a1;
  v35 = sub_1D725E84C();
  v7 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v8);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61BB5EC(0, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v33 - v12;
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FormatItemNodeLayoutContext(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v33 = a4;
    v27 = *(Strong + 288);
    (*(v14 + 16))(v18, v34, a5);

    v28 = swift_dynamicCast();
    v29 = *(v20 + 56);
    if (v28)
    {
      v29(v13, 0, 1, v19);
      sub_1D61CCB4C(v13, v23, type metadata accessor for FormatItemNodeLayoutContext);
      FeedItem.identifier.getter();
      v30 = sub_1D725A5DC();

      sub_1D61CCBB4(v23, type metadata accessor for FormatItemNodeLayoutContext);
      v27 = v30;
    }

    else
    {
      v29(v13, 1, 1, v19);
      sub_1D61CCAA4(v13, qword_1EDF22580, type metadata accessor for FormatItemNodeLayoutContext, MEMORY[0x1E69E6720], sub_1D61BB5EC);
    }

    (*(v7 + 104))(v36, *MEMORY[0x1E69D7FB8], v35);
    v39 = sub_1D725A60C();
    v40 = sub_1D61CAB08();
    v38 = v27;
    v41 = 0u;
    v42 = 0u;
    v43 = 1;
    sub_1D725E36C();
    swift_allocObject();

    v31 = v37;
    v32 = sub_1D725E34C();
    (*(v33 + 56))(*(v26 + 272), *(v26 + 280), v32);
  }

  return result;
}

void sub_1D61C6394(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
LABEL_20:
    v6 = sub_1D7263BFC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA6FB460](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      type metadata accessor for FormatVideoPlayerViewController();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        break;
      }

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_13;
      }
    }

    v12 = v11;

    if (swift_unknownObjectWeakLoadStrong())
    {
      a2(v12);
      swift_unknownObjectRelease();
    }
  }

  else
  {
LABEL_13:
  }
}

double sub_1D61C64F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for FormatLayoutViewRoute(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + 328);
    sub_1D5BC885C(a3, v15, type metadata accessor for FeedItem);
    swift_storeEnumTagMultiPayload();
    (*(a7 + 24))(v31, a6, a7);
    v20 = v31[0];
    v19 = v31[1];
    v21 = v31[2];
    v22 = v31[3];
    sub_1D61CC910(v18 + 40, &v26, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
    if (v27)
    {
      v25[1] = v20;
      v25[2] = v21;
      sub_1D5B63F14(&v26, v28);
      v23 = v29;
      v24 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      (*(v24 + 8))(v15, a1, a4, v23, v24);

      sub_1D61CCBB4(v15, type metadata accessor for FormatLayoutViewRoute);
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      sub_1D61CCAA4(&v26, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      v28[0] = v20;
      v28[1] = v19;
      v28[2] = v21;
      v29 = v22;
      sub_1D6C0A4BC(v15, a1, v28);
      sub_1D61CCBB4(v15, type metadata accessor for FormatLayoutViewRoute);
    }
  }

  return result;
}

void FormatLayoutViewRenderer.prepareForReuse<A, B>(context:layoutAttributes:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v106 = a5;
  v104 = a1;
  v105 = a4;
  v107 = a3;
  v6 = type metadata accessor for FormatVideoPlayerData(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v100 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 96);
  v10 = *(v9 + 16);
  if (!v10)
  {
    return;
  }

  v11 = (v9 + 32);
  v98 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  while (1)
  {
    v13 = *v11++;
    v12 = v13;
    v14 = (v13 >> 59) & 0x1E | (v13 >> 2) & 1;
    if (v14 > 4)
    {
      break;
    }

    if (v14 >= 3)
    {
      v108 = v11;
      if (v14 == 3)
      {
        sub_1D61CC870(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
        v42 = (swift_projectBox() + *(v41 + 48));
        v43 = *v42;
        v44 = v42[2];
        v102 = v42[3];
        v45 = v102;
        v103 = v44;
        v101 = v42[4];
        v46 = v101;
        v47 = *(v43 + 16);
        v48 = *(v47 + 64);
        v49 = *(v47 + 72);
        v50 = *(v43 + 32);

        sub_1D5EBC314(v44, v45, v46);

        v51 = sub_1D61C787C(v48, v49, v50, type metadata accessor for FormatButton, &unk_1F50F6F38);
        v53 = v52;

        v54 = *(v43 + 16);
        v55 = *&v51[OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView];

        v56 = v55;
        FormatLayoutViewRenderer.prepareForReuse<A, B>(context:layoutAttributes:view:)(v104, v54, v56, v105, v106);

        sub_1D5EBC358(v103, v102, v101);
      }

      else
      {
        v57 = (v12 & 0xFFFFFFFFFFFFFFBLL);
        v58 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v59 = v57[4];
        v60 = v57[5];
        v102 = v57[6];
        v61 = v102;
        v103 = v59;
        v62 = v58[4];
        v63 = v58[5];
        v64 = v58[13];

        sub_1D5EBC314(v59, v60, v61);

        v65 = sub_1D61C711C(v62, v63, v64);
        v67 = v66;

        v68 = v58[8];

        FormatLayoutViewRenderer.prepareForReuse<A, B>(context:layoutAttributes:view:)(v104, v68, v65, v105, v106);

        sub_1D5EBC358(v103, v60, v102);
      }

LABEL_19:

      v11 = v108;
    }

LABEL_4:
    if (!--v10)
    {
      return;
    }
  }

  if (v14 > 0x12)
  {
    goto LABEL_23;
  }

  if (((1 << v14) & 0x6BF80) != 0)
  {
    goto LABEL_4;
  }

  v108 = v11;
  if (v14 != 14)
  {
    if (v14 != 16)
    {
LABEL_23:
      if (v14 != 5)
      {
        v80 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v81 = v80[2];
        v82 = *(v81 + 64);
        v83 = *(v81 + 72);
        v84 = v80[4];

        v85 = sub_1D61C787C(v82, v83, v84, type metadata accessor for FormatStateView, &unk_1F50F6FD8);
        v87 = v86;

        v88 = *&v85[OBJC_IVAR____TtC8NewsFeed15FormatStateView_state + 8];
        if (v88 && (v89 = v80[3], *(v89 + 16)) && (v90 = *&v85[OBJC_IVAR____TtC8NewsFeed15FormatStateView_state], , v91 = sub_1D5B69D90(v90, v88), LOBYTE(v90) = v92, , (v90 & 1) != 0))
        {
          v93 = *(*(*(v89 + 56) + 8 * v91) + 32);
          v94 = *&v85[OBJC_IVAR____TtC8NewsFeed15FormatStateView_formatLayoutView];

          v95 = v94;
          FormatLayoutViewRenderer.prepareForReuse<A, B>(context:layoutAttributes:view:)(v104, v93, v95, v105, v106);
        }

        else
        {
        }
      }

      goto LABEL_4;
    }

    sub_1D61CAF6C(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
    v70 = *(swift_projectBox() + *(v69 + 48));
    v71 = OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes;
    v72 = *(v70 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
    v73 = *(v72 + 64);
    v74 = *(v72 + 72);
    v75 = *(v70 + 40);

    v76 = sub_1D61C711C(v73, v74, v75);
    v78 = v77;

    v79 = *(v70 + v71);
    v11 = v108;

    FormatLayoutViewRenderer.prepareForReuse<A, B>(context:layoutAttributes:view:)(v104, v79, v76, v105, v106);

    goto LABEL_4;
  }

  sub_1D61CC870(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
  v16 = v15;
  v17 = swift_projectBox();
  v18 = (v17 + *(v16 + 48));
  v19 = *v18;
  v20 = v18[1];
  v22 = v18[2];
  v21 = v18[3];
  v102 = v18[4];
  v103 = v21;
  sub_1D5BC885C(v17, v100, type metadata accessor for FormatVideoPlayerData);
  v23 = v19[4];
  v24 = v19[5];
  v25 = v19[12];
  v26 = v107;
  v27 = v98;
  swift_beginAccess();
  v28 = *(v26 + v27);
  v29 = *(v28 + 16);
  v99 = v20;
  v30 = v24;

  v101 = v22;
  v31 = v22;
  v32 = v102;
  v33 = v103;
  sub_1D5EBC314(v31, v103, v102);

  if (!v29)
  {
    goto LABEL_31;
  }

  v34 = sub_1D5B69D90(v23, v30);
  if ((v35 & 1) == 0)
  {
    goto LABEL_31;
  }

  v36 = *(*(v28 + 56) + 8 * v34);
  swift_endAccess();
  v37 = *(v36 + 56);
  if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) != 0x10)
  {
    goto LABEL_32;
  }

  v23 = *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v38 = [v23 view];
  if (v38)
  {
    v39 = v38;
    [v38 setAutoresizingMask_];
    if (v25)
    {
      [v39 setAutoresizingMask_];
    }

    v40 = v100;
    sub_1D70F1F40(v23, v100);

    sub_1D5EBC358(v101, v33, v32);
    sub_1D61CCBB4(v40, type metadata accessor for FormatVideoPlayerData);
    goto LABEL_19;
  }

  __break(1u);
LABEL_31:
  swift_endAccess();
LABEL_32:
  v109 = 0;
  v110 = 0xE000000000000000;
  sub_1D7263D4C();

  v109 = 0xD000000000000020;
  v110 = 0x80000001D73CD5F0;
  MEMORY[0x1DA6F9910](v23, v30);
  MEMORY[0x1DA6F9910](0x616C69617661202CLL, 0xEC0000003D656C62);
  type metadata accessor for FormatLayoutViewContainer();

  v96 = sub_1D7261DBC();
  MEMORY[0x1DA6F9910](v96);

  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D61C711C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v7 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16) || (v9 = sub_1D5B69D90(a1, a2), (v10 & 1) == 0))
  {
LABEL_25:
    swift_endAccess();
LABEL_27:
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](a1, a2);
    MEMORY[0x1DA6F9910](0x616C69617661202CLL, 0xEC0000003D656C62);
    type metadata accessor for FormatLayoutViewContainer();

    v24 = sub_1D7261DBC();
    MEMORY[0x1DA6F9910](v24);

    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = *(v11 + 56);

  v13 = sub_1D6C141D0(v12);

  v14 = swift_dynamicCastClass();
  if (!v14)
  {

    goto LABEL_27;
  }

  v15 = v14;
  v16 = *(v11 + 64);
  [v16 setAutoresizingMask_];
  if (a3)
  {
    [v16 setAutoresizingMask_];
  }

  v17 = *(v11 + 72);
  if (!(v17 >> 62))
  {
    a2 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a2)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  a2 = sub_1D7263BFC();
  if (a2)
  {
LABEL_8:
    if (a2 >= 1)
    {

      v18 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1DA6FB460](v18, v17);
          if (a3)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v19 = *(v17 + 8 * v18 + 32);
          if (a3)
          {
LABEL_16:
            v20 = sub_1D5E27C2C(&unk_1F50F6F60);
            type metadata accessor for FormatResizeAuto();
            v21 = swift_allocObject();
            swift_beginAccess();
            *(v21 + 16) = v20;
            [v19 setAutoresizingMask_];
            [v19 setAutoresizingMask_];

            goto LABEL_11;
          }
        }

        [v19 setAutoresizingMask_];
LABEL_11:
        ++v18;

        if (a2 == v18)
        {

          goto LABEL_18;
        }
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_18:
  if (((*(v11 + 56) >> 59) & 0x1E | (*(v11 + 56) >> 2) & 1) == 7)
  {
    v22 = *(v11 + 64);

    v22;
  }

  else
  {
    *(v11 + 64);
    sub_1D605B2D8(MEMORY[0x1E69E7CC0]);
  }

  return v15;
}

unint64_t sub_1D61C74E8(unint64_t a1, char **a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16) || (v9 = sub_1D5B69D90(a1, a2), (v10 & 1) == 0))
  {
LABEL_24:
    swift_endAccess();
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](a1, a2);
    MEMORY[0x1DA6F9910](0x616C69617661202CLL, 0xEC0000003D656C62);
    type metadata accessor for FormatLayoutViewContainer();

    v22 = sub_1D7261DBC();
    MEMORY[0x1DA6F9910](v22);

    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = *(v11 + 56);

  v13 = sub_1D6C141D0(v12);

  v14 = *(v11 + 64);
  a2 = &selRef_setHyphenationFactor_;
  [v14 setAutoresizingMask_];
  if (a3)
  {
    [v14 setAutoresizingMask_];
  }

  a1 = *(v11 + 72);
  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  v15 = sub_1D7263BFC();
  if (v15)
  {
LABEL_7:
    if (v15 >= 1)
    {
      v23 = v11;

      v16 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1DA6FB460](v16, a1);
          if (a3)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v17 = *(a1 + 8 * v16 + 32);
          if (a3)
          {
LABEL_15:
            v18 = sub_1D5E27C2C(&unk_1F50F7000);
            type metadata accessor for FormatResizeAuto();
            v19 = swift_allocObject();
            swift_beginAccess();
            *(v19 + 16) = v18;
            [v17 setAutoresizingMask_];
            [v17 setAutoresizingMask_];

            goto LABEL_10;
          }
        }

        [v17 setAutoresizingMask_];
LABEL_10:
        ++v16;

        if (v15 == v16)
        {

          v11 = v23;
          goto LABEL_17;
        }
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_17:
  if (((*(v11 + 56) >> 59) & 0x1E | (*(v11 + 56) >> 2) & 1) == 7)
  {
    v20 = *(v11 + 64);

    v20;
  }

  else
  {
    *(v11 + 64);
    sub_1D605B2D8(MEMORY[0x1E69E7CC0]);
  }

  return v13;
}

uint64_t sub_1D61C787C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t a5)
{
  v11 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v12 = *(v5 + v11);
  v31 = a2;
  if (!*(v12 + 16) || (v13 = sub_1D5B69D90(a1, a2), (v14 & 1) == 0))
  {
LABEL_25:
    swift_endAccess();
LABEL_27:
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](a1, v31);
    MEMORY[0x1DA6F9910](0x616C69617661202CLL, 0xEC0000003D656C62);
    type metadata accessor for FormatLayoutViewContainer();

    v29 = sub_1D7261DBC();
    MEMORY[0x1DA6F9910](v29);

    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  swift_endAccess();
  v16 = *(v15 + 56);

  v17 = sub_1D6C141D0(v16);

  (a4)(0);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

    goto LABEL_27;
  }

  v19 = v18;
  v20 = *(v15 + 64);
  [v20 setAutoresizingMask_];
  if (a3)
  {
    [v20 setAutoresizingMask_];
  }

  v21 = *(v15 + 72);
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v22 = sub_1D7263BFC();
  if (v22)
  {
LABEL_8:
    if (v22 >= 1)
    {
      v30 = v19;

      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1DA6FB460](v23, v21);
          if (a3)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v24 = *(v21 + 8 * v23 + 32);
          if (a3)
          {
LABEL_16:
            v25 = sub_1D5E27C2C(a5);
            type metadata accessor for FormatResizeAuto();
            v26 = swift_allocObject();
            swift_beginAccess();
            *(v26 + 16) = v25;
            [v24 setAutoresizingMask_];
            [v24 setAutoresizingMask_];

            goto LABEL_11;
          }
        }

        [v24 setAutoresizingMask_];
LABEL_11:
        ++v23;

        if (v22 == v23)
        {

          v19 = v30;
          goto LABEL_18;
        }
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_18:
  if (((*(v15 + 56) >> 59) & 0x1E | (*(v15 + 56) >> 2) & 1) == 7)
  {
    v27 = *(v15 + 64);

    v27;
  }

  else
  {
    *(v15 + 64);
    sub_1D605B2D8(MEMORY[0x1E69E7CC0]);
  }

  return v19;
}

uint64_t sub_1D61C7C60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a1 + 96);
  if (v4)
  {
    v5 = *(v4 + 152);
    v22 = *(v4 + 136);
    v23 = v5;
    v24 = *(v4 + 168);
    v25 = *(v4 + 184);
    v6 = *(v4 + 120);
    v20 = *(v4 + 104);
    v21 = v6;
    sub_1D61CC910(&v20, &v14, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v7 = 0uLL;
    v12 = -2;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_1D6932044(&v14, a3);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  return sub_1D61CCAA4(&v20, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
}

uint64_t sub_1D61C7DA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a1 + 96);
  if (v4)
  {
    v5 = *(v4 + 248);
    v22 = *(v4 + 232);
    v23 = v5;
    v25 = *(v4 + 280);
    v6 = *(v4 + 216);
    v20 = *(v4 + 200);
    v21 = v6;
    v24 = *(v4 + 264);
    sub_1D61CC910(&v20, &v14, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v7 = 0uLL;
    v12 = -2;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_1D6932044(&v14, a3);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  return sub_1D61CCAA4(&v20, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
}

uint64_t sub_1D61C7EF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a1 + 96);
  if (v4)
  {
    v5 = *(v4 + 192);
    v22 = *(v4 + 176);
    v23 = v5;
    v24 = *(v4 + 208);
    v25 = *(v4 + 224);
    v6 = *(v4 + 160);
    v20 = *(v4 + 144);
    v21 = v6;
    sub_1D61CC910(&v20, &v14, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v7 = 0uLL;
    v12 = -2;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_1D6932044(&v14, a3);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  return sub_1D61CCAA4(&v20, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
}

double sub_1D61C8034(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      v43 = a6;
      v44 = a7;
      v28 = *a4;
      v29 = *(*a4 + 24);
      if (*(v29 + 16) && (v30 = sub_1D6D62AD4(v22), (v31 & 1) != 0))
      {
        v32 = a5;
        v33 = (*(v29 + 56) + 16 * v30);
      }

      else
      {
        v32 = a5;
        v33 = (v28 + 16);
      }

      v34 = *v33;
      v35 = *(v28 + 16);
      v37 = *(v35 + 64);
      v36 = *(v35 + 72);
      v45 = *(v25 + 272);
      v38 = swift_allocObject();
      v39 = MEMORY[0x1E69E7CC0];
      *(v38 + 48) = MEMORY[0x1E69E7CC0];
      *(v38 + 56) = v39;
      *(v38 + 96) = 0;
      swift_unknownObjectWeakInit();
      *(v38 + 16) = v37;
      *(v38 + 24) = v36;
      *(v38 + 96) = &off_1F51E2E28;
      *(v38 + 104) = 0;
      swift_unknownObjectWeakAssign();
      if (v32)
      {
        v40 = 6;
      }

      else
      {
        v40 = *(v34 + 112);
      }

      *(v38 + 32) = v40;
      *(v38 + 72) = v45;
      *(v38 + 64) = v39;
      *(v38 + 40) = *(v34 + 104);
      v46[0] = a8;
      v46[1] = a9;
      v46[2] = a10;

      swift_unknownObjectRetain();

      sub_1D61BB650(v43, v34, v27, v44, v46, a11, v38, a12, a13, a16, a17);
      if ((v32 & 1) == 0)
      {
        *&v27[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] = 0;

        sub_1D6A5DE80(v41);
      }

      v42 = &v27[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier];
      swift_beginAccess();
      *v42 = 0;
      *(v42 + 1) = 0xE000000000000000;
    }

    else
    {
    }
  }

  return result;
}

double sub_1D61C8304(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[1] = a3;
  v30 = a7;
  v11 = type metadata accessor for FeedActionSender(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedAction(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FeedActionInternal(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BC885C(a1, v22, type metadata accessor for FeedActionInternal);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D61CCB4C(v22, v18, type metadata accessor for FeedAction);
    sub_1D5BC885C(v18, v14, type metadata accessor for FeedAction);
    v25 = *(a1 + *(type metadata accessor for FeedActionSenderInternal(0) + 20));
    *&v14[*(v11 + 20)] = v25;
    v26 = v25;
    a4(v14);
    sub_1D61CCBB4(v14, type metadata accessor for FeedActionSender);
    sub_1D61CCBB4(v18, type metadata accessor for FeedAction);
    return result;
  }

  if (*v22)
  {
    if (*v22 == 1)
    {
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        return result;
      }

      v24 = (*(a8 + 8))(v30, a8);
      sub_1D71AE300(v24);
    }

    else
    {
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        return result;
      }

      v28 = (*(a8 + 8))(v30, a8);
      sub_1D71AE324(v28);
    }
  }

  else
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    v27 = (*(a8 + 8))(v30, a8);
    sub_1D71AE2DC(v27);
  }

  return result;
}

double sub_1D61C8658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    MEMORY[0x1EEE9AC00](v14, v15);
    v16[2] = a5;
    v16[3] = a6;
    v16[4] = a7;
    v16[5] = a3;
    v16[6] = a4;
    v16[7] = a1;
    sub_1D71AE160(sub_1D61CCC14, v16);
  }

  return result;
}

uint64_t sub_1D61C8740(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a1 + 192);
  if (v4)
  {
    v5 = *(v4 + 144);
    v22 = *(v4 + 128);
    v23 = v5;
    v24 = *(v4 + 160);
    v25 = *(v4 + 176);
    v6 = *(v4 + 112);
    v20 = *(v4 + 96);
    v21 = v6;
    sub_1D61CC910(&v20, &v14, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v7 = 0uLL;
    v12 = -2;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_1D6932044(&v14, a3);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  return sub_1D61CCAA4(&v20, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
}

void sub_1D61C8880(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong layer];
    [v3 setMask_];
  }
}

double sub_1D61C88FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for FormatLayoutViewRoute(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = *(Strong + 328);
    sub_1D5BC885C(a3, v16, type metadata accessor for FeedItem);
    swift_storeEnumTagMultiPayload();
    (*(a8 + 24))(v32, a7, a8);
    v21 = v32[0];
    v20 = v32[1];
    v22 = v32[2];
    v23 = v32[3];
    sub_1D61CC910(v19 + 40, &v27, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
    if (v28)
    {
      v26[1] = v21;
      v26[2] = v22;
      sub_1D5B63F14(&v27, v29);
      v24 = v30;
      v25 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      (*(v25 + 8))(v16, a1, a4, v24, v25);

      sub_1D61CCBB4(v16, type metadata accessor for FormatLayoutViewRoute);
      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    else
    {
      sub_1D61CCAA4(&v27, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      v29[0] = v21;
      v29[1] = v20;
      v29[2] = v22;
      v30 = v23;
      sub_1D6C0A4BC(v16, a1, v29);
      sub_1D61CCBB4(v16, type metadata accessor for FormatLayoutViewRoute);
    }
  }

  return result;
}

uint64_t sub_1D61C8C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v23 = *a5;
      v24 = *(*a5 + 24);
      if (*(v24 + 16))
      {
        v25 = sub_1D5B69D90(a1, a2);
        if (v26)
        {
          v27 = *(*(v24 + 56) + 8 * v25);
          v28 = *(v23 + 16);
          v29 = *(v28 + 72);
          v35 = *(v28 + 64);
          v30 = *(v27 + 32);
          type metadata accessor for FormatAccessibilityRenderer();
          v31 = swift_allocObject();
          v36 = *(v20 + 272);
          v32 = MEMORY[0x1E69E7CC0];
          *(v31 + 48) = MEMORY[0x1E69E7CC0];
          *(v31 + 56) = v32;
          *(v31 + 96) = 0;
          swift_unknownObjectWeakInit();
          *(v31 + 16) = v35;
          *(v31 + 24) = v29;
          *(v31 + 96) = &off_1F51E2E28;
          *(v31 + 104) = 0;
          swift_unknownObjectWeakAssign();
          *(v31 + 32) = *(v30 + 112);
          *(v31 + 72) = v36;
          *(v31 + 64) = v32;
          *(v31 + 40) = *(v30 + 104);
          v33 = *(v27 + 32);
          memset(v37, 0, sizeof(v37));

          swift_unknownObjectRetain();

          sub_1D61BB650(a6, v33, v22, a7, v37, a8, v31, a9, a10, a12, a13);
          *&v22[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_accessibilityRenderer] = 0;

          v34 = &v22[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_identifier];
          swift_beginAccess();
          *v34 = 0;
          *(v34 + 1) = 0xE000000000000000;

          return v31;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D61C8E64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a1 + 144);
  if (v4)
  {
    v5 = *(v4 + 152);
    v22 = *(v4 + 136);
    v23 = v5;
    v24 = *(v4 + 168);
    v25 = *(v4 + 184);
    v6 = *(v4 + 120);
    v20 = *(v4 + 104);
    v21 = v6;
    sub_1D61CC910(&v20, &v14, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v7 = 0uLL;
    v12 = -2;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_1D6932044(&v14, a3);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  return sub_1D61CCAA4(&v20, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
}

double sub_1D61C8FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v20[10] = a11;

    MEMORY[0x1EEE9AC00](v18, v19);
    v20[2] = a8;
    v20[3] = a9;
    v20[4] = a10;
    v20[5] = a3;
    v20[6] = a4;
    v20[7] = a5;
    v20[8] = a6;
    v20[9] = a7;
    sub_1D71AE160(a11, v20);
  }

  return result;
}

uint64_t sub_1D61C90A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a1 + 144);
  if (v4)
  {
    v5 = *(v4 + 144);
    v22 = *(v4 + 128);
    v23 = v5;
    v24 = *(v4 + 160);
    v25 = *(v4 + 176);
    v6 = *(v4 + 112);
    v20 = *(v4 + 96);
    v21 = v6;
    sub_1D61CC910(&v20, &v14, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v11 = v24;
    v12 = v25;
  }

  else
  {
    v7 = 0uLL;
    v12 = -2;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  sub_1D6932044(&v14, a3);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  v20 = v14;
  v21 = v15;
  return sub_1D61CCAA4(&v20, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5B66EA4);
}

void sub_1D61C91E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = type metadata accessor for FormatLayoutViewRoute(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v30 = a4;
      v20 = *(v17 + 328);
      sub_1D5BC885C(a3, v15, type metadata accessor for FeedItem);
      swift_storeEnumTagMultiPayload();
      v21 = [v19 view];
      if (!v21)
      {
        __break(1u);
        return;
      }

      v22 = v21;
      (*(a8 + 24))(v36, a7, a8);
      v23 = v36[0];
      v24 = v36[1];
      v26 = v36[2];
      v25 = v36[3];
      sub_1D61CC910(v20 + 40, &v31, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      if (!v32)
      {
        sub_1D61CCAA4(&v31, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
        v33[0] = v23;
        v33[1] = v24;
        v33[2] = v26;
        v34 = v25;
        sub_1D6C0A4BC(v15, v22, v33);

        sub_1D61CCBB4(v15, type metadata accessor for FormatLayoutViewRoute);

        return;
      }

      v29[0] = v26;
      v29[1] = v20;
      v29[2] = v25;
      sub_1D5B63F14(&v31, v33);
      v28 = v34;
      v27 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      (*(v27 + 8))(v15, v22, v30, v28, v27);

      sub_1D61CCBB4(v15, type metadata accessor for FormatLayoutViewRoute);
      __swift_destroy_boxed_opaque_existential_1(v33);
    }
  }
}

double sub_1D61C9574(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D725E84C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7FB8], v5);
    v13 = *(v12 + 288);
    v19[5] = sub_1D725A60C();
    v19[6] = sub_1D61CAB08();
    v19[2] = v13;
    v20 = 0u;
    v21 = 0u;
    v22 = 1;
    sub_1D725E36C();
    swift_allocObject();

    v14 = a1;
    v15 = sub_1D725E34C();
    v16 = *(v12 + 280);
    v17 = *(a3 + 56);
    v18 = swift_unknownObjectRetain();
    v17(v18, v16, v15);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D61C973C(void *a1, void (*a2)(char *), uint64_t a3, char a4)
{
  v7 = type metadata accessor for FeedActionSender(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = a4;
  type metadata accessor for FeedAction(0);
  swift_storeEnumTagMultiPayload();
  *&v11[*(v8 + 28)] = a1;
  v12 = a1;
  a2(v11);
  return sub_1D61CCBB4(v11, type metadata accessor for FeedActionSender);
}

double sub_1D61C9814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a8;
  v48 = a6;
  v47 = a5;
  v50 = a1;
  v11 = type metadata accessor for FormatLayoutViewRoute(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v47 - v17;
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v47 - v21;
  v23 = type metadata accessor for FeedItem(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D61CC910(a3, v22, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
    if ((*(v24 + 48))(v22, 1, v23) == 1)
    {
      sub_1D61CCAA4(v22, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720], sub_1D61BB5EC);
      v29 = *(Strong + 328);
      sub_1D5BC885C(a4, v18, type metadata accessor for FeedItem);
      swift_storeEnumTagMultiPayload();
      (*(a9 + 24))(&v59, v49, a9);
      v30 = v59;
      v31 = v60;
      v32 = v61;
      v33 = v62;
      sub_1D61CC910(v29 + 40, &v52, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      if (v53)
      {
        v49 = v32;
        sub_1D5B63F14(&v52, &v54);
        v34 = v57;
        v35 = v58;
        __swift_project_boxed_opaque_existential_1(&v54, v57);
        (*(v35 + 8))(v18, v50, v47, v34, v35);

        v45 = type metadata accessor for FormatLayoutViewRoute;
        v46 = v18;
LABEL_10:
        sub_1D61CCBB4(v46, v45);
        __swift_destroy_boxed_opaque_existential_1(&v54);

        return result;
      }

      sub_1D61CCAA4(&v52, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      v54 = v30;
      v55 = v31;
      v56 = v32;
      v57 = v33;
      sub_1D6C0A4BC(v18, v50, &v54);
      sub_1D61CCBB4(v18, type metadata accessor for FormatLayoutViewRoute);
    }

    else
    {
      sub_1D61CCB4C(v22, v27, type metadata accessor for FeedItem);
      v36 = *(Strong + 328);
      sub_1D61CCC84(0);
      v38 = *(v37 + 48);
      sub_1D5BC885C(a4, v14, type metadata accessor for FeedItem);
      sub_1D5BC885C(v27, &v14[v38], type metadata accessor for FeedItem);
      swift_storeEnumTagMultiPayload();
      (*(a9 + 24))(&v59, v49, a9);
      v39 = v59;
      v40 = v60;
      v41 = v61;
      v42 = v62;
      sub_1D61CC910(v36 + 40, &v52, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      if (v53)
      {
        v48 = v41;
        v49 = v36;
        sub_1D5B63F14(&v52, &v54);
        v43 = v57;
        v44 = v58;
        __swift_project_boxed_opaque_existential_1(&v54, v57);
        (*(v44 + 8))(v14, v50, v47, v43, v44);

        sub_1D61CCBB4(v14, type metadata accessor for FormatLayoutViewRoute);
        v45 = type metadata accessor for FeedItem;
        v46 = v27;
        goto LABEL_10;
      }

      sub_1D61CCAA4(&v52, &unk_1EDF232F0, &qword_1EDF23300, &protocol descriptor for FormatLayoutViewRouterType, sub_1D5BFB8A8);
      v54 = v39;
      v55 = v40;
      v56 = v41;
      v57 = v42;
      sub_1D6C0A4BC(v14, v50, &v54);
      sub_1D61CCBB4(v14, type metadata accessor for FormatLayoutViewRoute);
      sub_1D61CCBB4(v27, type metadata accessor for FeedItem);
    }
  }

  return result;
}

void *FormatLayoutViewRenderer.deinit()
{
  MEMORY[0x1DA6FD660](v0 + 16);
  sub_1D5B87E10(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 224));

  swift_unknownObjectRelease();

  return v0;
}

uint64_t FormatLayoutViewRenderer.__deallocating_deinit()
{
  FormatLayoutViewRenderer.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1D61CA168(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D61BAB5C;
}

void (*sub_1D61CA234(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = FormatLayoutViewRenderer.analyticsDataProvider.modify(v2);
  return sub_1D5FE8C5C;
}

double sub_1D61CA2A4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1D61CA3F8(uint64_t a1, uint64_t a2)
{
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D61CA48C@<X0>(uint64_t a1@<X8>)
{
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  return sub_1D71B0070(v4, a1);
}

double sub_1D61CA538(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  else if (!a2)
  {
  }

  return result;
}

double sub_1D61CA554(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for FormatItemNodeData(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[4];
  v9 = *(v1 + v7);
  v10 = v1 + ((v7 + *(*(v3 - 8) + 80) + 8) & ~*(*(v3 - 8) + 80));

  return sub_1D61C64F8(a1, v8, v1 + v6, v9, v10, v3, v4);
}

void sub_1D61CA640(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
  }

  else if (!a2)
  {
  }
}

void sub_1D61CA6C8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 96);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    do
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v7 = *(v6 + 8 * v5);
      if (!((v7 >> 59) & 0x1E | (v7 >> 2) & 1))
      {
        v9 = *(v7 + 16);
        v8 = *(v7 + 24);
        v10 = v8[4];
        v11 = v8[5];
        v12 = v8[13];

        v13 = sub_1D61C787C(v10, v11, v12, type metadata accessor for FormatImageView, &unk_1F50F6F10);
        v15 = v14;
        v16 = v13;
        LOBYTE(v10) = sub_1D725FB9C();

        if ((v10 & 1) == 0)
        {
          goto LABEL_4;
        }

        v17 = v8[12];
        if (v17 && (v18 = *(v17 + 120), v18 != 3))
        {
          *&v28[0] = *(v17 + 120);
          sub_1D5D0AFBC(v18);
          v19 = sub_1D6FFCF10(a3);
          sub_1D5D0AFCC(*&v28[0]);
        }

        else
        {
          v19 = 0;
        }

        if ((v9 >> 61) > 1)
        {
          if (v9 >> 61 != 6)
          {
            goto LABEL_18;
          }

LABEL_4:

          v6 = v3 + 32;
          goto LABEL_5;
        }

        if (v9 >> 61 != 1)
        {
LABEL_18:

          return;
        }

        v20 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
        v28[5] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
        v28[6] = v20;
        v21 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
        v28[7] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
        v29 = v21;
        v22 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v28[1] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v28[2] = v22;
        v23 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        v28[3] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v28[4] = v23;
        v28[0] = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v24 = v29;
        sub_1D61CAA58(v28, v27);
        v24(v27, a3, v19);

        sub_1D61CAAB4(v28);
        v25 = v27[3];
        sub_1D61CCAA4(v27, &qword_1EDF3B6B0, &qword_1EDF3B6C0, MEMORY[0x1E69D7838], sub_1D5BFB8A8);

        v6 = v3 + 32;
        if (v25)
        {
          return;
        }
      }

LABEL_5:
      ++v5;
    }

    while (v4 != v5);
  }
}

unint64_t sub_1D61CAB08()
{
  result = qword_1EDF3BED0;
  if (!qword_1EDF3BED0)
  {
    sub_1D725A60C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BED0);
  }

  return result;
}

void sub_1D61CAB60(uint64_t a1)
{
  if (!qword_1EDF29EA0)
  {
    type metadata accessor for WebEmbedImageRequest(255);
    type metadata accessor for WebEmbedImageGenerator();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF29EA0);
    }
  }
}

void sub_1D61CABD4()
{
  v1 = *(v0 + 32);
  sub_1D7047510(*(v0 + 48), *(*(v0 + 56) + 112), *(*(v0 + 56) + 176), *(*(v0 + 56) + 192), *(*(v0 + 56) + 208));
  v2 = *v1;
  *v1 = v3;
}

uint64_t sub_1D61CAC28(uint64_t a1, uint64_t a2)
{
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1D61CACE4(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  v7 = (*(*(v6 - 8) + 80) + 48) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = *(type metadata accessor for FormatItemNodeData(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D61C9814(a1, v1[5], v1 + v7, v1 + v10, *(v1 + v11), v1 + ((v11 + *(*(v4 - 8) + 80) + 8) & ~*(*(v4 - 8) + 80)), v3, v4, v5);
}

double sub_1D61CAEB4(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = (*(*(v2[3] - 8) + 80) + 88) & ~*(*(v2[3] - 8) + 80);
  v4 = (*(*(v2[3] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D61C8FAC(a1, v2[5], (v2 + 6), v2 + v3, *(v2 + v4), *(v2 + v4 + 8), *(v2 + v4 + 16), v2[2], v2[3], v2[4], a2);
}

void sub_1D61CAF6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D61CAFE8(uint64_t a1)
{
  if (!qword_1EDF2CDF0[0])
  {
    type metadata accessor for FormatAdMetricsData(255);
    type metadata accessor for FormatAdMetricsNodeLayoutAttributes();
    sub_1D61BB5EC(255, qword_1EDF1FAC0, type metadata accessor for FormatFrameNodeLayoutAttributes, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_1EDF2CDF0);
    }
  }
}

uint64_t sub_1D61CB0A0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(v2[3] - 8) + 80) + 96) & ~*(*(v2[3] - 8) + 80);
  v4 = (*(*(v2[3] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D61C8C00(a1, a2, v2[5], v2[6], v2 + 7, v2 + v3, *(v2 + v4), *(v2 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v2[2], v2[3], v2[4]);
}

uint64_t objectdestroy_81Tm()
{
  v1 = *(v0 + 24);
  v2 = *(type metadata accessor for FeedItem(0) - 8);
  v96 = *(v2 + 64);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);

  v6 = v0 + v3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(v6 + 48) >= 0x12uLL)
      {
        goto LABEL_96;
      }

      goto LABEL_125;
    case 1u:

      if (*(v6 + 80) >= 0x12uLL)
      {
        goto LABEL_96;
      }

      goto LABEL_125;
    case 2u:

      v47 = type metadata accessor for FeedBannerAd(0);
      v48 = *(v47 + 20);
      v49 = sub_1D7260DDC();
      goto LABEL_95;
    case 3u:
      v95 = v1;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v50 = type metadata accessor for FeedHeadline(0);
      v51 = v50[10];
      v52 = v6 + v51 + *(type metadata accessor for FeedHeadline.State(0) + 24);
      v53 = type metadata accessor for SharedItem(0);
      if (!(*(*(v53 - 8) + 48))(v52, 1, v53))
      {
        v54 = sub_1D725891C();
        (*(*(v54 - 8) + 8))(v52, v54);

        v55 = *(v53 + 28);
        v56 = sub_1D72585BC();
        (*(*(v56 - 8) + 8))(v52 + v55, v56);
      }

      v57 = v50[11];
      v58 = sub_1D726045C();
      v59 = *(v58 - 8);
      if (!(*(v59 + 48))(v6 + v57, 1, v58))
      {
        (*(v59 + 8))(v6 + v57, v58);
      }

      v1 = v95;
      if (*(v6 + v50[12] + 8) >= 0x12uLL)
      {
      }

      if (*(v6 + v50[13]) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_125;
    case 4u:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      v94 = v1;

      v21 = type metadata accessor for FeedWebEmbed(0);
      v22 = v21[8];
      v23 = sub_1D72585BC();
      v24 = *(v23 - 8);
      v91 = *(v24 + 8);
      v91(v6 + v22, v23);
      v25 = v21[9];
      if (!(*(v24 + 48))(v6 + v25, 1, v23))
      {
        v91(v6 + v25, v23);
      }

      v90 = v23;

      v26 = v6 + v21[12];
      v27 = type metadata accessor for FeedHeadline(0);
      if (!(*(*(v27 - 1) + 48))(v26, 1, v27))
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v28 = v27[10];
        v86 = v26 + v28 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v88 = type metadata accessor for SharedItem(0);
        if (!(*(*(v88 - 8) + 48))(v86, 1))
        {
          v29 = sub_1D725891C();
          (*(*(v29 - 8) + 8))(v86, v29);

          v91(v86 + *(v88 + 28), v90);
        }

        v30 = v27[11];
        v31 = sub_1D726045C();
        v87 = *(v31 - 8);
        v89 = v30;
        v32 = v26 + v30;
        v33 = v31;
        if (!(*(v87 + 48))(v32, 1, v31))
        {
          (*(v87 + 8))(v26 + v89, v33);
        }

        if (*(v26 + v27[12] + 8) >= 0x12uLL)
        {
        }

        if (*(v26 + v27[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }
      }

      v34 = v6 + v21[13];
      v35 = type metadata accessor for WebEmbedDataVisualization(0);
      if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v36 = type metadata accessor for GenericDataVisualization(0);
          v91(v34 + *(v36 + 20), v90);
        }

        else
        {
        }
      }

      goto LABEL_124;
    case 5u:
      goto LABEL_81;
    case 6u:
      v60 = *(v6 + 281);
      if (v60 == 2)
      {
        goto LABEL_85;
      }

      if (v60 == 1)
      {

        if (*(v6 + 80) != 1)
        {
        }

        if (*(v6 + 128) >= 0x12uLL)
        {
        }

        v74 = *(v6 + 144);
        if (v74)
        {

          if (*(v6 + 224) != 1)
          {
          }

          if (*(v6 + 272) >= 0x12uLL)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        if (*(v6 + 281))
        {
          goto LABEL_125;
        }

LABEL_81:

        if (*(v6 + 80) != 1)
        {
        }

        if (*(v6 + 128) >= 0x12uLL)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_125;
    case 7u:
LABEL_85:

      swift_unknownObjectRelease();

      if (*(v6 + 88) != 1)
      {

        if (*(v6 + 120))
        {
          __swift_destroy_boxed_opaque_existential_1((v6 + 96));
        }
      }

      goto LABEL_125;
    case 8u:
      v94 = v1;

      v61 = v6 + *(type metadata accessor for FeedCustomItem(0) + 20);

      v62 = *(type metadata accessor for FormatCustomItem.Resolved(0) + 24);
      v63 = type metadata accessor for FormatCustomItem.Action(0);
      if (!(*(*(v63 - 8) + 48))(v61 + v62, 1, v63))
      {
        v64 = sub_1D72585BC();
        (*(*(v64 - 8) + 8))(v61 + v62, v64);
      }

LABEL_124:

      v1 = v94;
      goto LABEL_125;
    case 9u:

      if (*(v6 + 56))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 32));
      }

      if (*(v6 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 72));
      }

      if (*(v6 + 136))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 112));
      }

      goto LABEL_125;
    case 0xAu:

      v47 = type metadata accessor for FeedEngagementBanner(0);
      v48 = *(v47 + 20);
      v49 = sub_1D725C08C();
LABEL_95:
      (*(*(v49 - 8) + 8))(v6 + v48, v49);
      if (*(v6 + *(v47 + 32) + 8) >= 0x12uLL)
      {
        goto LABEL_96;
      }

      goto LABEL_125;
    case 0xBu:

      goto LABEL_125;
    case 0xCu:

      if (*(v6 + 40) >= 0x12uLL)
      {
      }

      if (*(v6 + 48) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      v37 = type metadata accessor for FeedRecipe(0);
      v38 = v37[9];
      v39 = v6 + v38 + *(type metadata accessor for FeedRecipe.State(0) + 20);
      v40 = type metadata accessor for SharedItem(0);
      if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
      {
        v41 = sub_1D725891C();
        (*(*(v41 - 8) + 8))(v39, v41);

        v42 = *(v40 + 28);
        v43 = sub_1D72585BC();
        (*(*(v43 - 8) + 8))(v39 + v42, v43);
      }

      v44 = (v6 + v37[10]);
      if (v44[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v44);
      }

      v45 = (v6 + v37[12]);
      if (v45[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v45);
      }

      v46 = (v6 + v37[13]);
      if (v46[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v46);
      }

      goto LABEL_125;
    case 0xDu:
      goto LABEL_68;
    case 0xEu:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v6 + 112))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 88));
      }

      if (*(v6 + 152))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 128));
      }

      if (*(v6 + 192))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 168));
      }

      goto LABEL_125;
    case 0xFu:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

LABEL_68:

      swift_unknownObjectRelease();
      goto LABEL_125;
    case 0x10u:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      v7 = v6 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
      swift_unknownObjectRelease();
      v8 = v7 + *(type metadata accessor for PuzzleStatistic(0) + 20);
      type metadata accessor for PuzzleStatisticCategory(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v78 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
          if (!(*(*(v78 - 8) + 48))(v8, 1, v78))
          {
            v79 = sub_1D725891C();
            (*(*(v79 - 8) + 8))(v8, v79);
            v80 = type metadata accessor for PuzzleLeaderboardEntry(0);

            v81 = v8 + *(v80 + 24);

            v82 = *(v81 + 40);
            if (v82 >> 60 != 15)
            {
              sub_1D5B952F8(*(v81 + 32), v82);
            }

LABEL_96:
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v65 = v8;
          v93 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
          v66 = *(v93 + 28);
          v67 = type metadata accessor for PuzzleStreak(0);
          v68 = *(*(v67 - 8) + 48);
          v92 = v66;
          v69 = v65 + v66;
          v70 = v65;
          if (!v68(v69, 1, v67))
          {
            v71 = sub_1D7257ADC();
            (*(*(v71 - 8) + 8))(v65 + v92, v71);
          }

          v72 = *(v93 + 32);
          if (!v68(v70 + v72, 1, v67))
          {
            v73 = sub_1D7257ADC();
            (*(*(v73 - 8) + 8))(v70 + v72, v73);
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_125;
        }

        type metadata accessor for PuzzleStatisticValue(0);
        v10 = swift_getEnumCaseMultiPayload();
        if (v10 == 6 || v10 == 5)
        {
          v11 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v11 - 8) + 48))(v8, 1, v11))
          {
            v12 = sub_1D7257ADC();
            (*(*(v12 - 8) + 8))(v8, v12);
          }
        }

        v13 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
        v14 = *(v13 + 20);
        v15 = swift_getEnumCaseMultiPayload();
        if (v15 == 6 || v15 == 5)
        {
          v16 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v16 - 8) + 48))(v8 + v14, 1, v16))
          {
            v17 = sub_1D7257ADC();
            (*(*(v17 - 8) + 8))(v8 + v14, v17);
          }
        }

        v18 = *(v13 + 24);
        v19 = swift_getEnumCaseMultiPayload();
        if (v19 == 6)
        {
          v84 = type metadata accessor for PuzzleStreak(0);
          if ((*(*(v84 - 8) + 48))(v8 + v18, 1, v84))
          {
            goto LABEL_125;
          }

          goto LABEL_129;
        }

        if (v19 == 5)
        {
          v20 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v20 - 8) + 48))(v8 + v18, 1, v20))
          {
LABEL_129:
            v85 = sub_1D7257ADC();
            (*(*(v85 - 8) + 8))(v8 + v18, v85);
          }
        }
      }

      else
      {
        type metadata accessor for PuzzleStatisticValue(0);
        v75 = swift_getEnumCaseMultiPayload();
        if (v75 == 6 || v75 == 5)
        {
          v76 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v76 - 8) + 48))(v8, 1, v76))
          {
            v77 = sub_1D7257ADC();
            (*(*(v77 - 8) + 8))(v8, v77);
          }
        }
      }

LABEL_125:

      (*(v4 + 8))(v0 + ((((v96 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v1);

      return swift_deallocObject();
    case 0x11u:

      if (*(v6 + 136) >= 3uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v6 + 240) < 0x12uLL)
      {
        goto LABEL_125;
      }

      goto LABEL_96;
    default:
      goto LABEL_125;
  }
}

void sub_1D61CC33C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for FeedItem(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D61C91E0(v0[5], v0[6], v0 + v5, *(v0 + v6), v0 + ((v6 + *(*(v2 - 8) + 80) + 8) & ~*(*(v2 - 8) + 80)), v1, v2, v3);
}

uint64_t sub_1D61CC41C(uint64_t a1, uint64_t a2)
{
  sub_1D61BB5EC(0, &qword_1EDF29E98, sub_1D61CAB60, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1D61CC4BC(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for FeedItem(0) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[5];
  v10 = *(v1 + v8);
  v11 = v1 + ((v8 + *(*(v4 - 8) + 80) + 8) & ~*(*(v4 - 8) + 80));

  return sub_1D61C88FC(a1, v9, v1 + v7, v10, v11, v3, v4, v5);
}

void sub_1D61CC60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {

    sub_1D5EBC314(a3, a4, a5);
  }
}

void sub_1D61CC678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {

    sub_1D5EBC358(a3, a4, a5);
  }
}

double sub_1D61CC6E4(uint64_t *a1)
{
  v2 = (*(*(*(v1 + 24) - 8) + 80) + 97) & ~*(*(*(v1 + 24) - 8) + 80);
  v3 = (*(*(*(v1 + 24) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D61C8034(a1, *(v1 + 40), *(v1 + 48), (v1 + 56), *(v1 + 96), v1 + v2, *(v1 + v3), *(v1 + v4), *(v1 + v4 + 8), *(v1 + v4 + 16), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

double sub_1D61CC7C8(uint64_t a1)
{
  v2 = (*(*(v1[3] - 8) + 80) + 48) & ~*(*(v1[3] - 8) + 80);
  v3 = v1 + ((*(*(v1[3] - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D61C8304(a1, v1[5], v1 + v2, *v3, *(v3 + 1), v1[2], v1[3], v1[4]);
}

void sub_1D61CC870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D61BB5EC(255, a4, a5, type metadata accessor for FormatAnimationNodeDataLayoutAttributes);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D61CC910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t objectdestroy_85Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 72))
  {
  }

  v5 = (v3 + 88) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1D61CCAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D61CCB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61CCBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D61CCC84(uint64_t a1)
{
  if (!qword_1EC8938A0)
  {
    type metadata accessor for FeedItem(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8938A0);
    }
  }
}

uint64_t FormatSectionDescriptor.identifier.getter()
{
  v1 = type metadata accessor for FormatContent.Resolved(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v12, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v12, v8);
  sub_1D61CD984(v8, v4, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v8, type metadata accessor for FormatPluginData);
  v13 = *v4;

  sub_1D61CCEF0(v4, type metadata accessor for FormatContent.Resolved);
  return v13;
}

uint64_t type metadata accessor for FormatSectionDescriptor(uint64_t a1)
{
  result = qword_1EDF0D3D0;
  if (!qword_1EDF0D3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D61CCEF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatSectionDescriptor.slotItems.getter()
{
  v1 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v8, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v8, v4);
  FormatContent.Resolved.slotItems.getter();
  v10 = v9;
  sub_1D61CCEF0(v4, type metadata accessor for FormatPluginData);
  return v10;
}

uint64_t FormatSectionDescriptor.formatContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v10, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v10, v6);
  sub_1D61CD984(v6, a1, type metadata accessor for FormatContent.Resolved);
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t FormatSectionDescriptor.hasItemConstrainingHeight.getter()
{
  v1 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatContent.Resolved(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v8, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v8, v4);
  sub_1D61CD984(v4, v12, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v4, type metadata accessor for FormatPluginData);
  v13 = FormatContent.Resolved.compilerOptionIdentifiers.getter();
  sub_1D61CCEF0(v12, type metadata accessor for FormatContent.Resolved);
  v14 = sub_1D5BE240C(0xD000000000000018, 0x80000001D73CDA20, v13);

  return v14 & 1;
}

uint64_t sub_1D61CD328()
{
  v1 = type metadata accessor for FormatContent.Resolved(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v12, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v12, v8);
  sub_1D61CD984(v8, v4, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v8, type metadata accessor for FormatPluginData);
  v13 = *v4;

  sub_1D61CCEF0(v4, type metadata accessor for FormatContent.Resolved);
  return v13;
}

uint64_t static FormatSectionDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1D61CD594(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 56);
  sub_1D61CD984(a1, v7, type metadata accessor for FormatSectionDescriptor);
  sub_1D61CD984(a2, &v7[v9], type metadata accessor for FormatSectionDescriptor);
  sub_1D61CCEF0(&v7[v9], type metadata accessor for FormatPluginData);
  sub_1D61CCEF0(v7, type metadata accessor for FormatPluginData);
  return 1;
}

void sub_1D61CD594(uint64_t a1)
{
  if (!qword_1EDF0D358[0])
  {
    type metadata accessor for FormatSectionDescriptor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDF0D358);
    }
  }
}

uint64_t sub_1D61CD5F8(uint64_t a1, uint64_t a2)
{
  sub_1D61CD594(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 56);
  sub_1D61CD984(a1, v7, type metadata accessor for FormatSectionDescriptor);
  sub_1D61CD984(a2, &v7[v9], type metadata accessor for FormatSectionDescriptor);
  sub_1D61CCEF0(&v7[v9], type metadata accessor for FormatPluginData);
  sub_1D61CCEF0(v7, type metadata accessor for FormatPluginData);
  return 1;
}

uint64_t FormatSectionDescriptor.feedLayoutOrder.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v6, type metadata accessor for FormatSectionDescriptor);
  *a1 = 1;
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t FormatSectionDescriptor.feedGroupKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v6, type metadata accessor for FormatSectionDescriptor);
  *a1 = 0x8000000000000030;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t FormatSectionDescriptor.feedGroupDebug.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatPluginData(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v11, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v11, v7);
  sub_1D61CD984(&v7[*(v4 + 32)], a1, sub_1D5D6013C);
  return sub_1D61CCEF0(v7, type metadata accessor for FormatPluginData);
}

uint64_t sub_1D61CD984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61CD9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v3, v6, type metadata accessor for FormatSectionDescriptor);
  *a3 = 1;
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t sub_1D61CDA98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v3, v6, type metadata accessor for FormatSectionDescriptor);
  *a3 = 0x8000000000000030;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t sub_1D61CDB58@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatPluginData(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v11, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v11, v7);
  sub_1D61CD984(&v7[*(v4 + 32)], a1, sub_1D5D6013C);
  return sub_1D61CCEF0(v7, type metadata accessor for FormatPluginData);
}

uint64_t FormatSectionDescriptor.isImpressionable.getter()
{
  v1 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v8, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v8, v4);
  sub_1D61CDD9C();
  v9 = sub_1D725D11C();
  sub_1D61CCEF0(v4, type metadata accessor for FormatPluginData);
  return v9 & 1;
}

unint64_t sub_1D61CDD9C()
{
  result = qword_1EDF112B8;
  if (!qword_1EDF112B8)
  {
    type metadata accessor for FormatPluginData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF112B8);
  }

  return result;
}

uint64_t sub_1D61CDDF4()
{
  v1 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v8, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v8, v4);
  sub_1D61CDD9C();
  LOBYTE(v8) = sub_1D725D11C();
  sub_1D61CCEF0(v4, type metadata accessor for FormatPluginData);
  return v8 & 1;
}

uint64_t FormatSectionDescriptor.allowAdjacentAd.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v6, type metadata accessor for FormatSectionDescriptor);
  *a1 = 3;
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t FormatSectionDescriptor.adGroupKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v6, type metadata accessor for FormatSectionDescriptor);
  v7 = *MEMORY[0x1E69B3FB8];
  v8 = sub_1D72605EC();
  (*(*(v8 - 8) + 104))(a1, v7, v8);
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t FormatSectionDescriptor.tag.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FormatContent.Resolved(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v14, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v14, v10);
  sub_1D61CD984(v10, v6, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v10, type metadata accessor for FormatPluginData);
  v15 = *&v6[*(v3 + 60)];
  swift_unknownObjectRetain();
  sub_1D61CCEF0(v6, type metadata accessor for FormatContent.Resolved);
  return v15;
}

uint64_t FormatSectionDescriptor.adKeywords.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FormatContent.Resolved(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v14, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v14, v10);
  sub_1D61CD984(v10, v6, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v10, type metadata accessor for FormatPluginData);
  v15 = *&v6[*(v3 + 32)];

  sub_1D61CCEF0(v6, type metadata accessor for FormatContent.Resolved);
  return v15;
}

uint64_t FormatSectionDescriptor.allowsPrerollAds.getter()
{
  v1 = type metadata accessor for FormatSectionDescriptor(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v0, v4, type metadata accessor for FormatSectionDescriptor);
  sub_1D61CCEF0(v4, type metadata accessor for FormatPluginData);
  return 1;
}

uint64_t sub_1D61CE498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v3, v6, type metadata accessor for FormatSectionDescriptor);
  *a3 = 3;
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t sub_1D61CE544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v3, v6, type metadata accessor for FormatSectionDescriptor);
  v7 = *MEMORY[0x1E69B3FB8];
  v8 = sub_1D72605EC();
  (*(*(v8 - 8) + 104))(a3, v7, v8);
  return sub_1D61CCEF0(v6, type metadata accessor for FormatPluginData);
}

uint64_t sub_1D61CE630()
{
  v1 = v0;
  v2 = type metadata accessor for FormatContent.Resolved(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v14, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v14, v10);
  sub_1D61CD984(v10, v6, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v10, type metadata accessor for FormatPluginData);
  v15 = *&v6[*(v3 + 60)];
  swift_unknownObjectRetain();
  sub_1D61CCEF0(v6, type metadata accessor for FormatContent.Resolved);
  return v15;
}

uint64_t sub_1D61CE7C8()
{
  v1 = v0;
  v2 = type metadata accessor for FormatContent.Resolved(0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatPluginData(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61CD984(v1, v14, type metadata accessor for FormatSectionDescriptor);
  sub_1D5E2B7A8(v14, v10);
  sub_1D61CD984(v10, v6, type metadata accessor for FormatContent.Resolved);
  sub_1D61CCEF0(v10, type metadata accessor for FormatPluginData);
  v15 = *&v6[*(v3 + 32)];

  sub_1D61CCEF0(v6, type metadata accessor for FormatContent.Resolved);
  return v15;
}

uint64_t sub_1D61CE960(uint64_t a1, uint64_t a2)
{
  sub_1D61CE9CC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

void sub_1D61CE9CC()
{
  if (!qword_1EDF112C0)
  {
    v0 = type metadata accessor for FormatPluginData(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF112C0);
    }
  }
}

uint64_t sub_1D61CEA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D61CE9CC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1D61CEA90(uint64_t a1)
{
  sub_1D61CE9CC();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for FormatPluginData(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

NewsFeed::FormatSizeConstraint_optional __swiftcall FormatSizeConstraint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D61CEBA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746867696568;
  if (v2 != 1)
  {
    v4 = 1702521203;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6874646977;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746867696568;
  if (*a2 != 1)
  {
    v8 = 1702521203;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6874646977;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D61CEC8C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D61CED20(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D61CEDA0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D61CEE3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746867696568;
  if (v2 != 1)
  {
    v5 = 1702521203;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6874646977;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatSizeConstraint.description.getter()
{
  v1 = 0x746867696568;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6874646977;
  }
}

unint64_t sub_1D61CEF54()
{
  result = qword_1EC884E98;
  if (!qword_1EC884E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884E98);
  }

  return result;
}

unint64_t sub_1D61CEFA8(uint64_t a1)
{
  *(a1 + 8) = sub_1D61CEFD8();
  result = sub_1D61CF02C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D61CEFD8()
{
  result = qword_1EC884EA0;
  if (!qword_1EC884EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EA0);
  }

  return result;
}

unint64_t sub_1D61CF02C()
{
  result = qword_1EDF0ED30;
  if (!qword_1EDF0ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ED30);
  }

  return result;
}

unint64_t sub_1D61CF080(uint64_t a1)
{
  result = sub_1D61CF0A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61CF0A8()
{
  result = qword_1EC884EA8;
  if (!qword_1EC884EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EA8);
  }

  return result;
}

unint64_t sub_1D61CF0FC(void *a1)
{
  a1[1] = sub_1D61CF134();
  a1[2] = sub_1D61CF188();
  result = sub_1D61CEF54();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61CF134()
{
  result = qword_1EDF0ED28;
  if (!qword_1EDF0ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ED28);
  }

  return result;
}

unint64_t sub_1D61CF188()
{
  result = qword_1EDF0ED38;
  if (!qword_1EDF0ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ED38);
  }

  return result;
}

uint64_t sub_1D61CF1DC()
{
  v1 = 0x746867696568;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6874646977;
  }
}

double sub_1D61CF274(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

double FormatSwitchNodeDefault.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t FormatSwitchNodeDefault.__allocating_init(children:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t FormatSwitchNodeDefault.init(children:)(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t FormatSwitchNodeDefault.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D61CF460(uint64_t a1)
{
  result = sub_1D61CF530(&qword_1EC884EB0, &protocol conformance descriptor for FormatSwitchNodeDefault);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D61CF4A4(void *a1)
{
  a1[1] = sub_1D61CF530(&qword_1EDF26EB0, &protocol conformance descriptor for FormatSwitchNodeDefault);
  a1[2] = sub_1D61CF530(&qword_1EDF0D318, &protocol conformance descriptor for FormatSwitchNodeDefault);
  result = sub_1D61CF530(&qword_1EC884EB8, &protocol conformance descriptor for FormatSwitchNodeDefault);
  a1[3] = result;
  return result;
}

uint64_t sub_1D61CF530(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatSwitchNodeDefault();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D61CF594(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_1D633E44C(v4, v5);

  return v6 & 1;
}

unint64_t sub_1D61CF690(uint64_t a1)
{
  result = sub_1D61CF6B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61CF6B8()
{
  result = qword_1EC884EC0;
  if (!qword_1EC884EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EC0);
  }

  return result;
}

unint64_t sub_1D61CF70C(void *a1)
{
  a1[1] = sub_1D5CA16F8();
  a1[2] = sub_1D61CF744();
  result = sub_1D61CF798();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61CF744()
{
  result = qword_1EDF0A828;
  if (!qword_1EDF0A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A828);
  }

  return result;
}

unint64_t sub_1D61CF798()
{
  result = qword_1EC884EC8;
  if (!qword_1EC884EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EC8);
  }

  return result;
}

id CoverIssueFontBook.followButtonFontBook.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v9 = v1[5];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v9;
  v5 = v2;
  v6 = v3;
  v7 = v4;

  return v9;
}

void __swiftcall CoverIssueFontBook.init(titleFont:accessoryFont:followButtonFontBook:)(NewsFeed::CoverIssueFontBook *__return_ptr retstr, UIFont titleFont, UIFont accessoryFont, NewsFeed::CoverIssueFontBook::FollowButtonFontBook followButtonFontBook)
{
  retstr->titleFont = titleFont;
  retstr->accessoryFont = accessoryFont;
  v4 = *(followButtonFontBook.followButtonFont.super.isa + 1);
  *&retstr->followButtonFontBook.followButtonFont.super.isa = *followButtonFontBook.followButtonFont.super.isa;
  *&retstr->followButtonFontBook.plusSignFont.super.isa = v4;
}

uint64_t sub_1D61CF89C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t SportsEmbedConfigResourceGroup.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SportsEmbedConfigResourceGroup.record.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1D60531A0(v2, v3);
}

uint64_t sub_1D61CF99C()
{
  v1 = 0x736465626D65;
  if (*v0 != 1)
  {
    v1 = 0x64726F636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1D61CF9E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D61D05AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D61CFA10(uint64_t a1)
{
  v2 = sub_1D61CFCB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D61CFA4C(uint64_t a1)
{
  v2 = sub_1D61CFCB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsEmbedConfigResourceGroup.encode(to:)(void *a1)
{
  sub_1D61D0344(0, &qword_1EC884ED0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v16 - v7;
  v9 = v1[2];
  v19 = v1[3];
  v20 = v9;
  v10 = v1[4];
  v17 = v1[5];
  v18 = v10;
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61CFCB8();
  sub_1D7264B5C();
  LOBYTE(v22) = 0;
  v11 = v21;
  sub_1D72643FC();
  if (!v11)
  {
    v13 = v17;
    v12 = v18;
    v14 = v19;
    if (*(v20 + 16))
    {
      v26 = 1;
      v22 = v20;
      sub_1D61CFD0C();
      sub_1D61CFD80();
      sub_1D61CFDD0();
      sub_1D72647EC();
    }

    v22 = v14;
    v23 = v12;
    v24 = v13;
    v25 = v16;
    v26 = 2;
    sub_1D60531A0(v14, v12);
    sub_1D61CFE9C();
    sub_1D72643BC();
    sub_1D5D559EC(v22, v23, v24, v25);
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D61CFCB8()
{
  result = qword_1EDF09A28;
  if (!qword_1EDF09A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09A28);
  }

  return result;
}

unint64_t sub_1D61CFD0C()
{
  result = qword_1EC884ED8;
  if (!qword_1EC884ED8)
  {
    sub_1D61D0344(255, &qword_1EC884ED0, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884ED8);
  }

  return result;
}

void sub_1D61CFD80()
{
  if (!qword_1EDF04C90)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04C90);
    }
  }
}

unint64_t sub_1D61CFDD0()
{
  result = qword_1EC884EE0;
  if (!qword_1EC884EE0)
  {
    sub_1D61CFD80();
    sub_1D61CFE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EE0);
  }

  return result;
}

unint64_t sub_1D61CFE48()
{
  result = qword_1EDF0BD88;
  if (!qword_1EDF0BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BD88);
  }

  return result;
}

unint64_t sub_1D61CFE9C()
{
  result = qword_1EC884EE8;
  if (!qword_1EC884EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EE8);
  }

  return result;
}

void SportsEmbedConfigResourceGroup.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  sub_1D61D0288(0);
  v4 = v3;
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61D0344(0, &qword_1EDF03938, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D61CFCB8();
  v14 = v30;
  sub_1D7264B0C();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v30 = a1;
    v15 = v10;
    LOBYTE(v31) = 0;
    v26 = sub_1D72642BC();
    v27 = v16;
    LOBYTE(v31) = 1;
    v17 = sub_1D726434C();
    if (v17)
    {
      v35 = 1;
      sub_1D61D03FC();
      sub_1D726431C();
      v18 = sub_1D725A74C();
      (*(v28 + 8))(v7, v4);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v35 = 2;
    sub_1D61D03A8();
    sub_1D726427C();
    v19 = v29;
    (*(v15 + 8))(v13, v9);
    v21 = v31;
    v20 = v32;
    v22 = v33;
    v23 = v34;
    v24 = v27;
    *v19 = v26;
    v19[1] = v24;
    v19[2] = v18;
    v19[3] = v21;
    v19[4] = v20;
    v19[5] = v22;
    v19[6] = v23;

    sub_1D60531A0(v21, v20);
    __swift_destroy_boxed_opaque_existential_1(v30);

    sub_1D5D559EC(v21, v20, v22, v23);
  }
}

void sub_1D61D0288(uint64_t a1)
{
  if (!qword_1EDF17EC8)
  {
    sub_1D61D02F0();
    sub_1D61CFE48();
    v1 = sub_1D725AAEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17EC8);
    }
  }
}

unint64_t sub_1D61D02F0()
{
  result = qword_1EDF0BD80;
  if (!qword_1EDF0BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BD80);
  }

  return result;
}

void sub_1D61D0344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D61CFCB8();
    v7 = a3(a1, &type metadata for SportsEmbedConfigResourceGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D61D03A8()
{
  result = qword_1EDF09158;
  if (!qword_1EDF09158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09158);
  }

  return result;
}

unint64_t sub_1D61D03FC()
{
  result = qword_1EDF17ED0;
  if (!qword_1EDF17ED0)
  {
    sub_1D61D0288(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17ED0);
  }

  return result;
}

unint64_t sub_1D61D04A8()
{
  result = qword_1EC884EF0;
  if (!qword_1EC884EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884EF0);
  }

  return result;
}

unint64_t sub_1D61D0500()
{
  result = qword_1EDF09A18;
  if (!qword_1EDF09A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09A18);
  }

  return result;
}

unint64_t sub_1D61D0558()
{
  result = qword_1EDF09A20;
  if (!qword_1EDF09A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09A20);
  }

  return result;
}

uint64_t sub_1D61D05AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736465626D65 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64726F636572 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id FeedScoredHeadline.init(headline:scoreProfile:)@<X0>(id result@<X0>, id a2@<X1>, void *a3@<X8>)
{
  v3 = result;
  if (!a2)
  {
    result = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    a2 = result;
  }

  *a3 = v3;
  a3[1] = a2;
  return result;
}

id FeedScoredHeadline.item.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = 0;
  swift_unknownObjectRetain();

  return v3;
}

uint64_t _s8NewsFeed0B14ScoredHeadlineV10identifierSSvg_0()
{
  v1 = [*v0 articleID];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t sub_1D61D0864(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1D726207C();

  return v4;
}

uint64_t FeedScoredHeadline.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 publishDate];
  if (v3)
  {
    v4 = v3;
    sub_1D72588BC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D725891C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1D61D0980()
{
  v1 = [*v0 publisherID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

uint64_t Sequence<>.items.getter(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_1D6EBA4D4(sub_1D61D0A98, 0, a1, &type metadata for FeedScoredItem, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], a8);
}

{
  return sub_1D6EBA4D4(sub_1D6724380, 0, a1, &type metadata for FeedScoredItem, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], a8);
}

id sub_1D61D0A98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = 0;
  swift_unknownObjectRetain();
  return v2;
}

uint64_t Sequence.scoredItems<A>()(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  return sub_1D6EBA4D4(sub_1D61D0CC4, v9, a1, &type metadata for FeedScoredItem, MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a8);
}

id sub_1D61D0B40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = [swift_unknownObjectRetain() scoreProfile];
  if (!result)
  {
    result = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
  }

  *a2 = v3;
  a2[1] = result;
  return result;
}

BOOL _s8NewsFeed0B14ScoredHeadlineV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = [*a1 articleID];
  v6 = sub_1D726207C();
  v8 = v7;

  v9 = [v4 articleID];
  v10 = sub_1D726207C();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {

    goto LABEL_8;
  }

  v14 = sub_1D72646CC();

  result = 0;
  if (v14)
  {
LABEL_8:
    [v2 sortingScore];
    v17 = v16;
    [v3 sortingScore];
    return v17 == v18;
  }

  return result;
}

unint64_t sub_1D61D0D1C(uint64_t a1)
{
  result = sub_1D61D0D44();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61D0D44()
{
  result = qword_1EDF38640;
  if (!qword_1EDF38640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF38640);
  }

  return result;
}

id SharingRecipeTextActivityItemSource.__allocating_init(recipe:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D61D2110(a1);

  return v4;
}

id SharingRecipeTextActivityItemSource.init(recipe:)(void *a1)
{
  v2 = sub_1D61D2110(a1);

  return v2;
}

void SharingRecipeTextActivityItemSource.activityViewControllerPlaceholderItem(_:)(void *a1@<X8>)
{
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title);
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title + 8);

  MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName + 8);

  MEMORY[0x1DA6F9910](v3, v4);

  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v5;
  a1[1] = v6;
}

void SharingRecipeTextActivityItemSource.activityViewController(_:itemForActivityType:)(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D726203C();
  v7 = v6;
  if (a1)
  {
    v8 = sub_1D726207C();
    v10 = v9;
    if (v8 == sub_1D726207C() && v10 == v11)
    {
    }

    else
    {
      v13 = sub_1D72646CC();

      if ((v13 & 1) == 0)
      {
        v14 = sub_1D726207C();
        v16 = v15;
        if (v14 == sub_1D726207C() && v16 == v17)
        {
          goto LABEL_21;
        }

        v19 = sub_1D72646CC();
        v20 = a1;

        if (v19)
        {
LABEL_12:

LABEL_22:
          *a2 = 0u;
          *(a2 + 16) = 0u;
          return;
        }

        v29 = sub_1D726207C();
        v31 = v30;
        if (v29 == sub_1D726207C() && v31 == v32)
        {

LABEL_21:

          goto LABEL_22;
        }

        v33 = sub_1D72646CC();

        if (v33)
        {
          goto LABEL_12;
        }

        v34 = sub_1D726207C();
        v36 = v35;
        if (v34 == sub_1D726207C() && v36 == v37)
        {

LABEL_28:
          *(a2 + 24) = MEMORY[0x1E69E6158];

          *a2 = 0;
          *(a2 + 8) = 0xE000000000000000;
          return;
        }

        v38 = sub_1D72646CC();

        if (v38)
        {
          goto LABEL_28;
        }

        v39 = sub_1D726207C();
        v41 = v40;
        if (v39 == sub_1D726207C() && v41 == v42)
        {
        }

        else
        {
          v43 = sub_1D72646CC();

          if ((v43 & 1) == 0)
          {
            v51 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title + 8);
            *&v55 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title);
            *(&v55 + 1) = v51;

            MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
            v52 = v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName;
            v53 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName);
            v54 = *(v52 + 8);

            MEMORY[0x1DA6F9910](v53, v54);

            v50 = *(&v55 + 1);
            v48 = v55;
            goto LABEL_35;
          }
        }

        v44 = type metadata accessor for SharingHTMLBuilder();
        v45 = swift_allocObject();
        *(v45 + 16) = 0;
        *(v45 + 24) = 0xE000000000000000;
        swift_beginAccess();
        *(v45 + 16) = 0;
        *(v45 + 24) = 0xE000000000000000;
        v56 = v44;
        v57 = &off_1F51B62F0;
        *&v55 = v45;
        sub_1D61D17E4(&v55);
        v46 = v56;
        v47 = v57;
        __swift_project_boxed_opaque_existential_1(&v55, v56);
        v48 = (v47[8])(v46, v47);
        v50 = v49;
        __swift_destroy_boxed_opaque_existential_1(&v55);
LABEL_35:
        *(a2 + 24) = MEMORY[0x1E69E6158];

        *a2 = v48;
        *(a2 + 8) = v50;
        return;
      }
    }

    v24 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title + 8);
    *&v55 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title);
    *(&v55 + 1) = v24;

    v22 = 10;
    v23 = 0xE100000000000000;
  }

  else
  {

    v21 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title + 8);
    *&v55 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title);
    *(&v55 + 1) = v21;

    v22 = 2108704;
    v23 = 0xE300000000000000;
  }

  MEMORY[0x1DA6F9910](v22, v23);
  v25 = v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName;
  v26 = *(v3 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName);
  v27 = *(v25 + 8);

  MEMORY[0x1DA6F9910](v26, v27);

  v28 = v55;
  *(a2 + 24) = MEMORY[0x1E69E6158];
  *a2 = v28;
}

Swift::String __swiftcall SharingRecipeTextActivityItemSource.activityViewController(_:dataTypeIdentifierForActivityType:)(UIActivityViewController *_, UIActivityType_optional dataTypeIdentifierForActivityType)
{
  v2 = sub_1D607A9A8(dataTypeIdentifierForActivityType.value);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

id SharingRecipeTextActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingRecipeTextActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D61D17E4(__int128 *a1)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v98 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v100 = &v88 - v8;
  v96 = sub_1D72585BC();
  v9 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v10);
  v97 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v95 = &v88 - v14;
  v15 = *(a1 + 3);
  v16 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 16))(v110, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = v111;
  v18 = v112;
  __swift_project_boxed_opaque_existential_1(v110, v111);
  v94 = v1;
  v20 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title);
  v19 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title + 8);
  v21 = *(v18 + 24);

  v21(v107, v20, v19, v17, v18);

  v22 = v108;
  v23 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  (*(v23 + 16))(v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v110);
  v24 = *(a1 + 3);
  v25 = *(a1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_shortExcerpt);
  v27 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_shortExcerpt + 8);
  v28 = *(v25 + 56);

  v28(v110, v26, v27, v24, v25);

  __swift_destroy_boxed_opaque_existential_1(a1);
  v29 = v111;
  v30 = v112;
  __swift_project_boxed_opaque_existential_1(v110, v111);
  v31 = *(v30 + 16);
  v93 = a1;
  v31(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(v110);
  sub_1D5B68374(a1, v107);
  __swift_project_boxed_opaque_existential_1(v107, v108);
  DynamicType = swift_getDynamicType();
  v33 = v109;
  __swift_destroy_boxed_opaque_existential_1(v107);
  v34 = *(v33 + 8);
  v111 = DynamicType;
  v112 = v33;
  __swift_allocate_boxed_opaque_existential_1(v110);
  v34(DynamicType, v33);
  v36 = v111;
  v35 = v112;
  __swift_project_boxed_opaque_existential_1(v110, v111);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v88 = objc_opt_self();
  v89 = ObjCClassFromMetadata;
  v38 = [v88 bundleForClass_];
  v39 = sub_1D725811C();
  v41 = v40;

  (*(v35 + 56))(v107, v39, v41, v36, v35);

  v42 = v108;
  v43 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  (*(v43 + 16))(v104, v42, v43);
  v44 = v106;
  v92 = v105;
  v91 = __swift_project_boxed_opaque_existential_1(v104, v105);
  v45 = OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_shareURL;
  v46 = v9;
  v47 = *(v9 + 16);
  v48 = v94;
  v49 = v95;
  v50 = v96;
  v47(v95, v94 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_shareURL, v96);
  v90 = sub_1D72583DC();
  v52 = v51;
  v99 = v46;
  v53 = v50;
  v54 = *(v46 + 8);
  v54(v49, v53);
  v55 = v48 + v45;
  v56 = v97;
  v47(v97, v55, v53);
  v57 = v53;
  v58 = sub_1D72583DC();
  v60 = v59;
  v54(v56, v57);
  (*(v44 + 48))(&v101, v90, v52, v58, v60, v92, v44);
  v61 = v93;

  __swift_destroy_boxed_opaque_existential_1(v110);
  sub_1D5B63F14(&v101, v110);
  __swift_destroy_boxed_opaque_existential_1(v104);
  __swift_destroy_boxed_opaque_existential_1(v107);
  sub_1D5B63F14(v61, v107);
  v62 = v108;
  v63 = v109;
  __swift_project_boxed_opaque_existential_1(v107, v108);
  sub_1D5B68374(v110, v104);
  (*(v63 + 32))(v104, v62, v63);
  sub_1D5B6EE3C(v104, &qword_1EC884F40, sub_1D5EB8714);
  __swift_destroy_boxed_opaque_existential_1(v107);
  v64 = [objc_opt_self() nss_MarketingPageURL];
  if (v64)
  {
    v65 = v98;
    v66 = v64;
    sub_1D72584EC();

    v67 = 0;
    v68 = v65;
  }

  else
  {
    v68 = v98;
    v67 = 1;
  }

  v69 = v99;
  (*(v99 + 56))(v68, v67, 1, v57);
  v70 = v68;
  v71 = v100;
  sub_1D5EB8540(v70, v100);
  if ((*(v69 + 48))(v71, 1, v57) == 1)
  {
    sub_1D5B6EE3C(v71, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v72 = sub_1D72583DC();
    v74 = v73;
    v54(v71, v57);
    v75 = *(v61 + 3);
    v76 = *(v61 + 4);
    __swift_project_boxed_opaque_existential_1(v61, v75);
    (*(v76 + 16))(v107, v75, v76);
    __swift_destroy_boxed_opaque_existential_1(v61);
    v77 = v108;
    v78 = v109;
    __swift_project_boxed_opaque_existential_1(v107, v108);
    v79 = [v88 bundleForClass_];
    v80 = sub_1D725811C();
    v82 = v81;

    (*(v78 + 56))(v104, v80, v82, v77, v78);

    v83 = v105;
    v84 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    (*(v84 + 56))(&v101, 32, 0xE100000000000000, v83, v84);
    v85 = v102;
    v86 = v103;
    __swift_project_boxed_opaque_existential_1(&v101, v102);
    (*(v86 + 48))(0x654E20656C707041, 0xEA00000000007377, v72, v74, v85, v86);

    __swift_destroy_boxed_opaque_existential_1(&v101);
    __swift_destroy_boxed_opaque_existential_1(v104);
    __swift_destroy_boxed_opaque_existential_1(v107);
  }

  return __swift_destroy_boxed_opaque_existential_1(v110);
}

id sub_1D61D2110(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D72585BC();
  v34 = *(v4 - 8);
  v35 = v4;
  *&v6 = MEMORY[0x1EEE9AC00](v4, v5).n128_u64[0];
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v1[OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_publisherName];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v1[OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_shortExcerpt];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = [a1 identifier];
  if (!v12)
  {
    sub_1D726207C();
    v12 = sub_1D726203C();
  }

  v36 = a1;
  v13 = [a1 articles];
  sub_1D5B5D6A0();
  v14 = sub_1D726267C();

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = ObjectType;
    v17 = MEMORY[0x1DA6FB460](0, v14);
    goto LABEL_8;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = ObjectType;
    v17 = *(v14 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v18 = [v17 identifier];
    swift_unknownObjectRelease();
    ObjectType = v16;
    if (v18)
    {
LABEL_13:
      v19 = [objc_opt_self() nss:v12 NewsURLForRecipeID:v18 articleID:?];

      sub_1D72584EC();
      (*(v34 + 32))(&v1[OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_shareURL], v8, v35);
      v20 = v36;
      v21 = [v36 title];
      v22 = sub_1D726207C();
      v24 = v23;

      *v9 = v22;
      v9[1] = v24;

      v25 = [objc_msgSend(v20 sourceChannel)];
      swift_unknownObjectRelease();
      v26 = sub_1D726207C();
      v28 = v27;

      *v10 = v26;
      v10[1] = v28;

      v29 = [v20 shortExcerpt];
      v30 = sub_1D726207C();
      v32 = v31;

      *v11 = v30;
      v11[1] = v32;

      v37.receiver = v1;
      v37.super_class = ObjectType;
      return objc_msgSendSuper2(&v37, sel_init);
    }

    sub_1D726207C();
    v18 = sub_1D726203C();
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t _s8NewsFeed35SharingRecipeTextActivityItemSourceC22activityViewController_010subjectForF4TypeSSSo010UIActivityjK0C_So0oN0aSgtF_0()
{
  v1 = v0;

  v2 = sub_1D726213C();

  MEMORY[0x1DA6F9910](8250, 0xE200000000000000);
  v3 = v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title;
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingRecipeTextActivityItemSource_title);
  v5 = *(v3 + 8);

  MEMORY[0x1DA6F9910](v4, v5);

  return v2;
}

uint64_t type metadata accessor for SharingRecipeTextActivityItemSource(uint64_t a1)
{
  result = qword_1EC884F28;
  if (!qword_1EC884F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D61D258C(uint64_t a1)
{
  result = sub_1D72585BC();
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

uint64_t FormatTemperature.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v28 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264AEC();
    __swift_project_boxed_opaque_existential_1(&v29, v32);
    sub_1D61D2B9C();
    sub_1D726472C();

    v21 = 0xC080804000uLL >> (8 * v28);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v22 = 0;
    v23 = 1;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    if (v13)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5112270;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v8 + 8))(v11, v7);
          goto LABEL_9;
        }
      }
    }

    sub_1D61D2B9C();
    v29 = 0;
    v30 = 0;
    sub_1D726431C();
    if (v28 <= 1u)
    {
      if (v28)
      {
        v28 = xmmword_1D7279980;
        sub_1D61D3AF8();
        sub_1D726427C();
        if (v31 == 255)
        {
          v23 = 1;
        }

        else
        {
          v23 = v29;
        }

        if (v31 == 255)
        {
          v22 = 0;
        }

        else
        {
          v22 = v30;
        }

        v27 = (v31 != 255) & v31;
        (*(v8 + 8))(v11, v7);
        LOBYTE(v21) = v27 | 0x40;
      }

      else
      {
        v28 = xmmword_1D7279980;
        sub_1D61D3AF8();
        sub_1D726427C();
        if (v31 == 255)
        {
          v23 = 1;
        }

        else
        {
          v23 = v29;
        }

        if (v31 == 255)
        {
          v22 = 0;
        }

        else
        {
          v22 = v30;
        }

        LOBYTE(v21) = (v31 != 255) & v31;
        (*(v8 + 8))(v11, v7);
      }
    }

    else if (v28 - 2 >= 2)
    {
      v28 = xmmword_1D7279980;
      sub_1D61D3AF8();
      sub_1D726427C();
      if (v31 == 255)
      {
        v23 = 1;
      }

      else
      {
        v23 = v29;
      }

      if (v31 == 255)
      {
        v22 = 0;
      }

      else
      {
        v22 = v30;
      }

      v26 = (v31 != 255) & v31;
      (*(v8 + 8))(v11, v7);
      LOBYTE(v21) = v26 | 0xC0;
    }

    else
    {
      v28 = xmmword_1D7279980;
      sub_1D61D3AF8();
      sub_1D726427C();
      if (v31 == 255)
      {
        v23 = 1;
      }

      else
      {
        v23 = v29;
      }

      if (v31 == 255)
      {
        v22 = 0;
      }

      else
      {
        v22 = v30;
      }

      v25 = (v31 != 255) & v31;
      (*(v8 + 8))(v11, v7);
      LOBYTE(v21) = v25 | 0x80;
    }
  }

  *a2 = v23;
  *(a2 + 8) = v22;
  *(a2 + 16) = v21;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D61D2B9C()
{
  result = qword_1EDF10AD8;
  if (!qword_1EDF10AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10AD8);
  }

  return result;
}

uint64_t FormatTemperature.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v11 = a1[3];
  v12 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  if (sub_1D602437C(v13, v11, &type metadata for FormatVersions.Sydro, v12, &off_1F51F6C38))
  {
    v19 = v8;
    v20 = v9;
    v21 = v10;
    return sub_1D61D2DDC(a1);
  }

  else
  {
    v15 = a1[3];
    v22 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725BD1C();
    v17 = __swift_project_value_buffer(v16, qword_1EDFFCD18);
    (*(*(v16 - 8) + 16))(v7, v17, v16);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v7, sub_1D5B4AA6C, 0, v15, v22);
    result = sub_1D6079974(v7);
    if (!v2)
    {
      v19 = v8;
      v20 = v9;
      v21 = v10;
      return sub_1D61D3020(a1);
    }
  }

  return result;
}

uint64_t sub_1D61D2DDC(void *a1)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v9 = *v1;
  v15 = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  v11 = v10 >> 6;
  if (v10 >> 6 > 1)
  {
    if (v11 != 2)
    {
      LOBYTE(v11) = 4;
    }
  }

  else
  {
    if (!v11)
    {
      LOBYTE(v16) = 0;
      goto LABEL_8;
    }

    LOBYTE(v11) = 1;
  }

  LOBYTE(v16) = v11;
LABEL_8:
  sub_1D61D4030();
  v17 = 0;
  v18 = 0;
  sub_1D726443C();
  if (!v2)
  {
    if (v10)
    {
      v12 = v15;

      sub_1D5D2F2C4(v9, v12, 1);
      sub_1D5D2F2C4(1, 0, 0);
LABEL_12:
      v17 = v9;
      v18 = v12;
      v19 = v10 & 1;
      v16 = xmmword_1D7279980;
      sub_1D61D4084();
      sub_1D726443C();
      return (*(v20 + 8))(v8, v5);
    }

    v12 = v15;
    sub_1D5D2F2C4(v9, v15, 0);
    sub_1D5D2F2C4(1, 0, 0);
    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return (*(v20 + 8))(v8, v5);
}

uint64_t sub_1D61D3020(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  v10 = v9 >> 6;
  if (v9 >> 6 > 1)
  {
    if (v10 == 2)
    {
      if (v9)
      {
        goto LABEL_14;
      }

      sub_1D5D2F2C4(1, 0, 0);
      sub_1D5D2F2C4(v7, v8, 0);
      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }

      v11 = 3;
    }

    else
    {
      if (v9)
      {
        goto LABEL_14;
      }

      sub_1D5D2F2C4(1, 0, 0);
      sub_1D5D2F2C4(v7, v8, 0);
      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }

      v11 = 4;
    }

    v19 = v11;
    goto LABEL_21;
  }

  if (!v10)
  {
    if ((v9 & 1) == 0)
    {
      sub_1D5D2F2C4(1, 0, 0);
      sub_1D5D2F2C4(v7, v8, 0);
      if (v7)
      {
        v19 = 0;
LABEL_21:
        __swift_mutable_project_boxed_opaque_existential_1(v18, v18[3]);
        sub_1D61D4030();
        sub_1D726476C();
        return __swift_destroy_boxed_opaque_existential_1(v18);
      }

      goto LABEL_15;
    }

LABEL_14:

    sub_1D5D2F2C4(1, 0, 0);
    sub_1D5D2F2C4(v7, v8, 1);
    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_14;
  }

  sub_1D5D2F2C4(1, 0, 0);
  sub_1D5D2F2C4(v7, v8, 0);
  if (v7)
  {
    v19 = 1;
    goto LABEL_21;
  }

LABEL_15:
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCDE0);
  (*(*(v14 - 8) + 16))(v6, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v6, sub_1D5B4AA6C, 0, v12, v13);
  sub_1D6079974(v6);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1D61D331C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D61D3410(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D61D34F0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D61D35E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D61D3FE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D61D3610(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0065636E657265;
  v4 = 0x6665725072657375;
  v5 = 0xEA00000000007469;
  v6 = 0x65686E6572686166;
  v7 = 0xE900000000000074;
  v8 = 0x6965686E65726166;
  if (v2 != 3)
  {
    v8 = 0x6E69766C656BLL;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x737569736C6563;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

double static FormatTemperature.default.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1D728CF30;
  *(a1 + 16) = 0;
  return result;
}

void sub_1D61D37BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = sub_1D7258AAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      v15 = [objc_opt_self() fahrenheit];
    }

    else
    {
      v15 = [objc_opt_self() kelvin];
    }
  }

  else
  {
    if (!(a3 >> 6))
    {
      v10 = v7;
      sub_1D7258A4C();
      v11 = sub_1D725898C();
      if (!v11)
      {
        v12 = sub_1D72589CC();
        v13 = objc_opt_self();
        if (v12)
        {
          v14 = [v13 celsius];
        }

        else
        {
          v14 = [v13 fahrenheit];
        }

        v11 = v14;
      }

      v17 = v11;
      sub_1D5B7A110(0);
      sub_1D725793C();

      (*(v5 + 8))(v9, v10);
      return;
    }

    v15 = [objc_opt_self() celsius];
  }

  v19 = v15;
  sub_1D5B7A110(0);
  sub_1D725793C();
  v16 = v19;
}

id sub_1D61D39D8()
{
  v0 = sub_1D7258AAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1D72589EC();
  v6 = sub_1D72589DC();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  result = [v5 setMaximumFractionDigits_];
  qword_1EDF10AD0 = v5;
  return result;
}

unint64_t sub_1D61D3AF8()
{
  result = qword_1EDF16580;
  if (!qword_1EDF16580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16580);
  }

  return result;
}

uint64_t _s8NewsFeed17FormatTemperatureO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v8 == 2)
    {
      if ((v7 & 0xC0) == 0x80)
      {
        goto LABEL_4;
      }
    }

    else if (v7 > 0xBF)
    {
      goto LABEL_4;
    }

LABEL_11:
    sub_1D5E1DCD0(*a1, v2, v4);
    sub_1D5E1DCD0(v6, v5, v7);
    sub_1D5E1E15C(v3, v2, v4);
    sub_1D5E1E15C(v6, v5, v7);
    v9 = 0;
    return v9 & 1;
  }

  if (v8)
  {
    if ((v7 & 0xC0) == 0x40)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (v7 >= 0x40)
  {
    goto LABEL_11;
  }

LABEL_4:
  v14 = *a1;
  v15 = v2;
  v16 = v4 & 1;
  v11 = v6;
  v12 = v5;
  v13 = v7 & 1;
  sub_1D5E1DCD0(v6, v5, v7);
  sub_1D5E1DCD0(v3, v2, v4);
  sub_1D5E1DCD0(v3, v2, v4);
  sub_1D5E1DCD0(v6, v5, v7);
  v9 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v14, &v11);
  sub_1D5E1E15C(v3, v2, v4);
  sub_1D5E1E15C(v6, v5, v7);
  sub_1D5D2F2C4(v11, v12, v13);
  sub_1D5D2F2C4(v14, v15, v16);
  return v9 & 1;
}

unint64_t sub_1D61D3CCC(void *a1)
{
  a1[1] = sub_1D61D3D04();
  a1[2] = sub_1D61D3D58();
  result = sub_1D61D3DAC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61D3D04()
{
  result = qword_1EDF10AB0;
  if (!qword_1EDF10AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10AB0);
  }

  return result;
}

unint64_t sub_1D61D3D58()
{
  result = qword_1EDF10AB8;
  if (!qword_1EDF10AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10AB8);
  }

  return result;
}

unint64_t sub_1D61D3DAC()
{
  result = qword_1EC884F48;
  if (!qword_1EC884F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884F48);
  }

  return result;
}

uint64_t sub_1D61D3E00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D61D3E54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_1D61D3EF0()
{
  result = qword_1EC884F50;
  if (!qword_1EC884F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884F50);
  }

  return result;
}

unint64_t sub_1D61D3F44()
{
  result = qword_1EDF10AE0;
  if (!qword_1EDF10AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10AE0);
  }

  return result;
}

unint64_t sub_1D61D3F98()
{
  result = qword_1EDF3C740;
  if (!qword_1EDF3C740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF3C740);
  }

  return result;
}

unint64_t sub_1D61D3FE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D61D4030()
{
  result = qword_1EDF10AE8;
  if (!qword_1EDF10AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10AE8);
  }

  return result;
}

unint64_t sub_1D61D4084()
{
  result = qword_1EDF16588;
  if (!qword_1EDF16588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16588);
  }

  return result;
}

uint64_t sub_1D61D40D8(uint64_t a1)
{
  v2 = sub_1D72585BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v25 - v13;
  sub_1D5D57DE0(a1, v25 - v13);
  sub_1D5D57DE0(v14, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5D57F60(v14, sub_1D5C2AB28);
      sub_1D5D57E78(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
      sub_1D5D57F60(&v10[*(v16 + 48)], type metadata accessor for FormatMetadata);
      v17 = type metadata accessor for FormatPackage;
      v18 = v10;
    }

    else
    {
      v17 = sub_1D5C2AB28;
      v18 = v14;
    }

    sub_1D5D57F60(v18, v17);
    return 0;
  }

  else
  {
    sub_1D5D57E78(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v20 = *(v19 + 48);
    v21 = *(v3 + 32);
    v21(v6, v10, v2);
    sub_1D61D4948(0);
    v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7273AE0;
    v21((v23 + v22), v6, v2);
    sub_1D5D57F60(v14, sub_1D5C2AB28);
    sub_1D5D57F60(&v10[v20], type metadata accessor for FormatMetadata);
    v25[0] = v23;
    sub_1D725B86C();

    return v25[1];
  }
}

uint64_t sub_1D61D43CC(uint64_t a1)
{
  sub_1D7264A0C();
  v2 = *(a1 + 16);
  MEMORY[0x1DA6FC0B0](v2);
  if (v2)
  {
    v3 = *(sub_1D72585BC() - 8);
    v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    sub_1D5B6CDCC(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    do
    {
      sub_1D7261E8C();
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D61D44E8(uint64_t a1)
{
  v2 = sub_1D72585BC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  result = MEMORY[0x1DA6FC0B0](*(*v1 + 16), v5);
  v10 = *(v8 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v7, v14, v2);
      sub_1D5B6CDCC(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1D7261E8C();
      result = (*(v11 - 8))(v7, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1D61D465C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2AB28(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v28 - v16;
  sub_1D5D57DE0(a1, v28 - v16);
  sub_1D5D57DE0(v17, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D5D57F60(v17, sub_1D5C2AB28);
      sub_1D5D57E78(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
      sub_1D5D57F60(&v13[*(v19 + 48)], type metadata accessor for FormatMetadata);
      v20 = type metadata accessor for FormatPackage;
      v21 = v13;
    }

    else
    {
      v20 = sub_1D5C2AB28;
      v21 = v17;
    }

    sub_1D5D57F60(v21, v20);
  }

  else
  {
    sub_1D5D57E78(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v28[1] = v2;
    v23 = *(v22 + 48);
    v24 = *(v6 + 32);
    v24(v9, v13, v5);
    sub_1D61D4948(0);
    v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7273AE0;
    v24((v26 + v25), v9, v5);
    sub_1D5D57F60(v17, sub_1D5C2AB28);
    sub_1D5D57F60(&v13[v23], type metadata accessor for FormatMetadata);
    v28[2] = v26;
    v28[3] = a2;

    sub_1D725B87C();
  }

  return a2;
}

void sub_1D61D4948(uint64_t a1)
{
  if (!qword_1EDF19B98)
  {
    sub_1D72585BC();
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19B98);
    }
  }
}

uint64_t sub_1D61D4B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = a1;
  sub_1D7259F1C();
  v9 = v8;
  sub_1D7259C1C();
  v11 = v10;
  type metadata accessor for FormatContextLayoutOptions();
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = a2;
  *(v12 + 48) = 0;
  *(v12 + 56) = a3;
  *a4 = v12;
}

uint64_t sub_1D61D4C3C()
{
  type metadata accessor for FormatLayoutError(0);
  sub_1D5D285FC();
  swift_allocError();
  *v0 = 0xD000000000000066;
  v0[1] = 0x80000001D73C3700;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

double sub_1D61D4CF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D725A7EC();

  FormatOptionCollection.subscript.getter(a1, a2, a3);

  return result;
}

uint64_t type metadata accessor for FormatDecorationContext(uint64_t a1)
{
  result = qword_1EDF27630;
  if (!qword_1EDF27630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D61D4E00(uint64_t a1)
{
  type metadata accessor for FormatPackageInventory(319);
  if (v1 <= 0x3F)
  {
    sub_1D5BFCB14();
    if (v2 <= 0x3F)
    {
      sub_1D7259F5C();
      if (v3 <= 0x3F)
      {
        sub_1D7259CFC();
        if (v4 <= 0x3F)
        {
          type metadata accessor for FormatOptionCollection();
          if (v5 <= 0x3F)
          {
            sub_1D5D23AA4(319);
            if (v6 <= 0x3F)
            {
              sub_1D5B7EF80(319);
              if (v7 <= 0x3F)
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

id sub_1D61D4F20(__n128 a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController;
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController);
  }

  else
  {
    v5 = v1;
    sub_1D61D4FFC(a1);
    type metadata accessor for DebugFormatWorkspaceTree(0);
    sub_1D61DE99C(&qword_1EC8850C0, type metadata accessor for DebugFormatWorkspaceTree, &unk_1D73A58AC);
    sub_1D7260F8C();
    sub_1D61DE9E4(0);
    v7 = objc_allocWithZone(v6);
    v8 = sub_1D726126C();
    v9 = *(v1 + v2);
    *(v5 + v2) = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

uint64_t sub_1D61D4FFC(__n128 a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___model;
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___model))
  {
    v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___model);
  }

  else
  {
    type metadata accessor for DebugFormatWorkspaceTree(0);
    swift_allocObject();

    v3 = sub_1D71A0E70(v4);
    *(v1 + v2) = v3;
  }

  return v3;
}

uint64_t sub_1D61D5098()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPresenter;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPresenter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPresenter);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor);
    type metadata accessor for DebugFormatUploadPresenter();
    v2 = swift_allocObject();
    *(v2 + 16) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1D61D5118(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = sub_1D61D5180(a2, a3, a4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

id sub_1D61D5180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(sub_1D725E86C());
  v6 = sub_1D725E85C();
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 secondaryLabelColor];
  [v8 setTintColor_];

  return v8;
}

void sub_1D61D5278()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___exportWorkspaceBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___exportWorkspaceBarButtonItem);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v4 style:0 target:v0 action:sel_doExport];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

void sub_1D61D536C()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___configureWorkspaceBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___configureWorkspaceBarButtonItem);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    type metadata accessor for DebugFormatBarButtonItem();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:v4 style:0 target:v0 action:sel_doConfigure];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

char *sub_1D61D5460(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___model] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPresenter] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPackageBarButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___createWorkspaceBarButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___exportWorkspaceBarButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___configureWorkspaceBarButtonItem] = 0;
  *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor] = a1;
  v45.receiver = v1;
  v45.super_class = ObjectType;

  v6 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
  swift_beginAccess();
  v7 = v6;

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B31C();

  v46[10] = v41;
  v46[11] = v42;
  v46[12] = v43;
  v47 = v44;
  v46[6] = v37;
  v46[7] = v38;
  v46[8] = v39;
  v46[9] = v40;
  v46[2] = v33;
  v46[3] = v34;
  v46[4] = v35;
  v46[5] = v36;
  v46[0] = v31;
  v46[1] = v32;
  if (sub_1D5DEA380(v46) == 1)
  {
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v22 = v36;
    v17 = v31;
    v18 = v32;
    sub_1D5F0B7F0(&v17);
  }

  else
  {
    v13 = BYTE4(v43);
    v14 = BYTE3(v43);
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v22 = v36;
    v17 = v31;
    v18 = v32;
    sub_1D5F0B7F0(&v17);
    sub_1D61D4FFC(v8);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D72600CC();

    if (v13)
    {
      v9 = 256;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9 | v14;
    sub_1D5FEEEB0(v15, v9 | v14);
    v11 = v16;
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v11;
    sub_1D72600DC();
    LOWORD(v16) = v10;

    sub_1D725B32C();
  }

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725B33C();

  sub_1D725B2EC();

  sub_1D725974C();

  sub_1D725971C();

  return v7;
}

double sub_1D61D5934(uint64_t a1, unsigned __int8 **a2, __n128 a3)
{
  v3 = *a2;
  sub_1D61D4FFC(a3);
  if (v3[2])
  {

    v4 = v3;
  }

  else
  {
    v4 = &unk_1F5111568;
  }

  sub_1D62DCC68(v4);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600DC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1D72600CC();

  if ((v9 & 0xFF00) != 0x200)
  {
    if (v3[2])
    {

      v6 = v3;
    }

    else
    {
      v6 = &unk_1F5111568;
    }

    v7 = sub_1D62DCC68(v6);

    v8 = sub_1D6185778(v9 & 0x1FF, v7);

    if ((v8 & 1) == 0)
    {
      if (v3[2])
      {

        if (v3[2])
        {
LABEL_11:

          sub_1D725B32C();

          return result;
        }
      }

      else if (qword_1F5111578)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_1D61D5B3C(__n128 a1, uint64_t a2, __int16 *a3)
{
  sub_1D61D4FFC(a1);
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_1D72600DC();
}

void sub_1D61D5BAC(uint64_t a1)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v121 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DebugFormatWorkspace(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v122 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v100 - v11;
  v119 = type metadata accessor for DebugFormatWorkspaceGroup(0);
  v132 = *(v119 - 8);
  v14 = MEMORY[0x1EEE9AC00](v119, v13);
  v131 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  v100 = sub_1D61D4FFC(v14);
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v142 = MEMORY[0x1E69E7CC0];
  v102 = v6;
  v120 = (v6 + 48);
  v105 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor;
  v103 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___model;
  v101 = 0x80000001D73C9470;
  v130 = v5;
  v126 = v12;
  while (2)
  {
    v108 = v16;
    v21 = *(&unk_1F51122C0 + v16 + 32);
    v136 = *(v106 + v105);
    v22 = *(v136 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
    swift_beginAccess();
    v23 = *(v22 + 112);
    if (!*(v23 + 16))
    {
      goto LABEL_6;
    }

    v24 = sub_1D5BEFB80(v21);
    if ((v25 & 1) == 0)
    {
      goto LABEL_6;
    }

    v26 = *(*(v23 + 56) + 8 * v24);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1D72600CC();

    v116 = v140;
    v27 = *(v26 + 16);
    if (v27)
    {
      LODWORD(v135) = v21;
      v137 = MEMORY[0x1E69E7CC0];
      sub_1D7263ECC();
      v28 = *(v102 + 80);
      v134 = v26;
      v29 = v26 + ((v28 + 32) & ~v28);
      v30 = *(v102 + 72);
      do
      {
        sub_1D61DE5F0(v29, v12, type metadata accessor for DebugFormatWorkspace);
        v34 = &v12[*(v5 + 20)];
        v35 = *v34;
        v36 = *(v34 + 1);

        v37 = v121;
        sub_1D725B31C();
        v5 = v130;

        v38 = v37;

        if ((*v120)(v37, 1, v5))
        {
          sub_1D5CEC940(v37, sub_1D60CB67C);
          v31 = 0;
        }

        else
        {
          v39 = v37;
          v40 = v122;
          sub_1D61DE5F0(v39, v122, type metadata accessor for DebugFormatWorkspace);
          sub_1D5CEC940(v38, sub_1D60CB67C);
          v41 = (v40 + *(v5 + 20));
          v42 = *v41;
          v43 = v41[1];

          sub_1D5CEC940(v40, type metadata accessor for DebugFormatWorkspace);
          if (v35 == v42 && v36 == v43)
          {

            v31 = 1;
          }

          else
          {
            v31 = sub_1D72646CC();
          }

          v5 = v130;
        }

        v12 = v126;
        v32 = v122;
        sub_1D61DE5F0(v126, v122, type metadata accessor for DebugFormatWorkspace);
        type metadata accessor for DebugFormatWorkspaceTreeWorkspace(0);
        v33 = swift_allocObject();
        sub_1D61DE5F0(v32, v33 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace, type metadata accessor for DebugFormatWorkspace);
        swift_beginAccess();
        LOBYTE(v139) = v31 & 1;
        sub_1D726009C();
        swift_endAccess();
        sub_1D5CEC940(v32, type metadata accessor for DebugFormatWorkspace);
        sub_1D5CEC940(v12, type metadata accessor for DebugFormatWorkspace);
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
        v29 += v30;
        --v27;
      }

      while (v27);

      v115 = v137;
      LODWORD(v21) = v135;
    }

    else
    {

      v115 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for DebugFormatWorkspaceTreeKindGroup(0);
    v45 = swift_allocObject();
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v47 = 0xD000000000000011;
        v46 = v101;
      }

      else
      {
        v47 = 0x726F572064656546;
        v46 = 0xEF7365636170736BLL;
      }
    }

    else if (v21)
    {
      v47 = 0x736B726F5720794DLL;
      v46 = 0xED00007365636170;
    }

    else
    {
      v46 = 0xEA00000000007365;
      v47 = 0x636170736B726F57;
    }

    v48 = v115;
    *(v45 + 16) = v47;
    *(v45 + 24) = v46;
    *(v45 + 32) = v136;
    v104 = v45;
    *(v45 + 40) = v21;
    v139 = MEMORY[0x1E69E7CC0];
    if (v48 >> 62)
    {
      v49 = sub_1D7263BFC();
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v49)
    {
      v18 = MEMORY[0x1E69E7CC0];
      goto LABEL_3;
    }

    v50 = 0;
    v112 = v115 & 0xC000000000000001;
    v111 = v115 & 0xFFFFFFFFFFFFFF8;
    v110 = v115 + 32;
    v113 = v116 + 32;
    v109 = v49;
    do
    {
      if (v112)
      {
        v99 = v50;
        v118 = MEMORY[0x1DA6FB460](v50);
        v52 = __OFADD__(v99, 1);
        v53 = v99 + 1;
        if (v52)
        {
          goto LABEL_98;
        }
      }

      else
      {
        if (v50 >= *(v111 + 16))
        {
          goto LABEL_99;
        }

        v51 = v50;
        v118 = *(v110 + 8 * v50);

        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          return;
        }
      }

      v117 = v53;
      v54 = *(v116 + 16);
      if (!v54)
      {
        goto LABEL_85;
      }

      v55 = *v113;
      v56 = *(*v113 + 16);
      if (!v56)
      {
        goto LABEL_85;
      }

      v128 = v118 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
      v57 = 1;
      v107 = v54;
      do
      {
        v114 = v57;
        v125 = v55 + 32;

        v59 = 0;
        v60 = 1;
        v124 = v58;
        v123 = v56;
        while (1)
        {
          v61 = v59 + 1;
          if (v60)
          {
            break;
          }

          if (v61 == v56)
          {

            goto LABEL_79;
          }

          v60 = 0;
LABEL_45:
          v59 = v61;
          if (v61 >= *(v58 + 16))
          {
            __break(1u);
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }
        }

        v129 = v59 + 1;
        v62 = (v125 + 16 * v59);
        v64 = *v62;
        v63 = v62[1];
        v140 = sub_1D726210C();
        v141 = v65;
        v135 = v64;
        v137 = v64;
        v138 = v63;
        sub_1D5BF4D9C();
        v136 = v63;

        LOBYTE(v64) = sub_1D7263ABC();

        if (v64)
        {
LABEL_42:

          v56 = v123;
          v61 = v129;
          if (v129 == v123)
          {

            v5 = v130;
            v12 = v126;
            break;
          }

          v60 = 1;
          v5 = v130;
          v12 = v126;
          goto LABEL_44;
        }

        v66 = *(v128 + *(v130 + 32));
        if (v66 >> 62)
        {
          v17 = sub_1D7263BFC();
          if (v17)
          {
LABEL_50:
            v67 = 0;
            v133 = v66 & 0xC000000000000001;
            v127 = v66 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v133)
              {
                v70 = MEMORY[0x1DA6FB460](v67, v66);
                v71 = v67 + 1;
                if (__OFADD__(v67, 1))
                {
                  goto LABEL_93;
                }
              }

              else
              {
                if (v67 >= *(v127 + 16))
                {
                  goto LABEL_97;
                }

                v70 = *(v66 + 8 * v67 + 32);

                v71 = v67 + 1;
                if (__OFADD__(v67, 1))
                {
LABEL_93:
                  __break(1u);
                  goto LABEL_94;
                }
              }

              v72 = *(v70 + 16);
              v73 = v72 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name;
              swift_beginAccess();
              if (*(v73 + 8))
              {
                v134 = v71;
                v74 = v135;
                v75 = v136;
                v140 = sub_1D726210C();
                v141 = v76;
                v137 = v74;
                v138 = v75;
                v77 = sub_1D7263ABC();

                if (v77)
                {
LABEL_41:

                  goto LABEL_42;
                }

                v78 = *(v70 + 16);
                v80 = *(v78 + 16);
                v79 = *(v78 + 24);
                v140 = v80;
                v141 = v79;
                v137 = v74;
                v138 = v75;
                v81 = sub_1D7263ABC();

                v71 = v134;
                if (v81)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v68 = *(v72 + 24);
                v140 = *(v72 + 16);
                v141 = v68;
                v137 = v135;
                v138 = v136;
                v69 = sub_1D7263ABC();

                if (v69)
                {
                  goto LABEL_42;
                }
              }

              ++v67;
            }

            while (v71 != v17);
          }
        }

        else
        {
          v17 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
            goto LABEL_50;
          }
        }

        v82 = *(v128 + *(v130 + 36));
        v83 = *(v82 + 16);
        if (v83)
        {
          v84 = 0;
          v85 = *(v119 + 20);
          v86 = v82 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
          while (v84 < *(v82 + 16))
          {
            v89 = v131;
            sub_1D61DE5F0(v86 + *(v132 + 72) * v84, v131, type metadata accessor for DebugFormatWorkspaceGroup);
            v90 = *(v89 + v85);

            sub_1D5CEC940(v89, type metadata accessor for DebugFormatWorkspaceGroup);
            if (v90)
            {
              v17 = *(v90 + 16);
              v91 = v17 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name;
              swift_beginAccess();
              if (*(v91 + 8))
              {
                v92 = sub_1D726210C();
                v17 = v93;
                v140 = v92;
                v141 = v93;
                v137 = v135;
                v138 = v136;
                v94 = sub_1D7263ABC();

                if (v94)
                {
                  goto LABEL_41;
                }

                v95 = *(v90 + 16);
                v97 = *(v95 + 16);
                v96 = *(v95 + 24);
                v140 = v97;
                v141 = v96;
                v137 = v135;
                v138 = v136;
                v98 = sub_1D7263ABC();

                if (v98)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v87 = *(v17 + 24);
                v140 = *(v17 + 16);
                v141 = v87;
                v137 = v135;
                v138 = v136;
                v88 = sub_1D7263ABC();

                if (v88)
                {
                  goto LABEL_42;
                }
              }
            }

            if (v83 == ++v84)
            {
              goto LABEL_76;
            }
          }

LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

LABEL_76:

        v56 = v123;
        v61 = v129;
        v12 = v126;
        if (v129 != v123)
        {
          v60 = 0;
          v5 = v130;
LABEL_44:
          v58 = v124;
          goto LABEL_45;
        }

        v5 = v130;
LABEL_79:
        if (v114 == v107)
        {

          goto LABEL_86;
        }

        if (v114 >= *(v116 + 16))
        {
          goto LABEL_100;
        }

        v55 = *(v113 + 8 * v114);
        v57 = v114 + 1;
        v56 = *(v55 + 16);
      }

      while (v56);
LABEL_85:
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
LABEL_86:
      v50 = v117;
    }

    while (v117 != v109);
    v18 = v139;
LABEL_3:

    v19 = v104;
    swift_beginAccess();
    v137 = v18;
    sub_1D61DE938(0, &qword_1EC885078, type metadata accessor for DebugFormatWorkspaceTreeWorkspace, MEMORY[0x1E69E62F8]);
    sub_1D726009C();
    swift_endAccess();
    *(v19 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeKindGroup_unfilteredWorkspaces) = v115;
    swift_beginAccess();
    LOBYTE(v137) = 1;
    sub_1D726009C();
    v20 = swift_endAccess();
    MEMORY[0x1DA6F9CE0](v20);
    if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    v17 = v142;
LABEL_6:
    v16 = v108 + 1;
    if (v108 != 3)
    {
      continue;
    }

    break;
  }

LABEL_95:
  swift_getKeyPath();
  swift_getKeyPath();
  v140 = v17;
  sub_1D72600DC();
}

double sub_1D61D6B6C(uint64_t a1, uint64_t a2)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D61D5118(&OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___createWorkspaceBarButtonItem, 1937075312, 0xE400000000000000, sub_1D61DE5D8);
  sub_1D61DE5F0(a2, v7, sub_1D60CB67C);
  v9 = type metadata accessor for DebugFormatWorkspace(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    sub_1D5CEC940(v7, sub_1D60CB67C);
    v10 = 0;
  }

  else
  {
    sub_1D62D7C2C();
    sub_1D5CEC940(v7, type metadata accessor for DebugFormatWorkspace);
    v10 = sub_1D61881BC();
  }

  [v8 setEnabled_];

  v11 = MEMORY[0x1DA6F9100](0.5, 1.0, 0.0);
  MEMORY[0x1EEE9AC00](v11, v12);
  *&v14[-16] = a1;
  *&v14[-8] = a2;
  sub_1D7260F4C();

  return result;
}

uint64_t sub_1D61D6D70(uint64_t a1, uint64_t a2)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = v13 - v10;
  sub_1D61D4FFC(v9);
  sub_1D61DE5F0(a2, v11, sub_1D60CB67C);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D61DE5F0(v11, v6, sub_1D60CB67C);
  sub_1D72600DC();
  return sub_1D5CEC940(v11, sub_1D60CB67C);
}

uint64_t sub_1D61D6EA8(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1D61D4FFC(a3);

  sub_1D614F964(v3, v4);
  v6 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v6;
  sub_1D72600DC();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_1D72600CC();

  v7 = v6;
  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_18:

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1D72600DC();
  }

  v8 = sub_1D7263BFC();
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_1D7263ECC();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v19 = v6 & 0xC000000000000001;
    do
    {
      if (v19)
      {
        v13 = MEMORY[0x1DA6FB460](v10, v7);
      }

      else
      {
        v13 = *(v7 + 8 * v10 + 32);
      }

      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1D72600CC();

      v16 = *(v13 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeKindGroup_unfilteredWorkspaces);
      type metadata accessor for DebugFormatWorkspaceTreeKindGroup(0);
      v17 = swift_allocObject();
      v18 = v17;
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v11 = 0xD000000000000011;
          v12 = 0x80000001D73C9470;
        }

        else
        {
          v11 = 0x726F572064656546;
          v12 = 0xEF7365636170736BLL;
        }
      }

      else if (v15)
      {
        v11 = 0x736B726F5720794DLL;
        v12 = 0xED00007365636170;
      }

      else
      {
        v12 = 0xEA00000000007365;
        v11 = 0x636170736B726F57;
      }

      ++v10;
      *(v17 + 16) = v11;
      *(v17 + 24) = v12;
      *(v17 + 32) = v14;
      *(v17 + 40) = v15;

      sub_1D6BCFC58(v16, v20);

      swift_beginAccess();
      sub_1D61DE938(0, &qword_1EC885078, type metadata accessor for DebugFormatWorkspaceTreeWorkspace, MEMORY[0x1E69E62F8]);
      sub_1D726009C();
      swift_endAccess();
      *(v18 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeKindGroup_unfilteredWorkspaces) = v16;
      swift_beginAccess();
      sub_1D726009C();
      swift_endAccess();

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v8 != v10);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void sub_1D61D7320()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  [v3 setBackgroundColor_];

  v7 = sub_1D61D4F20(v6);
  [v1 addChildViewController_];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController;
  v11 = [*&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController] view];
  if (v11)
  {
    v12 = v11;
    [v9 addSubview_];

    [*&v1[v10] didMoveToParentViewController_];
    v13 = [v1 navigationItem];
    v14 = sub_1D726203C();
    [v13 setTitle_];

    v15 = [v1 navigationItem];
    sub_1D5B49E48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D72816C0;
    sub_1D61D5278();
    *(v16 + 32) = v17;
    sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
    v18 = sub_1D726265C();

    [v15 setLeftBarButtonItems_];

    v19 = [v1 navigationItem];
    [v19 setHidesSearchBarWhenScrolling_];

    v20 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
    [v20 setSearchResultsUpdater_];
    [v20 setObscuresBackgroundDuringPresentation_];
    [v20 setHidesNavigationBarDuringPresentation_];
    v21 = [v20 searchBar];

    sub_1D725972C();

    v22 = sub_1D726203C();

    [v21 setText_];

    v23 = [v20 searchBar];
    v24 = [v4 systemBlueColor];
    [v23 setTintColor_];

    v25 = [v20 searchBar];
    v26 = sub_1D726203C();
    [v25 setPlaceholder_];

    v27 = [v20 searchBar];
    v28 = [v27 searchTextField];

    [v28 setAutocorrectionType_];
    v29 = [v20 searchBar];
    v30 = [v29 searchTextField];

    [v30 setAutocapitalizationType_];
    v31 = [v20 searchBar];
    v32 = sub_1D726203C();
    v33 = [objc_opt_self() systemImageNamed_];

    [v31 setImage:v33 forSearchBarIcon:0 state:0];
    v34 = [v20 searchBar];
    [v34 setShowsCancelButton_];

    v35 = [v1 navigationItem];
    [v35 setSearchController_];

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1D7298B00;
    *(v36 + 32) = sub_1D61D5118(&OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPackageBarButtonItem, 0x70752E776F727261, 0xEC000000636F642ELL, sub_1D61DEA94);
    *(v36 + 40) = sub_1D61D5118(&OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___createWorkspaceBarButtonItem, 1937075312, 0xE400000000000000, sub_1D61DE5D8);
    type metadata accessor for DebugFormatBarButtonItem();
    *(v36 + 48) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:5 target:0 action:0];
    sub_1D61D536C();
    *(v36 + 56) = v37;
    v38 = sub_1D726265C();

    [v1 setToolbarItems_];

    return;
  }

LABEL_7:
  __break(1u);
}

double sub_1D61D7BCC()
{
  v0 = sub_1D72585BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  v45 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v38 - v12;
  sub_1D61DE938(0, &unk_1EDF02470, sub_1D5B4D3E0, MEMORY[0x1E69E6F90]);
  v14 = *(v6 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v42 = swift_allocObject();
  v16 = v42 + v15;
  v17 = v0;
  type metadata accessor for DebugFormatWorkspaceManager();
  sub_1D60B57F4(v16);
  sub_1D60B62F8(v16 + v14);
  sub_1D61DE5F0(v16, v13, sub_1D5B4D3E0);
  sub_1D61DE808(v13, v9, sub_1D5B4D3E0);
  v18 = (v1 + 32);
  v44 = v1;
  v19 = *(v1 + 48);
  v20 = v19(v9, 1, v17);
  v43 = v4;
  if (v20 == 1)
  {
    sub_1D5CEC940(v9, sub_1D5B4D3E0);
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v39 = *v18;
    v40 = (v1 + 32);
    v39(v4, v9, v17);
    v21 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D5D57E44(0, *(v21 + 2) + 1, 1, v21);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1D5D57E44((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v23];
    v18 = v40;
    v39(v24, v43, v17);
  }

  sub_1D61DE5F0(v16 + v14, v13, sub_1D5B4D3E0);
  sub_1D61DE808(v13, v9, sub_1D5B4D3E0);
  if (v19(v9, 1, v17) == 1)
  {
    sub_1D5CEC940(v9, sub_1D5B4D3E0);
  }

  else
  {
    v25 = *v18;
    v26 = v43;
    (*v18)(v43, v9, v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D5D57E44(0, *(v21 + 2) + 1, 1, v21);
    }

    v28 = *(v21 + 2);
    v27 = *(v21 + 3);
    if (v28 >= v27 >> 1)
    {
      v21 = sub_1D5D57E44((v27 > 1), v28 + 1, 1, v21);
    }

    *(v21 + 2) = v28 + 1;
    v25(&v21[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v28], v26, v17);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v21 + 2))
  {
    sub_1D5F63B58(v21);

    v29 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
    v30 = sub_1D726265C();

    v31 = [v29 initWithActivityItems:v30 applicationActivities:0];

    v32 = [v31 popoverPresentationController];
    v33 = v41;
    if (v32)
    {
      v34 = v32;
      sub_1D61D5278();
      v36 = v35;
      [v34 setSourceItem_];
    }

    [v33 presentViewController:v31 animated:1 completion:0];
  }

  else
  {
  }

  return result;
}

uint64_t sub_1D61D8198()
{
  v1 = v0;
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugFormatWorkspace(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v23 - v13;

  sub_1D725B31C();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v15 = sub_1D60CB67C;
    v16 = v5;
  }

  else
  {
    sub_1D61DE808(v5, v14, type metadata accessor for DebugFormatWorkspace);
    sub_1D61DE5F0(v14, v10, type metadata accessor for DebugFormatWorkspace);
    v17 = objc_allocWithZone(type metadata accessor for DebugFormatWorkspaceConfigViewController(0));

    sub_1D5FC932C(v18, v10);
    v20 = v19;

    v21 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];
    [v21 setModalInPresentation_];
    [v1 presentViewController:v21 animated:1 completion:0];

    v15 = type metadata accessor for DebugFormatWorkspace;
    v16 = v14;
  }

  return sub_1D5CEC940(v16, v15);
}

void sub_1D61D8464(uint64_t a1)
{
  v3 = type metadata accessor for DebugFormatWorkspace(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = sub_1D726203C();
  v8 = [objc_opt_self() alertControllerWithTitle:v7 message:0 preferredStyle:1];

  v24 = sub_1D61D8814;
  v25 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1D5C38428;
  v23 = &block_descriptor_31;
  v9 = _Block_copy(&aBlock);
  [v8 addTextFieldWithConfigurationHandler_];
  _Block_release(v9);
  v10 = sub_1D726203C();
  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v10 style:1 handler:0];

  [v8 addAction_];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D61DE5F0(a1, &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v14;
  sub_1D61DE808(&aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for DebugFormatWorkspace);

  v17 = sub_1D726203C();
  v24 = sub_1D61DE658;
  v25 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1D5C38428;
  v23 = &block_descriptor_32;
  v18 = _Block_copy(&aBlock);

  v19 = [v11 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  [v8 addAction_];
  [v1 presentViewController:v8 animated:1 completion:0];
}

void sub_1D61D8814(void *a1)
{
  [a1 setAutocapitalizationType_];
  v2 = sub_1D726203C();
  [a1 setPlaceholder_];
}

void sub_1D61D8888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DebugFormatWorkspace(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v9 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61DE938(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v39 - v12;
  v14 = sub_1D7257A4C();
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v41 = a4;
    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      v21 = v20;
      v22 = [v20 textFields];
      v40 = v6;
      if (v22)
      {
        sub_1D5B5A498(0, &qword_1EC885098, 0x1E69DD0B0);
        v23 = sub_1D726267C();

        if ((v23 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1DA6FB460](0, v23);
        }

        else
        {
          if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v24 = *(v23 + 32);
        }

        v25 = v24;

        v26 = [v25 text];

        if (v26)
        {
          v27 = sub_1D726207C();
          v29 = v28;

          v43 = v27;
          v44 = v29;
          sub_1D72579DC();
          sub_1D5BF4D9C();
          v39 = sub_1D7263A4C();
          v22 = v30;
          (*(v42 + 8))(v17, v14);
        }

        else
        {
          v39 = 0;
          v22 = 0;
        }
      }

      else
      {
        v39 = 0;
      }

      v31 = sub_1D726294C();
      (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
      sub_1D61DE5F0(v41, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugFormatWorkspace);
      sub_1D726290C();
      v32 = v19;
      v33 = sub_1D72628FC();
      v34 = (*(v40 + 80) + 40) & ~*(v40 + 80);
      v35 = (v7 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      v37 = MEMORY[0x1E69E85E0];
      v36[2] = v33;
      v36[3] = v37;
      v36[4] = v32;
      sub_1D61DE808(v9, v36 + v34, type metadata accessor for DebugFormatWorkspace);
      v38 = (v36 + v35);
      *v38 = v39;
      v38[1] = v22;
      sub_1D6BD1334(0, 0, v13, &unk_1D72AD1C0, v36);
    }
  }
}

uint64_t sub_1D61D8CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[83] = a4;
  v7[84] = type metadata accessor for DebugFormatWorkspaceKind(0);
  v7[85] = swift_task_alloc();
  sub_1D60CB67C(0);
  v7[86] = swift_task_alloc();
  v7[87] = swift_task_alloc();
  v7[88] = swift_task_alloc();
  v11 = type metadata accessor for DebugFormatWorkspace(0);
  v7[89] = v11;
  v7[90] = *(v11 - 8);
  v7[91] = swift_task_alloc();
  v7[92] = sub_1D726290C();
  v7[93] = sub_1D72628FC();
  v12 = swift_task_alloc();
  v7[94] = v12;
  *v12 = v7;
  v12[1] = sub_1D61D8E7C;

  return sub_1D61D98C4((v7 + 2), a5, a6, a7);
}

uint64_t sub_1D61D8E7C()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  if (v0)
  {
    v3 = sub_1D726285C();
    v5 = v4;
    v6 = sub_1D61D9544;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v9 = sub_1D726285C();
    v8 = v10;
    *(v2 + 768) = v9;
    *(v2 + 776) = v10;
    v6 = sub_1D61D8FE8;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D61D8FE8()
{
  v1 = *(v0 + 128);
  *(v0 + 296) = *(v0 + 112);
  *(v0 + 312) = v1;
  v2 = *(v0 + 96);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v2;
  *(v0 + 375) = *(v0 + 191);
  v3 = *(v0 + 176);
  *(v0 + 344) = *(v0 + 160);
  *(v0 + 360) = v3;
  *(v0 + 328) = *(v0 + 144);
  v4 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v4;
  v5 = *(v0 + 64);
  *(v0 + 232) = *(v0 + 48);
  v6 = *(v0 + 680);
  v7 = *(v0 + 664);
  *(v0 + 248) = v5;
  v8 = *(v7 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor);
  *(v0 + 784) = v8;
  v9 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
  *(v0 + 792) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
  *(v0 + 800) = *(v8 + v9);
  v10 = type metadata accessor for DebugFormatCacheFile(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v0 + 344);
  *(v0 + 512) = *(v0 + 328);
  *(v0 + 528) = v11;
  *(v0 + 544) = *(v0 + 360);
  *(v0 + 559) = *(v0 + 375);
  v12 = *(v0 + 280);
  *(v0 + 448) = *(v0 + 264);
  *(v0 + 464) = v12;
  v13 = *(v0 + 312);
  *(v0 + 480) = *(v0 + 296);
  *(v0 + 496) = v13;
  v14 = *(v0 + 216);
  *(v0 + 384) = *(v0 + 200);
  *(v0 + 400) = v14;
  v15 = *(v0 + 248);
  *(v0 + 416) = *(v0 + 232);
  *(v0 + 432) = v15;

  v16 = swift_task_alloc();
  *(v0 + 808) = v16;
  *v16 = v0;
  v16[1] = sub_1D61D91B4;
  v17 = *(v0 + 704);
  v18 = *(v0 + 680);

  return sub_1D60B7E00(v17, v18, v0 + 384, v8);
}

uint64_t sub_1D61D91B4()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  *(*v1 + 816) = v0;

  sub_1D5CEC940(v3, type metadata accessor for DebugFormatWorkspaceKind);

  v4 = *(v2 + 776);
  v5 = *(v2 + 768);
  if (v0)
  {
    v6 = sub_1D61D9700;
  }

  else
  {
    v6 = sub_1D61D9330;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D61D9330()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[88];
    sub_1D5ECF21C((v0 + 25));
    v5 = sub_1D60CB67C;
    v6 = v4;
  }

  else
  {
    v7 = v0[91];
    v8 = v0[90];
    v9 = v0[89];
    v10 = v0[87];
    v11 = v0[86];
    sub_1D61DE808(v0[88], v7, type metadata accessor for DebugFormatWorkspace);
    sub_1D61DE5F0(v7, v10, type metadata accessor for DebugFormatWorkspace);
    (*(v8 + 56))(v10, 0, 1, v9);
    sub_1D61DE5F0(v10, v11, sub_1D60CB67C);

    sub_1D725B32C();
    sub_1D5ECF21C((v0 + 25));

    sub_1D5CEC940(v10, sub_1D60CB67C);
    v5 = type metadata accessor for DebugFormatWorkspace;
    v6 = v7;
  }

  sub_1D5CEC940(v6, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D61D9544()
{

  v1 = *(v0 + 760);
  v2 = v1;
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 664);
  sub_1D5F5EBA0(v1, 0, 0, 0xD00000000000001ALL, 0x80000001D73CE020);

  *(v0 + 568) = 0;
  *(v0 + 576) = 0xD000000000000019;
  *(v0 + 584) = 0x80000001D73CE040;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  v4 = *(v3 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor);
  v5 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (*(v4 + v5))
  {

    sub_1D6AD3108(v0 + 568);

    sub_1D5F181F4(v0 + 568);
  }

  else
  {

    sub_1D5F181F4(v0 + 568);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D61D9700()
{

  sub_1D5ECF21C(v0 + 200);
  v1 = *(v0 + 816);
  v2 = v1;
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 664);
  sub_1D5F5EBA0(v1, 0, 0, 0xD00000000000001ALL, 0x80000001D73CE020);

  *(v0 + 568) = 0;
  *(v0 + 576) = 0xD000000000000019;
  *(v0 + 584) = 0x80000001D73CE040;
  *(v0 + 592) = 0u;
  *(v0 + 608) = 0u;
  *(v0 + 624) = 0u;
  v4 = *(v3 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor);
  v5 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
  swift_beginAccess();
  if (*(v4 + v5))
  {

    sub_1D6AD3108(v0 + 568);

    sub_1D5F181F4(v0 + 568);
  }

  else
  {

    sub_1D5F181F4(v0 + 568);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D61D98C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_1D725895C();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_1D7257A4C();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for FormatWorkspaceGroup(0);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  type metadata accessor for FeedContext(0);
  v5[20] = swift_task_alloc();
  type metadata accessor for GroupLayoutBindingContext(0);
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for FormatContentSubgroup(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v9 = type metadata accessor for DebugFormatWorkspaceGroup(0);
  v5[25] = v9;
  v5[26] = *(v9 - 8);
  v5[27] = swift_task_alloc();
  sub_1D726290C();
  v5[28] = sub_1D72628FC();
  v11 = sub_1D726285C();
  v5[29] = v11;
  v5[30] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D61D9B68, v11, v10);
}

uint64_t sub_1D61D9B68()
{
  v1 = v0[7];
  v2 = type metadata accessor for DebugFormatWorkspace(0);
  v0[31] = v2;
  v7 = *(v1 + *(v2 + 36));
  v0[32] = v7;
  v8 = *(v7 + 16);
  v0[33] = v8;
  if (v8)
  {
    v9 = v0[26];
    v10 = v0[27];
    v0[34] = MEMORY[0x1E69E7CC0];
    v0[35] = 0;
    if (*(v7 + 16))
    {
      sub_1D61DE5F0(v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v10, type metadata accessor for DebugFormatWorkspaceGroup);
      sub_1D725B77C();
      v11 = v0[4];
      v0[36] = v11;
      v12 = swift_task_alloc();
      v0[37] = v12;
      v13 = type metadata accessor for DebugFormatBindingResult(0);
      v5 = sub_1D5BA6EF4();
      *v12 = v0;
      v12[1] = sub_1D61D9F50;
      v6 = MEMORY[0x1E69E7288];
      v2 = (v0 + 5);
      v3 = v11;
      v4 = v13;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DA10](v2, v3, v4, v5, v6);
  }

  else
  {
    v14 = v0[9];

    if (v14)
    {
      v16 = v0[15];
      v15 = v0[16];
      v17 = v0[14];
      v18 = v0[9];
      v0[2] = v0[8];
      v0[3] = v18;

      sub_1D72579DC();
      sub_1D5BF4D9C();
      v54 = sub_1D7263A4C();
      v20 = v19;
      (*(v16 + 8))(v15, v17);
    }

    else
    {
      v54 = 0;
      v20 = 0xE000000000000000;
    }

    v53 = v0[31];
    v21 = v0[12];
    v22 = v0[13];
    v24 = v0[10];
    v23 = v0[11];
    v26 = v0[6];
    v25 = v0[7];
    sub_1D725894C();
    v27 = sub_1D725893C();
    v52 = v28;
    (*(v21 + 8))(v22, v23);
    v29 = sub_1D61DA968(v25, v24, v54, v20);
    v31 = v30;

    v32 = v25 + *(v53 + 20);
    v33 = *(v32 + 32);
    v34 = *(v32 + 40);
    v35 = *(v32 + 48);
    v36 = *(v32 + 56);
    v37 = *(v32 + 72);
    v38 = *(v32 + 80);
    v39 = *(v32 + 152);
    v40 = *(v32 + 160);
    v41 = *(v32 + 168);
    v42 = *(v32 + 176);
    v43 = *(v32 + 177);
    v44 = *(v32 + 178);
    v45 = *(v32 + 88);
    v46 = *(v32 + 104);
    v47 = *(v32 + 120);
    v48 = *(v32 + 136);
    *v26 = v27;
    *(v26 + 8) = v52;
    *(v26 + 16) = v29;
    *(v26 + 24) = v31;
    *(v26 + 32) = v33;
    *(v26 + 40) = v34;
    *(v26 + 48) = v35;
    v49 = MEMORY[0x1E69E7CC0];
    *(v26 + 56) = v36;
    *(v26 + 64) = v49;
    *(v26 + 72) = v37;
    *(v26 + 80) = v38;
    *(v26 + 88) = v45;
    *(v26 + 104) = v46;
    *(v26 + 120) = v47;
    *(v26 + 136) = v48;
    *(v26 + 152) = v39;
    *(v26 + 160) = v40;
    *(v26 + 168) = v41;
    *(v26 + 176) = v42;
    *(v26 + 177) = v43;
    *(v26 + 178) = v44;

    v50 = v0[1];

    return v50();
  }
}

uint64_t sub_1D61D9F50()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {

    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1D61DA87C;
  }

  else
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1D61DA094;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D61DA094()
{
  v1 = v0[38];
  v2 = v0[31];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[20];
  v6 = v0[7];
  sub_1D61DE5F0(v0[5] + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings, v4, type metadata accessor for GroupLayoutBindingContext);

  v7 = *(v6 + *(v2 + 20) + 168);
  sub_1D61DE5F0(v6 + *(v2 + 24), v5, type metadata accessor for FeedContext);

  sub_1D6BADF0C(v4, v7, v5, v3);
  type metadata accessor for FormatJSONEncoder(0);
  swift_allocObject();
  sub_1D6BCED58(&unk_1F51122E8);
  sub_1D61DE99C(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
  v8 = sub_1D72578BC();
  if (v1)
  {
    v10 = v0[27];
    sub_1D5CEC940(v0[24], type metadata accessor for FormatContentSubgroup);

    sub_1D5CEC940(v10, type metadata accessor for DebugFormatWorkspaceGroup);

    v13 = v0[1];
LABEL_4:

    return v13();
  }

  v11 = v8;
  v12 = v9;

  type metadata accessor for FormatJSONDecoder(0);
  swift_allocObject();
  sub_1D5B7BACC(&unk_1F5112310);
  sub_1D61DE99C(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup, &protocol conformance descriptor for FormatContentSubgroup);
  sub_1D725A69C();
  v15 = v0[27];
  v83 = v0[23];
  v16 = v0[19];
  v17 = v0[17];

  v18 = *v15;
  v19 = v15[1];
  v20 = v15[2];
  v21 = v15[3];
  v81 = v20;
  sub_1D61DE5F0(v83, v16 + *(v17 + 24), type metadata accessor for FormatContentSubgroup);
  *v16 = v18;
  v16[1] = v19;
  v16[2] = v81;
  v16[3] = v21;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v0[34];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_1D6993288(0, v23[2] + 1, 1, v23);
  }

  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v84 = sub_1D6993288((v24 > 1), v25 + 1, 1, v23);
  }

  else
  {
    v84 = v23;
  }

  v80 = v0[27];
  v82 = v0[33];
  v27 = v0[23];
  v26 = v0[24];
  v28 = v0[18];
  v29 = v0[19];
  v79 = v0[35] + 1;
  sub_1D5B952F8(v11, v12);
  sub_1D5CEC940(v27, type metadata accessor for FormatContentSubgroup);
  sub_1D5CEC940(v26, type metadata accessor for FormatContentSubgroup);
  v84[2] = v25 + 1;
  sub_1D61DE808(v29, v84 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for FormatWorkspaceGroup);
  v30 = sub_1D5CEC940(v80, type metadata accessor for DebugFormatWorkspaceGroup);
  if (v79 == v82)
  {
    v35 = v0[9];

    if (v35)
    {
      v36 = v0[15];
      v37 = v0[16];
      v38 = v0[14];
      v39 = v0[9];
      v0[2] = v0[8];
      v0[3] = v39;

      sub_1D72579DC();
      sub_1D5BF4D9C();
      v40 = sub_1D7263A4C();
      v42 = v41;
      (*(v36 + 8))(v37, v38);
    }

    else
    {
      v40 = 0;
      v42 = 0xE000000000000000;
    }

    v48 = v0[31];
    v49 = v0[12];
    v51 = v0[10];
    v50 = v0[11];
    v53 = v0[6];
    v52 = v0[7];
    v54 = v0[13];
    sub_1D725894C();
    v55 = sub_1D725893C();
    v77 = v56;
    v78 = v55;
    (*(v49 + 8))(v54, v50);
    v57 = sub_1D61DA968(v52, v51, v40, v42);
    v59 = v58;

    v60 = v52 + *(v48 + 20);
    v61 = *(v60 + 32);
    v62 = *(v60 + 40);
    v63 = *(v60 + 48);
    v64 = *(v60 + 56);
    v65 = *(v60 + 72);
    v66 = *(v60 + 80);
    v67 = *(v60 + 152);
    v68 = *(v60 + 160);
    v69 = *(v60 + 168);
    v70 = *(v60 + 176);
    v71 = *(v60 + 177);
    v72 = *(v60 + 178);
    v73 = *(v60 + 88);
    v74 = *(v60 + 104);
    v75 = *(v60 + 120);
    v76 = *(v60 + 136);
    *v53 = v78;
    *(v53 + 8) = v77;
    *(v53 + 16) = v57;
    *(v53 + 24) = v59;
    *(v53 + 32) = v61;
    *(v53 + 40) = v62;
    *(v53 + 48) = v63;
    *(v53 + 56) = v64;
    *(v53 + 64) = v84;
    *(v53 + 72) = v65;
    *(v53 + 80) = v66;
    *(v53 + 88) = v73;
    *(v53 + 104) = v74;
    *(v53 + 120) = v75;
    *(v53 + 136) = v76;
    *(v53 + 152) = v67;
    *(v53 + 160) = v68;
    *(v53 + 168) = v69;
    *(v53 + 176) = v70;
    *(v53 + 177) = v71;
    *(v53 + 178) = v72;

    v13 = v0[1];
    goto LABEL_4;
  }

  v43 = v0[35] + 1;
  v0[34] = v84;
  v0[35] = v43;
  v44 = v0[32];
  if (v43 >= *(v44 + 16))
  {
    __break(1u);
  }

  else
  {
    sub_1D61DE5F0(v44 + ((*(v0[26] + 80) + 32) & ~*(v0[26] + 80)) + *(v0[26] + 72) * v43, v0[27], type metadata accessor for DebugFormatWorkspaceGroup);
    sub_1D725B77C();
    v45 = v0[4];
    v0[36] = v45;
    v46 = swift_task_alloc();
    v0[37] = v46;
    v47 = type metadata accessor for DebugFormatBindingResult(0);
    v33 = sub_1D5BA6EF4();
    *v46 = v0;
    v46[1] = sub_1D61D9F50;
    v34 = MEMORY[0x1E69E7288];
    v30 = (v0 + 5);
    v31 = v45;
    v32 = v47;
  }

  return MEMORY[0x1EEE6DA10](v30, v31, v32, v33, v34);
}

uint64_t sub_1D61DA87C()
{
  v1 = *(v0 + 216);

  sub_1D5CEC940(v1, type metadata accessor for DebugFormatWorkspaceGroup);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D61DA968(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for DebugFormatWorkspaceKind(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61DE5F0(a1, v10, type metadata accessor for DebugFormatWorkspaceKind);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v13 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v13 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {
      a4 = 0xE900000000000065;
      a3 = 0x636170736B726F57;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1D5CEC940(v10, type metadata accessor for DebugFormatWorkspaceKind);
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      v12 = a1 + *(type metadata accessor for DebugFormatWorkspace(0) + 20);
      a3 = *(v12 + 16);
      a4 = *(v12 + 24);
    }
  }

LABEL_10:

  sub_1D60BF100(a3, a4);
  v15 = v14;

  return v15;
}

uint64_t sub_1D61DAB18(uint64_t a1)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v15 = type metadata accessor for DebugFormatWorkspace(0);
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    goto LABEL_7;
  }

  v10 = Strong;

  sub_1D725B31C();

  v11 = type metadata accessor for DebugFormatWorkspace(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
LABEL_7:
    v16 = sub_1D60CB67C;
    v17 = v8;
LABEL_10:
    sub_1D5CEC940(v17, v16);
    goto LABEL_11;
  }

  sub_1D5CEC940(v8, sub_1D60CB67C);
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
    v18 = sub_1D72585BC();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    goto LABEL_9;
  }

  v13 = v12;

  sub_1D6A9DC44(v4);

  v14 = sub_1D72585BC();
  if ((*(*(v14 - 8) + 48))(v4, 1, v14) == 1)
  {
LABEL_9:
    v16 = sub_1D5B4D3E0;
    v17 = v4;
    goto LABEL_10;
  }

  sub_1D5CEC940(v4, sub_1D5B4D3E0);
LABEL_11:
  sub_1D5B5A498(0, &qword_1EC885090, 0x1E69DCC60);
  sub_1D5B49E48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D72816C0;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D72816D0;
  sub_1D5B5A498(0, &qword_1EDF04350, 0x1E69DC628);
  swift_allocObject();
  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  *(v20 + 32) = sub_1D726375C();
  swift_allocObject();
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  *(v20 + 40) = sub_1D726375C();
  *(v19 + 32) = sub_1D726340C(0, 0xE000000000000000, 0, 0, 0, 0, 1, -1, v23, v20);
  return sub_1D72633FC();
}

void sub_1D61DB058(__n128 a1, uint64_t a2, uint64_t a3)
{
  sub_1D61DE938(0, &unk_1EC8850A0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  sub_1D725C2FC();
  *(swift_allocObject() + 16) = xmmword_1D7273AE0;
  sub_1D725C2EC();
  v3 = objc_allocWithZone(MEMORY[0x1E69DC968]);
  v4 = sub_1D726265C();

  v5 = [v3 initForOpeningContentTypes_];

  [v5 setAllowsMultipleSelection_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v5 setDelegate_];

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 presentViewController:v5 animated:1 completion:0];
  }
}

void *sub_1D61DB21C(uint64_t a1, uint64_t a2)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugFormatWorkspace(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;

    sub_1D725B31C();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      v13 = sub_1D60CB67C;
      v14 = v5;
    }

    else
    {
      sub_1D61DE808(v5, v10, type metadata accessor for DebugFormatWorkspace);
      sub_1D61D8464(v10);

      v13 = type metadata accessor for DebugFormatWorkspace;
      v14 = v10;
    }

    return sub_1D5CEC940(v14, v13);
  }

  return result;
}

uint64_t sub_1D61DB414(uint64_t a1)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B49E48(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D72816C0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D72816D0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_1D725B31C();

    v9 = type metadata accessor for DebugFormatWorkspace(0);
    (*(*(v9 - 8) + 48))(v4, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for DebugFormatWorkspace(0);
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  }

  sub_1D5B5A498(0, &qword_1EC885090, 0x1E69DCC60);
  sub_1D5B5A498(0, &qword_1EDF04350, 0x1E69DC628);
  sub_1D5CEC940(v4, sub_1D60CB67C);
  swift_allocObject();
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  *(v6 + 32) = sub_1D726375C();
  swift_allocObject();
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  *(v6 + 40) = sub_1D726375C();
  *(v5 + 32) = sub_1D726340C(0x502064616F6C7055, 0xEF736567616B6361, 0, 0, 0, 0, 1, -1, v13, v6);
  return sub_1D72633FC();
}

void *sub_1D61DB7F4(uint64_t a1, uint64_t a2)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugFormatWorkspace(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;

    sub_1D725B31C();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      v13 = sub_1D60CB67C;
      v14 = v5;
    }

    else
    {
      sub_1D61DE808(v5, v10, type metadata accessor for DebugFormatWorkspace);
      sub_1D61D5098();
      v15 = sub_1D6312B14(v10);
      sub_1D69F8A48(v15, v12);
      sub_1D5C08648(v15);

      v13 = type metadata accessor for DebugFormatWorkspace;
      v14 = v10;
    }

    return sub_1D5CEC940(v14, v13);
  }

  return result;
}

double sub_1D61DBA10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D61D5098();

    sub_1D725B31C();

    v5 = sub_1D6312CD4(v6);

    sub_1D69F8A48(v5, v4);
    sub_1D5C08648(v5);
  }

  return result;
}

double sub_1D61DBC04(void *a1)
{
  v2 = sub_1D7257A4C();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 searchBar];
  v9 = [v8 text];

  if (v9)
  {
    v10 = sub_1D726207C();
    v12 = v11;

    v16 = v10;
    v17 = v12;
    sub_1D725795C();
    sub_1D5BF4D9C();
    v9 = sub_1D7263A4C();
    v14 = v13;
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v16 = v9;
  v17 = v14;

  sub_1D725973C();

  return result;
}

uint64_t sub_1D61DBE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[130] = a6;
  v6[129] = a5;
  v6[128] = a4;
  v7 = sub_1D7261ABC();
  v6[131] = v7;
  v6[132] = *(v7 - 8);
  v6[133] = swift_task_alloc();
  v8 = sub_1D7261B2C();
  v6[134] = v8;
  v6[135] = *(v8 - 8);
  v6[136] = swift_task_alloc();
  v9 = sub_1D725891C();
  v6[137] = v9;
  v10 = *(v9 - 8);
  v6[138] = v10;
  v6[139] = *(v10 + 64);
  v6[140] = swift_task_alloc();
  v6[141] = swift_task_alloc();
  type metadata accessor for FeedContext(0);
  v6[142] = swift_task_alloc();
  v11 = type metadata accessor for DebugFormatWorkspace(0);
  v6[143] = v11;
  v6[144] = *(v11 - 8);
  v6[145] = swift_task_alloc();
  sub_1D5B4D3E0(0);
  v6[146] = swift_task_alloc();
  sub_1D6032A5C(0);
  v6[147] = swift_task_alloc();
  v6[148] = type metadata accessor for DebugFormatWorkspaceKind(0);
  v6[149] = swift_task_alloc();
  v6[150] = swift_task_alloc();
  sub_1D60CB67C(0);
  v6[151] = swift_task_alloc();
  v6[152] = swift_task_alloc();
  v6[153] = swift_task_alloc();
  v12 = sub_1D72585BC();
  v6[154] = v12;
  v6[155] = *(v12 - 8);
  v6[156] = swift_task_alloc();
  v6[157] = swift_task_alloc();
  v6[158] = sub_1D726290C();
  v6[159] = sub_1D72628FC();
  v14 = sub_1D726285C();
  v6[160] = v14;
  v6[161] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D61DC19C, v14, v13);
}

uint64_t sub_1D61DC19C()
{
  v1 = *(v0 + 1024);
  v2 = *(v1 + 16);
  *(v0 + 1296) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 1240);
    *(v0 + 1304) = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_editor;
    v5 = *(v4 + 80);
    *(v0 + 196) = v5;
    v6 = *(v4 + 72);
    *(v0 + 1312) = v6;
    v7 = *(v4 + 16);
    *(v0 + 1320) = v7;
    while (1)
    {
      *(v0 + 1328) = v3;
      v7(*(v0 + 1256), v1 + ((v5 + 32) & ~v5) + v6 * v3, *(v0 + 1232));
      if (sub_1D72584FC())
      {
        break;
      }

      v9 = *(v0 + 1296);
      v10 = *(v0 + 1328) + 1;
      (*(*(v0 + 1240) + 8))(*(v0 + 1256), *(v0 + 1232));
      if (v10 == v9)
      {
        goto LABEL_7;
      }

      v3 = *(v0 + 1328) + 1;
      v7 = *(v0 + 1320);
      v6 = *(v0 + 1312);
      LOBYTE(v5) = *(v0 + 196);
      v1 = *(v0 + 1024);
    }

    *(v0 + 1344) = sub_1D72585DC();
    *(v0 + 1352) = v8;
    type metadata accessor for FormatJSONDecoder(0);
    swift_allocObject();
    sub_1D5B7BACC(&unk_1F5112338);
    sub_1D5E32FE8();
    sub_1D725A69C();
    *(v0 + 1360) = 0;
    v11 = *(v0 + 1304);
    v12 = *(v0 + 1200);
    v13 = *(v0 + 1032);

    v14 = *(v13 + v11);
    *(v0 + 1368) = v14;
    v15 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
    *(v0 + 1376) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
    v16 = *(v0 + 32);
    v17 = *(v0 + 40);

    sub_1D60BF100(v16, v17);
    v19 = v18;
    v21 = v20;

    *(v0 + 32) = v19;
    *(v0 + 40) = v21;
    *(v0 + 1384) = *(v14 + v15);
    v22 = type metadata accessor for DebugFormatCacheFile(0);
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
    swift_storeEnumTagMultiPayload();
    v23 = *(v0 + 160);
    *(v0 + 328) = *(v0 + 144);
    *(v0 + 344) = v23;
    *(v0 + 360) = *(v0 + 176);
    v24 = *(v0 + 96);
    *(v0 + 264) = *(v0 + 80);
    *(v0 + 280) = v24;
    v25 = *(v0 + 128);
    *(v0 + 296) = *(v0 + 112);
    *(v0 + 312) = v25;
    v26 = *(v0 + 32);
    *(v0 + 200) = *(v0 + 16);
    *(v0 + 216) = v26;
    v27 = *(v0 + 64);
    *(v0 + 232) = *(v0 + 48);
    *(v0 + 375) = *(v0 + 191);
    *(v0 + 248) = v27;

    *(v0 + 1392) = sub_1D72628FC();
    v28 = sub_1D726285C();
    v30 = v29;
    *(v0 + 1400) = v28;
    *(v0 + 1408) = v29;
    v31 = sub_1D61DCA38;
    v32 = v28;
  }

  else
  {
LABEL_7:
    v31 = sub_1D61DC7E8;
    v32 = 0;
    v30 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v31, v32, v30);
}

uint64_t sub_1D61DC7E8(__n128 a1)
{
  *(v1 + 1336) = sub_1D72628FC();
  v3 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D61DC874, v3, v2);
}

uint64_t sub_1D61DC874()
{
  v1 = v0[130];

  [v1 dismissViewControllerAnimated:1 completion:0];
  v2 = v0[161];
  v3 = v0[160];

  return MEMORY[0x1EEE6DFA0](sub_1D61DC8F8, v3, v2);
}

uint64_t sub_1D61DC8F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D61DCA38()
{
  v40 = v0;
  sub_1D61DE5F0(*(v0 + 1200), *(v0 + 1192), type metadata accessor for DebugFormatWorkspaceKind);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v10 = *(v0 + 1200);

    v8 = type metadata accessor for DebugFormatWorkspaceKind;
    v9 = v10;
    goto LABEL_5;
  }

  v1 = *(v0 + 1240);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1168);
  sub_1D61DE808(*(v0 + 1192), *(v0 + 1176), sub_1D6032A5C);
  v4 = sub_1D6A9DC44(v3);
  if ((*(v1 + 48))(v3, 1, v2, v4) == 1)
  {
    v5 = *(v0 + 1200);
    v6 = *(v0 + 1176);
    v7 = *(v0 + 1168);

    sub_1D5CEC940(v6, sub_1D6032A5C);
    sub_1D5CEC940(v5, type metadata accessor for DebugFormatWorkspaceKind);
    v8 = sub_1D5B4D3E0;
    v9 = v7;
LABEL_5:
    sub_1D5CEC940(v9, v8);
    *(v0 + 1416) = *(v0 + 1360);
    (*(*(v0 + 1152) + 56))(*(v0 + 1224), 1, 1, *(v0 + 1144));
    v11 = *(v0 + 1288);
    v12 = *(v0 + 1280);

    return MEMORY[0x1EEE6DFA0](sub_1D61DCE90, v12, v11);
  }

  v13 = *(v0 + 1384);
  v36 = *(v0 + 1200);
  v37 = *(v0 + 1368);
  v14 = *(v0 + 1160);
  v15 = *(v0 + 1152);
  v16 = *(v0 + 1136);
  (*(*(v0 + 1240) + 32))(*(v0 + 1248), *(v0 + 1168), *(v0 + 1232));
  v17 = *(v0 + 344);
  v38[8] = *(v0 + 328);
  v38[9] = v17;
  v39[0] = *(v0 + 360);
  *(v39 + 15) = *(v0 + 375);
  v18 = *(v0 + 280);
  v38[4] = *(v0 + 264);
  v38[5] = v18;
  v19 = *(v0 + 312);
  v38[6] = *(v0 + 296);
  v38[7] = v19;
  v20 = *(v0 + 216);
  v38[0] = *(v0 + 200);
  v38[1] = v20;
  v21 = *(v0 + 248);
  v38[2] = *(v0 + 232);
  v38[3] = v21;
  v22 = *(*(*(v13 + 120) + 96) + 32);
  ObjectType = swift_getObjectType();
  FeedContextFactoryType.createFeedContext()(ObjectType, v22);
  sub_1D60B8884(v37, v36, v38, v16, v14);
  sub_1D5CEC940(v16, type metadata accessor for FeedContext);
  sub_1D61DE938(0, &unk_1EC8850B0, type metadata accessor for DebugFormatWorkspace, MEMORY[0x1E69E6F90]);
  v24 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D7273AE0;
  sub_1D61DE5F0(v14, v25 + v24, type metadata accessor for DebugFormatWorkspace);

  v26 = sub_1D725B30C();
  sub_1D6986DE4(v25);
  v26(v0 + 984, 0);

  v27 = *(v0 + 344);
  *(v0 + 696) = *(v0 + 328);
  *(v0 + 712) = v27;
  *(v0 + 728) = *(v0 + 360);
  *(v0 + 743) = *(v0 + 375);
  v28 = *(v0 + 280);
  *(v0 + 632) = *(v0 + 264);
  *(v0 + 648) = v28;
  v29 = *(v0 + 312);
  *(v0 + 664) = *(v0 + 296);
  *(v0 + 680) = v29;
  v30 = *(v0 + 216);
  *(v0 + 568) = *(v0 + 200);
  *(v0 + 584) = v30;
  v31 = *(v0 + 248);
  *(v0 + 600) = *(v0 + 232);
  *(v0 + 616) = v31;
  v32 = swift_task_alloc();
  *(v0 + 1424) = v32;
  *v32 = v0;
  v32[1] = sub_1D61DD5A4;
  v33 = *(v0 + 1248);
  v34 = *(v0 + 1176);

  return sub_1D60B9658(v33, v0 + 568, v34);
}

uint64_t sub_1D61DCE90()
{
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1344);
  v3 = *(v0 + 1224);
  v4 = *(v0 + 1216);
  v5 = *(v0 + 1208);
  sub_1D61DE5F0(v3, v4, sub_1D60CB67C);
  sub_1D61DE5F0(v4, v5, sub_1D60CB67C);

  sub_1D725B32C();

  sub_1D5B952F8(v2, v1);

  sub_1D5CEC940(v4, sub_1D60CB67C);
  sub_1D5CEC940(v3, sub_1D60CB67C);
  v6 = *(v0 + 160);
  *(v0 + 512) = *(v0 + 144);
  *(v0 + 528) = v6;
  *(v0 + 544) = *(v0 + 176);
  *(v0 + 559) = *(v0 + 191);
  v7 = *(v0 + 96);
  *(v0 + 448) = *(v0 + 80);
  *(v0 + 464) = v7;
  v8 = *(v0 + 128);
  *(v0 + 480) = *(v0 + 112);
  *(v0 + 496) = v8;
  v9 = *(v0 + 32);
  *(v0 + 384) = *(v0 + 16);
  *(v0 + 400) = v9;
  v10 = *(v0 + 64);
  *(v0 + 416) = *(v0 + 48);
  *(v0 + 432) = v10;
  sub_1D5ECF21C(v0 + 384);
  v11 = *(v0 + 1416);
  v12 = 0x80000001D73CE060;
  v13 = 0x1EC87D000uLL;
LABEL_2:
  sub_1D72584DC();
  while (1)
  {
    v14 = *(v0 + 1296);
    v15 = *(v0 + 1328) + 1;
    (*(*(v0 + 1240) + 8))(*(v0 + 1256), *(v0 + 1232));
    if (v15 == v14)
    {
      break;
    }

    v16 = *(v0 + 1328) + 1;
    *(v0 + 1328) = v16;
    (*(v0 + 1320))(*(v0 + 1256), *(v0 + 1024) + ((*(v0 + 196) + 32) & ~*(v0 + 196)) + *(v0 + 1312) * v16, *(v0 + 1232));
    if (sub_1D72584FC())
    {
      v65 = v12;
      *(v0 + 1344) = sub_1D72585DC();
      *(v0 + 1352) = v17;
      if (!v11)
      {
        type metadata accessor for FormatJSONDecoder(0);
        swift_allocObject();
        sub_1D5B7BACC(&unk_1F5112338);
        sub_1D5E32FE8();
        sub_1D725A69C();
        *(v0 + 1360) = 0;
        v33 = *(v0 + 1304);
        v34 = *(v0 + 1200);
        v35 = *(v0 + 1032);

        v36 = *(v35 + v33);
        *(v0 + 1368) = v36;
        v37 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
        *(v0 + 1376) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
        v38 = *(v0 + 32);
        v39 = *(v0 + 40);

        sub_1D60BF100(v38, v39);
        v41 = v40;
        v43 = v42;

        *(v0 + 32) = v41;
        *(v0 + 40) = v43;
        *(v0 + 1384) = *(v36 + v37);
        v44 = type metadata accessor for DebugFormatCacheFile(0);
        (*(*(v44 - 8) + 56))(v34, 1, 1, v44);
        swift_storeEnumTagMultiPayload();
        v45 = *(v0 + 160);
        *(v0 + 328) = *(v0 + 144);
        *(v0 + 344) = v45;
        *(v0 + 360) = *(v0 + 176);
        *(v0 + 375) = *(v0 + 191);
        v46 = *(v0 + 96);
        *(v0 + 264) = *(v0 + 80);
        *(v0 + 280) = v46;
        v47 = *(v0 + 128);
        *(v0 + 296) = *(v0 + 112);
        *(v0 + 312) = v47;
        v48 = *(v0 + 32);
        *(v0 + 200) = *(v0 + 16);
        *(v0 + 216) = v48;
        v49 = *(v0 + 64);
        *(v0 + 232) = *(v0 + 48);
        *(v0 + 248) = v49;

        *(v0 + 1392) = sub_1D72628FC();
        v50 = sub_1D726285C();
        v52 = v51;
        *(v0 + 1400) = v50;
        *(v0 + 1408) = v51;
        v53 = sub_1D61DCA38;
        v54 = v50;
        goto LABEL_11;
      }

      v64 = v11;
      v18 = v11;
      if (*(v13 + 1176) != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 1128);
      v20 = *(v0 + 1120);
      v21 = *(v0 + 1112);
      v22 = *(v0 + 1104);
      v23 = *(v0 + 1096);
      v56 = *(v0 + 1088);
      v61 = v19;
      v62 = *(v0 + 1080);
      v63 = *(v0 + 1072);
      v60 = *(v0 + 1056);
      v58 = *(v0 + 1064);
      v59 = *(v0 + 1048);
      v24 = qword_1EC9BA710;
      sub_1D725890C();
      (*(v22 + 16))(v20, v19, v23);
      v25 = v22;
      v57 = v22;
      v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v27 = (v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      (*(v25 + 32))(v29 + v26, v20, v23);
      v30 = (v29 + v27);
      v12 = v65;
      *v30 = 0xD00000000000001ALL;
      v30[1] = v65;
      *(v29 + v28) = v64;
      *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
      *(v0 + 968) = sub_1D5F5F790;
      *(v0 + 976) = v29;
      *(v0 + 936) = MEMORY[0x1E69E9820];
      *(v0 + 944) = 1107296256;
      *(v0 + 952) = sub_1D5B6B06C;
      *(v0 + 960) = &block_descriptor_59;
      v31 = _Block_copy((v0 + 936));
      v32 = v64;

      sub_1D7261AEC();
      *(v0 + 1016) = MEMORY[0x1E69E7CC0];
      sub_1D61DE99C(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1D5B73908(0);
      sub_1D61DE99C(&qword_1EDF1B560, sub_1D5B73908, MEMORY[0x1E69E6328]);
      sub_1D7263B6C();
      MEMORY[0x1DA6FA730](0, v56, v58, v31);
      _Block_release(v31);
      (*(v60 + 8))(v58, v59);
      (*(v62 + 8))(v56, v63);
      (*(v57 + 8))(v61, v23);

      v11 = 0;
      v13 = 0x1EC87D000;
      goto LABEL_2;
    }
  }

  v53 = sub_1D61DC7E8;
  v54 = 0;
  v52 = 0;
LABEL_11:

  return MEMORY[0x1EEE6DFA0](v53, v54, v52);
}

uint64_t sub_1D61DD5A4()
{
  v2 = *v1;
  v2[179] = v0;

  v3 = v2[147];
  if (v0)
  {
    sub_1D5CEC940(v3, sub_1D6032A5C);
    v4 = v2[176];
    v5 = v2[175];
    v6 = sub_1D61DD84C;
  }

  else
  {

    sub_1D5CEC940(v3, sub_1D6032A5C);
    v4 = v2[176];
    v5 = v2[175];
    v6 = sub_1D61DD728;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D61DD728()
{
  v1 = v0[156];
  v2 = v0[155];
  v3 = v0[154];
  v4 = v0[153];
  v5 = v0[150];
  v6 = v0[145];

  (*(v2 + 8))(v1, v3);
  sub_1D5CEC940(v5, type metadata accessor for DebugFormatWorkspaceKind);
  sub_1D61DE808(v6, v4, type metadata accessor for DebugFormatWorkspace);
  v0[177] = v0[179];
  (*(v0[144] + 56))(v0[153], 0, 1, v0[143]);
  v7 = v0[161];
  v8 = v0[160];

  return MEMORY[0x1EEE6DFA0](sub_1D61DCE90, v8, v7);
}

uint64_t sub_1D61DD84C()
{
  v1 = v0[156];
  v2 = v0[155];
  v3 = v0[154];
  v4 = v0[150];
  v5 = v0[145];

  sub_1D5CEC940(v5, type metadata accessor for DebugFormatWorkspace);
  (*(v2 + 8))(v1, v3);
  sub_1D5CEC940(v4, type metadata accessor for DebugFormatWorkspaceKind);
  v6 = v0[161];
  v7 = v0[160];

  return MEMORY[0x1EEE6DFA0](sub_1D61DD934, v7, v6);
}

uint64_t sub_1D61DD934()
{
  sub_1D5B952F8(*(v0 + 1344), *(v0 + 1352));
  v1 = *(v0 + 160);
  *(v0 + 880) = *(v0 + 144);
  *(v0 + 896) = v1;
  *(v0 + 912) = *(v0 + 176);
  *(v0 + 927) = *(v0 + 191);
  v2 = *(v0 + 96);
  *(v0 + 816) = *(v0 + 80);
  *(v0 + 832) = v2;
  v3 = *(v0 + 128);
  *(v0 + 848) = *(v0 + 112);
  *(v0 + 864) = v3;
  v4 = *(v0 + 32);
  *(v0 + 752) = *(v0 + 16);
  *(v0 + 768) = v4;
  v5 = *(v0 + 64);
  *(v0 + 784) = *(v0 + 48);
  *(v0 + 800) = v5;
  sub_1D5ECF21C(v0 + 752);
  v51 = *(v0 + 1432);
  v6 = v51;
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 1128);
  v8 = *(v0 + 1120);
  v9 = *(v0 + 1112);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1096);
  v52 = v7;
  v53 = *(v0 + 1080);
  v54 = *(v0 + 1072);
  v47 = *(v0 + 1088);
  v48 = *(v0 + 1064);
  v50 = *(v0 + 1056);
  v49 = *(v0 + 1048);
  v12 = qword_1EC9BA710;
  sub_1D725890C();
  (*(v10 + 16))(v8, v7, v11);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v13, v8, v11);
  v17 = (v16 + v14);
  *v17 = 0xD00000000000001ALL;
  v17[1] = 0x80000001D73CE060;
  *(v16 + v15) = v51;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v12;
  *(v0 + 968) = sub_1D5F5F790;
  *(v0 + 976) = v16;
  *(v0 + 936) = MEMORY[0x1E69E9820];
  *(v0 + 944) = 1107296256;
  *(v0 + 952) = sub_1D5B6B06C;
  *(v0 + 960) = &block_descriptor_59;
  v18 = _Block_copy((v0 + 936));
  v19 = v51;

  sub_1D7261AEC();
  *(v0 + 1016) = MEMORY[0x1E69E7CC0];
  sub_1D61DE99C(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D5B73908(0);
  sub_1D61DE99C(&qword_1EDF1B560, sub_1D5B73908, MEMORY[0x1E69E6328]);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v47, v48, v18);
  _Block_release(v18);
  (*(v50 + 8))(v48, v49);
  (*(v53 + 8))(v47, v54);
  (*(v10 + 8))(v52, v11);

  sub_1D72584DC();
  while (1)
  {
    v20 = *(v0 + 1296);
    v21 = *(v0 + 1328) + 1;
    (*(*(v0 + 1240) + 8))(*(v0 + 1256), *(v0 + 1232));
    if (v21 == v20)
    {
      break;
    }

    v22 = *(v0 + 1328) + 1;
    *(v0 + 1328) = v22;
    (*(v0 + 1320))(*(v0 + 1256), *(v0 + 1024) + ((*(v0 + 196) + 32) & ~*(v0 + 196)) + *(v0 + 1312) * v22, *(v0 + 1232));
    if (sub_1D72584FC())
    {
      *(v0 + 1344) = sub_1D72585DC();
      *(v0 + 1352) = v23;
      type metadata accessor for FormatJSONDecoder(0);
      swift_allocObject();
      sub_1D5B7BACC(&unk_1F5112338);
      sub_1D5E32FE8();
      sub_1D725A69C();
      *(v0 + 1360) = 0;
      v24 = *(v0 + 1304);
      v25 = *(v0 + 1200);
      v26 = *(v0 + 1032);

      v27 = *(v26 + v24);
      *(v0 + 1368) = v27;
      v28 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
      *(v0 + 1376) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager;
      v29 = *(v0 + 32);
      v30 = *(v0 + 40);

      sub_1D60BF100(v29, v30);
      v32 = v31;
      v34 = v33;

      *(v0 + 32) = v32;
      *(v0 + 40) = v34;
      *(v0 + 1384) = *(v27 + v28);
      v35 = type metadata accessor for DebugFormatCacheFile(0);
      (*(*(v35 - 8) + 56))(v25, 1, 1, v35);
      swift_storeEnumTagMultiPayload();
      v36 = *(v0 + 160);
      *(v0 + 328) = *(v0 + 144);
      *(v0 + 344) = v36;
      *(v0 + 360) = *(v0 + 176);
      *(v0 + 375) = *(v0 + 191);
      v37 = *(v0 + 96);
      *(v0 + 264) = *(v0 + 80);
      *(v0 + 280) = v37;
      v38 = *(v0 + 128);
      *(v0 + 296) = *(v0 + 112);
      *(v0 + 312) = v38;
      v39 = *(v0 + 32);
      *(v0 + 200) = *(v0 + 16);
      *(v0 + 216) = v39;
      v40 = *(v0 + 64);
      *(v0 + 232) = *(v0 + 48);
      *(v0 + 248) = v40;

      *(v0 + 1392) = sub_1D72628FC();
      v41 = sub_1D726285C();
      v43 = v42;
      *(v0 + 1400) = v41;
      *(v0 + 1408) = v42;
      v44 = sub_1D61DCA38;
      v45 = v41;
      goto LABEL_8;
    }
  }

  v44 = sub_1D61DC7E8;
  v45 = 0;
  v43 = 0;
LABEL_8:

  return MEMORY[0x1EEE6DFA0](v44, v45, v43);
}

void sub_1D61DE128(_WORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D61DE1A8(__int16 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

void sub_1D61DE21C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D61DE29C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

double sub_1D61DE318()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return result;
}

uint64_t sub_1D61DE394(uint64_t a1, uint64_t *a2)
{
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  sub_1D61DE5F0(a1, &v12 - v9, sub_1D60CB67C);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D61DE5F0(v10, v6, sub_1D60CB67C);

  sub_1D72600DC();
  return sub_1D5CEC940(v10, sub_1D60CB67C);
}

void sub_1D61DE4C0(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D61DE540(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D61DE5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D61DE658(uint64_t a1)
{
  v3 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_1D61D8888(a1, v4, v5, v6);
}

uint64_t sub_1D61DE6CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D5B64680;

  return sub_1D61D8CCC(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1D61DE808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D61DE870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64684;

  return sub_1D61DBE04(a1, v4, v5, v6, v7, v8);
}

void sub_1D61DE938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D61DE99C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D61DE9E4(uint64_t a1)
{
  if (!qword_1EC8850C8)
  {
    sub_1D61DEA40();
    v1 = sub_1D726127C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8850C8);
    }
  }
}

unint64_t sub_1D61DEA40()
{
  result = qword_1EC8850D0;
  if (!qword_1EC8850D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8850D0);
  }

  return result;
}

void sub_1D61DEAAC()
{
  v1 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v2 = swift_allocObject();
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___workspaceTreeViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___model) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___uploadPackageBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___createWorkspaceBarButtonItem) = 0;
  *(v2 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___exportWorkspaceBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceTreeViewController____lazy_storage___configureWorkspaceBarButtonItem) = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t static FormatCodingHighGroupPriorityStrategy.shouldEncode(wrappedValue:)(_BYTE *a1)
{
  if (*a1 == 2)
  {

    v1 = 0;
  }

  else
  {
    v2 = sub_1D72646CC();

    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_1D61DEC50(_BYTE *a1)
{
  if (*a1 == 2)
  {

    v1 = 0;
  }

  else
  {
    v2 = sub_1D72646CC();

    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

unint64_t sub_1D61DECFC(uint64_t a1)
{
  result = sub_1D61DED24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61DED24()
{
  result = qword_1EC8850D8;
  if (!qword_1EC8850D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8850D8);
  }

  return result;
}

unint64_t sub_1D61DED78()
{
  result = qword_1EDF2C700;
  if (!qword_1EDF2C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C700);
  }

  return result;
}

unint64_t sub_1D61DEDCC()
{
  result = qword_1EDF0FC18;
  if (!qword_1EDF0FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FC18);
  }

  return result;
}

uint64_t FormatRoute.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D61DEEC4()
{
  result = qword_1EC8850E0;
  if (!qword_1EC8850E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8850E0);
  }

  return result;
}

unint64_t sub_1D61DEF18(uint64_t a1)
{
  result = sub_1D61DEF40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D61DEF40()
{
  result = qword_1EC8850E8;
  if (!qword_1EC8850E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8850E8);
  }

  return result;
}

unint64_t sub_1D61DEF94(void *a1)
{
  a1[1] = sub_1D5CD4024();
  a1[2] = sub_1D61DEFCC();
  result = sub_1D61DEEC4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D61DEFCC()
{
  result = qword_1EDF12800;
  if (!qword_1EDF12800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12800);
  }

  return result;
}

void *sub_1D61DF048(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v4 = inited + 32;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8(0);
      v13 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1D7273AE0;
      v8 = v7 + v13;
      v9 = 0x6174654420656553;
      v11 = 0xEB00000000736C69;
      v10 = v8;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v4 = inited + 32;
      sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8(0);
      v17 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1D7273AE0;
      v8 = v7 + v17;
      v10 = v8;
      v9 = 1701736270;
      v11 = 0xE400000000000000;
    }
  }

  else if (v2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v4 = inited + 32;
    sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8(0);
    v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7273AE0;
    v8 = v7 + v15;
    v9 = 0x65726F4D20656553;
    v10 = v8;
    v11 = 0xE800000000000000;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v4 = inited + 32;
    sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8(0);
    v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7273AE0;
    v8 = v7 + v6;
    v9 = 0x6469562079616C50;
    v10 = v8;
    v11 = 0xEA00000000006F65;
  }

  sub_1D711F844(1701869908, 0xE400000000000000, v9, v11, v10);
  v18 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_1D6795150(0x6574756F52, 0xE500000000000000, 0, 0, v7, v23);
  swift_setDeallocating();
  sub_1D5EF5F0C(v8, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v19 = swift_allocObject();
  *(inited + 32) = v19;
  *(v19 + 48) = v24;
  v20 = v23[1];
  *(v19 + 16) = v23[0];
  *(v19 + 32) = v20;
  v21 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5EF5F0C(v4, sub_1D5E4F358);
  return v21;
}

unint64_t sub_1D61DF5BC(uint64_t a1)
{
  v23 = a1;
  v2 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatOption(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 8);
  if (*(v1 + 24))
  {
    v21 = *(v1 + 16);

    FormatOptionCollection.subscript.getter(v15, v16, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1D5D2CF88(v9, sub_1D5E04C00);
      *v5 = v15;
      v5[1] = v16;
      swift_storeEnumTagMultiPayload();
      sub_1D5C75E0C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      sub_1D61E0EAC(v5, v17);
      swift_willThrow();
      sub_1D5D2CF88(v5, type metadata accessor for FormatLayoutError);
    }

    else
    {

      sub_1D5D247E0(v9, v14);

      v18 = v22;
      sub_1D6B744A8(v23, &v24);
      if (v18)
      {
        sub_1D5D2CF88(v14, type metadata accessor for FormatOption);
      }

      else
      {

        v15 = sub_1D6B7DB60(v24, v15, v16, v21, v23);
        sub_1D5D2CF88(v14, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
  }

  return v15;
}

unint64_t FormatSymbolName.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v48 = &v49[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v49[-1] - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49[-1] - v14;
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v49[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49[-1] - v22;
  v25 = *v1;
  v24 = *(v1 + 8);
  v50 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    sub_1D5C30408();
    sub_1D71B5B30(&type metadata for FormatCodingKeys, v28, v26, &type metadata for FormatVersions.JazzkonG, v27, &off_1F51F6BF8, v23);
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD18);
    (*(*(v29 - 8) + 16))(v15, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B41A8(0, v25, v24, v50, v15);
    sub_1D5D2CF88(v15, type metadata accessor for FormatVersionRequirement);
    v31 = sub_1D5D30DC4;
    v32 = v23;
    return sub_1D5D2CF88(v32, v31);
  }

  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);

  if (sub_1D602437C(v35, v33, &type metadata for FormatVersions.JazzkonG, v34, &off_1F51F6BF8))
  {
    v36 = a1[3];
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v36);
    sub_1D5C30408();
    sub_1D71B5B30(&type metadata for FormatCodingKeys, v38, v36, &type metadata for FormatVersions.JazzkonG, v37, &off_1F51F6BF8, v19);
    v39 = qword_1EDF31EA8;

    if (v39 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCD18);
    (*(*(v40 - 8) + 16))(v11, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63B4340(1, v25, v24, v11);
    v42 = v50;
    sub_1D5FBA070(v25, v24, v50, 0);
    if (v3)
    {
      sub_1D5FBA070(v25, v24, v42, 0);
      sub_1D5D2CF88(v11, type metadata accessor for FormatVersionRequirement);
      v31 = sub_1D5D30DC4;
      v32 = v19;
      return sub_1D5D2CF88(v32, v31);
    }

    sub_1D5D2CF88(v11, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CF88(v19, sub_1D5D30DC4);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v49, v49[3]);
    sub_1D726473C();
    if (v2)
    {
      sub_1D5FBA070(v25, v24, v50, 0);
      return __swift_destroy_boxed_opaque_existential_1(v49);
    }

    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  result = sub_1D61E05F4(v25, v24);
  if (result == 13)
  {
    return result;
  }

  v44 = a1[3];
  v45 = a1[4];
  v46 = result;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v47 = v48;
  sub_1D61DFE80(v46, v48);
  sub_1D5D2BEC4(v47, sub_1D5B4AA6C, 0, v44, v45);
  v31 = type metadata accessor for FormatVersionRequirement;
  v32 = v47;
  return sub_1D5D2CF88(v32, v31);
}