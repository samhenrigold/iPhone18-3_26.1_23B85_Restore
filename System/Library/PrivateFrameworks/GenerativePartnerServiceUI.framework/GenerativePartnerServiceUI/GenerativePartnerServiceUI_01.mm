uint64_t sub_1BE4D5B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54ADAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OnboardingSheetSetup(0);
  (*(v5 + 16))(v8, a1 + *(v9 + 24), v4);
  v10 = sub_1BE54BF7C();
  v12 = v11;
  LOBYTE(v8) = v13;
  sub_1BE54BEFC();
  sub_1BE54BEBC();
  sub_1BE54BF1C();

  v14 = sub_1BE54BF5C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_1BE4C68C8(v10, v12, v8 & 1);

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_1BE4D91B0(v14, v16, v18 & 1);

  sub_1BE4C68C8(v14, v16, v18 & 1);
}

uint64_t sub_1BE4D5CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a4;
  v7 = sub_1BE4BF11C(&qword_1EBDABE68, &qword_1BE54E470);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v80 = &v77 - v9;
  v10 = sub_1BE54ADAC();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v84 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v77 - v17;
  v19 = *(a2 - 8);
  v21 = MEMORY[0x1EEE9AC00](v16, v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v77 - v25;
  v90 = a3;
  v28 = *(type metadata accessor for OnboardingSheetView(0, a2, a3, v27) + 36);
  v79 = a1;
  (*(a1 + v28))();
  v29 = *(v19 + 16);
  v94 = v26;
  v83 = v19 + 16;
  v82 = v29;
  (v29)(v26, v23, a2);
  v30 = *(v19 + 8);
  v95 = v23;
  v93 = a2;
  v91 = v19 + 8;
  v89 = v30;
  v30(v23, a2);
  v31 = type metadata accessor for OnboardingSheetSetup(0);
  v32 = *(v31 + 24);
  v87 = v11;
  v78 = *(v11 + 16);
  v78(v18, a1 + v32, v10);
  v33 = sub_1BE54BF7C();
  v35 = v34;
  v37 = v36;
  sub_1BE54BF0C();
  sub_1BE54BEDC();
  sub_1BE54BF1C();

  v86 = sub_1BE54BF5C();
  v85 = v38;
  v81 = v39;
  v88 = v40;

  v41 = v33;
  v42 = v80;
  sub_1BE4C68C8(v41, v35, v37 & 1);

  sub_1BE4D9250(v79 + *(v31 + 28), v42, &qword_1EBDABE68, &qword_1BE54E470);
  if (sub_1BE4C63BC(v42, 1, v10) == 1)
  {
    sub_1BE4D0E58(v42, &qword_1EBDABE68, &qword_1BE54E470);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v47 = *(v87 + 32);
    v48 = v84;
    v77 = v10;
    v47(v84, v42, v10);
    v78(v18, v48, v10);
    v49 = sub_1BE54BF7C();
    v51 = v50;
    v53 = v52;
    sub_1BE54BF0C();
    sub_1BE54BECC();
    sub_1BE54BF1C();

    v54 = sub_1BE54BF5C();
    v56 = v55;
    v58 = v57;

    sub_1BE4C68C8(v49, v51, v53 & 1);

    LODWORD(v114[0]) = sub_1BE54BCFC();
    v59 = sub_1BE54BF4C();
    v61 = v60;
    LOBYTE(v49) = v62;
    v64 = v63;
    sub_1BE4C68C8(v54, v56, v58 & 1);

    (*(v87 + 8))(v84, v77);
    v43 = v59;
    v65 = v59;
    v44 = v61;
    v45 = v49 & 1;
    sub_1BE4D91B0(v65, v61, v49 & 1);
    v46 = v64;
  }

  v112 = 0;
  v113 = 1;
  v114[0] = &v112;
  v66 = v95;
  v67 = v93;
  v82();
  v68 = v86;
  v69 = v85;
  v108 = v86;
  v109 = v85;
  v70 = v81 & 1;
  v110 = v81 & 1;
  v111 = v88;
  v114[1] = v66;
  v114[2] = &v108;
  v104 = v43;
  v105 = v44;
  v87 = v45;
  v106 = v45;
  v107 = v46;
  v71 = v46;
  v102 = 0;
  v103 = 1;
  v114[3] = &v104;
  v114[4] = &v102;
  sub_1BE4D91B0(v86, v85, v81 & 1);

  v72 = MEMORY[0x1E6981840];
  v101[0] = MEMORY[0x1E6981840];
  v101[1] = v67;
  v101[2] = MEMORY[0x1E6981148];
  v73 = sub_1BE4BF11C(&qword_1EBDABB60, &unk_1BE54E4F0);
  v74 = MEMORY[0x1E6981838];
  v101[3] = v73;
  v101[4] = v72;
  v96 = MEMORY[0x1E6981838];
  v97 = v90;
  v98 = MEMORY[0x1E6981138];
  v99 = sub_1BE4C5F2C();
  v100 = v74;
  sub_1BE4D13E8(v114, 5, v101);
  sub_1BE4D91C0(v43, v44, v87, v71);
  sub_1BE4C68C8(v68, v69, v70);

  v75 = v89;
  v89(v94, v67);
  sub_1BE4D91C0(v104, v105, v106, v107);
  sub_1BE4C68C8(v108, v109, v110);

  return v75(v95, v67);
}

void *sub_1BE4D6420@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BE4BF11C(&qword_1EBDAC138, &qword_1BE54E968);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = __src - v8;
  v10 = sub_1BE4BF11C(&qword_1EBDAC128, &qword_1BE54E960);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = __src - v13;
  *v9 = sub_1BE54BB0C();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  v15 = sub_1BE4BF11C(&qword_1EBDAC260, &qword_1BE54EA88);
  sub_1BE4D6788(v3, &v9[*(v15 + 44)]);
  KeyPath = swift_getKeyPath();
  v17 = &v9[*(sub_1BE4BF11C(&qword_1EBDAC158, &qword_1BE54E978) + 36)];
  *v17 = KeyPath;
  *(v17 + 1) = 1;
  v17[16] = 0;
  LOBYTE(KeyPath) = sub_1BE54BE5C();
  sub_1BE54B59C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v9[*(sub_1BE4BF11C(&qword_1EBDAC148, &qword_1BE54E970) + 36)];
  *v26 = KeyPath;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  LOBYTE(KeyPath) = sub_1BE54BE3C();
  sub_1BE54B59C();
  v27 = &v9[*(v6 + 44)];
  *v27 = KeyPath;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  LOBYTE(v6) = sub_1BE54BE6C();
  v32 = [objc_opt_self() currentDevice];
  [v32 userInterfaceIdiom];

  sub_1BE54B59C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1BE4D9204(v9, v14, &qword_1EBDAC138, &qword_1BE54E968);
  v41 = &v14[*(v11 + 44)];
  *v41 = v6;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  sub_1BE54C39C();
  sub_1BE54B7FC();
  sub_1BE4D9204(v14, a2, &qword_1EBDAC128, &qword_1BE54E960);
  v42 = sub_1BE4BF11C(&qword_1EBDAC118, &qword_1BE54E958);
  return memcpy((a2 + *(v42 + 36)), __src, 0x70uLL);
}

uint64_t sub_1BE4D6788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for OnboardingButton(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE4BF11C(&qword_1EBDABF18, &qword_1BE54E4C0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v56 - v13;
  v15 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v56 - v21;
  v23 = sub_1BE4BF11C(&qword_1EBDAC268, &qword_1BE54EA90);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v60 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v59 = &v56 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v56 - v32;
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v56 - v35;
  v58 = type metadata accessor for OnboardingSheetSetup(0);
  sub_1BE4D9250(a1 + *(v58 + 32), v14, &qword_1EBDABF18, &qword_1BE54E4C0);
  if (sub_1BE4C63BC(v14, 1, v15) == 1)
  {
    sub_1BE4D0E58(v14, &qword_1EBDABF18, &qword_1BE54E4C0);
    v37 = 1;
  }

  else
  {
    sub_1BE4D224C(v14, v22, type metadata accessor for OnboardingSheetSetup.ButtonSetup);
    v38 = sub_1BE54ADAC();
    (*(*(v38 - 8) + 16))(v6, v22, v38);
    v39 = &v22[*(v15 + 20)];
    v57 = v36;
    v40 = v33;
    v41 = a1;
    v42 = *v39;
    v43 = *(v39 + 1);

    sub_1BE4D21F0(v22);
    v6[*(v3 + 20)] = 1;
    v44 = &v6[*(v3 + 24)];
    *v44 = v42;
    *(v44 + 1) = v43;
    a1 = v41;
    v33 = v40;
    v36 = v57;
    sub_1BE4D224C(v6, v57, type metadata accessor for OnboardingButton);
    v37 = 0;
  }

  sub_1BE4C63F8(v36, v37, 1, v3);
  sub_1BE4D9250(a1 + *(v58 + 36), v11, &qword_1EBDABF18, &qword_1BE54E4C0);
  if (sub_1BE4C63BC(v11, 1, v15) == 1)
  {
    sub_1BE4D0E58(v11, &qword_1EBDABF18, &qword_1BE54E4C0);
    v45 = 1;
  }

  else
  {
    sub_1BE4D224C(v11, v19, type metadata accessor for OnboardingSheetSetup.ButtonSetup);
    v46 = sub_1BE54ADAC();
    (*(*(v46 - 8) + 16))(v6, v19, v46);
    v47 = &v19[*(v15 + 20)];
    v48 = *v47;
    v49 = *(v47 + 1);

    sub_1BE4D21F0(v19);
    v6[*(v3 + 20)] = 0;
    v50 = &v6[*(v3 + 24)];
    *v50 = v48;
    *(v50 + 1) = v49;
    sub_1BE4D224C(v6, v33, type metadata accessor for OnboardingButton);
    v45 = 0;
  }

  sub_1BE4C63F8(v33, v45, 1, v3);
  v51 = v59;
  sub_1BE4D9250(v36, v59, &qword_1EBDAC268, &qword_1BE54EA90);
  v52 = v60;
  sub_1BE4D9250(v33, v60, &qword_1EBDAC268, &qword_1BE54EA90);
  v53 = v61;
  sub_1BE4D9250(v51, v61, &qword_1EBDAC268, &qword_1BE54EA90);
  v54 = sub_1BE4BF11C(&qword_1EBDAC270, &qword_1BE54EA98);
  sub_1BE4D9250(v52, v53 + *(v54 + 48), &qword_1EBDAC268, &qword_1BE54EA90);
  sub_1BE4D0E58(v33, &qword_1EBDAC268, &qword_1BE54EA90);
  sub_1BE4D0E58(v36, &qword_1EBDAC268, &qword_1BE54EA90);
  sub_1BE4D0E58(v52, &qword_1EBDAC268, &qword_1BE54EA90);
  return sub_1BE4D0E58(v51, &qword_1EBDAC268, &qword_1BE54EA90);
}

void sub_1BE4D6D00(uint64_t a1)
{
  sub_1BE4D7038(319, &qword_1EBDABF88, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BE54ADAC();
    if (v2 <= 0x3F)
    {
      sub_1BE4D6E20(319, &qword_1EBDABEA0, MEMORY[0x1E6968E10]);
      if (v3 <= 0x3F)
      {
        sub_1BE4D6E20(319, &qword_1EBDABF90, type metadata accessor for OnboardingSheetSetup.ButtonSetup);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BE4D6E20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1BE4D985C();
    v4 = sub_1BE54C9EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BE4D6EA8(uint64_t a1)
{
  result = sub_1BE54ADAC();
  if (v2 <= 0x3F)
  {
    result = sub_1BE4C65D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1BE4D6F34(uint64_t a1)
{
  type metadata accessor for OnboardingSheetSetup(319);
  if (v1 <= 0x3F)
  {
    sub_1BE4C65D8();
    if (v2 <= 0x3F)
    {
      sub_1BE4D7038(319, &qword_1EBDAC028, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1BE4D7088(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BE4D7038(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BE4D7088(uint64_t a1)
{
  if (!qword_1EBDAC030)
  {
    sub_1BE4C5948(&qword_1EBDAC038, qword_1BE54E6A8);
    v1 = sub_1BE54B62C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBDAC030);
    }
  }
}

unint64_t sub_1BE4D7134(uint64_t a1)
{
  result = sub_1BE54ADAC();
  if (v2 <= 0x3F)
  {
    result = sub_1BE4C65D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1BE4D71C0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BE4D72BC@<X0>(uint64_t a1@<X8>)
{
  sub_1BE4D73A4(a1);
  v2 = (a1 + *(sub_1BE4BF11C(&qword_1EBDAC058, &qword_1BE54E868) + 36));
  sub_1BE4BF11C(&qword_1EBDAC060, &qword_1BE54E870);
  sub_1BE54B80C();
  *v2 = swift_getKeyPath();
  sub_1BE54C39C();
  sub_1BE54B69C();
  v3 = (a1 + *(sub_1BE4BF11C(&qword_1EBDAC068, &qword_1BE54E8A8) + 36));
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  result = sub_1BE4BF11C(&qword_1EBDAC070, &qword_1BE54E8B0);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1BE4D73A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v58 = sub_1BE54BD6C();
  v51 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v3);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BE4BF11C(&qword_1EBDAC078, &qword_1BE54E8B8);
  v53 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v5);
  v52 = &v47 - v6;
  v56 = sub_1BE4BF11C(&qword_1EBDAC080, &qword_1BE54E8C0);
  MEMORY[0x1EEE9AC00](v56, v7);
  v57 = &v47 - v8;
  v9 = sub_1BE54B7DC();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OnboardingButton(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13, v17);
  v54 = sub_1BE4BF11C(&qword_1EBDAC088, &qword_1BE54E8C8);
  v18 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v19);
  v21 = &v47 - v20;
  v55 = sub_1BE4BF11C(&qword_1EBDAC090, &qword_1BE54E8D0);
  MEMORY[0x1EEE9AC00](v55, v22);
  v24 = &v47 - v23;
  v25 = *(v2 + *(v14 + 28));
  sub_1BE4D806C(v2, &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v27 = (v18 + 8);
  v28 = swift_allocObject();
  v29 = sub_1BE4D224C(&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v26, type metadata accessor for OnboardingButton);
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v47 - 2) = v2;
  sub_1BE4BF11C(&qword_1EBDAC098, &qword_1BE54E8D8);
  sub_1BE4D80DC();
  sub_1BE54C29C();
  if (v25)
  {
    v31 = v50;
    sub_1BE54BD5C();
    v32 = sub_1BE4D9668(&qword_1EBDAC0C0, &qword_1EBDAC088, &qword_1BE54E8C8);
    v33 = sub_1BE4D83D4(&qword_1EBDAC0C8, MEMORY[0x1E697C9D8]);
    v34 = v52;
    v35 = v54;
    v36 = v58;
    sub_1BE54C01C();
    (*(v51 + 8))(v31, v36);
    (*v27)(v21, v35);
    v37 = v53;
    v38 = v59;
    (*(v53 + 16))(v57, v34, v59);
    swift_storeEnumTagMultiPayload();
    sub_1BE4D825C();
    v61 = v35;
    v62 = v36;
    v63 = v32;
    v64 = v33;
    swift_getOpaqueTypeConformance2();
    sub_1BE54BC0C();
    return (*(v37 + 8))(v34, v38);
  }

  else
  {
    sub_1BE54B7CC();
    v40 = sub_1BE4D9668(&qword_1EBDAC0C0, &qword_1EBDAC088, &qword_1BE54E8C8);
    sub_1BE4D83D4(&qword_1EBDAC0D8, MEMORY[0x1E697C1D8]);
    v41 = v54;
    v42 = v49;
    sub_1BE54C01C();
    (*(v48 + 8))(v12, v42);
    (*v27)(v21, v41);
    v43 = sub_1BE54C1DC();
    KeyPath = swift_getKeyPath();
    v45 = &v24[*(v55 + 36)];
    *v45 = KeyPath;
    v45[1] = v43;
    sub_1BE4BBAB8(v24, v57);
    swift_storeEnumTagMultiPayload();
    sub_1BE4D825C();
    v46 = sub_1BE4D83D4(&qword_1EBDAC0C8, MEMORY[0x1E697C9D8]);
    v61 = v41;
    v62 = v58;
    v63 = v40;
    v64 = v46;
    swift_getOpaqueTypeConformance2();
    sub_1BE54BC0C();
    return sub_1BE4BBB1C(v24);
  }
}

void *sub_1BE4D7BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1BE54ADAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE4BF11C(&qword_1EBDAC0F0, &qword_1BE54E920);
  v8 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v9);
  v11 = &v22 - v10;
  (*(v4 + 16))(v7, a1, v3);
  v12 = sub_1BE54BF7C();
  v14 = v13;
  LOBYTE(a1) = v15;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  __src[0] = v12;
  __src[1] = v14;
  LOBYTE(__src[2]) = a1 & 1;
  __src[3] = v17;
  __src[4] = KeyPath;
  LOBYTE(__src[5]) = 1;
  sub_1BE54BEDC();
  sub_1BE4BF11C(&qword_1EBDAC0A8, &qword_1BE54E8E0);
  sub_1BE4D81A4();
  sub_1BE54BFFC();
  sub_1BE4C68C8(v12, v14, a1 & 1);

  sub_1BE54C39C();
  sub_1BE54B7FC();
  v19 = v23;
  (*(v8 + 32))(v23, v11, v22);
  v20 = sub_1BE4BF11C(&qword_1EBDAC098, &qword_1BE54E8D8);
  return memcpy((v19 + *(v20 + 36)), __src, 0x70uLL);
}

unint64_t sub_1BE4D7E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC050;
  if (!qword_1EBDAC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC050);
  }

  return result;
}

uint64_t sub_1BE4D7F00()
{
  sub_1BE4D982C();
  result = sub_1BE54B91C();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4D7F54()
{
  sub_1BE4D982C();
  result = sub_1BE54B8FC();
  *v0 = result;
  return result;
}

uint64_t sub_1BE4D7FA4(uint64_t a1)
{
  v2 = sub_1BE54B81C();
  MEMORY[0x1EEE9AC00](v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BE54B8CC();
}

uint64_t sub_1BE4D806C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BE4D80DC()
{
  result = qword_1EBDAC0A0;
  if (!qword_1EBDAC0A0)
  {
    sub_1BE4C5948(&qword_1EBDAC098, &qword_1BE54E8D8);
    sub_1BE4C5948(&qword_1EBDAC0A8, &qword_1BE54E8E0);
    sub_1BE4D81A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC0A0);
  }

  return result;
}

unint64_t sub_1BE4D81A4()
{
  result = qword_1EBDAC0B0;
  if (!qword_1EBDAC0B0)
  {
    sub_1BE4C5948(&qword_1EBDAC0A8, &qword_1BE54E8E0);
    sub_1BE4D9668(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC0B0);
  }

  return result;
}

unint64_t sub_1BE4D825C()
{
  result = qword_1EBDAC0D0;
  if (!qword_1EBDAC0D0)
  {
    sub_1BE4C5948(&qword_1EBDAC090, &qword_1BE54E8D0);
    sub_1BE4C5948(&qword_1EBDAC088, &qword_1BE54E8C8);
    sub_1BE54B7DC();
    sub_1BE4D9668(&qword_1EBDAC0C0, &qword_1EBDAC088, &qword_1BE54E8C8);
    sub_1BE4D83D4(&qword_1EBDAC0D8, MEMORY[0x1E697C1D8]);
    swift_getOpaqueTypeConformance2();
    sub_1BE4D9668(&qword_1EBDAC0E0, &qword_1EBDAC0E8, &qword_1BE54E8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC0D0);
  }

  return result;
}

uint64_t sub_1BE4D83D4(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1BE4D985C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE4D8418()
{
  v1 = *(type metadata accessor for OnboardingButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1BE54ADAC();
  sub_1BE4C7470();
  (*(v5 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BE4D84FC()
{
  v1 = type metadata accessor for OnboardingButton(0);
  sub_1BE4C7570(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1BE4D7BB8(v3);
}

unint64_t sub_1BE4D8558()
{
  result = qword_1EBDAC108;
  if (!qword_1EBDAC108)
  {
    sub_1BE4C5948(&qword_1EBDABF68, &qword_1BE54E508);
    sub_1BE4D85E4();
    sub_1BE4D88F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC108);
  }

  return result;
}

unint64_t sub_1BE4D85E4()
{
  result = qword_1EBDAC110;
  if (!qword_1EBDAC110)
  {
    sub_1BE4C5948(&qword_1EBDAC118, &qword_1BE54E958);
    sub_1BE4D8670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC110);
  }

  return result;
}

unint64_t sub_1BE4D8670()
{
  result = qword_1EBDAC120;
  if (!qword_1EBDAC120)
  {
    sub_1BE4C5948(&qword_1EBDAC128, &qword_1BE54E960);
    sub_1BE4D86FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC120);
  }

  return result;
}

unint64_t sub_1BE4D86FC()
{
  result = qword_1EBDAC130;
  if (!qword_1EBDAC130)
  {
    sub_1BE4C5948(&qword_1EBDAC138, &qword_1BE54E968);
    sub_1BE4D8788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC130);
  }

  return result;
}

unint64_t sub_1BE4D8788()
{
  result = qword_1EBDAC140;
  if (!qword_1EBDAC140)
  {
    sub_1BE4C5948(&qword_1EBDAC148, &qword_1BE54E970);
    sub_1BE4D8814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC140);
  }

  return result;
}

unint64_t sub_1BE4D8814()
{
  result = qword_1EBDAC150;
  if (!qword_1EBDAC150)
  {
    sub_1BE4C5948(&qword_1EBDAC158, &qword_1BE54E978);
    sub_1BE4D9668(&qword_1EBDAC160, &qword_1EBDAC168, &qword_1BE54E980);
    sub_1BE4D9668(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC150);
  }

  return result;
}

unint64_t sub_1BE4D88F8()
{
  result = qword_1EBDAC170;
  if (!qword_1EBDAC170)
  {
    sub_1BE4C5948(&qword_1EBDAC178, &qword_1BE54E988);
    sub_1BE4D85E4();
    sub_1BE4D9668(&qword_1EBDAC180, &qword_1EBDAC188, &qword_1BE54E990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC170);
  }

  return result;
}

uint64_t sub_1BE4D89F8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1BE4BF07C(result, a2);
  }

  else
  {
  }
}

uint64_t sub_1BE4D8A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OnboardingSheetView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v18 = *(*(v5 - 8) + 64);
  v19 = (v6 + 32) & ~v6;
  v7 = v4 + v19;

  v8 = type metadata accessor for OnboardingSheetSetup(0);
  v9 = v8[6];
  v10 = sub_1BE54ADAC();
  sub_1BE4C7470();
  v12 = *(v11 + 8);
  v12(v4 + v19 + v9, v10);
  v13 = v8[7];
  if (!sub_1BE4C63BC(v4 + v19 + v13, 1, v10))
  {
    v12(v7 + v13, v10);
  }

  v14 = v7 + v8[8];
  v15 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
  if (!sub_1BE4C63BC(v14, 1, v15))
  {
    v12(v14, v10);
  }

  v16 = v7 + v8[9];
  if (!sub_1BE4C63BC(v16, 1, v15))
  {
    v12(v16, v10);
  }

  sub_1BE4D89F8(*(v7 + *(v5 + 48)), *(v7 + *(v5 + 48) + 8), *(v7 + *(v5 + 48) + 16));

  return MEMORY[0x1EEE6BDD0](v4, v19 + v18, v6 | 7);
}

uint64_t sub_1BE4D8CD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = type metadata accessor for OnboardingSheetView(0, v8, v9, a3);
  sub_1BE4C7570(v10);
  return sub_1BE4D4F34(v4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v8, v9, a1, a2, a4);
}

uint64_t sub_1BE4D8D94(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OnboardingSheetView(0, *(v4 + 16), *(v4 + 24), a4);
  sub_1BE4C7570(v5);
  v6 = sub_1BE4D9844();

  return a2(v6);
}

unint64_t sub_1BE4D8E2C()
{
  result = qword_1EBDAC1B8;
  if (!qword_1EBDAC1B8)
  {
    sub_1BE4C5948(&qword_1EBDABF38, &qword_1BE54E4D8);
    sub_1BE4D8EE4();
    sub_1BE4D9668(&qword_1EBDAC0F8, &qword_1EBDABF60, &qword_1BE54E500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC1B8);
  }

  return result;
}

unint64_t sub_1BE4D8EE4()
{
  result = qword_1EBDAC1C0;
  if (!qword_1EBDAC1C0)
  {
    sub_1BE4C5948(&qword_1EBDAC1C8, &qword_1BE54E9B0);
    sub_1BE4D8F9C();
    sub_1BE4D9668(&qword_1EBDAC0B8, &qword_1EBDABF58, &qword_1BE54F660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC1C0);
  }

  return result;
}

unint64_t sub_1BE4D8F9C()
{
  result = qword_1EBDAC1D0;
  if (!qword_1EBDAC1D0)
  {
    sub_1BE4C5948(&qword_1EBDAC1D8, &qword_1BE54E9B8);
    sub_1BE4D9028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC1D0);
  }

  return result;
}

unint64_t sub_1BE4D9028()
{
  result = qword_1EBDAC1E0;
  if (!qword_1EBDAC1E0)
  {
    sub_1BE4C5948(&qword_1EBDAC1E8, &qword_1BE54E9C0);
    sub_1BE4D90B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC1E0);
  }

  return result;
}

unint64_t sub_1BE4D90B4()
{
  result = qword_1EBDAC1F0;
  if (!qword_1EBDAC1F0)
  {
    sub_1BE4C5948(&qword_1EBDAC1F8, &qword_1BE54E9C8);
    sub_1BE4D9668(&qword_1EBDAC200, &qword_1EBDAC208, &qword_1BE54E9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC1F0);
  }

  return result;
}

uint64_t sub_1BE4D916C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BE4D91B0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BE4D91B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BE4D91C0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BE4C68C8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BE4D9204(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1BE4D97E0(a1, a2, a3, a4);
  sub_1BE4C7470();
  v5 = sub_1BE4D9800();
  v6(v5);
  return v4;
}

uint64_t sub_1BE4D9250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1BE4D97E0(a1, a2, a3, a4);
  sub_1BE4C7470();
  v5 = sub_1BE4D9800();
  v6(v5);
  return v4;
}

unint64_t sub_1BE4D92B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC278;
  if (!qword_1EBDAC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC278);
  }

  return result;
}

unint64_t sub_1BE4D934C()
{
  result = qword_1EBDAC280;
  if (!qword_1EBDAC280)
  {
    sub_1BE4C5948(&qword_1EBDAC070, &qword_1BE54E8B0);
    sub_1BE4D93D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC280);
  }

  return result;
}

unint64_t sub_1BE4D93D8()
{
  result = qword_1EBDAC288;
  if (!qword_1EBDAC288)
  {
    sub_1BE4C5948(&qword_1EBDAC068, &qword_1BE54E8A8);
    sub_1BE4D9464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC288);
  }

  return result;
}

unint64_t sub_1BE4D9464()
{
  result = qword_1EBDAC290;
  if (!qword_1EBDAC290)
  {
    sub_1BE4C5948(&qword_1EBDAC058, &qword_1BE54E868);
    sub_1BE4D951C();
    sub_1BE4D9668(&qword_1EBDAC2A8, &qword_1EBDAC060, &qword_1BE54E870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC290);
  }

  return result;
}

unint64_t sub_1BE4D951C()
{
  result = qword_1EBDAC298;
  if (!qword_1EBDAC298)
  {
    sub_1BE4C5948(&qword_1EBDAC2A0, &qword_1BE54EAB8);
    sub_1BE4D825C();
    sub_1BE4C5948(&qword_1EBDAC088, &qword_1BE54E8C8);
    sub_1BE54BD6C();
    sub_1BE4D9668(&qword_1EBDAC0C0, &qword_1EBDAC088, &qword_1BE54E8C8);
    sub_1BE4D83D4(&qword_1EBDAC0C8, MEMORY[0x1E697C9D8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC298);
  }

  return result;
}

uint64_t sub_1BE4D9668(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BE4C5948(a2, a3);
    sub_1BE4D985C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE4D9744@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE4D97E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1BE4BF11C(a3, a4);
}

uint64_t sub_1BE4D9868()
{

  return type metadata accessor for OnboardingSheetSetup(0);
}

uint64_t sub_1BE4D9880(uint64_t a1, uint64_t a2)
{

  return sub_1BE4D9250(a1, a2, v2, v3);
}

uint64_t sub_1BE4D98B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 24 * v1 + 8);

  return v2;
}

uint64_t sub_1BE4D9918(char a1)
{
  result = 0x6F72746E69;
  switch(a1)
  {
    case 1:
      result = sub_1BE4DCF90();
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = sub_1BE4DCF58();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BE4D99CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1EDDD6890 != -1)
  {
LABEL_14:
    swift_once();
  }

  v6 = off_1EDDD6898;
  swift_beginAccess();
  v7 = v6[2];
  v8 = *(v7 + 16);
  v9 = v7 + 32;

  for (i = 0; v8 != i; ++i)
  {
    if (i >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    sub_1BE4C6918(v9, &v17);
    v11 = v18;
    v12 = v19;
    sub_1BE4C52F4(&v17, v18);
    if ((*(v12 + 8))(v11, v12) == a1 && v13 == a2)
    {

LABEL_12:

      sub_1BE4BF094(&v17, v20);
      return sub_1BE4BF094(v20, a3);
    }

    v15 = sub_1BE54CCDC();

    if (v15)
    {
      goto LABEL_12;
    }

    sub_1BE4C58A8(&v17);
    v9 += 40;
  }

  *&v20[0] = 0;
  *(&v20[0] + 1) = 0xE000000000000000;
  sub_1BE54CADC();
  MEMORY[0x1BFB47CA0](0xD0000000000000ACLL, 0x80000001BE553A10);
  MEMORY[0x1BFB47CA0](a1, a2);
  MEMORY[0x1BFB47CA0](15906, 0xE200000000000000);
  result = sub_1BE54CBBC();
  __break(1u);
  return result;
}

uint64_t sub_1BE4D9BE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE4DB7C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BE4D9C40()
{
  v0 = 1952543335;
  sub_1BE4DD074();
  v2 = 0xD000000000000013;
  v3 = 0x65746E4969726973;
  v5 = v4;
  v6 = "imagePlaygroundExpansion";
  v7 = 0x65746E4969726973;
  v8 = 1952543335;
  v9 = "moreVisualIntelligence";
  switch(v5)
  {
    case 1:
      v8 = 0x80000001BE552A90;
      v7 = 0xD000000000000016;
      break;
    case 2:
      v7 = sub_1BE4DD04C();
      break;
    case 3:
      v8 = 0x80000001BE552AD0;
      v7 = 0xD000000000000018;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = (v9 - 32) | 0x8000000000000000;
      v3 = v2 + 3;
      break;
    case 2:
      sub_1BE4DD0A0();
      break;
    case 3:
      v0 = (v6 - 32) | 0x8000000000000000;
      v3 = v2 + 5;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE4DD014(v7, v1, v3);
  }

  return v11 & 1;
}

uint64_t sub_1BE4D9D68(char a1, uint64_t a2)
{
  v2 = 0x6465636E61766461;
  if (a1)
  {
    sub_1BE4DD080();
    if (v3)
    {
      v5 = 0x6369736162;
    }

    else
    {
      v5 = 0x696D694C64726168;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEB00000000646574;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
    v5 = 0x6465636E61766461;
  }

  if (a2)
  {
    sub_1BE4DD080();
    if (v7)
    {
      v2 = 0x6369736162;
    }

    else
    {
      v2 = 0x696D694C64726168;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xEB00000000646574;
    }
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE4DD030(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1BE4D9E58(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000044;
  v3 = 0xD000000000000013;
  v4 = 0x496D616441707061;
  v5 = a1;
  v6 = "subscriptionManageAppleURL";
  v7 = 0x496D616441707061;
  v8 = 0xE900000000000044;
  v9 = "subscriptionPunchoutURL";
  switch(v5)
  {
    case 1:
      v7 = 0x6C646E7542707061;
      v8 = 0xEB00000000444965;
      break;
    case 2:
      v8 = 0x80000001BE552A20;
      v7 = 0xD000000000000017;
      break;
    case 3:
      v7 = sub_1BE4DD04C();
      break;
    case 4:
      v8 = 0x80000001BE552A60;
      v7 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v4 = 0x6C646E7542707061;
      v2 = 0xEB00000000444965;
      break;
    case 2:
      v2 = (v9 - 32) | 0x8000000000000000;
      v4 = v3 + 4;
      break;
    case 3:
      sub_1BE4DD0A0();
      break;
    case 4:
      v2 = (v6 - 32) | 0x8000000000000000;
      v4 = v3 + 7;
      break;
    default:
      break;
  }

  if (v7 == v4 && v8 == v2)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BE4DD014(v7, a2, v4);
  }

  return v11 & 1;
}

uint64_t sub_1BE4D9FC0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x54504774616863;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x54504774616863;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000010;
      v3 = 0x80000001BE5529C0;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1769105779;
      break;
    case 3:
      v5 = 0x54676E6974697277;
      v3 = 0xEC000000736C6F6FLL;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000010;
      v6 = 0x80000001BE5529C0;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1769105779;
      break;
    case 3:
      v2 = 0x54676E6974697277;
      v6 = 0xEC000000736C6F6FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BE4DD030(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1BE4DA100()
{
  v0 = 1952671084;
  sub_1BE4DD074();
  v2 = 0x655365676E616863;
  v4 = v3;
  v5 = 0x655365676E616863;
  v6 = 1952671084;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6E496E676973;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x74754F6E676973;
      break;
    case 3:
      v5 = 0x5065646172677075;
      v6 = 0xEB000000006E616CLL;
      break;
    case 4:
      v5 = 0x6168437055746573;
      v6 = 0xEC00000054504774;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0xE600000000000000;
      v2 = 0x6E496E676973;
      break;
    case 2:
      v0 = 0xE700000000000000;
      v2 = 0x74754F6E676973;
      break;
    case 3:
      v2 = 0x5065646172677075;
      v0 = 0xEB000000006E616CLL;
      break;
    case 4:
      v2 = 0x6168437055746573;
      v0 = 0xEC00000054504774;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BE4DD014(v5, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_1BE4DA298()
{
  sub_1BE4DD08C();
  v4 = v3;
  v5 = "signInHostingPage";
  v6 = v2;
  v7 = "enableWithAccountInfo";
  switch(v4)
  {
    case 1:
      v6 = sub_1BE4DCF90();
      v0 = 0xEB000000006F666ELL;
      break;
    case 2:
      v6 = sub_1BE4DCFD8();
      break;
    case 3:
      v6 = sub_1BE4DD060();
      break;
    case 4:
      v0 = 0xE800000000000000;
      v6 = sub_1BE4DCF58();
      break;
    default:
      break;
  }

  v8 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      sub_1BE4DCF20();
      v8 = 0xEB000000006F666ELL;
      break;
    case 2:
      v8 = (v7 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000015;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v8 = (v5 - 32) | 0x8000000000000000;
      break;
    case 4:
      v8 = 0xE800000000000000;
      sub_1BE4DCEFC();
      break;
    default:
      break;
  }

  if (v6 == v2 && v0 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1BE4DD030(v6, v1, v2);
  }

  return v10 & 1;
}

unint64_t sub_1BE4DA3C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BE54CC0C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BE4DA44C()
{
  sub_1BE54CD8C();
  sub_1BE54C77C();
  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DA4E8(uint64_t a1)
{
  sub_1BE4DD0B4(a1);
  v3 = v1(v2);
  sub_1BE4DCF34(v3, v4, v5);

  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DA548(uint64_t a1)
{
  sub_1BE4DD0B4(a1);
  v1(v4, v2);
  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DA590()
{
  sub_1BE4DD074();
  switch(v0)
  {
    case 1:
    case 3:
      sub_1BE4DCED0();
      break;
    default:
      break;
  }

  sub_1BE54C77C();
}

uint64_t sub_1BE4DA64C(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1BE4DD080();
  }

  else
  {
    sub_1BE4DCFC0();
  }

  sub_1BE54C77C();
}

uint64_t sub_1BE4DA6C8(void *a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 4:
      sub_1BE4DCED0();
      break;
    default:
      break;
  }

  sub_1BE54C77C();
}

uint64_t sub_1BE4DA7A0(uint64_t a1, char a2)
{
  sub_1BE54C77C();
}

uint64_t sub_1BE4DA85C()
{
  sub_1BE4DD074();
  sub_1BE54C77C();
}

uint64_t sub_1BE4DA94C(uint64_t a1, char a2)
{
  sub_1BE54C77C();
}

uint64_t sub_1BE4DAA5C(uint64_t a1)
{
  sub_1BE54CD8C();
  sub_1BE54C77C();
  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DAAE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1BE54CD8C();
  v5 = a3(a2);
  sub_1BE4DCF34(v5, v6, v7);

  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DAB3C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_1BE54CD8C();
  if (v2)
  {
    sub_1BE4DD080();
  }

  else
  {
    sub_1BE4DCFC0();
  }

  sub_1BE54C77C();

  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DABE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_1BE54CD8C();
  a3(v6, a2);
  return sub_1BE54CDAC();
}

unint64_t sub_1BE4DAC30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BE4DA3C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BE4DAC60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE4D9918(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BE4DAC8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a1 == a4 && a2 == a5;
  if (v9 || (v10 = 0, (sub_1BE54CCDC() & 1) != 0))
  {
    sub_1BE4DD08C();
    v12 = "signInHostingPage";
    v13 = v11;
    v14 = "enableWithAccountInfo";
    switch(a3)
    {
      case 1:
        v13 = sub_1BE4DCF90();
        v6 = 0xEB000000006F666ELL;
        break;
      case 2:
        v13 = sub_1BE4DCFD8();
        break;
      case 3:
        v13 = sub_1BE4DD060();
        break;
      case 4:
        v6 = 0xE800000000000000;
        v13 = sub_1BE4DCF58();
        break;
      default:
        break;
    }

    v15 = 0xE500000000000000;
    switch(a6)
    {
      case 1:
        sub_1BE4DCF20();
        v15 = 0xEB000000006F666ELL;
        break;
      case 2:
        v15 = (v14 - 32) | 0x8000000000000000;
        v11 = 0xD000000000000015;
        break;
      case 3:
        v11 = 0xD000000000000011;
        v15 = (v12 - 32) | 0x8000000000000000;
        break;
      case 4:
        v15 = 0xE800000000000000;
        sub_1BE4DCEFC();
        break;
      default:
        break;
    }

    if (v13 == v11 && v6 == v15)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1BE54CCDC();
    }
  }

  return v10 & 1;
}

uint64_t sub_1BE4DADF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1BE54C77C();
  sub_1BE4D9918(a4);
  sub_1BE54C77C();
}

uint64_t sub_1BE4DAE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_1BE54CD8C();
  sub_1BE54C77C();
  v4 = sub_1BE4D9918(v3);
  sub_1BE4DCF34(v4, v5, v6);

  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DAED4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1BE54CD8C();
  sub_1BE54C77C();
  sub_1BE4D9918(v2);
  sub_1BE54C77C();

  return sub_1BE54CDAC();
}

uint64_t sub_1BE4DAF6C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1BE4DC948();
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v13, v1);
  sub_1BE54AFCC();

  sub_1BE4DCFA4(v1 + 16, v11);
  return sub_1BE4DCE50(v1 + 16, a1, &qword_1EBDABAF8, &qword_1BE54DC20);
}

uint64_t sub_1BE4DB018(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1BE4DCE00(a2, a1 + 16, &qword_1EBDABAF8, &qword_1BE54DC20);
  return swift_endAccess();
}

uint64_t sub_1BE4DB08C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1BE4DC948();
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v13, v1);
  sub_1BE54AFCC();

  sub_1BE4DCFA4(v1 + 56, v11);
  return sub_1BE4DCE50(v1 + 56, a1, &qword_1EBDABAF8, &qword_1BE54DC20);
}

uint64_t sub_1BE4DB18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v9 = v3;
  v10 = a1;
  sub_1BE4DC1D0(KeyPath, a3, &v8);

  return sub_1BE4D0E58(a1, &qword_1EBDABAF8, &qword_1BE54DC20);
}

uint64_t sub_1BE4DB208(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1BE4DCE00(a2, a1 + 56, &qword_1EBDABAF8, &qword_1BE54DC20);
  return swift_endAccess();
}

uint64_t sub_1BE4DB27C(uint64_t a1)
{
  v1 = sub_1BE4DB5F0();
  sub_1BE4D98B8(v1);
  v3 = v2;
  v28 = v4;

  if (v3)
  {

    result = sub_1BE4DB5F0();
    v6 = result;
    v7 = 0;
    v27 = *(result + 16);
    v26 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v8 = 24 * v7;
    while (v27 != v7)
    {
      if (v7 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = *(v6 + v8 + 32);
      v9 = *(v6 + v8 + 40);
      v11 = *(v6 + v8 + 48);
      v12 = 0xE500000000000000;
      v13 = 0x6F72746E69;
      switch(v11)
      {
        case 1:
          v13 = sub_1BE4DCF90();
          v12 = 0xEB000000006F666ELL;
          break;
        case 2:
          v13 = 0xD000000000000015;
          v12 = 0x80000001BE5528F0;
          break;
        case 3:
          v13 = 0xD000000000000011;
          v12 = 0x80000001BE552910;
          break;
        case 4:
          v12 = 0xE800000000000000;
          v13 = sub_1BE4DCF58();
          break;
        default:
          break;
      }

      v14 = 0xE500000000000000;
      v15 = 0x6F72746E69;
      switch(v28)
      {
        case 1:
          sub_1BE4DCF20();
          v14 = 0xEB000000006F666ELL;
          break;
        case 2:
          v15 = 0xD000000000000015;
          v14 = 0x80000001BE5528F0;
          break;
        case 3:
          v15 = 0xD000000000000011;
          v14 = 0x80000001BE552910;
          break;
        case 4:
          v14 = 0xE800000000000000;
          sub_1BE4DCEFC();
          break;
        default:
          break;
      }

      if (v13 == v15 && v12 == v14)
      {

LABEL_23:
        v18 = v26;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1BE52B808(0, *(v26 + 16) + 1, 1);
          v18 = v26;
        }

        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_1BE52B808((v19 > 1), v20 + 1, 1);
          v18 = v26;
        }

        ++v7;
        *(v18 + 16) = v20 + 1;
        v26 = v18;
        v21 = v18 + 24 * v20;
        *(v21 + 32) = v10;
        *(v21 + 40) = v9;
        *(v21 + 48) = v11;
        goto LABEL_3;
      }

      v17 = sub_1BE54CCDC();

      if (v17)
      {
        goto LABEL_23;
      }

      v8 += 24;
      ++v7;
    }

    v22 = *(v26 + 16);

    if (v22 <= 1)
    {
      type metadata accessor for GenerativePartnerServiceAnalytics();
      sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE54E1A0;
      *(inited + 32) = 0x6567617473;
      *(inited + 40) = 0xE500000000000000;
      sub_1BE4D9918(v28);
      v24 = sub_1BE54C6DC();

      *(inited + 48) = v24;
      sub_1BE4C70B0();
      v25 = sub_1BE54C61C();
      sub_1BE52D9C4(0, v25);
    }
  }

  return result;
}

uint64_t sub_1BE4DB5F0()
{
  swift_getKeyPath();
  v1 = sub_1BE4DC948();
  sub_1BE4DCEC0(v1, v2, v3, v4, v5, v6, v7, v8, v11, v0);
  sub_1BE54AFCC();

  sub_1BE4DCFA4(v0 + 96, v9);
}

uint64_t sub_1BE4DB664(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1BE4DCB54(v3, a1);

  if (v4)
  {
    *(v1 + 96) = a1;

    return sub_1BE4DB27C(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath, v8);
    v10[2] = v1;
    v10[3] = a1;
    sub_1BE4DC1D0(v9, sub_1BE4DCDC8, v10);
  }
}

uint64_t sub_1BE4DB750(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 96) = a2;

  return sub_1BE4DB27C(v4);
}

uint64_t sub_1BE4DB7C0()
{
  swift_getKeyPath();
  v1 = sub_1BE4DC948();
  sub_1BE4DCEC0(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1BE54AFCC();

  return *(v0 + 104);
}

uint64_t sub_1BE4DB828(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 104) == (result & 1))
  {
    *(v1 + 104) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath, v4);
    v6[2] = v1;
    v7 = v2;
    sub_1BE4DC1D0(v5, sub_1BE4DCB44, v6);
  }

  return result;
}

uint64_t sub_1BE4DB8D0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1BE4DC948();
  sub_1BE4DCEC0(v3, v4, v5, v6, v7, v8, v9, v10, v13, v1);
  sub_1BE54AFCC();

  sub_1BE4DCFA4(v1 + 112, v11);
  return sub_1BE4DCE50(v1 + 112, a1, &qword_1EBDABD30, &qword_1BE54DEC0);
}

uint64_t sub_1BE4DB9A8(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1BE4DC1D0(KeyPath, sub_1BE4DCB28, &v5);

  return sub_1BE4D0E58(a1, &qword_1EBDABD30, &qword_1BE54DEC0);
}

uint64_t sub_1BE4DBA2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1BE4DCE00(a2, a1 + 112, &qword_1EBDABD30, &qword_1BE54DEC0);
  return swift_endAccess();
}

uint64_t sub_1BE4DBAA0()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = sub_1BE4DC948();
  sub_1BE4DCEC0(v2, v3, v4, v5, v6, v7, v8, v9, v12, v0);
  sub_1BE54AFCC();

  v10 = *(v0 + 192);
  sub_1BE4BF0D8(v10, *(v1 + 200));
  return v10;
}

uint64_t sub_1BE4DBB1C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1BE4DBAA0();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1BE4DCAFC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1BE4DBB8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BE4DCAC4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1BE4BF0D8(v1, v2);
  return sub_1BE4DBC1C(v4, v3);
}

uint64_t sub_1BE4DBC1C(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  sub_1BE4DC1D0(KeyPath, sub_1BE4DCAA4, &v7);
  sub_1BE4BF07C(a1, a2);
}

uint64_t sub_1BE4DBCA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 192);
  v4 = *(a1 + 200);
  *(a1 + 192) = a2;
  *(a1 + 200) = a3;
  sub_1BE4BF0D8(a2, a3);
  return sub_1BE4BF07C(v3, v4);
}

uint64_t sub_1BE4DBCF0(char a1, void *a2)
{
  if (a1)
  {
    goto LABEL_2;
  }

  sub_1BE4DAF6C(v10);
  sub_1BE4DB08C(v9);
  sub_1BE4DBECC(v10, v9, __src);
  if (!*(&__src[1] + 1))
  {
    sub_1BE4D0E58(__src, &qword_1EBDABD30, &qword_1BE54DEC0);
LABEL_2:
    v4 = a2[3];
    v5 = a2[4];
    sub_1BE4C52F4(a2, v4);
    (*(v5 + 8))(v4, v5);
    swift_getKeyPath();
    __dst[0] = v2;
    sub_1BE4DC948();
    sub_1BE4DCF10();
    sub_1BE54AFCC();

    __dst[0] = v2;
    swift_getKeyPath();
    sub_1BE4DCF10();
    sub_1BE54AFEC();

    swift_beginAccess();
    sub_1BE4DCEE4();
    sub_1BE4DC9B8(v6);
    sub_1BE4DCFF0();
    sub_1BE4DCF6C();
    v7 = swift_endAccess();
    sub_1BE4DB27C(v7);
    __dst[0] = v2;
    swift_getKeyPath();
    sub_1BE54AFDC();
  }

  memcpy(__dst, __src, 0x50uLL);
  sub_1BE4DB828(1);
  sub_1BE4C6B90(__dst, __src);
  sub_1BE4DB9A8(__src);
  return sub_1BE4DCA74(__dst);
}

double sub_1BE4DBECC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a1 + 24))
  {
    sub_1BE4BF094(a1, v12);
    v6 = *(a2 + 16);
    v9[0] = *a2;
    v9[1] = v6;
    v10 = *(a2 + 32);
    if (*(&v6 + 1))
    {
      sub_1BE4BF094(v9, v11);
      sub_1BE4BF094(v12, __src);
      sub_1BE4BF094(v11, &__src[40]);
      memcpy(a3, __src, 0x50uLL);
      return result;
    }

    sub_1BE4C58A8(v12);
    v8 = v9;
  }

  else
  {
    sub_1BE4D0E58(a2, &qword_1EBDABAF8, &qword_1BE54DC20);
    v8 = a1;
  }

  sub_1BE4D0E58(v8, &qword_1EBDABAF8, &qword_1BE54DC20);
  result = 0.0;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  return result;
}

uint64_t sub_1BE4DBFD4(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2[4];
  sub_1BE4C52F4(a2, v2);
  (*(v3 + 8))(v2, v3);
  swift_getKeyPath();
  sub_1BE4DC948();
  sub_1BE4DCF10();
  sub_1BE54AFCC();

  swift_getKeyPath();
  sub_1BE4DCF10();
  sub_1BE54AFEC();

  swift_beginAccess();
  sub_1BE4DCEE4();
  sub_1BE4DC9B8(v4);
  sub_1BE4DCFF0();
  sub_1BE4DCF6C();
  v5 = swift_endAccess();
  sub_1BE4DB27C(v5);
  swift_getKeyPath();
  sub_1BE54AFDC();
}

void (*sub_1BE4DC120(uint64_t a1))(uint64_t, uint64_t)
{
  result = sub_1BE4DBAA0();
  if (result)
  {
    v4 = result;
    v5 = v3;
    v6 = sub_1BE4DB5F0();
    sub_1BE4D98B8(v6);
    v8 = v7;
    v10 = v9;

    if (v8)
    {
    }

    else
    {
      v10 = 5;
    }

    v4(a1, v10);

    return sub_1BE4BF07C(v4, v5);
  }

  return result;
}

char *sub_1BE4DC258()
{
  sub_1BE4D0E58((v0 + 2), &qword_1EBDABAF8, &qword_1BE54DC20);
  sub_1BE4D0E58((v0 + 7), &qword_1EBDABAF8, &qword_1BE54DC20);

  sub_1BE4D0E58((v0 + 14), &qword_1EBDABD30, &qword_1BE54DEC0);
  sub_1BE4BF07C(v0[24], v0[25]);
  sub_1BE4BF07C(v0[26], v0[27]);

  v1 = OBJC_IVAR____TtC26GenerativePartnerServiceUI26PartnerOnboardingViewModel___observationRegistrar;
  sub_1BE54B00C();
  sub_1BE4C7470();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1BE4DC320()
{
  sub_1BE4DC258();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for PartnerOnboardingViewModel(uint64_t a1)
{
  result = qword_1EDDD64F8;
  if (!qword_1EDDD64F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE4DC3CC(uint64_t a1)
{
  result = sub_1BE54B00C();
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

uint64_t getEnumTagSinglePayload for PartnerOnboardingStageData.Stage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PartnerOnboardingStageData.Stage(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BE4DC5FC(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 sub_1BE4DC618(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BE4DC62C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BE4DC668(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BE4DC6B4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1BE4DC6F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE4DC734(uint64_t result, int a2, int a3)
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

__n128 sub_1BE4DC798(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BE4DC7AC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE4DC7EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BE4DC840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC2B0;
  if (!qword_1EBDAC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC2B0);
  }

  return result;
}

unint64_t sub_1BE4DC898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC2B8;
  if (!qword_1EBDAC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC2B8);
  }

  return result;
}

uint64_t sub_1BE4DC8EC()
{
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = MEMORY[0x1E69E7CC0];
  *(v0 + 104) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = v1;
  sub_1BE54AFFC();
  return v0;
}

unint64_t sub_1BE4DC948()
{
  result = qword_1EBDABD78;
  if (!qword_1EBDABD78)
  {
    type metadata accessor for PartnerOnboardingViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABD78);
  }

  return result;
}

uint64_t sub_1BE4DC9B8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1BE4DCA2C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1BE4DCAC4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_1BE4DCB54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = *(a1 + 48);
    v6 = *(a2 + 48);
    v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v7 || (sub_1BE54CCDC() & 1) != 0)
    {
      v8 = 0;
      for (i = 1; ; ++i)
      {
        v10 = 0xE500000000000000;
        v11 = 0x6F72746E69;
        switch(v5)
        {
          case 1:
            v11 = 0x4979636176697270;
            v10 = 0xEB000000006F666ELL;
            break;
          case 2:
            v11 = 0xD000000000000015;
            v10 = 0x80000001BE5528F0;
            break;
          case 3:
            v11 = 0xD000000000000011;
            v10 = 0x80000001BE552910;
            break;
          case 4:
            v10 = 0xE800000000000000;
            v11 = 0x6574656C706D6F63;
            break;
          default:
            break;
        }

        v12 = 0xE500000000000000;
        v13 = 0x6F72746E69;
        switch(v6)
        {
          case 1:
            v13 = 0x4979636176697270;
            v12 = 0xEB000000006F666ELL;
            break;
          case 2:
            v13 = 0xD000000000000015;
            v12 = 0x80000001BE5528F0;
            break;
          case 3:
            v13 = 0xD000000000000011;
            v12 = 0x80000001BE552910;
            break;
          case 4:
            v12 = 0xE800000000000000;
            v13 = 0x6574656C706D6F63;
            break;
          default:
            break;
        }

        if (v11 == v13 && v10 == v12)
        {
        }

        else
        {
          v15 = sub_1BE54CCDC();

          if ((v15 & 1) == 0)
          {
            return 0;
          }
        }

        if (v2 == i)
        {
          break;
        }

        if (i >= v2)
        {
          __break(1u);
          return result;
        }

        v5 = *(a1 + v8 + 72);
        v6 = *(a2 + v8 + 72);
        v17 = *(a1 + v8 + 56) == *(a2 + v8 + 56) && *(a1 + v8 + 64) == *(a2 + v8 + 64);
        if (!v17 && (sub_1BE54CCDC() & 1) == 0)
        {
          return 0;
        }

        v8 += 24;
      }

      return 1;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1BE4DCE00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1BE4D97E0(a1, a2, a3, a4);
  sub_1BE4C7470();
  (*(v6 + 24))(v4, v5);
  return v4;
}

uint64_t sub_1BE4DCE50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1BE4D97E0(a1, a2, a3, a4);
  sub_1BE4C7470();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1BE4DCF34(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_1BE54C77C();
}

void sub_1BE4DCF6C()
{
  v5 = *(v0 + 96);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 24 * v4;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  *(v6 + 48) = v1;
  *(v0 + 96) = v5;
}

uint64_t sub_1BE4DCFA4(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_1BE4DCFF0()
{
  v3 = *(*(v0 + 96) + 16);

  return sub_1BE4DCA2C(v3, v1);
}

uint64_t sub_1BE4DD014(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BE54CCDC();
}

uint64_t sub_1BE4DD030(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1BE54CCDC();
}

void *sub_1BE4DD0B4(uint64_t a1, ...)
{

  return sub_1BE54CD8C();
}

uint64_t sub_1BE4DD0DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE4DD11C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BE4DD19C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE4BF11C(&qword_1EBDAC2C0, &qword_1BE54EFC8);
  sub_1BE4C7470();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v65 - v6;
  v68 = sub_1BE4BF11C(&qword_1EBDAC2C8, &unk_1BE54EFD0);
  sub_1BE4C7470();
  MEMORY[0x1EEE9AC00](v8, v9);
  v69 = v65 - v10;
  v11 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  sub_1BE4C757C();
  v65[2] = v14 - v13;
  v15 = sub_1BE54AD8C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  sub_1BE4C757C();
  v20 = (v19 - v18);
  v21 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  sub_1BE4C757C();
  v67 = sub_1BE4BF11C(&qword_1EBDABB90, &qword_1BE54DCB8);
  sub_1BE4C7470();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v65 - v25;
  LOBYTE(v25) = *(v1 + 56);
  v66 = v1;
  v27 = *(v1 + 64);
  v70[0] = v25;
  v71 = v27;
  sub_1BE4BF11C(&qword_1EBDAC2D0, &qword_1BE54EFE0);
  sub_1BE54C24C();
  if (LOBYTE(v72[0]) == 3)
  {
    sub_1BE54C65C();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4(&qword_1EBDABA88);
    }

    v28 = sub_1BE4C52BC(v15, qword_1EBDB0C08);
    (*(v16 + 16))(v20, v28, v15);
    sub_1BE54AF2C();
    v29 = type metadata accessor for OnboardingSheetSetup(0);
    sub_1BE54ADBC();
    v30 = v29[7];
    v31 = sub_1BE54ADAC();
    sub_1BE4C63F8(&v7[v30], 1, 1, v31);
    v32 = v29[8];
    v33 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
    sub_1BE4C63F8(&v7[v32], 1, 1, v33);
    v34 = v66;
    sub_1BE4DDFA8(v66, &v7[v29[9]]);
    *v7 = 1;
    *(v7 + 1) = 0;
    v35 = sub_1BE4BF11C(&qword_1EBDAC2D8, &qword_1BE54EFE8);
    v36 = &v7[v35[10]];
    v72[0] = 0;
    sub_1BE4E0240();
    sub_1BE54C23C();
    *v36 = sub_1BE4E0234();
    *(v36 + 1) = v37;
    v38 = &v7[v35[11]];
    v72[0] = 0;
    sub_1BE4E0240();
    sub_1BE54C23C();
    *v38 = sub_1BE4E0234();
    *(v38 + 1) = v39;
    v40 = &v7[v35[12]];
    *v40 = swift_getKeyPath();
    *(v40 + 1) = 0;
    v40[16] = 0;
    *&v7[v35[13]] = 0x407C200000000000;
    v41 = &v7[v35[9]];
    *v41 = sub_1BE4DE3AC;
    v41[1] = 0;
    sub_1BE4DF820(v34, v70);
    v42 = swift_allocObject();
    sub_1BE4E026C(v42);
    v43 = &v7[*(v3 + 36)];
    sub_1BE54B73C();
    sub_1BE54C8EC();
    *v43 = &unk_1BE54F020;
    *(v43 + 1) = v35;
    v44 = &qword_1EBDAC2C0;
    v45 = &qword_1BE54EFC8;
    sub_1BE4E024C(v7);
    swift_storeEnumTagMultiPayload();
    sub_1BE4DFA9C(&qword_1EBDABB88, &qword_1EBDABB90, &qword_1BE54DCB8);
    sub_1BE4DF9C8();
    sub_1BE54BC0C();
    v46 = v7;
  }

  else
  {
    v65[0] = v3;
    v65[1] = a1;
    sub_1BE54C65C();
    if (qword_1EBDABA88 != -1)
    {
      sub_1BE4CE5C4(&qword_1EBDABA88);
    }

    v47 = sub_1BE4C52BC(v15, qword_1EBDB0C08);
    v48 = *(v16 + 16);
    v48(v20, v47, v15);
    sub_1BE54AF2C();
    v49 = type metadata accessor for OnboardingSheetSetup(0);
    sub_1BE4E01EC();
    sub_1BE4DD920(&v26[*(v49 + 28)]);
    v50 = v49;
    v51 = &v26[*(v49 + 32)];
    sub_1BE54C65C();
    v48(v20, v47, v15);
    sub_1BE54AF2C();
    sub_1BE4E01EC();
    v52 = v66;
    sub_1BE4DF820(v66, v70);
    v53 = swift_allocObject();
    sub_1BE4E026C(v53);
    v54 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
    v55 = (v51 + *(v54 + 20));
    *v55 = sub_1BE4DFAF0;
    v55[1] = v20;
    v56 = (v51 + *(v54 + 24));
    *v56 = sub_1BE4D15F4;
    v56[1] = 0;
    sub_1BE4C63F8(v51, 0, 1, v54);
    sub_1BE4DDBE0(v52, &v26[*(v50 + 36)]);
    *v26 = 1;
    *(v26 + 1) = 0;
    v57 = v67;
    v58 = &v26[*(v67 + 40)];
    v72[0] = 0;
    sub_1BE4E0240();
    sub_1BE54C23C();
    *v58 = sub_1BE4E0234();
    *(v58 + 1) = v59;
    v60 = &v26[v57[11]];
    v72[0] = 0;
    sub_1BE4E0240();
    sub_1BE54C23C();
    *v60 = sub_1BE4E0234();
    *(v60 + 1) = v61;
    v62 = &v26[v57[12]];
    *v62 = swift_getKeyPath();
    *(v62 + 1) = 0;
    v62[16] = 0;
    *&v26[v57[13]] = 0x407C200000000000;
    v63 = &v26[v57[9]];
    *v63 = j_nullsub_1;
    v63[1] = 0;
    v44 = &qword_1EBDABB90;
    v45 = &qword_1BE54DCB8;
    sub_1BE4E024C(v26);
    swift_storeEnumTagMultiPayload();
    sub_1BE4DFA9C(&qword_1EBDABB88, &qword_1EBDABB90, &qword_1BE54DCB8);
    sub_1BE4DF9C8();
    sub_1BE54BC0C();
    v46 = v26;
  }

  return sub_1BE4D0E58(v46, v44, v45);
}

uint64_t sub_1BE4DD920@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE54AD8C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v12 = sub_1BE4C52BC(v5, qword_1EBDB0C08);
  (*(v6 + 16))(v9, v12, v5);
  sub_1BE54AF2C();
  sub_1BE54ADBC();
  v13 = sub_1BE54ADAC();
  return sub_1BE4C63F8(a2, 0, 1, v13);
}

uint64_t sub_1BE4DDBE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = sub_1BE54AD8C();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = a1[3];
  v15 = a1[4];
  sub_1BE4C52F4(a1, v14);
  (*(v15 + 216))(__src, v14, v15);
  if (LOBYTE(__src[0]) == 128)
  {
    v16 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);

    return sub_1BE4C63F8(a2, 1, 1, v16);
  }

  else
  {
    sub_1BE54C68C();
    sub_1BE54C67C();
    v18 = a1[3];
    v19 = a1[4];
    sub_1BE4C52F4(a1, v18);
    (*(v19 + 16))(v18, v19);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      swift_once();
    }

    v20 = sub_1BE4C52BC(v6, qword_1EBDB0C08);
    (*(v26 + 16))(v9, v20, v6);
    sub_1BE54AF2C();
    sub_1BE54ADBC();
    sub_1BE4DF820(a1, __src);
    v21 = swift_allocObject();
    memcpy((v21 + 16), __src, 0x48uLL);
    v22 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
    v23 = (a2 + *(v22 + 20));
    *v23 = sub_1BE4DFAF8;
    v23[1] = v21;
    v24 = (a2 + *(v22 + 24));
    *v24 = sub_1BE4D15F4;
    v24[1] = 0;
    return sub_1BE4C63F8(a2, 0, 1, v22);
  }
}

uint64_t sub_1BE4DDFA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = sub_1BE54AD8C();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = a1[3];
  v15 = a1[4];
  sub_1BE4C52F4(a1, v14);
  (*(v15 + 216))(__src, v14, v15);
  if (LOBYTE(__src[0]) == 128)
  {
    v16 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);

    return sub_1BE4C63F8(a2, 1, 1, v16);
  }

  else
  {
    sub_1BE54C68C();
    sub_1BE54C67C();
    v18 = a1[3];
    v19 = a1[4];
    sub_1BE4C52F4(a1, v18);
    (*(v19 + 16))(v18, v19);
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EBDABA88 != -1)
    {
      swift_once();
    }

    v20 = sub_1BE4C52BC(v6, qword_1EBDB0C08);
    (*(v26 + 16))(v9, v20, v6);
    sub_1BE54AF2C();
    sub_1BE54ADBC();
    sub_1BE4DF820(a1, __src);
    v21 = swift_allocObject();
    memcpy((v21 + 16), __src, 0x48uLL);
    v22 = type metadata accessor for OnboardingSheetSetup.ButtonSetup(0);
    v23 = (a2 + *(v22 + 20));
    *v23 = sub_1BE4E01BC;
    v23[1] = v21;
    v24 = (a2 + *(v22 + 24));
    *v24 = sub_1BE4D15F4;
    v24[1] = 0;
    return sub_1BE4C63F8(a2, 0, 1, v22);
  }
}

uint64_t sub_1BE4DE364(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_1BE4C6918(a1, v3);
  v3[40] = 0;
  v1(v3);
  return sub_1BE4C6AB4(v3);
}

uint64_t sub_1BE4DE3AC@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54B66C();
  v2 = sub_1BE54C1AC();
  KeyPath = swift_getKeyPath();
  result = sub_1BE4BF11C(&qword_1EBDAC310, &qword_1BE54F090);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_1BE4DE410()
{
  v0[2] = sub_1BE54C8CC();
  v0[3] = sub_1BE54C8BC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BE4DE4BC;

  return sub_1BE4DE640();
}

uint64_t sub_1BE4DE4BC()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  v4 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE4DE5E8, v4, v3);
}

uint64_t sub_1BE4DE5E8()
{
  sub_1BE4E01D4();

  sub_1BE4E01E0();

  return v0();
}

uint64_t sub_1BE4DE640()
{
  v1[20] = v0;
  v2 = sub_1BE54B3DC();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  sub_1BE54C8CC();
  v1[24] = sub_1BE54C8BC();
  v4 = sub_1BE54C87C();
  v1[25] = v4;
  v1[26] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BE4DE734, v4, v3);
}

uint64_t sub_1BE4DE734()
{
  if (qword_1EBDABA70 != -1)
  {
    swift_once();
  }

  if (byte_1EBDB0BF0 == 1)
  {
    sub_1BE4C6918(v0[20], (v0 + 15));
    type metadata accessor for ExternalAIAuthenticatorHelper(0);
    swift_allocObject();
    v0[27] = sub_1BE534D4C(v0 + 15);
    v1 = swift_task_alloc();
    v0[28] = v1;
    *v1 = v0;
    v1[1] = sub_1BE4DE930;

    return sub_1BE533AE4();
  }

  else
  {

    if (qword_1EBDABAB8 != -1)
    {
      sub_1BE4C7514(&qword_1EBDABAB8);
    }

    v3 = sub_1BE54B2EC();
    sub_1BE4C52BC(v3, qword_1EBDB0C68);
    v4 = sub_1BE54B2BC();
    v5 = sub_1BE54C98C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BE4B8000, v4, v5, "Current process does not have Anvil entitlements, falling back to punchout", v6, 2u);
      MEMORY[0x1BFB48AC0](v6, -1, -1);
    }

    sub_1BE4DEDB8();

    sub_1BE4E01E0();

    return v7();
  }
}

uint64_t sub_1BE4DE930()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v3 = v2;
  v4 = *v1;
  sub_1BE4E01C4();
  *v5 = v4;
  v3[29] = v0;

  if (v0)
  {
    v6 = v3[25];
    v7 = v3[26];
    v8 = sub_1BE4DEB9C;
  }

  else
  {
    (*(v3[22] + 8))(v3[23], v3[21]);

    v6 = v3[25];
    v7 = v3[26];
    v8 = sub_1BE4DEA58;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1BE4DEA58()
{
  v1 = *(v0 + 160);

  type metadata accessor for GenerativePartnerServiceAnalytics();
  sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE54E1A0;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_1BE54C6DC();
  sub_1BE4C70B0();
  v3 = sub_1BE54C61C();
  sub_1BE52D9C4(3, v3);

  v4 = *(v1 + 40);
  sub_1BE4C6918(v1, v0 + 72);
  *(v0 + 112) = 1;
  v4(v0 + 72);
  sub_1BE4C6AB4(v0 + 72);

  sub_1BE4E01E0();

  return v5();
}

uint64_t sub_1BE4DEB9C()
{
  sub_1BE4E01D4();

  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_1BE4DEC38;
  v2 = *(v0 + 232);

  return sub_1BE4DF200(v2);
}

uint64_t sub_1BE4DEC38()
{
  sub_1BE4E01D4();
  v1 = *v0;
  v2 = *v0;
  sub_1BE4E01C4();
  *v3 = v2;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1BE4DED4C, v5, v4);
}

uint64_t sub_1BE4DED4C()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 232);

  sub_1BE4E01E0();

  return v2();
}

void sub_1BE4DEDB8()
{
  v1 = v0;
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v24 - v4;
  v6 = sub_1BE54AE3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativePartnerServiceAnalytics();
  sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
  inited = swift_initStackObject();
  v24 = xmmword_1BE54E1A0;
  *(inited + 16) = xmmword_1BE54E1A0;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_1BE54C6DC();
  sub_1BE4C70B0();
  v12 = sub_1BE54C61C();
  sub_1BE52D9C4(3, v12);

  v13 = [objc_opt_self() defaultWorkspace];
  if (v13)
  {
    v14 = v13;
    sub_1BE4BF11C(&qword_1EBDAC308, &qword_1BE551D60);
    sub_1BE54ACDC();
    v15 = swift_allocObject();
    *(v15 + 16) = v24;
    sub_1BE54ACCC();
    v25 = v15;
    sub_1BE4E0A98(MEMORY[0x1E69E7CC0]);
    sub_1BE54AE1C();
    if (sub_1BE4C63BC(v5, 1, v6) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1BE54AE2C();

      v16 = *(v7 + 8);
      v16(v5, v6);
      v17 = sub_1BE54ADFC();
      v18 = sub_1BE54C61C();
      sub_1BE4E004C(v17, v18, v14);

      v19 = *(v1 + 40);
      v25 = 2;
      v26 = 0u;
      v27 = 0u;
      v28 = 2;
      v19(&v25);

      sub_1BE4C6AB4(&v25);
      v16(v10, v6);
    }
  }

  else
  {
    if (qword_1EBDABAB8 != -1)
    {
      swift_once();
    }

    v20 = sub_1BE54B2EC();
    sub_1BE4C52BC(v20, qword_1EBDB0C68);
    v21 = sub_1BE54B2BC();
    v22 = sub_1BE54C98C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1BE4B8000, v21, v22, "Punchout failed: LSApplicationWorkspace.default() returns nil", v23, 2u);
      MEMORY[0x1BFB48AC0](v23, -1, -1);
    }
  }
}

uint64_t sub_1BE4DF200(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1BE54CB8C();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  sub_1BE54C8CC();
  v2[23] = sub_1BE54C8BC();
  v5 = sub_1BE54C87C();
  v2[24] = v5;
  v2[25] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BE4DF2F4, v5, v4);
}

uint64_t sub_1BE4DF2F4()
{
  sub_1BE4E021C();
  if (qword_1EBDABAB8 != -1)
  {
    sub_1BE4C7514(&qword_1EBDABAB8);
  }

  v1 = *(v0 + 144);
  v2 = sub_1BE54B2EC();
  sub_1BE4C52BC(v2, qword_1EBDB0C68);
  v3 = v1;
  v4 = sub_1BE54B2BC();
  v5 = sub_1BE54C98C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BE4B8000, v4, v5, "Anvil sign in failed: %{public}@", v7, 0xCu);
    sub_1BE4D0E58(v8, &qword_1EBDAC2F0, &qword_1BE54F880);
    MEMORY[0x1BFB48AC0](v8, -1, -1);
    MEMORY[0x1BFB48AC0](v7, -1, -1);
  }

  v11 = *(v0 + 144);

  *(v0 + 217) = sub_1BE537CBC(v11);
  type metadata accessor for GenerativePartnerServiceAnalytics();
  sub_1BE4BF11C(&qword_1EBDABD90, &unk_1BE54E420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE54E1A0;
  *(inited + 32) = 0x746C75736572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = sub_1BE54C6DC();
  sub_1BE4C70B0();
  v13 = sub_1BE54C61C();
  sub_1BE52D9C4(3, v13);

  sub_1BE54CDDC();
  sub_1BE54CD2C();
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_1BE4DF5E4;

  return sub_1BE4DFB14();
}

uint64_t sub_1BE4DF5E4()
{
  sub_1BE4E021C();
  v2 = *v1;
  v3 = *v1;
  sub_1BE4E01C4();
  *v4 = v3;
  *v4 = *v1;

  v5 = v2[22];
  v6 = v2[21];
  v7 = v2[20];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = v3[24];
    v9 = v3[25];
    v10 = sub_1BE4E01C0;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = v3[24];
    v9 = v3[25];
    v10 = sub_1BE4DF76C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1BE4DF76C()
{
  v1 = *(v0 + 217);
  v2 = *(v0 + 152);

  v3 = *(v2 + 64);
  *(v0 + 128) = *(v2 + 56);
  *(v0 + 136) = v3;
  *(v0 + 216) = v1;
  sub_1BE4BF11C(&qword_1EBDAC2D0, &qword_1BE54EFE0);
  sub_1BE54C25C();

  sub_1BE4E01E0();

  return v4();
}

uint64_t sub_1BE4DF858()
{
  sub_1BE4E01D4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BE4DF8E8;

  return sub_1BE4DE410();
}

uint64_t sub_1BE4DF8E8()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  sub_1BE4E01E0();

  return v3();
}

unint64_t sub_1BE4DF9C8()
{
  result = qword_1EBDAC2E0;
  if (!qword_1EBDAC2E0)
  {
    sub_1BE4C5948(&qword_1EBDAC2C0, &qword_1BE54EFC8);
    sub_1BE4DFA9C(&qword_1EBDAC2E8, &qword_1EBDAC2D8, &qword_1BE54EFE8);
    sub_1BE4DFFAC(&qword_1EBDABCA0, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC2E0);
  }

  return result;
}

uint64_t sub_1BE4DFA9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BE4C5948(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BE4DFB14()
{
  sub_1BE4E021C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_1BE54CB7C();
  *(v1 + 64) = v12;
  *(v1 + 72) = *(v12 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BE4DFC10, 0, 0);
}

uint64_t sub_1BE4DFC10()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1BE54CB8C();
  v5 = sub_1BE4DFFAC(&qword_1EBDAC2F8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1BE54CD0C();
  sub_1BE4DFFAC(&qword_1EBDAC300, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1BE54CB9C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1BE4DFDA0;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1BE4DFDA0()
{
  sub_1BE4E021C();
  sub_1BE4E0228();
  v3 = v2;
  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[8];
  v7 = *v1;
  sub_1BE4E01C4();
  *v8 = v7;
  v3[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BE4DFF48, 0, 0);
  }

  else
  {

    sub_1BE4E01E0();

    return v9();
  }
}

uint64_t sub_1BE4DFF48()
{
  sub_1BE4E01D4();

  sub_1BE4E01E0();

  return v0();
}

uint64_t sub_1BE4DFFAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BE4DFFF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE54B9BC();
  *a1 = result;
  return result;
}

id sub_1BE4E004C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1BE54C5DC();

  v6 = [a3 openSensitiveURL:a1 withOptions:v5];

  return v6;
}

uint64_t sub_1BE4E00D0()
{
  sub_1BE4C58A8((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

unint64_t sub_1BE4E0118()
{
  result = qword_1EBDAC318;
  if (!qword_1EBDAC318)
  {
    sub_1BE4C5948(&qword_1EBDAC320, qword_1BE54F098);
    sub_1BE4DFA9C(&qword_1EBDABB88, &qword_1EBDABB90, &qword_1BE54DCB8);
    sub_1BE4DF9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC318);
  }

  return result;
}

uint64_t sub_1BE4E01EC()
{

  return sub_1BE54ADBC();
}

uint64_t sub_1BE4E024C(uint64_t a1)
{
  v5 = *(v3 - 192);

  return sub_1BE4C6EFC(a1, v5, v1, v2);
}

void *sub_1BE4E026C(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 - 176), 0x48uLL);
}

uint64_t (*EnvironmentValues.settingsPaneDismissAction.getter(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  sub_1BE4E0370(a1, a2, a3);
  sub_1BE54B9FC();
  if (!v5)
  {
    return 0;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  *(v3 + 24) = v6;
  return sub_1BE4E03C4;
}

unint64_t sub_1BE4E0370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC328;
  if (!qword_1EBDAC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC328);
  }

  return result;
}

uint64_t EnvironmentValues.settingsPaneDismissAction.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    a1 = swift_allocObject();
    *(a1 + 16) = v4;
    *(a1 + 24) = a2;
  }

  sub_1BE4E0370(a1, a2, a3);
  return sub_1BE54BA0C();
}

uint64_t (*EnvironmentValues.settingsPaneDismissAction.modify(uint64_t (**a1)(), uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  a1[2] = v3;
  *a1 = EnvironmentValues.settingsPaneDismissAction.getter(a1, a2, a3);
  a1[1] = v5;
  return sub_1BE4E04BC;
}

uint64_t sub_1BE4E04BC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = sub_1BE4E0628();
    sub_1BE4BF0D8(v2, v3);
    v4 = sub_1BE4E0628();
    EnvironmentValues.settingsPaneDismissAction.setter(v4, v5, v6);
    v7 = sub_1BE4E0628();

    return sub_1BE4DCEBC(v7, v8);
  }

  else
  {
    v10 = sub_1BE4E0628();
    return EnvironmentValues.settingsPaneDismissAction.setter(v10, v11, v12);
  }
}

uint64_t getEnumTagSinglePayload for GenerativePartnerSettingsPaneDismissActionKey(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for GenerativePartnerSettingsPaneDismissActionKey(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t static GenerativePartnerSettingsDeepLinks.deepLinkURL(action:queryItems:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v11 - v4;
  sub_1BE4BF11C(&qword_1EBDAC308, &qword_1BE551D60);
  sub_1BE54ACDC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BE54E1A0;
  v7 = v6;
  sub_1BE54ACCC();

  v11[1] = v7;

  sub_1BE4E0A98(v8);
  sub_1BE54AE1C();
  v9 = sub_1BE54AE3C();
  result = sub_1BE4C63BC(v5, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1BE54AE2C();

    return (*(*(v9 - 8) + 8))(v5, v9);
  }

  return result;
}

uint64_t static GenerativePartnerSettingsDeepLinks.deepLinkURL(destination:)@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54ADDC();
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v8 - v4;
  sub_1BE54AE1C();
  v6 = sub_1BE54AE3C();
  result = sub_1BE4C63BC(v5, 1, v6);
  if (result != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t GenerativePartnerSettingsDeepLinks.Action.rawValue.getter()
{
  result = 0x655365676E616863;
  switch(*v0)
  {
    case 1:
      result = 0x6E496E676973;
      break;
    case 2:
      result = 0x74754F6E676973;
      break;
    case 3:
      result = 0x5065646172677075;
      break;
    case 4:
      result = 0x6168437055746573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BE4E0A98(uint64_t a1)
{
  result = sub_1BE4E1F64(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BE542670(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1BE54ACDC();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BE4E0B88(uint64_t a1)
{
  result = sub_1BE4E1F64(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1BE542688(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t static GenerativePartnerSettingsDeepLinks.Destination.entityIdentifier(for:)@<X0>(BOOL *a3@<X8>)
{

  v4 = sub_1BE54CC0C();

  *a3 = v4 != 0;
  return result;
}

uint64_t GenerativePartnerSettingsDeepLinks.Destination.init(rawValue:)()
{
  sub_1BE4E1F54();
  v1 = sub_1BE54CC0C();

  *v0 = v1 != 0;
  return result;
}

GenerativePartnerServiceUI::GenerativePartnerSettingsDeepLinks::Action_optional __swiftcall GenerativePartnerSettingsDeepLinks.Action.init(rawValue:)(Swift::String rawValue)
{
  sub_1BE4E1F54();
  v2 = sub_1BE54CC0C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BE4E0DE8@<X0>(uint64_t *a1@<X8>)
{
  result = GenerativePartnerSettingsDeepLinks.Action.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GenerativePartnerServiceUI::GenerativePartnerSettingsDeepLinks::Origin_optional __swiftcall GenerativePartnerSettingsDeepLinks.Origin.init(rawValue:)(Swift::String rawValue)
{
  sub_1BE4E1F54();
  v2 = sub_1BE54CC0C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t GenerativePartnerSettingsDeepLinks.Origin.rawValue.getter()
{
  result = 0x54504774616863;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 1769105779;
      break;
    case 3:
      result = 0x54676E6974697277;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BE4E0F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC330;
  if (!qword_1EBDAC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC330);
  }

  return result;
}

unint64_t sub_1BE4E0F58()
{
  result = qword_1EBDAC338;
  if (!qword_1EBDAC338)
  {
    sub_1BE4C5948(&qword_1EBDAC340, &qword_1BE54F1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC338);
  }

  return result;
}

unint64_t sub_1BE4E0FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BE4E0FE4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BE4E0FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC348;
  if (!qword_1EBDAC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC348);
  }

  return result;
}

unint64_t sub_1BE4E103C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC350;
  if (!qword_1EBDAC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC350);
  }

  return result;
}

unint64_t sub_1BE4E1090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BE4E10B8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BE4E10B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC358;
  if (!qword_1EBDAC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC358);
  }

  return result;
}

unint64_t sub_1BE4E111C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC360;
  if (!qword_1EBDAC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC360);
  }

  return result;
}

unint64_t sub_1BE4E1194@<X0>(unint64_t *a1@<X8>)
{
  result = GenerativePartnerSettingsDeepLinks.Origin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BE4E11BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BE4E11E4(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BE4E11E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAC368;
  if (!qword_1EBDAC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAC368);
  }

  return result;
}

_BYTE *sub_1BE4E1244(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GenerativePartnerSettingsDeepLinks.Action(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativePartnerSettingsDeepLinks.Origin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GenerativePartnerSettingsDeepLinks.Origin(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BE4E1524(uint64_t a1, unint64_t a2)
{
  v32 = 63;
  v33 = 0xE100000000000000;
  v31 = &v32;

  v4 = sub_1BE4E1B68(0x7FFFFFFFFFFFFFFFLL, 1, sub_1BE4E1F04, v30, a1, a2);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];
  }

  else
  {

    v9 = sub_1BE4E1780(sub_1BE4E177C, 0, a1, a2);
    v5 = v9;
    v6 = v10;
    v7 = v11;
    v8 = v12;
  }

  v32 = 47;
  v33 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v9, v10);
  v29[2] = &v32;
  v13 = sub_1BE4E17B4(0x7FFFFFFFFFFFFFFFLL, 1u, sub_1BE4E1F30, v29, v5, v6, v7, v8);
  v14 = *(v13 + 16);
  if (v14)
  {
    v32 = MEMORY[0x1E69E7CC0];
    result = sub_1BE52B7C8(0, v14, 0);
    v16 = 0;
    v17 = v32;
    v18 = (v13 + 56);
    while (v16 < *(v13 + 16))
    {
      v19 = *(v18 - 3);
      v20 = *(v18 - 2);
      v21 = *(v18 - 1);
      v22 = *v18;

      v23 = MEMORY[0x1BFB47C70](v19, v20, v21, v22);
      v25 = v24;

      v32 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_1BE52B7C8((v26 > 1), v27 + 1, 1);
        v17 = v32;
      }

      ++v16;
      *(v17 + 16) = v27 + 1;
      v28 = v17 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v18 += 4;
      if (v14 == v16)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1BE4E17B4(uint64_t a1, unsigned __int8 a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v53[3] = a7;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v17 = a5 >> 14;
  v14 = a6 >> 14;
  if (a1 && v17 != v14)
  {
    v9 = a4;
    v51 = MEMORY[0x1E69E7CC0];
    v11 = a5;
    do
    {
      v49 = v11;
      while (1)
      {
        v18 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          v11 = v49;
          goto LABEL_24;
        }

        v13 = a8;
        v19 = sub_1BE54CA0C();
        v21 = v20;
        v53[0] = v19;
        v53[1] = v20;
        v22 = a3(v53);
        if (v10)
        {

          return v21;
        }

        v23 = v22;

        if (v23)
        {
          break;
        }

        a8 = v13;
        v11 = sub_1BE54C9FC();
      }

      v25 = (v49 >> 14 == v18) & a2;
      a8 = v13;
      if (!v25)
      {
        if (v18 < v49 >> 14)
        {
          __break(1u);
          return result;
        }

        v50 = sub_1BE54CA1C();
        v45 = v27;
        v46 = v26;
        v44 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BE541DB4();
          v51 = v31;
        }

        v29 = *(v51 + 16);
        if (v29 >= *(v51 + 24) >> 1)
        {
          sub_1BE541DB4();
          v51 = v32;
        }

        *(v51 + 16) = v29 + 1;
        v30 = (v51 + 32 * v29);
        v30[4] = v50;
        v30[5] = v46;
        v30[6] = v45;
        v30[7] = v44;
        a8 = v13;
      }

      v11 = sub_1BE54C9FC();
    }

    while (v25 || *(v51 + 16) != a1);
LABEL_24:
    if (v11 >> 14 == v14 && (a2 & 1) != 0)
    {

      return v51;
    }

    v21 = v51;
    if (v14 >= v11 >> 14)
    {
      v9 = sub_1BE54CA1C();
      v11 = v38;
      v13 = v39;
      v14 = v40;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_32:
      v15 = *(v21 + 16);
      v37 = *(v21 + 24);
LABEL_33:
      v12 = v15 + 1;
      if (v15 < v37 >> 1)
      {
LABEL_34:
        *(v21 + 16) = v12;
        v41 = (v21 + 32 * v15);
        v41[4] = v9;
        v41[5] = v11;
        v41[6] = v13;
        v41[7] = v14;
        return v21;
      }

LABEL_37:
      sub_1BE541DB4();
      v21 = v42;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    sub_1BE541DB4();
    v21 = v43;
    goto LABEL_32;
  }

  if (v17 != v14 || (a2 & 1) == 0)
  {
    if (v14 >= v17)
    {
      v9 = sub_1BE54CA1C();
      v11 = v33;
      v13 = v34;
      v14 = v35;

      sub_1BE541DB4();
      v21 = v36;
      v15 = *(v36 + 16);
      v37 = *(v36 + 24);
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_39;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BE4E1B68(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v50 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v14 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v15 = HIBYTE(a6) & 0xF) : (v15 = a5 & 0xFFFFFFFFFFFFLL), !v15))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v14 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1BE54C7DC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    sub_1BE541DB4();
    v16 = v33;
    v9 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < v34 >> 1)
    {
LABEL_38:
      *(v16 + 16) = v10;
      v38 = (v16 + 32 * v9);
      v38[4] = v7;
      v38[5] = v11;
      v38[6] = v12;
      v38[7] = v13;
      return v16;
    }

LABEL_41:
    sub_1BE541DB4();
    v16 = v39;
    goto LABEL_38;
  }

  v7 = a4;
  v16 = 4 * v15;
  v48 = MEMORY[0x1E69E7CC0];
  v17 = 15;
  while (1)
  {
    v46 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v16)
      {
        v17 = v46;
        goto LABEL_30;
      }

      v18 = sub_1BE54C7CC();
      v12 = v19;
      v49[0] = v18;
      v49[1] = v19;
      v20 = v50(v49);
      if (v8)
      {

        return v16;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_1BE54C78C();
    }

    v23 = (v46 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v46 >> 14)
    {
      break;
    }

    v47 = sub_1BE54C7DC();
    v42 = v25;
    v43 = v24;
    v41 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BE541DB4();
      v48 = v28;
    }

    v13 = *(v48 + 16);
    v12 = v13 + 1;
    if (v13 >= *(v48 + 24) >> 1)
    {
      sub_1BE541DB4();
      v48 = v29;
    }

    *(v48 + 16) = v12;
    v27 = (v48 + 32 * v13);
    v27[4] = v47;
    v27[5] = v43;
    v27[6] = v42;
    v27[7] = v41;
LABEL_20:
    v17 = sub_1BE54C78C();
    if ((v23 & 1) == 0 && *(v48 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v48;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_1BE54C7DC();
        v11 = v35;
        v12 = v36;
        v13 = v37;

        v16 = v48;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v16 + 16);
          v34 = *(v16 + 24);
          goto LABEL_37;
        }
      }

      sub_1BE541DB4();
      v16 = v40;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1BE4E1F7C@<X0>(uint64_t (**a1)()@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>))()
{
  result = EnvironmentValues.settingsPaneDismissAction.getter(a2, a3, a4);
  if (result)
  {
    v7 = result;
    v8 = v6;
    result = swift_allocObject();
    *(result + 2) = v7;
    *(result + 3) = v8;
    v9 = sub_1BE4D9304;
  }

  else
  {
    v9 = 0;
  }

  *a1 = v9;
  a1[1] = result;
  return result;
}

uint64_t sub_1BE4E1FEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BE4D92A8;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1BE4BF0D8(v1, v2);
  return EnvironmentValues.settingsPaneDismissAction.setter(v4, v3, v5);
}

uint64_t sub_1BE4E2078()
{
  sub_1BE4E01D4();
  v1[15] = v2;
  v1[16] = v0;
  v1[17] = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  v1[18] = swift_task_alloc();
  sub_1BE54C8CC();
  v1[19] = sub_1BE54C8BC();
  v4 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE4E213C, v4, v3);
}

uint64_t sub_1BE4E213C()
{
  v49 = v0;
  v1 = v0[15];

  if (!v1 || (v2 = sub_1BE4E279C(v0[15])) == 0)
  {
    if (qword_1EBDABAB0 == -1)
    {
LABEL_17:
      v27 = sub_1BE54B2EC();
      sub_1BE4C52BC(v27, qword_1EBDB0C50);
      v28 = sub_1BE54B2BC();
      v29 = sub_1BE54C98C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1BE4B8000, v28, v29, "[Deep Links] Unable to convert resourceDictionary: NSDictionary to [String: Any]", v30, 2u);
        MEMORY[0x1BFB48AC0](v30, -1, -1);
      }

      goto LABEL_25;
    }

LABEL_30:
    sub_1BE4E43AC(&qword_1EBDABAB0);
    goto LABEL_17;
  }

  v3 = v2;
  sub_1BE4BF11C(&qword_1EBDAC370, &qword_1BE550530);
  v4 = sub_1BE54CBDC();
  v5 = 0;
  v6 = v3 + 64;
  sub_1BE4E43EC();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v46 = v12 + 8;
  v47 = v12;
  v45 = v3;
  if ((v8 & v7) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = (*(v3 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1BE4C6FB8(*(v3 + 56) + 32 * v16, (v0 + 2));
      sub_1BE4C6FB8((v0 + 2), (v0 + 6));

      if (swift_dynamicCast())
      {
        v20 = v0[13];
        v21 = v0[14];
      }

      else
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }

      sub_1BE4C58A8(v0 + 2);
      *(v46 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v22 = (v47[6] + 16 * v16);
      *v22 = v19;
      v22[1] = v18;
      v23 = (v47[7] + 16 * v16);
      *v23 = v20;
      v23[1] = v21;
      v24 = v47[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v4 = v47;
      v47[2] = v26;
      v3 = v45;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_5:
  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v5 >= v11)
    {
      break;
    }

    v15 = *(v6 + 8 * v5);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v9 = (v15 - 1) & v15;
      goto LABEL_10;
    }
  }

  if (qword_1EBDABAB0 != -1)
  {
    sub_1BE4E43AC(&qword_1EBDABAB0);
  }

  v31 = sub_1BE54B2EC();
  sub_1BE4C52BC(v31, qword_1EBDB0C50);

  v32 = sub_1BE54B2BC();
  v33 = sub_1BE54C97C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v35;
    *v34 = 136446210;
    v36 = sub_1BE54C60C();
    v38 = sub_1BE4C5338(v36, v37, &v48);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1BE4B8000, v32, v33, "[Deep Links] resourceDictionary dump:\n%{public}s", v34, 0xCu);
    sub_1BE4C58A8(v35);
    MEMORY[0x1BFB48AC0](v35, -1, -1);
    MEMORY[0x1BFB48AC0](v34, -1, -1);
  }

  v39 = v0[17];
  v40 = v0[18];
  v41 = v0[16];
  sub_1BE54AECC();
  *(v40 + *(v39 + 20)) = v4;
  v42 = OBJC_IVAR____TtC26GenerativePartnerServiceUI40GenerativePartnerSettingsPanelController_deepLinkParams;
  swift_beginAccess();
  sub_1BE4E3630(v40, v41 + v42);
  swift_endAccess();
LABEL_25:

  sub_1BE4E01E0();

  return v43();
}

unint64_t sub_1BE4E255C(void *a1)
{
  if (a1[2])
  {
    sub_1BE4BF11C(&qword_1EBDAC3A0, &qword_1BE54F510);
    v2 = sub_1BE54CBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  sub_1BE4E43EC();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v7)
        {

          return v2;
        }

        v5 = a1[v10 + 8];
        ++v9;
        if (v5)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    v12 = (a1[6] + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1BE4C6FB8(a1[7] + 32 * v11, v25);
    *&v24 = v13;
    *(&v24 + 1) = v14;
    v22[2] = v24;
    v23[0] = v25[0];
    v23[1] = v25[1];
    v15 = v24;
    sub_1BE4E3E7C(v23, v22);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    result = sub_1BE52F67C(v15, *(&v15 + 1));
    v16 = result;
    if (v17)
    {
      *(v2[6] + 16 * result) = v15;

      *(v2[7] + v16) = v21 & 1;
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_20;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      *(v2[7] + result) = v21 & 1;
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_21;
      }

      v2[2] = v20;
      v9 = v10;
    }
  }

  return 0;
}

unint64_t sub_1BE4E279C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BE4BF11C(&qword_1EBDAC3B0, &qword_1BE54F570);
    v2 = sub_1BE54CBEC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1BE4E42EC(*(a1 + 48) + 40 * v10, __src);
    sub_1BE4C6FB8(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1BE4E42EC(__dst, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1BE4C6FB8(&__dst[40], v20);
    sub_1BE4E4348(__dst, &qword_1EBDAC3B8, &qword_1BE54F578);
    v21 = v18;
    sub_1BE4E3E7C(v20, v22);
    v11 = v21;
    sub_1BE4E3E7C(v22, v23);
    sub_1BE4E3E7C(v23, &v21);
    result = sub_1BE52F67C(v11, *(&v11 + 1));
    v12 = result;
    if (v13)
    {
      *(v2[6] + 16 * result) = v11;

      v14 = (v2[7] + 32 * v12);
      sub_1BE4C58A8(v14);
      result = sub_1BE4E3E7C(&v21, v14);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1BE4E3E7C(&v21, (v2[7] + 32 * result));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v8 = v9;
    }
  }

  sub_1BE4E4348(__dst, &qword_1EBDAC3B8, &qword_1BE54F578);

  return 0;
}

uint64_t sub_1BE4E2ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1BE54C8CC();
  v3[5] = sub_1BE54C8BC();
  v5 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE4E2B78, v5, v4);
}

uint64_t sub_1BE4E2B78()
{
  sub_1BE4E4418();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  if (v1)
  {
    v3 = sub_1BE54C5FC();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1BE4E2C6C;

  return sub_1BE4E2078();
}

uint64_t sub_1BE4E2C6C()
{
  sub_1BE4E4418();
  sub_1BE4E0228();
  v2 = v1;
  v3 = *(v1 + 48);
  v4 = *(v1 + 32);
  v5 = *v0;
  sub_1BE4E01C4();
  *v6 = v5;

  if (v3)
  {
    v7 = *(v2 + 48);
    v7[2](v7);
    _Block_release(v7);
  }

  sub_1BE4E01E0();

  return v8();
}

uint64_t sub_1BE4E2DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = sub_1BE54C91C();
  sub_1BE4C63F8(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1BE54F538;
  v10[5] = v9;
  sub_1BE4E3864(0, 0, v7, &unk_1BE54F548, v10);
}

id GenerativePartnerSettingsPanelController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE54C6DC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GenerativePartnerSettingsPanelController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC26GenerativePartnerServiceUI40GenerativePartnerSettingsPanelController_deepLinkParams];
  sub_1BE54AECC();
  *&v6[*(type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0) + 20)] = 0;
  if (a2)
  {
    v7 = sub_1BE54C6DC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for GenerativePartnerSettingsPanelController(0);
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id GenerativePartnerSettingsPanelController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GenerativePartnerSettingsPanelController.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC26GenerativePartnerServiceUI40GenerativePartnerSettingsPanelController_deepLinkParams];
  sub_1BE54AECC();
  *&v3[*(type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0) + 20)] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for GenerativePartnerSettingsPanelController(0);
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id GenerativePartnerSettingsPanelController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativePartnerSettingsPanelController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall GenerativePartnerSettingsPanelController.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_1BE4BF11C(&qword_1EBDAC380, &qword_1BE54F470);
  v7 = v6 - 8;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v39[-v13 - 8];
  v15 = type metadata accessor for GenerativePartnerSettingsPanelController(0);
  v40.receiver = v1;
  v40.super_class = v15;
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v16 = OBJC_IVAR____TtC26GenerativePartnerServiceUI40GenerativePartnerSettingsPanelController_deepLinkParams;
  swift_beginAccess();
  sub_1BE4E3D68(v1 + v16, v5);
  GenerativePartnerSettingsPanelView.init(identifiablePathParams:)(v5, v17, v18, v19, v20, v21, v22, v23, v38, *v39, *&v39[8], *&v39[16], v40.receiver, v40.super_class, v41, v42, v43, v44, v45, v46);
  KeyPath = swift_getKeyPath();
  v25 = &v14[*(v7 + 44)];
  *v25 = KeyPath;
  v25[1] = sub_1BE4E348C;
  v25[2] = 0;
  sub_1BE4E4100(v14, v11, &qword_1EBDAC380, &qword_1BE54F470);
  v26 = objc_allocWithZone(sub_1BE4BF11C(&qword_1EBDAC388, qword_1BE54F4A0));
  v27 = sub_1BE54BB2C();
  v28 = [v27 view];
  if (v28)
  {
    v29 = v28;
    v30 = [v1 view];
    if (v30)
    {
      v31 = v30;
      [v30 addSubview_];

      v32 = [v1 view];
      if (v32)
      {
        v33 = v32;
        [v32 bounds];
        v35 = v34;
        v37 = v36;

        [v29 setFrame_];
        [v29 setAutoresizingMask_];
        [v1 addChildViewController_];
        [v27 didMoveToParentViewController_];

        sub_1BE4E4348(v14, &qword_1EBDAC380, &qword_1BE54F470);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1BE4E4348(v14, &qword_1EBDAC380, &qword_1BE54F470);
  }
}

void sub_1BE4E348C()
{
  v0 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v9 - v2;
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    sub_1BE54AE1C();
    v6 = sub_1BE54AE3C();
    v7 = 0;
    if (sub_1BE4C63BC(v3, 1, v6) != 1)
    {
      v7 = sub_1BE54ADFC();
      (*(*(v6 - 8) + 8))(v3, v6);
    }

    v8 = sub_1BE54C61C();
    sub_1BE4E004C(v7, v8, v5);
  }
}

uint64_t sub_1BE4E3630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4E3694(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BE4E43A8;

  return v6();
}

uint64_t sub_1BE4E377C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1BE4DF8E8;

  return v7();
}

uint64_t sub_1BE4E3864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v23 - v11;
  sub_1BE4E4100(a3, v23 - v11, &qword_1EBDAC3A8, &qword_1BE550DA0);
  v13 = sub_1BE54C91C();
  if (sub_1BE4C63BC(v12, 1, v13) == 1)
  {
    sub_1BE4E4348(v12, &qword_1EBDAC3A8, &qword_1BE550DA0);
  }

  else
  {
    sub_1BE54C90C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1BE54C87C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1BE54C75C() + 32;
      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;

      if (v16 | v14)
      {
        v24[0] = 0;
        v24[1] = 0;
        v19 = v24;
        v24[2] = v14;
        v24[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17;
      v21 = swift_task_create();

      sub_1BE4E4348(a3, &qword_1EBDAC3A8, &qword_1BE550DA0);

      return v21;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BE4E4348(a3, &qword_1EBDAC3A8, &qword_1BE550DA0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1BE4E3B40(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BE4E3C38;

  return v6(a1);
}

uint64_t sub_1BE4E3C38()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v1 = *v0;
  sub_1BE4E01C4();
  *v2 = v1;

  sub_1BE4E01E0();

  return v3();
}

uint64_t type metadata accessor for GenerativePartnerSettingsPanelController(uint64_t a1)
{
  result = qword_1EBDAC390;
  if (!qword_1EBDAC390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BE4E3D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BE4E3DD4(uint64_t a1)
{
  result = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(319);
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

_OWORD *sub_1BE4E3E7C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1BE4E3E8C()
{
  sub_1BE4E4418();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BE4DF8E8;

  return sub_1BE4E2ADC(v2, v3, v4);
}

uint64_t sub_1BE4E3F3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BE4E43A8;

  return sub_1BE4E3694(v2, v3, v4);
}

uint64_t sub_1BE4E3FFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BE4E403C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_1BE4E4408(v6);
  *v7 = v8;
  v7[1] = sub_1BE4E43A8;

  return sub_1BE4E377C(a1, v3, v4, v5);
}

uint64_t sub_1BE4E4100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1BE4BF11C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BE4E4168()
{
  sub_1BE4E4418();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE4E43CC(v1);

  return v4(v3);
}

uint64_t sub_1BE4E41FC()
{
  sub_1BE4E4418();
  v0 = swift_task_alloc();
  v1 = sub_1BE4E4408(v0);
  *v1 = v2;
  v3 = sub_1BE4E43CC(v1);

  return v4(v3);
}

uint64_t sub_1BE4E4290(uint64_t a1)
{
  v2 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BE4E4348(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1BE4BF11C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BE4E43AC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BE4E4424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1BE4BF11C(&qword_1EBDAC660, &qword_1BE54F9A8);
  (*(*(v5 - 8) + 16))(a2, v4, v5);
  v6 = sub_1BE4BF11C(&qword_1EBDACA48, &qword_1BE54FCF0);
  sub_1BE4FF0AC();
  v7 = *(v6 + 64);
  v8 = a1[2];
  v9 = sub_1BE4BF11C(&qword_1EBDAC620, &qword_1BE54F968);
  (*(*(v9 - 8) + 16))(a2 + v7, v8, v9);
  sub_1BE4FF0AC();
  sub_1BE4FF0AC();
  return sub_1BE4FF0AC();
}

void GenerativePartnerSettingsPanelView.init(identifiablePathParams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BE4FFB64();
  v118 = v20;
  v124 = v21;
  v22 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  v23 = sub_1BE4C7570(v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  sub_1BE4C757C();
  sub_1BE4FFC48(v25);
  v121 = sub_1BE54AF6C();
  sub_1BE4C7500();
  v123 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  sub_1BE4CE5E4();
  v120 = v29;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v106 - v32;
  v34 = sub_1BE54AD8C();
  sub_1BE4C7500();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  sub_1BE4C757C();
  v41 = v40 - v39;
  v122 = sub_1BE54C6BC();
  sub_1BE4C7500();
  v125 = v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  sub_1BE4CE5E4();
  v116 = v45;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v106 - v48;
  sub_1BE4FFAA0();
  sub_1BE4FFEC8(v50, v51);
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4(&qword_1EBDABA88);
  }

  sub_1BE4C52BC(v34, qword_1EBDB0C08);
  v117 = v36;
  v52 = *(v36 + 16);
  v53 = sub_1BE4FFC38();
  v52(v53);
  sub_1BE54AF2C();
  v54 = v124;
  sub_1BE4CE6EC();
  sub_1BE4FFEB0(v55, v56, v57, v33, v41, v58);
  v59 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v60 = sub_1BE4FFA38();
  sub_1BE4FFE80(v60);
  v61 = sub_1BE4FFC38();
  v52(v61);
  sub_1BE54AF2C();
  sub_1BE4CE6EC();
  sub_1BE4FFE68(v62, v63, v64, v33, v41, v65);
  sub_1BE4FF90C();
  sub_1BE54C65C();
  v66 = sub_1BE4FFC38();
  v52(v66);
  sub_1BE54AF2C();
  v67 = v41;
  sub_1BE4CE6EC();
  sub_1BE4CE6D0(v68, v69, v70, v33, v41);
  v71 = v54 + v59[7];
  *v71 = swift_getKeyPath();
  *(v71 + 8) = 0;
  *(v71 + 16) = 0;
  v72 = v59[8];
  *(v54 + v72) = swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  swift_storeEnumTagMultiPayload();
  v73 = (v54 + v59[9]);
  v74 = type metadata accessor for SettingsViewModel(0);
  v119 = v34;
  sub_1BE4FFCE4(v74);
  v75 = SettingsViewModel.init()();
  sub_1BE4FF9BC(v75);
  sub_1BE54C23C();
  v76 = v129;
  v114 = v129;
  v115 = v128;
  *v73 = v128;
  v73[1] = v76;
  sub_1BE4FFDF0();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA60();
  v77 = (v54 + v59[11]);
  v126 = 0;
  v127 = 0;
  sub_1BE4BF11C(&qword_1EBDAC3C8, &qword_1BE54F5F0);
  sub_1BE4FF9EC();
  sub_1BE54C23C();
  *v77 = sub_1BE4FFDB0();
  v77[1].n128_u64[0] = v78;
  sub_1BE4FFDF0();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA60();
  sub_1BE4FFDF0();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA60();
  sub_1BE4FFDF0();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA60();
  v79 = (v54 + v59[15]);
  v126 = [objc_allocWithZone(type metadata accessor for LockupViewDelegate(0)) init];
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  v80 = v129;
  *v79 = v128;
  v79[1] = v80;
  v113 = v59;
  sub_1BE4FF98C(v59[16]);
  sub_1BE4FF9CC(v81, v82);
  if (qword_1EBDABA80 != -1)
  {
    sub_1BE4FF8DC(&qword_1EBDABA80);
  }

  v83 = qword_1EBDB0C00;
  v110 = qword_1EBDB0C00;
  sub_1BE54AF2C();
  v112 = *(v125 + 16);
  v84 = v116;
  v112(v116, v49, v122);
  v85 = v123;
  v107 = v49;
  v111 = *(v123 + 16);
  v86 = v120;
  v111(v120, v33, v121);
  v87 = [v83 bundleURL];
  sub_1BE54AE0C();

  v108 = *MEMORY[0x1E6968DF8];
  v117 = *(v117 + 104);
  (v117)(v67);
  sub_1BE4FFD20();
  v88 = sub_1BE4FF96C();
  sub_1BE4CE6D0(v88, v89, v90, v86, v67);
  v91 = *(v85 + 8);
  v123 = v85 + 8;
  v109 = v91;
  v92 = sub_1BE4D9800();
  v93(v92);
  v94 = *(v125 + 8);
  v125 += 8;
  v95 = v107;
  v96 = v122;
  v94(v107, v122);
  sub_1BE4FFD14();
  sub_1BE4FF9A4(v97);
  sub_1BE4FF9CC(v98, v99);
  sub_1BE54AF2C();
  v112(v84, v95, v96);
  v100 = v120;
  v111(v120, v33, v121);
  v101 = [v110 bundleURL];
  sub_1BE54AE0C();

  (v117)(v67, v108, v119);
  sub_1BE4FFDE4();
  v102 = sub_1BE4FF96C();
  sub_1BE4CE6D0(v102, v103, v104, v100, v67);
  sub_1BE4FFD20();
  v105();
  v94(v95, v122);
  v128 = v115;
  v129 = v114;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE4E0628();
  sub_1BE4FCF80();
  sub_1BE5018B4();

  sub_1BE4FD560();
  sub_1BE4FFB4C();
}

uint64_t sub_1BE4E4CDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54B9EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - v9;
  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4FF0AC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BE54B5BC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1BE54C99C();
    v13 = sub_1BE54BE0C();
    sub_1BE54B2AC();

    sub_1BE54B9DC();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v6, v2);
  }
}

void GenerativePartnerSettingsPanelView.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BE4FFB64();
  v22 = v21;
  v104 = sub_1BE54AF6C();
  sub_1BE4C7500();
  v112 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  sub_1BE4CE5E4();
  v111 = v26;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v27, v28);
  v29 = sub_1BE4FFE28();
  sub_1BE4C7500();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  sub_1BE4C757C();
  v36 = v35 - v34;
  v110 = sub_1BE54C6BC();
  sub_1BE4C7500();
  v113 = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  sub_1BE4CE5E4();
  v109 = v40;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = v98 - v43;
  sub_1BE4FFAA0();
  sub_1BE4FFEC8(v45, v46);
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4(&qword_1EBDABA88);
  }

  sub_1BE4C52BC(v29, qword_1EBDB0C08);
  v106 = v31;
  v47 = *(v31 + 16);
  v48 = sub_1BE4FFD2C();
  v47(v48);
  sub_1BE54AF2C();
  v49 = sub_1BE4FF96C();
  sub_1BE4FFEB0(v49, v50, v51, v20, v36, v52);
  v53 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v54 = sub_1BE4FFA38();
  sub_1BE4FFE80(v54);
  v55 = sub_1BE4FFD2C();
  v47(v55);
  sub_1BE54AF2C();
  v56 = sub_1BE4FF96C();
  sub_1BE4FFE68(v56, v57, v58, v20, v36, v59);
  sub_1BE4FF90C();
  sub_1BE54C65C();
  v60 = sub_1BE4FFD2C();
  v108 = v29;
  v47(v60);
  sub_1BE54AF2C();
  v61 = sub_1BE4FF96C();
  v105 = v36;
  sub_1BE4CE6D0(v61, v62, v63, v20, v36);
  v64 = v22 + v53[7];
  *v64 = swift_getKeyPath();
  *(v64 + 8) = 0;
  *(v64 + 16) = 0;
  v65 = v53[8];
  *(v22 + v65) = swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  swift_storeEnumTagMultiPayload();
  v66 = (v22 + v53[9]);
  v67 = type metadata accessor for SettingsViewModel(0);
  sub_1BE4FFCE4(v67);
  v68 = SettingsViewModel.init()();
  sub_1BE4FF9BC(v68);
  sub_1BE54C23C();
  v69 = v117;
  *v66 = v116;
  v66[1] = v69;
  sub_1BE4FFD38();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA74();
  v70 = (v22 + v53[11]);
  v114 = 0;
  v115 = 0;
  sub_1BE4BF11C(&qword_1EBDAC3C8, &qword_1BE54F5F0);
  sub_1BE4FF9EC();
  sub_1BE54C23C();
  *v70 = sub_1BE4FFDB0();
  v70[1].n128_u64[0] = v71;
  sub_1BE4FFD38();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA74();
  sub_1BE4FFD38();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA74();
  sub_1BE4FFD38();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FFA74();
  v72 = (v22 + v53[15]);
  v114 = [objc_allocWithZone(type metadata accessor for LockupViewDelegate(0)) init];
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  v73 = v117;
  *v72 = v116;
  v72[1] = v73;
  v98[1] = v53;
  sub_1BE4FF98C(v53[16]);
  sub_1BE4FF9CC(v74, v75);
  v107 = v22;
  if (qword_1EBDABA80 != -1)
  {
    sub_1BE4FF8DC(&qword_1EBDABA80);
  }

  v76 = qword_1EBDB0C00;
  v101 = qword_1EBDB0C00;
  sub_1BE54AF2C();
  v103 = *(v113 + 16);
  v103(v109, v44, v110);
  v77 = v111;
  v78 = v112;
  v102 = *(v112 + 16);
  v79 = v104;
  (v102)(v111, v20, v104);
  v80 = [v76 bundleURL];
  v81 = v105;
  sub_1BE54AE0C();

  v99 = *MEMORY[0x1E6968DF8];
  v106 = *(v106 + 104);
  (v106)(v81);
  v82 = sub_1BE4FF96C();
  sub_1BE4CE6D0(v82, v83, v84, v77, v81);
  v85 = *(v78 + 8);
  v112 = v78 + 8;
  v100 = v85;
  v85(v20, v79);
  v86 = *(v113 + 8);
  v113 += 8;
  v98[0] = v86;
  v87 = v110;
  v86(v44, v110);
  sub_1BE4FFD14();
  sub_1BE4FF9A4(v88);
  sub_1BE4FF9CC(v89, v90);
  v91 = v20;
  sub_1BE54AF2C();
  v92 = sub_1BE4FFBD8();
  (v103)(v92);
  v93 = v111;
  sub_1BE4FFB7C();
  v102();
  v94 = [v101 bundleURL];
  sub_1BE54AE0C();

  (v106)(v81, v99, v108);
  sub_1BE4FFDE4();
  v95 = sub_1BE4FF96C();
  sub_1BE4CE6D0(v95, v96, v97, v93, v81);
  v100(v91, v79);
  (v98[0])(v44, v87);
  sub_1BE4FFB4C();
}

void GenerativePartnerSettingsPanelView.init(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BE4FFB64();
  v121 = v20;
  v22 = v21;
  v120 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  sub_1BE4C7470();
  MEMORY[0x1EEE9AC00](v23, v24);
  sub_1BE4C757C();
  sub_1BE4FFC48(v25);
  v118 = sub_1BE54AF6C();
  sub_1BE4C7500();
  v126 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  sub_1BE4CE5E4();
  v124 = v29;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v107 - v32;
  v34 = sub_1BE54AD8C();
  sub_1BE4C7500();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  sub_1BE4C757C();
  v41 = v40 - v39;
  v125 = sub_1BE54C6BC();
  sub_1BE4C7500();
  v127 = v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  sub_1BE4CE5E4();
  v116 = v45;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v107 - v48;
  sub_1BE4FFAA0();
  sub_1BE4FFEC8(v50, v51);
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4(&qword_1EBDABA88);
  }

  sub_1BE4C52BC(v34, qword_1EBDB0C08);
  v117 = v36;
  v52 = *(v36 + 16);
  sub_1BE4FFB7C();
  v52();
  sub_1BE54AF2C();
  v53 = sub_1BE4FF96C();
  sub_1BE4FFEB0(v53, v54, v55, v33, v41, v56);
  v57 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v58 = sub_1BE4FFA38();
  sub_1BE4FFE80(v58);
  sub_1BE4FFB7C();
  v52();
  sub_1BE54AF2C();
  v59 = sub_1BE4FF96C();
  sub_1BE4FFE68(v59, v60, v61, v33, v41, v62);
  sub_1BE4FF90C();
  sub_1BE54C65C();
  sub_1BE4FFB7C();
  v52();
  sub_1BE54AF2C();
  v63 = sub_1BE4FF96C();
  sub_1BE4CE6D0(v63, v64, v65, v33, v41);
  v66 = v22 + v57[7];
  *v66 = swift_getKeyPath();
  *(v66 + 8) = 0;
  *(v66 + 16) = 0;
  v67 = v57[8];
  *(v22 + v67) = swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  swift_storeEnumTagMultiPayload();
  v68 = (v22 + v57[9]);
  v69 = type metadata accessor for SettingsViewModel(0);
  v123 = v34;
  sub_1BE4FFCE4(v69);
  v70 = SettingsViewModel.init()();
  sub_1BE4FF9BC(v70);
  sub_1BE54C23C();
  v71 = v131;
  v115 = v130;
  *v68 = v130;
  v68[1] = v71;
  v114 = v71;
  sub_1BE4FFD98();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  v72 = (v22 + v57[11]);
  v128 = 0;
  v129 = 0;
  sub_1BE4BF11C(&qword_1EBDAC3C8, &qword_1BE54F5F0);
  sub_1BE4FF9EC();
  sub_1BE54C23C();
  *v72 = sub_1BE4FFDB0();
  v72[1].n128_u64[0] = v73;
  sub_1BE4FFD98();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  sub_1BE4FFD98();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  sub_1BE4FFD98();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  v74 = (v22 + v57[15]);
  v128 = [objc_allocWithZone(type metadata accessor for LockupViewDelegate(0)) init];
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  v75 = v131;
  *v74 = v130;
  v74[1] = v75;
  v113 = v57;
  sub_1BE4FF98C(v57[16]);
  sub_1BE4FF9CC(v76, v77);
  v122 = v22;
  if (qword_1EBDABA80 != -1)
  {
    sub_1BE4FF8DC(&qword_1EBDABA80);
  }

  v78 = qword_1EBDB0C00;
  v110 = qword_1EBDB0C00;
  sub_1BE54AF2C();
  v112 = *(v127 + 16);
  v79 = v116;
  v112(v116, v49, v125);
  v80 = v126;
  v81 = v33;
  v82 = *(v126 + 16);
  v107 = v126 + 16;
  v111 = v82;
  v83 = v49;
  v84 = v124;
  v85 = v33;
  v86 = v118;
  (v82)(v124, v85);
  v87 = [v78 bundleURL];
  sub_1BE54AE0C();

  v108 = *MEMORY[0x1E6968DF8];
  v117 = *(v117 + 104);
  (v117)(v41);
  sub_1BE4CE6EC();
  sub_1BE4CE6D0(v88, v89, v90, v84, v41);
  v91 = *(v80 + 8);
  v126 = v80 + 8;
  v109 = v91;
  v92 = v86;
  v91(v81, v86);
  v93 = v41;
  v94 = *(v127 + 8);
  v127 += 8;
  v95 = v83;
  v96 = v83;
  v97 = v125;
  v94(v96, v125);
  sub_1BE4FFD14();
  sub_1BE4FF9A4(v98);
  sub_1BE4FF9CC(v99, v100);
  sub_1BE54AF2C();
  v112(v79, v95, v97);
  v101 = v124;
  v111(v124, v81, v92);
  v102 = [v110 bundleURL];
  sub_1BE54AE0C();

  (v117)(v93, v108, v123);
  sub_1BE4FFDE4();
  sub_1BE4CE6EC();
  sub_1BE4CE6D0(v103, v104, v105, v101, v93);
  v109(v81, v92);
  v94(v95, v125);
  v130 = v115;
  v131 = v114;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v106 = v119;
  sub_1BE54AECC();
  *(v106 + *(v120 + 20)) = v121;
  sub_1BE5018B4();

  sub_1BE4FFB4C();
}

void GenerativePartnerSettingsPanelView.init(viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1BE4FFB64();
  v115 = v21;
  v119 = v22;
  v111 = sub_1BE54AF6C();
  sub_1BE4C7500();
  v114 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  sub_1BE4CE5E4();
  v118 = v26;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v27, v28);
  v29 = sub_1BE4FFE28();
  sub_1BE4C7500();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  sub_1BE4C757C();
  v36 = v35 - v34;
  sub_1BE54C6BC();
  sub_1BE4C7500();
  v120 = v37;
  v121 = v38;
  MEMORY[0x1EEE9AC00](v37, v39);
  sub_1BE4CE5E4();
  v117 = v40;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v99 - v43;
  sub_1BE4FFAA0();
  sub_1BE4FFEC8(v45, v46);
  if (qword_1EBDABA88 != -1)
  {
    sub_1BE4CE5C4(&qword_1EBDABA88);
  }

  sub_1BE4C52BC(v29, qword_1EBDB0C08);
  v113 = v31;
  v47 = *(v31 + 16);
  sub_1BE4FFB7C();
  v47();
  sub_1BE54AF2C();
  v48 = v119;
  sub_1BE4FF97C();
  sub_1BE4FFEB0(v49, v50, v51, v52, v36, v53);
  v54 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v55 = sub_1BE4FFA38();
  sub_1BE4FFE80(v55);
  sub_1BE4FFB7C();
  v47();
  sub_1BE54AF2C();
  sub_1BE4FF97C();
  sub_1BE4FFE68(v56, v57, v58, v59, v36, v60);
  sub_1BE4FF90C();
  sub_1BE54C65C();
  sub_1BE4FFB7C();
  v47();
  sub_1BE54AF2C();
  sub_1BE4FF97C();
  v112 = v36;
  sub_1BE4CE6D0(v61, v62, v63, v64, v36);
  v65 = v48 + v54[7];
  *v65 = swift_getKeyPath();
  *(v65 + 8) = 0;
  *(v65 + 16) = 0;
  v66 = v54[8];
  *(v48 + v66) = swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDAC3C0, &qword_1BE54F5E8);
  swift_storeEnumTagMultiPayload();
  v116 = v29;
  v67 = v54[9];
  v68 = type metadata accessor for SettingsViewModel(0);
  sub_1BE4FFCE4(v68);
  v69 = SettingsViewModel.init()();
  sub_1BE4FF9BC(v69);
  v110 = v68;
  sub_1BE54C23C();
  v108 = v124;
  v109 = v125;
  sub_1BE4FFDFC();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  v70 = (v48 + v54[11]);
  v122 = 0;
  v123 = 0;
  sub_1BE4BF11C(&qword_1EBDAC3C8, &qword_1BE54F5F0);
  sub_1BE4FF9EC();
  sub_1BE54C23C();
  *v70 = sub_1BE4FFDB0();
  v70[1].n128_u64[0] = v71;
  sub_1BE4FFDFC();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  sub_1BE4FFDFC();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  sub_1BE4FFDFC();
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  sub_1BE4FF930();
  v72 = (v48 + v54[15]);
  v122 = [objc_allocWithZone(type metadata accessor for LockupViewDelegate(0)) init];
  sub_1BE4FF8FC();
  sub_1BE54C23C();
  v73 = v125;
  *v72 = v124;
  v72[1] = v73;
  v103 = v54;
  sub_1BE4FF98C(v54[16]);
  sub_1BE4FF9CC(v74, v75);
  if (qword_1EBDABA80 != -1)
  {
    sub_1BE4FF8DC(&qword_1EBDABA80);
  }

  v107 = (v119 + v67);
  v76 = qword_1EBDB0C00;
  v102 = qword_1EBDB0C00;
  sub_1BE54AF2C();
  v106 = *(v121 + 16);
  v106(v117, v44, v120);
  v77 = v114;
  v100 = v44;
  v105 = *(v114 + 16);
  v78 = v118;
  v79 = v111;
  v105(v118, v20, v111);
  v80 = [v76 bundleURL];
  v81 = v112;
  sub_1BE54AE0C();

  v101 = *MEMORY[0x1E6968DF8];
  v113 = *(v113 + 104);
  (v113)(v81);
  sub_1BE4FFD20();
  sub_1BE4CE6EC();
  sub_1BE4CE6D0(v82, v83, v84, v78, v81);
  v114 = *(v77 + 8);
  (v114)(v20, v79);
  v85 = *(v121 + 8);
  v121 += 8;
  v104 = v85;
  v86 = v100;
  v87 = v120;
  v85(v100, v120);
  sub_1BE4FFD14();
  sub_1BE4FF9A4(v88);
  sub_1BE4FF9CC(v89, v90);
  sub_1BE54AF2C();
  v106(v117, v86, v87);
  v105(v118, v20, v79);
  v91 = [v102 bundleURL];
  sub_1BE54AE0C();

  (v113)(v81, v101, v116);
  sub_1BE4FFDE4();
  sub_1BE4FF97C();
  sub_1BE4CE6D0(v92, v93, v94, v95, v81);
  (v114)(v20, v79);
  sub_1BE4FFD20();
  v96();
  v122 = v115;
  sub_1BE4FF9EC();
  sub_1BE54C23C();

  v97 = v125;
  v98 = v107;
  *v107 = v124;
  v98[1] = v97;
  sub_1BE4FFB4C();
}

void GenerativePartnerSettingsPanelView.body.getter()
{
  sub_1BE4FFB64();
  v76 = v0;
  v74 = v1;
  v2 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  sub_1BE4C7570(v2);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v62 - v5;
  v75 = sub_1BE54AE3C();
  sub_1BE4C7500();
  v73 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1BE4CE5E4();
  v69 = v10;
  sub_1BE4CE6F8();
  MEMORY[0x1EEE9AC00](v11, v12);
  v71 = &v62 - v13;
  v14 = sub_1BE54C3CC();
  sub_1BE4C7500();
  v77 = v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_1BE4C757C();
  v20 = (v19 - v18);
  v21 = sub_1BE4BF11C(&qword_1EBDAC3D8, &qword_1BE54F608);
  sub_1BE4C7500();
  v23 = v22;
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v62 - v26;
  v67 = sub_1BE4BF11C(&qword_1EBDAC3E0, &qword_1BE54F610);
  sub_1BE4C7500();
  v65 = v28;
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v62 - v31;
  v70 = sub_1BE4BF11C(&qword_1EBDAC3E8, &qword_1BE54F618);
  sub_1BE4C7500();
  v68 = v33;
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v34, v35);
  sub_1BE4FFC48(v36);
  v78 = v0;
  sub_1BE4BF11C(&qword_1EBDAC3F0, &qword_1BE54F620);
  sub_1BE4FC524();
  sub_1BE54BF2C();
  v37 = sub_1BE4FF864(&qword_1EBDAC488, &qword_1EBDAC3D8, &qword_1BE54F608, MEMORY[0x1E697CD20]);
  v64 = v32;
  sub_1BE54BF9C();
  v38 = *(v23 + 8);
  v63 = v21;
  v38(v27, v21);
  strcpy(v20, "com.apple.siri");
  v20[15] = -18;
  v39 = *MEMORY[0x1E69CA990];
  v40 = *(v77 + 104);
  v72 = v14;
  v40(v20, v39, v14);
  sub_1BE4BF11C(&qword_1EBDAC490, &qword_1BE54F670);
  sub_1BE4D97A4();
  v41 = sub_1BE54ADAC();
  sub_1BE4C7500();
  v43 = v42;
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1BE54E1A0;
  (*(v43 + 16))(v45 + v44, v76, v41);
  sub_1BE4FFAA0();
  sub_1BE54AE1C();
  v46 = v6;
  v47 = v75;
  if (sub_1BE4C63BC(v6, 1, v75) == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for GenerativePartnerSettingsPanelView(0);
    v48 = v73;
    v49 = *(v73 + 32);
    v50 = v69;
    v49(v69, v46, v47);
    v51 = v71;
    v49(v71, v50, v47);
    v79 = v63;
    v80 = v37;
    swift_getOpaqueTypeConformance2();
    v53 = v66;
    v52 = v67;
    v54 = v64;
    sub_1BE54BFAC();

    (*(v48 + 8))(v51, v47);
    (*(v77 + 8))(v20, v72);
    (*(v65 + 8))(v54, v52);
    v55 = sub_1BE54C39C();
    v57 = v56;
    v58 = sub_1BE4BF11C(&qword_1EBDAC498, &qword_1BE54F678);
    v59 = v74;
    v60 = v74 + *(v58 + 36);
    sub_1BE4E69B8(v60);
    v61 = (v60 + *(sub_1BE4BF11C(&qword_1EBDAC4A0, &qword_1BE54F680) + 36));
    *v61 = v55;
    v61[1] = v57;
    (*(v68 + 32))(v59, v53, v70);
    sub_1BE4FFB4C();
  }
}

uint64_t sub_1BE4E69B8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_1BE4BF11C(&qword_1EBDAC4F0, "ު");
  v23 = *(v1 - 8);
  v2 = v23;
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23 - v8;
  v10 = sub_1BE4BF11C(&qword_1EBDAC4F8, &qword_1BE54F728);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v23 - v16;
  sub_1BE4E6C00(&v23 - v16);
  sub_1BE4E7E44(v9);
  sub_1BE4FF0AC();
  v18 = *(v2 + 16);
  v18(v6, v9, v1);
  v19 = v24;
  sub_1BE4FF0AC();
  v20 = sub_1BE4BF11C(&qword_1EBDAC500, &qword_1BE54F730);
  v18((v19 + *(v20 + 48)), v6, v1);
  v21 = *(v23 + 8);
  v21(v9, v1);
  sub_1BE4FF104(v17, &qword_1EBDAC4F8);
  v21(v6, v1);
  return sub_1BE4FF104(v14, &qword_1EBDAC4F8);
}

uint64_t sub_1BE4E6C00@<X0>(uint64_t a1@<X8>)
{
  v135 = a1;
  v134 = sub_1BE4BF11C(&qword_1EBDAC558, &qword_1BE54F7D8);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134, v2);
  v132 = &v114 - v3;
  v131 = sub_1BE4BF11C(&qword_1EBDAC560, &qword_1BE54F7E0);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131, v4);
  v129 = &v114 - v5;
  v128 = sub_1BE4BF11C(&qword_1EBDAC568, &qword_1BE54F7E8);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v6);
  v142 = &v114 - v7;
  v141 = sub_1BE4BF11C(&qword_1EBDAC570, &qword_1BE54F7F0);
  v126 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v8);
  v139 = &v114 - v9;
  v138 = sub_1BE4BF11C(&qword_1EBDAC578, &qword_1BE54F7F8);
  MEMORY[0x1EEE9AC00](v138, v10);
  v125 = &v114 - v11;
  v124 = sub_1BE4BF11C(&qword_1EBDAC580, &qword_1BE54F800);
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124, v12);
  v14 = &v114 - v13;
  v15 = sub_1BE54C1BC();
  sub_1BE54C39C();
  sub_1BE54B69C();
  v121 = v155;
  LODWORD(v122) = v156;
  v136 = v157;
  LODWORD(v137) = v158;
  v143 = v159;
  v146 = v160;
  v140 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v16 = *(v140 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v140, v18);
  v145 = v1;
  sub_1BE4FCF80();
  sub_1BE54C8CC();
  v19 = sub_1BE54C8BC();
  v20 = *(v16 + 80);
  v120 = ~v20;
  v21 = (v20 + 32) & ~v20;
  v144 = v17;
  v147 = v20;
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  sub_1BE4FCFD8(&v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v24 = sub_1BE54C91C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24, v27);
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v114 - v28;
  sub_1BE54C8EC();
  if (sub_1BE54A794(2, 26, 4, 0))
  {
    v118 = sub_1BE54B78C();
    v119 = &v114;
    v117 = *(v118 - 8);
    MEMORY[0x1EEE9AC00](v118, v30);
    v116 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v150 = 0;
    v151 = 0xE000000000000000;
    sub_1BE54CADC();

    v150 = 0xD000000000000044;
    v151 = 0x80000001BE553DA0;
    v148 = 217;
    v32 = sub_1BE54CC9C();
    MEMORY[0x1BFB47CA0](v32);

    v115 = v15;
    MEMORY[0x1EEE9AC00](v33, v34);
    (*(v25 + 16))(&v114 - v28, &v114 - v28, v24);
    v35 = v116;
    sub_1BE54B77C();
    (*(v25 + 8))(v29, v24);
    v36 = sub_1BE4BF11C(&qword_1EBDABCA8, &qword_1BE54DD68);
    v37 = (*(v117 + 32))(&v14[*(v36 + 36)], v35, v118);
    v39 = v121;
    *v14 = v115;
  }

  else
  {
    v41 = &v14[*(sub_1BE4BF11C(&qword_1EBDABCB0, &qword_1BE54DD70) + 36)];
    v42 = sub_1BE54B73C();
    v37 = (*(v25 + 32))(&v41[*(v42 + 20)], &v114 - v28, v24);
    *v41 = &unk_1BE54F810;
    *(v41 + 1) = v22;
    v39 = v121;
    *v14 = v15;
  }

  *(v14 + 1) = v39;
  v14[16] = v122;
  *(v14 + 3) = v136;
  v14[32] = v137;
  v40 = v146;
  *(v14 + 5) = v143;
  *(v14 + 6) = v40;
  v43 = v144;
  MEMORY[0x1EEE9AC00](v37, v38);
  v136 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = &v114 - v136;
  v137 = type metadata accessor for GenerativePartnerSettingsPanelView;
  v45 = v145;
  sub_1BE4FCF80();
  v146 = ((v147 + 16) & v120) + v43;
  v46 = (v147 + 16) & v120;
  v47 = swift_allocObject();
  v143 = v46;
  sub_1BE4FCFD8(v44, v47 + v46);
  v48 = v125;
  (*(v123 + 32))(v125, v14, v124);
  v49 = (v48 + *(v138 + 36));
  *v49 = sub_1BE4FD1D8;
  v49[1] = v47;
  v49[2] = 0;
  v49[3] = 0;
  v50 = (v45 + *(v140 + 36));
  v52 = *v50;
  v51 = v50[1];
  v124 = v52;
  v123 = v51;
  v150 = v52;
  v151 = v51;
  v122 = sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v53 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  v121 = &v114;
  v55 = MEMORY[0x1EEE9AC00](v53, v54);
  sub_1BE5017DC(v55, v56, v57);

  v119 = &v114;
  MEMORY[0x1EEE9AC00](v58, v59);
  v60 = &v114 - v136;
  sub_1BE4FCF80();
  v61 = swift_allocObject();
  sub_1BE4FCFD8(v60, v61 + v46);
  v120 = sub_1BE4FD244();
  v62 = sub_1BE4FEB10(&qword_1EBDAC590, type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams, &protocol conformance descriptor for SettingsViewModel.IdentifiableDeepLinkParams);
  v63 = v138;
  sub_1BE54C16C();

  sub_1BE4FD560();
  sub_1BE4FF104(v48, &qword_1EBDAC578);
  v64 = sub_1BE54B5BC();
  v125 = &v114;
  v65 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v66);
  v68 = &v114 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1BE4E4CDC(v68);
  MEMORY[0x1EEE9AC00](v69, v70);
  v71 = &v114 - v136;
  sub_1BE4FCF80();
  v72 = swift_allocObject();
  sub_1BE4FCFD8(v71, v72 + v143);
  v150 = v63;
  v151 = v53;
  v152 = v120;
  v153 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = sub_1BE4FEB10(&qword_1EBDAC598, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  v75 = v141;
  v76 = v139;
  sub_1BE54C15C();

  v77 = *(v65 + 8);
  v138 = v64;
  v77(v68, v64);
  (*(v126 + 8))(v76, v75);
  v150 = v124;
  v151 = v123;
  sub_1BE54C24C();
  sub_1BE5010B4(&v150);

  v78 = v153;
  if (v153)
  {
    v79 = v154;
    v80 = sub_1BE4C52F4(&v150, v153);
    v81 = *(v78 - 8);
    MEMORY[0x1EEE9AC00](v80, v80);
    v83 = &v114 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v81 + 16))(v83);
    sub_1BE4FF104(&v150, &qword_1EBDABAF8);
    v84 = (*(v79 + 8))(v78, v79);
    v86 = v85;
    v87 = (*(v81 + 8))(v83, v78);
  }

  else
  {
    v87 = sub_1BE4FF104(&v150, &qword_1EBDABAF8);
    v84 = 0;
    v86 = 0;
  }

  v148 = v84;
  v149 = v86;
  v89 = v144;
  MEMORY[0x1EEE9AC00](v87, v88);
  v139 = ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = (&v114 - v139);
  v137 = type metadata accessor for GenerativePartnerSettingsPanelView;
  v91 = v145;
  sub_1BE4FCF80();
  v92 = swift_allocObject();
  sub_1BE4FCFD8(v90, v92 + v143);
  v136 = sub_1BE4BF11C(&qword_1EBDAC3C8, &qword_1BE54F5F0);
  v150 = v141;
  v151 = v138;
  v152 = OpaqueTypeConformance2;
  v153 = v74;
  v141 = MEMORY[0x1E6981440];
  v93 = swift_getOpaqueTypeConformance2();
  v94 = sub_1BE4FD3F4();
  v95 = v129;
  v96 = v128;
  v97 = v142;
  sub_1BE54C15C();

  (*(v127 + 8))(v97, v96);
  v98 = (v91 + *(v140 + 40));
  v99 = *v98;
  v100 = *(v98 + 1);
  LOBYTE(v150) = v99;
  v151 = v100;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  v101 = sub_1BE54C24C();
  v142 = &v114;
  MEMORY[0x1EEE9AC00](v101, v102);
  v103 = v139;
  sub_1BE4FCF80();
  v104 = swift_allocObject();
  v105 = v143;
  sub_1BE4FCFD8(&v114 - v103, v104 + v143);
  v150 = v96;
  v151 = v136;
  v152 = v93;
  v153 = v94;
  swift_getOpaqueTypeConformance2();
  v106 = v132;
  v107 = v131;
  sub_1BE54C16C();

  v108 = (*(v130 + 8))(v95, v107);
  MEMORY[0x1EEE9AC00](v108, v109);
  sub_1BE4FCF80();
  v110 = swift_allocObject();
  sub_1BE4FCFD8(&v114 - v103, v110 + v105);
  v111 = v135;
  (*(v133 + 32))(v135, v106, v134);
  result = sub_1BE4BF11C(&qword_1EBDAC4F8, &qword_1BE54F728);
  v113 = (v111 + *(result + 36));
  *v113 = 0;
  v113[1] = 0;
  v113[2] = sub_1BE4FD488;
  v113[3] = v110;
  return result;
}

uint64_t sub_1BE4E7E44@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v1 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v117 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v118 = v3;
  v119 = v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE54C69C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v107 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1BE54AF6C();
  v112 = *(v113 - 8);
  v8 = MEMORY[0x1EEE9AC00](v113, v7);
  v111 = v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v93 - v11;
  v13 = sub_1BE54AD8C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1BE54C6BC();
  v108 = *(v109 - 8);
  v19 = MEMORY[0x1EEE9AC00](v109, v18);
  v106 = v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v93 - v22;
  v133 = sub_1BE54ADAC();
  v135 = *(v133 - 8);
  v25 = MEMORY[0x1EEE9AC00](v133, v24);
  v132 = v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = v93 - v28;
  v129 = sub_1BE4BF11C(&qword_1EBDAC508, &qword_1BE54F738);
  v105 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v30);
  v127 = v93 - v31;
  v114 = sub_1BE4BF11C(&qword_1EBDAC510, &qword_1BE54F740);
  v110 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v32);
  v130 = v93 - v33;
  v116 = sub_1BE4BF11C(&qword_1EBDAC518, &qword_1BE54F748);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v34);
  v131 = v93 - v35;
  v122 = sub_1BE54C1BC();
  sub_1BE54C39C();
  sub_1BE54B69C();
  v36 = v148;
  v37 = v149;
  v125 = v150;
  LODWORD(v124) = v151;
  v95 = v152;
  v94 = v153;
  sub_1BE54C65C();
  if (qword_1EBDABA88 != -1)
  {
    swift_once();
  }

  v100 = sub_1BE4C52BC(v13, qword_1EBDB0C08);
  v104 = v14;
  v38 = *(v14 + 16);
  v101 = v14 + 16;
  OpaqueTypeConformance2 = v38;
  v38(v17, v100, v13);
  sub_1BE54AF2C();
  v121 = v23;
  sub_1BE54ADBC();
  v39 = (v134 + *(v1 + 36));
  v41 = *v39;
  v40 = v39[1];
  v99 = v41;
  v98 = v40;
  v145 = v41;
  v146 = v40;
  v97 = sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  v128 = v1;
  sub_1BE54C26C();
  v126 = v12;
  v42 = v137;
  v43 = v138;
  v44 = v139;
  swift_getKeyPath();
  v136 = v29;
  v145 = v42;
  v146 = v43;
  v147 = v44;
  v96 = sub_1BE4BF11C(&qword_1EBDAC520, &qword_1BE54F778);
  sub_1BE54C31C();

  v123 = v13;
  v45 = v17;
  v93[1] = v144;

  v137 = v122;
  v138 = v36;
  LOBYTE(v139) = v37;
  v140 = v125;
  LOBYTE(v141) = v124;
  v142 = v95;
  v143 = v94;
  v46 = v135;
  v47 = v135 + 16;
  v125 = *(v135 + 16);
  v125(v132, v136, v133);
  v48 = sub_1BE54BF7C();
  v50 = v49;
  LOBYTE(v44) = v51;
  v94 = sub_1BE4BF11C(&qword_1EBDAC528, &qword_1BE54F780);
  v95 = sub_1BE4FCEFC();
  sub_1BE54C10C();
  sub_1BE4C68C8(v48, v50, v44 & 1);

  v52 = *(v46 + 8);
  v135 = v46 + 8;
  v124 = v52;
  v53 = v133;
  v52(v136, v133);

  sub_1BE54C65C();
  OpaqueTypeConformance2(v45, v100, v123);
  sub_1BE54AF2C();
  v103 = v45;
  sub_1BE54ADBC();
  v145 = v99;
  v146 = v98;
  sub_1BE54C26C();
  v54 = v137;
  v55 = v138;
  v56 = v139;
  swift_getKeyPath();
  v145 = v54;
  v146 = v55;
  v147 = v56;
  sub_1BE54C31C();

  LODWORD(v101) = v144;

  v122 = v47;
  v125(v132, v136, v53);
  v57 = sub_1BE54BF7C();
  v59 = v58;
  LOBYTE(v56) = v60;
  v137 = v94;
  v138 = MEMORY[0x1E6981E70];
  v139 = MEMORY[0x1E6981148];
  v140 = v95;
  v141 = MEMORY[0x1E6981E60];
  v142 = MEMORY[0x1E6981138];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v129;
  v62 = v127;
  sub_1BE54C10C();
  sub_1BE4C68C8(v57, v59, v56 & 1);

  v124(v136, v133);
  (*(v105 + 8))(v62, v61);
  sub_1BE54C68C();
  sub_1BE54C67C();
  sub_1BE4E92F8();
  sub_1BE54C66C();

  sub_1BE54C67C();
  v63 = v121;
  sub_1BE54C6AC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v64 = qword_1EBDB0C00;
  v65 = v126;
  sub_1BE54AF2C();
  v66 = v108;
  v67 = v109;
  (*(v108 + 16))(v106, v63, v109);
  v68 = v112;
  v69 = v113;
  (*(v112 + 16))(v111, v65, v113);
  v70 = [v64 bundleURL];
  v71 = v103;
  sub_1BE54AE0C();

  (*(v104 + 104))(v71, *MEMORY[0x1E6968DF8], v123);
  v72 = v136;
  sub_1BE54ADBC();
  (*(v68 + 8))(v65, v69);
  (*(v66 + 8))(v63, v67);
  v73 = (v134 + *(v128 + 56));
  v74 = *v73;
  v75 = *(v73 + 1);
  LOBYTE(v145) = v74;
  v146 = v75;
  v76 = v72;
  v127 = sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  sub_1BE54C26C();
  LODWORD(v126) = v139;
  v77 = v133;
  v125(v132, v72, v133);
  v78 = sub_1BE54BF7C();
  v80 = v79;
  LOBYTE(v67) = v81;
  v137 = v129;
  v138 = MEMORY[0x1E6981E70];
  v139 = MEMORY[0x1E6981148];
  v140 = OpaqueTypeConformance2;
  v141 = MEMORY[0x1E6981E60];
  v142 = MEMORY[0x1E6981138];
  v132 = MEMORY[0x1E697D4E0];
  v129 = swift_getOpaqueTypeConformance2();
  v82 = v114;
  v83 = v130;
  sub_1BE54C10C();
  sub_1BE4C68C8(v78, v80, v67 & 1);

  v124(v76, v77);
  (*(v110 + 8))(v83, v82);
  v84 = (v134 + *(v128 + 40));
  v85 = *v84;
  v86 = *(v84 + 1);
  LOBYTE(v145) = v85;
  v146 = v86;
  sub_1BE54C26C();
  v87 = v119;
  sub_1BE4FCF80();
  v88 = (*(v117 + 80) + 16) & ~*(v117 + 80);
  v89 = swift_allocObject();
  sub_1BE4FCFD8(v87, v89 + v88);
  type metadata accessor for GenerativePartnerOnboardingSheet(0);
  v137 = v82;
  v138 = MEMORY[0x1E6981E70];
  v139 = MEMORY[0x1E6981E70];
  v140 = v129;
  v141 = MEMORY[0x1E6981E60];
  v142 = MEMORY[0x1E6981E60];
  swift_getOpaqueTypeConformance2();
  sub_1BE4FEB10(&qword_1EBDAC538, type metadata accessor for GenerativePartnerOnboardingSheet, &protocol conformance descriptor for GenerativePartnerOnboardingSheet);
  v90 = v116;
  v91 = v131;
  sub_1BE54C12C();

  return (*(v115 + 8))(v91, v90);
}

uint64_t sub_1BE4E9004@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE54BA2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE4BF11C(&qword_1EBDAC400, &qword_1BE54F628);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25 - v11;
  v13 = sub_1BE4BF11C(&qword_1EBDAC5D8, &qword_1BE54F8C0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v25 - v16;
  sub_1BE4E9638(v2, v12);
  KeyPath = swift_getKeyPath();
  v19 = &v12[*(v9 + 36)];
  *v19 = KeyPath;
  v19[8] = 0;
  sub_1BE54BA1C();
  sub_1BE4FC668();
  sub_1BE4FEB10(&qword_1EBDAC470, MEMORY[0x1E697C480], MEMORY[0x1E697C478]);
  sub_1BE54C02C();
  (*(v5 + 8))(v8, v4);
  sub_1BE4FF104(v12, &qword_1EBDAC400);
  if ((AFMontaraRestricted() & 1) != 0 || (static GenerativePartnerRestrictionUtils.isHardDisabled.getter() & 1) != 0 || (sub_1BE52AA84() & 1) == 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_1BE52AC38();
  }

  v21 = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = v20 & 1;
  (*(v14 + 32))(a1, v17, v13);
  result = sub_1BE4BF11C(&qword_1EBDAC3F0, &qword_1BE54F620);
  v24 = (a1 + *(result + 36));
  *v24 = v21;
  v24[1] = sub_1BE4FDD90;
  v24[2] = v22;
  return result;
}

uint64_t sub_1BE4E92F8()
{
  v1 = (v0 + *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36));
  v3 = *v1;
  v2 = v1[1];
  v12[0] = v3;
  v12[1] = v2;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE5010B4(v12);

  if (v13)
  {
    sub_1BE4C6918(v12, v9);
    sub_1BE4FF104(v12, &qword_1EBDABAF8);
    v4 = v10;
    v5 = v11;
    sub_1BE4C52F4(v9, v10);
    v6 = (*(v5 + 16))(v4, v5);
    v7 = v9;
  }

  else
  {
    sub_1BE4FF104(v12, &qword_1EBDABAF8);
    sub_1BE54B24C();
    sub_1BE54B22C();
    sub_1BE54B20C();

    if (!v13)
    {
      sub_1BE4FF104(v12, &qword_1EBDAC550);
      return 0xD000000000000016;
    }

    sub_1BE4C52F4(v12, v13);
    v6 = sub_1BE54B26C();
    v7 = v12;
  }

  sub_1BE4C58A8(v7);
  return v6;
}

BOOL sub_1BE4E948C()
{
  v1 = (v0 + *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36));
  v3 = *v1;
  v2 = v1[1];
  v11[0] = v3;
  v11[1] = v2;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE5010B4(v11);

  v4 = v12;
  if (v12)
  {
    v5 = v13;
    v6 = sub_1BE4C52F4(v11, v12);
    v7 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v6, v6);
    v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    sub_1BE4FF104(v11, &qword_1EBDABAF8);
    (*(v5 + 216))(&v14, v4, v5);
    (*(v7 + 8))(v9, v4);
    return (v14 & 0xC0) == 64;
  }

  else
  {
    sub_1BE4FF104(v11, &qword_1EBDABAF8);
    return 1;
  }
}

uint64_t sub_1BE4E9638@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v82 = sub_1BE4BF11C(&qword_1EBDAC450, &qword_1BE54F650);
  MEMORY[0x1EEE9AC00](v82, v3);
  v71 = &v69 - v4;
  v5 = sub_1BE4BF11C(&qword_1EBDAC5E0, &qword_1BE54F928);
  v70 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v69 - v7);
  v83 = sub_1BE4BF11C(&qword_1EBDAC5E8, &qword_1BE54F930);
  MEMORY[0x1EEE9AC00](v83, v9);
  v11 = &v69 - v10;
  v80 = sub_1BE4BF11C(&qword_1EBDAC5F0, &qword_1BE54F938);
  MEMORY[0x1EEE9AC00](v80, v12);
  v14 = &v69 - v13;
  v15 = sub_1BE4BF11C(&qword_1EBDAC438, &qword_1BE54F640);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v69 - v17;
  v19 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v79 = sub_1BE4BF11C(&qword_1EBDAC440, &qword_1BE54F648);
  MEMORY[0x1EEE9AC00](v79, v21);
  v23 = &v69 - v22;
  v81 = sub_1BE4BF11C(&qword_1EBDAC5F8, &qword_1BE54F940);
  v77 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v24);
  v76 = &v69 - v25;
  v26 = &a1[*(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36)];
  v28 = *v26;
  v27 = *(v26 + 1);
  *&v88 = v28;
  *(&v88 + 1) = v27;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE5010B4(&v88);

  if (*(&v89 + 1))
  {
    v72 = v14;
    v78 = v18;
    v73 = v5;
    v74 = v15;
    v75 = v11;
    sub_1BE4BF094(&v88, v91);
    sub_1BE4EA314(v91, v23);
    sub_1BE54BABC();
    sub_1BE54BAAC();
    v29 = v92;
    v30 = v93;
    sub_1BE4C52F4(v91, v92);
    (*(v30 + 16))(v29, v30);
    sub_1BE54BA9C();

    sub_1BE54BAAC();
    sub_1BE54BAEC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v31 = qword_1EBDB0C00;
    v32 = sub_1BE54BF6C();
    v34 = v33;
    v36 = v35;
    v37 = MEMORY[0x1E6981F48];
    v38 = sub_1BE4FF864(&qword_1EBDAC448, &qword_1EBDAC440, &qword_1BE54F648, MEMORY[0x1E6981F48]);
    v39 = v76;
    v40 = v79;
    sub_1BE54C05C();
    sub_1BE4C68C8(v32, v34, v36 & 1);

    sub_1BE4FF104(v23, &qword_1EBDAC440);
    v41 = v77;
    v42 = v81;
    v77[2](v72, v39, v81);
    swift_storeEnumTagMultiPayload();
    *&v88 = v40;
    *(&v88 + 1) = v38;
    swift_getOpaqueTypeConformance2();
    v43 = sub_1BE4FF864(&qword_1EBDAC458, &qword_1EBDAC450, &qword_1BE54F650, v37);
    *&v88 = v82;
    *(&v88 + 1) = v43;
    swift_getOpaqueTypeConformance2();
    v44 = v78;
    sub_1BE54BC0C();
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4BF11C(&qword_1EBDAC468, &qword_1BE54F658);
    sub_1BE4FC830();
    sub_1BE4FC98C();
    sub_1BE54BC0C();
    sub_1BE4FF104(v44, &qword_1EBDAC438);
    (v41[1])(v39, v42);
    return sub_1BE4C58A8(v91);
  }

  v76 = a1;
  v46 = v71;
  v77 = v8;
  sub_1BE4FF104(&v88, &qword_1EBDABAF8);
  sub_1BE54B24C();
  sub_1BE54B22C();
  sub_1BE54B20C();

  if (v87)
  {
    v78 = v18;
    sub_1BE4C52F4(v86, v87);
    sub_1BE4EB2CC(&v88);
    sub_1BE4C58A8(v86);
    if (*(&v89 + 1))
    {
      v72 = v14;
      v73 = v5;
      v74 = v15;
      v75 = v11;
      sub_1BE4BF094(&v88, v91);
      sub_1BE4EB364(v46);
      sub_1BE54BABC();
      sub_1BE54BAAC();
      v47 = v92;
      v48 = v93;
      sub_1BE4C52F4(v91, v92);
      (*(v48 + 16))(v47, v48);
      sub_1BE54BA9C();

      sub_1BE54BAAC();
      sub_1BE54BAEC();
      if (qword_1EBDABA80 != -1)
      {
        swift_once();
      }

      v49 = qword_1EBDB0C00;
      v50 = sub_1BE54BF6C();
      v52 = v51;
      v54 = v53;
      v55 = MEMORY[0x1E6981F48];
      v56 = sub_1BE4FF864(&qword_1EBDAC458, &qword_1EBDAC450, &qword_1BE54F650, MEMORY[0x1E6981F48]);
      v57 = v77;
      v58 = v82;
      v59 = v71;
      sub_1BE54C05C();
      sub_1BE4C68C8(v50, v52, v54 & 1);

      sub_1BE4FF104(v59, &qword_1EBDAC450);
      v60 = v70;
      v61 = v73;
      (*(v70 + 16))(v72, v57, v73);
      swift_storeEnumTagMultiPayload();
      v62 = sub_1BE4FF864(&qword_1EBDAC448, &qword_1EBDAC440, &qword_1BE54F648, v55);
      *&v88 = v79;
      *(&v88 + 1) = v62;
      swift_getOpaqueTypeConformance2();
      *&v88 = v58;
      *(&v88 + 1) = v56;
      swift_getOpaqueTypeConformance2();
      v63 = v78;
      sub_1BE54BC0C();
      sub_1BE4FF0AC();
      swift_storeEnumTagMultiPayload();
      sub_1BE4BF11C(&qword_1EBDAC468, &qword_1BE54F658);
      sub_1BE4FC830();
      sub_1BE4FC98C();
      sub_1BE54BC0C();
      sub_1BE4FF104(v63, &qword_1EBDAC438);
      (*(v60 + 8))(v57, v61);
      return sub_1BE4C58A8(v91);
    }
  }

  else
  {
    sub_1BE4FF104(v86, &qword_1EBDAC550);
    v88 = 0u;
    v89 = 0u;
    v90 = 0;
  }

  sub_1BE4FF104(&v88, &qword_1EBDABAF8);
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v64 = qword_1EBDB0C00;
  v65 = sub_1BE54BF6C();
  v85 = v66 & 1;
  *v11 = v65;
  *(v11 + 1) = v67;
  v11[16] = v66 & 1;
  *(v11 + 17) = v86[0];
  *(v11 + 5) = *(v86 + 3);
  *(v11 + 3) = v68;
  *(v11 + 4) = sub_1BE4EBD40;
  *(v11 + 5) = 0;
  *(v11 + 6) = 0;
  *(v11 + 7) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1BE4BF11C(&qword_1EBDAC468, &qword_1BE54F658);
  sub_1BE4FC830();
  sub_1BE4FC98C();
  return sub_1BE54BC0C();
}

uint64_t sub_1BE4EA314@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v126 = a2;
  v5 = sub_1BE4BF11C(&qword_1EBDAC600, &qword_1BE54F948);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v127 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v125 = &v107 - v10;
  v120 = sub_1BE4BF11C(&qword_1EBDAC608, &qword_1BE54F950);
  v108 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v11);
  v107 = &v107 - v12;
  v13 = sub_1BE4BF11C(&qword_1EBDAC610, &qword_1BE54F958);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v124 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v128 = &v107 - v18;
  v19 = sub_1BE4BF11C(&qword_1EBDAC618, &qword_1BE54F960);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v123 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v121 = &v107 - v24;
  v134 = sub_1BE4BF11C(&qword_1EBDAC620, &qword_1BE54F968);
  v122 = *(v134 - 8);
  v26 = MEMORY[0x1EEE9AC00](v134, v25);
  v133 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v28);
  v136 = &v107 - v29;
  v115 = sub_1BE4BF11C(&qword_1EBDAC628, &qword_1BE54F970);
  MEMORY[0x1EEE9AC00](v115, v30);
  v110 = &v107 - v31;
  v32 = sub_1BE4BF11C(&qword_1EBDAC630, &qword_1BE54F978);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v109 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v36);
  v113 = &v107 - v37;
  v118 = sub_1BE4BF11C(&qword_1EBDAC638, &qword_1BE54F980);
  MEMORY[0x1EEE9AC00](v118, v38);
  v111 = sub_1BE4BF11C(&qword_1EBDAC640, &qword_1BE54F988);
  MEMORY[0x1EEE9AC00](v111, v39);
  v117 = sub_1BE4BF11C(&qword_1EBDAC648, &qword_1BE54F990);
  MEMORY[0x1EEE9AC00](v117, v40);
  v114 = &v107 - v41;
  v112 = sub_1BE4BF11C(&qword_1EBDAC650, &qword_1BE54F998);
  v43 = MEMORY[0x1EEE9AC00](v112, v42);
  v45 = &v107 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v46);
  v116 = &v107 - v47;
  v48 = sub_1BE4BF11C(&qword_1EBDAC658, &qword_1BE54F9A0);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v132 = &v107 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v52);
  v135 = &v107 - v53;
  v131 = sub_1BE4BF11C(&qword_1EBDAC660, &qword_1BE54F9A8);
  v119 = *(v131 - 8);
  v55 = MEMORY[0x1EEE9AC00](v131, v54);
  v130 = &v107 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55, v57);
  v59 = &v107 - v58;
  v137 = v2;
  sub_1BE4FA3E8(&v138);
  sub_1BE4BF11C(&qword_1EBDAC668, &qword_1BE54F9B0);
  sub_1BE4BF11C(&qword_1EBDAC670, &qword_1BE54F9B8);
  sub_1BE4FF864(&qword_1EBDAC678, &qword_1EBDAC668, &qword_1BE54F9B0, MEMORY[0x1E69817F8]);
  sub_1BE4FDDB0();
  v129 = v59;
  sub_1BE54C37C();
  v60 = a1[3];
  v61 = a1[4];
  sub_1BE4C52F4(a1, v60);
  (*(v61 + 216))(&v138, v60, v61);
  v62 = v138 >> 6;
  if (!v62)
  {
    sub_1BE4EE190(a1, v116);
    sub_1BE4EE604(a1, v113);
    sub_1BE4FF0AC();
    v65 = v109;
    sub_1BE4FF0AC();
    v66 = v110;
    sub_1BE4FF0AC();
    sub_1BE4BF11C(&qword_1EBDAC7D8, &qword_1BE54FA68);
    sub_1BE4FF0AC();
    sub_1BE4FF104(v65, &qword_1EBDAC630);
    sub_1BE4FF104(v45, &qword_1EBDAC650);
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FDF68();
    sub_1BE4FF864(&qword_1EBDAC798, &qword_1EBDAC628, &qword_1BE54F970, MEMORY[0x1E6981F48]);
    v67 = v114;
    sub_1BE54BC0C();
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FDEB0();
    sub_1BE54BC0C();
    sub_1BE4FF104(v67, &qword_1EBDAC648);
    sub_1BE4FF104(v66, &qword_1EBDAC628);
    sub_1BE4FF104(v113, &qword_1EBDAC630);
    v68 = v116;
LABEL_6:
    v63 = sub_1BE4FF104(v68, &qword_1EBDAC650);
    goto LABEL_7;
  }

  if (v62 != 1)
  {
    v69 = v116;
    sub_1BE4EE190(a1, v116);
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FDF68();
    sub_1BE4FF864(&qword_1EBDAC798, &qword_1EBDAC628, &qword_1BE54F970, MEMORY[0x1E6981F48]);
    v70 = v114;
    sub_1BE54BC0C();
    sub_1BE4FF0AC();
    swift_storeEnumTagMultiPayload();
    sub_1BE4FDEB0();
    sub_1BE54BC0C();
    sub_1BE4FF104(v70, &qword_1EBDAC648);
    v68 = v69;
    goto LABEL_6;
  }

  swift_storeEnumTagMultiPayload();
  sub_1BE4FDEB0();
  v63 = sub_1BE54BC0C();
LABEL_7:
  v71 = v125;
  v72 = v121;
  v73 = v120;
  MEMORY[0x1EEE9AC00](v63, v64);
  *(&v107 - 2) = v3;
  sub_1BE4FC244(v3, &v138);
  sub_1BE4BF11C(&qword_1EBDAC7A0, &qword_1BE54FA48);
  sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
  sub_1BE4FE6D4();
  sub_1BE4FDE34();
  sub_1BE54C37C();
  sub_1BE4EDE9C(v72);
  v74 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v75 = (v3 + *(v74 + 36));
  v77 = *v75;
  v76 = v75[1];
  *&v138 = v77;
  *(&v138 + 1) = v76;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE502204();
  v79 = v78;

  if (v79 && (, v80 = (v3 + *(v74 + 60)), v82 = *v80, v81 = v80[1], *&v138 = v82, *(&v138 + 1) = v81, sub_1BE4BF11C(&qword_1EBDAC7C8, &qword_1BE54FA60), sub_1BE54C24C(), v83 = v143, v84 = sub_1BE527E4C(), v83, (v84 & 1) == 0))
  {
    v88 = MEMORY[0x1EEE9AC00](v85, v86);
    *(&v107 - 2) = v3;
    sub_1BE4FE78C(v88, v89, v90);
    v91 = v107;
    sub_1BE54C36C();
    (*(v108 + 32))(v128, v91, v73);
    v87 = 0;
  }

  else
  {
    v87 = 1;
  }

  v92 = v128;
  sub_1BE4C63F8(v128, v87, 1, v73);
  v93 = sub_1BE4BF11C(&qword_1EBDAC7C0, &qword_1BE54FA58);
  sub_1BE4C63F8(v71, 1, 1, v93);
  v94 = v119;
  v95 = v130;
  (*(v119 + 16))(v130, v129, v131);
  *&v138 = v95;
  v96 = v132;
  sub_1BE4FF0AC();
  *(&v138 + 1) = v96;
  v97 = v122;
  v98 = v133;
  (*(v122 + 16))(v133, v136, v134);
  v139 = v98;
  v99 = v123;
  sub_1BE4FF0AC();
  v140 = v99;
  v100 = v124;
  sub_1BE4FF0AC();
  v141 = v100;
  v101 = v127;
  sub_1BE4FF0AC();
  v142 = v101;
  sub_1BE4E4424(&v138, v126);
  sub_1BE4FF104(v71, &qword_1EBDAC600);
  sub_1BE4FF104(v92, &qword_1EBDAC610);
  sub_1BE4FF104(v72, &qword_1EBDAC618);
  v102 = *(v97 + 8);
  v103 = v134;
  v102(v136, v134);
  sub_1BE4FF104(v135, &qword_1EBDAC658);
  v104 = *(v94 + 8);
  v105 = v131;
  v104(v129, v131);
  sub_1BE4FF104(v101, &qword_1EBDAC600);
  sub_1BE4FF104(v100, &qword_1EBDAC610);
  sub_1BE4FF104(v99, &qword_1EBDAC618);
  v102(v133, v103);
  sub_1BE4FF104(v132, &qword_1EBDAC658);
  return (v104)(v130, v105);
}

uint64_t sub_1BE4EB2CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54986C();
  sub_1BE549D98(v2, 0);

  sub_1BE4FFBD8();
  v3 = sub_1BE54B28C();
  ProviderDeclarations.provider(id:)(v3, v4, a1);
}

uint64_t sub_1BE4EB364@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = sub_1BE4BF11C(&qword_1EBDAC618, &qword_1BE54F960);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v98 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v95 = &v82 - v7;
  v92 = sub_1BE4BF11C(&qword_1EBDACAA0, &qword_1BE54FDB8);
  v9 = MEMORY[0x1EEE9AC00](v92, v8);
  v96 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v11);
  v94 = &v82 - v12;
  v90 = sub_1BE4BF11C(&qword_1EBDACAA8, &qword_1BE54FDC0);
  v83 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v13);
  v82 = &v82 - v14;
  v15 = sub_1BE4BF11C(&qword_1EBDACAB0, &qword_1BE54FDC8);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v93 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v101 = &v82 - v20;
  v21 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v85 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = &v82 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v82 - v30;
  v100 = (sub_1BE4BF11C(&qword_1EBDACAB8, &qword_1BE54FDD0) - 8);
  v33 = MEMORY[0x1EEE9AC00](v100, v32);
  v91 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v82 - v36;
  v102 = v1;
  sub_1BE4FA3E8(&v103);
  sub_1BE4BF11C(&qword_1EBDAC668, &qword_1BE54F9B0);
  sub_1BE4BF11C(&qword_1EBDAC670, &qword_1BE54F9B8);
  sub_1BE4FF864(&qword_1EBDAC678, &qword_1EBDAC668, &qword_1BE54F9B0, MEMORY[0x1E69817F8]);
  sub_1BE4FDDB0();
  sub_1BE54C37C();
  v38 = *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36);
  v99 = v1;
  v39 = &v1[v38];
  v40 = *(v39 + 1);
  *&v103 = *v39;
  v41 = v103;
  *(&v103 + 1) = v40;
  v42 = sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  v43 = sub_1BE54C24C();
  sub_1BE50149C(v43, v44, v45);

  v46 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  sub_1BE4C63F8(v28, 2, 4, v46);
  sub_1BE5005B4(v31, v28);
  v48 = v47;
  v87 = v28;
  sub_1BE4FD560();
  sub_1BE4FD560();
  KeyPath = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v48 & 1;
  v51 = *(v100 + 11);
  v100 = v37;
  v52 = &v37[v51];
  *v52 = KeyPath;
  v52[1] = sub_1BE4FF8C4;
  v52[2] = v50;
  v89 = v41;
  *&v103 = v41;
  *(&v103 + 1) = v40;
  v84 = v40;
  v88 = v42;
  v53 = sub_1BE54C24C();
  v54 = v85;
  sub_1BE50149C(v53, v55, v56);

  v86 = v46;
  LODWORD(v54) = sub_1BE4C63BC(v54, 4, v46);
  v57 = sub_1BE4FD560();
  if (v54 == 2)
  {
    MEMORY[0x1EEE9AC00](v57, v58);
    *(&v82 - 2) = v99;
    sub_1BE4BF11C(&qword_1EBDACAC8, &qword_1BE54FDE0);
    sub_1BE4FF780();
    v59 = v82;
    sub_1BE54C36C();
    v60 = v90;
    (*(v83 + 32))(v101, v59, v90);
    v61 = 0;
    v62 = v60;
  }

  else
  {
    v61 = 1;
    v62 = v90;
  }

  v63 = sub_1BE4C63F8(v101, v61, 1, v62);
  MEMORY[0x1EEE9AC00](v63, v64);
  v65 = v99;
  *(&v82 - 2) = v99;
  sub_1BE4FC244(v65, &v103);
  sub_1BE4BF11C(&qword_1EBDAC7A0, &qword_1BE54FA48);
  sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
  sub_1BE4FE6D4();
  sub_1BE4FDE34();
  v66 = v94;
  sub_1BE54C37C();
  *&v103 = v89;
  *(&v103 + 1) = v84;
  v67 = sub_1BE54C24C();
  sub_1BE50149C(v67, v68, v69);

  v70 = v87;
  sub_1BE4C63F8(v87, 2, 4, v86);
  sub_1BE5005B4(v31, v70);
  v72 = v71;
  sub_1BE4FD560();
  sub_1BE4FD560();
  v73 = swift_getKeyPath();
  v74 = swift_allocObject();
  *(v74 + 16) = v72 & 1;
  v75 = (v66 + *(v92 + 36));
  *v75 = v73;
  v75[1] = sub_1BE4FF8C4;
  v75[2] = v74;
  v76 = v95;
  sub_1BE4EDE9C(v95);
  v77 = v91;
  sub_1BE4FF0AC();
  v78 = v93;
  sub_1BE4FF0AC();
  v79 = v96;
  sub_1BE4FF0AC();
  v80 = v98;
  sub_1BE4FF0AC();
  sub_1BE4FF0AC();
  sub_1BE4BF11C(&qword_1EBDACAC0, &qword_1BE54FDD8);
  sub_1BE4FF0AC();
  sub_1BE4FF0AC();
  sub_1BE4FF0AC();
  sub_1BE4FF104(v76, &qword_1EBDAC618);
  sub_1BE4FF104(v66, &qword_1EBDACAA0);
  sub_1BE4FF104(v101, &qword_1EBDACAB0);
  sub_1BE4FF104(v100, &qword_1EBDACAB8);
  sub_1BE4FF104(v80, &qword_1EBDAC618);
  sub_1BE4FF104(v79, &qword_1EBDACAA0);
  sub_1BE4FF104(v78, &qword_1EBDACAB0);
  return sub_1BE4FF104(v77, &qword_1EBDACAB8);
}

void sub_1BE4EBD40()
{
  if (qword_1EBDABAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1BE54B2EC();
  sub_1BE4C52BC(v0, qword_1EBDB0C38);
  oslog = sub_1BE54B2BC();
  v1 = sub_1BE54C98C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1BE4B8000, oslog, v1, "intendedDefaultLLM is nil", v2, 2u);
    MEMORY[0x1BFB48AC0](v2, -1, -1);
  }
}

uint64_t sub_1BE4EBE28@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BE4EBF08@<X0>(uint64_t a1@<X8>)
{
  sub_1BE54BADC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBDB0C00;
  result = sub_1BE54BF6C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BE4EBFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = (a1 + *(MEMORY[0x1EEE9AC00](v4 - 8, v7) + 52));
  v9 = *(v8 + 2);
  v14 = *v8;
  v15 = v9;
  sub_1BE4BF11C(&qword_1EBDAC540, &unk_1BE54F7B8);
  sub_1BE54C24C();
  sub_1BE4FCF80();
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1BE4FCFD8(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  return sub_1BE4BF9A0(sub_1BE4FD0A0, v11, a2);
}

uint64_t sub_1BE4EC158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v9 = (a2 + v8[9]);
  v10 = *v9;
  v11 = v9[1];
  *&v20 = *v9;
  *(&v20 + 1) = v11;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE4FF0AC();
  sub_1BE5011B0(&v20);

  if (*(a1 + 40) == 1)
  {
    *&v20 = v10;
    *(&v20 + 1) = v11;
    sub_1BE54C24C();
    v12 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    sub_1BE4C63F8(v7, 1, 4, v12);
  }

  else
  {
    *&v20 = v10;
    *(&v20 + 1) = v11;
    sub_1BE54C24C();
    sub_1BE500020(v7);
  }

  sub_1BE5014C4();

  v13 = (a2 + v8[10]);
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v20) = v14;
  *(&v20 + 1) = v15;
  LOBYTE(v19[0]) = 0;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  sub_1BE54C25C();
  v16 = (a2 + v8[11]);
  v17 = *(v16 + 2);
  v20 = *v16;
  v21 = v17;
  v19[0] = 0;
  v19[1] = 0;
  sub_1BE4BF11C(&qword_1EBDAC540, &unk_1BE54F7B8);
  return sub_1BE54C25C();
}

uint64_t sub_1BE4EC34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  sub_1BE54C8CC();
  *(v3 + 48) = sub_1BE54C8BC();
  v5 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE4EC3E4, v5, v4);
}

uint64_t sub_1BE4EC3E4()
{
  sub_1BE4E01D4();
  v1 = *(v0 + 40);

  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4FFDBC();
  *(v1 + 16) = v2;
  *(v0 + 24) = v3;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE503918();

  sub_1BE4E01E0();

  return v4();
}

uint64_t sub_1BE4EC47C(uint64_t a1)
{
  sub_1BE4EC4F0();
  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE503EB0();
}

void sub_1BE4EC4F0()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v77 - v8;
  v10 = type metadata accessor for SettingsViewModel.IdentifiableDeepLinkParams(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v15 = (v0 + v14[9]);
  v16 = *v15;
  v17 = v15[1];
  *&v87 = *v15;
  *(&v87 + 1) = v17;
  v18 = sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  v19 = sub_1BE54C24C();
  sub_1BE5017DC(v19, v20, v21);

  v22 = *&v13[*(v10 + 20)];

  sub_1BE4FD560();
  v83 = v22;
  if (v22)
  {
    v78 = v9;
    v79 = v6;
    v82 = v1;
    *&v80 = v16;
    *&v87 = v16;
    *(&v87 + 1) = v17;
    *(&v80 + 1) = v17;
    v81 = v18;
    sub_1BE54C24C();
    v23 = v84;
    swift_getKeyPath();
    *&v87 = v23;
    sub_1BE4FEB10(&qword_1EBDAC5B8, type metadata accessor for SettingsViewModel, &protocol conformance descriptor for SettingsViewModel);
    sub_1BE54AFCC();

    *&v87 = v23;
    swift_getKeyPath();
    sub_1BE54AFEC();

    v24 = v23 + OBJC_IVAR____TtC26GenerativePartnerServiceUI17SettingsViewModel__deepLinkParams;
    swift_beginAccess();
    *(v24 + *(v10 + 20)) = 0;

    *&v87 = v23;
    swift_getKeyPath();
    sub_1BE54AFDC();

    if (qword_1EBDABAB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1BE54B2EC();
    sub_1BE4C52BC(v25, qword_1EBDB0C50);
    v26 = v83;

    v27 = sub_1BE54B2BC();
    v28 = sub_1BE54C9AC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v87 = v30;
      *v29 = 136446210;
      v31 = sub_1BE54C60C();
      v33 = sub_1BE4C5338(v31, v32, &v87);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1BE4B8000, v27, v28, "[Deep Links] handleDeepLinkParams: %{public}s", v29, 0xCu);
      sub_1BE4C58A8(v30);
      MEMORY[0x1BFB48AC0](v30, -1, -1);
      MEMORY[0x1BFB48AC0](v29, -1, -1);
    }

    v34 = v82;
    v35 = sub_1BE50B8C8(2003134838, 0xE400000000000000, v26);
    if (!v36)
    {
      v35 = 0;
      v36 = 0xE000000000000000;
    }

    GenerativePartnerSettingsDeepLinks.Action.init(rawValue:)(*&v35);
    switch(v90)
    {
      case 1:
        v87 = v80;
        v52 = sub_1BE54C24C();
        v53 = v78;
        sub_1BE50149C(v52, v54, v55);

        v56 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
        if (sub_1BE4C63BC(v53, 4, v56) != 1)
        {

          goto LABEL_36;
        }

        sub_1BE4FD560();
        v57 = sub_1BE54B2BC();
        v58 = sub_1BE54C9AC();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_1BE4B8000, v57, v58, "[Deep Links] handleDeepLinkParams: proceeding to sign in", v59, 2u);
          MEMORY[0x1BFB48AC0](v59, -1, -1);
        }

        v60 = sub_1BE50B8C8(0x72656E74726170, 0xE700000000000000, v26);
        v62 = v61;

        if (qword_1EDDD6890 == -1)
        {
          goto LABEL_17;
        }

        break;
      case 2:

        v46 = v80;
        v87 = v80;
        v47 = sub_1BE54C24C();
        v48 = v79;
        sub_1BE50149C(v47, v49, v50);

        v51 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
        if (sub_1BE4C63BC(v48, 4, v51))
        {
LABEL_36:
          sub_1BE4FD560();
        }

        else
        {
          v76 = sub_1BE54B3DC();
          (*(*(v76 - 8) + 8))(v48, v76);
          v87 = v46;
          sub_1BE54C24C();
          sub_1BE501D7C(1);
        }

        return;
      case 3:
        sub_1BE50B8C8(0x6E696769726FLL, 0xE600000000000000, v26);
        v74 = sub_1BE54CC0C();

        if (v74 >= 4)
        {
          v75 = 1;
        }

        else
        {
          v75 = v74;
        }

        LOBYTE(v87) = v75;
        sub_1BE4F5538(&v87);
        return;
      case 5:

        return;
      default:
        v37 = sub_1BE50B8C8(0x72656E74726170, 0xE700000000000000, v26);
        v39 = v38;

        v40 = (v34 + v14[11]);
        v41 = *(v40 + 2);
        v87 = *v40;
        *&v88 = v41;
        *&v84 = v37;
        *(&v84 + 1) = v39;
        sub_1BE4BF11C(&qword_1EBDAC540, &unk_1BE54F7B8);
        sub_1BE54C25C();
        v87 = v80;
        sub_1BE54C24C();
        sub_1BE5010B4(&v87);

        v42 = *(&v88 + 1);
        sub_1BE4FF104(&v87, &qword_1EBDABAF8);
        if (!v42)
        {
          v43 = (v34 + v14[10]);
          v44 = *v43;
          v45 = *(v43 + 1);
          LOBYTE(v87) = v44;
          *(&v87 + 1) = v45;
          LOBYTE(v84) = 1;
          sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
          sub_1BE54C25C();
        }

        return;
    }

    while (1)
    {
      swift_once();
LABEL_17:
      v63 = off_1EDDD6898;
      swift_beginAccess();
      v64 = v63[2];
      v65 = *(v64 + 16);
      if (!v65)
      {
        break;
      }

      v66 = v64 + 32;

      v67 = 0;
      while (v67 < *(v64 + 16))
      {
        sub_1BE4C6918(v66, &v84);
        v68 = v85;
        v69 = v86;
        sub_1BE4C52F4(&v84, v85);
        v70 = (*(v69 + 8))(v68, v69);
        if (v62)
        {
          if (v70 == v60 && v62 == v71)
          {

            goto LABEL_40;
          }

          v73 = sub_1BE54CCDC();

          if (v73)
          {

LABEL_40:

            sub_1BE4BF094(&v84, &v87);
            goto LABEL_41;
          }
        }

        else
        {
        }

        ++v67;
        sub_1BE4C58A8(&v84);
        v66 += 40;
        if (v65 == v67)
        {

          goto LABEL_38;
        }
      }

      __break(1u);
    }

LABEL_38:

    v89 = 0;
    v87 = 0u;
    v88 = 0u;
LABEL_41:
    sub_1BE4EF7D0(&v87);
    sub_1BE4FF104(&v87, &qword_1EBDABAF8);
  }
}

uint64_t sub_1BE4ECE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v5 = sub_1BE54B5BC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v42 - v16;
  (*(v6 + 104))(&v42 - v16, *MEMORY[0x1E697BE38], v5);
  v18 = sub_1BE54B5AC();
  v19 = *(v6 + 8);
  result = v19(v17, v5);
  if (v18)
  {
    v45 = a3;
    if (qword_1EBDABAC8 != -1)
    {
      swift_once();
    }

    v21 = sub_1BE54B2EC();
    sub_1BE4C52BC(v21, qword_1EBDB0C98);
    v22 = *(v6 + 16);
    v22(v14, v46, v5);
    v22(v10, a2, v5);
    v23 = sub_1BE54B2BC();
    v24 = sub_1BE54C97C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v44 = v24;
      v26 = v25;
      v46 = swift_slowAlloc();
      v47[0] = v46;
      *v26 = 136446466;
      v22(v17, v14, v5);
      v27 = sub_1BE54C73C();
      v42 = v10;
      v43 = v23;
      v28 = v27;
      v30 = v29;
      v19(v14, v5);
      v31 = sub_1BE4C5338(v28, v30, v47);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2082;
      v32 = v42;
      v22(v17, v42, v5);
      v33 = sub_1BE54C73C();
      v35 = v34;
      v19(v32, v5);
      v36 = sub_1BE4C5338(v33, v35, v47);

      *(v26 + 14) = v36;
      v37 = v43;
      _os_log_impl(&dword_1BE4B8000, v43, v44, "Phase change from %{public}s to %{public}s", v26, 0x16u);
      v38 = v46;
      swift_arrayDestroy();
      MEMORY[0x1BFB48AC0](v38, -1, -1);
      MEMORY[0x1BFB48AC0](v26, -1, -1);
    }

    else
    {

      v19(v10, v5);
      v19(v14, v5);
    }

    v39 = (v45 + *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36));
    v41 = *v39;
    v40 = v39[1];
    v47[0] = v41;
    v47[1] = v40;
    sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
    sub_1BE54C24C();
    sub_1BE506954();
  }

  return result;
}

uint64_t sub_1BE4ED264(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE4BF11C(&qword_1EBDAC5A8, &qword_1BE54F818);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v45 - v12;
  v14 = sub_1BE4BF11C(&qword_1EBDAC5B0, &unk_1BE54F820);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = (&v45 - v16);
  v18 = sub_1BE54B3DC();
  MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 8))
  {
    v45 = v20;
    v23 = (a3 + *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36));
    v25 = *v23;
    v24 = v23[1];
    *&v49 = *v23;
    *(&v49 + 1) = v24;
    sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
    sub_1BE54C24C();
    sub_1BE5010B4(&v49);

    if (!v50)
    {
      v41 = &qword_1EBDABAF8;
      v42 = &v49;
      return sub_1BE4FF104(v42, v41);
    }

    sub_1BE4BF094(&v49, v51);
    sub_1BE4C6918(v51, &v49);
    type metadata accessor for ExternalAIAuthenticatorHelper(0);
    swift_allocObject();
    sub_1BE534D4C(&v49);
    sub_1BE533EC4();

    v26 = sub_1BE54B4FC();
    if (sub_1BE4C63BC(v13, 1, v26) == 1)
    {
      sub_1BE4C58A8(v51);
      sub_1BE4FF104(v13, &qword_1EBDAC5A8);
      sub_1BE4C63F8(v17, 1, 1, v18);
LABEL_22:
      v41 = &qword_1EBDAC5B0;
      v42 = v17;
      return sub_1BE4FF104(v42, v41);
    }

    sub_1BE54B45C();
    (*(*(v26 - 8) + 8))(v13, v26);
    if (sub_1BE4C63BC(v17, 1, v18) == 1)
    {
      sub_1BE4C58A8(v51);
      goto LABEL_22;
    }

    v43 = v45;
    (*(v45 + 32))(v22, v17, v18);
    *&v49 = v25;
    *(&v49 + 1) = v24;
    sub_1BE54C24C();
    (*(v43 + 16))(v9, v22, v18);
    v44 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    sub_1BE4C63F8(v9, 0, 4, v44);
    sub_1BE5014C4();

    (*(v43 + 8))(v22, v18);
    return sub_1BE4C58A8(v51);
  }

  else
  {
    v27 = *a1;
    v28 = a1[1];
    if (qword_1EDDD6890 != -1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v29 = off_1EDDD6898;
      result = swift_beginAccess();
      v31 = v29[2];
      v32 = *(v31 + 16);
      if (!v32)
      {
        break;
      }

      v33 = v31 + 32;

      v34 = 0;
      while (v34 < *(v31 + 16))
      {
        sub_1BE4C6918(v33, &v46);
        v35 = v47;
        v36 = v48;
        sub_1BE4C52F4(&v46, v47);
        v37 = (*(v36 + 8))(v35, v36);
        if (v28)
        {
          if (v37 == v27 && v28 == v38)
          {

LABEL_26:

            sub_1BE4BF094(&v46, &v49);
            sub_1BE4BF094(&v49, v51);
            sub_1BE4ED7BC(0, v51);
            return sub_1BE4C58A8(v51);
          }

          v40 = sub_1BE54CCDC();

          if (v40)
          {
            goto LABEL_26;
          }
        }

        else
        {
        }

        ++v34;
        sub_1BE4C58A8(&v46);
        v33 += 40;
        if (v32 == v34)
        {
        }
      }

      __break(1u);
LABEL_30:
      swift_once();
    }
  }

  return result;
}

uint64_t sub_1BE4ED7BC(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v41[-v13];
  v15 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v19 = &v41[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v41[-v21];
  if ((a1 & 1) != 0 || (v23 = (v3 + *(v6 + 36)), v25 = *v23, v24 = v23[1], *&v43[0] = v25, *(&v43[0] + 1) = v24, sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8), v26 = sub_1BE54C24C(), sub_1BE50149C(v26, v27, v28), , v29 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8), sub_1BE4C63F8(v19, 2, 4, v29), sub_1BE5005B4(v22, v19), v42 = v30, sub_1BE4FD560(), result = sub_1BE4FD560(), (v42 & 1) == 0))
  {
    v32 = (v3 + *(v6 + 36));
    v34 = *v32;
    v33 = v32[1];
    *&v43[0] = v34;
    *(&v43[0] + 1) = v33;
    sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
    sub_1BE54C24C();
    v35 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
    sub_1BE4C63F8(v22, 3, 4, v35);
    sub_1BE5014C4();

    v36 = sub_1BE54C91C();
    sub_1BE4C63F8(v14, 1, 1, v36);
    sub_1BE4C6918(a2, v43);
    sub_1BE4FCF80();
    sub_1BE54C8CC();
    v37 = sub_1BE54C8BC();
    v38 = (*(v7 + 80) + 72) & ~*(v7 + 80);
    v39 = swift_allocObject();
    v40 = MEMORY[0x1E69E85E0];
    *(v39 + 16) = v37;
    *(v39 + 24) = v40;
    sub_1BE4BF094(v43, v39 + 32);
    sub_1BE4FCFD8(v10, v39 + v38);
    sub_1BE50BA3C();
  }

  return result;
}

void *sub_1BE4EDB5C(uint64_t a1)
{
  v2 = type metadata accessor for GenerativePartnerSettingsPanelView(0);
  v3 = (a1 + *(v2 + 40));
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v21[0]) = *v3;
  v21[1] = v5;
  sub_1BE4BF11C(&qword_1EBDABD28, &qword_1BE54DE90);
  result = sub_1BE54C24C();
  if (v18 != 1)
  {
    return result;
  }

  sub_1BE54B24C();
  sub_1BE54B22C();
  sub_1BE54B20C();

  if (!v17)
  {
    sub_1BE4FF104(v16, &qword_1EBDAC550);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    return sub_1BE4FF104(&v18, &qword_1EBDABAF8);
  }

  sub_1BE4C52F4(v16, v17);
  sub_1BE4EB2CC(&v18);
  sub_1BE4C58A8(v16);
  if (!*(&v19 + 1))
  {
    return sub_1BE4FF104(&v18, &qword_1EBDABAF8);
  }

  sub_1BE4BF094(&v18, v21);
  static GenerativePartnerRestrictionUtils.useCaseDoesNotAllowCurrentIPCountryCode(provider:)();
  if (v7)
  {
    if (qword_1EBDABAA8 != -1)
    {
      swift_once();
    }

    v8 = sub_1BE54B2EC();
    sub_1BE4C52BC(v8, qword_1EBDB0C38);
    v9 = sub_1BE54B2BC();
    v10 = sub_1BE54C97C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v18 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_1BE4C5338(0xD000000000000019, 0x80000001BE553DF0, &v18);
      _os_log_impl(&dword_1BE4B8000, v9, v10, "%{public}s: Presenting regional unavailability alert, reason = useCaseDoesNotAllowCurrentIPCountryCode", v11, 0xCu);
      sub_1BE4C58A8(v12);
      MEMORY[0x1BFB48AC0](v12, -1, -1);
      MEMORY[0x1BFB48AC0](v11, -1, -1);
    }

    v13 = (a1 + *(v2 + 56));
    v14 = *v13;
    v15 = *(v13 + 1);
    LOBYTE(v18) = v14;
    *(&v18 + 1) = v15;
    LOBYTE(v16[0]) = 1;
    sub_1BE54C25C();
    LOBYTE(v18) = v4;
    *(&v18 + 1) = v5;
    LOBYTE(v16[0]) = 0;
    sub_1BE54C25C();
  }

  return sub_1BE4C58A8(v21);
}

uint64_t sub_1BE4EDE14(uint64_t a1)
{
  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  sub_1BE502848();

  sub_1BE519FC0(1);
}

uint64_t sub_1BE4EDE9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = sub_1BE4BF11C(&qword_1EBDAC780, &qword_1BE54FA30);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - v6;
  if (sub_1BE4E948C())
  {
    sub_1BE54BABC();
    sub_1BE54BAAC();
    sub_1BE52636C();
    sub_1BE54BA9C();

    sub_1BE54BAAC();
    sub_1BE54BAEC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v8 = qword_1EBDB0C00;
    v9 = sub_1BE54BF6C();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    KeyPath = swift_getKeyPath();
    v17 = &v7[*(v4 + 36)];
    sub_1BE4BF11C(&qword_1EBDAC790, &unk_1BE54FA38);
    sub_1BE54B6FC();
    *v17 = KeyPath;
    *v7 = v9;
    *(v7 + 1) = v11;
    v7[16] = v13 & 1;
    *(v7 + 3) = v15;
    sub_1BE4FE614();
    sub_1BE54C37C();
    v18 = sub_1BE4BF11C(&qword_1EBDACA50, &qword_1BE54FCF8);
    return sub_1BE4C63F8(a1, 0, 1, v18);
  }

  else
  {
    v20 = sub_1BE4BF11C(&qword_1EBDACA50, &qword_1BE54FCF8);

    return sub_1BE4C63F8(a1, 1, 1, v20);
  }
}

int *sub_1BE4EE190@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_1BE4BF11C(&qword_1EBDAC730, &qword_1BE54FA08);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v32 - v6;
  v8 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = sub_1BE4BF11C(&qword_1EBDAC6B0, &qword_1BE54F9C8);
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - v12;
  v36 = v2;
  v37 = a1;
  sub_1BE54BABC();
  sub_1BE54BAAC();
  v14 = a1[3];
  v15 = a1[4];
  sub_1BE4C52F4(a1, v14);
  (*(v15 + 16))(v14, v15);
  sub_1BE54BA9C();

  sub_1BE54BAAC();
  sub_1BE54BAEC();
  if (qword_1EBDABA80 != -1)
  {
    swift_once();
  }

  v16 = qword_1EBDB0C00;
  v38 = sub_1BE54BF6C();
  v39 = v17;
  v40 = v18 & 1;
  v41 = v19;
  sub_1BE4EECC4(v2, a1, v7);
  KeyPath = swift_getKeyPath();
  v21 = &v7[*(sub_1BE4BF11C(&qword_1EBDAC740, &qword_1BE54FA10) + 36)];
  *v21 = KeyPath;
  *(v21 + 1) = 0;
  v21[16] = 1;
  v22 = swift_getKeyPath();
  v23 = &v7[*(v4 + 36)];
  sub_1BE4BF11C(&qword_1EBDAC790, &unk_1BE54FA38);
  sub_1BE54B6FC();
  *v23 = v22;
  sub_1BE4BF11C(&qword_1EBDAC6C0, &qword_1BE54F9D0);
  sub_1BE4FE0B8();
  sub_1BE4FE308();
  sub_1BE54C35C();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v25 = result;
    v26 = [result isExternalIntelligenceSignInAllowed];

    if (v26)
    {
      type metadata accessor for GenerativePartnerServiceUserDefaults();
      v27 = sub_1BE53EA04() ^ 1;
    }

    else
    {
      v27 = 1;
    }

    v28 = swift_getKeyPath();
    v29 = swift_allocObject();
    *(v29 + 16) = v27 & 1;
    v30 = v35;
    (*(v33 + 32))(v35, v13, v34);
    result = sub_1BE4BF11C(&qword_1EBDAC650, &qword_1BE54F998);
    v31 = (v30 + result[9]);
    *v31 = v28;
    v31[1] = sub_1BE4FF8C4;
    v31[2] = v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BE4EE604@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1BE4BF11C(&qword_1EBDAC7E0, &qword_1BE54FA70);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v37 - v10;
  v12 = sub_1BE4BF11C(&qword_1EBDAC7E8, &qword_1BE54FA78);
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v37 - v14;
  v16 = *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36);
  v42 = v2;
  v17 = (v2 + v16);
  v19 = *v17;
  v18 = v17[1];
  v47 = v19;
  v48 = v18;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C24C();
  v20 = sub_1BE5023E4();

  if (v20)
  {
    v38 = v8;
    v39 = v7;
    v40 = a2;
    v37[2] = v37;
    MEMORY[0x1EEE9AC00](v21, v22);
    v37[1] = &v37[-4];
    sub_1BE54BADC();
    if (qword_1EBDABA80 != -1)
    {
      swift_once();
    }

    v37[0] = qword_1EBDB0C00;
    v47 = sub_1BE54BF6C();
    v48 = v23;
    v49 = v24 & 1;
    v50 = v25;
    sub_1BE54BABC();
    sub_1BE54BAAC();
    v26 = a1[3];
    v27 = a1[4];
    sub_1BE4C52F4(a1, v26);
    (*(v27 + 16))(v26, v27);
    sub_1BE54BA9C();

    sub_1BE54BAAC();
    sub_1BE54BAEC();
    v28 = v37[0];
    v43 = sub_1BE54BF6C();
    v44 = v29;
    v45 = v30 & 1;
    v46 = v31;
    sub_1BE4BF11C(&qword_1EBDAC7F0, &qword_1BE54FA80);
    sub_1BE4FF864(&qword_1EBDAC7F8, &qword_1EBDAC7F0, &qword_1BE54FA80, MEMORY[0x1E6981F48]);
    v32 = sub_1BE54C35C();
    MEMORY[0x1EEE9AC00](v32, v33);
    sub_1BE4BF11C(&qword_1EBDAC800, &qword_1BE54FA88);
    sub_1BE4FE810();
    sub_1BE4FE8CC();
    v34 = v39;
    sub_1BE54C04C();
    (*(v38 + 8))(v11, v34);
    a2 = v40;
    (*(v41 + 32))(v40, v15, v12);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  return sub_1BE4C63F8(a2, v35, 1, v12);
}

void sub_1BE4EEB50(uint64_t a2@<X8>)
{
  type metadata accessor for GenerativePartnerSettingsPanelView(0);
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  sub_1BE54C26C();
  swift_getKeyPath();
  sub_1BE4BF11C(&qword_1EBDAC520, &qword_1BE54F778);
  sub_1BE54C31C();

  sub_1BE4BF11C(&qword_1EBDAC7C8, &qword_1BE54FA60);
  sub_1BE54C24C();
  *a2 = [objc_allocWithZone(MEMORY[0x1E698B3C8]) init];
  swift_unknownObjectWeakInit();
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  swift_unknownObjectWeakAssign();
}

id sub_1BE4EECC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v5 = sub_1BE54BACC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v75 = sub_1BE4BF11C(&qword_1EBDAC780, &qword_1BE54FA30);
  MEMORY[0x1EEE9AC00](v75, v7);
  v9 = &v74 - v8;
  v76 = sub_1BE4BF11C(&qword_1EBDAC8E0, &qword_1BE54FB78);
  MEMORY[0x1EEE9AC00](v76, v10);
  v78 = (&v74 - v11);
  v12 = sub_1BE4BF11C(&qword_1EBDAC8E8, &qword_1BE54FB80);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v74 - v14;
  v77 = sub_1BE4BF11C(&qword_1EBDAC770, &qword_1BE54FA28);
  MEMORY[0x1EEE9AC00](v77, v16);
  v18 = &v74 - v17;
  v19 = type metadata accessor for SettingsViewModel.AccountSignInStatus(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (a1 + *(type metadata accessor for GenerativePartnerSettingsPanelView(0) + 36));
  v25 = *v23;
  v24 = v23[1];
  *&v85[0] = v25;
  *(&v85[0] + 1) = v24;
  sub_1BE4BF11C(&qword_1EBDAC3D0, &unk_1BE54F5F8);
  v26 = sub_1BE54C24C();
  sub_1BE50149C(v26, v27, v28);

  v29 = sub_1BE4BF11C(&qword_1EBDAC548, &qword_1BE54F7C8);
  v30 = sub_1BE4C63BC(v22, 4, v29);
  if (v30)
  {
    sub_1BE4FD560();
  }

  else
  {
    v31 = sub_1BE54B3DC();
    (*(*(v31 - 8) + 8))(v22, v31);
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v33 = result;
    v34 = [result isExternalIntelligenceSignInAllowed];

    if ((v34 & 1) == 0)
    {
      sub_1BE54BADC();
      if (qword_1EBDABA80 != -1)
      {
        swift_once();
      }

      v49 = qword_1EBDB0C00;
      v50 = sub_1BE54BF6C();
      v52 = v51;
      *v15 = v50;
      *(v15 + 1) = v51;
      v54 = v53 & 1;
      v15[16] = v53 & 1;
      *(v15 + 3) = v55;
      swift_storeEnumTagMultiPayload();
      sub_1BE4D91B0(v50, v52, v54);
      sub_1BE4FE614();

      sub_1BE54BC0C();
      sub_1BE4FF0AC();
      swift_storeEnumTagMultiPayload();
      sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
      sub_1BE4FE588();
      sub_1BE4FDE34();
      sub_1BE54BC0C();
      sub_1BE4C68C8(v50, v52, v54);

      v47 = v18;
      v48 = &qword_1EBDAC770;
      return sub_1BE4FF104(v47, v48);
    }

    v35 = a2[3];
    v36 = a2[4];
    sub_1BE4C52F4(a2, v35);
    (*(v36 + 216))(v85, v35, v36);
    if (LOBYTE(v85[0]) == 128)
    {
      v74 = v12;
      sub_1BE54BABC();
      sub_1BE54BAAC();
      sub_1BE52636C();
      sub_1BE54BA9C();

      sub_1BE54BAAC();
      sub_1BE54BAEC();
      if (qword_1EBDABA80 != -1)
      {
        swift_once();
      }

      v37 = qword_1EBDB0C00;
      v38 = sub_1BE54BF6C();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      KeyPath = swift_getKeyPath();
      v46 = &v9[*(v75 + 36)];
      sub_1BE4BF11C(&qword_1EBDAC790, &unk_1BE54FA38);
      sub_1BE54B6FC();
      *v46 = KeyPath;
      *v9 = v38;
      *(v9 + 1) = v40;
      v9[16] = v42 & 1;
      *(v9 + 3) = v44;
      sub_1BE4FF0AC();
      swift_storeEnumTagMultiPayload();
      sub_1BE4FE614();
      sub_1BE54BC0C();
      sub_1BE4FF0AC();
      swift_storeEnumTagMultiPayload();
      sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
      sub_1BE4FE588();
      sub_1BE4FDE34();
      sub_1BE54BC0C();
      sub_1BE4FF104(v18, &qword_1EBDAC770);
      v47 = v9;
      v48 = &qword_1EBDAC780;
      return sub_1BE4FF104(v47, v48);
    }

    if (v30)
    {
      sub_1BE54BABC();
      sub_1BE54BAAC();
      v56 = a2[3];
      v57 = a2[4];
      sub_1BE4C52F4(a2, v56);
      (*(v57 + 16))(v56, v57);
      sub_1BE54BA9C();

      sub_1BE54BAAC();
      sub_1BE52636C();
      sub_1BE54BA9C();

      sub_1BE54BAAC();
      sub_1BE54BAEC();
      if (qword_1EBDABA80 != -1)
      {
        swift_once();
      }

      v58 = qword_1EBDB0C00;
      v59 = sub_1BE54BF6C();
      v61 = v59;
      v62 = v60;
      v64 = v63 & 1;
      v80 = v59;
      v81 = v60;
      v82 = v63 & 1;
      v83 = v65;
      v84 = 1;
    }

    else
    {
      sub_1BE54BABC();
      sub_1BE54BAAC();
      v66 = a2[3];
      v67 = a2[4];
      sub_1BE4C52F4(a2, v66);
      (*(v67 + 16))(v66, v67);
      sub_1BE54BA9C();

      sub_1BE54BAAC();
      sub_1BE52636C();
      sub_1BE54BA9C();

      sub_1BE54BAAC();
      sub_1BE54BAEC();
      if (qword_1EBDABA80 != -1)
      {
        swift_once();
      }

      v68 = qword_1EBDB0C00;
      v59 = sub_1BE54BF6C();
      v61 = v59;
      v62 = v60;
      v80 = v59;
      v81 = v60;
      v64 = v69 & 1;
      v82 = v69 & 1;
      v83 = v70;
      v84 = 0;
    }

    sub_1BE4D91B0(v59, v60, v64);

    sub_1BE54BC0C();
    v71 = v86;
    v72 = v85[1];
    v73 = v78;
    *v78 = v85[0];
    v73[1] = v72;
    *(v73 + 32) = v71;
    swift_storeEnumTagMultiPayload();
    sub_1BE4BF11C(&qword_1EBDAC690, &qword_1BE54F9C0);
    sub_1BE4FE588();
    sub_1BE4FDE34();
    sub_1BE54BC0C();
    sub_1BE4C68C8(v61, v62, v64);
  }

  else
  {
    __break(1u);
  }

  return result;
}