uint64_t sub_1E48CE438(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E48CE4A8(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1E4997D6C();
}

uint64_t sub_1E48CE678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F398, &qword_1E499BAA0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F3A0, &qword_1E499BAA8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - v12;
  sub_1E499728C();
  v50 = v14;
  v52 = v15;
  v51 = v16;
  v49 = v17;
  sub_1E4961948(a2, a3 & 1, v14);
  v18 = [objc_opt_self() mainScreen];
  [v18 bounds];
  v20 = v19;

  v21 = sub_1E492E268(v20);

  *&v22.f64[0] = v50.n128_u64[0];
  *&v22.f64[1] = v49;
  *&v23.f64[0] = v51;
  *&v23.f64[1] = v52;
  *v9 = v21;
  v24 = vbslq_s8(vcgeq_f64(v23, v22), v23, v22);
  __asm { FMOV            V1.2D, #1.0 }

  v30 = vaddq_f64(v24, _Q1);
  v31 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = vbslq_s8(vcgeq_f64(v30, v31), v30, v31);
  *(v9 + 24) = v32;
  *(v9 + 8) = v32;
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F3A8, &qword_1E499BAB0) + 44);
  v34 = v21;
  sub_1E48CEA48(a2, a3 & 1, &v9[v33]);

  v35 = sub_1E499734C();
  v36 = sub_1E49977CC();
  v37 = &v9[*(v7 + 44)];
  *v37 = v35;
  v37[8] = v36;
  sub_1E4997CEC();
  sub_1E499736C();
  sub_1E48C15C8(v9, v13, &qword_1ECF7F398, &qword_1E499BAA0);
  v38 = &v13[*(v11 + 44)];
  v39 = v60;
  *(v38 + 4) = v59;
  *(v38 + 5) = v39;
  *(v38 + 6) = v61;
  v40 = v56;
  *v38 = v55;
  *(v38 + 1) = v40;
  v41 = v58;
  *(v38 + 2) = v57;
  *(v38 + 3) = v41;
  v42 = sub_1E4961948(a2, a3 & 1, v41);
  swift_getKeyPath();
  v54 = v42;
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  swift_beginAccess();
  LODWORD(v33) = *(v42 + 16);

  if (v33 == 1)
  {
    v43 = sub_1E4997A1C();
  }

  else
  {
    v43 = sub_1E4997A3C();
  }

  v44 = v43;
  v45 = sub_1E49977CC();
  v46 = v53;
  sub_1E48C15C8(v13, v53, &qword_1ECF7F3A0, &qword_1E499BAA8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F3B0, &qword_1E499BAE0);
  v48 = v46 + *(result + 36);
  *v48 = v44;
  *(v48 + 8) = v45;
  return result;
}

uint64_t sub_1E48CEA48@<X0>(uint64_t a1@<X1>, int a2@<W2>, char *a3@<X8>)
{
  v3 = a2;
  v45 = a2;
  v51 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F3B8, &qword_1E499BAE8);
  v53 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v44 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F3C0, &qword_1E499BAF0);
  v52 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  type metadata accessor for DigitalClockViewModel(0);
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E49971EC();

  sub_1E499729C();
  v13 = v12;
  v15 = v14;
  v54 = sub_1E49971EC();
  LOBYTE(v55) = v16 & 1;
  v56 = v13;
  v57 = v15;
  sub_1E4961948(a1, v3 & 1, v17);
  sub_1E48D25D4();
  v18 = v11;
  v44 = v11;
  sub_1E499793C();

  v19 = sub_1E49971EC();
  v21 = v20;
  LOBYTE(v60) = 1;
  sub_1E4997B4C();
  v22 = v54;
  v23 = v55;
  v24 = [objc_opt_self() systemFontOfSize:30.0 weight:*MEMORY[0x1E69DB970]];
  [v24 ascender];
  v26 = v25;
  [v24 capHeight];
  v28 = v27;

  v60 = v26 - v28;
  sub_1E4997B4C();
  v29.n128_u64[0] = v54;
  v30 = v55;
  v54 = v19;
  LOBYTE(v55) = v21 & 1;
  LOBYTE(v56) = v22;
  v57 = v23;
  v58 = v29.n128_u64[0];
  v59 = v30;
  sub_1E4961948(a1, v45 & 1, v29);
  sub_1E48D2628();
  v31 = v46;
  sub_1E499793C();

  v32 = *(v52 + 16);
  v33 = v47;
  v34 = v18;
  v35 = v48;
  v32(v47, v34, v48);
  v36 = *(v53 + 16);
  v38 = v49;
  v37 = v50;
  v36(v49, v31, v50);
  v39 = v51;
  v32(v51, v33, v35);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F3D8, &qword_1E499BAF8);
  v36(&v39[*(v40 + 48)], v38, v37);
  v41 = *(v53 + 8);
  v41(v31, v37);
  v42 = *(v52 + 8);
  v42(v44, v35);
  v41(v38, v37);
  return (v42)(v33, v35);
}

uint64_t sub_1E48CEF08@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DigitalClockViewModel(0);
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  result = sub_1E49971EC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E48CEF84@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  *a1 = sub_1E48CF020;
  a1[1] = v5;
}

unint64_t sub_1E48CEFF8(uint64_t a1)
{
  result = sub_1E48CD070();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E48CF02C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F448, &qword_1E499BDE0);
  v40 = *(v41 - 8);
  v5 = MEMORY[0x1EEE9AC00](v41);
  v39 = &v37 - v6;
  sub_1E4961948(a1, a2 & 1, v5);
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  [v8 bounds];
  v10 = v9;

  v11 = sub_1E492E268(v10);

  sub_1E4961948(a1, a2 & 1, v12);
  v13 = sub_1E492B27C();
  v38 = v14;
  v37 = v15;
  v17 = v16;

  sub_1E4961948(a1, a2 & 1, v18);
  v19 = [v7 mainScreen];
  [v19 bounds];
  v21 = v20;

  v22 = sub_1E492E268(v21);

  type metadata accessor for RollingClockViewModel(0);
  sub_1E48D3598(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
  v23 = sub_1E49971EC();
  LOBYTE(v47[0]) = v24 & 1;
  v25 = v11;
  v26 = sub_1E48C36F4();

  *&v43 = v23;
  BYTE8(v43) = v47[0];
  *&v44 = v26;
  *(&v44 + 1) = v13;
  v27 = v39;
  *&v45 = v38;
  *(&v45 + 1) = v37;
  v46[0] = v17;
  *&v46[8] = v25;
  *&v46[16] = v22;
  *&v46[24] = 384;
  v29 = sub_1E4961948(a1, a2 & 1, v28);
  swift_getKeyPath();
  *&v47[0] = v29;
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  sub_1E48D2BC4();
  sub_1E499793C();

  v47[2] = v45;
  v48[0] = *v46;
  *(v48 + 10) = *&v46[10];
  v47[0] = v43;
  v47[1] = v44;
  sub_1E48C1180(v47);
  v31 = sub_1E4961948(a1, a2 & 1, v30);
  swift_getKeyPath();
  *&v43 = v31;
  sub_1E4996FCC();

  swift_beginAccess();
  LODWORD(v22) = *(v31 + 16);

  if (v22 == 1)
  {
    sub_1E4997A7C();
    v32 = sub_1E4997A8C();
  }

  else
  {
    v32 = sub_1E4997A4C();
  }

  v33 = sub_1E49977CC();
  v34 = v42;
  (*(v40 + 32))(v42, v27, v41);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F408, &qword_1E499BDC8);
  v36 = v34 + *(result + 36);
  *v36 = v32;
  *(v36 + 8) = v33;
  return result;
}

uint64_t sub_1E48CF4A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F400, &qword_1E499BDC0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F408, &qword_1E499BDC8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8[-v5];
  sub_1E48CF02C(*v0, *(v0 + 8), &v8[-v5]);
  sub_1E48C12D0(v6, v3, &qword_1ECF7F408, &qword_1E499BDC8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F410, &qword_1E499BDD0);
  sub_1E48D2980();
  sub_1E48D2A90();
  sub_1E499772C();
  return sub_1E48C1338(v6, &qword_1ECF7F408, &qword_1E499BDC8);
}

uint64_t sub_1E48CF618@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F450, &qword_1E499BE10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F458, &qword_1E499BE18);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v40 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F460, &qword_1E499BE20);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v40 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F468, &qword_1E499BE28);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v40 - v9;
  *v4 = sub_1E499762C();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F470, &qword_1E499BE30);
  sub_1E48CFB00(v1, &v4[*(v11 + 44)]);
  v12 = *v1;
  v13 = *(v1 + 8);
  v15 = sub_1E4961948(*v1, v13, v14);
  swift_getKeyPath();
  v47 = v15;
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  swift_beginAccess();
  v16 = *(v15 + 16);

  if (v16 == 1)
  {
    v17 = sub_1E4997A5C();
  }

  else
  {
    v17 = sub_1E4997A4C();
  }

  v18 = v17;
  v19 = sub_1E49977CC();
  sub_1E48C15C8(v4, v6, &qword_1ECF7F450, &qword_1E499BE10);
  v20 = &v6[*(v41 + 36)];
  *v20 = v18;
  v20[8] = v19;
  v21 = sub_1E4997D3C();
  v23 = sub_1E4961948(v12, v13, v22);
  swift_getKeyPath();
  v46 = v23;
  sub_1E4996FCC();

  v24 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime;
  swift_beginAccess();
  v25 = &v8[*(v42 + 36)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F478, &unk_1E499BE60);
  sub_1E48C12D0(v23 + v24, v25 + *(v26 + 36), &qword_1ECF809D0, &qword_1E499D6C0);

  *v25 = v21;
  sub_1E48C15C8(v6, v8, &qword_1ECF7F458, &qword_1E499BE18);
  v27 = sub_1E4997D3C();
  v29 = sub_1E4961948(v12, v13, v28);
  swift_getKeyPath();
  v45 = v29;
  sub_1E4996FCC();

  v30 = *(v29 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor);

  sub_1E48C12D0(v8, v10, &qword_1ECF7F460, &qword_1E499BE20);
  v31 = &v10[*(v43 + 36)];
  *v31 = v27;
  v31[1] = v30;
  sub_1E48C1338(v8, &qword_1ECF7F460, &qword_1E499BE20);
  v32 = sub_1E4997D3C();
  v34 = sub_1E4961948(v12, v13, v33);
  swift_getKeyPath();
  v45 = v34;
  sub_1E4996FCC();

  v35 = *(v34 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor);

  v36 = v10;
  v37 = v44;
  sub_1E48C15C8(v36, v44, &qword_1ECF7F468, &qword_1E499BE28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F480, &qword_1E499BEC0);
  v39 = (v37 + *(result + 36));
  *v39 = v32;
  v39[1] = v35;
  return result;
}

uint64_t sub_1E48CFB00@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v257 = a2;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F488, &qword_1E499BEC8);
  MEMORY[0x1EEE9AC00](v226);
  v227 = &v224 - v3;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F490, &qword_1E499BED0);
  v248 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v225 = &v224 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v246 = &v224 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F498, &qword_1E499BED8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v274 = &v224 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v285 = &v224 - v10;
  v282 = sub_1E499777C();
  MEMORY[0x1EEE9AC00](v282);
  v271 = &v224 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4A0, &qword_1E499BEE0);
  MEMORY[0x1EEE9AC00](v269);
  v253 = &v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v242 = &v224 - v14;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4A8, &qword_1E499BEE8);
  MEMORY[0x1EEE9AC00](v270);
  v250 = &v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v252 = &v224 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v239 = &v224 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v240 = &v224 - v21;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4B0, &qword_1E499BEF0);
  MEMORY[0x1EEE9AC00](v272);
  v251 = &v224 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v241 = &v224 - v24;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4B8, &qword_1E499BEF8);
  v255 = *(v256 - 8);
  MEMORY[0x1EEE9AC00](v256);
  v254 = &v224 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v284 = &v224 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v273 = &v224 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v283 = &v224 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4C0, &qword_1E499BF00);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v261 = &v224 - v33;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4C8, &unk_1E499BF08);
  MEMORY[0x1EEE9AC00](v235);
  v236 = &v224 - v34;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EFC8, &qword_1E499B100);
  MEMORY[0x1EEE9AC00](v289);
  v266 = (&v224 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v268 = (&v224 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v237 = (&v224 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v263 = (&v224 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v230 = &v224 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v275 = (&v224 - v45);
  v290 = sub_1E499745C();
  v288 = *(v290 - 8);
  MEMORY[0x1EEE9AC00](v290);
  v265 = &v224 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v260 = &v224 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v264 = (&v224 - v50);
  v51 = sub_1E4996A4C();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v224 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4D0, &qword_1E499BF18);
  v56 = v55 - 8;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v224 - v57;
  v259 = &v224 - v57;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4D8, &qword_1E499BF20);
  MEMORY[0x1EEE9AC00](v229);
  v231 = &v224 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v232 = &v224 - v61;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4E0, &qword_1E499BF28);
  MEMORY[0x1EEE9AC00](v233);
  v234 = &v224 - v62;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4E8, &qword_1E499BF30);
  v247 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v267 = &v224 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v64);
  v280 = &v224 - v66;
  v67 = *a1;
  v258 = a1;
  v68 = *(a1 + 8);
  v279 = v67;
  v278 = v68;
  v69 = sub_1E4961948(v67, v68, v65);
  swift_getKeyPath();
  v295 = v69;
  v70 = sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  v71 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__dateText;
  swift_beginAccess();
  v72 = *(v52 + 16);
  v245 = v51;
  v244 = v52 + 16;
  v238 = v72;
  v72(v54, v69 + v71, v51);

  v243 = v54;
  v73 = sub_1E49978CC();
  v75 = v74;
  LOBYTE(v69) = v76;
  v287 = v77;
  v78 = &v58[*(v56 + 44)];
  v79 = &v78[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4F0, &qword_1E499BF60) + 36)];
  v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F4F8, &qword_1E499BF68) + 28);
  v81 = *MEMORY[0x1E6980FD8];
  v82 = sub_1E499787C();
  v83 = *(v82 - 8);
  (*(v83 + 104))(v79 + v80, v81, v82);
  (*(v83 + 56))(v79 + v80, 0, 1, v82);
  *v79 = swift_getKeyPath();
  *v78 = v73;
  *(v78 + 1) = v75;
  v78[16] = v69 & 1;
  *(v78 + 3) = v287;
  v276 = type metadata accessor for DigitalClockViewModel(0);
  v277 = v70;
  v84 = sub_1E49971EC();
  v85 = v259;
  *v259 = v84;
  *(v85 + 8) = v86 & 1;
  v87 = objc_opt_self();
  v88 = *MEMORY[0x1E69DB970];
  v262 = v87;
  v89 = [v87 systemFontOfSize:30.0 weight:v88];
  v90 = v264;
  v228 = v89;
  v91 = sub_1E48DAD54(v264, v89, 1);
  v92 = v275;
  *v275 = v91;
  v93 = v92 + *(v289 + 48);
  v94 = *(v288 + 16);
  v287 = v288 + 16;
  v286 = v94;
  v94(v93, v90, v290);
  sub_1E48C12D0(v85, v261, &qword_1ECF7F4D0, &qword_1E499BF18);
  v95 = v230;
  sub_1E48C12D0(v92, v230, &qword_1ECF7EFC8, &qword_1E499B100);
  v96 = v95;
  v97 = *v95;

  v98 = sub_1E499743C();
  v99 = sub_1E499744C();
  if (!v98)
  {
    if (!v99)
    {
      v98 = 0;
      goto LABEL_7;
    }

LABEL_5:
    v98 |= v99;
    goto LABEL_7;
  }

  if ((v99 & ~v98) != 0)
  {
    goto LABEL_5;
  }

LABEL_7:
  v100 = v290;
  v101 = *(v289 + 48);
  v102 = v236;
  v103 = &v236[*(v235 + 36)];
  v104 = v93;
  v105 = v286;
  v286(v103, v104, v290);
  v106 = v282;
  *&v103[*(v282 + 20)] = v97;
  *&v103[*(v106 + 24)] = v98;
  sub_1E48C15C8(v261, v102, &qword_1ECF7F4C0, &qword_1E499BF00);
  v108 = v288 + 8;
  v107 = *(v288 + 8);
  v107(&v96[v101], v100);
  KeyPath = swift_getKeyPath();
  v110 = v231;
  v111 = &v231[*(v229 + 36)];
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE70, &qword_1E499B010);
  sub_1E49973CC();

  sub_1E48C1338(v275, &qword_1ECF7EFC8, &qword_1E499B100);
  v112 = v264;
  v288 = v108;
  v264 = v107;
  v107(v112, v100);
  sub_1E48C1338(v259, &qword_1ECF7F4D0, &qword_1E499BF18);
  *v111 = KeyPath;
  sub_1E48C15C8(v102, v110, &qword_1ECF7F4C8, &unk_1E499BF08);
  v113 = v232;
  sub_1E48C15C8(v110, v232, &qword_1ECF7F4D8, &qword_1E499BF20);
  v296 = *(v258 + 2);
  v294 = *(v258 + 2);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F500, &qword_1E499BFD8);
  sub_1E4997B5C();
  v114 = -*&v293;
  v115 = v234;
  sub_1E48C15C8(v113, v234, &qword_1ECF7F4D8, &qword_1E499BF20);
  v116 = &v115[*(v233 + 36)];
  *v116 = 0.0;
  v116[1] = v114;
  v117 = v279;
  LOBYTE(v113) = v278;
  sub_1E4961948(v279, v278, v118);
  sub_1E48D2CC0();
  sub_1E499793C();

  sub_1E48C1338(v115, &qword_1ECF7F4E0, &qword_1E499BF28);
  v120 = sub_1E4961948(v117, v113, v119);
  swift_getKeyPath();
  *&v294 = v120;
  sub_1E4996FCC();

  v122 = v120[18];
  v121 = v120[19];

  *&v294 = v122;
  *(&v294 + 1) = v121;
  sub_1E48D2EE4();
  v236 = sub_1E49978DC();
  v235 = v123;
  LODWORD(v232) = v124;
  v259 = v125;
  v126 = sub_1E49971EC();
  LODWORD(v231) = v127;
  v128 = [v262 systemFontOfSize:30.0 weight:v88];
  v129 = v260;
  v234 = v128;
  v130 = sub_1E48DAD54(v260, v128, 1);
  v131 = v263;
  *v263 = v130;
  v132 = v131 + *(v289 + 48);
  v105(v132, v129, v100);
  v133 = v237;
  sub_1E48C12D0(v131, v237, &qword_1ECF7EFC8, &qword_1E499B100);
  v134 = *v133;
  v233 = v130;

  v135 = sub_1E499743C();
  v136 = sub_1E499744C();
  if (!v135)
  {
    if (!v136)
    {
      v135 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v135 |= v136;
    goto LABEL_13;
  }

  if ((v136 & ~v135) != 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v230 = *(v289 + 48);
  v137 = v271;
  v138 = v290;
  v286(v271, v132, v290);
  v139 = v282;
  *(v137 + *(v282 + 20)) = v134;
  *(v137 + *(v139 + 24)) = v135;
  v140 = v242;
  sub_1E48D2F38(v137, &v242[*(v269 + 36)]);
  *v140 = v126;
  *(v140 + 8) = v231 & 1;
  v141 = v236;
  v142 = v235;
  *(v140 + 16) = v236;
  *(v140 + 24) = v142;
  v143 = v232 & 1;
  *(v140 + 32) = v232 & 1;
  *(v140 + 40) = v259;

  sub_1E48C14F4(v141, v142, v143);

  sub_1E48D2F9C(v137);
  v144 = v138;
  v145 = v264;
  v264(v133 + v230, v144);
  v237 = swift_getKeyPath();
  v146 = v239;
  v147 = &v239[*(v270 + 36)];
  sub_1E49973CC();

  sub_1E48C1564(v141, v142, v143);

  sub_1E48C1338(v263, &qword_1ECF7EFC8, &qword_1E499B100);
  v145(v260, v290);
  *v147 = v237;
  sub_1E48C15C8(v140, v146, &qword_1ECF7F4A0, &qword_1E499BEE0);
  v148 = v240;
  sub_1E48C15C8(v146, v240, &qword_1ECF7F4A8, &qword_1E499BEE8);
  v294 = v296;
  sub_1E4997B5C();
  v149 = -*&v293;
  v150 = v148;
  v151 = v241;
  sub_1E48C15C8(v150, v241, &qword_1ECF7F4A8, &qword_1E499BEE8);
  v152 = v151 + *(v272 + 36);
  *v152 = 0;
  *(v152 + 8) = v149;
  v153 = v279;
  v154 = v278;
  sub_1E4961948(v279, v278, v155);
  v263 = sub_1E48D2FF8();
  sub_1E499793C();

  sub_1E48C1338(v151, &qword_1ECF7F4B0, &qword_1E499BEF0);
  v157 = sub_1E4961948(v153, v154, v156);
  swift_getKeyPath();
  *&v294 = v157;
  sub_1E4996FCC();

  v158 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmTime;
  swift_beginAccess();
  v159 = v246;
  sub_1E48C12D0(v157 + v158, v246, &qword_1ECF809D0, &qword_1E499D6C0);

  v160 = sub_1E4996D8C();
  v161 = 1;
  LODWORD(v158) = (*(*(v160 - 8) + 48))(v159, 1, v160);
  sub_1E48C1338(v159, &qword_1ECF809D0, &qword_1E499D6C0);
  v162 = v158 == 1;
  v163 = v249;
  v164 = v248;
  if (!v162)
  {
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F570, &qword_1E499C048);
    v166 = v227;
    sub_1E48D18E4(&v227[*(v165 + 36)]);
    *v166 = sub_1E49971EC();
    *(v166 + 8) = v167 & 1;
    v293 = v296;
    sub_1E4997B5C();
    v168.n128_f64[0] = *&v292 + -4.0;
    v169 = (v166 + *(v226 + 36));
    *v169 = 0;
    v169[1] = v168.n128_u64[0];
    sub_1E4961948(v153, v154, v168);
    sub_1E48D3248();
    v170 = v225;
    sub_1E499793C();

    sub_1E48C1338(v166, &qword_1ECF7F488, &qword_1E499BEC8);
    (*(v164 + 32))(v285, v170, v163);
    v161 = 0;
  }

  v171.n128_f64[0] = (*(v164 + 56))(v285, v161, 1, v163);
  v172 = sub_1E4961948(v153, v154, v171);
  swift_getKeyPath();
  *&v293 = v172;
  sub_1E4996FCC();

  v173 = OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__alarmText;
  swift_beginAccess();
  v238(v243, &v172[v173], v245);

  v174 = sub_1E49978CC();
  v176 = v175;
  LODWORD(v259) = v177;
  v179 = v178;
  v180 = sub_1E49971EC();
  LODWORD(v258) = v181;
  v182 = [v262 systemFontOfSize:30.0 weight:v88];
  v183 = v265;
  v262 = v182;
  v184 = sub_1E48DAD54(v265, v182, 1);
  v185 = v268;
  *v268 = v184;
  v186 = v185 + *(v289 + 48);
  v286(v186, v183, v290);
  v187 = v266;
  sub_1E48C12D0(v185, v266, &qword_1ECF7EFC8, &qword_1E499B100);
  v188 = *v187;
  v260 = v184;

  v189 = sub_1E499743C();
  v190 = sub_1E499744C();
  if (v189)
  {
    if ((v190 & ~v189) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (!v190)
  {
    v189 = 0;
    goto LABEL_21;
  }

  v189 |= v190;
LABEL_21:
  v191 = v290;
  v192 = *(v289 + 48);
  v193 = v271;
  v286(v271, v186, v290);
  v194 = v282;
  *(v193 + *(v282 + 20)) = v188;
  *(v193 + *(v194 + 24)) = v189;
  v195 = v253;
  sub_1E48D2F38(v193, &v253[*(v269 + 36)]);
  *v195 = v180;
  *(v195 + 8) = v258 & 1;
  *(v195 + 16) = v174;
  *(v195 + 24) = v176;
  v196 = v259 & 1;
  *(v195 + 32) = v259 & 1;
  *(v195 + 40) = v179;

  sub_1E48C14F4(v174, v176, v196);

  sub_1E48D2F9C(v193);
  v197 = v266 + v192;
  v287 = v179;
  v198 = v176;
  v199 = v174;
  v200 = v264;
  v264(v197, v191);
  v289 = swift_getKeyPath();
  v201 = v250;
  v202 = &v250[*(v270 + 36)];
  sub_1E49973CC();

  sub_1E48C1564(v199, v198, v196);

  sub_1E48C1338(v268, &qword_1ECF7EFC8, &qword_1E499B100);
  v200(v265, v191);
  *v202 = v289;
  sub_1E48C15C8(v195, v201, &qword_1ECF7F4A0, &qword_1E499BEE0);
  v203 = v252;
  sub_1E48C15C8(v201, v252, &qword_1ECF7F4A8, &qword_1E499BEE8);
  v292 = v296;
  sub_1E4997B5C();
  v204 = v291;
  v205 = v251;
  sub_1E48C15C8(v203, v251, &qword_1ECF7F4A8, &qword_1E499BEE8);
  v206 = (v205 + *(v272 + 36));
  *v206 = 0;
  v206[1] = v204;
  sub_1E4961948(v279, v278, v207);
  v208 = v273;
  sub_1E499793C();

  sub_1E48C1338(v205, &qword_1ECF7F4B0, &qword_1E499BEF0);
  v209 = v247;
  v210 = *(v247 + 16);
  v211 = v267;
  v210(v267, v280, v281);
  v212 = v255;
  v213 = *(v255 + 16);
  v214 = v256;
  v213(v284, v283, v256);
  sub_1E48C12D0(v285, v274, &qword_1ECF7F498, &qword_1E499BED8);
  v215 = v254;
  v213(v254, v208, v214);
  v216 = v257;
  v210(v257, v211, v281);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F568, &qword_1E499C040);
  v213(&v216[v217[12]], v284, v214);
  v218 = &v216[v217[16]];
  *v218 = 0;
  v218[8] = 1;
  v219 = v274;
  sub_1E48C12D0(v274, &v216[v217[20]], &qword_1ECF7F498, &qword_1E499BED8);
  v213(&v216[v217[24]], v215, v214);
  v220 = *(v212 + 8);
  v220(v273, v214);
  sub_1E48C1338(v285, &qword_1ECF7F498, &qword_1E499BED8);
  v220(v283, v214);
  v221 = *(v209 + 8);
  v222 = v281;
  v221(v280, v281);
  v220(v215, v214);
  sub_1E48C1338(v219, &qword_1ECF7F498, &qword_1E499BED8);
  v220(v284, v214);
  return (v221)(v267, v222);
}

uint64_t sub_1E48D18E4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F588, &qword_1E499C050);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v20 - v5);

  v7 = sub_1E4997ADC();
  v8 = (v6 + *(v4 + 44));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F590, &qword_1E499C058) + 28);
  v10 = *MEMORY[0x1E69816C8];
  v11 = sub_1E4997B1C();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  *v6 = v7;
  v12 = *v1;
  v13 = *(v1 + 8);
  v15 = sub_1E4961948(*v1, v13, v14);
  swift_getKeyPath();
  v21 = v15;
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  v16 = *(v15 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationSecondaryTintColor);

  if (!v16)
  {
    v18 = sub_1E4961948(v12, v13, v17);
    swift_getKeyPath();
    v21 = v18;
    sub_1E4996FCC();

    v16 = *(v18 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationTintColor);
  }

  sub_1E48C15C8(v6, a1, &qword_1ECF7F588, &qword_1E499C050);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F598, &qword_1E499C0B8);
  *(a1 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_1E48D1B98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F688, &qword_1E499C148);
  sub_1E499733C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F690, &unk_1E499C150);
  sub_1E499733C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F680, &qword_1E499C0F0);
  sub_1E499733C();
  swift_getTupleTypeMetadata2();
  sub_1E4997D5C();
  swift_getWitnessTable();
  v6 = sub_1E4997BBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11];
  v13 = *(a1 + 24);
  v18 = v5;
  v19 = v13;
  v20 = v2;
  sub_1E49975AC();
  sub_1E4997BAC();
  swift_getWitnessTable();
  v14 = *(v7 + 16);
  v14(v12, v9, v6);
  v15 = *(v7 + 8);
  v15(v9, v6);
  v14(a2, v12, v6);
  return (v15)(v12, v6);
}

uint64_t sub_1E48D1E08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F688, &qword_1E499C148);
  v7 = sub_1E499733C();
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F690, &unk_1E499C150);
  v41 = sub_1E499733C();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F680, &qword_1E499C0F0);
  v11 = sub_1E499733C();
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v37 - v14;
  type metadata accessor for Complication(0, a2, a3, v15);
  v16 = [objc_opt_self() systemFontOfSize:30.0 weight:*MEMORY[0x1E69DB970]];
  sub_1E499782C();
  sub_1E499798C();

  v18 = sub_1E4961948(*a1, *(a1 + 8), v17);
  swift_getKeyPath();
  v51[0] = v18;
  sub_1E48D3598(&qword_1ECF7F2D8, type metadata accessor for DigitalClockViewModel, &unk_1E49A1DCC);
  sub_1E4996FCC();

  v19 = *(v18 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor);

  v51[0] = v19;
  v20 = sub_1E48C1B44(&qword_1ECF7F698, &qword_1ECF7F688, &qword_1E499C148, MEMORY[0x1E6980A18]);
  v51[6] = a3;
  v51[7] = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = v38;
  sub_1E499797C();

  (*(v39 + 8))(v9, v7);
  sub_1E4997D3C();
  v24 = sub_1E4961948(*a1, *(a1 + 8), v23);
  swift_getKeyPath();
  v51[0] = v24;
  sub_1E4996FCC();

  v25 = *(v24 + OBJC_IVAR____TtC11ClockPoster21DigitalClockViewModel__complicationForegroundColor);

  v51[0] = v25;
  v26 = sub_1E48C1B44(&qword_1ECF7F6A0, &qword_1ECF7F690, &unk_1E499C150, MEMORY[0x1E6980490]);
  v51[4] = WitnessTable;
  v51[5] = v26;
  v27 = v41;
  v28 = swift_getWitnessTable();
  sub_1E48D3EA8();
  v29 = v40;
  sub_1E49979BC();

  (*(v44 + 8))(v22, v27);
  v30 = sub_1E48C1B44(&qword_1ECF7F678, &qword_1ECF7F680, &qword_1E499C0F0, MEMORY[0x1E697F548]);
  v51[2] = v28;
  v51[3] = v30;
  v31 = swift_getWitnessTable();
  v33 = v42;
  v32 = v43;
  v34 = *(v43 + 16);
  v34(v42, v29, v11);
  v35 = *(v32 + 8);
  v35(v29, v11);
  v34(v29, v33, v11);
  v49 = 0;
  v50 = 1;
  v51[0] = v29;
  v51[1] = &v49;
  v48[0] = v11;
  v48[1] = MEMORY[0x1E6981840];
  v46 = v31;
  v47 = MEMORY[0x1E6981838];
  sub_1E48CE4A8(v51, 2uLL, v48);
  v35(v33, v11);
  return (v35)(v29, v11);
}

double sub_1E48D2430(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

void (*sub_1E48D2548(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E499716C();
  return sub_1E48C2910;
}

unint64_t sub_1E48D25D4()
{
  result = qword_1ECF7F3C8;
  if (!qword_1ECF7F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F3C8);
  }

  return result;
}

unint64_t sub_1E48D2628()
{
  result = qword_1ECF7F3D0;
  if (!qword_1ECF7F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F3D0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E48D2690(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1E48D26EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1E48D275C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
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

uint64_t sub_1E48D27A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E48D27F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E48D2840(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E48D289C()
{
  result = qword_1ECF7F3F0;
  if (!qword_1ECF7F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F3F0);
  }

  return result;
}

unint64_t sub_1E48D28F4()
{
  result = qword_1ECF7F3F8;
  if (!qword_1ECF7F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F3F8);
  }

  return result;
}

unint64_t sub_1E48D2980()
{
  result = qword_1ECF7F418;
  if (!qword_1ECF7F418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F410, &qword_1E499BDD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F408, &qword_1E499BDC8);
    sub_1E4996D8C();
    sub_1E48D2A90();
    sub_1E48D3598(&qword_1ECF7F440, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F418);
  }

  return result;
}

unint64_t sub_1E48D2A90()
{
  result = qword_1ECF7F420;
  if (!qword_1ECF7F420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F408, &qword_1E499BDC8);
    type metadata accessor for RollingClockViewModel(255);
    sub_1E48D2BC4();
    sub_1E48D3598(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
    swift_getOpaqueTypeConformance2();
    sub_1E48C1B44(&qword_1ECF7F430, &qword_1ECF7F438, &qword_1E499BDD8, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F420);
  }

  return result;
}

unint64_t sub_1E48D2BC4()
{
  result = qword_1ECF7F428;
  if (!qword_1ECF7F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F428);
  }

  return result;
}

uint64_t sub_1E48D2C18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F5A0, &qword_1E499C0C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E48C12D0(a1, &v5 - v3, &qword_1ECF7F5A0, &qword_1E499C0C0);
  return sub_1E499756C();
}

unint64_t sub_1E48D2CC0()
{
  result = qword_1ECF7F508;
  if (!qword_1ECF7F508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F4E0, &qword_1E499BF28);
    sub_1E48D30B0(&qword_1ECF7F510, &qword_1ECF7F4D8, &qword_1E499BF20, sub_1E48D2D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F508);
  }

  return result;
}

uint64_t sub_1E48D2DA8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E48D2E2C()
{
  result = qword_1ECF7F520;
  if (!qword_1ECF7F520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F4C0, &qword_1E499BF00);
    sub_1E48C1B44(&qword_1ECF7F528, &qword_1ECF7F4D0, &qword_1E499BF18, &unk_1E499C0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F520);
  }

  return result;
}

unint64_t sub_1E48D2EE4()
{
  result = qword_1EE2BB148;
  if (!qword_1EE2BB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB148);
  }

  return result;
}

uint64_t sub_1E48D2F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E499777C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48D2F9C(uint64_t a1)
{
  v2 = sub_1E499777C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E48D2FF8()
{
  result = qword_1ECF7F530;
  if (!qword_1ECF7F530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F4B0, &qword_1E499BEF0);
    sub_1E48D30B0(&qword_1ECF7F538, &qword_1ECF7F4A8, &qword_1E499BEE8, sub_1E48D3160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F530);
  }

  return result;
}

uint64_t sub_1E48D30B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1E48C1B44(&qword_1ECF7EE68, &qword_1ECF7EE70, &qword_1E499B010, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E48D3190()
{
  result = qword_1ECF7F548;
  if (!qword_1ECF7F548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F550, &qword_1E499C008);
    sub_1E48C1B44(&qword_1ECF7F558, &qword_1ECF7F560, &qword_1E499C010, &unk_1E499C0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F548);
  }

  return result;
}

unint64_t sub_1E48D3248()
{
  result = qword_1ECF7F578;
  if (!qword_1ECF7F578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F488, &qword_1E499BEC8);
    sub_1E48C1B44(&qword_1ECF7F580, &qword_1ECF7F570, &qword_1E499C048, &unk_1E499C0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F578);
  }

  return result;
}

uint64_t sub_1E48D3300(double a1, double a2, double a3, double a4)
{
  v5 = sub_1E49972CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E49972DC();
  sub_1E48D3598(qword_1ECF7F5A8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_1E499827C();
  sub_1E49982AC();
  result = sub_1E499829C();
  if (result == 2)
  {
    sub_1E49972EC();
    sub_1E4997D7C();
    LOBYTE(v12) = 0;
    LOBYTE(v11) = 0;
    sub_1E49972BC();
    v10 = *(v6 + 8);
    v10(v8, v5);
    [*v4 capHeight];
    sub_1E49972EC();
    sub_1E4997D7C();
    LOBYTE(v12) = 0;
    LOBYTE(v11) = 0;
    sub_1E49972BC();
    return (v10)(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E48D3598(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E48D35E8(uint64_t a1)
{
  sub_1E48D3A68(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E48D3670(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1E48D37F4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 9] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[8] = -a2;
  }
}

void sub_1E48D3A68(uint64_t a1)
{
  if (!qword_1ECF7F630)
  {
    type metadata accessor for DigitalClockViewModel(255);
    v1 = sub_1E49971DC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF7F630);
    }
  }
}

unint64_t sub_1E48D3AC0()
{
  result = qword_1ECF7F638;
  if (!qword_1ECF7F638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F640, &qword_1E499C0E8);
    sub_1E48D2980();
    sub_1E48D2A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F638);
  }

  return result;
}

unint64_t sub_1E48D3B4C()
{
  result = qword_1ECF7F648;
  if (!qword_1ECF7F648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F480, &qword_1E499BEC0);
    sub_1E48D3C04();
    sub_1E48C1B44(&qword_1ECF7F678, &qword_1ECF7F680, &qword_1E499C0F0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F648);
  }

  return result;
}

unint64_t sub_1E48D3C04()
{
  result = qword_1ECF7F650;
  if (!qword_1ECF7F650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F468, &qword_1E499BE28);
    sub_1E48D3CBC();
    sub_1E48C1B44(&qword_1ECF7F678, &qword_1ECF7F680, &qword_1E499C0F0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F650);
  }

  return result;
}

unint64_t sub_1E48D3CBC()
{
  result = qword_1ECF7F658;
  if (!qword_1ECF7F658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F460, &qword_1E499BE20);
    sub_1E48D3D74();
    sub_1E48C1B44(&qword_1ECF7F670, &qword_1ECF7F478, &unk_1E499BE60, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F658);
  }

  return result;
}

unint64_t sub_1E48D3D74()
{
  result = qword_1ECF7F660;
  if (!qword_1ECF7F660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F458, &qword_1E499BE18);
    sub_1E48C1B44(&qword_1ECF7F668, &qword_1ECF7F450, &qword_1E499BE10, MEMORY[0x1E6981870]);
    sub_1E48C1B44(&qword_1ECF7F430, &qword_1ECF7F438, &qword_1E499BDD8, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F660);
  }

  return result;
}

unint64_t sub_1E48D3EA8()
{
  result = qword_1ECF7F6A8;
  if (!qword_1ECF7F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F6A8);
  }

  return result;
}

id sub_1E48D3EFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for ClockLabel();
  v11.receiver = v0;
  v11.super_class = v4;
  result = objc_msgSendSuper2(&v11, sel_layoutSubviews);
  if ((*(v0 + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC11ClockPoster10ClockLabel_observingOverrideDate) = 1;
    v6 = sub_1E499816C();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E499814C();

    v8 = sub_1E499813C();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;

    sub_1E498DD1C(0, 0, v3, &unk_1E499C178, v9);
  }

  return result;
}

uint64_t sub_1E48D4080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C0, &qword_1E49A3A70);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = sub_1E499814C();
  v4[18] = sub_1E499813C();
  v9 = sub_1E499811C();
  v4[19] = v9;
  v4[20] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E48D4298, v9, v8);
}

uint64_t sub_1E48D4298()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_1E493C7A4(v1);
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_1E499813C();
  v0[21] = v4;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1E48D43F0;
  v6 = v0[14];
  v7 = v0[10];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1E48D43F0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E48D4534, v3, v2);
}

uint64_t sub_1E48D4534()
{
  v1 = v0[10];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

LABEL_11:

    v22 = v0[1];

    return v22();
  }

  sub_1E48D4BCC(v1, v0[9]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[14];
    v21 = v0[9];

    sub_1E48D4C3C(v21);
    (*(v19 + 8))(v18, v20);
    goto LABEL_11;
  }

  v3 = Strong;
  v4 = [Strong timeFormatter];
  if (v4)
  {
    v8 = v4;
    v9 = v0[8];
    sub_1E48D4CA4(v0[9], v9);
    v10 = sub_1E4996D8C();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v9, 1, v10);
    v13 = 0;
    if (v12 != 1)
    {
      v14 = v0[8];
      v13 = sub_1E4996CEC();
      (*(v11 + 8))(v14, v10);
    }

    v15 = v0[9];
    [v8 setOverrideDate_];

    sub_1E48D4C3C(v15);
    v16 = sub_1E499813C();
    v0[21] = v16;
    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_1E48D43F0;
    v7 = v0[14];
    v4 = v0[10];
    v6 = MEMORY[0x1E69E85E0];
    v5 = v16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6D9C8](v4, v5, v6, v7);
}

id sub_1E48D4AC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClockLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E48D4B18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E48D4080(a1, v4, v5, v6);
}

uint64_t sub_1E48D4BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48D4C3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E48D4CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48D4D14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499C180;
  v21[3] = &type metadata for SolidClockFaceColor;
  v1 = sub_1E48D5004();
  v21[4] = v1;
  v2 = swift_allocObject();
  v21[0] = v2;
  *(v2 + 16) = xmmword_1E499C190;
  *(v2 + 32) = xmmword_1E499C1A0;
  v23 = 0;
  v22 = 0u;
  v18[3] = &type metadata for SolidClockFaceColor;
  v18[4] = v1;
  v3 = swift_allocObject();
  v18[0] = v3;
  *(v3 + 16) = xmmword_1E499C1B0;
  *(v3 + 32) = xmmword_1E499C1C0;
  v20 = 0;
  v19 = 0u;
  sub_1E4934214(v21, v18, v0 + 32);
  sub_1E48C8360(v18);
  sub_1E48C8360(v21);
  *(v0 + 160) = &type metadata for SolidClockFaceColor;
  *(v0 + 168) = v1;
  v4 = swift_allocObject();
  *(v0 + 136) = v4;
  *(v4 + 16) = xmmword_1E499C1D0;
  *(v4 + 32) = xmmword_1E499C1E0;
  *(v0 + 232) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 264) = &type metadata for SolidClockFaceColor;
  *(v0 + 272) = v1;
  v5 = swift_allocObject();
  *(v0 + 240) = v5;
  __asm { FMOV            V1.2D, #1.0 }

  *(v5 + 16) = xmmword_1E499C1F0;
  *(v5 + 32) = _Q1;
  *(v0 + 336) = 0;
  *(v0 + 280) = 0u;
  *(v0 + 368) = &type metadata for SolidClockFaceColor;
  *(v0 + 376) = v1;
  v11 = swift_allocObject();
  *(v0 + 344) = v11;
  *(v11 + 16) = xmmword_1E499C200;
  *(v11 + 32) = xmmword_1E499C210;
  *(v0 + 440) = 0;
  *(v0 + 384) = 0u;
  *(v0 + 472) = &type metadata for SolidClockFaceColor;
  *(v0 + 480) = v1;
  v12 = swift_allocObject();
  *(v0 + 448) = v12;
  *(v12 + 16) = xmmword_1E499C220;
  *(v12 + 32) = xmmword_1E499C230;
  *(v0 + 544) = 0;
  *(v0 + 488) = 0u;
  *(v0 + 576) = &type metadata for SolidClockFaceColor;
  *(v0 + 584) = v1;
  v13 = swift_allocObject();
  *(v0 + 552) = v13;
  *(v13 + 16) = xmmword_1E499C240;
  *(v13 + 32) = xmmword_1E499C250;
  *(v0 + 648) = 0;
  *(v0 + 592) = 0u;
  *(v0 + 680) = &type metadata for SolidClockFaceColor;
  *(v0 + 688) = v1;
  v14 = swift_allocObject();
  *(v0 + 656) = v14;
  *(v14 + 16) = xmmword_1E499C260;
  *(v14 + 32) = xmmword_1E499C270;
  *(v0 + 752) = 0;
  *(v0 + 696) = 0u;
  *(v0 + 784) = &type metadata for SolidClockFaceColor;
  *(v0 + 792) = v1;
  v15 = swift_allocObject();
  *(v0 + 760) = v15;
  *(v15 + 16) = xmmword_1E499C280;
  *(v15 + 32) = xmmword_1E499C290;
  *(v0 + 856) = 0;
  *(v0 + 800) = 0u;
  *(v0 + 888) = &type metadata for SolidClockFaceColor;
  *(v0 + 896) = v1;
  v16 = swift_allocObject();
  *(v0 + 864) = v16;
  *(v16 + 16) = xmmword_1E499C2A0;
  *(v16 + 32) = xmmword_1E499C2B0;
  *(v0 + 960) = 0;
  *(v0 + 904) = 0u;
  return v0;
}

unint64_t sub_1E48D5004()
{
  result = qword_1EE2BB4B8;
  if (!qword_1EE2BB4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB4B8);
  }

  return result;
}

uint64_t sub_1E48D5058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499C2C0;
  *(v0 + 56) = &type metadata for SolidClockFaceColor;
  v1 = sub_1E48D5004();
  *(v0 + 64) = v1;
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_1E499C2D0;
  *(v2 + 32) = xmmword_1E499C2E0;
  *(v0 + 128) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 160) = &type metadata for SolidClockFaceColor;
  *(v0 + 168) = v1;
  v3 = swift_allocObject();
  *(v0 + 136) = v3;
  __asm { FMOV            V1.2D, #1.0 }

  v41 = _Q1;
  *(v3 + 16) = xmmword_1E499C2F0;
  *(v3 + 32) = _Q1;
  *(v0 + 232) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 264) = &type metadata for SolidClockFaceColor;
  *(v0 + 272) = v1;
  v9 = swift_allocObject();
  *(v0 + 240) = v9;
  *(v9 + 16) = xmmword_1E499C300;
  *(v9 + 32) = xmmword_1E499C310;
  *(v0 + 336) = 0;
  *(v0 + 280) = 0u;
  *(v0 + 368) = &type metadata for SolidClockFaceColor;
  *(v0 + 376) = v1;
  v10 = swift_allocObject();
  *(v0 + 344) = v10;
  *(v10 + 16) = xmmword_1E499C320;
  *(v10 + 32) = xmmword_1E499C330;
  *(v0 + 440) = 0;
  *(v0 + 384) = 0u;
  *(v0 + 472) = &type metadata for SolidClockFaceColor;
  *(v0 + 480) = v1;
  v11 = swift_allocObject();
  *(v0 + 448) = v11;
  *(v11 + 16) = xmmword_1E499C340;
  *(v11 + 32) = xmmword_1E499C350;
  *(v0 + 544) = 0;
  *(v0 + 488) = 0u;
  *(v0 + 576) = &type metadata for SolidClockFaceColor;
  *(v0 + 584) = v1;
  v12 = swift_allocObject();
  *(v0 + 552) = v12;
  *(v12 + 16) = xmmword_1E499C360;
  *(v12 + 32) = xmmword_1E499C370;
  *(v0 + 648) = 0;
  *(v0 + 592) = 0u;
  *(v0 + 680) = &type metadata for SolidClockFaceColor;
  *(v0 + 688) = v1;
  v13 = swift_allocObject();
  *(v0 + 656) = v13;
  *(v13 + 16) = xmmword_1E499C380;
  *(v13 + 32) = xmmword_1E499C390;
  *(v0 + 752) = 0;
  *(v0 + 696) = 0u;
  *(v0 + 784) = &type metadata for SolidClockFaceColor;
  *(v0 + 792) = v1;
  v14 = swift_allocObject();
  *(v0 + 760) = v14;
  *(v14 + 16) = xmmword_1E499C3A0;
  *(v14 + 32) = xmmword_1E499C3B0;
  *(v0 + 856) = 0;
  *(v0 + 800) = 0u;
  *(v0 + 888) = &type metadata for SolidClockFaceColor;
  *(v0 + 896) = v1;
  v15 = swift_allocObject();
  *(v0 + 864) = v15;
  *(v15 + 16) = xmmword_1E499C3C0;
  *(v15 + 32) = xmmword_1E499C3D0;
  *(v0 + 960) = 0;
  *(v0 + 904) = 0u;
  *(v0 + 992) = &type metadata for SolidClockFaceColor;
  *(v0 + 1000) = v1;
  v16 = swift_allocObject();
  *(v0 + 968) = v16;
  *(v16 + 16) = xmmword_1E499C3E0;
  *(v16 + 32) = xmmword_1E499C3F0;
  *(v0 + 1064) = 0;
  *(v0 + 1008) = 0u;
  *(v0 + 1096) = &type metadata for SolidClockFaceColor;
  *(v0 + 1104) = v1;
  v17 = swift_allocObject();
  *(v0 + 1072) = v17;
  *(v17 + 16) = xmmword_1E499C400;
  *(v17 + 32) = xmmword_1E499C410;
  *(v0 + 1168) = 0;
  *(v0 + 1112) = 0u;
  *(v0 + 1200) = &type metadata for SolidClockFaceColor;
  *(v0 + 1208) = v1;
  v18 = swift_allocObject();
  *(v0 + 1176) = v18;
  *(v18 + 16) = xmmword_1E499C420;
  *(v18 + 32) = xmmword_1E499C430;
  *(v0 + 1272) = 0;
  *(v0 + 1216) = 0u;
  *(v0 + 1304) = &type metadata for SolidClockFaceColor;
  *(v0 + 1312) = v1;
  v19 = swift_allocObject();
  *(v0 + 1280) = v19;
  *(v19 + 16) = xmmword_1E499C440;
  *(v19 + 32) = xmmword_1E499C450;
  *(v0 + 1376) = 0;
  *(v0 + 1320) = 0u;
  *(v0 + 1408) = &type metadata for SolidClockFaceColor;
  *(v0 + 1416) = v1;
  v20 = swift_allocObject();
  *(v0 + 1384) = v20;
  *(v20 + 16) = xmmword_1E499C460;
  *(v20 + 32) = xmmword_1E499C470;
  *(v0 + 1480) = 0;
  *(v0 + 1424) = 0u;
  *(v0 + 1512) = &type metadata for SolidClockFaceColor;
  *(v0 + 1520) = v1;
  v21 = swift_allocObject();
  *(v0 + 1488) = v21;
  *(v21 + 16) = xmmword_1E499C480;
  *(v21 + 32) = xmmword_1E499C490;
  *(v0 + 1584) = 0;
  *(v0 + 1528) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C8, &unk_1E49A02E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E499A180;
  *(v22 + 56) = &type metadata for SolidClockFaceColor;
  *(v22 + 64) = v1;
  v23 = swift_allocObject();
  *(v22 + 32) = v23;
  *(v23 + 16) = xmmword_1E499C4A0;
  *(v23 + 32) = xmmword_1E499C4B0;
  *(v22 + 96) = &type metadata for SolidClockFaceColor;
  *(v22 + 104) = v1;
  v24 = swift_allocObject();
  *(v22 + 72) = v24;
  *(v24 + 16) = xmmword_1E499C4C0;
  *(v24 + 32) = v41;
  *(v0 + 1592) = v22;
  *(v0 + 1600) = 0u;
  *(v0 + 1688) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1E499A180;
  *(v25 + 56) = &type metadata for SolidClockFaceColor;
  *(v25 + 64) = v1;
  v26 = swift_allocObject();
  *(v25 + 32) = v26;
  *(v26 + 16) = xmmword_1E499C4D0;
  *(v26 + 32) = xmmword_1E499C4E0;
  *(v25 + 96) = &type metadata for SolidClockFaceColor;
  *(v25 + 104) = v1;
  v27 = swift_allocObject();
  *(v25 + 72) = v27;
  *(v27 + 16) = xmmword_1E499C300;
  *(v27 + 32) = xmmword_1E499C310;
  *(v0 + 1696) = v25;
  *(v0 + 1704) = 0u;
  *(v0 + 1792) = 1;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E499A180;
  *(v28 + 56) = &type metadata for SolidClockFaceColor;
  *(v28 + 64) = v1;
  v29 = swift_allocObject();
  *(v28 + 32) = v29;
  *(v29 + 16) = xmmword_1E499C4F0;
  *(v29 + 32) = xmmword_1E499C500;
  *(v28 + 96) = &type metadata for SolidClockFaceColor;
  *(v28 + 104) = v1;
  v30 = swift_allocObject();
  *(v28 + 72) = v30;
  *(v30 + 16) = xmmword_1E499C510;
  *(v30 + 32) = xmmword_1E499C520;
  *(v0 + 1800) = v28;
  *(v0 + 1808) = 0u;
  *(v0 + 1896) = 1;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1E499A180;
  *(v31 + 56) = &type metadata for SolidClockFaceColor;
  *(v31 + 64) = v1;
  v32 = swift_allocObject();
  *(v31 + 32) = v32;
  *(v32 + 16) = xmmword_1E499C530;
  *(v32 + 32) = xmmword_1E499C540;
  *(v31 + 96) = &type metadata for SolidClockFaceColor;
  *(v31 + 104) = v1;
  v33 = swift_allocObject();
  *(v31 + 72) = v33;
  *(v33 + 16) = xmmword_1E499C550;
  *(v33 + 32) = xmmword_1E499C560;
  *(v0 + 1904) = v31;
  *(v0 + 1912) = 0u;
  *(v0 + 2000) = 1;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1E499A180;
  *(v34 + 56) = &type metadata for SolidClockFaceColor;
  *(v34 + 64) = v1;
  v35 = swift_allocObject();
  *(v34 + 32) = v35;
  *(v35 + 16) = xmmword_1E499C3C0;
  *(v35 + 32) = xmmword_1E499C3D0;
  *(v34 + 96) = &type metadata for SolidClockFaceColor;
  *(v34 + 104) = v1;
  v36 = swift_allocObject();
  *(v34 + 72) = v36;
  *(v36 + 16) = xmmword_1E499C570;
  *(v36 + 32) = xmmword_1E499C580;
  *(v0 + 2008) = v34;
  *(v0 + 2016) = 0u;
  *(v0 + 2104) = 1;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1E499A180;
  *(v37 + 56) = &type metadata for SolidClockFaceColor;
  *(v37 + 64) = v1;
  v38 = swift_allocObject();
  *(v37 + 32) = v38;
  *(v38 + 16) = xmmword_1E499C590;
  *(v38 + 32) = xmmword_1E499C5A0;
  *(v37 + 96) = &type metadata for SolidClockFaceColor;
  *(v37 + 104) = v1;
  v39 = swift_allocObject();
  *(v37 + 72) = v39;
  *(v39 + 16) = xmmword_1E499C5B0;
  *(v39 + 32) = v41;
  *(v0 + 2112) = v37;
  *(v0 + 2120) = 0u;
  *(v0 + 2208) = 1;
  sub_1E4934308(&unk_1F5E82668, v0 + 2216);
  return v0;
}

uint64_t sub_1E48D57B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499C5C0;
  sub_1E4934478(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C8, &unk_1E49A02E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E499A180;
  *(v1 + 56) = &type metadata for SolidClockFaceColor;
  v2 = sub_1E48D5004();
  *(v1 + 64) = v2;
  v3 = swift_allocObject();
  *(v1 + 32) = v3;
  *(v3 + 16) = xmmword_1E499C5D0;
  *(v3 + 32) = xmmword_1E499C5E0;
  *(v1 + 96) = &type metadata for SolidClockFaceColor;
  *(v1 + 104) = v2;
  v4 = swift_allocObject();
  *(v1 + 72) = v4;
  *(v4 + 16) = xmmword_1E499C5F0;
  *(v4 + 32) = xmmword_1E499C600;
  *(v0 + 136) = v1;
  *(v0 + 144) = 0u;
  *(v0 + 232) = 1;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E499A180;
  *(v5 + 56) = &type metadata for SolidClockFaceColor;
  *(v5 + 64) = v2;
  v6 = swift_allocObject();
  *(v5 + 32) = v6;
  *(v6 + 16) = xmmword_1E499C610;
  *(v6 + 32) = xmmword_1E499C620;
  *(v5 + 96) = &type metadata for SolidClockFaceColor;
  *(v5 + 104) = v2;
  v7 = swift_allocObject();
  *(v5 + 72) = v7;
  *(v7 + 16) = xmmword_1E499C630;
  *(v7 + 32) = xmmword_1E499C640;
  *(v0 + 240) = v5;
  *(v0 + 248) = 0u;
  *(v0 + 336) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E499A180;
  *(v8 + 56) = &type metadata for SolidClockFaceColor;
  *(v8 + 64) = v2;
  v9 = swift_allocObject();
  *(v8 + 32) = v9;
  *(v9 + 16) = xmmword_1E499C650;
  *(v9 + 32) = xmmword_1E499C660;
  *(v8 + 96) = &type metadata for SolidClockFaceColor;
  *(v8 + 104) = v2;
  v10 = swift_allocObject();
  *(v8 + 72) = v10;
  *(v10 + 16) = xmmword_1E499C670;
  *(v10 + 32) = xmmword_1E499C680;
  *(v0 + 344) = v8;
  *(v0 + 352) = 0u;
  *(v0 + 440) = 1;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E499A180;
  *(v11 + 56) = &type metadata for SolidClockFaceColor;
  *(v11 + 64) = v2;
  v12 = swift_allocObject();
  *(v11 + 32) = v12;
  *(v12 + 16) = xmmword_1E499C690;
  *(v12 + 32) = xmmword_1E499C330;
  *(v11 + 96) = &type metadata for SolidClockFaceColor;
  *(v11 + 104) = v2;
  v13 = swift_allocObject();
  *(v11 + 72) = v13;
  __asm { FMOV            V1.2D, #1.0 }

  v23 = _Q1;
  *(v13 + 16) = xmmword_1E499C6A0;
  *(v13 + 32) = _Q1;
  *(v0 + 448) = v11;
  *(v0 + 456) = 0u;
  *(v0 + 544) = 1;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E499A180;
  *(v19 + 56) = &type metadata for SolidClockFaceColor;
  *(v19 + 64) = v2;
  v20 = swift_allocObject();
  *(v19 + 32) = v20;
  *(v20 + 16) = xmmword_1E499C6B0;
  *(v20 + 32) = xmmword_1E499C6C0;
  *(v19 + 96) = &type metadata for SolidClockFaceColor;
  *(v19 + 104) = v2;
  v21 = swift_allocObject();
  *(v19 + 72) = v21;
  *(v21 + 16) = xmmword_1E499C6D0;
  *(v21 + 32) = v23;
  *(v0 + 552) = v19;
  *(v0 + 560) = 0u;
  *(v0 + 648) = 1;
  sub_1E4934608(v0 + 656);
  return v0;
}

uint64_t sub_1E48D5B04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499C6E0;
  *(v0 + 56) = &type metadata for DynamicClockFaceColor;
  v1 = sub_1E48D615C();
  *(v0 + 64) = v1;
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  v2[1] = xmmword_1E499C1D0;
  v2[2] = xmmword_1E499C1E0;
  v2[3] = xmmword_1E499C6F0;
  v2[4] = xmmword_1E499C5E0;
  *(v0 + 128) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 160) = &type metadata for DynamicClockFaceColor;
  *(v0 + 168) = v1;
  v3 = swift_allocObject();
  *(v0 + 136) = v3;
  __asm { FMOV            V1.2D, #1.0 }

  v27 = _Q1;
  v3[1] = xmmword_1E499C1F0;
  v3[2] = _Q1;
  v3[3] = xmmword_1E499C700;
  v3[4] = xmmword_1E499C710;
  *(v0 + 232) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 264) = &type metadata for DynamicClockFaceColor;
  *(v0 + 272) = v1;
  v9 = swift_allocObject();
  *(v0 + 240) = v9;
  v9[1] = xmmword_1E499C200;
  v9[2] = xmmword_1E499C210;
  v9[3] = xmmword_1E499C720;
  v9[4] = xmmword_1E499C730;
  *(v0 + 336) = 0;
  *(v0 + 280) = 0u;
  *(v0 + 368) = &type metadata for DynamicClockFaceColor;
  *(v0 + 376) = v1;
  v10 = swift_allocObject();
  *(v0 + 344) = v10;
  v10[1] = xmmword_1E499C220;
  v10[2] = xmmword_1E499C230;
  v10[3] = xmmword_1E499C740;
  v10[4] = xmmword_1E499C750;
  *(v0 + 440) = 0;
  *(v0 + 384) = 0u;
  *(v0 + 472) = &type metadata for DynamicClockFaceColor;
  *(v0 + 480) = v1;
  v11 = swift_allocObject();
  *(v0 + 448) = v11;
  v11[1] = xmmword_1E499C240;
  v11[2] = xmmword_1E499C250;
  v11[3] = xmmword_1E499C760;
  v11[4] = xmmword_1E499C770;
  *(v0 + 544) = 0;
  *(v0 + 488) = 0u;
  *(v0 + 576) = &type metadata for DynamicClockFaceColor;
  *(v0 + 584) = v1;
  v12 = swift_allocObject();
  *(v0 + 552) = v12;
  v12[1] = xmmword_1E499C260;
  v12[2] = xmmword_1E499C270;
  v12[3] = xmmword_1E499C780;
  v12[4] = xmmword_1E499C790;
  *(v0 + 648) = 0;
  *(v0 + 592) = 0u;
  *(v0 + 680) = &type metadata for DynamicClockFaceColor;
  *(v0 + 688) = v1;
  v13 = swift_allocObject();
  *(v0 + 656) = v13;
  v13[1] = xmmword_1E499C280;
  v13[2] = xmmword_1E499C290;
  v13[3] = xmmword_1E499C7A0;
  v13[4] = xmmword_1E499C7B0;
  *(v0 + 752) = 0;
  *(v0 + 696) = 0u;
  *(v0 + 784) = &type metadata for DynamicClockFaceColor;
  *(v0 + 792) = v1;
  v14 = swift_allocObject();
  *(v0 + 760) = v14;
  v14[1] = xmmword_1E499C2A0;
  v14[2] = xmmword_1E499C2B0;
  v14[3] = xmmword_1E499C7C0;
  v14[4] = xmmword_1E499C7D0;
  *(v0 + 856) = 0;
  *(v0 + 800) = 0u;
  *(v0 + 888) = &type metadata for DynamicClockFaceColor;
  *(v0 + 896) = v1;
  v15 = swift_allocObject();
  *(v0 + 864) = v15;
  v15[1] = xmmword_1E499C7E0;
  v15[2] = xmmword_1E499C5A0;
  v15[3] = xmmword_1E499C7F0;
  v15[4] = xmmword_1E499C330;
  *(v0 + 960) = 0;
  *(v0 + 904) = 0u;
  v35 = &type metadata for DynamicClockFaceColor;
  v36 = v1;
  v16 = swift_allocObject();
  v16[1] = xmmword_1E499C1D0;
  v16[2] = xmmword_1E499C1E0;
  v16[3] = xmmword_1E499C6F0;
  v16[4] = xmmword_1E499C5E0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v34[0] = v16;
  v29 = &type metadata for DynamicClockFaceColor;
  v30 = v1;
  v17 = swift_allocObject();
  v17[1] = xmmword_1E499C2A0;
  v17[2] = xmmword_1E499C2B0;
  v17[3] = xmmword_1E499C7C0;
  v17[4] = xmmword_1E499C7D0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v28[0] = v17;
  sub_1E4934214(v34, v28, v0 + 968);
  sub_1E48C8360(v28);
  sub_1E48C8360(v34);
  v35 = &type metadata for DynamicClockFaceColor;
  v36 = v1;
  v18 = swift_allocObject();
  v18[1] = xmmword_1E499C6F0;
  v18[2] = xmmword_1E499C5E0;
  v18[3] = xmmword_1E499C1D0;
  v18[4] = xmmword_1E499C1E0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v34[0] = v18;
  v29 = &type metadata for DynamicClockFaceColor;
  v30 = v1;
  v19 = swift_allocObject();
  v19[1] = xmmword_1E499C280;
  v19[2] = xmmword_1E499C290;
  v19[3] = xmmword_1E499C7A0;
  v19[4] = xmmword_1E499C7B0;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v28[0] = v19;
  sub_1E4934214(v34, v28, v0 + 1072);
  sub_1E48C8360(v28);
  sub_1E48C8360(v34);
  v35 = &type metadata for DynamicClockFaceColor;
  v36 = v1;
  v20 = swift_allocObject();
  v20[1] = xmmword_1E499C700;
  v20[2] = xmmword_1E499C710;
  v20[3] = xmmword_1E499C1F0;
  v20[4] = v27;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v34[0] = v20;
  v29 = &type metadata for DynamicClockFaceColor;
  v30 = v1;
  v21 = swift_allocObject();
  v21[1] = xmmword_1E499C220;
  v21[2] = xmmword_1E499C230;
  v21[3] = xmmword_1E499C740;
  v21[4] = xmmword_1E499C750;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v28[0] = v21;
  sub_1E4934214(v34, v28, v0 + 1176);
  sub_1E48C8360(v28);
  sub_1E48C8360(v34);
  v35 = &type metadata for DynamicClockFaceColor;
  v36 = v1;
  v22 = swift_allocObject();
  v22[1] = xmmword_1E499C260;
  v22[2] = xmmword_1E499C270;
  v22[3] = xmmword_1E499C780;
  v22[4] = xmmword_1E499C790;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v34[0] = v22;
  v29 = &type metadata for DynamicClockFaceColor;
  v30 = v1;
  v23 = swift_allocObject();
  v23[1] = xmmword_1E499C240;
  v23[2] = xmmword_1E499C250;
  v23[3] = xmmword_1E499C760;
  v23[4] = xmmword_1E499C770;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v28[0] = v23;
  sub_1E4934214(v34, v28, v0 + 1280);
  sub_1E48C8360(v28);
  sub_1E48C8360(v34);
  v35 = &type metadata for DynamicClockFaceColor;
  v36 = v1;
  v24 = swift_allocObject();
  v24[1] = xmmword_1E499C200;
  v24[2] = xmmword_1E499C210;
  v24[3] = xmmword_1E499C720;
  v24[4] = xmmword_1E499C730;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v34[0] = v24;
  v29 = &type metadata for DynamicClockFaceColor;
  v30 = v1;
  v25 = swift_allocObject();
  v25[1] = xmmword_1E499C7E0;
  v25[2] = xmmword_1E499C5A0;
  v25[3] = xmmword_1E499C7F0;
  v25[4] = xmmword_1E499C330;
  v33 = 0;
  v31 = 0;
  v32 = 0;
  v28[0] = v25;
  sub_1E4934214(v34, v28, v0 + 1384);
  sub_1E48C8360(v28);
  sub_1E48C8360(v34);
  return v0;
}

unint64_t sub_1E48D615C()
{
  result = qword_1EE2BB490;
  if (!qword_1EE2BB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BB490);
  }

  return result;
}

uint64_t sub_1E48D61D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = *(a2 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = *(v12 + 16);
  v15(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6E0, &qword_1E499C9E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
  }

  sub_1E48C12D0(v26, &v21, &qword_1ECF7F6E8, &qword_1E499C9E8);
  v16 = v22;
  if (v22)
  {
    v17 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    sub_1E48D6438(a1, v16, a3, v17, v24);
    __swift_destroy_boxed_opaque_existential_0Tm(&v21);
  }

  else
  {
    sub_1E48C1338(&v21, &qword_1ECF7F6E8, &qword_1E499C9E8);
    memset(v24, 0, sizeof(v24));
    v25 = 0;
  }

  sub_1E48C12D0(v24, &v21, &qword_1ECF7F6F0, &qword_1E499C9F0);
  if (v22)
  {
    sub_1E48C1338(v24, &qword_1ECF7F6F0, &qword_1E499C9F0);
    sub_1E48B7448(&v21, a5);
  }

  else
  {
    a5[3] = a2;
    a5[4] = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
    (v15)(boxed_opaque_existential_0, v6, a2);
    sub_1E48C1338(v24, &qword_1ECF7F6F0, &qword_1E499C9F0);
    if (v22)
    {
      sub_1E48C1338(&v21, &qword_1ECF7F6F0, &qword_1E499C9F0);
    }
  }

  return sub_1E48C1338(v26, &qword_1ECF7F6E8, &qword_1E499C9E8);
}

uint64_t sub_1E48D6438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v31 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = sub_1E49984BC();
  v10 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v29 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v29 - v19;
  (*(v21 + 16))(v15, v31, a3, v18);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v12, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v20, v12, AssociatedTypeWitness);
    v24 = *(a4 + 24);
    v25 = *(a4 + 8);
    a5[3] = a2;
    a5[4] = v25;
    __swift_allocate_boxed_opaque_existential_0(a5);
    v24(v20, a2, a4);
    return (*(v16 + 8))(v20, AssociatedTypeWitness);
  }

  else
  {
    v23(v12, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v12, v30);
    v27 = *(a4 + 8);
    a5[3] = a2;
    a5[4] = v27;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
    return (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v32, a2);
  }
}

float sub_1E48D6754()
{
  v1 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  noise2();
  if (v4 < fabsf(v6))
  {
    if (v6 < -v4)
    {
      v6 = -v4;
    }

    if (v6 >= v4)
    {
      v6 = v4;
    }
  }

  v7 = v2 + ((v3 - v2) * (1.0 - ((v4 - v6) / (v4 + v4))));

  return fmodf(v7, v5);
}

float sub_1E48D67F4@<S0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v9 = *(v2 + 3);
  v5 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  *(a2 + 24) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  result = *(v5 + 6);
  v8 = *(v5 + 1);
  *boxed_opaque_existential_0 = v4;
  *(boxed_opaque_existential_0 + 1) = v8;
  *(boxed_opaque_existential_0 + 6) = result;
  return result;
}

float sub_1E48D6868(uint64_t a1, __n128 a2)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0.0;
  }

  if (v8 == 1)
  {
    return *(a1 + 36);
  }

  v26 = v7;
  v27 = v6;
  v28 = v5;
  v29 = v4;
  v30 = v2;
  v31 = v3;
  v10 = a2.n128_f32[0];
  sub_1E48D6948(a1, v21, a2.n128_f32[0]);
  v12 = v21[1];
  v13 = v22;
  v14 = v24;
  v15 = v25;
  v16 = (v10 - v21[0]) + 1.0;
  if (v21[0] <= v10)
  {
    v16 = v10 - v21[0];
  }

  if (v23 <= v21[0])
  {
    *&v11 = v16;
  }

  else
  {
    *&v11 = v10 - v21[0];
  }

  if (v23 <= v21[0])
  {
    v17 = (v23 - v21[0]) + 1.0;
  }

  else
  {
    v17 = v23 - v21[0];
  }

  *&v11 = *&v11 / v17;
  [v25 _solveForInput_];
  v19 = v18;

  v20 = 0.0;
  if (v19 > 0.0)
  {
    v20 = v19;
  }

  if (v19 >= 1.0)
  {
    v20 = 1.0;
  }

  return v12 - ((v12 - v14) * v20);
}

void sub_1E48D6948(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4 - 1;
  if (v4 == 1)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 36);
  v10 = (a1 + 56);
  v9 = *(a1 + 56);
  v11 = *(a1 + 48);
  v12 = *(a1 + 52);
  v13 = *(a1 + 40);
  v14 = v9;
  v15 = v7;
  v16 = v8;
  v17 = v13;
  while (1)
  {
    v21 = *(v10 - 6);
    v22 = *(v10 - 2);
    v23 = *(v10 - 2);
    v24 = *(v10 - 1);
    v25 = *v10;
    if (v21 <= a3 && v23 >= a3)
    {
      break;
    }

    if (v5 == 1)
    {
      v18 = v22;
      v19 = v25;

      v20 = v13;
      v11 = v7;
      v12 = v8;
      v14 = v20;
      v17 = v19;
      v15 = v23;
      v16 = v24;
    }

    else
    {
      v23 = v15;
      v24 = v16;
    }

    v10 += 2;
    if (!--v5)
    {
      goto LABEL_13;
    }
  }

  v27 = *(v10 - 5);
  v28 = v22;
  v29 = v25;

  v11 = v23;
  v12 = v24;
  v14 = v29;
  v23 = v21;
  v24 = v27;
  v17 = v28;
LABEL_13:
  *a2 = v23;
  *(a2 + 4) = v24;
  *(a2 + 8) = v17;
  *(a2 + 16) = v11;
  *(a2 + 20) = v12;
  *(a2 + 24) = v14;
}

uint64_t sub_1E48D6AAC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t sub_1E48D6ACC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E4952DC0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1E49987EC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6D0, &qword_1E499C860);
      v7 = sub_1E49980EC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1E48D6C20(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E48D6C20(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1E48E9FB4(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_1E48D7194((*a3 + 8 * *v81), (*a3 + 8 * *v83), (*a3 + 8 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = 8 * v9;
      v12 = (*a3 + 8 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 8 * v7 - 8;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 8;
          v11 += 8;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E48EA0AC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_1E48EA0AC((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_1E48D7194((*a3 + 8 * *v74), (*a3 + 8 * *v76), (*a3 + 8 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v7 - 8;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 8 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 8;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 12);
    *(v30 + 8) = *v30;
    *v30 = v28;
    *(v30 + 4) = v31;
    v30 -= 8;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1E48D7194(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v21 >> 3));
  }

  return 1;
}

char *sub_1E48D7398(char *a1)
{
  v14 = a1;

  sub_1E48D6ACC(&v14);

  v1 = v14;
  v2 = *(v14 + 2);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1E4906EB8(0, v2, 0);
    v3 = v14;
    v4 = objc_opt_self();
    v5 = *MEMORY[0x1E6979EB8];
    v6 = 32;
    do
    {
      v7 = *&v1[v6];
      v8 = [v4 functionWithName_];
      v14 = v3;
      v10 = *(v3 + 2);
      v9 = *(v3 + 3);
      if (v10 >= v9 >> 1)
      {
        v12 = v8;
        sub_1E4906EB8((v9 > 1), v10 + 1, 1);
        v8 = v12;
        v3 = v14;
      }

      *(v3 + 2) = v10 + 1;
      v11 = &v3[16 * v10];
      *(v11 + 4) = v7;
      *(v11 + 5) = v8;
      v6 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1E48D7520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E48D7568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E48D75C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E48D760C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E48D7664(uint64_t a1)
{
  result = sub_1E48D768C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E48D768C()
{
  result = qword_1ECF7F6D8;
  if (!qword_1ECF7F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F6D8);
  }

  return result;
}

char *sub_1E48D76E8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace;
  type metadata accessor for AnalogClockFaceView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[v4] = v5;
  sub_1E48C8304(a1, &v2[OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_look]);
  v2[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_isDisplayStyleRedMode] = 0;
  v2[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_canAnimateRedMode] = 0;
  v6 = objc_allocWithZone(type metadata accessor for ClockFaceHostView());
  v7 = v5;
  *&v2[OBJC_IVAR____TtC11ClockPoster23ClockFaceViewController_hostView] = sub_1E49120F8(v7);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for ClockFaceViewController();
  v8 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);

  sub_1E48C8304(a1, v12);
  v9 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_look;
  swift_beginAccess();
  v10 = v8;
  sub_1E48D8EA8(v12, v8 + v9);
  swift_endAccess();
  sub_1E48D7840();

  sub_1E48C8360(a1);
  sub_1E48C8360(v12);
  return v10;
}

uint64_t sub_1E48D7840()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_1E499708C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_look;
  swift_beginAccess();
  sub_1E48C8304(&v0[v9], v49);
  if (v51 == 2)
  {

    sub_1E48B7448(v49, v45);
    sub_1E48B7448(v50, v42);
    v15 = *&v0[OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace];
    v16 = v46;
    v17 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v18 = (*(v17 + 40))(v16, v17);
    [v15 setTintColor_];

    v19 = v43;
    v20 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v21 = (*(v20 + 40))(v19, v20);
    v22 = *&v15[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor];
    *&v15[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor] = v21;
    v23 = v21;

    sub_1E494B0D8();
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    return __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  if (!v51)
  {

    sub_1E48B7448(v49, v45);
    v10 = v46;
    v11 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v12 = (*(v11 + 40))(v10, v11);
    v13 = *&v0[OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace];
    [*&v1[OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace] setTintColor_];
    v14 = *(v13 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor);
    *(v13 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor) = 0;

    sub_1E494B0D8();
    return __swift_destroy_boxed_opaque_existential_0Tm(v45);
  }

  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v25 = qword_1EE2BB458;
  v26 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
  swift_beginAccess();
  sub_1E48C12D0(v25 + v26, v4, &qword_1ECF7F008, &qword_1E499B170);
  v27 = *(v6 + 48);
  if (v27(v4, 1, v5) == 1)
  {
    sub_1E4904BF4(v8);
    if (v27(v4, 1, v5) != 1)
    {
      sub_1E48C1338(v4, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  v28 = v1;
  v29 = sub_1E499706C();
  v30 = sub_1E499830C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v48 = v41;
    *v31 = 136446466;
    sub_1E48C8304(&v1[v9], v45);
    v32 = v29;
    v33 = sub_1E48C60D0();
    v35 = v34;
    sub_1E48C8360(v45);
    v36 = sub_1E48CA094(v33, v35, &v48);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2114;
    *(v31 + 14) = v28;
    v37 = v40;
    *v40 = v28;
    v38 = v28;
    _os_log_impl(&dword_1E48B0000, v32, v30, "Unsupported look. Look: '%{public}s' for '%{public}@'", v31, 0x16u);
    sub_1E48C1338(v37, &qword_1ECF7F718, &unk_1E499CA90);
    MEMORY[0x1E691CED0](v37, -1, -1);
    v39 = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x1E691CED0](v39, -1, -1);
    MEMORY[0x1E691CED0](v31, -1, -1);
  }

  else
  {
  }

  (*(v6 + 8))(v8, v5);
  return sub_1E48C8360(v49);
}

void sub_1E48D7D70(char a1)
{
  sub_1E48C21E0(a1);
  *(*(v1 + OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace) + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_redMode) = a1;
  sub_1E494B0D8();
}

uint64_t sub_1E48D7E40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for AnalogClockFaceViewController();
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  [v0 setOverrideUserInterfaceStyle_];
  v5 = [objc_allocWithZone(type metadata accessor for AnalogClockFaceDateComplicationView()) initWithFrame:0 options:{0.0, 0.0, 0.0, 0.0}];
  sub_1E48D8AE0(v5);
  v6 = sub_1E499816C();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E499814C();

  v8 = sub_1E499813C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;

  sub_1E498DD1C(0, 0, v3, &unk_1E499CAA8, v9);
}

uint64_t sub_1E48D7FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1E4996D8C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for Alarm(0);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0);
  v4[16] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F730, &qword_1E499CAC0);
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F738, &unk_1E49A2240);
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = sub_1E499814C();
  v4[24] = sub_1E499813C();
  v11 = sub_1E499811C();
  v4[25] = v11;
  v4[26] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E48D82C0, v11, v10);
}

uint64_t sub_1E48D82C0()
{
  if (qword_1ECF7EAE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81910;
  *(v0 + 216) = qword_1ECF81910;

  return MEMORY[0x1EEE6DFA0](sub_1E48D8358, v1, 0);
}

uint64_t sub_1E48D8358()
{
  sub_1E48F0638(v0[19]);
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x1EEE6DFA0](sub_1E48D83C0, v1, v2);
}

uint64_t sub_1E48D83C0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_1E499813C();
  v0[28] = v4;
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_1E48D84C8;
  v6 = v0[20];
  v7 = v0[16];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1E48D84C8()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1E48D860C, v3, v2);
}

uint64_t sub_1E48D860C()
{
  v1 = v0[16];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    (*(v0[21] + 8))(v0[22], v0[20]);

LABEL_8:

    v19 = v0[1];

    return v19();
  }

  sub_1E48D9004(v1, v0[15]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v16 = v0[21];
    v15 = v0[22];
    v17 = v0[20];
    v18 = v0[15];

    sub_1E48C1338(v18, &qword_1ECF7F728, &unk_1E499CAB0);
    (*(v16 + 8))(v15, v17);
    goto LABEL_8;
  }

  v3 = Strong;
  v4 = v0[14];
  v5 = v0[9];
  v6 = v0[10];
  sub_1E48C12D0(v0[15], v4, &qword_1ECF7F728, &unk_1E499CAB0);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[14];
  if (v7 != 1)
  {
    v21 = v0[11];
    v22 = v0[8];
    v23 = v0[9];
    v24 = v0[6];
    v25 = v0[7];
    sub_1E48D9074(v8, v21);
    LOBYTE(v23) = *(v21 + *(v23 + 20));
    (*(v25 + 16))(v22, v21, v24);
    v26 = objc_allocWithZone(type metadata accessor for AnalogClockFaceAlarmComplicationView());
    sub_1E498B07C(v22, (v23 & 1) == 0, 0.0, 0.0, 0.0, 0.0);
    v28 = v27;
    v29 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace;
    v30 = *&v3[OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace];
    v31 = &v30[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
    v32 = *&v30[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
    if (v32)
    {
      sub_1E48D8F04();
      v33 = v28;
      v34 = v32;
      v35 = sub_1E499848C();

      if (v35)
      {
        v12 = v0[15];
        v36 = v0[11];

        sub_1E48D90D8(v36);
        goto LABEL_15;
      }

      v30 = *&v3[v29];
      v31 = &v30[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
      v37 = *&v30[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
      if (v37)
      {
        v38 = v33;
        [v37 removeFromSuperview];
        v39 = *v31;
LABEL_20:
        v41 = v0[15];
        v42 = v0[11];
        *v31 = v33;
        v43 = v28;

        [v30 addSubview_];
        sub_1E494B0D8();

        [v30 setNeedsLayout];
        sub_1E48D90D8(v42);
        v14 = v41;
        goto LABEL_21;
      }
    }

    else
    {
      v33 = v27;
    }

    v40 = v28;
    v39 = 0;
    goto LABEL_20;
  }

  sub_1E48C1338(v8, &qword_1ECF7F728, &unk_1E499CAB0);
  v9 = *&v3[OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace];
  v10 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView;
  v11 = *&v9[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
  v12 = v0[15];
  if (v11)
  {
    [v11 removeFromSuperview];
    v13 = *&v9[v10];
    *&v9[v10] = 0;

    [v9 setNeedsLayout];
    v14 = v12;
LABEL_21:
    sub_1E48C1338(v14, &qword_1ECF7F728, &unk_1E499CAB0);

    goto LABEL_22;
  }

LABEL_15:
  sub_1E48C1338(v12, &qword_1ECF7F728, &unk_1E499CAB0);
LABEL_22:
  v44 = sub_1E499813C();
  v0[28] = v44;
  v45 = swift_task_alloc();
  v0[29] = v45;
  *v45 = v0;
  v45[1] = sub_1E48D84C8;
  v46 = v0[20];
  v47 = v0[16];
  v48 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v47, v44, v48, v46);
}

void sub_1E48D8AE0(id a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace);
  v4 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView;
  v5 = *&v3[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView];
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v5)
  {
LABEL_5:
    v8 = v2;
    v9 = 0;
LABEL_8:
    *&v3[v4] = v2;
    v10 = v8;

    if (v2)
    {
      [v3 addSubview_];
      sub_1E494B0D8();
    }

    [v3 setNeedsLayout];

    goto LABEL_11;
  }

  sub_1E48D8F04();
  v6 = v5;
  v10 = v2;
  v7 = sub_1E499848C();

  if ((v7 & 1) == 0)
  {
    v5 = *&v3[v4];
    a1 = v10;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_7:
    v8 = a1;
    [v5 removeFromSuperview];
    v9 = *&v3[v4];
    goto LABEL_8;
  }

LABEL_11:
}

void sub_1E48D8C38()
{
  sub_1E48C8360(v0 + OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_look);
  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_clockFace);
}

id sub_1E48D8C78(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AnalogClockFaceViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E48D8D1C(uint64_t a1)
{
  result = sub_1E48D8E68(&qword_1ECF7F708, MEMORY[0x1E6969F88]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E48D8D60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_look;
  swift_beginAccess();
  return sub_1E48C8304(v1 + v3, a1);
}

uint64_t sub_1E48D8DB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster29AnalogClockFaceViewController_look;
  swift_beginAccess();
  sub_1E48D8EA8(a1, v1 + v3);
  swift_endAccess();
  sub_1E48D7840();
  return sub_1E48C8360(a1);
}

uint64_t sub_1E48D8E24(uint64_t a1)
{
  result = sub_1E48D8E68(&qword_1ECF7F710, &unk_1E499CA30);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E48D8E68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnalogClockFaceViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E48D8F04()
{
  result = qword_1ECF7F720;
  if (!qword_1ECF7F720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF7F720);
  }

  return result;
}

uint64_t sub_1E48D8F50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E48D7FF0(a1, v4, v5, v6);
}

uint64_t sub_1E48D9004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48D9074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alarm(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48D90D8(uint64_t a1)
{
  v2 = type metadata accessor for Alarm(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RedModeRenderingMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1E499892C();
  MEMORY[0x1E691C150](v1);
  return sub_1E499896C();
}

unint64_t sub_1E48D91C0()
{
  result = qword_1ECF7F740;
  if (!qword_1ECF7F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F740);
  }

  return result;
}

id sub_1E48D9394(void *a1, uint64_t a2, uint64_t (*a3)(__n128), unint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v11 = sub_1E499709C();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  a3(v12);
  sub_1E499843C();
  sub_1E48D96F8(a4, a5, a6);
  sub_1E49970AC();
  sub_1E499844C();
  [a1 updateTraitsIfNeeded];
  return [a1 layoutIfNeeded];
}

id sub_1E48D9494(uint64_t a1, void *a2)
{
  type metadata accessor for RedModeTrait();
  sub_1E48D96F8(&qword_1ECF7F130, type metadata accessor for RedModeTrait, &unk_1E499CC20);
  if (sub_1E49983DC())
  {
    return sub_1E48D953C();
  }

  return a2;
}

id sub_1E48D953C()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  v5[0] = 0.0;
  [v0 getHue:0 saturation:0 brightness:v5 alpha:&v4];
  v1 = v4 * v5[0] * 0.5 + 0.5;
  if (v1 > 1.0)
  {
    v1 = 1.0;
  }

  if (v1 < 0.0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = v1;
  }

  return [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v2 green:0.0 blue:0.0 alpha:1.0];
}

id sub_1E48D9604(double a1, uint64_t a2, void *a3)
{
  type metadata accessor for RedModeCustomColorTrait();
  sub_1E48D96F8(&qword_1ECF7F128, type metadata accessor for RedModeCustomColorTrait, &unk_1E499CBC8);
  if (sub_1E49983DC())
  {
    v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);

    return [v4 initWithRed:a1 / 255.0 green:0.0 blue:0.0 alpha:1.0];
  }

  else
  {

    return a3;
  }
}

uint64_t sub_1E48D96F8(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E48D973C(uint64_t a1)
{
  v2 = sub_1E49979EC();
  v6 = MEMORY[0x1EEE9AC00](v2);
  if (v3 > 1)
  {
    if (v3 == 2 || v3 == 3)
    {
      goto LABEL_6;
    }
  }

  else if (v3 <= 1)
  {
LABEL_6:
    (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v6);
    sub_1E4997AAC();
  }

  return a1;
}

uint64_t type metadata accessor for City(uint64_t a1)
{
  result = qword_1ECF7F748;
  if (!qword_1ECF7F748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E48D9958(uint64_t a1)
{
  result = sub_1E48D9CFC(319, &unk_1ECF813D0, 0x1E6985C40);
  if (v2 <= 0x3F)
  {
    result = sub_1E4996F4C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E48D9A44(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1E499884C() & 1) != 0)
  {
    sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
    if (sub_1E499848C())
    {

      JUMPOUT(0x1E691A740);
    }
  }

  return 0;
}

uint64_t sub_1E48D9AF4()
{
  sub_1E499892C();
  sub_1E4997F5C();
  sub_1E499849C();
  sub_1E4996F4C();
  sub_1E48D9D44(&unk_1ECF809B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E48D9BAC(uint64_t a1)
{
  sub_1E4997F5C();
  sub_1E499849C();
  sub_1E4996F4C();
  sub_1E48D9D44(&unk_1ECF809B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  return sub_1E4997E5C();
}

uint64_t sub_1E48D9C48(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4997F5C();
  sub_1E499849C();
  sub_1E4996F4C();
  sub_1E48D9D44(&unk_1ECF809B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E4997E5C();
  return sub_1E499896C();
}

uint64_t sub_1E48D9CFC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1E48D9D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ClockFaceKind.suggestedLooks.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {

      return sub_1E48D4D14();
    }

    else
    {

      return sub_1E48D5058();
    }
  }

  else if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1E499B670;
    sub_1E49347A0(v3 + 32);
    return v3;
  }

  else if (v1 == 3)
  {

    return sub_1E48D57B4();
  }

  else
  {

    return sub_1E48D5B04();
  }
}

uint64_t ClockFaceKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C617469676964;
  v3 = 0x646C726F77;
  v4 = 0x72616C6F73;
  if (v1 != 3)
  {
    v4 = 2036427888;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676F6C616E61;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ClockFaceKind.newConfiguration()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *(a1 + 97) = v3;
  if (v3 <= 1)
  {
    if (v3)
    {
      result = sub_1E48D4D14();
    }

    else
    {
      result = sub_1E48D5058();
    }
  }

  else
  {
    if (v3 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F228, &qword_1E499B760);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1E499B670;
      result = sub_1E49347A0(v5 + 32);
      goto LABEL_11;
    }

    if (v3 == 3)
    {
      result = sub_1E48D57B4();
    }

    else
    {
      result = sub_1E48D5B04();
    }
  }

  v5 = result;
LABEL_11:
  if (*(v5 + 16))
  {
    sub_1E48C8304(v5 + 32, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

ClockPoster::ClockFaceKind_optional __swiftcall ClockFaceKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E499873C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_1E48DA048(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6C617469676964;
  v5 = 0xE500000000000000;
  v6 = 0x646C726F77;
  v7 = 0xE500000000000000;
  v8 = 0x72616C6F73;
  if (v2 != 3)
  {
    v8 = 2036427888;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x676F6C616E61;
    v3 = 0xE600000000000000;
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

uint64_t sub_1E48DA0D4()
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E48DA1A4(uint64_t a1)
{
  sub_1E4997F5C();
}

uint64_t sub_1E48DA260(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

ClockPoster::ClockFaceKind::DescriptorLocalizedStringKey_optional __swiftcall ClockFaceKind.DescriptorLocalizedStringKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E499873C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ClockFaceKind.DescriptorLocalizedStringKey.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E48DA4DC()
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E48DA59C(uint64_t a1)
{
  sub_1E4997F5C();
}

uint64_t sub_1E48DA648(uint64_t a1)
{
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

void sub_1E48DA710(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = *v1;
  v4 = "gital";
  v5 = "DIGITAL_CLOCK_TITLE";
  v6 = "SOLAR_CLOCK_TITLE";
  if (v3 != 3)
  {
    v6 = "WORLD_CLOCK_TITLE";
  }

  if (v3 != 2)
  {
    v5 = v6;
  }

  v7 = 0xD000000000000013;
  if (*v1)
  {
    v4 = "ANALOG_CLOCK_TITLE";
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (*v1 > 1u)
  {
    v8 = v5;
  }

  else
  {
    v2 = v7;
    v8 = v4;
  }

  *a1 = v2;
  a1[1] = v8 | 0x8000000000000000;
}

unint64_t sub_1E48DA7B4()
{
  result = qword_1ECF7F760;
  if (!qword_1ECF7F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F760);
  }

  return result;
}

unint64_t sub_1E48DA80C()
{
  result = qword_1ECF7F768;
  if (!qword_1ECF7F768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7F770, &qword_1E499CDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F768);
  }

  return result;
}

unint64_t sub_1E48DA874()
{
  result = qword_1ECF7F778;
  if (!qword_1ECF7F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F778);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E48DAA28()
{
  result = qword_1ECF7F780;
  if (!qword_1ECF7F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7F780);
  }

  return result;
}

void sub_1E48DAA8C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, double a7, double a8)
{
  v16 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  if ((a1 & 1) == 0)
  {
    a8 = 0.0;
  }

  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = *(a5 + 40);
    v19 = a2 + 32;
    v35 = a7 / *&v18;
    if (qword_1ECF7EB80 != -1)
    {
      swift_once();
    }

    v20 = MEMORY[0x1E69E7CC0];
    *&v18 = 0x4056800000000000;
    v33 = v18;
    v34 = vdupq_n_s64(0x4066800000000000uLL);
    v32 = xmmword_1E499CF40;
    do
    {
      UIPointRoundToScale();
      v23 = v22;
      v25 = v24;
      if ((a6 & 1) != 0 || (v22 > 4.0 ? (v26 = v22 < a7 + -4.0) : (v26 = 0), v26))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1E490640C(0, *(v20 + 2) + 1, 1, v20);
        }

        v28 = *(v20 + 2);
        v27 = *(v20 + 3);
        if (v28 >= v27 >> 1)
        {
          v20 = sub_1E490640C((v27 > 1), v28 + 1, 1, v20);
        }

        *(v20 + 2) = v28 + 1;
        v21 = &v20[16 * v28];
        *(v21 + 4) = v23;
        *(v21 + 5) = v25;
      }

      v19 += 16;
      --v17;
    }

    while (v17);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  if ((a4 & 1) == 0)
  {
    v29 = sub_1E4912D90(v20, a3);

    v20 = v29;
  }

  if (a6)
  {
    [v16 moveToPoint_];
  }

  else
  {
    if (!*(v20 + 2))
    {
      __break(1u);
      return;
    }

    [v16 moveToPoint_];
  }

  v30 = *(v20 + 2);
  if (v30)
  {
    v31 = (v20 + 40);
    do
    {
      [v16 addLineToPoint_];
      v31 += 2;
      --v30;
    }

    while (v30);
  }

  if (a6)
  {
    [v16 addLineToPoint_];
    [v16 addLineToPoint_];
  }
}

uint64_t sub_1E48DAD54(uint64_t a1, void *a2, char a3)
{
  v5 = sub_1E499741C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E49973BC();
  [a2 capHeight];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F788, &qword_1E499CF60);
  sub_1E49973EC();
  if (a3 < 0)
  {
    *(swift_allocObject() + 16) = xmmword_1E499B6D0;
    sub_1E49973AC();
    sub_1E49973FC();
    sub_1E499737C();
    sub_1E49973FC();
    sub_1E49973AC();
    sub_1E49973FC();
    sub_1E499737C();
  }

  else
  {
    *(swift_allocObject() + 16) = xmmword_1E499CF50;
    sub_1E499737C();
    sub_1E49973FC();
    sub_1E499739C();
    sub_1E49973FC();
    sub_1E499738C();
    sub_1E49973FC();
    sub_1E49973AC();
    sub_1E49973FC();
    sub_1E499737C();
    sub_1E49973FC();
    sub_1E499739C();
    sub_1E49973FC();
    sub_1E499738C();
    sub_1E49973FC();
    sub_1E49973AC();
  }

  sub_1E49973FC();
  v7 = sub_1E4997CFC();
  sub_1E499740C();
  sub_1E499742C();
  return v7;
}

uint64_t sub_1E48DB224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1E48DB274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1E48DB2FC()
{
  v1 = MEMORY[0x1E69E7CC0];
  [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  MEMORY[0x1E691B8A0]();
  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E49980DC();
  }

  sub_1E49980FC();
  [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  MEMORY[0x1E691B8A0]();
  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E49980DC();
  }

  sub_1E49980FC();
  [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  MEMORY[0x1E691B8A0]();
  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E49980DC();
  }

  sub_1E49980FC();
  [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  MEMORY[0x1E691B8A0]();
  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E49980DC();
  }

  sub_1E49980FC();
  [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  MEMORY[0x1E691B8A0]();
  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1E49980DC();
  }

  sub_1E49980FC();
  return v1;
}

void sub_1E48DB53C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_28;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E49986EC())
    {

      if (!i)
      {
        break;
      }

      v3 = 4;
      while (1)
      {
        v4 = v3 - 4;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1E691BDE0](v3 - 4, v1);
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v5 = *(v1 + 8 * v3);
        }

        v6 = v5;
        v7 = v3 - 3;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = *(v0 + 16);
        if (v8 >> 62)
        {
          if (v4 >= sub_1E49986EC())
          {
LABEL_21:

            goto LABEL_22;
          }
        }

        else if (v4 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1E691BDE0](v3 - 4, v8);
        }

        else
        {
          if (v4 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v9 = *(v8 + 8 * v3);
        }

        v10 = v9;
        [v9 setTextColor_];

        ++v3;
        if (v7 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      ;
    }

LABEL_22:
  }

  else
  {
    __break(1u);
  }
}

void sub_1E48DB6AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v26 - v3;
  v5 = type metadata accessor for TimeString(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString;
  swift_beginAccess();
  sub_1E48DBD34(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1E48DBDA4(v4);
    v1 = *(v1 + 16);
    if (v1 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
    {
      for (j = 0; ; ++j)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1E691BDE0](j, v1);
        }

        else
        {
          if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v12 = *(v1 + 8 * j + 32);
        }

        v13 = v12;
        v14 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v12 setText_];

        if (v14 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }
  }

  else
  {
    sub_1E48BF0EC(v4, v8);
    v15 = sub_1E4997F6C();
    v16 = *v8;
    v17 = v8[1];
    if (v15 == 2)
    {
    }

    else
    {
      v27 = 9142498;
      v28 = 0xA300000000000000;
      MEMORY[0x1E691B7A0](v16, v17);
      v16 = v27;
      v17 = v28;
    }

    v18 = HIBYTE(v17) & 0xF;
    v27 = v16;
    v28 = v17;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFLL;
    }

    v29 = 0;
    v30 = v18;
    sub_1E4997F9C();
    if (v19)
    {
      v20 = 0;
      do
      {
        if (__OFADD__(v20, 1))
        {
          goto LABEL_36;
        }

        v21 = *(v1 + 16);
        if (v21 >> 62)
        {
          if (v20 >= sub_1E49986EC())
          {
LABEL_31:

            break;
          }
        }

        else if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1E691BDE0](v20, v21);
        }

        else
        {
          if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v22 = *(v21 + 8 * v20 + 32);
        }

        v23 = v22;
        v26[1] = 0;
        v26[2] = 0xE000000000000000;
        sub_1E4997E7C();

        v24 = sub_1E4997EAC();

        [v23 setText_];

        [v23 sizeToFit];
        sub_1E4997F9C();
        ++v20;
      }

      while (v25);
    }

    sub_1E48DBE0C(v8);
  }
}

uint64_t sub_1E48DBA70()
{

  sub_1E48DBDA4(v0 + OBJC_IVAR____TtC11ClockPoster16RollingTimeLabel_timeString);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RollingTimeLabel(uint64_t a1)
{
  result = qword_1ECF7F790;
  if (!qword_1ECF7F790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E48DBB40(uint64_t a1)
{
  sub_1E48DBBEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E48DBBEC(uint64_t a1)
{
  if (!qword_1ECF7EBC8)
  {
    type metadata accessor for TimeString(255);
    v1 = sub_1E49984BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF7EBC8);
    }
  }
}

void sub_1E48DBC44(void *a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  v3 = a1;

  v4 = *(v1 + 16);
  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E49986EC())
  {
    for (j = 0; ; ++j)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E691BDE0](j, v4);
      }

      else
      {
        if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v7 setFont_];

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1E48DBD34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48DBDA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF815D0, &unk_1E499A370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E48DBE0C(uint64_t a1)
{
  v2 = type metadata accessor for TimeString(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E48DBE68(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F880, &qword_1E499D630);
  MEMORY[0x1EEE9AC00](v22);
  v6 = (&v22 - v5);
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v24 = a3;

  v13 = 0;
  while (v10)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(v24 + 56);
    v18 = (*(v24 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = type metadata accessor for WorldViewModel.Pin(0);
    sub_1E48EC724(v17 + *(*(v21 - 8) + 72) * v16, v6 + *(v22 + 48), type metadata accessor for WorldViewModel.Pin);
    *v6 = v19;
    v6[1] = v20;
    v23(v6);
    result = sub_1E48C1338(v6, &qword_1ECF7F880, &qword_1E499D630);
    if (v3)
    {
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E48DC03C()
{
  sub_1E499892C();
  MEMORY[0x1E691C150](0);
  return sub_1E499896C();
}

uint64_t sub_1E48DC080(uint64_t a1)
{
  sub_1E499892C();
  MEMORY[0x1E691C150](0);
  return sub_1E499896C();
}

uint64_t sub_1E48DC0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1802465132 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E499884C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E48DC170(uint64_t a1)
{
  v2 = sub_1E48EB508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E48DC1AC(uint64_t a1)
{
  v2 = sub_1E48EB508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E48DC1E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F858, &qword_1E499D5A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E48EB508();
  sub_1E49989BC();
  if (!v2)
  {
    sub_1E48EB55C();
    sub_1E499878C();
    (*(v6 + 8))(v8, v5);
    v9 = v22;
    v28 = v21;
    v29 = v22;
    v10 = v23;
    v30 = v23;
    v11 = v17;
    v12 = v18;
    v24 = v17;
    v25 = v18;
    v13 = v20;
    v14 = v19;
    v26 = v19;
    v27 = v20;
    *(a2 + 64) = v21;
    *(a2 + 80) = v9;
    *(a2 + 96) = v10;
    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 32) = v14;
    *(a2 + 48) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

__n128 sub_1E48DC3A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1E48DC410(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F870, &unk_1E499D5B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E48EB508();
  sub_1E49989CC();
  sub_1E48EB5B0();
  sub_1E49987DC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1E48DC558(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v61 - v5;
  type metadata accessor for RollingClockViewModel(0);
  swift_allocObject();
  *(v1 + 120) = sub_1E48B81A4();
  swift_allocObject();
  *(v1 + 128) = sub_1E48B81A4();
  *(v1 + 176) = 256;
  *(v1 + 336) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  v8 = type metadata accessor for WorldViewModel.Pin(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v2 + v7, 1, 1, v8);
  v9(v2 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate) = MEMORY[0x1E69E7CC8];
  v10 = v2 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 0;
  *(v10 + 24) = 0;
  v11 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime;
  v12 = sub_1E4996D8C();
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  *(v2 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask) = 0;
  sub_1E4996FFC();
  sub_1E48C9DB4(a1, v2 + 16);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  LOBYTE(v71) = 3;
  LOBYTE(v11) = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C8360(&v65);
  v62 = a1;
  if (v11)
  {
    v13 = 0xEE00656C62617A69;
    v14 = 0x6D6F747375636E75;
  }

  else
  {
    v14 = sub_1E4921538();
    if (v15)
    {
      v13 = v15;
    }

    else
    {
      v16 = sub_1E4921408();
      v17 = sub_1E49348B8(v16);
      v13 = v18;

      v14 = v17;
    }
  }

  sub_1E48EAF00(v14, v13, &v65);

  v19 = objc_opt_self();
  v20 = [v19 mainScreen];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = [v19 mainScreen];
  v30 = [v29 traitCollection];

  [v30 displayScale];
  v32 = v31;

  sub_1E4994480(v63, v22, v24, v26, v28, 40.666, 95.0, 44.667, 41.0, v32);
  v33 = v63[1];
  *(v2 + 144) = v63[0];
  *(v2 + 160) = v33;
  v34 = v71;
  v35 = v73;
  *(v2 + 296) = v72;
  *(v2 + 312) = v35;
  v36 = v68;
  *(v2 + 216) = v67;
  *(v2 + 232) = v36;
  v37 = v70;
  *(v2 + 248) = v69;
  v38 = v64;
  *(v2 + 328) = v74;
  *(v2 + 264) = v37;
  *(v2 + 280) = v34;
  v39 = v66;
  *(v2 + 184) = v65;
  *(v2 + 200) = v39;
  *(v2 + 136) = v38 == 1;
  v40 = sub_1E499816C();
  v41 = *(*(v40 - 8) + 56);
  v41(v6, 1, 1, v40);
  v42 = swift_allocObject();
  swift_weakInit();
  sub_1E499814C();
  sub_1E48CCDD4(&v65, v63);

  v43 = sub_1E499813C();
  v44 = swift_allocObject();
  v45 = MEMORY[0x1E69E85E0];
  v44[2] = v43;
  v44[3] = v45;
  v44[4] = v42;

  sub_1E498DD1C(0, 0, v6, &unk_1E499D778, v44);

  v41(v6, 1, 1, v40);
  v46 = swift_allocObject();
  swift_weakInit();

  v47 = sub_1E499813C();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = MEMORY[0x1E69E85E0];
  v48[4] = v46;

  sub_1E498DD1C(0, 0, v6, &unk_1E499D788, v48);

  v41(v6, 1, 1, v40);
  v49 = swift_allocObject();
  swift_weakInit();

  v50 = sub_1E499813C();
  v51 = swift_allocObject();
  v51[2] = v50;
  v52 = MEMORY[0x1E69E85E0];
  v51[3] = MEMORY[0x1E69E85E0];
  v51[4] = v49;

  sub_1E498DD1C(0, 0, v6, &unk_1E499D798, v51);

  v41(v6, 1, 1, v40);
  v53 = swift_allocObject();
  swift_weakInit();

  v54 = sub_1E499813C();
  v55 = swift_allocObject();
  v56 = v72;
  *(v55 + 136) = v71;
  *(v55 + 152) = v56;
  *(v55 + 168) = v73;
  v57 = v68;
  *(v55 + 72) = v67;
  *(v55 + 88) = v57;
  v58 = v70;
  *(v55 + 104) = v69;
  *(v55 + 120) = v58;
  v59 = v66;
  *(v55 + 40) = v65;
  *(v55 + 16) = v54;
  *(v55 + 24) = v52;
  *(v55 + 32) = v53;
  *(v55 + 184) = v74;
  *(v55 + 56) = v59;

  sub_1E498DD1C(0, 0, v6, &unk_1E499D7A8, v55);

  if (qword_1ECF7EB50 != -1)
  {
    swift_once();
  }

  sub_1E4954D1C();
  sub_1E48C9E10(v62);
  return v2;
}

uint64_t sub_1E48DCCCC(uint64_t a1)
{
  if (*(v1 + 120) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E48DCE00(uint64_t a1)
{
  if (*(v1 + 128) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E48DCF34(uint64_t result)
{
  if (*(v1 + 176) == (result & 1))
  {
    *(v1 + 176) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }

  return result;
}

uint64_t sub_1E48DD044(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 177) == v2)
  {
    *(v1 + 177) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }

  return result;
}

uint64_t sub_1E48DD168(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1E498D7E8(v3, a1);

  if (v4)
  {
    *(v1 + 336) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E48DD2B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v6, v5, &qword_1ECF7F848, &qword_1E499D520);
  v7 = sub_1E48EB830(v5, a1);
  sub_1E48C1338(v5, &qword_1ECF7F848, &qword_1E499D520);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v5, &qword_1ECF7F848, &qword_1E499D520);
    swift_beginAccess();
    sub_1E48EC0CC(v5, v1 + v6, &qword_1ECF7F848, &qword_1E499D520);
    swift_endAccess();
  }

  return sub_1E48C1338(a1, &qword_1ECF7F848, &qword_1E499D520);
}

uint64_t sub_1E48DD4B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v6, v5, &qword_1ECF7F848, &qword_1E499D520);
  v7 = sub_1E48EB830(v5, a1);
  sub_1E48C1338(v5, &qword_1ECF7F848, &qword_1E499D520);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v5, &qword_1ECF7F848, &qword_1E499D520);
    swift_beginAccess();
    sub_1E48EC048(v5, v1 + v6, &qword_1ECF7F848, &qword_1E499D520);
    swift_endAccess();
    sub_1E48E4E8C();
    sub_1E48E52C0();
    sub_1E48C1338(v5, &qword_1ECF7F848, &qword_1E499D520);
  }

  return sub_1E48C1338(a1, &qword_1ECF7F848, &qword_1E499D520);
}

uint64_t sub_1E48DD6D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();

  sub_1E48EA770(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }
}

uint64_t sub_1E48DD828(uint64_t a1)
{
  swift_beginAccess();
  sub_1E48C9DB4(v1 + 16, v6);
  v3 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C9E10(v6);
  if (v3)
  {
    sub_1E48C9DB4(a1, v6);
    swift_beginAccess();
    sub_1E48EC818(v6, v1 + 16);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[0] = v1;
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }

  return sub_1E48C9E10(a1);
}

uint64_t sub_1E48DD99C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  result = CGRectEqualToRect(*(v4 + 144), v11);
  if (result)
  {
    *(v4 + 144) = a1;
    *(v4 + 152) = a2;
    *(v4 + 160) = a3;
    *(v4 + 168) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }

  return result;
}

uint64_t sub_1E48DDAE4(uint64_t a1)
{
  v3 = (v1 + 184);
  v4 = *(v1 + 296);
  v5 = *(v1 + 312);
  v6 = *(v1 + 264);
  v21[6] = *(v1 + 280);
  v21[7] = v4;
  v21[8] = v5;
  v22 = *(v1 + 328);
  v7 = *(v1 + 232);
  v21[2] = *(v1 + 216);
  v21[3] = v7;
  v21[4] = *(v1 + 248);
  v21[5] = v6;
  v8 = *(v1 + 200);
  v21[0] = *(v1 + 184);
  v21[1] = v8;
  if (sub_1E4994938(v21, a1))
  {
    v9 = *(v1 + 296);
    v19[6] = *(v1 + 280);
    v19[7] = v9;
    v19[8] = *(v1 + 312);
    v20 = *(v1 + 328);
    v10 = *(v1 + 232);
    v19[2] = *(v1 + 216);
    v19[3] = v10;
    v11 = *(v1 + 264);
    v19[4] = *(v1 + 248);
    v19[5] = v11;
    v12 = *(v1 + 200);
    v19[0] = *v3;
    v19[1] = v12;
    v13 = *(a1 + 112);
    *(v1 + 280) = *(a1 + 96);
    *(v1 + 296) = v13;
    *(v1 + 312) = *(a1 + 128);
    *(v1 + 328) = *(a1 + 144);
    v14 = *(a1 + 48);
    *(v1 + 216) = *(a1 + 32);
    *(v1 + 232) = v14;
    v15 = *(a1 + 80);
    *(v1 + 248) = *(a1 + 64);
    *(v1 + 264) = v15;
    v16 = *(a1 + 16);
    *v3 = *a1;
    *(v1 + 200) = v16;
    return sub_1E48EB6DC(v19);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
    sub_1E48EB6DC(a1);
  }
}

uint64_t sub_1E48DDCA8(uint64_t result)
{
  if (*(v1 + 136) == (result & 1))
  {
    *(v1 + 136) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }

  return result;
}

uint64_t sub_1E48DDDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8C8, &qword_1E499D7E0);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8D0, &unk_1E499D7E8);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = sub_1E499814C();
  v4[18] = sub_1E499813C();
  v8 = sub_1E499811C();
  v4[19] = v8;
  v4[20] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E48DDF24, v8, v7);
}

uint64_t sub_1E48DDF24()
{
  if (qword_1ECF7EAE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81918;
  *(v0 + 168) = qword_1ECF81918;

  return MEMORY[0x1EEE6DFA0](sub_1E48DDFBC, v1, 0);
}

uint64_t sub_1E48DDFBC()
{
  sub_1E48F43AC(v0[13]);
  v1 = v0[19];
  v2 = v0[20];

  return MEMORY[0x1EEE6DFA0](sub_1E48DE024, v1, v2);
}

uint64_t sub_1E48DE024()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[22] = 0;
  v4 = sub_1E499813C();
  v0[23] = v4;
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_1E48DE12C;
  v6 = v0[14];
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 2, v4, v7, v6);
}

uint64_t sub_1E48DE12C()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E48DE270, v3, v2);
}

uint64_t sub_1E48DE270()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

LABEL_17:

    v11 = *(v0 + 8);

    return v11();
  }

  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    sub_1E48EC78C(v2, v1);
    goto LABEL_17;
  }

  v6 = Strong;
  v7 = Strong + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath;
  v8 = *(Strong + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 8);
  if (v8)
  {
    if (v1)
    {
      if ((v2 & 1) == (*v7 & 1))
      {
        v9 = *(v8 + 16);
        if (v9 == *(v1 + 16))
        {
          if (v9)
          {
            v10 = v8 == v1;
          }

          else
          {
            v10 = 1;
          }

          if (!v10)
          {
            v19 = (v8 + 32);
            v20 = (v1 + 32);
            do
            {
              v21 = vmovn_s64(vceqq_f64(*v19, *v20));
              if ((v21.i32[0] & v21.i32[1] & 1) == 0)
              {
                goto LABEL_21;
              }

              ++v20;
              ++v19;
            }

            while (--v9);
          }

          if (*(v7 + 24))
          {
            if (v4)
            {
              goto LABEL_25;
            }
          }

          else if ((v4 & 1) == 0 && *(v7 + 16) == v3)
          {
            goto LABEL_25;
          }
        }
      }
    }
  }

  else if (!v1)
  {
LABEL_25:
    *v7 = v2;
    *(v7 + 8) = v1;
    *(v7 + 16) = v3;
    *(v7 + 24) = v4;

    v13 = *(v0 + 176);
    goto LABEL_22;
  }

LABEL_21:
  v13 = *(v0 + 176);
  swift_getKeyPath();
  v14 = swift_task_alloc();
  *(v14 + 16) = v6;
  *(v14 + 24) = v2;
  *(v14 + 32) = v1;
  *(v14 + 40) = v3;
  *(v14 + 48) = v4;
  *(v0 + 72) = v6;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FBC();
  sub_1E48EC78C(v2, v1);

LABEL_22:
  *(v0 + 176) = v13;
  v15 = sub_1E499813C();
  *(v0 + 184) = v15;
  v16 = swift_task_alloc();
  *(v0 + 192) = v16;
  *v16 = v0;
  v16[1] = sub_1E48DE12C;
  v17 = *(v0 + 112);
  v18 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 16, v15, v18, v17);
}

uint64_t sub_1E48DE5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  v5 = type metadata accessor for WorldViewModel.Pin(0);
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8B8, &qword_1E499D7D0);
  v4[25] = v6;
  v4[26] = *(v6 - 8);
  v4[27] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8C0, &qword_1E499D7D8);
  v4[28] = v7;
  v4[29] = *(v7 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = sub_1E499814C();
  v4[32] = sub_1E499813C();
  v9 = sub_1E499811C();
  v4[33] = v9;
  v4[34] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E48DE7E4, v9, v8);
}

uint64_t sub_1E48DE7E4()
{
  if (qword_1ECF7EB50 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  sub_1E4954870(v1);
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[35] = 0;
  v4 = sub_1E499813C();
  v0[36] = v4;
  v5 = swift_task_alloc();
  v0[37] = v5;
  *v5 = v0;
  v5[1] = sub_1E48DE940;
  v6 = v0[28];
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 11, v4, v7, v6);
}

uint64_t sub_1E48DE940()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1E48DEA84, v3, v2);
}

uint64_t sub_1E48DEA84()
{
  v1 = v0 + 11;
  v2 = v0[11];
  if (v2 == 1)
  {
    (*(v0[29] + 8))(v0[30], v0[28]);

LABEL_7:

    v10 = v0[1];

    return v10();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v0[29] + 8))(v0[30], v0[28]);

    sub_1E48EC714(v2);
    goto LABEL_7;
  }

  v4 = Strong;
  swift_getKeyPath();
  v0[13] = v4;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v5 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v58 = v5;

  v7 = sub_1E48DF1AC(v6);
  v0[12] = v7;
  v8 = v0[35];
  if (v2)
  {

    sub_1E48EBB14(v2, (v0 + 12), v4);
    v54 = v8;

    sub_1E48EC714(v2);
    v9 = v0[12];
  }

  else
  {
    v9 = v7;
    v54 = v0[35];
  }

  v12 = v9 + 56;
  v13 = -1;
  v14 = -1 << *(v9 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v9 + 56);
  v16 = (63 - v14) >> 6;

  v21 = 0;
  v55 = v16;
  v56 = v9 + 56;
  v57 = v9;
  while (1)
  {
    if (!v15)
    {
      while (1)
      {
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        if (v24 >= v16)
        {
          break;
        }

        v15 = *(v12 + 8 * v24);
        ++v21;
        if (v15)
        {
          v21 = v24;
          goto LABEL_22;
        }
      }

      sub_1E48E4E8C();
      sub_1E48E52C0();

      v0[35] = v54;
      v52 = sub_1E499813C();
      v0[36] = v52;
      v53 = swift_task_alloc();
      v0[37] = v53;
      *v53 = v0;
      v53[1] = sub_1E48DE940;
      v20 = v0[28];
      v19 = MEMORY[0x1E69E85E0];
      v17 = v1;
      v18 = v52;

      return MEMORY[0x1EEE6D9C8](v17, v18, v19, v20);
    }

LABEL_22:
    v25 = v0[21];
    v60 = v0[20];
    v61 = v0[24];
    v26 = (*(v9 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v15)))));
    v28 = *v26;
    v27 = v26[1];
    v59 = *(v25 + 56);
    v59();
    swift_getKeyPath();
    v0[14] = v4;
    sub_1E4996FCC();

    v0[15] = v4;
    swift_getKeyPath();
    sub_1E4996FEC();

    v29 = v58;
    swift_beginAccess();
    v30 = (*(v25 + 48))(v61, 1, v60);
    v31 = v0[24];
    if (v30 == 1)
    {
      sub_1E48C1338(v31, &qword_1ECF7F848, &qword_1E499D520);
      v32 = sub_1E4948350(v28, v27);
      if (v33)
      {
        v34 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v4 + v58);
        v1 = v0 + 11;
        v0[17] = v36;
        *(v4 + v58) = 0x8000000000000000;
        v9 = v57;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1E4987F18();
          v36 = v0[17];
        }

        sub_1E48EC64C(*(v36 + 56) + *(v0[21] + 72) * v34, v0[23], type metadata accessor for WorldViewModel.Pin);
        sub_1E4985130(v34, v36);
        *(v4 + v58) = v36;

        v22 = 0;
      }

      else
      {
        v22 = 1;
        v1 = v0 + 11;
        v9 = v57;
      }

      v23 = v0[23];
      (v59)(v23, v22, 1, v0[20]);
      sub_1E48C1338(v23, &qword_1ECF7F848, &qword_1E499D520);
      goto LABEL_16;
    }

    sub_1E48EC64C(v31, v0[22], type metadata accessor for WorldViewModel.Pin);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v4 + v58);
    v0[18] = v38;
    *(v4 + v58) = 0x8000000000000000;
    v17 = sub_1E4948350(v28, v27);
    v39 = *(v38 + 16);
    v40 = (v18 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return MEMORY[0x1EEE6D9C8](v17, v18, v19, v20);
    }

    v43 = v18;
    if (*(v38 + 24) >= v42)
    {
      v1 = v0 + 11;
      if ((v37 & 1) == 0)
      {
        v51 = v17;
        sub_1E4987F18();
        v17 = v51;
        v29 = v58;
      }

      goto LABEL_33;
    }

    v1 = v0 + 11;
    sub_1E4982A60(v42, v37);
    v17 = sub_1E4948350(v28, v27);
    if ((v43 & 1) != (v44 & 1))
    {
      break;
    }

LABEL_33:
    v45 = v0[18];
    v47 = v0[21];
    v46 = v0[22];
    v9 = v57;
    if (v43)
    {
      sub_1E48EB76C(v0[22], v45[7] + *(v47 + 72) * v17);
    }

    else
    {
      v45[(v17 >> 6) + 8] |= 1 << v17;
      v48 = (v45[6] + 16 * v17);
      *v48 = v28;
      v48[1] = v27;
      v17 = sub_1E48EC64C(v46, v45[7] + *(v47 + 72) * v17, type metadata accessor for WorldViewModel.Pin);
      v49 = v45[2];
      v41 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v41)
      {
        goto LABEL_46;
      }

      v45[2] = v50;
    }

    *(v4 + v29) = v45;

LABEL_16:
    v12 = v56;
    v15 &= v15 - 1;
    swift_endAccess();
    v1[5] = v4;
    swift_getKeyPath();
    sub_1E4996FDC();

    v16 = v55;
  }

  type metadata accessor for CLLocationCoordinate2D(0);

  return sub_1E499887C();
}

uint64_t sub_1E48DF1AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for CLLocationCoordinate2D(0);
  v4 = v3;
  v5 = sub_1E48E7460(&qword_1ECF7F840, type metadata accessor for CLLocationCoordinate2D, &protocol conformance descriptor for CLLocationCoordinate2D);
  result = MEMORY[0x1E691BA70](v2, v4, v5);
  v7 = 0;
  v16 = result;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  for (i = (v8 + 63) >> 6; v10; result = sub_1E4957220(v15, *v14, v14[1]))
  {
    v12 = v7;
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= i)
    {

      return v16;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E48DF2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v38 - v6;
  v43 = type metadata accessor for WorldViewModel.Pin(0);
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v38 - v13;
  v15 = *(a1 + 16);
  [v15 coordinate];
  sub_1E48EA1B0(v16, v17);
  sub_1E48E61C4(a1, v14);
  [v15 coordinate];
  v19 = v18;
  v21 = v20;
  swift_getKeyPath();
  v42 = a3;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v22 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v23 = *(a3 + v22);
  if (*(v23 + 16))
  {
    v24 = sub_1E4948350(v19, v21);
    if (v25)
    {
      v26 = *(v23 + 56) + *(v40 + 72) * v24;
      v27 = v38;
      sub_1E48EC724(v26, v38, type metadata accessor for WorldViewModel.Pin);
      sub_1E48EC64C(v27, v10, type metadata accessor for WorldViewModel.Pin);
      v14[17] = v10[17];
      v28 = v43;
      v29 = &v10[*(v43 + 36)];
      v38 = *v29;
      v30 = v29[8];
      sub_1E48EC6B4(v10, type metadata accessor for WorldViewModel.Pin);
      v31 = &v14[*(v28 + 36)];
      *v31 = v38;
      v31[8] = v30;
    }
  }

  [v15 coordinate];
  v33 = v32;
  v35 = v34;
  v36 = v39;
  sub_1E48EC724(v14, v39, type metadata accessor for WorldViewModel.Pin);
  (*(v40 + 56))(v36, 0, 1, v43);
  swift_getKeyPath();
  v41 = a3;
  sub_1E4996FCC();

  v41 = a3;
  swift_getKeyPath();
  sub_1E4996FEC();

  swift_beginAccess();
  sub_1E49702F8(v36, v33, v35);
  swift_endAccess();
  v41 = a3;
  swift_getKeyPath();
  sub_1E4996FDC();

  return sub_1E48EC6B4(v14, type metadata accessor for WorldViewModel.Pin);
}

uint64_t sub_1E48DF70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v5 = sub_1E4996D8C();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F898, &qword_1E499D6F0);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F728, &unk_1E499CAB0);
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81510, &unk_1E499E0A0);
  v4[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F730, &qword_1E499CAC0);
  v4[26] = v7;
  v4[27] = *(v7 - 8);
  v4[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F738, &unk_1E49A2240);
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = sub_1E499814C();
  v4[33] = sub_1E499813C();
  v10 = sub_1E499811C();
  v4[34] = v10;
  v4[35] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E48DFA0C, v10, v9);
}

uint64_t sub_1E48DFA0C()
{
  if (qword_1ECF7EAE0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF81910;
  *(v0 + 288) = qword_1ECF81910;

  return MEMORY[0x1EEE6DFA0](sub_1E48DFAA4, v1, 0);
}

uint64_t sub_1E48DFAA4()
{
  sub_1E48F0638(v0[28]);
  v1 = v0[34];
  v2 = v0[35];

  return MEMORY[0x1EEE6DFA0](sub_1E48DFB0C, v1, v2);
}

uint64_t sub_1E48DFB0C()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[37] = 0;
  v4 = sub_1E499813C();
  v0[38] = v4;
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_1E48DFC18;
  v6 = v0[29];
  v7 = v0[25];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1E48DFC18()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1E48DFD5C, v3, v2);
}

uint64_t sub_1E48DFD5C()
{
  v1 = v0[25];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    (*(v0[30] + 8))(v0[31], v0[29]);

LABEL_7:

    v13 = v0[1];

    return v13();
  }

  sub_1E48C15C8(v1, v0[24], &qword_1ECF7F728, &unk_1E499CAB0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v10 = v0[30];
    v9 = v0[31];
    v11 = v0[29];
    v12 = v0[24];

    sub_1E48C1338(v12, &qword_1ECF7F728, &unk_1E499CAB0);
    (*(v10 + 8))(v9, v11);
    goto LABEL_7;
  }

  v3 = Strong;
  v4 = v0[23];
  sub_1E48C12D0(v0[24], v4, &qword_1ECF7F728, &unk_1E499CAB0);
  v5 = type metadata accessor for Alarm(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  v7 = v0[23];
  if (v6 == 1)
  {
    sub_1E48C1338(v0[23], &qword_1ECF7F728, &unk_1E499CAB0);
    v8 = 1;
  }

  else
  {
    (*(v0[14] + 16))(v0[20], v0[23], v0[13]);
    sub_1E48EC6B4(v7, type metadata accessor for Alarm);
    v8 = 0;
  }

  v16 = v0[19];
  v15 = v0[20];
  v18 = v0[16];
  v17 = v0[17];
  v19 = v0[13];
  v20 = v0[14];
  (*(v20 + 56))(v15, v8, 1, v19);
  v21 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime;
  swift_beginAccess();
  v47 = v21;
  v48 = v3;
  sub_1E48C12D0(v3 + v21, v16, &qword_1ECF809D0, &qword_1E499D6C0);
  v22 = *(v18 + 48);
  sub_1E48C12D0(v16, v17, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C12D0(v15, v17 + v22, &qword_1ECF809D0, &qword_1E499D6C0);
  v23 = *(v20 + 48);
  if (v23(v17, 1, v19) == 1)
  {
    v24 = v0[13];
    sub_1E48C1338(v0[19], &qword_1ECF809D0, &qword_1E499D6C0);
    if (v23(v17 + v22, 1, v24) == 1)
    {
      sub_1E48C1338(v0[17], &qword_1ECF809D0, &qword_1E499D6C0);
LABEL_19:
      v41 = v0[20];
      sub_1E48C1338(v0[24], &qword_1ECF7F728, &unk_1E499CAB0);
      swift_beginAccess();
      sub_1E48EC048(v41, v48 + v47, &qword_1ECF809D0, &qword_1E499D6C0);
      swift_endAccess();

      v31 = v0[37];
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v25 = v0[13];
  sub_1E48C12D0(v0[17], v0[18], &qword_1ECF809D0, &qword_1E499D6C0);
  v26 = v23(v17 + v22, 1, v25);
  v27 = v0[18];
  v28 = v0[19];
  if (v26 == 1)
  {
    v29 = v0[13];
    v30 = v0[14];
    sub_1E48C1338(v0[19], &qword_1ECF809D0, &qword_1E499D6C0);
    (*(v30 + 8))(v27, v29);
LABEL_16:
    sub_1E48C1338(v0[17], &qword_1ECF7F898, &qword_1E499D6F0);
    goto LABEL_17;
  }

  v35 = v0[17];
  v36 = v0[14];
  v37 = v0[15];
  v38 = v0[13];
  (*(v36 + 32))(v37, v17 + v22, v38);
  sub_1E48E7460(&qword_1ECF7F440, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v39 = sub_1E4997E9C();
  v40 = *(v36 + 8);
  v40(v37, v38);
  sub_1E48C1338(v28, &qword_1ECF809D0, &qword_1E499D6C0);
  v40(v27, v38);
  sub_1E48C1338(v35, &qword_1ECF809D0, &qword_1E499D6C0);
  if (v39)
  {
    goto LABEL_19;
  }

LABEL_17:
  v31 = v0[37];
  v32 = v0[24];
  v33 = v0[20];
  swift_getKeyPath();
  v34 = swift_task_alloc();
  *(v34 + 16) = v48;
  *(v34 + 24) = v33;
  v0[11] = v48;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FBC();

  sub_1E48C1338(v32, &qword_1ECF7F728, &unk_1E499CAB0);

LABEL_20:
  sub_1E48C1338(v0[20], &qword_1ECF809D0, &qword_1E499D6C0);
  v0[37] = v31;
  v42 = sub_1E499813C();
  v0[38] = v42;
  v43 = swift_task_alloc();
  v0[39] = v43;
  *v43 = v0;
  v43[1] = sub_1E48DFC18;
  v44 = v0[29];
  v45 = v0[25];
  v46 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v45, v42, v46, v44);
}

uint64_t sub_1E48E0444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v6 = type metadata accessor for WorldViewModel.Pin(0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F850, &qword_1E499D578);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A0, &unk_1E499D7B0);
  v5[46] = swift_task_alloc();
  v7 = type metadata accessor for CurrentLocationResult(0);
  v5[47] = v7;
  v5[48] = *(v7 - 8);
  v5[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8A8, &unk_1E49A62B0);
  v5[50] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF814A0, &unk_1E499D7C0);
  v5[51] = v8;
  v5[52] = *(v8 - 8);
  v5[53] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8B0, &unk_1E49A62C0);
  v5[54] = v9;
  v5[55] = *(v9 - 8);
  v5[56] = swift_task_alloc();
  v5[57] = sub_1E499814C();
  v5[58] = sub_1E499813C();
  v11 = sub_1E499811C();
  v5[59] = v11;
  v5[60] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E48E07D0, v11, v10);
}

uint64_t sub_1E48E07D0()
{
  if (qword_1ECF7EB60 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECF819C0;
  *(v0 + 488) = qword_1ECF819C0;

  return MEMORY[0x1EEE6DFA0](sub_1E48E0868, v1, 0);
}

uint64_t sub_1E48E0868()
{
  v1 = v0[61];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1E49483C4(0), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_endAccess();
    v6 = v5;
  }

  else
  {
    swift_endAccess();
    v7 = objc_allocWithZone(type metadata accessor for LocationSource(0));
    v8 = sub_1E497C6B8(0xD000000000000035, 0x80000001E49A7090, 1);
    swift_beginAccess();
    v6 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1E498681C(v6, 0, isUniquelyReferenced_nonNull_native);
    *(v1 + 112) = v13;
    swift_endAccess();
  }

  sub_1E497D394(v0[53]);

  v10 = v0[59];
  v11 = v0[60];

  return MEMORY[0x1EEE6DFA0](sub_1E48E09BC, v10, v11);
}

uint64_t sub_1E48E09BC()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v0[62] = 0;
  v4 = sub_1E499813C();
  v0[63] = v4;
  v5 = swift_task_alloc();
  v0[64] = v5;
  *v5 = v0;
  v5[1] = sub_1E48E0AC8;
  v6 = v0[54];
  v7 = v0[50];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1E48E0AC8()
{
  v1 = *v0;

  v2 = *(v1 + 480);
  v3 = *(v1 + 472);

  return MEMORY[0x1EEE6DFA0](sub_1E48E0C0C, v3, v2);
}

uint64_t sub_1E48E0C0C()
{
  v1 = v0[50];
  if ((*(v0[48] + 48))(v1, 1, v0[47]) == 1)
  {
    (*(v0[55] + 8))(v0[56], v0[54]);

LABEL_9:

    v28 = v0[1];

    return v28();
  }

  sub_1E48EC64C(v1, v0[49], type metadata accessor for CurrentLocationResult);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v25 = v0[55];
    v24 = v0[56];
    v26 = v0[54];
    v27 = v0[49];

    sub_1E48EC6B4(v27, type metadata accessor for CurrentLocationResult);
    (*(v25 + 8))(v24, v26);
    goto LABEL_9;
  }

  v3 = Strong;
  v4 = v0[46];
  sub_1E48C12D0(v0[49], v4, &qword_1ECF7F8A0, &unk_1E499D7B0);
  v5 = type metadata accessor for CurrentLocation(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  v7 = v0[46];
  if (v6 == 1)
  {
    v9 = v0[44];
    v8 = v0[45];
    v10 = v0[37];
    v126 = v0[35];
    v11 = v0[29];
    v12 = v0[30];
    sub_1E48C1338(v7, &qword_1ECF7F8A0, &unk_1E499D7B0);
    (*(v12 + 56))(v8, 1, 1, v11);
    v13 = v3;
    v14 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
    swift_beginAccess();
    v124 = v14;
    v15 = v13 + v14;
    v16 = v13;
    sub_1E48C12D0(v15, v9, &qword_1ECF7F848, &qword_1E499D520);
    v17 = *(v126 + 48);
    sub_1E48C12D0(v9, v10, &qword_1ECF7F848, &qword_1E499D520);
    sub_1E48C12D0(v8, v10 + v17, &qword_1ECF7F848, &qword_1E499D520);
    v18 = *(v12 + 48);
    if (v18(v10, 1, v11) == 1)
    {
      v19 = v0[29];
      sub_1E48C1338(v0[44], &qword_1ECF7F848, &qword_1E499D520);
      if (v18(v10 + v17, 1, v19) == 1)
      {
LABEL_7:
        v20 = v0[49];
        v21 = v0[45];
        v22 = v0[42];
        sub_1E48C1338(v0[37], &qword_1ECF7F848, &qword_1E499D520);
        sub_1E48C12D0(v21, v22, &qword_1ECF7F848, &qword_1E499D520);
        swift_beginAccess();
        sub_1E48EC048(v22, v124 + v16, &qword_1ECF7F848, &qword_1E499D520);
        swift_endAccess();
        sub_1E48E4E8C();
        sub_1E48E52C0();

        sub_1E48C1338(v22, &qword_1ECF7F848, &qword_1E499D520);
        sub_1E48EC6B4(v20, type metadata accessor for CurrentLocationResult);
        v23 = v0[62];
LABEL_54:
        sub_1E48C1338(v0[45], &qword_1ECF7F848, &qword_1E499D520);
        goto LABEL_55;
      }

      goto LABEL_18;
    }

    v49 = v0[29];
    sub_1E48C12D0(v0[37], v0[43], &qword_1ECF7F848, &qword_1E499D520);
    if (v18(v10 + v17, 1, v49) == 1)
    {
      v50 = v0[43];
      sub_1E48C1338(v0[44], &qword_1ECF7F848, &qword_1E499D520);
      sub_1E48EC6B4(v50, type metadata accessor for WorldViewModel.Pin);
LABEL_18:
      v51 = v0[37];
      v52 = &qword_1ECF7F850;
      v53 = &qword_1E499D578;
LABEL_53:
      sub_1E48C1338(v51, v52, v53);
      v23 = v0[62];
      v112 = v0[49];
      v113 = v0[45];
      swift_getKeyPath();
      v114 = swift_task_alloc();
      *(v114 + 16) = v16;
      *(v114 + 24) = v113;
      v0[23] = v16;
      sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
      sub_1E4996FBC();

      sub_1E48EC6B4(v112, type metadata accessor for CurrentLocationResult);

      goto LABEL_54;
    }

    v81 = v0[43];
    v82 = v0[34];
    sub_1E48EC64C(v10 + v17, v82, type metadata accessor for WorldViewModel.Pin);
    if (*v81 != *v82)
    {
      goto LABEL_51;
    }

    if (v81[1] != v82[1])
    {
      goto LABEL_51;
    }

    v83 = v0[43];
    v84 = v0[34];
    if (*(v83 + 16) != *(v84 + 16))
    {
      goto LABEL_51;
    }

    if (*(v83 + 17) != *(v84 + 17))
    {
      goto LABEL_51;
    }

    v85 = *(v0[29] + 28);
    if ((MEMORY[0x1E691A740](v83 + v85, v84 + v85) & 1) == 0)
    {
      goto LABEL_51;
    }

    v86 = v0[43];
    v87 = v0[34];
    v88 = v0[29];
    v89 = v88[8];
    v90 = v86 + v89;
    v91 = *(v86 + v89);
    v92 = (v87 + v89);
    if (v91 != *v92 || *(v90 + 8) != v92[1])
    {
      goto LABEL_51;
    }

    v93 = v88[9];
    v94 = (v86 + v93);
    v95 = *(v86 + v93 + 8);
    v96 = (v87 + v93);
    v97 = *(v87 + v93 + 8);
    if (v95)
    {
      if (!v97)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (*v94 != *v96)
      {
        LOBYTE(v97) = 1;
      }

      if (v97)
      {
        goto LABEL_51;
      }
    }

    v104 = v88[10];
    v105 = (v86 + v104);
    v106 = v105[1];
    v107 = (v87 + v104);
    v108 = v107[1];
    if (v106)
    {
      if (!v108)
      {
LABEL_51:
        sub_1E48C1338(v0[44], &qword_1ECF7F848, &qword_1E499D520);
LABEL_52:
        v110 = v0[43];
        v111 = v0[37];
        sub_1E48EC6B4(v0[34], type metadata accessor for WorldViewModel.Pin);
        sub_1E48EC6B4(v110, type metadata accessor for WorldViewModel.Pin);
        v52 = &qword_1ECF7F848;
        v53 = &qword_1E499D520;
        v51 = v111;
        goto LABEL_53;
      }

      v109 = v0[44];
      if (*v105 == *v107 && v106 == v108)
      {
        sub_1E48C1338(v0[44], &qword_1ECF7F848, &qword_1E499D520);
      }

      else
      {
        v120 = sub_1E499884C();
        sub_1E48C1338(v109, &qword_1ECF7F848, &qword_1E499D520);
        if ((v120 & 1) == 0)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      sub_1E48C1338(v0[44], &qword_1ECF7F848, &qword_1E499D520);
      if (v108)
      {
        goto LABEL_52;
      }
    }

    v121 = v0[43];
    sub_1E48EC6B4(v0[34], type metadata accessor for WorldViewModel.Pin);
    sub_1E48EC6B4(v121, type metadata accessor for WorldViewModel.Pin);
    goto LABEL_7;
  }

  v30 = v0[46];
  v31 = *v7;
  sub_1E48EC6B4(v30, type metadata accessor for CurrentLocation);
  [v31 coordinate];
  v33 = v32;
  v35 = v34;
  sub_1E4996F3C();
  v125 = v31;
  [v31 coordinate];
  swift_getKeyPath();
  v0[24] = v3;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  if (qword_1ECF7EB80 != -1)
  {
    swift_once();
  }

  v36 = v0[41];
  v37 = v0[33];
  v39 = v0[29];
  v38 = v0[30];
  UIPointRoundToScale();
  *(v37 + 17) = 0;
  v40 = v37 + v39[9];
  *v40 = 0;
  *(v40 + 8) = 1;
  v41 = (v37 + v39[10]);
  *v37 = v33;
  *(v37 + 8) = v35;
  *(v37 + 16) = 1;
  v42 = (v37 + v39[8]);
  *v42 = v43;
  v42[1] = v44;
  *v41 = 0;
  v41[1] = 0;
  swift_getKeyPath();
  v0[25] = v3;
  sub_1E4996FCC();

  v45 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
  swift_beginAccess();
  v123 = v45;
  sub_1E48C12D0(v3 + v45, v36, &qword_1ECF7F848, &qword_1E499D520);
  v46 = *(v38 + 48);
  v47 = v46(v36, 1, v39);
  v48 = v0[41];
  v122 = v46;
  if (v47 == 1)
  {
    sub_1E48C1338(v48, &qword_1ECF7F848, &qword_1E499D520);
  }

  else
  {
    v54 = v0[32];
    sub_1E48EC64C(v48, v54, type metadata accessor for WorldViewModel.Pin);
    v56 = *v54;
    v55 = v54[1];
    [v125 coordinate];
    if (v56 == v58 && v55 == v57)
    {
      v59 = v0[32];
      v60 = v0[33];
      v61 = v0[29];
      v62 = (v59 + *(v61 + 40));
      v63 = v62[1];
      *v41 = *v62;
      v41[1] = v63;
      v64 = v59 + *(v61 + 36);
      v65 = *v64;
      LOBYTE(v64) = *(v64 + 8);
      *v40 = v65;
      *(v40 + 8) = v64;
      v66 = *(v59 + 17);

      sub_1E48EC6B4(v59, type metadata accessor for WorldViewModel.Pin);
      *(v60 + 17) = v66;
    }

    else
    {
      sub_1E48EC6B4(v0[32], type metadata accessor for WorldViewModel.Pin);
    }
  }

  v68 = v0[39];
  v67 = v0[40];
  v70 = v0[35];
  v69 = v0[36];
  v71 = v0[29];
  v72 = v0[30];
  sub_1E48EC724(v0[33], v67, type metadata accessor for WorldViewModel.Pin);
  (*(v72 + 56))(v67, 0, 1, v71);
  sub_1E48C12D0(v3 + v123, v68, &qword_1ECF7F848, &qword_1E499D520);
  v73 = *(v70 + 48);
  sub_1E48C12D0(v68, v69, &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48C12D0(v67, v69 + v73, &qword_1ECF7F848, &qword_1E499D520);
  if (v122(v69, 1, v71) == 1)
  {
    v74 = v0[29];
    sub_1E48C1338(v0[39], &qword_1ECF7F848, &qword_1E499D520);
    if (v122(v69 + v73, 1, v74) == 1)
    {
      sub_1E48C1338(v0[36], &qword_1ECF7F848, &qword_1E499D520);
LABEL_41:
      v101 = v0[42];
      sub_1E48C12D0(v0[40], v101, &qword_1ECF7F848, &qword_1E499D520);
      swift_beginAccess();
      sub_1E48EC048(v101, v3 + v123, &qword_1ECF7F848, &qword_1E499D520);
      swift_endAccess();
      sub_1E48E4E8C();
      sub_1E48E52C0();
      sub_1E48C1338(v101, &qword_1ECF7F848, &qword_1E499D520);
      v23 = v0[62];
      goto LABEL_42;
    }

    goto LABEL_28;
  }

  v75 = v0[29];
  sub_1E48C12D0(v0[36], v0[38], &qword_1ECF7F848, &qword_1E499D520);
  v76 = v122(v69 + v73, 1, v75);
  v77 = v0[38];
  v78 = v0[39];
  if (v76 == 1)
  {
    sub_1E48C1338(v0[39], &qword_1ECF7F848, &qword_1E499D520);
    sub_1E48EC6B4(v77, type metadata accessor for WorldViewModel.Pin);
LABEL_28:
    sub_1E48C1338(v0[36], &qword_1ECF7F850, &qword_1E499D578);
    goto LABEL_29;
  }

  v98 = v0[36];
  v99 = v0[31];
  sub_1E48EC64C(v69 + v73, v99, type metadata accessor for WorldViewModel.Pin);
  v100 = sub_1E48EAD30(v77, v99);
  sub_1E48EC6B4(v99, type metadata accessor for WorldViewModel.Pin);
  sub_1E48C1338(v78, &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48EC6B4(v77, type metadata accessor for WorldViewModel.Pin);
  sub_1E48C1338(v98, &qword_1ECF7F848, &qword_1E499D520);
  if (v100)
  {
    goto LABEL_41;
  }

LABEL_29:
  v23 = v0[62];
  v79 = v0[40];
  swift_getKeyPath();
  v80 = swift_task_alloc();
  *(v80 + 16) = v3;
  *(v80 + 24) = v79;
  v0[26] = v3;
  sub_1E4996FBC();

LABEL_42:
  v102 = v0[49];
  v103 = v0[33];
  sub_1E48C1338(v0[40], &qword_1ECF7F848, &qword_1E499D520);
  sub_1E48E64AC(v125);

  sub_1E48EC6B4(v102, type metadata accessor for CurrentLocationResult);
  sub_1E48EC6B4(v103, type metadata accessor for WorldViewModel.Pin);
LABEL_55:
  v0[62] = v23;
  v115 = sub_1E499813C();
  v0[63] = v115;
  v116 = swift_task_alloc();
  v0[64] = v116;
  *v116 = v0;
  v116[1] = sub_1E48E0AC8;
  v117 = v0[54];
  v118 = v0[50];
  v119 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v118, v115, v119, v117);
}

uint64_t sub_1E48E1BE0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  swift_beginAccess();
  return sub_1E48C9DB4(v1 + 16, a1);
}

uint64_t sub_1E48E1CA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  swift_beginAccess();
  return sub_1E48C9DB4(v3 + 16, a2);
}

uint64_t sub_1E48E1D60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1E48EC850(a2, a1 + 16);
  return swift_endAccess();
}

uint64_t sub_1E48E1DC4()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();
}

uint64_t sub_1E48E1E68()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();
}

uint64_t sub_1E48E1F0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  *a2 = *(v3 + 128);
}

uint64_t sub_1E48E1FE4()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  return *(v0 + 136);
}

uint64_t sub_1E48E2084@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  *a2 = *(v3 + 136);
  return result;
}

double sub_1E48E2154()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  return *(v0 + 144);
}

__n128 sub_1E48E21F8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  result = *(v3 + 144);
  v5 = *(v3 + 160);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1E48E22CC()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  return *(v0 + 176);
}

uint64_t sub_1E48E236C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  *a2 = *(v3 + 176);
  return result;
}

uint64_t sub_1E48E2490()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  swift_beginAccess();
  return *(v0 + 177);
}

void sub_1E48E2544(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  swift_beginAccess();
  *a2 = *(v3 + 177);
}

uint64_t (*sub_1E48E2600(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1E4996FEC();

  v4[7] = sub_1E48E243C(v4);
  return sub_1E48E2738;
}

double sub_1E48E2744@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v14 = v1;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v3 = *(v1 + 296);
  v4 = *(v1 + 312);
  v5 = *(v1 + 264);
  v20 = *(v1 + 280);
  v21 = v3;
  v22 = v4;
  v23 = *(v1 + 328);
  v6 = *(v1 + 232);
  v16 = *(v1 + 216);
  v17 = v6;
  v18 = *(v1 + 248);
  v19 = v5;
  v7 = *(v1 + 200);
  v14 = *(v1 + 184);
  v15 = v7;
  sub_1E48CCDD4(&v14, v13);
  v8 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v8;
  *(a1 + 128) = v22;
  *(a1 + 144) = v23;
  v9 = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = v9;
  v10 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v10;
  result = *&v14;
  v12 = v15;
  *a1 = v14;
  *(a1 + 16) = v12;
  return result;
}

uint64_t sub_1E48E2868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v14[0] = v3;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v4 = *(v3 + 296);
  v5 = *(v3 + 264);
  v15 = *(v3 + 280);
  v16 = v4;
  v6 = *(v3 + 296);
  v17 = *(v3 + 312);
  v7 = *(v3 + 232);
  v14[2] = *(v3 + 216);
  v14[3] = v7;
  v8 = *(v3 + 264);
  v14[4] = *(v3 + 248);
  v14[5] = v8;
  v9 = *(v3 + 200);
  v14[0] = *(v3 + 184);
  v14[1] = v9;
  v18 = *(v3 + 328);
  *(a2 + 96) = v15;
  *(a2 + 112) = v6;
  *(a2 + 128) = *(v3 + 312);
  *(a2 + 144) = *(v3 + 328);
  v10 = *(v3 + 232);
  *(a2 + 32) = *(v3 + 216);
  *(a2 + 48) = v10;
  *(a2 + 64) = *(v3 + 248);
  *(a2 + 80) = v5;
  v11 = *(v3 + 200);
  *a2 = *(v3 + 184);
  *(a2 + 16) = v11;
  return sub_1E48CCDD4(v14, v13);
}

uint64_t sub_1E48E2998(uint64_t a1)
{
  v1 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v1;
  v7[8] = *(a1 + 128);
  v8 = *(a1 + 144);
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v3 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v3;
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  sub_1E48CCDD4(v7, v6);
  return sub_1E48DDAE4(v7);
}

uint64_t sub_1E48E2A08()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  swift_beginAccess();
}

uint64_t sub_1E48E2AC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  swift_beginAccess();
  *a2 = *(v3 + 336);
}

uint64_t sub_1E48E2BAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 336) = a2;
}

uint64_t (*sub_1E48E2C64(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E48E2CC8;
}

uint64_t sub_1E48E2CC8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E48E4E8C();
    return sub_1E48E52C0();
  }

  return result;
}

uint64_t sub_1E48E2D24@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v7 = *a3;
  swift_beginAccess();
  return sub_1E48C12D0(v6 + v7, a4, &qword_1ECF7F848, &qword_1E499D520);
}

uint64_t sub_1E48E2E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1E48C12D0(a1, &v11 - v8, &qword_1ECF7F848, &qword_1E499D520);
  return a5(v9);
}

uint64_t sub_1E48E2EB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1E48C12D0(a2, &v9 - v5, &qword_1ECF7F848, &qword_1E499D520);
  v7 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
  swift_beginAccess();
  sub_1E48EC048(v6, a1 + v7, &qword_1ECF7F848, &qword_1E499D520);
  swift_endAccess();
  sub_1E48E4E8C();
  sub_1E48E52C0();
  return sub_1E48C1338(v6, &qword_1ECF7F848, &qword_1E499D520);
}

uint64_t (*sub_1E48E2FB0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1E4996FEC();

  v4[7] = sub_1E48E2C64(v4);
  return sub_1E48E30E8;
}

void sub_1E48E30F4(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1E4996FDC();

  free(v3);
}

uint64_t sub_1E48E3188()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  swift_beginAccess();
}

uint64_t sub_1E48E3248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1E48E3310(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1E48E3380()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v49 = &v44 - v1;
  v2 = sub_1E499708C();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E4996F4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4996D8C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E493BA48(v16);
  type metadata accessor for WorldViewModel.Pin(0);
  sub_1E4996D7C();
  v17 = sub_1E4996EFC();
  v44 = v9;
  v18 = *(v9 + 8);
  v18(v13, v8);
  sub_1E4996F3C();
  sub_1E4996D7C();
  v19 = sub_1E4996EFC();
  v18(v13, v8);
  (*(v5 + 8))(v7, v4);
  v20 = v17 - v19;
  if (__OFSUB__(v17, v19))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
LABEL_10:
    v27 = qword_1EE2BB458;
    v28 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
    swift_beginAccess();
    sub_1E48C12D0(v27 + v28, v7, &qword_1ECF7F008, &qword_1E499B170);
    v30 = v46;
    v29 = v47;
    v31 = *(v46 + 48);
    if (v31(v7, 1, v47) == 1)
    {
      sub_1E4904BF4(v48);
      v29 = v47;
      v32 = v31(v7, 1, v47);
      v33 = v30;
      v34 = v45;
      if (v32 != 1)
      {
        sub_1E48C1338(v49, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v30 + 32))(v48, v7, v29);
      v33 = v30;
      v34 = v45;
    }

    (*(v44 + 16))(v34, v16, v8);
    v35 = sub_1E499706C();
    v36 = sub_1E499830C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v50 = v38;
      *v37 = 136446210;
      sub_1E48E7460(&qword_1ECF7F8F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v39 = sub_1E49987FC();
      v40 = v34;
      v42 = v41;
      v18(v40, v8);
      v43 = sub_1E48CA094(v39, v42, &v50);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_1E48B0000, v35, v36, "Cannot convert %{public}s to an offset string", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x1E691CED0](v38, -1, -1);
      MEMORY[0x1E691CED0](v37, -1, -1);

      (*(v46 + 8))(v48, v47);
    }

    else
    {

      v18(v34, v8);
      (*(v33 + 8))(v48, v29);
    }

    goto LABEL_17;
  }

  v21 = v17 - v19;
  v7 = v49;
  if (v20 < 0)
  {
    v21 = v19 - v17;
    if (__OFSUB__(0, v20))
    {
      goto LABEL_19;
    }
  }

  if (v21 >= 1)
  {
    v22 = objc_opt_self();
    v23 = sub_1E4996CEC();
    v24 = [v22 dayAndTimeZoneOffsetStringFromDate:v23 withTimeZoneOffset:v20 timeZoneAbbreviation:0 spaceBeforeTimeDesignator:1 hoursOnly:0 numericOnly:0];

    if (v24)
    {
      v25 = sub_1E4997EEC();

      v18(v16, v8);
      return v25;
    }

    if (qword_1EE2BB450 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_17:
  v18(v16, v8);
  return 0;
}

uint64_t sub_1E48E3A18()
{
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(*v0, v0[1]);
  return sub_1E499896C();
}

uint64_t sub_1E48E3A5C(uint64_t a1)
{
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(*v1, v1[1]);
  return sub_1E499896C();
}

__n128 sub_1E48E3A9C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1E48E3AB0(double *a1, double *a2)
{
  v4 = *(type metadata accessor for WorldViewModel.Pin(0) + 36);
  v5 = (a2 + v4);
  v6 = *(a2 + v4 + 8);
  v7 = (a1 + v4);
  if (v6 == 1)
  {
    if ((v7[1] & 1) == 0)
    {
      v11 = 1;
      return v11 ^ 1u;
    }

    v8 = *a2 < *a1;
    if (*a2 != *a1)
    {
      goto LABEL_10;
    }

    v9 = a2[1];
    v10 = a1[1];
  }

  else
  {
    if (v7[1])
    {
      v11 = 0;
      return v11 ^ 1u;
    }

    v9 = *v5;
    v10 = *v7;
  }

  v8 = v9 < v10;
LABEL_10:
  v11 = v8;
  return v11 ^ 1u;
}

uint64_t sub_1E48E3B44(double *a1, double *a2)
{
  v4 = *(type metadata accessor for WorldViewModel.Pin(0) + 36);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v6 == 1)
  {
    if ((v7[1] & 1) == 0)
    {
      v11 = 1;
      return v11 ^ 1u;
    }

    v8 = *a1 < *a2;
    if (*a1 != *a2)
    {
      goto LABEL_10;
    }

    v9 = a1[1];
    v10 = a2[1];
  }

  else
  {
    if (v7[1])
    {
      v11 = 0;
      return v11 ^ 1u;
    }

    v9 = *v5;
    v10 = *v7;
  }

  v8 = v9 < v10;
LABEL_10:
  v11 = v8;
  return v11 ^ 1u;
}

BOOL sub_1E48E3BD8(double *a1, double *a2)
{
  v4 = *(type metadata accessor for WorldViewModel.Pin(0) + 36);
  v5 = (a2 + v4);
  v6 = *(a2 + v4 + 8);
  v7 = (a1 + v4);
  if (v6 != 1)
  {
    if (v7[1])
    {
      return 0;
    }

    v9 = *v5;
    v10 = *v7;
    return v9 < v10;
  }

  if ((v7[1] & 1) == 0)
  {
    return 1;
  }

  v8 = *a2 < *a1;
  if (*a2 == *a1)
  {
    v9 = a2[1];
    v10 = a1[1];
    return v9 < v10;
  }

  return v8;
}

uint64_t sub_1E48E3C64()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath);

  return v1;
}

uint64_t sub_1E48E3D30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v4 = v3 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath;
  v5 = *(v3 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 24);
  *a2 = *(v3 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath);
  *(a2 + 8) = *(v4 + 8);
  *(a2 + 24) = v5;
}

uint64_t sub_1E48E3DFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 24);

  return sub_1E48E3E54(v1, v2, v3, v4);
}

uint64_t sub_1E48E3E54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = v4 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath;
  v10 = *(v4 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 8);
  if (!v10)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if ((*v9 & 1) != (a1 & 1))
  {
    goto LABEL_9;
  }

  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  if ((sub_1E498D6B8(v10, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v12)
  {
    if (a4)
    {
      goto LABEL_13;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }

  if ((a4 & 1) != 0 || v11 != a3)
  {
    goto LABEL_9;
  }

LABEL_13:
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
}

uint64_t sub_1E48E4034@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v10 = *a2;
  swift_beginAccess();
  return sub_1E48C12D0(v12 + v10, a5, a3, a4);
}

uint64_t sub_1E48E4114(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v6, v5, &qword_1ECF809D0, &qword_1E499D6C0);
  v7 = sub_1E48EBCC0(v5, a1);
  sub_1E48C1338(v5, &qword_1ECF809D0, &qword_1E499D6C0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }

  else
  {
    sub_1E48C12D0(a1, v5, &qword_1ECF809D0, &qword_1E499D6C0);
    swift_beginAccess();
    sub_1E48EC0CC(v5, v1 + v6, &qword_1ECF809D0, &qword_1E499D6C0);
    swift_endAccess();
  }

  return sub_1E48C1338(a1, &qword_1ECF809D0, &qword_1E499D6C0);
}

uint64_t sub_1E48E431C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1E48EC048(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t sub_1E48E439C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for WorldViewModel.Pin(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v26 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v25 - v13);
  swift_getKeyPath();
  v33 = v1;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v15 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v16 = *(v2 + v15);
  v28 = a1;
  v30 = a1;
  v31 = v2;

  sub_1E48DBE68(sub_1E48EB814, v29, v16);

  swift_getKeyPath();
  v32 = v2;
  sub_1E4996FCC();

  v17 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
  swift_beginAccess();
  sub_1E48C12D0(v2 + v17, v8, &qword_1ECF7F848, &qword_1E499D520);
  v18 = *(v10 + 48);
  if (v18(v8, 1, v9) != 1)
  {
    sub_1E48EC64C(v8, v14, type metadata accessor for WorldViewModel.Pin);
    v19 = v27;
    sub_1E48C12D0(v28, v27, &qword_1ECF7F848, &qword_1E499D520);
    if (v18(v19, 1, v9) == 1)
    {
      sub_1E48C1338(v19, &qword_1ECF7F848, &qword_1E499D520);
    }

    else
    {
      v20 = v26;
      sub_1E48EC64C(v19, v26, type metadata accessor for WorldViewModel.Pin);
      v22 = *v20;
      v21 = v20[1];
      sub_1E48EC6B4(v20, type metadata accessor for WorldViewModel.Pin);
      if (v22 == *v14)
      {
        v23 = v21 == v14[1];
LABEL_8:
        *(v14 + 17) = v23;
        sub_1E48EC6B4(v14, type metadata accessor for WorldViewModel.Pin);
        goto LABEL_9;
      }
    }

    v23 = 0;
    goto LABEL_8;
  }

  sub_1E48C1338(v8, &qword_1ECF7F848, &qword_1E499D520);
LABEL_9:
  sub_1E48E4E8C();
  return sub_1E48E52C0();
}

uint64_t sub_1E48E477C(double *a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F880, &qword_1E499D630);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for WorldViewModel.Pin(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a1;
  sub_1E48C12D0(a1, v12, &qword_1ECF7F880, &qword_1E499D630);
  v17 = *(v10 + 56);
  v18 = v33;
  sub_1E48EC64C(&v12[v17], v16, type metadata accessor for WorldViewModel.Pin);
  v19 = *(v14 + 48);
  if (v19(v18, 1, v13) == 1)
  {
    if (*(v16 + 17) != 1)
    {
      return sub_1E48EC6B4(v16, type metadata accessor for WorldViewModel.Pin);
    }

    LOBYTE(v20) = 0;
LABEL_8:
    *(v16 + 17) = v20;
    v24 = v30;
    v25 = *v29;
    v26 = v29[1];
    sub_1E48EC724(v16, v30, type metadata accessor for WorldViewModel.Pin);
    (*(v14 + 56))(v24, 0, 1, v13);
    swift_getKeyPath();
    v27 = v31;
    v32 = v31;
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FCC();

    v32 = v27;
    swift_getKeyPath();
    sub_1E4996FEC();

    swift_beginAccess();
    sub_1E49702F8(v24, v25, v26);
    swift_endAccess();
    v32 = v27;
    swift_getKeyPath();
    sub_1E4996FDC();

    return sub_1E48EC6B4(v16, type metadata accessor for WorldViewModel.Pin);
  }

  sub_1E48C12D0(v18, v8, &qword_1ECF7F848, &qword_1E499D520);
  result = (v19)(v8, 1, v13);
  if (result != 1)
  {
    v22 = *v8;
    v23 = v8[1];
    sub_1E48EC6B4(v8, type metadata accessor for WorldViewModel.Pin);
    v20 = v22 == *v16;
    if (v23 != v16[1])
    {
      v20 = 0;
    }

    if (*(v16 + 17) == v20)
    {
      return sub_1E48EC6B4(v16, type metadata accessor for WorldViewModel.Pin);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E48E4B88()
{
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();
}

uint64_t sub_1E48E4C34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  *a2 = *(v3 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask);
}

uint64_t sub_1E48E4CE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask;
  if (!*(v1 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
    sub_1E4996FBC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980);
  v4 = sub_1E49981CC();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1E48E4E8C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for WorldViewModel.Pin(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  v32[0] = v1;
  v29 = sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  v30 = v12;
  sub_1E4996FCC();

  v13 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v14 = *(v1 + v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v24 = v5;
    v25 = v4;
    v26 = v11;
    v27 = v8;
    v16 = sub_1E4906D5C(v15, 0);
    v28 = v6;
    sub_1E48EA50C(v32, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v15, v14);
    v6 = v17;
    v18 = v32[0];
    v8 = v32[1];
    v11 = v32[3];

    sub_1E48EB764(v18);
    if (v6 != v15)
    {
      __break(1u);
LABEL_13:
      v16 = sub_1E4906284(0, v16[2] + 1, 1, v16);
      goto LABEL_8;
    }

    v8 = v27;
    v6 = v28;
    v4 = v25;
    v11 = v26;
    v5 = v24;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  v32[0] = v1;
  sub_1E4996FCC();

  v19 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
  swift_beginAccess();
  sub_1E48C12D0(v1 + v19, v4, &qword_1ECF7F848, &qword_1E499D520);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1E48C1338(v4, &qword_1ECF7F848, &qword_1E499D520);
    goto LABEL_11;
  }

  sub_1E48EC64C(v4, v11, type metadata accessor for WorldViewModel.Pin);
  sub_1E48EC724(v11, v8, type metadata accessor for WorldViewModel.Pin);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v16[2];
  v20 = v16[3];
  if (v21 >= v20 >> 1)
  {
    v16 = sub_1E4906284((v20 > 1), v21 + 1, 1, v16);
  }

  sub_1E48EC6B4(v11, type metadata accessor for WorldViewModel.Pin);
  v16[2] = v21 + 1;
  sub_1E48EC64C(v8, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, type metadata accessor for WorldViewModel.Pin);
LABEL_11:
  v31 = v16;

  sub_1E48E8854(&v31);

  return sub_1E48DD168(v31);
}

uint64_t sub_1E48E52C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v107 = &v105 - v3;
  v127 = sub_1E4996F4C();
  v113 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v124 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1E4996D8C();
  v109 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for WorldViewModel.Pin(0);
  v134 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v106 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v105 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v105 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F880, &qword_1E499D630);
  v115 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v131 = (&v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v132 = (&v105 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v130 = &v105 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F888, &qword_1E499D638);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v114 = (&v105 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v112 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v111 = &v105 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v105 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v117 = &v105 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v116 = (&v105 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v118 = &v105 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v125 = &v105 - v32;
  swift_getKeyPath();
  v33 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel___observationRegistrar;
  v137 = v1;
  v34 = sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  v120 = v33;
  v119 = v34;
  sub_1E4996FCC();

  v35 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__cityPinsByCoordinate;
  swift_beginAccess();
  v126 = v1;
  v108 = v35;
  v36 = *(v1 + v35);
  v37 = v36 + 64;
  v38 = 1 << v36[32];
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v36 + 8);
  v41 = (v38 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v43 = 0;
  v129 = v36;
  if (!v40)
  {
LABEL_5:
    v45 = v132;
    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v41)
      {

        v54 = v115;
        v55 = v114;
        (*(v115 + 56))(v114, 1, 1, v11);
        goto LABEL_13;
      }

      v40 = *&v37[8 * v44];
      ++v43;
      if (v40)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  while (1)
  {
    v44 = v43;
    v45 = v132;
LABEL_9:
    v46 = __clz(__rbit64(v40)) | (v44 << 6);
    v47 = *(v36 + 6);
    v48 = *(v36 + 7) + *(v134 + 72) * v46;
    v49 = v11;
    v50 = *(v11 + 48);
    v133 = *(v47 + 16 * v46);
    v51 = v130;
    sub_1E48EC724(v48, &v130[v50], type metadata accessor for WorldViewModel.Pin);
    *v51 = v133;
    sub_1E48C15C8(v51, v45, &qword_1ECF7F880, &qword_1E499D630);
    v52 = v131;
    sub_1E48C12D0(v45, v131, &qword_1ECF7F880, &qword_1E499D630);
    v53 = v52 + *(v49 + 48);
    LODWORD(v52) = *(v53 + 17);
    sub_1E48EC6B4(v53, type metadata accessor for WorldViewModel.Pin);
    if (v52 == 1)
    {
      break;
    }

    v40 &= v40 - 1;
    result = sub_1E48C1338(v45, &qword_1ECF7F880, &qword_1E499D630);
    v43 = v44;
    v11 = v49;
    v36 = v129;
    if (!v40)
    {
      goto LABEL_5;
    }
  }

  v55 = v114;
  sub_1E48C15C8(v45, v114, &qword_1ECF7F880, &qword_1E499D630);
  v54 = v115;
  v11 = v49;
  (*(v115 + 56))(v55, 0, 1, v49);
LABEL_13:

  v56 = (*(v54 + 48))(v55, 1, v11);
  v57 = v128;
  v58 = v118;
  v59 = v116;
  if (v56 == 1)
  {
    sub_1E48C1338(v55, &qword_1ECF7F888, &qword_1E499D638);
    v60 = 1;
    v61 = v125;
  }

  else
  {
    v62 = v55 + *(v11 + 48);
    v61 = v125;
    sub_1E48EC64C(v62, v125, type metadata accessor for WorldViewModel.Pin);
    v60 = 0;
  }

  v63 = v134;
  v64 = v134 + 56;
  v65 = *(v134 + 56);
  v65(v61, v60, 1, v57);
  sub_1E48C12D0(v61, v59, &qword_1ECF7F848, &qword_1E499D520);
  v67 = v63 + 48;
  v66 = *(v63 + 48);
  if ((v66)(v59, 1, v57) == 1)
  {
    swift_getKeyPath();
    v68 = v126;
    v136 = v126;
    sub_1E4996FCC();

    v69 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__currentLocationPin;
    swift_beginAccess();
    sub_1E48C12D0(v68 + v69, v58, &qword_1ECF7F848, &qword_1E499D520);
    if ((v66)(v59, 1, v57) != 1)
    {
      sub_1E48C1338(v59, &qword_1ECF7F848, &qword_1E499D520);
    }
  }

  else
  {
    sub_1E48EC64C(v59, v58, type metadata accessor for WorldViewModel.Pin);
    v65(v58, 0, 1, v57);
  }

  v70 = v117;
  sub_1E48C12D0(v58, v117, &qword_1ECF7F848, &qword_1E499D520);
  v71 = (v66)(v70, 1, v57);
  sub_1E48C1338(v70, &qword_1ECF7F848, &qword_1E499D520);
  if (v71 != 1)
  {
    goto LABEL_33;
  }

  v114 = v66;
  v115 = v67;
  v116 = v65;
  v117 = v64;
  swift_getKeyPath();
  v72 = v126;
  v135 = v126;
  sub_1E4996FCC();

  v73 = *(v72 + v108);
  v74 = v73 + 64;
  v75 = 1 << v73[32];
  v76 = -1;
  if (v75 < 64)
  {
    v76 = ~(-1 << v75);
  }

  v77 = v76 & *(v73 + 8);
  v78 = (v75 + 63) >> 6;
  v132 = (v109 + 8);
  v131 = (v113 + 8);
  result = swift_bridgeObjectRetain_n();
  v79 = 0;
  v80 = v110;
  v129 = v73 + 64;
  v130 = v73;
  v81 = v132;
  v82 = v123;
  if (!v77)
  {
LABEL_25:
    while (1)
    {
      v83 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      if (v83 >= v78)
      {
        v58 = v118;
        sub_1E48C1338(v118, &qword_1ECF7F848, &qword_1E499D520);

        v90 = v105;
        v91 = v105;
        v92 = 1;
        goto LABEL_32;
      }

      v77 = *&v74[8 * v83];
      ++v79;
      if (v77)
      {
        goto LABEL_28;
      }
    }

LABEL_40:
    __break(1u);
    return result;
  }

  while (1)
  {
    v83 = v79;
LABEL_28:
    v84 = *(v73 + 7) + *(v134 + 72) * (__clz(__rbit64(v77)) | (v83 << 6));
    v85 = v121;
    sub_1E48EC724(v84, v121, type metadata accessor for WorldViewModel.Pin);
    sub_1E48EC64C(v85, v80, type metadata accessor for WorldViewModel.Pin);
    v86 = v122;
    sub_1E4996D7C();
    *&v133 = sub_1E4996EFC();
    v87 = *v81;
    (*v81)(v86, v82);
    v88 = v124;
    sub_1E4996F3C();
    sub_1E4996D7C();
    v89 = sub_1E4996EFC();
    v87(v86, v82);
    (*v131)(v88, v127);
    if (v133 == v89)
    {
      break;
    }

    v77 &= v77 - 1;
    result = sub_1E48EC6B4(v80, type metadata accessor for WorldViewModel.Pin);
    v79 = v83;
    v57 = v128;
    v74 = v129;
    v73 = v130;
    if (!v77)
    {
      goto LABEL_25;
    }
  }

  v58 = v118;
  sub_1E48C1338(v118, &qword_1ECF7F848, &qword_1E499D520);

  v104 = v80;
  v90 = v105;
  sub_1E48EC64C(v104, v105, type metadata accessor for WorldViewModel.Pin);
  v91 = v90;
  v92 = 0;
  v57 = v128;
LABEL_32:
  v65 = v116;
  v116(v91, v92, 1, v57);

  sub_1E48C15C8(v90, v58, &qword_1ECF7F848, &qword_1E499D520);
  v66 = v114;
LABEL_33:
  v93 = v111;
  sub_1E48C12D0(v58, v111, &qword_1ECF7F848, &qword_1E499D520);
  if ((v66)(v93, 1, v57) == 1)
  {
    sub_1E48C1338(v93, &qword_1ECF7F848, &qword_1E499D520);
    v94 = v112;
    v65(v112, 1, 1, v57);
    sub_1E48DD2B0(v94);
  }

  else
  {
    v95 = v57;
    v96 = v106;
    sub_1E48EC64C(v93, v106, type metadata accessor for WorldViewModel.Pin);
    v97 = v112;
    sub_1E48EC724(v96, v112, type metadata accessor for WorldViewModel.Pin);
    v65(v97, 0, 1, v95);
    v98 = v126;
    sub_1E48DD2B0(v97);
    swift_getKeyPath();
    v135 = v98;
    sub_1E4996FCC();

    v99 = *(v95 + 28);
    v100 = v113;
    v101 = v107;
    v102 = v127;
    (*(v113 + 16))(v107, v96 + v99, v127);
    (*(v100 + 56))(v101, 0, 1, v102);

    sub_1E48B9930(v101);

    sub_1E48EC6B4(v96, type metadata accessor for WorldViewModel.Pin);
  }

  v103 = v125;
  sub_1E48C1338(v58, &qword_1ECF7F848, &qword_1E499D520);
  return sub_1E48C1338(v103, &qword_1ECF7F848, &qword_1E499D520);
}

uint64_t sub_1E48E61C4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 2);
  [v6 coordinate];
  v8 = v7;
  v10 = v9;
  v11 = *(type metadata accessor for City(0) + 24);
  v12 = type metadata accessor for WorldViewModel.Pin(0);
  v13 = v12[7];
  v14 = sub_1E4996F4C();
  (*(*(v14 - 8) + 16))(a2 + v13, &a1[v11], v14);
  swift_getKeyPath();
  *&v31[0] = v3;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v15 = *(v3 + 296);
  v16 = *(v3 + 312);
  v17 = *(v3 + 264);
  v31[6] = *(v3 + 280);
  v31[7] = v15;
  v31[8] = v16;
  v32 = *(v3 + 328);
  v18 = *(v3 + 232);
  v31[2] = *(v3 + 216);
  v31[3] = v18;
  v31[4] = *(v3 + 248);
  v31[5] = v17;
  v19 = *(v3 + 200);
  v31[0] = *(v3 + 184);
  v31[1] = v19;
  sub_1E48CCDD4(v31, v30);
  [v6 coordinate];
  swift_getKeyPath();
  v30[0] = v3;
  sub_1E4996FCC();

  if (qword_1ECF7EB80 != -1)
  {
    swift_once();
  }

  UIPointRoundToScale();
  v21 = v20;
  v23 = v22;
  sub_1E48EB6DC(v31);
  v25 = *a1;
  v24 = *(a1 + 1);
  *(a2 + 17) = 0;
  v26 = a2 + v12[9];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = (a2 + v12[10]);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
  v28 = (a2 + v12[8]);
  *v28 = v21;
  v28[1] = v23;
  *v27 = v25;
  v27[1] = v24;
}

uint64_t sub_1E48E64AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  swift_getKeyPath();
  v17 = v1;
  sub_1E48E7460(&qword_1ECF7F308, type metadata accessor for WorldViewModel, &unk_1E499D450);
  sub_1E4996FCC();

  v6 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask;
  if (*(v1 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__fetchCurrentLocationNameTask) && (, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F268, &qword_1E49A3980), sub_1E49981DC(), , *(v1 + v6)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v16 - 2) = v1;
    *(&v16 - 1) = 0;
    v17 = v1;
    sub_1E4996FBC();
  }

  else
  {
    *(v1 + v6) = 0;
  }

  v8 = sub_1E499816C();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_1E499814C();
  v10 = a1;

  v11 = sub_1E499813C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = v9;

  v14 = sub_1E49690B8(0, 0, v5, &unk_1E499D5F8, v12);
  return sub_1E48E4CE8(v14);
}