uint64_t sub_10007AE4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007AE94(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100033B34(result, a2);
  }

  return result;
}

unint64_t sub_10007AEA8()
{
  result = qword_1000C2870[0];
  if (!qword_1000C2870[0])
  {
    sub_100007330(255, &qword_1000C1260, HMHome_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000C2870);
  }

  return result;
}

uint64_t sub_10007AF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10007AF84(uint64_t a1)
{
  sub_10006FEFC(319);
  if (v1 <= 0x3F)
  {
    sub_10006AAC4();
    if (v2 <= 0x3F)
    {
      sub_10009CE24();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10007B03C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_10009E3A4() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_10009CE24() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v16)
  {
    goto LABEL_34;
  }

  v17 = ((v13 + v14 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v12 + 17) & ~v12)) & ~v14) + *(v10 + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v21 < 2)
    {
LABEL_34:
      if (v15 > 0xFE)
      {
        if (v9 == v16)
        {
          v26 = *(v8 + 48);

          return v26((((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12);
        }

        else
        {
          v27 = *(v10 + 48);

          return v27((((((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12) + v13 + v14) & ~v14, v11);
        }
      }

      else
      {
        v25 = *(a1 + v7);
        if (v25 >= 2)
        {
          return (v25 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_34;
  }

LABEL_21:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v23 = ((v13 + v14 + (((v7 & 0xFFFFFFF8) + v12 + 17) & ~v12)) & ~v14) + *(v10 + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v16 + (v24 | v22) + 1;
}

void sub_10007B300(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_10009E3A4() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_10009CE24() - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  v16 = *(v12 + 80);
  if (v11 <= v13)
  {
    v17 = *(v12 + 84);
  }

  else
  {
    v17 = *(v10 + 84);
  }

  if (v17 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v17;
  }

  v19 = ((v15 + v16 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v14 + 17) & ~v14)) & ~v16) + *(v12 + 64);
  if (a3 <= v18)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v18 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v18 < a2)
  {
    v21 = ~v18 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_65:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v19] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v20)
  {
    goto LABEL_36;
  }

  a1[v19] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v26 = v9 + 1;
  if (v17 > 0xFE)
  {
    if (v11 == v18)
    {
      v27 = *(v10 + 56);

      v27(((&a1[v26 + 7] & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14, a2);
    }

    else
    {
      v31 = *(v12 + 56);

      v31(((((&a1[v26 + 7] & 0xFFFFFFFFFFFFFFF8) + v14 + 9) & ~v14) + v15 + v16) & ~v16, a2, v13);
    }
  }

  else if (a2 > 0xFE)
  {
    if (v26 <= 3)
    {
      v28 = ~(-1 << (8 * v26));
    }

    else
    {
      v28 = -1;
    }

    if (v9 != -1)
    {
      v29 = v28 & (a2 - 255);
      if (v26 <= 3)
      {
        v30 = v9 + 1;
      }

      else
      {
        v30 = 4;
      }

      bzero(a1, v26);
      if (v30 > 2)
      {
        if (v30 == 3)
        {
          *a1 = v29;
          a1[2] = BYTE2(v29);
        }

        else
        {
          *a1 = v29;
        }
      }

      else if (v30 == 1)
      {
        *a1 = v29;
      }

      else
      {
        *a1 = v29;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

uint64_t sub_10007B728@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v18 = a2;
  v4 = *(a1 + 16);
  sub_10000375C(&qword_1000C24F8, &unk_1000A27B0);
  sub_10009DAB4();
  sub_10000375C(&qword_1000C2508, &qword_1000A3280);
  v5 = sub_10009DAB4();
  v30 = *(a1 + 24);
  v6 = v30;
  v31 = sub_10001CDC8(&qword_1000C24F0, &qword_1000C24F8, &unk_1000A27B0, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
  WitnessTable = swift_getWitnessTable();
  v29 = sub_10001CDC8(&qword_1000C2500, &qword_1000C2508, &qword_1000A3280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v22 = &type metadata for AnyShapeStyle;
  v23 = &type metadata for AnyShapeStyle;
  v24 = v5;
  v25 = &protocol witness table for AnyShapeStyle;
  v26 = &protocol witness table for AnyShapeStyle;
  v27 = swift_getWitnessTable();
  sub_10009D994();
  swift_getWitnessTable();
  sub_10009DFB4();
  swift_getWitnessTable();
  v7 = sub_10009E284();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v19 = v4;
  v20 = v6;
  v21 = v2;
  sub_10009E2F4();
  sub_10009E274();
  swift_getWitnessTable();
  v14 = *(v8 + 16);
  v14(v13, v11, v7);
  v15 = *(v8 + 8);
  v15(v11, v7);
  v14(v18, v13, v7);
  return (v15)(v13, v7);
}

uint64_t sub_10007BA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v29 = a1;
  v30 = a4;
  v28 = sub_10009CE24();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000375C(&qword_1000C24F8, &unk_1000A27B0);
  sub_10009DAB4();
  sub_10000375C(&qword_1000C2508, &qword_1000A3280);
  v8 = sub_10009DAB4();
  v9 = sub_10001CDC8(&qword_1000C24F0, &qword_1000C24F8, &unk_1000A27B0, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
  v42 = a3;
  v43 = v9;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_10001CDC8(&qword_1000C2500, &qword_1000C2508, &qword_1000A3280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v40 = WitnessTable;
  v41 = v11;
  v12 = swift_getWitnessTable();
  v34 = &type metadata for AnyShapeStyle;
  v35 = &type metadata for AnyShapeStyle;
  v36 = v8;
  v37 = &protocol witness table for AnyShapeStyle;
  v38 = &protocol witness table for AnyShapeStyle;
  v39 = v12;
  sub_10009D994();
  swift_getWitnessTable();
  v13 = sub_10009DFB4();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v20 = a3;
  v22 = type metadata accessor for DeepLinkTileView(0, a2, a3, v21);
  v23 = v29;
  (*(v6 + 16))(v27, v29 + *(v22 + 40), v28);
  v31 = a2;
  v32 = v20;
  v33 = v23;
  sub_10009DFA4();
  swift_getWitnessTable();
  v24 = *(v14 + 16);
  v24(v19, v17, v13);
  v25 = *(v14 + 8);
  v25(v17, v13);
  v24(v30, v19, v13);
  return (v25)(v19, v13);
}

uint64_t sub_10007BDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v68 = a1;
  v66 = a4;
  v67 = sub_10009DC44();
  v55 = *(v67 - 8);
  __chkstk_darwin(v67);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10009D174();
  v61 = *(v63 - 8);
  v8 = __chkstk_darwin(v63);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v53 - v10;
  sub_10000375C(&qword_1000C24F8, &unk_1000A27B0);
  sub_10009DAB4();
  sub_10000375C(&qword_1000C2508, &qword_1000A3280);
  v12 = sub_10009DAB4();
  v13 = sub_10001CDC8(&qword_1000C24F0, &qword_1000C24F8, &unk_1000A27B0, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
  v78 = a3;
  v79 = v13;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_10001CDC8(&qword_1000C2500, &qword_1000C2508, &qword_1000A3280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v76 = WitnessTable;
  v77 = v15;
  v16 = swift_getWitnessTable();
  v72[0] = &type metadata for AnyShapeStyle;
  v72[1] = &type metadata for AnyShapeStyle;
  v62 = v12;
  v72[2] = v12;
  v73 = &protocol witness table for AnyShapeStyle;
  v74 = &protocol witness table for AnyShapeStyle;
  v75 = v16;
  v56 = v16;
  v17 = sub_10009D994();
  v59 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v57 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v58 = &v53 - v20;
  sub_10009E154();
  v21 = sub_10009E1A4();

  v73 = &type metadata for Color;
  v74 = &protocol witness table for Color;
  v72[0] = v21;
  sub_10009E154();
  v22 = sub_10009E1A4();

  v70 = &type metadata for Color;
  v71 = &protocol witness table for Color;
  v69 = v22;
  sub_10009D144();
  v64 = a2;
  v65 = a3;
  v24 = type metadata accessor for DeepLinkTileView(0, a2, a3, v23);
  v25 = v68 + *(v24 + 36);
  v26 = *v25;
  v27 = *(v25 + 8);
  v54 = v7;
  if (v27 == 1)
  {
    if ((v26 & 1) == 0)
    {
LABEL_3:
      sub_10009D164();
      goto LABEL_6;
    }
  }

  else
  {

    sub_10009E834();
    v28 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v26, 0);
    (*(v55 + 8))(v7, v67);
    if (LOBYTE(v72[0]) != 1)
    {
      goto LABEL_3;
    }
  }

  sub_10009D154();
LABEL_6:
  v29 = sub_100024330(v72, v73);
  __chkstk_darwin(v29);
  (*(v31 + 16))(&v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_10009DA84();
  v33 = *(v61 + 8);
  v34 = v63;
  v33(v11, v63);
  sub_100015F44(v72);
  v35 = v60;
  v69 = v32;
  sub_100070210();
  v36 = v67;
  if (!v27)
  {

    sub_10009E834();
    v37 = sub_10009DEA4();
    sub_10009D8C4();

    v38 = v54;
    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v26, 0);
    (*(v55 + 8))(v38, v36);
    if (LOBYTE(v72[0]) != 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_10009D154();
    goto LABEL_11;
  }

  if (v26)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_10009D164();
LABEL_11:
  v39 = sub_100024330(v72, v73);
  __chkstk_darwin(v39);
  (*(v41 + 16))(&v53 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_10009DA84();
  v33(v35, v34);
  v43 = sub_100015F44(v72);
  v72[0] = v42;
  __chkstk_darwin(v43);
  v44 = v65;
  *(&v53 - 4) = v64;
  *(&v53 - 3) = v44;
  v52 = v56;
  v51 = &protocol witness table for AnyShapeStyle;
  v45 = v57;
  sub_10009D984();
  swift_getWitnessTable();
  v46 = v59;
  v47 = *(v59 + 16);
  v48 = v58;
  v47(v58, v45, v17);
  v49 = *(v46 + 8);
  v49(v45, v17);
  v47(v66, v48, v17);
  return (v49)(v48, v17);
}

uint64_t sub_10007C62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v73 = a4;
  v7 = sub_10009DA04();
  v71 = *(v7 - 8);
  v72 = v7;
  __chkstk_darwin(v7);
  v70 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009DC44();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10009D174();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v61 - v17;
  sub_10000375C(&qword_1000C24F8, &unk_1000A27B0);
  v19 = sub_10009DAB4();
  v66 = *(v19 - 8);
  __chkstk_darwin(v19);
  v77 = v61 - v20;
  sub_10000375C(&qword_1000C2508, &qword_1000A3280);
  v67 = v19;
  v21 = sub_10009DAB4();
  v68 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v64 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v65 = v61 - v25;
  sub_10006FF70(v24);
  v61[2] = a2;
  v61[0] = type metadata accessor for DeepLinkTileView(0, a2, a3, v26);
  v27 = *(v61[0] + 36);
  v61[1] = a1;
  v28 = a1 + v27;
  v29 = *v28;
  v74 = *(v28 + 8);
  v69 = a3;
  v63 = v9;
  v62 = v10;
  if (v74 != 1)
  {

    sub_10009E834();
    v33 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v29, 0);
    (*(v10 + 8))(v12, v9);
    if (v83[0] == 1)
    {
      goto LABEL_6;
    }

LABEL_4:
    sub_10009D164();
    v30 = sub_100024330(v83, v84);
    __chkstk_darwin(v30);
    (*(v32 + 16))(v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    goto LABEL_7;
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_6:
  sub_10009D154();
  v34 = sub_100024330(v83, v84);
  __chkstk_darwin(v34);
  (*(v36 + 16))(v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
LABEL_7:
  v37 = sub_10009DA84();
  v38 = *(v75 + 8);
  v38(v18, v76);
  sub_100015F44(v83);
  v82 = v37;
  sub_1000700B8();
  if (v74)
  {
    if ((v29 & 1) == 0)
    {
LABEL_9:
      sub_10009D164();
      goto LABEL_12;
    }
  }

  else
  {

    sub_10009E834();
    v39 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v29, 0);
    (*(v62 + 8))(v12, v63);
    if (v83[0] != 1)
    {
      goto LABEL_9;
    }
  }

  sub_10009D154();
LABEL_12:
  v40 = sub_100024330(v83, v84);
  __chkstk_darwin(v40);
  (*(v42 + 16))(v61 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_10009DA84();
  v38(v16, v76);
  sub_100015F44(v83);
  *v83 = v43;
  v44 = v69;
  sub_10009E0B4();

  swift_getKeyPath();
  if (!v74)
  {

    sub_10009E834();
    v46 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v29, 0);
    (*(v62 + 8))(v12, v63);
    if (v83[0])
    {
      goto LABEL_14;
    }

LABEL_16:
    v45 = &enum case for ColorScheme.dark(_:);
    goto LABEL_17;
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v45 = &enum case for ColorScheme.light(_:);
LABEL_17:
  v48 = v70;
  v47 = v71;
  v49 = v72;
  (*(v71 + 104))(v70, *v45, v72);
  v50 = sub_10001CDC8(&qword_1000C24F0, &qword_1000C24F8, &unk_1000A27B0, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
  v80 = v44;
  v81 = v50;
  v51 = v67;
  WitnessTable = swift_getWitnessTable();
  v53 = v64;
  v54 = v77;
  sub_10009E074();

  (*(v47 + 8))(v48, v49);
  (*(v66 + 8))(v54, v51);
  v55 = sub_10001CDC8(&qword_1000C2500, &qword_1000C2508, &qword_1000A3280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v78 = WitnessTable;
  v79 = v55;
  swift_getWitnessTable();
  v56 = v68;
  v57 = *(v68 + 16);
  v58 = v65;
  v57(v65, v53, v21);
  v59 = *(v56 + 8);
  v59(v53, v21);
  v57(v73, v58, v21);
  return (v59)(v58, v21);
}

uint64_t sub_10007D0BC(uint64_t *a1)
{
  sub_10000375C(&qword_1000C24F8, &unk_1000A27B0);
  sub_10009DAB4();
  sub_10000375C(&qword_1000C2508, &qword_1000A3280);
  sub_10009DAB4();
  sub_10001CDC8(&qword_1000C24F0, &qword_1000C24F8, &unk_1000A27B0, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
  swift_getWitnessTable();
  sub_10001CDC8(&qword_1000C2500, &qword_1000C2508, &qword_1000A3280, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  sub_10009D994();
  swift_getWitnessTable();
  sub_10009DFB4();
  swift_getWitnessTable();
  sub_10009E284();
  return swift_getWitnessTable();
}

uint64_t sub_10007D2A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_100003714(&qword_1000C1470, &qword_1000A1108);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = sub_10009CEC4();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[8] + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10007D424(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003714(&qword_1000C1F40, &qword_1000A21A8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = sub_100003714(&qword_1000C1470, &qword_1000A1108);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = sub_10009CEC4();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 24) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t _s5StateVMa(uint64_t a1)
{
  result = qword_1000C2950;
  if (!qword_1000C2950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007D5D8(uint64_t a1)
{
  sub_10007D6DC(319);
  if (v1 <= 0x3F)
  {
    sub_10007D740(319, &qword_1000C2970, &type metadata accessor for HomeDataError);
    if (v2 <= 0x3F)
    {
      sub_10007D740(319, &qword_1000C2978, &type metadata accessor for StaticHome);
      if (v3 <= 0x3F)
      {
        sub_10009CEC4();
        if (v4 <= 0x3F)
        {
          sub_10007D794();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10007D6DC(uint64_t a1)
{
  if (!qword_1000C2960)
  {
    sub_10000375C(&qword_1000C2968, &qword_1000A32C8);
    v1 = sub_10009E944();
    if (!v2)
    {
      atomic_store(v1, &qword_1000C2960);
    }
  }
}

void sub_10007D740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10009E944();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10007D794()
{
  result = qword_1000C2980;
  if (!qword_1000C2980)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000C2980);
  }

  return result;
}

uint64_t sub_10007D850(uint64_t a1, uint64_t a2)
{
  v2[56] = a1;
  v2[57] = a2;
  v3 = sub_10009D964();
  v2[58] = v3;
  v2[59] = *(v3 - 8);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v2[63] = swift_task_alloc();
  v4 = sub_10009D2A4();
  v2[64] = v4;
  v2[65] = *(v4 - 8);
  v2[66] = swift_task_alloc();
  v5 = sub_10009D2C4();
  v2[67] = v5;
  v2[68] = *(v5 - 8);
  v2[69] = swift_task_alloc();
  v6 = sub_10009D5F4();
  v2[70] = v6;
  v2[71] = *(v6 - 8);
  v2[72] = swift_task_alloc();
  v7 = sub_10009D394();
  v2[73] = v7;
  v2[74] = *(v7 - 8);
  v2[75] = swift_task_alloc();
  sub_100003714(&qword_1000C29D0, &qword_1000A3340);
  v2[76] = swift_task_alloc();
  v8 = sub_10009D704();
  v2[77] = v8;
  v2[78] = *(v8 - 8);
  v2[79] = swift_task_alloc();
  v9 = sub_10009D894();
  v2[80] = v9;
  v2[81] = *(v9 - 8);
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = sub_100003714(&qword_1000C29D8, &qword_1000A3348);
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v10 = sub_10009D274();
  v2[89] = v10;
  v2[90] = *(v10 - 8);
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v11 = sub_10009D924();
  v2[93] = v11;
  v2[94] = *(v11 - 8);
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v12 = sub_10009D8B4();
  v2[104] = v12;
  v2[105] = *(v12 - 8);
  v2[106] = swift_task_alloc();
  v13 = sub_10009D864();
  v2[107] = v13;
  v2[108] = *(v13 - 8);
  v2[109] = swift_task_alloc();
  sub_100003714(&qword_1000C29E0, &qword_1000A3350);
  v2[110] = swift_task_alloc();
  v14 = sub_10009CF14();
  v2[111] = v14;
  v2[112] = *(v14 - 8);
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v2[120] = swift_task_alloc();
  v15 = sub_10009D844();
  v2[121] = v15;
  v2[122] = *(v15 - 8);
  v2[123] = swift_task_alloc();
  sub_100003714(&qword_1000C29E8, &qword_1000A3358);
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();
  sub_100003714(&qword_1000C0C78, &qword_1000A0390);
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  sub_100003714(&qword_1000C1470, &qword_1000A1108);
  v2[128] = swift_task_alloc();
  v16 = sub_10009CF94();
  v2[129] = v16;
  v2[130] = *(v16 - 8);
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();

  return _swift_task_switch(sub_10007E074, 0, 0);
}

uint64_t sub_10007E074()
{
  v0[133] = sub_10009D024();
  v0[134] = sub_10009D1E4();
  v0[135] = sub_10009D1D4();
  v0[136] = sub_1000857AC(&qword_1000C10D0, &type metadata accessor for WidgetActor, &protocol conformance descriptor for WidgetActor);
  v2 = sub_10009E714();

  return _swift_task_switch(sub_10007E14C, v2, v1);
}

uint64_t sub_10007E14C()
{

  *(v0 + 1096) = sub_10009D004();

  return _swift_task_switch(sub_10007E1C0, 0, 0);
}

uint64_t sub_10007E1C0()
{
  v1 = v0[125];
  sub_10009D884();
  v2 = sub_10009D824();
  v0[138] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v0[139] = v4;
  v0[140] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2))
  {
    sub_1000160CC(v0[125], &qword_1000C29E8, &qword_1000A3358);
    v5 = 1;
  }

  else
  {
    v6 = v0[125];
    v7 = v0[123];
    v8 = v0[122];
    v9 = v0[121];
    sub_10009D814();
    sub_1000160CC(v6, &qword_1000C29E8, &qword_1000A3358);
    sub_10009D834();
    (*(v8 + 8))(v7, v9);
    v5 = 0;
  }

  v10 = v0[127];
  v11 = v0[111];
  v12 = *(v0[112] + 56);
  v0[141] = v12;
  v12(v10, v5, 1, v11);
  v13 = swift_task_alloc();
  v0[142] = v13;
  *v13 = v0;
  v13[1] = sub_10007E374;
  v14 = v0[128];
  v15 = v0[127];

  return WidgetDataModel.home(_:)(v14, v15);
}

uint64_t sub_10007E374()
{
  v2 = *v1;

  v3 = *(v2 + 1016);
  if (v0)
  {

    sub_1000160CC(v3, &qword_1000C0C78, &qword_1000A0390);
    v4 = sub_1000834F8;
  }

  else
  {
    sub_1000160CC(v3, &qword_1000C0C78, &qword_1000A0390);

    v4 = sub_10007E500;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10007E500()
{
  v151 = v0;
  v1 = v0[132];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[128];
  v5 = v0[110];
  v6 = v0[108];
  v7 = v0[107];
  v8 = *(v2 + 56);
  v0[143] = v8;
  v0[144] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  sub_10009D874();
  if ((*(v6 + 48))(v5, 1, v7))
  {
    v9 = v0[110];
    (*(v0[130] + 8))(v0[132], v0[129]);
    sub_1000160CC(v9, &qword_1000C29E0, &qword_1000A3350);
    v10 = &NSObject__properties;
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v11 = v0[84];
    v12 = v0[81];
    v13 = v0[80];
    v14 = v0[57];
    v15 = qword_1000C8318;
    sub_10009D934();
    v16 = *(v12 + 16);
    v16(v11, v14, v13);
    v17 = sub_10009D904();
    v141 = sub_10009E824();
    v18 = os_log_type_enabled(v17, v141);
    v19 = v0[97];
    v20 = v0[94];
    v21 = v0[93];
    v22 = v0[84];
    v23 = v0[81];
    v24 = v0[80];
    v146 = v16;
    if (v18)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v150[0] = v26;
      *v25 = 136315138;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
      v134 = v19;
      v136 = v21;
      v27 = sub_10009ED04();
      v29 = v28;
      (*(v23 + 8))(v22, v24);
      v30 = sub_10002AD68(v27, v29, v150);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v17, v141, "TileControl.State.build(from:) Missing configuration for intent %s", v25, 0xCu);
      sub_100015F44(v26);
      v10 = &NSObject__properties;

      v16 = v146;

      (*(v20 + 8))(v134, v136);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
      (*(v20 + 8))(v19, v21);
    }

    v61 = v0[58];
    v62 = v0[59];
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
    v63 = swift_allocError();
    (*(v62 + 104))(v64, enum case for HomeDataError.noSelectedAccessories(_:), v61);
    swift_willThrow();
    v0[177] = v63;
    v0[176] = v16;
    v0[52] = v63;
    swift_errorRetain();
    sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
    if (swift_dynamicCast())
    {
      v66 = v0[61];
      v65 = v0[62];
      v67 = v0[58];
      v68 = v0[59];

      (*(v68 + 32))(v66, v65, v67);
      if (*&v10[348] != -1)
      {
        swift_once();
      }

      v69 = v0[83];
      v70 = v0[81];
      v71 = v0[80];
      v73 = v0[60];
      v72 = v0[61];
      v74 = v0[58];
      v75 = v0[59];
      v76 = v0[57];
      v77 = qword_1000C8318;
      sub_10009D934();
      v78 = *(v75 + 16);
      v0[178] = v78;
      v0[179] = (v75 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      log = v78;
      (v78)(v73, v72, v74);
      v0[180] = (v70 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v146(v69, v76, v71);
      v79 = sub_10009D904();
      v135 = sub_10009E824();
      v80 = os_log_type_enabled(v79, v135);
      v81 = v0[96];
      v82 = v0[94];
      v83 = v0[83];
      v84 = v0[81];
      v144 = v0[80];
      v148 = v0[93];
      v86 = v0[59];
      v85 = v0[60];
      v87 = v0[58];
      if (v80)
      {
        v131 = v0[96];
        v88 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v150[0] = v129;
        *v88 = 138412546;
        swift_allocError();
        v139 = v82;
        (log)(v89, v85, v87);
        v90 = _swift_stdlib_bridgeErrorToNSError();
        loga = v79;
        v93 = *(v86 + 8);
        v92 = v86 + 8;
        v91 = v93;
        v93(v85, v87);
        *(v88 + 4) = v90;
        *v128 = v90;
        *(v88 + 12) = 2080;
        sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
        v94 = sub_10009ED04();
        v96 = v95;
        (*(v84 + 8))(v83, v144);
        v97 = sub_10002AD68(v94, v96, v150);

        *(v88 + 14) = v97;
        _os_log_impl(&_mh_execute_header, loga, v135, "TileControl.State.build(from:) Error %@ building snapshot for %s", v88, 0x16u);
        sub_1000160CC(v128, &qword_1000C0E28, &qword_1000A1DC0);

        sub_100015F44(v129);

        (*(v139 + 8))(v131, v148);
      }

      else
      {

        (*(v84 + 8))(v83, v144);
        v118 = *(v86 + 8);
        v92 = v86 + 8;
        v91 = v118;
        v118(v85, v87);
        (*(v82 + 8))(v81, v148);
      }

      v0[182] = v91;
      v0[181] = v92;
      v0[183] = sub_10009D1D4();
      v119 = sub_10009E714();
      v121 = v120;
      v122 = sub_10008286C;
    }

    else
    {

      if (*&v10[348] != -1)
      {
        swift_once();
      }

      v98 = v0[82];
      v99 = v0[81];
      v100 = v0[80];
      v101 = v0[57];
      v102 = qword_1000C8318;
      sub_10009D934();
      v0[187] = (v99 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v16(v98, v101, v100);
      v103 = sub_10009D904();
      v104 = sub_10009E824();
      v105 = os_log_type_enabled(v103, v104);
      v106 = v0[95];
      v107 = v0[94];
      v108 = v0[93];
      v109 = v0[82];
      v110 = v0[81];
      v111 = v0[80];
      if (v105)
      {
        v149 = v0[93];
        v112 = swift_slowAlloc();
        v140 = v104;
        v113 = swift_slowAlloc();
        v150[0] = v113;
        *v112 = 136315138;
        sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
        v114 = sub_10009ED04();
        v145 = v106;
        v116 = v115;
        (*(v110 + 8))(v109, v111);
        v117 = sub_10002AD68(v114, v116, v150);

        *(v112 + 4) = v117;
        _os_log_impl(&_mh_execute_header, v103, v140, "TileControl.State.build(from:) Error building snapshot for %s", v112, 0xCu);
        sub_100015F44(v113);

        (*(v107 + 8))(v145, v149);
      }

      else
      {

        (*(v110 + 8))(v109, v111);
        (*(v107 + 8))(v106, v108);
      }

      v0[188] = sub_10009D1D4();
      v119 = sub_10009E714();
      v121 = v123;
      v122 = sub_100082ED8;
    }
  }

  else
  {
    v142 = v0[139];
    v137 = v0[138];
    v31 = v0[124];
    v32 = v0[119];
    v130 = v0[120];
    v33 = v0[112];
    v34 = v0[110];
    v35 = v0[109];
    v36 = v0[108];
    v37 = v0[107];
    v38 = v0[106];
    v39 = v0[105];
    v126 = v0[104];
    v127 = v0[111];
    (*(v36 + 16))(v35, v34, v37);
    sub_1000160CC(v34, &qword_1000C29E0, &qword_1000A3350);
    sub_10009D854();
    (*(v36 + 8))(v35, v37);
    sub_10009D8A4();
    (*(v39 + 8))(v38, v126);
    v40 = *(v33 + 32);
    v0[145] = v40;
    v0[146] = (v33 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v40(v130, v32, v127);
    sub_10009CF64();
    sub_10009D884();
    LODWORD(v35) = v142(v31, 1, v137);
    sub_1000160CC(v31, &qword_1000C29E8, &qword_1000A3358);
    if (v35 == 1)
    {
      if (qword_1000C0AE0 != -1)
      {
        swift_once();
      }

      v41 = v0[118];
      v42 = v0[117];
      v43 = v0[112];
      v44 = v0[111];
      v45 = qword_1000C8318;
      sub_10009D934();
      (*(v43 + 16))(v42, v41, v44);
      v46 = sub_10009D904();
      v47 = sub_10009E824();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v0[117];
      v50 = v0[112];
      v51 = v0[111];
      v52 = v0[103];
      v53 = v0[94];
      v54 = v0[93];
      if (v48)
      {
        v147 = v0[93];
        v55 = swift_slowAlloc();
        v138 = v47;
        v56 = swift_slowAlloc();
        v150[0] = v56;
        *v55 = 136446210;
        sub_1000857AC(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v57 = sub_10009ED04();
        v143 = v52;
        v59 = v58;
        (*(v50 + 8))(v49, v51);
        v60 = sub_10002AD68(v57, v59, v150);

        *(v55 + 4) = v60;
        _os_log_impl(&_mh_execute_header, v46, v138, "TileControl.State.build(from:) No configured home, falling back to: %{public}s", v55, 0xCu);
        sub_100015F44(v56);

        (*(v53 + 8))(v143, v147);
      }

      else
      {

        (*(v50 + 8))(v49, v51);
        (*(v53 + 8))(v52, v54);
      }
    }

    v0[147] = sub_10009D1D4();
    v119 = sub_10009E714();
    v121 = v124;
    v122 = sub_10007F27C;
  }

  return _swift_task_switch(v122, v119, v121);
}

uint64_t sub_10007F27C()
{

  *(v0 + 1184) = sub_10009D004();
  v1 = swift_task_alloc();
  *(v0 + 1192) = v1;
  *v1 = v0;
  v1[1] = sub_10007F324;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_10007F324(uint64_t a1)
{
  *(*v1 + 1200) = a1;

  sub_10009D774();
  sub_1000857AC(&qword_1000C2A00, &type metadata accessor for WidgetSnapshotModerator, &protocol conformance descriptor for WidgetSnapshotModerator);
  v3 = sub_10009E714();

  return _swift_task_switch(sub_10007F498, v3, v2);
}

uint64_t sub_10007F498()
{
  *(v0 + 1208) = sub_10009D744();

  return _swift_task_switch(sub_10007F50C, 0, 0);
}

uint64_t sub_10007F50C(uint64_t a1)
{
  *(v1 + 1216) = sub_10009D1D4();
  v3 = sub_10009E714();

  return _swift_task_switch(sub_10007F5A0, v3, v2);
}

uint64_t sub_10007F5A0()
{

  *(v0 + 1224) = sub_10009D004();

  return _swift_task_switch(sub_10007F614, 0, 0);
}

uint64_t sub_10007F614()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 944);
  v4 = *(v0 + 896);
  v5 = *(v0 + 888);
  v6 = *(v0 + 680);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);
  v9 = *(v0 + 624);
  v10 = *(v0 + 456);
  v11 = *(v4 + 16);
  v4 += 16;
  *(v0 + 1232) = v11;
  *(v0 + 1240) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v3, v5);
  *(v0 + 1248) = (v4 + 40) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v1(v2, 0, 1, v5);
  v12 = *(v7 + 16);
  *(v0 + 1256) = v12;
  *(v0 + 1264) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v6, v10, v8);
  *(v0 + 1272) = sub_100003714(&qword_1000C2A08, &qword_1000A3360);
  *(v0 + 1280) = *(v9 + 72);
  *(v0 + 1536) = *(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10009F8F0;
  sub_10009D6E4();
  sub_10009D6D4();
  *(v0 + 424) = v13;
  *(v0 + 1288) = sub_1000857AC(&qword_1000C2A10, &type metadata accessor for WidgetRefreshOptions, &protocol conformance descriptor for WidgetRefreshOptions);
  *(v0 + 1296) = sub_100003714(&qword_1000C2A18, &qword_1000A3368);
  *(v0 + 1304) = sub_1000856FC();
  sub_10009E984();
  v14 = sub_1000857AC(&qword_1000C29F8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
  *(v0 + 1312) = v14;
  sub_10009D2D4();
  swift_storeEnumTagMultiPayload();
  v15 = swift_task_alloc();
  *(v0 + 1320) = v15;
  *v15 = v0;
  v15[1] = sub_10007F8F8;
  v16 = *(v0 + 736);
  v17 = *(v0 + 704);
  v18 = *(v0 + 640);

  return WidgetDataModel.snapshotOf<A>(updateType:)(v16, v17, v18, v14);
}

uint64_t sub_10007F8F8()
{
  *(*v1 + 1328) = v0;

  if (v0)
  {
    v2 = sub_100083E58;
  }

  else
  {
    v2 = sub_10007FA2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007FA2C()
{
  v238 = v0;
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1048);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1032);
  sub_10009D234();
  v5.super.isa = v1;
  v6 = sub_10009CF74(v5);
  *(v0 + 1336) = v6;
  v7 = *(v3 + 8);
  *(v0 + 1344) = v7;
  *(v0 + 1352) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  v225 = v7;
  if (!v6)
  {
    v19 = *(v0 + 1208);
    v214 = *(v0 + 1032);
    v220 = *(v0 + 1056);
    v203 = *(v0 + 944);
    v208 = *(v0 + 960);
    v20 = *(v0 + 896);
    v21 = *(v0 + 888);
    v22 = *(v0 + 736);
    v23 = *(v0 + 720);
    v24 = *(v0 + 712);
    v25 = *(v0 + 464);
    v26 = *(v0 + 472);
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
    v15 = swift_allocError();
    (*(v26 + 104))(v27, enum case for HomeDataError.noHomes(_:), v25);
    swift_willThrow();

    (*(v23 + 8))(v22, v24);
    v28 = *(v20 + 8);
    v28(v203, v21);
    v28(v208, v21);
    v225(v220, v214);
    goto LABEL_11;
  }

  if ([v6 hf_currentUserRoarUpdateRequiredForUnsupportedLegacyHomeHubVersion])
  {
    v213 = *(v0 + 1032);
    v219 = *(v0 + 1056);
    v207 = *(v0 + 960);
    v198 = *(v0 + 1208);
    v202 = *(v0 + 944);
    v8 = *(v0 + 896);
    v9 = *(v0 + 888);
    v10 = *(v0 + 736);
    v11 = *(v0 + 720);
    v12 = *(v0 + 712);
    v14 = *(v0 + 464);
    v13 = *(v0 + 472);
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
    v15 = swift_allocError();
    v17 = v16;
    v18 = &enum case for HomeDataError.updateToHH2Required(_:);
LABEL_9:
    (*(v13 + 104))(v17, *v18, v14);
    swift_willThrow();

    (*(v11 + 8))(v10, v12);
    v34 = *(v8 + 8);
    v34(v202, v9);
    v34(v207, v9);
    v36 = v213;
    v35 = v219;
LABEL_10:
    v225(v35, v36);
LABEL_11:
    v37 = *(v0 + 1256);
    *(v0 + 1416) = v15;
    *(v0 + 1408) = v37;
    *(v0 + 416) = v15;
    swift_errorRetain();
    sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
    if (swift_dynamicCast())
    {
      v39 = *(v0 + 488);
      v38 = *(v0 + 496);
      v40 = *(v0 + 464);
      v41 = *(v0 + 472);

      (*(v41 + 32))(v39, v38, v40);
      if (qword_1000C0AE0 != -1)
      {
        swift_once();
      }

      v232 = *(v0 + 664);
      v42 = *(v0 + 648);
      v43 = *(v0 + 640);
      v45 = *(v0 + 480);
      v44 = *(v0 + 488);
      v46 = *(v0 + 464);
      v47 = *(v0 + 472);
      v48 = *(v0 + 456);
      v49 = qword_1000C8318;
      sub_10009D934();
      v50 = *(v47 + 16);
      *(v0 + 1424) = v50;
      *(v0 + 1432) = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v215 = v50;
      v50(v45, v44, v46);
      *(v0 + 1440) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v37(v232, v48, v43);
      v51 = sub_10009D904();
      v221 = sub_10009E824();
      v226 = v51;
      v52 = os_log_type_enabled(v51, v221);
      v53 = *(v0 + 768);
      v54 = *(v0 + 752);
      v233 = *(v0 + 744);
      v55 = *(v0 + 664);
      v56 = *(v0 + 648);
      v57 = *(v0 + 640);
      v59 = *(v0 + 472);
      v58 = *(v0 + 480);
      v60 = *(v0 + 464);
      if (v52)
      {
        v209 = *(v0 + 752);
        v61 = swift_slowAlloc();
        v195 = v55;
        v62 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        v237[0] = v204;
        *v61 = 138412546;
        sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
        swift_allocError();
        v199 = v53;
        v215(v63, v58, v60);
        v64 = _swift_stdlib_bridgeErrorToNSError();
        v67 = *(v59 + 8);
        v65 = v59 + 8;
        v66 = v67;
        v67(v58, v60);
        *(v61 + 4) = v64;
        *v62 = v64;
        v68 = v62;
        *(v61 + 12) = 2080;
        sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
        v69 = sub_10009ED04();
        v71 = v70;
        (*(v56 + 8))(v195, v57);
        v72 = sub_10002AD68(v69, v71, v237);

        *(v61 + 14) = v72;
        _os_log_impl(&_mh_execute_header, v226, v221, "TileControl.State.build(from:) Error %@ building snapshot for %s", v61, 0x16u);
        sub_1000160CC(v68, &qword_1000C0E28, &qword_1000A1DC0);

        sub_100015F44(v204);

        (*(v209 + 8))(v199, v233);
      }

      else
      {

        (*(v56 + 8))(v55, v57);
        v93 = *(v59 + 8);
        v65 = v59 + 8;
        v66 = v93;
        v93(v58, v60);
        (*(v54 + 8))(v53, v233);
      }

      *(v0 + 1456) = v66;
      *(v0 + 1448) = v65;
      *(v0 + 1464) = sub_10009D1D4();
      v94 = sub_10009E714();
      v96 = v95;
      v97 = sub_10008286C;
    }

    else
    {

      if (qword_1000C0AE0 != -1)
      {
        swift_once();
      }

      v73 = *(v0 + 656);
      v74 = *(v0 + 648);
      v75 = *(v0 + 640);
      v76 = *(v0 + 456);
      v77 = qword_1000C8318;
      sub_10009D934();
      *(v0 + 1496) = (v74 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v37(v73, v76, v75);
      v78 = sub_10009D904();
      v79 = sub_10009E824();
      v80 = os_log_type_enabled(v78, v79);
      v81 = *(v0 + 760);
      v82 = *(v0 + 752);
      v83 = *(v0 + 744);
      v84 = *(v0 + 656);
      v85 = *(v0 + 648);
      v86 = *(v0 + 640);
      if (v80)
      {
        v234 = *(v0 + 744);
        v87 = swift_slowAlloc();
        v222 = v79;
        v88 = swift_slowAlloc();
        v237[0] = v88;
        *v87 = 136315138;
        sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
        v89 = sub_10009ED04();
        v227 = v81;
        v91 = v90;
        (*(v85 + 8))(v84, v86);
        v92 = sub_10002AD68(v89, v91, v237);

        *(v87 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v78, v222, "TileControl.State.build(from:) Error building snapshot for %s", v87, 0xCu);
        sub_100015F44(v88);

        (*(v82 + 8))(v227, v234);
      }

      else
      {

        (*(v85 + 8))(v84, v86);
        (*(v82 + 8))(v81, v83);
      }

      *(v0 + 1504) = sub_10009D1D4();
      v94 = sub_10009E714();
      v96 = v98;
      v97 = sub_100082ED8;
    }

    goto LABEL_24;
  }

  v29.super.isa = [v6 currentUser];
  isa = v29.super.isa;
  v31 = sub_10009E8A4(v29);

  if (v31)
  {
    v213 = *(v0 + 1032);
    v219 = *(v0 + 1056);
    v207 = *(v0 + 960);
    v198 = *(v0 + 1208);
    v202 = *(v0 + 944);
    v8 = *(v0 + 896);
    v9 = *(v0 + 888);
    v10 = *(v0 + 736);
    v11 = *(v0 + 720);
    v12 = *(v0 + 712);
    v14 = *(v0 + 464);
    v13 = *(v0 + 472);
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
    v15 = swift_allocError();
    v17 = v32;
    v18 = &enum case for HomeDataError.noAccessOutsideOfScheduleForRestrictedGuest(_:);
    goto LABEL_9;
  }

  if ([v6 hf_isCurrentRestrictedGuestAwayFromHome])
  {
    v213 = *(v0 + 1032);
    v219 = *(v0 + 1056);
    v207 = *(v0 + 960);
    v198 = *(v0 + 1208);
    v202 = *(v0 + 944);
    v8 = *(v0 + 896);
    v9 = *(v0 + 888);
    v10 = *(v0 + 736);
    v11 = *(v0 + 720);
    v12 = *(v0 + 712);
    v14 = *(v0 + 464);
    v13 = *(v0 + 472);
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
    v15 = swift_allocError();
    v17 = v33;
    v18 = &enum case for HomeDataError.noAccessAwayFromHomeForRestrictedGuest(_:);
    goto LABEL_9;
  }

  if (([v6 hf_hasEnabledResident] & 1) == 0)
  {
    sub_100085760();
    if ((sub_10009E854() & 1) == 0)
    {
      v213 = *(v0 + 1032);
      v219 = *(v0 + 1056);
      v207 = *(v0 + 960);
      v198 = *(v0 + 1208);
      v202 = *(v0 + 944);
      v8 = *(v0 + 896);
      v9 = *(v0 + 888);
      v10 = *(v0 + 736);
      v11 = *(v0 + 720);
      v12 = *(v0 + 712);
      v14 = *(v0 + 464);
      v13 = *(v0 + 472);
      sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
      v15 = swift_allocError();
      v17 = v111;
      v18 = &enum case for HomeDataError.noResident(_:);
      goto LABEL_9;
    }
  }

  if (([*(v0 + 1208) hf_canAccessHomeRemotely:v6] & 1) == 0)
  {
    sub_100085760();
    if ((sub_10009E854() & 1) == 0)
    {
      v213 = *(v0 + 1032);
      v219 = *(v0 + 1056);
      v207 = *(v0 + 960);
      v198 = *(v0 + 1208);
      v202 = *(v0 + 944);
      v8 = *(v0 + 896);
      v9 = *(v0 + 888);
      v10 = *(v0 + 736);
      v11 = *(v0 + 720);
      v12 = *(v0 + 712);
      v14 = *(v0 + 464);
      v13 = *(v0 + 472);
      sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
      v15 = swift_allocError();
      v17 = v132;
      v18 = &enum case for HomeDataError.noRemoteAccess(_:);
      goto LABEL_9;
    }
  }

  sub_10009D264();
  if (!*(v0 + 80))
  {
    v224 = v6;
    sub_1000160CC(v0 + 56, &qword_1000C1F48, &qword_1000A21B0);
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v112 = *(v0 + 1232);
    v113 = *(v0 + 960);
    v114 = *(v0 + 904);
    v115 = *(v0 + 888);
    v116 = qword_1000C8318;
    sub_10009D934();
    v112(v114, v113, v115);
    v117 = sub_10009D904();
    v118 = sub_10009E824();
    v119 = os_log_type_enabled(v117, v118);
    v120 = *(v0 + 904);
    v121 = *(v0 + 896);
    v122 = *(v0 + 888);
    v123 = *(v0 + 784);
    v124 = *(v0 + 752);
    v125 = *(v0 + 744);
    if (v119)
    {
      v210 = v118;
      v126 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v237[0] = v205;
      *v126 = 136446210;
      sub_1000857AC(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v196 = v125;
      v200 = v123;
      v127 = v117;
      v128 = sub_10009ED04();
      v130 = v129;
      v217 = *(v121 + 8);
      v217(v120, v122);
      v131 = sub_10002AD68(v128, v130, v237);

      *(v126 + 4) = v131;
      _os_log_impl(&_mh_execute_header, v127, v210, "TileControl.State.build(from:) Snapshot missing item with ID %{public}s", v126, 0xCu);
      sub_100015F44(v205);

      (*(v124 + 8))(v200, v196);
    }

    else
    {

      v217 = *(v121 + 8);
      v217(v120, v122);
      (*(v124 + 8))(v123, v125);
    }

    v149 = *(v0 + 1208);
    v206 = *(v0 + 1032);
    v211 = *(v0 + 1056);
    v197 = *(v0 + 944);
    v201 = *(v0 + 960);
    v150 = *(v0 + 888);
    v151 = *(v0 + 736);
    v152 = *(v0 + 720);
    v153 = *(v0 + 712);
    v155 = *(v0 + 464);
    v154 = *(v0 + 472);
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
    v15 = swift_allocError();
    (*(v154 + 104))(v156, enum case for HomeDataError.noSelectedAccessories(_:), v155);
    swift_willThrow();

    (*(v152 + 8))(v151, v153);
    v217(v197, v150);
    v217(v201, v150);
    v36 = v206;
    v35 = v211;
    goto LABEL_10;
  }

  sub_100031E64((v0 + 56), v0 + 16);
  sub_100068EBC(v0 + 16, v0 + 96);
  sub_100003714(&qword_1000C2968, &qword_1000A32C8);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 592) + 8))(*(v0 + 600), *(v0 + 584));
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v235 = qword_1000C8318;
    sub_10009D934();
    sub_100068EBC(v0 + 16, v0 + 376);
    v99 = sub_10009D904();
    v100 = sub_10009E844();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = *(v0 + 928);
      v102 = *(v0 + 896);
      v103 = *(v0 + 888);
      v228 = *(v0 + 816);
      v216 = *(v0 + 752);
      v223 = *(v0 + 744);
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v237[0] = v105;
      *v104 = 136315138;
      sub_100024330((v0 + 376), *(v0 + 400));
      sub_10009EAD4();
      sub_1000857AC(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v106 = sub_10009ED04();
      v108 = v107;
      (*(v102 + 8))(v101, v103);
      sub_100015F44((v0 + 376));
      v109 = sub_10002AD68(v106, v108, v237);

      *(v104 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v99, v100, "TileControl.State.build(from:) Fetching control %s action set", v104, 0xCu);
      sub_100015F44(v105);

      v110 = v228;
      v229 = *(v216 + 8);
      v229(v110, v223);
    }

    else
    {
      v157 = *(v0 + 816);
      v158 = *(v0 + 752);
      v159 = *(v0 + 744);

      v229 = *(v158 + 8);
      v229(v157, v159);
      sub_100015F44((v0 + 376));
    }

    v194 = *(v0 + 1256);
    v160 = *(v0 + 1128);
    v161 = *(v0 + 1008);
    v162 = *(v0 + 888);
    v191 = *(v0 + 680);
    v192 = *(v0 + 640);
    v163 = *(v0 + 456);
    (*(v0 + 1232))(v161, *(v0 + 944), v162);
    v160(v161, 0, 1, v162);
    sub_100003714(&qword_1000C0E88, &unk_1000A08E0);
    *(swift_allocObject() + 16) = xmmword_10009F8D0;
    sub_100024330((v0 + 16), *(v0 + 40));
    sub_10009EAD4();
    v194(v191, v163, v192);
    v164 = swift_allocObject();
    *(v164 + 16) = xmmword_10009F8D0;
    sub_10009D6F4();
    *(v0 + 440) = v164;
    sub_10009E984();
  }

  else
  {
    sub_100003714(&qword_1000C2A28, &qword_1000A3370);
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_10009F8D0;
    sub_100068EBC(v0 + 16, v133 + 32);
    v134 = sub_10009D254();

    v135 = *(v134 + 16);
    if (v135)
    {
      v136 = *(v0 + 896);
      v137 = *(v0 + 568);
      v237[0] = _swiftEmptyArrayStorage;
      sub_10001BC00(0, v135, 0);
      v138 = _swiftEmptyArrayStorage;
      v139 = *(v137 + 16);
      v137 += 16;
      v236 = v139;
      v140 = v134 + ((*(v137 + 64) + 32) & ~*(v137 + 64));
      v230 = *(v137 + 56);
      v141 = (v137 - 8);
      do
      {
        v142 = *(v0 + 576);
        v143 = *(v0 + 560);
        v236(v142, v140, v143);
        sub_10009D5E4();
        (*v141)(v142, v143);
        v237[0] = v138;
        v145 = *(v138 + 2);
        v144 = *(v138 + 3);
        if (v145 >= v144 >> 1)
        {
          sub_10001BC00((v144 > 1), v145 + 1, 1);
          v138 = v237[0];
        }

        v146 = *(v0 + 1160);
        v147 = *(v0 + 920);
        v148 = *(v0 + 888);
        *(v138 + 2) = v145 + 1;
        v146(&v138[((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v145], v147, v148);
        v140 += v230;
        --v135;
      }

      while (v135);
    }

    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v235 = qword_1000C8318;
    sub_10009D934();
    sub_100068EBC(v0 + 16, v0 + 136);

    v165 = sub_10009D904();
    v166 = sub_10009E844();

    if (os_log_type_enabled(v165, v166))
    {
      v167 = *(v0 + 928);
      v168 = *(v0 + 896);
      v169 = *(v0 + 888);
      v231 = *(v0 + 808);
      v212 = *(v0 + 752);
      v218 = *(v0 + 744);
      v170 = swift_slowAlloc();
      v237[0] = swift_slowAlloc();
      *v170 = 136315394;
      sub_100024330((v0 + 136), *(v0 + 160));
      sub_10009EAD4();
      sub_1000857AC(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v171 = sub_10009ED04();
      v173 = v172;
      (*(v168 + 8))(v167, v169);
      sub_100015F44((v0 + 136));
      v174 = sub_10002AD68(v171, v173, v237);

      *(v170 + 4) = v174;
      *(v170 + 12) = 2080;
      v175 = sub_10009E6B4();
      v177 = sub_10002AD68(v175, v176, v237);

      *(v170 + 14) = v177;
      _os_log_impl(&_mh_execute_header, v165, v166, "TileControl.State.build(from:) Fetching control %s characteristics %s", v170, 0x16u);
      swift_arrayDestroy();

      v178 = v231;
      v229 = *(v212 + 8);
      v229(v178, v218);
    }

    else
    {
      v179 = *(v0 + 808);
      v180 = *(v0 + 752);
      v181 = *(v0 + 744);

      v229 = *(v180 + 8);
      v229(v179, v181);
      sub_100015F44((v0 + 136));
    }

    v193 = *(v0 + 1256);
    v190 = *(v0 + 1128);
    v182 = *(v0 + 1008);
    v183 = *(v0 + 888);
    v184 = *(v0 + 680);
    v185 = *(v0 + 640);
    v186 = *(v0 + 456);
    (*(v0 + 1232))(v182, *(v0 + 944), v183);
    v190(v182, 0, 1, v183);
    v193(v184, v186, v185);
    v187 = swift_allocObject();
    *(v187 + 16) = xmmword_10009F8D0;
    sub_10009D6F4();
    *(v0 + 432) = v187;
    sub_10009E984();
  }

  sub_10009D534();
  *(v0 + 1368) = v235;
  *(v0 + 1360) = v229;
  *(v0 + 1376) = sub_10009D1D4();
  v94 = sub_10009E714();
  v96 = v188;
  v97 = sub_10008136C;
LABEL_24:

  return _swift_task_switch(v97, v94, v96);
}

uint64_t sub_10008136C()
{

  *(v0 + 1384) = sub_10009D004();

  return _swift_task_switch(sub_1000813E0, 0, 0);
}

uint64_t sub_1000813E0()
{
  sub_1000857F4(v0[76], v0[87]);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[174] = v1;
  *v1 = v0;
  v1[1] = sub_1000814AC;
  v2 = v0[164];
  v3 = v0[91];
  v4 = v0[87];
  v5 = v0[80];

  return WidgetDataModel.snapshotOf<A>(updateType:)(v3, v4, v5, v2);
}

uint64_t sub_1000814AC()
{
  *(*v1 + 1400) = v0;

  if (v0)
  {
    v2 = sub_1000845A8;
  }

  else
  {
    v2 = sub_1000815E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000815E0()
{
  v178 = v0;
  v1 = *(v0 + 736);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v171 = *(v3 + 8);
  v171(v1, v4);
  (*(v3 + 32))(v1, v2, v4);
  sub_10009D264();
  if (*(v0 + 240))
  {
    sub_100031E64((v0 + 216), v0 + 176);
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 1368);
    sub_10009D934();
    sub_100068EBC(v0 + 176, v0 + 256);
    sub_100068EBC(v0 + 176, v0 + 296);
    sub_100068EBC(v0 + 176, v0 + 336);
    v6 = sub_10009D904();
    v7 = sub_10009E844();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 928);
      v9 = *(v0 + 896);
      v10 = *(v0 + 888);
      v157 = *(v0 + 752);
      v162 = *(v0 + 744);
      v167 = *(v0 + 800);
      v138 = *(v0 + 552);
      v142 = *(v0 + 544);
      v145 = *(v0 + 536);
      v11 = *(v0 + 528);
      v12 = *(v0 + 520);
      v137 = *(v0 + 512);
      v140 = *(v0 + 504);
      v13 = swift_slowAlloc();
      v177[0] = swift_slowAlloc();
      *v13 = 136315650;
      v149 = v7;
      sub_100024330((v0 + 256), *(v0 + 280));
      sub_10009EAD4();
      sub_1000857AC(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = sub_10009ED04();
      v16 = v15;
      (*(v9 + 8))(v8, v10);
      sub_100015F44((v0 + 256));
      v17 = sub_10002AD68(v14, v16, v177);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      sub_100024330((v0 + 296), *(v0 + 320));
      v18 = sub_10009D364();
      v20 = v19;
      sub_100015F44((v0 + 296));
      v21 = sub_10002AD68(v18, v20, v177);

      *(v13 + 14) = v21;
      *(v13 + 22) = 2080;
      sub_100024330((v0 + 336), *(v0 + 360));
      (*(v12 + 104))(v11, enum case for StatusContext.tile(_:), v137);
      sub_10009D2B4();
      (*(v12 + 8))(v11, v137);
      v22 = sub_10009D4F4();
      (*(*(v22 - 8) + 56))(v140, 1, 1, v22);
      v23 = sub_10009D324();
      v25 = v24;
      sub_1000160CC(v140, &qword_1000C0C80, &qword_1000A1E10);
      (*(v142 + 8))(v138, v145);
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v23 = 0;
        v26 = 0xE000000000000000;
      }

      sub_100015F44((v0 + 336));
      v27 = sub_10002AD68(v23, v26, v177);

      *(v13 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v6, v149, "TileControl.State.build(from:) Fetched control %s (%s, %s", v13, 0x20u);
      swift_arrayDestroy();

      (*(v157 + 8))(v167, v162);
    }

    else
    {
      v48 = *(v0 + 1360);
      v49 = *(v0 + 800);
      v50 = *(v0 + 744);

      v48(v49, v50);
      sub_100015F44((v0 + 256));
      sub_100015F44((v0 + 296));
      sub_100015F44((v0 + 336));
    }

    v164 = *(v0 + 1344);
    v143 = *(v0 + 1336);
    v135 = *(v0 + 1312);
    v136 = *(v0 + 1256);
    v141 = *(v0 + 1208);
    v51 = *(v0 + 1144);
    v52 = *(v0 + 1032);
    v154 = *(v0 + 960);
    v159 = *(v0 + 1056);
    v53 = *(v0 + 896);
    v146 = *(v0 + 888);
    v150 = *(v0 + 944);
    v54 = *(v0 + 736);
    v139 = *(v0 + 712);
    v55 = *(v0 + 640);
    v57 = *(v0 + 464);
    v56 = *(v0 + 472);
    v58 = *(v0 + 448);
    v134 = *(v0 + 456);
    sub_100068EBC(v0 + 176, v58);
    v59 = _s5StateVMa(0);
    (*(v56 + 56))(v58 + v59[5], 1, 1, v57);
    v60 = v59[6];
    sub_10009D234();
    v51(v58 + v60, 0, 1, v52);
    v61 = (v58 + v59[8]);
    v61[3] = v55;
    v61[4] = v135;
    v62 = sub_100031E00(v61);
    v136(v62, v134, v55);
    sub_10009CEA4();

    sub_100015F44((v0 + 176));
    v171(v54, v139);
    v63 = *(v53 + 8);
    v63(v150, v146);
    v63(v154, v146);
    v164(v159, v52);
    sub_100015F44((v0 + 16));

    v64 = *(v0 + 8);

    return v64();
  }

  else
  {
    sub_1000160CC(v0 + 216, &qword_1000C1F48, &qword_1000A21B0);
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 1232);
    v29 = *(v0 + 960);
    v30 = *(v0 + 912);
    v31 = *(v0 + 888);
    v32 = *(v0 + 1368);
    sub_10009D934();
    v28(v30, v29, v31);
    v33 = sub_10009D904();
    v34 = sub_10009E824();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 1360);
    v37 = *(v0 + 912);
    v38 = *(v0 + 896);
    v39 = *(v0 + 888);
    v40 = *(v0 + 792);
    v41 = *(v0 + 744);
    if (v35)
    {
      v163 = *(v0 + 792);
      v42 = swift_slowAlloc();
      v158 = v41;
      v43 = swift_slowAlloc();
      v177[0] = v43;
      *v42 = 136315138;
      sub_1000857AC(&qword_1000C0C90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v153 = v36;
      v44 = sub_10009ED04();
      v46 = v45;
      v168 = *(v38 + 8);
      v168(v37, v39);
      v47 = sub_10002AD68(v44, v46, v177);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v33, v34, "TileControl.State.build(from:) Snapshot missing item with ID %s", v42, 0xCu);
      sub_100015F44(v43);

      v153(v163, v158);
    }

    else
    {

      v168 = *(v38 + 8);
      v168(v37, v39);
      v36(v40, v41);
    }

    v160 = *(v0 + 1344);
    v66 = *(v0 + 1336);
    v67 = *(v0 + 1208);
    v151 = *(v0 + 1032);
    v155 = *(v0 + 1056);
    v144 = *(v0 + 944);
    v147 = *(v0 + 960);
    v68 = *(v0 + 888);
    v69 = *(v0 + 736);
    v70 = *(v0 + 712);
    v71 = *(v0 + 464);
    v72 = *(v0 + 472);
    sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
    v73 = swift_allocError();
    (*(v72 + 104))(v74, enum case for HomeDataError.noSelectedAccessories(_:), v71);
    swift_willThrow();

    v171(v69, v70);
    v168(v144, v68);
    v168(v147, v68);
    v160(v155, v151);
    sub_100015F44((v0 + 16));
    v75 = *(v0 + 1256);
    *(v0 + 1416) = v73;
    *(v0 + 1408) = v75;
    *(v0 + 416) = v73;
    swift_errorRetain();
    sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
    if (swift_dynamicCast())
    {
      v77 = *(v0 + 488);
      v76 = *(v0 + 496);
      v78 = *(v0 + 464);
      v79 = *(v0 + 472);

      (*(v79 + 32))(v77, v76, v78);
      if (qword_1000C0AE0 != -1)
      {
        swift_once();
      }

      v174 = *(v0 + 664);
      v80 = *(v0 + 648);
      v81 = *(v0 + 640);
      v83 = *(v0 + 480);
      v82 = *(v0 + 488);
      v84 = *(v0 + 464);
      v85 = *(v0 + 472);
      v86 = *(v0 + 456);
      v87 = qword_1000C8318;
      sub_10009D934();
      v88 = *(v85 + 16);
      *(v0 + 1424) = v88;
      *(v0 + 1432) = (v85 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v165 = v88;
      v88(v83, v82, v84);
      *(v0 + 1440) = (v80 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v75(v174, v86, v81);
      v89 = sub_10009D904();
      v169 = sub_10009E824();
      v90 = os_log_type_enabled(v89, v169);
      v91 = *(v0 + 768);
      v92 = *(v0 + 752);
      v93 = *(v0 + 664);
      v94 = *(v0 + 648);
      v172 = *(v0 + 640);
      v175 = *(v0 + 744);
      v96 = *(v0 + 472);
      v95 = *(v0 + 480);
      v97 = *(v0 + 464);
      if (v90)
      {
        v161 = *(v0 + 768);
        v98 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v177[0] = v152;
        *v98 = 138412546;
        swift_allocError();
        v156 = v92;
        v165(v99, v95, v97);
        v100 = _swift_stdlib_bridgeErrorToNSError();
        v166 = v89;
        v103 = *(v96 + 8);
        v102 = v96 + 8;
        v101 = v103;
        v103(v95, v97);
        *(v98 + 4) = v100;
        *v148 = v100;
        *(v98 + 12) = 2080;
        sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
        v104 = sub_10009ED04();
        v106 = v105;
        (*(v94 + 8))(v93, v172);
        v107 = sub_10002AD68(v104, v106, v177);

        *(v98 + 14) = v107;
        _os_log_impl(&_mh_execute_header, v166, v169, "TileControl.State.build(from:) Error %@ building snapshot for %s", v98, 0x16u);
        sub_1000160CC(v148, &qword_1000C0E28, &qword_1000A1DC0);

        sub_100015F44(v152);

        (*(v156 + 8))(v161, v175);
      }

      else
      {

        (*(v94 + 8))(v93, v172);
        v128 = *(v96 + 8);
        v102 = v96 + 8;
        v101 = v128;
        v128(v95, v97);
        (*(v92 + 8))(v91, v175);
      }

      *(v0 + 1456) = v101;
      *(v0 + 1448) = v102;
      *(v0 + 1464) = sub_10009D1D4();
      v129 = sub_10009E714();
      v131 = v130;
      v132 = sub_10008286C;
    }

    else
    {

      if (qword_1000C0AE0 != -1)
      {
        swift_once();
      }

      v108 = *(v0 + 656);
      v109 = *(v0 + 648);
      v110 = *(v0 + 640);
      v111 = *(v0 + 456);
      v112 = qword_1000C8318;
      sub_10009D934();
      *(v0 + 1496) = (v109 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v75(v108, v111, v110);
      v113 = sub_10009D904();
      v114 = sub_10009E824();
      v115 = os_log_type_enabled(v113, v114);
      v116 = *(v0 + 760);
      v117 = *(v0 + 752);
      v118 = *(v0 + 744);
      v119 = *(v0 + 656);
      v120 = *(v0 + 648);
      v121 = *(v0 + 640);
      if (v115)
      {
        v176 = *(v0 + 744);
        v122 = swift_slowAlloc();
        v170 = v114;
        v123 = swift_slowAlloc();
        v177[0] = v123;
        *v122 = 136315138;
        sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
        v124 = sub_10009ED04();
        v173 = v116;
        v126 = v125;
        (*(v120 + 8))(v119, v121);
        v127 = sub_10002AD68(v124, v126, v177);

        *(v122 + 4) = v127;
        _os_log_impl(&_mh_execute_header, v113, v170, "TileControl.State.build(from:) Error building snapshot for %s", v122, 0xCu);
        sub_100015F44(v123);

        (*(v117 + 8))(v173, v176);
      }

      else
      {

        (*(v120 + 8))(v119, v121);
        (*(v117 + 8))(v116, v118);
      }

      *(v0 + 1504) = sub_10009D1D4();
      v129 = sub_10009E714();
      v131 = v133;
      v132 = sub_100082ED8;
    }

    return _swift_task_switch(v132, v129, v131);
  }
}

uint64_t sub_10008286C()
{

  *(v0 + 1472) = sub_10009D004();

  return _swift_task_switch(sub_1000828E0, 0, 0);
}

uint64_t sub_1000828E0()
{
  (*(v0 + 1408))(*(v0 + 680), *(v0 + 456), *(v0 + 640));
  v1 = swift_task_alloc();
  *(v0 + 1480) = v1;
  v2 = sub_1000857AC(&qword_1000C29F8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
  *(v0 + 1488) = v2;
  *v1 = v0;
  v1[1] = sub_1000829D4;
  v3 = *(v0 + 680);
  v4 = *(v0 + 640);

  return WidgetDataModel.queueForNextUpdate<A>(configuration:)(v3, v4, v2);
}

uint64_t sub_1000829D4()
{

  return _swift_task_switch(sub_100082AEC, 0, 0);
}

uint64_t sub_100082AEC()
{
  v18 = v0[182];
  v1 = v0[178];
  v16 = v0[186];
  v17 = v0[176];
  v2 = v0[130];
  v13 = v0[129];
  v14 = v0[80];
  v3 = v0[61];
  v4 = v0[58];
  v5 = v0[59];
  v6 = v0[56];
  v15 = v0[57];
  v7 = _s5StateVMa(0);
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  v8 = v7[5];
  v1(v6 + v8, v3, v4);
  (*(v5 + 56))(v6 + v8, 0, 1, v4);
  (*(v2 + 56))(v6 + v7[6], 1, 1, v13);
  v9 = (v6 + v7[8]);
  v9[3] = v14;
  v9[4] = v16;
  v10 = sub_100031E00(v9);
  v17(v10, v15, v14);
  sub_10009CEA4();
  v18(v3, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100082ED8()
{

  *(v0 + 1512) = sub_10009D004();

  return _swift_task_switch(sub_100082F4C, 0, 0);
}

uint64_t sub_100082F4C()
{
  (*(v0 + 1408))(*(v0 + 680), *(v0 + 456), *(v0 + 640));
  v1 = swift_task_alloc();
  *(v0 + 1520) = v1;
  v2 = sub_1000857AC(&qword_1000C29F8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
  *(v0 + 1528) = v2;
  *v1 = v0;
  v1[1] = sub_100083040;
  v3 = *(v0 + 680);
  v4 = *(v0 + 640);

  return WidgetDataModel.queueForNextUpdate<A>(configuration:)(v3, v4, v2);
}

uint64_t sub_100083040()
{

  return _swift_task_switch(sub_100083158, 0, 0);
}

uint64_t sub_100083158()
{
  v1 = v0[191];
  v14 = v0[176];
  v2 = v0[130];
  v3 = v0[129];
  v4 = v0[80];
  v5 = v0[58];
  v6 = v0[59];
  v8 = v0[56];
  v7 = v0[57];
  v9 = _s5StateVMa(0);
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  (*(v6 + 56))(v8 + v9[5], 1, 1, v5);
  (*(v2 + 56))(v8 + v9[6], 1, 1, v3);
  v10 = (v8 + v9[8]);
  v10[3] = v4;
  v10[4] = v1;
  v11 = sub_100031E00(v10);
  v14(v11, v7, v4);
  sub_10009CEA4();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000834F8()
{
  v104 = v0;
  v1 = v0[128];
  (*(v0[130] + 56))(v1, 1, 1, v0[129]);
  sub_1000160CC(v1, &qword_1000C1470, &qword_1000A1108);
  v2 = &NSObject__properties;
  if (qword_1000C0AE0 != -1)
  {
    swift_once();
  }

  v3 = v0[84];
  v4 = v0[81];
  v5 = v0[80];
  v6 = v0[57];
  v7 = qword_1000C8318;
  sub_10009D934();
  v8 = *(v4 + 16);
  v8(v3, v6, v5);
  v9 = sub_10009D904();
  v97 = sub_10009E824();
  v10 = os_log_type_enabled(v9, v97);
  v11 = v0[97];
  v12 = v0[94];
  v13 = v0[93];
  v14 = v0[84];
  v15 = v0[81];
  v16 = v0[80];
  v100 = v8;
  if (v10)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v103[0] = v18;
    *v17 = 136315138;
    sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
    v92 = v11;
    v94 = v13;
    v19 = sub_10009ED04();
    v21 = v20;
    (*(v15 + 8))(v14, v16);
    v22 = sub_10002AD68(v19, v21, v103);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v9, v97, "TileControl.State.build(from:) Missing configuration for intent %s", v17, 0xCu);
    sub_100015F44(v18);
    v2 = &NSObject__properties;

    v8 = v100;

    (*(v12 + 8))(v92, v94);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v23 = v0[58];
  v24 = v0[59];
  sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
  v25 = swift_allocError();
  (*(v24 + 104))(v26, enum case for HomeDataError.noSelectedAccessories(_:), v23);
  swift_willThrow();
  v0[177] = v25;
  v0[176] = v8;
  v0[52] = v25;
  swift_errorRetain();
  sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
  if (swift_dynamicCast())
  {
    v28 = v0[61];
    v27 = v0[62];
    v29 = v0[58];
    v30 = v0[59];

    (*(v30 + 32))(v28, v27, v29);
    if (*&v2[348] != -1)
    {
      swift_once();
    }

    v31 = v0[83];
    v32 = v0[81];
    v33 = v0[80];
    v35 = v0[60];
    v34 = v0[61];
    v36 = v0[58];
    v37 = v0[59];
    v38 = v0[57];
    v39 = qword_1000C8318;
    sub_10009D934();
    v40 = *(v37 + 16);
    v0[178] = v40;
    v0[179] = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    log = v40;
    (v40)(v35, v34, v36);
    v0[180] = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v100(v31, v38, v33);
    v41 = sub_10009D904();
    v93 = sub_10009E824();
    v42 = os_log_type_enabled(v41, v93);
    v43 = v0[96];
    v44 = v0[94];
    v45 = v0[83];
    v46 = v0[81];
    v98 = v0[80];
    v101 = v0[93];
    v48 = v0[59];
    v47 = v0[60];
    v49 = v0[58];
    if (v42)
    {
      v89 = v0[96];
      v50 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v103[0] = v88;
      *v50 = 138412546;
      swift_allocError();
      v95 = v44;
      (log)(v51, v47, v49);
      v52 = _swift_stdlib_bridgeErrorToNSError();
      loga = v41;
      v55 = *(v48 + 8);
      v54 = v48 + 8;
      v53 = v55;
      v55(v47, v49);
      *(v50 + 4) = v52;
      *v87 = v52;
      *(v50 + 12) = 2080;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
      v56 = sub_10009ED04();
      v58 = v57;
      (*(v46 + 8))(v45, v98);
      v59 = sub_10002AD68(v56, v58, v103);

      *(v50 + 14) = v59;
      _os_log_impl(&_mh_execute_header, loga, v93, "TileControl.State.build(from:) Error %@ building snapshot for %s", v50, 0x16u);
      sub_1000160CC(v87, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v88);

      (*(v95 + 8))(v89, v101);
    }

    else
    {

      (*(v46 + 8))(v45, v98);
      v80 = *(v48 + 8);
      v54 = v48 + 8;
      v53 = v80;
      v80(v47, v49);
      (*(v44 + 8))(v43, v101);
    }

    v0[182] = v53;
    v0[181] = v54;
    v0[183] = sub_10009D1D4();
    v81 = sub_10009E714();
    v83 = v82;
    v84 = sub_10008286C;
  }

  else
  {

    if (*&v2[348] != -1)
    {
      swift_once();
    }

    v60 = v0[82];
    v61 = v0[81];
    v62 = v0[80];
    v63 = v0[57];
    v64 = qword_1000C8318;
    sub_10009D934();
    v0[187] = (v61 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v8(v60, v63, v62);
    v65 = sub_10009D904();
    v66 = sub_10009E824();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[95];
    v69 = v0[94];
    v70 = v0[93];
    v71 = v0[82];
    v72 = v0[81];
    v73 = v0[80];
    if (v67)
    {
      v102 = v0[93];
      v74 = swift_slowAlloc();
      v96 = v66;
      v75 = swift_slowAlloc();
      v103[0] = v75;
      *v74 = 136315138;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
      v76 = sub_10009ED04();
      v99 = v68;
      v78 = v77;
      (*(v72 + 8))(v71, v73);
      v79 = sub_10002AD68(v76, v78, v103);

      *(v74 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v65, v96, "TileControl.State.build(from:) Error building snapshot for %s", v74, 0xCu);
      sub_100015F44(v75);

      (*(v69 + 8))(v99, v102);
    }

    else
    {

      (*(v72 + 8))(v71, v73);
      (*(v69 + 8))(v68, v70);
    }

    v0[188] = sub_10009D1D4();
    v81 = sub_10009E714();
    v83 = v85;
    v84 = sub_100082ED8;
  }

  return _swift_task_switch(v84, v81, v83);
}

uint64_t sub_100083E58()
{
  v86 = v0;
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 960);
  v5 = *(v0 + 944);
  v6 = *(v0 + 896);
  v7 = *(v0 + 888);

  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);
  (*(v2 + 8))(v1, v3);
  v9 = *(v0 + 1328);
  v10 = *(v0 + 1256);
  *(v0 + 1416) = v9;
  *(v0 + 1408) = v10;
  *(v0 + 416) = v9;
  swift_errorRetain();
  sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 488);
    v11 = *(v0 + 496);
    v13 = *(v0 + 464);
    v14 = *(v0 + 472);

    (*(v14 + 32))(v12, v11, v13);
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v82 = *(v0 + 664);
    v15 = *(v0 + 648);
    v16 = *(v0 + 640);
    v18 = *(v0 + 480);
    v17 = *(v0 + 488);
    v19 = *(v0 + 464);
    v20 = *(v0 + 472);
    v21 = *(v0 + 456);
    v22 = qword_1000C8318;
    sub_10009D934();
    v23 = *(v20 + 16);
    *(v0 + 1424) = v23;
    *(v0 + 1432) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v77 = v23;
    v23(v18, v17, v19);
    *(v0 + 1440) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v82, v21, v16);
    v24 = sub_10009D904();
    v78 = sub_10009E824();
    log = v24;
    v25 = os_log_type_enabled(v24, v78);
    v26 = *(v0 + 768);
    v27 = *(v0 + 752);
    v83 = *(v0 + 744);
    v28 = *(v0 + 664);
    v29 = *(v0 + 648);
    v30 = *(v0 + 640);
    v32 = *(v0 + 472);
    v31 = *(v0 + 480);
    v33 = *(v0 + 464);
    if (v25)
    {
      v76 = *(v0 + 752);
      v34 = swift_slowAlloc();
      v73 = v28;
      v35 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v85 = v75;
      *v34 = 138412546;
      sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
      swift_allocError();
      v74 = v26;
      v77(v36, v31, v33);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      v40 = *(v32 + 8);
      v38 = v32 + 8;
      v39 = v40;
      v40(v31, v33);
      *(v34 + 4) = v37;
      *v35 = v37;
      v41 = v35;
      *(v34 + 12) = 2080;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
      v42 = sub_10009ED04();
      v44 = v43;
      (*(v29 + 8))(v73, v30);
      v45 = sub_10002AD68(v42, v44, &v85);

      *(v34 + 14) = v45;
      _os_log_impl(&_mh_execute_header, log, v78, "TileControl.State.build(from:) Error %@ building snapshot for %s", v34, 0x16u);
      sub_1000160CC(v41, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v75);

      (*(v76 + 8))(v74, v83);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
      v66 = *(v32 + 8);
      v38 = v32 + 8;
      v39 = v66;
      v66(v31, v33);
      (*(v27 + 8))(v26, v83);
    }

    *(v0 + 1456) = v39;
    *(v0 + 1448) = v38;
    *(v0 + 1464) = sub_10009D1D4();
    v67 = sub_10009E714();
    v69 = v68;
    v70 = sub_10008286C;
  }

  else
  {

    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 656);
    v47 = *(v0 + 648);
    v48 = *(v0 + 640);
    v49 = *(v0 + 456);
    v50 = qword_1000C8318;
    sub_10009D934();
    *(v0 + 1496) = (v47 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v46, v49, v48);
    v51 = sub_10009D904();
    v52 = sub_10009E824();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 760);
    v55 = *(v0 + 752);
    v56 = *(v0 + 744);
    v57 = *(v0 + 656);
    v58 = *(v0 + 648);
    v59 = *(v0 + 640);
    if (v53)
    {
      v84 = *(v0 + 744);
      v60 = swift_slowAlloc();
      v79 = v52;
      v61 = swift_slowAlloc();
      v85 = v61;
      *v60 = 136315138;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
      v62 = sub_10009ED04();
      loga = v54;
      v64 = v63;
      (*(v58 + 8))(v57, v59);
      v65 = sub_10002AD68(v62, v64, &v85);

      *(v60 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v51, v79, "TileControl.State.build(from:) Error building snapshot for %s", v60, 0xCu);
      sub_100015F44(v61);

      (*(v55 + 8))(loga, v84);
    }

    else
    {

      (*(v58 + 8))(v57, v59);
      (*(v55 + 8))(v54, v56);
    }

    *(v0 + 1504) = sub_10009D1D4();
    v67 = sub_10009E714();
    v69 = v71;
    v70 = sub_100082ED8;
  }

  return _swift_task_switch(v70, v67, v69);
}

uint64_t sub_1000845A8()
{
  v90 = v0;
  loga = *(v0 + 1344);
  v1 = *(v0 + 1336);
  v80 = *(v0 + 1056);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 960);
  v4 = *(v0 + 944);
  v5 = *(v0 + 896);
  v6 = *(v0 + 888);
  v7 = *(v0 + 736);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);

  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  (loga)(v80, v2);
  sub_100015F44((v0 + 16));
  v11 = *(v0 + 1400);
  v12 = *(v0 + 1256);
  *(v0 + 1416) = v11;
  *(v0 + 1408) = v12;
  *(v0 + 416) = v11;
  swift_errorRetain();
  sub_100003714(&qword_1000C1D30, &qword_1000A1DB8);
  if (swift_dynamicCast())
  {
    v14 = *(v0 + 488);
    v13 = *(v0 + 496);
    v15 = *(v0 + 464);
    v16 = *(v0 + 472);

    (*(v16 + 32))(v14, v13, v15);
    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v86 = *(v0 + 664);
    v17 = *(v0 + 648);
    v18 = *(v0 + 640);
    v20 = *(v0 + 480);
    v19 = *(v0 + 488);
    v21 = *(v0 + 464);
    v22 = *(v0 + 472);
    v23 = *(v0 + 456);
    v24 = qword_1000C8318;
    sub_10009D934();
    v25 = *(v22 + 16);
    *(v0 + 1424) = v25;
    *(v0 + 1432) = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v79 = v25;
    v25(v20, v19, v21);
    *(v0 + 1440) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v86, v23, v18);
    v26 = sub_10009D904();
    v81 = sub_10009E824();
    log = v26;
    v27 = os_log_type_enabled(v26, v81);
    v28 = *(v0 + 768);
    v29 = *(v0 + 752);
    v87 = *(v0 + 744);
    v30 = *(v0 + 664);
    v31 = *(v0 + 648);
    v32 = *(v0 + 640);
    v34 = *(v0 + 472);
    v33 = *(v0 + 480);
    v35 = *(v0 + 464);
    if (v27)
    {
      v78 = *(v0 + 752);
      v36 = swift_slowAlloc();
      v75 = v30;
      v37 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v89 = v77;
      *v36 = 138412546;
      sub_1000857AC(&qword_1000C29F0, &type metadata accessor for HomeDataError, &protocol conformance descriptor for HomeDataError);
      swift_allocError();
      v76 = v28;
      v79(v38, v33, v35);
      v39 = _swift_stdlib_bridgeErrorToNSError();
      v42 = *(v34 + 8);
      v40 = v34 + 8;
      v41 = v42;
      v42(v33, v35);
      *(v36 + 4) = v39;
      *v37 = v39;
      v43 = v37;
      *(v36 + 12) = 2080;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
      v44 = sub_10009ED04();
      v46 = v45;
      (*(v31 + 8))(v75, v32);
      v47 = sub_10002AD68(v44, v46, &v89);

      *(v36 + 14) = v47;
      _os_log_impl(&_mh_execute_header, log, v81, "TileControl.State.build(from:) Error %@ building snapshot for %s", v36, 0x16u);
      sub_1000160CC(v43, &qword_1000C0E28, &qword_1000A1DC0);

      sub_100015F44(v77);

      (*(v78 + 8))(v76, v87);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
      v68 = *(v34 + 8);
      v40 = v34 + 8;
      v41 = v68;
      v68(v33, v35);
      (*(v29 + 8))(v28, v87);
    }

    *(v0 + 1456) = v41;
    *(v0 + 1448) = v40;
    *(v0 + 1464) = sub_10009D1D4();
    v69 = sub_10009E714();
    v71 = v70;
    v72 = sub_10008286C;
  }

  else
  {

    if (qword_1000C0AE0 != -1)
    {
      swift_once();
    }

    v48 = *(v0 + 656);
    v49 = *(v0 + 648);
    v50 = *(v0 + 640);
    v51 = *(v0 + 456);
    v52 = qword_1000C8318;
    sub_10009D934();
    *(v0 + 1496) = (v49 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v48, v51, v50);
    v53 = sub_10009D904();
    v54 = sub_10009E824();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 760);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v59 = *(v0 + 656);
    v60 = *(v0 + 648);
    v61 = *(v0 + 640);
    if (v55)
    {
      v88 = *(v0 + 744);
      v62 = swift_slowAlloc();
      v82 = v54;
      v63 = swift_slowAlloc();
      v89 = v63;
      *v62 = 136315138;
      sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
      v64 = sub_10009ED04();
      logb = v56;
      v66 = v65;
      (*(v60 + 8))(v59, v61);
      v67 = sub_10002AD68(v64, v66, &v89);

      *(v62 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v53, v82, "TileControl.State.build(from:) Error building snapshot for %s", v62, 0xCu);
      sub_100015F44(v63);

      (*(v57 + 8))(logb, v88);
    }

    else
    {

      (*(v60 + 8))(v59, v61);
      (*(v57 + 8))(v56, v58);
    }

    *(v0 + 1504) = sub_10009D1D4();
    v69 = sub_10009E714();
    v71 = v73;
    v72 = sub_100082ED8;
  }

  return _swift_task_switch(v72, v69, v71);
}

uint64_t sub_100084D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10009D894();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009D924();
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C0AE0 != -1)
  {
    swift_once();
  }

  v11 = qword_1000C8318;
  sub_10009D934();
  v33 = *(v5 + 16);
  v34 = v5 + 16;
  v33(v7, a1, v4);
  v12 = sub_10009D904();
  v13 = sub_10009E844();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v35 = v4;
    v15 = v14;
    v31 = swift_slowAlloc();
    v36 = v31;
    *v15 = 136315138;
    sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
    v16 = sub_10009ED04();
    v30 = v8;
    v17 = a1;
    v19 = v18;
    (*(v5 + 8))(v7, v35);
    v20 = sub_10002AD68(v16, v19, &v36);
    a1 = v17;

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "TileControl.StateProvider.previewValue(configuration: %s)", v15, 0xCu);
    sub_100015F44(v31);

    v4 = v35;

    (*(v32 + 8))(v10, v30);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v32 + 8))(v10, v8);
  }

  v21 = _s5StateVMa(0);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  v22 = v21[5];
  v23 = sub_10009D964();
  (*(*(v23 - 8) + 56))(a2 + v22, 1, 1, v23);
  v24 = v21[6];
  v25 = sub_10009CF94();
  (*(*(v25 - 8) + 56))(a2 + v24, 1, 1, v25);
  v26 = (a2 + v21[8]);
  v26[3] = v4;
  v26[4] = sub_1000857AC(&qword_1000C29F8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
  v27 = sub_100031E00(v26);
  v33(v27, a1, v4);
  return sub_10009CEA4();
}

uint64_t sub_100085170(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_10009D894();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_10009D924();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10008528C, 0, 0);
}

uint64_t sub_10008528C()
{
  v29 = v0;
  if (qword_1000C0AE0 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = qword_1000C8318;
  sub_10009D934();
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_10009D904();
  v7 = sub_10009E844();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[6];
  v12 = v0[7];
  v14 = v0[4];
  v13 = v0[5];
  if (v8)
  {
    v27 = v0[7];
    v15 = swift_slowAlloc();
    v25 = v7;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    sub_1000857AC(&qword_1000C29C8, &type metadata accessor for ToggleControlConfigurationIntent, &protocol conformance descriptor for ToggleControlConfigurationIntent);
    v17 = sub_10009ED04();
    v26 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_10002AD68(v17, v19, &v28);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v25, "TileControl.StateProvider.currentValue(configuration: %s)", v15, 0xCu);
    sub_100015F44(v16);

    (*(v10 + 8))(v26, v27);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v21 = swift_task_alloc();
  v0[10] = v21;
  *v21 = v0;
  v21[1] = sub_100085528;
  v22 = v0[2];
  v23 = v0[3];

  return sub_10007D850(v22, v23);
}

uint64_t sub_100085528()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10008565C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001EAAC;

  return sub_100085170(a1, a2);
}

unint64_t sub_1000856FC()
{
  result = qword_1000C2A20;
  if (!qword_1000C2A20)
  {
    sub_10000375C(&qword_1000C2A18, &qword_1000A3368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2A20);
  }

  return result;
}

unint64_t sub_100085760()
{
  result = qword_1000C1D48;
  if (!qword_1000C1D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C1D48);
  }

  return result;
}

uint64_t sub_1000857AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000857F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000C29D0, &qword_1000A3340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100085864(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7571536C6C616D73;
  if (v2 != 1)
  {
    v3 = 0x757153656772616CLL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6C676E6174636572;
  }

  if (v2)
  {
    v5 = 0xEB00000000657261;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  v6 = 0x7571536C6C616D73;
  if (*a2 != 1)
  {
    v6 = 0x757153656772616CLL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6C676E6174636572;
  }

  if (*a2)
  {
    v8 = 0xEB00000000657261;
  }

  else
  {
    v8 = 0xE900000000000065;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10009ED34();
  }

  return v9 & 1;
}

Swift::Int sub_10008595C()
{
  sub_10009EDD4();
  sub_10009E624();

  return sub_10009EE04();
}

uint64_t sub_100085A14(uint64_t a1)
{
  sub_10009E624();
}

Swift::Int sub_100085AB8(uint64_t a1)
{
  sub_10009EDD4();
  sub_10009E624();

  return sub_10009EE04();
}

unint64_t sub_100085B6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100088D08(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100085B9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x7571536C6C616D73;
  if (v2 != 1)
  {
    v4 = 0x757153656772616CLL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C676E6174636572;
  }

  if (!v5)
  {
    v3 = 0xEB00000000657261;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_100085C78()
{
  result = qword_1000C2A40;
  if (!qword_1000C2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2A40);
  }

  return result;
}

uint64_t sub_100085CCC()
{
  v1 = v0;
  v2 = sub_10009DCB4();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AccessoryAndSceneEntity(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SingleTapTargetTileView(0);
  __chkstk_darwin(v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000890A8(v1, v6, type metadata accessor for AccessoryAndSceneEntity);
  v10 = type metadata accessor for TileView(0);
  v11 = (v1 + *(v10 + 28));
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + *(v10 + 24));
  *v9 = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v15 = v9 + v7[5];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v7[6];
  *(v9 + v16) = swift_getKeyPath();
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  swift_storeEnumTagMultiPayload();
  v17 = v9 + v7[7];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  sub_1000890A8(v6, v9 + v7[8], type metadata accessor for AccessoryAndSceneEntity);
  v18 = (v9 + v7[11]);
  *v18 = v12;
  v18[1] = v13;
  *(v9 + v7[10]) = v14;
  sub_1000890A8(&v6[*(v4 + 32)], v9 + v7[9], type metadata accessor for WidgetTileInfo);
  sub_100089110(v6, type metadata accessor for AccessoryAndSceneEntity);
  sub_10009DCA4();
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_10009DC94(v29);
  v19 = v1 + *(v4 + 32);
  v20 = type metadata accessor for WidgetTileInfo(0);
  v21 = (v19 + *(v20 + 28));
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v21[1];
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v30._countAndFlagsBits = v23;
  v30._object = v24;
  sub_10009DC84(v30);

  v31._countAndFlagsBits = 44;
  v31._object = 0xE100000000000000;
  sub_10009DC94(v31);
  sub_10009DC84(*(v19 + *(v20 + 24)));
  v32._countAndFlagsBits = 44;
  v32._object = 0xE100000000000000;
  sub_10009DC94(v32);
  v25._countAndFlagsBits = sub_10008CFDC();
  if (v25._object)
  {
    object = v25._object;
  }

  else
  {
    v25._countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v25._object = object;
  sub_10009DC84(v25);

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10009DC94(v33);
  sub_10009DCD4();
  sub_100089754(&qword_1000C2AE0, type metadata accessor for SingleTapTargetTileView, &unk_1000A35B0);
  sub_10009E0C4();

  return sub_100089110(v9, type metadata accessor for SingleTapTargetTileView);
}

uint64_t sub_1000860A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v3 = sub_100003714(&qword_1000C0FE0, &qword_1000A11A0);
  v4 = __chkstk_darwin(v3 - 8);
  v71 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v70 - v6;
  v8 = sub_10009CE24();
  v75 = *(v8 - 8);
  __chkstk_darwin(v8);
  v78 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100003714(&qword_1000C2BB0, &qword_1000A3610);
  v10 = __chkstk_darwin(v90);
  v12 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v73 = &v70 - v13;
  v87 = sub_100003714(&qword_1000C2BB8, &qword_1000A3618);
  __chkstk_darwin(v87);
  v89 = &v70 - v14;
  v88 = type metadata accessor for WidgetTileViewToggleStyle(0);
  __chkstk_darwin(v88);
  v83 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100003714(&qword_1000C0C28, &qword_1000A3620);
  __chkstk_darwin(v16 - 8);
  v18 = &v70 - v17;
  v77 = type metadata accessor for WidgetPredictionAnalyticsInfo(0);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for AccessoryAndSceneEntity(0);
  __chkstk_darwin(v74);
  v84 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10009DC44();
  v70 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100003714(&qword_1000C2BC0, &qword_1000A3628);
  v80 = *(v85 - 8);
  __chkstk_darwin(v85);
  v79 = &v70 - v24;
  v86 = sub_100003714(&qword_1000C2BC8, &qword_1000A3630);
  v82 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v70 - v25;
  v26 = type metadata accessor for SingleTapTargetTileView(0);
  v27 = a1 + v26[9];
  v28 = type metadata accessor for WidgetTileInfo(0);
  if (*(v27 + *(v28 + 56)) != 1)
  {
    v37 = a1;
    sub_1000259B8();
    v38 = v75;
    v39 = *(v75 + 48);
    if (v39(v7, 1, v8) == 1)
    {
      v40 = v71;
      sub_10009CE14();
      result = v39(v40, 1, v8);
      v42 = v78;
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      (*(v38 + 32))(v78, v40, v8);
      if (v39(v7, 1, v8) != 1)
      {
        sub_1000160CC(v7, &qword_1000C0FE0, &qword_1000A11A0);
      }
    }

    else
    {
      v42 = v78;
      (*(v38 + 32))(v78, v7, v8);
    }

    *v12 = swift_getKeyPath();
    sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
    swift_storeEnumTagMultiPayload();
    v59 = v90;
    v60 = v12 + *(v90 + 36);
    *v60 = swift_getKeyPath();
    v60[8] = 0;
    (*(v38 + 16))(v12 + *(v59 + 40), v42, v8);
    sub_100086E18(v37);
    (*(v38 + 8))(v42, v8);
    v61 = v73;
    sub_10005B0FC(v12, v73, &qword_1000C2BB0, &qword_1000A3610);
    sub_10001E0A8(v61, v89, &qword_1000C2BB0, &qword_1000A3610);
    swift_storeEnumTagMultiPayload();
    v62 = sub_10001CDC8(&qword_1000C2BD0, &qword_1000C2BC0, &qword_1000A3628, &protocol conformance descriptor for Toggle<A>);
    v63 = sub_100089754(&qword_1000C1A20, type metadata accessor for WidgetTileViewToggleStyle, &unk_1000A274C);
    v92 = v85;
    v93 = v88;
    v94 = v62;
    v95 = v63;
    swift_getOpaqueTypeConformance2();
    sub_10001CDC8(&qword_1000C2BD8, &qword_1000C2BB0, &qword_1000A3610, &unk_1000A3228);
    sub_10009DD94();
    return sub_1000160CC(v61, &qword_1000C2BB0, &qword_1000A3610);
  }

  v29 = v28;
  v30 = a1 + v26[7];
  v31 = *v30;
  if (*(v30 + 8) != 1)
  {

    sub_10009E834();
    v32 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v31, 0);
    (*(v70 + 8))(v23, v21);
  }

  v33 = v76;
  v34 = a1 + v26[8];
  v35 = v84;
  sub_1000890A8(v34, v84, type metadata accessor for AccessoryAndSceneEntity);
  sub_10001E0A8(v34 + *(v74 + 24) + *(v29 + 76), v18, &qword_1000C0C28, &qword_1000A3620);
  v36 = v77;
  if ((*(v33 + 48))(v18, 1, v77) == 1)
  {
    sub_1000160CC(v18, &qword_1000C0C28, &qword_1000A3620);
    v43 = 0;
    v44 = 0;
  }

  else
  {
    (*(v33 + 32))(v72, v18, v36);
    sub_10009CCB4();
    swift_allocObject();
    sub_10009CCA4();
    sub_100089754(&qword_1000C1A48, type metadata accessor for WidgetPredictionAnalyticsInfo, &protocol conformance descriptor for WidgetPredictionAnalyticsInfo);
    v64 = sub_10009CC94();
    v66 = v65;

    v67 = sub_10009CE64(0);
    v69 = v68;
    sub_100033B34(v64, v66);
    (*(v33 + 8))(v72, v36);
    v44 = v69;
    v35 = v84;
    v43 = v67;
  }

  v92 = sub_100078634(v35, v43, v44);
  v93 = v45;
  __chkstk_darwin(v92);
  *(&v70 - 2) = a1;
  sub_100003714(&qword_1000C2BE0, &qword_1000A3638);
  sub_1000897D4();
  sub_1000598E8();
  v46 = v79;
  sub_10009E264();
  v47 = (a1 + v26[11]);
  v48 = *v47;
  v49 = v47[1];
  v50 = v88;
  v51 = v83;
  sub_1000890A8(v34, v83 + *(v88 + 20), type metadata accessor for AccessoryAndSceneEntity);
  *v51 = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v52 = (v51 + *(v50 + 24));
  *v52 = v48;
  v52[1] = v49;
  v53 = sub_10001CDC8(&qword_1000C2BD0, &qword_1000C2BC0, &qword_1000A3628, &protocol conformance descriptor for Toggle<A>);
  v54 = sub_100089754(&qword_1000C1A20, type metadata accessor for WidgetTileViewToggleStyle, &unk_1000A274C);
  v55 = v81;
  v56 = v85;
  sub_10009E084();
  sub_100089110(v51, type metadata accessor for WidgetTileViewToggleStyle);
  (*(v80 + 8))(v46, v56);
  v57 = v82;
  v58 = v86;
  (*(v82 + 16))(v89, v55, v86);
  swift_storeEnumTagMultiPayload();
  v92 = v56;
  v93 = v50;
  v94 = v53;
  v95 = v54;
  swift_getOpaqueTypeConformance2();
  sub_10001CDC8(&qword_1000C2BD8, &qword_1000C2BB0, &qword_1000A3610, &unk_1000A3228);
  sub_10009DD94();
  return (*(v57 + 8))(v55, v58);
}

uint64_t sub_100086E18(uint64_t a1)
{
  v3 = type metadata accessor for SmallSquareTileView(0);
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003714(&qword_1000C2C00, &qword_1000A3640);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for RectangleTileView(0);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SingleTapTargetTileView(0);
  if (!*(a1 + v12[10]))
  {

    goto LABEL_5;
  }

  v30 = v5;
  v13 = sub_10009ED34();

  if (v13)
  {
LABEL_5:
    sub_1000890A8(a1 + v12[8], &v11[v9[7]], type metadata accessor for AccessoryAndSceneEntity);
    v22 = (a1 + v12[11]);
    v23 = *v22;
    v24 = v22[1];
    *&v11[v9[5]] = swift_getKeyPath();
    sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    v26 = &v11[v9[6]];
    *v26 = KeyPath;
    v26[8] = 0;
    v27 = &v11[v9[8]];
    *v27 = v23;
    *(v27 + 1) = v24;
    sub_1000890A8(v11, v8, type metadata accessor for RectangleTileView);
    swift_storeEnumTagMultiPayload();
    sub_100089754(&qword_1000C2BF0, type metadata accessor for RectangleTileView, &unk_1000A36A0);
    sub_100089754(&qword_1000C2BF8, type metadata accessor for SmallSquareTileView, &unk_1000A22A4);
    sub_10009DD94();
    v20 = type metadata accessor for RectangleTileView;
    v21 = v11;
    return sub_100089110(v21, v20);
  }

  v14 = v30;
  sub_1000890A8(a1 + v12[8], &v30[v3[9]], type metadata accessor for AccessoryAndSceneEntity);
  v15 = (a1 + v12[11]);
  v16 = *v15;
  v17 = v15[1];
  v18 = swift_getKeyPath();
  *(v14 + v3[6]) = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  *(v14 + v3[7]) = swift_getKeyPath();
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  swift_storeEnumTagMultiPayload();
  *(v14 + v3[8]) = swift_getKeyPath();
  sub_100003714(&qword_1000C2C08, &qword_1000A3678);
  swift_storeEnumTagMultiPayload();
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v14 + 16) = v18;
  *(v14 + 24) = 0;
  v19 = (v14 + v3[10]);
  *v19 = v16;
  v19[1] = v17;
  sub_1000890A8(v14, v8, type metadata accessor for SmallSquareTileView);
  swift_storeEnumTagMultiPayload();
  sub_100089754(&qword_1000C2BF0, type metadata accessor for RectangleTileView, &unk_1000A36A0);
  sub_100089754(&qword_1000C2BF8, type metadata accessor for SmallSquareTileView, &unk_1000A22A4);
  sub_10009DD94();
  v20 = type metadata accessor for SmallSquareTileView;
  v21 = v14;
  return sub_100089110(v21, v20);
}

uint64_t sub_100087364@<X0>(void *a1@<X8>)
{
  v3 = sub_10009DC44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RectangleTileView(0);
  sub_10001E0A8(v1 + *(v10 + 20), v9, &qword_1000C16D0, &qword_1000A15B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10009E3A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10009E834();
    v13 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10008756C()
{
  v1 = sub_10009DC44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for RectangleTileView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_10009E834();
    v7 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1000876C4@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_10009E2F4();
  a2[1] = v4;
  v5 = sub_100003714(&qword_1000C2BA8, &unk_1000A3600);
  return sub_1000860A8(v2, (a2 + *(v5 + 44)));
}

uint64_t sub_100087710@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41[1] = a1;
  v3 = sub_100003714(&qword_1000C2CC0, &qword_1000A36F0);
  __chkstk_darwin(v3 - 8);
  v5 = v41 - v4;
  v6 = sub_100003714(&qword_1000C2CC8, &qword_1000A36F8);
  __chkstk_darwin(v6);
  v8 = v41 - v7;
  v9 = sub_100003714(&qword_1000C2CD0, &qword_1000A3700);
  __chkstk_darwin(v9);
  v11 = v41 - v10;
  v12 = sub_100003714(&qword_1000C2CD8, &qword_1000A3708);
  __chkstk_darwin(v12);
  v14 = v41 - v13;
  *v5 = sub_10009DC74();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v15 = sub_100003714(&qword_1000C2CE0, &unk_1000A3710);
  sub_100087AA0(v2, &v5[*(v15 + 44)]);
  v16 = sub_10009DEE4();
  v17 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v16)
  {
    v17 = sub_10009DEF4();
  }

  type metadata accessor for RectangleTileView(0);
  sub_10009D9E4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10005B0FC(v5, v8, &qword_1000C2CC0, &qword_1000A36F0);
  v26 = &v8[*(v6 + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_10009DF04();
  v28 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v27)
  {
    v28 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_10005B0FC(v8, v11, &qword_1000C2CC8, &qword_1000A36F8);
  v37 = &v11[*(v9 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  sub_10009E2F4();
  sub_10009DA74();
  sub_10005B0FC(v11, v14, &qword_1000C2CD0, &qword_1000A3700);
  v38 = &v14[*(v12 + 36)];
  v39 = v43;
  *v38 = v42;
  *(v38 + 1) = v39;
  *(v38 + 2) = v44;
  sub_100089CB8();
  sub_10009DFF4();
  return sub_1000160CC(v14, &qword_1000C2CD8, &qword_1000A3708);
}

uint64_t sub_100087AA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v63 = sub_10009D494();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v4 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for WidgetTileInfo(0);
  __chkstk_darwin(v61);
  v6 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10009D9A4();
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin(v7);
  v66 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100003714(&qword_1000C2168, &qword_1000A2330);
  v9 = __chkstk_darwin(v65);
  v71 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v64 = v56 - v12;
  __chkstk_darwin(v11);
  v70 = v56 - v13;
  v14 = sub_100003714(&qword_1000C2D08, &qword_1000A3720);
  v15 = __chkstk_darwin(v14 - 8);
  v69 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v56 - v17;
  v19 = sub_10009DC44();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  if (*(a1 + 8) == 1)
  {
    if ((v23 & 1) == 0)
    {
LABEL_3:
      v24 = type metadata accessor for RectangleTileView(0);
      v25 = type metadata accessor for AccessoryAndSceneEntity(0);
      v26 = sub_10008CA68();
      goto LABEL_6;
    }
  }

  else
  {

    sub_10009E834();
    v27 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v23, 0);
    (*(v20 + 8))(v22, v19);
    if (v76 != 1)
    {
      goto LABEL_3;
    }
  }

  v24 = type metadata accessor for RectangleTileView(0);
  v25 = type metadata accessor for AccessoryAndSceneEntity(0);
  v26 = sub_10008D598();
LABEL_6:
  v56[1] = v26;
  *v18 = sub_10009DC74();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v28 = sub_100003714(&qword_1000C2D10, &qword_1000A3728);
  sub_100088298(a1, &v18[*(v28 + 44)]);
  sub_10009E2F4();
  sub_10009DA74();
  v60 = v76;
  v59 = v78;
  v58 = v80;
  v57 = v81;
  v75 = 1;
  v74 = v77;
  v73 = v79;
  type metadata accessor for RectangleTileView(0);
  v29 = a1 + *(v24 + 28);
  type metadata accessor for AccessoryAndSceneEntity(0);
  sub_1000890A8(&v29[*(v25 + 24)], v6, type metadata accessor for WidgetTileInfo);

  sub_10009D484();
  sub_10009D474();
  (*(v62 + 8))(v4, v63);
  sub_100089110(v6, type metadata accessor for WidgetTileInfo);

  sub_10009DC74();
  v30 = v66;
  sub_10009D9B4();
  LOBYTE(v29) = sub_10009DF14();
  v31 = sub_10009DEF4();
  sub_10009DEF4();
  if (sub_10009DEF4() != v29)
  {
    v31 = sub_10009DEF4();
  }

  sub_10009D9E4();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v64;
  (*(v67 + 32))(v64, v30, v68);
  v41 = &v40[*(v65 + 36)];
  *v41 = v31;
  *(v41 + 1) = v33;
  *(v41 + 2) = v35;
  *(v41 + 3) = v37;
  *(v41 + 4) = v39;
  v41[40] = 0;
  v42 = v40;
  v43 = v70;
  sub_10005B0FC(v42, v70, &qword_1000C2168, &qword_1000A2330);
  v44 = v18;
  v45 = v69;
  sub_10001E0A8(v18, v69, &qword_1000C2D08, &qword_1000A3720);
  v46 = v75;
  v47 = v74;
  v48 = v73;
  v49 = v71;
  sub_10001E0A8(v43, v71, &qword_1000C2168, &qword_1000A2330);
  v50 = v72;
  sub_10001E0A8(v45, v72, &qword_1000C2D08, &qword_1000A3720);
  v51 = sub_100003714(&qword_1000C2D18, &qword_1000A3730);
  v52 = v50 + v51[12];
  *v52 = 0;
  *(v52 + 8) = v46;
  *(v52 + 16) = v60;
  *(v52 + 24) = v47;
  *(v52 + 32) = v59;
  *(v52 + 40) = v48;
  v53 = v57;
  *(v52 + 48) = v58;
  *(v52 + 56) = v53;
  sub_10001E0A8(v49, v50 + v51[16], &qword_1000C2168, &qword_1000A2330);
  v54 = v50 + v51[20];
  *v54 = 0;
  *(v54 + 8) = 0;
  sub_1000160CC(v43, &qword_1000C2168, &qword_1000A2330);
  sub_1000160CC(v44, &qword_1000C2D08, &qword_1000A3720);
  sub_1000160CC(v49, &qword_1000C2168, &qword_1000A2330);
  return sub_1000160CC(v45, &qword_1000C2D08, &qword_1000A3720);
}

uint64_t sub_100088298@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v79 = a2;
  v73 = sub_10009DD14();
  v77 = *(v73 - 8);
  v3 = __chkstk_darwin(v73);
  v83 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v82 = &v70 - v5;
  v80 = sub_100003714(&qword_1000C2D20, &qword_1000A3738);
  __chkstk_darwin(v80);
  v81 = &v70 - v6;
  v78 = sub_100003714(&qword_1000C2D28, &qword_1000A3740);
  __chkstk_darwin(v78);
  v76 = &v70 - v7;
  v8 = sub_10009E3A4();
  v74 = *(v8 - 8);
  v75 = v8;
  __chkstk_darwin(v8);
  v10 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10009DC44();
  v72 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TileIconView(0);
  v14 = __chkstk_darwin(v84);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v70 - v17;
  v19 = a1;
  v20 = a1 + *(type metadata accessor for RectangleTileView(0) + 28);
  v21 = &v20[*(type metadata accessor for AccessoryAndSceneEntity(0) + 24)];
  v22 = sub_10008CFDC();
  if (v23)
  {
    v24 = v23;
    v25 = v22;
    v71 = v22;
    sub_100087364(v10);
    sub_10008756C();
    v83 = sub_10001D53C(v10);
    (*(v74 + 8))(v10, v75);
    *&v96[0] = v25;
    *(&v96[0] + 1) = v24;
    sub_1000037A4();

    v82 = sub_10009DFE4();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    KeyPath = swift_getKeyPath();
    v33 = v29 & 1;
    LOBYTE(v87) = v29 & 1;
    v34 = swift_getKeyPath();
    LOBYTE(v96[0]) = 0;
    sub_10009DF34();
    v35 = sub_10009DF84();
    v36 = swift_getKeyPath();
    LOBYTE(v96[0]) = 1;
    v37 = swift_getKeyPath();
    *&v87 = v82;
    *(&v87 + 1) = v27;
    LOBYTE(v88) = v33;
    *(&v88 + 1) = v31;
    LOWORD(v89) = 256;
    *(&v89 + 1) = KeyPath;
    LOBYTE(v90) = 1;
    *(&v90 + 1) = v34;
    *&v91 = 1;
    BYTE8(v91) = 0;
    *&v92 = v36;
    *(&v92 + 1) = v35;
    *&v93 = 0;
    WORD4(v93) = 1;
    *&v94 = v37;
    *(&v94 + 1) = 0x3F847AE147AE147BLL;
    v95 = v83;
    v85 = v71;
    v86 = v24;

    sub_100003714(&qword_1000C2D38, &qword_1000A3748);
    sub_100089F64();
    sub_10009E024();
    v38 = v76;
    sub_10009E014();
    v96[6] = v93;
    v96[7] = v94;
    v97 = v95;
    v96[2] = v89;
    v96[3] = v90;
    v96[4] = v91;
    v96[5] = v92;
    v96[0] = v87;
    v96[1] = v88;
    sub_1000160CC(v96, &qword_1000C2D38, &qword_1000A3748);

    sub_10009E2F4();
    sub_10009DA74();
    v39 = (v38 + *(v78 + 36));
    v40 = v88;
    *v39 = v87;
    v39[1] = v40;
    v39[2] = v89;
    sub_10001E0A8(v38, v81, &qword_1000C2D28, &qword_1000A3740);
    swift_storeEnumTagMultiPayload();
    sub_100089E88();
    sub_100089754(&qword_1000C2210, type metadata accessor for TileIconView, &unk_1000A25E8);
    sub_10009DD94();

    return sub_1000160CC(v38, &qword_1000C2D28, &qword_1000A3740);
  }

  v42 = v72;
  v76 = v18;
  v43 = *v19;
  if (*(v19 + 8) != 1)
  {
    v45 = v13;

    sub_10009E834();
    v46 = sub_10009DEA4();
    sub_10009D8C4();

    sub_10009DC34();
    swift_getAtKeyPath();
    sub_10004D760(v43, 0);
    (*(v42 + 8))(v45, v11);
    if (v96[0])
    {
      goto LABEL_5;
    }

LABEL_7:
    v44 = 32;
    goto LABEL_8;
  }

  if ((v43 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v44 = 36;
LABEL_8:
  v47 = type metadata accessor for WidgetTileInfo(0);
  v48 = &v21[*(v47 + v44)];
  v50 = *v48;
  v49 = *(v48 + 1);

  sub_10009D594();
  sub_10009D594();
  if (v21[*(v47 + 52)] == 1)
  {
    v51 = *&v21[*(v47 + 48)];
  }

  else
  {
    v51 = sub_10009E174();
  }

  v52 = sub_10009E2F4();
  v54 = v53;
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v55 = v84;
  v56 = *(v84 + 20);
  *&v16[v56] = swift_getKeyPath();
  sub_100003714(&qword_1000C16D0, &qword_1000A15B0);
  swift_storeEnumTagMultiPayload();
  v57 = &v16[v55[6]];
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  v58 = v55[7];
  *&v16[v58] = swift_getKeyPath();
  sub_100003714(&qword_1000C16C8, &unk_1000A2A00);
  swift_storeEnumTagMultiPayload();
  v59 = &v16[v55[8]];
  *v59 = v50;
  *(v59 + 1) = v49;
  v60 = *(v77 + 16);
  v61 = v73;
  v60(&v16[v55[9]], v82, v73);
  v62 = v55[10];
  v63 = v61;
  v60(&v16[v62], v83, v61);
  sub_10009E174();
  LOBYTE(v60) = sub_10009E134();

  if (v60)
  {
    v64 = sub_10009E1B4();

    v51 = v64;
  }

  v65 = v81;
  v66 = *(v77 + 8);
  v66(v83, v63);
  v66(v82, v63);
  v67 = v84;
  *&v16[*(v84 + 44)] = v51;
  *&v16[v67[12]] = 0x4043000000000000;
  *&v16[v67[13]] = 0x403A000000000000;
  v68 = &v16[v67[14]];
  *v68 = v52;
  v68[1] = v54;
  v69 = v76;
  sub_10006DF64(v16, v76);
  sub_1000890A8(v69, v65, type metadata accessor for TileIconView);
  swift_storeEnumTagMultiPayload();
  sub_100089E88();
  sub_100089754(&qword_1000C2210, type metadata accessor for TileIconView, &unk_1000A25E8);
  sub_10009DD94();
  return sub_100089110(v69, type metadata accessor for TileIconView);
}

uint64_t sub_100088C40(uint64_t a1)
{
  v2 = sub_10009DCE4();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10009DB24();
}

unint64_t sub_100088D08(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BB1A8;
  v6._object = a2;
  v4 = sub_10009EBE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100088D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryAndSceneEntity(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for WidgetTileInfo(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 3)
      {
        return v14 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100088E84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessoryAndSceneEntity(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for WidgetTileInfo(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100088FAC(uint64_t a1)
{
  type metadata accessor for AccessoryAndSceneEntity(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WidgetTileInfo(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000890A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100089110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100089184(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for AccessoryAndSceneEntity(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = type metadata accessor for WidgetTileInfo(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_100089368(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = sub_100003714(&qword_1000C1798, &unk_1000A16C0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for AccessoryAndSceneEntity(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = type metadata accessor for WidgetTileInfo(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_10008953C(uint64_t a1)
{
  sub_10006EA2C(319, &qword_1000C1818, &type metadata accessor for WidgetRenderingMode);
  if (v1 <= 0x3F)
  {
    sub_10006AAC4();
    if (v2 <= 0x3F)
    {
      sub_10006EA2C(319, &qword_1000C1810, &type metadata accessor for ColorScheme);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AccessoryAndSceneEntity(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for WidgetTileInfo(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CGSize();
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

unint64_t sub_100089668()
{
  result = qword_1000C2B90;
  if (!qword_1000C2B90)
  {
    sub_10000375C(&qword_1000C2B98, &qword_1000A35A8);
    sub_100089754(&qword_1000C2AE0, type metadata accessor for SingleTapTargetTileView, &unk_1000A35B0);
    sub_100089754(&qword_1000C2BA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2B90);
  }

  return result;
}

uint64_t sub_100089754(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000897D4()
{
  result = qword_1000C2BE8;
  if (!qword_1000C2BE8)
  {
    sub_10000375C(&qword_1000C2BE0, &qword_1000A3638);
    sub_100089754(&qword_1000C2BF0, type metadata accessor for RectangleTileView, &unk_1000A36A0);
    sub_100089754(&qword_1000C2BF8, type metadata accessor for SmallSquareTileView, &unk_1000A22A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2BE8);
  }

  return result;
}

uint64_t sub_10008991C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessoryAndSceneEntity(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100089A58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = sub_100003714(&qword_1000C17A0, &unk_1000A2270);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessoryAndSceneEntity(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100089B84(uint64_t a1)
{
  sub_10006AAC4();
  if (v1 <= 0x3F)
  {
    sub_10006EA2C(319, &qword_1000C1818, &type metadata accessor for WidgetRenderingMode);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AccessoryAndSceneEntity(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100089CB8()
{
  result = qword_1000C2CE8;
  if (!qword_1000C2CE8)
  {
    sub_10000375C(&qword_1000C2CD8, &qword_1000A3708);
    sub_100089D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2CE8);
  }

  return result;
}

unint64_t sub_100089D44()
{
  result = qword_1000C2CF0;
  if (!qword_1000C2CF0)
  {
    sub_10000375C(&qword_1000C2CD0, &qword_1000A3700);
    sub_100089DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2CF0);
  }

  return result;
}

unint64_t sub_100089DD0()
{
  result = qword_1000C2CF8;
  if (!qword_1000C2CF8)
  {
    sub_10000375C(&qword_1000C2CC8, &qword_1000A36F8);
    sub_10001CDC8(&qword_1000C2D00, &qword_1000C2CC0, &qword_1000A36F0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2CF8);
  }

  return result;
}

unint64_t sub_100089E88()
{
  result = qword_1000C2D30;
  if (!qword_1000C2D30)
  {
    sub_10000375C(&qword_1000C2D28, &qword_1000A3740);
    sub_10000375C(&qword_1000C2D38, &qword_1000A3748);
    sub_100089F64();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2D30);
  }

  return result;
}

unint64_t sub_100089F64()
{
  result = qword_1000C2D40;
  if (!qword_1000C2D40)
  {
    sub_10000375C(&qword_1000C2D38, &qword_1000A3748);
    sub_10008A01C();
    sub_10001CDC8(&qword_1000C22C8, &qword_1000C22D0, &qword_1000A25D0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2D40);
  }

  return result;
}

unint64_t sub_10008A01C()
{
  result = qword_1000C2D48;
  if (!qword_1000C2D48)
  {
    sub_10000375C(&qword_1000C2D50, &qword_1000A3750);
    sub_10008A0D4();
    sub_10001CDC8(&qword_1000C2D68, &qword_1000C2D70, &unk_1000A3768, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2D48);
  }

  return result;
}

unint64_t sub_10008A0D4()
{
  result = qword_1000C2D58;
  if (!qword_1000C2D58)
  {
    sub_10000375C(&qword_1000C2D60, &unk_1000A3758);
    sub_10006E274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2D58);
  }

  return result;
}

uint64_t sub_10008A1CC()
{
  sub_10000375C(&qword_1000C2CD8, &qword_1000A3708);
  sub_100089CB8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008A268(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10009E124();
  __chkstk_darwin(v4);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = sub_10009E1E4();
  *a3 = result;
  return result;
}

uint64_t sub_10008A36C(uint64_t a1, uint64_t *a2, double a3)
{
  sub_10009E1B4();
  v4 = sub_10009E1A4();

  *a2 = v4;
  return result;
}

uint64_t sub_10008A3C0(uint64_t a1)
{
  sub_10009E174();
  sub_10008A40C();
  result = sub_10009E204();
  qword_1000C8310 = result;
  return result;
}

unint64_t sub_10008A40C()
{
  result = qword_1000C2D78;
  if (!qword_1000C2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2D78);
  }

  return result;
}

uint64_t sub_10008A460()
{
  sub_10008A4C8();
  result = sub_10009E934();
  qword_1000C8318 = result;
  return result;
}

unint64_t sub_10008A4C8()
{
  result = qword_1000C2D80;
  if (!qword_1000C2D80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000C2D80);
  }

  return result;
}

uint64_t sub_10008A514(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006465746165;
  v3 = 0x7243746567646977;
  v4 = a1;
  if (a1 <= 2u)
  {
    v11 = 0x80000001000A3FD0;
    v12 = 0xD000000000000018;
    if (a1 == 1)
    {
      v12 = 0xD000000000000010;
    }

    else
    {
      v11 = 0x80000001000A3FF0;
    }

    if (a1)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0x7243746567646977;
    }

    if (v4)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xED00006465746165;
    }
  }

  else
  {
    v5 = 0x80000001000A4050;
    v6 = 0xD000000000000019;
    if (a1 != 5)
    {
      v6 = 0xD00000000000001BLL;
      v5 = 0x80000001000A4070;
    }

    v7 = 0x80000001000A4010;
    v8 = 0xD000000000000017;
    if (a1 != 3)
    {
      v8 = 0xD00000000000001DLL;
      v7 = 0x80000001000A4030;
    }

    if (a1 <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 4)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001000A3FD0;
        if (v9 != 0xD000000000000010)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x80000001000A3FF0;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000001000A4050;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v2 = 0x80000001000A4070;
        if (v9 != 0xD00000000000001BLL)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_37;
    }

    if (a2 == 3)
    {
      v2 = 0x80000001000A4010;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x80000001000A4030;
    v3 = 0xD00000000000001DLL;
  }

  if (v9 != v3)
  {
LABEL_40:
    v13 = sub_10009ED34();
    goto LABEL_41;
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

Swift::Int sub_10008A744(uint64_t a1, unsigned __int8 a2)
{
  sub_10009EDD4();
  sub_10009E624();

  return sub_10009EE04();
}

unint64_t sub_10008A88C(unsigned __int8 a1)
{
  v1 = 0xD000000000000021;
  v2 = 0xD00000000000002DLL;
  if (a1 != 5)
  {
    v2 = 0xD00000000000002FLL;
  }

  v3 = 0xD00000000000002BLL;
  if (a1 != 3)
  {
    v3 = 0xD000000000000031;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000032;
  if (a1 != 1)
  {
    v4 = 0xD00000000000002CLL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void *sub_10008A954()
{
  v1 = sub_10009CEC4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  if (v7 == 1)
  {
    v11 = 0;
    LOBYTE(v45) = 2;
    LODWORD(v48) = 33686018;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v50 = 1;
LABEL_4:
    sub_10008C994(v5, v6, v7);
    v12 = &_swiftEmptyDictionarySingleton;
    goto LABEL_6;
  }

  v45 = *(v0 + 24);
  v46 = v6;
  v47 = v7;
  v48 = v8;
  v49 = v9;
  v11 = v7;
  v50 = v10;
  if (v5 == 2)
  {
    goto LABEL_4;
  }

  v13 = v5;
  v14 = v7;
  v15 = v6;
  sub_100033B88();
  sub_10008C994(v13, v15, v14);
  isa = sub_10009E8B4(v13 & 1).super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = &_swiftEmptyDictionarySingleton;
  sub_10008C10C(isa, 0x7373656363417369, 0xEB0000000079726FLL, isUniquelyReferenced_nonNull_native);
  v12 = v44;
  v11 = v47;
LABEL_6:
  if (v11)
  {
    v18 = objc_allocWithZone(NSString);
    sub_10008C9D8(&v45, &v44);
    v19 = sub_10009E5B4();
    sub_10008C9A8(&v45);
    v20 = [v18 initWithString:v19];

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v12;
    sub_10008C10C(v20, 0xD000000000000015, 0x80000001000A5550, v21);
    v12 = v44;
  }

  v22 = v48;
  if (v48 != 2)
  {
    sub_100033B88();
    v23 = sub_10009E8B4(v22 & 1).super.super.isa;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v12;
    sub_10008C10C(v23, 0x656E6563537369, 0xE700000000000000, v24);
    v12 = v44;
  }

  v25 = BYTE1(v48);
  if (BYTE1(v48) != 2)
  {
    sub_100033B88();
    v26 = sub_10009E8B4(v25 & 1).super.super.isa;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v12;
    sub_10008C10C(v26, 0x6168636165527369, 0xEB00000000656C62, v27);
    v12 = v44;
  }

  v28 = BYTE2(v48);
  if (BYTE2(v48) != 2)
  {
    sub_100033B88();
    v29 = sub_10009E8B4(v28 & 1).super.super.isa;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v12;
    sub_10008C10C(v29, 0x6176697463417369, 0xEB00000000646574, v30);
    v12 = v44;
  }

  v31 = BYTE3(v48);
  if (BYTE3(v48) != 2)
  {
    sub_100033B88();
    v32 = sub_10009E8B4(v31 & 1).super.super.isa;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v12;
    sub_10008C10C(v32, 0xD000000000000019, 0x80000001000A5530, v33);
    sub_10008C9A8(&v45);
    v12 = v44;
    if (v50)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  sub_10008C9A8(&v45);
  if ((v50 & 1) == 0)
  {
LABEL_18:
    v34 = v49;
    sub_100033B88();
    v35 = sub_10009E8C4(v34).super.super.isa;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v12;
    sub_10008C10C(v35, 0xD000000000000010, 0x80000001000A5080, v36);
    v12 = v44;
  }

LABEL_19:
  sub_100033B88();
  sub_10009CEB4();
  sub_10009CE94();
  v38 = v37;
  result = (*(v2 + 8))(v4, v1);
  v40 = v38 * 1000.0;
  if (COERCE__INT64(fabs(v38 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v40 < 9.22337204e18)
  {
    v41 = sub_10009E8C4(v40).super.super.isa;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v12;
    sub_10008C10C(v41, 0x6D617473656D6974, 0xE900000000000070, v42);
    return v44;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10008AE74()
{
  sub_10005FAEC(v0[3], v0[4], v0[5]);

  return swift_deallocClassInstance();
}

__n128 sub_10008AEDC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10008AEF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10008AF4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetAnalyticsEventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetAnalyticsEventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10008B124(uint64_t a1)
{
  sub_10009E624();
}

unint64_t sub_10008B260@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008C948(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10008B290(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xED00006465746165;
    v9 = 0xD000000000000010;
    v10 = 0x80000001000A3FD0;
    if (v2 != 1)
    {
      v9 = 0xD000000000000018;
      v10 = 0x80000001000A3FF0;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x7243746567646977;
    }

    if (!v11)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001000A4050;
    v4 = 0xD000000000000019;
    if (v2 != 5)
    {
      v4 = 0xD00000000000001BLL;
      v3 = 0x80000001000A4070;
    }

    v5 = 0x80000001000A4010;
    v6 = 0xD00000000000001DLL;
    if (v2 == 3)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v5 = 0x80000001000A4030;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_10008B3A4()
{
  result = qword_1000C2E68;
  if (!qword_1000C2E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C2E68);
  }

  return result;
}

uint64_t sub_10008B3F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003714(&qword_1000C2E78, &unk_1000A39C0);
  v34 = v4;
  result = sub_10009EBC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_10009EDD4();
      sub_10009E624();
      result = sub_10009EE04();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10008B6A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10009CF14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_100003714(&qword_1000C0EF0, &qword_10009FD18);
  v40 = v4;
  result = sub_10009EBC4();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_10008CA10();
      result = sub_10009E4F4();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_10008BA4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003714(&qword_1000C0F10, &qword_1000A39D0);
  v34 = v4;
  result = sub_10009EBC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_10009EDD4();
      sub_10009E624();
      result = sub_10009EE04();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10008BCEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003714(&qword_1000C2E70, &qword_1000A39B8);
  v35 = v4;
  result = sub_10009EBC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_10009EDD4();
      sub_10009E624();
      result = sub_10009EE04();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_10008BF90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001B558(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008B3F8(v16, a4 & 1);
      v11 = sub_10001B558(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10009ED74();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10008C284();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_10008C10C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001B558(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10008BCEC(v16, a4 & 1);
      v11 = sub_10001B558(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_10009ED74();
        __break(1u);
_objc_release_x1:
        _objc_release_x1();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10008C7DC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_10008C284()
{
  v1 = v0;
  sub_100003714(&qword_1000C2E78, &unk_1000A39C0);
  v2 = *v0;
  v3 = sub_10009EBB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_10008C3F4()
{
  v1 = v0;
  v33 = sub_10009CF14();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000C0EF0, &qword_10009FD18);
  v3 = *v0;
  v4 = sub_10009EBB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_10008C674()
{
  v1 = v0;
  sub_100003714(&qword_1000C0F10, &qword_1000A39D0);
  v2 = *v0;
  v3 = sub_10009EBB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

id sub_10008C7DC()
{
  v1 = v0;
  sub_100003714(&qword_1000C2E70, &qword_1000A39B8);
  v2 = *v0;
  v3 = sub_10009EBB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_10008C948(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BB238;
  v6._object = a2;
  v4 = sub_10009EBE4(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

double sub_10008C994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_10008CA10()
{
  result = qword_1000C0B68;
  if (!qword_1000C0B68)
  {
    sub_10009CF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C0B68);
  }

  return result;
}

uint64_t sub_10008CA68()
{
  v1 = sub_10009D2A4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D2C4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = type metadata accessor for WidgetTileInfo(0);
  v16 = __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v0 + v16[22]);
  if (v19[1])
  {
    v20 = *v19;
LABEL_9:

    return v20;
  }

  v39 = v6;
  v40 = 0;
  if (*(v0 + v16[13]) != 1)
  {
    goto LABEL_8;
  }

  v21 = v0 + v16[15];
  v22 = *(v21 + 8);
  if (v22 >= 4)
  {
    goto LABEL_8;
  }

  v23 = *v21;
  v37 = v16;
  v38 = v23;
  sub_100006850(v0, v18);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      sub_100006918(v18);
      if (*(v0 + v37[17]) != 1)
      {
LABEL_27:
        v20 = 0;
        goto LABEL_9;
      }

LABEL_8:
      v20 = sub_10009E604();
      goto LABEL_9;
    }

    v31 = v38;
    sub_100006918(v18);
    sub_10009E7D4();
    v32 = sub_10009D4F4();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v14, 1, v32) == 1)
    {
      sub_10008E82C(v14);
    }

    else
    {
      (*(v2 + 104))(v4, enum case for StatusContext.tile(_:), v1);
      sub_10009D2B4();
      (*(v2 + 8))(v4, v1);
      (*(v33 + 56))(v12, 1, 1, v32);
      v34 = v32;
      v20 = sub_10009D4C4();
      v36 = v35;
      sub_10008E82C(v12);
      (*(v39 + 8))(v8, v5);
      (*(v33 + 8))(v14, v34);
      if (v36)
      {
LABEL_24:

        goto LABEL_9;
      }
    }

    v20 = sub_10009E604();

    goto LABEL_24;
  }

  if (!v22)
  {
    v24 = v38;
    v20 = sub_10008E548();

LABEL_19:
    sub_100006918(v18);
    goto LABEL_9;
  }

  v26 = v38;
  v27 = [v26 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v28 = sub_10009E6A4();

  if (!(v28 >> 62))
  {
    result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

  result = sub_10009EBA4();
  if (!result)
  {
LABEL_26:
    sub_100006918(v18);

    goto LABEL_27;
  }

LABEL_15:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = sub_10009EAE4();
    goto LABEL_18;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v28 + 32);
LABEL_18:
    v30 = v29;

    v20 = sub_10008E548();

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008CFDC()
{
  v1 = sub_10009D464();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D1C4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v43 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v43 - v14;
  __chkstk_darwin(v13);
  v17 = &v43 - v16;
  v18 = type metadata accessor for WidgetTileInfo(0);
  if ((*(v0 + *(v18 + 84) + 8) & 1) == 0)
  {
    return sub_10008DFCC();
  }

  v19 = v0 + *(v18 + 60);
  v20 = *(v19 + 8);
  if ((v20 - 2) < 3)
  {
    return 0;
  }

  v51 = v18;
  v22 = *v19;
  v53 = v6;
  v54 = v0;
  v49 = v4;
  if (v20)
  {
    v24 = v22;
    v25 = [v24 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v26 = sub_10009E6A4();

    if (v26 >> 62)
    {
      result = sub_10009EBA4();
      if (result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_10:
        v44 = v1;
        v50 = v2;
        if ((v26 & 0xC000000000000001) != 0)
        {
          v27 = sub_10009EAE4();
        }

        else
        {
          if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v27 = *(v26 + 32);
        }

        v23 = v27;

        v6 = v53;
        goto LABEL_14;
      }
    }

    return 0;
  }

  v50 = v2;
  v44 = v1;
  v23 = v22;
LABEL_14:
  v52 = v23;
  sub_10009E904();
  v46 = *(v6 + 104);
  v46(v15, enum case for ServiceKind.thermostat(_:), v5);
  v28 = sub_10009408C();
  sub_10009E654();
  v47 = v28;
  sub_10009E654();
  v48 = v12;
  v45 = v6 + 104;
  if (v57 == v55 && v58 == v56)
  {
    v29 = 1;
  }

  else
  {
    v29 = sub_10009ED34();
  }

  v30 = v54;
  v31 = *(v53 + 8);
  v31(v15, v5);
  v31(v17, v5);

  v32 = v50;
  if ((v29 & 1) == 0)
  {
    v33 = v48;
    sub_10009E904();
    v46(v9, enum case for ServiceKind.heaterCooler(_:), v5);
    sub_10009E654();
    sub_10009E654();
    if (v57 == v55 && v58 == v56)
    {
      v31(v9, v5);
      v31(v33, v5);

      v30 = v54;
    }

    else
    {
      v34 = sub_10009ED34();
      v31(v9, v5);
      v31(v33, v5);

      v30 = v54;
      if ((v34 & 1) == 0)
      {

        return 0;
      }
    }
  }

  if (*(v30 + *(v51 + 52)))
  {
    v35 = v51;
    v36 = v49;
    v37 = v44;
    (*(v32 + 104))(v49, enum case for CharacteristicKind.currentTemperature(_:), v44);
    v38 = *(v30 + *(v35 + 64));
    v39 = v52;
    sub_100016C60(v36, v38);
    v41 = v40;
    (*(v32 + 8))(v36, v37);
    if (v41)
    {

      return 0;
    }

    v42 = sub_10008DFCC();
  }

  else
  {
    v42 = sub_10009E604();
  }

  return v42;
}

uint64_t sub_10008D598()
{
  v77 = sub_10009D2A4();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v1 = &v65 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10009D2C4();
  v76 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v65 - v9;
  v11 = sub_10009D1C4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v65 - v16;
  v18 = type metadata accessor for WidgetTileInfo(0);
  v19 = __chkstk_darwin(v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (v78 + *(v19 + 88));
  if (v22[1])
  {
    v23 = *v22;
LABEL_11:

    return v23;
  }

  v67 = v8;
  v68 = v4;
  v69 = v2;
  v70 = v17;
  v24 = v77;
  v71 = v15;
  v72 = v12;
  v73 = v11;
  v74 = 0;
  if (*(v78 + v18[13]) != 1)
  {
    goto LABEL_10;
  }

  v25 = v78 + v18[15];
  v26 = *(v25 + 8);
  if (v26 >= 4)
  {
    goto LABEL_10;
  }

  v27 = *v25;
  v28 = v78;
  v66 = v21;
  sub_100006850(v78, v21);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      sub_100006918(v66);
      if (*(v28 + v18[17]) != 1)
      {
LABEL_33:
        v23 = 0;
        goto LABEL_11;
      }

LABEL_10:
      v23 = sub_10009E604();
      goto LABEL_11;
    }

    v51 = v27;
    sub_100006918(v66);
    v52 = v10;
    sub_10009E7D4();
    v53 = sub_10009D4F4();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v10, 1, v53) == 1)
    {
      sub_10008E82C(v10);
    }

    else
    {
      v55 = v75;
      (*(v75 + 104))(v1, enum case for StatusContext.tile(_:), v24);
      v56 = v51;
      v57 = v68;
      sub_10009D2B4();
      (*(v55 + 8))(v1, v24);
      v58 = v67;
      (*(v54 + 56))(v67, 1, 1, v53);
      v23 = sub_10009D4C4();
      v60 = v59;
      sub_10008E82C(v58);
      v61 = v57;
      v51 = v56;
      (*(v76 + 8))(v61, v69);
      (*(v54 + 8))(v52, v53);
      if (v60)
      {
LABEL_31:

        goto LABEL_11;
      }
    }

    v23 = sub_10009E604();

    goto LABEL_31;
  }

  if (!v26)
  {
    v29 = v27;
    v30 = v70;
    sub_10009E904();
    v31 = v72;
    v32 = v73;
    v33 = (*(v72 + 88))(v30, v73);
    if (v33 == enum case for ServiceKind.airPurifier(_:))
    {
LABEL_8:
      v34 = &enum case for CharacteristicKind.rotationSpeed(_:);
      v35 = "fanActivated: %s rotationSpeedValue: %ld";
LABEL_9:
      v36 = v66;
      v37 = sub_100093B5C(v34, v35);
LABEL_28:
      v23 = v37;

      sub_100006918(v36);
      goto LABEL_11;
    }

    if (v33 != enum case for ServiceKind.door(_:))
    {
      if (v33 == enum case for ServiceKind.fan(_:))
      {
        goto LABEL_8;
      }

      if (v33 != enum case for ServiceKind.faucet(_:) && v33 != enum case for ServiceKind.garageDoorOpener(_:) && v33 != enum case for ServiceKind.heaterCooler(_:))
      {
        if (v33 == enum case for ServiceKind.humidifierDehumidifier(_:))
        {
          v36 = v66;
          v37 = sub_10009287C();
          goto LABEL_28;
        }

        if (v33 != enum case for ServiceKind.irrigationSystem(_:))
        {
          if (v33 == enum case for ServiceKind.lightbulb(_:))
          {
            v34 = &enum case for CharacteristicKind.brightness(_:);
            v35 = "lightbulb: %s brightnessValue: %ld";
            goto LABEL_9;
          }

          if (v33 != enum case for ServiceKind.lockMechanism(_:) && v33 != enum case for ServiceKind.securitySystem(_:) && v33 != enum case for ServiceKind.thermostat(_:) && v33 != enum case for ServiceKind.valve(_:))
          {
            if (v33 == enum case for ServiceKind.ventilationFan(_:))
            {
              goto LABEL_8;
            }

            if (v33 != enum case for ServiceKind.window(_:) && v33 != enum case for ServiceKind.windowCovering(_:))
            {
              v62 = v66;
              v63 = v31;
              v23 = sub_100093678();

              sub_100006918(v62);
              (*(v63 + 8))(v30, v32);
              goto LABEL_11;
            }
          }
        }
      }
    }

    v36 = v66;
    v37 = sub_10008CA68();
    goto LABEL_28;
  }

  v39 = v27;
  v40 = [v39 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v41 = sub_10009E6A4();

  if (v41 >> 62)
  {
    result = sub_10009EBA4();
  }

  else
  {
    result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v71;
  if (!result)
  {
    sub_100006918(v66);

    goto LABEL_33;
  }

  if ((v41 & 0xC000000000000001) != 0)
  {
    v44 = sub_10009EAE4();
    v43 = v73;
LABEL_21:

    sub_10009E904();
    v45 = v72;
    v46 = (*(v72 + 88))(v42, v43);
    if (v46 == enum case for ServiceKind.airPurifier(_:))
    {
LABEL_22:
      v47 = &enum case for CharacteristicKind.rotationSpeed(_:);
      v48 = "fanActivated: %s rotationSpeedValue: %ld";
LABEL_23:
      v49 = v66;
      v50 = sub_100093B5C(v47, v48);
LABEL_36:
      v23 = v50;

      sub_100006918(v49);
      goto LABEL_11;
    }

    if (v46 != enum case for ServiceKind.door(_:))
    {
      if (v46 == enum case for ServiceKind.fan(_:))
      {
        goto LABEL_22;
      }

      if (v46 != enum case for ServiceKind.faucet(_:) && v46 != enum case for ServiceKind.garageDoorOpener(_:) && v46 != enum case for ServiceKind.heaterCooler(_:))
      {
        if (v46 == enum case for ServiceKind.humidifierDehumidifier(_:))
        {
          v49 = v66;
          v50 = sub_10009287C();
          goto LABEL_36;
        }

        if (v46 != enum case for ServiceKind.irrigationSystem(_:))
        {
          if (v46 == enum case for ServiceKind.lightbulb(_:))
          {
            v47 = &enum case for CharacteristicKind.brightness(_:);
            v48 = "lightbulb: %s brightnessValue: %ld";
            goto LABEL_23;
          }

          if (v46 != enum case for ServiceKind.lockMechanism(_:) && v46 != enum case for ServiceKind.securitySystem(_:) && v46 != enum case for ServiceKind.thermostat(_:) && v46 != enum case for ServiceKind.valve(_:))
          {
            if (v46 == enum case for ServiceKind.ventilationFan(_:))
            {
              goto LABEL_22;
            }

            if (v46 != enum case for ServiceKind.window(_:) && v46 != enum case for ServiceKind.windowCovering(_:))
            {
              v64 = v66;
              v23 = sub_100093678();

              sub_100006918(v64);
              (*(v45 + 8))(v42, v43);
              goto LABEL_11;
            }
          }
        }
      }
    }

    v49 = v66;
    v50 = sub_10008CA68();
    goto LABEL_36;
  }

  v43 = v73;
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v41 + 32);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_10008DFCC()
{
  v0 = sub_10009CDB4();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin(v0);
  v36 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100003714(&qword_1000C2E90, &qword_1000A39E0);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v31 = &v26 - v2;
  v3 = sub_100003714(&qword_1000C2E98, &qword_1000A39E8);
  __chkstk_darwin(v3 - 8);
  v29 = &v26 - v4;
  v5 = sub_100003714(&qword_1000C2EA0, &qword_1000A39F0);
  __chkstk_darwin(v5 - 8);
  v28 = &v26 - v6;
  v7 = sub_100003714(&qword_1000C2EA8, &qword_1000A39F8);
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v32 = sub_100003714(&qword_1000C2EB0, &qword_1000A3A00);
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v12 = &v26 - v11;
  v13 = sub_100003714(&qword_1000C2EB8, &qword_1000A3A08);
  __chkstk_darwin(v13 - 8);
  v14 = sub_10009CF54();
  __chkstk_darwin(v14 - 8);
  sub_100007330(0, &qword_1000C2EC0, NSUnitTemperature_ptr);
  sub_10009CF34();
  sub_10009CD94();
  v27 = sub_10009E884();
  v15 = objc_opt_self();
  v16 = [v15 celsius];
  sub_10009E8E4();

  v17 = [v15 celsius];
  sub_10009CCC4();
  sub_10009CCE4();
  sub_10009CD94();
  sub_10009CF34();
  sub_100094038();
  v18 = v31;
  sub_10009CD74();
  v19 = v36;
  sub_10009CDA4();
  v20 = v29;
  v21 = v35;
  sub_10009CD84();
  (*(v38 + 8))(v19, v39);
  v22 = v37;
  (*(v37 + 8))(v18, v21);
  (*(v22 + 56))(v20, 0, 1, v21);
  sub_10009CF34();
  sub_10009CCF4();
  v23 = v33;
  v24 = sub_10009CCD4();

  (*(v34 + 8))(v10, v23);
  (*(v30 + 8))(v12, v32);
  return v24;
}

uint64_t sub_10008E548()
{
  v0 = sub_10009D1C4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E904();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for ServiceKind.airPurifier(_:))
  {
    return sub_10009E604();
  }

  if (v4 == enum case for ServiceKind.door(_:))
  {
    return sub_100091D5C();
  }

  if (v4 == enum case for ServiceKind.fan(_:))
  {
    return sub_10009E604();
  }

  if (v4 == enum case for ServiceKind.faucet(_:))
  {
    return sub_1000913B8();
  }

  if (v4 == enum case for ServiceKind.garageDoorOpener(_:))
  {
    return sub_10008FA4C();
  }

  if (v4 == enum case for ServiceKind.heaterCooler(_:))
  {
    return sub_10008E894();
  }

  if (v4 == enum case for ServiceKind.humidifierDehumidifier(_:))
  {
    return sub_10009E604();
  }

  if (v4 == enum case for ServiceKind.irrigationSystem(_:))
  {
    return sub_100090E10();
  }

  if (v4 == enum case for ServiceKind.lightbulb(_:))
  {
    return sub_10009E604();
  }

  if (v4 == enum case for ServiceKind.lockMechanism(_:))
  {
    return sub_100090158();
  }

  if (v4 == enum case for ServiceKind.securitySystem(_:))
  {
    return sub_1000906C4();
  }

  if (v4 == enum case for ServiceKind.thermostat(_:))
  {
    return sub_10008F174();
  }

  if (v4 == enum case for ServiceKind.valve(_:))
  {
    return sub_100091834();
  }

  if (v4 == enum case for ServiceKind.ventilationFan(_:))
  {
    return sub_10009E604();
  }

  if (v4 == enum case for ServiceKind.window(_:) || v4 == enum case for ServiceKind.windowCovering(_:))
  {
    return sub_100091D5C();
  }

  v6 = sub_10009E604();
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_10008E82C(uint64_t a1)
{
  v2 = sub_100003714(&qword_1000C0C80, &qword_1000A1E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008E894()
{
  v1 = sub_10009D414();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009CF14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009D464();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v15 = v0 + *(v13 + 60);
  v16 = *(v15 + 8);
  if ((v16 - 2) >= 3)
  {
    v69 = v6;
    v70 = v5;
    v68 = v4;
    v71 = v13;
    v17 = *v15;
    if (!v16)
    {
      v65 = v2;
      v66 = v1;
      v18 = v17;
      goto LABEL_10;
    }

    v19 = v17;
    v18 = [v19 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v20 = sub_10009E6A4();

    if (v20 >> 62)
    {
      if (sub_10009EBA4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v65 = v2;
      v66 = v1;
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = sub_10009EAE4();
      }

      else
      {
        if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v21 = *(v20 + 32);
      }

      v18 = v21;

LABEL_10:
      v22 = *(v10 + 104);
      v22(v12, enum case for CharacteristicKind.targetHeaterCoolerState(_:), v9);
      v23 = *(v71 + 64);
      v71 = v0;
      v20 = *(v0 + v23);
      v67 = sub_100016C54(v12, v20);
      v25 = v24;
      v26 = *(v10 + 8);
      v26(v12, v9);
      if (v25 & 1) != 0 || (v22(v12, enum case for CharacteristicKind.currentHeaterCoolerState(_:), v9), v64 = sub_100016C54(v12, v20), v28 = v27, v26(v12, v9), (v28) || (v22(v12, enum case for CharacteristicKind.active(_:), v9), v63 = sub_100016EAC(v12, v20), v29 = v63, v26(v12, v9), v29 == 2))
      {

        return 0;
      }

      v22(v12, enum case for CharacteristicKind.heatingThreshold(_:), v9);
      v61[1] = sub_100016C60(v12, v20);
      v62 = v30;
      v26(v12, v9);
      v22(v12, enum case for CharacteristicKind.coolingThreshold(_:), v9);
      sub_100016C60(v12, v20);
      LOBYTE(v20) = v31;
      v26(v12, v9);
      if (qword_1000C0A90 == -1)
      {
LABEL_15:
        v32 = sub_10009D924();
        sub_100015B68(v32, qword_1000C8278);
        v19 = v18;
        v33 = sub_10009D904();
        v34 = sub_10009E844();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = v20;
          v20 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v72 = v36;
          *v20 = 136315650;
          v37 = [v19 uniqueIdentifier];
          sub_10009CF04();

          v38 = sub_10009CEE4();
          v40 = v39;
          (*(v69 + 8))(v8, v70);
          v41 = sub_10002AD68(v38, v40, &v72);

          *(v20 + 4) = v41;
          *(v20 + 12) = 2048;
          *(v20 + 14) = v64;
          *(v20 + 22) = 2048;
          v42 = v67;
          *(v20 + 24) = v67;
          _os_log_impl(&_mh_execute_header, v33, v34, "heaterCooler: %s currentHeaterCoolerState: %ld targetHeaterCoolerState: %ld", v20, 0x20u);
          sub_100015F44(v36);

          LOBYTE(v20) = v35;

          if ((v63 & 1) == 0)
          {
LABEL_17:
            v43 = sub_10009E604();

            return v43;
          }
        }

        else
        {

          v42 = v67;
          if ((v63 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if (v42 == 2)
        {
          if (v64 < 2)
          {
            if (v20)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          if (v64 != 2)
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v42 != 1)
          {
            if (!v42 && (v62 & 1) == 0 && (v20 & 1) == 0)
            {
              v71 = sub_10009E604();
              sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_10009F8F0;
              v45 = sub_10008DFCC();
              v46 = v19;
              v48 = v47;
              *(v44 + 56) = &type metadata for String;
              v49 = sub_100093FE4();
              *(v44 + 64) = v49;
              *(v44 + 32) = v45;
              *(v44 + 40) = v48;
              v51 = v65;
              v50 = v66;
              v52 = v68;
              (*(v65 + 104))(v68, enum case for ClimateSummarizer.TemperatureScale.locale(_:), v66);
              v53 = sub_10009D424();
              v55 = v54;
              (*(v51 + 8))(v52, v50);
              *(v44 + 96) = &type metadata for String;
              *(v44 + 104) = v49;
              *(v44 + 72) = v53;
              *(v44 + 80) = v55;
              v56 = sub_10009E5D4();

              return v56;
            }

            goto LABEL_41;
          }

          if (v64 < 2)
          {
            if (v62)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          if (v64 != 2)
          {
LABEL_28:
            if (v64 == 3 && (v20 & 1) == 0)
            {
              goto LABEL_38;
            }

LABEL_41:

            return 0;
          }
        }

        if (v62)
        {
          goto LABEL_41;
        }

LABEL_38:
        sub_10009E604();
        sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_10009F8D0;
        v58 = sub_10008DFCC();
        v60 = v59;
        *(v57 + 56) = &type metadata for String;
        *(v57 + 64) = sub_100093FE4();
        *(v57 + 32) = v58;
        *(v57 + 40) = v60;
        v43 = sub_10009E5D4();

        return v43;
      }

LABEL_46:
      swift_once();
      goto LABEL_15;
    }

    goto LABEL_41;
  }

  return result;
}

uint64_t sub_10008F174()
{
  v1 = sub_10009D414();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009CF14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10009D464();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v15 = v0 + *(v13 + 60);
  v16 = *(v15 + 8);
  if ((v16 - 2) >= 3)
  {
    v72 = v6;
    v73 = v5;
    v71 = v4;
    v74 = v13;
    v17 = *v15;
    if (!v16)
    {
      v68 = v2;
      v69 = v1;
      v18 = v17;
      goto LABEL_10;
    }

    v19 = v17;
    v18 = [v19 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v20 = sub_10009E6A4();

    if (v20 >> 62)
    {
      if (sub_10009EBA4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v68 = v2;
      v69 = v1;
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = sub_10009EAE4();
      }

      else
      {
        if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v21 = *(v20 + 32);
      }

      v18 = v21;

LABEL_10:
      v22 = *(v10 + 104);
      v22(v12, enum case for CharacteristicKind.targetHeatingCoolingMode(_:), v9);
      v23 = *(v74 + 64);
      v74 = v0;
      v24 = *(v0 + v23);
      v70 = sub_100016C54(v12, v24);
      v26 = v25;
      v27 = *(v10 + 8);
      v27(v12, v9);
      if (v26 & 1) != 0 || (v22(v12, enum case for CharacteristicKind.currentHeatingCooling(_:), v9), v67 = sub_100016C54(v12, v24), v29 = v28, v27(v12, v9), (v29))
      {

        return 0;
      }

      v22(v12, enum case for CharacteristicKind.targetTemperature(_:), v9);
      v63[2] = sub_100016C60(v12, v24);
      v65 = v30;
      v27(v12, v9);
      v22(v12, enum case for CharacteristicKind.heatingThreshold(_:), v9);
      v63[1] = sub_100016C60(v12, v24);
      v66 = v31;
      v27(v12, v9);
      v22(v12, enum case for CharacteristicKind.coolingThreshold(_:), v9);
      sub_100016C60(v12, v24);
      v64 = v32;
      v27(v12, v9);
      if (qword_1000C0A90 == -1)
      {
LABEL_14:
        v33 = sub_10009D924();
        sub_100015B68(v33, qword_1000C8278);
        v34 = v18;
        v35 = sub_10009D904();
        v36 = sub_10009E844();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v75 = v38;
          *v37 = 136315650;
          v39 = [v34 uniqueIdentifier];
          sub_10009CF04();

          v40 = sub_10009CEE4();
          v42 = v41;
          (*(v72 + 8))(v8, v73);
          v43 = sub_10002AD68(v40, v42, &v75);

          *(v37 + 4) = v43;
          *(v37 + 12) = 2048;
          v44 = v70;
          *(v37 + 14) = v70;
          *(v37 + 22) = 2048;
          v45 = v67;
          *(v37 + 24) = v67;
          _os_log_impl(&_mh_execute_header, v35, v36, "thermostat: %s targetHeatingCoolingMode: %ld currentHeatingCooling: %ld", v37, 0x20u);
          sub_100015F44(v38);

          if (v44 != 3)
          {
            goto LABEL_16;
          }
        }

        else
        {

          v44 = v70;
          v45 = v67;
          if (v70 != 3)
          {
LABEL_16:
            if (v45 == 2)
            {
              if ((v65 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else if (v45 == 1)
            {
              if ((v65 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else if (v44 != 2 || v45)
            {
              if (v44 != 1 || v45)
              {
                if (!v44 && !v45)
                {
                  v58 = sub_10009E604();

                  return v58;
                }
              }

              else if ((v65 & 1) == 0)
              {
LABEL_33:
                sub_10009E604();
                sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
                v59 = swift_allocObject();
                *(v59 + 16) = xmmword_10009F8D0;
                v60 = sub_10008DFCC();
                v62 = v61;
                *(v59 + 56) = &type metadata for String;
                *(v59 + 64) = sub_100093FE4();
                *(v59 + 32) = v60;
                *(v59 + 40) = v62;
                v58 = sub_10009E5D4();

                goto LABEL_34;
              }
            }

            else if ((v65 & 1) == 0)
            {
              goto LABEL_33;
            }

LABEL_38:

            return 0;
          }
        }

        if ((v66 & 1) == 0 && (v64 & 1) == 0)
        {
          v74 = sub_10009E604();
          sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_10009F8F0;
          v47 = sub_10008DFCC();
          v49 = v48;
          *(v46 + 56) = &type metadata for String;
          v50 = sub_100093FE4();
          *(v46 + 64) = v50;
          *(v46 + 32) = v47;
          *(v46 + 40) = v49;
          v51 = v68;
          v52 = v71;
          v53 = v34;
          v54 = v69;
          (*(v68 + 104))(v71, enum case for ClimateSummarizer.TemperatureScale.locale(_:), v69);
          v55 = sub_10009D424();
          v57 = v56;
          (*(v51 + 8))(v52, v54);
          *(v46 + 96) = &type metadata for String;
          *(v46 + 104) = v50;
          *(v46 + 72) = v55;
          *(v46 + 80) = v57;
          v58 = sub_10009E5D4();

LABEL_34:

          return v58;
        }

        goto LABEL_38;
      }

LABEL_46:
      swift_once();
      goto LABEL_14;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10008FA4C()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D464();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v11 = v0 + *(v9 + 60);
  v12 = *(v11 + 8);
  if ((v12 - 2) >= 3)
  {
    v59 = v2;
    v13 = v9;
    v14 = *v11;
    if (!v12)
    {
      v57 = v1;
      v15 = v14;
      goto LABEL_10;
    }

    v16 = v14;
    v15 = [v16 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v17 = sub_10009E6A4();

    if (v17 >> 62)
    {
      if (sub_10009EBA4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v57 = v1;
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = sub_10009EAE4();
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_34;
        }

        v18 = *(v17 + 32);
      }

      v15 = v18;

LABEL_10:
      v19 = *(v6 + 104);
      v19(v8, enum case for CharacteristicKind.currentDoorState(_:), v5);
      v13 = *(v0 + *(v13 + 64));
      v58 = sub_100016C54(v8, v13);
      v21 = v20;
      v16 = *(v6 + 8);
      (v16)(v8, v5);
      if (v21 & 1) != 0 || (v56 = v19, v19(v8, enum case for CharacteristicKind.targetDoorState(_:), v5), v22 = sub_100016C54(v8, v13), v24 = v23, (v16)(v8, v5), (v24))
      {
LABEL_12:

        return 0;
      }

      v55 = v22;
      if (qword_1000C0A90 == -1)
      {
LABEL_14:
        v25 = sub_10009D924();
        v26 = sub_100015B68(v25, qword_1000C8278);
        v15 = v15;
        v53 = v26;
        v27 = sub_10009D904();
        v28 = sub_10009E844();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v54 = v15;
          v30 = v29;
          v51 = swift_slowAlloc();
          v60 = v51;
          *v30 = 136315650;
          v31 = [v54 uniqueIdentifier];
          v52 = v16;
          v32 = v28;
          v33 = v31;
          sub_10009CF04();

          v50 = sub_10009CEE4();
          v35 = v34;
          (*(v59 + 8))(v4, v57);
          v50 = sub_10002AD68(v50, v35, &v60);

          *(v30 + 4) = v50;
          *(v30 + 12) = 2048;
          *(v30 + 14) = v58;
          *(v30 + 22) = 2048;
          *(v30 + 24) = v55;
          v36 = v32;
          v16 = v52;
          _os_log_impl(&_mh_execute_header, v27, v36, "garageDoorOpener: %s currentValue: %ld targetValue: %ld", v30, 0x20u);
          sub_100015F44(v51);

          v15 = v54;
        }

        v56(v8, enum case for CharacteristicKind.obstructionDetected(_:), v5);
        v37 = sub_100016EAC(v8, v13);
        (v16)(v8, v5);
        if (v37 == 2 || (v37 & 1) == 0)
        {
          if (v58 | v55 && (v58 != 1 || v55 != 1) && v55 > 1)
          {
            goto LABEL_12;
          }

          v48 = sub_10009E604();
        }

        else
        {
          v38 = v15;
          v39 = sub_10009D904();
          v40 = sub_10009E844();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v60 = v42;
            *v41 = 136315138;
            v43 = [v38 uniqueIdentifier];
            sub_10009CF04();

            v44 = sub_10009CEE4();
            v46 = v45;
            (*(v59 + 8))(v4, v57);
            v47 = sub_10002AD68(v44, v46, &v60);

            *(v41 + 4) = v47;
            _os_log_impl(&_mh_execute_header, v39, v40, "garageDoorOpener: %s obstructionDetected", v41, 0xCu);
            sub_100015F44(v42);
          }

          v48 = sub_10009E604();
        }

        return v48;
      }

LABEL_34:
      swift_once();
      goto LABEL_14;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100090158()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D464();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v11 = v0 + *(v9 + 60);
  v12 = *(v11 + 8);
  if ((v12 - 2) >= 3)
  {
    v40 = v9;
    v13 = *v11;
    if (!v12)
    {
      v38 = v2;
      v39 = v1;
      v14 = v13;
      goto LABEL_10;
    }

    v15 = v13;
    v14 = [v15 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v16 = sub_10009E6A4();

    if (v16 >> 62)
    {
      if (sub_10009EBA4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v38 = v2;
      v39 = v1;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = sub_10009EAE4();
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_36;
        }

        v17 = *(v16 + 32);
      }

      v14 = v17;

LABEL_10:
      v18 = *(v6 + 104);
      v18(v8, enum case for CharacteristicKind.currentLockMechanismState(_:), v5);
      v19 = *(v0 + *(v40 + 64));
      v40 = sub_100016C54(v8, v19);
      v21 = v20;
      v22 = *(v6 + 8);
      v22(v8, v5);
      if (v21 & 1) != 0 || (v18(v8, enum case for CharacteristicKind.targetLockMechanismState(_:), v5), v15 = sub_100016C54(v8, v19), v24 = v23, v22(v8, v5), (v24))
      {

        return 0;
      }

      if (qword_1000C0A90 == -1)
      {
LABEL_14:
        v25 = v15;
        v26 = sub_10009D924();
        sub_100015B68(v26, qword_1000C8278);
        v15 = v14;
        v27 = sub_10009D904();
        v28 = sub_10009E844();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v41 = v30;
          *v29 = 136315650;
          v31 = [v15 uniqueIdentifier];
          sub_10009CF04();

          v32 = sub_10009CEE4();
          v34 = v33;
          (*(v38 + 8))(v4, v39);
          v35 = sub_10002AD68(v32, v34, &v41);

          *(v29 + 4) = v35;
          *(v29 + 12) = 2048;
          v36 = v40;
          *(v29 + 14) = v40;
          *(v29 + 22) = 2048;
          *(v29 + 24) = v25;
          _os_log_impl(&_mh_execute_header, v27, v28, "lockMechanism: %s currentValue: %ld targetValue: %ld", v29, 0x20u);
          sub_100015F44(v30);

          if (v36 != 3)
          {
            goto LABEL_16;
          }
        }

        else
        {

          v36 = v40;
          if (v40 != 3)
          {
LABEL_16:
            if (v36 == 2 || !(v36 | v25) || v36 == 1 && !v25 || !v36 && v25 == 1 || v36 == 1 && v25 == 1)
            {
              goto LABEL_23;
            }

LABEL_31:

            return 0;
          }
        }

LABEL_23:
        v37 = sub_10009E604();

        return v37;
      }

LABEL_36:
      swift_once();
      goto LABEL_14;
    }

    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1000906C4()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D464();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v11 = v0 + *(v9 + 60);
  v12 = *(v11 + 8);
  if ((v12 - 2) >= 3)
  {
    v66 = v2;
    v13 = v9;
    v14 = *v11;
    if (!v12)
    {
      v15 = v14;
      goto LABEL_10;
    }

    v16 = v14;
    v17 = [v16 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v18 = sub_10009E6A4();

    if (v18 >> 62)
    {
      result = sub_10009EBA4();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        if ((v18 & 0xC000000000000001) != 0)
        {
          v19 = sub_10009EAE4();
        }

        else
        {
          if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v19 = *(v18 + 32);
        }

        v15 = v19;

LABEL_10:
        v65 = *(v6 + 104);
        v65(v8, enum case for CharacteristicKind.currentSecuritySystemState(_:), v5);
        v20 = *(v0 + *(v13 + 64));
        v21 = sub_100016C54(v8, v20);
        v23 = v22;
        v64 = *(v6 + 8);
        v64(v8, v5);
        if (v23)
        {

          return 0;
        }

        v62 = v1;
        if (qword_1000C0A90 != -1)
        {
          swift_once();
        }

        v24 = sub_10009D924();
        v25 = sub_100015B68(v24, qword_1000C8278);
        v26 = v15;
        v59 = v25;
        v27 = sub_10009D904();
        v28 = sub_10009E844();

        v60 = v28;
        v29 = os_log_type_enabled(v27, v28);
        v61 = v21;
        v63 = v26;
        if (v29)
        {
          v30 = swift_slowAlloc();
          v58 = v20;
          v31 = v30;
          v57 = swift_slowAlloc();
          v67 = v57;
          *v31 = 136315394;
          v32 = [v26 uniqueIdentifier];
          v33 = v27;
          v34 = v32;
          sub_10009CF04();

          v35 = sub_10009CEE4();
          v37 = v36;
          v38 = v62;
          (*(v66 + 8))(v4, v62);
          v39 = sub_10002AD68(v35, v37, &v67);
          v40 = v61;

          *(v31 + 4) = v39;
          *(v31 + 12) = 2048;
          *(v31 + 14) = v40;
          _os_log_impl(&_mh_execute_header, v33, v60, "securitySystem: %s currentValue: %ld", v31, 0x16u);
          sub_100015F44(v57);

          v20 = v58;

          if (v40 != 4)
          {
            goto LABEL_16;
          }
        }

        else
        {

          v38 = v62;
          if (v21 != 4)
          {
LABEL_16:
            v65(v8, enum case for CharacteristicKind.targetSecuritySystemState(_:), v5);
            v41 = v63;
            v42 = sub_100016C54(v8, v20);
            v44 = v43;
            v64(v8, v5);
            if (v44)
            {

              return 0;
            }

            v46 = v41;
            v47 = sub_10009D904();
            v48 = sub_10009E844();

            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              v67 = v50;
              *v49 = 136315394;
              v51 = [v46 uniqueIdentifier];
              sub_10009CF04();

              v52 = sub_10009CEE4();
              v54 = v53;
              (*(v66 + 8))(v4, v38);
              v55 = sub_10002AD68(v52, v54, &v67);

              *(v49 + 4) = v55;
              *(v49 + 12) = 2048;
              *(v49 + 14) = v42;
              _os_log_impl(&_mh_execute_header, v47, v48, "securitySystem: %s targetValue: %ld", v49, 0x16u);
              sub_100015F44(v50);
            }

            if (v42 > 1)
            {
              if (v42 == 2 || v42 == 3)
              {
                goto LABEL_28;
              }
            }

            else if (v42 <= 1)
            {
LABEL_28:
              v45 = sub_10009E604();

              return v45;
            }

            return 0;
          }
        }

        v45 = sub_10009E604();

        return v45;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100090E10()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D464();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v11 = v0 + *(v9 + 60);
  v12 = *(v11 + 8);
  if ((v12 - 2) < 3)
  {
    return result;
  }

  v46 = v9;
  v13 = *v11;
  if (v12)
  {
    v15 = v13;
    v16 = [v15 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v17 = sub_10009E6A4();

    if (v17 >> 62)
    {
      result = sub_10009EBA4();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        v44 = v2;
        v45 = v1;
        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = sub_10009EAE4();
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v18 = *(v17 + 32);
        }

        v14 = v18;

        goto LABEL_10;
      }
    }

    return 0;
  }

  v44 = v2;
  v45 = v1;
  v14 = v13;
LABEL_10:
  v19 = *(v6 + 104);
  v19(v8, enum case for CharacteristicKind.inUse(_:), v5);
  v20 = *(v0 + *(v46 + 64));
  LODWORD(v46) = sub_100016EAC(v8, v20);
  v21 = v46;
  v22 = *(v6 + 8);
  v22(v8, v5);
  if (v21 == 2)
  {

    return 0;
  }

  v19(v8, enum case for CharacteristicKind.active(_:), v5);
  v43 = sub_100016EAC(v8, v20);
  v22(v8, v5);
  v19(v8, enum case for CharacteristicKind.programMode(_:), v5);
  v23 = sub_100016C54(v8, v20);
  v42 = v24;
  v22(v8, v5);
  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v25 = sub_10009D924();
  sub_100015B68(v25, qword_1000C8278);
  v26 = v14;
  v27 = sub_10009D904();
  v28 = sub_10009E844();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v23;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v47 = v31;
    *v30 = 136315906;
    v32 = [v26 uniqueIdentifier];
    sub_10009CF04();

    v33 = sub_10009CEE4();
    v35 = v34;
    (*(v44 + 8))(v4, v45);
    v36 = sub_10002AD68(v33, v35, &v47);

    *(v30 + 4) = v36;
    *(v30 + 12) = 1024;
    v37 = v43 != 2 && (v43 & 1) != 0;
    v38 = v46;
    *(v30 + 14) = v37;
    *(v30 + 18) = 1024;
    *(v30 + 20) = v38 & 1;
    *(v30 + 24) = 2048;
    if (v42)
    {
      v39 = -1;
    }

    else
    {
      v39 = v29;
    }

    *(v30 + 26) = v39;
    _os_log_impl(&_mh_execute_header, v27, v28, "irrigationSystem: %s active: %{BOOL}d inUse: %{BOOL}d programMode: %ld", v30, 0x22u);
    sub_100015F44(v31);
  }

  else
  {
  }

  v40 = sub_10009E604();

  return v40;
}

uint64_t sub_1000913B8()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D464();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v11 = v0 + *(v9 + 60);
  v12 = *(v11 + 8);
  if ((v12 - 2) < 3)
  {
    return result;
  }

  v32 = v2;
  v13 = *v11;
  if (v12)
  {
    v15 = v13;
    v16 = [v15 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v17 = sub_10009E6A4();

    if (v17 >> 62)
    {
      result = sub_10009EBA4();
      if (result)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_6:
        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = sub_10009EAE4();
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v18 = *(v17 + 32);
        }

        v14 = v18;

        goto LABEL_10;
      }
    }

    return 0;
  }

  v14 = v13;
LABEL_10:
  (*(v6 + 104))(v8, enum case for CharacteristicKind.active(_:), v5);
  v19 = sub_100016EAC(v8, *(v0 + *(v9 + 64)));
  (*(v6 + 8))(v8, v5);
  if (v19 == 2)
  {

    return 0;
  }

  if (qword_1000C0A90 != -1)
  {
    swift_once();
  }

  v20 = sub_10009D924();
  sub_100015B68(v20, qword_1000C8278);
  v21 = v14;
  v22 = sub_10009D904();
  v23 = sub_10009E844();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v33 = v25;
    *v24 = 136315394;
    v26 = [v21 uniqueIdentifier];
    sub_10009CF04();

    v27 = sub_10009CEE4();
    v29 = v28;
    (*(v32 + 8))(v4, v1);
    v30 = sub_10002AD68(v27, v29, &v33);

    *(v24 + 4) = v30;
    *(v24 + 12) = 1024;
    *(v24 + 14) = v19 & 1;
    _os_log_impl(&_mh_execute_header, v22, v23, "faucet: %s active: %{BOOL}d", v24, 0x12u);
    sub_100015F44(v25);
  }

  v31 = sub_10009E604();

  return v31;
}

uint64_t sub_100091834()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D464();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v11 = v0 + *(v9 + 60);
  v12 = *(v11 + 8);
  if ((v12 - 2) < 3)
  {
    return result;
  }

  v35 = v9;
  v13 = *v11;
  if (!v12)
  {
    v33 = v2;
    v34 = v1;
    v14 = v13;
LABEL_10:
    v18 = *(v6 + 104);
    v18(v8, enum case for CharacteristicKind.inUse(_:), v5);
    v16 = *(v0 + *(v35 + 64));
    LODWORD(v35) = sub_100016EAC(v8, v16);
    v19 = v35;
    v20 = *(v6 + 8);
    v20(v8, v5);
    if (v19 == 2 || (v18(v8, enum case for CharacteristicKind.active(_:), v5), LOBYTE(v16) = sub_100016EAC(v8, v16), v20(v8, v5), v16 == 2))
    {

      return 0;
    }

    if (qword_1000C0A90 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  v15 = v13;
  v14 = [v15 services];
  sub_100007330(0, &qword_1000C0C48, HMService_ptr);
  v16 = sub_10009E6A4();

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_18:

    return 0;
  }

  if (!sub_10009EBA4())
  {
    goto LABEL_18;
  }

LABEL_6:
  v33 = v2;
  v34 = v1;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = sub_10009EAE4();
    goto LABEL_9;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 32);
LABEL_9:
    v14 = v17;

    goto LABEL_10;
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_14:
  v21 = sub_10009D924();
  sub_100015B68(v21, qword_1000C8278);
  v22 = v14;
  v23 = sub_10009D904();
  v24 = sub_10009E844();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315650;
    v27 = [v22 uniqueIdentifier];
    sub_10009CF04();

    v28 = sub_10009CEE4();
    v30 = v29;
    (*(v33 + 8))(v4, v34);
    v31 = sub_10002AD68(v28, v30, &v36);

    *(v25 + 4) = v31;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v16 & 1;
    *(v25 + 18) = 1024;
    *(v25 + 20) = v35 & 1;
    _os_log_impl(&_mh_execute_header, v23, v24, "valve: %s active: %{BOOL}d inUse: %{BOOL}d", v25, 0x18u);
    sub_100015F44(v26);
  }

  v32 = sub_10009E604();
  return v32;
}

uint64_t sub_100091D5C()
{
  v1 = v0;
  v2 = sub_10009CF14();
  v99 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D1C4();
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v87 - v10;
  v12 = sub_10009D464();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v18 = *(v16 + 60);
  v100 = v1;
  v19 = (v1 + v18);
  v20 = *(v1 + v18 + 8);
  if ((v20 - 2) >= 3)
  {
    v95 = v11;
    v96 = v6;
    v93 = v4;
    v94 = v2;
    v98 = v16;
    v21 = *v19;
    if (!v20)
    {
      v92 = v5;
      v22 = v15;
      v23 = v12;
      v6 = v21;
      v24 = v9;
      goto LABEL_10;
    }

    v97 = v13;
    v25 = v21;
    v26 = [v25 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v27 = sub_10009E6A4();

    v24 = v9;
    if (v27 >> 62)
    {
      if (sub_10009EBA4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      v92 = v5;
      if ((v27 & 0xC000000000000001) != 0)
      {
        v22 = v15;
        v23 = v12;
        v28 = sub_10009EAE4();
      }

      else
      {
        if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_50;
        }

        v22 = v15;
        v23 = v12;
        v28 = *(v27 + 32);
      }

      v6 = v28;

      v13 = v97;
LABEL_10:
      v29 = v13;
      v32 = *(v13 + 104);
      v31 = v13 + 104;
      v30 = v32;
      v32(v22, enum case for CharacteristicKind.targetPosition(_:), v23);
      v33 = *(v100 + *(v98 + 64));
      v100 = sub_100016C54(v22, v33);
      v35 = v34;
      v38 = *(v29 + 8);
      v37 = v29 + 8;
      v36 = v38;
      v38(v22, v23);
      if (v35 & 1) != 0 || (v91 = v31, v30(v22, enum case for CharacteristicKind.currentPosition(_:), v23), v89 = v33, v98 = v36, v39 = sub_100016C54(v22, v33), v41 = v40, v90 = v22, v42 = v23, v97 = v37, (v98)(v22, v23), (v41))
      {

        return 0;
      }

      v43 = v30;
      v87 = v39;
      v44 = v95;
      sub_10009E904();
      v45 = v96;
      v46 = v92;
      v96[13](v24, enum case for ServiceKind.door(_:), v92);
      sub_10009408C();
      sub_10009E654();
      sub_10009E654();
      v88 = v43;
      if (v103 == v101 && v104 == v102)
      {
        v47 = v45[1];
        (v47)(v24, v46);
        (v47)(v44, v46);

        v27 = 1919905604;

        v5 = 0xE400000000000000;
      }

      else
      {
        v48 = sub_10009ED34();
        v49 = v45[1];
        (v49)(v24, v46);
        (v49)(v44, v46);

        if (v48)
        {
          v27 = 1919905604;
        }

        else
        {
          v27 = 0x776F646E6957;
        }

        if (v48)
        {
          v5 = 0xE400000000000000;
        }

        else
        {
          v5 = 0xE600000000000000;
        }
      }

      v12 = v42;
      v15 = v90;
      v103 = 0xD000000000000015;
      v104 = 0x80000001000A5890;
      v105._countAndFlagsBits = v27;
      v105._object = v5;
      sub_10009E634(v105);
      v25 = v103;
      v96 = v104;
      if (qword_1000C0A90 == -1)
      {
LABEL_23:
        v50 = sub_10009D924();
        v51 = sub_100015B68(v50, qword_1000C8278);

        v52 = v6;
        v95 = v51;
        v53 = sub_10009D904();
        v54 = sub_10009E844();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v92 = v25;
          v56 = v55;
          v103 = swift_slowAlloc();
          *v56 = 136315906;
          v57 = sub_10002AD68(v27, v5, &v103);

          *(v56 + 4) = v57;
          *(v56 + 12) = 2080;
          v58 = [v52 uniqueIdentifier];
          v59 = v93;
          sub_10009CF04();

          v60 = sub_10009CEE4();
          v62 = v61;
          (*(v99 + 8))(v59, v94);
          v63 = sub_10002AD68(v60, v62, &v103);

          *(v56 + 14) = v63;
          *(v56 + 22) = 2048;
          *(v56 + 24) = v100;
          *(v56 + 32) = 2048;
          v64 = v87;
          *(v56 + 34) = v87;
          _os_log_impl(&_mh_execute_header, v53, v54, "doorWindowAndWindowConvering: serviceKind: %s service UUID: %s targetPosition: %ld currentPosition: %ld", v56, 0x2Au);
          swift_arrayDestroy();

          v25 = v92;

          v65 = v89;
        }

        else
        {

          v65 = v89;
          v64 = v87;
        }

        v88(v15, enum case for CharacteristicKind.obstructionDetected(_:), v12);
        v66 = sub_100016EAC(v15, v65);
        (v98)(v15, v12);
        v67 = v52;
        if (v66 == 2 || (v66 & 1) == 0)
        {
          v81 = v100;
          if (v64 == v100)
          {
            if (v100 == 100)
            {
              v103 = v25;
              v104 = v96;

              v82._countAndFlagsBits = 0x65704F6574617453;
              v82._object = 0xE90000000000006ELL;
            }

            else
            {
              if (v100)
              {

                sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
                isa = sub_10009E8C4(v81).super.super.isa;
                v84 = sub_10009E8C4(0).super.super.isa;
                v85 = sub_10009E8C4(100).super.super.isa;
                v86 = sub_10006A4E8(isa);

                return v86;
              }

              v103 = v25;
              v104 = v96;

              v82._countAndFlagsBits = 0x6F6C436574617453;
              v82._object = 0xEB00000000646573;
            }
          }

          else if (v100 >= v64)
          {
            if (v64 >= v100)
            {

              return 0;
            }

            v103 = v25;
            v104 = v96;

            v82._countAndFlagsBits = 0x65704F6574617453;
            v82._object = 0xEC000000676E696ELL;
          }

          else
          {
            v103 = v25;
            v104 = v96;

            v82._countAndFlagsBits = 0x6F6C436574617453;
            v82._object = 0xEC000000676E6973;
          }

          sub_10009E634(v82);

          v80 = sub_10009E604();
        }

        else
        {
          v68 = v52;
          v69 = sub_10009D904();
          v70 = sub_10009E844();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = v25;
            v73 = swift_slowAlloc();
            v103 = v73;
            *v71 = 136315138;
            v74 = [v68 uniqueIdentifier];
            v75 = v93;
            sub_10009CF04();

            v76 = sub_10009CEE4();
            v78 = v77;
            (*(v99 + 8))(v75, v94);
            v79 = sub_10002AD68(v76, v78, &v103);

            *(v71 + 4) = v79;
            _os_log_impl(&_mh_execute_header, v69, v70, "doorWindowAndWindowConvering: service UUID: %s  obstructionDetected", v71, 0xCu);
            sub_100015F44(v73);
            v25 = v72;
          }

          v103 = v25;
          v104 = v96;

          v106._countAndFlagsBits = 0xD000000000000018;
          v106._object = 0x80000001000A58B0;
          sub_10009E634(v106);

          v80 = sub_10009E604();
        }

        return v80;
      }

LABEL_50:
      swift_once();
      goto LABEL_23;
    }

    return 0;
  }

  return result;
}

uint64_t sub_10009287C()
{
  v1 = sub_10009CF14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10009D464();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetTileInfo(0);
  result = 0;
  v11 = v0 + *(v9 + 60);
  v12 = *(v11 + 8);
  if ((v12 - 2) >= 3)
  {
    v130 = v2;
    v13 = v9;
    v14 = *v11;
    if (!v12)
    {
      v15 = v14;
      goto LABEL_10;
    }

    v16 = v14;
    v15 = [v16 services];
    sub_100007330(0, &qword_1000C0C48, HMService_ptr);
    v17 = sub_10009E6A4();

    if (v17 >> 62)
    {
      if (sub_10009EBA4())
      {
        goto LABEL_6;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = sub_10009EAE4();
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_64;
        }

        v18 = *(v17 + 32);
      }

      v15 = v18;

LABEL_10:
      v129 = *(v6 + 104);
      v129(v8, enum case for CharacteristicKind.active(_:), v5);
      v128 = *(v0 + *(v13 + 64));
      v19 = sub_100016EAC(v8, v128);
      v16 = *(v6 + 8);
      (v16)(v8, v5);
      if (v19 == 2)
      {

        return 0;
      }

      if ((v19 & 1) == 0)
      {
        v40 = sub_10009E604();

        return v40;
      }

      if (qword_1000C0A90 == -1)
      {
LABEL_14:
        v20 = sub_10009D924();
        v21 = sub_100015B68(v20, qword_1000C8278);
        v22 = v15;
        v125 = v21;
        v23 = sub_10009D904();
        v24 = sub_10009E844();

        v25 = os_log_type_enabled(v23, v24);
        v126 = v16;
        v127 = v22;
        if (v25)
        {
          v26 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v131 = v124;
          *v26 = 136315394;
          v27 = [v22 uniqueIdentifier];
          LODWORD(v123) = v24;
          v28 = v27;
          sub_10009CF04();

          v29 = sub_10009CEE4();
          v31 = v30;
          (*(v130 + 8))(v4, v1);
          v32 = sub_10002AD68(v29, v31, &v131);

          *(v26 + 4) = v32;
          *(v26 + 12) = 1024;
          *(v26 + 14) = 1;
          _os_log_impl(&_mh_execute_header, v23, v123, "humidifierDehumidifier: %s active: %{BOOL}d", v26, 0x12u);
          sub_100015F44(v124);
        }

        v33 = v128;
        v34 = v129;
        v129(v8, enum case for CharacteristicKind.currentHumidifierDehumidifierState(_:), v5);
        v129 = sub_100016C54(v8, v33);
        v36 = v35;
        v37 = v126;
        v126(v8, v5);
        if (v36)
        {
          goto LABEL_18;
        }

        v34(v8, enum case for CharacteristicKind.targetHumidifierDehumidifierState(_:), v5);
        v128 = sub_100016C54(v8, v33);
        v39 = v38;
        v37(v8, v5);
        if (v39)
        {
          goto LABEL_18;
        }

        v34(v8, enum case for CharacteristicKind.humidifierThreshold(_:), v5);
        v41 = v127;
        v123 = sub_100016C54(v8, v33);
        LODWORD(v124) = v42;
        v37(v8, v5);
        v34(v8, enum case for CharacteristicKind.dehumidifierThreshold(_:), v5);
        v43 = sub_100016C54(v8, v33);
        v45 = v44;
        v37(v8, v5);
        v46 = v41;
        v47 = sub_10009D904();
        v48 = sub_10009E844();
        v127 = v46;

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          *v49 = 136315650;
          v50 = [v127 uniqueIdentifier];
          sub_10009CF04();

          v51 = sub_10009CEE4();
          v52 = v43;
          v53 = v45;
          v55 = v54;
          (*(v130 + 8))(v4, v1);
          v56 = sub_10002AD68(v51, v55, &v133);

          *(v49 + 4) = v56;
          *(v49 + 12) = 2080;
          v131 = v123;
          v132 = v124 & 1;
          sub_100003714(&qword_1000C2ED0, &unk_1000A3A10);
          v57 = sub_10009E5F4();
          v59 = sub_10002AD68(v57, v58, &v133);

          *(v49 + 14) = v59;
          *(v49 + 22) = 2080;
          v131 = v52;
          v132 = v53 & 1;
          v60 = sub_10009E5F4();
          v62 = sub_10002AD68(v60, v61, &v133);

          *(v49 + 24) = v62;
          v45 = v53;
          _os_log_impl(&_mh_execute_header, v47, v48, "humidifierDehumidifier: %s humidifierThreshold: %s dehumidifierThreshold: %s", v49, 0x20u);
          swift_arrayDestroy();

          v63 = v52;
        }

        else
        {

          v63 = v43;
        }

        v64 = v128;
        if (v129 == 3)
        {
          if (v128 == 2 || v128 == 1)
          {
            if (v45)
            {
              goto LABEL_54;
            }

            sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
            isa = sub_10009E8C4(v63).super.super.isa;
            v108 = sub_10009E8C4(0).super.super.isa;
            v109 = sub_10009E8C4(100).super.super.isa;
            v104 = sub_10006A4E8(isa);
            v106 = v110;

            goto LABEL_49;
          }

          if (v128)
          {
            goto LABEL_18;
          }

          if (v124 & 1) != 0 || (v45)
          {
            goto LABEL_54;
          }

LABEL_43:
          v130 = sub_10009E604();
          sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
          v86 = v63;
          v87 = swift_allocObject();
          *(v87 + 16) = xmmword_10009F8F0;
          sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
          v88 = sub_10009E8C4(v123).super.super.isa;
          v89 = sub_10009E8C4(0).super.super.isa;
          v90 = sub_10009E8C4(100).super.super.isa;
          v91 = sub_10006A4E8(v88);
          v93 = v92;

          *(v87 + 56) = &type metadata for String;
          v94 = sub_100093FE4();
          *(v87 + 64) = v94;
          *(v87 + 32) = v91;
          *(v87 + 40) = v93;
          v95 = sub_10009E8C4(v86).super.super.isa;
          v96 = sub_10009E8C4(0).super.super.isa;
          v97 = sub_10009E8C4(100).super.super.isa;
          v98 = sub_10006A4E8(v95);
          v100 = v99;

          *(v87 + 96) = &type metadata for String;
          *(v87 + 104) = v94;
          *(v87 + 72) = v98;
          *(v87 + 80) = v100;
          v84 = sub_10009E5D4();

          goto LABEL_44;
        }

        if (v129 == 2)
        {
          v65 = v123;
          if (v128 != 2 && v128 != 1)
          {
            if (!v128)
            {
              if ((v124 & 1) == 0 && (v45 & 1) == 0)
              {
                v66 = sub_10009E604();
                v129 = v67;
                v130 = v66;
                sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
                v68 = v65;
                v69 = v63;
                v70 = swift_allocObject();
                *(v70 + 16) = xmmword_10009F8F0;
                sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
                v71 = sub_10009E8C4(v68).super.super.isa;
                v72 = sub_10009E8C4(0).super.super.isa;
                v73 = sub_10009E8C4(100).super.super.isa;
                v74 = sub_10006A4E8(v71);
                v76 = v75;

                *(v70 + 56) = &type metadata for String;
                v77 = sub_100093FE4();
                *(v70 + 64) = v77;
                *(v70 + 32) = v74;
                *(v70 + 40) = v76;
                v78 = sub_10009E8C4(v69).super.super.isa;
                v79 = sub_10009E8C4(0).super.super.isa;
                v80 = sub_10009E8C4(100).super.super.isa;
                v81 = sub_10006A4E8(v78);
                v83 = v82;

                *(v70 + 96) = &type metadata for String;
                *(v70 + 104) = v77;
                *(v70 + 72) = v81;
                *(v70 + 80) = v83;
                v84 = sub_10009E5D4();

LABEL_44:

                return v84;
              }

LABEL_54:

              return 0;
            }

LABEL_18:
            v40 = sub_10009E604();

            return v40;
          }

          if (v124)
          {
            goto LABEL_54;
          }

          sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
          v101 = sub_10009E8C4(v65).super.super.isa;
          v102 = sub_10009E8C4(0).super.super.isa;
          v103 = sub_10009E8C4(100).super.super.isa;
          v104 = sub_10006A4E8(v101);
          v106 = v105;

LABEL_49:
          sub_10009E604();
          sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
          v111 = swift_allocObject();
          *(v111 + 16) = xmmword_10009F8D0;
          *(v111 + 56) = &type metadata for String;
          *(v111 + 64) = sub_100093FE4();
          *(v111 + 32) = v104;
          *(v111 + 40) = v106;
          v112 = sub_10009E5D4();

          return v112;
        }

        sub_10009E604();
        v85 = v124;
        if (v64 == 2)
        {
          if ((v45 & 1) == 0)
          {
            sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
            v113 = v63;
            goto LABEL_57;
          }
        }

        else
        {
          if (v64 != 1)
          {
            if (v64)
            {

              goto LABEL_18;
            }

            if (v85 & 1) != 0 || (v45)
            {
              goto LABEL_54;
            }

            goto LABEL_43;
          }

          if ((v124 & 1) == 0)
          {
            sub_100007330(0, &qword_1000C0E30, NSNumber_ptr);
            v113 = v123;
LABEL_57:
            v114 = sub_10009E8C4(v113).super.super.isa;
            v115 = sub_10009E8C4(0).super.super.isa;
            v116 = sub_10009E8C4(100).super.super.isa;
            v117 = sub_10006A4E8(v114);
            v119 = v118;

            sub_100003714(&qword_1000C2E80, &qword_1000A39D8);
            v120 = swift_allocObject();
            *(v120 + 16) = xmmword_10009F8D0;
            *(v120 + 56) = &type metadata for String;
            *(v120 + 64) = sub_100093FE4();
            *(v120 + 32) = v117;
            *(v120 + 40) = v119;
            v121 = sub_10009E5D4();

            return v121;
          }
        }

        goto LABEL_54;
      }

LABEL_64:
      swift_once();
      goto LABEL_14;
    }

    return 0;
  }

  return result;
}