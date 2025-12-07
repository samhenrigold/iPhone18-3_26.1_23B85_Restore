uint64_t sub_1000C0738@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1000DBE80();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *(a2 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8, v14);
  v17 = (*(v12 + 48))(v11, 1, a2);
  v18 = *(v9 + 8);
  if (v17 == 1)
  {
    v18(v11, v8);
    sub_1000D90B0();
    v18(a1, v8);
  }

  else
  {
    v18(a1, v8);
    v20 = *(v12 + 32);
    v20(v16, v11, a2);
    v20(a4, v16, a2);
  }

  type metadata accessor for SpacerOr(0, a2, a3, v19);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000C0958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000BE89C(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000C0980()
{

  return swift_deallocObject();
}

uint64_t sub_1000C09B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12(v9);
  v13 = *(v5 + 16);
  v13(v11, v7, a2);
  v14 = *(v5 + 8);
  v14(v7, a2);
  v13(a3, v11, a2);
  return (v14)(v11, a2);
}

void sub_1000C0B08(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1000C0EB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1000C0B80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(sub_1000D90C0() - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_1000C0CD8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(sub_1000D90C0() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1000C0EB0()
{
  if (!qword_10011A6F8[0])
  {
    v0 = sub_1000D90C0();
    if (!v1)
    {
      atomic_store(v0, qword_10011A6F8);
    }
  }
}

uint64_t sub_1000C0EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SpacerOr(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000C0F7C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(sub_1000D90C0() - 8) + 64);
  if (v6 <= v5)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v7 = ((v6 + 10) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a2 - 253;
  v9 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v8 < 0x100)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if (v11 == 4)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else if (v11 == 2)
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
LABEL_23:
      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v12 = *(a1 + v7);
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  v14 = v12 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return (v9 | v14) + 255;
}

void sub_1000C1084(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(sub_1000D90C0() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = ((v8 + 10) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 >= 0xFF)
  {
    v10 = a3 - 253;
    if (((v8 + 10) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = a2 - 254;
    if (a2 > 0xFE)
    {
      goto LABEL_13;
    }

LABEL_22:
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *(a1 + v9) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_31;
      }

      *(a1 + v9) = 0;
    }

    else if (v12)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

LABEL_31:
      *(a1 + v8) = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  v12 = 0;
  v13 = a2 - 254;
  if (a2 <= 0xFE)
  {
    goto LABEL_22;
  }

LABEL_13:
  if (((v8 + 10) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((v8 + 10) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    bzero(a1, ((v8 + 10) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = a2 - 255;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(a1 + v9) = v14;
    }

    else
    {
      *(a1 + v9) = v14;
    }
  }

  else if (v12)
  {
    *(a1 + v9) = v14;
  }
}

uint64_t sub_1000C11CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  sub_1000BFFC8(255);
  type metadata accessor for GridCell(255, v1, v2, v3);
  sub_1000DBBB0();
  sub_1000893D0();
  sub_1000DA930();
  sub_1000DAEB0();
  sub_1000DA930();
  sub_1000DA930();
  sub_1000DADA0();
  sub_1000C0124(255);
  swift_getTupleTypeMetadata2();
  sub_1000DB650();
  swift_getWitnessTable();
  sub_1000DB540();
  swift_getWitnessTable();
  sub_1000DB5A0();
  sub_1000C05BC(&qword_10011A658, sub_1000BFFC8, &protocol conformance descriptor for _LayoutRoot<A>);
  sub_1000DA800();
  sub_1000C05BC(&qword_10011A660, sub_1000BFFC8, &protocol conformance descriptor for _LayoutRoot<A>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000C1448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1000C2C5C(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000C153C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    sub_1000C2C5C(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for SmallDetailContentView(uint64_t a1)
{
  result = qword_10011A7D8;
  if (!qword_10011A7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C165C(uint64_t a1)
{
  sub_1000C300C(319, &unk_1001164D0, &type metadata for EdgeInsets, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000C300C(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000C300C(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000C2C5C(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000C17E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for SmallSparklineView(0);
  __chkstk_darwin(v3 - 8);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v56 = &v45 - v6;
  v7 = sub_1000DAE60();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C2E2C(0);
  __chkstk_darwin(v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C2F7C(0, &qword_10011A840, sub_1000C2D78);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  *v13 = sub_1000DAD00();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1000C3298(0, &qword_10011A878, sub_1000C2EC0, &type metadata for _VStackLayout, &protocol witness table for _VStackLayout);
  sub_1000C1D48(a1, &v13[*(v21 + 44)]);
  sub_1000DAE40();
  sub_1000C305C(&qword_10011A870, sub_1000C2E2C, &protocol conformance descriptor for VStack<A>);
  sub_1000DB2A0();
  (*(v8 + 8))(v10, v7);
  sub_1000C31C0(v13, sub_1000C2E2C);
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 1;
  *(v23 + 32) = 0;
  *(v23 + 40) = 0;
  v24 = &v20[*(v15 + 44)];
  v52 = v20;
  *v24 = KeyPath;
  v24[1] = sub_10002B050;
  v24[2] = v23;
  sub_1000DB600();
  sub_1000DA7A0();
  v50 = v59;
  v51 = v57;
  v48 = v62;
  v49 = v61;
  v65 = 1;
  v64 = v58;
  v63 = v60;
  v25 = type metadata accessor for SmallDetailContentView(0);
  v26 = v56;
  sub_100024964(a1 + *(v25 + 40), v56);
  v27 = a1[11];
  v28 = a1[12];
  v29 = a1[13];
  v46 = a1[14];
  v47 = v27;
  v45 = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 1;
  v31 = v17;
  v53 = v17;
  sub_1000C3140(v20, v17);
  LOBYTE(v20) = v65;
  LOBYTE(v17) = v64;
  LOBYTE(a1) = v63;
  v32 = v26;
  v33 = v54;
  sub_1000C3428(v32, v54, type metadata accessor for SmallSparklineView);
  v34 = v55;
  sub_1000C3140(v31, v55);
  sub_1000C2CC0(0);
  v36 = v35;
  v37 = v34 + *(v35 + 48);
  *v37 = 0;
  *(v37 + 8) = v20;
  v38 = v50;
  *(v37 + 16) = v51;
  *(v37 + 24) = v17;
  *(v37 + 32) = v38;
  *(v37 + 40) = a1;
  v39 = v48;
  *(v37 + 48) = v49;
  *(v37 + 56) = v39;
  sub_1000C3428(v33, v34 + *(v35 + 64), type metadata accessor for SmallSparklineView);
  v40 = v34 + *(v36 + 80);
  *v40 = 0;
  *(v40 + 8) = 0;
  v41 = (v34 + *(v36 + 96));
  v43 = v46;
  v42 = v47;
  *v41 = v47;
  v41[1] = v28;
  v41[2] = v29;
  v41[3] = v43;
  v41[4] = v45;
  v41[5] = sub_10002B5D4;
  v41[6] = v30;
  sub_10002B054(v42, v28, v29, v43);
  sub_10002B054(v42, v28, v29, v43);

  sub_1000C31C0(v56, type metadata accessor for SmallSparklineView);
  sub_1000C3220(v52);
  sub_10002B52C(v42, v28, v29, v43);

  sub_1000C31C0(v33, type metadata accessor for SmallSparklineView);
  return sub_1000C3220(v53);
}

uint64_t sub_1000C1D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  sub_10006BAA0(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  sub_10006B808(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  *v16 = sub_1000DAC50();
  *(v16 + 1) = 0;
  v16[16] = 1;
  sub_1000C3298(0, &qword_100117C00, sub_10006B8F8, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
  sub_1000C2104(a1, &v16[*(v17 + 44)]);
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 1;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  v20 = &v16[*(v11 + 44)];
  *v20 = KeyPath;
  v20[1] = sub_10002B5D4;
  v20[2] = v19;
  sub_1000DB600();
  sub_1000DA7A0();
  v35 = v40;
  v36 = v38;
  v33 = v43;
  v34 = v42;
  v46 = 1;
  v45 = v39;
  v44 = v41;
  *v9 = sub_1000DAC50();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_1000C3298(0, &qword_100117C08, sub_10006BB8C, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
  sub_1000C2628(a1, &v9[*(v21 + 44)]);
  v22 = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  v24 = &v9[*(v4 + 44)];
  *v24 = v22;
  v24[1] = sub_10002B5D4;
  v24[2] = v23;
  sub_1000C3428(v16, v13, sub_10006B808);
  v25 = v46;
  v26 = v45;
  LOBYTE(v11) = v44;
  sub_1000C3428(v9, v6, sub_10006BAA0);
  v27 = v37;
  sub_1000C3428(v13, v37, sub_10006B808);
  sub_1000C2EF4(0);
  v29 = v27 + *(v28 + 48);
  *v29 = 0;
  *(v29 + 8) = v25;
  v30 = v35;
  *(v29 + 16) = v36;
  *(v29 + 24) = v26;
  *(v29 + 32) = v30;
  *(v29 + 40) = v11;
  v31 = v33;
  *(v29 + 48) = v34;
  *(v29 + 56) = v31;
  sub_1000C3428(v6, v27 + *(v28 + 64), sub_10006BAA0);
  sub_1000C31C0(v9, sub_10006BAA0);
  sub_1000C31C0(v16, sub_10006B808);
  sub_1000C31C0(v6, sub_10006BAA0);
  return sub_1000C31C0(v13, sub_10006B808);
}

uint64_t sub_1000C2104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v41 = type metadata accessor for PriceChangeView(0);
  __chkstk_darwin(v41);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10006BA6C(0);
  __chkstk_darwin(v5 - 8);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v38 - v8;
  v9 = type metadata accessor for SymbolTrendView(0);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006B9C4(0);
  __chkstk_darwin(v12 - 8);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v38 = &v38 - v15;
  v16 = *(a1 + 120);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v20 = *(a1 + 56);
  v19 = *(a1 + 64);
  KeyPath = swift_getKeyPath();
  *v11 = v16;
  *(v11 + 1) = v17;
  *(v11 + 2) = v18;
  *(v11 + 3) = v20;
  *(v11 + 4) = v19;
  v22 = v9[6];
  *&v11[v22] = swift_getKeyPath();
  sub_1000C2C5C(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v23 = v9[7];
  *&v11[v23] = swift_getKeyPath();
  sub_1000C2C5C(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v24 = &v11[v9[8]];
  *v24 = KeyPath;
  v24[8] = 0;
  sub_1000C305C(&qword_100117C38, type metadata accessor for SymbolTrendView, &unk_1000DF820);

  v25 = v38;
  sub_1000DB2C0();
  sub_1000C31C0(v11, type metadata accessor for SymbolTrendView);
  v45 = *(a1 + 128);
  v26 = *(a1 + 152);
  v46 = *(a1 + 144);
  v44[0] = *(a1 + 160);
  *(v44 + 9) = *(a1 + 169);
  *v4 = swift_getKeyPath();
  sub_1000C2C5C(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v27 = v41;
  v28 = v4 + *(v41 + 20);
  *v28 = v45;
  *(v28 + 2) = v46;
  *(v28 + 3) = v26;
  *(v28 + 2) = v44[0];
  *(v28 + 41) = *(v44 + 9);
  *(v4 + *(v27 + 24)) = v16;
  sub_1000C305C(&qword_100117C28, type metadata accessor for PriceChangeView, &unk_1000E4400);

  v29 = v40;
  sub_1000DB2C0();
  sub_1000C31C0(v4, type metadata accessor for PriceChangeView);
  v30 = v25;
  v31 = v25;
  v32 = v39;
  sub_1000C3428(v31, v39, sub_10006B9C4);
  v33 = v42;
  sub_1000C3428(v29, v42, sub_10006BA6C);
  v34 = v43;
  sub_1000C3428(v32, v43, sub_10006B9C4);
  sub_10006B990(0);
  v36 = v34 + *(v35 + 48);
  *v36 = 0x4020000000000000;
  *(v36 + 8) = 0;
  sub_1000C3428(v33, v34 + *(v35 + 64), sub_10006BA6C);
  sub_1000C31C0(v29, sub_10006BA6C);
  sub_1000C31C0(v30, sub_10006B9C4);
  sub_1000C31C0(v33, sub_10006BA6C);
  return sub_1000C31C0(v32, sub_10006B9C4);
}

uint64_t sub_1000C2628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10006BD0C(0);
  v5 = v4;
  __chkstk_darwin(v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10006BCD8(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v30[-v12];
  sub_10006BC78(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v30[-v18];
  v20 = *(a1 + 80);
  *v30 = *(a1 + 72);
  *&v30[8] = v20;
  sub_10006BEA0();
  sub_1000DB2C0();
  v31 = *(a1 + 128);
  v21 = *(a1 + 152);
  v32 = *(a1 + 144);
  *v30 = *(a1 + 160);
  *&v30[9] = *(a1 + 169);
  v22 = *(a1 + 120);
  *v7 = swift_getKeyPath();
  sub_1000C2C5C(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for PriceChangeView(0);
  v24 = v7 + *(v23 + 20);
  *v24 = v31;
  *(v24 + 2) = v32;
  *(v24 + 3) = v21;
  *(v24 + 2) = *v30;
  *(v24 + 41) = *&v30[9];
  *(v7 + *(v23 + 24)) = v22;
  KeyPath = swift_getKeyPath();
  v26 = (v7 + *(v5 + 36));
  *v26 = KeyPath;
  v26[1] = sub_1000C29B4;
  v26[2] = 0;
  sub_10006BFD4();

  sub_1000DB2C0();
  sub_1000C31C0(v7, sub_10006BD0C);
  sub_1000C3428(v19, v16, sub_10006BC78);
  sub_1000C3428(v13, v10, sub_10006BCD8);
  sub_1000C3428(v16, a2, sub_10006BC78);
  sub_10006BBC0(0);
  v28 = a2 + *(v27 + 48);
  *v28 = 0x4020000000000000;
  *(v28 + 8) = 0;
  sub_1000C3428(v10, a2 + *(v27 + 64), sub_10006BCD8);
  sub_1000C31C0(v13, sub_10006BCD8);
  sub_1000C31C0(v19, sub_10006BC78);
  sub_1000C31C0(v10, sub_10006BCD8);
  return sub_1000C31C0(v16, sub_10006BC78);
}

uint64_t sub_1000C29B4(uint64_t a1)
{
  v2 = sub_1000D9690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v16 - v8;
  (*(v3 + 32))(&v16 - v8, a1, v2, v7);
  (*(v3 + 16))(v5, v9, v2);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == enum case for PriceChangeDisplay.currency(_:))
  {
    (*(v3 + 8))(v9, v2);
    v11 = enum case for PriceChangeDisplay.percentage(_:);
    return (*(v3 + 104))(a1, v11, v2);
  }

  v12 = enum case for PriceChangeDisplay.percentage(_:);
  if (v10 == enum case for PriceChangeDisplay.percentage(_:))
  {
    v13 = v9;
    v14 = enum case for PriceChangeDisplay.currency(_:);
    (*(v3 + 8))(v13, v2);
    v11 = v14;
    return (*(v3 + 104))(a1, v11, v2);
  }

  if (v10 == enum case for PriceChangeDisplay.marketCapitalization(_:))
  {
    (*(v3 + 8))(v9, v2);
    v11 = v12;
    return (*(v3 + 104))(a1, v11, v2);
  }

  result = sub_1000DC350();
  __break(1u);
  return result;
}

uint64_t sub_1000C2BB4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000DAD20();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1000C3298(0, &qword_10011A828, sub_1000C2C28, &type metadata for _VStackLayout, &protocol witness table for _VStackLayout);
  return sub_1000C17E8(v1, a1 + *(v3 + 44));
}

void sub_1000C2C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000C2CC0(uint64_t a1)
{
  if (!qword_10011A838)
  {
    sub_1000C2F7C(255, &qword_10011A840, sub_1000C2D78);
    sub_100099470();
    type metadata accessor for SmallSparklineView(255);
    sub_1000C30A4(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_10011A838);
    }
  }
}

void sub_1000C2D78(uint64_t a1)
{
  if (!qword_10011A848)
  {
    sub_1000C2E2C(255);
    sub_1000C305C(&qword_10011A870, sub_1000C2E2C, &protocol conformance descriptor for VStack<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011A848);
    }
  }
}

void sub_1000C2E2C(uint64_t a1)
{
  if (!qword_10011A850)
  {
    sub_1000C2EC0(255);
    sub_1000C305C(&qword_10011A868, sub_1000C2EC0, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A850);
    }
  }
}

void sub_1000C2EF4(uint64_t a1)
{
  if (!qword_10011A860)
  {
    sub_10006B808(255);
    sub_100099470();
    sub_10006BAA0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_10011A860);
    }
  }
}

void sub_1000C2F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000C300C(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000C300C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000C305C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000C30A4(uint64_t a1)
{
  if (!qword_100115788)
  {
    sub_1000C300C(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100115788);
    }
  }
}

uint64_t sub_1000C3140(uint64_t a1, uint64_t a2)
{
  sub_1000C2F7C(0, &qword_10011A840, sub_1000C2D78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C31C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C3220(uint64_t a1)
{
  sub_1000C2F7C(0, &qword_10011A840, sub_1000C2D78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000C3298(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1000DA800();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1000C335C(uint64_t a1)
{
  v2 = sub_1000DB6F0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1000DABC0();
}

uint64_t sub_1000C3428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000C34D8(uint64_t a1)
{
  if (!qword_10011A888)
  {
    sub_1000C2C28(255);
    sub_1000C305C(&qword_10011A890, sub_1000C2C28, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A888);
    }
  }
}

uint64_t sub_1000C3578(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[41])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000C35CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1000C3648(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  v9 = *v6;
  v10 = sub_1000DAF40();
  if (v9 == 1)
  {
    sub_10004C554();
  }

  sub_1000DA690();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1000C3740(0);
  (*(*(v19 - 8) + 16))(a6, a1, v19);
  sub_1000C37F0(0);
  v21 = a6 + *(v20 + 36);
  *v21 = v10;
  *(v21 + 8) = v12;
  *(v21 + 16) = v14;
  *(v21 + 24) = v16;
  *(v21 + 32) = v18;
  *(v21 + 40) = 0;
}

void sub_1000C3740(uint64_t a1)
{
  if (!qword_10011A898)
  {
    sub_1000C379C();
    v1 = sub_1000DADC0();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A898);
    }
  }
}

unint64_t sub_1000C379C()
{
  result = qword_10011A8A0;
  if (!qword_10011A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A8A0);
  }

  return result;
}

void sub_1000C37F0(uint64_t a1)
{
  if (!qword_10011A8A8)
  {
    sub_1000C3740(255);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A8A8);
    }
  }
}

unint64_t sub_1000C3854()
{
  result = qword_10011A8B0;
  if (!qword_10011A8B0)
  {
    sub_1000C37F0(255);
    sub_1000C38D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A8B0);
  }

  return result;
}

unint64_t sub_1000C38D4()
{
  result = qword_10011A8B8;
  if (!qword_10011A8B8)
  {
    sub_1000C3740(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A8B8);
  }

  return result;
}

uint64_t sub_1000C392C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000C3944(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000C3998(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1000C39F8(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000C3A2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000C3A88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000C3B04@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v94 = a4;
  sub_1000C4714(0, &qword_10011A8F8, &type metadata accessor for _ConditionalContent.Storage, a5);
  v9 = v8;
  v10 = __chkstk_darwin(v8);
  v12 = &v83[-v11];
  sub_1000C4798(0, &qword_10011A900, &type metadata accessor for _ConditionalContent.Storage, v10);
  v91 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v83[-v15];
  sub_1000C4798(0, &qword_10011A8D8, &type metadata accessor for _ConditionalContent, v14);
  v93 = v17;
  v18 = __chkstk_darwin(v17);
  v92 = &v83[-v19];
  sub_1000C4564(0, v18);
  v21 = v20;
  __chkstk_darwin(v20);
  v23 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v26 = &v83[-v25];
  __chkstk_darwin(v27);
  v29 = &v83[-v28];
  if (a2)
  {
    v90 = v9;
    if (a2 == 1)
    {
      sub_1000DACD0();
      v30 = sub_1000DB160();
      v32 = v31;
      v34 = v33;
      LODWORD(aBlock) = sub_1000DADE0();
      v35 = sub_1000DB0E0();
      v87 = v36;
      v88 = v35;
      v38 = v37;
      v89 = v39;
      sub_100017794(v30, v32, v34 & 1);

      v40 = &v23[*(v21 + 36)];
      sub_1000C45C4(0);
      v42 = *(v41 + 28);
      v43 = enum case for Text.Case.uppercase(_:);
      v44 = sub_1000DB0F0();
      v45 = *(v44 - 8);
      (*(v45 + 104))(v40 + v42, v43, v44);
      (*(v45 + 56))(v40 + v42, 0, 1, v44);
      *v40 = swift_getKeyPath();
      v46 = v87;
      *v23 = v88;
      *(v23 + 1) = v46;
      v23[16] = v38 & 1;
      *(v23 + 3) = v89;
      sub_1000C4BC4(v23, v16, sub_1000C4564);
      swift_storeEnumTagMultiPayload();
      sub_1000C4890(v47);
      v48 = v92;
      sub_1000DAD90();
      sub_1000C49F0(v48, v12, v49);
      swift_storeEnumTagMultiPayload();
      sub_1000C47FC(v50);
      sub_1000DAD90();
      sub_1000C4A70(v48, v51);
      v52 = v23;
    }

    else
    {
      v88 = v16;
      aBlock = a1;
      v96 = a2;
      sub_100017740();

      v58 = sub_1000DB170();
      v60 = v59;
      v62 = v61;
      v89 = v63;
      v64 = a3;
      if (!a3)
      {
        v87 = objc_allocWithZone(UIColor);
        v99 = sub_1000C43EC;
        v100 = 0;
        aBlock = _NSConcreteStackBlock;
        v96 = 1107296256;
        v97 = sub_10000F09C;
        v98 = &unk_10010CA40;
        v65 = _Block_copy(&aBlock);
        [v87 initWithDynamicProvider:v65];
        _Block_release(v65);

        v64 = sub_1000DB300();
      }

      aBlock = v64;

      v66 = sub_1000DB0E0();
      v85 = v67;
      v86 = v66;
      v84 = v68;
      v87 = v69;
      sub_100017794(v58, v60, v62 & 1);

      v70 = &v26[*(v21 + 36)];
      sub_1000C45C4(0);
      v72 = *(v71 + 28);
      v73 = enum case for Text.Case.uppercase(_:);
      v74 = sub_1000DB0F0();
      v75 = *(v74 - 8);
      (*(v75 + 104))(v70 + v72, v73, v74);
      (*(v75 + 56))(v70 + v72, 0, 1, v74);
      *v70 = swift_getKeyPath();
      v76 = v85;
      *v26 = v86;
      *(v26 + 1) = v76;
      v26[16] = v84 & 1;
      *(v26 + 3) = v87;
      sub_1000C4B60(v26, v29, v77);
      sub_1000C4BC4(v29, v88, sub_1000C4564);
      swift_storeEnumTagMultiPayload();
      sub_1000C4890(v78);
      v79 = v92;
      sub_1000DAD90();
      sub_1000C49F0(v79, v12, v80);
      swift_storeEnumTagMultiPayload();
      sub_1000C47FC(v81);
      sub_1000DAD90();

      sub_1000C4A70(v79, v82);
      v52 = v29;
    }

    return sub_1000C4AE8(v52, sub_1000C4564);
  }

  else
  {
    LODWORD(aBlock) = sub_1000DADE0();
    *v12 = sub_1000DB0E0();
    *(v12 + 1) = v53;
    v12[16] = v54 & 1;
    *(v12 + 3) = v55;
    swift_storeEnumTagMultiPayload();
    sub_1000C47FC(v56);
    return sub_1000DAD90();
  }
}

void sub_1000C42CC(uint64_t a1@<X8>)
{
  sub_1000A52A8(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C3B04(*v1, *(v1 + 8), *(v1 + 16), a1, v4);
  sub_1000DAFB0();
  v7 = sub_1000DAFA0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_1000DB000();
  sub_1000C4AE8(v6, sub_1000A52A8);
  KeyPath = swift_getKeyPath();
  sub_1000C4488(0, v10);
  v12 = (a1 + *(v11 + 36));
  *v12 = KeyPath;
  v12[1] = v8;
}

id sub_1000C43EC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  if (v1 == 2)
  {
    v3 = 0.764705882;
    v4 = 0.737254902;
  }

  else
  {
    v3 = 0.235294118;
    v4 = 0.262745098;
  }

  return [v2 initWithRed:v3 green:v3 blue:v4 alpha:0.6];
}

void sub_1000C4488(uint64_t a1, __n128 a2)
{
  if (!qword_10011A8C0)
  {
    sub_1000C44F0(255, a2);
    sub_1000C462C(255);
    v2 = sub_1000DA930();
    if (!v3)
    {
      atomic_store(v2, &qword_10011A8C0);
    }
  }
}

void sub_1000C44F0(uint64_t a1, __n128 a2)
{
  if (!qword_10011A8C8)
  {
    sub_1000C4714(255, &qword_10011A8D0, &type metadata accessor for _ConditionalContent, a2);
    v2 = sub_1000DB3A0();
    if (!v3)
    {
      atomic_store(v2, &qword_10011A8C8);
    }
  }
}

void sub_1000C4564(uint64_t a1, __n128 a2)
{
  if (!qword_10011A8E0)
  {
    sub_1000C45C4(255);
    v2 = sub_1000DA930();
    if (!v3)
    {
      atomic_store(v2, &qword_10011A8E0);
    }
  }
}

void sub_1000C4660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000C46C4()
{
  if (!qword_1001158F0)
  {
    v0 = sub_1000DBE80();
    if (!v1)
    {
      atomic_store(v0, &qword_1001158F0);
    }
  }
}

void sub_1000C4714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *), __n128 a4)
{
  if (!*a2)
  {
    sub_1000C4798(255, &qword_10011A8D8, &type metadata accessor for _ConditionalContent, a4);
    v8 = a3(a1, v7, &type metadata for Text);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000C4798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), __n128 a4)
{
  if (!*a2)
  {
    sub_1000C4564(255, a4);
    v8 = a3(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1000C47FC(__n128 a1)
{
  result = qword_10011A908;
  if (!qword_10011A908)
  {
    sub_1000C4798(255, &qword_10011A8D8, &type metadata accessor for _ConditionalContent, a1);
    sub_1000C4890(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A908);
  }

  return result;
}

unint64_t sub_1000C4890(__n128 a1)
{
  result = qword_10011A910;
  if (!qword_10011A910)
  {
    sub_1000C4564(255, a1);
    sub_1000C4DE0(&qword_10011A918, sub_1000C45C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A910);
  }

  return result;
}

uint64_t sub_1000C4950(uint64_t a1)
{
  sub_1000C45F8(0);
  __chkstk_darwin(v2 - 8);
  sub_1000C4BC4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1000C45F8);
  return sub_1000DAB80();
}

uint64_t sub_1000C49F0(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1000C4798(0, &qword_10011A8D8, &type metadata accessor for _ConditionalContent, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C4A70(uint64_t a1, __n128 a2)
{
  sub_1000C4798(0, &qword_10011A8D8, &type metadata accessor for _ConditionalContent, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C4AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C4B48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C4B60(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1000C4564(0, a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C4BC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000C4C30(__n128 a1)
{
  result = qword_10011A920;
  if (!qword_10011A920)
  {
    sub_1000C4488(255, a1);
    sub_1000C4CCC(v2);
    sub_1000C4DE0(&qword_1001159C8, sub_1000C462C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A920);
  }

  return result;
}

unint64_t sub_1000C4CCC(__n128 a1)
{
  result = qword_10011A928;
  if (!qword_10011A928)
  {
    sub_1000C44F0(255, a1);
    sub_1000C4D44(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A928);
  }

  return result;
}

unint64_t sub_1000C4D44(__n128 a1)
{
  result = qword_10011A930;
  if (!qword_10011A930)
  {
    sub_1000C4714(255, &qword_10011A8D0, &type metadata accessor for _ConditionalContent, a1);
    sub_1000C47FC(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011A930);
  }

  return result;
}

uint64_t sub_1000C4DE0(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_1000C4E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1000C7CD0(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1000C7CD0(0, &qword_100116C88, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1000C4FE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    sub_1000C7CD0(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1000C7CD0(0, &qword_100116C88, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 44);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t type metadata accessor for RowWithChartTicker(uint64_t a1)
{
  result = qword_10011A990;
  if (!qword_10011A990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C51B0(uint64_t a1)
{
  sub_1000C7198(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000C7198(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000C7198(319, &qword_100117C18, &type metadata for PriceChange, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000C7CD0(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000C7144(319, &qword_1001141F8, &type metadata for Bool, &protocol witness table for Bool, &type metadata accessor for SettingProperty);
          if (v5 <= 0x3F)
          {
            sub_1000C7CD0(319, &qword_100116C88, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
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

uint64_t sub_1000C53C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C68CC(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  sub_1000C7008(0, &qword_10011AA28, type metadata accessor for RowSparklineView, &type metadata for _PaddingLayout, &type metadata accessor for ModifiedContent);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  sub_1000C6708(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v36 - v21;
  *v22 = sub_1000DAD10();
  *(v22 + 1) = 0x4000000000000000;
  v22[16] = 0;
  sub_1000C75C0(0, &qword_10011AB08, &qword_10011AA00, sub_1000C67BC);
  sub_1000C5764(a1, &v22[*(v23 + 44)]);
  v24 = type metadata accessor for RowWithChartTicker(0);
  sub_1000C7A20(a1 + *(v24 + 36), v16, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional, sub_1000C7CD0);
  v25 = sub_1000DAF10();
  sub_1000DA690();
  v26 = &v16[*(v11 + 44)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  *v9 = sub_1000DAD20();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  sub_1000C75C0(0, &qword_10011AB10, &qword_10011AA38, sub_1000C6980);
  sub_1000C5A88(a1, &v9[*(v31 + 44)]);
  sub_1000C763C(v22, v19);
  sub_1000C76A0(v16, v13);
  sub_1000C773C(v9, v6);
  sub_1000C763C(v19, a2);
  sub_1000C6640(0);
  v33 = v32;
  v34 = a2 + *(v32 + 48);
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_1000C76A0(v13, a2 + *(v32 + 64));
  sub_1000C773C(v6, a2 + *(v33 + 80));
  sub_1000C77A0(v9, sub_1000C68CC);
  sub_1000C7800(v16);
  sub_1000C7894(v22, sub_1000C6708);
  sub_1000C77A0(v6, sub_1000C68CC);
  sub_1000C7800(v13);
  return sub_1000C7894(v19, sub_1000C6708);
}

uint64_t sub_1000C5764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_1000C6A28(0, &qword_10011AA10, type metadata accessor for SymbolTrendView);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = *a1;
  v11 = *(a1 + 8);
  v32 = *(a1 + 16);
  v12 = v32;
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  KeyPath = swift_getKeyPath();
  *v9 = v10;
  *(v9 + 1) = v11;
  *(v9 + 2) = v12;
  *(v9 + 3) = v13;
  *(v9 + 4) = v14;
  v15 = type metadata accessor for SymbolTrendView(0);
  v16 = v15[6];
  *&v9[v16] = swift_getKeyPath();
  sub_1000C7CD0(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v17 = v15[7];
  *&v9[v17] = swift_getKeyPath();
  sub_1000C7CD0(0, &qword_100116758, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v18 = &v9[v15[8]];
  *v18 = KeyPath;
  v18[8] = 0;
  v19 = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 1;
  *(v20 + 32) = 0;
  *(v20 + 40) = 0;
  v21 = &v9[*(v4 + 44)];
  *v21 = v19;
  v21[1] = sub_10002B5D4;
  v21[2] = v20;
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  sub_1000C7D34(v9, v6, &qword_10011AA10, type metadata accessor for SymbolTrendView);
  v26 = v33;
  sub_1000C7D34(v6, v33, &qword_10011AA10, type metadata accessor for SymbolTrendView);
  sub_1000C67BC(0);
  v28 = (v26 + *(v27 + 48));
  *v28 = v22;
  v28[1] = v23;
  v28[2] = v24;
  v28[3] = sub_10002B5D4;
  v28[4] = v25;

  swift_bridgeObjectRetain_n();

  sub_1000C7DA0(v9, &qword_10011AA10, type metadata accessor for SymbolTrendView);

  return sub_1000C7DA0(v6, &qword_10011AA10, type metadata accessor for SymbolTrendView);
}

uint64_t sub_1000C5A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = type metadata accessor for PriceChangeView;
  v70 = a2;
  sub_1000C6A28(0, &qword_10011AAE0, type metadata accessor for PriceChangeView);
  v67 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v68 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v57 - v6);
  v8 = sub_1000DA890();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C6B74(0);
  v63 = v11;
  v65 = *(v11 - 8);
  __chkstk_darwin(v11);
  v59 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C6A28(0, &qword_10011AA48, sub_1000C6AB8);
  v64 = v13 - 8;
  __chkstk_darwin(v13 - 8);
  v66 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v62 = &v57 - v16;
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  type metadata accessor for RowWithChartTicker(0);
  sub_10002B054(v17, v18, v19, v20);
  sub_1000D9DA0();
  *&v73 = v17;
  *(&v73 + 1) = v18;
  *&v74 = v19;
  *(&v74 + 1) = v20;
  *&v96 = 0;
  *(&v95 + 1) = 0;
  BYTE8(v96) = 0;
  v97 = xmmword_1000DFDC0;
  *&v98 = 0xA300000000000000;
  *(&v98 + 1) = 9666786;
  *&v99 = 0xA300000000000000;
  *(&v99 + 1) = 9666786;
  *&v100 = 0xA300000000000000;
  sub_100036068(0);
  sub_1000C7490(&qword_100115F00, sub_100036068, &unk_1000E1AF8);
  sub_10003619C();
  v21 = sub_1000DB150();
  v23 = v22;
  LOBYTE(v19) = v24;
  v26 = v25;
  v58 = sub_1000DB610();
  v28 = v27;
  v71 = a1;
  sub_1000C78FC(sub_1000C78F4, v21, v23, v19 & 1, v26, &v95);
  v91 = v97;
  v92 = v98;
  v89 = v95;
  v90 = v96;
  v94[2] = v97;
  v94[3] = v98;
  v94[4] = v99;
  v94[1] = v96;
  v93 = v99;
  v94[0] = v95;
  sub_1000C7A20(&v89, &v73, &qword_10011AA88, sub_1000C6E78, &type metadata accessor for TupleView, sub_1000C7CD0);
  sub_1000C7A94(v94);
  v86 = v91;
  v87 = v92;
  v88 = v93;
  v84 = v89;
  v85 = v90;
  sub_100017794(v21, v23, v19 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v73) = 0;
  v30 = swift_getKeyPath();
  LOBYTE(v95) = 0;
  LODWORD(v26) = sub_1000DADD0();
  sub_1000DB080();
  v31 = sub_1000DAF80();

  v32 = swift_getKeyPath();
  *&v73 = v58;
  *(&v73 + 1) = v28;
  v75[1] = v86;
  v76 = v87;
  v77 = v88;
  v74 = v84;
  v75[0] = v85;
  *&v78 = 0;
  *(&v78 + 1) = KeyPath;
  *&v80 = 0;
  v79 = 0uLL;
  BYTE8(v80) = 0;
  *&v81 = v30;
  *(&v81 + 1) = 1;
  LOBYTE(v82) = 0;
  DWORD1(v82) = v26;
  *(&v82 + 1) = v32;
  v83 = v31;
  v34 = v60;
  v33 = v61;
  (*(v60 + 104))(v10, enum case for DynamicTypeSize.large(_:), v61);
  sub_1000C6BF8(0);
  v36 = v35;
  v37 = sub_1000C71E8();
  v38 = v59;
  sub_1000DB260();
  (*(v34 + 8))(v10, v33);
  v103 = v80;
  v104 = v81;
  v105 = v82;
  v106 = v83;
  v99 = v76;
  v100 = v77;
  v101 = v78;
  v102 = v79;
  v95 = v73;
  v96 = v74;
  v97 = v75[0];
  v98 = v75[1];
  sub_1000C7894(&v95, sub_1000C6BF8);
  *&v73 = v36;
  *(&v73 + 1) = v37;
  swift_getOpaqueTypeConformance2();
  v40 = v62;
  v39 = v63;
  sub_1000DB230();
  (*(v65 + 8))(v38, v39);
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 1;
  *(v42 + 32) = 0;
  *(v42 + 40) = 0;
  v43 = (v40 + *(v64 + 44));
  *v43 = v41;
  v43[1] = sub_10002B050;
  v43[2] = v42;
  v44 = *(a1 + 104);
  v73 = *(a1 + 88);
  v74 = v44;
  v75[0] = *(a1 + 120);
  *(v75 + 9) = *(a1 + 129);
  LOBYTE(v41) = *a1;
  *v7 = swift_getKeyPath();
  sub_1000C7CD0(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v45 = type metadata accessor for PriceChangeView(0);
  v46 = (v7 + *(v45 + 20));
  v47 = v74;
  *v46 = v73;
  v46[1] = v47;
  v46[2] = v75[0];
  *(v46 + 41) = *(v75 + 9);
  *(v7 + *(v45 + 24)) = v41;
  v48 = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 40) = 1;
  v50 = v66;
  v51 = (v7 + *(v67 + 44));
  *v51 = v48;
  v51[1] = sub_10002B5D4;
  v51[2] = v49;
  sub_1000C7B50(v40, v50);
  v53 = v68;
  v52 = v69;
  sub_1000C7D34(v7, v68, &qword_10011AAE0, v69);
  v54 = v70;
  sub_1000C7B50(v50, v70);
  sub_1000C6980(0);
  sub_1000C7D34(v53, v54 + *(v55 + 48), &qword_10011AAE0, v52);
  sub_1000C7A20(&v73, &v72, &qword_100117C18, &type metadata for PriceChange, &type metadata accessor for Optional, sub_1000C7198);
  sub_1000C7DA0(v7, &qword_10011AAE0, v52);
  sub_1000C7BD0(v40);
  sub_1000C7DA0(v53, &qword_10011AAE0, v52);
  return sub_1000C7BD0(v50);
}

double sub_1000C629C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for RowWithChartTicker(0);
  sub_1000D9DA0();
  sub_1000DACD0();
  sub_1000DB160();
  sub_1000DAD90();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1000C63DC()
{
  v1 = sub_1000DAE60();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C658C(0);
  __chkstk_darwin(v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_1000DAC80();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_1000C7528(0);
  sub_1000C53C0(v0, &v7[*(v8 + 44)]);
  sub_1000DAE40();
  sub_1000C7490(&qword_10011AB00, sub_1000C658C, &protocol conformance descriptor for HStack<A>);
  sub_1000DB2A0();
  (*(v2 + 8))(v4, v1);
  return sub_1000C77A0(v7, sub_1000C658C);
}

void sub_1000C658C(uint64_t a1)
{
  if (!qword_10011A9E0)
  {
    sub_1000C7CD0(255, &qword_10011A9E8, sub_1000C6640, &type metadata accessor for TupleView);
    sub_1000C7074(&qword_10011AAF0, &qword_10011A9E8, sub_1000C6640);
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A9E0);
    }
  }
}

void sub_1000C6640(uint64_t a1)
{
  if (!qword_10011A9F0)
  {
    sub_1000C6708(255);
    sub_1000C7008(255, &qword_10011AA28, type metadata accessor for RowSparklineView, &type metadata for _PaddingLayout, &type metadata accessor for ModifiedContent);
    sub_1000C68CC(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_10011A9F0);
    }
  }
}

void sub_1000C6708(uint64_t a1)
{
  if (!qword_10011A9F8)
  {
    sub_1000C7CD0(255, &qword_10011AA00, sub_1000C67BC, &type metadata accessor for TupleView);
    sub_1000C7074(&qword_10011AA20, &qword_10011AA00, sub_1000C67BC);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_10011A9F8);
    }
  }
}

void sub_1000C67BC(uint64_t a1)
{
  if (!qword_10011AA08)
  {
    sub_1000C6A28(255, &qword_10011AA10, type metadata accessor for SymbolTrendView);
    sub_1000C6848(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10011AA08);
    }
  }
}

void sub_1000C6848(uint64_t a1)
{
  if (!qword_10011AA18)
  {
    sub_1000C7198(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AA18);
    }
  }
}

void sub_1000C68CC(uint64_t a1)
{
  if (!qword_10011AA30)
  {
    sub_1000C7CD0(255, &qword_10011AA38, sub_1000C6980, &type metadata accessor for TupleView);
    sub_1000C7074(&qword_10011AAE8, &qword_10011AA38, sub_1000C6980);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AA30);
    }
  }
}

void sub_1000C6980(uint64_t a1)
{
  if (!qword_10011AA40)
  {
    sub_1000C6A28(255, &qword_10011AA48, sub_1000C6AB8);
    sub_1000C6A28(255, &qword_10011AAE0, type metadata accessor for PriceChangeView);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10011AA40);
    }
  }
}

void sub_1000C6A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000C7198(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000C6AB8(uint64_t a1)
{
  if (!qword_10011AA50)
  {
    sub_1000C6B74(255);
    sub_1000C6BF8(255);
    sub_1000C71E8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AA50);
    }
  }
}

void sub_1000C6B74(uint64_t a1)
{
  if (!qword_10011AA58)
  {
    sub_1000C6BF8(255);
    sub_1000C71E8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AA58);
    }
  }
}

void sub_1000C6BF8(uint64_t a1)
{
  if (!qword_10011AA60)
  {
    sub_1000C6C78(255);
    sub_1000C70D8(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AA60);
    }
  }
}

void sub_1000C6C78(uint64_t a1)
{
  if (!qword_10011AA68)
  {
    sub_1000C6D0C(255);
    sub_1000C7144(255, &qword_100115B90, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle, &type metadata accessor for _ForegroundStyleModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AA68);
    }
  }
}

void sub_1000C6D0C(uint64_t a1)
{
  if (!qword_10011AA70)
  {
    sub_1000C7008(255, &qword_10011AA78, sub_1000C6DC4, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for ModifiedContent);
    sub_1000C70D8(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AA70);
    }
  }
}

void sub_1000C6DC4(uint64_t a1)
{
  if (!qword_10011AA80)
  {
    sub_1000C7CD0(255, &qword_10011AA88, sub_1000C6E78, &type metadata accessor for TupleView);
    sub_1000C7074(&qword_10011AAB0, &qword_10011AA88, sub_1000C6E78);
    v1 = sub_1000DB550();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AA80);
    }
  }
}

void sub_1000C6E78(uint64_t a1)
{
  if (!qword_10011AA90)
  {
    sub_1000C6EE8(255);
    sub_1000C6F70(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10011AA90);
    }
  }
}

void sub_1000C6EE8(uint64_t a1)
{
  if (!qword_10011AA98)
  {
    sub_1000C7144(255, &qword_10011AAA0, &type metadata for Text, &type metadata for Text, &type metadata accessor for _ConditionalContent);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AA98);
    }
  }
}

void sub_1000C6F70(uint64_t a1)
{
  if (!qword_10011AAA8)
  {
    sub_1000C7008(255, &qword_100116728, &type metadata accessor for LayoutPriorityTraitKey, &protocol witness table for LayoutPriorityTraitKey, &type metadata accessor for _TraitWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AAA8);
    }
  }
}

void sub_1000C7008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1000C7074(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1000C7CD0(255, a2, a3, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000C70D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1000C7198(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000C7144(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000C7198(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1000C71E8()
{
  result = qword_10011AAB8;
  if (!qword_10011AAB8)
  {
    sub_1000C6BF8(255);
    sub_1000C7288();
    sub_1000C74D8(&qword_1001159C8, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AAB8);
  }

  return result;
}

unint64_t sub_1000C7288()
{
  result = qword_10011AAC0;
  if (!qword_10011AAC0)
  {
    sub_1000C6C78(255);
    sub_1000C7308();
    sub_100035EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AAC0);
  }

  return result;
}

unint64_t sub_1000C7308()
{
  result = qword_10011AAC8;
  if (!qword_10011AAC8)
  {
    sub_1000C6D0C(255);
    sub_1000C73A8();
    sub_1000C74D8(&qword_100115200, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AAC8);
  }

  return result;
}

unint64_t sub_1000C73A8()
{
  result = qword_10011AAD0;
  if (!qword_10011AAD0)
  {
    sub_1000C7008(255, &qword_10011AA78, sub_1000C6DC4, &type metadata for OverflowIntoTextMarginsModifier, &type metadata accessor for ModifiedContent);
    sub_1000C7490(&qword_10011AAD8, sub_1000C6DC4, &protocol conformance descriptor for ZStack<A>);
    sub_10002E25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AAD0);
  }

  return result;
}

uint64_t sub_1000C7490(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C74D8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000C70D8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000C7528(uint64_t a1)
{
  if (!qword_10011AAF8)
  {
    sub_1000C7CD0(255, &qword_10011A9E8, sub_1000C6640, &type metadata accessor for TupleView);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AAF8);
    }
  }
}

void sub_1000C75C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1000C7CD0(255, a3, a4, &type metadata accessor for TupleView);
    v5 = sub_1000DA800();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000C763C(uint64_t a1, uint64_t a2)
{
  sub_1000C6708(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C76A0(uint64_t a1, uint64_t a2)
{
  sub_1000C7008(0, &qword_10011AA28, type metadata accessor for RowSparklineView, &type metadata for _PaddingLayout, &type metadata accessor for ModifiedContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C773C(uint64_t a1, uint64_t a2)
{
  sub_1000C68CC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C77A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C7800(uint64_t a1)
{
  sub_1000C7008(0, &qword_10011AA28, type metadata accessor for RowSparklineView, &type metadata for _PaddingLayout, &type metadata accessor for ModifiedContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C7894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1000C78FC@<D0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  a1(v17);
  v11 = v17[0];
  v12 = v17[1];
  v13 = v17[2];
  v14 = v17[3];
  v15 = v18;
  LOBYTE(v17[0]) = v18;
  *a6 = v11;
  *(a6 + 8) = v12;
  *(a6 + 16) = v13;
  *(a6 + 24) = v14;
  *(a6 + 32) = v15;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4 & 1;
  *(a6 + 64) = a5;
  *(a6 + 72) = 0xBFF0000000000000;
  sub_1000178C0(a2, a3, a4 & 1);

  sub_1000C7C48(v11, v12, v13, v14);
  sub_1000178C0(a2, a3, a4 & 1);

  sub_100017794(a2, a3, a4 & 1);

  return sub_1000C7C84(v11, v12, v13, v14);
}

uint64_t sub_1000C7A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1000C7A94(uint64_t a1)
{
  sub_1000C7CD0(0, &qword_10011AA88, sub_1000C6E78, &type metadata accessor for TupleView);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C7B50(uint64_t a1, uint64_t a2)
{
  sub_1000C6A28(0, &qword_10011AA48, sub_1000C6AB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C7BD0(uint64_t a1)
{
  sub_1000C6A28(0, &qword_10011AA48, sub_1000C6AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000C7C48(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1000178C0(a1, a2, a3 & 1);

  return result;
}

double sub_1000C7C84(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100017794(a1, a2, a3 & 1);

  return result;
}

void sub_1000C7CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000C7D34(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1000C6A28(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000C7DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000C6A28(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000C7DFC()
{
  sub_1000C658C(255);
  sub_1000C7490(&qword_10011AB00, sub_1000C658C, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

BOOL sub_1000C7E90(uint64_t a1)
{
  v2 = sub_1000D9480();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v20 - v6;
  v7 = sub_1000D9450();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = *(a1 + 16);
  v24 = a1;
  v25 = v13;
  v23 = v8 + 16;
  v22 = enum case for ExchangeStatus.open(_:);
  v14 = (v3 + 8);
  v20 = (v8 + 8);
  v21 = (v3 + 104);
  do
  {
    v17 = v12;
    if (v25 == v12)
    {
      break;
    }

    v18 = v7;
    (*(v8 + 16))(v11, v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, v7, v9);
    sub_1000D93F0();
    (*v21)(v27, v22, v2);
    sub_1000C9734(&qword_10011ABC8, &type metadata accessor for ExchangeStatus, &protocol conformance descriptor for ExchangeStatus);
    sub_1000DBAD0();
    sub_1000DBAD0();
    if (v30 == v28 && v31 == v29)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1000DC360();
    }

    v16 = *v14;
    (*v14)(v27, v2);
    v16(v26, v2);
    v7 = v18;
    (*v20)(v11, v18);

    v12 = v17 + 1;
  }

  while ((v15 & 1) == 0);
  return v25 != v17;
}

double sub_1000C81AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1000C95BC(0, &qword_1001152F0, &type metadata accessor for Date, &type metadata accessor for Optional);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_1000D9090();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v38 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000D9450();
  v13 = __chkstk_darwin(v37);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v18 = *(v12 + 16);
    v17 = v12 + 16;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v35 = *(v17 + 56);
    v36 = v18;
    v20 = (v10 + 48);
    v30 = v10;
    v33 = (v10 + 32);
    v34 = (v17 - 8);
    v21 = _swiftEmptyArrayStorage;
    v31 = v9;
    v32 = v5;
    do
    {
      v22 = v37;
      v23 = v17;
      v36(v15, v19, v37, v13);
      sub_1000D9400();
      sub_1000C977C(v5, v8);
      (*v34)(v15, v22);
      if ((*v20)(v8, 1, v9) == 1)
      {
        sub_1000C96A8(v8);
      }

      else
      {
        v24 = *v33;
        (*v33)(v38, v8, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10007B6D0(0, v21[2] + 1, 1, v21);
        }

        v26 = v21[2];
        v25 = v21[3];
        if (v26 >= v25 >> 1)
        {
          v21 = sub_10007B6D0((v25 > 1), v26 + 1, 1, v21);
        }

        v21[2] = v26 + 1;
        v27 = v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26;
        v9 = v31;
        v24(v27, v38, v31);
        v5 = v32;
      }

      v19 += v35;
      --v16;
      v17 = v23;
    }

    while (v16);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  sub_1000C8534(v21, v29);

  return result;
}

uint64_t sub_1000C8534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000D9090();
  __chkstk_darwin(*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_1000C9734(&qword_100116E58, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v21 = sub_1000DB8A0();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_1000C87E4()
{
  sub_10000299C();
  result = sub_1000DBE70();
  qword_100129050 = result;
  return result;
}

uint64_t sub_1000C884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a3;
  v98 = a4;
  sub_1000C95BC(0, &qword_1001152F0, &type metadata accessor for Date, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v85 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v82 - v10;
  __chkstk_darwin(v11);
  v89 = &v82 - v12;
  v13 = sub_1000D9090();
  v97 = *(v13 - 8);
  __chkstk_darwin(v13);
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v83 = &v82 - v16;
  __chkstk_darwin(v17);
  v87 = &v82 - v18;
  __chkstk_darwin(v19);
  v86 = &v82 - v20;
  __chkstk_darwin(v21);
  v95 = &v82 - v22;
  v96 = sub_1000D95E0();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C7C((v4 + 16), *(v4 + 40));
  sub_1000D98B0();
  v93 = v24;
  v92 = sub_1000D9540();
  if (qword_1001141D8 != -1)
  {
    swift_once();
  }

  v25 = qword_100129050;
  sub_1000C95BC(0, &qword_1001145E0, sub_100029DAC, &type metadata accessor for _ContiguousArrayStorage);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000E08A0;
  sub_1000C9734(&qword_100115308, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v27 = v25;
  v91 = v13;
  v28 = sub_1000DC320();
  v30 = v29;
  *(v26 + 56) = &type metadata for String;
  v31 = sub_100002AAC();
  *(v26 + 64) = v31;
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  sub_1000C95BC(0, &qword_10011ABB8, &type metadata accessor for WidgetQuote, &type metadata accessor for Array);
  *(v26 + 96) = v32;
  *(v26 + 104) = sub_1000C9620();
  *(v26 + 72) = a2;

  v33 = sub_1000DBDD0();
  sub_1000DA320("for date %{public}@, determining next refresh date with quotes %{public}@", 73, 2, &_mh_execute_header, v27, v33, v26);

  if (sub_1000C7E90(a2))
  {
    v34 = v93;
    sub_1000D95C0();
    v35 = qword_100129050;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1000DDD30;
    v99 = 0;
    v100 = 0xE000000000000000;
    v37 = v35;
    sub_1000DBC70();
    v38 = v99;
    v39 = v100;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v31;
    *(v36 + 32) = v38;
    *(v36 + 40) = v39;
    v40 = sub_1000DBDD0();
    sub_1000DA320("returning current date plus a %{public}@ second interval because an exchange is open", 84, 2, &_mh_execute_header, v37, v40, v36);

    v41 = v95;
    sub_1000D9030();
    v42 = v91;
    v43 = v97;
    goto LABEL_21;
  }

  v82 = a1;
  v43 = v97;
  if (v90 == 1)
  {
    v34 = v93;
    sub_1000D95A0();
    v44 = qword_100129050;
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1000DDD30;
    v99 = 0;
    v100 = 0xE000000000000000;
    v46 = v44;
    sub_1000DBC70();
    v47 = v99;
    v48 = v100;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = v31;
    *(v45 + 32) = v47;
    *(v45 + 40) = v48;
    v49 = sub_1000DBDD0();
    sub_1000DA320("returning current date plus a %{public}@ second interval bounded to next exchange open because exchanges are closed, but showing news in a small widget", 151, 2, &_mh_execute_header, v46, v49, v45);

    v50 = v89;
    v51 = sub_1000C81AC(a2, v89);
    v42 = v91;
    if ((*(v43 + 48))(v50, 1, v91, v51) == 1)
    {
      sub_1000C96A8(v50);
      v41 = v95;
LABEL_14:
      sub_1000D9030();
      goto LABEL_21;
    }

    v60 = *(v43 + 32);
    v61 = v86;
    v60(v86, v50, v42);
    v62 = v87;
  }

  else
  {
    v42 = v91;
    if (v90 < 2)
    {
      v63 = v85;
      v64 = sub_1000C81AC(a2, v85);
      if ((*(v43 + 48))(v63, 1, v42, v64) != 1)
      {
        v41 = v95;
        (*(v43 + 32))(v95, v63, v42);
        v75 = qword_100129050;
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_1000DDD30;
        v77 = v75;
        v78 = sub_1000DC320();
        *(v76 + 56) = &type metadata for String;
        *(v76 + 64) = v31;
        *(v76 + 32) = v78;
        *(v76 + 40) = v79;
        v80 = sub_1000DBDD0();
        sub_1000DA320("returning next exchange open date because exchanges are closed, and no news is shown, nextExchangeOpenDate=%{public}@", 117, 2, &_mh_execute_header, v77, v80, v76);

        v34 = v93;
        goto LABEL_21;
      }

      sub_1000C96A8(v63);
      v34 = v93;
      sub_1000D95C0();
      v65 = qword_100129050;
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1000DDD30;
      v99 = 0;
      v100 = 0xE000000000000000;
      v67 = v65;
      sub_1000DBC70();
      v68 = v99;
      v69 = v100;
      *(v66 + 56) = &type metadata for String;
      *(v66 + 64) = v31;
      *(v66 + 32) = v68;
      *(v66 + 40) = v69;
      v70 = sub_1000DBDD0();
      sub_1000DA320("returning current date plus a %{public}@ second interval because exchanges are closed, but we don't know a next open date", 121, 2, &_mh_execute_header, v67, v70, v66);

      v41 = v95;
      goto LABEL_14;
    }

    v34 = v93;
    sub_1000D9570();
    v52 = qword_100129050;
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1000DDD30;
    v99 = 0;
    v100 = 0xE000000000000000;
    v54 = v52;
    sub_1000DBC70();
    v55 = v99;
    v56 = v100;
    *(v53 + 56) = &type metadata for String;
    *(v53 + 64) = v31;
    *(v53 + 32) = v55;
    *(v53 + 40) = v56;
    v57 = sub_1000DBDD0();
    sub_1000DA320("returning current date plus a %{public}@ second interval bounded to next exchange open because exchanges are closed, but showing news in a widget", 145, 2, &_mh_execute_header, v54, v57, v53);

    v58 = v88;
    v59 = sub_1000C81AC(a2, v88);
    if ((*(v43 + 48))(v58, 1, v42, v59) == 1)
    {
      sub_1000C96A8(v58);
      v41 = v95;
      goto LABEL_14;
    }

    v60 = *(v43 + 32);
    v61 = v83;
    v60(v83, v58, v42);
    v62 = v84;
  }

  sub_1000D9030();
  sub_1000C9734(&qword_100116E58, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v71 = sub_1000DB8A0();
  v72 = *(v43 + 8);
  v41 = v95;
  if (v71)
  {
    v72(v62, v42);
    v73 = v41;
    v74 = v61;
  }

  else
  {
    v72(v61, v42);
    v73 = v41;
    v74 = v62;
  }

  v60(v73, v74, v42);
LABEL_21:
  static TimelineReloadPolicy.after(_:jitteredUpTo:)(v92);
  (*(v43 + 8))(v41, v42);
  return (*(v94 + 8))(v34, v96);
}

void static TimelineReloadPolicy.after(_:jitteredUpTo:)(double a3)
{
  v4 = sub_1000D9090();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C94F4(0.0, a3);
  sub_1000D9030();
  sub_1000DB730();
  (*(v5 + 8))(v7, v4);
  sub_1000C95BC(0, &qword_1001145E0, sub_100029DAC, &type metadata accessor for _ContiguousArrayStorage);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000DE440;
  sub_1000C9734(&qword_100115308, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v9 = sub_1000DC320();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100002AAC();
  *(v8 + 64) = v12;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = &type metadata for Double;
  *(v8 + 104) = &protocol witness table for Double;
  *(v8 + 72) = a3;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1000DB760();
  sub_1000DC0C0();
  v13 = v17;
  v14 = v18;
  *(v8 + 136) = &type metadata for String;
  *(v8 + 144) = v12;
  *(v8 + 112) = v13;
  *(v8 + 120) = v14;
  sub_10000299C();
  v15 = sub_1000DBE60();
  v16 = sub_1000DBDD0();
  sub_1000DA320("reload policy created after %{public}@, jittered up to %f is %{public}@", 71, 2, &_mh_execute_header, v15, v16, v8);
}

void sub_1000C94F4(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_stdlib_random();
  if (v4 * vcvtd_n_f64_u64(0, 0x35uLL) + a1 == a2)
  {
    sub_1000C94F4(a1, a2);
  }
}

void sub_1000C95BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000C9620()
{
  result = qword_10011ABC0;
  if (!qword_10011ABC0)
  {
    sub_1000C95BC(255, &qword_10011ABB8, &type metadata accessor for WidgetQuote, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ABC0);
  }

  return result;
}

uint64_t sub_1000C96A8(uint64_t a1)
{
  sub_1000C95BC(0, &qword_1001152F0, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C9734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000C977C(uint64_t a1, uint64_t a2)
{
  sub_1000C95BC(0, &qword_1001152F0, &type metadata accessor for Date, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C981C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000C9864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1000C98C4(char a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = "ring for 'Yahoo news'";
  if (a1)
  {
    v4 = " defined in CodingKeys.";
    v5._countAndFlagsBits = 0x654E206F6F686159;
  }

  else
  {
    v5._countAndFlagsBits = 0x654E20656C707041;
  }

  v9._countAndFlagsBits = v4 | 0x8000000000000000;
  v5._object = 0xEA00000000007377;
  v10.value._countAndFlagsBits = 0;
  v10.value._object = 0;
  v6.super.isa = v3;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v7 = sub_1000D8E50(v5, v10, v6, v11, 0xD000000000000025, v9);

  return v7;
}

uint64_t sub_1000C99B4(void *a1, int a2)
{
  v20 = a2;
  sub_1000CDD38(0, &qword_10011AC88, sub_1000CDB48, &type metadata for HeadlineAttribution.NewsSourceAttribution.YahooCodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v18 = *(v3 - 8);
  v19 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  sub_1000CDD38(0, &qword_10011AC90, sub_1000CDB9C, &type metadata for HeadlineAttribution.NewsSourceAttribution.AppleNewsCodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v16 = *(v6 - 8);
  v17 = v6;
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  sub_1000CDD38(0, &qword_10011AC98, sub_1000CDBF0, &type metadata for HeadlineAttribution.NewsSourceAttribution.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v10 = v9;
  v11 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v15 - v12;
  sub_100006C7C(a1, a1[3]);
  sub_1000CDBF0();
  sub_1000DC480();
  if (v20)
  {
    v22 = 1;
    sub_1000CDB48();
    sub_1000DC250();
    (*(v18 + 8))(v5, v19);
  }

  else
  {
    v21 = 0;
    sub_1000CDB9C();
    sub_1000DC250();
    (*(v16 + 8))(v8, v17);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1000C9CC8(void *a1)
{
  v2 = v1;
  v20 = *v2;
  v19[2] = *(v2 + 24);
  sub_1000CDD38(0, &qword_10011ACA0, sub_1000CDC90, &type metadata for HeadlineAttribution.PublisherAttribution.NameCodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v5 = v4;
  v19[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - v6;
  sub_1000CDD38(0, &qword_10011ACA8, sub_1000CDCE4, &type metadata for HeadlineAttribution.PublisherAttribution.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v9 = v8;
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - v10;
  sub_100006C7C(a1, a1[3]);
  sub_1000CDCE4();
  sub_1000DC480();
  if (*(v2 + 32))
  {
    sub_1000CDC90();
    sub_1000DC250();
    sub_1000DC2B0();
    (*(v19[0] + 8))(v7, v5);
  }

  else
  {
    v12 = sub_1000DC000();
    swift_allocError();
    v14 = v13;
    sub_1000CDDA0(0);
    v14[3] = &type metadata for HeadlineAttribution.PublisherAttribution;
    v15 = swift_allocObject();
    *v14 = v15;
    v16 = *(v2 + 16);
    *(v15 + 16) = *v2;
    *(v15 + 32) = v16;
    *(v15 + 48) = *(v2 + 32);
    v17 = v20;

    sub_1000DC260();
    sub_1000DBFE0();
    (*(*(v12 - 8) + 104))(v14, enum case for EncodingError.invalidValue(_:), v12);
    swift_willThrow();
  }

  return (*(v21 + 8))(v11, v9);
}

uint64_t sub_1000CA020(void *a1)
{
  v3 = v1;
  sub_1000CDD38(0, &qword_10011ABF0, sub_1000CD764, &type metadata for HeadlineAttribution.CodingKeys, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  sub_100006C7C(a1, a1[3]);
  sub_1000CD764();
  sub_1000DC480();
  LOBYTE(v12[0]) = *v3;
  v14 = 0;
  sub_1000CD860();
  sub_1000DC2A0();
  if (!v2)
  {
    v10 = *(v3 + 24);
    v12[0] = *(v3 + 8);
    v12[1] = v10;
    v13 = *(v3 + 40);
    v14 = 1;
    sub_1000CD8B4();
    sub_1000DC2F0();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000CA230(uint64_t a1)
{
  v2 = sub_1000CDB9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CA26C(uint64_t a1)
{
  v2 = sub_1000CDB9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CA2A8()
{
  if (*v0)
  {
    return 0x6F6F686179;
  }

  else
  {
    return 0x77654E656C707061;
  }
}

void sub_1000CA2E4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x77654E656C707061 && a2 == 0xE900000000000073;
  if (v6 || (sub_1000DC360() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F6F686179 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1000DC360();

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

uint64_t sub_1000CA3C4(uint64_t a1)
{
  v2 = sub_1000CDBF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CA400(uint64_t a1)
{
  v2 = sub_1000CDBF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CA43C(uint64_t a1)
{
  v2 = sub_1000CDB48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CA478(uint64_t a1)
{
  v2 = sub_1000CDB48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000CA4B4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000CCC40(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

Swift::Int sub_1000CA500()
{
  sub_1000DC420();
  sub_1000DB9F0();
  return sub_1000DC460();
}

Swift::Int sub_1000CA55C(uint64_t a1)
{
  sub_1000DC420();
  sub_1000DB9F0();
  return sub_1000DC460();
}

void sub_1000CA5A4(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100108EA0;
  v6._object = v3;
  v5 = sub_1000DC170(v4, v6);

  *a2 = v5 != 0;
}

void sub_1000CA61C(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_100108ED8;
  v7._object = a2;
  v6 = sub_1000DC170(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_1000CA674(uint64_t a1)
{
  v2 = sub_1000CDCE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CA6B0(uint64_t a1)
{
  v2 = sub_1000CDCE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000CA6F8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1000DC360();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1000CA778(uint64_t a1)
{
  v2 = sub_1000CDC90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CA7B4(uint64_t a1)
{
  v2 = sub_1000CDC90();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000CA7F0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000CD140(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1000CA850()
{
  if (*v0)
  {
    return 0x656873696C627570;
  }

  else
  {
    return 0x72756F537377656ELL;
  }
}

void sub_1000CA894(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72756F537377656ELL && a2 == 0xEA00000000006563;
  if (v6 || (sub_1000DC360() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656873696C627570 && a2 == 0xE900000000000072)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1000DC360();

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

uint64_t sub_1000CA980(uint64_t a1)
{
  v2 = sub_1000CD764();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000CA9BC(uint64_t a1)
{
  v2 = sub_1000CD764();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000CA9F8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000CD534(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1000CAA54@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v181 = a2;
  sub_1000CEFA4(0);
  v180 = v3;
  __chkstk_darwin(v3);
  v162 = &v143 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A52A8(0);
  __chkstk_darwin(v5 - 8);
  v154 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CF02C(0);
  v160 = *(v7 - 8);
  v161 = v7;
  __chkstk_darwin(v7);
  v159 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v171 = &v143 - v10;
  sub_1000CEBC8(0, &qword_10011AE98, sub_1000CEC4C, sub_1000CEFA4, &type metadata accessor for _ConditionalContent.Storage);
  v177 = v11;
  __chkstk_darwin(v11);
  v179 = &v143 - v12;
  sub_1000CEC4C(0);
  v178 = v13;
  __chkstk_darwin(v13);
  v158 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000DB3D0();
  v152 = *(v15 - 8);
  v153 = v15;
  __chkstk_darwin(v15);
  v151 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CF17C(0);
  v18 = __chkstk_darwin(v17 - 8);
  v150 = &v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CEEE8(0, v18);
  v156 = *(v20 - 8);
  v157 = v20;
  __chkstk_darwin(v20);
  v155 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v168 = &v143 - v23;
  v24 = sub_1000DB570();
  v147 = *(v24 - 8);
  v148 = v24;
  __chkstk_darwin(v24);
  v146 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CED60(0, &qword_10011AE48, sub_1000CEDC4, &type metadata for _FrameLayout);
  v164 = *(v26 - 8);
  v165 = v26;
  v27 = __chkstk_darwin(v26);
  v149 = &v143 - v28;
  sub_1000CECE4(0, v27);
  __chkstk_darwin(v29 - 8);
  v183 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v172 = &v143 - v32;
  v34 = __chkstk_darwin(v33);
  v182 = &v143 - v35;
  sub_1000CEB80(0, v34);
  __chkstk_darwin(v36 - 8);
  v176 = &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v175 = &v143 - v39;
  v40 = sub_1000DB720();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v143 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v44);
  v47 = &v143 - v46;
  sub_1000CE7F4(0, v45);
  v163 = v48;
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = &v143 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE75C(0);
  __chkstk_darwin(v52 - 8);
  v174 = &v143 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v57 = &v143 - v55;
  v58 = *a1;
  v184 = a1;
  v166 = v43;
  v167 = v47;
  v173 = &v143 - v55;
  v169 = v41;
  v170 = v40;
  v145 = v58;
  if (v58 == 2)
  {
    (*(v49 + 56))(&v143 - v55, 1, 1, v163, v56);
    v59 = *(a1 + 1);
    v60 = *(a1 + 2);
    if (a1[40])
    {
      (*(v164 + 56))(v183, 1, 1, v165);

      v144 = enum case for WidgetFamily.systemSmall(_:);
LABEL_6:
      *&v191 = v59;
      *(&v191 + 1) = v60;
      sub_100017740();
      v75 = sub_1000DB170();
      v77 = v76;
      v79 = v78;
      sub_1000DAFB0();
      v80 = sub_1000DAFA0();
      v81 = v154;
      (*(*(v80 - 8) + 56))(v154, 1, 1, v80);
      sub_1000DB000();
      sub_1000CF200(v81, sub_1000A52A8);
      v182 = sub_1000DB100();
      v83 = v82;
      v85 = v84;
      v87 = v86;

      sub_100017794(v75, v77, v79 & 1);

      KeyPath = swift_getKeyPath();
      sub_1000DB600();
      sub_1000DA7A0();
      *&v188[39] = v201;
      *&v188[23] = v200;
      *&v188[7] = v199;
      *(&v187[2] + 1) = *v188;
      v190 = v85 & 1;
      v189 = 0;
      *&v186 = v182;
      *(&v186 + 1) = v83;
      LOBYTE(v187[0]) = v85 & 1;
      *(&v187[0] + 1) = v87;
      *&v187[1] = KeyPath;
      *(&v187[1] + 1) = 1;
      LOBYTE(v187[2]) = 0;
      *(&v187[3] + 1) = *&v188[16];
      *(&v187[4] + 1) = *&v188[32];
      *&v187[5] = *(&v201 + 1);
      type metadata accessor for HeadlineAttributionView(0);
      v89 = v167;
      sub_10004C4D4(v167);
      v91 = v169;
      v90 = v170;
      v92 = v166;
      (*(v169 + 104))(v166, v144, v170);
      sub_1000CF1B8(&qword_100116638, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
      sub_1000DBAD0();
      sub_1000DBAD0();
      v93 = *(v91 + 8);
      v93(v92, v90);
      v93(v89, v90);
      sub_1000CF0E8(0);
      sub_1000CF764(&qword_10011AE90, sub_1000CF0E8, sub_1000177AC);
      v94 = v171;
      sub_1000DB1F0();
      v194[0] = v187[2];
      v194[1] = v187[3];
      v194[2] = v187[4];
      v195 = *&v187[5];
      v191 = v186;
      v192 = v187[0];
      v193 = v187[1];
      sub_1000CF200(&v191, sub_1000CF0E8);
      v95 = v172;
      sub_1000CF374(v183, v172, sub_1000CECE4);
      v96 = v159;
      v97 = v160;
      v98 = *(v160 + 16);
      v99 = v161;
      v98(v159, v94, v161);
      v100 = v162;
      sub_1000CF374(v95, v162, sub_1000CECE4);
      sub_1000CE6E0(0, &qword_10011AE78, sub_1000CECE4, sub_1000CF02C);
      v98((v100 + *(v101 + 48)), v96, v99);
      v102 = *(v97 + 8);
      v102(v96, v99);
      sub_1000CF260(v95, sub_1000CECE4);
      sub_1000CF374(v100, v179, sub_1000CEFA4);
      swift_storeEnumTagMultiPayload();
      sub_1000CF1B8(&qword_10011AEA0, sub_1000CEC4C, &protocol conformance descriptor for TupleView<A>);
      sub_1000CF1B8(&qword_10011AEA8, sub_1000CEFA4, &protocol conformance descriptor for TupleView<A>);
      v103 = v175;
      sub_1000DAD90();
      sub_1000CF260(v100, sub_1000CEFA4);
      v102(v171, v99);
      v104 = v183;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1000CC22C(v58 & 1, &v186);
    type metadata accessor for HeadlineAttributionView(0);
    sub_10004C4D4(v47);
    v61 = *(v41 + 104);
    v144 = enum case for WidgetFamily.systemSmall(_:);
    v61(v43);
    sub_1000CF1B8(&qword_100116638, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_1000DBAD0();
    sub_1000DBAD0();
    v62 = *(v41 + 8);
    v62(v43, v40);
    v62(v47, v40);
    sub_1000CE878(0, v63);
    sub_1000CE994(v64);
    v65 = v184;
    sub_1000DB1F0();
    v192 = v187[0];
    v193 = v187[1];
    v194[0] = v187[2];
    *(v194 + 9) = *(&v187[2] + 9);
    v191 = v186;
    sub_1000CF200(&v191, sub_1000CE878);
    v66 = v163;
    (*(v49 + 32))(v57, v51, v163);
    (*(v49 + 56))(v57, 0, 1, v66);
    v59 = *(v65 + 1);
    v60 = *(v65 + 2);
    if (v65[40])
    {

      v67 = v146;
      sub_1000DB560();
      *&v191 = swift_getKeyPath();
      BYTE8(v191) = 0;
      sub_1000CF1B8(&qword_10011AE58, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
      sub_1000CEE94();
      v69 = v148;
      v68 = v149;
      sub_1000DB240();

      (*(v147 + 8))(v67, v69);
      sub_1000DB600();
      sub_1000DA7A0();
      v70 = v165;
      v71 = &v68[*(v165 + 36)];
      v72 = v197;
      *v71 = v196;
      *(v71 + 1) = v72;
      *(v71 + 2) = v198;
      v73 = v68;
      v74 = v183;
      sub_1000CF2EC(v73, v183);
      (*(v164 + 56))(v74, 0, 1, v70);
      goto LABEL_6;
    }
  }

  v105 = v59;
  v106 = v169;
  v107 = v182;
  if (v145 == 2)
  {
    (*(v164 + 56))(v182, 1, 1, v165);
  }

  else
  {
    v108 = v146;
    sub_1000DB560();
    v109 = swift_getKeyPath();
    v183 = v105;
    *&v191 = v109;
    BYTE8(v191) = 0;
    sub_1000CF1B8(&qword_10011AE58, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    sub_1000CEE94();
    v111 = v148;
    v110 = v149;
    sub_1000DB240();

    (*(v147 + 8))(v108, v111);
    sub_1000DB600();
    sub_1000DA7A0();
    v112 = v165;
    v113 = (v110 + *(v165 + 36));
    v114 = v197;
    *v113 = v196;
    v113[1] = v114;
    v113[2] = v198;
    sub_1000CF2EC(v110, v107);
    v115 = v112;
    v105 = v183;
    (*(v164 + 56))(v107, 0, 1, v115);
  }

  v183 = v105;
  sub_1000DB3B0();
  v116 = enum case for Image.TemplateRenderingMode.template(_:);
  v117 = sub_1000DB400();
  v118 = *(v117 - 8);
  v119 = v150;
  (*(v118 + 104))(v150, v116, v117);
  (*(v118 + 56))(v119, 0, 1, v117);
  sub_1000DB3E0();

  sub_1000CF200(v119, sub_1000CF17C);
  v121 = v151;
  v120 = v152;
  v122 = v153;
  (*(v152 + 104))(v151, enum case for Image.ResizingMode.stretch(_:), v153);
  v123 = sub_1000DB430();

  (*(v120 + 8))(v121, v122);
  sub_1000DB600();
  sub_1000DA7A0();
  *&v185[38] = v201;
  *&v185[22] = v200;
  *&v185[6] = v199;
  *(v187 + 2) = *v185;
  v190 = 1;
  v186 = v123;
  LOWORD(v187[0]) = 1;
  *(&v187[1] + 2) = *&v185[16];
  *(&v187[2] + 2) = *&v185[32];
  *&v187[3] = *(&v201 + 1);
  type metadata accessor for HeadlineAttributionView(0);
  v124 = v167;
  sub_10004C4D4(v167);
  v125 = v166;
  v126 = v170;
  (*(v106 + 104))(v166, enum case for WidgetFamily.systemSmall(_:), v170);
  sub_1000CF1B8(&qword_100116638, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_1000DBAD0();
  sub_1000DBAD0();
  v127 = *(v106 + 8);
  v127(v125, v126);
  v127(v124, v126);
  sub_1000CE914(0, v128);
  sub_1000CF764(&qword_10011AE18, sub_1000CE914, sub_1000CEB08);
  v129 = v168;
  sub_1000DB1F0();
  v192 = v187[0];
  v193 = v187[1];
  v194[0] = v187[2];
  *&v194[1] = *&v187[3];
  v191 = v186;
  sub_1000CF200(&v191, sub_1000CE914);
  v130 = v172;
  sub_1000CF374(v182, v172, sub_1000CECE4);
  v132 = v155;
  v131 = v156;
  v133 = *(v156 + 16);
  v134 = v157;
  v133(v155, v129, v157);
  v135 = v158;
  sub_1000CF374(v130, v158, sub_1000CECE4);
  sub_1000CE6E0(0, &qword_10011AE38, sub_1000CECE4, sub_1000CEEE8);
  v133((v135 + *(v136 + 48)), v132, v134);
  v184 = *(v131 + 8);
  (v184)(v132, v134);
  sub_1000CF260(v130, sub_1000CECE4);
  sub_1000CF374(v135, v179, sub_1000CEC4C);
  swift_storeEnumTagMultiPayload();
  sub_1000CF1B8(&qword_10011AEA0, sub_1000CEC4C, &protocol conformance descriptor for TupleView<A>);
  sub_1000CF1B8(&qword_10011AEA8, sub_1000CEFA4, &protocol conformance descriptor for TupleView<A>);
  v103 = v175;
  sub_1000DAD90();

  sub_1000CF260(v135, sub_1000CEC4C);
  (v184)(v168, v134);
  v104 = v182;
LABEL_11:
  sub_1000CF260(v104, sub_1000CECE4);
  v137 = v181;
  v139 = v173;
  v138 = v174;
  sub_1000CF374(v173, v174, sub_1000CE75C);
  v140 = v176;
  sub_1000CF374(v103, v176, sub_1000CEB80);
  sub_1000CF374(v138, v137, sub_1000CE75C);
  sub_1000CE6E0(0, &qword_10011ADD0, sub_1000CE75C, sub_1000CEB80);
  sub_1000CF374(v140, v137 + *(v141 + 48), sub_1000CEB80);
  sub_1000CF260(v103, sub_1000CEB80);
  sub_1000CF260(v139, sub_1000CE75C);
  sub_1000CF260(v140, sub_1000CEB80);
  return sub_1000CF260(v138, sub_1000CE75C);
}

__n128 sub_1000CC22C@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1000CF17C(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000DB3D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_1000DB440();
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
    sub_1000DB430();

    (*(v9 + 8))(v11, v8);
    v12 = enum case for Image.TemplateRenderingMode.template(_:);
    v13 = sub_1000DB400();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v7, v12, v13);
    (*(v14 + 56))(v7, 0, 1, v13);
    v15 = sub_1000DB3E0();

    sub_1000CF200(v7, sub_1000CF17C);
    v36 = 1;
    v32 = 1;
    v25 = v15;
    v26 = 0;
    v27 = 1;
    v28 = v33;
    v29 = v34;
    v16 = *v35;
    *v30 = *v35;
    *&v30[14] = *&v35[14];
    v31 = 1;
  }

  else
  {
    sub_1000DB3F0();
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
    sub_1000DB430();

    (*(v9 + 8))(v11, v8);
    v17 = enum case for Image.TemplateRenderingMode.template(_:);
    v18 = sub_1000DB400();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v7, v17, v18);
    (*(v19 + 56))(v7, 0, 1, v18);
    v20 = sub_1000DB3E0();

    sub_1000CF200(v7, sub_1000CF17C);
    sub_1000DB600();
    sub_1000DA7A0();
    *&v24[38] = *v35;
    *&v24[22] = v34;
    *&v24[6] = v33;
    v28 = *v24;
    LOBYTE(v37) = 1;
    v36 = 0;
    v25 = v20;
    v26 = 0;
    v27 = 1;
    v29 = *&v24[16];
    v16 = *&v24[32];
    *v30 = *&v24[32];
    *&v30[14] = *&v35[8];
    v31 = 0;
  }

  sub_1000CE914(0, v16);
  sub_1000CE93C();
  sub_1000CF764(&qword_10011AE18, sub_1000CE914, sub_1000CEB08);
  sub_1000CEB08();
  sub_1000DAD90();
  v21 = v40[0];
  *(a2 + 32) = v39;
  *(a2 + 48) = v21;
  *(a2 + 57) = *(v40 + 9);
  result = v38;
  *a2 = v37;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1000CC6E8@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1000DAC80();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  sub_1000CE63C(0);
  return sub_1000CAA54(v2, a2 + *(v4 + 44));
}

double sub_1000CC730@<D0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_1000DAC10();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000DB320();
  KeyPath = swift_getKeyPath();
  sub_1000DAE10();
  v12 = sub_1000DAF00();
  if (v12 != sub_1000DAF00())
  {
    if (a2)
    {
      v17 = a1;
      goto LABEL_7;
    }

LABEL_6:

    sub_1000DBDC0();
    v13 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();
    sub_10002F3F0(a1, 0);
    (*(v7 + 8))(v9, v6);
    goto LABEL_7;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v17 = a1;
LABEL_7:
  sub_1000DB600();
  sub_1000DA7A0();
  *a3 = KeyPath;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0x3FE8000000000000;
  v14 = v19;
  *(a3 + 24) = v18;
  *(a3 + 40) = v14;
  result = *&v20;
  *(a3 + 56) = v20;
  return result;
}

double sub_1000CC9D0@<D0>(uint64_t a1@<X8>)
{
  sub_1000DB620();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1000CCA14@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ShapeRole.separator(_:);
  v3 = sub_1000DB630();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void (*sub_1000CCAA4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000DA670();
  return sub_100027D30;
}

uint64_t sub_1000CCB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CF9EC();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000CCB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CF9EC();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000CCBF4(uint64_t a1)
{
  v2 = sub_1000CF9EC();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_1000CCC40(void *a1)
{
  sub_1000CDD38(0, &qword_10011AC28, sub_1000CDB48, &type metadata for HeadlineAttribution.NewsSourceAttribution.YahooCodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v25 = v2;
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v23 - v3;
  sub_1000CDD38(0, &qword_10011AC38, sub_1000CDB9C, &type metadata for HeadlineAttribution.NewsSourceAttribution.AppleNewsCodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v5 = v4;
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  sub_1000CDD38(0, &qword_10011AC48, sub_1000CDBF0, &type metadata for HeadlineAttribution.NewsSourceAttribution.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v9 = v8;
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  sub_100006C7C(a1, a1[3]);
  sub_1000CDBF0();
  v12 = v30;
  sub_1000DC470();
  if (v12)
  {
    goto LABEL_6;
  }

  v13 = v26;
  v14 = v27;
  v24 = v5;
  v15 = v28;
  v30 = a1;
  v16 = v11;
  v17 = sub_1000DC230();
  if (*(v17 + 16) != 1)
  {
    v11 = sub_1000DBFD0();
    swift_allocError();
    v20 = v19;
    sub_1000CE6E0(0, &qword_10011AC58, sub_1000CDC44, &type metadata accessor for DecodingError.Context);
    *v20 = &type metadata for HeadlineAttribution.NewsSourceAttribution;
    sub_1000DC190();
    sub_1000DBFC0();
    (*(*(v11 - 8) + 104))(v20, enum case for DecodingError.typeMismatch(_:), v11);
    swift_willThrow();
    (*(v29 + 8))(v16, v9);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_6:
    sub_100006D0C(a1);
    return v11;
  }

  v11 = *(v17 + 32);
  if (v11)
  {
    LODWORD(v26) = *(v17 + 32);
    v32 = 1;
    sub_1000CDB48();
    sub_1000DC180();
    v18 = v29;
    (*(v15 + 8))(v14, v25);
    (*(v18 + 8))(v16, v9);
    swift_unknownObjectRelease();
    v11 = v26;
  }

  else
  {
    v31 = 0;
    sub_1000CDB9C();
    sub_1000DC180();
    v22 = v29;
    (*(v13 + 8))(v7, v24);
    (*(v22 + 8))(v16, v9);
    swift_unknownObjectRelease();
  }

  sub_100006D0C(v30);
  return v11;
}

uint64_t sub_1000CD140@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  sub_1000CDD38(0, &qword_10011AC68, sub_1000CDC90, &type metadata for HeadlineAttribution.PublisherAttribution.NameCodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v4 = v3;
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  sub_1000CDD38(0, &qword_10011AC78, sub_1000CDCE4, &type metadata for HeadlineAttribution.PublisherAttribution.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v8 = v7;
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  sub_100006C7C(a1, a1[3]);
  sub_1000CDCE4();
  v11 = v29;
  sub_1000DC470();
  if (!v11)
  {
    v12 = v27;
    v29 = a1;
    if (*(sub_1000DC230() + 16) == 1)
    {
      sub_1000CDC90();
      v13 = v8;
      sub_1000DC180();
      v17 = sub_1000DC1E0();
      v18 = v28;
      v19 = v17;
      v20 = v6;
      v22 = v21;
      (*(v12 + 8))(v20, v4);
      (*(v18 + 8))(v10, v13);
      swift_unknownObjectRelease();
      result = sub_100006D0C(v29);
      v24 = v26;
      *v26 = v19;
      v24[1] = v22;
      v24[2] = 0;
      v24[3] = 0;
      *(v24 + 32) = 1;
      return result;
    }

    v14 = sub_1000DBFD0();
    swift_allocError();
    v16 = v15;
    sub_1000CE6E0(0, &qword_10011AC58, sub_1000CDC44, &type metadata accessor for DecodingError.Context);
    *v16 = &type metadata for HeadlineAttribution.PublisherAttribution;
    sub_1000DC190();
    sub_1000DBFC0();
    (*(*(v14 - 8) + 104))(v16, enum case for DecodingError.typeMismatch(_:), v14);
    swift_willThrow();
    (*(v28 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v29;
  }

  return sub_100006D0C(a1);
}

uint64_t sub_1000CD534@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1000CDD38(0, &qword_10011ABD0, sub_1000CD764, &type metadata for HeadlineAttribution.CodingKeys, &type metadata accessor for KeyedDecodingContainer);
  v5 = v4;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  sub_100006C7C(a1, a1[3]);
  sub_1000CD764();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v9 = v6;
  v10 = v17;
  v21 = 0;
  sub_1000CD7B8();
  sub_1000DC1D0();
  v11 = v18;
  v21 = 1;
  sub_1000CD80C();
  sub_1000DC220();
  (*(v9 + 8))(v8, v5);
  v12 = v20;
  v15 = v19;
  v16 = v18;
  result = sub_100006D0C(a1);
  *v10 = v11;
  v14 = v16;
  *(v10 + 24) = v15;
  *(v10 + 8) = v14;
  *(v10 + 40) = v12;
  return result;
}

unint64_t sub_1000CD764()
{
  result = qword_10011ABD8;
  if (!qword_10011ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ABD8);
  }

  return result;
}

unint64_t sub_1000CD7B8()
{
  result = qword_10011ABE0;
  if (!qword_10011ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ABE0);
  }

  return result;
}

unint64_t sub_1000CD80C()
{
  result = qword_10011ABE8;
  if (!qword_10011ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ABE8);
  }

  return result;
}

unint64_t sub_1000CD860()
{
  result = qword_10011ABF8;
  if (!qword_10011ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ABF8);
  }

  return result;
}

unint64_t sub_1000CD8B4()
{
  result = qword_10011AC00;
  if (!qword_10011AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC00);
  }

  return result;
}

__n128 sub_1000CD918(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000CD92C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000CD974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000CD9EC()
{
  result = qword_10011AC08;
  if (!qword_10011AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC08);
  }

  return result;
}

unint64_t sub_1000CDA44()
{
  result = qword_10011AC10;
  if (!qword_10011AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC10);
  }

  return result;
}

unint64_t sub_1000CDA9C()
{
  result = qword_10011AC18;
  if (!qword_10011AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC18);
  }

  return result;
}

unint64_t sub_1000CDAF4()
{
  result = qword_10011AC20;
  if (!qword_10011AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC20);
  }

  return result;
}

unint64_t sub_1000CDB48()
{
  result = qword_10011AC30;
  if (!qword_10011AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC30);
  }

  return result;
}

unint64_t sub_1000CDB9C()
{
  result = qword_10011AC40;
  if (!qword_10011AC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC40);
  }

  return result;
}

unint64_t sub_1000CDBF0()
{
  result = qword_10011AC50;
  if (!qword_10011AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC50);
  }

  return result;
}

unint64_t sub_1000CDC44()
{
  result = qword_10011AC60;
  if (!qword_10011AC60)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_10011AC60);
  }

  return result;
}

unint64_t sub_1000CDC90()
{
  result = qword_10011AC70;
  if (!qword_10011AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC70);
  }

  return result;
}

unint64_t sub_1000CDCE4()
{
  result = qword_10011AC80;
  if (!qword_10011AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AC80);
  }

  return result;
}

void sub_1000CDD38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1000CDDA0(uint64_t a1)
{
  if (!qword_10011ACB0)
  {
    sub_1000DBFF0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10011ACB0);
    }
  }
}

uint64_t sub_1000CDE0C()
{
  sub_1000101A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

unint64_t sub_1000CDEA8()
{
  result = qword_10011ACB8;
  if (!qword_10011ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACB8);
  }

  return result;
}

unint64_t sub_1000CDF00()
{
  result = qword_10011ACC0;
  if (!qword_10011ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACC0);
  }

  return result;
}

unint64_t sub_1000CDF58()
{
  result = qword_10011ACC8;
  if (!qword_10011ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACC8);
  }

  return result;
}

unint64_t sub_1000CDFB0()
{
  result = qword_10011ACD0;
  if (!qword_10011ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACD0);
  }

  return result;
}

unint64_t sub_1000CE008()
{
  result = qword_10011ACD8;
  if (!qword_10011ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACD8);
  }

  return result;
}

unint64_t sub_1000CE060()
{
  result = qword_10011ACE0;
  if (!qword_10011ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACE0);
  }

  return result;
}

unint64_t sub_1000CE0B8()
{
  result = qword_10011ACE8;
  if (!qword_10011ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACE8);
  }

  return result;
}

unint64_t sub_1000CE110()
{
  result = qword_10011ACF0;
  if (!qword_10011ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACF0);
  }

  return result;
}

unint64_t sub_1000CE168()
{
  result = qword_10011ACF8;
  if (!qword_10011ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011ACF8);
  }

  return result;
}

unint64_t sub_1000CE1C0()
{
  result = qword_10011AD00;
  if (!qword_10011AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AD00);
  }

  return result;
}

unint64_t sub_1000CE218()
{
  result = qword_10011AD08;
  if (!qword_10011AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AD08);
  }

  return result;
}

unint64_t sub_1000CE270()
{
  result = qword_10011AD10;
  if (!qword_10011AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AD10);
  }

  return result;
}

unint64_t sub_1000CE2C8()
{
  result = qword_10011AD18;
  if (!qword_10011AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AD18);
  }

  return result;
}

uint64_t sub_1000CE330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
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
    sub_1000CE790(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000CE41C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
  }

  else
  {
    sub_1000CE790(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata accessor for HeadlineAttributionView(uint64_t a1)
{
  result = qword_10011AD78;
  if (!qword_10011AD78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CE538(uint64_t a1)
{
  sub_1000CE790(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000CF714(319, &unk_10011AD88, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000CE63C(uint64_t a1)
{
  if (!qword_10011ADC0)
  {
    sub_1000CE6A4(255);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_10011ADC0);
    }
  }
}

void sub_1000CE6E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1000CE790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000CE7F4(uint64_t a1, __n128 a2)
{
  if (!qword_10011ADE0)
  {
    sub_1000CE878(255, a2);
    sub_1000CE994(v2);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011ADE0);
    }
  }
}

void sub_1000CE878(uint64_t a1, __n128 a2)
{
  if (!qword_10011ADE8)
  {
    sub_1000CEBC8(255, &qword_10011ADF0, sub_1000CE914, sub_1000CE93C, &type metadata accessor for _ConditionalContent);
    v2 = sub_1000DB3A0();
    if (!v3)
    {
      atomic_store(v2, &qword_10011ADE8);
    }
  }
}

void sub_1000CE93C()
{
  if (!qword_10011AE00)
  {
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_10011AE00);
    }
  }
}

unint64_t sub_1000CE994(__n128 a1)
{
  result = qword_10011AE08;
  if (!qword_10011AE08)
  {
    sub_1000CE878(255, a1);
    sub_1000CEA0C(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AE08);
  }

  return result;
}

unint64_t sub_1000CEA0C(__n128 a1)
{
  result = qword_10011AE10;
  if (!qword_10011AE10)
  {
    sub_1000CEBC8(255, &qword_10011ADF0, sub_1000CE914, sub_1000CE93C, &type metadata accessor for _ConditionalContent);
    sub_1000CF764(&qword_10011AE18, sub_1000CE914, sub_1000CEB08);
    sub_1000CEB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AE10);
  }

  return result;
}

unint64_t sub_1000CEB08()
{
  result = qword_10011AE20;
  if (!qword_10011AE20)
  {
    sub_1000CE93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AE20);
  }

  return result;
}

void sub_1000CEBC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1000CEC88(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1000CE6E0(255, a3, a4, a5);
    v6 = sub_1000DB650();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000CECE4(uint64_t a1, __n128 a2)
{
  if (!qword_10011AE40)
  {
    sub_1000CED60(255, &qword_10011AE48, sub_1000CEDC4, &type metadata for _FrameLayout);
    v2 = sub_1000DBE80();
    if (!v3)
    {
      atomic_store(v2, &qword_10011AE40);
    }
  }
}

void sub_1000CED60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1000DA930();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000CEDC4(uint64_t a1)
{
  if (!qword_10011AE50)
  {
    sub_1000DB570();
    sub_1000CF1B8(&qword_10011AE58, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    sub_1000CEE94();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AE50);
    }
  }
}

unint64_t sub_1000CEE94()
{
  result = qword_10011AE60;
  if (!qword_10011AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AE60);
  }

  return result;
}

void sub_1000CEEE8(uint64_t a1, __n128 a2)
{
  if (!qword_10011AE68)
  {
    sub_1000CE914(255, a2);
    sub_1000CF764(&qword_10011AE18, sub_1000CE914, sub_1000CEB08);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AE68);
    }
  }
}

void sub_1000CEFA4(uint64_t a1)
{
  if (!qword_10011AE70)
  {
    sub_1000CE6E0(255, &qword_10011AE78, sub_1000CECE4, sub_1000CF02C);
    v1 = sub_1000DB650();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AE70);
    }
  }
}

void sub_1000CF02C(uint64_t a1)
{
  if (!qword_10011AE80)
  {
    sub_1000CF0E8(255);
    sub_1000CF764(&qword_10011AE90, sub_1000CF0E8, sub_1000177AC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AE80);
    }
  }
}

void sub_1000CF110(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1000CF714(255, a3, a4, &type metadata accessor for Optional);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000CF1B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000CF200(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CF260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CF2EC(uint64_t a1, uint64_t a2)
{
  sub_1000CED60(0, &qword_10011AE48, sub_1000CEDC4, &type metadata for _FrameLayout);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CF374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CF3E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000CF430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1000CF4CC(uint64_t a1)
{
  if (!qword_10011AEB8)
  {
    sub_1000CE6A4(255);
    sub_1000CF1B8(&qword_10011AEC0, sub_1000CE6A4, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AEB8);
    }
  }
}

unint64_t sub_1000CF598()
{
  result = qword_10011AEC8;
  if (!qword_10011AEC8)
  {
    sub_1000CED60(255, &qword_10011AED0, sub_1000CF674, &type metadata for _FrameLayout);
    sub_1000CF764(&qword_10011AEE8, sub_1000CF674, sub_1000CF7E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AEC8);
  }

  return result;
}

void sub_1000CF69C(uint64_t a1)
{
  if (!qword_10011AEE0)
  {
    sub_1000CF110(255, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AEE0);
    }
  }
}

void sub_1000CF714(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000CF764(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000CF7E4()
{
  result = qword_10011AEF0;
  if (!qword_10011AEF0)
  {
    sub_1000CF69C(255);
    sub_1000CF884();
    sub_1000CF8D8(&qword_1001159D0, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AEF0);
  }

  return result;
}

unint64_t sub_1000CF884()
{
  result = qword_10011AEF8;
  if (!qword_10011AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AEF8);
  }

  return result;
}

uint64_t sub_1000CF8D8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000CF110(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000CF970(uint64_t a1)
{
  if (!qword_10011AF08)
  {
    sub_1000CF9EC();
    v1 = sub_1000DA6A0();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AF08);
    }
  }
}

unint64_t sub_1000CF9EC()
{
  result = qword_10011AF10;
  if (!qword_10011AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AF10);
  }

  return result;
}

unint64_t sub_1000CFA44()
{
  result = qword_10011AF18;
  if (!qword_10011AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011AF18);
  }

  return result;
}

uint64_t sub_1000CFAC4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1000CFC7C(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  sub_1000CFC7C(0, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for DetailTimelineEntry(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1000CFC7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000CFCF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000CFC7C(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1000CFC7C(0, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for DetailTimelineEntry(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for DetailComplicationContentView(uint64_t a1)
{
  result = qword_10011AF78;
  if (!qword_10011AF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CFEF4(uint64_t a1)
{
  sub_1000CFC7C(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000CFC7C(319, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DetailTimelineEntry(319);
      if (v3 <= 0x3F)
      {
        sub_10002F2F8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000D0024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000D488C(0, &qword_1001197B8, &type metadata accessor for _ConditionalContent.Storage);
  v5 = v4;
  __chkstk_darwin(v4);
  v7 = v43 - v6;
  sub_1000A5980(0, &qword_1001197C0, &type metadata accessor for _ConditionalContent.Storage);
  __chkstk_darwin(v8);
  v10 = v43 - v9;
  sub_1000A4B80(0);
  v43[2] = v11;
  __chkstk_darwin(v11);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002D6E4(0);
  v15 = v14;
  __chkstk_darwin(v14);
  v17 = (v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1 + *(type metadata accessor for DetailComplicationContentView(0) + 24);
  v19 = type metadata accessor for DetailTimelineEntry(0);
  v20 = *(v18 + *(v19 + 20) + 137);
  if (v20 == 2)
  {
    if (*(v18 + *(v19 + 32)) == 1)
    {
      sub_1000DB050();
      sub_1000DAFD0();
      sub_1000DB010();

      v21 = sub_1000DB100();
      v23 = v22;
      v25 = v24;
      v27 = v26;

      *&v44 = v21;
      *(&v44 + 1) = v23;
      *&v45 = v25 & 1;
      *(&v45 + 1) = v27;
      v46 = 0;
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v46 = 1;
    }

    sub_1000DAD90();
    v34 = v48;
    v35 = v49;
    *v7 = v47;
    *(v7 + 1) = v34;
    v7[32] = v35;
    swift_storeEnumTagMultiPayload();
    sub_1000D525C(0, &qword_100119730, &type metadata for Text, &type metadata for EmptyView, &type metadata accessor for _ConditionalContent);
    sub_1000A59E4();
    sub_1000A5B0C();
    return sub_1000DAD90();
  }

  else
  {
    v43[0] = v5;
    v43[1] = a2;
    if (v20)
    {
      v28 = sub_1000DB3C0();
      v29 = (v17 + *(v15 + 36));
      sub_1000A4C0C(0);
      v31 = *(v30 + 28);
      v32 = enum case for Image.Scale.small(_:);
      v33 = sub_1000DB410();
      (*(*(v33 - 8) + 104))(v29 + v31, v32, v33);
      *v29 = swift_getKeyPath();
      *v17 = v28;
    }

    else
    {
      v37 = sub_1000DB3C0();
      v38 = (v17 + *(v15 + 36));
      sub_1000A4C0C(0);
      v40 = *(v39 + 28);
      v41 = enum case for Image.Scale.small(_:);
      v42 = sub_1000DB410();
      (*(*(v42 - 8) + 104))(v38 + v40, v41, v42);
      *v38 = swift_getKeyPath();
      *v17 = v37;
    }

    sub_1000D6014(v17, v10, sub_10002D6E4);
    swift_storeEnumTagMultiPayload();
    sub_1000A5A5C();
    sub_1000DAD90();
    sub_1000D6014(v13, v7, sub_1000A4B80);
    swift_storeEnumTagMultiPayload();
    sub_1000D525C(0, &qword_100119730, &type metadata for Text, &type metadata for EmptyView, &type metadata accessor for _ConditionalContent);
    sub_1000A59E4();
    sub_1000A5B0C();
    sub_1000DAD90();
    sub_1000D607C(v13, sub_1000A4B80);
    return sub_1000D607C(v17, sub_10002D6E4);
  }
}

uint64_t sub_1000D05A4@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  sub_1000D4D68(0, &qword_10011AFB8, sub_1000D4360, &type metadata for EmptyView, &type metadata accessor for _ConditionalContent.Storage);
  v59 = v2;
  __chkstk_darwin(v2);
  v4 = &v51 - v3;
  sub_1000D4B70(0);
  v61 = v5;
  v6 = __chkstk_darwin(v5);
  v60 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4360(0, v6);
  v58 = v8;
  v9 = __chkstk_darwin(v8);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4BAC(0, v9);
  v56 = v11;
  __chkstk_darwin(v11);
  v52 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D6180(0, &qword_10011B100, sub_1000D5360, sub_1000D4B70, &type metadata accessor for _ConditionalContent.Storage);
  v14 = v13;
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  sub_1000D6180(0, &qword_10011B178, sub_1000D53A8, sub_1000D4BAC, &type metadata accessor for _ConditionalContent.Storage);
  v54 = v17;
  v18 = __chkstk_darwin(v17);
  v20 = &v51 - v19;
  sub_1000D5360(0, v18);
  v22 = v21;
  v23 = __chkstk_darwin(v21);
  v55 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D53A8(0, v23);
  v53 = v25;
  __chkstk_darwin(v25);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000DB720();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004C4D4(v31);
  v32 = (*(v29 + 88))(v31, v28);
  if (v32 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v33 = type metadata accessor for DetailComplicationContentView(0);
    v34 = v57;
    sub_1000D1B30(v1 + *(v33 + 24), v57);
    sub_1000D5D54(v34, v4, sub_1000D4360);
    swift_storeEnumTagMultiPayload();
    sub_1000D58C0(v35);
    v36 = v60;
    sub_1000DAD90();
    sub_1000D5D54(v36, v16, sub_1000D4B70);
    swift_storeEnumTagMultiPayload();
    sub_1000D59D0();
    sub_1000D5CD4();
    sub_1000DAD90();
    sub_1000D5EFC(v36, sub_1000D4B70);
    v37 = sub_1000D4360;
LABEL_5:
    v43 = v37;
    v44 = v34;
    return sub_1000D5EFC(v44, v43);
  }

  v38 = v60;
  v51 = v14;
  v57 = v22;
  if (v32 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v39 = type metadata accessor for DetailComplicationContentView(0);
    v34 = v52;
    sub_1000D14CC(v1 + *(v39 + 24), v52);
    sub_1000D5D54(v34, v20, sub_1000D4BAC);
    swift_storeEnumTagMultiPayload();
    sub_1000D5AA4(v40);
    sub_1000D5BBC(v41);
    v42 = v55;
    sub_1000DAD90();
    sub_1000D5D54(v42, v16, sub_1000D5360);
    swift_storeEnumTagMultiPayload();
    sub_1000D59D0();
    sub_1000D5CD4();
    sub_1000DAD90();
    sub_1000D5EFC(v42, sub_1000D5360);
    v37 = sub_1000D4BAC;
    goto LABEL_5;
  }

  if (v32 != enum case for WidgetFamily.accessoryInline(_:))
  {
    swift_storeEnumTagMultiPayload();
    sub_1000D58C0(v50);
    sub_1000DAD90();
    sub_1000D5D54(v38, v16, sub_1000D4B70);
    swift_storeEnumTagMultiPayload();
    sub_1000D59D0();
    sub_1000D5CD4();
    sub_1000DAD90();
    sub_1000D5EFC(v38, sub_1000D4B70);
    return (*(v29 + 8))(v31, v28);
  }

  v46 = type metadata accessor for DetailComplicationContentView(0);
  sub_1000D0DAC(v1 + *(v46 + 24), v27);
  sub_1000D5D54(v27, v20, sub_1000D53A8);
  swift_storeEnumTagMultiPayload();
  sub_1000D5AA4(v47);
  sub_1000D5BBC(v48);
  v49 = v55;
  sub_1000DAD90();
  sub_1000D5D54(v49, v16, sub_1000D5360);
  swift_storeEnumTagMultiPayload();
  sub_1000D59D0();
  sub_1000D5CD4();
  sub_1000DAD90();
  sub_1000D5EFC(v49, sub_1000D5360);
  v43 = sub_1000D53A8;
  v44 = v27;
  return sub_1000D5EFC(v44, v43);
}

uint64_t sub_1000D0DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v61 = _s11FormatStyleVMa_0(0);
  __chkstk_darwin(v61);
  v56 = (&v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000DAE60();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000DA980();
  v50 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D556C(0, v9);
  v49 = v12;
  __chkstk_darwin(v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D5524(0);
  v16 = v15;
  v51 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D5454(0, &qword_10011B118, sub_1000D5524, sub_1000D556C, sub_1000D5760);
  v52 = *(v19 - 8);
  v53 = v19;
  v20 = __chkstk_darwin(v19);
  v22 = &v49 - v21;
  sub_1000D53A8(0, v20);
  v57 = v23;
  __chkstk_darwin(v23);
  v54 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DetailContentViewModel(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DetailTimelineEntry(0);
  sub_1000D6014(a1 + *(v28 + 20), v27, type metadata accessor for DetailContentViewModel);
  v60 = v3;
  v63 = v27;
  sub_1000D2468(a1, v3, v27);
  if (*(a1 + *(v28 + 32)) == 1)
  {
    sub_1000DA970();
  }

  else
  {
    v66 = _swiftEmptyArrayStorage;
    sub_1000D5E48(&qword_100115C40, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    sub_1000326FC(0);
    sub_1000D5E48(&qword_100115C50, sub_1000326FC, &protocol conformance descriptor for [A]);
    sub_1000DBEE0();
  }

  v30 = sub_1000D5760(v29);
  v31 = v49;
  sub_1000DB2F0();
  (*(v50 + 8))(v11, v8);
  sub_1000D607C(v14, sub_1000D556C);
  v32 = v55;
  sub_1000DAE30();
  v66 = v31;
  v67 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000DB2A0();
  (*(v58 + 8))(v32, v59);
  (*(v51 + 8))(v18, v16);
  v34 = *(v63 + 3);
  v66 = *(v63 + 2);
  v67 = v34;
  v64 = v16;
  v65 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100017740();
  v36 = v53;
  v35 = v54;
  sub_1000DB280();
  (*(v52 + 8))(v22, v36);
  v37 = v60 + *(type metadata accessor for DetailComplicationContentView(0) + 24) + *(v28 + 20);
  v38 = *(v37 + 80);
  v39 = *(v37 + 88);
  v40 = *(v37 + 112);
  LOBYTE(v32) = *(v37 + 120);
  v41 = *(v37 + 128);
  LOBYTE(v36) = *(v37 + 136);
  v42 = v56;
  sub_10004CF98(v56);
  v43 = v61;
  *(v42 + *(v61 + 20)) = 0;
  *(v42 + v43[6]) = 0;
  *(v42 + v43[7]) = 1;
  v44 = (v42 + v43[8]);
  *v44 = 0;
  v44[1] = 0xE000000000000000;
  v45 = sub_100086C3C(v38, v39, v40, v32, v41, v36);
  v47 = v46;
  sub_1000D607C(v42, _s11FormatStyleVMa_0);
  v66 = v45;
  v67 = v47;
  sub_1000DA920();

  sub_1000D5EFC(v35, sub_1000D53A8);
  return sub_1000D607C(v63, type metadata accessor for DetailContentViewModel);
}

uint64_t sub_1000D14CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1000DAE60();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000DA980();
  v37 = *(v45 - 8);
  __chkstk_darwin(v45);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4D2C(0);
  v8 = v7;
  v9 = __chkstk_darwin(v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4C58(0, v9);
  v13 = v12;
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D5454(0, &qword_10011B070, sub_1000D4C58, sub_1000D4D2C, sub_1000D52B0);
  v39 = *(v16 - 8);
  v40 = v16;
  v17 = __chkstk_darwin(v16);
  v19 = v36 - v18;
  sub_1000D4BAC(0, v17);
  v36[1] = v20;
  __chkstk_darwin(v20);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DetailContentViewModel(0);
  __chkstk_darwin(v23 - 8);
  v25 = (v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for DetailTimelineEntry(0);
  sub_1000D6014(a1 + *(v26 + 20), v25, type metadata accessor for DetailContentViewModel);
  *v11 = sub_1000DAD10();
  *(v11 + 1) = 0;
  v11[16] = 0;
  sub_1000D5E90(0, &qword_10011B1B8, sub_1000D4E68, &type metadata for _VStackLayout, &protocol witness table for _VStackLayout);
  sub_1000D2D08(a1, v46, v25, &v11[*(v27 + 44)], v28);
  *&v11[*(v8 + 36)] = xmmword_1000E7760;
  if (*(a1 + *(v26 + 32)) == 1)
  {
    sub_1000DA970();
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
    sub_1000D5E48(&qword_100115C40, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    sub_1000326FC(0);
    sub_1000D5E48(&qword_100115C50, sub_1000326FC, &protocol conformance descriptor for [A]);
    sub_1000DBEE0();
  }

  v29 = sub_1000D52B0();
  sub_1000DB2F0();
  (*(v37 + 8))(v6, v45);
  sub_1000D607C(v11, sub_1000D4D2C);
  v30 = v41;
  sub_1000DAE30();
  v49 = v8;
  v50 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000DB2A0();
  (*(v42 + 8))(v30, v43);
  (*(v38 + 8))(v15, v13);
  v32 = v25[3];
  v49 = v25[2];
  v50 = v32;
  v47 = v13;
  v48 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100017740();
  v33 = v40;
  sub_1000DB280();
  (*(v39 + 8))(v19, v33);
  v49 = sub_1000D1FBC();
  v50 = v34;
  sub_1000DA920();

  sub_1000D5EFC(v22, sub_1000D4BAC);
  return sub_1000D607C(v25, type metadata accessor for DetailContentViewModel);
}

uint64_t sub_1000D1B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = _s11FormatStyleVMa_0(0);
  v6 = (v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = sub_1000DAE60();
  v9 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D445C(0);
  v13 = v12;
  v14 = __chkstk_darwin(v12);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D43A8(0, v14);
  v42 = *(v17 - 8);
  v43 = v17;
  v18 = __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4360(0, v18);
  v45 = v21;
  __chkstk_darwin(v21);
  v40 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DetailTimelineEntry(0);
  v23 = (a1 + *(v41 + 20));
  *v16 = sub_1000DB600();
  v16[1] = v24;
  sub_1000D5E90(0, &qword_10011B1D8, sub_1000D44F0, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);
  sub_1000D36EC(v3, a1, v23, v16 + *(v25 + 44));
  sub_1000DAE30();
  v26 = sub_1000D5E48(&qword_10011B058, sub_1000D445C, &protocol conformance descriptor for ZStack<A>);
  sub_1000DB2A0();
  (*(v9 + 8))(v11, v44);
  sub_1000D5EFC(v16, sub_1000D445C);
  v27 = v23[3];
  v49 = v23[2];
  v50 = v27;
  v47 = v13;
  v48 = v26;
  swift_getOpaqueTypeConformance2();
  v44 = sub_100017740();
  v28 = v40;
  v29 = v43;
  sub_1000DB280();
  (*(v42 + 8))(v20, v29);
  v30 = v39 + *(type metadata accessor for DetailComplicationContentView(0) + 24) + *(v41 + 20);
  v31 = *(v30 + 80);
  LOBYTE(v29) = *(v30 + 88);
  v32 = *(v30 + 112);
  LOBYTE(v13) = *(v30 + 120);
  v33 = *(v30 + 128);
  LOBYTE(v23) = *(v30 + 136);
  sub_10004CF98(v8);
  *(v8 + v6[7]) = 0;
  *(v8 + v6[8]) = 0;
  *(v8 + v6[9]) = 1;
  v34 = (v8 + v6[10]);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = sub_100086C3C(v31, v29, v32, v13, v33, v23);
  v37 = v36;
  sub_1000D607C(v8, _s11FormatStyleVMa_0);
  v49 = v35;
  v50 = v37;
  sub_1000DA920();

  return sub_1000D5EFC(v28, sub_1000D4360);
}

id sub_1000D1FBC()
{
  v1 = sub_1000D91C0();
  __chkstk_darwin(v1 - 8);
  v37[2] = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DB900();
  __chkstk_darwin(v3 - 8);
  v37[1] = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s11FormatStyleVMa_0(0);
  v6 = (v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D5FC4(0, &qword_100115350, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E08A0;
  v10 = v0 + *(type metadata accessor for DetailComplicationContentView(0) + 24);
  v11 = v10 + *(type metadata accessor for DetailTimelineEntry(0) + 20);
  v12 = *(v11 + 80);
  v13 = *(v11 + 88);
  v14 = *(v11 + 112);
  v39 = *(v11 + 120);
  v38 = *(v11 + 128);
  LOBYTE(v10) = *(v11 + 136);
  sub_10004CF98(v8);
  *(v8 + v6[7]) = 0;
  *(v8 + v6[8]) = 0;
  *(v8 + v6[9]) = 1;
  v15 = v6[10];
  v16 = v9;
  v17 = (v8 + v15);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = sub_100086C3C(v12, v13, v14, v39, v38, v10);
  v20 = v19;
  sub_1000D607C(v8, _s11FormatStyleVMa_0);
  *(v9 + 32) = v18;
  *(v9 + 40) = v20;
  if (*(v11 + 72) == 1)
  {
    sub_1000DB8F0();
    sub_1000D9170();
    v22 = sub_1000DB9B0();
LABEL_16:
    *(v16 + 48) = v22;
    *(v16 + 56) = v21;
    v40 = v16;
    sub_1000D5FC4(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v36 = sub_1000DB890();

    return v36;
  }

  v22 = 9666786;
  if (*(v11 + 56))
  {
LABEL_15:
    v21 = 0xA300000000000000;
    goto LABEL_16;
  }

  v23 = *(v11 + 48);
  v24 = v23;
  if (v23 <= 1000000.0)
  {
LABEL_10:
    if (qword_1001140F8 != -1)
    {
      swift_once();
    }

    v31 = sub_10002999C(0, 3, 1, v24);
    [v31 setNumberStyle:1];
    v32 = [objc_allocWithZone(NSNumber) initWithDouble:v24];
    v33 = [v31 stringFromNumber:v32];

    if (v33)
    {
      v22 = sub_1000DB950();
      v35 = v34;

      v21 = v35;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  type metadata accessor for UnitNumberFormatter();
  inited = swift_initStackObject();
  result = [objc_allocWithZone(SCICUNumberFormatter) init];
  *(inited + 16) = result;
  if ((~*&v23 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v23 < 9.22337204e18)
  {
    v27 = result;
    v28 = sub_100045A4C(v23, 0, 0);
    v30 = v29;

    if (v30)
    {
      v21 = v30;
      v22 = v28;
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000D2468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000D5594(0);
  __chkstk_darwin(v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D5DDC(0, &qword_10011B1A8, sub_1000D5594, &type metadata for Text, &type metadata accessor for _ConditionalContent.Storage);
  __chkstk_darwin(v9);
  v11 = &v17[-v10];
  if (*(a1 + *(type metadata accessor for DetailTimelineEntry(0) + 32)) == 1)
  {
    sub_1000DACD0();
    *v11 = sub_1000DB160();
    *(v11 + 1) = v12;
    v11[16] = v13 & 1;
    *(v11 + 3) = v14;
    swift_storeEnumTagMultiPayload();
    sub_1000D5E48(&qword_10011B170, sub_1000D5594, &protocol conformance descriptor for HStack<A>);
    return sub_1000DAD90();
  }

  else
  {
    *v8 = sub_1000DAC80();
    *(v8 + 1) = 0;
    v8[16] = 1;
    sub_1000D5E90(0, &qword_10011B1B0, sub_1000D5628, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
    sub_1000D2754(a2, a3, &v8[*(v16 + 44)]);
    sub_1000D6014(v8, v11, sub_1000D5594);
    swift_storeEnumTagMultiPayload();
    sub_1000D5E48(&qword_10011B170, sub_1000D5594, &protocol conformance descriptor for HStack<A>);
    sub_1000DAD90();
    return sub_1000D607C(v8, sub_1000D5594);
  }
}

uint64_t sub_1000D2754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = _s11FormatStyleVMa_0(0);
  v6 = (v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000D9690();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000DACC0();
  __chkstk_darwin(v11 - 8);
  sub_1000A4A60(0);
  __chkstk_darwin(v12 - 8);
  v51 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v44 - v15;
  sub_1000D0024(a1, &v44 - v15);
  sub_1000DACB0();
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  sub_1000DACA0(v72);
  sub_1000DAC90(*a2);
  v73._countAndFlagsBits = 32;
  v73._object = 0xE100000000000000;
  sub_1000DACA0(v73);
  v16 = *(a2 + 80);
  v46 = *(a2 + 88);
  v17 = *(a2 + 112);
  v45 = *(a2 + 120);
  v18 = *(a2 + 128);
  LOBYTE(a2) = *(a2 + 136);
  type metadata accessor for DetailComplicationContentView(0);
  sub_10004CF98(v10);
  v19 = v47;
  (*(v50 + 16))(v8, v10, v47);
  v8[v6[7]] = 0;
  v8[v6[8]] = 0;
  v8[v6[9]] = 0;
  v20 = &v8[v6[10]];
  *v20 = 9666786;
  *(v20 + 1) = 0xA300000000000000;
  v21 = sub_100086C3C(v16, v46, v17, v45, v18, a2);
  v23 = v22;
  sub_1000D607C(v8, _s11FormatStyleVMa_0);
  (*(v50 + 8))(v10, v19);
  v74._countAndFlagsBits = v21;
  v74._object = v23;
  sub_1000DAC90(v74);

  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  sub_1000DACA0(v75);
  sub_1000DACE0();
  v24 = sub_1000DB160();
  v26 = v25;
  LOBYTE(v21) = v27;
  v29 = v28;
  KeyPath = swift_getKeyPath();
  v50 = swift_getKeyPath();
  LOBYTE(v60[0]) = v21 & 1;
  LOBYTE(v54) = 0;
  v31 = sub_1000DAF70();
  v32 = swift_getKeyPath();
  v33 = v48;
  v34 = v51;
  sub_1000D6014(v48, v51, sub_1000A4A60);
  v35 = v34;
  v36 = v49;
  sub_1000D6014(v35, v49, sub_1000A4A60);
  sub_1000D5664(0, &qword_10011B148, sub_1000A4A60, sub_1000D56E0);
  v38 = v36 + *(v37 + 48);
  *&v54 = v24;
  *(&v54 + 1) = v26;
  LOBYTE(v55) = v21 & 1;
  *(&v55 + 1) = *v53;
  DWORD1(v55) = *&v53[3];
  *(&v55 + 1) = v29;
  *&v56 = KeyPath;
  v39 = KeyPath;
  *(&v56 + 1) = 1;
  LOBYTE(v57) = 0;
  *(&v57 + 1) = *v52;
  DWORD1(v57) = *&v52[3];
  v40 = v50;
  *(&v57 + 1) = v50;
  *&v58 = 0x3FE6000000000000;
  *(&v58 + 1) = v32;
  v59 = v31;
  *(v38 + 80) = v31;
  v41 = v57;
  *(v38 + 32) = v56;
  *(v38 + 48) = v41;
  *(v38 + 64) = v58;
  v42 = v55;
  *v38 = v54;
  *(v38 + 16) = v42;
  sub_1000D6014(&v54, v60, sub_1000D56E0);
  sub_1000D607C(v33, sub_1000A4A60);
  v60[0] = v24;
  v60[1] = v26;
  v61 = v21 & 1;
  *v62 = *v53;
  *&v62[3] = *&v53[3];
  v63 = v29;
  v64 = v39;
  v65 = 1;
  v66 = 0;
  *v67 = *v52;
  *&v67[3] = *&v52[3];
  v68 = v40;
  v69 = 0x3FE6000000000000;
  v70 = v32;
  v71 = v31;
  sub_1000D607C(v60, sub_1000D56E0);
  return sub_1000D607C(v51, sub_1000A4A60);
}

uint64_t sub_1000D2D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v46 = a4;
  sub_1000D4F38(0, a5);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v45 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  sub_1000D3044(a1, a2, a3);
  KeyPath = swift_getKeyPath();
  sub_1000D4FB8(0, v15);
  v17 = &v13[*(v16 + 36)];
  *v17 = KeyPath;
  *(v17 + 1) = 1;
  v17[16] = 0;
  v18 = sub_1000DB090();
  v19 = swift_getKeyPath();
  v20 = &v13[*(v9 + 44)];
  *v20 = v19;
  v20[1] = v18;
  v21 = a3[7];
  v22 = a3[8];
  v23 = a3[9];
  v57 = a3[6];
  v58 = v21;
  v59 = v22;
  v60 = v23;
  LOBYTE(v47) = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = xmmword_1000DFDC0;
  v52 = 0xA300000000000000;
  v53 = 9666786;
  v54 = 0xA300000000000000;
  v55 = 9666786;
  v56 = 0xA300000000000000;
  sub_10002B054(v57, v21, v22, v23);
  sub_100036068(0);
  sub_1000D5E48(&qword_100115F00, sub_100036068, &unk_1000E1AF8);
  sub_10003619C();
  v24 = sub_1000DB150();
  v26 = v25;
  LOBYTE(v18) = v27;
  sub_1000DAF90();
  v28 = sub_1000DB100();
  v30 = v29;
  v32 = v31;

  sub_100017794(v24, v26, v18 & 1);

  v47 = sub_1000DADD0();
  v33 = sub_1000DB0E0();
  v35 = v34;
  LOBYTE(a1) = v36;
  v38 = v37;
  sub_100017794(v28, v30, v32 & 1);

  v39 = v45;
  sub_1000D6014(v13, v45, sub_1000D4F38);
  v40 = v46;
  sub_1000D6014(v39, v46, sub_1000D4F38);
  sub_1000D4E9C(0, v41);
  v43 = v40 + *(v42 + 48);
  *v43 = v33;
  *(v43 + 8) = v35;
  *(v43 + 16) = a1 & 1;
  *(v43 + 24) = v38;
  *(v43 + 32) = xmmword_1000E7770;
  sub_1000178C0(v33, v35, a1 & 1);

  sub_1000D607C(v13, sub_1000D4F38);
  sub_100017794(v33, v35, a1 & 1);

  return sub_1000D607C(v39, sub_1000D4F38);
}

uint64_t sub_1000D3044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000D50D4(0);
  __chkstk_darwin(v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D5DDC(0, &qword_10011B1C0, sub_1000D50D4, &type metadata for Text, &type metadata accessor for _ConditionalContent.Storage);
  __chkstk_darwin(v9);
  v11 = &v17[-v10];
  if (*(a1 + *(type metadata accessor for DetailTimelineEntry(0) + 32)) == 1)
  {
    sub_1000DACD0();
    *v11 = sub_1000DB160();
    *(v11 + 1) = v12;
    v11[16] = v13 & 1;
    *(v11 + 3) = v14;
    swift_storeEnumTagMultiPayload();
    sub_1000D5E48(&qword_10011B1D0, sub_1000D50D4, &protocol conformance descriptor for HStack<A>);
    return sub_1000DAD90();
  }

  else
  {
    *v8 = sub_1000DAC80();
    *(v8 + 1) = 0x4000000000000000;
    v8[16] = 0;
    sub_1000D5E90(0, &qword_10011B1C8, sub_1000D5168, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
    sub_1000D3338(a2, a3, &v8[*(v16 + 44)]);
    sub_1000D6014(v8, v11, sub_1000D50D4);
    swift_storeEnumTagMultiPayload();
    sub_1000D5E48(&qword_10011B1D0, sub_1000D50D4, &protocol conformance descriptor for HStack<A>);
    sub_1000DAD90();
    return sub_1000D607C(v8, sub_1000D50D4);
  }
}

uint64_t sub_1000D3338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = _s11FormatStyleVMa_0(0);
  __chkstk_darwin(v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000A4A60(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v43 = &v42 - v12;
  sub_1000D0024(a1, &v42 - v12);
  v14 = *a2;
  v49 = *(a2 + 8);
  v50 = v14;

  sub_1000DB600();
  sub_1000DA7A0();
  v15 = *(a2 + 96);
  v65[0] = *(a2 + 80);
  v65[1] = v15;
  v17 = *(a2 + 80);
  v16 = *(a2 + 96);
  v66[0] = *(a2 + 112);
  *(v66 + 9) = *(a2 + 121);
  v47 = v58;
  v48 = v56;
  v45 = v61;
  v46 = v60;
  v64 = 1;
  v63 = v57;
  v62 = v59;
  v53 = v17;
  v54 = v16;
  v55[0] = *(a2 + 112);
  *(v55 + 9) = *(a2 + 121);
  type metadata accessor for DetailComplicationContentView(0);
  sub_10002B068(v65, &v52);
  sub_10004CF98(v7);
  *(v7 + v5[5]) = 0;
  *(v7 + v5[6]) = 0;
  *(v7 + v5[7]) = 0;
  v18 = (v7 + v5[8]);
  *v18 = 9666786;
  v18[1] = 0xA300000000000000;
  sub_1000D5E48(&qword_1001195A0, _s11FormatStyleVMa_0, &unk_1000E36E4);
  sub_1000A0A9C();
  v19 = sub_1000DB150();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v44 = v10;
  sub_1000D6014(v13, v10, sub_1000A4A60);
  LOBYTE(v53) = 0;
  LOBYTE(v13) = v64;
  v26 = v63;
  v27 = v62;
  v28 = v10;
  v29 = v51;
  sub_1000D6014(v28, v51, sub_1000A4A60);
  sub_1000D519C(0);
  v31 = v29;
  v32 = v29 + v30[12];
  v33 = v49;
  v34 = v50;
  *v32 = v50;
  *(v32 + 8) = v33;
  *(v32 + 16) = 0;
  *(v32 + 24) = _swiftEmptyArrayStorage;
  v35 = v31 + v30[16];
  *v35 = 0;
  *(v35 + 8) = v13;
  v36 = v47;
  *(v35 + 16) = v48;
  *(v35 + 24) = v26;
  *(v35 + 32) = v36;
  *(v35 + 40) = v27;
  v37 = v45;
  *(v35 + 48) = v46;
  *(v35 + 56) = v37;
  v38 = v31 + v30[20];
  *v38 = v19;
  *(v38 + 8) = v21;
  v23 &= 1u;
  *(v38 + 16) = v23;
  *(v38 + 24) = v25;
  v39 = v31 + v30[24];
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = v33;
  sub_1000178C0(v34, v33, 0);

  sub_1000178C0(v19, v21, v23);

  sub_1000D607C(v43, sub_1000A4A60);
  sub_100017794(v19, v21, v23);

  sub_100017794(v34, v40, v53);

  return sub_1000D607C(v44, sub_1000A4A60);
}

uint64_t sub_1000D36EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v33 = a4;
  sub_1000D46BC(0);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4588(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = sub_1000DB6C0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  sub_1000DB6B0();
  *v7 = sub_1000DAD00();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_1000D5E90(0, &qword_10011B1E0, sub_1000D4750, &type metadata for _VStackLayout, &protocol witness table for _VStackLayout);
  sub_1000D3A6C(a1, v31, v32, &v7[*(v22 + 44)]);
  sub_1000D5E48(&qword_10011B048, sub_1000D46BC, &protocol conformance descriptor for VStack<A>);
  sub_1000DB230();
  sub_1000D5EFC(v7, sub_1000D46BC);
  KeyPath = swift_getKeyPath();
  v24 = &v14[*(v9 + 44)];
  *v24 = KeyPath;
  *(v24 + 1) = 1;
  v24[16] = 0;
  v25 = *(v16 + 16);
  v25(v18, v21, v15);
  sub_1000D5D54(v14, v11, sub_1000D4588);
  v26 = v33;
  v25(v33, v18, v15);
  sub_1000D5664(0, &qword_10011AFE0, &type metadata accessor for AccessoryWidgetBackground, sub_1000D4588);
  sub_1000D5D54(v11, &v26[*(v27 + 48)], sub_1000D4588);
  sub_1000D5EFC(v14, sub_1000D4588);
  v28 = *(v16 + 8);
  v28(v21, v15);
  sub_1000D5EFC(v11, sub_1000D4588);
  return (v28)(v18, v15);
}

uint64_t sub_1000D3A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a4;
  v7 = _s11FormatStyleVMa_0(0);
  __chkstk_darwin(v7);
  v9 = (&v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000D4CA0(0, &qword_10011B018, sub_1000D4928, sub_1000D49E0, &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>);
  v102 = *(v10 - 8);
  v103 = v10;
  __chkstk_darwin(v10);
  v107 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v108 = &v97 - v13;
  sub_1000A4A60(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D4850(0);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v106 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v97 - v21;
  __chkstk_darwin(v23);
  v25 = &v97 - v24;
  v104 = a1;
  sub_1000D0024(a1, v16);
  if (*(a2 + *(type metadata accessor for DetailTimelineEntry(0) + 32)))
  {
    v26 = 0.0;
  }

  else
  {
    v26 = -2.0;
  }

  sub_1000D5F5C(v16, v22, sub_1000A4A60);
  v27 = &v22[*(v18 + 44)];
  *v27 = 0;
  *(v27 + 1) = v26;
  v105 = v25;
  sub_1000D5F5C(v22, v25, sub_1000D4850);

  sub_1000DAF70();
  sub_1000DAF80();

  v28 = sub_1000DB100();
  v97 = v29;
  v98 = v28;
  v31 = v30;
  v33 = v32;

  sub_1000D5FC4(0, &qword_10011B1E8, &type metadata for Edge.Set, &type metadata accessor for _ContiguousArrayStorage);
  v100 = v34;
  v35 = swift_allocObject();
  v99 = xmmword_1000E08A0;
  *(v35 + 16) = xmmword_1000E08A0;
  v36 = sub_1000DAF20();
  *(v35 + 32) = v36;
  v37 = sub_1000DAF40();
  *(v35 + 33) = v37;
  v38 = sub_1000DAF30();
  sub_1000DAF30();
  if (sub_1000DAF30() != v36)
  {
    v38 = sub_1000DAF30();
  }

  sub_1000DAF30();
  if (sub_1000DAF30() != v37)
  {
    v38 = sub_1000DAF30();
  }

  sub_1000DA690();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v129 = v31 & 1;
  v128 = 0;
  KeyPath = swift_getKeyPath();
  *&v120 = v98;
  *(&v120 + 1) = v97;
  LOBYTE(v121) = v31 & 1;
  *(&v121 + 1) = v33;
  LOBYTE(v122[0]) = v38;
  *(&v122[0] + 1) = v40;
  *&v122[1] = v42;
  *(&v122[1] + 1) = v44;
  *&v123 = v46;
  BYTE8(v123) = 0;
  *&v124 = KeyPath;
  *(&v124 + 1) = 0x3FD999999999999ALL;
  sub_1000D4928(0);
  sub_1000D49E0();
  sub_1000DB1F0();
  v125[2] = v122[0];
  v125[3] = v122[1];
  v125[4] = v123;
  v125[5] = v124;
  v125[0] = v120;
  v125[1] = v121;
  sub_1000D607C(v125, sub_1000D4928);
  v48 = *(a3 + 6);
  v126[0] = *(a3 + 5);
  v126[1] = v48;
  v50 = *(a3 + 5);
  v49 = *(a3 + 6);
  v127[0] = *(a3 + 7);
  *(v127 + 9) = *(a3 + 121);
  v120 = v50;
  v121 = v49;
  v122[0] = *(a3 + 7);
  *(v122 + 9) = *(a3 + 121);
  type metadata accessor for DetailComplicationContentView(0);
  sub_10002B068(v126, &v109);
  sub_10004CF98(v9);
  *(v9 + v7[5]) = 1;
  *(v9 + v7[6]) = 1;
  *(v9 + v7[7]) = 0;
  v51 = (v9 + v7[8]);
  *v51 = 9666786;
  v51[1] = 0xA300000000000000;
  sub_1000D5E48(&qword_1001195A0, _s11FormatStyleVMa_0, &unk_1000E36E4);
  sub_1000A0A9C();
  v52 = sub_1000DB150();
  v54 = v53;
  v56 = v55;
  sub_1000DB050();
  sub_1000DAFD0();
  sub_1000DB010();

  v57 = sub_1000DB100();
  v97 = v58;
  v98 = v57;
  v60 = v59;
  v104 = v61;

  sub_100017794(v52, v54, v56 & 1);

  v62 = swift_allocObject();
  *(v62 + 16) = v99;
  v63 = sub_1000DAF20();
  *(v62 + 32) = v63;
  v64 = sub_1000DAF40();
  *(v62 + 33) = v64;
  v65 = sub_1000DAF30();
  sub_1000DAF30();
  if (sub_1000DAF30() != v63)
  {
    v65 = sub_1000DAF30();
  }

  sub_1000DAF30();
  if (sub_1000DAF30() == v64)
  {
    LODWORD(v100) = v65;
  }

  else
  {
    LODWORD(v100) = sub_1000DAF30();
  }

  sub_1000DA690();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v60 & 1;
  v118 = v60 & 1;
  LODWORD(v99) = v60 & 1;
  v115 = 0;
  v75 = swift_getKeyPath();
  v76 = v106;
  sub_1000D6014(v105, v106, sub_1000D4850);
  v78 = v102;
  v77 = v103;
  v79 = *(v102 + 16);
  v80 = v107;
  v79(v107, v108, v103);
  v81 = v76;
  v82 = v101;
  sub_1000D6014(v81, v101, sub_1000D4850);
  sub_1000D4784(0, v83);
  v85 = v84;
  v79((v82 + *(v84 + 48)), v80, v77);
  v86 = (v82 + *(v85 + 64));
  v87 = v97;
  v88 = v98;
  *&v109 = v98;
  *(&v109 + 1) = v97;
  LOBYTE(v110) = v74;
  *(&v110 + 1) = *v117;
  DWORD1(v110) = *&v117[3];
  v89 = v104;
  *(&v110 + 1) = v104;
  v90 = v100;
  LOBYTE(v111) = v100;
  *(&v111 + 1) = *v116;
  DWORD1(v111) = *&v116[3];
  *(&v111 + 1) = v67;
  *&v112 = v69;
  *(&v112 + 1) = v71;
  *&v113 = v73;
  BYTE8(v113) = 0;
  HIDWORD(v113) = *&v119[3];
  *(&v113 + 9) = *v119;
  *&v114 = v75;
  *(&v114 + 1) = 0x3FD3333333333333;
  v91 = v110;
  *v86 = v109;
  v86[1] = v91;
  v92 = v111;
  v93 = v112;
  v94 = v114;
  v86[4] = v113;
  v86[5] = v94;
  v86[2] = v92;
  v86[3] = v93;
  sub_1000D6014(&v109, &v120, sub_1000D4928);
  v95 = *(v78 + 8);
  v95(v108, v77);
  sub_1000D607C(v105, sub_1000D4850);
  *&v120 = v88;
  *(&v120 + 1) = v87;
  LOBYTE(v121) = v99;
  *(&v121 + 1) = *v117;
  DWORD1(v121) = *&v117[3];
  *(&v121 + 1) = v89;
  LOBYTE(v122[0]) = v90;
  *(v122 + 1) = *v116;
  DWORD1(v122[0]) = *&v116[3];
  *(&v122[0] + 1) = v67;
  *&v122[1] = v69;
  *(&v122[1] + 1) = v71;
  *&v123 = v73;
  BYTE8(v123) = 0;
  *(&v123 + 9) = *v119;
  HIDWORD(v123) = *&v119[3];
  *&v124 = v75;
  *(&v124 + 1) = 0x3FD3333333333333;
  sub_1000D607C(&v120, sub_1000D4928);
  v95(v107, v77);
  return sub_1000D607C(v106, sub_1000D4850);
}

void sub_1000D43A8(uint64_t a1, __n128 a2)
{
  if (!qword_10011AFC8)
  {
    sub_1000D445C(255);
    sub_1000D5E48(&qword_10011B058, sub_1000D445C, &protocol conformance descriptor for ZStack<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AFC8);
    }
  }
}

void sub_1000D445C(uint64_t a1)
{
  if (!qword_10011AFD0)
  {
    sub_1000D44F0(255);
    sub_1000D5E48(&qword_10011B050, sub_1000D44F0, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB550();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AFD0);
    }
  }
}

void sub_1000D452C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1000D5664(255, a3, a4, a5);
    v6 = sub_1000DB650();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000D4588(uint64_t a1)
{
  if (!qword_10011AFE8)
  {
    sub_1000D4608(255);
    sub_1000D4B04(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int, v1);
    v2 = sub_1000DA930();
    if (!v3)
    {
      atomic_store(v2, &qword_10011AFE8);
    }
  }
}

void sub_1000D4608(uint64_t a1)
{
  if (!qword_10011AFF0)
  {
    sub_1000D46BC(255);
    sub_1000D5E48(&qword_10011B048, sub_1000D46BC, &protocol conformance descriptor for VStack<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011AFF0);
    }
  }
}

void sub_1000D46BC(uint64_t a1)
{
  if (!qword_10011AFF8)
  {
    sub_1000D4750(255);
    sub_1000D5E48(&qword_10011B040, sub_1000D4750, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_10011AFF8);
    }
  }
}

void sub_1000D4784(uint64_t a1, __n128 a2)
{
  if (!qword_10011B008)
  {
    sub_1000D4850(255);
    sub_1000D4CA0(255, &qword_10011B018, sub_1000D4928, sub_1000D49E0, &opaque type descriptor for <<opaque return type of View.widgetAccentable(_:)>>);
    sub_1000D4928(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_10011B008);
    }
  }
}

void sub_1000D488C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1000A4B80(255);
    v7 = v6;
    sub_1000D525C(255, &qword_100119730, &type metadata for Text, &type metadata for EmptyView, &type metadata accessor for _ConditionalContent);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000D4928(uint64_t a1)
{
  if (!qword_10011B020)
  {
    sub_1000D525C(255, &qword_10011B028, &type metadata for Text, &type metadata for _PaddingLayout, &type metadata accessor for ModifiedContent);
    sub_1000D5FC4(255, &qword_100115918, &type metadata for CGFloat, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011B020);
    }
  }
}

unint64_t sub_1000D49E0()
{
  result = qword_10011B030;
  if (!qword_10011B030)
  {
    sub_1000D4928(255);
    sub_1000D4A60();
    sub_1000A50EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B030);
  }

  return result;
}

unint64_t sub_1000D4A60()
{
  result = qword_10011B038;
  if (!qword_10011B038)
  {
    sub_1000D525C(255, &qword_10011B028, &type metadata for Text, &type metadata for _PaddingLayout, &type metadata accessor for ModifiedContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B038);
  }

  return result;
}

void sub_1000D4B04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, __n128 a5)
{
  if (!*a2)
  {
    sub_1000D5FC4(255, a3, a4, &type metadata accessor for Optional);
    v6 = sub_1000DAEA0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000D4BAC(uint64_t a1, __n128 a2)
{
  if (!qword_10011B068)
  {
    sub_1000D5454(255, &qword_10011B070, sub_1000D4C58, sub_1000D4D2C, sub_1000D52B0);
    sub_1000DAEB0();
    v2 = sub_1000DA930();
    if (!v3)
    {
      atomic_store(v2, &qword_10011B068);
    }
  }
}

void sub_1000D4CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1000D4D68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1000D4DD4(uint64_t a1)
{
  if (!qword_10011B088)
  {
    sub_1000D4E68(255);
    sub_1000D5E48(&qword_10011B0E8, sub_1000D4E68, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_10011B088);
    }
  }
}

void sub_1000D4E9C(uint64_t a1, __n128 a2)
{
  if (!qword_10011B098)
  {
    sub_1000D4F38(255, a2);
    sub_1000D525C(255, &qword_10011B0E0, &type metadata for Text, &type metadata for _OffsetEffect, &type metadata accessor for ModifiedContent);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_10011B098);
    }
  }
}

void sub_1000D4F38(uint64_t a1, __n128 a2)
{
  if (!qword_10011B0A0)
  {
    sub_1000D4FB8(255, a2);
    sub_1000D4B04(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font, v2);
    v3 = sub_1000DA930();
    if (!v4)
    {
      atomic_store(v3, &qword_10011B0A0);
    }
  }
}

void sub_1000D4FB8(uint64_t a1, __n128 a2)
{
  if (!qword_10011B0A8)
  {
    sub_1000D505C(255, &qword_10011B0B0, &qword_10011B0B8, sub_1000D50D4, a2);
    sub_1000D4B04(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int, v2);
    v3 = sub_1000DA930();
    if (!v4)
    {
      atomic_store(v3, &qword_10011B0A8);
    }
  }
}

void sub_1000D505C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), __n128 a5)
{
  if (!*a2)
  {
    sub_1000D5DDC(255, a3, a4, &type metadata for Text, &type metadata accessor for _ConditionalContent);
    v6 = sub_1000DB3A0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000D50D4(uint64_t a1)
{
  if (!qword_10011B0C0)
  {
    sub_1000D5168(255);
    sub_1000D5E48(&qword_10011B0D8, sub_1000D5168, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_10011B0C0);
    }
  }
}

void sub_1000D519C(uint64_t a1)
{
  if (!qword_10011B0D0)
  {
    sub_1000A4A60(255);
    sub_1000D525C(255, &qword_100116558, &type metadata for Spacer, &type metadata for _FrameLayout, &type metadata accessor for ModifiedContent);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_10011B0D0);
    }
  }
}

void sub_1000D525C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1000D52B0()
{
  result = qword_10011B0F0;
  if (!qword_10011B0F0)
  {
    sub_1000D4D2C(255);
    sub_1000D5E48(&qword_10011B0F8, sub_1000D4DD4, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B0F0);
  }

  return result;
}

void sub_1000D53A8(uint64_t a1, __n128 a2)
{
  if (!qword_10011B110)
  {
    sub_1000D5454(255, &qword_10011B118, sub_1000D5524, sub_1000D556C, sub_1000D5760);
    sub_1000DAEB0();
    v2 = sub_1000DA930();
    if (!v3)
    {
      atomic_store(v2, &qword_10011B110);
    }
  }
}

void sub_1000D5454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1000D5594(uint64_t a1)
{
  if (!qword_10011B138)
  {
    sub_1000D5628(255);
    sub_1000D5E48(&qword_10011B158, sub_1000D5628, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB4A0();
    if (!v2)
    {
      atomic_store(v1, &qword_10011B138);
    }
  }
}

void sub_1000D5664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1000D56E0(uint64_t a1)
{
  if (!qword_10011B150)
  {
    sub_10002D86C(255);
    sub_1000D4B04(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font, v1);
    v2 = sub_1000DA930();
    if (!v3)
    {
      atomic_store(v2, &qword_10011B150);
    }
  }
}

unint64_t sub_1000D5760(__n128 a1)
{
  result = qword_10011B160;
  if (!qword_10011B160)
  {
    sub_1000D556C(255, a1);
    sub_1000D57D8(v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B160);
  }

  return result;
}

unint64_t sub_1000D57D8(__n128 a1)
{
  result = qword_10011B168;
  if (!qword_10011B168)
  {
    sub_1000D5DDC(255, &qword_10011B130, sub_1000D5594, &type metadata for Text, &type metadata accessor for _ConditionalContent);
    sub_1000D5E48(&qword_10011B170, sub_1000D5594, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B168);
  }

  return result;
}

unint64_t sub_1000D58C0(__n128 a1)
{
  result = qword_10011B180;
  if (!qword_10011B180)
  {
    sub_1000D4360(255, a1);
    sub_1000D445C(255);
    sub_1000D5E48(&qword_10011B058, sub_1000D445C, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000D5E48(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B180);
  }

  return result;
}

uint64_t sub_1000D5A18(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000D5AA4(__n128 a1)
{
  result = qword_10011B190;
  if (!qword_10011B190)
  {
    sub_1000D53A8(255, a1);
    sub_1000D5524(255);
    sub_1000D556C(255, v2);
    sub_1000D5760(v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000D5E48(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B190);
  }

  return result;
}

unint64_t sub_1000D5BBC(__n128 a1)
{
  result = qword_10011B198;
  if (!qword_10011B198)
  {
    sub_1000D4BAC(255, a1);
    sub_1000D4C58(255, v2);
    sub_1000D4D2C(255);
    sub_1000D52B0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000D5E48(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B198);
  }

  return result;
}

unint64_t sub_1000D5CD4()
{
  result = qword_10011B1A0;
  if (!qword_10011B1A0)
  {
    sub_1000D4B70(255);
    sub_1000D58C0(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B1A0);
  }

  return result;
}

uint64_t sub_1000D5D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000D5DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1000D5E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000D5E90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1000DA800();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1000D5EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000D5F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000D5FC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1000D6014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D607C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000D6180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

id sub_1000D6204()
{
  result = sub_1000D6288(43, 0xE100000000000000, 45);
  qword_100129058 = result;
  return result;
}

id sub_1000D6230()
{
  result = sub_1000D6288(0, 0xE000000000000000, 0);
  qword_100129060 = result;
  return result;
}

id sub_1000D625C()
{
  result = sub_1000D6288(0, 0xE000000000000000, 0);
  qword_100129068 = result;
  return result;
}

id sub_1000D6288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(NSNumberFormatter) init];
  [v3 setNumberStyle:3];
  sub_100096910();
  isa = sub_1000DBE50(100.0).super.super.isa;
  [v3 setMultiplier:isa];

  [v3 setMinimumFractionDigits:2];
  [v3 setMaximumFractionDigits:2];
  v5 = sub_1000DB910();
  [v3 setPositivePrefix:v5];

  v6 = sub_1000DB910();
  [v3 setNegativePrefix:v6];

  return v3;
}

uint64_t sub_1000D63C0(char a1, double a2, double a3)
{
  v3 = a2 - a3;
  v4 = a3 / v3;
  if (v3 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  if (a1)
  {
    if (qword_1001141E8 != -1)
    {
      swift_once();
    }

    v6 = qword_100129060;
    v7 = [objc_allocWithZone(NSNumber) initWithDouble:v5];
    v8 = [v6 stringFromNumber:v7];
  }

  else
  {
    if (qword_1001141E0 != -1)
    {
      swift_once();
    }

    v9 = qword_100129058;
    v7 = [objc_allocWithZone(NSNumber) initWithDouble:v5];
    v8 = [v9 stringFromNumber:v7];
  }

  v10 = v8;

  if (!v10)
  {
    return 0;
  }

  v11 = sub_1000DB950();

  return v11;
}

uint64_t sub_1000D6520(double a1, double a2)
{
  v3 = a1 - a2;
  v4 = a2 / v3;
  if (v3 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  if (a2 >= 0.0)
  {
    v25._countAndFlagsBits = 0x80000001000E91D0;
    v8._countAndFlagsBits = 28789;
    v8._object = 0xE200000000000000;
  }

  else
  {
    v25._countAndFlagsBits = 0x80000001000E9190;
    v8._countAndFlagsBits = 1853321060;
    v8._object = 0xE400000000000000;
  }

  v28.value._countAndFlagsBits = 0;
  v28.value._object = 0;
  v9.super.isa = v7;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v10 = sub_1000D8E50(v8, v28, v9, v30, 0xD000000000000030, v25);
  v12 = v11;

  if (qword_1001141F0 != -1)
  {
    swift_once();
  }

  v13 = qword_100129068;
  v14 = [objc_allocWithZone(NSNumber) initWithDouble:v5];
  v15 = [v13 stringFromNumber:v14];

  if (v15)
  {
    v16 = sub_1000DB950();
    v18 = v17;

    v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v26._countAndFlagsBits = 0x80000001000EA870;
    v27._countAndFlagsBits = 0x4025204025;
    v27._object = 0xE500000000000000;
    v29.value._countAndFlagsBits = 0;
    v29.value._object = 0;
    v20.super.isa = v19;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_1000D8E50(v27, v29, v20, v31, 0xD000000000000024, v26);

    sub_1000029E8(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1000E08A0;
    *(v21 + 56) = &type metadata for String;
    v22 = sub_100002AAC();
    *(v21 + 32) = v10;
    *(v21 + 40) = v12;
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = v22;
    *(v21 + 64) = v22;
    *(v21 + 72) = v16;
    *(v21 + 80) = v18;
    v23 = sub_1000DB920();
  }

  else
  {

    return 0;
  }

  return v23;
}

uint64_t sub_1000D67E0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1000D68D4;

  return withCheckedContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000012, 0x80000001000EA8A0, sub_1000D6C4C, v2, &type metadata for () + 8);
}

uint64_t sub_1000D68D4()
{

  return _swift_task_switch(sub_1000D69EC, 0, 0);
}

uint64_t sub_1000D69EC()
{
  v1 = [*(v0 + 16) filePath];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(UIImage) initWithContentsOfFile:v1];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000D6A94(uint64_t a1, void *a2)
{
  sub_1000D6C54();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v4);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v8);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1000D6D40;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6DA0;
  aBlock[3] = &unk_10010D030;
  v11 = _Block_copy(aBlock);

  v12 = [a2 downloadIfNeededWithCompletion:v11];
  _Block_release(v11);
  return swift_unknownObjectRelease();
}

void sub_1000D6C54()
{
  if (!qword_10011B298)
  {
    v0 = sub_1000DBC00();
    if (!v1)
    {
      atomic_store(v0, &qword_10011B298);
    }
  }
}

uint64_t sub_1000D6CB8()
{
  sub_1000D6C54();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

double sub_1000D6DA0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_1000D6DE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D6E68(uint64_t a1)
{
  v2 = sub_1000D9690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  sub_100098268();
  sub_1000DAC30();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_1000D6FAC@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = type metadata accessor for DetailTimelineProvider(0);
  __chkstk_darwin(v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D7618(0);
  v5 = v4;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D7798(0);
  v40 = v9;
  v37 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D784C(0);
  v41 = v12;
  v39 = *(v12 - 8);
  __chkstk_darwin(v12);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9970();
  if (qword_1001140A8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000DA370();
  v15 = sub_100015294(v14, qword_100128E20);
  (*(*(v14 - 8) + 16))(v3, v15, v14);
  type metadata accessor for DetailChartWidgetView(0);
  sub_1000D7750(&qword_10011B2A8, type metadata accessor for DetailChartWidgetView, &unk_1000E7948);
  sub_1000D7750(&qword_100116AF0, type metadata accessor for DetailTimelineProvider, &unk_1000DF388);
  sub_1000DB770();
  sub_1000DACD0();
  v16 = sub_1000DB160();
  v18 = v17;
  v20 = v19;
  v21 = sub_1000D7750(&qword_10011B2B8, sub_1000D7618, &protocol conformance descriptor for AppIntentConfiguration<A, B>);
  sub_1000DAD50();
  sub_100017794(v16, v18, v20 & 1);

  (*(v6 + 8))(v8, v5);
  sub_1000DACD0();
  v22 = sub_1000DB160();
  v24 = v23;
  v26 = v25;
  v43 = v5;
  v44 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v38;
  v29 = v40;
  sub_1000DAD30();
  sub_100017794(v22, v24, v26 & 1);

  (*(v37 + 8))(v11, v29);
  sub_1000D7E6C(0, &qword_100115AB8, &type metadata accessor for WidgetFamily, &type metadata accessor for _ContiguousArrayStorage);
  v30 = sub_1000DB720();
  v31 = *(v30 - 8);
  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000DDD30;
  (*(v31 + 104))(v33 + v32, enum case for WidgetFamily.accessoryRectangular(_:), v30);
  v43 = v29;
  v44 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v41;
  sub_1000DAD40();

  return (*(v39 + 8))(v28, v34);
}

void sub_1000D7618(uint64_t a1)
{
  if (!qword_10011B2A0)
  {
    sub_1000D9970();
    type metadata accessor for DetailChartWidgetView(255);
    sub_1000D7750(&qword_1001152A0, &type metadata accessor for SymbolWidgetConfigurationIntent, &protocol conformance descriptor for SymbolWidgetConfigurationIntent);
    sub_1000D7750(&qword_10011B2A8, type metadata accessor for DetailChartWidgetView, &unk_1000E7948);
    v1 = sub_1000DB780();
    if (!v2)
    {
      atomic_store(v1, &qword_10011B2A0);
    }
  }
}

uint64_t type metadata accessor for DetailChartWidgetView(uint64_t a1)
{
  result = qword_10011B320;
  if (!qword_10011B320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D7750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000D7798(uint64_t a1)
{
  if (!qword_10011B2B0)
  {
    sub_1000D7618(255);
    sub_1000D7750(&qword_10011B2B8, sub_1000D7618, &protocol conformance descriptor for AppIntentConfiguration<A, B>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011B2B0);
    }
  }
}

void sub_1000D784C(uint64_t a1)
{
  if (!qword_10011B2C0)
  {
    sub_1000D7798(255);
    sub_1000D7618(255);
    sub_1000D7750(&qword_10011B2B8, sub_1000D7618, &protocol conformance descriptor for AppIntentConfiguration<A, B>);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_10011B2C0);
    }
  }
}

uint64_t sub_1000D7954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailTimelineEntry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D79D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailTimelineEntry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000D7A44(uint64_t a1)
{
  result = type metadata accessor for DetailTimelineEntry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000D7AB0()
{
  sub_1000D784C(255);
  sub_1000D7798(255);
  sub_1000D7618(255);
  sub_1000D7750(&qword_10011B2B8, sub_1000D7618, &protocol conformance descriptor for AppIntentConfiguration<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000D7BBC()
{
  v1 = v0;
  sub_1000D7D90(0);
  v3 = v2;
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DetailChartComplicationContentView(0);
  sub_10003D940(v1, v5 + *(v6 + 20));
  *v5 = swift_getKeyPath();
  sub_1000D7E6C(0, &qword_100116650, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment.Content);
  swift_storeEnumTagMultiPayload();
  v7 = *(type metadata accessor for DetailTimelineEntry(0) + 28);
  KeyPath = swift_getKeyPath();
  v9 = (v5 + *(v3 + 36));
  sub_1000D7E6C(0, &qword_100115BC0, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for _EnvironmentKeyWritingModifier);
  v11 = *(v10 + 28);
  v12 = sub_1000D9690();
  (*(*(v12 - 8) + 16))(v9 + v11, v1 + v7, v12);
  *v9 = KeyPath;
  type metadata accessor for DetailContentViewModel(0);
  sub_1000D7ED0();
  sub_1000DB200();
  return sub_1000D8008(v5);
}

void sub_1000D7D90(uint64_t a1)
{
  if (!qword_10011B358)
  {
    type metadata accessor for DetailChartComplicationContentView(255);
    sub_1000D7E6C(255, &qword_100115BC0, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for _EnvironmentKeyWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_10011B358);
    }
  }
}

void sub_1000D7E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000D7ED0()
{
  result = qword_10011B360;
  if (!qword_10011B360)
  {
    sub_1000D7D90(255);
    sub_1000D7750(&qword_10011B368, type metadata accessor for DetailChartComplicationContentView, &unk_1000E4754);
    sub_1000D7F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B360);
  }

  return result;
}

unint64_t sub_1000D7F80()
{
  result = qword_100115C18;
  if (!qword_100115C18)
  {
    sub_1000D7E6C(255, &qword_100115BC0, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for _EnvironmentKeyWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115C18);
  }

  return result;
}

uint64_t sub_1000D8008(uint64_t a1)
{
  sub_1000D7D90(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D8064()
{
  sub_1000D7D90(255);
  sub_1000D7ED0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000D80CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  sub_1000D8710(0, &qword_10011B380, &type metadata accessor for KeyedEncodingContainer);
  v8 = v7;
  v9 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v13 - v10;
  sub_100006C7C(a1, a1[3]);
  sub_1000D86BC();
  sub_1000DC480();
  v15 = 0;
  sub_1000DC2B0();
  if (!v5)
  {
    v14 = 1;
    sub_1000DC2B0();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000D824C()
{
  if (*v0)
  {
    return 0x74726F6873;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

void sub_1000D8284(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746361706D6F63 && a2 == 0xE700000000000000;
  if (v6 || (sub_1000DC360() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74726F6873 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1000DC360();

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

uint64_t sub_1000D835C(uint64_t a1)
{
  v2 = sub_1000D86BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D8398(uint64_t a1)
{
  v2 = sub_1000D86BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D83D4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1000DC360(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1000DC360();
    }
  }

  return result;
}

uint64_t sub_1000D8478@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000D84C8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000D84C8(void *a1)
{
  sub_1000D8710(0, &qword_10011B370, &type metadata accessor for KeyedDecodingContainer);
  v4 = v3;
  v5 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100006C7C(a1, a1[3]);
  sub_1000D86BC();
  sub_1000DC470();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1000DC1E0();
    v11 = 1;
    sub_1000DC1E0();
    (*(v5 + 8))(v7, v4);
  }

  sub_100006D0C(a1);
  return v8;
}

unint64_t sub_1000D86BC()
{
  result = qword_10011B378;
  if (!qword_10011B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B378);
  }

  return result;
}

void sub_1000D8710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000D86BC();
    v7 = a3(a1, &type metadata for SymbolName.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000D8788()
{
  result = qword_10011B388;
  if (!qword_10011B388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B388);
  }

  return result;
}

unint64_t sub_1000D87E0()
{
  result = qword_10011B390;
  if (!qword_10011B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B390);
  }

  return result;
}

unint64_t sub_1000D8838()
{
  result = qword_10011B398;
  if (!qword_10011B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011B398);
  }

  return result;
}