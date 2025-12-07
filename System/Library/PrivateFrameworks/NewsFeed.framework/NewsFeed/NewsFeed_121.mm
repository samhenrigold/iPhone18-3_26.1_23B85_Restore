uint64_t _s8NewsFeed14FormatItemNodeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_28;
  }

  v7 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_28;
  }

  v70[0] = a1[6];
  v67[0] = a2[6];
  sub_1D5C82CD8(v70[0]);
  sub_1D5C82CD8(v67[0]);
  v8 = static FormatSize.== infix(_:_:)(v70, v67);
  sub_1D5C92A8C(v67[0]);
  sub_1D5C92A8C(v70[0]);
  if ((v8 & 1) == 0)
  {
    goto LABEL_28;
  }

  v9 = a1[7];
  v10 = a2[7];
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_28;
    }

    v11 = *(v9 + 16);
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);
    swift_beginAccess();
    v14 = *(v12 + 16);

    v15 = sub_1D5E1F5F0(v13, v14);

    if ((v15 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v10)
  {
LABEL_28:
    v56 = 0;
    return v56 & 1;
  }

  swift_beginAccess();
  v16 = a1[8];
  swift_beginAccess();
  v17 = a2[8];

  v18 = sub_1D6344A40(v16, v17, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v18 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v19 = a1[9];
  swift_beginAccess();
  v20 = a2[9];

  v21 = sub_1D633E5BC(v19, v20);

  if ((v21 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v22 = a1[10];
  swift_beginAccess();
  v23 = a2[10];

  v24 = sub_1D5BFC390(v22, v23);

  if ((v24 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v25 = a1[11];
  swift_beginAccess();
  v26 = a2[11];

  v27 = sub_1D635B244(v25, v26, type metadata accessor for FormatOption, type metadata accessor for FormatOption, _s8NewsFeed12FormatOptionV2eeoiySbAC_ACtFZ_0, type metadata accessor for FormatOption);

  if ((v27 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v28 = a1[12];
  swift_beginAccess();
  v29 = a2[12];

  sub_1D633E6D8(v28, v29);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v32 = a1[13];
  swift_beginAccess();
  if (v32 != a2[13])
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v70[0] = a1[14];
  v33 = v70[0];
  swift_beginAccess();
  v67[0] = a2[14];
  v34 = v67[0];
  sub_1D5EB1500(v33);
  sub_1D5EB1500(v34);
  LOBYTE(v33) = static FormatVisibility.== infix(_:_:)(v70, v67);
  sub_1D5EB15C4(v67[0]);
  sub_1D5EB15C4(v70[0]);
  if ((v33 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v35 = a1[15];
  swift_beginAccess();
  v36 = a2[15];

  sub_1D634EB4C(v35, v36);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_28;
  }

  v40 = a1[16];
  v39 = a1[17];
  v42 = a1[18];
  v41 = a1[19];
  v43 = a1[20];
  v44 = a1[21];
  v46 = a2[16];
  v45 = a2[17];
  v48 = a2[18];
  v47 = a2[19];
  v50 = a2[20];
  v49 = a2[21];
  v66 = v44;
  if (!v40)
  {
    v65 = v43;
    sub_1D5EB1D80(0, v39, v42, v41, v43, v44);
    if (!v46)
    {
      sub_1D5EB1D80(0, v45, v48, v47, v50, v49);
      sub_1D5EB2398(0, v39, v42, v41, v65, v66);
      v56 = 1;
      return v56 & 1;
    }

    sub_1D5EB1D80(v46, v45, v48, v47, v50, v49);
    goto LABEL_33;
  }

  v70[0] = v40;
  v70[1] = v39;
  v70[2] = v42;
  v70[3] = v41;
  v71 = v43;
  v72 = v44;
  if (!v46)
  {
    v62 = v49;
    v60 = v43;
    sub_1D5EB1D80(v40, v39, v42, v41, v43, v44);
    sub_1D5EB1D80(0, v45, v48, v47, v50, v62);
    sub_1D5EB1D80(v40, v39, v42, v41, v60, v66);

    v65 = v60;
    v61 = v60;
    v49 = v62;
    sub_1D5CBF568(v61);

LABEL_33:
    sub_1D5EB2398(v40, v39, v42, v41, v65, v66);
    sub_1D5EB2398(v46, v45, v48, v47, v50, v49);
    v56 = 0;
    return v56 & 1;
  }

  v67[0] = v46;
  v67[1] = v45;
  v67[2] = v48;
  v67[3] = v47;
  v68 = v50;
  v69 = v49;
  v63 = v39;
  v64 = v47;
  v51 = v43;
  sub_1D5EB1D80(v40, v39, v42, v41, v43, v44);
  sub_1D5EB1D80(v46, v45, v48, v64, v50, v49);
  v52 = v39;
  v53 = v42;
  v54 = v42;
  v55 = v51;
  sub_1D5EB1D80(v40, v52, v53, v41, v51, v66);
  v56 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v70, v67);
  v57 = v68;

  sub_1D5CBF568(v57);

  v58 = v71;

  sub_1D5CBF568(v58);

  sub_1D5EB2398(v40, v63, v54, v41, v55, v66);
  return v56 & 1;
}

uint64_t _s8NewsFeed15FormatImageNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_28;
  }

  v63 = *(a1 + 32);
  v57 = *(a2 + 32);
  sub_1D5C82CD8(v63);
  sub_1D5C82CD8(v57);
  v7 = static FormatSize.== infix(_:_:)(&v63, &v57);
  sub_1D5C92A8C(v57);
  sub_1D5C92A8C(v63);
  if ((v7 & 1) == 0)
  {
    goto LABEL_28;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_28;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v9)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if (v17)
  {
    v18 = *(a1 + 56);
    v19 = *(a2 + 56);
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_28;
      }

      type metadata accessor for FormatImageNodeStyle(0);

      v20 = _s8NewsFeed20FormatImageNodeStyleC2eeoiySbAC_ACtFZ_0(v18, v19);

      if ((v20 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v19)
    {
      goto LABEL_28;
    }

    v21 = *(a1 + 64);
    v22 = *(a2 + 64);
    if (v21)
    {
      if (!v22)
      {
        goto LABEL_28;
      }

      v23 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v21, v22);

      if ((v23 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v22)
    {
      goto LABEL_28;
    }

    v63 = *(a1 + 72);
    v57 = *(a2 + 72);

    v24 = static FormatAsyncImageContent.== infix(_:_:)(&v63, &v57);

    if ((v24 & 1) == 0)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v25 = *(a1 + 80);
    swift_beginAccess();
    if (v25 != *(a2 + 80))
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v63 = *(a1 + 88);
    v26 = v63;
    swift_beginAccess();
    v57 = *(a2 + 88);
    v27 = v57;
    sub_1D5EB1500(v26);
    sub_1D5EB1500(v27);
    LOBYTE(v26) = static FormatVisibility.== infix(_:_:)(&v63, &v57);
    sub_1D5EB15C4(v57);
    sub_1D5EB15C4(v63);
    if ((v26 & 1) == 0)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v28 = *(a1 + 96);
    swift_beginAccess();
    if (v28 != *(a2 + 96))
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v29 = *(a1 + 97);
    swift_beginAccess();
    if (v29 != *(a2 + 97))
    {
      goto LABEL_28;
    }

    v32 = *(a1 + 112);
    v33 = *(a2 + 112);
    if (v32 <= 0xFD)
    {
      v34 = *(a2 + 104);
      v63 = *(a1 + 104);
      LOBYTE(v64) = v32;
      if (v33 > 0xFD)
      {
        goto LABEL_28;
      }

      v57 = v34;
      LOBYTE(v58) = v33;
      if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v63, &v57) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v33 <= 0xFD)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v35 = *(a1 + 120);
    swift_beginAccess();
    v36 = *(a2 + 120);

    v37 = sub_1D5BFC390(v35, v36);

    if (v37)
    {
      swift_beginAccess();
      v38 = *(a1 + 128);
      v39 = *(a1 + 136);
      swift_beginAccess();
      v40 = *(a2 + 136);
      if (v39)
      {
        if (!v40 || (v38 != *(a2 + 128) || v39 != v40) && (sub_1D72646CC() & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else if (v40)
      {
        goto LABEL_28;
      }

      v41 = *(a1 + 144);
      v42 = *(a1 + 152);
      v43 = *(a1 + 160);
      v54 = *(a1 + 168);
      v55 = *(a1 + 176);
      v56 = *(a1 + 184);
      v44 = *(a2 + 144);
      v45 = *(a2 + 152);
      v46 = *(a2 + 160);
      v47 = *(a2 + 168);
      v52 = *(a2 + 176);
      v53 = *(a2 + 184);
      v48 = v41;
      if (v41)
      {
        v63 = v41;
        v64 = v42;
        v65 = v43;
        v66 = v54;
        v67 = v55;
        v68 = v56;
        v51 = v42;
        if (v44)
        {
          v57 = v44;
          v58 = v45;
          v59 = v46;
          v60 = v47;
          v61 = v52;
          v62 = v53;
          sub_1D5EB1D80(v41, v42, v43, v54, v55, v56);
          sub_1D5EB1D80(v44, v45, v46, v47, v52, v53);
          sub_1D5EB1D80(v48, v42, v43, v54, v55, v56);
          v30 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v63, &v57);
          v49 = v61;

          sub_1D5CBF568(v49);

          v50 = v67;

          sub_1D5CBF568(v50);

          sub_1D5EB2398(v48, v51, v43, v54, v55, v56);
          return v30 & 1;
        }

        sub_1D5EB1D80(v41, v42, v43, v54, v55, v56);
        sub_1D5EB1D80(0, v45, v46, v47, v52, v53);
        sub_1D5EB1D80(v48, v42, v43, v54, v55, v56);

        sub_1D5CBF568(v55);
      }

      else
      {
        sub_1D5EB1D80(0, v42, v43, v54, v55, v56);
        if (!v44)
        {
          sub_1D5EB1D80(0, v45, v46, v47, v52, v53);
          sub_1D5EB2398(0, v42, v43, v54, v55, v56);
          v30 = 1;
          return v30 & 1;
        }

        sub_1D5EB1D80(v44, v45, v46, v47, v52, v53);
      }

      sub_1D5EB2398(v48, v42, v43, v54, v55, v56);
      sub_1D5EB2398(v44, v45, v46, v47, v52, v53);
    }
  }

LABEL_28:
  v30 = 0;
  return v30 & 1;
}

uint64_t _s8NewsFeed14FormatTextNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_34;
  }

  v118 = *(a1 + 32);
  v110 = *(a2 + 32);
  sub_1D5D085B4(v118);
  sub_1D5D085B4(v110);
  v7 = static FormatTextSize.== infix(_:_:)(&v118, &v110);
  sub_1D5D05694(v110);
  sub_1D5D05694(v118);
  if ((v7 & 1) == 0)
  {
    goto LABEL_34;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_34;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v9)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v17 & 1) == 0)
  {
    goto LABEL_34;
  }

  v18 = *(a1 + 56);
  v19 = *(a2 + 56);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_34;
    }

    v20 = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v18, v19);

    if ((v20 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v19)
  {
    goto LABEL_34;
  }

  v21 = *(a1 + 64);
  v22 = *(a2 + 64);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_34;
    }

    v23 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v21, v22);

    if ((v23 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v22)
  {
    goto LABEL_34;
  }

  v118 = *(a1 + 72);
  v110 = *(a2 + 72);

  v24 = static FormatTextContent.== infix(_:_:)(&v118, &v110);

  if ((v24 & 1) == 0)
  {
    goto LABEL_34;
  }

  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  v28 = *(a1 + 104);
  v29 = *(a1 + 112);
  v30 = *(a1 + 120);
  v31 = *(a1 + 128) | (*(a1 + 130) << 16);
  v33 = *(a2 + 80);
  v32 = *(a2 + 88);
  v35 = *(a2 + 96);
  v34 = *(a2 + 104);
  v36 = *(a2 + 128) | (*(a2 + 130) << 16);
  v37 = (v36 >> 17) & 0x7F;
  v39 = *(a2 + 112);
  v38 = *(a2 + 120);
  v102 = v25;
  v104 = v28;
  v106 = v30;
  v108 = v27;
  if ((*(a1 + 130) >> 1) <= 0x7Eu)
  {
    v118 = *(a1 + 80);
    v119 = v26;
    v120 = v27;
    v121 = v28;
    v122 = v29;
    v123 = v30;
    v124 = v31;
    v125 = BYTE2(v31);
    if (((v36 >> 17) & 0x7F) != 0x7F)
    {
      v110 = v33;
      v111 = v32;
      v112 = v35;
      v113 = v34;
      v114 = v39;
      v115 = v38;
      v116 = v36;
      v117 = BYTE2(v36);
      v96 = v34;
      v99 = v35;
      v54 = v26;
      v55 = v29;
      v56 = v32;
      v57 = v33;
      v58 = v38;
      v59 = v39;
      sub_1D6046038(v25, v26, v27, v28, v29, v30, v31);
      sub_1D6046038(v57, v56, v99, v96, v59, v58, v36);
      sub_1D6046038(v102, v54, v108, v104, v55, v106, v31);
      v60 = v55;
      LOBYTE(v55) = _s8NewsFeed022FormatProgressViewNodeD0O2eeoiySbAC_ACtFZ_0(&v118, &v110);
      sub_1D5D0A678(v110, v111, v112, v113, v114, v115, v116 | (v117 << 16));
      sub_1D5D0A678(v118, v119, v120, v121, v122, v123, v124 | (v125 << 16));
      sub_1D5C67600(v102, v54, v108, v104, v60, v106, v31);
      if ((v55 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    v47 = v25;
    v48 = v26;
    v100 = v29;
    v49 = v32;
    v50 = v33;
    v51 = v38;
    v52 = v39;
    sub_1D6046038(v25, v26, v27, v28, v29, v30, v31);
    v92 = v50;
    v93 = v49;
    v94 = v52;
    v95 = v51;
    sub_1D6046038(v50, v49, v35, v34, v52, v51, v36);
    sub_1D6046038(v47, v48, v108, v104, v100, v106, v31);
    v98 = v48;
    v53 = v48;
    v41 = v34;
    sub_1D5D0A678(v47, v53, v108, v104, v100, v106, v31);
LABEL_29:
    sub_1D5C67600(v102, v98, v108, v104, v100, v106, v31);
    sub_1D5C67600(v92, v93, v35, v41, v94, v95, v36);
    goto LABEL_34;
  }

  v91 = *(a2 + 128) | (*(a2 + 130) << 16);
  v40 = *(a2 + 96);
  v98 = *(a1 + 88);
  v100 = *(a1 + 112);
  v41 = *(a2 + 104);
  v42 = *(a2 + 88);
  v43 = *(a2 + 80);
  v44 = *(a2 + 120);
  v45 = *(a2 + 112);
  sub_1D6046038(v25, v26, v27, v28, v29, v30, v31);
  v92 = v43;
  v93 = v42;
  v46 = v43;
  v35 = v40;
  v36 = v91;
  v94 = v45;
  v95 = v44;
  sub_1D6046038(v46, v42, v35, v41, v45, v44, v91);
  if (v37 <= 0x7E)
  {
    goto LABEL_29;
  }

  sub_1D5C67600(v102, v98, v108, v104, v100, v106, v31);
LABEL_31:
  swift_beginAccess();
  v61 = *(a1 + 136);
  swift_beginAccess();
  if (v61 != *(a2 + 136))
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v118 = *(a1 + 144);
  v62 = v118;
  swift_beginAccess();
  v110 = *(a2 + 144);
  v63 = v110;
  sub_1D5EB1500(v62);
  sub_1D5EB1500(v63);
  LOBYTE(v62) = static FormatVisibility.== infix(_:_:)(&v118, &v110);
  sub_1D5EB15C4(v110);
  sub_1D5EB15C4(v118);
  if ((v62 & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v64 = *(a1 + 152);
  swift_beginAccess();
  if (v64 != *(a2 + 152))
  {
    goto LABEL_34;
  }

  v67 = *(a1 + 153);
  v68 = *(a2 + 153);
  if (v67 == 7)
  {
    if (v68 != 7)
    {
      goto LABEL_34;
    }
  }

  else if (v68 == 7 || (sub_1D6DE269C(v67, v68) & 1) == 0)
  {
    goto LABEL_34;
  }

  v69 = *(a1 + 168);
  v70 = *(a2 + 168);
  if (v69 <= 0xFD)
  {
    v71 = *(a2 + 160);
    v118 = *(a1 + 160);
    LOBYTE(v119) = v69;
    if (v70 > 0xFD)
    {
      goto LABEL_34;
    }

    v110 = v71;
    LOBYTE(v111) = v70;
    if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v118, &v110) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v70 <= 0xFD)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v72 = *(a1 + 176);
  swift_beginAccess();
  v73 = *(a2 + 176);

  v74 = sub_1D5BFC390(v72, v73);

  if ((v74 & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v75 = *(a1 + 184);
  swift_beginAccess();
  v76 = *(a2 + 184);

  sub_1D634EB4C(v75, v76);
  v78 = v77;

  if ((v78 & 1) == 0)
  {
    goto LABEL_34;
  }

  v79 = *(a1 + 200);
  v80 = *(a2 + 200);
  if (v79)
  {
    if (!v80 || (*(a1 + 192) != *(a2 + 192) || v79 != v80) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v80)
  {
    goto LABEL_34;
  }

  v81 = *(a1 + 208);
  v82 = *(a1 + 216);
  v83 = *(a1 + 224);
  v105 = *(a1 + 232);
  v107 = *(a1 + 240);
  v109 = *(a1 + 248);
  v84 = *(a2 + 208);
  v85 = *(a2 + 216);
  v86 = *(a2 + 224);
  v87 = *(a2 + 232);
  v101 = *(a2 + 240);
  v103 = *(a2 + 248);
  v88 = v81;
  if (v81)
  {
    v118 = v81;
    v119 = v82;
    v120 = v83;
    v121 = v105;
    v122 = v107;
    v123 = v109;
    v97 = v82;
    if (v84)
    {
      v110 = v84;
      v111 = v85;
      v112 = v86;
      v113 = v87;
      v114 = v101;
      v115 = v103;
      sub_1D5EB1D80(v81, v82, v83, v105, v107, v109);
      sub_1D5EB1D80(v84, v85, v86, v87, v101, v103);
      sub_1D5EB1D80(v88, v82, v83, v105, v107, v109);
      v65 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v118, &v110);
      v89 = v114;

      sub_1D5CBF568(v89);

      v90 = v122;

      sub_1D5CBF568(v90);

      sub_1D5EB2398(v88, v97, v83, v105, v107, v109);
      return v65 & 1;
    }

    sub_1D5EB1D80(v81, v82, v83, v105, v107, v109);
    sub_1D5EB1D80(0, v85, v86, v87, v101, v103);
    sub_1D5EB1D80(v88, v82, v83, v105, v107, v109);

    sub_1D5CBF568(v107);
  }

  else
  {
    sub_1D5EB1D80(0, v82, v83, v105, v107, v109);
    if (!v84)
    {
      sub_1D5EB1D80(0, v85, v86, v87, v101, v103);
      sub_1D5EB2398(0, v82, v83, v105, v107, v109);
      v65 = 1;
      return v65 & 1;
    }

    sub_1D5EB1D80(v84, v85, v86, v87, v101, v103);
  }

  sub_1D5EB2398(v88, v82, v83, v105, v107, v109);
  sub_1D5EB2398(v84, v85, v86, v87, v101, v103);
LABEL_34:
  v65 = 0;
  return v65 & 1;
}

uint64_t _s8NewsFeed19FormatViewNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_24;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(a2 + 48);

  v10 = sub_1D6353814(v8, v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_24;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_24;
    }

    sub_1D633A310(v11, v12);
    v14 = v13;

    if ((v14 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v12)
    {
      goto LABEL_24;
    }
  }

  v15 = *(a1 + 64);
  v16 = *(a2 + 64);
  if ((~v15 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(*(a1 + 64));
    sub_1D5D04BD4(v16);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v15);
      goto LABEL_27;
    }

LABEL_23:
    sub_1D5C8500C(v15);
    sub_1D5C8500C(v16);
    goto LABEL_24;
  }

  *&v68 = *(a1 + 64);
  if ((~v16 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v15);
    sub_1D5D04BD4(v16);
    sub_1D5D04BD4(v15);

    goto LABEL_23;
  }

  *v80 = v16;
  sub_1D5D04BD4(v15);
  sub_1D5D04BD4(v16);
  sub_1D5D04BD4(v15);
  v19 = static FormatBackground.== infix(_:_:)(&v68, v80);

  sub_1D5C8500C(v15);
  if ((v19 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v20 = *(a1 + 72);
  v21 = *(a2 + 72);
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_24;
    }

    sub_1D633C9E8(v20, v21);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v21)
  {
    goto LABEL_24;
  }

  v25 = *(a1 + 80);
  v24 = *(a1 + 88);
  v26 = *(a1 + 96);
  v28 = *(a2 + 80);
  v27 = *(a2 + 88);
  v29 = *(a2 + 96);
  if (v26 > 0xFD)
  {
    sub_1D5ED34B0(*(a1 + 80), *(a1 + 88), *(a1 + 96));
    sub_1D5ED34B0(v28, v27, v29);
    if (v29 > 0xFD)
    {
      sub_1D5ED348C(v25, v24, v26);
      goto LABEL_39;
    }

LABEL_37:
    sub_1D5ED348C(v25, v24, v26);
    sub_1D5ED348C(v28, v27, v29);
    goto LABEL_24;
  }

  *&v68 = *(a1 + 80);
  *(&v68 + 1) = v24;
  LOBYTE(v69) = v26;
  if (v29 > 0xFD)
  {
    sub_1D5ED34B0(v25, v24, v26);
    sub_1D5ED34B0(v28, v27, v29);
    sub_1D5ED34B0(v25, v24, v26);
    sub_1D5ED34A0(v25, v24, v26);
    goto LABEL_37;
  }

  *v80 = v28;
  *&v80[8] = v27;
  v80[16] = v29;
  sub_1D5ED34B0(v25, v24, v26);
  sub_1D5ED34B0(v28, v27, v29);
  sub_1D5ED34B0(v25, v24, v26);
  v30 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v68, v80);
  sub_1D5ED34A0(*v80, *&v80[8], v80[16]);
  sub_1D5ED34A0(v68, *(&v68 + 1), v69);
  sub_1D5ED348C(v25, v24, v26);
  if ((v30 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_39:
  v31 = *(a1 + 152);
  v86[2] = *(a1 + 136);
  v86[3] = v31;
  v86[4] = *(a1 + 168);
  v87 = *(a1 + 184);
  v32 = *(a1 + 120);
  v86[0] = *(a1 + 104);
  v86[1] = v32;
  v33 = *(a2 + 152);
  v88[2] = *(a2 + 136);
  v88[3] = v33;
  v88[4] = *(a2 + 168);
  v89 = *(a2 + 184);
  v34 = *(a2 + 120);
  v88[0] = *(a2 + 104);
  v88[1] = v34;
  v35 = *(a1 + 120);
  v36 = *(a1 + 152);
  v83 = *(a1 + 136);
  v84 = v36;
  v85 = *(a1 + 168);
  v81 = *(a1 + 104);
  v82 = v35;
  v37 = v87;
  *&v80[23] = *(a2 + 120);
  *&v80[39] = *(a2 + 136);
  *&v80[55] = *(a2 + 152);
  *&v80[71] = *(a2 + 168);
  *&v80[7] = *(a2 + 104);
  v38 = v89;
  if (v87 != 254)
  {
    v42 = *(a1 + 120);
    v43 = *(a1 + 152);
    v70 = *(a1 + 136);
    v71 = v43;
    v72 = *(a1 + 168);
    v68 = *(a1 + 104);
    v69 = v42;
    v73 = v87;
    v67 = v87;
    v64 = v70;
    v65 = v43;
    v66 = v72;
    v62 = v68;
    v63 = v42;
    if (v89 != 254)
    {
      v46 = *(a2 + 120);
      v47 = *(a2 + 152);
      v58 = *(a2 + 136);
      v59 = v47;
      v60 = *(a2 + 168);
      v56 = *(a2 + 104);
      v57 = v46;
      v61 = v89;
      v48 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v86, v54, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v88, v54, &qword_1EDF33718, &type metadata for FormatShadow, v48, sub_1D5C34D84);
      sub_1D5D355B8(&v68, v54, &qword_1EDF33718, &type metadata for FormatShadow, v48, sub_1D5C34D84);
      v49 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v62, &v56);
      v52[2] = v58;
      v52[3] = v59;
      v52[4] = v60;
      v53 = v61;
      v52[0] = v56;
      v52[1] = v57;
      sub_1D601144C(v52);
      v54[2] = v64;
      v54[3] = v65;
      v54[4] = v66;
      v55 = v67;
      v54[0] = v62;
      v54[1] = v63;
      sub_1D601144C(v54);
      v58 = v83;
      v59 = v84;
      v60 = v85;
      v56 = v81;
      v57 = v82;
      v61 = v37;
      sub_1D66615F8(&v56, &qword_1EDF33718, &type metadata for FormatShadow, v48, sub_1D5C34D84);
      if ((v49 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_47;
    }

    v58 = v70;
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v56 = v68;
    v57 = v69;
    v44 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v86, v54, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v88, v54, &qword_1EDF33718, &type metadata for FormatShadow, v44, sub_1D5C34D84);
    sub_1D5D355B8(&v68, v54, &qword_1EDF33718, &type metadata for FormatShadow, v44, sub_1D5C34D84);
    sub_1D601144C(&v56);
LABEL_45:
    v70 = v83;
    v71 = v84;
    v72 = v85;
    v68 = v81;
    v69 = v82;
    v76 = *&v80[32];
    v77 = *&v80[48];
    *v78 = *&v80[64];
    v74 = *v80;
    v73 = v37;
    *&v78[15] = *&v80[79];
    v75 = *&v80[16];
    v79 = v38;
    sub_1D5D35558(&v68, &qword_1EC8822D8, &qword_1EDF33718, &type metadata for FormatShadow, sub_1D66F49B8);
    goto LABEL_24;
  }

  if (v89 != 254)
  {
    v45 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v86, &v68, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v88, &v68, &qword_1EDF33718, &type metadata for FormatShadow, v45, sub_1D5C34D84);
    goto LABEL_45;
  }

  v39 = *(a1 + 120);
  v40 = *(a1 + 152);
  v70 = *(a1 + 136);
  v71 = v40;
  v72 = *(a1 + 168);
  v68 = *(a1 + 104);
  v69 = v39;
  v73 = -2;
  v41 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v86, &v62, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v88, &v62, &qword_1EDF33718, &type metadata for FormatShadow, v41, sub_1D5C34D84);
  sub_1D66615F8(&v68, &qword_1EDF33718, &type metadata for FormatShadow, v41, sub_1D5C34D84);
LABEL_47:
  v50 = *(a1 + 185);
  v51 = *(a2 + 185);
  if (v50 == 2)
  {
    if (v51 == 2)
    {
      v17 = 1;
      return v17 & 1;
    }
  }

  else if (v51 != 2)
  {
    v17 = v51 ^ v50 ^ 1;
    return v17 & 1;
  }

LABEL_24:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s8NewsFeed14FormatViewNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_26;
  }

  v63 = *(a1 + 32);
  v57 = *(a2 + 32);
  sub_1D5C82CD8(v63);
  sub_1D5C82CD8(v57);
  v7 = static FormatSize.== infix(_:_:)(&v63, &v57);
  sub_1D5C92A8C(v57);
  sub_1D5C92A8C(v63);
  if ((v7 & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v9)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if (v17)
  {
    v18 = *(a1 + 56);
    v19 = *(a2 + 56);
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_26;
      }

      v20 = _s8NewsFeed19FormatViewNodeStyleC2eeoiySbAC_ACtFZ_0(v18, v19);

      if ((v20 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (v19)
    {
      goto LABEL_26;
    }

    v21 = *(a1 + 64);
    v22 = *(a2 + 64);
    if (v21)
    {
      if (!v22)
      {
        goto LABEL_26;
      }

      v23 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v21, v22);

      if ((v23 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (v22)
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    v24 = *(a1 + 72);
    swift_beginAccess();
    if (v24 != *(a2 + 72))
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    v63 = *(a1 + 80);
    v25 = v63;
    swift_beginAccess();
    v57 = *(a2 + 80);
    v26 = v57;
    sub_1D5EB1500(v25);
    sub_1D5EB1500(v26);
    LOBYTE(v25) = static FormatVisibility.== infix(_:_:)(&v63, &v57);
    sub_1D5EB15C4(v57);
    sub_1D5EB15C4(v63);
    if ((v25 & 1) == 0)
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    v27 = *(a1 + 88);
    swift_beginAccess();
    if (v27 != *(a2 + 88))
    {
      goto LABEL_26;
    }

    v30 = *(a1 + 104);
    v31 = *(a2 + 104);
    if (v30 <= 0xFD)
    {
      v32 = *(a2 + 96);
      v63 = *(a1 + 96);
      LOBYTE(v64) = v30;
      if (v31 > 0xFD)
      {
        goto LABEL_26;
      }

      v57 = v32;
      LOBYTE(v58) = v31;
      if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v63, &v57) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (v31 <= 0xFD)
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    v33 = *(a1 + 112);
    swift_beginAccess();
    v34 = *(a2 + 112);

    v35 = sub_1D5BFC390(v33, v34);

    if (v35)
    {
      v36 = *(a1 + 128);
      v37 = *(a2 + 128);
      if (v36)
      {
        if (!v37 || (*(a1 + 120) != *(a2 + 120) || v36 != v37) && (sub_1D72646CC() & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else if (v37)
      {
        goto LABEL_26;
      }

      v39 = *(a1 + 136);
      v38 = *(a1 + 144);
      v40 = *(a1 + 152);
      v41 = *(a1 + 160);
      v42 = *(a1 + 168);
      v43 = *(a1 + 176);
      v45 = *(a2 + 136);
      v44 = *(a2 + 144);
      v47 = *(a2 + 152);
      v46 = *(a2 + 160);
      v49 = *(a2 + 168);
      v48 = *(a2 + 176);
      v54 = v41;
      v55 = v42;
      v52 = v38;
      v53 = v40;
      v56 = v43;
      if (v39)
      {
        v63 = *(a1 + 136);
        v64 = v38;
        v65 = v40;
        v66 = v41;
        v67 = v42;
        v68 = v43;
        if (v45)
        {
          v57 = v45;
          v58 = v44;
          v59 = v47;
          v60 = v46;
          v61 = v49;
          v62 = v48;
          sub_1D5EB1D80(v39, v38, v40, v41, v42, v43);
          sub_1D5EB1D80(v45, v44, v47, v46, v49, v48);
          sub_1D5EB1D80(v39, v52, v53, v54, v55, v56);
          v28 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v63, &v57);
          v50 = v61;

          sub_1D5CBF568(v50);

          v51 = v67;

          sub_1D5CBF568(v51);

          sub_1D5EB2398(v39, v52, v53, v54, v55, v56);
          return v28 & 1;
        }

        sub_1D5EB1D80(v39, v38, v40, v41, v42, v43);
        sub_1D5EB1D80(0, v44, v47, v46, v49, v48);
        sub_1D5EB1D80(v39, v52, v53, v54, v55, v56);

        sub_1D5CBF568(v55);
      }

      else
      {
        sub_1D5EB1D80(0, v38, v40, v41, v42, v43);
        if (!v45)
        {
          sub_1D5EB1D80(0, v44, v47, v46, v49, v48);
          sub_1D5EB2398(0, v52, v53, v54, v55, v56);
          v28 = 1;
          return v28 & 1;
        }

        sub_1D5EB1D80(v45, v44, v47, v46, v49, v48);
      }

      sub_1D5EB2398(v39, v52, v53, v54, v55, v56);
      sub_1D5EB2398(v45, v44, v47, v46, v49, v48);
    }
  }

LABEL_26:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1D6656130(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_38;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  if ((sub_1D5BF1C0C(v8, *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  swift_beginAccess();
  v11 = *(a2 + 64);
  if (v10)
  {
    if (!v11 || (v9 != *(a2 + 56) || v10 != v11) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v11)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  swift_beginAccess();
  v14 = *(a2 + 80);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_26;
    }

LABEL_38:
    v47 = 0;
    return v47 & 1;
  }

  if (!v14 || (v12 != *(a2 + 72) || v13 != v14) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_26:
  swift_beginAccess();
  v73 = *(a1 + 88);
  swift_beginAccess();
  v67 = *(a2 + 88);
  sub_1D5C82CD8(v73);
  sub_1D5C82CD8(v67);
  v15 = static FormatSize.== infix(_:_:)(&v73, &v67);
  sub_1D5C92A8C(v67);
  sub_1D5C92A8C(v73);
  if ((v15 & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v16 = *(a1 + 96);
  swift_beginAccess();
  v17 = *(a2 + 96);

  v18 = sub_1D6344A40(v16, v17, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v18 & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v19 = *(a1 + 104);
  swift_beginAccess();
  v20 = *(a2 + 104);

  v21 = sub_1D633E44C(v19, v20);

  if ((v21 & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v22 = *(a1 + 112);
  swift_beginAccess();
  if (v22 != *(a2 + 112))
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v24 = *(a1 + 128);
  v25 = *(a1 + 136);
  v73 = *(a1 + 120);
  v23 = v73;
  v74 = v24;
  LOBYTE(v75) = v25;
  swift_beginAccess();
  v27 = *(a2 + 128);
  v28 = *(a2 + 136);
  v67 = *(a2 + 120);
  v26 = v67;
  v68 = v27;
  LOBYTE(v69) = v28;
  sub_1D5C75A4C(v23, v24, v25);
  sub_1D5C75A4C(v26, v27, v28);
  LOBYTE(v23) = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v73, &v67);
  sub_1D5D2F2C8(v67, v68, v69);
  sub_1D5D2F2C8(v73, v74, v75);
  if ((v23 & 1) == 0)
  {
    goto LABEL_38;
  }

  v30 = *(a1 + 144);
  v29 = *(a1 + 152);
  v32 = *(a1 + 160);
  v31 = *(a1 + 168);
  v33 = *(a1 + 176);
  v34 = *(a1 + 184);
  v36 = *(a2 + 144);
  v35 = *(a2 + 152);
  v37 = *(a2 + 160);
  v66 = *(a2 + 168);
  v39 = *(a2 + 176);
  v38 = *(a2 + 184);
  if (!v30)
  {
    v62 = v31;
    v65 = v33;
    v50 = v31;
    v51 = v34;
    sub_1D5EB1D80(0, v29, v32, v50, v33, v34);
    if (!v36)
    {
      sub_1D5EB1D80(0, v35, v37, v66, v39, v38);
      sub_1D5EB2398(0, v29, v32, v62, v65, v51);
      v47 = 1;
      return v47 & 1;
    }

    v61 = v38;
    sub_1D5EB1D80(v36, v35, v37, v66, v39, v38);
    v52 = v51;
    v54 = v62;
    v53 = v65;
    goto LABEL_37;
  }

  v73 = v30;
  v74 = v29;
  v75 = v32;
  v76 = v31;
  v77 = v33;
  v78 = v34;
  if (!v36)
  {
    v55 = v31;
    v63 = v31;
    v53 = v33;
    v56 = v38;
    v52 = v34;
    sub_1D5EB1D80(v30, v29, v32, v55, v33, v34);
    v61 = v56;
    v57 = v56;
    v54 = v63;
    sub_1D5EB1D80(0, v35, v37, v66, v39, v57);
    sub_1D5EB1D80(v30, v29, v32, v63, v53, v52);

    sub_1D5CBF568(v53);

LABEL_37:
    sub_1D5EB2398(v30, v29, v32, v54, v53, v52);
    sub_1D5EB2398(v36, v35, v37, v66, v39, v61);
    goto LABEL_38;
  }

  v67 = v36;
  v68 = v35;
  v69 = v37;
  v70 = v66;
  v71 = v39;
  v72 = v38;
  v60 = v39;
  v40 = v33;
  v64 = v33;
  v59 = v30;
  v41 = v34;
  sub_1D5EB1D80(v30, v29, v32, v31, v33, v34);
  sub_1D5EB1D80(v36, v35, v37, v66, v60, v38);
  v42 = v30;
  v43 = v29;
  v44 = v32;
  v45 = v32;
  v46 = v41;
  sub_1D5EB1D80(v42, v43, v44, v31, v40, v41);
  v47 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v73, &v67);
  v48 = v71;

  sub_1D5CBF568(v48);

  v49 = v77;

  sub_1D5CBF568(v49);

  sub_1D5EB2398(v59, v43, v45, v31, v64, v46);
  return v47 & 1;
}

uint64_t sub_1D66567E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (v7 != *(a2 + 32) || v8 != v9) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v9)
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  swift_beginAccess();
  v12 = *(a2 + 56);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

LABEL_41:
    v47 = 0;
    return v47 & 1;
  }

  if (!v12 || (v10 != *(a2 + 48) || v11 != v12) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_20:
  swift_beginAccess();
  v73 = *(a1 + 64);
  swift_beginAccess();
  v67 = *(a2 + 64);
  sub_1D5C82CD8(v73);
  sub_1D5C82CD8(v67);
  v13 = static FormatSize.== infix(_:_:)(&v73, &v67);
  sub_1D5C92A8C(v67);
  sub_1D5C92A8C(v73);
  if ((v13 & 1) == 0)
  {
    goto LABEL_41;
  }

  v14 = *(a1 + 80);
  v15 = *(a2 + 80);
  if (!v14)
  {
    if (!v15)
    {

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (!v15)
  {
LABEL_28:

    goto LABEL_41;
  }

  if ((*(a1 + 72) != *(a2 + 72) || v14 != v15) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_30:
  swift_beginAccess();
  v16 = *(a1 + 88);
  swift_beginAccess();
  v17 = *(a2 + 88);

  v18 = sub_1D6344A40(v16, v17, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v18 & 1) == 0)
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  v19 = *(a1 + 96);
  swift_beginAccess();
  v20 = *(a2 + 96);

  v21 = sub_1D633E44C(v19, v20);

  if ((v21 & 1) == 0)
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  v22 = *(a1 + 104);
  swift_beginAccess();
  if (v22 != *(a2 + 104))
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  v24 = *(a1 + 120);
  v25 = *(a1 + 128);
  v73 = *(a1 + 112);
  v23 = v73;
  v74 = v24;
  LOBYTE(v75) = v25;
  swift_beginAccess();
  v27 = *(a2 + 120);
  v28 = *(a2 + 128);
  v67 = *(a2 + 112);
  v26 = v67;
  v68 = v27;
  LOBYTE(v69) = v28;
  sub_1D5C75A4C(v23, v24, v25);
  sub_1D5C75A4C(v26, v27, v28);
  LOBYTE(v23) = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v73, &v67);
  sub_1D5D2F2C8(v67, v68, v69);
  sub_1D5D2F2C8(v73, v74, v75);
  if ((v23 & 1) == 0)
  {
    goto LABEL_41;
  }

  v30 = *(a1 + 136);
  v29 = *(a1 + 144);
  v32 = *(a1 + 152);
  v31 = *(a1 + 160);
  v33 = *(a1 + 168);
  v34 = *(a1 + 176);
  v36 = *(a2 + 136);
  v35 = *(a2 + 144);
  v37 = *(a2 + 152);
  v66 = *(a2 + 160);
  v39 = *(a2 + 168);
  v38 = *(a2 + 176);
  if (!v30)
  {
    v62 = v31;
    v65 = v33;
    v50 = v31;
    v51 = v34;
    sub_1D5EB1D80(0, v29, v32, v50, v33, v34);
    if (!v36)
    {
      sub_1D5EB1D80(0, v35, v37, v66, v39, v38);
      sub_1D5EB2398(0, v29, v32, v62, v65, v51);
      v47 = 1;
      return v47 & 1;
    }

    v61 = v38;
    sub_1D5EB1D80(v36, v35, v37, v66, v39, v38);
    v52 = v51;
    v54 = v62;
    v53 = v65;
    goto LABEL_40;
  }

  v73 = v30;
  v74 = v29;
  v75 = v32;
  v76 = v31;
  v77 = v33;
  v78 = v34;
  if (!v36)
  {
    v55 = v31;
    v63 = v31;
    v53 = v33;
    v56 = v38;
    v52 = v34;
    sub_1D5EB1D80(v30, v29, v32, v55, v33, v34);
    v61 = v56;
    v57 = v56;
    v54 = v63;
    sub_1D5EB1D80(0, v35, v37, v66, v39, v57);
    sub_1D5EB1D80(v30, v29, v32, v63, v53, v52);

    sub_1D5CBF568(v53);

LABEL_40:
    sub_1D5EB2398(v30, v29, v32, v54, v53, v52);
    sub_1D5EB2398(v36, v35, v37, v66, v39, v61);
    goto LABEL_41;
  }

  v67 = v36;
  v68 = v35;
  v69 = v37;
  v70 = v66;
  v71 = v39;
  v72 = v38;
  v60 = v39;
  v40 = v33;
  v64 = v33;
  v59 = v30;
  v41 = v34;
  sub_1D5EB1D80(v30, v29, v32, v31, v33, v34);
  sub_1D5EB1D80(v36, v35, v37, v66, v60, v38);
  v42 = v30;
  v43 = v29;
  v44 = v32;
  v45 = v32;
  v46 = v41;
  sub_1D5EB1D80(v42, v43, v44, v31, v40, v41);
  v47 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v73, &v67);
  v48 = v71;

  sub_1D5CBF568(v48);

  v49 = v77;

  sub_1D5CBF568(v49);

  sub_1D5EB2398(v59, v43, v45, v31, v64, v46);
  return v47 & 1;
}

uint64_t _s8NewsFeed20FormatImageNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v107 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v100[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1E69D6A58];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v100[-v11];
  sub_1D66F4EB8(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v8);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v100[-v16];
  swift_beginAccess();
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  swift_beginAccess();
  if (__PAIR128__(v19, v18) != *(a2 + 16) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_24;
  }

  v106 = v4;
  swift_beginAccess();
  v20 = *(a1 + 48);
  swift_beginAccess();
  v21 = *(a2 + 48);

  v22 = sub_1D63535A4(v20, v21);

  if ((v22 & 1) == 0)
  {
    goto LABEL_24;
  }

  v23 = *(a1 + 56);
  v24 = *(a2 + 56);
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_24;
    }

    sub_1D633A310(v23, v24);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v24)
    {
      goto LABEL_24;
    }
  }

  swift_beginAccess();
  v27 = *(a1 + 64);
  swift_beginAccess();
  v28 = *(a2 + 64);
  if (v27)
  {
    if (!v28)
    {
      goto LABEL_24;
    }

    sub_1D6347044(v29, v28);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v28)
  {
    goto LABEL_24;
  }

  v32 = *(a1 + 72);
  v33 = *(a2 + 72);
  if ((~v32 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(*(a1 + 72));
    sub_1D5D04BD4(v33);
    if ((~v33 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v32);
      goto LABEL_27;
    }

LABEL_23:
    sub_1D5C8500C(v32);
    sub_1D5C8500C(v33);
    goto LABEL_24;
  }

  *&v124 = *(a1 + 72);
  if ((~v33 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v32);
    sub_1D5D04BD4(v33);
    sub_1D5D04BD4(v32);

    goto LABEL_23;
  }

  *v136 = v33;
  sub_1D5D04BD4(v32);
  sub_1D5D04BD4(v33);
  sub_1D5D04BD4(v32);
  v36 = _s8NewsFeed16FormatBackgroundO2eeoiySbAC_ACtFZ_0(&v124, v136);

  sub_1D5C8500C(v32);
  if ((v36 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v37 = *(a1 + 80);
  v38 = *(a2 + 80);
  if (v37)
  {
    if (!v38)
    {
      goto LABEL_24;
    }

    sub_1D633C9E8(v37, v38);
    v40 = v39;

    if ((v40 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v38)
  {
    goto LABEL_24;
  }

  v41 = *(a1 + 88);
  v42 = *(a2 + 88);
  if (v41 == 9)
  {
    if (v42 != 9)
    {
      goto LABEL_24;
    }
  }

  else if (v42 == 9 || (sub_1D6DDD2B8(v41, v42) & 1) == 0)
  {
    goto LABEL_24;
  }

  v43 = *(a1 + 96);
  v44 = *(a1 + 104);
  v104 = v43;
  v105 = v44;
  v45 = *(a1 + 112);
  v46 = *(a2 + 96);
  v47 = *(a2 + 104);
  v48 = *(a2 + 112);
  v102 = v46;
  v103 = v47;
  if (v45 > 0xFD)
  {
    v101 = v48;
    v49 = v46;
    sub_1D5ED34B0(v43, v105, v45);
    v50 = v49;
    v48 = v101;
    sub_1D5ED34B0(v50, v47, v101);
    if (v48 > 0xFD)
    {
      sub_1D5ED348C(v104, v105, v45);
      goto LABEL_44;
    }

LABEL_42:
    sub_1D5ED348C(v104, v105, v45);
    sub_1D5ED348C(v102, v103, v48);
    goto LABEL_24;
  }

  *&v124 = v43;
  *(&v124 + 1) = v105;
  LOBYTE(v125) = v45;
  if (v48 > 0xFD)
  {
    v51 = v43;
    v52 = v105;
    v53 = v46;
    sub_1D5ED34B0(v43, v105, v45);
    sub_1D5ED34B0(v53, v47, v48);
    sub_1D5ED34B0(v51, v52, v45);
    sub_1D5ED34A0(v51, v52, v45);
    goto LABEL_42;
  }

  *v136 = v46;
  *&v136[8] = v47;
  v136[16] = v48;
  v54 = v105;
  sub_1D5ED34B0(v43, v105, v45);
  sub_1D5ED34B0(v102, v103, v48);
  v55 = v104;
  sub_1D5ED34B0(v104, v54, v45);
  LODWORD(v103) = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v124, v136);
  sub_1D5ED34A0(*v136, *&v136[8], v136[16]);
  sub_1D5ED34A0(v124, *(&v124 + 1), v125);
  sub_1D5ED348C(v55, v54, v45);
  if ((v103 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_44:
  v56 = *(a1 + 120);
  v57 = *(a2 + 120);
  if (v56 == 3)
  {
    sub_1D5D0AF9C(3);
    if (v57 == 3)
    {
      sub_1D5D0AF9C(3);
      sub_1D5D0AFAC(3);
      goto LABEL_52;
    }

    sub_1D5D0AF9C(v57);
LABEL_50:
    sub_1D5D0AFAC(v56);
    sub_1D5D0AFAC(v57);
    goto LABEL_24;
  }

  *&v124 = *(a1 + 120);
  if (v57 == 3)
  {
    sub_1D5D0AF9C(v56);
    sub_1D5D0AF9C(3);
    sub_1D5D0AF9C(v56);
    sub_1D5D0AFCC(v56);
    goto LABEL_50;
  }

  *v136 = v57;
  sub_1D5D0AF9C(v56);
  sub_1D5D0AF9C(v57);
  sub_1D5D0AF9C(v56);
  v58 = static FormatImageRenderingMode.== infix(_:_:)(&v124, v136);
  sub_1D5D0AFCC(*v136);
  sub_1D5D0AFCC(v124);
  sub_1D5D0AFAC(v56);
  if (!v58)
  {
    goto LABEL_24;
  }

LABEL_52:
  v59 = *(a1 + 128);
  v60 = *(a2 + 128);
  if (v59 == 4)
  {
    if (v60 != 4)
    {
      goto LABEL_24;
    }
  }

  else if (v60 == 4 || (sub_1D6DDD190(v59, v60) & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v61 = *(a1 + 136);
  swift_beginAccess();
  v62 = *(a2 + 136);
  if (v61)
  {
    if (!v62 || (sub_1D6348EA4(v61, v62) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v62)
  {
    goto LABEL_24;
  }

  v63 = *(a1 + 160);
  v64 = *(a1 + 192);
  v143 = *(a1 + 176);
  v144 = v64;
  v65 = *(a1 + 192);
  v145 = *(a1 + 208);
  v66 = *(a1 + 160);
  v142[0] = *(a1 + 144);
  v142[1] = v66;
  v67 = *(a2 + 160);
  v68 = *(a2 + 192);
  v148 = *(a2 + 176);
  v149 = v68;
  v69 = *(a2 + 192);
  v150 = *(a2 + 208);
  v70 = *(a2 + 160);
  v147[0] = *(a2 + 144);
  v147[1] = v70;
  v139 = v143;
  v140 = v65;
  v141 = *(a1 + 208);
  v137 = v142[0];
  v138 = v63;
  *&v136[23] = v67;
  *&v136[39] = v148;
  *&v136[55] = v69;
  *&v136[71] = *(a2 + 208);
  v146 = *(a1 + 224);
  v151 = *(a2 + 224);
  v71 = v146;
  *&v136[7] = v147[0];
  v72 = v151;
  if (v146 == 254)
  {
    if (v151 == 254)
    {
      v73 = *(a1 + 192);
      v126 = *(a1 + 176);
      v127 = v73;
      v128 = *(a1 + 208);
      v74 = *(a1 + 160);
      v124 = *(a1 + 144);
      v125 = v74;
      v129 = -2;
      v75 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v142, &v118, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v147, &v118, &qword_1EDF33718, &type metadata for FormatShadow, v75, sub_1D5C34D84);
      sub_1D66615F8(&v124, &qword_1EDF33718, &type metadata for FormatShadow, v75, sub_1D5C34D84);
      goto LABEL_70;
    }

    v79 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v142, &v124, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v147, &v124, &qword_1EDF33718, &type metadata for FormatShadow, v79, sub_1D5C34D84);
LABEL_68:
    v126 = v139;
    v127 = v140;
    v128 = v141;
    v124 = v137;
    v125 = v138;
    v132 = *&v136[32];
    v133 = *&v136[48];
    *v134 = *&v136[64];
    v130 = *v136;
    v129 = v71;
    *&v134[15] = *&v136[79];
    v131 = *&v136[16];
    v135 = v72;
    sub_1D5D35558(&v124, &qword_1EC8822D8, &qword_1EDF33718, &type metadata for FormatShadow, sub_1D66F49B8);
    goto LABEL_24;
  }

  v76 = *(a1 + 192);
  v126 = *(a1 + 176);
  v127 = v76;
  v128 = *(a1 + 208);
  v77 = *(a1 + 160);
  v124 = *(a1 + 144);
  v125 = v77;
  v129 = v146;
  v123 = v146;
  v120 = v126;
  v121 = v76;
  v122 = v128;
  v118 = v124;
  v119 = v77;
  if (v151 == 254)
  {
    v114 = v126;
    v115 = v127;
    v116 = v128;
    v117 = v129;
    v112 = v124;
    v113 = v125;
    v78 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v142, v110, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v147, v110, &qword_1EDF33718, &type metadata for FormatShadow, v78, sub_1D5C34D84);
    sub_1D5D355B8(&v124, v110, &qword_1EDF33718, &type metadata for FormatShadow, v78, sub_1D5C34D84);
    sub_1D601144C(&v112);
    goto LABEL_68;
  }

  v80 = *(a2 + 192);
  v114 = *(a2 + 176);
  v115 = v80;
  v116 = *(a2 + 208);
  v81 = *(a2 + 160);
  v112 = *(a2 + 144);
  v113 = v81;
  v117 = v151;
  v82 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v142, v110, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v147, v110, &qword_1EDF33718, &type metadata for FormatShadow, v82, sub_1D5C34D84);
  sub_1D5D355B8(&v124, v110, &qword_1EDF33718, &type metadata for FormatShadow, v82, sub_1D5C34D84);
  v83 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v118, &v112);
  v108[2] = v114;
  v108[3] = v115;
  v108[4] = v116;
  v109 = v117;
  v108[0] = v112;
  v108[1] = v113;
  sub_1D601144C(v108);
  v110[2] = v120;
  v110[3] = v121;
  v110[4] = v122;
  v111 = v123;
  v110[0] = v118;
  v110[1] = v119;
  sub_1D601144C(v110);
  v114 = v139;
  v115 = v140;
  v116 = v141;
  v112 = v137;
  v113 = v138;
  v117 = v71;
  sub_1D66615F8(&v112, &qword_1EDF33718, &type metadata for FormatShadow, v82, sub_1D5C34D84);
  if ((v83 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_70:
  v84 = *(a1 + 232);
  v85 = *(a2 + 232);
  if ((~v84 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(*(a1 + 232));
    sub_1D5CFCFAC(v85);
    if ((~v85 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v84);
      goto LABEL_77;
    }

LABEL_75:
    sub_1D5C84FF4(v84);
    sub_1D5C84FF4(v85);
    goto LABEL_24;
  }

  *&v124 = *(a1 + 232);
  if ((~v85 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v84);
    sub_1D5CFCFAC(v85);
    sub_1D5CFCFAC(v84);

    goto LABEL_75;
  }

  *v136 = v85;
  sub_1D5CFCFAC(v84);
  sub_1D5CFCFAC(v85);
  sub_1D5CFCFAC(v84);
  v86 = static FormatColor.== infix(_:_:)(&v124, v136);

  sub_1D5C84FF4(v84);
  if ((v86 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_77:
  v87 = *(a1 + 240);
  v88 = *(a2 + 240);
  if (v87 == 2)
  {
    if (v88 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v88 == 2 || ((v88 ^ v87) & 1) != 0)
  {
    goto LABEL_24;
  }

  v90 = *(a1 + 248);
  v89 = *(a1 + 256);
  v91 = *(a2 + 248);
  v105 = *(a2 + 256);
  if (v90 != 1)
  {
    *&v124 = v90;
    *(&v124 + 1) = v89;
    if (v91 != 1)
    {
      *v136 = v91;
      *&v136[8] = v105;
      sub_1D62B5D88(v90);
      sub_1D62B5D88(v91);
      sub_1D62B5D88(v90);
      LODWORD(v105) = _s8NewsFeed22FormatImageNodeRequestV2eeoiySbAC_ACtFZ_0(&v124, v136);

      sub_1D62B5D44(v90);
      if ((v105 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_90;
    }

    sub_1D62B5D88(v90);
    sub_1D62B5D88(1);
    sub_1D62B5D88(v90);

LABEL_88:
    sub_1D62B5D44(v90);
    sub_1D62B5D44(v91);
    goto LABEL_24;
  }

  sub_1D62B5D88(1);
  if (v91 != 1)
  {
    sub_1D62B5D88(v91);
    goto LABEL_88;
  }

  sub_1D62B5D88(1);
  sub_1D62B5D44(1);
LABEL_90:
  v92 = OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask;
  v93 = *(v14 + 48);
  v94 = MEMORY[0x1E69D6A58];
  sub_1D5CDE2EC(a1 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, v17, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5CDE2EC(a2 + v92, &v17[v93], &qword_1EDF45AD0, v94);
  v95 = *(v107 + 48);
  if (v95(v17, 1, v106) == 1)
  {
    if (v95(&v17[v93], 1, v106) == 1)
    {
      sub_1D5D35558(v17, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
      v34 = 1;
      return v34 & 1;
    }
  }

  else
  {
    sub_1D5CDE2EC(v17, v12, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v95(&v17[v93], 1, v106) != 1)
    {
      v97 = v106;
      v98 = v107;
      (*(v107 + 32))(v7, &v17[v93], v106);
      sub_1D5B58B84(&qword_1EC881E90, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A68]);
      v34 = sub_1D7261FBC();
      v99 = *(v98 + 8);
      v99(v7, v97);
      v99(v12, v97);
      sub_1D5D35558(v17, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
      return v34 & 1;
    }

    v96.n128_f64[0] = (*(v107 + 8))(v12, v106);
  }

  sub_1D66F4424(v17, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v96);
LABEL_24:
  v34 = 0;
  return v34 & 1;
}

unint64_t sub_1D6657ED0()
{
  result = qword_1EDF296E8;
  if (!qword_1EDF296E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF296E8);
  }

  return result;
}

void sub_1D6657F24(uint64_t a1)
{
  if (!qword_1EDF19FE8)
  {
    sub_1D6657FB8(255);
    sub_1D5B58B84(&qword_1EDF251B8, sub_1D6657FB8, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19FE8);
    }
  }
}

void sub_1D6657FB8(uint64_t a1)
{
  if (!qword_1EDF251B0)
  {
    v4[0] = &_s10CodingKeysON_287;
    v4[1] = sub_1D665803C();
    v4[2] = sub_1D6658090();
    v4[3] = sub_1D66580E4();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF251B0);
    }
  }
}

unint64_t sub_1D665803C()
{
  result = qword_1EDF27120;
  if (!qword_1EDF27120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27120);
  }

  return result;
}

unint64_t sub_1D6658090()
{
  result = qword_1EDF27128;
  if (!qword_1EDF27128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27128);
  }

  return result;
}

unint64_t sub_1D66580E4()
{
  result = qword_1EDF27130;
  if (!qword_1EDF27130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27130);
  }

  return result;
}

void sub_1D6658138(uint64_t a1)
{
  if (!qword_1EDF08BC8)
  {
    sub_1D66581CC(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03178, sub_1D66581CC, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08BC8);
    }
  }
}

void sub_1D66581CC(uint64_t a1)
{
  if (!qword_1EDF03170)
  {
    sub_1D6657FB8(255);
    sub_1D5B58B84(&qword_1EDF251B8, sub_1D6657FB8, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03170);
    }
  }
}

unint64_t sub_1D66582DC()
{
  result = qword_1EDF32868;
  if (!qword_1EDF32868)
  {
    sub_1D5C30060(255, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32868);
  }

  return result;
}

unint64_t sub_1D665836C()
{
  result = qword_1EDF25D00;
  if (!qword_1EDF25D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D00);
  }

  return result;
}

void sub_1D66583C0(uint64_t a1)
{
  if (!qword_1EDF19F78)
  {
    sub_1D6658454(255);
    sub_1D5B58B84(&qword_1EDF250D8, sub_1D6658454, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19F78);
    }
  }
}

void sub_1D6658454(uint64_t a1)
{
  if (!qword_1EDF250D0)
  {
    v4[0] = &_s10CodingKeysON_286;
    v4[1] = sub_1D66584D8();
    v4[2] = sub_1D665852C();
    v4[3] = sub_1D6658580();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF250D0);
    }
  }
}

unint64_t sub_1D66584D8()
{
  result = qword_1EDF25CE0;
  if (!qword_1EDF25CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25CE0);
  }

  return result;
}

unint64_t sub_1D665852C()
{
  result = qword_1EDF25CE8;
  if (!qword_1EDF25CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25CE8);
  }

  return result;
}

unint64_t sub_1D6658580()
{
  result = qword_1EDF25CF0;
  if (!qword_1EDF25CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25CF0);
  }

  return result;
}

void sub_1D66585D4(uint64_t a1)
{
  if (!qword_1EDF08B40)
  {
    sub_1D6658668(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03068, sub_1D6658668, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08B40);
    }
  }
}

void sub_1D6658668(uint64_t a1)
{
  if (!qword_1EDF03060)
  {
    sub_1D6658454(255);
    sub_1D5B58B84(&qword_1EDF250D8, sub_1D6658454, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03060);
    }
  }
}

unint64_t sub_1D6658778()
{
  result = qword_1EDF3A3A8;
  if (!qword_1EDF3A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A3A8);
  }

  return result;
}

void sub_1D66587CC(uint64_t a1)
{
  if (!qword_1EC885F98)
  {
    sub_1D5E1C94C(255);
    sub_1D5B58B84(&qword_1EC87FA18, sub_1D5E1C94C, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC885F98);
    }
  }
}

unint64_t sub_1D6658860()
{
  result = qword_1EC885FA8;
  if (!qword_1EC885FA8)
  {
    sub_1D5B5BF78(255, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EC885FB0, type metadata accessor for FormatWorkspaceGroup, &protocol conformance descriptor for FormatWorkspaceGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FA8);
  }

  return result;
}

unint64_t sub_1D6658938()
{
  result = qword_1EC885FB8;
  if (!qword_1EC885FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FB8);
  }

  return result;
}

unint64_t sub_1D665898C()
{
  result = qword_1EC885FC0;
  if (!qword_1EC885FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FC0);
  }

  return result;
}

unint64_t sub_1D66589E0()
{
  result = qword_1EC885FC8;
  if (!qword_1EC885FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FC8);
  }

  return result;
}

unint64_t sub_1D6658A34()
{
  result = qword_1EC885FD0;
  if (!qword_1EC885FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FD0);
  }

  return result;
}

unint64_t sub_1D6658A88()
{
  result = qword_1EC885FD8;
  if (!qword_1EC885FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FD8);
  }

  return result;
}

unint64_t sub_1D6658ADC()
{
  result = qword_1EC885FE0;
  if (!qword_1EC885FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FE0);
  }

  return result;
}

unint64_t sub_1D6658B30()
{
  result = qword_1EC885FE8;
  if (!qword_1EC885FE8)
  {
    sub_1D5C2E60C(255, &qword_1EC885F90, sub_1D60CEE3C, sub_1D60CEE90, &type metadata for FormatWorkspacePackage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FE8);
  }

  return result;
}

void sub_1D6658BC0(uint64_t a1)
{
  if (!qword_1EC885FF0)
  {
    sub_1D5E1C910(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EC87FA20, sub_1D5E1C910, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC885FF0);
    }
  }
}

unint64_t sub_1D6658CE4()
{
  result = qword_1EC885FF8;
  if (!qword_1EC885FF8)
  {
    sub_1D5B5BF78(255, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EC886000, type metadata accessor for FormatWorkspaceGroup, &protocol conformance descriptor for FormatWorkspaceGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FF8);
  }

  return result;
}

unint64_t sub_1D6658DBC()
{
  result = qword_1EC886008;
  if (!qword_1EC886008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886008);
  }

  return result;
}

unint64_t sub_1D6658E10()
{
  result = qword_1EC886010;
  if (!qword_1EC886010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886010);
  }

  return result;
}

unint64_t sub_1D6658E64()
{
  result = qword_1EC886018;
  if (!qword_1EC886018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886018);
  }

  return result;
}

unint64_t sub_1D6658EB8()
{
  result = qword_1EC886020;
  if (!qword_1EC886020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886020);
  }

  return result;
}

unint64_t sub_1D6658F0C()
{
  result = qword_1EC886028;
  if (!qword_1EC886028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886028);
  }

  return result;
}

unint64_t sub_1D6658F60()
{
  result = qword_1EC886030;
  if (!qword_1EC886030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886030);
  }

  return result;
}

unint64_t sub_1D6658FB4()
{
  result = qword_1EC886040;
  if (!qword_1EC886040)
  {
    sub_1D5C34D84(255, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
    sub_1D60CEE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886040);
  }

  return result;
}

unint64_t sub_1D6659050()
{
  result = qword_1EDF07690;
  if (!qword_1EDF07690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07690);
  }

  return result;
}

unint64_t sub_1D66590A4()
{
  result = qword_1EDF07668;
  if (!qword_1EDF07668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07668);
  }

  return result;
}

unint64_t sub_1D66590F8()
{
  result = qword_1EDF07640;
  if (!qword_1EDF07640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07640);
  }

  return result;
}

unint64_t sub_1D665914C()
{
  result = qword_1EC886050;
  if (!qword_1EC886050)
  {
    sub_1D5C30060(255, &qword_1EC886048, sub_1D5C9B86C, &type metadata for FormatSyncImageContent, type metadata accessor for FormatSelectorValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886050);
  }

  return result;
}

unint64_t sub_1D665928C()
{
  result = qword_1EC886058;
  if (!qword_1EC886058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886058);
  }

  return result;
}

void sub_1D66592E0(uint64_t a1)
{
  if (!qword_1EDF088A8)
  {
    sub_1D5E1C8A0(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02B38, sub_1D5E1C8A0, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF088A8);
    }
  }
}

unint64_t sub_1D6659404()
{
  result = qword_1EDF05178;
  if (!qword_1EDF05178)
  {
    sub_1D5C34D84(255, &qword_1EDF1B448, &type metadata for FormatType, MEMORY[0x1E69E62F8]);
    sub_1D5B4C7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05178);
  }

  return result;
}

unint64_t sub_1D66594A0()
{
  result = qword_1EDF04F08;
  if (!qword_1EDF04F08)
  {
    sub_1D5C34D84(255, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D5C50B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04F08);
  }

  return result;
}

void sub_1D665953C(uint64_t a1)
{
  if (!qword_1EDF08DB8)
  {
    sub_1D66595D0(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03558, sub_1D66595D0, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08DB8);
    }
  }
}

void sub_1D66595D0(uint64_t a1)
{
  if (!qword_1EDF03550)
  {
    sub_1D5C57044(255);
    sub_1D5B58B84(&qword_1EDF25518, sub_1D5C57044, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03550);
    }
  }
}

unint64_t sub_1D66596F4()
{
  result = qword_1EDF113E0;
  if (!qword_1EDF113E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF113E0);
  }

  return result;
}

unint64_t sub_1D6659748()
{
  result = qword_1EC886060;
  if (!qword_1EC886060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886060);
  }

  return result;
}

unint64_t sub_1D665979C()
{
  result = qword_1EDF0A880;
  if (!qword_1EDF0A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A880);
  }

  return result;
}

unint64_t sub_1D66597F0()
{
  result = qword_1EDF29758;
  if (!qword_1EDF29758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29758);
  }

  return result;
}

unint64_t sub_1D6659844()
{
  result = qword_1EDF110F8;
  if (!qword_1EDF110F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF110F8);
  }

  return result;
}

unint64_t sub_1D6659898()
{
  result = qword_1EDF0E428;
  if (!qword_1EDF0E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E428);
  }

  return result;
}

void sub_1D66598EC(uint64_t a1)
{
  if (!qword_1EDF08EE8)
  {
    sub_1D5E1C7DC(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08EE8);
    }
  }
}

unint64_t sub_1D6659A24()
{
  result = qword_1EDF0E2C0;
  if (!qword_1EDF0E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E2C0);
  }

  return result;
}

unint64_t sub_1D6659A78()
{
  result = qword_1EDF04FC0;
  if (!qword_1EDF04FC0)
  {
    sub_1D5C34D84(255, &qword_1EDF04FC8, &type metadata for FormatSourceItem, MEMORY[0x1E69E62F8]);
    sub_1D5C65960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04FC0);
  }

  return result;
}

unint64_t sub_1D6659B14()
{
  result = qword_1EC886070;
  if (!qword_1EC886070)
  {
    sub_1D5B5BF78(255, &qword_1EC886068, MEMORY[0x1E69D6A58], MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58], MEMORY[0x1E69D6A60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886070);
  }

  return result;
}

unint64_t sub_1D6659BEC()
{
  result = qword_1EDF04CB0;
  if (!qword_1EDF04CB0)
  {
    sub_1D5C34D84(255, &qword_1EDF04CB8, &type metadata for FormatButtonNodeStateMask, MEMORY[0x1E69E62F8]);
    sub_1D5C65AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04CB0);
  }

  return result;
}

unint64_t sub_1D6659C88()
{
  result = qword_1EDF04FE0;
  if (!qword_1EDF04FE0)
  {
    sub_1D5C34D84(255, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
    sub_1D5C624B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04FE0);
  }

  return result;
}

unint64_t sub_1D6659D24()
{
  result = qword_1EDF122C0;
  if (!qword_1EDF122C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF122C0);
  }

  return result;
}

uint64_t sub_1D6659D78(void *a1)
{
  v2 = v1;
  sub_1D5C2E60C(0, &qword_1EDF3BC20, sub_1D5C588A4, sub_1D5C588F8, &type metadata for FormatOptionsNodeStatement);
  *&v41 = v4;
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v37 - v6;
  sub_1D670677C(0);
  v9 = v8;
  *&v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665A3A8(0);
  v14 = v13;
  sub_1D5B58B84(&qword_1EDF0C590, sub_1D665A3A8, &unk_1D7321584);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v14;
  }

  v40 = v7;
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1D7264AFC();
  v17 = Dictionary<>.errorOnUnknownKeys.getter(v16);

  v18 = v41;
  v19 = v49;
  if (v17)
  {
    v20 = sub_1D726433C();
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = (v20 + 48);
      while (*v22 != 1)
      {
        v22 += 24;
        if (!--v21)
        {
          goto LABEL_7;
        }
      }

      v26 = a1;
      v27 = v12;
      v29 = *(v22 - 2);
      v28 = *(v22 - 1);

      v14 = sub_1D66130BC();
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v30 = v29;
      *(v30 + 8) = v28;
      *(v30 + 16) = v14;
      *(v30 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      v31 = v27;
      a1 = v26;
      (*(v42 + 8))(v31, v15);
      goto LABEL_10;
    }

LABEL_7:
  }

  v38 = sub_1D5C31D18(v12, 0, 0, 0, sub_1D670677C);
  v39 = v23;
  v45 = xmmword_1D728CF30;
  LOBYTE(v46) = 0;
  sub_1D5C58CA0();
  v24 = v40;
  sub_1D726431C();
  v25 = v42;
  v37 = sub_1D725A74C();
  (*(v19 + 8))(v24, v18);
  v43 = xmmword_1D7297410;
  v44 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v25 + 8))(v12, v15);
  v33 = v47;
  v34 = v48;
  type metadata accessor for FormatVariableNode();
  v41 = v46;
  v42 = v45;
  v14 = swift_allocObject();
  swift_beginAccess();
  v35 = v39;
  *(v14 + 16) = v38;
  *(v14 + 24) = v35;
  swift_beginAccess();
  *(v14 + 32) = v37;
  v36 = v42;
  *(v14 + 56) = v41;
  *(v14 + 40) = v36;
  *(v14 + 72) = v33;
  *(v14 + 80) = v34;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

void sub_1D665A280(uint64_t a1)
{
  if (!qword_1EDF08DD0)
  {
    sub_1D665A314(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03588, sub_1D665A314, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08DD0);
    }
  }
}

void sub_1D665A314(uint64_t a1)
{
  if (!qword_1EDF03580)
  {
    sub_1D665A3A8(255);
    sub_1D5B58B84(&qword_1EDF0C590, sub_1D665A3A8, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03580);
    }
  }
}

void sub_1D665A3A8(uint64_t a1)
{
  if (!qword_1EDF0C588)
  {
    v4[0] = &_s10CodingKeysON_281;
    v4[1] = sub_1D665A42C();
    v4[2] = sub_1D665A480();
    v4[3] = sub_1D665A4D4();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF0C588);
    }
  }
}

unint64_t sub_1D665A42C()
{
  result = qword_1EDF10178;
  if (!qword_1EDF10178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10178);
  }

  return result;
}

unint64_t sub_1D665A480()
{
  result = qword_1EDF10180;
  if (!qword_1EDF10180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10180);
  }

  return result;
}

unint64_t sub_1D665A4D4()
{
  result = qword_1EDF10188;
  if (!qword_1EDF10188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10188);
  }

  return result;
}

unint64_t sub_1D665A5A4()
{
  result = qword_1EDF04C80;
  if (!qword_1EDF04C80)
  {
    sub_1D5C34D84(255, &qword_1EDF04C88, &type metadata for FormatOptionsNodeStatement, MEMORY[0x1E69E62F8]);
    sub_1D5C588F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04C80);
  }

  return result;
}

unint64_t sub_1D665A640()
{
  result = qword_1EDF0EA90;
  if (!qword_1EDF0EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EA90);
  }

  return result;
}

void sub_1D665A694(uint64_t a1)
{
  if (!qword_1EDF08B38)
  {
    sub_1D665A728(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03058, sub_1D665A728, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08B38);
    }
  }
}

void sub_1D665A728(uint64_t a1)
{
  if (!qword_1EDF03050)
  {
    sub_1D5C5F6FC(255);
    sub_1D5B58B84(&qword_1EDF250C8, sub_1D5C5F6FC, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03050);
    }
  }
}

void sub_1D665A838(uint64_t a1)
{
  if (!qword_1EDF19F40)
  {
    sub_1D665A8CC(255);
    sub_1D5B58B84(&qword_1EDF25068, sub_1D665A8CC, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19F40);
    }
  }
}

void sub_1D665A8CC(uint64_t a1)
{
  if (!qword_1EDF25060)
  {
    v4[0] = &_s10CodingKeysON_279;
    v4[1] = sub_1D665A950();
    v4[2] = sub_1D665A9A4();
    v4[3] = sub_1D665A9F8();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF25060);
    }
  }
}

unint64_t sub_1D665A950()
{
  result = qword_1EDF246F0;
  if (!qword_1EDF246F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF246F0);
  }

  return result;
}

unint64_t sub_1D665A9A4()
{
  result = qword_1EDF246F8;
  if (!qword_1EDF246F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF246F8);
  }

  return result;
}

unint64_t sub_1D665A9F8()
{
  result = qword_1EDF24700;
  if (!qword_1EDF24700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24700);
  }

  return result;
}

void sub_1D665AA4C(uint64_t a1)
{
  if (!qword_1EDF08B00)
  {
    sub_1D665AAE0(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02FE8, sub_1D665AAE0, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08B00);
    }
  }
}

void sub_1D665AAE0(uint64_t a1)
{
  if (!qword_1EDF02FE0)
  {
    sub_1D665A8CC(255);
    sub_1D5B58B84(&qword_1EDF25068, sub_1D665A8CC, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02FE0);
    }
  }
}

unint64_t sub_1D665ABF0()
{
  result = qword_1EC886078;
  if (!qword_1EC886078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886078);
  }

  return result;
}

unint64_t sub_1D665AC44()
{
  result = qword_1EC886088;
  if (!qword_1EC886088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886088);
  }

  return result;
}

unint64_t sub_1D665AC98()
{
  result = qword_1EC886090;
  if (!qword_1EC886090)
  {
    sub_1D5C30060(255, &qword_1EC886080, sub_1D665AC44, &type metadata for FormatTagBinding.Bool, type metadata accessor for FormatArraySubscript);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886090);
  }

  return result;
}

void sub_1D665AD28(uint64_t a1)
{
  if (!qword_1EDF08818)
  {
    sub_1D665ADBC(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02A18, sub_1D665ADBC, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08818);
    }
  }
}

void sub_1D665ADBC(uint64_t a1)
{
  if (!qword_1EDF02A10)
  {
    sub_1D5C9EA4C(255);
    sub_1D5B58B84(&qword_1EDF24B68, sub_1D5C9EA4C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02A10);
    }
  }
}

unint64_t sub_1D665AEB4()
{
  result = qword_1EDF0D9B8;
  if (!qword_1EDF0D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D9B8);
  }

  return result;
}

unint64_t sub_1D665AF08()
{
  result = qword_1EC8860A0;
  if (!qword_1EC8860A0)
  {
    sub_1D5C30060(255, &qword_1EC886098, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatSelectorValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860A0);
  }

  return result;
}

unint64_t sub_1D665AF98()
{
  result = qword_1EC8860A8;
  if (!qword_1EC8860A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860A8);
  }

  return result;
}

unint64_t sub_1D665AFEC()
{
  result = qword_1EDF0CE60;
  if (!qword_1EDF0CE60)
  {
    sub_1D5C30060(255, &qword_1EDF0CE58, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatUserInterfaceValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CE60);
  }

  return result;
}

unint64_t sub_1D665B07C()
{
  result = qword_1EC8860B8;
  if (!qword_1EC8860B8)
  {
    sub_1D5C30060(255, &qword_1EC8860B0, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatSwitchValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860B8);
  }

  return result;
}

unint64_t sub_1D665B10C()
{
  result = qword_1EDF10B70;
  if (!qword_1EDF10B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10B70);
  }

  return result;
}

unint64_t sub_1D665B160()
{
  result = qword_1EDF1E6A0;
  if (!qword_1EDF1E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E6A0);
  }

  return result;
}

unint64_t sub_1D665B1B4()
{
  result = qword_1EDF2B488;
  if (!qword_1EDF2B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B488);
  }

  return result;
}

unint64_t sub_1D665B208()
{
  result = qword_1EDF24AF0;
  if (!qword_1EDF24AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24AF0);
  }

  return result;
}

unint64_t sub_1D665B25C()
{
  result = qword_1EDF09490;
  if (!qword_1EDF09490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09490);
  }

  return result;
}

uint64_t objectdestroy_682Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1D665B2F4()
{
  result = qword_1EDF071B0;
  if (!qword_1EDF071B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF071B0);
  }

  return result;
}

unint64_t sub_1D665B348()
{
  result = qword_1EDF1D958;
  if (!qword_1EDF1D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D958);
  }

  return result;
}

void sub_1D665B39C(uint64_t a1)
{
  if (!qword_1EDF08CF8)
  {
    sub_1D665B430(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08CF8);
    }
  }
}

void sub_1D665B430(uint64_t a1)
{
  if (!qword_1EDF033D0)
  {
    sub_1D5CA98C4(255);
    sub_1D5B58B84(&qword_1EDF253B8, sub_1D5CA98C4, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF033D0);
    }
  }
}

unint64_t sub_1D665B554()
{
  result = qword_1EDF0D478;
  if (!qword_1EDF0D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D478);
  }

  return result;
}

unint64_t sub_1D665B5A8()
{
  result = qword_1EDF0D310;
  if (!qword_1EDF0D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D310);
  }

  return result;
}

unint64_t sub_1D665B5FC()
{
  result = qword_1EDF0F890;
  if (!qword_1EDF0F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F890);
  }

  return result;
}

unint64_t sub_1D665B650()
{
  result = qword_1EDF06628;
  if (!qword_1EDF06628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06628);
  }

  return result;
}

unint64_t sub_1D665B6A4()
{
  result = qword_1EDF05FF0;
  if (!qword_1EDF05FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05FF0);
  }

  return result;
}

unint64_t sub_1D665B6F8()
{
  result = qword_1EDF22600;
  if (!qword_1EDF22600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22600);
  }

  return result;
}

unint64_t sub_1D665B74C()
{
  result = qword_1EDF127C0;
  if (!qword_1EDF127C0)
  {
    sub_1D5C30060(255, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF127C0);
  }

  return result;
}

unint64_t sub_1D665B7DC()
{
  result = qword_1EDF27FD8;
  if (!qword_1EDF27FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27FD8);
  }

  return result;
}

unint64_t sub_1D665B830()
{
  result = qword_1EDF21260;
  if (!qword_1EDF21260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21260);
  }

  return result;
}

unint64_t sub_1D665B884()
{
  result = qword_1EDF10480;
  if (!qword_1EDF10480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10480);
  }

  return result;
}

unint64_t sub_1D665B8D8()
{
  result = qword_1EDF29818;
  if (!qword_1EDF29818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29818);
  }

  return result;
}

void sub_1D665B92C(uint64_t a1)
{
  if (!qword_1EDF03DB8)
  {
    sub_1D665B9C0(255);
    sub_1D5B58B84(&qword_1EDF0C550, sub_1D665B9C0, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03DB8);
    }
  }
}

void sub_1D665B9C0(uint64_t a1)
{
  if (!qword_1EDF0C548)
  {
    v4[0] = &_s10CodingKeysON_276;
    v4[1] = sub_1D665BA44();
    v4[2] = sub_1D665BA98();
    v4[3] = sub_1D665BAEC();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF0C548);
    }
  }
}

unint64_t sub_1D665BA44()
{
  result = qword_1EDF0ECD8;
  if (!qword_1EDF0ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECD8);
  }

  return result;
}

unint64_t sub_1D665BA98()
{
  result = qword_1EDF0ECE0;
  if (!qword_1EDF0ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECE0);
  }

  return result;
}

unint64_t sub_1D665BAEC()
{
  result = qword_1EDF0ECE8;
  if (!qword_1EDF0ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECE8);
  }

  return result;
}

unint64_t sub_1D665BB40()
{
  result = qword_1EDF124E8;
  if (!qword_1EDF124E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF124E8);
  }

  return result;
}

void sub_1D665BB94(uint64_t a1)
{
  if (!qword_1EDF08CD0)
  {
    sub_1D665BC28(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03388, sub_1D665BC28, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08CD0);
    }
  }
}

void sub_1D665BC28(uint64_t a1)
{
  if (!qword_1EDF03380)
  {
    sub_1D665B9C0(255);
    sub_1D5B58B84(&qword_1EDF0C550, sub_1D665B9C0, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03380);
    }
  }
}

unint64_t sub_1D665BCBC()
{
  result = qword_1EDF124F0;
  if (!qword_1EDF124F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF124F0);
  }

  return result;
}

unint64_t sub_1D665BD8C()
{
  result = qword_1EDF08190;
  if (!qword_1EDF08190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF08190);
  }

  return result;
}

unint64_t sub_1D665BDE0()
{
  result = qword_1EC8860C0;
  if (!qword_1EC8860C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860C0);
  }

  return result;
}

unint64_t sub_1D665BE34()
{
  result = qword_1EC8860C8;
  if (!qword_1EC8860C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860C8);
  }

  return result;
}

uint64_t objectdestroy_978Tm()
{
  sub_1D5F33D8C(*(v0 + 16));
  sub_1D5F33D8C(*(v0 + 24));

  return swift_deallocObject();
}

void sub_1D665BEC8(uint64_t a1)
{
  if (!qword_1EDF08DC0)
  {
    sub_1D665BF5C(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03568, sub_1D665BF5C, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08DC0);
    }
  }
}

void sub_1D665BF5C(uint64_t a1)
{
  if (!qword_1EDF03560)
  {
    sub_1D5CC307C(255);
    sub_1D5B58B84(&qword_1EDF25528, sub_1D5CC307C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03560);
    }
  }
}

unint64_t sub_1D665C080()
{
  result = qword_1EDF0B9A0;
  if (!qword_1EDF0B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B9A0);
  }

  return result;
}

void sub_1D665C184(uint64_t a1)
{
  if (!qword_1EDF088E8)
  {
    sub_1D665C218(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02BB8, sub_1D665C218, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF088E8);
    }
  }
}

void sub_1D665C218(uint64_t a1)
{
  if (!qword_1EDF02BB0)
  {
    sub_1D5C8DA18(255);
    sub_1D5B58B84(&qword_1EDF24CD8, sub_1D5C8DA18, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02BB0);
    }
  }
}

void sub_1D665C310(uint64_t a1)
{
  if (!qword_1EDF08AF0)
  {
    sub_1D665C3A4(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02FC8, sub_1D665C3A4, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08AF0);
    }
  }
}

void sub_1D665C3A4(uint64_t a1)
{
  if (!qword_1EDF02FC0)
  {
    sub_1D5CE5ECC(255);
    sub_1D5B58B84(&qword_1EDF25048, sub_1D5CE5ECC, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02FC0);
    }
  }
}

unint64_t sub_1D665C4B4()
{
  result = qword_1EDF09AF8;
  if (!qword_1EDF09AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09AF8);
  }

  return result;
}

unint64_t sub_1D665C508()
{
  result = qword_1EDF296D0;
  if (!qword_1EDF296D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF296D0);
  }

  return result;
}

uint64_t sub_1D665C55C(uint64_t result)
{
  v1 = *(result + 128) & 0x8F | 0x40;
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v1;
  return result;
}

unint64_t sub_1D665C57C()
{
  result = qword_1EDF23368;
  if (!qword_1EDF23368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23368);
  }

  return result;
}

unint64_t sub_1D665C5D0()
{
  result = qword_1EC8860D8;
  if (!qword_1EC8860D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860D8);
  }

  return result;
}

void *sub_1D665C624(void *a1)
{
  sub_1D5C8CD38();
  v67 = v2;
  v66 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  *&v68 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8, &type metadata for FormatAdjustment);
  v6 = v5;
  v69 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v53[-v8];
  sub_1D6705A9C(0);
  v11 = v10;
  *&v70 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C580(0);
  sub_1D5B58B84(&qword_1EDF0C560, sub_1D5E1C580, &unk_1D7321584);
  v16 = v78;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v15;
  }

  v18 = v9;
  v78 = v6;
  v19 = v70;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1D7264AFC();
  v21 = Dictionary<>.errorOnUnknownKeys.getter(v20);

  if (v21)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while (*v24 != 1)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v27 = *(v24 - 2);
      v15 = *(v24 - 1);

      v28 = sub_1D66139DC();
      sub_1D5E2D970();
      v17 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v15;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v19 + 8))(v14, v11);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25 = sub_1D5C31D18(v14, 0, 0, 0, sub_1D6705A9C);
  v65 = v26;
  v74 = xmmword_1D728CF30;
  LOBYTE(v75) = 0;
  sub_1D5C62940();
  sub_1D726431C();
  v30 = v72;
  v74 = xmmword_1D7297410;
  LOBYTE(v75) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  v64 = v72;
  v63 = xmmword_1D72BAA60;
  v74 = xmmword_1D72BAA60;
  LOBYTE(v75) = 0;
  if (sub_1D726434C())
  {
    v72 = v63;
    v73 = 0;
    sub_1D5C9EEC4();
    v61 = v18;
    v32 = v78;
    sub_1D726431C();
    v62 = v25;
    *&v63 = v30;
    v33 = v61;
    v34 = sub_1D725A74C();
    (*(v69 + 8))(v33, v32);
  }

  else
  {
    v62 = v25;
    *&v63 = v30;
    v34 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatIssueCoverNodeStyle();
  v74 = xmmword_1D72BAA70;
  LOBYTE(v75) = 0;
  sub_1D5B58B84(&qword_1EDF0C2C8, type metadata accessor for FormatIssueCoverNodeStyle, &protocol conformance descriptor for FormatIssueCoverNodeStyle);
  sub_1D726427C();
  v35 = v72;
  type metadata accessor for FormatAnimationNodeStyle();
  v74 = xmmword_1D72BAA80;
  LOBYTE(v75) = 0;
  sub_1D5B58B84(&qword_1EDF26768, type metadata accessor for FormatAnimationNodeStyle, &protocol conformance descriptor for FormatAnimationNodeStyle);
  sub_1D726427C();
  v78 = v35;
  v36 = v72;
  v74 = xmmword_1D72BAA90;
  LOBYTE(v75) = 0;
  sub_1D6705B30();
  sub_1D726431C();
  v61 = v36;
  v69 = v34;
  v60 = v72;
  v59 = xmmword_1D72BAAA0;
  v74 = xmmword_1D72BAAA0;
  LOBYTE(v75) = 0;
  v37 = v14;
  if (sub_1D726434C())
  {
    v72 = v59;
    v73 = 0;
    sub_1D726431C();
    v38 = v71;
  }

  else
  {
    v38 = 0;
  }

  v59 = xmmword_1D72BAAB0;
  v74 = xmmword_1D72BAAB0;
  LOBYTE(v75) = 0;
  if (sub_1D726434C())
  {
    v72 = v59;
    v73 = 0;
    sub_1D5DF6A0C();
    sub_1D726431C();
    v58 = v38;
    v39 = v71;
    sub_1D5EB1500(v71);
    v40 = v39;
    sub_1D5EB15C4(v39);
  }

  else
  {
    v58 = v38;
    v40 = 0x8000000000000000;
  }

  v59 = xmmword_1D72BAAC0;
  v74 = xmmword_1D72BAAC0;
  LOBYTE(v75) = 0;
  if (sub_1D726434C())
  {
    v72 = v59;
    v73 = 0;
    sub_1D726431C();
    v41 = v71;
  }

  else
  {
    v41 = 1;
  }

  v74 = xmmword_1D72BAAD0;
  LOBYTE(v75) = 0;
  sub_1D5C6F27C();
  sub_1D726427C();
  v56 = v41;
  *&v59 = a1;
  v55 = v72;
  v54 = BYTE8(v72);
  v57 = xmmword_1D72BAAE0;
  v74 = xmmword_1D72BAAE0;
  LOBYTE(v75) = 0;
  v42 = v11;
  if (sub_1D726434C())
  {
    v72 = v57;
    v73 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38, MEMORY[0x1E69D6380]);
    sub_1D726431C();
    v43 = v67;
    v44 = v68;
    v45 = sub_1D725A74C();
    (*(v66 + 8))(v44, v43);
  }

  else
  {
    v45 = MEMORY[0x1E69E7CD0];
  }

  v74 = xmmword_1D72BAAF0;
  LOBYTE(v75) = 0;
  sub_1D61CF134();
  sub_1D726431C();
  v46 = v72;
  v72 = xmmword_1D7282A80;
  v73 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v19 + 8))(v37, v42);
  v48 = v76;
  v47 = v77;
  type metadata accessor for FormatIssueCoverNode();
  v70 = v74;
  v68 = v75;
  v15 = swift_allocObject();
  swift_beginAccess();
  v49 = v65;
  *(v15 + 16) = v62;
  *(v15 + 24) = v49;
  v50 = v64;
  *(v15 + 32) = v63;
  *(v15 + 40) = v50;
  swift_beginAccess();
  v51 = v78;
  *(v15 + 48) = v69;
  *(v15 + 56) = v51;
  v52 = v60;
  *(v15 + 64) = v61;
  *(v15 + 72) = v52;
  swift_beginAccess();
  *(v15 + 80) = v58;
  swift_beginAccess();
  *(v15 + 88) = v40;
  swift_beginAccess();
  *(v15 + 96) = v56;
  *(v15 + 104) = v55;
  *(v15 + 112) = v54;
  swift_beginAccess();
  *(v15 + 120) = v45;
  *(v15 + 128) = v46;
  *(v15 + 152) = v68;
  *(v15 + 136) = v70;
  *(v15 + 168) = v48;
  *(v15 + 176) = v47;
  __swift_destroy_boxed_opaque_existential_1(v59);
  return v15;
}

void sub_1D665D5DC(uint64_t a1)
{
  if (!qword_1EDF08D00)
  {
    sub_1D5E1C544(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF033E8, sub_1D5E1C544, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08D00);
    }
  }
}

unint64_t sub_1D665D700()
{
  result = qword_1EDF0D490;
  if (!qword_1EDF0D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D490);
  }

  return result;
}

void sub_1D665D754(uint64_t a1)
{
  if (!qword_1EC8860E0)
  {
    sub_1D665D7E8(255);
    sub_1D5B58B84(&qword_1EC886108, sub_1D665D7E8, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8860E0);
    }
  }
}

void sub_1D665D7E8(uint64_t a1)
{
  if (!qword_1EC8860E8)
  {
    v4[0] = &_s10CodingKeysON_271;
    v4[1] = sub_1D665D86C();
    v4[2] = sub_1D665D8C0();
    v4[3] = sub_1D665D914();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EC8860E8);
    }
  }
}

unint64_t sub_1D665D86C()
{
  result = qword_1EC8860F0;
  if (!qword_1EC8860F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860F0);
  }

  return result;
}

unint64_t sub_1D665D8C0()
{
  result = qword_1EC8860F8;
  if (!qword_1EC8860F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860F8);
  }

  return result;
}

unint64_t sub_1D665D914()
{
  result = qword_1EC886100;
  if (!qword_1EC886100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886100);
  }

  return result;
}

void sub_1D665D968(uint64_t a1)
{
  if (!qword_1EC886110)
  {
    sub_1D665D9FC(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EC886120, sub_1D665D9FC, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC886110);
    }
  }
}

void sub_1D665D9FC(uint64_t a1)
{
  if (!qword_1EC886118)
  {
    sub_1D665D7E8(255);
    sub_1D5B58B84(&qword_1EC886108, sub_1D665D7E8, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC886118);
    }
  }
}

void sub_1D665DB0C(uint64_t a1)
{
  if (!qword_1EDF19EE0)
  {
    sub_1D665DBA0(255);
    sub_1D5B58B84(&qword_1EDF24FA8, sub_1D665DBA0, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19EE0);
    }
  }
}

void sub_1D665DBA0(uint64_t a1)
{
  if (!qword_1EDF24FA0)
  {
    v4[0] = &_s10CodingKeysON_270;
    v4[1] = sub_1D665DC24();
    v4[2] = sub_1D665DC78();
    v4[3] = sub_1D665DCCC();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF24FA0);
    }
  }
}

unint64_t sub_1D665DC24()
{
  result = qword_1EDF23190;
  if (!qword_1EDF23190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23190);
  }

  return result;
}

unint64_t sub_1D665DC78()
{
  result = qword_1EDF23198;
  if (!qword_1EDF23198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23198);
  }

  return result;
}

unint64_t sub_1D665DCCC()
{
  result = qword_1EDF231A0;
  if (!qword_1EDF231A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF231A0);
  }

  return result;
}

void sub_1D665DD20(uint64_t a1)
{
  if (!qword_1EDF08AA0)
  {
    sub_1D665DDB4(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02F28, sub_1D665DDB4, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08AA0);
    }
  }
}

void sub_1D665DDB4(uint64_t a1)
{
  if (!qword_1EDF02F20)
  {
    sub_1D665DBA0(255);
    sub_1D5B58B84(&qword_1EDF24FA8, sub_1D665DBA0, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02F20);
    }
  }
}

unint64_t sub_1D665DEC4()
{
  result = qword_1EDF304B8;
  if (!qword_1EDF304B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304B8);
  }

  return result;
}

unint64_t sub_1D665DF18()
{
  result = qword_1EDF233B8;
  if (!qword_1EDF233B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF233B8);
  }

  return result;
}

void sub_1D665DF6C(uint64_t a1)
{
  if (!qword_1EDF08CE8)
  {
    sub_1D665E000(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF033B8, sub_1D665E000, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08CE8);
    }
  }
}

void sub_1D665E000(uint64_t a1)
{
  if (!qword_1EDF033B0)
  {
    sub_1D5C6BA68(255);
    sub_1D5B58B84(&qword_1EDF25398, sub_1D5C6BA68, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF033B0);
    }
  }
}

void sub_1D665E128(uint64_t a1)
{
  if (!qword_1EDF19DE0)
  {
    sub_1D665E1BC(255);
    sub_1D5B58B84(&qword_1EDF24DA8, sub_1D665E1BC, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19DE0);
    }
  }
}

void sub_1D665E1BC(uint64_t a1)
{
  if (!qword_1EDF24DA0)
  {
    v4[0] = &_s10CodingKeysON_268;
    v4[1] = sub_1D665E240();
    v4[2] = sub_1D665E294();
    v4[3] = sub_1D665E2E8();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF24DA0);
    }
  }
}

unint64_t sub_1D665E240()
{
  result = qword_1EDF1DF30;
  if (!qword_1EDF1DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1DF30);
  }

  return result;
}

unint64_t sub_1D665E294()
{
  result = qword_1EDF1DF38;
  if (!qword_1EDF1DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1DF38);
  }

  return result;
}

unint64_t sub_1D665E2E8()
{
  result = qword_1EDF1DF40;
  if (!qword_1EDF1DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1DF40);
  }

  return result;
}

unint64_t sub_1D665E33C()
{
  result = qword_1EDF1EEB8;
  if (!qword_1EDF1EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EEB8);
  }

  return result;
}

void sub_1D665E390(uint64_t a1)
{
  if (!qword_1EDF08960)
  {
    sub_1D665E424(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02CA8, sub_1D665E424, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08960);
    }
  }
}

void sub_1D665E424(uint64_t a1)
{
  if (!qword_1EDF02CA0)
  {
    sub_1D665E1BC(255);
    sub_1D5B58B84(&qword_1EDF24DA8, sub_1D665E1BC, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02CA0);
    }
  }
}

unint64_t sub_1D665E4B8()
{
  result = qword_1EDF08178;
  if (!qword_1EDF08178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF08178);
  }

  return result;
}

void sub_1D665E570(uint64_t a1)
{
  if (!qword_1EDF08E38)
  {
    sub_1D665E604(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03658, sub_1D665E604, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08E38);
    }
  }
}

void sub_1D665E604(uint64_t a1)
{
  if (!qword_1EDF03650)
  {
    sub_1D5C9420C(255);
    sub_1D5B58B84(&qword_1EDF255F8, sub_1D5C9420C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03650);
    }
  }
}

unint64_t sub_1D665E714()
{
  result = qword_1EDF101A8;
  if (!qword_1EDF101A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF101A8);
  }

  return result;
}

void sub_1D665E768(uint64_t a1)
{
  if (!qword_1EDF1A058)
  {
    sub_1D665E7FC(255);
    sub_1D5B58B84(&qword_1EDF25298, sub_1D665E7FC, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A058);
    }
  }
}

void sub_1D665E7FC(uint64_t a1)
{
  if (!qword_1EDF25290)
  {
    v4[0] = &_s10CodingKeysON_266;
    v4[1] = sub_1D665E880();
    v4[2] = sub_1D665E8D4();
    v4[3] = sub_1D665E928();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF25290);
    }
  }
}

unint64_t sub_1D665E880()
{
  result = qword_1EDF29118;
  if (!qword_1EDF29118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29118);
  }

  return result;
}

unint64_t sub_1D665E8D4()
{
  result = qword_1EDF29120;
  if (!qword_1EDF29120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29120);
  }

  return result;
}

unint64_t sub_1D665E928()
{
  result = qword_1EDF29128;
  if (!qword_1EDF29128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29128);
  }

  return result;
}

void sub_1D665E97C(uint64_t a1)
{
  if (!qword_1EDF08C40)
  {
    sub_1D665EA10(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03268, sub_1D665EA10, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08C40);
    }
  }
}

void sub_1D665EA10(uint64_t a1)
{
  if (!qword_1EDF03260)
  {
    sub_1D665E7FC(255);
    sub_1D5B58B84(&qword_1EDF25298, sub_1D665E7FC, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03260);
    }
  }
}

unint64_t sub_1D665EB20()
{
  result = qword_1EDF0D9E0;
  if (!qword_1EDF0D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D9E0);
  }

  return result;
}

unint64_t sub_1D665EB74()
{
  result = qword_1EC886130;
  if (!qword_1EC886130)
  {
    sub_1D5C30060(255, &qword_1EC886128, sub_1D5FB9D00, &type metadata for FormatSymbolImageColor, type metadata accessor for FormatSelectorValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886130);
  }

  return result;
}

void sub_1D665EC04(uint64_t a1)
{
  if (!qword_1EDF08C90)
  {
    sub_1D665EC98(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03308, sub_1D665EC98, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08C90);
    }
  }
}

void sub_1D665EC98(uint64_t a1)
{
  if (!qword_1EDF03300)
  {
    sub_1D5C4FF14(255);
    sub_1D5B58B84(&qword_1EDF252F8, sub_1D5C4FF14, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03300);
    }
  }
}

void sub_1D665EDA8(uint64_t a1)
{
  if (!qword_1EDF08C98)
  {
    sub_1D665EE3C(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03318, sub_1D665EE3C, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08C98);
    }
  }
}

void sub_1D665EE3C(uint64_t a1)
{
  if (!qword_1EDF03310)
  {
    sub_1D5C50108(255);
    sub_1D5B58B84(&qword_1EDF25308, sub_1D5C50108, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03310);
    }
  }
}

void sub_1D665EF34(uint64_t a1)
{
  if (!qword_1EDF08CA0)
  {
    sub_1D665EFC8(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03328, sub_1D665EFC8, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08CA0);
    }
  }
}

void sub_1D665EFC8(uint64_t a1)
{
  if (!qword_1EDF03320)
  {
    sub_1D5C7CB68(255);
    sub_1D5B58B84(&qword_1EDF25318, sub_1D5C7CB68, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03320);
    }
  }
}

void sub_1D665F0D8(uint64_t a1)
{
  if (!qword_1EDF08CA8)
  {
    sub_1D665F16C(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03338, sub_1D665F16C, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08CA8);
    }
  }
}

void sub_1D665F16C(uint64_t a1)
{
  if (!qword_1EDF03330)
  {
    sub_1D5C4F794(255);
    sub_1D5B58B84(&qword_1EDF25328, sub_1D5C4F794, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03330);
    }
  }
}

uint64_t sub_1D665F27C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C30060(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_1D665F2F0()
{
  result = qword_1EDF04BC0;
  if (!qword_1EDF04BC0)
  {
    sub_1D5B5BF78(255, &qword_1EDF1AFD8, type metadata accessor for FormatCompilerSlotDefinition, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EDF44528, type metadata accessor for FormatCompilerSlotDefinition, &protocol conformance descriptor for FormatCompilerSlotDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04BC0);
  }

  return result;
}

unint64_t sub_1D665F3C8()
{
  result = qword_1EDF04DD8;
  if (!qword_1EDF04DD8)
  {
    sub_1D5B5BF78(255, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EDF44BF8, type metadata accessor for FormatCompilerProperty, &protocol conformance descriptor for FormatCompilerProperty);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04DD8);
  }

  return result;
}

unint64_t sub_1D665F4A0()
{
  result = qword_1EDF2FBD0;
  if (!qword_1EDF2FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FBD0);
  }

  return result;
}

uint64_t sub_1D665F4F4(void *a1)
{
  v2 = v1;
  sub_1D670570C(0);
  v5 = v4;
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665FA88(0);
  sub_1D5B58B84(&qword_1EC886168, sub_1D665FA88, &unk_1D7321584);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1D7264AFC();
  v10 = Dictionary<>.errorOnUnknownKeys.getter(v9);

  v11 = v51;
  if (v10)
  {
    v12 = sub_1D726433C();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 48);
      while (*v14 != 1)
      {
        v14 += 24;
        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v14 - 2);
      v18 = *(v14 - 1);

      v20 = sub_1D6614500();
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v8, v5);
      goto LABEL_10;
    }

LABEL_7:
  }

  v15 = sub_1D5C31D18(v8, 0, 0, 0, sub_1D670570C);
  v17 = v16;
  v34 = v15;
  v44 = xmmword_1D728CF30;
  LOBYTE(v45) = 0;
  v33 = sub_1D72642FC();
  v44 = xmmword_1D7297410;
  LOBYTE(v45) = 0;
  v32 = sub_1D72642FC();
  v44 = xmmword_1D72BAA60;
  LOBYTE(v45) = 0;
  v30 = sub_1D72642BC();
  v31 = v23;
  v42 = xmmword_1D72BAA70;
  v43 = 0;
  sub_1D5C91044();
  sub_1D726431C();
  (*(v11 + 8))(v8, v5);
  v39 = v48;
  v40 = v49;
  v41 = v50;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v38 = v47;
  type metadata accessor for FormatBreakpointNode();
  v5 = swift_allocObject();
  swift_beginAccess();
  v24 = v33;
  *(v5 + 16) = v34;
  *(v5 + 24) = v17;
  v25 = v32;
  *(v5 + 32) = v24;
  *(v5 + 40) = v25;
  v26 = v31;
  *(v5 + 48) = v30;
  *(v5 + 56) = v26;
  v27 = v40;
  *(v5 + 128) = v39;
  *(v5 + 144) = v27;
  *(v5 + 160) = v41;
  v28 = v36;
  *(v5 + 64) = v35;
  *(v5 + 80) = v28;
  v29 = v38;
  *(v5 + 96) = v37;
  *(v5 + 112) = v29;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

void sub_1D665F960(uint64_t a1)
{
  if (!qword_1EC886138)
  {
    sub_1D665F9F4(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EC886170, sub_1D665F9F4, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC886138);
    }
  }
}

void sub_1D665F9F4(uint64_t a1)
{
  if (!qword_1EC886140)
  {
    sub_1D665FA88(255);
    sub_1D5B58B84(&qword_1EC886168, sub_1D665FA88, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC886140);
    }
  }
}

void sub_1D665FA88(uint64_t a1)
{
  if (!qword_1EC886148)
  {
    v4[0] = &_s10CodingKeysON_261;
    v4[1] = sub_1D665FB0C();
    v4[2] = sub_1D665FB60();
    v4[3] = sub_1D665FBB4();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EC886148);
    }
  }
}

unint64_t sub_1D665FB0C()
{
  result = qword_1EC886150;
  if (!qword_1EC886150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886150);
  }

  return result;
}

unint64_t sub_1D665FB60()
{
  result = qword_1EC886158;
  if (!qword_1EC886158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886158);
  }

  return result;
}

unint64_t sub_1D665FBB4()
{
  result = qword_1EC886160;
  if (!qword_1EC886160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886160);
  }

  return result;
}

unint64_t sub_1D665FC84()
{
  result = qword_1EDF2C130;
  if (!qword_1EDF2C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C130);
  }

  return result;
}

unint64_t sub_1D665FCD8()
{
  result = qword_1EDF2AD90;
  if (!qword_1EDF2AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AD90);
  }

  return result;
}

unint64_t sub_1D665FD2C()
{
  result = qword_1EC886178;
  if (!qword_1EC886178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886178);
  }

  return result;
}

unint64_t sub_1D665FD80()
{
  result = qword_1EC886180;
  if (!qword_1EC886180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886180);
  }

  return result;
}

unint64_t sub_1D665FDD4()
{
  result = qword_1EDF0A8A8;
  if (!qword_1EDF0A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A8A8);
  }

  return result;
}

unint64_t sub_1D665FE28()
{
  result = qword_1EDF27088;
  if (!qword_1EDF27088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27088);
  }

  return result;
}

unint64_t sub_1D665FE7C()
{
  result = qword_1EDF2C190;
  if (!qword_1EDF2C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C190);
  }

  return result;
}

unint64_t sub_1D665FED0()
{
  result = qword_1EDF0DE18;
  if (!qword_1EDF0DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DE18);
  }

  return result;
}

unint64_t sub_1D665FF24()
{
  result = qword_1EDF0D628;
  if (!qword_1EDF0D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D628);
  }

  return result;
}

void sub_1D665FF78(uint64_t a1)
{
  if (!qword_1EDF03DF8)
  {
    sub_1D666000C(255);
    sub_1D5B58B84(&qword_1EDF0C5D0, sub_1D666000C, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03DF8);
    }
  }
}

void sub_1D666000C(uint64_t a1)
{
  if (!qword_1EDF0C5C8)
  {
    v4[0] = &_s10CodingKeysON_260;
    v4[1] = sub_1D6660090();
    v4[2] = sub_1D66600E4();
    v4[3] = sub_1D6660138();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF0C5C8);
    }
  }
}

unint64_t sub_1D6660090()
{
  result = qword_1EDF111B0;
  if (!qword_1EDF111B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF111B0);
  }

  return result;
}

unint64_t sub_1D66600E4()
{
  result = qword_1EDF111B8;
  if (!qword_1EDF111B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF111B8);
  }

  return result;
}

unint64_t sub_1D6660138()
{
  result = qword_1EDF111C0;
  if (!qword_1EDF111C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF111C0);
  }

  return result;
}

void sub_1D666018C(uint64_t a1)
{
  if (!qword_1EDF08EA8)
  {
    sub_1D6660220(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03738, sub_1D6660220, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08EA8);
    }
  }
}

void sub_1D6660220(uint64_t a1)
{
  if (!qword_1EDF03730)
  {
    sub_1D666000C(255);
    sub_1D5B58B84(&qword_1EDF0C5D0, sub_1D666000C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03730);
    }
  }
}

unint64_t sub_1D6660330()
{
  result = qword_1EDF0EFD8;
  if (!qword_1EDF0EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EFD8);
  }

  return result;
}

unint64_t sub_1D6660384()
{
  result = qword_1EC886188;
  if (!qword_1EC886188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886188);
  }

  return result;
}

uint64_t sub_1D66603D8(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BCD0, sub_1D600FE24, sub_1D600FE78, &type metadata for FormatGroupNodeStyle.Selector);
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v47 - v4;
  sub_1D67053A0(0);
  v7 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6660FA0(0);
  sub_1D5B58B84(&qword_1EDF253E8, sub_1D6660FA0, &unk_1D7321584);
  v11 = v92;
  sub_1D7264B0C();
  v12 = v11;
  if (v11)
  {
LABEL_14:
    sub_1D61E4FBC(a1, v12);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v7;
  }

  v92 = v5;
  v13 = v56;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  if (v15)
  {
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v24 = *(v18 - 2);
      v23 = *(v18 - 1);

      v25 = sub_1D661487C();
      sub_1D5E2D970();
      v12 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v57 + 8))(v10, v7);
      goto LABEL_14;
    }

LABEL_7:
  }

  v19 = a1;
  v20 = sub_1D5C31D18(v10, 0, 0, 0, sub_1D67053A0);
  v54 = v21;
  v71 = xmmword_1D728CF30;
  LOBYTE(v72) = 0;
  v22 = v7;
  v51 = sub_1D72642BC();
  v53 = v27;
  v52 = xmmword_1D7297410;
  v71 = xmmword_1D7297410;
  LOBYTE(v72) = 0;
  v28 = sub_1D726434C();
  v29 = v57;
  if (v28)
  {
    v58 = v52;
    LOBYTE(v59) = 0;
    sub_1D6705434();
    v30 = v92;
    sub_1D726431C();
    *&v52 = sub_1D725A74C();
    (*(v55 + 8))(v30, v13);
    v29 = v57;
  }

  else
  {
    *&v52 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v71 = xmmword_1D72BAA60;
  LOBYTE(v72) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v32 = v58;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v71 = xmmword_1D72BAA70;
  LOBYTE(v72) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v92 = v32;
  v33 = v58;
  v58 = xmmword_1D72BAA80;
  LOBYTE(v59) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v55 = *(&v71 + 1);
  v50 = v71;
  LODWORD(v56) = v72;
  v88 = xmmword_1D72BAA90;
  v89 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v84 = v90[2];
  v85 = v90[3];
  v86 = v90[4];
  v87 = v91;
  v82 = v90[0];
  v83 = v90[1];
  v71 = xmmword_1D72BAAA0;
  LOBYTE(v72) = 0;
  v34 = sub_1D726423C();
  v49 = v33;
  v35 = v52;
  v48 = v34;
  v71 = xmmword_1D72BAAB0;
  LOBYTE(v72) = 0;
  v47 = sub_1D726423C();
  v69 = xmmword_1D72BAAC0;
  v70 = 0;
  sub_1D6661658();
  sub_1D726427C();
  (*(v29 + 8))(v10, v22);
  v66 = v79;
  v67 = v80;
  v68 = v81;
  v62 = v75;
  v63 = v76;
  v64 = v77;
  v65 = v78;
  v58 = v71;
  v59 = v72;
  v60 = v73;
  v61 = v74;
  type metadata accessor for FormatGroupNodeStyle();
  v7 = swift_allocObject();
  swift_beginAccess();
  v36 = v54;
  *(v7 + 16) = v20;
  *(v7 + 24) = v36;
  v37 = v53;
  *(v7 + 32) = v51;
  *(v7 + 40) = v37;
  swift_beginAccess();
  v38 = v67;
  *(v7 + 312) = v66;
  *(v7 + 328) = v38;
  v39 = v65;
  *(v7 + 280) = v64;
  *(v7 + 296) = v39;
  v40 = v62;
  *(v7 + 264) = v63;
  v41 = v85;
  *(v7 + 128) = v84;
  *(v7 + 144) = v41;
  *(v7 + 160) = v86;
  v42 = v83;
  *(v7 + 96) = v82;
  *(v7 + 112) = v42;
  *(v7 + 248) = v40;
  v43 = v60;
  *(v7 + 232) = v61;
  *(v7 + 216) = v43;
  v44 = v58;
  *(v7 + 200) = v59;
  v45 = v92;
  *(v7 + 48) = v35;
  *(v7 + 56) = v45;
  v46 = v50;
  *(v7 + 64) = v49;
  *(v7 + 72) = v46;
  *(v7 + 80) = v55;
  *(v7 + 88) = v56;
  *(v7 + 176) = v87;
  LOBYTE(v46) = v47;
  *(v7 + 177) = v48;
  *(v7 + 178) = v46;
  *(v7 + 344) = v68;
  *(v7 + 184) = v44;
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v7;
}

void sub_1D6660E78(uint64_t a1)
{
  if (!qword_1EDF08D18)
  {
    sub_1D6660F0C(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03418, sub_1D6660F0C, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08D18);
    }
  }
}

void sub_1D6660F0C(uint64_t a1)
{
  if (!qword_1EDF03410)
  {
    sub_1D6660FA0(255);
    sub_1D5B58B84(&qword_1EDF253E8, sub_1D6660FA0, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03410);
    }
  }
}

void sub_1D6660FA0(uint64_t a1)
{
  if (!qword_1EDF253E0)
  {
    v4[0] = &_s10CodingKeysON_259;
    v4[1] = sub_1D6661024();
    v4[2] = sub_1D6661078();
    v4[3] = sub_1D66610CC();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF253E0);
    }
  }
}

unint64_t sub_1D6661024()
{
  result = qword_1EDF2B268;
  if (!qword_1EDF2B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B268);
  }

  return result;
}

unint64_t sub_1D6661078()
{
  result = qword_1EDF2B270;
  if (!qword_1EDF2B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B270);
  }

  return result;
}

unint64_t sub_1D66610CC()
{
  result = qword_1EDF2B278;
  if (!qword_1EDF2B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B278);
  }

  return result;
}

unint64_t sub_1D66611B0()
{
  result = qword_1EDF10090;
  if (!qword_1EDF10090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10090);
  }

  return result;
}

unint64_t sub_1D6661204()
{
  result = qword_1EDF12208;
  if (!qword_1EDF12208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12208);
  }

  return result;
}

unint64_t sub_1D6661258()
{
  result = qword_1EDF10638;
  if (!qword_1EDF10638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10638);
  }

  return result;
}

unint64_t sub_1D66612AC()
{
  result = qword_1EDF05148;
  if (!qword_1EDF05148)
  {
    sub_1D5C34D84(255, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
    sub_1D618221C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05148);
  }

  return result;
}

unint64_t sub_1D6661348()
{
  result = qword_1EC886198;
  if (!qword_1EC886198)
  {
    sub_1D5C34D84(255, &qword_1EC886190, &type metadata for FormatGroupNodeStyle.Selector, MEMORY[0x1E69E62F8]);
    sub_1D600FE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886198);
  }

  return result;
}

void sub_1D66613E4(uint64_t a1)
{
  if (!qword_1EC8861A0)
  {
    sub_1D6661478(255);
    sub_1D5B58B84(&qword_1EC8861C8, sub_1D6661478, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8861A0);
    }
  }
}

void sub_1D6661478(uint64_t a1)
{
  if (!qword_1EC8861A8)
  {
    v4[0] = &_s10CodingKeysON_258;
    v4[1] = sub_1D66614FC();
    v4[2] = sub_1D6661550();
    v4[3] = sub_1D66615A4();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EC8861A8);
    }
  }
}

unint64_t sub_1D66614FC()
{
  result = qword_1EC8861B0;
  if (!qword_1EC8861B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8861B0);
  }

  return result;
}

unint64_t sub_1D6661550()
{
  result = qword_1EC8861B8;
  if (!qword_1EC8861B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8861B8);
  }

  return result;
}

unint64_t sub_1D66615A4()
{
  result = qword_1EC8861C0;
  if (!qword_1EC8861C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8861C0);
  }

  return result;
}

uint64_t sub_1D66615F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D6661658()
{
  result = qword_1EDF2D868;
  if (!qword_1EDF2D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D868);
  }

  return result;
}

void sub_1D66616AC(uint64_t a1)
{
  if (!qword_1EC8861D0)
  {
    sub_1D6661740(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EC8861E0, sub_1D6661740, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC8861D0);
    }
  }
}

void sub_1D6661740(uint64_t a1)
{
  if (!qword_1EC8861D8)
  {
    sub_1D6661478(255);
    sub_1D5B58B84(&qword_1EC8861C8, sub_1D6661478, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8861D8);
    }
  }
}

unint64_t sub_1D6661864()
{
  result = qword_1EDF3BD10;
  if (!qword_1EDF3BD10)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BD08, sub_1D5B57DEC, sub_1D5B56404, &type metadata for FormatSlotTransform);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BD10);
  }

  return result;
}

void sub_1D66618F4(uint64_t a1)
{
  if (!qword_1EDF08A38)
  {
    sub_1D6661988(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02E58, sub_1D6661988, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08A38);
    }
  }
}

void sub_1D6661988(uint64_t a1)
{
  if (!qword_1EDF02E50)
  {
    sub_1D5CB2A80(255);
    sub_1D5B58B84(&qword_1EDF24EF8, sub_1D5CB2A80, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02E50);
    }
  }
}

unint64_t sub_1D6661AAC()
{
  result = qword_1EDF04F18;
  if (!qword_1EDF04F18)
  {
    sub_1D5C34D84(255, &qword_1EDF3C8E0, &type metadata for FormatSlotTransform, MEMORY[0x1E69E62F8]);
    sub_1D5B56404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04F18);
  }

  return result;
}

unint64_t sub_1D6661B48()
{
  result = qword_1EDF32900;
  if (!qword_1EDF32900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32900);
  }

  return result;
}

unint64_t sub_1D6661B9C()
{
  result = qword_1EDF29928;
  if (!qword_1EDF29928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29928);
  }

  return result;
}

uint64_t objectdestroy_1104Tm(void (*a1)(void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));

  return swift_deallocObject();
}

void sub_1D6661C38(uint64_t a1)
{
  if (!qword_1EDF1A110)
  {
    sub_1D6661CCC(255);
    sub_1D5B58B84(&qword_1EDF25408, sub_1D6661CCC, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A110);
    }
  }
}

void sub_1D6661CCC(uint64_t a1)
{
  if (!qword_1EDF25400)
  {
    v4[0] = &_s10CodingKeysON_256;
    v4[1] = sub_1D6661D50();
    v4[2] = sub_1D6661DA4();
    v4[3] = sub_1D6661DF8();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF25400);
    }
  }
}

unint64_t sub_1D6661D50()
{
  result = qword_1EDF2B370;
  if (!qword_1EDF2B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B370);
  }

  return result;
}

unint64_t sub_1D6661DA4()
{
  result = qword_1EDF2B378;
  if (!qword_1EDF2B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B378);
  }

  return result;
}

unint64_t sub_1D6661DF8()
{
  result = qword_1EDF2B380;
  if (!qword_1EDF2B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B380);
  }

  return result;
}

void sub_1D6661E4C(uint64_t a1)
{
  if (!qword_1EDF08D30)
  {
    sub_1D6661EE0(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03448, sub_1D6661EE0, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08D30);
    }
  }
}

void sub_1D6661EE0(uint64_t a1)
{
  if (!qword_1EDF03440)
  {
    sub_1D6661CCC(255);
    sub_1D5B58B84(&qword_1EDF25408, sub_1D6661CCC, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03440);
    }
  }
}

void sub_1D6661FF0(uint64_t a1)
{
  if (!qword_1EDF08BE8)
  {
    sub_1D6662084(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF031B8, sub_1D6662084, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08BE8);
    }
  }
}

void sub_1D6662084(uint64_t a1)
{
  if (!qword_1EDF031B0)
  {
    sub_1D5C66670(255);
    sub_1D5B58B84(&qword_1EDF251F8, sub_1D5C66670, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF031B0);
    }
  }
}

unint64_t sub_1D6662194()
{
  result = qword_1EDF0B0A0;
  if (!qword_1EDF0B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B0A0);
  }

  return result;
}

unint64_t sub_1D66621E8()
{
  result = qword_1EDF0B730;
  if (!qword_1EDF0B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B730);
  }

  return result;
}

uint64_t sub_1D666223C(void *a1)
{
  v2 = v1;
  sub_1D6705290(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666274C(0);
  sub_1D5B58B84(&qword_1EC886218, sub_1D666274C, &unk_1D7321584);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

  if (v11)
  {
    v12 = sub_1D726433C();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 48);
      while (*v14 != 1)
      {
        v14 += 24;
        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      v17 = *(v14 - 2);
      v16 = *(v14 - 1);

      v18 = sub_1D6627E68(0x6F6974616D696E61, 0xEA0000000000736ELL, 0x6D6954616964656DLL, 0xEB00000000676E69);
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v19 = v17;
      *(v19 + 8) = v16;
      *(v19 + 16) = v18;
      *(v19 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C34D84(0, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation, MEMORY[0x1E69E62F8]);
  sub_1D667443C();
  v27 = 0uLL;
  LOBYTE(v28) = 0;
  sub_1D726431C();
  v15 = v25;
  v25 = xmmword_1D728CF30;
  v26 = 0;
  sub_1D66A0918();
  sub_1D726427C();
  (*(v6 + 8))(v9, v5);
  type metadata accessor for FormatAnimationNodeGroupAnimation();
  v5 = swift_allocObject();
  v21 = v31;
  *(v5 + 104) = v32;
  v22 = v34[0];
  *(v5 + 120) = v33;
  *(v5 + 136) = v22;
  *(v5 + 145) = *(v34 + 9);
  v23 = v27;
  *(v5 + 40) = v28;
  v24 = v30;
  *(v5 + 56) = v29;
  *(v5 + 72) = v24;
  *(v5 + 88) = v21;
  *(v5 + 16) = v15;
  *(v5 + 24) = v23;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

void sub_1D6662624(uint64_t a1)
{
  if (!qword_1EC8861E8)
  {
    sub_1D66626B8(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EC886220, sub_1D66626B8, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC8861E8);
    }
  }
}

void sub_1D66626B8(uint64_t a1)
{
  if (!qword_1EC8861F0)
  {
    sub_1D666274C(255);
    sub_1D5B58B84(&qword_1EC886218, sub_1D666274C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8861F0);
    }
  }
}

void sub_1D666274C(uint64_t a1)
{
  if (!qword_1EC8861F8)
  {
    v4[0] = &_s10CodingKeysON_254;
    v4[1] = sub_1D66627D0();
    v4[2] = sub_1D6662824();
    v4[3] = sub_1D6662878();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EC8861F8);
    }
  }
}

unint64_t sub_1D66627D0()
{
  result = qword_1EC886200;
  if (!qword_1EC886200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886200);
  }

  return result;
}

unint64_t sub_1D6662824()
{
  result = qword_1EC886208;
  if (!qword_1EC886208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886208);
  }

  return result;
}

unint64_t sub_1D6662878()
{
  result = qword_1EC886210;
  if (!qword_1EC886210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886210);
  }

  return result;
}

unint64_t sub_1D66628CC()
{
  result = qword_1EDF052E8;
  if (!qword_1EDF052E8)
  {
    sub_1D5C34D84(255, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation, MEMORY[0x1E69E62F8]);
    sub_1D6662968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF052E8);
  }

  return result;
}

unint64_t sub_1D6662968()
{
  result = qword_1EDF16460;
  if (!qword_1EDF16460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16460);
  }

  return result;
}

unint64_t sub_1D6662A38()
{
  result = qword_1EDF10C00;
  if (!qword_1EDF10C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10C00);
  }

  return result;
}

void sub_1D6662A8C(uint64_t a1)
{
  if (!qword_1EDF08C08)
  {
    sub_1D6662B20(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF031F8, sub_1D6662B20, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08C08);
    }
  }
}

void sub_1D6662B20(uint64_t a1)
{
  if (!qword_1EDF031F0)
  {
    sub_1D5C60A9C(255);
    sub_1D5B58B84(&qword_1EDF25238, sub_1D5C60A9C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF031F0);
    }
  }
}

unint64_t sub_1D6662C30()
{
  result = qword_1EDF11300;
  if (!qword_1EDF11300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11300);
  }

  return result;
}

unint64_t sub_1D6662C84()
{
  result = qword_1EDF0B558;
  if (!qword_1EDF0B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B558);
  }

  return result;
}

unint64_t sub_1D6662CD8()
{
  result = qword_1EC886228;
  if (!qword_1EC886228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886228);
  }

  return result;
}

unint64_t sub_1D6662D2C()
{
  result = qword_1EDF07E58;
  if (!qword_1EDF07E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07E58);
  }

  return result;
}

unint64_t sub_1D6662D80()
{
  result = qword_1EDF0EAA8;
  if (!qword_1EDF0EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EAA8);
  }

  return result;
}

void sub_1D6662DD4(uint64_t a1)
{
  if (!qword_1EDF19E28)
  {
    sub_1D6662E68(255);
    sub_1D5B58B84(&qword_1EDF24E38, sub_1D6662E68, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19E28);
    }
  }
}

void sub_1D6662E68(uint64_t a1)
{
  if (!qword_1EDF24E30)
  {
    v4[0] = &_s10CodingKeysON_252;
    v4[1] = sub_1D6662EEC();
    v4[2] = sub_1D6662F40();
    v4[3] = sub_1D6662F94();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF24E30);
    }
  }
}

unint64_t sub_1D6662EEC()
{
  result = qword_1EDF1EFA0;
  if (!qword_1EDF1EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EFA0);
  }

  return result;
}

unint64_t sub_1D6662F40()
{
  result = qword_1EDF1EFA8;
  if (!qword_1EDF1EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EFA8);
  }

  return result;
}

unint64_t sub_1D6662F94()
{
  result = qword_1EDF1EFB0;
  if (!qword_1EDF1EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EFB0);
  }

  return result;
}

void sub_1D6662FE8(uint64_t a1)
{
  if (!qword_1EDF089C0)
  {
    sub_1D666307C(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02D68, sub_1D666307C, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF089C0);
    }
  }
}

void sub_1D666307C(uint64_t a1)
{
  if (!qword_1EDF02D60)
  {
    sub_1D6662E68(255);
    sub_1D5B58B84(&qword_1EDF24E38, sub_1D6662E68, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02D60);
    }
  }
}

void sub_1D666318C(uint64_t a1)
{
  if (!qword_1EC886230)
  {
    sub_1D6663220(255);
    sub_1D5B58B84(&qword_1EC886258, sub_1D6663220, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC886230);
    }
  }
}

void sub_1D6663220(uint64_t a1)
{
  if (!qword_1EC886238)
  {
    v4[0] = &_s10CodingKeysON_251;
    v4[1] = sub_1D66632A4();
    v4[2] = sub_1D66632F8();
    v4[3] = sub_1D666334C();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EC886238);
    }
  }
}

unint64_t sub_1D66632A4()
{
  result = qword_1EC886240;
  if (!qword_1EC886240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886240);
  }

  return result;
}

unint64_t sub_1D66632F8()
{
  result = qword_1EC886248;
  if (!qword_1EC886248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886248);
  }

  return result;
}

unint64_t sub_1D666334C()
{
  result = qword_1EC886250;
  if (!qword_1EC886250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886250);
  }

  return result;
}

void sub_1D66633A0(uint64_t a1)
{
  if (!qword_1EC886268)
  {
    sub_1D6663434(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EC886278, sub_1D6663434, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC886268);
    }
  }
}

void sub_1D6663434(uint64_t a1)
{
  if (!qword_1EC886270)
  {
    sub_1D6663220(255);
    sub_1D5B58B84(&qword_1EC886258, sub_1D6663220, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC886270);
    }
  }
}

unint64_t sub_1D6663544(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663590(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66635DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663628(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663674(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66636C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D666370C(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D6663758(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66637A4(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D66637F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D666383C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663888(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66638D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663920(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D666396C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66639B8(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D6663A04(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663A50(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663A9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663AE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663B34(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663B80(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663BCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663C18(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D6663C64(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663CB0(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D6663CFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663D48(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663D94(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663DE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663E2C(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D6663E78(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663EC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663F10(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D6663F5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663FA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6663FF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664040(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D666408C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66640D8(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D6664124(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D6664170(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66641BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664208(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664254(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66642A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66642EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664338(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664384(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66643D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D666441C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664468(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66644B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664500(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D666454C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664598(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72648CC();

  if (v2 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66645EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664638(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664684(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66646D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D666471C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664768(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66647B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664800(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D666484C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664898(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D66648E4(uint64_t a1, uint64_t a2)
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

unint64_t sub_1D6664930(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D666497C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D66649C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664A14(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664A60(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664AAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D6664AF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_1D6664B44(uint64_t a1)
{
  if (!qword_1EDF08848)
  {
    sub_1D6664BD8(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02A78, sub_1D6664BD8, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08848);
    }
  }
}

void sub_1D6664BD8(uint64_t a1)
{
  if (!qword_1EDF02A70)
  {
    sub_1D5CC2354(255);
    sub_1D5B58B84(&qword_1EDF24BB8, sub_1D5CC2354, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02A70);
    }
  }
}

unint64_t sub_1D6664CE8()
{
  result = qword_1EDF10D18;
  if (!qword_1EDF10D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10D18);
  }

  return result;
}

unint64_t sub_1D6664D3C()
{
  result = qword_1EDF10500;
  if (!qword_1EDF10500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10500);
  }

  return result;
}

unint64_t sub_1D6664D90()
{
  result = qword_1EC886288;
  if (!qword_1EC886288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886288);
  }

  return result;
}

unint64_t sub_1D6664DE4()
{
  result = qword_1EDF0E1E0;
  if (!qword_1EDF0E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E1E0);
  }

  return result;
}

void *sub_1D6664E38(void *a1)
{
  sub_1D6704854(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6665BEC(0);
  sub_1D5B58B84(&qword_1EDF251E8, sub_1D6665BEC, &unk_1D7321584);
  sub_1D7264B0C();
  v10 = v1;
  if (v1)
  {
LABEL_23:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v9;
  }

  v11 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v9 = v8;
  if (v13)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v16 - 2);
      v22 = *(v16 - 1);

      v24 = sub_1D661554C();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v5 + 8))(v9, v4);
      goto LABEL_23;
    }

LABEL_7:
  }

  v48 = 0uLL;
  v49 = 0;
  if (sub_1D726434C())
  {
    v53 = 0uLL;
    v54 = 0;
    sub_1D5C30060(0, &qword_1EDF24768, sub_1D6666300, &type metadata for FormatFlexBoxNodeDisplay, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6704C48();
    sub_1D726431C();
    v17 = v51;
    v18 = *(&v51 + 1);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
    v17 = 1;
  }

  v47 = xmmword_1D728CF30;
  v48 = xmmword_1D728CF30;
  v49 = 0;
  if (sub_1D726434C())
  {
    v53 = v47;
    v54 = 0;
    sub_1D5C30060(0, &qword_1EDF24758, sub_1D666621C, &type metadata for FormatFlexBoxNodeDirection, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6704BB8();
    sub_1D726431C();
    v56 = v51;
    v19 = *(&v51 + 1);
  }

  else
  {
    v56 = 0;
    v19 = MEMORY[0x1E69E7CC0];
  }

  v47 = xmmword_1D7297410;
  v48 = xmmword_1D7297410;
  v49 = 0;
  if (sub_1D726434C())
  {
    v53 = v47;
    v54 = 0;
    sub_1D5C30060(0, &qword_1EC8862B8, sub_1D6666138, &type metadata for FormatFlexBoxNodeWrap, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6704B28();
    sub_1D726431C();
    v55 = v51;
    v20 = *(&v51 + 1);
  }

  else
  {
    v55 = 0;
    v20 = MEMORY[0x1E69E7CC0];
  }

  *&v47 = v20;
  v46 = xmmword_1D72BAA60;
  v48 = xmmword_1D72BAA60;
  v49 = 0;
  if (sub_1D726434C())
  {
    v53 = v46;
    v54 = 0;
    sub_1D5C30060(0, &qword_1EDF24738, sub_1D6666054, &type metadata for FormatFlexBoxNodeJustifyContent, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6704A98();
    sub_1D726431C();
    v44 = v51;
    v21 = *(&v51 + 1);
  }

  else
  {
    v44 = 0;
    v21 = MEMORY[0x1E69E7CC0];
  }

  *&v46 = v21;
  v45 = xmmword_1D72BAA70;
  v48 = xmmword_1D72BAA70;
  v49 = 0;
  if (sub_1D726434C())
  {
    v53 = v45;
    v54 = 0;
    sub_1D5C30060(0, &qword_1EC8862A0, sub_1D6665F70, &type metadata for FormatFlexBoxNodeAlignContent, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6704A08();
    sub_1D726431C();
    v43 = v51;
    v27 = *(&v51 + 1);
  }

  else
  {
    v43 = 0;
    v27 = MEMORY[0x1E69E7CC0];
  }

  v45 = xmmword_1D72BAA80;
  v48 = xmmword_1D72BAA80;
  v49 = 0;
  if (sub_1D726434C())
  {
    v42 = v17;
    v53 = v45;
    v54 = 0;
    sub_1D5C30060(0, &qword_1EDF24748, sub_1D6665E8C, &type metadata for FormatFlexBoxNodeAlignItems, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D6704978();
    sub_1D726431C();
    v41 = v51;
    *&v45 = *(&v51 + 1);
    v17 = v42;
  }

  else
  {
    v41 = 0;
    *&v45 = MEMORY[0x1E69E7CC0];
  }

  sub_1D660BFEC(&v48);
  v42 = v17;
  v39 = *(&v48 + 1);
  v40 = v48;
  sub_1D660BFEC(&v48);
  v38 = v27;
  v36 = *(&v48 + 1);
  v37 = v48;
  v35 = xmmword_1D72BAAB0;
  v53 = xmmword_1D72BAAB0;
  v54 = 0;
  if (sub_1D726434C())
  {
    v51 = v35;
    v52 = 0;
    sub_1D5C30060(0, &qword_1EC886290, sub_1D5FBA208, &type metadata for FormatBoolean, type metadata accessor for FormatSelectorSimpleValue);
    sub_1D67048E8();
    sub_1D726431C();
    v28 = a1;
    (*(v11 + 8))(v9, v4);
    v29 = *(&v48 + 1);
    v30 = v48;
    v31 = v49;
    v32 = v50;
    sub_1D5C75A4C(v48, *(&v48 + 1), v49);

    LODWORD(v35) = v31;
    sub_1D5D2F2C8(v30, v29, v31);
  }

  else
  {
    v28 = a1;
    (*(v11 + 8))(v9, v4);
    LODWORD(v35) = 0;
    v29 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    v30 = 1;
  }

  type metadata accessor for FormatFlexBoxNodeLayout();
  v9 = swift_allocObject();
  swift_beginAccess();
  *(v9 + 16) = v42;
  *(v9 + 24) = v18;
  swift_beginAccess();
  *(v9 + 32) = v56;
  *(v9 + 40) = v19;
  swift_beginAccess();
  *(v9 + 48) = v55;
  *(v9 + 56) = v47;
  swift_beginAccess();
  *(v9 + 64) = v44;
  *(v9 + 72) = v46;
  swift_beginAccess();
  *(v9 + 80) = v43;
  *(v9 + 88) = v38;
  swift_beginAccess();
  *(v9 + 96) = v41;
  *(v9 + 104) = v45;
  swift_beginAccess();
  v33 = v39;
  *(v9 + 112) = v40;
  *(v9 + 120) = v33;
  swift_beginAccess();
  v34 = v36;
  *(v9 + 128) = v37;
  *(v9 + 136) = v34;
  swift_beginAccess();
  *(v9 + 144) = v30;
  *(v9 + 152) = v29;
  *(v9 + 160) = v35;
  *(v9 + 168) = v32;
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v9;
}

void sub_1D6665AC4(uint64_t a1)
{
  if (!qword_1EDF08BE0)
  {
    sub_1D6665B58(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF031A8, sub_1D6665B58, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08BE0);
    }
  }
}

void sub_1D6665B58(uint64_t a1)
{
  if (!qword_1EDF031A0)
  {
    sub_1D6665BEC(255);
    sub_1D5B58B84(&qword_1EDF251E8, sub_1D6665BEC, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF031A0);
    }
  }
}

void sub_1D6665BEC(uint64_t a1)
{
  if (!qword_1EDF251E0)
  {
    v4[0] = &_s10CodingKeysON_249;
    v4[1] = sub_1D6665C70();
    v4[2] = sub_1D6665CC4();
    v4[3] = sub_1D6665D18();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF251E0);
    }
  }
}

unint64_t sub_1D6665C70()
{
  result = qword_1EDF27580;
  if (!qword_1EDF27580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27580);
  }

  return result;
}

unint64_t sub_1D6665CC4()
{
  result = qword_1EDF27588;
  if (!qword_1EDF27588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27588);
  }

  return result;
}

unint64_t sub_1D6665D18()
{
  result = qword_1EDF27590[0];
  if (!qword_1EDF27590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF27590);
  }

  return result;
}

unint64_t sub_1D6665DFC()
{
  result = qword_1EC886298;
  if (!qword_1EC886298)
  {
    sub_1D5C30060(255, &qword_1EC886290, sub_1D5FBA208, &type metadata for FormatBoolean, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886298);
  }

  return result;
}

unint64_t sub_1D6665E8C()
{
  result = qword_1EDF226E8;
  if (!qword_1EDF226E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF226E8);
  }

  return result;
}

unint64_t sub_1D6665EE0()
{
  result = qword_1EDF0BFB0;
  if (!qword_1EDF0BFB0)
  {
    sub_1D5C30060(255, &qword_1EDF24748, sub_1D6665E8C, &type metadata for FormatFlexBoxNodeAlignItems, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BFB0);
  }

  return result;
}

unint64_t sub_1D6665F70()
{
  result = qword_1EC8862A8;
  if (!qword_1EC8862A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862A8);
  }

  return result;
}

unint64_t sub_1D6665FC4()
{
  result = qword_1EC8862B0;
  if (!qword_1EC8862B0)
  {
    sub_1D5C30060(255, &qword_1EC8862A0, sub_1D6665F70, &type metadata for FormatFlexBoxNodeAlignContent, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862B0);
  }

  return result;
}

unint64_t sub_1D6666054()
{
  result = qword_1EDF1FB88;
  if (!qword_1EDF1FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FB88);
  }

  return result;
}

unint64_t sub_1D66660A8()
{
  result = qword_1EDF0BFA8;
  if (!qword_1EDF0BFA8)
  {
    sub_1D5C30060(255, &qword_1EDF24738, sub_1D6666054, &type metadata for FormatFlexBoxNodeJustifyContent, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BFA8);
  }

  return result;
}

unint64_t sub_1D6666138()
{
  result = qword_1EC8862C0;
  if (!qword_1EC8862C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862C0);
  }

  return result;
}

unint64_t sub_1D666618C()
{
  result = qword_1EC8862C8;
  if (!qword_1EC8862C8)
  {
    sub_1D5C30060(255, &qword_1EC8862B8, sub_1D6666138, &type metadata for FormatFlexBoxNodeWrap, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862C8);
  }

  return result;
}

unint64_t sub_1D666621C()
{
  result = qword_1EDF233C8;
  if (!qword_1EDF233C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF233C8);
  }

  return result;
}

unint64_t sub_1D6666270()
{
  result = qword_1EDF0BFB8;
  if (!qword_1EDF0BFB8)
  {
    sub_1D5C30060(255, &qword_1EDF24758, sub_1D666621C, &type metadata for FormatFlexBoxNodeDirection, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BFB8);
  }

  return result;
}

unint64_t sub_1D6666300()
{
  result = qword_1EDF26150;
  if (!qword_1EDF26150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26150);
  }

  return result;
}

unint64_t sub_1D6666354()
{
  result = qword_1EDF0BFC0;
  if (!qword_1EDF0BFC0)
  {
    sub_1D5C30060(255, &qword_1EDF24768, sub_1D6666300, &type metadata for FormatFlexBoxNodeDisplay, type metadata accessor for FormatSelectorSimpleValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BFC0);
  }

  return result;
}

unint64_t sub_1D66663E4()
{
  result = qword_1EDF297E8;
  if (!qword_1EDF297E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF297E8);
  }

  return result;
}

unint64_t sub_1D6666438()
{
  result = qword_1EC8862D8;
  if (!qword_1EC8862D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862D8);
  }

  return result;
}

unint64_t sub_1D666648C()
{
  result = qword_1EC8862E0;
  if (!qword_1EC8862E0)
  {
    sub_1D5C30060(255, &qword_1EC8862D0, sub_1D6666438, &type metadata for FormatOptionType, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862E0);
  }

  return result;
}

void sub_1D666651C(uint64_t a1)
{
  if (!qword_1EC8862E8)
  {
    v4[0] = &type metadata for FormatOptionValue;
    v4[1] = &type metadata for FormatOptionValue;
    v5 = sub_1D6666588();
    v6 = v5;
    v2 = type metadata accessor for FormatUnboundValue(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EC8862E8);
    }
  }
}

unint64_t sub_1D6666588()
{
  result = qword_1EC8862F0;
  if (!qword_1EC8862F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8862F0);
  }

  return result;
}

unint64_t sub_1D666668C()
{
  result = qword_1EC886308;
  if (!qword_1EC886308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886308);
  }

  return result;
}

void sub_1D66666E0(uint64_t a1)
{
  if (!qword_1EDF08868)
  {
    sub_1D5E1C3D8(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02AB8, sub_1D5E1C3D8, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08868);
    }
  }
}

unint64_t sub_1D6666804()
{
  result = qword_1EDF32090;
  if (!qword_1EDF32090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32090);
  }

  return result;
}

unint64_t sub_1D6666858()
{
  result = qword_1EDF0FCB8;
  if (!qword_1EDF0FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0FCB8);
  }

  return result;
}

unint64_t sub_1D66668AC()
{
  result = qword_1EDF27718;
  if (!qword_1EDF27718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27718);
  }

  return result;
}

unint64_t sub_1D6666900()
{
  result = qword_1EC886310;
  if (!qword_1EC886310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886310);
  }

  return result;
}

void sub_1D6666954(uint64_t a1)
{
  if (!qword_1EDF03D90)
  {
    sub_1D66669E8(255);
    sub_1D5B58B84(&qword_1EDF0C500, sub_1D66669E8, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03D90);
    }
  }
}

void sub_1D66669E8(uint64_t a1)
{
  if (!qword_1EDF0C4F8)
  {
    v4[0] = &_s10CodingKeysON_247;
    v4[1] = sub_1D6666A6C();
    v4[2] = sub_1D6666AC0();
    v4[3] = sub_1D6666B14();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF0C4F8);
    }
  }
}

unint64_t sub_1D6666A6C()
{
  result = qword_1EDF0DF18;
  if (!qword_1EDF0DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF18);
  }

  return result;
}

unint64_t sub_1D6666AC0()
{
  result = qword_1EDF0DF20;
  if (!qword_1EDF0DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF20);
  }

  return result;
}

unint64_t sub_1D6666B14()
{
  result = qword_1EDF0DF28;
  if (!qword_1EDF0DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF28);
  }

  return result;
}

unint64_t sub_1D6666B68()
{
  result = qword_1EDF0BF40;
  if (!qword_1EDF0BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BF40);
  }

  return result;
}

void sub_1D6666BBC(uint64_t a1)
{
  if (!qword_1EDF08C48)
  {
    sub_1D6666C50(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF03278, sub_1D6666C50, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08C48);
    }
  }
}

void sub_1D6666C50(uint64_t a1)
{
  if (!qword_1EDF03270)
  {
    sub_1D66669E8(255);
    sub_1D5B58B84(&qword_1EDF0C500, sub_1D66669E8, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03270);
    }
  }
}

unint64_t sub_1D6666CE4()
{
  result = qword_1EDF0BF48;
  if (!qword_1EDF0BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BF48);
  }

  return result;
}

unint64_t sub_1D6666DB4()
{
  result = qword_1EDF1F860;
  if (!qword_1EDF1F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F860);
  }

  return result;
}

unint64_t sub_1D6666E08()
{
  result = qword_1EDF1DCB8[0];
  if (!qword_1EDF1DCB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF1DCB8);
  }

  return result;
}

unint64_t sub_1D6666E5C()
{
  result = qword_1EDF09B10;
  if (!qword_1EDF09B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09B10);
  }

  return result;
}

unint64_t sub_1D6666EB0()
{
  result = qword_1EDF12758;
  if (!qword_1EDF12758)
  {
    sub_1D5C30060(255, &qword_1EDF12750, sub_1D6666E5C, &type metadata for FormatSupplementaryNodePinEdge, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12758);
  }

  return result;
}

unint64_t sub_1D6666FBC()
{
  result = qword_1EC886318;
  if (!qword_1EC886318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886318);
  }

  return result;
}

void sub_1D6667010(uint64_t a1)
{
  if (!qword_1EC886320)
  {
    sub_1D66670A4(255);
    sub_1D5B58B84(&qword_1EC886348, sub_1D66670A4, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC886320);
    }
  }
}

void sub_1D66670A4(uint64_t a1)
{
  if (!qword_1EC886328)
  {
    v4[0] = &_s10CodingKeysON_245;
    v4[1] = sub_1D6667128();
    v4[2] = sub_1D666717C();
    v4[3] = sub_1D66671D0();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EC886328);
    }
  }
}

unint64_t sub_1D6667128()
{
  result = qword_1EC886330;
  if (!qword_1EC886330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886330);
  }

  return result;
}

unint64_t sub_1D666717C()
{
  result = qword_1EC886338;
  if (!qword_1EC886338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886338);
  }

  return result;
}

unint64_t sub_1D66671D0()
{
  result = qword_1EC886340;
  if (!qword_1EC886340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886340);
  }

  return result;
}

unint64_t sub_1D6667224()
{
  result = qword_1EC886350;
  if (!qword_1EC886350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886350);
  }

  return result;
}

unint64_t sub_1D6667278()
{
  result = qword_1EC886358;
  if (!qword_1EC886358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886358);
  }

  return result;
}

void sub_1D66672CC(uint64_t a1)
{
  if (!qword_1EC886360)
  {
    sub_1D6667360(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EC886370, sub_1D6667360, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC886360);
    }
  }
}

void sub_1D6667360(uint64_t a1)
{
  if (!qword_1EC886368)
  {
    sub_1D66670A4(255);
    sub_1D5B58B84(&qword_1EC886348, sub_1D66670A4, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC886368);
    }
  }
}

unint64_t sub_1D66673F4()
{
  result = qword_1EC886378;
  if (!qword_1EC886378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886378);
  }

  return result;
}

unint64_t sub_1D66674C4()
{
  result = qword_1EC886380;
  if (!qword_1EC886380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886380);
  }

  return result;
}

void sub_1D6667518(uint64_t a1)
{
  if (!qword_1EDF08E08)
  {
    sub_1D66675AC(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF035F8, sub_1D66675AC, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF08E08);
    }
  }
}

void sub_1D66675AC(uint64_t a1)
{
  if (!qword_1EDF035F0)
  {
    sub_1D5CAFBB4(255);
    sub_1D5B58B84(&qword_1EDF25598, sub_1D5CAFBB4, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF035F0);
    }
  }
}

unint64_t sub_1D66676BC()
{
  result = qword_1EDF04CF8;
  if (!qword_1EDF04CF8)
  {
    sub_1D5C34D84(255, &qword_1EDF1B030, &type metadata for FormatLocalizationString, MEMORY[0x1E69E62F8]);
    sub_1D6667758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04CF8);
  }

  return result;
}

unint64_t sub_1D6667758()
{
  result = qword_1EDF0CEF8;
  if (!qword_1EDF0CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CEF8);
  }

  return result;
}

unint64_t sub_1D66677AC()
{
  result = qword_1EDF2AD50;
  if (!qword_1EDF2AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AD50);
  }

  return result;
}

unint64_t sub_1D6667800()
{
  result = qword_1EC886388;
  if (!qword_1EC886388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886388);
  }

  return result;
}

unint64_t sub_1D6667854()
{
  result = qword_1EDF24818;
  if (!qword_1EDF24818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24818);
  }

  return result;
}

unint64_t sub_1D66678A8()
{
  result = qword_1EDF2DB38;
  if (!qword_1EDF2DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DB38);
  }

  return result;
}

unint64_t sub_1D66678FC()
{
  result = qword_1EDF225D8;
  if (!qword_1EDF225D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF225D8);
  }

  return result;
}

void sub_1D6667950(uint64_t a1)
{
  if (!qword_1EC886390)
  {
    sub_1D66679E4(255);
    sub_1D5B58B84(&qword_1EC8863B8, sub_1D66679E4, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC886390);
    }
  }
}

void sub_1D66679E4(uint64_t a1)
{
  if (!qword_1EC886398)
  {
    v4[0] = &_s10CodingKeysON_243;
    v4[1] = sub_1D6667A68();
    v4[2] = sub_1D6667ABC();
    v4[3] = sub_1D6667B10();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EC886398);
    }
  }
}

unint64_t sub_1D6667A68()
{
  result = qword_1EC8863A0;
  if (!qword_1EC8863A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8863A0);
  }

  return result;
}

unint64_t sub_1D6667ABC()
{
  result = qword_1EC8863A8;
  if (!qword_1EC8863A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8863A8);
  }

  return result;
}

unint64_t sub_1D6667B10()
{
  result = qword_1EC8863B0;
  if (!qword_1EC8863B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8863B0);
  }

  return result;
}

void sub_1D6667B64(uint64_t a1)
{
  if (!qword_1EC8863C0)
  {
    sub_1D6667BF8(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EC8863D0, sub_1D6667BF8, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC8863C0);
    }
  }
}

void sub_1D6667BF8(uint64_t a1)
{
  if (!qword_1EC8863C8)
  {
    sub_1D66679E4(255);
    sub_1D5B58B84(&qword_1EC8863B8, sub_1D66679E4, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8863C8);
    }
  }
}

void sub_1D6667D08(uint64_t a1)
{
  if (!qword_1EC8863D8)
  {
    sub_1D6667D9C(255);
    sub_1D5B58B84(&qword_1EC886400, sub_1D6667D9C, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8863D8);
    }
  }
}

void sub_1D6667D9C(uint64_t a1)
{
  if (!qword_1EC8863E0)
  {
    v4[0] = &_s10CodingKeysON_242;
    v4[1] = sub_1D6667E20();
    v4[2] = sub_1D6667E74();
    v4[3] = sub_1D6667EC8();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EC8863E0);
    }
  }
}

unint64_t sub_1D6667E20()
{
  result = qword_1EC8863E8;
  if (!qword_1EC8863E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8863E8);
  }

  return result;
}

unint64_t sub_1D6667E74()
{
  result = qword_1EC8863F0;
  if (!qword_1EC8863F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8863F0);
  }

  return result;
}

unint64_t sub_1D6667EC8()
{
  result = qword_1EC8863F8;
  if (!qword_1EC8863F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8863F8);
  }

  return result;
}

void sub_1D6667F1C(uint64_t a1)
{
  if (!qword_1EC886408)
  {
    sub_1D6667FB0(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EC886418, sub_1D6667FB0, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EC886408);
    }
  }
}

void sub_1D6667FB0(uint64_t a1)
{
  if (!qword_1EC886410)
  {
    sub_1D6667D9C(255);
    sub_1D5B58B84(&qword_1EC886400, sub_1D6667D9C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC886410);
    }
  }
}

void sub_1D66680A8(uint64_t a1)
{
  if (!qword_1EDF19E30)
  {
    sub_1D666813C(255);
    sub_1D5B58B84(&qword_1EDF24E48, sub_1D666813C, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF19E30);
    }
  }
}

void sub_1D666813C(uint64_t a1)
{
  if (!qword_1EDF24E40)
  {
    v4[0] = &_s10CodingKeysON_241;
    v4[1] = sub_1D66681C0();
    v4[2] = sub_1D6668214();
    v4[3] = sub_1D6668268();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF24E40);
    }
  }
}

unint64_t sub_1D66681C0()
{
  result = qword_1EDF1F270;
  if (!qword_1EDF1F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F270);
  }

  return result;
}

unint64_t sub_1D6668214()
{
  result = qword_1EDF1F278;
  if (!qword_1EDF1F278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F278);
  }

  return result;
}

unint64_t sub_1D6668268()
{
  result = qword_1EDF1F280;
  if (!qword_1EDF1F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F280);
  }

  return result;
}

void sub_1D66682BC(uint64_t a1)
{
  if (!qword_1EDF089C8)
  {
    sub_1D6668350(255);
    v3 = v2;
    v4 = sub_1D5B58B84(&qword_1EDF02D78, sub_1D6668350, MEMORY[0x1E69E6F60]);
    v6 = type metadata accessor for VersionedKeyedEncodingContainer(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF089C8);
    }
  }
}

void sub_1D6668350(uint64_t a1)
{
  if (!qword_1EDF02D70)
  {
    sub_1D666813C(255);
    sub_1D5B58B84(&qword_1EDF24E48, sub_1D666813C, &unk_1D7321584);
    v1 = sub_1D726446C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF02D70);
    }
  }
}

void sub_1D6668448(uint64_t a1)
{
  if (!qword_1EDF03D20)
  {
    sub_1D66684DC(255);
    sub_1D5B58B84(&qword_1EDF0C420, sub_1D66684DC, &unk_1D7321584);
    v1 = sub_1D726435C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03D20);
    }
  }
}

void sub_1D66684DC(uint64_t a1)
{
  if (!qword_1EDF0C418)
  {
    v4[0] = &_s10CodingKeysON_240;
    v4[1] = sub_1D6668560();
    v4[2] = sub_1D66685B4();
    v4[3] = sub_1D6668608();
    v2 = type metadata accessor for FormatCodingKeysContainer(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF0C418);
    }
  }
}

unint64_t sub_1D6668560()
{
  result = qword_1EDF082D0;
  if (!qword_1EDF082D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF082D0);
  }

  return result;
}

unint64_t sub_1D66685B4()
{
  result = qword_1EDF082D8;
  if (!qword_1EDF082D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF082D8);
  }

  return result;
}

unint64_t sub_1D6668608()
{
  result = qword_1EDF082E0;
  if (!qword_1EDF082E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF082E0);
  }

  return result;
}