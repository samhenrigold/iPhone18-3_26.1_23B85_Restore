void sub_1D6FBF074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v32 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v33 = *(v32 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v33;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDFBD0(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D6C8DC84(v11);

    sub_1D6FD464C(a2);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v31 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatSponsoredBannerNodeStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v31;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D6C8D0C4(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D6C8DC84(v11);

  sub_1D6FD464C(a2);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBF418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v32 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return;
  }

  v33 = *(v32 + 56);

  sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v33;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16))
  {
    goto LABEL_40;
  }

  sub_1D5B69D90(*(a1 + 32), *(a1 + 40));
  if ((v12 & 1) == 0)
  {
    goto LABEL_40;
  }

  v14 = sub_1D6FDFE74(v13, a1);

  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_39:

LABEL_40:
    sub_1D6733E28(v11);

    sub_1D6FCE0B4(a2);

    return;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1DA6FB460](0, v14);
      if (v16 < 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v31 = *(v14 + 32);

      if (v16 < 0)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return;
      }
    }

    if (v15)
    {
      if (sub_1D7263BFC() < 1)
      {
        goto LABEL_44;
      }

      v17 = sub_1D7263BFC();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_44;
      }
    }

    if (v17 < v16)
    {
      goto LABEL_45;
    }

    if ((v14 & 0xC000000000000001) == 0 || v16 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatGroupNodeMaskStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      sub_1D72640EC();
      v15 = v21;
      v20 = v22;
      v24 = v23;

      v16 = v24 >> 1;
    }

    else
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v31;

    v25 = v16 - v20;
    if (v16 == v20)
    {
      break;
    }

    if (v16 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v16;
    }

    v27 = v26 - v20;
    v28 = (v15 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v15 = v29;

      v14 = sub_1D6732F84(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    v16 = sub_1D7263BFC();
    if (!v16)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D6733E28(v11);

  sub_1D6FCE0B4(a2);
  if (v4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1D6FBF7BC(unint64_t a1, char *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v56 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v61 = &v56 - v15;
  v70 = a1;
  v16 = *(*(a3 + 24) + 16);
  if (v16)
  {
    v57 = a1;
    v58 = v4;
    v60 = a3;
    v17 = *(v16 + 24);
    *&v62 = *v6;
    v18 = v62;
    v19 = sub_1D6E7C394();
    v21 = v20;
    *&v62 = v18;
    v22 = sub_1D6E7A824();
    v59 = a2;
    v23 = *&a2[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace];
    v24 = *(v6 + 24);
    v69[0] = *(v6 + 8);
    v69[1] = v24;
    type metadata accessor for FormatNodeDebugRecord();
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 88) = 0;
    *(v25 + 96) = 1;
    *(v25 + 104) = 0;
    *(v25 + 112) = 0;
    *(v25 + 120) = 0;
    *(v25 + 128) = 1;
    v27 = *(&v69[0] + 1);
    if (*(&v69[0] + 1))
    {
      v28 = *&v69[0];
      *(v25 + 16) = v19;
      *(v25 + 24) = v21;
      *(v25 + 40) = v22;
      *(v25 + 32) = v23;
      *(v25 + 56) = v28;
      *(v25 + 64) = v27;
      *(v25 + 72) = *(v6 + 24);

      sub_1D6FF924C(v69, &v62, &qword_1EC8992A8, &type metadata for FormatSourceMap);

      *(v26 + 48) = CACurrentMediaTime();
      *(v26 + 88) = 0;
      *(v26 + 96) = 1;
      swift_beginAccess();

      MEMORY[0x1DA6F9CE0](v29);
      if (*((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }

    else
    {

      sub_1D5D25B88(*(v26 + 120), *(v26 + 128));
      swift_deallocPartialClassInstance();

      v26 = 0;
    }

    a3 = v60;
    a2 = v59;
    v5 = v58;
    a1 = v57;
  }

  else
  {
    v26 = 0;
  }

  v30 = *(a3 + 80);
  v31 = *(v6 + 16);
  v32 = *(v6 + 24);
  v33 = *(v6 + 32);
  if (v30)
  {
    if (v31)
    {
      v59 = *(v6 + 8);
      v60 = v32;
      v58 = v33;
      v34 = *(v6 + 80);
      v66 = *(v6 + 64);
      v67 = v34;
      v68 = *(v6 + 96);
      v35 = *(v6 + 16);
      v62 = *v6;
      v63 = v35;
      v36 = *(v6 + 48);
      v64 = *(v6 + 32);
      v65 = v36;
      swift_bridgeObjectRetain_n();

      v37 = v61;
      sub_1D6F5E8C4(a2, v61);
      if (v5)
      {

        goto LABEL_15;
      }

      v42 = swift_allocObject();
      v43 = *(v6 + 32);
      *(v42 + 104) = *(v6 + 48);
      v44 = *(v6 + 80);
      *(v42 + 120) = *(v6 + 64);
      *(v42 + 136) = v44;
      v45 = *(v6 + 16);
      *(v42 + 56) = *v6;
      *(v42 + 72) = v45;
      v46 = v59;
      *(v42 + 16) = a2;
      *(v42 + 24) = v46;
      v47 = v60;
      *(v42 + 32) = v31;
      *(v42 + 40) = v47;
      *(v42 + 48) = v58;
      v48 = *(v6 + 96);
      *(v42 + 88) = v43;
      *(v42 + 152) = v48;
      *(v42 + 160) = v30;
      *(v42 + 168) = a3;

      sub_1D5C5C4CC(v6, &v62);
      sub_1D5EB5368(0);
      sub_1D6FF91E8();

      sub_1D72599CC();

LABEL_25:

      sub_1D6FFCA9C(v37, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      goto LABEL_26;
    }
  }

  else if (v31)
  {
    v59 = *(v6 + 8);
    v60 = v32;
    v38 = *(v6 + 80);
    v66 = *(v6 + 64);
    v67 = v38;
    v68 = *(v6 + 96);
    v39 = *(v6 + 16);
    v62 = *v6;
    v63 = v39;
    v40 = *(v6 + 48);
    v64 = *(v6 + 32);
    v65 = v40;
    swift_bridgeObjectRetain_n();
    v41 = v56;
    sub_1D6F5E8C4(a2, v56);
    if (v5)
    {
LABEL_15:
      swift_bridgeObjectRelease_n();
      if (!v26)
      {
        return;
      }

      goto LABEL_19;
    }

    v49 = swift_allocObject();
    v50 = *(v6 + 32);
    *(v49 + 104) = *(v6 + 48);
    v51 = *(v6 + 80);
    *(v49 + 120) = *(v6 + 64);
    *(v49 + 136) = v51;
    v52 = *(v6 + 16);
    *(v49 + 56) = *v6;
    *(v49 + 72) = v52;
    v53 = v59;
    *(v49 + 16) = a2;
    *(v49 + 24) = v53;
    v54 = v60;
    *(v49 + 32) = v31;
    *(v49 + 40) = v54;
    *(v49 + 48) = v33;
    v55 = *(v6 + 96);
    *(v49 + 88) = v50;
    *(v49 + 152) = v55;
    *(v49 + 160) = a3;

    sub_1D5C5C4CC(v6, &v62);
    sub_1D5EB5368(0);
    sub_1D6FF91E8();

    sub_1D72599CC();

    v37 = v41;
    goto LABEL_25;
  }

  sub_1D6FE0B78(a1, a2, a3, *v6);
  if (v5)
  {
    if (!v26)
    {
      return;
    }

LABEL_19:
    if ((*(v26 + 96) & 1) == 0)
    {
LABEL_21:

      return;
    }

LABEL_20:
    *(v26 + 88) = CACurrentMediaTime();
    *(v26 + 96) = 0;
    goto LABEL_21;
  }

LABEL_26:
  if (v26)
  {
    if (*(v26 + 96) != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

void sub_1D6FBFE04(unint64_t a1, char *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v56 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v61 = &v56 - v15;
  v70 = a1;
  v16 = *(*(a3 + 24) + 16);
  if (v16)
  {
    v57 = a1;
    v58 = v4;
    v60 = a3;
    v17 = *(v16 + 24);
    *&v62 = *v6;
    v18 = v62;
    v19 = sub_1D6E7C394();
    v21 = v20;
    *&v62 = v18;
    v22 = sub_1D6E7A824();
    v59 = a2;
    v23 = *&a2[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace];
    v24 = *(v6 + 24);
    v69[0] = *(v6 + 8);
    v69[1] = v24;
    type metadata accessor for FormatNodeDebugRecord();
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 88) = 0;
    *(v25 + 96) = 1;
    *(v25 + 104) = 0;
    *(v25 + 112) = 0;
    *(v25 + 120) = 0;
    *(v25 + 128) = 1;
    v27 = *(&v69[0] + 1);
    if (*(&v69[0] + 1))
    {
      v28 = *&v69[0];
      *(v25 + 16) = v19;
      *(v25 + 24) = v21;
      *(v25 + 40) = v22;
      *(v25 + 32) = v23;
      *(v25 + 56) = v28;
      *(v25 + 64) = v27;
      *(v25 + 72) = *(v6 + 24);

      sub_1D6FF924C(v69, &v62, &qword_1EC8992A8, &type metadata for FormatSourceMap);

      *(v26 + 48) = CACurrentMediaTime();
      *(v26 + 88) = 0;
      *(v26 + 96) = 1;
      swift_beginAccess();

      MEMORY[0x1DA6F9CE0](v29);
      if (*((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }

    else
    {

      sub_1D5D25B88(*(v26 + 120), *(v26 + 128));
      swift_deallocPartialClassInstance();

      v26 = 0;
    }

    a3 = v60;
    a2 = v59;
    v5 = v58;
    a1 = v57;
  }

  else
  {
    v26 = 0;
  }

  v30 = *(a3 + 80);
  v31 = *(v6 + 16);
  v32 = *(v6 + 24);
  v33 = *(v6 + 32);
  if (v30)
  {
    if (v31)
    {
      v59 = *(v6 + 8);
      v60 = v32;
      v58 = v33;
      v34 = *(v6 + 80);
      v66 = *(v6 + 64);
      v67 = v34;
      v68 = *(v6 + 96);
      v35 = *(v6 + 16);
      v62 = *v6;
      v63 = v35;
      v36 = *(v6 + 48);
      v64 = *(v6 + 32);
      v65 = v36;
      swift_bridgeObjectRetain_n();

      v37 = v61;
      sub_1D6F5E8C4(a2, v61);
      if (v5)
      {

        goto LABEL_15;
      }

      v42 = swift_allocObject();
      v43 = *(v6 + 32);
      *(v42 + 104) = *(v6 + 48);
      v44 = *(v6 + 80);
      *(v42 + 120) = *(v6 + 64);
      *(v42 + 136) = v44;
      v45 = *(v6 + 16);
      *(v42 + 56) = *v6;
      *(v42 + 72) = v45;
      v46 = v59;
      *(v42 + 16) = a2;
      *(v42 + 24) = v46;
      v47 = v60;
      *(v42 + 32) = v31;
      *(v42 + 40) = v47;
      *(v42 + 48) = v58;
      v48 = *(v6 + 96);
      *(v42 + 88) = v43;
      *(v42 + 152) = v48;
      *(v42 + 160) = v30;
      *(v42 + 168) = a3;

      sub_1D5C5C4CC(v6, &v62);
      sub_1D5EB563C(0);
      sub_1D6FF92D8();

      sub_1D72599CC();

LABEL_25:

      sub_1D6FFCA9C(v37, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      goto LABEL_26;
    }
  }

  else if (v31)
  {
    v59 = *(v6 + 8);
    v60 = v32;
    v38 = *(v6 + 80);
    v66 = *(v6 + 64);
    v67 = v38;
    v68 = *(v6 + 96);
    v39 = *(v6 + 16);
    v62 = *v6;
    v63 = v39;
    v40 = *(v6 + 48);
    v64 = *(v6 + 32);
    v65 = v40;
    swift_bridgeObjectRetain_n();
    v41 = v56;
    sub_1D6F5E8C4(a2, v56);
    if (v5)
    {
LABEL_15:
      swift_bridgeObjectRelease_n();
      if (!v26)
      {
        return;
      }

      goto LABEL_19;
    }

    v49 = swift_allocObject();
    v50 = *(v6 + 32);
    *(v49 + 104) = *(v6 + 48);
    v51 = *(v6 + 80);
    *(v49 + 120) = *(v6 + 64);
    *(v49 + 136) = v51;
    v52 = *(v6 + 16);
    *(v49 + 56) = *v6;
    *(v49 + 72) = v52;
    v53 = v59;
    *(v49 + 16) = a2;
    *(v49 + 24) = v53;
    v54 = v60;
    *(v49 + 32) = v31;
    *(v49 + 40) = v54;
    *(v49 + 48) = v33;
    v55 = *(v6 + 96);
    *(v49 + 88) = v50;
    *(v49 + 152) = v55;
    *(v49 + 160) = a3;

    sub_1D5C5C4CC(v6, &v62);
    sub_1D5EB563C(0);
    sub_1D6FF92D8();

    sub_1D72599CC();

    v37 = v41;
    goto LABEL_25;
  }

  sub_1D6FE1D5C(a1, a2, a3, *v6);
  if (v5)
  {
    if (!v26)
    {
      return;
    }

LABEL_19:
    if ((*(v26 + 96) & 1) == 0)
    {
LABEL_21:

      return;
    }

LABEL_20:
    *(v26 + 88) = CACurrentMediaTime();
    *(v26 + 96) = 0;
    goto LABEL_21;
  }

LABEL_26:
  if (v26)
  {
    if (*(v26 + 96) != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

void sub_1D6FC044C(unint64_t a1, char *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v56 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v61 = &v56 - v15;
  v70 = a1;
  v16 = *(*(a3 + 24) + 16);
  if (v16)
  {
    v57 = a1;
    v58 = v4;
    v60 = a3;
    v17 = *(v16 + 24);
    *&v62 = *v6;
    v18 = v62;
    v19 = sub_1D6E7C394();
    v21 = v20;
    *&v62 = v18;
    v22 = sub_1D6E7A824();
    v59 = a2;
    v23 = *&a2[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace];
    v24 = *(v6 + 24);
    v69[0] = *(v6 + 8);
    v69[1] = v24;
    type metadata accessor for FormatNodeDebugRecord();
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 88) = 0;
    *(v25 + 96) = 1;
    *(v25 + 104) = 0;
    *(v25 + 112) = 0;
    *(v25 + 120) = 0;
    *(v25 + 128) = 1;
    v27 = *(&v69[0] + 1);
    if (*(&v69[0] + 1))
    {
      v28 = *&v69[0];
      *(v25 + 16) = v19;
      *(v25 + 24) = v21;
      *(v25 + 40) = v22;
      *(v25 + 32) = v23;
      *(v25 + 56) = v28;
      *(v25 + 64) = v27;
      *(v25 + 72) = *(v6 + 24);

      sub_1D6FF924C(v69, &v62, &qword_1EC8992A8, &type metadata for FormatSourceMap);

      *(v26 + 48) = CACurrentMediaTime();
      *(v26 + 88) = 0;
      *(v26 + 96) = 1;
      swift_beginAccess();

      MEMORY[0x1DA6F9CE0](v29);
      if (*((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }

    else
    {

      sub_1D5D25B88(*(v26 + 120), *(v26 + 128));
      swift_deallocPartialClassInstance();

      v26 = 0;
    }

    a3 = v60;
    a2 = v59;
    v5 = v58;
    a1 = v57;
  }

  else
  {
    v26 = 0;
  }

  v30 = *(a3 + 80);
  v31 = *(v6 + 16);
  v32 = *(v6 + 24);
  v33 = *(v6 + 32);
  if (v30)
  {
    if (v31)
    {
      v59 = *(v6 + 8);
      v60 = v32;
      v58 = v33;
      v34 = *(v6 + 80);
      v66 = *(v6 + 64);
      v67 = v34;
      v68 = *(v6 + 96);
      v35 = *(v6 + 16);
      v62 = *v6;
      v63 = v35;
      v36 = *(v6 + 48);
      v64 = *(v6 + 32);
      v65 = v36;
      swift_bridgeObjectRetain_n();

      v37 = v61;
      sub_1D6F5E8C4(a2, v61);
      if (v5)
      {

        goto LABEL_15;
      }

      v42 = swift_allocObject();
      v43 = *(v6 + 32);
      *(v42 + 104) = *(v6 + 48);
      v44 = *(v6 + 80);
      *(v42 + 120) = *(v6 + 64);
      *(v42 + 136) = v44;
      v45 = *(v6 + 16);
      *(v42 + 56) = *v6;
      *(v42 + 72) = v45;
      v46 = v59;
      *(v42 + 16) = a2;
      *(v42 + 24) = v46;
      v47 = v60;
      *(v42 + 32) = v31;
      *(v42 + 40) = v47;
      *(v42 + 48) = v58;
      v48 = *(v6 + 96);
      *(v42 + 88) = v43;
      *(v42 + 152) = v48;
      *(v42 + 160) = v30;
      *(v42 + 168) = a3;

      sub_1D5C5C4CC(v6, &v62);
      sub_1D5EB5290(0);
      sub_1D6FF9338();

      sub_1D72599CC();

LABEL_25:

      sub_1D6FFCA9C(v37, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      goto LABEL_26;
    }
  }

  else if (v31)
  {
    v59 = *(v6 + 8);
    v60 = v32;
    v38 = *(v6 + 80);
    v66 = *(v6 + 64);
    v67 = v38;
    v68 = *(v6 + 96);
    v39 = *(v6 + 16);
    v62 = *v6;
    v63 = v39;
    v40 = *(v6 + 48);
    v64 = *(v6 + 32);
    v65 = v40;
    swift_bridgeObjectRetain_n();
    v41 = v56;
    sub_1D6F5E8C4(a2, v56);
    if (v5)
    {
LABEL_15:
      swift_bridgeObjectRelease_n();
      if (!v26)
      {
        return;
      }

      goto LABEL_19;
    }

    v49 = swift_allocObject();
    v50 = *(v6 + 32);
    *(v49 + 104) = *(v6 + 48);
    v51 = *(v6 + 80);
    *(v49 + 120) = *(v6 + 64);
    *(v49 + 136) = v51;
    v52 = *(v6 + 16);
    *(v49 + 56) = *v6;
    *(v49 + 72) = v52;
    v53 = v59;
    *(v49 + 16) = a2;
    *(v49 + 24) = v53;
    v54 = v60;
    *(v49 + 32) = v31;
    *(v49 + 40) = v54;
    *(v49 + 48) = v33;
    v55 = *(v6 + 96);
    *(v49 + 88) = v50;
    *(v49 + 152) = v55;
    *(v49 + 160) = a3;

    sub_1D5C5C4CC(v6, &v62);
    sub_1D5EB5290(0);
    sub_1D6FF9338();

    sub_1D72599CC();

    v37 = v41;
    goto LABEL_25;
  }

  sub_1D6FE2F40(a1, a2, a3, *v6);
  if (v5)
  {
    if (!v26)
    {
      return;
    }

LABEL_19:
    if ((*(v26 + 96) & 1) == 0)
    {
LABEL_21:

      return;
    }

LABEL_20:
    *(v26 + 88) = CACurrentMediaTime();
    *(v26 + 96) = 0;
    goto LABEL_21;
  }

LABEL_26:
  if (v26)
  {
    if (*(v26 + 96) != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

void sub_1D6FC0A94(unint64_t a1, char *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v56 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v61 = &v56 - v15;
  v70 = a1;
  v16 = *(*(a3 + 24) + 16);
  if (v16)
  {
    v57 = a1;
    v58 = v4;
    v60 = a3;
    v17 = *(v16 + 24);
    *&v62 = *v6;
    v18 = v62;
    v19 = sub_1D6E7C394();
    v21 = v20;
    *&v62 = v18;
    v22 = sub_1D6E7A824();
    v59 = a2;
    v23 = *&a2[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace];
    v24 = *(v6 + 24);
    v69[0] = *(v6 + 8);
    v69[1] = v24;
    type metadata accessor for FormatNodeDebugRecord();
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 88) = 0;
    *(v25 + 96) = 1;
    *(v25 + 104) = 0;
    *(v25 + 112) = 0;
    *(v25 + 120) = 0;
    *(v25 + 128) = 1;
    v27 = *(&v69[0] + 1);
    if (*(&v69[0] + 1))
    {
      v28 = *&v69[0];
      *(v25 + 16) = v19;
      *(v25 + 24) = v21;
      *(v25 + 40) = v22;
      *(v25 + 32) = v23;
      *(v25 + 56) = v28;
      *(v25 + 64) = v27;
      *(v25 + 72) = *(v6 + 24);

      sub_1D6FF924C(v69, &v62, &qword_1EC8992A8, &type metadata for FormatSourceMap);

      *(v26 + 48) = CACurrentMediaTime();
      *(v26 + 88) = 0;
      *(v26 + 96) = 1;
      swift_beginAccess();

      MEMORY[0x1DA6F9CE0](v29);
      if (*((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }

    else
    {

      sub_1D5D25B88(*(v26 + 120), *(v26 + 128));
      swift_deallocPartialClassInstance();

      v26 = 0;
    }

    a3 = v60;
    a2 = v59;
    v5 = v58;
    a1 = v57;
  }

  else
  {
    v26 = 0;
  }

  v30 = *(a3 + 80);
  v31 = *(v6 + 16);
  v32 = *(v6 + 24);
  v33 = *(v6 + 32);
  if (v30)
  {
    if (v31)
    {
      v59 = *(v6 + 8);
      v60 = v32;
      v58 = v33;
      v34 = *(v6 + 80);
      v66 = *(v6 + 64);
      v67 = v34;
      v68 = *(v6 + 96);
      v35 = *(v6 + 16);
      v62 = *v6;
      v63 = v35;
      v36 = *(v6 + 48);
      v64 = *(v6 + 32);
      v65 = v36;
      swift_bridgeObjectRetain_n();

      v37 = v61;
      sub_1D6F5E8C4(a2, v61);
      if (v5)
      {

        goto LABEL_15;
      }

      v42 = swift_allocObject();
      v43 = *(v6 + 32);
      *(v42 + 104) = *(v6 + 48);
      v44 = *(v6 + 80);
      *(v42 + 120) = *(v6 + 64);
      *(v42 + 136) = v44;
      v45 = *(v6 + 16);
      *(v42 + 56) = *v6;
      *(v42 + 72) = v45;
      v46 = v59;
      *(v42 + 16) = a2;
      *(v42 + 24) = v46;
      v47 = v60;
      *(v42 + 32) = v31;
      *(v42 + 40) = v47;
      *(v42 + 48) = v58;
      v48 = *(v6 + 96);
      *(v42 + 88) = v43;
      *(v42 + 152) = v48;
      *(v42 + 160) = v30;
      *(v42 + 168) = a3;

      sub_1D5C5C4CC(v6, &v62);
      sub_1D6FFA04C(0);
      sub_1D6FFA06C();

      sub_1D72599CC();

LABEL_25:

      sub_1D6FFCA9C(v37, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      goto LABEL_26;
    }
  }

  else if (v31)
  {
    v59 = *(v6 + 8);
    v60 = v32;
    v38 = *(v6 + 80);
    v66 = *(v6 + 64);
    v67 = v38;
    v68 = *(v6 + 96);
    v39 = *(v6 + 16);
    v62 = *v6;
    v63 = v39;
    v40 = *(v6 + 48);
    v64 = *(v6 + 32);
    v65 = v40;
    swift_bridgeObjectRetain_n();
    v41 = v56;
    sub_1D6F5E8C4(a2, v56);
    if (v5)
    {
LABEL_15:
      swift_bridgeObjectRelease_n();
      if (!v26)
      {
        return;
      }

      goto LABEL_19;
    }

    v49 = swift_allocObject();
    v50 = *(v6 + 32);
    *(v49 + 104) = *(v6 + 48);
    v51 = *(v6 + 80);
    *(v49 + 120) = *(v6 + 64);
    *(v49 + 136) = v51;
    v52 = *(v6 + 16);
    *(v49 + 56) = *v6;
    *(v49 + 72) = v52;
    v53 = v59;
    *(v49 + 16) = a2;
    *(v49 + 24) = v53;
    v54 = v60;
    *(v49 + 32) = v31;
    *(v49 + 40) = v54;
    *(v49 + 48) = v33;
    v55 = *(v6 + 96);
    *(v49 + 88) = v50;
    *(v49 + 152) = v55;
    *(v49 + 160) = a3;

    sub_1D5C5C4CC(v6, &v62);
    sub_1D6FFA04C(0);
    sub_1D6FFA06C();

    sub_1D72599CC();

    v37 = v41;
    goto LABEL_25;
  }

  sub_1D6FE4124(a1, a2, a3, *v6);
  if (v5)
  {
    if (!v26)
    {
      return;
    }

LABEL_19:
    if ((*(v26 + 96) & 1) == 0)
    {
LABEL_21:

      return;
    }

LABEL_20:
    *(v26 + 88) = CACurrentMediaTime();
    *(v26 + 96) = 0;
    goto LABEL_21;
  }

LABEL_26:
  if (v26)
  {
    if (*(v26 + 96) != 1)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

uint64_t sub_1D6FC10DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v6 = *(v3 + 144);
  v7 = *(v6 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem);
  v8 = *(v6 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem + 8);
  v9 = v7;
  v10 = v8;
  if (v8 == 2)
  {
    v10 = *(v3 + 72);
    if (v10 == 2)
    {
      v11 = *MEMORY[0x1E69D7110];
      v12 = sub_1D7259D1C();
      (*(*(v12 - 8) + 104))(a3, v11, v12);
      goto LABEL_10;
    }

    v9 = *(v3 + 64);
    sub_1D62B5D30(v9, *(v3 + 72));
  }

  if (!v10)
  {
    v13 = MEMORY[0x1E69D7110];
    goto LABEL_9;
  }

  if (v10 == 1)
  {
    v13 = MEMORY[0x1E69D7130];
LABEL_9:
    v14 = *v13;
    v12 = sub_1D7259D1C();
    (*(*(v12 - 8) + 104))(a3, v14, v12);
    sub_1D5D5FDA4(v7, v8);
    goto LABEL_10;
  }

  v46 = v6;
  v47 = a3;
  v16 = *(v3 + 248);
  v17 = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v17 + 20);
  LOBYTE(v61[0]) = *(a2 + *(v17 + 44));
  v69[0] = *(v3 + 184);
  v20 = *(v3 + 232);
  v19 = *(v3 + 240);
  v48 = v18;
  v49 = v19;
  v21 = __swift_project_boxed_opaque_existential_1((v3 + 208), v20);
  v22 = v9;
  v23 = v21;
  v24 = v7;
  v25 = v22;
  sub_1D5D5FDA4(v24, v8);
  sub_1D62B5D30(v25, v10);
  v26 = sub_1D6C33A98(a2, (a2 + v48), v61, v23, v69, v16, v20, v49);
  v27 = v50;
  MEMORY[0x1EEE9AC00](v26, v28);
  v45[2] = v3;
  v45[3] = v50;
  v29 = v70;
  v31 = sub_1D6FF854C(sub_1D6FF8C9C, v45, v30);
  v70 = v29;
  if (v29)
  {

    sub_1D5F33294(v25, v10);
    return sub_1D5F33294(v25, v10);
  }

  v32 = *(v3 + 80);
  v33 = *(v3 + 112);
  v66 = *(v3 + 96);
  v67 = v33;
  v34 = *(v3 + 112);
  v68 = *(v3 + 128);
  v35 = *(v3 + 16);
  v36 = *(v3 + 48);
  v62 = *(v3 + 32);
  v63 = v36;
  v37 = *(v3 + 48);
  v38 = *(v3 + 80);
  v64 = *(v3 + 64);
  v65 = v38;
  v39 = *(v3 + 16);
  v61[0] = *v3;
  v61[1] = v39;
  v58 = v66;
  v59 = v34;
  v60 = *(v3 + 128);
  v54 = v62;
  v55 = v37;
  v56 = v64;
  v57 = v32;
  v52 = v61[0];
  v53 = v35;
  v40 = v31;
  sub_1D5D65D5C(v61, &v51);
  sub_1D6E043D4(v46, &v52, v27, v40);
  v42 = v41;

  v69[6] = v58;
  v69[7] = v59;
  v69[8] = v60;
  v69[2] = v54;
  v69[3] = v55;
  v69[4] = v56;
  v69[5] = v57;
  v69[0] = v52;
  v69[1] = v53;
  sub_1D5D68304(v69);
  sub_1D5FA3700(v42, v25 & 1, v10, v43);

  sub_1D5F33294(v25, v10);
  sub_1D5F33294(v25, v10);
  LOBYTE(v40) = v52;
  v12 = sub_1D7259D1C();
  if (v40)
  {
    v44 = MEMORY[0x1E69D7130];
  }

  else
  {
    v44 = MEMORY[0x1E69D7110];
  }

  a3 = v47;
  (*(*(v12 - 8) + 104))(v47, *v44, v12);
LABEL_10:
  sub_1D7259D1C();
  return (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
}

uint64_t sub_1D6FC14D8@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v408 = a2;
  v321 = a1;
  v295 = a3;
  v5 = sub_1D725A36C();
  v299 = *(v5 - 8);
  v300 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v301 = &v283[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D7259D1C();
  v308 = *(v8 - 8);
  v309 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v307 = &v283[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v306 = &v283[-v13];
  v319 = sub_1D725895C();
  v314 = *(v319 - 8);
  MEMORY[0x1EEE9AC00](v319, v14);
  v16 = &v283[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v313 = type metadata accessor for GroupLayoutContext(0);
  v318 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313, v17);
  v297 = &v283[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v298 = &v283[-v21];
  MEMORY[0x1EEE9AC00](v22, v23);
  v304 = &v283[-v24];
  v302 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v320 = &v283[-v28];
  v29 = type metadata accessor for GroupLayoutBindingContext(0);
  v315 = *(v29 - 8);
  v316 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v305 = &v283[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v283[-v34];
  v36 = v3[29];
  v37 = v3[30];
  __swift_project_boxed_opaque_existential_1(v3 + 26, v36);
  *&v399 = 0;
  *(&v399 + 1) = 0xE000000000000000;
  sub_1D7263D4C();
  v38 = v3[18];
  v40 = *(v38 + 16);
  v39 = *(v38 + 24);
  v310 = v38;

  *&v399 = v40;
  *(&v399 + 1) = v39;
  MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73FA500);
  v41 = *v4;
  v311 = *(v4 + 8);
  v312 = v41;
  MEMORY[0x1DA6F9910]();
  (*(v37 + 16))(v399, *(&v399 + 1), v36, v37);

  sub_1D5BE4148(v321, v35, type metadata accessor for GroupLayoutBindingContext);
  v42 = v320;
  sub_1D5BE4148(v408, v320, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v43 = sub_1D725893C();
  v45 = v44;
  (*(v314 + 8))(v16, v319);
  *(&v400 + 1) = &type metadata for FormatGroupLayoutFactory;
  v296 = sub_1D5D6817C();
  *&v401 = v296;
  v46 = swift_allocObject();
  *&v399 = v46;
  sub_1D6FF78B0(v4, v46 + 16);
  type metadata accessor for GroupLayoutKey(0);
  v47 = swift_allocObject();
  v48 = *(v46 + 24);
  *&v398[0] = *(v46 + 16);
  *(&v398[0] + 1) = v48;
  *&v389 = 95;
  *(&v389 + 1) = 0xE100000000000000;
  *&v380 = 45;
  *(&v380 + 1) = 0xE100000000000000;
  v281 = sub_1D5BF4D9C();
  v282 = v281;
  v279 = MEMORY[0x1E69E6158];
  v280 = v281;
  *(v47 + 16) = sub_1D7263A6C();
  *(v47 + 24) = v49;
  v50 = (v47 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  *v50 = v43;
  v50[1] = v45;
  sub_1D5B68374(&v399, v47 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v51 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  v303 = v35;
  sub_1D5BDAB74(v35, v47 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v315 + 56))(v47 + v51, 0, 1, v316);
  v52 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDAB74(v42, v47 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v53 = *(v318 + 56);
  v319 = v47;
  v54 = v313;
  v53(v47 + v52, 0, 1);
  __swift_destroy_boxed_opaque_existential_1(&v399);
  v314 = *(v4 + 200);
  v55 = sub_1D61881BC();
  v56 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC8];
  if (v55)
  {
    type metadata accessor for FormatNodeDebugData();
    v56 = swift_allocObject();
    type metadata accessor for FormatNodeDebugRecords();
    v59 = swift_allocObject();
    *(v59 + 16) = v57;
    v56[2] = v59;
    v60 = swift_allocObject();
    *(v60 + 16) = v57;
    v56[3] = v60;
    type metadata accessor for FormatSourceMapCollection();
    v61 = swift_allocObject();
    *(v61 + 16) = v58;
    *(v61 + 24) = v58;
    v56[4] = v61;
  }

  type metadata accessor for FormatNodeStateData();
  v62 = swift_allocObject();
  v62[4] = v58;
  v62[5] = v58;
  v62[2] = v56;
  v62[3] = v58;
  type metadata accessor for FormatNamespace();
  v63 = swift_allocObject();
  swift_weakInit();
  *(v63 + 16) = 0u;
  *(v63 + 32) = 0u;
  *(v63 + 48) = v57;
  swift_weakAssign();
  v64 = *(v4 + 240);
  v316 = *(v4 + 248);
  v65 = v408;
  v66 = *(v54 + 20);
  LOBYTE(v398[0]) = *(v408 + *(v54 + 44));
  v399 = *(v4 + 184);
  v67 = *(v4 + 232);
  v68 = __swift_project_boxed_opaque_existential_1((v4 + 208), v67);
  v315 = v66;
  v69 = sub_1D6C33A98(v65, (v65 + v66), v398, v68, &v399, v316, v67, v64);
  v316 = v283;
  v70 = v321;
  v71 = *(v321 + 9);
  MEMORY[0x1EEE9AC00](v69, v72);
  v281 = v4;
  v282 = v70;

  v73 = v317;
  v74 = sub_1D6FF854C(sub_1D6FF8C9C, &v279, v71);
  if (v73)
  {

    v75 = v73;
LABEL_10:
    sub_1D5B68374(v4 + 208, &v399);
    v112 = *(&v400 + 1);
    v113 = v401;
    __swift_project_boxed_opaque_existential_1(&v399, *(&v400 + 1));
    *&v398[0] = 0;
    *(&v398[0] + 1) = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000001FLL, 0x80000001D73FA520);
    if (*(v4 + 24))
    {
      v114 = *(v4 + 16);
      v115 = *(v4 + 24);
    }

    else
    {
      v115 = v311;

      v114 = v312;
    }

    MEMORY[0x1DA6F9910](v114, v115);

    MEMORY[0x1DA6F9910](0x3D726F727265202CLL, 0xE800000000000000);
    *&v389 = v75;
    sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    sub_1D7263F9C();
    (*(v113 + 32))(*&v398[0], *(&v398[0] + 1), v112, v113);

    __swift_destroy_boxed_opaque_existential_1(&v399);
    return swift_willThrow();
  }

  v293 = v62;
  v294 = v63;
  v76 = v74;

  v77 = *(v4 + 96);
  v78 = *(v4 + 64);
  v394 = *(v4 + 80);
  v395 = v77;
  v79 = *(v4 + 96);
  v80 = *(v4 + 128);
  v396 = *(v4 + 112);
  v397 = v80;
  v81 = *(v4 + 32);
  v82 = *v4;
  v390 = *(v4 + 16);
  v391 = v81;
  v83 = *(v4 + 32);
  v84 = *(v4 + 64);
  v392 = *(v4 + 48);
  v393 = v84;
  v85 = *v4;
  v386 = v79;
  v387 = v396;
  v388 = *(v4 + 128);
  v389 = v85;
  v382 = v83;
  v383 = v392;
  v384 = v78;
  v385 = v394;
  v380 = v82;
  v381 = v390;
  sub_1D5D65D5C(&v389, v379);
  v86 = v310;
  v317 = v76;
  v87 = v69;
  sub_1D6E043D4(v310, &v380, v70, v76);
  v89 = v88;
  v398[6] = v386;
  v398[7] = v387;
  v398[8] = v388;
  v398[2] = v382;
  v398[3] = v383;
  v398[4] = v384;
  v398[5] = v385;
  v398[0] = v380;
  v398[1] = v381;
  sub_1D5D68304(v398);
  v90 = *(v4 + 80);
  v91 = *(v4 + 112);
  v405 = *(v4 + 96);
  v406 = v91;
  v92 = *(v4 + 112);
  v407 = *(v4 + 128);
  v93 = *(v4 + 16);
  v94 = *(v4 + 48);
  v401 = *(v4 + 32);
  v402 = v94;
  v95 = *(v4 + 48);
  v96 = *(v4 + 80);
  v403 = *(v4 + 64);
  v404 = v96;
  v97 = *(v4 + 16);
  v399 = *v4;
  v400 = v97;
  v386 = v405;
  v387 = v92;
  v388 = *(v4 + 128);
  v382 = v401;
  v383 = v95;
  v384 = v403;
  v385 = v90;
  v98 = *(v4 + 296);
  v311 = *(&v399 + 1);
  v312 = v399;
  v380 = v399;
  v381 = v93;
  sub_1D5D65D5C(&v399, v379);
  sub_1D6E02CD8(v86, v98, &v380, v70, v89);
  v292 = v87;
  v313 = 0;
  v379[6] = v386;
  v379[7] = v387;
  v379[8] = v388;
  v379[2] = v382;
  v379[3] = v383;
  v379[4] = v384;
  v379[5] = v385;
  v379[0] = v380;
  v379[1] = v381;
  v100 = v99;
  sub_1D5D68304(v379);
  v289 = type metadata accessor for FormatVariableCollection();
  v101 = swift_allocObject();
  *(v101 + 16) = MEMORY[0x1E69E7CC8];
  v290 = type metadata accessor for FormatOptionCollection();
  swift_allocObject();
  v102 = sub_1D5D2488C(v100, v101);

  v103 = v306;
  sub_1D7259BFC();
  v105 = v307;
  v104 = v308;
  v106 = v309;
  (*(v308 + 32))(v307, v103, v309);
  v107 = (*(v104 + 88))(v105, v106);
  v108 = v107;
  v109 = *MEMORY[0x1E69D7130];
  if (v107 != *MEMORY[0x1E69D7130] && v107 != *MEMORY[0x1E69D7110])
  {
    (*(v308 + 8))(v307, v309);
  }

  v110 = v108 == v109;
  v378 = v110;
  v111 = v313;
  sub_1D6FEC600(&v378, v89);
  v75 = v111;
  if (v111)
  {

    goto LABEL_10;
  }

  v309 = v89;
  v291 = v102;
  v284 = v110;
  v313 = 0;
  v117 = sub_1D61881BC();
  v118 = *(v4 + 152);
  v119 = *(v4 + 160);
  v120 = *(v4 + 176);
  v311 = *(v4 + 168);
  v312 = v118;
  v121 = v292[3];
  v286 = v292[2];
  v122 = v292[4];
  v123 = v292[5];
  LODWORD(v287) = v117 & 1;
  v308 = v4;
  v125 = v292[6];
  v124 = v292[7];
  v285 = sub_1D72596FC();
  v306 = v121;
  v126 = v121;

  v288 = v125;

  v127 = v124;
  v307 = v119;

  v128 = v120;

  v129 = v286;

  sub_1D72596DC();
  if (qword_1EDF43B30 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  LOBYTE(v372) = v287;
  BYTE1(v372) = v363;
  *(&v372 + 2) = v363;
  WORD3(v372) = WORD2(v363);
  *(&v372 + 1) = v312;
  *&v373 = v307;
  *(&v373 + 1) = v311;
  *&v374 = v128;
  *(&v374 + 1) = v129;
  *&v375 = v306;
  *(&v375 + 1) = v122;
  *&v376 = v123;
  *(&v376 + 1) = v288;
  v377 = v124;
  v130 = v305;
  sub_1D5BE4148(v321, v305, type metadata accessor for GroupLayoutBindingContext);
  v4 = v308;
  v131 = *(v308 + 304);
  v132 = sub_1D61881BC();
  v133 = *(v4 + 96);
  type metadata accessor for FormatNodeBinder(0);
  v134 = swift_allocObject();
  *(v134 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders) = MEMORY[0x1E69E7CC8];
  *(v134 + 16) = v131;
  sub_1D5BE4148(v130, v134 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext, type metadata accessor for GroupLayoutBindingContext);
  LODWORD(v311) = v132;
  v306 = v131;
  v312 = v133;
  if (v132)
  {
    type metadata accessor for FormatSlot();
    swift_allocObject();

    v135 = v317;

    v137 = sub_1D7251514(v136);
    v138 = v134;
    v140 = v137[2];
    v139 = v137[3];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v363 = v135;
    v142 = v140;
    v134 = v138;
    sub_1D6D7866C(v137, v142, v139, isUniquelyReferenced_nonNull_native);

    v143 = v363;
    v144 = v310;
    v145 = v320;
  }

  else
  {

    v144 = v310;
    v145 = v320;
    v143 = v317;
  }

  *(v134 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots) = v143;
  *(v134 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) = v311 & 1;
  v146 = v305;
  v147 = *(v305 + 8);
  v148 = v134;
  v149 = *(v305 + 12);

  sub_1D6FFC9A0(v146, type metadata accessor for GroupLayoutBindingContext);
  v150 = MEMORY[0x1E69E7CC8];
  *(v148 + 24) = MEMORY[0x1E69E7CC8];
  v287 = (v148 + 24);
  *(v148 + 32) = v150;
  *(v148 + 40) = v147;
  *(v148 + 48) = v143;
  *(v148 + 56) = v150;
  *(v148 + 64) = v150;
  *(v148 + 72) = v150;
  *(v148 + 80) = v149;
  *(v148 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy) = v312;
  v151 = v303;
  sub_1D5BE4148(v321, v303, type metadata accessor for GroupLayoutBindingContext);
  v152 = *(v151 + 64);

  sub_1D6FFC9A0(v151, type metadata accessor for GroupLayoutBindingContext);
  v312 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE4148(v408, v145, type metadata accessor for GroupLayoutContext);
  v153 = v293[2];
  sub_1D5B68374(v4 + 208, &v345);

  v154 = v294;

  sub_1D5CF6A5C(&v372, &v354);

  v155 = v291;

  v317 = sub_1D605B4E0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FormatNodeBinderContext(0);
  v156 = swift_allocObject();
  *(v156 + 16) = v144;
  *(v156 + 24) = v154;
  v157 = v375;
  *(v156 + 80) = v374;
  *(v156 + 96) = v157;
  *(v156 + 112) = v376;
  *(v156 + 128) = v377;
  v158 = v373;
  *(v156 + 48) = v372;
  *(v156 + 64) = v158;
  *(v156 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v155;
  *(v156 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v309;
  v159 = v320;
  v160 = v312;
  sub_1D5BE4148(v320, v156 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v312);
  *(v156 + 32) = 0;
  *(v156 + 40) = 0;
  *(v156 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v317;
  *(v156 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v153;
  sub_1D5B68374(&v345, v156 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
  v161 = v156 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
  *v161 = 0u;
  *(v161 + 16) = 0u;
  *(v161 + 32) = 0u;
  *(v161 + 48) = -1;
  v162 = (v156 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
  *v162 = MEMORY[0x1E69E7CC0];
  v162[1] = v152;
  v307 = v152;
  sub_1D5D27F7C(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
  v317 = v163;
  v164 = v304;
  sub_1D5BE4148(v159, v304, v160);
  v165 = (*(v318 + 80) + 16) & ~*(v318 + 80);
  v166 = (v302 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
  v288 = *(v318 + 80);
  v167 = swift_allocObject();
  v302 = v165;
  sub_1D5BDAB74(v164, v167 + v165, type metadata accessor for GroupLayoutContext);
  v318 = v166;
  v168 = v291;
  *(v167 + v166) = v291;
  v305 = ((v166 + 15) & 0xFFFFFFFFFFFFFFF8);
  *&v305[v167] = v309;
  v169 = v168;
  swift_bridgeObjectRetain_n();

  v170 = sub_1D725A80C();
  __swift_destroy_boxed_opaque_existential_1(&v345);
  sub_1D6FFC9A0(v320, type metadata accessor for GroupLayoutContext);
  v171 = *(v4 + 96);
  v172 = *(v4 + 64);
  v368 = *(v4 + 80);
  v369 = v171;
  v173 = *(v4 + 96);
  v174 = *(v4 + 128);
  v370 = *(v4 + 112);
  v371 = v174;
  v175 = *(v4 + 32);
  v177 = *v4;
  v364 = *(v4 + 16);
  v176 = v364;
  v365 = v175;
  v178 = *(v4 + 32);
  v179 = *(v4 + 64);
  v366 = *(v4 + 48);
  v367 = v179;
  v180 = *v4;
  v360 = v173;
  v361 = v370;
  v362 = *(v4 + 128);
  v363 = v180;
  v356 = v178;
  v357 = v366;
  v358 = v172;
  v359 = v368;
  *(v156 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v170;
  v311 = *(&v363 + 1);
  v312 = v363;
  v354 = v177;
  v355 = v176;
  sub_1D5D65D5C(&v363, &v345);
  v181 = v313;
  FormatGroup.bind(binder:context:)(v148, v156);
  v75 = v181;
  if (v181)
  {

    sub_1D5D09C48(&v372);

    v351 = v360;
    v352 = v361;
    v353 = v362;
    v347 = v356;
    v348 = v357;
    v349 = v358;
    v350 = v359;
    v345 = v354;
    v346 = v355;
    sub_1D5D68304(&v345);
    goto LABEL_10;
  }

  v286 = v156;
  v313 = 0;
  v351 = v360;
  v352 = v361;
  v353 = v362;
  v347 = v356;
  v348 = v357;
  v349 = v358;
  v350 = v359;
  v345 = v354;
  v346 = v355;
  sub_1D5D68304(&v345);
  v182 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
  swift_beginAccess();
  v285 = v148;
  v183 = v303;
  sub_1D5BE4148(v148 + v182, v303, type metadata accessor for GroupLayoutBindingContext);
  sub_1D62F3514(v183);
  sub_1D6FFC9A0(v183, type metadata accessor for GroupLayoutBindingContext);
  v184 = v287;
  swift_beginAccess();
  v185 = *(v184 + 1);
  v341 = *v184;
  v342 = v185;
  v186 = *(v184 + 3);
  v343 = *(v184 + 2);
  v344 = v186;
  v287 = type metadata accessor for GroupLayoutContext;
  v187 = v320;
  sub_1D5BE4148(v408, v320, type metadata accessor for GroupLayoutContext);
  v188 = swift_allocObject();
  v189 = v304;
  v190 = v188;
  *(v188 + 16) = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  v191 = *(v169 + 24);
  v192 = swift_allocObject();
  *(v192 + 16) = v190;
  *(v192 + 24) = v191;
  sub_1D6B154F0(&v341, &v332);

  v193 = v310;

  sub_1D5CF6A5C(&v372, &v332);
  sub_1D6B154F0(&v341, &v332);

  v194 = MEMORY[0x1E69E7CC0];
  v303 = sub_1D605B4E0(MEMORY[0x1E69E7CC0]);
  v195 = v189;
  v196 = v189;
  v197 = v287;
  sub_1D5BE4148(v187, v196, v287);
  *&v334 = 0;
  v332 = 0u;
  v333 = 0u;
  v321 = sub_1D605B7D8(v194);
  type metadata accessor for FormatNodeContext(0);
  v198 = swift_allocObject();
  sub_1D5BE4148(v195, v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v197);
  v199 = v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
  v200 = v375;
  *(v199 + 32) = v374;
  *(v199 + 48) = v200;
  *(v199 + 64) = v376;
  *(v199 + 80) = v377;
  v201 = v373;
  *v199 = v372;
  *(v199 + 16) = v201;
  *(v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v193;
  *(v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v294;
  v202 = (v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v203 = v342;
  *v202 = v341;
  v202[1] = v203;
  v204 = v344;
  v202[2] = v343;
  v202[3] = v204;
  v205 = v309;
  *(v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v309;
  *(v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v192;
  *(v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v303;
  v206 = MEMORY[0x1E69E6720];
  sub_1D6FF9060(&v332, v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
  v207 = (v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v208 = v307;
  *v207 = MEMORY[0x1E69E7CC0];
  v207[1] = v208;
  v209 = (v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v209[1] = 0u;
  v209[2] = 0u;
  *v209 = 0u;
  *(v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v321;
  v210 = (v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  *v210 = 0;
  v210[1] = 0;
  v211 = v298;
  sub_1D5BE4148(v195, v298, v197);
  v212 = v305;
  v213 = swift_allocObject();
  sub_1D5BDAB74(v211, v213 + v302, type metadata accessor for GroupLayoutContext);
  *(v213 + v318) = v192;
  *&v212[v213] = v205;

  v214 = sub_1D725A80C();
  sub_1D6FF90CC(&v332, &qword_1EDF34AB8, v206);
  sub_1D6FFC9A0(v304, type metadata accessor for GroupLayoutContext);
  sub_1D6FFC9A0(v320, type metadata accessor for GroupLayoutContext);
  *(v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v214;
  v215 = (v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  *v215 = 0;
  v215[1] = 0;
  v321 = v198;
  v216 = (v198 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  *v216 = 0;
  v216[1] = 0;
  v217 = *(v4 + 88);
  v218 = *(v217 + 16);
  if (v218)
  {
    *&v329 = MEMORY[0x1E69E7CC0];

    sub_1D69979A0(0, v218, 0);
    v219 = v329;
    v220 = v218 - 1;
    for (i = 32; ; i += 64)
    {
      v222 = v217;
      v223 = *(v217 + i);
      v224 = *(v217 + i + 16);
      v225 = *(v217 + i + 48);
      v334 = *(v217 + i + 32);
      v335 = v225;
      v332 = v223;
      v333 = v224;
      v226 = swift_allocObject();
      v227 = *(v217 + i + 48);
      v229 = *(v217 + i);
      v228 = *(v217 + i + 16);
      *(v226 + 48) = *(v217 + i + 32);
      *(v226 + 64) = v227;
      *(v226 + 16) = v229;
      *(v226 + 32) = v228;
      sub_1D5C8C900(&v332, v323);
      *&v329 = v219;
      v231 = *(v219 + 16);
      v230 = *(v219 + 24);
      if (v231 >= v230 >> 1)
      {
        sub_1D69979A0((v230 > 1), v231 + 1, 1);
        v219 = v329;
      }

      *(v219 + 16) = v231 + 1;
      *(v219 + 8 * v231 + 32) = v226 | 0x8000000000000000;
      if (!v220)
      {
        break;
      }

      --v220;
      v217 = v222;
    }

    v4 = v308;
  }

  else
  {
    v219 = MEMORY[0x1E69E7CC0];
  }

  v232 = v293;
  v233 = sub_1D6B0BBC4(v219);

  type metadata accessor for FormatNodeCache();
  v234 = swift_allocObject();
  v235 = MEMORY[0x1E69E7CC8];
  *(v234 + 16) = MEMORY[0x1E69E7CC8];
  *(v234 + 24) = v235;
  *(v234 + 32) = v235;
  *(v234 + 40) = v235;
  *(v234 + 48) = v235;
  *(v234 + 56) = v235;
  *(v234 + 64) = 0;
  sub_1D5B68374(v4 + 208, &v332);
  type metadata accessor for FormatNodeState();
  v236 = swift_allocObject();
  v236[2] = v319;
  v236[3] = v232;
  v236[4] = v234;
  sub_1D5B63F14(&v332, (v236 + 5));
  v236[10] = v306;

  v237 = v301;
  sub_1D7259BFC();
  v238 = (*(v299 + 104))(v237, *MEMORY[0x1E69D7370], v300);
  v321 = v283;
  MEMORY[0x1EEE9AC00](v238, v239);
  v279 = v4;
  v280 = v233;
  v281 = v236;
  sub_1D6FF9128(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v240 = v313;
  v241 = sub_1D725A4EC();
  if (v240)
  {

    sub_1D5D09C48(&v372);

    sub_1D6EBD64C(&v341);

    v75 = v240;
    goto LABEL_10;
  }

  v320 = v233;
  v313 = 0;
  v318 = v241;
  v330 = &type metadata for FormatGroupLayoutFactory;
  v331 = v296;
  *&v329 = swift_allocObject();
  sub_1D6FF78B0(v4, v329 + 16);
  sub_1D5BE4148(v408, v297, type metadata accessor for GroupLayoutContext);
  v242 = *(v4 + 112);
  v338 = *(v4 + 96);
  v339 = v242;
  v340 = *(v4 + 128);
  v243 = *(v4 + 48);
  v334 = *(v4 + 32);
  v335 = v243;
  v244 = *(v4 + 80);
  v336 = *(v4 + 64);
  v337 = v244;
  v245 = *(v4 + 16);
  v332 = *v4;
  v333 = v245;
  v246 = v236[3];
  sub_1D5B68374(v4 + 208, v328);
  sub_1D5B68374(v4 + 256, v327);
  v247 = *(v4 + 160);
  v317 = *(v4 + 152);
  v248 = *(v4 + 168);
  v311 = *(v4 + 176);
  v312 = v248;
  v249 = v341;
  v250 = *(v341 + 16);
  v309 = v236;
  v315 = v247;
  if (v250)
  {
    v408 = sub_1D5E23FF4(v250, 0);
    v251 = sub_1D5E25CD8(v324, (v408 + 4), v250, v249);
    v306 = v324[1];
    v307 = v324[0];
    v304 = v325;
    v305 = v324[2];
    v303 = v326;

    sub_1D5D65D5C(&v332, v323);

    result = sub_1D5B87E38(v307);
    if (v251 != v250)
    {
      __break(1u);
      return result;
    }

    sub_1D6EBD64C(&v341);
    v252 = v408;
  }

  else
  {

    sub_1D5D65D5C(&v332, v323);

    sub_1D6EBD64C(&v341);
    v252 = MEMORY[0x1E69E7CC0];
  }

  v308 = v246;
  v253 = v252[2];
  if (v253)
  {
    v322 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v253, 0);
    v254 = v322;
    v408 = v252;
    v255 = (v252 + 4);
    do
    {
      sub_1D6FF9060(v255, v323, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      sub_1D5B68374(v323, v324);
      sub_1D6FF90CC(v323, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      v322 = v254;
      v257 = *(v254 + 16);
      v256 = *(v254 + 24);
      if (v257 >= v256 >> 1)
      {
        sub_1D5BD0BA0((v256 > 1), v257 + 1, 1);
      }

      v258 = v325;
      v259 = v326;
      v260 = __swift_mutable_project_boxed_opaque_existential_1(v324, v325);
      v261 = MEMORY[0x1EEE9AC00](v260, v260);
      v263 = &v283[-((v262 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v264 + 16))(v263, v261);
      sub_1D5BD0BE4(v257, v263, &v322, v258, v259);
      __swift_destroy_boxed_opaque_existential_1(v324);
      v254 = v322;
      v255 += 104;
      --v253;
    }

    while (v253);

    sub_1D5D09C48(&v372);
  }

  else
  {

    sub_1D5D09C48(&v372);
    v254 = MEMORY[0x1E69E7CC0];
  }

  v265 = v310;
  v266 = type metadata accessor for FormatGroupLayoutFactory.Bound(0);
  v267 = v295;
  v295[3] = v266;
  v267[4] = sub_1D6FFA0A0(&qword_1EDF260F8, type metadata accessor for FormatGroupLayoutFactory.Bound, &unk_1D7380138);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v267);
  *boxed_opaque_existential_1 = v319;
  sub_1D5B63F14(&v329, (boxed_opaque_existential_1 + 1));
  sub_1D5BDAB74(v297, boxed_opaque_existential_1 + v266[6], type metadata accessor for GroupLayoutContext);
  *(boxed_opaque_existential_1 + v266[7]) = v318;
  v269 = (boxed_opaque_existential_1 + v266[8]);
  *v269 = v332;
  v270 = v337;
  v271 = v338;
  v272 = v340;
  v269[7] = v339;
  v269[8] = v272;
  v269[5] = v270;
  v269[6] = v271;
  v273 = v333;
  v274 = v334;
  v275 = v336;
  v269[3] = v335;
  v269[4] = v275;
  v269[1] = v273;
  v269[2] = v274;
  *(boxed_opaque_existential_1 + v266[9]) = v265;
  *(boxed_opaque_existential_1 + v266[10]) = v308;
  *(boxed_opaque_existential_1 + v266[11]) = v314;
  sub_1D5B63F14(v328, boxed_opaque_existential_1 + v266[12]);
  *(boxed_opaque_existential_1 + v266[13]) = v284;
  result = sub_1D5B63F14(v327, boxed_opaque_existential_1 + v266[14]);
  v276 = (boxed_opaque_existential_1 + v266[15]);
  v277 = v315;
  *v276 = v317;
  v276[1] = v277;
  v278 = v311;
  v276[2] = v312;
  v276[3] = v278;
  *(boxed_opaque_existential_1 + v266[16]) = v254;
  return result;
}

void sub_1D6FC357C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v72 = a7;
  v71 = a6;
  v70 = a5;
  v69[1] = a4;
  v8 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v75 = (v69 - v14);
  v15 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v80 = v69 - v18;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v15);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v78 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v69 - v24;
  v26 = type metadata accessor for FormatNodeStateData.Data(0);
  v76 = *(v26 - 8);
  v77 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for FormatAdMetricsData(0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v83 = v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v15);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = (v69 - v35);
  v90 = a1;
  swift_beginAccess();
  v37 = v8[2];
  v38 = v8[3];
  v79 = v8;

  v39 = sub_1D6E8DD40(v37, v38);
  v41 = v40;

  if (*(*(a3 + 24) + 16))
  {
    *v36 = a2;
    v42 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v42 - 8) + 56))(v36, 0, 1, v42);
    swift_beginAccess();

    sub_1D6D60828(v36, v39, v41);
    swift_endAccess();
  }

  v81 = v39;
  v43 = v41;
  v45 = v82;
  v44 = v83;
  sub_1D70D12B8(a2, v83);
  if (v45)
  {
  }

  else
  {
    v82 = a2;
    sub_1D5BE4148(v44, v29, type metadata accessor for FormatAdMetricsData);
    v46 = v77;
    swift_storeEnumTagMultiPayload();
    sub_1D5BE4148(v29, v25, type metadata accessor for FormatNodeStateData.Data);
    (*(v76 + 56))(v25, 0, 1, v46);
    v47 = MEMORY[0x1E69E6720];
    v48 = v78;
    sub_1D6FFC87C(v25, v78, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_beginAccess();

    sub_1D6D60A18(v48, v81, v43);
    swift_endAccess();
    sub_1D6FFCA9C(v25, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v47, sub_1D5D27F7C);
    sub_1D6FFC9A0(v29, type metadata accessor for FormatNodeStateData.Data);
    v49 = v79;
    if (v79[12])
    {
      v51 = v79[16];
      v50 = v79[17];
      v53 = v79[14];
      v52 = v79[15];
      v54 = v79;
      v55 = v79[13];
      v84 = v79[12];
      v85 = v55;
      v86 = v53;
      v87 = v52;
      v88 = v51;
      v89 = v50;

      sub_1D5DEA234(v51);

      v56 = v80;
      v57 = v82;
      sub_1D68687FC(v82, v80);
      v58 = v88;
      v78 = v89;

      v59 = v56;

      sub_1D5CBF568(v58);

      v60 = 0;
      v49 = v54;
    }

    else
    {
      v59 = v80;
      v57 = v82;
      v60 = 1;
    }

    v61 = sub_1D7259B8C();
    (*(*(v61 - 8) + 56))(v59, v60, 1, v61);
    swift_getKeyPath();
    v84 = v49[6];
    v62 = v84;
    v63 = v43;

    sub_1D5C82CD8(v62);
    v64 = v75;
    v65 = v81;
    sub_1D5BEB9F4(v57, v81, v63, v75);
    sub_1D5C92A8C(v84);
    swift_beginAccess();
    v66 = v49[8];

    sub_1D618EFB4(v57, v66);

    swift_unownedRetainStrong();

    swift_unownedRetain();

    v67 = swift_allocObject();
    v67[2] = v65;
    v67[3] = v63;
    v67[4] = v57;
    v67[5] = v49;
    v70(0);
    v71();
    v68 = v80;
    sub_1D7259B1C();

    (*(v73 + 8))(v64, v74);
    sub_1D6FFCA9C(v68, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    sub_1D6FFC9A0(v83, type metadata accessor for FormatAdMetricsData);
  }
}

__n128 sub_1D6FC3FA8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 112);
  v32[6] = *(v2 + 96);
  v32[7] = v6;
  v33 = *(v2 + 128);
  v7 = *(v2 + 48);
  v32[2] = *(v2 + 32);
  v32[3] = v7;
  v8 = *(v2 + 80);
  v32[4] = *(v2 + 64);
  v32[5] = v8;
  v9 = *(v2 + 16);
  v32[0] = *v2;
  v32[1] = v9;
  v10 = sub_1D6011234(v32);
  v11 = sub_1D5D756B8(v32);
  if (v10 == 1)
  {
    v12 = *(v11 + 8);
    sub_1D5FA6CB0(a1, *v11, v22);
    if (v3)
    {
      return result;
    }

    *&v23 = *&v22[0];
    BYTE8(v23) = v12;
    sub_1D6011240(&v23);
  }

  else
  {
    v14 = *(v11 + 80);
    v38 = *(v11 + 64);
    v39 = v14;
    v15 = *(v11 + 112);
    v40 = *(v11 + 96);
    v41 = v15;
    v16 = *(v11 + 16);
    v34 = *v11;
    v35 = v16;
    v17 = *(v11 + 48);
    v36 = *(v11 + 32);
    v37 = v17;
    v18 = *(v11 + 128);
    result.n128_f64[0] = sub_1D6FD1B60(a1, v22);
    if (v3)
    {
      return result;
    }

    v27 = v22[4];
    v28 = v22[5];
    v29 = v22[6];
    v30 = v22[7];
    v23 = v22[0];
    v24 = v22[1];
    v25 = v22[2];
    v26 = v22[3];
    v31 = v18;
    sub_1D601128C(&v23);
  }

  v19 = v30;
  *(a2 + 96) = v29;
  *(a2 + 112) = v19;
  *(a2 + 128) = v31;
  v20 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v20;
  v21 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v21;
  result = v24;
  *a2 = v23;
  *(a2 + 16) = result;
  return result;
}

void sub_1D6FC40FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D6FF9BD0(0);
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v113 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v114 = *(v11 - 8);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v116 = (&v108 - v13);
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v117 = &v108 - v17;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v120 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v121 = &v108 - v23;
  v24 = type metadata accessor for FormatNodeStateData.Data(0);
  v118 = *(v24 - 8);
  v119 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (&v108 - v30);
  v143 = a1;
  swift_beginAccess();

  v124 = a2;
  v33 = sub_1D6B0ACE8(v32, 0);

  swift_beginAccess();
  v34 = *(v4 + 16);
  v35 = *(v4 + 24);
  v126 = v4;

  v36 = sub_1D6E8DD40(v34, v35);
  v38 = v37;

  v122 = *(a3 + 24);
  if (v122[2])
  {
    *v31 = v33;
    v39 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    swift_beginAccess();

    sub_1D6D60828(v31, v36, v38);
    swift_endAccess();
  }

  v123 = v36;
  v144 = v38;
  v40 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v41 = (*(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = v126;
  v45 = *(v126 + 56);

  v46 = v45;
  v47 = v125;
  sub_1D6FBDFD4(v46, v33, v42, v43);
  if (v47)
  {

    return;
  }

  v125 = v48;
  v110 = v33;

  v139 = *(v44 + 72);

  sub_1D7002EAC(v124, &v140);
  v109 = 0;

  v49 = v141;
  v136 = v140;
  v137 = v141;
  v50 = v142[0];
  v138[0] = v142[0];
  v51 = *(v142 + 9);
  *(v138 + 9) = *(v142 + 9);
  *v27 = v140;
  v27[1] = v49;
  v27[2] = v50;
  *(v27 + 41) = v51;
  v52 = v119;
  swift_storeEnumTagMultiPayload();
  v53 = *&v121;
  sub_1D5BE4148(v27, *&v121, type metadata accessor for FormatNodeStateData.Data);
  (*(v118 + 56))(v53, 0, 1, v52);
  v54 = MEMORY[0x1E69E6720];
  v55 = v120;
  sub_1D6FFC87C(v53, v120, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  v56 = v144;

  sub_1D619CB80(&v136, &v133);
  sub_1D6D60A18(v55, v123, v56);
  swift_endAccess();
  sub_1D6FFCA9C(v53, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v54, sub_1D5D27F7C);
  sub_1D6FFC9A0(v27, type metadata accessor for FormatNodeStateData.Data);
  v57 = 0;
  v58 = v125;
  if (v125)
  {
    v59 = *(v125 + 88);
    v60 = v126;
    if (v59 <= 0xFD)
    {
      if ((v59 & 0x80) != 0)
      {
        v145.origin.x = 0.0;
        v145.origin.y = 0.0;
        v145.size.width = 0.0;
        v145.size.height = 0.0;
        Height = CGRectGetHeight(v145);
        v146.origin.x = 0.0;
        v146.origin.y = 0.0;
        v146.size.width = 0.0;
        v146.size.height = 0.0;
        Width = CGRectGetWidth(v146);
        v58 = v125;
        if (Width >= Height)
        {
          Width = Height;
        }

        v121 = Width * 0.5;
        v61 = &unk_1F50F4218;
      }

      else
      {
        v61 = *(v125 + 80);
        v121 = *(v125 + 72);
        sub_1D5ED34C4(*&v121, v61, v59);
        v58 = v125;
      }
    }

    else
    {
      v121 = 0.0;
      v61 = 0;
    }

    if (*(v58 + 176) != 254)
    {
      v57 = *(v58 + 96);
    }
  }

  else
  {
    v121 = 0.0;
    v61 = 0;
    v60 = v126;
  }

  v64 = *(v110 + v40);
  v65 = v110;
  v66 = (v64 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = *(v60 + 64);

  v70 = v69;
  v71 = v109;
  sub_1D6FBAE48(v70, v65, v67, v68);
  if (v71)
  {

    sub_1D619CBDC(&v136);

    return;
  }

  v73 = v72;

  if (v73)
  {

    sub_1D6A45640(v65);
    v75 = v74;

    if (v75)
    {
      swift_beginAccess();

      v76 = v144;

      sub_1D6D60C08(v75, v123, v76);
      swift_endAccess();
    }
  }

  v109 = 0;
  v122 = v61;
  if (*(v60 + 136))
  {
    v78 = *(v60 + 168);
    v77 = *(v60 + 176);
    v80 = *(v60 + 152);
    v79 = *(v60 + 160);
    v81 = *(v60 + 144);
    *&v133 = *(v60 + 136);
    *(&v133 + 1) = v81;
    *&v134 = v80;
    *(&v134 + 1) = v79;
    *&v135[0] = v78;
    *(&v135[0] + 1) = v77;

    sub_1D5DEA234(v78);

    v82 = v109;
    sub_1D68687FC(v65, v117);
    v109 = v82;
    if (v82)
    {

      sub_1D619CBDC(&v136);
      v83 = *&v135[0];

      sub_1D5CBF568(v83);

      return;
    }

    v120 = v73;
    v85 = *&v135[0];

    sub_1D5CBF568(v85);

    v84 = 0;
  }

  else
  {
    v120 = v73;
    v84 = 1;
  }

  v86 = sub_1D7259B8C();
  v87 = v117;
  (*(*(v86 - 8) + 56))(v117, v84, 1, v86);
  KeyPath = swift_getKeyPath();
  *&v133 = *(v60 + 32);
  v89 = v133;
  v90 = v144;

  sub_1D5C82CD8(v89);
  v91 = v109;
  sub_1D5BEB9F4(v65, v123, v90, v116);
  if (v91)
  {
    sub_1D6FFCA9C(v87, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

    swift_bridgeObjectRelease_n();

    sub_1D619CBDC(&v136);
    sub_1D5C92A8C(v133);
  }

  else
  {
    v119 = KeyPath;
    sub_1D5C92A8C(v133);
    swift_beginAccess();
    v92 = *(v60 + 48);

    v93 = sub_1D618EFB4(v65, v92);
    v109 = 0;
    v118 = v93;

    v94 = v124 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
    v132 = *(*(*(v94 + *(type metadata accessor for GroupLayoutContext(0) + 40)) + 24) + 24);
    v133 = v136;
    v134 = v137;
    v135[0] = v138[0];
    *(v135 + 9) = *(v138 + 9);
    v95 = *(v60 + 128);
    v96 = v144;
    if (v122)
    {
      v97 = v122[2];
      v98 = v123;
      if (v97)
      {
        v99 = 0;
        v100 = 32;
        do
        {
          v101 = qword_1D7380240[*(v122 + v100)];
          if ((v101 & ~v99) == 0)
          {
            v101 = 0;
          }

          v99 |= v101;
          ++v100;
          --v97;
        }

        while (v97);
        sub_1D619CB80(&v136, v127);
      }

      else
      {
        sub_1D619CB80(&v136, v127);

        v99 = 0;
      }

      v102 = v121;
    }

    else
    {
      sub_1D619CB80(&v136, v127);

      v102 = 0.0;
      v99 = -1;
      v98 = v123;
    }

    v127[0] = v95;
    v128 = v57;
    v129 = v102;
    v130 = v99;
    v131 = 0;
    sub_1D6FF9DCC(0, &qword_1EDF3BFD0, sub_1D6FF9CE4, &type metadata for FormatLayoutValue, MEMORY[0x1E69D7198]);
    type metadata accessor for IssueCoverViewLayoutAttributesFactory();
    sub_1D5EB5218();
    sub_1D6FF9D38();
    sub_1D6FFA0A0(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory, &protocol conformance descriptor for IssueCoverViewLayoutAttributesFactory);
    sub_1D7259D2C();
    v103 = swift_allocObject();
    v103[2] = v98;
    v103[3] = v96;
    v105 = v125;
    v104 = v126;
    v103[4] = v110;
    v103[5] = v104;
    v103[6] = v105;
    sub_1D5EB5368(0);
    sub_1D6FF91E8();

    v106 = v116;
    v107 = v113;
    sub_1D725998C();

    sub_1D619CBDC(&v136);
    (*(v111 + 8))(v107, v112);
    (*(v114 + 8))(v106, v115);
    sub_1D6FFCA9C(v117, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

void sub_1D6FC5100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D6FF9BD0(0);
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v113 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v114 = *(v11 - 8);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v116 = (&v108 - v13);
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v117 = &v108 - v17;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v120 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v121 = &v108 - v23;
  v24 = type metadata accessor for FormatNodeStateData.Data(0);
  v118 = *(v24 - 8);
  v119 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (&v108 - v30);
  v143 = a1;
  swift_beginAccess();

  v124 = a2;
  v33 = sub_1D6B0ACE8(v32, 0);

  swift_beginAccess();
  v34 = *(v4 + 16);
  v35 = *(v4 + 24);
  v126 = v4;

  v36 = sub_1D6E8DD40(v34, v35);
  v38 = v37;

  v122 = *(a3 + 24);
  if (v122[2])
  {
    *v31 = v33;
    v39 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    swift_beginAccess();

    sub_1D6D60828(v31, v36, v38);
    swift_endAccess();
  }

  v123 = v36;
  v144 = v38;
  v40 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v41 = (*(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = v126;
  v45 = *(v126 + 56);

  v46 = v45;
  v47 = v125;
  sub_1D6FBDFD4(v46, v33, v42, v43);
  if (v47)
  {

    return;
  }

  v125 = v48;
  v110 = v33;

  v139 = *(v44 + 72);

  sub_1D7002EAC(v124, &v140);
  v109 = 0;

  v49 = v141;
  v136 = v140;
  v137 = v141;
  v50 = v142[0];
  v138[0] = v142[0];
  v51 = *(v142 + 9);
  *(v138 + 9) = *(v142 + 9);
  *v27 = v140;
  v27[1] = v49;
  v27[2] = v50;
  *(v27 + 41) = v51;
  v52 = v119;
  swift_storeEnumTagMultiPayload();
  v53 = *&v121;
  sub_1D5BE4148(v27, *&v121, type metadata accessor for FormatNodeStateData.Data);
  (*(v118 + 56))(v53, 0, 1, v52);
  v54 = MEMORY[0x1E69E6720];
  v55 = v120;
  sub_1D6FFC87C(v53, v120, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  v56 = v144;

  sub_1D619CB80(&v136, &v133);
  sub_1D6D60A18(v55, v123, v56);
  swift_endAccess();
  sub_1D6FFCA9C(v53, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v54, sub_1D5D27F7C);
  sub_1D6FFC9A0(v27, type metadata accessor for FormatNodeStateData.Data);
  v57 = 0;
  v58 = v125;
  if (v125)
  {
    v59 = *(v125 + 88);
    v60 = v126;
    if (v59 <= 0xFD)
    {
      if ((v59 & 0x80) != 0)
      {
        v145.origin.x = 0.0;
        v145.origin.y = 0.0;
        v145.size.width = 0.0;
        v145.size.height = 0.0;
        Height = CGRectGetHeight(v145);
        v146.origin.x = 0.0;
        v146.origin.y = 0.0;
        v146.size.width = 0.0;
        v146.size.height = 0.0;
        Width = CGRectGetWidth(v146);
        v58 = v125;
        if (Width >= Height)
        {
          Width = Height;
        }

        v121 = Width * 0.5;
        v61 = &unk_1F50F4240;
      }

      else
      {
        v61 = *(v125 + 80);
        v121 = *(v125 + 72);
        sub_1D5ED34C4(*&v121, v61, v59);
        v58 = v125;
      }
    }

    else
    {
      v121 = 0.0;
      v61 = 0;
    }

    if (*(v58 + 176) != 254)
    {
      v57 = *(v58 + 96);
    }
  }

  else
  {
    v121 = 0.0;
    v61 = 0;
    v60 = v126;
  }

  v64 = *(v110 + v40);
  v65 = v110;
  v66 = (v64 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = *(v60 + 64);

  v70 = v69;
  v71 = v109;
  sub_1D6FBAE48(v70, v65, v67, v68);
  if (v71)
  {

    sub_1D619CBDC(&v136);

    return;
  }

  v73 = v72;

  if (v73)
  {

    sub_1D6A45640(v65);
    v75 = v74;

    if (v75)
    {
      swift_beginAccess();

      v76 = v144;

      sub_1D6D60C08(v75, v123, v76);
      swift_endAccess();
    }
  }

  v109 = 0;
  v122 = v61;
  if (*(v60 + 136))
  {
    v78 = *(v60 + 168);
    v77 = *(v60 + 176);
    v80 = *(v60 + 152);
    v79 = *(v60 + 160);
    v81 = *(v60 + 144);
    *&v133 = *(v60 + 136);
    *(&v133 + 1) = v81;
    *&v134 = v80;
    *(&v134 + 1) = v79;
    *&v135[0] = v78;
    *(&v135[0] + 1) = v77;

    sub_1D5DEA234(v78);

    v82 = v109;
    sub_1D68687FC(v65, v117);
    v109 = v82;
    if (v82)
    {

      sub_1D619CBDC(&v136);
      v83 = *&v135[0];

      sub_1D5CBF568(v83);

      return;
    }

    v120 = v73;
    v85 = *&v135[0];

    sub_1D5CBF568(v85);

    v84 = 0;
  }

  else
  {
    v120 = v73;
    v84 = 1;
  }

  v86 = sub_1D7259B8C();
  v87 = v117;
  (*(*(v86 - 8) + 56))(v117, v84, 1, v86);
  KeyPath = swift_getKeyPath();
  *&v133 = *(v60 + 32);
  v89 = v133;
  v90 = v144;

  sub_1D5C82CD8(v89);
  v91 = v109;
  sub_1D5BEB9F4(v65, v123, v90, v116);
  if (v91)
  {
    sub_1D6FFCA9C(v87, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

    swift_bridgeObjectRelease_n();

    sub_1D619CBDC(&v136);
    sub_1D5C92A8C(v133);
  }

  else
  {
    v119 = KeyPath;
    sub_1D5C92A8C(v133);
    swift_beginAccess();
    v92 = *(v60 + 48);

    v93 = sub_1D618EFB4(v65, v92);
    v109 = 0;
    v118 = v93;

    v94 = v124 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
    v132 = *(*(*(v94 + *(type metadata accessor for GroupLayoutContext(0) + 40)) + 24) + 24);
    v133 = v136;
    v134 = v137;
    v135[0] = v138[0];
    *(v135 + 9) = *(v138 + 9);
    v95 = *(v60 + 128);
    v96 = v144;
    if (v122)
    {
      v97 = v122[2];
      v98 = v123;
      if (v97)
      {
        v99 = 0;
        v100 = 32;
        do
        {
          v101 = qword_1D7380240[*(v122 + v100)];
          if ((v101 & ~v99) == 0)
          {
            v101 = 0;
          }

          v99 |= v101;
          ++v100;
          --v97;
        }

        while (v97);
        sub_1D619CB80(&v136, v127);
      }

      else
      {
        sub_1D619CB80(&v136, v127);

        v99 = 0;
      }

      v102 = v121;
    }

    else
    {
      sub_1D619CB80(&v136, v127);

      v102 = 0.0;
      v99 = -1;
      v98 = v123;
    }

    v127[0] = v95;
    v128 = v57;
    v129 = v102;
    v130 = v99;
    v131 = 0;
    sub_1D6FF9DCC(0, &qword_1EDF3BFD0, sub_1D6FF9CE4, &type metadata for FormatLayoutValue, MEMORY[0x1E69D7198]);
    type metadata accessor for IssueCoverViewLayoutAttributesFactory();
    sub_1D5EB5218();
    sub_1D6FF9D38();
    sub_1D6FFA0A0(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory, &protocol conformance descriptor for IssueCoverViewLayoutAttributesFactory);
    sub_1D7259D2C();
    v103 = swift_allocObject();
    v103[2] = v98;
    v103[3] = v96;
    v105 = v125;
    v104 = v126;
    v103[4] = v110;
    v103[5] = v104;
    v103[6] = v105;
    sub_1D5EB563C(0);
    sub_1D6FF92D8();

    v106 = v116;
    v107 = v113;
    sub_1D725998C();

    sub_1D619CBDC(&v136);
    (*(v111 + 8))(v107, v112);
    (*(v114 + 8))(v106, v115);
    sub_1D6FFCA9C(v117, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

void sub_1D6FC6104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D6FF9BD0(0);
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v113 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v114 = *(v11 - 8);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v116 = (&v108 - v13);
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v117 = &v108 - v17;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v120 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v121 = &v108 - v23;
  v24 = type metadata accessor for FormatNodeStateData.Data(0);
  v118 = *(v24 - 8);
  v119 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (&v108 - v30);
  v143 = a1;
  swift_beginAccess();

  v124 = a2;
  v33 = sub_1D6B0ACE8(v32, 0);

  swift_beginAccess();
  v34 = *(v4 + 16);
  v35 = *(v4 + 24);
  v126 = v4;

  v36 = sub_1D6E8DD40(v34, v35);
  v38 = v37;

  v122 = *(a3 + 24);
  if (v122[2])
  {
    *v31 = v33;
    v39 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    swift_beginAccess();

    sub_1D6D60828(v31, v36, v38);
    swift_endAccess();
  }

  v123 = v36;
  v144 = v38;
  v40 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v41 = (*(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = v126;
  v45 = *(v126 + 56);

  v46 = v45;
  v47 = v125;
  sub_1D6FBDFD4(v46, v33, v42, v43);
  if (v47)
  {

    return;
  }

  v125 = v48;
  v110 = v33;

  v139 = *(v44 + 72);

  sub_1D7002EAC(v124, &v140);
  v109 = 0;

  v49 = v141;
  v136 = v140;
  v137 = v141;
  v50 = v142[0];
  v138[0] = v142[0];
  v51 = *(v142 + 9);
  *(v138 + 9) = *(v142 + 9);
  *v27 = v140;
  v27[1] = v49;
  v27[2] = v50;
  *(v27 + 41) = v51;
  v52 = v119;
  swift_storeEnumTagMultiPayload();
  v53 = *&v121;
  sub_1D5BE4148(v27, *&v121, type metadata accessor for FormatNodeStateData.Data);
  (*(v118 + 56))(v53, 0, 1, v52);
  v54 = MEMORY[0x1E69E6720];
  v55 = v120;
  sub_1D6FFC87C(v53, v120, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  v56 = v144;

  sub_1D619CB80(&v136, &v133);
  sub_1D6D60A18(v55, v123, v56);
  swift_endAccess();
  sub_1D6FFCA9C(v53, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v54, sub_1D5D27F7C);
  sub_1D6FFC9A0(v27, type metadata accessor for FormatNodeStateData.Data);
  v57 = 0;
  v58 = v125;
  if (v125)
  {
    v59 = *(v125 + 88);
    v60 = v126;
    if (v59 <= 0xFD)
    {
      if ((v59 & 0x80) != 0)
      {
        v145.origin.x = 0.0;
        v145.origin.y = 0.0;
        v145.size.width = 0.0;
        v145.size.height = 0.0;
        Height = CGRectGetHeight(v145);
        v146.origin.x = 0.0;
        v146.origin.y = 0.0;
        v146.size.width = 0.0;
        v146.size.height = 0.0;
        Width = CGRectGetWidth(v146);
        v58 = v125;
        if (Width >= Height)
        {
          Width = Height;
        }

        v121 = Width * 0.5;
        v61 = &unk_1F50F4268;
      }

      else
      {
        v61 = *(v125 + 80);
        v121 = *(v125 + 72);
        sub_1D5ED34C4(*&v121, v61, v59);
        v58 = v125;
      }
    }

    else
    {
      v121 = 0.0;
      v61 = 0;
    }

    if (*(v58 + 176) != 254)
    {
      v57 = *(v58 + 96);
    }
  }

  else
  {
    v121 = 0.0;
    v61 = 0;
    v60 = v126;
  }

  v64 = *(v110 + v40);
  v65 = v110;
  v66 = (v64 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = *(v60 + 64);

  v70 = v69;
  v71 = v109;
  sub_1D6FBAE48(v70, v65, v67, v68);
  if (v71)
  {

    sub_1D619CBDC(&v136);

    return;
  }

  v73 = v72;

  if (v73)
  {

    sub_1D6A45640(v65);
    v75 = v74;

    if (v75)
    {
      swift_beginAccess();

      v76 = v144;

      sub_1D6D60C08(v75, v123, v76);
      swift_endAccess();
    }
  }

  v109 = 0;
  v122 = v61;
  if (*(v60 + 136))
  {
    v78 = *(v60 + 168);
    v77 = *(v60 + 176);
    v80 = *(v60 + 152);
    v79 = *(v60 + 160);
    v81 = *(v60 + 144);
    *&v133 = *(v60 + 136);
    *(&v133 + 1) = v81;
    *&v134 = v80;
    *(&v134 + 1) = v79;
    *&v135[0] = v78;
    *(&v135[0] + 1) = v77;

    sub_1D5DEA234(v78);

    v82 = v109;
    sub_1D68687FC(v65, v117);
    v109 = v82;
    if (v82)
    {

      sub_1D619CBDC(&v136);
      v83 = *&v135[0];

      sub_1D5CBF568(v83);

      return;
    }

    v120 = v73;
    v85 = *&v135[0];

    sub_1D5CBF568(v85);

    v84 = 0;
  }

  else
  {
    v120 = v73;
    v84 = 1;
  }

  v86 = sub_1D7259B8C();
  v87 = v117;
  (*(*(v86 - 8) + 56))(v117, v84, 1, v86);
  KeyPath = swift_getKeyPath();
  *&v133 = *(v60 + 32);
  v89 = v133;
  v90 = v144;

  sub_1D5C82CD8(v89);
  v91 = v109;
  sub_1D5BEB9F4(v65, v123, v90, v116);
  if (v91)
  {
    sub_1D6FFCA9C(v87, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

    swift_bridgeObjectRelease_n();

    sub_1D619CBDC(&v136);
    sub_1D5C92A8C(v133);
  }

  else
  {
    v119 = KeyPath;
    sub_1D5C92A8C(v133);
    swift_beginAccess();
    v92 = *(v60 + 48);

    v93 = sub_1D618EFB4(v65, v92);
    v109 = 0;
    v118 = v93;

    v94 = v124 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
    v132 = *(*(*(v94 + *(type metadata accessor for GroupLayoutContext(0) + 40)) + 24) + 24);
    v133 = v136;
    v134 = v137;
    v135[0] = v138[0];
    *(v135 + 9) = *(v138 + 9);
    v95 = *(v60 + 128);
    v96 = v144;
    if (v122)
    {
      v97 = v122[2];
      v98 = v123;
      if (v97)
      {
        v99 = 0;
        v100 = 32;
        do
        {
          v101 = qword_1D7380240[*(v122 + v100)];
          if ((v101 & ~v99) == 0)
          {
            v101 = 0;
          }

          v99 |= v101;
          ++v100;
          --v97;
        }

        while (v97);
        sub_1D619CB80(&v136, v127);
      }

      else
      {
        sub_1D619CB80(&v136, v127);

        v99 = 0;
      }

      v102 = v121;
    }

    else
    {
      sub_1D619CB80(&v136, v127);

      v102 = 0.0;
      v99 = -1;
      v98 = v123;
    }

    v127[0] = v95;
    v128 = v57;
    v129 = v102;
    v130 = v99;
    v131 = 0;
    sub_1D6FF9DCC(0, &qword_1EDF3BFD0, sub_1D6FF9CE4, &type metadata for FormatLayoutValue, MEMORY[0x1E69D7198]);
    type metadata accessor for IssueCoverViewLayoutAttributesFactory();
    sub_1D5EB5218();
    sub_1D6FF9D38();
    sub_1D6FFA0A0(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory, &protocol conformance descriptor for IssueCoverViewLayoutAttributesFactory);
    sub_1D7259D2C();
    v103 = swift_allocObject();
    v103[2] = v98;
    v103[3] = v96;
    v105 = v125;
    v104 = v126;
    v103[4] = v110;
    v103[5] = v104;
    v103[6] = v105;
    sub_1D5EB5290(0);
    sub_1D6FF9338();

    v106 = v116;
    v107 = v113;
    sub_1D725998C();

    sub_1D619CBDC(&v136);
    (*(v111 + 8))(v107, v112);
    (*(v114 + 8))(v106, v115);
    sub_1D6FFCA9C(v117, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

void sub_1D6FC7108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D6FF9BD0(0);
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v113 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v114 = *(v11 - 8);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v116 = (&v108 - v13);
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v117 = &v108 - v17;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v120 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v121 = &v108 - v23;
  v24 = type metadata accessor for FormatNodeStateData.Data(0);
  v118 = *(v24 - 8);
  v119 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (&v108 - v30);
  v143 = a1;
  swift_beginAccess();

  v124 = a2;
  v33 = sub_1D6B0ACE8(v32, 0);

  swift_beginAccess();
  v34 = *(v4 + 16);
  v35 = *(v4 + 24);
  v126 = v4;

  v36 = sub_1D6E8DD40(v34, v35);
  v38 = v37;

  v122 = *(a3 + 24);
  if (v122[2])
  {
    *v31 = v33;
    v39 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    swift_beginAccess();

    sub_1D6D60828(v31, v36, v38);
    swift_endAccess();
  }

  v123 = v36;
  v144 = v38;
  v40 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v41 = (*(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = v126;
  v45 = *(v126 + 56);

  v46 = v45;
  v47 = v125;
  sub_1D6FBDFD4(v46, v33, v42, v43);
  if (v47)
  {

    return;
  }

  v125 = v48;
  v110 = v33;

  v139 = *(v44 + 72);

  sub_1D7002EAC(v124, &v140);
  v109 = 0;

  v49 = v141;
  v136 = v140;
  v137 = v141;
  v50 = v142[0];
  v138[0] = v142[0];
  v51 = *(v142 + 9);
  *(v138 + 9) = *(v142 + 9);
  *v27 = v140;
  v27[1] = v49;
  v27[2] = v50;
  *(v27 + 41) = v51;
  v52 = v119;
  swift_storeEnumTagMultiPayload();
  v53 = *&v121;
  sub_1D5BE4148(v27, *&v121, type metadata accessor for FormatNodeStateData.Data);
  (*(v118 + 56))(v53, 0, 1, v52);
  v54 = MEMORY[0x1E69E6720];
  v55 = v120;
  sub_1D6FFC87C(v53, v120, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  v56 = v144;

  sub_1D619CB80(&v136, &v133);
  sub_1D6D60A18(v55, v123, v56);
  swift_endAccess();
  sub_1D6FFCA9C(v53, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v54, sub_1D5D27F7C);
  sub_1D6FFC9A0(v27, type metadata accessor for FormatNodeStateData.Data);
  v57 = 0;
  v58 = v125;
  if (v125)
  {
    v59 = *(v125 + 88);
    v60 = v126;
    if (v59 <= 0xFD)
    {
      if ((v59 & 0x80) != 0)
      {
        v145.origin.x = 0.0;
        v145.origin.y = 0.0;
        v145.size.width = 0.0;
        v145.size.height = 0.0;
        Height = CGRectGetHeight(v145);
        v146.origin.x = 0.0;
        v146.origin.y = 0.0;
        v146.size.width = 0.0;
        v146.size.height = 0.0;
        Width = CGRectGetWidth(v146);
        v58 = v125;
        if (Width >= Height)
        {
          Width = Height;
        }

        v121 = Width * 0.5;
        v61 = &unk_1F50F4290;
      }

      else
      {
        v61 = *(v125 + 80);
        v121 = *(v125 + 72);
        sub_1D5ED34C4(*&v121, v61, v59);
        v58 = v125;
      }
    }

    else
    {
      v121 = 0.0;
      v61 = 0;
    }

    if (*(v58 + 176) != 254)
    {
      v57 = *(v58 + 96);
    }
  }

  else
  {
    v121 = 0.0;
    v61 = 0;
    v60 = v126;
  }

  v64 = *(v110 + v40);
  v65 = v110;
  v66 = (v64 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = *(v60 + 64);

  v70 = v69;
  v71 = v109;
  sub_1D6FBAE48(v70, v65, v67, v68);
  if (v71)
  {

    sub_1D619CBDC(&v136);

    return;
  }

  v73 = v72;

  if (v73)
  {

    sub_1D6A45640(v65);
    v75 = v74;

    if (v75)
    {
      swift_beginAccess();

      v76 = v144;

      sub_1D6D60C08(v75, v123, v76);
      swift_endAccess();
    }
  }

  v109 = 0;
  v122 = v61;
  if (*(v60 + 136))
  {
    v78 = *(v60 + 168);
    v77 = *(v60 + 176);
    v80 = *(v60 + 152);
    v79 = *(v60 + 160);
    v81 = *(v60 + 144);
    *&v133 = *(v60 + 136);
    *(&v133 + 1) = v81;
    *&v134 = v80;
    *(&v134 + 1) = v79;
    *&v135[0] = v78;
    *(&v135[0] + 1) = v77;

    sub_1D5DEA234(v78);

    v82 = v109;
    sub_1D68687FC(v65, v117);
    v109 = v82;
    if (v82)
    {

      sub_1D619CBDC(&v136);
      v83 = *&v135[0];

      sub_1D5CBF568(v83);

      return;
    }

    v120 = v73;
    v85 = *&v135[0];

    sub_1D5CBF568(v85);

    v84 = 0;
  }

  else
  {
    v120 = v73;
    v84 = 1;
  }

  v86 = sub_1D7259B8C();
  v87 = v117;
  (*(*(v86 - 8) + 56))(v117, v84, 1, v86);
  KeyPath = swift_getKeyPath();
  *&v133 = *(v60 + 32);
  v89 = v133;
  v90 = v144;

  sub_1D5C82CD8(v89);
  v91 = v109;
  sub_1D5BEB9F4(v65, v123, v90, v116);
  if (v91)
  {
    sub_1D6FFCA9C(v87, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

    swift_bridgeObjectRelease_n();

    sub_1D619CBDC(&v136);
    sub_1D5C92A8C(v133);
  }

  else
  {
    v119 = KeyPath;
    sub_1D5C92A8C(v133);
    swift_beginAccess();
    v92 = *(v60 + 48);

    v93 = sub_1D618EFB4(v65, v92);
    v109 = 0;
    v118 = v93;

    v94 = v124 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
    v132 = *(*(*(v94 + *(type metadata accessor for GroupLayoutContext(0) + 40)) + 24) + 24);
    v133 = v136;
    v134 = v137;
    v135[0] = v138[0];
    *(v135 + 9) = *(v138 + 9);
    v95 = *(v60 + 128);
    v96 = v144;
    if (v122)
    {
      v97 = v122[2];
      v98 = v123;
      if (v97)
      {
        v99 = 0;
        v100 = 32;
        do
        {
          v101 = qword_1D7380240[*(v122 + v100)];
          if ((v101 & ~v99) == 0)
          {
            v101 = 0;
          }

          v99 |= v101;
          ++v100;
          --v97;
        }

        while (v97);
        sub_1D619CB80(&v136, v127);
      }

      else
      {
        sub_1D619CB80(&v136, v127);

        v99 = 0;
      }

      v102 = v121;
    }

    else
    {
      sub_1D619CB80(&v136, v127);

      v102 = 0.0;
      v99 = -1;
      v98 = v123;
    }

    v127[0] = v95;
    v128 = v57;
    v129 = v102;
    v130 = v99;
    v131 = 0;
    sub_1D6FF9DCC(0, &qword_1EDF3BFD0, sub_1D6FF9CE4, &type metadata for FormatLayoutValue, MEMORY[0x1E69D7198]);
    type metadata accessor for IssueCoverViewLayoutAttributesFactory();
    sub_1D5EB5218();
    sub_1D6FF9D38();
    sub_1D6FFA0A0(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory, &protocol conformance descriptor for IssueCoverViewLayoutAttributesFactory);
    sub_1D7259D2C();
    v103 = swift_allocObject();
    v103[2] = v98;
    v103[3] = v96;
    v105 = v125;
    v104 = v126;
    v103[4] = v110;
    v103[5] = v104;
    v103[6] = v105;
    sub_1D6FFA04C(0);
    sub_1D6FFA06C();

    v106 = v116;
    v107 = v113;
    sub_1D725998C();

    sub_1D619CBDC(&v136);
    (*(v111 + 8))(v107, v112);
    (*(v114 + 8))(v106, v115);
    sub_1D6FFCA9C(v117, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

__n128 sub_1D6FC810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v29 = a1;
  v12 = *(a3 + 80);
  if (v12)
  {
    v13 = *(v3 + 48);
    v14 = *(v3 + 56);
    *&v26 = v13;
    *(&v26 + 1) = v14;
    v27 = *(v4 + 32);
    v28 = 0;
    v15 = sub_1D7259B8C();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    v17 = v27;
    *(v16 + 24) = v26;
    *(v16 + 40) = v17;
    *(v16 + 56) = v28;
    swift_retain_n();

    sub_1D6FF9F40(&v26, v24);
    sub_1D5EB5368(0);
    v23 = a1;
    sub_1D6FF91E8();
    a1 = v23;
    sub_1D7259ACC();

    sub_1D6FF9F9C(&v26);

    sub_1D6FFCA9C(v11, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }

  v18 = *(v4 + 144);
  v24[4] = *(v4 + 128);
  v24[5] = v18;
  v25 = *(v4 + 160);
  v19 = *(v4 + 80);
  v24[0] = *(v4 + 64);
  v24[1] = v19;
  v20 = *(v4 + 112);
  v24[2] = *(v4 + 96);
  v24[3] = v20;
  sub_1D6FBF7BC(a1, a2, a3);
  return result;
}

__n128 sub_1D6FC8388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v29 = a1;
  v12 = *(a3 + 80);
  if (v12)
  {
    v13 = *(v3 + 48);
    v14 = *(v3 + 56);
    *&v26 = v13;
    *(&v26 + 1) = v14;
    v27 = *(v4 + 32);
    v28 = 0;
    v15 = sub_1D7259B8C();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    v17 = v27;
    *(v16 + 24) = v26;
    *(v16 + 40) = v17;
    *(v16 + 56) = v28;
    swift_retain_n();

    sub_1D6FF9F40(&v26, v24);
    sub_1D5EB563C(0);
    v23 = a1;
    sub_1D6FF92D8();
    a1 = v23;
    sub_1D7259ACC();

    sub_1D6FF9F9C(&v26);

    sub_1D6FFCA9C(v11, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }

  v18 = *(v4 + 144);
  v24[4] = *(v4 + 128);
  v24[5] = v18;
  v25 = *(v4 + 160);
  v19 = *(v4 + 80);
  v24[0] = *(v4 + 64);
  v24[1] = v19;
  v20 = *(v4 + 112);
  v24[2] = *(v4 + 96);
  v24[3] = v20;
  sub_1D6FBFE04(a1, a2, a3);
  return result;
}

__n128 sub_1D6FC8604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v29 = a1;
  v12 = *(a3 + 80);
  if (v12)
  {
    v13 = *(v3 + 48);
    v14 = *(v3 + 56);
    *&v26 = v13;
    *(&v26 + 1) = v14;
    v27 = *(v4 + 32);
    v28 = 0;
    v15 = sub_1D7259B8C();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    v17 = v27;
    *(v16 + 24) = v26;
    *(v16 + 40) = v17;
    *(v16 + 56) = v28;
    swift_retain_n();

    sub_1D6FF9F40(&v26, v24);
    sub_1D5EB5290(0);
    v23 = a1;
    sub_1D6FF9338();
    a1 = v23;
    sub_1D7259ACC();

    sub_1D6FF9F9C(&v26);

    sub_1D6FFCA9C(v11, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }

  v18 = *(v4 + 144);
  v24[4] = *(v4 + 128);
  v24[5] = v18;
  v25 = *(v4 + 160);
  v19 = *(v4 + 80);
  v24[0] = *(v4 + 64);
  v24[1] = v19;
  v20 = *(v4 + 112);
  v24[2] = *(v4 + 96);
  v24[3] = v20;
  sub_1D6FC044C(a1, a2, a3);
  return result;
}

__n128 sub_1D6FC8880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v29 = a1;
  v12 = *(a3 + 80);
  if (v12)
  {
    v13 = *(v3 + 48);
    v14 = *(v3 + 56);
    *&v26 = v13;
    *(&v26 + 1) = v14;
    v27 = *(v4 + 32);
    v28 = 0;
    v15 = sub_1D7259B8C();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    v17 = v27;
    *(v16 + 24) = v26;
    *(v16 + 40) = v17;
    *(v16 + 56) = v28;
    swift_retain_n();

    sub_1D6FF9F40(&v26, v24);
    sub_1D6FFA04C(0);
    v23 = a1;
    sub_1D6FFA06C();
    a1 = v23;
    sub_1D7259ACC();

    sub_1D6FF9F9C(&v26);

    sub_1D6FFCA9C(v11, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }

  v18 = *(v4 + 144);
  v24[4] = *(v4 + 128);
  v24[5] = v18;
  v25 = *(v4 + 160);
  v19 = *(v4 + 80);
  v24[0] = *(v4 + 64);
  v24[1] = v19;
  v20 = *(v4 + 112);
  v24[2] = *(v4 + 96);
  v24[3] = v20;
  sub_1D6FC0A94(a1, a2, a3);
  return result;
}

uint64_t sub_1D6FC8AFC(uint64_t a1)
{
  v3 = v1;
  v57 = *v1;
  swift_beginAccess();
  v5 = v1[3];
  v71 = v1[2];
  v6 = v1[5];
  v58 = v1[4];
  swift_beginAccess();
  v7 = v1[6];
  v8 = *(v3 + 56);
  if (v8)
  {
    *&v60 = a1;
    v54 = a1;
    v9 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v56 = v5;

    v10 = v9();
    v11 = sub_1D5E02AFC(v10, v8);
    if (v2)
    {

LABEL_14:

      return v3;
    }

    v17 = v11;
    v55 = v7;

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    sub_1D5F3FE24(0);
    v12 = swift_allocObject();
    v14 = v12;
    *(v12 + 16) = xmmword_1D7273AE0;
    *(v12 + 32) = v18;
    *(v12 + 40) = 0;
    v5 = v56;
    a1 = v54;
    if (!*(v3 + 64))
    {
      goto LABEL_8;
    }
  }

  else
  {

    v55 = v7;

    v14 = 0;
    if (!*(v3 + 64))
    {
LABEL_8:
      v53 = v14;
      v16 = 0;
      goto LABEL_10;
    }
  }

  *&v60 = a1;
  MEMORY[0x1EEE9AC00](v12, v13);
  v46[2] = &v60;
  sub_1D5EC9CB8(sub_1D6FFCC1C, v46, v15);
  if (!v2)
  {
    v53 = v14;
LABEL_10:
    v56 = v16;
    v19 = *(v3 + 72);
    v20 = *(v3 + 80);
    v21 = *(v3 + 88);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v52 = *(v3 + 108);
    v24 = *(v3 + 112);
    v25 = *(v3 + 120);
    v26 = *(v3 + 128);
    v27 = *(v3 + 136);
    v50 = *(v3 + 152);
    v51 = v27;
    v49 = *(v3 + 168);
    v48 = *(v3 + 176);
    v54 = v19;
    if (v48 == 254)
    {
      v47 = v2;
      sub_1D5ED34B0(v19, v20, v21);
    }

    else
    {
      sub_1D5ED34B0(v19, v20, v21);
      sub_1D5FA6CB0(a1, v26, &v60);
      if (v2)
      {

        sub_1D5ED348C(v54, v20, v21);
        goto LABEL_14;
      }

      v47 = 0;
      v26 = v60;
    }

    v28 = *(v3 + 232);
    v29 = *(v3 + 248);
    v30 = *(v3 + 200);
    v60 = *(v3 + 184);
    v61 = v30;
    v62 = *(v3 + 216);
    v63 = v28;
    v31 = *(v3 + 296);
    v32 = *(v3 + 328);
    v68 = *(v3 + 312);
    v69 = v32;
    v33 = *(v3 + 264);
    v34 = *(v3 + 280);
    v64 = v29;
    v65 = v33;
    v35 = *(v3 + 177);
    v70 = *(v3 + 344);
    v66 = v34;
    v67 = v31;
    v3 = swift_allocObject();
    swift_beginAccess();
    *(v3 + 16) = v71;
    *(v3 + 24) = v5;
    *(v3 + 32) = v58;
    *(v3 + 40) = v6;
    swift_beginAccess();
    v36 = v53;
    *(v3 + 48) = v55;
    *(v3 + 56) = v36;
    v37 = v54;
    *(v3 + 64) = v56;
    *(v3 + 72) = v37;
    *(v3 + 80) = v20;
    *(v3 + 88) = v21;
    *(v3 + 96) = v22;
    *(v3 + 104) = v23;
    *(v3 + 108) = v52;
    *(v3 + 112) = v24;
    *(v3 + 120) = v25;
    *(v3 + 128) = v26;
    v38 = v51;
    *(v3 + 152) = v50;
    *(v3 + 136) = v38;
    *(v3 + 168) = v49;
    *(v3 + 176) = v48;
    *(v3 + 177) = v35;
    v39 = v68;
    v40 = v69;
    v41 = v66;
    *(v3 + 296) = v67;
    *(v3 + 312) = v39;
    *(v3 + 328) = v40;
    *(v3 + 344) = v70;
    v42 = v62;
    *(v3 + 232) = v63;
    v43 = v65;
    *(v3 + 248) = v64;
    *(v3 + 264) = v43;
    *(v3 + 280) = v41;
    v44 = v61;
    *(v3 + 184) = v60;
    *(v3 + 200) = v44;
    *(v3 + 216) = v42;
    sub_1D6FF924C(&v60, &v59, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    return v3;
  }

  return v3;
}

void sub_1D6FC8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v61 = a7;
  v58 = a5;
  v59 = a6;
  v57 = a4;
  v8 = v7;
  v12 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v52 - v18;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v12);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v52 - v22);
  v70 = a1;
  swift_beginAccess();
  v25 = v8[2];
  v24 = v8[3];

  v26 = sub_1D6E8DD40(v25, v24);
  v28 = v27;

  v60 = a3;
  v29 = *(a3 + 24);
  v30 = v26;
  if (*(v29 + 16))
  {
    *v23 = a2;
    v31 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
    swift_beginAccess();

    sub_1D6D60828(v23, v30, v28);
    swift_endAccess();
  }

  v54 = v30;
  v62 = a2;
  if (v8[13])
  {
    v33 = v8[17];
    v32 = v8[18];
    v35 = v8[15];
    v34 = v8[16];
    v36 = v8[14];
    v64 = v8[13];
    v65 = v36;
    v66 = v35;
    v67 = v34;
    v68 = v33;
    v69 = v32;

    sub_1D5DEA234(v33);

    v37 = v63;
    sub_1D68687FC(v62, v19);
    v63 = v37;
    if (v37)
    {

      v38 = v68;

      sub_1D5CBF568(v38);

      return;
    }

    v40 = v68;

    sub_1D5CBF568(v40);

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v41 = sub_1D7259B8C();
  v42 = *(*(v41 - 8) + 56);
  v43 = v19;
  v52 = v19;
  v42(v19, v39, 1, v41);
  swift_unownedRetainStrong();
  v44 = v28;

  swift_unownedRetain();

  v45 = MEMORY[0x1E69D6FA0];
  v53 = MEMORY[0x1E69E6720];
  v46 = v56;
  sub_1D6FFC87C(v43, v56, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  v47 = (*(v55 + 80) + 48) & ~*(v55 + 80);
  v48 = (v14 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v50 = v62;
  v49[2] = v8;
  v49[3] = v50;
  v49[4] = v54;
  v49[5] = v44;
  sub_1D6FFC410(v46, v49 + v47, &qword_1EDF3C120, v45);
  *(v49 + v48) = v60;
  v58(0);
  v59();

  v51 = v52;
  sub_1D7259ACC();

  sub_1D6FFCA9C(v51, &qword_1EDF3C120, v45, v53, sub_1D5D27F7C);
}

void sub_1D6FC9504(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v50 = a6;
  v51 = a7;
  v48[1] = a4;
  v49 = a5;
  v9 = v8;
  v10 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v15 = v14;
  v52 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v54 = (v48 - v17);
  v18 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v55 = v48 - v21;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v18);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = (v48 - v24);
  v62 = a1;
  swift_beginAccess();
  v26 = v10[2];
  v27 = v10[3];

  v28 = sub_1D6E8DD40(v26, v27);
  v30 = v29;
  v31 = v28;

  if (*(*(a3 + 24) + 16))
  {
    *v25 = a2;
    v32 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
    swift_beginAccess();

    sub_1D6D60828(v25, v31, v30);
    swift_endAccess();
  }

  v53 = v31;
  if (v10[6])
  {
    v34 = v10[10];
    v33 = v10[11];
    v36 = v10[8];
    v35 = v10[9];
    v37 = v10[7];
    v56 = v10[6];
    v57 = v37;
    v58 = v36;
    v59 = v35;
    v60 = v34;
    v61 = v33;

    sub_1D5DEA234(v34);

    sub_1D68687FC(a2, v55);
    if (v9)
    {

      v38 = v60;

      sub_1D5CBF568(v38);

      return;
    }

    v48[0] = v15;
    v40 = v60;

    sub_1D5CBF568(v40);
    v15 = v48[0];

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v41 = sub_1D7259B8C();
  v42 = v55;
  (*(*(v41 - 8) + 56))(v55, v39, 1, v41);
  swift_getKeyPath();
  v56 = v10[4];
  v43 = v56;

  sub_1D5C82CD8(v43);
  sub_1D5BEB9F4(a2, v53, v30, v54);
  if (v9)
  {
    sub_1D6FFCA9C(v42, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_bridgeObjectRelease_n();

    sub_1D5C92A8C(v56);
  }

  else
  {
    sub_1D5C92A8C(v56);
    swift_beginAccess();
    v44 = v10[5];

    sub_1D618EFB4(a2, v44);

    v45 = swift_allocObject();
    v48[0] = v15;
    v45[2] = v53;
    v45[3] = v30;
    v45[4] = a2;
    v45[5] = v10;
    v49(0);
    v50();

    v47 = v54;
    v46 = v55;
    sub_1D7259B1C();

    (*(v52 + 8))(v47, v48[0]);
    sub_1D6FFCA9C(v46, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

void sub_1D6FC9BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v73 = a6;
  v74 = a7;
  v71 = a4;
  v72 = a5;
  v75 = a3;
  v8 = v7;
  v10 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v70 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v63 - v16;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v10);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = (&v63 - v20);
  v83 = a1;
  swift_beginAccess();

  v23 = sub_1D6B0ACE8(v22, 0);

  v24 = (*(v23 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  v27 = v8[7];

  v28 = v27;
  v29 = v76;
  sub_1D6FBAAA4(v28, v23, v26, v25);
  v31 = v30;

  v76 = v29;
  if (v29)
  {

    return;
  }

  v66 = v31;
  v67 = v12;
  v32 = v17;
  swift_beginAccess();
  v33 = v8[2];
  v34 = v8[3];
  v35 = v8;

  v36 = sub_1D6E8DD40(v33, v34);
  v38 = v37;

  v39 = v75;
  if (*(*(v75 + 24) + 16))
  {
    *v21 = v23;
    v40 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v40 - 8) + 56))(v21, 0, 1, v40);
    swift_beginAccess();

    sub_1D6D60828(v21, v36, v38);
    swift_endAccess();
    v39 = v75;
  }

  v68 = v23;
  v65 = v36;
  v41 = v35;
  v42 = v35[26];
  if (v42)
  {
    v44 = v35[30];
    v43 = v35[31];
    v45 = v32;
    v47 = v41[28];
    v46 = v41[29];
    v48 = v41[27];
    v77 = v42;
    v78 = v48;
    v79 = v47;
    v80 = v46;
    v81 = v44;
    v82 = v43;

    sub_1D5DEA234(v44);

    v49 = v76;
    sub_1D68687FC(v68, v45);
    if (v49)
    {

      v50 = v81;

      sub_1D5CBF568(v50);

      return;
    }

    v76 = 0;
    v52 = v81;

    v32 = v45;

    sub_1D5CBF568(v52);

    v51 = 0;
    v39 = v75;
  }

  else
  {
    v51 = 1;
  }

  v63 = v32;
  v53 = sub_1D7259B8C();
  (*(*(v53 - 8) + 56))(v32, v51, 1, v53);
  swift_unownedRetainStrong();

  swift_unownedRetain();

  v54 = MEMORY[0x1E69D6FA0];
  v64 = MEMORY[0x1E69E6720];
  v55 = v32;
  v56 = v70;
  sub_1D6FFC87C(v55, v70, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  v57 = (*(v69 + 80) + 64) & ~*(v69 + 80);
  v58 = swift_allocObject();
  v59 = v65;
  v58[2] = v41;
  v58[3] = v59;
  v60 = v68;
  v58[4] = v38;
  v58[5] = v60;
  v61 = v66;
  v58[6] = v39;
  v58[7] = v61;
  sub_1D6FFC410(v56, v58 + v57, &qword_1EDF3C120, v54);
  v72(0);
  v73();

  v62 = v63;
  sub_1D7259ACC();

  sub_1D6FFCA9C(v62, &qword_1EDF3C120, v54, v64, sub_1D5D27F7C);
}

double sub_1D6FCA290@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  v27 = a1;
  v24 = a2;
  v25 = a4;
  sub_1D5D27F7C(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for FormatOption(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext(0);
  v15 = v14();
  if ((a3 & 1) == 0)
  {

    v21 = v27;
LABEL_5:
    v22 = v25;
    *v25 = v21 & 1;
    v22[1] = 0;
    *(v22 + 16) = 0;
    return result;
  }

  v16 = v15;
  v17 = v24;

  v18 = v27;
  FormatOptionCollection.subscript.getter(v27, v17, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D6FFCA9C(v8, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    type metadata accessor for FormatLayoutError(0);
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v19 = v18;
    v19[1] = v17;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return result;
  }

  sub_1D5D2F2C4(v18, v17, 1);
  sub_1D5BDAB74(v8, v13, type metadata accessor for FormatOption);
  v28 = *(v13 + 2);

  v23 = v26;
  v21 = sub_1D60ECADC(&v28, v16, v13);

  sub_1D6FFC9A0(v13, type metadata accessor for FormatOption);

  if (!v23)
  {
    goto LABEL_5;
  }

  return result;
}

void sub_1D6FCA5C4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6FCAC74(*v2, v2[1], v64);
  if (!v3)
  {
    v51 = a2;
    v6 = v64[0];
    v7 = v64[1];
    v53 = v2;
    v8 = v2[2];
    *&v58 = a1;
    v9 = &off_1F51AF328;
    v10 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v52 = a1;
    v11 = v10();
    v12 = sub_1D5E02AFC(v11, v8);
    v49 = v7;
    v50 = v6;

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    sub_1D5F3FE24(0);
    v14 = swift_allocObject();
    v48 = xmmword_1D7273AE0;
    *(v14 + 16) = xmmword_1D7273AE0;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;
    v15 = v53[3];
    v16 = v52;
    v63 = v52;
    v17 = v10();
    v18 = sub_1D5E02AFC(v17, v15);

    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v20 = swift_allocObject();
    v22 = v20;
    *(v20 + 16) = v48;
    *(v20 + 32) = v19;
    *(v20 + 40) = 0;
    v23 = v53;
    if (v53[12])
    {
      v24 = v53[5];
      v25 = v53[10];
      v9 = v53[11];
      *&v56 = v16;
      MEMORY[0x1EEE9AC00](v20, v21);
      v47 = &v56;
      *&v48 = sub_1D5EC9E90(sub_1D6FFCBEC, v46, v26);
      v66[0] = v24;
      if (v25)
      {
        sub_1D6FFC87C(v66, v55, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
        v27 = v16;
        sub_1D6FCAC74(v25, v9, &v56);
        v9 = *(&v56 + 1);
        v30 = v56;
        v31 = v48;
      }

      else
      {
        v28 = sub_1D6FFC87C(v66, v55, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
        v30 = 0;
        v31 = v48;
        v27 = v16;
      }

      v32 = *(v23 + 4);
      v59 = *(v23 + 3);
      v60 = v32;
      LOBYTE(v55[0]) = 1;
      *&v58 = v31;
      *(&v58 + 1) = v66[0];
      *&v61 = v30;
      *(&v61 + 1) = v9;
      v62 = 1;
    }

    else
    {
      v27 = v16;
      sub_1D5FA6CB0(v16, v53[4], &v56);
      LOBYTE(v55[0]) = 0;
      *&v58 = v56;
      v62 = 0;
    }

    if (v23[21])
    {
      v33 = v23[14];
      v34 = v23[19];
      v9 = v23[20];
      v55[0] = v27;
      MEMORY[0x1EEE9AC00](v28, v29);
      v47 = v55;
      *&v48 = sub_1D5EC9E90(sub_1D6FFCBEC, v46, v35);
      v65 = v33;
      sub_1D6FFC87C(&v65, v54, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
      if (v34)
      {
        sub_1D6FCAC74(v34, v9, v55);
        v39 = v55[0];
        v9 = v55[1];
      }

      else
      {
        v39 = 0;
      }

      v38 = v48;
      v40 = *(v23 + 17);
      v56 = *(v23 + 15);
      v57 = v40;
      v36 = v65;
      v37 = 1;
      v54[0] = 1;
    }

    else
    {
      sub_1D5FA6CB0(v27, v23[13], v55);
      v37 = 0;
      v38 = v55[0];
      v39 = &v67;
      v54[0] = 0;
    }

    v41 = v49;
    v42 = v51;
    *v51 = v50;
    v42[1] = v41;
    v42[2] = v14;
    v42[3] = v22;
    v43 = v61;
    *(v42 + 4) = v60;
    *(v42 + 5) = v43;
    *(v42 + 96) = v62;
    v44 = v59;
    *(v42 + 2) = v58;
    *(v42 + 3) = v44;
    v42[13] = v38;
    v42[14] = v36;
    v45 = v56;
    *(v42 + 17) = v57;
    *(v42 + 15) = v45;
    v42[19] = v39;
    v42[20] = v9;
    *(v42 + 168) = v37;
  }
}

void sub_1D6FCAC74(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v7 = v6();
  v8 = sub_1D5E02AFC(v7, a1);

  if (!v3)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    sub_1D5F3FE24(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7273AE0;
    *(v10 + 32) = v9;
    *(v10 + 40) = 0;
    v11 = v6();
    v12 = sub_1D5E02AFC(v11, a2);

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7273AE0;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;
    *a3 = v10;
    a3[1] = v14;
  }
}

uint64_t sub_1D6FCAE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatOption(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v43 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v43 - v14);
  if (!a1)
  {
    goto LABEL_29;
  }

  if (!a2)
  {
    if (*(a1 + 16))
    {

      return a1;
    }

LABEL_29:

    return a2;
  }

  v16 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v44 = a1;
  if (v16)
  {
    v47 = a2;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v16, 0);
    v17 = v49;
    v18 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v46 = v5;
    v19 = *(v5 + 72);
    do
    {
      sub_1D5BE4148(v18, v15, type metadata accessor for FormatOption);
      v20 = *v15;
      v21 = v15[1];

      sub_1D6FFC9A0(v15, type metadata accessor for FormatOption);
      v49 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D5BFC364((v22 > 1), v23 + 1, 1);
        v17 = v49;
      }

      *(v17 + 16) = v23 + 1;
      v24 = v17 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v18 += v19;
      --v16;
    }

    while (v16);
    v5 = v46;
    a2 = v47;
  }

  v25 = sub_1D5B86020(v17);

  v47 = *(a2 + 16);
  if (v47)
  {
    v26 = 0;
    v27 = *(v5 + 80);
    v28 = *(v5 + 72);
    v45 = (v27 + 32) & ~v27;
    v46 = a2 + v45;
    v29 = v25 + 56;
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D5BE4148(v46 + v28 * v26, v11, type metadata accessor for FormatOption);
      if (*(v25 + 16) && (v31 = *v11, v32 = v11[1], sub_1D7264A0C(), sub_1D72621EC(), v33 = sub_1D7264A5C(), v34 = -1 << *(v25 + 32), v35 = v33 & ~v34, ((*(v29 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
      {
        v36 = ~v34;
        while (1)
        {
          v37 = (*(v25 + 48) + 16 * v35);
          v38 = *v37 == v31 && v37[1] == v32;
          if (v38 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v35 = (v35 + 1) & v36;
          if (((*(v29 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        sub_1D6FFC9A0(v11, type metadata accessor for FormatOption);
      }

      else
      {
LABEL_22:
        sub_1D5BDAB74(v11, v48, type metadata accessor for FormatOption);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6997860(0, *(v30 + 16) + 1, 1);
          v30 = v50;
        }

        v41 = *(v30 + 16);
        v40 = *(v30 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1D6997860((v40 > 1), v41 + 1, 1);
          v30 = v50;
        }

        *(v30 + 16) = v41 + 1;
        sub_1D5BDAB74(v48, v30 + v45 + v41 * v28, type metadata accessor for FormatOption);
      }

      ++v26;
    }

    while (v26 != v47);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v49 = v44;

  sub_1D5D505F0(v30);
  return v49;
}

uint64_t sub_1D6FCB23C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = swift_beginAccess();
  v9 = v1[2];
  v8 = v1[3];
  v11 = v1[4];
  v10 = v1[5];
  v19 = *(v4 + 48);
  v12 = *(v4 + 56);
  if (!v12)
  {

    v14 = 0;
LABEL_6:
    swift_beginAccess();
    v15 = *(v4 + 64);
    v4 = swift_allocObject();
    swift_beginAccess();
    *(v4 + 16) = v9;
    *(v4 + 24) = v8;
    *(v4 + 32) = v11;
    *(v4 + 40) = v10;
    *(v4 + 48) = v19;
    *(v4 + 56) = v14;
    swift_beginAccess();
    *(v4 + 64) = v15;

    return v4;
  }

  v18 = a1;
  MEMORY[0x1EEE9AC00](v6, v7);
  v17[2] = &v18;

  v13 = sub_1D5ECA350(sub_1D6FF9AFC, v17, v12);
  if (!v3)
  {
    v14 = v13;
    goto LABEL_6;
  }

  return v4;
}

uint64_t sub_1D6FCB400(uint64_t a1)
{
  v3 = v1;
  v40 = *v1;
  swift_beginAccess();
  v5 = v1[3];
  v43 = v1[2];
  v6 = v1[5];
  v41 = v1[4];
  swift_beginAccess();
  v7 = v1[6];
  v8 = *(v3 + 56);
  if (v8)
  {
    v42[0] = a1;
    v37 = a1;
    v9 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);

    v39 = v6;
    v10 = v9();
    v11 = sub_1D5E02AFC(v10, v8);
    if (v2)
    {

LABEL_14:

      return v3;
    }

    v17 = v11;
    v38 = v7;

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    sub_1D5F3FE24(0);
    v12 = swift_allocObject();
    v14 = v12;
    *(v12 + 16) = xmmword_1D7273AE0;
    *(v12 + 32) = v18;
    *(v12 + 40) = 0;
    v6 = v39;
    a1 = v37;
    if (!*(v3 + 64))
    {
      goto LABEL_8;
    }
  }

  else
  {

    v38 = v7;

    v14 = 0;
    if (!*(v3 + 64))
    {
LABEL_8:
      v37 = v14;
      v16 = 0;
      goto LABEL_10;
    }
  }

  v42[0] = a1;
  MEMORY[0x1EEE9AC00](v12, v13);
  v30[2] = v42;
  sub_1D5EC9CB8(sub_1D6FFCC1C, v30, v15);
  if (!v2)
  {
    v37 = v14;
LABEL_10:
    v39 = v16;
    v20 = *(v3 + 72);
    v19 = *(v3 + 80);
    v21 = *(v3 + 88);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v36 = *(v3 + 108);
    v24 = *(v3 + 112);
    v25 = *(v3 + 120);
    v26 = *(v3 + 128);
    v34 = *(v3 + 152);
    v35 = *(v3 + 136);
    v33 = *(v3 + 168);
    v32 = *(v3 + 176);
    if (v32 == 254)
    {
      sub_1D5ED34B0(v20, v19, v21);
    }

    else
    {
      sub_1D5ED34B0(v20, v19, v21);
      sub_1D5FA6CB0(a1, v26, v42);
      if (v2)
      {

        sub_1D5ED348C(v20, v19, v21);
        goto LABEL_14;
      }

      v26 = v42[0];
    }

    v31 = *(v3 + 177);
    swift_beginAccess();
    v27 = *(v3 + 184);
    v3 = swift_allocObject();
    swift_beginAccess();
    *(v3 + 16) = v43;
    *(v3 + 24) = v5;
    *(v3 + 32) = v41;
    *(v3 + 40) = v6;
    swift_beginAccess();
    v28 = v37;
    *(v3 + 48) = v38;
    *(v3 + 56) = v28;
    *(v3 + 64) = v39;
    *(v3 + 72) = v20;
    *(v3 + 80) = v19;
    *(v3 + 88) = v21;
    *(v3 + 96) = v22;
    *(v3 + 104) = v23;
    *(v3 + 108) = v36;
    *(v3 + 112) = v24;
    *(v3 + 120) = v25;
    *(v3 + 128) = v26;
    *(v3 + 152) = v34;
    *(v3 + 136) = v35;
    *(v3 + 168) = v33;
    *(v3 + 176) = v32;
    *(v3 + 177) = v31;
    swift_beginAccess();
    *(v3 + 184) = v27;

    return v3;
  }

  return v3;
}

uint64_t sub_1D6FCB8B4(uint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v5 = v1[3];
  v6 = v1[5];
  v21 = v1[4];
  v22 = v1[2];
  swift_beginAccess();
  v7 = v1[6];
  v8 = *(v3 + 56);
  if (!v8)
  {

    v20 = v7;

    v12 = 0;
    goto LABEL_6;
  }

  v23[0] = a1;
  v19 = a1;
  v9 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);

  v10 = v9();
  v11 = sub_1D5E02AFC(v10, v8);
  if (!v2)
  {
    v13 = v11;
    v20 = v7;

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    sub_1D5F3FE24(0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    *(v12 + 32) = v14;
    *(v12 + 40) = 0;
    a1 = v19;
LABEL_6:
    v15 = *(v3 + 64);
    if ((~v15 & 0xF000000000000007) != 0)
    {
      sub_1D5FA6CB0(a1, *(v3 + 64), v23);
      if (v2)
      {

        return v3;
      }

      v15 = v23[0];
    }

    v16 = *(v3 + 72);
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_1D5FA6CB0(a1, *(v3 + 72), v23);
      if (v2)
      {

        sub_1D5C84FF4(v15);
        return v3;
      }

      v16 = v23[0];
    }

    v17 = *(v3 + 80);
    v3 = swift_allocObject();
    swift_beginAccess();
    *(v3 + 16) = v22;
    *(v3 + 24) = v5;
    *(v3 + 32) = v21;
    *(v3 + 40) = v6;
    swift_beginAccess();
    *(v3 + 48) = v20;
    *(v3 + 56) = v12;
    *(v3 + 64) = v15;
    *(v3 + 72) = v16;
    *(v3 + 80) = v17;
    return v3;
  }

  return v3;
}

uint64_t sub_1D6FCBBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[1];
  v19 = *v2;
  sub_1D6FF9454(&v19, &v16, &qword_1EDF2CA68, sub_1D67282D8, &type metadata for FormatCodingAllBorderEdgeStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D5FA6CB0(a1, v6, &v17);
  if (v3)
  {
    return sub_1D6FF94C8(&v19, &qword_1EDF2CA68, sub_1D67282D8, &type metadata for FormatCodingAllBorderEdgeStrategy, type metadata accessor for FormatCodingDefault);
  }

  v8 = v17;
  v16 = a1;
  v9 = swift_allocObject();
  v10 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v11 = v10();
  FormatFloat.value(contextLayoutOptions:)(v11);
  v13 = v12;

  *(v9 + 16) = v13;
  v14 = *(v2 + 12);
  v18 = v2[4];
  v15 = v18;
  *a2 = v19;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return sub_1D5BE4148(&v18, &v17, sub_1D6FF9524);
}

void sub_1D6FCBDCC(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext(0);
  v11 = v10();
  v12 = sub_1D5E02AFC(v11, a1);

  if (!v5)
  {
    v27 = a5;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    sub_1D5F3FE24(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7273AE0;
    *(v14 + 32) = v13;
    *(v14 + 40) = 0;
    v15 = v10();
    v16 = sub_1D5E02AFC(v15, a2);

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    *(v18 + 32) = v17;
    *(v18 + 40) = 0;
    v19 = v10();
    v20 = sub_1D5E02AFC(v19, a3);

    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D7273AE0;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;
    v23 = v10();
    v24 = sub_1D5E02AFC(v23, a4);

    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7273AE0;
    *(v26 + 32) = v25;
    *(v26 + 40) = 0;
    *v27 = v14;
    v27[1] = v18;
    v27[2] = v22;
    v27[3] = v26;
  }
}

uint64_t sub_1D6FCC08C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 80);
  v12 = *(v0 + 72);
  v13 = *(v0 + 89);
  v6 = *(v0 + 64);
  v7 = *(v0 + 88);
  swift_beginAccess();
  v14 = *(v0 + 96);
  v8 = swift_allocObject();
  swift_beginAccess();
  *(v8 + 16) = v11;
  *(v8 + 24) = v1;
  *(v8 + 32) = v10;
  *(v8 + 40) = v2;
  *(v8 + 48) = v3;
  *(v8 + 56) = v4;
  *(v8 + 64) = v6;
  *(v8 + 72) = v12;
  *(v8 + 80) = v5;
  *(v8 + 88) = v7;
  *(v8 + 89) = v13;
  swift_beginAccess();
  *(v8 + 96) = v14;

  sub_1D5ED34B0(v3, v4, v6);
  sub_1D5ED34B0(v12, v5, v7);

  return v8;
}

void sub_1D6FCC208(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v120 = a7;
  v121 = a8;
  v118 = a5;
  v119 = a6;
  v128 = a4;
  v134 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v122 = *(v10 - 8);
  v123 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v124 = (&v112 - v12);
  v13 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v112 - v16;
  v18 = sub_1D725A36C();
  v125 = *(v18 - 8);
  v126 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v127 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v13);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v129 = (&v112 - v23);
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v13);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v131 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  KeyPath = &v112 - v29;
  v30 = type metadata accessor for FormatNodeStateData.Data(0);
  v130 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6FF9DCC(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34 - 8, v36);
  v38 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v112 - v41;
  v144 = a1;
  v135 = a2;
  v43 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
  swift_beginAccess();
  v44 = *(v43 + 8);
  if (!*(v44 + 16))
  {
    goto LABEL_8;
  }

  v114 = v17;
  v117 = v42;
  v46 = v147[4];
  v45 = v147[5];

  v47 = sub_1D5B69D90(v46, v45);
  if ((v48 & 1) == 0)
  {

LABEL_8:
    type metadata accessor for FormatLayoutError(0);
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v84 = v147;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  sub_1D6FF9454(*(v44 + 56) + *(v35 + 72) * v47, v38, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  v49 = v117;
  sub_1D6FF9770(v38, v117, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary);

  v50 = v147;
  swift_beginAccess();
  v51 = v50[2];
  v52 = v50[3];

  v53 = sub_1D6E8DD40(v51, v52);
  v115 = v54;
  v116 = v53;

  v56 = v49[5];
  v142 = v49[4];
  v55 = v142;
  v143[0] = v56;
  *(v143 + 9) = *(v49 + 89);
  v57 = *(v143 + 9);
  v58 = v49[1];
  v139[0] = *v49;
  v139[1] = v58;
  v59 = v49[3];
  v140 = v49[2];
  v60 = v140;
  v141 = v59;
  v61 = *(&v59 + 1);
  *v33 = v139[0];
  v33[1] = v58;
  v33[2] = v60;
  v33[3] = v59;
  *(v33 + 89) = v57;
  v33[4] = v55;
  v33[5] = v56;
  swift_storeEnumTagMultiPayload();
  v62 = *(v134 + 24);
  v63 = KeyPath;
  sub_1D5BE4148(v33, KeyPath, type metadata accessor for FormatNodeStateData.Data);
  (*(v130 + 56))(v63, 0, 1, v30);
  v113 = type metadata accessor for FormatNodeStateData.Data;
  v64 = MEMORY[0x1E69E6720];
  v65 = v131;
  sub_1D6FFC87C(v63, v131, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  v66 = v62;
  swift_beginAccess();
  v67 = v115;

  sub_1D62E340C(v139, v136);
  v130 = v61;

  v68 = v65;
  v69 = v116;
  sub_1D6D60A18(v68, v116, v67);
  swift_endAccess();
  sub_1D6FFCA9C(v63, &qword_1EDF2C470, v113, v64, sub_1D5D27F7C);
  v70 = v33;
  v71 = v67;
  sub_1D6FFC9A0(v70, type metadata accessor for FormatNodeStateData.Data);
  v72 = v147;
  v73 = sub_1D62E08C4(v49, v135);
  v74 = v73;
  v75 = *(v66 + 16);
  v76 = v72;
  if (v75)
  {
    v77 = v129;
    *v129 = v73;
    v78 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
    swift_beginAccess();

    sub_1D6D60828(v77, v69, v71);
    swift_endAccess();
  }

  v79 = (*(v74 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v80 = *v79;
  v81 = v79[1];

  v82 = v133;
  sub_1D6FBBCC8(v130, v74, v80, v81);
  if (v82)
  {

    v90 = v49;
  }

  else
  {
    v133 = v83;

    v85 = v49[5];
    v145[4] = v49[4];
    v146[0] = v85;
    *(v146 + 9) = *(v49 + 89);
    v86 = v49[1];
    v145[0] = *v49;
    v145[1] = v86;
    v87 = v49[3];
    v145[2] = v49[2];
    v145[3] = v87;
    v88 = (*(v125 + 104))(v127, *MEMORY[0x1E69D7378], v126);
    MEMORY[0x1EEE9AC00](v88, v89);
    *(&v112 - 6) = v145;
    *(&v112 - 5) = v116;
    v108 = v71;
    v109 = v76;
    v110 = v74;
    v111 = v134;
    sub_1D6FF9128(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
    swift_allocObject();
    v134 = sub_1D725A4EC();
    if (v76[15])
    {
      v92 = v76[19];
      v91 = v76[20];
      v94 = v76[17];
      v93 = v76[18];
      v95 = v76[16];
      v136[0] = v76[15];
      v136[1] = v95;
      v136[2] = v94;
      v136[3] = v93;
      v137 = v92;
      v138 = v91;

      sub_1D5DEA234(v92);

      sub_1D68687FC(v74, v114);
      v96 = v137;

      sub_1D5CBF568(v96);

      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = v124;
    v99 = sub_1D7259B8C();
    (*(*(v99 - 8) + 56))(v114, v97, 1, v99);
    KeyPath = swift_getKeyPath();
    v100 = v147;
    v136[0] = v147[6];
    v101 = v136[0];
    v102 = v115;

    sub_1D5C82CD8(v101);
    sub_1D5BEB9F4(v74, v116, v102, v98);
    v103 = v133;

    sub_1D5C92A8C(v136[0]);
    swift_beginAccess();
    v104 = v100[8];

    v131 = sub_1D618EFB4(v74, v104);

    v105 = swift_allocObject();
    v105[2] = v103;
    v105[3] = v74;
    v105[4] = v135;
    v105[5] = v100;
    v130 = v119(0);
    v106 = v120();

    v110 = v106;
    v108 = v105;
    v109 = v130;
    v107 = v124;
    sub_1D7259AFC();

    (*(v122 + 8))(v107, v123);
    sub_1D6FFCA9C(v114, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    v90 = v117;
  }

  sub_1D6FF94C8(v90, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
}

__n128 sub_1D6FCD138@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 112);
  v50[6] = *(a1 + 96);
  v50[7] = v7;
  v51 = *(a1 + 128);
  v8 = *(a1 + 48);
  v50[2] = *(a1 + 32);
  v50[3] = v8;
  v9 = *(a1 + 80);
  v50[4] = *(a1 + 64);
  v50[5] = v9;
  v10 = *(a1 + 16);
  v50[0] = *a1;
  v50[1] = v10;
  v11 = sub_1D5F78DC4(v50);
  if (!v11)
  {
    v22 = sub_1D5DEA32C(v50);
    sub_1D5F78F40(v22, v31);
    sub_1D5F78F40(v31, &v32);
    v65 = v36;
    v66 = v37;
    v67 = v38;
    v68 = v39;
    v61 = v32;
    v62 = v33;
    v63 = v34;
    v64 = v35;
    result.n128_f64[0] = sub_1D6FD1B60(a2, v30);
    if (v3)
    {
      return result;
    }

    v29[4] = v30[4];
    v29[5] = v30[5];
    v29[6] = v30[6];
    v29[7] = v30[7];
    v29[0] = v30[0];
    v29[1] = v30[1];
    v29[2] = v30[2];
    v29[3] = v30[3];
    nullsub_1();
    sub_1D5F78F40(v29, &v41);
    sub_1D60112A8(&v41);
    v23 = v48;
    *(a3 + 96) = v47;
    *(a3 + 112) = v23;
    *(a3 + 128) = v49;
    v24 = v44;
    *(a3 + 32) = v43;
    *(a3 + 48) = v24;
    v25 = v46;
    *(a3 + 64) = v45;
    *(a3 + 80) = v25;
    v21 = v41;
    result = v42;
    goto LABEL_7;
  }

  if (v11 == 1)
  {
    v12 = sub_1D5DEA32C(v50);
    v13 = *(v12 + 112);
    v58 = *(v12 + 96);
    v59 = v13;
    v60 = *(v12 + 128);
    v14 = *(v12 + 48);
    v54 = *(v12 + 32);
    v55 = v14;
    v15 = *(v12 + 80);
    v56 = *(v12 + 64);
    v57 = v15;
    v16 = *(v12 + 16);
    v52 = *v12;
    v53 = v16;
    result.n128_u64[0] = sub_1D6FC3FA8(a2, &v41).n128_u64[0];
    if (v3)
    {
      return result;
    }

    v38 = v47;
    v39 = v48;
    v40 = v49;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v32 = v41;
    v33 = v42;
    sub_1D6011260(&v32);
    v18 = v39;
    *(a3 + 96) = v38;
    *(a3 + 112) = v18;
    *(a3 + 128) = v40;
    v19 = v35;
    *(a3 + 32) = v34;
    *(a3 + 48) = v19;
    v20 = v37;
    *(a3 + 64) = v36;
    *(a3 + 80) = v20;
    v21 = v32;
    result = v33;
LABEL_7:
    *a3 = v21;
    *(a3 + 16) = result;
    return result;
  }

  sub_1D5DEA32C(v50);
  v26 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v26;
  *(a3 + 128) = *(a1 + 128);
  v27 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v27;
  v28 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v28;
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  return result;
}

void sub_1D6FCD35C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v101 = a7;
  v100 = a6;
  v99 = a5;
  v98 = a4;
  v8 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v103 = v12;
  v102 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v95 - v14);
  v16 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v104 = &v95 - v19;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v16);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v108 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = &v95 - v25;
  v26 = type metadata accessor for FormatNodeStateData.Data(0);
  v105 = *(v26 - 8);
  v106 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v107 = (&v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v16);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = (&v95 - v31);
  v120 = a1;
  swift_beginAccess();
  v33 = v8[2];
  v34 = v8[3];

  v35 = sub_1D6E8DD40(v33, v34);
  v37 = v36;

  v110 = *(a3 + 24);
  if (*(v110 + 16))
  {
    *v32 = a2;
    v38 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v38 - 8) + 56))(v32, 0, 1, v38);
    swift_beginAccess();

    sub_1D6D60828(v32, v35, v37);
    swift_endAccess();
  }

  v111 = v35;
  v113 = v37;
  v39 = (*(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  v42 = v8[10];

  v43 = v42;
  v44 = v112;
  sub_1D6FBC794(v43, a2, v40, v41);
  if (v44)
  {
  }

  else
  {
    v96 = a2;
    v97 = 0;
    v95 = v15;
    v112 = v45;

    if (v112 && (v46 = *(v112 + 56)) != 0)
    {
      v47 = *(v46 + 16);

      v48 = 0;
      while (1)
      {
        if (v47 == v48)
        {

          goto LABEL_13;
        }

        if (v48 >= *(v46 + 16))
        {
          break;
        }

        v49 = *(type metadata accessor for FormatOption(0) - 8);
        v50 = v48 + 1;
        v51 = (v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48);
        v52 = *v51;
        v53 = v51[1];

        v54 = sub_1D7258DCC();
        v55 = [swift_getObjCClassFromMetadata() instancesRespondToSelector_];
        v48 = v50;
        if ((v55 & 1) == 0)
        {

          type metadata accessor for FormatLayoutError(0);
          sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          v56 = v8[5];
          *v57 = v8[4];
          v57[1] = v56;
          v57[2] = v52;
          v57[3] = v53;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
      v58 = v106;
      v59 = v107;
      *v107 = v8[6];
      swift_storeEnumTagMultiPayload();
      v60 = v109;
      sub_1D5BE4148(v59, v109, type metadata accessor for FormatNodeStateData.Data);
      (*(v105 + 56))(v60, 0, 1, v58);
      v61 = MEMORY[0x1E69E6720];
      v62 = v108;
      sub_1D6FFC87C(v60, v108, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      swift_beginAccess();
      v63 = v8;
      v64 = v113;

      v65 = v62;
      v66 = v63;
      sub_1D6D60A18(v65, v111, v64);
      swift_endAccess();
      sub_1D6FFCA9C(v60, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v61, sub_1D5D27F7C);
      sub_1D6FFC9A0(v59, type metadata accessor for FormatNodeStateData.Data);
      v67 = *v39;
      v68 = v39[1];
      v69 = v63[11];

      v70 = v69;
      v71 = v96;
      v72 = v97;
      sub_1D6FBAE48(v70, v96, v67, v68);
      if (v72)
      {

LABEL_15:
      }

      else
      {
        v74 = v73;

        if (v74)
        {

          sub_1D6A45640(v71);
          v76 = v111;
          v77 = v64;
          v79 = v75;
          v78 = v66;

          if (v79)
          {
            swift_beginAccess();

            sub_1D6D60C08(v79, v76, v77);
            swift_endAccess();
          }
        }

        else
        {
          v76 = v111;
          v77 = v64;
          v78 = v66;
        }

        if (v78[15])
        {
          v81 = v78[19];
          v80 = v78[20];
          v83 = v78[17];
          v82 = v78[18];
          v84 = v78[16];
          v114 = v78[15];
          v115 = v84;
          v116 = v83;
          v117 = v82;
          v118 = v81;
          v119 = v80;

          sub_1D5DEA234(v81);

          v85 = v104;
          v86 = v71;
          sub_1D68687FC(v71, v104);
          v87 = v118;
          v110 = v119;

          sub_1D5CBF568(v87);

          v88 = 0;
          v71 = v86;
          v77 = v113;
          v76 = v111;
        }

        else
        {
          v88 = 1;
          v85 = v104;
        }

        v89 = sub_1D7259B8C();
        (*(*(v89 - 8) + 56))(v85, v88, 1, v89);
        swift_getKeyPath();
        v114 = v78[7];
        v90 = v114;

        sub_1D5C82CD8(v90);
        sub_1D5BEB9F4(v71, v76, v77, v95);
        sub_1D5C92A8C(v114);
        swift_beginAccess();
        v91 = v78[9];

        v111 = sub_1D618EFB4(v71, v91);

        v92 = swift_allocObject();
        v92[2] = v76;
        v92[3] = v77;
        v92[4] = v71;
        v92[5] = v78;
        v113 = v74;
        v92[6] = v112;
        v99(0);
        v100();

        v93 = v104;
        v94 = v95;
        sub_1D7259B1C();

        (*(v102 + 8))(v94, v103);
        sub_1D6FFCA9C(v93, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      }
    }
  }
}

void sub_1D6FCE0B4(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = v1[3];
  v39 = v1[2];
  v7 = v1[5];
  v31 = v1[4];
  v8 = swift_beginAccess();
  v10 = v1[6];
  v11 = *(v3 + 9);
  v12 = *(v3 + 13);
  v36 = *(v3 + 11);
  v37 = v12;
  v38 = *(v3 + 120);
  v34 = *(v3 + 7);
  v35 = v11;
  v13 = v3[16];
  if (v13)
  {
    v30 = v5;
    v32[0] = a1;
    MEMORY[0x1EEE9AC00](v8, v9);
    v26[2] = v32;

    sub_1D6FF924C(&v34, v33, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    sub_1D5EC9CB8(sub_1D6FFCC1C, v26, v13);
    if (v2)
    {
      sub_1D5D0AC3C(&v34, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);

      return;
    }

    v13 = v14;
  }

  else
  {

    sub_1D6FF924C(&v34, v33, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  }

  v15 = v3[17];
  v16 = *(v3 + 36);
  LODWORD(v30) = *(v3 + 37);
  v17 = v3[19];
  v18 = v3[20];
  v19 = v3[21];
  v20 = *(v3 + 11);
  v28 = *(v3 + 12);
  v29 = v20;
  v27 = v3[26];
  v21 = *(v3 + 216);
  if (v21 != 254)
  {
    sub_1D5FA6CB0(a1, v19, v33);
    if (v2)
    {
      sub_1D5D0AC3C(&v34, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);

      return;
    }

    v19 = v33[0];
  }

  v22 = swift_allocObject();
  swift_beginAccess();
  *(v22 + 16) = v39;
  *(v22 + 24) = v6;
  *(v22 + 32) = v31;
  *(v22 + 40) = v7;
  swift_beginAccess();
  v23 = v34;
  *(v22 + 72) = v35;
  v24 = v37;
  *(v22 + 88) = v36;
  *(v22 + 104) = v24;
  *(v22 + 48) = v10;
  *(v22 + 120) = v38;
  *(v22 + 56) = v23;
  *(v22 + 128) = v13;
  *(v22 + 136) = v15;
  *(v22 + 144) = v16;
  *(v22 + 148) = v30;
  *(v22 + 152) = v17;
  *(v22 + 160) = v18;
  *(v22 + 168) = v19;
  v25 = v28;
  *(v22 + 176) = v29;
  *(v22 + 192) = v25;
  *(v22 + 208) = v27;
  *(v22 + 216) = v21;
}

__n128 sub_1D6FCE428@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v16[0] = a1;
  v14[2] = v16;
  v6 = sub_1D5EC9E90(sub_1D6FFCBEC, v14, v5);
  if (!v3)
  {
    v8 = v6;
    v17 = *(v2 + 8);
    v10 = *(v2 + 48);
    v9 = *(v2 + 56);
    sub_1D6FFC87C(&v17, v15, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
    if (v10)
    {
      sub_1D6FCAC74(v10, v9, v16);
      v11 = v16[0];
      v9 = v16[1];
    }

    else
    {
      v11 = 0;
    }

    v12 = v17;
    *a2 = v8;
    *(a2 + 8) = v12;
    result = *(v2 + 16);
    v13 = *(v2 + 32);
    *(a2 + 16) = result;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
    *(a2 + 56) = v9;
  }

  return result;
}

__n128 sub_1D6FCE58C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v14[2] = a1;
  v6 = sub_1D5EC9E90(sub_1D6FFCA7C, v14, v5);
  if (!v3)
  {
    v8 = v6;
    v17 = *(v2 + 8);
    v10 = *(v2 + 48);
    v9 = *(v2 + 56);
    sub_1D6FFC87C(&v17, v15, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
    if (v10)
    {
      sub_1D6FD5540(v10, v9, v16);
      v11 = v16[0];
      v9 = v16[1];
    }

    else
    {
      v11 = 0;
    }

    v12 = v17;
    *a2 = v8;
    *(a2 + 8) = v12;
    result = *(v2 + 16);
    v13 = *(v2 + 32);
    *(a2 + 16) = result;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
    *(a2 + 56) = v9;
  }

  return result;
}

void sub_1D6FCE6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v77 = a6;
  v78 = a7;
  v75[1] = a4;
  v76 = a5;
  v8 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v79 = *(v12 - 8);
  v80 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v81 = (v75 - v14);
  v15 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v88 = v75 - v18;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v15);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v85 = v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v86 = v75 - v24;
  v25 = type metadata accessor for FormatNodeStateData.Data(0);
  v82 = *(v25 - 8);
  v83 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v84 = (v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v15);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (v75 - v30);
  v96 = a1;
  swift_beginAccess();

  v89 = a2;
  v33 = sub_1D6B0ACE8(v32, 0);

  swift_beginAccess();
  v34 = *(v8 + 16);
  v35 = *(v8 + 24);

  v36 = sub_1D6E8DD40(v34, v35);
  v38 = v37;

  if (*(*(a3 + 24) + 16))
  {
    *v31 = v33;
    v39 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    swift_beginAccess();

    sub_1D6D60828(v31, v36, v38);
    swift_endAccess();
  }

  v87 = v36;
  v102 = v38;
  v40 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
  swift_beginAccess();
  v41 = *(v40 + 8);
  swift_beginAccess();
  v42 = *(v8 + 112);
  v101[0] = *(v8 + 96);
  v101[1] = v42;
  v43 = *(v8 + 144);
  v101[2] = *(v8 + 128);
  v101[3] = v43;

  sub_1D6FF924C(v101, v91, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);
  v44 = v90;
  sub_1D6FBEAE8(v101, v41, &v92);
  if (v44)
  {

    sub_1D5D0AC3C(v101, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);

    return;
  }

  sub_1D5D0AC3C(v101, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);

  v97 = v92;
  v98 = v93;
  v99 = v94;
  v100 = v95;
  v45 = *(v8 + 80);
  type metadata accessor for FormatWebEmbedDataConfig(0);
  swift_allocObject();

  v47 = sub_1D71BCFB0(v46, v45);
  *&v92 = *(v8 + 72);

  sub_1D725569C(v33, v47);
  v89 = v47;
  v90 = 0;
  v49 = v48;

  v50 = v83;
  v51 = v84;
  *v84 = v49;
  swift_storeEnumTagMultiPayload();
  v52 = v86;
  sub_1D5BE4148(v51, v86, type metadata accessor for FormatNodeStateData.Data);
  (*(v82 + 7))(v52, 0, 1, v50);
  v82 = type metadata accessor for FormatNodeStateData.Data;
  v75[0] = MEMORY[0x1E69E6720];
  v53 = v85;
  sub_1D6FFC87C(v52, v85, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  v54 = v102;

  v83 = v49;

  v55 = v87;
  sub_1D6D60A18(v53, v87, v54);
  swift_endAccess();
  sub_1D6FFCA9C(v52, &qword_1EDF2C470, v82, v75[0], sub_1D5D27F7C);
  sub_1D6FFC9A0(v51, type metadata accessor for FormatNodeStateData.Data);
  if (*(v8 + 224))
  {
    v57 = *(v8 + 256);
    v56 = *(v8 + 264);
    v59 = *(v8 + 240);
    v58 = *(v8 + 248);
    v60 = *(v8 + 232);
    *&v92 = *(v8 + 224);
    *(&v92 + 1) = v60;
    *&v93 = v59;
    *(&v93 + 1) = v58;
    *&v94 = v57;
    *(&v94 + 1) = v56;

    sub_1D5DEA234(v57);

    v61 = v90;
    sub_1D68687FC(v33, v88);
    v90 = v61;
    if (v61)
    {
      sub_1D5D0AC3C(&v97, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);

      v62 = v94;

      sub_1D5CBF568(v62);

      return;
    }

    v65 = v94;

    sub_1D5CBF568(v65);
    v63 = v88;

    v64 = 0;
    v54 = v102;
  }

  else
  {
    v63 = v88;
    v64 = 1;
  }

  v66 = sub_1D7259B8C();
  (*(*(v66 - 8) + 56))(v63, v64, 1, v66);
  KeyPath = swift_getKeyPath();
  swift_beginAccess();
  v91[0] = *(v8 + 48);
  v68 = v91[0];

  sub_1D5C82CD8(v68);
  v69 = v90;
  sub_1D5BEB9F4(v33, v55, v54, v81);
  if (v69)
  {
    sub_1D6FFCA9C(v63, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    sub_1D5D0AC3C(&v97, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);

    swift_bridgeObjectRelease_n();

    sub_1D5C92A8C(v91[0]);
  }

  else
  {
    sub_1D5C92A8C(v91[0]);
    swift_beginAccess();
    v70 = *(v8 + 64);

    v90 = sub_1D618EFB4(v33, v70);

    v71 = swift_allocObject();
    v72 = v102;
    *(v71 + 16) = v87;
    *(v71 + 24) = v72;
    *(v71 + 32) = v33;
    *(v71 + 40) = v8;
    v73 = v98;
    *(v71 + 48) = v97;
    *(v71 + 64) = v73;
    v74 = v100;
    *(v71 + 80) = v99;
    *(v71 + 96) = v74;
    v88 = KeyPath;
    *(v71 + 112) = v83;
    v76(0);
    v77();

    sub_1D7259B1C();

    (*(v79 + 8))(v81, v80);
    sub_1D6FFCA9C(v63, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

uint64_t sub_1D6FCF388(uint64_t a1)
{
  v3 = v1;
  v44 = *v1;
  swift_beginAccess();
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[5];
  v45 = v1[4];
  v46 = v5;
  swift_beginAccess();
  v8 = v1[6];
  v9 = *(v3 + 56);
  if (v9)
  {
    v48[0] = a1;
    v43 = a1;
    v10 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);

    v49 = v7;
    v11 = v10();
    v12 = sub_1D5E02AFC(v11, v9);
    if (v2)
    {

LABEL_19:

      return v3;
    }

    v16 = v12;
    v47 = v8;

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    sub_1D5F3FE24(0);
    v13 = swift_allocObject();
    v15 = v13;
    *(v13 + 16) = xmmword_1D7273AE0;
    *(v13 + 32) = v17;
    *(v13 + 40) = 0;
    v7 = v49;
    a1 = v43;
  }

  else
  {

    v47 = v8;

    v15 = 0;
  }

  v18 = *(v3 + 64);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    sub_1D6FCF804(a1, *(v3 + 64), v48);
    if (v2)
    {

      goto LABEL_19;
    }

    v18 = v48[0];
  }

  if (!*(v3 + 72))
  {
    v42 = v15;
    v20 = 0;
    goto LABEL_15;
  }

  v48[0] = a1;
  MEMORY[0x1EEE9AC00](v13, v14);
  v36[2] = v48;
  sub_1D5EC9CB8(sub_1D6FFCC1C, v36, v19);
  if (!v2)
  {
    v42 = v15;
LABEL_15:
    v49 = v20;
    v21 = *(v3 + 80);
    v22 = *(v3 + 88);
    v23 = *(v3 + 96);
    v24 = *(v3 + 104);
    v25 = *(v3 + 112);
    v41 = *(v3 + 116);
    v26 = *(v3 + 120);
    v27 = *(v3 + 128);
    v28 = *(v3 + 136);
    v29 = *(v3 + 144);
    v39 = *(v3 + 160);
    v40 = v29;
    v38 = *(v3 + 176);
    v37 = *(v3 + 184);
    v43 = v21;
    if (v37 == 254)
    {
      sub_1D5ED34B0(v21, v22, v23);
    }

    else
    {
      sub_1D5ED34B0(v21, v22, v23);
      sub_1D5FA6CB0(a1, v28, v48);
      if (v2)
      {

        sub_1D5C8500C(v18);
        sub_1D5ED348C(v43, v22, v23);
        goto LABEL_19;
      }

      v28 = v48[0];
    }

    v31 = *(v3 + 185);
    v3 = swift_allocObject();
    swift_beginAccess();
    v32 = v45;
    *(v3 + 16) = v46;
    *(v3 + 24) = v6;
    *(v3 + 32) = v32;
    *(v3 + 40) = v7;
    swift_beginAccess();
    v33 = v42;
    *(v3 + 48) = v47;
    *(v3 + 56) = v33;
    v34 = v49;
    *(v3 + 64) = v18;
    *(v3 + 72) = v34;
    *(v3 + 80) = v43;
    *(v3 + 88) = v22;
    *(v3 + 96) = v23;
    *(v3 + 104) = v24;
    *(v3 + 112) = v25;
    *(v3 + 116) = v41;
    *(v3 + 120) = v26;
    *(v3 + 128) = v27;
    *(v3 + 136) = v28;
    v35 = v39;
    *(v3 + 144) = v40;
    *(v3 + 160) = v35;
    *(v3 + 176) = v38;
    *(v3 + 184) = v37;
    *(v3 + 185) = v31;
    return v3;
  }

  sub_1D5C8500C(v18);
  return v3;
}

void sub_1D6FCF804(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a2 >> 61;
  if ((a2 >> 61) > 3)
  {
    if (v6 > 5)
    {
      if (v6 != 6)
      {
        *a3 = a2;

        return;
      }

      v22 = a2 & 0x1FFFFFFFFFFFFFFFLL;
      v23 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      *&v56[96] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      *&v56[112] = v23;
      *&v56[128] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
      v56[144] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
      v24 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      *&v56[32] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      *&v56[48] = v24;
      v25 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      *&v56[64] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      *&v56[80] = v25;
      v26 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      *v56 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v56[16] = v26;
      v27 = swift_allocObject();
      v28 = *v56;
      v29 = *(v22 + 120);
      v80 = *(v22 + 104);
      v81 = v29;
      v82[0] = *(v22 + 136);
      *(v82 + 9) = *(v22 + 145);
      v30 = *(v22 + 56);
      v76 = *(v22 + 40);
      v77 = v30;
      v31 = *(v22 + 88);
      v78 = *(v22 + 72);
      v79 = v31;
      v75 = *(v22 + 24);
      if (sub_1D60486AC(&v75) == 1)
      {
        v73 = *&v56[104];
        v74[0] = *&v56[120];
        *(v74 + 9) = *&v56[129];
        v69 = *&v56[40];
        v70 = *&v56[56];
        v71 = *&v56[72];
        v72 = *&v56[88];
        v67 = *&v56[8];
        v68 = *&v56[24];
      }

      else
      {
        v85[8] = v81;
        v86[0] = v82[0];
        *(v86 + 9) = *(v82 + 9);
        v85[4] = v77;
        v85[5] = v78;
        v85[6] = v79;
        v85[7] = v80;
        v85[2] = v75;
        v85[3] = v76;
        sub_1D62B4EA4(v56, &v57);

        sub_1D6FD0CD0(a1, v65);
        if (v3)
        {
          sub_1D62B4F00(v56);

          goto LABEL_22;
        }

        sub_1D62B4F00(v56);
        v63 = v65[6];
        v64[0] = v66[0];
        *(v64 + 9) = *(v66 + 9);
        v59 = v65[2];
        v60 = v65[3];
        v61 = v65[4];
        v62 = v65[5];
        v57 = v65[0];
        v58 = v65[1];
        nullsub_1();
        v73 = v63;
        v74[0] = v64[0];
        *(v74 + 9) = *(v64 + 9);
        v69 = v59;
        v70 = v60;
        v71 = v61;
        v72 = v62;
        v67 = v57;
        v68 = v58;
      }

      v51 = v71;
      *(v27 + 104) = v72;
      v52 = v74[0];
      *(v27 + 120) = v73;
      *(v27 + 136) = v52;
      *(v27 + 145) = *(v74 + 9);
      v53 = v67;
      *(v27 + 40) = v68;
      v54 = v70;
      *(v27 + 56) = v69;
      *(v27 + 72) = v54;
      *(v27 + 88) = v51;
      *(v27 + 16) = v28;
      *(v27 + 24) = v53;
      v41 = v27 | 0xC000000000000000;
    }

    else if (v6 == 4)
    {
      v9 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
      v84[7] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v84[8] = v9;
      v85[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
      *(v85 + 9) = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v84[3] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v84[4] = v10;
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v84[5] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v84[6] = v11;
      v12 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v84[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v84[1] = v12;
      v84[2] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v13 = swift_allocObject();
      sub_1D62B4F54(v84, v56);
      sub_1D6FCA5C4(a1, (v13 + 16));
      if (v3)
      {
        sub_1D62B4FB0(v84);
        goto LABEL_22;
      }

      sub_1D62B4FB0(v84);
      v41 = v13 | 0x8000000000000000;
    }

    else
    {
      v36 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v37 = swift_allocObject();
      if (v35)
      {
        swift_retain_n();

        v38 = sub_1D6FD2904(a1);
        if (v3)
        {

          goto LABEL_22;
        }

        v50 = v38;
      }

      else
      {

        v50 = 0;
      }

      *(v37 + 16) = v36;
      *(v37 + 24) = v50;
      v41 = v37 | 0xA000000000000000;
    }
  }

  else if (v6 > 1)
  {
    if (v6 == 2)
    {
      v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      *&v56[64] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      *&v56[80] = v14;
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      *&v56[96] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      *&v56[112] = v15;
      v16 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      *v56 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v56[16] = v16;
      v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      *&v56[32] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      *&v56[48] = v17;
      v18 = swift_allocObject();
      v19 = *&v56[112];
      *&v75 = a1;
      MEMORY[0x1EEE9AC00](v18, v20);
      v55[2] = &v75;
      sub_1D60865E4(v56, &v57);
      v21 = sub_1D5EC9E90(sub_1D6FFCBEC, v55, v19);
      if (v3)
      {
        sub_1D6086640(v56);
        goto LABEL_22;
      }

      v42 = v56[48];
      v43 = v56[104];
      v44 = *&v56[120];
      v45 = *&v56[56];
      v46 = *&v56[72];
      v47 = *&v56[88];
      v48 = *&v56[16];
      v49 = *&v56[32];
      *(v18 + 16) = *v56;
      *(v18 + 32) = v48;
      *(v18 + 48) = v49;
      *(v18 + 64) = v42;
      *(v18 + 72) = v45;
      *(v18 + 88) = v46;
      *(v18 + 104) = v47;
      *(v18 + 120) = v43;
      *(v18 + 128) = v21;
      *(v18 + 136) = v44;

      sub_1D6086640(v56);
      v41 = v18 | 0x4000000000000000;
    }

    else
    {
      v39 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v40 = swift_allocObject();
      sub_1D6086744(v39);
      sub_1D6FD6FB8(a1, v39, (v40 + 16));
      sub_1D6086768(v39);
      if (v3)
      {
        goto LABEL_22;
      }

      v41 = v40 | 0x6000000000000000;
    }
  }

  else
  {
    if (!v6)
    {
      v7 = *(a2 + 16);
      v8 = swift_allocObject();

      sub_1D5FA6CB0(a1, v7, (v8 + 16));

      if (!v3)
      {
        *a3 = v8;
        return;
      }

      goto LABEL_22;
    }

    v32 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v83[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v83[1] = v32;
    v33 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    v83[2] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v83[3] = v33;
    v34 = swift_allocObject();
    sub_1D6086694(v83, v56);
    sub_1D6FCE428(a1, v34 + 16);
    sub_1D60866F0(v83);
    if (v3)
    {
LABEL_22:
      swift_deallocUninitializedObject();
      return;
    }

    v41 = v34 | 0x2000000000000000;
  }

  *a3 = v41;
}

uint64_t sub_1D6FCFE2C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v86 = *v1;
  swift_beginAccess();
  v6 = v1[2];
  v7 = v1[3];
  v88 = v6;
  v8 = v4[5];
  v87 = v4[4];
  swift_beginAccess();
  v9 = v4[6];
  v10 = v4[7];
  if (!v10)
  {

    v14 = v9;

    v17 = 0;
    goto LABEL_6;
  }

  *&v94 = a1;
  v89 = a1;
  v11 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);

  v100 = v8;
  v8 = v7;
  v12 = v11();
  v13 = sub_1D5E02AFC(v12, v10);
  v3 = v2;
  if (!v2)
  {
    v18 = v13;
    v14 = v9;

    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    sub_1D5F3FE24(0);
    v15 = swift_allocObject();
    v17 = v15;
    *(v15 + 16) = xmmword_1D7273AE0;
    *(v15 + 32) = v19;
    *(v15 + 40) = 0;
    v7 = v8;
    a1 = v89;
    v8 = v100;
LABEL_6:
    v20 = v4[8];
    if ((~v20 & 0xF000000000000007) != 0)
    {
      sub_1D6FCF804(a1, v4[8], &v94);
      if (v3)
      {

        return v8;
      }

      v20 = v94;
    }

    v84 = v7;
    if (v4[9])
    {
      *&v94 = a1;
      MEMORY[0x1EEE9AC00](v15, v16);
      v71 = &v94;
      sub_1D5EC9CB8(sub_1D6FFCC1C, v70, v21);
      if (v3)
      {

        sub_1D5C8500C(v20);
        return v8;
      }

      v89 = a1;
      v81 = v20;
      v82 = v17;
      v85 = 0;
      v100 = v8;
      v83 = v14;
    }

    else
    {
      v89 = a1;
      v81 = v20;
      v82 = v17;
      v85 = v3;
      v100 = v8;
      v83 = v14;
      v22 = 0;
    }

    v80 = v22;
    v24 = v4[10];
    v23 = v4[11];
    v25 = *(v4 + 96);
    v26 = v4[13];
    v27 = *(v4 + 28);
    v29 = v4[15];
    v28 = v4[16];
    v8 = v4[18];
    v79 = v4[17];
    v30 = v4[19];
    v31 = v4[20];
    v33 = v4[21];
    v32 = v4[22];
    if (*(v4 + 184) == 254)
    {
      DWORD2(v75) = *(v4 + 29);
      v77 = v24;
      v78 = v23;
      v76 = v25;
      v34 = sub_1D5ED34B0(v24, v23, v25);
      *&v94 = v26;
      *(&v94 + 1) = __PAIR64__(DWORD2(v75), v27);
      *&v95 = v29;
      *(&v95 + 1) = v28;
      *&v96 = v79;
      *(&v96 + 1) = v8;
      *&v97 = v30;
      *(&v97 + 1) = v31;
      *&v98 = v33;
      *(&v98 + 1) = v32;
      v36 = -2;
    }

    else
    {
      HIDWORD(v72) = *(v4 + 184);
      v73 = v8;
      *&v74 = v30;
      *(&v74 + 1) = v31;
      *&v75 = v33;
      *(&v75 + 1) = v32;
      sub_1D5ED34B0(v24, v23, v25);
      v37 = v85;
      sub_1D5FA6CB0(v89, v79, &v91);
      v85 = v37;
      if (v37)
      {

        sub_1D5C8500C(v81);
        sub_1D5ED348C(v24, v23, v25);

        return v8;
      }

      v76 = v25;
      v77 = v24;
      v78 = v23;
      *&v94 = v26;
      DWORD2(v94) = v27;
      *&v95 = v29;
      *(&v95 + 1) = v28;
      *&v96 = v91;
      *(&v96 + 1) = v73;
      v97 = v74;
      v98 = v75;
      v36 = BYTE4(v72);
    }

    v99 = v36;
    v38 = v4[24];
    v8 = v4[25];
    v39 = *(v4 + 208);
    v40 = v83;
    v41 = v100;
    if (v39 == 255)
    {
      v46 = 255;
    }

    else
    {
      v90[0] = v89;
      v91 = v38;
      v92 = v8;
      v93 = v39 & 1;
      v42 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v43 = v42();
      v44 = v85;
      v45 = FormatBoolean.value(contextLayoutOptions:)(v43);
      if (v44)
      {

        sub_1D5C8500C(v81);
        sub_1D5ED348C(v77, v78, v76);

        sub_1D5D0AC3C(&v94, &qword_1EDF33718, &type metadata for FormatShadow);

        return v8;
      }

      v47 = v45;
      v85 = 0;

      v8 = 0;
      v46 = 0;
      v38 = v47 & 1;
    }

    v48 = v4[27];
    v49 = v4[28];
    v50 = *(v4 + 232);
    if (v50 == 255)
    {
      *(&v75 + 1) = v38;
      LODWORD(v75) = 255;
      v55 = v85;
      v56 = v82;
    }

    else
    {
      LODWORD(v79) = v46;
      v90[0] = v89;
      v91 = v48;
      v92 = v49;
      v93 = v50 & 1;
      v51 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v52 = v51();
      v53 = v85;
      v54 = FormatBoolean.value(contextLayoutOptions:)(v52);
      v55 = v53;
      if (v53)
      {

        sub_1D5C8500C(v81);
        sub_1D5ED348C(v77, v78, v76);

        sub_1D5D0AC3C(&v94, &qword_1EDF33718, &type metadata for FormatShadow);
        sub_1D60107F0(v38, v8, v79);

        return v8;
      }

      v57 = v54;
      *(&v75 + 1) = v38;

      v49 = 0;
      LODWORD(v75) = 0;
      v48 = v57 & 1;
      v56 = v82;
      LOBYTE(v46) = v79;
    }

    LODWORD(v85) = *(v4 + 233);
    if (v4[30])
    {
      v82 = &v72;
      v91 = v89;
      MEMORY[0x1EEE9AC00](v34, v35);
      v71 = &v91;
      v59 = sub_1D5ECA3A4(sub_1D6FF9B84, v70, v58);
      if (v55)
      {

        sub_1D5C8500C(v81);
        sub_1D5ED348C(v77, v78, v76);

        sub_1D5D0AC3C(&v94, &qword_1EDF33718, &type metadata for FormatShadow);
        sub_1D60107F0(*(&v75 + 1), v8, v46);
        sub_1D60107F0(v48, v49, v75);
        return v8;
      }

      v63 = v59;
      v89 = v49;
      v61 = v46;
      v62 = v8;
    }

    else
    {
      v89 = v49;
      v61 = v46;
      v62 = v8;
      v63 = 0;
    }

    v8 = swift_allocObject();
    swift_beginAccess();
    v64 = v97;
    *(v8 + 136) = v96;
    *(v8 + 152) = v64;
    *(v8 + 168) = v98;
    v65 = v95;
    *(v8 + 104) = v94;
    v66 = v84;
    *(v8 + 16) = v88;
    *(v8 + 24) = v66;
    *(v8 + 32) = v87;
    *(v8 + 40) = v41;
    v67 = v77;
    *(v8 + 72) = v80;
    *(v8 + 80) = v67;
    *(v8 + 88) = v78;
    *(v8 + 96) = v76;
    *(v8 + 184) = v99;
    *(v8 + 120) = v65;
    v68 = v81;
    *(v8 + 56) = v56;
    *(v8 + 64) = v68;
    swift_beginAccess();
    *(v8 + 48) = v40;
    *(v8 + 192) = *(&v75 + 1);
    *(v8 + 200) = v62;
    *(v8 + 208) = v61;
    v69 = v89;
    *(v8 + 216) = v48;
    *(v8 + 224) = v69;
    *(v8 + 232) = v75;
    *(v8 + 233) = v85;
    *(v8 + 240) = v63;
    return v8;
  }

  return v8;
}

void sub_1D6FD0868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v45 = a6;
  v46 = a7;
  v42[2] = a4;
  v43 = a5;
  v9 = v8;
  v10 = v7;
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v42 - v17;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (v42 - v21);
  v53 = a1;
  swift_beginAccess();
  v23 = v10[2];
  v24 = v10[3];

  v25 = sub_1D6E8DD40(v23, v24);
  v27 = v26;

  v44 = a3;
  v28 = *(a3 + 24);
  v29 = v25;
  if (*(v28 + 16))
  {
    *v22 = a2;
    v30 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v30 - 8) + 56))(v22, 0, 1, v30);
    swift_beginAccess();

    sub_1D6D60828(v22, v29, v27);
    swift_endAccess();
  }

  v42[1] = v29;
  if (v10[6])
  {
    v32 = v10[10];
    v31 = v10[11];
    v34 = v10[8];
    v33 = v10[9];
    v35 = v10[7];
    v47 = v10[6];
    v48 = v35;
    v49 = v34;
    v50 = v33;
    v51 = v32;
    v52 = v31;

    sub_1D5DEA234(v32);

    sub_1D68687FC(a2, v18);
    if (v9)
    {

      v36 = v51;

      sub_1D5CBF568(v36);

      return;
    }

    v42[0] = 0;
    v38 = v51;

    sub_1D5CBF568(v38);

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v39 = sub_1D7259B8C();
  (*(*(v39 - 8) + 56))(v18, v37, 1, v39);
  swift_unownedRetainStrong();

  swift_unownedRetain();

  v40 = swift_allocObject();
  v40[2] = a2;
  v40[3] = v10;
  v41 = v43;
  v40[4] = v44;
  v41(0);
  v45();

  sub_1D7259ACC();

  sub_1D6FFCA9C(v18, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
}

void sub_1D6FD0CD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *v2;
  if (*v2)
  {
    v81 = a1;
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v8 = v7();
    v9 = sub_1D5E02AFC(v8, v6);
    if (v3)
    {
LABEL_3:

      return;
    }

    v10 = v9;

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    sub_1D5F3FE24(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D7273AE0;
    *(v6 + 32) = v11;
    *(v6 + 40) = 0;
  }

  v12 = v4[1];
  if (v12)
  {
    v81 = a1;
    v13 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v14 = v13();
    v15 = sub_1D5E02AFC(v14, v12);
    if (v3)
    {

      return;
    }

    v20 = v15;

    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    sub_1D5F3FE24(0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D7273AE0;
    *(v22 + 32) = v21;
    v79 = v22;
    *(v22 + 40) = 0;
    v16 = v4[2];
    if (!v16)
    {
LABEL_12:
      v78 = 0;
      v23 = v4[3];
      if (v23)
      {
        goto LABEL_13;
      }

LABEL_16:
      v77 = 0;
      v30 = v4[5];
      if (!v30)
      {
        goto LABEL_20;
      }

LABEL_17:
      v81 = a1;
      v31 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v32 = v31();
      v33 = sub_1D5E02AFC(v32, v30);
      if (v3)
      {

        return;
      }

      v41 = v33;

      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      sub_1D5F3FE24(0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1D7273AE0;
      *(v43 + 32) = v42;
      v76 = v43;
      *(v43 + 40) = 0;
      v37 = v4[6];
      if (v37)
      {
        goto LABEL_21;
      }

LABEL_24:
      v44 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v79 = 0;
    v16 = v4[2];
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v81 = a1;
  v17 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v18 = v17();
  v19 = sub_1D5E02AFC(v18, v16);
  if (v3)
  {

    return;
  }

  v27 = v19;

  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  sub_1D5F3FE24(0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D7273AE0;
  *(v29 + 32) = v28;
  v78 = v29;
  *(v29 + 40) = 0;
  v23 = v4[3];
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_13:
  v81 = a1;
  v24 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v25 = v24();
  v26 = sub_1D5E02AFC(v25, v23);
  if (v3)
  {

    return;
  }

  v34 = v26;

  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  sub_1D5F3FE24(0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D7273AE0;
  *(v36 + 32) = v35;
  v77 = v36;
  *(v36 + 40) = 0;
  v30 = v4[5];
  if (v30)
  {
    goto LABEL_17;
  }

LABEL_20:
  v76 = 0;
  v37 = v4[6];
  if (!v37)
  {
    goto LABEL_24;
  }

LABEL_21:
  v81 = a1;
  v38 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v39 = v38();
  v40 = sub_1D5E02AFC(v39, v37);
  if (v3)
  {

    return;
  }

  v45 = v40;

  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  sub_1D5F3FE24(0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1D7273AE0;
  *(v44 + 32) = v46;
  *(v44 + 40) = 0;
LABEL_26:
  v47 = v4[7];
  v48 = v4[8];
  v49 = *(v4 + 72);
  if (v49 == 255)
  {
    v53 = -1;
  }

  else
  {
    v74 = v44;
    v85 = a1;
    v81 = v47;
    v82 = v48;
    LOBYTE(v83) = v49 & 1;
    v50 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v51 = v50();
    v52 = FormatBoolean.value(contextLayoutOptions:)(v51);
    if (v3)
    {

      return;
    }

    v54 = v52;

    v48 = 0;
    v53 = 0;
    v47 = v54 & 1;
    v44 = v74;
  }

  v55 = v4[10];
  v56 = v4[11];
  v57 = v4[12];
  v58 = v4[13];
  v59 = *(v4 + 112);
  if (v59 == 255)
  {
    v60 = -1;
  }

  else if (v59)
  {
    sub_1D6FD8AD0(v55, v56, v57, v58, &v81);
    if (v3)
    {

      sub_1D60107F0(v47, v48, v53);
      return;
    }

    v55 = v81;
    v56 = v82;
    v60 = 1;
    v57 = v83;
    v58 = v84;
  }

  else
  {
    v60 = 0;
  }

  v62 = v4[15];
  v61 = v4[16];
  v63 = *(v4 + 136);
  if (v63 != 255)
  {
    v69 = v60;
    v70 = v58;
    v71 = v57;
    v72 = v56;
    v73 = v55;
    v75 = v47;
    v85 = a1;
    v81 = v62;
    v82 = v61;
    LOBYTE(v83) = v63 & 1;
    v64 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v65 = v64();
    v66 = FormatBoolean.value(contextLayoutOptions:)(v65);
    if (v3)
    {

      sub_1D60107F0(v47, v48, v53);
      sub_1D62B4B50(v73, v72, v71, v70, v69);
      goto LABEL_3;
    }

    v67 = v66;

    v61 = 0;
    LOBYTE(v63) = 0;
    v62 = v67 & 1;
    v47 = v75;
    v56 = v72;
    v55 = v73;
    v58 = v70;
    v57 = v71;
    v60 = v69;
  }

  v68 = *(v4 + 32);
  *a2 = v6;
  *(a2 + 8) = v79;
  *(a2 + 16) = v78;
  *(a2 + 24) = v77;
  *(a2 + 32) = v68;
  *(a2 + 40) = v76;
  *(a2 + 48) = v44;
  *(a2 + 56) = v47;
  *(a2 + 64) = v48;
  *(a2 + 72) = v53;
  *(a2 + 80) = v55;
  *(a2 + 88) = v56;
  *(a2 + 96) = v57;
  *(a2 + 104) = v58;
  *(a2 + 112) = v60;
  *(a2 + 120) = v62;
  *(a2 + 128) = v61;
  *(a2 + 136) = v63;
}

void sub_1D6FD1458(uint64_t a1@<X8>)
{
  v4 = *v1;
  if (*v1)
  {
    v5 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext(0);
    v6 = v5();
    v7 = sub_1D5E02AFC(v6, v4);
    if (v2)
    {

      return;
    }

    v8 = v7;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    sub_1D5F3FE24(0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D7273AE0;
    *(v4 + 32) = v9;
    *(v4 + 40) = 0;
  }

  v10 = *(v1 + 8);
  if (v10)
  {
    v11 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext(0);
    v12 = v11();
    v13 = sub_1D5E02AFC(v12, v10);
    if (v2)
    {

      return;
    }

    v19 = v13;

    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    sub_1D5F3FE24(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D7273AE0;
    *(v21 + 32) = v20;
    v71 = v21;
    *(v21 + 40) = 0;
    v14 = *(v1 + 16);
    if (!v14)
    {
LABEL_12:
      v70 = 0;
      v22 = *(v1 + 24);
      if (v22)
      {
        goto LABEL_13;
      }

LABEL_16:
      v69 = 0;
      v29 = *(v1 + 40);
      if (!v29)
      {
        goto LABEL_20;
      }

LABEL_17:
      v30 = off_1F513B080[0];
      type metadata accessor for FormatDecorationContext(0);
      v31 = v30();
      v32 = sub_1D5E02AFC(v31, v29);
      if (v2)
      {

        return;
      }

      v42 = v32;

      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      sub_1D5F3FE24(0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1D7273AE0;
      *(v44 + 32) = v43;
      v36 = v44;
      *(v44 + 40) = 0;
      v37 = *(v1 + 48);
      if (v37)
      {
        goto LABEL_21;
      }

LABEL_24:
      v45 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v71 = 0;
    v14 = *(v1 + 16);
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  v15 = a1;
  v16 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext(0);
  v17 = v16();
  v18 = sub_1D5E02AFC(v17, v14);
  if (v2)
  {

    return;
  }

  v26 = v18;

  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  sub_1D5F3FE24(0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7273AE0;
  *(v28 + 32) = v27;
  v70 = v28;
  *(v28 + 40) = 0;
  a1 = v15;
  v22 = *(v1 + 24);
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_13:
  v23 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext(0);
  v24 = v23();
  v25 = sub_1D5E02AFC(v24, v22);
  if (v2)
  {

    return;
  }

  v33 = v25;

  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  sub_1D5F3FE24(0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D7273AE0;
  *(v35 + 32) = v34;
  v69 = v35;
  *(v35 + 40) = 0;
  v29 = *(v1 + 40);
  if (v29)
  {
    goto LABEL_17;
  }

LABEL_20:
  v36 = 0;
  v37 = *(v1 + 48);
  if (!v37)
  {
    goto LABEL_24;
  }

LABEL_21:
  v38 = v36;
  v39 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext(0);
  v40 = v39();
  v41 = sub_1D5E02AFC(v40, v37);
  if (v2)
  {

    return;
  }

  v46 = v41;

  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  sub_1D5F3FE24(0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D7273AE0;
  *(v45 + 32) = v47;
  *(v45 + 40) = 0;
  v36 = v38;
LABEL_26:
  v48 = *(v1 + 56);
  v49 = *(v1 + 64);
  v50 = *(v1 + 72);
  if (v50 == 255)
  {
    v51 = -1;
  }

  else
  {
    sub_1D6FCA290(*(v1 + 56), *(v1 + 64), v50 & 1, &v72);
    if (v2)
    {

      return;
    }

    v49 = *(&v72 + 1);
    v48 = v72;
    v51 = v73;
  }

  v52 = *(v1 + 80);
  v53 = *(v1 + 88);
  v54 = *(v1 + 96);
  v55 = *(v1 + 104);
  v56 = *(v1 + 112);
  if (v56 == 255)
  {
    v57 = -1;
  }

  else if (v56)
  {
    v67 = v51;
    sub_1D6FCBDCC(v52, v53, v54, v55, &v72);
    if (v2)
    {

      sub_1D60107F0(v48, v49, v67);
      return;
    }

    v53 = *(&v72 + 1);
    v52 = v72;
    v57 = 1;
    v54 = v73;
    v55 = v74;
    v51 = v67;
  }

  else
  {
    v57 = 0;
  }

  v58 = *(v1 + 120);
  v59 = *(v1 + 136);
  if (v59 == 255)
  {
    v60 = -1;
  }

  else
  {
    v62 = v57;
    v63 = v55;
    v64 = v54;
    v65 = v53;
    v66 = v52;
    v68 = v51;
    sub_1D6FCA290(v58, *(&v58 + 1), v59 & 1, &v72);
    if (v2)
    {

      sub_1D60107F0(v48, v49, v68);
      sub_1D62B4B50(v66, v65, v64, v63, v62);
      return;
    }

    v58 = v72;
    v60 = v73;
    v51 = v68;
    v53 = v65;
    v52 = v66;
    v55 = v63;
    v54 = v64;
    v57 = v62;
  }

  v61 = *(v1 + 32);
  *a1 = v4;
  *(a1 + 8) = v71;
  *(a1 + 16) = v70;
  *(a1 + 24) = v69;
  *(a1 + 32) = v61;
  *(a1 + 40) = v36;
  *(a1 + 48) = v45;
  *(a1 + 56) = v48;
  *(a1 + 64) = v49;
  *(a1 + 72) = v51;
  *(a1 + 80) = v52;
  *(a1 + 88) = v53;
  *(a1 + 96) = v54;
  *(a1 + 104) = v55;
  *(a1 + 112) = v57;
  *(a1 + 120) = v58;
  *(a1 + 136) = v60;
}

double sub_1D6FD1B60@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = v2[5];
  v51[4] = v2[4];
  v51[5] = v6;
  v7 = v2[7];
  v51[6] = v2[6];
  v51[7] = v7;
  v8 = v2[1];
  v51[0] = *v2;
  v51[1] = v8;
  v9 = v2[3];
  v51[2] = v2[2];
  v51[3] = v9;
  v10 = sub_1D6011280(v51);
  v11 = sub_1D5D756C8(v51);
  if (v10 == 1)
  {
    v13 = *(v11 + 80);
    *&v57[16] = *(v11 + 64);
    *&v57[32] = v13;
    *&v57[48] = *(v11 + 96);
    v14 = *(v11 + 16);
    v54 = *v11;
    v55 = v14;
    v15 = *(v11 + 48);
    v56 = *(v11 + 32);
    *v57 = v15;
    v37[0] = a1;
    v16 = *(v11 + 120);
    MEMORY[0x1EEE9AC00](v11, v12);
    v36 = v37;
    v18 = sub_1D5EC9E90(sub_1D6FFCBEC, v35, v17);
    if (!v3)
    {
      v47 = v54;
      v48 = v55;
      v49 = v56;
      LOBYTE(v50[0]) = v57[0];
      *(v50 + 8) = *&v57[8];
      *(&v50[1] + 8) = *&v57[24];
      *(&v50[2] + 8) = *&v57[40];
      BYTE8(v50[3]) = v57[56];
      v58 = v16;
      v44 = v50[2];
      v45 = v50[3];
      v42 = v50[0];
      v43 = v50[1];
      v40 = v55;
      v41 = v56;
      v39 = v54;
      *&v46 = v18;
      *(&v46 + 1) = v16;
      sub_1D5C326F0(&v39);
      v20 = v44;
      a2[4] = v43;
      a2[5] = v20;
      v21 = v46;
      a2[6] = v45;
      a2[7] = v21;
      v22 = v40;
      *a2 = v39;
      a2[1] = v22;
      v23 = v42;
      a2[2] = v41;
      a2[3] = v23;
      sub_1D6FFC87C(&v58, &v38, &unk_1EC8992B0, &qword_1EDF1B5E0, MEMORY[0x1E69E7DE0], sub_1D6FF93E8);
    }
  }

  else
  {
    v24 = *(v11 + 8);
    v25 = *(v11 + 32);
    v52 = *(v11 + 16);
    v53 = v25;
    v27 = *(v11 + 48);
    v26 = *(v11 + 56);
    *&v39 = a1;
    MEMORY[0x1EEE9AC00](v11, v12);
    v36 = &v39;
    v29 = sub_1D5EC9E90(sub_1D6FFCBEC, v35, v28);
    if (!v3)
    {
      v60 = v29;
      v59[0] = v24;
      sub_1D6FFC87C(v59, &v39, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
      if (v27)
      {
        sub_1D6FCAC74(v27, v26, v37);
        v30 = v37[0];
        v26 = v37[1];
      }

      else
      {
        v30 = 0;
      }

      v40 = v52;
      v41 = v53;
      *&v39 = v60;
      *(&v39 + 1) = v59[0];
      *&v42 = v30;
      *(&v42 + 1) = v26;
      sub_1D5C32704(&v39);
      v31 = v44;
      a2[4] = v43;
      a2[5] = v31;
      v32 = v46;
      a2[6] = v45;
      a2[7] = v32;
      v33 = v40;
      *a2 = v39;
      a2[1] = v33;
      result = *&v41;
      v34 = v42;
      a2[2] = v41;
      a2[3] = v34;
    }
  }

  return result;
}

uint64_t sub_1D6FD1EC4(void *a1)
{
  v3 = v2;
  v4 = v1;
  v151 = a1;
  v101 = *v1;
  swift_beginAccess();
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  swift_beginAccess();
  v9 = v1[6];
  v10 = v1[7];
  if ((~v10 & 0xF000000000000007) != 0)
  {
    if (v10 >> 61 == 3)
    {
      v98 = v8;
      v99 = v6;
      v11 = v10 & 0x1FFFFFFFFFFFFFFFLL;
      v12 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v15 = v5;
      v16 = *(v11 + 40);
      v102 = v15;

      sub_1D5F58038(v12, v13, v14, v16);
      sub_1D5F501D4(v151, v12, v13, v14, v16, &v113);
      if (v3)
      {

        sub_1D5F57FEC(v12, v13, v14, v16);
        return v12;
      }

      v103 = v9;
      v100 = v7;
      v17 = v113;
      v18 = swift_allocObject();
      *(v18 + 16) = v12;
      *(v18 + 24) = v13;
      *(v18 + 32) = v14;
      *(v18 + 40) = v16;
      v10 = v18 | 0x8000000000000000;
      *(v18 + 48) = v17;
      v6 = v99;
      v7 = v100;
      v5 = v102;
      v8 = v98;
    }

    else
    {

      v103 = v9;

      sub_1D5D04BD4(v10);
    }
  }

  else
  {

    v103 = v9;
  }

  v19 = *(v4 + 9);
  v138 = *(v4 + 8);
  v139 = v19;
  v20 = *(v4 + 11);
  v140 = *(v4 + 10);
  v141 = v20;
  v21 = *(v4 + 5);
  v134 = *(v4 + 4);
  v135 = v21;
  v22 = *(v4 + 7);
  v136 = *(v4 + 6);
  v137 = v22;
  v144 = v136;
  v145 = v22;
  v142 = v134;
  v143 = v21;
  v148 = v140;
  v149 = v20;
  v146 = v138;
  v147 = v19;
  v23 = sub_1D5CFD0B8(&v142);
  if (v23 == 1)
  {
    v130 = v138;
    v131 = v139;
    v132 = v140;
    v133 = v141;
    v126 = v134;
    v127 = v135;
    v25 = v136;
    v26 = v137;
    goto LABEL_13;
  }

  v150[4] = v146;
  v150[5] = v147;
  v150[6] = v148;
  v150[7] = v149;
  v150[0] = v142;
  v150[1] = v143;
  v150[2] = v144;
  v150[3] = v145;
  v12 = v150;
  sub_1D6FD6B80(v151, &v113);
  if (!v3)
  {
    v108 = v117;
    v109 = v118;
    v110 = v119;
    v111 = v120;
    v104 = v113;
    v105 = v114;
    v106 = v115;
    v107 = v116;
    nullsub_1();
    v130 = v108;
    v131 = v109;
    v132 = v110;
    v133 = v111;
    v126 = v104;
    v127 = v105;
    v25 = v106;
    v26 = v107;
LABEL_13:
    v128 = v25;
    v129 = v26;
    if (v4[24])
    {
      v12 = &v88;
      *&v113 = v151;
      MEMORY[0x1EEE9AC00](v23, v24);
      v87[2] = &v113;
      sub_1D5EC9CB8(sub_1D6FF93B8, v87, v27);
      if (v3)
      {

        sub_1D5C8500C(v10);
        sub_1D5D0AC3C(&v126, &qword_1EDF34688, &type metadata for FormatFill);
        return v12;
      }

      v98 = v8;
      v99 = v6;
      v102 = v5;
      v97 = v10;
      v100 = v7;
    }

    else
    {
      v98 = v8;
      v99 = v6;
      v102 = v5;
      v97 = v10;
      v100 = v7;
      v28 = 0;
    }

    v96 = v28;
    v29 = v4[25];
    v30 = *(v4 + 52);
    v32 = v4[27];
    v31 = v4[28];
    v33 = v4[29];
    v34 = v4[30];
    v36 = v4[31];
    v35 = v4[32];
    v37 = v4[33];
    v12 = v4[34];
    v38 = *(v4 + 280);
    if (v38 == 254)
    {
      v39 = *(v4 + 53);
      *&v104 = v4[25];
      *(&v104 + 1) = __PAIR64__(v39, v30);
      *&v105 = v32;
      *(&v105 + 1) = v31;
      *&v106 = v33;
      *(&v106 + 1) = v34;
      *&v107 = v36;
      *(&v107 + 1) = v35;
      *&v108 = v37;
      *(&v108 + 1) = v12;
      LOBYTE(v109) = -2;
    }

    else
    {
      sub_1D5FA6CB0(v151, v33, &v113);
      if (v3)
      {

        sub_1D5C8500C(v97);
        sub_1D5D0AC3C(&v126, &qword_1EDF34688, &type metadata for FormatFill);

        return v12;
      }

      *&v104 = v29;
      DWORD2(v104) = v30;
      *&v105 = v32;
      *(&v105 + 1) = v31;
      *&v106 = v113;
      *(&v106 + 1) = v34;
      *&v107 = v36;
      *(&v107 + 1) = v35;
      *&v108 = v37;
      *(&v108 + 1) = v12;
      LOBYTE(v109) = v38;
    }

    v40 = v4[36];
    v125 = *(v4 + 244);
    v41 = *(v4 + 59);
    v123 = *(v4 + 57);
    v124 = v41;
    v42 = *(v4 + 51);
    v119 = *(v4 + 49);
    v120 = v42;
    v43 = *(v4 + 55);
    v121 = *(v4 + 53);
    v122 = v43;
    v44 = *(v4 + 43);
    v115 = *(v4 + 41);
    v116 = v44;
    v45 = *(v4 + 47);
    v117 = *(v4 + 45);
    v118 = v45;
    v46 = *(v4 + 39);
    v113 = *(v4 + 37);
    v114 = v46;
    v47 = v4[62];
    v95 = *(v4 + 504);
    v48 = v4[64];
    v49 = v151;
    if (v48)
    {
      v94 = v47;
      v112[0] = v151;
      v50 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);

      v12 = v50();
      v51 = sub_1D5E02AFC(v12, v48);
      if (v3)
      {

        sub_1D5C8500C(v97);
        sub_1D5D0AC3C(&v126, &qword_1EDF34688, &type metadata for FormatFill);

        sub_1D5D0AC3C(&v104, &qword_1EDF33718, &type metadata for FormatShadow);

        return v12;
      }

      v52 = v51;
      v93 = v40;

      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      sub_1D5F3FE24(0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1D7273AE0;
      *(v48 + 32) = v53;
      *(v48 + 40) = 0;
      v49 = v151;
      v47 = v94;
    }

    else
    {
      v93 = v40;
    }

    v54 = v4[66];
    v12 = v4[65];
    if (v12 == 9)
    {
      v92 = v4[65];
      v55 = v100;
    }

    else
    {
      if ((~v54 & 0xF000000000000007) != 0)
      {
        sub_1D5FA6CB0(v49, v4[66], v112);
        v55 = v100;
        if (v3)
        {

          sub_1D5C8500C(v97);
          sub_1D5D0AC3C(&v126, &qword_1EDF34688, &type metadata for FormatFill);

          sub_1D5D0AC3C(&v104, &qword_1EDF33718, &type metadata for FormatShadow);

          return v12;
        }

        v54 = v112[0];
      }

      else
      {
        v55 = v100;
      }

      v92 = v12;
    }

    v56 = v4[67];
    v57 = v4[68];
    v12 = v56;
    if (v56 == 9)
    {
      v89 = v48;
    }

    else
    {
      if ((~v57 & 0xF000000000000007) != 0)
      {
        sub_1D5FA6CB0(v49, v57, v112);
        if (v3)
        {

          sub_1D5C8500C(v97);
          sub_1D5D0AC3C(&v126, &qword_1EDF34688, &type metadata for FormatFill);

          sub_1D5D0AC3C(&v104, &qword_1EDF33718, &type metadata for FormatShadow);

          sub_1D62B5D00(v92, v54);
          return v12;
        }

        v57 = v112[0];
      }

      v89 = v48;
      v56 = v12;
    }

    v90 = v56;
    v91 = v57;
    HIDWORD(v88) = *(v4 + 552);
    v58 = v4[70];
    if (v58)
    {
      v94 = v47;
      v100 = v55;
      v112[0] = v49;
      v59 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v12 = v59();
      v60 = sub_1D5E02AFC(v12, v58);
      if (v3)
      {

        sub_1D5C8500C(v97);
        sub_1D5D0AC3C(&v126, &qword_1EDF34688, &type metadata for FormatFill);

        sub_1D5D0AC3C(&v104, &qword_1EDF33718, &type metadata for FormatShadow);

        sub_1D62B5D00(v92, v54);
        sub_1D62B5D00(v90, v91);

        return v12;
      }

      v63 = v60;

      v64 = swift_allocObject();
      *(v64 + 16) = v63;
      sub_1D5F3FE24(0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1D7273AE0;
      *(v62 + 32) = v64;
      *(v62 + 40) = 0;
      v55 = v100;
      v47 = v94;
    }

    else
    {
      v62 = 0;
    }

    v65 = v89;
    v12 = swift_allocObject();
    swift_beginAccess();
    v66 = v102;
    *(v12 + 16) = v99;
    *(v12 + 24) = v66;
    *(v12 + 32) = v98;
    *(v12 + 40) = v55;
    swift_beginAccess();
    v67 = v96;
    v68 = v97;
    *(v12 + 48) = v103;
    *(v12 + 56) = v68;
    v69 = v131;
    *(v12 + 128) = v130;
    *(v12 + 144) = v69;
    v70 = v133;
    *(v12 + 160) = v132;
    *(v12 + 176) = v70;
    v71 = v127;
    *(v12 + 64) = v126;
    *(v12 + 80) = v71;
    v72 = v129;
    *(v12 + 96) = v128;
    *(v12 + 112) = v72;
    *(v12 + 192) = v67;
    v73 = v104;
    *(v12 + 216) = v105;
    *(v12 + 200) = v73;
    *(v12 + 280) = v109;
    v74 = v107;
    *(v12 + 264) = v108;
    v75 = v106;
    *(v12 + 248) = v74;
    *(v12 + 232) = v75;
    *(v12 + 288) = v93;
    v76 = v113;
    v77 = v114;
    v78 = v116;
    *(v12 + 328) = v115;
    *(v12 + 344) = v78;
    *(v12 + 296) = v76;
    *(v12 + 312) = v77;
    v79 = v117;
    v80 = v118;
    v81 = v120;
    *(v12 + 392) = v119;
    *(v12 + 408) = v81;
    *(v12 + 360) = v79;
    *(v12 + 376) = v80;
    v82 = v121;
    v83 = v122;
    v84 = v123;
    v85 = v124;
    *(v12 + 488) = v125;
    *(v12 + 456) = v84;
    *(v12 + 472) = v85;
    *(v12 + 424) = v82;
    *(v12 + 440) = v83;
    *(v12 + 496) = v47;
    *(v12 + 504) = v95;
    *(v12 + 512) = v65;
    *(v12 + 520) = v92;
    *(v12 + 528) = v54;
    v86 = v91;
    *(v12 + 536) = v90;
    *(v12 + 544) = v86;
    *(v12 + 552) = BYTE4(v88);
    *(v12 + 560) = v62;
    return v12;
  }

  sub_1D5C8500C(v10);
  return v12;
}

uint64_t (*sub_1D6FD2904(uint64_t a1))()
{
  v3 = v1;
  v80 = *v1;
  sub_1D5D27F7C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v81 = &v62[-v7];
  swift_beginAccess();
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v78 = v1[4];
  v79 = v8;
  swift_beginAccess();
  v11 = v1[6];
  v12 = v3[7];
  if (!v12)
  {

    v83 = v10;

    v82 = v11;

    v16 = 0;
    goto LABEL_6;
  }

  *&v86 = a1;
  v92 = a1;
  v13 = v9;
  v9 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v84 = v13;

  v14 = v9();
  v15 = sub_1D5E02AFC(v14, v12);
  if (!v2)
  {
    v17 = v15;
    v82 = v11;
    v83 = v10;

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    sub_1D5F3FE24(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    *(v16 + 32) = v18;
    *(v16 + 40) = 0;
    v9 = v84;
    a1 = v92;
LABEL_6:
    v19 = swift_beginAccess();
    v21 = v3[8];
    if (v21)
    {
      *&v86 = a1;
      MEMORY[0x1EEE9AC00](v19, v20);
      *&v62[-16] = &v86;

      v22 = sub_1D5ECA124(sub_1D6FF9618, &v62[-32], v21);
      if (v2)
      {
LABEL_8:

        return v9;
      }

      v84 = v22;
    }

    else
    {
      v84 = 0;
    }

    v23 = v3[9];
    if ((~v23 & 0xF000000000000007) != 0)
    {
      sub_1D6FCF804(a1, v3[9], &v86);
      if (v2)
      {
        goto LABEL_8;
      }

      v23 = v86;
    }

    v92 = a1;
    if (v3[10])
    {
      *&v86 = v92;
      MEMORY[0x1EEE9AC00](v19, v20);
      *&v62[-16] = &v86;
      sub_1D5EC9CB8(sub_1D6FFCC1C, &v62[-32], v24);
      if (v2)
      {

        sub_1D5C8500C(v23);
        return v9;
      }

      v70 = v16;
      v71 = v25;
      v72 = v23;
    }

    else
    {
      v70 = v16;
      v71 = 0;
      v72 = v23;
    }

    v26 = *(v3 + 88);
    v27 = v3[13];
    v75 = v3[12];
    v76 = v27;
    v77 = *(v3 + 112);
    v74 = v3[15];
    v67 = *(v3 + 128);
    v68 = v26;
    swift_beginAccess();
    v73 = v3[17];
    v28 = v3[18];
    v29 = *(v3 + 38);
    v31 = v3[20];
    v30 = v3[21];
    v32 = v3[23];
    v69 = v3[22];
    v34 = v3[24];
    v33 = v3[25];
    v35 = v3[26];
    v36 = v3[27];
    if (*(v3 + 224) == 254)
    {
      DWORD2(v66) = *(v3 + 39);
      sub_1D5ED34B0(v75, v76, v77);
      sub_1D5D0AF9C(v74);
      *&v86 = v28;
      *(&v86 + 1) = __PAIR64__(DWORD2(v66), v29);
      *&v87 = v31;
      *(&v87 + 1) = v30;
      *&v88 = v69;
      *(&v88 + 1) = v32;
      *&v89 = v34;
      *(&v89 + 1) = v33;
      *&v90 = v35;
      *(&v90 + 1) = v36;
      v91 = -2;
      v37 = v73;
    }

    else
    {
      v63 = *(v3 + 224);
      v64 = v32;
      *&v65 = v34;
      *(&v65 + 1) = v33;
      *&v66 = v35;
      *(&v66 + 1) = v36;
      v39 = v75;
      sub_1D5ED34B0(v75, v76, v77);
      v40 = v74;
      sub_1D5D0AF9C(v74);

      sub_1D5FA6CB0(v92, v69, v85);
      if (v2)
      {

        sub_1D5C8500C(v72);
        sub_1D5D0AFAC(v40);
        sub_1D5ED348C(v39, v76, v77);

        return v9;
      }

      v37 = v73;
      *&v86 = v28;
      DWORD2(v86) = v29;
      *&v87 = v31;
      *(&v87 + 1) = v30;
      *&v88 = v85[0];
      *(&v88 + 1) = v64;
      v89 = v65;
      v90 = v66;
      v91 = v63;
    }

    v41 = v72;
    v42 = v3[29];
    v43 = v92;
    v44 = v70;
    if ((~v42 & 0xF000000000000007) != 0)
    {
      sub_1D5FA6CB0(v92, v42, v85);
      if (v2)
      {

        sub_1D5C8500C(v41);
        sub_1D5D0AFAC(v74);
        sub_1D5ED348C(v75, v76, v77);

        sub_1D5D0AC3C(&v86, &qword_1EDF33718, &type metadata for FormatShadow);
        return v9;
      }

      v42 = v85[0];
    }

    LODWORD(v66) = *(v3 + 240);
    v46 = v3[31];
    v45 = v3[32];
    v69 = v42;
    if (v46)
    {
      *(&v66 + 1) = v45;
      if (v46 == 1)
      {
        v92 = 1;
        v72 = v41;
        v47 = v9;
LABEL_41:
        v70 = MEMORY[0x1E69D6A58];
        v52 = v81;
        sub_1D6FFC87C(v3 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, v81, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5D27F7C);
        v9 = swift_allocObject();
        *(v9 + 8) = 0;
        *(v9 + 17) = 0;
        swift_beginAccess();
        v53 = v78;
        *(v9 + 2) = v79;
        *(v9 + 3) = v47;
        v54 = v83;
        *(v9 + 4) = v53;
        *(v9 + 5) = v54;
        swift_beginAccess();
        *(v9 + 6) = v82;
        *(v9 + 7) = v44;
        swift_beginAccess();
        *(v9 + 8) = v84;

        v55 = v71;
        *(v9 + 9) = v72;
        *(v9 + 10) = v55;
        *(v9 + 88) = v68;
        v56 = v76;
        *(v9 + 12) = v75;
        *(v9 + 13) = v56;
        *(v9 + 112) = v77;
        *(v9 + 15) = v74;
        *(v9 + 128) = v67;
        swift_beginAccess();
        *(v9 + 17) = v37;

        v57 = v89;
        v58 = v90;
        v59 = v87;
        *(v9 + 11) = v88;
        *(v9 + 12) = v57;
        *(v9 + 13) = v58;
        *(v9 + 224) = v91;
        *(v9 + 9) = v86;
        *(v9 + 10) = v59;
        v60 = v70;
        *(v9 + 29) = v69;
        *(v9 + 240) = v66;
        v61 = *(&v66 + 1);
        *(v9 + 31) = v92;
        *(v9 + 32) = v61;
        sub_1D6FFC410(v52, v9 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, &qword_1EDF45AD0, v60);
        return v9;
      }

      v85[0] = v43;
      MEMORY[0x1EEE9AC00](v38, v42);
      *&v62[-16] = v85;
      v38 = sub_1D5EC9FC4(sub_1D6FFCC04, &v62[-32], v48);
      if (v2)
      {

        goto LABEL_37;
      }

      v46 = v38;
      v37 = v73;
      v45 = *(&v66 + 1);
    }

    v92 = v46;
    if (!v45)
    {
      v72 = v41;
      v47 = v9;
      *(&v66 + 1) = 0;
      goto LABEL_41;
    }

    v85[0] = v43;
    MEMORY[0x1EEE9AC00](v38, v42);
    *&v62[-16] = v85;
    v50 = sub_1D5EC9FC4(sub_1D6FF9684, &v62[-32], v49);
    if (!v2)
    {
      *(&v66 + 1) = v50;
      v72 = v41;
      v47 = v9;
      goto LABEL_41;
    }

LABEL_37:
    sub_1D5C8500C(v41);
    sub_1D5D0AFAC(v74);
    sub_1D5ED348C(v75, v76, v77);

    sub_1D5D0AC3C(&v86, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D5C84FF4(v69);
    return v9;
  }

  return v9;
}

uint64_t sub_1D6FD331C(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v53 = *v1;
  sub_1D5D27F7C(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v56 = &v45 - v5;
  swift_beginAccess();
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 40);
  v54 = *(v1 + 32);
  v55 = v7;
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  v12 = *(v1 + 64);
  v11 = *(v1 + 72);
  v13 = *(v1 + 80);
  v14 = *(v1 + 88);
  v15 = *(v1 + 112);
  v17 = *(v2 + 96);
  v16 = *(v2 + 104);
  v58 = v6;
  v59 = v8;
  if ((v15 & 0xFE) == 0x7E)
  {
    *&v73 = v10;
    *(&v73 + 1) = v9;
    *&v74 = v12;
    *(&v74 + 1) = v11;
    *&v75 = v13;
    BYTE8(v75) = v14;
    *(&v75 + 9) = *(v2 + 89);
    HIDWORD(v75) = *(v2 + 92);
    *&v76 = v17;
    *(&v76 + 1) = v16;
    v77 = v15;

    goto LABEL_8;
  }

  *&v51 = v12;
  *(&v51 + 1) = v11;
  v52 = v13;

  if ((~v10 & 0xF000000000000007) == 0)
  {
LABEL_7:
    v19 = v14 & 1;
    v67 = v19;
    sub_1D5ED34B0(v17, v16, v15);
    *&v73 = v10;
    *(&v73 + 1) = v9;
    v74 = v51;
    *&v75 = v52;
    BYTE8(v75) = v19;
    *&v76 = v17;
    *(&v76 + 1) = v16;
    v77 = v15;
LABEL_8:
    v20 = *(v2 + 176);
    v21 = v78;
    if (v20 == 255)
    {
      v23 = *(v2 + 136);
      v63 = *(v2 + 120);
      v64 = v23;
      v65 = *(v2 + 152);
      v66 = *(v2 + 168);
      v24 = 255;
    }

    else
    {
      v22 = *(v2 + 136);
      v68 = *(v2 + 120);
      v69 = v22;
      v70 = *(v2 + 152);
      v71 = *(v2 + 168);
      v72 = v20;
      sub_1D6FD5C60(v57, v60);
      if (v21)
      {

        sub_1D5D0AC3C(&v73, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
        return v2;
      }

      v63 = v60[0];
      v64 = v60[1];
      v65 = v60[2];
      v66 = v61;
      v24 = v62;
    }

    LODWORD(v57) = v24;
    v25 = v56;
    sub_1D6FFC87C(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v56, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    LODWORD(v78) = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds);
    LODWORD(v52) = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors);
    v26 = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
    *(&v51 + 1) = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
    v50 = v26;
    v27 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
    swift_beginAccess();
    v47 = *(v2 + v27);
    LODWORD(v51) = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
    v28 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
    v29 = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 16);
    v48 = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
    v45 = v29;
    swift_beginAccess();
    v49 = *(v2 + v28);
    v30 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
    swift_beginAccess();
    v46 = *(v2 + v30);
    v2 = swift_allocObject();
    *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu) = 2;
    *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag) = 2;
    swift_beginAccess();
    v31 = v76;
    *(v2 + 80) = v75;
    *(v2 + 96) = v31;
    v32 = v74;
    *(v2 + 48) = v73;
    *(v2 + 64) = v32;
    v33 = v64;
    *(v2 + 120) = v63;
    v34 = v58;
    *(v2 + 16) = v55;
    *(v2 + 24) = v34;
    v35 = v59;
    *(v2 + 32) = v54;
    *(v2 + 40) = v35;
    *(v2 + 112) = v77;
    *(v2 + 136) = v33;
    *(v2 + 152) = v65;
    *(v2 + 168) = v66;
    *(v2 + 176) = v57;
    sub_1D6FFC410(v25, v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds) = v78;
    *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors) = v52;
    v36 = (v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
    v37 = *(&v51 + 1);
    v38 = v50;
    *v36 = *(&v51 + 1);
    v36[1] = v38;
    v39 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
    swift_beginAccess();
    *(v2 + v39) = v47;
    v40 = v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters;
    v41 = v45;
    *v40 = v48;
    *(v40 + 16) = v41;
    *(v40 + 32) = v51;
    v42 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
    swift_beginAccess();
    *(v2 + v42) = v49;
    v43 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
    swift_beginAccess();
    *(v2 + v43) = v46;
    sub_1D62B7E1C(v37);

    return v2;
  }

  v18 = v78;
  sub_1D5FA6CB0(v57, v10, v60);
  v78 = v18;
  if (!v18)
  {
    v10 = *&v60[0];
    goto LABEL_7;
  }

  return v2;
}

uint64_t sub_1D6FD38BC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v14 = v4;
  v15 = v2;
  v13 = *(v1 + 48);
  swift_beginAccess();
  v6 = v1[7];
  v7 = v1[8];
  v8 = *(v1 + 74);
  v9 = *(v1 + 36);
  v10 = *(v1 + 75);
  v11 = swift_allocObject();
  swift_beginAccess();
  *(v11 + 16) = v15;
  *(v11 + 24) = v3;
  *(v11 + 32) = v14;
  *(v11 + 40) = v5;
  *(v11 + 48) = v13;
  swift_beginAccess();
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  *(v11 + 74) = v8;
  *(v11 + 72) = v9;
  *(v11 + 75) = v10;

  sub_1D62B7DCC(v7, v9 | (v8 << 16));
  return v11;
}

uint64_t sub_1D6FD3A10(uint64_t a1)
{
  v3 = v1;
  v40 = *v1;
  swift_beginAccess();
  v5 = v1[3];
  v43 = v1[2];
  v6 = v1[5];
  v41 = v1[4];
  swift_beginAccess();
  v7 = v1[6];
  v8 = *(v3 + 56);
  if (v8)
  {
    v42[0] = a1;
    v36 = a1;
    v9 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);

    v39 = v5;
    v10 = v9();
    v11 = sub_1D5E02AFC(v10, v8);
    if (v2)
    {

LABEL_13:

      return v3;
    }

    v17 = v11;
    v37 = v6;
    v38 = v7;

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    sub_1D5F3FE24(0);
    v12 = swift_allocObject();
    v14 = v12;
    *(v12 + 16) = xmmword_1D7273AE0;
    *(v12 + 32) = v18;
    *(v12 + 40) = 0;
    v5 = v39;
    a1 = v36;
    if (!*(v3 + 64))
    {
      goto LABEL_8;
    }
  }

  else
  {

    v37 = v6;

    v38 = v7;

    v14 = 0;
    if (!*(v3 + 64))
    {
LABEL_8:
      v16 = 0;
LABEL_9:
      v39 = v16;
      v20 = *(v3 + 72);
      v19 = *(v3 + 80);
      v21 = *(v3 + 88);
      v22 = *(v3 + 96);
      v23 = *(v3 + 104);
      LODWORD(v36) = *(v3 + 108);
      v24 = *(v3 + 112);
      v25 = *(v3 + 120);
      v26 = *(v3 + 128);
      v34 = *(v3 + 152);
      v35 = *(v3 + 136);
      v33 = *(v3 + 168);
      v32 = *(v3 + 176);
      if (v32 == 254)
      {
        sub_1D5ED34B0(v20, v19, v21);
      }

      else
      {
        sub_1D5ED34B0(v20, v19, v21);
        sub_1D5FA6CB0(a1, v26, v42);
        if (v2)
        {

          sub_1D5ED348C(v20, v19, v21);
          goto LABEL_13;
        }

        v26 = v42[0];
      }

      v27 = *(v3 + 177);
      v3 = swift_allocObject();
      swift_beginAccess();
      *(v3 + 16) = v43;
      *(v3 + 24) = v5;
      v28 = v37;
      *(v3 + 32) = v41;
      *(v3 + 40) = v28;
      swift_beginAccess();
      v29 = v39;
      *(v3 + 48) = v38;
      *(v3 + 56) = v14;
      *(v3 + 64) = v29;
      *(v3 + 72) = v20;
      *(v3 + 80) = v19;
      *(v3 + 88) = v21;
      *(v3 + 96) = v22;
      *(v3 + 104) = v23;
      *(v3 + 108) = v36;
      *(v3 + 112) = v24;
      *(v3 + 120) = v25;
      *(v3 + 128) = v26;
      *(v3 + 152) = v34;
      *(v3 + 136) = v35;
      *(v3 + 168) = v33;
      *(v3 + 176) = v32;
      *(v3 + 177) = v27;
      return v3;
    }
  }

  v42[0] = a1;
  MEMORY[0x1EEE9AC00](v12, v13);
  v31[2] = v42;
  sub_1D5EC9CB8(sub_1D6FFCC1C, v31, v15);
  if (!v2)
  {
    goto LABEL_9;
  }

  return v3;
}

uint64_t sub_1D6FD3E28()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  swift_beginAccess();
  v6 = *(v0 + 72);
  v13 = *(v0 + 80);
  v12 = *(v0 + 84);
  swift_beginAccess();
  v7 = *(v0 + 88);
  v8 = swift_allocObject();
  *(v8 + 72) = 0;
  swift_beginAccess();
  *(v8 + 16) = v1;
  *(v8 + 24) = v2;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  *(v8 + 48) = v5;
  *(v8 + 56) = v11;
  *(v8 + 64) = v10;
  swift_beginAccess();
  *(v8 + 72) = v6;

  *(v8 + 84) = v12;
  *(v8 + 80) = v13;
  swift_beginAccess();
  *(v8 + 88) = v7;
  return v8;
}

uint64_t sub_1D6FD3FBC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *, __n128))
{
  v64 = a2;
  v4 = v3;
  v5 = v2;
  v62 = *v2;
  swift_beginAccess();
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[5];
  v63 = v2[4];
  swift_beginAccess();
  v10 = v2[6];
  v11 = *(v5 + 56);
  v66 = a1;
  if (!v11)
  {

    v17 = 0;
    goto LABEL_6;
  }

  v65 = v7;
  *&v68 = a1;
  v12 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);

  v74 = v10;
  v13 = v12();
  v14 = sub_1D5E02AFC(v13, v11);
  v4 = v3;
  if (!v3)
  {
    v18 = v14;

    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    sub_1D5F3FE24(0);
    v15 = swift_allocObject();
    v17 = v15;
    *(v15 + 16) = xmmword_1D7273AE0;
    *(v15 + 32) = v19;
    *(v15 + 40) = 0;
    v10 = v74;
    v7 = v65;
    a1 = v66;
LABEL_6:
    v20 = *(v5 + 64);
    if ((~v20 & 0xF000000000000007) != 0)
    {
      sub_1D6FCF804(a1, *(v5 + 64), &v68);
      if (v4)
      {

        return v5;
      }

      v20 = v68;
    }

    if (*(v5 + 72))
    {
      *&v68 = v66;
      MEMORY[0x1EEE9AC00](v15, v16);
      v50[2] = &v68;
      sub_1D5EC9CB8(v64, v50, v21);
      if (v4)
      {

        sub_1D5C8500C(v20);
        return v5;
      }

      v59 = v9;
      v65 = v7;
      v60 = v20;
      v64 = v17;
      v74 = v10;
    }

    else
    {
      v59 = v9;
      v65 = v7;
      v60 = v20;
      v64 = v17;
      v74 = v10;
      v22 = 0;
    }

    v61 = v22;
    v23 = *(v5 + 80);
    v24 = *(v5 + 88);
    v25 = *(v5 + 96);
    v26 = *(v5 + 104);
    v27 = *(v5 + 112);
    v29 = *(v5 + 120);
    v28 = *(v5 + 128);
    v30 = *(v5 + 144);
    v58 = *(v5 + 136);
    v31 = *(v5 + 152);
    v32 = *(v5 + 160);
    v33 = *(v5 + 168);
    v34 = *(v5 + 176);
    if (*(v5 + 184) == 254)
    {
      DWORD2(v54) = *(v5 + 116);
      v55 = v23;
      v56 = v24;
      v57 = v25;
      sub_1D5ED34B0(v23, v24, v25);
      *&v68 = v26;
      *(&v68 + 1) = __PAIR64__(DWORD2(v54), v27);
      *&v69 = v29;
      *(&v69 + 1) = v28;
      *&v70 = v58;
      *(&v70 + 1) = v30;
      *&v71 = v31;
      *(&v71 + 1) = v32;
      *&v72 = v33;
      *(&v72 + 1) = v34;
      v35 = -2;
    }

    else
    {
      v51 = *(v5 + 184);
      v52 = v30;
      *&v53 = v31;
      *(&v53 + 1) = v32;
      *&v54 = v33;
      *(&v54 + 1) = v34;
      v36 = v23;
      v37 = v24;
      sub_1D5ED34B0(v23, v24, v25);
      sub_1D5FA6CB0(v66, v58, v67);
      if (v4)
      {

        sub_1D5C8500C(v60);
        sub_1D5ED348C(v36, v37, v25);

        return v5;
      }

      v55 = v36;
      v56 = v37;
      v57 = v25;
      *&v68 = v26;
      DWORD2(v68) = v27;
      *&v69 = v29;
      *(&v69 + 1) = v28;
      *&v70 = v67[0];
      *(&v70 + 1) = v52;
      v71 = v53;
      v72 = v54;
      v35 = v51;
    }

    v73 = v35;
    v38 = v60;
    v39 = v59;
    v40 = *(v5 + 192);
    v41 = v65;
    if ((~v40 & 0xF000000000000007) != 0)
    {
      sub_1D5FA6CB0(v66, *(v5 + 192), v67);
      v42 = v74;
      if (v4)
      {

        sub_1D5C8500C(v38);
        sub_1D5ED348C(v55, v56, v57);

        sub_1D5D0AC3C(&v68, &qword_1EDF33718, &type metadata for FormatShadow);
        return v5;
      }

      v40 = v67[0];
    }

    else
    {
      v42 = v74;
    }

    v44 = *(v5 + 200);
    v5 = swift_allocObject();
    swift_beginAccess();
    *(v5 + 16) = v41;
    *(v5 + 24) = v8;
    *(v5 + 32) = v63;
    *(v5 + 40) = v39;
    swift_beginAccess();
    v45 = v71;
    *(v5 + 136) = v70;
    *(v5 + 152) = v45;
    *(v5 + 168) = v72;
    v46 = v69;
    *(v5 + 104) = v68;
    v47 = v64;
    *(v5 + 48) = v42;
    *(v5 + 56) = v47;
    v48 = v61;
    *(v5 + 64) = v38;
    *(v5 + 72) = v48;
    v49 = v56;
    *(v5 + 80) = v55;
    *(v5 + 88) = v49;
    *(v5 + 96) = v57;
    *(v5 + 184) = v73;
    *(v5 + 120) = v46;
    *(v5 + 192) = v40;
    *(v5 + 200) = v44;
    return v5;
  }

  return v5;
}

uint64_t sub_1D6FD464C(uint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  v16 = v1[4];
  swift_beginAccess();
  v8 = v1[6];
  v9 = *(v3 + 56);

  if ((~v9 & 0xF000000000000007) == 0)
  {
    v14 = v6;
    goto LABEL_6;
  }

  sub_1D5FA6CB0(a1, v9, v15);
  if (!v2)
  {
    v14 = v6;
    v9 = v15[0];
LABEL_6:
    v10 = *(v3 + 64);
    if ((~v10 & 0xF000000000000007) != 0)
    {
      sub_1D5FA6CB0(a1, *(v3 + 64), v15);
      if (v2)
      {

        sub_1D5C84FF4(v9);
        return v3;
      }

      v10 = v15[0];
    }

    v11 = *(v3 + 72);
    v12 = *(v3 + 80);
    v3 = swift_allocObject();
    swift_beginAccess();
    *(v3 + 16) = v14;
    *(v3 + 24) = v5;
    *(v3 + 32) = v16;
    *(v3 + 40) = v7;
    swift_beginAccess();
    *(v3 + 48) = v8;
    *(v3 + 56) = v9;
    *(v3 + 64) = v10;
    *(v3 + 72) = v11;
    *(v3 + 80) = v12;
    sub_1D62B8658(v12);
    return v3;
  }

  return v3;
}

void sub_1D6FD4830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v89 = a7;
  v86 = a5;
  v87 = a6;
  v85 = a4;
  v8 = v7;
  v97 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v90 = v10;
  v88 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v91 = (&v79 - v12);
  v13 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v92 = &v79 - v16;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v13);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v95 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v96 = &v79 - v22;
  v23 = type metadata accessor for FormatNodeStateData.Data(0);
  v93 = *(v23 - 1);
  v94 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v13);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v79 - v29;
  v127 = a1;
  swift_beginAccess();

  v32 = sub_1D6B0ACE8(v31, 0);

  v33 = (*(v32 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v34 = *v33;
  v35 = v33[1];
  swift_beginAccess();
  v36 = *(v8 + 136);

  v37 = v130;
  sub_1D6FBE744(v36, v32, v34, v35);
  if (v37)
  {
  }

  else
  {
    v82 = v26;
    v83 = v30;
    v84 = v38;
    v130 = 0;

    swift_beginAccess();
    v39 = *(v8 + 16);
    v40 = *(v8 + 24);

    v41 = sub_1D6E8DD40(v39, v40);
    v43 = v42;

    v97 = *(v97 + 24);
    if (*(v97 + 16))
    {
      v44 = v83;
      *v83 = v32;
      v45 = type metadata accessor for FormatSourceMapContext(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      swift_beginAccess();

      sub_1D6D60828(v44, v41, v43);
      swift_endAccess();
    }

    v46 = *(v8 + 72);
    v47 = *(v8 + 104);
    v125[2] = *(v8 + 88);
    *v126 = v47;
    *&v126[15] = *(v8 + 119);
    v125[0] = *(v8 + 56);
    v125[1] = v46;
    v48 = *(v8 + 72);
    v49 = *(v8 + 104);
    v121 = *(v8 + 88);
    v122[0] = v49;
    *(v122 + 15) = *(v8 + 119);
    v119 = *(v8 + 56);
    v120 = v48;
    sub_1D62B62D8(v125, &v115);
    v50 = v130;
    sub_1D71CF078(v32, &v123);
    if (v50)
    {

      v117 = v121;
      v118[0] = v122[0];
      *(v118 + 15) = *(v122 + 15);
      v115 = v119;
      v116 = v120;
      sub_1D62B6334(&v115);
    }

    else
    {
      v81 = v41;
      v83 = v43;
      v116 = v120;
      v117 = v121;
      v118[0] = v122[0];
      *(v118 + 15) = *(v122 + 15);
      v115 = v119;
      sub_1D62B6334(&v115);
      v51 = v124;
      v52 = v82;
      *v82 = v123;
      *(v52 + 8) = v51;
      v53 = v94;
      swift_storeEnumTagMultiPayload();
      v54 = v96;
      sub_1D5BE4148(v52, v96, type metadata accessor for FormatNodeStateData.Data);
      (*(v93 + 56))(v54, 0, 1, v53);
      v130 = 0;
      v94 = v32;
      v80 = type metadata accessor for FormatNodeStateData.Data;
      v79 = MEMORY[0x1E69E6720];
      v55 = v95;
      sub_1D6FFC87C(v54, v95, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      swift_beginAccess();
      v56 = v83;

      v93 = v51;
      sub_1D5E443B8(v51);
      sub_1D6D60A18(v55, v81, v56);
      swift_endAccess();
      sub_1D6FFCA9C(v54, &qword_1EDF2C470, v80, v79, sub_1D5D27F7C);
      sub_1D6FFC9A0(v52, type metadata accessor for FormatNodeStateData.Data);
      swift_beginAccess();
      v57 = *(v8 + 160);
      v113[0] = *(v8 + 144);
      v113[1] = v57;
      v59 = *(v8 + 144);
      v58 = *(v8 + 160);
      v114[0] = *(v8 + 176);
      *(v114 + 9) = *(v8 + 185);
      v108 = v59;
      v109 = v58;
      v110[0] = *(v8 + 176);
      *(v110 + 9) = *(v8 + 185);
      sub_1D66AD764(v113, &v105);
      sub_1D725A7EC();
      v60 = v130;
      FormatProgressKind.value(contextLayoutOptions:)(v105, &v111);
      if (v60)
      {

        sub_1D5E443C8(v93);
        v105 = v108;
        v106 = v109;
        v107[0] = v110[0];
        *(v107 + 9) = *(v110 + 9);
        sub_1D62B63E4(&v105);
      }

      else
      {
        v105 = v108;
        v106 = v109;
        v107[0] = v110[0];
        *(v107 + 9) = *(v110 + 9);
        sub_1D62B63E4(&v105);

        v128 = v111;
        v129[0] = v112[0];
        *(v129 + 9) = *(v112 + 9);
        if (*(v8 + 256))
        {
          v62 = *(v8 + 288);
          v61 = *(v8 + 296);
          v64 = *(v8 + 272);
          v63 = *(v8 + 280);
          v65 = *(v8 + 264);
          v98 = *(v8 + 256);
          v99 = v65;
          v100 = v64;
          v101 = v63;
          v102 = v62;
          v103 = v61;

          sub_1D5DEA234(v62);

          sub_1D68687FC(v94, v92);
          v66 = v102;

          sub_1D5CBF568(v66);
          v67 = v83;

          v68 = 0;
        }

        else
        {
          v68 = 1;
          v67 = v83;
        }

        v69 = sub_1D7259B8C();
        (*(*(v69 - 8) + 56))(v92, v68, 1, v69);
        swift_getKeyPath();
        swift_beginAccess();
        v104[0] = *(v8 + 32);
        v70 = v104[0];

        sub_1D5C82CD8(v70);
        v71 = v94;
        sub_1D5BEB9F4(v94, v81, v67, v91);
        sub_1D5C92A8C(v104[0]);
        swift_beginAccess();
        v72 = *(v8 + 48);

        v97 = sub_1D618EFB4(v71, v72);

        v73 = swift_allocObject();
        v130 = 0;
        v74 = v83;
        v75 = v84;
        *(v73 + 16) = v81;
        *(v73 + 24) = v74;
        *(v73 + 32) = v71;
        *(v73 + 40) = v8;
        *(v73 + 48) = v75;
        v76 = v129[0];
        *(v73 + 56) = v128;
        *(v73 + 72) = v76;
        *(v73 + 81) = *(v129 + 9);
        v86(0);
        v87();

        v77 = v91;
        sub_1D7259B1C();

        v78 = sub_1D5E443C8(v93);
        (*(v88 + 8))(v77, v90, v78);
        sub_1D6FFCA9C(v92, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      }
    }
  }
}