uint64_t sub_1E61DBD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = sub_1E65E27C8();
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E65D9F38();
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E2B68();
  sub_1E65E2B78();
  sub_1E65E2B88();
  sub_1E65E2B98();
  sub_1E65D8EA8();
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1E601CAD8(0, v9, 0);
    v10 = v34;
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v13 = a3 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v25 = *(v11 + 56);
    v26 = v12;
    v23[1] = v6 + 32;
    v24 = (v11 - 8);
    v27 = v6;
    v28 = v11;
    v14 = v30;
    do
    {
      v33 = v10;
      v15 = v31;
      v26(v14, v13, v31);
      sub_1E65E27A8();
      v32 = v16;
      sub_1E65E27B8();
      v17 = sub_1E65E2798();
      v18 = v8;
      v19 = sub_1E61DAB3C(v17, sub_1E601CB1C, sub_1E600E210);

      sub_1E600C764(v19);
      v8 = v18;

      v10 = v33;
      sub_1E65D9F08();
      (*v24)(v14, v15);
      v34 = v10;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E601CAD8((v20 > 1), v21 + 1, 1);
        v10 = v34;
      }

      *(v10 + 16) = v21 + 1;
      (*(v27 + 32))(v10 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21, v8, v29);
      v13 += v25;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void sub_1E61DC040(uint64_t a1, char a2, unint64_t *a3)
{
  v7 = sub_1E65E2BA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073278, &qword_1E65ED0D0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15 = v54 - v14;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_22;
  }

  v54[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  v54[0] = v17;
  sub_1E5DFD1CC(a1 + v17, v54 - v14, &qword_1ED073278, &qword_1E65ED0D0);
  v55 = v8;
  v61 = *(v8 + 32);
  v62 = v7;
  v61(v10, v15, v7);
  v57 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_1E6417154(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_1E641ACCC(v25, a2 & 1);
    v20 = sub_1E6417154(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_1E65E6C68();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  sub_1E64242C8();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v65 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v30 = swift_dynamicCast();
    v31 = v62;
    if ((v30 & 1) == 0)
    {

      (*(v55 + 8))(v10, v31);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v56 = *(v55 + 72);
  v35 = v20;
  v61((v34 + v56 * v20), v10, v62);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v60;
    if (v59 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v60 + v58 + v54[0];
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_1E5DFD1CC(v39, v15, &qword_1ED073278, &qword_1E65ED0D0);
      v61(v10, v15, v62);
      v41 = *&v15[v57];
      v42 = *a3;
      v43 = sub_1E6417154(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_1E641ACCC(v47, 1);
        v43 = sub_1E6417154(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v61((v50[6] + v56 * v43), v10, v62);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v58;
      v38 = v60;
      if (v59 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6611C70);
  sub_1E65E69B8();
  MEMORY[0x1E694D7C0](39, 0xE100000000000000);
  sub_1E65E69D8();
  __break(1u);
}

void sub_1E61DC594(uint64_t a1, char a2, unint64_t *a3)
{
  v7 = sub_1E65D8EF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F80, &qword_1E65ECDE0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v15 = v54 - v14;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_22;
  }

  v54[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v58 = *(v13 + 72);
  v60 = a1;
  v54[0] = v17;
  sub_1E5DFD1CC(a1 + v17, v54 - v14, &qword_1ED072F80, &qword_1E65ECDE0);
  v55 = v8;
  v61 = *(v8 + 32);
  v62 = v7;
  v61(v10, v15, v7);
  v57 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_1E64174A0(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_1E641C6B8(v25, a2 & 1);
    v20 = sub_1E64174A0(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_1E65E6C68();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v32 = v20;
  sub_1E64250F4();
  v20 = v32;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v65 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v30 = swift_dynamicCast();
    v31 = v62;
    if ((v30 & 1) == 0)
    {

      (*(v55 + 8))(v10, v31);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v33 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v34 = v33[6];
  v56 = *(v55 + 72);
  v35 = v20;
  v61((v34 + v56 * v20), v10, v62);
  *(v33[7] + 8 * v35) = v18;
  v36 = v33[2];
  v24 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (!v24)
  {
    v33[2] = v37;
    v38 = v60;
    if (v59 == 1)
    {
LABEL_22:

      return;
    }

    v39 = v60 + v58 + v54[0];
    v40 = 1;
    while (v40 < *(v38 + 16))
    {
      sub_1E5DFD1CC(v39, v15, &qword_1ED072F80, &qword_1E65ECDE0);
      v61(v10, v15, v62);
      v41 = *&v15[v57];
      v42 = *a3;
      v43 = sub_1E64174A0(v10);
      v45 = v42[2];
      v46 = (v44 & 1) == 0;
      v24 = __OFADD__(v45, v46);
      v47 = v45 + v46;
      if (v24)
      {
        goto LABEL_23;
      }

      v48 = v44;
      if (v42[3] < v47)
      {
        sub_1E641C6B8(v47, 1);
        v43 = sub_1E64174A0(v10);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v48)
      {
        goto LABEL_9;
      }

      v50 = *a3;
      *(*a3 + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = v43;
      v61((v50[6] + v56 * v43), v10, v62);
      *(v50[7] + 8 * v51) = v41;
      v52 = v50[2];
      v24 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v40;
      v50[2] = v53;
      v39 += v58;
      v38 = v60;
      if (v59 == v40)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6611C70);
  sub_1E65E69B8();
  MEMORY[0x1E694D7C0](39, 0xE100000000000000);
  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E61DCAE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1E601C7BC(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1E65E6748();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1E601C7BC((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1E5F87098(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
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
  return result;
}

uint64_t sub_1E61DCD04@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v295 = a5;
  v280 = a4;
  v294 = a3;
  v287 = a2;
  v288 = a1;
  v296 = a6;
  v243 = sub_1E65DAA08();
  v242 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v241 = &v233 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = sub_1E65DA1B8();
  v8 = MEMORY[0x1EEE9AC00](v275);
  v276 = &v233 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v277 = &v233 - v10;
  v271 = sub_1E65DFE28();
  v270 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271);
  v269 = &v233 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65D74E8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v240 = &v233 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_1E65D8478();
  v238 = *(v239 - 8);
  v14 = MEMORY[0x1EEE9AC00](v239);
  v237 = &v233 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v235 = &v233 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v234 = &v233 - v18;
  v19 = sub_1E65DF9A8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v236 = &v233 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = sub_1E65DA688();
  v262 = *(v263 - 8);
  MEMORY[0x1EEE9AC00](v263);
  v260 = &v233 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v259 = &v233 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v256 = &v233 - v25;
  v257 = sub_1E65DAC98();
  v255 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v249 = &v233 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_1E65DFA38();
  MEMORY[0x1EEE9AC00](v258);
  v253 = &v233 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  MEMORY[0x1EEE9AC00](v251);
  v252 = &v233 - v28;
  v254 = sub_1E65DA1A8();
  v250 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v248 = &v233 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_1E65D7348();
  MEMORY[0x1EEE9AC00](v290);
  v261 = &v233 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_1E65DA168();
  v264 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v247 = &v233 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_1E65DFBB8();
  v32 = MEMORY[0x1EEE9AC00](v267);
  v268 = &v233 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v278 = &v233 - v34;
  v272 = sub_1E65D9B28();
  v35 = MEMORY[0x1EEE9AC00](v272);
  v37 = &v233 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v279 = &v233 - v38;
  v39 = sub_1E65D7268();
  v292 = *(v39 - 8);
  v293 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v291 = &v233 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E65D72D8();
  v284 = *(v41 - 8);
  v285 = v41;
  v42 = MEMORY[0x1EEE9AC00](v41);
  v283 = &v233 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v289 = &v233 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v46 = MEMORY[0x1EEE9AC00](v45 - 8);
  v246 = &v233 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v245 = &v233 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v244 = &v233 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v274 = &v233 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = &v233 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54);
  v59 = &v233 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v233 - v60;
  v286 = sub_1E65E0398();
  v62 = MEMORY[0x1EEE9AC00](v286);
  v266 = &v233 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v66 = &v233 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v233 - v67;
  v282 = sub_1E65E01B8();
  v281 = *(v282 - 8);
  v69 = MEMORY[0x1EEE9AC00](v282);
  v273 = &v233 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v233 - v71;
  v73 = sub_1E65D8F78();
  MEMORY[0x1EEE9AC00](v73);
  v75 = (&v233 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  v297 = v6;
  sub_1E65D9858();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v77 = v279;
        sub_1E61E27D8(v75, v279, MEMORY[0x1E69CC6F0]);
        sub_1E61E2840(v77, v37, MEMORY[0x1E69CC6F0]);
        v78 = swift_getEnumCaseMultiPayload();
        if (!v78)
        {
          v169 = v247;
          (*(v264 + 32))(v247, v37, v265);
          sub_1E65DA158();
          if (v170)
          {
            sub_1E65D7338();
            v171 = v244;
            sub_1E65D72E8();
            v172 = 0;
            v173 = v246;
            v174 = v245;
          }

          else
          {
            v172 = 1;
            v173 = v246;
            v174 = v245;
            v171 = v244;
          }

          v197 = v285;
          v198 = *(v284 + 56);
          v198(v171, v172, 1, v285);
          sub_1E65DA138();
          v293 = v199;
          v200 = sub_1E65DA148();
          sub_1E63C4134(v294, v295, v200, v174);

          v198(v174, 0, 1, v197);
          sub_1E60976FC(v171, v173);
          v79 = v278;
          sub_1E65DFC38();
          sub_1E5DFE50C(v171, &qword_1ED072D90, &qword_1E66040F0);
          (*(v264 + 8))(v169, v265);
          goto LABEL_66;
        }

        v79 = v278;
        if (v78 == 1)
        {
          v80 = v250;
          v81 = v248;
          v82 = v254;
          (*(v250 + 32))(v248, v37, v254);
          v83 = v249;
          sub_1E65DA188();
          sub_1E65DAC38();
          sub_1E65DC2D8();
          sub_1E65DAC78();
          sub_1E65D74C8();

          sub_1E65DFA28();
          (*(v255 + 8))(v83, v257);
          sub_1E65DA198();
          sub_1E61E276C(&qword_1EE2D6600, MEMORY[0x1E699D480], MEMORY[0x1E699D478]);
          sub_1E65DC438();
          swift_storeEnumTagMultiPayload();
          sub_1E65DA178();
          sub_1E65DFF18();
          (*(v80 + 8))(v81, v82);
LABEL_66:
          swift_storeEnumTagMultiPayload();
          v201 = MEMORY[0x1E699D540];
          sub_1E61E2840(v79, v268, MEMORY[0x1E699D540]);
          sub_1E65D97F8();
          v202 = v266;
          sub_1E61E2840(v79, v266, v201);
          swift_storeEnumTagMultiPayload();
          v288(v202);
          sub_1E61E28A8(v202, MEMORY[0x1E699D6E0]);
          v203 = v269;
          sub_1E65DFE08();
          sub_1E61E28A8(v79, MEMORY[0x1E699D540]);
          sub_1E61E28A8(v279, MEMORY[0x1E69CC6F0]);
          v161 = v296;
          (*(v270 + 32))(v296, v203, v271);
          v168 = sub_1E65DFFB8();
          goto LABEL_67;
        }

        v175 = v262;
        v176 = v260;
        v177 = v263;
        (*(v262 + 32))(v260, v37, v263);
        sub_1E65DA668();
        if (v178)
        {
          sub_1E65D7338();
          sub_1E65D72E8();
          v179 = sub_1E65DA658();
          v294 = v180;
          v295 = v179;
          v181 = v234;
          sub_1E65DA678();
          v182 = sub_1E65D8458();
          v183 = v176;
          v185 = v184;
          v187 = v186;
          v188 = *(v238 + 8);
          v189 = v239;
          v188(v181, v239);
          v299 = v182;
          v300 = v185;
          v301 = v187 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
          sub_1E65D7F98();
          sub_1E5F87058(v182, v185, v187 & 1);
          v293 = v298;
          v190 = v235;
          sub_1E65DA678();
          sub_1E65D8448();
          v188(v190, v189);
          v191 = v237;
          sub_1E65DA678();
          sub_1E65D8468();
          v188(v191, v189);
          sub_1E65DF998();
          sub_1E65E0108();
          (*(v262 + 8))(v183, v263);
          goto LABEL_66;
        }

        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v205 = sub_1E65E3B68();
        __swift_project_value_buffer(v205, qword_1EE2EA2A0);
        v206 = sub_1E65E3B48();
        v207 = sub_1E65E6328();
        if (os_log_type_enabled(v206, v207))
        {
          v208 = swift_slowAlloc();
          *v208 = 0;
          _os_log_impl(&dword_1E5DE9000, v206, v207, "Unable to build BrowseDetailVideoLinkItem - missing title", v208, 2u);
          MEMORY[0x1E694F1C0](v208, -1, -1);
        }

        (*(v175 + 8))(v176, v177);
        v192 = MEMORY[0x1E69CC6F0];
        v193 = v279;
        goto LABEL_73;
      }

      v132 = v277;
      sub_1E61E27D8(v75, v277, MEMORY[0x1E69CCB70]);
      v133 = v276;
      sub_1E61E2840(v132, v276, MEMORY[0x1E69CCB70]);
      v134 = swift_getEnumCaseMultiPayload();
      if (v134 <= 1)
      {
        if (v134)
        {
          v192 = MEMORY[0x1E69CCB70];
          v193 = v132;
LABEL_73:
          sub_1E61E28A8(v193, v192);
          goto LABEL_74;
        }

        sub_1E61E28A8(v132, MEMORY[0x1E69CCB70]);
        v135 = sub_1E65D98D8();
        goto LABEL_48;
      }

      if (v134 == 2)
      {
        sub_1E61E28A8(v132, MEMORY[0x1E69CCB70]);
        v135 = sub_1E65DA528();
LABEL_48:
        (*(*(v135 - 8) + 8))(v133, v135);
        goto LABEL_74;
      }

      v194 = v242;
      v195 = v241;
      v196 = v243;
      (*(v242 + 32))(v241, v133, v243);
      sub_1E65DA9F8();
      sub_1E65DA9E8();
      v161 = v296;
      sub_1E65E0258();
      (*(v194 + 8))(v195, v196);
      sub_1E61E28A8(v132, MEMORY[0x1E69CCB70]);
      v168 = sub_1E65DFFB8();
LABEL_67:
      swift_storeEnumTagMultiPayload();
      return (*(*(v168 - 8) + 56))(v161, 0, 1, v168);
    }

    v107 = *v75;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    v108 = v280;
    *(&v233 - 4) = v297;
    *(&v233 - 3) = v108;
    v110 = v294;
    v109 = v295;
    v231 = v294;
    v232 = v295;
    v280 = sub_1E6405450(sub_1E61E274C, (&v233 - 6), v107);

    v111 = sub_1E65D9808();
    v112 = sub_1E634BE38(v111);
    if (v112 == 36)
    {
      v113 = 23;
    }

    else
    {
      v113 = v112;
    }

    LODWORD(v279) = v113;
    LODWORD(v278) = byte_1E65F6E8A[sub_1E65D9828()];
    v114 = sub_1E65D9848();
    v115 = sub_1E634BE38(v114);
    if (v115 == 36)
    {
      v116 = 24;
    }

    else
    {
      v116 = v115;
    }

    LODWORD(v277) = v116;
    v276 = sub_1E65D97F8();
    v275 = v117;
    v118 = sub_1E65D9808();
    v119 = sub_1E634BE38(v118);
    if (v119 == 36)
    {
      v120 = 23;
    }

    else
    {
      v120 = v119;
    }

    *v66 = v120;
    swift_storeEnumTagMultiPayload();
    v288(v66);
    sub_1E61E28A8(v66, MEMORY[0x1E699D6E0]);
    v121 = *(sub_1E65D9818() + 16);

    v122 = MEMORY[0x1E69686E8];
    if (v121)
    {
      v123 = sub_1E65D9818();
      v124 = v289;
      sub_1E63C4134(v110, v109, v123, v289);

      if (qword_1EE2D7258 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v290, qword_1EE2EA238);
      v125 = v291;
      v126 = v292;
      v127 = v293;
      (*(v292 + 104))(v291, *v122, v293);
      sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v128 = v274;
      v129 = v285;
      sub_1E65D73C8();
      (*(v126 + 8))(v125, v127);
      v130 = v284;
      (*(v284 + 8))(v124, v129);
      v131 = 0;
    }

    else
    {
      v131 = 1;
      v130 = v284;
      v129 = v285;
      v128 = v274;
    }

    (*(v130 + 56))(v128, v131, 1, v129);
    v152 = v130;
    v153 = sub_1E65D9888();
    v154 = v283;
    sub_1E63C4134(v294, v295, v153, v283);

    if (qword_1EE2D7270 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v290, qword_1EE2EA268);
    v155 = *v122;
    v156 = v291;
    v157 = v292;
    v158 = v293;
    (*(v292 + 104))(v291, v155, v293);
    sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    v159 = v289;
    sub_1E65D73C8();
    (*(v157 + 8))(v156, v158);
    (*(v152 + 8))(v154, v129);
    v231 = v128;
    v232 = v159;
    v160 = v273;
    sub_1E65E0188();
    v161 = v296;
    (*(v281 + 32))(v296, v160, v282);
LABEL_57:
    v168 = sub_1E65DFFB8();
    goto LABEL_67;
  }

  v279 = v72;
  if (!EnumCaseMultiPayload)
  {
    v84 = *v75;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    v85 = v280;
    *(&v233 - 4) = v297;
    *(&v233 - 3) = v85;
    v87 = v294;
    v86 = v295;
    v231 = v294;
    v232 = v295;
    v280 = sub_1E5F9F7E4(sub_1E61E27B4, (&v233 - 6), v84);

    v88 = sub_1E65D9808();
    v89 = sub_1E634BE38(v88);
    if (v89 == 36)
    {
      v90 = 23;
    }

    else
    {
      v90 = v89;
    }

    LODWORD(v278) = v90;
    LODWORD(v277) = byte_1E65F6E8A[sub_1E65D9828()];
    v91 = sub_1E65D9848();
    v92 = sub_1E634BE38(v91);
    if (v92 == 36)
    {
      v93 = 24;
    }

    else
    {
      v93 = v92;
    }

    LODWORD(v276) = v93;
    v275 = sub_1E65D97F8();
    v274 = v94;
    v95 = sub_1E65D9808();
    v96 = sub_1E634BE38(v95);
    if (v96 == 36)
    {
      v97 = 23;
    }

    else
    {
      v97 = v96;
    }

    *v68 = v97;
    swift_storeEnumTagMultiPayload();
    LODWORD(v288) = v288(v68);
    sub_1E61E28A8(v68, MEMORY[0x1E699D6E0]);
    v98 = *(sub_1E65D9818() + 16);

    if (v98)
    {
      v99 = sub_1E65D9818();
      v100 = v289;
      sub_1E63C4134(v87, v86, v99, v289);

      if (qword_1EE2D7258 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v290, qword_1EE2EA238);
      v102 = v291;
      v101 = v292;
      v103 = v293;
      (*(v292 + 104))(v291, *MEMORY[0x1E69686E8], v293);
      sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v104 = v285;
      sub_1E65D73C8();
      (*(v101 + 8))(v102, v103);
      v105 = v284;
      (*(v284 + 8))(v100, v104);
      v106 = 0;
    }

    else
    {
      v106 = 1;
      v100 = v289;
      v105 = v284;
      v104 = v285;
    }

    (*(v105 + 56))(v61, v106, 1, v104);
    v162 = sub_1E65D9888();
    v163 = v283;
    sub_1E63C4134(v87, v86, v162, v283);

    v164 = v279;
    if (qword_1EE2D7270 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v290, qword_1EE2EA268);
    v166 = v291;
    v165 = v292;
    v167 = v293;
    (*(v292 + 104))(v291, *MEMORY[0x1E69686E8], v293);
    sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    sub_1E65D73C8();
    (*(v165 + 8))(v166, v167);
    (*(v105 + 8))(v163, v104);
    v231 = v61;
    v232 = v100;
    sub_1E65E0188();
    v161 = v296;
    (*(v281 + 32))(v296, v164, v282);
    goto LABEL_57;
  }

  v136 = *v75;
  if (((1 << v136) & 0x3CF) == 0)
  {
    if (v136 == 4)
    {
      v137 = sub_1E65D9838();
      v287 = v138;
      v288 = v137;
      v139 = sub_1E65D9808();
      v140 = sub_1E634BE38(v139);
      if (v140 == 36)
      {
        v141 = 23;
      }

      else
      {
        v141 = v140;
      }

      LODWORD(v286) = v141;
      v282 = sub_1E65D97F8();
      v142 = *(sub_1E65D9818() + 16);

      if (v142)
      {
        v143 = sub_1E65D9818();
        v144 = v289;
        sub_1E63C4134(v294, v295, v143, v289);

        v145 = v59;
        if (qword_1EE2D7258 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v290, qword_1EE2EA238);
        v147 = v291;
        v146 = v292;
        v148 = v293;
        (*(v292 + 104))(v291, *MEMORY[0x1E69686E8], v293);
        sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
        v149 = v285;
        sub_1E65D73C8();
        (*(v146 + 8))(v147, v148);
        v150 = v284;
        (*(v284 + 8))(v144, v149);
        v151 = 0;
      }

      else
      {
        v151 = 1;
        v150 = v284;
        v149 = v285;
        v145 = v59;
      }

      (*(v150 + 56))(v145, v151, 1, v149);
      v224 = v150;
      v225 = sub_1E65D9888();
      v226 = v283;
      sub_1E63C4134(v294, v295, v225, v283);

      if (qword_1EE2D7270 == -1)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v210 = v56;
      v211 = sub_1E65D9838();
      v287 = v212;
      v288 = v211;
      v213 = sub_1E65D9808();
      v214 = sub_1E634BE38(v213);
      if (v214 == 36)
      {
        v215 = 23;
      }

      else
      {
        v215 = v214;
      }

      LODWORD(v286) = v215;
      v282 = sub_1E65D97F8();
      v216 = *(sub_1E65D9818() + 16);

      if (v216)
      {
        v217 = sub_1E65D9818();
        v218 = v289;
        sub_1E63C4134(v294, v295, v217, v289);

        if (qword_1EE2D7258 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v290, qword_1EE2EA238);
        v220 = v291;
        v219 = v292;
        v221 = v293;
        (*(v292 + 104))(v291, *MEMORY[0x1E69686E8], v293);
        sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
        v149 = v285;
        sub_1E65D73C8();
        (*(v219 + 8))(v220, v221);
        v222 = v284;
        (*(v284 + 8))(v218, v149);
        v223 = 0;
      }

      else
      {
        v223 = 1;
        v222 = v284;
        v149 = v285;
      }

      (*(v222 + 56))(v210, v223, 1, v149);
      v224 = v222;
      v227 = sub_1E65D9888();
      v226 = v283;
      sub_1E63C4134(v294, v295, v227, v283);

      if (qword_1EE2D7270 == -1)
      {
        goto LABEL_87;
      }
    }

    swift_once();
LABEL_87:
    __swift_project_value_buffer(v290, qword_1EE2EA268);
    v229 = v291;
    v228 = v292;
    v230 = v293;
    (*(v292 + 104))(v291, *MEMORY[0x1E69686E8], v293);
    sub_1E61E276C(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    sub_1E65D73C8();
    (*(v228 + 8))(v229, v230);
    (*(v224 + 8))(v226, v149);
    v161 = v296;
    sub_1E65E0068();
    v168 = sub_1E65DFFB8();
    goto LABEL_67;
  }

LABEL_74:
  v209 = sub_1E65DFFB8();
  return (*(*(v209 - 8) + 56))(v296, 1, 1, v209);
}

uint64_t sub_1E61DF1DC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v29[1] = a6;
  v39 = a5;
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768B0, &qword_1E65F6E78);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v29 - v8;
  v35 = sub_1E65DFAA8();
  v10 = *(v35 - 8);
  v11 = MEMORY[0x1EEE9AC00](v35);
  v34 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v32 = v29 - v13;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768B8, &qword_1E65F6E80);
  MEMORY[0x1EEE9AC00](v33);
  v15 = (v29 - v14);
  result = sub_1E65D97B8();
  v17 = result;
  v18 = *(result + 16);
  if (v18)
  {
    v19 = 0;
    v30 = v10;
    v20 = (v10 + 48);
    v21 = MEMORY[0x1E69E7CC0];
    v31 = a1;
    while (v19 < *(v17 + 16))
    {
      v22 = *(sub_1E65D88D8() - 8);
      v23 = v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19;
      v24 = *(v33 + 48);
      *v15 = v19;
      sub_1E61E2840(v23, v15 + v24, MEMORY[0x1E69CB668]);
      sub_1E61DF5C8(v19, v15 + v24, v36, a1, v37, v38, v39, v9);
      sub_1E5DFE50C(v15, &qword_1ED0768B8, &qword_1E65F6E80);
      if ((*v20)(v9, 1, v35) == 1)
      {
        result = sub_1E5DFE50C(v9, &qword_1ED0768B0, &qword_1E65F6E78);
      }

      else
      {
        v25 = MEMORY[0x1E699D4B8];
        v26 = v32;
        sub_1E61E27D8(v9, v32, MEMORY[0x1E699D4B8]);
        sub_1E61E27D8(v26, v34, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1E64F6B2C(0, v21[2] + 1, 1, v21);
        }

        v28 = v21[2];
        v27 = v21[3];
        if (v28 >= v27 >> 1)
        {
          v21 = sub_1E64F6B2C((v27 > 1), v28 + 1, 1, v21);
        }

        v21[2] = v28 + 1;
        result = sub_1E61E27D8(v34, v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28, MEMORY[0x1E699D4B8]);
        a1 = v31;
      }

      if (v18 == ++v19)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    sub_1E65D97A8();
    return sub_1E65DFC98();
  }

  return result;
}

uint64_t sub_1E61DF5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v245 = a6;
  v246 = a7;
  v227 = a5;
  v222 = a4;
  v247 = a3;
  v248 = a8;
  v236 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v234 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v233 = &v204 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C0, &qword_1E65F1FC8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v235 = &v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v244 = &v204 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B8, &qword_1E65F1FC0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v232 = &v204 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v243 = &v204 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v231 = &v204 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v221 = &v204 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v218 = &v204 - v26;
  v219 = sub_1E65DAC98();
  v216 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v213 = &v204 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1E65DFA38();
  MEMORY[0x1EEE9AC00](v220);
  v214 = &v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_1E65DA0B8();
  v215 = *(v217 - 8);
  v29 = MEMORY[0x1EEE9AC00](v217);
  v212 = &v204 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v230 = &v204 - v31;
  v211 = sub_1E65D9D58();
  v210 = *(v211 - 8);
  v32 = MEMORY[0x1EEE9AC00](v211);
  v209 = &v204 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v208 = &v204 - v34;
  v225 = sub_1E65D8BB8();
  v35 = MEMORY[0x1EEE9AC00](v225);
  v226 = &v204 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v237 = &v204 - v37;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  v38 = MEMORY[0x1EEE9AC00](v229);
  v228 = &v204 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v242 = &v204 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v240 = &v204 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v239 = &v204 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v241 = &v204 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v238 = &v204 - v48;
  v224 = sub_1E65D9AC8();
  v223 = *(v224 - 1);
  MEMORY[0x1EEE9AC00](v224);
  v50 = &v204 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E65D8258();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v204 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1E65D9CC8();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v204 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1E65D88D8();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v204 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E61E2840(a2, v61, MEMORY[0x1E69CB668]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v52 + 32))(v54, v61, v51);
    v62 = sub_1E65D9808();
    LODWORD(v236) = sub_1E634BE38(v62);
    if (v236 == 36 || (v63 = sub_1E65D80C8(), v222 = v52, v64 = v63, v66 = v65, v251 = v63, v252 = v65, v247 = v54, v68 = v67 & 1, v253 = v67 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10), sub_1E65D7F98(), v52 = v222, v54 = v247, sub_1E5F87058(v64, v66, v68), v69 = MEMORY[0x1E69479A0](v249, v250), v69 == 9))
    {
      (*(v52 + 8))(v54, v51);
LABEL_7:
      v75 = sub_1E65DFAA8();
      return (*(*(v75 - 8) + 56))(v248, 1, 1, v75);
    }

    LODWORD(v207) = v69;
    v82 = sub_1E65D9AA8();
    v84 = v83;
    MEMORY[0x1E6941490]();
    v85 = sub_1E65D9AA8();
    v87 = v86;
    (*(v223 + 8))(v50, v224);
    if (v82 == v85 && v84 == v87)
    {
    }

    else
    {
      v103 = sub_1E65E6C18();

      if ((v103 & 1) == 0)
      {
        v104 = sub_1E65D8198();
        v105 = sub_1E65D9AA8();
        v107 = sub_1E637CA94(v105, v106, v104);

        if (v107)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
          v108 = *(sub_1E65DADF8() - 8);
          v109 = *(v108 + 72);
          v110 = (*(v108 + 80) + 32) & ~*(v108 + 80);
          v111 = swift_allocObject();
          *(v111 + 16) = xmmword_1E65EB9E0;
          v112 = (v111 + v110);
          *v112 = sub_1E65D9AA8();
          v112[1] = v113;
          swift_storeEnumTagMultiPayload();
          *(v112 + v109) = 1;
          swift_storeEnumTagMultiPayload();
          v114 = sub_1E65D80A8();
          v251 = v111;
          sub_1E5FA9E2C(v114);
          v115 = v251;
LABEL_28:

          v116 = *(sub_1E65D8058() + 16);

          if (v116)
          {
            v117 = sub_1E65D8058();
            v118 = v238;
            sub_1E63C4134(v245, v246, v117, v238);

            v119 = 0;
          }

          else
          {
            v119 = 1;
            v118 = v238;
          }

          v120 = sub_1E65D72D8();
          v121 = *(v120 - 8);
          v122 = *(v121 + 56);
          v227 = v121 + 56;
          v122(v118, v119, 1, v120);
          v123 = v237;
          sub_1E65D8128();
          v124 = v123;
          v125 = v226;
          sub_1E61E2840(v124, v226, MEMORY[0x1E69CB950]);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v225 = v120;
          v224 = v122;
          if (EnumCaseMultiPayload == 1)
          {
            v127 = v215;
            v128 = v230;
            v129 = v217;
            (*(v215 + 32))(v230, v125, v217);
            v130 = *(v127 + 16);
            v226 = v115;
            v131 = v212;
            v130(v212, v128, v129);
            v132 = v213;
            sub_1E65DA098();
            sub_1E65DAC38();
            sub_1E65DC2D8();
            sub_1E65DAC78();
            sub_1E65D74C8();

            sub_1E65DFA28();
            v133 = v132;
            v122 = v224;
            (*(v216 + 8))(v133, v219);
            sub_1E65DA0A8();
            sub_1E61E276C(&qword_1EE2D6600, MEMORY[0x1E699D480], MEMORY[0x1E699D478]);
            v134 = v228;
            sub_1E65DC438();
            v135 = *(v127 + 8);
            v136 = v131;
            v115 = v226;
            v135(v136, v129);
            v137 = v129;
            v120 = v225;
            v135(v230, v137);
          }

          else
          {
            v138 = v210;
            v139 = v208;
            v140 = v125;
            v141 = v211;
            (*(v210 + 32))(v208, v140, v211);
            v142 = v209;
            (*(v138 + 16))(v209, v139, v141);
            v134 = v228;
            sub_1E613467C(v142, v228);
            (*(v138 + 8))(v139, v141);
          }

          sub_1E61E28A8(v237, MEMORY[0x1E69CB950]);
          swift_storeEnumTagMultiPayload();
          v143 = sub_1E6128158(v134, v242);
          v144 = sub_1E63B0584(v143);
          v145 = sub_1E61DCAE8(v144);

          v237 = sub_1E600C07C(v145);

          v146 = sub_1E65D8108();
          if (v147 == -1)
          {
            v148 = 9;
          }

          else
          {
            v251 = v146;
            LOBYTE(v252) = v147 & 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
            sub_1E65D7FB8();
            v148 = v249;
          }

          LODWORD(v230) = v148;
          v149 = v231;
          sub_1E65D80E8();
          v150 = sub_1E65D76A8();
          v151 = 1;
          LODWORD(v229) = (*(*(v150 - 8) + 48))(v149, 1, v150);
          sub_1E5DFE50C(v149, &qword_1ED0752D8, &qword_1E660CC30);
          v152 = *(sub_1E65D8068() + 16);

          v205 = v51;
          if (v152)
          {
            v153 = sub_1E65D8068();
            v154 = v241;
            sub_1E63C4134(v245, v246, v153, v241);

            v151 = 0;
          }

          else
          {
            v154 = v241;
          }

          v122(v154, v151, 1, v120);
          v155 = sub_1E65D81E8();
          if (v157 == -1)
          {
            LODWORD(v231) = 4;
          }

          else
          {
            v158 = v157;
            v159 = v155;
            v160 = v156;
            LODWORD(v231) = sub_1E61A8FC0(v155, v156, v157 & 1);
            sub_1E5F87158(v159, v160, v158);
          }

          v228 = sub_1E65D8188();
          v161 = sub_1E65DFB58();
          v163 = v162;
          v164 = sub_1E65D8078();
          v166 = v165;
          v167 = sub_1E65D81B8();
          if (v168)
          {
            v169 = v167;
          }

          else
          {
            v169 = 0;
          }

          if (v168)
          {
            v170 = v168;
          }

          else
          {
            v170 = 0xE000000000000000;
          }

          v251 = v164;
          v252 = v166;

          MEMORY[0x1E694D7C0](v169, v170);

          MEMORY[0x1E694D7C0](v161, v163);
          swift_bridgeObjectRelease_n();

          v226 = v251;
          v223 = v252;
          v171 = v232;
          sub_1E65D8208();
          sub_1E6127B6C(v171, v243);
          v172 = sub_1E65D8238();
          if (v174 == -1)
          {
            v178 = 4;
          }

          else
          {
            v251 = v172;
            v252 = v173;
            v253 = v174 & 1;
            v175 = v172;
            v176 = v173;
            v177 = v174;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
            sub_1E65D7FB8();
            sub_1E5F87158(v175, v176, v177);
            v178 = v249;
          }

          LODWORD(v232) = v178;
          v179 = v233;
          v233 = sub_1E65D8088();
          v221 = v180;
          v220 = sub_1E65D8078();
          v219 = v181;
          v218 = sub_1E65D81D8();
          v217 = v182;
          v183 = *(v115 + 16);

          v184 = v225;
          if (v183)
          {
            v185 = v239;
            sub_1E63C4134(v245, v246, v115, v239);
            v186 = 0;
          }

          else
          {
            v186 = 1;
            v185 = v239;
          }

          v122(v185, v186, 1, v184);
          sub_1E65D8178();
          v187 = sub_1E65D83D8();
          v188 = *(v187 - 8);
          v216 = *(v188 + 48);
          v189 = (v216)(v179, 1, v187);
          if (v189 == 1)
          {
            sub_1E5DFE50C(v179, &qword_1ED074528, &unk_1E660F4D0);
            v190 = 1;
            v191 = v244;
          }

          else
          {
            v191 = v244;
            sub_1E608F7E4(v189);
            (*(v188 + 8))(v179, v187);
            v190 = 0;
          }

          v192 = sub_1E65DFD08();
          v193 = *(*(v192 - 8) + 56);
          v194 = 1;
          v193(v191, v190, 1, v192);
          v195 = *(sub_1E65D8248() + 16);

          if (v195)
          {
            v196 = sub_1E65D8248();
            v197 = v240;
            sub_1E63C4134(v245, v246, v196, v240);

            v194 = 0;
          }

          else
          {
            v197 = v240;
          }

          v224(v197, v194, 1, v225);
          v198 = v234;
          sub_1E65D8158();
          v199 = (v216)(v198, 1, v187);
          if (v199 == 1)
          {
            sub_1E5DFE50C(v198, &qword_1ED074528, &unk_1E660F4D0);
            v200 = 1;
            v201 = v235;
          }

          else
          {
            v201 = v235;
            sub_1E608F7E4(v199);
            (*(v188 + 8))(v198, v187);
            v200 = 0;
          }

          v202 = v205;
          v193(v201, v200, 1, v192);
          v203 = v248;
          sub_1E65DF858();
          (*(v222 + 8))(v247, v202);
          v100 = sub_1E65DFAA8();
          swift_storeEnumTagMultiPayload();
          v101 = *(*(v100 - 8) + 56);
          v102 = v203;
          return v101(v102, 0, 1, v100);
        }
      }
    }

    v115 = sub_1E65D80A8();
    goto LABEL_28;
  }

  (*(v56 + 32))(v58, v61, v55);
  v70 = sub_1E65D9CA8();
  v72 = v71;
  v251 = v70;
  v252 = v71;
  v74 = v73 & 1;
  v253 = v73 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
  sub_1E65D7F98();
  sub_1E5F87058(v70, v72, v74);
  if (MEMORY[0x1E69479A0](v249, v250) == 9)
  {
    (*(v56 + 8))(v58, v55);
    goto LABEL_7;
  }

  v77 = sub_1E65D9808();
  v78 = sub_1E634BE38(v77);
  if (v78 == 36)
  {
    v79 = 23;
  }

  else
  {
    v79 = v78;
  }

  LODWORD(v246) = v79;
  v80 = sub_1E65D9CB8();
  v244 = v81;
  v245 = v80;
  v207 = v55;
  v206 = v56;
  if (v236)
  {
    v243 = 0;
  }

  else
  {
    sub_1E65D97A8();
    v243 = v88;
  }

  sub_1E65D9808();
  v89 = sub_1E65D8E48();
  v91 = v90;
  v92 = sub_1E65D9C98();
  v94 = v93;
  v95 = sub_1E65D9CB8();
  if (v96)
  {
    v97 = v95;
  }

  else
  {
    v97 = 0;
  }

  if (v96)
  {
    v98 = v96;
  }

  else
  {
    v98 = 0xE000000000000000;
  }

  v251 = v92;
  v252 = v94;

  MEMORY[0x1E694D7C0](v97, v98);

  MEMORY[0x1E694D7C0](v89, v91);
  swift_bridgeObjectRelease_n();

  sub_1E65D9C98();
  v99 = v248;
  sub_1E65DFD48();
  (*(v206 + 8))(v58, v207);
  v100 = sub_1E65DFAA8();
  swift_storeEnumTagMultiPayload();
  v101 = *(*(v100 - 8) + 56);
  v102 = v99;
  return v101(v102, 0, 1, v100);
}

uint64_t sub_1E61E0EB0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v231 = a4;
  v232 = a5;
  v214 = a3;
  v234 = a1;
  v235 = a2;
  v236 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v222 = v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v221 = v194 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C0, &qword_1E65F1FC8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v223 = v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v230 = v194 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758B8, &qword_1E65F1FC0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v219 = v194 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v229 = v194 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v218 = v194 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v210 = v194 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v208 = v194 - v23;
  v207 = sub_1E65DAC98();
  v205 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v202 = v194 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_1E65DFA38();
  MEMORY[0x1EEE9AC00](v209);
  v203 = v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_1E65DA0B8();
  v204 = *(v206 - 8);
  v26 = MEMORY[0x1EEE9AC00](v206);
  v201 = v194 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v217 = v194 - v28;
  v200 = sub_1E65D9D58();
  v199 = *(v200 - 8);
  v29 = MEMORY[0x1EEE9AC00](v200);
  v198 = v194 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v197 = v194 - v31;
  v212 = sub_1E65D8BB8();
  v32 = MEMORY[0x1EEE9AC00](v212);
  v213 = v194 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v224 = v194 - v34;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  v35 = MEMORY[0x1EEE9AC00](v216);
  v215 = v194 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v228 = v194 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v220 = v194 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v226 = v194 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v227 = v194 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v225 = v194 - v45;
  v46 = sub_1E65D9AC8();
  v211 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = v194 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1E65D8258();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = v194 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1E65D9CC8();
  v233 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v55 = v194 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1E65D88D8();
  MEMORY[0x1EEE9AC00](v56);
  v58 = v194 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E61E2840(v234, v58, MEMORY[0x1E69CB668]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v50 + 32))(v52, v58, v49);
    v59 = sub_1E65D9808();
    LODWORD(v234) = sub_1E634BE38(v59);
    if (v234 == 36 || (v60 = sub_1E65D80C8(), v233 = v50, v61 = v60, v235 = v52, v63 = v62, v239 = v60, v240 = v62, v65 = v64 & 1, v241 = v64 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10), sub_1E65D7F98(), v50 = v233, v52 = v235, sub_1E5F87058(v61, v63, v65), v66 = MEMORY[0x1E69479A0](v237, v238), v66 == 9))
    {
      (*(v50 + 8))(v52, v49);
LABEL_7:
      v73 = sub_1E65DFAA8();
      return (*(*(v73 - 8) + 56))(v236, 1, 1, v73);
    }

    v194[3] = v66;
    v91 = sub_1E65D9AA8();
    v93 = v92;
    MEMORY[0x1E6941490]();
    v94 = sub_1E65D9AA8();
    v96 = v95;
    (*(v211 + 8))(v48, v46);
    if (v91 == v94 && v93 == v96)
    {
    }

    else
    {
      v97 = sub_1E65E6C18();

      if ((v97 & 1) == 0)
      {
        v98 = sub_1E65D8198();
        v99 = sub_1E65D9AA8();
        v101 = sub_1E637CA94(v99, v100, v98);

        if (v101)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
          v102 = *(sub_1E65DADF8() - 8);
          v103 = *(v102 + 72);
          v104 = (*(v102 + 80) + 32) & ~*(v102 + 80);
          v105 = swift_allocObject();
          *(v105 + 16) = xmmword_1E65EB9E0;
          v106 = (v105 + v104);
          *v106 = sub_1E65D9AA8();
          v106[1] = v107;
          swift_storeEnumTagMultiPayload();
          *(v106 + v103) = 1;
          swift_storeEnumTagMultiPayload();
          v108 = sub_1E65D80A8();
          v239 = v105;
          sub_1E5FA9E2C(v108);
          v109 = v239;
LABEL_22:

          v110 = *(sub_1E65D8058() + 16);

          if (v110)
          {
            v111 = sub_1E65D8058();
            v112 = v225;
            sub_1E63C4134(v231, v232, v111, v225);

            v113 = 0;
          }

          else
          {
            v113 = 1;
            v112 = v225;
          }

          v114 = sub_1E65D72D8();
          v115 = *(v114 - 8);
          v214 = *(v115 + 56);
          v211 = v115 + 56;
          v214(v112, v113, 1, v114);
          v116 = v224;
          sub_1E65D8128();
          v117 = v116;
          v118 = v213;
          sub_1E61E2840(v117, v213, MEMORY[0x1E69CB950]);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v195 = v49;
          v196 = v114;
          if (EnumCaseMultiPayload == 1)
          {
            v120 = v204;
            v121 = v217;
            v122 = v206;
            (*(v204 + 32))(v217, v118, v206);
            v123 = *(v120 + 16);
            v213 = v109;
            v124 = v201;
            v123(v201, v121, v122);
            v125 = v202;
            sub_1E65DA098();
            sub_1E65DAC38();
            sub_1E65DC2D8();
            sub_1E65DAC78();
            sub_1E65D74C8();

            sub_1E65DFA28();
            (*(v205 + 8))(v125, v207);
            sub_1E65DA0A8();
            sub_1E61E276C(&qword_1EE2D6600, MEMORY[0x1E699D480], MEMORY[0x1E699D478]);
            v126 = v215;
            v114 = v196;
            sub_1E65DC438();
            v127 = *(v120 + 8);
            v128 = v124;
            v109 = v213;
            v127(v128, v122);
            v127(v217, v122);
          }

          else
          {
            v129 = v199;
            v130 = v197;
            v131 = v118;
            v132 = v200;
            (*(v199 + 32))(v197, v131, v200);
            v133 = v198;
            (*(v129 + 16))(v198, v130, v132);
            v126 = v215;
            sub_1E613467C(v133, v215);
            (*(v129 + 8))(v130, v132);
          }

          sub_1E61E28A8(v224, MEMORY[0x1E69CB950]);
          swift_storeEnumTagMultiPayload();
          v134 = sub_1E6128158(v126, v228);
          v135 = sub_1E63B0584(v134);
          v136 = v242;
          v137 = sub_1E61DCAE8(v135);
          v242 = v136;

          v224 = sub_1E600C07C(v137);

          v138 = sub_1E65D8108();
          if (v139 == -1)
          {
            v140 = 9;
          }

          else
          {
            v239 = v138;
            LOBYTE(v240) = v139 & 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
            sub_1E65D7FB8();
            v140 = v237;
          }

          LODWORD(v217) = v140;
          v141 = v218;
          sub_1E65D80E8();
          v142 = sub_1E65D76A8();
          v143 = 1;
          LODWORD(v216) = (*(*(v142 - 8) + 48))(v141, 1, v142);
          sub_1E5DFE50C(v141, &qword_1ED0752D8, &qword_1E660CC30);
          v144 = *(sub_1E65D8068() + 16);

          if (v144)
          {
            v145 = sub_1E65D8068();
            v146 = v227;
            sub_1E63C4134(v231, v232, v145, v227);

            v143 = 0;
          }

          else
          {
            v146 = v227;
          }

          v214(v146, v143, 1, v114);
          v147 = sub_1E65D81E8();
          if (v149 == -1)
          {
            LODWORD(v218) = 4;
          }

          else
          {
            v150 = v149;
            v151 = v147;
            v152 = v148;
            LODWORD(v218) = sub_1E61A8FC0(v147, v148, v149 & 1);
            sub_1E5F87158(v151, v152, v150);
          }

          v215 = sub_1E65D8188();
          v153 = sub_1E65DFB58();
          v155 = v154;
          v156 = sub_1E65D8078();
          v158 = v157;
          v159 = sub_1E65D81B8();
          if (v160)
          {
            v161 = v159;
          }

          else
          {
            v161 = 0;
          }

          if (v160)
          {
            v162 = v160;
          }

          else
          {
            v162 = 0xE000000000000000;
          }

          v239 = v156;
          v240 = v158;

          MEMORY[0x1E694D7C0](v161, v162);

          MEMORY[0x1E694D7C0](v153, v155);
          swift_bridgeObjectRelease_n();

          v213 = v239;
          v212 = v240;
          v163 = v219;
          sub_1E65D8208();
          sub_1E6127B6C(v163, v229);
          v164 = sub_1E65D8238();
          if (v166 == -1)
          {
            v170 = 4;
          }

          else
          {
            v239 = v164;
            v240 = v165;
            v241 = v166 & 1;
            v167 = v164;
            v168 = v165;
            v169 = v166;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
            sub_1E65D7FB8();
            sub_1E5F87158(v167, v168, v169);
            v170 = v237;
          }

          LODWORD(v219) = v170;
          v171 = v230;
          v172 = v221;
          v173 = v196;
          v221 = sub_1E65D8088();
          v210 = v174;
          v209 = sub_1E65D8078();
          v208 = v175;
          v207 = sub_1E65D81D8();
          v206 = v176;
          v177 = *(v109 + 16);

          if (v177)
          {
            v178 = v226;
            sub_1E63C4134(v231, v232, v109, v226);
            v179 = 0;
          }

          else
          {
            v179 = 1;
            v178 = v226;
          }

          v214(v178, v179, 1, v173);
          sub_1E65D8178();
          v180 = sub_1E65D83D8();
          v181 = *(v180 - 8);
          v205 = *(v181 + 48);
          v182 = (v205)(v172, 1, v180);
          if (v182 == 1)
          {
            sub_1E5DFE50C(v172, &qword_1ED074528, &unk_1E660F4D0);
            v183 = 1;
          }

          else
          {
            sub_1E608F7E4(v182);
            (*(v181 + 8))(v172, v180);
            v183 = 0;
          }

          v184 = sub_1E65DFD08();
          v185 = 1;
          v204 = *(*(v184 - 8) + 56);
          (v204)(v171, v183, 1, v184);
          v186 = *(sub_1E65D8248() + 16);

          if (v186)
          {
            v187 = sub_1E65D8248();
            v188 = v220;
            sub_1E63C4134(v231, v232, v187, v220);

            v185 = 0;
          }

          else
          {
            v188 = v220;
          }

          v214(v188, v185, 1, v196);
          v189 = v222;
          sub_1E65D8158();
          v190 = (v205)(v189, 1, v180);
          if (v190 == 1)
          {
            sub_1E5DFE50C(v189, &qword_1ED074528, &unk_1E660F4D0);
            v191 = 1;
            v192 = v223;
          }

          else
          {
            v192 = v223;
            sub_1E608F7E4(v190);
            (*(v181 + 8))(v189, v180);
            v191 = 0;
          }

          (v204)(v192, v191, 1, v184);
          v193 = v236;
          sub_1E65DF858();
          (*(v233 + 8))(v235, v195);
          v88 = sub_1E65DFAA8();
          swift_storeEnumTagMultiPayload();
          v89 = *(*(v88 - 8) + 56);
          v90 = v193;
          return v89(v90, 0, 1, v88);
        }
      }
    }

    v109 = sub_1E65D80A8();
    goto LABEL_22;
  }

  v67 = v53;
  (*(v233 + 32))(v55, v58, v53);
  v68 = sub_1E65D9CA8();
  v70 = v69;
  v239 = v68;
  v240 = v69;
  v72 = v71 & 1;
  v241 = v71 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
  sub_1E65D7F98();
  sub_1E5F87058(v68, v70, v72);
  if (MEMORY[0x1E69479A0](v237, v238) == 9)
  {
    (*(v233 + 8))(v55, v53);
    goto LABEL_7;
  }

  v75 = sub_1E65D9808();
  sub_1E634BE38(v75);
  v76 = sub_1E65D9CB8();
  v234 = v77;
  v235 = v76;
  v232 = sub_1E65DFB58();
  v79 = v78;
  v80 = sub_1E65D9C98();
  v82 = v81;
  v83 = sub_1E65D9CB8();
  if (v84)
  {
    v85 = v83;
  }

  else
  {
    v85 = 0;
  }

  if (v84)
  {
    v86 = v84;
  }

  else
  {
    v86 = 0xE000000000000000;
  }

  v239 = v80;
  v240 = v82;

  MEMORY[0x1E694D7C0](v85, v86);

  MEMORY[0x1E694D7C0](v232, v79);
  swift_bridgeObjectRelease_n();

  sub_1E65D9C98();
  v87 = v236;
  sub_1E65DFD48();
  (*(v233 + 8))(v55, v67);
  v88 = sub_1E65DFAA8();
  swift_storeEnumTagMultiPayload();
  v89 = *(*(v88 - 8) + 56);
  v90 = v87;
  return v89(v90, 0, 1, v88);
}

uint64_t sub_1E61E276C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E61E27D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61E2840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61E28A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61E2908()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v61 = v45 - v2;
  v62 = type metadata accessor for ServiceSubscriptionService();
  Description = v62[-1].Description;
  v3 = MEMORY[0x1EEE9AC00](v62);
  v56 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v60 = v45 - v5;
  v55 = type metadata accessor for RemoteBrowsingService();
  v6 = v55[-1].Description;
  v7 = MEMORY[0x1EEE9AC00](v55);
  v63 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v45 - v9;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v11 = sub_1E65E3B68();
  __swift_project_value_buffer(v11, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v12 = (v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router);
  v13 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(v0 + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24));
  v53 = v0;
  v14 = *v13;
  v15 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v16 = type metadata accessor for AppComposer(0);
  v17 = v15 + *(v16 + 20);
  v18 = type metadata accessor for AppEnvironment(0);
  v19 = v17 + *(v18 + 100);
  v20 = v6;
  v22 = (v6 + 2);
  v21 = v6[2];
  v23 = v10;
  v24 = v10;
  v57 = v10;
  v25 = v55;
  v21(v24, v14 + v19, v55);
  v49 = v22;
  v50 = v21;
  v26 = *__swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v27 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer + *(v16 + 20) + *(v18 + 108);
  v51 = Description[2];
  v51(v60, v26 + v27, v62);
  v46 = sub_1E65E60A8();
  v47 = *(*(v46 - 8) + 56);
  v47(v61, 1, 1, v46);
  v21(v63, v23, v25);
  sub_1E5DF650C(v12, v64);
  v28 = v20;
  v52 = v20;
  v29 = *(v20 + 80);
  v30 = (v29 + 32) & ~v29;
  v45[1] = v29 | 7;
  v31 = (v58 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v33 = Description;
  v48 = v28[4];
  v34 = v32 + v30;
  v35 = v63;
  v48(v34, v63, v25);
  sub_1E5DF599C(v64, v32 + v31);
  *(v32 + ((v31 + 47) & 0xFFFFFFFFFFFFFFF8)) = v53;

  v36 = v61;
  sub_1E6059EAC(0, 0, v61, &unk_1E65F6EA0, v32);

  v47(v36, 1, 1, v46);
  v37 = v56;
  v38 = v60;
  v51(v56, v60, v62);
  v50(v35, v57, v25);
  v39 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v40 = (v54 + v29 + v39) & ~v29;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  v42 = v41 + v39;
  v43 = v62;
  (v33[4])(v42, v37, v62);
  v48(v41 + v40, v63, v25);
  sub_1E64B80F8(0, 0, v61, &unk_1E65F6EB0, v41);

  (v33[1])(v38, v43);
  return (v52[1])(v57, v25);
}

uint64_t sub_1E61E2EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v6[17] = type metadata accessor for RemoteParticipantScope(0);
  v6[18] = swift_task_alloc();
  type metadata accessor for BrowsingIdentity(0);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v7 = sub_1E65DA2A8();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v8 = sub_1E65D9FF8();
  v6[25] = v8;
  v6[26] = *(v8 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = type metadata accessor for AppAction(0);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v9 = type metadata accessor for RouteDestination(0);
  v6[32] = v9;
  v10 = *(v9 - 8);
  v6[33] = v10;
  v6[34] = *(v10 + 64);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v11 = sub_1E65D99E8();
  v6[37] = v11;
  v6[38] = *(v11 - 8);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v6[43] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v6[44] = v12;
  v6[45] = *(v12 - 8);
  v6[46] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v6[47] = v13;
  v6[48] = *(v13 - 8);
  v6[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61E328C, 0, 0);
}

uint64_t sub_1E61E328C()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[50] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_1E61E3388;
  v4 = v0[49];

  return v6(v4);
}

uint64_t sub_1E61E3388()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61E34A0, 0, 0);
}

uint64_t sub_1E61E34A0()
{
  sub_1E65E60F8();
  v1 = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_legacyEngagementCoordinator;
  v0[52] = OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router;
  v0[53] = v1;
  v2 = swift_task_alloc();
  v0[54] = v2;
  *v2 = v0;
  v2[1] = sub_1E61E356C;
  v3 = v0[43];
  v4 = v0[44];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v4);
}

uint64_t sub_1E61E356C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61E3668, 0, 0);
}

uint64_t sub_1E61E3668()
{
  v1 = v0[43];
  if ((*(v0[38] + 48))(v1, 1, v0[37]) == 1)
  {
    v3 = v0[48];
    v2 = v0[49];
    v4 = v0[47];
    (*(v0[45] + 8))(v0[46], v0[44]);
    (*(v3 + 8))(v2, v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[41];
    v8 = v0[42];
    v9 = v0[15];
    sub_1E61E5898(v1, v8, MEMORY[0x1E69CC610]);
    sub_1E61E5830(v8, v7, MEMORY[0x1E69CC610]);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072890, &qword_1E65EBF00);
    v0[55] = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v0[56] = v12;
    v0[57] = (v11 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    LODWORD(v7) = v12(v7, 1, v10);
    v13 = *__swift_project_boxed_opaque_existential_1(v9, v9[3]);
    if (v7 == 1)
    {
      if (qword_1EE2D7790 != -1)
      {
        swift_once();
      }

      v14 = sub_1E65E3B68();
      __swift_project_value_buffer(v14, qword_1EE2EA2A0);
      sub_1E65E3B28();
      v15 = v13 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler;
      v0[58] = *(v13 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler);
      v16 = *(v15 + 8);
      v0[59] = v16;
      v0[60] = swift_getObjectType();
      v0[61] = *(v16 + 16);
      v0[62] = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0x4EB3000000000000;
      v17 = sub_1E65E5FC8();
      v19 = v18;
      v20 = sub_1E61E3BE8;
    }

    else
    {
      v21 = v0[42];
      v22 = v0[39];
      v0[70] = *(v13 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
      sub_1E61E5830(v21, v22, MEMORY[0x1E69CC610]);
      if (v12(v22, 1, v10) == 1)
      {
        swift_beginAccess();
        v24 = qword_1ED075948;
        v23 = qword_1ED075950;

        sub_1E5E05374(v24, v23);
      }

      else
      {
        v25 = v0[24];
        v27 = v0[22];
        v26 = v0[23];
        v28 = v0[21];
        (*(v0[26] + 32))(v0[27], v0[39] + *(v10 + 48), v0[25]);

        sub_1E65D9F98();
        sub_1E65DA288();
        sub_1E61E57D8();
        v29 = sub_1E65E6718();
        v30 = *(v27 + 8);
        v30(v26, v28);
        v30(v25, v28);
        if (v29)
        {
          swift_beginAccess();
          v24 = qword_1ED075948;
          v23 = qword_1ED075950;
          sub_1E5E05374(qword_1ED075948, qword_1ED075950);
        }

        else
        {
          v24 = 0;
          v23 = 0;
        }

        v31 = v0[39];
        (*(v0[26] + 8))(v0[27], v0[25]);
        v32 = sub_1E65D8DE8();
        (*(*(v32 - 8) + 8))(v31, v32);
      }

      v33 = v0[30];
      *v33 = v24;
      v33[1] = v23;
      swift_storeEnumTagMultiPayload();
      sub_1E65E6058();
      v0[71] = sub_1E65E6048();
      v17 = sub_1E65E5FC8();
      v19 = v34;
      v20 = sub_1E61E4798;
    }

    return MEMORY[0x1EEE6DFA0](v20, v17, v19);
  }
}

uint64_t sub_1E61E3BE8()
{
  (*(v0 + 488))(*(v0 + 480), *(v0 + 472));

  return MEMORY[0x1EEE6DFA0](sub_1E61E3C58, 0, 0);
}

uint64_t sub_1E61E3C58()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 264);
  v4 = *(v0 + 256);
  v5 = __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v2 + *(v4 + 24)) = sub_1E5F9BCA4(&unk_1F5FA8690);
  v6 = *(*v5 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 576) = 0;
  v8 = swift_allocObject();
  *(v0 + 504) = v8;
  swift_weakInit();
  sub_1E61E5830(v2, v1, type metadata accessor for RouteDestination);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v0 + 512) = v10;
  *(v10 + 16) = v8;
  sub_1E61E5898(v1, v10 + v9, type metadata accessor for RouteDestination);

  v11 = swift_task_alloc();
  *(v0 + 520) = v11;
  *v11 = v0;
  v11[1] = sub_1E61E3E5C;

  return sub_1E61261B8((v0 + 576), &unk_1E65F6EF8, v10, ObjectType, v6);
}

uint64_t sub_1E61E3E5C()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1E61E4468;
  }

  else
  {

    v2 = sub_1E61E3F88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61E3F88()
{
  v1 = v0[15];
  sub_1E61E59D8(v0[36], type metadata accessor for RouteDestination);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = off_1F5FBE888;
  v3 = type metadata accessor for AppRouter(0);
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[67] = v4;
  *v4 = v0;
  v4[1] = sub_1E61E40EC;

  return (v6)(1, v3, &off_1F5FBE858);
}

uint64_t sub_1E61E40EC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61E41E8, 0, 0);
}

uint64_t sub_1E61E41E8()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 440);
  v3 = *(v0 + 336);
  v4 = *(v0 + 320);
  *(v0 + 544) = *(*__swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24)) + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
  sub_1E61E5830(v3, v4, MEMORY[0x1E69CC610]);
  if (v1(v4, 1, v2) == 1)
  {
    swift_beginAccess();
    v6 = qword_1ED075948;
    v5 = qword_1ED075950;

    sub_1E5E05374(v6, v5);
  }

  else
  {
    v8 = *(v0 + 184);
    v7 = *(v0 + 192);
    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    (*(*(v0 + 208) + 32))(*(v0 + 224), *(v0 + 320) + *(*(v0 + 440) + 48), *(v0 + 200));

    sub_1E65D9F98();
    sub_1E65DA288();
    sub_1E61E57D8();
    v11 = sub_1E65E6718();
    v12 = *(v10 + 8);
    v12(v8, v9);
    v12(v7, v9);
    if (v11)
    {
      swift_beginAccess();
      v6 = qword_1ED075948;
      v5 = qword_1ED075950;
      sub_1E5E05374(qword_1ED075948, qword_1ED075950);
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }

    v13 = *(v0 + 320);
    (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
    v14 = sub_1E65D8DE8();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v15 = *(v0 + 248);
  *v15 = v6;
  v15[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  *(v0 + 552) = sub_1E65E6048();
  v17 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61E4630, v17, v16);
}

uint64_t sub_1E61E4468()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[47];
  v5 = v0[44];
  v6 = v0[45];
  v7 = v0[42];
  v8 = v0[36];

  sub_1E61E59D8(v8, type metadata accessor for RouteDestination);
  sub_1E61E59D8(v7, MEMORY[0x1E69CC610]);
  (*(v6 + 8))(v3, v5);
  (*(v1 + 8))(v2, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E61E4630()
{
  v1 = *(v0 + 248);

  sub_1E65E4EE8();

  sub_1E61E59D8(v1, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E61E46CC, 0, 0);
}

uint64_t sub_1E61E46CC()
{
  v1 = v0[42];
  sub_1E605DD88();
  sub_1E61E59D8(v1, MEMORY[0x1E69CC610]);
  v2 = swift_task_alloc();
  v0[54] = v2;
  *v2 = v0;
  v2[1] = sub_1E61E356C;
  v3 = v0[43];
  v4 = v0[44];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v4);
}

uint64_t sub_1E61E4798()
{
  v1 = *(v0 + 240);

  sub_1E65E4EE8();

  sub_1E61E59D8(v1, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E61E4834, 0, 0);
}

uint64_t sub_1E61E4834()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = (v0[16] + v0[52]);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  swift_getKeyPath();

  sub_1E65E4EC8();

  sub_1E61E5898(v2, v1, type metadata accessor for BrowsingIdentity);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v4 - 8) + 48))(v1, 1, v4) == 1 || (v5 = v0[21], v6 = v0[22], v8 = v0[18], v7 = v0[19], v9 = *(v4 + 48), sub_1E61E5898(v7, v8, type metadata accessor for RemoteParticipantScope), EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(), sub_1E61E59D8(v8, type metadata accessor for RemoteParticipantScope), (*(v6 + 8))(v7 + v9, v5), EnumCaseMultiPayload != 1))
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v11 = (v0[16] + v0[53]);
    v12 = sub_1E65E3B68();
    __swift_project_value_buffer(v12, qword_1EE2EA2A0);
    sub_1E65E3B38();
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1E65E5998();
  }

  v13 = v0[41];
  v14 = v0[25];
  v15 = v0[26];
  v16 = *(v0[55] + 48);
  sub_1E61E59D8(v0[42], MEMORY[0x1E69CC610]);
  (*(v15 + 8))(v13 + v16, v14);
  v17 = sub_1E65D8DE8();
  (*(*(v17 - 8) + 8))(v13, v17);
  v18 = swift_task_alloc();
  v0[54] = v18;
  *v18 = v0;
  v18[1] = sub_1E61E356C;
  v19 = v0[43];
  v20 = v0[44];

  return MEMORY[0x1EEE6D9C8](v19, 0, 0, v20);
}

uint64_t sub_1E61E4B64(uint64_t a1)
{
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = (Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E61E2EB8(a1, v7, v8, v1 + v5, v1 + v6, v9);
}

uint64_t sub_1E61E4C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768C0, &qword_1E65F6EB8);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768C8, &qword_1E65F6EC0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768D0, &qword_1E65F6EC8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61E4E04, 0, 0);
}

uint64_t sub_1E61E4E04()
{
  v1 = ServiceSubscriptionService.makeServiceSubscriptionPurchasedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E61E4F00;
  v4 = v0[10];

  return v6(v4);
}

uint64_t sub_1E61E4F00()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61E5018, 0, 0);
}

uint64_t sub_1E61E5018()
{
  sub_1E65E60F8();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E61E50C8;
  v2 = v0[4];
  v3 = v0[5];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_1E61E50C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E61E51C4, 0, 0);
}

uint64_t sub_1E61E51C4()
{
  v1 = v0[4];
  v2 = sub_1E65DB868();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = v0[8];
    (*(v0[6] + 8))(v0[7], v0[5]);
    (*(v4 + 8))(v3, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = RemoteBrowsingService.invalidateRemoteBrowsingEnvironment.getter();
    v0[14] = v9;
    v11 = (v8 + *v8);
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_1E61E5398;

    return v11();
  }
}

uint64_t sub_1E61E5398()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1E61E5560;
  }

  else
  {
    v2 = sub_1E61E54AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61E54AC()
{

  sub_1E61E5770(v0[4]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E61E50C8;
  v2 = v0[4];
  v3 = v0[5];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_1E61E5560()
{
  v1 = v0[16];

  sub_1E61E5770(v0[4]);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E61E50C8;
  v3 = v0[4];
  v4 = v0[5];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v4);
}

uint64_t sub_1E61E5620(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ServiceSubscriptionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v9 = (v6 + v7 + v8[80]) & ~v8[80];
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFA78C;

  return sub_1E61E4C98(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E61E5770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768C0, &qword_1E65F6EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E61E57D8()
{
  result = qword_1ED071E28;
  if (!qword_1ED071E28)
  {
    sub_1E65DA2A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED071E28);
  }

  return result;
}

uint64_t sub_1E61E5830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61E5898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61E5900()
{
  v2 = *(type metadata accessor for RouteDestination(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E6337758(v4, v0 + v3);
}

uint64_t sub_1E61E59D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61E5A38(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1E65D7848();
  v7 = *(v6 - 8);
  v8 = *(a3 + 24);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 84);
  v11 = v9;
  v12 = *(v9 + 84);
  if (v12 <= v10)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = *(v8 - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v14 + 80);
  if (v15 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  if (v19 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(*(v6 - 8) + 64) + v16;
  v21 = *(*(v8 - 8) + 64) + 7;
  if (v19 < a2)
  {
    v22 = ((v21 + ((v17 + v18 + (v20 & ~v16)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v23 = v22 & 0xFFFFFFF8;
    if ((v22 & 0xFFFFFFF8) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = a2 - v19 + 1;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *(a1 + v22);
        if (!v27)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v27 = *(a1 + v22);
        if (!v27)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (!v26)
      {
        goto LABEL_32;
      }

      v27 = *(a1 + v22);
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    v29 = v27 - 1;
    if (v23)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    v37 = v19 + (v30 | v29);
    return (v37 + 1);
  }

LABEL_32:
  if (v10 == v19)
  {
    v31 = *(v7 + 48);

    return v31(a1, v10, v6);
  }

  v32 = (a1 + v20) & ~v16;
  if (v12 == v19)
  {
    v33 = *(v11 + 48);

    return v33(v32);
  }

  v34 = (v32 + v17 + v18) & ~v18;
  if (v15 != v19)
  {
    v36 = *(((v21 + v34) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v36 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    v37 = v36 - 1;
    if (v37 < 0)
    {
      v37 = -1;
    }

    return (v37 + 1);
  }

  v35 = *(v14 + 48);

  return v35(v34, v15, v8);
}

void sub_1E61E5D20(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1E65D7848() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v11 - 8);
  if (v14 <= v10)
  {
    v16 = *(v8 + 84);
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = *(v11 - 8);
  v18 = *(v15 + 84);
  v19 = *(v8 + 64);
  v20 = *(v12 + 80);
  v21 = *(v12 + 64);
  v22 = *(v15 + 80);
  v23 = *(v15 + 64);
  if (v18 <= v16)
  {
    v24 = v16;
  }

  else
  {
    v24 = *(v15 + 84);
  }

  if (v24 <= 0x7FFFFFFE)
  {
    v24 = 2147483646;
  }

  v25 = v19 + v20;
  v26 = v23 + 7;
  v27 = ((v26 + ((v21 + v22 + ((v19 + v20) & ~v20)) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v27)
  {
    v28 = 2;
  }

  else
  {
    v28 = a3 - v24 + 1;
  }

  if (v28 >= 0x10000)
  {
    v29 = 4;
  }

  else
  {
    v29 = 2;
  }

  if (v28 < 0x100)
  {
    v29 = 1;
  }

  if (v28 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v24 < a3)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (a2 > v24)
  {
    if (v27)
    {
      v32 = 1;
    }

    else
    {
      v32 = a2 - v24;
    }

    if (v27)
    {
      v33 = ~v24 + a2;
      bzero(a1, v27);
      *a1 = v33;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        *(a1 + v27) = v32;
      }

      else
      {
        *(a1 + v27) = v32;
      }
    }

    else if (v31)
    {
      *(a1 + v27) = v32;
    }

    return;
  }

  if (v31 > 1)
  {
    if (v31 != 2)
    {
      *(a1 + v27) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    *(a1 + v27) = 0;
  }

  else if (v31)
  {
    *(a1 + v27) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v10 == v24)
  {
    v34 = *(v9 + 56);

    v34(a1, a2);
  }

  else
  {
    v35 = (a1 + v25) & ~v20;
    if (v14 == v24)
    {
      v36 = *(v13 + 56);

      v36(v35, a2, v14);
    }

    else
    {
      v37 = (v35 + v21 + v22) & ~v22;
      if (v18 == v24)
      {
        v38 = *(v17 + 56);

        v38(v37, a2, v18, v11);
      }

      else
      {
        v39 = ((v26 + v37) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v39 = (a2 - 0x7FFFFFFF);
          v39[1] = 0;
        }

        else
        {
          v39[1] = a2;
        }
      }
    }
  }
}

uint64_t sub_1E61E6058(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
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

  return v15 + (v24 | v22) + 1;
}

char *sub_1E61E6310(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_1E61E66C8@<X0>(char *a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a2;
  v88 = a1;
  v101 = a4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768D8, &qword_1E65F7088);
  v86 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v85 = &v79 - v5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768E0, &qword_1E65F7090);
  MEMORY[0x1EEE9AC00](v98);
  v7 = &v79 - v6;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768E8, &qword_1E65F7098);
  v84 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v83 = &v79 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768F0, &qword_1E65F70A0);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v79 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768F8, &unk_1E65F70A8);
  MEMORY[0x1EEE9AC00](v93);
  v11 = &v79 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  MEMORY[0x1EEE9AC00](v80);
  v87 = &v79 - v12;
  v13 = type metadata accessor for ContextMenu.Context(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076900, &qword_1E65F70B8);
  v82 = *(v94 - 1);
  MEMORY[0x1EEE9AC00](v94);
  v81 = &v79 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v79 - v17;
  v18 = *(a3 + 2);
  v19 = *(a3 + 5);
  v20 = *(a3 + 8);
  v21 = *(a3 + 9);
  v22 = swift_allocObject();
  v23 = *(a3 + 24);
  v24 = a3[3];
  v22[3] = a3[2];
  v22[4] = v24;
  v22[5] = a3[4];
  v26 = *a3;
  v25 = a3[1];
  v22[1] = *a3;
  v22[2] = v25;
  v105 = v26;
  v112 = v26;
  v113 = v18;
  v27 = v102;
  v103 = v23;
  v114 = v23;
  v106 = v19;
  v115 = v19;
  v116 = &unk_1E65F70D0;
  v117 = v22;
  v118 = v20;
  v104 = v21;
  v119 = v21;
  if (v27[*(type metadata accessor for AppComposer(0) + 20) + 8] > 1u)
  {
    swift_getKeyPath();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_1E65E4EC8();

    v54 = v98;
    v55 = v88;
    v56 = v89;
    sub_1E61E96AC(v88, v89, &v112, &v7[*(v98 + 13)]);
    v87 = *(v54 + 14);
    v57 = v90;
    sub_1E61EAD64(v55, v56, &v112, v90);
    v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076908, &unk_1E65F7100);
    v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073998, &qword_1E65EDD08);
    v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077CF0, &unk_1E65F7110);
    v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739A0, &qword_1E65EDD10);
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739A8, &qword_1E65F7120);
    v60 = sub_1E65DED98();
    v61 = sub_1E61F2AA4(&qword_1EE2D6818, MEMORY[0x1E699CDB0], MEMORY[0x1E699CDA8]);
    v108 = v60;
    v109 = v61;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v63 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120, MEMORY[0x1E699CDD8]);
    v108 = v58;
    v109 = v59;
    v110 = OpaqueTypeConformance2;
    v111 = v63;
    v64 = swift_getOpaqueTypeConformance2();
    v65 = sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110, MEMORY[0x1E699CB30]);
    v108 = v89;
    v109 = v88;
    v110 = v64;
    v111 = v65;
    v66 = swift_getOpaqueTypeConformance2();
    v108 = v102;
    v109 = v66;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = v92;
    MEMORY[0x1E69482C0](v57, v92, v67);
    (*(v91 + 8))(v57, v68);
    v69 = &v7[*(v54 + 15)];
    v107 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076910, &qword_1E65F7128);
    sub_1E65E4A68();
    v70 = v109;
    *v69 = v108;
    *(v69 + 1) = v70;
    v71 = sub_1E5FED46C(qword_1EE2D8848, &qword_1ED0768E0, &qword_1E65F7090, &unk_1E65F7038);
    v72 = v85;
    MEMORY[0x1E69482C0](v7, v54, v71);
    v73 = sub_1E5FED46C(qword_1EE2D7DD0, &qword_1ED0768F8, &unk_1E65F70A8, &unk_1E65F6F80);
    v108 = v93;
    v109 = v73;
    v74 = swift_getOpaqueTypeConformance2();
    v108 = v94;
    v109 = v74;
    swift_getOpaqueTypeConformance2();
    v108 = v54;
    v109 = v71;
    swift_getOpaqueTypeConformance2();
    v52 = v95;
    v75 = v100;
    sub_1E65E0888();
    (*(v86 + 8))(v72, v75);
    sub_1E5DFE50C(v7, &qword_1ED0768E0, &qword_1E65F7090);
  }

  else
  {
    v28 = type metadata accessor for ContextMenu(0);
    v29 = v88;
    sub_1E61EFA38(&v88[*(v28 + 20)], v15, type metadata accessor for ContextMenu.Context);
    sub_1E5FAB460(v15, v87, &qword_1ED073B60, &unk_1E65EE020);
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    v30 = v89;
    sub_1E61E96AC(v29, v89, &v112, v11);
    v31 = v93;
    v86 = *(v93 + 17);
    v32 = v90;
    sub_1E61EAD64(v29, v30, &v112, v90);
    v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076908, &unk_1E65F7100);
    v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073998, &qword_1E65EDD08);
    v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077CF0, &unk_1E65F7110);
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739A0, &qword_1E65EDD10);
    v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739A8, &qword_1E65F7120);
    v35 = sub_1E65DED98();
    v36 = sub_1E61F2AA4(&qword_1EE2D6818, MEMORY[0x1E699CDB0], MEMORY[0x1E699CDA8]);
    v108 = v35;
    v109 = v36;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120, MEMORY[0x1E699CDD8]);
    v108 = v33;
    v109 = v34;
    v110 = v37;
    v111 = v38;
    v39 = swift_getOpaqueTypeConformance2();
    v40 = sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110, MEMORY[0x1E699CB30]);
    v108 = v88;
    v109 = v85;
    v110 = v39;
    v111 = v40;
    v41 = swift_getOpaqueTypeConformance2();
    v108 = v89;
    v109 = v41;
    v42 = swift_getOpaqueTypeConformance2();
    v43 = v92;
    MEMORY[0x1E69482C0](v32, v92, v42);
    (*(v91 + 8))(v32, v43);
    v44 = *(v31 + 18);
    v45 = v87;
    sub_1E65DE488();
    sub_1E6435E84(v108, v109, &v11[v44]);

    v46 = sub_1E5FED46C(qword_1EE2D7DD0, &qword_1ED0768F8, &unk_1E65F70A8, &unk_1E65F6F80);
    v47 = v81;
    MEMORY[0x1E69482C0](v11, v31, v46);
    sub_1E5DFE50C(v11, &qword_1ED0768F8, &unk_1E65F70A8);
    sub_1E5DFE50C(v45, &qword_1ED073B60, &unk_1E65EE020);
    v108 = v31;
    v109 = v46;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = v83;
    v50 = v94;
    MEMORY[0x1E69482C0](v47, v94, v48);
    v108 = v50;
    v109 = v48;
    swift_getOpaqueTypeConformance2();
    v51 = sub_1E5FED46C(qword_1EE2D8848, &qword_1ED0768E0, &qword_1E65F7090, &unk_1E65F7038);
    v108 = v98;
    v109 = v51;
    swift_getOpaqueTypeConformance2();
    v52 = v95;
    v53 = v99;
    sub_1E65E0878();
    (*(v84 + 8))(v49, v53);
    (*(v82 + 8))(v47, v50);
  }

  v76 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v77 = v97;
  MEMORY[0x1E69482C0](v52, v97, v76);

  swift_unknownObjectRelease();
  return (*(v96 + 8))(v52, v77);
}

uint64_t sub_1E61E75EC(uint64_t a1)
{
  sub_1E65E6D28();
  sub_1E6142EA4(v3, *v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E61E7638@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v26 = a3;
  v4 = a2 + 5;
  v5 = a2[3];
  sub_1E65E3DE8();
  swift_getWitnessTable();
  v6 = sub_1E65E41A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076978, &unk_1E65F7320);
  v7 = a2[2];
  v8 = sub_1E65E4148();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1E61F6934();
  v11 = a2[4];
  v35 = v10;
  v36 = v11;
  v31 = v6;
  v32 = v8;
  v33 = WitnessTable;
  v34 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E65E4BF8();
  swift_getWitnessTable();
  v12 = sub_1E65E4AC8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  *&v19 = v11;
  *(&v19 + 1) = *v4;
  *&v20 = v7;
  *(&v20 + 1) = v5;
  v27 = v20;
  v28 = v19;
  v29 = v25;
  v30 = v24;
  sub_1E65E4BA8();
  sub_1E65E4AB8();
  swift_getWitnessTable();
  sub_1E5FEE4C8();
  v21 = *(v13 + 8);
  v21(v16, v12);
  sub_1E5FEE4C8();
  return (v21)(v18, v12);
}

uint64_t sub_1E61E7920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a6;
  v57 = a2;
  v58 = a7;
  v67 = a3;
  v68 = a4;
  v56 = a3;
  v69 = a5;
  v70 = a6;
  v50 = a5;
  type metadata accessor for ContextMenuViewModifier(255, &v67);
  swift_getWitnessTable();
  v10 = sub_1E65E41A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076978, &unk_1E65F7320);
  v11 = sub_1E65E4148();
  v47 = v10;
  WitnessTable = swift_getWitnessTable();
  v66[4] = sub_1E61F6934();
  v66[5] = a5;
  v49 = v11;
  v51 = swift_getWitnessTable();
  v67 = v10;
  v68 = v11;
  v69 = WitnessTable;
  v70 = v51;
  v53 = MEMORY[0x1E697CDD8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v41 - v15;
  v16 = a4;
  v17 = sub_1E65E3DE8();
  v42 = *(v17 - 8);
  v18 = v42;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - v22;
  v67 = sub_1E65E4998();
  v24 = swift_checkMetadataState();
  v25 = MEMORY[0x1E6981580];
  MEMORY[0x1E694C310](a1 + *(v24 + 56), MEMORY[0x1E69815C0], v16, MEMORY[0x1E6981580]);

  v26 = v54;
  v66[2] = v25;
  v66[3] = v54;
  v41 = v17;
  v44 = swift_getWitnessTable();
  sub_1E5FEE4C8();
  v45 = *(v18 + 8);
  v46 = v18 + 8;
  v45(v21, v17);
  v59 = v56;
  v60 = v16;
  v61 = v50;
  v62 = v26;
  v63 = a1;
  v27 = swift_checkMetadataState();
  v28 = swift_checkMetadataState();
  v29 = WitnessTable;
  v30 = v51;
  sub_1E65E4818();
  v67 = v27;
  v68 = v28;
  v69 = v29;
  v70 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v48;
  v33 = OpaqueTypeMetadata2;
  sub_1E5FEE4C8();
  v34 = v55;
  v35 = *(v55 + 8);
  v35(v14, v33);
  v36 = v23;
  v37 = v23;
  v38 = v41;
  (*(v42 + 16))(v21, v37, v41);
  v67 = v21;
  (*(v34 + 16))(v14, v32, v33);
  v68 = v14;
  v66[0] = v38;
  v66[1] = v33;
  v64 = v44;
  v65 = OpaqueTypeConformance2;
  sub_1E61C9298(&v67, 2uLL, v66);
  v35(v32, v33);
  v39 = v45;
  v45(v36, v38);
  v35(v14, v33);
  return v39(v21, v38);
}

uint64_t sub_1E61E7E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a6;
  v51 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v49 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v48 = v47 - v13;
  v60 = v14;
  v61 = v15;
  v62 = v16;
  v63 = v17;
  v18 = type metadata accessor for ContextMenuViewModifier(0, &v60);
  v50 = *(v18 - 8);
  v47[1] = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076978, &unk_1E65F7320);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v47 - v22;
  v52 = v24;
  v25 = sub_1E65E4148();
  v54 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v53 = v47 - v26;
  v27 = a1;
  v28 = (a1 + *(v18 + 60));
  v29 = *v28;
  v30 = *(v28 + 1);
  v58 = v29;
  v59 = v30;
  v60 = a2;
  v31 = a3;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  type metadata accessor for ContextMenuViewModifier.LoadState(255, &v60);
  sub_1E65E4A98();
  v32 = sub_1E65E4A78();
  if (v60)
  {
    v33 = v48;
    sub_1E5FEE4C8();
    v34 = v49;
    sub_1E5FEE4C8();
    v35 = sub_1E61F6934();
    v36 = v53;
    sub_1E62DFB74(v34, v52, a2, v35, a4);
    v37 = *(v51 + 8);
    v37(v34, a2);
    v37(v33, a2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v32);
    v47[-6] = a2;
    v47[-5] = a3;
    v47[-4] = a4;
    v47[-3] = a5;
    v51 = v25;
    v38 = a5;
    v39 = v27;
    v47[-2] = v27;
    sub_1E65E4AA8();
    v40 = v50;
    (*(v50 + 16))(v20, v39, v18);
    v41 = (*(v40 + 80) + 48) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 2) = a2;
    *(v42 + 3) = v31;
    *(v42 + 4) = a4;
    *(v42 + 5) = v38;
    v25 = v51;
    (*(v40 + 32))(&v42[v41], v20, v18);
    v43 = v52;
    v44 = &v23[*(v52 + 36)];
    *v44 = sub_1E61F6A1C;
    v44[1] = v42;
    v45 = sub_1E61F6934();
    v44[2] = 0;
    v44[3] = 0;
    v36 = v53;
    sub_1E62DFC6C(v23, v43, a2, v45, a4);
    sub_1E5DFE50C(v23, &qword_1ED076978, &unk_1E65F7320);
  }

  v56 = sub_1E61F6934();
  v57 = a4;
  swift_getWitnessTable();
  sub_1E5FEE4C8();
  return (*(v54 + 8))(v36, v25);
}

uint64_t sub_1E61E835C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  (*(v5 + 16))(v7, a1, v4);
  result = sub_1E65E5D48();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1E61E850C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  type metadata accessor for ContextMenuViewModifier(0, &v10);
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  type metadata accessor for ContextMenuViewModifier.LoadState(255, &v10);
  sub_1E65E4A98();
  return sub_1E65E4A88();
}

uint64_t sub_1E61E85BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v26 = a3;
  v23 = a2[3];
  sub_1E65E3DE8();
  swift_getWitnessTable();
  v4 = sub_1E65E41A8();
  v5 = a2[2];
  v22 = a2[4];
  v6 = sub_1E65E3DE8();
  WitnessTable = swift_getWitnessTable();
  v8 = a2[5];
  v39 = a2[7];
  v9 = v39;
  v40 = MEMORY[0x1E697E5D8];
  v33 = v4;
  v34 = v5;
  v35 = v6;
  v36 = WitnessTable;
  v37 = v8;
  v38 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1E65E4BF8();
  swift_getWitnessTable();
  v10 = sub_1E65E4AC8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  sub_1E65E4B88();
  *&v17 = v5;
  *(&v17 + 1) = v23;
  *&v18 = v22;
  *(&v18 + 1) = v8;
  v27 = v17;
  v28 = v18;
  v29 = a2[6];
  v30 = v9;
  v31 = v25;
  v32 = v24;
  sub_1E65E4AB8();
  swift_getWitnessTable();
  sub_1E5FEE4C8();
  v19 = *(v11 + 8);
  v19(v14, v10);
  sub_1E5FEE4C8();
  return (v19)(v16, v10);
}

uint64_t sub_1E61E88CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v59 = a5;
  v60 = a7;
  v65 = a2;
  v66 = a9;
  v58 = a1;
  v85 = a3;
  v86 = a4;
  v50 = a3;
  v51 = a6;
  v87 = a5;
  v88 = a6;
  v89 = a7;
  v90 = a8;
  v55 = a8;
  type metadata accessor for ContextMenuPreviewViewModifier(255, &v85);
  swift_getWitnessTable();
  v53 = sub_1E65E41A8();
  v54 = sub_1E65E3DE8();
  WitnessTable = swift_getWitnessTable();
  v84[4] = a8;
  v84[5] = MEMORY[0x1E697E5D8];
  v49 = MEMORY[0x1E697E858];
  v56 = swift_getWitnessTable();
  v85 = v53;
  v86 = a3;
  v87 = v54;
  v88 = WitnessTable;
  v89 = a6;
  v90 = v56;
  v62 = MEMORY[0x1E697CDD0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  v64 = OpaqueTypeMetadata2;
  v14 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v52 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v44 - v16;
  v17 = sub_1E65E3DE8();
  v46 = *(v17 - 8);
  v18 = v46;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v44 - v22;
  v85 = sub_1E65E4998();
  v23 = swift_checkMetadataState();
  v24 = MEMORY[0x1E6981580];
  v25 = v58;
  MEMORY[0x1E694C310](v58 + *(v23 + 68), MEMORY[0x1E69815C0], a4, MEMORY[0x1E6981580]);

  v26 = v60;
  v84[2] = v24;
  v84[3] = v60;
  v47 = swift_getWitnessTable();
  v45 = v21;
  sub_1E5FEE4C8();
  v27 = *(v18 + 8);
  v48 = v18 + 8;
  v49 = v27;
  v27(v21, v17);
  v75 = v50;
  v76 = a4;
  v77 = v59;
  v78 = v51;
  v79 = v26;
  v80 = v55;
  v28 = v25;
  v81 = v25;
  v68 = v50;
  v69 = a4;
  v29 = v50;
  v70 = v59;
  v71 = v51;
  v30 = v51;
  v72 = v26;
  v73 = v55;
  v74 = v28;
  v31 = swift_checkMetadataState();
  v32 = swift_checkMetadataState();
  v33 = v56;
  v34 = v52;
  v35 = WitnessTable;
  sub_1E65E4808();
  v85 = v31;
  v86 = v29;
  v87 = v32;
  v88 = v35;
  v89 = v30;
  v90 = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v57;
  v38 = v64;
  sub_1E5FEE4C8();
  v39 = v63;
  v40 = *(v63 + 8);
  v40(v34, v38);
  v41 = v45;
  (*(v46 + 16))(v45, v67, v17);
  v85 = v41;
  (*(v39 + 16))(v34, v37, v38);
  v86 = v34;
  v84[0] = v17;
  v84[1] = v38;
  v82 = v47;
  v83 = OpaqueTypeConformance2;
  sub_1E61C9298(&v85, 2uLL, v84);
  v40(v37, v38);
  v42 = v49;
  v49(v67, v17);
  v40(v34, v38);
  return v42(v41, v17);
}

uint64_t sub_1E61E8DE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5FEE4C8();
  sub_1E5FEE4C8();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_1E61E8EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23[0] = a1;
  v23[1] = a8;
  v14 = sub_1E65E3DE8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v23 - v19;
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  type metadata accessor for ContextMenuPreviewViewModifier(0, v24);
  sub_1E65E48E8();
  v23[2] = a7;
  v23[3] = MEMORY[0x1E697E5D8];
  swift_getWitnessTable();
  sub_1E5FEE4C8();
  v21 = *(v15 + 8);
  v21(v18, v14);
  sub_1E5FEE4C8();
  return (v21)(v20, v14);
}

uint64_t sub_1E61E90E4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for PageMetricsClick(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61E9178, 0, 0);
}

uint64_t sub_1E61E9178()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v35 = *(v0[3] + 48);
  v4 = *MEMORY[0x1E69CC8F8];
  v5 = sub_1E65D9D78();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v2, v4, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = v1[5];
  v8 = sub_1E65D8C68();
  (*(*(v8 - 8) + 16))(v2 + v7, v3 + v7, v8);
  sub_1E5DFD1CC(v3 + v1[6], v2 + v1[6], &qword_1ED072340, &qword_1E65EA410);
  v33 = *(v3 + v1[7]);
  sub_1E5DFD1CC(v3 + v1[8], v2 + v1[8], &qword_1ED073570, &unk_1E65F4570);
  v9 = (v3 + v1[9]);
  v10 = *v9;
  v11 = v9[1];
  v12 = (v3 + v1[10]);
  v13 = v12[1];
  v31 = v10;
  v32 = *v12;
  v14 = *(v3 + v1[11]);
  v15 = (v3 + v1[12]);
  v16 = *v15;
  v17 = v15[1];
  v18 = v1[14];
  v19 = (v3 + v1[13]);
  v20 = v19[1];
  v29 = *v19;
  v30 = v16;
  v21 = sub_1E65D8F28();
  (*(*(v21 - 8) + 16))(v2 + v18, v3 + v18, v21);
  sub_1E5DFD1CC(v3 + v1[15], v2 + v1[15], &qword_1ED072330, &qword_1E65EAB70);
  *(v2 + v1[7]) = v33;
  v22 = (v2 + v1[9]);
  *v22 = v31;
  v22[1] = v11;
  v23 = (v2 + v1[10]);
  *v23 = v32;
  v23[1] = v13;
  *(v2 + v1[11]) = v14;
  v24 = (v2 + v1[12]);
  *v24 = v30;
  v24[1] = v17;
  v25 = (v2 + v1[13]);
  *v25 = v29;
  v25[1] = v20;

  v34 = (v35 + *v35);
  v26 = swift_task_alloc();
  v0[6] = v26;
  *v26 = v0;
  v26[1] = sub_1E61E94B0;
  v27 = v0[5];

  return v34(v27);
}

uint64_t sub_1E61E94B0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 56) = v0;

  sub_1E5FC0990(v2);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FCC4D4, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E61E9614(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E61E90E4(a1, v1 + 16);
}

uint64_t sub_1E61E96AC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v139 = a3;
  v138 = a2;
  v149 = a4;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076918, &qword_1E65F71F8);
  MEMORY[0x1EEE9AC00](v145);
  v126 = &v123 - v5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076920, &unk_1E65F7200);
  v151 = *(v135 - 8);
  v6 = MEMORY[0x1EEE9AC00](v135);
  v125 = (&v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v134 = &v123 - v8;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073900, &qword_1E65EDC98);
  v150 = *(v156 - 8);
  v9 = MEMORY[0x1EEE9AC00](v156);
  v124 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v123 - v11;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076928, &qword_1E65F7210);
  MEMORY[0x1EEE9AC00](v147);
  v148 = &v123 - v13;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076930, &qword_1E65F7218);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v123 - v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076938, &qword_1E65F7220);
  MEMORY[0x1EEE9AC00](v146);
  v143 = &v123 - v15;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076940, &qword_1E65F7228);
  MEMORY[0x1EEE9AC00](v144);
  v136 = &v123 - v16;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076948, &unk_1E65F7230);
  v167 = *(v155 - 8);
  v17 = MEMORY[0x1EEE9AC00](v155);
  v133 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v154 = &v123 - v19;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F8, &qword_1E65EDC90);
  v166 = *(v164 - 1);
  v20 = MEMORY[0x1EEE9AC00](v164);
  v132 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v153 = &v123 - v22;
  v23 = type metadata accessor for AppComposer(0);
  v24 = v23 - 8;
  v130 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v129 = v25;
  v131 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076950, &unk_1E65F7240);
  v152 = *(v163 - 8);
  v26 = MEMORY[0x1EEE9AC00](v163);
  v161 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v162 = &v123 - v28;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073908, &qword_1E65EDCA0);
  v168 = *(v165 - 8);
  v29 = MEMORY[0x1EEE9AC00](v165);
  v31 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v123 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076958, &unk_1E65F7250);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v141 = &v123 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v127 = *(v36 - 8);
  v37 = *(v127 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v128 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v123 - v39;
  v41 = type metadata accessor for ContextMenu.Context(0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v123 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ContextMenu(0);
  sub_1E61EFA38(&a1[*(v44 + 20)], v43, type metadata accessor for ContextMenu.Context);
  v45 = sub_1E5FAB460(v43, v40, &qword_1ED073B60, &unk_1E65EE020);
  v46 = v158[*(v24 + 28) + 8];
  v159 = v31;
  v160 = v33;
  v157 = v40;
  v137 = a1;
  if (v46 < 2)
  {
    v151 = &v123;
    MEMORY[0x1EEE9AC00](v45);
    *(&v123 - 6) = v47;
    *(&v123 - 5) = v40;
    v48 = v138;
    *(&v123 - 4) = a1;
    *(&v123 - 3) = v48;
    v49 = v139;
    v121 = v139;
    v50 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073910, &qword_1E65EDCA8);
    sub_1E5FED46C(&qword_1EE2D6858, &qword_1ED073910, &qword_1E65EDCA8, MEMORY[0x1E699CCC8]);
    sub_1E65E4AF8();
    v125 = type metadata accessor for AppComposer;
    v51 = v131;
    sub_1E61EFA38(v50, v131, type metadata accessor for AppComposer);
    v52 = v40;
    v53 = v128;
    sub_1E5DFD1CC(v52, v128, &qword_1ED073B60, &unk_1E65EE020);
    v126 = *v49;
    v134 = v49[3];
    v135 = v49[5];
    v150 = v49[7];
    v151 = v49[9];
    sub_1E5DF650C(v48, &v169);
    v54 = *(v130 + 80);
    v55 = (v54 + 16) & ~v54;
    v56 = v55 + v129;
    v138 = v54 | 7;
    v57 = (v55 + v129 + *(v127 + 80)) & ~*(v127 + 80);
    v58 = (v37 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    sub_1E5E1E320(v51, v59 + v55, type metadata accessor for AppComposer);
    sub_1E5FAB460(v53, v59 + v57, &qword_1ED073B60, &unk_1E65EE020);
    v60 = (v59 + v58);
    v61 = *(v49 + 3);
    v60[2] = *(v49 + 2);
    v60[3] = v61;
    v60[4] = *(v49 + 4);
    v62 = *(v49 + 1);
    *v60 = *v49;
    v60[1] = v62;
    sub_1E5DF599C(&v169, v59 + ((v58 + 87) & 0xFFFFFFFFFFFFFFF8));
    v63 = v158;
    sub_1E61EFA38(v158, v51, v125);
    v64 = swift_allocObject();
    sub_1E5E1E320(v51, v64 + v55, type metadata accessor for AppComposer);
    v65 = (v64 + ((v56 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v65 = &unk_1E65FA338;
    v65[1] = 0;
    v66 = sub_1E61F26B4();
    swift_unknownObjectRetain();

    v121 = v66;
    v122 = MEMORY[0x1E6981E60];
    v67 = sub_1E65DF198();
    MEMORY[0x1EEE9AC00](v67);
    v68 = v157;
    *(&v123 - 4) = v63;
    *(&v123 - 3) = v68;
    v69 = v137;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073920, &qword_1E65EDCB0);
    v156 = MEMORY[0x1E6981F48];
    sub_1E5FED46C(&qword_1EE2D4B40, &qword_1ED073920, &qword_1E65EDCB0, MEMORY[0x1E6981F48]);
    v70 = v153;
    v71 = sub_1E65E4AF8();
    MEMORY[0x1EEE9AC00](v71);
    *(&v123 - 4) = v63;
    *(&v123 - 3) = v68;
    v121 = v69;
    v122 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
    sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280, MEMORY[0x1E699CAC8]);
    v72 = v154;
    sub_1E65E4AF8();
    v73 = *(v168 + 16);
    v74 = v159;
    v73(v159, v160, v165);
    v158 = *(v152 + 16);
    (v158)(v161, v162, v163);
    v151 = *(v166 + 16);
    v75 = v132;
    (v151)(v132, v70, v164);
    v150 = *(v167 + 16);
    v76 = v133;
    v77 = v72;
    v78 = v155;
    (v150)(v133, v77, v155);
    v79 = v136;
    v80 = v74;
    v81 = v165;
    v73(v136, v80, v165);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076970, &qword_1E65F7288);
    v83 = v163;
    (v158)(v79 + v82[12], v161, v163);
    v84 = v164;
    (v151)(v79 + v82[16], v75, v164);
    (v150)(v79 + v82[20], v76, v78);
    v85 = *(v167 + 8);
    v167 += 8;
    v158 = v85;
    (v85)(v76, v78);
    v86 = *(v166 + 8);
    v166 += 8;
    v151 = v86;
    (v86)(v75, v84);
    v87 = *(v152 + 8);
    v87(v161, v83);
    v88 = *(v168 + 8);
    v168 += 8;
    v88(v159, v81);
    sub_1E5DFD1CC(v79, v140, &qword_1ED076940, &qword_1E65F7228);
    swift_storeEnumTagMultiPayload();
    v89 = v156;
    sub_1E5FED46C(&qword_1EE2D4B38, &qword_1ED076940, &qword_1E65F7228, v156);
    sub_1E5FED46C(&qword_1EE2D4B30, &qword_1ED076918, &qword_1E65F71F8, v89);
    v90 = v143;
    sub_1E65E4138();
    sub_1E5DFD1CC(v90, v148, &qword_1ED076938, &qword_1E65F7220);
    swift_storeEnumTagMultiPayload();
    sub_1E61F2440();
    v91 = v141;
    sub_1E65E4138();
    sub_1E5DFE50C(v90, &qword_1ED076938, &qword_1E65F7220);
    sub_1E5DFE50C(v79, &qword_1ED076940, &qword_1E65F7228);
    (v158)(v154, v155);
    (v151)(v153, v164);
    v87(v162, v163);
    v88(v160, v165);
    v92 = v91;
    v93 = v157;
LABEL_5:
    sub_1E5FAB460(v92, v149, &qword_1ED076958, &unk_1E65F7250);
    return sub_1E5DFE50C(v93, &qword_1ED073B60, &unk_1E65EE020);
  }

  v123 = v12;
  if (v46 == 3)
  {
    MEMORY[0x1EEE9AC00](v45);
    *(&v123 - 6) = v94;
    *(&v123 - 5) = v40;
    *(&v123 - 4) = a1;
    *(&v123 - 3) = v95;
    v97 = v96;
    v98 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073910, &qword_1E65EDCA8);
    sub_1E5FED46C(&qword_1EE2D6858, &qword_1ED073910, &qword_1E65EDCA8, MEMORY[0x1E699CCC8]);
    v99 = sub_1E65E4AF8();
    MEMORY[0x1EEE9AC00](v99);
    *(&v123 - 4) = v98;
    *(&v123 - 3) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073918, &unk_1E65F7260);
    v167 = MEMORY[0x1E6981F48];
    sub_1E5FED46C(&qword_1EE2D4B48, &qword_1ED073918, &unk_1E65F7260, MEMORY[0x1E6981F48]);
    v100 = v123;
    v101 = sub_1E65E4AF8();
    MEMORY[0x1EEE9AC00](v101);
    *(&v123 - 4) = v98;
    *(&v123 - 3) = v40;
    v121 = v137;
    v122 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073960, &qword_1E65EDCD8);
    sub_1E5FED46C(&qword_1ED076960, &qword_1ED073960, &qword_1E65EDCD8, MEMORY[0x1E699CC78]);
    v102 = v134;
    sub_1E65E4AF8();
    v103 = *(v168 + 16);
    v104 = v159;
    v105 = v165;
    v103(v159, v160, v165);
    v166 = *(v150 + 2);
    v106 = v124;
    (v166)(v124, v100, v156);
    v164 = *(v151 + 2);
    v107 = v125;
    v108 = v102;
    v109 = v135;
    (v164)(v125, v108, v135);
    v110 = v126;
    v103(v126, v104, v105);
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076968, &unk_1E65F7270);
    v112 = v156;
    (v166)(&v110[*(v111 + 48)], v106, v156);
    v113 = v110;
    (v164)(&v110[*(v111 + 64)], v107, v109);
    v114 = *(v151 + 1);
    v151 += 8;
    v114(v107, v109);
    v115 = *(v150 + 1);
    v150 += 8;
    v115(v106, v112);
    v116 = *(v168 + 8);
    v116(v104, v105);
    sub_1E5DFD1CC(v113, v140, &qword_1ED076918, &qword_1E65F71F8);
    swift_storeEnumTagMultiPayload();
    v117 = v167;
    sub_1E5FED46C(&qword_1EE2D4B38, &qword_1ED076940, &qword_1E65F7228, v167);
    sub_1E5FED46C(&qword_1EE2D4B30, &qword_1ED076918, &qword_1E65F71F8, v117);
    v118 = v143;
    sub_1E65E4138();
    sub_1E5DFD1CC(v118, v148, &qword_1ED076938, &qword_1E65F7220);
    swift_storeEnumTagMultiPayload();
    sub_1E61F2440();
    v119 = v141;
    sub_1E65E4138();
    sub_1E5DFE50C(v118, &qword_1ED076938, &qword_1E65F7220);
    sub_1E5DFE50C(v113, &qword_1ED076918, &qword_1E65F71F8);
    v114(v134, v135);
    v115(v123, v156);
    v116(v160, v165);
    v93 = v157;
    v92 = v119;
    goto LABEL_5;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E61EAD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a2;
  v88 = a4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073998, &qword_1E65EDD08);
  v87 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v81 = &v72 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A0, &qword_1E65EDD10);
  v85 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v107 = &v72 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CF0, &unk_1E65F7110);
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v78 = &v72 - v8;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v82 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v72 - v9;
  v10 = type metadata accessor for ContextMenu(0);
  v11 = v10 - 8;
  v97 = *(v10 - 8);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppComposer(0);
  v100 = *(v13 - 8);
  v14 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v74 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1E65DED98();
  v79 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v111 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v99 = *(v16 - 8);
  v17 = *(v99 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v89 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  v21 = type metadata accessor for ContextMenu.Context(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076908, &unk_1E65F7100);
  v77 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v72 - v24;
  v25 = *(v11 + 28);
  v103 = a1;
  sub_1E61EFA38(a1 + v25, v23, type metadata accessor for ContextMenu.Context);
  v109 = v20;
  sub_1E5FAB460(v23, v20, &qword_1ED073B60, &unk_1E65EE020);
  v104 = type metadata accessor for AppComposer;
  sub_1E61EFA38(v110, &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v20, &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073B60, &unk_1E65EE020);
  v102 = type metadata accessor for ContextMenu;
  v26 = v93;
  sub_1E61EFA38(a1, v93, type metadata accessor for ContextMenu);
  sub_1E5DF650C(v101, &v112);
  v94 = *a3;
  v95 = a3[3];
  v91 = a3[5];
  v92 = a3[7];
  v90 = a3[9];
  v27 = *(v100 + 80);
  v28 = (v27 + 16) & ~v27;
  v29 = *(v99 + 80);
  v30 = (v14 + v29 + v28) & ~v29;
  v31 = *(v97 + 80);
  v99 = v30;
  v100 = v28;
  v101 = v27 | v31 | v29;
  v32 = (v17 + v31 + v30) & ~v31;
  v97 = v32;
  v33 = (v98 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = v33;
  v34 = swift_allocObject();
  v98 = type metadata accessor for AppComposer;
  v35 = v34 + v28;
  v36 = v74;
  sub_1E5E1E320(v74, v35, type metadata accessor for AppComposer);
  v37 = v34 + v30;
  v38 = v89;
  sub_1E5FAB460(v89, v37, &qword_1ED073B60, &unk_1E65EE020);
  v96 = type metadata accessor for ContextMenu;
  sub_1E5E1E320(v26, v34 + v32, type metadata accessor for ContextMenu);
  sub_1E5DF599C(&v112, v34 + v33);
  v39 = (v34 + ((v33 + 47) & 0xFFFFFFFFFFFFFFF8));
  v40 = *(a3 + 3);
  v39[2] = *(a3 + 2);
  v39[3] = v40;
  v39[4] = *(a3 + 4);
  v41 = *(a3 + 1);
  *v39 = *a3;
  v39[1] = v41;
  swift_unknownObjectRetain();

  sub_1E65DED88();
  sub_1E61EFA38(v110, v36, v104);
  v42 = v38;
  sub_1E5DFD1CC(v109, v38, &qword_1ED073B60, &unk_1E65EE020);
  v43 = v93;
  sub_1E61EFA38(v103, v93, v102);
  v44 = v73;
  v45 = swift_allocObject();
  sub_1E5E1E320(v36, v45 + v100, v98);
  sub_1E5FAB460(v42, v45 + v99, &qword_1ED073B60, &unk_1E65EE020);
  sub_1E5E1E320(v43, v45 + v97, v96);
  v46 = (v45 + v44);
  v47 = *(a3 + 3);
  v46[2] = *(a3 + 2);
  v46[3] = v47;
  v46[4] = *(a3 + 4);
  v48 = *(a3 + 1);
  *v46 = *a3;
  v46[1] = v48;
  sub_1E604BABC();
  swift_unknownObjectRetain();

  sub_1E65DEE28();
  sub_1E61EFA38(v110, v36, v104);
  v49 = v89;
  sub_1E5DFD1CC(v109, v89, &qword_1ED073B60, &unk_1E65EE020);
  sub_1E61EFA38(v103, v43, v102);
  v50 = swift_allocObject();
  sub_1E5E1E320(v36, v50 + v100, v98);
  sub_1E5FAB460(v49, v50 + v99, &qword_1ED073B60, &unk_1E65EE020);
  sub_1E5E1E320(v43, v50 + v97, v96);
  v51 = (v50 + v44);
  v52 = *(a3 + 3);
  v51[2] = *(a3 + 2);
  v51[3] = v52;
  v51[4] = *(a3 + 4);
  v53 = *(a3 + 1);
  *v51 = *a3;
  v51[1] = v53;
  sub_1E604C89C();
  swift_unknownObjectRetain();

  v54 = v78;
  sub_1E65DE568();
  v55 = sub_1E61F2AA4(&qword_1EE2D6818, MEMORY[0x1E699CDB0], MEMORY[0x1E699CDA8]);
  v56 = v105;
  MEMORY[0x1E69482C0](v111, v105, v55);
  *&v112 = v56;
  *(&v112 + 1) = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120, MEMORY[0x1E699CDD8]);
  v59 = v81;
  v60 = v106;
  v61 = v80;
  v62 = v108;
  sub_1E65E08A8();
  *&v112 = v61;
  *(&v112 + 1) = v62;
  v113 = OpaqueTypeConformance2;
  v114 = v58;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110, MEMORY[0x1E699CB30]);
  v65 = v75;
  v66 = v59;
  v67 = v86;
  v68 = v83;
  sub_1E65E08A8();
  (*(v87 + 8))(v66, v67);
  (*(v85 + 8))(v107, v61);
  (*(v84 + 8))(v54, v68);
  (*(v82 + 8))(v60, v108);
  (*(v79 + 8))(v111, v105);
  sub_1E5DFE50C(v109, &qword_1ED073B60, &unk_1E65EE020);
  *&v112 = v67;
  *(&v112 + 1) = v68;
  v113 = v63;
  v114 = v64;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v76;
  MEMORY[0x1E69482C0](v65, v76, v69);
  return (*(v77 + 8))(v65, v70);
}

uint64_t sub_1E61EBA5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v66 = a3;
  v63 = a1;
  v70 = a4;
  v6 = sub_1E65DE588();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v67 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v51 - v9;
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v51 - v16);
  v61 = &v51 - v16;
  v65 = sub_1E65DE468();
  v73 = *(v65 - 8);
  v18 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v51 - v20;
  sub_1E64D6444(v17);
  v53 = sub_1E5F9B258(&unk_1F5FA86B8);
  v62 = type metadata accessor for AppComposer;
  sub_1E61EFA38(a1, &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v17, &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073988, &unk_1E65F72F0);
  v55 = *a2;
  v56 = a2[3];
  v54 = a2[7];
  v72 = a2[9];
  v21 = *(v11 + 80);
  v22 = (v21 + 16) & ~v21;
  v60 = v22 + v12;
  v58 = v22;
  v59 = v21 | 7;
  v23 = (v22 + v12 + *(v57 + 80)) & ~*(v57 + 80);
  v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v22;
  v27 = v51;
  sub_1E5E1E320(v51, v26, type metadata accessor for AppComposer);
  sub_1E5FAB460(v52, v25 + v23, &qword_1ED073988, &unk_1E65F72F0);
  *(v25 + v24) = v53;
  v28 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v29 = *(a2 + 4);
  v28[3] = *(a2 + 3);
  v28[4] = v29;
  v30 = *(a2 + 2);
  v28[1] = *(a2 + 1);
  v28[2] = v30;
  *v28 = *a2;
  swift_unknownObjectRetain();

  v31 = v71;
  sub_1E65DE458();
  sub_1E5DFE50C(v61, &qword_1ED073988, &unk_1E65F72F0);
  sub_1E61EFA38(v63, v27, v62);
  sub_1E5DF650C(v66, v75);
  v32 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_1E5E1E320(v27, v33 + v58, type metadata accessor for AppComposer);
  v34 = (v33 + v32);
  v35 = *(a2 + 3);
  v34[2] = *(a2 + 2);
  v34[3] = v35;
  v34[4] = *(a2 + 4);
  v36 = *(a2 + 1);
  *v34 = *a2;
  v34[1] = v36;
  sub_1E5DF599C(v75, v33 + ((v32 + 87) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();

  v37 = v74;
  sub_1E65DE578();
  v38 = *(v73 + 16);
  v39 = v64;
  v40 = v65;
  v38(v64, v31, v65);
  v41 = v67;
  v42 = v68;
  v43 = *(v68 + 16);
  v44 = v37;
  v45 = v69;
  v43(v67, v44, v69);
  v46 = v70;
  v38(v70, v39, v40);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073990, &unk_1E65F7300);
  v43(&v46[*(v47 + 48)], v41, v45);
  v48 = *(v42 + 8);
  v48(v74, v45);
  v49 = *(v73 + 8);
  v49(v71, v40);
  v48(v41, v45);
  return (v49)(v39, v40);
}

uint64_t sub_1E61EC0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v77 = a2;
  v68 = a1;
  v84 = a4;
  v75 = sub_1E65D76F8();
  v71 = *(v75 - 1);
  v78 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v7;
  v8 = type metadata accessor for AppComposer(0);
  v70 = *(v8 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v69 = *(v11 - 8);
  v12 = *(v69 + 8);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v86 = *(v81 - 8);
  v80 = *(v86 + 64);
  v16 = MEMORY[0x1EEE9AC00](v81);
  v83 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v82 = &v58 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v79 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v58 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v76 = *(v23 - 8);
  v74 = *(v76 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v72 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v85 = &v58 - v26;
  sub_1E64D6730(&v58 - v26);
  v66 = v15;
  sub_1E6184404(v15);
  v67 = type metadata accessor for AppComposer;
  v60 = v10;
  sub_1E61EFA38(a1, v10, type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v15, &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073950, &unk_1E65F4360);
  v27 = v71;
  v28 = v75;
  (*(v71 + 16))(v7, v77, v75);
  v61 = *a3;
  v62 = a3[3];
  v63 = a3[5];
  v64 = a3[7];
  v65 = a3[9];
  v29 = *(v70 + 80);
  v30 = (v29 + 16) & ~v29;
  v77 = v30 + v9;
  v70 = v29 | 7;
  v31 = (v30 + v9 + *(v69 + 80)) & ~*(v69 + 80);
  v32 = (v12 + *(v27 + 80) + v31) & ~*(v27 + 80);
  v33 = (v78 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v69 = type metadata accessor for AppComposer;
  sub_1E5E1E320(v10, v34 + v30, type metadata accessor for AppComposer);
  sub_1E5FAB460(v58, v34 + v31, &qword_1ED073950, &unk_1E65F4360);
  (*(v27 + 32))(v34 + v32, v59, v28);
  v35 = (v34 + v33);
  v36 = *(a3 + 3);
  v35[2] = *(a3 + 2);
  v35[3] = v36;
  v35[4] = *(a3 + 4);
  v37 = *(a3 + 1);
  *v35 = *a3;
  v35[1] = v37;
  v38 = (v34 + ((v33 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v38 = nullsub_1;
  v38[1] = 0;
  sub_1E604BABC();
  swift_unknownObjectRetain();

  v39 = v73;
  sub_1E65DE518();
  sub_1E5DFE50C(v66, &qword_1ED073950, &unk_1E65F4360);
  v40 = v60;
  sub_1E61EFA38(v68, v60, v67);
  v41 = v72;
  sub_1E5DFD1CC(v85, v72, &qword_1ED073958, &qword_1E65EDCD0);
  v42 = (v77 + *(v76 + 80)) & ~*(v76 + 80);
  v43 = swift_allocObject();
  v78 = v43;
  sub_1E5E1E320(v40, v43 + v30, v69);
  sub_1E5FAB460(v41, v43 + v42, &qword_1ED073958, &qword_1E65EDCD0);
  v44 = v86;
  v76 = *(v86 + 16);
  v45 = v79;
  v46 = v39;
  v47 = v39;
  v48 = v81;
  (v76)(v79, v46, v81);
  v49 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v77 = swift_allocObject();
  v75 = *(v44 + 32);
  (v75)(v77 + v49, v45, v48);
  v50 = v82;
  v51 = v48;
  v52 = v76;
  (v76)(v82, v47, v48);
  v79 = swift_allocObject();
  v53 = v50;
  v54 = v75;
  (v75)(&v79[v49], v53, v48);
  v55 = v83;
  v52(v83, v47, v51);
  v56 = swift_allocObject();
  v54(v56 + v49, v55, v51);
  sub_1E604CB00();
  sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0, MEMORY[0x1E699CAF8]);
  sub_1E65DE8A8();
  (*(v86 + 8))(v47, v51);
  return sub_1E5DFE50C(v85, &qword_1ED073958, &qword_1E65EDCD0);
}

uint64_t sub_1E61EC978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v61 = a3;
  v62 = a6;
  v57 = a5;
  v60 = a2;
  v52 = a1;
  v63 = a8;
  v64 = a9;
  v65 = a7;
  v58 = sub_1E65D76F8();
  v66 = *(v58 - 8);
  v59 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppComposer(0);
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v54 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17 - 8);
  v50 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v47 - v24;
  sub_1E64D6158((&v47 - v24));
  sub_1E61EFA38(a1, v16, type metadata accessor for AppComposer);
  v56 = v25;
  sub_1E5DFD1CC(v25, v23, &qword_1ED0736B0, &unk_1E65F8480);
  v26 = *(v53 + 80);
  v27 = (v26 + 16) & ~v26;
  v28 = *(v18 + 80);
  v29 = ((v13 + v28 + v27) & ~v28) + v19;
  v30 = (v13 + v28 + v27) & ~v28;
  v48 = v30;
  v49 = v26 | v28 | 7;
  v31 = swift_allocObject();
  v57 = v31;
  v47 = type metadata accessor for AppComposer;
  sub_1E5E1E320(v16, v31 + v27, type metadata accessor for AppComposer);
  sub_1E5FAB460(v23, v31 + v30, &qword_1ED0736B0, &unk_1E65F8480);
  v32 = v54;
  sub_1E61EFA38(v52, v54, type metadata accessor for AppComposer);
  v33 = v25;
  v34 = v50;
  sub_1E5DFD1CC(v33, v50, &qword_1ED0736B0, &unk_1E65F8480);
  v35 = v66;
  v36 = v55;
  v37 = v58;
  (*(v66 + 16))(v55, v60, v58);
  sub_1E5DF650C(v61, v67);
  v38 = a4[3];
  v51 = *a4;
  v52 = v38;
  v53 = a4[5];
  v39 = a4[9];
  v60 = a4[7];
  v61 = v39;
  v40 = (v29 + *(v35 + 80)) & ~*(v35 + 80);
  v41 = (v59 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  sub_1E5E1E320(v32, v42 + v27, v47);
  sub_1E5FAB460(v34, v42 + v48, &qword_1ED0736B0, &unk_1E65F8480);
  (*(v66 + 32))(v42 + v40, v36, v37);
  sub_1E5DF599C(v67, v42 + v41);
  v43 = (v42 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8));
  v44 = *(a4 + 3);
  v43[2] = *(a4 + 2);
  v43[3] = v44;
  v43[4] = *(a4 + 4);
  v45 = *(a4 + 1);
  *v43 = *a4;
  v43[1] = v45;
  sub_1E65DE748();
  sub_1E61F2AA4(&qword_1EE2D6890, MEMORY[0x1E699CC00], MEMORY[0x1E699CBF8]);
  swift_unknownObjectRetain();

  sub_1E65DE9A8();
  return sub_1E5DFE50C(v56, &qword_1ED0736B0, &unk_1E65F8480);
}

uint64_t sub_1E61ECEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073918, &unk_1E65F7260);
  sub_1E5FED46C(&qword_1EE2D4B48, &qword_1ED073918, &unk_1E65F7260, MEMORY[0x1E6981F48]);
  return sub_1E65E4AF8();
}

uint64_t sub_1E61ECFA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v66 = a3;
  v63 = a1;
  v70 = a4;
  v6 = sub_1E65DE588();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v67 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v51 - v9;
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0);
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v51 - v16);
  v61 = &v51 - v16;
  v65 = sub_1E65DE468();
  v73 = *(v65 - 8);
  v18 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v51 - v20;
  sub_1E64D6444(v17);
  v53 = sub_1E5F9B258(&unk_1F5FA86E0);
  v62 = type metadata accessor for AppComposer;
  sub_1E61EFA38(a1, &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v17, &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073988, &unk_1E65F72F0);
  v55 = *a2;
  v56 = a2[3];
  v54 = a2[7];
  v72 = a2[9];
  v21 = *(v11 + 80);
  v22 = (v21 + 16) & ~v21;
  v60 = v22 + v12;
  v58 = v22;
  v59 = v21 | 7;
  v23 = (v22 + v12 + *(v57 + 80)) & ~*(v57 + 80);
  v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v25 + v22;
  v27 = v51;
  sub_1E5E1E320(v51, v26, type metadata accessor for AppComposer);
  sub_1E5FAB460(v52, v25 + v23, &qword_1ED073988, &unk_1E65F72F0);
  *(v25 + v24) = v53;
  v28 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v29 = *(a2 + 4);
  v28[3] = *(a2 + 3);
  v28[4] = v29;
  v30 = *(a2 + 2);
  v28[1] = *(a2 + 1);
  v28[2] = v30;
  *v28 = *a2;
  swift_unknownObjectRetain();

  v31 = v71;
  sub_1E65DE458();
  sub_1E5DFE50C(v61, &qword_1ED073988, &unk_1E65F72F0);
  sub_1E61EFA38(v63, v27, v62);
  sub_1E5DF650C(v66, v75);
  v32 = (v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_1E5E1E320(v27, v33 + v58, type metadata accessor for AppComposer);
  v34 = (v33 + v32);
  v35 = *(a2 + 3);
  v34[2] = *(a2 + 2);
  v34[3] = v35;
  v34[4] = *(a2 + 4);
  v36 = *(a2 + 1);
  *v34 = *a2;
  v34[1] = v36;
  sub_1E5DF599C(v75, v33 + ((v32 + 87) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRetain();

  v37 = v74;
  sub_1E65DE578();
  v38 = *(v73 + 16);
  v39 = v64;
  v40 = v65;
  v38(v64, v31, v65);
  v41 = v67;
  v42 = v68;
  v43 = *(v68 + 16);
  v44 = v37;
  v45 = v69;
  v43(v67, v44, v69);
  v46 = v70;
  v38(v70, v39, v40);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073990, &unk_1E65F7300);
  v43(&v46[*(v47 + 48)], v41, v45);
  v48 = *(v42 + 8);
  v48(v74, v45);
  v49 = *(v73 + 8);
  v49(v71, v40);
  v48(v41, v45);
  return (v49)(v39, v40);
}

uint64_t sub_1E61ED5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X8>)
{
  v183 = a3;
  v184 = a4;
  v159 = a2;
  v190 = a1;
  v173 = a5;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
  v171 = *(v147 - 8);
  v5 = MEMORY[0x1EEE9AC00](v147);
  v145 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v143 = &v132 - v8;
  v144 = v9;
  MEMORY[0x1EEE9AC00](v7);
  v146 = &v132 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073938, &unk_1E65F72A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v163 = &v132 - v12;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  v162 = *(v164 - 8);
  v13 = MEMORY[0x1EEE9AC00](v164);
  v142 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v168 = &v132 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073948, &unk_1E65F72B0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v172 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v169 = &v132 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v170 = &v132 - v21;
  v22 = sub_1E65D76F8();
  v181 = v22;
  v23 = *(v22 - 8);
  v161 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v25;
  v26 = type metadata accessor for AppComposer(0);
  v175 = *(v26 - 8);
  v27 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v152 = *(v29 - 8);
  v30 = *(v152 + 8);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v148 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v132 - v32;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v187 = *(v157 - 8);
  v186 = *(v187 + 64);
  v34 = MEMORY[0x1EEE9AC00](v157);
  v160 = &v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v158 = &v132 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v156 = &v132 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v185 = (&v132 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v155 = *(v41 - 8);
  v154 = *(v155 + 64);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v174 = &v132 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v153 = &v132 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v132 - v46;
  v189 = &v132 - v46;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073960, &qword_1E65EDCD8);
  v166 = *(v167 - 8);
  v48 = MEMORY[0x1EEE9AC00](v167);
  v165 = &v132 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v188 = &v132 - v50;
  sub_1E64D6730(v47);
  v150 = v33;
  sub_1E6184404(v33);
  v151 = type metadata accessor for AppComposer;
  v182 = v28;
  sub_1E61EFA38(v190, v28, type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v33, &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073950, &unk_1E65F4360);
  v51 = v23;
  v52 = *(v23 + 16);
  v139 = v23 + 16;
  v138 = v52;
  v52(v25, v183, v22);
  v53 = v184;
  v54 = *v184;
  v55 = v184[5];
  v176 = v184[3];
  v177 = v55;
  v56 = v184[9];
  v178 = v184[7];
  v179 = v56;
  v57 = *(v175 + 80);
  v58 = (v57 + 16) & ~v57;
  v175 = v58 + v27;
  v149 = v57 | 7;
  v59 = (v58 + v27 + *(v152 + 80)) & ~*(v152 + 80);
  v60 = *(v51 + 80);
  v61 = (v30 + v60 + v59) & ~v60;
  v135 = v60;
  v133 = v161 + 7;
  v62 = (v161 + 7 + v61) & 0xFFFFFFFFFFFFFFF8;
  v136 = v57 | 7 | v60;
  v63 = swift_allocObject();
  v152 = type metadata accessor for AppComposer;
  sub_1E5E1E320(v28, v63 + v58, type metadata accessor for AppComposer);
  sub_1E5FAB460(v148, v63 + v59, &qword_1ED073950, &unk_1E65F4360);
  v64 = *(v51 + 32);
  v148 = v51 + 32;
  v134 = v64;
  v64(v63 + v61, v180, v181);
  v65 = (v63 + v62);
  v66 = *(v53 + 3);
  v65[2] = *(v53 + 2);
  v65[3] = v66;
  v65[4] = *(v53 + 4);
  v67 = *(v53 + 1);
  *v65 = *v53;
  v65[1] = v67;
  v68 = (v63 + ((v62 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v68 = nullsub_1;
  v68[1] = 0;
  v69 = sub_1E604BABC();
  v140 = v54;
  swift_unknownObjectRetain();

  v70 = v185;
  v137 = v69;
  sub_1E65DE518();
  sub_1E5DFE50C(v150, &qword_1ED073950, &unk_1E65F4360);
  v71 = v182;
  sub_1E61EFA38(v190, v182, v151);
  v72 = v153;
  sub_1E5DFD1CC(v189, v153, &qword_1ED073958, &qword_1E65EDCD0);
  v73 = *(v155 + 80);
  v74 = ((v175 + v73) & ~v73);
  v151 = (v74 + v154);
  v150 = (v149 | v73);
  v75 = swift_allocObject();
  v155 = v75;
  v161 = v58;
  sub_1E5E1E320(v71, v75 + v58, v152);
  v152 = v74;
  sub_1E5FAB460(v72, v74 + v75, &qword_1ED073958, &qword_1E65EDCD0);
  v76 = v187;
  v77 = *(v187 + 16);
  v78 = v156;
  v79 = v157;
  v77(v156, v70, v157);
  v80 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v154 = swift_allocObject();
  v81 = *(v76 + 32);
  v81(v154 + v80, v78, v79);
  v82 = v158;
  v83 = v185;
  v77(v158, v185, v79);
  v156 = swift_allocObject();
  v81(&v156[v80], v82, v79);
  v84 = v160;
  v85 = v83;
  v77(v160, v83, v79);
  v86 = swift_allocObject();
  v81(v86 + v80, v84, v79);
  v87 = v162;
  v88 = sub_1E604CB00();
  sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0, MEMORY[0x1E699CAF8]);
  v89 = v163;
  v90 = v174;
  sub_1E65DE8A8();
  (*(v187 + 8))(v85, v79);
  sub_1E5DFE50C(v189, &qword_1ED073958, &qword_1E65EDCD0);
  sub_1E64D6730(v90);
  sub_1E61845B4(v89);
  if ((*(v87 + 48))(v89, 1, v164) == 1)
  {
    sub_1E5DFE50C(v90, &qword_1ED073958, &qword_1E65EDCD0);
    sub_1E5DFE50C(v89, &qword_1ED073938, &unk_1E65F72A0);
    v91 = 1;
    v92 = v169;
  }

  else
  {
    v93 = v135;
    v94 = v168;
    sub_1E5FAB460(v89, v168, &qword_1ED073940, &qword_1E65EDCC8);
    v186 = type metadata accessor for AppComposer;
    v95 = v182;
    sub_1E61EFA38(v190, v182, type metadata accessor for AppComposer);
    v96 = v142;
    sub_1E5DFD1CC(v94, v142, &qword_1ED073940, &qword_1E65EDCC8);
    v187 = v88;
    v98 = v180;
    v97 = v181;
    v138(v180, v183, v181);
    v99 = (v175 + *(v87 + 80)) & ~*(v87 + 80);
    v100 = v99 + v141;
    v101 = (v93 + v99 + v141 + 1) & ~v93;
    v102 = (v133 + v101) & 0xFFFFFFFFFFFFFFF8;
    v103 = swift_allocObject();
    v185 = type metadata accessor for AppComposer;
    sub_1E5E1E320(v95, v103 + v161, type metadata accessor for AppComposer);
    sub_1E5FAB460(v96, v103 + v99, &qword_1ED073940, &qword_1E65EDCC8);
    *(v103 + v100) = 0;
    v134(v103 + v101, v98, v97);
    v104 = (v103 + v102);
    v105 = v184;
    v106 = *(v184 + 3);
    v104[2] = *(v184 + 2);
    v104[3] = v106;
    v104[4] = *(v105 + 4);
    v107 = *(v105 + 1);
    *v104 = *v105;
    v104[1] = v107;
    swift_unknownObjectRetain();

    v108 = v146;
    sub_1E65DE528();
    sub_1E61EFA38(v190, v95, v186);
    v109 = v189;
    sub_1E5DFD1CC(v90, v189, &qword_1ED073958, &qword_1E65EDCD0);
    v110 = swift_allocObject();
    v190 = v110;
    sub_1E5E1E320(v95, v110 + v161, v185);
    sub_1E5FAB460(v109, v152 + v110, &qword_1ED073958, &qword_1E65EDCD0);
    v111 = v171;
    v112 = *(v171 + 16);
    v113 = v143;
    v114 = v147;
    v112(v143, v108, v147);
    v115 = (*(v111 + 80) + 16) & ~*(v111 + 80);
    v189 = swift_allocObject();
    v116 = *(v111 + 32);
    v116(v189 + v115, v113, v114);
    v112(v113, v108, v114);
    v186 = swift_allocObject();
    v116(v186 + v115, v113, v114);
    v117 = v145;
    v112(v145, v108, v114);
    v118 = swift_allocObject();
    v116(v118 + v115, v117, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073980, &qword_1E65EDCE8);
    sub_1E604DE38();
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0, MEMORY[0x1E699CB00]);
    v119 = v169;
    sub_1E65DE8A8();
    (*(v171 + 8))(v108, v114);
    sub_1E5DFE50C(v168, &qword_1ED073940, &qword_1E65EDCC8);
    sub_1E5DFE50C(v174, &qword_1ED073958, &qword_1E65EDCD0);
    v91 = 0;
    v92 = v119;
  }

  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073970, &unk_1E65F72E0);
  (*(*(v120 - 8) + 56))(v92, v91, 1, v120);
  v121 = v170;
  sub_1E5FAB460(v92, v170, &qword_1ED073948, &unk_1E65F72B0);
  v122 = v166;
  v123 = *(v166 + 16);
  v124 = v165;
  v125 = v188;
  v126 = v167;
  v123(v165, v188, v167);
  v127 = v172;
  sub_1E5DFD1CC(v121, v172, &qword_1ED073948, &unk_1E65F72B0);
  v128 = v173;
  v123(v173, v124, v126);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073978, &qword_1E65EDCE0);
  sub_1E5DFD1CC(v127, &v128[*(v129 + 48)], &qword_1ED073948, &unk_1E65F72B0);
  sub_1E5DFE50C(v121, &qword_1ED073948, &unk_1E65F72B0);
  v130 = *(v122 + 8);
  v130(v125, v126);
  sub_1E5DFE50C(v127, &qword_1ED073948, &unk_1E65F72B0);
  return (v130)(v124, v126);
}

uint64_t sub_1E61EE9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v35 = a2;
  v33 = a1;
  v37 = a4;
  v34 = sub_1E65D76F8();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppComposer(0);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v36 = &v26 - v14;
  sub_1E64D6B28(&v26 - v14);
  sub_1E61EFA38(v33, v9, type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v15, v13, &unk_1ED0776E0, &qword_1E65EDC00);
  v16 = v34;
  (*(v5 + 16))(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v34);
  v29 = *a3;
  v17 = a3[5];
  v31 = a3[3];
  v32 = v17;
  v33 = a3[7];
  v35 = a3[9];
  v18 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v19 = (v8 + *(v27 + 80) + v18) & ~*(v27 + 80);
  v20 = (v11 + *(v5 + 80) + v19) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_1E5E1E320(v9, v21 + v18, type metadata accessor for AppComposer);
  sub_1E5FAB460(v13, v21 + v19, &unk_1ED0776E0, &qword_1E65EDC00);
  (*(v5 + 32))(v21 + v20, v28, v16);
  v22 = (v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = *(a3 + 3);
  v22[2] = *(a3 + 2);
  v22[3] = v23;
  v22[4] = *(a3 + 4);
  v24 = *(a3 + 1);
  *v22 = *a3;
  v22[1] = v24;
  sub_1E604C89C();
  swift_unknownObjectRetain();

  sub_1E65DE4E8();
  return sub_1E5DFE50C(v36, &unk_1ED0776E0, &qword_1E65EDC00);
}

uint64_t sub_1E61EEDA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v109 = a5;
  v98 = a4;
  v107 = a3;
  v104 = sub_1E65D76F8();
  v103 = *(v104 - 8);
  v106 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v113 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073850, &unk_1E65F71B0);
  v110 = *(v7 - 8);
  v111 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v117 = &v78 - v8;
  v9 = type metadata accessor for AppComposer(0);
  v90 = *(v9 - 8);
  v10 = *(v90 + 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v95 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v93 = &v78 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v78 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v78 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v78 - v20;
  v22 = sub_1E65DED78();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v97 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1E65DEC38();
  v108 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E65DEC18();
  v99 = v25;
  v100 = *(v25 - 8);
  v26 = v100;
  v102 = *(v100 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v101 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v78 - v29;
  v114 = &v78 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  v84 = *(v31 - 8);
  v112 = *(v84 + 64);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v83 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v118 = &v78 - v34;
  sub_1E64D6D58((&v78 - v34));
  v35 = sub_1E65DE608();
  v94 = sub_1E600A684(v35);

  (*(v26 + 104))(v30, *MEMORY[0x1E699CD38], v25);
  v105 = *a1;
  type metadata accessor for AppEnvironment(0);
  v86 = SessionService.requireNewSessionsAllowed.getter();
  v85 = v36;
  v37 = a1;
  v96 = v21;
  sub_1E61EFA38(a1, v21, type metadata accessor for AppComposer);
  v38 = *(v90 + 80);
  v39 = (v38 + 16) & ~v38;
  v40 = v38 | 7;
  v82 = swift_allocObject();
  sub_1E5E1E320(v21, v82 + v39, type metadata accessor for AppComposer);
  sub_1E61EFA38(v37, v19, type metadata accessor for AppComposer);
  v81 = swift_allocObject();
  sub_1E5E1E320(v19, v81 + v39, type metadata accessor for AppComposer);
  sub_1E61EFA38(v37, v16, type metadata accessor for AppComposer);
  v80 = swift_allocObject();
  sub_1E5E1E320(v16, v80 + v39, type metadata accessor for AppComposer);
  v92 = v37;
  v41 = v93;
  v91 = type metadata accessor for AppComposer;
  sub_1E61EFA38(v37, v93, type metadata accessor for AppComposer);
  v42 = v39 + v10;
  v87 = v39 + v10;
  v88 = v40;
  v79 = swift_allocObject();
  v89 = v39;
  v90 = type metadata accessor for AppComposer;
  sub_1E5E1E320(v41, v79 + v39, type metadata accessor for AppComposer);
  v43 = v98;
  sub_1E5DF650C(v98, &v120);
  v44 = swift_allocObject();
  sub_1E5DF599C(&v120, v44 + 16);
  v45 = v37;
  v46 = v95;
  sub_1E61EFA38(v45, v95, type metadata accessor for AppComposer);
  v47 = v83;
  sub_1E5DFD1CC(v118, v83, &qword_1ED073858, &unk_1E65F84A0);
  sub_1E5DF650C(v43, &v119);
  v48 = *(v84 + 80);
  v49 = (v42 + v48) & ~v48;
  v50 = (v112 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  sub_1E5E1E320(v46, v51 + v39, type metadata accessor for AppComposer);
  sub_1E5FAB460(v47, v51 + v49, &qword_1ED073858, &unk_1E65F84A0);
  sub_1E5DF599C(&v119, v51 + v50);
  sub_1E65DED68();
  sub_1E65DEC28();
  v52 = v118;
  v53 = v47;
  sub_1E5DFD1CC(v118, v47, &qword_1ED073858, &unk_1E65F84A0);
  v54 = v103;
  v55 = v104;
  (*(v103 + 16))(v113, v107, v104);
  v56 = (v48 + 16) & ~v48;
  v112 += v56;
  v107 = v48 | 7;
  v57 = (v112 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + *(v54 + 80) + 8) & ~*(v54 + 80);
  v59 = swift_allocObject();
  sub_1E5FAB460(v53, v59 + v56, &qword_1ED073858, &unk_1E65F84A0);
  *(v59 + v57) = v94;
  (*(v54 + 32))(v59 + v58, v113, v55);
  sub_1E5DFD1CC(v52, v53, &qword_1ED073858, &unk_1E65F84A0);
  v60 = swift_allocObject();
  sub_1E5FAB460(v53, v60 + v56, &qword_1ED073858, &unk_1E65F84A0);
  type metadata accessor for AppFeature(0);
  sub_1E61F2AA4(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v113 = sub_1E61F2AA4(&qword_1EE2D6838, MEMORY[0x1E699CD48], MEMORY[0x1E699CD40]);
  sub_1E65E4DE8();
  v61 = v96;
  sub_1E61EFA38(v92, v96, v91);
  v62 = v109;
  v106 = v109[5];
  v107 = v109[7];
  v112 = v109[9];
  v63 = v100;
  v64 = v101;
  v65 = v99;
  (*(v100 + 16))(v101, v114, v99);
  v66 = (v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + *(v63 + 80) + 80) & ~*(v63 + 80);
  v68 = swift_allocObject();
  sub_1E5E1E320(v61, v68 + v89, v90);
  v69 = (v68 + v66);
  v70 = v62[3];
  v69[2] = v62[2];
  v69[3] = v70;
  v69[4] = v62[4];
  v71 = v62[1];
  *v69 = *v62;
  v69[1] = v71;
  (*(v63 + 32))(v68 + v67, v64, v65);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v72 = swift_allocObject();
  *(v72 + 16) = sub_1E604C228;
  *(v72 + 24) = v68;

  v74 = v115;
  v73 = v116;
  v75 = v117;
  v76 = sub_1E65E4F08();

  (*(v110 + 8))(v75, v111);
  (*(v108 + 8))(v74, v73);
  (*(v63 + 8))(v114, v65);
  sub_1E5DFE50C(v118, &qword_1ED073858, &unk_1E65F84A0);
  return v76;
}

uint64_t sub_1E61EFA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61EFAA0()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for ContextMenu(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E61EEDA0((v0 + v2), v0 + v5, v0 + v8, v0 + v9, (v0 + ((v9 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E61EFC0C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v69 = a4;
  v67 = a3;
  v5 = sub_1E65D76F8();
  v64 = *(v5 - 8);
  v65 = v5;
  v66 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v51 - v8;
  v9 = type metadata accessor for AppComposer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v51 - v13;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v70 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v57 = *(v15 - 8);
  v73 = *(v57 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v53 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v51 - v18;
  sub_1E64D6F0C(&v51 - v18);
  v68 = *a1;
  sub_1E61EFA38(a1, &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v19 = *(v10 + 80);
  v20 = (v19 + 16) & ~v19;
  v21 = v19 | 7;
  v52 = swift_allocObject();
  sub_1E5E1E320(&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v20, type metadata accessor for AppComposer);
  sub_1E61EFA38(a1, &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v51 = swift_allocObject();
  sub_1E5E1E320(&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v20, type metadata accessor for AppComposer);
  v56 = a1;
  v55 = type metadata accessor for AppComposer;
  sub_1E61EFA38(a1, &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v58 = v20 + v11;
  v60 = v21;
  v22 = swift_allocObject();
  v61 = type metadata accessor for AppComposer;
  v62 = v20;
  sub_1E5E1E320(&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20, type metadata accessor for AppComposer);
  v23 = swift_allocObject();
  *(v23 + 16) = &unk_1E65F7190;
  *(v23 + 24) = v22;
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E61EFA38(a1, v54, type metadata accessor for AppComposer);
  v24 = swift_allocObject();
  sub_1E5E1E320(&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v20, type metadata accessor for AppComposer);
  sub_1E604BABC();
  sub_1E65DED58();
  sub_1E65DEAC8();
  v25 = v53;
  sub_1E5DFD1CC(v77, v53, &qword_1ED072AA8, &unk_1E65FA900);
  v26 = v63;
  v27 = v64;
  v28 = v65;
  (*(v64 + 16))(v63, v67, v65);
  v67 = *(v57 + 80);
  v29 = (v67 + 16) & ~v67;
  v30 = (v29 + v73 + *(v27 + 80)) & ~*(v27 + 80);
  v31 = v30 + v66;
  v32 = swift_allocObject();
  sub_1E5FAB460(v25, v32 + v29, &qword_1ED072AA8, &unk_1E65FA900);
  (*(v27 + 32))(v32 + v30, v26, v28);
  *(v32 + v31) = 0;
  v33 = v77;
  v34 = v25;
  sub_1E5DFD1CC(v77, v25, &qword_1ED072AA8, &unk_1E65FA900);
  v35 = swift_allocObject();
  sub_1E5FAB460(v25, v35 + v29, &qword_1ED072AA8, &unk_1E65FA900);
  type metadata accessor for AppFeature(0);
  sub_1E61F2AA4(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v66 = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170, MEMORY[0x1E699CCE0]);
  sub_1E65E4DE8();
  v36 = v54;
  sub_1E61EFA38(v56, v54, v55);
  v37 = v69;
  v38 = v69[7];
  v63 = v69[5];
  v64 = v38;
  v65 = v69[9];
  sub_1E5DFD1CC(v33, v34, &qword_1ED072AA8, &unk_1E65FA900);
  v39 = (v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + v67 + 80) & ~v67;
  v41 = swift_allocObject();
  sub_1E5E1E320(v36, v41 + v62, v61);
  v42 = (v41 + v39);
  v43 = v37[3];
  v42[2] = v37[2];
  v42[3] = v43;
  v42[4] = v37[4];
  v44 = v37[1];
  *v42 = *v37;
  v42[1] = v44;
  sub_1E5FAB460(v34, v41 + v40, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1E604BC48;
  *(v45 + 24) = v41;

  v47 = v74;
  v46 = v75;
  v48 = v76;
  v49 = sub_1E65E4F08();

  (*(v71 + 8))(v48, v72);
  (*(v70 + 8))(v47, v46);
  sub_1E5DFE50C(v77, &qword_1ED072AA8, &unk_1E65FA900);
  return v49;
}

uint64_t sub_1E61F055C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1E64D6B28(&v11 - v7);
  v9 = sub_1E6200DD8(v8, a3, a4);
  sub_1E5DFE50C(v8, &unk_1ED0776E0, &qword_1E65EDC00);
  return v9;
}

uint64_t objectdestroy_18Tm()
{
  v157 = type metadata accessor for AppComposer(0);
  v155 = *(*(v157 - 1) + 80);
  v1 = (v155 + 16) & ~v155;
  v2 = v1 + *(*(v157 - 1) + 64);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
  v154 = *(*(v152 - 8) + 80);
  v150 = (v2 + v154) & ~v154;
  v3 = *(*(v152 - 8) + 64);
  v151 = type metadata accessor for ContextMenu(0);
  v153 = *(*(v151 - 8) + 80);
  v156 = v0;
  v147 = v0 + v1;

  v4 = v0 + v1 + v157[5];
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment(0);
  v6 = v5[6];
  v149 = type metadata accessor for AccountService();
  v148 = *(v149[-1].Description + 1);
  v148(v4 + v6, v149);
  v7 = v5[7];
  v146 = type metadata accessor for AppStateService();
  v145 = *(v146[-1].Description + 1);
  v145(v4 + v7, v146);
  v8 = v5[8];
  v144 = type metadata accessor for ArchivedSessionService();
  v143 = *(v144[-1].Description + 1);
  v143(v4 + v8, v144);
  v9 = v5[9];
  v142 = type metadata accessor for AssetService();
  v141 = *(v142[-1].Description + 1);
  v141(v4 + v9, v142);
  v10 = v5[10];
  v140 = type metadata accessor for AwardsService();
  v139 = *(v140[-1].Description + 1);
  v139(v4 + v10, v140);
  v11 = v5[11];
  v138 = type metadata accessor for BookmarkService();
  v137 = *(v138[-1].Description + 1);
  v137(v4 + v11, v138);
  v12 = v5[12];
  v136 = type metadata accessor for CatalogService();
  v135 = *(v136[-1].Description + 1);
  v135(v4 + v12, v136);
  v13 = v5[13];
  v134 = type metadata accessor for ConfigurationService();
  v133 = *(v134[-1].Description + 1);
  v133(v4 + v13, v134);
  v14 = v5[14];
  v132 = type metadata accessor for ContentAvailabilityService();
  v131 = *(v132[-1].Description + 1);
  v131(v4 + v14, v132);
  v15 = v5[15];
  v130 = type metadata accessor for EngagementService();
  v129 = *(v130[-1].Description + 1);
  v129(v4 + v15, v130);
  v16 = v5[16];
  v128 = type metadata accessor for HealthDataService();
  v127 = *(v128[-1].Description + 1);
  v127(v4 + v16, v128);
  v17 = v5[17];
  v126 = type metadata accessor for InteropService();
  v125 = *(v126[-1].Description + 1);
  v125(v4 + v17, v126);
  v18 = v5[18];
  v124 = type metadata accessor for LocalizationService();
  v123 = *(v124[-1].Description + 1);
  v123(v4 + v18, v124);
  v19 = v5[19];
  v122 = type metadata accessor for MarketingService();
  v121 = *(v122[-1].Description + 1);
  v121(v4 + v19, v122);
  v20 = v5[20];
  v120 = type metadata accessor for MetricService();
  v119 = *(v120[-1].Description + 1);
  v119(v4 + v20, v120);
  v21 = v5[21];
  v118 = type metadata accessor for PersonalizationService();
  v117 = *(v118[-1].Description + 1);
  v117(v4 + v21, v118);
  v22 = v5[22];
  v116 = type metadata accessor for PlayerService();
  v115 = *(v116[-1].Description + 1);
  v115(v4 + v22, v116);
  v23 = v5[23];
  v114 = type metadata accessor for PrivacyPreferenceService();
  v113 = *(v114[-1].Description + 1);
  v113(v4 + v23, v114);
  v24 = v5[24];
  v112 = type metadata accessor for RecommendationService();
  v111 = *(v112[-1].Description + 1);
  v111(v4 + v24, v112);
  v25 = v5[25];
  v110 = type metadata accessor for RemoteBrowsingService();
  v109 = *(v110[-1].Description + 1);
  v109(v4 + v25, v110);
  v26 = v5[26];
  v108 = type metadata accessor for SearchService();
  v107 = *(v108[-1].Description + 1);
  v107(v4 + v26, v108);
  v27 = v5[27];
  v106 = type metadata accessor for ServiceSubscriptionService();
  v105 = *(v106[-1].Description + 1);
  v105(v4 + v27, v106);
  v28 = v5[28];
  v99 = type metadata accessor for SessionService();
  v104 = *(v99[-1].Description + 1);
  v104(v4 + v28, v99);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v103 = *(v30[-1].Description + 1);
  v103(v4 + v29, v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v102 = *(v32[-1].Description + 1);
  v102(v4 + v31, v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v101 = *(v34[-1].Description + 1);
  v101(v4 + v33, v34);

  v35 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v100 = *(QueueService[-1].Description + 1);
  v100(v4 + v35, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v4 + v5[34]));

  v37 = v5[36];
  v38 = type metadata accessor for WorkoutPlanService();
  v98 = *(v38[-1].Description + 1);
  v98(v4 + v37, v38);

  v39 = v147 + v157[7];

  v40 = v39 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v148(v40 + v5[6], v149);
  v145(v40 + v5[7], v146);
  v143(v40 + v5[8], v144);
  v141(v40 + v5[9], v142);
  v139(v40 + v5[10], v140);
  v137(v40 + v5[11], v138);
  v135(v40 + v5[12], v136);
  v133(v40 + v5[13], v134);
  v131(v40 + v5[14], v132);
  v129(v40 + v5[15], v130);
  v127(v40 + v5[16], v128);
  v125(v40 + v5[17], v126);
  v123(v40 + v5[18], v124);
  v121(v40 + v5[19], v122);
  v119(v40 + v5[20], v120);
  v117(v40 + v5[21], v118);
  v115(v40 + v5[22], v116);
  v113(v40 + v5[23], v114);
  v111(v40 + v5[24], v112);
  v109(v40 + v5[25], v110);
  v107(v40 + v5[26], v108);
  v105(v40 + v5[27], v106);
  v104(v40 + v5[28], v99);
  v103(v40 + v5[29], v30);
  v102(v40 + v5[30], v32);
  v101(v40 + v5[31], v34);

  v100(v40 + v5[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v40 + v5[34]));

  v98(v40 + v5[36], v38);
  swift_unknownObjectRelease();
  if (*(v147 + v157[9] + 8) >= 0xCuLL)
  {
  }

  v41 = (v147 + v157[10]);
  if (v41[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v42 = (v150 + v3 + v153) & ~v153;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v44 = v156 + v150 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v45 = swift_getEnumCaseMultiPayload();
    switch(v45)
    {
      case 2:

        break;
      case 1:
        v47 = sub_1E65DE788();
        (*(*(v47 - 8) + 8))(v44, v47);
        v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v49 = sub_1E65D76A8();
        (*(*(v49 - 8) + 8))(v44 + v48, v49);
        break;
      case 0:
        v46 = sub_1E65DE788();
        (*(*(v46 - 8) + 8))(v44, v46);
        break;
    }

    State = type metadata accessor for WorkoutContextMenuLoadState(0);
    v51 = v44 + State[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v52 = swift_getEnumCaseMultiPayload();
    if (v52 == 2)
    {
    }

    else if (v52 == 1)
    {
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v54 = sub_1E65D76A8();
      (*(*(v54 - 8) + 8))(v51 + v53, v54);
    }

    v55 = v44 + State[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v56 = swift_getEnumCaseMultiPayload();
    if (v56 == 2)
    {
    }

    else if (v56 == 1)
    {
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v58 = sub_1E65D76A8();
      (*(*(v58 - 8) + 8))(v55 + v57, v58);
    }

    v59 = v44 + State[7];
    v60 = swift_getEnumCaseMultiPayload();
    if (v60 == 2)
    {
    }

    else if (v60 == 1)
    {
      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v62 = sub_1E65D76A8();
      (*(*(v62 - 8) + 8))(v59 + v61, v62);
    }

    v63 = v44 + State[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v64 = swift_getEnumCaseMultiPayload();
    switch(v64)
    {
      case 2:

        break;
      case 1:
        v66 = sub_1E65DE508();
        (*(*(v66 - 8) + 8))(v63, v66);
        v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v68 = sub_1E65D76A8();
        (*(*(v68 - 8) + 8))(v63 + v67, v68);
        break;
      case 0:
        v65 = sub_1E65DE508();
        (*(*(v65 - 8) + 8))(v63, v65);
        break;
    }
  }

  v69 = sub_1E65D76F8();
  (*(*(v69 - 8) + 8))(v156 + v42, v69);
  v70 = v156 + v42 + *(v151 + 20);
  v71 = swift_getEnumCaseMultiPayload();

  if (v71 == 1)
  {
    v72 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v73 = swift_getEnumCaseMultiPayload();
    switch(v73)
    {
      case 2:

        break;
      case 1:
        v75 = sub_1E65DE788();
        (*(*(v75 - 8) + 8))(v72, v75);
        v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v77 = sub_1E65D76A8();
        (*(*(v77 - 8) + 8))(v72 + v76, v77);
        break;
      case 0:
        v74 = sub_1E65DE788();
        (*(*(v74 - 8) + 8))(v72, v74);
        break;
    }

    v78 = type metadata accessor for WorkoutContextMenuLoadState(0);
    v79 = v72 + v78[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v80 = swift_getEnumCaseMultiPayload();
    if (v80 == 2)
    {
    }

    else if (v80 == 1)
    {
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v82 = sub_1E65D76A8();
      (*(*(v82 - 8) + 8))(v79 + v81, v82);
    }

    v83 = v72 + v78[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v84 = swift_getEnumCaseMultiPayload();
    if (v84 == 2)
    {
    }

    else if (v84 == 1)
    {
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v86 = sub_1E65D76A8();
      (*(*(v86 - 8) + 8))(v83 + v85, v86);
    }

    v87 = v72 + v78[7];
    v88 = swift_getEnumCaseMultiPayload();
    if (v88 == 2)
    {
    }

    else if (v88 == 1)
    {
      v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v90 = sub_1E65D76A8();
      (*(*(v90 - 8) + 8))(v87 + v89, v90);
    }

    v91 = v72 + v78[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
    v92 = swift_getEnumCaseMultiPayload();
    switch(v92)
    {
      case 2:

        break;
      case 1:
        v94 = sub_1E65DE508();
        (*(*(v94 - 8) + 8))(v91, v94);
        v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A400, &unk_1E65F7150) + 48);
        v96 = sub_1E65D76A8();
        (*(*(v96 - 8) + 8))(v91 + v95, v96);
        break;
      case 0:
        v93 = sub_1E65DE508();
        (*(*(v93 - 8) + 8))(v91, v93);
        break;
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E61F1D04(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6000B94(a1, v1 + v5);
}

uint64_t sub_1E61F1DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppComposer(0);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6000E50(a1, a2, a3);
}

uint64_t sub_1E61F1ECC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6000F00(a1, v1 + v5);
}

uint64_t sub_1E61F1FAC(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E62D4088(a1, a2, v2 + v7);
}

uint64_t sub_1E61F208C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E62D47FC(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E61F2180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = a4;
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E62D4FD0(a1, a2, a3, v8, v5 + 16, a5);
}

uint64_t sub_1E61F2248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = a4;
  v12 = *(type metadata accessor for AppComposer(0) - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = v13 + *(v12 + 64);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0) - 8);
  v16 = (v14 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_task_alloc();
  *(v6 + 16) = v18;
  *v18 = v6;
  v18[1] = sub_1E5DFE6BC;

  return sub_1E62D53D0(a1, a2, a3, v8, v5 + v13, v5 + v16, v5 + v17, a5);
}

unint64_t sub_1E61F2440()
{
  result = qword_1EE2D4CC8;
  if (!qword_1EE2D4CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076938, &qword_1E65F7220);
    v1 = MEMORY[0x1E6981F48];
    sub_1E5FED46C(&qword_1EE2D4B38, &qword_1ED076940, &qword_1E65F7228, MEMORY[0x1E6981F48]);
    sub_1E5FED46C(&qword_1EE2D4B30, &qword_1ED076918, &qword_1E65F71F8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4CC8);
  }

  return result;
}

uint64_t sub_1E61F259C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E61ECEF8(v0 + v2, v0 + v5, v0 + v6, v0 + ((v6 + 87) & 0xFFFFFFFFFFFFFFF8));
}

unint64_t sub_1E61F26B4()
{
  result = qword_1EE2D4B58;
  if (!qword_1EE2D4B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073900, &qword_1E65EDC98);
    sub_1E5FED46C(&qword_1EE2D4B48, &qword_1ED073918, &unk_1E65F7260, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4B58);
  }

  return result;
}

uint64_t sub_1E61F27C4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(unint64_t, unint64_t, unint64_t, uint64_t))
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(a3(0) - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v4 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a4(v4 + v9, v4 + v12, v4 + v15, v16);
}

uint64_t sub_1E61F2AA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_101Tm()
{
  v110 = type metadata accessor for AppComposer(0);
  v108 = *(*(v110 - 1) + 80);
  v1 = (v108 + 16) & ~v108;
  v2 = v1 + *(*(v110 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v107 = *(*(v3 - 8) + 80);
  v104 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v105 = *(v4 - 8);
  v106 = v4;
  v103 = *(v105 + 80);
  v109 = v0;
  v100 = v0 + v1;

  v5 = v0 + v1 + v110[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v102 = type metadata accessor for AccountService();
  v101 = *(v102[-1].Description + 1);
  v101(v5 + v7, v102);
  v8 = v6[7];
  v99 = type metadata accessor for AppStateService();
  v98 = *(v99[-1].Description + 1);
  v98(v5 + v8, v99);
  v9 = v6[8];
  v97 = type metadata accessor for ArchivedSessionService();
  v96 = *(v97[-1].Description + 1);
  v96(v5 + v9, v97);
  v10 = v6[9];
  v95 = type metadata accessor for AssetService();
  v94 = *(v95[-1].Description + 1);
  v94(v5 + v10, v95);
  v11 = v6[10];
  v93 = type metadata accessor for AwardsService();
  v92 = *(v93[-1].Description + 1);
  v92(v5 + v11, v93);
  v12 = v6[11];
  v91 = type metadata accessor for BookmarkService();
  v90 = *(v91[-1].Description + 1);
  v90(v5 + v12, v91);
  v13 = v6[12];
  v89 = type metadata accessor for CatalogService();
  v88 = *(v89[-1].Description + 1);
  v88(v5 + v13, v89);
  v14 = v6[13];
  v87 = type metadata accessor for ConfigurationService();
  v86 = *(v87[-1].Description + 1);
  v86(v5 + v14, v87);
  v15 = v6[14];
  v85 = type metadata accessor for ContentAvailabilityService();
  v84 = *(v85[-1].Description + 1);
  v84(v5 + v15, v85);
  v16 = v6[15];
  v83 = type metadata accessor for EngagementService();
  v82 = *(v83[-1].Description + 1);
  v82(v5 + v16, v83);
  v17 = v6[16];
  v81 = type metadata accessor for HealthDataService();
  v80 = *(v81[-1].Description + 1);
  v80(v5 + v17, v81);
  v18 = v6[17];
  v79 = type metadata accessor for InteropService();
  v78 = *(v79[-1].Description + 1);
  v78(v5 + v18, v79);
  v19 = v6[18];
  v77 = type metadata accessor for LocalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(v5 + v19, v77);
  v20 = v6[19];
  v75 = type metadata accessor for MarketingService();
  v74 = *(v75[-1].Description + 1);
  v74(v5 + v20, v75);
  v21 = v6[20];
  v73 = type metadata accessor for MetricService();
  v72 = *(v73[-1].Description + 1);
  v72(v5 + v21, v73);
  v22 = v6[21];
  v71 = type metadata accessor for PersonalizationService();
  v70 = *(v71[-1].Description + 1);
  v70(v5 + v22, v71);
  v23 = v6[22];
  v69 = type metadata accessor for PlayerService();
  v68 = *(v69[-1].Description + 1);
  v68(v5 + v23, v69);
  v24 = v6[23];
  v67 = type metadata accessor for PrivacyPreferenceService();
  v66 = *(v67[-1].Description + 1);
  v66(v5 + v24, v67);
  v25 = v6[24];
  v65 = type metadata accessor for RecommendationService();
  v64 = *(v65[-1].Description + 1);
  v64(v5 + v25, v65);
  v26 = v6[25];
  v63 = type metadata accessor for RemoteBrowsingService();
  v62 = *(v63[-1].Description + 1);
  v62(v5 + v26, v63);
  v27 = v6[26];
  v61 = type metadata accessor for SearchService();
  v60 = *(v61[-1].Description + 1);
  v60(v5 + v27, v61);
  v28 = v6[27];
  v59 = type metadata accessor for ServiceSubscriptionService();
  v58 = *(v59[-1].Description + 1);
  v58(v5 + v28, v59);
  v29 = v6[28];
  v52 = type metadata accessor for SessionService();
  v57 = *(v52[-1].Description + 1);
  v57(v5 + v29, v52);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v56 = *(v31[-1].Description + 1);
  v56(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v55 = *(v33[-1].Description + 1);
  v55(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v54 = *(v35[-1].Description + 1);
  v54(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v53 = *(QueueService[-1].Description + 1);
  v53(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v51 = *(v39[-1].Description + 1);
  v51(v5 + v38, v39);

  v40 = v100 + v110[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v101(v41 + v6[6], v102);
  v98(v41 + v6[7], v99);
  v96(v41 + v6[8], v97);
  v94(v41 + v6[9], v95);
  v92(v41 + v6[10], v93);
  v90(v41 + v6[11], v91);
  v88(v41 + v6[12], v89);
  v86(v41 + v6[13], v87);
  v84(v41 + v6[14], v85);
  v82(v41 + v6[15], v83);
  v80(v41 + v6[16], v81);
  v78(v41 + v6[17], v79);
  v76(v41 + v6[18], v77);
  v74(v41 + v6[19], v75);
  v72(v41 + v6[20], v73);
  v70(v41 + v6[21], v71);
  v68(v41 + v6[22], v69);
  v66(v41 + v6[23], v67);
  v64(v41 + v6[24], v65);
  v62(v41 + v6[25], v63);
  v60(v41 + v6[26], v61);
  v58(v41 + v6[27], v59);
  v57(v41 + v6[28], v52);
  v56(v41 + v6[29], v31);
  v55(v41 + v6[30], v33);
  v54(v41 + v6[31], v35);

  v53(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v51(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v100 + v110[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v2 + v107) & ~v107;
  v43 = (v100 + v110[10]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v44 = v109 + v42;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1E6001C2C(*v44, *(v44 + 8), *(v44 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    v46 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D60, &unk_1E65F72D0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v47 = swift_getEnumCaseMultiPayload();
    if (v47 == 2)
    {
    }

    else if (v47 == 1)
    {
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v49 = sub_1E65D76A8();
      (*(*(v49 - 8) + 8))(v46 + v48, v49);
    }
  }

  (*(v105 + 8))(v109 + ((v42 + v104 + v103) & ~v103), v106);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E61F39E4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a3(v5);
}

uint64_t sub_1E61F3A64(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1E61F3AFC(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1 | ((HIDWORD(a1) & 1) << 32);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(v5, v7);
}

uint64_t objectdestroy_131Tm()
{
  v109 = type metadata accessor for AppComposer(0);
  v107 = *(*(v109 - 1) + 80);
  v1 = (v107 + 16) & ~v107;
  v2 = v1 + *(*(v109 - 1) + 64);
  v106 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073988, &unk_1E65F72F0) - 8) + 80);
  v105 = v2 + v106;
  v108 = v0;
  v102 = v0 + v1;

  v3 = v0 + v1 + v109[5];
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v104 = type metadata accessor for AccountService();
  v103 = *(v104[-1].Description + 1);
  v103(v3 + v5, v104);
  v6 = v4[7];
  v101 = type metadata accessor for AppStateService();
  v100 = *(v101[-1].Description + 1);
  v100(v3 + v6, v101);
  v7 = v4[8];
  v99 = type metadata accessor for ArchivedSessionService();
  v98 = *(v99[-1].Description + 1);
  v98(v3 + v7, v99);
  v8 = v4[9];
  v97 = type metadata accessor for AssetService();
  v96 = *(v97[-1].Description + 1);
  v96(v3 + v8, v97);
  v9 = v4[10];
  v95 = type metadata accessor for AwardsService();
  v94 = *(v95[-1].Description + 1);
  v94(v3 + v9, v95);
  v10 = v4[11];
  v93 = type metadata accessor for BookmarkService();
  v92 = *(v93[-1].Description + 1);
  v92(v3 + v10, v93);
  v11 = v4[12];
  v91 = type metadata accessor for CatalogService();
  v90 = *(v91[-1].Description + 1);
  v90(v3 + v11, v91);
  v12 = v4[13];
  v89 = type metadata accessor for ConfigurationService();
  v88 = *(v89[-1].Description + 1);
  v88(v3 + v12, v89);
  v13 = v4[14];
  v87 = type metadata accessor for ContentAvailabilityService();
  v86 = *(v87[-1].Description + 1);
  v86(v3 + v13, v87);
  v14 = v4[15];
  v85 = type metadata accessor for EngagementService();
  v84 = *(v85[-1].Description + 1);
  v84(v3 + v14, v85);
  v15 = v4[16];
  v83 = type metadata accessor for HealthDataService();
  v82 = *(v83[-1].Description + 1);
  v82(v3 + v15, v83);
  v16 = v4[17];
  v81 = type metadata accessor for InteropService();
  v80 = *(v81[-1].Description + 1);
  v80(v3 + v16, v81);
  v17 = v4[18];
  v79 = type metadata accessor for LocalizationService();
  v78 = *(v79[-1].Description + 1);
  v78(v3 + v17, v79);
  v18 = v4[19];
  v77 = type metadata accessor for MarketingService();
  v76 = *(v77[-1].Description + 1);
  v76(v3 + v18, v77);
  v19 = v4[20];
  v75 = type metadata accessor for MetricService();
  v74 = *(v75[-1].Description + 1);
  v74(v3 + v19, v75);
  v20 = v4[21];
  v73 = type metadata accessor for PersonalizationService();
  v72 = *(v73[-1].Description + 1);
  v72(v3 + v20, v73);
  v21 = v4[22];
  v71 = type metadata accessor for PlayerService();
  v70 = *(v71[-1].Description + 1);
  v70(v3 + v21, v71);
  v22 = v4[23];
  v69 = type metadata accessor for PrivacyPreferenceService();
  v68 = *(v69[-1].Description + 1);
  v68(v3 + v22, v69);
  v23 = v4[24];
  v67 = type metadata accessor for RecommendationService();
  v66 = *(v67[-1].Description + 1);
  v66(v3 + v23, v67);
  v24 = v4[25];
  v65 = type metadata accessor for RemoteBrowsingService();
  v64 = *(v65[-1].Description + 1);
  v64(v3 + v24, v65);
  v25 = v4[26];
  v63 = type metadata accessor for SearchService();
  v62 = *(v63[-1].Description + 1);
  v62(v3 + v25, v63);
  v26 = v4[27];
  v61 = type metadata accessor for ServiceSubscriptionService();
  v60 = *(v61[-1].Description + 1);
  v60(v3 + v26, v61);
  v27 = v4[28];
  v54 = type metadata accessor for SessionService();
  v59 = *(v54[-1].Description + 1);
  v59(v3 + v27, v54);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v58 = *(v29[-1].Description + 1);
  v58(v3 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v57 = *(v31[-1].Description + 1);
  v57(v3 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v56 = *(v33[-1].Description + 1);
  v56(v3 + v32, v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v55 = *(QueueService[-1].Description + 1);
  v55(v3 + v34, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v4[34]));

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v53 = *(v37[-1].Description + 1);
  v53(v3 + v36, v37);

  v38 = v102 + v109[7];

  v39 = v38 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v103(v39 + v4[6], v104);
  v100(v39 + v4[7], v101);
  v98(v39 + v4[8], v99);
  v96(v39 + v4[9], v97);
  v94(v39 + v4[10], v95);
  v92(v39 + v4[11], v93);
  v90(v39 + v4[12], v91);
  v88(v39 + v4[13], v89);
  v86(v39 + v4[14], v87);
  v84(v39 + v4[15], v85);
  v82(v39 + v4[16], v83);
  v80(v39 + v4[17], v81);
  v78(v39 + v4[18], v79);
  v76(v39 + v4[19], v77);
  v74(v39 + v4[20], v75);
  v72(v39 + v4[21], v73);
  v70(v39 + v4[22], v71);
  v68(v39 + v4[23], v69);
  v66(v39 + v4[24], v67);
  v64(v39 + v4[25], v65);
  v62(v39 + v4[26], v63);
  v60(v39 + v4[27], v61);
  v59(v39 + v4[28], v54);
  v58(v39 + v4[29], v29);
  v57(v39 + v4[30], v31);
  v56(v39 + v4[31], v33);

  v55(v39 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v39 + v4[34]));

  v53(v39 + v4[36], v37);
  swift_unknownObjectRelease();
  if (*(v102 + v109[9] + 8) >= 0xCuLL)
  {
  }

  v40 = (v102 + v109[10]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v42 = v108 + (v105 & ~v106) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E10, &unk_1E65FABA0) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v43 = swift_getEnumCaseMultiPayload();
    switch(v43)
    {
      case 2:

        break;
      case 1:
        v45 = sub_1E65DE788();
        (*(*(v45 - 8) + 8))(v42, v45);
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v47 = sub_1E65D76A8();
        (*(*(v47 - 8) + 8))(v42 + v46, v47);
        break;
      case 0:
        v44 = sub_1E65DE788();
        (*(*(v44 - 8) + 8))(v42, v44);
        break;
    }

    v48 = v42 + *(type metadata accessor for StackButtonLoadState(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
    v49 = swift_getEnumCaseMultiPayload();
    if (v49 == 2)
    {
    }

    else if (v49 == 1)
    {
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v51 = sub_1E65D76A8();
      (*(*(v51 - 8) + 8))(v48 + v50, v51);
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_134Tm()
{
  v92 = type metadata accessor for AppComposer(0);
  v1 = (*(*(v92 - 1) + 80) + 16) & ~*(*(v92 - 1) + 80);
  v96 = *(*(v92 - 1) + 64) + v1 + 7;
  v97 = v0;
  v2 = v0 + v1;
  v93 = v0 + v1;

  v3 = v2 + v92[5];
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v95 = type metadata accessor for AccountService();
  v94 = *(v95[-1].Description + 1);
  v94(v3 + v5, v95);
  v6 = v4[7];
  v91 = type metadata accessor for AppStateService();
  v90 = *(v91[-1].Description + 1);
  v90(v3 + v6, v91);
  v7 = v4[8];
  v89 = type metadata accessor for ArchivedSessionService();
  v88 = *(v89[-1].Description + 1);
  v88(v3 + v7, v89);
  v8 = v4[9];
  v87 = type metadata accessor for AssetService();
  v86 = *(v87[-1].Description + 1);
  v86(v3 + v8, v87);
  v9 = v4[10];
  v85 = type metadata accessor for AwardsService();
  v84 = *(v85[-1].Description + 1);
  v84(v3 + v9, v85);
  v10 = v4[11];
  v83 = type metadata accessor for BookmarkService();
  v82 = *(v83[-1].Description + 1);
  v82(v3 + v10, v83);
  v11 = v4[12];
  v81 = type metadata accessor for CatalogService();
  v80 = *(v81[-1].Description + 1);
  v80(v3 + v11, v81);
  v12 = v4[13];
  v79 = type metadata accessor for ConfigurationService();
  v78 = *(v79[-1].Description + 1);
  v78(v3 + v12, v79);
  v13 = v4[14];
  v77 = type metadata accessor for ContentAvailabilityService();
  v76 = *(v77[-1].Description + 1);
  v76(v3 + v13, v77);
  v14 = v4[15];
  v75 = type metadata accessor for EngagementService();
  v74 = *(v75[-1].Description + 1);
  v74(v3 + v14, v75);
  v15 = v4[16];
  v73 = type metadata accessor for HealthDataService();
  v72 = *(v73[-1].Description + 1);
  v72(v3 + v15, v73);
  v16 = v4[17];
  v71 = type metadata accessor for InteropService();
  v70 = *(v71[-1].Description + 1);
  v70(v3 + v16, v71);
  v17 = v4[18];
  v69 = type metadata accessor for LocalizationService();
  v68 = *(v69[-1].Description + 1);
  v68(v3 + v17, v69);
  v18 = v4[19];
  v67 = type metadata accessor for MarketingService();
  v66 = *(v67[-1].Description + 1);
  v66(v3 + v18, v67);
  v19 = v4[20];
  v65 = type metadata accessor for MetricService();
  v64 = *(v65[-1].Description + 1);
  v64(v3 + v19, v65);
  v20 = v4[21];
  v63 = type metadata accessor for PersonalizationService();
  v62 = *(v63[-1].Description + 1);
  v62(v3 + v20, v63);
  v21 = v4[22];
  v61 = type metadata accessor for PlayerService();
  v60 = *(v61[-1].Description + 1);
  v60(v3 + v21, v61);
  v22 = v4[23];
  v59 = type metadata accessor for PrivacyPreferenceService();
  v58 = *(v59[-1].Description + 1);
  v58(v3 + v22, v59);
  v23 = v4[24];
  v57 = type metadata accessor for RecommendationService();
  v56 = *(v57[-1].Description + 1);
  v56(v3 + v23, v57);
  v24 = v4[25];
  v55 = type metadata accessor for RemoteBrowsingService();
  v54 = *(v55[-1].Description + 1);
  v54(v3 + v24, v55);
  v25 = v4[26];
  v53 = type metadata accessor for SearchService();
  v52 = *(v53[-1].Description + 1);
  v52(v3 + v25, v53);
  v26 = v4[27];
  v46 = type metadata accessor for ServiceSubscriptionService();
  v51 = *(v46[-1].Description + 1);
  v51(v3 + v26, v46);
  v27 = v4[28];
  v44 = type metadata accessor for SessionService();
  v50 = *(v44[-1].Description + 1);
  v50(v3 + v27, v44);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v49 = *(v29[-1].Description + 1);
  v49(v3 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v48 = *(v31[-1].Description + 1);
  v48(v3 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v47 = *(v33[-1].Description + 1);
  v47(v3 + v32, v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v45 = *(QueueService[-1].Description + 1);
  v45(v3 + v34, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v4[34]));

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v38 = *(v37[-1].Description + 1);
  v38(v3 + v36, v37);

  v39 = v93 + v92[7];

  v40 = v39 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v94(v40 + v4[6], v95);
  v90(v40 + v4[7], v91);
  v88(v40 + v4[8], v89);
  v86(v40 + v4[9], v87);
  v84(v40 + v4[10], v85);
  v82(v40 + v4[11], v83);
  v80(v40 + v4[12], v81);
  v78(v40 + v4[13], v79);
  v76(v40 + v4[14], v77);
  v74(v40 + v4[15], v75);
  v72(v40 + v4[16], v73);
  v70(v40 + v4[17], v71);
  v68(v40 + v4[18], v69);
  v66(v40 + v4[19], v67);
  v64(v40 + v4[20], v65);
  v62(v40 + v4[21], v63);
  v60(v40 + v4[22], v61);
  v58(v40 + v4[23], v59);
  v56(v40 + v4[24], v57);
  v54(v40 + v4[25], v55);
  v52(v40 + v4[26], v53);
  v51(v40 + v4[27], v46);
  v50(v40 + v4[28], v44);
  v49(v40 + v4[29], v29);
  v48(v40 + v4[30], v31);
  v47(v40 + v4[31], v33);

  v45(v40 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v40 + v4[34]));

  v38(v40 + v4[36], v37);
  swift_unknownObjectRelease();
  if (*(v93 + v92[9] + 8) >= 0xCuLL)
  {
  }

  v41 = v96 & 0xFFFFFFFFFFFFFFF8;
  v42 = (v93 + v92[10]);
  if (v42[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  if (*(v97 + v41))
  {
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1((v97 + ((v41 + 87) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1E61F5834(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v10 = v3 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return a3(v3 + v7, v10);
}

uint64_t objectdestroy_140Tm()
{
  v118 = type metadata accessor for AppComposer(0);
  v116 = *(*(v118 - 1) + 80);
  v1 = (v116 + 16) & ~v116;
  v2 = v1 + *(*(v118 - 1) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v115 = *(*(v3 - 8) + 80);
  v112 = *(*(v3 - 8) + 64);
  v4 = sub_1E65D76F8();
  v113 = *(v4 - 8);
  v114 = v4;
  v111 = *(v113 + 80);
  v110 = *(v113 + 64);
  v117 = v0;
  v107 = v0 + v1;

  v5 = v0 + v1 + v118[5];
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment(0);
  v7 = v6[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(v5 + v7, v109);
  v8 = v6[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(v5 + v8, v106);
  v9 = v6[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(v5 + v9, v104);
  v10 = v6[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(v5 + v10, v102);
  v11 = v6[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(v5 + v11, v100);
  v12 = v6[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(v5 + v12, v98);
  v13 = v6[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(v5 + v13, v96);
  v14 = v6[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(v5 + v14, v94);
  v15 = v6[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(v5 + v15, v92);
  v16 = v6[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(v5 + v16, v90);
  v17 = v6[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(v5 + v17, v88);
  v18 = v6[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(v5 + v18, v86);
  v19 = v6[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(v5 + v19, v84);
  v20 = v6[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(v5 + v20, v82);
  v21 = v6[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(v5 + v21, v80);
  v22 = v6[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(v5 + v22, v78);
  v23 = v6[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(v5 + v23, v76);
  v24 = v6[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(v5 + v24, v74);
  v25 = v6[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(v5 + v25, v72);
  v26 = v6[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(v5 + v26, v70);
  v27 = v6[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(v5 + v27, v68);
  v28 = v6[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(v5 + v28, v66);
  v29 = v6[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(v5 + v29, v59);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v63 = *(v31[-1].Description + 1);
  v63(v5 + v30, v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v62 = *(v33[-1].Description + 1);
  v62(v5 + v32, v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v61 = *(v35[-1].Description + 1);
  v61(v5 + v34, v35);

  v36 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(v5 + v36, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v5 + v6[34]));

  v38 = v6[36];
  v39 = type metadata accessor for WorkoutPlanService();
  v58 = *(v39[-1].Description + 1);
  v58(v5 + v38, v39);

  v40 = v107 + v118[7];

  v41 = v40 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v108(v41 + v6[6], v109);
  v105(v41 + v6[7], v106);
  v103(v41 + v6[8], v104);
  v101(v41 + v6[9], v102);
  v99(v41 + v6[10], v100);
  v97(v41 + v6[11], v98);
  v95(v41 + v6[12], v96);
  v93(v41 + v6[13], v94);
  v91(v41 + v6[14], v92);
  v89(v41 + v6[15], v90);
  v87(v41 + v6[16], v88);
  v85(v41 + v6[17], v86);
  v83(v41 + v6[18], v84);
  v81(v41 + v6[19], v82);
  v79(v41 + v6[20], v80);
  v77(v41 + v6[21], v78);
  v75(v41 + v6[22], v76);
  v73(v41 + v6[23], v74);
  v71(v41 + v6[24], v72);
  v69(v41 + v6[25], v70);
  v67(v41 + v6[26], v68);
  v65(v41 + v6[27], v66);
  v64(v41 + v6[28], v59);
  v63(v41 + v6[29], v31);
  v62(v41 + v6[30], v33);
  v61(v41 + v6[31], v35);

  v60(v41 + v6[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v41 + v6[34]));

  v58(v41 + v6[36], v39);
  swift_unknownObjectRelease();
  if (*(v107 + v118[9] + 8) >= 0xCuLL)
  {
  }

  v42 = (v2 + v115) & ~v115;
  v43 = (v107 + v118[10]);
  if (v43[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    v45 = v117 + v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C0, &unk_1E65F7310) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
    v46 = swift_getEnumCaseMultiPayload();
    switch(v46)
    {
      case 2:

        break;
      case 1:
        v48 = sub_1E65DE788();
        (*(*(v48 - 8) + 8))(v45, v48);
        v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        v50 = sub_1E65D76A8();
        (*(*(v50 - 8) + 8))(v45 + v49, v50);
        break;
      case 0:
        v47 = sub_1E65DE788();
        (*(*(v47 - 8) + 8))(v45, v47);
        break;
    }

    v51 = v45 + *(type metadata accessor for DynamicStartWorkoutButtonLoadState(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    v52 = swift_getEnumCaseMultiPayload();
    if (v52 == 2)
    {
    }

    else if (v52 == 1)
    {
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v54 = sub_1E65D76A8();
      (*(*(v54 - 8) + 8))(v51 + v53, v54);
    }
  }

  v55 = (v42 + v112 + v111) & ~v111;
  v56 = (v110 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v113 + 8))(v117 + v55, v114);
  __swift_destroy_boxed_opaque_existential_1((v117 + v56));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1E61F6934()
{
  result = qword_1EE2D4E70;
  if (!qword_1EE2D4E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076978, &unk_1E65F7320);
    sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E70);
  }

  return result;
}

uint64_t sub_1E61F6A1C()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v8[0] = v0[2];
  v1 = v8[0];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v4;
  v5 = *(type metadata accessor for ContextMenuViewModifier(0, v8) - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1E61E850C(v6, v1, v2, v3, v4);
}

uint64_t sub_1E61F6B50(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v8 - 8);
  if (a2 <= 6u || (result = 0, a2 == 7))
  {
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    (*(v5 + 16))(v7, a1, v4);
    return sub_1E65E5D48();
  }

  return result;
}

__n128 ArtworkDescriptor.init(content:overlayTags:safeAreaInsets:prefersCompositeOverlays:recencyTag:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1E617BA04(a1, a7);
  v13 = type metadata accessor for ArtworkDescriptor(0);
  *(a7 + v13[5]) = a2;
  v14 = (a7 + v13[6]);
  result = *a3;
  v16 = *(a3 + 16);
  *v14 = *a3;
  v14[1] = v16;
  *(a7 + v13[7]) = a4;
  v17 = (a7 + v13[8]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t ArtworkDescriptor.overlayTags.getter()
{
  type metadata accessor for ArtworkDescriptor(0);
}

__n128 ArtworkDescriptor.safeAreaInsets.getter@<Q0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArtworkDescriptor(0) + 24);
  result = *v3;
  v5 = *(v3 + 16);
  *a1 = *v3;
  a1[1] = v5;
  return result;
}

uint64_t ArtworkDescriptor.recencyTag.getter()
{
  v1 = *(v0 + *(type metadata accessor for ArtworkDescriptor(0) + 32));

  return v1;
}

uint64_t sub_1E61F7284()
{
  v1 = *v0;
  v2 = 0x746E65746E6F63;
  v3 = 0x6165724165666173;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0x5479636E65636572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5479616C7265766FLL;
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

uint64_t sub_1E61F733C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E61F82D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E61F7364(uint64_t a1)
{
  v2 = sub_1E61F7EB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E61F73A0(uint64_t a1)
{
  v2 = sub_1E61F7EB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

int *static ArtworkDescriptor.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  if (sub_1E65E4B48())
  {
    v5 = 8.0;
  }

  else
  {
    v5 = 4.0;
  }

  sub_1E617BA04(v4, a1);
  result = type metadata accessor for ArtworkDescriptor(0);
  *(a1 + result[5]) = MEMORY[0x1E69E7CD0];
  v7 = a1 + result[6];
  *v7 = 0;
  *(v7 + 8) = v5;
  *(v7 + 16) = v5;
  *(v7 + 24) = 0x4020000000000000;
  *(a1 + result[7]) = 1;
  v8 = (a1 + result[8]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t ArtworkDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076980, &qword_1E65F7330);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E61F7EB0();
  sub_1E65E6DA8();
  LOBYTE(v13[0]) = 0;
  type metadata accessor for ArtworkContent(0);
  sub_1E5DF3DD0(&qword_1EE2DAAB8, type metadata accessor for ArtworkContent, &protocol conformance descriptor for ArtworkContent);
  sub_1E65E6B78();
  if (!v2)
  {
    v9 = type metadata accessor for ArtworkDescriptor(0);
    *&v13[0] = *(v3 + *(v9 + 20));
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076988, &qword_1E65F7338);
    sub_1E61F7FAC(&qword_1EE2D4718, sub_1E61F7F04, MEMORY[0x1E69E64F0]);
    sub_1E65E6B78();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v13[0] = *v10;
    v13[1] = v11;
    v14 = 2;
    sub_1E61F7F58();
    sub_1E65E6B78();
    LOBYTE(v13[0]) = 3;
    sub_1E65E6B58();
    LOBYTE(v13[0]) = 4;
    sub_1E65E6B28();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ArtworkDescriptor.hash(into:)(uint64_t a1)
{
  ArtworkContent.hash(into:)(a1);
  v2 = type metadata accessor for ArtworkDescriptor(0);
  sub_1E61B7778();
  ArtworkEdgeInsets.hash(into:)();
  sub_1E65E6D48();
  if (!*(v1 + *(v2 + 32) + 8))
  {
    return sub_1E65E6D48();
  }

  sub_1E65E6D48();

  return sub_1E65E5D78();
}

uint64_t ArtworkDescriptor.hashValue.getter()
{
  sub_1E65E6D28();
  ArtworkDescriptor.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t ArtworkDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076990, &qword_1E65F7340);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ArtworkDescriptor(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1E61F7EB0();
  v12 = v7;
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v13 = v26;
  v14 = v10;
  LOBYTE(v30) = 0;
  sub_1E5DF3DD0(&qword_1ED076998, type metadata accessor for ArtworkContent, &protocol conformance descriptor for ArtworkContent);
  v16 = v27;
  v15 = v28;
  sub_1E65E6AD8();
  sub_1E617BA04(v16, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076988, &qword_1E65F7338);
  v32 = 1;
  sub_1E61F7FAC(&qword_1ED0769A0, sub_1E61F8024, MEMORY[0x1E69E6510]);
  sub_1E65E6AD8();
  *(v14 + v8[5]) = v30;
  v32 = 2;
  sub_1E61F8078();
  sub_1E65E6AD8();
  v17 = (v14 + v8[6]);
  v18 = v31;
  *v17 = v30;
  v17[1] = v18;
  LOBYTE(v30) = 3;
  *(v14 + v8[7]) = sub_1E65E6AB8() & 1;
  LOBYTE(v30) = 4;
  v19 = sub_1E65E6A88();
  v21 = v20;
  (*(v13 + 8))(v12, v15);
  v22 = (v14 + v8[8]);
  *v22 = v19;
  v22[1] = v21;
  sub_1E61F80CC(v14, v25, type metadata accessor for ArtworkDescriptor);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1E61F8134(v14, type metadata accessor for ArtworkDescriptor);
}

uint64_t sub_1E61F7D44()
{
  sub_1E65E6D28();
  ArtworkDescriptor.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E61F7D88(uint64_t a1)
{
  sub_1E65E6D28();
  ArtworkDescriptor.hash(into:)(v2);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard17ArtworkDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static ArtworkContent.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ArtworkDescriptor(0);
  if ((sub_1E63DAF94() & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v4[6]), *(a2 + v4[6])), vceqq_f64(*(a1 + v4[6] + 16), *(a2 + v4[6] + 16))))) & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v6 = v4[8];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1E65E6C18() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1E61F7EB0()
{
  result = qword_1EE2D9ED0;
  if (!qword_1EE2D9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9ED0);
  }

  return result;
}

unint64_t sub_1E61F7F04()
{
  result = qword_1EE2D9DD0;
  if (!qword_1EE2D9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9DD0);
  }

  return result;
}

unint64_t sub_1E61F7F58()
{
  result = qword_1EE2D9DD8;
  if (!qword_1EE2D9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9DD8);
  }

  return result;
}

uint64_t sub_1E61F7FAC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076988, &qword_1E65F7338);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E61F8024()
{
  result = qword_1ED0769A8;
  if (!qword_1ED0769A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0769A8);
  }

  return result;
}

unint64_t sub_1E61F8078()
{
  result = qword_1ED0769B0;
  if (!qword_1ED0769B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0769B0);
  }

  return result;
}

uint64_t sub_1E61F80CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61F8134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E61F81D0()
{
  result = qword_1ED0769B8;
  if (!qword_1ED0769B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0769B8);
  }

  return result;
}

unint64_t sub_1E61F8228()
{
  result = qword_1EE2D9EC0;
  if (!qword_1EE2D9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9EC0);
  }

  return result;
}

unint64_t sub_1E61F8280()
{
  result = qword_1EE2D9EC8;
  if (!qword_1EE2D9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9EC8);
  }

  return result;
}

uint64_t sub_1E61F82D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5479616C7265766FLL && a2 == 0xEB00000000736761 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6165724165666173 && a2 == 0xEE00737465736E49 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E6614930 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5479636E65636572 && a2 == 0xEA00000000006761)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E61F84B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v67 = a4;
  v65 = a3;
  v59 = a1;
  v60 = a2;
  v63 = a5;
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v62 = &v56 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v56 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v56 - v16;
  v58 = (&v56 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v56 - v18;
  sub_1E61FAC64(v5, &v56 - v18, type metadata accessor for AppComposer);
  v20 = *(v8 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1E5E1FA80(v19, v23 + v21);
  v24 = (v23 + v22);
  v25 = v60;
  *v24 = v59;
  v24[1] = v25;
  v26 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  v27 = v67;
  *v26 = v65;
  v26[1] = v27;
  sub_1E65E5148();

  v28 = sub_1E65E5138();
  v66 = v6;
  v67 = v28;
  v29 = v6;
  v57 = type metadata accessor for AppComposer;
  sub_1E61FAC64(v6, v17, type metadata accessor for AppComposer);
  v59 = ((v20 + 32) & ~v20) + v9;
  v60 = (v20 + 32) & ~v20;
  v30 = v59 & 0xFFFFFFFFFFFFFFF8;
  v31 = ((v59 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v65 = &unk_1E65F7600;
  *(v32 + 16) = &unk_1E65F7600;
  *(v32 + 24) = v23;
  v56 = v23;
  sub_1E5E1FA80(v58, v32 + ((v20 + 32) & ~v20));
  *(v32 + ((v20 + 32) & ~v20) + v9) = 0;
  v33 = v32 + v30;
  v58 = sub_1E6172524;
  *(v33 + 8) = sub_1E6172524;
  *(v33 + 16) = 0;
  v34 = (v32 + v31);
  v35 = MEMORY[0x1E69AB380];
  v36 = v67;
  *v34 = v67;
  v34[1] = v35;
  v37 = v61;
  sub_1E61FAC64(v29, v61, type metadata accessor for AppComposer);
  v38 = (v20 + 48) & ~v20;
  v39 = v38 + v9;
  v40 = (v38 + v9) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v65;
  v41[2] = v65;
  v41[3] = v23;
  v41[4] = v36;
  v41[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v37, v41 + v38);
  *(v41 + v39) = 0;
  v43 = v41 + v40;
  v44 = v57;
  v45 = v58;
  *(v43 + 1) = v58;
  *(v43 + 2) = 0;
  v46 = v62;
  sub_1E61FAC64(v66, v62, v44);
  v47 = (v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v48[2] = v42;
  v49 = v56;
  v50 = v67;
  v48[3] = v56;
  v48[4] = v50;
  v48[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v46, v48 + v38);
  v51 = v48 + v47;
  *v51 = v45;
  *(v51 + 1) = 0;
  v51[16] = 0;
  v52 = v64;
  sub_1E61FAC64(v66, v64, v44);
  v53 = swift_allocObject();
  *(v53 + 16) = v65;
  *(v53 + 24) = v49;
  sub_1E5E1FA80(v52, v53 + v60);
  swift_retain_n();
  result = swift_retain_n();
  v55 = v63;
  *v63 = result;
  v55[1] = MEMORY[0x1E69AB380];
  v55[2] = &unk_1E65EB918;
  v55[3] = v32;
  v55[4] = &unk_1E65FA770;
  v55[5] = v41;
  v55[6] = &unk_1E65EB920;
  v55[7] = v48;
  v55[8] = &unk_1E65FA780;
  v55[9] = v53;
  return result;
}

uint64_t sub_1E61F8904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v6[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v6[12] = swift_task_alloc();
  v7 = sub_1E65E31D8();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v8 = sub_1E65E3288();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v9 = sub_1E65E3258();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61F8B64, 0, 0);
}

uint64_t sub_1E61F8B64()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = v0[2];
  if (*(v1 + 16) && (v2 = sub_1E6215038(v0[5], v0[6]), (v3 & 1) != 0))
  {
    v5 = v0[17];
    v4 = v0[18];
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[13];
    v9 = v0[14];
    (*(v9 + 16))(v7, *(v1 + 56) + *(v9 + 72) * v2, v8);

    sub_1E65E31B8();
    (*(v9 + 8))(v7, v8);
    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x1E699EB98])
    {
      v11 = v0[20];
      v10 = v0[21];
      v12 = v0[18];
      v13 = v0[19];
      v14 = v0[11];
      v15 = v0[12];
      v28 = v0[10];
      v29 = v0[9];
      v16 = v0[7];
      v17 = v0[4];
      (*(v0[17] + 96))(v12, v0[16]);
      (*(v11 + 32))(v10, v12, v13);
      sub_1E65E3218();
      v16();
      v18 = sub_1E65D8F38();
      (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
      v19 = type metadata accessor for AppComposer(0);
      sub_1E5FA9D34(*(v17 + *(v19 + 36)), *(v17 + *(v19 + 36) + 8));
      sub_1E65E3228();
      v20 = sub_1E65D74E8();
      (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
      sub_1E65E3248();
      v21 = sub_1E65D9908();
      (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
      v22 = sub_1E65D9F88();
      (*(*(v22 - 8) + 56))(v29, 1, 1, v22);
      sub_1E65D7A28();
      (*(v11 + 8))(v10, v13);
      v23 = 0;
      goto LABEL_7;
    }

    (*(v0[17] + 8))(v0[18], v0[16]);
  }

  else
  {
  }

  v23 = 1;
LABEL_7:
  v24 = v0[3];
  v25 = sub_1E65D7A38();
  (*(*(v25 - 8) + 56))(v24, v23, 1, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1E61F8F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a4;
  v60 = a5;
  v7 = sub_1E65E0D48();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v47 - v12;
  v13 = sub_1E65E0D58();
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E0EE8();
  v57 = *(v15 - 8);
  v58 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65E0B48();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v21 = a1;
  v21[1] = a2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073040, &qword_1E65ECE98);
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = swift_allocObject();
  v53 = xmmword_1E65EA670;
  *(v23 + 16) = xmmword_1E65EA670;
  *(v23 + v22) = 6;
  swift_storeEnumTagMultiPayload();

  sub_1E5F9BA30(v23);
  swift_setDeallocating();
  v24 = MEMORY[0x1E699DD40];
  sub_1E61FACCC(v23 + v22, MEMORY[0x1E699DD40]);
  v25 = v17;
  swift_deallocClassInstance();
  (*(v55 + 104))(v54, *MEMORY[0x1E699DED0], v56);
  v26 = swift_allocObject();
  *(v26 + 16) = v53;
  sub_1E61FAC64(v21, v26 + v22, MEMORY[0x1E699DD40]);
  sub_1E5F9BA30(v26);
  swift_setDeallocating();
  sub_1E61FACCC(v26 + v22, v24);
  swift_deallocClassInstance();
  sub_1E65E0EA8();
  swift_getKeyPath();
  sub_1E65E4EC8();

  v27 = v61;
  if (!*(v61 + 16) || (v28 = sub_1E6416E08(v21), (v29 & 1) == 0))
  {

LABEL_7:
    v42 = v57;
    v41 = v58;
    goto LABEL_8;
  }

  v31 = v50;
  v30 = v51;
  v32 = v52;
  (*(v50 + 16))(v52, *(v27 + 56) + *(v50 + 72) * v28, v51);

  if ((*(v31 + 88))(v32, v30) != *MEMORY[0x1E699DEA0])
  {
    (*(v31 + 8))(v32, v30);
    goto LABEL_7;
  }

  (*(v31 + 96))(v32, v30);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C8, &qword_1E65F75E0);
  v34 = v33[12];
  v35 = v33[16];
  v36 = v33[20];

  v37 = v48;
  sub_1E61FAAB8(v32, v48);
  sub_1E5DFE50C(v32 + v36, &qword_1ED0769D0, &qword_1E65F75E8);
  sub_1E5DFE50C(v32 + v35, &qword_1ED0769D8, &qword_1E65F75F0);
  v38 = sub_1E65E0D08();
  (*(*(v38 - 8) + 8))(v32 + v34, v38);
  v39 = v37;
  v40 = v49;
  sub_1E61FAAB8(v39, v49);
  v42 = v57;
  v41 = v58;
  if ((*(v57 + 48))(v40, 1, v58) == 1)
  {
    sub_1E5DFE50C(v40, &qword_1ED0769C0, &qword_1E65F75B0);
  }

  else
  {
    (*(v42 + 8))(v25, v41);
    (*(v42 + 32))(v25, v40, v41);
  }

LABEL_8:
  v43 = v60;
  sub_1E601B608();
  (*(v42 + 8))(v25, v41);
  sub_1E61FACCC(v21, MEMORY[0x1E699DD40]);
  v44 = *v59;
  v45 = sub_1E65D8F38();
  return (*(*(v45 - 8) + 104))(v43, v44, v45);
}

uint64_t sub_1E61F966C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for PageMetricsClick(0);
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = sub_1E65E31E8();
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61F9748, 0, 0);
}

uint64_t sub_1E61F9748()
{
  sub_1E61FAC64(*(v0 + 16), *(v0 + 72), MEMORY[0x1E699EB78]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v56 = *(v0 + 56);
      v57 = *(v0 + 24);
      v58 = *(v0 + 32);
      v59 = sub_1E65D9D78();
      (*(*(v59 - 8) + 56))(v56, 1, 1, v59);
      v60 = v58[5];
      v61 = *MEMORY[0x1E69CBA60];
      v62 = sub_1E65D8C68();
      (*(*(v62 - 8) + 104))(v56 + v60, v61, v62);
      v63 = v58[6];
      v64 = sub_1E65D74E8();
      (*(*(v64 - 8) + 56))(v56 + v63, 1, 1, v64);
      v65 = v58[8];
      v66 = sub_1E65DA208();
      (*(*(v66 - 8) + 56))(v56 + v65, 1, 1, v66);
      v67 = v58[14];
      v68 = *MEMORY[0x1E69CBCC8];
      v69 = sub_1E65D8F28();
      (*(*(v69 - 8) + 104))(v56 + v67, v68, v69);
      v70 = v58[15];
      v71 = sub_1E65D9908();
      (*(*(v71 - 8) + 56))(v56 + v70, 1, 1, v71);
      v72 = MEMORY[0x1E69E7CC0];
      v73 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v56 + v58[7]) = v72;
      v74 = (v56 + v58[9]);
      *v74 = 0;
      v74[1] = 0;
      v75 = (v56 + v58[10]);
      *v75 = 0;
      v75[1] = 0;
      *(v56 + v58[11]) = v73;
      v76 = (v56 + v58[12]);
      *v76 = 0;
      v76[1] = 0;
      v77 = (v56 + v58[13]);
      *v77 = 0;
      v77[1] = 0;
      v80 = (*(v57 + 48) + **(v57 + 48));
      v78 = swift_task_alloc();
      *(v0 + 88) = v78;
      *v78 = v0;
      v78[1] = sub_1E61FA344;
      v31 = *(v0 + 56);
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v32 = *(v0 + 48);
      v33 = *(v0 + 24);
      v34 = *(v0 + 32);
      v35 = sub_1E65D9D78();
      (*(*(v35 - 8) + 56))(v32, 1, 1, v35);
      v36 = v34[5];
      v37 = *MEMORY[0x1E69CBA18];
      v38 = sub_1E65D8C68();
      (*(*(v38 - 8) + 104))(v32 + v36, v37, v38);
      v39 = v34[6];
      v40 = sub_1E65D74E8();
      (*(*(v40 - 8) + 56))(v32 + v39, 1, 1, v40);
      v41 = v34[8];
      v42 = sub_1E65DA208();
      (*(*(v42 - 8) + 56))(v32 + v41, 1, 1, v42);
      v43 = v34[14];
      v44 = *MEMORY[0x1E69CBCC8];
      v45 = sub_1E65D8F28();
      (*(*(v45 - 8) + 104))(v32 + v43, v44, v45);
      v46 = v34[15];
      v47 = sub_1E65D9908();
      (*(*(v47 - 8) + 56))(v32 + v46, 1, 1, v47);
      v48 = MEMORY[0x1E69E7CC0];
      v49 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v32 + v34[7]) = v48;
      v50 = (v32 + v34[9]);
      *v50 = 0;
      v50[1] = 0;
      v51 = (v32 + v34[10]);
      *v51 = 0;
      v51[1] = 0;
      *(v32 + v34[11]) = v49;
      v52 = (v32 + v34[12]);
      *v52 = 0;
      v52[1] = 0;
      *(v32 + v34[13]) = xmmword_1E65F75A0;
      v80 = (*(v33 + 48) + **(v33 + 48));
      v53 = swift_task_alloc();
      *(v0 + 104) = v53;
      *v53 = v0;
      v53[1] = sub_1E61FA500;
      v31 = *(v0 + 48);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1E61FACCC(*(v0 + 72), MEMORY[0x1E699EB78]);
LABEL_9:
    v81 = (*(*(v0 + 24) + 16) + **(*(v0 + 24) + 16));
    v54 = swift_task_alloc();
    *(v0 + 80) = v54;
    *v54 = v0;
    v54[1] = sub_1E61FA1D0;

    return v81();
  }

  if (EnumCaseMultiPayload == 1)
  {
    v2 = *(v0 + 72);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 24);
    v6 = *v2;
    v7 = v2[1];
    *(v0 + 152) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769E0, &qword_1E65F7630) + 48);
    v8 = sub_1E65D9D78();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = v4[5];
    v10 = *MEMORY[0x1E69CBA28];
    v11 = sub_1E65D8C68();
    (*(*(v11 - 8) + 104))(v3 + v9, v10, v11);
    v12 = v4[6];
    v13 = sub_1E65D74E8();
    *(v0 + 120) = v13;
    v14 = *(v13 - 8);
    *(v0 + 128) = v14;
    (*(v14 + 56))(v3 + v12, 1, 1, v13);
    v15 = v4[8];
    v16 = sub_1E65DA208();
    (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
    v17 = v4[14];
    v18 = *MEMORY[0x1E69CBCC8];
    v19 = sub_1E65D8F28();
    (*(*(v19 - 8) + 104))(v3 + v17, v18, v19);
    v20 = v4[15];
    v21 = *MEMORY[0x1E69CC420];
    v22 = sub_1E65D9908();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v3 + v20, v21, v22);
    (*(v23 + 56))(v3 + v20, 0, 1, v22);
    v24 = MEMORY[0x1E69E7CC0];
    v25 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v3 + v4[7]) = v24;
    v26 = (v3 + v4[9]);
    *v26 = 0;
    v26[1] = 0;
    v27 = (v3 + v4[10]);
    *v27 = 0;
    v27[1] = 0;
    *(v3 + v4[11]) = v25;
    v28 = (v3 + v4[12]);
    *v28 = 0;
    v28[1] = 0;
    v29 = (v3 + v4[13]);
    *v29 = v6;
    v29[1] = v7;
    v80 = (*(v5 + 48) + **(v5 + 48));
    v30 = swift_task_alloc();
    *(v0 + 136) = v30;
    *v30 = v0;
    v30[1] = sub_1E61FA6BC;
    v31 = *(v0 + 40);
LABEL_13:

    return v80(v31);
  }

  sub_1E61FACCC(*(v0 + 72), MEMORY[0x1E699EB78]);

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_1E61FA1D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E61FA344()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E61FA89C;
  }

  else
  {
    v2 = sub_1E61FA458;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61FA458()
{
  sub_1E61FACCC(*(v0 + 56), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61FA500()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1E61FA944;
  }

  else
  {
    v2 = sub_1E61FA614;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61FA614()
{
  sub_1E61FACCC(*(v0 + 48), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61FA6BC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E61FA9EC;
  }

  else
  {
    v2 = sub_1E61FA7D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E61FA7D0()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 152);
  v4 = *(v0 + 72);
  sub_1E61FACCC(*(v0 + 40), type metadata accessor for PageMetricsClick);
  (*(v1 + 8))(v4 + v3, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E61FA89C()
{
  sub_1E61FACCC(*(v0 + 56), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61FA944()
{
  sub_1E61FACCC(*(v0 + 48), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61FA9EC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 152);
  v4 = *(v0 + 72);
  sub_1E61FACCC(*(v0 + 40), type metadata accessor for PageMetricsClick);
  (*(v1 + 8))(v4 + v3, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E61FAAB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E61FAB28(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v1 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v7);
  v12 = *(v1 + v7 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E61F8904(a1, v1 + v5, v9, v10, v11, v12);
}

uint64_t sub_1E61FAC64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E61FACCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E61FAD2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 96) = a4;
  *(v7 + 40) = type metadata accessor for PageMetricsClick(0);
  *(v7 + 48) = swift_task_alloc();
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61FADD4, 0, 0);
}

uint64_t sub_1E61FADD4()
{
  v1 = *(v0 + 96);
  if (v1 <= 1)
  {
    if (!*(v0 + 96))
    {
LABEL_9:

      v32 = *(v0 + 8);

      return v32();
    }

    v34 = *(v0 + 56);
    v35 = *(v0 + 32);
    v36 = *(v0 + 40);
    v38 = *(v0 + 16);
    v37 = *(v0 + 24);
    v39 = sub_1E65D9D78();
    (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
    v40 = v36[5];
    v41 = *MEMORY[0x1E69CBA00];
    v42 = sub_1E65D8C68();
    (*(*(v42 - 8) + 104))(v34 + v40, v41, v42);
    v43 = v36[6];
    v44 = sub_1E65D74E8();
    (*(*(v44 - 8) + 56))(v34 + v43, 1, 1, v44);
    v45 = v36[8];
    v46 = sub_1E65DA208();
    (*(*(v46 - 8) + 56))(v34 + v45, 1, 1, v46);
    v47 = v36[14];
    v48 = *MEMORY[0x1E69CBCC8];
    v49 = sub_1E65D8F28();
    (*(*(v49 - 8) + 104))(v34 + v47, v48, v49);
    v50 = v36[15];
    v51 = *MEMORY[0x1E69CC498];
    v52 = sub_1E65D9908();
    v53 = *(v52 - 8);
    (*(v53 + 104))(v34 + v50, v51, v52);
    (*(v53 + 56))(v34 + v50, 0, 1, v52);
    v54 = MEMORY[0x1E69E7CC0];
    v55 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v34 + v36[7]) = v54;
    v56 = (v34 + v36[9]);
    *v56 = 0;
    v56[1] = 0;
    v57 = (v34 + v36[10]);
    *v57 = 0;
    v57[1] = 0;
    *(v34 + v36[11]) = v55;
    v58 = (v34 + v36[12]);
    *v58 = 0;
    v58[1] = 0;
    v59 = (v34 + v36[13]);
    *v59 = v38;
    v59[1] = v37;
    v60 = *(v35 + 48);

    v62 = (v60 + *v60);
    v61 = swift_task_alloc();
    *(v0 + 64) = v61;
    *v61 = v0;
    v61[1] = sub_1E6090188;
    v31 = *(v0 + 56);
  }

  else
  {
    if (v1 == 2 || v1 != 3)
    {
      goto LABEL_9;
    }

    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 16);
    v8 = sub_1E65D9D78();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = v4[5];
    v10 = *MEMORY[0x1E69CBA68];
    v11 = sub_1E65D8C68();
    (*(*(v11 - 8) + 104))(v3 + v9, v10, v11);
    v12 = v4[6];
    v13 = sub_1E65D74E8();
    (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
    v14 = v4[8];
    v15 = sub_1E65DA208();
    (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
    v16 = v4[14];
    v17 = *MEMORY[0x1E69CBCC8];
    v18 = sub_1E65D8F28();
    (*(*(v18 - 8) + 104))(v3 + v16, v17, v18);
    v19 = v4[15];
    v20 = *MEMORY[0x1E69CC498];
    v21 = sub_1E65D9908();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v3 + v19, v20, v21);
    (*(v22 + 56))(v3 + v19, 0, 1, v21);
    v23 = MEMORY[0x1E69E7CC0];
    v24 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v3 + v4[7]) = v23;
    v25 = (v3 + v4[9]);
    *v25 = 0;
    v25[1] = 0;
    v26 = (v3 + v4[10]);
    *v26 = 0;
    v26[1] = 0;
    *(v3 + v4[11]) = v24;
    v27 = (v3 + v4[12]);
    *v27 = 0;
    v27[1] = 0;
    v28 = (v3 + v4[13]);
    *v28 = v7;
    v28[1] = v6;
    v29 = *(v5 + 48);

    v62 = (v29 + *v29);
    v30 = swift_task_alloc();
    *(v0 + 80) = v30;
    *v30 = v0;
    v30[1] = sub_1E6090310;
    v31 = *(v0 + 48);
  }

  return v62(v31);
}

uint64_t AppComposer.awardHeaderViewBuilder(awardName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769E8, &qword_1E65F7640);
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v39 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769F0, &qword_1E65F7648);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v39 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769F8, &qword_1E65F7650);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v39 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A00, &qword_1E65F7658);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v39 - v10;
  v11 = type metadata accessor for AppComposer(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A08, &qword_1E65F7660);
  v43 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v39 - v16;
  v17 = a2;
  v18 = sub_1E61FBD68(a1, a2);
  v19 = *(v3 + *(v12 + 28) + 8);
  v48 = v6;
  v44 = v18;
  if (v19 >= 2)
  {
    v43 = v15;
    if (v19 == 3)
    {
      v29 = a1;
      sub_1E5E1DEAC(v3, &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v30 = *(v13 + 80);
      v31 = (v30 + 16) & ~v30;
      v32 = swift_allocObject();
      sub_1E5E1FA80(&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
      v33 = (v32 + ((v14 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v33 = v29;
      v33[1] = v17;
      sub_1E5E1DEAC(v3, &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      v34 = swift_allocObject();
      *(v34 + 16) = v29;
      *(v34 + 24) = v17;
      sub_1E5E1FA80(&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + ((v30 + 32) & ~v30));
      sub_1E65DB9C8();
      sub_1E65DBC48();
      sub_1E6200880(qword_1EE2D6BF8, MEMORY[0x1E699D198], MEMORY[0x1E699D190]);
      sub_1E6200880(&qword_1EE2D6BD8, MEMORY[0x1E699D228], MEMORY[0x1E699D220]);
      swift_bridgeObjectRetain_n();

      v35 = v40;
      sub_1E65DBC78();
      v36 = v41;
      v37 = v48;
      (*(v41 + 16))(v47, v35, v48);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1ED076A10, &qword_1ED076A08, &qword_1E65F7660, MEMORY[0x1E699D1B0]);
      sub_1E5FED46C(&qword_1ED076A18, &qword_1ED0769E8, &qword_1E65F7640, MEMORY[0x1E699D240]);
      v38 = v50;
      sub_1E65E4138();
      sub_1E61FC5FC(v38, v52);
      swift_storeEnumTagMultiPayload();
      sub_1E61FC66C();
      sub_1E65E4138();

      sub_1E61FC750(v38);
      return (*(v36 + 8))(v35, v37);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    sub_1E5E1DEAC(v3, &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = *(v13 + 80);
    v21 = (v20 + 16) & ~v20;
    v22 = swift_allocObject();
    sub_1E5E1FA80(&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    v23 = (v22 + ((v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v23 = a1;
    v23[1] = v17;
    sub_1E5E1DEAC(v3, &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    *(v24 + 24) = v17;
    sub_1E5E1FA80(&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + ((v20 + 32) & ~v20));
    sub_1E65DB9C8();
    sub_1E65DBC48();
    sub_1E6200880(qword_1EE2D6BF8, MEMORY[0x1E699D198], MEMORY[0x1E699D190]);
    sub_1E6200880(&qword_1EE2D6BD8, MEMORY[0x1E699D228], MEMORY[0x1E699D220]);
    swift_bridgeObjectRetain_n();

    v25 = v42;
    sub_1E65DBA18();
    v26 = v43;
    (*(v43 + 16))(v47, v25, v15);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1ED076A10, &qword_1ED076A08, &qword_1E65F7660, MEMORY[0x1E699D1B0]);
    sub_1E5FED46C(&qword_1ED076A18, &qword_1ED0769E8, &qword_1E65F7640, MEMORY[0x1E699D240]);
    v27 = v50;
    sub_1E65E4138();
    sub_1E61FC5FC(v27, v52);
    swift_storeEnumTagMultiPayload();
    sub_1E61FC66C();
    sub_1E65E4138();

    sub_1E61FC750(v27);
    return (*(v26 + 8))(v25, v15);
  }

  return result;
}

uint64_t sub_1E61FBD68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A38, &qword_1E65F7690);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v26 - v5;
  v6 = sub_1E65DBCB8();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppComposer(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = sub_1E65DBEA8();
  v27 = v12;
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  sub_1E5E1DEAC(v3, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_1E5E1FA80(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_1E65DBE98();
  (*(v13 + 16))(v16, v18, v12);
  sub_1E65DBCA8();
  v21 = swift_allocObject();
  v22 = v29;
  *(v21 + 16) = v28;
  *(v21 + 24) = v22;
  type metadata accessor for AppFeature(0);
  sub_1E6200880(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E6200880(&qword_1ED076A40, MEMORY[0x1E699D260], MEMORY[0x1E699D258]);

  v23 = v30;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v24 = sub_1E65E4F08();
  (*(v32 + 8))(v23, v33);
  (*(v31 + 8))(v8, v6);
  (*(v13 + 8))(v18, v27);
  return v24;
}

uint64_t sub_1E61FC1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v5 = type metadata accessor for AppComposer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = sub_1E65DBDF8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v33 - v13;
  v41 = sub_1E65DBB28();
  v35 = *(v41 - 8);
  v15 = MEMORY[0x1EEE9AC00](v41);
  v39 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[1] = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v33 - v17;
  sub_1E65DAE38();
  sub_1E65DAE38();
  v40 = v18;
  sub_1E65DBB08();
  sub_1E5E1DEAC(a1, v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = v20 + v7;
  v22 = swift_allocObject();
  sub_1E5E1FA80(v19, v22 + v20);
  sub_1E65DBDE8();
  sub_1E5E1DEAC(a1, v19);
  (*(v9 + 16))(v12, v14, v8);
  v23 = v35;
  (*(v35 + 16))(v39, v40, v41);
  v24 = (v21 + *(v9 + 80)) & ~*(v9 + 80);
  v25 = &v34[v24 + 7] & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v23 + 80);
  v34 = v14;
  v27 = (v26 + v25 + 16) & ~v26;
  v28 = swift_allocObject();
  sub_1E5E1FA80(v19, v28 + v20);
  (*(v9 + 32))(v28 + v24, v12, v8);
  v29 = (v28 + v25);
  v30 = v37;
  *v29 = v36;
  v29[1] = v30;
  v31 = v41;
  (*(v23 + 32))(v28 + v27, v39, v41);

  sub_1E65DB9B8();
  (*(v9 + 8))(v34, v8);
  return (*(v23 + 8))(v40, v31);
}

uint64_t sub_1E61FC5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A00, &qword_1E65F7658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E61FC66C()
{
  result = qword_1ED076A20;
  if (!qword_1ED076A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076A00, &qword_1E65F7658);
    sub_1E5FED46C(&qword_1ED076A10, &qword_1ED076A08, &qword_1E65F7660, MEMORY[0x1E699D1B0]);
    sub_1E5FED46C(&qword_1ED076A18, &qword_1ED0769E8, &qword_1E65F7640, MEMORY[0x1E699D240]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076A20);
  }

  return result;
}

uint64_t sub_1E61FC750(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A00, &qword_1E65F7658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E61FC7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v38 = a4;
  v5 = type metadata accessor for AppComposer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = sub_1E65DBDF8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v33 - v13;
  v41 = sub_1E65DBB28();
  v35 = *(v41 - 8);
  v15 = MEMORY[0x1EEE9AC00](v41);
  v39 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[1] = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v33 - v17;
  sub_1E65DAE38();
  sub_1E65DAE38();
  v40 = v18;
  sub_1E65DBB08();
  sub_1E5E1DEAC(a1, v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = v20 + v7;
  v22 = swift_allocObject();
  sub_1E5E1FA80(v19, v22 + v20);
  sub_1E65DBDE8();
  sub_1E5E1DEAC(a1, v19);
  (*(v9 + 16))(v12, v14, v8);
  v23 = v35;
  (*(v35 + 16))(v39, v40, v41);
  v24 = (v21 + *(v9 + 80)) & ~*(v9 + 80);
  v25 = &v34[v24 + 7] & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v23 + 80);
  v34 = v14;
  v27 = (v26 + v25 + 16) & ~v26;
  v28 = swift_allocObject();
  sub_1E5E1FA80(v19, v28 + v20);
  (*(v9 + 32))(v28 + v24, v12, v8);
  v29 = (v28 + v25);
  v30 = v37;
  *v29 = v36;
  v29[1] = v30;
  v31 = v41;
  (*(v23 + 32))(v28 + v27, v39, v41);

  sub_1E65DB9B8();
  (*(v9 + 8))(v34, v8);
  return (*(v23 + 8))(v40, v31);
}

uint64_t sub_1E61FCBD0(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t sub_1E61FCC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v60 = a8;
  v61 = a7;
  v59 = a6;
  v56 = a5;
  v53 = a3;
  v54 = a4;
  v10 = type metadata accessor for AppComposer(0);
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65DBEF8();
  v57 = *(v13 - 8);
  v58 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v55 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  v18 = sub_1E65DBFB8();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v52 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - v22;
  v24 = sub_1E65DB988();
  v49 = a1;
  v50 = a2;
  if (v24 == a1 && v25 == a2)
  {

    v26 = MEMORY[0x1E699D360];
  }

  else
  {
    v27 = sub_1E65E6C18();

    v26 = MEMORY[0x1E699D368];
    if (v27)
    {
      v26 = MEMORY[0x1E699D360];
    }
  }

  v28 = *v26;
  v29 = *(v19 + 104);
  v47 = v18;
  v48 = v23;
  v29(v23, v28, v18);
  v30 = v53;
  sub_1E5E1DEAC(v53, &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v32 = swift_allocObject();
  sub_1E5E1FA80(v12, v32 + v31);
  v45 = v17;
  sub_1E65DBEE8();
  sub_1E5E1DEAC(v30, v12);
  v34 = v57;
  v33 = v58;
  v35 = v55;
  (*(v57 + 16))(v55, v17, v58);
  v36 = (v31 + v11 + *(v34 + 80)) & ~*(v34 + 80);
  v37 = (v46 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_1E5E1FA80(v12, v38 + v31);
  (*(v34 + 32))(v38 + v36, v35, v33);
  v39 = (v38 + v37);
  v40 = v50;
  *v39 = v49;
  v39[1] = v40;
  v42 = v47;
  v41 = v48;
  (*(v19 + 16))(v52, v48, v47);

  sub_1E65DBC38();
  (*(v34 + 8))(v45, v33);
  return (*(v19 + 8))(v41, v42);
}

uint64_t objectdestroy_2Tm_0()
{
  v93 = type metadata accessor for AppComposer(0);
  v92 = *(*(v93 - 1) + 80);

  v89 = v0 + ((v92 + 32) & ~v92);

  v1 = v89 + v93[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v93[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v93[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v93[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

unint64_t sub_1E61FDE30()
{
  result = qword_1ED076A28;
  if (!qword_1ED076A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076A30, &qword_1E65F7668);
    sub_1E61FC66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076A28);
  }

  return result;
}

uint64_t sub_1E61FDEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A48, &qword_1E65F76A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E65DBB28();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E65DBD68();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1E65DBBE8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppState(0);
  CanvasLayout<>.transform(with:)(a2, a3, v10);
  if (sub_1E65DB988() == a2 && v11 == a3)
  {
  }

  else
  {
    sub_1E65E6C18();
    v14 = a3;

    a3 = v14;
  }

  sub_1E65DAE38();
  sub_1E65DAE38();
  sub_1E65DBB08();
  sub_1E65DBD58();
  v15 = a2;
  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746E8, &qword_1E65F0FB8);
  sub_1E65E4D78();

  return sub_1E65DBAF8();
}

uint64_t sub_1E61FE1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A50, &qword_1E65F76B0);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E61FE2A0, 0, 0);
}

uint64_t sub_1E61FE2A0()
{
  v1 = v0[12];
  v0[16] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[17] = sub_1E65E6058();
  v0[18] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61FE350, v3, v2);
}

uint64_t sub_1E61FE350()
{

  sub_1E5E20198(6, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A58, &qword_1E65F76B8);
  if (swift_dynamicCast())
  {
    *(v0 + 152) = *(v0 + 72);
    v1 = sub_1E61FE48C;
  }

  else
  {
    v1 = sub_1E61FE428;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E61FE428()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E61FE48C(uint64_t a1)
{
  v2 = v1[11];
  v1[7] = v1[10];
  v1[8] = v2;
  v1[20] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61FE520, v4, v3);
}

uint64_t sub_1E61FE520()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E61FE5A0, 0, 0);
}

uint64_t sub_1E61FE5A0(uint64_t a1)
{
  *(v1 + 168) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E61FE62C, v3, v2);
}

uint64_t sub_1E61FE62C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  sub_1E65E4E28();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E61FE6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6435950(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E61FE7C0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v12 = *(type metadata accessor for AppComposer(0) - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1E5DFE6BC;

  return sub_1E64B5C28(a1, a2, a3, v5 + v13, a4, a5);
}

uint64_t objectdestroy_16Tm()
{
  v99 = type metadata accessor for AppComposer(0);
  v97 = *(*(v99 - 1) + 80);
  v93 = *(*(v99 - 1) + 64);
  v96 = sub_1E65DBEF8();
  v94 = *(v96 - 8);
  v92 = *(v94 + 80);
  v98 = v0;
  v95 = (v97 + 16) & ~v97;
  v89 = v0 + v95;

  v1 = v0 + v95 + v99[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v89 + v99[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v89 + v99[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v89 + v99[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  (*(v94 + 8))(v98 + ((v95 + v93 + v92) & ~v92), v96);

  return swift_deallocObject();
}