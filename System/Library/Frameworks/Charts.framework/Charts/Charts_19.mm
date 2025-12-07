unsigned int *sub_1AAE0EAA8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_1AAE0ECF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    result = sub_1AAF90774();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE0ED8C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1AAE0EEC8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
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
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

double sub_1AAE0F0D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = *a2;
  v7 = *(a2 + 1);
  v8 = type metadata accessor for ModifiedChartContent_AccessibilityHidden(0, a3, a4, a5);
  v56 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v8 + 44)), __dst);
  v9 = __dst[0];
  v10 = __dst[1];
  v11 = __dst[2];
  v12 = __dst[3];
  v52 = __dst[4];
  v13 = __dst[5];
  v53 = __dst[6];
  v14 = v7 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v50 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v51 = v14;
  v15 = v14 + *(v50 + 108);
  v57 = v13;
  if (!*(v15 + 24))
  {
    memset(__src, 0, 24);
    __src[3] = 2;
    bzero(&__src[4], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v15, v63);

  sub_1AAF303E4(a4, __src);
  sub_1AAE0FC7C(v63);
  if (__src[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties(255, a4, v16, v17);
    v36 = sub_1AAF8FE74();
    (*(*(v36 - 8) + 8))(__src, v36);
    memset(v68, 0, 24);
    v68[3] = 1;
    v68[5] = 0;
    v68[4] = 0;
    v69 = 0;
    memset(v70, 0, 24);
    v70[3] = 1;
    v70[5] = 0;
    v70[4] = 0;
    v71 = 0;
    v72 = 0uLL;
    v73 = 0;
    v74 = 1;
    v75 = 0u;
    memset(v76, 0, sizeof(v76));
    v58 = 0uLL;
    v59 = 0;
    v60 = 1;
    v61 = 0u;
    memset(v62, 0, sizeof(v62));
    memset(v77, 0, sizeof(v77));
    v78 = -4;
    sub_1AAD3CF1C(v64);
    v79[6] = v64[6];
    v79[7] = v64[7];
    v80 = v65;
    v79[2] = v64[2];
    v79[3] = v64[3];
    v79[5] = v64[5];
    v79[4] = v64[4];
    v79[1] = v64[1];
    v79[0] = v64[0];
    memset(v81, 0, 24);
    v81[3] = 1;
    v81[5] = 0;
    v81[4] = 0;
    v82 = 0;
    v83[0] = v9;
    v83[1] = v10;
    v37 = v11;
    v83[2] = v11;
    v83[3] = v12;
    v38 = v12;
    v25 = v52;
    v83[4] = v52;
    v83[5] = v13;
    v26 = v53;
    v84 = v53;
    v85 = 0uLL;
    v86 = 0;
    v87 = 1;
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    sub_1AAF304C8(v68, v70, &v72, &v58, v77, v79, v81, v83, v63, &v85, &v85);
    v39 = a4;
    v33 = v9;
    v22 = v10;
    LOBYTE(v10) = v37;
    v24 = v38;
    sub_1AAF30464(v63, v39, &v58, v40, v41);
    swift_beginAccess();
    v42 = *(v50 + 108);
    sub_1AADA61DC(v33, v22, v10, v38);
    sub_1AAD3CEFC(v52, v13, v53);
    sub_1AAE0FB6C(&v58, v51 + v42);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v47 = __dst[66];
  v48 = __dst[65];
  v45 = __dst[68];
  v46 = __dst[67];
  v18 = __dst[69];
  v44 = __dst[70];
  v49 = v7;
  v19 = __dst[71];
  v20 = v9;
  v21 = v9;
  v22 = v10;
  v23 = v10;
  v10 = v11;
  v24 = v12;
  sub_1AADA61DC(v21, v23, v11, v12);
  v25 = v52;
  v26 = v53;
  sub_1AAD3CEFC(v52, v57, v53);
  v27 = v19;
  v7 = v49;
  sub_1AAD3D034(v48, v47, v46, v45, v18, v44, v27);
  __dst[65] = v20;
  __dst[66] = v22;
  __dst[67] = v10;
  __dst[68] = v24;
  __dst[69] = v52;
  __dst[70] = v57;
  LOBYTE(__dst[71]) = v53;
  v30 = type metadata accessor for TypedVectorizedProperties(0, a4, v28, v29);
  v31 = *(v30 - 8);
  (*(v31 + 16))(__src, __dst, v30);
  v32 = a4;
  v33 = v20;
  sub_1AAF30464(__src, v32, v63, v34, v35);
  swift_beginAccess();
  sub_1AAE0FB6C(v63, v51 + *(v50 + 108));
  swift_endAccess();
  (*(v31 + 8))(__dst, v30);
  v13 = v57;
LABEL_6:
  LOBYTE(__dst[0]) = v55;
  __dst[1] = v7;
  (*(a5 + 40))(v56, __dst);
  sub_1AADA6198(v33, v22, v10, v24);
  return sub_1AAD3D014(v25, v13, v26);
}

void *sub_1AAE0F680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v7 = *(a2 + 8);
  if ((*a2 & 1) == 0)
  {
    v13[0] = 0;
    v14 = v7;
    v12 = a4;
LABEL_6:
    result = (*(v12 + 40))(&v15, a1, v13, a3);
    v11 = v15;
    goto LABEL_7;
  }

  v8 = a1;
  result = type metadata accessor for AXHiddenModifier(0, a3, a4, a4);
  if ((*(v8 + *(result + 9)) & 1) == 0)
  {
    a1 = v8;
    v13[0] = 1;
    v14 = v7;
    v12 = a4;
    goto LABEL_6;
  }

  v11 = 0xE000000000000000;
LABEL_7:
  *a5 = v11;
  return result;
}

uint64_t sub_1AAE0F740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = type metadata accessor for CollectedChartContent(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a2 + *(type metadata accessor for _ChartContentCollectInputs(0) + 32)) != 1)
  {
    return (*(a4 + 64))(a1, a2, a3, a4);
  }

  (*(a4 + 64))(&v30, a1, a2, a3, a4);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v37 = 1;
  memset(v38, 0, sizeof(v38));
  v39 = 1;
  sub_1AAE0F994(&v32, v29);
  sub_1AAE0F9F0(v38);
  sub_1AAE0FA44(0, v15);
  v17 = v16;
  v18 = swift_allocBox();
  v20 = v19 + *(v17 + 48);
  sub_1AAF027E4(v19);
  v21 = v33;
  *v20 = v32;
  *(v20 + 1) = v21;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v20[80] = v37;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  *(v20 + 2) = v22;
  v20[81] = 1;
  *v14 = v18;
  swift_storeEnumTagMultiPayload();
  sub_1AADFA56C(&v31, (a5 + 1));
  sub_1AAE0FAB0(0, v25);
  v26 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1AAF92AB0;
  sub_1AAE0FB08(v14, v27 + v26, xmmword_1AAF92AB0);
  result = sub_1AAD58308(&v30);
  *a5 = v27;
  return result;
}

void sub_1AAE0FA44(uint64_t a1, __n128 a2)
{
  if (!qword_1ED9AE350)
  {
    type metadata accessor for CollectedChartContent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9AE350);
    }
  }
}

void sub_1AAE0FAB0(uint64_t a1, __n128 a2)
{
  if (!qword_1ED9AD6F8)
  {
    type metadata accessor for CollectedChartContent(255);
    v2 = sub_1AAF90484();
    if (!v3)
    {
      atomic_store(v2, &qword_1ED9AD6F8);
    }
  }
}

uint64_t sub_1AAE0FB08(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for CollectedChartContent(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE0FB6C(uint64_t a1, uint64_t a2)
{
  sub_1AAE0FBD0();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1AAE0FBD0()
{
  if (!qword_1ED9B3A10)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3A10);
    }
  }
}

double sub_1AAE0FCD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }

  return result;
}

double sub_1AAE0FD00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }

  return result;
}

double sub_1AAE0FD30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a4 != 1)
  {
    sub_1AADA6198(a1, a2, a3, a4);

    return sub_1AAE0FD00(a5, a6, a7);
  }

  return result;
}

double sub_1AAE0FD8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 2:

      goto LABEL_9;
    case 1:

LABEL_9:

      return result;
    case 0:
      sub_1AACD7304(a1, a2, a3 & 1);

      break;
  }

  return result;
}

double sub_1AAE0FE08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 2:

      goto LABEL_9;
    case 1:

LABEL_9:

      return result;
    case 0:
      sub_1AAD04750(a1, a2, a3 & 1);

      break;
  }

  return result;
}

uint64_t static AnnotationPosition.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 9)
  {
    if (v3 == 9)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1AAE0FF40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 9)
  {
    if (v3 == 9)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

_BYTE *AnnotationOverflowResolution.init(x:y:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t static AnnotationOverflowResolution.automatic.getter@<X0>(_WORD *a1@<X8>)
{
  if (qword_1ED9B0AB0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = word_1ED9B0AB8;
  return result;
}

uint64_t ChartContent.annotation<A>(position:alignment:spacing:content:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, int a5@<W4>, void (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a7;
  v30 = a6;
  v28 = a5;
  v32 = a2;
  v33 = a3;
  v31 = a9;
  v34[0] = a8;
  v34[1] = a10;
  v34[2] = a11;
  v34[3] = a12;
  v16 = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody(0, v34);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27[-v17];
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v27[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *a1;
  (*(v24 + 16))(v22, v12, a8, v20);
  if (qword_1ED9B0AB0 != -1)
  {
    swift_once();
  }

  if (v28)
  {
    v25 = 4.0;
  }

  else
  {
    v25 = a4;
  }

  if (v23 == 9)
  {
    LOBYTE(v23) = 1;
  }

  LOWORD(v34[0]) = word_1ED9B0AB8;
  v30();
  swift_storeEnumTagMultiPayload();
  return sub_1AAE10248(v22, v23, v32, v33, v34, v18, a8, a10, v31, v25, a11, a12);
}

uint64_t sub_1AAE10248@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  v20 = *a5;
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v26 = a7;
  v27 = a8;
  v28 = a11;
  v29 = a12;
  v21 = type metadata accessor for ModifiedChartContent_Annotate(0, &v26);
  *(a9 + v21[13]) = a2;
  v22 = (a9 + v21[14]);
  *v22 = a3;
  v22[1] = a4;
  *(a9 + v21[15]) = a10;
  *(a9 + v21[16]) = v20;
  v23 = v21[17];
  v26 = a7;
  v27 = a8;
  v28 = a11;
  v29 = a12;
  v24 = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody(0, &v26);
  return (*(*(v24 - 8) + 32))(a9 + v23, a6, v24);
}

void ChartContent.annotation<A>(position:alignment:spacing:content:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v30 = a6;
  v31 = a9;
  v29 = a5;
  v28 = a4;
  v32 = a2;
  v33 = a3;
  v34[0] = a8;
  v34[1] = a10;
  v34[2] = a11;
  v34[3] = a12;
  v17 = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody(0, v34);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v28 - v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  (*(v25 + 16))(v23, v13, a8, v21);
  if (qword_1ED9B0AB0 != -1)
  {
    swift_once();
  }

  if (v29)
  {
    v26 = 4.0;
  }

  else
  {
    v26 = v28;
  }

  LOWORD(v34[0]) = word_1ED9B0AB8;
  if (v24 == 9)
  {
    v27 = 1;
  }

  else
  {
    v27 = v24;
  }

  *v19 = v30;
  v19[1] = a7;
  swift_storeEnumTagMultiPayload();
  sub_1AAE10248(v23, v27, v32, v33, v34, v19, a8, a10, v31, v26, a11, a12);
}

_BYTE *AnnotationBoundaryResolution.init(x:y:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, int a5@<W4>, __int16 *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = a4;
  v32 = a8;
  v33 = a7;
  v31 = a5;
  v35 = a2;
  v36 = a3;
  v34 = a9;
  v37[0] = a10;
  v37[1] = a11;
  v37[2] = a12;
  v37[3] = a13;
  v15 = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody(0, v37);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = *a6;
  v25 = (*(v24 + 16))(v21, v29, a10, v19);
  if (v22 == 9)
  {
    v26 = 1;
  }

  else
  {
    v26 = v22;
  }

  if (v31)
  {
    v27 = 4.0;
  }

  else
  {
    v27 = v30;
  }

  LOWORD(v37[0]) = v23;
  v33(v25);
  swift_storeEnumTagMultiPayload();
  return sub_1AAE10248(v21, v26, v35, v36, v37, v17, a10, a11, v34, v27, a12, a13);
}

void ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, int a5@<W4>, __int16 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v32 = a7;
  v33 = a8;
  v31 = a5;
  v30 = a4;
  v35 = a2;
  v36 = a3;
  v34 = a9;
  v37[0] = a10;
  v37[1] = a11;
  v37[2] = a12;
  v37[3] = a13;
  v16 = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody(0, v37);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v29 - v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = *a6;
  (*(v25 + 16))(v22, v13, a10, v20);
  if (v23 == 9)
  {
    v26 = 1;
  }

  else
  {
    v26 = v23;
  }

  LOWORD(v37[0]) = v24;
  if (v31)
  {
    v27 = 4.0;
  }

  else
  {
    v27 = v30;
  }

  v28 = v33;
  *v18 = v32;
  v18[1] = v28;
  swift_storeEnumTagMultiPayload();
  sub_1AAE10248(v22, v26, v35, v36, v37, v18, a10, a11, v34, v27, a12, a13);
}

uint64_t ChartContent.annotation<A>(position:alignment:spacing:boundaryResolution:content:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, __int16 *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *a6;
  v16 = *a1;
  v15 = v13;
  return ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)(&v16, a2, a3, a4, a5 & 1, &v15, a7, a8, a9, a10, a11, a12, a13);
}

__n128 ChartContent.annotation<A>(position:alignment:spacing:boundaryResolution:content:)@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, __int16 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *a6;
  v16 = *a1;
  v15 = v13;
  ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)(&v16, a2, a3, a4, a5 & 1, &v15, a7, a8, a9, a10, a11, a12, a13);
  return result;
}

uint64_t getEnumTagSinglePayload for AnnotationPosition(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 9)
  {
    v7 = 9;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 10;
  if (v6 < 9)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnotationPosition(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SgAnnotation.OverflowResolution(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
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

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 6;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

_WORD *storeEnumTagSinglePayload for SgAnnotation.OverflowResolution(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
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
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AAE10D14(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 6;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for CollectedChartContent.PrimitiveType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AAE10E84(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v12 = result;
    v13 = &type metadata for AnnotationPosition.Storage;
    v9 = 0;
    v14 = MEMORY[0x1E6981D58];
    v15 = MEMORY[0x1E69E7DE0];
    v10 = 0;
    v16 = &type metadata for AnnotationOverflowResolution;
    v4 = *(a1 + 40);
    v6 = result;
    v7 = *(a1 + 24);
    v8 = v4;
    result = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody(319, &v6);
    if (v5 <= 0x3F)
    {
      v11 = 0;
      v17 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE10F50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (v5 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v6 + 80) & 0xF8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_28;
  }

  v12 = v7 + ((v10 + (((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v10) + 1;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v16 < 2)
    {
LABEL_28:
      if (v5 >= 0xFE)
      {
        return (*(v4 + 48))();
      }

      v18 = *(((((((a1 + v8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v10 + 10) & ~v10) + v7);
      if (v18 >= 2)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_17:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void sub_1AAE11154(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = 16;
  if (*(v7 + 64) > 0x10uLL)
  {
    v8 = *(v7 + 64);
  }

  if (v6 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = *(v7 + 80) & 0xF8 | 7;
  v12 = v8 + 1;
  v13 = ((v11 + (((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v11) + v8 + 1;
  v14 = a3 >= v9;
  v15 = a3 - v9;
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

  if (v9 < a2)
  {
    v17 = ~v9 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = a1;
        bzero(a1, v13);
        a1 = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_57:
              if (v16 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v18 = a1;
      bzero(a1, v13);
      a1 = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v16)
    {
      a1[v13] = v19;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v13] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v16)
  {
    goto LABEL_32;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v6 < 0xFE)
  {
    v25 = (((((&a1[v10] & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v11 + 10) & ~v11);
    if (a2 > 0xFE)
    {
      if (v12 <= 3)
      {
        v26 = ~(-1 << (8 * v12));
      }

      else
      {
        v26 = -1;
      }

      if (v8 != -1)
      {
        v27 = v26 & (a2 - 255);
        if (v12 <= 3)
        {
          v28 = v8 + 1;
        }

        else
        {
          v28 = 4;
        }

        bzero(v25, v8 + 1);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *v25 = v27;
            v25[2] = BYTE2(v27);
          }

          else
          {
            *v25 = v27;
          }
        }

        else if (v28 == 1)
        {
          *v25 = v27;
        }

        else
        {
          *v25 = v27;
        }
      }
    }

    else
    {
      v25[v8] = -a2;
    }
  }

  else
  {
    v24 = *(v5 + 56);

    v24();
  }
}

uint64_t getEnumTagSinglePayload for AnnotationOverflowResolution.Strategy.Storage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnnotationOverflowResolution.Strategy.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1AAE1161C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1AAE11630(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_1AAE11650(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1AACFDCAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE116C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1AAE117E0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1AAE1199C()
{
  result = qword_1EB425208;
  if (!qword_1EB425208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB425208);
  }

  return result;
}

unint64_t sub_1AAE119F4()
{
  result = qword_1EB425210[0];
  if (!qword_1EB425210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB425210);
  }

  return result;
}

double sub_1AAE11A48(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *a2;
  v8 = *(*a2 + 16);
  v9 = *(v8 + 16);
  v10 = *(v9 + 32);

  v12 = sub_1AACD5520(0, v10, v11);
  v13 = *(v9 + 32);
  *(v9 + 32) = v12;
  v14 = *(v8 + 24);
  *(v8 + 24) = v12;
  v17 = v16;
  (*(a5 + 32))(a1, &v17, a3, a5);
  *(v8 + 24) = v14;

  *(v9 + 32) = v13;

  return result;
}

uint64_t sub_1AAE11B2C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v119 = a7;
  v114 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v114);
  v113 = (&v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v122 = a3;
  *(&v122 + 1) = a4;
  *&v123 = a5;
  *(&v123 + 1) = a6;
  v110 = a6;
  v108 = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody(0, &v122);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  *&v115 = &v103 - v14;
  v118 = a4;
  v117 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  *&v111 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v103 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v116 = &v103 - v20;
  v21 = *a2;
  v22 = *(a2 + 1);
  v23 = *(v22 + 16);
  v24 = *(v23 + 16);
  v25 = *(v24 + 32);

  v27 = sub_1AACD5520(0, v25, v26);
  v28 = *(v24 + 32);
  *(v24 + 32) = v27;
  v29 = *(v23 + 24);
  *(v23 + 24) = v27;
  LOBYTE(v122) = v21;
  v112 = v22;
  *(&v122 + 1) = v22;
  (*(a5 + 40))(v121, a1, &v122, a3, a5);
  *(v23 + 24) = v29;
  *(v24 + 32) = v28;

  v30 = *v121;

  v31 = sub_1AAF517A0(v30);
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v125.origin.x = v31;
  v125.origin.y = v33;
  v125.size.width = v35;
  v125.size.height = v37;
  result = CGRectEqualToRect(v125, *MEMORY[0x1E695F050]);
  if ((result & 1) == 0)
  {
    v39 = v118;
    *&v122 = a3;
    *(&v122 + 1) = v118;
    v40 = v110;
    *&v123 = a5;
    *(&v123 + 1) = v110;
    v41 = type metadata accessor for ModifiedChartContent_Annotate(0, &v122);
    v42 = v41[14];
    v43 = *(a1 + v41[13]);
    v44 = *(a1 + v42);
    v45 = *(a1 + v42 + 8);
    v46 = sub_1AAE12380(v44, v45, v43);
    v48 = v47;
    v106 = v49;
    v105 = v50;
    v103 = *(a1 + v41[15]);
    v51.n128_f64[0] = v103;
    sub_1AAE1264C(v44, v45, v43, v51);
    v53 = v52;
    v104 = v54;
    v126.origin.x = v31;
    v126.origin.y = v33;
    v126.size.width = v35;
    v126.size.height = v37;
    MinX = CGRectGetMinX(v126);
    v127.origin.x = v31;
    v127.origin.y = v33;
    v127.size.width = v35;
    v127.size.height = v37;
    v56 = MinX + v46 * CGRectGetWidth(v127);
    v128.origin.x = v31;
    v128.origin.y = v33;
    v128.size.width = v35;
    v128.size.height = v37;
    MinY = CGRectGetMinY(v128);
    v129.origin.x = v31;
    v129.origin.y = v33;
    v129.size.width = v35;
    v129.size.height = v37;
    v58 = MinY + v48 * CGRectGetHeight(v129);
    v59 = v41[17];
    v60 = *(v107 + 16);
    v107 = a1;
    v60(v115, a1 + v59, v108);
    v61 = v39;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v62 = *v115;
      v122 = 0uLL;
      v63 = v109;
      v62(&v122);

      v64 = v117;
      v65 = *(v117 + 32);
    }

    else
    {
      v64 = v117;
      v65 = *(v117 + 32);
      v63 = v109;
      v65(v109, v115, v39);
    }

    v66 = v53 + v56;
    v67 = v104 + v58;
    v68 = v116;
    v65(v116, v63, v61);
    v69 = v111;
    (*(v64 + 16))(v111, v68, v61);
    sub_1AAF51E48(v69, v61, v40, &v122);
    v111 = v123;
    v115 = v122;
    v110 = v124;
    if (v43)
    {
      v70 = sub_1AAF8DFB4();
      v72 = v71;
      v74 = v73;
      v76 = v75;
    }

    else
    {
      v130.origin.x = v31;
      v130.origin.y = v33;
      v130.size.width = v35;
      v130.size.height = v37;
      v78 = CGRectGetWidth(v130) - (v103 + v103);
      v79 = v66;
      if (v78 < 0.0)
      {
        v80 = 0.0;
      }

      else
      {
        v80 = v78;
      }

      v131.origin.x = v31;
      v131.origin.y = v33;
      v131.size.width = v35;
      v131.size.height = v37;
      v72 = 0;
      v76 = 0;
      v77 = v103 + v103;
      v81 = CGRectGetHeight(v131) - v77;
      if (v81 < 0.0)
      {
        v81 = 0.0;
      }

      v70 = *&v80;
      v66 = v79;
      v74 = *&v81;
    }

    v82 = v107;
    v83 = v112;
    v84 = *(*(*(v112 + 16) + 16) + 32);

    v86 = sub_1AACD5520(1, v84, v85);

    sub_1AAE1282C(&v122, v121);
    v121[0] = v72 & 1;
    v120 = v76 & 1;
    v87 = sub_1AACDFA18(&v122, v86, v70, v72 & 1, v74, v76 & 1);
    v89 = v88;
    *v121 = *(v82 + v41[16]);
    v90 = sub_1AAF67CC8(v121);
    v91 = *(*(*(v83 + 16) + 16) + 32);

    v93 = sub_1AACD5520(2, v91, v92);

    sub_1AAE12888();
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_1AAF9E2B0;
    *(v94 + 32) = v30;
    v95 = swift_allocObject();
    *(v95 + 16) = v86;
    *(v95 + 24) = v66;
    *(v95 + 32) = v67;
    v96 = v105;
    *(v95 + 40) = v106;
    *(v95 + 48) = v96;
    *(v95 + 72) = v111;
    *(v95 + 56) = v115;
    *(v95 + 88) = v110;
    *(v95 + 96) = 0;
    *(v95 + 104) = v87;
    *(v95 + 112) = v89;
    *(v95 + 120) = 2;
    *(v95 + 128) = 0u;
    *(v95 + 144) = 0u;
    *(v95 + 160) = 0u;
    *(v95 + 176) = v90;
    *(v95 + 184) = 0;
    *(v94 + 40) = v95 | 0xA000000000000000;
    v97 = v114;
    v98 = *(v114 + 24);
    v99 = type metadata accessor for SgClipRect(0);
    v100 = v113;
    (*(*(v99 - 8) + 56))(v113 + v98, 1, 1, v99);

    sub_1AAE1282C(&v122, v121);
    v101 = sub_1AACAC5B8(v30);
    sub_1AACFD7CC(&v122);
    sub_1AACFD7CC(&v122);

    (*(v117 + 8))(v116, v118);
    *v100 = v93;
    v100[1] = v94;
    *(v100 + v97[7]) = 0x3FF0000000000000;
    *(v100 + v97[8]) = v101;
    *(v100 + v97[9]) = MEMORY[0x1E69E7CC0];
    *(v100 + v97[10]) = 0;
    v30 = swift_allocBox();
    result = sub_1AACE3DD4(v100, v102);
  }

  *v119 = v30;
  return result;
}

double sub_1AAE12380(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 != 6)
      {
        if (a3 == 7)
        {
          sub_1AAF8F214();
LABEL_29:
          v7 = v3;
          sub_1AAF8F204();
          return v7;
        }

        sub_1AAF8F224();
        goto LABEL_22;
      }

      sub_1AAF8F204();
LABEL_36:
      v7 = v6;
      sub_1AAF8F214();
      return v7;
    }

    if (a3 == 4)
    {
      sub_1AAF8E174();
      if (sub_1AAF8E164())
      {
        sub_1AAF8F204();
        goto LABEL_22;
      }

      sub_1AAF8E184();
      if (sub_1AAF8E164())
      {
        sub_1AAF8F224();
        goto LABEL_36;
      }

      sub_1AAF8F284();
LABEL_46:
      v7 = v10;
      sub_1AAF8F274();
      return v7;
    }

    sub_1AAF8F1F4();
LABEL_24:
    v7 = v8;
    sub_1AAF8F224();
    return v7;
  }

  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_1AAF8E274();
      if (sub_1AAF8E164())
      {
        sub_1AAF8F1F4();
        goto LABEL_36;
      }

      sub_1AAF8E284();
      if (sub_1AAF8E164())
      {
        sub_1AAF8F204();
        goto LABEL_24;
      }

      sub_1AAF8F244();
LABEL_42:
      v7 = v9;
      sub_1AAF8F254();
      return v7;
    }

    sub_1AAF8F104();
    if (sub_1AAF8F0F4())
    {
      sub_1AAF8F244();
      goto LABEL_40;
    }

    sub_1AAF8F114();
    if (sub_1AAF8F0F4())
    {
      sub_1AAF8F254();
      goto LABEL_42;
    }

    sub_1AAF8F134();
    if (sub_1AAF8F0F4())
    {
      sub_1AAF8F274();
      goto LABEL_46;
    }

    sub_1AAF8F144();
    if ((sub_1AAF8F0F4() & 1) == 0)
    {
      sub_1AAF8F0B4();
      if (sub_1AAF8F0F4())
      {
        sub_1AAF8F1F4();
        goto LABEL_22;
      }

      sub_1AAF8F0C4();
      if (sub_1AAF8F0F4())
      {
        sub_1AAF8F204();
        goto LABEL_29;
      }

      sub_1AAF8F0D4();
      if (sub_1AAF8F0F4())
      {
        sub_1AAF8F214();
        goto LABEL_36;
      }

      sub_1AAF8F0E4();
      if ((sub_1AAF8F0F4() & 1) == 0)
      {
        sub_1AAF8F264();
        v7 = v13;
        sub_1AAF8F264();
        return v7;
      }

      sub_1AAF8F224();
      goto LABEL_24;
    }

    sub_1AAF8F284();
LABEL_44:
    v7 = v11;
    sub_1AAF8F284();
    return v7;
  }

  if (a3 != 2)
  {
    sub_1AAF8E174();
    if (sub_1AAF8E164())
    {
      sub_1AAF8F1F4();
      goto LABEL_29;
    }

    sub_1AAF8E184();
    if (sub_1AAF8E164())
    {
      sub_1AAF8F214();
      goto LABEL_24;
    }

    sub_1AAF8F274();
    goto LABEL_44;
  }

  sub_1AAF8E274();
  if ((sub_1AAF8E164() & 1) == 0)
  {
    sub_1AAF8E284();
    if (sub_1AAF8E164())
    {
      sub_1AAF8F224();
      goto LABEL_29;
    }

    sub_1AAF8F254();
LABEL_40:
    v7 = v4;
    sub_1AAF8F244();
    return v7;
  }

  sub_1AAF8F214();
LABEL_22:
  v7 = v5;
  sub_1AAF8F1F4();
  return v7;
}

uint64_t sub_1AAE1264C(uint64_t result, uint64_t a2, char a3, __n128 a4)
{
  if (!a3)
  {
    sub_1AAF8F104();
    v4 = sub_1AAF8F0F4();
    if ((v4 & 1) == 0)
    {
      sub_1AAF8F114();
      v4 = sub_1AAF8F0F4();
      if ((v4 & 1) == 0)
      {
        sub_1AAF8F134();
        v4 = sub_1AAF8F0F4();
        if ((v4 & 1) == 0)
        {
          sub_1AAF8F144();
          v4 = sub_1AAF8F0F4();
          if ((v4 & 1) == 0)
          {
            sub_1AAF8F0B4();
            v4 = sub_1AAF8F0F4();
            if ((v4 & 1) == 0)
            {
              sub_1AAF8F0C4();
              v4 = sub_1AAF8F0F4();
              if ((v4 & 1) == 0)
              {
                sub_1AAF8F0D4();
                v4 = sub_1AAF8F0F4();
                if ((v4 & 1) == 0)
                {
                  sub_1AAF8F0E4();
                  return sub_1AAF8F0F4();
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

void sub_1AAE12888()
{
  if (!qword_1ED9B28D0)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B28D0);
    }
  }
}

double ChartContent.compositingLayer()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1AAF8E514();
  WitnessTable = swift_getWitnessTable();
  return ChartContent.compositingLayer<A>(style:)(sub_1AAE12998, a1, v6, a2, WitnessTable, a3);
}

uint64_t sub_1AAE12998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AAF8E514();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

double ChartContent.compositingLayer<A>(style:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a3 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v16, v13);
  *&v22 = a3;
  *(&v22 + 1) = a4;
  *&v23 = a6;
  *(&v23 + 1) = swift_getOpaqueTypeMetadata2();
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AACB2508(&v22);
  sub_1AAF8E504();
  (*(v12 + 32))(a7, v15, a3);
  v18 = a7 + *(type metadata accessor for CompositingLayer(0, a3, a5, v17) + 36);
  result = *&v22;
  v20 = v23;
  *v18 = v22;
  *(v18 + 16) = v20;
  *(v18 + 32) = OpaqueTypeConformance2;
  return result;
}

double ChartContent.compositingLayer<A>(style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a3 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v18, v15);
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *(v19 + 4) = a5;
  *(v19 + 5) = a6;
  *(v19 + 6) = a1;
  *(v19 + 7) = a2;
  v21 = type metadata accessor for ClosureBasedModifier(0, a4, a6, v20);
  WitnessTable = swift_getWitnessTable();
  (*(v14 + 32))(a7, v17, a3);
  v24 = (a7 + *(type metadata accessor for CompositingLayer(0, a3, a5, v23) + 36));
  *v24 = sub_1AAE12DBC;
  v24[1] = v19;
  v24[3] = v21;
  v24[4] = WitnessTable;

  return result;
}

double sub_1AAE12D4C(uint64_t a1, void (*a2)(void))
{

  sub_1AAF8EF44();
  a2();

  return result;
}

void sub_1AAE12DE4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1AAE13750(319, &qword_1ED9B2EE8, sub_1AAE131C4, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AAE12E9C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1AAE12FE0(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
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
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      *(v19 + 32) = 0;
      result = 0.0;
      *v19 = 0u;
      *(v19 + 16) = 0u;
      *v19 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

unint64_t sub_1AAE131C4()
{
  result = qword_1ED9B2EF0;
  if (!qword_1ED9B2EF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED9B2EF0);
  }

  return result;
}

uint64_t sub_1AAE13228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double sub_1AAE13264(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ClosureBasedModifier(255, a4, a5, a4);
  swift_getWitnessTable();
  v7 = sub_1AAF8E4F4();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v10 + 16))(&v12 - v9, a1, v7, v8);
  swift_getWitnessTable();
  sub_1AAF8EF44();
  a2();

  return result;
}

uint64_t sub_1AAE133C0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = v10 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v12 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v13 = *(v12 + 64);
  v14 = *(v11 + v13);
  *(v11 + v13) = 0;
  LOBYTE(v23) = v9;
  *(&v23 + 1) = v10;
  result = (*(a4 + 40))(&v26, a1, &v23, a3, a4);
  v16 = v26;
  *(v11 + *(v12 + 64)) = v14;
  if ((v9 & 1) == 0)
  {
    v17 = *(*(v10 + 16) + 24);
    sub_1AAE12888();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AAF92AB0;
    *(v18 + 32) = v16;
    v20 = type metadata accessor for CompositingLayer(0, a3, a4, v19);
    sub_1AAD14CD4(a1 + *(v20 + 36), v24);
    *&v23 = v17;
    *(&v23 + 1) = v18;
    *(&v25 + 1) = v14;
    result = swift_allocObject();
    v21 = v24[0];
    *(result + 16) = v23;
    *(result + 32) = v21;
    v22 = v25;
    *(result + 48) = v24[1];
    *(result + 64) = v22;
    v16 = result | 0x2000000000000000;
  }

  *a5 = v16;
  return result;
}

void sub_1AAE13528(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a2 + *(type metadata accessor for _ChartContentCollectInputs(0) + 20));
  v11 = *(a4 + 64);

  v11(a1, a2, a3, a4);
  sub_1AAE13750(0, &qword_1ED9AD6F8, type metadata accessor for CollectedChartContent, MEMORY[0x1E69E6F90]);
  v12 = *(type metadata accessor for CollectedChartContent(0) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AAF92AB0;
  sub_1AAE0FA44(0, xmmword_1AAF92AB0);
  v16 = v15;
  v17 = swift_allocBox();
  v19 = v18 + *(v16 + 48);
  sub_1AAF027E4(v18);
  *v19 = v10;
  v21 = type metadata accessor for CompositingLayer(0, a3, a4, v20);
  sub_1AAD14CD4(a1 + *(v21 + 36), (v19 + 8));
  v19[81] = 0;
  *(v14 + v13) = v17;
  swift_storeEnumTagMultiPayload();

  *a5 = v14;
}

void sub_1AAE13750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t ChartContent.id<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return sub_1AAE13940(v18, v14, a2, a3, a4, a5, a6);
}

uint64_t sub_1AAE13940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ModifiedChartContent_ID(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

double sub_1AAE13A20(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *a2;
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v11 = *(type metadata accessor for ModifiedChartContent_ID(0, v21) + 52);
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a1;
  v20 = v13;

  sub_1AACD857C(a1 + v11, sub_1AAE13C38, v14, a4, MEMORY[0x1E69E7CA8] + 8, a6);

  return result;
}

double sub_1AAE13AF4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = *(a2 + 1);
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v13 = *(type metadata accessor for ModifiedChartContent_ID(0, v18) + 52);
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a1;
  v16 = v11;
  v17 = v12;
  return sub_1AACD857C(a1 + v13, sub_1AAE13BDC, v15, a4, &type metadata for _ChartContentRenderOutputs, a6);
}

uint64_t sub_1AAE13BDC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  v5[0] = *(v0 + 56);
  v6 = v3;
  return (*(v1 + 40))(v2, v5);
}

uint64_t sub_1AAE13C38()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v4 = *(v0 + 56);
  return (*(v1 + 32))(v2, &v4);
}

uint64_t ChartContent.mask<A>(content:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*(v20 + 16))(v19, v7, v17);
  a1(v21);
  return sub_1AAE13DDC(v19, v15, a3, a4, a5, a6, x8_0);
}

uint64_t sub_1AAE13DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ModifiedChartContent_Mask(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

double sub_1AAE13EBC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v9 = a2[1];
  v11 = *(*a2 + 16);
  v12 = *(v11 + 16);
  v13 = *(v12 + 32);

  v15 = sub_1AACD5520(0, v13, v14);
  v16 = *(v12 + 32);
  *(v12 + 32) = v15;
  v17 = *(v11 + 24);
  *(v11 + 24) = v15;
  v29 = v10;
  v30 = v9;
  (*(a5 + 32))(a1, &v29, a3, a5);
  *(v11 + 24) = v17;

  *(v12 + 32) = v16;

  v18 = *(v10 + 16);
  v19 = *(v18 + 16);
  v20 = *(v19 + 32);

  v22 = sub_1AACD5520(1, v20, v21);
  v23 = *(v19 + 32);
  *(v19 + 32) = v22;
  v24 = *(v18 + 24);
  *(v18 + 24) = v22;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  v25 = *(type metadata accessor for ModifiedChartContent_Mask(0, &v29) + 52);
  v29 = v10;
  v30 = v9;
  (*(a6 + 32))(a1 + v25, &v29, a4, a6);
  *(v18 + 24) = v24;

  *(v19 + 32) = v23;

  return result;
}

__n128 sub_1AAE14038@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = *a2;
  v11 = *(a2 + 1);
  v12 = v11 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v40 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v13 = *(v40 + 64);
  v38 = v12;
  v14 = *(v12 + v13);
  *(v12 + v13) = 0;
  v15 = *(v11 + 16);
  v16 = *(v15 + 16);
  v17 = *(v16 + 32);

  v19 = sub_1AACD5520(0, v17, v18);
  v20 = *(v16 + 32);
  *(v16 + 32) = v19;
  v21 = *(v15 + 24);
  *(v15 + 24) = v19;
  LOBYTE(v43) = v10;
  v44 = v11;
  (*(a5 + 40))(&v42, a1, &v43, a3, a5);
  *(v15 + 24) = v21;
  *(v16 + 32) = v20;

  v36 = v42;
  v22 = *(v11 + 16);
  v23 = *(v22 + 16);
  v24 = *(v23 + 32);

  v26 = sub_1AACD5520(1, v24, v25);
  v27 = *(v23 + 32);
  *(v23 + 32) = v26;
  v28 = *(v22 + 24);
  *(v22 + 24) = v26;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v29 = *(type metadata accessor for ModifiedChartContent_Mask(0, &v43) + 52);
  LOBYTE(v43) = v10;
  v44 = v11;
  (*(a6 + 40))(&v42, a1 + v29, &v43, a4, a6);
  *(v22 + 24) = v28;
  *(v23 + 32) = v27;

  v30 = v42;
  *(v38 + *(v40 + 64)) = v14;
  v31 = swift_allocObject();
  v32 = *(*(v11 + 16) + 24);
  sub_1AAE12888();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1AAF92AB0;
  *(v33 + 32) = v36;
  v34 = swift_allocObject();
  result = xmmword_1AAF92AB0;
  *(v34 + 16) = xmmword_1AAF92AB0;
  *(v34 + 32) = v30;
  *(v31 + 16) = v32;
  *(v31 + 24) = v33;
  *(v31 + 32) = v34;
  *(v31 + 40) = v14;
  *a7 = v31 | 0x1000000000000000;
  return result;
}

uint64_t sub_1AAE1429C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v29 = a1;
  v32 = a6;
  v46 = *MEMORY[0x1E69E9840];
  v31 = sub_1AAF8D954();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v25 - v10;
  v27 = sub_1AAF8D954();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v25 - v12;
  v14 = type metadata accessor for _ChartContentOutputs(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v26 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v25 = &v25 - v17;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  type metadata accessor for ModifiedChartContent_Mask(255, &v42);
  sub_1AAF8D954();
  sub_1AAF007E4(sub_1AAE14948, a2, v13);
  v18 = v29;
  (*(a4 + 48))(v13, v29, a2, a4);
  (*(v11 + 8))(v13, v27);
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v19 = v28;
  sub_1AAF007E4(sub_1AAE14954, a3, v28);
  v20 = v26;
  (*(a5 + 48))(v19, v18, a3, a5);
  (*(v30 + 8))(v19, v31);
  v21 = v25;
  LODWORD(v19) = sub_1AAF025D8();
  v22 = sub_1AAF025D8();
  type metadata accessor for _ChartContentInputs(0);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v42 = __PAIR64__(v22, v19);
  LODWORD(v43) = OffsetAttribute2;
  sub_1AACBC63C();
  sub_1AAE14B88();
  v33 = sub_1AAF8D194();
  sub_1AADF797C();
  sub_1AAF8E494();
  sub_1AAE14BE4(v20);
  return sub_1AAE14BE4(v21);
}

uint64_t sub_1AAE146DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for ModifiedChartContent_Mask(0, v11);
  v10[3] = a2;
  v7 = sub_1AAF8D1C4();
  sub_1AACBE580(a1, sub_1AAD62CC4, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

uint64_t sub_1AAE1477C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for ModifiedChartContent_Mask(0, v13);
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = sub_1AAF8D1C4();
  sub_1AACBE580(a1 + v8, sub_1AAD62594, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t sub_1AAE14820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  (*(a5 + 64))(v18, a1, a2, a3, a5);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v14 = type metadata accessor for ModifiedChartContent_Mask(0, v17);
  (*(a6 + 64))(v17, a1 + *(v14 + 52), a2, a4, a6);
  v15 = type metadata accessor for _ChartContentCollectInputs(0);
  sub_1AAF02900(v18, *(a2 + *(v15 + 20)), a7);
  sub_1AAD58308(v17);
  return sub_1AAD58308(v18);
}

unint64_t sub_1AAE14960@<X0>(unint64_t result@<X0>, char *a3@<X8>)
{
  v4 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] == result)
  {
    *a3 = MEMORY[0x1E69E7CC0];
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    *(a3 + 2) = xmmword_1AAF92AC0;
    a3[48] = 0;
    *(a3 + 8) = 0;
    *(a3 + 9) = 0;
    *(a3 + 7) = 0;
    *(a3 + 5) = xmmword_1AAF92AC0;
    a3[96] = 0;
    *(a3 + 14) = 0;
    *(a3 + 15) = 0;
    *(a3 + 13) = 0;
    *(a3 + 8) = xmmword_1AAF92AC0;
    a3[144] = 0;
    *(a3 + 20) = 0;
    *(a3 + 21) = 0;
    *(a3 + 19) = 0;
    *(a3 + 11) = xmmword_1AAF92AC0;
    a3[192] = 0;
    *(a3 + 26) = 0;
    *(a3 + 27) = 0;
    *(a3 + 25) = 0;
    *(a3 + 14) = xmmword_1AAF92AC0;
    a3[240] = 0;
    *(a3 + 32) = 0;
    *(a3 + 33) = 0;
    *(a3 + 31) = 0;
    *(a3 + 17) = xmmword_1AAF92AC0;
    a3[288] = 0;
    *(a3 + 38) = 0;
    *(a3 + 39) = 0;
    *(a3 + 37) = 0;
    *(a3 + 20) = xmmword_1AAF92AC0;
    a3[336] = 0;
    *(a3 + 44) = 0;
    *(a3 + 45) = 0;
    *(a3 + 43) = 0;
    *(a3 + 23) = xmmword_1AAF92AC0;
    a3[384] = 0;
    *(a3 + 50) = 0;
    *(a3 + 51) = 0;
    *(a3 + 49) = 0;
    *(a3 + 26) = xmmword_1AAF92AC0;
    a3[432] = 0;
    *(a3 + 56) = 0;
    *(a3 + 57) = 0;
    *(a3 + 55) = 0;
    *(a3 + 29) = xmmword_1AAF92AC0;
    a3[480] = 0;
    *(a3 + 488) = 0u;
    *(a3 + 504) = 0u;
    *(a3 + 65) = 1;
    *(a3 + 799) = 0;
    *(a3 + 48) = 0u;
    *(a3 + 49) = 0u;
    *(a3 + 46) = 0u;
    *(a3 + 47) = 0u;
    *(a3 + 44) = 0u;
    *(a3 + 45) = 0u;
    *(a3 + 42) = 0u;
    *(a3 + 43) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 41) = 0u;
    *(a3 + 38) = 0u;
    *(a3 + 39) = 0u;
    *(a3 + 36) = 0u;
    *(a3 + 37) = 0u;
    *(a3 + 34) = 0u;
    *(a3 + 35) = 0u;
    *(a3 + 33) = 0u;
  }

  else
  {
    v5 = HIDWORD(result);
    Value = AGGraphGetValue();
    sub_1AADF9ADC(Value, __src);
    if (v4 == v5)
    {
      sub_1AAD58308(__src);
      v7 = AGGraphGetValue();
      sub_1AADF9ADC(v7, __src);
      return memcpy(a3, __src, 0x323uLL);
    }

    else
    {
      v8 = AGGraphGetValue();
      sub_1AADF9ADC(v8, v10);
      v9 = *AGGraphGetValue();

      sub_1AAF02900(__src, v9, a3);

      sub_1AAD58308(v10);
      return sub_1AAD58308(__src);
    }
  }

  return result;
}

unint64_t sub_1AAE14B88()
{
  result = qword_1EB425318;
  if (!qword_1EB425318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB425318);
  }

  return result;
}

uint64_t sub_1AAE14BE4(uint64_t a1)
{
  v2 = type metadata accessor for _ChartContentOutputs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for MakeMaskResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MakeMaskResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

void sub_1AAE14CD4(uint64_t a1)
{
  if (!qword_1ED9ADE70[0])
  {
    sub_1AACAA194(255, &unk_1ED9B3898, &type metadata for ModifierForegroundStyle, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _ContainerValueWritingChartContentModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1ED9ADE70);
    }
  }
}

double VectorizedChartContent.foregroundStyle<A>(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a2, v11);
  sub_1AAE14EA4(v13, a1, a2, a3, a4, a5);

  return result;
}

uint64_t sub_1AAE14EA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  (*(*(a3 - 8) + 32))(a6, a1);
  v12 = *(v11 + *MEMORY[0x1E69E77B0]);
  v14 = a3;
  v15 = v12;
  v16 = a4;
  v17 = a5;
  result = type metadata accessor for ModifiedChartContent_ForegroundStyles(0, &v14);
  *(a6 + *(result + 60)) = a2;
  return result;
}

uint64_t VectorizedChartContent.foregroundStyle<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v23 = a1;
  v24 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a3, a5);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v7, a2, v18);
  (*(v14 + 16))(v16, v23, v13);
  return sub_1AAE1733C(v20, v16, a2, AssociatedTypeWitness, a3, a4, a5, type metadata accessor for ModifiedChartContent_ForegroundStyles_Plottable, v24);
}

double ChartContent.alignsMarkStylesWithPlotArea(_:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v12 = a1;
  v9 = swift_getKeyPath();
  v11 = a1;
  sub_1AACD7E50(KeyPath, &v12, v9, &v11, a2, a3, a4);

  return result;
}

uint64_t ChartContent.position<A>(by:axis:span:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v30 = a7;
  v29 = a4;
  v28 = a3;
  v27 = a2;
  v16 = type metadata accessor for PlottableValue(0, a6, a8, a4);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26[-v18];
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v26[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v24 + 16))(v23, v10, a5, v21);
  (*(v17 + 16))(v19, a1, v16);
  return sub_1AAE153B0(v23, v19, v27, v28, v29, a5, a6, v30, a9, a8);
}

uint64_t sub_1AAE153B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v24[0] = a6;
  v24[1] = a7;
  v24[2] = MEMORY[0x1E69E73E0];
  v24[3] = a8;
  v24[4] = a10;
  v24[5] = &protocol witness table for Never;
  v18 = type metadata accessor for ModifiedChartContent_Position(0, v24);
  v19 = v18[17];
  v21 = type metadata accessor for PlottableValue(0, a7, a10, v20);
  result = (*(*(v21 - 8) + 32))(a9 + v19, a2, v21);
  *(a9 + v18[18]) = a3;
  v23 = a9 + v18[19];
  *v23 = a4;
  *(v23 + 8) = a5;
  return result;
}

double VectorizedChartContent.position<A>(by:axis:span:)@<D0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a9;
  v29 = a4;
  v28 = a3;
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v25[1], a5, v20);
  (*(v16 + 16))(v18, a1, v15);
  *&result = sub_1AAE156B8(v22, v27, v28, v29, v18, a5, AssociatedTypeWitness, a6, v26, a7, a8).n128_u64[0];
  return result;
}

__n128 sub_1AAE156B8@<Q0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11)
{
  v35 = a5;
  v34 = a4;
  v33 = a3;
  v32 = a2;
  v31 = a10;
  v16 = type metadata accessor for PlottableProjection(0, a7, a8, a11);
  v17 = *(v16 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  v21 = *(a6 - 8);
  (*(v21 + 16))(a9, a1, a6, v18);
  (*(v17 + 16))(v20, v35, v16);
  *&v37 = a6;
  *(&v37 + 1) = a7;
  v38.n128_u64[0] = a8;
  v38.n128_u64[1] = v31;
  *&v39 = a11;
  v22 = type metadata accessor for ModifiedChartContent_Positions(0, &v37);
  v23 = a9 + *(v22 + 60);
  sub_1AAE8C998(v20, a7, a8, a11, (v23 + 24));
  (*(v21 + 8))(a1, a6);
  LOBYTE(a6) = v32;
  *v23 = v32;
  v24 = v33;
  *(v23 + 8) = v33;
  LOBYTE(v20) = v34;
  *(v23 + 16) = v34;
  sub_1AAF30A7C(v35, a7, a8, a11, v36);
  sub_1AAF30C04(a6, v24, v20, v36, &v37);
  v25 = a9 + *(v22 + 64);
  v26 = v44;
  *(v25 + 96) = v43;
  *(v25 + 112) = v26;
  *(v25 + 128) = v45;
  v27 = v40;
  *(v25 + 32) = v39;
  *(v25 + 48) = v27;
  v28 = v42;
  *(v25 + 64) = v41;
  *(v25 + 80) = v28;
  result = v38;
  *v25 = v37;
  *(v25 + 16) = result;
  return result;
}

void ChartContent.opacity(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  KeyPath = swift_getKeyPath();
  v11 = a4;
  v9 = swift_getKeyPath();
  v10 = a4;
  sub_1AACD7E50(KeyPath, &v11, v9, &v10, a1, a2, a3);
}

uint64_t ChartContent.blendMode(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x1E6981E38];
  sub_1AAE15B48(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  KeyPath = swift_getKeyPath();
  v13 = sub_1AAF8F154();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  sub_1AAE15BAC(KeyPath, v11, a2, a3, a4);

  return sub_1AACAC38C(v11, &qword_1ED9B54F8, v8);
}

void sub_1AAE15B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1AAE15BAC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, v15);
  (*(v11 + 16))(v13, a2, v10);
  sub_1AAE1B794(v17, a1, v13, a3, a4, a5);

  return result;
}

double ChartContent.clipShape<A>(_:style:)@<D0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v20 = a5;
  v18 = a7;
  v19 = a3;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v14 = *(v10 + 16);
  v14(v12, a1, a4);
  v15 = a2 & 0x101;
  v23 = sub_1AAF8F024();
  v24 = a2 & 0x101;
  v16 = swift_getKeyPath();
  v14(v12, a1, a4);
  v21 = sub_1AAF8F024();
  v22 = v15;
  sub_1AACD7E50(KeyPath, &v23, v16, &v21, v19, v20, v18);

  return result;
}

uint64_t ChartContent.lineStyle(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v11 = *a1;
  v10 = a1[1];
  KeyPath = swift_getKeyPath();
  v17[0] = v11;
  v17[1] = v10;
  v17[2] = v8;
  v17[3] = v7;
  v17[4] = v9;
  v13 = swift_getKeyPath();
  v16[0] = v11;
  v16[1] = v10;
  v16[2] = v8;
  v16[3] = v7;
  v16[4] = v9;
  memset(&v16[6], 0, 24);
  sub_1AACD7E50(KeyPath, v17, v13, v16, a2, a3, a4);
  swift_bridgeObjectRetain_n();

  sub_1AAE15FEC(a1);
  return sub_1AAE15FEC(a1);
}

uint64_t ChartContent.lineStyle<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v32 = a4;
  v31 = a6;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PlottableValue(0, v15, v17, v16);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v29 - v20);
  (*(v22 + 16))(&v29 - v20, a1, v19);
  sub_1AACD6F84(v21, a3, a5, &v40);
  v23 = v42;
  LOBYTE(v21) = v43;
  v24 = v44;
  v25 = v45;
  KeyPath = swift_getKeyPath();
  v29 = v41;
  v30 = v40;
  v49 = v40;
  v50 = v41;
  v48 = *(&v41 + 1);
  v46 = v42;
  v47 = v43;
  (*(v12 + 16))(v14, v7, a2);
  v33 = KeyPath;
  v35 = v29;
  v34 = v30;
  v36 = v23;
  v37 = v21 & 0x83;
  v38 = v24 & 0xFFFFFFFFFFFFFF8;
  v39 = v25 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  sub_1AAE1630C(0);
  sub_1AAEEDC94(v14, &v40, &v33, a2, v27, v32, &off_1EE75E340, v31);
  sub_1AADFA6FC(&v49, &v33);
  sub_1AAE20E20(&v48, &v33, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  return sub_1AAE14D50(&v46, &v33);
}

void sub_1AAE1630C(uint64_t a1)
{
  if (!qword_1EB425320)
  {
    sub_1AACAA194(255, &qword_1ED9B3D78, &type metadata for ModifierLineStyle, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _ContainerValueWritingChartContentModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB425320);
    }
  }
}

double sub_1AAE163A0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, void, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a2, v11);
  sub_1AAE17260(v13, a1, a2, *(a3 + 8), a4, a5);

  return result;
}

uint64_t ChartContent.symbol<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(&v21 + 1) = a3;
  v22 = a5;
  v11 = sub_1AACB2508(&v20);
  (*(*(a3 - 8) + 16))(v11, a1, a3);
  KeyPath = swift_getKeyPath();
  sub_1AAD9B194(&v20, v19);
  v19[40] = 0;
  v13 = swift_getKeyPath();
  v16[0] = v20;
  v16[1] = v21;
  v17 = v22;
  v18 = 0;
  sub_1AACD7E50(KeyPath, v19, v13, v16, a2, a4, a6);

  v14 = MEMORY[0x1E69E6720];
  sub_1AACD84B4(v16, qword_1ED9B3EA8, &type metadata for ModifierSymbol, MEMORY[0x1E69E6720]);
  return sub_1AACD84B4(v19, qword_1ED9B3000, &type metadata for SgSymbol, v14);
}

uint64_t sub_1AAE16634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a7)(void)@<X6>, void (*a8)(char *, __int128 *, uint64_t *, uint64_t, uint64_t, uint64_t, _UNKNOWN **)@<X7>, uint64_t a9@<X8>)
{
  v32 = a8;
  v11 = v9;
  v31 = a4;
  v30[1] = a9;
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PlottableValue(0, v19, v21, v20);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = (v30 - v24);
  (*(v26 + 16))(v30 - v24, a1, v23);
  sub_1AACD6F84(v25, a3, a5, &v40);
  KeyPath = swift_getKeyPath();
  v48 = v40;
  v49 = v41;
  v47 = *(&v41 + 1);
  v45 = v42;
  v46 = v43;
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v34 = v40;
  v39 = 2;
  v33 = KeyPath;
  (*(v16 + 16))(v18, v11, a2);
  v28 = a7(0);
  v32(v18, &v40, &v33, a2, v28, v31, &off_1EE75E340);
  sub_1AADFA6FC(&v48, &v33);
  sub_1AAE20E20(&v47, &v33, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  return sub_1AAE14D50(&v45, &v33);
}

void sub_1AAE168D8(uint64_t a1)
{
  if (!qword_1ED9AF708)
  {
    sub_1AACAA194(255, qword_1ED9B3EA8, &type metadata for ModifierSymbol, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _ContainerValueWritingChartContentModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9AF708);
    }
  }
}

uint64_t ChartContent.symbol<A>(symbol:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = v6;
  v29 = a6;
  v30 = a4;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - v21;
  v23(v20);
  KeyPath = swift_getKeyPath();
  (*(v15 + 16))(v18, v22, a3);
  v25 = sub_1AAF8EF44();
  v32 = 1;
  v31[0] = KeyPath;
  v31[1] = v25;
  (*(v11 + 16))(v13, v7, a2);
  sub_1AAE168D8(0);
  return sub_1AAEEDCC4(v13, v22, v31, a2, a3, v26, v30, a5, v29, &off_1EE75E340);
}

uint64_t sub_1AAE16B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void *)@<X5>, uint64_t a7@<X8>)
{
  v26 = a7;
  v27 = a6;
  v8 = v7;
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a3, a5);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v8, a2, v19);
  (*(v15 + 16))(v17, v25, v14);
  return sub_1AAE1733C(v21, v17, a2, AssociatedTypeWitness, a3, *(a4 + 8), a5, v27, v26);
}

void ChartContent.symbolSize(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  KeyPath = swift_getKeyPath();
  *v11 = a4;
  v11[1] = 0;
  v12 = 0;
  v9 = swift_getKeyPath();
  *v10 = a4;
  v10[2] = 0;
  memset(&v10[6], 0, 24);
  sub_1AACD7E50(KeyPath, v11, v9, v10, a1, a2, a3);
}

void ChartContent.symbolSize(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  KeyPath = swift_getKeyPath();
  *v13 = a4;
  *&v13[1] = a5;
  v14 = 1;
  v11 = swift_getKeyPath();
  *v12 = a4;
  *&v12[1] = a5;
  v12[2] = 0;
  v12[6] = 0;
  v12[7] = 0;
  v12[8] = 0x4000000000000000;
  sub_1AACD7E50(KeyPath, v13, v11, v12, a1, a2, a3);
}

uint64_t ChartContent.symbolSize<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v34 = a2;
  v36 = a6;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PlottableValue(0, v12, v14, v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v31 - v17);
  (*(v19 + 16))(&v31 - v17, a1, v16);
  sub_1AACD6F84(v18, a3, a5, &v39);
  v20 = *(&v39 + 1);
  v33 = v39;
  LOBYTE(v18) = v40;
  v21 = v41;
  v31 = *(&v42 + 1);
  v32 = v42;
  v22 = v43;
  v23 = v44;
  v24 = v45;
  KeyPath = swift_getKeyPath();
  v49 = v39;
  v50 = v40;
  v48 = v21;
  v46 = v42;
  v47 = v43;
  v26 = v11;
  v27 = v11;
  v28 = v34;
  (*(v9 + 16))(v27, v35, v34);
  v38[0] = KeyPath;
  v38[1] = v33;
  v38[2] = v20;
  v38[3] = v18 & 1;
  v38[4] = v21;
  v38[5] = v32;
  v38[6] = v31;
  v38[7] = v22 & 0x83;
  v38[8] = v23 & 0xFFFFFFFFFFFFFF8;
  v38[9] = v24 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  sub_1AAE171B4(0);
  sub_1AAEEDDEC(v26, &v39, v38, v28, v29, v37, &off_1EE75E340, v36);
  sub_1AADFA6FC(&v49, v38);
  sub_1AAE20E20(&v48, v38, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  return sub_1AAE14D50(&v46, v38);
}

void sub_1AAE171B4(uint64_t a1)
{
  if (!qword_1EB425328)
  {
    sub_1AACAA194(255, &qword_1ED9B3D30, &type metadata for ModifierSymbolSize, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _ContainerValueWritingChartContentModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB425328);
    }
  }
}

double VectorizedChartContent.symbolSize(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return sub_1AAE163A0(a1, a2, a3, type metadata accessor for ModifiedChartContent_SymbolAreas_KeyPath, a4);
}

{
  return sub_1AAE163A0(a1, a2, a3, type metadata accessor for ModifiedChartContent_SymbolSizes_KeyPath, a4);
}

uint64_t sub_1AAE17260@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, void, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  (*(*(a3 - 8) + 32))(a6, a1);
  result = a5(0, a3, *(v11 + *MEMORY[0x1E69E77B0]), a4);
  *(a6 + *(result + 44)) = a2;
  return result;
}

uint64_t sub_1AAE1733C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  (*(*(a3 - 8) + 32))(a9, a1);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v17 = *(a8(0, v20) + 60);
  v18 = type metadata accessor for PlottableProjection(0, a4, a5, a7);
  return (*(*(v18 - 8) + 32))(a9 + v17, a2, v18);
}

uint64_t ChartContent.offset(x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v11 = *(a1 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, a1, v12);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  (*(v11 + 32))(a3, v14, a1);
  result = type metadata accessor for ModifiedChartContent_TransformEnvironment(0, a1, a2, v16);
  v18 = (a3 + *(result + 36));
  *v18 = sub_1AAE175EC;
  v18[1] = v15;
  return result;
}

float64_t sub_1AAE1756C(uint64_t a1, double a2, double a3)
{
  v4 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v5 = (a1 + *(v4 + 84));
  *v5 = vaddq_f64(*v5, vdupq_lane_s64(*&a2, 0));
  v5[1].f64[0] = v5[1].f64[0] + a2;
  v6 = (a1 + *(v4 + 88));
  *v6 = vaddq_f64(*v6, vdupq_lane_s64(*&a3, 0));
  result = v6[1].f64[0] + a3;
  v6[1].f64[0] = result;
  return result;
}

float64x2_t sub_1AAE17618(uint64_t a1)
{
  v9 = *(v1 + 16);
  v3 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v4 = (a1 + *(v3 + 84));
  v5 = *&v9 + v4[1].f64[0];
  v6 = *(v1 + 24);
  *v4 = vaddq_f64(vdupq_lane_s64(v9, 0), *v4);
  v4[1].f64[0] = v5;
  v7 = a1 + *(v3 + 88);
  result = vaddq_f64(v6, *(v7 + 8));
  *(v7 + 8) = result;
  return result;
}

uint64_t sub_1AAE176B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v15 = *(a1 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v19, a1, v16);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a8;
  (*(v15 + 32))(a5, v18, a1);
  result = type metadata accessor for ModifiedChartContent_TransformEnvironment(0, a1, a2, v21);
  v23 = (a5 + *(result + 36));
  *v23 = a4;
  v23[1] = v20;
  return result;
}

double sub_1AAE177FC(uint64_t a1)
{
  v6 = *&v1[2].f64[0];
  v3 = type metadata accessor for ChartContentRenderContext.Environment(0);
  *(a1 + *(v3 + 84) + 8) = vaddq_f64(v1[1], *(a1 + *(v3 + 84) + 8));
  v4 = (a1 + *(v3 + 88));
  *v4 = vaddq_f64(vdupq_lane_s64(v6, 0), *v4);
  result = *&v6 + v4[1].f64[0];
  v4[1].f64[0] = result;
  return result;
}

uint64_t ChartContent.offset(xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v14 = *(a1 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v18, a1, v15);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  (*(v14 + 32))(a3, v17, a1);
  result = type metadata accessor for ModifiedChartContent_TransformEnvironment(0, a1, a2, v20);
  v22 = (a3 + *(result + 36));
  *v22 = sub_1AAE179C8;
  v22[1] = v19;
  return result;
}

float64x2_t sub_1AAE179C8(uint64_t a1)
{
  v3 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v4 = v1[2];
  *(a1 + *(v3 + 84) + 8) = vaddq_f64(v1[1], *(a1 + *(v3 + 84) + 8));
  v5 = a1 + *(v3 + 88);
  result = vaddq_f64(v4, *(v5 + 8));
  *(v5 + 8) = result;
  return result;
}

uint64_t ChartContent.cornerRadius(_:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v37 = a4;
  v38 = MEMORY[0x1E697F488];
  sub_1AAE15B48(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  sub_1AACAA194(255, &qword_1ED9B4438, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  v16 = v15;
  sub_1AAE17D80(255);
  v41 = a2;
  v42 = v16;
  v43 = v17;
  v44 = a3;
  v45 = &off_1EE75E340;
  v18 = type metadata accessor for CombinedModifiedChartContent_Environment(0, &v41);
  v19 = *(v18 - 8);
  v35 = v18;
  v36 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v34 = &v34 - v20;
  KeyPath = swift_getKeyPath();
  v41 = *&a5;
  LOBYTE(v42) = 0;
  v23 = swift_getKeyPath();
  v39 = a5;
  v40 = 0;
  sub_1AACD7E50(KeyPath, &v41, v23, &v39, a2, a3, v21);

  v24 = swift_getKeyPath();
  v25 = sub_1AAF8E244();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v27(v14, a1, v25);
  v28 = *(v26 + 56);
  v28(v14, 0, 1, v25);
  v29 = swift_getKeyPath();
  v27(v11, a1, v25);
  v28(v11, 0, 1, v25);
  v31 = v34;
  v30 = v35;
  sub_1AACD7E50(v24, v14, v29, v11, v35, &off_1EE75E280, v37);

  v32 = v38;
  sub_1AACAC38C(v11, &qword_1ED9B5558, v38);
  sub_1AACAC38C(v14, &qword_1ED9B5558, v32);
  return (*(v36 + 8))(v31, v30);
}

void sub_1AAE17D80(uint64_t a1)
{
  if (!qword_1ED9B0DE8[0])
  {
    sub_1AACAA194(255, &qword_1ED9B4438, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _ContainerValueWritingChartContentModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1ED9B0DE8);
    }
  }
}

uint64_t ChartContent.rectangleCornerRadii(_:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<D0>, double a6@<D1>, double a7@<D2>, uint64_t a8@<D3>)
{
  v43 = a4;
  v44 = MEMORY[0x1E697F488];
  sub_1AAE15B48(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  sub_1AACAA194(255, &qword_1ED9B2BF8, MEMORY[0x1E697FA58], MEMORY[0x1E69E6720]);
  v22 = v21;
  sub_1AAE1817C(255);
  v47 = a2;
  v48 = v22;
  v49 = v23;
  v50 = a3;
  v51 = &off_1EE75E340;
  v24 = type metadata accessor for CombinedModifiedChartContent_Environment(0, &v47);
  v25 = *(v24 - 8);
  v41 = v24;
  v42 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v40 - v26;
  v40 = &v40 - v26;
  KeyPath = swift_getKeyPath();
  v47 = a5;
  v48 = a6;
  v49 = a7;
  v50 = a8;
  LOBYTE(v51) = 0;
  v29 = swift_getKeyPath();
  v45[0] = a5;
  *&v45[1] = a6;
  *&v45[2] = a7;
  v45[3] = a8;
  v46 = 0;
  sub_1AACD7E50(KeyPath, &v47, v29, v45, a2, a3, v27);

  v30 = swift_getKeyPath();
  v31 = sub_1AAF8E244();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v33(v20, a1, v31);
  v34 = *(v32 + 56);
  v34(v20, 0, 1, v31);
  v35 = swift_getKeyPath();
  v33(v17, a1, v31);
  v34(v17, 0, 1, v31);
  v37 = v40;
  v36 = v41;
  sub_1AACD7E50(v30, v20, v35, v17, v41, &off_1EE75E280, v43);

  v38 = v44;
  sub_1AACAC38C(v17, &qword_1ED9B5558, v44);
  sub_1AACAC38C(v20, &qword_1ED9B5558, v38);
  return (*(v42 + 8))(v37, v36);
}

void sub_1AAE1817C(uint64_t a1)
{
  if (!qword_1ED9AF710)
  {
    sub_1AACAA194(255, &qword_1ED9B2BF8, MEMORY[0x1E697FA58], MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _ContainerValueWritingChartContentModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9AF710);
    }
  }
}

double ChartContent.interpolationMethod(_:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v15 = a1;
  v16 = a2;
  v11 = swift_getKeyPath();
  v13 = a1;
  v14 = a2;
  sub_1AACD7E50(KeyPath, &v15, v11, &v13, a3, a4, a5);

  return result;
}

uint64_t ChartContent.blur(radius:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v11, a1, v8);
  sub_1AAE15B48(0, qword_1EB425330, MEMORY[0x1E697E7A0], MEMORY[0x1E69E6F90]);
  sub_1AAF8DDD4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AAF92AB0;
  sub_1AAF8DDB4();
  (*(v7 + 32))(a3, v10, a1);
  result = type metadata accessor for ModifiedChartContent_Filters(0, a1, a2, v13);
  *(a3 + *(result + 36)) = v12;
  return result;
}

uint64_t ChartContent.shadow(color:radius:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v14, a2, v11);
  sub_1AAE15B48(0, qword_1EB425330, MEMORY[0x1E697E7A0], MEMORY[0x1E69E6F90]);
  sub_1AAF8DDD4();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AAF92AB0;
  sub_1AAF8DDC4();
  (*(v10 + 32))(a4, v13, a2);
  result = type metadata accessor for ModifiedChartContent_Filters(0, a2, a3, v16);
  *(a4 + *(result + 36)) = v15;
  return result;
}

void ChartContent.zIndex(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = a3;
  sub_1AAE15BAC(KeyPath, &v9, a1, a2, a4);
}

uint64_t sub_1AAE18720(uint64_t a1, uint64_t (*a2)(uint64_t, void *), uint64_t a3)
{
  v4 = *(a1 + 8);
  v7[0] = *a1;
  v7[2] = v4;
  v6 = *(a1 + 16);
  v7[1] = swift_getAssociatedTypeWitness();
  v8 = v6;
  a2(255, v7);
  return swift_getWitnessTable();
}

uint64_t sub_1AAE18834(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, void), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a2(255, v4, AssociatedTypeWitness, *(v5 + 8));

  return swift_getWitnessTable();
}

uint64_t sub_1AAE188CC(uint64_t *a1, uint64_t (*a2)(uint64_t, void *), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(v6 + 8);
  v11[0] = v4;
  v11[1] = AssociatedTypeWitness;
  v11[2] = v5;
  v11[3] = v9;
  v11[4] = v7;
  a2(255, v11);
  return swift_getWitnessTable();
}

void sub_1AAE18974(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1AAE15B48(319, &qword_1ED9B2A48, MEMORY[0x1E697E7A0], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1AAE18A44(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1AACFDCAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE18ACC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1AAE18C08(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
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
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1AAE18DC0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for CGSize(255);
    result = sub_1AAF90774();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE18E68(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for ChartContentRenderContext.Environment(255);
    result = sub_1AAF90274();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AAE18F38(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for TypedVectorizedProperties.Position(319, *(a1 + 24), v3, v4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE18FCC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 129;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
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
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 48);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((((v6 + 7) & 0xF8) + 87) & 0xF8) - 127));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_1AAE19128(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 129;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 72) = 0;
          result = 0.0;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 48) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 129);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

void sub_1AAE1932C(void *a1)
{
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    type metadata accessor for PlottableValue(319, a1[3], a1[6], v2);
    if (v4 <= 0x3F)
    {
      sub_1AACAA194(319, &qword_1ED9B1E70, MEMORY[0x1E6980D10], MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1AAE19400(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if (((v7 + v8) & ~v8) + v7 <= v7)
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = ((v7 + v8) & ~v8) + v7;
  }

  if (v5 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v8 | 7;
  v12 = (v8 | 7) + *(*(*(a3 + 16) - 8) + 64);
  if (v10 >= a2)
  {
    goto LABEL_31;
  }

  v13 = ((((v8 + 32) & ~v8) + (v12 & ~v11) + v9 + 1) & 0xFFFFFFFFFFFFFFF8) + 17;
  v14 = (a2 - v10 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (!v18)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v17 || (v18 = a1[v13]) == 0)
  {
LABEL_31:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v22 = *((&a1[v12] & ~v11) + 0x18);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }

  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v10 + (v21 | v20) + 1;
}

void sub_1AAE195D0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  if (((v9 + v10) & ~v10) + v9 > v9)
  {
    v9 += (v9 + v10) & ~v10;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v6 + 84);
  }

  v12 = v10 | 7;
  v13 = (v10 | 7) + *(*(*(a4 + 16) - 8) + 64);
  v14 = ((v10 + 32) & ~v10) + v9 + 1;
  v15 = ((v14 + (v13 & ~(v10 | 7))) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v11 >= a3)
  {
    v19 = 0;
    if (v11 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = (a3 - v11 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v11 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 < 0x7FFFFFFF)
      {
        v23 = (&a1[v13] & ~v12);
        if ((a2 & 0x80000000) != 0)
        {
          if (v14 <= 3)
          {
            v24 = ~(-1 << (8 * v14));
          }

          else
          {
            v24 = 0x7FFFFFFF;
          }

          if (v14)
          {
            v25 = v24 & a2;
            if (v14 <= 3)
            {
              v26 = v14;
            }

            else
            {
              v26 = 4;
            }

            bzero(v23, v14);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *v23 = v25;
                v23[2] = BYTE2(v25);
              }

              else
              {
                *v23 = v25;
              }
            }

            else if (v26 == 1)
            {
              *v23 = v25;
            }

            else
            {
              *v23 = v25;
            }
          }
        }

        else
        {
          *((&a1[v13] & ~v12) + 0x18) = a2 - 1;
        }
      }

      else
      {
        v22 = *(v6 + 56);

        v22();
      }

      return;
    }
  }

  v20 = ~v11 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

uint64_t sub_1AAE198B4(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for PlottableProjection(319, a1[3], a1[4], a1[6]);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE19944(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v5 = *(v32 - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a3 + 32) - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  if (((v8 + v9) & ~v9) + v8 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = ((v8 + v9) & ~v9) + v8;
  }

  v11 = *(sub_1AAF8CB94() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1AAF8CBA4() - 8);
  v15 = *(v14 + 80);
  v16 = ((((v12 + 8) & ~v12) + v13 + v15) & ~v15) + *(v14 + 64);
  if (v10 > v16)
  {
    v16 = v10;
  }

  if (v16 <= 0x10)
  {
    v17 = 16;
  }

  else
  {
    v17 = v16;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v12 | v15 | v9;
  v20 = v19 | 7;
  v21 = (v19 | 7) + *(v5 + 64);
  if (a2 <= v18)
  {
    goto LABEL_36;
  }

  v22 = v17 + ((v19 + 32) & ~v20) + (v21 & ~v20) + 1;
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v18 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v26 < 2)
    {
LABEL_36:
      if (v6 < 0x7FFFFFFF)
      {
        v31 = *(((a1 + v21) & ~v20) + 0x18);
        if (v31 >= 0xFFFFFFFF)
        {
          LODWORD(v31) = -1;
        }

        return (v31 + 1);
      }

      else
      {
        v30 = *(v5 + 48);

        return v30(a1, v6, v32);
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_36;
  }

LABEL_23:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v28 = v22;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v18 + (v29 | v27) + 1;
}

void sub_1AAE19C88(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 16);
  v6 = *(v38 - 8);
  v37 = v6;
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 32) - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  if (((v9 + v10) & ~v10) + v9 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = ((v9 + v10) & ~v10) + v9;
  }

  v12 = *(sub_1AAF8CB94() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(sub_1AAF8CBA4() - 8);
  v16 = *(v15 + 80);
  v17 = ((((v13 + 8) & ~v13) + v14 + v16) & ~v16) + *(v15 + 64);
  if (v11 > v17)
  {
    v17 = v11;
  }

  if (v17 <= 0x10)
  {
    v18 = 16;
  }

  else
  {
    v18 = v17;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v7;
  }

  v20 = v13 | v16 | v10;
  v21 = v20 | 7;
  v22 = (v20 | 7) + *(v6 + 64);
  v23 = v18 + ((v20 + 32) & ~(v20 | 7)) + 1;
  v24 = v23 + (v22 & ~(v20 | 7));
  if (a3 <= v19)
  {
    v26 = 0;
    v25 = a1;
  }

  else
  {
    v25 = a1;
    if (v24 <= 3)
    {
      v29 = ((a3 - v19 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  if (v19 < a2)
  {
    v27 = ~v19 + a2;
    if (v24 < 4)
    {
      v28 = (v27 >> (8 * v24)) + 1;
      if (v24)
      {
        v31 = v27 & ~(-1 << (8 * v24));
        bzero(v25, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v25 = v31;
            if (v26 > 1)
            {
LABEL_63:
              if (v26 == 2)
              {
                *&v25[v24] = v28;
              }

              else
              {
                *&v25[v24] = v28;
              }

              return;
            }
          }

          else
          {
            *v25 = v27;
            if (v26 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *v25 = v31;
        v25[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(v25, v24);
      *v25 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v26)
    {
      v25[v24] = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&v25[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&v25[v24] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v26)
  {
    goto LABEL_38;
  }

  v25[v24] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v7 < 0x7FFFFFFF)
  {
    v33 = (&v25[v22] & ~v21);
    if ((a2 & 0x80000000) != 0)
    {
      if (v23 <= 3)
      {
        v34 = ~(-1 << (8 * v23));
      }

      else
      {
        v34 = 0x7FFFFFFF;
      }

      if (v23)
      {
        v35 = v34 & a2;
        if (v23 <= 3)
        {
          v36 = v23;
        }

        else
        {
          v36 = 4;
        }

        bzero(v33, v23);
        if (v36 > 2)
        {
          if (v36 == 3)
          {
            *v33 = v35;
            *(v33 + 2) = BYTE2(v35);
          }

          else
          {
            *v33 = v35;
          }
        }

        else if (v36 == 1)
        {
          *v33 = v35;
        }

        else
        {
          *v33 = v35;
        }
      }
    }

    else
    {
      *(v33 + 3) = a2 - 1;
    }
  }

  else
  {
    v32 = *(v37 + 56);

    v32(v25, a2, v7, v38);
  }
}

uint64_t sub_1AAE1A0C0(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1AAF90774();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE1A14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v65 = a2;
  v64 = a1;
  v12 = type metadata accessor for PlottableValue(0, a5, a7, a4);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = (&v57 - v13);
  v14 = type metadata accessor for PlottableProjection.Storage(0, a4, a5, a7);
  v61 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v59 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v57 - v20;
  v21 = type metadata accessor for PlottableProjection(0, a4, a5, a7);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v57 - v23;
  v65 = *v65;
  v62 = a3;
  *&v69 = a3;
  *(&v69 + 1) = a4;
  v70 = a5;
  v71 = a6;
  v63 = a6;
  *&v72 = a7;
  v25 = type metadata accessor for ModifiedChartContent_LineStyle_Plottable(0, &v69);
  v26 = v64 + *(v25 + 60);
  (*(v22 + 16))(v24, v26, v21);
  v27 = a5;
  sub_1AAE8C998(v24, a4, a5, a7, &v69);
  v28 = v65;
  swift_beginAccess();
  sub_1AAE20F5C(&v69, v28 + 1016, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  v29 = *(v21 + 44);
  v30 = v61;
  (*(v61 + 16))(v16, v26 + v29, v14);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v30 + 8))(v16, v14);
  }

  else
  {
    v61 = v28;
    v31 = v59;
    v32 = v58;
    (*(v59 + 32))(v58, v16, a5);
    v33 = *v26;
    v34 = *(v26 + 8);
    v35 = *(v26 + 16);
    v36 = *(v26 + 24);
    v37 = v57;
    (*(v31 + 16))(v57, v32, a5);
    v38 = v60;
    sub_1AACD6EC4(v33, v34, v35, v36, v37, v27, a7, v60);

    sub_1AACD7304(v33, v34, v35);
    sub_1AACD6F84(v38, v27, a7, &v69);
    v77 = v72;
    v78 = v73;
    v39 = v72;
    v40 = v73;
    v41 = v31;
    if (v73 < 0)
    {
      v49 = v77;
      v50 = v72 & 0x7FF0000000000000;
      if (v73)
      {
        v44 = v61;
        swift_beginAccess();
        if (v50 != 0x7FF0000000000000)
        {
          if (*(v44 + 648))
          {
            v51 = *&v39;
          }

          else
          {
            v51 = *(v44 + 632);
            if (v51 >= *&v39)
            {
              v51 = *&v39;
            }

            if (*(v44 + 640) >= *&v39)
            {
              v49 = *(v44 + 640);
            }
          }

          *(v44 + 632) = v51;
          *(v44 + 640) = v49;
          *(v44 + 648) = 0;
        }

        if ((~*(&v39 + 1) & 0x7FF0000000000000) != 0)
        {
          if (*(v44 + 648))
          {
            *(v44 + 632) = *(&v39 + 1);
            *(v44 + 640) = *(&v39 + 1);
            *(v44 + 648) = 0;
          }

          else
          {
            v53 = *(v44 + 640);
            v54 = *(v44 + 632);
            if (v54 >= *(&v39 + 1))
            {
              v54 = *(&v39 + 1);
            }

            *(v44 + 632) = v54;
            if (v53 < *(&v39 + 1))
            {
              v53 = *(&v39 + 1);
            }

            *(v44 + 640) = v53;
            *(v44 + 648) = 0;
          }
        }
      }

      else
      {
        v44 = v61;
        swift_beginAccess();
        if (v50 != 0x7FF0000000000000)
        {
          if (*(v44 + 624))
          {
            v52 = *&v39;
          }

          else
          {
            v52 = *(v44 + 608);
            if (v52 >= *&v39)
            {
              v52 = *&v39;
            }

            if (*(v44 + 616) >= *&v39)
            {
              v49 = *(v44 + 616);
            }
          }

          *(v44 + 608) = v52;
          *(v44 + 616) = v49;
          *(v44 + 624) = 0;
        }

        if ((~*(&v39 + 1) & 0x7FF0000000000000) != 0)
        {
          if (*(v44 + 624))
          {
            *(v44 + 608) = *(&v39 + 1);
            *(v44 + 616) = *(&v39 + 1);
            *(v44 + 624) = 0;
          }

          else
          {
            v55 = *(v44 + 616);
            v56 = *(v44 + 608);
            if (v56 >= *(&v39 + 1))
            {
              v56 = *(&v39 + 1);
            }

            *(v44 + 608) = v56;
            if (v55 < *(&v39 + 1))
            {
              v55 = *(&v39 + 1);
            }

            *(v44 + 616) = v55;
            *(v44 + 624) = 0;
          }
        }
      }
    }

    else
    {
      v42 = v61;
      swift_beginAccess();
      v43 = v40;
      v44 = v42;
      sub_1AACD3D44(v39, *(&v39 + 1), v43);
      swift_endAccess();
    }

    v45 = v74;
    v46 = v75;
    swift_beginAccess();
    if (*(v44 + 673) << 8 == 512)
    {
      sub_1AAE082D0(v45, (v44 + 672), v45, v46);
    }

    swift_endAccess();
    v47 = v71;
    v66 = v69;
    v67 = v70;
    sub_1AAD6E0DC(&v66);
    v76 = v47;
    sub_1AACD84B4(&v76, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD6E18C(&v77);
    (*(v41 + 8))(v32, v27);
  }

  v68 = v65;
  return (*(v63 + 32))(v64, &v68);
}

uint64_t sub_1AAE1A83C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v119 = a3;
  v120 = a6;
  v117 = a8;
  v118 = a1;
  v12 = type metadata accessor for PlottableValue(0, a5, a7, a4);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v105 = (&v103 - v13);
  v109 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v108 = &v103 - v17;
  v18 = type metadata accessor for PlottableProjection.Storage(0, a4, a5, a7);
  v114 = *(v18 - 8);
  *&v115 = v18;
  MEMORY[0x1EEE9AC00](v18);
  *&v113 = &v103 - v19;
  v20 = type metadata accessor for PlottableProjection(0, a4, a5, a7);
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v103 - v22;
  v116 = *a2;
  v24 = *(a2 + 1);
  *&v140[0] = v119;
  *(&v140[0] + 1) = a4;
  *&v140[1] = a5;
  *(&v140[1] + 1) = v120;
  *&v140[2] = a7;
  v25 = type metadata accessor for ModifiedChartContent_LineStyle_Plottable(0, v140);
  v26 = v118 + *(v25 + 60);
  v27 = *(v21 + 16);
  v111 = v20;
  v112 = v26;
  v27(v23);
  v181[0] = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale);
  v28 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 64);
  v30 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 16);
  v29 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 32);
  v183 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 48);
  v184 = v28;
  v181[1] = v30;
  v182 = v29;
  v32 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 96);
  v31 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 112);
  v33 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 80);
  v188 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 128);
  v186 = v32;
  v187 = v31;
  v185 = v33;
  v140[6] = v32;
  v140[7] = v31;
  LOBYTE(v140[8]) = v188;
  v140[2] = v182;
  v140[3] = v183;
  v140[4] = v184;
  v140[5] = v33;
  v140[0] = v181[0];
  v140[1] = v30;
  sub_1AAE20E90(v181, v139, sub_1AACC9D70);
  sub_1AAF8D914();
  v106 = a7;
  v107 = a5;
  sub_1AAF305E0(v23, v140, v139, a4, MEMORY[0x1E697DD48], &v189);
  v110 = v24;
  v34 = v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v121 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v35 = v34 + *(v121 + 108);
  if (*(v35 + 24))
  {
    sub_1AAE0FC20(v35, &v129);
    sub_1AAF303E4(a4, v139);
    sub_1AAE0FC7C(&v129);
    v38 = a4;
    if (*(&v139[1] + 1) != 2)
    {
      memcpy(v140, v139, 0x2C9uLL);
      v135 = v190;
      v136 = v191;
      v137[0] = v192[0];
      *(v137 + 9) = *(v192 + 9);
      v134 = v189;
      v162 = v139[9];
      v163[0] = v139[10];
      *(v163 + 9) = *(&v139[10] + 9);
      v160 = v139[7];
      v161 = v139[8];
      v40 = type metadata accessor for VisualMapper(0, a4, MEMORY[0x1E697DD48], v39);
      (*(*(v40 - 8) + 16))(&v129, &v189, v40);
      v41 = sub_1AAF8FE74();
      (*(*(v41 - 8) + 8))(&v160, v41);
      v140[8] = v135;
      v140[9] = v136;
      v140[10] = v137[0];
      *(&v140[10] + 9) = *(v137 + 9);
      v140[7] = v134;
      v44 = type metadata accessor for TypedVectorizedProperties(0, a4, v42, v43);
      v45 = *(v44 - 8);
      (*(v45 + 16))(&v129, v140, v44);
      sub_1AAF30464(&v129, a4, v156, v46, v47);
      swift_beginAccess();
      sub_1AAE20F5C(v156, v34 + *(v121 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
      swift_endAccess();
      (*(v45 + 8))(v140, v44);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v139, 0, 24);
    *(&v139[1] + 1) = 2;
    bzero(&v139[2], 0x2A9uLL);
    v38 = a4;
  }

  type metadata accessor for TypedVectorizedProperties(255, v38, v36, v37);
  v48 = sub_1AAF8FE74();
  (*(*(v48 - 8) + 8))(v139, v48);
  memset(v146, 0, sizeof(v146));
  v147 = 1;
  v149 = 0;
  v148 = 0;
  v150 = 0;
  memset(v151, 0, sizeof(v151));
  v152 = 1;
  v154 = 0;
  v153 = 0;
  v155 = 0;
  v156[0] = v189;
  *(v157 + 9) = *(v192 + 9);
  v156[2] = v191;
  v157[0] = v192[0];
  v156[1] = v190;
  v124 = 0uLL;
  v125 = 0;
  v126 = 1;
  v127 = 0u;
  memset(v128, 0, sizeof(v128));
  memset(v158, 0, sizeof(v158));
  v159 = -4;
  sub_1AAD3CF1C(&v134);
  v163[3] = v137[3];
  v163[4] = v137[4];
  v164 = v138;
  v162 = v136;
  v163[0] = v137[0];
  v163[1] = v137[1];
  v163[2] = v137[2];
  v160 = v134;
  v161 = v135;
  memset(v165, 0, sizeof(v165));
  v166 = 1;
  v168 = 0;
  v167 = 0;
  v169 = 0;
  memset(v170, 0, sizeof(v170));
  v171 = 1;
  v173 = 0;
  v172 = 0;
  v174 = 0;
  v175 = 0uLL;
  v176 = 0;
  v177 = 1;
  v180 = 0;
  v179 = 0u;
  v178 = 0u;
  sub_1AAF304C8(v146, v151, v156, &v124, v158, &v160, v165, v170, &v129, &v175, &v175);
  sub_1AAF30464(&v129, v38, &v124, v49, v50);
  swift_beginAccess();
  v51 = *(v121 + 108);
  v53 = type metadata accessor for VisualMapper(0, v38, MEMORY[0x1E697DD48], v52);
  (*(*(v53 - 8) + 16))(&v129, &v189, v53);
  sub_1AAE20F5C(&v124, v34 + v51, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
LABEL_6:
  v54 = v112;
  v56 = v114;
  v55 = v115;
  v57 = v113;
  (*(v114 + 16))(v113, v112 + *(v111 + 11), v115);
  if (swift_getEnumCaseMultiPayload())
  {
    LOBYTE(v140[0]) = v116;
    *(&v140[0] + 1) = v110;
    (*(v120 + 40))(v118, v140);
    v59 = type metadata accessor for VisualMapper(0, v38, MEMORY[0x1E697DD48], v58);
    (*(*(v59 - 8) + 8))(&v189, v59);
    return (*(v56 + 8))(v57, v55);
  }

  else
  {
    v61 = v109;
    v62 = *(v109 + 32);
    v112 = v38;
    v63 = v108;
    v64 = v107;
    v62();
    v114 = *(v34 + 80);
    v65 = (v34 + *(v121 + 80));
    v66 = *(v34 + 64);
    v113 = *(v34 + 48);
    v115 = v66;
    v67 = *(v65 + 8);
    v68 = v65[3];
    v69 = v65[1];
    v131 = v65[2];
    v132 = v68;
    v133 = v67;
    v130 = v69;
    v129 = *v65;
    v71 = *v54;
    v70 = *(v54 + 8);
    v72 = *(v54 + 16);
    v73 = *(v54 + 24);
    v74 = *(v61 + 16);
    v75 = v104;
    v74(v104, v63, v64);
    v76 = v105;
    v77 = v75;
    v78 = v106;
    sub_1AACD6EC4(v71, v70, v72, v73, v77, v64, v106, v105);

    v111 = MEMORY[0x1E69E6720];
    sub_1AAE20E20(&v129, v140, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
    sub_1AACD7304(v71, v70, v72);

    sub_1AACD6F84(v76, v64, v78, &v141);
    v79 = v143;
    LOBYTE(v78) = v144;
    v80 = v110;
    sub_1AAE0BA04(*&v143, *(&v143 + 1), v144, 8, &v134);
    v81 = v136;
    v82 = v135;
    *(v34 + 48) = v134;
    *(v34 + 64) = v82;
    *(v34 + 80) = v81;
    v83 = v141;
    v124 = v141;
    LOBYTE(v125) = v142;
    v123[0] = *(&v142 + 1);
    v84 = v34 + *(v121 + 80);
    v139[0] = *v84;
    v86 = *(v84 + 32);
    v85 = *(v84 + 48);
    v87 = *(v84 + 16);
    *&v139[4] = *(v84 + 64);
    v139[2] = v86;
    v139[3] = v85;
    v139[1] = v87;
    v88 = v142;
    v89 = v144;
    *(v84 + 32) = v143;
    *(v84 + 48) = v89;
    *(v84 + 64) = v145;
    *v84 = v83;
    *(v84 + 16) = v88;
    sub_1AADFA6FC(&v124, v140);
    v90 = MEMORY[0x1E69E62F8];
    sub_1AAE20E20(v123, v140, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AACD7C50(v79, *(&v79 + 1), v78);

    v91 = v111;
    sub_1AACD84B4(v139, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v111);
    LOBYTE(v140[0]) = v116;
    *(&v140[0] + 1) = v80;
    (*(v120 + 40))(&v122, v118, v140);
    sub_1AAD6E0DC(&v124);
    sub_1AACD84B4(v123, &qword_1ED9B1E40, MEMORY[0x1E69810C8], v90);
    sub_1AAD0E818(v79, *(&v79 + 1), v78);
    v93 = type metadata accessor for VisualMapper(0, v112, MEMORY[0x1E697DD48], v92);
    (*(*(v93 - 8) + 8))(&v189, v93);
    (*(v109 + 8))(v108, v107);
    v94 = v115;
    *(v34 + 48) = v113;
    *(v34 + 64) = v94;
    *(v34 + 80) = v114;
    v95 = v122;
    v96 = v34 + *(v121 + 80);
    v140[0] = *v96;
    v97 = *(v96 + 16);
    v98 = *(v96 + 32);
    v99 = *(v96 + 48);
    *&v140[4] = *(v96 + 64);
    v140[2] = v98;
    v140[3] = v99;
    v140[1] = v97;
    v100 = v133;
    v101 = v132;
    v102 = v130;
    *(v96 + 32) = v131;
    *(v96 + 48) = v101;
    *(v96 + 64) = v100;
    *(v96 + 16) = v102;
    *v96 = v129;

    result = sub_1AACD84B4(v140, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v91);
    *v117 = v95;
  }

  return result;
}

uint64_t sub_1AAE1B520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v24 = a1;
  v25 = a4;
  v29 = a5;
  v6 = *(a3 - 8);
  v27 = a2;
  v28 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v26 = *v12;
  v13 = *(v12 + 1);
  v17 = type metadata accessor for ModifiedChartContent_Environment(0, v14, v15, v16);
  swift_beginAccess();
  v18 = swift_readAtKeyPath();
  v19 = *(v6 + 16);
  v19(v11);
  v18(v30, 0);
  swift_endAccess();
  v20 = v24;
  (v19)(v8, v24 + *(v17 + 48), a3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  v30[0] = v26;
  v31 = v13;
  (*(v25 + 40))(v32, v20, v30);
  v21 = v32[0];
  (v19)(v8, v11, a3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  result = (*(v28 + 8))(v11, a3);
  *v29 = v21;
  return result;
}

uint64_t sub_1AAE1B794@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v12 = *(v11 + *MEMORY[0x1E69E6CE8] + 8);
  v13 = type metadata accessor for ModifiedChartContent_Environment(0, a4, v12, a5);
  *(a6 + *(v13 + 44)) = a2;
  v14 = *(*(v12 - 8) + 32);
  v15 = a6 + *(v13 + 48);

  return v14(v15, a3, v12);
}

uint64_t sub_1AAE1B8B4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(a2 + 1);
  v15 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  sub_1AAE20E90(v14 + v15, v12, type metadata accessor for ChartContentRenderContext.Environment);
  v17 = *(a1 + *(type metadata accessor for ModifiedChartContent_TransformEnvironment(0, a3, a4, v16) + 36));
  swift_beginAccess();
  v17(v14 + v15);
  swift_endAccess();
  v22[0] = v13;
  v23 = v14;
  (*(a4 + 40))(&v21, a1, v22, a3, a4);
  v18 = v21;
  swift_beginAccess();
  sub_1AAE20EF8(v12, v14 + v15);
  result = swift_endAccess();
  *a5 = v18;
  return result;
}

uint64_t sub_1AAE1BA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v36 = a6;
  v37 = a3;
  v12 = a3;
  *&v38 = a2;
  v14 = type metadata accessor for PlottableValue(0, a4, a7, a4);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v34 - v16);
  *&v47 = v12;
  *(&v47 + 1) = a4;
  *&v48 = a5;
  *(&v48 + 1) = a6;
  *&v49 = a7;
  *(&v49 + 1) = v34;
  v18 = type metadata accessor for ModifiedChartContent_Position(0, &v47);
  v19 = *(v18 + 68);
  v20 = *(v15 + 16);
  v38 = *v38;
  v20(v17, a1 + v19, v14);
  sub_1AACD6F84(v17, a4, a7, &v53);
  v21 = *(v18 + 76);
  v35 = a1;
  v22 = (a1 + v21);
  v23 = *v22;
  LOBYTE(v12) = *(v22 + 8);
  swift_getKeyPath();
  swift_beginAccess();

  v24 = swift_readAtKeyPath();
  v26 = v25[1];
  v47 = *v25;
  v48 = v26;
  v28 = v25[3];
  v27 = v25[4];
  v29 = v25[2];
  v52 = *(v25 + 80);
  v50 = v28;
  v51 = v27;
  v49 = v29;
  v30 = MEMORY[0x1E69E6720];
  sub_1AAE20E20(&v47, &v40, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
  v24(v39, 0);
  swift_endAccess();

  swift_beginAccess();
  v43 = v56;
  v41 = v54;
  v42 = v55;
  v40 = v53;
  v61 = v53;
  *&v44 = v57;
  *(&v44 + 1) = v23;
  v45 = v12;
  v62 = v54;
  v60 = *(&v54 + 1);
  v58 = v55;
  v59 = v56;
  sub_1AADFA6FC(&v61, v46);
  v31 = MEMORY[0x1E69810C8];
  v32 = MEMORY[0x1E69E62F8];
  sub_1AAE20E20(&v60, v46, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  sub_1AAE14D50(&v58, v46);
  swift_setAtWritableKeyPath();
  swift_endAccess();
  v40 = v38;
  (*(v36 + 32))(v35, &v40);
  swift_beginAccess();
  v43 = v50;
  v44 = v51;
  v45 = v52;
  v40 = v47;
  v41 = v48;
  v42 = v49;
  sub_1AAE20E20(&v47, v39, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v30);
  swift_setAtWritableKeyPath();
  swift_endAccess();

  sub_1AAD6E0DC(&v61);
  sub_1AACD84B4(&v60, &qword_1ED9B1E40, v31, v32);
  sub_1AAD6E18C(&v58);
  return sub_1AACD84B4(&v47, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v30);
}

uint64_t sub_1AAE1BE50@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v36 = a8;
  v37 = a6;
  v35 = a5;
  v39 = a3;
  v40 = a9;
  v15 = type metadata accessor for PlottableValue(0, a4, a7, a4);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v34 - v17);
  v38 = *a2;
  v19 = *(a2 + 1);
  *&v49 = a3;
  *(&v49 + 1) = a4;
  *&v50 = v35;
  *(&v50 + 1) = a6;
  *&v51 = a7;
  *(&v51 + 1) = v36;
  v20 = type metadata accessor for ModifiedChartContent_Position(0, &v49);
  (*(v16 + 16))(v18, a1 + *(v20 + 68), v15);
  sub_1AACD6F84(v18, a4, a7, &v55);
  v21 = (a1 + *(v20 + 76));
  v22 = *v21;
  LOBYTE(v15) = *(v21 + 8);
  swift_getKeyPath();
  swift_beginAccess();

  v23 = swift_readAtKeyPath();
  v25 = v24[1];
  v49 = *v24;
  v50 = v25;
  v27 = v24[3];
  v26 = v24[4];
  v28 = v24[2];
  v54 = *(v24 + 80);
  v52 = v27;
  v53 = v26;
  v51 = v28;
  v29 = MEMORY[0x1E69E6720];
  sub_1AAE20E20(&v49, &v42, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
  v23(v41, 0);
  swift_endAccess();

  swift_beginAccess();
  v45 = v58;
  v43 = v56;
  v44 = v57;
  v42 = v55;
  v63 = v55;
  *&v46 = v59;
  *(&v46 + 1) = v22;
  v47 = v15;
  v64 = v56;
  v62 = *(&v56 + 1);
  v60 = v57;
  v61 = v58;
  sub_1AADFA6FC(&v63, v48);
  v30 = MEMORY[0x1E69810C8];
  v31 = MEMORY[0x1E69E62F8];
  sub_1AAE20E20(&v62, v48, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  sub_1AAE14D50(&v60, v48);
  swift_setAtWritableKeyPath();
  swift_endAccess();
  LOBYTE(v42) = v38;
  *(&v42 + 1) = v19;
  (*(v37 + 40))(v41, a1, &v42);
  v32 = v41[0];
  swift_beginAccess();
  v45 = v52;
  v46 = v53;
  v47 = v54;
  v42 = v49;
  v43 = v50;
  v44 = v51;
  sub_1AAE20E20(&v49, v41, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v29);
  swift_setAtWritableKeyPath();
  swift_endAccess();

  sub_1AAD6E0DC(&v63);
  sub_1AACD84B4(&v62, &qword_1ED9B1E40, v30, v31);
  sub_1AAD6E18C(&v60);
  result = sub_1AACD84B4(&v49, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v29);
  *v40 = v32;
  return result;
}

uint64_t sub_1AAE1C28C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *a2;
  v13 = *a2;
  swift_beginAccess();
  sub_1AAE20E20(v13 + 1184, v21, &qword_1ED9AE368, &type metadata for VectorizedPlottables.Position, MEMORY[0x1E69E6720]);
  *&v17 = a3;
  *(&v17 + 1) = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v14 = type metadata accessor for ModifiedChartContent_Positions(0, &v17);
  sub_1AAE210E0(a1 + *(v14 + 60), &v17);
  swift_beginAccess();
  sub_1AAE20F5C(&v17, v13 + 1184, &qword_1ED9AE368, &type metadata for VectorizedPlottables.Position);
  swift_endAccess();
  v17 = v16;
  (*(*(a6 + 8) + 32))(a1, &v17, a3);
  swift_beginAccess();
  sub_1AAE20F5C(v21, v13 + 1184, &qword_1ED9AE368, &type metadata for VectorizedPlottables.Position);
  return swift_endAccess();
}

uint64_t sub_1AAE1C3F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = *a2;
  v55 = *(a2 + 1);
  v13 = v55 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v53 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v14 = v13 + *(v53 + 108);
  if (!*(v14 + 24))
  {
    memset(__src, 0, 24);
    __src[3] = 2;
    bzero(&__src[4], 0x2A9uLL);
    goto LABEL_5;
  }

  sub_1AAE0FC20(v14, &v61);
  sub_1AAF303E4(a4, __src);
  sub_1AAE0FC7C(&v61);
  if (__src[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties(255, a4, v15, v16);
    v36 = sub_1AAF8FE74();
    (*(*(v36 - 8) + 8))(__src, v36);
    memset(v86, 0, 24);
    v86[3] = 1;
    v86[5] = 0;
    v86[4] = 0;
    v87 = 0;
    memset(v88, 0, 24);
    v88[3] = 1;
    v88[5] = 0;
    v88[4] = 0;
    v89 = 0;
    v90 = 0uLL;
    v91 = 0;
    v92 = 1;
    v93 = 0u;
    memset(v94, 0, sizeof(v94));
    v56 = 0uLL;
    v57 = 0;
    v58 = 1;
    v59 = 0u;
    memset(v60, 0, sizeof(v60));
    memset(v95, 0, sizeof(v95));
    v96 = -4;
    v61 = a3;
    v62 = a4;
    v63 = a5;
    v64 = a6;
    v65 = a7;
    v37 = a1 + *(type metadata accessor for ModifiedChartContent_Positions(0, &v61) + 64);
    v38 = *(v37 + 80);
    v39 = *(v37 + 112);
    v72 = *(v37 + 96);
    v73 = v39;
    v40 = *(v37 + 16);
    v41 = *(v37 + 48);
    v68 = *(v37 + 32);
    v69 = v41;
    v42 = *(v37 + 48);
    v43 = *(v37 + 80);
    v70 = *(v37 + 64);
    v71 = v43;
    v44 = *(v37 + 16);
    v66 = *v37;
    v67 = v44;
    v45 = *(v37 + 112);
    v81 = v72;
    v82 = v45;
    v77 = v68;
    v78 = v42;
    v79 = v70;
    v80 = v38;
    v74 = *(v37 + 128);
    v83 = *(v37 + 128);
    v75 = v66;
    v76 = v40;
    nullsub_1();
    v103 = v81;
    v104 = v82;
    v105 = v83;
    v99 = v77;
    v100 = v78;
    v101 = v79;
    v102 = v80;
    v97 = v75;
    v98 = v76;
    memset(v106, 0, 24);
    v106[3] = 1;
    v106[5] = 0;
    v106[4] = 0;
    v107 = 0;
    memset(v108, 0, 24);
    v108[3] = 1;
    v108[4] = 0;
    v108[5] = 0;
    v109 = 0;
    v110 = 0uLL;
    v111 = 0;
    v112 = 1;
    v115 = 0;
    v114 = 0u;
    v113 = 0u;
    sub_1AAF304C8(v86, v88, &v90, &v56, v95, &v97, v106, v108, &v61, &v110, &v110);
    sub_1AAF30464(&v61, a4, &v56, v46, v47);
    swift_beginAccess();
    v48 = *(v53 + 108);
    v51 = type metadata accessor for TypedVectorizedProperties.Position(0, a4, v49, v50);
    (*(*(v51 - 8) + 16))(&v61, &v66, v51);
    sub_1AAE20F5C(&v56, v13 + v48, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v65 = a7;
  v17 = a1 + *(type metadata accessor for ModifiedChartContent_Positions(0, &v61) + 64);
  v18 = *(v17 + 80);
  v19 = *(v17 + 112);
  v72 = *(v17 + 96);
  v73 = v19;
  v20 = *(v17 + 16);
  v21 = *(v17 + 48);
  v68 = *(v17 + 32);
  v69 = v21;
  v22 = *(v17 + 48);
  v23 = *(v17 + 80);
  v70 = *(v17 + 64);
  v71 = v23;
  v24 = *(v17 + 16);
  v66 = *v17;
  v67 = v24;
  v25 = *(v17 + 112);
  v81 = v72;
  v82 = v25;
  v77 = v68;
  v78 = v22;
  v79 = v70;
  v80 = v18;
  v74 = *(v17 + 128);
  v83 = *(v17 + 128);
  v75 = v66;
  v76 = v20;
  nullsub_1();
  v103 = *&__dst[53];
  v104 = *&__dst[55];
  v105 = __dst[57];
  v99 = *&__dst[45];
  v100 = *&__dst[47];
  v101 = *&__dst[49];
  v102 = *&__dst[51];
  v97 = *&__dst[41];
  v98 = *&__dst[43];
  v28 = type metadata accessor for TypedVectorizedProperties.Position(0, a4, v26, v27);
  (*(*(v28 - 8) + 16))(&v61, &v66, v28);
  v29 = sub_1AAF8FE74();
  (*(*(v29 - 8) + 8))(&v97, v29);
  *&__dst[53] = v81;
  *&__dst[55] = v82;
  *&__dst[45] = v77;
  *&__dst[47] = v78;
  *&__dst[49] = v79;
  *&__dst[51] = v80;
  *&__dst[41] = v75;
  *&__dst[43] = v76;
  LOBYTE(__dst[57]) = v83;
  v32 = type metadata accessor for TypedVectorizedProperties(0, a4, v30, v31);
  v33 = *(v32 - 8);
  (*(v33 + 16))(&v61, __dst, v32);
  sub_1AAF30464(&v61, a4, &v90, v34, v35);
  swift_beginAccess();
  sub_1AAE20F5C(&v90, v13 + *(v53 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v33 + 8))(__dst, v32);
LABEL_6:
  LOBYTE(__dst[0]) = v54;
  __dst[1] = v55;
  return (*(*(a6 + 8) + 40))(a1, __dst, a3);
}

void sub_1AAE1CA00(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for SgGroup(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = *(a2 + 1);
  v25[0] = *a2;
  v14 = v25[0];
  v26 = v15;
  (*(a4 + 40))(&v27, a1, v25, a3, a4, v11);
  v16 = v27;
  if ((v14 & 1) == 0)
  {
    v17 = *(*(v15 + 16) + 24);
    sub_1AACAA194(0, &qword_1ED9B28D0, &type metadata for SgNode, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AAF92AB0;
    *(v18 + 32) = v16;
    v19 = v10[6];
    v20 = type metadata accessor for SgClipRect(0);
    (*(*(v20 - 8) + 56))(&v13[v19], 1, 1, v20);
    v22 = *(a1 + *(type metadata accessor for ModifiedChartContent_Filters(0, a3, a4, v21) + 36));
    *v13 = v17;
    *(v13 + 1) = v18;
    *&v13[v10[7]] = 0x3FF0000000000000;
    *&v13[v10[8]] = 0;
    *&v13[v10[9]] = v22;
    v13[v10[10]] = 1;
    v16 = swift_allocBox();
    sub_1AACE3DD4(v13, v23);
  }

  *a5 = v16;
}

uint64_t sub_1AAE1CC38(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = *a2;
  v10 = *(a2 + 1);
  *&__dst[0] = a3;
  *(&__dst[0] + 1) = a4;
  *&__dst[1] = a5;
  *(&__dst[1] + 1) = a6;
  *&__dst[2] = a7;
  v11 = type metadata accessor for ModifiedChartContent_ForegroundStyles(0, __dst);
  v46 = a1;
  sub_1AAF30C74(0, 0, 0, 0, *(a1 + *(v11 + 60)), a7, &v64);
  v12 = v64;
  *v41 = *(&v65 + 1);
  v13 = v65;
  *&v41[8] = v66;
  v42 = v67;
  v44 = v10;
  v14 = v10 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v15 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v16 = v14 + *(v15 + 108);
  if (!*(v16 + 24))
  {
    memset(__src, 0, 24);
    *(&__src[1] + 1) = 2;
    bzero(&__src[2], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v16, v52);

  sub_1AAF303E4(a4, __src);
  sub_1AAE0FC7C(v52);
  if (*(&__src[1] + 1) == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties(255, a4, v17, v18);
    v28 = sub_1AAF8FE74();
    (*(*(v28 - 8) + 8))(__src, v28);
    v70[0] = v64;
    memset(v71, 0, 24);
    v71[3] = 1;
    v71[5] = 0;
    v71[4] = 0;
    v72 = 0;
    v70[1] = v65;
    v68 = v66;
    v69 = v67;
    v73 = v12;
    v74 = v13;
    v75 = *v41;
    v76 = *&v41[8];
    v77 = *&v41[16];
    v78 = v42;
    v79 = 0uLL;
    v80 = 0;
    v81 = 1;
    v82 = 0u;
    memset(v83, 0, sizeof(v83));
    v47 = 0uLL;
    v48 = 0;
    v49 = 1;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    memset(v84, 0, sizeof(v84));
    v85 = -4;
    sub_1AAD3CF1C(&v53);
    v86[6] = v59;
    v86[7] = v60;
    v87 = v61;
    v86[2] = v55;
    v86[3] = v56;
    v86[4] = v57;
    v86[5] = v58;
    v86[0] = v53;
    v86[1] = v54;
    memset(v88, 0, 24);
    v88[3] = 1;
    v88[5] = 0;
    v88[4] = 0;
    v89 = 0;
    memset(v90, 0, 24);
    v90[3] = 1;
    v90[4] = 0;
    v90[5] = 0;
    v91 = 0;
    v92 = 0uLL;
    v93 = 0;
    v94 = 1;
    v97 = 0;
    v96 = 0u;
    v95 = 0u;
    sub_1AAF304C8(v71, &v73, &v79, &v47, v84, v86, v88, v90, v52, &v92, &v92);
    sub_1AAF30464(v52, a4, &v47, v29, v30);
    swift_beginAccess();
    v31 = *(v15 + 108);
    sub_1AAE20E20(v70, v52, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    v21 = type metadata accessor for VisualMapper.Mapping(0, a4, MEMORY[0x1E697E0B8], v32);
    (*(*(v21 - 8) + 16))(v52, &v68, v21);
    sub_1AAE20F5C(&v47, v14 + v31, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v52[0] = v64;
  v52[1] = v65;
  v53 = v66;
  LOBYTE(v54) = v67;
  v19 = *(&__dst[3] + 1);
  v39 = *(&__dst[4] + 1);
  v40 = *&__dst[4];
  v37 = *(&__dst[5] + 1);
  v38 = *&__dst[5];
  v36 = *&__dst[6];
  v35 = BYTE8(__dst[6]);
  sub_1AAE20E20(v52, __src, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  v21 = type metadata accessor for VisualMapper.Mapping(0, a4, MEMORY[0x1E697E0B8], v20);
  (*(*(v21 - 8) + 16))(__src, &v53, v21);
  sub_1AAD2C0D4(v19, v40, v39, v38, v37, v36, v35);
  *(&__dst[3] + 8) = v12;
  *(&__dst[4] + 1) = v13;
  __dst[5] = *v41;
  *&__dst[6] = *&v41[16];
  BYTE8(__dst[6]) = v42;
  v24 = type metadata accessor for TypedVectorizedProperties(0, a4, v22, v23);
  v25 = *(v24 - 8);
  (*(v25 + 16))(__src, __dst, v24);
  sub_1AAF30464(__src, a4, v86, v26, v27);
  swift_beginAccess();
  sub_1AAE20F5C(v86, v14 + *(v15 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v25 + 8))(__dst, v24);
LABEL_6:
  LOBYTE(v47) = v43;
  *(&v47 + 1) = v44;
  (*(*(a6 + 8) + 40))(v46, &v47);
  __dst[0] = v64;
  __dst[1] = v65;
  sub_1AACD84B4(__dst, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  __src[0] = v66;
  LOBYTE(__src[1]) = v67;
  type metadata accessor for VisualMapper.Mapping(0, a4, MEMORY[0x1E697E0B8], v33);
  return (*(*(v21 - 8) + 8))(__src, v21);
}

uint64_t sub_1AAE1D310(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = *a2;
  v9 = *(a2 + 1);
  v10 = type metadata accessor for ModifiedChartContent_StrokeStyles(0, a3, a4, a5);
  v34 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v10 + 44)), &v71);
  v32 = v9;
  v11 = v9 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v12 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v13 = v11 + *(v12 + 108);
  if (!*(v13 + 24))
  {
    memset(__src, 0, 24);
    *(&__src[1] + 1) = 2;
    bzero(&__src[2], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v13, v40);

  sub_1AAF303E4(a4, __src);
  sub_1AAE0FC7C(v40);
  if (*(&__src[1] + 1) == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties(255, a4, v14, v15);
    v25 = sub_1AAF8FE74();
    (*(*(v25 - 8) + 8))(__src, v25);
    memset(v48, 0, 24);
    v48[3] = 1;
    v48[5] = 0;
    v48[4] = 0;
    v49 = 0;
    memset(v50, 0, 24);
    v50[3] = 1;
    v50[5] = 0;
    v50[4] = 0;
    v51 = 0;
    v52[0] = v71;
    *(v53 + 9) = *(v74 + 9);
    v52[2] = v73;
    v53[0] = v74[0];
    v52[1] = v72;
    v35 = 0uLL;
    v36 = 0;
    v37 = 1;
    v38 = 0u;
    memset(v39, 0, sizeof(v39));
    memset(v54, 0, sizeof(v54));
    v55 = -4;
    sub_1AAD3CF1C(&v41);
    v59[3] = v44[3];
    v59[4] = v44[4];
    v60 = v45;
    v58 = v43;
    v59[0] = v44[0];
    v59[1] = v44[1];
    v59[2] = v44[2];
    v56 = v41;
    v57 = v42;
    memset(v61, 0, 24);
    v61[3] = 1;
    v61[5] = 0;
    v61[4] = 0;
    v62 = 0;
    memset(v63, 0, 24);
    v63[3] = 1;
    v63[5] = 0;
    v63[4] = 0;
    v64 = 0;
    v65 = 0uLL;
    v66 = 0;
    v67 = 1;
    v70 = 0;
    v69 = 0u;
    v68 = 0u;
    sub_1AAF304C8(v48, v50, v52, &v35, v54, &v56, v61, v63, v40, &v65, &v65);
    sub_1AAF30464(v40, a4, &v35, v26, v27);
    swift_beginAccess();
    v28 = *(v12 + 108);
    v17 = type metadata accessor for VisualMapper(0, a4, MEMORY[0x1E697DD48], v29);
    (*(*(v17 - 8) + 16))(v40, &v71, v17);
    sub_1AAE20F5C(&v35, v11 + v28, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v43 = v73;
  v44[0] = v74[0];
  *(v44 + 9) = *(v74 + 9);
  v41 = v71;
  v42 = v72;
  v58 = __src[9];
  v59[0] = __src[10];
  *(v59 + 9) = *(&__src[10] + 9);
  v56 = __src[7];
  v57 = __src[8];
  v17 = type metadata accessor for VisualMapper(0, a4, MEMORY[0x1E697DD48], v16);
  (*(*(v17 - 8) + 16))(v40, &v71, v17);
  v18 = sub_1AAF8FE74();
  (*(*(v18 - 8) + 8))(&v56, v18);
  __dst[8] = v42;
  __dst[9] = v43;
  __dst[10] = v44[0];
  *(&__dst[10] + 9) = *(v44 + 9);
  __dst[7] = v41;
  v21 = type metadata accessor for TypedVectorizedProperties(0, a4, v19, v20);
  v22 = *(v21 - 8);
  (*(v22 + 16))(v40, __dst, v21);
  sub_1AAF30464(v40, a4, v52, v23, v24);
  swift_beginAccess();
  sub_1AAE20F5C(v52, v11 + *(v12 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v22 + 8))(__dst, v21);
LABEL_6:
  LOBYTE(__dst[0]) = v33;
  *(&__dst[0] + 1) = v32;
  (*(a5 + 40))(v34, __dst, a3, a5);
  type metadata accessor for VisualMapper(0, a4, MEMORY[0x1E697DD48], v30);
  return (*(*(v17 - 8) + 8))(&v71, v17);
}

uint64_t sub_1AAE1D8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v63 = a6;
  *&v62 = a2;
  v64 = a1;
  v11 = type metadata accessor for PlottableValue(0, a5, a7, a4);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = (&v54 - v12);
  v13 = type metadata accessor for PlottableProjection.Storage(0, a4, a5, a7);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v58 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v54 - v20;
  v21 = type metadata accessor for PlottableProjection(0, a4, a5, a7);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v54 - v23;
  v62 = *v62;
  v61 = a3;
  *&v68 = a3;
  *(&v68 + 1) = a4;
  v69 = a5;
  v70 = v63;
  *&v71 = a7;
  v25 = type metadata accessor for ModifiedChartContent_ForegroundStyles_Plottable(0, &v68);
  v26 = v64 + *(v25 + 60);
  (*(v22 + 16))(v24, v26, v21);
  v60 = a5;
  sub_1AAE8C998(v24, a4, a5, a7, &v68);
  v27 = v62;
  swift_beginAccess();
  sub_1AAE20F5C(&v68, v27 + 960, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  (*(v14 + 16))(v16, v26 + *(v21 + 44), v13);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v55 = v27;
    v28 = v58;
    v29 = v57;
    v30 = v16;
    v31 = v60;
    (*(v58 + 32))(v57, v30, v60);
    v32 = *v26;
    v33 = *(v26 + 8);
    v34 = *(v26 + 16);
    v35 = *(v26 + 24);
    v36 = v56;
    (*(v28 + 16))(v56, v29, v31);
    v37 = v59;
    sub_1AACD6EC4(v32, v33, v34, v35, v36, v31, a7, v59);

    sub_1AACD7304(v32, v33, v34);
    sub_1AACD6F84(v37, v31, a7, &v68);
    v76 = v71;
    v77 = v72;
    v38 = v71;
    v39 = v72;
    v40 = v29;
    if (v72 < 0)
    {
      v46 = v76;
      v47 = v71 & 0x7FF0000000000000;
      v41 = v55;
      if (v72)
      {
        swift_beginAccess();
        if (v47 != 0x7FF0000000000000)
        {
          if (*(v41 + 432))
          {
            v48 = *&v38;
          }

          else
          {
            v48 = *(v41 + 416);
            if (v48 >= *&v38)
            {
              v48 = *&v38;
            }

            if (*(v41 + 424) >= *&v38)
            {
              v46 = *(v41 + 424);
            }
          }

          *(v41 + 416) = v48;
          *(v41 + 424) = v46;
          *(v41 + 432) = 0;
        }

        if ((~*(&v38 + 1) & 0x7FF0000000000000) != 0)
        {
          if (*(v41 + 432))
          {
            *(v41 + 416) = *(&v38 + 1);
            *(v41 + 424) = *(&v38 + 1);
            *(v41 + 432) = 0;
          }

          else
          {
            v51 = *(v41 + 416);
            v50 = *(v41 + 424);
            if (v51 >= *(&v38 + 1))
            {
              v51 = *(&v38 + 1);
            }

            if (v50 < *(&v38 + 1))
            {
              v50 = *(&v38 + 1);
            }

            *(v41 + 416) = v51;
            *(v41 + 424) = v50;
            *(v41 + 432) = 0;
          }
        }
      }

      else
      {
        swift_beginAccess();
        if (v47 != 0x7FF0000000000000)
        {
          if (*(v41 + 408))
          {
            v49 = *&v38;
          }

          else
          {
            v49 = *(v41 + 392);
            if (v49 >= *&v38)
            {
              v49 = *&v38;
            }

            if (*(v41 + 400) >= *&v38)
            {
              v46 = *(v41 + 400);
            }
          }

          *(v41 + 392) = v49;
          *(v41 + 400) = v46;
          *(v41 + 408) = 0;
        }

        if ((~*(&v38 + 1) & 0x7FF0000000000000) != 0)
        {
          if (*(v41 + 408))
          {
            *(v41 + 392) = *(&v38 + 1);
            *(v41 + 400) = *(&v38 + 1);
            *(v41 + 408) = 0;
          }

          else
          {
            v53 = *(v41 + 392);
            v52 = *(v41 + 400);
            if (v53 >= *(&v38 + 1))
            {
              v53 = *(&v38 + 1);
            }

            if (v52 < *(&v38 + 1))
            {
              v52 = *(&v38 + 1);
            }

            *(v41 + 392) = v53;
            *(v41 + 400) = v52;
            *(v41 + 408) = 0;
          }
        }
      }
    }

    else
    {
      v41 = v55;
      swift_beginAccess();
      sub_1AACD3D44(v38, *(&v38 + 1), v39);
      swift_endAccess();
    }

    v42 = v73;
    v43 = v74;
    swift_beginAccess();
    if (*(v41 + 457) << 8 == 512)
    {
      sub_1AAE082D0(v42, (v41 + 456), v42, v43);
    }

    swift_endAccess();
    v44 = v70;
    v65 = v68;
    v66 = v69;
    sub_1AAD6E0DC(&v65);
    v75 = v44;
    sub_1AACD84B4(&v75, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD6E18C(&v76);
    (*(v28 + 8))(v40, v60);
  }

  v67 = v62;
  return (*(*(v63 + 8) + 32))(v64, &v67);
}

uint64_t sub_1AAE1DF70@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v136 = a6;
  v137 = a1;
  v138 = a3;
  v130 = a8;
  v12 = type metadata accessor for PlottableValue(0, a5, a7, a4);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v118 = (&v110 - v13);
  v121 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v117 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v110 - v17;
  v18 = type metadata accessor for PlottableProjection.Storage(0, a4, a5, a7);
  v126 = *(v18 - 8);
  v127 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v125 = &v110 - v19;
  v131 = a4;
  v20 = type metadata accessor for PlottableProjection(0, a4, a5, a7);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v110 - v22;
  v129 = *a2;
  v24 = *(a2 + 1);
  *&v156[0] = v138;
  *(&v156[0] + 1) = a4;
  *&v156[1] = a5;
  *(&v156[1] + 1) = v136;
  *&v156[2] = a7;
  v25 = type metadata accessor for ModifiedChartContent_ForegroundStyles_Plottable(0, v156);
  v26 = v137 + *(v25 + 60);
  v27 = *(v21 + 16);
  v123 = v20;
  v27(v23, v26, v20);
  v29 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 16);
  v28 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 32);
  v197 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale);
  v198 = v29;
  v30 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 48);
  v31 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 64);
  v32 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 80);
  v203 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 96);
  v201 = v31;
  v202 = v32;
  v199 = v28;
  v200 = v30;
  v156[3] = v30;
  v156[4] = v31;
  v156[5] = v32;
  LOBYTE(v156[6]) = v203;
  v156[0] = v197;
  v156[1] = v198;
  v156[2] = v28;
  sub_1AAE20E90(&v197, v155, sub_1AACC9DEC);
  *&v155[0] = sub_1AAF8ECE4();
  *&v148 = sub_1AAF8DA44();
  v33 = v23;
  v34 = v131;
  v122 = a5;
  v119 = a7;
  sub_1AAF305E0(v33, v156, &v148, v131, MEMORY[0x1E697E0B8], v155);
  v134 = *(&v155[0] + 1);
  v135 = *&v155[1];
  v132 = *&v155[0];
  v133 = *(&v155[1] + 1);
  v142 = *(&v155[2] + 1);
  v140 = *&v155[2];
  v141 = LOBYTE(v155[3]);
  v128 = v24;
  v35 = v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v139 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v36 = v35 + *(v139 + 108);
  v37 = *(v36 + 24);
  v124 = v26;
  if (v37)
  {
    sub_1AAE0FC20(v36, &v148);
    sub_1AAF303E4(v34, v155);
    sub_1AAE0FC7C(&v148);
    if (*(&v155[1] + 1) != 2)
    {
      memcpy(v156, v155, 0x2C9uLL);
      v111 = *(&v156[3] + 1);
      v40 = v140;
      v116 = v35;
      v41 = *&v156[4];
      v114 = *&v156[5];
      v115 = *(&v156[4] + 1);
      v42 = *(&v156[5] + 1);
      v43 = v132;
      v44 = v133;
      v113 = *&v156[6];
      v112 = BYTE8(v156[6]);
      v46 = v134;
      v45 = v135;
      sub_1AADA61DC(v132, v134, v135, v133);
      v47 = v142;
      v48 = v141;
      sub_1AAD3CF48(v40, v142, v141);
      v49 = v41;
      v35 = v116;
      sub_1AAD2C0D4(v111, v49, v115, v114, v42, v113, v112);
      *(&v156[3] + 1) = v43;
      *&v156[4] = v46;
      *(&v156[4] + 1) = v45;
      *&v156[5] = v44;
      *(&v156[5] + 1) = v40;
      *&v156[6] = v47;
      BYTE8(v156[6]) = v48;
      v50 = v131;
      v53 = type metadata accessor for TypedVectorizedProperties(0, v131, v51, v52);
      v54 = *(v53 - 8);
      (*(v54 + 16))(v155, v156, v53);
      sub_1AAF30464(v155, v50, &v148, v55, v56);
      swift_beginAccess();
      sub_1AAE20F5C(&v148, v35 + *(v139 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
      swift_endAccess();
      (*(v54 + 8))(v156, v53);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v155, 0, 24);
    *(&v155[1] + 1) = 2;
    bzero(&v155[2], 0x2A9uLL);
  }

  type metadata accessor for TypedVectorizedProperties(255, v34, v38, v39);
  v57 = sub_1AAF8FE74();
  (*(*(v57 - 8) + 8))(v155, v57);
  memset(v165, 0, sizeof(v165));
  v166 = 1;
  v168 = 0;
  v167 = 0;
  v169 = 0;
  v58 = v132;
  v59 = v133;
  v170[0] = v132;
  v61 = v134;
  v60 = v135;
  v170[1] = v134;
  v170[2] = v135;
  v170[3] = v133;
  v170[4] = v140;
  v170[5] = v142;
  v171 = v141;
  v172 = 0uLL;
  v173 = 0;
  v174 = 1;
  v175 = 0u;
  memset(v176, 0, sizeof(v176));
  v143 = 0uLL;
  v144 = 0;
  v145 = 1;
  v146 = 0u;
  memset(v147, 0, sizeof(v147));
  memset(v177, 0, sizeof(v177));
  v178 = -4;
  sub_1AAD3CF1C(v153);
  v179[6] = v153[6];
  v179[7] = v153[7];
  v180 = v154;
  v179[2] = v153[2];
  v179[3] = v153[3];
  v179[4] = v153[4];
  v179[5] = v153[5];
  v179[0] = v153[0];
  v179[1] = v153[1];
  memset(v181, 0, sizeof(v181));
  v182 = 1;
  v184 = 0;
  v183 = 0;
  v185 = 0;
  memset(v186, 0, sizeof(v186));
  v187 = 1;
  v189 = 0;
  v188 = 0;
  v190 = 0;
  v191 = 0uLL;
  v192 = 0;
  v193 = 1;
  v196 = 0;
  v195 = 0u;
  v194 = 0u;
  sub_1AAF304C8(v165, v170, &v172, &v143, v177, v179, v181, v186, &v148, &v191, &v191);
  sub_1AAF30464(&v148, v34, &v143, v62, v63);
  swift_beginAccess();
  v64 = *(v139 + 108);
  sub_1AADA61DC(v58, v61, v60, v59);
  sub_1AAD3CF48(v140, v142, v141);
  sub_1AAE20F5C(&v143, v35 + v64, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
LABEL_6:
  v65 = v124;
  v67 = v125;
  v66 = v126;
  v68 = v127;
  (*(v126 + 16))(v125, v124 + *(v123 + 44), v127);
  if (swift_getEnumCaseMultiPayload())
  {
    LOBYTE(v156[0]) = v129;
    *(&v156[0] + 1) = v128;
    (*(*(v136 + 8) + 40))(v137, v156);
    sub_1AADA6198(v132, v134, v135, v133);
    v69 = sub_1AAD2C0B8(v140, v142, v141);
    return (*(v66 + 8))(v67, v68, v69);
  }

  else
  {
    v72 = v120;
    v71 = v121;
    (*(v121 + 32))(v120, v67, v122);
    v73 = MEMORY[0x1E69E6720];
    v131 = MEMORY[0x1E69E6720];
    sub_1AAE20E20(v35, v153, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading, MEMORY[0x1E69E6720]);
    v74 = v35 + *(v139 + 68);
    v76 = *(v74 + 32);
    v75 = *(v74 + 48);
    v77 = *(v74 + 16);
    v152 = *(v74 + 64);
    v148 = *v74;
    v149 = v77;
    v151 = v75;
    v150 = v76;
    v78 = *v65;
    v79 = *(v65 + 8);
    v80 = *(v65 + 16);
    v81 = *(v65 + 24);
    v82 = *(v71 + 16);
    v83 = v117;
    v84 = v122;
    v82(v117, v72, v122);
    v85 = v35;
    v86 = v118;
    v87 = v83;
    v88 = v119;
    sub_1AACD6EC4(v78, v79, v80, v81, v87, v84, v119, v118);
    sub_1AAE20E20(&v148, v156, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v73);
    sub_1AACD7304(v78, v79, v80);

    sub_1AACD6F84(v86, v84, v88, &v157);
    v89 = v159;
    LOBYTE(v81) = v160;
    v90 = v128;
    v91 = sub_1AAE0BCD0(v159, *(&v159 + 1), v160, 5);
    *&v156[2] = MEMORY[0x1E697E0A8];
    *(&v156[1] + 1) = MEMORY[0x1E697E0B8];
    *&v156[0] = v91;
    BYTE8(v156[2]) = 1;
    swift_beginAccess();
    sub_1AAE20F5C(v156, v85, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
    v164 = v158;
    v163 = v157;
    v162 = *(&v158 + 1);
    v92 = v85 + *(v139 + 68);
    v93 = *(v92 + 16);
    v94 = *(v92 + 32);
    v95 = *(v92 + 48);
    *&v155[4] = *(v92 + 64);
    v155[2] = v94;
    v155[3] = v95;
    v155[0] = *v92;
    v155[1] = v93;
    *(v92 + 64) = v161;
    v96 = v160;
    *(v92 + 32) = v159;
    *(v92 + 48) = v96;
    v97 = v158;
    *v92 = v157;
    *(v92 + 16) = v97;
    sub_1AADFA6FC(&v163, v156);
    v98 = MEMORY[0x1E69E62F8];
    sub_1AAE20E20(&v162, v156, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AACD7C50(v89, *(&v89 + 1), v81);
    swift_endAccess();
    v99 = v131;
    sub_1AACD84B4(v155, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v131);
    LOBYTE(v156[0]) = v129;
    *(&v156[0] + 1) = v90;
    (*(*(v136 + 8) + 40))(&v143, v137, v156);
    sub_1AAD6E0DC(&v163);
    sub_1AACD84B4(&v162, &qword_1ED9B1E40, MEMORY[0x1E69810C8], v98);
    sub_1AAD0E818(v89, *(&v89 + 1), v81);
    sub_1AADA6198(v132, v134, v135, v133);
    v100 = sub_1AAD2C0B8(v140, v142, v141);
    (*(v121 + 8))(v120, v84, v100);
    v101 = v143;
    swift_beginAccess();
    sub_1AAE20F5C(v153, v85, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
    v102 = v85 + *(v139 + 68);
    v156[0] = *v102;
    v103 = *(v102 + 16);
    v104 = *(v102 + 32);
    v105 = *(v102 + 48);
    *&v156[4] = *(v102 + 64);
    v156[3] = v105;
    v156[2] = v104;
    v156[1] = v103;
    v106 = v152;
    v107 = v151;
    v108 = v149;
    *(v102 + 32) = v150;
    v109 = v148;
    *(v102 + 48) = v107;
    *(v102 + 64) = v106;
    *v102 = v109;
    *(v102 + 16) = v108;
    swift_endAccess();
    result = sub_1AACD84B4(v156, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v99);
    *v130 = v101;
  }

  return result;
}

uint64_t sub_1AAE1EC24(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for PlottableProjection(0, a4, a5, a7);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v18 = *(type metadata accessor for ModifiedChartContent_Symbols_Plottable(0, &v23) + 60);
  v19 = *(v15 + 16);
  v22 = *a2;
  v19(v17, a1 + v18, v14);
  sub_1AAE8C998(v17, a4, a5, a7, &v23);
  v20 = v22;
  swift_beginAccess();
  sub_1AAE20F5C(&v23, v20 + 1072, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  v23 = v22;
  return (*(a6 + 32))(a1, &v23, a3, a6);
}

uint64_t sub_1AAE1EDC8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a8;
  v15 = type metadata accessor for PlottableProjection(0, a4, a5, a7);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  HIDWORD(v46) = *a2;
  v17 = *(a2 + 1);
  v48 = a3;
  v49 = a6;
  v56[0] = a3;
  v18 = a4;
  v56[1] = a4;
  v56[2] = a5;
  v56[3] = a6;
  v56[4] = a7;
  v20 = &v46 - v19;
  v21 = *(type metadata accessor for ModifiedChartContent_Symbols_Plottable(0, v56) + 60);
  v22 = *(v16 + 16);
  v50 = a1;
  v22(v20, a1 + v21, v15);
  v23 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolScale;
  swift_beginAccess();
  sub_1AAE20E90(v17 + v23, v56, sub_1AACC9CF4);
  if (qword_1ED9B0450 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&unk_1ED9C33F0, v55);
  sub_1AAF305E0(v20, v56, v55, a4, &type metadata for AnyChartSymbolShape, v57);
  v24 = v17 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v25 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v26 = v24 + *(v25 + 108);
  if (!*(v26 + 24))
  {
    memset(v55, 0, 24);
    v55[3] = 2;
    bzero(&v55[4], 0x2A9uLL);
    goto LABEL_7;
  }

  sub_1AAE0FC20(v26, v52);
  sub_1AAF303E4(v18, v55);
  sub_1AAE0FC7C(v52);
  if (v55[3] == 2)
  {
LABEL_7:
    type metadata accessor for TypedVectorizedProperties(255, v18, v27, v28);
    v38 = sub_1AAF8FE74();
    (*(*(v38 - 8) + 8))(v55, v38);
    memset(v58, 0, sizeof(v58));
    v59 = 1;
    v61 = 0;
    v60 = 0;
    v62 = 0;
    memset(v63, 0, sizeof(v63));
    v64 = 1;
    v66 = 0;
    v65 = 0;
    v67 = 0;
    v68 = 0uLL;
    v69 = 0;
    v70 = 1;
    v71 = 0u;
    memset(v72, 0, sizeof(v72));
    v40 = type metadata accessor for VisualMapper(0, v18, &type metadata for AnyChartSymbolShape, v39);
    (*(*(v40 - 8) + 16))(v51, v57, v40);
    memset(v73, 0, sizeof(v73));
    v74 = -4;
    sub_1AAD3CF1C(v53);
    v75[6] = v53[6];
    v75[7] = v53[7];
    v76 = v54;
    v75[2] = v53[2];
    v75[3] = v53[3];
    v75[4] = v53[4];
    v75[5] = v53[5];
    v75[0] = v53[0];
    v75[1] = v53[1];
    memset(v77, 0, sizeof(v77));
    v78 = 1;
    v80 = 0;
    v79 = 0;
    v81 = 0;
    memset(v82, 0, 24);
    v82[3] = 1;
    v82[4] = 0;
    v82[5] = 0;
    v83 = 0;
    v84 = 0uLL;
    v85 = 0;
    v86 = 1;
    v89 = 0;
    v88 = 0u;
    v87 = 0u;
    sub_1AAF304C8(v58, v63, &v68, v51, v73, v75, v77, v82, v52, &v84, &v84);
    sub_1AAF30464(v52, v18, v51, v41, v42);
    swift_beginAccess();
    sub_1AAE20F5C(v51, v24 + *(v25 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_8;
  }

  memcpy(v56, v55, 0x2C9uLL);
  v30 = type metadata accessor for VisualMapper(255, v18, &type metadata for AnyChartSymbolShape, v29);
  v31 = sub_1AAF8FE74();
  (*(*(v31 - 8) + 8))(&v56[24], v31);
  (*(*(v30 - 8) + 16))(&v56[24], v57, v30);
  v34 = type metadata accessor for TypedVectorizedProperties(0, v18, v32, v33);
  v35 = *(v34 - 8);
  (*(v35 + 16))(v55, v56, v34);
  sub_1AAF30464(v55, v18, v52, v36, v37);
  swift_beginAccess();
  sub_1AAE20F5C(v52, v24 + *(v25 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v35 + 8))(v56, v34);
LABEL_8:
  LOBYTE(v56[0]) = BYTE4(v46);
  v56[1] = v17;
  (*(v49 + 40))(v50, v56);
  v44 = type metadata accessor for VisualMapper(0, v18, &type metadata for AnyChartSymbolShape, v43);
  return (*(*(v44 - 8) + 8))(v57, v44);
}

uint64_t sub_1AAE1F478(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for PlottableProjection(0, a4, a5, a7);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v18 = *(type metadata accessor for ModifiedChartContent_SymbolSizes_Plottable(0, &v23) + 60);
  v19 = *(v15 + 16);
  v22 = *a2;
  v19(v17, a1 + v18, v14);
  sub_1AAE8C998(v17, a4, a5, a7, &v23);
  v20 = v22;
  swift_beginAccess();
  sub_1AAE20F5C(&v23, v20 + 1128, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  v23 = v22;
  return (*(a6 + 32))(a1, &v23, a3, a6);
}

double sub_1AAE1F61C@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v82 = a1;
  v76 = a8;
  v14 = type metadata accessor for PlottableProjection(0, a4, a5, a7);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v63 - v16;
  v75 = *a2;
  v18 = *(a2 + 1);
  v77 = a3;
  v78 = a6;
  *&v92[0] = a3;
  *(&v92[0] + 1) = a4;
  *&v92[1] = a5;
  *(&v92[1] + 1) = a6;
  *&v92[2] = a7;
  v19 = type metadata accessor for ModifiedChartContent_SymbolSizes_Plottable(0, v92);
  v20 = v18;
  (*(v15 + 16))(v17, v82 + *(v19 + 60), v14);
  v22 = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 16);
  v21 = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 32);
  v132 = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale);
  v133 = v22;
  v23 = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 48);
  v24 = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 64);
  v25 = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 80);
  *(v137 + 9) = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 89);
  v136 = v24;
  v137[0] = v25;
  v134 = v21;
  v135 = v23;
  v92[4] = v24;
  v92[5] = v25;
  *(&v92[5] + 9) = *(v137 + 9);
  v92[0] = v132;
  v92[1] = v133;
  v92[3] = v23;
  v92[2] = v21;
  v88[0] = 0x404921FB54442D18;
  sub_1AAE20E90(&v132, v91, sub_1AACCF364);
  v26 = a4;
  sub_1AAF305E0(v17, v92, v88, a4, MEMORY[0x1E69E7DE0], v91);
  v27 = v91[0];
  v28 = v91[2];
  v72 = v91[3];
  v73 = v91[1];
  v79 = v91[5];
  v80 = v91[4];
  v81 = LOBYTE(v91[6]);
  v74 = v20;
  v29 = v20 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v70 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v71 = v29;
  v30 = v29 + *(v70 + 108);
  if (!*(v30 + 24))
  {
    memset(v91, 0, 24);
    v91[3] = 2;
    bzero(&v91[4], 0x2A9uLL);
    goto LABEL_5;
  }

  sub_1AAE0FC20(v30, v88);
  sub_1AAF303E4(v26, v91);
  sub_1AAE0FC7C(v88);
  if (v91[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties(255, v26, v31, v32);
    v51 = sub_1AAF8FE74();
    (*(*(v51 - 8) + 8))(v91, v51);
    memset(v93, 0, sizeof(v93));
    v94 = 1;
    v96 = 0;
    v95 = 0;
    v97 = 0;
    memset(v98, 0, sizeof(v98));
    v99 = 1;
    v101 = 0;
    v100 = 0;
    v102 = 0;
    v103 = 0uLL;
    v104 = 0;
    v105 = 1;
    v106 = 0u;
    memset(v107, 0, sizeof(v107));
    v83 = 0uLL;
    v84 = 0;
    v85 = 1;
    v86 = 0u;
    memset(v87, 0, sizeof(v87));
    v52 = v27;
    *&v108 = v27;
    v53 = v72;
    v42 = v73;
    *(&v108 + 1) = v73;
    v109 = v28;
    v110 = v72;
    v54 = v79;
    v55 = v80;
    v111 = v80;
    v112 = v79;
    v56 = v81;
    v113 = v81;
    sub_1AAD3CF1C(v89);
    v114[6] = v89[6];
    v114[7] = v89[7];
    v115 = v90;
    v114[2] = v89[2];
    v114[3] = v89[3];
    v114[5] = v89[5];
    v114[4] = v89[4];
    v114[1] = v89[1];
    v114[0] = v89[0];
    memset(v116, 0, sizeof(v116));
    v117 = 1;
    v119 = 0;
    v118 = 0;
    v120 = 0;
    memset(v121, 0, sizeof(v121));
    v122 = 1;
    v124 = 0;
    v123 = 0;
    v125 = 0;
    v126 = 0uLL;
    v127 = 0;
    v128 = 1;
    v131 = 0;
    v129 = 0u;
    v130 = 0u;
    sub_1AAF304C8(v93, v98, &v103, &v83, &v108, v114, v116, v121, v88, &v126, &v126);
    v57 = v26;
    v38 = v53;
    v40 = v28;
    v41 = v52;
    sub_1AAF30464(v88, v57, &v83, v58, v59);
    v60 = v71;
    swift_beginAccess();
    v61 = *(v70 + 108);
    sub_1AADA61DC(v41, v42, v40, v38);
    sub_1AAD3CEFC(v55, v54, v56);
    sub_1AAE20F5C(&v83, v60 + v61, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(v92, v91, 0x2C9uLL);
  v33 = *&v92[17];
  v35 = v79;
  v34 = v80;
  v36 = v81;
  v67 = *&v92[18];
  v68 = *(&v92[17] + 1);
  v37 = *(&v92[18] + 1);
  v69 = v26;
  v65 = *(&v92[19] + 1);
  v66 = *&v92[19];
  v64 = LOBYTE(v92[20]);
  v38 = v72;
  v39 = v73;
  sub_1AADA61DC(v27, v73, v28, v72);
  sub_1AAD3CEFC(v34, v35, v36);
  sub_1AAE20FDC(v33, v68, v67, v37, v66, v65, v64);
  *&v92[17] = v27;
  *(&v92[17] + 1) = v39;
  *&v92[18] = v28;
  *(&v92[18] + 1) = v38;
  *&v92[19] = v34;
  *(&v92[19] + 1) = v35;
  LOBYTE(v92[20]) = v36;
  v40 = v28;
  v41 = v27;
  v42 = v39;
  v43 = v69;
  v46 = type metadata accessor for TypedVectorizedProperties(0, v69, v44, v45);
  v47 = *(v46 - 8);
  (*(v47 + 16))(v91, v92, v46);
  sub_1AAF30464(v91, v43, v88, v48, v49);
  v50 = v71;
  swift_beginAccess();
  sub_1AAE20F5C(v88, v50 + *(v70 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v47 + 8))(v92, v46);
LABEL_6:
  LOBYTE(v92[0]) = v75;
  *(&v92[0] + 1) = v74;
  (*(v78 + 40))(v82, v92);
  sub_1AADA6198(v41, v42, v40, v38);
  return sub_1AAD3D014(v80, v79, v81);
}

double sub_1AAE1FD5C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = *a2;
  v7 = *(a2 + 1);
  v8 = type metadata accessor for ModifiedChartContent_Opacities_KeyPath(0, a3, a4, a5);
  v51 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v8 + 44)), __dst);
  v9 = __dst[0];
  v10 = __dst[1];
  v11 = __dst[2];
  v48 = __dst[3];
  v12 = __dst[4];
  v13 = __dst[5];
  v14 = __dst[6];
  v15 = v7 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v46 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v47 = v15;
  v16 = v15 + *(v46 + 108);
  if (!*(v16 + 24))
  {
    memset(__src, 0, 24);
    __src[3] = 2;
    bzero(&__src[4], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v16, v57);

  sub_1AAF303E4(a4, __src);
  sub_1AAE0FC7C(v57);
  if (__src[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties(255, a4, v17, v18);
    v34 = sub_1AAF8FE74();
    (*(*(v34 - 8) + 8))(__src, v34);
    v62[0] = v9;
    v62[1] = v10;
    v62[2] = v11;
    v62[3] = v48;
    v62[4] = v12;
    v62[5] = v13;
    v63 = v14;
    memset(v64, 0, 24);
    v64[3] = 1;
    v64[5] = 0;
    v64[4] = 0;
    v65 = 0;
    v66 = 0uLL;
    v67 = 0;
    v68 = 1;
    v69 = 0u;
    memset(v70, 0, sizeof(v70));
    v52 = 0uLL;
    v53 = 0;
    v54 = 1;
    v55 = 0u;
    memset(v56, 0, sizeof(v56));
    memset(v71, 0, sizeof(v71));
    v72 = -4;
    sub_1AAD3CF1C(v58);
    v73[6] = v58[6];
    v73[7] = v58[7];
    v74 = v59;
    v73[2] = v58[2];
    v73[3] = v58[3];
    v73[5] = v58[5];
    v73[4] = v58[4];
    v73[1] = v58[1];
    v73[0] = v58[0];
    memset(v75, 0, 24);
    v75[3] = 1;
    v75[5] = 0;
    v75[4] = 0;
    v76 = 0;
    memset(v77, 0, 24);
    v77[3] = 1;
    v77[4] = 0;
    v77[5] = 0;
    v78 = 0;
    v79 = 0uLL;
    v80 = 0;
    v81 = 1;
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    sub_1AAF304C8(v62, v64, &v66, &v52, v71, v73, v75, v77, v57, &v79, &v79);
    v35 = a4;
    v31 = v11;
    v24 = v48;
    sub_1AAF30464(v57, v35, &v52, v36, v37);
    swift_beginAccess();
    v38 = *(v46 + 108);
    sub_1AADA61DC(v9, v10, v31, v48);
    sub_1AAD3CEFC(v12, v13, v14);
    sub_1AAE20F5C(&v52, v15 + v38, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v19 = __dst[0];
  v43 = __dst[1];
  v44 = v7;
  v20 = __dst[3];
  v45 = v13;
  v21 = __dst[4];
  v40 = __dst[5];
  v41 = __dst[2];
  v42 = __dst[6];
  v22 = v11;
  v23 = v11;
  v24 = v48;
  sub_1AADA61DC(v9, v10, v23, v48);
  sub_1AAD3CEFC(v12, v45, v14);
  v25 = v20;
  v7 = v44;
  sub_1AAD3D034(v19, v43, v41, v25, v21, v40, v42);
  __dst[0] = v9;
  __dst[1] = v10;
  __dst[2] = v22;
  __dst[3] = v48;
  __dst[4] = v12;
  __dst[5] = v45;
  LOBYTE(__dst[6]) = v14;
  v28 = type metadata accessor for TypedVectorizedProperties(0, a4, v26, v27);
  v29 = *(v28 - 8);
  (*(v29 + 16))(__src, __dst, v28);
  v30 = a4;
  v31 = v22;
  sub_1AAF30464(__src, v30, v57, v32, v33);
  swift_beginAccess();
  sub_1AAE20F5C(v57, v47 + *(v46 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v29 + 8))(__dst, v28);
  v13 = v45;
LABEL_6:
  LOBYTE(__dst[0]) = v50;
  __dst[1] = v7;
  (*(a5 + 40))(v51, __dst);
  sub_1AADA6198(v9, v10, v31, v24);
  return sub_1AAD3D014(v12, v13, v14);
}

double sub_1AAE202C0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = *a2;
  v7 = *(a2 + 1);
  v8 = type metadata accessor for ModifiedChartContent_SymbolAreas_KeyPath(0, a3, a4, a5);
  v46 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v8 + 44)), __dst);
  v9 = __dst[0];
  v10 = __dst[1];
  v11 = __dst[2];
  v12 = __dst[3];
  v47 = __dst[4];
  v13 = __dst[5];
  v42 = __dst[6];
  v45 = v7;
  v14 = v7 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v40 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v41 = v14;
  v15 = v14 + *(v40 + 108);
  if (!*(v15 + 24))
  {
    memset(__src, 0, 24);
    __src[3] = 2;
    bzero(&__src[4], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v15, v53);

  sub_1AAF303E4(a4, __src);
  sub_1AAE0FC7C(v53);
  if (__src[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties(255, a4, v16, v17);
    v30 = sub_1AAF8FE74();
    (*(*(v30 - 8) + 8))(__src, v30);
    memset(v58, 0, 24);
    v58[3] = 1;
    v58[5] = 0;
    v58[4] = 0;
    v59 = 0;
    memset(v60, 0, 24);
    v60[3] = 1;
    v60[5] = 0;
    v60[4] = 0;
    v61 = 0;
    v62 = 0uLL;
    v63 = 0;
    v64 = 1;
    v65 = 0u;
    memset(v66, 0, sizeof(v66));
    v48 = 0uLL;
    v49 = 0;
    v50 = 1;
    v51 = 0u;
    memset(v52, 0, sizeof(v52));
    *&v67 = v9;
    *(&v67 + 1) = v10;
    v68 = v11;
    v69 = v12;
    v70 = v47;
    v71 = v13;
    v72 = v42;
    sub_1AAD3CF1C(v54);
    v73[5] = v54[5];
    v73[6] = v54[6];
    v73[7] = v54[7];
    v73[1] = v54[1];
    v73[2] = v54[2];
    v73[3] = v54[3];
    v73[4] = v54[4];
    v74 = v55;
    v73[0] = v54[0];
    memset(v75, 0, 24);
    v75[3] = 1;
    v75[5] = 0;
    v75[4] = 0;
    v76 = 0;
    memset(v77, 0, 24);
    v77[3] = 1;
    v77[4] = 0;
    v77[5] = 0;
    v78 = 0;
    v79 = 0uLL;
    v80 = 0;
    v81 = 1;
    v29 = v9;
    v84 = 0;
    v83 = 0u;
    v82 = 0u;
    sub_1AAF304C8(v58, v60, &v62, &v48, &v67, v73, v75, v77, v53, &v79, &v79);
    v22 = v42;
    v19 = v12;
    sub_1AAF30464(v53, a4, &v48, v31, v32);
    swift_beginAccess();
    v33 = *(v40 + 108);
    sub_1AADA61DC(v29, v10, v11, v12);
    sub_1AAD3CEFC(v47, v13, v42);
    sub_1AAE20F5C(&v48, v41 + v33, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v18 = __dst[34];
  v38 = __dst[36];
  v39 = __dst[35];
  v19 = v12;
  v20 = __dst[38];
  v36 = __dst[39];
  v37 = __dst[37];
  v35 = LOBYTE(__dst[40]);
  v21 = v9;
  sub_1AADA61DC(v9, v10, v11, v12);
  v22 = v42;
  sub_1AAD3CEFC(v47, v13, v42);
  sub_1AAE20FDC(v18, v39, v38, v37, v20, v36, v35);
  __dst[34] = v21;
  __dst[35] = v10;
  __dst[36] = v11;
  __dst[37] = v12;
  __dst[38] = v47;
  __dst[39] = v13;
  LOBYTE(__dst[40]) = v42;
  v25 = type metadata accessor for TypedVectorizedProperties(0, a4, v23, v24);
  v26 = *(v25 - 8);
  (*(v26 + 16))(__src, __dst, v25);
  sub_1AAF30464(__src, a4, v53, v27, v28);
  swift_beginAccess();
  sub_1AAE20F5C(v53, v41 + *(v40 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v26 + 8))(__dst, v25);
  v29 = v21;
LABEL_6:
  LOBYTE(__dst[0]) = v44;
  __dst[1] = v45;
  (*(a5 + 40))(v46, __dst);
  sub_1AADA6198(v29, v10, v11, v19);
  return sub_1AAD3D014(v47, v13, v22);
}

double sub_1AAE20860(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = *a2;
  v7 = *(a2 + 1);
  v8 = type metadata accessor for ModifiedChartContent_SymbolSizes_KeyPath(0, a3, a4, a5);
  v47 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v8 + 44)), __dst);
  v9 = __dst[0];
  v10 = __dst[1];
  v11 = __dst[2];
  v12 = __dst[3];
  v48 = __dst[4];
  v43 = __dst[5];
  v13 = __dst[6];
  v46 = v7;
  v14 = v7 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v41 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v42 = v14;
  v15 = v14 + *(v41 + 108);
  if (!*(v15 + 24))
  {
    memset(__src, 0, 24);
    __src[3] = 2;
    bzero(&__src[4], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v15, v54);

  sub_1AAF303E4(a4, __src);
  sub_1AAE0FC7C(v54);
  if (__src[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties(255, a4, v16, v17);
    v30 = sub_1AAF8FE74();
    (*(*(v30 - 8) + 8))(__src, v30);
    memset(v59, 0, 24);
    v59[3] = 1;
    v59[5] = 0;
    v59[4] = 0;
    v60 = 0;
    memset(v61, 0, 24);
    v61[3] = 1;
    v61[5] = 0;
    v61[4] = 0;
    v62 = 0;
    v63 = 0uLL;
    v64 = 0;
    v65 = 1;
    v66 = 0u;
    memset(v67, 0, sizeof(v67));
    v49 = 0uLL;
    v50 = 0;
    v51 = 1;
    v52 = 0u;
    memset(v53, 0, sizeof(v53));
    *&v68 = v9;
    *(&v68 + 1) = v10;
    v69 = v11;
    v70 = v12;
    v71 = v48;
    v23 = v12;
    v72 = v43;
    v73 = v13 | 0x80;
    sub_1AAD3CF1C(v55);
    v74[5] = v55[5];
    v74[6] = v55[6];
    v74[7] = v55[7];
    v74[1] = v55[1];
    v74[2] = v55[2];
    v74[3] = v55[3];
    v74[4] = v55[4];
    v75 = v56;
    v74[0] = v55[0];
    memset(v76, 0, 24);
    v76[3] = 1;
    v76[5] = 0;
    v76[4] = 0;
    v77 = 0;
    memset(v78, 0, 24);
    v78[3] = 1;
    v78[4] = 0;
    v78[5] = 0;
    v79 = 0;
    v80 = 0uLL;
    v81 = 0;
    v82 = 1;
    v21 = v9;
    v85 = 0;
    v84 = 0u;
    v83 = 0u;
    sub_1AAF304C8(v59, v61, &v63, &v49, &v68, v74, v76, v78, v54, &v80, &v80);
    v22 = v43;
    sub_1AAF30464(v54, a4, &v49, v31, v32);
    swift_beginAccess();
    v33 = *(v41 + 108);
    sub_1AADA61DC(v21, v10, v11, v12);
    sub_1AAD3CEFC(v48, v43, v13);
    sub_1AAE20F5C(&v49, v14 + v33, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v39 = v13 | 0x80;
  v40 = v13;
  v18 = __dst[35];
  v37 = __dst[36];
  v38 = __dst[34];
  v36 = __dst[37];
  v19 = __dst[38];
  v20 = __dst[39];
  v35 = LOBYTE(__dst[40]);
  v21 = v9;
  sub_1AADA61DC(v9, v10, v11, v12);
  v22 = v43;
  sub_1AAD3CEFC(v48, v43, v40);
  sub_1AAE20FDC(v38, v18, v37, v36, v19, v20, v35);
  __dst[34] = v21;
  __dst[35] = v10;
  __dst[36] = v11;
  __dst[37] = v12;
  __dst[38] = v48;
  v23 = v12;
  __dst[39] = v43;
  LOBYTE(__dst[40]) = v39;
  v26 = type metadata accessor for TypedVectorizedProperties(0, a4, v24, v25);
  v27 = *(v26 - 8);
  (*(v27 + 16))(__src, __dst, v26);
  sub_1AAF30464(__src, a4, v54, v28, v29);
  swift_beginAccess();
  sub_1AAE20F5C(v54, v42 + *(v41 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v27 + 8))(__dst, v26);
  v13 = v40;
LABEL_6:
  LOBYTE(__dst[0]) = v45;
  __dst[1] = v46;
  (*(a5 + 40))(v47, __dst);
  sub_1AADA6198(v21, v10, v11, v23);
  return sub_1AAD3D014(v48, v22, v13);
}

uint64_t sub_1AAE20E20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AACAA194(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAE20E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE20EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartContentRenderContext.Environment(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE20F5C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACAA194(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAE20FDC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 <= 0xFBu)
  {
    return sub_1AAE21034(result, a2, a3, a4, a5, a6, a7, sub_1AAE21144, sub_1AAE21144);
  }

  return result;
}

uint64_t sub_1AAE21034(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, __n128), uint64_t (*a9)(uint64_t, uint64_t, uint64_t, __n128))
{
  if ((a7 & 0x80) != 0)
  {
    v12.n128_f64[0] = sub_1AADA6198(a1, a2, a3, a4);
    v15 = a7 & 0x7F;
    v13 = a5;
    v14 = a6;
    v16 = a9;
  }

  else
  {
    v12.n128_f64[0] = sub_1AADA6198(a1, a2, a3, a4);
    v13 = a5;
    v14 = a6;
    v15 = a7;
    v16 = a8;
  }

  return v16(v13, v14, v15, v12);
}

uint64_t sub_1AAE21158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for BuilderConditional.Storage(255, v7, v8, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v25 - v12;
  v15 = type metadata accessor for BuilderConditional(0, v7, v8, v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  (*(v19 + 16))(&v25 - v17, v5, v16);
  v20 = *(TupleTypeMetadata2 + 48);
  v21 = *(v9 - 8);
  (*(v21 + 32))(v13, v18, v9);
  (*(v21 + 16))(&v13[v20], a1, v9);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a1 == 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_3:
      (*(v11 + 8))(v13, TupleTypeMetadata2);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_3;
  }

  v24 = *(v21 + 8);
  v24(&v13[v20], v9);
  v24(v13, v9);
  return 1;
}

uint64_t sub_1AAE213B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for BuilderConditional(0, a3, a4, a4);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for BuilderConditional.Info(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t BuilderConditional.init(storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for BuilderConditional.Storage(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t static Optional<A>._makeChartContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for BuilderConditional(255, a3, &type metadata for BuilderEmpty, a4);
  v11 = sub_1AAF8D954();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v20 - v13);
  sub_1AAF8FE74();
  v21 = sub_1AACBC3B4(a1);
  v23 = v10;
  v16 = _s5ChildVMa_1(0, a3, a4, v15);
  v24 = v16;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1AAF8D1A4();
  sub_1AACBC418(&v21, sub_1AACBC5B0, v22, v16, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  sub_1AACBC644(v20[2], v14);
  static BuilderConditional<>._makeChartContent(content:inputs:)(v14, a2, a3, &type metadata for BuilderEmpty, a4, &protocol witness table for BuilderEmpty, a5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t static BuilderConditional<>._makeChartContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a6;
  v36 = a5;
  v39 = a1;
  v49[4] = *MEMORY[0x1E69E9840];
  v42 = type metadata accessor for SetDependency(0) - 8;
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _ChartContentOutputs(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = a3;
  v49[1] = a4;
  v49[2] = a5;
  v49[3] = a6;
  v19 = _s9ContainerVMa(0, v49);
  v40 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v36 - v20);
  v22 = type metadata accessor for AddPreference(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v48 = v24;
  sub_1AAF8E394();
  v25 = a7;
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v26 = sub_1AAF8E4B4();
  v27 = *(v26 - 8);
  (*(v27 + 24))(v25, v24, v26);
  sub_1AAE279D0(v24, type metadata accessor for AddPreference);
  type metadata accessor for BuilderConditional(0, a3, a4, v28);
  LODWORD(v24) = sub_1AACBC3B4(v39);
  sub_1AACE8BF0(a2, v18, type metadata accessor for _ChartContentInputs);
  v29 = v38;
  sub_1AACE8BF0(v25, v38, type metadata accessor for _ChartContentOutputs);
  sub_1AAE22FC8(v24, v18, v29, a3, a4, v36, v37, v21);
  v45 = type metadata accessor for BuilderConditional.Info(0, a3, a4, v30);
  v46 = v19;
  WitnessTable = swift_getWitnessTable();
  v31 = sub_1AAF8D1A4();
  sub_1AACBC418(v21, sub_1AAD4AE90, v44, v19, MEMORY[0x1E69E73E0], v31, MEMORY[0x1E69E7410], v32);
  LODWORD(a4) = v49[0];
  v33 = v41;
  (*(v27 + 16))(v41, v25, v26);
  v34 = v33 + *(v42 + 28);
  *v34 = a4;
  *(v34 + 4) = 0;
  v43 = v33;
  sub_1AAF8E484();
  (*(v40 + 8))(v21, v19);
  return sub_1AAE279D0(v33, type metadata accessor for SetDependency);
}

uint64_t static Optional<A>._collectChartContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1AAF8FE74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10, v16);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    result = (*(v11 + 8))(v13, v10);
    *a5 = MEMORY[0x1E69E7CC0];
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = xmmword_1AAF92AC0;
    *(a5 + 48) = 0;
    *(a5 + 64) = 0;
    *(a5 + 72) = 0;
    *(a5 + 56) = 0;
    *(a5 + 80) = xmmword_1AAF92AC0;
    *(a5 + 96) = 0;
    *(a5 + 112) = 0;
    *(a5 + 120) = 0;
    *(a5 + 104) = 0;
    *(a5 + 128) = xmmword_1AAF92AC0;
    *(a5 + 144) = 0;
    *(a5 + 160) = 0;
    *(a5 + 168) = 0;
    *(a5 + 152) = 0;
    *(a5 + 176) = xmmword_1AAF92AC0;
    *(a5 + 192) = 0;
    *(a5 + 208) = 0;
    *(a5 + 216) = 0;
    *(a5 + 200) = 0;
    *(a5 + 224) = xmmword_1AAF92AC0;
    *(a5 + 240) = 0;
    *(a5 + 256) = 0;
    *(a5 + 264) = 0;
    *(a5 + 248) = 0;
    *(a5 + 272) = xmmword_1AAF92AC0;
    *(a5 + 288) = 0;
    *(a5 + 304) = 0;
    *(a5 + 312) = 0;
    *(a5 + 296) = 0;
    *(a5 + 320) = xmmword_1AAF92AC0;
    *(a5 + 336) = 0;
    *(a5 + 352) = 0;
    *(a5 + 360) = 0;
    *(a5 + 344) = 0;
    *(a5 + 368) = xmmword_1AAF92AC0;
    *(a5 + 384) = 0;
    *(a5 + 400) = 0;
    *(a5 + 408) = 0;
    *(a5 + 392) = 0;
    *(a5 + 416) = xmmword_1AAF92AC0;
    *(a5 + 432) = 0;
    *(a5 + 448) = 0;
    *(a5 + 456) = 0;
    *(a5 + 440) = 0;
    *(a5 + 464) = xmmword_1AAF92AC0;
    *(a5 + 480) = 0;
    *(a5 + 488) = 0u;
    *(a5 + 504) = 0u;
    *(a5 + 520) = 1;
    *(a5 + 799) = 0;
    *(a5 + 768) = 0u;
    *(a5 + 784) = 0u;
    *(a5 + 736) = 0u;
    *(a5 + 752) = 0u;
    *(a5 + 704) = 0u;
    *(a5 + 720) = 0u;
    *(a5 + 672) = 0u;
    *(a5 + 688) = 0u;
    *(a5 + 640) = 0u;
    *(a5 + 656) = 0u;
    *(a5 + 608) = 0u;
    *(a5 + 624) = 0u;
    *(a5 + 576) = 0u;
    *(a5 + 592) = 0u;
    *(a5 + 544) = 0u;
    *(a5 + 560) = 0u;
    *(a5 + 528) = 0u;
  }

  else
  {
    (*(v14 + 32))(v18, v13, a3);
    (*(a4 + 64))(v18, a2, a3, a4);
    return (*(v14 + 8))(v18, a3);
  }

  return result;
}

uint64_t sub_1AAE2208C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a3;
  v21 = a5;
  v6 = type metadata accessor for BuilderConditional.Storage(0, a2, &type metadata for BuilderEmpty, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = sub_1AAF8FE74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD3EFB4(v13);
  if ((*(v14 + 48))(v13, 1, a2) == 1)
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v18 = *(v14 + 32);
    v18(v17, v13, a2);
    v18(v9, v17, a2);
  }

  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(v21, v9, v6);
}

uint64_t sub_1AAE222F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for BuilderConditional(0, *(a1 + 16), &type metadata for BuilderEmpty, a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

double sub_1AAE22490@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_1AAF92AC0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = xmmword_1AAF92AC0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = xmmword_1AAF92AC0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = xmmword_1AAF92AC0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = xmmword_1AAF92AC0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = xmmword_1AAF92AC0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 320) = xmmword_1AAF92AC0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = xmmword_1AAF92AC0;
  *(a1 + 384) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = xmmword_1AAF92AC0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0;
  *(a1 + 464) = xmmword_1AAF92AC0;
  *(a1 + 480) = 0;
  result = 0.0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 1;
  *(a1 + 799) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 528) = 0u;
  return result;
}

double static BuilderEmpty._collectChartContent(content:inputs:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_1AAF92AC0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = xmmword_1AAF92AC0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = xmmword_1AAF92AC0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = xmmword_1AAF92AC0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = xmmword_1AAF92AC0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = xmmword_1AAF92AC0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 320) = xmmword_1AAF92AC0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = xmmword_1AAF92AC0;
  *(a1 + 384) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = xmmword_1AAF92AC0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0;
  *(a1 + 464) = xmmword_1AAF92AC0;
  *(a1 + 480) = 0;
  result = 0.0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 1;
  *(a1 + 799) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 528) = 0u;
  return result;
}

uint64_t BuilderConditional.storage.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for BuilderConditional.Storage(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

uint64_t sub_1AAE226E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v31 = a1;
  v6 = type metadata accessor for BuilderConditional.Storage(0, v4, v5, a4);
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v10 = type metadata accessor for BuilderConditional(0, v4, v5, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v15 = type metadata accessor for BuilderConditional.Info(0, v4, v5, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v29 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE22AB0(v4, v5, v18, v21);
  (*(v11 + 16))(v13, v18, v10);
  v22 = v32;
  (*(v16 + 8))(v18, v15);
  (*(v22 + 32))(v8, v13, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v22 + 8))(v8, v6);
  }

  v25 = v29;
  v24 = v30;
  v26 = (*(v30 + 32))(v29, v8, v4);
  MEMORY[0x1EEE9AC00](v26);
  *(&v28 - 2) = v31;
  *(&v28 - 1) = swift_getWitnessTable();
  sub_1AACBC418(v25, sub_1AAD4BC60, (&v28 - 4), v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v27);
  return (*(v24 + 8))(v25, v4);
}

uint64_t sub_1AAE22AB0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  v6 = type metadata accessor for BuilderConditional.Info(0, a2, a3, x3_0);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, Value, v6);
}

uint64_t sub_1AAE22B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v31 = a1;
  v6 = type metadata accessor for BuilderConditional.Storage(0, v5, v4, a4);
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v10 = type metadata accessor for BuilderConditional(0, v5, v4, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v15 = type metadata accessor for BuilderConditional.Info(0, v5, v4, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v29 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE22AB0(v5, v4, v18, v21);
  (*(v11 + 16))(v13, v18, v10);
  v22 = v32;
  (*(v16 + 8))(v18, v15);
  (*(v22 + 32))(v8, v13, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v22 + 8))(v8, v6);
  }

  v24 = v29;
  v23 = v30;
  v25 = (*(v30 + 32))(v29, v8, v4);
  MEMORY[0x1EEE9AC00](v25);
  *(&v28 - 2) = v31;
  *(&v28 - 1) = swift_getWitnessTable();
  sub_1AACBC418(v24, sub_1AAD4BC60, (&v28 - 4), v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v26);
  return (*(v23 + 8))(v24, v4);
}

id sub_1AAE22FC8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _DWORD *a8@<X8>)
{
  *a8 = a1;
  v14[0] = a4;
  v14[1] = a5;
  v14[2] = a6;
  v14[3] = a7;
  v12 = _s9ContainerVMa(0, v14);
  sub_1AAE27A30(a2, a8 + v12[13], type metadata accessor for _ChartContentInputs);
  sub_1AAE27A30(a3, a8 + v12[14], type metadata accessor for _ChartContentOutputs);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a8 + v12[15]) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static BuilderConditional<>._collectChartContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a6;
  v39 = a5;
  v40 = a1;
  v41 = a7;
  v37 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BuilderConditional.Storage(0, v16, v17, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - v20;
  v22 = type metadata accessor for _ChartContentCollectInputs(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE8BF0(a2, v24, type metadata accessor for _ChartContentCollectInputs);
  (*(v19 + 16))(v21, v40, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v37;
    (*(v37 + 32))(v11, v21, a4);
    v26 = *(v22 + 20);
    v27 = *&v24[v26];
    sub_1AADAD8EC();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AAF92AB0;
    *(inited + 32) = 0;
    *(inited + 72) = 0;
    v42 = v27;

    sub_1AADC85B8(inited);
    v29 = v42;

    *&v24[v26] = v29;
    (*(v38 + 64))(v11, v24, a4);
    (*(v25 + 8))(v11, a4);
  }

  else
  {
    v30 = v36;
    (*(v36 + 32))(v15, v21, a3);
    v31 = *(v22 + 20);
    v32 = *&v24[v31];
    sub_1AADAD8EC();
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_1AAF92AB0;
    *(v33 + 32) = 1;
    *(v33 + 72) = 0;
    v42 = v32;

    sub_1AADC85B8(v33);
    v34 = v42;

    *&v24[v31] = v34;
    (*(v39 + 64))(v15, v24, a3);
    (*(v30 + 8))(v15, a3);
  }

  return sub_1AAE279D0(v24, type metadata accessor for _ChartContentCollectInputs);
}