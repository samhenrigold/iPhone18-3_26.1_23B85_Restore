__n128 AreaPlot<A>.init<A, B, C>(x:yStart:yEnd:domain:function:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v62 = a8;
  v61 = a7;
  v59 = a6;
  *(&v60 + 1) = a5;
  *&v60 = a4;
  v57 = a3;
  v55 = a2;
  v51 = a1;
  v58 = a15;
  v56 = a14;
  v54 = a13;
  v16 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a11 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a10;
  v23 = *(a10 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  (*(v23 + 16))(&v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v54 = sub_1AAF8EA64();
  v53 = v27;
  v49 = v28;
  v52 = v29;
  v30 = v55;
  (*(v19 + 16))(v22, v55, a11);
  v56 = sub_1AAF8EA64();
  v48 = v31;
  v46 = v32;
  v47 = v33;
  v34 = v57;
  (*(v16 + 16))(v18, v57, a12);
  v35 = sub_1AAF8EA64();
  v58 = v36;
  v38 = v37;
  v45 = v39;
  (*(v16 + 8))(v34, a12);
  (*(v19 + 8))(v30, a11);
  (*(v23 + 8))(v51, v50);
  v66 = v49 & 1;
  v65 = v46 & 1;
  v64 = v38 & 1;
  v63 = v59 & 1;
  *&v67 = v54;
  *(&v67 + 1) = v53;
  v68.n128_u8[0] = v49 & 1;
  v68.n128_u64[1] = v52;
  *&v69 = v56;
  *(&v69 + 1) = v48;
  LOBYTE(v70) = v46 & 1;
  *(&v70 + 1) = v47;
  *&v71 = v35;
  *(&v71 + 1) = v58;
  LOBYTE(v72) = v38 & 1;
  *(&v72 + 1) = v45;
  v73 = v60;
  LOBYTE(v74) = v59 & 1;
  *(&v74 + 1) = v61;
  v75 = v62;
  sub_1AAE4E784(&v67);
  v40 = v74;
  *(a9 + 96) = v73;
  *(a9 + 112) = v40;
  *(a9 + 128) = v75;
  v41 = v70;
  *(a9 + 32) = v69;
  *(a9 + 48) = v41;
  v42 = v72;
  *(a9 + 64) = v71;
  *(a9 + 80) = v42;
  result = v68;
  *a9 = v67;
  *(a9 + 16) = result;
  return result;
}

__n128 AreaPlot<A>.init(x:y:domain:function:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, char a11, uint64_t a12, uint64_t a13)
{
  *&v18 = a1;
  *(&v18 + 1) = a2;
  v19.n128_u8[0] = a3 & 1;
  v19.n128_u64[1] = a4;
  *&v20 = a5;
  *(&v20 + 1) = a6;
  LOBYTE(v21) = a7 & 1;
  *(&v21 + 1) = a8;
  v22 = a10;
  LOBYTE(v23) = a11 & 1;
  *(&v23 + 1) = a12;
  *&v24 = a13;
  sub_1AAE4EE7C(&v18);
  v14 = v25;
  *(a9 + 96) = v24;
  *(a9 + 112) = v14;
  *(a9 + 128) = v26;
  v15 = v21;
  *(a9 + 32) = v20;
  *(a9 + 48) = v15;
  v16 = v23;
  *(a9 + 64) = v22;
  *(a9 + 80) = v16;
  result = v19;
  *a9 = v18;
  *(a9 + 16) = result;
  return result;
}

void *sub_1AAE4EE7C(void *result)
{
  v1 = result[6] & 1;
  v2 = result[10] & 1;
  v3 = result[14] & 1;
  result[2] &= 1uLL;
  result[6] = v1;
  result[10] = v2;
  result[14] = v3;
  return result;
}

__n128 AreaPlot<A>.init(x:y:domain:function:)@<Q0>(uint64_t a9@<X8>, __int128 a10, char a11, uint64_t a12, uint64_t a13)
{
  *&v24 = sub_1AAF8EA44();
  *(&v24 + 1) = v14;
  v25.n128_u8[0] = v15 & 1;
  v25.n128_u64[1] = v16;
  *&v26 = sub_1AAF8EA44();
  *(&v26 + 1) = v17;
  LOBYTE(v27) = v18 & 1;
  *(&v27 + 1) = v19;
  v28 = a10;
  LOBYTE(v29) = a11 & 1;
  *(&v29 + 1) = a12;
  *&v30 = a13;
  sub_1AAE4EE7C(&v24);
  v20 = v31;
  *(a9 + 96) = v30;
  *(a9 + 112) = v20;
  *(a9 + 128) = v32;
  v21 = v27;
  *(a9 + 32) = v26;
  *(a9 + 48) = v21;
  v22 = v29;
  *(a9 + 64) = v28;
  *(a9 + 80) = v22;
  result = v25;
  *a9 = v24;
  *(a9 + 16) = result;
  return result;
}

__n128 AreaPlot<A>.init<A, B>(x:y:domain:function:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a7;
  v45 = a6;
  v43 = a5;
  *(&v44 + 1) = a4;
  *&v44 = a3;
  v39 = a1;
  v15 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  (*(v19 + 16))(&v37[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)], v21);
  v42 = sub_1AAF8EA64();
  v41 = v23;
  v38 = v24;
  v40 = v25;
  (*(v15 + 16))(v17, a2, a10);
  v26 = sub_1AAF8EA64();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  (*(v15 + 8))(a2, a10);
  (*(v19 + 8))(v39, a8);
  v49 = v38 & 1;
  v48 = v30 & 1;
  v47 = v43 & 1;
  *&v50 = v42;
  *(&v50 + 1) = v41;
  v51.n128_u8[0] = v38 & 1;
  v51.n128_u64[1] = v40;
  *&v52 = v26;
  *(&v52 + 1) = v28;
  LOBYTE(v53) = v30 & 1;
  *(&v53 + 1) = v32;
  v54 = v44;
  LOBYTE(v55) = v43 & 1;
  *(&v55 + 1) = v45;
  *&v56 = v46;
  sub_1AAE4EE7C(&v50);
  v33 = v57;
  *(a9 + 96) = v56;
  *(a9 + 112) = v33;
  *(a9 + 128) = v58;
  v34 = v53;
  *(a9 + 32) = v52;
  *(a9 + 48) = v34;
  v35 = v55;
  *(a9 + 64) = v54;
  *(a9 + 80) = v35;
  result = v51;
  *a9 = v50;
  *(a9 + 16) = result;
  return result;
}

void sub_1AAE4F2DC(double (*a1)(double), uint64_t a2)
{
  sub_1AAF84DA0(a1, 0.014959965, 659.734457, a2, 1000);
  if (v5)
  {
    sub_1AAF8545C(a1);
    v2 = v6;
    v8 = v7;
    sub_1AAF85BB0(a1);
    if (v8)
    {
      if (v5)
      {
        sub_1AAF864AC(a1, v9);
        return;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v4 * -1.5 <= v4 * 1.5)
    {
      return;
    }

    __break(1u);
  }

  v10 = v2;
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v2 >= 0.0)
  {
    return;
  }

  __break(1u);
LABEL_10:
  v10 = v4;
  if (v4 >= 0.0)
  {
    return;
  }

  __break(1u);
LABEL_12:
  if (v10 <= v4)
  {
    v10 = v4;
  }

  if (v10 < 0.0)
  {
    __break(1u);
  }
}

void sub_1AAE4F3BC(uint64_t a1, uint64_t a2)
{

  sub_1AAF870B0();
  v3 = v2;
  v5 = v4;

  sub_1AAF870B4();
  v7 = v6;
  v9 = v8;

  if (v7 >= v3)
  {
    v10 = v3;
  }

  else
  {
    v10 = v7;
  }

  if (v5 > v9)
  {
    v11 = v5;
  }

  else
  {
    v11 = v9;
  }

  if (v10 > v11)
  {
    __break(1u);
  }
}

void sub_1AAE4F48C(uint64_t (*a1)(uint64_t, double), uint64_t a2)
{
  swift_retain_n();
  v3 = 0;
  for (i = pow(44100.0, 0 / 999.0); ; i = pow(44100.0, v3 / 999.0))
  {
    v5 = i * 0.014959965;
    v6 = v5 / 1.02164068;
    v7 = v5 * 1.02164068;
    if (v5 / 1.02164068 > v5 * 1.02164068)
    {
      __break(1u);
      goto LABEL_51;
    }

    v8 = (a1)(v6 + 0.292048924);
    v10 = v9;
    v11 = a1(v8, 0.292048924);
    if (vabdd_f64(v10, v12) >= 1.0e-10)
    {
      v13 = v12;
      v14 = a1(v11, v7 + 0.292048924);
      v16 = v15;
      v17 = a1(v14, 0.292048924);
      if (vabdd_f64(v16, v18) >= 1.0e-10)
      {
        v19 = v10 - v13;
        if (v19 * (v16 - v18) >= 0.0)
        {
          goto LABEL_2;
        }

        v20 = 40;
        while (1)
        {
          v21 = (v7 + v6) * 0.5;
          v22 = a1(v17, v21 + 0.292048924);
          v24 = v23;
          v17 = a1(v22, 0.292048924);
          if (vabdd_f64(v24, v25) < 1.0e-10)
          {
            break;
          }

          v26 = v24 - v25;
          v27 = v19 * (v24 - v25);
          if (v27 < 0.0)
          {
            v7 = (v7 + v6) * 0.5;
          }

          else
          {
            v19 = v26;
          }

          if (v27 >= 0.0)
          {
            v6 = v21;
          }

          if (!--v20)
          {
            goto LABEL_2;
          }
        }

        v6 = (v7 + v6) * 0.5;
      }

      else
      {
        v6 = v7;
      }
    }

    v28 = sub_1AAF86680(a1, v6);

    if (v28)
    {

      v29 = sub_1AAF86680(a1, v6 * 0.5);

      if ((v29 & 1) == 0)
      {
        break;
      }
    }

LABEL_2:
    if (++v3 == 1000)
    {
      goto LABEL_23;
    }
  }

  if (v6 * -1.5 <= v6 * 1.5)
  {
    return;
  }

  __break(1u);
LABEL_23:

  sub_1AAF867B8(a1);
  v31 = v30;
  v33 = v32;

  sub_1AAF85BB0(sub_1AAE52A24);
  v37 = v36;
  v38 = v34;
  if (v33)
  {
    if (v34)
    {
      v35.n128_u64[0] = 0xC0F86A0000000000;
      sub_1AAF86F08(a1, v35, 100000.0);
      if (v39 > 0.1)
      {
        goto LABEL_40;
      }

      v40 = *&qword_1F1FCF078;
      if (*&qword_1F1FCF078 < 0.0)
      {
        goto LABEL_52;
      }

      v41.n128_f64[0] = -v40;
      sub_1AAF86F08(a1, v41, v40);
      v43 = v42;

      if (v43 >= 0.4)
      {
        goto LABEL_40;
      }

      v44 = *&qword_1F1FCF080;
      if (*&qword_1F1FCF080 < 0.0)
      {
        goto LABEL_52;
      }

      v45.n128_f64[0] = -v44;
      sub_1AAF86F08(a1, v45, v44);
      v47 = v46;

      if (v47 >= 0.4)
      {
        goto LABEL_40;
      }

      v48 = *&qword_1F1FCF088;
      if (*&qword_1F1FCF088 < 0.0)
      {
        goto LABEL_52;
      }

      v49.n128_f64[0] = -v48;
      sub_1AAF86F08(a1, v49, v48);
      v51 = v50;

      if (v51 >= 0.4)
      {
        goto LABEL_40;
      }

      v52 = *&qword_1F1FCF090;
      if (*&qword_1F1FCF090 < 0.0)
      {
        goto LABEL_52;
      }

      v53.n128_f64[0] = -v52;
      sub_1AAF86F08(a1, v53, v52);
      v55 = v54;

      if (v55 >= 0.4)
      {
        goto LABEL_40;
      }

      v56 = *&qword_1F1FCF098;
      if (*&qword_1F1FCF098 < 0.0)
      {
        goto LABEL_52;
      }

      v57.n128_f64[0] = -v56;
      sub_1AAF86F08(a1, v57, v56);
      v59 = v58;

      if (v59 >= 0.4)
      {
        goto LABEL_40;
      }

      v60 = *&qword_1F1FCF0A0;
      if (*&qword_1F1FCF0A0 < 0.0)
      {
        goto LABEL_52;
      }

      v61.n128_f64[0] = -v60;
      sub_1AAF86F08(a1, v61, v60);
      v63 = v62;

      if (v63 >= 0.4)
      {
LABEL_40:

        return;
      }

      v64 = *&qword_1F1FCF0A8;
      if (*&qword_1F1FCF0A8 >= 0.0)
      {

        v65.n128_f64[0] = -v64;
        sub_1AAF86F08(a1, v65, v64);

        goto LABEL_40;
      }

      goto LABEL_52;
    }

LABEL_44:

    v66 = v37;
    if (v37 >= 0.0)
    {
      return;
    }

    __break(1u);
  }

  else
  {

    v66 = v31;
    if (v38)
    {
      if (v31 >= 0.0)
      {
        return;
      }

      __break(1u);
      goto LABEL_44;
    }
  }

  if (v66 <= v37)
  {
    v66 = v37;
  }

  if (v66 < 0.0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }
}

void static FunctionAreaPlotContent._renderChartContent(_:_:)(__n128 *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1AAE527B8(0, &qword_1EB425A70, &type metadata for AreaMark);
  v7 = v6;
  *&v141 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v122 - v8;
  v10 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SgShapeStyle(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[5];
  v17 = a1[7];
  v173 = a1[6];
  v174 = v17;
  v18 = a1[1];
  v19 = a1[3];
  v169 = a1[2];
  v170 = v19;
  v20 = a1[3];
  v21 = a1[5];
  v171 = a1[4];
  v172 = v21;
  v22 = a1[1];
  v23 = *a1;
  v167 = *a1;
  v168 = v22;
  v24 = a1[7];
  v191 = v173;
  v192 = v24;
  v187 = v169;
  v188 = v20;
  v190 = v16;
  v189 = v171;
  v25 = *(a2 + 1);
  v26 = *(v25 + 24);
  v27 = *(v25 + 32);
  if (v27 >= v26)
  {
    v28 = *(v25 + 24);
  }

  else
  {
    v28 = *(v25 + 32);
  }

  if (v26 > v27)
  {
    v29 = *(v25 + 24);
  }

  else
  {
    v29 = *(v25 + 32);
  }

  v175 = a1[8].n128_u64[0];
  v193 = a1[8].n128_u64[0];
  v186 = v18;
  v185 = v23;
  if (v28 > v29)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  v30 = *a2;
  v31 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
  v32 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
  v33 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
  v165 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
  v166[0] = v32;
  *(v166 + 9) = v31;
  v35 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
  v34 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
  v164[0] = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  v164[1] = v35;
  v164[2] = v34;
  v164[3] = v33;
  if (BYTE8(v166[1]) == 255 || (BYTE8(v166[1]) & 1) != 0 || (v36 = *(v166 + 1), v37 = *&v166[1], v38 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89), v39 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80), v40 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48), v162 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64), v163[0] = v39, *(v163 + 9) = v38, v42 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16), v41 = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32), v161[0] = *(v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale), v161[1] = v42, v161[2] = v41, v161[3] = v40, BYTE8(v163[1]) == 255) || (BYTE8(v163[1]) & 1) != 0 || LOBYTE(v166[0]) == 255 || LOBYTE(v163[0]) == 255)
  {
    v43 = 0xE000000000000000;
LABEL_15:
    *a3 = v43;
    return;
  }

  v134 = *(&v162 + 1);
  v135 = LOBYTE(v163[0]);
  v44 = *(v163 + 1);
  v45 = *&v163[1];
  v136 = *(&v165 + 1);
  v137 = LOBYTE(v166[0]);
  sub_1AAE51E00(v164, &v176, sub_1AACCF364);
  sub_1AAE51E00(v161, &v176, sub_1AACCF364);
  sub_1AAE5064C(v136, v137, v134, v135, v36, v37, v44, v45, v28, v29);
  v47 = v46;
  v133 = a3;
  if ((v30 & 1) == 0)
  {
    sub_1AAF8E934();
    v60 = *(v47 + 16);
    if (!v60)
    {
LABEL_52:

      v139 = type metadata accessor for SgPath(0);
      v140 = swift_allocBox();
      v69 = v68;
      v138 = *(*(v25 + 16) + 24);
      v70 = v146;
      v71 = v148;
      v135 = v147;
      v136 = v145;
      v72 = v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      v137 = v25 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      LODWORD(v141) = v149;
      swift_beginAccess();
      sub_1AAE51E00(v72, v12, type metadata accessor for ChartContentRenderContext.Environment);
      v73 = v135;
      v74 = v136;
      sub_1AAE5214C(v136, v70, v135, v71, v141);
      sub_1AAD0F2A4(v12, v15);
      sub_1AAE52094(v161);
      sub_1AAE52094(v164);
      v75 = v73;
      v76 = v73;
      LOBYTE(v73) = v141;
      sub_1AAD0E508(v74, v70, v76, v71, v141);
      v77 = *(v137 + *(v10 + 64));
      *v69 = v138;
      *(v69 + 8) = v74;
      *(v69 + 16) = v70;
      *(v69 + 24) = v75;
      *(v69 + 32) = v71;
      *(v69 + 40) = v73;
      v78 = v139;
      sub_1AAE52164(v15, v69 + *(v139 + 24));
      *(v69 + *(v78 + 28)) = v77;
      v43 = v140 | 0x9000000000000000;
      goto LABEL_15;
    }

    v61 = 0;
    v62 = v47 + 32;
    v140 = v47;
    v137 = v47 + 32;
    v138 = v60;
    while (v61 < *(v47 + 16))
    {
      v63 = *(v62 + 8 * v61);
      if (*(v63 + 16) >= 2uLL)
      {
        v139 = v61;

        sub_1AAF8E934();
        v64 = *(v63 + 16);
        if (v64)
        {
          v65 = (v63 + 32);
          v66 = *(v63 + 16);
          do
          {
            v141 = *v65;
            v152 = v142;
            v153 = v143;
            v154.n128_u8[0] = v144;
            if (sub_1AAF8E8E4())
            {
              sub_1AAF8E8A4();
            }

            else
            {
              sub_1AAF8E8D4();
            }

            v65 += 2;
            --v66;
          }

          while (v66);
          v60 = v138;
          while (1)
          {
            v67 = v64 - 1;
            if (v64 < 1)
            {
              break;
            }

            if (v67 >= *(v63 + 16))
            {
              goto LABEL_59;
            }

            sub_1AAF8E8D4();
            --v64;
            if (!v67)
            {
              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_37:

        sub_1AAF8E884();
        v150[0] = v142;
        v150[1] = v143;
        v151 = v144;
        v177.n128_u64[0] = 0;
        v176 = 0x3FF0000000000000uLL;
        v177.n128_u64[1] = 0x3FF0000000000000;
        v178 = 0uLL;
        sub_1AAF8E844();
        sub_1AAD12C10(v150);
        a3 = v133;
        v61 = v139;
        v47 = v140;
        v62 = v137;
      }

      if (++v61 == v60)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_66;
  }

  v139 = *(v46 + 16);
  v140 = v46;
  if (v139)
  {
    v48 = 0;
    v138 = v46 + 32;
    v49 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v48 >= *(v140 + 16))
      {
        goto LABEL_61;
      }

      v50 = *(v138 + 8 * v48);
      v51 = *(v50 + 16);
      v52 = *(v49 + 2);
      v53 = v52 + v51;
      if (__OFADD__(v52, v51))
      {
        goto LABEL_62;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v53 <= *(v49 + 3) >> 1)
      {
        if (!*(v50 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v52 <= v53)
        {
          v55 = v52 + v51;
        }

        else
        {
          v55 = v52;
        }

        v49 = sub_1AAD696E0(isUniquelyReferenced_nonNull_native, v55, 1, v49);
        if (!*(v50 + 16))
        {
LABEL_19:

          if (v51)
          {
            goto LABEL_63;
          }

          goto LABEL_20;
        }
      }

      v56 = *(v49 + 2);
      if ((*(v49 + 3) >> 1) - v56 < v51)
      {
        goto LABEL_64;
      }

      memcpy(&v49[32 * v56 + 32], (v50 + 32), 32 * v51);

      if (v51)
      {
        v57 = *(v49 + 2);
        v58 = __OFADD__(v57, v51);
        v59 = v57 + v51;
        if (v58)
        {
          goto LABEL_65;
        }

        *(v49 + 2) = v59;
      }

LABEL_20:
      if (v139 == ++v48)
      {
        goto LABEL_54;
      }
    }
  }

  v49 = MEMORY[0x1E69E7CC0];
LABEL_54:

  v182 = v173;
  v183 = v174;
  v184 = v175;
  v178 = v169;
  v179 = v170;
  v180 = v171;
  v181 = v172;
  v176 = v167;
  v177 = v168;
  if (sub_1AAE51DF4(&v176) == 1)
  {
    v79 = sub_1AAD311C4(&v176);
    v80 = *(v79 + 8);
    v81 = *(v79 + 24);
    v82 = *(v79 + 32);
    v138 = *v79;
    v139 = v81;
    v83 = *(v79 + 40);
    v84 = *(v79 + 56);
    v129 = *(v79 + 64);
    v130 = v84;
    v131 = *(v79 + 72);
    v132 = v80;
    v140 = *(v79 + 88);
    v85 = *(v79 + 16);
    LODWORD(v81) = *(v79 + 80);
    v123 = *(v79 + 48);
    v124 = v81;
    v158 = v191;
    v159 = v192;
    v160 = v193;
    v152 = v185;
    v153 = v186;
    v154 = v187;
    v155 = v188;
    v156 = v189;
    v157 = v190;
    v86 = sub_1AAD311C4(&v152);
    sub_1AAE51E00(v86, v150, sub_1AAE51E68);

    v122 = *(v49 + 2);
    KeyPath = swift_getKeyPath();
    v87 = swift_allocObject();
    *(v87 + 16) = v49;
    v88 = v138;
    v89 = v139;
    v90 = v132;
    *(v87 + 24) = v138;
    *(v87 + 32) = v90;
    *(v87 + 40) = v85 & 1;
    LODWORD(v128) = v85 & 1;
    v92 = v136;
    v91 = v137;
    *(v87 + 48) = v89;
    *(v87 + 56) = v92;
    *(v87 + 64) = v91;
    *(v87 + 72) = v36;
    *(v87 + 80) = v37;
    v126 = v83;
    v127 = v82;
    *(v87 + 88) = v82;
    *(v87 + 96) = v83;
    LODWORD(v137) = v123 & 1;
    *(v87 + 104) = v123 & 1;
    v93 = v129;
    v95 = v134;
    v94 = v135;
    *(v87 + 112) = v130;
    *(v87 + 120) = v95;
    *(v87 + 128) = v94;
    *(v87 + 136) = v44;
    *(v87 + 144) = v45;
    v96 = v131;
    *(v87 + 152) = v93;
    *(v87 + 160) = v96;
    LODWORD(v136) = v124 & 1;
    *(v87 + 168) = v124 & 1;
    *(v87 + 176) = v140;
    *&v150[0] = 0;
    *(&v150[0] + 1) = v122;
    sub_1AACD7304(v88, v90, v85 & 1);

    sub_1AACD7304(v82, v83, v137);

    v97 = v93;
    v98 = v131;
    LOBYTE(v82) = v136;
    sub_1AACD7304(v97, v131, v136);
    sub_1AAD26778(0, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD116F4();

    sub_1AAF8EF84();

    sub_1AAE49700(v9, 1, v25, &qword_1EB425A70, &type metadata for AreaMark, sub_1AAE528C0, v133);
    sub_1AAE52094(v161);
    sub_1AAE52094(v164);
    sub_1AAD04750(v129, v98, v82);

    sub_1AAD04750(v127, v126, v137);

    sub_1AAD04750(v138, v132, v128);
  }

  else
  {
    v99 = sub_1AAD311C4(&v176);
    v100 = *v99;
    v138 = *(v99 + 8);
    v139 = v100;
    LODWORD(v132) = *(v99 + 16);
    v101 = *(v99 + 32);
    v140 = *(v99 + 24);
    v130 = *(v99 + 40);
    v131 = v101;
    v102 = *(v99 + 48);
    v103 = *(v99 + 56);
    v128 = *(v99 + 96);
    v129 = v103;
    v158 = v191;
    v159 = v192;
    v160 = v193;
    v152 = v185;
    v153 = v186;
    v154 = v187;
    v155 = v188;
    v156 = v189;
    v157 = v190;
    v104 = sub_1AAD311C4(&v152);
    v106 = *v104;
    v105 = *(v104 + 8);
    v107 = *(v104 + 16);
    v108 = *(v104 + 32);
    v109 = *(v104 + 40);
    v110 = *(v104 + 48);
    v111 = *(v104 + 96);
    KeyPath = *(v104 + 56);
    v126 = v111;
    sub_1AACD7304(v106, v105, v107);

    sub_1AACD7304(v108, v109, v110);

    v126 = *(v49 + 2);
    v128 = swift_getKeyPath();
    v112 = swift_allocObject();
    *(v112 + 16) = v49;
    v114 = v138;
    v113 = v139;
    *(v112 + 24) = v139;
    *(v112 + 32) = v114;
    v115 = v132;
    *(v112 + 40) = v132;
    v117 = v136;
    v116 = v137;
    *(v112 + 48) = v140;
    *(v112 + 56) = v117;
    *(v112 + 64) = v116;
    *(v112 + 72) = v36;
    *(v112 + 80) = v37;
    v118 = v130;
    v119 = v131;
    *(v112 + 88) = v131;
    *(v112 + 96) = v118;
    LODWORD(v127) = v102;
    *(v112 + 104) = v102;
    v121 = v134;
    v120 = v135;
    *(v112 + 112) = v129;
    *(v112 + 120) = v121;
    *(v112 + 128) = v120;
    *(v112 + 136) = v44;
    *(v112 + 144) = v45;
    *&v150[0] = 0;
    *(&v150[0] + 1) = v126;
    sub_1AACD7304(v113, v114, v115);

    sub_1AACD7304(v119, v118, v102);
    sub_1AAD26778(0, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD116F4();

    sub_1AAF8EF84();

    sub_1AAE49700(v9, 1, v25, &qword_1EB425A70, &type metadata for AreaMark, sub_1AAE528C0, v133);
    sub_1AAE52094(v161);
    sub_1AAE52094(v164);
    sub_1AAD04750(v131, v130, v127);

    sub_1AAD04750(v139, v138, v132);
  }

  (*(v141 + 8))(v9, v7);
}

void sub_1AAE5064C(uint64_t a1, int a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v112 = a4;
  LODWORD(v111) = a2;
  v19 = *(v10 + 112);
  v118[6] = *(v10 + 96);
  v118[7] = v19;
  v119 = *(v10 + 128);
  v20 = *(v10 + 48);
  v118[2] = *(v10 + 32);
  v118[3] = v20;
  v21 = *(v10 + 80);
  v118[4] = *(v10 + 64);
  v118[5] = v21;
  v22 = *(v10 + 16);
  v118[0] = *v10;
  v118[1] = v22;
  v23 = sub_1AAE51DF4(v118);
  v24 = sub_1AAD311C4(v118);
  if (v23 == 1)
  {
    if ((*(v24 + 112) & 1) == 0)
    {
      v25 = (v24 + 96);
      v26 = (v24 + 104);
      goto LABEL_6;
    }

LABEL_26:
    v35 = *(v10 + 112);
    v116[6] = *(v10 + 96);
    v116[7] = v35;
    v117 = *(v10 + 128);
    v36 = *(v10 + 48);
    v116[2] = *(v10 + 32);
    v116[3] = v36;
    v37 = *(v10 + 80);
    v116[4] = *(v10 + 64);
    v116[5] = v37;
    v38 = *(v10 + 16);
    v116[0] = *v10;
    v116[1] = v38;
    v39 = sub_1AAE51DF4(v116);
    v40 = sub_1AAD311C4(v116);
    if (v39 == 1)
    {
      v41 = *(v40 + 120);
      v42 = *(v40 + 128);
      MEMORY[0x1EEE9AC00](v40);
      v94 = a1;
      v95 = v111;
      v96 = a5;
      v97 = a6;
      v98.n128_u64[0] = v41;
      v98.n128_u64[1] = v42;
      v99 = a3;
      v100 = v112;
      v101 = a7;
      v102 = a8;
      v43.n128_f64[0] = a9;
      v44.n128_f64[0] = a10;
      v45 = sub_1AAF81604(4, 7, 1, sub_1AAE5299C, v93, v43, v44);
      v46 = v45[2];
      if (v46)
      {
        v115 = MEMORY[0x1E69E7CC0];
        v104 = v45;
        v105 = v46;
        sub_1AAD41290(0, v46, 0);
        v47 = v104;
        v48 = v105;
        v49 = 0;
        v50 = v115;
        v106 = v104 + 4;
        v109.i64[0] = a1;
        v51 = *&a1;
        v110 = a3;
        v52 = *&a3;
        v53 = 1.0 / *&a1;
        while (v49 < v47[2])
        {
          v108 = v50;
          v54 = v106[v49];
          v55 = *(v54 + 16);
          if (v55)
          {
            v107 = v49;
            v114 = MEMORY[0x1E69E7CC0];

            sub_1AAD412E0(0, v55, 0);
            v56 = v114;
            v57 = 32;
            do
            {
              v58 = *(v54 + v57);
              v113 = v58;
              v58.n128_f64[0] = (v58.n128_f64[0] - a6) / a5;
              if (v111)
              {
                if (v111 == 1)
                {
                  if ((v58.n128_u64[0] & 0x8000000000000000) != 0)
                  {
                    v58.n128_f64[0] = 1.0 - exp(-v58.n128_f64[0]);
                  }

                  else
                  {
                    v58.n128_f64[0] = exp(v58.n128_f64[0]) + -1.0;
                  }

                  v58.n128_f64[0] = v58.n128_f64[0] / v51;
                }

                else if (v109.i64[0])
                {
                  v58.n128_f64[0] = exp(v58.n128_f64[0]);
                }
              }

              else
              {
                v58.n128_f64[0] = pow(v58.n128_f64[0], v53);
              }

              v41(v58);
              if (v112)
              {
                if (v112 == 1)
                {
                  v60 = v59;
                  v61 = v59 * v52;
                  if ((*&v60 & 0x8000000000000000) != 0)
                  {
                    v59 = -log(1.0 - v61);
                  }

                  else
                  {
                    v59 = log(v61 + 1.0);
                  }
                }

                else if (v110)
                {
                  v59 = log(v59);
                }
              }

              else
              {
                v59 = pow(v59, v52);
              }

              v114 = v56;
              v63 = *(v56 + 16);
              v62 = *(v56 + 24);
              if (v63 >= v62 >> 1)
              {
                v103 = v59;
                sub_1AAD412E0((v62 > 1), v63 + 1, 1);
                v59 = v103;
                v56 = v114;
              }

              *&v64 = v113.i64[0];
              *(&v64 + 1) = v59 * a7 + a8;
              v65 = vzip2q_s64(v113, 0);
              *(v56 + 16) = v63 + 1;
              v66 = v56 + 32 * v63;
              *(v66 + 32) = v64;
              *(v66 + 48) = v65;
              v57 += 16;
              --v55;
            }

            while (v55);

            v47 = v104;
            v48 = v105;
            v49 = v107;
          }

          else
          {
            v56 = MEMORY[0x1E69E7CC0];
          }

          v50 = v108;
          v115 = v108;
          v68 = *(v108 + 16);
          v67 = *(v108 + 24);
          if (v68 >= v67 >> 1)
          {
            v69 = v49;
            sub_1AAD41290((v67 > 1), v68 + 1, 1);
            v49 = v69;
            v47 = v104;
            v48 = v105;
            v50 = v115;
          }

          ++v49;
          *(v50 + 16) = v68 + 1;
          *(v50 + 8 * v68 + 32) = v56;
          if (v49 == v48)
          {
            goto LABEL_78;
          }
        }

        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

LABEL_78:

      return;
    }

    v70.n128_f64[0] = MEMORY[0x1EEE9AC00](v40);
    v94 = a1;
    v95 = v111;
    v96 = a5;
    v97 = a6;
    v98 = v70;
    v99 = a3;
    v100 = v112;
    v101 = a7;
    v102 = a8;
    v70.n128_f64[0] = a9;
    v71.n128_f64[0] = a10;
    v72 = sub_1AAF81604(4, 7, 1, sub_1AAE529B4, v93, v70, v71);
    v73 = v72[2];
    if (!v73)
    {
      goto LABEL_78;
    }

    v115 = MEMORY[0x1E69E7CC0];
    sub_1AAD41290(0, v73, 0);
    v74 = v115;
    v111 = (v72 + 4);
    v75 = log(0.0);
    v76 = *&a3;
    v78 = log(*&a3 * 0.0 + 1.0);
    v79 = 0;
    if (*&a3 == 0.0)
    {
      v75 = 0.0;
    }

    v110 = v72;
    while (1)
    {
      if (v79 >= v72[2])
      {
        goto LABEL_80;
      }

      v80 = *(v111 + 8 * v79);
      if (v112)
      {
        if (v112 == 1)
        {
          *v77.i64 = v78;
        }

        else
        {
          *v77.i64 = v75;
        }

        v81 = *(v80 + 16);
        if (v81)
        {
LABEL_68:
          *v77.i64 = *v77.i64 * a7 + a8;
          v113 = v77;
          v114 = MEMORY[0x1E69E7CC0];

          sub_1AAD412E0(0, v81, 0);
          v82 = v113.i64[0];
          v83 = 0uLL;
          v84 = v114;
          v85 = *(v114 + 16) + 1;
          v86 = 32;
          do
          {
            v87 = *(v80 + v86);
            v114 = v84;
            v88 = *(v84 + 24);
            if (v85 - 1 >= v88 >> 1)
            {
              v109 = v87;
              sub_1AAD412E0((v88 > 1), v85, 1);
              v87 = v109;
              v82 = v113.i64[0];
              v83 = 0uLL;
              v84 = v114;
            }

            v89 = vzip2q_s64(v87, v83);
            v87.i64[1] = v82;
            *(v84 + 16) = v85;
            v90 = (v84 + 32 * v85);
            *v90 = v87;
            v90[1] = v89;
            ++v85;
            v86 += 16;
            --v81;
          }

          while (v81);

          v72 = v110;
          goto LABEL_75;
        }
      }

      else
      {
        *v77.i64 = pow(0.0, v76);
        v81 = *(v80 + 16);
        if (v81)
        {
          goto LABEL_68;
        }
      }

      v84 = MEMORY[0x1E69E7CC0];
LABEL_75:
      v115 = v74;
      v92 = *(v74 + 16);
      v91 = *(v74 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_1AAD41290((v91 > 1), v92 + 1, 1);
        v74 = v115;
      }

      ++v79;
      *(v74 + 16) = v92 + 1;
      *(v74 + 8 * v92 + 32) = v84;
      if (v79 == v73)
      {
        goto LABEL_78;
      }
    }
  }

  if (*(v24 + 80))
  {
    goto LABEL_26;
  }

  v25 = (v24 + 64);
  v26 = (v24 + 72);
LABEL_6:
  v27 = *v25;
  v28 = *v26;
  v29 = *v26;
  if (!v111)
  {
    v31 = pow(v27, *&a1) * a5 + a6;
    v29 = pow(v29, *&a1);
    goto LABEL_19;
  }

  if (v111 == 1)
  {
    v30 = *&a1 * v27;
    if ((*&v27 & 0x8000000000000000) != 0)
    {
      v31 = a6 - log(1.0 - v30) * a5;
    }

    else
    {
      v31 = log(v30 + 1.0) * a5 + a6;
    }

    v33 = *&a1 * v29;
    if ((*&v28 & 0x8000000000000000) == 0)
    {
      v32 = v33 + 1.0;
      goto LABEL_16;
    }

    v29 = -log(1.0 - v33);
  }

  else
  {
    if (*&a1 != 0.0)
    {
      v31 = log(v27) * a5 + a6;
      v32 = v29;
LABEL_16:
      v29 = log(v32);
      goto LABEL_19;
    }

    v31 = v27 * a5 + a6;
  }

LABEL_19:
  v34 = v29 * a5 + a6;
  if (v34 >= v31)
  {
    a9 = v31;
  }

  else
  {
    a9 = v29 * a5 + a6;
  }

  if (v31 > v34)
  {
    a10 = v31;
  }

  else
  {
    a10 = v29 * a5 + a6;
  }

  if (a9 <= a10)
  {
    goto LABEL_26;
  }

LABEL_81:
  __break(1u);
}

void sub_1AAE50DE4(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  v25 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v25 >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v49 = v24;
  v50 = v23;
  v51 = v22;
  v52 = v21;
  v53 = v19;
  v54 = v20;
  v30 = a2 + 32 * v25;
  v31 = *(v30 + 48);
  v34 = sub_1AAF4242C(a7, a8, *(v30 + 32), a10, a11);
  v36[0] = a3;
  v36[1] = a4;
  v37 = a5 & 1;
  v38 = a6;
  v39 = v34;
  v40 = 0;
  v41 = 0;
  v42[0] = a14;
  v42[1] = a15;
  v43 = a16 & 1;
  v44 = a17;
  v45 = sub_1AAF4242C(a18, a19, v31, a12, a13);
  v46 = 0;
  v47 = 0;
  sub_1AAE49B40(v36, v42, 0, __src);
  memcpy(a9, __src, 0x131uLL);
  sub_1AACD7304(a3, a4, a5 & 1);

  sub_1AACD7304(a14, a15, a16 & 1);
}

void sub_1AAE50F60(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22)
{
  v23 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v23 < *(a2 + 16))
  {
    v29 = a2 + 32 * v23;
    v36 = *(v29 + 32);
    v30 = *(v29 + 48);
    v32 = sub_1AAF4242C(a7, a8, *(v29 + 32), a10, a11);
    v33 = sub_1AAF4242C(a17, a18, *(&v36 + 1), a12, a13);
    v34 = sub_1AAF4242C(a17, a18, v30, a12, a13);
    a5 &= 1u;
    v39 = a5;
    *&v40 = a3;
    *(&v40 + 1) = a4;
    LOBYTE(v41) = a5;
    *(&v41 + 1) = a6;
    v42 = *&v32;
    LOBYTE(v43) = 0;
    v35 = MEMORY[0x1E69E63B0];
    *(&v43 + 1) = MEMORY[0x1E69E63B0];
    *&v44 = &protocol witness table for Double;
    sub_1AAE4637C(&v40);
    __src[6] = v46;
    __src[7] = v47;
    __src[8] = v48;
    __src[2] = v42;
    __src[3] = v43;
    __src[4] = v44;
    __src[5] = v45;
    __src[0] = v40;
    __src[1] = v41;
    v49 = a15 & 1;
    v50 = a21 & 1;
    v51 = a14;
    LOBYTE(v52) = a15 & 1;
    *(&v52 + 1) = a16;
    v53 = *&v33;
    LOBYTE(v54) = 0;
    *(&v54 + 1) = v35;
    *&v55 = &protocol witness table for Double;
    *(&v55 + 1) = a19;
    *&v56 = a20;
    BYTE8(v56) = a21 & 1;
    *&v57 = a22;
    *(&v57 + 1) = v34;
    *&v58 = 0;
    BYTE8(v58) = 0;
    *&v59 = v35;
    *(&v59 + 1) = &protocol witness table for Double;
    sub_1AAE52954(&v51);
    __src[15] = v57;
    __src[16] = v58;
    __src[17] = v59;
    __src[11] = v53;
    __src[12] = v54;
    __src[13] = v55;
    __src[14] = v56;
    __src[9] = v51;
    __src[10] = v52;
    memcpy(a9, __src, 0x120uLL);
    *(a9 + 288) = 0;
    *(a9 + 296) = 0;
    *(a9 + 304) = -1;
    sub_1AACD7304(a3, a4, a5);

    sub_1AACD7304(a14, *(&a14 + 1), a15 & 1);

    sub_1AACD7304(a19, a20, a21 & 1);

    return;
  }

  __break(1u);
}

double sub_1AAE5126C(uint64_t a1, char a2, void (*a3)(__n128), __n128 a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, char a11)
{
  a4.n128_f64[0] = (a4.n128_f64[0] - a6) / a5;
  if (a2)
  {
    if (a2 == 1)
    {
      if ((a4.n128_u64[0] & 0x8000000000000000) != 0)
      {
        a4.n128_f64[0] = 1.0 - exp(-a4.n128_f64[0]);
      }

      else
      {
        a4.n128_f64[0] = exp(a4.n128_f64[0]) + -1.0;
      }

      a4.n128_f64[0] = a4.n128_f64[0] / *&a1;
    }

    else if (*&a1 != 0.0)
    {
      a4.n128_f64[0] = exp(a4.n128_f64[0]);
    }
  }

  else
  {
    a4.n128_f64[0] = pow(a4.n128_f64[0], 1.0 / *&a1);
  }

  a3(a4);
  if (a11)
  {
    if (a11 == 1)
    {
      v18 = v17;
      v19 = v17 * *&a10;
      if ((*&v18 & 0x8000000000000000) != 0)
      {
        v17 = -log(1.0 - v19);
        return v17 * a7 + a8;
      }

      v17 = v19 + 1.0;
      goto LABEL_16;
    }

    if (*&a10 != 0.0)
    {
LABEL_16:
      v17 = log(v17);
    }
  }

  else
  {
    v17 = pow(v17, *&a10);
  }

  return v17 * a7 + a8;
}

double sub_1AAE51380(uint64_t a1, char a2, void (*a3)(__n128), __n128 a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, char a11)
{
  a4.n128_f64[0] = (a4.n128_f64[0] - a6) / a5;
  if (a2)
  {
    if (a2 == 1)
    {
      if ((a4.n128_u64[0] & 0x8000000000000000) != 0)
      {
        a4.n128_f64[0] = 1.0 - exp(-a4.n128_f64[0]);
      }

      else
      {
        a4.n128_f64[0] = exp(a4.n128_f64[0]) + -1.0;
      }

      a4.n128_f64[0] = a4.n128_f64[0] / *&a1;
    }

    else if (*&a1 != 0.0)
    {
      a4.n128_f64[0] = exp(a4.n128_f64[0]);
    }
  }

  else
  {
    a4.n128_f64[0] = pow(a4.n128_f64[0], 1.0 / *&a1);
  }

  a3(a4);
  v18 = v17;
  if (a11)
  {
    if (a11 == 1)
    {
      v19 = v17 * *&a10;
      if ((*&v17 & 0x8000000000000000) != 0)
      {
        v18 = -log(1.0 - v19);
        return v18 * a7 + a8;
      }

      v18 = v19 + 1.0;
      goto LABEL_16;
    }

    if (*&a10 != 0.0)
    {
LABEL_16:
      v18 = log(v18);
    }
  }

  else
  {
    v18 = pow(v17, *&a10);
  }

  return v18 * a7 + a8;
}

uint64_t VectorizedAreaPlotContent.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Vectorizer(0, *(a1 + 16), *(a1 + 24), a4);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1AACE0800();
  sub_1AACE0800();
  return (*(v5 + 8))(v7, v4);
}

void _s6Charts23FunctionAreaPlotContentV012_layoutChartE0yyAC_AA01_gE12LayoutInputsVtFZ_0(__int128 *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (!*(v3 + 16))
  {
    goto LABEL_13;
  }

  v5 = sub_1AACB6398(0);
  v6 = 0;
  if (v7)
  {
    v8 = *(*(v3 + 56) + 72 * v5 + 40);
    v9 = v8 >> 8;
    v10 = (v8 & 0xFF00) != 768;
    v6 = v9 <= 0xFE && v10;
  }

  if (*(v3 + 16))
  {
    v11 = sub_1AACB6398(1u);
    if (v12)
    {
      v13 = *(*(v3 + 56) + 72 * v11 + 40);
      if (v13 >> 8 <= 0xFE && (v13 & 0xFF00) != 0x300)
      {
        if (v6)
        {
          return;
        }

        v14 = 1;
LABEL_14:
        v15 = a1[7];
        v125 = a1[6];
        v126 = v15;
        v127 = *(a1 + 16);
        v16 = a1[3];
        v121 = a1[2];
        v122 = v16;
        v17 = a1[5];
        v123 = a1[4];
        v124 = v17;
        v18 = a1[1];
        v119 = *a1;
        v120 = v18;
        v19 = sub_1AAE51DF4(&v119);
        v20 = sub_1AAD311C4(&v119);
        v21 = 64;
        if (v19 == 1)
        {
          v21 = 96;
        }

        v22 = 72;
        if (v19 == 1)
        {
          v22 = 104;
        }

        v23 = 80;
        if (v19 == 1)
        {
          v23 = 112;
        }

        if ((*(v20 + v23) & 1) == 0)
        {
          v24 = *(v20 + v22);
          v25 = *(v20 + v21);
          swift_beginAccess();
          if ((~*&v25 & 0x7FF0000000000000) != 0)
          {
            v26 = v25;
            if (*(v4 + 40))
            {
              v27 = v25;
            }

            else
            {
              v27 = *(v4 + 24);
              if (v27 >= v25)
              {
                v27 = v25;
              }

              if (*(v4 + 32) >= v25)
              {
                v26 = *(v4 + 32);
              }
            }

            *(v4 + 24) = v27;
            *(v4 + 32) = v26;
            *(v4 + 40) = 0;
          }

          if ((~*&v24 & 0x7FF0000000000000) != 0)
          {
            v28 = v24;
            if (*(v4 + 40))
            {
              v29 = v24;
            }

            else
            {
              v29 = *(v4 + 24);
              if (v29 >= v24)
              {
                v29 = v24;
              }

              if (*(v4 + 32) >= v24)
              {
                v28 = *(v4 + 32);
              }
            }

            *(v4 + 24) = v29;
            *(v4 + 32) = v28;
            *(v4 + 40) = 0;
          }
        }

        if (v14)
        {
          return;
        }

        goto LABEL_38;
      }
    }
  }

  if (!v6)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

LABEL_38:
  v108 = v4;
  v30 = a1[7];
  v125 = a1[6];
  v126 = v30;
  v127 = *(a1 + 16);
  v31 = a1[3];
  v121 = a1[2];
  v122 = v31;
  v32 = a1[5];
  v123 = a1[4];
  v124 = v32;
  v33 = a1[1];
  v119 = *a1;
  v120 = v33;
  if (sub_1AAE51DF4(&v119) != 1)
  {
    v56 = sub_1AAD311C4(&v119);
    v99 = *(v56 + 8);
    v101 = *v56;
    v98 = *(v56 + 16);
    v57 = *(v56 + 32);
    v58 = *(v56 + 40);
    v59 = *(v56 + 48);
    v60 = *(v56 + 64);
    v61 = *(v56 + 72);
    v104 = *(v56 + 80);
    v105 = *(v56 + 88);
    v107 = *(v56 + 96);
    v62 = a1[3];
    v112 = a1[2];
    v113 = v62;
    v63 = a1[1];
    v110 = *a1;
    v111 = v63;
    v118 = *(a1 + 16);
    v64 = a1[7];
    v116 = a1[6];
    v117 = v64;
    v65 = a1[5];
    v114 = a1[4];
    v115 = v65;
    v66 = sub_1AAD311C4(&v110);
    v67 = *(v66 + 32);
    v68 = *(v66 + 40);
    v69 = *(v66 + 48);
    sub_1AACD7304(*v66, *(v66 + 8), *(v66 + 16));

    sub_1AACD7304(v67, v68, v69);

    sub_1AAD04750(v57, v58, v59);

    sub_1AAD04750(v101, v99, v98);

    swift_beginAccess();
    v70 = 0.0;
    v71 = 0.0;
    if ((*(v4 + 112) & 1) == 0)
    {
      v71 = *(v4 + 104);
      v70 = fmin(*(v4 + 96), 0.0);
      if (v71 < 0.0)
      {
        v71 = 0.0;
      }
    }

    *(v4 + 96) = v70;
    *(v4 + 104) = v71;
    *(v4 + 112) = 0;
    if (v104)
    {
      v72 = swift_allocObject();
      *(v72 + 16) = v105;
      *(v72 + 24) = v107;
      v73 = swift_allocObject();
      *(v73 + 16) = v105;
      *(v73 + 24) = v107;
      swift_beginAccess();
      v74 = *(v4 + 240);
      swift_retain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 240) = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = sub_1AAD691C4(0, *(v74 + 2) + 1, 1, v74);
        *(v4 + 240) = v74;
      }

      v77 = *(v74 + 2);
      v76 = *(v74 + 3);
      if (v77 >= v76 >> 1)
      {
        v74 = sub_1AAD691C4((v76 > 1), v77 + 1, 1, v74);
      }

      *(v74 + 2) = v77 + 1;
      v78 = &v74[32 * v77];
      *(v78 + 4) = sub_1AAE52A04;
      *(v78 + 5) = v72;
      *(v78 + 6) = sub_1AAE52A1C;
      *(v78 + 7) = v73;
      *(v4 + 240) = v74;
      swift_endAccess();
    }

    else
    {
      sub_1AAF7F860(0, 0, 0, 1, v105, v60, v61);
      if ((*&v88 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v90 = v88;
        if ((*(v4 + 112) & 1) == 0)
        {
          v91 = *(v4 + 96);
          v90 = *(v4 + 104);
          if (v91 >= v88)
          {
            v91 = v88;
          }

          if (v88 > v90)
          {
            v90 = v88;
          }

          v88 = v91;
        }

        *(v4 + 96) = v88;
        *(v4 + 104) = v90;
        *(v4 + 112) = 0;
      }

      if ((*&v89 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v92 = v89;
        if ((*(v4 + 112) & 1) == 0)
        {
          v93 = *(v4 + 96);
          v92 = *(v4 + 104);
          if (v93 >= v89)
          {
            v93 = v89;
          }

          if (v89 > v92)
          {
            v92 = v89;
          }

          v89 = v93;
        }

        *(v4 + 96) = v89;
        *(v4 + 104) = v92;
        *(v4 + 112) = 0;
      }
    }

    goto LABEL_75;
  }

  v34 = sub_1AAD311C4(&v119);
  v35 = a1[7];
  v116 = a1[6];
  v117 = v35;
  v118 = *(a1 + 16);
  v36 = a1[3];
  v112 = a1[2];
  v113 = v36;
  v37 = a1[5];
  v114 = a1[4];
  v115 = v37;
  v38 = a1[1];
  v110 = *a1;
  v111 = v38;
  v39 = sub_1AAD311C4(&v110);
  v102 = *(v34 + 8);
  v103 = *v34;
  v100 = *(v34 + 16);
  v40 = *(v34 + 32);
  v41 = *(v34 + 40);
  v42 = *(v34 + 48);
  v43 = *(v34 + 64);
  v44 = *(v34 + 72);
  v45 = *(v34 + 80);
  v46 = *(v34 + 112);
  v47 = *(v34 + 120);
  v48 = *(v34 + 128);
  v106 = v47;
  sub_1AAE51E00(v39, v109, sub_1AAE51E68);
  sub_1AAD04750(v43, v44, v45);

  sub_1AAD04750(v40, v41, v42);

  sub_1AAD04750(v103, v102, v100);

  if (v46)
  {
    v49 = swift_allocObject();
    *(v49 + 16) = v106;
    *(v49 + 24) = v48;
    v50 = swift_allocObject();
    *(v50 + 16) = v106;
    *(v50 + 24) = v48;
    swift_beginAccess();
    v51 = *(v108 + 240);
    swift_retain_n();

    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v108 + 240) = v51;
    if ((v52 & 1) == 0)
    {
      v51 = sub_1AAD691C4(0, *(v51 + 2) + 1, 1, v51);
      *(v108 + 240) = v51;
    }

    v54 = *(v51 + 2);
    v53 = *(v51 + 3);
    if (v54 >= v53 >> 1)
    {
      v51 = sub_1AAD691C4((v53 > 1), v54 + 1, 1, v51);
    }

    *(v51 + 2) = v54 + 1;
    v55 = &v51[32 * v54];
    *(v55 + 4) = sub_1AAE529F4;
    *(v55 + 5) = v49;
    *(v55 + 6) = sub_1AAE529FC;
    *(v55 + 7) = v50;
    *(v108 + 240) = v51;
    swift_endAccess();

LABEL_75:

    return;
  }

  sub_1AAF870B0();
  v80 = v79;
  v82 = v81;

  sub_1AAF870B4();
  v84 = v83;
  v86 = v85;

  if (v84 >= v80)
  {
    v84 = v80;
  }

  swift_beginAccess();
  if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (*(v108 + 112))
    {
      v87 = v84;
    }

    else
    {
      v94 = *(v108 + 96);
      v87 = *(v108 + 104);
      if (v94 >= v84)
      {
        v94 = v84;
      }

      if (v84 > v87)
      {
        v87 = v84;
      }

      v84 = v94;
    }

    *(v108 + 96) = v84;
    *(v108 + 104) = v87;
    *(v108 + 112) = 0;
  }

  if (v82 > v86)
  {
    v95 = v82;
  }

  else
  {
    v95 = v86;
  }

  if ((*&v95 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (*(v108 + 112))
    {
      v96 = v95;
    }

    else
    {
      v97 = *(v108 + 96);
      v96 = *(v108 + 104);
      if (v97 >= v95)
      {
        v97 = v95;
      }

      if (v95 > v96)
      {
        v96 = v95;
      }

      v95 = v97;
    }

    *(v108 + 96) = v95;
    *(v108 + 104) = v96;
    *(v108 + 112) = 0;
  }
}

uint64_t sub_1AAE51E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AAE51E68(uint64_t a1)
{
  if (!qword_1EB425A78)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1AAE51F94(255);
    sub_1AACFDCAC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB425A78);
    }
  }
}

void sub_1AAE51F94(uint64_t a1)
{
  if (!qword_1EB425A80)
  {
    sub_1AAD26778(255, &qword_1EB423600, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB425A80);
    }
  }
}

uint64_t sub_1AAE52094(uint64_t a1)
{
  sub_1AACCF364(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1AAE5214C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t sub_1AAE52164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgShapeStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE52210(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE52264(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE52318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Vectorizer(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAE52388(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

_BYTE *sub_1AAE524CC(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1AAE52698(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAE526E8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 136) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      return result;
    }

    *(a1 + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1AAE52770(void *result, uint64_t a2)
{
  v2 = result[6] & 1;
  v3 = result[10] & 1;
  v4 = result[14] & 1 | (a2 << 63);
  result[2] &= 1uLL;
  result[6] = v2;
  result[10] = v3;
  result[14] = v4;
  return result;
}

void sub_1AAE527B8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_1AAD26778(255, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD116F4();
    v4 = sub_1AAF8EFE4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

int8x16_t sub_1AAE52954(uint64_t a1)
{
  v1 = *(a1 + 64) & 0xFFFFFFFFFFFFFF8;
  v2 = *(a1 + 136) & 0xFFFFFFFFFFFFFF8 | 0x6000000000000000;
  *(a1 + 48) = vandq_s8(*(a1 + 48), xmmword_1AAF92DB0);
  *(a1 + 64) = v1;
  result = vandq_s8(*(a1 + 120), xmmword_1AAF92DC0);
  *(a1 + 120) = result;
  *(a1 + 136) = v2;
  return result;
}

void *BarMark.init<A>(x:yStart:yEnd:width:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v22 = a8;
  v26 = a5;
  v25 = a4;
  v24 = a3;
  v23 = a2;
  v27 = a9;
  v14 = type metadata accessor for PlottableValue(0, a10, a11, a4);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21[-v17];
  (*(v15 + 16))(&v21[-v17], a1, v14, v16);
  sub_1AACD6F84(v18, a10, a11, &v47);
  (*(v15 + 8))(a1, v14);
  if (v50)
  {
    v30 = v49;
    v31 = v50;
    v28 = v47;
    v29 = v48;
    *&v32 = v51;
    *(&v32 + 1) = a6;
    LOBYTE(v33) = a7;
    sub_1AACD7CA8(&v28);
    v46[6] = v34;
    v46[7] = v35;
    v46[8] = v36;
    v46[2] = v30;
    v46[3] = v31;
    v46[4] = v32;
    v46[5] = v33;
    v46[0] = v28;
    v46[1] = v29;
    *&v37 = v23;
    BYTE8(v37) = v24 & 1;
    *&v38 = v25;
    BYTE8(v38) = v26 & 1;
    sub_1AAE52D28(&v37);
    v46[15] = v43;
    v46[16] = v44;
    v46[17] = v45;
    v46[11] = v39;
    v46[12] = v40;
    v46[13] = v41;
    v46[14] = v42;
    v46[9] = v37;
    v46[10] = v38;
  }

  else
  {
    v19 = v49;
    v30 = v49;
    v31 = v50;
    *&v32 = v51;
    v28 = v47;
    v29 = v48;
    BYTE8(v32) = v22;
    *(&v32 + 9) = 0;
    v33 = 0uLL;
    LOBYTE(v34) = 0;
    *(&v34 + 1) = 0;
    *&v35 = 0;
    BYTE8(v35) = -4;
    sub_1AACD7C5C(&v28);
    v46[6] = v34;
    v46[7] = v35;
    v46[8] = v36;
    v46[2] = v30;
    v46[3] = v31;
    v46[4] = v32;
    v46[5] = v33;
    v46[0] = v28;
    v46[1] = v29;
    *&v37 = v23;
    BYTE8(v37) = v24 & 1;
    *&v38 = v25;
    BYTE8(v38) = v26 & 1;
    sub_1AAE52D28(&v37);
    v46[15] = v43;
    v46[16] = v44;
    v46[17] = v45;
    v46[11] = v39;
    v46[12] = v40;
    v46[13] = v41;
    v46[14] = v42;
    v46[9] = v37;
    v46[10] = v38;
    sub_1AACCAE10(v19, *(&v19 + 1), 0);
  }

  return memcpy(v27, v46, 0x120uLL);
}

int8x16_t sub_1AAE52D28(uint64_t a1)
{
  v1 = *(a1 + 64) & 0xFFFFFFFFFFFFFF8;
  v2 = *(a1 + 136) & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  *(a1 + 48) = vandq_s8(*(a1 + 48), xmmword_1AAF92DB0);
  *(a1 + 64) = v1;
  result = vandq_s8(*(a1 + 120), xmmword_1AAF92DC0);
  *(a1 + 120) = result;
  *(a1 + 136) = v2;
  return result;
}

void *BarMark.init<A>(xStart:xEnd:y:height:stacking:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v23 = a8;
  v25 = a7;
  v26 = a4;
  v24 = a6;
  v27 = a9;
  v15 = type metadata accessor for PlottableValue(0, a10, a11, a4);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22[-v18];
  (*(v16 + 16))(&v22[-v18], a5, v15, v17);
  sub_1AACD6F84(v19, a10, a11, &v47);
  (*(v16 + 8))(a5, v15);
  if (v50)
  {
    *&v28 = a1;
    BYTE8(v28) = a2 & 1;
    *&v29 = a3;
    BYTE8(v29) = v26 & 1;
    sub_1AAE52D28(&v28);
    v46[6] = v34;
    v46[7] = v35;
    v46[8] = v36;
    v46[2] = v30;
    v46[3] = v31;
    v46[4] = v32;
    v46[5] = v33;
    v46[0] = v28;
    v46[1] = v29;
    v39 = v49;
    v40 = v50;
    v37 = v47;
    v38 = v48;
    *&v41 = v51;
    *(&v41 + 1) = v24;
    LOBYTE(v42) = v25;
    sub_1AACD7CA8(&v37);
    v46[15] = v43;
    v46[16] = v44;
    v46[17] = v45;
    v46[11] = v39;
    v46[12] = v40;
    v46[13] = v41;
    v46[14] = v42;
    v46[9] = v37;
    v46[10] = v38;
  }

  else
  {
    v20 = v49;
    *&v28 = a1;
    BYTE8(v28) = a2 & 1;
    *&v29 = a3;
    BYTE8(v29) = v26 & 1;
    sub_1AAE52D28(&v28);
    v46[6] = v34;
    v46[7] = v35;
    v46[8] = v36;
    v46[2] = v30;
    v46[3] = v31;
    v46[4] = v32;
    v46[5] = v33;
    v46[0] = v28;
    v46[1] = v29;
    v39 = v49;
    v40 = v50;
    *&v41 = v51;
    v37 = v47;
    v38 = v48;
    BYTE8(v41) = v23;
    *(&v41 + 9) = 1;
    v42 = 0uLL;
    LOBYTE(v43) = 0;
    *(&v43 + 1) = 0;
    *&v44 = 0;
    BYTE8(v44) = -4;
    sub_1AACD7C5C(&v37);
    v46[15] = v43;
    v46[16] = v44;
    v46[17] = v45;
    v46[11] = v39;
    v46[12] = v40;
    v46[13] = v41;
    v46[14] = v42;
    v46[9] = v37;
    v46[10] = v38;
    sub_1AACCAE10(v20, *(&v20 + 1), 0);
  }

  return memcpy(v27, v46, 0x120uLL);
}

__n128 BarMark.init<A, B>(xStart:xEnd:y:height:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = a5;
  sub_1AAE83D50(a1, a2, a6, a8, v32);
  v19 = v32[7];
  *(a9 + 96) = v32[6];
  *(a9 + 112) = v19;
  *(a9 + 128) = v32[8];
  v20 = v32[3];
  *(a9 + 32) = v32[2];
  *(a9 + 48) = v20;
  v21 = v32[5];
  *(a9 + 64) = v32[4];
  *(a9 + 80) = v21;
  v22 = v32[1];
  *a9 = v32[0];
  *(a9 + 16) = v22;
  sub_1AAE83EF8(a3, a4, v13, a7, a10, v33);
  v24 = type metadata accessor for PlottableValue(0, a7, a10, v23);
  (*(*(v24 - 8) + 8))(a3, v24);
  v26 = type metadata accessor for PlottableValue(0, a6, a8, v25);
  v27 = *(*(v26 - 8) + 8);
  v27(a2, v26);
  v27(a1, v26);
  v28 = v33[7];
  *(a9 + 240) = v33[6];
  *(a9 + 256) = v28;
  *(a9 + 272) = v33[8];
  v29 = v33[3];
  *(a9 + 176) = v33[2];
  *(a9 + 192) = v29;
  v30 = v33[5];
  *(a9 + 208) = v33[4];
  *(a9 + 224) = v30;
  result = v33[1];
  *(a9 + 144) = v33[0];
  *(a9 + 160) = result;
  return result;
}

__n128 BarMark.init<A>(xStart:xEnd:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1AAE83D50(a1, a2, a7, a8, v29);
  v19 = type metadata accessor for PlottableValue(0, a7, a8, v18);
  v20 = *(*(v19 - 8) + 8);
  v20(a2, v19);
  v20(a1, v19);
  v21 = v29[7];
  *(a9 + 96) = v29[6];
  *(a9 + 112) = v21;
  *(a9 + 128) = v29[8];
  v22 = v29[3];
  *(a9 + 32) = v29[2];
  *(a9 + 48) = v22;
  v23 = v29[5];
  *(a9 + 64) = v29[4];
  *(a9 + 80) = v23;
  v24 = v29[1];
  *a9 = v29[0];
  *(a9 + 16) = v24;
  *&v30 = a3;
  BYTE8(v30) = a4 & 1;
  v31.n128_u64[0] = a5;
  v31.n128_u8[8] = a6 & 1;
  sub_1AAE52D28(&v30);
  v25 = v37;
  *(a9 + 240) = v36;
  *(a9 + 256) = v25;
  *(a9 + 272) = v38;
  v26 = v33;
  *(a9 + 176) = v32;
  *(a9 + 192) = v26;
  v27 = v35;
  *(a9 + 208) = v34;
  *(a9 + 224) = v27;
  result = v31;
  *(a9 + 144) = v30;
  *(a9 + 160) = result;
  return result;
}

__n128 BarMark.init<A, B>(x:yStart:yEnd:width:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_1AAE83EF8(a1, a4, a5, a6, a8, v30);
  v17 = v30[7];
  *(a9 + 96) = v30[6];
  *(a9 + 112) = v17;
  *(a9 + 128) = v30[8];
  v18 = v30[3];
  *(a9 + 32) = v30[2];
  *(a9 + 48) = v18;
  v19 = v30[5];
  *(a9 + 64) = v30[4];
  *(a9 + 80) = v19;
  v20 = v30[1];
  *a9 = v30[0];
  *(a9 + 16) = v20;
  sub_1AAE83D50(a2, a3, a7, a10, v31);
  v22 = type metadata accessor for PlottableValue(0, a7, a10, v21);
  v23 = *(*(v22 - 8) + 8);
  v23(a3, v22);
  v23(a2, v22);
  v25 = type metadata accessor for PlottableValue(0, a6, a8, v24);
  (*(*(v25 - 8) + 8))(a1, v25);
  v26 = v31[7];
  *(a9 + 240) = v31[6];
  *(a9 + 256) = v26;
  *(a9 + 272) = v31[8];
  v27 = v31[3];
  *(a9 + 176) = v31[2];
  *(a9 + 192) = v27;
  v28 = v31[5];
  *(a9 + 208) = v31[4];
  *(a9 + 224) = v28;
  result = v31[1];
  *(a9 + 144) = v31[0];
  *(a9 + 160) = result;
  return result;
}

__n128 BarMark.init<A>(xStart:xEnd:yStart:yEnd:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v26 = a1;
  BYTE8(v26) = a2 & 1;
  *&v27 = a3;
  BYTE8(v27) = a4 & 1;
  sub_1AAE52D28(&v26);
  v14 = v33;
  *(a9 + 96) = v32;
  *(a9 + 112) = v14;
  *(a9 + 128) = v34;
  v15 = v29;
  *(a9 + 32) = v28;
  *(a9 + 48) = v15;
  v16 = v31;
  *(a9 + 64) = v30;
  *(a9 + 80) = v16;
  v17 = v27;
  *a9 = v26;
  *(a9 + 16) = v17;
  sub_1AAE83D50(a5, a6, a7, a8, v25);
  v19 = type metadata accessor for PlottableValue(0, a7, a8, v18);
  v20 = *(*(v19 - 8) + 8);
  v20(a6, v19);
  v20(a5, v19);
  v21 = v25[7];
  *(a9 + 240) = v25[6];
  *(a9 + 256) = v21;
  *(a9 + 272) = v25[8];
  v22 = v25[3];
  *(a9 + 176) = v25[2];
  *(a9 + 192) = v22;
  v23 = v25[5];
  *(a9 + 208) = v25[4];
  *(a9 + 224) = v23;
  result = v25[1];
  *(a9 + 144) = v25[0];
  *(a9 + 160) = result;
  return result;
}

uint64_t static BarMark._layoutChartContent(_:_:)(_OWORD *a1)
{
  v1 = a1[7];
  v13[6] = a1[6];
  v13[7] = v1;
  v2 = a1[9];
  v13[8] = a1[8];
  v3 = a1[3];
  v13[2] = a1[2];
  v13[3] = v3;
  v4 = a1[5];
  v13[4] = a1[4];
  v13[5] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[14];
  v7 = a1[16];
  v8 = a1[17];
  v14[6] = a1[15];
  v14[7] = v7;
  v14[8] = v8;
  v9 = a1[10];
  v10 = a1[12];
  v11 = a1[13];
  v14[2] = a1[11];
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v6;
  v14[0] = v2;
  v14[1] = v9;
  return sub_1AACD2B20(v13, v14);
}

unint64_t sub_1AAE53674(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = a1[7];
  v300[6] = a1[6];
  v300[7] = v6;
  v300[8] = a1[8];
  v7 = a1[3];
  v300[2] = a1[2];
  v300[3] = v7;
  v8 = a1[4];
  v300[5] = a1[5];
  v300[4] = v8;
  v9 = *a1;
  v300[1] = a1[1];
  v300[0] = v9;
  v10 = sub_1AACDB99C(v300);
  if (v10 == 5 || v10 == 3)
  {
    sub_1AACD2C84(v300);
    v11 = 0;
    v12 = 4;
    v13 = 1;
    v14 = a2;
    v15 = a1;
  }

  else
  {
    v13 = 0;
    v12 = 3;
    v11 = 1;
    v14 = a1;
    v15 = a2;
  }

  v16 = v14[7];
  *&__dst[96] = v14[6];
  *&__dst[112] = v16;
  v17 = v14[8];
  v18 = v14[3];
  *&__dst[32] = v14[2];
  *&__dst[48] = v18;
  v19 = v14[4];
  *&__dst[80] = v14[5];
  *&__dst[64] = v19;
  v20 = *v14;
  *&__dst[16] = v14[1];
  *__dst = v20;
  v21 = v15[6];
  v22 = v15[7];
  v23 = v15[4];
  *&__dst[224] = v15[5];
  *&__dst[240] = v21;
  v24 = v15[8];
  *&__dst[256] = v22;
  v283 = v24;
  v25 = v15[2];
  v26 = v15[3];
  v27 = *v15;
  *&__dst[160] = v15[1];
  *&__dst[176] = v25;
  *&__dst[192] = v26;
  *&__dst[208] = v23;
  *&__dst[128] = v17;
  *&__dst[144] = v27;
  v307 = *&__dst[96];
  v308 = *&__dst[112];
  v309 = v17;
  v303 = *&__dst[32];
  v304 = *&__dst[48];
  v306 = *&__dst[80];
  v305 = *&__dst[64];
  v302 = *&__dst[16];
  v301 = *__dst;
  v328[6] = *&__dst[240];
  v328[7] = *&__dst[256];
  v328[8] = v283;
  v328[2] = v25;
  v328[3] = v26;
  v328[5] = *&__dst[224];
  v328[4] = v23;
  v328[1] = *&__dst[160];
  v328[0] = v27;
  swift_beginAccess();
  memcpy(__dst, (a3 + 80), 0x102uLL);
  sub_1AAD5835C(a2, v271);
  sub_1AAD5835C(a1, v271);
  sub_1AACBB21C(__dst, v271);
  sub_1AACDBAD0(v13, &v284);
  sub_1AACBB254(__dst);
  if (v286)
  {
    *&v208[8] = v287;
    *&v208[24] = v288;
    *&v208[40] = v289;
    *&v247[7] = v284;
    *&v247[23] = v285;
    v207[0] = v12;
    *&v207[1] = *v247;
    *&v207[16] = *&v247[15];
    *v208 = v286;
    LOBYTE(v209) = 3;
    sub_1AAE0C0B0(v207);
    v271[6] = v210;
    v271[7] = v211;
    v271[8] = v212;
    *&v271[9] = v213;
    v271[2] = *v208;
    v271[3] = *&v208[16];
    v271[4] = *&v208[32];
    v271[5] = v209;
    v271[0] = *v207;
    v271[1] = *&v207[16];
    nullsub_1();
    v278 = v271[6];
    v279 = v271[7];
    v280 = v271[8];
    v281 = *&v271[9];
    v274 = v271[2];
    v275 = v271[3];
    v276 = v271[4];
    v277 = v271[5];
    v272 = v271[0];
    v273 = v271[1];
  }

  else
  {
    sub_1AAE2D7EC(&v272);
  }

  sub_1AAD6D0FC(0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1AAF9E2B0;
  sub_1AAD5835C(v328, v271);
  sub_1AAF72B20(v11, v328, v290);
  v29 = v290[7];
  *(v28 + 128) = v290[6];
  *(v28 + 144) = v29;
  *(v28 + 160) = v290[8];
  *(v28 + 176) = v291;
  v30 = v290[3];
  *(v28 + 64) = v290[2];
  *(v28 + 80) = v30;
  v31 = v290[5];
  *(v28 + 96) = v290[4];
  *(v28 + 112) = v31;
  v32 = v290[1];
  v33 = a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  *(v28 + 32) = v290[0];
  *(v28 + 48) = v32;
  swift_beginAccess();
  v34 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v35 = (v33 + v34[17]);
  v270 = *(v35 + 8);
  v36 = v35[3];
  v268 = v35[2];
  v269 = v36;
  v37 = *v35;
  v267 = v35[1];
  v266 = v37;
  if (*(&v267 + 1))
  {
    *&v247[7] = *v35;
    v38 = v35[3];
    *&v208[8] = v35[2];
    *&v247[23] = *(v35 + 2);
    *&v208[24] = v38;
    *&v208[40] = *(v35 + 8);
    v207[0] = 5;
    *&v207[1] = *v247;
    *&v207[16] = *&v247[15];
    *v208 = *(&v267 + 1);
    LOBYTE(v209) = 3;
    sub_1AAE0C0B0(v207);
    v271[6] = v210;
    v271[7] = v211;
    v271[8] = v212;
    *&v271[9] = v213;
    v271[2] = *v208;
    v271[3] = *&v208[16];
    v271[4] = *&v208[32];
    v271[5] = v209;
    v271[0] = *v207;
    v271[1] = *&v207[16];
    nullsub_1();
    v262 = v271[6];
    v263 = v271[7];
    v264 = v271[8];
    v265 = *&v271[9];
    v258 = v271[2];
    v259 = v271[3];
    v260 = v271[4];
    v261 = v271[5];
    v256 = v271[0];
    v257 = v271[1];
  }

  else
  {
    sub_1AAE2D7EC(&v256);
  }

  v39 = v262;
  v40 = v264;
  *(v28 + 296) = v263;
  *(v28 + 312) = v40;
  v41 = v259;
  *(v28 + 216) = v258;
  *(v28 + 232) = v41;
  v42 = v261;
  *(v28 + 248) = v260;
  *(v28 + 264) = v42;
  *(v28 + 280) = v39;
  v43 = v257;
  *(v28 + 184) = v256;
  *(v28 + 328) = v265;
  *(v28 + 200) = v43;
  v44 = MEMORY[0x1E69E6720];
  sub_1AAE5533C(&v266, v271, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  v206 = sub_1AAF70438(v28);
  v204 = v45;
  swift_setDeallocating();
  sub_1AAD04A08(0, qword_1ED9B2098, &type metadata for AccessibilityDataField, v44);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v329[6] = v307;
  v329[7] = v308;
  v329[8] = v309;
  v329[2] = v303;
  v329[3] = v304;
  v329[5] = v306;
  v329[4] = v305;
  v329[1] = v302;
  v329[0] = v301;
  v46 = sub_1AACDB99C(v329);
  v205 = v13;
  if (v46 != 2)
  {
    if (v46)
    {
      sub_1AAE49270(v207);
LABEL_73:
      sub_1AAD036DC(a1, 0, v295);
      v144 = v295[0];
      v145 = v295[1];
      sub_1AAD036DC(a2, 1, &v296);
      if (v145 >= v144)
      {
        v146 = v144;
      }

      else
      {
        v146 = v145;
      }

      if (v297 >= v296)
      {
        v147 = v296;
      }

      else
      {
        v147 = v297;
      }

      v148 = vabdd_f64(v145, v144);
      v149 = vabdd_f64(v297, v296);
      v271[8] = v212;
      v271[9] = v213;
      *&v271[10] = v214;
      v271[4] = *&v208[32];
      v271[5] = v209;
      v271[7] = v211;
      v271[6] = v210;
      v271[0] = *v207;
      v271[1] = *&v207[16];
      v151 = *v208;
      v150 = *&v208[16];
      goto LABEL_87;
    }

    v47 = sub_1AACD2C84(v329);
    v332 = *v47;
    v48 = *(v47 + 24);
    v333 = *(v47 + 16);
    v334 = v48;
    v330 = *(v47 + 32);
    v331 = *(v47 + 48);
    v310 = v332;
    v311 = v333;
    v312 = v48;
    v313 = v330;
    v314 = v331;
    *&v315[15] = *(v47 + 64);
    *v315 = *(v47 + 49);
    v335 = v332;
    v336 = v333;
    v338 = v331;
    v337 = v330;
    v201 = a2;
    v49 = (a3 + 80);
    if (v13)
    {
      memcpy(v271, v49, 0x102uLL);
      if (*&v271[7])
      {
        v50 = *(a3 + 216);
        *v208 = *(a3 + 200);
        *&v208[16] = v50;
        *&v208[32] = *(a3 + 232);
        LOBYTE(v209) = *(a3 + 248);
        v51 = *(a3 + 184);
        *v207 = *(a3 + 168);
        *&v207[16] = v51;
        sub_1AAE14D50(&v337, v247);

        sub_1AADFA6FC(&v335, v247);
        sub_1AAE5533C(&v334, v247, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        v217 = *v208;
        v218 = *&v208[16];
        v219 = *&v208[32];
        LOBYTE(v220) = v209;
        v215 = *v207;
        v216 = *&v207[16];
LABEL_16:
        v52 = *(&v219 + 1);
        v53 = v217;
        v54 = v218;
        v55 = v220;
        sub_1AAE5533C(&v271[5] + 8, v207, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AAE0BFDC(&v215, v207);
        sub_1AAE0A738(v53, *(&v53 + 1), v54, v52, v55, 4, &v292);
        v195 = v293;
        v198 = v292;
        v56 = v294;
        sub_1AAE0C014(&v215);
        sub_1AAD04750(v215, *(&v215 + 1), v216);

        sub_1AAD0E818(v53, *(&v53 + 1), v54);
        v58 = v195;
        v57 = v198;
        goto LABEL_53;
      }

      if (BYTE1(v271[16]) == 2)
      {
        sub_1AAE14D50(&v337, v207);

        sub_1AADFA6FC(&v335, v207);
        sub_1AAE5533C(&v334, v207, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      }

      else
      {
        sub_1AAE14D50(&v337, v207);

        sub_1AADFA6FC(&v335, v207);
        sub_1AAE5533C(&v334, v207, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AACBB21C(v271, v207);
        v111 = sub_1AAF8E7A4();
        if (v111 == sub_1AAF8E7A4())
        {
          sub_1AAE5533C(&v271[11], v207, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
          sub_1AACBB254(v271);
          if (*(&v271[12] + 1))
          {
            v215 = v271[11];
            v216 = v271[12];
            v217 = v271[13];
            v218 = v271[14];
            v219 = v271[15];
            LOBYTE(v220) = v271[16];
            goto LABEL_16;
          }
        }

        else
        {
          sub_1AACBB254(v271);
        }
      }

      v57 = 0uLL;
      v56 = 2;
      v58 = 0uLL;
LABEL_53:
      v115 = (v33 + v34[22]);
      v116 = *(v115 + 2);
      v322 = *v115;
      v323 = v116;
      v324 = v57;
      v325 = v58;
      v326 = v56;
      v327 = *(a3 + 368);
      v117 = (a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
      v118 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
      v250 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
      *v251 = v118;
      *&v251[9] = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
      v119 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
      *v247 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
      *&v247[16] = v119;
      v120 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
      v249 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
      v248 = v120;
      if (v251[24] != 255)
      {
        v121 = v117[5];
        v241 = v117[4];
        *v242 = v121;
        *&v242[9] = *(v117 + 89);
        v122 = v117[1];
        v237 = *v117;
        v238 = v122;
        v123 = v117[3];
        v239 = v117[2];
        v240 = v123;
        v316 = v237;
        v317 = v122;
        v318 = v239;
        v319 = v123;
        v320 = v241;
        v321[0] = v121;
        *(v321 + 9) = *&v242[9];
        sub_1AAE5533C(&v237, v207, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
        v124 = a3;
        v125 = 1;
LABEL_59:
        sub_1AAE08D1C(&v316, v124, v125, &v310, v207);
        sub_1AAD0F610(v247, sub_1AACCF364);
        nullsub_1();

        sub_1AAD6E0DC(&v335);
        sub_1AAE491F0(&v334);
        sub_1AAD6E18C(&v337);
LABEL_61:
        a2 = v201;
        goto LABEL_71;
      }

      goto LABEL_60;
    }

    memcpy(v271, v49, 0x102uLL);
    if (*(&v271[1] + 1))
    {
      v78 = *(a3 + 128);
      *v208 = *(a3 + 112);
      *&v208[16] = v78;
      *&v208[32] = *(a3 + 144);
      LOBYTE(v209) = *(a3 + 160);
      v79 = *(a3 + 96);
      *v207 = *(a3 + 80);
      *&v207[16] = v79;
      sub_1AAE14D50(&v337, v247);

      sub_1AADFA6FC(&v335, v247);
      sub_1AAE5533C(&v334, v247, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      v217 = *v208;
      v218 = *&v208[16];
      v219 = *&v208[32];
      LOBYTE(v220) = v209;
      v215 = *v207;
      v216 = *&v207[16];
LABEL_24:
      v80 = *(&v219 + 1);
      v81 = v217;
      v82 = v218;
      v83 = v220;
      sub_1AAE5533C(v271, v207, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v215, v207);
      sub_1AAE0A738(v81, *(&v81 + 1), v82, v80, v83, 3, &v292);
      v197 = v293;
      v199 = v292;
      v84 = v294;
      sub_1AAE0C014(&v215);
      sub_1AAD04750(v215, *(&v215 + 1), v216);

      sub_1AAD0E818(v81, *(&v81 + 1), v82);
      v86 = v197;
      v85 = v199;
      goto LABEL_57;
    }

    if (BYTE1(v271[16]) == 2)
    {
      sub_1AAE14D50(&v337, v207);

      sub_1AADFA6FC(&v335, v207);
      sub_1AAE5533C(&v334, v207, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    }

    else
    {
      sub_1AAE14D50(&v337, v207);

      sub_1AADFA6FC(&v335, v207);
      sub_1AAE5533C(&v334, v207, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AACBB21C(v271, v207);
      v112 = sub_1AAF8E7A4();
      if (v112 == sub_1AAF8E7A4())
      {
        sub_1AAE5533C(&v271[11], v207, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(v271);
        if (*(&v271[12] + 1))
        {
          v215 = v271[11];
          v216 = v271[12];
          v217 = v271[13];
          v218 = v271[14];
          v219 = v271[15];
          LOBYTE(v220) = v271[16];
          goto LABEL_24;
        }
      }

      else
      {
        sub_1AACBB254(v271);
      }
    }

    v85 = 0uLL;
    v84 = 2;
    v86 = 0uLL;
LABEL_57:
    v126 = (v33 + v34[21]);
    v127 = *(v126 + 2);
    v322 = *v126;
    v323 = v127;
    v324 = v85;
    v325 = v86;
    v326 = v84;
    v327 = *(a3 + 352);
    v128 = (a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
    v129 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
    v250 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
    *v251 = v129;
    *&v251[9] = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
    v130 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
    *v247 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
    *&v247[16] = v130;
    v131 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
    v249 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
    v248 = v131;
    if (v251[24] != 255)
    {
      v132 = v128[5];
      v241 = v128[4];
      *v242 = v132;
      *&v242[9] = *(v128 + 89);
      v133 = v128[1];
      v237 = *v128;
      v238 = v133;
      v134 = v128[3];
      v239 = v128[2];
      v240 = v134;
      v316 = v237;
      v317 = v133;
      v318 = v239;
      v319 = v134;
      v320 = v241;
      v321[0] = v132;
      *(v321 + 9) = *&v242[9];
      sub_1AAE5533C(&v237, v207, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      v124 = a3;
      v125 = 0;
      goto LABEL_59;
    }

LABEL_60:

    sub_1AAD6E0DC(&v335);
    sub_1AAE491F0(&v334);
    sub_1AAD6E18C(&v337);
    sub_1AAE49270(v207);
    goto LABEL_61;
  }

  v59 = sub_1AACD2C84(v329);
  v61 = *v59;
  v60 = *(v59 + 8);
  v62 = *(v59 + 16);
  *(&v311 + 1) = *(v59 + 17);
  HIDWORD(v311) = *(v59 + 20);
  v63 = *(v59 + 24);
  v64 = *(v59 + 32);
  v65 = *(v59 + 40);
  v66 = *(v59 + 48);
  v194 = v61;
  v196 = v60;
  *&v310 = v61;
  *(&v310 + 1) = v60;
  v193 = v62;
  LOBYTE(v311) = v62;
  v312 = v63;
  *&v313 = v64;
  *(&v313 + 1) = v65;
  v314 = v66;
  *v315 = *(v59 + 49);
  *&v315[15] = *(v59 + 64);
  v191 = v65;
  v192 = v64;
  if (v13)
  {
    v202 = a2;
    memcpy(v271, (a3 + 80), 0x102uLL);
    if (*&v271[7])
    {
      v67 = *(a3 + 216);
      *v208 = *(a3 + 200);
      *&v208[16] = v67;
      *&v208[32] = *(a3 + 232);
      LOBYTE(v209) = *(a3 + 248);
      v68 = *(a3 + 184);
      *v207 = *(a3 + 168);
      *&v207[16] = v68;

      v69 = v66;
      sub_1AACD7C50(v64, v65, v66);
      sub_1AACD7304(v194, v196, v193 & 1);
      v217 = *v208;
      v218 = *&v208[16];
      v219 = *&v208[32];
      LOBYTE(v220) = v209;
      v215 = *v207;
      v216 = *&v207[16];

LABEL_20:
      v70 = *(&v219 + 1);
      v72 = *(&v217 + 1);
      v71 = v217;
      v73 = v218;
      v74 = v220;
      sub_1AAE5533C(&v271[5] + 8, v207, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v215, v207);
      sub_1AAE0A738(v71, v72, v73, v70, v74, 4, &v292);
      v186 = v293;
      v189 = v292;
      v75 = v294;
      sub_1AAE0C014(&v215);
      sub_1AAD04750(v215, *(&v215 + 1), v216);

      sub_1AAD0E818(v71, v72, v73);
      v77 = v186;
      v76 = v189;
      v66 = v69;
LABEL_34:
      v64 = v192;
      goto LABEL_35;
    }

    v97 = v64;
    v98 = BYTE1(v271[16]);

    sub_1AACD7C50(v97, v65, v66);
    sub_1AACD7304(v194, v196, v193 & 1);

    v76 = 0uLL;
    if (v98 == 2)
    {
      v75 = 2;
      v77 = 0uLL;
      goto LABEL_34;
    }

    v69 = v66;
    sub_1AACBB21C(v271, v207);
    v113 = sub_1AAF8E7A4();
    if (v113 == sub_1AAF8E7A4())
    {
      sub_1AAE5533C(&v271[11], v207, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(v271);
      v64 = v192;
      if (*(&v271[12] + 1))
      {
        v215 = v271[11];
        v216 = v271[12];
        v217 = v271[13];
        v218 = v271[14];
        v219 = v271[15];
        LOBYTE(v220) = v271[16];
        goto LABEL_20;
      }

      v75 = 2;
      v77 = 0uLL;
      v76 = 0uLL;
    }

    else
    {
      sub_1AACBB254(v271);
      v75 = 2;
      v77 = 0uLL;
      v64 = v192;
      v76 = 0uLL;
    }

LABEL_35:
    v99 = (v33 + v34[22]);
    v100 = *(v99 + 2);
    v322 = *v99;
    v323 = v100;
    v324 = v76;
    v325 = v77;
    v326 = v75;
    v327 = *(a3 + 368);
    v101 = (a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    v102 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
    v250 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
    *v251 = v102;
    *&v251[9] = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
    v103 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
    *v247 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    *&v247[16] = v103;
    v104 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
    v249 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
    v248 = v104;
    a2 = v202;
    if (v251[24] != 255)
    {
      v105 = v101[5];
      v241 = v101[4];
      *v242 = v105;
      *&v242[9] = *(v101 + 89);
      v106 = v101[1];
      v237 = *v101;
      v238 = v106;
      v107 = v101[3];
      v239 = v101[2];
      v240 = v107;
      v316 = v237;
      v317 = v106;
      v318 = v239;
      v319 = v107;
      v320 = v241;
      v321[0] = v105;
      *(v321 + 9) = *&v242[9];
      sub_1AAE5533C(&v237, v207, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      v108 = a3;
      v109 = 1;
LABEL_69:
      sub_1AAE08D1C(&v316, v108, v109, &v310, v207);
      sub_1AAD0F610(v247, sub_1AACCF364);
      nullsub_1();

      sub_1AAD04750(v194, v196, v193 & 1);

      sub_1AAD0E818(v64, v191, v66);
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  memcpy(v271, (a3 + 80), 0x102uLL);
  if (*(&v271[1] + 1))
  {
    v87 = *(a3 + 128);
    *v208 = *(a3 + 112);
    *&v208[16] = v87;
    *&v208[32] = *(a3 + 144);
    LOBYTE(v209) = *(a3 + 160);
    v88 = *(a3 + 96);
    *v207 = *(a3 + 80);
    *&v207[16] = v88;

    v190 = v66;
    sub_1AACD7C50(v64, v65, v66);
    sub_1AACD7304(v194, v196, v193 & 1);
    v217 = *v208;
    v218 = *&v208[16];
    v219 = *&v208[32];
    LOBYTE(v220) = v209;
    v215 = *v207;
    v216 = *&v207[16];

LABEL_27:
    v89 = *(&v219 + 1);
    v91 = *(&v217 + 1);
    v90 = v217;
    v92 = v218;
    v93 = v220;
    sub_1AAE5533C(v271, v207, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
    sub_1AAE0BFDC(&v215, v207);
    sub_1AAE0A738(v90, v91, v92, v89, v93, 3, &v292);
    v185 = v293;
    v187 = v292;
    v94 = v294;
    sub_1AAE0C014(&v215);
    sub_1AAD04750(v215, *(&v215 + 1), v216);

    sub_1AAD0E818(v90, v91, v92);
    v96 = v185;
    v95 = v187;
    v66 = v190;
    v64 = v192;
    goto LABEL_67;
  }

  v188 = v34;
  v110 = BYTE1(v271[16]);

  sub_1AACD7C50(v64, v65, v66);
  sub_1AACD7304(v194, v196, v193 & 1);

  v95 = 0uLL;
  if (v110 == 2)
  {
    v94 = 2;
    v96 = 0uLL;
    v34 = v188;
  }

  else
  {
    v190 = v66;
    sub_1AACBB21C(v271, v207);
    v114 = sub_1AAF8E7A4();
    if (v114 == sub_1AAF8E7A4())
    {
      sub_1AAE5533C(&v271[11], v207, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AACBB254(v271);
      v64 = v192;
      v34 = v188;
      if (*(&v271[12] + 1))
      {
        v215 = v271[11];
        v216 = v271[12];
        v217 = v271[13];
        v218 = v271[14];
        v219 = v271[15];
        LOBYTE(v220) = v271[16];
        goto LABEL_27;
      }

      v94 = 2;
      v96 = 0uLL;
    }

    else
    {
      sub_1AACBB254(v271);
      v94 = 2;
      v96 = 0uLL;
      v64 = v192;
      v34 = v188;
    }

    v95 = 0uLL;
  }

LABEL_67:
  v135 = (v33 + v34[21]);
  v136 = *(v135 + 2);
  v322 = *v135;
  v323 = v136;
  v324 = v95;
  v325 = v96;
  v326 = v94;
  v327 = *(a3 + 352);
  v137 = (a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  v138 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
  v250 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
  *v251 = v138;
  *&v251[9] = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
  v139 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
  *v247 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  *&v247[16] = v139;
  v140 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
  v249 = *(a3 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
  v248 = v140;
  if (v251[24] != 255)
  {
    v141 = v137[5];
    v241 = v137[4];
    *v242 = v141;
    *&v242[9] = *(v137 + 89);
    v142 = v137[1];
    v237 = *v137;
    v238 = v142;
    v143 = v137[3];
    v239 = v137[2];
    v240 = v143;
    v316 = v237;
    v317 = v142;
    v318 = v239;
    v319 = v143;
    v320 = v241;
    v321[0] = v141;
    *(v321 + 9) = *&v242[9];
    sub_1AAE5533C(&v237, v207, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    v108 = a3;
    v109 = 0;
    goto LABEL_69;
  }

LABEL_70:

  sub_1AAD04750(v194, v196, v193 & 1);

  sub_1AAD0E818(v64, v191, v66);
  sub_1AAE49270(v207);
LABEL_71:
  v253 = v212;
  v254 = v213;
  v255 = v214;
  v250 = *&v208[32];
  *v251 = v209;
  v252 = v211;
  *&v251[16] = v210;
  *v247 = *v207;
  *&v247[16] = *&v207[16];
  v249 = *&v208[16];
  v248 = *v208;
  v244 = v212;
  v245 = v213;
  v246 = v214;
  v241 = *&v208[32];
  *v242 = v209;
  *&v242[16] = v210;
  v243 = v211;
  v237 = *v207;
  v238 = *&v207[16];
  v239 = *v208;
  v240 = *&v208[16];
  if (sub_1AAE492A8(&v237) == 1)
  {
    v212 = v253;
    v213 = v254;
    v214 = v255;
    *&v208[32] = v250;
    v209 = *v251;
    v210 = *&v251[16];
    v211 = v252;
    *v207 = *v247;
    *&v207[16] = *&v247[16];
    *v208 = v248;
    *&v208[16] = v249;
    goto LABEL_73;
  }

  sub_1AAD036DC(a1, 0, &v296);
  v152 = v298;
  v153 = v299;
  sub_1AAD036DC(a2, 1, v207);
  if (v153 >= v152)
  {
    v146 = v152;
  }

  else
  {
    v146 = v153;
  }

  if (*&v208[8] >= *v208)
  {
    v147 = *v208;
  }

  else
  {
    v147 = *&v208[8];
  }

  v148 = vabdd_f64(v153, v152);
  v149 = vabdd_f64(*&v208[8], *v208);
  v271[8] = v253;
  v271[9] = v254;
  *&v271[10] = v255;
  v271[4] = v250;
  v271[5] = *v251;
  v271[7] = v252;
  v271[6] = *&v251[16];
  v271[0] = *v247;
  v271[1] = *&v247[16];
  v150 = v249;
  v151 = v248;
LABEL_87:
  v271[3] = v150;
  v271[2] = v151;
  v200 = *(*(a3 + 16) + 24);
  v154 = (v33 + v34[25]);
  v155 = v154[1];
  v203 = *v154;
  v156 = v34[24];
  v157 = (v33 + v34[23]);
  v159 = *v157;
  v158 = v157[1];
  v161 = v157[2];
  v160 = v157[3];
  v162 = (v33 + v156);
  v164 = *(v33 + v156);
  v163 = v162[1];
  v165 = v162[2];
  v166 = v162[3];

  sub_1AADA61DC(v159, v158, v161, v160);
  sub_1AADA61DC(v164, v163, v165, v166);
  sub_1AAF72B20(v205, &v301, v235);
  sub_1AADC7F60(v328);

  v244 = v271[8];
  v245 = v271[9];
  v246 = *&v271[10];
  v241 = v271[4];
  *v242 = v271[5];
  *&v242[16] = v271[6];
  v243 = v271[7];
  v237 = v271[0];
  v238 = v271[1];
  v239 = v271[2];
  v240 = v271[3];
  if (sub_1AAE492A8(&v237) == 1)
  {
    sub_1AAE2D7EC(&v225);
  }

  else
  {
    v221 = v243;
    v222 = v244;
    v223 = v245;
    v224 = v246;
    v217 = v240;
    v218 = v241;
    v219 = *v242;
    v220 = *&v242[16];
    v215 = v238;
    v216 = v239;
    nullsub_1();
    v231 = v221;
    v232 = v222;
    v233 = v223;
    v234 = v224;
    v227 = v217;
    v228 = v218;
    v229 = v219;
    v230 = v220;
    v225 = v215;
    v226 = v216;
  }

  v167 = swift_allocObject();
  *(v167 + 16) = v200;
  *(v167 + 24) = v146;
  *(v167 + 32) = v147;
  *(v167 + 40) = v148;
  *(v167 + 48) = v149;
  *&v168 = v203;
  *(&v168 + 1) = v155;
  *&v169 = v159;
  *(&v169 + 1) = v158;
  *(v167 + 72) = v169;
  *&v169 = v161;
  *(&v169 + 1) = v160;
  *&v170 = v164;
  *(&v170 + 1) = v163;
  *(v167 + 56) = v168;
  *(v167 + 104) = v170;
  *(v167 + 88) = v169;
  *(v167 + 120) = v165;
  *(v167 + 128) = v166;
  *(v167 + 136) = v206;
  v171 = v235[7];
  *(v167 + 240) = v235[6];
  *(v167 + 256) = v171;
  *(v167 + 272) = v235[8];
  v172 = v236;
  v173 = v235[3];
  *(v167 + 176) = v235[2];
  *(v167 + 192) = v173;
  v174 = v235[5];
  *(v167 + 208) = v235[4];
  *(v167 + 224) = v174;
  v175 = v235[1];
  *(v167 + 144) = v235[0];
  *(v167 + 160) = v175;
  *(v167 + 288) = v172;
  *(v167 + 296) = v204;
  v176 = v232;
  *(v167 + 400) = v231;
  *(v167 + 416) = v176;
  *(v167 + 432) = v233;
  *(v167 + 448) = v234;
  v177 = v228;
  *(v167 + 336) = v227;
  *(v167 + 352) = v177;
  v178 = v230;
  *(v167 + 368) = v229;
  *(v167 + 384) = v178;
  v179 = v226;
  *(v167 + 304) = v225;
  *(v167 + 320) = v179;
  v180 = v279;
  *(v167 + 552) = v278;
  *(v167 + 568) = v180;
  *(v167 + 584) = v280;
  *(v167 + 600) = v281;
  v181 = v275;
  *(v167 + 488) = v274;
  *(v167 + 504) = v181;
  v182 = v277;
  *(v167 + 520) = v276;
  *(v167 + 536) = v182;
  v183 = v273;
  *(v167 + 456) = v272;
  *(v167 + 472) = v183;
  *(v167 + 608) = 256;
  result = v167 | 0xC000000000000000;
  *(v167 + 616) = 0;
  return result;
}

uint64_t sub_1AAE551B4(uint64_t a1)
{
  sub_1AACAE13C(0, &qword_1ED9B5558, MEMORY[0x1E697F488]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAE5522C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 3) & 0xFFFFFFE0 | (*(a1 + 48) >> 2) & 0x1F;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAE55280(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 280) = 0;
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 288) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (8 * -a2) & 0x7FFFFFF00 | (4 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAE5533C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AAD04A08(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t BarPlot<A>.body.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800();
  sub_1AACE0800();
  return (*(v2 + 8))(v4, v1);
}

uint64_t BarPlot.init<A, B, C>(_:x:y:width:height:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v75 = a8;
  v82 = a6;
  v86 = a3;
  v87 = a2;
  v85 = a1;
  v83 = a9;
  v76 = a12;
  v79 = a13;
  v78 = a10;
  v68 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a10, a13);
  v71 = *(v73 - 8);
  v74 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v64 - v18;
  v19 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a12);
  v84 = *(v19 - 8);
  v20 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v64 - v21;
  v66 = &v64 - v21;
  v23 = a7;
  v72 = *(a7 - 8);
  v24 = v72;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v27;
  v29 = type metadata accessor for VectorizedBarPlotContent(0, v23, a11, v28);
  v80 = *(v29 - 8);
  v81 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v77 = &v64 - v30;
  v31 = a4[5];
  v92 = a4[4];
  v93 = v31;
  v94 = a4[6];
  v95 = *(a4 + 112);
  v32 = a4[1];
  v88 = *a4;
  v89 = v32;
  v33 = a4[3];
  v90 = a4[2];
  v91 = v33;
  v34 = *a5;
  v35 = a5[1];
  v36 = a5[3];
  v98 = a5[2];
  v99 = v36;
  v96 = v34;
  v97 = v35;
  v37 = a5[4];
  v38 = a5[5];
  v39 = a5[6];
  v103 = *(a5 + 112);
  v101 = v38;
  v102 = v39;
  v100 = v37;
  v40 = *(v24 + 16);
  v67 = v23;
  v40(v27, v85, v23);
  v41 = v84;
  v42 = v19;
  (*(v84 + 16))(v22, v87, v19);
  v43 = v70;
  v44 = v71;
  v45 = v73;
  (*(v71 + 16))(v70, v86, v73);
  v46 = (*(v41 + 80) + 64) & ~*(v41 + 80);
  v47 = (v20 + *(v44 + 80) + v46) & ~*(v44 + 80);
  v65 = (v47 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v47 + v74 + 127) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = v75;
  *(v48 + 2) = v23;
  *(v48 + 3) = v49;
  v50 = v68;
  *(v48 + 4) = v78;
  *(v48 + 5) = v50;
  v51 = v79;
  *(v48 + 6) = v76;
  *(v48 + 7) = v51;
  (*(v41 + 32))(&v48[v46], v66, v42);
  v52 = v45;
  (*(v44 + 32))(&v48[v47], v43, v45);
  v53 = &v48[v65];
  v54 = v91;
  *(v53 + 2) = v90;
  *(v53 + 3) = v54;
  v55 = v89;
  *v53 = v88;
  *(v53 + 1) = v55;
  v53[112] = v95;
  v56 = v94;
  *(v53 + 5) = v93;
  *(v53 + 6) = v56;
  *(v53 + 4) = v92;
  v57 = &v48[v74];
  v58 = v101;
  *(v57 + 4) = v100;
  *(v57 + 5) = v58;
  *(v57 + 6) = v102;
  v57[112] = v103;
  v59 = v97;
  *v57 = v96;
  *(v57 + 1) = v59;
  v60 = v99;
  *(v57 + 2) = v98;
  *(v57 + 3) = v60;
  v57[113] = v82;
  v61 = v77;
  v62 = v67;
  sub_1AAE56040(v69, sub_1AAE55EBC, v48, v67, &type metadata for BarMark, v50, &protocol witness table for BarMark, v77);
  (*(v44 + 8))(v86, v52);
  (*(v84 + 8))(v87, v42);
  (*(v72 + 8))(v85, v62);
  return (*(v80 + 32))(v83, v61, v81);
}

void *sub_1AAE55A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v68 = a6;
  v66 = a3;
  v67 = a5;
  v59 = a4;
  v65 = a2;
  v71 = a1;
  v69 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = a13;
  v74 = a10;
  v15 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a10, a13);
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v58 - v16;
  v18 = type metadata accessor for PlottableValue(0, a10, a13, v17);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v72 = &v58 - v19;
  v20 = a8;
  v70 = a12;
  v58 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a12);
  v21 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v23 = &v58 - v22;
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - v26;
  v64 = v20;
  v29 = type metadata accessor for PlottableValue(0, v20, a12, v28);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v58 - v31;
  v63 = &v58 - v31;
  v33 = *(v24 + 16);
  v34 = v71;
  v33(v27, v71, AssociatedTypeWitness, v30);
  (*(v21 + 16))(v23, v65, v58);
  sub_1AAF30D00(v27, v23, v20, AssociatedTypeWitness, v70, v32);
  (v33)(v27, v34, AssociatedTypeWitness);
  v35 = v60;
  (*(v61 + 16))(v60, v66, v62);
  sub_1AAF30D00(v27, v35, v74, AssociatedTypeWitness, v73, v72);
  (v33)(v27, v34, AssociatedTypeWitness);
  v36 = v59;
  v37 = *(v59 + 64);
  v38 = *(v59 + 96);
  v76[5] = *(v59 + 80);
  v76[6] = v38;
  v39 = *(v59 + 16);
  v76[0] = *v59;
  v40 = *(v59 + 32);
  v41 = *(v59 + 48);
  v76[1] = v39;
  v76[2] = v40;
  LOBYTE(v76[7]) = *(v59 + 112);
  v76[3] = v41;
  v76[4] = v37;
  v44 = type metadata accessor for MarkDimensions(0, AssociatedTypeWitness, v42, v43);
  v45 = *(*(v44 - 8) + 16);
  (v45)(v75, v36, v44);
  v47 = sub_1AAF312D4(v27, v76, AssociatedTypeWitness, v46);
  LODWORD(v66) = v48;
  (v33)(v27, v71, AssociatedTypeWitness);
  v49 = *(v67 + 64);
  v50 = *(v67 + 96);
  v76[5] = *(v67 + 80);
  v76[6] = v50;
  v51 = *(v67 + 16);
  v76[0] = *v67;
  v52 = *(v67 + 32);
  v53 = *(v67 + 48);
  v76[1] = v51;
  v76[2] = v52;
  LOBYTE(v76[7]) = *(v67 + 112);
  v76[3] = v53;
  v76[4] = v49;
  v45(v75);
  v55 = sub_1AAF312D4(v27, v76, AssociatedTypeWitness, v54);
  BarMark.init<A, B>(x:y:width:height:stacking:)(v63, v72, v47, v66, v55, v56, v68, v64, v76, v74, v70, v73);
  return memcpy(v69, v76, 0x120uLL);
}

void *sub_1AAE55EBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v6) - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v4, v7) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  return sub_1AAE55A04(a1, v2 + v10, v2 + v13, v2 + ((v13 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8), v2 + ((v13 + *(v12 + 64) + 127) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((v13 + *(v12 + 64) + 127) & 0xFFFFFFFFFFFFFFF8) + 113), v3, a2, v4, v5, v6, v7);
}

uint64_t sub_1AAE56040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v20, v17);
  v21 = sub_1AAF311A4(v19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8))(a1, a4, v21);
}

uint64_t BarPlot.init<A, B, C>(_:xStart:xEnd:y:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v75 = a8;
  v73 = a7;
  v83 = a4;
  v84 = a3;
  v81 = a1;
  v82 = a2;
  v79 = a9;
  v77 = a12;
  v74 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a12);
  v80 = *(v72 - 8);
  v70 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v68 = &v61 - v17;
  v18 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a11);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v63 = &v61 - v22;
  v71 = *(a6 - 8);
  v24 = v71;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v27;
  v78 = type metadata accessor for VectorizedBarPlotContent(0, a6, a10, v28);
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v69 = &v61 - v29;
  v30 = a5[5];
  v89 = a5[4];
  v90 = v30;
  v91 = a5[6];
  v92 = *(a5 + 112);
  v31 = a5[1];
  v85 = *a5;
  v86 = v31;
  v32 = a5[3];
  v87 = a5[2];
  v88 = v32;
  v33 = *(v24 + 16);
  v65 = a6;
  v33(v27, v81, a6);
  v34 = *(v19 + 16);
  v62 = v18;
  v34(v23, v82, v18);
  v34(&v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v84, v18);
  v35 = v80;
  v36 = v68;
  v37 = v72;
  (*(v80 + 16))(v68, v83, v72);
  v38 = *(v19 + 80);
  v66 = v19;
  v39 = (v38 + 64) & ~v38;
  v40 = (v20 + v38 + v39) & ~v38;
  v41 = (v20 + *(v35 + 80) + v40) & ~*(v35 + 80);
  v42 = (v70 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v73;
  *(v43 + 2) = a6;
  *(v43 + 3) = v44;
  *(v43 + 4) = v75;
  *(v43 + 5) = a10;
  v45 = v77;
  *(v43 + 6) = v74;
  *(v43 + 7) = v45;
  v46 = *(v19 + 32);
  v47 = &v43[v39];
  v48 = v62;
  v46(v47, v63, v62);
  v49 = &v43[v40];
  v50 = v48;
  v46(v49, v64, v48);
  v51 = v80;
  (*(v80 + 32))(&v43[v41], v36, v37);
  v52 = &v43[v42];
  v53 = v90;
  *(v52 + 4) = v89;
  *(v52 + 5) = v53;
  *(v52 + 6) = v91;
  v52[112] = v92;
  v54 = v86;
  *v52 = v85;
  *(v52 + 1) = v54;
  v55 = v88;
  *(v52 + 2) = v87;
  *(v52 + 3) = v55;
  v56 = v69;
  v57 = v43;
  v58 = v65;
  sub_1AAE56040(v67, sub_1AAE56C10, v57, v65, &type metadata for BarMark, a10, &protocol witness table for BarMark, v69);
  (*(v51 + 8))(v83, v37);
  v59 = *(v66 + 8);
  v59(v84, v50);
  v59(v82, v50);
  (*(v71 + 8))(v81, v58);
  return (*(v76 + 32))(v79, v56, v78);
}

void *sub_1AAE56744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v74 = a5;
  v75 = a2;
  v77 = a3;
  v78 = a4;
  v72 = a1;
  v79 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = a8;
  v71 = a12;
  v76 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a12);
  v73 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v69 = &v62 - v15;
  v17 = type metadata accessor for PlottableValue(0, a8, a12, v16);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v68 = &v62 - v18;
  v19 = a7;
  v80 = a11;
  v81 = a7;
  v66 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a11);
  v20 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v22 = &v62 - v21;
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62 - v25;
  v28 = type metadata accessor for PlottableValue(0, v19, a11, v27);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v82 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v62 - v32;
  v67 = &v62 - v32;
  v34 = *(v23 + 16);
  v65 = v23 + 16;
  v35 = v72;
  v34(v26, v72, AssociatedTypeWitness, v31);
  v36 = *(v20 + 16);
  v64 = v20 + 16;
  v37 = v66;
  v36(v22, v75, v66);
  v38 = v33;
  v39 = v26;
  v63 = v26;
  v40 = v26;
  v42 = v80;
  v41 = v81;
  sub_1AAF30D00(v40, v22, v81, AssociatedTypeWitness, v80, v38);
  (v34)(v39, v35, AssociatedTypeWitness);
  v36(v22, v77, v37);
  v43 = v63;
  sub_1AAF30D00(v63, v22, v41, AssociatedTypeWitness, v42, v82);
  (v34)(v43, v35, AssociatedTypeWitness);
  v44 = v69;
  (*(v73 + 16))(v69, v78, v76);
  v45 = v68;
  v46 = v44;
  v47 = v70;
  v48 = v71;
  sub_1AAF30D00(v43, v46, v70, AssociatedTypeWitness, v71, v68);
  (v34)(v43, v35, AssociatedTypeWitness);
  v49 = v74;
  v50 = *(v74 + 64);
  v51 = *(v74 + 96);
  v84[5] = *(v74 + 80);
  v84[6] = v51;
  v52 = *(v74 + 16);
  v84[0] = *v74;
  v53 = *(v74 + 32);
  v54 = *(v74 + 48);
  v84[1] = v52;
  v84[2] = v53;
  LOBYTE(v84[7]) = *(v74 + 112);
  v84[3] = v54;
  v84[4] = v50;
  v57 = type metadata accessor for MarkDimensions(0, AssociatedTypeWitness, v55, v56);
  (*(*(v57 - 8) + 16))(&v83, v49, v57);
  v59 = sub_1AAF312D4(v43, v84, AssociatedTypeWitness, v58);
  BarMark.init<A, B>(xStart:xEnd:y:height:)(v67, v82, v45, v59, v60, v81, v47, v80, v84, v48);
  return memcpy(v79, v84, 0x120uLL);
}

void *sub_1AAE56C10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v17 = v3;
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v6) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 64) & ~v10;
  v12 = *(v9 + 64);
  v13 = (v12 + v10 + v11) & ~v10;
  v14 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v4, v7) - 8);
  v15 = (v13 + v12 + *(v14 + 80)) & ~*(v14 + 80);
  return sub_1AAE56744(a1, v2 + v11, v2 + v13, v2 + v15, v2 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8), v17, v4, a2, v5, v6, v7);
}

uint64_t BarPlot.init<A, B, C>(_:x:yStart:yEnd:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v80 = a8;
  v82 = a7;
  v89 = a4;
  v90 = a3;
  v91 = a2;
  v88 = a1;
  v86 = a9;
  v81 = a12;
  v83 = a11;
  v73 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a11);
  v17 = *(v87 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v77 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v68 - v20;
  v21 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a12);
  v22 = *(v21 - 8);
  v74 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v68 - v23;
  v69 = &v68 - v23;
  v79 = *(a6 - 8);
  v25 = v79;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v28;
  v85 = type metadata accessor for VectorizedBarPlotContent(0, a6, a10, v29);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v78 = &v68 - v30;
  v31 = a5[5];
  v96 = a5[4];
  v97 = v31;
  v98 = a5[6];
  v99 = *(a5 + 112);
  v32 = a5[1];
  v92 = *a5;
  v93 = v32;
  v33 = a5[3];
  v94 = a5[2];
  v95 = v33;
  v34 = *(v25 + 16);
  v70 = a6;
  v34(v28, v88, a6);
  v35 = v22;
  v36 = *(v22 + 16);
  v37 = v24;
  v38 = v21;
  v71 = v21;
  v36(v37, v91, v21);
  v39 = v17;
  v68 = v17;
  v40 = *(v17 + 16);
  v41 = v76;
  v42 = v87;
  v40(v76, v90, v87);
  v43 = v77;
  v40(v77, v89, v42);
  v44 = *(v35 + 80);
  v72 = v35;
  v45 = (v44 + 64) & ~v44;
  v46 = *(v39 + 80);
  v47 = (v74 + v46 + v45) & ~v46;
  v48 = (v18 + v46 + v47) & ~v46;
  v49 = (v18 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v82;
  *(v50 + 2) = a6;
  *(v50 + 3) = v51;
  v52 = v73;
  *(v50 + 4) = v80;
  *(v50 + 5) = v52;
  v53 = v81;
  *(v50 + 6) = v83;
  *(v50 + 7) = v53;
  (*(v35 + 32))(&v50[v45], v69, v38);
  v54 = v68;
  v55 = *(v68 + 32);
  v56 = &v50[v47];
  v57 = v87;
  v55(v56, v41, v87);
  v58 = &v50[v48];
  v59 = v57;
  v55(v58, v43, v57);
  v60 = &v50[v49];
  v61 = v97;
  *(v60 + 4) = v96;
  *(v60 + 5) = v61;
  *(v60 + 6) = v98;
  v60[112] = v99;
  v62 = v93;
  *v60 = v92;
  *(v60 + 1) = v62;
  v63 = v95;
  *(v60 + 2) = v94;
  *(v60 + 3) = v63;
  v64 = v78;
  v65 = v70;
  sub_1AAE56040(v75, sub_1AAE57850, v50, v70, &type metadata for BarMark, v52, &protocol witness table for BarMark, v78);
  v66 = *(v54 + 8);
  v66(v89, v59);
  v66(v90, v59);
  (*(v72 + 8))(v91, v71);
  (*(v79 + 8))(v88, v65);
  return (*(v84 + 32))(v86, v64, v85);
}

void *sub_1AAE57398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v68 = a5;
  v69 = a3;
  v70 = a4;
  v71 = a9;
  v67 = a2;
  v72 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = a7;
  v64 = a11;
  v66 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a11);
  v74 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v56 - v15;
  v17 = type metadata accessor for PlottableValue(0, a7, a11, v16);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v65 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v56 - v20;
  v21 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a12);
  v57 = *(v21 - 8);
  v58 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  v60 = a8;
  v61 = a12;
  v29 = type metadata accessor for PlottableValue(0, a8, a12, v28);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v56 - v31;
  v59 = &v56 - v31;
  v33 = *(v24 + 16);
  v34 = v72;
  v33(v27, v72, AssociatedTypeWitness, v30);
  v56 = v33;
  (*(v57 + 16))(v23, v67, v58);
  sub_1AAF30D00(v27, v23, a8, AssociatedTypeWitness, a12, v32);
  (v33)(v27, v34, AssociatedTypeWitness);
  v35 = *(v74 + 16);
  v74 += 16;
  v36 = v62;
  v37 = v66;
  v35(v62, v69, v66);
  v38 = v63;
  v39 = v64;
  sub_1AAF30D00(v27, v36, v63, AssociatedTypeWitness, v64, v73);
  v40 = v34;
  v41 = v56;
  v56(v27, v40, AssociatedTypeWitness);
  v35(v36, v70, v37);
  v42 = v65;
  sub_1AAF30D00(v27, v36, v38, AssociatedTypeWitness, v39, v65);
  v41(v27, v72, AssociatedTypeWitness);
  v43 = v68;
  v44 = *(v68 + 64);
  v45 = *(v68 + 96);
  v76[5] = *(v68 + 80);
  v76[6] = v45;
  v46 = *(v68 + 16);
  v76[0] = *v68;
  v47 = *(v68 + 32);
  v48 = *(v68 + 48);
  v76[1] = v46;
  v76[2] = v47;
  LOBYTE(v76[7]) = *(v68 + 112);
  v76[3] = v48;
  v76[4] = v44;
  v51 = type metadata accessor for MarkDimensions(0, AssociatedTypeWitness, v49, v50);
  (*(*(v51 - 8) + 16))(&v75, v43, v51);
  v53 = sub_1AAF312D4(v27, v76, AssociatedTypeWitness, v52);
  BarMark.init<A, B>(x:yStart:yEnd:width:)(v59, v73, v42, v53, v54, v60, v38, v61, v76, v39);
  return memcpy(v71, v76, 0x120uLL);
}

void *sub_1AAE57850@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v4, v7) - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v6) - 8);
  v13 = *(v12 + 80);
  return sub_1AAE57398(a1, v2 + v10, v2 + ((v10 + v11 + v13) & ~v13), v2 + ((*(v12 + 64) + v13 + ((v10 + v11 + v13) & ~v13)) & ~v13), v2 + ((*(v12 + 64) + ((*(v12 + 64) + v13 + ((v10 + v11 + v13) & ~v13)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8), v3, v4, a2, v5, v6, v7);
}

uint64_t BarPlot.init<A, B>(_:x:yStart:yEnd:width:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, __int128 *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v58 = a6;
  v59 = a8;
  v57 = a5;
  v56 = a4;
  v55 = a3;
  v46 = a2;
  v48 = a1;
  v60 = a9;
  v51 = a11;
  v52 = a13;
  v44 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a11, a13);
  v17 = *(v47 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v20 = &v44 - v19;
  v49 = *(a10 - 8);
  v21 = v49;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v24;
  v54 = type metadata accessor for VectorizedBarPlotContent(0, a10, a12, v25);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v50 = &v44 - v26;
  v27 = a7[5];
  v65 = a7[4];
  v66 = v27;
  v67 = a7[6];
  v68 = *(a7 + 112);
  v28 = a7[1];
  v61 = *a7;
  v62 = v28;
  v29 = a7[3];
  v63 = a7[2];
  v64 = v29;
  (*(v21 + 16))(v24, a1, a10);
  v30 = v47;
  (*(v17 + 16))(v20, a2, v47);
  v31 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v32 = swift_allocObject();
  v33 = v51;
  *(v32 + 2) = a10;
  *(v32 + 3) = v33;
  v34 = v44;
  v35 = v52;
  *(v32 + 4) = v44;
  *(v32 + 5) = v35;
  (*(v17 + 32))(&v32[v31], v20, v30);
  v36 = &v32[(v31 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v36 = v55;
  v36[8] = v56 & 1;
  v37 = &v32[(v31 + v18 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v37 = v57;
  v37[8] = v58 & 1;
  v38 = &v32[(v31 + v18 + 39) & 0xFFFFFFFFFFFFFFF8];
  v39 = v64;
  *(v38 + 2) = v63;
  *(v38 + 3) = v39;
  v40 = v62;
  *v38 = v61;
  *(v38 + 1) = v40;
  v38[112] = v68;
  v41 = v67;
  *(v38 + 5) = v66;
  *(v38 + 6) = v41;
  *(v38 + 4) = v65;
  v38[113] = v59;
  v42 = v50;
  sub_1AAE56040(v45, sub_1AAE58128, v32, a10, &type metadata for BarMark, v34, &protocol witness table for BarMark, v50);
  (*(v17 + 8))(v46, v30);
  (*(v49 + 8))(v48, a10);
  return (*(v53 + 32))(v60, v42, v54);
}

void *sub_1AAE57E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53 = a8;
  v51 = a6;
  v52 = a5;
  v49 = a4;
  v50 = a3;
  v48 = a2;
  v54 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = a11;
  v46 = a13;
  v47 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a11, a13);
  v16 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v18 = &v44 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v24 = type metadata accessor for PlottableValue(0, a11, a13, v23);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v44 - v26;
  v28 = *(v19 + 16);
  v28(v22, a1, AssociatedTypeWitness, v25);
  (*(v16 + 16))(v18, v48, v47);
  v29 = v18;
  v30 = v45;
  v31 = v46;
  sub_1AAF30D00(v22, v29, v45, AssociatedTypeWitness, v46, v27);
  (v28)(v22, a1, AssociatedTypeWitness);
  v32 = *(a7 + 64);
  v33 = *(a7 + 96);
  v56[5] = *(a7 + 80);
  v56[6] = v33;
  v34 = *(a7 + 16);
  v56[0] = *a7;
  v35 = *(a7 + 32);
  v36 = *(a7 + 48);
  v56[1] = v34;
  v56[2] = v35;
  LOBYTE(v56[7]) = *(a7 + 112);
  v56[3] = v36;
  v56[4] = v32;
  v39 = type metadata accessor for MarkDimensions(0, AssociatedTypeWitness, v37, v38);
  (*(*(v39 - 8) + 16))(&v55, a7, v39);
  v41 = sub_1AAF312D4(v22, v56, AssociatedTypeWitness, v40);
  BarMark.init<A>(x:yStart:yEnd:width:stacking:)(v27, v50, v49 & 1, v52, v51 & 1, v41, v42, v53, v56, v30, v31);
  return memcpy(v54, v56, 0x120uLL);
}

void *sub_1AAE58128@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v6, v7) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  return sub_1AAE57E28(a1, v2 + v11, *(v2 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((v12 + 39) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((v12 + 39) & 0xFFFFFFFFFFFFFFF8) + 113), a2, v5, v6, v8, v7);
}

uint64_t BarPlot.init<A, B>(_:xStart:xEnd:y:height:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, __int128 *a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v55 = a8;
  v48 = a6;
  v54 = a5;
  v53 = a4;
  v52 = a3;
  v51 = a2;
  v44 = a1;
  v56 = a9;
  v46 = a11;
  v47 = a13;
  v42 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a11, a13);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  v21 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v24;
  v50 = type metadata accessor for VectorizedBarPlotContent(0, a10, a12, v25);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v45 = &v42 - v26;
  v27 = a7[5];
  v61 = a7[4];
  v62 = v27;
  v63 = a7[6];
  v64 = *(a7 + 112);
  v28 = a7[1];
  v57 = *a7;
  v58 = v28;
  v29 = a7[3];
  v59 = a7[2];
  v60 = v29;
  (*(v21 + 16))(v24, a1, a10);
  v30 = v48;
  (*(v17 + 16))(v20, v48, v16);
  v31 = (*(v17 + 80) + 73) & ~*(v17 + 80);
  v32 = swift_allocObject();
  v33 = v46;
  *(v32 + 16) = a10;
  *(v32 + 24) = v33;
  v34 = v42;
  v35 = v47;
  *(v32 + 32) = v42;
  *(v32 + 40) = v35;
  *(v32 + 48) = v51;
  *(v32 + 56) = v52 & 1;
  *(v32 + 64) = v53;
  *(v32 + 72) = v54 & 1;
  (*(v17 + 32))(v32 + v31, v20, v16);
  v36 = v32 + ((v18 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  v37 = v62;
  *(v36 + 64) = v61;
  *(v36 + 80) = v37;
  *(v36 + 96) = v63;
  *(v36 + 112) = v64;
  v38 = v58;
  *v36 = v57;
  *(v36 + 16) = v38;
  v39 = v60;
  *(v36 + 32) = v59;
  *(v36 + 48) = v39;
  *(v36 + 113) = v55;
  v40 = v45;
  sub_1AAE56040(v43, sub_1AAE58970, v32, a10, &type metadata for BarMark, v34, &protocol witness table for BarMark, v45);
  (*(v17 + 8))(v30, v16);
  (*(v21 + 8))(v44, a10);
  return (*(v49 + 32))(v56, v40, v50);
}

void *sub_1AAE58670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v53 = a8;
  v48 = a6;
  v51 = a5;
  v52 = a4;
  v49 = a3;
  v50 = a2;
  v54 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = a11;
  v46 = a13;
  v47 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a11, a13);
  v16 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v18 = &v44 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v24 = type metadata accessor for PlottableValue(0, a11, a13, v23);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v44 - v26;
  v28 = *(v19 + 16);
  v28(v22, a1, AssociatedTypeWitness, v25);
  (*(v16 + 16))(v18, v48, v47);
  v29 = v18;
  v30 = v45;
  v31 = v46;
  sub_1AAF30D00(v22, v29, v45, AssociatedTypeWitness, v46, v27);
  (v28)(v22, a1, AssociatedTypeWitness);
  v32 = *(a7 + 64);
  v33 = *(a7 + 96);
  v56[5] = *(a7 + 80);
  v56[6] = v33;
  v34 = *(a7 + 16);
  v56[0] = *a7;
  v35 = *(a7 + 32);
  v36 = *(a7 + 48);
  v56[1] = v34;
  v56[2] = v35;
  LOBYTE(v56[7]) = *(a7 + 112);
  v56[3] = v36;
  v56[4] = v32;
  v39 = type metadata accessor for MarkDimensions(0, AssociatedTypeWitness, v37, v38);
  (*(*(v39 - 8) + 16))(&v55, a7, v39);
  v41 = sub_1AAF312D4(v22, v56, AssociatedTypeWitness, v40);
  BarMark.init<A>(xStart:xEnd:y:height:stacking:)(v50, v49 & 1, v52, v51 & 1, v27, v41, v42, v53, v56, v30, v31);
  return memcpy(v54, v56, 0x120uLL);
}

void *sub_1AAE58970@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v6, v7) - 8);
  v11 = (*(v10 + 80) + 73) & ~*(v10 + 80);
  v12 = v2 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1AAE58670(a1, *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), v2 + v11, v12, *(v12 + 113), a2, v5, v6, v8, v7);
}

uint64_t BarPlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v61 = a7;
  v60 = a6;
  v59 = a5;
  v58 = a4;
  v63 = a2;
  v64 = a3;
  v52 = a1;
  v62 = a9;
  v55 = a10;
  v56 = a12;
  v49 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a10, a12);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v47 = &v46 - v19;
  v53 = *(a8 - 8);
  v21 = v53;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v24;
  v57 = type metadata accessor for VectorizedBarPlotContent(0, a8, a11, v25);
  v54 = *(v57 - 8);
  v26 = MEMORY[0x1EEE9AC00](v57);
  v51 = &v46 - v27;
  v28 = *(v21 + 16);
  v46 = a8;
  v28(v24, a1, a8, v26);
  v29 = *(v16 + 16);
  v29(v20, v63, v15);
  v29(&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v64, v15);
  v30 = *(v16 + 80);
  v31 = (v30 + 48) & ~v30;
  v32 = (v17 + v30 + v31) & ~v30;
  v33 = (v32 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v32 + v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v37 = v55;
  v36 = v56;
  *(v35 + 2) = a8;
  *(v35 + 3) = v37;
  v38 = v49;
  *(v35 + 4) = v49;
  *(v35 + 5) = v36;
  v39 = *(v16 + 32);
  v39(&v35[v31], v47, v15);
  v39(&v35[v32], v48, v15);
  v40 = &v35[v33];
  *v40 = v58;
  v40[8] = v59 & 1;
  v41 = &v35[v34];
  *v41 = v60;
  v41[8] = v61 & 1;
  v42 = v51;
  v43 = v46;
  sub_1AAE56040(v50, sub_1AAE59154, v35, v46, &type metadata for BarMark, v38, &protocol witness table for BarMark, v51);
  v44 = *(v16 + 8);
  v44(v64, v15);
  v44(v63, v15);
  (*(v53 + 8))(v52, v43);
  return (*(v54 + 32))(v62, v42, v57);
}

void *sub_1AAE58E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X5>, int a7@<W6>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a5;
  v46 = a7;
  v47 = a4;
  v48 = a6;
  v43 = a2;
  v44 = a3;
  v37 = a1;
  v49 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = a10;
  v40 = a12;
  v42 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a10, a12);
  v14 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v16 = &v36 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  v22 = type metadata accessor for PlottableValue(0, a10, a12, v21);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v41 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v36 - v26;
  v38 = &v36 - v26;
  v28 = *(v17 + 16);
  v36 = v17 + 16;
  v28(v20, a1, AssociatedTypeWitness, v25);
  v29 = *(v14 + 16);
  v30 = v42;
  v29(v16, v43, v42);
  v31 = v27;
  v33 = v39;
  v32 = v40;
  sub_1AAF30D00(v20, v16, v39, AssociatedTypeWitness, v40, v31);
  (v28)(v20, v37, AssociatedTypeWitness);
  v29(v16, v44, v30);
  v34 = v41;
  sub_1AAF30D00(v20, v16, v33, AssociatedTypeWitness, v32, v41);
  BarMark.init<A>(xStart:xEnd:yStart:yEnd:)(v38, v34, v47, v45 & 1, v48, v46 & 1, v33, v32, v50);
  return memcpy(v49, v50, 0x120uLL);
}

void *sub_1AAE59154@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v5, v6) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 48) & ~v10;
  v12 = *(v9 + 64);
  v13 = (v12 + v10 + v11) & ~v10;
  return sub_1AAE58E7C(a1, v2 + v11, v2 + v13, *(v2 + ((v13 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v13 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v13 + v12 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v13 + v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a2, v5, v7, v6);
}

uint64_t BarPlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v55 = a6;
  v56 = a7;
  v53 = a5;
  v52 = a4;
  v51 = a3;
  v50 = a2;
  v44 = a1;
  v54 = a9;
  v47 = a10;
  v48 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a10, a12);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v40 = &v40 - v19;
  v45 = *(a8 - 8);
  v21 = v45;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v24;
  v49 = type metadata accessor for VectorizedBarPlotContent(0, a8, a11, v25);
  v46 = *(v49 - 8);
  v26 = MEMORY[0x1EEE9AC00](v49);
  v42 = &v40 - v27;
  (*(v21 + 16))(v24, a1, a8, v26);
  v28 = *(v16 + 16);
  v28(v20, v55, v15);
  v29 = v43;
  v28(v43, v56, v15);
  v30 = *(v16 + 80);
  v31 = (v30 + 73) & ~v30;
  v32 = (v17 + v30 + v31) & ~v30;
  v33 = swift_allocObject();
  v35 = v47;
  v34 = v48;
  *(v33 + 16) = a8;
  *(v33 + 24) = v35;
  *(v33 + 32) = a11;
  *(v33 + 40) = v34;
  *(v33 + 48) = v50;
  *(v33 + 56) = v51 & 1;
  *(v33 + 64) = v52;
  *(v33 + 72) = v53 & 1;
  v36 = *(v16 + 32);
  v36(v33 + v31, v40, v15);
  v36(v33 + v32, v29, v15);
  v37 = v42;
  sub_1AAE56040(v41, sub_1AAE59938, v33, a8, &type metadata for BarMark, a11, &protocol witness table for BarMark, v42);
  v38 = *(v16 + 8);
  v38(v56, v15);
  v38(v55, v15);
  (*(v45 + 8))(v44, a8);
  return (*(v46 + 32))(v54, v37, v49);
}

void *sub_1AAE59654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a6;
  v44 = a7;
  v47 = a5;
  v48 = a4;
  v49 = a9;
  v45 = a3;
  v46 = a2;
  v37 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = a10;
  v40 = a12;
  v42 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a10, a12);
  v14 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v16 = v36 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v36 - v19;
  v22 = type metadata accessor for PlottableValue(0, a10, a12, v21);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v41 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v36 - v26;
  v38 = v36 - v26;
  v28 = *(v17 + 16);
  v36[1] = v17 + 16;
  v28(v20, a1, AssociatedTypeWitness, v25);
  v29 = *(v14 + 16);
  v30 = v42;
  v29(v16, v43, v42);
  v31 = v27;
  v33 = v39;
  v32 = v40;
  sub_1AAF30D00(v20, v16, v39, AssociatedTypeWitness, v40, v31);
  (v28)(v20, v37, AssociatedTypeWitness);
  v29(v16, v44, v30);
  v34 = v41;
  sub_1AAF30D00(v20, v16, v33, AssociatedTypeWitness, v32, v41);
  BarMark.init<A>(xStart:xEnd:yStart:yEnd:)(v46, v45 & 1, v48, v47 & 1, v38, v34, v33, v32, v50);
  return memcpy(v49, v50, 0x120uLL);
}

void *sub_1AAE59938@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v5, v6) - 8);
  v10 = *(v9 + 80);
  return sub_1AAE59654(a1, *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), v2 + ((v10 + 73) & ~v10), v2 + ((*(v9 + 64) + v10 + ((v10 + 73) & ~v10)) & ~v10), a2, v5, v7, v6);
}

uint64_t BarPlot.init<A, B>(_:x:yStart:yEnd:width:stacking:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v52 = a8;
  v58 = a6;
  v57 = a4;
  v46 = a2;
  v48 = a1;
  v56 = a3;
  v59 = a9;
  v47 = a10;
  v53 = a11;
  v49 = type metadata accessor for PlottableProjection(0, *(*a3 + *MEMORY[0x1E69E77B0]), a8, a11);
  v15 = *(v49 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v18 = &v44 - v17;
  v50 = *(a7 - 8);
  v19 = v50;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v22;
  v24 = type metadata accessor for VectorizedBarPlotContent(0, a7, a10, v23);
  v54 = *(v24 - 8);
  v55 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v51 = &v44 - v25;
  v26 = a5[5];
  v64 = a5[4];
  v65 = v26;
  v66 = a5[6];
  v67 = *(a5 + 112);
  v27 = a5[1];
  v60 = *a5;
  v61 = v27;
  v28 = a5[3];
  v62 = a5[2];
  v63 = v28;
  (*(v19 + 16))(v22, a1, a7);
  v29 = v49;
  (*(v15 + 16))(v18, a2, v49);
  v30 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v31 = (v16 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v52;
  *(v33 + 2) = a7;
  *(v33 + 3) = v34;
  v35 = v47;
  v36 = v53;
  *(v33 + 4) = v47;
  *(v33 + 5) = v36;
  (*(v15 + 32))(&v33[v30], v18, v29);
  v37 = v57;
  *&v33[v31] = v56;
  *&v33[v32] = v37;
  v38 = &v33[(v32 + 15) & 0xFFFFFFFFFFFFFFF8];
  v39 = v65;
  *(v38 + 4) = v64;
  *(v38 + 5) = v39;
  *(v38 + 6) = v66;
  v38[112] = v67;
  v40 = v61;
  *v38 = v60;
  *(v38 + 1) = v40;
  v41 = v63;
  *(v38 + 2) = v62;
  *(v38 + 3) = v41;
  v38[113] = v58;
  v42 = v51;
  sub_1AAE56040(v45, sub_1AAE5A19C, v33, a7, &type metadata for BarMark, v35, &protocol witness table for BarMark, v51);
  (*(v15 + 8))(v46, v29);
  (*(v50 + 8))(v48, a7);
  return (*(v54 + 32))(v59, v42, v55);
}

void *sub_1AAE59E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v49 = a6;
  v47 = a3;
  v48 = a4;
  v46 = a2;
  v50 = a8;
  v13 = *(*a3 + *MEMORY[0x1E69E77B0]);
  v41 = a10;
  v44 = type metadata accessor for PlottableProjection(0, v13, a7, a10);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v15 = &v40 - v14;
  v16 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v45 = a7;
  v21 = type metadata accessor for PlottableValue(0, a7, a10, v20);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v40 - v23;
  v43 = &v40 - v23;
  v25 = *(v16 + 16);
  v25(v19, a1, v13, v22);
  (*(v42 + 16))(v15, v46, v44);
  v26 = v15;
  v27 = v41;
  sub_1AAF30D00(v19, v26, a7, v13, v41, v24);
  swift_getAtKeyPath();
  v28 = v51[16];
  swift_getAtKeyPath();
  v29 = v51[15];
  (v25)(v19, a1, v13);
  v30 = *(a5 + 80);
  v52[4] = *(a5 + 64);
  v52[5] = v30;
  v52[6] = *(a5 + 96);
  LOBYTE(v52[7]) = *(a5 + 112);
  v31 = *(a5 + 16);
  v52[0] = *a5;
  v52[1] = v31;
  v32 = *(a5 + 48);
  v52[2] = *(a5 + 32);
  v52[3] = v32;
  v35 = type metadata accessor for MarkDimensions(0, v13, v33, v34);
  (*(*(v35 - 8) + 16))(v51, a5, v35);
  v37 = sub_1AAF312D4(v19, v52, v13, v36);
  BarMark.init<A>(x:yStart:yEnd:width:stacking:)(v43, v28, 0, v29, 0, v37, v38, v49, v52, v45, v27);
  return memcpy(v50, v52, 0x120uLL);
}

void *sub_1AAE5A19C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v2[3];
  v7 = v2[4];
  v6 = v2[5];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v5, v6) - 8);
  v10 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1AAE59E60(a1, v2 + v10, *(v2 + v11), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), v2 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8), *(v2 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 113), v5, a2, v7, v6);
}

uint64_t BarPlot.init<A, B>(_:xStart:xEnd:y:height:stacking:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v50 = a8;
  v56 = a6;
  v55 = a3;
  v47 = a1;
  v53 = a2;
  v57 = a9;
  v46 = a10;
  v51 = a11;
  v49 = type metadata accessor for PlottableProjection(0, *(*a2 + *MEMORY[0x1E69E77B0]), a8, a11);
  v15 = *(v49 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v18 = &v44 - v17;
  v19 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v22;
  v54 = type metadata accessor for VectorizedBarPlotContent(0, a7, a10, v23);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v44 - v24;
  v25 = a5[5];
  v62 = a5[4];
  v63 = v25;
  v64 = a5[6];
  v65 = *(a5 + 112);
  v26 = a5[1];
  v58 = *a5;
  v59 = v26;
  v27 = a5[3];
  v60 = a5[2];
  v61 = v27;
  (*(v19 + 16))(v22, a1, a7);
  v28 = a4;
  v29 = a4;
  v30 = v49;
  (*(v15 + 16))(v18, v29, v49);
  v31 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v32 = (v16 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v50;
  *(v33 + 2) = a7;
  *(v33 + 3) = v34;
  v35 = v46;
  v36 = v51;
  *(v33 + 4) = v46;
  *(v33 + 5) = v36;
  v37 = v55;
  *(v33 + 6) = v53;
  *(v33 + 7) = v37;
  (*(v15 + 32))(&v33[v31], v18, v30);
  v38 = &v33[v32];
  v39 = v63;
  *(v38 + 4) = v62;
  *(v38 + 5) = v39;
  *(v38 + 6) = v64;
  v38[112] = v65;
  v40 = v59;
  *v38 = v58;
  *(v38 + 1) = v40;
  v41 = v61;
  *(v38 + 2) = v60;
  *(v38 + 3) = v41;
  v38[113] = v56;
  v42 = v48;
  sub_1AAE56040(v45, sub_1AAE5A9DC, v33, a7, &type metadata for BarMark, v35, &protocol witness table for BarMark, v48);
  (*(v15 + 8))(v28, v30);
  (*(v19 + 8))(v47, a7);
  return (*(v52 + 32))(v57, v42, v54);
}

void *sub_1AAE5A6B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v46 = a6;
  v44 = a3;
  v45 = a4;
  v42 = a1;
  v47 = a8;
  v12 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v39 = a7;
  v40 = a10;
  v41 = type metadata accessor for PlottableProjection(0, v12, a7, a10);
  v13 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v15 = &v39 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v21 = type metadata accessor for PlottableValue(0, a7, a10, v20);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v39 - v22;
  v24 = v42;
  swift_getAtKeyPath();
  v43 = v48[16];
  swift_getAtKeyPath();
  v44 = v48[15];
  v25 = *(v16 + 16);
  v25(v19, v24, v12);
  (*(v13 + 16))(v15, v45, v41);
  v26 = v15;
  v28 = v39;
  v27 = v40;
  sub_1AAF30D00(v19, v26, v39, v12, v40, v23);
  v25(v19, v24, v12);
  v29 = *(a5 + 80);
  v49[4] = *(a5 + 64);
  v49[5] = v29;
  v49[6] = *(a5 + 96);
  LOBYTE(v49[7]) = *(a5 + 112);
  v30 = *(a5 + 16);
  v49[0] = *a5;
  v49[1] = v30;
  v31 = *(a5 + 48);
  v49[2] = *(a5 + 32);
  v49[3] = v31;
  v34 = type metadata accessor for MarkDimensions(0, v12, v32, v33);
  (*(*(v34 - 8) + 16))(v48, a5, v34);
  v36 = sub_1AAF312D4(v19, v49, v12, v35);
  BarMark.init<A>(xStart:xEnd:y:height:stacking:)(v43, 0, v44, 0, v23, v36, v37, v46, v49, v28, v27);
  return memcpy(v47, v49, 0x120uLL);
}

void *sub_1AAE5A9DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v5, v6) - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1AAE5A6B0(a1, *(v2 + 48), *(v2 + 56), v2 + v10, v11, *(v11 + 113), v5, a2, v7, v6);
}

uint64_t BarPlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v46 = a8;
  v51 = a7;
  v55 = a4;
  v56 = a5;
  v58 = a2;
  v59 = a3;
  v49 = a1;
  v57 = a9;
  v53 = a10;
  v13 = type metadata accessor for PlottableProjection(0, *(*a4 + *MEMORY[0x1E69E77B0]), a7, a10);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v44 = &v42 - v17;
  v50 = *(a6 - 8);
  v19 = v50;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v22;
  v54 = type metadata accessor for VectorizedBarPlotContent(0, a6, a8, v23);
  v52 = *(v54 - 8);
  v24 = MEMORY[0x1EEE9AC00](v54);
  v48 = &v42 - v25;
  v26 = *(v19 + 16);
  v43 = a6;
  v26(v22, a1, a6, v24);
  v27 = *(v14 + 16);
  v27(v18, v58, v13);
  v27(&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v59, v13);
  v28 = *(v14 + 80);
  v29 = (v28 + 48) & ~v28;
  v30 = (v15 + v28 + v29) & ~v28;
  v31 = (v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v51;
  *(v32 + 2) = a6;
  *(v32 + 3) = v33;
  v34 = v46;
  v35 = v53;
  *(v32 + 4) = v46;
  *(v32 + 5) = v35;
  v36 = *(v14 + 32);
  v36(&v32[v29], v44, v13);
  v36(&v32[v30], v45, v13);
  v37 = v56;
  *&v32[v31] = v55;
  *&v32[(v31 + 15) & 0xFFFFFFFFFFFFFFF8] = v37;
  v38 = v48;
  v39 = v43;
  sub_1AAE56040(v47, sub_1AAE5B1CC, v32, v43, &type metadata for BarMark, v34, &protocol witness table for BarMark, v48);
  v40 = *(v14 + 8);
  v40(v59, v13);
  v40(v58, v13);
  (*(v50 + 8))(v49, v39);
  return (*(v52 + 32))(v57, v38, v54);
}

void *sub_1AAE5AEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>, uint64_t a8)
{
  v44 = a5;
  v45 = a7;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v10 = *(*a4 + *MEMORY[0x1E69E77B0]);
  v36 = a8;
  v40 = type metadata accessor for PlottableProjection(0, v10, a6, a8);
  v11 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v34 - v12;
  v34[0] = v10;
  v13 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v34 - v15;
  v18 = type metadata accessor for PlottableValue(0, a6, a8, v17);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v37 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v34 - v22;
  v38 = v34 - v22;
  v24 = *(v13 + 16);
  v34[1] = v13 + 16;
  v35 = v24;
  (v24)(v16, a1, v10, v21);
  v25 = *(v11 + 16);
  v27 = v39;
  v26 = v40;
  v25(v39, v41, v40);
  v28 = v23;
  v29 = v34[0];
  v30 = v36;
  sub_1AAF30D00(v16, v27, a6, v34[0], v36, v28);
  v35(v16, a1, v29);
  v25(v27, v42, v26);
  v31 = v37;
  sub_1AAF30D00(v16, v27, a6, v29, v30, v37);
  swift_getAtKeyPath();
  v32 = v47;
  swift_getAtKeyPath();
  BarMark.init<A>(xStart:xEnd:yStart:yEnd:)(v38, v31, v32, 0, v46, 0, a6, v30, v48);
  return memcpy(v45, v48, 0x120uLL);
}

void *sub_1AAE5B1CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v5, v6) - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 48) & ~v9;
  v11 = *(v8 + 64);
  return sub_1AAE5AEBC(a1, v2 + v10, v2 + ((v11 + v9 + v10) & ~v9), *(v2 + ((v11 + ((v11 + v9 + v10) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v11 + ((v11 + v9 + v10) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5, a2, v6);
}

uint64_t BarPlot.init<A, B>(_:xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v54 = a4;
  v55 = a5;
  v51 = a2;
  v52 = a3;
  v45 = a1;
  v53 = a9;
  v48 = a7;
  v49 = a10;
  v13 = type metadata accessor for PlottableProjection(0, *(*a2 + *MEMORY[0x1E69E77B0]), a7, a10);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v41 = &v40 - v17;
  v46 = *(a6 - 8);
  v19 = v46;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v22;
  v50 = type metadata accessor for VectorizedBarPlotContent(0, a6, a8, v23);
  v47 = *(v50 - 8);
  v24 = MEMORY[0x1EEE9AC00](v50);
  v43 = &v40 - v25;
  (*(v19 + 16))(v22, a1, a6, v24);
  v26 = *(v14 + 16);
  v26(v18, v54, v13);
  v27 = v44;
  v26(v44, v55, v13);
  v28 = *(v14 + 80);
  v29 = (v28 + 64) & ~v28;
  v30 = (v15 + v28 + v29) & ~v28;
  v31 = swift_allocObject();
  v33 = v48;
  v32 = v49;
  *(v31 + 2) = a6;
  *(v31 + 3) = v33;
  v34 = a8;
  *(v31 + 4) = a8;
  *(v31 + 5) = v32;
  v35 = v52;
  *(v31 + 6) = v51;
  *(v31 + 7) = v35;
  v36 = *(v14 + 32);
  v36(&v31[v29], v41, v13);
  v36(&v31[v30], v27, v13);
  v37 = v43;
  sub_1AAE56040(v42, sub_1AAE5B9A8, v31, a6, &type metadata for BarMark, v34, &protocol witness table for BarMark, v43);
  v38 = *(v14 + 8);
  v38(v55, v13);
  v38(v54, v13);
  (*(v46 + 8))(v45, a6);
  return (*(v47 + 32))(v53, v37, v50);
}

void *sub_1AAE5B698@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, void *a7@<X8>, uint64_t a8)
{
  v44 = a4;
  v45 = a5;
  v41 = a3;
  v46 = a7;
  v10 = *(*a2 + *MEMORY[0x1E69E77B0]);
  v39 = a8;
  v11 = type metadata accessor for PlottableProjection(0, v10, a6, a8);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - v12;
  v14 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v35 - v16;
  v19 = type metadata accessor for PlottableValue(0, a6, a8, v18);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v40 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v35 - v22;
  v36 = a1;
  v37 = v35 - v22;
  swift_getAtKeyPath();
  v38 = v48;
  swift_getAtKeyPath();
  v41 = v47;
  v24 = *(v14 + 16);
  v35[1] = v14 + 16;
  v24(v17, a1, v10);
  v25 = *(v42 + 16);
  v26 = v13;
  v27 = v13;
  v28 = v43;
  v25(v27, v44, v43);
  v29 = v23;
  v30 = v26;
  v31 = v26;
  v32 = v39;
  sub_1AAF30D00(v17, v30, a6, v10, v39, v29);
  v24(v17, v36, v10);
  v25(v31, v45, v28);
  v33 = v40;
  sub_1AAF30D00(v17, v31, a6, v10, v32, v40);
  BarMark.init<A>(xStart:xEnd:yStart:yEnd:)(v38, 0, v41, 0, v37, v33, a6, v32, v49);
  return memcpy(v46, v49, 0x120uLL);
}

void *sub_1AAE5B9A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v5, v6) - 8);
  v9 = *(v8 + 80);
  return sub_1AAE5B698(a1, *(v2 + 48), *(v2 + 56), v2 + ((v9 + 64) & ~v9), v2 + ((*(v8 + 64) + v9 + ((v9 + 64) & ~v9)) & ~v9), v5, a2, v6);
}

uint64_t VectorizedBarPlotContent.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Vectorizer(0, *(a1 + 16), *(a1 + 24), a4);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1AACE0800();
  sub_1AACE0800();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1AAE5BBEC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AAE5BC40(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 LineMark.init<A, B>(x:y:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1AAE83B9C(a1, a3, a5, a4, v27);
  v14 = v27[7];
  *(a7 + 96) = v27[6];
  *(a7 + 112) = v14;
  *(a7 + 128) = v27[8];
  v15 = v27[3];
  *(a7 + 32) = v27[2];
  *(a7 + 48) = v15;
  v16 = v27[5];
  *(a7 + 64) = v27[4];
  *(a7 + 80) = v16;
  v17 = v27[1];
  *a7 = v27[0];
  *(a7 + 16) = v17;
  sub_1AAE83B9C(a2, a4, a6, v18, v28);
  v20 = type metadata accessor for PlottableValue(0, a4, a6, v19);
  (*(*(v20 - 8) + 8))(a2, v20);
  v22 = type metadata accessor for PlottableValue(0, a3, a5, v21);
  (*(*(v22 - 8) + 8))(a1, v22);
  v23 = v28[7];
  *(a7 + 240) = v28[6];
  *(a7 + 256) = v23;
  *(a7 + 272) = v28[8];
  v24 = v28[3];
  *(a7 + 176) = v28[2];
  *(a7 + 192) = v24;
  v25 = v28[5];
  *(a7 + 208) = v28[4];
  *(a7 + 224) = v25;
  result = v28[1];
  *(a7 + 144) = v28[0];
  *(a7 + 160) = result;
  *(a7 + 288) = 0;
  *(a7 + 296) = 0;
  *(a7 + 304) = -1;
  return result;
}

uint64_t LineMark.init<A, B, C>(x:y:series:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = a8;
  v44 = a5;
  v45 = a8;
  v47 = a4;
  v48 = a7;
  v46 = a2;
  v49 = a1;
  v16 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE83B9C(v19, v20, v21, v20, v50);
  v22 = v50[7];
  *(a9 + 96) = v50[6];
  *(a9 + 112) = v22;
  *(a9 + 128) = v50[8];
  v23 = v50[3];
  *(a9 + 32) = v50[2];
  *(a9 + 48) = v23;
  v24 = v50[5];
  *(a9 + 64) = v50[4];
  *(a9 + 80) = v24;
  v25 = v50[1];
  *a9 = v50[0];
  *(a9 + 16) = v25;
  sub_1AAE83B9C(a2, a5, v10, v26, v51);
  v27 = v51[7];
  *(a9 + 240) = v51[6];
  *(a9 + 256) = v27;
  *(a9 + 272) = v51[8];
  v28 = v51[3];
  *(a9 + 176) = v51[2];
  *(a9 + 192) = v28;
  v29 = v51[5];
  *(a9 + 208) = v51[4];
  *(a9 + 224) = v29;
  v30 = v51[1];
  *(a9 + 144) = v51[0];
  *(a9 + 160) = v30;
  v32 = type metadata accessor for PlottableValue(0, a6, a10, v31);
  sub_1AAE8CA40(v32, v33, v18);
  v34 = sub_1AACD78AC(v18, a6, a10);
  v36 = v35;
  LOBYTE(v10) = v37;
  (*(v16 + 8))(v18, a6);
  (*(*(v32 - 8) + 8))(a3, v32);
  v39 = type metadata accessor for PlottableValue(0, v44, v45, v38);
  (*(*(v39 - 8) + 8))(v46, v39);
  v41 = type metadata accessor for PlottableValue(0, v47, v48, v40);
  result = (*(*(v41 - 8) + 8))(v49, v41);
  *(a9 + 288) = v34;
  *(a9 + 296) = v36;
  *(a9 + 304) = v10;
  return result;
}

uint64_t static LineMark._layoutChartContent(_:_:)(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[7];
  v15[6] = a1[6];
  v15[7] = v2;
  v3 = a1[9];
  v15[8] = a1[8];
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = a1[5];
  v15[4] = a1[4];
  v15[5] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[14];
  v8 = a1[16];
  v9 = a1[17];
  v16[6] = a1[15];
  v16[7] = v8;
  v16[8] = v9;
  v10 = a1[10];
  v11 = a1[12];
  v12 = a1[13];
  v16[2] = a1[11];
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v7;
  v16[0] = v3;
  v16[1] = v10;
  v13 = *a2;
  result = sub_1AACD2B20(v15, v16);
  if (*(v13 + 1264) == 1)
  {
    *(v13 + 1265) = 1;
  }

  return result;
}

uint64_t static LineMark._renderChartContent(_:_:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v305 = v5;
  v6 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v6);
  v303 = &v296 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v8);
  *&v302 = &v296 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v296 - v11;
  v13 = v4[7];
  v417 = v4[6];
  v418 = v13;
  v14 = v4[9];
  v419 = v4[8];
  v15 = v4[3];
  v413 = v4[2];
  v414 = v15;
  v16 = v4[4];
  v416 = v4[5];
  v415 = v16;
  v17 = *v4;
  v412 = v4[1];
  v411 = v17;
  v18 = v4[14];
  v19 = v4[16];
  v426 = v4[15];
  v427 = v19;
  v20 = v4[16];
  v428 = v4[17];
  v21 = v4[10];
  v22 = v4[12];
  v422 = v4[11];
  v423 = v22;
  v24 = v4[12];
  v23 = v4[13];
  v425 = v4[14];
  v424 = v23;
  v25 = v4[9];
  v421 = v4[10];
  v420 = v14;
  v481 = v426;
  v482 = v20;
  v483 = v4[17];
  v477 = v422;
  v478 = v24;
  v480 = v18;
  v479 = v23;
  v476 = v21;
  v475 = v25;
  v26 = *(v4 + 37);
  v304 = *(v4 + 36);
  v27 = *(v4 + 304);
  *&v309 = *(v2 + 1);
  v28 = v309 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  LODWORD(v306) = *v2;
  swift_beginAccess();
  v307 = v28;
  sub_1AAE4911C(v28, v12);
  v457[6] = v417;
  v457[7] = v418;
  v457[8] = v419;
  v457[2] = v413;
  v457[3] = v414;
  v457[5] = v416;
  v457[4] = v415;
  v457[1] = v412;
  v457[0] = v411;
  v29 = sub_1AACDB99C(v457);
  *&v308 = v8;
  if (v29 > 2)
  {
    if (v29 == 3)
    {
      sub_1AACD2C84(v457);
      v58 = v4[7];
      *&v324[96] = v4[6];
      *&v324[112] = v58;
      *&v324[128] = v4[8];
      v59 = v4[3];
      *&v324[32] = v4[2];
      *&v324[48] = v59;
      v60 = v4[5];
      *&v324[64] = v4[4];
      *&v324[80] = v60;
      v61 = v4[1];
      *v324 = *v4;
      *&v324[16] = v61;
      v62 = sub_1AACD2C84(v324);
      v63 = v4[7];
      v393 = v4[6];
      v394 = v63;
      v395 = v4[8];
      v64 = v4[3];
      v392[1] = v4[2];
      v392[2] = v64;
      v65 = v4[4];
      v392[4] = v4[5];
      v392[3] = v65;
      v66 = *v4;
      v392[0] = v4[1];
      v391 = v66;
      v67 = sub_1AACD2C84(&v391);
      v68 = &unk_1EB425BA0;
      v69 = &type metadata for AnyPlottableValue;
      goto LABEL_14;
    }

    v31 = v309;
    if (v29 == 4)
    {
      sub_1AACD2C84(v457);
    }

    else
    {
      sub_1AACD2C84(v457);
      v78 = v4[7];
      *&v324[96] = v4[6];
      *&v324[112] = v78;
      *&v324[128] = v4[8];
      v79 = v4[3];
      *&v324[32] = v4[2];
      *&v324[48] = v79;
      v80 = v4[5];
      *&v324[64] = v4[4];
      *&v324[80] = v80;
      v81 = v4[1];
      *v324 = *v4;
      *&v324[16] = v81;
      v82 = sub_1AACD2C84(v324);
      v83 = v4[7];
      v393 = v4[6];
      v394 = v83;
      v395 = v4[8];
      v84 = v4[3];
      v392[1] = v4[2];
      v392[2] = v84;
      v85 = v4[4];
      v392[4] = v4[5];
      v392[3] = v85;
      v86 = *v4;
      v392[0] = v4[1];
      v391 = v86;
      v87 = sub_1AACD2C84(&v391);
      sub_1AAE5EC3C(v87, v310, &qword_1EB425B98, &type metadata for StackGroup);
      sub_1AAE5EC3C(v82, v310, &qword_1EB425B98, &type metadata for StackGroup);
    }

    v57 = NAN;
  }

  else
  {
    if (v29)
    {
      if (v29 == 1)
      {
        v30 = sub_1AACD2C84(v457);
        v31 = v309;
        if (*(v30 + 8))
        {
          v32 = (*(v309 + 24) + *(v309 + 32)) * 0.5;
        }

        else
        {
          v32 = *v30;
        }

        v57 = v32 + *(v307 + v8[21]);
        goto LABEL_20;
      }

      sub_1AACD2C84(v457);
      v70 = v4[7];
      *&v324[96] = v4[6];
      *&v324[112] = v70;
      *&v324[128] = v4[8];
      v71 = v4[3];
      *&v324[32] = v4[2];
      *&v324[48] = v71;
      v72 = v4[5];
      *&v324[64] = v4[4];
      *&v324[80] = v72;
      v73 = v4[1];
      *v324 = *v4;
      *&v324[16] = v73;
      v62 = sub_1AACD2C84(v324);
      v74 = v4[7];
      v393 = v4[6];
      v394 = v74;
      v395 = v4[8];
      v75 = v4[3];
      v392[1] = v4[2];
      v392[2] = v75;
      v76 = v4[4];
      v392[4] = v4[5];
      v392[3] = v76;
      v77 = *v4;
      v392[0] = v4[1];
      v391 = v77;
      v67 = sub_1AACD2C84(&v391);
      v68 = &unk_1EB425B90;
      v69 = &type metadata for MarkDimension;
LABEL_14:
      sub_1AAE5EC3C(v67, v310, v68, v69);
      sub_1AAE5EC3C(v62, v310, v68, v69);
      v57 = NAN;
      v31 = v309;
      goto LABEL_20;
    }

    v298 = v26;
    v299 = v27;
    v300 = v6;
    v301 = v12;
    v33 = sub_1AACD2C84(v457);
    v458 = *v33;
    v34 = *(v33 + 24);
    v459 = *(v33 + 16);
    v35 = *(v33 + 32);
    v297 = *(v33 + 40);
    v36 = v4[1];
    v391 = *v4;
    v392[0] = v36;
    v37 = *(v33 + 48);
    v38 = v4[3];
    v392[1] = v4[2];
    v392[2] = v38;
    v39 = v4[7];
    v395 = v4[8];
    v40 = v4[5];
    v41 = v4[6];
    v394 = v39;
    v393 = v41;
    v392[3] = v4[4];
    v392[4] = v40;
    v42 = sub_1AACD2C84(&v391);
    v462 = v459;
    v461 = v458;
    v460 = v34;
    v43 = *v42;
    v44 = *(v42 + 8);
    v45 = *(v42 + 16);
    v46 = *(v42 + 32);
    v47 = *(v42 + 40);
    v48 = *(v42 + 48);

    sub_1AACD7304(v43, v44, v45);
    sub_1AACD7C50(v46, v47, v48);

    sub_1AACD7304(v43, v44, v45);
    sub_1AACD7C50(v46, v47, v48);
    v49 = v309;

    v50 = MEMORY[0x1E69810C8];
    v51 = MEMORY[0x1E69E62F8];
    sub_1AAE5ECA8(&v460, v324, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AADFA6FC(&v461, v324);
    v52 = v297;
    sub_1AACD7C50(v35, v297, v37);
    *&v53 = COERCE_DOUBLE(sub_1AAE0B2C8(0, v49, v35, v52, v37));
    v55 = v54;
    sub_1AAD6E0DC(&v461);
    sub_1AAE5ED98(&v460, &qword_1ED9B1E40, v50, v51);
    v56 = v35;
    v31 = v49;
    sub_1AAD0E818(v56, v52, v37);

    if (v55)
    {
      v57 = NAN;
    }

    else
    {
      v57 = *&v53;
    }

    v6 = v300;
    v12 = v301;
    v8 = v308;
    v26 = v298;
    v27 = v299;
  }

LABEL_20:
  v456[6] = v426;
  v456[7] = v427;
  v456[8] = v428;
  v456[2] = v422;
  v456[3] = v423;
  v456[5] = v425;
  v456[4] = v424;
  v456[1] = v421;
  v456[0] = v420;
  v88 = sub_1AACDB99C(v456);
  if (v88 > 2)
  {
    if (v88 == 3)
    {
      sub_1AACD2C84(v456);
      *&v324[96] = v481;
      *&v324[112] = v482;
      *&v324[128] = v483;
      *&v324[32] = v477;
      *&v324[48] = v478;
      *&v324[64] = v479;
      *&v324[80] = v480;
      *v324 = v475;
      *&v324[16] = v476;
      v110 = sub_1AACD2C84(v324);
      v393 = v481;
      v394 = v482;
      v395 = v483;
      v392[1] = v477;
      v392[2] = v478;
      v392[4] = v480;
      v392[3] = v479;
      v392[0] = v476;
      v391 = v475;
      v111 = sub_1AACD2C84(&v391);
      v112 = &unk_1EB425BA0;
      v113 = &type metadata for AnyPlottableValue;
    }

    else
    {
      if (v88 == 4)
      {
        sub_1AACD2C84(v456);
LABEL_34:
        v109 = NAN;
        goto LABEL_35;
      }

      sub_1AACD2C84(v456);
      *&v324[96] = v481;
      *&v324[112] = v482;
      *&v324[128] = v483;
      *&v324[32] = v477;
      *&v324[48] = v478;
      *&v324[64] = v479;
      *&v324[80] = v480;
      *v324 = v475;
      *&v324[16] = v476;
      v110 = sub_1AACD2C84(v324);
      v393 = v481;
      v394 = v482;
      v395 = v483;
      v392[1] = v477;
      v392[2] = v478;
      v392[4] = v480;
      v392[3] = v479;
      v392[0] = v476;
      v391 = v475;
      v111 = sub_1AACD2C84(&v391);
      v112 = &qword_1EB425B98;
      v113 = &type metadata for StackGroup;
    }

LABEL_33:
    sub_1AAE5EC3C(v111, v310, v112, v113);
    sub_1AAE5EC3C(v110, v310, v112, v113);
    goto LABEL_34;
  }

  if (v88)
  {
    if (v88 == 1)
    {
      v89 = sub_1AACD2C84(v456);
      if (*(v89 + 8))
      {
        v90 = (*(v31 + 40) + *(v31 + 48)) * 0.5;
      }

      else
      {
        v90 = *v89;
      }

      v109 = v90 + *(v307 + v8[22]);
      goto LABEL_35;
    }

    sub_1AACD2C84(v456);
    *&v324[96] = v481;
    *&v324[112] = v482;
    *&v324[128] = v483;
    *&v324[32] = v477;
    *&v324[48] = v478;
    *&v324[64] = v479;
    *&v324[80] = v480;
    *v324 = v475;
    *&v324[16] = v476;
    v110 = sub_1AACD2C84(v324);
    v393 = v481;
    v394 = v482;
    v395 = v483;
    v392[1] = v477;
    v392[2] = v478;
    v392[4] = v480;
    v392[3] = v479;
    v392[0] = v476;
    v391 = v475;
    v111 = sub_1AACD2C84(&v391);
    v112 = &unk_1EB425B90;
    v113 = &type metadata for MarkDimension;
    goto LABEL_33;
  }

  v298 = v26;
  v299 = v27;
  v300 = v6;
  v301 = v12;
  v91 = sub_1AACD2C84(v456);
  v463 = *v91;
  v92 = *(v91 + 24);
  v464 = *(v91 + 16);
  v93 = *(v91 + 40);
  v297 = *(v91 + 32);
  v391 = v475;
  v392[0] = v476;
  v94 = *(v91 + 48);
  v392[1] = v477;
  v392[2] = v478;
  v395 = v483;
  v394 = v482;
  v393 = v481;
  v392[3] = v479;
  v392[4] = v480;
  v95 = sub_1AACD2C84(&v391);
  v467 = v464;
  v466 = v463;
  v465 = v92;
  v96 = *v95;
  v97 = *(v95 + 8);
  v98 = *(v95 + 16);
  v99 = *(v95 + 32);
  v100 = *(v95 + 40);
  v101 = *(v95 + 48);

  sub_1AACD7304(v96, v97, v98);
  sub_1AACD7C50(v99, v100, v101);

  sub_1AACD7304(v96, v97, v98);
  v102 = v100;
  v31 = v309;
  sub_1AACD7C50(v99, v102, v101);
  v103 = MEMORY[0x1E69810C8];
  v104 = MEMORY[0x1E69E62F8];
  sub_1AAE5ECA8(&v465, v324, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  sub_1AADFA6FC(&v466, v324);
  v105 = v297;
  sub_1AACD7C50(v297, v93, v94);
  *&v106 = COERCE_DOUBLE(sub_1AAE0B2C8(1, v31, v105, v93, v94));
  v108 = v107;
  sub_1AAD6E0DC(&v466);
  sub_1AAE5ED98(&v465, &qword_1ED9B1E40, v103, v104);
  sub_1AAD0E818(v105, v93, v94);

  if (v108)
  {
    v109 = NAN;
  }

  else
  {
    v109 = *&v106;
  }

  v6 = v300;
  v12 = v301;
  v8 = v308;
  v26 = v298;
  v27 = v299;
LABEL_35:
  if ((v306 & 1) == 0)
  {
    sub_1AADC7F60(&v420);
    sub_1AADC7F60(&v411);
    sub_1AADC7F60(&v411);
    sub_1AADC7F60(&v420);
    if (v27 == 255)
    {
      v153 = &v12[v8[17]];
      if (*(v153 + 3))
      {
        v155 = *(v153 + 4);
        v154 = *(v153 + 5);
        v306 = v153[48];
        v307 = v154;
        sub_1AACD7C50(v155, v154, v306);
      }

      else
      {
        v155 = 0;
        v306 = 252;
        v307 = 0;
      }

      v299 = v27;
      v300 = v6;
      v194 = &v12[*(v308 + 72)];
      if (*(v194 + 3))
      {
        v195 = v194[48];
        v196 = *(v194 + 4);
        v197 = *(v194 + 5);
        sub_1AACD7C50(v196, v197, v194[48]);
        v27 = v195 | 0x8000000000000000;
      }

      else
      {
        v196 = 0;
        v197 = 0;
        v27 = 0x80000000000000FCLL;
      }

      v198 = v26;
      v199 = v12;
      v200 = &v12[*(v308 + 80)];
      if (*(v200 + 3))
      {
        v201 = v200[48];
        v203 = *(v200 + 4);
        v202 = *(v200 + 5);
        sub_1AACD7C50(v203, v202, v201);
      }

      else
      {
        v203 = 0;
        v202 = 0;
        v201 = -4;
      }

      *&v336[0] = v155;
      *(&v336[0] + 1) = v307;
      *&v336[1] = v306;
      *(&v336[1] + 1) = v196;
      *&v337 = v197;
      *(&v337 + 1) = v27;
      *&v338 = v203;
      *(&v338 + 1) = v202;
      LOBYTE(v339) = v201;
      v140 = v199;
      v139 = v309;
      LOBYTE(v27) = v299;
      v141 = v300;
      v142 = v304;
      v143 = v198;
    }

    else
    {
      v139 = v31;
      v140 = v12;
      v141 = v6;
      v142 = v304;
      *&v336[0] = v304;
      *(&v336[0] + 1) = v26;
      *&v336[1] = v27;
      *(&v337 + 1) = 0;
      v143 = v26;
    }

    v311[0] = v337;
    v311[1] = v338;
    LOBYTE(v311[2]) = v339;
    v310[0] = v336[0];
    v310[1] = v336[1];
    v204 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineSeriesContext;
    swift_beginAccess();
    v205 = v139;
    v206 = *(v139 + v204);
    v207 = *(v206 + 16);
    sub_1AAE49370(v142, v143, v27);
    if (v207 && (v208 = sub_1AADB0B14(v310), (v209 & 1) != 0))
    {
      v210 = *(*(v206 + 56) + 8 * v208);
    }

    else
    {
      type metadata accessor for SgLine.Points();
      v210 = swift_allocObject();
      *(v210 + 16) = MEMORY[0x1E69E7CC0];
      sub_1AAD9B8B0(v336, &v391);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v391 = *(v205 + v204);
      *(v205 + v204) = 0x8000000000000000;
      sub_1AADD2C2C(v210, v310, isUniquelyReferenced_nonNull_native);
      sub_1AAE5ED18(v336);
      *(v205 + v204) = v391;
    }

    v212 = v141;
    swift_endAccess();
    sub_1AAE5ED18(v336);
    swift_beginAccess();
    v213 = *(*(v210 + 16) + 16);
    v214 = *(*(v205 + 16) + 24);
    *(&v392[2] + 1) = 0;
    *(&v392[1] + 8) = 0u;
    *(v392 + 8) = 0u;
    LOBYTE(v392[3]) = -1;
    *&v391 = v214;
    *(&v391 + 1) = v57;
    *v392 = v109;
    *&v392[4] = 0;
    *(&v392[3] + 1) = 0;
    BYTE8(v392[4]) = -1;
    v12 = v140;
    sub_1AAE5ECA8((v140 + 88), &v405, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    if (BYTE8(v406[1]) == 255)
    {
      sub_1AAE5ED98(&v405, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    }

    else
    {
      *v324 = v405;
      *&v324[16] = v406[0];
      *&v324[25] = *(v406 + 9);
      sub_1AAE5ED98(v392 + 8, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
      *(v392 + 8) = *v324;
      *(&v392[1] + 8) = *&v324[16];
      *(&v392[2] + 1) = *&v324[25];
      v215 = v140[152];
      if (v215 == 255)
      {
        *(&v392[3] + 8) = xmmword_1AAFA9FD0;
        BYTE8(v392[4]) = 0;
      }

      else
      {
        *(&v392[3] + 8) = *(v140 + 136);
        BYTE8(v392[4]) = v215;
      }
    }

    sub_1AAE5EDF4(&v391, v324);
    swift_beginAccess();
    v216 = *(v210 + 16);
    v217 = swift_isUniquelyReferenced_nonNull_native();
    *(v210 + 16) = v216;
    if ((v217 & 1) == 0)
    {
      v216 = sub_1AAD69968(0, *(v216 + 2) + 1, 1, v216);
      *(v210 + 16) = v216;
    }

    v219 = *(v216 + 2);
    v218 = *(v216 + 3);
    if (v219 >= v218 >> 1)
    {
      v216 = sub_1AAD69968((v218 > 1), v219 + 1, 1, v216);
    }

    *(v216 + 2) = v219 + 1;
    v220 = &v216[96 * v219];
    v221 = *&v324[16];
    *(v220 + 2) = *v324;
    *(v220 + 3) = v221;
    v222 = *&v324[32];
    v223 = *&v324[48];
    v224 = *&v324[64];
    *(v220 + 105) = *&v324[73];
    *(v220 + 5) = v223;
    *(v220 + 6) = v224;
    *(v220 + 4) = v222;
    *(v210 + 16) = v216;
    swift_endAccess();
    if (v213)
    {

      v225 = 0xE000000000000000;
    }

    else
    {
      v226 = sub_1AAE63890(&v411, &v420);
      v227 = v308;
      v228 = &v140[*(v308 + 48)];
      v229 = *v228;
      v230 = v228[8];
      v231 = v140;
      v232 = v302;
      sub_1AAE4911C(v231, v302);
      v233 = v303;
      sub_1AAD0F2A4(v232, &v303[*(v212 + 32)]);
      v234 = *&v12[*(v227 + 64)];
      *v233 = 0;
      *(v233 + 8) = v210;
      *(v233 + 16) = v226;
      *(v233 + 24) = v229;
      *(v233 + 32) = v230;
      *(v233 + *(v212 + 36)) = v234;
      v235 = swift_allocBox();
      sub_1AAE5EEA4(v233, v236);
      v225 = v235 | 0x7000000000000000;
    }

    *v305 = v225;
    sub_1AAE5EE50(&v391);
    return sub_1AAE492C0(v12, type metadata accessor for ChartContentRenderContext.Environment);
  }

  v114 = &v411;
  LODWORD(v306) = sub_1AAE63890(&v411, &v420);
  v115 = sub_1AAE63890(&v411, &v420);
  v116 = sub_1AAE63890(&v411, &v420);
  if (v116)
  {
    v117 = &v411;
  }

  else
  {
    v117 = &v420;
  }

  if (v116)
  {
    v114 = &v420;
  }

  sub_1AADC7F60(v117);
  sub_1AADC7F60(v114);
  v118 = v117[7];
  v393 = v117[6];
  v394 = v118;
  v119 = v117[8];
  v120 = v117[3];
  v392[1] = v117[2];
  v392[2] = v120;
  v121 = v117[4];
  v392[4] = v117[5];
  v392[3] = v121;
  v122 = *v117;
  v392[0] = v117[1];
  v391 = v122;
  v123 = v114[6];
  v124 = v114[7];
  v125 = v114[4];
  v401 = v114[5];
  v402 = v123;
  v126 = v114[8];
  v403 = v124;
  v404 = v126;
  v127 = v114[2];
  v128 = v114[3];
  v129 = *v114;
  v397 = v114[1];
  v398 = v127;
  v399 = v128;
  v400 = v125;
  v395 = v119;
  v396 = v129;
  v435 = v393;
  v436 = v394;
  v437 = v119;
  v431 = v392[1];
  v432 = v392[2];
  v434 = v392[4];
  v433 = v392[3];
  v430 = v392[0];
  v429 = v391;
  v452[6] = v402;
  v452[7] = v403;
  v452[8] = v404;
  v452[2] = v127;
  v452[3] = v128;
  v452[5] = v401;
  v452[4] = v125;
  v452[1] = v397;
  v452[0] = v129;
  sub_1AAD6D0FC(0);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_1AAFA9FE0;
  sub_1AAD5835C(v452, v324);
  sub_1AAF72B20(v115, v452, &v405);
  v131 = v406[4];
  *(v130 + 96) = v406[3];
  *(v130 + 112) = v131;
  v132 = v406[2];
  *(v130 + 64) = v406[1];
  *(v130 + 80) = v132;
  *(v130 + 176) = v407;
  v133 = v406[7];
  *(v130 + 144) = v406[6];
  *(v130 + 160) = v133;
  *(v130 + 128) = v406[5];
  v134 = v406[0];
  *(v130 + 32) = v405;
  *(v130 + 48) = v134;
  v135 = &v12[v8[17]];
  v136 = *(v135 + 3);
  v388 = *(v135 + 2);
  v389 = v136;
  v390 = *(v135 + 8);
  v137 = *v135;
  v387 = *(v135 + 1);
  v386 = v137;
  if (*(&v387 + 1))
  {
    *(v336 + 7) = *v135;
    v138 = *(v135 + 3);
    *(v311 + 8) = *(v135 + 2);
    *(&v336[1] + 7) = *(v135 + 2);
    *(&v311[1] + 8) = v138;
    *(&v311[2] + 1) = *(v135 + 8);
    LOBYTE(v310[0]) = 5;
    *(v310 + 1) = v336[0];
    v310[1] = *(v336 + 15);
    *&v311[0] = *(&v387 + 1);
    LOBYTE(v312[0]) = 3;
    sub_1AAE0C0B0(v310);
    *&v324[96] = v312[1];
    *&v324[112] = v313;
    *&v324[128] = v314;
    *&v324[144] = v315;
    *&v324[32] = v311[0];
    *&v324[48] = v311[1];
    *&v324[64] = v311[2];
    *&v324[80] = v312[0];
    *v324 = v310[0];
    *&v324[16] = v310[1];
    nullsub_1();
    v382 = *&v324[96];
    v383 = *&v324[112];
    v384 = *&v324[128];
    v385 = *&v324[144];
    v378 = *&v324[32];
    v379 = *&v324[48];
    v380 = *&v324[64];
    v381 = *&v324[80];
    v376 = *v324;
    v377 = *&v324[16];
  }

  else
  {
    sub_1AAE2D7EC(&v376);
  }

  v144 = v381;
  *(v130 + 248) = v380;
  v145 = v378;
  *(v130 + 232) = v379;
  *(v130 + 216) = v145;
  v146 = v384;
  v147 = v382;
  *(v130 + 296) = v383;
  *(v130 + 312) = v146;
  *(v130 + 328) = v385;
  *(v130 + 264) = v144;
  *(v130 + 280) = v147;
  v148 = v377;
  *(v130 + 184) = v376;
  *(v130 + 200) = v148;
  v149 = &v12[v8[18]];
  v150 = *(v149 + 3);
  v373 = *(v149 + 2);
  v374 = v150;
  v375 = *(v149 + 8);
  v151 = *v149;
  v372 = *(v149 + 1);
  v371 = v151;
  if (*(&v372 + 1))
  {
    *(v336 + 7) = *v149;
    v152 = *(v149 + 3);
    *(v311 + 8) = *(v149 + 2);
    *(&v336[1] + 7) = *(v149 + 2);
    *(&v311[1] + 8) = v152;
    *(&v311[2] + 1) = *(v149 + 8);
    LOBYTE(v310[0]) = 6;
    *(v310 + 1) = v336[0];
    v310[1] = *(v336 + 15);
    *&v311[0] = *(&v372 + 1);
    LOBYTE(v312[0]) = 3;
    sub_1AAE0C0B0(v310);
    *&v324[96] = v312[1];
    *&v324[112] = v313;
    *&v324[128] = v314;
    *&v324[144] = v315;
    *&v324[32] = v311[0];
    *&v324[48] = v311[1];
    *&v324[64] = v311[2];
    *&v324[80] = v312[0];
    *v324 = v310[0];
    *&v324[16] = v310[1];
    nullsub_1();
    v367 = *&v324[96];
    v368 = *&v324[112];
    v369 = *&v324[128];
    v370 = *&v324[144];
    v363 = *&v324[32];
    v364 = *&v324[48];
    v365 = *&v324[64];
    v366 = *&v324[80];
    v361 = *v324;
    v362 = *&v324[16];
  }

  else
  {
    sub_1AAE2D7EC(&v361);
  }

  v156 = v366;
  *(v130 + 400) = v365;
  *(v130 + 416) = v156;
  v157 = v364;
  *(v130 + 368) = v363;
  *(v130 + 384) = v157;
  *(v130 + 480) = v370;
  v158 = v369;
  v159 = v367;
  *(v130 + 448) = v368;
  *(v130 + 464) = v158;
  *(v130 + 432) = v159;
  v160 = v362;
  *(v130 + 336) = v361;
  *(v130 + 352) = v160;
  v161 = &v12[v8[20]];
  v162 = *(v161 + 3);
  v358 = *(v161 + 2);
  v359 = v162;
  v360 = *(v161 + 8);
  v163 = *v161;
  v357 = *(v161 + 1);
  v356 = v163;
  if (*(&v357 + 1))
  {
    *(v336 + 7) = *v161;
    v164 = *(v161 + 3);
    *(v311 + 8) = *(v161 + 2);
    *(&v336[1] + 7) = *(v161 + 2);
    *(&v311[1] + 8) = v164;
    *(&v311[2] + 1) = *(v161 + 8);
    LOBYTE(v310[0]) = 8;
    *(v310 + 1) = v336[0];
    v310[1] = *(v336 + 15);
    *&v311[0] = *(&v357 + 1);
    LOBYTE(v312[0]) = 3;
    sub_1AAE0C0B0(v310);
    *&v324[96] = v312[1];
    *&v324[112] = v313;
    *&v324[128] = v314;
    *&v324[144] = v315;
    *&v324[32] = v311[0];
    *&v324[48] = v311[1];
    *&v324[64] = v311[2];
    *&v324[80] = v312[0];
    *v324 = v310[0];
    *&v324[16] = v310[1];
    nullsub_1();
    v352 = *&v324[96];
    v353 = *&v324[112];
    v354 = *&v324[128];
    v355 = *&v324[144];
    v348 = *&v324[32];
    v349 = *&v324[48];
    v350 = *&v324[64];
    v351 = *&v324[80];
    v346 = *v324;
    v347 = *&v324[16];
  }

  else
  {
    sub_1AAE2D7EC(&v346);
  }

  *(v130 + 632) = v355;
  v165 = v353;
  *(v130 + 584) = v352;
  *(v130 + 600) = v165;
  *(v130 + 616) = v354;
  v166 = v349;
  *(v130 + 520) = v348;
  *(v130 + 536) = v166;
  v167 = v351;
  *(v130 + 552) = v350;
  *(v130 + 568) = v167;
  v168 = v347;
  *(v130 + 488) = v346;
  *(v130 + 504) = v168;
  v169 = MEMORY[0x1E69E6720];
  sub_1AAE5ECA8(&v386, v324, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
  sub_1AAE5ECA8(&v371, v324, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v169);
  sub_1AAE5ECA8(&v356, v324, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v169);
  v303 = sub_1AAF70438(v130);
  v304 = v170;
  swift_setDeallocating();
  sub_1AAE5ED48(0, qword_1ED9B2098, &type metadata for AccessibilityDataField, v169);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v453[6] = v435;
  v453[7] = v436;
  v453[8] = v437;
  v453[2] = v431;
  v453[3] = v432;
  v453[5] = v434;
  v453[4] = v433;
  v453[1] = v430;
  v453[0] = v429;
  result = sub_1AACDB99C(v453);
  if (!result)
  {
    v172 = sub_1AACD2C84(v453);
    v468 = *v172;
    v173 = *(v172 + 24);
    v469 = *(v172 + 16);
    v454 = *(v172 + 32);
    v455 = *(v172 + 48);
    v438 = v468;
    v439 = v469;
    v440 = v173;
    v441 = v454;
    v442 = v455;
    *&v443[15] = *(v172 + 64);
    *v443 = *(v172 + 49);
    v471 = v468;
    v472 = v469;
    v470 = v173;
    v474 = v455;
    v473 = v454;
    if (v306)
    {
      swift_beginAccess();
      memcpy(v324, (v31 + 80), sizeof(v324));
      if (*&v324[24])
      {
        v174 = *(v31 + 128);
        v329 = *(v31 + 112);
        v330 = v174;
        v331 = *(v31 + 144);
        LOBYTE(v332[0]) = *(v31 + 160);
        v175 = *(v31 + 96);
        v327 = *(v31 + 80);
        v328 = v175;

        sub_1AADFA6FC(&v471, v310);
        sub_1AAE5ECA8(&v470, v310, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AAE14D50(&v473, v310);
        sub_1AAD5835C(&v429, v310);
        v320 = v329;
        v321 = v330;
        v322 = v331;
        v323 = v332[0];
        v318 = v327;
        v319 = v328;
LABEL_58:
        v176 = *(&v322 + 1);
        v177 = v320;
        v178 = v321;
        v179 = v323;
        sub_1AAE5ECA8(v324, v310, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AAE0BFDC(&v318, v310);
        sub_1AAE0A738(v177, *(&v177 + 1), v178, v176, v179, 3, &v408);
        v309 = v408;
        v302 = v409;
        v180 = v410;
        sub_1AAE0C014(&v318);
        sub_1AAD04750(v318, *(&v318 + 1), v319);

        sub_1AAD0E818(v177, *(&v177 + 1), v178);
        v181 = v302;
        v182 = v309;
        v8 = v308;
        goto LABEL_103;
      }

      v192 = v324[257];

      if (v192 == 2)
      {
        sub_1AADFA6FC(&v471, v310);
        sub_1AAE5ECA8(&v470, v310, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AAE14D50(&v473, v310);
        sub_1AAD5835C(&v429, v310);
      }

      else
      {
        sub_1AADFA6FC(&v471, v310);
        sub_1AAE5ECA8(&v470, v310, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AAE14D50(&v473, v310);
        sub_1AAD5835C(&v429, v310);
        sub_1AACBB21C(v324, v310);
        v237 = sub_1AAF8E7A4();
        if (v237 == sub_1AAF8E7A4())
        {
          sub_1AAE5ECA8(&v324[176], v310, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
          sub_1AACBB254(v324);
          if (*&v324[200])
          {
            v318 = *&v324[176];
            v319 = *&v324[192];
            v320 = *&v324[208];
            v321 = *&v324[224];
            v322 = *&v324[240];
            v323 = v324[256];
            goto LABEL_58;
          }
        }

        else
        {
          sub_1AACBB254(v324);
        }
      }

      v182 = 0uLL;
      v180 = 2;
      v181 = 0uLL;
LABEL_103:
      v239 = v307 + v8[21];
      v240 = *(v239 + 16);
      v446 = *v239;
      v447 = v240;
      v448 = v182;
      v449 = v181;
      v450 = v180;
      v451 = *(v31 + 352);
      v242 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
      v241 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
      v310[0] = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
      v310[1] = v242;
      v311[0] = v241;
      v244 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
      v243 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
      v245 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
      *(v312 + 9) = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
      v311[2] = v244;
      v312[0] = v243;
      v311[1] = v245;
      if (BYTE8(v312[1]) == 255)
      {
LABEL_104:

        sub_1AAD6E0DC(&v471);
        sub_1AAE5ED98(&v470, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
        sub_1AAE49270(v336);
LABEL_109:
        sub_1AAD6E18C(&v473);
        *&v324[128] = v343;
        *&v324[144] = v344;
        *&v324[160] = v345;
        *&v324[64] = v339;
        *&v324[80] = v340;
        *&v324[96] = v341;
        *&v324[112] = v342;
        *v324 = v336[0];
        *&v324[16] = v336[1];
        *&v324[32] = v337;
        *&v324[48] = v338;
        if (sub_1AAE492A8(v324) == 1)
        {
          sub_1AADC7F60(&v429);

          sub_1AADC7F60(v452);
          sub_1AAD6E0DC(&v471);
          sub_1AAE5ED98(&v470, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
          sub_1AAD6E18C(&v473);
          v253 = 0xE000000000000000;
        }

        else
        {
          if (sub_1AAE63890(&v411, &v420))
          {
            if (*(v307 + v8[26]))
            {
              v255 = *(v31 + 40);
              v256 = *(v31 + 48);
              if (v256 >= v255)
              {
                v109 = *(v31 + 40);
              }

              else
              {
                v109 = *(v31 + 48);
              }

              v257 = vabdd_f64(v256, v255);
              v258 = 0.0;
            }

            else
            {
              if (*&v324[8] >= *v324)
              {
                v57 = *v324;
              }

              else
              {
                v57 = *&v324[8];
              }

              v261 = *(v31 + 40);
              v262 = *(v31 + 48);
              if (v262 >= v261)
              {
                v109 = *(v31 + 40);
              }

              else
              {
                v109 = *(v31 + 48);
              }

              v258 = vabdd_f64(*&v324[8], *v324);
              v257 = vabdd_f64(v262, v261);
            }
          }

          else if (*(v307 + v8[26]))
          {
            v259 = *(v31 + 24);
            v260 = *(v31 + 32);
            if (v260 >= v259)
            {
              v57 = *(v31 + 24);
            }

            else
            {
              v57 = *(v31 + 32);
            }

            v258 = vabdd_f64(v260, v259);
            v257 = 0.0;
          }

          else
          {
            v263 = *(v31 + 24);
            v264 = *(v31 + 32);
            if (v264 >= v263)
            {
              v57 = *(v31 + 24);
            }

            else
            {
              v57 = *(v31 + 32);
            }

            if (*&v324[8] >= *v324)
            {
              v109 = *v324;
            }

            else
            {
              v109 = *&v324[8];
            }

            v258 = vabdd_f64(v264, v263);
            v257 = vabdd_f64(*&v324[8], *v324);
          }

          *&v309 = *(*(v31 + 16) + 24);
          v265 = v8[24];
          v266 = &v12[v8[25]];
          *&v302 = *(v266 + 1);
          v267 = &v12[v8[23]];
          v268 = *v267;
          v269 = v267[1];
          v270 = v12;
          v272 = v267[2];
          v271 = v267[3];
          v274 = *&v270[v265];
          v273 = *&v270[v265 + 8];
          v276 = *&v270[v265 + 24];
          v307 = *&v270[v265 + 16];
          v275 = v307;
          *&v254 = *v266;
          v308 = v254;

          sub_1AADA61DC(v268, v269, v272, v271);
          sub_1AADA61DC(v274, v273, v275, v276);
          v277 = v303;

          sub_1AAF72B20((v306 & 1) == 0, &v429, v325);
          sub_1AADC7F60(v452);
          sub_1AAD6E0DC(&v471);
          sub_1AAE5ED98(&v470, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
          sub_1AAD6E18C(&v473);

          v332[1] = *&v324[112];
          v333 = *&v324[128];
          v334 = *&v324[144];
          v335 = *&v324[160];
          v329 = *&v324[48];
          v330 = *&v324[64];
          v331 = *&v324[80];
          v332[0] = *&v324[96];
          v327 = *&v324[16];
          v328 = *&v324[32];
          nullsub_1();
          sub_1AAE2D7EC(v310);
          v278 = swift_allocObject();
          *(v278 + 16) = v309;
          *(v278 + 24) = v57;
          *(v278 + 32) = v109;
          *(v278 + 40) = v258;
          *(v278 + 48) = v257;
          *&v279 = v308;
          *(&v279 + 1) = v302;
          *&v280 = v268;
          *(&v280 + 1) = v269;
          *(v278 + 72) = v280;
          *&v280 = v272;
          v12 = v270;
          *(&v280 + 1) = v271;
          *&v281 = v274;
          *(&v281 + 1) = v273;
          *(v278 + 56) = v279;
          *(v278 + 104) = v281;
          *(v278 + 88) = v280;
          *(v278 + 120) = v307;
          *(v278 + 128) = v276;
          *(v278 + 136) = v277;
          v282 = v325[7];
          *(v278 + 240) = v325[6];
          *(v278 + 256) = v282;
          *(v278 + 272) = v325[8];
          v283 = v326;
          v284 = v325[3];
          *(v278 + 176) = v325[2];
          *(v278 + 192) = v284;
          v285 = v325[5];
          *(v278 + 208) = v325[4];
          *(v278 + 224) = v285;
          v286 = v325[1];
          *(v278 + 144) = v325[0];
          *(v278 + 160) = v286;
          v287 = v304;
          *(v278 + 288) = v283;
          *(v278 + 296) = v287;
          v288 = v333;
          *(v278 + 400) = v332[1];
          *(v278 + 416) = v288;
          *(v278 + 432) = v334;
          *(v278 + 448) = v335;
          v289 = v330;
          *(v278 + 336) = v329;
          *(v278 + 352) = v289;
          v290 = v332[0];
          *(v278 + 368) = v331;
          *(v278 + 384) = v290;
          v291 = v328;
          *(v278 + 304) = v327;
          *(v278 + 320) = v291;
          v292 = v313;
          *(v278 + 552) = v312[1];
          *(v278 + 568) = v292;
          *(v278 + 584) = v314;
          *(v278 + 600) = v315;
          v293 = v311[1];
          *(v278 + 488) = v311[0];
          *(v278 + 504) = v293;
          v294 = v312[0];
          *(v278 + 520) = v311[2];
          *(v278 + 536) = v294;
          v295 = v310[1];
          *(v278 + 456) = v310[0];
          *(v278 + 472) = v295;
          *(v278 + 608) = 257;
          *(v278 + 610) = v316;
          *(v278 + 614) = v317;
          *(v278 + 616) = 0;
          v253 = v278 | 0xC000000000000000;
        }

        *v305 = v253;
        return sub_1AAE492C0(v12, type metadata accessor for ChartContentRenderContext.Environment);
      }

LABEL_108:
      v331 = v311[2];
      v332[0] = v312[0];
      *(v332 + 9) = *(v312 + 9);
      v327 = v310[0];
      v328 = v310[1];
      v330 = v311[1];
      v329 = v311[0];
      v444[1] = v310[1];
      v444[0] = v310[0];
      *(v445 + 9) = *(v312 + 9);
      v444[2] = v311[0];
      v444[3] = v311[1];
      v445[0] = v312[0];
      v444[4] = v311[2];
      sub_1AAE5ECA8(&v327, &v316, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      sub_1AAE08D1C(v444, v31, (v306 & 1) == 0, &v438, v336);
      sub_1AAE492C0(v310, sub_1AACCF364);
      nullsub_1();

      sub_1AAD6E0DC(&v471);
      sub_1AAE5ED98(&v470, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      goto LABEL_109;
    }

    v301 = v12;
    swift_beginAccess();
    memcpy(v324, (v31 + 80), sizeof(v324));
    if (*&v324[112])
    {
      v183 = *(v31 + 216);
      v329 = *(v31 + 200);
      v330 = v183;
      v331 = *(v31 + 232);
      LOBYTE(v332[0]) = *(v31 + 248);
      v184 = *(v31 + 184);
      v327 = *(v31 + 168);
      v328 = v184;

      sub_1AADFA6FC(&v471, v310);
      sub_1AAE5ECA8(&v470, v310, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v473, v310);
      sub_1AAD5835C(&v429, v310);
      v320 = v329;
      v321 = v330;
      v322 = v331;
      v323 = v332[0];
      v318 = v327;
      v319 = v328;
LABEL_61:
      v185 = *(&v322 + 1);
      v186 = v320;
      v187 = v321;
      v188 = v323;
      sub_1AAE5ECA8(&v324[88], v310, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
      sub_1AAE0BFDC(&v318, v310);
      sub_1AAE0A738(v186, *(&v186 + 1), v187, v185, v188, 4, &v408);
      v309 = v408;
      v302 = v409;
      v189 = v410;
      sub_1AAE0C014(&v318);
      sub_1AAD04750(v318, *(&v318 + 1), v319);

      sub_1AAD0E818(v186, *(&v186 + 1), v187);
      v190 = v302;
      v191 = v309;
      v8 = v308;
      goto LABEL_107;
    }

    v193 = v324[257];

    if (v193 == 2)
    {
      sub_1AADFA6FC(&v471, v310);
      sub_1AAE5ECA8(&v470, v310, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v473, v310);
      sub_1AAD5835C(&v429, v310);
    }

    else
    {
      sub_1AADFA6FC(&v471, v310);
      sub_1AAE5ECA8(&v470, v310, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
      sub_1AAE14D50(&v473, v310);
      sub_1AAD5835C(&v429, v310);
      sub_1AACBB21C(v324, v310);
      v238 = sub_1AAF8E7A4();
      if (v238 == sub_1AAF8E7A4())
      {
        sub_1AAE5ECA8(&v324[176], v310, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
        sub_1AACBB254(v324);
        if (*&v324[200])
        {
          v318 = *&v324[176];
          v319 = *&v324[192];
          v320 = *&v324[208];
          v321 = *&v324[224];
          v322 = *&v324[240];
          v323 = v324[256];
          v31 = v309;
          goto LABEL_61;
        }
      }

      else
      {
        sub_1AACBB254(v324);
      }
    }

    v191 = 0uLL;
    v189 = 2;
    v190 = 0uLL;
    v31 = v309;
LABEL_107:
    v246 = v307 + v8[22];
    v247 = *(v246 + 16);
    v446 = *v246;
    v447 = v247;
    v448 = v191;
    v449 = v190;
    v450 = v189;
    v451 = *(v31 + 368);
    v249 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
    v248 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
    v310[0] = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
    v310[1] = v249;
    v311[0] = v248;
    v251 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
    v250 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
    v252 = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
    *(v312 + 9) = *(v31 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
    v311[2] = v251;
    v312[0] = v250;
    v311[1] = v252;
    v12 = v301;
    if (BYTE8(v312[1]) == 255)
    {
      goto LABEL_104;
    }

    goto LABEL_108;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAE5E57C(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[7];
  v15[6] = a1[6];
  v15[7] = v2;
  v3 = a1[9];
  v15[8] = a1[8];
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = a1[5];
  v15[4] = a1[4];
  v15[5] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v7 = a1[14];
  v8 = a1[16];
  v9 = a1[17];
  v16[6] = a1[15];
  v16[7] = v8;
  v16[8] = v9;
  v10 = a1[10];
  v11 = a1[12];
  v12 = a1[13];
  v16[2] = a1[11];
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v7;
  v16[0] = v3;
  v16[1] = v10;
  v13 = *a2;
  result = sub_1AACD2B20(v15, v16);
  if (*(v13 + 1264) == 1)
  {
    *(v13 + 1265) = 1;
  }

  return result;
}

void sub_1AAE5E610(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 40);
  v7 = *(v2 + 16);
  if ((v6 & 0x8000000000000000) == 0)
  {
    MEMORY[0x1AC5992C0](0);
    v8 = a1;
    v9 = v5;
    v10 = v4;
    v11 = v7;
LABEL_3:

    sub_1AAE86E08(v8, v9, v10, v11);
    return;
  }

  v13 = *(v2 + 24);
  v12 = *(v2 + 32);
  v15 = *(v2 + 48);
  v14 = *(v2 + 56);
  v16 = *(v2 + 64);
  MEMORY[0x1AC5992C0](1);
  if (v7 < 0xFCu)
  {
    sub_1AAF906B4();
    if ((v7 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);
      sub_1AACDC020(a1, v5, v4, v7 & 1);
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      sub_1AAE86E08(a1, v5, v4, v7);
    }
  }

  else
  {
    sub_1AAF906B4();
  }

  if (v6 <= 0xFBu)
  {
    sub_1AAF906B4();
    if ((v6 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);
      sub_1AACDC020(a1, v13, v12, v6 & 1);
      if (v16 <= 0xFB)
      {
        goto LABEL_18;
      }
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      sub_1AAE86E08(a1, v13, v12, v6);
      if (v16 <= 0xFB)
      {
        goto LABEL_18;
      }
    }

LABEL_16:
    sub_1AAF906B4();
    return;
  }

  sub_1AAF906B4();
  if (v16 > 0xFB)
  {
    goto LABEL_16;
  }

LABEL_18:
  sub_1AAF906B4();
  if ((v16 & 0x80) == 0)
  {
    MEMORY[0x1AC5992C0](0);
    v8 = a1;
    v9 = v15;
    v10 = v14;
    v11 = v16;
    goto LABEL_3;
  }

  MEMORY[0x1AC5992C0](1);

  sub_1AACDC020(a1, v15, v14, v16 & 1);
}

uint64_t sub_1AAE5E804()
{
  sub_1AAF90694();
  sub_1AAE5E610(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAE5E848(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AAE5E610(v2);
  return sub_1AAF906F4();
}

BOOL sub_1AAE5E884(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AAE5E8E0(v7, v9);
}

BOOL sub_1AAE5E8E0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 40);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if ((*(a2 + 40) & 0x8000000000000000) != 0)
    {
      return 0;
    }

    v8 = *a2;
    v9 = *(a2 + 16);
    if (!v6)
    {
      if (!*(a2 + 16))
      {
        return v4 == v8;
      }

      return 0;
    }

    if (v6 == 1)
    {
      if (v9 == 1)
      {
        return v4 == v8;
      }

      return 0;
    }

    if (v9 != 2)
    {
      return 0;
    }

    if (*&v4 == *&v8 && v5 == *(a2 + 8))
    {
      return 1;
    }

    return (sub_1AAF904F4() & 1) != 0;
  }

  v10 = *(a2 + 40);
  if ((v10 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  v14 = *(a1 + 48);
  v13 = *(a1 + 56);
  v15 = *(a1 + 64);
  v17 = *(a2 + 24);
  v16 = *(a2 + 32);
  v19 = *(a2 + 48);
  v18 = *(a2 + 56);
  v20 = *(a2 + 16);
  v21 = *(a2 + 64);
  if (*(a1 + 16) <= 0xFBu)
  {
    if (v20 > 0xFBu)
    {
      return 0;
    }

    v23 = *a2;
    v24 = *(a2 + 8);
    if ((v6 & 0x80) != 0)
    {
      if ((v20 & 0x80) == 0)
      {
        return 0;
      }

      if (v6)
      {
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v20)
      {
        return 0;
      }

      v29 = v4;
      result = 0;
      if (v29 != v23)
      {
        return result;
      }

      v26 = *(a1 + 8);
      v27 = v24;
    }

    else
    {
      if ((v20 & 0x80) != 0)
      {
        return 0;
      }

      if (*(a1 + 16))
      {
        if (*(a1 + 16) != 1)
        {
          if (v20 != 2)
          {
            return 0;
          }

          if (*&v4 != *&v23 || v5 != *&v24)
          {
            v35 = *(a2 + 56);
            v36 = *(a1 + 56);
            v28 = sub_1AAF904F4();
            v18 = v35;
            v13 = v36;
            if ((v28 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_10;
        }

        v25 = v4;
        result = 0;
        if (v20 != 1)
        {
          return result;
        }
      }

      else
      {
        v25 = v4;
        result = 0;
        if (v20)
        {
          return result;
        }
      }

      v26 = v25;
      v27 = v23;
    }

    if (v26 != v27)
    {
      return result;
    }
  }

  else if (v20 <= 0xFBu)
  {
    return 0;
  }

LABEL_10:
  if (v7 > 0xFBu)
  {
    if (v10 <= 0xFBu)
    {
      return 0;
    }

LABEL_12:
    if (v15 > 0xFB)
    {
      return v21 > 0xFB;
    }

    if (v21 > 0xFB)
    {
      return 0;
    }

    if ((v15 & 0x80) != 0)
    {
      if ((v21 & 0x80) != 0)
      {
        if (v15)
        {
          if ((v21 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v21)
        {
          return 0;
        }

        return v14 == v19 && v13 == v18;
      }

      return 0;
    }

    if ((v21 & 0x80) != 0)
    {
      return 0;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        if (v21 != 2)
        {
          return 0;
        }

        if (*&v14 == *&v19 && *&v13 == *&v18)
        {
          return 1;
        }

        return (sub_1AAF904F4() & 1) != 0;
      }

      if (v21 != 1)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }

    return v14 == v19;
  }

  if (v10 > 0xFBu)
  {
    return 0;
  }

  if ((v7 & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0)
    {
      return 0;
    }

    if (v7)
    {
      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    result = 0;
    if (v12 != v17)
    {
      return result;
    }

    v30 = v11;
    v31 = v16;
LABEL_78:
    if (v30 == v31)
    {
      goto LABEL_12;
    }

    return result;
  }

  if ((v10 & 0x80) != 0)
  {
    return 0;
  }

  if (!v7)
  {
    result = 0;
    if (v10)
    {
      return result;
    }

LABEL_65:
    v30 = v12;
    v31 = v17;
    goto LABEL_78;
  }

  if (v7 != 1)
  {
    if (v10 != 2)
    {
      return 0;
    }

    if (*&v12 != *&v17 || *&v11 != *&v16)
    {
      v32 = v13;
      v33 = v18;
      v34 = sub_1AAF904F4();
      v18 = v33;
      v13 = v32;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_12;
  }

  result = 0;
  if (v10 == 1)
  {
    goto LABEL_65;
  }

  return result;
}

uint64_t sub_1AAE5EC3C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAE5EF08(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAE5ECA8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AAE5ED48(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1AAE5ED48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAE5ED98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AAE5ED48(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAE5EEA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgLine(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AAE5EF08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AAE5EF7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 17);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAE5EFC8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 8;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 49) = 0u;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAE5F044(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40) | (a2 << 63);
  *(result + 16) = *(result + 16);
  *(result + 40) = v2;
  return result;
}

unint64_t sub_1AAE5F070()
{
  result = qword_1ED9B10E0;
  if (!qword_1ED9B10E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B10E0);
  }

  return result;
}

uint64_t LinePlot<A>.body.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0800();
  sub_1AACE0800();
  return (*(v2 + 8))(v4, v1);
}

uint64_t LinePlot.init<A, B, C>(_:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v57 = a8;
  v60 = a6;
  v61 = a3;
  v55 = a5;
  v63 = a9;
  v64 = a2;
  v53 = a1;
  v62 = a10;
  v48 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a10);
  v46 = v17;
  v18 = *(v17 - 8);
  v56 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v52 = &v46 - v19;
  v51 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a5, a8);
  v20 = *(v51 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v23 = &v46 - v22;
  v47 = &v46 - v22;
  v54 = *(a4 - 8);
  v24 = v54;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v27;
  v29 = type metadata accessor for VectorizedLinePlotContent(0, a4, a7, v28);
  v58 = *(v29 - 8);
  v59 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v50 = &v46 - v31;
  (*(v24 + 16))(v27, a1, a4, v30);
  v32 = v51;
  (*(v20 + 16))(v23, v64, v51);
  v33 = v52;
  v34 = v61;
  (*(v18 + 16))(v52, v61, v17);
  v35 = (*(v20 + 80) + 64) & ~*(v20 + 80);
  v36 = (v21 + *(v18 + 80) + v35) & ~*(v18 + 80);
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 2) = a4;
  *(v37 + 3) = v38;
  v39 = v47;
  v40 = v48;
  *(v37 + 4) = v60;
  *(v37 + 5) = v40;
  v41 = v62;
  *(v37 + 6) = v57;
  *(v37 + 7) = v41;
  (*(v20 + 32))(&v37[v35], v39, v32);
  v42 = v46;
  (*(v18 + 32))(&v37[v36], v33, v46);
  v43 = v50;
  sub_1AAE5FB0C(v49, sub_1AAE5F9BC, v37, a4, &type metadata for LineMark, v40, &protocol witness table for LineMark, v50);
  (*(v18 + 8))(v34, v42);
  (*(v20 + 8))(v64, v32);
  (*(v54 + 8))(v53, a4);
  v44 = v59;
  swift_getWitnessTable();
  return (*(v58 + 32))(v63, v43, v44);
}

void *sub_1AAE5F640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v51 = a2;
  v52 = a3;
  v53 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = a6;
  v48 = a10;
  v15 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a10);
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v42 - v16;
  v18 = type metadata accessor for PlottableValue(0, a6, a10, v17);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v45 = &v42 - v19;
  v43 = a8;
  v44 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a5, a8);
  v20 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v22 = &v42 - v21;
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v42 - v25;
  v28 = type metadata accessor for PlottableValue(0, a5, a8, v27);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v42 - v30;
  v32 = *(v23 + 16);
  v32(v26, a1, AssociatedTypeWitness, v29);
  (*(v20 + 16))(v22, v51, v44);
  v33 = v22;
  v34 = v43;
  sub_1AAF30D00(v26, v33, a5, AssociatedTypeWitness, v43, v31);
  (v32)(v26, a1, AssociatedTypeWitness);
  v35 = v46;
  (*(v49 + 16))(v46, v52, v50);
  v36 = v45;
  v37 = v26;
  v38 = v35;
  v39 = v47;
  v40 = v48;
  sub_1AAF30D00(v37, v38, v47, AssociatedTypeWitness, v48, v45);
  LineMark.init<A, B>(x:y:)(v31, v36, a5, v39, v34, v40, v54);
  return memcpy(v53, v54, 0x131uLL);
}

void *sub_1AAE5F9BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[6];
  v6 = v2[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v5) - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v4, v6) - 8);
  return sub_1AAE5F640(a1, v2 + v9, v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), v3, v4, v5, a2, v6);
}

uint64_t sub_1AAE5FB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a4 - 8);
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v20, v17);
  v21 = sub_1AAF311A4(v19, a2, a3, a4, a5, a6, a7, a8);
  return (*(v16 + 8))(a1, a4, v21);
}

uint64_t LinePlot.init<A, B, C, D>(_:x:y:series:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v72 = a7;
  v67 = a6;
  v84 = a4;
  v85 = a2;
  v86 = a3;
  v83 = a1;
  v79 = a9;
  v75 = a12;
  v77 = a8;
  v78 = a13;
  v69 = a11;
  v81 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a13);
  v70 = *(v18 - 8);
  v71 = v18;
  v73 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v60 - v19;
  v82 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a12);
  v80 = *(v82 - 8);
  v20 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v22 = &v60 - v21;
  v63 = &v60 - v21;
  v23 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a11);
  v61 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v60 - v26;
  v62 = &v60 - v26;
  v28 = a5;
  v68 = *(a5 - 8);
  v29 = v68;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v32;
  v76 = type metadata accessor for VectorizedLinePlotContent(0, a5, v81, v33);
  v74 = *(v76 - 8);
  v34 = MEMORY[0x1EEE9AC00](v76);
  v65 = &v60 - v35;
  v36 = *(v29 + 16);
  v60 = a5;
  v36(v32, v83, a5, v34);
  (*(v24 + 16))(v27, v85, v23);
  v37 = v80;
  (*(v80 + 16))(v22, v86, v82);
  v39 = v70;
  v38 = v71;
  v40 = v66;
  (*(v70 + 16))(v66, v84, v71);
  v41 = (*(v24 + 80) + 80) & ~*(v24 + 80);
  v42 = (v25 + *(v37 + 80) + v41) & ~*(v37 + 80);
  v43 = (v20 + *(v39 + 80) + v42) & ~*(v39 + 80);
  v44 = swift_allocObject();
  v45 = v67;
  *(v44 + 2) = v28;
  *(v44 + 3) = v45;
  v46 = v77;
  *(v44 + 4) = v72;
  *(v44 + 5) = v46;
  v47 = v81;
  v48 = v69;
  *(v44 + 6) = v81;
  *(v44 + 7) = v48;
  v49 = v78;
  *(v44 + 8) = v75;
  *(v44 + 9) = v49;
  v50 = &v44[v41];
  v51 = v61;
  (*(v24 + 32))(v50, v62, v61);
  v52 = *(v37 + 32);
  v53 = v82;
  v52(&v44[v42], v63, v82);
  v54 = v38;
  (*(v39 + 32))(&v44[v43], v40, v38);
  v55 = v65;
  v56 = v44;
  v57 = v60;
  sub_1AAE5FB0C(v64, sub_1AAE606DC, v56, v60, &type metadata for LineMark, v47, &protocol witness table for LineMark, v65);
  (*(v39 + 8))(v84, v54);
  (*(v80 + 8))(v86, v53);
  (*(v24 + 8))(v85, v51);
  (*(v68 + 8))(v83, v57);
  v58 = v76;
  swift_getWitnessTable();
  return (*(v74 + 32))(v79, v55, v58);
}

void *sub_1AAE60208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v71 = a3;
  v72 = a4;
  v67 = a2;
  v64 = a1;
  v73 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = a8;
  v68 = a13;
  v17 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a8, a13);
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v55 - v18;
  v20 = type metadata accessor for PlottableValue(0, a8, a13, v19);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v63 = &v55 - v21;
  v59 = a7;
  v60 = a12;
  v22 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a7, a12);
  v61 = *(v22 - 8);
  v62 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v58 = &v55 - v23;
  v25 = type metadata accessor for PlottableValue(0, a7, a12, v24);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v57 = &v55 - v26;
  v27 = a6;
  v74 = a6;
  v56 = type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, a6, a11);
  v28 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v30 = &v55 - v29;
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v55 - v33;
  v55 = a11;
  v36 = type metadata accessor for PlottableValue(0, v27, a11, v35);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v55 - v38;
  v40 = *(v31 + 16);
  v41 = v64;
  v40(v34, v64, AssociatedTypeWitness, v37);
  (*(v28 + 16))(v30, v67, v56);
  sub_1AAF30D00(v34, v30, v74, AssociatedTypeWitness, a11, v39);
  v42 = v41;
  (v40)(v34, v41, AssociatedTypeWitness);
  v43 = v58;
  (*(v61 + 16))(v58, v71, v62);
  v44 = v57;
  v45 = v43;
  v46 = v59;
  v47 = v60;
  sub_1AAF30D00(v34, v45, v59, AssociatedTypeWitness, v60, v57);
  (v40)(v34, v42, AssociatedTypeWitness);
  v48 = v65;
  (*(v69 + 16))(v65, v72, v70);
  v49 = v63;
  v50 = v48;
  v51 = v66;
  v52 = AssociatedTypeWitness;
  v53 = v68;
  sub_1AAF30D00(v34, v50, v66, v52, v68, v63);
  LineMark.init<A, B, C>(x:y:series:)(v39, v44, v49, v74, v46, v51, v55, v47, v75, v53);
  return memcpy(v73, v75, 0x131uLL);
}

void *sub_1AAE606DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v19 = v3;
  v4 = v2[4];
  v18 = v2[5];
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[8];
  v8 = v2[9];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v3, v6) - 8);
  v11 = (*(v10 + 80) + 80) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v4, v7) - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(type metadata accessor for PlottableProjection(0, AssociatedTypeWitness, v18, v8) - 8);
  return sub_1AAE60208(a1, v2 + v11, v2 + v14, v2 + ((v14 + v15 + *(v16 + 80)) & ~*(v16 + 80)), v19, v4, v18, a2, v5, v6, v7, v8);
}

double LinePlot<A>.init(x:y:domain:function:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, __int128 a10, char a11, uint64_t a12, uint64_t a13)
{
  *&v19 = a1;
  *(&v19 + 1) = a2;
  LOBYTE(v20) = a3 & 1;
  *(&v20 + 1) = a4;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  LOBYTE(v22) = a7 & 1;
  *(&v22 + 1) = a8;
  v23 = a10;
  LOBYTE(v24) = a11 & 1;
  *(&v24 + 1) = a12;
  *&v25 = a13;
  sub_1AAE60934(&v19);
  v14 = v24;
  a9[4] = v23;
  a9[5] = v14;
  v15 = v26;
  a9[6] = v25;
  a9[7] = v15;
  v16 = v20;
  *a9 = v19;
  a9[1] = v16;
  result = *&v21;
  v18 = v22;
  a9[2] = v21;
  a9[3] = v18;
  return result;
}

uint64_t sub_1AAE60934(uint64_t result)
{
  v1 = *(result + 80) & 1;
  *(result + 48) &= 1uLL;
  *(result + 80) = v1;
  return result;
}

double LinePlot<A>.init(x:y:domain:function:)@<D0>(_OWORD *a9@<X8>, __int128 a10, char a11, uint64_t a12, uint64_t a13)
{
  *&v25 = sub_1AAF8EA44();
  *(&v25 + 1) = v14;
  LOBYTE(v26) = v15 & 1;
  *(&v26 + 1) = v16;
  *&v27 = sub_1AAF8EA44();
  *(&v27 + 1) = v17;
  LOBYTE(v28) = v18 & 1;
  *(&v28 + 1) = v19;
  v29 = a10;
  LOBYTE(v30) = a11 & 1;
  *(&v30 + 1) = a12;
  *&v31 = a13;
  sub_1AAE60934(&v25);
  v20 = v30;
  a9[4] = v29;
  a9[5] = v20;
  v21 = v32;
  a9[6] = v31;
  a9[7] = v21;
  v22 = v26;
  *a9 = v25;
  a9[1] = v22;
  result = *&v27;
  v24 = v28;
  a9[2] = v27;
  a9[3] = v24;
  return result;
}

double LinePlot<A>.init<A, B>(x:y:domain:function:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a6;
  v47 = a7;
  v44 = a5;
  *(&v45 + 1) = a4;
  *&v45 = a3;
  v40 = a1;
  v15 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  (*(v19 + 16))(&v38[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)], v21);
  v43 = sub_1AAF8EA64();
  v42 = v23;
  v39 = v24;
  v41 = v25;
  (*(v15 + 16))(v17, a2, a10);
  v26 = sub_1AAF8EA64();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  (*(v15 + 8))(a2, a10);
  (*(v19 + 8))(v40, a8);
  v50 = v39 & 1;
  v49 = v30 & 1;
  v48 = v44 & 1;
  *&v51 = v43;
  *(&v51 + 1) = v42;
  LOBYTE(v52) = v39 & 1;
  *(&v52 + 1) = v41;
  *&v53 = v26;
  *(&v53 + 1) = v28;
  LOBYTE(v54) = v30 & 1;
  *(&v54 + 1) = v32;
  v55 = v45;
  LOBYTE(v56) = v44 & 1;
  *(&v56 + 1) = v46;
  *&v57 = v47;
  sub_1AAE60934(&v51);
  v33 = v56;
  a9[4] = v55;
  a9[5] = v33;
  v34 = v58;
  a9[6] = v57;
  a9[7] = v34;
  v35 = v52;
  *a9 = v51;
  a9[1] = v35;
  result = *&v53;
  v37 = v54;
  a9[2] = v53;
  a9[3] = v37;
  return result;
}

double LinePlot<A>.init(x:y:t:domain:function:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, char a13, uint64_t a14, __int128 a15)
{
  *&v21 = a1;
  *(&v21 + 1) = a2;
  LOBYTE(v22) = a3 & 1;
  *(&v22 + 1) = a4;
  *&v23 = a5;
  *(&v23 + 1) = a6;
  LOBYTE(v24) = a7 & 1;
  *(&v24 + 1) = a8;
  v25 = a12;
  LOBYTE(v26) = a13 & 1;
  *(&v26 + 1) = a14;
  *&v27 = a10;
  *(&v27 + 1) = a11;
  v28 = a15;
  sub_1AAE60E1C(&v21);
  v16 = v26;
  a9[4] = v25;
  a9[5] = v16;
  v17 = v28;
  a9[6] = v27;
  a9[7] = v17;
  v18 = v22;
  *a9 = v21;
  a9[1] = v18;
  result = *&v23;
  v20 = v24;
  a9[2] = v23;
  a9[3] = v20;
  return result;
}

uint64_t sub_1AAE60E1C(uint64_t result)
{
  v1 = *(result + 80) & 1 | 0x4000000000000000;
  *(result + 48) &= 1uLL;
  *(result + 80) = v1;
  return result;
}

double LinePlot<A>.init(x:y:t:domain:function:)@<D0>(_OWORD *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, __int128 a16)
{
  *&v33 = sub_1AAF8EA44();
  *(&v33 + 1) = v19;
  LOBYTE(v34) = v20 & 1;
  *(&v34 + 1) = v21;
  *&v35 = sub_1AAF8EA44();
  *(&v35 + 1) = v22;
  LOBYTE(v36) = v23 & 1;
  *(&v36 + 1) = v24;
  *&v37 = sub_1AAF8EA44();
  *(&v37 + 1) = v25;
  LOBYTE(v38) = v26 & 1;
  *(&v38 + 1) = v27;
  *&v39 = a10;
  *(&v39 + 1) = a11;
  v40 = a16;
  sub_1AAE60E1C(&v33);
  v28 = v38;
  a9[4] = v37;
  a9[5] = v28;
  v29 = v40;
  a9[6] = v39;
  a9[7] = v29;
  v30 = v34;
  *a9 = v33;
  a9[1] = v30;
  result = *&v35;
  v32 = v36;
  a9[2] = v35;
  a9[3] = v32;
  return result;
}

double LinePlot<A>.init<A, B, C>(x:y:t:domain:function:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v55 = a7;
  *(&v64 + 1) = a5;
  *&v64 = a4;
  v63 = a3;
  v57 = a1;
  v62 = a14;
  v19 = *(a8 - 8);
  v61 = a13;
  v60 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v27;
  v28 = *(v27 - 8);
  v30 = MEMORY[0x1EEE9AC00](v29);
  (*(v28 + 16))(&v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
  v60 = sub_1AAF8EA64();
  v59 = v32;
  v54 = v33;
  v58 = v34;
  v35 = v55;
  (*(v23 + 16))(v26, a2, v55);
  v61 = sub_1AAF8EA64();
  v53 = v36;
  v51 = v37;
  v52 = v38;
  v39 = v63;
  (*(v19 + 16))(v21, v63, a8);
  v40 = sub_1AAF8EA64();
  v62 = v41;
  v43 = v42;
  v50 = v44;
  (*(v19 + 8))(v39, a8);
  (*(v23 + 8))(a2, v35);
  (*(v28 + 8))(v57, v56);
  v67 = v54 & 1;
  v66 = v51 & 1;
  v65 = v43 & 1;
  *&v68 = v60;
  *(&v68 + 1) = v59;
  LOBYTE(v69) = v54 & 1;
  *(&v69 + 1) = v58;
  *&v70 = v61;
  *(&v70 + 1) = v53;
  LOBYTE(v71) = v51 & 1;
  *(&v71 + 1) = v52;
  *&v72 = v40;
  *(&v72 + 1) = v62;
  LOBYTE(v73) = v43 & 1;
  *(&v73 + 1) = v50;
  *&v74 = a10;
  *(&v74 + 1) = a11;
  v75 = v64;
  sub_1AAE60E1C(&v68);
  v45 = v73;
  a9[4] = v72;
  a9[5] = v45;
  v46 = v75;
  a9[6] = v74;
  a9[7] = v46;
  v47 = v69;
  *a9 = v68;
  a9[1] = v47;
  result = *&v70;
  v49 = v71;
  a9[2] = v70;
  a9[3] = v49;
  return result;
}

double LinePlot<A>.init(_:)@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v9 = 0;
  v8 = a1;
  BYTE8(v9) = 1;
  v10 = 0uLL;
  LOBYTE(v11) = 1;
  sub_1AAE6148C(&v8);
  v3 = v13;
  a2[4] = v12;
  a2[5] = v3;
  v4 = v15;
  a2[6] = v14;
  a2[7] = v4;
  v5 = v9;
  *a2 = v8;
  a2[1] = v5;
  result = *&v10;
  v7 = v11;
  a2[2] = v10;
  a2[3] = v7;
  return result;
}

uint64_t sub_1AAE6148C(uint64_t result)
{
  v1 = *(result + 80) & 1 | 0x8000000000000000;
  *(result + 48) &= 1uLL;
  *(result + 80) = v1;
  return result;
}

double LinePlot<A>.init(_:domain:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *&v12 = a3;
  BYTE8(v12) = a4 & 1;
  v13 = 0uLL;
  LOBYTE(v14) = 1;
  sub_1AAE6148C(&v11);
  v6 = v16;
  a5[4] = v15;
  a5[5] = v6;
  v7 = v18;
  a5[6] = v17;
  a5[7] = v7;
  v8 = v12;
  *a5 = v11;
  a5[1] = v8;
  result = *&v13;
  v10 = v14;
  a5[2] = v13;
  a5[3] = v10;
  return result;
}

double LinePlot<A>.init(_:domain:sampledDomain:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, _OWORD *a8@<X8>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  BYTE8(v15) = a4 & 1;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  LOBYTE(v17) = a7 & 1;
  sub_1AAE6148C(&v14);
  v9 = v19;
  a8[4] = v18;
  a8[5] = v9;
  v10 = v21;
  a8[6] = v20;
  a8[7] = v10;
  v11 = v15;
  *a8 = v14;
  a8[1] = v11;
  result = *&v16;
  v13 = v17;
  a8[2] = v16;
  a8[3] = v13;
  return result;
}

void static FunctionLinePlotContent._renderChartContent(_:_:)(__int128 *a1@<X0>, char *a2@<X1>, unint64_t *a3@<X8>)
{
  sub_1AAE63220(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SgShapeStyle(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = a1[5];
  v226 = a1[4];
  v227 = v18;
  v19 = a1[7];
  v228 = a1[6];
  v229 = v19;
  v20 = a1[1];
  v222 = *a1;
  v223 = v20;
  v21 = a1[3];
  v224 = a1[2];
  v225 = v21;
  v22 = *(a2 + 1);
  v23 = *(v22 + 24);
  v24 = *(v22 + 32);
  if (v24 >= v23)
  {
    v25 = *(v22 + 24);
  }

  else
  {
    v25 = *(v22 + 32);
  }

  if (v23 > v24)
  {
    v26 = *(v22 + 24);
  }

  else
  {
    v26 = *(v22 + 32);
  }

  if (v25 > v26)
  {
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v27 = *a2;
  v28 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 89);
  v30 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64);
  v29 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80);
  v212 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48);
  v213 = v30;
  v214[0] = v29;
  *(v214 + 9) = v28;
  v32 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16);
  v31 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32);
  v211[0] = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale);
  v211[1] = v32;
  v211[2] = v31;
  if (BYTE8(v214[1]) == 255)
  {
    goto LABEL_22;
  }

  if (BYTE8(v214[1]))
  {
    goto LABEL_22;
  }

  v33 = *(v214 + 1);
  v34 = *&v214[1];
  v35 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 89);
  v36 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80);
  v37 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48);
  v209 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64);
  v210[0] = v36;
  *(v210 + 9) = v35;
  v39 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16);
  v38 = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32);
  v208[0] = *(v22 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale);
  v208[1] = v39;
  v208[2] = v38;
  v208[3] = v37;
  if (BYTE8(v210[1]) == 255)
  {
    goto LABEL_22;
  }

  if (BYTE8(v210[1]))
  {
    goto LABEL_22;
  }

  v40 = *(v212 + 16);
  if (!v40)
  {
    goto LABEL_22;
  }

  v41 = *(v212 + 32);
  v42 = v212 + 32 + 8 * v40;
  v43 = *(v42 - 8);
  if (v43 >= v41)
  {
    v44 = *(v212 + 32);
  }

  else
  {
    v44 = *(v42 - 8);
  }

  if (v41 > v43)
  {
    v45 = *(v212 + 32);
  }

  else
  {
    v45 = *(v42 - 8);
  }

  if (v44 > v45)
  {
    goto LABEL_79;
  }

  if (LOBYTE(v214[0]) == 255 || LOBYTE(v210[0]) == 255)
  {
LABEL_22:
    *a3 = 0xE000000000000000;
    return;
  }

  v179 = LOBYTE(v210[0]);
  *&v180 = *(&v213 + 1);
  v181 = LOBYTE(v214[0]);
  v175 = v17;
  v176 = &v170 - v16;
  v177 = v22;
  v178 = *(&v209 + 1);
  v46 = *(v210 + 1);
  v47 = *&v210[1];
  v48 = a1[5];
  v207[4] = a1[4];
  v207[5] = v48;
  v49 = a1[7];
  v207[6] = a1[6];
  v207[7] = v49;
  v50 = a1[1];
  v207[0] = *a1;
  v207[1] = v50;
  v51 = a1[3];
  v207[2] = a1[2];
  v207[3] = v51;
  v52 = sub_1AAE632DC(v207);
  v53 = sub_1AAD35738(v207);
  v183 = v13;
  if (v52)
  {
    if (v52 == 1)
    {
      v54 = *(v53 + 96);
      v55 = *(v53 + 104);
      v56 = *(v53 + 112);
      v185 = *(v53 + 120);
      *&v186 = v56;
      sub_1AAE634E8(v211, &v199, sub_1AACCF364);
      sub_1AAE634E8(v208, &v199, sub_1AACCF364);
      v57 = v185;

      *&v186 = sub_1AAF83960(4, 7, 1, v186, v57, v180, v181, v178, v54, v55, v33, v34, v46, v47, v179);
    }

    else
    {
      v71 = *v53;
      v185 = *(v53 + 8);
      *&v186 = v71;
      v184 = *(v53 + 16);
      LODWORD(v182) = *(v53 + 24);
      v72 = *(v53 + 32);
      v73 = *(v53 + 40);
      if (*(v53 + 48))
      {
        *&v72 = v44;
        *&v73 = v45;
      }

      v74 = v180;
      sub_1AAE627F4(v72, v73, 0, v180, v181, v33, v34);
      v76 = v75;
      v78 = v77;
      sub_1AAE627F4(v185, v184, v182, v74, v181, v33, v34);
      v80 = v79;
      v82 = v81;
      sub_1AAE634E8(v211, &v199, sub_1AACCF364);
      sub_1AAE634E8(v208, &v199, sub_1AACCF364);
      v83.n128_u64[0] = v76;
      v84.n128_u64[0] = v78;
      v85 = sub_1AAE9DD1C(v180, v181, v178, v179, v83, v84, v33, v34, v46, v47);
      *&v186 = sub_1AAE9EA54(v85, v80, v82);
    }
  }

  else
  {
    v59 = *(v53 + 64);
    v58 = *(v53 + 72);
    v60 = *(v53 + 80);
    v186 = *(v53 + 88);
    v61 = v180;
    v62 = v181;
    sub_1AAE627F4(v59, v58, v60, v180, v181, v33, v34);
    v64 = v63;
    v66 = v65;
    v174 = v8;
    v185 = &v170;
    MEMORY[0x1EEE9AC00](v67);
    *(&v170 - 10) = v61;
    *(&v170 - 72) = v62;
    *(&v170 - 8) = v33;
    *(&v170 - 7) = v34;
    *(&v170 - 3) = v186;
    v68 = v179;
    *(&v170 - 4) = v178;
    *(&v170 - 24) = v68;
    v168 = v46;
    v169 = v47;
    sub_1AAE634E8(v211, &v199, sub_1AACCF364);
    sub_1AAE634E8(v208, &v199, sub_1AACCF364);
    v69.n128_u64[0] = v64;
    v70.n128_u64[0] = v66;
    *&v186 = sub_1AAF81604(4, 7, 1, sub_1AAE6360C, &v170 - 96, v69, v70);
    v13 = v183;
    v8 = v174;
  }

  v182 = a3;
  if ((v27 & 1) == 0)
  {
    sub_1AAF8E934();
    v97 = v186;
    v185 = *(v186 + 16);
    if (!v185)
    {

LABEL_65:
      v125 = v177 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
      swift_beginAccess();
      sub_1AAE634E8(v125, v13, type metadata accessor for ChartContentRenderContext.Environment);
      v126 = v176;
      sub_1AAD0F2A4(v13, v176);
      v220[0] = v187[4];
      v220[1] = v187[5];
      v221 = v188;
      v127 = *(v126 + 72);
      *&v186 = v125;
      if (v127)
      {
        v128 = *(v126 + 80);
        v129 = *(v126 + 64);
        v130 = *(v126 + 56);
        v131 = *(v126 + 60);
        v132 = v127;
        v133 = *(v126 + 48);
LABEL_69:
        *&v191 = v133;
        *(&v191 + 1) = __PAIR64__(v131, v130);
        *&v192 = v129;
        *(&v192 + 1) = v132;
        *&v193 = v128;

        sub_1AAF8E854();

        sub_1AAD12C10(v220);
        v218[0] = v215;
        v218[1] = v216;
        v219 = v217;
        sub_1AAE63550(v218, v187);

        v134 = type metadata accessor for SgPath(0);
        *(v126 + 48) = 0u;
        *(v126 + 64) = 0u;
        *(v126 + 80) = 0;
        v185 = swift_allocBox();
        v136 = v135;
        v137 = *(*(v177 + 16) + 24);
        v138 = v186;
        v139 = v183;
        sub_1AAE634E8(v186, v183, type metadata accessor for ChartContentRenderContext.Environment);
        v140 = v175;
        sub_1AAD0F2A4(v139, v175);
        sub_1AAE635AC(v208, sub_1AACCF364);
        sub_1AAE635AC(v211, sub_1AACCF364);
        v141 = *(v138 + *(v11 + 64));
        *v136 = v137;
        v142 = v217;
        v143 = v216;
        *(v136 + 8) = v215;
        *(v136 + 24) = v143;
        *(v136 + 40) = v142;
        sub_1AAE52164(v140, v136 + *(v134 + 24));
        *(v136 + *(v134 + 28)) = v141;
        sub_1AAD12C10(&v215);
        *a3 = v185 | 0x9000000000000000;
        sub_1AAE635AC(v126, type metadata accessor for SgShapeStyle);
        return;
      }

      if (qword_1ED9B2798 == -1)
      {
LABEL_68:
        v133 = xmmword_1ED9C34C0;
        v130 = DWORD2(xmmword_1ED9C34C0);
        v131 = HIDWORD(xmmword_1ED9C34C0);
        v129 = qword_1ED9C34D0;
        v132 = qword_1ED9C34D8;
        v128 = qword_1ED9C34E0;

        v126 = v176;
        goto LABEL_69;
      }

LABEL_81:
      swift_once();
      goto LABEL_68;
    }

    v181 = v11;
    v11 = 0;
    v199 = 0x3FF0000000000000uLL;
    *&v200 = 0;
    *(&v200 + 1) = 0x3FF0000000000000;
    v184 = v186 + 32;
    v201 = 0uLL;
    while (v11 < *(v97 + 16))
    {
      v98 = *(v184 + 8 * v11);

      sub_1AAF8E934();
      v99 = *(v98 + 16);
      if (v99)
      {
        *&v220[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD41370(0, v99, 0);
        v100 = *&v220[0];
        v101 = *(*&v220[0] + 16);
        v102 = 32;
        do
        {
          v103 = *(v98 + v102);
          *&v220[0] = v100;
          v104 = *(v100 + 24);
          if (v101 >= v104 >> 1)
          {
            v180 = v103;
            sub_1AAD41370((v104 > 1), v101 + 1, 1);
            v103 = v180;
            v100 = *&v220[0];
          }

          *(v100 + 16) = v101 + 1;
          *(v100 + 16 * v101 + 32) = v103;
          v102 += 16;
          ++v101;
          --v99;
        }

        while (v99);

        a3 = v182;
        v13 = v183;
        v97 = v186;
      }

      else
      {
      }

      ++v11;
      sub_1AAF8E904();

      v189[0] = v191;
      v189[1] = v192;
      v190 = v193;
      sub_1AAF8E844();
      sub_1AAD12C10(v189);
      if (v11 == v185)
      {

        v11 = v181;
        goto LABEL_65;
      }
    }

    goto LABEL_74;
  }

  v174 = v8;
  v86 = v186;
  v185 = *(v186 + 16);
  if (v185)
  {
    a3 = 0;
    v184 = v186 + 32;
    v87 = MEMORY[0x1E69E7CC0];
    while (a3 < *(v86 + 16))
    {
      v88 = *(v184 + 8 * a3);
      v89 = *(v88 + 16);
      v90 = *(v87 + 2);
      v11 = v90 + v89;
      if (__OFADD__(v90, v89))
      {
        goto LABEL_76;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v11 > *(v87 + 3) >> 1)
      {
        if (v90 <= v11)
        {
          v92 = v90 + v89;
        }

        else
        {
          v92 = v90;
        }

        v87 = sub_1AAD6945C(isUniquelyReferenced_nonNull_native, v92, 1, v87);
      }

      v86 = v186;
      if (*(v88 + 16))
      {
        v93 = *(v87 + 2);
        if ((*(v87 + 3) >> 1) - v93 < v89)
        {
          goto LABEL_78;
        }

        memcpy(&v87[16 * v93 + 32], (v88 + 32), 16 * v89);

        if (v89)
        {
          v94 = *(v87 + 2);
          v95 = __OFADD__(v94, v89);
          v96 = v94 + v89;
          if (v95)
          {
            goto LABEL_80;
          }

          *(v87 + 2) = v96;
        }
      }

      else
      {

        if (v89)
        {
          goto LABEL_77;
        }
      }

      a3 = (a3 + 1);
      if (v185 == a3)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_75;
  }

  v87 = MEMORY[0x1E69E7CC0];
LABEL_61:

  v203 = v226;
  v204 = v227;
  v205 = v228;
  v206 = v229;
  v199 = v222;
  v200 = v223;
  v201 = v224;
  v202 = v225;
  v105 = sub_1AAE632DC(&v199);
  if (!v105)
  {
    v144 = sub_1AAD35738(&v199);
    v146 = *v144;
    v145 = *(v144 + 8);
    LODWORD(v184) = *(v144 + 16);
    v148 = *(v144 + 24);
    v147 = *(v144 + 32);
    v185 = v145;
    *&v186 = v148;
    v175 = v147;
    v149 = *(v144 + 40);
    LODWORD(v183) = *(v144 + 48);
    v150 = *(v144 + 56);
    KeyPath = *(v144 + 96);
    v173 = v149;
    v197 = v228;
    v198 = v229;
    v191 = v222;
    v192 = v223;
    v195 = v226;
    v196 = v227;
    v193 = v224;
    v194 = v225;
    v151 = sub_1AAD35738(&v191);
    v153 = *v151;
    v152 = *(v151 + 8);
    v154 = *(v151 + 16);
    v155 = *(v151 + 32);
    v156 = *(v151 + 40);
    v157 = *(v151 + 48);
    v158 = *(v151 + 96);
    v170 = *(v151 + 56);
    v171 = v158;
    sub_1AACD7304(v153, v152, v154);

    sub_1AACD7304(v155, v156, v157);

    v159 = *(v87 + 2);
    KeyPath = swift_getKeyPath();
    v160 = swift_allocObject();
    *(v160 + 16) = v87;
    v176 = v146;
    v161 = v185;
    *(v160 + 24) = v146;
    *(v160 + 32) = v161;
    v162 = v184;
    *(v160 + 40) = v184;
    v163 = v180;
    *(v160 + 48) = v186;
    *(v160 + 56) = v163;
    *(v160 + 64) = v181;
    *(v160 + 72) = v33;
    *(v160 + 80) = v34;
    v164 = v175;
    v165 = v173;
    *(v160 + 88) = v175;
    *(v160 + 96) = v165;
    v166 = v183;
    *(v160 + 104) = v183;
    v167 = v178;
    LOBYTE(v163) = v179;
    *(v160 + 112) = v150;
    *(v160 + 120) = v167;
    *(v160 + 128) = v163;
    *(v160 + 136) = v46;
    *(v160 + 144) = v47;
    *&v189[0] = 0;
    *(&v189[0] + 1) = v159;
    sub_1AACD7304(v146, v161, v162);

    sub_1AACD7304(v164, v165, v166);
    sub_1AAD26778(0, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD116F4();

    sub_1AAF8EF84();

    sub_1AAE496D8(v10, 1, v177, v182);
    sub_1AAE635AC(v208, sub_1AACCF364);
    sub_1AAE635AC(v211, sub_1AACCF364);
    sub_1AAD04750(v164, v165, v183);

    v122 = v176;
    v123 = v185;
    v124 = v184;
    goto LABEL_71;
  }

  if (v105 == 1)
  {
    v106 = sub_1AAD35738(&v199);
    v107 = *v106;
    v184 = *(v106 + 8);
    v185 = v107;
    LODWORD(v183) = *(v106 + 16);
    v108 = *(v106 + 32);
    *&v186 = *(v106 + 24);
    v176 = v108;
    v109 = *(v106 + 40);
    LODWORD(v175) = *(v106 + 48);
    v111 = *(v106 + 56);
    v110 = *(v106 + 64);
    v171 = *(v106 + 72);
    v112 = *(v106 + 80);
    v173 = *(v106 + 88);
    v193 = v224;
    v194 = v225;
    v197 = v228;
    v198 = v229;
    v195 = v226;
    v196 = v227;
    v191 = v222;
    v192 = v223;
    v113 = sub_1AAD35738(&v191);
    sub_1AAE634E8(v113, v189, sub_1AAE632E8);

    sub_1AAD04750(v110, v171, v112);

    v114 = *(v87 + 2);
    v173 = swift_getKeyPath();
    v115 = swift_allocObject();
    *(v115 + 16) = v87;
    v117 = v184;
    v116 = v185;
    *(v115 + 24) = v185;
    *(v115 + 32) = v117;
    v118 = v183;
    *(v115 + 40) = v183;
    v119 = v180;
    *(v115 + 48) = v186;
    *(v115 + 56) = v119;
    *(v115 + 64) = v181;
    *(v115 + 72) = v33;
    *(v115 + 80) = v34;
    v120 = v176;
    *(v115 + 88) = v176;
    *(v115 + 96) = v109;
    KeyPath = v109;
    LOBYTE(v110) = v175;
    *(v115 + 104) = v175;
    v121 = v178;
    LOBYTE(v119) = v179;
    *(v115 + 112) = v111;
    *(v115 + 120) = v121;
    *(v115 + 128) = v119;
    *(v115 + 136) = v46;
    *(v115 + 144) = v47;
    *&v189[0] = 0;
    *(&v189[0] + 1) = v114;
    sub_1AACD7304(v116, v117, v118);

    sub_1AACD7304(v120, v109, v110);
    sub_1AAD26778(0, &qword_1ED9B29B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AAD116F4();

    sub_1AAF8EF84();

    sub_1AAE496D8(v10, 1, v177, v182);
    sub_1AAE635AC(v208, sub_1AACCF364);
    sub_1AAE635AC(v211, sub_1AACCF364);
    sub_1AAD04750(v120, KeyPath, v110);

    v123 = v184;
    v122 = v185;
    v124 = v183;
LABEL_71:
    sub_1AAD04750(v122, v123, v124);

    (*(v174 + 8))(v10, v7);
    return;
  }

  sub_1AAD35738(&v199);

  sub_1AAE635AC(v208, sub_1AACCF364);
  sub_1AAE635AC(v211, sub_1AACCF364);
  *v182 = 0xE000000000000000;
}

void sub_1AAE625F4(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  v19 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *(a2 + 16))
  {
    v29 = *(a2 + 16 * v19 + 32);
    v26 = sub_1AAF4242C(a7, a8, *&v29, a10, a11);
    v27 = sub_1AAF4242C(a17, a18, *(&v29 + 1), a12, a13);
    a5 &= 1u;
    v31 = a5;
    *&v32 = a3;
    *(&v32 + 1) = a4;
    LOBYTE(v33) = a5;
    *(&v33 + 1) = a6;
    v34 = *&v26;
    LOBYTE(v35) = 0;
    v28 = MEMORY[0x1E69E63B0];
    *(&v35 + 1) = MEMORY[0x1E69E63B0];
    *&v36 = &protocol witness table for Double;
    sub_1AAE4637C(&v32);
    __src[6] = v38;
    __src[7] = v39;
    __src[8] = v40;
    __src[2] = v34;
    __src[3] = v35;
    __src[4] = v36;
    __src[5] = v37;
    __src[0] = v32;
    __src[1] = v33;
    v41 = a15 & 1;
    v42 = a14;
    LOBYTE(v43) = a15 & 1;
    *(&v43 + 1) = a16;
    v44 = *&v27;
    LOBYTE(v45) = 0;
    *(&v45 + 1) = v28;
    *&v46 = &protocol witness table for Double;
    sub_1AAE4637C(&v42);
    __src[15] = v48;
    __src[16] = v49;
    __src[17] = v50;
    __src[11] = v44;
    __src[12] = v45;
    __src[13] = v46;
    __src[14] = v47;
    __src[9] = v42;
    __src[10] = v43;
    memcpy(a9, __src, 0x120uLL);
    *(a9 + 288) = 0;
    *(a9 + 296) = 0;
    *(a9 + 304) = -1;
    sub_1AACD7304(a3, a4, a5);

    sub_1AACD7304(a14, *(&a14 + 1), a15 & 1);

    return;
  }

  __break(1u);
}

void sub_1AAE627F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7)
{
  if (a3)
  {
    return;
  }

  v9 = *&a2;
  if (a5)
  {
    if (a5 == 1)
    {
      v12 = *&a1 * *&a4;
      if (a1 < 0)
      {
        v13 = a7 - log(1.0 - v12) * a6;
      }

      else
      {
        v13 = log(v12 + 1.0) * a6 + a7;
      }

      v16 = v9 * *&a4;
      if (a2 < 0)
      {
        v9 = -log(1.0 - v16);
        goto LABEL_15;
      }

      v15 = v16 + 1.0;
    }

    else
    {
      if (*&a4 == 0.0)
      {
        v13 = *&a1 * a6 + a7;
        goto LABEL_15;
      }

      v13 = log(*&a1) * a6 + a7;
      v15 = v9;
    }

    v9 = log(v15);
  }

  else
  {
    v13 = pow(*&a1, *&a4) * a6 + a7;
    v9 = pow(v9, *&a4);
  }

LABEL_15:
  v17 = v9 * a6 + a7;
  if (v17 >= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v9 * a6 + a7;
  }

  if (v13 > v17)
  {
    v19 = v13;
  }

  else
  {
    v19 = v9 * a6 + a7;
  }

  if (v18 > v19)
  {
    __break(1u);
  }
}