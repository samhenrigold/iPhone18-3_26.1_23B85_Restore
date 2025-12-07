uint64_t sub_1006F8FD8@<X0>(char *a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v32 = a5;
  v9 = type metadata accessor for ModifiedContent();
  v31 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v26 - v12;
  v13 = type metadata accessor for Optional();
  v26 = *(v13 - 8);
  v14 = v26;
  __chkstk_darwin();
  v29 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v26 - v16;
  v36 = a1;
  v37 = a2;
  v38 = a3;
  v39 = a4;
  type metadata accessor for TrackNumber(0, &v36);
  v35[4] = a4;
  WitnessTable = swift_getWitnessTable();
  sub_100663950();
  static Alignment.center.getter();
  View.frame(width:height:alignment:)();
  v35[2] = a3;
  v35[3] = &protocol witness table for _FrameLayout;
  v17 = swift_getWitnessTable();
  v18 = v30;
  sub_100663950();
  v19 = v31;
  v20 = *(v31 + 8);
  v20(v11, v9);
  v21 = *(v14 + 16);
  v22 = v29;
  v23 = v27;
  v21(v29, v27, v13);
  v36 = v22;
  (*(v19 + 16))(v11, v18, v9);
  v37 = v11;
  v35[0] = v13;
  v35[1] = v9;
  v33 = WitnessTable;
  v34 = v17;
  sub_1006769F4(&v36, 2uLL, v35);
  v20(v18, v9);
  v24 = *(v26 + 8);
  v24(v23, v13);
  v20(v11, v9);
  return (v24)(v22, v13);
}

uint64_t sub_1006F9338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v52 = a2;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v4 = &v41 - v3;
  v5 = sub_10010FC20(&qword_10118F330, &qword_100EC2E20);
  __chkstk_darwin();
  v7 = &v41 - v6;
  v8 = *(a1 + 16);
  type metadata accessor for Optional();
  v65 = *(a1 + 24);
  v9 = v65;
  WitnessTable = swift_getWitnessTable();
  v46 = type metadata accessor for _OverlayModifier();
  v10 = type metadata accessor for ModifiedContent();
  v50 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v41 - v11;
  sub_1001109D0(&qword_101195B40, &qword_100ED3C10);
  v49 = type metadata accessor for ModifiedContent();
  v47 = type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_10119F720, &qword_100EDEB38);
  v13 = type metadata accessor for ModifiedContent();
  v51 = *(v13 - 8);
  __chkstk_darwin();
  v44 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v41 - v15;
  v16 = v42;
  sub_1000089F8(v42, v4, &unk_101188920, &qword_100EBCC50);
  ArtworkImage.init(_:)();
  v17 = &v7[*(sub_10010FC20(&unk_10118F340, &qword_100EC2E18) + 36)];
  *v17 = 0x3FF0000000000000;
  *(v17 + 4) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v7[*(v5 + 36)];
  v19 = v67;
  *v18 = v66;
  *(v18 + 1) = v19;
  *(v18 + 2) = v68;
  v53 = v8;
  v54 = v9;
  v55 = v16;
  static Alignment.center.getter();
  v20 = sub_1006FBD04();
  View.overlay<A>(alignment:content:)();
  sub_1000095E8(v7, &qword_10118F330, &qword_100EC2E20);
  v21 = sub_1006F9AE8();
  v22 = type metadata accessor for RoundedRectangle();
  v64[3] = v22;
  v64[4] = sub_1006FBE4C(&qword_101187830, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v23 = sub_10001C8B8(v64);
  v24 = *(v22 + 20);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  __asm { FMOV            V0.2D, #5.0 }

  *v23 = _Q0;
  v32 = swift_getWitnessTable();
  v62 = v20;
  v63 = v32;
  v33 = swift_getWitnessTable();
  v34 = v44;
  sub_10057F86C(v21, v64, v33, v44, 0.5);

  (*(v50 + 8))(v12, v10);
  sub_10000959C(v64);
  v35 = sub_100020674(&qword_101195B58, &qword_101195B40, &qword_100ED3C10, &protocol conformance descriptor for _OverlayModifier<A>);
  v60 = v33;
  v61 = v35;
  v58 = swift_getWitnessTable();
  v59 = &protocol witness table for _CompositingGroupEffect;
  v36 = swift_getWitnessTable();
  v37 = sub_100020674(qword_10119F740, &qword_10119F720, &qword_100EDEB38, &protocol conformance descriptor for _ClipEffect<A>);
  v56 = v36;
  v57 = v37;
  swift_getWitnessTable();
  v38 = v48;
  sub_100663950();
  v39 = *(v51 + 8);
  v39(v34, v13);
  sub_100663950();
  return (v39)(v38, v13);
}

uint64_t sub_1006F99AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v11 - v7;
  type metadata accessor for Artwork(0, a2, a3, v9);
  v11[1] = a3;
  swift_getWitnessTable();
  sub_100663950();
  sub_100663950();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1006F9AE8()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10056CEEC(v3);
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for ColorScheme.light(_:))
  {
    static Color.black.getter();
  }

  else
  {
    if (v4 != enum case for ColorScheme.dark(_:))
    {
      static Color.black.getter();
      v5 = Color.opacity(_:)();

      (*(v1 + 8))(v3, v0);
      return v5;
    }

    static Color.white.getter();
  }

  v5 = Color.opacity(_:)();

  return v5;
}

uint64_t sub_1006F9C60(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ItemCell(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1006F7DB4(a1, v9, v6, v7);
}

_OWORD *sub_1006F9CEC(uint64_t a1)
{
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 208) = 1;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 216) = 0u;
  result = (a1 + 216);
  result[3] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  return result;
}

uint64_t sub_1006F9D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10119F478, &qword_100EDE860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006F9D9C()
{
  result = qword_10119F4B8;
  if (!qword_10119F4B8)
  {
    sub_1001109D0(&qword_10119F4A8, &qword_100EDE920);
    sub_10054727C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F4B8);
  }

  return result;
}

unint64_t sub_1006F9E28()
{
  result = qword_10119F4C0;
  if (!qword_10119F4C0)
  {
    sub_1001109D0(&qword_10119F4B0, &qword_100EDE928);
    sub_1006F9EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F4C0);
  }

  return result;
}

unint64_t sub_1006F9EB4()
{
  result = qword_10119F4C8;
  if (!qword_10119F4C8)
  {
    sub_1001109D0(&qword_10119F4D0, &qword_100EDE930);
    sub_1006F9F6C();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F4C8);
  }

  return result;
}

unint64_t sub_1006F9F6C()
{
  result = qword_10119F4D8;
  if (!qword_10119F4D8)
  {
    sub_1001109D0(&qword_10119F4E0, &qword_100EDE938);
    sub_100020674(&qword_10119F4E8, &qword_10119F4F0, &qword_100EDE940, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F4D8);
  }

  return result;
}

void sub_1006FA024(uint64_t a1)
{
  sub_1006FA870(319, &qword_1011A4570, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      sub_1006FA870(319, &qword_1011878B0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1006FA124(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = type metadata accessor for Artwork();
  v6 = *(v5 - 8);
  v33 = v5;
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v32 = *(a3 + 16);
  v9 = *(v32 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v34 = v8;
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(type metadata accessor for ColorScheme() - 8);
  v14 = 8;
  if (*(v13 + 64) > 8uLL)
  {
    v14 = *(v13 + 64);
  }

  if (v12 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v12;
  }

  if (v7)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = *(v6 + 64) + 1;
  }

  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  if (!v10)
  {
    ++v18;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v16 + v17;
  v20 = *(v13 + 80) & 0xF8 | 7;
  if (a2 <= v15)
  {
    goto LABEL_43;
  }

  v21 = v14 + ((v18 + v20 + (v19 & ~v17)) & ~v20) + 1;
  v22 = 8 * v21;
  if (v21 > 3)
  {
    goto LABEL_23;
  }

  v24 = ((a2 - v15 + ~(-1 << v22)) >> v22) + 1;
  if (HIWORD(v24))
  {
    v23 = *(a1 + v21);
    if (v23)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v24 <= 0xFF)
    {
      if (v24 < 2)
      {
        goto LABEL_43;
      }

LABEL_23:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_43;
      }

LABEL_30:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v21)
      {
        if (v21 <= 3)
        {
          v26 = v21;
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      else
      {
        v27 = 0;
      }

      return v15 + (v27 | v25) + 1;
    }

    v23 = *(a1 + v21);
    if (*(a1 + v21))
    {
      goto LABEL_30;
    }
  }

LABEL_43:
  if (v34 == v15)
  {
    if (v7 >= 2)
    {
      v28 = (*(v6 + 48))(a1, v7, v33);
      goto LABEL_53;
    }

    return 0;
  }

  v29 = (a1 + v19) & ~v17;
  if (v11 == v15)
  {
    if (v10 >= 2)
    {
      v28 = (*(v9 + 48))(v29, v10, v32);
LABEL_53:
      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v31 = *(((v29 + v18 + v20) & ~v20) + v14);
  if (v31 >= 2)
  {
    return (v31 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1006FA444(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  v42 = v7;
  v43 = v6;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v41 = *(a4 + 16);
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  v14 = type metadata accessor for ColorScheme();
  v15 = v11;
  v16 = 0;
  v17 = *(v14 - 8);
  v18 = *(v17 + 64);
  if (v18 <= 8)
  {
    v18 = 8;
  }

  if (v13 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = v13;
  }

  v20 = *(v7 + 64);
  if (!v8)
  {
    ++v20;
  }

  v21 = *(v10 + 80);
  v22 = v20 + v21;
  v23 = (v20 + v21) & ~v21;
  v24 = *(v10 + 64);
  if (!v15)
  {
    ++v24;
  }

  v25 = *(v17 + 80) & 0xF8 | 7;
  v26 = v18 + 1;
  v27 = ((v24 + v25 + v23) & ~v25) + v18 + 1;
  if (a3 > v19)
  {
    if (v27 <= 3)
    {
      v28 = ((a3 - v19 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v28))
      {
        v16 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v16 = v29;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  if (v19 < a2)
  {
    v30 = ~v19 + a2;
    if (v27 < 4)
    {
      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v33 = v30 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v33;
            if (v16 > 1)
            {
LABEL_62:
              if (v16 == 2)
              {
                *&a1[v27] = v31;
              }

              else
              {
                *&a1[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v16 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v16 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v30;
      v31 = 1;
      if (v16 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v16)
    {
      a1[v27] = v31;
    }

    return;
  }

  v32 = a1;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *&a1[v27] = 0;
  }

  else if (v16)
  {
    a1[v27] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v9 == v19)
  {
    v34 = v43;
    v35 = *(v42 + 56);
    v36 = a2 + 1;
    v15 = v8;
LABEL_50:

    v35(v32, v36, v15, v34);
    return;
  }

  v32 = (&a1[v22] & ~v21);
  if (v12 == v19)
  {
    v35 = *(v10 + 56);
    v36 = a2 + 1;
    v34 = v41;
    goto LABEL_50;
  }

  v37 = (&v32[v24 + v25] & ~v25);
  if (a2 > 0xFE)
  {
    if (v26 <= 3)
    {
      v38 = ~(-1 << (8 * v26));
    }

    else
    {
      v38 = -1;
    }

    if (v26)
    {
      v39 = v38 & (a2 - 255);
      if (v26 <= 3)
      {
        v40 = v26;
      }

      else
      {
        v40 = 4;
      }

      bzero(v37, v26);
      if (v40 > 2)
      {
        if (v40 == 3)
        {
          *v37 = v39;
          v37[2] = BYTE2(v39);
        }

        else
        {
          *v37 = v39;
        }
      }

      else if (v40 == 1)
      {
        *v37 = v39;
      }

      else
      {
        *v37 = v39;
      }
    }
  }

  else
  {
    v37[v18] = -a2;
  }
}

void sub_1006FA870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1006FA8D4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006FA960(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v8 + 80);
  if (v10)
  {
    v14 = *(*(v7 - 8) + 64);
  }

  else
  {
    v14 = *(*(v7 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(*(*(a3 + 16) - 8) + 64) + v13;
  v16 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v17 = v14 + (v15 & ~v13);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v20 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v6 >= v11)
        {
          v26 = *(v5 + 48);

          return v26();
        }

        else
        {
          v24 = (*(v9 + 48))((a1 + v15) & ~v13, v10, v7, v5);
          if (v24 >= 2)
          {
            return v24 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_33;
  }

LABEL_20:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v22 = v17;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void sub_1006FAB7C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = v9 - 1;
  if (!v9)
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = v12;
  }

  v14 = v10 + v11;
  v15 = (v10 + v11) & ~v11;
  if (v9)
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = v15 + v16;
  v18 = a3 >= v13;
  v19 = a3 - v13;
  if (v19 == 0 || !v18)
  {
LABEL_21:
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v17 > 3)
  {
    v5 = 1;
    if (v13 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  v20 = ((v19 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
  if (!HIWORD(v20))
  {
    if (v20 < 0x100)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20 >= 2)
    {
      v5 = v21;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_21;
  }

  v5 = 4;
  if (v13 < a2)
  {
LABEL_22:
    v22 = ~v13 + a2;
    if (v17 < 4)
    {
      v24 = (v22 >> (8 * v17)) + 1;
      if (v17)
      {
        v25 = v22 & ~(-1 << (8 * v17));
        v26 = a1;
        bzero(a1, v17);
        a1 = v26;
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *v26 = v25;
            if (v5 > 1)
            {
LABEL_63:
              if (v5 == 2)
              {
                *&a1[v17] = v24;
              }

              else
              {
                *&a1[v17] = v24;
              }

              return;
            }
          }

          else
          {
            *v26 = v22;
            if (v5 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *v26 = v25;
        v26[2] = BYTE2(v25);
      }

      if (v5 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = a1;
      bzero(a1, v17);
      a1 = v23;
      *v23 = v22;
      v24 = 1;
      if (v5 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v5)
    {
      a1[v17] = v24;
    }

    return;
  }

LABEL_31:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v17] = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  a1[v17] = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v7 >= v12)
  {
    v31 = *(v6 + 56);

    v31();
  }

  else
  {
    v27 = &a1[v14] & ~v11;
    if (v12 >= a2)
    {
      v32 = *(v8 + 56);
      v33 = a2 + 1;
      v34 = &a1[v14] & ~v11;

      v32(v34, v33, v9);
    }

    else
    {
      if (v16 <= 3)
      {
        v28 = ~(-1 << (8 * v16));
      }

      else
      {
        v28 = -1;
      }

      if (v16)
      {
        v29 = v28 & (~v12 + a2);
        if (v16 <= 3)
        {
          v30 = v16;
        }

        else
        {
          v30 = 4;
        }

        bzero((&a1[v14] & ~v11), v16);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            *v27 = v29;
            *(v27 + 2) = BYTE2(v29);
          }

          else
          {
            *v27 = v29;
          }
        }

        else if (v30 == 1)
        {
          *v27 = v29;
        }

        else
        {
          *v27 = v29;
        }
      }
    }
  }
}

uint64_t sub_1006FAEF4(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Optional();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1006FAF9C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= v5)
  {
    v9 = *(v4 + 84);
  }

  else
  {
    v9 = v8;
  }

  v10 = a3[4];
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 > v9)
  {
    v9 = v13;
  }

  v14 = *(*(a3[3] - 8) + 64);
  if (!v7)
  {
    ++v14;
  }

  v15 = *(v6 + 80);
  v16 = *(v11 + 80);
  if (v12)
  {
    v17 = *(*(v10 - 8) + 64);
  }

  else
  {
    v17 = *(*(v10 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[2] - 8) + 64) + v15;
  v19 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_40;
  }

  v20 = v17 + ((v14 + v16 + (v18 & ~v15)) & ~v16);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v23 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v23 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v23 < 2)
    {
LABEL_39:
      if (v9)
      {
LABEL_40:
        if (v5 == v9)
        {
          v27 = *(v4 + 48);

          return v27();
        }

        else
        {
          v29 = (a1 + v18) & ~v15;
          if (v8 == v9)
          {
            v30 = (*(v6 + 48))(v29, v7);
          }

          else
          {
            v30 = (*(v11 + 48))((v29 + v14 + v16) & ~v16, v12, v10);
          }

          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_39;
  }

LABEL_26:
  v24 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v24 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v25 = v20;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v9 + (v26 | v24) + 1;
}

void sub_1006FB278(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = 0;
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  v12 = a4[4];
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(*(a4[2] - 8) + 64);
  v16 = *(v8 + 80);
  v17 = *(v13 + 80);
  v18 = v14 - 1;
  if (!v14)
  {
    v18 = 0;
  }

  if (v18 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = v18;
  }

  if (v9)
  {
    v20 = *(*(a4[3] - 8) + 64);
  }

  else
  {
    v20 = *(*(a4[3] - 8) + 64) + 1;
  }

  v21 = v15 + v16;
  v22 = (v20 + v17 + ((v15 + v16) & ~v16)) & ~v17;
  if (v14)
  {
    v23 = *(*(v12 - 8) + 64);
  }

  else
  {
    v23 = *(*(v12 - 8) + 64) + 1;
  }

  v24 = v22 + v23;
  v25 = a3 >= v19;
  v26 = a3 - v19;
  if (v26 == 0 || !v25)
  {
LABEL_29:
    if (v19 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  if (v24 > 3)
  {
    v5 = 1;
    if (v19 < a2)
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  v27 = ((v26 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
  if (!HIWORD(v27))
  {
    if (v27 < 0x100)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if (v27 < 2)
    {
      v5 = 0;
    }

    goto LABEL_29;
  }

  v5 = 4;
  if (v19 < a2)
  {
LABEL_30:
    v28 = ~v19 + a2;
    if (v24 < 4)
    {
      v30 = (v28 >> (8 * v24)) + 1;
      if (v24)
      {
        v31 = v28 & ~(-1 << (8 * v24));
        v32 = a1;
        bzero(a1, v24);
        a1 = v32;
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v32 = v31;
            if (v5 > 1)
            {
LABEL_72:
              if (v5 == 2)
              {
                *&a1[v24] = v30;
              }

              else
              {
                *&a1[v24] = v30;
              }

              return;
            }
          }

          else
          {
            *v32 = v28;
            if (v5 > 1)
            {
              goto LABEL_72;
            }
          }

          goto LABEL_69;
        }

        *v32 = v31;
        v32[2] = BYTE2(v31);
      }

      if (v5 > 1)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v29 = a1;
      bzero(a1, v24);
      a1 = v29;
      *v29 = v28;
      v30 = 1;
      if (v5 > 1)
      {
        goto LABEL_72;
      }
    }

LABEL_69:
    if (v5)
    {
      a1[v24] = v30;
    }

    return;
  }

LABEL_39:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *&a1[v24] = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v5)
  {
    goto LABEL_45;
  }

  a1[v24] = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v7 == v19)
  {
    v33 = *(v6 + 56);

    v33();
  }

  else
  {
    v34 = &a1[v21] & ~v16;
    if (v10 == v19)
    {
      v35 = *(v8 + 56);
      v36 = a2 + 1;

      v35(v34, v36);
    }

    else
    {
      v37 = ((v34 + v20 + v17) & ~v17);
      if (v18 >= a2)
      {
        v41 = *(v13 + 56);
        v42 = a2 + 1;
        v43 = (v34 + v20 + v17) & ~v17;

        v41(v43, v42, v14, v12);
      }

      else
      {
        if (v23 <= 3)
        {
          v38 = ~(-1 << (8 * v23));
        }

        else
        {
          v38 = -1;
        }

        if (v23)
        {
          v39 = v38 & (~v18 + a2);
          if (v23 <= 3)
          {
            v40 = v23;
          }

          else
          {
            v40 = 4;
          }

          bzero(v37, v23);
          if (v40 > 2)
          {
            if (v40 == 3)
            {
              *v37 = v39;
              v37[2] = BYTE2(v39);
            }

            else
            {
              *v37 = v39;
            }
          }

          else if (v40 == 1)
          {
            *v37 = v39;
          }

          else
          {
            *v37 = v39;
          }
        }
      }
    }
  }
}

uint64_t sub_1006FB6C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006FB754(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1006FB930(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t sub_1006FBD04()
{
  result = qword_10119F728;
  if (!qword_10119F728)
  {
    sub_1001109D0(&qword_10118F330, &qword_100EC2E20);
    sub_1006FBD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F728);
  }

  return result;
}

unint64_t sub_1006FBD90()
{
  result = qword_10119F730;
  if (!qword_10119F730)
  {
    sub_1001109D0(&unk_10118F340, &qword_100EC2E18);
    sub_1006FBE4C(&qword_10119F738, &type metadata accessor for ArtworkImage, &protocol conformance descriptor for ArtworkImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F730);
  }

  return result;
}

uint64_t sub_1006FBE4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1006FBF70(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1006FC128(a1);
  (*(*(*(v2 + qword_101219498) - 8) + 8))(a1);
  return v5;
}

id sub_1006FC094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StaticHostingController(0, *((swift_isaMask & *v4) + qword_101219498), *((swift_isaMask & *v4) + qword_101219498 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

id sub_1006FC128(uint64_t a1)
{
  v1 = __chkstk_darwin();
  (*(v3 + 16))(&v8 - v2, v1);
  v4 = UIHostingController.init(rootView:)();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];

    dispatch thunk of UIHostingController.sizeThatFits(in:)();
    [v4 setPreferredContentSize:?];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006FC368(uint64_t a1)
{
  type metadata accessor for MusicLibrary();
  if (v1 <= 0x3F)
  {
    _s11MusicVideosV5ScopeOMa(319);
    if (v2 <= 0x3F)
    {
      sub_10018D5F0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1006FC454(uint64_t a1)
{
  v1 = type metadata accessor for Artist();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1006FC4AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v45 - v7;
  __chkstk_darwin();
  v9 = &v45 - v8;
  __chkstk_darwin();
  v11 = &v45 - v10;
  *a3 = 8;
  type metadata accessor for MusicLibrary();
  *(a3 + 8) = static MusicLibrary.shared.getter();
  v12 = _s11MusicVideosVMa(0);
  v13 = (a3 + v12[8]);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v51 = v12[9];
  *(a3 + v51) = &_swiftEmptySetSingleton;
  v49 = v12[7];
  sub_1006FFEC4(a1, a3 + v49, _s11MusicVideosV5ScopeOMa);
  *(a3 + 16) = a2;
  v46 = objc_opt_self();
  v14 = [v46 standardUserDefaults];
  v52 = a1;
  sub_1006FFEC4(a1, v11, _s11MusicVideosV5ScopeOMa);
  v15 = type metadata accessor for Artist();
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v11, 1, v15);
  v18 = "impressionParentId";
  v19 = 0xD000000000000012;
  v47 = "impressionParentId";
  if (v17 != 1)
  {
    sub_1006FFF2C(v11, _s11MusicVideosV5ScopeOMa);
    v18 = "LibraryArtistDetail";
    v19 = 0xD000000000000013;
  }

  v53 = v19;
  v54 = v18 | 0x8000000000000000;

  v20._countAndFlagsBits = 0x53746E65746E6F43;
  v20._object = 0xEB0000000074726FLL;
  String.append(_:)(v20);

  sub_100110448();
  sub_10011049C();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s11ContentSortVN, &v53);

  v21 = v53;
  if ((v53 & 0xFF00) == 0x200)
  {
    v22 = sub_10045FDA0(0);
    if ((v22 & 0xFF00) == 0x200)
    {
      v23 = v52;
      sub_1006FFEC4(v52, v9, _s11MusicVideosV5ScopeOMa);
      if (v16(v9, 1, v15) == 1)
      {
        v24 = 0;
      }

      else
      {
        sub_1006FFF2C(v9, _s11MusicVideosV5ScopeOMa);
        v24 = 4;
      }

      v28 = v48;
      v25 = (a3 + v12[10]);
      *v25 = v24;
      v25[1] = 1;
      v26 = v25 + 1;
      goto LABEL_15;
    }

    v25 = (a3 + v12[10]);
    *v25 = v22;
    v25[1] = HIBYTE(v22) & 1;
    v26 = v25 + 1;
    v24 = v22;
    v23 = v52;
    if ((v22 & 0x100) == 0)
    {
      v27 = 0;
      v28 = v48;
      goto LABEL_16;
    }
  }

  else
  {
    v25 = (a3 + v12[10]);
    *v25 = v53;
    v25[1] = HIBYTE(v21) & 1;
    v26 = v25 + 1;
    v24 = v21;
    if ((v21 & 0x100) == 0)
    {
      v27 = 0;
      v23 = v52;
      v28 = v48;
      goto LABEL_16;
    }

    v23 = v52;
  }

  v28 = v48;
LABEL_15:
  v27 = 256;
LABEL_16:
  sub_100375F28(v27 | v24);
  if ((v29 & 0xFF00) == 0x200)
  {
    sub_1006FFEC4(v23, v28, _s11MusicVideosV5ScopeOMa);
    LOBYTE(v30) = 1;
    if (v16(v28, 1, v15) == 1)
    {
      LOBYTE(v29) = 0;
    }

    else
    {
      sub_1006FFF2C(v28, _s11MusicVideosV5ScopeOMa);
      LOBYTE(v29) = 4;
    }
  }

  else
  {
    v30 = (v29 >> 8) & 1;
  }

  *v25 = v29;
  *v26 = v30;
  v31 = [v46 standardUserDefaults];
  v32 = v50;
  sub_1006FFEC4(a3 + v49, v50, _s11MusicVideosV5ScopeOMa);
  v33 = v16(v32, 1, v15);
  v34 = 0xD000000000000012;
  v35 = v47;
  if (v33 != 1)
  {
    sub_1006FFF2C(v32, _s11MusicVideosV5ScopeOMa);
    v35 = "LibraryArtistDetail";
    v34 = 0xD000000000000013;
  }

  v36 = v35 | 0x8000000000000000;
  v37 = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
  v53 = v34;
  v54 = v36;

  v38._countAndFlagsBits = 0x704F7265746C6946;
  v38._object = 0xEC0000006E6F6974;
  String.append(_:)(v38);

  sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
  sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
  NSUserDefaults.decodeValue<A>(_:forKey:)(v37, &v53);

  v39 = v53;
  if (!v53)
  {
    v40 = sub_1006FE258();
    v41 = Optional<A>.convertToSet.getter(v40);
    if (v41)
    {
      v39 = v41;
    }

    else
    {
      v39 = &_swiftEmptySetSingleton;
    }
  }

  v42 = sub_1006FE4C0();
  v43 = sub_1003AE5C4(v42, v39);

  result = sub_1006FFF2C(v23, _s11MusicVideosV5ScopeOMa);
  *(a3 + v51) = v43;
  return result;
}

uint64_t sub_1006FCB18(__int16 a1)
{
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s11MusicVideosVMa(0);
  v6 = (v1 + *(v5 + 40));
  v7 = v6[1];
  v8 = *v6;
  *v6 = a1;
  v6[1] = (a1 & 0x100) >> 8;
  result = sub_1006B8B0C(a1, v8);
  if ((result & 1) == 0 || ((((a1 & 0x100) == 0) ^ v7) & 1) == 0)
  {
    v10 = 0xD000000000000012;
    v11 = [objc_opt_self() standardUserDefaults];
    v16[3] = &_s11ContentSortVN;
    v16[4] = sub_100110448();
    v16[5] = sub_10011049C();
    LOBYTE(v16[0]) = a1;
    BYTE1(v16[0]) = (a1 & 0x100) >> 8;
    sub_1006FFEC4(v1 + *(v5 + 28), v4, _s11MusicVideosV5ScopeOMa);
    v12 = type metadata accessor for Artist();
    if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
    {
      v13 = "impressionParentId";
    }

    else
    {
      sub_1006FFF2C(v4, _s11MusicVideosV5ScopeOMa);
      v13 = "LibraryArtistDetail";
      v10 = 0xD000000000000013;
    }

    v15[0] = v10;
    v15[1] = v13 | 0x8000000000000000;

    v14._countAndFlagsBits = 0x53746E65746E6F43;
    v14._object = 0xEB0000000074726FLL;
    String.append(_:)(v14);

    NSUserDefaults.encodeValue(_:forKey:)(v16);

    return sub_10000959C(v16);
  }

  return result;
}

uint64_t sub_1006FCD38@<X0>(uint64_t a2@<X8>)
{
  v14[7] = _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v14[6] = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14[9] = v14 - v4;
  v14[8] = type metadata accessor for MusicVideo();
  __chkstk_darwin();
  v5 = sub_10010FC20(&qword_10118CEE8, &qword_100EC8B10);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v14[5] = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v14 - v8;
  v10 = sub_10010E83C(&off_101099920);
  sub_1006FF6AC(v10, v9);

  MusicLibrarySectionedRequest<>.filterItems(equalTo:)();
  v20[3] = v5;
  v20[4] = sub_1007018BC();
  v11 = sub_10001C8B8(v20);
  v15 = v6;
  (*(v6 + 16))(v11, v9, v5);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = a2;
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v12 = type metadata accessor for MusicPlaybackIntentDescriptor();
  (*(*(v12 - 8) + 56))(v16, 0, 1, v12);
  return (*(v15 + 8))(v9, v5);
}

uint64_t sub_1006FD384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Artist();
  v19[11] = *(v4 - 8);
  v19[12] = v4;
  __chkstk_darwin();
  v19[5] = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v19[10] = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_10118CEE8, &qword_100EC8B10);
  __chkstk_darwin();
  v19[8] = v19 - v8;
  v19[14] = _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v19[7] = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v19[9] = sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v19[6] = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  v12 = v19 - v11;
  v19[13] = v7;
  v23[3] = v7;
  v23[4] = sub_1007018BC();
  v13 = sub_10001C8B8(v23);
  sub_1006FF6AC(&_swiftEmptySetSingleton, v13);
  sub_100701920(a1, v12);
  v14 = type metadata accessor for MusicVideo();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_1000095E8(v12, &unk_1011846B0, &unk_100ECB630);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
  }

  else
  {
    *(&v21 + 1) = v14;
    v22 = sub_1006FFE18(&unk_101193C00, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
    v16 = sub_10001C8B8(&v20);
    (*(v15 + 32))(v16, v12, v14);
  }

  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v17 = type metadata accessor for MusicPlaybackIntentDescriptor();
  return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
}

void sub_1006FDC30(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Artist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TitledSection();
  type metadata accessor for MusicVideo();
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_10118CEE8, &qword_100EC8B10);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v9 = _s11MusicVideosVMa(0);
  MusicLibrarySectionedRequest.filterItems(text:)(*(v1 + v9[8]));
  sub_1006FFEC4(v1 + v9[7], v8, _s11MusicVideosV5ScopeOMa);
  if ((*(v4 + 48))(v8, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v8, v3);
    swift_getKeyPath();
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    (*(v4 + 8))(v6, v3);
  }

  sub_1006FDE90();
  sub_1006FF31C(*(v1 + v9[9]), a1);
}

void sub_1006FDE90()
{
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *(v0 + *(v1 + 40));
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      swift_getKeyPath();
      sub_10010FC20(&qword_10118CEE8, &qword_100EC8B10);
      MusicLibrarySectionedRequest<>.sortItems<A>(by:ascending:)();
      goto LABEL_14;
    }

    if (v4 == 4)
    {
      swift_getKeyPath();
      sub_10010FC20(&qword_10118CEE8, &qword_100EC8B10);
      MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

LABEL_15:
      swift_getKeyPath();
      MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

      return;
    }
  }

  else if (!*(v0 + *(v1 + 40)) || v4 == 1)
  {
    swift_getKeyPath();
    sub_10010FC20(&qword_10118CEE8, &qword_100EC8B10);
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();
LABEL_14:

    goto LABEL_15;
  }

  v5 = v1;
  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, static Logger.libraryView);
  sub_1006FFEC4(v0, v3, _s11MusicVideosVMa);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    v15[7] = v3[*(v5 + 40)];
    v11 = String.init<A>(describing:)();
    v13 = v12;
    sub_1006FFF2C(v3, _s11MusicVideosVMa);
    v14 = sub_1000105AC(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Tried to apply unhandled sortOption=%{public}s to music videos request.", v9, 0xCu);
    sub_10000959C(v10);
  }

  else
  {

    sub_1006FFF2C(v3, _s11MusicVideosVMa);
  }
}

unint64_t sub_1006FE258()
{
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s11MusicVideosVMa(0);
  sub_1006FFEC4(v0 + *(v3 + 28), v2, _s11MusicVideosV5ScopeOMa);
  v4 = type metadata accessor for Artist();
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) != 1)
  {
    sub_1006FFF2C(v2, _s11MusicVideosV5ScopeOMa);
    return 3;
  }

  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 stringForKey:v7];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    v13 = _findStringSwitchCase(cases:string:)(&off_101098DD8, v12);

    if (!v13)
    {
      return 0;
    }

    if (v13 == 1)
    {
      return 1;
    }
  }

  v15 = [v5 standardUserDefaults];
  Library.SortConfiguration.storageKey.getter(4u);
  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 stringForKey:v16];

  if (!v17)
  {
    return 3;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  v22 = _findStringSwitchCase(cases:string:)(&off_101098E28, v21);

  if (v22 >= 3)
  {
    return 3;
  }

  else
  {
    return v22;
  }
}

void *sub_1006FE4C0()
{
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s11MusicVideosVMa(0);
  sub_1006FFEC4(v0 + *(v3 + 28), v2, _s11MusicVideosV5ScopeOMa);
  v4 = type metadata accessor for Artist();
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
    if (*(v0 + 16))
    {
      v5 = &off_101098FF8;
    }

    else
    {
      v7 = [objc_opt_self() currentDevice];
      v8 = [v7 userInterfaceIdiom];

      v5 = &off_101098FF8;
      if (v8 != 6)
      {
        v10[1] = *(v0 + 8);
        type metadata accessor for MusicLibrary();

        v10[0] = static MusicLibrary.shared.getter();
        sub_1006FFE18(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
        v9 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v9)
        {
          v5 = &off_101099020;
        }
      }
    }
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  sub_1006FFF2C(v2, _s11MusicVideosV5ScopeOMa);
  return v5;
}

uint64_t sub_1006FE6C4(uint64_t a1)
{
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s11MusicVideosVMa(0);
  v6 = *(v1 + *(v5 + 36));
  result = sub_10018FCA0(v6, a1);
  if ((result & 1) == 0)
  {
    v8 = 0xD000000000000012;
    v9 = [objc_opt_self() standardUserDefaults];
    v15[3] = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
    v15[4] = sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
    v15[5] = sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
    v15[0] = v6;
    sub_1006FFEC4(v1 + *(v5 + 28), v4, _s11MusicVideosV5ScopeOMa);
    v10 = type metadata accessor for Artist();
    v11 = (*(*(v10 - 8) + 48))(v4, 1, v10);

    if (v11 == 1)
    {
      v12 = "impressionParentId";
    }

    else
    {
      sub_1006FFF2C(v4, _s11MusicVideosV5ScopeOMa);
      v12 = "LibraryArtistDetail";
      v8 = 0xD000000000000013;
    }

    v14[0] = v8;
    v14[1] = v12 | 0x8000000000000000;

    v13._countAndFlagsBits = 0x704F7265746C6946;
    v13._object = 0xEC0000006E6F6974;
    String.append(_:)(v13);

    NSUserDefaults.encodeValue(_:forKey:)(v15);

    return sub_10000959C(v15);
  }

  return result;
}

void sub_1006FE930(uint64_t a1)
{
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s11MusicVideosVMa(0);
  v6 = *(v5 + 36);
  v7 = *(v1 + v6);
  *(v1 + v6) = a1;
  v8 = sub_10018FCA0(a1, v7);

  if ((v8 & 1) == 0)
  {
    v9 = 0xD000000000000012;
    v10 = [objc_opt_self() standardUserDefaults];
    v16[3] = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
    v16[4] = sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
    v16[5] = sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
    v16[0] = a1;
    sub_1006FFEC4(v1 + *(v5 + 28), v4, _s11MusicVideosV5ScopeOMa);
    v11 = type metadata accessor for Artist();
    v12 = (*(*(v11 - 8) + 48))(v4, 1, v11);

    if (v12 == 1)
    {
      v13 = "impressionParentId";
    }

    else
    {
      sub_1006FFF2C(v4, _s11MusicVideosV5ScopeOMa);
      v13 = "LibraryArtistDetail";
      v9 = 0xD000000000000013;
    }

    v15[0] = v9;
    v15[1] = v13 | 0x8000000000000000;

    v14._countAndFlagsBits = 0x704F7265746C6946;
    v14._object = 0xEC0000006E6F6974;
    String.append(_:)(v14);

    NSUserDefaults.encodeValue(_:forKey:)(v16);

    sub_10000959C(v16);
  }
}

Swift::Int sub_1006FEBAC()
{
  v1 = v0;
  v2 = type metadata accessor for Artist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1006FFEC4(v1, v7, _s11MusicVideosV5ScopeOMa);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    Hasher._combine(_:)(1uLL);
    sub_1006FFE18(&qword_101188E70, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

void sub_1006FED9C(uint64_t a1)
{
  v2 = type metadata accessor for Artist();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006FFEC4(v1, v7, _s11MusicVideosV5ScopeOMa);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    Hasher._combine(_:)(1uLL);
    sub_1006FFE18(&qword_101188E70, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }
}

Swift::Int sub_1006FEF68(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Artist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1006FFEC4(v2, v8, _s11MusicVideosV5ScopeOMa);
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v8, v3);
    Hasher._combine(_:)(1uLL);
    sub_1006FFE18(&qword_101188E70, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  return Hasher._finalize()();
}

_UNKNOWN **sub_1006FF1A8()
{
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s11MusicVideosVMa(0);
  sub_1006FFEC4(v0 + *(v3 + 28), v2, _s11MusicVideosV5ScopeOMa);
  v4 = type metadata accessor for Artist();
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v6 = static MusicLibrary.== infix(_:_:)();

  if (v5 == 1)
  {
    if (v6)
    {
      return &off_101098B80;
    }

    else
    {
      return &off_101098BA8;
    }
  }

  else
  {
    if (v6)
    {
      v7 = &off_101098BD0;
    }

    else
    {
      v7 = &off_101098BF8;
    }

    sub_1006FFF2C(v2, _s11MusicVideosV5ScopeOMa);
  }

  return v7;
}

void sub_1006FF31C(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for MusicFavoriteStatus();
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v20 = v4;
    Hasher.init(_seed:)();
    String.hash(into:)();
    v7 = Hasher._finalize()();
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    v10 = v7 & ~v9;
    if ((*(a1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      while (!*(*(a1 + 48) + v10) || *(*(a1 + 48) + v10) == 2)
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v12)
        {
          goto LABEL_10;
        }

        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

LABEL_10:
      swift_getKeyPath();
      v13 = v20;
      (*(v20 + 104))(v6, enum case for MusicFavoriteStatus.favorited(_:), v3);
      sub_10010FC20(&qword_10118CEE8, &qword_100EC8B10);
      sub_1006FFE18(&qword_1011831C8, &type metadata accessor for MusicFavoriteStatus, &protocol conformance descriptor for MusicFavoriteStatus);
      MusicLibrarySectionedRequest<>.filterItems<A>(matching:equalTo:)();

      (*(v13 + 8))(v6, v3);
    }

LABEL_11:
    if (*(a1 + 16))
    {
      Hasher.init(_seed:)();
      String.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if ((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (!*(*(a1 + 48) + v16) || *(*(a1 + 48) + v16) == 1)
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_20;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            return;
          }
        }

LABEL_20:
        sub_10010FC20(&qword_10118CEE8, &qword_100EC8B10);
        MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
      }
    }
  }
}

double sub_1006FF6AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Artist();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TitledSection();
  type metadata accessor for MusicVideo();
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&qword_10118CEE8, &qword_100EC8B10);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v12 = _s11MusicVideosVMa(0);
  MusicLibrarySectionedRequest.filterItems(text:)(*(v2 + v12[8]));
  sub_1006FFEC4(v2 + v12[7], v11, _s11MusicVideosV5ScopeOMa);
  if ((*(v7 + 48))(v11, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v11, v6);
    swift_getKeyPath();
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    (*(v7 + 8))(v9, v6);
  }

  sub_1006FDE90();
  v13 = *(v2 + v12[9]);
  if (*(a1 + 16) <= v13[2] >> 3)
  {
    v17 = *(v3 + v12[9]);

    sub_100700034(a1);
    v14 = v17;
  }

  else
  {

    v14 = sub_100700254(a1, v13);
  }

  sub_1006FF31C(v14, a2);

  return result;
}

void sub_1006FF96C(__int128 *a1)
{
  v3 = type metadata accessor for Artist();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10045EC58(*v1);
  String.hash(into:)();

  v11[1] = *(v1 + 8);
  type metadata accessor for MusicLibrary();
  sub_1006FFE18(&qword_101180378, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16));
  v9 = _s11MusicVideosVMa(0);
  sub_1006FFEC4(v1 + v9[7], v8, _s11MusicVideosV5ScopeOMa);
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v8, v3);
    Hasher._combine(_:)(1uLL);
    sub_1006FFE18(&qword_101188E70, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  String.hash(into:)();
  sub_10010B100(a1, *(v1 + v9[9]));
  v10 = *(v1 + v9[10] + 1);
  String.hash(into:)();

  Hasher._combine(_:)(v10);
}

Swift::Int sub_1006FFD4C()
{
  Hasher.init(_seed:)();
  sub_1006FF96C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1006FFD90(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1006FF96C(v2);
  return Hasher._finalize()();
}

uint64_t sub_1006FFE18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006FFE6C(uint64_t a1)
{
  result = sub_1006FFE18(&qword_10119F9F8, _s11MusicVideosVMa, &unk_100EDEC28);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1006FFEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006FFF2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006FFF8C@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1006FFFE4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  return a4(v5, v6);
}

void sub_100700034(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_100194E54(*(*(a1 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_100700128(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100195A08(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void *sub_100700254(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v7 = a1;
  v48 = 0;
  v8 = *(a1 + 56);
  v56 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  v53 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v8;
  v54 = (63 - v9) >> 6;
  v58 = a2 + 7;

  v57 = 0;
LABEL_6:
  while (2)
  {
    if (!v11)
    {
      v13 = v57;
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v54)
        {
          v23 = v7;
          goto LABEL_71;
        }

        v11 = *(v56 + 8 * v14);
        ++v13;
        if (v11)
        {
          v57 = v14;
          goto LABEL_12;
        }
      }

LABEL_74:
      __break(1u);
LABEL_75:
      v43 = v12;

      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_35;
      }

      v44 = swift_slowAlloc();
      memcpy(v44, v58, v43);
      v45 = v48;
      sub_100700F30(v44, v49, v6, v2, &v60);
      v47 = v46;

      if (!v45)
      {

        v5 = v60;
        v53 = v62;
        v57 = v63;
        v6 = v47;
        goto LABEL_70;
      }

      __break(1u);
      return result;
    }

LABEL_12:
    v15 = *(*(v7 + 48) + (__clz(__rbit64(v11)) | (v57 << 6)));
    Hasher.init(_seed:)();
    v11 &= v11 - 1;
    String.hash(into:)();

    v16 = Hasher._finalize()();
    v17 = -1 << *(v6 + 32);
    v2 = v16 & ~v17;
    v4 = v2 >> 6;
    v3 = 1 << v2;
    if (((1 << v2) & *(v58 + (v2 >> 6))) == 0)
    {
      continue;
    }

    break;
  }

  v55 = v7;
  v5 = ~v17;
  while (1)
  {
    if (*(v6[6] + v2))
    {
      if (*(v6[6] + v2) == 1)
      {
        v18 = 0x657469726F766166;
      }

      else
      {
        v18 = 0x64616F6C6E776F64;
      }

      v19 = 0xE900000000000073;
      if (v15)
      {
LABEL_22:
        if (v15 == 1)
        {
          v21 = 0x657469726F766166;
        }

        else
        {
          v21 = 0x64616F6C6E776F64;
        }

        v20 = 0xE900000000000073;
        if (v18 != v21)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7105633;
      if (v15)
      {
        goto LABEL_22;
      }
    }

    v20 = 0xE300000000000000;
    if (v18 != 7105633)
    {
      goto LABEL_27;
    }

LABEL_26:
    if (v19 == v20)
    {
      v62 = v53;
      v63 = v57;
      v64 = v11;
      v5 = v55;
      v60 = v55;
      v61 = v56;

      goto LABEL_34;
    }

LABEL_27:
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      break;
    }

    v2 = (v2 + 1) & v5;
    v4 = v2 >> 6;
    v3 = 1 << v2;
    if ((*(v58 + (v2 >> 6)) & (1 << v2)) == 0)
    {
      v7 = v55;
      goto LABEL_6;
    }
  }

  v62 = v53;
  v63 = v57;
  v64 = v11;
  v5 = v55;
  v60 = v55;
  v61 = v56;
LABEL_34:
  v24 = *(v6 + 32);
  v49 = ((1 << v24) + 63) >> 6;
  v12 = 8 * v49;
  if ((v24 & 0x3Fu) > 0xD)
  {
    goto LABEL_75;
  }

LABEL_35:
  v50 = &v48;
  __chkstk_darwin();
  v2 = &v48 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v2, v58, v25);
  v26 = *(v2 + 8 * v4) & ~v3;
  v27 = v6[2];
  v52 = v2;
  *(v2 + 8 * v4) = v26;
  v28 = v27 - 1;
LABEL_36:
  v51 = v28;
LABEL_37:
  while (2)
  {
    if (v11)
    {
LABEL_43:
      v3 = *(*(v5 + 48) + (__clz(__rbit64(v11)) | (v57 << 6)));
      Hasher.init(_seed:)();
      v11 &= v11 - 1;
      String.hash(into:)();

      v2 = v59;
      v31 = Hasher._finalize()();
      v32 = -1 << *(v6 + 32);
      v33 = v31 & ~v32;
      v4 = v33 >> 6;
      v34 = 1 << v33;
      if (((1 << v33) & *(v58 + (v33 >> 6))) == 0)
      {
        continue;
      }

      v35 = ~v32;
      while (1)
      {
        if (*(v6[6] + v33))
        {
          if (*(v6[6] + v33) == 1)
          {
            v36 = 0x657469726F766166;
          }

          else
          {
            v36 = 0x64616F6C6E776F64;
          }

          v2 = 0xE900000000000073;
          if (v3)
          {
LABEL_53:
            if (v3 == 1)
            {
              v38 = 0x657469726F766166;
            }

            else
            {
              v38 = 0x64616F6C6E776F64;
            }

            v37 = 0xE900000000000073;
            if (v36 != v38)
            {
              goto LABEL_58;
            }

            goto LABEL_57;
          }
        }

        else
        {
          v2 = 0xE300000000000000;
          v36 = 7105633;
          if (v3)
          {
            goto LABEL_53;
          }
        }

        v37 = 0xE300000000000000;
        if (v36 != 7105633)
        {
          goto LABEL_58;
        }

LABEL_57:
        if (v2 == v37)
        {

LABEL_62:
          v40 = v52[v4];
          v52[v4] = v40 & ~v34;
          v5 = v55;
          if ((v40 & v34) != 0)
          {
            v28 = v51 - 1;
            if (__OFSUB__(v51, 1))
            {
              __break(1u);
            }

            if (v51 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_70;
            }

            goto LABEL_36;
          }

          goto LABEL_37;
        }

LABEL_58:
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v39)
        {
          goto LABEL_62;
        }

        v33 = (v33 + 1) & v35;
        v4 = v33 >> 6;
        v34 = 1 << v33;
        if ((*(v58 + (v33 >> 6)) & (1 << v33)) == 0)
        {
          v5 = v55;
          goto LABEL_37;
        }
      }
    }

    break;
  }

  v29 = v57;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v30 >= v54)
    {
      break;
    }

    v11 = *(v56 + 8 * v30);
    ++v29;
    if (v11)
    {
      v57 = v30;
      goto LABEL_43;
    }
  }

  if (v54 <= v57 + 1)
  {
    v41 = v57 + 1;
  }

  else
  {
    v41 = v54;
  }

  v57 = v41 - 1;
  v6 = sub_1003B1EA0(v52, v49, v51, v6);
LABEL_70:
  v23 = v5;
LABEL_71:
  sub_10005C9F8(v23);
  return v6;
}

void *sub_1007009C0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v28 = *(v5 + 32);
  v54 = ((1 << v28) + 63) >> 6;
  v14 = 8 * v54;
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin();
    v2 = &v53 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v29);
    v30 = *(v2 + 8 * v8) & ~v4;
    v31 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v30;
    v32 = v31 - 1;
LABEL_23:
    v56 = v32;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v34 = v27;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v12)
      {
        v5 = sub_1003B2420(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v35);
      ++v34;
      if (v11)
      {
        v27 = v35;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v36 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v37 = *(v3 + 48);
            v60 = v27;
            v38 = (v37 + ((v27 << 10) | (16 * v36)));
            v39 = *v38;
            v4 = v38[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v40 = Hasher._finalize()();
            v41 = -1 << *(v5 + 32);
            v8 = v40 & ~v41;
            v2 = v8 >> 6;
            v42 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v43 = (v5[6] + 16 * v8);
          if (*v43 != v39 || v43[1] != v4)
          {
            v45 = ~v41;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v45;
              v2 = v8 >> 6;
              v42 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v46 = (v5[6] + 16 * v8);
              if (*v46 == v39 && v46[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v33 = v58[v2];
          v58[v2] = v33 & ~v42;
          v26 = (v33 & v42) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v32 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v48 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v49 = swift_slowAlloc();
  memcpy(v49, v61, v48);
  v50 = v53;
  sub_100701230(v49, v54, v5, v2, v62);
  v52 = v51;

  if (!v50)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_10005C9F8(v13);
    return v5;
  }

  __break(1u);
  return result;
}

void sub_100700F30(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v31 = a3 + 56;
LABEL_2:
  v28 = v7;
LABEL_3:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_9:
      v13 = *(*(*a5 + 48) + (__clz(__rbit64(v9)) | (v10 << 6)));
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      Hasher.init(_seed:)();
      String.hash(into:)();

      v14 = Hasher._finalize()();
      v15 = -1 << *(a3 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      v18 = 1 << v16;
      if (((1 << v16) & *(v31 + 8 * (v16 >> 6))) == 0)
      {
        continue;
      }

      v19 = ~v15;
      while (1)
      {
        if (*(*(a3 + 48) + v16))
        {
          if (*(*(a3 + 48) + v16) == 1)
          {
            v20 = 0x657469726F766166;
          }

          else
          {
            v20 = 0x64616F6C6E776F64;
          }

          v21 = 0xE900000000000073;
          if (v13)
          {
LABEL_19:
            if (v13 == 1)
            {
              v23 = 0x657469726F766166;
            }

            else
            {
              v23 = 0x64616F6C6E776F64;
            }

            v22 = 0xE900000000000073;
            if (v20 != v23)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v21 = 0xE300000000000000;
          v20 = 7105633;
          if (v13)
          {
            goto LABEL_19;
          }
        }

        v22 = 0xE300000000000000;
        if (v20 != 7105633)
        {
          goto LABEL_24;
        }

LABEL_23:
        if (v21 == v22)
        {

LABEL_28:
          v25 = a1[v17];
          a1[v17] = v25 & ~v18;
          if ((v25 & v18) != 0)
          {
            v7 = v28 - 1;
            if (__OFSUB__(v28, 1))
            {
              goto LABEL_37;
            }

            if (v28 == 1)
            {
              return;
            }

            goto LABEL_2;
          }

          goto LABEL_3;
        }

LABEL_24:
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_28;
        }

        v16 = (v16 + 1) & v19;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if ((*(v31 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  if (v11 <= v8 + 1)
  {
    v26 = v8 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  sub_1003B1EA0(a1, a2, v28, a3);
}

void sub_100701230(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          sub_1003B2420(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_100701468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10119FA00, &qword_100EDEDA0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  v13 = *(v12 + 56);
  sub_1006FFEC4(a1, &v18 - v10, _s11MusicVideosV5ScopeOMa);
  sub_1006FFEC4(a2, &v11[v13], _s11MusicVideosV5ScopeOMa);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_1006FFEC4(v11, v9, _s11MusicVideosV5ScopeOMa);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v13], v4);
      v15 = static Artist.== infix(_:_:)();
      v16 = *(v5 + 8);
      v16(v7, v4);
      v16(v9, v4);
      sub_1006FFF2C(v11, _s11MusicVideosV5ScopeOMa);
      return v15 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v11, &qword_10119FA00, &qword_100EDEDA0);
    v15 = 0;
    return v15 & 1;
  }

  sub_1006FFF2C(v11, _s11MusicVideosV5ScopeOMa);
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_100701750(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sub_10045EC58(*a1);
  v7 = v6;
  if (v5 == sub_10045EC58(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_16:
      v21 = 0;
      return v21 & 1;
    }
  }

  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_16;
  }

  v11 = _s11MusicVideosVMa(0);
  if ((sub_100701468(a1 + v11[7], a2 + v11[7]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v12 = v11[8];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if ((v13 != *v15 || v14 != v15[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  if ((sub_10018FCA0(*(a1 + v11[9]), *(a2 + v11[9])) & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = v11[10];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 1);
  v19 = (a2 + v16);
  v20 = v19[1];
  v21 = sub_1006B8B0C(*v17, *v19) & (v18 ^ v20 ^ 1);
  return v21 & 1;
}

unint64_t sub_1007018BC()
{
  result = qword_101190A00;
  if (!qword_101190A00)
  {
    sub_1001109D0(&qword_10118CEE8, &qword_100EC8B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101190A00);
  }

  return result;
}

uint64_t sub_100701920(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100701990(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1007019EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_100701A4C(void *a1, void *a2)
{
  v5 = sub_10010FC20(&qword_10119FA20, &qword_100EDEE60);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v16 - v7;
  sub_10000954C(a1, a1[3]);
  sub_1007020A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!a2)
  {
    goto LABEL_7;
  }

  v9 = a2;
  v10 = UIImageJPEGRepresentation(v9, 0.9);
  if (v10)
  {
    v11 = v10;
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0xF000000000000000;
  }

  v18 = v12;
  v19 = v14;
  v17 = 0;
  sub_10010FC20(&qword_10119FA28, &qword_100EDEE68);
  sub_100702148();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {

    sub_100029CA4(v18, v19);
LABEL_7:
    (*(v6 + 8))(v8, v5);
    return;
  }

  sub_100029CA4(v18, v19);
  [(UIImage *)v9 scale];
  v18 = v15;
  v17 = 1;
  sub_100282B9C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_100701C74()
{
  if (*v0)
  {
    return 0x656C616373;
  }

  else
  {
    return 1635017060;
  }
}

void sub_100701CA4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100701D7C(uint64_t a1)
{
  v2 = sub_1007020A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100701DB8(uint64_t a1)
{
  v2 = sub_1007020A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100701DF4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100701E3C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_100701E3C(void *a1)
{
  v3 = sub_10010FC20(&qword_10119FA08, &qword_100EDEE58);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = sub_10000954C(a1, a1[3]);
  sub_1007020A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v17 = 1;
    sub_100282AE0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if ((v16 & 1) != 0 || (v9 = v15, v17 = 0, sub_1007020F4(), KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), v10 = v16, v16 >> 60 == 15))
    {
      (*(v4 + 8))(v6, v3);
      v7 = 0;
    }

    else
    {
      v11 = *&v15;
      v12 = objc_allocWithZone(UIImage);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v7 = [v12 initWithData:isa scale:v9];

      sub_100029CA4(v11, v10);
      (*(v4 + 8))(v6, v3);
    }
  }

  sub_10000959C(a1);
  return v7;
}

unint64_t sub_1007020A0()
{
  result = qword_10119FA10;
  if (!qword_10119FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA10);
  }

  return result;
}

unint64_t sub_1007020F4()
{
  result = qword_10119FA18;
  if (!qword_10119FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA18);
  }

  return result;
}

unint64_t sub_100702148()
{
  result = qword_10119FA30;
  if (!qword_10119FA30)
  {
    sub_1001109D0(&qword_10119FA28, &qword_100EDEE68);
    sub_1007021CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA30);
  }

  return result;
}

unint64_t sub_1007021CC()
{
  result = qword_10119FA38;
  if (!qword_10119FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA38);
  }

  return result;
}

unint64_t sub_100702234()
{
  result = qword_10119FA40;
  if (!qword_10119FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA40);
  }

  return result;
}

unint64_t sub_10070228C()
{
  result = qword_10119FA48;
  if (!qword_10119FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA48);
  }

  return result;
}

unint64_t sub_1007022E4()
{
  result = qword_10119FA50;
  if (!qword_10119FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FA50);
  }

  return result;
}

id sub_100702394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_heightNeeded] = 0;
  *&v4[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView] = 0;
  *&v4[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___maskView] = 0;
  *&v4[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___blurView] = 0;
  v8 = &v4[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_descriptionText];
  *v8 = a3;
  *(v8 + 1) = a4;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
  v10 = String._bridgeToObjectiveC()();

  [v9 setTitle:v10];

  v11 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v9 action:"dismissAnimated"];
  v12 = AccessibilityIdentifier.doneButton.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = v12[3];
  sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v13, v14, v15, v16);
  v17 = [v9 navigationItem];

  [v17 setLeftBarButtonItem:v11];
  return v9;
}

void sub_1007025E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = sub_10070286C();
  [v7 addSubview:v8];

  sub_1007028D0(0.0, 0.0, 540.0, 0.0);
  v9 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  [*&v1[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView] sizeThatFits:{540.0, 0.0}];
  if (v10 > 648.0)
  {
    v10 = 648.0;
  }

  [v1 setPreferredContentSize:{540.0, v10}];
  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBC6B0;
  *(v11 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v11 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = ObjectType;
  v13 = v1;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v14 = *&v1[v9];
  v15 = sub_100702AE8();
  [v14 setMaskView:v15];

  sub_100702B64(1.0);
  v16 = *&v1[v9];
  v17 = sub_100702C4C();
  [v16 _addContentSubview:v17 atBack:0];

  sub_100702D10(0.0);
}

id sub_10070286C()
{
  v1 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  v2 = *(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView);
  }

  else
  {
    v4 = sub_10070320C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1007028D0(double a1, double a2, double a3, double a4)
{
  CGRectGetWidth(*&a1);
  v5 = HI.SizeClass.init(_:)();
  v6 = sub_10070286C();
  [v6 textContainerInset];

  v7 = HI.SizeClass.margin.getter(v5);
  v8 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  [*(v4 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView) adjustedContentInset];
  if (20.0 - v9 < 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 20.0 - v9;
  }

  result = [*(v4 + v8) textContainerInset];
  if (v15 != 20.0 || v7 != v12 || v10 != v13 || v7 != v14)
  {
    v19 = *(v4 + v8);

    return [v19 setTextContainerInset:{20.0, v7, v10, v7}];
  }

  return result;
}

void sub_1007029C4(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_10070286C();
  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v4 setFont:v5];

  [*&a3[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView] sizeThatFits:{540.0, 0.0}];
  if (v6 > 648.0)
  {
    v6 = 648.0;
  }

  [a3 setPreferredContentSize:{540.0, v6}];
  v7 = [a3 view];
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

char *sub_100702AE8()
{
  v1 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___maskView;
  v2 = *(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___maskView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___maskView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for DescriptionModal.Content.MaskView());
    v6 = sub_10070393C(64.0);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_100702B64(double a1)
{
  v2 = v1;
  v4 = sub_100702AE8();
  sub_1007037E0(a1);

  v10 = *(v2 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___maskView);
  v5 = sub_10070286C();
  [v5 contentOffset];
  v7 = v6;

  v8 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  [*(v2 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView) frame];
  Width = CGRectGetWidth(v12);
  [*(v2 + v8) frame];
  [v10 setFrame:{0.0, v7, Width, CGRectGetHeight(v13)}];
}

id sub_100702C4C()
{
  v1 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___blurView;
  v2 = *(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___blurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___blurView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
    v6 = objc_allocWithZone(type metadata accessor for ProgressiveBlurView());
    ProgressiveBlurView.init(blurRadius:edge:cutoff:interpolation:)(3, v5, 6.0, 0.3);
    v7 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_100702D10(double a1)
{
  v3 = sub_100702C4C();
  [v3 setAlpha:a1];

  v17 = *(v1 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___blurView);
  v4 = sub_10070286C();
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  v13 = CGRectGetHeight(v19) + -64.0;
  v14 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  [*(v1 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView) contentOffset];
  v16 = v13 + v15;
  [*(v1 + v14) frame];
  [v17 setFrame:{0.0, v16, CGRectGetWidth(v20), 64.0}];
}

void sub_100702E74()
{
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, "viewDidLayoutSubviews");
  v1 = sub_10070286C();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1007028D0(v15, v17, v19, v21);
  v22 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  v23 = *&v0[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;

  [v23 sizeThatFits:{v27, v29}];
  v31 = v30;

  v32 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_heightNeeded;
  *&v0[OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_heightNeeded] = v31;
  v33 = sub_10070286C();
  [v33 contentOffset];
  v35 = v34;

  [*&v0[v22] frame];
  v37 = v35 + v36;
  [*&v0[v22] adjustedContentInset];
  v39 = (v37 - v38 - *&v0[v32] + 64.0) * 0.015625;
  if (v39 < 0.0)
  {
    v39 = 0.0;
  }

  if (v39 <= 1.0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 1.0;
  }

  sub_100702B64(v40);
  sub_100702D10(1.0 - v40);
}

id sub_100703094()
{
  v1 = sub_10070286C();
  [v1 contentOffset];

  v2 = OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView;
  [*(v0 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content____lazy_storage___descriptionTextView) frame];
  return [*(v0 + v2) adjustedContentInset];
}

id sub_10070320C(uint64_t a1)
{
  v28 = a1;
  v37 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v35 = *(v37 - 8);
  __chkstk_darwin();
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for AttributeContainer();
  v33 = *(v36 - 8);
  __chkstk_darwin();
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for AttributedString();
  v31 = *(v34 - 8);
  __chkstk_darwin();
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v28 - v5;
  v7 = [objc_allocWithZone(UITextView) init];
  [v7 setEditable:0];
  v8 = [v7 textContainer];
  [v8 setLineFragmentPadding:0.0];

  v9 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v9 setMinimumLineHeight:22.0];
  [v9 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  v10 = sub_100009F78(0, &qword_10119FB20, NSParagraphStyle_ptr);
  swift_dynamicCast();
  v11 = v38;
  v12 = *(a1 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_descriptionText + 8);
  v39 = *(a1 + OBJC_IVAR____TtCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content_descriptionText);
  v40 = v12;
  sub_10010FC20(&qword_10119FB28, "E\v");
  swift_allocObject();

  MarkupRenderer.init(_:)();
  dispatch thunk of MarkupRenderer.attributedString.getter();

  sub_10010FC20(&qword_10119FB30, &unk_100EBC740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = NSParagraphStyleAttributeName;
  *(inited + 40) = v11;
  *(inited + 64) = v10;
  *(inited + 72) = NSFontAttributeName;
  v14 = objc_opt_self();
  v15 = NSParagraphStyleAttributeName;
  v16 = v11;
  v17 = NSFontAttributeName;
  v18 = [v14 preferredFontForTextStyle:UIFontTextStyleBody];
  *(inited + 104) = sub_100009F78(0, &qword_101183A00, UIFont_ptr);
  *(inited + 80) = v18;
  sub_10010BA14(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101180420, &unk_100EDEFD0);
  swift_arrayDestroy();
  v19 = v29;
  AttributeContainer.init(_:)();
  v20 = v35;
  v21 = v32;
  v22 = v37;
  (*(v35 + 104))(v32, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v37);
  AttributedString.mergeAttributes(_:mergePolicy:)();
  (*(v20 + 8))(v21, v22);
  (*(v33 + 8))(v19, v36);
  sub_100009F78(0, &unk_101189D70, NSAttributedString_ptr);
  v23 = v31;
  v24 = v34;
  (*(v31 + 16))(v30, v6, v34);
  v25 = NSAttributedString.init(_:)();
  [v7 setAttributedText:v25];

  v26 = [objc_opt_self() labelColor];
  [v7 setTextColor:v26];

  [v7 setDelegate:v28];
  (*(v23 + 8))(v6, v24);
  return v7;
}

void sub_1007037E0(double a1)
{
  v2 = OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientOpacity;
  v3 = *(v1 + OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientOpacity);
  *(v1 + OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientOpacity) = a1;
  if (v3 != a1)
  {
    v4 = v1;
    v5 = *(v1 + OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradient);
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100EBC6D0;
    v7 = objc_opt_self();
    *(v6 + 32) = [v7 blackColor];
    v8 = [v7 blackColor];
    v9 = [v8 colorWithAlphaComponent:*(v4 + v2)];

    *(v6 + 40) = v9;
    v10 = (v5 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
    swift_beginAccess();
    v11 = v10[3];
    v13 = *v10;
    v12 = v10[1];
    v16 = v10[2];
    v17 = v11;
    v14 = v13;
    v15 = v12;
    sub_100703F54(&v14, v18);

    v18[1] = v15;
    v18[2] = v16;
    v18[3] = v17;
    *&v18[0] = v14;
    *(&v18[0] + 1) = v6;
    Gradient.View.typedConfiguration.setter(v18);
  }
}

char *sub_10070393C(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_opaqueFiller;
  v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = [v6 blackColor];
  [v5 setBackgroundColor:v7];

  *&v2[v4] = v5;
  v8 = OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradient;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6D0;
  v10 = kCAGradientLayerAxial;
  *(v9 + 32) = [v6 blackColor];
  v11 = [v6 blackColor];
  v12 = [v11 colorWithAlphaComponent:0.0];

  *(v9 + 40) = v12;
  v13 = CGPoint.topCenter.unsafeMutableAddressor();
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = CGPoint.bottomCenter.unsafeMutableAddressor();
  swift_beginAccess();
  Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)(v10, v9, 0, 0, v23, v14, v15, *v16, v16[1]);
  v17 = objc_allocWithZone(type metadata accessor for Gradient.View());
  *&v2[v8] = Gradient.View.init(configuration:)(v23);
  *&v2[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientOpacity] = 0x3FF0000000000000;
  *&v2[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientHeight] = a1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for DescriptionModal.Content.MaskView();
  v18 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = *&v18[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_opaqueFiller];
  v20 = v18;
  [v20 addSubview:v19];
  [v20 addSubview:*&v20[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradient]];

  return v20;
}

id sub_100703BCC()
{
  v1 = *&v0[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_opaqueFiller];
  [v0 frame];
  Width = CGRectGetWidth(v11);
  [v0 frame];
  Height = CGRectGetHeight(v12);
  v4 = OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientHeight;
  [v1 setFrame:{0.0, 0.0, Width, Height - *&v0[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradientHeight]}];
  v5 = *&v0[OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradient];
  [v0 frame];
  v6 = CGRectGetHeight(v13) - *&v0[v4];
  [v0 frame];
  v7 = CGRectGetWidth(v14);
  v8 = *&v0[v4];

  return [v5 setFrame:{0.0, v6, v7, v8}];
}

id sub_100703D34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DescriptionModal.Content.MaskView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100703FB0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_opaqueFiller;
  v3 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  [v3 setBackgroundColor:v5];

  *(v1 + v2) = v3;
  v6 = OBJC_IVAR____TtCCC5Music16DescriptionModalP33_0EAC1E89AC1A8ECCCD684CECC329D23C7Content8MaskView_gradient;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBC6D0;
  v8 = kCAGradientLayerAxial;
  *(v7 + 32) = [v4 blackColor];
  v9 = [v4 blackColor];
  v10 = [v9 colorWithAlphaComponent:0.0];

  *(v7 + 40) = v10;
  v11 = CGPoint.topCenter.unsafeMutableAddressor();
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = CGPoint.bottomCenter.unsafeMutableAddressor();
  swift_beginAccess();
  Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)(v8, v7, 0, 0, v16, v12, v13, *v14, v14[1]);
  v15 = objc_allocWithZone(type metadata accessor for Gradient.View());
  *(v1 + v6) = Gradient.View.init(configuration:)(v16);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007041B4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a3;
  v43 = a2;
  v44 = a4;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v41 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = v38 - v6;
  v38[1] = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v39 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v38 - v8;
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v38 - v15;
  v17 = *(v11 + 16);
  v38[0] = v10;
  v17(v38 - v15, a1, v10, v14);
  v18 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
  v19 = *(v18 + 48);
  v20 = *(v18 + 64);
  v21 = _s6AlbumsV5ScopeOMa(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
  v9[v19] = 0;
  v9[v20] = 0;
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for URL();
  v23 = v40;
  (*(*(v22 - 8) + 56))(v40, 1, 1, v22);
  (v17)(v13, v16, v10);
  v24 = v39;
  sub_10070F034(v9, v39, type metadata accessor for ContainerDetail.Source);
  v25 = v23;
  v26 = v41;
  sub_1000089F8(v23, v41, &qword_101183A20, &unk_100EBCF80);
  v27 = v42;

  v28 = sub_100866288(v13, v24, v43, v27, v26, 0);
  v29 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
  v30 = sub_100137F48(v28, v29);
  sub_1000095E8(v25, &qword_101183A20, &unk_100EBCF80);
  sub_10070F180(v9, type metadata accessor for ContainerDetail.Source);
  (*(v11 + 8))(v16, v38[0]);
  v31 = sub_10010FC20(&unk_1011841E0, &unk_100ECDA60);
  v32 = v44;
  v33 = (v44 + *(v31 + 48));
  v34 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
  *v32 = v30;
  v35 = type metadata accessor for UITraitOverrides();
  (*(*(v35 - 8) + 56))(&v32[v34], 1, 1, v35);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  v36 = type metadata accessor for AppInterfaceContext.Activity(0);
  *v33 = 0;
  v33[1] = 0;
  swift_storeEnumTagMultiPayload();
  return (*(*(v36 - 8) + 56))(v32, 0, 1, v36);
}

uint64_t sub_100704654(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for Logger();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for AppInterfaceContext.Activity(0);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_10119DA70, &qword_100EC0AC0);
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[20] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[21] = v7;
  v3[22] = v6;

  return _swift_task_switch(sub_10070484C, v7, v6);
}

uint64_t sub_10070484C()
{
  v1 = v0[4];
  v2 = *(v1 + 16);
  v0[23] = v2;
  if (v2)
  {
    v3 = *(*(v1 + 24) + 16);
    if (v3)
    {

      v4 = [v3 selectedTab];
      if (!v4 || (v5 = v4, v6 = sub_10003F0FC(), v5, v6 == 7))
      {
        v6 = 1;
      }

      v7 = sub_1006BD694(v6);
      v0[24] = v7;
      if (v7)
      {
        v9 = v0[18];
        v8 = v0[19];
        v10 = v0[17];
        (*(v9 + 16))(v8, v0[6], v10);
        v11 = (*(v9 + 88))(v8, v10);
        if (v11 != enum case for MusicPageProvider.Destination.listenNow<A, B>(_:) && v11 != enum case for MusicPageProvider.Destination.radio<A, B>(_:))
        {
          (*(v0[18] + 8))(v0[19], v0[17]);
        }

        v15 = v0[5];
        v16 = MusicPageProvider.page(for:stackAuthority:motionCacheBucketID:)();
        v0[25] = v16;

        if (v15)
        {
          if (sub_10049CB78())
          {
            v17 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v16];

            v16 = v17;
            [v16 setPreferredContentSize:{static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(3u, 0, 0, 1, 0)}];
          }

          v0[28] = v16;
          v18 = v0[13];
          *v18 = v16;
          *(v18 + 8) = 1;
          *(v18 + 16) = &_swiftEmptySetSingleton;
          swift_storeEnumTagMultiPayload();
          v19 = v16;
          v20 = swift_task_alloc();
          v0[29] = v20;
          *v20 = v0;
          v20[1] = sub_100704EE8;
          v22 = v0[13];
          v21 = v0[14];
        }

        else
        {
          v23 = v0[15];
          v24 = v0[11];
          v25 = (v23 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
          v26 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
          *v23 = v16;
          v27 = type metadata accessor for UITraitOverrides();
          (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
          sub_10003D17C(v24, v23 + v26, &unk_10119F3A0, &qword_100EC7CD0);
          type metadata accessor for AppInterfaceContext.Activity.Destination(0);
          swift_storeEnumTagMultiPayload();
          *v25 = 0;
          v25[1] = 0;
          swift_storeEnumTagMultiPayload();
          v28 = v16;
          v29 = swift_task_alloc();
          v0[26] = v29;
          *v29 = v0;
          v29[1] = sub_100704C98;
          v22 = v0[15];
          v21 = v0[16];
        }

        return sub_100706024(v21, v22);
      }
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100704C98()
{
  v2 = *v1;
  v3 = (*v1)[15];
  (*v1)[27] = v0;

  sub_10070F180(v3, type metadata accessor for AppInterfaceContext.Activity);
  if (v0)
  {
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_100705138;
  }

  else
  {
    sub_10070F180(v2[16], type metadata accessor for AppInterfaceContext.Activity);
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_100704E00;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100704E00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100704EE8()
{
  v2 = *v1;
  v3 = (*v1)[13];
  (*v1)[30] = v0;

  sub_10070F180(v3, type metadata accessor for AppInterfaceContext.Activity);
  if (v0)
  {
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_1007053D0;
  }

  else
  {
    sub_10070F180(v2[14], type metadata accessor for AppInterfaceContext.Activity);
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_100705050;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100705050()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100705138()
{
  v23 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 216);
    v19 = *(v0 + 200);
    v8 = *(v0 + 64);
    v20 = *(v0 + 56);
    v21 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    *(v0 + 24) = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000105AC(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to navigate to destination view controller with error=%s", v9, 0xCu);
    sub_10000959C(v10);

    (*(v8 + 8))(v21, v20);
  }

  else
  {
    v14 = *(v0 + 80);
    v15 = *(v0 + 56);
    v16 = *(v0 + 64);

    (*(v16 + 8))(v14, v15);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1007053D0()
{
  v23 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v19 = *(v0 + 224);
    v8 = *(v0 + 64);
    v20 = *(v0 + 56);
    v21 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    *(v0 + 16) = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000105AC(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to present destination view controller with error=%s", v9, 0xCu);
    sub_10000959C(v10);

    (*(v8 + 8))(v21, v20);
  }

  else
  {
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 56);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100705668(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1 < 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else if (v2 < 0)
  {
    return 0;
  }

  sub_100009F78(0, &qword_101197A30, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

Swift::Int sub_1007056DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if (a4)
  {
    if (a4 == 1)
    {
      Hasher._combine(_:)(2uLL);
    }

    else
    {
      Hasher._combine(_:)(0);
      if (a2)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  return Hasher._finalize()();
}

void sub_1007057AC(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!v2)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 2;
LABEL_5:
    Hasher._combine(_:)(v3);
    return;
  }

  v4 = *(v1 + 8);
  Hasher._combine(_:)(0);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
}

Swift::Int sub_100705874(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 24);
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 == 1)
    {
      Hasher._combine(_:)(2uLL);
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v2)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  return Hasher._finalize()();
}

uint64_t sub_100705948(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v48 = a2;
  sub_10010FC20(&unk_1011841F0, &qword_100ECF040);
  __chkstk_darwin();
  v45 = &v44 - v6;
  v47 = type metadata accessor for AppInterfaceContext.Activity(0);
  v44 = *(v47 - 8);
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v44 - v9;
  __chkstk_darwin();
  v12 = &v44 - v11;
  __chkstk_darwin();
  v14 = &v44 - v13;
  sub_10010FC20(&qword_10119FD10, &unk_100EDF158);
  __chkstk_darwin();
  v16 = &v44 - v15;
  sub_1000089F8(a1, &v44 - v15, &qword_10119FD10, &unk_100EDF158);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10070F24C(v16, v14, type metadata accessor for AppInterfaceContext.Activity);
    if (qword_10117FC68 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000060E4(v32, qword_1012194A8);
    sub_10070F034(v14, v12, type metadata accessor for AppInterfaceContext.Activity);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v36;
      *v35 = 136446210;
      sub_10070F034(v12, v10, type metadata accessor for AppInterfaceContext.Activity);
      v37 = v47;
      v38 = String.init<A>(describing:)();
      v40 = v39;
      sub_10070F180(v12, type metadata accessor for AppInterfaceContext.Activity);
      v41 = sub_1000105AC(v38, v40, &v49);

      *(v35 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Successfully performed Activity=%{public}s", v35, 0xCu);
      sub_10000959C(v36);

      v42 = v48;
      if (!v48)
      {
        return sub_10070F180(v14, type metadata accessor for AppInterfaceContext.Activity);
      }
    }

    else
    {

      sub_10070F180(v12, type metadata accessor for AppInterfaceContext.Activity);
      v37 = v47;
      v42 = v48;
      if (!v48)
      {
        return sub_10070F180(v14, type metadata accessor for AppInterfaceContext.Activity);
      }
    }

    v43 = v45;
    sub_10070F034(v14, v45, type metadata accessor for AppInterfaceContext.Activity);
    (*(v44 + 56))(v43, 0, 1, v37);
    v42(v43);
    sub_1000095E8(v43, &unk_1011841F0, &qword_100ECF040);
    return sub_10070F180(v14, type metadata accessor for AppInterfaceContext.Activity);
  }

  if (qword_10117FC68 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000060E4(v17, qword_1012194A8);
  sub_10070F034(a4, v8, type metadata accessor for AppInterfaceContext.Activity);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v49 = v22;
    *v20 = 136446466;
    sub_10070F034(v8, v10, type metadata accessor for AppInterfaceContext.Activity);
    v23 = v47;
    v24 = String.init<A>(describing:)();
    v26 = v25;
    sub_10070F180(v8, type metadata accessor for AppInterfaceContext.Activity);
    v27 = sub_1000105AC(v24, v26, &v49);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v28;
    *v21 = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to perform Activity=%{public}s with error=%{public}@", v20, 0x16u);
    sub_1000095E8(v21, &unk_101183D70, &unk_100EC6540);

    sub_10000959C(v22);

    v29 = v48;
    if (v48)
    {
LABEL_6:
      v30 = v45;
      (*(v44 + 56))(v45, 1, 1, v23);
      v29(v30);

      return sub_1000095E8(v30, &unk_1011841F0, &qword_100ECF040);
    }
  }

  else
  {

    sub_10070F180(v8, type metadata accessor for AppInterfaceContext.Activity);
    v23 = v47;
    v29 = v48;
    if (v48)
    {
      goto LABEL_6;
    }
  }
}

uint64_t sub_100706024(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v3[13] = v4;
  v3[14] = *(v4 + 64);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for MainActor();
  v3[20] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[21] = v6;
  v3[22] = v5;

  return _swift_task_switch(sub_100706148, v6, v5);
}

uint64_t sub_100706148(uint64_t a1)
{
  v2 = static MainActor.shared.getter();
  *(v1 + 184) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return _swift_task_switch(sub_1007061DC, v3, v5);
}

uint64_t sub_1007061DC()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[11];
  v13 = v0 + 2;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1007063D0;
  v7 = swift_continuation_init();
  sub_10070F034(v6, v2, type metadata accessor for AppInterfaceContext.Activity);
  v8 = *(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  sub_10070F24C(v2, v9 + ((v8 + 24) & ~v8), type metadata accessor for AppInterfaceContext.Activity);
  sub_10070F034(v6, v3, type metadata accessor for AppInterfaceContext.Activity);
  sub_10070F034(v3, v4, type metadata accessor for AppInterfaceContext.Activity);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100710C78;
  *(v10 + 24) = v9;
  sub_10070F24C(v4, v10 + ((v8 + 32) & ~v8), type metadata accessor for AppInterfaceContext.Activity);

  sub_100706900(v3, sub_100711088, v10);

  sub_10070F180(v3, type metadata accessor for AppInterfaceContext.Activity);

  return _swift_continuation_await(v13, v11);
}

uint64_t sub_1007063D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 192) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_1007065D4;
  }

  else
  {
    v7 = v2[18];
    v8 = v2[10];

    sub_10070F24C(v7, v8, type metadata accessor for AppInterfaceContext.Activity);
    v4 = v2[21];
    v5 = v2[22];
    v6 = sub_100706540;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100706540()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007065D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100706668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_1011841F0, &qword_100ECF040);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v18 - v12;
  sub_1000089F8(a1, v7, &unk_1011841F0, &qword_100ECF040);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &unk_1011841F0, &qword_100ECF040);
    type metadata accessor for AppInterfaceContext.Error(0);
    sub_100710D0C();
    v14 = swift_allocError();
    sub_10070F034(a3, v15, type metadata accessor for AppInterfaceContext.Activity);
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    swift_allocError();
    *v16 = v14;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_10070F24C(v7, v13, type metadata accessor for AppInterfaceContext.Activity);
    sub_10070F034(v13, v11, type metadata accessor for AppInterfaceContext.Activity);
    sub_10070F24C(v11, *(*(a2 + 64) + 40), type metadata accessor for AppInterfaceContext.Activity);
    swift_continuation_throwingResume();
    return sub_10070F180(v13, type metadata accessor for AppInterfaceContext.Activity);
  }
}

uint64_t sub_100706900(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v172 = a3;
  v174 = a2;
  v175 = a1;
  v158 = type metadata accessor for Playlist.Folder.Item();
  v153 = *(v158 - 8);
  __chkstk_darwin();
  v157 = &v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v3;
  __chkstk_darwin();
  v167 = &v150 - v4;
  v156 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v151 = *(v156 - 8);
  __chkstk_darwin();
  v155 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v5;
  __chkstk_darwin();
  v166 = (&v150 - v6);
  v164 = type metadata accessor for PlaylistPicker.Mode(0);
  __chkstk_darwin();
  v165 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v163 = &v150 - v8;
  v161 = type metadata accessor for PlaylistPicker.Context(0);
  __chkstk_darwin();
  v162 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v171 = &v150 - v10;
  v160 = sub_10010FC20(&qword_10119FD10, &unk_100EDF158);
  __chkstk_darwin();
  v159 = &v150 - v11;
  type metadata accessor for PlaylistCreation.Context(0);
  __chkstk_darwin();
  v13 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(sub_10010FC20(&qword_10119FD30, &unk_100EDF1A0) - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v16 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v150 - v17;
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  __chkstk_darwin();
  v20 = (&v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v168 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  __chkstk_darwin();
  v169 = v21;
  v170 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = (&v150 - v22);
  sub_10070F034(v175, &v150 - v22, type metadata accessor for AppInterfaceContext.Activity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v108 = *v23;
      v175 = v23[1];
      v109 = sub_10010FC20(&unk_10118A290, &unk_100EC73D0);
      sub_10003D17C(v23 + *(v109 + 48), v18, &qword_10119FD30, &unk_100EDF1A0);
      *v20 = 4;
      swift_storeEnumTagMultiPayload();
      sub_1000089F8(v18, v16, &qword_10119FD30, &unk_100EDF1A0);
      v110 = (*(v14 + 80) + 40) & ~*(v14 + 80);
      v111 = swift_allocObject();
      v111[2] = v173;
      v111[3] = v108;
      v111[4] = v175;
      sub_10003D17C(v16, v111 + v110, &qword_10119FD30, &unk_100EDF1A0);
      v112 = (v111 + ((v15 + v110 + 7) & 0xFFFFFFFFFFFFFFF8));
      v113 = v174;
      v114 = v172;
      *v112 = v174;
      v112[1] = v114;

      sub_100030444(v113, v114);
      sub_10070BF44(v20, 0, 0, sub_10070FD00, v111);

      sub_10070F180(v20, type metadata accessor for AppInterfaceContext.Activity.Destination);
      return sub_1000095E8(v18, &qword_10119FD30, &unk_100EDF1A0);
    }

    v29 = (v23 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
    v30 = *v29;
    v31 = v29[1];
    sub_10070F24C(v23, v20, type metadata accessor for AppInterfaceContext.Activity.Destination);
    sub_10070BF44(v20, v30, v31, v174, v172);
    sub_100020438(v30, v31);
    v27 = type metadata accessor for AppInterfaceContext.Activity.Destination;
    v28 = v20;
    return sub_10070F180(v28, v27);
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_10070F24C(v23, v13, type metadata accessor for PlaylistCreation.Context);
      sub_10070E768(v13);
      v25 = v174;
      if (v174)
      {
        v26 = v159;
        sub_10070F034(v175, v159, type metadata accessor for AppInterfaceContext.Activity);
        swift_storeEnumTagMultiPayload();
        v25(v26);
        sub_1000095E8(v26, &qword_10119FD10, &unk_100EDF158);
      }

      v27 = type metadata accessor for PlaylistCreation.Context;
      v28 = v13;
    }

    else
    {
      v68 = v23;
      v69 = v171;
      sub_10070F24C(v68, v171, type metadata accessor for PlaylistPicker.Context);
      v70 = [objc_allocWithZone(UINavigationController) init];
      v71 = v162;
      sub_10070F034(v69, v162, type metadata accessor for PlaylistPicker.Context);
      v72 = (v69 + v161[5]);
      v73 = *v72;
      v74 = v72[1];
      v75 = v72[2];
      v76 = type metadata accessor for Playlist.Folder();
      v77 = v163;
      (*(*(v76 - 8) + 56))(v163, 1, 1, v76);
      v78 = objc_allocWithZone(type metadata accessor for PlaylistPicker.ViewController(0));
      sub_10047ABA0(v73, v74, v75);
      v79 = sub_10046773C(v71, v73, v74, v75, v77);
      v80 = *(v173 + 32);
      if (v80 >= 0)
      {
        v81 = *(v173 + 32);
      }

      else
      {
        v81 = (v80 & 0x7FFFFFFFFFFFFFFFLL);
      }

      memset(v182, 0, sizeof(v182));
      v183 = 0;
      v184 = xmmword_100EBCEF0;
      v82 = (v80 & 0x7FFFFFFFFFFFFFFFLL);
      PresentationSource.init(viewController:position:)(v81, v182, v181);
      sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v84 = v70;
      v144 = 0;
      v145 = 0;
      v147 = sub_10070F9E4;
      v148 = v83;
      v146 = 0;
      v185.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v185.is_nil = 0;
      isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v185, v186).super.super.isa;
      v163 = v79;
      v86 = [v79 navigationItem];
      v162 = isa;
      [v86 setLeftBarButtonItem:isa];

      v87 = v165;
      sub_10070F034(v69, v165, type metadata accessor for PlaylistPicker.Mode);
      v88 = swift_getEnumCaseMultiPayload();
      v161 = v84;
      if (v88 == 1)
      {
        v89 = v153;
        v166 = *(v153 + 32);
        v90 = v167;
        v91 = v158;
        v166(v167, v87, v158);
        v92 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v93 = v157;
        (*(v89 + 16))(v157, v90, v91);
        sub_10012B7A8(v181, v176);
        v94 = *(v89 + 80);
        v95 = (v94 + 24) & ~v94;
        v173 = v154 + 7;
        v96 = (v154 + 7 + v95) & 0xFFFFFFFFFFFFFFF8;
        v97 = swift_allocObject();
        *(v97 + 16) = v92;
        v98 = v166;
        v166((v97 + v95), v93, v91);
        sub_10012B828(v176, v97 + v96);
        v99 = &v163[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
        v100 = *&v163[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler];
        v101 = *&v163[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_moveToFolderHandler + 8];
        *v99 = sub_10070F9EC;
        v99[1] = v97;

        sub_100020438(v100, v101);

        v98(v93, v167, v91);
        sub_10012B7A8(v181, v176);
        v102 = (v94 + 16) & ~v94;
        v103 = (v173 + v102) & 0xFFFFFFFFFFFFFFF8;
        v104 = swift_allocObject();
        v98((v104 + v102), v93, v91);
        sub_10012B828(v176, v104 + v103);
        v105 = &v163[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler];
        v106 = *&v163[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler];
        v107 = *&v163[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newFolderHandler + 8];
        *v105 = sub_10070FA9C;
        v105[1] = v104;
        sub_100020438(v106, v107);
      }

      else
      {
        v116 = v151;
        v117 = *(v151 + 32);
        v118 = v166;
        v119 = v156;
        v117(v166, v87, v156);
        v120 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v121 = v155;
        (*(v116 + 16))(v155, v118, v119);
        sub_10012B7A8(v181, v176);
        v122 = *(v116 + 80);
        v123 = (v122 + 24) & ~v122;
        v167 = (v152 + 7);
        v124 = (v152 + 7 + v123) & 0xFFFFFFFFFFFFFFF8;
        v125 = swift_allocObject();
        *(v125 + 16) = v120;
        v117((v125 + v123), v121, v119);
        sub_10012B828(v176, v125 + v124);
        v126 = &v163[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
        v127 = *&v163[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler];
        v128 = *&v163[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_addToPlaylistHandler + 8];
        *v126 = sub_10070FB9C;
        v126[1] = v125;

        sub_100020438(v127, v128);

        v129 = swift_allocObject();
        swift_weakInit();
        v117(v121, v166, v119);
        v130 = (v122 + 16) & ~v122;
        v131 = &v167[v130] & 0xFFFFFFFFFFFFFFF8;
        v132 = swift_allocObject();
        v117((v132 + v130), v121, v119);
        *(v132 + v131) = v129;
        v133 = &v163[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler];
        v134 = *&v163[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler];
        v135 = *&v163[OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_newPlaylistHandler + 8];
        *v133 = sub_10070FC58;
        v133[1] = v132;

        sub_100020438(v134, v135);
      }

      v136 = v161;
      v137 = v163;
      [v161 pushViewController:v163 animated:0];
      v138 = v136;
      [v138 setModalPresentationStyle:2];
      [v138 setModalInPresentation:0];

      v139 = v170;
      sub_10070F034(v175, v170, type metadata accessor for AppInterfaceContext.Activity);
      v140 = (*(v168 + 80) + 32) & ~*(v168 + 80);
      v141 = swift_allocObject();
      v142 = v174;
      v143 = v172;
      *(v141 + 16) = v174;
      *(v141 + 24) = v143;
      sub_10070F24C(v139, v141 + v140, type metadata accessor for AppInterfaceContext.Activity);
      sub_100030444(v142, v143);
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v138, 1, 1, sub_10070FB38, v141);

      sub_10012BA6C(v181);
      v27 = type metadata accessor for PlaylistPicker.Context;
      v28 = v171;
    }

    return sub_10070F180(v28, v27);
  }

  v32 = *v23;
  LODWORD(v33) = *(v23 + 8);
  v34 = v23[2];
  v35 = *(v173 + 32);
  if (v35 >= 0)
  {
    v36 = *(v173 + 32);
  }

  else
  {
    v36 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
  }

  memset(v176, 0, sizeof(v176));
  v177 = 0;
  v178 = xmmword_100EBCEF0;
  v37 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
  PresentationSource.init(viewController:position:)(v36, v176, v181);
  v180 = 1;
  __chkstk_darwin();
  *(&v150 - 8) = v32;
  *(&v150 - 7) = v181;
  v144 = v34;
  v145 = &v180;
  LOBYTE(v146) = v33;
  v147 = v174;
  v148 = v172;
  v149 = v175;
  sub_100377268(sub_10070F9A8, (&v150 - 10), v34);

  if (v180 == 1)
  {
    if (qword_10117FC68 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000060E4(v38, qword_1012194A8);
    v39 = v32;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      LODWORD(v173) = v33;
      v33 = v43;
      v44 = swift_slowAlloc();
      v179[0] = v44;
      *v42 = 138543618;
      *(v42 + 4) = v39;
      *v33 = v39;
      *(v42 + 12) = 2082;
      v45 = v39;
      *&v182[0] = sub_10070AF04();
      *(&v182[0] + 1) = v46;
      sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
      v47 = String.init<A>(describing:)();
      v49 = sub_1000105AC(v47, v48, v179);

      *(v42 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "Presenting viewController=%{public}@\nidentified by %{public}s", v42, 0x16u);
      sub_1000095E8(v33, &unk_101183D70, &unk_100EC6540);
      LOBYTE(v33) = v173;

      sub_10000959C(v44);
    }

    v50 = v39;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v179[0] = v55;
      *v53 = 138543618;
      *(v53 + 4) = v50;
      *v54 = v50;
      *(v53 + 12) = 2082;
      v56 = v50;
      *&v182[0] = sub_10070AF04();
      *(&v182[0] + 1) = v57;
      sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
      v58 = String.init<A>(describing:)();
      v60 = sub_1000105AC(v58, v59, v179);

      *(v53 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "Presenting viewController=%{public}@\nidentified by %{public}s", v53, 0x16u);
      sub_1000095E8(v54, &unk_101183D70, &unk_100EC6540);

      sub_10000959C(v55);
    }

    v61 = v170;
    v62 = v168;
    sub_10070F034(v175, v170, type metadata accessor for AppInterfaceContext.Activity);
    v63 = (*(v62 + 80) + 40) & ~*(v62 + 80);
    v64 = swift_allocObject();
    v65 = v174;
    v64[2] = v50;
    v64[3] = v65;
    v66 = v172;
    v64[4] = v172;
    sub_10070F24C(v61, v64 + v63, type metadata accessor for AppInterfaceContext.Activity);
    sub_100030444(v65, v66);
    v67 = v50;
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v67, 1, v33, sub_10070F9E0, v64);
  }

  else
  {
  }

  return sub_10012BA6C(v181);
}

void sub_100707CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v17[1] = a5;
  sub_10010FC20(&qword_10119FD10, &unk_100EDF158);
  __chkstk_darwin();
  v10 = v17 - v9;
  sub_1000089F8(a1, v17 - v9, &qword_10119FD10, &unk_100EDF158);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1000095E8(v10, &qword_10119FD10, &unk_100EDF158);
  if (EnumCaseMultiPayload != 1)
  {
    if ((*(a2 + 32) & 0x8000000000000000) == 0)
    {
      v12 = sub_1006BDF60([*(a2 + 32) selectedIndex]);
      if (v12)
      {
        v13 = v12;
        v14 = [v12 viewControllers];
        sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
        v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v15 >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        v16 = type metadata accessor for NavigationController();
        v18.receiver = v13;
        v18.super_class = v16;
      }
    }

    if (*(a2 + 16))
    {

      MusicPageProvider.performSearch(for:in:)();
    }
  }

  if (a6)
  {
    a6(a1);
  }
}

void sub_100707E98(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong presentingViewController];

    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_100707F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = a5;
  v25 = a4;
  v24 = a2;
  v5 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = [Strong presentingViewController];

    if (v16)
    {
      (*(v11 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v10);
      (*(v6 + 16))(v9, v25, v5);
      sub_10012B7A8(v26, v28);
      v17 = *(v11 + 80);
      v26 = v16;
      v18 = (v17 + 16) & ~v17;
      v19 = (v12 + *(v6 + 80) + v18) & ~*(v6 + 80);
      v20 = swift_allocObject();
      (*(v11 + 32))(v20 + v18, v13, v10);
      (*(v6 + 32))(v20 + v19, v9, v5);
      sub_10012B828(v28, v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
      aBlock[4] = sub_10070FF0C;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010BC348;
      v21 = _Block_copy(aBlock);

      v22 = v26;
      [v26 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);
    }
  }
}

double sub_100708240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v4 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v22 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v22 - v7;
  v23 = &v22 - v7;
  v9 = type metadata accessor for Playlist();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v10 + 16))(v12, a1, v9);
  (*(v5 + 16))(v8, v24, v4);
  sub_10012B7A8(v25, v26);
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v5 + 80) + v17) & ~*(v5 + 80);
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = &protocol witness table for MainActor;
  (*(v10 + 32))(v20 + v17, v12, v9);
  (*(v5 + 32))(v20 + v18, v23, v22);
  sub_10012B828(v26, v20 + v19);
  sub_1001F4CB8(0, 0, v14, &unk_100EDF1D8, v20);

  return result;
}

uint64_t sub_100708538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(sub_100708630, v9, v8);
}

uint64_t sub_100708630()
{
  (*(v0[6] + 104))(v0[7], enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.checkForDuplicates(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100708704;
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];

  return Playlist.addTracks(_:duplicatePolicy:duplicateCount:presentationSource:presentNotice:mpModel:)(v4, v2, 0, 1, v3, 1, 0);
}

uint64_t sub_100708704()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_100708888, v6, v5);
}

uint64_t sub_100708888()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007088F0(char *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v5 = type metadata accessor for AppInterfaceContext.Activity(0);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v28 - v8;
  __chkstk_darwin();
  v11 = &v28 - v10;
  v12 = (type metadata accessor for PlaylistCreation.Context(0) - 8);
  __chkstk_darwin();
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
  swift_beginAccess();
  sub_1000089F8(&a1[v15], v14, &unk_10118F670, &unk_100EC89B0);
  v16 = v12[8];
  v17 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], v31, v17);
  (*(v18 + 56))(&v14[v16], 0, 1, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a3;
  v20 = &v14[v12[7]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v14[v12[9]];
  *v21 = sub_10070FDB4;
  v21[1] = v19;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10070F034(v14, v11, type metadata accessor for PlaylistCreation.Context);
    swift_storeEnumTagMultiPayload();
    sub_10070F034(v11, v9, type metadata accessor for AppInterfaceContext.Activity);
    v22 = v30;
    sub_10070F034(v9, v30, type metadata accessor for AppInterfaceContext.Activity);
    v23 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    sub_10070F24C(v22, v24 + v23, type metadata accessor for AppInterfaceContext.Activity);
    v25 = a1;

    sub_100706900(v9, sub_100711088, v24);

    sub_10070F180(v9, type metadata accessor for AppInterfaceContext.Activity);
    sub_10070F180(v11, type metadata accessor for AppInterfaceContext.Activity);
  }

  else
  {
    v26 = a1;
  }

  return sub_10070F180(v14, type metadata accessor for PlaylistCreation.Context);
}

uint64_t sub_100708CB0(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v6 = &v33 - v5;
  v42 = type metadata accessor for Playlist();
  v40 = *(v42 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v33 - v13;
  sub_10070F034(a1, &v33 - v13, type metadata accessor for PlaylistCreation.FlowResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_10070F180(v14, type metadata accessor for PlaylistCreation.FlowResult);
  if (EnumCaseMultiPayload != 2)
  {
    v17 = [a2 presentingViewController];
    if (v17)
    {
      v18 = v17;
      [v17 dismissViewControllerAnimated:1 completion:0];
    }

    sub_10070F034(a1, v12, type metadata accessor for PlaylistCreation.FlowResult);
    if (swift_getEnumCaseMultiPayload())
    {
      return sub_10070F180(v12, type metadata accessor for PlaylistCreation.FlowResult);
    }

    else
    {
      v19 = sub_10010FC20(&unk_10118A3A0, &qword_100EDF1B0);
      v20 = *&v12[*(v19 + 48)];
      v38 = *&v12[*(v19 + 64)];
      v39 = v20;
      v21 = v6;
      v35 = v6;
      v22 = v40;
      v23 = *(v40 + 32);
      v36 = v40 + 32;
      v37 = v23;
      v24 = v42;
      v23(v10, v12, v42);
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
      (*(v22 + 16))(v8, v10, v24);
      type metadata accessor for MainActor();
      v34 = v39;
      v26 = a2;
      v27 = v41;

      v28 = static MainActor.shared.getter();
      v29 = (*(v22 + 80) + 48) & ~*(v22 + 80);
      v30 = (v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      *(v31 + 2) = v28;
      *(v31 + 3) = &protocol witness table for MainActor;
      *(v31 + 4) = v39;
      *(v31 + 5) = v26;
      v32 = v42;
      v37(&v31[v29], v8, v42);
      *&v31[v30] = v38;
      *&v31[(v30 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;
      sub_1001F4CB8(0, 0, v35, &unk_100EDF1C0, v31);

      return (*(v22 + 8))(v10, v32);
    }
  }

  return result;
}

uint64_t sub_1007090E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = type metadata accessor for Playlist();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v8[12] = *(v10 + 64);
  v8[13] = swift_task_alloc();
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  v8[14] = swift_task_alloc();
  v8[15] = type metadata accessor for Notice.Variant(0);
  v8[16] = swift_task_alloc();
  v8[17] = type metadata accessor for Notice(0);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[23] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007092E0, v12, v11);
}

uint64_t sub_1007092E0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 40);

  v3 = type metadata accessor for Artwork();
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v5(v1, 1, 1, v3);
  if (v2)
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    v8 = *(v0 + 40);
    [objc_allocWithZone(MPArtworkCatalog) initWithToken:v8 dataSource:*PlaylistCovers.ArtworkDataSource.shared.unsafeMutableAddressor()];
    Artwork.init(_:)();

    sub_1000095E8(v7, &unk_101188920, &qword_100EBCC50);
    v5(v6, 0, 1, v3);
    sub_10003D17C(v6, v7, &unk_101188920, &qword_100EBCC50);
  }

  v9 = [*(v0 + 48) presentingViewController];
  if (v9 && (v10 = v9, v11 = UIViewController.noticePresenter.getter(), v10, v11))
  {
    v43 = v5;
    v45 = v11;
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);
    v14 = *(v0 + 128);
    v42 = sub_10010FC20(&unk_10118C0C0, &qword_100EC7A78);
    v15 = *(v42 + 48);
    *v14 = Playlist.name.getter();
    v14[1] = v16;
    sub_1000089F8(v12, v13, &unk_101188920, &qword_100EBCC50);
    v17 = *(v4 + 48);
    if (v17(v13, 1, v3) == 1)
    {
      v40 = v17;
      v18 = *(v0 + 112);
      Playlist.artworkViewModel.getter(v18);
      v19 = type metadata accessor for ArtworkImage.ViewModel(0);
      v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
      v21 = *(v0 + 112);
      if (v20 == 1)
      {
        sub_1000095E8(*(v0 + 112), &unk_10118A5E0, &unk_100EBCD90);
        v22 = 1;
      }

      else
      {
        (*(v4 + 16))(v14 + v15, *(v0 + 112), v3);
        sub_10070F180(v21, type metadata accessor for ArtworkImage.ViewModel);
        v22 = 0;
      }

      v23 = *(v0 + 160);
      v43(v14 + v15, v22, 1, v3);
      if (v40(v23, 1, v3) != 1)
      {
        sub_1000095E8(*(v0 + 160), &unk_101188920, &qword_100EBCC50);
      }
    }

    else
    {
      (*(v4 + 32))(v14 + v15, *(v0 + 160), v3);
      v43(v14 + v15, 0, 1, v3);
    }

    v44 = *(v0 + 176);
    v24 = *(v0 + 144);
    v25 = *(v0 + 152);
    v26 = *(v0 + 128);
    v41 = *(v0 + 136);
    v27 = *(v0 + 96);
    v28 = *(v0 + 104);
    v30 = *(v0 + 80);
    v29 = *(v0 + 88);
    v31 = *(v0 + 56);
    *(v26 + *(v42 + 64)) = *(v0 + 64);
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v26, v24);
    sub_10070F180(v26, type metadata accessor for Notice.Variant);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    (*(v29 + 16))(v28, v31, v30);
    v33 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v34 = (v27 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    (*(v29 + 32))(v35 + v33, v28, v30);
    v36 = (v35 + v34);
    *v36 = 0;
    v36[1] = 0;
    *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = Strong;
    sub_10070F24C(v24, v25, type metadata accessor for Notice);
    v37 = (v25 + *(v41 + 32));
    sub_100020438(*v37, v37[1]);
    *v37 = sub_10035AE54;
    v37[1] = v35;
    (*(*v45 + 200))(v25, 0);

    sub_1000095E8(v44, &unk_101188920, &qword_100EBCC50);
    sub_10070F180(v25, type metadata accessor for Notice);
  }

  else
  {
    sub_1000095E8(*(v0 + 176), &unk_101188920, &qword_100EBCC50);
  }

  v38 = *(v0 + 8);

  return v38();
}

void sub_10070987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v22 = *(sub_10010FC20(&unk_10118F670, &unk_100EC89B0) - 8);
  v7 = *(v22 + 64);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = type metadata accessor for Playlist.Folder.Item();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = [Strong presentingViewController];

    if (v16)
    {
      (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
      sub_1000089F8(a2, v9, &unk_10118F670, &unk_100EC89B0);
      sub_10012B7A8(v23, v25);
      v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v18 = (v12 + *(v22 + 80) + v17) & ~*(v22 + 80);
      v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      (*(v11 + 32))(v20 + v17, v13, v10);
      sub_10003D17C(v9, v20 + v18, &unk_10118F670, &unk_100EC89B0);
      sub_10012B828(v25, v20 + v19);
      aBlock[4] = sub_100710428;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010BC438;
      v21 = _Block_copy(aBlock);

      [v16 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);
    }
  }
}

double sub_100709B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *(sub_10010FC20(&unk_10118F670, &unk_100EC89B0) - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin();
  v8 = &v21 - v7;
  v9 = type metadata accessor for Playlist.Folder.Item();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v14 = &v21 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v10 + 16))(v12, a1, v9);
  sub_1000089F8(a2, v8, &unk_10118F670, &unk_100EC89B0);
  sub_10012B7A8(a3, v23);
  type metadata accessor for MainActor();
  v16 = static MainActor.shared.getter();
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v22 + 80) + v17) & ~*(v22 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = &protocol witness table for MainActor;
  (*(v10 + 32))(v19 + v17, v12, v9);
  sub_10003D17C(v8, v19 + v18, &unk_10118F670, &unk_100EC89B0);
  sub_10012B828(v23, v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1001F5D9C(0, 0, v14, &unk_100EDF230, v19);

  return result;
}

uint64_t sub_100709E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[14] = a1;
  v6[15] = a4;
  type metadata accessor for MainActor();
  v6[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[19] = v8;
  v6[20] = v7;

  return _swift_task_switch(sub_100709F08, v8, v7);
}

uint64_t sub_100709F08()
{
  sub_10012B7A8(v0[17], (v0 + 2));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_100709FAC;
  v2 = v0[16];

  return sub_1003566B8(v2, (v0 + 2));
}

uint64_t sub_100709FAC(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 176) = a1;

  sub_1000095E8(v3 + 16, &unk_1011845E0, &unk_100EBF3A0);
  v4 = *(v2 + 160);
  v5 = *(v2 + 152);

  return _swift_task_switch(sub_10070A0F4, v5, v4);
}

uint64_t sub_10070A0F4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 112);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

double sub_10070A160(char *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v34 = &v29 - v4;
  v5 = type metadata accessor for Playlist.Folder.Item();
  v6 = *(v5 - 8);
  v30 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v10 = &v29 - v9;
  v31 = &v29 - v9;
  v11 = OBJC_IVAR____TtCO5Music14PlaylistPicker14ViewController_folder;
  v29 = a1;
  swift_beginAccess();
  sub_1000089F8(&a1[v11], v10, &unk_10118F670, &unk_100EC89B0);
  sub_10010FC20(&qword_1011920C0, &qword_100EDF1E0);
  v12 = *(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  v14 = *(v6 + 16);
  v15 = v32;
  v14(v13 + ((v12 + 32) & ~v12), v32, v5);
  v16 = v33;
  sub_10012B7A8(v33, v36);
  v14(v8, v15, v5);
  sub_10012B7A8(v16, v35);
  v17 = (v12 + 24) & ~v12;
  v18 = (v30 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v29;
  *(v19 + 16) = v29;
  (*(v6 + 32))(v19 + v17, v8, v5);
  sub_10012B828(v35, v19 + v18);
  type metadata accessor for MusicLibrary();
  v21 = v20;
  v22 = static MusicLibrary.shared.getter();
  Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(v31, v13, v22, v36, &unk_100EDF1F0, v19, v37);
  v23 = type metadata accessor for TaskPriority();
  v24 = v34;
  (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
  type metadata accessor for MainActor();

  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = &protocol witness table for MainActor;
  v27 = v37[1];
  *(v26 + 32) = v37[0];
  *(v26 + 48) = v27;
  *(v26 + 64) = v37[2];
  sub_10086E3AC(0, 0, v24, &unk_100EDF200, v26);

  return result;
}

uint64_t sub_10070A550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = type metadata accessor for Playlist.Folder.Item();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v4[20] = *(v6 + 64);
  v4[21] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v4[22] = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Folder();
  v4[23] = v7;
  v8 = *(v7 - 8);
  v4[24] = v8;
  v4[25] = *(v8 + 64);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  type metadata accessor for Actions.CreateFolder.Context.FlowResult(0);
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for MainActor();
  v4[30] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10070A728, v10, v9);
}

uint64_t sub_10070A728()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[14];

  sub_10070F034(v4, v1, type metadata accessor for Actions.CreateFolder.Context.FlowResult);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v5 = v0[26];
    v6 = v0[27];
    v7 = v0[24];
    v8 = v0[22];
    v9 = v0[23];
    v30 = v8;
    v10 = v0[21];
    v27 = v10;
    v28 = v0[20];
    v29 = v0[25];
    v12 = v0[18];
    v11 = v0[19];
    v25 = v5;
    v26 = v12;
    v21 = v0[16];
    v22 = v0[17];
    v23 = v0[15];
    v31 = *(v7 + 32);
    v24 = v9;
    v31(v6, v0[28], v9);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    (*(v11 + 16))(v10, v21, v12);
    (*(v7 + 16))(v5, v6, v9);
    sub_10012B7A8(v22, (v0 + 2));
    v14 = v23;
    v15 = static MainActor.shared.getter();
    v16 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v17 = (v28 + *(v7 + 80) + v16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = v15;
    *(v18 + 3) = &protocol witness table for MainActor;
    *(v18 + 4) = v14;
    (*(v11 + 32))(&v18[v16], v27, v26);
    v31(&v18[v17], v25, v24);
    sub_10012B828((v0 + 2), &v18[(v29 + v17 + 7) & 0xFFFFFFFFFFFFFFF8]);
    sub_1001F4CB8(0, 0, v30, &unk_100EDF218, v18);

    (*(v7 + 8))(v6, v24);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_10070AA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  v7[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[20] = v9;
  v7[21] = v8;

  return _swift_task_switch(sub_10070AAE0, v9, v8);
}

uint64_t sub_10070AAE0()
{
  v1 = [*(v0 + 112) presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = type metadata accessor for Playlist.Folder();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, v5, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  sub_10012B7A8(v3, v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_10070AC4C;
  v9 = *(v0 + 144);

  return sub_1003566B8(v9, v0 + 16);
}

uint64_t sub_10070AC4C()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  sub_1000095E8(v1 + 16, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v2, &unk_10118F670, &unk_100EC89B0);
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return _swift_task_switch(sub_10070ADB4, v4, v3);
}

uint64_t sub_10070ADB4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10070AE1C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_10119FD10, &unk_100EDF158);
  __chkstk_darwin();
  v6 = &v7 - v5;
  if (a1)
  {
    sub_10070F034(a3, &v7 - v5, type metadata accessor for AppInterfaceContext.Activity);
    swift_storeEnumTagMultiPayload();
    a1(v6);
    sub_1000095E8(v6, &qword_10119FD10, &unk_100EDF158);
  }
}

uint64_t sub_10070AF04()
{
  if (qword_10117FC60 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_10119FB38))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000095E8(v5, &unk_101183F30, qword_100EBF960);
    return 0;
  }
}

void sub_10070AFFC(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&qword_10119FD10, &unk_100EDF158);
  __chkstk_darwin();
  v8 = &v25 - v7;
  if (qword_10117FC68 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000060E4(v9, qword_1012194A8);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25 = v15;
    v26 = swift_slowAlloc();
    v30 = v26;
    *v14 = 138543874;
    *(v14 + 4) = v10;
    *v15 = v10;
    *(v14 + 12) = 2082;
    v16 = v10;
    v28 = sub_10070AF04();
    v29 = v17;
    sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
    v18 = String.init<A>(describing:)();
    v20 = a2;
    v21 = sub_1000105AC(v18, v19, &v30);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2082;
    v28 = [v16 presentingViewController];
    sub_10010FC20(&qword_101190248, &qword_100ECCD60);
    v22 = String.init<A>(describing:)();
    v24 = sub_1000105AC(v22, v23, &v30);
    a2 = v20;

    *(v14 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "Presented viewController=%{public}@\nidentified by %{public}s\npresented by %{public}s", v14, 0x20u);
    sub_1000095E8(v25, &unk_101183D70, &unk_100EC6540);

    swift_arrayDestroy();

    a4 = v27;
  }

  if (a2)
  {
    sub_10070F034(a4, v8, type metadata accessor for AppInterfaceContext.Activity);
    swift_storeEnumTagMultiPayload();
    a2(v8);
    sub_1000095E8(v8, &qword_10119FD10, &unk_100EDF158);
  }
}

void sub_10070B328(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v95 = a7;
  v94 = a6;
  v99 = a5;
  v15 = *(*(type metadata accessor for AppInterfaceContext.Activity(0) - 8) + 64);
  __chkstk_darwin();
  v17 = a1[3];
  if (v17 < 2)
  {
    return;
  }

  v91 = v16;
  v92 = a8;
  v93 = v9;
  v19 = *a1;
  v18 = a1[1];
  v20 = a1[2];
  v97 = 0;
  v98 = 0xE000000000000000;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    swift_getObjectType();
    v19 = _typeName(_:qualified:)();
    v21 = v22;
  }

  v23._countAndFlagsBits = v19;
  v23._object = v21;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 46;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);

  v25._countAndFlagsBits = v20;
  v25._object = v17;
  String.append(_:)(v25);

  v26 = v97;
  v27 = v98;
  if (qword_10117FC60 != -1)
  {
    swift_once();
  }

  v28 = qword_10119FB38;
  v29 = String._bridgeToObjectiveC()();
  objc_setAssociatedObject(a2, v28, v29, 3);

  PresentationSource.windowScene.getter();
  if (!v30)
  {
    goto LABEL_28;
  }

  v31 = v30;
  v32 = static PresentationSource.topmostPresentedViewController(in:options:)(v30, 0);
  if (!v32)
  {

    goto LABEL_28;
  }

  v90 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a3;
  v34 = v32;
  v35 = sub_10070AF04();
  if (!v36)
  {

    return;
  }

  v88 = v34;
  v89 = v31;
  if (v35 != v26 || v36 != v27)
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v37 = v33;
    if (v38)
    {
      goto LABEL_16;
    }

LABEL_28:

    return;
  }

  v37 = v33;
LABEL_16:
  v39 = v90;
  if (*(a4 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(1uLL), v40 = Hasher._finalize()(), v41 = -1 << *(a4 + 32), v42 = v40 & ~v41, ((*(a4 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
  {
    v43 = ~v41;
    while (*(*(a4 + 48) + 32 * v42 + 24))
    {
      v42 = (v42 + 1) & v43;
      if (((*(a4 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v83 = v26;
    v86 = a9;
    if (qword_10117FC68 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1000060E4(v57, qword_1012194A8);
    v58 = v88;
    v59 = v88;

    v60 = a2;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    v87 = v59;

    v84 = v62;
    v85 = v61;
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = v60;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v97 = v66;
      *v63 = 138543874;
      v67 = v87;
      *(v63 + 4) = v87;
      *v65 = v58;
      *(v63 + 12) = 2082;
      v68 = v67;
      v69 = sub_1000105AC(v83, v27, &v97);

      *(v63 + 14) = v69;
      *(v63 + 22) = 2114;
      *(v63 + 24) = v64;
      v65[1] = v64;
      v70 = v64;
      v71 = v85;
      _os_log_impl(&_mh_execute_header, v85, v84, "Dismissing viewController=%{public}@\nidentified by %{public}s,\nin favor of %{public}@", v63, 0x20u);
      sub_10010FC20(&unk_101183D70, &unk_100EC6540);
      swift_arrayDestroy();
      v60 = v64;
      v39 = v90;

      sub_10000959C(v66);
    }

    else
    {
    }

    v72 = v94;
    *v99 = 0;
    sub_10012B7A8(v37, &v97);
    sub_10070F034(v86, v39, type metadata accessor for AppInterfaceContext.Activity);
    v73 = (*(v91 + 80) + 144) & ~*(v91 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = v60;
    sub_10012B828(&v97, v74 + 24);
    v75 = v72 & 1;
    *(v74 + 120) = v75;
    v76 = v95;
    v77 = v39;
    v78 = v60;
    v79 = v92;
    *(v74 + 128) = v95;
    *(v74 + 136) = v79;
    sub_10070F24C(v77, v74 + v73, type metadata accessor for AppInterfaceContext.Activity);
    aBlock[4] = sub_10071071C;
    aBlock[5] = v74;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BC4B0;
    v80 = _Block_copy(aBlock);
    v81 = v78;
    sub_100030444(v76, v79);

    v82 = v87;
    [v87 dismissViewControllerAnimated:v75 completion:v80];

    _Block_release(v80);
  }

  else
  {
LABEL_21:
    *v99 = 0;
    if (qword_10117FC68 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000060E4(v44, qword_1012194A8);
    v45 = v88;
    v46 = v88;

    v47 = a2;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v97 = v99;
      *v50 = 138543874;
      *(v50 + 4) = v47;
      *v51 = v47;
      *(v50 + 12) = 2082;
      v52 = v47;
      v53 = sub_1000105AC(v26, v27, &v97);
      v54 = v45;
      v55 = v53;

      *(v50 + 14) = v55;
      *(v50 + 22) = 2114;
      *(v50 + 24) = v46;
      v51[1] = v54;
      v56 = v46;
      _os_log_impl(&_mh_execute_header, v48, v49, "Attempted to present a viewController=%{public}@\nidentified by %{public}s,\nbut a similar viewController is already presented %{public}@", v50, 0x20u);
      sub_10010FC20(&unk_101183D70, &unk_100EC6540);
      swift_arrayDestroy();

      sub_10000959C(v99);
    }

    else
    {
    }
  }
}

double sub_10070BBF4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(v9) = a3;
  v39 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  __chkstk_darwin();
  v40 = v12;
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117FC68 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000060E4(v14, qword_1012194A8);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v38 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v37 = v9;
    v21 = v20;
    v35 = v20;
    v36 = swift_slowAlloc();
    v43 = v36;
    *v19 = 138543618;
    *(v19 + 4) = v15;
    *v21 = v15;
    *(v19 + 12) = 2082;
    v22 = v15;
    v41 = sub_10070AF04();
    v42 = v23;
    sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
    v24 = String.init<A>(describing:)();
    v9 = v13;
    v26 = a6;
    v27 = a4;
    v28 = a5;
    v29 = sub_1000105AC(v24, v25, &v43);

    *(v19 + 14) = v29;
    a5 = v28;
    a4 = v27;
    a6 = v26;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v16, v17, "Presenting viewController=%{public}@\nidentified by %{public}s", v19, 0x16u);
    sub_1000095E8(v35, &unk_101183D70, &unk_100EC6540);
    LOBYTE(v9) = v37;

    sub_10000959C(v36);
  }

  sub_10070F034(a6, v13, type metadata accessor for AppInterfaceContext.Activity);
  v30 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v31 = swift_allocObject();
  v31[2] = v15;
  v31[3] = a4;
  v31[4] = a5;
  sub_10070F24C(v13, v31 + v30, type metadata accessor for AppInterfaceContext.Activity);
  v32 = v15;
  sub_100030444(a4, a5);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v32, 1, v9 & 1, sub_100711070, v31);

  return result;
}

uint64_t sub_10070BF44(void (*a1)(uint64_t, char *, unint64_t), uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v194 = a5;
  v195 = a4;
  v180 = a3;
  v179 = a2;
  v198 = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v183 = &v177 - v6;
  v190 = type metadata accessor for Artist();
  v186 = *(v190 - 8);
  __chkstk_darwin();
  v187 = &v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v7;
  __chkstk_darwin();
  v185 = &v177 - v8;
  v177 = *(sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0) - 8);
  v9 = *(v177 + 64);
  __chkstk_darwin();
  v178 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v184 = &v177 - v10;
  v188 = sub_10010FC20(&qword_10119FD10, &unk_100EDF158);
  __chkstk_darwin();
  v189 = &v177 - v11;
  v192 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  __chkstk_darwin();
  v181 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v177 - v13;
  __chkstk_darwin();
  v16 = (&v177 - v15);
  __chkstk_darwin();
  v18 = &v177 - v17;
  __chkstk_darwin();
  v20 = &v177 - v19;
  __chkstk_darwin();
  v22 = &v177 - v21;
  v193 = v23;
  __chkstk_darwin();
  v196 = (&v177 - v24);
  sub_10010FC20(&qword_10119FD18, &unk_100EDF170);
  __chkstk_darwin();
  v26 = &v177 - v25;
  v191 = v5;
  v27 = *(v5 + 32);
  v29 = *(v28 + 56);
  sub_10070F034(v198, &v177 - v25, type metadata accessor for AppInterfaceContext.Activity.Destination);
  *&v26[v29] = v27;
  v197 = v26;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_10070F034(v197, v20, type metadata accessor for AppInterfaceContext.Activity.Destination);
        if ((v27 & 0x8000000000000000) == 0)
        {
          v31 = *v20;
          v32 = Library.Menu.Identifier.rawValue.getter(v31);
          v34 = v33;
          aBlock = 0xD000000000000014;
          v200 = 0x8000000100E3E560;
          v35 = v27;
          v36._countAndFlagsBits = v32;
          v36._object = v34;
          String.append(_:)(v36);

          v37 = String._bridgeToObjectiveC()();

          v38 = [v35 tabForIdentifier:v37];

          if (v38)
          {
            [v35 setSelectedTab:v38];

            v39 = v195;
            goto LABEL_71;
          }

          v141 = type metadata accessor for TabBarController(0);
          v205.receiver = v35;
          v205.super_class = v141;
          v142 = objc_msgSendSuper2(&v205, "tabs");
          sub_100009F78(0, &qword_101181F70, UITab_ptr);
          v143 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v188 = v35;
          if (v143 >> 62)
          {
LABEL_68:
            v144 = _CocoaArrayWrapper.endIndex.getter();
            if (v144)
            {
LABEL_39:
              v145 = 0;
              v189 = (v143 & 0xFFFFFFFFFFFFFF8);
              v190 = v143 & 0xC000000000000001;
              while (1)
              {
                if (v190)
                {
                  v146 = sub_1007E914C(v145, v143);
                }

                else
                {
                  if (v145 >= *(v189 + 2))
                  {
                    goto LABEL_67;
                  }

                  v146 = *(v143 + 8 * v145 + 32);
                }

                v147 = v146;
                v148 = v145 + 1;
                if (__OFADD__(v145, 1))
                {
                  __break(1u);
LABEL_67:
                  __break(1u);
                  goto LABEL_68;
                }

                v149 = [v146 identifier];
                v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v152 = v151;

                if (v150 == 0xD00000000000001BLL && 0x8000000100E55B80 == v152)
                {
                  break;
                }

                v154 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v154)
                {
                  goto LABEL_62;
                }

                ++v145;
                if (v148 == v144)
                {
                  goto LABEL_69;
                }
              }

LABEL_62:

              objc_opt_self();
              v162 = swift_dynamicCastObjCClass();
              v39 = v195;
              v35 = v188;
              if (!v162 || (v163 = v147, v164 = sub_1002D2600(), v163, !v164))
              {
                v164 = v147;
              }

              [v35 setSelectedTab:v164];

              goto LABEL_70;
            }
          }

          else
          {
            v144 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v144)
            {
              goto LABEL_39;
            }
          }

LABEL_69:

          v39 = v195;
          v35 = v188;
LABEL_70:
          sub_10070D9C8(v35, v31, v191);
LABEL_71:
          v165 = sub_1006BDF60([v35 selectedIndex]);
          if (v165)
          {
            v166 = v165;
            v167 = [v165 transitionCoordinator];

            if (v167)
            {
              v168 = v196;
              sub_10070F034(v198, v196, type metadata accessor for AppInterfaceContext.Activity.Destination);
              v169 = (*(v192 + 80) + 40) & ~*(v192 + 80);
              v170 = swift_allocObject();
              v170[2] = v191;
              v170[3] = v39;
              v171 = v194;
              v170[4] = v194;
              sub_10070F24C(v168, v170 + v169, type metadata accessor for AppInterfaceContext.Activity.Destination);
              v203 = sub_10070F860;
              v204 = v170;
              aBlock = _NSConcreteStackBlock;
              v200 = 1107296256;
              v201 = sub_1007E9F28;
              v202 = &unk_1010BC028;
              v172 = _Block_copy(&aBlock);
              sub_100030444(v39, v171);

              [v167 animateAlongsideTransition:0 completion:v172];
              _Block_release(v172);

              goto LABEL_74;
            }
          }

          v173 = v196;
          sub_10070F034(v198, v196, type metadata accessor for AppInterfaceContext.Activity.Destination);
          v174 = (*(v192 + 80) + 32) & ~*(v192 + 80);
          v175 = swift_allocObject();
          v176 = v194;
          *(v175 + 16) = v39;
          *(v175 + 24) = v176;
          sub_10070F24C(v173, v175 + v174, type metadata accessor for AppInterfaceContext.Activity.Destination);
          sub_100030444(v39, v176);
          sub_10070D5C8(sub_10071106C, v175, v191);

LABEL_76:

          return sub_10070F180(v197, type metadata accessor for AppInterfaceContext.Activity.Destination);
        }
      }

      else
      {
        sub_10070F034(v197, v18, type metadata accessor for AppInterfaceContext.Activity.Destination);
        if ((v27 & 0x8000000000000000) == 0)
        {
          v91 = v27;
          v92 = *v18;
          v93 = v196;
          sub_10070F034(v198, v196, type metadata accessor for AppInterfaceContext.Activity.Destination);
          v94 = (*(v192 + 80) + 40) & ~*(v192 + 80);
          v95 = swift_allocObject();
          *(v95 + 16) = v92;
          v96 = v194;
          v97 = v195;
          *(v95 + 24) = v195;
          *(v95 + 32) = v96;
          sub_10070F24C(v93, v95 + v94, type metadata accessor for AppInterfaceContext.Activity.Destination);
          v98 = v91;
          sub_100030444(v97, v96);
          sub_1006BC5FC(sub_10070F640, v95);

          goto LABEL_76;
        }
      }
    }

    else
    {
      sub_10070F034(v197, v22, type metadata accessor for AppInterfaceContext.Activity.Destination);
      if ((v27 & 0x8000000000000000) == 0)
      {
        v61 = *v22;
        v62 = v22[1];
        v63 = v27;
        v64 = [v63 selectedTab];
        if (v64 && (v65 = v64, v66 = sub_10003F0FC(), v65, v66 != 7))
        {
          v159 = sub_10001777C(v66, v61);
          sub_1006BB464(v61);
          if ((v62 & v159) == 1)
          {
            v160 = sub_1006BDF60([v63 selectedIndex]);
            if (v160)
            {
              v161 = v160;
            }
          }
        }

        else
        {
          sub_1006BB464(v61);
        }

        v67 = v196;
        sub_10070F034(v198, v196, type metadata accessor for AppInterfaceContext.Activity.Destination);
        v68 = (*(v192 + 80) + 32) & ~*(v192 + 80);
        v69 = swift_allocObject();
        v70 = v194;
        v71 = v195;
        *(v69 + 16) = v195;
        *(v69 + 24) = v70;
        sub_10070F24C(v67, v69 + v68, type metadata accessor for AppInterfaceContext.Activity.Destination);
        sub_100030444(v71, v70);
        sub_10070D5C8(sub_10071106C, v69, v191);

        goto LABEL_76;
      }
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v72 = v27;
    sub_10070F034(v197, v14, type metadata accessor for AppInterfaceContext.Activity.Destination);
    v73 = v14[*(sub_10010FC20(&qword_101181A10, &qword_100EBD420) + 48)];
    v74 = v186;
    v75 = *(v186 + 32);
    v76 = v185;
    v77 = v14;
    v78 = v190;
    v75(v185, v77, v190);
    if (v73)
    {
      v79 = v187;
      (*(v74 + 16))(v187, v76, v78);
      v80 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
      v189 = (v72 & 0x7FFFFFFFFFFFFFFFLL);
      v81 = sub_1001FAE8C(v79, 0);
      v82 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
      v83 = v196;
      *v196 = v81;
      v84 = type metadata accessor for UITraitOverrides();
      (*(*(v84 - 8) + 56))(v83 + v82, 1, 1, v84);
      swift_storeEnumTagMultiPayload();
      v85 = v181;
      sub_10070F034(v198, v181, type metadata accessor for AppInterfaceContext.Activity.Destination);
      v86 = (*(v192 + 80) + 32) & ~*(v192 + 80);
      v87 = swift_allocObject();
      v88 = v194;
      v89 = v195;
      *(v87 + 16) = v195;
      *(v87 + 24) = v88;
      sub_10070F24C(v85, v87 + v86, type metadata accessor for AppInterfaceContext.Activity.Destination);
      sub_100030444(v89, v88);
      v90 = v81;
      sub_10070BF44(v83, 0, 0, sub_10070F2B4, v87);

      sub_10070F180(v83, type metadata accessor for AppInterfaceContext.Activity.Destination);
    }

    else
    {
      v123 = type metadata accessor for TaskPriority();
      (*(*(v123 - 8) + 56))(v183, 1, 1, v123);
      v124 = v74 + 16;
      (*(v74 + 16))(v187, v76, v78);
      sub_10070F034(v198, v196, type metadata accessor for AppInterfaceContext.Activity.Destination);
      type metadata accessor for MainActor();
      v198 = v75;
      v189 = (v72 & 0x7FFFFFFFFFFFFFFFLL);
      v125 = v194;
      v126 = v195;
      sub_100030444(v195, v194);
      v127 = v191;

      v128 = static MainActor.shared.getter();
      v129 = (*(v124 + 64) + 32) & ~*(v124 + 64);
      v130 = (v182 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
      v131 = (v130 + 15) & 0xFFFFFFFFFFFFFFF8;
      v132 = (*(v192 + 80) + v131 + 16) & ~*(v192 + 80);
      v133 = swift_allocObject();
      *(v133 + 16) = v128;
      *(v133 + 24) = &protocol witness table for MainActor;
      v198(v133 + v129, v187, v190);
      *(v133 + v130) = v127;
      v74 = v186;
      v134 = (v133 + v131);
      *v134 = v126;
      v134[1] = v125;
      v76 = v185;
      v78 = v190;
      sub_10070F24C(v196, v133 + v132, type metadata accessor for AppInterfaceContext.Activity.Destination);
      sub_1001F4CB8(0, 0, v183, &unk_100EDF188, v133);
    }

    (*(v74 + 8))(v76, v78);

    return sub_10070F180(v197, type metadata accessor for AppInterfaceContext.Activity.Destination);
  }

  if (EnumCaseMultiPayload == 4)
  {
    sub_10070F034(v197, v16, type metadata accessor for AppInterfaceContext.Activity.Destination);
    v40 = *v16;
    v41 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
    if ((v27 & 0x8000000000000000) != 0)
    {
      v110 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
      sub_1000095E8(v16 + v41, &unk_10119F3A0, &qword_100EC7CD0);

      goto LABEL_28;
    }

    v42 = v16 + v41;
    v43 = v184;
    sub_10003D17C(v42, v184, &unk_10119F3A0, &qword_100EC7CD0);
    v44 = v27;
    v45 = sub_1006BDF60([v44 selectedIndex]);
    if (v45)
    {
      v46 = v45;
      v47 = v178;
      sub_1000089F8(v43, v178, &unk_10119F3A0, &qword_100EC7CD0);
      sub_10070F034(v198, v196, type metadata accessor for AppInterfaceContext.Activity.Destination);
      v48 = (*(v177 + 80) + 48) & ~*(v177 + 80);
      v49 = (v9 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = (*(v192 + 80) + v49 + 16) & ~*(v192 + 80);
      v51 = swift_allocObject();
      v198 = v44;
      v52 = v179;
      v53 = v180;
      v51[2] = v179;
      v51[3] = v53;
      v51[4] = v46;
      v51[5] = v40;
      v54 = v51 + v48;
      v43 = v184;
      sub_10003D17C(v47, v54, &unk_10119F3A0, &qword_100EC7CD0);
      v55 = (v51 + v49);
      v56 = v194;
      v57 = v195;
      *v55 = v195;
      v55[1] = v56;
      sub_10070F24C(v196, v51 + v50, type metadata accessor for AppInterfaceContext.Activity.Destination);
      sub_100030444(v57, v56);
      v58 = v52;
      v44 = v198;
      sub_100030444(v58, v53);
      v59 = v46;
      v60 = v40;
      sub_10070D5C8(sub_10070F54C, v51, v191);
    }

    else
    {
      sub_10070F4F8();
      v155 = swift_allocError();
      *v156 = 0xD000000000000038;
      v156[1] = 0x8000000100E55B40;
      v157 = v195;
      if (v195)
      {
        v158 = v189;
        *v189 = v155;
        swift_storeEnumTagMultiPayload();
        swift_errorRetain();
        v157(v158);

        sub_1000095E8(v158, &qword_10119FD10, &unk_100EDF158);
      }

      else
      {
      }
    }

    v138 = &unk_10119F3A0;
    v139 = &qword_100EC7CD0;
    v140 = v43;
    goto LABEL_59;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    v44 = v27;
    v99 = sub_1006BDF60([v44 selectedIndex]);
    if (v99)
    {
      v100 = v99;
    }

    v101 = sub_1006BDF60([v44 selectedIndex]);
    v102 = v195;
    if (v101)
    {
      v103 = v101;
      v104 = [v101 transitionCoordinator];

      if (v104)
      {
        v105 = v196;
        sub_10070F034(v198, v196, type metadata accessor for AppInterfaceContext.Activity.Destination);
        v106 = (*(v192 + 80) + 32) & ~*(v192 + 80);
        v107 = swift_allocObject();
        v108 = v194;
        *(v107 + 16) = v102;
        *(v107 + 24) = v108;
        sub_10070F24C(v105, v107 + v106, type metadata accessor for AppInterfaceContext.Activity.Destination);
        v203 = sub_10070F930;
        v204 = v107;
        aBlock = _NSConcreteStackBlock;
        v200 = 1107296256;
        v201 = sub_1007E9F28;
        v202 = &unk_1010BC0A0;
        v109 = _Block_copy(&aBlock);
        sub_100030444(v102, v108);

        [v104 animateAlongsideTransition:0 completion:v109];
        _Block_release(v109);

LABEL_74:
        swift_unknownObjectRelease();
        return sub_10070F180(v197, type metadata accessor for AppInterfaceContext.Activity.Destination);
      }
    }

    if (!v102)
    {
LABEL_60:

      return sub_10070F180(v197, type metadata accessor for AppInterfaceContext.Activity.Destination);
    }

    v135 = sub_10010FC20(&unk_1011841E0, &unk_100ECDA60);
    v136 = v189;
    v137 = &v189[*(v135 + 48)];
    sub_10070F034(v198, v189, type metadata accessor for AppInterfaceContext.Activity.Destination);
    type metadata accessor for AppInterfaceContext.Activity(0);
    *v137 = 0;
    *(v137 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v102(v136);
    v138 = &qword_10119FD10;
    v139 = &unk_100EDF158;
    v140 = v136;
LABEL_59:
    sub_1000095E8(v140, v138, v139);
    goto LABEL_60;
  }

LABEL_27:
  v110 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
LABEL_28:
  aBlock = 0;
  v200 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v111._countAndFlagsBits = 0xD000000000000018;
  v111._object = 0x8000000100E55B00;
  String.append(_:)(v111);
  sub_10070F034(v198, v196, type metadata accessor for AppInterfaceContext.Activity.Destination);
  v112._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v112);

  v113._countAndFlagsBits = 0xD00000000000001CLL;
  v113._object = 0x8000000100E55B20;
  String.append(_:)(v113);
  v206 = v27;
  v114 = v110;
  v115._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v115);

  v116 = aBlock;
  v117 = v200;
  sub_10070F4F8();
  v118 = swift_allocError();
  *v119 = v116;
  v119[1] = v117;
  v120 = v195;
  if (v195)
  {
    v121 = v189;
    *v189 = v118;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v120(v121);

    sub_1000095E8(v121, &qword_10119FD10, &unk_100EDF158);
  }

  else
  {
  }

  return sub_1000095E8(v197, &qword_10119FD18, &unk_100EDF170);
}

void sub_10070D5C8(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v6 = *(a3 + 32);
  }

  v7 = objc_opt_self();
  v37 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
  v8 = [v7 sharedPrivacyInfo];
  v9 = [v8 privacyAcknowledgementRequiredForMusic];

  if ((v9 & 1) == 0)
  {
    if (v5 < 0)
    {
LABEL_15:
      aBlock[4] = a1;
      aBlock[5] = a2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010BC0F0;
      v36 = _Block_copy(aBlock);

      [v6 dismissViewControllerAnimated:1 completion:v36];
      _Block_release(v36);

      return;
    }

    v10 = v37;
    v11 = v5;
    v12 = [v11 sidebar];
    v13 = [v12 isHidden];

    v14 = v10;
    if ((v13 & 1) == 0)
    {
      v15 = v11;
      v16 = [v15 view];
      if (v16)
      {
        v17 = v16;
        [v16 bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v40.origin.x = v19;
        v40.origin.y = v21;
        v40.size.width = v23;
        v40.size.height = v25;
        Height = CGRectGetHeight(v40);
        v27 = [v15 view];

        if (v27)
        {
          [v27 bounds];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v41.origin.x = v29;
          v41.origin.y = v31;
          v41.size.width = v33;
          v41.size.height = v35;
          v14 = v10;
          if (CGRectGetWidth(v41) < Height)
          {
            v14 = [v15 sidebar];

            [v14 setHidden:1];
          }

          goto LABEL_14;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_14:

    goto LABEL_15;
  }

  a1();
}

void sub_10070D8A8(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&qword_10119FD10, &unk_100EDF158);
  __chkstk_darwin();
  v7 = &v9 - v6;
  if (a2)
  {
    v8 = &v7[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
    sub_10070F034(a4, v7, type metadata accessor for AppInterfaceContext.Activity.Destination);
    type metadata accessor for AppInterfaceContext.Activity(0);
    *v8 = 0;
    *(v8 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a2(v7);
    sub_1000095E8(v7, &qword_10119FD10, &unk_100EDF158);
  }
}

void *sub_10070D9C8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UITraitOverrides();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = &v18 - v11;
  result = sub_1006BDF60([a1 selectedIndex]);
  if (result)
  {
    v14 = result;

    v15 = [a1 traitCollection];
    v16 = sub_10066BAEC(v15, a2);

    v17 = (*(a3 + 32) & 0x7FFFFFFFFFFFFFFFLL);
    UIViewController.traitOverrides.getter();

    sub_10066C1EC(a2, v12);
    (*(v7 + 8))(v9, v6);
    (*(v7 + 56))(v12, 0, 1, v6);
    sub_100795F14(v16, v12, 1);

    return sub_1000095E8(v12, &unk_10119F3A0, &qword_100EC7CD0);
  }

  return result;
}

double sub_10070DBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  sub_10070F034(a5, &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppInterfaceContext.Activity.Destination);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  sub_10070F24C(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for AppInterfaceContext.Activity.Destination);
  sub_100030444(a3, a4);
  sub_10070D5C8(sub_10070F9A4, v12, a2);

  return result;
}

void sub_10070DD34(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_10119FD10, &unk_100EDF158);
  __chkstk_darwin();
  v6 = &v8 - v5;
  if (a1)
  {
    v7 = &v6[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
    sub_10070F034(a3, v6, type metadata accessor for AppInterfaceContext.Activity.Destination);
    type metadata accessor for AppInterfaceContext.Activity(0);
    *v7 = 0;
    *(v7 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a1(v6);
    sub_1000095E8(v6, &qword_10119FD10, &unk_100EDF158);
  }
}

void sub_10070DE54(uint64_t a1, unsigned __int8 a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v9 = a2;
  sub_10010FC20(&qword_10119FD10, &unk_100EDF158);
  __chkstk_darwin();
  v11 = &v19[-v10];
  if (v9 == 5 || a1 && (sub_1005E3CC0(a2, 1), (v12 & 1) != 0))
  {
    if (!a3)
    {
      return;
    }

    v13 = (v11 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
    sub_10070F034(a5, v11, type metadata accessor for AppInterfaceContext.Activity.Destination);
    type metadata accessor for AppInterfaceContext.Activity(0);
    *v13 = 0;
    v13[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    a3(v11);
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v20 = 0xD00000000000002DLL;
    v21 = 0x8000000100E55BA0;
    v19[15] = a2;
    sub_10010FC20(&qword_10119FD28, &unk_100EDF190);
    v14._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v14);

    v15 = v20;
    v16 = v21;
    sub_10070F4F8();
    v17 = swift_allocError();
    *v18 = v15;
    v18[1] = v16;
    if (!a3)
    {

      return;
    }

    *v11 = v17;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v11);
  }

  sub_1000095E8(v11, &qword_10119FD10, &unk_100EDF158);
}

void sub_10070E084(uint64_t (*a1)(id), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8)
{
  sub_10010FC20(&qword_10119FD10, &unk_100EDF158);
  __chkstk_darwin();
  v15 = &v17 - v14;
  if (a1)
  {

    sub_1007E87C0(a4, a5, a1, a2, 1);
    sub_100020438(a1, a2);
    if (!a6)
    {
      return;
    }
  }

  else
  {
    sub_100795F14(a4, a5, 1);
    if (!a6)
    {
      return;
    }
  }

  v16 = &v15[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
  sub_10070F034(a8, v15, type metadata accessor for AppInterfaceContext.Activity.Destination);
  type metadata accessor for AppInterfaceContext.Activity(0);
  *v16 = 0;
  *(v16 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  a6(v15);
  sub_1000095E8(v15, &qword_10119FD10, &unk_100EDF158);
}

uint64_t sub_10070E214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v8[5] = sub_10010FC20(&qword_10119FD10, &unk_100EDF158);
  v8[6] = swift_task_alloc();
  v8[7] = type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v8[9] = v10;
  *v10 = v8;
  v10[1] = sub_10070E314;

  return sub_100136860(a5);
}

uint64_t sub_10070E314()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10070E450, v1, v0);
}

uint64_t sub_10070E450()
{
  v1 = v0[2];

  if (v1)
  {
    v2 = v0[6];
    v3 = v0[4];
    v4 = v0[2];
    v5 = (v2 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
    sub_10070F034(v3, v2, type metadata accessor for AppInterfaceContext.Activity.Destination);
    type metadata accessor for AppInterfaceContext.Activity(0);
    *v5 = 0;
    v5[1] = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v4(v2);
    sub_1000095E8(v2, &qword_10119FD10, &unk_100EDF158);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_10070E568(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&qword_10119FD10, &unk_100EDF158);
  __chkstk_darwin();
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = (&v14 - v9);
  sub_1000089F8(a1, &v14 - v9, &qword_10119FD10, &unk_100EDF158);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    if (a2)
    {
      *v8 = v11;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      a2(v8);

      return sub_1000095E8(v8, &qword_10119FD10, &unk_100EDF158);
    }

    else
    {
    }
  }

  else
  {
    if (a2)
    {
      v13 = (v8 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
      sub_10070F034(a4, v8, type metadata accessor for AppInterfaceContext.Activity.Destination);
      type metadata accessor for AppInterfaceContext.Activity(0);
      *v13 = 0;
      v13[1] = 0;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      a2(v8);
      sub_1000095E8(v8, &qword_10119FD10, &unk_100EDF158);
    }

    return sub_1000095E8(v10, &qword_10119FD10, &unk_100EDF158);
  }
}

void sub_10070E768(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppInterfaceContext.Activity(0);
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v7 = &v21 - v6;
  __chkstk_darwin();
  v9 = &v21 - v8;
  type metadata accessor for PlaylistCreation.Context(0);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v2 + 72);
  v26 = a1;

  v13 = sub_1002D9648(sub_10070F1E0, v25, v12);

  if (v13)
  {
  }

  else
  {
    v22 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = v4;
    v14 = v24;
    sub_10070F034(a1, v11, type metadata accessor for PlaylistCreation.Context);
    type metadata accessor for PlaylistCreation.Flow(0);
    swift_allocObject();

    v15 = sub_10042EFE4(v11, sub_10070F218, v2);
    swift_beginAccess();
    if (*(v2 + 72) >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
    }

    else
    {
      sub_1003BB77C(0, 0, v15);
      swift_endAccess();
      v16 = *(v15 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_navigationController);
      *v9 = v16;
      v9[8] = 1;
      *(v9 + 2) = &_swiftEmptySetSingleton;
      swift_storeEnumTagMultiPayload();
      sub_10070F034(v9, v7, type metadata accessor for AppInterfaceContext.Activity);
      v17 = v22;
      sub_10070F034(v7, v22, type metadata accessor for AppInterfaceContext.Activity);
      v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      sub_10070F24C(v17, v19 + v18, type metadata accessor for AppInterfaceContext.Activity);
      v20 = v16;
      sub_100706900(v7, sub_10070F220, v19);

      sub_10070F180(v7, type metadata accessor for AppInterfaceContext.Activity);
      sub_10070F180(v9, type metadata accessor for AppInterfaceContext.Activity);
    }
  }
}

double sub_10070EAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + OBJC_IVAR____TtCV5Music16PlaylistCreation4Flow_navigationController) dismissViewControllerAnimated:1 completion:0];
  swift_beginAccess();
  v4 = *(a3 + 72);
  if (v4 >> 62)
  {
LABEL_18:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return result;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      sub_1007E9C50(v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v7 = static UUID.== infix(_:_:)();

    if (v7)
    {
      break;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_17;
    }
  }

  swift_beginAccess();
  sub_1005024E8();
  swift_endAccess();

  return result;
}

uint64_t sub_10070EC78()
{

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_10070ECD4()
{
  sub_10070EC78();

  return swift_deallocClassInstance();
}

uint64_t sub_10070ED08(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v13[-v5];
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
    swift_beginAccess();
    sub_10070F034(a2 + v9, v6, _s9PlaylistsV5ScopeVMa);
    v10 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
    swift_beginAccess();
    sub_10070F034(v8 + v10, v4, _s9PlaylistsV5ScopeVMa);
    v11 = sub_1001982EC(v6, v4);
    sub_10070F180(v4, _s9PlaylistsV5ScopeVMa);
    sub_10070F180(v6, _s9PlaylistsV5ScopeVMa);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_10070EE80()
{
  result = swift_slowAlloc();
  qword_10119FB38 = result;
  return result;
}

id sub_10070EFC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MiniPlayerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10070F034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10070F09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (!a4)
  {
    return !a8;
  }

  if (a4 == 1)
  {
    return a8 == 1;
  }

  if (a8 < 2)
  {
    return 0;
  }

  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v10 = a3;
      v11 = a4;
      v12 = a8;
      v13 = a7;
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v10;
      a4 = v11;
      a7 = v13;
      a8 = v12;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10070F180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10070F24C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10070F2E0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_10070F36C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Artist() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v10 = (v8 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v1 + v8;
  v15 = *(v1 + v8);
  v16 = *(v14 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_100008F30;

  return sub_10070E214(a1, v12, v13, v1 + v6, v11, v15, v16, v1 + v10);
}

unint64_t sub_10070F4F8()
{
  result = qword_10119FD20;
  if (!qword_10119FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FD20);
  }

  return result;
}

void sub_10070F54C()
{
  v1 = *(sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[5];
  v9 = *(v0 + v3);
  v10 = *(v0 + v3 + 8);
  v11 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  sub_10070E084(v5, v6, v7, v8, v0 + v2, v9, v10, v11);
}

void sub_10070F640(uint64_t a1)
{
  v3 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_10070DE54(a1, v6, v4, v5, v7);
}

uint64_t sub_10070F6B8()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  if (*(v0 + 16))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {

    v6 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
    v7 = type metadata accessor for UITraitOverrides();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v5 = type metadata accessor for Artist();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  return swift_deallocObject();
}

double sub_10070F860(uint64_t a1)
{
  v3 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_10070DBE0(a1, v4, v5, v6, v7);
}

void sub_10070F930(uint64_t a1)
{
  v3 = *(type metadata accessor for AppInterfaceContext.Activity.Destination(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_10070D8A8(a1, v4, v5, v6);
}

void sub_10070F9EC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_10070987C(a1, a2, v7, v2 + v6, v8);
}

double sub_10070FA9C(char *a1)
{
  v3 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10070A160(a1, v1 + v4, v5);
}

void sub_10070FB38()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_10070AE1C(v2, v3, v4);
}

void sub_10070FB9C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100707F20(a1, a2, v7, v2 + v6, v8);
}

uint64_t sub_10070FC58(char *a1)
{
  v3 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1007088F0(a1, v1 + v4, v5);
}

void sub_10070FD00(uint64_t a1)
{
  v3 = *(sub_10010FC20(&qword_10119FD30, &unk_100EDF1A0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100707CA8(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_10070FDBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_1007090E8(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_10070FF48(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_100708538(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1007100D8(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10070A550(a1, v7, v1 + v5, v1 + v6);
}

uint64_t sub_1007101EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_10031B7A0(a1, v4, v5, v1 + 32);
}

uint64_t sub_10071029C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist.Folder() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_10070AA0C(a1, v11, v12, v13, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_100710464(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t))
{
  v7 = *(a1(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_10010FC20(a2, a3) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a4(v4 + v8, v4 + v11, v12);
}

uint64_t sub_10071058C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_10118F670, &unk_100EC89B0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002F3F4;

  return sub_100709E6C(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

double sub_10071071C()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = v0 + ((*(v1 + 80) + 144) & ~*(v1 + 80));

  return sub_10070BBF4(v2, v0 + 24, v3, v4, v5, v6);
}

uint64_t sub_10071078C()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  if (*(v0 + 24))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_24:

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_30;
      }

      type metadata accessor for PlaylistPicker.Mode(0);
      v5 = swift_getEnumCaseMultiPayload() == 1 ? type metadata accessor for Playlist.Folder.Item() : sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      if (*(v3 + *(type metadata accessor for PlaylistPicker.Context(0) + 20) + 16) == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v9 = type metadata accessor for Playlist.Folder();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v0 + v2, 1, v9))
    {
      (*(v10 + 8))(v0 + v2, v9);
    }

    v11 = type metadata accessor for PlaylistCreation.Context(0);

    v12 = *(v11 + 24);
    v13 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v3 + v12, 1, v13))
    {
      (*(v14 + 8))(v3 + v12, v13);
    }

    v15 = *(v11 + 28);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 == 4)
    {

      v18 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
      v19 = type metadata accessor for UITraitOverrides();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v3 + v18, 1, v19))
      {
        (*(v20 + 8))(v3 + v18, v19);
      }
    }

    else if (v16 == 3)
    {
      v17 = type metadata accessor for Artist();
      (*(*(v17 - 8) + 8))(v0 + v2, v17);
    }

    v15 = *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48);
LABEL_28:
    if (*(v3 + v15))
    {
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(sub_10010FC20(&unk_10118A290, &unk_100EC73D0) + 48);
    v7 = type metadata accessor for SearchScope();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

LABEL_30:

  return swift_deallocObject();
}

void sub_100710C10()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_10070AFFC(v2, v3, v4, v5);
}

uint64_t sub_100710C78(uint64_t a1)
{
  v3 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100706668(a1, v4, v5);
}

unint64_t sub_100710D0C()
{
  result = qword_10119FD38;
  if (!qword_10119FD38)
  {
    type metadata accessor for AppInterfaceContext.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FD38);
  }

  return result;
}

uint64_t sub_100710D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100710DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100710E4C(uint64_t a1)
{
  result = type metadata accessor for AppInterfaceContext.Activity(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_100710F00(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100710F18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100710F6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void *sub_100710FCC(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = (a2 - 1);
  }

  return result;
}

unint64_t sub_100711004()
{
  result = qword_10119FF68;
  if (!qword_10119FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FF68);
  }

  return result;
}

uint64_t sub_1007110AC()
{
  v1 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  v0[5] = v1;
  if (v1)
  {
    v9 = v1;
    v10 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
    v0[6] = v10;
    v11 = v10;
    [v11 setServiceType:2];
    v12 = [objc_allocWithZone(ACAccountStore) init];
    v0[7] = v12;
    v13 = [objc_allocWithZone(AIDAServiceOwnersManager) initWithAccountStore:v12];
    v0[8] = v13;
    v14 = [v13 accountForService:AIDAServiceTypeStore];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 username];
      [v11 setUsername:v16];

      v17 = [v15 ams_DSID];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 stringValue];

        if (!v19)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = String._bridgeToObjectiveC()();
        }
      }

      else
      {
        v19 = 0;
      }

      [v11 setDSID:v19];
    }

    [v11 setShouldAllowAppleIDCreation:0];

    v20 = swift_task_alloc();
    v0[9] = v20;
    *(v20 + 16) = v9;
    *(v20 + 24) = v11;
    v21 = swift_task_alloc();
    v0[10] = v21;
    v8 = sub_10010FC20(&qword_1011A0078, &qword_100EDF4E0);
    *v21 = v0;
    v21[1] = sub_10071133C;
    v6 = sub_10071245C;
    v1 = v0 + 2;
    v5 = 0x8000000100E55CD0;
    v2 = 0;
    v3 = 0;
    v4 = 0xD000000000000013;
    v7 = v20;
  }

  else
  {
    __break(1u);
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v1, v2, v3, v4, v5, v6, v7, v8);
}