uint64_t sub_1002452BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v41 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_100246428(v13, v10, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
        sub_100246428(v14, v7, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
        v16 = v4[5];
        v17 = v10[v16];
        v18 = v7[v16];
        if (v17 == 2)
        {
          if (v18 != 2)
          {
            goto LABEL_38;
          }
        }

        else if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
        {
          goto LABEL_38;
        }

        v19 = v4[6];
        v20 = &v10[v19];
        v21 = v10[v19 + 4];
        v22 = &v7[v19];
        v23 = v7[v19 + 4];
        if (v21)
        {
          if (!v23)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (*v20 != *v22)
          {
            LOBYTE(v23) = 1;
          }

          if (v23)
          {
LABEL_38:
            sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
            sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
            goto LABEL_39;
          }
        }

        v24 = v4[7];
        v25 = &v10[v24];
        v26 = v10[v24 + 4];
        v27 = &v7[v24];
        v28 = v7[v24 + 4];
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (*v25 != *v27)
          {
            LOBYTE(v28) = 1;
          }

          if (v28)
          {
            goto LABEL_38;
          }
        }

        v29 = v4[8];
        v30 = &v10[v29];
        v31 = v10[v29 + 4];
        v32 = &v7[v29];
        v33 = v7[v29 + 4];
        if (v31)
        {
          if (!v33)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (*v30 != *v32)
          {
            LOBYTE(v33) = 1;
          }

          if (v33)
          {
            goto LABEL_38;
          }
        }

        v34 = v4[9];
        v35 = &v10[v34];
        v36 = v10[v34 + 4];
        v37 = &v7[v34];
        v38 = v7[v34 + 4];
        if (v36)
        {
          if (!v38)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (*v35 != *v37)
          {
            LOBYTE(v38) = 1;
          }

          if (v38)
          {
            goto LABEL_38;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v39 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
        sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GsmCellInfo);
        if (v39)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v39 & 1;
      }
    }

    v39 = 1;
  }

  else
  {
LABEL_39:
    v39 = 0;
  }

  return v39 & 1;
}

uint64_t sub_1002455FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_100246428(v18, v15, a4);
        sub_100246428(v19, v12, a4);
        v21 = a5(v15, v12);
        sub_100246490(v12, a4);
        sub_100246490(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_100245798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_100246428(v18, v15, a4);
        sub_100246428(v19, v12, a4);
        v21 = a5(v15, v12);
        sub_100246490(v12, a4);
        sub_100246490(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_100245934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v13 = &v31 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (v14 && a1 != a2)
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      while (1)
      {
        sub_100246428(v16, v13, a4);
        sub_100246428(v17, v10, a4);
        v19 = *(v7 + 20);
        v20 = &v13[v19];
        v21 = v13[v19 + 4];
        v22 = &v10[v19];
        v23 = v10[v19 + 4];
        if (v21)
        {
          if (!v23)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v20 != *v22)
          {
            LOBYTE(v23) = 1;
          }

          if (v23)
          {
LABEL_21:
            sub_100246490(v10, a4);
            sub_100246490(v13, a4);
            goto LABEL_22;
          }
        }

        v24 = *(v7 + 24);
        v25 = &v13[v24];
        v26 = v13[v24 + 4];
        v27 = &v10[v24];
        v28 = v10[v24 + 4];
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (*v25 != *v27)
          {
            LOBYTE(v28) = 1;
          }

          if (v28)
          {
            goto LABEL_21;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100246490(v10, a4);
        sub_100246490(v13, a4);
        if (v29)
        {
          v17 += v18;
          v16 += v18;
          if (--v14)
          {
            continue;
          }
        }

        return v29 & 1;
      }
    }

    v29 = 1;
  }

  else
  {
LABEL_22:
    v29 = 0;
  }

  return v29 & 1;
}

unint64_t sub_100245B9C(unint64_t result)
{
  if (result >= 0x12)
  {
    return 18;
  }

  return result;
}

unint64_t sub_100245BAC(unint64_t result)
{
  if (result >= 0x11)
  {
    return 17;
  }

  return result;
}

unint64_t sub_100245BBC(unint64_t result)
{
  if (result >= 0x21)
  {
    return 33;
  }

  return result;
}

unint64_t sub_100245BCC(unint64_t result)
{
  if (result >= 0x18)
  {
    return 24;
  }

  return result;
}

uint64_t sub_100245BDC(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (!a1)
    {
      return 6;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 1;
      }

      return 7;
    }

    return 0;
  }

  else if (a1 > 15)
  {
    if (a1 != 16)
    {
      if (a1 == 32)
      {
        return 5;
      }

      return 7;
    }

    return 4;
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 == 8)
      {
        return 3;
      }

      return 7;
    }

    return 2;
  }
}

uint64_t sub_100245CC4(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0;
  *(v1 + 56) = 1;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  *(v1 + 108) = 0;
  *(v1 + 104) = 1;
  *(v1 + 113) = 1042;
  *(v1 + 115) = 7;
  *(v1 + 120) = 0;
  *(v1 + 112) = 1;
  *(v1 + 128) = 1;
  *(v1 + 136) = 0;
  *(v1 + 144) = 1;
  *(v1 + 152) = 0;
  *(v1 + 161) = 33689864;
  *(v1 + 168) = 0;
  *(v1 + 160) = 1;
  *(v1 + 176) = 1;
  *(v1 + 180) = 0;
  *(v1 + 184) = 1;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v7;
  *(v1 + 56) = v8;
  swift_beginAccess();
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v9;
  *(v1 + 72) = v10;
  swift_beginAccess();
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 80) = v11;
  *(v1 + 88) = v12;
  swift_beginAccess();
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v13;
  *(v1 + 104) = v14;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + 108);
  v15 = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 108) = v13;
  *(v1 + 112) = v15;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 113);
  swift_beginAccess();
  *(v1 + 113) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 114);
  swift_beginAccess();
  *(v1 + 114) = v13;
  swift_beginAccess();
  LOBYTE(v13) = *(a1 + 115);
  swift_beginAccess();
  *(v1 + 115) = v13;
  swift_beginAccess();
  v16 = *(a1 + 120);
  v17 = *(a1 + 128);
  swift_beginAccess();
  *(v1 + 120) = v16;
  *(v1 + 128) = v17;
  swift_beginAccess();
  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  swift_beginAccess();
  *(v1 + 136) = v18;
  *(v1 + 144) = v19;
  swift_beginAccess();
  v20 = *(a1 + 152);
  v21 = *(a1 + 160);
  swift_beginAccess();
  *(v1 + 152) = v20;
  *(v1 + 160) = v21;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 161);
  swift_beginAccess();
  *(v1 + 161) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 162);
  swift_beginAccess();
  *(v1 + 162) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 163);
  swift_beginAccess();
  *(v1 + 163) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 164);
  swift_beginAccess();
  *(v1 + 164) = v20;
  swift_beginAccess();
  v22 = *(a1 + 168);
  v23 = *(a1 + 176);
  swift_beginAccess();
  *(v1 + 168) = v22;
  *(v1 + 176) = v23;
  swift_beginAccess();
  LODWORD(v22) = *(a1 + 180);
  LOBYTE(a1) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 180) = v22;
  *(v1 + 184) = a1;
  return v1;
}

uint64_t sub_1002463C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100246428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100246490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100246654(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 20) = 1281;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 44) = 1;
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 60) = 1;
  *(v1 + 64) = 0;
  *(v1 + 68) = 1;
  *(v1 + 72) = 0;
  *(v1 + 76) = 1;
  *(v1 + 80) = 0;
  *(v1 + 84) = 1;
  *(v1 + 88) = 0;
  *(v1 + 92) = 1;
  *(v1 + 96) = 0;
  *(v1 + 100) = 1;
  *(v1 + 104) = 0;
  *(v1 + 108) = 1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 116) = 1793;
  *(v1 + 124) = 1;
  *(v1 + 128) = 0;
  *(v1 + 132) = 1;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 20) = v4;
  swift_beginAccess();
  v5 = *(a1 + 21);
  swift_beginAccess();
  *(v1 + 21) = v5;
  swift_beginAccess();
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v6;
  *(v1 + 28) = v7;
  swift_beginAccess();
  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v8;
  *(v1 + 36) = v9;
  swift_beginAccess();
  v10 = *(a1 + 40);
  v11 = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 40) = v10;
  *(v1 + 44) = v11;
  swift_beginAccess();
  v12 = *(a1 + 48);
  v13 = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 48) = v12;
  *(v1 + 52) = v13;
  swift_beginAccess();
  v14 = *(a1 + 56);
  v15 = *(a1 + 60);
  swift_beginAccess();
  *(v1 + 56) = v14;
  *(v1 + 60) = v15;
  swift_beginAccess();
  v16 = *(a1 + 64);
  v17 = *(a1 + 68);
  swift_beginAccess();
  *(v1 + 64) = v16;
  *(v1 + 68) = v17;
  swift_beginAccess();
  v18 = *(a1 + 72);
  v19 = *(a1 + 76);
  swift_beginAccess();
  *(v1 + 72) = v18;
  *(v1 + 76) = v19;
  swift_beginAccess();
  v20 = *(a1 + 80);
  v21 = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 80) = v20;
  *(v1 + 84) = v21;
  swift_beginAccess();
  v22 = *(a1 + 88);
  v23 = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 88) = v22;
  *(v1 + 92) = v23;
  swift_beginAccess();
  v24 = *(a1 + 96);
  v25 = *(a1 + 100);
  swift_beginAccess();
  *(v1 + 96) = v24;
  *(v1 + 100) = v25;
  swift_beginAccess();
  v26 = *(a1 + 104);
  v27 = *(a1 + 108);
  swift_beginAccess();
  *(v1 + 104) = v26;
  *(v1 + 108) = v27;
  swift_beginAccess();
  v28 = *(a1 + 112);
  v29 = *(a1 + 116);
  swift_beginAccess();
  *(v1 + 112) = v28;
  *(v1 + 116) = v29;
  swift_beginAccess();
  LOBYTE(v28) = *(a1 + 117);
  swift_beginAccess();
  *(v1 + 117) = v28;
  swift_beginAccess();
  v30 = *(a1 + 120);
  v31 = *(a1 + 124);
  swift_beginAccess();
  *(v1 + 120) = v30;
  *(v1 + 124) = v31;
  swift_beginAccess();
  v32 = *(a1 + 128);
  LOBYTE(a1) = *(a1 + 132);
  swift_beginAccess();
  *(v1 + 128) = v32;
  *(v1 + 132) = a1;
  return v1;
}

uint64_t sub_100246E4C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100423FC0, &qword_100383490);
  __chkstk_darwin(v3 - 8);
  v60 = &v51 - v4;
  v5 = sub_100024A2C(&qword_100423FB8, &qword_100383488);
  __chkstk_darwin(v5 - 8);
  v59 = &v51 - v6;
  v7 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v7 - 8);
  v58 = &v51 - v8;
  v9 = sub_100024A2C(&qword_100423FB0, &qword_100383480);
  __chkstk_darwin(v9 - 8);
  v57 = &v51 - v10;
  v11 = sub_100024A2C(&qword_100423FA8, &qword_100383478);
  __chkstk_darwin(v11 - 8);
  v56 = &v51 - v12;
  v13 = sub_100024A2C(&qword_100423FA0, &qword_100383470);
  __chkstk_darwin(v13 - 8);
  v52 = &v51 - v14;
  v15 = sub_100024A2C(&qword_100423F98, &qword_100383468);
  __chkstk_darwin(v15 - 8);
  v17 = &v51 - v16;
  v18 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  v19 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainCircle(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  v21 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  v23 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  v25 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  (*(*(v25 - 8) + 56))(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  v53 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  v27 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  v54 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  v29 = type metadata accessor for Proto_Gnss_Emergency_PointAltitude(0);
  (*(*(v29 - 8) + 56))(v1 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  v55 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  v31 = type metadata accessor for Proto_Gnss_Emergency_Polygon(0);
  (*(*(v31 - 8) + 56))(v1 + v30, 1, 1, v31);
  v32 = v1 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  *v32 = 0;
  *(v32 + 4) = 1;
  v33 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainCircle;
  swift_beginAccess();
  sub_10000A0A4(a1 + v33, v17, &qword_100423F98, &qword_100383468);
  swift_beginAccess();
  sub_10000AD64(v17, v1 + v18, &qword_100423F98, &qword_100383468);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointUncertainEllipse;
  swift_beginAccess();
  v35 = v52;
  sub_10000A0A4(a1 + v34, v52, &qword_100423FA0, &qword_100383470);
  swift_beginAccess();
  sub_10000AD64(v35, v1 + v20, &qword_100423FA0, &qword_100383470);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitudeUncertainEllipsoid;
  swift_beginAccess();
  v37 = v56;
  sub_10000A0A4(a1 + v36, v56, &qword_100423FA8, &qword_100383478);
  swift_beginAccess();
  sub_10000AD64(v37, v1 + v22, &qword_100423FA8, &qword_100383478);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidArc;
  swift_beginAccess();
  v39 = v57;
  sub_10000A0A4(a1 + v38, v57, &qword_100423FB0, &qword_100383480);
  swift_beginAccess();
  sub_10000AD64(v39, v1 + v24, &qword_100423FB0, &qword_100383480);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ellipsoidPoint;
  swift_beginAccess();
  v41 = v58;
  sub_10000A0A4(a1 + v40, v58, &qword_100423F90, &qword_100383460);
  v42 = v53;
  swift_beginAccess();
  sub_10000AD64(v41, v1 + v42, &qword_100423F90, &qword_100383460);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__pointAltitude;
  swift_beginAccess();
  v44 = v59;
  sub_10000A0A4(a1 + v43, v59, &qword_100423FB8, &qword_100383488);
  v45 = v54;
  swift_beginAccess();
  sub_10000AD64(v44, v1 + v45, &qword_100423FB8, &qword_100383488);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__polygon;
  swift_beginAccess();
  v47 = v60;
  sub_10000A0A4(a1 + v46, v60, &qword_100423FC0, &qword_100383490);
  v48 = v55;
  swift_beginAccess();
  sub_10000AD64(v47, v1 + v48, &qword_100423FC0, &qword_100383490);
  swift_endAccess();
  v49 = a1 + OBJC_IVAR____TtCV10ALProtobuf30Proto_Gnss_Emergency_ShapeInfoP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__noLocation;
  swift_beginAccess();
  LODWORD(v46) = *v49;
  LOBYTE(v49) = *(v49 + 4);
  swift_beginAccess();
  *v32 = v46;
  *(v32 + 4) = v49;
  return v1;
}

uint64_t sub_1002477BC(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100424018, &qword_1003834E8);
  __chkstk_darwin(v3 - 8);
  v49 = &v42 - v4;
  v5 = sub_100024A2C(&qword_100424010, &qword_1003834E0);
  __chkstk_darwin(v5 - 8);
  v48 = &v42 - v6;
  v7 = sub_100024A2C(&qword_100424008, &qword_1003834D8);
  __chkstk_darwin(v7 - 8);
  v47 = &v42 - v8;
  v9 = sub_100024A2C(&qword_100424000, &qword_1003834D0);
  __chkstk_darwin(v9 - 8);
  v46 = &v42 - v10;
  v11 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v14 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v15 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  v17 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  v43 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  v19 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  v44 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  v21 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  v45 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  v23 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v24 = v1 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
  *v24 = 0;
  *(v24 + 4) = 1;
  swift_beginAccess();
  v25 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v25;
  swift_beginAccess();
  v26 = *(a1 + 20);
  v27 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v26;
  *(v1 + 24) = v27;
  v28 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v28, v13, &qword_100423FF8, &qword_1003834C8);
  swift_beginAccess();
  sub_10000AD64(v13, v1 + v14, &qword_100423FF8, &qword_1003834C8);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationInfo;
  swift_beginAccess();
  v30 = v46;
  sub_10000A0A4(a1 + v29, v46, &qword_100424000, &qword_1003834D0);
  swift_beginAccess();
  sub_10000AD64(v30, v1 + v16, &qword_100424000, &qword_1003834D0);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssLocationInfo;
  swift_beginAccess();
  v32 = v47;
  sub_10000A0A4(a1 + v31, v47, &qword_100424008, &qword_1003834D8);
  v33 = v43;
  swift_beginAccess();
  sub_10000AD64(v32, v1 + v33, &qword_100424008, &qword_1003834D8);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locEstimate;
  swift_beginAccess();
  v35 = v48;
  sub_10000A0A4(a1 + v34, v48, &qword_100424010, &qword_1003834E0);
  v36 = v44;
  swift_beginAccess();
  sub_10000AD64(v35, v1 + v36, &qword_100424010, &qword_1003834E0);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__velocityEstimate;
  swift_beginAccess();
  v38 = v49;
  sub_10000A0A4(a1 + v37, v49, &qword_100424018, &qword_1003834E8);
  v39 = v45;
  swift_beginAccess();
  sub_10000AD64(v38, v1 + v39, &qword_100424018, &qword_1003834E8);
  swift_endAccess();
  v40 = a1 + OBJC_IVAR____TtCV10ALProtobuf35Proto_Gnss_Emergency_PositionReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__technologySource;
  swift_beginAccess();
  LODWORD(v37) = *v40;
  LOBYTE(v40) = *(v40 + 4);
  swift_beginAccess();
  *v24 = v37;
  *(v24 + 4) = v40;
  return v1;
}

uint64_t sub_100247F54(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100424048, &qword_100383518);
  __chkstk_darwin(v3 - 8);
  v31 = &v28 - v4;
  v5 = sub_100024A2C(&qword_100424040, &qword_100383510);
  __chkstk_darwin(v5 - 8);
  v30 = &v28 - v6;
  v7 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v10 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v11 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  v13 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  v28 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  v15 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = v1 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
  *v16 = 0;
  *(v16 + 4) = 1;
  v29 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime) = 2;
  swift_beginAccess();
  LOBYTE(v14) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v14;
  swift_beginAccess();
  v17 = *(a1 + 20);
  LOBYTE(v14) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v17;
  *(v1 + 24) = v14;
  v18 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v18, v9, &qword_100423FF8, &qword_1003834C8);
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v10, &qword_100423FF8, &qword_1003834C8);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  v20 = v30;
  sub_10000A0A4(a1 + v19, v30, &qword_100424040, &qword_100383510);
  swift_beginAccess();
  sub_10000AD64(v20, v1 + v12, &qword_100424040, &qword_100383510);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__ganssMeasurements;
  swift_beginAccess();
  v22 = v31;
  sub_10000A0A4(a1 + v21, v31, &qword_100424048, &qword_100383518);
  v23 = v28;
  swift_beginAccess();
  sub_10000AD64(v22, v1 + v23, &qword_100424048, &qword_100383518);
  swift_endAccess();
  v24 = a1 + OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__moreGanssMeasurements;
  swift_beginAccess();
  LODWORD(v10) = *v24;
  LOBYTE(v24) = *(v24 + 4);
  swift_beginAccess();
  *v16 = v10;
  *(v16 + 4) = v24;
  v25 = OBJC_IVAR____TtCV10ALProtobuf38Proto_Gnss_Emergency_MeasurementReportP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v25);
  v26 = v29;
  swift_beginAccess();
  *(v1 + v26) = a1;
  return v1;
}

uint64_t sub_1002486DC(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0;
  *(v1 + 28) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 36) = 1;
  *(v1 + 44) = 1;
  *(v1 + 48) = 0;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 60) = 1;
  *(v1 + 68) = 1;
  *(v1 + 72) = 0;
  *(v1 + 76) = 1;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 84) = 1;
  *(v1 + 92) = 1;
  *(v1 + 96) = 0;
  *(v1 + 100) = 1;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 108) = 1;
  *(v1 + 116) = 1;
  *(v1 + 120) = 0;
  *(v1 + 124) = 1;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 132) = 1;
  *(v1 + 140) = 1;
  *(v1 + 144) = 0;
  *(v1 + 148) = 1;
  *(v1 + 152) = 0;
  *(v1 + 160) = 0;
  *(v1 + 156) = 1;
  *(v1 + 164) = 1;
  *(v1 + 168) = 0;
  *(v1 + 172) = 1;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  *(v1 + 180) = 1;
  *(v1 + 188) = 1;
  *(v1 + 192) = 0;
  *(v1 + 196) = 1;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 204) = 1;
  *(v1 + 212) = 1;
  *(v1 + 216) = 0;
  *(v1 + 220) = 1;
  *(v1 + 224) = 0;
  *(v1 + 232) = 0;
  *(v1 + 228) = 1;
  *(v1 + 236) = 1;
  *(v1 + 244) = 1;
  *(v1 + 252) = 1;
  *(v1 + 260) = 1;
  *(v1 + 268) = 1;
  *(v1 + 276) = 1;
  *(v1 + 284) = 1;
  *(v1 + 240) = 0;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  *(v1 + 280) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 20) = v4;
  swift_beginAccess();
  v5 = *(a1 + 24);
  LOBYTE(v3) = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 24) = v5;
  *(v1 + 28) = v3;
  swift_beginAccess();
  v6 = *(a1 + 32);
  LOBYTE(v5) = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 32) = v6;
  *(v1 + 36) = v5;
  swift_beginAccess();
  v7 = *(a1 + 40);
  LOBYTE(v6) = *(a1 + 44);
  swift_beginAccess();
  *(v1 + 40) = v7;
  *(v1 + 44) = v6;
  swift_beginAccess();
  v8 = *(a1 + 48);
  LOBYTE(v7) = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 48) = v8;
  *(v1 + 52) = v7;
  swift_beginAccess();
  v9 = *(a1 + 56);
  LOBYTE(v8) = *(a1 + 60);
  swift_beginAccess();
  *(v1 + 56) = v9;
  *(v1 + 60) = v8;
  swift_beginAccess();
  v10 = *(a1 + 64);
  LOBYTE(v9) = *(a1 + 68);
  swift_beginAccess();
  *(v1 + 64) = v10;
  *(v1 + 68) = v9;
  swift_beginAccess();
  v11 = *(a1 + 72);
  LOBYTE(v9) = *(a1 + 76);
  swift_beginAccess();
  *(v1 + 72) = v11;
  *(v1 + 76) = v9;
  swift_beginAccess();
  v12 = *(a1 + 80);
  LOBYTE(v9) = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 80) = v12;
  *(v1 + 84) = v9;
  swift_beginAccess();
  v13 = *(a1 + 88);
  LOBYTE(v9) = *(a1 + 92);
  swift_beginAccess();
  *(v1 + 88) = v13;
  *(v1 + 92) = v9;
  swift_beginAccess();
  v14 = *(a1 + 96);
  LOBYTE(v9) = *(a1 + 100);
  swift_beginAccess();
  *(v1 + 96) = v14;
  *(v1 + 100) = v9;
  swift_beginAccess();
  v15 = *(a1 + 104);
  LOBYTE(v9) = *(a1 + 108);
  swift_beginAccess();
  *(v1 + 104) = v15;
  *(v1 + 108) = v9;
  swift_beginAccess();
  v16 = *(a1 + 112);
  LOBYTE(v9) = *(a1 + 116);
  swift_beginAccess();
  *(v1 + 112) = v16;
  *(v1 + 116) = v9;
  swift_beginAccess();
  v17 = *(a1 + 120);
  LOBYTE(v9) = *(a1 + 124);
  swift_beginAccess();
  *(v1 + 120) = v17;
  *(v1 + 124) = v9;
  swift_beginAccess();
  v18 = *(a1 + 128);
  LOBYTE(v9) = *(a1 + 132);
  swift_beginAccess();
  *(v1 + 128) = v18;
  *(v1 + 132) = v9;
  swift_beginAccess();
  v19 = *(a1 + 136);
  LOBYTE(v9) = *(a1 + 140);
  swift_beginAccess();
  *(v1 + 136) = v19;
  *(v1 + 140) = v9;
  swift_beginAccess();
  v20 = *(a1 + 144);
  LOBYTE(v9) = *(a1 + 148);
  swift_beginAccess();
  *(v1 + 144) = v20;
  *(v1 + 148) = v9;
  swift_beginAccess();
  v21 = *(a1 + 152);
  LOBYTE(v9) = *(a1 + 156);
  swift_beginAccess();
  *(v1 + 152) = v21;
  *(v1 + 156) = v9;
  swift_beginAccess();
  v22 = *(a1 + 160);
  LOBYTE(v9) = *(a1 + 164);
  swift_beginAccess();
  *(v1 + 160) = v22;
  *(v1 + 164) = v9;
  swift_beginAccess();
  v23 = *(a1 + 168);
  LOBYTE(v9) = *(a1 + 172);
  swift_beginAccess();
  *(v1 + 168) = v23;
  *(v1 + 172) = v9;
  swift_beginAccess();
  v24 = *(a1 + 176);
  LOBYTE(v9) = *(a1 + 180);
  swift_beginAccess();
  *(v1 + 176) = v24;
  *(v1 + 180) = v9;
  swift_beginAccess();
  v25 = *(a1 + 184);
  LOBYTE(v9) = *(a1 + 188);
  swift_beginAccess();
  *(v1 + 184) = v25;
  *(v1 + 188) = v9;
  swift_beginAccess();
  v26 = *(a1 + 192);
  LOBYTE(v9) = *(a1 + 196);
  swift_beginAccess();
  *(v1 + 192) = v26;
  *(v1 + 196) = v9;
  swift_beginAccess();
  v27 = *(a1 + 200);
  LOBYTE(v9) = *(a1 + 204);
  swift_beginAccess();
  *(v1 + 200) = v27;
  *(v1 + 204) = v9;
  swift_beginAccess();
  v28 = *(a1 + 208);
  LOBYTE(v9) = *(a1 + 212);
  swift_beginAccess();
  *(v1 + 208) = v28;
  *(v1 + 212) = v9;
  swift_beginAccess();
  v29 = *(a1 + 216);
  LOBYTE(v9) = *(a1 + 220);
  swift_beginAccess();
  *(v1 + 216) = v29;
  *(v1 + 220) = v9;
  swift_beginAccess();
  v30 = *(a1 + 224);
  LOBYTE(v9) = *(a1 + 228);
  swift_beginAccess();
  *(v1 + 224) = v30;
  *(v1 + 228) = v9;
  swift_beginAccess();
  v31 = *(a1 + 232);
  LOBYTE(v9) = *(a1 + 236);
  swift_beginAccess();
  *(v1 + 232) = v31;
  *(v1 + 236) = v9;
  swift_beginAccess();
  v32 = *(a1 + 240);
  LOBYTE(v9) = *(a1 + 244);
  swift_beginAccess();
  *(v1 + 240) = v32;
  *(v1 + 244) = v9;
  swift_beginAccess();
  v33 = *(a1 + 248);
  LOBYTE(v9) = *(a1 + 252);
  swift_beginAccess();
  *(v1 + 248) = v33;
  *(v1 + 252) = v9;
  swift_beginAccess();
  v34 = *(a1 + 256);
  LOBYTE(v9) = *(a1 + 260);
  swift_beginAccess();
  *(v1 + 256) = v34;
  *(v1 + 260) = v9;
  swift_beginAccess();
  v35 = *(a1 + 264);
  LOBYTE(v9) = *(a1 + 268);
  swift_beginAccess();
  *(v1 + 264) = v35;
  *(v1 + 268) = v9;
  swift_beginAccess();
  v36 = *(a1 + 272);
  LOBYTE(v9) = *(a1 + 276);
  swift_beginAccess();
  *(v1 + 272) = v36;
  *(v1 + 276) = v9;
  swift_beginAccess();
  v37 = *(a1 + 280);
  LOBYTE(a1) = *(a1 + 284);
  swift_beginAccess();
  *(v1 + 280) = v37;
  *(v1 + 284) = a1;
  return v1;
}

uint64_t sub_1002492C0(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_1004240D0, &qword_1003835A0);
  __chkstk_darwin(v3 - 8);
  v32 = &v29 - v4;
  v5 = sub_100024A2C(&qword_100424040, &qword_100383510);
  __chkstk_darwin(v5 - 8);
  v31 = &v29 - v6;
  v7 = sub_100024A2C(&qword_100423FF8, &qword_1003834C8);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  *(v1 + 16) = 9;
  *(v1 + 20) = 0;
  *(v1 + 24) = 1;
  v10 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  v11 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  v13 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurements(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  v15 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v29 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction) = 4;
  v30 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime) = 2;
  swift_beginAccess();
  v16 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v16;
  swift_beginAccess();
  v17 = *(a1 + 20);
  v18 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 20) = v17;
  *(v1 + 24) = v18;
  v19 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__sessionInfo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v19, v9, &qword_100423FF8, &qword_1003834C8);
  swift_beginAccess();
  sub_10000AD64(v9, v1 + v10, &qword_100423FF8, &qword_1003834C8);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__gpsMeasurements;
  swift_beginAccess();
  v21 = v31;
  sub_10000A0A4(a1 + v20, v31, &qword_100424040, &qword_100383510);
  swift_beginAccess();
  sub_10000AD64(v21, v1 + v12, &qword_100424040, &qword_100383510);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__locationIndication;
  swift_beginAccess();
  v23 = v32;
  sub_10000A0A4(a1 + v22, v32, &qword_1004240D0, &qword_1003835A0);
  swift_beginAccess();
  sub_10000AD64(v23, v1 + v14, &qword_1004240D0, &qword_1003835A0);
  swift_endAccess();
  v24 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__afltAction;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + v24);
  v25 = v29;
  swift_beginAccess();
  *(v1 + v25) = v24;
  v26 = OBJC_IVAR____TtCV10ALProtobuf50Proto_Gnss_Emergency_MeasurementReportWithEstimateP33_A557130C73F8FFB56F85D28EDB16AF9913_StorageClass__isMeasInCdmaTime;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v26);
  v27 = v30;
  swift_beginAccess();
  *(v1 + v27) = a1;
  return v1;
}

uint64_t sub_100249750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024991C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = sub_100024A2C(&qword_10042AA28, &qword_100390D40);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  v53 = type metadata accessor for Proto_Gnss_Emergency_PointAltitudeUncertainEllipsoid(0);
  v54 = a1;
  v14 = v53[5];
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_100423F90, &qword_100383460);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_100423F90, &qword_100383460);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_100423F90, &qword_100383460);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v52;
      sub_1002463C0(&v13[v15], v52, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      v20 = sub_100255534(v9, v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_100246490(v9, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_1000059A8(v13, &qword_100423F90, &qword_100383460);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100246490(v9, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_6:
    sub_1000059A8(v13, &qword_10042AA28, &qword_100390D40);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_100423F90, &qword_100383460);
LABEL_10:
  v21 = v53[6];
  v22 = (v54 + v21);
  v23 = *(v54 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_7;
    }
  }

  v26 = v53[7];
  v27 = (v54 + v26);
  v28 = *(v54 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      goto LABEL_7;
    }
  }

  v31 = v53[8];
  v32 = (v54 + v31);
  v33 = *(v54 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_7;
    }
  }

  v36 = v53[9];
  v37 = (v54 + v36);
  v38 = *(v54 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_7;
    }
  }

  v41 = v53[10];
  v42 = (v54 + v41);
  v43 = *(v54 + v41 + 4);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 4);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_7;
    }
  }

  v46 = v53[11];
  v47 = (v54 + v46);
  v48 = *(v54 + v46 + 4);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 4);
  if (v48)
  {
    if (v50)
    {
LABEL_46:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if ((v50 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100249DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementRequest(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else if (v12 == 2 || ((v11 ^ v12) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100249EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423F68, &qword_100383438);
  __chkstk_darwin(v8 - 8);
  v10 = v32 - v9;
  v11 = sub_100024A2C(&qword_10042AA78, &qword_100390D90);
  __chkstk_darwin(v11);
  v13 = v32 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GeranGanssTimeMeasured(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_19;
    }
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      goto LABEL_19;
    }
  }

  v25 = v14[7];
  v26 = a1;
  v27 = *(v11 + 48);
  v32[0] = v26;
  sub_10000A0A4(v26 + v25, v13, &qword_100423F68, &qword_100383438);
  v32[1] = a2;
  sub_10000A0A4(a2 + v25, &v13[v27], &qword_100423F68, &qword_100383438);
  v28 = *(v5 + 48);
  if (v28(v13, 1, v4) == 1)
  {
    if (v28(&v13[v27], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100423F68, &qword_100383438);
LABEL_22:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v29 & 1;
    }

    goto LABEL_18;
  }

  sub_10000A0A4(v13, v10, &qword_100423F68, &qword_100383438);
  if (v28(&v13[v27], 1, v4) == 1)
  {
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
LABEL_18:
    sub_1000059A8(v13, &qword_10042AA78, &qword_100390D90);
    goto LABEL_19;
  }

  sub_1002463C0(&v13[v27], v7, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v31 = sub_1002559E4(v10, v7);
  sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  sub_1000059A8(v13, &qword_100423F68, &qword_100383438);
  if (v31)
  {
    goto LABEL_22;
  }

LABEL_19:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_10024A28C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssAssistanceRequest(0);
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = *(v4 + 32);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4;
  if (sub_100244A64(*a1, *a2))
  {
    v16 = v15[9];
    v17 = (a1 + v16);
    v18 = *(a1 + v16 + 4);
    v19 = (a2 + v16);
    v20 = *(a2 + v16 + 4);
    if (v18)
    {
      if (!v20)
      {
        return 0;
      }
    }

    else
    {
      if (*v17 != *v19)
      {
        LOBYTE(v20) = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    v21 = v15[10];
    v22 = (a1 + v21);
    v23 = *(a1 + v21 + 4);
    v24 = (a2 + v21);
    v25 = *(a2 + v21 + 4);
    if (v23)
    {
      if (!v25)
      {
        return 0;
      }
    }

    else
    {
      if (*v22 != *v24)
      {
        LOBYTE(v25) = 1;
      }

      if (v25)
      {
        return 0;
      }
    }

    v26 = v15[11];
    v27 = (a1 + v26);
    v28 = *(a1 + v26 + 4);
    v29 = (a2 + v26);
    v30 = *(a2 + v26 + 4);
    if (v28)
    {
      if (!v30)
      {
        return 0;
      }
    }

    else
    {
      if (*v27 != *v29)
      {
        LOBYTE(v30) = 1;
      }

      if (v30)
      {
        return 0;
      }
    }

    if (sub_100244AC0(a1[1], a2[1]))
    {
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t sub_10024A458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SLPAddress(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100024A2C(&qword_100423EF0, &qword_1003833C0);
  __chkstk_darwin(v7 - 8);
  v9 = (&v24 - v8);
  v10 = sub_100024A2C(&qword_10042AAD0, &qword_100390DE8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  inited = type metadata accessor for Proto_Gnss_Emergency_SuplInitVer2Extension(0);
  v27 = a1;
  v14 = *(inited + 20);
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_100423EF0, &qword_1003833C0);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_100423EF0, &qword_1003833C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_100423EF0, &qword_1003833C0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v25;
      sub_1002463C0(&v13[v15], v25, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
      v20 = sub_10025602C(v9, v19);
      sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
      sub_100246490(v9, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
      sub_1000059A8(v13, &qword_100423EF0, &qword_1003833C0);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100246490(v9, type metadata accessor for Proto_Gnss_Emergency_SLPAddress);
LABEL_6:
    sub_1000059A8(v13, &qword_10042AAD0, &qword_100390DE8);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_100423EF0, &qword_1003833C0);
LABEL_10:
  v21 = *(inited + 24);
  v22 = *(v27 + v21);
  v23 = *(a2 + v21);
  if (v22 == 4)
  {
    if (v23 == 4)
    {
      goto LABEL_14;
    }
  }

  else if (v22 == v23)
  {
LABEL_14:
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10024A7DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_100024A2C(&qword_10042AA28, &qword_100390D40);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v41 - v12;
  v43 = type metadata accessor for Proto_Gnss_Emergency_PointUncertainEllipse(0);
  v44 = a1;
  v14 = v43[5];
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_100423F90, &qword_100383460);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_100423F90, &qword_100383460);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_100423F90, &qword_100383460);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v42;
      sub_1002463C0(&v13[v15], v42, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      v20 = sub_100255534(v9, v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_100246490(v9, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_1000059A8(v13, &qword_100423F90, &qword_100383460);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100246490(v9, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_6:
    sub_1000059A8(v13, &qword_10042AA28, &qword_100390D40);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_100423F90, &qword_100383460);
LABEL_10:
  v21 = v43[6];
  v22 = (v44 + v21);
  v23 = *(v44 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_7;
    }
  }

  v26 = v43[7];
  v27 = (v44 + v26);
  v28 = *(v44 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      goto LABEL_7;
    }
  }

  v31 = v43[8];
  v32 = (v44 + v31);
  v33 = *(v44 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_7;
    }
  }

  v36 = v43[9];
  v37 = (v44 + v36);
  v38 = *(v44 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (v40)
    {
LABEL_34:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if ((v40 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10024AC20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v5[6];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 4);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v5[7];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 4);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 4);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v21 = v5[8];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024AD88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423F50, &qword_100383420);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100024A2C(&qword_10042AA80, &qword_100390D98);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasuredParams(0);
  v15 = *(v14 + 20);
  v26 = a1;
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 6)
  {
    if (v17 != 6)
    {
      goto LABEL_11;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_11;
  }

  v18 = a2;
  v19 = *(v14 + 24);
  v20 = *(v11 + 48);
  sub_10000A0A4(v26 + v19, v13, &qword_100423F50, &qword_100383420);
  sub_10000A0A4(v18 + v19, &v13[v20], &qword_100423F50, &qword_100383420);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v20], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100423F50, &qword_100383420);
LABEL_14:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_10;
  }

  sub_10000A0A4(v13, v10, &qword_100423F50, &qword_100383420);
  if (v21(&v13[v20], 1, v4) == 1)
  {
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
LABEL_10:
    sub_1000059A8(v13, &qword_10042AA80, &qword_100390D98);
    goto LABEL_11;
  }

  sub_1002463C0(&v13[v20], v7, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  v24 = sub_10024F89C(v10, v7);
  sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured);
  sub_1000059A8(v13, &qword_100423F50, &qword_100383420);
  if (v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_10024B114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceTime(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024B244(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsAssistanceRequest(0);
  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[8];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[9];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[10];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4;
  if ((sub_100033210(*a1, *a2) & 1) == 0 || (sub_100033210(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v26 = v25[11];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024B40C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssNavModelAddData(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[9];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  if (sub_100245934(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem, type metadata accessor for Proto_Gnss_Emergency_GanssStoredSatDataElem))
  {
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10024B5B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10000BE4C(v7, v6);
      sub_10000BE4C(v10, v9);
      sub_10000CA64(v7, v6);
      goto LABEL_8;
    }

LABEL_5:
    sub_10000BE4C(v7, v6);
    sub_10000BE4C(v10, v9);
    sub_10000CA64(v7, v6);
    sub_10000CA64(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_10000BE4C(v7, v6);
  sub_10000BE4C(v10, v9);
  v12 = sub_10009F948(v7, v6, v10, v9);
  sub_10000CA64(v10, v9);
  sub_10000CA64(v7, v6);
  if (!v12)
  {
    return 0;
  }

LABEL_8:
  v13 = v4[6];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v14 ^ v15) & 1) != 0)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
  {
    return 0;
  }

  v19 = v4[8];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 4);
  v22 = (a2 + v19);
  v23 = *(a2 + v19 + 4);
  if (v21)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (*v20 != *v22)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = v4[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if ((v26 & 1) == 0)
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if (!v28)
  {
    return 0;
  }

LABEL_30:
  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024B808(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementList(0) + 24);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 == 6)
  {
    if (v6 != 6)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  if (sub_100245798(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, type metadata accessor for Proto_Gnss_Emergency_WlanMeasurementElement, sub_10024B5B8))
  {
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10024B91C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsNavigationModel(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  if ((sub_100244D30(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 6)
  {
    if (v12 != 6)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  v13 = v4[8];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 != 7)
  {
    if (v14 == v15)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v15 != 7)
  {
    return 0;
  }

LABEL_16:
  v16 = v4[9];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 4);
  v19 = (a2 + v16);
  v20 = *(a2 + v16 + 4);
  if (v18)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v17 != *v19)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024BA80(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssDataBitAssist(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[9];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[10];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  if (sub_100033210(*a1, *a2))
  {
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10024BC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_ReferenceLocation(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[11];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v4[12];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = v4[13];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  v50 = v4[14];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 4);
  v53 = (a2 + v50);
  v54 = *(a2 + v50 + 4);
  if (v52)
  {
    if (!v54)
    {
      return 0;
    }
  }

  else
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  v55 = v4[15];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 4);
  v58 = (a2 + v55);
  v59 = *(a2 + v55 + 4);
  if (v57)
  {
    if (!v59)
    {
      return 0;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  v60 = v4[16];
  v61 = *(a1 + v60);
  v62 = *(a2 + v60);
  if (v61 == 6)
  {
    if (v62 != 6)
    {
      return 0;
    }
  }

  else if (v61 != v62)
  {
    return 0;
  }

  v63 = v4[17];
  v64 = *(a1 + v63);
  v65 = *(a2 + v63);
  if (v64 != 7)
  {
    if (v64 == v65)
    {
      goto LABEL_75;
    }

    return 0;
  }

  if (v65 != 7)
  {
    return 0;
  }

LABEL_75:
  v66 = v4[18];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 4);
  v69 = (a2 + v66);
  v70 = *(a2 + v66 + 4);
  if (v68)
  {
    if (!v70)
    {
      return 0;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024BF8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellInfo(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423F68, &qword_100383438);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_100024A2C(&qword_10042AA78, &qword_100390D90);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_UtranGanssTimeMeasured(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_25;
    }
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      goto LABEL_25;
    }
  }

  v25 = v14[7];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      goto LABEL_25;
    }
  }

  v30 = v14[8];
  v31 = *(v11 + 48);
  sub_10000A0A4(a1 + v30, v13, &qword_100423F68, &qword_100383438);
  v32 = a2 + v30;
  v33 = v31;
  sub_10000A0A4(v32, &v13[v31], &qword_100423F68, &qword_100383438);
  v34 = *(v5 + 48);
  if (v34(v13, 1, v4) == 1)
  {
    if (v34(&v13[v33], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100423F68, &qword_100383438);
LABEL_28:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v35 & 1;
    }

    goto LABEL_24;
  }

  sub_10000A0A4(v13, v10, &qword_100423F68, &qword_100383438);
  if (v34(&v13[v33], 1, v4) == 1)
  {
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
LABEL_24:
    sub_1000059A8(v13, &qword_10042AA78, &qword_100390D90);
    goto LABEL_25;
  }

  sub_1002463C0(&v13[v33], v7, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  v37 = sub_1002559E4(v10, v7);
  sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_CellInfo);
  sub_1000059A8(v13, &qword_100423F68, &qword_100383438);
  if (v37)
  {
    goto LABEL_28;
  }

LABEL_25:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_10024C380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423F88, &qword_100383458);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_100024A2C(&qword_10042AA50, &qword_100390D68);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v15 = *(v14 + 20);
  v32 = a1;
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 6)
  {
    if (v17 != 6)
    {
      goto LABEL_12;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_12;
  }

  v18 = a2;
  v19 = *(v14 + 24);
  v20 = *(v11 + 48);
  sub_10000A0A4(v32 + v19, v13, &qword_100423F88, &qword_100383458);
  sub_10000A0A4(v18 + v19, &v13[v20], &qword_100423F88, &qword_100383458);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v20], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100423F88, &qword_100383458);
LABEL_17:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_10;
  }

  sub_10000A0A4(v13, v10, &qword_100423F88, &qword_100383458);
  if (v21(&v13[v20], 1, v4) == 1)
  {
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
LABEL_10:
    v22 = &qword_10042AA50;
    v23 = &qword_100390D68;
LABEL_11:
    sub_1000059A8(v13, v22, v23);
    goto LABEL_12;
  }

  sub_1002463C0(&v13[v20], v7, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  v26 = *(v4 + 20);
  v27 = *&v10[v26];
  v28 = *&v7[v26];
  if (v27 != v28)
  {

    v29 = sub_100212024(v27, v28);

    if (!v29)
    {
      sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
      sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
      v22 = &qword_100423F88;
      v23 = &qword_100383458;
      goto LABEL_11;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasured);
  sub_1000059A8(v13, &qword_100423F88, &qword_100383458);
  if (v30)
  {
    goto LABEL_17;
  }

LABEL_12:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_10024C7D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss(0);
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v70 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_100424030, &qword_100383500);
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - v7;
  v9 = sub_100024A2C(&qword_10042A9B0, &qword_100390CC8);
  __chkstk_darwin(v9);
  v73 = &v68 - v10;
  v11 = type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100024A2C(&qword_100424028, &qword_1003834F8);
  __chkstk_darwin(v15 - 8);
  v17 = &v68 - v16;
  v18 = sub_100024A2C(&qword_10042A9B8, &qword_100390CD0);
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  v21 = type metadata accessor for Proto_Gnss_Emergency_GanssMeasurements(0);
  v22 = v21[5];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 == 6)
  {
    if (v24 != 6)
    {
      goto LABEL_36;
    }
  }

  else if (v23 != v24)
  {
    goto LABEL_36;
  }

  v25 = v21[6];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      goto LABEL_36;
    }
  }

  v30 = v21[7];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      goto LABEL_36;
    }
  }

  v35 = v21[8];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      goto LABEL_36;
    }
  }

  v40 = v21[9];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
  if (v42)
  {
    if (!v44)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      goto LABEL_36;
    }
  }

  v45 = v21[10];
  v68 = v21;
  v69 = v45;
  v46 = *(v18 + 48);
  sub_10000A0A4(a1 + v45, v20, &qword_100424028, &qword_1003834F8);
  v47 = a2 + v69;
  v69 = v46;
  sub_10000A0A4(v47, &v20[v46], &qword_100424028, &qword_1003834F8);
  v48 = *(v12 + 48);
  if (v48(v20, 1, v11) != 1)
  {
    sub_10000A0A4(v20, v17, &qword_100424028, &qword_1003834F8);
    if (v48(&v20[v69], 1, v11) != 1)
    {
      sub_1002463C0(&v20[v69], v14, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
      v54 = sub_10024C380(v17, v14);
      sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
      sub_100246490(v17, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
      sub_1000059A8(v20, &qword_100424028, &qword_1003834F8);
      if ((v54 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_39;
    }

    sub_100246490(v17, type metadata accessor for Proto_Gnss_Emergency_GanssTimeMeasuredParams);
LABEL_34:
    v49 = &qword_10042A9B8;
    v50 = &qword_100390CD0;
    v51 = v20;
LABEL_35:
    sub_1000059A8(v51, v49, v50);
    goto LABEL_36;
  }

  if (v48(&v20[v69], 1, v11) != 1)
  {
    goto LABEL_34;
  }

  sub_1000059A8(v20, &qword_100424028, &qword_1003834F8);
LABEL_39:
  v55 = v68[11];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 4);
  v58 = (a2 + v55);
  v59 = *(a2 + v55 + 4);
  if (v57)
  {
    if (!v59)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      goto LABEL_36;
    }
  }

  v60 = v68[12];
  v61 = *(v9 + 48);
  v62 = v73;
  sub_10000A0A4(a1 + v60, v73, &qword_100424030, &qword_100383500);
  sub_10000A0A4(a2 + v60, v62 + v61, &qword_100424030, &qword_100383500);
  v63 = v72;
  v64 = *(v71 + 48);
  if (v64(v62, 1, v72) == 1)
  {
    if (v64(v62 + v61, 1, v63) == 1)
    {
      sub_1000059A8(v62, &qword_100424030, &qword_100383500);
LABEL_52:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v52 & 1;
    }

    goto LABEL_50;
  }

  sub_10000A0A4(v62, v8, &qword_100424030, &qword_100383500);
  if (v64(v62 + v61, 1, v63) == 1)
  {
    sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
LABEL_50:
    v49 = &qword_10042A9B0;
    v50 = &qword_100390CC8;
    v51 = v62;
    goto LABEL_35;
  }

  v65 = v62 + v61;
  v66 = v70;
  sub_1002463C0(v65, v70, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  v67 = sub_10025670C(v8, v66);
  sub_100246490(v66, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  sub_100246490(v8, type metadata accessor for Proto_Gnss_Emergency_GanssMeasurementsForSingleGanss);
  sub_1000059A8(v62, &qword_100424030, &qword_100383500);
  if (v67)
  {
    goto LABEL_52;
  }

LABEL_36:
  v52 = 0;
  return v52 & 1;
}

uint64_t sub_10024CF28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423FF0, &qword_1003834C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100024A2C(&qword_10042A9E8, &qword_100390D00);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_VelocityEstimate(0);
  v15 = *(v14 + 20);
  v26 = a1;
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 6)
  {
    if (v17 != 6)
    {
      goto LABEL_11;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_11;
  }

  v18 = a2;
  v19 = *(v14 + 24);
  v20 = *(v11 + 48);
  sub_10000A0A4(v26 + v19, v13, &qword_100423FF0, &qword_1003834C0);
  sub_10000A0A4(v18 + v19, &v13[v20], &qword_100423FF0, &qword_1003834C0);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v20], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100423FF0, &qword_1003834C0);
LABEL_14:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_10;
  }

  sub_10000A0A4(v13, v10, &qword_100423FF0, &qword_1003834C0);
  if (v21(&v13[v20], 1, v4) == 1)
  {
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
LABEL_10:
    sub_1000059A8(v13, &qword_10042A9E8, &qword_100390D00);
    goto LABEL_11;
  }

  sub_1002463C0(&v13[v20], v7, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  v24 = sub_100251EE4(v10, v7);
  sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_VelocityInfo);
  sub_1000059A8(v13, &qword_100423FF0, &qword_1003834C0);
  if (v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_10024D2B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo(0);
  v101 = *(v4 - 8);
  v102 = v4;
  __chkstk_darwin(v4);
  v99 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_1004240C8, &qword_100383598);
  __chkstk_darwin(v6 - 8);
  v103 = &v95 - v7;
  v100 = sub_100024A2C(&qword_10042A920, &qword_100390C38);
  __chkstk_darwin(v100);
  v104 = &v95 - v8;
  v9 = type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo(0);
  v107 = *(v9 - 8);
  __chkstk_darwin(v9);
  v105 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100024A2C(&qword_1004240C0, &qword_100383590);
  __chkstk_darwin(v11 - 8);
  v106 = &v95 - v12;
  v13 = sub_100024A2C(&qword_10042A928, &qword_100390C40);
  __chkstk_darwin(v13);
  v108 = &v95 - v14;
  v15 = type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100024A2C(&qword_1004240B8, &qword_100383588);
  __chkstk_darwin(v19 - 8);
  v21 = &v95 - v20;
  v22 = sub_100024A2C(&qword_10042A930, &qword_100390C48);
  __chkstk_darwin(v22);
  v24 = &v95 - v23;
  v25 = type metadata accessor for Proto_Gnss_Emergency_Is801LocationInd(0);
  v26 = a2;
  v27 = v25;
  v28 = v25[5];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (v26 + v28);
  v32 = *(v26 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      goto LABEL_47;
    }
  }

  v33 = v25[6];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 4);
  v36 = (v26 + v33);
  v37 = *(v26 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      goto LABEL_47;
    }
  }

  v38 = v25[7];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 4);
  v41 = (v26 + v38);
  v42 = *(v26 + v38 + 4);
  if (v40)
  {
    if (!v42)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      goto LABEL_47;
    }
  }

  v43 = v25[8];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 4);
  v46 = (v26 + v43);
  v47 = *(v26 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      goto LABEL_47;
    }
  }

  v48 = v25[9];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 4);
  v51 = (v26 + v48);
  v52 = *(v26 + v48 + 4);
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      goto LABEL_47;
    }
  }

  v53 = v25[10];
  v54 = *(a1 + v53);
  v55 = *(v26 + v53);
  if (v54 == 4)
  {
    if (v55 != 4)
    {
      goto LABEL_47;
    }
  }

  else if (v54 != v55)
  {
    goto LABEL_47;
  }

  v56 = v25[11];
  v57 = *(a1 + v56);
  v58 = *(v26 + v56);
  if (v57 == 2)
  {
    if (v58 != 2)
    {
      goto LABEL_47;
    }
  }

  else if (v58 == 2 || ((v57 ^ v58) & 1) != 0)
  {
    goto LABEL_47;
  }

  v98 = v25[12];
  v59 = *(v22 + 48);
  v96 = a1;
  v60 = a1 + v98;
  v61 = v59;
  v62 = v26;
  sub_10000A0A4(v60, v24, &qword_1004240B8, &qword_100383588);
  v63 = v62 + v98;
  v97 = v62;
  v98 = v61;
  sub_10000A0A4(v63, &v24[v61], &qword_1004240B8, &qword_100383588);
  v64 = *(v16 + 48);
  if (v64(v24, 1, v15) == 1)
  {
    if (v64(&v24[v98], 1, v15) == 1)
    {
      sub_1000059A8(v24, &qword_1004240B8, &qword_100383588);
      goto LABEL_50;
    }

LABEL_45:
    v65 = &qword_10042A930;
    v66 = &qword_100390C48;
    v67 = v24;
LABEL_46:
    sub_1000059A8(v67, v65, v66);
    goto LABEL_47;
  }

  sub_10000A0A4(v24, v21, &qword_1004240B8, &qword_100383588);
  if (v64(&v24[v98], 1, v15) == 1)
  {
    sub_100246490(v21, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
    goto LABEL_45;
  }

  sub_1002463C0(&v24[v98], v18, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  v70 = sub_100255EF8(v21, v18, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  sub_100246490(v18, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  sub_100246490(v21, type metadata accessor for Proto_Gnss_Emergency_Is801VelocityInfo);
  sub_1000059A8(v24, &qword_1004240B8, &qword_100383588);
  if ((v70 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_50:
  v71 = v27[13];
  v72 = *(v96 + v71);
  v73 = *(v97 + v71);
  if (v72 == 2)
  {
    if (v73 != 2)
    {
      goto LABEL_47;
    }
  }

  else if (v73 == 2 || ((v72 ^ v73) & 1) != 0)
  {
    goto LABEL_47;
  }

  v74 = v27[14];
  v75 = *(v13 + 48);
  v76 = v97;
  v77 = v108;
  sub_10000A0A4(v96 + v74, v108, &qword_1004240C0, &qword_100383590);
  sub_10000A0A4(v76 + v74, v77 + v75, &qword_1004240C0, &qword_100383590);
  v78 = *(v107 + 48);
  if (v78(v77, 1, v9) != 1)
  {
    v79 = v106;
    sub_10000A0A4(v77, v106, &qword_1004240C0, &qword_100383590);
    if (v78(v77 + v75, 1, v9) != 1)
    {
      v80 = v105;
      sub_1002463C0(v77 + v75, v105, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
      v81 = sub_100255534(v79, v80, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
      sub_100246490(v80, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
      sub_100246490(v79, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
      sub_1000059A8(v77, &qword_1004240C0, &qword_100383590);
      if ((v81 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_62;
    }

    sub_100246490(v79, type metadata accessor for Proto_Gnss_Emergency_Is801ClockInfo);
    goto LABEL_60;
  }

  if (v78(v77 + v75, 1, v9) != 1)
  {
LABEL_60:
    v65 = &qword_10042A928;
    v66 = &qword_100390C40;
    v67 = v77;
    goto LABEL_46;
  }

  sub_1000059A8(v77, &qword_1004240C0, &qword_100383590);
LABEL_62:
  v82 = v27[15];
  v83 = *(v96 + v82);
  v84 = *(v97 + v82);
  if (v83 == 2)
  {
    if (v84 != 2)
    {
      goto LABEL_47;
    }
  }

  else if (v84 == 2 || ((v83 ^ v84) & 1) != 0)
  {
    goto LABEL_47;
  }

  v85 = v27[16];
  v86 = *(v100 + 48);
  v87 = v104;
  sub_10000A0A4(v96 + v85, v104, &qword_1004240C8, &qword_100383598);
  sub_10000A0A4(v97 + v85, v87 + v86, &qword_1004240C8, &qword_100383598);
  v88 = v102;
  v89 = *(v101 + 48);
  if (v89(v87, 1, v102) == 1)
  {
    if (v89(v87 + v86, 1, v88) == 1)
    {
      sub_1000059A8(v87, &qword_1004240C8, &qword_100383598);
LABEL_74:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v68 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v68 & 1;
    }

    goto LABEL_72;
  }

  sub_10000A0A4(v87, v103, &qword_1004240C8, &qword_100383598);
  if (v89(v87 + v86, 1, v88) == 1)
  {
    sub_100246490(v103, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
    v87 = v104;
LABEL_72:
    v65 = &qword_10042A920;
    v66 = &qword_100390C38;
    v67 = v87;
    goto LABEL_46;
  }

  v90 = v104;
  v91 = v104 + v86;
  v92 = v99;
  sub_1002463C0(v91, v99, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  v93 = v103;
  v94 = sub_100255534(v103, v92, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  sub_100246490(v92, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  sub_100246490(v93, type metadata accessor for Proto_Gnss_Emergency_Is801HeightInfo);
  sub_1000059A8(v90, &qword_1004240C8, &qword_100383598);
  if (v94)
  {
    goto LABEL_74;
  }

LABEL_47:
  v68 = 0;
  return v68 & 1;
}

uint64_t sub_10024DDB8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsReferenceTime(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[9];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4;
  if ((sub_100244F78(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v26 = v25[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  v31 = v25[11];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 6)
  {
    if (v33 != 6)
    {
      return 0;
    }
  }

  else if (v32 != v33)
  {
    return 0;
  }

  v34 = v25[12];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 != 7)
  {
    if (v35 == v36)
    {
      goto LABEL_40;
    }

    return 0;
  }

  if (v36 != 7)
  {
    return 0;
  }

LABEL_40:
  v37 = v25[13];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 4);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 4);
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }
  }

  else
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024DFF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100424090, &qword_100383560);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100024A2C(&qword_10042A938, &qword_100390C50);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v15 = *(v14 + 20);
  v26 = a1;
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 6)
  {
    if (v17 != 6)
    {
      goto LABEL_11;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_11;
  }

  v18 = a2;
  v19 = *(v14 + 24);
  v20 = *(v11 + 48);
  sub_10000A0A4(v26 + v19, v13, &qword_100424090, &qword_100383560);
  sub_10000A0A4(v18 + v19, &v13[v20], &qword_100424090, &qword_100383560);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v20], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100424090, &qword_100383560);
LABEL_14:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_10;
  }

  sub_10000A0A4(v13, v10, &qword_100424090, &qword_100383560);
  if (v21(&v13[v20], 1, v4) == 1)
  {
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
LABEL_10:
    sub_1000059A8(v13, &qword_10042A938, &qword_100390C50);
    goto LABEL_11;
  }

  sub_1002463C0(&v13[v20], v7, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  v24 = sub_100253550(v10, v7);
  sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  sub_1000059A8(v13, &qword_100424090, &qword_100383560);
  if (v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_10024E380(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_1004240B0, &qword_100383580);
  __chkstk_darwin(v8 - 8);
  v10 = &v48 - v9;
  v11 = sub_100024A2C(&qword_10042A940, &qword_100390C58);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqAssistance(0);
  v15 = v14[6];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_37;
    }
  }

  v20 = v14[7];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      goto LABEL_37;
    }
  }

  v25 = v14[8];
  v26 = *(v11 + 48);
  v48 = v14;
  v49 = a1;
  sub_10000A0A4(a1 + v25, v13, &qword_1004240B0, &qword_100383580);
  sub_10000A0A4(a2 + v25, &v13[v26], &qword_1004240B0, &qword_100383580);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_1004240B0, &qword_100383580);
LABEL_20:
      v30 = v49;
      if (sub_1002455FC(*v49, *a2, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement, sub_100250ECC))
      {
        v31 = v48[9];
        v32 = (v30 + v31);
        v33 = *(v30 + v31 + 4);
        v34 = (a2 + v31);
        v35 = *(a2 + v31 + 4);
        if (v33)
        {
          if (!v35)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (*v32 != *v34)
          {
            LOBYTE(v35) = 1;
          }

          if (v35)
          {
            goto LABEL_37;
          }
        }

        v36 = v48[10];
        v37 = *(v30 + v36);
        v38 = *(a2 + v36);
        if (v37 == 6)
        {
          if (v38 != 6)
          {
            goto LABEL_37;
          }
        }

        else if (v37 != v38)
        {
          goto LABEL_37;
        }

        v39 = v48[11];
        v40 = *(v30 + v39);
        v41 = *(a2 + v39);
        if (v40 == 7)
        {
          if (v41 == 7)
          {
LABEL_35:
            v42 = v48[12];
            v43 = (v30 + v42);
            v44 = *(v30 + v42 + 4);
            v45 = (a2 + v42);
            v46 = *(a2 + v42 + 4);
            if (v44)
            {
              if (!v46)
              {
                goto LABEL_37;
              }
            }

            else
            {
              if (*v43 != *v45)
              {
                LOBYTE(v46) = 1;
              }

              if (v46)
              {
                goto LABEL_37;
              }
            }

            type metadata accessor for UnknownStorage();
            sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
            v28 = dispatch thunk of static Equatable.== infix(_:_:)();
            return v28 & 1;
          }
        }

        else if (v40 == v41)
        {
          goto LABEL_35;
        }
      }

LABEL_37:
      v28 = 0;
      return v28 & 1;
    }
  }

  else
  {
    sub_10000A0A4(v13, v10, &qword_1004240B0, &qword_100383580);
    if (v27(&v13[v26], 1, v4) != 1)
    {
      sub_1002463C0(&v13[v26], v7, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
      v29 = sub_10024DFF4(v10, v7);
      sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
      sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
      sub_1000059A8(v13, &qword_1004240B0, &qword_100383580);
      if ((v29 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_20;
    }

    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_CellTimeAssistance);
  }

  sub_1000059A8(v13, &qword_10042A940, &qword_100390C58);
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_10024E85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGeranCellTime(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[11];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10024EA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100024A2C(&qword_100424090, &qword_100383560);
  __chkstk_darwin(v8 - 8);
  v10 = &v31[-v9];
  v11 = sub_100024A2C(&qword_10042A938, &qword_100390C50);
  __chkstk_darwin(v11);
  v13 = &v31[-v12];
  v14 = type metadata accessor for Proto_Gnss_Emergency_CellFTAssistance(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 10)
  {
    if (v17 != 10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v31[15] = v16;
    if (v17 == 10)
    {
      goto LABEL_16;
    }

    v31[14] = v17;
    v18 = v14;
    sub_10003616C();
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    v14 = v18;
    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v20 = v14[6];
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 == 6)
  {
    if (v22 != 6)
    {
      goto LABEL_16;
    }
  }

  else if (v21 != v22)
  {
    goto LABEL_16;
  }

  v23 = v14[7];
  v24 = *(v11 + 48);
  sub_10000A0A4(a1 + v23, v13, &qword_100424090, &qword_100383560);
  v25 = a2 + v23;
  v26 = v24;
  sub_10000A0A4(v25, &v13[v24], &qword_100424090, &qword_100383560);
  v27 = *(v5 + 48);
  if (v27(v13, 1, v4) == 1)
  {
    if (v27(&v13[v26], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100424090, &qword_100383560);
LABEL_19:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v28 & 1;
    }

    goto LABEL_15;
  }

  sub_10000A0A4(v13, v10, &qword_100424090, &qword_100383560);
  if (v27(&v13[v26], 1, v4) == 1)
  {
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
LABEL_15:
    sub_1000059A8(v13, &qword_10042A938, &qword_100390C50);
    goto LABEL_16;
  }

  sub_1002463C0(&v13[v26], v7, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  v30 = sub_100253550(v10, v7);
  sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_CellTimeData);
  sub_1000059A8(v13, &qword_100424090, &qword_100383560);
  if (v30)
  {
    goto LABEL_19;
  }

LABEL_16:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_10024EE3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_100024A2C(&qword_10042AAA0, &qword_100390DB8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v39 - v12;
  v41 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v42 = a1;
  v14 = v41[5];
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_100423F28, &qword_1003833F8);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_100423F28, &qword_1003833F8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_100423F28, &qword_1003833F8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v40;
      sub_1002463C0(&v13[v15], v40, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
      v20 = sub_100255534(v9, v19, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
      sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
      sub_100246490(v9, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
      sub_1000059A8(v13, &qword_100423F28, &qword_1003833F8);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100246490(v9, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
LABEL_6:
    sub_1000059A8(v13, &qword_10042AAA0, &qword_100390DB8);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_100423F28, &qword_1003833F8);
LABEL_10:
  v21 = v41[6];
  v22 = (v42 + v21);
  v23 = *(v42 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_7;
    }
  }

  v26 = v41[7];
  v27 = (v42 + v26);
  v28 = *(v42 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      goto LABEL_7;
    }
  }

  v31 = v41[8];
  v32 = (v42 + v31);
  v33 = *(v42 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_7;
    }
  }

  v36 = v41[9];
  v37 = *(v42 + v36);
  v38 = *(a2 + v36);
  if (v37 == 5)
  {
    if (v38 == 5)
    {
      goto LABEL_32;
    }
  }

  else if (v37 == v38)
  {
LABEL_32:
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10024F274(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime(0);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_100423F28, &qword_1003833F8);
  __chkstk_darwin(v5 - 8);
  v39 = &v37 - v6;
  v41 = sub_100024A2C(&qword_10042AAA0, &qword_100390DB8);
  __chkstk_darwin(v41);
  v44 = &v37 - v7;
  v8 = type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_100423F30, &qword_100383400);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_100024A2C(&qword_10042AAA8, &qword_100390DC0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v40 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v19 = *(v40 + 20);
  v20 = *(v16 + 56);
  v45 = a1;
  sub_10000A0A4(a1 + v19, v18, &qword_100423F30, &qword_100383400);
  sub_10000A0A4(v46 + v19, &v18[v20], &qword_100423F30, &qword_100383400);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) != 1)
  {
    sub_10000A0A4(v18, v14, &qword_100423F30, &qword_100383400);
    if (v21(&v18[v20], 1, v8) != 1)
    {
      sub_1002463C0(&v18[v20], v11, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
      v25 = sub_10024EE3C(v14, v11);
      sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
      sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
      sub_1000059A8(v18, &qword_100423F30, &qword_100383400);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_ClsUtranCellTime);
LABEL_6:
    v22 = &qword_10042AAA8;
    v23 = &qword_100390DC0;
    v24 = v18;
LABEL_14:
    sub_1000059A8(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v18, &qword_100423F30, &qword_100383400);
LABEL_8:
  v26 = *(v40 + 24);
  v27 = *(v41 + 48);
  v28 = v44;
  sub_10000A0A4(v45 + v26, v44, &qword_100423F28, &qword_1003833F8);
  sub_10000A0A4(v46 + v26, v28 + v27, &qword_100423F28, &qword_1003833F8);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_1000059A8(v28, &qword_100423F28, &qword_1003833F8);
LABEL_18:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v39;
  sub_10000A0A4(v28, v39, &qword_100423F28, &qword_1003833F8);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_100246490(v31, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
LABEL_13:
    v22 = &qword_10042AAA0;
    v23 = &qword_100390DB8;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v38;
  sub_1002463C0(v34, v38, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  v36 = sub_100255534(v31, v35, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  sub_100246490(v35, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  sub_100246490(v31, type metadata accessor for Proto_Gnss_Emergency_ClsGpsCellTime);
  sub_1000059A8(v28, &qword_100423F28, &qword_1003833F8);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_10024F89C(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted(0);
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_100423F48, &qword_100383418);
  __chkstk_darwin(v5 - 8);
  v58 = &v56 - v6;
  v60 = sub_100024A2C(&qword_10042AA88, &qword_100390DA0);
  __chkstk_darwin(v60);
  v63 = &v56 - v7;
  v8 = type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased(0);
  v67 = *(v8 - 8);
  v68 = v8;
  __chkstk_darwin(v8);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024A2C(&qword_100423F40, &qword_100383410);
  __chkstk_darwin(v10 - 8);
  v64 = &v56 - v11;
  v65 = sub_100024A2C(&qword_10042AA90, &qword_100390DA8);
  __chkstk_darwin(v65);
  v69 = &v56 - v12;
  v13 = type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100024A2C(&qword_100423F38, &qword_100383408);
  __chkstk_darwin(v17 - 8);
  v19 = &v56 - v18;
  v20 = sub_100024A2C(&qword_10042AA98, &qword_100390DB0);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v56 - v22;
  v66 = type metadata accessor for Proto_Gnss_Emergency_GpsTimeMeasured(0);
  v24 = *(v66 + 20);
  v25 = *(v21 + 56);
  v70 = a1;
  sub_10000A0A4(a1 + v24, v23, &qword_100423F38, &qword_100383408);
  sub_10000A0A4(v71 + v24, &v23[v25], &qword_100423F38, &qword_100383408);
  v26 = *(v14 + 48);
  if (v26(v23, 1, v13) == 1)
  {
    if (v26(&v23[v25], 1, v13) == 1)
    {
      sub_1000059A8(v23, &qword_100423F38, &qword_100383408);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &qword_10042AA98;
    v28 = &qword_100390DB0;
    v29 = v23;
LABEL_21:
    sub_1000059A8(v29, v27, v28);
    goto LABEL_22;
  }

  sub_10000A0A4(v23, v19, &qword_100423F38, &qword_100383408);
  if (v26(&v23[v25], 1, v13) == 1)
  {
    sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
    goto LABEL_6;
  }

  sub_1002463C0(&v23[v25], v16, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  v30 = sub_10024F274(v19, v16);
  sub_100246490(v16, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_UtranGpsTimeMeasured);
  sub_1000059A8(v23, &qword_100423F38, &qword_100383408);
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v31 = v66;
  v32 = *(v66 + 24);
  v33 = *(v65 + 48);
  v35 = v69;
  v34 = v70;
  sub_10000A0A4(v70 + v32, v69, &qword_100423F40, &qword_100383410);
  v36 = v71;
  sub_10000A0A4(v71 + v32, v35 + v33, &qword_100423F40, &qword_100383410);
  v37 = v68;
  v38 = *(v67 + 48);
  if (v38(v35, 1, v68) != 1)
  {
    v39 = v64;
    sub_10000A0A4(v35, v64, &qword_100423F40, &qword_100383410);
    if (v38(v35 + v33, 1, v37) != 1)
    {
      v40 = v35 + v33;
      v41 = v59;
      sub_1002463C0(v40, v59, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
      v42 = sub_100255534(v39, v41, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
      sub_100246490(v41, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
      sub_100246490(v39, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
      sub_1000059A8(v35, &qword_100423F40, &qword_100383410);
      if ((v42 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_100246490(v39, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredBased);
    goto LABEL_13;
  }

  if (v38(v35 + v33, 1, v37) != 1)
  {
LABEL_13:
    v27 = &qword_10042AA90;
    v28 = &qword_100390DA8;
    v29 = v35;
    goto LABEL_21;
  }

  sub_1000059A8(v35, &qword_100423F40, &qword_100383410);
LABEL_15:
  v43 = *(v31 + 28);
  v44 = *(v60 + 48);
  v45 = v63;
  sub_10000A0A4(v34 + v43, v63, &qword_100423F48, &qword_100383418);
  v46 = v36 + v43;
  v47 = v45;
  sub_10000A0A4(v46, v45 + v44, &qword_100423F48, &qword_100383418);
  v48 = v62;
  v49 = *(v61 + 48);
  if (v49(v45, 1, v62) == 1)
  {
    if (v49(v45 + v44, 1, v48) == 1)
    {
      sub_1000059A8(v45, &qword_100423F48, &qword_100383418);
LABEL_25:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v51 & 1;
    }

    goto LABEL_20;
  }

  v50 = v58;
  sub_10000A0A4(v47, v58, &qword_100423F48, &qword_100383418);
  if (v49(v47 + v44, 1, v48) == 1)
  {
    sub_100246490(v50, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
LABEL_20:
    v27 = &qword_10042AA88;
    v28 = &qword_100390DA0;
    v29 = v47;
    goto LABEL_21;
  }

  v53 = v47 + v44;
  v54 = v57;
  sub_1002463C0(v53, v57, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  v55 = sub_100255534(v50, v54, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  sub_100246490(v54, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  sub_100246490(v50, type metadata accessor for Proto_Gnss_Emergency_GeranGpsTimeMeasuredAssisted);
  sub_1000059A8(v47, &qword_100423F48, &qword_100383418);
  if (v55)
  {
    goto LABEL_25;
  }

LABEL_22:
  v51 = 0;
  return v51 & 1;
}

uint64_t sub_10025019C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsMeasurementElement(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[11];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  if (v36 == 6)
  {
    if (v37 != 6)
    {
      return 0;
    }
  }

  else if (v36 != v37)
  {
    return 0;
  }

  v38 = v4[12];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 4);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 4);
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = v4[13];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 4);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002503F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100424078, &qword_100383548);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = sub_100024A2C(&qword_10042A978, &qword_100390C90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v33 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v34 = a1;
  v14 = v33[5];
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_100424078, &qword_100383548);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_100424078, &qword_100383548);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_100424078, &qword_100383548);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v32;
      sub_1002463C0(&v13[v15], v32, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
      v20 = sub_100255534(v9, v19, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
      sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
      sub_100246490(v9, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
      sub_1000059A8(v13, &qword_100424078, &qword_100383548);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100246490(v9, type metadata accessor for Proto_Gnss_Emergency_GpsTowCdmaCellTime);
LABEL_6:
    sub_1000059A8(v13, &qword_10042A978, &qword_100390C90);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_100424078, &qword_100383548);
LABEL_10:
  v21 = v33[6];
  v22 = (v34 + v21);
  v23 = *(v34 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_7;
    }
  }

  v26 = v33[7];
  v27 = (v34 + v26);
  v28 = *(v34 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (v30)
    {
LABEL_22:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1002507D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GanssLocationInfo(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v4[9];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 != 4)
  {
    if (v24 == v25)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (v25 != 4)
  {
    return 0;
  }

LABEL_27:
  v26 = v4[10];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100250988(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_EutranCellTime(0) + 24);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (sub_1002455FC(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell, sub_10025180C))
  {
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_100250AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v4[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = v4[11];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34 == 4)
  {
    if (v35 != 4)
    {
      return 0;
    }
  }

  else if (v34 != v35)
  {
    return 0;
  }

  v36 = v4[12];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100250CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_NetworkReferenceLocation(0);
  v5 = v4[5];
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[11];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100250ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsAcqElement(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[11];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v4[12];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = v4[13];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  v50 = v4[14];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 4);
  v53 = (a2 + v50);
  v54 = *(a2 + v50 + 4);
  if (v52)
  {
    if (!v54)
    {
      return 0;
    }
  }

  else
  {
    if (*v51 != *v53)
    {
      LOBYTE(v54) = 1;
    }

    if (v54)
    {
      return 0;
    }
  }

  v55 = v4[15];
  v56 = (a1 + v55);
  v57 = *(a1 + v55 + 4);
  v58 = (a2 + v55);
  v59 = *(a2 + v55 + 4);
  if (v57)
  {
    if (!v59)
    {
      return 0;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  v60 = v4[16];
  v61 = (a1 + v60);
  v62 = *(a1 + v60 + 4);
  v63 = (a2 + v60);
  v64 = *(a2 + v60 + 4);
  if (v62)
  {
    if (!v64)
    {
      return 0;
    }
  }

  else
  {
    if (*v61 != *v63)
    {
      LOBYTE(v64) = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  v65 = v4[17];
  v66 = *(a1 + v65);
  v67 = *(a2 + v65);
  if (v66 == 7)
  {
    if (v67 != 7)
    {
      return 0;
    }
  }

  else if (v66 != v67)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002511F8(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_100424098, &qword_100383568);
  __chkstk_darwin(v5 - 8);
  v39 = &v37 - v6;
  v41 = sub_100024A2C(&qword_10042A958, &qword_100390C70);
  __chkstk_darwin(v41);
  v44 = &v37 - v7;
  v8 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_100423F10, &qword_1003833E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_100024A2C(&qword_10042A960, &qword_100390C78);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v40 = type metadata accessor for Proto_Gnss_Emergency_CplaneContext(0);
  v19 = *(v40 + 20);
  v20 = *(v16 + 56);
  v45 = a1;
  sub_10000A0A4(a1 + v19, v18, &qword_100423F10, &qword_1003833E0);
  sub_10000A0A4(v46 + v19, &v18[v20], &qword_100423F10, &qword_1003833E0);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) != 1)
  {
    sub_10000A0A4(v18, v14, &qword_100423F10, &qword_1003833E0);
    if (v21(&v18[v20], 1, v8) != 1)
    {
      sub_1002463C0(&v18[v20], v11, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      v25 = sub_100256B8C(v14, v11);
      sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      sub_1000059A8(v18, &qword_100423F10, &qword_1003833E0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_Configuration);
LABEL_6:
    v22 = &qword_10042A960;
    v23 = &qword_100390C78;
    v24 = v18;
LABEL_14:
    sub_1000059A8(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v18, &qword_100423F10, &qword_1003833E0);
LABEL_8:
  v26 = *(v40 + 24);
  v27 = *(v41 + 48);
  v28 = v44;
  sub_10000A0A4(v45 + v26, v44, &qword_100424098, &qword_100383568);
  sub_10000A0A4(v46 + v26, v28 + v27, &qword_100424098, &qword_100383568);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_1000059A8(v28, &qword_100424098, &qword_100383568);
LABEL_18:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v39;
  sub_10000A0A4(v28, v39, &qword_100424098, &qword_100383568);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_100246490(v31, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
LABEL_13:
    v22 = &qword_10042A958;
    v23 = &qword_100390C70;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v38;
  sub_1002463C0(v34, v38, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  v36 = sub_100251D8C(v31, v35);
  sub_100246490(v35, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  sub_100246490(v31, type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext);
  sub_1000059A8(v28, &qword_100424098, &qword_100383568);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_10025180C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Plmn(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423F60, &qword_100383430);
  __chkstk_darwin(v8 - 8);
  v10 = &v73 - v9;
  v11 = sub_100024A2C(&qword_10042AA70, &qword_100390D88);
  __chkstk_darwin(v11);
  v13 = &v73 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_ClsEutranCell(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_31;
    }
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      goto LABEL_31;
    }
  }

  v25 = v14[7];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      goto LABEL_31;
    }
  }

  v30 = v14[8];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      goto LABEL_31;
    }
  }

  v74 = v14;
  v35 = v14[9];
  v36 = *(v11 + 48);
  sub_10000A0A4(a1 + v35, v13, &qword_100423F60, &qword_100383430);
  v37 = a2 + v35;
  v38 = v36;
  sub_10000A0A4(v37, &v13[v36], &qword_100423F60, &qword_100383430);
  v39 = *(v5 + 48);
  if (v39(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v10, &qword_100423F60, &qword_100383430);
    if (v39(&v13[v38], 1, v4) != 1)
    {
      sub_1002463C0(&v13[v38], v7, type metadata accessor for Proto_Gnss_Emergency_Plmn);
      v42 = sub_100255EF8(v10, v7, type metadata accessor for Proto_Gnss_Emergency_Plmn);
      sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_Plmn);
      sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_Plmn);
      sub_1000059A8(v13, &qword_100423F60, &qword_100383430);
      if ((v42 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }

    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_Plmn);
LABEL_30:
    sub_1000059A8(v13, &qword_10042AA70, &qword_100390D88);
    goto LABEL_31;
  }

  if (v39(&v13[v38], 1, v4) != 1)
  {
    goto LABEL_30;
  }

  sub_1000059A8(v13, &qword_100423F60, &qword_100383430);
LABEL_34:
  v43 = v74[10];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 4);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      goto LABEL_31;
    }
  }

  v48 = v74[11];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 4);
  v51 = (a2 + v48);
  v52 = *(a2 + v48 + 4);
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      goto LABEL_31;
    }
  }

  v53 = v74[12];
  v54 = (a1 + v53);
  v55 = *(a1 + v53 + 4);
  v56 = (a2 + v53);
  v57 = *(a2 + v53 + 4);
  if (v55)
  {
    if (!v57)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v54 != *v56)
    {
      LOBYTE(v57) = 1;
    }

    if (v57)
    {
      goto LABEL_31;
    }
  }

  v58 = v74[13];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 4);
  v61 = (a2 + v58);
  v62 = *(a2 + v58 + 4);
  if (v60)
  {
    if (!v62)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v59 != *v61)
    {
      LOBYTE(v62) = 1;
    }

    if (v62)
    {
      goto LABEL_31;
    }
  }

  v63 = v74[14];
  v64 = (a1 + v63);
  v65 = *(a1 + v63 + 4);
  v66 = (a2 + v63);
  v67 = *(a2 + v63 + 4);
  if (v65)
  {
    if (!v67)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (*v64 != *v66)
    {
      LOBYTE(v67) = 1;
    }

    if (v67)
    {
      goto LABEL_31;
    }
  }

  v68 = v74[15];
  v69 = (a1 + v68);
  v70 = *(a1 + v68 + 4);
  v71 = (a2 + v68);
  v72 = *(a2 + v68 + 4);
  if ((v70 & 1) == 0)
  {
    if (*v69 != *v71)
    {
      LOBYTE(v72) = 1;
    }

    if (v72)
    {
      goto LABEL_31;
    }

LABEL_70:
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v40 & 1;
  }

  if (v72)
  {
    goto LABEL_70;
  }

LABEL_31:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_100251D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Cdma1xContext(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v12 ^ v13) & 1) != 0)
  {
    return 0;
  }

  v14 = v4[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }
  }

  else if (v16 == 2 || ((v15 ^ v16) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100251EE4(uint64_t a1, uint64_t a2)
{
  v90 = a2;
  v91 = a1;
  v2 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity(0);
  v76 = *(v2 - 8);
  v77 = v2;
  __chkstk_darwin(v2);
  v72 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100024A2C(&qword_100423FE8, &qword_1003834B8);
  __chkstk_darwin(v4 - 8);
  v73 = &v71 - v5;
  v75 = sub_100024A2C(&qword_10042A9F0, &qword_100390D08);
  __chkstk_darwin(v75);
  v78 = &v71 - v6;
  v7 = type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity(0);
  v82 = *(v7 - 8);
  v83 = v7;
  __chkstk_darwin(v7);
  v74 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100423FE0, &qword_1003834B0);
  __chkstk_darwin(v9 - 8);
  v79 = &v71 - v10;
  v81 = sub_100024A2C(&qword_10042A9F8, &qword_100390D10);
  __chkstk_darwin(v81);
  v84 = &v71 - v11;
  v12 = type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity(0);
  v87 = *(v12 - 8);
  v88 = v12;
  __chkstk_darwin(v12);
  v80 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024A2C(&qword_100423FD8, &qword_1003834A8);
  __chkstk_darwin(v14 - 8);
  v85 = &v71 - v15;
  v86 = sub_100024A2C(&qword_10042AA00, &qword_100390D18);
  __chkstk_darwin(v86);
  v17 = &v71 - v16;
  v18 = type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100024A2C(&qword_100423FD0, &qword_1003834A0);
  __chkstk_darwin(v22 - 8);
  v24 = &v71 - v23;
  v25 = sub_100024A2C(&qword_10042AA08, &qword_100390D20);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = &v71 - v27;
  v89 = type metadata accessor for Proto_Gnss_Emergency_VelocityInfo(0);
  v29 = *(v89 + 20);
  v30 = *(v26 + 56);
  sub_10000A0A4(v91 + v29, v28, &qword_100423FD0, &qword_1003834A0);
  v31 = v90 + v29;
  v32 = v90;
  sub_10000A0A4(v31, &v28[v30], &qword_100423FD0, &qword_1003834A0);
  v33 = *(v19 + 48);
  if (v33(v28, 1, v18) == 1)
  {
    if (v33(&v28[v30], 1, v18) == 1)
    {
      sub_1000059A8(v28, &qword_100423FD0, &qword_1003834A0);
      goto LABEL_8;
    }

LABEL_6:
    v34 = &qword_10042AA08;
    v35 = &qword_100390D20;
    v36 = v28;
LABEL_29:
    sub_1000059A8(v36, v34, v35);
    goto LABEL_30;
  }

  sub_10000A0A4(v28, v24, &qword_100423FD0, &qword_1003834A0);
  if (v33(&v28[v30], 1, v18) == 1)
  {
    sub_100246490(v24, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
    goto LABEL_6;
  }

  sub_1002463C0(&v28[v30], v21, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  v37 = sub_100255534(v24, v21, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  sub_100246490(v21, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  sub_100246490(v24, type metadata accessor for Proto_Gnss_Emergency_HorizontalVelocity);
  sub_1000059A8(v28, &qword_100423FD0, &qword_1003834A0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_8:
  v38 = v89;
  v39 = *(v89 + 24);
  v40 = *(v86 + 48);
  v41 = v91;
  sub_10000A0A4(v91 + v39, v17, &qword_100423FD8, &qword_1003834A8);
  sub_10000A0A4(v32 + v39, &v17[v40], &qword_100423FD8, &qword_1003834A8);
  v42 = v88;
  v43 = *(v87 + 48);
  if (v43(v17, 1, v88) == 1)
  {
    if (v43(&v17[v40], 1, v42) == 1)
    {
      sub_1000059A8(v17, &qword_100423FD8, &qword_1003834A8);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v44 = v85;
  sub_10000A0A4(v17, v85, &qword_100423FD8, &qword_1003834A8);
  if (v43(&v17[v40], 1, v42) == 1)
  {
    sub_100246490(v44, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
LABEL_13:
    v34 = &qword_10042AA00;
    v35 = &qword_100390D18;
    v36 = v17;
    goto LABEL_29;
  }

  v45 = &v17[v40];
  v46 = v80;
  sub_1002463C0(v45, v80, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  v47 = sub_10024AC20(v44, v46, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  sub_100246490(v46, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  sub_100246490(v44, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertVelocity);
  sub_1000059A8(v17, &qword_100423FD8, &qword_1003834A8);
  if ((v47 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v48 = *(v38 + 28);
  v49 = *(v81 + 48);
  v50 = v84;
  sub_10000A0A4(v41 + v48, v84, &qword_100423FE0, &qword_1003834B0);
  v51 = v32 + v48;
  v52 = v50;
  sub_10000A0A4(v51, v50 + v49, &qword_100423FE0, &qword_1003834B0);
  v53 = v83;
  v54 = *(v82 + 48);
  if (v54(v50, 1, v83) != 1)
  {
    v55 = v79;
    sub_10000A0A4(v52, v79, &qword_100423FE0, &qword_1003834B0);
    if (v54(v52 + v49, 1, v53) != 1)
    {
      v56 = v52 + v49;
      v57 = v74;
      sub_1002463C0(v56, v74, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
      v58 = sub_100255EF8(v55, v57, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
      sub_100246490(v57, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
      sub_100246490(v55, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
      sub_1000059A8(v52, &qword_100423FE0, &qword_1003834B0);
      if ((v58 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    sub_100246490(v55, type metadata accessor for Proto_Gnss_Emergency_HorizWithUncertaintyVelocity);
LABEL_20:
    v34 = &qword_10042A9F8;
    v35 = &qword_100390D10;
LABEL_28:
    v36 = v52;
    goto LABEL_29;
  }

  if (v54(v50 + v49, 1, v53) != 1)
  {
    goto LABEL_20;
  }

  sub_1000059A8(v50, &qword_100423FE0, &qword_1003834B0);
LABEL_22:
  v59 = *(v38 + 32);
  v60 = *(v75 + 48);
  v61 = v78;
  sub_10000A0A4(v41 + v59, v78, &qword_100423FE8, &qword_1003834B8);
  v62 = v32 + v59;
  v52 = v61;
  sub_10000A0A4(v62, v61 + v60, &qword_100423FE8, &qword_1003834B8);
  v63 = v77;
  v64 = *(v76 + 48);
  if (v64(v61, 1, v77) == 1)
  {
    if (v64(v61 + v60, 1, v63) == 1)
    {
      sub_1000059A8(v61, &qword_100423FE8, &qword_1003834B8);
LABEL_33:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v66 & 1;
    }

    goto LABEL_27;
  }

  v65 = v73;
  sub_10000A0A4(v52, v73, &qword_100423FE8, &qword_1003834B8);
  if (v64(v52 + v60, 1, v63) == 1)
  {
    sub_100246490(v65, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
LABEL_27:
    v34 = &qword_10042A9F0;
    v35 = &qword_100390D08;
    goto LABEL_28;
  }

  v68 = v52 + v60;
  v69 = v72;
  sub_1002463C0(v68, v72, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  v70 = sub_100249750(v65, v69);
  sub_100246490(v69, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  sub_100246490(v65, type metadata accessor for Proto_Gnss_Emergency_HorizWithVertUncertaintyVelocity);
  sub_1000059A8(v52, &qword_100423FE8, &qword_1003834B8);
  if (v70)
  {
    goto LABEL_33;
  }

LABEL_30:
  v66 = 0;
  return v66 & 1;
}

uint64_t sub_100252AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Notification(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else if (v10 == 2 || ((v9 ^ v10) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100252BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_GpsTOD(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423F58, &qword_100383428);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  v11 = sub_100024A2C(&qword_10042A910, &qword_100390C28);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_LocationInfo(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_35;
    }
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      goto LABEL_35;
    }
  }

  v25 = v14[7];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      goto LABEL_35;
    }
  }

  v30 = v14[8];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31 == 4)
  {
    if (v32 != 4)
    {
      goto LABEL_35;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_35;
  }

  v33 = v14[9];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      goto LABEL_35;
    }
  }

  v38 = v14[10];
  v39 = *(v11 + 48);
  sub_10000A0A4(a1 + v38, v13, &qword_100423F58, &qword_100383428);
  v40 = a2 + v38;
  v41 = v39;
  sub_10000A0A4(v40, &v13[v39], &qword_100423F58, &qword_100383428);
  v42 = *(v5 + 48);
  if (v42(v13, 1, v4) == 1)
  {
    if (v42(&v13[v41], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100423F58, &qword_100383428);
LABEL_38:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v43 & 1;
    }

    goto LABEL_34;
  }

  sub_10000A0A4(v13, v10, &qword_100423F58, &qword_100383428);
  if (v42(&v13[v41], 1, v4) == 1)
  {
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
LABEL_34:
    sub_1000059A8(v13, &qword_10042A910, &qword_100390C28);
    goto LABEL_35;
  }

  sub_1002463C0(&v13[v41], v7, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  v45 = sub_100255EF8(v10, v7, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_GpsTOD);
  sub_1000059A8(v13, &qword_100423F58, &qword_100383428);
  if (v45)
  {
    goto LABEL_38;
  }

LABEL_35:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_100253010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - v8;
  v10 = sub_100024A2C(&qword_10042AA28, &qword_100390D40);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v46 - v12;
  v48 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidArc(0);
  v49 = a1;
  v14 = v48[5];
  v15 = *(v11 + 56);
  sub_10000A0A4(a1 + v14, v13, &qword_100423F90, &qword_100383460);
  sub_10000A0A4(a2 + v14, &v13[v15], &qword_100423F90, &qword_100383460);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v9, &qword_100423F90, &qword_100383460);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v47;
      sub_1002463C0(&v13[v15], v47, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      v20 = sub_100255534(v9, v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_100246490(v19, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_100246490(v9, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_1000059A8(v13, &qword_100423F90, &qword_100383460);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100246490(v9, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_6:
    sub_1000059A8(v13, &qword_10042AA28, &qword_100390D40);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v13, &qword_100423F90, &qword_100383460);
LABEL_10:
  v21 = v48[6];
  v22 = (v49 + v21);
  v23 = *(v49 + v21 + 4);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 4);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_7;
    }
  }

  v26 = v48[7];
  v27 = (v49 + v26);
  v28 = *(v49 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      goto LABEL_7;
    }
  }

  v31 = v48[8];
  v32 = (v49 + v31);
  v33 = *(v49 + v31 + 4);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 4);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_7;
    }
  }

  v36 = v48[9];
  v37 = (v49 + v36);
  v38 = *(v49 + v36 + 4);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 4);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_7;
    }
  }

  v41 = v48[10];
  v42 = (v49 + v41);
  v43 = *(v49 + v41 + 4);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 4);
  if (v43)
  {
    if (v45)
    {
LABEL_40:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if ((v45 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100253488(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != 2)
  {
    if (v6 != 2 && ((v5 ^ v6) & 1) == 0)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_7:
  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100253550(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime(0);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_100424088, &qword_100383558);
  __chkstk_darwin(v5 - 8);
  v39 = &v37 - v6;
  v41 = sub_100024A2C(&qword_10042A968, &qword_100390C80);
  __chkstk_darwin(v41);
  v44 = &v37 - v7;
  v8 = type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_100424080, &qword_100383550);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_100024A2C(&qword_10042A970, &qword_100390C88);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v40 = type metadata accessor for Proto_Gnss_Emergency_CellTimeData(0);
  v19 = *(v40 + 20);
  v20 = *(v16 + 56);
  v45 = a1;
  sub_10000A0A4(a1 + v19, v18, &qword_100424080, &qword_100383550);
  sub_10000A0A4(v46 + v19, &v18[v20], &qword_100424080, &qword_100383550);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) != 1)
  {
    sub_10000A0A4(v18, v14, &qword_100424080, &qword_100383550);
    if (v21(&v18[v20], 1, v8) != 1)
    {
      sub_1002463C0(&v18[v20], v11, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
      v25 = sub_100255EF8(v14, v11, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
      sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
      sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
      sub_1000059A8(v18, &qword_100424080, &qword_100383550);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_100246490(v14, type metadata accessor for Proto_Gnss_Emergency_CtsEutranCellTime);
LABEL_6:
    v22 = &qword_10042A970;
    v23 = &qword_100390C88;
    v24 = v18;
LABEL_14:
    sub_1000059A8(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v18, &qword_100424080, &qword_100383550);
LABEL_8:
  v26 = *(v40 + 24);
  v27 = *(v41 + 48);
  v28 = v44;
  sub_10000A0A4(v45 + v26, v44, &qword_100424088, &qword_100383558);
  sub_10000A0A4(v46 + v26, v28 + v27, &qword_100424088, &qword_100383558);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_1000059A8(v28, &qword_100424088, &qword_100383558);
LABEL_18:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v39;
  sub_10000A0A4(v28, v39, &qword_100424088, &qword_100383558);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_100246490(v31, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
LABEL_13:
    v22 = &qword_10042A968;
    v23 = &qword_100390C80;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v38;
  sub_1002463C0(v34, v38, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  v36 = sub_1002503F8(v31, v35);
  sub_100246490(v35, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  sub_100246490(v31, type metadata accessor for Proto_Gnss_Emergency_CtsCdmaCellTime);
  sub_1000059A8(v28, &qword_100424088, &qword_100383558);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_100253B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_Configuration(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423F10, &qword_1003833E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_100024A2C(&qword_10042A960, &qword_100390C78);
  __chkstk_darwin(v11);
  v13 = &v61 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_SuplContext(0);
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      goto LABEL_32;
    }
  }

  v20 = v14[6];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_32;
    }

    if (*v21 != *v23 || v22 != v24)
    {
      v25 = v14;
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v25;
      if ((v26 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v24)
  {
    goto LABEL_32;
  }

  v27 = v14[7];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
  {
    goto LABEL_32;
  }

  v30 = v14[8];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_32;
    }

    if (*v31 != *v33 || v32 != v34)
    {
      v35 = v14;
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v35;
      if ((v36 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v34)
  {
    goto LABEL_32;
  }

  v62 = v14;
  v37 = v14[9];
  v38 = *(v11 + 48);
  sub_10000A0A4(a1 + v37, v13, &qword_100423F10, &qword_1003833E0);
  v39 = a2 + v37;
  v40 = v38;
  sub_10000A0A4(v39, &v13[v38], &qword_100423F10, &qword_1003833E0);
  v41 = *(v5 + 48);
  if (v41(v13, 1, v4) != 1)
  {
    sub_10000A0A4(v13, v10, &qword_100423F10, &qword_1003833E0);
    if (v41(&v13[v40], 1, v4) != 1)
    {
      sub_1002463C0(&v13[v40], v7, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      v44 = sub_100256B8C(v10, v7);
      sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_Configuration);
      sub_1000059A8(v13, &qword_100423F10, &qword_1003833E0);
      if ((v44 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_35;
    }

    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_Configuration);
LABEL_31:
    sub_1000059A8(v13, &qword_10042A960, &qword_100390C78);
    goto LABEL_32;
  }

  if (v41(&v13[v40], 1, v4) != 1)
  {
    goto LABEL_31;
  }

  sub_1000059A8(v13, &qword_100423F10, &qword_1003833E0);
LABEL_35:
  v45 = v62;
  v46 = v62[10];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_32;
    }

    if (*v47 != *v49 || v48 != v50)
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v45 = v62;
      if ((v51 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  else if (v50)
  {
    goto LABEL_32;
  }

  v52 = v45[11];
  v53 = *(a1 + v52);
  v54 = *(a2 + v52);
  if (v53 == 2)
  {
    if (v54 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v54 == 2 || ((v53 ^ v54) & 1) != 0)
  {
    goto LABEL_32;
  }

  v55 = v45[12];
  v56 = *(a1 + v55);
  v57 = *(a2 + v55);
  if (v56 == 2)
  {
    if (v57 != 2)
    {
      goto LABEL_32;
    }
  }

  else if (v57 == 2 || ((v56 ^ v57) & 1) != 0)
  {
    goto LABEL_32;
  }

  v58 = v45[13];
  v59 = *(a1 + v58);
  v60 = *(a2 + v58);
  if (v59 != 2)
  {
    if (v60 == 2 || ((v59 ^ v60) & 1) != 0)
    {
      goto LABEL_32;
    }

LABEL_57:
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v42 & 1;
  }

  if (v60 == 2)
  {
    goto LABEL_57;
  }

LABEL_32:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1002540CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SessionInfo(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 != 7)
  {
    if (v9 == v10)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v10 != 7)
  {
    return 0;
  }

LABEL_9:
  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 4);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1002541E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_ShapeInfo(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100024A2C(&qword_100423FC8, &qword_100383498);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_100024A2C(&qword_10042AA10, &qword_100390D28);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for Proto_Gnss_Emergency_LocEstimate(0);
  v15 = *(v14 + 20);
  v32 = a1;
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 9)
  {
    if (v17 != 9)
    {
      goto LABEL_12;
    }
  }

  else if (v16 != v17)
  {
    goto LABEL_12;
  }

  v18 = a2;
  v19 = *(v14 + 24);
  v20 = *(v11 + 48);
  sub_10000A0A4(v32 + v19, v13, &qword_100423FC8, &qword_100383498);
  sub_10000A0A4(v18 + v19, &v13[v20], &qword_100423FC8, &qword_100383498);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v20], 1, v4) == 1)
    {
      sub_1000059A8(v13, &qword_100423FC8, &qword_100383498);
LABEL_17:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_10;
  }

  sub_10000A0A4(v13, v10, &qword_100423FC8, &qword_100383498);
  if (v21(&v13[v20], 1, v4) == 1)
  {
    sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
LABEL_10:
    v22 = &qword_10042AA10;
    v23 = &qword_100390D28;
LABEL_11:
    sub_1000059A8(v13, v22, v23);
    goto LABEL_12;
  }

  sub_1002463C0(&v13[v20], v7, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  v26 = *(v4 + 20);
  v27 = *&v10[v26];
  v28 = *&v7[v26];
  if (v27 != v28)
  {

    v29 = sub_1002198A8(v27, v28);

    if ((v29 & 1) == 0)
    {
      sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
      sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
      v22 = &qword_100423FC8;
      v23 = &qword_100383498;
      goto LABEL_11;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100246490(v7, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  sub_100246490(v10, type metadata accessor for Proto_Gnss_Emergency_ShapeInfo);
  sub_1000059A8(v13, &qword_100423FC8, &qword_100383498);
  if (v30)
  {
    goto LABEL_17;
  }

LABEL_12:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_10025463C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v66 = *(v4 - 8);
  v67 = v4;
  __chkstk_darwin(v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_1004240A8, &qword_100383578);
  __chkstk_darwin(v7 - 8);
  v64 = &v59 - v8;
  v65 = sub_100024A2C(&qword_10042A948, &qword_100390C60);
  __chkstk_darwin(v65);
  v68 = &v59 - v9;
  v10 = type metadata accessor for Proto_Gnss_Emergency_CplaneConfig(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100024A2C(&qword_1004240A0, &qword_100383570);
  __chkstk_darwin(v14 - 8);
  v16 = &v59 - v15;
  v17 = sub_100024A2C(&qword_10042A950, &qword_100390C68);
  __chkstk_darwin(v17);
  v19 = &v59 - v18;
  v20 = type metadata accessor for Proto_Gnss_Emergency_EmergConfig(0);
  v21 = v20;
  v22 = *(v20 + 20);
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 == 2)
  {
    if (v24 != 2)
    {
      goto LABEL_33;
    }
  }

  else if (v24 == 2 || ((v23 ^ v24) & 1) != 0)
  {
    goto LABEL_33;
  }

  v25 = *(v20 + 24);
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v29)
  {
    goto LABEL_33;
  }

  v60 = v6;
  v61 = v13;
  v30 = v11;
  v31 = *(v21 + 28);
  v32 = *(v17 + 48);
  v62 = a1;
  sub_10000A0A4(a1 + v31, v19, &qword_1004240A0, &qword_100383570);
  v33 = a2 + v31;
  v34 = a2;
  v63 = v32;
  sub_10000A0A4(v33, &v19[v32], &qword_1004240A0, &qword_100383570);
  v35 = *(v30 + 48);
  if (v35(v19, 1, v10) != 1)
  {
    sub_10000A0A4(v19, v16, &qword_1004240A0, &qword_100383570);
    v43 = v63;
    if (v35(&v19[v63], 1, v10) == 1)
    {
      sub_100246490(v16, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
      goto LABEL_21;
    }

    v46 = &v19[v43];
    v47 = v61;
    sub_1002463C0(v46, v61, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
    v48 = *(v10 + 20);
    v49 = v16[v48];
    v50 = *(v47 + v48);
    if (v49 == 2)
    {
      v36 = v62;
      if (v50 == 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v36 = v62;
      if (v50 != 2 && ((v49 ^ v50) & 1) == 0)
      {
LABEL_35:
        type metadata accessor for UnknownStorage();
        sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100246490(v47, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
        sub_100246490(v16, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
        sub_1000059A8(v19, &qword_1004240A0, &qword_100383570);
        if ((v55 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_16;
      }
    }

    sub_100246490(v47, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
    sub_100246490(v16, type metadata accessor for Proto_Gnss_Emergency_CplaneConfig);
    v44 = &qword_1004240A0;
    v45 = &qword_100383570;
    goto LABEL_31;
  }

  if (v35(&v19[v63], 1, v10) != 1)
  {
LABEL_21:
    v44 = &qword_10042A950;
    v45 = &qword_100390C68;
LABEL_31:
    v52 = v19;
    goto LABEL_32;
  }

  sub_1000059A8(v19, &qword_1004240A0, &qword_100383570);
  v36 = v62;
LABEL_16:
  v37 = *(v21 + 32);
  v38 = v34;
  v39 = *(v65 + 48);
  v40 = v68;
  sub_10000A0A4(v36 + v37, v68, &qword_1004240A8, &qword_100383578);
  sub_10000A0A4(v38 + v37, v40 + v39, &qword_1004240A8, &qword_100383578);
  v41 = v67;
  v42 = *(v66 + 48);
  if (v42(v40, 1, v67) == 1)
  {
    if (v42(v40 + v39, 1, v41) == 1)
    {
      sub_1000059A8(v40, &qword_1004240A8, &qword_100383578);
LABEL_38:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v53 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v53 & 1;
    }

    goto LABEL_27;
  }

  v51 = v64;
  sub_10000A0A4(v40, v64, &qword_1004240A8, &qword_100383578);
  if (v42(v40 + v39, 1, v41) == 1)
  {
    sub_100246490(v51, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
LABEL_27:
    v44 = &qword_10042A948;
    v45 = &qword_100390C60;
    v52 = v40;
LABEL_32:
    sub_1000059A8(v52, v44, v45);
    goto LABEL_33;
  }

  v56 = v40 + v39;
  v57 = v60;
  sub_1002463C0(v56, v60, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  v58 = sub_100254DB4(v51, v57);
  sub_100246490(v57, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  sub_100246490(v51, type metadata accessor for Proto_Gnss_Emergency_SuplConfig);
  sub_1000059A8(v40, &qword_1004240A8, &qword_100383578);
  if (v58)
  {
    goto LABEL_38;
  }

LABEL_33:
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_100254DB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_SuplConfig(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    if (*v11 != *v13 || v12 != v14)
    {
      v16 = v4;
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v4 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v4[7];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    return 0;
  }

  v21 = v4[8];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    return 0;
  }

  v24 = v4[9];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v27 = v4[10];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 2)
  {
    if (v29 == 2)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
  {
    return 0;
  }

LABEL_37:
  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100254F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_LteCellInfo(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 4);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 4);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v4[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v4[10];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 4);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 4);
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = v4[11];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 4);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 4);
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  v38 = v4[12];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 4);
  v41 = (a2 + v38);
  v42 = *(a2 + v38 + 4);
  if (v40)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (*v39 != *v41)
    {
      LOBYTE(v42) = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v43 = v4[13];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 4);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  v48 = v4[14];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 4);
  v51 = (a2 + v48);
  v52 = *(a2 + v48 + 4);
  if (v50)
  {
    if (!v52)
    {
      return 0;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10025522C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for Proto_Gnss_Emergency_LocationId(0) + 32);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 == 7)
  {
    if (v6 != 7)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  if (sub_100245798(*a1, *a2, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, type metadata accessor for Proto_Gnss_Emergency_LteCellInfo, sub_100254F94) & 1) != 0 && (sub_1002452BC(a1[1], a2[1]) & 1) != 0 && (sub_1002455FC(a1[2], a2[2], type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, type metadata accessor for Proto_Gnss_Emergency_WcdmaCellInfo, sub_100250AA8))
  {
    type metadata accessor for UnknownStorage();
    sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_10025539C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_Gnss_Emergency_TowAssist(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
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

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100255534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(v5 + 24);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 4);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100255634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100024A2C(&qword_100423F90, &qword_100383460);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_100024A2C(&qword_10042AA28, &qword_100390D40);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v30 = a3(0);
  v31 = a1;
  v16 = *(v30 + 20);
  v17 = *(v13 + 56);
  sub_10000A0A4(a1 + v16, v15, &qword_100423F90, &qword_100383460);
  sub_10000A0A4(a2 + v16, &v15[v17], &qword_100423F90, &qword_100383460);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) != 1)
  {
    sub_10000A0A4(v15, v11, &qword_100423F90, &qword_100383460);
    if (v18(&v15[v17], 1, v6) != 1)
    {
      v21 = v29;
      sub_1002463C0(&v15[v17], v29, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      v22 = sub_100255534(v11, v21, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_100246490(v21, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
      sub_1000059A8(v15, &qword_100423F90, &qword_100383460);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_100246490(v11, type metadata accessor for Proto_Gnss_Emergency_EllipsoidPoint);
LABEL_6:
    sub_1000059A8(v15, &qword_10042AA28, &qword_100390D40);
    goto LABEL_7;
  }

  if (v18(&v15[v17], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_1000059A8(v15, &qword_100423F90, &qword_100383460);
LABEL_10:
  v23 = *(v30 + 24);
  v24 = (v31 + v23);
  v25 = *(v31 + v23 + 4);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 4);
  if (v25)
  {
    if (v27)
    {
LABEL_16:
      type metadata accessor for UnknownStorage();
      sub_100256CB4(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v19 & 1;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v19 = 0;
  return v19 & 1;
}