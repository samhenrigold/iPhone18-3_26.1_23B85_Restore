void sub_1D6FD5540(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext(0);
  v8 = v7();
  v9 = sub_1D5E02AFC(v8, a1);

  if (!v3)
  {
    v16 = a3;
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    sub_1D5F3FE24(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    *(v11 + 32) = v10;
    *(v11 + 40) = 0;
    v12 = v7();
    v13 = sub_1D5E02AFC(v12, a2);

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    *(v15 + 32) = v14;
    *(v15 + 40) = 0;
    *v16 = v11;
    v16[1] = v15;
  }
}

void sub_1D6FD56DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *, uint64_t))
{
  v62 = a3;
  v63 = a4;
  v8 = type metadata accessor for FormatOption(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D69D6904(*(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks));
  if (!v5)
  {
    v61 = a1;
    v58 = v9;
    v68 = v12;
    v57 = v8;
    v60 = v4;
    if (v13)
    {
      v56 = 0;
      v14 = v60;
      v15 = v13;
      swift_beginAccess();
      v16 = v14[2];
      v17 = v14[3];

      sub_1D6B0A84C(v16, v17);

      v18 = v14[2];
      v19 = v14[3];

      v55[1] = sub_1D6B0B228(v18, v19);

      swift_beginAccess();
      v20 = *(v15 + 40);
      v21 = *(v20 + 16);
      v22 = MEMORY[0x1E69E7CC0];
      v59 = v15;
      if (v21)
      {
        v65[0] = MEMORY[0x1E69E7CC0];

        sub_1D5D24610(0, v21, 0);
        v22 = v65[0];
        v23 = *(v58 + 80);
        v55[0] = v20;
        v24 = v20 + ((v23 + 32) & ~v23);
        v64 = *(v58 + 72);
        v25 = v68;
        do
        {
          sub_1D5BE4148(v24, v25, type metadata accessor for FormatOption);
          v26 = swift_allocBox();
          sub_1D5BDAB74(v25, v27, type metadata accessor for FormatOption);
          v65[0] = v22;
          v29 = *(v22 + 16);
          v28 = *(v22 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1D5D24610((v28 > 1), v29 + 1, 1);
            v22 = v65[0];
          }

          *(v22 + 16) = v29 + 1;
          *(v22 + 8 * v29 + 32) = v26 | 0xB000000000000004;
          v24 += v64;
          --v21;
        }

        while (v21);

        v15 = v59;
        v14 = v60;
      }

      else
      {
        v25 = v68;
      }

      v30 = v58;
      swift_beginAccess();
      v31 = v14[7];
      v32 = *(v31 + 16);
      v33 = MEMORY[0x1E69E7CC0];
      if (v32)
      {
        v65[0] = MEMORY[0x1E69E7CC0];

        sub_1D5D24610(0, v32, 0);
        v33 = v65[0];
        v34 = *(v30 + 80);
        v58 = v31;
        v35 = v31 + ((v34 + 32) & ~v34);
        v64 = *(v30 + 72);
        do
        {
          sub_1D5BE4148(v35, v25, type metadata accessor for FormatOption);
          v36 = swift_allocBox();
          sub_1D5BDAB74(v25, v37, type metadata accessor for FormatOption);
          v65[0] = v33;
          v39 = *(v33 + 16);
          v38 = *(v33 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1D5D24610((v38 > 1), v39 + 1, 1);
            v33 = v65[0];
          }

          *(v33 + 16) = v39 + 1;
          *(v33 + 8 * v39 + 32) = v36 | 0x7000000000000000;
          v35 += v64;
          --v32;
          v25 = v68;
        }

        while (v32);

        v40 = v59;
      }

      else
      {
        v40 = v15;
      }

      v65[0] = v22;
      sub_1D6985C44(v33);
      sub_1D6B0C068(v65[0]);

      swift_beginAccess();
      v41 = *(v40 + 48);
      swift_beginAccess();

      v43 = sub_1D5D6021C(v42, v41);
      v44 = sub_1D6B0ACE8(v43, 0);

      swift_beginAccess();
      v45 = *(v40 + 32);
      v46 = *(v45 + 16);

      if (v46)
      {
        v47 = 0;
        v48 = 32;
        v49 = v56;
        while (v47 < *(v45 + 16))
        {
          v50 = *(v45 + v48);
          v51 = *(v45 + v48 + 32);
          v66[1] = *(v45 + v48 + 16);
          v66[2] = v51;
          v66[0] = v50;
          v52 = *(v45 + v48 + 48);
          v53 = *(v45 + v48 + 64);
          v54 = *(v45 + v48 + 80);
          v67 = *(v45 + v48 + 96);
          v66[4] = v53;
          v66[5] = v54;
          v66[3] = v52;
          sub_1D5C5C4CC(v66, v65);
          v63(v61, v44, v62);
          if (v49)
          {

            sub_1D5C5C540(v66);
            return;
          }

          ++v47;
          sub_1D5C5C540(v66);
          v48 += 104;
          if (v46 == v47)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_22:
      }
    }
  }
}

void sub_1D6FD5C60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + 56))
  {
    v12 = *(v2 + 8);
    v11 = *(v2 + 16);
    v14 = *(v2 + 24);
    v13 = *(v2 + 32);
    v16 = *(v2 + 40);
    v15 = *(v2 + 48);
    v17 = v15 & 0xF000000000000007;
    if ((v15 & 0xF000000000000007) == 0xD000000000000007)
    {
      *a2 = v4;
      *(a2 + 8) = v12;
      *(a2 + 16) = v11;
      *(a2 + 24) = v14;
      *(a2 + 32) = v13;
      *(a2 + 40) = v16;
      *(a2 + 48) = v15;
      *(a2 + 56) = 0;
      return;
    }

    if ((~v4 & 0xF000000000000007) != 0)
    {
      v23 = a1;
      v25 = a2;
      sub_1D5FA6CB0(a1, v4, &v28);
      if (v3)
      {
        return;
      }

      v27 = 0;
      v4 = v28;
      a1 = v23;
      a2 = v25;
      if (v17 == 0xF000000000000007)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v27 = v3;
      if (v17 == 0xF000000000000007)
      {
LABEL_20:
        *a2 = v4;
        *(a2 + 8) = v12;
        *(a2 + 16) = v11;
        *(a2 + 24) = v14;
        *(a2 + 32) = v13;
        *(a2 + 40) = v16 & 1;
        *(a2 + 48) = v15;
        *(a2 + 56) = 0;
        return;
      }
    }

    v26 = a2;
    v28 = a1;
    v24 = swift_allocObject();
    v19 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v20 = v19();
    FormatFloat.value(contextLayoutOptions:)(v20);
    if (v27)
    {
      sub_1D5C84FF4(v4);

      swift_deallocUninitializedObject();
      return;
    }

    v22 = v21;

    v15 = v24;
    a2 = v26;
    *(v24 + 16) = v22;
    goto LABEL_20;
  }

  if (*(v2 + 56) == 1)
  {
    if ((v4 & 0xF000000000000007) != 0xD000000000000007 && (v4 & 0xF000000000000007) != 0xF000000000000007)
    {
      v5 = a2;
      v28 = a1;
      v6 = swift_allocObject();
      v7 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v8 = v7();
      FormatFloat.value(contextLayoutOptions:)(v8);
      v10 = v9;

      if (v3)
      {
        swift_deallocUninitializedObject();
        return;
      }

      *(v6 + 16) = v10;
      v4 = v6;
      a2 = v5;
    }

    *a2 = v4;
    *(a2 + 56) = 1;
  }

  else
  {
    v18 = *(v2 + 16);
    *a2 = *v2;
    *(a2 + 16) = v18;
    *(a2 + 32) = *(v2 + 32);
    *(a2 + 41) = *(v2 + 41);
  }
}

void sub_1D6FD5EE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v83 = a7;
  v82 = a6;
  v81 = a5;
  v80 = a4;
  v8 = v7;
  v97 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v85 = v11;
  v84 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v86 = (v78 - v13);
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v92 = v78 - v17;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v89 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v90 = v78 - v23;
  v88 = type metadata accessor for FormatNodeStateData.Data(0);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v24);
  v26 = v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FormatShareAttributionData(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v94 = v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SharedItem(0);
  v78[0] = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v79 = v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78[1] = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v98 = v78 - v35;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = (v78 - v38);
  v104 = a1;
  v40 = sub_1D6B0ACE8(v8[10], 0);
  v41 = *v8;
  v42 = v8[1];
  v91 = v8;
  v43 = sub_1D6E8DD40(v41, v42);
  v45 = v44;
  if (*(*(v97 + 24) + 16))
  {
    *v39 = v40;
    v46 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v46 - 8) + 56))(v39, 0, 1, v46);
    swift_beginAccess();

    sub_1D6D60828(v39, v43, v45);
    swift_endAccess();
  }

  v93 = v43;
  v97 = v45;
  v96 = v40;
  v100 = type metadata accessor for FormatNodeContext(0);
  v101 = &off_1F51AF328;
  v99[0] = a2;

  v47 = v98;
  v48 = v95;
  sub_1D6D9723C(v99, v98);
  if (v48)
  {

    __swift_destroy_boxed_opaque_existential_1(v99);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v99);
    v49 = v47;
    v50 = v94;
    sub_1D5BE4148(v49, v94, type metadata accessor for SharedItem);
    sub_1D5BE4148(v50, v26, type metadata accessor for FormatShareAttributionData);
    v51 = v88;
    swift_storeEnumTagMultiPayload();
    v52 = v90;
    sub_1D5BE4148(v26, v90, type metadata accessor for FormatNodeStateData.Data);
    (*(v87 + 56))(v52, 0, 1, v51);
    v53 = MEMORY[0x1E69E6720];
    v54 = v89;
    sub_1D6FFC87C(v52, v89, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_beginAccess();
    v55 = v97;

    sub_1D6D60A18(v54, v93, v55);
    swift_endAccess();
    sub_1D6FFCA9C(v52, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v53, sub_1D5D27F7C);
    sub_1D6FFC9A0(v26, type metadata accessor for FormatNodeStateData.Data);
    v56 = v91;
    if (v91[11])
    {
      v58 = v91[15];
      v57 = v91[16];
      v60 = v91[13];
      v59 = v91[14];
      v61 = v91[12];
      v99[0] = v91[11];
      v99[1] = v61;
      v99[2] = v60;
      v100 = v59;
      v101 = v58;
      v102 = v57;

      sub_1D5DEA234(v58);

      v62 = v92;
      sub_1D68687FC(v96, v92);
      v63 = v101;

      sub_1D5CBF568(v63);

      v64 = 0;
    }

    else
    {
      v62 = v92;
      v64 = 1;
    }

    v65 = sub_1D7259B8C();
    (*(*(v65 - 8) + 56))(v62, v64, 1, v65);
    swift_getKeyPath();
    v105 = *(v56 + 16);
    v99[0] = v105;
    v66 = v97;

    sub_1D6FF9454(&v105, v103, &qword_1EC8992B8, sub_1D5F2C75C, &type metadata for FormatCodingSizeToFitStrategy, type metadata accessor for FormatCodingDefault);
    v67 = v96;
    v68 = v93;
    sub_1D5BEB9F4(v96, v93, v66, v86);
    sub_1D5C92A8C(v99[0]);
    v95 = sub_1D618EFB4(v67, *(v56 + 32));
    v69 = v79;
    sub_1D5BE4148(v98, v79, type metadata accessor for SharedItem);
    v70 = (*(v78[0] + 80) + 176) & ~*(v78[0] + 80);
    v71 = swift_allocObject();
    v72 = *(v56 + 64);
    *(v71 + 104) = *(v56 + 80);
    v73 = *(v56 + 112);
    *(v71 + 120) = *(v56 + 96);
    *(v71 + 136) = v73;
    v74 = *v56;
    *(v71 + 40) = *(v56 + 16);
    v75 = *(v56 + 48);
    *(v71 + 56) = *(v56 + 32);
    *(v71 + 72) = v75;
    *(v71 + 88) = v72;
    *(v71 + 16) = v67;
    v76 = *(v56 + 128);
    *(v71 + 24) = v74;
    *(v71 + 152) = v76;
    *(v71 + 160) = v68;
    *(v71 + 168) = v66;
    sub_1D5BDAB74(v69, v71 + v70, type metadata accessor for SharedItem);

    sub_1D62B60B4(v56, v99);
    v81(0);
    v82();
    v77 = v86;
    sub_1D7259B1C();

    (*(v84 + 8))(v77, v85);
    sub_1D6FFCA9C(v62, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    sub_1D6FFC9A0(v94, type metadata accessor for FormatShareAttributionData);
    sub_1D6FFC9A0(v98, type metadata accessor for SharedItem);
  }
}

void sub_1D6FD6B80(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = v2[5];
  v60[4] = v2[4];
  v60[5] = v6;
  v7 = v2[7];
  v60[6] = v2[6];
  v60[7] = v7;
  v8 = v2[1];
  v60[0] = *v2;
  v60[1] = v8;
  v9 = v2[3];
  v60[2] = v2[2];
  v60[3] = v9;
  v10 = sub_1D5CFD35C(v60);
  v11 = sub_1D5CFD34C(v60);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v15 = *(v11 + 80);
      *&v66[16] = *(v11 + 64);
      *&v66[32] = v15;
      *&v66[48] = *(v11 + 96);
      v16 = *(v11 + 16);
      v63 = *v11;
      v64 = v16;
      v17 = *(v11 + 48);
      v65 = *(v11 + 32);
      *v66 = v17;
      v46[0] = a1;
      v18 = *(v11 + 120);
      MEMORY[0x1EEE9AC00](v11, v12);
      v45 = v46;
      v20 = sub_1D5EC9E90(sub_1D6FF93D0, v44, v19);
      if (!v3)
      {
        v48 = v63;
        v49 = v64;
        v50 = v65;
        LOBYTE(v51[0]) = v66[0];
        *(v51 + 8) = *&v66[8];
        *(&v51[1] + 8) = *&v66[24];
        *(&v51[2] + 8) = *&v66[40];
        BYTE8(v51[3]) = v66[56];
        v67 = v18;
        v57 = v51[2];
        v58 = v51[3];
        v55 = v51[0];
        v56 = v51[1];
        v53 = v64;
        v54 = v65;
        v52 = v63;
        *&v59 = v20;
        *(&v59 + 1) = v18;
        sub_1D5C326F0(&v52);
        v21 = v57;
        a2[4] = v56;
        a2[5] = v21;
        v22 = v59;
        a2[6] = v58;
        a2[7] = v22;
        v23 = v53;
        *a2 = v52;
        a2[1] = v23;
        v24 = v55;
        a2[2] = v54;
        a2[3] = v24;
        sub_1D6FFC87C(&v67, &v47, &unk_1EC8992B0, &qword_1EDF1B5E0, MEMORY[0x1E69E7DE0], sub_1D6FF93E8);
      }
    }

    else
    {
      sub_1D6FD6FB8(a1, *v11, v46);
      if (!v3)
      {
        *&v52 = v46[0];
        sub_1D5C49D78(&v52);
        v31 = v57;
        a2[4] = v56;
        a2[5] = v31;
        v32 = v59;
        a2[6] = v58;
        a2[7] = v32;
        v33 = v53;
        *a2 = v52;
        a2[1] = v33;
        v34 = v55;
        a2[2] = v54;
        a2[3] = v34;
      }
    }
  }

  else if (v10)
  {
    v25 = *(v11 + 8);
    v26 = *(v11 + 32);
    v61 = *(v11 + 16);
    v62 = v26;
    v28 = *(v11 + 48);
    v27 = *(v11 + 56);
    *&v52 = a1;
    MEMORY[0x1EEE9AC00](v11, v12);
    v45 = &v52;
    v30 = sub_1D5EC9E90(sub_1D6FFCBEC, v44, v29);
    if (!v3)
    {
      v69 = v30;
      v68[0] = v25;
      sub_1D6FFC87C(v68, &v52, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
      if (v28)
      {
        sub_1D6FCAC74(v28, v27, v46);
        v39 = v46[0];
        v27 = v46[1];
      }

      else
      {
        v39 = 0;
      }

      v53 = v61;
      v54 = v62;
      *&v52 = v69;
      *(&v52 + 1) = v68[0];
      *&v55 = v39;
      *(&v55 + 1) = v27;
      sub_1D6687774(&v52);
      v40 = v57;
      a2[4] = v56;
      a2[5] = v40;
      v41 = v59;
      a2[6] = v58;
      a2[7] = v41;
      v42 = v53;
      *a2 = v52;
      a2[1] = v42;
      v43 = v55;
      a2[2] = v54;
      a2[3] = v43;
    }
  }

  else
  {
    v13 = *(v11 + 8);
    sub_1D5FA6CB0(a1, *v11, v46);
    if (!v3)
    {
      v14 = v46[0];
      sub_1D5FA6CB0(a1, v13, &v47);
      *&v52 = v14;
      *(&v52 + 1) = v47;
      sub_1D5C32704(&v52);
      v35 = v57;
      a2[4] = v56;
      a2[5] = v35;
      v36 = v59;
      a2[6] = v58;
      a2[7] = v36;
      v37 = v53;
      *a2 = v52;
      a2[1] = v37;
      v38 = v55;
      a2[2] = v54;
      a2[3] = v38;
    }
  }
}

void sub_1D6FD6FB8(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2 & 7;
  if (v5 <= 1)
  {
    if ((a2 & 7) != 0)
    {
      sub_1D5FA6CB0(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v7);
      if (v3)
      {
        return;
      }

      v6 = v7 | 1;
    }

    else
    {
      sub_1D5FA6CB0(a1, a2, &v7);
      if (v3)
      {
        return;
      }

      v6 = v7;
    }
  }

  else if (v5 == 2)
  {
    sub_1D5FA6CB0(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v7);
    if (v3)
    {
      return;
    }

    v6 = v7 | 2;
  }

  else if (v5 == 3)
  {
    sub_1D5FA6CB0(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v7);
    if (v3)
    {
      return;
    }

    v6 = v7 | 3;
  }

  else
  {
    sub_1D5FA6CB0(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v7);
    if (v3)
    {
      return;
    }

    v6 = v7 | 4;
  }

  *a3 = v6;
}

void sub_1D6FD707C(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v5 = a2 & 7;
  if (v5 <= 1)
  {
    if ((a2 & 7) != 0)
    {
      sub_1D5FA8D3C(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v7);
      if (v3)
      {
        return;
      }

      v6 = v7 | 1;
    }

    else
    {
      sub_1D5FA8D3C(a1, a2, &v7);
      if (v3)
      {
        return;
      }

      v6 = v7;
    }
  }

  else if (v5 == 2)
  {
    sub_1D5FA8D3C(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v7);
    if (v3)
    {
      return;
    }

    v6 = v7 | 2;
  }

  else if (v5 == 3)
  {
    sub_1D5FA8D3C(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v7);
    if (v3)
    {
      return;
    }

    v6 = v7 | 3;
  }

  else
  {
    sub_1D5FA8D3C(a1, a2 & 0xFFFFFFFFFFFFFFF8, &v7);
    if (v3)
    {
      return;
    }

    v6 = v7 | 4;
  }

  *a3 = v6;
}

void sub_1D6FD7140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v81 = a7;
  v80 = a6;
  v79 = a5;
  v78 = a4;
  v8 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v83 = v12;
  v82 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v84 = (&v76 - v14);
  v15 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v91 = &v76 - v18;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v15);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v89 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v90 = &v76 - v24;
  v87 = type metadata accessor for FormatNodeStateData.Data(0);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87, v25);
  v88 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for FeedSponsorshipBannerAd(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v93 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v15);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = (&v76 - v32);
  v103 = a1;
  swift_beginAccess();

  v92 = a2;
  v35 = sub_1D6B0ACE8(v34, 0);

  v36 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace;
  swift_beginAccess();
  v37 = v8[2];
  v38 = v8[3];

  v39 = sub_1D6E8DD40(v37, v38);
  v41 = v40;

  v85 = *(a3 + 24);
  if (*(v85 + 16))
  {
    *v33 = v35;
    v42 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v42 - 8) + 56))(v33, 0, 1, v42);
    swift_beginAccess();

    sub_1D6D60828(v33, v39, v41);
    swift_endAccess();
  }

  v95 = v39;
  v96 = v41;
  v43 = *(v35 + v36);
  v44 = v8[2];
  v45 = v8[3];
  v46 = *(v43 + 40);
  if (v46)
  {
    v97 = *(v43 + 32);
    v98 = v46;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v44, v45);

    v44 = v97;
    v45 = v98;
  }

  else
  {
  }

  v47 = v95;
  v48 = (*(v35 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v49 = *v48;
  v50 = v48[1];
  swift_beginAccess();
  v51 = v8[12];

  v52 = v94;
  sub_1D6FBF074(v51, v35, v49, v50);
  if (v52)
  {

    return;
  }

  v94 = v53;

  v54 = v93;
  sub_1D67524A0(*(v92 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v93);
  v92 = 0;
  v77 = v44;
  v55 = v88;
  sub_1D5BE4148(v54, v88, type metadata accessor for FeedSponsorshipBannerAd);
  v56 = v87;
  swift_storeEnumTagMultiPayload();
  v57 = v90;
  sub_1D5BE4148(v55, v90, type metadata accessor for FormatNodeStateData.Data);
  (*(v86 + 56))(v57, 0, 1, v56);
  v87 = type metadata accessor for FormatNodeStateData.Data;
  v86 = MEMORY[0x1E69E6720];
  v58 = v89;
  sub_1D6FFC87C(v57, v89, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  v59 = v96;

  sub_1D6D60A18(v58, v47, v59);
  swift_endAccess();
  sub_1D6FFCA9C(v57, &qword_1EDF2C470, v87, v86, sub_1D5D27F7C);
  sub_1D6FFC9A0(v55, type metadata accessor for FormatNodeStateData.Data);
  sub_1D6FFC9A0(v93, type metadata accessor for FeedSponsorshipBannerAd);
  if (v8[13])
  {
    v61 = v8[17];
    v60 = v8[18];
    v63 = v8[15];
    v62 = v8[16];
    v64 = v8[14];
    v97 = v8[13];
    v98 = v64;
    v99 = v63;
    v100 = v62;
    v101 = v61;
    v102 = v60;

    sub_1D5DEA234(v61);

    v65 = v91;
    v66 = v92;
    sub_1D68687FC(v35, v91);
    if (v66)
    {

      v67 = v101;

      sub_1D5CBF568(v67);

      return;
    }

    v92 = 0;
    v69 = v101;

    sub_1D5CBF568(v69);

    v68 = 0;
  }

  else
  {
    v65 = v91;
    v68 = 1;
  }

  v70 = sub_1D7259B8C();
  (*(*(v70 - 8) + 56))(v65, v68, 1, v70);
  swift_getKeyPath();
  v97 = v8[4];
  v71 = v97;
  v72 = v96;

  sub_1D5C82CD8(v71);
  v73 = v92;
  sub_1D5BEB9F4(v35, v95, v72, v84);
  if (v73)
  {
    sub_1D6FFCA9C(v65, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

    swift_bridgeObjectRelease_n();

    sub_1D5C92A8C(v97);
  }

  else
  {
    sub_1D5C92A8C(v97);
    swift_beginAccess();
    v74 = v8[6];

    v93 = sub_1D618EFB4(v35, v74);

    v75 = swift_allocObject();
    v75[2] = v95;
    v75[3] = v72;
    v75[4] = v77;
    v75[5] = v45;
    v75[6] = v8;
    v75[7] = v35;
    v75[8] = v94;
    v79(0);
    v80();

    sub_1D7259B1C();

    (*(v82 + 8))(v84, v83);
    sub_1D6FFCA9C(v65, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

void sub_1D6FD7E50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *, uint64_t))
{
  v55 = a4;
  v56 = a1;
  v6 = v5;
  v7 = v4;
  v57 = a3;
  v52 = type metadata accessor for FormatOption(0);
  v9 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = v7[2];
  v14 = v7[3];

  v53 = sub_1D6B0CB1C(v13, v14);

  swift_beginAccess();
  v54 = v7;
  v15 = v7[7];
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v50 = a2;
    v51 = v6;
    v58[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v16, 0);
    v17 = v58[0];
    v18 = *(v9 + 80);
    v49 = v15;
    v19 = v15 + ((v18 + 32) & ~v18);
    v69 = *(v9 + 72);
    do
    {
      sub_1D5BE4148(v19, v12, type metadata accessor for FormatOption);
      v20 = swift_allocBox();
      sub_1D5BDAB74(v12, v21, type metadata accessor for FormatOption);
      v58[0] = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D5D24610((v22 > 1), v23 + 1, 1);
        v17 = v58[0];
      }

      *(v17 + 16) = v23 + 1;
      *(v17 + 8 * v23 + 32) = v20 | 0x6000000000000000;
      v19 += v69;
      --v16;
    }

    while (v16);

    a2 = v50;
    v6 = v51;
  }

  v24 = (a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v25 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 16);
  v65 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v66 = v25;
  v26 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
  v67 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 32);
  v68 = v26;
  v27 = v54;
  v28 = v54[2];
  v29 = v54[3];

  v30 = sub_1D71DB6D4(v28, v29);

  v58[0] = v17;
  sub_1D6985C44(v30);
  sub_1D6B0C068(v58[0]);

  swift_beginAccess();
  v31 = v27[6];
  v32 = v24[1];
  v61 = *v24;
  v62 = v32;
  v33 = v24[3];
  v63 = v24[2];
  v64 = v33;
  v34 = v27[2];
  v35 = v27[3];

  v36 = sub_1D71DB738(v34, v35);

  v37 = sub_1D5D6021C(v36, v31);
  v38 = sub_1D6B0ACE8(v37, 0);

  swift_beginAccess();
  v39 = v27[5];
  v40 = *(v39 + 16);

  v41 = v55;
  if (v40)
  {
    v42 = 0;
    v43 = 32;
    while (v42 < *(v39 + 16))
    {
      v44 = *(v39 + v43);
      v45 = *(v39 + v43 + 32);
      v59[1] = *(v39 + v43 + 16);
      v59[2] = v45;
      v59[0] = v44;
      v46 = *(v39 + v43 + 48);
      v47 = *(v39 + v43 + 64);
      v48 = *(v39 + v43 + 80);
      v60 = *(v39 + v43 + 96);
      v59[4] = v47;
      v59[5] = v48;
      v59[3] = v46;
      sub_1D5C5C4CC(v59, v58);
      v41(v56, v38, v57);
      if (v6)
      {

        sub_1D5C5C540(v59);
        return;
      }

      ++v42;
      sub_1D5C5C540(v59);
      v43 += 104;
      if (v40 == v42)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

void sub_1D6FD8274(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t (*a5)(void), uint64_t a6, void (*a7)(uint64_t, uint64_t, char *, void, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v58 = a7;
  v57 = a6;
  v56 = a5;
  v55 = a4;
  v9 = v8;
  v10 = v7;
  v54 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v59 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v61 = (&v51 - v16);
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v51 - v19;
  v72 = a1;
  swift_beginAccess();
  v21 = *(v10 + 16);
  v22 = *(v10 + 24);

  v60 = sub_1D6E8DD40(v21, v22);
  v64 = v23;

  v24 = *(v10 + 32);
  v25 = *(v10 + 40);
  swift_beginAccess();
  v26 = *(v10 + 48);
  v65[0] = a2;

  v62 = sub_1D6FB9DC4(v26, v65);

  v53 = sub_1D6E8DD40(v24, v25);
  v63 = v27;

  if (*(v10 + 144))
  {
    v29 = *(v10 + 176);
    v28 = *(v10 + 184);
    v31 = *(v10 + 160);
    v30 = *(v10 + 168);
    v32 = *(v10 + 152);
    v65[0] = *(v10 + 144);
    v65[1] = v32;
    v65[2] = v31;
    v65[3] = v30;
    v66 = v29;
    v67 = v28;

    sub_1D5DEA234(v29);

    sub_1D68687FC(a2, v20);
    if (v9)
    {

      v33 = v66;

      sub_1D5CBF568(v33);

      return;
    }

    v52 = v20;
    v35 = v66;

    sub_1D5CBF568(v35);
    v20 = v52;

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v36 = sub_1D7259B8C();
  (*(*(v36 - 8) + 56))(v20, v34, 1, v36);
  swift_beginAccess();
  v37 = v64;
  if (*(v10 + 112) == 1)
  {

    LODWORD(v52) = 1;
    v38 = v61;
  }

  else
  {
    v51 = v14;
    swift_beginAccess();
    v39 = *(v10 + 128);
    v41 = *(v10 + 136);
    v69 = *(v10 + 120);
    v40 = v69;
    v70 = v39;
    v71 = v41;

    sub_1D5E04CC4(v40, v39, v41);
    sub_1D725A7EC();
    v42 = FormatBoolean.value(contextLayoutOptions:)(v68);
    if (v9)
    {
      sub_1D6FFCA9C(v20, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

      swift_bridgeObjectRelease_n();

      sub_1D5D2F2C4(v40, v39, v41);
      return;
    }

    LODWORD(v52) = v42;

    sub_1D5D2F2C4(v40, v39, v41);
    v14 = v51;
    v38 = v61;
    v37 = v64;
  }

  v43 = v60;
  swift_beginAccess();
  v68 = *(v10 + 88);
  sub_1D5C82CD8(v68);
  sub_1D5BEB9F4(a2, v43, v37, v38);
  if (v9)
  {
    sub_1D6FFCA9C(v20, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

    swift_bridgeObjectRelease_n();
    sub_1D5C92A8C(v68);
  }

  else
  {

    sub_1D5C92A8C(v68);
    swift_beginAccess();
    v44 = *(v10 + 96);

    v60 = sub_1D618EFB4(a2, v44);

    v51 = &v51;
    v47 = MEMORY[0x1EEE9AC00](v45, v46);
    v48 = v55(0, v47);
    v50[4] = v56();
    v50[3] = v48;
    v49 = v61;
    v50[2] = v50;
    v58(v43, v64, v20, v52 & 1, v61, v60, v53, v63, v62, v57);

    (*(v59 + 8))(v49, v14);
    sub_1D6FFCA9C(v20, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

void sub_1D6FD8AD0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v11 = v10();
  v12 = sub_1D5E02AFC(v11, a1);
  if (v5)
  {
  }

  else
  {
    v13 = v12;
    v31 = a5;

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    sub_1D5F3FE24(0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    *(v15 + 32) = v14;
    *(v15 + 40) = 0;
    v16 = v10();
    v17 = sub_1D5E02AFC(v16, a2);

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v19 = swift_allocObject();
    v20 = v10;
    v21 = v19;
    *(v19 + 16) = xmmword_1D7273AE0;
    *(v19 + 32) = v18;
    *(v19 + 40) = 0;
    v22 = v20;
    v23 = v20();
    v24 = sub_1D5E02AFC(v23, a3);

    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7273AE0;
    *(v26 + 32) = v25;
    *(v26 + 40) = 0;
    v27 = v22();
    v28 = sub_1D5E02AFC(v27, a4);

    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1D7273AE0;
    *(v30 + 32) = v29;
    *(v30 + 40) = 0;
    *v31 = v15;
    v31[1] = v21;
    v31[2] = v26;
    v31[3] = v30;
  }
}

void sub_1D6FD8DB8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t (*a5)(void), uint64_t a6, void (*a7)(uint64_t, uint64_t, char *, void, uint64_t, uint64_t, uint64_t, char **, uint64_t, uint64_t))
{
  v68 = a7;
  v67 = a6;
  v66 = a5;
  v65 = a4;
  v8 = v7;
  v64 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v69 = v11;
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v62 - v13);
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v62 - v17;
  v85 = a1;
  v19 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v20 = *(v8 + 16);
  v21 = *(v8 + 24);

  v22 = sub_1D6E8DD40(v20, v21);
  v73 = v23;

  v24 = *(v8 + 80);
  if (v24)
  {
    v25 = *(v8 + 72);
    v26 = *(v19 + 24);
    if (v26)
    {
      v75 = *(v19 + 16);
      v76 = v26;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v25, v24);
      swift_bridgeObjectRelease_n();
      v25 = v75;
      v24 = v76;
    }

    else
    {
    }
  }

  else
  {
    v25 = 0;
  }

  v63 = v25;
  v27 = *(v8 + 136);
  v71 = v14;
  v72 = v22;
  if (v27)
  {
    v29 = *(v8 + 168);
    v28 = *(v8 + 176);
    v30 = a2;
    v32 = *(v8 + 152);
    v31 = *(v8 + 160);
    v33 = *(v8 + 144);
    v75 = v27;
    v76 = v33;
    v77 = v32;
    v78 = v31;
    v79 = v29;
    v80 = v28;

    sub_1D5DEA234(v29);

    v34 = v74;
    sub_1D68687FC(v30, v18);
    v74 = v34;
    if (v34)
    {

      v35 = v79;

      sub_1D5CBF568(v35);

      return;
    }

    v37 = v79;

    a2 = v30;

    sub_1D5CBF568(v37);

    v36 = 0;
    v14 = v71;
    v22 = v72;
  }

  else
  {
    v36 = 1;
  }

  v38 = sub_1D7259B8C();
  (*(*(v38 - 8) + 56))(v18, v36, 1, v38);
  swift_beginAccess();
  v39 = v73;
  if (*(v8 + 104) == 1)
  {

    v40 = 1;
  }

  else
  {
    v62 = v18;
    swift_beginAccess();
    v41 = a2;
    v42 = *(v8 + 120);
    v44 = *(v8 + 128);
    v82 = *(v8 + 112);
    v43 = v82;
    v83 = v42;
    v84 = v44;

    sub_1D5E04CC4(v43, v42, v44);
    sub_1D725A7EC();
    v45 = v74;
    v46 = FormatBoolean.value(contextLayoutOptions:)(v81);
    v74 = v45;
    if (v45)
    {
      sub_1D6FFCA9C(v62, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      swift_bridgeObjectRelease_n();

      sub_1D5D2F2C4(v43, v42, v44);
      return;
    }

    v47 = v46;

    sub_1D5D2F2C4(v43, v42, v44);
    v18 = v62;
    v14 = v71;
    a2 = v41;
    v22 = v72;
    v40 = v47;
  }

  swift_beginAccess();
  v81 = *(v8 + 64);
  sub_1D5C82CD8(v81);
  v48 = v74;
  sub_1D5BEB9F4(a2, v22, v39, v14);
  v74 = v48;
  if (v48)
  {
    sub_1D6FFCA9C(v18, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_bridgeObjectRelease_n();

    sub_1D5C92A8C(v81);
  }

  else
  {

    sub_1D5C92A8C(v81);
    swift_beginAccess();
    v49 = *(v8 + 88);

    v50 = v74;
    v51 = sub_1D618EFB4(a2, v49);
    v74 = v50;
    if (v50)
    {

      (*(v70 + 8))(v14, v69);
    }

    else
    {
      v52 = a2;
      v53 = v51;

      v73 = &v62;
      v56 = MEMORY[0x1EEE9AC00](v54, v55);
      *(&v62 - 6) = v8;
      *(&v62 - 5) = v52;
      v58 = v57;
      *(&v62 - 4) = v63;
      *(&v62 - 3) = v24;
      v59 = v65(0, v56);
      v60 = v66();
      v61 = v74;
      v68(v72, v39, v18, v40 & 1, v58, v53, v67, &v62 - 8, v59, v60);
      v74 = v61;

      (*(v70 + 8))(v58, v69);
    }

    sub_1D6FFCA9C(v18, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

void sub_1D6FD9574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v83 = a7;
  v81 = a6;
  v80 = a5;
  v84 = a4;
  v85 = a3;
  v8 = v7;
  v11 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v70 - v17;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v11);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (&v70 - v21);
  v93 = a1;
  swift_beginAccess();

  v82 = a2;
  v24 = sub_1D6B0ACE8(v23, 0);

  v25 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v26 = (*(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  v29 = v8[7];

  v30 = v29;
  v31 = v86;
  sub_1D6FBB580(v30, v24, v27, v28);
  v86 = v31;
  if (v31)
  {
  }

  else
  {
    v77 = v25;
    v75 = v13;
    v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = v32;
    v74 = v18;

    swift_beginAccess();
    v33 = v8[2];
    v34 = v8[3];

    v35 = sub_1D6E8DD40(v33, v34);
    v37 = v36;

    if (*(*(v85 + 24) + 16))
    {
      *v22 = v24;
      v38 = type metadata accessor for FormatSourceMapContext(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v38 - 8) + 56))(v22, 0, 1, v38);
      swift_beginAccess();

      sub_1D6D60828(v22, v35, v37);
      swift_endAccess();
    }

    v73 = v35;
    v39 = (*(v24 + v77) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v40 = *v39;
    v41 = v39[1];
    v42 = v8[8];

    v43 = v42;
    v44 = v86;
    sub_1D6FBAE48(v43, v24, v40, v41);
    if (v44)
    {
    }

    else
    {
      v46 = v45;
      v72 = v37;

      if (v46)
      {

        sub_1D6A45640(v24);
        v48 = v47;
        v49 = v24;
        v50 = v76;
        v51 = v75;
        v86 = v49;
        v77 = v46;

        if (v48)
        {
          swift_beginAccess();

          v52 = v72;

          sub_1D6D60C08(v48, v73, v52);
          swift_endAccess();
        }
      }

      else
      {
        v77 = 0;
        v86 = v24;
        v50 = v76;
        v51 = v75;
      }

      if (v8[18])
      {
        v53 = v8[22];
        v54 = v8[23];
        v56 = v8[20];
        v55 = v8[21];
        v57 = v8[19];
        v87 = v8[18];
        v88 = v57;
        v89 = v56;
        v90 = v55;
        v91 = v53;
        v92 = v54;

        sub_1D5DEA234(v53);

        sub_1D68687FC(v86, v74);
        v58 = v91;

        sub_1D5CBF568(v58);

        v59 = 0;
        v51 = v75;
      }

      else
      {
        v59 = 1;
      }

      v60 = sub_1D7259B8C();
      v61 = v74;
      (*(*(v60 - 8) + 56))(v74, v59, 1, v60);
      v75 = MEMORY[0x1E69D6FA0];
      v71 = MEMORY[0x1E69E6720];
      sub_1D6FFC87C(v61, v50, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      swift_unownedRetainStrong();
      v62 = v72;

      swift_unownedRetain();

      v63 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v79 = (v51 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      *(v67 + 16) = v73;
      *(v67 + 24) = v62;
      sub_1D6FFC410(v76, v67 + v63, &qword_1EDF3C120, v75);
      *(v67 + v79) = v8;
      v68 = v85;
      *(v67 + v64) = v86;
      *(v67 + v65) = v78;
      *(v67 + v66) = v82;
      *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v68;
      v80(0);
      v81();

      v69 = v74;
      sub_1D7259ACC();

      sub_1D6FFCA9C(v69, &qword_1EDF3C120, v75, v71, sub_1D5D27F7C);
    }
  }
}

double sub_1D6FD9E6C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8, uint64_t a9, char *a10)
{
  v153 = a7;
  v154 = a8;
  v151 = a5;
  v152 = a6;
  v164 = a4;
  v165 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v147 = *(v12 - 8);
  v148 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v155 = (&v142 - v14);
  v15 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v160 = &v142 - v18;
  sub_1D5D27F7C(0, &qword_1EDF3B660, MEMORY[0x1E69D7A18], v15);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v159 = (&v142 - v21);
  v22 = sub_1D725D80C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v158 = &v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v142 - v28;
  sub_1D5D27F7C(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, v15);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v156 = &v142 - v32;
  v33 = sub_1D725A36C();
  v161 = *(v33 - 8);
  v162 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v163 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v15);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = (&v142 - v38);
  sub_1D6FF9DCC(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v167 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v157 = &v142 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v142 - v45;
  v149 = v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v142 - v50;
  v177 = a1;
  v168 = a2;
  v52 = *&a2[OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory] + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
  swift_beginAccess();
  v53 = *(v52 + 8);
  if (!*(v53 + 16))
  {
    goto LABEL_6;
  }

  v146 = v29;
  v55 = v180[4];
  v54 = v180[5];

  v56 = sub_1D5B69D90(v55, v54);
  if ((v57 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for FormatLayoutError(0);
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v69 = v180;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return result;
  }

  v144 = v22;
  v145 = v39;
  v143 = v23;
  sub_1D6FF9454(*(v53 + 56) + *(v167 + 72) * v56, v46, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v58 = v46;
  v59 = v51;
  sub_1D6FF9770(v58, v51, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem);

  v60 = v168;
  v61 = v180;
  swift_beginAccess();
  v62 = v61[2];
  v63 = v61[3];

  v64 = sub_1D6E8DD40(v62, v63);
  v66 = v65;

  if (*(v60 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8))
  {
    v67 = v61[2];
    v68 = v61[3];
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v71 = v59;
  v72 = v166;
  v73 = sub_1D6C1F940(v59, v168, v64, v66);
  if (v72)
  {
  }

  else
  {
    v74 = v73;
    v166 = v64;
    v168 = v66;
    if (*(*(v165 + 24) + 16))
    {
      v75 = v145;
      *v145 = v73;
      v76 = type metadata accessor for FormatSourceMapContext(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
      swift_beginAccess();

      v77 = v168;

      sub_1D6D60828(v75, v166, v77);
      swift_endAccess();
    }

    v78 = (*(v74 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v79 = *v78;
    v80 = v78[1];
    v81 = *(v71 + 80);

    sub_1D6FBB924(v81, v74, v79, v80);
    v142 = v82;
    v145 = v74;

    v83 = *(v71 + 80);
    v178[4] = *(v71 + 64);
    v178[5] = v83;
    v179[0] = *(v71 + 96);
    *(v179 + 9) = *(v71 + 105);
    v84 = *(v71 + 16);
    v178[0] = *v71;
    v178[1] = v84;
    v85 = *(v71 + 48);
    v178[2] = *(v71 + 32);
    v178[3] = v85;
    v86 = v145;
    v87 = (*(v161 + 104))(v163, *MEMORY[0x1E69D7378], v162);
    MEMORY[0x1EEE9AC00](v87, v88);
    *(&v142 - 8) = v86;
    *(&v142 - 7) = v178;
    v89 = v166;
    *(&v142 - 6) = v165;
    *(&v142 - 5) = v67;
    v138 = v68;
    v139 = v89;
    v140 = v168;
    v141 = v180;
    sub_1D6FF9128(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
    swift_allocObject();
    v164 = sub_1D725A4EC();

    sub_1D6FF9060(v86 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &v171, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
    v90 = v142;
    if (v173)
    {
      sub_1D5B63F14(&v171, v176);
      if (v90)
      {
        v91 = v156;
        sub_1D6FFC87C(v90 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v156, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        v92 = type metadata accessor for FormatItemNodeAction(0);
        v93 = (*(*(v92 - 8) + 48))(v91, 1, v92);
        v94 = v159;
        if (v93 == 1)
        {
          sub_1D6FFCA9C(v91, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720], sub_1D5D27F7C);
          v95 = 0;
          v96 = 3;
        }

        else
        {
          sub_1D675D4CC(v86, &v171);
          sub_1D6FFC9A0(v91, type metadata accessor for FormatItemNodeAction);
          v95 = v171;
          v96 = BYTE8(v171);
        }

        v97 = *(v90 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
        v163 = v95;
        if (v97 != 3)
        {
          v107 = *(v90 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
          *&v171 = v97;
          *(&v171 + 1) = v107;
          v169 = v95;
          v170 = v96;
          sub_1D62B5DD0(v97);
          sub_1D6740A20(&v169, v94);
          LODWORD(v162) = v96;
          v132 = sub_1D62B5E24(v171);
          v134 = v143;
          v133 = v144;
          (*(v143 + 56))(v94, 0, 1, v144, v132);
          (*(v134 + 32))(v146, v94, v133);
          goto LABEL_24;
        }

        LODWORD(v162) = v96;
      }

      else
      {
        v163 = 0;
        LODWORD(v162) = 3;
        v94 = v159;
      }

      v99 = v143;
      v98 = v144;
      (*(v143 + 56))(v94, 1, 1, v144);
      (*(v99 + 104))(v146, *MEMORY[0x1E69D79F8], v98);
LABEL_24:
      v100 = v180;
      if (v180[16])
      {
        v102 = v180[20];
        v101 = v180[21];
        v103 = v180;
        v105 = v180[18];
        v104 = v180[19];
        v106 = v180[17];
        *&v171 = v180[16];
        *(&v171 + 1) = v106;
        v172 = v105;
        v173 = v104;
        v174 = v102;
        v175 = v101;

        sub_1D5DEA234(v102);

        sub_1D68687FC(v145, v160);
        v161 = 0;
        v108 = v174;

        sub_1D5CBF568(v108);

        v109 = 0;
        v100 = v103;
      }

      else
      {
        v161 = 0;
        v109 = 1;
      }

      v110 = sub_1D7259B8C();
      (*(*(v110 - 8) + 56))(v160, v109, 1, v110);
      swift_unownedRetainStrong();
      swift_unownedRetain();

      sub_1D5B68374(v176, &v171);
      v159 = sub_1D5B4AD74;
      sub_1D6FF9454(v71, v157, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
      v112 = v143;
      v111 = v144;
      (*(v143 + 16))(v158, v146, v144);
      v113 = (*(v167 + 80) + 96) & ~*(v167 + 80);
      v114 = (v149 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
      v167 = (*(v112 + 80) + v114 + 9) & ~*(v112 + 80);
      v115 = swift_allocObject();
      v116 = v145;
      *(v115 + 2) = v100;
      *(v115 + 3) = v116;
      v117 = v165;
      v118 = v168;
      *(v115 + 4) = v166;
      *(v115 + 5) = v118;
      *(v115 + 6) = v117;
      sub_1D5B63F14(&v171, (v115 + 56));
      sub_1D6FF9770(v157, &v115[v113], &qword_1EDF338A0, v159, &type metadata for FormatItem);
      v119 = &v115[v114];
      v120 = v163;
      *v119 = v163;
      LODWORD(v113) = v162;
      v119[8] = v162;
      (*(v112 + 32))(&v115[v167], v158, v111);
      v121 = v168;

      v122 = v145;

      v163 = v120;
      LODWORD(v162) = v113;
      sub_1D61CA640(v120, v113);
      v123 = v152(0);
      v124 = v153();
      v165 = v123;
      v167 = v124;
      sub_1D7259ACC();

      KeyPath = swift_getKeyPath();
      *&v171 = v100[6];
      v126 = v171;

      sub_1D5C82CD8(v126);
      v127 = v161;
      sub_1D5BEB9F4(v122, v166, v121, v155);
      if (v127)
      {
        swift_bridgeObjectRelease_n();

        sub_1D61CA538(v163, v162);

        sub_1D6FFCA9C(v160, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
        (*(v143 + 8))(v146, v144);
        __swift_destroy_boxed_opaque_existential_1(v176);
        sub_1D5C92A8C(v171);
      }

      else
      {
        v128 = v167;
        v159 = KeyPath;

        sub_1D5C92A8C(v171);
        v129 = v180;
        swift_beginAccess();
        v130 = v129[8];

        v131 = v122;
        sub_1D618EFB4(v122, v130);
        v158 = a10;
        v135 = v180;
        v161 = 0;

        v136 = swift_allocObject();
        v136[2] = v142;
        v136[3] = v135;
        v136[4] = v131;

        v140 = v128;
        v138 = v136;
        v139 = v165;
        v137 = v155;
        sub_1D7259AFC();

        sub_1D61CA538(v163, v162);

        (*(v147 + 8))(v137, v148);
        sub_1D6FFCA9C(v160, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
        (*(v143 + 8))(v146, v144);
        __swift_destroy_boxed_opaque_existential_1(v176);
      }

      goto LABEL_13;
    }

    sub_1D6FF90CC(&v171, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
    type metadata accessor for FormatLayoutError(0);
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

LABEL_13:
  sub_1D6FF94C8(v71, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  return result;
}

void sub_1D6FDB38C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t (*a5)(void), uint64_t a6)
{
  v63 = a6;
  v62 = a5;
  v61 = a4;
  v8 = v7;
  v9 = v6;
  v60 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v65 = v12;
  v64 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v67 = (v56 - v14);
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v68 = v56 - v17;
  v18 = sub_1D7259DFC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a1;
  v70 = a2;
  v23 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v24 = v9[2];
  v25 = v9[3];

  v66 = sub_1D6E8DD40(v24, v25);
  v69 = v26;

  v27 = v9[10];
  if (v27)
  {
    v28 = v19;
    v29 = v18;
    v30 = v9[9];
    v31 = *(v23 + 24);
    if (v31)
    {
      v71 = *(v23 + 16);
      v72 = v31;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v30, v27);
      swift_bridgeObjectRelease_n();
      v27 = v72;
      v59 = v71;
    }

    else
    {
      v59 = v9[9];
    }

    v18 = v29;
    v19 = v28;
  }

  else
  {
    v59 = 0;
  }

  swift_beginAccess();

  v32 = v22;
  sub_1D607CFF4(v70, v22);
  if (v8)
  {
  }

  else
  {

    v33 = v9[13];
    if (v33)
    {
      v58 = v19;
      v57 = v18;
      v35 = v9[17];
      v34 = v9[18];
      v37 = v9[15];
      v36 = v9[16];
      v38 = v9[14];
      v71 = v33;
      v72 = v38;
      v73 = v37;
      v74 = v36;
      v75 = v35;
      v76 = v34;

      sub_1D5DEA234(v35);

      sub_1D68687FC(v70, v68);
      v39 = v75;

      sub_1D5CBF568(v39);

      v40 = 0;
      v18 = v57;
      v19 = v58;
      v32 = v22;
    }

    else
    {
      v40 = 1;
    }

    v41 = sub_1D7259B8C();
    (*(*(v41 - 8) + 56))(v68, v40, 1, v41);
    swift_beginAccess();
    v77[0] = v9[8];
    v42 = v77[0];
    v43 = v69;

    sub_1D5C82CD8(v42);
    sub_1D5BEB9F4(v70, v66, v43, v67);

    sub_1D5C92A8C(v77[0]);
    swift_beginAccess();
    v44 = v9[11];

    v45 = sub_1D618EFB4(v70, v44);
    v58 = v19;

    v56[1] = v45;
    v47 = v68;
    v57 = v56;
    v49 = MEMORY[0x1EEE9AC00](v46, v48);
    v50 = v70;
    v56[-6] = v9;
    v56[-5] = v50;
    v56[-4] = v59;
    v56[-3] = v27;
    v51 = v61(0, v49);
    v52 = v62();
    v54 = v51;
    v55 = v52;
    v53 = v67;
    v70 = v32;
    sub_1D7259ADC();

    (*(v64 + 8))(v53, v65);
    sub_1D6FFCA9C(v47, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    (*(v58 + 8))(v70, v18);
  }
}

void sub_1D6FDBBB4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *, uint64_t))
{
  v79 = a4;
  v6 = v5;
  v7 = v4;
  v82 = a1;
  v83 = a3;
  v81 = type metadata accessor for FormatOption(0);
  v9 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v10);
  v88 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2C40C(0);
  v84 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v74 - v18;
  v20 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
  swift_beginAccess();
  v21 = *(v20 + 8);
  swift_beginAccess();
  if (!*(v21 + 16))
  {
    goto LABEL_10;
  }

  v77 = a2;
  v78 = v9;
  v80 = v19;
  v22 = *(v7 + 32);
  v23 = *(v7 + 40);

  v24 = sub_1D5B69D90(v22, v23);
  v25 = v7;
  v27 = v26;

  if ((v27 & 1) == 0)
  {

    v7 = v25;
LABEL_10:
    type metadata accessor for FormatLayoutError(0);
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v45 = v7;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v76 = v6;
  sub_1D5BE4148(*(v21 + 56) + *(v84 + 72) * v24, v15, sub_1D5C2C40C);
  v28 = v80;
  sub_1D5BDAB74(v15, v80, sub_1D5C2C40C);

  swift_beginAccess();
  v29 = *(v25 + 16);
  v30 = *(v25 + 24);

  sub_1D6B0A84C(v29, v30);

  v31 = *(v25 + 16);
  v32 = *(v25 + 24);
  v77 = v25;

  v74[1] = sub_1D6B0B228(v31, v32);

  v33 = *v28;
  swift_beginAccess();
  v75 = v33;
  v34 = *(v33 + 72);
  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v85[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v35, 0);
    v36 = v85[0];
    v37 = *(v78 + 80);
    v84 = v34;
    v38 = v34 + ((v37 + 32) & ~v37);
    v39 = *(v78 + 72);
    do
    {
      v40 = v88;
      sub_1D5BE4148(v38, v88, type metadata accessor for FormatOption);
      v41 = swift_allocBox();
      sub_1D5BDAB74(v40, v42, type metadata accessor for FormatOption);
      v85[0] = v36;
      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1D5D24610((v43 > 1), v44 + 1, 1);
        v36 = v85[0];
      }

      *(v36 + 16) = v44 + 1;
      *(v36 + 8 * v44 + 32) = v41 | 0xA000000000000004;
      v38 += v39;
      --v35;
    }

    while (v35);
  }

  v46 = v77;
  swift_beginAccess();
  v47 = *(v46 + 88);
  v48 = *(v47 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v85[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v48, 0);
    v49 = v85[0];
    v50 = *(v78 + 80);
    v74[0] = v47;
    v51 = v47 + ((v50 + 32) & ~v50);
    v84 = *(v78 + 72);
    do
    {
      v52 = v88;
      sub_1D5BE4148(v51, v88, type metadata accessor for FormatOption);
      v53 = swift_allocBox();
      sub_1D5BDAB74(v52, v54, type metadata accessor for FormatOption);
      v85[0] = v49;
      v56 = *(v49 + 16);
      v55 = *(v49 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1D5D24610((v55 > 1), v56 + 1, 1);
        v49 = v85[0];
      }

      *(v49 + 16) = v56 + 1;
      *(v49 + 8 * v56 + 32) = v53 | 0x5000000000000004;
      v51 += v84;
      --v48;
    }

    while (v48);
  }

  v85[0] = v36;
  sub_1D6985C44(v49);
  sub_1D6B0C068(v85[0]);

  v57 = v75;
  swift_beginAccess();
  v58 = *(v57 + 80);
  swift_beginAccess();

  v60 = sub_1D5D6021C(v59, v58);
  sub_1D6B0ACE8(v60, 0);

  swift_beginAccess();

  v62 = sub_1D6B0C570(v61);

  swift_beginAccess();
  v63 = *(v57 + 64);
  v64 = *(v63 + 16);

  if (v64)
  {
    v65 = 0;
    v66 = 32;
    v67 = v76;
    v68 = v79;
    while (v65 < *(v63 + 16))
    {
      v69 = *(v63 + v66);
      v70 = *(v63 + v66 + 32);
      v86[1] = *(v63 + v66 + 16);
      v86[2] = v70;
      v86[0] = v69;
      v71 = *(v63 + v66 + 48);
      v72 = *(v63 + v66 + 64);
      v73 = *(v63 + v66 + 80);
      v87 = *(v63 + v66 + 96);
      v86[4] = v72;
      v86[5] = v73;
      v86[3] = v71;
      sub_1D5C5C4CC(v86, v85);
      v68(v82, v62, v83);
      if (v67)
      {
        sub_1D5C5C540(v86);
        goto LABEL_25;
      }

      ++v65;
      sub_1D5C5C540(v86);
      v66 += 104;
      if (v64 == v65)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    sub_1D6FFC9A0(v80, sub_1D5C2C40C);
  }
}

void sub_1D6FDC34C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *, uint64_t))
{
  v6 = v4;
  v51 = a3;
  v47 = a1;
  sub_1D6FF9DCC(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v44 - v15;
  v17 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
  swift_beginAccess();
  v18 = *(v17 + 8);
  if (!*(v18 + 16))
  {
    goto LABEL_6;
  }

  v44 = a4;
  v20 = v6[4];
  v19 = v6[5];

  v21 = sub_1D5B69D90(v20, v19);
  if ((v22 & 1) == 0)
  {

LABEL_6:
    type metadata accessor for FormatLayoutError(0);
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v32 = v6;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v23 = *(v18 + 56) + *(v9 + 72) * v21;
  v45 = v16;
  sub_1D6FF9454(v23, v12, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  sub_1D6FF9770(v12, v45, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem);

  swift_beginAccess();
  v24 = v6[2];
  v25 = v6[3];

  v26 = sub_1D6E8DD40(v24, v25);
  v28 = v27;
  v29 = v45;

  v30 = v46;
  v31 = sub_1D6D9D98C(v29, a2, v26, v28);
  if (v30)
  {
    sub_1D6FF94C8(v29, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  }

  else
  {
    v33 = v31;

    swift_beginAccess();
    v34 = v6[9];
    v35 = *(v34 + 16);

    if (v35)
    {
      v36 = 0;
      v37 = 32;
      v38 = v44;
      while (v36 < *(v34 + 16))
      {
        v39 = *(v34 + v37);
        v40 = *(v34 + v37 + 32);
        v49[1] = *(v34 + v37 + 16);
        v49[2] = v40;
        v49[0] = v39;
        v41 = *(v34 + v37 + 48);
        v42 = *(v34 + v37 + 64);
        v43 = *(v34 + v37 + 80);
        v50 = *(v34 + v37 + 96);
        v49[4] = v42;
        v49[5] = v43;
        v49[3] = v41;
        sub_1D5C5C4CC(v49, &v48);
        v38(v47, v33, v51);
        ++v36;
        sub_1D5C5C540(v49);
        v37 += 104;
        if (v35 == v36)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_11:
      sub_1D6FF94C8(v45, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
    }
  }
}

void sub_1D6FDC824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v83 = a7;
  v81 = a6;
  v80 = a5;
  v84 = a4;
  v85 = a3;
  v8 = v7;
  v11 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v70 - v17;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v11);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (&v70 - v21);
  v93 = a1;
  swift_beginAccess();

  v82 = a2;
  v24 = sub_1D6B0ACE8(v23, 0);

  v25 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v26 = (*(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  v29 = v8[7];

  v30 = v29;
  v31 = v86;
  sub_1D6FBE378(v30, v24, v27, v28);
  v86 = v31;
  if (v31)
  {
  }

  else
  {
    v77 = v25;
    v75 = v13;
    v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = v32;
    v74 = v18;

    swift_beginAccess();
    v33 = v8[2];
    v34 = v8[3];

    v35 = sub_1D6E8DD40(v33, v34);
    v37 = v36;

    if (*(*(v85 + 24) + 16))
    {
      *v22 = v24;
      v38 = type metadata accessor for FormatSourceMapContext(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v38 - 8) + 56))(v22, 0, 1, v38);
      swift_beginAccess();

      sub_1D6D60828(v22, v35, v37);
      swift_endAccess();
    }

    v73 = v35;
    v39 = (*(v24 + v77) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v40 = *v39;
    v41 = v39[1];
    v42 = v8[8];

    v43 = v42;
    v44 = v86;
    sub_1D6FBAE48(v43, v24, v40, v41);
    if (v44)
    {
    }

    else
    {
      v46 = v45;
      v72 = v37;

      if (v46)
      {

        sub_1D6A45640(v24);
        v48 = v47;
        v49 = v24;
        v50 = v76;
        v51 = v75;
        v86 = v49;
        v77 = v46;

        if (v48)
        {
          swift_beginAccess();

          v52 = v72;

          sub_1D6D60C08(v48, v73, v52);
          swift_endAccess();
        }
      }

      else
      {
        v77 = 0;
        v86 = v24;
        v50 = v76;
        v51 = v75;
      }

      if (v8[34])
      {
        v53 = v8[38];
        v54 = v8[39];
        v56 = v8[36];
        v55 = v8[37];
        v57 = v8[35];
        v87 = v8[34];
        v88 = v57;
        v89 = v56;
        v90 = v55;
        v91 = v53;
        v92 = v54;

        sub_1D5DEA234(v53);

        sub_1D68687FC(v86, v74);
        v58 = v91;

        sub_1D5CBF568(v58);

        v59 = 0;
        v51 = v75;
      }

      else
      {
        v59 = 1;
      }

      v60 = sub_1D7259B8C();
      v61 = v74;
      (*(*(v60 - 8) + 56))(v74, v59, 1, v60);
      v75 = MEMORY[0x1E69D6FA0];
      v71 = MEMORY[0x1E69E6720];
      sub_1D6FFC87C(v61, v50, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      swift_unownedRetainStrong();
      v62 = v72;

      swift_unownedRetain();

      v63 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v79 = (v51 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      *(v67 + 16) = v73;
      *(v67 + 24) = v62;
      sub_1D6FFC410(v76, v67 + v63, &qword_1EDF3C120, v75);
      *(v67 + v79) = v8;
      v68 = v85;
      *(v67 + v64) = v86;
      *(v67 + v65) = v82;
      *(v67 + v66) = v68;
      *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
      v80(0);
      v81();

      v69 = v74;
      sub_1D7259ACC();

      sub_1D6FFCA9C(v69, &qword_1EDF3C120, v75, v71, sub_1D5D27F7C);
    }
  }
}

uint64_t sub_1D6FDD11C(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x101010101010101;
  v4.i64[1] = 0x101010101010101;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 1 ? (v5 = byte_1F50F4211 == 1) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 1)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDD3C0(void *a1, uint64_t a2)
{
  v4.i64[0] = 0xD0D0D0D0D0D0D0DLL;
  v4.i64[1] = 0xD0D0D0D0D0D0D0DLL;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 13 ? (v5 = byte_1F50F4211 == 13) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x6800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 13)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDD664(void *a1, uint64_t a2)
{
  if ((vmaxvq_u8(vceqzq_s8(xmmword_1F50F4200)) & 1) != 0 || (byte_1F50F4210 ? (v4 = byte_1F50F4211 == 0) : (v4 = 1), v4))
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 64) = 0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v7 = a1[2];
    v6 = a1[3];
    if (v7 >= v6 >> 1)
    {
      a1 = sub_1D5C4BE58((v6 > 1), v7 + 1, 1, a1);
    }

    a1[2] = v7 + 1;
    a1[v7 + 4] = v5 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v8 = sub_1D72626AC();
    v9 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E7CC0];
    v10 = *(v8 + 16);
    while (v10 != v9)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v11 = *(v8 + 8 * v9 + 32);
      switch((v11 >> 59) & 0x1E | (v11 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v11 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v9;
      if (!(*(v11 + 64) >> 59))
      {

        MEMORY[0x1DA6F9CE0](v12);
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v5 = v14;
      }
    }

    return v5;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDD8FC(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x202020202020202;
  v4.i64[1] = 0x202020202020202;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 2 ? (v5 = byte_1F50F4211 == 2) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x1000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 2)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDDBA0(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x303030303030303;
  v4.i64[1] = 0x303030303030303;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 3 ? (v5 = byte_1F50F4211 == 3) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x1800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 3)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDDE44(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x606060606060606;
  v4.i64[1] = 0x606060606060606;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 6 ? (v5 = byte_1F50F4211 == 6) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x3000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 6)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDE0E8(void *a1, uint64_t a2)
{
  v4.i64[0] = 0xB0B0B0B0B0B0B0BLL;
  v4.i64[1] = 0xB0B0B0B0B0B0B0BLL;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 11 ? (v5 = byte_1F50F4211 == 11) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x5800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 11)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDE38C(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x404040404040404;
  v4.i64[1] = 0x404040404040404;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 4 ? (v5 = byte_1F50F4211 == 4) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x2000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 4)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDE630(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x505050505050505;
  v4.i64[1] = 0x505050505050505;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 5 ? (v5 = byte_1F50F4211 == 5) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x2800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 5)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDE8D4(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x707070707070707;
  v4.i64[1] = 0x707070707070707;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 7 ? (v5 = byte_1F50F4211 == 7) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x3800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 7)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDEB78(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x808080808080808;
  v4.i64[1] = 0x808080808080808;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 8 ? (v5 = byte_1F50F4211 == 8) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x4000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 8)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDEE1C(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x909090909090909;
  v4.i64[1] = 0x909090909090909;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 9 ? (v5 = byte_1F50F4211 == 9) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x4800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 9)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDF0C0(void *a1, uint64_t a2)
{
  v4.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v4.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 10 ? (v5 = byte_1F50F4211 == 10) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x5000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 10)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDF364(void *a1, uint64_t a2)
{
  v4.i64[0] = 0xE0E0E0E0E0E0E0ELL;
  v4.i64[1] = 0xE0E0E0E0E0E0E0ELL;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 14 ? (v5 = byte_1F50F4211 == 14) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x7000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 14)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDF608(void *a1, uint64_t a2)
{
  v4.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v4.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 15 ? (v5 = byte_1F50F4211 == 15) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x7800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 15)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

char *sub_1D6FDF8AC(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x1010101010101010;
  v4.i64[1] = 0x1010101010101010;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 16 ? (v5 = byte_1F50F4211 == 16) : (v5 = 1), v5))
  {
    v6 = *(a2 + 56);
    v7 = *(a2 + 48);
    v9 = *(a2 + 32);
    v8 = *(a2 + 40);
    v10 = swift_allocObject();
    v11 = *(a2 + 16);
    *(v10 + 16) = *a2;
    *(v10 + 32) = v11;
    *(v10 + 48) = v9;
    *(v10 + 56) = v8;
    *(v10 + 64) = v7 | 0x8000000000000000;
    *(v10 + 72) = v6;

    sub_1D6A53524(a2, v37);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_23:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v13 = a1[2];
    v12 = a1[3];
    if (v13 >= v12 >> 1)
    {
      a1 = sub_1D5C4BE58((v12 > 1), v13 + 1, 1, a1);
    }

    a1[2] = v13 + 1;
    a1[v13 + 4] = v10 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v10 = sub_1D72626AC();
    v14 = 0;
    v15 = *(v10 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    while (v15 != v14)
    {
      if (v14 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v17 = *(v10 + 8 * v14 + 32);
      switch((v17 >> 59) & 0x1E | (v17 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v17 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      v18 = *(v17 + 64);
      ++v14;
      if (v18 >> 59 == 16)
      {
        v35 = a1;
        v19 = *(v17 + 72);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v17 + 32);
        v23 = *(v17 + 40);
        v25 = *(v17 + 48);
        v24 = *(v17 + 56);
        v37[0] = v20;
        v37[1] = v21;
        v32 = v24;
        v33 = v22;
        v37[2] = v22;
        v37[3] = v23;
        v37[4] = v25;
        v37[5] = v24;
        v31 = v18 & 0x7FFFFFFFFFFFFFFLL;
        v37[6] = v18 & 0x7FFFFFFFFFFFFFFLL;
        v37[7] = v19;
        v34 = v19;
        sub_1D6A53524(v37, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D698F4D0(0, *(v16 + 2) + 1, 1, v16);
        }

        v27 = *(v16 + 2);
        v26 = *(v16 + 3);
        v28 = v16;
        if (v27 >= v26 >> 1)
        {
          v28 = sub_1D698F4D0((v26 > 1), v27 + 1, 1, v16);
        }

        *(v28 + 2) = v27 + 1;
        v16 = v28;
        v29 = &v28[64 * v27];
        *(v29 + 4) = v20;
        *(v29 + 5) = v21;
        *(v29 + 6) = v33;
        *(v29 + 7) = v23;
        *(v29 + 8) = v25;
        *(v29 + 9) = v32;
        a1 = v35;
        *(v29 + 10) = v31;
        *(v29 + 11) = v34;
      }
    }

    return v16;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDFBD0(void *a1, uint64_t a2)
{
  v4.i64[0] = 0x1010101010101010;
  v4.i64[1] = 0x1010101010101010;
  if ((vmaxvq_u8(vcgtq_u8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 <= 0x10u ? (v5 = byte_1F50F4211 > 0x10u) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x8800000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 >= 0x11uLL)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6FDFE74(void *a1, uint64_t a2)
{
  v4.i64[0] = 0xC0C0C0C0C0C0C0CLL;
  v4.i64[1] = 0xC0C0C0C0C0C0C0CLL;
  if ((vmaxvq_u8(vceqq_s8(xmmword_1F50F4200, v4)) & 1) != 0 || (byte_1F50F4210 != 12 ? (v5 = byte_1F50F4211 == 12) : (v5 = 1), v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 64) = 0x6000000000000000;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_21:
      a1 = sub_1D5C4BE58(0, a1[2] + 1, 1, a1);
    }

    v8 = a1[2];
    v7 = a1[3];
    if (v8 >= v7 >> 1)
    {
      a1 = sub_1D5C4BE58((v7 > 1), v8 + 1, 1, a1);
    }

    a1[2] = v8 + 1;
    a1[v8 + 4] = v6 | 0x9000000000000000;
    sub_1D5C4BDF0(0);
    v9 = sub_1D72626AC();
    v10 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v15 = MEMORY[0x1E69E7CC0];
    v11 = *(v9 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v9 + 8 * v10 + 32);
      switch((v12 >> 59) & 0x1E | (v12 >> 2) & 1)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0xEuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x11uLL:
        case 0x12uLL:
        case 0x13uLL:
        case 0x14uLL:
        case 0x15uLL:
        case 0x16uLL:
        case 0x17uLL:
          v12 &= 0xFFFFFFFFFFFFFFBuLL;
          break;
        default:
          break;
      }

      ++v10;
      if (*(v12 + 64) >> 59 == 12)
      {

        MEMORY[0x1DA6F9CE0](v13);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v6 = v15;
      }
    }

    return v6;
  }

  else
  {
    result = sub_1D726402C();
    __break(1u);
  }

  return result;
}

void sub_1D6FE0118(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a2;
  if ((~a2 & 0xF000000000000007) != 0)
  {
    sub_1D5FA6CB0(a1, a2, &v21);
    if (v5)
    {
      return;
    }

    v8 = v21;
  }

  if ((~a3 & 0xF000000000000007) != 0)
  {
    v21 = a1;
    v20 = swift_allocObject();
    v11 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v12 = v11();
    FormatFloat.value(contextLayoutOptions:)(v12);
    if (v5)
    {
      sub_1D5C84FF4(v8);

LABEL_11:
      swift_deallocUninitializedObject();
      return;
    }

    v14 = v13;

    a3 = v20;
    *(v20 + 16) = v14;
  }

  if ((~a4 & 0xF000000000000007) != 0)
  {
    v21 = a1;
    v15 = swift_allocObject();
    v16 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v17 = v16();
    FormatFloat.value(contextLayoutOptions:)(v17);
    if (v5)
    {
      sub_1D5C84FF4(v8);
      sub_1D5C8500C(a3);

      goto LABEL_11;
    }

    v19 = v18;

    *(v15 + 16) = v19;
    a4 = v15;
  }

  *a5 = v8;
  a5[1] = a3;
  a5[2] = a4;
}

void sub_1D6FE02FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v72 = a7;
  v69 = a6;
  v68 = a5;
  v67 = a4;
  v8 = v7;
  v12 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v65 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v73 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v74 = &v62 - v18;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v12);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (&v62 - v21);
  v83 = a1;
  swift_beginAccess();

  v70 = a2;
  v24 = sub_1D6B0ACE8(v23, 0);

  swift_beginAccess();
  v25 = v8[2];
  v26 = v8[3];

  v27 = sub_1D6E8DD40(v25, v26);
  v29 = v28;

  v71 = a3;
  if (*(*(a3 + 24) + 16))
  {
    *v22 = v24;
    v30 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v30 - 8) + 56))(v22, 0, 1, v30);
    swift_beginAccess();

    sub_1D6D60828(v22, v27, v29);
    swift_endAccess();
  }

  v75 = v27;
  v31 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v32 = (*(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v33 = *v32;
  v34 = v32[1];
  v35 = v8[7];

  v36 = v35;
  v37 = v76;
  sub_1D6FBB1DC(v36, v24, v33, v34);
  if (v37)
  {
  }

  else
  {
    v76 = v38;

    v39 = (*(v24 + v31) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v40 = *v39;
    v41 = v39[1];
    v42 = v8[8];

    sub_1D6FBAE48(v42, v24, v40, v41);
    v44 = v43;

    v45 = v29;
    if (v44)
    {

      sub_1D6A45640(v24);
      v46 = v75;
      v48 = v47;

      if (v48)
      {
        swift_beginAccess();

        sub_1D6D60C08(v48, v46, v45);
        swift_endAccess();
      }
    }

    v64 = v44;
    v49 = v74;
    if (v8[17])
    {
      v51 = v8[21];
      v50 = v8[22];
      v53 = v8[19];
      v52 = v8[20];
      v54 = v8[18];
      v77 = v8[17];
      v78 = v54;
      v79 = v53;
      v80 = v52;
      v81 = v51;
      v82 = v50;

      sub_1D5DEA234(v51);

      sub_1D68687FC(v24, v49);
      v63 = v81;

      sub_1D5CBF568(v63);

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    v56 = sub_1D7259B8C();
    (*(*(v56 - 8) + 56))(v49, v55, 1, v56);
    v63 = MEMORY[0x1E69D6FA0];
    v62 = MEMORY[0x1E69E6720];
    sub_1D6FFC87C(v49, v73, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_unownedRetainStrong();

    swift_unownedRetain();

    v57 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v66 = (v66 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = v75;
    *(v60 + 24) = v45;
    sub_1D6FFC410(v73, v60 + v57, &qword_1EDF3C120, v63);
    *(v60 + v66) = v8;
    *(v60 + v65) = v24;
    *(v60 + v58) = v76;
    *(v60 + v59) = v70;
    *(v60 + ((v59 + 15) & 0xFFFFFFFFFFFFFFF8)) = v71;
    v68(0);
    v69();

    v61 = v74;
    sub_1D7259ACC();

    sub_1D6FFCA9C(v61, &qword_1EDF3C120, v63, v62, sub_1D5D27F7C);
  }
}

void sub_1D6FE0B78(unint64_t a1, char *a2, uint64_t (*a3)(void), unint64_t a4)
{
  switch((a4 >> 58) & 0x3C | (a4 >> 1) & 3)
  {
    case 1uLL:

      v8 = MEMORY[0x1E69D6F70];
      goto LABEL_29;
    case 2uLL:

      v20 = MEMORY[0x1E69D6F78];
      goto LABEL_26;
    case 3uLL:

      v20 = MEMORY[0x1E69D6F80];
LABEL_26:
      sub_1D6FD8274(a1, a2, a3, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCD24, v20);
      goto LABEL_50;
    case 4uLL:

      sub_1D6FE02FC(a1, a2, a3, &unk_1F51DF320, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCB2C);
      goto LABEL_50;
    case 5uLL:

      sub_1D6FC9BE0(a1, a2, a3, &unk_1F51DF348, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCB44);
      goto LABEL_50;
    case 6uLL:

      sub_1D6FD9574(a1, a2, a3, &unk_1F51DF370, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCB5C);
      goto LABEL_50;
    case 7uLL:

      sub_1D6FD9E6C(a1, a2, a3, sub_1D6FFCE04, &unk_1F51DF398, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCB74, &unk_1F51DF3C0, sub_1D6FFCD88);
      goto LABEL_50;
    case 8uLL:

      sub_1D6FFA0E8(a1, a2, sub_1D5EB5368, sub_1D6FF91E8);
      goto LABEL_50;
    case 9uLL:

      sub_1D6FDBBB4(a1, a2, a3, sub_1D6FBF7BC);
      goto LABEL_50;
    case 0xAuLL:

      sub_1D6FCC208(a1, a2, a3, sub_1D6FFCE1C, &unk_1F51DF3E8, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCD3C);
      goto LABEL_50;
    case 0xBuLL:

      sub_1D6FE5308(a1, a2, a3, &unk_1F51DF410, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCDA0);
      goto LABEL_50;
    case 0xCuLL:

      sub_1D6FD7E50(a1, a2, a3, sub_1D6FBF7BC);
      goto LABEL_50;
    case 0xDuLL:

      sub_1D6FC8FB0(a1, a2, a3, &unk_1F51DF438, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCB8C);
      goto LABEL_50;
    case 0xEuLL:

      sub_1D6FBA034(a1, a2, a3, &unk_1F51DF460, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCBA4, sub_1D6FFCE34);
      goto LABEL_50;
    case 0xFuLL:

      sub_1D6FE5778(a1, a2, a3, sub_1D6FFCE64, &unk_1F51DF488, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCD54, sub_1D6FFCE7C);
      goto LABEL_50;
    case 0x10uLL:

      sub_1D6FE6728(a1, a2, a3, &unk_1F51DF4B0, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCC4C);
      goto LABEL_50;
    case 0x11uLL:

      sub_1D6FC9504(a1, a2, a3, &unk_1F51DF4D8, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCEE0);
      goto LABEL_50;
    case 0x12uLL:

      sub_1D6FE7320(a1, a2, a3, sub_1D6FBF7BC);
      goto LABEL_50;
    case 0x13uLL:

      sub_1D6FD0868(a1, a2, a3, &unk_1F51DF500, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCDB8);
      goto LABEL_50;
    case 0x14uLL:

      sub_1D6FE77CC(a1, a2, a3, sub_1D6FFCE94, &unk_1F51DF528, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCD0C);
      goto LABEL_50;
    case 0x15uLL:

      sub_1D6FCD35C(a1, a2, a3, &unk_1F51DF550, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCC64);
      goto LABEL_50;
    case 0x16uLL:
      v21 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v26[0] = a1;
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = a3;
      v22[4] = a2;
      sub_1D5EB5368(0);
      sub_1D6FF91E8();
      swift_retain_n();

      sub_1D7259AEC();

      goto LABEL_50;
    case 0x17uLL:

      sub_1D6FC357C(a1, a2, a3, &unk_1F51DF578, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCEF8);
      goto LABEL_50;
    case 0x18uLL:

      sub_1D6FE87E4(a1, a2, a3, &unk_1F51DF5A0, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCC7C);
      goto LABEL_50;
    case 0x19uLL:

      sub_1D6FE9634(a1, a2, a3, &unk_1F51DF5F0, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCC94, &unk_1F51DF5C8, sub_1D6FFCDE8);
      goto LABEL_50;
    case 0x1AuLL:

      sub_1D6FEA82C(a1, a2, a3, &unk_1F51DF618, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCBBC);
      goto LABEL_50;
    case 0x1BuLL:

      sub_1D6FC40FC(a1, a2, a3);
      goto LABEL_50;
    case 0x1CuLL:
      v23 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x70);
      v27[5] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v27[6] = v23;
      v27[7] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x80);
      v28 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x90);
      v24 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v27[1] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v27[2] = v24;
      v25 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v27[3] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v27[4] = v25;
      v27[0] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1D62B60B4(v27, v26);
      sub_1D6FD5EE8(a1, a2, a3, &unk_1F51DF668, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCCAC);
      sub_1D62B6110(v27);
      return;
    case 0x1DuLL:

      sub_1D6FD56DC(a1, a2, a3, sub_1D6FBF7BC);
      goto LABEL_50;
    case 0x1EuLL:

      sub_1D6FEB124(a1, a2, a3, &unk_1F51DF690, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCDD0);
      goto LABEL_50;
    case 0x1FuLL:

      sub_1D6FDC824(a1, a2, a3, &unk_1F51DF6B8, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCBD4);
      goto LABEL_50;
    case 0x20uLL:

      sub_1D6FD4830(a1, a2, a3, &unk_1F51DF6E0, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCCC4);
      goto LABEL_50;
    case 0x21uLL:

      sub_1D6FDC34C(a1, a2, a3, sub_1D6FBF7BC);
      goto LABEL_50;
    case 0x22uLL:

      sub_1D6FEB46C(a1, a2, a3, sub_1D6FBF7BC);
      goto LABEL_50;
    case 0x23uLL:
      v9 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = sub_1D6C1BE20(a2);
      swift_beginAccess();
      v31 = v9;
      v11 = *(v9 + 48);
      v12 = *(v11 + 16);

      if (!v12)
      {
        goto LABEL_9;
      }

      v13 = 0;
      v14 = 32;
      break;
    case 0x24uLL:

      sub_1D6FFA96C(a1, a2, &unk_1F51DF708, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCEC8);
      goto LABEL_50;
    case 0x25uLL:

      sub_1D6FC810C(a1, a2, a3);
      goto LABEL_50;
    case 0x26uLL:

      sub_1D6FCE6E8(a1, a2, a3, &unk_1F51DF758, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCCDC);
      goto LABEL_50;
    case 0x27uLL:

      sub_1D6FD7140(a1, a2, a3, &unk_1F51DF780, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCCF4);
      goto LABEL_50;
    case 0x28uLL:

      sub_1D6FDB38C(a1, a2, a3, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCEB0);
      goto LABEL_50;
    default:

      v8 = MEMORY[0x1E69D6F68];
LABEL_29:
      sub_1D6FD8DB8(a1, a2, a3, sub_1D5EB5368, sub_1D6FF91E8, sub_1D6FFCDEC, v8);
      goto LABEL_50;
  }

  while (1)
  {
    if (v13 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v15 = *(v11 + v14);
    v16 = *(v11 + v14 + 32);
    v29[1] = *(v11 + v14 + 16);
    v29[2] = v16;
    v29[0] = v15;
    v17 = *(v11 + v14 + 48);
    v18 = *(v11 + v14 + 64);
    v19 = *(v11 + v14 + 80);
    v30 = *(v11 + v14 + 96);
    v29[4] = v18;
    v29[5] = v19;
    v29[3] = v17;
    sub_1D5C5C4CC(v29, v26);
    sub_1D6FBF7BC(a1, v10, a3);
    if (v4)
    {
      break;
    }

    ++v13;
    sub_1D5C5C540(v29);
    v14 += 104;
    if (v12 == v13)
    {
LABEL_9:

      return;
    }
  }

  sub_1D5C5C540(v29);
LABEL_50:
}

void sub_1D6FE1D5C(unint64_t a1, char *a2, uint64_t (*a3)(void), unint64_t a4)
{
  switch((a4 >> 58) & 0x3C | (a4 >> 1) & 3)
  {
    case 1uLL:

      v8 = sub_1D6FFCDEC;
      v9 = MEMORY[0x1E69D6F70];
      goto LABEL_29;
    case 2uLL:

      v21 = MEMORY[0x1E69D6F78];
      goto LABEL_26;
    case 3uLL:

      v21 = MEMORY[0x1E69D6F80];
LABEL_26:
      sub_1D6FD8274(a1, a2, a3, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCD24, v21);
      goto LABEL_50;
    case 4uLL:

      sub_1D6FE02FC(a1, a2, a3, &unk_1F51DEE20, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCB2C);
      goto LABEL_50;
    case 5uLL:

      sub_1D6FC9BE0(a1, a2, a3, &unk_1F51DEE48, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCB44);
      goto LABEL_50;
    case 6uLL:

      sub_1D6FD9574(a1, a2, a3, &unk_1F51DEE70, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCB5C);
      goto LABEL_50;
    case 7uLL:

      sub_1D6FD9E6C(a1, a2, a3, sub_1D6FFCE04, &unk_1F51DEE98, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCB74, &unk_1F51DEEC0, sub_1D6FFCD88);
      goto LABEL_50;
    case 8uLL:

      sub_1D6FFA0E8(a1, a2, sub_1D5EB563C, sub_1D6FF92D8);
      goto LABEL_50;
    case 9uLL:

      sub_1D6FDBBB4(a1, a2, a3, sub_1D6FBFE04);
      goto LABEL_50;
    case 0xAuLL:

      sub_1D6FCC208(a1, a2, a3, sub_1D6FFCE1C, &unk_1F51DEEE8, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCD3C);
      goto LABEL_50;
    case 0xBuLL:

      sub_1D6FE5308(a1, a2, a3, &unk_1F51DEF10, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCDA0);
      goto LABEL_50;
    case 0xCuLL:

      sub_1D6FD7E50(a1, a2, a3, sub_1D6FBFE04);
      goto LABEL_50;
    case 0xDuLL:

      sub_1D6FC8FB0(a1, a2, a3, &unk_1F51DEF38, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCB8C);
      goto LABEL_50;
    case 0xEuLL:

      sub_1D6FBA034(a1, a2, a3, &unk_1F51DEF60, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCBA4, sub_1D6FFCE34);
      goto LABEL_50;
    case 0xFuLL:

      sub_1D6FE5778(a1, a2, a3, sub_1D6FFCE64, &unk_1F51DEF88, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCD54, sub_1D6FFCE7C);
      goto LABEL_50;
    case 0x10uLL:

      sub_1D6FE6728(a1, a2, a3, &unk_1F51DEFB0, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCC4C);
      goto LABEL_50;
    case 0x11uLL:

      sub_1D6FC9504(a1, a2, a3, &unk_1F51DEFD8, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCEE0);
      goto LABEL_50;
    case 0x12uLL:

      sub_1D6FE7320(a1, a2, a3, sub_1D6FBFE04);
      goto LABEL_50;
    case 0x13uLL:

      sub_1D6FD0868(a1, a2, a3, &unk_1F51DF000, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCDB8);
      goto LABEL_50;
    case 0x14uLL:

      sub_1D6FE77CC(a1, a2, a3, sub_1D6FFCE94, &unk_1F51DF028, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCD0C);
      goto LABEL_50;
    case 0x15uLL:

      sub_1D6FCD35C(a1, a2, a3, &unk_1F51DF050, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCC64);
      goto LABEL_50;
    case 0x16uLL:
      v22 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v27[0] = a1;
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = a3;
      v23[4] = a2;
      sub_1D5EB563C(0);
      sub_1D6FF92D8();
      swift_retain_n();

      sub_1D7259AEC();

      goto LABEL_50;
    case 0x17uLL:

      sub_1D6FC357C(a1, a2, a3, &unk_1F51DF078, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCEF8);
      goto LABEL_50;
    case 0x18uLL:

      sub_1D6FE87E4(a1, a2, a3, &unk_1F51DF0A0, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCC7C);
      goto LABEL_50;
    case 0x19uLL:

      sub_1D6FE9634(a1, a2, a3, &unk_1F51DF0F0, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCC94, &unk_1F51DF0C8, sub_1D6FFCDE8);
      goto LABEL_50;
    case 0x1AuLL:

      sub_1D6FEA82C(a1, a2, a3, &unk_1F51DF118, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCBBC);
      goto LABEL_50;
    case 0x1BuLL:

      sub_1D6FC5100(a1, a2, a3);
      goto LABEL_50;
    case 0x1CuLL:
      v24 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x70);
      v28[5] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v28[6] = v24;
      v28[7] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x80);
      v29 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x90);
      v25 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v28[1] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v28[2] = v25;
      v26 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v28[3] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v28[4] = v26;
      v28[0] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1D62B60B4(v28, v27);
      sub_1D6FD5EE8(a1, a2, a3, &unk_1F51DF168, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCCAC);
      sub_1D62B6110(v28);
      return;
    case 0x1DuLL:

      sub_1D6FD56DC(a1, a2, a3, sub_1D6FBFE04);
      goto LABEL_50;
    case 0x1EuLL:

      sub_1D6FEB124(a1, a2, a3, &unk_1F51DF190, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCDD0);
      goto LABEL_50;
    case 0x1FuLL:

      sub_1D6FDC824(a1, a2, a3, &unk_1F51DF1B8, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCBD4);
      goto LABEL_50;
    case 0x20uLL:

      sub_1D6FD4830(a1, a2, a3, &unk_1F51DF1E0, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCCC4);
      goto LABEL_50;
    case 0x21uLL:

      sub_1D6FDC34C(a1, a2, a3, sub_1D6FBFE04);
      goto LABEL_50;
    case 0x22uLL:

      sub_1D6FEB46C(a1, a2, a3, sub_1D6FBFE04);
      goto LABEL_50;
    case 0x23uLL:
      v10 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v11 = sub_1D6C1BE20(a2);
      swift_beginAccess();
      v32 = v10;
      v12 = *(v10 + 48);
      v13 = *(v12 + 16);

      if (!v13)
      {
        goto LABEL_9;
      }

      v14 = 0;
      v15 = 32;
      break;
    case 0x24uLL:

      sub_1D6FFA96C(a1, a2, &unk_1F51DF258, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCEC8);
      goto LABEL_50;
    case 0x25uLL:

      sub_1D6FC8388(a1, a2, a3);
      goto LABEL_50;
    case 0x26uLL:

      sub_1D6FCE6E8(a1, a2, a3, &unk_1F51DF2A8, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCCDC);
      goto LABEL_50;
    case 0x27uLL:

      sub_1D6FD7140(a1, a2, a3, &unk_1F51DF2D0, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCCF4);
      goto LABEL_50;
    case 0x28uLL:

      sub_1D6FDB38C(a1, a2, a3, sub_1D5EB563C, sub_1D6FF92D8, sub_1D6FFCEB0);
      goto LABEL_50;
    default:

      v8 = sub_1D6FF930C;
      v9 = MEMORY[0x1E69D6F68];
LABEL_29:
      sub_1D6FD8DB8(a1, a2, a3, sub_1D5EB563C, sub_1D6FF92D8, v8, v9);
      goto LABEL_50;
  }

  while (1)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      return;
    }

    v16 = *(v12 + v15);
    v17 = *(v12 + v15 + 32);
    v30[1] = *(v12 + v15 + 16);
    v30[2] = v17;
    v30[0] = v16;
    v18 = *(v12 + v15 + 48);
    v19 = *(v12 + v15 + 64);
    v20 = *(v12 + v15 + 80);
    v31 = *(v12 + v15 + 96);
    v30[4] = v19;
    v30[5] = v20;
    v30[3] = v18;
    sub_1D5C5C4CC(v30, v27);
    sub_1D6FBFE04(a1, v11, a3);
    if (v4)
    {
      break;
    }

    ++v14;
    sub_1D5C5C540(v30);
    v15 += 104;
    if (v13 == v14)
    {
LABEL_9:

      return;
    }
  }

  sub_1D5C5C540(v30);
LABEL_50:
}

void sub_1D6FE2F40(unint64_t a1, char *a2, uint64_t (*a3)(void), unint64_t a4)
{
  switch((a4 >> 58) & 0x3C | (a4 >> 1) & 3)
  {
    case 1uLL:

      v8 = sub_1D6FF930C;
      v9 = MEMORY[0x1E69D6F70];
      goto LABEL_29;
    case 2uLL:

      v21 = MEMORY[0x1E69D6F78];
      goto LABEL_26;
    case 3uLL:

      v21 = MEMORY[0x1E69D6F80];
LABEL_26:
      sub_1D6FD8274(a1, a2, a3, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF936C, v21);
      goto LABEL_50;
    case 4uLL:

      sub_1D6FE02FC(a1, a2, a3, &unk_1F51DE308, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF938C);
      goto LABEL_50;
    case 5uLL:

      sub_1D6FC9BE0(a1, a2, a3, &unk_1F51DE498, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF972C);
      goto LABEL_50;
    case 6uLL:

      sub_1D6FD9574(a1, a2, a3, &unk_1F51DE4C0, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9744);
      goto LABEL_50;
    case 7uLL:

      sub_1D6FD9E6C(a1, a2, a3, sub_1D6FF97F4, &unk_1F51DE4E8, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF980C, &unk_1F51DE510, sub_1D6FF9824);
      goto LABEL_50;
    case 8uLL:

      sub_1D6FFA0E8(a1, a2, sub_1D5EB5290, sub_1D6FF9338);
      goto LABEL_50;
    case 9uLL:

      sub_1D6FDBBB4(a1, a2, a3, sub_1D6FC044C);
      goto LABEL_50;
    case 0xAuLL:

      sub_1D6FCC208(a1, a2, a3, sub_1D6FF9844, &unk_1F51DE538, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF985C);
      goto LABEL_50;
    case 0xBuLL:

      sub_1D6FE5308(a1, a2, a3, &unk_1F51DE560, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF987C);
      goto LABEL_50;
    case 0xCuLL:

      sub_1D6FD7E50(a1, a2, a3, sub_1D6FC044C);
      goto LABEL_50;
    case 0xDuLL:

      sub_1D6FC8FB0(a1, a2, a3, &unk_1F51DE588, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF989C);
      goto LABEL_50;
    case 0xEuLL:

      sub_1D6FBA034(a1, a2, a3, &unk_1F51DE5B0, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF98B4, sub_1D6FF98CC);
      goto LABEL_50;
    case 0xFuLL:

      sub_1D6FE5778(a1, a2, a3, sub_1D6FF9910, &unk_1F51DE600, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF993C, sub_1D6FF995C);
      goto LABEL_50;
    case 0x10uLL:

      sub_1D6FE6728(a1, a2, a3, &unk_1F51DE628, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9974);
      goto LABEL_50;
    case 0x11uLL:

      sub_1D6FC9504(a1, a2, a3, &unk_1F51DE650, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF998C);
      goto LABEL_50;
    case 0x12uLL:

      sub_1D6FE7320(a1, a2, a3, sub_1D6FC044C);
      goto LABEL_50;
    case 0x13uLL:

      sub_1D6FD0868(a1, a2, a3, &unk_1F51DE678, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF99AC);
      goto LABEL_50;
    case 0x14uLL:

      sub_1D6FE77CC(a1, a2, a3, sub_1D6FF9A20, &unk_1F51DE6A0, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9A4C);
      goto LABEL_50;
    case 0x15uLL:

      sub_1D6FCD35C(a1, a2, a3, &unk_1F51DE6C8, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9A6C);
      goto LABEL_50;
    case 0x16uLL:
      v22 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v27[0] = a1;
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = a3;
      v23[4] = a2;
      sub_1D5EB5290(0);
      sub_1D6FF9338();
      swift_retain_n();

      sub_1D7259AEC();

      goto LABEL_50;
    case 0x17uLL:

      sub_1D6FC357C(a1, a2, a3, &unk_1F51DE6F0, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9B1C);
      goto LABEL_50;
    case 0x18uLL:

      sub_1D6FE87E4(a1, a2, a3, &unk_1F51DE718, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9B3C);
      goto LABEL_50;
    case 0x19uLL:

      sub_1D6FE9634(a1, a2, a3, &unk_1F51DE768, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9B6C, &unk_1F51DE740, sub_1D6FF9B68);
      goto LABEL_50;
    case 0x1AuLL:

      sub_1D6FEA82C(a1, a2, a3, &unk_1F51DE790, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9BA4);
      goto LABEL_50;
    case 0x1BuLL:

      sub_1D6FC6104(a1, a2, a3);
      goto LABEL_50;
    case 0x1CuLL:
      v24 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x70);
      v28[5] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v28[6] = v24;
      v28[7] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x80);
      v29 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x90);
      v25 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v28[1] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v28[2] = v25;
      v26 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v28[3] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v28[4] = v26;
      v28[0] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1D62B60B4(v28, v27);
      sub_1D6FD5EE8(a1, a2, a3, &unk_1F51DE7E0, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9E34);
      sub_1D62B6110(v28);
      return;
    case 0x1DuLL:

      sub_1D6FD56DC(a1, a2, a3, sub_1D6FC044C);
      goto LABEL_50;
    case 0x1EuLL:

      sub_1D6FEB124(a1, a2, a3, &unk_1F51DE808, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9E4C);
      goto LABEL_50;
    case 0x1FuLL:

      sub_1D6FDC824(a1, a2, a3, &unk_1F51DE830, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9E6C);
      goto LABEL_50;
    case 0x20uLL:

      sub_1D6FD4830(a1, a2, a3, &unk_1F51DE858, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9EEC);
      goto LABEL_50;
    case 0x21uLL:

      sub_1D6FDC34C(a1, a2, a3, sub_1D6FC044C);
      goto LABEL_50;
    case 0x22uLL:

      sub_1D6FEB46C(a1, a2, a3, sub_1D6FC044C);
      goto LABEL_50;
    case 0x23uLL:
      v10 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v11 = sub_1D6C1BE20(a2);
      swift_beginAccess();
      v32 = v10;
      v12 = *(v10 + 48);
      v13 = *(v12 + 16);

      if (!v13)
      {
        goto LABEL_9;
      }

      v14 = 0;
      v15 = 32;
      break;
    case 0x24uLL:

      sub_1D6FFA96C(a1, a2, &unk_1F51DE880, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9F04);
      goto LABEL_50;
    case 0x25uLL:

      sub_1D6FC8604(a1, a2, a3);
      goto LABEL_50;
    case 0x26uLL:

      sub_1D6FCE6E8(a1, a2, a3, &unk_1F51DE8D0, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FF9FF0);
      goto LABEL_50;
    case 0x27uLL:

      sub_1D6FD7140(a1, a2, a3, &unk_1F51DE8F8, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FFA008);
      goto LABEL_50;
    case 0x28uLL:

      sub_1D6FDB38C(a1, a2, a3, sub_1D5EB5290, sub_1D6FF9338, sub_1D6FFA020);
      goto LABEL_50;
    default:

      v8 = sub_1D6FFCDEC;
      v9 = MEMORY[0x1E69D6F68];
LABEL_29:
      sub_1D6FD8DB8(a1, a2, a3, sub_1D5EB5290, sub_1D6FF9338, v8, v9);
      goto LABEL_50;
  }

  while (1)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      return;
    }

    v16 = *(v12 + v15);
    v17 = *(v12 + v15 + 32);
    v30[1] = *(v12 + v15 + 16);
    v30[2] = v17;
    v30[0] = v16;
    v18 = *(v12 + v15 + 48);
    v19 = *(v12 + v15 + 64);
    v20 = *(v12 + v15 + 80);
    v31 = *(v12 + v15 + 96);
    v30[4] = v19;
    v30[5] = v20;
    v30[3] = v18;
    sub_1D5C5C4CC(v30, v27);
    sub_1D6FC044C(a1, v11, a3);
    if (v4)
    {
      break;
    }

    ++v14;
    sub_1D5C5C540(v30);
    v15 += 104;
    if (v13 == v14)
    {
LABEL_9:

      return;
    }
  }

  sub_1D5C5C540(v30);
LABEL_50:
}

void sub_1D6FE4124(unint64_t a1, char *a2, uint64_t (*a3)(void), unint64_t a4)
{
  switch((a4 >> 58) & 0x3C | (a4 >> 1) & 3)
  {
    case 1uLL:

      v8 = MEMORY[0x1E69D6F70];
      goto LABEL_29;
    case 2uLL:

      v20 = MEMORY[0x1E69D6F78];
      goto LABEL_26;
    case 3uLL:

      v20 = MEMORY[0x1E69D6F80];
LABEL_26:
      sub_1D6FD8274(a1, a2, a3, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCD24, v20);
      goto LABEL_50;
    case 4uLL:

      sub_1D6FE02FC(a1, a2, a3, &unk_1F51DE998, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCB2C);
      goto LABEL_50;
    case 5uLL:

      sub_1D6FC9BE0(a1, a2, a3, &unk_1F51DE9C0, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCB44);
      goto LABEL_50;
    case 6uLL:

      sub_1D6FD9574(a1, a2, a3, &unk_1F51DE9E8, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCB5C);
      goto LABEL_50;
    case 7uLL:

      sub_1D6FD9E6C(a1, a2, a3, sub_1D6FFCE04, &unk_1F51DEA10, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCB74, &unk_1F51DEA38, sub_1D6FFCD88);
      goto LABEL_50;
    case 8uLL:

      sub_1D6FFA0E8(a1, a2, sub_1D6FFA04C, sub_1D6FFA06C);
      goto LABEL_50;
    case 9uLL:

      sub_1D6FDBBB4(a1, a2, a3, sub_1D6FC0A94);
      goto LABEL_50;
    case 0xAuLL:

      sub_1D6FCC208(a1, a2, a3, sub_1D6FFCE1C, &unk_1F51DEA60, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCD3C);
      goto LABEL_50;
    case 0xBuLL:

      sub_1D6FE5308(a1, a2, a3, &unk_1F51DEA88, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCDA0);
      goto LABEL_50;
    case 0xCuLL:

      sub_1D6FD7E50(a1, a2, a3, sub_1D6FC0A94);
      goto LABEL_50;
    case 0xDuLL:

      sub_1D6FC8FB0(a1, a2, a3, &unk_1F51DEAB0, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCB8C);
      goto LABEL_50;
    case 0xEuLL:

      sub_1D6FBA034(a1, a2, a3, &unk_1F51DEAD8, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCBA4, sub_1D6FFCE34);
      goto LABEL_50;
    case 0xFuLL:

      sub_1D6FE5778(a1, a2, a3, sub_1D6FFCE64, &unk_1F51DEB00, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCD54, sub_1D6FFCE7C);
      goto LABEL_50;
    case 0x10uLL:

      sub_1D6FE6728(a1, a2, a3, &unk_1F51DEB28, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCC4C);
      goto LABEL_50;
    case 0x11uLL:

      sub_1D6FC9504(a1, a2, a3, &unk_1F51DEB50, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCEE0);
      goto LABEL_50;
    case 0x12uLL:

      sub_1D6FE7320(a1, a2, a3, sub_1D6FC0A94);
      goto LABEL_50;
    case 0x13uLL:

      sub_1D6FD0868(a1, a2, a3, &unk_1F51DEB78, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCDB8);
      goto LABEL_50;
    case 0x14uLL:

      sub_1D6FE77CC(a1, a2, a3, sub_1D6FFCE94, &unk_1F51DEBA0, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCD0C);
      goto LABEL_50;
    case 0x15uLL:

      sub_1D6FCD35C(a1, a2, a3, &unk_1F51DEBC8, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCC64);
      goto LABEL_50;
    case 0x16uLL:
      v21 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v26[0] = a1;
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = a3;
      v22[4] = a2;
      sub_1D6FFA04C(0);
      sub_1D6FFA06C();
      swift_retain_n();

      sub_1D7259AEC();

      goto LABEL_50;
    case 0x17uLL:

      sub_1D6FC357C(a1, a2, a3, &unk_1F51DEBF0, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCEF8);
      goto LABEL_50;
    case 0x18uLL:

      sub_1D6FE87E4(a1, a2, a3, &unk_1F51DEC18, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCC7C);
      goto LABEL_50;
    case 0x19uLL:

      sub_1D6FE9634(a1, a2, a3, &unk_1F51DEC68, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCC94, &unk_1F51DEC40, sub_1D6FFCDE8);
      goto LABEL_50;
    case 0x1AuLL:

      sub_1D6FEA82C(a1, a2, a3, &unk_1F51DEC90, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCBBC);
      goto LABEL_50;
    case 0x1BuLL:

      sub_1D6FC7108(a1, a2, a3);
      goto LABEL_50;
    case 0x1CuLL:
      v23 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x70);
      v27[5] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x60);
      v27[6] = v23;
      v27[7] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x80);
      v28 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x90);
      v24 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v27[1] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v27[2] = v24;
      v25 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x50);
      v27[3] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v27[4] = v25;
      v27[0] = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);
      sub_1D62B60B4(v27, v26);
      sub_1D6FD5EE8(a1, a2, a3, &unk_1F51DECE0, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCCAC);
      sub_1D62B6110(v27);
      return;
    case 0x1DuLL:

      sub_1D6FD56DC(a1, a2, a3, sub_1D6FC0A94);
      goto LABEL_50;
    case 0x1EuLL:

      sub_1D6FEB124(a1, a2, a3, &unk_1F51DED08, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCDD0);
      goto LABEL_50;
    case 0x1FuLL:

      sub_1D6FDC824(a1, a2, a3, &unk_1F51DED30, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCBD4);
      goto LABEL_50;
    case 0x20uLL:

      sub_1D6FD4830(a1, a2, a3, &unk_1F51DED58, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCCC4);
      goto LABEL_50;
    case 0x21uLL:

      sub_1D6FDC34C(a1, a2, a3, sub_1D6FC0A94);
      goto LABEL_50;
    case 0x22uLL:

      sub_1D6FEB46C(a1, a2, a3, sub_1D6FC0A94);
      goto LABEL_50;
    case 0x23uLL:
      v9 = *((a4 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v10 = sub_1D6C1BE20(a2);
      swift_beginAccess();
      v31 = v9;
      v11 = *(v9 + 48);
      v12 = *(v11 + 16);

      if (!v12)
      {
        goto LABEL_9;
      }

      v13 = 0;
      v14 = 32;
      break;
    case 0x24uLL:

      sub_1D6FFA96C(a1, a2, &unk_1F51DED80, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCEC8);
      goto LABEL_50;
    case 0x25uLL:

      sub_1D6FC8880(a1, a2, a3);
      goto LABEL_50;
    case 0x26uLL:

      sub_1D6FCE6E8(a1, a2, a3, &unk_1F51DEDD0, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCCDC);
      goto LABEL_50;
    case 0x27uLL:

      sub_1D6FD7140(a1, a2, a3, &unk_1F51DEDF8, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCCF4);
      goto LABEL_50;
    case 0x28uLL:

      sub_1D6FDB38C(a1, a2, a3, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCEB0);
      goto LABEL_50;
    default:

      v8 = MEMORY[0x1E69D6F68];
LABEL_29:
      sub_1D6FD8DB8(a1, a2, a3, sub_1D6FFA04C, sub_1D6FFA06C, sub_1D6FFCDEC, v8);
      goto LABEL_50;
  }

  while (1)
  {
    if (v13 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v15 = *(v11 + v14);
    v16 = *(v11 + v14 + 32);
    v29[1] = *(v11 + v14 + 16);
    v29[2] = v16;
    v29[0] = v15;
    v17 = *(v11 + v14 + 48);
    v18 = *(v11 + v14 + 64);
    v19 = *(v11 + v14 + 80);
    v30 = *(v11 + v14 + 96);
    v29[4] = v18;
    v29[5] = v19;
    v29[3] = v17;
    sub_1D5C5C4CC(v29, v26);
    sub_1D6FC0A94(a1, v10, a3);
    if (v4)
    {
      break;
    }

    ++v13;
    sub_1D5C5C540(v29);
    v14 += 104;
    if (v12 == v13)
    {
LABEL_9:

      return;
    }
  }

  sub_1D5C5C540(v29);
LABEL_50:
}

void sub_1D6FE5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v45 = a7;
  v42 = a5;
  v43 = a6;
  v41[2] = a4;
  v9 = v8;
  v10 = v7;
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v41 - v17;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (v41 - v21);
  v52 = a1;
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

  v41[1] = v29;
  if (v10[9])
  {
    v32 = v10[13];
    v31 = v10[14];
    v34 = v10[11];
    v33 = v10[12];
    v35 = v10[10];
    v46 = v10[9];
    v47 = v35;
    v48 = v34;
    v49 = v33;
    v50 = v32;
    v51 = v31;

    sub_1D5DEA234(v32);

    sub_1D68687FC(a2, v18);
    if (v9)
    {

      v36 = v50;

      sub_1D5CBF568(v36);

      return;
    }

    v38 = v50;
    v41[0] = v51;

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
  v40[2] = v10;
  v40[3] = a2;
  v40[4] = v44;
  v42(0);
  v43();

  sub_1D7259ACC();

  sub_1D6FFCA9C(v18, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
}

double sub_1D6FE5778(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), void (*a8)(uint64_t *, uint64_t), uint64_t a9)
{
  v108 = a8;
  v107 = a7;
  v106 = a6;
  v105 = a5;
  v115 = a4;
  v10 = v9;
  v116 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v110 = v13;
  v109 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v104 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v112 = (&v98 - v18);
  v19 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v111 = &v98 - v22;
  v114 = sub_1D725A36C();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v23);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v19);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = (&v98 - v28);
  v126 = a1;
  swift_beginAccess();
  v30 = v10[2];
  v31 = v10[3];

  v117 = sub_1D6E8DD40(v30, v31);
  v33 = v32;

  v34 = v10[2];
  v35 = v10[3];

  sub_1D6B0A84C(v34, v35);

  swift_beginAccess();

  sub_1D6B0ACE8(v36, 0);

  v37 = sub_1D6B0B228(0, 0);

  v38 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v39 = (*(v37 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  v42 = v10[10];

  v43 = v42;
  v44 = v118;
  sub_1D6FBC05C(v43, v37, v40, v41);
  v118 = v44;
  if (v44)
  {

LABEL_3:

    return result;
  }

  v100 = v38;
  v101 = v10;
  v102 = a2;
  v103 = v45;

  v99 = *(v116 + 24);
  v47 = v116;
  v48 = v117;
  if (*(v99 + 16))
  {
    *v29 = v37;
    v49 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v49 - 8) + 56))(v29, 0, 1, v49);
    swift_beginAccess();

    sub_1D6D60828(v29, v48, v33);
    swift_endAccess();
  }

  v50 = (*(v113 + 104))(v25, *MEMORY[0x1E69D7378], v114);
  MEMORY[0x1EEE9AC00](v50, v51);
  v52 = v101;
  v92 = v101;
  v93 = v48;
  v94 = v33;
  v95 = v102;
  v96 = v37;
  v97 = v47;
  sub_1D6FF9128(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v53 = v118;
  v54 = sub_1D725A4EC();
  if (v53)
  {
  }

  else
  {
    v55 = v54;
    v56 = (*(v37 + v100) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v57 = *v56;
    v58 = v56[1];
    v59 = v52[15];

    sub_1D6FBAE48(v59, v37, v57, v58);
    v61 = v60;
    v115 = v55;

    if (v61)
    {

      v62 = v61;
      sub_1D6A45640(v37);
      v64 = v112;
      v65 = v63;
      v114 = v62;

      if (v65)
      {
        swift_beginAccess();

        sub_1D6D60C08(v65, v117, v33);
        swift_endAccess();
      }
    }

    else
    {
      v114 = 0;
      v64 = v112;
    }

    if (v52[17])
    {
      v67 = v52[21];
      v66 = v52[22];
      v69 = v52[19];
      v68 = v52[20];
      v70 = v52[18];
      v119 = v52[17];
      v120 = v70;
      v121 = v69;
      v122 = v68;
      v123 = v67;
      v124 = v66;

      sub_1D5DEA234(v67);

      sub_1D68687FC(v37, v111);
      v71 = v123;

      sub_1D5CBF568(v71);

      v72 = 0;
      v64 = v112;
    }

    else
    {
      v72 = 1;
    }

    v73 = sub_1D7259B8C();
    (*(*(v73 - 8) + 56))(v111, v72, 1, v73);
    v74 = swift_allocObject();
    *(v74 + 16) = 0u;
    *(v74 + 32) = 0u;
    *(v74 + 48) = 0u;
    *(v74 + 64) = 0u;
    *(v74 + 80) = 0;
    KeyPath = swift_getKeyPath();
    swift_beginAccess();
    v125[0] = v52[4];
    v76 = v125[0];

    sub_1D5C82CD8(v76);
    sub_1D5BEB9F4(v37, v117, v33, v64);
    v112 = KeyPath;
    v113 = v74;
    sub_1D5C92A8C(v125[0]);
    swift_beginAccess();
    v77 = v52[6];

    v78 = sub_1D618EFB4(v37, v77);
    v118 = 0;
    v79 = v37;
    v100 = v78;

    v80 = v64;
    v81 = swift_allocObject();
    v81[2] = v113;
    v81[3] = v52;
    v82 = v103;
    v81[4] = v79;
    v81[5] = v82;
    v83 = v106(0);
    v84 = v107();
    v107 = v79;

    v105 = v84;
    v96 = v84;
    v106 = v83;
    v94 = v81;
    v95 = v83;
    v85 = v118;
    sub_1D7259AFC();
    v118 = v85;
    v86 = v109;
    v87 = v110;
    v108 = *(v109 + 8);
    v99 = v109 + 8;
    v108(v80, v110);

    swift_beginAccess();
    if (!v52[16])
    {
      sub_1D6FFCA9C(v111, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

      goto LABEL_3;
    }

    v88 = v104;
    v89 = (*(v86 + 104))(v104, *MEMORY[0x1E69D7460], v87);
    v112 = &v98;
    MEMORY[0x1EEE9AC00](v89, v90);
    *(&v98 - 8) = v117;
    *(&v98 - 7) = v33;
    v97 = v103;

    v96 = v105;
    v94 = &v98 - 10;
    v95 = v106;
    v92 = MEMORY[0x1E69E7CC0];
    v93 = a9;
    v91 = v111;
    sub_1D725999C();

    v108(v88, v87);
    sub_1D6FFCA9C(v91, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }

  return result;
}

void sub_1D6FE6728(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v80 = a7;
  v79 = a6;
  v78 = a5;
  v77 = a4;
  v8 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v82 = v12;
  v81 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v83 = (v73 - v14);
  v15 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v89 = v73 - v18;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v15);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v86 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v87 = v73 - v24;
  v25 = type metadata accessor for FormatNodeStateData.Data(0);
  v84 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v85 = (v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v15);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (v73 - v30);
  v95 = a1;
  swift_beginAccess();

  v88 = a2;
  v33 = sub_1D6B0ACE8(v32, 0);

  swift_beginAccess();
  v34 = v8[2];
  v35 = v8[3];

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

  v90 = v36;
  v40 = v38;
  v41 = (*(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = v8[11];

  v45 = v44;
  v46 = v91;
  sub_1D6FBC400(v45, v33, v42, v43);
  if (v46)
  {
  }

  else
  {
    v48 = v47;

    v49 = v8[7];
    type metadata accessor for FormatWebEmbedDataConfig(0);
    swift_allocObject();

    v51 = sub_1D71BCFB0(v50, v49);
    v92[0] = v8[4];

    v52 = sub_1D6D26C38(v33, v51);
    v76 = v51;
    v91 = v48;
    v53 = v52;

    v54 = v85;
    *v85 = v53;
    swift_storeEnumTagMultiPayload();
    v55 = v87;
    sub_1D5BE4148(v54, v87, type metadata accessor for FormatNodeStateData.Data);
    (*(v84 + 56))(v55, 0, 1, v25);
    v75 = type metadata accessor for FormatNodeStateData.Data;
    v74 = MEMORY[0x1E69E6720];
    v56 = v86;
    sub_1D6FFC87C(v55, v86, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_beginAccess();

    v84 = v53;

    v57 = v40;
    sub_1D6D60A18(v56, v90, v40);
    swift_endAccess();
    sub_1D6FFCA9C(v55, &qword_1EDF2C470, v75, v74, sub_1D5D27F7C);
    sub_1D6FFC9A0(v54, type metadata accessor for FormatNodeStateData.Data);
    sub_1D707E9E8(v8, v88, v92);
    v58 = LOBYTE(v92[0]);
    if (v8[20])
    {
      v60 = v8[24];
      v59 = v8[25];
      v62 = v8[22];
      v61 = v8[23];
      v63 = v8[21];
      v92[0] = v8[20];
      v92[1] = v63;
      v92[2] = v62;
      v92[3] = v61;
      v93 = v60;
      v94 = v59;

      sub_1D5DEA234(v60);

      sub_1D68687FC(v33, v89);
      LODWORD(v88) = v58;
      v64 = v93;

      sub_1D5CBF568(v64);
      v65 = v89;

      v66 = 0;
      v57 = v40;
    }

    else
    {
      LODWORD(v88) = LOBYTE(v92[0]);
      v65 = v89;
      v66 = 1;
    }

    v67 = sub_1D7259B8C();
    (*(*(v67 - 8) + 56))(v65, v66, 1, v67);
    swift_getKeyPath();
    v92[0] = v8[8];
    v68 = v92[0];

    sub_1D5C82CD8(v68);
    v69 = v90;
    sub_1D5BEB9F4(v33, v90, v57, v83);
    sub_1D5C92A8C(v92[0]);
    swift_beginAccess();
    v70 = v8[10];

    v89 = sub_1D618EFB4(v33, v70);

    v71 = swift_allocObject();
    v73[1] = v57;
    *(v71 + 16) = v69;
    *(v71 + 24) = v57;
    *(v71 + 32) = v33;
    *(v71 + 40) = v8;
    v72 = v84;
    *(v71 + 48) = v91;
    *(v71 + 56) = v72;
    *(v71 + 64) = v88;
    v78(0);
    v79();

    sub_1D7259B1C();

    (*(v81 + 8))(v83, v82);
    sub_1D6FFCA9C(v65, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

void sub_1D6FE7320(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t *, uint64_t))
{
  v56 = a1;
  v57 = a4;
  v6 = v5;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v49 - v11);
  swift_beginAccess();
  v13 = v4[2];
  v14 = v4[3];
  v55 = v4;

  v15 = sub_1D6E8DD40(v13, v14);
  v17 = v16;

  if (*(*(a3 + 24) + 16))
  {
    *v12 = a2;
    v18 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    swift_beginAccess();

    sub_1D6D60828(v12, v15, v17);
    swift_endAccess();
  }

  v19 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 40);
  if (!*(v19 + 16))
  {

    goto LABEL_8;
  }

  v20 = sub_1D5B69D90(v15, v17);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_8:
    v25 = 0;
    v24 = 1;
    goto LABEL_9;
  }

  v23 = (*(v19 + 56) + 16 * v20);
  v24 = v23[1];
  if (!v24)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v25 = *v23;
LABEL_9:
  swift_beginAccess();
  v26 = v25 >= 0;
  if (v24 > 0)
  {
    v26 = v25 < 1;
  }

  if (!v26)
  {
    v27 = 0;
    v51 = v25;
    v52 = a2;
    v49 = a3;
    v50 = v24;
    while (1)
    {
      v29 = v27 + v24;
      if (__OFADD__(v27, v24))
      {
        v29 = ((v27 + v24) >> 63) ^ 0x8000000000000000;
      }

      v53 = v29;
      v30 = v55;
      sub_1D713ED14(v25, v24, v27);
      v32 = v31;
      sub_1D714025C(v25, v24, v27);
      v54 = v33;
      v34 = v30[3];
      v58 = v30[2];
      v59 = v34;

      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      v62 = v27;
      v35 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v35);

      sub_1D6B0A84C(v58, v59);

      v58 = v27;
      v36 = sub_1D72644BC();
      sub_1D6B0B228(v36, v37);

      sub_1D6B0C068(v32);

      v38 = sub_1D6B0ACE8(v54, 0);

      v39 = v30[11];
      v40 = *(v39 + 16);

      if (v40)
      {
        break;
      }

LABEL_13:

      v24 = v50;
      v25 = v51;
      v27 = v53;
      v28 = v51 >= v53;
      if (v50 > 0)
      {
        v28 = v53 >= v51;
      }

      if (v28)
      {
        return;
      }
    }

    v41 = 0;
    v42 = 32;
    v43 = v49;
    while (v41 < *(v39 + 16))
    {
      v44 = *(v39 + v42);
      v45 = *(v39 + v42 + 32);
      v60[1] = *(v39 + v42 + 16);
      v60[2] = v45;
      v60[0] = v44;
      v46 = *(v39 + v42 + 48);
      v47 = *(v39 + v42 + 64);
      v48 = *(v39 + v42 + 80);
      v61 = *(v39 + v42 + 96);
      v60[4] = v47;
      v60[5] = v48;
      v60[3] = v46;
      sub_1D5C5C4CC(v60, &v58);
      v57(v56, v38, v43);
      if (v6)
      {

        sub_1D5C5C540(v60);
        return;
      }

      ++v41;
      sub_1D5C5C540(v60);
      v42 += 104;
      if (v40 == v41)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_27;
  }
}

void sub_1D6FE77CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v129 = a7;
  v130 = a8;
  v127 = a5;
  v128 = a6;
  v135 = a4;
  v142 = a3;
  v9 = v8;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v131 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = (&v119 - v15);
  v17 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v119 - v20;
  v22 = sub_1D725A36C();
  v132 = *(v22 - 8);
  v133 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v134 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v17);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v139 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v140 = &v119 - v30;
  v31 = type metadata accessor for FormatNodeStateData.Data(0);
  v136 = *(v31 - 8);
  v137 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v138 = (&v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v17);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = (&v119 - v36);
  v158 = a1;
  swift_beginAccess();
  v143 = v9;
  v38 = *(v9 + 16);
  v39 = *(v9 + 24);

  v40 = sub_1D6E8DD40(v38, v39);
  v42 = v41;

  v159 = a2;
  v43 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings + 48);
  if (!*(v43 + 16) || (v44 = sub_1D5B69D90(v40, v42), (v45 & 1) == 0))
  {
    type metadata accessor for FormatLayoutError(0);
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v65 = v40;
    v65[1] = v42;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v125 = v40;
  v126 = v42;
  v120 = v16;
  v121 = v21;
  v119 = v13;
  v46 = *(v43 + 56) + 88 * v44;
  v47 = *(v46 + 16);
  v152 = *v46;
  v153 = v47;
  v49 = *(v46 + 48);
  v48 = *(v46 + 64);
  v50 = *(v46 + 32);
  v157 = *(v46 + 80);
  v155 = v49;
  v156 = v48;
  v154 = v50;
  v148 = *(v46 + 32);
  v149 = *(v46 + 48);
  v150 = *(v46 + 64);
  v151 = *(v46 + 80);
  v146 = *v46;
  v147 = *(v46 + 16);
  sub_1D6B15D58(&v152, &v145);
  sub_1D6B13814(&v146);
  swift_beginAccess();

  v52 = sub_1D6B0ACE8(v51, 0);

  v122 = *(v142 + 24);
  if (*(v122 + 16))
  {
    *v37 = v52;
    v53 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v53 - 8) + 56))(v37, 0, 1, v53);
    swift_beginAccess();

    v54 = v126;

    sub_1D6D60828(v37, v125, v54);
    swift_endAccess();
  }

  v55 = *(&v152 + 1);
  v123 = v152;
  v124 = v52;
  v56 = v153;
  v57 = v155;
  v58 = v156;
  v59 = v157;
  v146 = v154;
  v147 = v155;
  v148 = v156;
  LOBYTE(v149) = v157;

  sub_1D618ECBC(v57, *(&v57 + 1), v58, *(&v58 + 1), v59);
  v60 = v141;
  v61 = sub_1D6C15B90(v159, v56, *(&v56 + 1), v123, v55);
  if (v60)
  {

    v62 = v147;
    v63 = v148;
    v64 = v149;

    sub_1D5E32940(v62, *(&v62 + 1), v63, *(&v63 + 1), v64);
    sub_1D6FF99CC(&v152);
    return;
  }

  v66 = v61;
  v67 = v147;
  v69 = *(&v148 + 1);
  v68 = v148;
  v70 = v149;

  sub_1D5E32940(v67, *(&v67 + 1), v68, v69, v70);
  v71 = v137;
  v72 = v138;
  *v138 = v66;
  swift_storeEnumTagMultiPayload();
  v73 = v140;
  sub_1D5BE4148(v72, v140, type metadata accessor for FormatNodeStateData.Data);
  (*(v136 + 56))(v73, 0, 1, v71);
  v74 = MEMORY[0x1E69E6720];
  v75 = v139;
  sub_1D6FFC87C(v73, v139, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  swift_retain_n();
  v159 = v66;
  v76 = v126;

  sub_1D6D60A18(v75, v125, v76);
  swift_endAccess();
  sub_1D6FFCA9C(v73, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v74, sub_1D5D27F7C);
  sub_1D6FFC9A0(v72, type metadata accessor for FormatNodeStateData.Data);
  type metadata accessor for FormatStateViewNodeStateMapper();
  v77 = swift_allocObject();
  *(v77 + 16) = MEMORY[0x1E69E7CC8];
  v78 = v124;
  v79 = (*(v124 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v80 = *v79;
  v81 = v79[1];
  v82 = v143;
  v83 = *(v143 + 104);

  sub_1D6FBAE48(v83, v78, v80, v81);
  v85 = v84;
  v141 = v77;

  if (v85)
  {

    v86 = v78;
    sub_1D6A45640(v78);
    v88 = v141;
    v89 = v126;
    v90 = v87;

    v140 = v85;
    if (v90)
    {
      swift_beginAccess();

      sub_1D6D60C08(v90, v125, v89);
      swift_endAccess();
    }
  }

  else
  {
    v140 = 0;
    v88 = v141;
    v86 = v78;
    v89 = v126;
  }

  v91 = (*(v132 + 104))(v134, *MEMORY[0x1E69D7378], v133);
  MEMORY[0x1EEE9AC00](v91, v92);
  *(&v119 - 6) = v125;
  *(&v119 - 5) = v89;
  v115 = v86;
  v116 = v82;
  v117 = v142;
  v118 = v88;
  sub_1D6FF9128(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v93 = sub_1D725A4EC();
  v94 = v89;
  v142 = 0;
  v139 = v93;
  v95 = v82[15];
  if (v95)
  {
    v97 = v82[19];
    v96 = v82[20];
    v99 = v82[17];
    v98 = v82[18];
    v100 = v82[16];
    *&v146 = v95;
    *(&v146 + 1) = v100;
    *&v147 = v99;
    *(&v147 + 1) = v98;
    *&v148 = v97;
    *(&v148 + 1) = v96;

    v101 = v124;

    sub_1D5DEA234(v97);

    v102 = v142;
    sub_1D68687FC(v101, v121);
    v142 = v102;
    if (v102)
    {

      sub_1D6FF99CC(&v152);

      v103 = v148;

      sub_1D5CBF568(v103);

      return;
    }

    v105 = v148;

    v86 = v124;
    sub_1D5CBF568(v105);
    v94 = v126;
    v82 = v143;

    v104 = 0;
  }

  else
  {
    v104 = 1;
  }

  v106 = sub_1D7259B8C();
  v107 = v121;
  (*(*(v106 - 8) + 56))(v121, v104, 1, v106);
  swift_getKeyPath();
  swift_beginAccess();
  v144[0] = v82[4];
  v108 = v144[0];

  sub_1D5C82CD8(v108);
  v109 = v142;
  sub_1D5BEB9F4(v86, v125, v94, v120);
  if (v109)
  {
    sub_1D6FFCA9C(v107, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    sub_1D6FF99CC(&v152);

    swift_bridgeObjectRelease_n();

    sub_1D5C92A8C(v144[0]);
  }

  else
  {

    sub_1D5C92A8C(v144[0]);
    swift_beginAccess();
    v110 = v82[6];

    v143 = sub_1D618EFB4(v86, v110);

    v111 = swift_allocObject();
    v142 = 0;
    v112 = v111;
    v111[2] = v141;
    v111[3] = v82;
    v111[4] = v86;
    v113 = v128(0);
    v114 = v129();

    v116 = v113;
    v117 = v114;
    v115 = v112;
    sub_1D72599AC();
    sub_1D6FF99CC(&v152);

    (*(v131 + 8))(v120, v119);
    sub_1D6FFCA9C(v121, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

void sub_1D6FE87E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v94 = a6;
  v95 = a7;
  v92 = a4;
  v93 = a5;
  v8 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v98 = (&v88 - v13);
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v105 = &v88 - v17;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v103 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v104 = &v88 - v23;
  v24 = type metadata accessor for FormatNodeStateData.Data(0);
  v100 = *(v24 - 1);
  v101 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v102 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for FormatMicaData(0);
  MEMORY[0x1EEE9AC00](v99, v27);
  v107 = (&v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF3B668, MEMORY[0x1E69D78C0], v14);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v108 = &v88 - v31;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = (&v88 - v34);
  v122[10] = a1;
  swift_beginAccess();

  v37 = sub_1D6B0ACE8(v36, 0);

  swift_beginAccess();
  v38 = *(v7 + 16);
  v39 = *(v7 + 24);

  v40 = sub_1D6E8DD40(v38, v39);
  v42 = v41;

  if (*(*(a3 + 24) + 16))
  {
    *v35 = v37;
    v43 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v43 - 8) + 56))(v35, 0, 1, v43);
    swift_beginAccess();

    sub_1D6D60828(v35, v40, v42);
    swift_endAccess();
  }

  v106 = v40;
  v44 = (*(v37 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];
  v47 = *(v8 + 56);

  v48 = v47;
  v49 = v125;
  sub_1D6FBD4C0(v48, v37, v45, v46);
  if (v49)
  {
  }

  else
  {
    v125 = v50;

    sub_1D6E3ADA8(v37, *(v8 + 64), v122);
    v51 = v122[0];
    v52 = *(v8 + 152);
    v53 = *(v8 + 184);
    v112[6] = *(v8 + 168);
    v113[0] = v53;
    *(v113 + 9) = *(v8 + 193);
    v54 = *(v8 + 88);
    v55 = *(v8 + 120);
    v112[2] = *(v8 + 104);
    v112[3] = v55;
    v112[4] = *(v8 + 136);
    v112[5] = v52;
    v112[0] = *(v8 + 72);
    v112[1] = v54;
    v56 = *(v8 + 168);
    v119 = *(v8 + 152);
    v120 = v56;
    v121[0] = *(v8 + 184);
    *(v121 + 9) = *(v8 + 193);
    v57 = *(v8 + 88);
    v58 = *(v8 + 120);
    v116 = *(v8 + 104);
    v117 = v58;
    v118 = *(v8 + 136);
    v114 = *(v8 + 72);
    v115 = v57;
    if (sub_1D60486AC(&v114) == 1)
    {
      v90 = v51;
      v91 = v42;
      v59 = 1;
    }

    else
    {
      v123[5] = v119;
      v123[6] = v120;
      v124[0] = v121[0];
      *(v124 + 9) = *(v121 + 9);
      v123[2] = v116;
      v123[3] = v117;
      v123[4] = v118;
      v123[0] = v114;
      v123[1] = v115;

      sub_1D6FF924C(v112, v109, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
      sub_1D6E3A4F0(v123, v37);
      v90 = v51;
      v91 = v42;
      v59 = 0;
    }

    v60 = sub_1D725D4AC();
    v61 = v108;
    (*(*(v60 - 8) + 56))(v108, v59, 1, v60);
    v62 = v99;
    v63 = *(v99 + 20);
    v64 = MEMORY[0x1E69E6720];
    v88 = MEMORY[0x1E69E6720];
    v89 = sub_1D5D27F7C;
    v65 = v107;
    sub_1D6FFC87C(v61, v107 + v63, &qword_1EDF3B668, MEMORY[0x1E69D78C0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_beginAccess();
    v66 = *(v8 + 212);
    v67 = *(v8 + 216);
    *v65 = v90;
    v68 = v65 + *(v62 + 24);
    *v68 = v66;
    v68[4] = v67;
    v69 = v102;
    sub_1D5BE4148(v65, v102, type metadata accessor for FormatMicaData);
    v70 = v101;
    swift_storeEnumTagMultiPayload();
    v71 = v104;
    sub_1D5BE4148(v69, v104, type metadata accessor for FormatNodeStateData.Data);
    (*(v100 + 56))(v71, 0, 1, v70);
    v101 = type metadata accessor for FormatNodeStateData.Data;
    v72 = v103;
    sub_1D6FFC87C(v71, v103, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v64, v89);
    swift_beginAccess();
    v73 = v91;

    v74 = v72;
    v75 = v73;
    sub_1D6D60A18(v74, v106, v73);
    swift_endAccess();
    sub_1D6FFCA9C(v71, &qword_1EDF2C470, v101, v88, sub_1D5D27F7C);
    sub_1D6FFC9A0(v69, type metadata accessor for FormatNodeStateData.Data);
    if (*(v8 + 272))
    {
      v77 = *(v8 + 304);
      v76 = *(v8 + 312);
      v79 = *(v8 + 288);
      v78 = *(v8 + 296);
      v80 = *(v8 + 280);
      v109[0] = *(v8 + 272);
      v109[1] = v80;
      v109[2] = v79;
      v109[3] = v78;
      v110 = v77;
      v111 = v76;

      sub_1D5DEA234(v77);

      sub_1D68687FC(v37, v105);
      v81 = v110;
      v104 = v111;

      sub_1D5CBF568(v81);

      v82 = 0;
    }

    else
    {
      v82 = 1;
    }

    v83 = sub_1D7259B8C();
    (*(*(v83 - 8) + 56))(v105, v82, 1, v83);
    swift_getKeyPath();
    v109[0] = *(v8 + 32);
    v84 = v109[0];

    sub_1D5C82CD8(v84);
    sub_1D5BEB9F4(v37, v106, v75, v98);
    sub_1D5C92A8C(v109[0]);
    swift_beginAccess();
    v85 = *(v8 + 48);

    v104 = sub_1D618EFB4(v37, v85);

    v86 = swift_allocObject();
    v91 = v75;
    v86[2] = v106;
    v86[3] = v75;
    v86[4] = v37;
    v86[5] = v8;
    v86[6] = v125;
    v93(0);
    v94();

    sub_1D7259B1C();

    (*(v96 + 8))(v98, v97);
    v87 = MEMORY[0x1E69E6720];
    sub_1D6FFCA9C(v105, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    sub_1D6FFC9A0(v107, type metadata accessor for FormatMicaData);
    sub_1D6FFCA9C(v108, &qword_1EDF3B668, MEMORY[0x1E69D78C0], v87, sub_1D5D27F7C);
  }
}

void sub_1D6FE9634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v135 = a8;
  v122 = a7;
  v120 = a6;
  v119 = a5;
  v118 = a4;
  v11 = v10;
  v12 = v9;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v124 = v16;
  v123 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v125 = &v109[-v18];
  v19 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v131 = &v109[-v22];
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v19);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v109[-v25];
  v145 = a1;
  swift_beginAccess();

  v134 = a2;
  v28 = sub_1D6B0ACE8(v27, 0);

  swift_beginAccess();
  v29 = v12[2];
  v30 = v12[3];

  v31 = sub_1D6E8DD40(v29, v30);
  v33 = v32;

  v121 = a3;
  v34 = *(a3 + 24);
  if (*(v34 + 16))
  {
    *v26 = v28;
    v35 = type metadata accessor for FormatSourceMapContext(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v35 - 8) + 56))(v26, 0, 1, v35);
    swift_beginAccess();

    sub_1D6D60828(v26, v31, v33);
    swift_endAccess();
  }

  v128 = v31;
  v36 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v37 = (*(v28 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  v40 = v12[5];

  v41 = v40;
  v42 = v11;
  sub_1D6FBD864(v41, v28, v38, v39);
  v44 = v12;
  v45 = v42;
  if (v42)
  {

LABEL_6:

    return;
  }

  v115 = v34;
  v117 = v43;

  v144 = v44[4];

  v46 = v134;
  FormatLayeredMediaNodeContent.layeredMedia(from:)(v134, &v138);
  v113 = v44;

  v114 = v138;
  v116 = v139;
  v47 = v140;
  if (v117)
  {
    v48 = *(v117 + 208);
    v49 = v131;
    if (v48 == 255)
    {
      v52 = 2;
    }

    else
    {
      v50 = *(v117 + 200);
      v138 = *(v117 + 192);
      v139 = v50;
      LOBYTE(v140) = v48 & 1;
      sub_1D5E04CC4(v138, v50, v48 & 1);
      sub_1D725A7EC();
      v51 = FormatBoolean.value(contextLayoutOptions:)(v144);
      sub_1D5D2F2C4(v138, v139, v140);

      v52 = v51 & 1;
    }

    v110 = v52;
  }

  else
  {
    v110 = 2;
    v49 = v131;
  }

  v111 = v36;
  v53 = *(v28 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
  v54 = v128;
  if (v53)
  {
    v55 = *(v28 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
    v138 = v128;
    v139 = v33;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v55, v53);
    v54 = v138;
    v56 = v139;
  }

  else
  {

    v56 = v33;
  }

  type metadata accessor for LayeredMediaLoader();
  v57 = swift_allocObject();
  v58 = type metadata accessor for LayeredMediaParser();
  v59 = swift_allocObject();
  v59[2] = v54;
  v59[3] = v56;
  v60 = v116;
  v59[4] = v114;
  v59[5] = v60;
  v57[5] = v58;
  v57[6] = &protocol witness table for LayeredMediaParser;
  v112 = v57;
  v57[2] = v59;
  if (v117 && (v61 = *(v117 + 240)) != 0)
  {
  }

  else
  {

    v61 = MEMORY[0x1E69E7CC0];
  }

  v62 = *(v61 + 16);
  v132 = v33;
  if (v62)
  {
    KeyPath = 0;
    v126 = a9;
    v138 = MEMORY[0x1E69E7CC0];
    sub_1D6997A60(0, v62, 0);
    v63 = 0;
    v64 = v138;
    v129 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions;
    v65 = (v61 + 48);
    v133 = v28;
    v130 = v61;
    v127 = v62;
    while (v63 < *(v61 + 16))
    {
      v136 = v64;
      v66 = *(v65 - 2);
      v67 = *(v65 - 1);
      v68 = *v65;
      sub_1D5CFCFAC(v66);
      sub_1D5D04BD4(v67);
      sub_1D5D04BD4(v68);
      sub_1D725A7EC();
      v70 = v144;
      v71 = 0;
      if ((v68 & 0xF000000000000007) == 0xF000000000000007)
      {
        v72 = 0;
      }

      else
      {
        v144 = v68;

        v73 = KeyPath;
        FormatFloat.value(contextLayoutOptions:)(v70);
        KeyPath = v73;
        if (v73)
        {
          goto LABEL_38;
        }

        v72 = v74;
      }

      if ((v67 & 0xF000000000000007) != 0xF000000000000007)
      {
        v144 = v67;

        v75 = KeyPath;
        FormatFloat.value(contextLayoutOptions:)(v70);
        KeyPath = v75;
        if (v75)
        {
LABEL_38:

          sub_1D5C84FF4(v66);
          sub_1D5C8500C(v67);
          sub_1D5C8500C(v68);

          return;
        }

        v71 = v76;
      }

      if ((~v66 & 0xF000000000000007) != 0)
      {
        v144 = v66;
        v77 = FormatColor.color.getter(v69);

        sub_1D5C84FF4(v66);
        sub_1D5C8500C(v67);
        sub_1D5C8500C(v68);
      }

      else
      {

        sub_1D5C84FF4(v66);
        sub_1D5C8500C(v67);
        sub_1D5C8500C(v68);
        v77 = 0;
      }

      v78 = swift_allocObject();
      *(v78 + 16) = v72;
      *(v78 + 24) = (v68 & 0xF000000000000007) == 0xF000000000000007;
      *(v78 + 32) = v71;
      *(v78 + 40) = (v67 & 0xF000000000000007) == 0xF000000000000007;
      *(v78 + 48) = v77;
      v64 = v136;
      v138 = v136;
      v80 = *(v136 + 16);
      v79 = *(v136 + 24);
      v33 = v132;
      v28 = v133;
      if (v80 >= v79 >> 1)
      {
        v82 = v78;
        sub_1D6997A60((v79 > 1), v80 + 1, 1);
        v78 = v82;
        v64 = v138;
      }

      ++v63;
      *(v64 + 16) = v80 + 1;
      v81 = v64 + 16 * v80;
      *(v81 + 32) = v126;
      *(v81 + 40) = v78;
      v65 += 3;
      v61 = v130;
      if (v127 == v63)
      {

        v45 = KeyPath;
        v49 = v131;
        v46 = v134;
        goto LABEL_39;
      }
    }

    __break(1u);
  }

  else
  {

    v64 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v83 = (*(v28 + v111) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v84 = *v83;
    v85 = v83[1];
    v86 = v113[6];

    sub_1D6FBAE48(v86, v28, v84, v85);
    v88 = v28;
    if (v45)
    {

      goto LABEL_6;
    }

    v89 = v87;
    v133 = v88;

    if (v89)
    {

      sub_1D6A45640(v133);
      v91 = v90;

      if (v91)
      {
        swift_beginAccess();

        sub_1D6D60C08(v91, v128, v33);
        swift_endAccess();
      }
    }

    v136 = v64;
    if (v113[16])
    {
      v93 = v113[20];
      v92 = v113[21];
      v95 = v113[18];
      v94 = v113[19];
      v96 = v113[17];
      v138 = v113[16];
      v139 = v96;
      v140 = v95;
      v141 = v94;
      v142 = v93;
      v143 = v92;

      sub_1D5DEA234(v93);

      sub_1D68687FC(v133, v49);
      v97 = v142;

      sub_1D5CBF568(v97);

      v98 = 0;
      v33 = v132;
    }

    else
    {
      v98 = 1;
    }

    v99 = sub_1D7259B8C();
    (*(*(v99 - 8) + 56))(v49, v98, 1, v99);
    v100 = v46 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
    v101 = *(*(*(v100 + *(type metadata accessor for GroupLayoutContext(0) + 40)) + 24) + 48);
    KeyPath = swift_getKeyPath();
    v102 = v113;
    v138 = v113[7];
    v103 = v138;

    sub_1D5C82CD8(v103);
    v104 = v133;
    sub_1D5BEB9F4(v133, v128, v33, v125);
    sub_1D5C92A8C(v138);
    swift_beginAccess();
    v105 = v102[9];

    v135 = sub_1D618EFB4(v104, v105);

    v106 = swift_allocObject();
    *(v106 + 16) = v104;
    *(v106 + 24) = v101;
    *(v106 + 32) = v112;
    *(v106 + 40) = v110;
    v107 = v114;
    *(v106 + 48) = v136;
    *(v106 + 56) = v107;
    *(v106 + 64) = v116;
    *(v106 + 72) = v47;
    v108 = v128;
    *(v106 + 80) = v121;
    *(v106 + 88) = v108;
    *(v106 + 96) = v33;
    *(v106 + 104) = v102;
    *(v106 + 112) = v117;
    v136 = v119(0);
    v120();

    sub_1D7259B1C();

    (*(v123 + 8))(v125, v124);
    sub_1D6FFCA9C(v131, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

void sub_1D6FEA82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v83 = a7;
  v81 = a6;
  v80 = a5;
  v84 = a4;
  v85 = a3;
  v8 = v7;
  v11 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v79 = *(v12 - 8);
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v70 - v17;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v11);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (&v70 - v21);
  v93 = a1;
  swift_beginAccess();

  v82 = a2;
  v24 = sub_1D6B0ACE8(v23, 0);

  v25 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v26 = (*(v24 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  v29 = v8[7];

  v30 = v29;
  v31 = v86;
  sub_1D6FBDC08(v30, v24, v27, v28);
  v86 = v31;
  if (v31)
  {
  }

  else
  {
    v77 = v25;
    v75 = v13;
    v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = v32;
    v74 = v18;

    swift_beginAccess();
    v33 = v8[2];
    v34 = v8[3];

    v35 = sub_1D6E8DD40(v33, v34);
    v37 = v36;

    if (*(*(v85 + 24) + 16))
    {
      *v22 = v24;
      v38 = type metadata accessor for FormatSourceMapContext(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v38 - 8) + 56))(v22, 0, 1, v38);
      swift_beginAccess();

      sub_1D6D60828(v22, v35, v37);
      swift_endAccess();
    }

    v73 = v35;
    v39 = (*(v24 + v77) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v40 = *v39;
    v41 = v39[1];
    v42 = v8[8];

    v43 = v42;
    v44 = v86;
    sub_1D6FBAE48(v43, v24, v40, v41);
    if (v44)
    {
    }

    else
    {
      v46 = v45;
      v72 = v37;

      if (v46)
      {

        sub_1D6A45640(v24);
        v48 = v47;
        v49 = v24;
        v50 = v76;
        v51 = v75;
        v86 = v49;
        v77 = v46;

        if (v48)
        {
          swift_beginAccess();

          v52 = v72;

          sub_1D6D60C08(v48, v73, v52);
          swift_endAccess();
        }
      }

      else
      {
        v77 = 0;
        v86 = v24;
        v50 = v76;
        v51 = v75;
      }

      if (v8[29])
      {
        v53 = v8[33];
        v54 = v8[34];
        v56 = v8[31];
        v55 = v8[32];
        v57 = v8[30];
        v87 = v8[29];
        v88 = v57;
        v89 = v56;
        v90 = v55;
        v91 = v53;
        v92 = v54;

        sub_1D5DEA234(v53);

        sub_1D68687FC(v86, v74);
        v58 = v91;

        sub_1D5CBF568(v58);

        v59 = 0;
        v51 = v75;
      }

      else
      {
        v59 = 1;
      }

      v60 = sub_1D7259B8C();
      v61 = v74;
      (*(*(v60 - 8) + 56))(v74, v59, 1, v60);
      v75 = MEMORY[0x1E69D6FA0];
      v71 = MEMORY[0x1E69E6720];
      sub_1D6FFC87C(v61, v50, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      swift_unownedRetainStrong();
      v62 = v72;

      swift_unownedRetain();

      v63 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v79 = (v51 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
      v64 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
      v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
      v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      *(v67 + 16) = v73;
      *(v67 + 24) = v62;
      sub_1D6FFC410(v76, v67 + v63, &qword_1EDF3C120, v75);
      *(v67 + v79) = v8;
      v68 = v85;
      *(v67 + v64) = v86;
      *(v67 + v65) = v82;
      *(v67 + v66) = v68;
      *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v78;
      v80(0);
      v81();

      v69 = v74;
      sub_1D7259ACC();

      sub_1D6FFCA9C(v69, &qword_1EDF3C120, v75, v71, sub_1D5D27F7C);
    }
  }
}

void sub_1D6FEB124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v37 = a5;
  v38 = a6;
  v36 = a4;
  v10 = v8;
  v11 = v7;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v32 - v17;
  v45 = a1;
  swift_beginAccess();
  v19 = v11[2];
  v20 = v11[3];

  v35 = sub_1D6E8DD40(v19, v20);

  v21 = v11[8];
  if (v21)
  {
    v33 = a3;
    v34 = a7;
    v23 = v11[12];
    v22 = v11[13];
    v25 = v11[10];
    v24 = v11[11];
    v26 = v11[9];
    v39 = v21;
    v40 = v26;
    v41 = v25;
    v42 = v24;
    v43 = v23;
    v44 = v22;

    sub_1D5DEA234(v23);

    sub_1D68687FC(a2, v18);
    if (v10)
    {

      v27 = v43;

      sub_1D5CBF568(v27);

      return;
    }

    v29 = v43;
    v32 = v44;

    sub_1D5CBF568(v29);

    v28 = 0;
    a3 = v33;
  }

  else
  {
    v28 = 1;
  }

  v30 = sub_1D7259B8C();
  (*(*(v30 - 8) + 56))(v18, v28, 1, v30);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v31 = swift_allocObject();
  v31[2] = v11;
  v31[3] = a2;
  v31[4] = a3;
  v37(0);
  v38();

  sub_1D7259ACC();

  sub_1D6FFCA9C(v18, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
}

void sub_1D6FEB46C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v51 = a3;
  v52 = a4;
  v50 = a1;
  v49 = type metadata accessor for FormatOption(0);
  v7 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v8);
  v57 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 8))
  {
    v48 = v5;
    v10 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary + 24);
    swift_beginAccess();
    v47 = v4;
    v11 = *(v4 + 48);
    v12 = *(v11 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v45 = v10;
      v54[0] = MEMORY[0x1E69E7CC0];

      sub_1D5D24610(0, v12, 0);
      v13 = v54[0];
      v14 = *(v7 + 80);
      v44[1] = v11;
      v15 = v11 + ((v14 + 32) & ~v14);
      v46 = v7;
      v53 = *(v7 + 72);
      do
      {
        v16 = v57;
        sub_1D5BE4148(v15, v57, type metadata accessor for FormatOption);
        v17 = swift_allocBox();
        sub_1D5BDAB74(v16, v18, type metadata accessor for FormatOption);
        v54[0] = v13;
        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D5D24610((v19 > 1), v20 + 1, 1);
          v13 = v54[0];
        }

        *(v13 + 16) = v20 + 1;
        *(v13 + 8 * v20 + 32) = v17 | 0x7000000000000004;
        v15 += v53;
        --v12;
      }

      while (v12);

      v10 = v45;
      v7 = v46;
    }

    v21 = *(v10 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v46 = a2;
      v54[0] = MEMORY[0x1E69E7CC0];
      sub_1D5D24610(0, v21, 0);
      v22 = v54[0];
      v23 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v53 = *(v7 + 72);
      do
      {
        v24 = v57;
        sub_1D5BE4148(v23, v57, type metadata accessor for FormatOption);
        v25 = swift_allocBox();
        sub_1D5BDAB74(v24, v26, type metadata accessor for FormatOption);
        v54[0] = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D5D24610((v27 > 1), v28 + 1, 1);
          v22 = v54[0];
        }

        *(v22 + 16) = v28 + 1;
        *(v22 + 8 * v28 + 32) = v25 | 0x2000000000000000;
        v23 += v53;
        --v21;
      }

      while (v21);
    }

    v54[0] = v13;
    sub_1D6985C44(v22);
    sub_1D6B0C068(v54[0]);

    v29 = v47;
    swift_beginAccess();

    sub_1D6B0ACE8(v30, 0);

    swift_beginAccess();
    v31 = v29[2];
    v32 = v29[3];

    v33 = sub_1D6B0A84C(v31, v32);

    swift_beginAccess();
    v34 = v29[4];
    v35 = *(v34 + 16);

    if (v35)
    {
      v36 = 0;
      v37 = 32;
      v38 = v48;
      while (v36 < *(v34 + 16))
      {
        v39 = *(v34 + v37);
        v40 = *(v34 + v37 + 32);
        v55[1] = *(v34 + v37 + 16);
        v55[2] = v40;
        v55[0] = v39;
        v41 = *(v34 + v37 + 48);
        v42 = *(v34 + v37 + 64);
        v43 = *(v34 + v37 + 80);
        v56 = *(v34 + v37 + 96);
        v55[4] = v42;
        v55[5] = v43;
        v55[3] = v41;
        sub_1D5C5C4CC(v55, v54);
        v52(v50, v33, v51);
        if (v38)
        {

          sub_1D5C5C540(v55);
          return;
        }

        ++v36;
        sub_1D5C5C540(v55);
        v37 += 104;
        if (v35 == v36)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    swift_beginAccess();
    if (*(v4 + 56))
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }
}

void sub_1D6FEB9C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  switch(*(v2 + 32))
  {
    case 1:
      *&v69[0] = a1;
      v41 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v42 = v41();
      v43 = sub_1D5E02AFC(v42, v4);

      if (!v3)
      {
        v44 = swift_allocObject();
        *(v44 + 16) = v43;
        sub_1D5F3FE24(0);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1D7273AE0;
        *(v45 + 32) = v44;
        *(v45 + 40) = 0;
        *a2 = v45;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 1;
      }

      break;
    case 2:
      *&v69[0] = a1;
      v25 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v26 = v25();
      v27 = sub_1D5E02AFC(v26, v4);

      if (!v3)
      {
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        sub_1D5F3FE24(0);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D7273AE0;
        *(v29 + 32) = v28;
        *(v29 + 40) = 0;
        *a2 = v29;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 2;
      }

      break;
    case 3:
      *&v69[0] = a1;
      v30 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v31 = v30();
      v32 = sub_1D5E02AFC(v31, v4);

      if (!v3)
      {
        v33 = swift_allocObject();
        *(v33 + 16) = v32;
        sub_1D5F3FE24(0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1D7273AE0;
        *(v34 + 32) = v33;
        *(v34 + 40) = 0;
        *a2 = v34;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 3;
      }

      break;
    case 4:
      *&v69[0] = a1;
      v13 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v14 = v13();
      v15 = sub_1D5E02AFC(v14, v4);

      if (!v3)
      {
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        sub_1D5F3FE24(0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1D7273AE0;
        *(v17 + 32) = v16;
        *(v17 + 40) = 0;
        *a2 = v17;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 4;
      }

      break;
    case 5:
      *&v69[0] = a1;
      v46 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v47 = v46();
      v48 = sub_1D5E02AFC(v47, v4);

      if (!v3)
      {
        v49 = swift_allocObject();
        *(v49 + 16) = v48;
        sub_1D5F3FE24(0);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1D7273AE0;
        *(v50 + 32) = v49;
        *(v50 + 40) = 0;
        *a2 = v50;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 5;
      }

      break;
    case 6:
      *&v69[0] = a1;
      v51 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v52 = v51();
      v53 = sub_1D5E02AFC(v52, v4);
      if (v3)
      {
        goto LABEL_26;
      }

      v54 = v53;

      v55 = swift_allocObject();
      *(v55 + 16) = v54;
      sub_1D5F3FE24(0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1D7273AE0;
      *(v56 + 32) = v55;
      *(v56 + 40) = 0;
      *a2 = v56;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 6;
      break;
    case 7:
      *&v69[0] = a1;
      v35 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v36 = v35();
      v37 = sub_1D5E02AFC(v36, v4);
      if (v3)
      {
        goto LABEL_26;
      }

      v38 = v37;

      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      sub_1D5F3FE24(0);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1D7273AE0;
      *(v40 + 32) = v39;
      *(v40 + 40) = 0;
      *a2 = v40;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 7;
      break;
    case 8:
      *&v69[0] = a1;
      v63 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v64 = v63();
      v65 = sub_1D5E02AFC(v64, v4);
      if (v3)
      {
        goto LABEL_26;
      }

      v66 = v65;

      v67 = swift_allocObject();
      *(v67 + 16) = v66;
      sub_1D5F3FE24(0);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_1D7273AE0;
      *(v68 + 32) = v67;
      *(v68 + 40) = 0;
      *a2 = v68;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 8;
      break;
    case 9:
      *&v69[0] = a1;
      v19 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v20 = v19();
      v21 = sub_1D5E02AFC(v20, v4);
      if (v3)
      {
        goto LABEL_26;
      }

      v22 = v21;

      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      sub_1D5F3FE24(0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1D7273AE0;
      *(v24 + 32) = v23;
      *(v24 + 40) = 0;
      *a2 = v24;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 9;
      break;
    case 0xA:
      *&v69[0] = a1;
      v57 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v58 = v57();
      v59 = sub_1D5E02AFC(v58, v4);
      if (v3)
      {
        goto LABEL_26;
      }

      v60 = v59;

      v61 = swift_allocObject();
      *(v61 + 16) = v60;
      sub_1D5F3FE24(0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1D7273AE0;
      *(v62 + 32) = v61;
      *(v62 + 40) = 0;
      *a2 = v62;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 10;
      break;
    case 0xB:
      *&v69[0] = a1;
      v7 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext(0);
      v8 = v7();
      v9 = sub_1D5E02AFC(v8, v4);
      if (v3)
      {
LABEL_26:
      }

      else
      {
        v10 = v9;

        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        sub_1D5F3FE24(0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1D7273AE0;
        *(v12 + 32) = v11;
        *(v12 + 40) = 0;
        *a2 = v12;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 11;
      }

      break;
    case 0xC:
      v18 = *(v2 + 16);
      *a2 = *v2;
      *(a2 + 16) = v18;
      *(a2 + 32) = *(v2 + 32);
      break;
    default:
      sub_1D6FD8AD0(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), v69);
      if (!v3)
      {
        v6 = v69[1];
        *a2 = v69[0];
        *(a2 + 16) = v6;
        *(a2 + 32) = 0;
      }

      break;
  }
}

uint64_t sub_1D6FEC1EC(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), void *a4)
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = a2(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v34 = v8 + 32;
  v33[0] = v8 + 32;
  v33[1] = v10;
  v11 = sub_1D726449C();
  if (v11 >= v10)
  {
    if (v10 >= 2)
    {
      v15 = -1;
      v16 = 1;
      v17 = v34;
      do
      {
        v18 = *(v34 + 8 * v16);
        v19 = v15;
        v20 = v17;
        do
        {
          v21 = *v20;
          v22 = *(v18 + *a4);
          swift_beginAccess();
          v23 = *(v22 + 16);
          v24 = *(v22 + 24);
          v25 = *(v21 + *a4);
          swift_beginAccess();
          v26 = *(v25 + 24);
          v27 = v23 <= *(v25 + 16);
          if (v24 != v26)
          {
            v27 = v24 < v26;
          }

          if (!v27)
          {
            break;
          }

          v28 = *v20;
          v18 = v20[1];
          *v20 = v18;
          v20[1] = v28;
          --v20;
        }

        while (!__CFADD__(v19++, 1));
        ++v16;
        ++v17;
        --v15;
      }

      while (v16 != v10);
    }
  }

  else
  {
    v12 = v11;
    v13 = v10 >> 1;
    if (v10 >= 2)
    {
      a3(0);
      v14 = sub_1D726276C();
      *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v32[0] = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
    v32[1] = v13;
    sub_1D6FF78E8(v32, v31, v33, v12, a4);
    *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1D7263EAC();
}

uint64_t sub_1D6FEC3CC()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = v2 - 1;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = (v1 + 48 + 24 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v4 = v8 + 1;
        v9 = *(v7 - 1);
        v10 = *v7;
        v18[0] = *(v7 - 2);
        v18[1] = v9;
        v19 = v10;
        sub_1D66F4990(v18[0], v9, v10);
        sub_1D6B26C9C(v18, &v20);
        if (v21 <= 0xFDu)
        {
          break;
        }

        result = sub_1D6FFC25C(v20, v21);
        v7 += 24;
        ++v8;
        if (v2 == v4)
        {
          goto LABEL_16;
        }
      }

      v11 = v20;
      v12 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = v5;
      if ((result & 1) == 0)
      {
        result = sub_1D6990760(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1D6990760((v13 > 1), v14 + 1, 1, v6);
        v15 = v12;
        v6 = result;
      }

      else
      {
        v15 = v12;
      }

      *(v6 + 16) = v14 + 1;
      v16 = v6 + 16 * v14;
      *(v16 + 32) = v11;
      *(v16 + 40) = v15;
      v5 = v17;
    }

    while (v17 != v8);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:

  return v6;
}

uint64_t *sub_1D6FEC548@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v16[2] = a1[2];
  v16[3] = v7;
  v15[0] = v9;
  v15[1] = v8;
  v10 = a1[3];
  v15[2] = a1[2];
  v15[3] = v10;
  v11 = *(a2 + 296);
  v12 = *(a3 + 96);
  type metadata accessor for FormatSlot();
  swift_allocObject();
  sub_1D5E3FA60(v16, &v14);

  result = sub_1D724FAE8(v15, v11, v12);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void sub_1D6FEC600(char *a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  v4 = *(v3 + 16);
  if (v4)
  {
    v31 = *a1;
    v5 = v3 + 32;

    v6 = 0;
    while (1)
    {
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v7 = v5 + 24 * v6;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (v10 == 12)
      {
        sub_1D66F4990(v9, v8, 0xCu);
        sub_1D66F4990(v9, v8, 0xCu);

        sub_1D6F622E0(v22);
        v24 = sub_1D5D6021C(v23, a2);
        v25 = FormatSelector.matches(_:)(v24);

        if (!v25)
        {

          sub_1D5C17350();
          swift_allocError();
          *v26 = v9;
          *(v26 + 8) = v8;
          v27 = 12;
LABEL_25:
          *(v26 + 40) = v27;
          swift_willThrow();
          sub_1D62B7514(v9, v8, v10);
          return;
        }

        sub_1D62B7514(v9, v8, 0xCu);
        sub_1D62B7514(v9, v8, 0xCu);
      }

      else
      {
        if (v10 == 11)
        {
          v18 = *(v9 + 16);
          if (!v18)
          {
            goto LABEL_4;
          }

          sub_1D66F4990(*v7, *(v7 + 8), 0xBu);
          v19 = sub_1D5E4E308();

          v30 = MEMORY[0x1DA6FA1E0](v18, &type metadata for FormatGroupColumnSystemKind, v19);
          v20 = (v9 + 32);
          do
          {
            v21 = *v20++;
            sub_1D5FEB448(&v32, v21);
            --v18;
          }

          while (v18);
          sub_1D62B7514(v9, v8, 0xBu);
          if (sub_1D61855FC(v31, v30))
          {

            sub_1D5C17350();
            swift_allocError();
            *v26 = v31;
            *(v26 + 8) = v30;
            v27 = 11;
            goto LABEL_25;
          }

          v15 = v9;
          v16 = v8;
          v17 = 11;
        }

        else
        {
          if (v10 != 10)
          {
            goto LABEL_4;
          }

          v11 = *(v9 + 16);
          if (!v11)
          {
            goto LABEL_4;
          }

          sub_1D66F4990(*v7, *(v7 + 8), 0xAu);
          v12 = sub_1D5E4E308();

          v29 = MEMORY[0x1DA6FA1E0](v11, &type metadata for FormatGroupColumnSystemKind, v12);
          v13 = (v9 + 32);
          do
          {
            v14 = *v13++;
            sub_1D5FEB448(&v32, v14);
            --v11;
          }

          while (v11);
          sub_1D62B7514(v9, v8, 0xAu);
          if ((sub_1D61855FC(v31, v29) & 1) == 0)
          {

            sub_1D5C17350();
            swift_allocError();
            *v26 = v31;
            *(v26 + 8) = v29;
            v27 = 10;
            goto LABEL_25;
          }

          v15 = v9;
          v16 = v8;
          v17 = 10;
        }

        sub_1D62B7514(v15, v16, v17);

        v5 = v3 + 32;
      }

LABEL_4:
      if (++v6 == v4)
      {

        return;
      }
    }
  }
}

void sub_1D6FEC93C(unint64_t a1, uint64_t *a2, char *a3, uint64_t a4, __n128 a5)
{
  if (!__OFADD__(*(a2[10] + 16), 3))
  {
    sub_1D7259E0C();
    v27 = a1;
    swift_getKeyPath();
    v9 = a2[1];
    v20 = *a2;
    v23 = MEMORY[0x1E69E6158];
    v24 = MEMORY[0x1E69D74F0];
    v21 = v20;
    v22 = v9;
    sub_1D5EB5368(0);
    sub_1D6FF91E8();
    sub_1D6FFA0A0(&qword_1EDF3C168, sub_1D5EB544C, MEMORY[0x1E69D6F60]);
    swift_bridgeObjectRetain_n();
    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v21);
    v27 = a1;
    swift_getKeyPath();
    v23 = MEMORY[0x1E69E6158];
    v24 = MEMORY[0x1E69D74F0];
    v21 = v20;
    v22 = v9;
    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v21);
    v27 = a1;
    swift_getKeyPath();
    v23 = MEMORY[0x1E69E6158];
    v24 = MEMORY[0x1E69D74F0];
    v21 = v20;
    v22 = v9;
    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v21);
    v10 = a2[10];
    v11 = *(v10 + 16);

    if (!v11)
    {
LABEL_7:

      return;
    }

    v12 = 0;
    v13 = 32;
    while (v12 < *(v10 + 16))
    {
      v14 = *(v10 + v13);
      v15 = *(v10 + v13 + 32);
      v25[1] = *(v10 + v13 + 16);
      v25[2] = v15;
      v25[0] = v14;
      v16 = *(v10 + v13 + 48);
      v17 = *(v10 + v13 + 64);
      v18 = *(v10 + v13 + 80);
      v26 = *(v10 + v13 + 96);
      v25[4] = v17;
      v25[5] = v18;
      v25[3] = v16;
      sub_1D5C5C4CC(v25, &v21);
      sub_1D6FBF7BC(a1, a3, a4);
      if (v5)
      {

        sub_1D5C5C540(v25);
        return;
      }

      ++v12;
      sub_1D5C5C540(v25);
      v13 += 104;
      if (v11 == v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
}

double sub_1D6FECCD4@<D0>(uint64_t a1@<X8>)
{
  v4 = sub_1D725D52C();
  v24[7] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v24[6] = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, qword_1EDF3ECD8, type metadata accessor for GroupLayoutBindingContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  *&v26 = v24 - v9;
  v25 = type metadata accessor for InternalErrorViewModel(0);
  MEMORY[0x1EEE9AC00](v25, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_1D6FF9128(0, &qword_1EDF3BF58, MEMORY[0x1E69D73B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v24 - v17;
  v19 = *(type metadata accessor for FormatGroupLayoutFactory.Bound(0) + 24);
  *&v27 = v2;
  v24[8] = v19;
  sub_1D725A4DC();
  *v32 = v35;
  sub_1D725A07C();

  sub_1D725A05C();
  type metadata accessor for FormatLayoutAttributes();
  sub_1D5EB5218();
  sub_1D6FFA0A0(&qword_1EDF28608, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
  sub_1D725A47C();
  sub_1D6FED4C0(v18, v28);

  (*(v15 + 8))(v18, v14);
  *&v32[32] = v29;
  v33 = v30;
  *v32 = v28[0];
  *&v32[16] = v28[1];
  v34 = v31;
  v20 = v28[0];
  v21 = *(&v29 + 1);
  v22 = v30;

  v27 = *&v32[8];
  v26 = *&v32[24];
  sub_1D6FFC270(v32);
  *a1 = v20;
  *(a1 + 24) = v26;
  result = *&v27;
  *(a1 + 8) = v27;
  *(a1 + 40) = v21;
  *(a1 + 48) = v22;
  return result;
}

void sub_1D6FED4C0(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v61 = type metadata accessor for FormatItemNodeLayoutContext(0);
  MEMORY[0x1EEE9AC00](v61, v6);
  v60 = (v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6FF9128(0, &qword_1EDF3BF58, MEMORY[0x1E69D73B0]);
  v9 = v8;
  sub_1D725A48C();
  sub_1D6FEDA30(v65);
  v11 = v10;
  v13 = v12;

  sub_1D725A48C();
  v14 = v65[2];
  v15 = v65[3];
  v16 = v65[4];
  v17 = v65[5];

  v18 = v11 >> 62;
  if (v11 >> 62)
  {
    goto LABEL_21;
  }

  v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    while (1)
    {
      v66 = MEMORY[0x1E69E7CC0];
      sub_1D5BDF6B0(0, v19 & ~(v19 >> 63), 0);
      if (v19 < 0)
      {
        break;
      }

      v54 = v19;
      v64 = v66;
      v50 = a2;
      v48[2] = a1;
      v48[1] = v9;
      v48[0] = v13;
      v51 = v11 & 0xFFFFFFFFFFFFFF8;
      if (v18)
      {
        v20 = sub_1D7263BFC();
      }

      else
      {
        v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = v11;
      v58 = v11 & 0xC000000000000001;
      v13 = *v3;
      v21 = type metadata accessor for FormatGroupLayoutFactory.Bound(0);
      v18 = *(v3 + v21[9]);
      v22 = (v3 + v21[15]);
      v23 = *v22;
      v24 = v22[1];
      a1 = v22[3];
      v56 = v22[2];
      v57 = v23;
      v25 = v21[6];
      v49 = v3;
      v11 = v3 + v25;
      v9 = 0;
      v55 = *(v3 + v25 + *(type metadata accessor for GroupLayoutContext(0) + 28));
      v59 = v20 & ~(v20 >> 63);
      v53 = v13;
      v52 = v18;
      while (v59 != v9)
      {
        if (v58)
        {
          v26 = MEMORY[0x1DA6FB460](v9, v62);
        }

        else
        {
          if (v9 >= *(v51 + 16))
          {
            goto LABEL_20;
          }

          v26 = *(v62 + 8 * v9 + 32);
        }

        v28 = v60;
        v27 = v61;
        sub_1D5BE4148(v26 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_feedItem, v60 + *(v61 + 28), type metadata accessor for FeedItem);
        v63 = v26;
        v29 = *(v26 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
        swift_beginAccess();
        *v28 = v13;
        v28[1] = v18;
        v30 = *(v29 + 16);
        v31 = *(v29 + 32);
        v32 = v56;
        v28[2] = v57;
        v28[3] = v24;
        v28[4] = v32;
        v28[5] = a1;
        v33 = (v28 + *(v27 + 32));
        *v33 = v30;
        v33[1] = v31;
        v34 = (v28 + *(v27 + 36));
        *v34 = v14;
        v34[1] = v15;
        v34[2] = v16;
        v34[3] = v17;
        sub_1D6CCCC8C(0);
        v36 = v35;
        v37 = a1;
        a1 = swift_allocBox();
        v11 = v38;
        v3 = *(v36 + 48);
        a2 = *(v36 + 64);
        sub_1D5BDAB74(v28, v38, type metadata accessor for FormatItemNodeLayoutContext);
        *(v3 + v11) = v63;
        if (__OFADD__(v9, v55))
        {
          goto LABEL_19;
        }

        *(v11 + a2) = v9 + v55;
        v3 = v64;
        v66 = v64;
        a2 = v64[2];
        v39 = v64[3];

        v11 = v37;

        if (a2 >= v39 >> 1)
        {
          sub_1D5BDF6B0((v39 > 1), a2 + 1, 1);
          v3 = v66;
        }

        ++v9;
        v3[2] = a2 + 1;
        v64 = v3;
        v3[a2 + 4] = a1 | 0x7000000000000000;
        v13 = v53;
        v18 = v52;
        a1 = v37;
        if (v54 == v9)
        {

          a2 = v50;
          v3 = v49;
          v13 = v48[0];
          v42 = v64;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v19 = sub_1D7263BFC();
      if (!v19)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    v42 = MEMORY[0x1E69E7CC0];
LABEL_23:
    MEMORY[0x1EEE9AC00](v40, v41);
    v48[-6] = v3;
    v48[-5] = v14;
    v48[-4] = v15;
    v48[-3] = v16;
    v48[-2] = v17;
    v43 = sub_1D5FBC900(sub_1D6FFC2C4, &v48[-8], v13);

    v67 = 0;
    v66 = v42;
    sub_1D6FFC8F0(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, MEMORY[0x1E69E62F8]);
    sub_1D5C184C4();
    sub_1D5BDEFF8();
    v44 = sub_1D72623BC();

    v45 = v67;
    v46 = sub_1D725A49C();
    v47 = *(*(v3 + *(type metadata accessor for FormatGroupLayoutFactory.Bound(0) + 40)) + 16);
    *a2 = v45;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    *(a2 + 40) = v44;
    *(a2 + 48) = v43;
    *(a2 + 56) = v46;
    *(a2 + 64) = v47;
    *(a2 + 72) = 0;
  }
}

void sub_1D6FEDA30(uint64_t a1)
{
  v2 = v1;
  v265 = 0;
  v4 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF43998, MEMORY[0x1E69D86D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v263 = &v241 - v7;
  sub_1D5D27F7C(0, &unk_1EDF439A0, MEMORY[0x1E69D8558], v4);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v262 = &v241 - v10;
  v260 = sub_1D725895C();
  v11 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260, v12);
  v259 = &v241 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v245 = &v241 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v4);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v241 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v241 - v23;
  v242 = type metadata accessor for FormatItemNodeData(0);
  MEMORY[0x1EEE9AC00](v242, v25);
  v244 = &v241 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v241 - v29;
  v31 = MEMORY[0x1E69E7CC0];
  v292 = MEMORY[0x1E69E7CC0];
  v293 = MEMORY[0x1E69E7CC0];
  v270 = type metadata accessor for FormatGroupLayoutFactory.Bound(0);
  sub_1D7259E7C();
  v34 = *(a1 + 112);
  v273 = *(v34 + 16);
  if (v273)
  {
    v35 = v32;
    v36 = v33;
    v37 = 0;
    v271 = v2;
    v272 = v34 + 32;
    v258 = (v11 + 8);
    v275 = v31;
    v243 = v31;
    v264 = v20;
    v266 = v24;
    v261 = v30;
    v268 = v34;
    v38 = v24;
    v39 = v34;
    while (1)
    {
      if (v37 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_80;
      }

      v40 = *(v272 + 8 * v37);
      v41 = (v40 >> 59) & 0x1E | (v40 >> 2) & 1;
      if (v41 == 6)
      {
        v274 = v37;
        v57 = *((v40 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v58 = *(v271 + *(v270 + 40));
        v282[0] = v40;
        v59 = FormatLayoutValue.identifier.getter();
        v61 = v60;
        swift_beginAccess();
        v62 = *(v58 + 40);
        v63 = *(v62 + 16);
        v269 = v40 & 0xFFFFFFFFFFFFFFBLL;
        if (v63)
        {

          v64 = sub_1D5B69D90(v59, v61);
          v65 = v57;
          if (v66)
          {
            v67 = (*(v62 + 56) + 24 * v64);
            v68 = *v67;
            v69 = v67[1];
            v70 = v67[2];
          }

          else
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
          }
        }

        else
        {

          v69 = 0;
          v70 = 0;
          v65 = v57;
          v68 = 0;
        }

        swift_endAccess();

        v95 = *(v65 + 2);
        v97 = *(v95 + 48);
        v96 = *(v95 + 56);
        swift_beginAccess();
        v98 = *(v58 + 24);
        if (*(v98 + 16))
        {

          v99 = sub_1D5B69D90(v97, v96);
          if (v100)
          {
            v101 = v99;
            v267 = v65;
            v102 = v70;
            v103 = v69;
            v104 = v68;
            v105 = *(v98 + 56);
            v106 = type metadata accessor for FormatNodeStateData.Data(0);
            v107 = *(v106 - 8);
            v31 = ((v106 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
            v108 = v105 + *(v107 + 72) * v101;
            v68 = v104;
            v69 = v103;
            v70 = v102;
            v65 = v267;
            v109 = v264;
            sub_1D5BE4148(v108, v264, type metadata accessor for FormatNodeStateData.Data);
            (*(v107 + 56))(v109, 0, 1, v106);
          }

          else
          {
            v106 = type metadata accessor for FormatNodeStateData.Data(0);
            v31 = ((v106 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
            v109 = v264;
            (*(*(v106 - 8) + 56))(v264, 1, 1, v106);
          }
        }

        else
        {
          v106 = type metadata accessor for FormatNodeStateData.Data(0);
          v31 = ((v106 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
          v109 = v264;
          (*(*(v106 - 8) + 56))(v264, 1, 1, v106);
        }

        swift_endAccess();

        type metadata accessor for FormatNodeStateData.Data(0);
        if ((*(*(v106 - 8) + 48))(v109, 1, v106) == 1)
        {

          sub_1D5EBC358(v68, v69, v70);
          sub_1D6FFCA9C(v109, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 5)
          {
            v255 = v70;
            v256 = v69;
            v257 = v68;
            v110 = v109[5];
            v290 = v109[4];
            v291[0] = v110;
            *(v291 + 9) = *(v109 + 89);
            v111 = v109[3];
            v288 = v109[2];
            v289 = v111;
            v112 = v109[1];
            v286 = *v109;
            v287 = v112;

            v115 = sub_1D6FEF804(v113, v114, 0.0, 0.0, v35, v36);
            v246 = v116;

            v117 = *(v65 + 3);
            v118 = *(v65 + 4);
            v252 = *(v65 + 5);
            LODWORD(v251) = v65[48];
            v119 = MEMORY[0x1E69E6720];
            sub_1D6FFC87C(&v65[OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_pinTrait], v262, &unk_1EDF439A0, MEMORY[0x1E69D8558], MEMORY[0x1E69E6720], sub_1D5D27F7C);
            sub_1D6FFC87C(&v65[OBJC_IVAR____TtC8NewsFeed39FormatSupplementaryNodeLayoutAttributes_rubberbandTrait], v263, &qword_1EDF43998, MEMORY[0x1E69D86D0], v119, sub_1D5D27F7C);
            v120 = *(v65 + 2);
            v121 = *(v120 + 16);
            v278 = *(v120 + 32);
            v279 = v121;
            v122 = *(v120 + 48);
            v275 = *(v120 + 56);
            v276 = v122;
            v123 = *(v120 + 80);
            v249 = *(v120 + 88);
            v250 = v123;
            v124 = *(v120 + 104);
            *&v248 = *(v120 + 96);
            v280 = v124;
            v125 = *(v115 + 16);
            v267 = v65;
            v253 = v118;
            v254 = v117;
            *&v247 = v115;
            if (v125)
            {
              v282[0] = MEMORY[0x1E69E7CC0];

              sub_1D6998434(0, v125, 0);
              v126 = v282[0];
              v127 = *(v282[0] + 16);
              v128 = (v115 + 40);
              do
              {
                v130 = *v128;
                v128 += 2;
                v129 = v130;
                v282[0] = v126;
                v131 = *(v126 + 24);

                if (v127 >= v131 >> 1)
                {
                  sub_1D6998434((v131 > 1), v127 + 1, 1);
                  v126 = v282[0];
                }

                *(v126 + 16) = v127 + 1;
                *(v126 + 8 * v127++ + 32) = v129;
                --v125;
              }

              while (v125);
              v65 = v267;
              v132 = v126;
              v120 = *(v267 + 2);
              v133 = MEMORY[0x1E69E7CC0];
            }

            else
            {

              v133 = MEMORY[0x1E69E7CC0];
              v132 = MEMORY[0x1E69E7CC0];
            }

            v136 = *(v120 + 120);

            v138 = v265;
            sub_1D6FB9AE4(v137);
            v140 = v139;
            swift_bridgeObjectRelease_n();

            v282[0] = v136;
            sub_1D6986BE4(v140);
            sub_1D5D27F7C(0, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E62F8]);
            sub_1D6FFC2E8(&unk_1EDF1AF98, MEMORY[0x1E69E6328]);
            v141 = sub_1D72623CC();

            MEMORY[0x1EEE9AC00](v142, v143);
            *(&v241 - 2) = v271;
            v144 = sub_1D5FBC744(sub_1D6FFC35C, (&v241 - 4), v141);
            v265 = v138;

            LOBYTE(v138) = *(*(v65 + 2) + 128);
            sub_1D6FFC8F0(0, qword_1EDF23428, &type metadata for FormatSupplementary, type metadata accessor for FormatDataLayoutAttributes);
            v145 = swift_allocObject();
            v146 = v278;
            *(v145 + 16) = v279;
            *(v145 + 32) = v146;
            v147 = v275;
            *(v145 + 48) = v276;
            *(v145 + 56) = v147;
            v148 = v249;
            *(v145 + 64) = v250;
            *(v145 + 72) = v148;
            v149 = v280;
            *(v145 + 80) = v248;
            *(v145 + 88) = v149;
            v150 = v291[0];
            *(v145 + 176) = v290;
            *(v145 + 192) = v150;
            *(v145 + 201) = *(v291 + 9);
            v151 = v287;
            *(v145 + 112) = v286;
            *(v145 + 128) = v151;
            v152 = v289;
            *(v145 + 144) = v288;
            *(v145 + 160) = v152;
            *(v145 + 217) = v138;
            *(v145 + 240) = v35;
            *(v145 + 248) = v36;
            *(v145 + 96) = v132;
            *(v145 + 104) = v144;
            v250 = v145;
            v285 = v133;
            v153 = *(v132 + 16);
            if (v153)
            {
              v154 = v132;
              sub_1D62E340C(&v286, v282);
              v276 = type metadata accessor for FormatDataLayoutViewModel();

              v155 = 32;
              v156 = v133;
              v277 = v132;
              do
              {
                v157 = *(v154 + v155);
                v158 = swift_allocObject();
                *(v158 + 16) = v157;
                v281 = v157;
                swift_retain_n();
                sub_1D6EE7974(v282, v159);
                v160 = v282[1];
                v161 = v284;
                *(v158 + 24) = v282[0];
                *(v158 + 32) = v160;
                *(v158 + 40) = v283;
                *(v158 + 56) = v161;

                MEMORY[0x1DA6F9CE0](v162);
                if (*((v285 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1D726272C();
                }

                sub_1D726278C();
                v275 = v285;
                v163 = *(v158 + 32);
                v280 = *(v158 + 24);
                v164 = *(v158 + 40);
                *&v279 = *(v158 + 48);
                LODWORD(v278) = *(v158 + 56);

                sub_1D5F33D5C(v164);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v156 = sub_1D698F980(0, *(v156 + 2) + 1, 1, v156);
                }

                v166 = *(v156 + 2);
                v165 = *(v156 + 3);
                if (v166 >= v165 >> 1)
                {
                  v156 = sub_1D698F980((v165 > 1), v166 + 1, 1, v156);
                }

                *(v156 + 2) = v166 + 1;
                v167 = &v156[40 * v166];
                *(v167 + 4) = v280;
                *(v167 + 5) = v163;
                v168 = v279;
                *(v167 + 6) = v164;
                *(v167 + 7) = v168;
                v167[64] = v278;
                v155 += 8;
                --v153;
                v154 = v277;
              }

              while (v153);

              v169 = v253;
              v133 = v275;
            }

            else
            {
              sub_1D62E340C(&v286, v282);
              v156 = v133;
              v169 = v253;
            }

            v170 = v250;
            *(v250 + 224) = v133;
            type metadata accessor for FormatDataLayoutViewKey();
            v171 = swift_allocObject();
            *(v171 + 16) = v156;
            *(v170 + 232) = v171;
            type metadata accessor for FormatSupplementaryNodeDataLayoutAttributes(0);
            v172 = swift_allocObject();
            *(v172 + 32) = v254;
            *(v172 + 40) = v169;
            *(v172 + 48) = v252;
            *(v172 + 56) = v251;
            v280 = MEMORY[0x1E69D8558];
            v173 = MEMORY[0x1E69E6720];
            v174 = v262;
            sub_1D6FFC87C(v262, v172 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_pinTrait, &unk_1EDF439A0, MEMORY[0x1E69D8558], MEMORY[0x1E69E6720], sub_1D5D27F7C);
            v175 = MEMORY[0x1E69D86D0];
            v31 = v263;
            sub_1D6FFC87C(v263, v172 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_rubberbandTrait, &qword_1EDF43998, MEMORY[0x1E69D86D0], v173, sub_1D5D27F7C);
            *(v172 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes) = v170;

            v176 = v259;
            sub_1D725894C();
            v177 = sub_1D725893C();
            v179 = v178;
            (*v258)(v176, v260);
            *(v172 + 16) = v177;
            *(v172 + 24) = v179;
            v180 = (v172 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_sourceItemData);
            v181 = v256;
            *v180 = v257;
            v180[1] = v181;
            v180[2] = v255;
            v182 = sub_1D6EE5A3C(*(v170 + 96));
            v184 = v183;
            sub_1D6FFCA9C(v31, &qword_1EDF43998, v175, v173, sub_1D5D27F7C);
            sub_1D6FFCA9C(v174, &unk_1EDF439A0, v280, v173, sub_1D5D27F7C);

            v185 = (v172 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_reuseIdentifier);
            *v185 = v182;
            v185[1] = v184;

            MEMORY[0x1DA6F9CE0](v186);
            if (*((v292 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v292 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v31 = *((v292 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D726272C();
            }

            sub_1D726278C();

            sub_1D62E2300(&v286);
            v275 = v292;

            v38 = v266;
            v39 = v268;
            v37 = v274;
            goto LABEL_5;
          }

          sub_1D5EBC358(v68, v69, v70);
          sub_1D6FFC9A0(v109, type metadata accessor for FormatNodeStateData.Data);
        }

        v37 = v274;
        v38 = v266;
        v39 = v268;
      }

      else if (!v41)
      {
        v274 = v37;
        v42 = *(v40 + 16);
        v43 = *(v271 + *(v270 + 40));
        v44 = *(v42 + 2);
        v46 = *(v44 + 48);
        v45 = *(v44 + 56);
        swift_beginAccess();
        v47 = *(v43 + 24);
        if (*(v47 + 16))
        {

          v48 = v42;

          v49 = sub_1D5B69D90(v46, v45);
          if (v50)
          {
            v51 = v49;
            v52 = v38;
            v53 = *(v47 + 56);
            v54 = type metadata accessor for FormatNodeStateData.Data(0);
            v55 = *(v54 - 8);
            v31 = ((v54 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
            v56 = v53 + *(v55 + 72) * v51;
            v38 = v52;
            v39 = v268;
            sub_1D5BE4148(v56, v38, type metadata accessor for FormatNodeStateData.Data);
            (*(v55 + 56))(v38, 0, 1, v54);
          }

          else
          {
            v54 = type metadata accessor for FormatNodeStateData.Data(0);
            v31 = ((v54 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
            (*(*(v54 - 8) + 56))(v38, 1, 1, v54);
          }
        }

        else
        {
          v54 = type metadata accessor for FormatNodeStateData.Data(0);
          v71 = v42;
          v31 = ((v54 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
          (*(*(v54 - 8) + 56))(v38, 1, 1, v54);

          v48 = v71;
        }

        swift_endAccess();

        type metadata accessor for FormatNodeStateData.Data(0);
        if ((*(*(v54 - 8) + 48))(v38, 1, v54) == 1)
        {

          sub_1D6FFCA9C(v38, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        }

        else
        {
          v31 = v48;
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v72 = v261;
            sub_1D5BDAB74(v38, v261, type metadata accessor for FormatItemNodeData);
            v73 = *(v31 + 2);
            v74 = *(v73 + 72);
            if (v74)
            {
              v257 = v40;
              *&v278 = *(v73 + 64);
              *&v279 = v74;

              v76 = v271;
              v78 = sub_1D6FEF804(v75, v77, 0.0, 0.0, v35, v36);
              v246 = v79;

              v80 = *(v31 + 3);
              v269 = *(v31 + 4);
              v81 = *(v31 + 6);
              v253 = *(v31 + 5);
              v82 = *(v72 + *(v242 + 36));
              LODWORD(v250) = *(v76 + *(v270 + 52));
              sub_1D5BE4148(v72, v245, type metadata accessor for FeedItem);
              v83 = *(v31 + 8);
              v255 = *(v31 + 7);
              v256 = v83;
              v84 = *(v31 + 2);
              v85 = *(v84 + 16);
              v247 = *(v84 + 32);
              v248 = v85;
              v86 = *(v84 + 80);
              v280 = *(v84 + 88);
              v87 = *(v84 + 104);
              v276 = *(v84 + 96);
              v277 = v86;
              v243 = v78;
              v88 = *(v78 + 16);
              v267 = v31;
              v254 = v80;
              v251 = v82;
              v252 = v81;
              v249 = v87;
              if (v88)
              {

                sub_1D5EB1500(v83);
                *&v286 = MEMORY[0x1E69E7CC0];

                sub_1D6998434(0, v88, 0);
                v89 = v286;
                v90 = *(v286 + 16);
                v91 = v243 + 5;
                do
                {
                  v93 = *v91;
                  v91 += 2;
                  v92 = v93;
                  *&v286 = v89;
                  v94 = *(v89 + 24);

                  if (v90 >= v94 >> 1)
                  {
                    sub_1D6998434((v94 > 1), v90 + 1, 1);
                    v89 = v286;
                  }

                  *(v89 + 16) = v90 + 1;
                  *(v89 + 8 * v90++ + 32) = v92;
                  --v88;
                }

                while (v88);
                v134 = MEMORY[0x1E69E7CC0];
                v31 = v267;
                v135 = v89;
              }

              else
              {

                sub_1D5EB1500(v83);

                v134 = MEMORY[0x1E69E7CC0];
                v135 = MEMORY[0x1E69E7CC0];
              }

              v187 = *(*(v31 + 2) + 120);

              v189 = v31;
              v190 = v265;
              sub_1D6FB9AE4(v188);
              v192 = v191;
              swift_bridgeObjectRelease_n();

              *&v286 = v187;
              sub_1D6986BE4(v192);
              sub_1D5D27F7C(0, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E62F8]);
              sub_1D6FFC2E8(&unk_1EDF1AF98, MEMORY[0x1E69E6328]);
              v193 = sub_1D72623CC();

              MEMORY[0x1EEE9AC00](v194, v195);
              *(&v241 - 2) = v271;
              v196 = sub_1D5FBC744(sub_1D6FFCC34, (&v241 - 4), v193);
              v265 = v190;

              v197 = v261;
              v198 = v244;
              sub_1D5BE4148(v261, v244, type metadata accessor for FormatItemNodeData);
              LOBYTE(v190) = *(*(v189 + 2) + 128);
              sub_1D5D27F7C(0, &qword_1EDF23420, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatDataLayoutAttributes);
              v199 = swift_allocObject();
              v200 = v247;
              *(v199 + 16) = v248;
              *(v199 + 32) = v200;
              v201 = v279;
              *(v199 + 48) = v278;
              *(v199 + 56) = v201;
              v202 = v280;
              *(v199 + 64) = v277;
              *(v199 + 72) = v202;
              v203 = v249;
              *(v199 + 80) = v276;
              *(v199 + 88) = v203;
              *(v199 + 104) = v196;
              sub_1D5BE4148(v198, v199 + *(*v199 + 136), type metadata accessor for FormatItemNodeData);
              *(v199 + *(*v199 + 144)) = v190;
              v204 = (v199 + *(*v199 + 168));
              *v204 = v35;
              v204[1] = v36;
              v249 = v199;
              *(v199 + 96) = v135;
              v282[0] = v134;
              v205 = *(v135 + 16);
              if (v205)
              {
                v206 = (v135 + 32);
                v277 = type metadata accessor for FormatDataLayoutViewModel();
                *&v248 = v135;

                v207 = v134;
                do
                {
                  v208 = *v206;
                  v280 = v206 + 1;
                  v209 = swift_allocObject();
                  *(v209 + 16) = v208;
                  v285 = v208;
                  swift_retain_n();
                  sub_1D6EE7974(&v286, v210);
                  v211 = *(&v286 + 1);
                  v212 = v288;
                  *(v209 + 24) = v286;
                  *(v209 + 32) = v211;
                  *(v209 + 40) = v287;
                  *(v209 + 56) = v212;

                  MEMORY[0x1DA6F9CE0](v213);
                  if (*((v282[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v282[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1D726272C();
                  }

                  sub_1D726278C();
                  v276 = v282[0];
                  v214 = *(v209 + 32);
                  *&v279 = *(v209 + 24);
                  v216 = *(v209 + 40);
                  v215 = *(v209 + 48);
                  LODWORD(v278) = *(v209 + 56);

                  sub_1D5F33D5C(v216);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v207 = sub_1D698F980(0, *(v207 + 2) + 1, 1, v207);
                  }

                  v218 = *(v207 + 2);
                  v217 = *(v207 + 3);
                  if (v218 >= v217 >> 1)
                  {
                    v207 = sub_1D698F980((v217 > 1), v218 + 1, 1, v207);
                  }

                  *(v207 + 2) = v218 + 1;
                  v219 = &v207[40 * v218];
                  *(v219 + 4) = v279;
                  *(v219 + 5) = v214;
                  *(v219 + 6) = v216;
                  *(v219 + 7) = v215;
                  v219[64] = v278;
                  --v205;
                  v206 = v280;
                }

                while (v205);
                v197 = v261;
                v220 = v254;
                v221 = v269;
                v223 = v251;
                v222 = v252;
                v224 = v276;
              }

              else
              {

                v207 = v134;
                v224 = v134;
                v220 = v254;
                v221 = v269;
                v223 = v251;
                v222 = v252;
              }

              sub_1D6FFC9A0(v244, type metadata accessor for FormatItemNodeData);

              v225 = v249;
              *(v249 + *(*v249 + 152)) = v224;
              type metadata accessor for FormatDataLayoutViewKey();
              v226 = swift_allocObject();
              *(v226 + 16) = v207;
              *(v225 + *(*v225 + 160)) = v226;
              type metadata accessor for FormatItemNodeDataLayoutAttributes(0);
              v227 = swift_allocObject();
              *(v227 + 32) = v220;
              *(v227 + 40) = v221;
              *(v227 + 48) = v253;
              *(v227 + 56) = v222;
              *(v227 + 64) = v223;
              *(v227 + 72) = v250;
              v228 = v245;
              sub_1D5BE4148(v245, v227 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_feedItem, type metadata accessor for FeedItem);
              v229 = v256;
              *(v227 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_zIndex) = v255;
              *(v227 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_visibility) = v229;
              *(v227 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) = v225;

              v31 = v259;
              sub_1D725894C();
              v230 = sub_1D725893C();
              v232 = v231;
              (*v258)(v31, v260);
              *(v227 + 16) = v230;
              *(v227 + 24) = v232;
              v233 = sub_1D6EE5A3C(v225[12]);
              v235 = v234;
              sub_1D6FFC9A0(v228, type metadata accessor for FeedItem);

              v236 = (v227 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_reuseIdentifier);
              *v236 = v233;
              v236[1] = v235;

              MEMORY[0x1DA6F9CE0](v237);
              v238 = v266;
              if (*((v293 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v293 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v31 = *((v293 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1D726272C();
              }

              sub_1D726278C();

              sub_1D6FFC9A0(v197, type metadata accessor for FormatItemNodeData);
              v243 = v293;

              v37 = v274;
              v38 = v238;
              v39 = v268;
              goto LABEL_5;
            }

            sub_1D6FFC9A0(v72, type metadata accessor for FormatItemNodeData);
          }

          else
          {

            sub_1D6FFC9A0(v38, type metadata accessor for FormatNodeStateData.Data);
          }
        }

        v37 = v274;
      }

LABEL_5:
      if (++v37 == v273)
      {
        goto LABEL_77;
      }
    }
  }

  v275 = v31;
  v243 = v31;
LABEL_77:

  *&v286 = sub_1D680E8CC(v239);
  v31 = v265;
  sub_1D6FEC1EC(&v286, sub_1D630BBB4, type metadata accessor for FormatItemNodeDataLayoutAttributes, &OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
  if (v31)
  {
LABEL_80:

    __break(1u);
  }

  else
  {

    *&v286 = sub_1D680E8A0(v240);
    sub_1D6FEC1EC(&v286, sub_1D630BBB4, type metadata accessor for FormatSupplementaryNodeDataLayoutAttributes, &OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
  }
}

uint64_t sub_1D6FEF6AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v13 = *a1;
  v14 = *a2;
  v15 = type metadata accessor for FormatGroupLayoutFactory.Bound(0);
  v16 = *(a2 + *(v15 + 36));
  v17 = (a2 + *(v15 + 60));
  v19 = *v17;
  v18 = v17[1];
  v21 = v17[2];
  v20 = v17[3];
  v22 = *(v13 + OBJC_IVAR____TtC8NewsFeed43FormatSupplementaryNodeDataLayoutAttributes_dataLayoutAttributes);
  swift_beginAccess();
  v23 = *(v22 + 16);
  v24 = *(v22 + 32);
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v19;
  *(a3 + 24) = v18;
  *(a3 + 32) = v21;
  *(a3 + 40) = v20;
  *(a3 + 48) = v23;
  *(a3 + 64) = v24;
  *(a3 + 80) = a4;
  *(a3 + 88) = a5;
  *(a3 + 96) = a6;
  *(a3 + 104) = a7;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = v13;
  v25 = type metadata accessor for FeedItemSupplementaryAttributes(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v25 - 8) + 56))(a3, 0, 1, v25);
}

uint64_t sub_1D6FEF804(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = a1;
  v12 = 0;
  v13 = 0;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v16 = v12;
    do
    {
      if (v14 == v16)
      {
        MEMORY[0x1EEE9AC00](a1, a2);
        v97[2] = v6;
        *&v97[3] = a3;
        *&v97[4] = a4;
        *&v97[5] = a5;
        *&v97[6] = a6;
        v97[7] = v15;
        v36 = sub_1D5FBC5EC(sub_1D6FFC490, v97, v9);

        type metadata accessor for FormatGroupLayoutFactory.Bound(0);
        v37 = sub_1D61881BC();
        v38 = *(v36 + 2);
        if (v37)
        {
          if (v38)
          {
            v39 = 0;
            v40 = v36 + 32;
            v41 = MEMORY[0x1E69E7CC0];
            do
            {
              if (v39 >= *(v36 + 2))
              {
                goto LABEL_110;
              }

              v42 = *v40;
              v43 = *(*v40 + 16);
              v44 = *(v41 + 2);
              v45 = v44 + v43;
              if (__OFADD__(v44, v43))
              {
                goto LABEL_112;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (isUniquelyReferenced_nonNull_native && v45 <= *(v41 + 3) >> 1)
              {
                if (!*(v42 + 16))
                {
                  goto LABEL_21;
                }
              }

              else
              {
                if (v44 <= v45)
                {
                  v47 = v44 + v43;
                }

                else
                {
                  v47 = v44;
                }

                v41 = sub_1D6991238(isUniquelyReferenced_nonNull_native, v47, 1, v41);
                if (!*(v42 + 16))
                {
LABEL_21:

                  if (v43)
                  {
                    goto LABEL_114;
                  }

                  goto LABEL_22;
                }
              }

              if ((*(v41 + 3) >> 1) - *(v41 + 2) < v43)
              {
                goto LABEL_122;
              }

              swift_arrayInitWithCopy();

              if (v43)
              {
                v48 = *(v41 + 2);
                v27 = __OFADD__(v48, v43);
                v49 = v48 + v43;
                if (v27)
                {
                  goto LABEL_126;
                }

                *(v41 + 2) = v49;
              }

LABEL_22:
              ++v39;
              v40 += 16;
            }

            while (v38 != v39);
          }

          v100 = sub_1D72626AC();

          if (v38)
          {
            v61 = 0;
            v62 = v36 + 40;
            v63 = MEMORY[0x1E69E7CC0];
            do
            {
              if (v61 >= *(v36 + 2))
              {
                goto LABEL_116;
              }

              v64 = *v62;
              v65 = *(*v62 + 16);
              v66 = *(v63 + 2);
              v67 = v66 + v65;
              if (__OFADD__(v66, v65))
              {
                goto LABEL_117;
              }

              v68 = swift_isUniquelyReferenced_nonNull_native();
              if (v68 && v67 <= *(v63 + 3) >> 1)
              {
                if (!*(v64 + 16))
                {
                  goto LABEL_57;
                }
              }

              else
              {
                if (v66 <= v67)
                {
                  v69 = v66 + v65;
                }

                else
                {
                  v69 = v66;
                }

                v63 = sub_1D6991114(v68, v69, 1, v63);
                if (!*(v64 + 16))
                {
LABEL_57:

                  if (v65)
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_58;
                }
              }

              if ((*(v63 + 3) >> 1) - *(v63 + 2) < v65)
              {
                goto LABEL_124;
              }

              swift_arrayInitWithCopy();

              if (v65)
              {
                v70 = *(v63 + 2);
                v27 = __OFADD__(v70, v65);
                v71 = v70 + v65;
                if (v27)
                {
                  goto LABEL_128;
                }

                *(v63 + 2) = v71;
              }

LABEL_58:
              ++v61;
              v62 += 16;
            }

            while (v38 != v61);
          }

LABEL_106:

          sub_1D72626AC();

          return v100;
        }

        if (v38)
        {
          v50 = 0;
          v51 = v36 + 32;
          v52 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            if (v50 >= *(v36 + 2))
            {
              goto LABEL_111;
            }

            v53 = *v51;
            v54 = *(*v51 + 16);
            v55 = *(v52 + 2);
            v56 = v55 + v54;
            if (__OFADD__(v55, v54))
            {
              goto LABEL_113;
            }

            v57 = swift_isUniquelyReferenced_nonNull_native();
            if (v57 && v56 <= *(v52 + 3) >> 1)
            {
              if (!*(v53 + 16))
              {
                goto LABEL_39;
              }
            }

            else
            {
              if (v55 <= v56)
              {
                v58 = v55 + v54;
              }

              else
              {
                v58 = v55;
              }

              v52 = sub_1D6991238(v57, v58, 1, v52);
              if (!*(v53 + 16))
              {
LABEL_39:

                if (v54)
                {
                  goto LABEL_115;
                }

                goto LABEL_40;
              }
            }

            if ((*(v52 + 3) >> 1) - *(v52 + 2) < v54)
            {
              goto LABEL_123;
            }

            swift_arrayInitWithCopy();

            if (v54)
            {
              v59 = *(v52 + 2);
              v27 = __OFADD__(v59, v54);
              v60 = v59 + v54;
              if (v27)
              {
                goto LABEL_127;
              }

              *(v52 + 2) = v60;
            }

LABEL_40:
            ++v50;
            v51 += 16;
            if (v38 == v50)
            {
              goto LABEL_74;
            }
          }
        }

        v52 = MEMORY[0x1E69E7CC0];
LABEL_74:
        v72 = *(v52 + 2);
        if (v72)
        {
          v73 = 0;
          v74 = v52 + 40;
          v75 = MEMORY[0x1E69E7CC0];
          v98 = v52 + 40;
          v99 = v72;
          do
          {
            v100 = v75;
            v76 = v72 - v73;
            v77 = &v74[16 * v73];
            while (1)
            {
              if (v73 >= *(v52 + 2))
              {
                goto LABEL_109;
              }

              v78 = *(v77 - 1);
              v79 = *v77;
              v101 = *v77;

              if (sub_1D6EE6930(v80))
              {
                break;
              }

              v77 += 16;
              ++v73;
              if (!--v76)
              {
                goto LABEL_88;
              }
            }

            v75 = v100;
            v81 = swift_isUniquelyReferenced_nonNull_native();
            v102 = v75;
            if ((v81 & 1) == 0)
            {
              sub_1D6998414(0, *(v75 + 16) + 1, 1);
              v75 = v102;
            }

            v83 = *(v75 + 16);
            v82 = *(v75 + 24);
            if (v83 >= v82 >> 1)
            {
              sub_1D6998414((v82 > 1), v83 + 1, 1);
              v75 = v102;
            }

            ++v73;
            *(v75 + 16) = v83 + 1;
            v84 = v75 + 16 * v83;
            *(v84 + 32) = v78;
            *(v84 + 40) = v79;
            v74 = v98;
            v72 = v99;
          }

          while (v76 != 1);
        }

LABEL_88:

        v100 = sub_1D72626AC();

        if (!v38)
        {
          goto LABEL_106;
        }

        v85 = 0;
        v86 = v36 + 40;
        v87 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v85 >= *(v36 + 2))
          {
            goto LABEL_119;
          }

          v88 = *v86;
          v89 = *(*v86 + 16);
          v90 = *(v87 + 2);
          v91 = v90 + v89;
          if (__OFADD__(v90, v89))
          {
            goto LABEL_120;
          }

          v92 = swift_isUniquelyReferenced_nonNull_native();
          if (v92 && v91 <= *(v87 + 3) >> 1)
          {
            if (!*(v88 + 16))
            {
              goto LABEL_90;
            }
          }

          else
          {
            if (v90 <= v91)
            {
              v93 = v90 + v89;
            }

            else
            {
              v93 = v90;
            }

            v87 = sub_1D6991114(v92, v93, 1, v87);
            if (!*(v88 + 16))
            {
LABEL_90:

              if (v89)
              {
                goto LABEL_121;
              }

              goto LABEL_91;
            }
          }

          if ((*(v87 + 3) >> 1) - *(v87 + 2) < v89)
          {
            goto LABEL_125;
          }

          swift_arrayInitWithCopy();

          if (v89)
          {
            v94 = *(v87 + 2);
            v27 = __OFADD__(v94, v89);
            v95 = v94 + v89;
            if (v27)
            {
              goto LABEL_129;
            }

            *(v87 + 2) = v95;
          }

LABEL_91:
          ++v85;
          v86 += 16;
          if (v38 == v85)
          {
            goto LABEL_106;
          }
        }
      }

      if (v16 >= v14)
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
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v12 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_108;
      }

      v17 = *(v9 + 8 * v16++ + 32);
    }

    while (((v17 >> 59) & 0x1E | (v17 >> 2) & 1) != 8);
    v99 = v13;
    v100 = v6;
    v18 = v17 & 0xFFFFFFFFFFFFFFBLL;
    v19 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v20 = *(v19 + 48);
    v21 = *(v19 + 56);
    swift_retain_n();
    v98 = v18;

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v102 = v15;
    v23 = sub_1D5B69D90(v20, v21);
    v25 = v15[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_130;
    }

    v29 = v24;
    if (v15[3] < v28)
    {
      break;
    }

    if (v22)
    {
      goto LABEL_12;
    }

    v32 = v23;
    sub_1D6D80848();
    v23 = v32;
    if (v29)
    {
LABEL_13:
      v31 = v23;

      v15 = v102;
      *(v102[7] + 8 * v31) = v19;

      goto LABEL_17;
    }

LABEL_15:
    v15 = v102;
    v102[(v23 >> 6) + 8] |= 1 << v23;
    v33 = (v15[6] + 16 * v23);
    *v33 = v20;
    v33[1] = v21;
    *(v15[7] + 8 * v23) = v19;

    v34 = v15[2];
    v27 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v27)
    {
      goto LABEL_131;
    }

    v15[2] = v35;
LABEL_17:

    v13 = v99;
    v6 = v100;
  }

  sub_1D6D6A3E4(v28, v22);
  v23 = sub_1D5B69D90(v20, v21);
  if ((v29 & 1) == (v30 & 1))
  {
LABEL_12:
    if (v29)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_132:
  result = sub_1D726493C();
  __break(1u);
  return result;
}