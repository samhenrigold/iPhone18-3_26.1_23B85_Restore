uint64_t sub_1D67EBB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v9 = a3;
    v10 = a6;

    sub_1D633A310(a1, a4);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    if (a2)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (a5)
    {
      return 0;
    }

    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (a4)
  {
    return 0;
  }

  v9 = a3;
  v10 = a6;

  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (!a5)
  {
    return 0;
  }

  sub_1D633A310(a2, a5);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  if (v9)
  {
LABEL_8:
    if (v10)
    {

      sub_1D633A310(v9, v10);
      v17 = v16;

      if (v17)
      {
        return 1;
      }
    }

    return 0;
  }

LABEL_15:
  if (v10)
  {
    return 0;
  }

  return 1;
}

BOOL sub_1D67EBCAC(__int128 *a1, __int128 *a2)
{
  v30 = *a1;
  v4 = *(&v30 + 1);
  v5 = v30;
  v29 = *a2;
  v6 = *(&v29 + 1);
  v7 = v29;
  if (v30)
  {
    if (!v29)
    {
      sub_1D67ED998(&v30, &v28);
      v11 = &v29;
      v12 = &v28;
LABEL_9:
      sub_1D67ED998(v11, v12);
      sub_1D5D615EC(v5, v4);

      goto LABEL_10;
    }

    sub_1D67ED998(&v30, &v28);
    sub_1D67ED998(&v29, &v28);
    sub_1D5D615EC(v5, v4);
    sub_1D633A310(v5, v7);
    if ((v8 & 1) == 0)
    {
LABEL_17:
      sub_1D5CDE22C(v7, v6);

      v13 = v5;
      v14 = v4;
      goto LABEL_18;
    }

    sub_1D633A310(v4, v6);
    v10 = v9;
    sub_1D5CDE22C(v7, v6);

    sub_1D5CDE22C(v5, v4);
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v29)
    {
      sub_1D67ED998(&v30, &v28);
      sub_1D67ED998(&v29, &v28);
LABEL_10:
      sub_1D5CDE22C(v5, v4);
      v13 = v7;
      v14 = v6;
LABEL_18:
      sub_1D5CDE22C(v13, v14);
      return 0;
    }

    sub_1D67ED998(&v30, &v28);
    sub_1D67ED998(&v29, &v28);
    sub_1D5CDE22C(0, v4);
  }

  v28 = a1[1];
  v4 = *(&v28 + 1);
  v5 = v28;
  v27 = a2[1];
  v6 = *(&v27 + 1);
  v7 = v27;
  if (!v28)
  {
    if (!v27)
    {
      sub_1D67ED998(&v28, &v26);
      sub_1D67ED998(&v27, &v26);
      sub_1D5CDE22C(0, v4);
      goto LABEL_25;
    }

    sub_1D67ED998(&v28, &v26);
    sub_1D67ED998(&v27, &v26);
    goto LABEL_10;
  }

  if (!v27)
  {
    sub_1D67ED998(&v28, &v26);
    v11 = &v27;
    v12 = &v26;
    goto LABEL_9;
  }

  sub_1D67ED998(&v28, &v26);
  sub_1D67ED998(&v27, &v26);
  sub_1D5D615EC(v5, v4);
  sub_1D633A310(v5, v7);
  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1D633A310(v4, v6);
  v17 = v16;
  sub_1D5CDE22C(v7, v6);

  sub_1D5CDE22C(v5, v4);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v26 = a1[2];
  v19 = v26;
  v25 = a2[2];
  v20 = v25;
  if (!v26)
  {
    if (!v25)
    {
      sub_1D67ED998(&v26, v24);
      sub_1D67ED998(&v25, v24);
      sub_1D5CDE22C(0, *(&v19 + 1));
      return 1;
    }

    sub_1D67ED998(&v26, v24);
    sub_1D67ED998(&v25, v24);
    goto LABEL_33;
  }

  if (!v25)
  {
    sub_1D67ED998(&v26, v24);
    sub_1D67ED998(&v25, v24);
    sub_1D5D615EC(v19, *(&v19 + 1));

LABEL_33:
    sub_1D5CDE22C(v19, *(&v19 + 1));
    v14 = *(&v20 + 1);
    v13 = v20;
    goto LABEL_18;
  }

  sub_1D67ED998(&v26, v24);
  sub_1D67ED998(&v25, v24);
  sub_1D5D615EC(v19, *(&v19 + 1));
  sub_1D633A310(v19, v20);
  if ((v21 & 1) == 0)
  {
    sub_1D5CDE22C(v20, *(&v20 + 1));

    v14 = *(&v19 + 1);
    v13 = v19;
    goto LABEL_18;
  }

  sub_1D633A310(*(&v19 + 1), *(&v20 + 1));
  v23 = v22;
  sub_1D5CDE22C(v20, *(&v20 + 1));

  sub_1D5CDE22C(v19, *(&v19 + 1));
  return (v23 & 1) != 0;
}

uint64_t sub_1D67EC070()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  if (v4 > 5)
  {
    if (*(v0 + 48) > 8u)
    {
      if (v4 == 9)
      {
        v13 = "Transform Rotation X";
      }

      else if (v4 == 10)
      {
        v13 = "Transform Rotation Y";
      }

      else
      {
        v13 = "Transform Rotation Z";
      }

      v24 = v13 - 32;
      sub_1D67ED888(0);
      v29 = *(type metadata accessor for FormatInspectionItem(0) - 8);
      v15 = *(v29 + 72);
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1D7274590;
      v17 = (v12 + v30);
      v18 = 0xD000000000000014;
      goto LABEL_27;
    }

    if (v4 == 6)
    {
      v6 = "Transform Translate Y";
    }

    else
    {
      if (v4 != 7)
      {
        v24 = "Transform Rotation X";
        sub_1D67ED888(0);
        v25 = *(type metadata accessor for FormatInspectionItem(0) - 8);
        v15 = *(v25 + 72);
        v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1D7274590;
        v17 = (v12 + v26);
        v18 = 0xD000000000000012;
LABEL_27:
        v19 = v24 | 0x8000000000000000;
        goto LABEL_28;
      }

      v6 = "Transform Translate Z";
    }

LABEL_24:
    v24 = v6 - 32;
    sub_1D67ED888(0);
    v27 = *(type metadata accessor for FormatInspectionItem(0) - 8);
    v15 = *(v27 + 72);
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7274590;
    v17 = (v12 + v28);
    v18 = 0xD000000000000015;
    goto LABEL_27;
  }

  if (*(v0 + 48) <= 2u)
  {
    if (*(v0 + 48))
    {
      if (v4 == 1)
      {
        v5 = "Transform Scale X";
      }

      else
      {
        v5 = "Transform Scale Y";
      }

      goto LABEL_21;
    }

    sub_1D67ED888(0);
    v14 = *(type metadata accessor for FormatInspectionItem(0) - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7274590;
    v17 = (v12 + v16);
    v18 = 0x726F66736E617254;
    v19 = 0xEF656C616353206DLL;
LABEL_28:
    v23 = v17;
    goto LABEL_29;
  }

  if (v4 == 3)
  {
    v5 = "Transform Scale Z";
LABEL_21:
    v20 = v5 - 32;
    sub_1D67ED888(0);
    v21 = *(type metadata accessor for FormatInspectionItem(0) - 8);
    v15 = *(v21 + 72);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7274590;
    v17 = (v12 + v22);
    v19 = v20 | 0x8000000000000000;
    v23 = (v12 + v22);
    v18 = 0xD000000000000011;
LABEL_29:
    sub_1D711F844(0x687461502079654BLL, 0xE800000000000000, v18, v19, v23);

    sub_1D711B070(0x6C6156206D6F7246, 0xEA00000000006575, v1, &v17[v15]);

    sub_1D711B070(0x65756C6156206F54, 0xE800000000000000, v2, &v17[2 * v15]);

    sub_1D711B070(0x65756C6156207942, 0xE800000000000000, v3, &v17[3 * v15]);
    return v12;
  }

  if (v4 != 4)
  {
    v6 = "Transform Translate X";
    goto LABEL_24;
  }

  v7 = *(v0 + 32);
  v32 = *(v0 + 40);
  v8 = *(v0 + 24);
  sub_1D67ED888(0);
  v9 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7274590;
  sub_1D711F844(0x687461502079654BLL, 0xE800000000000000, 0xD000000000000013, 0x80000001D73D6510, (v12 + v11));
  sub_1D5D615EC(v1, v2);
  sub_1D7123AAC(0x6C6156206D6F7246, 0xEA00000000006575, v1, v2, (v12 + v11 + v10));
  sub_1D5D615EC(v3, v8);
  sub_1D7123AAC(0x65756C6156206F54, 0xE800000000000000, v3, v8, (v12 + v11 + 2 * v10));
  sub_1D5D615EC(v7, v32);
  sub_1D7123AAC(0x65756C6156207942, 0xE800000000000000, v7, v32, (v12 + v11 + 3 * v10));
  return v12;
}

BOOL _s8NewsFeed26FormatAnimationNodeKeyPathO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  v15 = *(a2 + 48);
  v84[0] = *a1;
  v84[1] = v2;
  v84[2] = v5;
  v84[3] = v4;
  v84[4] = v6;
  v84[5] = v7;
  v85 = v8;
  v86 = v10;
  v87 = v9;
  v88 = v12;
  v89 = v11;
  v90 = v14;
  v91 = v13;
  v92 = v15;
  if (v8 > 5)
  {
    if (v8 > 8)
    {
      if (v8 == 9)
      {
        if (v15 == 9)
        {
          v31 = v4;
          v57 = v4;
          v69 = v6;
          v45 = v7;
          sub_1D62B753C(v10, v9, v12, v11, v14, v13, 9u);
          sub_1D62B753C(v3, v2, v5, v31, v69, v45, 9u);
          sub_1D62B753C(v3, v2, v5, v57, v69, v45, 9u);
          sub_1D62B753C(v10, v9, v12, v11, v14, v13, 9u);
          v37 = sub_1D67EBB6C(v3, v2, v5, v10, v9, v12);
          sub_1D67ED8E0(v84);
          sub_1D62B4A44(v10, v9, v12, v11, v14, v13, 9u);
          v17 = v3;
          v18 = v2;
          v19 = v5;
          v20 = v57;
          v21 = v69;
          v22 = v45;
          v23 = 9;
          goto LABEL_36;
        }
      }

      else if (v8 == 10)
      {
        if (v15 == 10)
        {
          v27 = v4;
          v53 = v4;
          v65 = v6;
          v41 = v7;
          sub_1D62B753C(v10, v9, v12, v11, v14, v13, 0xAu);
          sub_1D62B753C(v3, v2, v5, v27, v65, v41, 0xAu);
          sub_1D62B753C(v3, v2, v5, v53, v65, v41, 0xAu);
          sub_1D62B753C(v10, v9, v12, v11, v14, v13, 0xAu);
          v37 = sub_1D67EBB6C(v3, v2, v5, v10, v9, v12);
          sub_1D67ED8E0(v84);
          sub_1D62B4A44(v10, v9, v12, v11, v14, v13, 0xAu);
          v17 = v3;
          v18 = v2;
          v19 = v5;
          v20 = v53;
          v21 = v65;
          v22 = v41;
          v23 = 10;
          goto LABEL_36;
        }
      }

      else if (v15 == 11)
      {
        v35 = v4;
        v61 = v4;
        v73 = v6;
        v49 = v7;
        sub_1D62B753C(v10, v9, v12, v11, v14, v13, 0xBu);
        sub_1D62B753C(v3, v2, v5, v35, v73, v49, 0xBu);
        sub_1D62B753C(v3, v2, v5, v61, v73, v49, 0xBu);
        sub_1D62B753C(v10, v9, v12, v11, v14, v13, 0xBu);
        v37 = sub_1D67EBB6C(v3, v2, v5, v10, v9, v12);
        sub_1D67ED8E0(v84);
        sub_1D62B4A44(v10, v9, v12, v11, v14, v13, 0xBu);
        v17 = v3;
        v18 = v2;
        v19 = v5;
        v20 = v61;
        v21 = v73;
        v22 = v49;
        v23 = 11;
        goto LABEL_36;
      }
    }

    else if (v8 == 6)
    {
      if (v15 == 6)
      {
        v29 = v4;
        v55 = v4;
        v67 = v6;
        v43 = v7;
        sub_1D62B753C(v10, v9, v12, v11, v14, v13, 6u);
        sub_1D62B753C(v3, v2, v5, v29, v67, v43, 6u);
        sub_1D62B753C(v3, v2, v5, v55, v67, v43, 6u);
        sub_1D62B753C(v10, v9, v12, v11, v14, v13, 6u);
        v37 = sub_1D67EBB6C(v3, v2, v5, v10, v9, v12);
        sub_1D67ED8E0(v84);
        sub_1D62B4A44(v10, v9, v12, v11, v14, v13, 6u);
        v17 = v3;
        v18 = v2;
        v19 = v5;
        v20 = v55;
        v21 = v67;
        v22 = v43;
        v23 = 6;
        goto LABEL_36;
      }
    }

    else if (v8 == 7)
    {
      if (v15 == 7)
      {
        v24 = v4;
        v51 = v4;
        v63 = v6;
        v39 = v7;
        sub_1D62B753C(v10, v9, v12, v11, v14, v13, 7u);
        sub_1D62B753C(v3, v2, v5, v24, v63, v39, 7u);
        sub_1D62B753C(v3, v2, v5, v51, v63, v39, 7u);
        sub_1D62B753C(v10, v9, v12, v11, v14, v13, 7u);
        v37 = sub_1D67EBB6C(v3, v2, v5, v10, v9, v12);
        sub_1D67ED8E0(v84);
        sub_1D62B4A44(v10, v9, v12, v11, v14, v13, 7u);
        v17 = v3;
        v18 = v2;
        v19 = v5;
        v20 = v51;
        v21 = v63;
        v22 = v39;
        v23 = 7;
        goto LABEL_36;
      }
    }

    else if (v15 == 8)
    {
      v33 = v4;
      v59 = v4;
      v71 = v6;
      v47 = v7;
      sub_1D62B753C(v10, v9, v12, v11, v14, v13, 8u);
      sub_1D62B753C(v3, v2, v5, v33, v71, v47, 8u);
      sub_1D62B753C(v3, v2, v5, v59, v71, v47, 8u);
      sub_1D62B753C(v10, v9, v12, v11, v14, v13, 8u);
      v37 = sub_1D67EBB6C(v3, v2, v5, v10, v9, v12);
      sub_1D67ED8E0(v84);
      sub_1D62B4A44(v10, v9, v12, v11, v14, v13, 8u);
      v17 = v3;
      v18 = v2;
      v19 = v5;
      v20 = v59;
      v21 = v71;
      v22 = v47;
      v23 = 8;
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        if (v15 == 1)
        {
          v16 = v4;
          v50 = v4;
          v62 = v6;
          v38 = v7;
          sub_1D62B753C(v10, v9, v12, v11, v14, v13, 1u);
          sub_1D62B753C(v3, v2, v5, v16, v62, v38, 1u);
          sub_1D62B753C(v3, v2, v5, v50, v62, v38, 1u);
          sub_1D62B753C(v10, v9, v12, v11, v14, v13, 1u);
          v37 = sub_1D67EBB6C(v3, v2, v5, v10, v9, v12);
          sub_1D67ED8E0(v84);
          sub_1D62B4A44(v10, v9, v12, v11, v14, v13, 1u);
          v17 = v3;
          v18 = v2;
          v19 = v5;
          v20 = v50;
          v21 = v62;
          v22 = v38;
          v23 = 1;
LABEL_36:
          sub_1D62B4A44(v17, v18, v19, v20, v21, v22, v23);
          return v37 & 1;
        }
      }

      else if (v15 == 2)
      {
        v32 = v4;
        v58 = v4;
        v70 = v6;
        v46 = v7;
        sub_1D62B753C(v10, v9, v12, v11, v14, v13, 2u);
        sub_1D62B753C(v3, v2, v5, v32, v70, v46, 2u);
        sub_1D62B753C(v3, v2, v5, v58, v70, v46, 2u);
        sub_1D62B753C(v10, v9, v12, v11, v14, v13, 2u);
        v37 = sub_1D67EBB6C(v3, v2, v5, v10, v9, v12);
        sub_1D67ED8E0(v84);
        sub_1D62B4A44(v10, v9, v12, v11, v14, v13, 2u);
        v17 = v3;
        v18 = v2;
        v19 = v5;
        v20 = v58;
        v21 = v70;
        v22 = v46;
        v23 = 2;
        goto LABEL_36;
      }
    }

    else if (!v15)
    {
      v28 = v4;
      v54 = v4;
      v66 = v6;
      v42 = v7;
      sub_1D62B753C(v10, v9, v12, v11, v14, v13, 0);
      sub_1D62B753C(v3, v2, v5, v28, v66, v42, 0);
      sub_1D62B753C(v3, v2, v5, v54, v66, v42, 0);
      sub_1D62B753C(v10, v9, v12, v11, v14, v13, 0);
      v37 = sub_1D67EBB6C(v3, v2, v5, v10, v9, v12);
      sub_1D67ED8E0(v84);
      sub_1D62B4A44(v10, v9, v12, v11, v14, v13, 0);
      v17 = v3;
      v18 = v2;
      v19 = v5;
      v20 = v54;
      v21 = v66;
      v22 = v42;
      v23 = 0;
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v8 == 3)
  {
    if (v15 == 3)
    {
      v30 = v4;
      v56 = v4;
      v68 = v6;
      v44 = v7;
      sub_1D62B753C(v10, v9, v12, v11, v14, v13, 3u);
      sub_1D62B753C(v3, v2, v5, v30, v68, v44, 3u);
      sub_1D62B753C(v3, v2, v5, v56, v68, v44, 3u);
      sub_1D62B753C(v10, v9, v12, v11, v14, v13, 3u);
      v37 = sub_1D67EBB6C(v3, v2, v5, v10, v9, v12);
      sub_1D67ED8E0(v84);
      sub_1D62B4A44(v10, v9, v12, v11, v14, v13, 3u);
      v17 = v3;
      v18 = v2;
      v19 = v5;
      v20 = v56;
      v21 = v68;
      v22 = v44;
      v23 = 3;
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v8 != 4)
  {
    if (v15 == 5)
    {
      v34 = v4;
      v60 = v4;
      v72 = v6;
      v48 = v7;
      sub_1D62B753C(v10, v9, v12, v11, v14, v13, 5u);
      sub_1D62B753C(v3, v2, v5, v34, v72, v48, 5u);
      sub_1D62B753C(v3, v2, v5, v60, v72, v48, 5u);
      sub_1D62B753C(v10, v9, v12, v11, v14, v13, 5u);
      v37 = sub_1D67EBB6C(v3, v2, v5, v10, v9, v12);
      sub_1D67ED8E0(v84);
      sub_1D62B4A44(v10, v9, v12, v11, v14, v13, 5u);
      v17 = v3;
      v18 = v2;
      v19 = v5;
      v20 = v60;
      v21 = v72;
      v22 = v48;
      v23 = 5;
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  *&v74 = v3;
  *(&v74 + 1) = v2;
  v75 = v5;
  v76 = v4;
  v77 = v6;
  v78 = v7;
  if (v15 != 4)
  {
LABEL_37:
    sub_1D62B753C(v3, v2, v5, v4, v6, v7, v8);
    sub_1D62B753C(v10, v9, v12, v11, v14, v13, v15);
    sub_1D67ED8E0(v84);
    return 0;
  }

  *&v79 = v10;
  *(&v79 + 1) = v9;
  v80 = v12;
  v81 = v11;
  v82 = v14;
  v83 = v13;
  v25 = v4;
  v52 = v4;
  v64 = v6;
  v40 = v7;
  sub_1D62B753C(v10, v9, v12, v11, v14, v13, 4u);
  sub_1D62B753C(v3, v2, v5, v25, v64, v40, 4u);
  sub_1D62B753C(v3, v2, v5, v52, v64, v40, 4u);
  sub_1D62B753C(v10, v9, v12, v11, v14, v13, 4u);
  v26 = sub_1D67EBCAC(&v74, &v79);
  sub_1D67ED8E0(v84);
  sub_1D62B4A44(v10, v9, v12, v11, v14, v13, 4u);
  sub_1D62B4A44(v3, v2, v5, v52, v64, v40, 4u);
  return v26;
}

unint64_t sub_1D67ED398(uint64_t a1)
{
  result = sub_1D67ED3C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67ED3C0()
{
  result = qword_1EC88BF40;
  if (!qword_1EC88BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF40);
  }

  return result;
}

unint64_t sub_1D67ED414(void *a1)
{
  a1[1] = sub_1D6701B24();
  a1[2] = sub_1D66720A8();
  result = sub_1D67ED44C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67ED44C()
{
  result = qword_1EC88BF48;
  if (!qword_1EC88BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18FormatSizeEquationVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D67ED4C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 49))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 48);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D67ED50C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D67ED83C()
{
  result = qword_1EC88BF50;
  if (!qword_1EC88BF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC88BF50);
  }

  return result;
}

void sub_1D67ED888(uint64_t a1)
{
  if (!qword_1EC896750)
  {
    type metadata accessor for FormatInspectionItem(255);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC896750);
    }
  }
}

uint64_t sub_1D67ED8E0(uint64_t a1)
{
  sub_1D67ED93C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D67ED93C()
{
  if (!qword_1EC88BF58)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88BF58);
    }
  }
}

uint64_t sub_1D67ED998(uint64_t a1, uint64_t a2)
{
  sub_1D67ED9FC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D67ED9FC()
{
  if (!qword_1EC88BF60)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88BF60);
    }
  }
}

uint64_t sub_1D67EDA78(void *a1)
{
  sub_1D67EDFF4(0, &qword_1EC88BF68, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67EDC04();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D72643FC();
  if (!v1)
  {
    v10[14] = 1;
    sub_1D726437C();
    v10[13] = 2;
    sub_1D726440C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D67EDC04()
{
  result = qword_1EDF06298[0];
  if (!qword_1EDF06298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF06298);
  }

  return result;
}

uint64_t sub_1D67EDC58()
{
  v1 = 0x6449636D75;
  if (*v0 != 1)
  {
    v1 = 0x6E65646469487369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6449676174;
  }
}

uint64_t sub_1D67EDCAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D67EE180(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D67EDCD4(uint64_t a1)
{
  v2 = sub_1D67EDC04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67EDD10(uint64_t a1)
{
  v2 = sub_1D67EDC04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D67EDD4C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D67EDDAC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D67EDDAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D67EDFF4(0, &qword_1EDF03848, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67EDC04();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v21 = v11;
  v23 = 1;
  v14 = sub_1D726422C();
  v16 = v15;
  v20 = v14;
  v22 = 2;
  v17 = sub_1D726423C();
  (*(v7 + 8))(v10, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v20;
  *a2 = v21;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17 & 1;
  return result;
}

void sub_1D67EDFF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D67EDC04();
    v7 = a3(a1, &type metadata for SportsTaxonomyGraphResourceLeafEntityNode.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D67EE07C()
{
  result = qword_1EC88BF70;
  if (!qword_1EC88BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF70);
  }

  return result;
}

unint64_t sub_1D67EE0D4()
{
  result = qword_1EDF06288;
  if (!qword_1EDF06288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06288);
  }

  return result;
}

unint64_t sub_1D67EE12C()
{
  result = qword_1EDF06290;
  if (!qword_1EDF06290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06290);
  }

  return result;
}

uint64_t sub_1D67EE180(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449676174 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449636D75 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65646469487369 && a2 == 0xE800000000000000)
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

uint64_t SportsSyncingConfigResource.umcIDs.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = sub_1D67EE314();
    v3 = sub_1D67EE384();
    v1 = sub_1D5D6021C(v3, v2);
    *(v0 + 24) = v1;
  }

  return v1;
}

double SportsSyncingConfigResource.umcIDs.setter(uint64_t a1)
{
  *(v1 + 24) = a1;

  return result;
}

uint64_t sub_1D67EE314()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v1 = sub_1D67EE9DC(v0, 0x736D616574, 0xE500000000000000);
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_1D67EE384()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_1D67EE9DC(v0, 0x7365756761656CLL, 0xE700000000000000);
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t (*SportsSyncingConfigResource.umcIDs.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = SportsSyncingConfigResource.umcIDs.getter();
  return sub_1D67EE440;
}

double sub_1D67EE440(void *a1)
{
  *(a1[1] + 24) = *a1;

  return result;
}

uint64_t SportsSyncingConfigResource.tagIDs.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = sub_1D67EE4CC();
    v3 = sub_1D67EE53C();
    v1 = sub_1D5D6021C(v3, v2);
    *(v0 + 32) = v1;
  }

  return v1;
}

double SportsSyncingConfigResource.tagIDs.setter(uint64_t a1)
{
  *(v1 + 32) = a1;

  return result;
}

uint64_t sub_1D67EE4CC()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 64);
  }

  else
  {
    v1 = sub_1D67EEB2C(v0, 0x736D616574, 0xE500000000000000);
    *(v0 + 64) = v1;
  }

  return v1;
}

uint64_t sub_1D67EE53C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_1D67EEB2C(v0, 0x7365756761656CLL, 0xE700000000000000);
    *(v0 + 80) = v1;
  }

  return v1;
}

uint64_t (*SportsSyncingConfigResource.tagIDs.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = SportsSyncingConfigResource.tagIDs.getter();
  return sub_1D67EE5F8;
}

double sub_1D67EE5F8(void *a1)
{
  *(a1[1] + 32) = *a1;

  return result;
}

void *SportsSyncingConfigResource.teamUMCIDToTagIDMap.getter()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = sub_1D67EE764(v0, 0x736D616574, 0xE500000000000000);
    *(v0 + 40) = v1;
  }

  return v1;
}

double SportsSyncingConfigResource.teamUMCIDToTagIDMap.setter(uint64_t a1)
{
  *(v1 + 40) = a1;

  return result;
}

uint64_t (*SportsSyncingConfigResource.teamUMCIDToTagIDMap.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = SportsSyncingConfigResource.teamUMCIDToTagIDMap.getter();
  return sub_1D67EE6D0;
}

double sub_1D67EE6D0(void *a1)
{
  *(a1[1] + 40) = *a1;

  return result;
}

void *SportsSyncingConfigResource.leagueUMCIDToTagIDMap.getter()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = sub_1D67EE764(v0, 0x7365756761656CLL, 0xE700000000000000);
    *(v0 + 48) = v1;
  }

  return v1;
}

double SportsSyncingConfigResource.leagueUMCIDToTagIDMap.setter(uint64_t a1)
{
  *(v1 + 48) = a1;

  return result;
}

void *sub_1D67EE764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (*(v3 + 16) && (v4 = sub_1D5B69D90(a2, a3), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v30 = *(v6 + 16);
  if (!v30)
  {
    v9 = MEMORY[0x1E69E7CC8];
LABEL_21:

    return v9;
  }

  v7 = 0;
  v8 = (v6 + 56);
  v9 = MEMORY[0x1E69E7CC8];
  while (v7 < *(v6 + 16))
  {
    v12 = *(v8 - 3);
    v11 = *(v8 - 2);
    v13 = *(v8 - 1);
    v14 = *v8;

    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1D5B69D90(v12, v11);
    v18 = v9[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_23;
    }

    v22 = v17;
    if (v9[3] < v21)
    {
      sub_1D6D666FC(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1D5B69D90(v12, v11);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_25;
      }

LABEL_15:
      if (v22)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v28 = v16;
    sub_1D6D7DE64();
    v16 = v28;
    if (v22)
    {
LABEL_7:
      v10 = (v9[7] + 16 * v16);
      *v10 = v13;
      v10[1] = v14;

      goto LABEL_8;
    }

LABEL_16:
    v9[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v9[6] + 16 * v16);
    *v24 = v12;
    v24[1] = v11;
    v25 = (v9[7] + 16 * v16);
    *v25 = v13;
    v25[1] = v14;

    v26 = v9[2];
    v20 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v20)
    {
      goto LABEL_24;
    }

    v9[2] = v27;
LABEL_8:
    ++v7;
    v8 += 4;
    if (v30 == v7)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t (*SportsSyncingConfigResource.leagueUMCIDToTagIDMap.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = SportsSyncingConfigResource.leagueUMCIDToTagIDMap.getter();
  return sub_1D67EE9CC;
}

double sub_1D67EE9CC(void *a1)
{
  *(a1[1] + 48) = *a1;

  return result;
}

uint64_t sub_1D67EE9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!*(v3 + 16))
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v5 = sub_1D5B69D90(a2, a3);
  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_12:

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v7 = *(*(v3 + 56) + 8 * v5);

  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_1D5BFC364(0, v8, 0);
  v9 = v4;
  v10 = (v7 + 40);
  do
  {
    v12 = *(v10 - 1);
    v11 = *v10;
    v13 = *(v9 + 16);
    v14 = *(v9 + 24);

    if (v13 >= v14 >> 1)
    {
      sub_1D5BFC364((v14 > 1), v13 + 1, 1);
    }

    *(v9 + 16) = v13 + 1;
    v15 = v9 + 16 * v13;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    v10 += 4;
    --v8;
  }

  while (v8);

LABEL_13:
  v16 = sub_1D5B86020(v9);

  return v16;
}

uint64_t sub_1D67EEB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!*(v3 + 16))
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  v5 = sub_1D5B69D90(a2, a3);
  if ((v6 & 1) == 0)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_12:

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v7 = *(*(v3 + 56) + 8 * v5);

  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_6:
  sub_1D5BFC364(0, v8, 0);
  v9 = v4;
  v10 = (v7 + 56);
  do
  {
    v12 = *(v10 - 1);
    v11 = *v10;
    v13 = *(v9 + 16);
    v14 = *(v9 + 24);

    if (v13 >= v14 >> 1)
    {
      sub_1D5BFC364((v14 > 1), v13 + 1, 1);
    }

    *(v9 + 16) = v13 + 1;
    v15 = v9 + 16 * v13;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
    v10 += 4;
    --v8;
  }

  while (v8);

LABEL_13:
  v16 = sub_1D5B86020(v9);

  return v16;
}

void sub_1D67EEC98(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001D73D65C0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D67EED2C(uint64_t a1)
{
  v2 = sub_1D67EEFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67EED68(uint64_t a1)
{
  v2 = sub_1D67EEFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsSyncingConfigResource.deinit()
{

  return v0;
}

uint64_t SportsSyncingConfigResource.__deallocating_deinit()
{
  SportsSyncingConfigResource.deinit();

  return swift_deallocClassInstance();
}

uint64_t SportsSyncingConfigResource.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D67EFCEC(0, &qword_1EC88BF78, sub_1D67EEFBC, &type metadata for SportsSyncingConfigResource.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67EEFBC();
  sub_1D7264B5C();
  v11[1] = *(v2 + 16);
  sub_1D67EF010(0);
  sub_1D67EF0C8();
  sub_1D726443C();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D67EEFBC()
{
  result = qword_1EC88BF80;
  if (!qword_1EC88BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF80);
  }

  return result;
}

void sub_1D67EF010(uint64_t a1)
{
  if (!qword_1EC88BF88)
  {
    sub_1D67EF078();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88BF88);
    }
  }
}

void sub_1D67EF078()
{
  if (!qword_1EC88BF90)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88BF90);
    }
  }
}

unint64_t sub_1D67EF0C8()
{
  result = qword_1EC88BF98;
  if (!qword_1EC88BF98)
  {
    sub_1D67EF010(255);
    sub_1D67EF524(&qword_1EC88BFA0, sub_1D67EF178, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BF98);
  }

  return result;
}

unint64_t sub_1D67EF178()
{
  result = qword_1EC88BFA8;
  if (!qword_1EC88BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BFA8);
  }

  return result;
}

uint64_t SportsSyncingConfigResource.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsSyncingConfigResource.init(from:)(a1);
  return v2;
}

uint64_t *SportsSyncingConfigResource.init(from:)(void *a1)
{
  v11[1] = *v1;
  sub_1D67EFCEC(0, &qword_1EC88BFB0, sub_1D67EEFBC, &type metadata for SportsSyncingConfigResource.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v11[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v11 - v7;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67EEFBC();
  sub_1D7264B0C();
  if (v2)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v11[0];
    sub_1D67EF010(0);
    sub_1D67EF474();
    sub_1D726431C();
    (*(v9 + 8))(v8, v5);
    *(v1 + 16) = v11[3];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t sub_1D67EF474()
{
  result = qword_1EC88BFB8;
  if (!qword_1EC88BFB8)
  {
    sub_1D67EF010(255);
    sub_1D67EF524(&qword_1EC88BFC0, sub_1D67EF590, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BFB8);
  }

  return result;
}

uint64_t sub_1D67EF524(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D67EF078();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D67EF590()
{
  result = qword_1EC88BFC8;
  if (!qword_1EC88BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BFC8);
  }

  return result;
}

uint64_t *sub_1D67EF5E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SportsSyncingConfigResource.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t SportsSyncingConfigResourceItem.umcId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SportsSyncingConfigResourceItem.tagId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D67EF750()
{
  if (*v0)
  {
    return 0x6449676174;
  }

  else
  {
    return 0x6449636D75;
  }
}

void sub_1D67EF77C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449636D75 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6449676174 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D67EF850(uint64_t a1)
{
  v2 = sub_1D67EFA64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67EF88C(uint64_t a1)
{
  v2 = sub_1D67EFA64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsSyncingConfigResourceItem.encode(to:)(void *a1)
{
  sub_1D67EFCEC(0, &qword_1EC88BFD0, sub_1D67EFA64, &type metadata for SportsSyncingConfigResourceItem.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v12[1] = *(v1 + 24);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67EFA64();
  sub_1D7264B5C();
  v14 = 0;
  v10 = v12[3];
  sub_1D72643FC();
  if (!v10)
  {
    v13 = 1;
    sub_1D72643FC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D67EFA64()
{
  result = qword_1EC88BFD8;
  if (!qword_1EC88BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BFD8);
  }

  return result;
}

void SportsSyncingConfigResourceItem.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  sub_1D67EFCEC(0, &qword_1EC88BFE0, sub_1D67EFA64, &type metadata for SportsSyncingConfigResourceItem.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67EFA64();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = v18;
    v20 = 0;
    v11 = sub_1D72642BC();
    v13 = v12;
    v17 = v11;
    v19 = 1;
    v14 = sub_1D72642BC();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    *v10 = v17;
    v10[1] = v13;
    v10[2] = v14;
    v10[3] = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D67EFCEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D67EFE6C()
{
  result = qword_1EC88BFE8;
  if (!qword_1EC88BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BFE8);
  }

  return result;
}

unint64_t sub_1D67EFEC4()
{
  result = qword_1EC88BFF0;
  if (!qword_1EC88BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BFF0);
  }

  return result;
}

unint64_t sub_1D67EFF1C()
{
  result = qword_1EC88BFF8;
  if (!qword_1EC88BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88BFF8);
  }

  return result;
}

unint64_t sub_1D67EFF74()
{
  result = qword_1EC88C000;
  if (!qword_1EC88C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C000);
  }

  return result;
}

unint64_t sub_1D67EFFCC()
{
  result = qword_1EC88C008;
  if (!qword_1EC88C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C008);
  }

  return result;
}

unint64_t sub_1D67F0024()
{
  result = qword_1EC88C010;
  if (!qword_1EC88C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C010);
  }

  return result;
}

uint64_t sub_1D67F0078(void *a1)
{
  sub_1D67F1974(0, &qword_1EC88C050, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67F18B8();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v1)
  {
    type metadata accessor for DebugInspectionWebEmbed(0);
    v15 = 1;
    sub_1D72585BC();
    sub_1D67F19D8(&unk_1EDF45B70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1D726443C();
    v14 = 2;
    sub_1D72643BC();
    v13 = 3;
    sub_1D72643BC();
    v12 = 4;
    type metadata accessor for DebugInspectionHeadline(0);
    sub_1D67F19D8(&qword_1EC88C058, type metadata accessor for DebugInspectionHeadline, &unk_1D73534CC);
    sub_1D72643BC();
    v11 = 5;
    type metadata accessor for WebEmbedDataVisualization(0);
    sub_1D67F19D8(&qword_1EDF0BB90, type metadata accessor for WebEmbedDataVisualization, &protocol conformance descriptor for WebEmbedDataVisualization);
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1D67F039C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_1D5B4D72C(0);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67F16E8(0, v5);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v36 - v15;
  v17 = sub_1D72585BC();
  v39 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67F1974(0, &qword_1EC88C038, MEMORY[0x1E69E6F48]);
  v43 = v21;
  v40 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v36 - v23;
  v25 = type metadata accessor for DebugInspectionWebEmbed(0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v36 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D67F18B8();
  v42 = v24;
  v30 = v44;
  sub_1D7264B0C();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    v32 = v40;
    v31 = v41;
    v51 = 0;
    *v28 = sub_1D72642BC();
    v28[1] = v33;
    v50 = 1;
    v44 = sub_1D67F19D8(&unk_1EDF45B50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1D726431C();
    (*(v39 + 32))(v28 + v25[5], v20, v17);
    v49 = 2;
    sub_1D726427C();
    sub_1D67F190C(v16, v28 + v25[6], sub_1D5B4D3E0);
    v48 = 3;
    v44 = 0;
    sub_1D726427C();
    sub_1D67F190C(v31, v28 + v25[7], sub_1D5B4D3E0);
    type metadata accessor for DebugInspectionHeadline(0);
    v47 = 4;
    sub_1D67F19D8(&qword_1EC88C048, type metadata accessor for DebugInspectionHeadline, &unk_1D73534F4);
    v34 = v38;
    sub_1D726427C();
    sub_1D67F190C(v34, v28 + v25[8], sub_1D67F16E8);
    type metadata accessor for WebEmbedDataVisualization(0);
    v46 = 5;
    sub_1D67F19D8(&qword_1EDF0BB78, type metadata accessor for WebEmbedDataVisualization, &protocol conformance descriptor for WebEmbedDataVisualization);
    v35 = v37;
    sub_1D726427C();
    (*(v32 + 8))(v42, v43);
    sub_1D67F190C(v35, v28 + v25[9], sub_1D5B4D72C);
    sub_1D5C00E48(v28, v36, type metadata accessor for DebugInspectionWebEmbed);
    __swift_destroy_boxed_opaque_existential_1(v45);
    sub_1D5B6F0DC(v28, type metadata accessor for DebugInspectionWebEmbed);
  }
}

uint64_t sub_1D67F0AEC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x4C525561746164;
  v4 = 0x656E696C64616568;
  if (v1 != 4)
  {
    v4 = 0x7A696C6175736976;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 5001813;
  if (v1 != 1)
  {
    v5 = 0x6C69467865646E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D67F0BB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D67F1B38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D67F0BE0(uint64_t a1)
{
  v2 = sub_1D67F18B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67F0C1C(uint64_t a1)
{
  v2 = sub_1D67F18B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D67F0C88(void *a1@<X8>, __n128 a2@<Q0>)
{
  v80 = a1;
  v94 = *MEMORY[0x1E69E9840];
  sub_1D67F16E8(0, a2);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v79 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D72C(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v83 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for WebEmbedDataVisualization(0);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82, v9);
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v77 - v17;
  sub_1D67F171C(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5F3D224();
  v77 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7274590;
  *(v20 + 32) = 0x696669746E656449;
  *(v20 + 40) = 0xEA00000000007265;
  v21 = *v2;
  v22 = v2[1];
  v23 = MEMORY[0x1E69E61C8];
  *(v20 + 72) = MEMORY[0x1E69E6158];
  *(v20 + 80) = v23;
  *(v20 + 48) = v21;
  *(v20 + 56) = v22;
  *(v20 + 88) = 0;
  *(v20 + 96) = 5001813;
  *(v20 + 104) = 0xE300000000000000;
  v24 = type metadata accessor for DebugInspectionWebEmbed(0);
  v25 = *(v24 + 20);
  v26 = sub_1D72585BC();
  *(v20 + 136) = v26;
  v27 = sub_1D67F19D8(&qword_1EDF18AC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  *(v20 + 144) = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v20 + 112));
  v29 = *(v26 - 8);
  v30 = *(v29 + 16);
  v89 = v29 + 16;
  v88 = v30;
  v30(boxed_opaque_existential_1, v2 + v25, v26);
  *(v20 + 152) = 0;
  strcpy((v20 + 160), "Index File URL");
  *(v20 + 175) = -18;
  v85 = v24;
  v31 = *(v24 + 24);
  v86 = v2;
  sub_1D5C00E48(v2 + v31, v18, sub_1D5B4D3E0);
  v32 = *(v29 + 48);
  v33 = v32(v18, 1, v26);
  v84 = v27;
  if (v33 == 1)
  {

    sub_1D5B6F0DC(v18, sub_1D5B4D3E0);
    *(v20 + 176) = 0u;
    *(v20 + 192) = 0u;
    *(v20 + 208) = 0;
  }

  else
  {
    *(v20 + 200) = v26;
    *(v20 + 208) = v27;
    v34 = __swift_allocate_boxed_opaque_existential_1((v20 + 176));
    (*(v29 + 32))(v34, v18, v26);
  }

  *(v20 + 216) = 0;
  *(v20 + 224) = 0x4C52552061746144;
  *(v20 + 232) = 0xE800000000000000;
  v35 = v85;
  v36 = v86;
  sub_1D5C00E48(v86 + *(v85 + 28), v14, sub_1D5B4D3E0);
  if (v32(v14, 1, v26) == 1)
  {
    sub_1D5B6F0DC(v14, sub_1D5B4D3E0);
    *(v20 + 240) = 0u;
    *(v20 + 256) = 0u;
    *(v20 + 272) = 0;
    v37 = inited;
    v38 = v84;
  }

  else
  {
    v38 = v84;
    *(v20 + 264) = v26;
    *(v20 + 272) = v38;
    v39 = __swift_allocate_boxed_opaque_existential_1((v20 + 240));
    (*(v29 + 32))(v39, v14, v26);
    v37 = inited;
  }

  v40 = v83;
  *(v20 + 280) = 0;
  *(v37 + 7) = &type metadata for DebugInspectionDataSection;
  *(v37 + 8) = &off_1F5132800;
  *(v37 + 4) = 0x6465626D45626557;
  *(v37 + 5) = 0xE800000000000000;
  *(v37 + 6) = v20;
  sub_1D5C00E48(v36 + *(v35 + 36), v40, sub_1D5B4D72C);
  if ((*(v81 + 48))(v40, 1, v82) == 1)
  {
    sub_1D5B6F0DC(v40, sub_1D5B4D72C);
    v41 = v80;
    v42 = v79;
    goto LABEL_25;
  }

  sub_1D67F190C(v40, v78, type metadata accessor for WebEmbedDataVisualization);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1D7270C10;
  *(v43 + 32) = 0x696669746E656449;
  *(v43 + 40) = 0xEA00000000007265;
  v44 = WebEmbedDataVisualization.identifier.getter();
  v45 = MEMORY[0x1E69E6158];
  *(v43 + 72) = MEMORY[0x1E69E6158];
  v46 = MEMORY[0x1E69E61C8];
  *(v43 + 80) = MEMORY[0x1E69E61C8];
  *(v43 + 48) = v44;
  *(v43 + 56) = v47;
  *(v43 + 88) = 0;
  *(v43 + 96) = 1684957515;
  *(v43 + 104) = 0xE400000000000000;
  v48 = WebEmbedDataVisualization.kind.getter();
  *(v43 + 136) = v45;
  *(v43 + 144) = v46;
  *(v43 + 112) = v48;
  *(v43 + 120) = v49;
  *(v43 + 152) = 0;
  v37 = sub_1D6994ED8(1, 2, 1, v37);
  *(v37 + 2) = 2;
  strcpy(v37 + 72, "Visualization");
  *(v37 + 43) = -4864;
  *(v37 + 11) = v43;
  *(v37 + 12) = &type metadata for DebugInspectionDataSection;
  *(v37 + 13) = &off_1F5132800;
  v50 = WebEmbedDataVisualization.urlDataSources.getter();
  v51 = v50;
  if (v50 >> 62)
  {
    v52 = sub_1D7263BFC();
    if (v52)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
LABEL_11:
      v90 = MEMORY[0x1E69E7CC0];
      sub_1D6999668(0, v52 & ~(v52 >> 63), 0);
      if (v52 < 0)
      {
        __break(1u);
      }

      inited = v37;
      v53 = 0;
      v54 = v90;
      do
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v55 = MEMORY[0x1DA6FB460](v53, v51);
        }

        else
        {
          v55 = *(v51 + 8 * v53 + 32);
        }

        v56 = *(v55 + 40);
        *&v91 = *(v55 + 32);
        *(&v91 + 1) = v56;
        v57 = OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
        *&v93[8] = v26;
        *&v93[16] = v38;
        v58 = __swift_allocate_boxed_opaque_existential_1(&v92);
        v88(v58, v55 + v57, v26);

        v93[24] = 0;
        v90 = v54;
        v60 = *(v54 + 16);
        v59 = *(v54 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1D6999668((v59 > 1), v60 + 1, 1);
          v54 = v90;
        }

        ++v53;
        *(v54 + 16) = v60 + 1;
        v61 = (v54 + (v60 << 6));
        v62 = v91;
        v63 = v92;
        v64 = *v93;
        *(v61 + 73) = *&v93[9];
        v61[3] = v63;
        v61[4] = v64;
        v61[2] = v62;
      }

      while (v52 != v53);

      v37 = inited;
      goto LABEL_22;
    }
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v66 = *(v37 + 2);
  v65 = *(v37 + 3);
  v41 = v80;
  v42 = v79;
  if (v66 >= v65 >> 1)
  {
    v37 = sub_1D6994ED8((v65 > 1), v66 + 1, 1, v37);
  }

  sub_1D5B6F0DC(v78, type metadata accessor for WebEmbedDataVisualization);
  *(v37 + 2) = v66 + 1;
  v67 = &v37[40 * v66];
  strcpy(v67 + 32, "Data Sources");
  v67[45] = 0;
  *(v67 + 23) = -5120;
  *(v67 + 6) = v54;
  *(v67 + 7) = &type metadata for DebugInspectionDataSection;
  *(v67 + 8) = &off_1F5132800;
  v36 = v86;
  v35 = v85;
LABEL_25:
  sub_1D5C00E48(v36 + *(v35 + 32), v42, sub_1D67F16E8);
  v68 = type metadata accessor for DebugInspectionHeadline(0);
  v69 = (*(*(v68 - 8) + 48))(v42, 1, v68);
  if (v69 == 1)
  {
    sub_1D5B6F0DC(v42, sub_1D67F16E8);
    v91 = 0u;
    v92 = 0u;
    *v93 = 0;
  }

  else
  {
    sub_1D6D9F7B0(v69, v70);
    sub_1D5B6F0DC(v42, type metadata accessor for DebugInspectionHeadline);
  }

  v72 = *(v37 + 2);
  v71 = *(v37 + 3);
  if (v72 >= v71 >> 1)
  {
    v37 = sub_1D6994ED8((v71 > 1), v72 + 1, 1, v37);
  }

  *(v37 + 2) = v72 + 1;
  v73 = &v37[40 * v72];
  v74 = v91;
  v75 = v92;
  *(v73 + 8) = *v93;
  *(v73 + 2) = v74;
  *(v73 + 3) = v75;
  sub_1D60F3E18(v37);
  v41[3] = &type metadata for DebugInspectionDataSource;
  v41[4] = &off_1F51328C8;
  *v41 = v76;
}

void sub_1D67F171C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for DebugInspectionWebEmbed(uint64_t a1)
{
  result = qword_1EC88C028;
  if (!qword_1EC88C028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D67F17F4(uint64_t a1)
{
  sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    sub_1D5B4D3E0(319);
    if (v3 <= 0x3F)
    {
      sub_1D67F16E8(319, v2);
      if (v4 <= 0x3F)
      {
        sub_1D5B4D72C(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D67F18B8()
{
  result = qword_1EC88C040;
  if (!qword_1EC88C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C040);
  }

  return result;
}

uint64_t sub_1D67F190C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D67F1974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D67F18B8();
    v7 = a3(a1, &type metadata for DebugInspectionWebEmbed.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D67F19D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D67F1A34()
{
  result = qword_1EC88C060;
  if (!qword_1EC88C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C060);
  }

  return result;
}

unint64_t sub_1D67F1A8C()
{
  result = qword_1EC88C068;
  if (!qword_1EC88C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C068);
  }

  return result;
}

unint64_t sub_1D67F1AE4()
{
  result = qword_1EC88C070;
  if (!qword_1EC88C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C070);
  }

  return result;
}

uint64_t sub_1D67F1B38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 5001813 && a2 == 0xE300000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69467865646E69 && a2 == 0xEC0000004C525565 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C525561746164 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7A696C6175736976 && a2 == 0xED00006E6F697461)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void FormatServiceOptions.cachePolicy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t FormatServiceOptions.otherArticleIDs.getter()
{
  type metadata accessor for FormatServiceOptions(0);
}

id FormatServiceOptions.purpose.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatServiceOptions(0) + 48));

  return v1;
}

id FormatServiceOptions.log.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatServiceOptions(0) + 52));

  return v1;
}

uint64_t FormatServiceOptions.init<A>(groupContext:mergeContext:filterOptions:tagFilterOptions:tagFeedFetchWindow:tagFeedFetchCount:transformData:otherArticleIDs:purpose:log:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, double a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v55 = a8;
  v52 = a5;
  v48 = a4;
  v49 = a3;
  v56 = a13;
  v53 = a10;
  v54 = a7;
  v50 = a11;
  v51 = a6;
  v18 = *a1;
  sub_1D5CEDC80(0, qword_1EDF2BB60, type metadata accessor for FormatTransformData);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v47 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v46 - v24;
  v26 = type metadata accessor for FormatTransformData(0);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a9 + 24) = type metadata accessor for FormatServiceGroupContext(0, *(v18 + 80), *(v18 + 88), v31);
  *(a9 + 32) = &protocol witness table for FormatServiceGroupContext<A>;
  *a9 = a1;
  v32 = type metadata accessor for FormatServiceOptions(0);
  *(a9 + v32[16]) = a2;
  v33 = *(a1 + 24);
  *(a9 + 40) = a1[2];
  *(a9 + 48) = v33;
  v34 = 0x200000118;
  if ((v48 & 1) == 0)
  {
    v34 = v49;
  }

  v35 = v52;
  if (v51)
  {
    v35 = 1;
  }

  *(a9 + 56) = v34;
  *(a9 + 64) = v35;
  v36 = v54;
  if (v55)
  {
    v36 = 86400.0;
  }

  *(a9 + 72) = v36;
  v37 = 30;
  if ((v50 & 1) == 0)
  {
    v37 = v53;
  }

  *(a9 + 80) = v37;
  sub_1D5CF24F8(a12, v25, qword_1EDF2BB60, type metadata accessor for FormatTransformData);
  v38 = *(v27 + 48);
  if (v38(v25, 1, v26) == 1)
  {
    v39 = qword_1EDF2BBB8;

    if (v39 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v26, qword_1EDFFCAD0);
    sub_1D5CEF028(v40, v30, type metadata accessor for FormatTransformData);
    if (v38(v25, 1, v26) != 1)
    {
      sub_1D5CF28EC(v25, qword_1EDF2BB60, type metadata accessor for FormatTransformData);
    }
  }

  else
  {
    sub_1D5CEEF5C(v25, v30);
  }

  sub_1D5CEEF5C(v30, a9 + v32[10]);
  v41 = v56;
  if (!v56)
  {
    v42 = v47;
    sub_1D5CF24F8(a12, v47, qword_1EDF2BB60, type metadata accessor for FormatTransformData);
    if (v38(v42, 1, v26) == 1)
    {
      sub_1D5CF28EC(v42, qword_1EDF2BB60, type metadata accessor for FormatTransformData);
      v41 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v43 = v42;
      v41 = *(v42 + *(v26 + 24));

      sub_1D5CEF0DC(v43);
    }
  }

  *(a9 + v32[11]) = v41;
  *(a9 + v32[12]) = a14;
  *(a9 + v32[13]) = a15;
  *(a9 + v32[15]) = 0;
  v44 = FormatServiceGroupContext.isSponsorshipEligible.getter();

  result = sub_1D5CF28EC(a12, qword_1EDF2BB60, type metadata accessor for FormatTransformData);
  *(a9 + v32[14]) = v44 & 1;
  return result;
}

uint64_t sub_1D67F2364@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1D725891C();
  v96 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v95 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEDC80(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v92 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v94 = v76 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v76 - v17;
  sub_1D5CF24F8(a1, &v97, &qword_1EDF210B0, sub_1D5CEDCD4);
  v19 = v99;
  if (v99)
  {
    v20 = v100;
    __swift_project_boxed_opaque_existential_1(&v97, v99);
    v21 = (*(v20 + 8))(a2, v19, v20);
    __swift_destroy_boxed_opaque_existential_1(&v97);
    v22 = *&a2[*(type metadata accessor for FormatContent(0) + 76)];

    v23 = sub_1D5D6021C(v21, v22);
    sub_1D5C3C480();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v97 = 0x2D746E65746E6F63;
    v98 = 0xEB000000002D6469;
    MEMORY[0x1DA6F9910](*a2, *(a2 + 1));
    v25 = v98;
    *(inited + 32) = v97;
    *(inited + 40) = v25;
    v26 = sub_1D5BA8750(inited, v23);
    swift_setDeallocating();
    sub_1D5BFB68C(inited + 32);
  }

  else
  {
    sub_1D5CF28EC(&v97, &qword_1EDF210B0, sub_1D5CEDCD4);
    v26 = 0;
  }

  sub_1D5CF24F8(a1, &v97, &qword_1EDF210B0, sub_1D5CEDCD4);
  v27 = v99;
  if (!v99)
  {
    sub_1D5CF28EC(&v97, &qword_1EDF210B0, sub_1D5CEDCD4);
    if (!v26)
    {
      return sub_1D5CEF028(a2, a3, type metadata accessor for FormatContent);
    }

LABEL_8:
    v93 = v26;
    v90 = 0;
    goto LABEL_9;
  }

  v28 = v100;
  __swift_project_boxed_opaque_existential_1(&v97, v99);
  v29 = (*(v28 + 32))(a2, v27, v28);
  __swift_destroy_boxed_opaque_existential_1(&v97);
  if (!*(v29 + 16))
  {

    if (!v26)
    {
      return sub_1D5CEF028(a2, a3, type metadata accessor for FormatContent);
    }

    goto LABEL_8;
  }

  v90 = v29;
  v93 = v26;
LABEL_9:
  v30 = sub_1D72608BC();
  v31 = *(v30 - 8);
  v32 = v31;
  v77 = *(v31 + 56);
  v76[1] = v31 + 56;
  v77(v18, 1, 1, v30);
  v33 = *(a2 + 1);
  v89 = *a2;
  v81 = v33;
  v34 = type metadata accessor for FormatContent(0);
  v35 = v34[5];
  v36 = *(v96 + 16);
  v91 = v6;
  v36(v95, &a2[v35], v6);
  v37 = v34[7];
  v38 = &a2[v34[6]];
  v40 = *v38;
  v39 = *(v38 + 1);
  v87 = v40;
  v80 = v39;
  v41 = *&a2[v37 + 8];
  v88 = *&a2[v37];
  v79 = v41;
  v42 = v34[9];
  v43 = &a2[v34[8]];
  v44 = *(v43 + 1);
  v83 = *v43;
  v45 = *&a2[v42 + 8];
  v86 = *&a2[v42];
  v78 = v45;
  v46 = &a2[v34[10]];
  v47 = *(v46 + 1);
  v85 = *v46;
  v48 = v92;
  sub_1D5CEB57C(v18, v92);
  v49 = *(v32 + 48);
  v50 = v49(v48, 1, v30);
  v82 = v44;
  if (v50 == 1)
  {
    sub_1D5CF24F8(&a2[v34[11]], v94, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    v51 = v49(v48, 1, v30);

    v52 = v81;

    v53 = v80;

    v54 = v79;

    v56 = v51 == 1;
    v57 = v52;
    v58 = v53;
    v59 = v55;
    if (!v56)
    {
      sub_1D5CF28EC(v48, &qword_1EDF45AB0, MEMORY[0x1E69B40B8]);
    }
  }

  else
  {
    v60 = v94;
    (*(v32 + 32))(v94, v48, v30);
    v77(v60, 0, 1, v30);

    v57 = v81;

    v61 = v80;

    v54 = v79;

    v59 = v78;

    v58 = v61;
  }

  v62 = *&a2[v34[12]];
  v80 = *&a2[v34[13]];
  v63 = v34[15];
  v79 = *&a2[v34[14]];
  v81 = *&a2[v63];
  v92 = *&a2[v34[16]];
  v64 = v90;
  v84 = v47;
  if (!v90)
  {
    v64 = *&a2[v34[17]];
  }

  v65 = *&a2[v34[18]];
  if (v93)
  {
    v66 = v93;
  }

  else
  {
    v66 = *&a2[v34[19]];
  }

  *a3 = v89;
  *(a3 + 1) = v57;
  (*(v96 + 32))(&a3[v34[5]], v95, v91);
  v67 = &a3[v34[6]];
  v68 = v88;
  *v67 = v87;
  *(v67 + 1) = v58;
  v69 = &a3[v34[7]];
  *v69 = v68;
  *(v69 + 1) = v54;
  v70 = &a3[v34[8]];
  v71 = v82;
  *v70 = v83;
  *(v70 + 1) = v71;
  v72 = &a3[v34[9]];
  *v72 = v86;
  *(v72 + 1) = v59;
  v73 = &a3[v34[10]];
  v74 = v84;
  *v73 = v85;
  *(v73 + 1) = v74;
  sub_1D5CEB57C(v94, &a3[v34[11]]);
  *&a3[v34[12]] = v62;
  *&a3[v34[13]] = v80;
  *&a3[v34[14]] = v79;
  *&a3[v34[15]] = v81;
  *&a3[v34[16]] = v92;
  *&a3[v34[17]] = v64;
  *&a3[v34[18]] = v65;
  *&a3[v34[19]] = v66;
}

uint64_t ResourceServiceType.fetchResources(identifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5C3BFE8(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = FCCurrentQoSOrUtilityIfMain();
  v11 = sub_1D725A82C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = (*(a3 + 8))(a1, v10, v9, *MEMORY[0x1E69B50B8], 0, 0, 0, a2, a3);
  sub_1D5C3C4D0(v9);
  return v12;
}

uint64_t ResourceServiceType.fetchResource(identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5C3BFE8(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v16 - v10;
  v12 = FCCurrentQoSOrUtilityIfMain();
  v13 = sub_1D725A82C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = ResourceServiceType.fetchResource(identifier:qualityOfService:cachePolicy:purpose:lifetime:)(a1, a2, v12, v11, *MEMORY[0x1E69B50B8], 0, 0, a3, a4);
  sub_1D5C3C4D0(v11);
  return v14;
}

uint64_t ResourceServiceType.fetchAllResources(identifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5C3BFE8(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = FCCurrentQoSOrUtilityIfMain();
  v11 = sub_1D725A82C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = (*(a3 + 8))(a1, v10, v9, *MEMORY[0x1E69B50B8], 0, 0, 1, a2, a3);
  sub_1D5C3C4D0(v9);
  return v12;
}

uint64_t ResourceServiceType.fetchResources(identifiers:qualityOfService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5C3BFE8(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - v10;
  v12 = sub_1D725A82C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = (*(a4 + 8))(a1, a2, v11, *MEMORY[0x1E69B50B8], 0, 0, 0, a3, a4);
  sub_1D5C3C4D0(v11);
  return v13;
}

uint64_t ResourceService.__allocating_init(cloudContext:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 2;
  *(result + 16) = a1;
  return result;
}

uint64_t ResourceService.init(cloudContext:)(uint64_t a1)
{
  *(v1 + 24) = 2;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t ResourceService.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1D67F3330()
{
  result = qword_1EDF0DCA0;
  if (!qword_1EDF0DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DCA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed21ResourceServiceErrors33_1A86DACC9E67A95BFCF134E5EF371638LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D67F33A0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

id sub_1D67F3414(uint64_t a1, uint64_t a2, void *a3)
{
  v108 = a2;
  v107 = sub_1D725DD0C();
  v5 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v6);
  v8 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D725DD3C();
  MEMORY[0x1EEE9AC00](v9, v10);
  v14 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 40);
  v118 = *(a1 + 24);
  v119 = v15;
  v16 = *(a1 + 72);
  v120 = *(a1 + 56);
  v121 = v16;
  v122 = *(a1 + 88);
  v17 = v118;
  v18 = v119;
  v19 = *(a1 + 57);
  v123 = *(a1 + 41);
  v124[0] = v19;
  *(v124 + 15) = v16;
  if (v122 > 1u)
  {
    if (v122 != 2)
    {
      v27 = [objc_allocWithZone(type metadata accessor for FormatGroupNodeMaskBasicLayer()) init];
      v42 = v27;
      if (a3)
      {
        v43 = [a3 CGColor];
      }

      else
      {
        v43 = 0;
      }

      [v27 setBackgroundColor_];

      v87 = *(a1 + 16);
      [v27 setFrame_];
      v66 = [objc_opt_self() bezierPathWithRect_];
      v67 = [v66 CGPath];
      goto LABEL_25;
    }

    v104 = v5;
    v105 = v12;
    v106 = v11;
    v29 = *(a1 + 40);
    v30 = *(a1 + 72);
    v115 = *(a1 + 56);
    v116 = v30;
    v117 = *(a1 + 88);
    v113 = *(a1 + 24);
    v114 = v29;
    v31 = objc_allocWithZone(type metadata accessor for FormatGroupNodeMaskGradientLayer());
    sub_1D6086694(&v113, &v109);
    v32 = [v31 init];
    v109 = v17;
    v110 = v18;
    v111 = v123;
    *v112 = v124[0];
    *&v112[15] = *(v124 + 15);
    sub_1D6BB7540();
    sub_1D67F41CC(&v118);
    v33 = v32;
    v34 = sub_1D725DCBC();
    sub_1D5F6398C(v34);

    v35 = sub_1D726265C();

    [v33 setColors_];

    if (sub_1D725DCAC())
    {
      sub_1D5BAFAD8();
      v36 = sub_1D726265C();
    }

    else
    {
      v36 = 0;
    }

    [v33 setLocations_];

    sub_1D725DD1C();
    sub_1D725DCEC();
    v69 = v68;
    v71 = v70;
    v72 = *(v104 + 8);
    v73 = v107;
    v72(v8, v107);
    [v33 setStartPoint_];
    sub_1D725DD1C();
    sub_1D725DCFC();
    v75 = v74;
    v77 = v76;
    v72(v8, v73);
    [v33 setEndPoint_];

    v78 = *(a1 + 16);
    v79 = v78[6];
    v80 = v78[7];
    v81 = v78[8];
    v82 = v78[9];
    v27 = v33;
    [v27 setFrame_];
    v83 = [objc_opt_self() bezierPathWithRect_];
    v84 = [v83 CGPath];

    [v27 setShadowPath_];
    (*(v105 + 8))(v14, v106);
  }

  else
  {
    if (!v122)
    {
      v20 = objc_allocWithZone(type metadata accessor for FormatGroupNodeMaskBasicLayer());
      sub_1D5ED34C4(v17, *(&v17 + 1), v18);
      v21 = [v20 init];
      v22 = *(a1 + 16);
      v23 = v22[6];
      v24 = v22[7];
      v25 = v22[8];
      v26 = v22[9];
      v27 = v21;
      [v27 setFrame_];
      if (a3)
      {
        v28 = [a3 CGColor];
      }

      else
      {
        v28 = 0;
      }

      [v27 setBackgroundColor_];

      v44 = v22[6];
      v45 = v22[7];
      v46 = v22[8];
      v47 = v22[9];
      v113 = v17;
      LOBYTE(v114) = v18;
      sub_1D6E549E4(v27, &v113, v44, v45, v46, v47);
      sub_1D5ED348C(v113, *(&v113 + 1), v114);
      v48 = [v27 cornerCurve];
      v49 = sub_1D726207C();
      v51 = v50;
      if (v49 == sub_1D726207C() && v51 == v52)
      {
      }

      else
      {
        v53 = sub_1D72646CC();

        if ((v53 & 1) == 0)
        {
          v90 = sub_1D726207C();
          v92 = v91;
          if (v90 == sub_1D726207C() && v92 == v93)
          {
          }

          else
          {
            sub_1D72646CC();
          }

          [v27 bounds];
          v95 = v94;
          v97 = v96;
          v99 = v98;
          v101 = v100;
          [v27 cornerRadius];
          v66 = [objc_opt_self() bezierPathWithRoundedRect:v95 cornerRadius:{v97, v99, v101, v102}];
          v67 = [v66 CGPath];
          goto LABEL_25;
        }
      }

      [v27 bounds];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      [v27 maskedCorners];
      v62 = sub_1D7262E5C();
      [v27 cornerRadius];
      v64 = v63;
      [v27 cornerRadius];
      v66 = [objc_opt_self() bezierPathWithRoundedRect:v62 byRoundingCorners:v55 cornerRadii:{v57, v59, v61, v64, v65}];
      v67 = [v66 CGPath];
LABEL_25:
      v88 = v67;

      [v27 setShadowPath_];
      return v27;
    }

    v37 = objc_allocWithZone(type metadata accessor for FormatGroupNodeMaskShapeLayer());
    v38 = v17;
    v39 = [v37 init];
    v40 = v39;
    if (a3)
    {
      v41 = [a3 CGColor];
    }

    else
    {
      v41 = 0;
    }

    [v39 setBackgroundColor_];

    v27 = v39;
    v85 = [v38 CGPath];
    [v27 setPath_];

    v86 = [v27 path];
    [v27 setShadowPath_];
    sub_1D67F41CC(&v118);
  }

  return v27;
}

void *sub_1D67F3DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() whiteColor];
  v10 = sub_1D67F3414(a1, a2, v9);
  v12 = v11;

  v13 = *(a1 + 16);
  v14 = *(v13 + 80);
  if (!v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v15 = *(v14 + 128);
  if (!v15)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v51 = *(v14 + 216);
    v26 = *(v14 + 184);
    v48 = *(v14 + 168);
    v49 = v26;
    v50 = *(v14 + 200);
    v27 = *(v14 + 152);
    v46 = *(v14 + 136);
    v47 = v27;
    if (v51 != 254)
    {
      v28 = v47;
      v29 = DWORD2(v46);
      v30 = *&v46;

      v31 = sub_1D67F3414(a1, a2, 0);
      v33 = v32;
      [v31 setShadowRadius_];
      [v31 setShadowOffset_];
      LODWORD(v34) = v29;
      [v31 setShadowOpacity_];
      v35 = v31;
      v37 = FormatColor.color.getter(v36);
      v38 = [(objc_class *)v37 CGColor];

      [v35 setShadowColor_];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D699324C(0, *(v21 + 2) + 1, 1, v21);
      }

      v40 = *(v21 + 2);
      v39 = *(v21 + 3);
      if (v40 >= v39 >> 1)
      {
        v21 = sub_1D699324C((v39 > 1), v40 + 1, 1, v21);
      }

      sub_1D67F4170(&v46);
      *(v21 + 2) = v40 + 1;
      v41 = &v21[16 * v40];
      *(v41 + 4) = v35;
      *(v41 + 5) = v33;
    }

    goto LABEL_17;
  }

  v44 = v12;
  v45 = v10;

  v16 = sub_1D67F3414(a1, a2, 0);
  v43 = v17;
  if (*(a1 + 88))
  {
    v18 = 0;
    v19 = 0;
    v20 = -2;
  }

  else
  {
    v20 = *(a1 + 40);
    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    sub_1D5ED34C4(v18, v19, v20);
  }

  *&v46 = v18;
  *(&v46 + 1) = v19;
  LOBYTE(v47) = v20;
  v22 = v16;
  sub_1D6D111F4(v22, a2, v15, &v46, a3, a5);

  sub_1D5ED348C(v46, *(&v46 + 1), v47);
  v21 = sub_1D699324C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1D699324C((v23 > 1), v24 + 1, 1, v21);
  }

  v12 = v44;
  *(v21 + 2) = v24 + 1;
  v25 = &v21[16 * v24];
  *(v25 + 4) = v22;
  *(v25 + 5) = v43 | 0x8000000000000000;
  v14 = *(v13 + 80);
  v10 = v45;
  if (v14)
  {
    goto LABEL_11;
  }

LABEL_17:
  type metadata accessor for FormatGroupNodeMaskRendererResult();
  result = swift_allocObject();
  result[2] = v10;
  result[3] = v12;
  result[4] = v21;
  return result;
}

uint64_t sub_1D67F4170(uint64_t a1)
{
  sub_1D615C3A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D67F4238(uint64_t a1, uint64_t a2)
{
  v166 = a2;
  sub_1D5D50538(0, qword_1EDF34D20, type metadata accessor for FeedRecipe);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v164 = &v141 - v5;
  v6 = type metadata accessor for FeedRecipe(0);
  v160 = *(v6 - 8);
  v161 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v162 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D50538(0, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v159 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v165 = &v141 - v14;
  v15 = type metadata accessor for FeedPuzzleStatistic(0);
  v155 = *(v15 - 8);
  v156 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v144 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v163 = &v141 - v20;
  sub_1D5D50538(0, qword_1EDF39CF0, type metadata accessor for FeedCustomItem);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v154 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v158 = &v141 - v26;
  v27 = type metadata accessor for FeedCustomItem(0);
  v150 = *(v27 - 8);
  v151 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v143 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v157 = &v141 - v32;
  sub_1D5D50538(0, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v149 = &v141 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v153 = &v141 - v38;
  v39 = type metadata accessor for FeedWebEmbed(0);
  v146 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v142 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v152 = &v141 - v44;
  sub_1D5D50538(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v48 = &v141 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v148 = &v141 - v51;
  v52 = type metadata accessor for FeedHeadline(0);
  v145 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v141 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56, v57);
  v147 = &v141 - v58;
  sub_1D5D50538(0, qword_1EDF34EF0, type metadata accessor for FeedItem);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v62 = &v141 - v61;
  v63 = type metadata accessor for FeedItem(0);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v65);
  v67 = &v141 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(a1 + 112);
  v230 = *(a1 + 96);
  v231 = v68;
  v232 = *(a1 + 128);
  v233 = *(a1 + 144);
  v69 = *(a1 + 48);
  v226 = *(a1 + 32);
  v227 = v69;
  v70 = *(a1 + 80);
  v228 = *(a1 + 64);
  v229 = v70;
  v71 = *(a1 + 16);
  v224 = *a1;
  v225 = v71;
  sub_1D67C8378(v166, &v207, v224);
  if (*(&v208 + 1))
  {
    sub_1D5B63F14(&v207, v223);
    sub_1D5B68374(v223, &v207);
    sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
    v72 = swift_dynamicCast();
    v73 = *(v64 + 56);
    if (v72)
    {
      v73(v62, 0, 1, v63);
      sub_1D5D654FC(v62, v67, type metadata accessor for FeedItem);
    }

    else
    {
      v73(v62, 1, 1, v63);
      sub_1D5B68374(v223, &v192);
      sub_1D6818590(&v192, v67);
      if ((*(v64 + 48))(v62, 1, v63) != 1)
      {
        sub_1D67F5948(v62, qword_1EDF34EF0, type metadata accessor for FeedItem);
      }
    }

    switch(swift_getEnumCaseMultiPayload())
    {
      case 3u:
        v104 = v147;
        sub_1D5D654FC(v67, v147, type metadata accessor for FeedHeadline);
        v105 = v148;
        sub_1D67F59A4(v104, v148, type metadata accessor for FeedHeadline);
        v106 = v145;
        (*(v145 + 56))(v105, 0, 1, v52);
        sub_1D67F5A0C(v105, v48, qword_1EDF42030, type metadata accessor for FeedHeadline);
        if ((*(v106 + 48))(v48, 1, v52) == 1)
        {
          sub_1D67F5948(v48, qword_1EDF42030, type metadata accessor for FeedHeadline);
          v75 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
        }

        else
        {
          sub_1D5D654FC(v48, v55, type metadata accessor for FeedHeadline);
          v213 = v230;
          v214 = v231;
          v215 = v232;
          *&v216 = v233;
          v209 = v226;
          v210 = v227;
          v211 = v228;
          v212 = v229;
          v207 = v224;
          v208 = v225;
          v75 = sub_1D5E4E6A4(&v207, v55);
          sub_1D5C0ADE0(v55, type metadata accessor for FeedHeadline);
        }

        sub_1D67F5948(v105, qword_1EDF42030, type metadata accessor for FeedHeadline);
        v138 = type metadata accessor for FeedHeadline;
        v139 = v104;
        goto LABEL_35;
      case 4u:
        v80 = v152;
        sub_1D5D654FC(v67, v152, type metadata accessor for FeedWebEmbed);
        v85 = v153;
        sub_1D67F59A4(v80, v153, type metadata accessor for FeedWebEmbed);
        v86 = v146;
        (*(v146 + 56))(v85, 0, 1, v39);
        v87 = v149;
        sub_1D67F5A0C(v85, v149, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
        if ((*(v86 + 48))(v87, 1, v39) == 1)
        {
          sub_1D67F5948(v87, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
          v75 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
        }

        else
        {
          v137 = v142;
          sub_1D5D654FC(v87, v142, type metadata accessor for FeedWebEmbed);
          v213 = v230;
          v214 = v231;
          v215 = v232;
          *&v216 = v233;
          v209 = v226;
          v210 = v227;
          v211 = v228;
          v212 = v229;
          v207 = v224;
          v208 = v225;
          v75 = sub_1D6D49E84(&v207, v137);
          sub_1D5C0ADE0(v137, type metadata accessor for FeedWebEmbed);
        }

        sub_1D67F5948(v85, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
        v95 = type metadata accessor for FeedWebEmbed;
        goto LABEL_34;
      case 5u:
        v96 = *(v67 + 5);
        v97 = *(v67 + 7);
        v198 = *(v67 + 6);
        v199[0] = v97;
        *(v199 + 9) = *(v67 + 121);
        v98 = *(v67 + 1);
        v99 = *(v67 + 3);
        v194 = *(v67 + 2);
        v195 = v99;
        v100 = *(v67 + 3);
        v101 = *(v67 + 5);
        v196 = *(v67 + 4);
        v197 = v101;
        v102 = *(v67 + 1);
        v192 = *v67;
        v193 = v102;
        v213 = v230;
        v214 = v231;
        v215 = v232;
        v209 = v226;
        v210 = v227;
        v211 = v228;
        v212 = v229;
        v207 = v224;
        v208 = v225;
        v103 = *(v67 + 7);
        v186 = v198;
        v187[0] = v103;
        *(v187 + 9) = *(v67 + 121);
        v182 = v194;
        v183 = v100;
        v184 = v196;
        v185 = v96;
        *&v216 = v233;
        v180 = v192;
        v181 = v98;
        v75 = sub_1D6CDE0AC(&v207, &v180);
        sub_1D5ECF320(&v192);
        goto LABEL_36;
      case 7u:
        v76 = *(v67 + 7);
        v198 = *(v67 + 6);
        v199[0] = v76;
        v199[1] = *(v67 + 8);
        LOBYTE(v200) = v67[144];
        v77 = *(v67 + 3);
        v194 = *(v67 + 2);
        v195 = v77;
        v78 = *(v67 + 5);
        v196 = *(v67 + 4);
        v197 = v78;
        v79 = *(v67 + 1);
        v192 = *v67;
        v193 = v79;
        v213 = v230;
        v214 = v231;
        v215 = v232;
        *&v216 = v233;
        v209 = v226;
        v210 = v227;
        v211 = v228;
        v212 = v229;
        v207 = v224;
        v208 = v225;
        sub_1D5EE5AF8(&v192, &v180);
        v75 = sub_1D5EEFD88(&v207, &v180);
        sub_1D5E3AAD0(&v180, &unk_1EDF34F60, &type metadata for FeedTag);
        sub_1D5EE5B54(&v192);
        goto LABEL_36;
      case 8u:
        v80 = v157;
        sub_1D5D654FC(v67, v157, type metadata accessor for FeedCustomItem);
        v81 = v158;
        sub_1D67F59A4(v80, v158, type metadata accessor for FeedCustomItem);
        v83 = v150;
        v82 = v151;
        (*(v150 + 56))(v81, 0, 1, v151);
        v84 = v154;
        sub_1D67F5A0C(v81, v154, qword_1EDF39CF0, type metadata accessor for FeedCustomItem);
        if ((*(v83 + 48))(v84, 1, v82) == 1)
        {
          sub_1D67F5948(v84, qword_1EDF39CF0, type metadata accessor for FeedCustomItem);
          v75 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
        }

        else
        {
          v136 = v143;
          sub_1D5D654FC(v84, v143, type metadata accessor for FeedCustomItem);
          v213 = v230;
          v214 = v231;
          v215 = v232;
          *&v216 = v233;
          v209 = v226;
          v210 = v227;
          v211 = v228;
          v212 = v229;
          v207 = v224;
          v208 = v225;
          v75 = sub_1D6FB9334(&v207, v136);
          sub_1D5C0ADE0(v136, type metadata accessor for FeedCustomItem);
        }

        sub_1D67F5948(v81, qword_1EDF39CF0, type metadata accessor for FeedCustomItem);
        v95 = type metadata accessor for FeedCustomItem;
        goto LABEL_34;
      case 0xCu:
        v80 = v162;
        sub_1D5D654FC(v67, v162, type metadata accessor for FeedRecipe);
        v213 = v230;
        v214 = v231;
        v215 = v232;
        *&v216 = v233;
        v209 = v226;
        v210 = v227;
        v211 = v228;
        v212 = v229;
        v207 = v224;
        v208 = v225;
        v94 = v164;
        sub_1D67F59A4(v80, v164, type metadata accessor for FeedRecipe);
        (*(v160 + 56))(v94, 0, 1, v161);
        v75 = sub_1D6C9EA0C(&v207, v94);
        sub_1D67F5948(v94, qword_1EDF34D20, type metadata accessor for FeedRecipe);
        v95 = type metadata accessor for FeedRecipe;
        goto LABEL_34;
      case 0xDu:
        v126 = *v67;
        v127 = *(v67 + 1);
        v129 = *(v67 + 2);
        v128 = *(v67 + 3);
        v130 = v67[32];
        v213 = v230;
        v214 = v231;
        v215 = v232;
        *&v216 = v233;
        v209 = v226;
        v210 = v227;
        v211 = v228;
        v212 = v229;
        v207 = v224;
        v208 = v225;
        *&v192 = v126;
        *(&v192 + 1) = v127;
        *&v193 = v129;
        *(&v193 + 1) = v128;
        LOBYTE(v194) = v130;
        v75 = sub_1D6B19314(&v207, &v192);
        swift_unknownObjectRelease();

        goto LABEL_36;
      case 0xEu:
        v88 = *(v67 + 11);
        v217 = *(v67 + 10);
        v218 = v88;
        v219 = *(v67 + 12);
        v89 = *(v67 + 7);
        v213 = *(v67 + 6);
        v214 = v89;
        v90 = *(v67 + 9);
        v215 = *(v67 + 8);
        v216 = v90;
        v91 = *(v67 + 3);
        v209 = *(v67 + 2);
        v210 = v91;
        v92 = *(v67 + 5);
        v211 = *(v67 + 4);
        v212 = v92;
        v93 = *(v67 + 1);
        v207 = *v67;
        v208 = v93;
        sub_1D5F2DEAC(&v207, &v192);
        sub_1D5E3A490(&v192, &v167, &qword_1EDF12E30, &type metadata for FeedPuzzle);
        if (v170)
        {
          v189 = v177;
          v190 = v178;
          v191 = v179;
          v186 = v173;
          v187[0] = v174;
          v187[1] = v175;
          v188 = v176;
          v182 = v169;
          v183 = v170;
          v184 = v171;
          v185 = v172;
          v180 = v167;
          v181 = v168;
          v173 = v230;
          v174 = v231;
          v175 = v232;
          *&v176 = v233;
          v169 = v226;
          v170 = v227;
          v171 = v228;
          v172 = v229;
          v167 = v224;
          v168 = v225;
          v75 = sub_1D69CADF0(&v167, &v180);
          sub_1D5F2DF58(&v180);
        }

        else
        {
          sub_1D5E3AAD0(&v167, &qword_1EDF12E30, &type metadata for FeedPuzzle);
          v75 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
        }

        sub_1D5E3AAD0(&v192, &qword_1EDF12E30, &type metadata for FeedPuzzle);
        sub_1D5F2DF58(&v207);
        goto LABEL_36;
      case 0xFu:
        v131 = *(v67 + 1);
        v192 = *v67;
        v193 = v131;
        v132 = *(v67 + 3);
        v134 = *v67;
        v133 = *(v67 + 1);
        v194 = *(v67 + 2);
        v195 = v132;
        v213 = v230;
        v214 = v231;
        v215 = v232;
        v209 = v226;
        v210 = v227;
        v211 = v228;
        v212 = v229;
        v207 = v224;
        v208 = v225;
        *&v216 = v233;
        v180 = v134;
        v181 = v133;
        v135 = *(v67 + 3);
        v182 = v194;
        v183 = v135;
        v75 = sub_1D69ABAE8(&v207, &v180);
        sub_1D5F2DE58(&v192);
        goto LABEL_36;
      case 0x10u:
        v80 = v163;
        sub_1D5D654FC(v67, v163, type metadata accessor for FeedPuzzleStatistic);
        v107 = v165;
        sub_1D67F59A4(v80, v165, type metadata accessor for FeedPuzzleStatistic);
        v109 = v155;
        v108 = v156;
        (*(v155 + 56))(v107, 0, 1, v156);
        v110 = v159;
        sub_1D67F5A0C(v107, v159, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic);
        if ((*(v109 + 48))(v110, 1, v108) == 1)
        {
          sub_1D67F5948(v110, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic);
          v75 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
        }

        else
        {
          v140 = v144;
          sub_1D5D654FC(v110, v144, type metadata accessor for FeedPuzzleStatistic);
          v213 = v230;
          v214 = v231;
          v215 = v232;
          *&v216 = v233;
          v209 = v226;
          v210 = v227;
          v211 = v228;
          v212 = v229;
          v207 = v224;
          v208 = v225;
          v75 = sub_1D6A62CCC(&v207, v140);
          sub_1D5C0ADE0(v140, type metadata accessor for FeedPuzzleStatistic);
        }

        sub_1D67F5948(v107, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic);
        v95 = type metadata accessor for FeedPuzzleStatistic;
LABEL_34:
        v138 = v95;
        v139 = v80;
LABEL_35:
        sub_1D5C0ADE0(v139, v138);
        goto LABEL_36;
      case 0x11u:
        v111 = *(v67 + 13);
        v112 = *(v67 + 11);
        v219 = *(v67 + 12);
        v220 = v111;
        v113 = *(v67 + 13);
        v221 = *(v67 + 14);
        v114 = *(v67 + 9);
        v115 = *(v67 + 7);
        v215 = *(v67 + 8);
        v216 = v114;
        v116 = *(v67 + 9);
        v117 = *(v67 + 11);
        v217 = *(v67 + 10);
        v218 = v117;
        v118 = *(v67 + 5);
        v119 = *(v67 + 3);
        v211 = *(v67 + 4);
        v212 = v118;
        v120 = *(v67 + 5);
        v121 = *(v67 + 7);
        v213 = *(v67 + 6);
        v214 = v121;
        v122 = *(v67 + 1);
        v207 = *v67;
        v208 = v122;
        v123 = *(v67 + 3);
        v125 = *v67;
        v124 = *(v67 + 1);
        v209 = *(v67 + 2);
        v210 = v123;
        v186 = v230;
        v187[0] = v231;
        v187[1] = v232;
        v182 = v226;
        v183 = v227;
        v184 = v228;
        v185 = v229;
        v180 = v224;
        v181 = v225;
        v203 = v219;
        v204 = v113;
        v205 = *(v67 + 14);
        v199[1] = v215;
        v200 = v116;
        v201 = v217;
        v202 = v112;
        v196 = v211;
        v197 = v120;
        v198 = v213;
        v199[0] = v115;
        v192 = v125;
        v193 = v124;
        v222 = *(v67 + 30);
        *&v188 = v233;
        v206 = *(v67 + 30);
        v194 = v209;
        v195 = v119;
        v75 = sub_1D6A4FE30(&v180, &v192);
        sub_1D5F2DFAC(&v207);
        goto LABEL_36;
      case 0x12u:
        goto LABEL_9;
      default:
        sub_1D5C0ADE0(v67, type metadata accessor for FeedItem);
LABEL_9:
        v75 = sub_1D7073500(MEMORY[0x1E69E7CC0]);
LABEL_36:
        __swift_destroy_boxed_opaque_existential_1(v223);
        result = v75;
        break;
    }
  }

  else
  {
    sub_1D62E3214(&v207);
    return sub_1D7073500(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

void *sub_1D67F5654(__int128 *a1, uint64_t a2)
{
  v2 = a1[7];
  v34 = a1[6];
  v35 = v2;
  v36 = a1[8];
  v37 = *(a1 + 18);
  v3 = a1[3];
  v30 = a1[2];
  v31 = v3;
  v4 = a1[5];
  v32 = a1[4];
  v33 = v4;
  v5 = a1[1];
  v28 = *a1;
  v29 = v5;
  sub_1D5E3A490(a2, &v15, &qword_1EC890C20, &type metadata for FormatInspectionFeedItem);
  if (*(&v16 + 1))
  {
    v25 = v17;
    v26 = v18;
    *v27 = *v19;
    *&v27[9] = *&v19[9];
    v24[0] = v15;
    v24[1] = v16;
    sub_1D5EF032C(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7270C10;
    v20 = v34;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v17 = v30;
    v18 = v31;
    *v19 = v32;
    *&v19[16] = v33;
    v15 = v28;
    v16 = v29;
    v11 = *(&v25 + 1);
    v12 = v26;
    v13 = *v27;
    v14 = *&v27[16];
    sub_1D67F5880(*(&v25 + 1), v26);
    v7 = sub_1D6724C64(&v15, &v11);
    sub_1D67F58E4(v11, v12);
    *(inited + 56) = &type metadata for FormatInspection;
    *(inited + 64) = &off_1F51E3FD0;
    *(inited + 32) = v7;
    v20 = v34;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v17 = v30;
    v18 = v31;
    *v19 = v32;
    *&v19[16] = v33;
    v15 = v28;
    v16 = v29;
    sub_1D5B68374(v24, &v11);
    v8 = sub_1D67F4238(&v15, &v11);
    sub_1D62E3214(&v11);
    *(inited + 96) = &type metadata for FormatInspection;
    *(inited + 104) = &off_1F51E3FD0;
    *(inited + 72) = v8;
    v9 = sub_1D7073500(inited);
    swift_setDeallocating();
    sub_1D5BFB8A8(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
    swift_arrayDestroy();
    sub_1D6725874(v24);
    return v9;
  }

  else
  {
    sub_1D5E3AAD0(&v15, &qword_1EC890C20, &type metadata for FormatInspectionFeedItem);
    return sub_1D7073500(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1D67F5880(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_1D67F58E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D67F5948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5D50538(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D67F59A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67F5A0C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5D50538(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B13ItemAuxiliaryVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D67F5AB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1D67F5AFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1D67F5B74(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[4] == a2[4])
  {
    return a1[3] == a2[3];
  }

  return 0;
}

double sub_1D67F5BB8@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*v1 == 0.0 && v1[1] == 0.0 && v1[2] == 1.0 && v1[3] == 0.0 && v1[4] == 0.0)
  {
    m34 = *(MEMORY[0x1E69792E8] + 88);
    v5 = *(MEMORY[0x1E69792E8] + 48);
    v27 = *(MEMORY[0x1E69792E8] + 32);
    v28 = v5;
    v29 = *(MEMORY[0x1E69792E8] + 64);
    m33 = *(MEMORY[0x1E69792E8] + 80);
    v6 = *(MEMORY[0x1E69792E8] + 16);
    v25 = *MEMORY[0x1E69792E8];
    v26 = v6;
    v7 = *(MEMORY[0x1E69792E8] + 96);
    v8 = *(MEMORY[0x1E69792E8] + 112);
  }

  else
  {
    v9 = *(MEMORY[0x1E69792E8] + 48);
    *&v22.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v22.m23 = v9;
    *&v22.m31 = *(MEMORY[0x1E69792E8] + 64);
    v10 = *(MEMORY[0x1E69792E8] + 80);
    v11 = *(MEMORY[0x1E69792E8] + 16);
    *&v22.m11 = *MEMORY[0x1E69792E8];
    *&v22.m13 = v11;
    v12 = *(MEMORY[0x1E69792E8] + 112);
    *&v22.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v22.m43 = v12;
    v22.m33 = v10;
    v22.m34 = -0.001;
    CATransform3DRotate(&v21, &v22, v3 * 3.14159265 / 180.0, 1.0, 0.0, 0.0);
    v27 = *&v21.m21;
    v28 = *&v21.m23;
    v29 = *&v21.m31;
    m33 = v21.m33;
    v25 = *&v21.m11;
    v26 = *&v21.m13;
    v23 = *&v21.m41;
    v24 = *&v21.m43;
    v13 = v1[1] * 3.14159265;
    *&v22.m21 = *&v21.m21;
    *&v22.m23 = *&v21.m23;
    *&v22.m31 = *&v21.m31;
    v22.m33 = v21.m33;
    *&v22.m11 = *&v21.m11;
    *&v22.m13 = *&v21.m13;
    *&v22.m41 = *&v21.m41;
    *&v22.m43 = *&v21.m43;
    v22.m34 = v21.m34;
    CATransform3DRotate(&v21, &v22, v13 / 180.0, 0.0, 1.0, 0.0);
    v27 = *&v21.m21;
    v28 = *&v21.m23;
    v29 = *&v21.m31;
    m33 = v21.m33;
    v25 = *&v21.m11;
    v26 = *&v21.m13;
    v23 = *&v21.m41;
    v24 = *&v21.m43;
    *&v22.m21 = *&v21.m21;
    *&v22.m23 = *&v21.m23;
    *&v22.m31 = *&v21.m31;
    v22.m33 = v21.m33;
    *&v22.m11 = *&v21.m11;
    *&v22.m13 = *&v21.m13;
    *&v22.m41 = *&v21.m41;
    *&v22.m43 = *&v21.m43;
    v14 = v1[2];
    v22.m34 = v21.m34;
    CATransform3DScale(&v21, &v22, v14, v14, v14);
    v27 = *&v21.m21;
    v28 = *&v21.m23;
    v29 = *&v21.m31;
    m33 = v21.m33;
    v25 = *&v21.m11;
    v26 = *&v21.m13;
    v23 = *&v21.m41;
    v24 = *&v21.m43;
    *&v22.m21 = *&v21.m21;
    *&v22.m23 = *&v21.m23;
    *&v22.m31 = *&v21.m31;
    v22.m33 = v21.m33;
    *&v22.m11 = *&v21.m11;
    *&v22.m13 = *&v21.m13;
    *&v22.m41 = *&v21.m41;
    *&v22.m43 = *&v21.m43;
    v15 = v1[3];
    v16 = v1[4];
    v22.m34 = v21.m34;
    CATransform3DTranslate(&v21, &v22, v15, v16, 0.0);
    v27 = *&v21.m21;
    v28 = *&v21.m23;
    v29 = *&v21.m31;
    m33 = v21.m33;
    v25 = *&v21.m11;
    v26 = *&v21.m13;
    m34 = v21.m34;
    v7 = *&v21.m41;
    v8 = *&v21.m43;
  }

  v23 = v7;
  v24 = v8;
  v17 = v28;
  *(a1 + 32) = v27;
  *(a1 + 48) = v17;
  *(a1 + 64) = v29;
  *(a1 + 80) = m33;
  v18 = v26;
  *a1 = v25;
  *(a1 + 16) = v18;
  *(a1 + 88) = m34;
  result = *&v23;
  v20 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v20;
  return result;
}

void sub_1D67F5E74(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *v2;
  v15 = v14 >> 6;
  if (v14 >> 6 > 1)
  {
    if (v15 == 2)
    {
      sub_1D6B7BE60(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v9);
      if (!v3)
      {
        sub_1D68639B8(v9, a2);
        sub_1D67527C0(v9, type metadata accessor for FeedWebEmbed);
      }
    }

    else
    {
      sub_1D6B7BCEC(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v20);
      if (!v3)
      {
        sub_1D62E4BF0(&v20, a2);
        sub_1D5F2DF58(&v20);
      }
    }
  }

  else if (v15)
  {
    sub_1D6B7C1C8(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v20);
    if (!v3)
    {
      v18[6] = v26;
      v19[0] = v27[0];
      *(v19 + 9) = *(v27 + 9);
      v18[2] = v22;
      v18[3] = v23;
      v18[4] = v24;
      v18[5] = v25;
      v18[0] = v20;
      v18[1] = v21;
      v16[6] = v26;
      v17[0] = v27[0];
      *(v17 + 9) = *(v27 + 9);
      v16[2] = v22;
      v16[3] = v23;
      v16[4] = v24;
      v16[5] = v25;
      v16[0] = v20;
      v16[1] = v21;
      sub_1D7054A24(v16, a2);
      sub_1D5ECF320(v18);
    }
  }

  else
  {
    sub_1D6B7C374(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v13);
    if (!v3)
    {
      LOBYTE(v20) = v14 & 1;
      sub_1D70E76E8(v13, a2);
      sub_1D67527C0(v13, type metadata accessor for FeedHeadline);
    }
  }
}

BOOL static FormatButtonNodeBinding.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v4 == 2)
    {
      if ((v3 & 0xC0) == 0x80)
      {
        return 1;
      }
    }

    else if (v3 > 0xBF)
    {
      return 1;
    }
  }

  else if (v4)
  {
    if ((v3 & 0xC0) == 0x40)
    {
      return 1;
    }
  }

  else if (v3 <= 0x3F)
  {
    return ((v3 ^ v2) & 1) == 0;
  }

  return 0;
}

unint64_t sub_1D67F6178(uint64_t a1)
{
  result = sub_1D67F61A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67F61A0()
{
  result = qword_1EC88C078;
  if (!qword_1EC88C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C078);
  }

  return result;
}

unint64_t sub_1D67F61F4(void *a1)
{
  a1[1] = sub_1D667D084();
  a1[2] = sub_1D6700A14();
  result = sub_1D67F622C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67F622C()
{
  result = qword_1EC88C080;
  if (!qword_1EC88C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C080);
  }

  return result;
}

BOOL sub_1D67F62B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  v5 = (v3 & 0xC0) == 128;
  if (v2 >> 6 != 2)
  {
    v5 = v3 > 0xBF;
  }

  v6 = ((v3 ^ v2) & 1) == 0;
  if (v3 > 0x3F)
  {
    v6 = 0;
  }

  if (v4)
  {
    v6 = (v3 & 0xC0) == 64;
  }

  if (v4 <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t getEnumTagSinglePayload for FormatButtonNodeBinding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FormatButtonNodeBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FormatHeadlineBinding.ActivityItemsConfiguration.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D67F6500()
{
  result = qword_1EC88C088;
  if (!qword_1EC88C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C088);
  }

  return result;
}

unint64_t sub_1D67F6554(uint64_t a1)
{
  result = sub_1D67F657C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67F657C()
{
  result = qword_1EC88C090;
  if (!qword_1EC88C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C090);
  }

  return result;
}

unint64_t sub_1D67F65D0(void *a1)
{
  a1[1] = sub_1D6671044();
  a1[2] = sub_1D6701FF8();
  result = sub_1D67F6500();
  a1[3] = result;
  return result;
}

void PuzzleShareData.init(puzzleHistoryItem:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38[-v15];
  if (!a1)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v19 = 0;
    v39 = 1;
    v38[0] = 1;
LABEL_18:
    v35 = 2;
    goto LABEL_19;
  }

  v17 = a1;
  v18 = [v17 completedDate];
  v19 = v18 != 0;
  if (v18)
  {
    v20 = v18;
    sub_1D72588BC();

    (*(v5 + 32))(v16, v8, v4);
    v21 = *(v5 + 56);
    v21(v16, 0, 1, v4);
  }

  else
  {
    v21 = *(v5 + 56);
    v21(v16, 1, 1, v4);
  }

  _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v16);
  v27 = [v17 completedDate];
  if (v27)
  {
    sub_1D72588BC();

    (*(v5 + 32))(v12, v8, v4);
    v21(v12, 0, 1, v4);
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v12);
    v26 = [v17 playDuration];
  }

  else
  {
    v21(v12, 1, 1, v4);
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v12);
    v26 = 0;
  }

  v39 = v27 == 0;
  v28 = [v17 rankID];
  if (v28)
  {
    v29 = v28;
    v25 = sub_1D726207C();
    v24 = v30;
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v31 = [v17 score];
  v32 = v31;
  if (v31)
  {
    v22 = [v31 integerValue];
  }

  else
  {
    v22 = 0;
  }

  v38[0] = v32 == 0;
  v33 = [v17 usedReveal];
  if (!v33)
  {

    v23 = 1;
    goto LABEL_18;
  }

  v34 = v33;
  v35 = [v33 BOOLValue];

  v23 = 1;
LABEL_19:
  v36 = v39;
  v37 = v38[0];
  *a2 = v19;
  *(a2 + 8) = v26;
  *(a2 + 16) = v36;
  *(a2 + 24) = v25;
  *(a2 + 32) = v24;
  *(a2 + 40) = v23;
  *(a2 + 48) = v22;
  *(a2 + 56) = v37;
  *(a2 + 57) = v35;
}

uint64_t PuzzleShareData.rankID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall PuzzleShareData.init(isSolved:solveTime:rankID:puzzlePlayed:score:usedReveal:)(NewsFeed::PuzzleShareData *__return_ptr retstr, Swift::Bool isSolved, Swift::Int_optional solveTime, Swift::String_optional rankID, Swift::Bool puzzlePlayed, Swift::Int_optional score, Swift::Bool_optional usedReveal)
{
  retstr->isSolved = isSolved;
  *(&retstr->solveTime.value + 7) = solveTime.value;
  LOBYTE(retstr->rankID.value._countAndFlagsBits) = solveTime.is_nil;
  *&retstr->rankID.value._object = rankID;
  HIBYTE(retstr->score.value) = puzzlePlayed;
  *&retstr[1].isSolved = score.value;
  HIBYTE(retstr[1].solveTime.value) = score.is_nil;
  retstr[1].solveTime.is_nil = usedReveal.value;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D67F6AA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 58))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D67F6B00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebugFormatWorkspaceDevice(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DebugFormatWorkspaceDevice(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1D67F6CC8(uint64_t a1@<X1>, char a2@<W2>, char a3@<W3>, uint64_t a4@<X4>, unsigned int a5@<W5>, __int16 a6@<W6>, uint64_t a7@<X8>)
{
  v7 = a5;
  v10 = a6;
  if (a6 < 0x1Bu)
  {
    v11 = 0;
    v12 = 1;
LABEL_3:
    v23 = v12;
    goto LABEL_4;
  }

  if (a6 - 27 < 6)
  {
    v11 = 0;
    v12 = 2;
    goto LABEL_3;
  }

  v23 = 0;
  v11 = 1;
LABEL_4:
  v24 = HIBYTE(a6);
  if (a6 >= 0x1Bu)
  {
    if (a6 - 27 >= 6)
    {
      if (a6 == 33)
      {
        v13 = 0;
        v22 = 5;
      }

      else
      {
        v22 = 0;
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
    v13 = 0;
  }

  v14 = a5;
  if (a5 != 2)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20 = a3;

    sub_1D725972C();

    a3 = v20;
    a1 = v25;
    if (v14 == 2)
    {
      goto LABEL_9;
    }

LABEL_12:
    v18 = (v7 >> 8) & 1;
    v17 = a4;
    goto LABEL_13;
  }

  v19 = a1;

  sub_1D725972C();

  a1 = v19;
  a3 = v25;
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v14 != 2)
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = a3;
  v16 = a1;

  sub_1D725972C();

  v17 = v25;

  sub_1D725972C();

  LOBYTE(v7) = v25;

  sub_1D725972C();

  a1 = v16;
  a3 = v15;
  LOBYTE(v18) = v25;
LABEL_13:
  *a7 = v23;
  *(a7 + 8) = v11;
  *(a7 + 16) = 2 * (v10 < 0x21);
  *(a7 + 24) = v10 > 0x20;
  *(a7 + 32) = v22;
  *(a7 + 40) = v13;
  *(a7 + 41) = a3;
  *(a7 + 48) = a1;
  *(a7 + 56) = v17;
  *(a7 + 64) = v7 & 1;
  *(a7 + 65) = v18;
  *(a7 + 66) = v24 & 1;
}

uint64_t sub_1D67F6F20(__int16 a1)
{
  v1 = a1;
  if (a1 < 0x1Bu)
  {
    return 0x672E656E6F687069;
  }

  if (a1 - 27 < 6)
  {
    if ((a1 & 0x100) != 0)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0x6E65672E64617069;
    }
  }

  result = 0x2E6B6F6F6263616DLL;
  if (v1 == 33)
  {
    return result;
  }

  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        return 0x79616C70726163;
      case 5:
        return 0x2E6B6F6F6263616DLL;
      case 6:
        return 0x72706E6F69736976;
    }

    return 1684107369;
  }

  if (!v5)
  {
    return 0x672E656E6F687069;
  }

  if (v5 != 1)
  {
    if (v5 == 2)
    {
      return 30324;
    }

    return 1684107369;
  }

  if ((a1 & 0x100) != 0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6E65672E64617069;
  }
}

uint64_t sub_1D67F711C(void *a1, __int16 a2)
{
  sub_1D67F7E5C(0, &qword_1EC88C0C0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67F7D60();
  sub_1D7264B5C();
  v12[15] = a2;
  v12[14] = 0;
  sub_1D67F7EC0();
  sub_1D726443C();
  if (!v2)
  {
    v12[13] = HIBYTE(a2) & 1;
    v12[12] = 1;
    sub_1D67F7F14();
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D67F72BC()
{
  if (*v0)
  {
    return 0x7461746E6569726FLL;
  }

  else
  {
    return 0x656369766564;
  }
}

void sub_1D67F72FC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D67F73D8(uint64_t a1)
{
  v2 = sub_1D67F7D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67F7414(uint64_t a1)
{
  v2 = sub_1D67F7D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D67F7450@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D67F7B74(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1D67F7484(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1D67F711C(a1, v2 | *v1);
}

uint64_t sub_1D67F74B4(unsigned __int8 *a1, unsigned __int8 *a2, __n128 a3)
{
  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (a2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1D67F7A4C(v3 | *a1, v4 | *a2);
}

uint64_t sub_1D67F74E4()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6E23ADC(v1);
  sub_1D72621EC();

  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D67F75A0(uint64_t a1)
{
  sub_1D6E23ADC(*v1);
  sub_1D72621EC();

  sub_1D72621EC();

  return result;
}

uint64_t sub_1D67F764C(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D6E23ADC(v2);
  sub_1D72621EC();

  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D67F7704(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 1);
  v4 = sub_1D6E236D4(*v1);
  v6 = v3 == 0;
  if (v3)
  {
    v7 = 0x70616373646E614CLL;
  }

  else
  {
    v7 = 0x7469617274726F50;
  }

  v9 = v4;
  v10 = v5;
  if (v6)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  MEMORY[0x1DA6F9910](v7, v8);

  *a1 = v9;
  a1[1] = v10;
}

unint64_t sub_1D67F77BC()
{
  result = qword_1EC88C098;
  if (!qword_1EC88C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C098);
  }

  return result;
}

void sub_1D67F7810()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v3 = byte_1F50F7BE8[v0 + 32];
    if (v3 > 0x12)
    {
      if (byte_1F50F7BE8[v0 + 32] < 0x1Bu)
      {
        goto LABEL_12;
      }

      if (v3 - 27 >= 6)
      {
        sub_1D67F7F68();
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1D7273AE0;
        *(v5 + 32) = v3 == 33 ? 33 : 34;
      }

      else
      {
        sub_1D67F7F68();
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1D7270C10;
        *(v5 + 32) = v3;
        *(v5 + 33) = 0;
        *(v5 + 34) = v3;
        *(v5 + 35) = 1;
      }
    }

    else
    {
      v4 = v3 - 4 >= 0xF && v3 >= 3;
      v5 = v1;
      if (v4)
      {
LABEL_12:
        sub_1D67F7F68();
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1D7273AE0;
        *(v5 + 32) = v3;
        *(v5 + 33) = 0;
      }
    }

    v6 = *(v5 + 16);
    v7 = *(v2 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v2 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v2 = sub_1D6991494(isUniquelyReferenced_nonNull_native, v10, 1, v2);
      if (*(v5 + 16))
      {
LABEL_24:
        v11 = *(v2 + 2);
        if ((*(v2 + 3) >> 1) - v11 < v6)
        {
          goto LABEL_34;
        }

        memcpy(&v2[2 * v11 + 32], (v5 + 32), 2 * v6);

        if (v6)
        {
          v12 = *(v2 + 2);
          v13 = __OFADD__(v12, v6);
          v14 = v12 + v6;
          if (v13)
          {
            goto LABEL_35;
          }

          *(v2 + 2) = v14;
        }

        goto LABEL_3;
      }
    }

    if (v6)
    {
      goto LABEL_33;
    }

LABEL_3:
    if (++v0 == 35)
    {
      qword_1EC9BA910 = v2;
      return;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1D67F7A4C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = sub_1D6E23ADC(a1);
  v6 = v5;
  if (v4 == sub_1D6E23ADC(v2) && v6 == v7)
  {
  }

  else
  {
    v8 = sub_1D72646CC();

    v9 = 0;
    if ((v8 & 1) == 0)
    {
      return v9 & 1;
    }
  }

  if ((v3 & 0x100) != 0)
  {
    v10 = 0x70616373646E616CLL;
  }

  else
  {
    v10 = 0x7469617274726F70;
  }

  if ((v3 & 0x100) != 0)
  {
    v11 = 0xE900000000000065;
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  if ((v2 & 0x100) != 0)
  {
    v12 = 0x70616373646E616CLL;
  }

  else
  {
    v12 = 0x7469617274726F70;
  }

  if ((v2 & 0x100) != 0)
  {
    v13 = 0xE900000000000065;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D67F7B74(void *a1)
{
  sub_1D67F7E5C(0, &qword_1EC88C0A0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67F7D60();
  sub_1D7264B0C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13[14] = 0;
  sub_1D67F7DB4();
  sub_1D726431C();
  v9 = v13[15];
  v13[12] = 1;
  sub_1D67F7E08();
  sub_1D726431C();
  (*(v5 + 8))(v8, v4);
  v11 = v13[13];
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v11)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 | v9;
}

unint64_t sub_1D67F7D60()
{
  result = qword_1EC88C0A8;
  if (!qword_1EC88C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C0A8);
  }

  return result;
}

unint64_t sub_1D67F7DB4()
{
  result = qword_1EC88C0B0;
  if (!qword_1EC88C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C0B0);
  }

  return result;
}

unint64_t sub_1D67F7E08()
{
  result = qword_1EC88C0B8;
  if (!qword_1EC88C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C0B8);
  }

  return result;
}

void sub_1D67F7E5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D67F7D60();
    v7 = a3(a1, &type metadata for DebugFormatWorkspaceDevice.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D67F7EC0()
{
  result = qword_1EC88C0C8;
  if (!qword_1EC88C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C0C8);
  }

  return result;
}

unint64_t sub_1D67F7F14()
{
  result = qword_1EC88C0D0;
  if (!qword_1EC88C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C0D0);
  }

  return result;
}

void sub_1D67F7F68()
{
  if (!qword_1EC88EEB0)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88EEB0);
    }
  }
}

unint64_t sub_1D67F7FCC()
{
  result = qword_1EC88C0D8;
  if (!qword_1EC88C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C0D8);
  }

  return result;
}

unint64_t sub_1D67F8024()
{
  result = qword_1EC88C0E0;
  if (!qword_1EC88C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C0E0);
  }

  return result;
}

unint64_t sub_1D67F807C()
{
  result = qword_1EC88C0E8;
  if (!qword_1EC88C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C0E8);
  }

  return result;
}

double sub_1D67F813C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

void sub_1D67F8238(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x776F6C6C6F66;
  v5 = 0xE600000000000000;
  v6 = 0x65726F6E6769;
  v7 = 0xE800000000000000;
  v8 = 0x657461676976616ELL;
  if (v2 != 4)
  {
    v8 = 0x6553657069636572;
    v7 = 0xEC00000068637261;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6B636F6C62;
  if (v2 != 1)
  {
    v10 = 0x6974634165726F6DLL;
    v9 = 0xEB00000000736E6FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1D67F83A0@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = 0x776F6C6C6F66;
  v7 = 0xE600000000000000;
  v8 = 0x65726F6E6769;
  v9 = 0xE800000000000000;
  v10 = 0x657461676976616ELL;
  if (v5 != 4)
  {
    v10 = 0x6553657069636572;
    v9 = 0xEC00000068637261;
  }

  if (v5 != 3)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0xE500000000000000;
  v12 = 0x6B636F6C62;
  if (v5 != 1)
  {
    v12 = 0x6974634165726F6DLL;
    v11 = 0xEB00000000736E6FLL;
  }

  if (*a1)
  {
    v6 = v12;
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (*a1 <= 2u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  if (*a1 <= 2u)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  v15 = v4;
  sub_1D5C73AB0(v13, v14);
  if (v19)
  {
    sub_1D5BF4D9C();
    v57 = a3;
    v20 = sub_1D7263A0C();
    v22 = v21;

    v23 = sub_1D5FD24A4(1uLL, v13, v14);
    v25 = v24;
    v27 = v26;
    v28 = a2;
    v30 = v29;

    v31 = v25;
    v15 = v4;
    v32 = MEMORY[0x1DA6F97E0](v23, v31, v27, v30);
    v34 = v33;
    a2 = v28;

    v58 = v20;

    MEMORY[0x1DA6F9910](v32, v34);
    a3 = v57;

    v13 = v58;
    v14 = v22;
  }

  if (v5 > 2)
  {
    v35 = a4;
    if (v5 == 3)
    {
      if (qword_1EDF16D48 != -1)
      {
        swift_once();
      }

      type metadata accessor for FormatCommandAction();
      swift_allocObject();
      swift_unknownObjectRetain();

      v37 = sub_1D68A90AC(v42, a2);
      goto LABEL_31;
    }

    if (v5 == 4)
    {
      v38 = MEMORY[0x1E69E7CC0];
      v39 = a2;
      v40 = a3;
      v41 = 2;
    }

    else
    {
      v39 = a2;
      v40 = a3;
      v38 = 2;
      v41 = 3;
    }
  }

  else
  {
    v35 = a4;
    if (v5)
    {
      if (v5 != 1)
      {
        MEMORY[0x1DA6F9910](0x6365727065442820, 0xED00002964657461);
        v48 = v14;
        v49 = type metadata accessor for FormatInspectionItem(0);
        v50 = (a4 + *(v49 + 24));
        *v50 = 0;
        v50[1] = 0xE000000000000000;
        v51 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
        *a4 = v13;
        a4[1] = v48;
        a4[2] = 0;
        a4[3] = 0;
        v47 = *(v49 + 28);
        goto LABEL_33;
      }

      if (qword_1EDF3AB68 != -1)
      {
        swift_once();
      }

      v36 = qword_1EDF3AB70;
      type metadata accessor for FormatCommandAction();
      swift_allocObject();

      swift_unknownObjectRetain();
      v37 = sub_1D68A8EEC(v36, a2);
LABEL_31:
      v43 = v37;

      v44 = type metadata accessor for FormatInspectionItem(0);
      v45 = *(v44 + 24);
      *(v35 + v45) = v43;
      v46 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v46 - 8) + 56))(v35 + v45, 0, 1, v46);
      *v35 = v13;
      v35[1] = v14;
      v35[2] = 0;
      v35[3] = 0;
      v47 = *(v44 + 28);
LABEL_33:
      v52 = v35 + v47;
      *v52 = 0;
      *(v52 + 1) = 0;
      v52[16] = -1;
      goto LABEL_39;
    }

    v39 = a2;
    v40 = a3;
    v38 = 0;
    v41 = 0;
  }

  v53 = sub_1D6897724(v39, v40, v38, 0, v41, v18);
  if (v15)
  {

    v54 = 0;
  }

  else
  {
    v54 = v53;
  }

  sub_1D7125900(v13, v14, v54, v35);
LABEL_39:
  v55 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v55 - 8) + 56))(v35, 0, 1, v55);
}

uint64_t FormatTagMoreActions.title.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D5CFCFAC(v2);
}

void *FormatTagMoreActions.init(title:actions:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

void FormatTagMoreActions.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D67F9E4C(0, &qword_1EC88C0F0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67F9DA4();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = 0;
    sub_1D5C6F1D8();
    sub_1D726427C();
    v11 = v16;
    sub_1D67FA4BC(0, &qword_1EDF04E58, &type metadata for FormatTagMoreActions.Action, MEMORY[0x1E69E62F8]);
    v15 = 1;
    sub_1D67F9EB0(&qword_1EDF04E40, sub_1D67F9DF8, MEMORY[0x1E69E6330]);
    sub_1D726427C();
    v12 = v16;
    if (!v16)
    {
      v12 = &unk_1F5118948;
    }

    v14 = v12;
    v16 = v12;
    sub_1D67FA464(&qword_1EDF04E48, &qword_1EDF04E58, &type metadata for FormatTagMoreActions.Action, MEMORY[0x1E69E6328]);
    v13 = sub_1D72623CC();
    (*(v7 + 8))(v10, v6);

    *a2 = v11;
    a2[1] = v13;
    sub_1D5CFCFAC(v11);

    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D5C84FF4(v11);
  }
}

_BYTE *sub_1D67F8C48@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x776F6C6C6F66;
  if (*result)
  {
    v2 = 0x6B636F6C62;
  }

  v3 = 0xE600000000000000;
  if (*result)
  {
    v3 = 0xE500000000000000;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t FormatTagMoreActions.Action.rawValue.getter()
{
  if (*v0)
  {
    return 0x6B636F6C62;
  }

  else
  {
    return 0x776F6C6C6F66;
  }
}

uint64_t FormatTagMoreActions.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67F9E4C(0, &qword_1EC88C100, MEMORY[0x1E69E6F58]);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - v9;
  v11 = *v1;
  v24 = v1[1];
  v25 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67F9DA4();
  sub_1D7264B5C();
  v12 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D5B58478(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 64);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v16 = sub_1D725BD1C();
  v17 = __swift_project_value_buffer(v16, qword_1EDFFCD30);
  v18 = *(*(v16 - 8) + 16);
  v18(v6, v17, v16);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v16, qword_1EDFFCDF8);
  v18(&v6[v14], v19, v16);
  *&v6[v15] = xmmword_1D72F0D90;
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v20 = v27;
  sub_1D5D2BEC4(v6, sub_1D5B4AA6C, 0, v12, v26);
  sub_1D6079974(v6);
  if (v20)
  {
    return (*(v28 + 8))(v10, v29);
  }

  v31 = v25;
  v30 = 0;
  sub_1D5CFCFAC(v25);
  sub_1D5C76E3C();
  v22 = v29;
  sub_1D72643BC();
  sub_1D5C84FF4(v31);
  v31 = v24;
  v30 = 1;
  sub_1D67FA4BC(0, &qword_1EDF04E58, &type metadata for FormatTagMoreActions.Action, MEMORY[0x1E69E62F8]);
  sub_1D67F9EB0(&qword_1EDF04E50, sub_1D67F9F40, MEMORY[0x1E69E6300]);
  sub_1D726443C();
  return (*(v28 + 8))(v10, v22);
}

uint64_t sub_1D67F9090(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736E6F69746361;
  }

  else
  {
    v3 = 0x656C746974;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x736E6F69746361;
  }

  else
  {
    v5 = 0x656C746974;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D67F9134()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D67F91B4(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D67F9220(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D67F92A8(uint64_t *a1@<X8>)
{
  v2 = 0x656C746974;
  if (*v1)
  {
    v2 = 0x736E6F69746361;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D67F92E4()
{
  if (*v0)
  {
    return 0x736E6F69746361;
  }

  else
  {
    return 0x656C746974;
  }
}

void sub_1D67F931C(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D67F9380(uint64_t a1)
{
  v2 = sub_1D67F9DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67F93BC(uint64_t a1)
{
  v2 = sub_1D67F9DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

NewsFeed::FormatTagMoreActions::Action_optional __swiftcall FormatTagMoreActions.Action.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D67F945C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B636F6C62;
  }

  else
  {
    v3 = 0x776F6C6C6F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B636F6C62;
  }

  else
  {
    v5 = 0x776F6C6C6F66;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D67F94FC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D67F9578(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D67F95E0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D67F9664(uint64_t *a1@<X8>)
{
  v2 = 0x776F6C6C6F66;
  if (*v1)
  {
    v2 = 0x6B636F6C62;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

double sub_1D67F97D8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5EA74B8(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 96);
  v12 = *(a1 + 128);
  v26[7] = *(a1 + 112);
  v26[8] = v12;
  v13 = *(a1 + 48);
  v26[2] = *(a1 + 32);
  v26[3] = v13;
  v14 = *(a1 + 80);
  v26[4] = *(a1 + 64);
  v27 = *(a1 + 144);
  v26[5] = v14;
  v26[6] = v11;
  v15 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v15;
  *&v24[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 6, 0);
  v16 = 0;
  v17 = *&v24[0];
  do
  {
    v23 = byte_1F50F5D48[v16 + 32];
    sub_1D67F83A0(&v23, a2, v26, v10);
    *&v24[0] = v17;
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1D69972A4((v18 > 1), v19 + 1, 1);
      v17 = *&v24[0];
    }

    ++v16;
    *(v17 + 16) = v19 + 1;
    sub_1D5E4F52C(v10, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19);
  }

  while (v16 != 6);
  sub_1D6795150(0x646E616D6D6F43, 0xE700000000000000, 0, 0, v17, v24);

  result = *v24;
  v21 = v24[1];
  *a3 = v24[0];
  *(a3 + 16) = v21;
  *(a3 + 32) = v25;
  return result;
}

void _s8NewsFeed20FormatTagMoreActionsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    v8 = *a1;
    if ((~v5 & 0xF000000000000007) != 0)
    {
      v7 = v5;
      sub_1D5CFCFAC(v2);
      sub_1D5CFCFAC(v5);
      sub_1D5CFCFAC(v2);
      v6 = static FormatTextContent.== infix(_:_:)(&v8, &v7);

      sub_1D5C84FF4(v2);
      if ((v6 & 1) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

    sub_1D5CFCFAC(v2);
    sub_1D5CFCFAC(v5);
    sub_1D5CFCFAC(v2);

LABEL_6:
    sub_1D5C84FF4(v2);
    sub_1D5C84FF4(v5);
    return;
  }

  sub_1D5CFCFAC(*a1);
  sub_1D5CFCFAC(v5);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    goto LABEL_6;
  }

  sub_1D5C84FF4(v2);
LABEL_9:

  sub_1D63609D0(v3, v4);
}

uint64_t _s8NewsFeed16FormatTagBindingV7CommandO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v2 | v3)
      {
        if (!(v2 ^ 1 | v3))
        {
          if (v7 == 3 && v5 == 1 && !v6)
          {
            sub_1D5E1DE10(*a1, v3, 3);
            LOBYTE(v7) = 1;
            sub_1D5E1DE10(1, 0, 3);
            return v7 & 1;
          }

LABEL_18:
          sub_1D5E1DA1C(v5, v6, v7);
          sub_1D5E1DE10(v2, v3, v4);
          sub_1D5E1DE10(v5, v6, v7);
          LOBYTE(v7) = 0;
          return v7 & 1;
        }

        if (v7 != 3 || v5 != 2 || v6)
        {
          goto LABEL_18;
        }

        sub_1D5E1DE10(*a1, v3, 3);
        v12 = 2;
      }

      else
      {
        if (v7 != 3 || (v6 | v5) != 0)
        {
          goto LABEL_18;
        }

        sub_1D5E1DE10(*a1, v3, 3);
        v12 = 0;
      }

      sub_1D5E1DE10(v12, 0, 3);
      LOBYTE(v7) = 1;
      return v7 & 1;
    }

    if (v7 == 2)
    {
      v8 = sub_1D633A250(v2, *a2);
      sub_1D5E1DA1C(v5, v6, 2);
      sub_1D5E1DA1C(v2, v3, 2);
      sub_1D5E1DE10(v2, v3, 2);
      sub_1D5E1DE10(v5, v6, 2);
      return v8 & 1;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (*(a1 + 16))
  {
    if (v7 == 1)
    {
      v14[0] = *a1;
      v14[1] = v3;
      v13[0] = v5;
      v13[1] = v6;
      sub_1D5E1DA1C(v5, v6, 1);
      sub_1D5E1DA1C(v2, v3, 1);
      sub_1D5E1DA1C(v5, v6, 1);
      sub_1D5E1DA1C(v2, v3, 1);
      _s8NewsFeed20FormatTagMoreActionsV2eeoiySbAC_ACtFZ_0(v14, v13);
      LOBYTE(v7) = v10;
      sub_1D5E1DE10(v2, v3, 1);
      sub_1D5E1DE10(v5, v6, 1);
      sub_1D5E1DE10(v5, v6, 1);
      sub_1D5E1DE10(v2, v3, 1);
      return v7 & 1;
    }

    sub_1D5CFCFAC(*a1);
    goto LABEL_17;
  }

  if (*(a2 + 16))
  {
    goto LABEL_18;
  }

  sub_1D5E1DE10(*a1, v3, 0);
  sub_1D5E1DE10(v5, v6, 0);
  v7 = ((v5 ^ v2) & 1) == 0;
  return v7 & 1;
}

unint64_t sub_1D67F9DA4()
{
  result = qword_1EC88C0F8;
  if (!qword_1EC88C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C0F8);
  }

  return result;
}

unint64_t sub_1D67F9DF8()
{
  result = qword_1EDF0ED00;
  if (!qword_1EDF0ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ED00);
  }

  return result;
}

void sub_1D67F9E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D67F9DA4();
    v7 = a3(a1, &type metadata for FormatTagMoreActions.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D67F9EB0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D67FA4BC(255, &qword_1EDF04E58, &type metadata for FormatTagMoreActions.Action, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D67F9F40()
{
  result = qword_1EDF0ED10;
  if (!qword_1EDF0ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ED10);
  }

  return result;
}

unint64_t sub_1D67F9F94(uint64_t a1)
{
  result = sub_1D66BE130();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67F9FFC()
{
  result = qword_1EC88C108;
  if (!qword_1EC88C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C108);
  }

  return result;
}

unint64_t sub_1D67FA050(uint64_t a1)
{
  result = sub_1D67FA078();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67FA078()
{
  result = qword_1EC88C110;
  if (!qword_1EC88C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C110);
  }

  return result;
}

unint64_t sub_1D67FA10C()
{
  result = qword_1EC88C118;
  if (!qword_1EC88C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C118);
  }

  return result;
}

unint64_t sub_1D67FA164()
{
  result = qword_1EC88C120;
  if (!qword_1EC88C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C120);
  }

  return result;
}

unint64_t sub_1D67FA1F8()
{
  result = qword_1EC88C128;
  if (!qword_1EC88C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C128);
  }

  return result;
}

unint64_t sub_1D67FA24C(uint64_t a1)
{
  result = sub_1D67FA274();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67FA274()
{
  result = qword_1EC88C130;
  if (!qword_1EC88C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C130);
  }

  return result;
}

uint64_t sub_1D67FA308(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67FA35C()
{
  result = qword_1EC88C138;
  if (!qword_1EC88C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C138);
  }

  return result;
}

uint64_t sub_1D67FA464(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D67FA4BC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D67FA4BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D67FA510()
{
  result = qword_1EC88C150;
  if (!qword_1EC88C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C150);
  }

  return result;
}

unint64_t sub_1D67FA568()
{
  result = qword_1EC88C158;
  if (!qword_1EC88C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C158);
  }

  return result;
}

unint64_t sub_1D67FA5C0()
{
  result = qword_1EC88C160;
  if (!qword_1EC88C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C160);
  }

  return result;
}

unint64_t sub_1D67FA618()
{
  result = qword_1EC88C168;
  if (!qword_1EC88C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C168);
  }

  return result;
}

unint64_t sub_1D67FA66C()
{
  result = qword_1EDF0ED08;
  if (!qword_1EDF0ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ED08);
  }

  return result;
}

void FeedChannelRecipeClusteringResult.scoredRecipeItems.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = (v1 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = v5[2];
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= v5[3] >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1D698F9BC(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v7)
        {
          goto LABEL_23;
        }

        sub_1D5EC272C(0);
        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = v5[2];
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_24;
          }

          v5[2] = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void static FeedChannelRecipeClusteringResult.- infix(_:_:)(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = MEMORY[0x1EEE9AC00](v5, v5);
  (*(v8 + 16))(&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v9 = sub_1D7262BBC();
  v10 = *(v4 + 16);
  if (v10)
  {
    v40 = a3;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1D6999698(0, v10, 0);
    v11 = 0;
    v42 = v4 + 32;
    v12 = v52;
    v13 = v9 + 56;
    v41 = v10;
    while (1)
    {
      v45 = v12;
      v46 = v11;
      v14 = (v42 + 24 * v11);
      v15 = v14[1];
      v16 = v14[2];
      v17 = *(v15 + 16);
      v44 = *v14;
      swift_unknownObjectRetain();
      swift_bridgeObjectRetain_n();
      v43 = v16;
      v49 = v17;
      if (v17)
      {
        break;
      }

      v47 = MEMORY[0x1E69E7CC0];
LABEL_23:

      v12 = v45;
      v52 = v45;
      v38 = *(v45 + 16);
      v37 = *(v45 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1D6999698((v37 > 1), v38 + 1, 1);
        v12 = v52;
      }

      v11 = v46 + 1;
      *(v12 + 16) = v38 + 1;
      v39 = (v12 + 24 * v38);
      v39[4] = v44;
      v39[5] = v47;
      v39[6] = v43;
      if (v11 == v41)
      {

        a3 = v40;
        goto LABEL_28;
      }
    }

    v18 = 0;
    v48 = v15 + 32;
    v47 = MEMORY[0x1E69E7CC0];
    while (v18 < *(v15 + 16))
    {
      v19 = v15;
      v50 = *(v48 + 16 * v18++);
      v20 = v50;
      v21 = *(&v50 + 1);
      v22 = [v20 identifier];
      v23 = sub_1D726207C();
      v25 = v24;

      if (*(v9 + 16) && (sub_1D7264A0C(), sub_1D72621EC(), v26 = sub_1D7264A5C(), v27 = -1 << *(v9 + 32), v28 = v26 & ~v27, ((*(v13 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(v9 + 48) + 16 * v28);
          v31 = *v30 == v23 && v30[1] == v25;
          if (v31 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v13 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v15 = v19;
        if (v18 == v49)
        {
          goto LABEL_23;
        }
      }

      else
      {
LABEL_16:

        v32 = v47;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6997BE0(0, *(v32 + 16) + 1, 1);
          v32 = v51;
        }

        v15 = v19;
        v35 = *(v32 + 16);
        v34 = *(v32 + 24);
        v36 = v32;
        if (v35 >= v34 >> 1)
        {
          sub_1D6997BE0((v34 > 1), v35 + 1, 1);
          v36 = v51;
        }

        *(v36 + 16) = v35 + 1;
        v47 = v36;
        *(v36 + 16 * v35 + 32) = v50;
        if (v18 == v49)
        {
          goto LABEL_23;
        }
      }
    }

    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_28:
    *a3 = v12;
  }
}

void FeedChannelRecipeClusteringResult.next(filterAgainst:)(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v6 = a3;
  v9 = *v3;
  if (a3 >> 62)
  {
LABEL_46:
    v10 = sub_1D7263BFC();
  }

  else
  {
    v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  v50 = v9;
  v46 = a1;
  if (v10)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v4 = 0;
    v11 = v51;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA6FB460](v4, v6);
      }

      else
      {
        v12 = *(v6 + 8 * v4 + 32);
        swift_unknownObjectRetain();
      }

      v13 = [v12 identifier];
      v5 = sub_1D726207C();
      v15 = v14;
      swift_unknownObjectRelease();

      v17 = *(v51 + 16);
      v16 = *(v51 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D5BFC364((v16 > 1), v17 + 1, 1);
      }

      ++v4;
      *(v51 + 16) = v17 + 1;
      v18 = v51 + 16 * v17;
      *(v18 + 32) = v5;
      *(v18 + 40) = v15;
    }

    while (v10 != v4);
    v9 = v50;
  }

  v6 = sub_1D5B86020(v11);

  v47 = *(v9 + 16);
  if (v47)
  {
    v45 = a2;
    a1 = 0;
    v48 = v9 + 32;
    a2 = (v6 + 56);
    while (1)
    {
      if (a1 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      v19 = (v48 + 24 * a1);
      v10 = *v19;
      v4 = v19[1];
      v20 = v19[2];
      swift_unknownObjectRetain();

      v49 = v20;
      v21 = [v10 identifier];
      v22 = sub_1D726207C();
      v5 = v23;

      if (!*(v6 + 16))
      {
        break;
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v24 = sub_1D7264A5C();
      v25 = -1 << *(v6 + 32);
      v26 = v24 & ~v25;
      if (((*(a2 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        break;
      }

      v27 = ~v25;
      while (1)
      {
        v28 = (*(v6 + 48) + 16 * v26);
        v29 = *v28 == v22 && v28[1] == v5;
        if (v29 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v26 = (v26 + 1) & v27;
        if (((*(a2 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      swift_unknownObjectRelease();

      a1 = (a1 + 1);
      v9 = v50;
      if (a1 == v47)
      {

        a2 = v45;
        goto LABEL_30;
      }
    }

LABEL_26:

    swift_unknownObjectRelease();

    if (__OFADD__(a1, 1))
    {
      goto LABEL_48;
    }

    v30 = *v19;
    v31 = v19[1];
    v5 = v19[2];
    v10 = sub_1D5FD2BFC();
    v35 = v34 >> 1;
    if (v33 == v34 >> 1)
    {
      swift_unknownObjectRetain();

      v36 = v5;

      swift_unknownObjectRelease();
      v37 = 0;
      a2 = v45;
      *v46 = v30;
      v46[1] = v31;
      v46[2] = v36;
      goto LABEL_42;
    }

    v4 = v33;
    v49 = v32;
    *v46 = v30;
    v46[1] = v31;
    v46[2] = v5;
    a2 = v34;
    if ((v34 & 1) == 0)
    {
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v38 = v5;

      goto LABEL_33;
    }

    sub_1D72647AC();
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v40 = v5;
    swift_unknownObjectRetain_n();
    v41 = v40;

    v42 = swift_dynamicCastClass();
    if (!v42)
    {
      swift_unknownObjectRelease();
      v42 = MEMORY[0x1E69E7CC0];
    }

    v43 = *(v42 + 16);

    if (!__OFSUB__(v35, v4))
    {
      if (v43 != v35 - v4)
      {
        goto LABEL_50;
      }

      v44 = swift_dynamicCastClass();
      if (v44)
      {
        v37 = v44;
        swift_unknownObjectRelease();

        goto LABEL_40;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v37 = MEMORY[0x1E69E7CC0];
      goto LABEL_41;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    swift_unknownObjectRelease();
LABEL_33:
    sub_1D5EC3260(v10, v49, v4, a2);
    v37 = v39;
    swift_unknownObjectRelease();

LABEL_40:

LABEL_41:
    a2 = v45;
    swift_unknownObjectRelease();
    goto LABEL_42;
  }

LABEL_30:
  v37 = 0;
  *v46 = 0;
  v46[1] = 0;
  v46[2] = 0;
LABEL_42:
  *a2 = v37;
}

uint64_t FormatOptionCompareValue.encode(to:)(void *a1)
{
  sub_1D5C57FA0(0, &qword_1EDF025F0, MEMORY[0x1E69E6F58]);
  v14 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C58004();
  sub_1D7264B5C();
  if (v10 == 1)
  {
    v15 = v9;
    v16 = v8;
    v17 = 1;
    sub_1D67FB300();
  }

  else
  {
    v15 = v9;
    v17 = 0;
    sub_1D66A6130();
  }

  v11 = v14;
  sub_1D726443C();
  return (*(v4 + 8))(v7, v11);
}

unint64_t sub_1D67FB300()
{
  result = qword_1EDF11B60;
  if (!qword_1EDF11B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B60);
  }

  return result;
}

uint64_t sub_1D67FB358(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F6974706FLL;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F6974706FLL;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D67FB3F8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D67FB474(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D67FB4DC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D67FB554(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D67FB5B4(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x6E6F6974706FLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1D67FB5EC(char *a3@<X8>)
{
  v4 = sub_1D72641CC();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_1D67FB650(uint64_t a1)
{
  v2 = sub_1D5C58004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67FB68C(uint64_t a1)
{
  v2 = sub_1D5C58004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D67FB6C8(unint64_t *a1, unint64_t *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*(a1 + 16) != 1)
  {
    if ((a2[2] & 1) == 0)
    {
      v11[1] = v2;
      v11[2] = v3;
      v10 = v6;
      v11[0] = v5;
      return static FormatOptionValue.< infix(_:_:)(v11, &v10) & 1;
    }

    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    return 0;
  }

  v7 = a1[1];
  if (v5 == v6 && v7 == a2[1])
  {
    return 0;
  }

  return sub_1D72646CC();
}

uint64_t static FormatOptionCompareValue.< infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*(a1 + 16) != 1)
  {
    if ((a2[2] & 1) == 0)
    {
      v11[1] = v2;
      v11[2] = v3;
      v10 = v6;
      v11[0] = v5;
      return static FormatOptionValue.< infix(_:_:)(v11, &v10) & 1;
    }

    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    return 0;
  }

  v7 = a1[1];
  if (v5 == v6 && v7 == a2[1])
  {
    return 0;
  }

  return sub_1D72646CC();
}

BOOL sub_1D67FB7E0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *a2;
  if (*(a2 + 16) != 1)
  {
    if ((v4 & 1) == 0)
    {
      v10 = v3;
      v11 = v5;
      v8 = static FormatOptionValue.< infix(_:_:)(&v11, &v10);
      return (v8 & 1) == 0;
    }

    goto LABEL_9;
  }

  if ((v4 & 1) == 0 || ((v6 = a2[1], v5 == v3) ? (v7 = v6 == a1[1]) : (v7 = 0), v7))
  {
LABEL_9:
    v8 = 0;
    return (v8 & 1) == 0;
  }

  v8 = sub_1D72646CC();
  return (v8 & 1) == 0;
}

BOOL sub_1D67FB860(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  if (*(a1 + 16) != 1)
  {
    if ((a2[2] & 1) == 0)
    {
      v8 = *a2;
      v9 = v3;
      v6 = static FormatOptionValue.< infix(_:_:)(&v9, &v8);
      return (v6 & 1) == 0;
    }

    goto LABEL_9;
  }

  if ((a2[2] & 1) == 0 || ((v4 = a1[1], v3 == *a2) ? (v5 = v4 == a2[1]) : (v5 = 0), v5))
  {
LABEL_9:
    v6 = 0;
    return (v6 & 1) == 0;
  }

  v6 = sub_1D72646CC();
  return (v6 & 1) == 0;
}

uint64_t sub_1D67FB8E4(unint64_t *a1, unint64_t *a2)
{
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *a2;
  if (*(a2 + 16) != 1)
  {
    if ((v6 & 1) == 0)
    {
      v12[1] = v2;
      v12[2] = v3;
      v11 = v5;
      v12[0] = v7;
      return static FormatOptionValue.< infix(_:_:)(v12, &v11) & 1;
    }

    return 0;
  }

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v8 = a2[1];
  if (v7 == v5 && v8 == a1[1])
  {
    return 0;
  }

  return sub_1D72646CC();
}

uint64_t _s8NewsFeed24FormatOptionCompareValueO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v5 = *a1;
  v6 = *a2;
  if (*(a1 + 16) != 1)
  {
    if ((a2[2] & 1) == 0)
    {
      v11[1] = v2;
      v11[2] = v3;
      v10 = v6;
      v11[0] = v5;
      return static FormatOptionValue.== infix(_:_:)(v11, &v10) & 1;
    }

    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    return 0;
  }

  v7 = a1[1];
  if (v5 == v6 && v7 == a2[1])
  {
    return 1;
  }

  return sub_1D72646CC();
}

unint64_t sub_1D67FBA38(void *a1)
{
  a1[1] = sub_1D67FBA70();
  a1[2] = sub_1D67FBAC4();
  result = sub_1D67FBB18();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67FBA70()
{
  result = qword_1EC88C170;
  if (!qword_1EC88C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C170);
  }

  return result;
}

unint64_t sub_1D67FBAC4()
{
  result = qword_1EC88C178;
  if (!qword_1EC88C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C178);
  }

  return result;
}

unint64_t sub_1D67FBB18()
{
  result = qword_1EC88C180;
  if (!qword_1EC88C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C180);
  }

  return result;
}

unint64_t sub_1D67FBB94()
{
  result = qword_1EC88C188;
  if (!qword_1EC88C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C188);
  }

  return result;
}

uint64_t sub_1D67FBBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D67FBC0C, 0, 0);
}

uint64_t sub_1D67FBC0C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(type metadata accessor for LiveActivityCommandContext(0) + 20);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1D67FBCE0;
  v7 = v0[4];

  return MEMORY[0x1EEE22B98](v7, v2 + v5, v3, v4);
}

uint64_t sub_1D67FBCE0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = sub_1D67FCA60;
  }

  else
  {
    v2 = sub_1D67FBDFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D67FBE24()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_1D67FBE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LiveActivityCommandContext(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  sub_1D67FC84C(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v19 - v12;
  v14 = *v4;
  v15 = sub_1D726294C();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  sub_1D5B68374(v14 + 16, v20);
  sub_1D67FC8A0(a4, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1D5B63F14(v20, v17 + 32);
  sub_1D67FC904(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1D6BD1DC0(0, 0, v13, &unk_1D72F1D88, v17);

  return result;
}

uint64_t sub_1D67FC030@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  result = sub_1D67FC3C8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D67FC0CC()
{
  sub_1D726290C();
  *(v0 + 24) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D67FCA5C, v2, v1);
}

uint64_t sub_1D67FC180()
{
  sub_1D726290C();
  *(v0 + 24) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D67FC214, v2, v1);
}

uint64_t sub_1D67FC214()
{

  swift_getObjectType();
  if (qword_1EDF3B000 != -1)
  {
    swift_once();
  }

  type metadata accessor for LiveActivityCommandContext(0);
  sub_1D725D93C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D67FC2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1D5B64684;

  return MEMORY[0x1EEE22BC8](a1, a2, v9, a4);
}

uint64_t sub_1D67FC3C8(uint64_t a1)
{
  v3 = sub_1D725C28C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67FC84C(0, &qword_1EDF175D0, MEMORY[0x1E69B69A0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v31 - v18;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v20 = sub_1D725C1BC();
  if (*(v20 + 16) && (v21 = sub_1D6D63330(a1), (v22 & 1) != 0))
  {
    (*(v4 + 16))(v7, *(v20 + 56) + *(v4 + 72) * v21, v3);

    sub_1D725C24C();
    (*(v4 + 8))(v7, v3);
    v23 = sub_1D725C23C();
    v24.n128_f64[0] = (*(*(v23 - 8) + 56))(v19, 0, 1, v23);
  }

  else
  {

    v23 = sub_1D725C23C();
    v24.n128_f64[0] = (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  }

  sub_1D67FC754(v19, v15, v24);
  sub_1D725C23C();
  v25 = *(v23 - 8);
  if ((*(v25 + 48))(v15, 1, v23) == 1)
  {
    goto LABEL_6;
  }

  sub_1D67FC754(v15, v11, v26);
  v28 = (*(v25 + 88))(v11, v23);
  if (v28 == *MEMORY[0x1E69B6998])
  {
    goto LABEL_8;
  }

  if (v28 == *MEMORY[0x1E69B6988])
  {
    v27 = 1;
    goto LABEL_12;
  }

  if (v28 == *MEMORY[0x1E69B6980])
  {
    goto LABEL_9;
  }

  if (v28 != *MEMORY[0x1E69B6990])
  {
LABEL_8:
    (*(v25 + 8))(v11, v23);
LABEL_9:
    v27 = 2;
    goto LABEL_12;
  }

LABEL_6:
  v27 = 0;
LABEL_12:
  sub_1D67FC7D4(v15, v26);
  sub_1D67FC7D4(v19, v29);
  return v27;
}

uint64_t sub_1D67FC754(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1D67FC84C(0, &qword_1EDF175D0, MEMORY[0x1E69B69A0]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D67FC7D4(uint64_t a1, __n128 a2)
{
  sub_1D67FC84C(0, &qword_1EDF175D0, MEMORY[0x1E69B69A0]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D67FC84C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D67FC8A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityCommandContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67FC904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityCommandContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D67FC968(uint64_t a1)
{
  v4 = *(type metadata accessor for LiveActivityCommandContext(0) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64684;

  return sub_1D67FBBE8(a1, v6, v7, v1 + 32, v1 + v5);
}

double FormatSlotItemTagFilterAndCondition.lhsCondition.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D5F33D5C(v2);
}

double FormatSlotItemTagFilterAndCondition.rhsCondition.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D5F33D5C(v2);
}

uint64_t _s8NewsFeed35FormatSlotItemTagFilterAndConditionV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v8 = *a2;
  v9 = v2;
  sub_1D5F33D5C(v2);
  sub_1D5F33D5C(v8);
  v5 = static FormatSlotItemTagFilterCondition.== infix(_:_:)(&v9, &v8);
  sub_1D5F33D8C(v8);
  sub_1D5F33D8C(v9);
  if (v5)
  {
    v8 = v4;
    v9 = v3;
    sub_1D5F33D5C(v3);
    sub_1D5F33D5C(v4);
    v6 = static FormatSlotItemTagFilterCondition.== infix(_:_:)(&v9, &v8);
    sub_1D5F33D8C(v8);
    sub_1D5F33D8C(v9);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_1D67FCB60(uint64_t a1)
{
  result = sub_1D67FCB88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D67FCB88()
{
  result = qword_1EC88C190;
  if (!qword_1EC88C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C190);
  }

  return result;
}

unint64_t sub_1D67FCBDC(void *a1)
{
  a1[1] = sub_1D665BE34();
  a1[2] = sub_1D6705D24();
  result = sub_1D67FCC14();
  a1[3] = result;
  return result;
}

unint64_t sub_1D67FCC14()
{
  result = qword_1EC88C198;
  if (!qword_1EC88C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C198);
  }

  return result;
}

uint64_t sub_1D67FCC68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 16))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D67FCCC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

id SportsBoxScoreDataVisualization.leagueTag.getter()
{
  v1 = [*(v0 + 48) eventLeagueTag];

  return v1;
}

uint64_t SportsBoxScoreDataVisualization.competitorTags.getter()
{
  v1 = [*(v0 + 48) eventCompetitorTags];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
  v3 = sub_1D726267C();

  return v3;
}

void *SportsBoxScoreDataVisualization.with(config:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D72585BC();
  v40 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v36 = a1[3];
  v37 = v10;
  v13 = a1[4];
  v12 = a1[5];
  v34 = v9;
  v35 = v13;
  v41 = v12;
  v42 = v11;
  v15 = *(v2 + 5);
  v38 = *(v2 + 4);
  v14 = v38;
  v39 = v4;
  v33 = *(v2 + 6);
  v16 = v33;
  v17 = *(v40 + 16);
  v17(v8, &v2[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_embedUrl], v4, v6);
  v18 = *&v2[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources];
  v19 = *&v2[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_roster];
  v20 = swift_allocObject();
  v20[4] = v14;
  v20[5] = v15;
  v21 = v15;
  v20[6] = v16;
  (v17)(v20 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_embedUrl, v8, v4);
  *(v20 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources) = v18;
  *(v20 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_roster) = v19;
  v22 = (v20 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config);
  v24 = v34;
  v23 = v35;
  v26 = v36;
  v25 = v37;
  *v22 = v34;
  v22[1] = v25;
  v27 = v41;
  v22[2] = v42;
  v22[3] = v26;
  v22[4] = v23;
  v22[5] = v27;
  v43 = 14906;
  v44 = 0xE200000000000000;
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  MEMORY[0x1DA6F9910](v24, v25);
  v28 = v43;
  v29 = v44;
  v43 = sub_1D72583DC();
  v44 = v30;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v38, v21);
  MEMORY[0x1DA6F9910](v28, v29);

  v31 = v44;
  v20[2] = v43;
  v20[3] = v31;
  v43 = v24;
  v44 = v25;
  v45 = v42;
  v46 = v26;
  v47 = v23;
  v48 = v41;
  sub_1D692133C(v8, &v43, 0xD000000000000019, 0x80000001D73D6810, v20 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_configuredEmbedUrl);
  (*(v40 + 8))(v8, v39);

  swift_unknownObjectRelease();

  return v20;
}

uint64_t SportsBoxScoreDataVisualization.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SportsBoxScoreDataVisualization.umcCanonicalId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SportsBoxScoreDataVisualization.config.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 8);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 16);
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 24);
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 32);
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5F8B638(v2, v3, v4);
}

char *SportsBoxScoreDataVisualization.__allocating_init(umcCanonicalId:event:embedUrl:urlDataSources:roster:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v13 = swift_allocObject();
  v15 = *a7;
  v14 = a7[1];
  v16 = a7[3];
  v29 = a7[2];
  v30 = *a6;
  v18 = a7[4];
  v17 = a7[5];
  v32 = a1;
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  v34 = a2;
  v19 = v14;
  *(v13 + 6) = a3;
  v20 = OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_embedUrl;
  v21 = sub_1D72585BC();
  v22 = *(v21 - 8);
  v33 = v21;
  (*(v22 + 16))(&v13[v20], a4);
  *&v13[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources] = a5;
  *&v13[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_roster] = v30;
  v23 = &v13[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config];
  *v23 = v15;
  v23[1] = v19;
  v23[2] = v29;
  v23[3] = v16;
  v23[4] = v18;
  v23[5] = v17;

  swift_unknownObjectRetain();
  if (v19)
  {
    sub_1D5F8B638(v15, v19, v29);
    MEMORY[0x1DA6F9910](v15, v19);
    v25 = 14906;
    v24 = 0xE200000000000000;
  }

  else
  {
    v25 = 0;
    v24 = 0xE000000000000000;
  }

  v35 = sub_1D72583DC();
  v36 = v26;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v32, v34);

  MEMORY[0x1DA6F9910](v25, v24);

  v27 = v36;
  *(v13 + 2) = v35;
  *(v13 + 3) = v27;
  v35 = v15;
  v36 = v19;
  v37 = v29;
  v38 = v16;
  v39 = v18;
  v40 = v17;
  sub_1D692133C(a4, &v35, 0xD000000000000019, 0x80000001D73D6810, &v13[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_configuredEmbedUrl]);
  swift_unknownObjectRelease();
  (*(v22 + 8))(a4, v33);
  sub_1D5F8BBC8(v15, v19, v29, v16, v18, v17);
  return v13;
}

char *SportsBoxScoreDataVisualization.init(umcCanonicalId:event:embedUrl:urlDataSources:roster:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v8 = v7;
  v63 = a5;
  v15 = sub_1D72585BC();
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v61 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a6;
  v20 = *a7;
  v21 = a7[1];
  v22 = a7[2];
  v23 = a7[3];
  v25 = a7[4];
  v24 = a7[5];
  v58 = a1;
  v59 = v26;
  *(v8 + 4) = a1;
  *(v8 + 5) = a2;
  v27 = v20;
  v28 = a3;
  *(v8 + 6) = a3;
  v29 = v22;
  v30 = *(v26 + 16);
  v60 = a4;
  v31 = a4;
  v32 = v23;
  v62 = v33;
  v30(&v8[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_embedUrl], v31, v17);
  *&v8[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources] = v63;
  *&v8[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_roster] = v19;
  v34 = &v8[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config];
  v63 = v27;
  *v34 = v27;
  v34[1] = v21;
  v35 = v21;
  v34[2] = v29;
  v34[3] = v32;
  v34[4] = v25;
  v34[5] = v24;
  v56 = v32;
  v57 = v25;
  v54 = v24;
  v55 = v28;
  if (v21)
  {
    v64 = 14906;
    v65 = 0xE200000000000000;

    swift_unknownObjectRetain();
    v36 = v63;
    sub_1D5F8B638(v63, v21, v29);
    v37 = v29;
    MEMORY[0x1DA6F9910](v36, v21);
    v39 = v64;
    v38 = v65;
  }

  else
  {

    swift_unknownObjectRetain();
    v39 = 0;
    v38 = 0xE000000000000000;
    v37 = v29;
  }

  v53 = v37;
  v40 = v60;
  v64 = sub_1D72583DC();
  v65 = v41;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v58, a2);

  MEMORY[0x1DA6F9910](v39, v38);

  v42 = v65;
  *(v8 + 2) = v64;
  *(v8 + 3) = v42;
  v43 = v63;
  v64 = v63;
  v65 = v35;
  v45 = v56;
  v44 = v57;
  v66 = v37;
  v67 = v56;
  v46 = v35;
  v47 = v54;
  v68 = v57;
  v69 = v54;
  v48 = v61;
  sub_1D692133C(v40, &v64, 0xD000000000000019, 0x80000001D73D6810, v61);
  swift_unknownObjectRelease();
  v49 = v59;
  v50 = v62;
  (*(v59 + 8))(v40, v62);
  sub_1D5F8BBC8(v43, v46, v53, v45, v44, v47);
  (*(v49 + 32))(&v8[OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_configuredEmbedUrl], v48, v50);
  return v8;
}

uint64_t SportsBoxScoreDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsBoxScoreDataVisualization.init(from:)(a1);
  return v2;
}

void *SportsBoxScoreDataVisualization.init(from:)(void *a1)
{
  v47 = a1;
  v2 = v1;
  v48 = *v2;
  v4 = sub_1D72585BC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v38 - v10;
  sub_1D5F8C77C(0);
  v13 = v12;
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67FE69C(0, &qword_1EC88C1A8, MEMORY[0x1E69E6F48]);
  v18 = *(v17 - 8);
  v43 = v17;
  v44 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v38 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67FDF9C();
  v45 = v21;
  v22 = v46;
  v23 = v2;
  sub_1D7264B0C();
  if (v22)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v13;
    v46 = v11;
    v39 = v7;
    LOBYTE(v49) = 0;
    v26 = v42;
    v25 = v43;
    v23[4] = sub_1D72642BC();
    v23[5] = v27;
    LOBYTE(v49) = 1;
    sub_1D5F8C838(&unk_1EDF176A0, sub_1D5F8C77C, MEMORY[0x1E69D6C18]);
    sub_1D726431C();
    sub_1D725BF7C();
    (v26[1])(v16, v24);
    v23[6] = v49;
    LOBYTE(v49) = 2;
    v28 = sub_1D5F8C838(&unk_1EDF45B50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v29 = v46;
    v30 = v41;
    sub_1D726431C();
    v42 = v23;
    v38[1] = v28;
    v31 = *(v40 + 32);
    v31(v23 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_embedUrl, v29, v30);
    sub_1D67FFC54(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    v52 = 3;
    sub_1D67FEC04(&unk_1EDF04AB0, &unk_1EDF065B0, &protocol conformance descriptor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E6330]);
    v32 = v45;
    v46 = 0;
    sub_1D726431C();
    *(v23 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources) = v49;
    v52 = 6;
    sub_1D5F8C880();
    sub_1D726431C();
    *(v23 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_roster) = v49;
    v52 = 5;
    sub_1D5F8C8D4();
    sub_1D726427C();
    v33 = (v23 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config);
    v34 = v50;
    *v33 = v49;
    v33[1] = v34;
    v33[2] = v51;
    LOBYTE(v49) = 4;
    v23[2] = sub_1D72642BC();
    v23[3] = v35;
    LOBYTE(v49) = 7;
    v36 = v39;
    sub_1D726431C();
    (*(v44 + 8))(v32, v25);
    v31(v23 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_configuredEmbedUrl, v36, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  return v23;
}

unint64_t sub_1D67FDF9C()
{
  result = qword_1EC88C1B0;
  if (!qword_1EC88C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C1B0);
  }

  return result;
}

uint64_t SportsBoxScoreDataVisualization.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D725ABEC();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F8C77C(0);
  v8 = v7;
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67FE69C(0, &qword_1EC88C1C0, MEMORY[0x1E69E6F58]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v35 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67FDF9C();
  sub_1D7264B5C();
  LOBYTE(v43) = 0;
  v18 = v42;
  sub_1D72643FC();
  if (v18)
  {
    return (*(v14 + 8))(v17, v13);
  }

  v20 = v38;
  v21 = v39;
  v36 = v2;
  v37 = 0;
  v22 = *(v2 + 48);
  v42 = v14;
  v43 = v22;
  v23 = qword_1EDF17E30;
  swift_unknownObjectRetain();
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v21, qword_1EDF17E38);
  v25 = (*(v20 + 16))(v40, v24, v21);
  MEMORY[0x1EEE9AC00](v25, v26);
  *(&v35 - 2) = sub_1D5B5534C(0, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding);
  swift_getKeyPath();
  sub_1D725BF6C();
  LOBYTE(v43) = 1;
  sub_1D5F8C838(&unk_1EDF176B0, sub_1D5F8C77C, MEMORY[0x1E69D6C10]);
  v27 = v37;
  sub_1D726443C();
  (*(v41 + 8))(v11, v8);
  if (v27)
  {
    return (*(v42 + 8))(v17, v13);
  }

  LOBYTE(v43) = 2;
  sub_1D72585BC();
  sub_1D5F8C838(&unk_1EDF45B70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  v28 = v36;
  sub_1D726443C();
  v43 = *(v28 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources);
  v49 = 3;
  sub_1D67FFC54(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
  sub_1D67FEC04(&qword_1EDF04AC0, &qword_1EDF065C0, &protocol conformance descriptor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E6300]);
  sub_1D726443C();
  v43 = *(v28 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_roster);
  v49 = 6;
  sub_1D5F8D78C();

  sub_1D726443C();

  v29 = *(v28 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 8);
  v30 = *(v28 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 16);
  v31 = *(v28 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 24);
  v32 = *(v28 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 32);
  v33 = *(v28 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 40);
  v43 = *(v28 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config);
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v48 = v33;
  v49 = 5;
  sub_1D5F8B638(v43, v29, v30);
  sub_1D5F8D7E0();
  sub_1D72643BC();
  v34 = v42;
  sub_1D5F8BBC8(v43, v44, v45, v46, v47, v48);
  LOBYTE(v43) = 4;
  sub_1D72643FC();
  LOBYTE(v43) = 7;
  sub_1D726443C();
  return (*(v34 + 8))(v17, v13);
}

void sub_1D67FE69C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D67FDF9C();
    v7 = a3(a1, &type metadata for SportsBoxScoreDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D67FE728@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D67FFC08(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D67FE758(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064496C616369;
  v4 = 0x6E6F6E6143636D75;
  v5 = 0xE600000000000000;
  v6 = 0x726574736F72;
  if (v2 != 6)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000001D73B7A30;
  }

  v7 = 0xEA00000000007265;
  v8 = 0x696669746E656469;
  if (v2 != 4)
  {
    v8 = 0x6769666E6F63;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6C72556465626D65;
  if (v2 != 2)
  {
    v10 = 0x53617461446C7275;
    v9 = 0xEE0073656372756FLL;
  }

  if (*v1)
  {
    v4 = 0x746E657665;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1D67FE86C()
{
  v1 = *v0;
  v2 = 0x6E6F6E6143636D75;
  v3 = 0x726574736F72;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x696669746E656469;
  if (v1 != 4)
  {
    v4 = 0x6769666E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C72556465626D65;
  if (v1 != 2)
  {
    v5 = 0x53617461446C7275;
  }

  if (*v0)
  {
    v2 = 0x746E657665;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D67FE97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D67FFC08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D67FE9A4(uint64_t a1)
{
  v2 = sub_1D67FDF9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D67FE9E0(uint64_t a1)
{
  v2 = sub_1D67FDF9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsBoxScoreDataVisualization.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_embedUrl;
  v2 = sub_1D72585BC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_1D5F8BBC8(*(v0 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config), *(v0 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 8), *(v0 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 16), *(v0 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 24), *(v0 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 32), *(v0 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_config + 40));
  v3(v0 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_configuredEmbedUrl, v2);
  return v0;
}

uint64_t SportsBoxScoreDataVisualization.__deallocating_deinit()
{
  SportsBoxScoreDataVisualization.deinit();

  return swift_deallocClassInstance();
}

void *sub_1D67FEB58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SportsBoxScoreDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t static SportsBoxScoreDataVisualization.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D67FEC04(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D67FFC54(255, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    sub_1D5F8C838(a2, type metadata accessor for WebEmbedDataVisualizationURLDataSource, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SportsBoxScoreDataVisualization(uint64_t a1)
{
  result = qword_1EDF1F750;
  if (!qword_1EDF1F750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D67FED1C(uint64_t a1)
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

unint64_t sub_1D67FEE48()
{
  result = qword_1EC88C1C8;
  if (!qword_1EC88C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C1C8);
  }

  return result;
}

unint64_t sub_1D67FEEA0()
{
  result = qword_1EC88C1D0;
  if (!qword_1EC88C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C1D0);
  }

  return result;
}

unint64_t sub_1D67FEEF8()
{
  result = qword_1EC88C1D8;
  if (!qword_1EC88C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C1D8);
  }

  return result;
}

void *sub_1D67FEF4C(uint64_t a1, uint64_t a2)
{
  v118 = sub_1D72585BC();
  v3 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v4);
  v95 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v114 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v88 - v14;
  if (a2)
  {
    v122 = v13;
    v121 = v3;
    v16 = MEMORY[0x1E69E6F90];
    sub_1D67FFC54(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D67FFC54(0, &qword_1EC880490, sub_1D5EA74B8, v16);
    v18 = v17;
    sub_1D5EA74B8(0);
    v115 = v19;
    v20 = *(*(v19 - 8) + 72);
    v21 = *(*(v19 - 8) + 80);
    v22 = (v21 + 32) & ~v21;
    v110 = 3 * v20;
    v112 = v21;
    v113 = v18;
    v23 = swift_allocObject();
    v109 = xmmword_1D7279970;
    *(v23 + 16) = xmmword_1D7279970;
    v90 = v23;
    v111 = v22;
    v24 = (v23 + v22);
    v26 = *(a2 + 32);
    v25 = *(a2 + 40);
    v27 = a2;
    v28 = type metadata accessor for FormatInspectionItem(0);
    v29 = &v24[*(v28 + 24)];
    *v29 = v26;
    *(v29 + 1) = v25;
    v30 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v31 = *(v30 - 8);
    v32 = *(v31 + 56);
    v108 = v30;
    v107 = v32;
    v106 = v31 + 56;
    v32(v29, 0, 1, v30);
    *v24 = 0xD000000000000010;
    *(v24 + 1) = 0x80000001D73C4840;
    *(v24 + 2) = 0;
    *(v24 + 3) = 0;
    v33 = &v24[*(v28 + 28)];
    *v33 = 0;
    *(v33 + 1) = 0;
    v33[16] = -1;
    v34 = *(v28 - 8);
    v35 = *(v34 + 56);
    v36 = v34 + 56;
    v35(v24, 0, 1, v28);
    v37 = v121;
    v38 = *(v121 + 16);
    v39 = v118;
    v105 = v121 + 16;
    v104 = v38;
    v38(v15, v27 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_embedUrl, v118);
    v40 = *(v37 + 56);
    v103 = v37 + 56;
    v102 = v40;
    v40(v15, 0, 1, v39);

    sub_1D711FCD0(0x5255206465626D45, 0xE90000000000004CLL, v15, &v24[v20]);
    v89 = v24;
    v117 = v20;
    v116 = v28;
    v124 = v35;
    v123 = v36;
    v35(&v24[v20], 0, 1, v28);
    v41 = *(v27 + OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources);
    if (v41 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
    {
      v43 = inited;
      if (!i)
      {
        break;
      }

      v125 = MEMORY[0x1E69E7CC0];
      result = sub_1D6997EC0(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v88 = v27;
      v45 = 0;
      v46 = v125;
      v47 = v41;
      v101 = v41 & 0xC000000000000001;
      v92 = v41 & 0xFFFFFFFFFFFFFF8;
      v48 = 2 * v117;
      v96 = (v121 + 48);
      v94 = (v121 + 32);
      v93 = (v121 + 8);
      v100 = xmmword_1D7287CC0;
      v99 = v41;
      v98 = i;
      v97 = 2 * v117;
      while (!__OFADD__(v45, 1))
      {
        v121 = v45;
        v120 = v45 + 1;
        v119 = v46;
        if (v101)
        {
          v49 = MEMORY[0x1DA6FB460](v45);
        }

        else
        {
          if (v45 >= *(v92 + 16))
          {
            goto LABEL_25;
          }

          v49 = *(v47 + 8 * v45 + 32);
        }

        v50 = v111;
        v51 = swift_allocObject();
        *(v51 + 16) = v109;
        v52 = (v51 + v50);
        v53 = v49[2];
        v54 = v49[3];
        sub_1D5F8E840(v53, v54);
        v55 = sub_1D71221AC(0x20746E65746E6F43, 0xEC00000065707954, v53, v54, v52);
        v56 = v116;
        v57 = v124;
        v124(v52, 0, 1, v116, v55);
        v58 = v49[4];
        v59 = v49[5];

        v60 = v117;
        v61 = sub_1D711F844(7955787, 0xE300000000000000, v58, v59, &v52[v117]);
        v57(&v52[v60], 0, 1, v56, v61);
        v62 = &v52[v48];
        v63 = v114;
        v64 = v118;
        v65 = v104;
        v104(v114, v49 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v118);
        v102(v63, 0, 1, v64);
        v27 = v122;
        sub_1D5EB84C0(v63, v122);
        if ((*v96)(v27, 1, v64) == 1)
        {
          sub_1D5B6F13C(v63, sub_1D5B4D3E0);
          v107(&v62[*(v56 + 24)], 1, 1, v108);
          *v62 = v100;
          *(v62 + 2) = 0;
          *(v62 + 3) = 0;
          v66 = &v62[*(v56 + 28)];
          *v66 = 0;
          *(v66 + 1) = 0;
          v66[16] = -1;
        }

        else
        {
          v27 = v118;
          v67 = v95;
          v65(v95, v122, v118);
          sub_1D5B6F13C(v63, sub_1D5B4D3E0);
          v68 = *(v56 + 24);
          (*v94)(&v62[v68], v67, v27);
          v69 = v108;
          swift_storeEnumTagMultiPayload();
          v107(&v62[v68], 0, 1, v69);
          *v62 = v100;
          *(v62 + 2) = 0;
          *(v62 + 3) = 0;
          v70 = &v62[*(v56 + 28)];
          *v70 = 0;
          *(v70 + 1) = 0;
          v70[16] = -1;
          (*v93)(v122, v27);
        }

        (v124)(v62, 0, 1, v56);
        sub_1D6795150(0, 0xE000000000000000, 0, 0, v51, v129);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        *(&v127 + 1) = &type metadata for FormatInspectionGroup;
        v128 = &off_1F518B2C0;
        v71 = swift_allocObject();
        *&v126 = v71;

        *(v71 + 48) = v130;
        v72 = v129[1];
        *(v71 + 16) = v129[0];
        *(v71 + 32) = v72;
        v125 = v119;
        v41 = *(v119 + 16);
        v73 = *(v119 + 24);
        v48 = v97;
        if (v41 >= v73 >> 1)
        {
          sub_1D6997EC0((v73 > 1), v41 + 1, 1);
        }

        v74 = *(&v127 + 1);
        v75 = v128;
        v76 = __swift_mutable_project_boxed_opaque_existential_1(&v126, *(&v127 + 1));
        v77 = MEMORY[0x1EEE9AC00](v76, v76);
        v79 = &v88 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v80 + 16))(v79, v77);
        sub_1D5BD0BE4(v41, v79, &v125, v74, v75);
        __swift_destroy_boxed_opaque_existential_1(&v126);
        v46 = v125;
        v45 = v121 + 1;
        v47 = v99;
        if (v120 == v98)
        {
          v43 = inited;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v48 = 2 * v117;
    v46 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v82 = sub_1D5F62BFC(v46);

    v83 = sub_1D7073500(v82);

    v84 = v89;
    sub_1D711AD20(0x756F532061746144, 0xEC00000073656372, v83, 0, 0, &v89[v48]);
    (v124)(&v84[v48], 0, 1, v116);
    sub_1D6795150(0x726F635320786F42, 0xE900000000000065, 0, 0, v90, &v126);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v43[7] = &type metadata for FormatInspectionGroup;
    v43[8] = &off_1F518B2C0;
    v85 = swift_allocObject();
    v43[4] = v85;
    *(v85 + 48) = v128;
    v86 = v127;
    *(v85 + 16) = v126;
    *(v85 + 32) = v86;
    v87 = sub_1D7073500(v43);
    swift_setDeallocating();
    sub_1D5B6F13C((v43 + 4), sub_1D5E4F358);

    return v87;
  }

  else
  {
    v81 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v81);
  }
}

unint64_t sub_1D67FFC08(uint64_t a1, uint64_t a2)
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

void sub_1D67FFC54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

char *sub_1D67FFCB8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile];
  sub_1D607F0A4(v25);
  v6 = v25[3];
  *(v5 + 2) = v25[2];
  *(v5 + 3) = v6;
  v7 = v25[1];
  *v5 = v25[0];
  *(v5 + 1) = v7;
  v8 = v25[7];
  *(v5 + 6) = v25[6];
  *(v5 + 7) = v8;
  v9 = v25[5];
  *(v5 + 4) = v25[4];
  *(v5 + 5) = v9;
  v10 = &v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_didTapOnHighlight];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel;
  sub_1D725D04C();
  *&v2[v11] = sub_1D725D01C();
  v12 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageFont;
  *&v2[v12] = [objc_opt_self() monospacedSystemFontOfSize:10.0 weight:*MEMORY[0x1E69DB980]];
  v13 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageTextColor;
  *&v2[v13] = [objc_opt_self() whiteColor];
  v14 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_highlight;
  v15 = type metadata accessor for DebugFormatDebuggerSourceHighlight(0);
  (*(*(v15 - 8) + 56))(&v2[v14], 1, 1, v15);
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_editor] = a1;
  v24.receiver = v2;
  v24.super_class = ObjectType;

  v16 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v17 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel;
  v18 = *&v16[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel];
  v19 = v16;
  [v18 setTextAlignment_];
  [*&v16[v17] setHidden_];
  [*&v16[v17] setLineBreakMode_];
  [v19 addSubview_];
  v20 = *&v16[v17];
  v21 = sub_1D725D03C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_1D725F63C();

  return v19;
}

void sub_1D67FFF30(uint64_t a1)
{
  sub_1D68012B8(0, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17 - v3;
  v5 = type metadata accessor for DebugFormatDebuggerSourceHighlight(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_highlight;
    swift_beginAccess();
    sub_1D6800EBC(&v11[v12], v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_1D6800F50(v4);
    }

    else
    {
      sub_1D679CC64(v4, v9, type metadata accessor for DebugFormatDebuggerSourceHighlight);
      v13 = &v11[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_didTapOnHighlight];
      swift_beginAccess();
      v14 = *v13;
      if (*v13)
      {
        v15 = *(v13 + 1);
        swift_endAccess();
        v16 = *&v11[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel];

        v14(v9, v16);
        sub_1D5B74328(v14, v15);
        sub_1D6800FDC(v9, type metadata accessor for DebugFormatDebuggerSourceHighlight);
      }

      else
      {
        sub_1D6800FDC(v9, type metadata accessor for DebugFormatDebuggerSourceHighlight);
        swift_endAccess();
      }
    }
  }
}

void sub_1D68001C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FormatDebuggerContext(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68012B8(0, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  *&v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8).n128_u64[0];
  v11 = (&v35 - v10);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, sel_layoutSubviews, v9);
  [v1 setHidden_];
  v12 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_highlight;
  swift_beginAccess();
  sub_1D6800EBC(&v1[v12], v11);
  v13 = type metadata accessor for DebugFormatDebuggerSourceHighlight(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    [v1 setHidden_];
    return;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D679CC64(v11, v6, type metadata accessor for FormatDebuggerContext);
      v15 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
      sub_1D6800888();
      v17 = v16;
      [v15 appendAttributedString_];

      v18 = sub_1D632416C();
      v36 = 32;
      v37 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v18);

      v19 = sub_1D6800A58();

      [v15 appendAttributedString_];

      v20 = objc_opt_self();
      v21 = v15;
      v22 = [v20 systemBlueColor];
      sub_1D6800698(v15, v22);

      sub_1D6800FDC(v6, type metadata accessor for FormatDebuggerContext);
      return;
    }

    v32 = [objc_opt_self() systemBlueColor];
    v33 = [v32 colorWithAlphaComponent_];
  }

  else
  {
    v23 = *v11;
    if (*v11)
    {
      v24 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
      sub_1D6800888();
      v26 = v25;
      [v24 appendAttributedString_];

      v27 = sub_1D68011B4(v23);
      v36 = 32;
      v37 = 0xE100000000000000;
      MEMORY[0x1DA6F9910](v27);

      v28 = sub_1D6800A58();

      [v24 appendAttributedString_];

      v29 = objc_opt_self();
      v30 = v24;
      v31 = [v29 systemRedColor];
      sub_1D6800698(v24, v31);

      return;
    }

    v32 = [objc_opt_self() systemRedColor];
    v33 = [v32 colorWithAlphaComponent_];
  }

  v34 = v33;
  [v1 setBackgroundColor_];

  [*&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel] setHidden_];
}

void sub_1D6800698(void *a1, id a2)
{
  v5 = [a2 colorWithAlphaComponent_];
  [v2 setBackgroundColor_];

  v6 = *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel];
  [v6 setHidden_];
  if (a1)
  {
    v13 = a1;
    [v6 setHidden_];
    [v6 setBackgroundColor_];
    [v6 setAttributedText_];
    [v6 sizeToFit];
    [v2 bounds];
    v7 = CGRectGetWidth(v15) * 0.5;
    [v2 bounds];
    Width = CGRectGetWidth(v16);
    [v6 frame];
    v9 = Width - CGRectGetWidth(v17);
    if (v7 <= v9)
    {
      v7 = v9;
    }

    [v6 frame];
    v10 = CGRectGetWidth(v18);
    [v2 bounds];
    v11 = CGRectGetWidth(v19) * 0.5;
    if (v11 >= v10)
    {
      v11 = v10;
    }

    v12 = v11 + 8.0;
    [v2 bounds];
    [v6 setFrame_];
  }
}

void sub_1D6800888()
{
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() systemImageNamed_];

  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageFont);
    v4 = [objc_opt_self() configurationWithFont_];
    v5 = [v2 imageWithConfiguration_];

    v6 = [objc_opt_self() textAttachmentWithImage_];
    v7 = [objc_opt_self() attributedStringWithAttachment_];
    v8 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageTextColor);
    v13 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
    v12[0] = v8;
    v9 = v8;
    v10 = sub_1D726311C();

    __swift_destroy_boxed_opaque_existential_1(v12);
    v13 = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
    v12[0] = v3;
    v11 = v3;
    sub_1D726311C();

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __break(1u);
  }
}

id sub_1D6800A58()
{
  sub_1D68012B8(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v2 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageTextColor);
  v4 = sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
  *(inited + 40) = v3;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v4;
  *(inited + 72) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageFont);
  *(inited + 104) = sub_1D5B5A498(0, &qword_1EDF1A720, 0x1E69DB878);
  *(inited + 80) = v6;
  v7 = v2;
  v8 = v3;
  v9 = v5;
  v10 = v6;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4(0);
  swift_arrayDestroy();
  v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v12 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v13 = sub_1D7261D2C();

  v14 = [v11 initWithString:v12 attributes:v13];

  return v14;
}