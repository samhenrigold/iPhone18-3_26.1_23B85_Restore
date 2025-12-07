uint64_t sub_1CFDBE434(unsigned __int8 *a1)
{
  v3 = sub_1CFE30054();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v34 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v41 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v34 - v17;
  v37 = *a1;
  v19 = sub_1CFE30064();
  if (v19)
  {
    v20 = v19;
    v34 = v12;
    v35 = v8;
    v36 = v1;
    v44 = *(v19 + 16);
    if (v44)
    {
      v12 = 0;
      v43 = v4 + 16;
      v40 = (v4 + 32);
      v21 = (v4 + 8);
      v42 = MEMORY[0x1E69E7CC0];
      v38 = v3;
      while (1)
      {
        if (v12 >= *(v20 + 16))
        {
          __break(1u);
LABEL_28:
          v21 = sub_1CFDDD40C(0, v21[2] + 1, 1, v21);
LABEL_21:
          v32 = v21[2];
          v31 = v21[3];
          if (v32 >= v31 >> 1)
          {
            v21 = sub_1CFDDD40C((v31 > 1), v32 + 1, 1, v21);
          }

          (*(v4 + 8))(v12, v3);
          v21[2] = (v32 + 1);
          (*(v4 + 32))(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v32, v8, v3);
          return sub_1CFE30074();
        }

        v8 = ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v22 = *(v4 + 72);
        (*(v4 + 16))(v18, &v8[v20 + v22 * v12], v3);
        if (sub_1CFE30034() == 0x656372756F73 && v23 == 0xE600000000000000)
        {
        }

        else
        {
          v24 = sub_1CFE310B4();

          if ((v24 & 1) == 0)
          {
            v25 = *v40;
            (*v40)(v41, v18, v3);
            v26 = v42;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v45 = v26;
            v39 = v25;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1CFDC4670(0, v26[2] + 1, 1);
              v26 = v45;
            }

            v29 = v26[2];
            v28 = v26[3];
            if (v29 >= v28 >> 1)
            {
              sub_1CFDC4670((v28 > 1), v29 + 1, 1);
              v26 = v45;
            }

            v26[2] = (v29 + 1);
            v42 = v26;
            v30 = &v8[v26 + v29 * v22];
            v3 = v38;
            v39(v30, v41, v38);
            goto LABEL_6;
          }
        }

        (*v21)(v18, v3);
LABEL_6:
        if (v44 == ++v12)
        {
          goto LABEL_18;
        }
      }
    }

    v42 = MEMORY[0x1E69E7CC0];
LABEL_18:

    v8 = v35;
    v12 = v34;
    v21 = v42;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  if (v37 <= 8 || v37 == 9)
  {
    sub_1CFE30024();

    (*(v4 + 16))(v8, v12, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  return sub_1CFE30074();
}

uint64_t BalanceURLBuilder.queryString(for:)(char *a1)
{
  v2 = v1;
  sub_1CFDC3C20(0, &qword_1EDC318C0, MEMORY[0x1E696B418], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - v6;
  v8 = sub_1CFE30114();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v2) = *v2;
  sub_1CFE30104();
  if (v2 == 1)
  {
    v13 = "swift";
    v14 = 0xD00000000000001BLL;
  }

  else
  {
    sub_1CFE30924();
    v14 = 0xD000000000000029;
    v13 = " Date";
  }

  sub_1CFE300F4();
  MEMORY[0x1D3875760](v14, v13 | 0x8000000000000000);
  v15 = *a1;
  v16 = *(a1 + 1);

  sub_1CFDBEC6C(v15, v16);
  v17 = type metadata accessor for SleepingSampleChangeNotification(0);
  v18 = *(v17 + 20);
  v19 = sub_1CFE307E4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v7, &a1[v18], v19);
  (*(v20 + 56))(v7, 0, 1, v19);
  sub_1CFDBF0C8(v7);
  v21 = 0;
  v22 = &a1[*(v17 + 24)];
  if (v22[8] == 1)
  {
    v21 = *v22 != 0;
  }

  v23 = sub_1CFDBF944(v21);
  if ((v22[8] & 1) == 0)
  {
    v26 = *v22;
    v27 = 0;
    v23 = sub_1CFDBFDC0(&v26);
  }

  v24 = MEMORY[0x1D3875790](v23);
  (*(v9 + 8))(v12, v8);
  return v24;
}

uint64_t sub_1CFDBEC6C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CFE30054();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v37 - v13;
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v45 = v37 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v37 - v19;
  v21 = sub_1CFE30064();
  if (!v21)
  {
    v46 = MEMORY[0x1E69E7CC0];
    if (!a2)
    {
      return sub_1CFE30074();
    }

    goto LABEL_20;
  }

  v22 = v21;
  v37[1] = a1;
  v38 = a2;
  v39 = v14;
  v40 = v10;
  v41 = v2;
  v48 = *(v21 + 16);
  if (!v48)
  {
    v46 = MEMORY[0x1E69E7CC0];
LABEL_19:

    v10 = v40;
    v14 = v39;
    if (!v38)
    {
      return sub_1CFE30074();
    }

LABEL_20:
    sub_1CFE30024();

    (*(v6 + 16))(v10, v14, v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v23 = 0;
  v47 = v6 + 16;
  v44 = (v6 + 32);
  v14 = (v6 + 8);
  v46 = MEMORY[0x1E69E7CC0];
  v42 = v5;
  while (v23 < *(v22 + 16))
  {
    v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v25 = *(v6 + 72);
    (*(v6 + 16))(v20, v22 + v24 + v25 * v23, v5);
    if (sub_1CFE30034() == 0x6163696669746F6ELL && v26 == 0xEE0044496E6F6974)
    {
    }

    else
    {
      v10 = sub_1CFE310B4();

      if ((v10 & 1) == 0)
      {
        v27 = *v44;
        (*v44)(v45, v20, v5);
        v28 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v28;
        v43 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CFDC4670(0, v28[2] + 1, 1);
          v28 = v49;
        }

        v31 = v28[2];
        v30 = v28[3];
        v10 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_1CFDC4670((v30 > 1), v31 + 1, 1);
          v28 = v49;
        }

        v28[2] = v10;
        v46 = v28;
        v32 = v28 + v24 + v31 * v25;
        v5 = v42;
        v43(v32, v45, v42);
        goto LABEL_6;
      }
    }

    (*v14)(v20, v5);
LABEL_6:
    if (v48 == ++v23)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_26:
  v46 = sub_1CFDDD40C(0, v46[2] + 1, 1, v46);
LABEL_21:
  v34 = v46[2];
  v33 = v46[3];
  if (v34 >= v33 >> 1)
  {
    v46 = sub_1CFDDD40C((v33 > 1), v34 + 1, 1, v46);
  }

  (*(v6 + 8))(v14, v5);
  v35 = v46;
  v46[2] = v34 + 1;
  (*(v6 + 32))(v35 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, v10, v5);
  return sub_1CFE30074();
}

uint64_t sub_1CFDBF0C8(uint64_t a1)
{
  v3 = sub_1CFE30204();
  v72 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v69 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDC3D40(0);
  v70 = *(v9 - 8);
  v71 = v9;
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v67 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v68 = &v61 - v14;
  sub_1CFDC3C20(0, &qword_1EDC318C0, MEMORY[0x1E696B418], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v75 = &v61 - v17;
  v18 = sub_1CFE307E4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1CFE30054();
  v79 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v74 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v73 = &v61 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v81 = &v61 - v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v61 - v34;
  v36 = sub_1CFE30064();
  v76 = v1;
  v77 = a1;
  if (v36)
  {
    v37 = v36;
    v62 = v22;
    v63 = v3;
    v64 = v19;
    v65 = v18;
    v84 = *(v36 + 16);
    if (v84)
    {
      v22 = 0;
      v18 = v79;
      v83 = v79 + 16;
      v80 = (v79 + 32);
      v19 = v79 + 8;
      v82 = MEMORY[0x1E69E7CC0];
      v78 = v23;
      while (1)
      {
        if (v22 >= *(v37 + 16))
        {
          __break(1u);
LABEL_28:
          v55 = sub_1CFDDD40C(0, v82[2] + 1, 1, v82);
          goto LABEL_23;
        }

        v38 = (*(v18 + 80) + 32) & ~*(v18 + 80);
        v39 = *(v18 + 72);
        (*(v18 + 16))(v35, v37 + v38 + v39 * v22, v23);
        if (sub_1CFE30034() == 0x6144746567726174 && v40 == 0xE900000000000079)
        {
        }

        else
        {
          v41 = sub_1CFE310B4();

          if ((v41 & 1) == 0)
          {
            v42 = *v80;
            (*v80)(v81, v35, v23);
            v43 = v82;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v86 = v43;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1CFDC4670(0, v43[2] + 1, 1);
              v43 = v86;
            }

            v46 = v43[2];
            v45 = v43[3];
            if (v46 >= v45 >> 1)
            {
              sub_1CFDC4670((v45 > 1), v46 + 1, 1);
              v43 = v86;
            }

            v43[2] = v46 + 1;
            v82 = v43;
            v47 = v43 + v38 + v46 * v39;
            v23 = v78;
            v42(v47, v81, v78);
            v18 = v79;
            goto LABEL_6;
          }
        }

        (*v19)(v35, v23);
LABEL_6:
        if (v84 == ++v22)
        {
          goto LABEL_18;
        }
      }
    }

    v82 = MEMORY[0x1E69E7CC0];
LABEL_18:

    a1 = v77;
    v18 = v65;
    v19 = v64;
    v3 = v63;
    v22 = v62;
  }

  else
  {
    v82 = MEMORY[0x1E69E7CC0];
  }

  v48 = v75;
  sub_1CFDC3D9C(a1, v75, &qword_1EDC318C0, MEMORY[0x1E696B418]);
  if ((*(v19 + 48))(v48, 1, v18) == 1)
  {
    sub_1CFDC2860(v48, &qword_1EDC318C0, MEMORY[0x1E696B418]);
  }

  else
  {
    (*(v19 + 32))(v22, v48, v18);
    v85 = sub_1CFE307A4();
    sub_1CFE303D4();
    sub_1CFDBCCBC();
    v49 = v67;
    sub_1CFE30144();
    v50 = v69;
    sub_1CFE301F4();
    v51 = v68;
    v52 = v71;
    MEMORY[0x1D3875810](v50, v71);
    (*(v72 + 8))(v50, v3);
    v53 = *(v70 + 8);
    v53(v49, v52);
    sub_1CFDBCD10();
    sub_1CFE30CD4();
    v53(v51, v52);
    v54 = v73;
    sub_1CFE30024();

    (*(v79 + 16))(v74, v54, v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_28;
    }

    v55 = v82;
LABEL_23:
    v57 = v55[2];
    v56 = v55[3];
    v58 = v55;
    a1 = v77;
    if (v57 >= v56 >> 1)
    {
      v58 = sub_1CFDDD40C((v56 > 1), v57 + 1, 1, v55);
    }

    v59 = v79;
    (*(v79 + 8))(v73, v23);
    (*(v19 + 8))(v22, v18);
    v58[2] = v57 + 1;
    (*(v59 + 32))(v58 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v57, v74, v23);
  }

  sub_1CFE30074();
  return sub_1CFDC2860(a1, &qword_1EDC318C0, MEMORY[0x1E696B418]);
}

uint64_t sub_1CFDBF944(int a1)
{
  v3 = sub_1CFE30054();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v36[-v11];
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v44 = &v36[-v15];
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v36[-v17];
  v19 = sub_1CFE30064();
  if (v19)
  {
    v20 = v19;
    v37 = a1;
    v38 = v12;
    v39 = v8;
    v40 = v1;
    v47 = *(v19 + 16);
    if (v47)
    {
      v21 = 0;
      v46 = v4 + 16;
      v48 = 0x80000001CFE385A0;
      v43 = (v4 + 32);
      v12 = (v4 + 8);
      v45 = MEMORY[0x1E69E7CC0];
      v41 = v3;
      while (1)
      {
        if (v21 >= *(v20 + 16))
        {
          __break(1u);
LABEL_27:
          v31 = sub_1CFDDD40C(0, v45[2] + 1, 1, v45);
          goto LABEL_22;
        }

        v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v23 = *(v4 + 72);
        (*(v4 + 16))(v18, v20 + v22 + v23 * v21, v3);
        if (sub_1CFE30034() == 0xD000000000000013 && v48 == v24)
        {
        }

        else
        {
          v8 = sub_1CFE310B4();

          if ((v8 & 1) == 0)
          {
            v25 = *v43;
            (*v43)(v44, v18, v3);
            v26 = v45;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v49 = v26;
            v42 = v25;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1CFDC4670(0, v26[2] + 1, 1);
              v26 = v49;
            }

            v29 = v26[2];
            v28 = v26[3];
            v8 = v29 + 1;
            if (v29 >= v28 >> 1)
            {
              sub_1CFDC4670((v28 > 1), v29 + 1, 1);
              v26 = v49;
            }

            v26[2] = v8;
            v45 = v26;
            v30 = v26 + v22 + v29 * v23;
            v3 = v41;
            v42(v30, v44, v41);
            goto LABEL_6;
          }
        }

        (*v12)(v18, v3);
LABEL_6:
        if (v47 == ++v21)
        {
          goto LABEL_18;
        }
      }
    }

    v45 = MEMORY[0x1E69E7CC0];
LABEL_18:

    v8 = v39;
    v12 = v38;
    LOBYTE(a1) = v37;
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC0];
  }

  if (a1 != 2)
  {
    sub_1CFE30024();

    (*(v4 + 16))(v8, v12, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_27;
    }

    v31 = v45;
LABEL_22:
    v33 = v31[2];
    v32 = v31[3];
    v34 = v31;
    if (v33 >= v32 >> 1)
    {
      v34 = sub_1CFDDD40C((v32 > 1), v33 + 1, 1, v31);
    }

    (*(v4 + 8))(v12, v3);
    v34[2] = v33 + 1;
    (*(v4 + 32))(v34 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33, v8, v3);
  }

  return sub_1CFE30074();
}

uint64_t sub_1CFDBFDC0(uint64_t *a1)
{
  v4 = sub_1CFE30204();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v60 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v57 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1CFDC3D40(0);
  v61 = *(v10 - 8);
  v62 = v10;
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v58 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v54[-v15];
  v16 = sub_1CFE30054();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v66 = &v54[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v65 = &v54[-v23];
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v71 = &v54[-v26];
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v54[-v28];
  v30 = *a1;
  v31 = *(a1 + 8);
  v67 = v1;
  v32 = sub_1CFE30064();
  if (!v32)
  {
    v72 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      return sub_1CFE30074();
    }

    goto LABEL_17;
  }

  v33 = v32;
  v55 = v31;
  v56 = v30;
  v74 = *(v32 + 16);
  if (!v74)
  {
    v72 = MEMORY[0x1E69E7CC0];
LABEL_22:

    v30 = v56;
    if (v55)
    {
      return sub_1CFE30074();
    }

LABEL_17:
    v76 = v30;
    sub_1CFE303D4();
    sub_1CFDBCCBC();
    v45 = v58;
    sub_1CFE30144();
    v46 = v60;
    sub_1CFE301F4();
    v47 = v59;
    v48 = v62;
    MEMORY[0x1D3875810](v46, v62);
    (*(v63 + 8))(v46, v64);
    v49 = *(v61 + 8);
    v49(v45, v48);
    sub_1CFDBCD10();
    sub_1CFE30CD4();
    v49(v47, v48);
    v34 = v65;
    sub_1CFE30024();

    v2 = v66;
    (*(v17 + 16))(v66, v34, v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v34 = 0;
  v73 = v17 + 16;
  v75 = 0x80000001CFE38580;
  v70 = (v17 + 32);
  v35 = (v17 + 8);
  v72 = MEMORY[0x1E69E7CC0];
  v68 = v17;
  v69 = v16;
  while (v34 < *(v33 + 16))
  {
    v2 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v36 = *(v17 + 72);
    (*(v17 + 16))(v29, v33 + v2 + v36 * v34, v16);
    if (sub_1CFE30034() == 0xD000000000000015 && v75 == v37)
    {
    }

    else
    {
      v38 = sub_1CFE310B4();

      if ((v38 & 1) == 0)
      {
        v39 = *v70;
        (*v70)(v71, v29, v16);
        v40 = v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CFDC4670(0, v40[2] + 1, 1);
          v40 = v77;
        }

        v43 = v40[2];
        v42 = v40[3];
        if (v43 >= v42 >> 1)
        {
          sub_1CFDC4670((v42 > 1), v43 + 1, 1);
          v40 = v77;
        }

        v40[2] = v43 + 1;
        v72 = v40;
        v44 = v40 + v2 + v43 * v36;
        v16 = v69;
        v39(v44, v71, v69);
        v17 = v68;
        goto LABEL_6;
      }
    }

    (*v35)(v29, v16);
LABEL_6:
    if (v74 == ++v34)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  v72 = sub_1CFDDD40C(0, v72[2] + 1, 1, v72);
LABEL_18:
  v51 = v72[2];
  v50 = v72[3];
  if (v51 >= v50 >> 1)
  {
    v72 = sub_1CFDDD40C((v50 > 1), v51 + 1, 1, v72);
  }

  (*(v17 + 8))(v34, v16);
  v52 = v72;
  v72[2] = v51 + 1;
  (*(v17 + 32))(v52 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v51, v2, v16);
  return sub_1CFE30074();
}

uint64_t BalanceURLBuilder.updateActivity(_:withURL:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69681B8];
  sub_1CFDC3C20(0, &qword_1EC509578, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v31 - v15;
  v35 = *v2;
  sub_1CFE30084();
  sub_1CFDC3D9C(v16, v13, &qword_1EC509578, v4);
  v17 = sub_1CFE30114();
  v18 = *(v17 - 8);
  v34 = *(v18 + 48);
  if (v34(v13, 1, v17) == 1)
  {
    sub_1CFDC2860(v13, &qword_1EC509578, MEMORY[0x1E69681B8]);
    LOBYTE(v19) = 4;
    v20 = v35;
  }

  else
  {
    v21 = sub_1CFE300B4();
    v36[0] = 47;
    v36[1] = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v21, v22);
    *(&v31 - 2) = v36;
    v25 = sub_1CFDC28D0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1CFDC3690, (&v31 - 4), v23, v24, &v31);
    if (v25[2])
    {
      v26 = v25[4];
      v27 = v25[5];
      v32 = v25[6];
      v33 = a1;
      v28 = v25[7];

      MEMORY[0x1D3876020](v26, v27, v32, v28);

      v19 = sub_1CFE30F54();

      if (v19 >= 4)
      {
        LOBYTE(v19) = 4;
      }
    }

    else
    {

      LOBYTE(v19) = 4;
    }

    v20 = v35;
    (*(v18 + 8))(v13, v17);
  }

  LOBYTE(v36[0]) = v19;
  sub_1CFDC0904(v36, v20);
  sub_1CFDC3D9C(v16, v9, &qword_1EC509578, MEMORY[0x1E69681B8]);
  if (v34(v9, 1, v17) == 1)
  {
    sub_1CFDC2860(v9, &qword_1EC509578, MEMORY[0x1E69681B8]);
    v29 = 10;
  }

  else
  {
    sub_1CFDC0B44(v36);
    v29 = v36[0];
    (*(v18 + 8))(v9, v17);
  }

  LOBYTE(v36[0]) = v29;
  sub_1CFDC0DA0(v36, v20);
  return sub_1CFDC2860(v16, &qword_1EC509578, MEMORY[0x1E69681B8]);
}

HealthBalance::BalanceURLBuilder::Route_optional sub_1CFDC081C@<W0>(_BYTE *a1@<X8>)
{
  v2 = sub_1CFE300B4();
  v15[0] = 47;
  v15[1] = 0xE100000000000000;
  v14[2] = v15;
  v4 = sub_1CFDC28D0(0x7FFFFFFFFFFFFFFFLL, 1, sub_1CFDC3E24, v14, v2, v3, v15);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];

    v9 = MEMORY[0x1D3876020](v5, v6, v7, v8);
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    return BalanceURLBuilder.Route.init(rawValue:)(v12);
  }

  else
  {

    *a1 = 4;
  }

  return result;
}

void sub_1CFDC0904(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  if (v3 != 4)
  {
    v4 = v2;
    v6 = 0xD000000000000011;
    sub_1CFDC3C20(0, &qword_1EC5095A0, sub_1CFDC3C84, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFE324E0;
    if (a2)
    {
      v8 = 0xD000000000000011;
    }

    else
    {
      v8 = 0xD00000000000001CLL;
    }

    if (a2)
    {
      v9 = "HealthBalanceAppPluginBundle";
    }

    else
    {
      v9 = "nanohealthbalance";
    }

    MEMORY[0x1D3876060](v8, v9 | 0x8000000000000000);

    MEMORY[0x1D3876060](46, 0xE100000000000000);
    MEMORY[0x1D3876060](0x6574756F72, 0xE500000000000000);
    v10 = MEMORY[0x1E69E6158];
    sub_1CFE30D54();
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v11 = 0xEF7363697274654DLL;
        v6 = 0x7961446E65766573;
      }

      else
      {
        v11 = 0xED00007363697274;
        v6 = 0x654D796144656E6FLL;
      }
    }

    else if (v3)
    {
      v11 = 0xEB000000006D6F6FLL;
      v6 = 0x5265636E616C6162;
    }

    else
    {
      v11 = 0x80000001CFE38470;
    }

    *(inited + 96) = v10;
    *(inited + 72) = v6;
    *(inited + 80) = v11;
    sub_1CFDFCFA8(inited);
    swift_setDeallocating();
    sub_1CFDC3B18(inited + 32, sub_1CFDC3C84);
    v12 = sub_1CFE30804();

    [v4 addUserInfoEntriesFromDictionary_];
  }
}

char sub_1CFDC0B44@<W0>(_BYTE *a1@<X8>)
{
  v2 = sub_1CFE30054();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  v11 = sub_1CFE30064();
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v26 = v10;
  v27 = a1;
  v13 = *(v11 + 16);
  if (!v13)
  {
LABEL_9:

    a1 = v27;
LABEL_13:
    *a1 = 10;
    return v11;
  }

  v14 = 0;
  v15 = 0x656372756F73;
  v28 = v3 + 16;
  while (1)
  {
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      return v11;
    }

    (*(v3 + 16))(v7, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, v2);
    if (sub_1CFE30034() == v15 && v16 == 0xE600000000000000)
    {
      break;
    }

    v17 = v15;
    v18 = sub_1CFE310B4();

    if (v18)
    {
      goto LABEL_11;
    }

    ++v14;
    LOBYTE(v11) = (*(v3 + 8))(v7, v2);
    v15 = v17;
    if (v13 == v14)
    {
      goto LABEL_9;
    }
  }

LABEL_11:

  v19 = v26;
  (*(v3 + 32))(v26, v7, v2);
  v20 = sub_1CFE30044();
  v22 = v21;
  LOBYTE(v11) = (*(v3 + 8))(v19, v2);
  a1 = v27;
  if (!v22)
  {
    goto LABEL_13;
  }

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  LOBYTE(v11) = BalanceURLBuilder.Source.init(rawValue:)(v23);
  return v11;
}

void sub_1CFDC0DA0(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  if (v3 != 10)
  {
    v4 = v2;
    v6 = 0xD000000000000010;
    sub_1CFDC3C20(0, &qword_1EC5095A0, sub_1CFDC3C84, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CFE324E0;
    if (a2)
    {
      v8 = 0xD000000000000011;
    }

    else
    {
      v8 = 0xD00000000000001CLL;
    }

    if (a2)
    {
      v9 = "HealthBalanceAppPluginBundle";
    }

    else
    {
      v9 = "nanohealthbalance";
    }

    MEMORY[0x1D3876060](v8, v9 | 0x8000000000000000);

    MEMORY[0x1D3876060](46, 0xE100000000000000);
    v10 = 0xE600000000000000;
    MEMORY[0x1D3876060](0x656372756F73, 0xE600000000000000);
    v11 = MEMORY[0x1E69E6158];
    sub_1CFE30D54();
    if (v3 > 4)
    {
      if (v3 > 6)
      {
        if (v3 == 7)
        {
          v10 = 0x80000001CFE38510;
        }

        else if (v3 == 8)
        {
          v10 = 0x80000001CFE38530;
          v6 = 0xD000000000000019;
        }

        else
        {
          v6 = 0x746567646977;
        }

        goto LABEL_28;
      }

      if (v3 != 5)
      {
        v10 = 0xE800000000000000;
        v6 = 0x7070416863746177;
        goto LABEL_28;
      }

      v6 = 0x65656C536F6E616ELL;
    }

    else
    {
      if (v3 <= 1)
      {
        if (v3)
        {
          v10 = 0xE700000000000000;
          v6 = 0x7373656E746966;
        }

        else
        {
          v10 = 0xE800000000000000;
          v6 = 0x7974697669746361;
        }

        goto LABEL_28;
      }

      if (v3 != 2)
      {
        if (v3 == 3)
        {
          v10 = 0x80000001CFE384D0;
          v6 = 0xD000000000000015;
        }

        else
        {
          v10 = 0xEC00000073676E69;
          v6 = 0x747465536F6E616ELL;
        }

        goto LABEL_28;
      }

      v6 = 0x704168746C616568;
    }

    v10 = 0xE900000000000070;
LABEL_28:
    *(inited + 96) = v11;
    *(inited + 72) = v6;
    *(inited + 80) = v10;
    sub_1CFDFCFA8(inited);
    swift_setDeallocating();
    sub_1CFDC3B18(inited + 32, sub_1CFDC3C84);
    v12 = sub_1CFE30804();

    [v4 addUserInfoEntriesFromDictionary_];
  }
}

uint64_t sub_1CFDC1148@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, unint64_t)@<X3>, char a5@<W4>, _BYTE *a6@<X8>)
{
  v11 = v6;
  v14 = [v11 userInfo];
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = v14;
  v16 = sub_1CFE30814();

  v22 = 0;
  v23 = 0xE000000000000000;
  if (a1)
  {
    v17 = 0xD000000000000011;
  }

  else
  {
    v17 = 0xD00000000000001CLL;
  }

  if (a1)
  {
    v18 = "HealthBalanceAppPluginBundle";
  }

  else
  {
    v18 = "nanohealthbalance";
  }

  MEMORY[0x1D3876060](v17, v18 | 0x8000000000000000);

  MEMORY[0x1D3876060](46, 0xE100000000000000);
  MEMORY[0x1D3876060](a2, a3);
  sub_1CFE30D54();
  if (!*(v16 + 16) || (v19 = sub_1CFDFC3F4(&v22), (v20 & 1) == 0))
  {

    sub_1CFDC3BCC(&v22);
LABEL_14:
    v24 = 0u;
    v25 = 0u;
    goto LABEL_15;
  }

  sub_1CFDAC5F0(*(v16 + 56) + 32 * v19, &v24);
  sub_1CFDC3BCC(&v22);

  if (!*(&v25 + 1))
  {
LABEL_15:
    result = sub_1CFDC3B18(&v24, sub_1CFDC3B78);
    goto LABEL_16;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return a4(v22, v23);
  }

LABEL_16:
  *a6 = a5;
  return result;
}

uint64_t sub_1CFDC1348@<X0>(void (*a2)(void)@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  sub_1CFDC3C20(0, &qword_1EC509578, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v14 - v9;
  sub_1CFE30084();
  v11 = sub_1CFE30114();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    result = sub_1CFDC2860(v10, &qword_1EC509578, MEMORY[0x1E69681B8]);
    *a4 = a3;
  }

  else
  {
    a2();
    return (*(v12 + 8))(v10, v11);
  }

  return result;
}

uint64_t BalanceURLBuilder.notification(forQueryString:)@<X0>(void *a3@<X8>)
{
  sub_1CFDC3C20(0, &qword_1EDC318C0, MEMORY[0x1E696B418], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v32 - v6;
  v8 = sub_1CFE307E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFE30114();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE30104();

  sub_1CFE300E4();
  v18 = sub_1CFDC18F4();
  if (v19)
  {
    v20 = v19;
    v33 = v18;
    sub_1CFDC1B4C(v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      (*(v14 + 8))(v17, v13);

      sub_1CFDC2860(v7, &qword_1EDC318C0, MEMORY[0x1E696B418]);
    }

    else
    {
      v32 = a3;
      v21 = *(v9 + 32);
      v21(v12, v7, v8);
      v22 = sub_1CFDC20BC();
      if (v22 != 2)
      {
        v27 = v22;
        if (v22)
        {
          (*(v14 + 8))(v17, v13);
          v28 = 1;
        }

        else
        {
          sub_1CFDC2330(&v34);
          (*(v14 + 8))(v17, v13);
          if (v35)
          {
            (*(v9 + 8))(v12, v8);

            v23 = type metadata accessor for SleepingSampleChangeNotification(0);
            v24 = *(*(v23 - 8) + 56);
            v25 = v32;
            return v24(v25, 1, 1, v23);
          }

          v28 = v34;
        }

        v29 = type metadata accessor for SleepingSampleChangeNotification(0);
        v30 = v32;
        v21(v32 + *(v29 + 20), v12, v8);
        *v30 = v33;
        v30[1] = v20;
        v31 = v30 + *(v29 + 24);
        *v31 = v28;
        v31[8] = v27 & 1;
        return (*(*(v29 - 8) + 56))(v30, 0, 1, v29);
      }

      (*(v9 + 8))(v12, v8);
      (*(v14 + 8))(v17, v13);
      a3 = v32;
    }
  }

  else
  {
    (*(v14 + 8))(v17, v13);
  }

  v23 = type metadata accessor for SleepingSampleChangeNotification(0);
  v24 = *(*(v23 - 8) + 56);
  v25 = a3;
  return v24(v25, 1, 1, v23);
}

uint64_t sub_1CFDC18F4()
{
  v0 = sub_1CFE30054();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v19 - v7;
  result = sub_1CFE30064();
  if (result)
  {
    v10 = result;
    v11 = *(result + 16);
    v19 = v8;
    v20 = v11;
    if (v11)
    {
      v12 = 0;
      v13 = 0x6163696669746F6ELL;
      while (v12 < *(v10 + 16))
      {
        (*(v1 + 16))(v5, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, v0);
        if (sub_1CFE30034() == v13 && v14 == 0xEE0044496E6F6974)
        {

LABEL_12:

          v17 = v19;
          (*(v1 + 32))(v19, v5, v0);
          v18 = sub_1CFE30044();
          (*(v1 + 8))(v17, v0);
          return v18;
        }

        v15 = v13;
        v16 = sub_1CFE310B4();

        if (v16)
        {
          goto LABEL_12;
        }

        ++v12;
        result = (*(v1 + 8))(v5, v0);
        v13 = v15;
        if (v20 == v12)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:

      return 0;
    }
  }

  return result;
}

unsigned __int8 *sub_1CFDC1B4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFE30054();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v56 - v10;
  v12 = sub_1CFE30064();
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  v14 = *(v12 + 16);
  if (!v14)
  {
LABEL_10:

LABEL_11:
    v21 = 1;
LABEL_12:
    v22 = sub_1CFE307E4();
    return (*(*(v22 - 8) + 56))(a1, v21, 1, v22);
  }

  v56 = v11;
  v57 = a1;
  v15 = 0;
  v16 = 0x6144746567726174;
  v58 = v4 + 16;
  while (1)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    (*(v4 + 16))(v8, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v3);
    v17 = sub_1CFE30034();
    v1 = v18;
    if (v17 == v16 && v18 == 0xE900000000000079)
    {
      break;
    }

    v19 = v16;
    v20 = sub_1CFE310B4();

    if (v20)
    {
      goto LABEL_14;
    }

    ++v15;
    (*(v4 + 8))(v8, v3);
    v16 = v19;
    if (v14 == v15)
    {
      goto LABEL_9;
    }
  }

LABEL_14:

  v24 = v56;
  (*(v4 + 32))(v56, v8, v3);
  v1 = sub_1CFE30044();
  v13 = v25;
  result = (*(v4 + 8))(v24, v3);
  if (!v13)
  {
LABEL_80:
    v21 = 1;
    a1 = v57;
    goto LABEL_12;
  }

  v26 = HIBYTE(v13) & 0xF;
  v27 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v28 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {
LABEL_9:
    a1 = v57;
    goto LABEL_10;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
LABEL_79:
    sub_1CFDC2C90(v1, v13, 10);
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      a1 = v57;
      goto LABEL_77;
    }

    goto LABEL_80;
  }

  a1 = v57;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v59[0] = v1;
    v59[1] = v13 & 0xFFFFFFFFFFFFFFLL;
    if (v1 == 43)
    {
      if (!v26)
      {
        goto LABEL_86;
      }

      if (--v26)
      {
        v42 = 0;
        v43 = v59 + 1;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            break;
          }

          v45 = 10 * v42;
          if ((v42 * 10) >> 64 != (10 * v42) >> 63)
          {
            break;
          }

          v42 = v45 + v44;
          if (__OFADD__(v45, v44))
          {
            break;
          }

          ++v43;
          if (!--v26)
          {
            goto LABEL_76;
          }
        }
      }
    }

    else if (v1 == 45)
    {
      if (!v26)
      {
        goto LABEL_84;
      }

      if (--v26)
      {
        v34 = 0;
        v35 = v59 + 1;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v34;
          if ((v34 * 10) >> 64 != (10 * v34) >> 63)
          {
            break;
          }

          v34 = v37 - v36;
          if (__OFSUB__(v37, v36))
          {
            break;
          }

          ++v35;
          if (!--v26)
          {
            goto LABEL_76;
          }
        }
      }
    }

    else if (v26)
    {
      v49 = 0;
      v50 = v59;
      while (1)
      {
        v51 = *v50 - 48;
        if (v51 > 9)
        {
          break;
        }

        v52 = 10 * v49;
        if ((v49 * 10) >> 64 != (10 * v49) >> 63)
        {
          break;
        }

        v49 = v52 + v51;
        if (__OFADD__(v52, v51))
        {
          break;
        }

        ++v50;
        if (!--v26)
        {
          goto LABEL_76;
        }
      }
    }

LABEL_75:
    LOBYTE(v26) = 1;
    goto LABEL_76;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    result = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1CFE30E14();
  }

  v29 = *result;
  if (v29 == 43)
  {
    if (v27 < 1)
    {
      goto LABEL_85;
    }

    v26 = v27 - 1;
    if (v27 == 1)
    {
      goto LABEL_75;
    }

    v38 = 0;
    if (!result)
    {
      goto LABEL_67;
    }

    v39 = result + 1;
    while (1)
    {
      v40 = *v39 - 48;
      if (v40 > 9)
      {
        goto LABEL_75;
      }

      v41 = 10 * v38;
      if ((v38 * 10) >> 64 != (10 * v38) >> 63)
      {
        goto LABEL_75;
      }

      v38 = v41 + v40;
      if (__OFADD__(v41, v40))
      {
        goto LABEL_75;
      }

      ++v39;
      if (!--v26)
      {
        goto LABEL_76;
      }
    }
  }

  if (v29 != 45)
  {
    if (!v27)
    {
      goto LABEL_75;
    }

    v46 = 0;
    if (!result)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v47 = *result - 48;
      if (v47 > 9)
      {
        goto LABEL_75;
      }

      v48 = 10 * v46;
      if ((v46 * 10) >> 64 != (10 * v46) >> 63)
      {
        goto LABEL_75;
      }

      v46 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_75;
      }

      ++result;
      if (!--v27)
      {
        goto LABEL_67;
      }
    }
  }

  if (v27 >= 1)
  {
    v26 = v27 - 1;
    if (v27 == 1)
    {
      goto LABEL_75;
    }

    v30 = 0;
    if (result)
    {
      v31 = result + 1;
      while (1)
      {
        v32 = *v31 - 48;
        if (v32 > 9)
        {
          goto LABEL_75;
        }

        v33 = 10 * v30;
        if ((v30 * 10) >> 64 != (10 * v30) >> 63)
        {
          goto LABEL_75;
        }

        v30 = v33 - v32;
        if (__OFSUB__(v33, v32))
        {
          goto LABEL_75;
        }

        ++v31;
        if (!--v26)
        {
          goto LABEL_76;
        }
      }
    }

LABEL_67:
    LOBYTE(v26) = 0;
LABEL_76:
    v60 = v26;
    v53 = v26;

    if (v53)
    {
      goto LABEL_11;
    }

LABEL_77:
    sub_1CFE30744();
    v21 = 0;
    goto LABEL_12;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_1CFDC20BC()
{
  v0 = sub_1CFE30054();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v20 - v7;
  result = sub_1CFE30064();
  if (!result)
  {
    return 2;
  }

  v10 = result;
  v20[0] = v8;
  v11 = *(result + 16);
  if (!v11)
  {
LABEL_9:

    return 2;
  }

  v12 = 0;
  v20[1] = v1 + 16;
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v1 + 16))(v5, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, v0);
    if (sub_1CFE30034() == 0xD000000000000013 && 0x80000001CFE385A0 == v13)
    {
      break;
    }

    v14 = sub_1CFE310B4();

    if (v14)
    {
      goto LABEL_11;
    }

    ++v12;
    result = (*(v1 + 8))(v5, v0);
    if (v11 == v12)
    {
      goto LABEL_9;
    }
  }

LABEL_11:

  v15 = v20[0];
  (*(v1 + 32))(v20[0], v5, v0);
  sub_1CFE30044();
  v17 = v16;
  (*(v1 + 8))(v15, v0);
  if (!v17)
  {
    return 2;
  }

  v18 = sub_1CFE30F54();

  if (v18 == 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (v18)
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *sub_1CFDC2330@<X0>(unint64_t a1@<X8>)
{
  v3 = sub_1CFE30054();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v46 - v10;
  result = sub_1CFE30064();
  if (!result)
  {
LABEL_75:
    v24 = 0;
    v43 = 1;
LABEL_76:
    *a1 = v24;
    *(a1 + 8) = v43;
    return result;
  }

  v13 = result;
  v14 = *(result + 2);
  if (!v14)
  {
    goto LABEL_10;
  }

  v46 = v11;
  v47 = a1;
  a1 = 0;
  v48 = v4 + 16;
  while (1)
  {
    if (a1 >= *(v13 + 16))
    {
      __break(1u);
LABEL_78:
      v24 = sub_1CFDC2C90(v1, v13, 10);
      v45 = v44;

      if (v45)
      {
        goto LABEL_75;
      }

      goto LABEL_79;
    }

    (*(v4 + 16))(v8, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * a1, v3);
    v15 = sub_1CFE30034();
    v1 = v16;
    if (v15 == 0xD000000000000015 && 0x80000001CFE38580 == v16)
    {
      break;
    }

    v17 = sub_1CFE310B4();

    if (v17)
    {
      goto LABEL_12;
    }

    ++a1;
    (*(v4 + 8))(v8, v3);
    if (v14 == a1)
    {
      a1 = v47;
      goto LABEL_10;
    }
  }

LABEL_12:

  v18 = v46;
  (*(v4 + 32))(v46, v8, v3);
  v1 = sub_1CFE30044();
  v13 = v19;
  result = (*(v4 + 8))(v18, v3);
  a1 = v47;
  if (!v13)
  {
    goto LABEL_75;
  }

  v20 = HIBYTE(v13) & 0xF;
  v21 = v1 & 0xFFFFFFFFFFFFLL;
  if (!((v13 & 0x2000000000000000) != 0 ? HIBYTE(v13) & 0xF : v1 & 0xFFFFFFFFFFFFLL))
  {
LABEL_10:

    goto LABEL_75;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_78;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v49[0] = v1;
    v49[1] = v13 & 0xFFFFFFFFFFFFFFLL;
    if (v1 == 43)
    {
      if (!v20)
      {
        goto LABEL_84;
      }

      if (--v20)
      {
        v24 = 0;
        v34 = v49 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v20)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else if (v1 == 45)
    {
      if (!v20)
      {
        goto LABEL_82;
      }

      if (--v20)
      {
        v24 = 0;
        v28 = v49 + 1;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v24;
          if ((v24 * 10) >> 64 != (10 * v24) >> 63)
          {
            break;
          }

          v24 = v30 - v29;
          if (__OFSUB__(v30, v29))
          {
            break;
          }

          ++v28;
          if (!--v20)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else if (v20)
    {
      v24 = 0;
      v39 = v49;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        v41 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          break;
        }

        v24 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          break;
        }

        ++v39;
        if (!--v20)
        {
          goto LABEL_74;
        }
      }
    }

LABEL_73:
    v24 = 0;
    LOBYTE(v20) = 1;
    goto LABEL_74;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    result = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1CFE30E14();
  }

  v23 = *result;
  if (v23 == 43)
  {
    if (v21 < 1)
    {
      goto LABEL_83;
    }

    v20 = v21 - 1;
    if (v21 == 1)
    {
      goto LABEL_73;
    }

    v24 = 0;
    if (!result)
    {
      goto LABEL_65;
    }

    v31 = result + 1;
    while (1)
    {
      v32 = *v31 - 48;
      if (v32 > 9)
      {
        goto LABEL_73;
      }

      v33 = 10 * v24;
      if ((v24 * 10) >> 64 != (10 * v24) >> 63)
      {
        goto LABEL_73;
      }

      v24 = v33 + v32;
      if (__OFADD__(v33, v32))
      {
        goto LABEL_73;
      }

      ++v31;
      if (!--v20)
      {
        goto LABEL_74;
      }
    }
  }

  if (v23 != 45)
  {
    if (!v21)
    {
      goto LABEL_73;
    }

    v24 = 0;
    if (!result)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v37 = *result - 48;
      if (v37 > 9)
      {
        goto LABEL_73;
      }

      v38 = 10 * v24;
      if ((v24 * 10) >> 64 != (10 * v24) >> 63)
      {
        goto LABEL_73;
      }

      v24 = v38 + v37;
      if (__OFADD__(v38, v37))
      {
        goto LABEL_73;
      }

      ++result;
      if (!--v21)
      {
        goto LABEL_65;
      }
    }
  }

  if (v21 >= 1)
  {
    v20 = v21 - 1;
    if (v21 == 1)
    {
      goto LABEL_73;
    }

    v24 = 0;
    if (result)
    {
      v25 = result + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          goto LABEL_73;
        }

        v27 = 10 * v24;
        if ((v24 * 10) >> 64 != (10 * v24) >> 63)
        {
          goto LABEL_73;
        }

        v24 = v27 - v26;
        if (__OFSUB__(v27, v26))
        {
          goto LABEL_73;
        }

        ++v25;
        if (!--v20)
        {
          goto LABEL_74;
        }
      }
    }

LABEL_65:
    LOBYTE(v20) = 0;
LABEL_74:
    v50 = v20;
    v42 = v20;

    if (v42)
    {
      goto LABEL_75;
    }

LABEL_79:
    v43 = 0;
    goto LABEL_76;
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_1CFDC2860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFDC3C20(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1CFDC28D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1CFE30A34();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1CFDDD440(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1CFDDD440((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1CFE30A14();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1CFE30994();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1CFE30994();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1CFE30A34();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1CFDDD440(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1CFE30A34();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1CFDDD440(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1CFDDD440((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1CFE30994();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_1CFDC2C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1CFE30A24();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1CFDC321C(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1CFE30E14();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1CFDC321C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1CFE30A34();
  v6 = sub_1CFDC329C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1CFDC329C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1CFE30C84();
    if (!v9 || (v10 = v9, v11 = sub_1CFDFC2A4(v9, 0), v12 = sub_1CFDC33F4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1CFE30974();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1CFE30974();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1CFE30E14();
LABEL_4:

  return sub_1CFE30974();
}

unint64_t sub_1CFDC33F4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1CFDC3614(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1CFE309E4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1CFE30E14();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1CFDC3614(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1CFE309C4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1CFDC3614(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1CFE309F4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1D3876090](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1CFDC36B0()
{
  result = qword_1EC509580;
  if (!qword_1EC509580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509580);
  }

  return result;
}

unint64_t sub_1CFDC3708()
{
  result = qword_1EC509588;
  if (!qword_1EC509588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509588);
  }

  return result;
}

unint64_t sub_1CFDC3760()
{
  result = qword_1EC509590;
  if (!qword_1EC509590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509590);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatformSpecificAppBundleProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for BalanceURLBuilder.Route(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BalanceURLBuilder.Route(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BalanceURLBuilder.Source(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BalanceURLBuilder.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CFDC3B18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFDC3B78()
{
  if (!qword_1EC509598)
  {
    v0 = sub_1CFE30C74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509598);
    }
  }
}

void sub_1CFDC3C20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFDC3C84()
{
  if (!qword_1EC5095A8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5095A8);
    }
  }
}

uint64_t sub_1CFDC3CE8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1CFE310B4() & 1;
  }
}

void sub_1CFDC3D40(uint64_t a1)
{
  if (!qword_1EC509518)
  {
    sub_1CFDBCCBC();
    v1 = sub_1CFE30164();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC509518);
    }
  }
}

uint64_t sub_1CFDC3D9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDC3C20(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFDC3E40(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SleepingSampleDaySummary(0);
  v27 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v26 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v23 - v13;
  v25 = *(a3 + 16);
  if (v25)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v23[1] = a2;
    v24 = a3;
    v23[0] = a1;
    while (v15 < *(a3 + 16))
    {
      v17 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v18 = *(v27 + 72);
      sub_1CFDC5334(a3 + v17 + v18 * v15, v14);
      v19 = a1(v14);
      if (v3)
      {
        sub_1CFDC5398(v14);

        goto LABEL_15;
      }

      if (v19)
      {
        sub_1CFDC4710(v14, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CFDC46C0(0, *(v16 + 16) + 1, 1);
          v16 = v28;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1CFDC46C0((v21 > 1), v22 + 1, 1);
          v16 = v28;
        }

        *(v16 + 16) = v22 + 1;
        result = sub_1CFDC4710(v26, v16 + v17 + v22 * v18);
        a3 = v24;
        a1 = v23[0];
      }

      else
      {
        result = sub_1CFDC5398(v14);
      }

      if (v25 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v16;
  }

  return result;
}

uint64_t SleepingSampleSummaryDemoDatasetManager.__allocating_init(settingsProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t static SleepingSampleSummaryDemoDatasetManager.demoDaySummaries(in:now:watchFeatureCapabilities:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, void, uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v65 = a2;
  v54 = a4;
  v55 = a1;
  v5 = type metadata accessor for SleepingSampleDaySummary(0);
  v60 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1CFE30314();
  v9 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1CFE307E4();
  v61 = *(v64 - 8);
  v14 = MEMORY[0x1EEE9AC00](v64, v13);
  v59 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v52 - v17;
  v19 = sub_1CFE304B4();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v52 - v26;
  v28 = *a3;
  v29 = *(type metadata accessor for GregorianDayRange(0) + 20);
  v52 = v20;
  v30 = *(v20 + 16);
  v30(v27, v55 + v29, v19);
  (*(v9 + 16))(v12, v65, v63);
  v62 = v27;
  v53 = v19;
  v30(v24, v27, v19);
  v63 = v18;
  sub_1CFE30784();
  v66 = MEMORY[0x1E69E7CC0];
  sub_1CFDC46C0(0, 59, 0);
  v58 = v28 & 1;
  v31 = v66;
  v57 = (v28 & 2) == 0;
  ++v61;
  v32 = -59;
  v56 = v28 << 62;
  v33 = &qword_1F4C89600;
  v34 = v59;
  do
  {
    v35 = *(v33 - 4);
    v65 = *(v33 - 3);
    v36 = *(v33 - 2);
    v37 = *(v33 - 1);
    v38 = v8;
    v39 = *v33;
    sub_1CFE307B4();
    if (v58)
    {
      v40 = v36;
    }

    else
    {
      v40 = 0.0;
    }

    v49 = v39;
    v8 = v38;
    static SleepingSampleDaySummary.relativeComparisons(on:heart:spO2:rr:wtr:asleep:calendar:hasBaseline:)(v34, v35, 0, v40, v58 ^ 1, v65, 0, COERCE_DOUBLE(v37 & (v56 >> 63)), v38, v57, v49, 0, v62, 1u);
    v41 = *v61;
    (*v61)(v34, v64);
    v66 = v31;
    v43 = *(v31 + 16);
    v42 = *(v31 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_1CFDC46C0((v42 > 1), v43 + 1, 1);
      v31 = v66;
    }

    v33 += 5;
    *(v31 + 16) = v43 + 1;
    v44 = sub_1CFDC4710(v38, v31 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v43);
  }

  while (!__CFADD__(v32++, 1));
  MEMORY[0x1EEE9AC00](v44, v45);
  v51 = v55;
  v47 = sub_1CFDC3E40(sub_1CFDC4774, &v50, v31);
  *v54 = v47;
  v41(v63, v64);
  return (*(v52 + 8))(v62, v53);
}

uint64_t sub_1CFDC458C(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFDC53F4(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
  if ((sub_1CFE30864() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA68BC(0);
  return sub_1CFE30874() & 1;
}

void *sub_1CFDC4670(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFDC4FB0(a1, a2, a3, *v3, &qword_1EDC31728, MEMORY[0x1E6968178], MEMORY[0x1E6968178]);
  *v3 = result;
  return result;
}

void *sub_1CFDC46C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFDC4FB0(a1, a2, a3, *v3, &qword_1EDC31720, type metadata accessor for SleepingSampleDaySummary, type metadata accessor for SleepingSampleDaySummary);
  *v3 = result;
  return result;
}

uint64_t sub_1CFDC4710(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleDaySummary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1CFDC4818(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFDC49A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CFDC4838(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFDC4AF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFDC4858(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFDC4FB0(a1, a2, a3, *v3, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, type metadata accessor for SleepingSampleBaselineComparison);
  *v3 = result;
  return result;
}

void *sub_1CFDC48A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFDC4BFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFDC48C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFDC4FB0(a1, a2, a3, *v3, &qword_1EDC31A08, type metadata accessor for TrainingLoadSampleDaySummary, type metadata accessor for TrainingLoadSampleDaySummary);
  *v3 = result;
  return result;
}

char *sub_1CFDC4918(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFDC4DB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFDC4938(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFDC4FB0(a1, a2, a3, *v3, &qword_1EC5095B0, type metadata accessor for SleepingSampleAggregate, type metadata accessor for SleepingSampleAggregate);
  *v3 = result;
  return result;
}

char *sub_1CFDC4988(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CFDC51A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CFDC49A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFDC4D48(0, &qword_1EC5095C8, sub_1CFDC5300, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1CFDC5300(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CFDC4AF4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFDC52B4(0, &qword_1EC5095C0, MEMORY[0x1E69E6530]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1CFDC4BFC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFDC4D48(0, &unk_1EDC316F8, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1CFDC4D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_1CFDC4DB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFDC52B4(0, &qword_1EC5095B8, MEMORY[0x1E69E63B0]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1CFDC4EB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFDC52B4(0, &qword_1EDC31A10, &type metadata for SleepingSampleDataType);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1CFDC4FB0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1CFDC4D48(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1CFDC51A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1CFDC52B4(0, &qword_1EC509528, MEMORY[0x1E69E6158]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1CFDC52B4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1CFE31084();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFDC5334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleDaySummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDC5398(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleDaySummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFDC53F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

HealthBalance::WarmupProgress __swiftcall WarmupProgress.init(count:requiredCount:)(Swift::Int count, Swift::Int requiredCount)
{
  *v2 = count;
  v2[1] = requiredCount;
  result.requiredCount = requiredCount;
  result.count = count;
  return result;
}

uint64_t sub_1CFDC5504()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDC554C(uint64_t a1)
{
  v2 = *v1;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v2);
  return sub_1CFE31184();
}

uint64_t sub_1CFDC5590()
{
  if (*v0)
  {
    return 0x6465726975716572;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_1CFDC55D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v6 || (sub_1CFE310B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xED0000746E756F43)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CFE310B4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CFDC56C0(uint64_t a1)
{
  v2 = sub_1CFDC58B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDC56FC(uint64_t a1)
{
  v2 = sub_1CFDC58B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WarmupProgress.encode(to:)(void *a1)
{
  sub_1CFDC5AB4(0, &qword_1EC5095D8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  v11[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDC58B0();
  sub_1CFE311A4();
  v13 = 0;
  sub_1CFE31044();
  if (!v2)
  {
    v12 = 1;
    sub_1CFE31044();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1CFDC58B0()
{
  result = qword_1EC5095E0;
  if (!qword_1EC5095E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5095E0);
  }

  return result;
}

uint64_t WarmupProgress.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1CFDC5AB4(0, &qword_1EC5095E8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDC58B0();
  sub_1CFE31194();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1CFE30FC4();
    v15 = 1;
    v13 = sub_1CFE30FC4();
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1CFDC5AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDC58B0();
    v7 = a3(a1, &type metadata for WarmupProgress.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

HealthBalance::WarmupProgress __swiftcall WarmupProgress.init(daysRemaining:requiredCount:)(Swift::Int daysRemaining, Swift::Int requiredCount)
{
  if (__OFSUB__(requiredCount, daysRemaining))
  {
    __break(1u);
  }

  else
  {
    *v2 = (requiredCount - daysRemaining) & ~((requiredCount - daysRemaining) >> 63);
    v2[1] = requiredCount;
  }

  result.requiredCount = requiredCount;
  result.count = daysRemaining;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for WarmupProgress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WarmupProgress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WarmupProgress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1CFDC5C94()
{
  result = qword_1EC5095F0;
  if (!qword_1EC5095F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5095F0);
  }

  return result;
}

unint64_t sub_1CFDC5CEC()
{
  result = qword_1EC5095F8;
  if (!qword_1EC5095F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5095F8);
  }

  return result;
}

unint64_t sub_1CFDC5D44()
{
  result = qword_1EC509600;
  if (!qword_1EC509600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509600);
  }

  return result;
}

HKQuantity __swiftcall HKQuantity.init(duration:)(Swift::tuple_hour_Int_minute_Int duration)
{
  minute = duration.minute;
  hour = duration.hour;
  result.super.isa = [objc_opt_self() minuteUnit];
  v4 = 60 * hour;
  if ((hour * 60) >> 64 == (60 * hour) >> 63)
  {
    v5 = __OFADD__(v4, minute);
    v6 = v4 + minute;
    if (!v5)
    {
      isa = result.super.isa;
      v8 = [swift_getObjCClassFromMetadata() quantityWithUnit:result.super.isa doubleValue:v6];

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

HKQuantity __swiftcall HKQuantity.init(duration:)(Swift::tuple_hour_Int_minute_Int_second_Int duration)
{
  second = duration.second;
  minute = duration.minute;
  hour = duration.hour;
  result.super.isa = [objc_opt_self() secondUnit];
  if ((hour * 60) >> 64 != (60 * hour) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = 3600 * hour;
  if ((60 * hour * 60) >> 64 != (3600 * hour) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = 60 * minute;
  if ((minute * 60) >> 64 != (60 * minute) >> 63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = __OFADD__(v8, second);
  v9 = v8 + second;
  if (!v7)
  {
    isa = result.super.isa;
    v11 = [swift_getObjCClassFromMetadata() quantityWithUnit:result.super.isa doubleValue:v9];

    return v11;
  }

LABEL_11:
  __break(1u);
  return result;
}

HKQuantity __swiftcall HKQuantity.init(percent:)(Swift::Double percent)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() percentUnit];
  v4 = [ObjCClassFromMetadata quantityWithUnit:v3 doubleValue:percent / 100.0];

  return v4;
}

id sub_1CFDC6000(SEL *a1, double a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() *a1];
  v6 = [ObjCClassFromMetadata quantityWithUnit:v5 doubleValue:a2];

  return v6;
}

uint64_t SleepingSampleBaseline.medialRange.getter()
{
  type metadata accessor for SleepingSampleBaseline(0);
  sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
  return sub_1CFE30684();
}

uint64_t SleepingSampleBaseline.iqr.getter()
{
  type metadata accessor for SleepingSampleBaseline(0);
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  return sub_1CFE30684();
}

uint64_t SleepingSampleBaseline.iqrMedialRange.getter()
{
  type metadata accessor for SleepingSampleBaseline(0);
  sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
  return sub_1CFE30684();
}

uint64_t SleepingSampleBaseline.init(middle:medialRange:iqr:iqrMedialRange:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SleepingSampleBaseline(0);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 containsQuantity_])
  {
    sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
    v14 = a1;
    sub_1CFE306B4();
    sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
    v15 = a2;
    sub_1CFE306B4();
    v16 = a3;
    sub_1CFE306B4();
    sub_1CFE306B4();

    sub_1CFDC6388(v13, a5);
    return (*(v20 + 56))(a5, 0, 1, v10);
  }

  else
  {

    v18 = *(v20 + 56);

    return v18(a5, 1, 1, v10);
  }
}

uint64_t sub_1CFDC6388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaseline(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SleepingSampleBaseline.median.getter()
{
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);

  return sub_1CFE30684();
}

uint64_t static SleepingSampleBaseline.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  sub_1CFDC65B4(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348, MEMORY[0x1E69E81C0]);
  if ((sub_1CFE30694() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SleepingSampleBaseline(0);
  sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
  sub_1CFDC65B4(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E69E81C0]);
  if ((sub_1CFE30694() & 1) == 0 || (sub_1CFE30694() & 1) == 0)
  {
    return 0;
  }

  return sub_1CFE30694();
}

uint64_t sub_1CFDC65B4(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDA6E64(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CFDC65F8()
{
  v1 = 0x7257656C6464696DLL;
  v2 = 0x7070617257727169;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CFDC6690@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFDC7DF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDC66C4(uint64_t a1)
{
  v2 = sub_1CFDC69E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDC6700(uint64_t a1)
{
  v2 = sub_1CFDC69E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleBaseline.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFDC772C(0, &qword_1EDC317D0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDC69E0();
  sub_1CFE311A4();
  v21 = 0;
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  sub_1CFDB7C64(&unk_1EDC318E8, MEMORY[0x1E696B378]);
  sub_1CFE31054();
  if (!v2)
  {
    v17[3] = type metadata accessor for SleepingSampleBaseline(0);
    v20 = 1;
    sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
    v12 = v11;
    v13 = sub_1CFDC6A34(&qword_1EDC318D0, MEMORY[0x1E696B378]);
    v14 = v3;
    v15 = v13;
    v17[2] = v14;
    sub_1CFE31054();
    v17[0] = v15;
    v17[1] = v12;
    v19 = 2;
    sub_1CFE31054();
    v18 = 3;
    sub_1CFE31054();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1CFDC69E0()
{
  result = qword_1EDC32908;
  if (!qword_1EDC32908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32908);
  }

  return result;
}

uint64_t sub_1CFDC6A34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CFDAA8D8(255, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SleepingSampleBaseline.hash(into:)(uint64_t a1)
{
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  sub_1CFDC6B88();
  sub_1CFE30834();
  type metadata accessor for SleepingSampleBaseline(0);
  sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
  sub_1CFDC6C4C();
  sub_1CFE30834();
  sub_1CFE30834();
  return sub_1CFE30834();
}

unint64_t sub_1CFDC6B88()
{
  result = qword_1EC509608;
  if (!qword_1EC509608)
  {
    sub_1CFDAA8D8(255, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
    sub_1CFDC65B4(&qword_1EC509610, &qword_1EDC32C80, 0x1E696C348, MEMORY[0x1E69E81B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509608);
  }

  return result;
}

unint64_t sub_1CFDC6C4C()
{
  result = qword_1EC509618;
  if (!qword_1EC509618)
  {
    sub_1CFDAA8D8(255, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
    sub_1CFDC65B4(&qword_1EC509620, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E69E81B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509618);
  }

  return result;
}

uint64_t SleepingSampleBaseline.hashValue.getter()
{
  sub_1CFE31144();
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  sub_1CFDC6B88();
  sub_1CFE30834();
  type metadata accessor for SleepingSampleBaseline(0);
  sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
  sub_1CFDC6C4C();
  sub_1CFE30834();
  sub_1CFE30834();
  sub_1CFE30834();
  return sub_1CFE31184();
}

uint64_t SleepingSampleBaseline.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
  v55 = v3;
  v51 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v50 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v53 = &v42 - v8;
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  v10 = v9;
  v52 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v54 = &v42 - v16;
  sub_1CFDC772C(0, &qword_1EDC320A8, MEMORY[0x1E69E6F48]);
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for SleepingSampleBaseline(0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDC69E0();
  v58 = v20;
  v25 = v59;
  sub_1CFE31194();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v53;
  v46 = v14;
  v47 = v21;
  v48 = v24;
  v59 = a1;
  v27 = v55;
  v63 = 0;
  v28 = sub_1CFDB7C64(&unk_1EDC32118, MEMORY[0x1E696B390]);
  v29 = v54;
  sub_1CFE30FD4();
  v44 = v28;
  v30 = *(v52 + 32);
  v30(v48, v29, v10);
  v62 = 1;
  v31 = v26;
  v32 = sub_1CFDC6A34(&qword_1EDC32110, MEMORY[0x1E696B390]);
  sub_1CFE30FD4();
  v45 = v10;
  v42 = v32;
  v43 = v30;
  v33 = v51 + 32;
  v34 = v31;
  v35 = *(v51 + 32);
  v35(&v48[*(v47 + 20)], v34, v27);
  v61 = 2;
  v36 = v46;
  v54 = 0;
  sub_1CFE30FD4();
  v37 = v59;
  v44 = v33;
  v53 = v35;
  v38 = v47;
  v43(&v48[*(v47 + 24)], v36, v10);
  v60 = 3;
  v39 = v50;
  sub_1CFE30FD4();
  (*(v56 + 8))(v58, v57);
  v40 = v48;
  (v53)(&v48[*(v38 + 28)], v39, v27);
  sub_1CFDC7790(v40, v49);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1CFDC77F4(v40);
}

uint64_t sub_1CFDC7430()
{
  sub_1CFE31144();
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  sub_1CFDC6B88();
  sub_1CFE30834();
  sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
  sub_1CFDC6C4C();
  sub_1CFE30834();
  sub_1CFE30834();
  sub_1CFE30834();
  return sub_1CFE31184();
}

uint64_t sub_1CFDC7538(uint64_t a1)
{
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  sub_1CFDC6B88();
  sub_1CFE30834();
  sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
  sub_1CFDC6C4C();
  sub_1CFE30834();
  sub_1CFE30834();
  return sub_1CFE30834();
}

uint64_t sub_1CFDC7628(uint64_t a1)
{
  sub_1CFE31144();
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  sub_1CFDC6B88();
  sub_1CFE30834();
  sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
  sub_1CFDC6C4C();
  sub_1CFE30834();
  sub_1CFE30834();
  sub_1CFE30834();
  return sub_1CFE31184();
}

void sub_1CFDC772C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFDC69E0();
    v7 = a3(a1, &type metadata for SleepingSampleBaseline.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFDC7790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaseline(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDC77F4(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleBaseline(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFDC7880(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  sub_1CFDC65B4(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348, MEMORY[0x1E69E81C0]);
  if ((sub_1CFE30694() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
  sub_1CFDC65B4(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E69E81C0]);
  if ((sub_1CFE30694() & 1) == 0 || (sub_1CFE30694() & 1) == 0)
  {
    return 0;
  }

  return sub_1CFE30694();
}

unint64_t SleepingSampleBaseline.description.getter()
{
  sub_1CFE30DB4();

  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  v0 = sub_1CFE30684();
  v1 = sub_1CFE2D980();
  v3 = v2;

  MEMORY[0x1D3876060](v1, v3);

  MEMORY[0x1D3876060](0x6C616964656D202CLL, 0xEF203A65676E6152);
  type metadata accessor for SleepingSampleBaseline(0);
  sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
  v4 = sub_1CFE30684();
  sub_1CFE05494();

  v5 = sub_1CFE30944();
  MEMORY[0x1D3876060](v5);

  MEMORY[0x1D3876060](0x203A727169202CLL, 0xE700000000000000);
  v6 = sub_1CFE30684();
  v7 = sub_1CFE2D980();
  v9 = v8;

  MEMORY[0x1D3876060](v7, v9);

  return 0xD00000000000001FLL;
}

unint64_t sub_1CFDC7BC0()
{
  result = qword_1EC509628;
  if (!qword_1EC509628)
  {
    type metadata accessor for SleepingSampleBaseline(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509628);
  }

  return result;
}

void sub_1CFDC7C1C(uint64_t a1)
{
  sub_1CFDAA8D8(319, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  if (v1 <= 0x3F)
  {
    sub_1CFDAA8D8(319, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1CFDC7CF0()
{
  result = qword_1EC509630;
  if (!qword_1EC509630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509630);
  }

  return result;
}

unint64_t sub_1CFDC7D48()
{
  result = qword_1EDC328F8;
  if (!qword_1EDC328F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC328F8);
  }

  return result;
}

unint64_t sub_1CFDC7DA0()
{
  result = qword_1EDC32900;
  if (!qword_1EDC32900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32900);
  }

  return result;
}

uint64_t sub_1CFDC7DF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7257656C6464696DLL && a2 == 0xED00007265707061;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFE38C80 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7070617257727169 && a2 == 0xEA00000000007265 || (sub_1CFE310B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CFE38CA0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CFE310B4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1CFDC8094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFDC8198(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDB177C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t SleepingSampleBaselineComparison.baseline.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleBaselineComparison(0) + 24);

  return sub_1CFDB4730(a1, v3);
}

uint64_t SleepingSampleBaselineComparison.relativeComparison.getter()
{
  v1 = v0;
  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v42 - v4;
  v6 = type metadata accessor for SleepingSampleBaseline(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SleepingSampleAggregate(0);
  sub_1CFDB47B0(v1 + *(v15 + 24), v14, sub_1CFDAD280);
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  v17 = v16;
  v18 = *(v16 - 8);
  if ((*(v18 + 48))(v14, 1, v16) == 1)
  {
    sub_1CFDB34A4(v14, sub_1CFDAD280);
LABEL_9:
    *&result = 0.0;
    return result;
  }

  v19 = sub_1CFE30684();
  (*(v18 + 8))(v14, v17);
  v20 = type metadata accessor for SleepingSampleBaselineComparison(0);
  sub_1CFDC8198(v1 + *(v20 + 24), v5, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_1CFDC87EC(v5);
    goto LABEL_9;
  }

  sub_1CFDB3634(v5, v10, type metadata accessor for SleepingSampleBaseline);
  v21 = sub_1CFE30684();
  v22 = [v19 _unit];
  [v21 doubleValueForUnit_];
  v24 = v23;

  v25 = sub_1CFE30684();
  v26 = [v19 compare_];

  if (v26 == -1)
  {
    sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
    v34 = sub_1CFE30684();
    v35 = [v34 minimum];

    v36 = [v19 _unit];
    [v35 doubleValueForUnit_];
    v38 = v37;

    v32 = v24 - v38;
    if (v24 - v38 == 0.0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v39 = [v19 _unit];
    [v19 doubleValueForUnit_];
    v41 = v40;

    sub_1CFDB34A4(v10, type metadata accessor for SleepingSampleBaseline);
    *&result = (v41 - v24) / v32;
    return result;
  }

  if (v26 == 1)
  {
    sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
    v27 = sub_1CFE30684();
    v28 = [v27 maximum];

    v29 = [v19 _unit];
    [v28 doubleValueForUnit_];
    v31 = v30;

    v32 = v31 - v24;
    if (v31 - v24 == 0.0)
    {
LABEL_8:
      sub_1CFDB34A4(v10, type metadata accessor for SleepingSampleBaseline);

      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v26)
  {
    type metadata accessor for ComparisonResult(0);
    v42[1] = v26;
    *&result = COERCE_DOUBLE(sub_1CFE310D4());
    __break(1u);
  }

  else
  {
    sub_1CFDB34A4(v10, type metadata accessor for SleepingSampleBaseline);

    *&result = 0.0;
  }

  return result;
}

uint64_t sub_1CFDC87EC(uint64_t a1)
{
  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SleepingSampleBaselineComparison.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SleepingSampleBaselineComparison.init(aggregate:availability:baseline:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for SleepingSampleBaseline(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  sub_1CFDB3634(a1, a4, type metadata accessor for SleepingSampleAggregate);
  sub_1CFDB3634(a2, a4 + *(v8 + 20), type metadata accessor for SleepingSampleBaselineAvailability);

  return sub_1CFDB4730(a3, a4 + v9);
}

uint64_t sub_1CFDC89B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFDCBEE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDC89E0(uint64_t a1)
{
  v2 = sub_1CFDAF694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDC8A1C(uint64_t a1)
{
  v2 = sub_1CFDAF694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleBaselineComparison.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SleepingSampleBaseline(0);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v58 = &v49 - v9;
  v10 = sub_1CFE30314();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB177C(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v55 = &v49 - v15;
  v16 = sub_1CFE30014();
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v49 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB177C(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v49 - v21;
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v49 - v27;
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE307E4();
  sub_1CFDAEB0C(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  v33 = type metadata accessor for SleepingSampleAggregate(0);
  sub_1CFE304B4();
  sub_1CFDAEB0C(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  sub_1CFE30834();
  sub_1CFDB47B0(v1 + v33[6], v32, sub_1CFDAD280);
  v34 = *(v25 + 48);
  v52 = v24;
  if (v34(v32, 1, v24) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v35 = v52;
    (*(v25 + 32))(v28, v32, v52);
    sub_1CFE31164();
    sub_1CFDC6B88();
    sub_1CFE30834();
    (*(v25 + 8))(v28, v35);
  }

  sub_1CFDC8198(v1 + v33[7], v22, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  v37 = v53;
  v36 = v54;
  v38 = (*(v53 + 48))(v22, 1, v54);
  v40 = v56;
  v39 = v57;
  if (v38 == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v41 = v49;
    (*(v37 + 32))(v49, v22, v36);
    sub_1CFE31164();
    sub_1CFDAEB0C(&qword_1EC509648, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
    sub_1CFE30834();
    (*(v37 + 8))(v41, v36);
  }

  v42 = v60;
  v43 = v55;
  sub_1CFDC8198(v2 + v33[8], v55, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  if ((*(v40 + 48))(v43, 1, v39) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v44 = v50;
    (*(v40 + 32))(v50, v43, v39);
    sub_1CFE31164();
    sub_1CFDAEB0C(&qword_1EC509650, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1CFE30834();
    (*(v40 + 8))(v44, v39);
  }

  MEMORY[0x1D3876810](*(v2 + v33[9]));
  v45 = type metadata accessor for SleepingSampleBaselineComparison(0);
  SleepingSampleBaselineAvailability.hash(into:)(a1);
  v46 = v58;
  sub_1CFDC8198(v2 + *(v45 + 24), v58, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  if ((*(v59 + 48))(v46, 1, v42) == 1)
  {
    return sub_1CFE31164();
  }

  v48 = v51;
  sub_1CFDB3634(v46, v51, type metadata accessor for SleepingSampleBaseline);
  sub_1CFE31164();
  sub_1CFDC6B88();
  sub_1CFE30834();
  sub_1CFDAA8D8(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350);
  sub_1CFDC6C4C();
  sub_1CFE30834();
  sub_1CFE30834();
  sub_1CFE30834();
  return sub_1CFDB34A4(v48, type metadata accessor for SleepingSampleBaseline);
}

uint64_t SleepingSampleBaselineComparison.hashValue.getter()
{
  sub_1CFE31144();
  SleepingSampleBaselineComparison.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDC9314()
{
  sub_1CFE31144();
  SleepingSampleBaselineComparison.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDC9358(uint64_t a1)
{
  sub_1CFE31144();
  SleepingSampleBaselineComparison.hash(into:)(v2);
  return sub_1CFE31184();
}

uint64_t SleepingSampleBaselineComparison.description.getter()
{
  v1 = type metadata accessor for SleepingSampleBaseline(0);
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v28[0] = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v28 - v7;
  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v28 - v15;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1CFE30DB4();
  MEMORY[0x1D3876060](0xD000000000000020, 0x80000001CFE32BC0);
  MEMORY[0x1D3876060](0x6167657267676128, 0xEC000000203A6574);
  v17 = SleepingSampleAggregate.description.getter();
  MEMORY[0x1D3876060](v17);

  MEMORY[0x1D3876060](0xD000000000000010, 0x80000001CFE38CC0);
  v18 = type metadata accessor for SleepingSampleBaselineComparison(0);
  type metadata accessor for SleepingSampleBaselineAvailability(0);
  sub_1CFE30EB4();
  MEMORY[0x1D3876060](0x696C65736162202CLL, 0xEC000000203A656ELL);
  sub_1CFDC8198(v0 + *(v18 + 24), v16, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  sub_1CFDC8198(v16, v13, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  if ((*(v2 + 48))(v13, 1, v1) == 1)
  {
    v19 = 0xE300000000000000;
    v20 = 7104878;
  }

  else
  {
    sub_1CFDB3634(v13, v8, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB47B0(v8, v28[0], type metadata accessor for SleepingSampleBaseline);
    v20 = sub_1CFE30944();
    v19 = v21;
    sub_1CFDB34A4(v8, type metadata accessor for SleepingSampleBaseline);
  }

  sub_1CFDC87EC(v16);
  MEMORY[0x1D3876060](v20, v19);

  MEMORY[0x1D3876060](0xD000000000000016, 0x80000001CFE38CE0);
  v22 = SleepingSampleBaselineComparison.relativeComparison.getter();
  if (v23)
  {
    v24 = 0xE300000000000000;
    v25 = 7104878;
  }

  else
  {
    v28[1] = v22;
    v25 = sub_1CFE30944();
    v24 = v26;
  }

  MEMORY[0x1D3876060](v25, v24);

  MEMORY[0x1D3876060](41, 0xE100000000000000);
  return v29;
}

uint64_t SleepingSampleBaselineComparison.Classification.init(baselineComparison:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  SleepingSampleBaselineComparison.relativeComparison.getter();
  if (v4)
  {
    result = sub_1CFDB34A4(a1, type metadata accessor for SleepingSampleBaselineComparison);
    v6 = 3;
  }

  else if (HKCompareDoubles() == -1)
  {
    result = sub_1CFDB34A4(a1, type metadata accessor for SleepingSampleBaselineComparison);
    v6 = 1;
  }

  else
  {
    v7 = HKCompareDoubles() != 1;
    result = sub_1CFDB34A4(a1, type metadata accessor for SleepingSampleBaselineComparison);
    v6 = 2 * v7;
  }

  *a2 = v6;
  return result;
}

HealthBalance::SleepingSampleBaselineComparison::Classification __swiftcall SleepingSampleBaselineComparison.Classification.init(relativeComparison:)(Swift::Double relativeComparison)
{
  v2 = v1;
  v3 = HKCompareDoubles();
  if (v3 == -1)
  {
    v4 = 1;
  }

  else
  {
    v3 = HKCompareDoubles();
    v4 = 2 * (v3 != 1);
  }

  *v2 = v4;
  return v3;
}

uint64_t sub_1CFDC98C4()
{
  v1 = 1751607656;
  v2 = 0x6C616369707974;
  if (*v0 != 2)
  {
    v2 = 0x616C696176616E75;
  }

  if (*v0)
  {
    v1 = 7827308;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CFDC9938@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFDCC008(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDC9960(uint64_t a1)
{
  v2 = sub_1CFDCB758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDC999C(uint64_t a1)
{
  v2 = sub_1CFDCB758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDC99E4(uint64_t a1)
{
  v2 = sub_1CFDCB704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDC9A20(uint64_t a1)
{
  v2 = sub_1CFDCB704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDC9A5C(uint64_t a1)
{
  v2 = sub_1CFDCB6B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDC9A98(uint64_t a1)
{
  v2 = sub_1CFDCB6B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDC9AD4(uint64_t a1)
{
  v2 = sub_1CFDCB65C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDC9B10(uint64_t a1)
{
  v2 = sub_1CFDCB65C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDC9B4C(uint64_t a1)
{
  v2 = sub_1CFDCB608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDC9B88(uint64_t a1)
{
  v2 = sub_1CFDCB608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleBaselineComparison.Classification.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1CFDAF62C(0, &qword_1EC509658, sub_1CFDCB608, &type metadata for SleepingSampleBaselineComparison.Classification.UnavailableCodingKeys, MEMORY[0x1E69E6F58]);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v37 = &v28 - v6;
  sub_1CFDAF62C(0, &qword_1EC509668, sub_1CFDCB65C, &type metadata for SleepingSampleBaselineComparison.Classification.TypicalCodingKeys, v3);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v34 = &v28 - v9;
  sub_1CFDAF62C(0, &qword_1EC509678, sub_1CFDCB6B0, &type metadata for SleepingSampleBaselineComparison.Classification.LowCodingKeys, v3);
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v31 = &v28 - v12;
  sub_1CFDAF62C(0, &qword_1EC509688, sub_1CFDCB704, &type metadata for SleepingSampleBaselineComparison.Classification.HighCodingKeys, v3);
  v29 = *(v13 - 8);
  v30 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v28 - v15;
  sub_1CFDAF62C(0, &qword_1EC509698, sub_1CFDCB758, &type metadata for SleepingSampleBaselineComparison.Classification.CodingKeys, v3);
  v40 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v28 - v20;
  v22 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDCB758();
  sub_1CFE311A4();
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v43 = 2;
      sub_1CFDCB65C();
      v24 = v34;
      v23 = v40;
      sub_1CFE30FF4();
      v26 = v35;
      v25 = v36;
    }

    else
    {
      v44 = 3;
      sub_1CFDCB608();
      v24 = v37;
      v23 = v40;
      sub_1CFE30FF4();
      v26 = v38;
      v25 = v39;
    }

    goto LABEL_8;
  }

  if (v22)
  {
    v42 = 1;
    sub_1CFDCB6B0();
    v24 = v31;
    v23 = v40;
    sub_1CFE30FF4();
    v26 = v32;
    v25 = v33;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*(v18 + 8))(v21, v23);
  }

  v41 = 0;
  sub_1CFDCB704();
  v23 = v40;
  sub_1CFE30FF4();
  (*(v29 + 8))(v16, v30);
  return (*(v18 + 8))(v21, v23);
}

uint64_t SleepingSampleBaselineComparison.Classification.hashValue.getter()
{
  v1 = *v0;
  sub_1CFE31144();
  MEMORY[0x1D3876810](v1);
  return sub_1CFE31184();
}

uint64_t SleepingSampleBaselineComparison.Classification.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v53 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFDAF62C(0, &qword_1EC5096A8, sub_1CFDCB608, &type metadata for SleepingSampleBaselineComparison.Classification.UnavailableCodingKeys, MEMORY[0x1E69E6F48]);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v52 = &v42 - v6;
  sub_1CFDAF62C(0, &qword_1EC5096B0, sub_1CFDCB65C, &type metadata for SleepingSampleBaselineComparison.Classification.TypicalCodingKeys, v3);
  v8 = *(v7 - 8);
  v48 = v7;
  v49 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v55 = &v42 - v10;
  sub_1CFDAF62C(0, &qword_1EC5096B8, sub_1CFDCB6B0, &type metadata for SleepingSampleBaselineComparison.Classification.LowCodingKeys, v3);
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v54 = &v42 - v13;
  sub_1CFDAF62C(0, &qword_1EC5096C0, sub_1CFDCB704, &type metadata for SleepingSampleBaselineComparison.Classification.HighCodingKeys, v3);
  v15 = v14;
  v45 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v42 - v17;
  sub_1CFDAF62C(0, &qword_1EC5096C8, sub_1CFDCB758, &type metadata for SleepingSampleBaselineComparison.Classification.CodingKeys, v3);
  v20 = v19;
  v56 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v42 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDCB758();
  v24 = v57;
  sub_1CFE31194();
  if (v24)
  {
    goto LABEL_9;
  }

  v43 = v15;
  v44 = v23;
  v25 = v54;
  v26 = v55;
  v57 = a1;
  v27 = sub_1CFE30FE4();
  v28 = *(v27 + 16);
  if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
  {
    v31 = sub_1CFE30DF4();
    swift_allocError();
    v33 = v32;
    sub_1CFDCB7AC(0);
    *v33 = &type metadata for SleepingSampleBaselineComparison.Classification;
    v34 = v44;
    sub_1CFE30F74();
    sub_1CFE30DD4();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    (*(v56 + 8))(v34, v20);
    swift_unknownObjectRelease();
    a1 = v57;
LABEL_9:
    v35 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  if (*(v27 + 32) > 1u)
  {
    v54 = v27;
    v38 = v53;
    v39 = v56;
    if (v29 == 2)
    {
      v60 = 2;
      sub_1CFDCB65C();
      v40 = v44;
      sub_1CFE30F64();
      (*(v49 + 8))(v26, v48);
    }

    else
    {
      v61 = 3;
      sub_1CFDCB608();
      v41 = v52;
      v40 = v44;
      sub_1CFE30F64();
      (*(v50 + 8))(v41, v51);
    }

    (*(v39 + 8))(v40, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    if (*(v27 + 32))
    {
      v59 = 1;
      sub_1CFDCB6B0();
      v37 = v44;
      sub_1CFE30F64();
      (*(v46 + 8))(v25, v47);
    }

    else
    {
      v58 = 0;
      sub_1CFDCB704();
      v37 = v44;
      sub_1CFE30F64();
      (*(v45 + 8))(v18, v43);
    }

    (*(v56 + 8))(v37, v20);
    swift_unknownObjectRelease();
    v38 = v53;
  }

  *v38 = v29;
  v35 = v57;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1CFDCA800()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SleepingSampleBaselineComparison.classification.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SleepingSampleBaselineComparison(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB47B0(v2, v7, type metadata accessor for SleepingSampleBaselineComparison);
  SleepingSampleBaselineComparison.relativeComparison.getter();
  if (v8)
  {
    result = sub_1CFDB34A4(v7, type metadata accessor for SleepingSampleBaselineComparison);
    v10 = 3;
  }

  else if (HKCompareDoubles() == -1)
  {
    result = sub_1CFDB34A4(v7, type metadata accessor for SleepingSampleBaselineComparison);
    v10 = 1;
  }

  else
  {
    v11 = HKCompareDoubles() != 1;
    result = sub_1CFDB34A4(v7, type metadata accessor for SleepingSampleBaselineComparison);
    v10 = 2 * v11;
  }

  *a1 = v10;
  return result;
}

BOOL SleepingSampleBaselineComparison.isOutOfRange.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SleepingSampleBaselineComparison(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB47B0(v1, v5, type metadata accessor for SleepingSampleBaselineComparison);
  SleepingSampleBaselineComparison.relativeComparison.getter();
  if (v6)
  {
    sub_1CFDB34A4(v5, type metadata accessor for SleepingSampleBaselineComparison);
    return 0;
  }

  else if (HKCompareDoubles() == -1)
  {
    sub_1CFDB34A4(v5, type metadata accessor for SleepingSampleBaselineComparison);
    return 1;
  }

  else
  {
    v8 = HKCompareDoubles();
    sub_1CFDB34A4(v5, type metadata accessor for SleepingSampleBaselineComparison);
    return v8 == 1;
  }
}

BOOL SleepingSampleBaselineComparison.isWarmupDay.getter()
{
  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for SleepingSampleAggregate(0) + 36));
  if (v5 < 3)
  {
    return 0;
  }

  if (v5 == 3)
  {
    return 1;
  }

  v7 = type metadata accessor for SleepingSampleBaselineComparison(0);
  sub_1CFDC8198(v0 + *(v7 + 24), v4, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v8 = type metadata accessor for SleepingSampleBaseline(0);
  v9 = (*(*(v8 - 8) + 48))(v4, 1, v8) == 1;
  sub_1CFDC87EC(v4);
  return v9;
}

BOOL SleepingSampleBaselineComparison.hasData.getter()
{
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepingSampleAggregate(0);
  sub_1CFDB47B0(v0 + *(v5 + 24), v4, sub_1CFDAD280);
  sub_1CFDAA8D8(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (*(v8 + 48))(v4, 1, v6);
  if (v9 == 1)
  {
    sub_1CFDB34A4(v4, sub_1CFDAD280);
  }

  else
  {
    v10 = sub_1CFE30684();
    (*(v8 + 8))(v4, v7);
  }

  return v9 != 1;
}

uint64_t SleepingSampleBaselineComparison.warmupDaysRequired.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SleepingSampleBaselineComparison(0);
  sub_1CFDB47B0(v0 + *(v5 + 20), v4, type metadata accessor for SleepingSampleBaselineAvailability);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CFDAD680(0);
      v8 = *(v4 + *(v7 + 64));
      sub_1CFDB34A4(v4, sub_1CFDA7AD0);
    }

    else
    {
      sub_1CFDB34A4(v4, sub_1CFDA7AD0);
      v8 = 6;
    }
  }

  else
  {
    v8 = *v4;
  }

  result = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t SleepingSampleBaselineComparison.warmupDaysRemaining.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  v3 = MEMORY[0x1EEE9AC00](v1, v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v20 - v7);
  v9 = *(v0 + *(type metadata accessor for SleepingSampleAggregate(0) + 36)) < 3u;
  v10 = *(type metadata accessor for SleepingSampleBaselineComparison(0) + 20);
  sub_1CFDB47B0(v0 + v10, v8, type metadata accessor for SleepingSampleBaselineAvailability);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CFDAD680(0);
      v13 = *(v8 + *(v12 + 64));
      sub_1CFDB34A4(v8, sub_1CFDA7AD0);
    }

    else
    {
      sub_1CFDB34A4(v8, sub_1CFDA7AD0);
      v13 = 6;
    }
  }

  else
  {
    v13 = *v8;
  }

  sub_1CFDB47B0(v0 + v10, v5, type metadata accessor for SleepingSampleBaselineAvailability);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1CFDAD680(0);
    }

    else
    {
      sub_1CFDCB868(0);
    }

    v16 = *&v5[*(v15 + 48)];
    result = sub_1CFDB34A4(v5, sub_1CFDA7AD0);
  }

  else
  {
    v16 = 0;
  }

  v17 = v13 - v16;
  if (__OFSUB__(v13, v16))
  {
    __break(1u);
  }

  else
  {
    v18 = __OFADD__(v17, v9);
    v19 = v17 + v9;
    if (!v18)
    {
      return v19 & ~(v19 >> 63);
    }
  }

  __break(1u);
  return result;
}

uint64_t SleepingSampleBaselineComparison.isInRefinement.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SleepingSampleBaselineComparison(0);
  sub_1CFDB47B0(v0 + *(v5 + 20), v4, type metadata accessor for SleepingSampleBaselineAvailability);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1CFDAD680(0);
    }

    else
    {
      sub_1CFDCB868(0);
    }

    v8 = *&v4[*(v7 + 48)];
    sub_1CFDB34A4(v4, sub_1CFDA7AD0);
    return (v8 - 6) <= 0xD && SleepingSampleBaselineComparison.warmupDaysRemaining.getter() == 0;
  }

  return result;
}

uint64_t _s13HealthBalance32SleepingSampleBaselineComparisonV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaseline(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB177C(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - v11;
  sub_1CFDCC170(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static SleepingSampleAggregate.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for SleepingSampleBaselineComparison(0);
  if ((_s13HealthBalance34SleepingSampleBaselineAvailabilityO2eeoiySbAC_ACtFZ_0(a1 + *(v18 + 20), a2 + *(v18 + 20)) & 1) == 0)
  {
    return 0;
  }

  v27 = v8;
  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_1CFDC8198(a1 + v19, v17, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  sub_1CFDC8198(a2 + v19, &v17[v20], qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1CFDC87EC(v17);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1CFDC8198(v17, v12, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_1CFDB34A4(v12, type metadata accessor for SleepingSampleBaseline);
LABEL_8:
    sub_1CFDB34A4(v17, sub_1CFDCC170);
    return 0;
  }

  v23 = &v17[v20];
  v24 = v27;
  sub_1CFDB3634(v23, v27, type metadata accessor for SleepingSampleBaseline);
  sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  sub_1CFDC65B4(&qword_1EDC31878, &qword_1EDC32C80, 0x1E696C348, MEMORY[0x1E69E81C0]);
  if (sub_1CFE30694() & 1) != 0 && (sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350), sub_1CFDC65B4(&qword_1EDC31860, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E69E81C0]), (sub_1CFE30694()) && (sub_1CFE30694())
  {
    v25 = sub_1CFE30694();
    sub_1CFDB34A4(v24, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB34A4(v12, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDC87EC(v17);
    if (v25)
    {
      return 1;
    }
  }

  else
  {
    sub_1CFDB34A4(v24, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDB34A4(v12, type metadata accessor for SleepingSampleBaseline);
    sub_1CFDC87EC(v17);
  }

  return 0;
}

unint64_t sub_1CFDCB608()
{
  result = qword_1EC509660;
  if (!qword_1EC509660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509660);
  }

  return result;
}

unint64_t sub_1CFDCB65C()
{
  result = qword_1EC509670;
  if (!qword_1EC509670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509670);
  }

  return result;
}

unint64_t sub_1CFDCB6B0()
{
  result = qword_1EC509680;
  if (!qword_1EC509680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509680);
  }

  return result;
}

unint64_t sub_1CFDCB704()
{
  result = qword_1EC509690;
  if (!qword_1EC509690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509690);
  }

  return result;
}

unint64_t sub_1CFDCB758()
{
  result = qword_1EC5096A0;
  if (!qword_1EC5096A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5096A0);
  }

  return result;
}

void sub_1CFDCB7AC(uint64_t a1)
{
  if (!qword_1EC5096D0)
  {
    sub_1CFDCB81C();
    sub_1CFE30DE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC5096D0);
    }
  }
}

unint64_t sub_1CFDCB81C()
{
  result = qword_1EC5096D8;
  if (!qword_1EC5096D8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC5096D8);
  }

  return result;
}

void sub_1CFDCB868(uint64_t a1)
{
  if (!qword_1EDC32920)
  {
    sub_1CFDA7AD0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC32920);
    }
  }
}

unint64_t sub_1CFDCB920()
{
  result = qword_1EDC321D0[0];
  if (!qword_1EDC321D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC321D0);
  }

  return result;
}

void sub_1CFDCB99C(uint64_t a1)
{
  type metadata accessor for SleepingSampleAggregate(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SleepingSampleBaselineAvailability(319);
    if (v2 <= 0x3F)
    {
      sub_1CFDB177C(319, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1CFDCBAC8()
{
  result = qword_1EC5096E8;
  if (!qword_1EC5096E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5096E8);
  }

  return result;
}

unint64_t sub_1CFDCBB20()
{
  result = qword_1EC5096F0;
  if (!qword_1EC5096F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5096F0);
  }

  return result;
}

unint64_t sub_1CFDCBB78()
{
  result = qword_1EC5096F8;
  if (!qword_1EC5096F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5096F8);
  }

  return result;
}

unint64_t sub_1CFDCBBD0()
{
  result = qword_1EC509700;
  if (!qword_1EC509700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509700);
  }

  return result;
}

unint64_t sub_1CFDCBC28()
{
  result = qword_1EC509708;
  if (!qword_1EC509708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509708);
  }

  return result;
}

unint64_t sub_1CFDCBC80()
{
  result = qword_1EC509710;
  if (!qword_1EC509710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509710);
  }

  return result;
}

unint64_t sub_1CFDCBCD8()
{
  result = qword_1EC509718;
  if (!qword_1EC509718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509718);
  }

  return result;
}

unint64_t sub_1CFDCBD30()
{
  result = qword_1EC509720;
  if (!qword_1EC509720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509720);
  }

  return result;
}

unint64_t sub_1CFDCBD88()
{
  result = qword_1EC509728;
  if (!qword_1EC509728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509728);
  }

  return result;
}

unint64_t sub_1CFDCBDE0()
{
  result = qword_1EC509730;
  if (!qword_1EC509730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509730);
  }

  return result;
}

unint64_t sub_1CFDCBE38()
{
  result = qword_1EC509738;
  if (!qword_1EC509738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509738);
  }

  return result;
}

unint64_t sub_1CFDCBE90()
{
  result = qword_1EC509740;
  if (!qword_1EC509740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509740);
  }

  return result;
}

uint64_t sub_1CFDCBEE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461676572676761 && a2 == 0xE900000000000065;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFE310B4();

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

uint64_t sub_1CFDCC008(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1751607656 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7827308 && a2 == 0xE300000000000000 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616369707974 && a2 == 0xE700000000000000 || (sub_1CFE310B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CFE310B4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1CFDCC170(uint64_t a1)
{
  if (!qword_1EDC31968)
  {
    sub_1CFDB177C(255, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC31968);
    }
  }
}

uint64_t sub_1CFDCC21C()
{
  sub_1CFE31144();
  MEMORY[0x1D3876810](0);
  return sub_1CFE31184();
}

uint64_t sub_1CFDCC260(uint64_t a1)
{
  sub_1CFE31144();
  MEMORY[0x1D3876810](0);
  return sub_1CFE31184();
}

uint64_t sub_1CFDCC2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656E696C65736162 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CFE310B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CFDCC340(uint64_t a1)
{
  v2 = sub_1CFDB846C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDCC37C(uint64_t a1)
{
  v2 = sub_1CFDB846C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDCC3B8(uint64_t a1)
{
  v2 = sub_1CFDB8778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDCC3F4(uint64_t a1)
{
  v2 = sub_1CFDB8778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDCC430()
{
  v1 = 0x746E756F63;
  if (*v0 != 1)
  {
    v1 = 0x6465726975716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657A796C616E61;
  }
}

uint64_t sub_1CFDCC494@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFDCD858(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFDCC4BC(uint64_t a1)
{
  v2 = sub_1CFDB8570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDCC4F8(uint64_t a1)
{
  v2 = sub_1CFDB8570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFDCC534(uint64_t a1)
{
  v2 = sub_1CFDB8674();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDCC570(uint64_t a1)
{
  v2 = sub_1CFDB8674();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrainingLoadChronicBaseline.hash(into:)(uint64_t a1)
{
  sub_1CFDA7AD0(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline(0);
  MEMORY[0x1EEE9AC00](ChronicBaseline, v7);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFDABC10(v1, v9, type metadata accessor for TrainingLoadChronicBaseline);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *v9;
      MEMORY[0x1D3876810](2);
      v12 = 0.0;
      if (v11 != 0.0)
      {
        v12 = v11;
      }

      return MEMORY[0x1D3876830](*&v12);
    }

    else
    {
      return MEMORY[0x1D3876810](0);
    }
  }

  else
  {
    sub_1CFDAD680(0);
    v15 = *(v9 + *(v14 + 48));
    v16 = *(v9 + *(v14 + 64));
    sub_1CFDAD618(v9, v5, sub_1CFDA7AD0);
    MEMORY[0x1D3876810](1);
    sub_1CFE307E4();
    sub_1CFDA7688(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
    sub_1CFE30834();
    sub_1CFE30834();
    MEMORY[0x1D3876810](v15);
    MEMORY[0x1D3876810](v16);
    return sub_1CFDAD1D4(v5, sub_1CFDA7AD0);
  }
}

uint64_t TrainingLoadChronicBaseline.hashValue.getter()
{
  sub_1CFE31144();
  TrainingLoadChronicBaseline.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t TrainingLoadChronicBaseline.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1CFDB83EC(0, &qword_1EDC31A30, sub_1CFDB846C, &type metadata for TrainingLoadChronicBaseline.AvailableCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v77 = &v66 - v7;
  sub_1CFDB83EC(0, &qword_1EDC31A28, sub_1CFDB8570, &type metadata for TrainingLoadChronicBaseline.InsufficientDataCodingKeys, v3);
  v69 = v8;
  v74 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v76 = &v66 - v10;
  sub_1CFDB83EC(0, &qword_1EDC31A38, sub_1CFDB8674, &type metadata for TrainingLoadChronicBaseline.NoDataCodingKeys, v3);
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v75 = &v66 - v13;
  sub_1CFDB83EC(0, &qword_1EDC31A40, sub_1CFDB8778, &type metadata for TrainingLoadChronicBaseline.CodingKeys, v3);
  v15 = v14;
  v79 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v66 - v17;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline(0);
  v21 = MEMORY[0x1EEE9AC00](ChronicBaseline, v20);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v66 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v66 - v29;
  v31 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1CFDB8778();
  v32 = v80;
  sub_1CFE31194();
  if (!v32)
  {
    v66 = v23;
    v67 = v30;
    v68 = v27;
    v34 = v75;
    v33 = v76;
    v80 = ChronicBaseline;
    v36 = v77;
    v35 = v78;
    v37 = sub_1CFE30FE4();
    v38 = (2 * *(v37 + 16)) | 1;
    v83 = v37;
    v84 = v37 + 32;
    v85 = 0;
    v86 = v38;
    v39 = sub_1CFDB4610();
    if (v39 == 3 || v85 != v86 >> 1)
    {
      v42 = sub_1CFE30DF4();
      swift_allocError();
      v44 = v43;
      sub_1CFDCB7AC(0);
      *v44 = v80;
      sub_1CFE30F74();
      sub_1CFE30DD4();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v79 + 8))(v18, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v39)
      {
        if (v39 == 1)
        {
          v82 = 1;
          sub_1CFDB8570();
          v40 = v33;
          v41 = v15;
          sub_1CFE30F64();
          v48 = v35;
          sub_1CFDA7AD0(0);
          v82 = 0;
          sub_1CFDAB7F8(&unk_1EDC320C8, &qword_1EDC32108, MEMORY[0x1E696B440], MEMORY[0x1E69E66E0]);
          v49 = v69;
          sub_1CFE30FD4();
          v50 = v79;
          v82 = 1;
          v58 = sub_1CFE30FC4();
          sub_1CFDAD680(0);
          v59 = v40;
          v61 = v60;
          *&v68[*(v60 + 48)] = v58;
          v82 = 2;
          v62 = sub_1CFE30FC4();
          v63 = *(v61 + 64);
          (*(v74 + 8))(v59, v49);
          (*(v50 + 8))(v18, v41);
          swift_unknownObjectRelease();
          v64 = v68;
          *&v68[v63] = v62;
          swift_storeEnumTagMultiPayload();
          v65 = v64;
        }

        else
        {
          v82 = 2;
          sub_1CFDB846C();
          v46 = v36;
          v47 = v15;
          sub_1CFE30F64();
          v48 = v35;
          v52 = v47;
          v53 = v72;
          sub_1CFE30FB4();
          v54 = v79;
          v56 = v55;
          (*(v73 + 8))(v46, v53);
          (*(v54 + 8))(v18, v52);
          swift_unknownObjectRelease();
          v57 = v66;
          *v66 = v56;
          swift_storeEnumTagMultiPayload();
          v65 = v57;
        }

        v51 = v67;
        sub_1CFDAD618(v65, v67, type metadata accessor for TrainingLoadChronicBaseline);
      }

      else
      {
        v82 = 0;
        sub_1CFDB8674();
        sub_1CFE30F64();
        (*(v70 + 8))(v34, v71);
        (*(v79 + 8))(v18, v15);
        swift_unknownObjectRelease();
        v51 = v67;
        swift_storeEnumTagMultiPayload();
        v48 = v35;
      }

      sub_1CFDAD618(v51, v48, type metadata accessor for TrainingLoadChronicBaseline);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

uint64_t sub_1CFDCD150()
{
  sub_1CFE31144();
  TrainingLoadChronicBaseline.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDCD194(uint64_t a1)
{
  sub_1CFE31144();
  TrainingLoadChronicBaseline.hash(into:)(v2);
  return sub_1CFE31184();
}

uint64_t _s13HealthBalance27TrainingLoadChronicBaselineO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1CFDA7AD0(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline(0);
  v10 = MEMORY[0x1EEE9AC00](ChronicBaseline, v9);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v35 - v14;
  sub_1CFDCD974(0);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v20[*(v18 + 56)];
  sub_1CFDABC10(a1, v20, type metadata accessor for TrainingLoadChronicBaseline);
  sub_1CFDABC10(a2, v21, type metadata accessor for TrainingLoadChronicBaseline);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CFDABC10(v20, v12, type metadata accessor for TrainingLoadChronicBaseline);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = *v12 == *v21;
        v24 = type metadata accessor for TrainingLoadChronicBaseline;
        goto LABEL_10;
      }
    }

    else
    {
      v30 = swift_getEnumCaseMultiPayload();
      v24 = type metadata accessor for TrainingLoadChronicBaseline;
      if (v30 == 2)
      {
        v23 = 1;
        goto LABEL_10;
      }
    }

LABEL_9:
    v23 = 0;
    v24 = sub_1CFDCD974;
    goto LABEL_10;
  }

  sub_1CFDABC10(v20, v15, type metadata accessor for TrainingLoadChronicBaseline);
  sub_1CFDAD680(0);
  v26 = *(v25 + 48);
  v27 = *&v15[v26];
  v28 = *(v25 + 64);
  v29 = *&v15[v28];
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1CFDAD1D4(v15, sub_1CFDA7AD0);
    goto LABEL_9;
  }

  v32 = *(v21 + v26);
  v33 = *(v21 + v28);
  sub_1CFDAD618(v21, v7, sub_1CFDA7AD0);
  sub_1CFE307E4();
  sub_1CFDA7688(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
  if (sub_1CFE308B4())
  {
    v34 = sub_1CFE308B4();
    sub_1CFDAD1D4(v7, sub_1CFDA7AD0);
    sub_1CFDAD1D4(v15, sub_1CFDA7AD0);
    if (v29 == v33)
    {
      v23 = v34 & (v27 == v32);
    }

    else
    {
      v23 = 0;
    }

    v24 = type metadata accessor for TrainingLoadChronicBaseline;
  }

  else
  {
    sub_1CFDAD1D4(v7, sub_1CFDA7AD0);
    sub_1CFDAD1D4(v15, sub_1CFDA7AD0);
    v23 = 0;
    v24 = type metadata accessor for TrainingLoadChronicBaseline;
  }

LABEL_10:
  sub_1CFDAD1D4(v20, v24);
  return v23;
}

void sub_1CFDCD664(uint64_t a1)
{
  sub_1CFDAD680(319);
  if (v1 <= 0x3F)
  {
    sub_1CFDCD6D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1CFDCD6D8()
{
  result = qword_1EDC320E8;
  if (!qword_1EDC320E8)
  {
    result = MEMORY[0x1E69E63B0];
    atomic_store(MEMORY[0x1E69E63B0], &qword_1EDC320E8);
  }

  return result;
}

unint64_t sub_1CFDCD754()
{
  result = qword_1EC509750;
  if (!qword_1EC509750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509750);
  }

  return result;
}

unint64_t sub_1CFDCD7AC()
{
  result = qword_1EC509758;
  if (!qword_1EC509758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509758);
  }

  return result;
}

unint64_t sub_1CFDCD804()
{
  result = qword_1EC509760;
  if (!qword_1EC509760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509760);
  }

  return result;
}

uint64_t sub_1CFDCD858(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657A796C616E61 && a2 == 0xED000065676E6152;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CFE310B4();

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

void sub_1CFDCD974(uint64_t a1)
{
  if (!qword_1EDC31920)
  {
    type metadata accessor for TrainingLoadChronicBaseline(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC31920);
    }
  }
}

uint64_t sub_1CFDCD9DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065746144;
  v3 = 0xD000000000000021;
  if (a1 > 4u)
  {
    v4 = 0x80000001CFE38700;
    v5 = 0xD000000000000025;
    v11 = 0x80000001CFE38730;
    if (a1 == 8)
    {
      v12 = 0xD000000000000021;
    }

    else
    {
      v12 = 0xD000000000000022;
    }

    if (a1 != 8)
    {
      v11 = 0x80000001CFE38760;
    }

    if (a1 != 7)
    {
      v5 = v12;
      v4 = v11;
    }

    v8 = 0x80000001CFE386B0;
    v9 = 0xD00000000000001DLL;
    if (a1 != 5)
    {
      v9 = 0xD000000000000021;
      v8 = 0x80000001CFE386D0;
    }

    v10 = a1 <= 6u;
  }

  else
  {
    v4 = 0x80000001CFE38630;
    v5 = 0xD000000000000019;
    v6 = 0x80000001CFE38650;
    v7 = 0xD000000000000027;
    if (a1 == 3)
    {
      v7 = 0xD000000000000022;
    }

    else
    {
      v6 = 0x80000001CFE38680;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x80000001CFE38610;
    v9 = 0xD000000000000010;
    if (!a1)
    {
      v9 = 0x64657A796C616E61;
      v8 = 0xEC00000065746144;
    }

    v10 = a1 <= 1u;
  }

  if (v10)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v10)
  {
    v14 = v8;
  }

  else
  {
    v14 = v4;
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000001CFE386B0;
        v3 = 0xD00000000000001DLL;
        goto LABEL_47;
      }

      v16 = "sleepScoreNotificationCheckedDate";
    }

    else
    {
      if (a2 == 7)
      {
        v2 = 0x80000001CFE38700;
        v3 = 0xD000000000000025;
        goto LABEL_47;
      }

      if (a2 != 8)
      {
        v15 = "sleepScoreNotificationLastSentDate";
        goto LABEL_43;
      }

      v16 = "sleepScoreNotificationTotalPoints";
    }

    v2 = (v16 - 32) | 0x8000000000000000;
    goto LABEL_47;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0x80000001CFE38610;
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x64657A796C616E61;
    }
  }

  else if (a2 == 2)
  {
    v2 = 0x80000001CFE38630;
    v3 = 0xD000000000000019;
  }

  else
  {
    if (a2 == 3)
    {
      v15 = "outOfRangeNotificationLastSentDate";
LABEL_43:
      v2 = (v15 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000022;
      goto LABEL_47;
    }

    v2 = 0x80000001CFE38680;
    v3 = 0xD000000000000027;
  }

LABEL_47:
  if (v13 == v3 && v14 == v2)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1CFE310B4();
  }

  return v17 & 1;
}

uint64_t sub_1CFDCDC78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000007865646ELL;
  v3 = 0x49676E696E726F6DLL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656E696C65736162;
    }

    else
    {
      v5 = 0x49676E696E726F6DLL;
    }

    if (v4)
    {
      v6 = 0xED000065676E6152;
    }

    else
    {
      v6 = 0xEC0000007865646ELL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x7974697669746361;
    v6 = 0xEC00000065707954;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 1684955490;
    }

    else
    {
      v5 = 0x676E696E69617274;
    }

    if (v4 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEC00000064616F4CLL;
    }
  }

  v7 = 0x7974697669746361;
  v8 = 0xEC00000065707954;
  v9 = 0xE400000000000000;
  v10 = 1684955490;
  if (a2 != 3)
  {
    v10 = 0x676E696E69617274;
    v9 = 0xEC00000064616F4CLL;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x656E696C65736162;
    v2 = 0xED000065676E6152;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1CFE310B4();
  }

  return v13 & 1;
}

uint64_t sub_1CFDCDE28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1954047342;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1885956979;
  }

  else
  {
    v3 = 0xE600000000000000;
    if (a1 == 3)
    {
      v4 = 0x6E4F6E727574;
    }

    else
    {
      v4 = 0x646577656976;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1954047342;
    }

    else
    {
      v8 = 0x6C65636E6163;
    }

    if (a2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6E4F6E727574;
    if (a2 != 3)
    {
      v5 = 0x646577656976;
    }

    if (a2 == 2)
    {
      v6 = 1885956979;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_1CFE310B4();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_1CFDCDF7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0xD000000000000010;
    v12 = 0x80000001CFE38510;
    v13 = 0x80000001CFE38530;
    v14 = 0xD000000000000019;
    if (a1 != 8)
    {
      v14 = 0x746567646977;
      v13 = 0xE600000000000000;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0x65656C536F6E616ELL;
    v16 = 0xE900000000000070;
    if (a1 != 5)
    {
      v15 = 0x7070416863746177;
      v16 = 0xE800000000000000;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x704168746C616568;
    v5 = 0xE900000000000070;
    v6 = 0x80000001CFE384D0;
    v7 = 0xD000000000000015;
    if (a1 != 3)
    {
      v7 = 0x747465536F6E616ELL;
      v6 = 0xEC00000073676E69;
    }

    if (a1 != 2)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x7373656E746966;
    if (a1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v8 = 0x7974697669746361;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x7373656E746966)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE800000000000000;
        if (v9 != 0x7974697669746361)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_55;
    }

    if (a2 != 2)
    {
      if (a2 != 3)
      {
        v17 = 0xEC00000073676E69;
        if (v9 != 0x747465536F6E616ELL)
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      v17 = 0x80000001CFE384D0;
      v18 = 5;
LABEL_36:
      if (v9 != (v18 | 0xD000000000000010))
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v19 = 0x704168746C616568;
LABEL_44:
    v17 = 0xE900000000000070;
    if (v9 != v19)
    {
      goto LABEL_57;
    }

    goto LABEL_55;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v17 = 0x80000001CFE38510;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    if (a2 != 8)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x746567646977)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    v17 = 0x80000001CFE38530;
    v18 = 9;
    goto LABEL_36;
  }

  if (a2 == 5)
  {
    v19 = 0x65656C536F6E616ELL;
    goto LABEL_44;
  }

  v17 = 0xE800000000000000;
  if (v9 != 0x7070416863746177)
  {
LABEL_57:
    v20 = sub_1CFE310B4();
    goto LABEL_58;
  }

LABEL_55:
  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v20 = 1;
LABEL_58:

  return v20 & 1;
}

uint64_t sub_1CFDCE2A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEF7363697274654DLL;
  v4 = 0x654D796144656E6FLL;
  if (a1 == 2)
  {
    v4 = 0x7961446E65766573;
  }

  else
  {
    v3 = 0xED00007363697274;
  }

  v5 = 0xD000000000000011;
  v6 = 0x80000001CFE38470;
  if (a1)
  {
    v5 = 0x5265636E616C6162;
    v6 = 0xEB000000006D6F6FLL;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x7961446E65766573;
    }

    else
    {
      v11 = 0x654D796144656E6FLL;
    }

    if (a2 == 2)
    {
      v10 = 0xEF7363697274654DLL;
    }

    else
    {
      v10 = 0xED00007363697274;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x5265636E616C6162;
    }

    else
    {
      v9 = 0xD000000000000011;
    }

    if (a2)
    {
      v10 = 0xEB000000006D6F6FLL;
    }

    else
    {
      v10 = 0x80000001CFE38470;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_1CFE310B4();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_1CFDCE424(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x80000001CFE38580;
  v5 = 0xD000000000000015;
  v6 = 0xD000000000000013;
  v7 = 0x80000001CFE385A0;
  if (a1 != 4)
  {
    v6 = 0x6163696669746F6ELL;
    v7 = 0xEE0044496E6F6974;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656372756F73;
  if (a1 != 1)
  {
    v9 = 0x6144746567726174;
    v8 = 0xE900000000000079;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6574756F72;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x80000001CFE38580;
      if (v10 != 0xD000000000000015)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x80000001CFE385A0;
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE0044496E6F6974;
      if (v10 != 0x6163696669746F6ELL)
      {
LABEL_34:
        v13 = sub_1CFE310B4();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656372756F73)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000079;
      if (v10 != 0x6144746567726174)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6574756F72)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t TrainingLoadSampleDaySummary.morningIndex.setter(uint64_t a1)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TrainingLoadSampleDaySummary.activityType.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for TrainingLoadSampleDaySummary(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t TrainingLoadSampleDaySummary.band.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TrainingLoadSampleDaySummary(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t TrainingLoadSampleDaySummary.band.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for TrainingLoadSampleDaySummary(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t sub_1CFDCE988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t static TrainingLoadSampleDaySummary.fake(on:unit:analyzedBaselineRange:hasData:acuteBaseline:chronicBaseline:calendar:activityType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, unsigned __int8 a10)
{
  v84 = a7;
  v75 = a5;
  v81 = a3;
  v79 = a1;
  v88 = a8;
  sub_1CFDA7AD0(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v83 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CFE307E4();
  v78 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison(0);
  v22 = MEMORY[0x1EEE9AC00](BaselineComparison, v21);
  v82 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v87 = &v74 - v25;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline(0);
  v27 = MEMORY[0x1EEE9AC00](ChronicBaseline, v26);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v30);
  v86 = (&v74 - v31);
  sub_1CFDAA214(0, &qword_1EDC32CB0, sub_1CFDAC3A0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v74 - v34;
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline(0);
  v38 = MEMORY[0x1EEE9AC00](AcuteBaseline - 8, v37);
  v40 = &v74 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v76 = &v74 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = &v74 - v45;
  v47 = [objc_opt_self() quantityWithUnit:a2 doubleValue:a9];
  if (v47)
  {
    v48 = v47;
    sub_1CFDAD5CC();
    v49 = v48;
    sub_1CFE306B4();
    sub_1CFDAC3A0(0);
    (*(*(v50 - 8) + 56))(v35, 0, 1, v50);
  }

  else
  {
    sub_1CFDAC3A0(0);
    (*(*(v51 - 8) + 56))(v35, 1, 1, v51);
  }

  v52 = v35;
  v53 = v76;
  sub_1CFDCF1D8(v52, v76);
  sub_1CFDCF26C(v53, v46, type metadata accessor for TrainingLoadAcuteBaseline);
  v85 = v46;
  if (a4)
  {
    v54 = v81;
    if (a6)
    {
      v55 = v20;
      sub_1CFDAD680(0);
      v57 = *(v56 + 48);
      v58 = *(v56 + 64);
      v59 = v86;
      sub_1CFDAC19C(v54, v86, sub_1CFDA7AD0);
      v60 = v79;
      *(v59 + v57) = sub_1CFE307C4();
      *(v59 + v58) = 28;
      v46 = v85;
      v61 = v87;
      goto LABEL_10;
    }

    v55 = v20;
    v59 = v86;
    v61 = v87;
    *v86 = v75;
  }

  else
  {
    v55 = v20;
    v59 = v86;
    v61 = v87;
    v54 = v81;
  }

  v60 = v79;
LABEL_10:
  LODWORD(v81) = a10;
  swift_storeEnumTagMultiPayload();
  sub_1CFDAC19C(v46, v40, type metadata accessor for TrainingLoadAcuteBaseline);
  sub_1CFDAC19C(v59, v29, type metadata accessor for TrainingLoadChronicBaseline);
  TrainingLoadBaselineComparison.init(acuteBaseline:chronicBaseline:)(v40, v29, v61);
  v62 = v78;
  v63 = *(v78 + 16);
  v63(v55, v60, v17);
  v64 = v83;
  sub_1CFDAC19C(v54, v83, sub_1CFDA7AD0);
  v65 = v82;
  sub_1CFDAC19C(v61, v82, type metadata accessor for TrainingLoadBaselineComparison);
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary(0);
  v67 = v17;
  v68 = v88;
  v79 = SampleDaySummary[7];
  *(v88 + v79) = 5;
  ChronicBaseline = v67;
  (v63)(v68, v55);
  sub_1CFDAC19C(v64, v68 + SampleDaySummary[5], sub_1CFDA7AD0);
  sub_1CFDAC19C(v65, v68 + SampleDaySummary[8], type metadata accessor for TrainingLoadBaselineComparison);
  v69 = v65 + *(BaselineComparison + 24);
  if (*(v69 + 8))
  {
    sub_1CFDAC204(v65, type metadata accessor for TrainingLoadBaselineComparison);
    sub_1CFDAC204(v64, sub_1CFDA7AD0);
    (*(v62 + 8))(v55, ChronicBaseline);
    sub_1CFDAC204(v87, type metadata accessor for TrainingLoadBaselineComparison);
    sub_1CFDAC204(v86, type metadata accessor for TrainingLoadChronicBaseline);
    result = sub_1CFDAC204(v85, type metadata accessor for TrainingLoadAcuteBaseline);
    v71 = 5;
  }

  else
  {
    TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(*v69);
    sub_1CFDAC204(v65, type metadata accessor for TrainingLoadBaselineComparison);
    sub_1CFDAC204(v64, sub_1CFDA7AD0);
    (*(v62 + 8))(v55, ChronicBaseline);
    sub_1CFDAC204(v87, type metadata accessor for TrainingLoadBaselineComparison);
    sub_1CFDAC204(v86, type metadata accessor for TrainingLoadChronicBaseline);
    result = sub_1CFDAC204(v85, type metadata accessor for TrainingLoadAcuteBaseline);
    v71 = v89;
  }

  v72 = v88;
  *(v88 + v79) = v71;
  v73 = v72 + SampleDaySummary[6];
  *v73 = v84;
  *(v73 + 8) = v81 & 1;
  return result;
}

uint64_t sub_1CFDCF1D8(uint64_t a1, uint64_t a2)
{
  sub_1CFDAA214(0, &qword_1EDC32CB0, sub_1CFDAC3A0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDCF26C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TrainingLoadSampleDaySummary.hash(into:)(uint64_t a1)
{
  sub_1CFE307E4();
  sub_1CFDA76D0(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary(0);
  sub_1CFE30834();
  sub_1CFDA7AD0(0);
  sub_1CFE30834();
  v4 = (v1 + *(SampleDaySummary + 24));
  if (*(v4 + 8) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v5 = *v4;
    sub_1CFE31164();
    MEMORY[0x1D3876810](v5);
  }

  v6 = *(v1 + *(SampleDaySummary + 28));
  sub_1CFE31164();
  if (v6 != 5)
  {
    MEMORY[0x1D3876810](v6);
  }

  return TrainingLoadBaselineComparison.hash(into:)(a1);
}

uint64_t TrainingLoadSampleDaySummary.hashValue.getter()
{
  sub_1CFE31144();
  TrainingLoadSampleDaySummary.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDCF464@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1CFDCF4CC()
{
  sub_1CFE31144();
  TrainingLoadSampleDaySummary.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFDCF510(uint64_t a1)
{
  sub_1CFE31144();
  TrainingLoadSampleDaySummary.hash(into:)(v2);
  return sub_1CFE31184();
}

uint64_t sub_1CFDCF55C()
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

uint64_t sub_1CFDCF65C(uint64_t a1)
{
  sub_1CFE30984();
}

uint64_t sub_1CFDCF748(uint64_t a1)
{
  sub_1CFE31144();
  sub_1CFE30984();

  return sub_1CFE31184();
}

unint64_t sub_1CFDCF844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CFDD053C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1CFDCF874(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007865646ELL;
  v4 = 0x49676E696E726F6DLL;
  v5 = 0xEC00000065707954;
  v6 = 0x7974697669746361;
  v7 = 0xE400000000000000;
  v8 = 1684955490;
  if (v2 != 3)
  {
    v8 = 0x676E696E69617274;
    v7 = 0xEC00000064616F4CLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656E696C65736162;
    v3 = 0xED000065676E6152;
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

unint64_t sub_1CFDCF930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFDD053C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFDCF964(uint64_t a1)
{
  v2 = sub_1CFDB718C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDCF9A0(uint64_t a1)
{
  v2 = sub_1CFDB718C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrainingLoadSampleDaySummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison(0);
  MEMORY[0x1EEE9AC00](BaselineComparison, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA7AD0(0);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v36 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1CFE307E4();
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v8);
  v41 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB7110(0, &qword_1EDC31A20, MEMORY[0x1E69E6F48]);
  v38 = v10;
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v29 - v12;
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary(0);
  v16 = MEMORY[0x1EEE9AC00](SampleDaySummary, v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v18[*(v16 + 24)];
  *v19 = 0;
  v19[8] = 1;
  v20 = *(v16 + 28);
  v18[v20] = 5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB718C();
  v21 = v42;
  sub_1CFE31194();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v20;
  v31 = v19;
  v42 = SampleDaySummary;
  v50 = 0;
  sub_1CFDA76D0(&qword_1EDC32108, MEMORY[0x1E696B418], MEMORY[0x1E696B440]);
  v22 = v38;
  v23 = v39;
  sub_1CFE30FD4();
  v25 = v13;
  (*(v37 + 32))(v18, v41, v23);
  v49 = 1;
  sub_1CFDB7348(&unk_1EDC320C8, &qword_1EDC32108, MEMORY[0x1E696B440], MEMORY[0x1E69E66E0]);
  v26 = v36;
  sub_1CFE30FD4();
  sub_1CFDCF26C(v26, &v18[*(v42 + 20)], sub_1CFDA7AD0);
  sub_1CFDB73D8(0, &qword_1EDC31E68, MEMORY[0x1E69E6810]);
  v48 = 2;
  sub_1CFDB7424(&unk_1EDC31A60, MEMORY[0x1E69E6840], MEMORY[0x1E69E7C88]);
  v41 = 0;
  sub_1CFE30FD4();
  if (v44 != 1)
  {
    v27 = v31;
    *v31 = v43;
    v27[8] = 0;
  }

  v28 = v34;
  sub_1CFDB73D8(0, &qword_1EDC32470, &type metadata for TrainingLoadBand);
  v46 = 3;
  sub_1CFDB7494(&qword_1EDC31DE8, sub_1CFDD0258, MEMORY[0x1E69E7C88]);
  sub_1CFE30FD4();
  v18[v30] = v47;
  v45 = 4;
  sub_1CFDA76D0(&qword_1EDC31D40, type metadata accessor for TrainingLoadBaselineComparison, &protocol conformance descriptor for TrainingLoadBaselineComparison);
  sub_1CFE30FD4();
  (*(v40 + 8))(v25, v22);
  sub_1CFDCF26C(v28, &v18[*(v42 + 32)], type metadata accessor for TrainingLoadBaselineComparison);
  sub_1CFDAC19C(v18, v32, type metadata accessor for TrainingLoadSampleDaySummary);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CFDAC204(v18, type metadata accessor for TrainingLoadSampleDaySummary);
}

uint64_t _s13HealthBalance28TrainingLoadSampleDaySummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFDA76D0(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary(0);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA7AD0(0);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v5 = SampleDaySummary[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = SampleDaySummary[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 5)
  {
    if (v12 != 5)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  v14 = SampleDaySummary[8];

  return _s13HealthBalance30TrainingLoadBaselineComparisonV2eeoiySbAC_ACtFZ_0(a1 + v14, a2 + v14);
}

unint64_t sub_1CFDD0258()
{
  result = qword_1EDC31DF0;
  if (!qword_1EDC31DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31DF0);
  }

  return result;
}

uint64_t sub_1CFDD02AC(void *a1)
{
  a1[1] = sub_1CFDA76D0(&qword_1EDC31F50, type metadata accessor for TrainingLoadSampleDaySummary, &protocol conformance descriptor for TrainingLoadSampleDaySummary);
  a1[2] = sub_1CFDA76D0(&qword_1EDC31F68, type metadata accessor for TrainingLoadSampleDaySummary, &protocol conformance descriptor for TrainingLoadSampleDaySummary);
  result = sub_1CFDA76D0(&qword_1EDC31F60, type metadata accessor for TrainingLoadSampleDaySummary, &protocol conformance descriptor for TrainingLoadSampleDaySummary);
  a1[3] = result;
  return result;
}

void sub_1CFDD03C8(uint64_t a1)
{
  sub_1CFE307E4();
  if (v1 <= 0x3F)
  {
    sub_1CFDA7AD0(319);
    if (v2 <= 0x3F)
    {
      sub_1CFDAA214(319, &qword_1EDC320B0, type metadata accessor for HKWorkoutActivityType, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1CFDB73D8(319, &qword_1EDC32470, &type metadata for TrainingLoadBand);
        if (v4 <= 0x3F)
        {
          type metadata accessor for TrainingLoadBaselineComparison(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1CFDD04E8()
{
  result = qword_1EC509768;
  if (!qword_1EC509768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509768);
  }

  return result;
}

unint64_t sub_1CFDD053C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CFE30F54();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t SleepingSampleDaySummaryCollectionQuery.AggregationInterval.hashValue.getter()
{
  sub_1CFE31144();
  MEMORY[0x1D3876810](0);
  return sub_1CFE31184();
}

uint64_t SleepingSampleDaySummaryCollectionQuery.__allocating_init(gregorianDayRange:aggregationInterval:continueAfterInitialResults:resultsHandler:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v31 = a3;
  v6 = sub_1CFE304B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA68BC(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GregorianDayRange(0);
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15, v19);
  v20 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  sub_1CFDA66E8(a1, v20, type metadata accessor for GregorianDayRange);
  v22 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v23 = swift_allocObject();
  sub_1CFDA64FC(v20, v23 + v22, type metadata accessor for GregorianDayRange);
  sub_1CFDA66E8(a1, v14, sub_1CFDA68BC);
  (*(v7 + 16))(v10, a1 + *(v16 + 28), v6);
  v24 = swift_allocObject();
  v25 = v30;
  v24[2] = v29;
  v24[3] = v25;
  v24[4] = sub_1CFDD1318;
  v24[5] = v23;
  v26 = sub_1CFDD1378(v14, v10, v31, sub_1CFDD131C, v24);

  sub_1CFDD1828(a1, type metadata accessor for GregorianDayRange);
  *(v21 + 16) = v26;
  return v21;
}

uint64_t SleepingSampleDaySummaryCollectionQuery.init(gregorianDayRange:aggregationInterval:continueAfterInitialResults:resultsHandler:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v31 = a3;
  v7 = sub_1CFE304B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA68BC(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GregorianDayRange(0);
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16, v20);
  v21 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA66E8(a1, v21, type metadata accessor for GregorianDayRange);
  v22 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v23 = swift_allocObject();
  sub_1CFDA64FC(v21, v23 + v22, type metadata accessor for GregorianDayRange);
  sub_1CFDA66E8(a1, v15, sub_1CFDA68BC);
  (*(v8 + 16))(v11, a1 + *(v17 + 28), v7);
  v24 = swift_allocObject();
  v25 = v30;
  v24[2] = v29;
  v24[3] = v25;
  v24[4] = sub_1CFDD18E4;
  v24[5] = v23;
  v26 = sub_1CFDD1378(v15, v11, v31, sub_1CFDD18E0, v24);

  sub_1CFDD1828(a1, type metadata accessor for GregorianDayRange);
  *(v5 + 16) = v26;
  return v5;
}

uint64_t sub_1CFDD0B7C(void *a1, uint64_t a2)
{
  v78 = a2;
  sub_1CFDA7460(0);
  v77 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v76 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v75 = &v58 - v8;
  v74 = type metadata accessor for GregorianDayRange(0);
  MEMORY[0x1EEE9AC00](v74, v9);
  v84 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for SleepingSampleDaySummary(0);
  v11 = *(v61 - 8);
  v13 = MEMORY[0x1EEE9AC00](v61, v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v58 - v17;
  v19 = type metadata accessor for SleepingSampleDaySummaryCollection(0);
  v72 = *(v19 - 8);
  v73 = v19;
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v71 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v21, v23);
  v85 = a1;
  v26 = a1[2];
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v59 = *(v11 + 80);
    v60 = (v59 + 32) & ~v59;
    v70 = v85 + v60;
    v29 = MEMORY[0x1E69E7CC0];
    v66 = -v26;
    v30 = 7;
    v65 = v11;
    v69 = &v58 - v25;
    v64 = v26;
    v67 = v15;
    v68 = v18;
    while (1)
    {
      v32 = v26 >= v30 ? v30 : v26;
      v31 = v27 + 7;
      if (__OFADD__(v27, 7))
      {
        break;
      }

      if (v26 >= v31)
      {
        v33 = v27 + 7;
      }

      else
      {
        v33 = v26;
      }

      if (v33 < v27)
      {
        goto LABEL_32;
      }

      if (v27 != v33)
      {
        if (v27 >= v33)
        {
          goto LABEL_33;
        }

        v80 = v27 + 7;
        v81 = v30;
        v82 = v27;
        v83 = v29;
        v86 = v28;
        v34 = *(v11 + 72);
        v35 = v70;
        v63 = &v70[v34 * v27];
        sub_1CFDA66E8(v63, v18, type metadata accessor for SleepingSampleDaySummary);
        v62 = v34;
        sub_1CFDA66E8(&v35[v34 * (v33 - 1)], v15, type metadata accessor for SleepingSampleDaySummary);
        v36 = sub_1CFE307E4();
        sub_1CFDA7718(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);

        result = sub_1CFE30874();
        if ((result & 1) == 0)
        {
          goto LABEL_34;
        }

        v79 = v32 + v86;
        v37 = *(v36 - 8);
        v38 = v37[2];
        v39 = v75;
        v38(v75, v18, v36);
        v40 = v77;
        v38((v39 + *(v77 + 48)), v15, v36);
        v41 = v76;
        sub_1CFDA66E8(v39, v76, sub_1CFDA7460);
        v42 = *(v40 + 48);
        v43 = v37[4];
        v44 = v84;
        v43(v84, v41, v36);
        v45 = v37[1];
        v45(v41 + v42, v36);
        sub_1CFDA64FC(v39, v41, sub_1CFDA7460);
        v46 = *(v40 + 48);
        sub_1CFDA68BC(0);
        v43(v44 + *(v47 + 36), v41 + v46, v36);
        v48 = v79;
        v45(v41, v36);
        v49 = *(v74 + 20);
        v50 = sub_1CFE304B4();
        (*(*(v50 - 8) + 16))(v44 + v49, v78 + v49, v50);
        if (v66 + v48)
        {
          v15 = v67;
          v18 = v68;
          v52 = v69;
          v29 = v83;
          if (v48 < 1)
          {
            v51 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            sub_1CFDD1888(0);
            v56 = v60;
            v57 = v62;
            v51 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v51);
            if (!v57)
            {
              goto LABEL_35;
            }

            if (result - v56 == 0x8000000000000000 && v57 == -1)
            {
              goto LABEL_36;
            }

            v51[2] = v48;
            v51[3] = 2 * ((result - v56) / v57);
          }

          swift_arrayInitWithCopy();
          sub_1CFDD1828(v15, type metadata accessor for SleepingSampleDaySummary);
          sub_1CFDD1828(v18, type metadata accessor for SleepingSampleDaySummary);
        }

        else
        {
          v15 = v67;
          sub_1CFDD1828(v67, type metadata accessor for SleepingSampleDaySummary);
          v18 = v68;
          sub_1CFDD1828(v68, type metadata accessor for SleepingSampleDaySummary);
          v51 = v85;
          v52 = v69;
          v29 = v83;
        }

        v53 = v71;
        sub_1CFDA64FC(v84, v71, type metadata accessor for GregorianDayRange);
        *(v53 + *(v73 + 20)) = v51;
        sub_1CFDA64FC(v53, v52, type metadata accessor for SleepingSampleDaySummaryCollection);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1CFDDD564(0, v29[2] + 1, 1, v29);
        }

        v55 = v29[2];
        v54 = v29[3];
        if (v55 >= v54 >> 1)
        {
          v29 = sub_1CFDDD564((v54 > 1), v55 + 1, 1, v29);
        }

        v29[2] = v55 + 1;
        result = sub_1CFDA64FC(v52, v29 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v55, type metadata accessor for SleepingSampleDaySummaryCollection);
        v11 = v65;
        v26 = v64;
        v30 = v81;
        v27 = v82;
        v28 = v86;
        v31 = v80;
      }

      v30 += 7;
      v28 -= 7;
      v27 += 7;
      if (v31 >= v26)
      {
        return v29;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t SleepingSampleDaySummaryCollectionQuery.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1CFDD1378(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1CFDD1748(0);
  v10 = v9;
  v11 = objc_allocWithZone(v9);
  v12 = &v11[qword_1EDC32800];
  *v12 = 0;
  v12[1] = 0;
  *&v11[qword_1EDC327F0] = MEMORY[0x1E69E7CC0];
  v13 = &v11[qword_1EDC36C30];
  *v13 = 0;
  v13[1] = 0;
  sub_1CFDA66E8(a1, &v11[qword_1EDC36C20], sub_1CFDA68BC);
  v14 = qword_1EDC36C28;
  v15 = sub_1CFE304B4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v11[v14], a2, v15);
  v11[qword_1EDC36C18] = a3;
  *v12 = a4;
  v12[1] = a5;
  sub_1CFDD17DC();

  v17 = sub_1CFE30A74();
  v21.receiver = v11;
  v21.super_class = v10;
  v18 = objc_msgSendSuper2(&v21, sel_initWithQueryDescriptors_, v17);

  (*(v16 + 8))(a2, v15);
  sub_1CFDD1828(a1, sub_1CFDA68BC);
  return v18;
}

uint64_t sub_1CFDD1540(void *a1)
{
  v3 = *(type metadata accessor for GregorianDayRange(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CFDD0B7C(a1, v4);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1CFDD15F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  if (a3)
  {
    return v4(a1, a2, 1);
  }

  v7 = (*(v3 + 32))(a2);
  v4(a1, v7, 0);
}

unint64_t sub_1CFDD1694()
{
  result = qword_1EC509770;
  if (!qword_1EC509770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509770);
  }

  return result;
}

void sub_1CFDD1748(uint64_t a1)
{
  if (!qword_1EDC31F48)
  {
    v2 = type metadata accessor for SleepingSampleDaySummary(255);
    v3 = sub_1CFDA7718(&qword_1EDC32028, type metadata accessor for SleepingSampleDaySummary, &protocol conformance descriptor for SleepingSampleDaySummary);
    v5 = type metadata accessor for SleepingSampleDaySummaryQuery(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDC31F48);
    }
  }
}

unint64_t sub_1CFDD17DC()
{
  result = qword_1EDC320C0;
  if (!qword_1EDC320C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC320C0);
  }

  return result;
}

uint64_t sub_1CFDD1828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFDD1888(uint64_t a1)
{
  if (!qword_1EDC31720)
  {
    type metadata accessor for SleepingSampleDaySummary(255);
    v1 = sub_1CFE31084();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC31720);
    }
  }
}

uint64_t TrainingLoadAcuteBaseline.quantity.getter()
{
  v1 = v0;
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDD1A0C(v1, v5);
  sub_1CFDAC3A0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v5, 1, v6) == 1)
  {
    sub_1CFDB3504(v5, sub_1CFDAD280);
    return 0;
  }

  else
  {
    v10 = sub_1CFE30684();
    (*(v8 + 8))(v5, v7);
    return v10;
  }
}

uint64_t sub_1CFDD1A0C(uint64_t a1, uint64_t a2)
{
  sub_1CFDAD280(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFDD1A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x797469746E617571 && a2 == 0xEF72657070617257)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CFE310B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CFDD1B28(uint64_t a1)
{
  v2 = sub_1CFDB7B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFDD1B64(uint64_t a1)
{
  v2 = sub_1CFDB7B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrainingLoadAcuteBaseline.encode(to:)(void *a1)
{
  sub_1CFDB7AFC(0, &qword_1EDC31788, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB7B60();
  sub_1CFE311A4();
  sub_1CFDAC3A0(0);
  sub_1CFDB7CC0(&unk_1EDC318E8, sub_1CFDAC3A0, MEMORY[0x1E696B378]);
  sub_1CFE31014();
  return (*(v4 + 8))(v7, v3);
}

uint64_t TrainingLoadAcuteBaseline.hash(into:)(uint64_t a1)
{
  sub_1CFDAC3A0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDD1A0C(v1, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return sub_1CFE31164();
  }

  (*(v4 + 32))(v7, v11, v3);
  sub_1CFE31164();
  sub_1CFDD2D54(&qword_1EC509608, sub_1CFDD2B78, MEMORY[0x1E696B380]);
  sub_1CFE30834();
  return (*(v4 + 8))(v7, v3);
}

uint64_t TrainingLoadAcuteBaseline.hashValue.getter()
{
  v1 = v0;
  sub_1CFDAC3A0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE31144();
  sub_1CFDD1A0C(v1, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    sub_1CFE31164();
    sub_1CFDD2D54(&qword_1EC509608, sub_1CFDD2B78, MEMORY[0x1E696B380]);
    sub_1CFE30834();
    (*(v4 + 8))(v7, v3);
  }

  return sub_1CFE31184();
}

uint64_t TrainingLoadAcuteBaseline.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB7AFC(0, &qword_1EDC31A48, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - v11;
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline(0);
  MEMORY[0x1EEE9AC00](AcuteBaseline - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFDB7B60();
  sub_1CFE31194();
  if (!v2)
  {
    v17 = v21;
    v18 = v22;
    sub_1CFDAC3A0(0);
    sub_1CFDB7CC0(&unk_1EDC32118, sub_1CFDAC3A0, MEMORY[0x1E696B390]);
    sub_1CFE30F94();
    (*(v17 + 8))(v12, v9);
    sub_1CFDAD4FC(v7, v16, sub_1CFDAD280);
    sub_1CFDAD4FC(v16, v18, type metadata accessor for TrainingLoadAcuteBaseline);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1CFDD235C(uint64_t a1)
{
  sub_1CFDAC3A0(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDD1A0C(v1, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return sub_1CFE31164();
  }

  (*(v4 + 32))(v7, v11, v3);
  sub_1CFE31164();
  sub_1CFDD2D54(&qword_1EC509608, sub_1CFDD2B78, MEMORY[0x1E696B380]);
  sub_1CFE30834();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1CFDD2518(uint64_t a1)
{
  v2 = v1;
  sub_1CFDAC3A0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE31144();
  sub_1CFDD1A0C(v2, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_1CFE31164();
    sub_1CFDD2D54(&qword_1EC509608, sub_1CFDD2B78, MEMORY[0x1E696B380]);
    sub_1CFE30834();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1CFE31184();
}

unint64_t TrainingLoadAcuteBaseline.description.getter()
{
  v1 = v0;
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0xD000000000000024;
  v16 = 0x80000001CFE38DF0;
  sub_1CFDD1A0C(v1, v5);
  sub_1CFDAC3A0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v5, 1, v6) == 1)
  {
    sub_1CFDB3504(v5, sub_1CFDAD280);
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v11 = sub_1CFE30684();
    (*(v8 + 8))(v5, v7);
    v14[1] = v11;
    sub_1CFDAD5CC();
    v10 = sub_1CFE30944();
    v9 = v12;
  }

  MEMORY[0x1D3876060](v10, v9);

  return v15;
}

BOOL _s13HealthBalance25TrainingLoadAcuteBaselineV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1CFDAC3A0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAD280(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDD2CF0(0);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 56);
  sub_1CFDD1A0C(a1, v18);
  sub_1CFDD1A0C(a2, &v18[v19]);
  v20 = *(v6 + 48);
  if (v20(v18, 1, v5) != 1)
  {
    sub_1CFDD1A0C(v18, v13);
    if (v20(&v18[v19], 1, v5) != 1)
    {
      (*(v6 + 32))(v9, &v18[v19], v5);
      sub_1CFDD2D54(&qword_1EDC318E0, sub_1CFDD2DC0, MEMORY[0x1E696B388]);
      v22 = sub_1CFE308B4();
      v23 = *(v6 + 8);
      v23(v9, v5);
      v23(v13, v5);
      sub_1CFDB3504(v18, sub_1CFDAD280);
      return (v22 & 1) != 0;
    }

    (*(v6 + 8))(v13, v5);
LABEL_6:
    sub_1CFDB3504(v18, sub_1CFDD2CF0);
    return 0;
  }

  if (v20(&v18[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1CFDB3504(v18, sub_1CFDAD280);
  return 1;
}