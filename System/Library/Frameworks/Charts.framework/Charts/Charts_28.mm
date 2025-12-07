uint64_t sub_1AAEC512C@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>, double a4@<D2>)
{
  if (a2.n128_f64[0] <= 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2.n128_f64[0];
    a2.n128_f64[0] = floor(a3 / a2.n128_f64[0]);
    v6 = a2.n128_f64[0] * v4;
    a2.n128_f64[0] = ceil((a4 - a2.n128_f64[0] * v4) / v4);
    sub_1AAEC8604(&v10, a2);
    if ((v11 & 1) == 0)
    {
      v7 = v10;
      v8 = swift_allocObject();
      *(v8 + 16) = v4;
      *(v8 + 24) = v6;
      result = swift_allocObject();
      *(result + 16) = v6;
      *(result + 24) = v4;
      *a1 = v4;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      *(a1 + 24) = sub_1AAEC8F48;
      *(a1 + 32) = v8;
      *(a1 + 40) = sub_1AAEC8F60;
      *(a1 + 48) = result;
      *(a1 + 56) = 0;
      return result;
    }
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
  MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAEC52CC(__n128 a1, double a2, double a3)
{
  a1.n128_f64[0] = floor((a1.n128_f64[0] - a2) / a3);
  sub_1AAEC8604(&v4, a1);
  if ((v5 & 1) == 0)
  {
    return v4;
  }

  v4 = 0;
  v5 = 0xE000000000000000;
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
  MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
  MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

void sub_1AAEC53D4(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(v2 + 56))
  {
    v7 = *(v2 + 24);
    sub_1AAEC8CE4(v2, v12);
    v7(v12, a1);
    if (!__OFADD__(a1, 1))
    {
      v7(&v11, a1 + 1);
      v9 = v11;
      v8 = v12[0];
      v10 = sub_1AADE683C();

      if (!__OFSUB__(v10, 1))
      {
        v6 = v10 - 1 == a1;
        *a2 = v8;
        *(a2 + 8) = v9;
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(v2 + 56) == 1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v5 = *(*v2 + 16);
      if ((v5 - 1) > a1)
      {
        if (v5 > a1)
        {
          v6 = v5 - 2 == a1;
          *a2 = *(*v2 + 8 * a1 + 32);
LABEL_10:
          *(a2 + 16) = v6;
          return;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
}

char *sub_1AAEC5500(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 2);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *&v1[8 * i];
    v8 = *&v1[8 * v4];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AADB8144(v1);
      v1 = result;
    }

    *&v1[8 * i] = v8;
    *&v1[8 * v4] = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_1AAEC55B8(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1AADB825C(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_1AAEC56D0()
{
  v1 = type metadata accessor for AxisMarksResult(0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v0 + 16);
  if (!v6)
  {
    return;
  }

  v7 = *(v2 + 36);
  v8 = *v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v9 = *(v3 + 72);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1AACD1BE8(v8, v5, type metadata accessor for AxisMarksResult);
    v11 = *&v5[v7];

    sub_1AAEC8978(v5, type metadata accessor for AxisMarksResult);
    v12 = *(v11 + 16);
    v13 = *(v10 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= *(v10 + 3) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v10 = sub_1AAD68E28(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      if (*(v11 + 16))
      {
LABEL_14:
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v12)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_22;
          }

          *(v10 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_20;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1AAEC58D8()
{
  v3 = v0;
  v436 = *MEMORY[0x1E69E9840];
  v359 = sub_1AAF8CA64();
  v340 = *(v359 - 8);
  MEMORY[0x1EEE9AC00](v359);
  v354 = (&v306 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v355 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v375 = &v306 - v6;
  *&v338 = COERCE_DOUBLE(type metadata accessor for AxisMarkValues.Storage.Stride(0));
  MEMORY[0x1EEE9AC00](v338);
  v330 = &v306 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1AACAF24C(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v333 = &v306 - v10;
  v343 = type metadata accessor for AxisMarkValues.Storage(0);
  v380 = *(v343 - 8);
  MEMORY[0x1EEE9AC00](v343);
  v353 = (&v306 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v332 = type metadata accessor for AxisMarksResult(0);
  v335 = *(v332 - 8);
  MEMORY[0x1EEE9AC00](v332);
  v358 = &v306 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v339 = &v306 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v378 = &v306 - v16;
  v17 = type metadata accessor for AxisMarksConfiguration(0);
  v18 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v367 = (&v306 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAEC8598(0);
  v344 = v20;
  v377 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v328 = (&v306 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACAF24C(0, &qword_1ED9AD890, sub_1AAEC8598, v8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v346 = &v306 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v334 = (&v306 - v25);
  v350 = sub_1AAF8CBA4();
  v348 = *(v350 - 8);
  MEMORY[0x1EEE9AC00](v350);
  v327 = &v306 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v306 - v28;
  v30 = sub_1AAF8CAA4();
  v341 = *(v30 - 8);
  v342 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v306 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33 = COERCE_DOUBLE(sub_1AAF8E134());
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v326 = &v306 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v306 - v37;
  v325 = *(v3 + 4);
  Value = AGGraphGetValue();
  v41 = v40;
  v347 = v34;
  v323 = *(v34 + 16);
  v324 = v34 + 16;
  v323(v38, Value, v33);
  v351 = v32;
  sub_1AAF8E104();
  v349 = v29;
  v357 = v38;
  sub_1AAF8E114();
  v42 = AGGraphGetValue();
  v44 = v43;
  LODWORD(v379) = *v42;
  v45 = *(v42 + 1);
  v381 = *(v42 + 2);
  v345 = v17;
  v329 = v18;
  if (v45)
  {
    v46 = v45;
  }

  else
  {
    sub_1AACAF24C(0, &qword_1ED9B1DF0, type metadata accessor for AxisMarksConfiguration, MEMORY[0x1E69E6F90]);
    v47 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1AAF92AB0;
    v48 = (v46 + v47);
    (*(v380 + 56))(&v48[v17[6]], 1, 1, v343);
    v49 = &v48[v17[7]];
    v49[40] = 2;
    *(v49 + 4) = 0;
    *v49 = 0u;
    *(v49 + 1) = 0u;
    v50 = &v48[v17[8]];
    *(v50 + 4) = 0;
    *v50 = 0u;
    *(v50 + 1) = 0u;
    *v48 = 1027;
  }

  swift_bridgeObjectRetain_n();

  v51 = AGGraphGetValue();
  v53 = v52;
  sub_1AADFA56C(v51, &v414);
  if ((v41 & 1) == 0 && (v44 & 1) == 0 && (v53 & 1) == 0)
  {

    sub_1AAD58120(&v414);
    (*(v348 + 8))(v349, v350);
    (*(v341 + 8))(v351, v342);
    return (*(v347 + 8))(v357, v33);
  }

  v54 = *(v3 + 12);
  v368 = v54;
  v322 = *&v33;
  if (v54)
  {
    v55 = v378;
    if (v54 == 1)
    {
      v56 = v424;
      v57 = &v423;
      v58 = &v422;
      v59 = &v421;
      v60 = v419[1];
      v61 = &v420;
    }

    else
    {
      v56 = &v429;
      v57 = &v428;
      v58 = &v427;
      v59 = &v426;
      v60 = v424[1];
      v61 = &v425;
    }
  }

  else
  {
    v56 = v419;
    v57 = &v418;
    v58 = &v417;
    v59 = &v416;
    v60 = v414;
    v61 = &v415;
    v55 = v378;
  }

  v62 = *v61;
  v63 = *v59;
  v64 = *v58;
  v65 = *v56;
  v66 = *v61;
  v67 = *v59;
  v68 = *v58;
  v376 = *v57;
  sub_1AAE682A0(v60, *&v66, v67, v68, v376);
  sub_1AACBE71C();
  sub_1AAF8E144();
  v69 = *v391;
  if (*(*v391 + 16) && (v70 = sub_1AACB6398(v368), (v71 & 1) != 0))
  {
    v72 = *(v69 + 56) + 72 * v70;
    v390[0] = *v72;
    v74 = *(v72 + 32);
    v73 = *(v72 + 48);
    v75 = *(v72 + 64);
    v390[1] = *(v72 + 16);
    v390[2] = v74;
    LOBYTE(v390[4]) = v75;
    v390[3] = v73;
    *&v391[16] = *(v72 + 16);
    *&v391[32] = *(v72 + 32);
    *&v391[48] = *(v72 + 48);
    v391[64] = *(v72 + 64);
    *v391 = *v72;
    sub_1AACB1E30(v390, v389);

    v411 = *&v391[32];
    v412 = *&v391[48];
    v413 = v391[64];
    v410 = *&v391[16];
    v409 = *v391;
  }

  else
  {

    v409 = xmmword_1AAF94BF0;
    v410 = 0u;
    v411 = 0u;
    v412 = 0u;
    v413 = 0;
  }

  v337 = v46;
  LODWORD(v77) = 0;
  v370 = v65;
  if (v65)
  {
    v78 = 1;
  }

  else
  {
    v78 = v64 == 1;
  }

  v79 = !v78;
  if (BYTE8(v409) == 254)
  {
    goto LABEL_42;
  }

  v80 = HIBYTE(WORD4(v411));
  if (v80 > 0xFE)
  {
    goto LABEL_42;
  }

  if (HIBYTE(WORD4(v411)) <= 1u)
  {
    v81 = v370;
    v82 = v410;
    sub_1AACAF2E4(v410, *(&v410 + 1), v411, WORD4(v411), v80 != 0);
    v313 = 0;
    v94 = v368;
    v95 = v340;
LABEL_29:
    v317 = v82;
    if (v64 == 1)
    {

      v96 = v375;
    }

    else
    {

      v96 = v375;
      if (v80 != v81)
      {
        if (qword_1ED9B59F0 != -1)
        {
          swift_once();
        }

        v97 = qword_1ED9C36C8;
        v98 = sub_1AAF8FD04();
        sub_1AACAF24C(0, &qword_1ED9AEE70, sub_1AAD6E5E0, MEMORY[0x1E69E6F90]);
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_1AAF92AB0;
        *v391 = 0;
        *&v391[8] = 0xE000000000000000;
        sub_1AAF900D4();
        MEMORY[0x1AC5982F0](0xD000000000000048, 0x80000001AAFCFCB0);
        LOBYTE(v390[0]) = v80;
        sub_1AAF90284();
        MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCFD00);
        LOBYTE(v390[0]) = v368;
        v94 = v368;
        sub_1AAF90284();
        v100 = *v391;
        v101 = *&v391[8];
        *(v99 + 56) = MEMORY[0x1E69E6158];
        *(v99 + 64) = sub_1AAD6E644();
        *(v99 + 32) = v100;
        *(v99 + 40) = v101;
        sub_1AAF8D7B4(v98, &dword_1AACA8000, v97, "%s", v306);

        v95 = v340;
        v96 = v375;
        v55 = v378;
        v82 = v317;
      }
    }

    v314 = 0;
    v102 = BYTE8(v409);
    v103 = v410;
    v104 = v411;
    v105 = WORD4(v411);
    v106 = v412;
    v370 = v80;
    v331 = v82;
    v107 = v413;
    goto LABEL_67;
  }

  if (v80 == 2)
  {
    *&v374 = &v306;
    MEMORY[0x1EEE9AC00](v76);
    *(&v306 - 2) = v357;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    sub_1AACAF2E4(v83, v85, v87, v89, 2u);
    sub_1AADE5AC4(sub_1AAEC8CC4, (&v306 - 4), v84);
    v92 = v91;
    v313 = 0;
    v93 = v88;
    v55 = v378;
    sub_1AACAF33C(v84, v86, v93, v90);
    v82 = v92;
    v94 = v368;
    v95 = v340;
    v81 = v370;
    goto LABEL_29;
  }

  v108 = v410;
  v77 = (v410 >> 8) & 1;
  if (BYTE8(v411) == 0xFF)
  {
    v109 = (v410 >> 8) & 1;
    sub_1AACAF33C(v410, *(&v410 + 1), v411, WORD4(v411));
    goto LABEL_40;
  }

  if (qword_1ED9B59F0 != -1)
  {
    v109 = (v410 >> 8) & 1;
    swift_once();
LABEL_40:
    LODWORD(v77) = v109;
  }

  v79 = (v108 == 2) | v108;
LABEL_42:
  if (v64 == 1)
  {

    if (qword_1ED9B59F0 != -1)
    {
      goto LABEL_287;
    }

    goto LABEL_47;
  }

  if ((v63 & 1) != 0 || (v1 = *&v60, v2 = v62, *&v60 > v62))
  {
    v110 = v77;
    v1 = 0.0;
    v2 = 0.0;
  }

  else
  {
    v110 = v77;
  }

  sub_1AAEC9110(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
  v117 = swift_allocObject();
  v118 = v117;
  v374 = xmmword_1AAF9E2B0;
  *(v117 + 16) = xmmword_1AAF9E2B0;
  *(v117 + 32) = v1;
  *(v117 + 40) = v2;
  v94 = v368;
  v95 = v340;
  if (v79)
  {
    *v391 = v117;
    sub_1AADC8AB4(&unk_1F1FCF238);
    v118 = *v391;
  }

  v119 = sub_1AACEC978(v118);
  if (v121)
  {
    v331 = &unk_1F1FCF260;
  }

  else
  {
    v122 = v119;
    v123 = v120;
    v124 = swift_allocObject();
    *(v124 + 16) = v374;
    *(v124 + 32) = v122;
    *(v124 + 40) = v123;
    v331 = v124;
  }

  v55 = v378;
  v125 = v370;

  if (v110)
  {
    v331 = sub_1AAEC5500(v331);
  }

  if (v125 > 1)
  {
    if (v125 == 2)
    {

      v126 = MEMORY[0x1E69E7CC0];
      if (v64)
      {
        v126 = v64;
      }
    }

    else
    {

      v126 = MEMORY[0x1E69E7CC0];
    }

    v331 = v126;
  }

  else
  {
  }

  v102 = BYTE8(v409);
  v96 = v375;
  if (BYTE8(v409) == 254)
  {
    v317 = 0;
    v313 = 0;
    v314 = 1;
    v128 = 0;
    *&v127 = 0;
    v320 = v127;
    goto LABEL_76;
  }

  v317 = 0;
  v313 = 0;
  v107 = v413;
  v106 = v412;
  v105 = WORD4(v411);
  v104 = v411;
  v314 = 1;
  v103 = v410;
LABEL_67:
  *v391 = v409;
  v391[8] = v102;
  *&v391[16] = v103;
  *&v391[32] = v104;
  *&v391[40] = v105;
  *&v391[48] = v106;
  v391[64] = v107;
  v129 = v106;
  v320 = v106;
  v130 = *(&v106 + 1);
  sub_1AACAF328(v106, *(&v106 + 1), v107);
  sub_1AAEC8AD4(&v409, v390, qword_1ED9AEC30, &type metadata for ChartInternal.ScaleDef, MEMORY[0x1E69E6720], sub_1AAEC9110);
  sub_1AACB24B4(v391);
  if (v107 >= 0xFC)
  {
LABEL_74:
    v128 = 0;
    *&v131 = 0;
    v320 = v131;
    goto LABEL_75;
  }

  if (v107 >> 5 == 1)
  {
    sub_1AACC0710(v129, v130, v107);
    goto LABEL_74;
  }

  if (v107 >> 5)
  {
    sub_1AACC0710(v129, v130, v107);
    if (qword_1ED9B59F0 != -1)
    {
      swift_once();
    }

    goto LABEL_74;
  }

  v128 = v130;
  sub_1AACC0710(v129, v130, v107);
LABEL_75:
  v125 = v370;
LABEL_76:
  v132 = MEMORY[0x1E69E7CC0];
  v382 = MEMORY[0x1E69E7CC0];
  sub_1AAEC9110(0, &qword_1ED9AD750, &type metadata for ChartContentID.Part, MEMORY[0x1E69E6F90]);
  v363 = v133;
  v134 = swift_allocObject();
  v369 = xmmword_1AAF92AB0;
  *(v134 + 16) = xmmword_1AAF92AB0;
  *v391 = v94 + 0x736978612D78;
  *&v391[8] = 0xE600000000000000;
  sub_1AAF90024();
  *(v134 + 72) = 1;
  *v391 = v132;
  sub_1AADC85B8(v134);
  v135 = *v391;
  v370 = v125;
  if (v125 == 3)
  {

    if (v317)
    {
      v136 = MEMORY[0x1E69E7CC0];
LABEL_79:

LABEL_237:
      v279 = *(v136 + 2);
      v336 = v136;
      v280 = 0;
      v281 = 0;
      v282 = 0;
      if (v279)
      {
        v283 = &v136[(*(v335 + 80) + 32) & ~*(v335 + 80)];
        v284 = *(v335 + 72);
        v285 = v358;
        do
        {
          sub_1AACD1BE8(v283, v285, type metadata accessor for AxisMarksResult);
          v286 = *v285;
          sub_1AAEC8978(v285, type metadata accessor for AxisMarksResult);
          if (v286 == 2)
          {
            v287 = 1;
          }

          else
          {
            v287 = v280;
          }

          if (v286)
          {
            v288 = 1;
          }

          else
          {
            v288 = v281;
          }

          if (v286)
          {
            v289 = v282;
          }

          else
          {
            v289 = 1;
          }

          if (v286 <= 1)
          {
            v281 = v288;
          }

          else
          {
            v280 = v287;
          }

          if (v286 <= 1)
          {
            v282 = v289;
          }

          v283 += v284;
          --v279;
        }

        while (v279);
      }

      *v391 = v336;
      v391[8] = v368;
      v391[9] = v370;
      *&v391[16] = v331;
      *&v391[24] = v320;
      *&v391[32] = v128;
      v391[40] = v282 & 1;
      v391[41] = v281 & 1;
      v391[42] = v280 & 1;
      v390[0] = *v391;
      v390[1] = *&v391[16];
      goto LABEL_255;
    }

    v136 = MEMORY[0x1E69E7CC0];

    v278 = &unk_1F1FCF290;
LABEL_236:
    v331 = v278;
    goto LABEL_237;
  }

  if (v379 == 3)
  {

    v137 = *&v338;
    v138 = v380;
  }

  else
  {
    v139 = sub_1AAF8D874();

    v137 = *&v338;
    v138 = v380;
    if (v139)
    {

      v136 = MEMORY[0x1E69E7CC0];
      if (v317)
      {
        goto LABEL_79;
      }

LABEL_263:
      if (v125 > 1)
      {

        v278 = v382;
        goto LABEL_236;
      }

      v291 = v382;
      v292 = COERCE_DOUBLE(sub_1AADE69D4(v382));
      v2 = 0.0;
      if (v293)
      {
        v1 = 0.0;
      }

      else
      {
        v1 = v292;
      }

      v294 = COERCE_DOUBLE(sub_1AADC5CE8(v291));
      v296 = v295;

      if ((v296 & 1) == 0)
      {
        v2 = v294;
      }

      v297 = v331;
      *&v298 = COERCE_DOUBLE(sub_1AADE69D4(v331));
      if (v299)
      {
      }

      else
      {
        v202 = *&v298;
        v137 = COERCE_DOUBLE(sub_1AADC5CE8(v297));
        v301 = v300;

        if ((v301 & 1) == 0)
        {
LABEL_275:
          sub_1AAEC9110(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
          v303 = swift_allocObject();
          *(v303 + 16) = xmmword_1AAF9E2B0;
          if (v1 <= v202)
          {
            v304 = v1;
          }

          else
          {
            v304 = v202;
          }

          if (v2 > v137)
          {
            v305 = v2;
          }

          else
          {
            v305 = v137;
          }

          *(v303 + 32) = v304;
          *(v303 + 40) = v305;
          v331 = v303;
          goto LABEL_237;
        }
      }

      sub_1AAEC9110(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
      v302 = swift_allocObject();
      *(v302 + 16) = xmmword_1AAF9E2B0;
      *(v302 + 32) = v1;
      *(v302 + 40) = v2;
      v331 = v302;
      goto LABEL_237;
    }
  }

  v360 = v135;
  v140 = 0;
  v319 = (v377 + 56);
  v318 = (v377 + 48);
  v315 = (v138 + 48);
  v316 = (v138 + 56);
  v311 = (v348 + 8);
  v312 = (v347 + 8);
  v310 = 0x80000001AAFCE640;
  v356 = v95 + 32;
  v352 = (v95 + 8);
  v136 = MEMORY[0x1E69E7CC0];
  v141 = v344;
  while (1)
  {
    v142 = *(v337 + 16);
    v143 = v346;
    if (v140 == v142)
    {
      v321 = v140;
      v144 = 1;
    }

    else
    {
      if (v140 >= v142)
      {
        goto LABEL_286;
      }

      v145 = v140 + 1;
      v146 = v337 + ((*(v329 + 80) + 32) & ~*(v329 + 80)) + *(v329 + 72) * v140;
      v147 = *(v141 + 48);
      v148 = v328;
      *v328 = v140;
      sub_1AACD1BE8(v146, v148 + v147, type metadata accessor for AxisMarksConfiguration);
      sub_1AAEC8A6C(v148, v346, sub_1AAEC8598);
      v144 = 0;
      v321 = v145;
      v143 = v346;
    }

    (*v319)(v143, v144, 1, v141);
    v149 = v143;
    v150 = v334;
    sub_1AAEC89D8(v149, v334);
    if ((*v318)(v150, 1, v141) == 1)
    {
LABEL_259:

      if (v317)
      {
        goto LABEL_79;
      }

LABEL_262:
      v125 = v370;
      goto LABEL_263;
    }

    v336 = v136;
    v365 = *v150;
    v151 = v367;
    sub_1AAEC8A6C(v150 + *(v141 + 48), v367, type metadata accessor for AxisMarksConfiguration);
    *v55 = 1027;
    v152 = v332;
    v153 = v55 + *(v332 + 24);
    *v153 = 0;
    v153[8] = 1;
    *(v153 + 2) = 0;
    v153[24] = 1;
    swift_storeEnumTagMultiPayload();
    v154 = v55;
    v155 = v343;
    v156 = *(v343 + 24);
    v153[*(v343 + 20)] = 2;
    v153[v156] = 2;
    (*v316)(v153, 0, 1, v155);
    v157 = MEMORY[0x1E69E7CC0];
    *&v374 = v152[7];
    *(v154 + v374) = MEMORY[0x1E69E7CC0];
    v373 = v152[8];
    *(v154 + v373) = v157;
    v372 = v152[9];
    *(v154 + v372) = v157;
    v158 = v152[10];
    v159 = sub_1AADF9228(v157);
    v380 = v158;
    *(v154 + v158) = v159;
    *v154 = *v151;
    v160 = v333;
    sub_1AAEC8AD4(v151 + v345[6], v333, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720], sub_1AACAF24C);
    v161 = *v315;
    if ((*v315)(v160, 1, v155) == 1)
    {
      v162 = v353;
      *v353 = 0;
      *(v162 + 8) = 1;
      v162[2] = 0;
      *(v162 + 24) = 1;
      swift_storeEnumTagMultiPayload();
      v163 = *(v155 + 24);
      *(v162 + *(v155 + 20)) = 2;
      *(v162 + v163) = 2;
      if (v161(v160, 1, v155) != 1)
      {
        sub_1AAEC8B48(v160, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720], sub_1AACAF24C);
      }
    }

    else
    {
      sub_1AAEC8A6C(v160, v353, type metadata accessor for AxisMarkValues.Storage);
    }

    v141 = v344;
    v164 = v370;
    v136 = v336;
    if (!v370)
    {
      sub_1AACD1BE8(v353, v330, type metadata accessor for AxisMarkValues.Storage.Stride);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        v171 = v340;
        if (EnumCaseMultiPayload == 2)
        {
          v1 = *v330;
          v187 = COERCE_DOUBLE(sub_1AACEC978(v331));
          if (v189)
          {
            v2 = 1.0;
          }

          else
          {
            v2 = v188;
          }

          if (v189)
          {
            v191 = 0.0;
          }

          else
          {
            v191 = v187;
          }

          v190.n128_f64[0] = v1;
          sub_1AAEC512C(v391, v190, v191, v2);
          v432[0] = *v391;
          v432[1] = *&v391[16];
          v433[0] = *&v391[32];
          *(v433 + 9) = *&v391[41];
          sub_1AAEC4CDC();
          v137 = *&v192;
          v168 = sub_1AAEC4FD4(v192, v314, v191, v2);

          v185 = v432;
          goto LABEL_131;
        }

        if (!*(v330 + 8))
        {
          v168 = *v330;
          v186 = v368;
          if (!v368)
          {
            goto LABEL_144;
          }

          goto LABEL_120;
        }

        if (qword_1EB422C58 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v198 = sub_1AAD7B1A0(v390, 5);
        swift_endAccess();
        if (v198)
        {
          sub_1AAEC9110(0, &qword_1EB424C30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
          v199 = swift_allocObject();
          *(v199 + 16) = v369;
          *(v199 + 56) = MEMORY[0x1E69E6158];
          *(v199 + 32) = 0xD000000000000038;
          *(v199 + 40) = v310;
          sub_1AAF90674();
        }
      }

      else
      {
        v171 = v340;
        if (EnumCaseMultiPayload)
        {
          if (qword_1EB422C58 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v193 = sub_1AAD7B1A0(v390, 5);
          swift_endAccess();
          if (v193)
          {
            sub_1AAEC9110(0, &qword_1EB424C30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
            v194 = swift_allocObject();
            *(v194 + 16) = v369;
            *(v194 + 56) = MEMORY[0x1E69E6158];
            *(v194 + 32) = 0xD000000000000038;
            *(v194 + 40) = v310;
            sub_1AAF90674();
          }

          sub_1AACAF0D8(0);
          v196 = v330;
          sub_1AAEC8B48(v330 + *(v195 + 64), &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF24C);
          v197 = sub_1AAF8CB94();
          (*(*(v197 - 8) + 8))(v196, v197);
        }

        else
        {
          if (*(v330 + 8))
          {
            v172 = 4;
          }

          else
          {
            v172 = *v330;
          }

          if (v172 > 0)
          {
            v173 = *(v330 + 24);
            v174 = *(v330 + 16);
            v175 = COERCE_DOUBLE(sub_1AACEC978(v331));
            if (v177)
            {
              v1 = 1.0;
            }

            else
            {
              v1 = v176;
            }

            if (v177)
            {
              v2 = 0.0;
            }

            else
            {
              v2 = v175;
            }

            if (v173)
            {
              v178 = 0.0;
            }

            else
            {
              v178 = v174;
            }

            v179 = *(v353 + *(v343 + 20));
            v180 = v314;
            if (v179 == 2)
            {
              LOBYTE(v179) = v314;
            }

            v181 = *(v353 + *(v343 + 24));
            if (v181 == 2)
            {
              LOBYTE(v181) = v314;
            }

            v182.n128_f64[0] = sub_1AADEAF9C(v172, v179 & 1, v181 & 1, v2, v1, v178);
            sub_1AAEC512C(v391, v182, v2, v1);
            v434[0] = *v391;
            v434[1] = *&v391[16];
            v435[0] = *&v391[32];
            *(v435 + 9) = *&v391[41];
            sub_1AAEC4CDC();
            v137 = *&v183;
            v184 = v180;
            v141 = v344;
            v164 = v370;
            v168 = sub_1AAEC4FD4(v183, v184, v2, v1);

            v185 = v434;
LABEL_131:
            sub_1AAEC8C3C(v185);
            v186 = v368;
            if (!v368)
            {
              goto LABEL_144;
            }

            goto LABEL_120;
          }
        }
      }

      v168 = MEMORY[0x1E69E7CC0];
      v186 = v368;
      if (!v368)
      {
        goto LABEL_144;
      }

      goto LABEL_120;
    }

    if (v370 == 1)
    {
      v137 = v322;
      v165 = AGGraphGetValue();
      v166 = v326;
      v323(v326, v165, *&v137);
      v167 = v327;
      sub_1AAF8E114();
      (*v312)(v166, COERCE_DOUBLE(*&v137));
      v168 = sub_1AACE59E8(v331, 0, 1, v167);
      v169 = v167;
      v164 = v370;
      (*v311)(v169, v350);
    }

    else
    {
      v168 = v331;
    }

    v171 = v340;
    v186 = v368;
    if (!v368)
    {
LABEL_144:
      v200 = sub_1AAF904F4();

      if ((v200 & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_145;
    }

LABEL_120:
    if (v186 != 1)
    {
      goto LABEL_144;
    }

LABEL_145:
    v168 = sub_1AAEC5500(v168);
LABEL_146:
    sub_1AAEC8978(v353, type metadata accessor for AxisMarkValues.Storage);

    v202 = COERCE_DOUBLE(&v382);
    v366 = v168;
    sub_1AADC8AB4(v201);
    if (v164)
    {
      if (v164 == 1)
      {
        v203 = v366;
        v137 = *(v366 + 2);
        if (v137 == 0.0)
        {
          v202 = MEMORY[0x1E69E7CC0];
          v55 = v378;
        }

        else
        {
          *v391 = MEMORY[0x1E69E7CC0];
          sub_1AACEA040(0, *&v137, 0);
          v202 = *v391;
          v204 = v203 + 32;
          do
          {
            sub_1AAF8C844();
            *v391 = v202;
            v206 = *(*&v202 + 16);
            v205 = *(*&v202 + 24);
            if (v206 >= v205 >> 1)
            {
              sub_1AACEA040((v205 > 1), v206 + 1, 1);
              v202 = *v391;
            }

            *(*&v202 + 16) = v206 + 1;
            (*(v171 + 32))(*&v202 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v206, v96, v359);
            v204 += 8;
            --*&v137;
          }

          while (v137 != 0.0);
          v55 = v378;
          v164 = v370;
          v141 = v344;
        }

        sub_1AACEA258(*&v202, v351, v349, v391);
      }

      else
      {
        v55 = v378;
        if (qword_1ED9B0278 != -1)
        {
          swift_once();
        }

        sub_1AACE0A98(&unk_1ED9C33B8, v391);
      }
    }

    else
    {
      sub_1AAF0D208(v366, v351, v391);
      v55 = v378;
    }

    v407 = *v391;
    v408[0] = *&v391[16];
    *(v408 + 9) = *&v391[25];
    v364 = *(v366 + 2);
    if (v364)
    {
      break;
    }

LABEL_228:
    sub_1AACD1BE8(v55, v339, type metadata accessor for AxisMarksResult);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_1AAD6AB0C(0, *(v136 + 2) + 1, 1, v136);
    }

    v277 = *(v136 + 2);
    v276 = *(v136 + 3);
    if (v277 >= v276 >> 1)
    {
      v136 = sub_1AAD6AB0C((v276 > 1), v277 + 1, 1, v136);
    }

    sub_1AAD57C94(&v407);
    sub_1AAEC8978(v367, type metadata accessor for AxisMarksConfiguration);
    *(v136 + 2) = v277 + 1;
    sub_1AAEC8A6C(v339, &v136[((*(v335 + 80) + 32) & ~*(v335 + 80)) + *(v335 + 72) * v277], type metadata accessor for AxisMarksResult);
    sub_1AAEC8978(v55, type metadata accessor for AxisMarksResult);
    v137 = *&v338;
    v140 = v321;
  }

  v207 = 0.0;
  v361 = v345[7];
  v362 = v366 + 32;
  v208 = MEMORY[0x1E69E7CC0];
  v379 = MEMORY[0x1E69E7CC0];
  v136 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v209 = v366;
    v210 = *(v366 + 2);
    if (*&v207 >= v210)
    {
      __break(1u);
      goto LABEL_275;
    }

    v1 = *&v362[8 * *&v207];
    v371 = v207;
    if (v164)
    {
      if (v164 == 1)
      {
        v211 = v354;
        sub_1AAF8C844();
        if (v355 != 8)
        {
          goto LABEL_283;
        }

        v210 = *(v209 + 16);
        v212 = *v211;
        (*v352)(v211, v359);
        v213 = 0;
      }

      else
      {
        sub_1AAD58818();
        sub_1AAF8E144();
        v214 = *v391;
        swift_beginAccess();
        v215 = *(v214 + 24);
        if (!*(v215 + 16))
        {
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
          goto LABEL_285;
        }

        v216 = sub_1AADB0548(v1);
        if ((v217 & 1) == 0)
        {
          goto LABEL_284;
        }

        v218 = (*(v215 + 56) + 16 * v216);
        v212 = *v218;
        v213 = *(v218 + 1);

        v210 = *(v209 + 16);
        LOBYTE(v164) = v370;
      }
    }

    else
    {
      v213 = 0;
      v212 = v1;
    }

    sub_1AACB4B38(v367 + v361, v391);
    if (v391[40])
    {
      if (v391[40] == 1)
      {
        *v390 = v212;
        *(&v390[0] + 1) = v213;
        LOBYTE(v390[1]) = v164;
        *(&v390[1] + 1) = v371;
        *&v390[2] = v210;
        (*v391)(&v404, v390);
      }

      else
      {
        sub_1AADD7908(0);
        memset(v430, 0, sizeof(v430));
        v431 = 0;
        *(&v405 + 1) = v219;
        *&v406 = COERCE_DOUBLE(sub_1AADD79FC());
        *&v404 = swift_allocObject();
        sub_1AADCF710(v430, (v404 + 16));
      }
    }

    else
    {
      v404 = *v391;
      v405 = *&v391[16];
      v406 = *&v391[32];
    }

    v220 = swift_allocObject();
    *(v220 + 16) = v369;
    *(v220 + 32) = v365;
    *(v220 + 72) = 0;
    *v391 = v360;

    sub_1AADC85B8(v220);
    v221 = *v391;
    v222 = swift_allocObject();
    *(v222 + 16) = v369;
    *v391 = v1;
    sub_1AAF90024();
    *(v222 + 72) = 1;
    *v391 = v221;
    sub_1AADC85B8(v222);
    v223 = *v391;
    sub_1AACE0A98(&v407, v397);
    v393[0] = v368;
    v394 = v223;
    v395 = 0u;
    v396 = 0u;
    *&v397[6] = v1;
    v164 = v370;
    v398 = v370;
    v399 = v212;
    v400 = v213;
    v401 = v370;
    v402 = v371;
    v403 = v210;
    v224 = *(&v405 + 1);
    v137 = *&v406;
    v225 = sub_1AACBB42C(&v404, *(&v405 + 1));
    sub_1AADD050C(v225, v393, v224, *&v137);
    v226 = *v391;
    v227 = *(*v391 + 16);
    if (v227)
    {
      break;
    }

LABEL_163:
    *&v202 = *&v371 + 1;
    sub_1AADD1484(v393);
    sub_1AACE1B40(&v404);
    v207 = v202;
    if (*&v202 == v364)
    {

      v55 = v378;
      v141 = v344;
      v136 = v336;
      goto LABEL_228;
    }
  }

  v228 = 0;
  v381 = *v391 + 32;
  v229 = v378;
  v377 = *v391;
  v376 = v227;
  while (1)
  {
    if (v228 >= *(v226 + 16))
    {
      __break(1u);
LABEL_258:
      __break(1u);
      goto LABEL_259;
    }

    sub_1AAEC8BA8(v381 + 272 * v228, v391);
    if ((v392 & 1) == 0)
    {
      v390[4] = *&v391[64];
      v390[5] = *&v391[80];
      v390[6] = *&v391[96];
      v390[7] = *&v391[112];
      v390[0] = *v391;
      v390[1] = *&v391[16];
      v390[2] = *&v391[32];
      v390[3] = *&v391[48];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v208 = sub_1AAD687A0(0, *(v208 + 2) + 1, 1, v208);
      }

      v137 = *(v208 + 2);
      v251 = *(v208 + 3);
      if (*&v137 >= v251 >> 1)
      {
        v208 = sub_1AAD687A0((v251 > 1), *&v137 + 1, 1, v208);
      }

      *(v208 + 2) = *&v137 + 1;
      v252 = &v208[128 * *&v137];
      v253 = v390[0];
      v254 = v390[1];
      v255 = v390[3];
      *(v252 + 4) = v390[2];
      *(v252 + 5) = v255;
      *(v252 + 2) = v253;
      *(v252 + 3) = v254;
      v256 = v390[4];
      v257 = v390[5];
      v258 = v390[7];
      *(v252 + 8) = v390[6];
      *(v252 + 9) = v258;
      *(v252 + 6) = v256;
      *(v252 + 7) = v257;
      *&v229[v374] = v208;
      goto LABEL_182;
    }

    memcpy(v390, v391, 0x108uLL);
    sub_1AAD57CE8(v390, v389);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = sub_1AAD68660(0, *(v136 + 2) + 1, 1, v136);
    }

    v230 = v379;
    v232 = *(v136 + 2);
    v231 = *(v136 + 3);
    if (v232 >= v231 >> 1)
    {
      v136 = sub_1AAD68660((v231 > 1), v232 + 1, 1, v136);
    }

    *(v136 + 2) = v232 + 1;
    memcpy(&v136[264 * v232 + 32], v389, 0x108uLL);
    *&v229[v373] = v136;
    v386 = v390[10];
    v387 = v390[11];
    v388 = v390[12];
    v384 = v390[8];
    v385 = v390[9];
    sub_1AAEC8C04(&v384, v383);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v230 = sub_1AAD68E28(0, *(v230 + 2) + 1, 1, v230);
    }

    v234 = *(v230 + 2);
    v233 = *(v230 + 3);
    if (v234 >= v233 >> 1)
    {
      v230 = sub_1AAD68E28((v233 > 1), v234 + 1, 1, v230);
    }

    *(v230 + 2) = v234 + 1;
    v235 = &v230[80 * v234];
    *(v235 + 2) = v384;
    v236 = v385;
    v237 = v386;
    v238 = v388;
    *(v235 + 5) = v387;
    *(v235 + 6) = v238;
    *(v235 + 3) = v236;
    *(v235 + 4) = v237;
    v379 = v230;
    *&v229[v372] = v230;
    v1 = *(v390 + 1);
    v137 = *v390;

    v239 = v380;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v241 = *&v229[v239];
    v383[0] = v241;
    v243 = sub_1AADB0548(v1);
    v244 = *(v241 + 16);
    v245 = (v242 & 1) == 0;
    v246 = v244 + v245;
    if (__OFADD__(v244, v245))
    {
      goto LABEL_258;
    }

    v247 = v242;
    if (*(v241 + 24) >= v246)
    {
      break;
    }

    sub_1AAD8EA58(v246, isUniquelyReferenced_nonNull_native);
    v248 = v383[0];
    v249 = sub_1AADB0548(v1);
    if ((v247 & 1) != (v250 & 1))
    {
      result = sub_1AAF905B4();
      __break(1u);
      return result;
    }

    v243 = v249;
    v96 = v375;
    if ((v247 & 1) == 0)
    {
LABEL_205:
      *(v248 + 8 * (v243 >> 6) + 64) |= 1 << v243;
      *(*(v248 + 48) + 8 * v243) = v1;
      *(*(v248 + 56) + 8 * v243) = v137;
      sub_1AAD57D44(v390);
      v259 = *(v248 + 16);
      v260 = __OFADD__(v259, 1);
      v261 = v259 + 1;
      if (v260)
      {
        __break(1u);
        goto LABEL_262;
      }

      *(v248 + 16) = v261;
      goto LABEL_181;
    }

LABEL_180:
    *(*(v248 + 56) + 8 * v243) = v137;

    sub_1AAD57D44(v390);
LABEL_181:
    v229 = v378;
    *&v378[v380] = v248;
    v226 = v377;
    v227 = v376;
LABEL_182:
    if (++v228 == v227)
    {

      v164 = v370;
      goto LABEL_163;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v248 = v241;
    v96 = v375;
    if ((v242 & 1) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_180;
  }

  sub_1AAEC9160(0, &qword_1ED9AD780, &type metadata for ChartContentID, MEMORY[0x1E69E63D0], MEMORY[0x1E69E6EC8]);
  v262 = sub_1AAF90384();
  v248 = v262;
  if (!*(v241 + 16))
  {
LABEL_223:

    v96 = v375;
    if ((v247 & 1) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_180;
  }

  v263 = (v262 + 64);
  v264 = (v241 + 64);
  v265 = ((1 << *(v248 + 32)) + 63) >> 6;
  v307 = v241 + 64;
  if (v248 != v241 || v263 >= &v264[8 * v265])
  {
    memmove(v263, v264, 8 * v265);
  }

  v266 = 0;
  *(v248 + 16) = *(v241 + 16);
  v267 = 1 << *(v241 + 32);
  if (v267 < 64)
  {
    v268 = ~(-1 << v267);
  }

  else
  {
    v268 = -1;
  }

  v269 = v268 & *(v241 + 64);
  v270 = (v267 + 63) >> 6;
  v308 = v270;
  if (v269)
  {
    do
    {
      v271 = __clz(__rbit64(v269));
      v309 = (v269 - 1) & v269;
LABEL_221:
      v274 = v271 | (v266 << 6);
      v275 = *(*(v241 + 56) + 8 * v274);
      *(*(v248 + 48) + 8 * v274) = *(*(v241 + 48) + 8 * v274);
      *(*(v248 + 56) + 8 * v274) = v275;

      v270 = v308;
      v269 = v309;
    }

    while (v309);
  }

  v272 = v266;
  while (1)
  {
    v266 = v272 + 1;
    if (__OFADD__(v272, 1))
    {
      break;
    }

    if (v266 >= v270)
    {
      goto LABEL_223;
    }

    v273 = *(v307 + 8 * v266);
    ++v272;
    if (v273)
    {
      v271 = __clz(__rbit64(v273));
      v309 = (v273 - 1) & v273;
      goto LABEL_221;
    }
  }

LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
LABEL_287:
  swift_once();
LABEL_47:
  v111 = qword_1ED9C36C8;
  v112 = sub_1AAF8FD04();
  sub_1AACAF24C(0, &qword_1ED9AEE70, sub_1AAD6E5E0, MEMORY[0x1E69E6F90]);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1AAF92AB0;
  *v391 = 0;
  *&v391[8] = 0xE000000000000000;
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0xD000000000000028, 0x80000001AAFCFC30);
  v114 = v368;
  LOBYTE(v390[0]) = v368;
  sub_1AAF90284();
  MEMORY[0x1AC5982F0](0xD00000000000004DLL, 0x80000001AAFCFC60);
  v115 = *v391;
  v116 = *&v391[8];
  *(v113 + 56) = MEMORY[0x1E69E6158];
  *(v113 + 64) = sub_1AAD6E644();
  *(v113 + 32) = v115;
  *(v113 + 40) = v116;
  sub_1AAF8D7B4(v112, &dword_1AACA8000, v111, "%s", v306);

  *v391 = MEMORY[0x1E69E7CC0];
  v391[8] = v114;
  v391[9] = 3;
  *&v391[16] = MEMORY[0x1E69E7CC0];
  memset(&v391[24], 0, 19);
  v390[0] = *v391;
  v390[1] = MEMORY[0x1E69E7CC0];
LABEL_255:
  *(&v390[1] + 11) = *&v391[27];
  AGGraphSetOutputValue();
  sub_1AAEC8B48(&v409, qword_1ED9AEC30, &type metadata for ChartInternal.ScaleDef, MEMORY[0x1E69E6720], sub_1AAEC9110);
  sub_1AAD58120(&v414);
  (*(v348 + 8))(v349, v350);
  (*(v341 + 8))(v351, v342);
  sub_1AADF9BF4(v391);
  *&v33 = v322;
  return (*(v347 + 8))(v357, v33);
}

void sub_1AAEC848C(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1AAD58818();
  sub_1AAF8E144();
  swift_beginAccess();
  v5 = sub_1AAEC115C(v3, v4);
  swift_endAccess();

  *a2 = v5;
}

double sub_1AAEC8538@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 27) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t type metadata accessor for AxisMarksResult(uint64_t a1)
{
  result = qword_1ED9B01C8;
  if (!qword_1ED9B01C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AAEC8598(uint64_t a1)
{
  if (!qword_1ED9AD898)
  {
    type metadata accessor for AxisMarksConfiguration(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9AD898);
    }
  }
}

BOOL sub_1AAEC8604(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a2.n128_u64[0] >> 52) & 0x7FF;
  v5 = a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = sub_1AAF8FA34();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = sub_1AAF8FA14();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (v2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (v2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (v2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (v2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

unint64_t sub_1AAEC87F4(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v5 = v3 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v5)
  {
    LOBYTE(v4) = 0;
    v3 = 1;
    goto LABEL_30;
  }

  if (v3 == 2047)
  {
    goto LABEL_42;
  }

  if (v3)
  {
    if (v3 > 0x43E)
    {
      goto LABEL_42;
    }

    v5 = v3 - 1023;
    v6 = __clz(__rbit64(v4));
    if (v4)
    {
      v7 = 52 - v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_36;
    }

    v8 = __clz(v4);
    v5 = -1011 - v8;
    v6 = __clz(__rbit64(v4));
    v7 = (v8 ^ 0x3F) - v6;
  }

  v3 = v5 >= v7;
  v9 = v7 + v6;
  v2 = v5 - v9;
  if (v9 > 63)
  {
    if (v2 < -64 || v2 > 64)
    {
      goto LABEL_16;
    }
  }

  else if (v2 < -64 || v2 > 64)
  {
    goto LABEL_16;
  }

  if (v2 < 0)
  {
    goto LABEL_37;
  }

  if (v2 != 64)
  {
    v4 <<= v2;
    if (v5 != 63)
    {
      goto LABEL_22;
    }

LABEL_39:
    if (a2 < 0.0 && !v4)
    {
      v5 = 0x8000000000000000;
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_16:
  if (v5 == 63)
  {
    if (a2 < 0.0)
    {
      LOBYTE(v4) = 0;
      v5 = 0x8000000000000000;
      goto LABEL_30;
    }

LABEL_42:
    v5 = 0;
    v3 = 0;
    LOBYTE(v4) = 1;
    goto LABEL_30;
  }

  v2 = 0;
  v4 = 0;
  if (v5 < 0)
  {
    goto LABEL_25;
  }

LABEL_24:
  v2 = 1 << v5;
LABEL_25:
  while (1)
  {
    v5 = v4 | v2;
    if (a2 >= 0.0)
    {
      break;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      LOBYTE(v4) = 0;
      v5 = -v5;
      goto LABEL_30;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (v2 == -64)
    {
      goto LABEL_16;
    }

    v4 >>= -v2;
    if (v5 == 63)
    {
      goto LABEL_39;
    }

LABEL_22:
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v2 = 0;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  LOBYTE(v4) = 0;
LABEL_30:
  *a1 = v5;
  *(a1 + 8) = v4;
  return v3;
}

uint64_t sub_1AAEC8978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAEC89D8(uint64_t a1, uint64_t a2)
{
  sub_1AACAF24C(0, &qword_1ED9AD890, sub_1AAEC8598, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAEC8A6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAEC8AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AAEC8B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AAEC8C3C(uint64_t a1)
{
  sub_1AAEC9160(0, qword_1ED9B4290, MEMORY[0x1E69E63D8], MEMORY[0x1E69E63F0], type metadata accessor for NumberBins);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAEC8CE4(uint64_t a1, uint64_t a2)
{
  sub_1AAEC9160(0, qword_1ED9B4290, MEMORY[0x1E69E63D8], MEMORY[0x1E69E63F0], type metadata accessor for NumberBins);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAEC8D74(uint64_t a1)
{
  if (!qword_1EB426B10)
  {
    sub_1AAEC9160(255, qword_1ED9B4290, MEMORY[0x1E69E63D8], MEMORY[0x1E69E63F0], type metadata accessor for NumberBins);
    sub_1AAEC8E04();
    v1 = sub_1AAF8F4D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB426B10);
    }
  }
}

unint64_t sub_1AAEC8E04()
{
  result = qword_1EB426B18;
  if (!qword_1EB426B18)
  {
    sub_1AAEC9160(255, qword_1ED9B4290, MEMORY[0x1E69E63D8], MEMORY[0x1E69E63F0], type metadata accessor for NumberBins);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426B18);
  }

  return result;
}

double sub_1AAEC8E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 == 1)
  {
  }

  else if (!a8)
  {
  }

  return result;
}

double sub_1AAEC8EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 == 1)
  {
  }

  else if (!a8)
  {
  }

  return result;
}

double sub_1AAEC8F48@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + 16) * a1 + *(v2 + 24);
  *a2 = result;
  return result;
}

void sub_1AAEC8F94(uint64_t a1)
{
  type metadata accessor for AxisMarkValues(319);
  if (v1 <= 0x3F)
  {
    sub_1AAEC9110(319, &qword_1ED9AD948, &type metadata for PrimitiveAxisTick, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1AAEC9110(319, &qword_1ED9AD940, &type metadata for PrimitiveAxisLabel, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1AAEC9110(319, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1AAEC9160(319, &qword_1ED9AD980, &type metadata for ChartContentID, MEMORY[0x1E69E63D0], MEMORY[0x1E69E5E28]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1AAEC9110(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AAEC9160(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (!*a2)
  {
    v6 = (a5)(0, MEMORY[0x1E69E63B0], a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAEC91B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1AAEC91FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MakeAxisConfiguration(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MakeAxisConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 5))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MakeAxisConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 4) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_1AAEC9310(uint64_t a1)
{
  v1 = BYTE4(a1);
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  sub_1AACB6BD8();
  sub_1AAF8E144();
  (*(v3 + 8))(v5, v2);
  v7 = v13;
  if (*(v13 + 16) && (v8 = sub_1AACB6398(v1), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 24 * v8);
  }

  else
  {
    v10 = 3;
  }

  return v10;
}

uint64_t sub_1AAEC9480@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AAEC9310(*v1 | (*(v1 + 4) << 32));
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1AAEC94DC()
{
  v81 = *MEMORY[0x1E69E9840];
  v1 = sub_1AAF8E134();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v56[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Value = AGGraphGetValue();
  v7 = v6;
  sub_1AADFA56C(Value, v76);
  v8 = AGGraphGetValue();
  v10 = v9;
  (*(v2 + 16))(v4, v8, v1);
  if ((v7 & 1) == 0 || (v10 & 1) == 0 || v78 == 1 || (LODWORD(v11) = v80, v80 == 3))
  {
    v71 = 0uLL;
    LOBYTE(v72) = -1;
LABEL_6:
    sub_1AAEC9BC0();
    AGGraphSetOutputValue();
LABEL_7:
    sub_1AAD58120(v76);
    return (*(v2 + 8))(v4, v1);
  }

  v13 = *&v76[36];
  v14 = *&v76[37];
  isUniquelyReferenced_nonNull_native = v79;
  v16 = v77;
  sub_1AACBE71C();
  sub_1AAF8E144();
  v17 = v71;
  if (!*(v71 + 16) || (v18 = sub_1AACB6398(5u), (v19 & 1) == 0))
  {

    if (v11 == 2)
    {
      goto LABEL_14;
    }

LABEL_32:
    v43 = 0.0;
    if (v16 & 1 | (v13 > v14))
    {
      v44 = 0.0;
    }

    else
    {
      v44 = v13;
    }

    if (!(v16 & 1 | (v13 > v14)))
    {
      v43 = v14;
    }

    *&v71 = v44;
    *(&v71 + 1) = v43;
    LOBYTE(v72) = 0;
    goto LABEL_6;
  }

  v20 = *(v17 + 56) + 72 * v18;
  v71 = *v20;
  v22 = *(v20 + 32);
  v21 = *(v20 + 48);
  v23 = *(v20 + 64);
  v72 = *(v20 + 16);
  v73 = v22;
  v75 = v23;
  v74 = v21;
  sub_1AACB1E30(&v71, &v68);

  v25 = WORD4(v73);
  v26 = HIBYTE(WORD4(v73));
  if (v26 > 0xFE)
  {
    sub_1AACB24B4(&v71);
    if (v11 != 2)
    {
      goto LABEL_32;
    }

LABEL_14:
    if (isUniquelyReferenced_nonNull_native)
    {
      v27 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      v27 = MEMORY[0x1E69E7CD0];
    }

    sub_1AAEC9DD0(v27);
    v29 = v28;
    v31 = v30;
    v33 = v32;
    *&v71 = v28;
    *(&v71 + 1) = v30;
    LOBYTE(v72) = v32;
    sub_1AAEC9BC0();
    AGGraphSetOutputValue();
    sub_1AADF9B38(v29, v31, v33);
    goto LABEL_7;
  }

  v34 = v72;
  if (v26 < 2)
  {
    v35 = COERCE_DOUBLE(sub_1AADE69D4(v72));
    v14 = 0.0;
    if (v36)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v35;
    }

    v37 = COERCE_DOUBLE(sub_1AADC5CE8(v34));
    if (v38)
    {
      v37 = 0.0;
    }

    if (v13 <= v37)
    {
      v68 = v13;
      v69 = v37;
      v70 = 0;
      sub_1AAEC9BC0();
      AGGraphSetOutputValue();
      sub_1AACB24B4(&v71);
      goto LABEL_7;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v0 = v73;
  v67 = *(&v72 + 1);
  if (v26 != 2)
  {
    sub_1AACAF2E4(v72, *(&v72 + 1), v73, WORD4(v73), 3u);
    if (qword_1ED9B59F0 == -1)
    {
LABEL_31:
      sub_1AACB24B4(&v71);
      sub_1AACAF33C(v34, v67, v0, v25);
      if (v11 == 2)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }

LABEL_66:
    swift_once();
    goto LABEL_31;
  }

  v58 = v73;
  v60 = WORD4(v73);
  MEMORY[0x1EEE9AC00](v24);
  *&v56[-16] = v4;

  v59 = v34;
  sub_1AADE5AC4(sub_1AAEC8CC4, &v56[-32], v34);
  v40 = v75;
  if (v75 > 0xFBu)
  {

    v41 = v60;
    v42 = v59;
LABEL_58:
    v68 = 0.0;
    v69 = 0.0;
    v70 = -1;
    sub_1AAEC9BC0();
    AGGraphSetOutputValue();
    sub_1AACB24B4(&v71);
    sub_1AACAF33C(v42, v67, v58, v41);
    goto LABEL_7;
  }

  v41 = v60;
  v42 = v59;
  if ((v75 & 0xE0) != 0x60 || (v45 = *(v39 + 16), v66 = v74, v45 != *(v74 + 16)))
  {

    goto LABEL_58;
  }

  v11 = *(&v74 + 1);
  isUniquelyReferenced_nonNull_native = v39;
  v25 = sub_1AADF932C(MEMORY[0x1E69E7CC0]);
  v65 = *(isUniquelyReferenced_nonNull_native + 16);
  v57 = v40;
  if (!v65)
  {
    sub_1AACAF328(v66, v11, v40);
LABEL_60:

    sub_1AACC0710(v66, v11, v57);
    v68 = *&v25;
    v69 = 0.0;
    v70 = 2;
    sub_1AAEC9BC0();
    AGGraphSetOutputValue();
    sub_1AACB24B4(&v71);

    sub_1AACAF33C(v59, v67, v58, v60);
    goto LABEL_7;
  }

  v63 = v66 + 32;
  v64 = isUniquelyReferenced_nonNull_native + 32;
  sub_1AACAF328(v66, v11, v40);
  v46 = isUniquelyReferenced_nonNull_native;
  v34 = 0;
  v61 = v11;
  v62 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v34 >= *(v46 + 16))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v34 >= *(v66 + 16))
    {
      goto LABEL_62;
    }

    v13 = *(v64 + 8 * v34);
    v11 = *(v63 + 8 * v34);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *&v25;
    v0 = sub_1AADB0548(v13);
    v48 = *(v25 + 16);
    v49 = (v47 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_63;
    }

    v16 = v47;
    if (*(v25 + 24) < v50)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v25 = *&v68;
      if (v47)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_1AAD98524();
      v25 = *&v68;
      if (v16)
      {
LABEL_42:
        *(*(v25 + 56) + 8 * v0) = v11;

        goto LABEL_43;
      }
    }

LABEL_53:
    *(v25 + 8 * (v0 >> 6) + 64) |= 1 << v0;
    *(*(v25 + 48) + 8 * v0) = v13;
    *(*(v25 + 56) + 8 * v0) = v11;
    v53 = *(v25 + 16);
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_65;
    }

    *(v25 + 16) = v55;
LABEL_43:
    v11 = v61;
    v46 = v62;
    if (v65 == ++v34)
    {
      goto LABEL_60;
    }
  }

  sub_1AAD8EF38(v50, isUniquelyReferenced_nonNull_native);
  v51 = sub_1AADB0548(v13);
  if ((v16 & 1) == (v52 & 1))
  {
    v0 = v51;
    v25 = *&v68;
    if (v16)
    {
      goto LABEL_42;
    }

    goto LABEL_53;
  }

  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

void sub_1AAEC9BAC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

void sub_1AAEC9BC0()
{
  if (!qword_1ED9AE370)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AE370);
    }
  }
}

void sub_1AAEC9C10(uint64_t a1@<X0>, uint64_t a2@<X1>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 40);
  if (!a4)
  {
    if (qword_1EB422C18 != -1)
    {
      swift_once();
    }

    v8 = sub_1AAF8D8A4();
    goto LABEL_16;
  }

  if (a4 != 1)
  {
    if (*(a2 + 16) && (sub_1AADB0548(v6), (v9 & 1) != 0))
    {
      v10 = MEMORY[0x1E697E0A8];
      *(a5 + 24) = MEMORY[0x1E697E0B8];
      *(a5 + 32) = v10;

      if (v8)
      {
LABEL_21:
        v11 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      v12 = MEMORY[0x1E697E0A8];
      *(a5 + 24) = MEMORY[0x1E697E0B8];
      *(a5 + 32) = v12;
    }

    if (qword_1ED9B6620 != -1)
    {
      swift_once();
    }

    v8 = sub_1AAF8DA44();
    goto LABEL_21;
  }

  if (!*(a2 + 16) || (sub_1AADB0548(v6), (v7 & 1) == 0))
  {
    if (qword_1ED9B6620 != -1)
    {
      swift_once();
    }
  }

LABEL_16:
  v11 = 0;
LABEL_22:
  *a5 = v8;
  *(a5 + 40) = v11;
}

void sub_1AAEC9DD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_1AAD6C0D4(*(a1 + 16), 0);
    v4 = sub_1AADA9404(&v29, v3 + 4, v2, a1);
    v5 = v29;

    sub_1AACC9C00(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v29 = v3;
  sub_1AADA000C(&v29);

  v6 = v29;
  v28 = *(v29 + 2);
  if (v28)
  {
    if (qword_1EB422C10 != -1)
    {
LABEL_30:
      swift_once();
    }

    v7 = 0;
    v8 = 0;
    v9 = qword_1EB432210;
    v10 = qword_1EB432210 + 32;
    v11 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v8 >= *(v6 + 2))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v12 = *(v9 + 16);
      if (v7 >= v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = v7;
      }

      if (v13 >= v12)
      {
        goto LABEL_27;
      }

      v14 = *&v6[8 * v8 + 32];
      v15 = *(v10 + 8 * v13);
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v11;
      v17 = sub_1AADB0548(v14);
      v19 = *(v11 + 2);
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_28;
      }

      v23 = v18;
      if (*(v11 + 3) < v22)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v27 = v17;
      sub_1AAD983D4();
      v17 = v27;
      v11 = v29;
      if (v23)
      {
LABEL_8:
        *(*(v11 + 7) + 8 * v17) = v15;

        goto LABEL_9;
      }

LABEL_21:
      *&v11[8 * (v17 >> 6) + 64] |= 1 << v17;
      *(*(v11 + 6) + 8 * v17) = v14;
      *(*(v11 + 7) + 8 * v17) = v15;

      v25 = *(v11 + 2);
      v21 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v21)
      {
        goto LABEL_29;
      }

      *(v11 + 2) = v26;
LABEL_9:
      ++v8;
      v7 = v13 + 1;
      if (v28 == v8)
      {
        goto LABEL_25;
      }
    }

    sub_1AAD8ECC8(v22, isUniquelyReferenced_nonNull_native);
    v17 = sub_1AADB0548(v14);
    if ((v23 & 1) != (v24 & 1))
    {
      sub_1AAF905B4();
      __break(1u);

      __break(1u);
      return;
    }

LABEL_20:
    v11 = v29;
    if (v23)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_25:
}

uint64_t sub_1AAECA0CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1AAECA128(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAECA190()
{
  v15 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = v1;
  sub_1AADFA56C(Value, v11);
  if ((v2 & 1) != 0 && v12 != 1 && v14 == 2)
  {
    if (v13)
    {
      v4 = v13;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CD0];
    }

    sub_1AAECA470(v4);
    v6 = v5;
    v8 = v7;
    v10 = v9 & 1;
    sub_1AAECA304();
    AGGraphSetOutputValue();
    sub_1AADFB60C(v6, v8, v10);
  }

  else
  {
    sub_1AAECA304();
    AGGraphSetOutputValue();
  }

  return sub_1AAD58120(v11);
}

void sub_1AAECA2F0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 2;
}

void sub_1AAECA304()
{
  if (!qword_1ED9AEBB0)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AEBB0);
    }
  }
}

void sub_1AAECA354(uint64_t a1@<X0>, double a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a1 + 40);
  if (a4)
  {
    v9 = 0.0;
    if (!*(*&a2 + 16) || (v10 = sub_1AADB0548(v8), (v11 & 1) == 0))
    {
      v23 = 0;
      v22 = 0;
      v24 = 0;
      v21 = 0;
      goto LABEL_13;
    }

    v12 = (*(*&a2 + 56) + 40 * v10);
    v13 = v12 + 1;
    v14 = v12 + 2;
    v16 = *v12;
    v15 = v12 + 4;
    v9 = v16;
LABEL_9:
    v21 = *v15;
    v22 = *v14;
    v23 = *v13;

LABEL_13:
    *a6 = v9;
    *(a6 + 8) = v23;
    *(a6 + 16) = v22;
    *(a6 + 24) = v24;
    *(a6 + 32) = v21;
    return;
  }

  v17 = 0.5;
  if (a2 == a3)
  {
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_12:
    v23 = 0;
    v22 = 0;
    v24 = 0;
    v21 = 0;
    v9 = 0.0;
    goto LABEL_13;
  }

  v17 = (v8 - a2) / (a3 - a2);
  if (!a5)
  {
    goto LABEL_12;
  }

LABEL_7:
  v18 = *(a5 + 16);
  if (v18)
  {
    v20 = *(a5 + 32);
    v19 = (a5 + 32);
    v13 = v19 + 1;
    v14 = v19 + 2;
    v15 = v19 + 4;
    v9 = v20 + v17 * (*&v19[5 * v18 - 5] - v20);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1AAECA470(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_1AAD6C0D4(*(a1 + 16), 0);
    v4 = sub_1AADA9404(&v35, v3 + 4, v2, a1);
    v5 = v35;

    sub_1AACC9C00(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v35 = v3;
  sub_1AADA000C(&v35);

  v34 = v35;
  v33 = *(v35 + 2);
  if (v33)
  {
    if (qword_1EB422C38 != -1)
    {
LABEL_27:
      swift_once();
    }

    v6 = 0;
    v7 = qword_1EB432230;
    v8 = qword_1EB432230 + 32;
    v9 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v6 >= *(v34 + 2))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v11 = *(v7 + 16);
      if (!v11)
      {
        goto LABEL_24;
      }

      v12 = *&v34[8 * v6 + 32];
      v13 = v8 + 40 * (v6 % v11);
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 12);
      v17 = *(v13 + 16);
      v18 = *(v13 + 24);
      v19 = *(v13 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v9;
      v21 = sub_1AADB0548(v12);
      v23 = *(v9 + 2);
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_25;
      }

      v27 = v22;
      if (*(v9 + 3) < v26)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v32 = v21;
      sub_1AAD98674();
      v21 = v32;
      v9 = v35;
      if (v27)
      {
LABEL_8:
        v10 = *(v9 + 7) + 40 * v21;
        *v10 = v14;
        *(v10 + 8) = v15;
        *(v10 + 12) = v16;
        *(v10 + 16) = v17;
        *(v10 + 24) = v18;
        *(v10 + 32) = v19;

        goto LABEL_9;
      }

LABEL_18:
      *&v9[8 * (v21 >> 6) + 64] |= 1 << v21;
      *(*(v9 + 6) + 8 * v21) = v12;
      v29 = *(v9 + 7) + 40 * v21;
      *v29 = v14;
      *(v29 + 8) = v15;
      *(v29 + 12) = v16;
      *(v29 + 16) = v17;
      *(v29 + 24) = v18;
      *(v29 + 32) = v19;
      v30 = *(v9 + 2);
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      *(v9 + 2) = v31;
LABEL_9:
      if (v33 == ++v6)
      {
        goto LABEL_22;
      }
    }

    sub_1AAD8F1A8(v26, isUniquelyReferenced_nonNull_native);
    v21 = sub_1AADB0548(v12);
    if ((v27 & 1) != (v28 & 1))
    {
      sub_1AAF905B4();
      __break(1u);

      __break(1u);
      return;
    }

LABEL_17:
    v9 = v35;
    if (v27)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_22:
}

uint64_t sub_1AAECA7A0()
{
  v131 = *MEMORY[0x1E69E9840];
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
    v2 = 0;
    v3 = 0uLL;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
  }

  else
  {
    Value = AGGraphGetValue();
    v1 = v35;
    sub_1AADF9ADC(Value, &v79);
    v74 = v80;
    v75 = v79;
    v72 = v82;
    v73 = v81;
    v70 = v84;
    v71 = v83;
    v68 = v86;
    v69 = v85;
    v66 = v88;
    v67 = v87;
    v64 = v90;
    v65 = v89;
    v62 = v92;
    v63 = v91;
    v60 = v94;
    v61 = v93;
    v58 = v96;
    v59 = v95;
    v57 = v97;
    v4 = v98;
    v5 = v99;
    v6 = v100;
    v7 = v101;
    v8 = v102;
    v9 = v103;
    v10 = v104;
    v11 = v105;
    v12 = v106;
    v13 = v107;
    v14 = v108;
    v15 = v109;
    v16 = v110;
    v2 = v129 | (v130 << 16);
    v3 = v111;
    v17 = v112;
    v18 = v113;
    v19 = v114;
    v20 = v115;
    v21 = v116;
    v22 = v117;
    v23 = v118;
    v24 = v119;
    v25 = v120;
    v26 = v121;
    v27 = v122;
    v28 = v123;
    v29 = v124;
    v30 = v125;
    v31 = v126;
    v32 = v127;
    v33 = v128;
  }

  v79 = v75;
  v80 = v74;
  v81 = v73;
  v82 = v72;
  v83 = v71;
  v84 = v70;
  v85 = v69;
  v86 = v68;
  v87 = v67;
  v88 = v66;
  v89 = v65;
  v90 = v64;
  v91 = v63;
  v92 = v62;
  v93 = v61;
  v94 = v60;
  v95 = v59;
  v96 = v58;
  v97 = v57;
  v98 = v4;
  v99 = v5;
  v100 = v6;
  v101 = v7;
  v102 = v8;
  v103 = v9;
  v104 = v10;
  v105 = v11;
  v106 = v12;
  v107 = v13;
  v108 = v14;
  v109 = v15;
  v110 = v16;
  v111 = v3;
  v112 = v17;
  v113 = v18;
  v114 = v19;
  v115 = v20;
  v116 = v21;
  v117 = v22;
  v118 = v23;
  v119 = v24;
  v120 = v25;
  v121 = v26;
  v122 = v27;
  v123 = v28;
  v124 = v29;
  v125 = v30;
  v126 = v31;
  v127 = v32;
  v128 = v33;
  v129 = v2;
  v130 = BYTE2(v2);
  sub_1AAECAF1C(&v79, __src);
  if (!*__src)
  {
    v1 = __dst;
    sub_1AAECAFD0(__src);
    if (qword_1ED9B59F0 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

  memcpy(__dst, __src, 0x323uLL);
  if ((v1 & 1) == 0)
  {
    sub_1AAD58308(__dst);
    return sub_1AAECAFD0(&v79);
  }

  sub_1AADFA56C(&__dst[1], __src);
  if (!*&__src[480])
  {
LABEL_59:
    sub_1AADFA56C(__src, v76);
    AGGraphSetOutputValue();
    sub_1AAD58120(v76);
    sub_1AAD58308(__dst);
    sub_1AAECAFD0(&v79);
    return sub_1AAD58120(__src);
  }

  v36 = 0;
  v37 = 1 << *(*&__src[480] + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(*&__src[480] + 64);
  v40 = __src[40];
  v41 = __src[16];
  v42 = *__src;
  v43 = *&__src[8];
  v44 = vdupq_n_s64(0x4059000000000000uLL);
  while (v39)
  {
LABEL_15:
    v46 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v47 = v46 | (v36 << 6);
    v48 = (*(*&__src[480] + 48) + 72 * v47);
    v49 = *v48;
    v50 = v48[1];
    v51 = *(*(*&__src[480] + 56) + 16 * v47);
    if (v49 <= 1)
    {
      if (v49)
      {
        v52 = -v51.f64[1];
        if (v51.f64[0] > -v51.f64[1])
        {
          v52 = *(*(*&__src[480] + 56) + 16 * v47);
        }

        v51 = vmulq_f64(vdivq_f64(v51, vdupq_lane_s64(*&v52, 0)), v44);
      }

      if (v50)
      {
        goto LABEL_21;
      }

      goto LABEL_29;
    }

    if (v49 == 2)
    {
      v51 = vmulq_n_f64(xmmword_1AAFA2D60, vsubq_f64(v51, vdupq_laneq_s64(v51, 1)).f64[0]);
      if (v50)
      {
LABEL_21:
        if (*&__src[72] != 1)
        {
          if (!__src[88])
          {
            goto LABEL_25;
          }

          if (__src[88] == 3)
          {
            __src[88] = 0;
LABEL_25:
            if (__src[64])
            {
              *&__src[48] = vdupq_laneq_s64(v51, 1);
              __src[64] = 0;
              goto LABEL_41;
            }

            v53 = v51.f64[1];
            v54 = *&__src[48];
            if (*&__src[48] >= v51.f64[1])
            {
              v54 = v51.f64[1];
            }

            if (v51.f64[1] <= *&__src[56])
            {
              v53 = *&__src[56];
            }

            *&__src[48] = v54;
            *&__src[56] = v53;
            if (__src[64])
            {
              *&__src[48] = vdupq_lane_s64(*&v51.f64[0], 0);
              __src[64] = 0;
            }

            else
            {
LABEL_41:
              v55 = *&__src[48];
              if (*&__src[48] >= v51.f64[0])
              {
                v55 = v51.f64[0];
              }

              if (v51.f64[0] <= *&__src[56])
              {
                v51.f64[0] = *&__src[56];
              }

              *&__src[48] = v55;
              *&__src[56] = v51.f64[0];
            }
          }
        }
      }

      else
      {
LABEL_29:
        if (*&__src[24] != 1)
        {
          if (!v40)
          {
            goto LABEL_33;
          }

          if (v40 == 3)
          {
            __src[40] = 0;
LABEL_33:
            if (v41)
            {
              __src[16] = 0;
              v43 = v51.f64[1];
              v42 = v51.f64[1];
            }

            else
            {
              if (v42 >= v51.f64[1])
              {
                v42 = v51.f64[1];
              }

              if (v51.f64[1] > v43)
              {
                v43 = v51.f64[1];
              }
            }

            v41 = 0;
            v40 = 0;
            if (v42 >= v51.f64[0])
            {
              v42 = v51.f64[0];
            }

            if (v51.f64[0] > v43)
            {
              v43 = v51.f64[0];
            }

            *__src = v42;
            *&__src[8] = v43;
          }
        }
      }
    }
  }

  while (1)
  {
    v45 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v45 >= ((v37 + 63) >> 6))
    {
      goto LABEL_59;
    }

    v39 = *(*&__src[480] + 64 + 8 * v45);
    ++v36;
    if (v39)
    {
      v36 = v45;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_61:
  swift_once();
LABEL_56:
  memset(__dst, 0, 24);
  *(v1 + 24) = xmmword_1AAF92AC0;
  LOBYTE(__dst[5]) = 0;
  memset(&__dst[6], 0, 24);
  *(v1 + 72) = xmmword_1AAF92AC0;
  LOBYTE(__dst[11]) = 0;
  memset(&__dst[12], 0, 24);
  *(v1 + 120) = xmmword_1AAF92AC0;
  LOBYTE(__dst[17]) = 0;
  memset(&__dst[18], 0, 24);
  *(v1 + 168) = xmmword_1AAF92AC0;
  LOBYTE(__dst[23]) = 0;
  memset(&__dst[24], 0, 24);
  *(v1 + 216) = xmmword_1AAF92AC0;
  LOBYTE(__dst[29]) = 0;
  memset(&__dst[30], 0, 24);
  __dst[33] = 1;
  __dst[34] = 0;
  LOBYTE(__dst[35]) = 0;
  memset(&__dst[36], 0, 24);
  __dst[39] = 1;
  __dst[40] = 0;
  LOBYTE(__dst[41]) = 0;
  memset(&__dst[42], 0, 24);
  __dst[45] = 1;
  __dst[46] = 0;
  LOBYTE(__dst[47]) = 0;
  memset(&__dst[48], 0, 24);
  __dst[51] = 1;
  __dst[52] = 0;
  LOBYTE(__dst[53]) = 0;
  memset(&__dst[54], 0, 24);
  __dst[57] = 1;
  __dst[58] = 0;
  LOBYTE(__dst[59]) = 0;
  v1[30] = 0u;
  v1[31] = 0u;
  __dst[64] = 1;
  memset(&__dst[65], 0, 275);
  AGGraphSetOutputValue();
  sub_1AAD58120(__dst);
  return sub_1AAECAFD0(&v79);
}

uint64_t sub_1AAECAF1C(uint64_t a1, uint64_t a2)
{
  sub_1AAECAF80();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAECAF80()
{
  if (!qword_1ED9ADF48)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9ADF48);
    }
  }
}

uint64_t sub_1AAECAFD0(uint64_t a1)
{
  sub_1AAECAF80();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAECB050()
{
  v10 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = v1;
  sub_1AADFA56C(Value, v6);
  if ((v2 & 1) == 0 || (v7 != 1 ? (v3 = v9 == 3) : (v3 = 1), v3))
  {
    sub_1AAECB194();
    AGGraphSetOutputValue();
  }

  else if (v9 == 2)
  {
    if (v8)
    {
      v5 = v8;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CD0];
    }

    sub_1AAECB1E4(v5);
    sub_1AAECB194();
    AGGraphSetOutputValue();
  }

  else
  {
    sub_1AAECB194();
    AGGraphSetOutputValue();
    sub_1AAF885A0(1);
  }

  return sub_1AAD58120(v6);
}

double sub_1AAECB180@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1AAF92AC0;
  return result;
}

void sub_1AAECB194()
{
  if (!qword_1ED9AED88[0])
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9AED88);
    }
  }
}

void sub_1AAECB1E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1AAD6C0D4(*(a1 + 16), 0);
  v4 = sub_1AADA9404(&v49, v3 + 4, v2, a1);
  v5 = v49;

  sub_1AACC9C00(v5);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  *&v49 = v3;
  sub_1AADA000C(&v49);

  v6 = v49;
  v46 = *(v49 + 16);
  if (!v46)
  {
LABEL_36:

    return;
  }

  if (qword_1ED9AEC20 != -1)
  {
LABEL_45:
    swift_once();
  }

  v7 = 0;
  v8 = qword_1ED9C33B0;
  v9 = (qword_1ED9C33B0 + 32);
  v10 = MEMORY[0x1E69E7CC8];
  v11 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v12 = *(v8 + 16);
    if (!v12)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v13 = v7 % v12;
    if (v13 < 0)
    {
      goto LABEL_38;
    }

    v14 = *(v6 + 8 * v7 + 32);
    sub_1AAD9B194(v9 + 40 * v13, &v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v10;
    v16 = sub_1AADB0548(v14);
    v18 = v10[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_39;
    }

    v22 = v17;
    if (v10[3] < v21)
    {
      sub_1AAD8F450(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_1AADB0548(v14);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_46;
      }

LABEL_17:
      if (v22)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v24 = v16;
    sub_1AAD987EC();
    v16 = v24;
    v10 = v47;
    if (v22)
    {
LABEL_18:
      sub_1AAEB90B8(&v49, v10[7] + 40 * v16);
      goto LABEL_22;
    }

LABEL_20:
    v10[(v16 >> 6) + 8] |= 1 << v16;
    *(v10[6] + 8 * v16) = v14;
    v25 = v10[7] + 40 * v16;
    v26 = v49;
    v27 = v50;
    *(v25 + 32) = v51;
    *v25 = v26;
    *(v25 + 16) = v27;
    v28 = v10[2];
    v20 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v20)
    {
      goto LABEL_43;
    }

    v10[2] = v29;
LABEL_22:
    if (qword_1EB422C30 != -1)
    {
      swift_once();
    }

    v30 = *(qword_1EB432228 + 16);
    if (!v30)
    {
      goto LABEL_40;
    }

    v31 = v7 % v30;
    if (v31 < 0)
    {
      goto LABEL_41;
    }

    sub_1AAD9B194(qword_1EB432228 + 40 * v31 + 32, &v49);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v11;
    v33 = sub_1AADB0548(v14);
    v35 = v11[2];
    v36 = (v34 & 1) == 0;
    v20 = __OFADD__(v35, v36);
    v37 = v35 + v36;
    if (v20)
    {
      goto LABEL_42;
    }

    v38 = v34;
    if (v11[3] < v37)
    {
      break;
    }

    if (v32)
    {
      goto LABEL_31;
    }

    v45 = v33;
    sub_1AAD987EC();
    v33 = v45;
    v11 = v48;
    if (v38)
    {
LABEL_8:
      sub_1AAEB90B8(&v49, v11[7] + 40 * v33);
      goto LABEL_9;
    }

LABEL_32:
    v11[(v33 >> 6) + 8] |= 1 << v33;
    *(v11[6] + 8 * v33) = v14;
    v40 = v11[7] + 40 * v33;
    v41 = v49;
    v42 = v50;
    *(v40 + 32) = v51;
    *v40 = v41;
    *(v40 + 16) = v42;
    v43 = v11[2];
    v20 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v20)
    {
      goto LABEL_44;
    }

    v11[2] = v44;
LABEL_9:
    if (v46 == ++v7)
    {
      goto LABEL_36;
    }
  }

  sub_1AAD8F450(v37, v32);
  v33 = sub_1AADB0548(v14);
  if ((v38 & 1) == (v39 & 1))
  {
LABEL_31:
    if (v38)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_46:
  sub_1AAF905B4();
  __break(1u);

  __break(1u);
}

uint64_t sub_1AAECB63C()
{
  v18 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = v1;
  sub_1AADFA56C(Value, v11);
  if ((v2 & 1) == 0 || v15 == 1)
  {
    goto LABEL_3;
  }

  if (v17 < 2u)
  {
    v4 = 0;
    if (v14 & 1 | (v12 > v13))
    {
      v5 = 0;
    }

    else
    {
      v5 = *&v12;
    }

    if (v14 & 1 | (v12 > v13))
    {
      v6 = 0;
    }

    else
    {
      v6 = *&v13;
    }

LABEL_17:
    sub_1AAECB78C();
    AGGraphSetOutputValue();
    sub_1AAECB7DC(v5, v6, v4);
    return sub_1AAD58120(v11);
  }

  if (v17 == 2)
  {
    if (v16)
    {
      v7 = v16;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CD0];
    }

    sub_1AAECBCE0(v7);
    v5 = v8;
    v6 = v9;
    v4 = v10 & 1;
    goto LABEL_17;
  }

LABEL_3:
  sub_1AAECB78C();
  AGGraphSetOutputValue();
  return sub_1AAD58120(v11);
}

void sub_1AAECB78C()
{
  if (!qword_1ED9AEB50)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AEB50);
    }
  }
}

uint64_t sub_1AAECB7DC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AADFB60C(result, a2, a3 & 1);
  }

  return result;
}

double sub_1AAECB7F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = *(a1 + 40);
  if (a4)
  {
    if (*(a2 + 16))
    {
      sub_1AADB0548(result);
    }
  }

  else if (*&a2 != *&a3)
  {
    return (result - *&a2) / (*&a3 - *&a2) * 1200.0;
  }

  return result;
}

void sub_1AAECB888(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  LOBYTE(v5) = a3;
  v8 = *(a1 + 16);

  if (!v8 || !*(a2 + 16))
  {
    goto LABEL_24;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v11 = *a4;
  v12 = sub_1AADB0548(v9);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v13;
  if (v11[3] < v17)
  {
    sub_1AAD8AA18(v17, v5 & 1);
    v12 = sub_1AADB0548(v9);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v12 = sub_1AAF905B4();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v18)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = v12;
  sub_1AAD955A4();
  v12 = v22;
  if (v18)
  {
LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    sub_1AAE28ACC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_29;
  }

LABEL_12:
  v23 = *a4;
  *(*a4 + 8 * (v12 >> 6) + 64) |= 1 << v12;
  *(v23[6] + 8 * v12) = v9;
  *(v23[7] + 8 * v12) = v10;
  v24 = v23[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v16)
  {
    v23[2] = v25;
    v5 = v8 - 1;
    if (v8 != 1)
    {
      v8 = 0;
      do
      {
        v26 = v8 + 1;
        if ((v8 + 1) >= *(a1 + 16))
        {
          goto LABEL_27;
        }

        v27 = *(a2 + 16);
        if (v26 == v27)
        {
          break;
        }

        if (v26 >= v27)
        {
          goto LABEL_28;
        }

        v9 = *(a1 + 40 + 8 * v8);
        v10 = *(a2 + 40 + 8 * v8);
        v28 = *a4;
        v29 = sub_1AADB0548(v9);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v16 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v16)
        {
          goto LABEL_25;
        }

        v18 = v30;
        if (v28[3] < v33)
        {
          sub_1AAD8AA18(v33, 1);
          v29 = sub_1AADB0548(v9);
          if ((v18 & 1) != (v34 & 1))
          {
            goto LABEL_6;
          }
        }

        if (v18)
        {
          goto LABEL_9;
        }

        v35 = *a4;
        *(*a4 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        *(v35[6] + 8 * v29) = v9;
        *(v35[7] + 8 * v29) = v10;
        v36 = v35[2];
        v16 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v16)
        {
          goto LABEL_26;
        }

        v35[2] = v37;
      }

      while (v5 != ++v8);
    }

LABEL_24:

    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0xD00000000000001BLL, 0x80000001AAFCDCD0);
  sub_1AAF90284();
  MEMORY[0x1AC5982F0](39, 0xE100000000000000);
  sub_1AAF902C4();
  __break(1u);
}

uint64_t sub_1AAECBC20(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    sub_1AAD9AC64();
    v5 = sub_1AAF903A4();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v7 = v5;

  sub_1AAECB888(a1, a2, 1, &v7);
  return v7;
}

void sub_1AAECBCE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    sub_1AADF8158(MEMORY[0x1E69E7CC0]);
    return;
  }

  v3 = sub_1AAD6C0D4(*(a1 + 16), 0);
  v4 = sub_1AADA9404(&v14, (v3 + 32), v2, a1);
  v5 = v14;

  sub_1AACC9C00(v5);
  if (v4 != v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v3;
  sub_1AADA000C(&v14);

  v6 = v14;
  v3 = *(v14 + 2);
  if (!v3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(v14 + 4);
  v8 = *&v14[8 * v3 + 24];
  if (v7 > v8)
  {
LABEL_16:
    __break(1u);

    __break(1u);
    return;
  }

  v14 = MEMORY[0x1E69E7CC0];
  sub_1AAD1FAF4(0, v3, 0);
  v9 = v14;
  v10 = 32;
  do
  {
    if (v7 == v8)
    {
      v11 = 600.0;
    }

    else
    {
      v11 = (*&v6[v10] - v7) / (v8 - v7) * 1200.0;
    }

    v14 = v9;
    v13 = *(v9 + 2);
    v12 = *(v9 + 3);
    if (v13 >= v12 >> 1)
    {
      sub_1AAD1FAF4((v12 > 1), v13 + 1, 1);
      v9 = v14;
    }

    *(v9 + 2) = v13 + 1;
    *&v9[8 * v13 + 32] = v11;
    v10 += 8;
    --v3;
  }

  while (v3);
  sub_1AAECBC20(v6, v9);
}

unint64_t *sub_1AAECBF08(uint64_t a1)
{
  v2 = a1;
  v3 = type metadata accessor for DisplayListProxyViewContainer(0);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*MEMORY[0x1E698D3F8] == v2)
  {
    __break(1u);
LABEL_19:
    result = sub_1AAF8FFB4();
    v6 = result;
    if (result)
    {
      goto LABEL_4;
    }

    return MEMORY[0x1E69E7CC0];
  }

  result = AGGraphGetValue();
  v1 = *result;
  if (*result >> 62)
  {
    goto LABEL_19;
  }

  v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  if (v6 >= 1)
  {
    v7 = v1 & 0xC000000000000001;

    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v22 = v6;
    v23 = v1;
    v21 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x1AC598D40](v8, v1);
        if ((*(v10 + 68) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = *(v1 + 8 * v8 + 32);

        if ((*(v10 + 68) & 1) == 0)
        {
LABEL_12:
          v12 = *(v10 + 16);
          v11 = *(v10 + 24);
          v13 = *(v10 + 32);
          v14 = *(v10 + 40);
          v15 = *(v10 + 48);
          v16 = sub_1AAF8E3E4();

          Value = AGGraphGetValue();
          v18 = v26;
          (*(*(v16 - 8) + 16))(v26 + *(v25 + 24), Value, v16);
          *v18 = v12;
          *(v18 + 8) = v11;
          *(v18 + 16) = v13;
          *(v18 + 24) = v14;
          *(v18 + 32) = v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1AAD6AB40(0, v9[2] + 1, 1, v9);
          }

          v20 = v9[2];
          v19 = v9[3];
          v7 = v21;
          v6 = v22;
          if (v20 >= v19 >> 1)
          {
            v9 = sub_1AAD6AB40((v19 > 1), v20 + 1, 1, v9);
          }

          v9[2] = v20 + 1;
          sub_1AAECDCCC(v26, v9 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, type metadata accessor for DisplayListProxyViewContainer);
          v1 = v23;
          goto LABEL_7;
        }
      }

LABEL_7:
      if (v6 == ++v8)
      {

        return v9;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1AAECC1E8@<X0>(uint64_t **a1@<X8>)
{
  result = sub_1AAECBF08(*v1);
  *a1 = result;
  return result;
}

double sub_1AAECC214(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1AAECC5F8(a1, a2, a3, sub_1AADF9AA8);
}

unint64_t *sub_1AAECC280(uint64_t a1)
{
  v2 = a1;
  v3 = type metadata accessor for LayoutComputerContainer(0);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*MEMORY[0x1E698D3F8] == v2)
  {
    __break(1u);
LABEL_19:
    result = sub_1AAF8FFB4();
    v6 = result;
    if (result)
    {
      goto LABEL_4;
    }

    return MEMORY[0x1E69E7CC0];
  }

  result = AGGraphGetValue();
  v1 = *result;
  if (*result >> 62)
  {
    goto LABEL_19;
  }

  v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  if (v6 >= 1)
  {
    v7 = v1 & 0xC000000000000001;

    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v22 = v6;
    v23 = v1;
    v21 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x1AC598D40](v8, v1);
        if ((*(v10 + 76) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = *(v1 + 8 * v8 + 32);

        if ((*(v10 + 76) & 1) == 0)
        {
LABEL_12:
          v12 = *(v10 + 16);
          v11 = *(v10 + 24);
          v13 = *(v10 + 32);
          v14 = *(v10 + 40);
          v15 = *(v10 + 48);
          v16 = sub_1AAF8E404();

          Value = AGGraphGetValue();
          v18 = v26;
          (*(*(v16 - 8) + 16))(v26 + *(v25 + 24), Value, v16);
          *v18 = v12;
          *(v18 + 8) = v11;
          *(v18 + 16) = v13;
          *(v18 + 24) = v14;
          *(v18 + 32) = v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1AAD6AB74(0, v9[2] + 1, 1, v9);
          }

          v20 = v9[2];
          v19 = v9[3];
          v7 = v21;
          v6 = v22;
          if (v20 >= v19 >> 1)
          {
            v9 = sub_1AAD6AB74((v19 > 1), v20 + 1, 1, v9);
          }

          v9[2] = v20 + 1;
          sub_1AAECDCCC(v26, v9 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, type metadata accessor for LayoutComputerContainer);
          v1 = v23;
          goto LABEL_7;
        }
      }

LABEL_7:
      if (v6 == ++v8)
      {

        return v9;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1AAECC560@<X0>(uint64_t **a1@<X8>)
{
  result = sub_1AAECC280(*v1);
  *a1 = result;
  return result;
}

double sub_1AAECC58C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1AAECC5F8(a1, a2, a3, sub_1AADFACA8);
}

double sub_1AAECC5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(0, a2, a3);
  AGGraphSetOutputValue();

  return result;
}

double sub_1AAECC66C()
{

  swift_deallocClassInstance();
  return result;
}

void sub_1AAECC6D0(uint64_t a1, double a2)
{
  v3 = v2;
  if (AGSubgraphIsValid())
  {
    v5 = v3 + *(type metadata accessor for MakeState(0) + 28);
    ++*(v5 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];

    sub_1AAD78AC0(v7);
    v28 = v8;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = 0;
      do
      {
        sub_1AAECC948(v10);

        MEMORY[0x1AC598430](v11);
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AAF8F874();
        }

        ++v10;
        sub_1AAF8F8C4();
        v6 = v29;

        sub_1AADA9AF0(v12);
      }

      while (v9 != v10);
      v13 = v28;
    }

    else
    {
      v13 = v8;
    }

    v14 = 0;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v13 + 56);
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
LABEL_17:
      v17 &= v17 - 1;

      v21 = sub_1AADB0938(v20);
      v23 = v22;

      if (v23)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = *(v5 + 8);
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AAD98974();
        }

        v26 = *(*(v25 + 56) + 8 * v21);
        sub_1AAD92370(v21, v25, v27);
        *(v5 + 8) = v25;
        AGSubgraphRemoveChild();
        *(v26 + 92) = 1;
      }
    }

    while (1)
    {
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v19 >= v18)
      {

        *v5 = v6;
        return;
      }

      v17 = *(v13 + 56 + 8 * v19);
      ++v14;
      if (v17)
      {
        v14 = v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1AAECC948(unint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v3 = sub_1AAF8D974();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAECE148(0, &qword_1ED9ADB70, MEMORY[0x1E6981910], MEMORY[0x1E697DDB8]);
  v8 = v7;
  v68 = *(v7 - 8);
  v70 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v57 - v9;
  v10 = sub_1AAF8E434();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v1;
  v13 = *v1;
  sub_1AAECE148(0, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v65 = v6;
  v66 = v8;
  v15 = *Value;
  if (*(*Value + 16) <= a1)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v63 = v10;
  v64 = v3;
  v62 = v11;
  v77 = a1;
  v16 = (v15 + 80 * a1);
  v88 = v16[2];
  v17 = v16[5];
  v18 = v16[6];
  v19 = v16[4];
  v89 = v16[3];
  v90 = v19;
  v91 = v17;
  v92 = v18;
  v72 = v89;
  v73 = *(&v89 + 1);
  v74 = v19;
  v71 = *(&v88 + 1);
  v20 = v88;
  State = type metadata accessor for MakeState(0);
  v75 = v78 + *(State + 28);
  v22 = *(v75 + 1);
  v23 = *(v22 + 16);

  if (v23)
  {
    sub_1AAEC8C04(&v88, &v83);

    v25 = sub_1AADB0938(v24);
    if (v26)
    {
      v27 = v25;

      v28 = *(*(v22 + 56) + 8 * v27);
      if (*(v28 + 92) == 1)
      {
        *(v28 + 92) = 0;

        AGSubgraphAddChild();
      }

      else
      {
      }

      v55 = v75;
      sub_1AAECDC58(&v88);
      v56 = *(v55 + 4);
      if (*(v28 + 88) == v56)
      {
      }

      else
      {
        *(v28 + 80) = v77;
        *(v28 + 16) = v20;

        *(v28 + 24) = v71;
        *(v28 + 32) = v72;
        *(v28 + 40) = v73;
        *(v28 + 48) = v74;
        *(v28 + 88) = v56;
      }

      return v28;
    }
  }

  else
  {
    sub_1AAEC8C04(&v88, &v83);
  }

  v29 = AGSubgraphGetGraph();
  v30 = AGSubgraphCreate();

  AGSubgraphAddChild();
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_20;
  }

  v32 = CurrentAttribute;
  v33 = AGGraphClearUpdate();
  v61 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  if (*(v15 + 16) <= v77)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v60 = v33;
  v83 = v16[2];
  v34 = v16[3];
  v35 = v16[4];
  v36 = v16[6];
  v86 = v16[5];
  v87 = v36;
  v84 = v34;
  v85 = v35;
  v79 = v32;
  v80 = v13;
  v81 = v20;
  sub_1AACBC63C();
  sub_1AAEC8C04(&v83, v82);
  sub_1AAECDB5C();
  sub_1AAF8D194();
  v82[2] = v85;
  v82[3] = v86;
  v82[4] = v87;
  v82[0] = v83;
  v82[1] = v84;
  AGGraphSetValue();
  v82[0] = vdupq_n_s64(0x4049000000000000uLL);
  type metadata accessor for CGSize(0);
  v38 = v37;
  sub_1AAF8D194();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  LODWORD(v82[0]) = IndirectAttribute2;
  sub_1AACBC63C();
  sub_1AAECDBB0();
  sub_1AAF8D194();
  LODWORD(v82[0]) = AGGraphCreateOffsetAttribute2();
  if (v70 != 4)
  {
    goto LABEL_22;
  }

  v57 = v38;
  v58 = v30;
  v59 = v15;
  v70 = v20;
  v40 = v67;
  v39 = v68;
  v41 = v66;
  (*(v68 + 16))(v67, v82, v66);
  v42 = v78 + *(State + 24);
  v43 = v64;
  v44 = v65;
  (*(v4 + 16))(v65, v42, v64);
  v45 = v69;
  sub_1AAF8EA94();
  (*(v4 + 8))(v44, v43);
  (*(v39 + 8))(v40, v41);
  result = sub_1AAF8E424();
  if ((result & 0x100000000) == 0)
  {
    v47 = result;
    LODWORD(v82[0]) = result;
    sub_1AACBC63C();
    sub_1AAECDC04();
    sub_1AAF8D194();
    AGGraphSetIndirectAttribute();
    v48 = sub_1AAF8E414();
    sub_1AAECDC58(&v83);
    (*(v62 + 8))(v45, v63);
    v49 = v61;
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();

    v50 = v75;
    v51 = *(v75 + 4);
    type metadata accessor for Item();
    v28 = swift_allocObject();
    v53 = v70;
    v52 = v71;
    *(v28 + 16) = v70;
    *(v28 + 24) = v52;
    *(v28 + 32) = v72;
    *(v28 + 40) = v73;
    *(v28 + 48) = v74;
    *(v28 + 56) = v58;
    *(v28 + 80) = v77;
    *(v28 + 88) = v51;
    *(v28 + 64) = v48;
    *(v28 + 68) = BYTE4(v48) & 1;
    *(v28 + 72) = v47;
    *(v28 + 76) = 0;
    *(v28 + 92) = 0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v82[0] = *(v50 + 1);
    sub_1AADD3B44(v28, v53, isUniquelyReferenced_nonNull_native);

    sub_1AAECDC58(&v88);
    *(v50 + 1) = *&v82[0];
    return v28;
  }

  __break(1u);
  return result;
}

double sub_1AAECD134()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 8);
  v2 = *(AGGraphGetValue() + 8);
  if (*(v2 + 16))
  {

    v4 = sub_1AADB0938(v1);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);

      v7 = *(v6 + 88);
      if (v7 == *(AGGraphGetValue() + 16))
      {
        v8 = *(v6 + 80);
        sub_1AAECE148(0, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
        Value = AGGraphGetValue();
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *(*Value + 16))
        {
          v10 = (*Value + 80 * v8);
          v15[0] = v10[2];
          v11 = v10[3];
          v12 = v10[4];
          v13 = v10[6];
          v16 = v10[5];
          v17 = v13;
          v15[1] = v11;
          v15[2] = v12;
          v14[7] = v12;
          v14[8] = v16;
          v14[9] = v13;
          v14[5] = v15[0];
          v14[6] = v11;
          sub_1AAEC8C04(v15, v14);
          AGGraphSetOutputValue();

          sub_1AAECDC58(v15);
          return result;
        }

        __break(1u);
      }
    }

    else
    {
    }
  }

  return result;
}

double sub_1AAECD350@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void sub_1AAECD368(uint64_t a1, double a2)
{
  sub_1AAECE148(0, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
  AGGraphGetValue();

  sub_1AAECC6D0(v2, v3);
  v5 = v4;

  if (v5)
  {
    AGGraphSetOutputValue();
  }
}

void sub_1AAECD44C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
}

uint64_t sub_1AAECD460@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CGSize(0);
  v2 = *AGGraphGetValue();
  result = AGGraphGetValue();
  v4 = *(result + 8);
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1AAECD4D0@<X0>(double *a1@<X8>)
{
  v2 = sub_1AAF8E404();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  sub_1AAF8DFB4();
  v14[8] = v7 & 1;
  v14[0] = v8 & 1;
  sub_1AAF8E3F4();
  v10 = v9;
  v12 = v11;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v10;
  *(a1 + 1) = v12;
  return result;
}

void *sub_1AAECD5FC(uint64_t a1)
{
  v1 = type metadata accessor for LayoutComputerContainer(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AADFACA8(0);
  Value = AGGraphGetValue();
  v6 = *Value;
  v37 = *(*Value + 16);
  if (!v37)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v7 = *(v1 + 24);
  v36 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  while (v8 < *(v6 + 16))
  {
    v12 = v2;
    sub_1AAECDAD8(v36 + *(v2 + 72) * v8, v4);
    v13 = *v4;
    sub_1AAF8DFB4();
    v40 = v14 & 1;
    v39 = v15 & 1;
    sub_1AAF8E3F4();
    v17 = v16;
    v19 = v18;
    v20 = sub_1AAF8E404();
    (*(*(v20 - 8) + 8))(v4 + v7, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v9;
    v22 = sub_1AADB0938(v13);
    v24 = v9[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_20;
    }

    v28 = v23;
    if (v9[3] < v27)
    {
      sub_1AAD8FA58(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_1AADB0938(v13);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v28)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v33 = v22;
    sub_1AAD98B04();
    v22 = v33;
    if (v28)
    {
LABEL_3:
      v10 = v22;

      v9 = v38;
      v11 = (v38[7] + 16 * v10);
      *v11 = v17;
      v11[1] = v19;
      goto LABEL_4;
    }

LABEL_12:
    v9 = v38;
    v38[(v22 >> 6) + 8] |= 1 << v22;
    *(v9[6] + 8 * v22) = v13;
    v30 = (v9[7] + 16 * v22);
    *v30 = v17;
    v30[1] = v19;
    v31 = v9[2];
    v26 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v26)
    {
      goto LABEL_21;
    }

    v9[2] = v32;
LABEL_4:
    ++v8;
    v2 = v12;
    if (v37 == v8)
    {

      return v9;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

void *sub_1AAECD8E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAECD5FC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1AAECD90C(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  v6 = 0.0;
  while (v4)
  {
    v7 = v1;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(result + 56) + ((v7 << 10) | (16 * v8));
    if (v6 <= *(v9 + 8))
    {
      v6 = *(v9 + 8);
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      return result;
    }

    v4 = *(result + 64 + 8 * v7);
    ++v1;
    if (v4)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAECD9AC(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  v6 = 0.0;
  while (v4)
  {
    v7 = v1;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(result + 56);
    v10 = (v7 << 10) | (16 * v8);
    if (v6 <= *(v9 + v10))
    {
      v6 = *(v9 + v10);
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      return result;
    }

    v4 = *(result + 64 + 8 * v7);
    ++v1;
    if (v4)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAECDA68@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 27);
  v4 = Value[1];
  v9 = *Value;
  v10[0] = v4;
  *(v10 + 11) = v3;
  sub_1AADF9958(&v9, &v8);
  sub_1AAEC56D0();
  v6 = v5;
  result = sub_1AADF9BF4(&v9);
  *a1 = v6;
  return result;
}

uint64_t sub_1AAECDAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutComputerContainer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AAECDB5C()
{
  result = qword_1ED9ADC00[0];
  if (!qword_1ED9ADC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9ADC00);
  }

  return result;
}

unint64_t sub_1AAECDBB0()
{
  result = qword_1ED9AEE10;
  if (!qword_1ED9AEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AEE10);
  }

  return result;
}

unint64_t sub_1AAECDC04()
{
  result = qword_1ED9AEC28;
  if (!qword_1ED9AEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AEC28);
  }

  return result;
}

uint64_t sub_1AAECDCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1AAECDDB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AAECDE50(uint64_t a1)
{
  sub_1AAECDDB8(319, &qword_1ED9AF540, sub_1AADFACDC, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1AAECDDB8(319, qword_1ED9AF548, sub_1AADFAC74, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AAECDF5C(uint64_t a1, double a2)
{
  sub_1AAECE000(319, a2);
  if (v2 <= 0x3F)
  {
    type metadata accessor for Subgraph(319);
    if (v3 <= 0x3F)
    {
      sub_1AAF8D974();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AAECE000(uint64_t a1, double a2)
{
  if (!qword_1ED9AEE18)
  {
    sub_1AAECE148(255, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
    v2 = sub_1AAF8D1A4();
    if (!v3)
    {
      atomic_store(v2, &qword_1ED9AEE18);
    }
  }
}

void sub_1AAECE0BC(uint64_t a1, double a2)
{
  if (!qword_1ED9AD8D0)
  {
    sub_1AAECE148(255, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9AD8D0);
    }
  }
}

void sub_1AAECE148(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAECE1CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1AAECE290(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1AAECE350(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1AAECE0BC(319, a2);
  if (v6 <= 0x3F)
  {
    a5(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1AAECE3F4()
{
  result = qword_1ED9AF648;
  if (!qword_1ED9AF648)
  {
    type metadata accessor for MakeState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF648);
  }

  return result;
}

void sub_1AAECE4AC(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB4A8(v2);
  }

  v3 = *(v2 + 2);
  v16[0] = (v2 + 32);
  v16[1] = v3;
  v4 = sub_1AAF90464();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v14 = v1;
      v8 = -1;
      v9 = 1;
      v10 = v2;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if (*(v12 + 43) >= *(v12 + 4))
          {
            break;
          }

          memcpy(__dst, v12 + 344, sizeof(__dst));
          memcpy(v12 + 344, v12 + 32, 0x138uLL);
          memcpy(v12 + 32, __dst, 0x138uLL);
          v12 -= 312;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 312;
        --v8;
      }

      while (v9 != v3);
      v1 = v14;
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    __dst[0] = (v7 + 32);
    __dst[1] = v6;
    sub_1AAECF5D8(__dst, v17, v16, v5);
    *(v7 + 16) = 0;
  }

  *v1 = v2;
}

void *sub_1AAECE630(unint64_t a1)
{
  AGGraphGetValue();
  sub_1AADF7BD0(0);

  AGGraphGetValue();

  sub_1AADF9430(MEMORY[0x1E69E7CC0]);
  return sub_1AAECE6D0();
}

void *sub_1AAECE6D0()
{
  v1 = v0[1];
  v45 = *v0;
  v41 = v45;
  v42 = v1;
  v43 = v0[2];
  v44 = *(v0 + 6);
  v2 = *(*(&v45 + 1) + 16);
  if (v2)
  {
    v3 = (*(&v45 + 1) + 32);

    do
    {
      memcpy(__dst, v3, 0x259uLL);
      sub_1AAECFE48(__dst, v38);
      sub_1AAECEB34(__dst);
      sub_1AAECFEA4(__dst);
      v3 += 608;
      --v2;
    }

    while (v2);
    sub_1AAECFEF8(&v45);
  }

  v4 = v43;
  v5 = *(v43 + 16);
  if (v5)
  {
    v6 = sub_1AAD6C428(*(v43 + 16), 0);
    v7 = sub_1AADA96BC(v38, v6 + 32, v5, v4);
    v8 = v38[0];
    swift_bridgeObjectRetain_n();
    sub_1AACC9C00(v8);
    if (v7 == v5)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v38[0] = v6;
  sub_1AAECE4AC(v38);

  v9 = *(v38[0] + 2);
  if (v9)
  {
    v10 = v42;
    v11 = v44;
    v12 = v9 - 1;
    for (i = v38[0] + 40; ; i += 312)
    {
      memcpy(v36, i - 8, sizeof(v36));
      v14 = v36[38];
      memcpy(__src, i, sizeof(__src));
      nullsub_1();
      memcpy(v38, __src, 0x121uLL);
      v38[37] = v14;
      v39 = 1;
      v40 = v10;
      sub_1AAD9BFEC(v36, v35);

      sub_1AAECFF4C(&v36[1], v35);

      sub_1AAF17C04(v15);
      v17 = *(v16 + 16);
      v18 = v11[2];
      v19 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v20 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v22 = v11[3] >> 1, v22 >= v19))
      {
        if (*(v20 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v27 = v18 + v17;
        }

        else
        {
          v27 = v18;
        }

        v11 = sub_1AAD6A1F4(isUniquelyReferenced_nonNull_native, v27, 1, v11);
        v22 = v11[3] >> 1;
        if (*(v20 + 16))
        {
LABEL_15:
          v23 = v22 - v11[2];
          sub_1AACFDAA8(0);
          if (v23 < v17)
          {
            goto LABEL_38;
          }

          swift_arrayInitWithCopy();

          if (v17)
          {
            v24 = v11[2];
            v25 = __OFADD__(v24, v17);
            v26 = v24 + v17;
            if (v25)
            {
              goto LABEL_39;
            }

            v11[2] = v26;
          }

          goto LABEL_24;
        }
      }

      if (v17)
      {
        goto LABEL_37;
      }

LABEL_24:
      sub_1AAECFFA8(v36);
      if (!v12)
      {

        v44 = v11;
        v17 = v11[2];
        if (v17)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }

      --v12;
    }
  }

  v11 = v44;
  v17 = v44[2];
  if (v17)
  {
LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_40:
      v11 = sub_1AADB820C(v11);
    }

    v28 = 0;
    do
    {
      v29 = v11[2];
      v25 = __OFSUB__(v29, v28);
      v30 = v29 - v28;
      if (v25)
      {
        __break(1u);
        goto LABEL_36;
      }

      v31 = v30;
      sub_1AACFDAA8(0);
      v33 = v11 + ((*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80)) + *(*(v32 - 8) + 72) * v28;
      *(v33 + 40) = v31;
      *v33 = v28++;
    }

    while (v17 != v28);
    v44 = v11;
  }

LABEL_34:

  return v11;
}

void *sub_1AAECEB08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAECE630(*v1);
  *a1 = result;
  return result;
}

void sub_1AAECEB34(uint64_t a1)
{
  v2 = v1;
  memcpy(__dst, (a1 + 8), 0x251uLL);
  v4 = sub_1AAECFFD8(__dst);
  if (!v4)
  {
    v13 = sub_1AACBB6B8(__dst);
    memcpy(v20, v13, 0x251uLL);
    sub_1AAECFE48(a1, v26);
    sub_1AAECED34(v20);
    sub_1AAECFEA4(a1);
    return;
  }

  if (v4 == 1)
  {
    v5 = sub_1AACBB6B8(__dst);
    v7 = *v5;
    v6 = v5[1];
    memcpy(__src, v5 + 2, sizeof(__src));
    v8 = v1[3];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      v1[3] = v10;
      v11 = *(v6 + 16);
      if (v11)
      {
        sub_1AAECFE48(a1, v26);

        v12 = 32;
        do
        {
          memcpy(v26, (v6 + v12), 0x259uLL);
          sub_1AAECFE48(v26, v20);
          sub_1AAECEB34(v26);
          sub_1AAECFEA4(v26);
          v12 += 608;
          --v11;
        }

        while (v11);
      }

      else
      {
        sub_1AAECFE48(a1, v26);
      }

      v14 = v1[3];
      if (v14 == 1)
      {
        v19[0] = v7;
        v19[1] = v6;
        memcpy(&v19[2], __src, 0x111uLL);
        nullsub_1();
        v15 = v1[5];
        v16 = v1[2];
        memcpy(v22, v19, sizeof(v22));
        v23 = v15;
        v24 = 0;
        v25 = v16;
        sub_1AAECFE48(a1, v20);

        sub_1AAF17C04(v17);
        sub_1AADC939C(v18);
        sub_1AAECFEA4(a1);

        v2[5] = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1AAECFEA4(a1);
      }

      if (!__OFSUB__(v14, 1))
      {
        v2[3] = v14 - 1;
        return;
      }
    }

    __break(1u);
  }
}

void sub_1AAECED34(_OWORD *a1)
{
  if (v1[3] < 1)
  {
    v7 = *(a1 + 312);
    v8 = *(a1 + 280);
    v66 = *(a1 + 296);
    v67 = v7;
    v9 = *(a1 + 312);
    v68 = *(a1 + 328);
    v10 = *(a1 + 248);
    v62 = *(a1 + 232);
    v63 = v10;
    v11 = *(a1 + 280);
    v64 = *(a1 + 264);
    v65 = v11;
    v12 = *(a1 + 216);
    v60 = *(a1 + 200);
    v61 = v12;
    v76 = v66;
    v77 = v9;
    v78 = *(a1 + 328);
    v13 = *(a1 + 248);
    v72 = *(a1 + 232);
    v73 = v13;
    v69 = *(a1 + 43);
    v79 = *(a1 + 43);
    v74 = v64;
    v75 = v8;
    v14 = *(a1 + 216);
    v70 = *(a1 + 200);
    v71 = v14;
    if (sub_1AAED0054(&v70) == 1)
    {
      sub_1AAED006C(__src);
      sub_1AACB61E4(0, &qword_1EB423B58, &type metadata for ChartAccessibilityContent.LeafItem, MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1AAF92AB0;
      memcpy((v15 + 32), a1, 0x251uLL);
      v16 = v1[2];
      memcpy(__dst, __src, 0x121uLL);
      __dst[37] = v15;
      LOBYTE(__dst[38]) = 0;
      __dst[39] = v16;
      sub_1AAECFFF8(a1, v80);

      sub_1AAF17C04(v17);
      sub_1AADC939C(v18);
      return;
    }

    v83[6] = v76;
    v83[7] = v77;
    v83[8] = v78;
    v84 = v79;
    v83[2] = v72;
    v83[3] = v73;
    v83[4] = v74;
    v83[5] = v75;
    v83[0] = v70;
    v83[1] = v71;
    v19 = v1[4];
    if (*(v19 + 16))
    {
      v20 = v1;
      v56 = v66;
      v57 = v67;
      v58 = v68;
      v59 = v69;
      v52 = v62;
      v53 = v63;
      v54 = v64;
      v55 = v65;
      v50 = v60;
      v51 = v61;
      sub_1AAD81BF4(&v50, v80);
      sub_1AADB0D50(v83);
      if (v21)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v82 = v1[4];
        v23 = v82;
        v25 = sub_1AADB0D50(v83);
        v26 = *(v23 + 16);
        v27 = (v24 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          __break(1u);
        }

        else
        {
          v2 = v24;
          if (*(v23 + 24) < v28)
          {
            sub_1AAD8FDBC(v28, isUniquelyReferenced_nonNull_native);
            v29 = sub_1AADB0D50(v83);
            if ((v2 & 1) != (v30 & 1))
            {
              goto LABEL_39;
            }

            v25 = v29;
            v31 = v20;
            if ((v2 & 1) == 0)
            {
              goto LABEL_23;
            }

LABEL_20:
            memmove(v80, (*(v82 + 56) + 312 * v25), 0x138uLL);
            nullsub_1();
LABEL_24:
            memcpy(v49, v80, sizeof(v49));
            v39 = v81;
            memcpy(__src, v49, sizeof(__src));
            v48 = v81;
            if (sub_1AAED01A4(__src) != 1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v39 = sub_1AAD6AD20(0, *(v39 + 2) + 1, 1, v39);
              }

              v41 = *(v39 + 2);
              v40 = *(v39 + 3);
              if (v41 >= v40 >> 1)
              {
                v39 = sub_1AAD6AD20((v40 > 1), v41 + 1, 1, v39);
              }

              *(v39 + 2) = v41 + 1;
              memcpy(&v39[600 * v41 + 32], a1, 0x251uLL);
              memcpy(v45, v49, 0x130uLL);
              *&v45[19] = v39;
              memcpy(v46, v45, sizeof(v46));
              if (sub_1AAED01A4(v46) == 1)
              {
                if ((v2 & 1) == 0)
                {
                  sub_1AAECFFF8(a1, v80);
                  sub_1AAED01BC(&v60, qword_1ED9B2098, &type metadata for AccessibilityDataField);
                  v42 = v82;
                  goto LABEL_37;
                }

                v42 = v82;
                v43 = *(v82 + 48) + 152 * v25;
                sub_1AAECFFF8(a1, v80);
                sub_1AAD81C50(v43);
                sub_1AAD935F0(v25, v42, v44);
              }

              else
              {
                v42 = v82;
                if ((v2 & 1) == 0)
                {
                  memcpy(__dst, v45, 0x138uLL);
                  sub_1AADD4660(v25, v83, __dst, v82);
                  sub_1AAECFFF8(a1, v80);
                  sub_1AAED009C(v45, v80, &qword_1EB426B20, &type metadata for ChartAccessibilityElements.GroupEntry);
                  goto LABEL_37;
                }

                memmove((*(v82 + 56) + 312 * v25), v45, 0x138uLL);
                sub_1AAECFFF8(a1, v80);
                sub_1AAED009C(v45, v80, &qword_1EB426B20, &type metadata for ChartAccessibilityElements.GroupEntry);
              }

              sub_1AAED01BC(&v60, qword_1ED9B2098, &type metadata for AccessibilityDataField);
LABEL_37:
              memcpy(v80, v49, sizeof(v80));
              v81 = v39;
              sub_1AAED01BC(v80, &qword_1EB426B20, &type metadata for ChartAccessibilityElements.GroupEntry);
              v31[4] = v42;
              return;
            }

            __break(1u);
LABEL_39:
            sub_1AAF905B4();
            __break(1u);
            return;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v31 = v20;
            if (v24)
            {
              goto LABEL_20;
            }

LABEL_23:
            sub_1AAED0170(v80);
            goto LABEL_24;
          }
        }

        sub_1AAD98C90();
        v31 = v20;
        if (v2)
        {
          goto LABEL_20;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v80[6] = v66;
      v80[7] = v67;
      v80[8] = v68;
      *&v80[9] = v69;
      v80[2] = v62;
      v80[3] = v63;
      v80[4] = v64;
      v80[5] = v65;
      v80[0] = v60;
      v80[1] = v61;
      sub_1AAD81BF4(v80, __dst);
    }

    v32 = sub_1AAED9CA4(MEMORY[0x1E69E7CC0]);
    v34 = v33;
    v82 = a1[36];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = v82;
    LOBYTE(v55) = 0;
    memset(v45, 0, 64);
    v45[4] = v82;
    LOBYTE(v45[5]) = 0;
    sub_1AAED009C(&v82, v80, &qword_1ED9B2A98, MEMORY[0x1E69E6158]);
    sub_1AAE0F994(&v50, v80);
    sub_1AAE0F9F0(v45);
    *&v46[96] = v76;
    *&v46[112] = v77;
    *&v46[128] = v78;
    *&v46[144] = v79;
    *&v46[32] = v72;
    *&v46[48] = v73;
    *&v46[64] = v74;
    *&v46[80] = v75;
    *v46 = v70;
    *&v46[16] = v71;
    nullsub_1();
    LODWORD(__src[0]) = v32;
    *(&__src[0] + 1) = v34;
    __src[3] = v52;
    __src[4] = v53;
    __src[5] = v54;
    LOBYTE(__src[6]) = v55;
    __src[1] = v50;
    __src[2] = v51;
    *(&__src[6] + 8) = *v46;
    *(&__src[7] + 8) = *&v46[16];
    *(&__src[11] + 8) = *&v46[80];
    *(&__src[10] + 8) = *&v46[64];
    *(&__src[9] + 8) = *&v46[48];
    *(&__src[8] + 8) = *&v46[32];
    *(&__src[15] + 1) = *&v46[144];
    *(&__src[14] + 8) = *&v46[128];
    *(&__src[13] + 8) = *&v46[112];
    *(&__src[12] + 8) = *&v46[96];
    v35 = a1[1];
    __src[16] = *a1;
    __src[17] = v35;
    LOBYTE(__src[18]) = 0;
    v36 = *(v19 + 16);
    sub_1AACB61E4(0, &qword_1EB423B58, &type metadata for ChartAccessibilityContent.LeafItem, MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1AAF92AB0;
    memcpy((v37 + 32), a1, 0x251uLL);
    memcpy(&__dst[1], __src, 0x121uLL);
    __dst[0] = v36;
    __dst[38] = v37;
    sub_1AAECFFF8(a1, v80);
    sub_1AAED009C(&v60, v80, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    sub_1AAECFF4C(__src, v80);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *&v80[0] = v1[4];
    sub_1AADD3CA4(__dst, v83, v38);
    sub_1AAED01BC(&v60, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    sub_1AAED011C(__src);
    v1[4] = *&v80[0];
    return;
  }

  v4 = v1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AAD6AD20(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1AAD6AD20((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  memcpy(&v4[600 * v6 + 32], a1, 0x251uLL);
  v1[5] = v4;
  sub_1AAECFFF8(a1, v80);
}

void sub_1AAECF5D8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v86 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_124:
      v7 = sub_1AADAA0A4(v7);
    }

    v76 = v7 + 16;
    v77 = *(v7 + 2);
    if (v77 >= 2)
    {
      while (*v88)
      {
        v78 = &v7[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1AAECFBC0((*v88 + 312 * *v78), (*v88 + 312 * *v80), (*v88 + 312 * v81), v86);
        if (v4)
        {
          goto LABEL_99;
        }

        if (v81 < v79)
        {
          goto LABEL_116;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_117;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_118;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_128;
    }

LABEL_99:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v88 + 312 * v6);
      v10 = 312 * v8;
      v11 = (*v88 + 312 * v8);
      v12 = *v11;
      v13 = v8 + 2;
      v14 = v11 + 78;
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v17 = (v9 < v12) ^ (*v14 >= v15);
        ++v13;
        v14 += 39;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v18 = 312 * v6 - 312;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v21 = *v88;
            if (!*v88)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v21 + v10), sizeof(__dst));
            memmove((v21 + v10), (v21 + v18), 0x138uLL);
            memcpy((v21 + v18), __dst, 0x138uLL);
          }

          ++v20;
          v18 -= 312;
          v10 += 312;
        }

        while (v20 < v19);
        v5 = v88[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AAD68568(0, *(v7 + 2) + 1, 1, v7);
    }

    v29 = *(v7 + 2);
    v28 = *(v7 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v7 = sub_1AAD68568((v28 > 1), v29 + 1, 1, v7);
    }

    *(v7 + 2) = v30;
    v31 = v7 + 32;
    v32 = &v7[16 * v29 + 32];
    *v32 = v8;
    *(v32 + 1) = v6;
    v86 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 4);
          v35 = *(v7 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_59:
          if (v37)
          {
            goto LABEL_106;
          }

          v50 = &v7[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_108;
          }

          v56 = &v31[16 * v33];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_113;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v30 < 2)
        {
          goto LABEL_114;
        }

        v60 = &v7[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_74:
        if (v55)
        {
          goto LABEL_110;
        }

        v63 = &v31[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_112;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v33 - 1 >= v30)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v88)
        {
          goto LABEL_126;
        }

        v71 = &v31[16 * v33 - 16];
        v72 = *v71;
        v73 = &v31[16 * v33];
        v74 = *(v73 + 1);
        sub_1AAECFBC0((*v88 + 312 * *v71), (*v88 + 312 * *v73), (*v88 + 312 * v74), v86);
        if (v4)
        {
          goto LABEL_99;
        }

        if (v74 < v72)
        {
          goto LABEL_101;
        }

        if (v33 > *(v7 + 2))
        {
          goto LABEL_102;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v7 + 2);
        if (v33 >= v75)
        {
          goto LABEL_103;
        }

        v30 = v75 - 1;
        memmove(&v31[16 * v33], v73 + 16, 16 * (v75 - 1 - v33));
        *(v7 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v31[16 * v30];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_104;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_105;
      }

      v45 = &v7[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_107;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_109;
      }

      if (v49 >= v41)
      {
        v67 = &v31[16 * v33];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_115;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v88[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v86 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v8 + a4);
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v86;
    goto LABEL_39;
  }

  v22 = *v88;
  v23 = *v88 + 312 * v6;
  v83 = v8;
  v24 = v8 - v6;
LABEL_31:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*v26 >= *(v26 - 39))
    {
LABEL_30:
      ++v6;
      v23 += 312;
      --v24;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v83;
      goto LABEL_38;
    }

    if (!v22)
    {
      break;
    }

    memcpy(__dst, v26, sizeof(__dst));
    memcpy(v26, v26 - 39, 0x138uLL);
    memcpy(v26 - 39, __dst, 0x138uLL);
    v26 -= 39;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
}

uint64_t sub_1AAECFBC0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 312;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 312;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[312 * v11] <= a4)
    {
      memmove(a4, __src, 312 * v11);
    }

    v12 = &v4[312 * v11];
    if (v10 >= 312 && v6 > v7)
    {
LABEL_21:
      v15 = v6 - 312;
      v5 -= 312;
      do
      {
        v16 = v5 + 312;
        v17 = (v12 - 312);
        if (*(v12 - 39) < *v15)
        {
          if (v16 != v6)
          {
            memmove(v5, v6 - 312, 0x138uLL);
          }

          if (v12 <= v4 || (v6 -= 312, v15 <= v7))
          {
            v6 = v15;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        if (v16 != v12)
        {
          memmove(v5, v12 - 312, 0x138uLL);
        }

        v5 -= 312;
        v12 -= 312;
      }

      while (v17 > v4);
      v12 = v17;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[312 * v9] <= a4)
    {
      memmove(a4, __dst, 312 * v9);
    }

    v12 = &v4[312 * v9];
    if (v8 < 312)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (*v6 < *v4)
        {
          v13 = v6;
          v14 = v7 == v6;
          v6 += 312;
          if (!v14)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 312;
          if (v4 >= v12 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v13 = v4;
        v14 = v7 == v4;
        v4 += 312;
        if (v14)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v13, 0x138uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v18 = (v12 - v4) / 312;
  if (v6 != v4 || v6 >= &v4[312 * v18])
  {
    memmove(v6, v4, 312 * v18);
  }

  return 1;
}

uint64_t sub_1AAECFFD8(uint64_t a1)
{
  v1 = *(a1 + 592);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AAED0054(void *a1)
{
  if ((*a1 >> 4) > 0x80000000)
  {
    return -(*a1 >> 4);
  }

  else
  {
    return 0;
  }
}

double sub_1AAED006C(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1AAED009C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACB61E4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_1AAED0170(uint64_t a1)
{
  *(a1 + 304) = 0;
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
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
  return result;
}

uint64_t sub_1AAED01A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AAED01BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACB61E4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAED0244(void *a1)
{
  if ((*a1 >> 4) > 0x80000000)
  {
    return -(*a1 >> 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAED0264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAED02AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAED0360()
{
  result = qword_1ED9AF810;
  if (!qword_1ED9AF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF810);
  }

  return result;
}

uint64_t sub_1AAED03B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
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

uint64_t sub_1AAED0410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAED04A0(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v17 = *MEMORY[0x1E69E9840];
  sub_1AAED98DC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1AACAE190(0, &qword_1ED9ADB90, type metadata accessor for AGAccessibilityRenderer, MEMORY[0x1E697DDB8]);
  sub_1AAF8D944();
  if (*(*(type metadata accessor for AGChartRendererContent(0) - 8) + 64))
  {
    type metadata accessor for AGAccessibilityRenderer(0);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  sub_1AAF8D944();
  v13 = AGGraphCreateOffsetAttribute2();
  v14 = OffsetAttribute2;
  v15 = 0;
  v16 = 1;
  sub_1AACBC63C();
  sub_1AAED9950();
  v7 = sub_1AAF8D194();
  sub_1AAF8D944();
  type metadata accessor for AGAccessibilityRenderer(0);
  v8 = AGGraphCreateOffsetAttribute2();
  v13 = v7;
  v14 = v8;
  sub_1AACBC63C();
  sub_1AAED0360();
  v9 = sub_1AAF8D194();
  v13 = v7;
  v14 = OffsetAttribute2;
  LODWORD(v15) = v8;
  sub_1AACBC63C();
  sub_1AACAE190(0, &qword_1ED9B29A8, sub_1AACFD9B4, MEMORY[0x1E69E6720]);
  sub_1AAED99A4();
  v10 = sub_1AAF8D194();
  v13 = v9;
  v14 = v10;
  sub_1AACBC63C();
  sub_1AAED9BCC(0, &qword_1ED9B2C80, MEMORY[0x1E697F960]);
  sub_1AAED99F8();
  v13 = sub_1AAF8D194();
  if (v5 != 4)
  {
    __break(1u);
  }

  (*(v4 + 16))(&v12[-2], &v13, v3);
  sub_1AAED9A4C();
  sub_1AAF8EAA4();
  return (*(v4 + 8))(&v12[-2], v3);
}

uint64_t sub_1AAED0870@<X0>(void *a2@<X8>)
{
  sub_1AAED9BCC(0, &qword_1ED9B2CF0, MEMORY[0x1E697F948]);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v39 - v4;
  v5 = sub_1AAF8E644();
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD597A8(0);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAD596F4(0);
  v47 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD595C0(0);
  v49 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAE190(0, &qword_1ED9B29A8, sub_1AACFD9B4, MEMORY[0x1E69E6720]);
  v19 = *AGGraphGetValue();
  if (v19)
  {
    v41 = v19;
    *v10 = sub_1AAF8F124();
    v10[1] = v20;
    sub_1AAED9C3C(0);
    v40 = v5;
    v53 = *AGGraphGetValue();
    swift_getKeyPath();
    v42 = v18;
    sub_1AACFE60C(0);
    v44 = v16;
    sub_1AAD598D4(0);
    v43 = v12;
    v21 = v14;
    sub_1AACECBA4(&qword_1ED9B2A38, sub_1AACFE60C, MEMORY[0x1E69E6338]);
    v45 = a2;
    sub_1AAD59ABC();

    sub_1AAF8EFC4();
    sub_1AAF8E634();
    v22 = sub_1AACECBA4(&qword_1ED9B2B38, sub_1AAD597A8, MEMORY[0x1E6981880]);
    v23 = v50;
    sub_1AAF8EB94();
    v46[1](v7, v40);
    sub_1AACFDFAC(v10, sub_1AAD597A8);
    v24 = type metadata accessor for ChartAXAudiograph();
    v25 = swift_allocObject();
    v26 = v41;
    *(v25 + 16) = v41;
    v52 = v25;
    v46 = v26;
    v53 = v23;
    v54 = v22;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = sub_1AACECBA4(qword_1ED9B6110, type metadata accessor for ChartAXAudiograph, &unk_1AAFC38F8);
    v29 = v42;
    v30 = v47;
    sub_1AAF8EBD4();

    (*(v43 + 8))(v21, v30);
    v31 = v44;
    v32 = v49;
    (*(v44 + 16))(v51, v29, v49);
    swift_storeEnumTagMultiPayload();
    v53 = v30;
    v54 = v24;
    v55 = OpaqueTypeConformance2;
    v56 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1AAF8E374();

    return (*(v31 + 8))(v29, v32);
  }

  else
  {
    *v10 = sub_1AAF8F124();
    v10[1] = v34;
    sub_1AAED9C3C(0);
    v53 = *AGGraphGetValue();
    swift_getKeyPath();
    sub_1AACFE60C(0);
    sub_1AAD598D4(0);
    sub_1AACECBA4(&qword_1ED9B2A38, sub_1AACFE60C, MEMORY[0x1E69E6338]);
    sub_1AAD59ABC();

    sub_1AAF8EFC4();
    sub_1AAEDA3C0(v10, v51, sub_1AAD597A8);
    swift_storeEnumTagMultiPayload();
    v35 = type metadata accessor for ChartAXAudiograph();
    v36 = sub_1AACECBA4(&qword_1ED9B2B38, sub_1AAD597A8, MEMORY[0x1E6981880]);
    v53 = v50;
    v54 = v36;
    v37 = swift_getOpaqueTypeConformance2();
    v38 = sub_1AACECBA4(qword_1ED9B6110, type metadata accessor for ChartAXAudiograph, &unk_1AAFC38F8);
    v53 = v47;
    v54 = v35;
    v55 = v37;
    v56 = v38;
    swift_getOpaqueTypeConformance2();
    sub_1AAF8E374();
    return sub_1AACFDFAC(v10, sub_1AAD597A8);
  }
}

uint64_t sub_1AAED1064(double *a1)
{
  sub_1AAD598D4(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v6 = a1[2];
  v9 = a1[3];
  v8 = a1[4];
  v23.origin.x = v7;
  v23.origin.y = v6;
  v23.size.width = v9;
  v23.size.height = v8;
  if (CGRectGetWidth(v23) <= 0.0)
  {
    v24.origin.x = v7;
    v24.origin.y = v6;
    v24.size.width = v9;
    v24.size.height = v8;
    v7 = CGRectGetMidX(v24) + -0.5;
    v9 = 1.0;
  }

  v25.origin.x = v7;
  v25.origin.y = v6;
  v25.size.width = v9;
  v25.size.height = v8;
  if (CGRectGetHeight(v25) <= 0.0)
  {
    v26.origin.x = v7;
    v26.origin.y = v6;
    v26.size.width = v9;
    v26.size.height = v8;
    CGRectGetMidY(v26);
  }

  sub_1AAF8E944();
  v10 = v22;
  sub_1AACFDAA8(0);
  v12 = *(v11 + 36);
  v13 = *(v3 + 36);
  v14 = sub_1AAF8E734();
  v15 = *(*(v14 - 8) + 16);
  v18 = v21;
  v19 = v20;
  v15(&v5[v13], a1 + v12, v14);
  v16 = v18;
  *v5 = v19;
  *(v5 + 1) = v16;
  v5[32] = v10;
  v5[33] = 1;
  sub_1AAF8DF64();
  return sub_1AACFDFAC(v5, sub_1AAD598D4);
}

uint64_t sub_1AAED123C@<X0>(uint64_t a1@<X8>)
{
  sub_1AAED9BCC(0, &qword_1ED9B2C80, MEMORY[0x1E697F960]);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1AAED1330()
{
  if (*(v0 + 288))
  {
    v1 = *(v0 + 8);
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = v1 + 40;
      do
      {
        v9 = (v8 + 608 * v7);
        for (i = v7; ; ++i)
        {
          if (i >= v6)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            return;
          }

          memcpy(__dst, v9 - 8, 0x259uLL);
          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_17;
          }

          memcpy(v19, v9, 0x251uLL);
          v11 = sub_1AAECFFD8(v19);
          if (v11 != 2)
          {
            break;
          }

          v9 += 608;
          if (v7 == v6)
          {
            return;
          }
        }

        if (v11)
        {
          v12 = sub_1AACBB6B8(v19);
          memcpy(v20, v12, sizeof(v20));
          sub_1AAECFE48(__dst, &v17);
          sub_1AAED1330();
          v26.origin.x = v13;
          v26.origin.y = v14;
          v26.size.width = v15;
          v26.size.height = v16;
          v23.origin.x = x;
          v23.origin.y = y;
          v23.size.width = width;
          v23.size.height = height;
          v24 = CGRectUnion(v23, v26);
          x = v24.origin.x;
          y = v24.origin.y;
          width = v24.size.width;
          height = v24.size.height;
          sub_1AAECFEA4(__dst);
        }

        else
        {
          v25 = *sub_1AACBB6B8(v19);
          v21.origin.x = x;
          v21.origin.y = y;
          v21.size.width = width;
          v21.size.height = height;
          v22 = CGRectUnion(v21, v25);
          x = v22.origin.x;
          y = v22.origin.y;
          width = v22.size.width;
          height = v22.size.height;
        }
      }

      while (v7 != v6);
    }
  }
}

void sub_1AAED14D8(__n128 a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for CollectedChartContent(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChartAccessibilityContent.Builder(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v10 = v9;
  v11 = *Value;
  if (!AGGraphGetOutputValue() || (v10 & 1) != 0 && ((*(v1 + 16) & 1) != 0 || *(v1 + 8) != v11))
  {
    type metadata accessor for AGChartRendererContent(0);
    v12 = AGGraphGetValue();
    sub_1AAEDA3C0(v12, v7, type metadata accessor for AGChartRendererContent);
    v13 = v5[5];
    v14 = MEMORY[0x1E69E7CC0];
    *&v7[v13] = sub_1AADF95EC(MEMORY[0x1E69E7CC0]);
    v15 = v5[6];
    *&v7[v15] = sub_1AADF89F0(v14);
    v7[v5[7]] = 0;
    sub_1AAEDA3C0(v7, v4, type metadata accessor for CollectedChartContent);
    v16 = v1;
    sub_1AAED1728(v4);
    v18 = v17;
    v20 = v19;
    sub_1AACFDFAC(v4, type metadata accessor for CollectedChartContent);
    sub_1AACFDFAC(v7, type metadata accessor for AGChartRendererContent);

    v21[2] = v18;
    v22 = v20;
    AGGraphSetOutputValue();

    *(v16 + 8) = v11;
    *(v16 + 16) = 0;
  }
}

void sub_1AAED1728(uint64_t a1)
{
  v3 = type metadata accessor for CollectedChartContent.Primitive(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CollectedChartContent(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - v17;
  sub_1AAEDA3C0(a1, v50 - v17, type metadata accessor for CollectedChartContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1AAED9F30(0, v20);
      v23 = v22;
      v24 = swift_projectBox();
      sub_1AAEDA3C0(v24 + *(v23 + 48), v15, type metadata accessor for CollectedChartContent);
      sub_1AAED1728(v15);
      sub_1AACFDFAC(v15, type metadata accessor for CollectedChartContent);
    }

    else
    {
      sub_1AAE0FA44(0, v20);
      v42 = v41;
      v43 = swift_projectBox();
      v44 = *(v42 + 48);
      sub_1AAEDA3C0(v43, v12, type metadata accessor for CollectedChartContent);
      sub_1AAED9E28(v43 + v44, v65);
      sub_1AAED9E28(v65, v62);
      if (v64 == 1)
      {
        v61 = v63;
        v58 = v62[2];
        v59 = v62[3];
        v60 = v62[4];
        v56 = v62[0];
        v57 = v62[1];
        if (v63 == 1)
        {
          sub_1AAE0F9F0(&v56);
        }

        else
        {
          *(v1 + *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 28)) = 1;
          sub_1AAED1728(v12);
          v46 = v45;
          v48 = v47;
          sub_1AAE2D7EC(v51);
          *&v55[48] = v58;
          *&v55[64] = v59;
          *&v55[80] = v60;
          v55[96] = v61;
          *&v55[16] = v56;
          *&v55[32] = v57;
          *(&v54[7] + 7) = v51[7];
          *(&v54[6] + 7) = v51[6];
          *(&v54[8] + 7) = v51[8];
          *(&v54[9] + 7) = v52;
          *(&v54[2] + 7) = v51[2];
          *(&v54[3] + 7) = v51[3];
          *(&v54[4] + 7) = v51[4];
          *(&v54[5] + 7) = v51[5];
          *(v54 + 7) = v51[0];
          *(&v54[1] + 7) = v51[1];
          v53 = 1;
          *v55 = v46;
          *&v55[8] = v48;
          *&v55[193] = v54[6];
          *&v55[209] = v54[7];
          *&v55[225] = v54[8];
          *&v55[129] = v54[2];
          *&v55[145] = v54[3];
          *&v55[161] = v54[4];
          *&v55[177] = v54[5];
          *&v55[97] = v54[0];
          *&v55[113] = v54[1];
          *&v55[240] = *(&v54[8] + 15);
          memset(&v55[256], 0, 32);
          v55[288] = 1;
          sub_1AAED9F0C(v55);
          memcpy(&v66[4], v55, 0x251uLL);
          sub_1AAEDB63C(0, &qword_1ED9AD6E8, &type metadata for ChartAccessibilityContent.Item, MEMORY[0x1E69E6F90]);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1AAF92AB0;
          *(v49 + 32) = 0;
          memcpy((v49 + 36), v66, 0x255uLL);
        }

        sub_1AAED9E84(v65);
        sub_1AACFDFAC(v12, type metadata accessor for CollectedChartContent);

        return;
      }

      sub_1AAED1728(v12);
      sub_1AAED9E84(v65);
      sub_1AACFDFAC(v12, type metadata accessor for CollectedChartContent);
      sub_1AACFDFAC(v62 + 8, sub_1AAED9ED8);
    }

LABEL_29:

    return;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1AACD5964(v18, v5, type metadata accessor for CollectedChartContent.Primitive);
    sub_1AAED1EBC(v5);
    sub_1AAEDB63C(0, &qword_1ED9AD6E8, &type metadata for ChartAccessibilityContent.Item, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1AAF92AB0;
    memcpy((v21 + 32), v66, 0x259uLL);
    sub_1AACFDFAC(v5, type metadata accessor for CollectedChartContent.Primitive);
    return;
  }

  v25 = *v18;
  v26 = *(*v18 + 16);
  v27 = *(v26 + 16);

  v28 = sub_1AAD6AFB8(0, v27, 0, MEMORY[0x1E69E7CC0]);
  v29 = *(v26 + 16);
  if (!v29)
  {
LABEL_28:

    sub_1AAED9CA4(v28);
    goto LABEL_29;
  }

  v50[1] = v26;
  v50[2] = v25;
  v30 = v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v31 = *(v7 + 72);
  while (1)
  {
    sub_1AAEDA3C0(v30, v9, type metadata accessor for CollectedChartContent);
    sub_1AAED1728(v9);
    v33 = v32;
    sub_1AACFDFAC(v9, type metadata accessor for CollectedChartContent);
    v34 = *(v33 + 16);
    v35 = *(v28 + 2);
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      break;
    }

    if (v36 > *(v28 + 3) >> 1)
    {
      if (v35 <= v36)
      {
        v40 = v35 + v34;
      }

      else
      {
        v40 = *(v28 + 2);
      }

      v28 = sub_1AAD6AFB8(1, v40, 1, v28);
      v35 = *(v28 + 2);
      if (*(v33 + 16))
      {
LABEL_13:
        if (((*(v28 + 3) >> 1) - v35) < v34)
        {
          goto LABEL_33;
        }

        swift_arrayInitWithCopy();

        if (v34)
        {
          v37 = *(v28 + 2);
          v38 = __OFADD__(v37, v34);
          v39 = v37 + v34;
          if (v38)
          {
            goto LABEL_34;
          }

          *(v28 + 2) = v39;
        }

        goto LABEL_9;
      }
    }

    else if (v34)
    {
      goto LABEL_13;
    }

    if (v34)
    {
      goto LABEL_32;
    }

LABEL_9:
    v30 += v31;
    if (!--v29)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_1AAED1EBC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v920 = *MEMORY[0x1E69E9840];
  if (*(v2 + 640) <= 0.0)
  {
    goto LABEL_107;
  }

  v5 = v2;
  v6 = v1 + *(type metadata accessor for AGChartRendererContent(0) + 28);
  v7 = *(v6 + 16);
  v8 = *(v6 + 40);
  v9 = *(v5 + 8);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v744 = v4;
      v98 = *(v5 + 128);
      v907 = *(v5 + 112);
      v908[0] = v98;
      *(v908 + 9) = *(v5 + 137);
      v99 = *(v5 + 64);
      v903 = *(v5 + 48);
      v904 = v99;
      v100 = *(v5 + 96);
      v905 = *(v5 + 80);
      v906 = v100;
      v101 = *(v5 + 32);
      v901 = *(v5 + 16);
      v902 = v101;
      v102 = (v5 + 160);
      v103 = *(v5 + 272);
      v916 = *(v5 + 256);
      v917[0] = v103;
      *(v917 + 9) = *(v5 + 281);
      v104 = *(v5 + 208);
      v912 = *(v5 + 192);
      v913 = v104;
      v105 = *(v5 + 240);
      v914 = *(v5 + 224);
      v915 = v105;
      v106 = *(v5 + 176);
      v910 = *(v5 + 160);
      v911 = v106;
      v107 = sub_1AAE63A88(&v901, &v910);
      if (v107)
      {
        v108 = *(v5 + 96);
        v109 = *(v5 + 128);
        v872 = *(v5 + 112);
        v873[0] = v109;
        *(v873 + 9) = *(v5 + 137);
        v110 = *(v5 + 32);
        v111 = *(v5 + 64);
        *&v870[32] = *(v5 + 48);
        *&v870[48] = v111;
        v112 = *(v5 + 64);
        v113 = *(v5 + 96);
        *&v870[64] = *(v5 + 80);
        v871 = v113;
        v114 = *(v5 + 32);
        *v870 = *(v5 + 16);
        *&v870[16] = v114;
        v115 = *(v5 + 128);
        v820 = v872;
        v821[0] = v115;
        *(v821 + 9) = *(v5 + 137);
        *&v818[32] = *&v870[32];
        *&v818[48] = v112;
        *&v818[64] = *&v870[64];
        v819 = v108;
        *v818 = *v870;
        *&v818[16] = v110;
        v116 = *(v5 + 240);
        v117 = *(v5 + 272);
        *&__src[96] = *(v5 + 256);
        *&__src[112] = v117;
        *&__src[121] = *(v5 + 281);
        v118 = *(v5 + 176);
        v120 = *(v5 + 192);
        v119 = *(v5 + 208);
        *&__src[32] = v120;
        *&__src[48] = v119;
        v121 = *(v5 + 208);
        v123 = *(v5 + 224);
        v122 = *(v5 + 240);
        *&__src[64] = v123;
        *&__src[80] = v122;
        v124 = *(v5 + 176);
        v125 = *v102;
        *__src = *v102;
        *&__src[16] = v124;
        v126 = *(v5 + 272);
        v828 = *&__src[96];
        v829[0] = v126;
        v127 = *(v5 + 281);
      }

      else
      {
        v198 = *(v5 + 240);
        v199 = *(v5 + 272);
        v872 = *(v5 + 256);
        v873[0] = v199;
        *(v873 + 9) = *(v5 + 281);
        v200 = *(v5 + 176);
        v201 = *(v5 + 208);
        *&v870[32] = *(v5 + 192);
        *&v870[48] = v201;
        v202 = *(v5 + 208);
        v203 = *(v5 + 240);
        *&v870[64] = *(v5 + 224);
        v871 = v203;
        v204 = *(v5 + 176);
        *v870 = *v102;
        *&v870[16] = v204;
        v205 = *(v5 + 272);
        v820 = v872;
        v821[0] = v205;
        *(v821 + 9) = *(v5 + 281);
        *&v818[32] = *&v870[32];
        *&v818[48] = v202;
        *&v818[64] = *&v870[64];
        v819 = v198;
        *v818 = *v870;
        *&v818[16] = v200;
        v116 = *(v5 + 96);
        v206 = *(v5 + 128);
        *&__src[96] = *(v5 + 112);
        *&__src[112] = v206;
        *&__src[121] = *(v5 + 137);
        v118 = *(v5 + 32);
        v120 = *(v5 + 48);
        v207 = *(v5 + 64);
        *&__src[32] = v120;
        *&__src[48] = v207;
        v121 = *(v5 + 64);
        v123 = *(v5 + 80);
        v208 = *(v5 + 96);
        *&__src[64] = v123;
        *&__src[80] = v208;
        v209 = *(v5 + 32);
        v125 = *(v5 + 16);
        *__src = v125;
        *&__src[16] = v209;
        v210 = *(v5 + 128);
        v828 = *&__src[96];
        v829[0] = v210;
        v127 = *(v5 + 137);
      }

      *(v829 + 9) = v127;
      v824 = v120;
      v825 = v121;
      v826 = v123;
      v827 = v116;
      v822 = v125;
      v823 = v118;
      sub_1AAE680CC(v870, &v839);
      sub_1AAE680CC(__src, &v839);
      *&v877[96] = v820;
      v878[0] = v821[0];
      *(v878 + 9) = *(v821 + 9);
      *&v877[32] = *&v818[32];
      *&v877[48] = *&v818[48];
      *&v877[64] = *&v818[64];
      *&v877[80] = v819;
      *v877 = *v818;
      *&v877[16] = *&v818[16];
      v899 = v828;
      v900[0] = v829[0];
      *(v900 + 9) = *(v829 + 9);
      *&v897[32] = v824;
      *&v897[48] = v825;
      *&v897[64] = v826;
      v898 = v827;
      *v897 = v822;
      *&v897[16] = v823;
      v918[6] = v820;
      v919[0] = v821[0];
      *(v919 + 9) = *(v821 + 9);
      v918[2] = *&v818[32];
      v918[3] = *&v818[48];
      v918[4] = *&v818[64];
      v918[5] = v819;
      v918[0] = *v818;
      v918[1] = *&v818[16];
      if (!sub_1AAE63EF0(v918))
      {
        v211 = sub_1AAD357A8(v918);
        v885 = *(v211 + 16);
        v886 = *(v211 + 32);
        v887 = *(v211 + 48);
        v888 = *(v211 + 64);
        v884 = *v211;
        *&v758[32] = *&v818[32];
        *&v758[48] = *&v818[48];
        *v758 = *v818;
        *&v758[16] = *&v818[16];
        *&v759[9] = *(v821 + 9);
        *&v758[96] = v820;
        *v759 = v821[0];
        *&v758[64] = *&v818[64];
        *&v758[80] = v819;
        v212 = sub_1AAD357A8(v758);
        sub_1AAE63EFC(v212, __src);
        v213 = v1;
        sub_1AAED741C(!v107, &v884, &v839);
        v873[1] = v847;
        v874 = v848;
        v875 = v849;
        *&v870[64] = v843;
        v871 = v844;
        v872 = v845;
        v873[0] = v846;
        *v870 = v839;
        *&v870[16] = v840;
        *&v870[32] = v841;
        *&v870[48] = v842;
        if (sub_1AAE492A8(v870) != 1)
        {
          v214 = *v870;
          v215 = *&v870[8];
          v809 = v873[0];
          v810[0] = v873[1];
          v810[1] = v874;
          *&v811 = v875;
          v805 = *&v870[48];
          v806 = *&v870[64];
          v807 = v871;
          v808 = v872;
          v803 = *&v870[16];
          v804 = *&v870[32];
          v216 = *(v6 + 256);
          v834 = *(v6 + 240);
          v835 = v216;
          v836 = *(v6 + 272);
          v217 = *(v6 + 192);
          v830 = *(v6 + 176);
          v831 = v217;
          v218 = *(v6 + 224);
          v832 = *(v6 + 208);
          v833 = v218;
          if (v830)
          {
            *v909 = v830;
            *&v909[40] = *(v6 + 216);
            *&v909[56] = *(v6 + 232);
            *&v909[72] = *(v6 + 248);
            *&v909[8] = *(v6 + 184);
            *&v909[24] = *(v6 + 200);
            *&v909[88] = *(v6 + 264);
            v219 = *(v6 + 296);
            v751 = *(v6 + 280);
            v752 = v219;
            v220 = *(v6 + 312);
            v221 = *(v6 + 328);
            v222 = *(v6 + 344);
            v223 = *(v6 + 360);
            v757 = *(v6 + 376);
            v755 = v222;
            v756 = v223;
            v753 = v220;
            v754 = v221;
            if (v751)
            {
              *v876 = v751;
              v224 = *(v6 + 336);
              *&v876[40] = *(v6 + 320);
              *&v876[56] = v224;
              v225 = *(v6 + 368);
              *&v876[72] = *(v6 + 352);
              *&v876[88] = v225;
              v226 = *(v6 + 304);
              *&v876[8] = *(v6 + 288);
              *&v876[24] = v226;
              sub_1AAEDA3C0(&v830, __src, sub_1AACFAA34);
              sub_1AAEDA3C0(&v751, __src, sub_1AACFAA34);
              sub_1AAE680CC(v897, __src);
              sub_1AAF754B8(v107, v897, &v793);
              v227 = sub_1AAD6AE5C(0, 1, 1, MEMORY[0x1E69E7CC0]);
              v229 = v227[2];
              v228 = v227[3];
              v230 = v229 + 1;
              if (v229 >= v228 >> 1)
              {
                v227 = sub_1AAD6AE5C((v228 > 1), v229 + 1, 1, v227);
              }

              v231 = v213;
              v227[2] = v230;
              v232 = &v227[19 * v229];
              *(v232 + 8) = v799;
              *(v232 + 9) = v800[0];
              *(v232 + 10) = v800[1];
              v232[22] = v801;
              *(v232 + 4) = v795;
              *(v232 + 5) = v796;
              *(v232 + 6) = v797;
              *(v232 + 7) = v798;
              *(v232 + 2) = v793;
              *(v232 + 3) = v794;
              sub_1AAEDA024(v5 + 336, v772, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
              if (HIBYTE(*&v772[64]) < 0xFFu)
              {
                if ((*&v772[64] & 0xFF00) == 0x200)
                {
                  v891 = *&v772[32];
                  v892 = *&v772[48];
                  LOBYTE(v893) = v772[64];
                  v889 = *v772;
                  v890 = *&v772[16];
                  *&v813[7] = *v772;
                  *&v813[23] = *&v772[16];
                  *&v813[39] = *&v772[32];
                  *&v813[55] = *&v772[48];
                  v813[71] = v772[64];
                  __src[0] = 5;
                  *&__src[1] = *v813;
                  *&__src[65] = *&v813[64];
                  *&__src[49] = *&v813[48];
                  *&__src[33] = *&v813[32];
                  *&__src[17] = *&v813[16];
                  __src[73] = 3;
                  sub_1AAEDA174(__src);
                  sub_1AAE63EFC(&v889, v855);
                  v444 = v227[3];
                  v445 = v229 + 2;
                  if (v445 > (v444 >> 1))
                  {
                    v227 = sub_1AAD6AE5C((v444 > 1), v445, 1, v227);
                  }

                  sub_1AAE63F58(&v889);
                  v857 = *&__src[96];
                  v858[0] = *&__src[112];
                  v858[1] = *&__src[128];
                  v859 = *&__src[144];
                  v855[2] = *&__src[32];
                  v855[3] = *&__src[48];
                  v855[4] = *&__src[64];
                  v856 = *&__src[80];
                  v855[0] = *__src;
                  v855[1] = *&__src[16];
                  nullsub_1();
                  v227[2] = v445;
                  v446 = &v227[19 * v230];
                  v447 = v855[1];
                  *(v446 + 2) = v855[0];
                  *(v446 + 3) = v447;
                  v448 = v855[2];
                  v449 = v855[3];
                  v450 = v856;
                  *(v446 + 6) = v855[4];
                  *(v446 + 7) = v450;
                  *(v446 + 4) = v448;
                  *(v446 + 5) = v449;
                  v451 = v857;
                  v452 = v858[0];
                  v453 = v858[1];
                  v446[22] = v859;
                  *(v446 + 9) = v452;
                  *(v446 + 10) = v453;
                  *(v446 + 8) = v451;
                }

                else
                {
                  sub_1AAEDA120(v772);
                }
              }

              else
              {
                sub_1AAEDA0A4(v772, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
              }

              sub_1AAEDA024(v5 + 424, v772, qword_1ED9B2508, &type metadata for ResolvedSymbol);
              if (HIBYTE(*&v772[64]) < 0xFFu)
              {
                if ((*&v772[64] & 0xFF00) == 0x200)
                {
                  v891 = *&v772[32];
                  v892 = *&v772[48];
                  LOBYTE(v893) = v772[64];
                  v889 = *v772;
                  v890 = *&v772[16];
                  *&v813[7] = *v772;
                  *&v813[23] = *&v772[16];
                  *&v813[39] = *&v772[32];
                  *&v813[55] = *&v772[48];
                  v813[71] = v772[64];
                  __src[0] = 6;
                  *&__src[1] = *v813;
                  *&__src[65] = *&v813[64];
                  *&__src[49] = *&v813[48];
                  *&__src[33] = *&v813[32];
                  *&__src[17] = *&v813[16];
                  __src[73] = 3;
                  sub_1AAEDA174(__src);
                  sub_1AAE63EFC(&v889, v855);
                  v509 = v227[2];
                  v508 = v227[3];
                  if (v509 >= v508 >> 1)
                  {
                    v227 = sub_1AAD6AE5C((v508 > 1), v509 + 1, 1, v227);
                  }

                  sub_1AAE63F58(&v889);
                  v857 = *&__src[96];
                  v858[0] = *&__src[112];
                  v858[1] = *&__src[128];
                  v859 = *&__src[144];
                  v855[2] = *&__src[32];
                  v855[3] = *&__src[48];
                  v855[4] = *&__src[64];
                  v856 = *&__src[80];
                  v855[0] = *__src;
                  v855[1] = *&__src[16];
                  nullsub_1();
                  v227[2] = v509 + 1;
                  v510 = &v227[19 * v509];
                  v511 = v855[1];
                  *(v510 + 2) = v855[0];
                  *(v510 + 3) = v511;
                  v512 = v855[2];
                  v513 = v855[3];
                  v514 = v856;
                  *(v510 + 6) = v855[4];
                  *(v510 + 7) = v514;
                  *(v510 + 4) = v512;
                  *(v510 + 5) = v513;
                  v515 = v857;
                  v516 = v858[0];
                  v517 = v858[1];
                  v510[22] = v859;
                  *(v510 + 9) = v516;
                  *(v510 + 10) = v517;
                  *(v510 + 8) = v515;
                }

                else
                {
                  sub_1AAEDA1A8(v772);
                }
              }

              else
              {
                sub_1AAEDA0A4(v772, qword_1ED9B2508, &type metadata for ResolvedSymbol, MEMORY[0x1E69E6720]);
              }

              v518 = sub_1AAF70438(v227);
              v741 = v519;
              v520 = *(v5 + 128);
              v895 = *(v5 + 112);
              v896[0] = v520;
              *(v896 + 9) = *(v5 + 137);
              v521 = *(v5 + 64);
              v891 = *(v5 + 48);
              v892 = v521;
              v522 = *(v5 + 96);
              v893 = *(v5 + 80);
              v894 = v522;
              v523 = *(v5 + 32);
              v889 = *(v5 + 16);
              v890 = v523;
              v524 = *(v6 + 480);
              v525 = type metadata accessor for ChartAccessibilityContent.Builder(0);
              v526 = *(v525 + 24);
              sub_1AAF27F58(&v889, v909, v524, (v231 + v526), &v852);
              v527 = *(v5 + 272);
              v879[6] = *(v5 + 256);
              v880[0] = v527;
              *(v880 + 9) = *(v5 + 281);
              v528 = *(v5 + 208);
              v879[2] = *(v5 + 192);
              v879[3] = v528;
              v529 = *(v5 + 240);
              v879[4] = *(v5 + 224);
              v879[5] = v529;
              v530 = *(v5 + 176);
              v879[0] = *v102;
              v879[1] = v530;
              sub_1AAF27F58(v879, v876, v524, (v231 + v526), v881);
              if (v854 & 1) != 0 || (v883)
              {
                sub_1AAE68190(v877);

                sub_1AAE68190(v877);
                sub_1AACFDFAC(&v830, sub_1AACFAA34);
                sub_1AAE68190(v897);
                sub_1AACFDFAC(&v751, sub_1AACFAA34);
                sub_1AAEDA0A4(&v839, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group, MEMORY[0x1E69E6720]);
                goto LABEL_57;
              }

              v732 = v852;
              v531 = v853;
              v532 = v881[0];
              if (!*(v6 + 280) || (v533 = *(v6 + 344), v533 == 255) || (v533 & 1) != 0 || (v534 = *(v6 + 336), (v535 = *(v534 + 16)) == 0))
              {
                v926.size.width = *(v6 + 48);
                v926.size.height = *(v6 + 56);
                v926.origin.x = v7 + 40.0;
                v926.origin.y = v8 + 40.0;
                Height = CGRectGetHeight(v926);
              }

              else
              {
                Height = vabdd_f64(*(v534 + 32 + 8 * v535 - 8), *(v534 + 32));
              }

              if (!*(v6 + 176) || (v548 = *(v6 + 240), v548 == 255) || (v548 & 1) != 0 || (v549 = *(v6 + 232), (v550 = *(v549 + 16)) == 0))
              {
                v927.size.width = *(v6 + 48);
                v927.size.height = *(v6 + 56);
                v927.origin.x = v7 + 40.0;
                v927.origin.y = v8 + 40.0;
                Width = CGRectGetWidth(v927);
              }

              else
              {
                Width = vabdd_f64(*(v549 + 32 + 8 * v550 - 8), *(v549 + 32));
              }

              if (v107)
              {
                if (*(v231 + *(v525 + 28)))
                {
                  v552 = v732;
                  if (v531 < v732)
                  {
                    v552 = v531;
                  }

                  v553 = 0.0;
                  Width = 0.0;
                }

                else
                {
                  if (v215 >= v214)
                  {
                    v552 = v214;
                  }

                  else
                  {
                    v552 = v215;
                  }

                  Width = vabdd_f64(v215, v214);
                  v553 = 0.0;
                }
              }

              else if (*(v231 + *(v525 + 28)))
              {
                if (*(&v532 + 1) >= *&v532)
                {
                  v553 = *&v532;
                }

                else
                {
                  v553 = *(&v532 + 1);
                }

                v552 = 0.0;
                Height = 0.0;
              }

              else
              {
                if (v215 >= v214)
                {
                  v553 = v214;
                }

                else
                {
                  v553 = v215;
                }

                Height = vabdd_f64(v215, v214);
                v552 = 0.0;
              }

              v656 = Height;
              v933 = CGRectOffset(*(&Width - 2), v7, v8);
              x = v933.origin.x;
              y = v933.origin.y;
              v659 = v933.size.width;
              v660 = v933.size.height;

              sub_1AAF754B8(!v107, v877, v749);
              sub_1AAE68190(v877);
              sub_1AACFDFAC(&v830, sub_1AACFAA34);
              sub_1AACFDFAC(&v751, sub_1AACFAA34);
              sub_1AAE68190(v897);

              v661 = v5 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 84);
              v662 = *(v661 + 48);
              v777 = *(v661 + 32);
              v778 = v662;
              v779 = *(v661 + 64);
              v780 = *(v661 + 80);
              v663 = *(v661 + 16);
              v775 = *v661;
              v776 = v663;
              if (*(&v663 + 1) == 1)
              {
                LOBYTE(v856) = 0;
                memset(v855, 0, sizeof(v855));
                memset(__src, 0, 81);
                sub_1AAE0F994(v855, v813);
                sub_1AAE0F9F0(__src);
                v664 = v856;
                v666 = *(&v855[4] + 1);
                v665 = *&v855[4];
                v727 = v855[2];
                v734 = v855[3];
                v715 = v855[1];
                v720 = v855[0];
              }

              else
              {
                v734 = v778;
                v720 = v775;
                v727 = v777;
                v666 = *(&v779 + 1);
                v665 = v779;
                v664 = v780;
                v715 = v776;
              }

              *&v772[96] = v809;
              v773[0] = v810[0];
              v773[1] = v810[1];
              v774 = v811;
              *&v772[32] = v805;
              *&v772[48] = v806;
              *&v772[64] = v807;
              *&v772[80] = v808;
              *v772 = v803;
              *&v772[16] = v804;
              sub_1AAE2D7EC(v813);
              sub_1AAEDA024(&v775, __src, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties);

              v653 = v664 & 1;
              v857 = *&v772[96];
              v858[0] = v773[0];
              v858[1] = v773[1];
              v859 = v774;
              v855[2] = *&v772[32];
              v855[3] = *&v772[48];
              v855[4] = *&v772[64];
              v856 = *&v772[80];
              v855[0] = *v772;
              v855[1] = *&v772[16];
              nullsub_1();
              *&__src[296] = v857;
              *&__src[312] = v858[0];
              *&__src[328] = v858[1];
              *&__src[264] = v855[4];
              *&__src[280] = v856;
              *&__src[232] = v855[2];
              *&__src[248] = v855[3];
              *&__src[200] = v855[0];
              *&__src[216] = v855[1];
              *&__src[448] = v815;
              *&__src[464] = v816[0];
              *&__src[480] = v816[1];
              *&__src[496] = v817;
              *&__src[384] = *&v813[32];
              *&__src[400] = *&v813[48];
              *&__src[416] = *&v813[64];
              *&__src[432] = v814;
              *&__src[352] = *v813;
              *&__src[368] = *&v813[16];
              *__src = x;
              *&__src[8] = y;
              *&__src[16] = v659;
              *&__src[24] = v660;
              *&__src[136] = v749[6];
              *&__src[152] = v749[7];
              *&__src[168] = v749[8];
              *&__src[32] = v518;
              *&__src[184] = v750;
              *&__src[72] = v749[2];
              *&__src[88] = v749[3];
              *&__src[104] = v749[4];
              *&__src[120] = v749[5];
              *&__src[40] = v749[0];
              *&__src[56] = v749[1];
              *&__src[344] = v859;
              *&__src[192] = v741;
              *&__src[504] = 257;
              *&__src[506] = v850[0];
              *&__src[510] = WORD2(v850[0]);
              *&__src[512] = v720;
              *&__src[528] = v715;
              *&__src[544] = v727;
              *&__src[560] = v734;
              *&__src[576] = v665;
              *&__src[584] = v666;
              goto LABEL_298;
            }
          }

          sub_1AAEDA0A4(&v839, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group, MEMORY[0x1E69E6720]);
        }

        sub_1AAE68190(v877);
      }

      v197 = v897;
LABEL_56:
      sub_1AAE68190(v197);
      sub_1AAE68190(v877);
      goto LABEL_57;
    }

    if (v9 == 4)
    {
      v35 = *(v6 + 256);
      *&v758[64] = *(v6 + 240);
      *&v758[80] = v35;
      *&v758[96] = *(v6 + 272);
      v36 = *(v6 + 192);
      *v758 = *(v6 + 176);
      *&v758[16] = v36;
      v37 = *(v6 + 224);
      *&v758[32] = *(v6 + 208);
      *&v758[48] = v37;
      if (!*v758)
      {
        goto LABEL_107;
      }

      *&v879[0] = *v758;
      *(&v879[2] + 8) = *(v6 + 216);
      *(&v879[3] + 8) = *(v6 + 232);
      *(&v879[4] + 8) = *(v6 + 248);
      *(v879 + 8) = *(v6 + 184);
      *(&v879[1] + 8) = *(v6 + 200);
      *(&v879[5] + 8) = *(v6 + 264);
      v38 = *(v6 + 296);
      *v909 = *(v6 + 280);
      *&v909[16] = v38;
      v39 = *(v6 + 312);
      v40 = *(v6 + 328);
      v41 = *(v6 + 344);
      v42 = *(v6 + 360);
      *&v909[96] = *(v6 + 376);
      *&v909[64] = v41;
      *&v909[80] = v42;
      *&v909[32] = v39;
      *&v909[48] = v40;
      if (!*v909)
      {
        goto LABEL_107;
      }

      *v877 = *v909;
      v43 = *(v6 + 336);
      *&v877[40] = *(v6 + 320);
      *&v877[56] = v43;
      v44 = *(v6 + 368);
      *&v877[72] = *(v6 + 352);
      *&v877[88] = v44;
      v45 = *(v6 + 304);
      *&v877[8] = *(v6 + 288);
      *&v877[24] = v45;
      v46 = *(v5 + 16);
      v47 = *(v5 + 32);
      v48 = *(v5 + 64);
      v891 = *(v5 + 48);
      v892 = v48;
      v889 = v46;
      v890 = v47;
      v49 = *(v5 + 80);
      v50 = *(v5 + 96);
      *(v896 + 9) = *(v5 + 137);
      v51 = *(v5 + 128);
      v895 = *(v5 + 112);
      v896[0] = v51;
      v893 = v49;
      v894 = v50;
      v52 = sub_1AAE63EF0(&v889);
      v744 = v4;
      if (v52 == 5 || v52 == 3)
      {
        sub_1AAD357A8(&v889);
        v53 = *(v5 + 240);
        v54 = *(v5 + 272);
        v872 = *(v5 + 256);
        v873[0] = v54;
        *(v873 + 9) = *(v5 + 281);
        v55 = *(v5 + 176);
        v56 = *(v5 + 208);
        *&v870[32] = *(v5 + 192);
        *&v870[48] = v56;
        v57 = *(v5 + 208);
        v58 = *(v5 + 240);
        *&v870[64] = *(v5 + 224);
        v871 = v58;
        v59 = *(v5 + 176);
        *v870 = *(v5 + 160);
        *&v870[16] = v59;
        v60 = *(v5 + 272);
        *&__src[96] = v872;
        *&__src[112] = v60;
        *&__src[121] = *(v5 + 281);
        *&__src[32] = *&v870[32];
        *&__src[48] = v57;
        *&__src[64] = *&v870[64];
        *&__src[80] = v53;
        *__src = *v870;
        *&__src[16] = v55;
        v61 = *(v5 + 96);
        v62 = *(v5 + 128);
        v820 = *(v5 + 112);
        v821[0] = v62;
        *(v821 + 9) = *(v5 + 137);
        v63 = *(v5 + 32);
        v64 = *(v5 + 64);
        *&v818[32] = *(v5 + 48);
        *&v818[48] = v64;
        v65 = *(v5 + 64);
        v66 = *(v5 + 96);
        *&v818[64] = *(v5 + 80);
        v819 = v66;
        v67 = *(v5 + 32);
        *v818 = *(v5 + 16);
        *&v818[16] = v67;
        *&__src[265] = *(v5 + 137);
        v68 = *(v5 + 128);
        *&__src[240] = v820;
        *&__src[256] = v68;
        *&__src[176] = *&v818[32];
        *&__src[192] = v65;
        *&__src[208] = *&v818[64];
        *&__src[224] = v61;
        *&__src[144] = *v818;
        *&__src[160] = v63;
        sub_1AAE680CC(v870, &v839);
        sub_1AAE680CC(v818, &v839);
        v69 = 0;
        v722 = 1;
      }

      else
      {
        v236 = *(v5 + 96);
        v237 = *(v5 + 128);
        v872 = *(v5 + 112);
        v873[0] = v237;
        *(v873 + 9) = *(v5 + 137);
        v238 = *(v5 + 32);
        v239 = *(v5 + 64);
        *&v870[32] = *(v5 + 48);
        *&v870[48] = v239;
        v240 = *(v5 + 64);
        v241 = *(v5 + 96);
        *&v870[64] = *(v5 + 80);
        v871 = v241;
        v242 = *(v5 + 32);
        *v870 = *(v5 + 16);
        *&v870[16] = v242;
        v243 = *(v5 + 128);
        *&__src[96] = v872;
        *&__src[112] = v243;
        *&__src[121] = *(v5 + 137);
        *&__src[32] = *&v870[32];
        *&__src[48] = v240;
        *&__src[64] = *&v870[64];
        *&__src[80] = v236;
        *__src = *v870;
        *&__src[16] = v238;
        v244 = *(v5 + 240);
        v245 = *(v5 + 272);
        v820 = *(v5 + 256);
        v821[0] = v245;
        *(v821 + 9) = *(v5 + 281);
        v246 = *(v5 + 176);
        v247 = *(v5 + 208);
        *&v818[32] = *(v5 + 192);
        *&v818[48] = v247;
        v248 = *(v5 + 208);
        v249 = *(v5 + 240);
        *&v818[64] = *(v5 + 224);
        v819 = v249;
        v250 = *(v5 + 176);
        *v818 = *(v5 + 160);
        *&v818[16] = v250;
        *&__src[265] = *(v5 + 281);
        v251 = *(v5 + 272);
        *&__src[240] = v820;
        *&__src[256] = v251;
        *&__src[176] = *&v818[32];
        *&__src[192] = v248;
        *&__src[208] = *&v818[64];
        *&__src[224] = v244;
        *&__src[144] = *v818;
        *&__src[160] = v246;
        sub_1AAE680CC(v870, &v839);
        sub_1AAE680CC(v818, &v839);
        v722 = 0;
        v69 = 1;
      }

      v899 = *&__src[96];
      v900[0] = *&__src[112];
      *(v900 + 9) = *&__src[121];
      *&v897[32] = *&__src[32];
      *&v897[48] = *&__src[48];
      *&v897[64] = *&__src[64];
      v898 = *&__src[80];
      *v897 = *__src;
      *&v897[16] = *&__src[16];
      v815 = *&__src[240];
      v816[0] = *&__src[256];
      *(v816 + 9) = *&__src[265];
      *&v813[32] = *&__src[176];
      *&v813[48] = *&__src[192];
      *&v813[64] = *&__src[208];
      v814 = *&__src[224];
      *v813 = *&__src[144];
      *&v813[16] = *&__src[160];
      sub_1AAD6D0FC(0);
      v252 = swift_allocObject();
      *(v252 + 16) = xmmword_1AAF92AB0;
      sub_1AAEDA3C0(v758, __src, sub_1AACFAA34);
      sub_1AAEDA3C0(v909, __src, sub_1AACFAA34);
      sub_1AAE680CC(v813, __src);
      sub_1AAF754B8(v69, v813, &v803);
      v253 = v810[0];
      *(v252 + 128) = v809;
      *(v252 + 144) = v253;
      *(v252 + 160) = v810[1];
      *(v252 + 176) = v811;
      v254 = v806;
      *(v252 + 64) = v805;
      *(v252 + 80) = v254;
      v255 = v808;
      *(v252 + 96) = v807;
      *(v252 + 112) = v255;
      v256 = v804;
      *(v252 + 32) = v803;
      *(v252 + 48) = v256;
      sub_1AAEDA024(v5 + 336, &v839, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
      if (BYTE1(v843) < 0xFFu)
      {
        if ((v843 & 0xFF00) == 0x200)
        {
          v795 = v841;
          v796 = v842;
          LOBYTE(v797) = v843;
          v793 = v839;
          v794 = v840;
          *&v870[23] = v840;
          *&v870[7] = v839;
          *&v870[39] = v841;
          *&v870[55] = v842;
          v870[71] = v843;
          v818[0] = 5;
          *&v818[65] = *&v870[64];
          *&v818[49] = *&v870[48];
          *&v818[33] = *&v870[32];
          *&v818[17] = *&v870[16];
          *&v818[1] = *v870;
          v818[73] = 3;
          sub_1AAEDA174(v818);
          *&__src[96] = v820;
          *&__src[112] = v821[0];
          *&__src[128] = v821[1];
          *&__src[144] = v822;
          *&__src[32] = *&v818[32];
          *&__src[48] = *&v818[48];
          *&__src[64] = *&v818[64];
          *&__src[80] = v819;
          *__src = *v818;
          *&__src[16] = *&v818[16];
          nullsub_1();
          sub_1AAE63EFC(&v793, v855);
          v252 = sub_1AAD6AE5C(1, 2, 1, v252);
          sub_1AAE63F58(&v793);
          *(v252 + 16) = 2;
          v257 = *&__src[16];
          *(v252 + 184) = *__src;
          v258 = *&__src[96];
          v259 = *&__src[128];
          *(v252 + 296) = *&__src[112];
          *(v252 + 312) = v259;
          v260 = *&__src[48];
          *(v252 + 216) = *&__src[32];
          *(v252 + 232) = v260;
          v261 = *&__src[80];
          *(v252 + 248) = *&__src[64];
          *(v252 + 264) = v261;
          *(v252 + 280) = v258;
          *(v252 + 328) = *&__src[144];
          *(v252 + 200) = v257;
        }

        else
        {
          sub_1AAEDA120(&v839);
        }
      }

      else
      {
        sub_1AAEDA0A4(&v839, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
      }

      v729 = sub_1AAF70438(v252);
      v353 = v352;
      v857 = v899;
      v858[0] = v900[0];
      *(v858 + 9) = *(v900 + 9);
      v855[2] = *&v897[32];
      v855[3] = *&v897[48];
      v855[4] = *&v897[64];
      v856 = v898;
      v855[0] = *v897;
      v855[1] = *&v897[16];
      v354 = sub_1AAE63EF0(v855);
      v738 = v353;
      if (v354 != 2 && v354)
      {
        sub_1AAE49270(v818);
      }

      else
      {
        v355 = sub_1AAD357A8(v855);
        v752 = *(v355 + 16);
        v753 = *(v355 + 32);
        v754 = *(v355 + 48);
        LOBYTE(v755) = *(v355 + 64);
        v751 = *v355;
        sub_1AAED741C(v722, &v751, v818);
      }

      v356 = *(v5 + 128);
      *&v772[96] = *(v5 + 112);
      v773[0] = v356;
      *(v773 + 9) = *(v5 + 137);
      v357 = *(v5 + 64);
      *&v772[32] = *(v5 + 48);
      *&v772[48] = v357;
      v358 = *(v5 + 96);
      *&v772[64] = *(v5 + 80);
      *&v772[80] = v358;
      v359 = *(v5 + 32);
      *v772 = *(v5 + 16);
      *&v772[16] = v359;
      v360 = *(v6 + 480);
      v361 = *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 24);
      sub_1AAF27F58(v772, v879, v360, (v1 + v361), &v884);
      v362 = *(v5 + 272);
      v918[6] = *(v5 + 256);
      v919[0] = v362;
      *(v919 + 9) = *(v5 + 281);
      v363 = *(v5 + 208);
      v918[2] = *(v5 + 192);
      v918[3] = v363;
      v364 = *(v5 + 240);
      v918[4] = *(v5 + 224);
      v918[5] = v364;
      v365 = *(v5 + 176);
      v918[0] = *(v5 + 160);
      v918[1] = v365;
      sub_1AAF27F58(v918, v877, v360, (v1 + v361), &v775);
      if ((v887 & 1) == 0 && (v778 & 1) == 0)
      {
        v366 = v884;
        v367 = v775;
        v873[1] = v821[1];
        v874 = v822;
        v875 = v823;
        *&v870[64] = *&v818[64];
        v871 = v819;
        v872 = v820;
        v873[0] = v821[0];
        *v870 = *v818;
        *&v870[16] = *&v818[16];
        *&v870[32] = *&v818[32];
        *&v870[48] = *&v818[48];
        v4 = v744;
        if (sub_1AAE492A8(v870) == 1)
        {
          if (*(&v366 + 1) >= *&v366)
          {
            v368 = *&v366;
          }

          else
          {
            v368 = *(&v366 + 1);
          }

          if (*(&v367 + 1) >= *&v367)
          {
            v369 = *&v367;
          }

          else
          {
            v369 = *(&v367 + 1);
          }

          v370 = vabdd_f64(*(&v366 + 1), *&v366);
          v371 = vabdd_f64(*(&v367 + 1), *&v367);
        }

        else
        {
          if (!*(v6 + 280) || (v414 = *(v6 + 344), v414 == 255) || (v414 & 1) != 0 || (v415 = *(v6 + 336), (v416 = *(v415 + 16)) == 0))
          {
            v418 = *(v6 + 48);
            v419 = *(v6 + 56);
            sub_1AAEDA024(v818, __src, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group);
            v922.origin.x = v7 + 40.0;
            v922.origin.y = v8 + 40.0;
            v922.size.width = v418;
            v922.size.height = v419;
            v417 = CGRectGetHeight(v922);
          }

          else
          {
            v417 = vabdd_f64(*(v415 + 32 + 8 * v416 - 8), *(v415 + 32));
            sub_1AAEDA024(v818, __src, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group);
          }

          if (!*(v6 + 176) || (v420 = *(v6 + 240), v420 == 255) || (v420 & 1) != 0 || (v421 = *(v6 + 232), (v422 = *(v421 + 16)) == 0))
          {
            v923.size.width = *(v6 + 48);
            v923.size.height = *(v6 + 56);
            v923.origin.x = v7 + 40.0;
            v923.origin.y = v8 + 40.0;
            v423 = CGRectGetWidth(v923);
          }

          else
          {
            v423 = vabdd_f64(*(v421 + 32 + 8 * v422 - 8), *(v421 + 32));
          }

          v424 = *(v5 + 128);
          v907 = *(v5 + 112);
          v908[0] = v424;
          *(v908 + 9) = *(v5 + 137);
          v425 = *(v5 + 64);
          v903 = *(v5 + 48);
          v904 = v425;
          v426 = *(v5 + 96);
          v905 = *(v5 + 80);
          v906 = v426;
          v427 = *(v5 + 32);
          v901 = *(v5 + 16);
          v902 = v427;
          v428 = *(v5 + 272);
          v916 = *(v5 + 256);
          v917[0] = v428;
          *(v917 + 9) = *(v5 + 281);
          v429 = *(v5 + 208);
          v912 = *(v5 + 192);
          v913 = v429;
          v430 = *(v5 + 240);
          v914 = *(v5 + 224);
          v915 = v430;
          v431 = *(v5 + 176);
          v910 = *(v5 + 160);
          v911 = v431;
          v432 = sub_1AAE63A88(&v901, &v910);
          sub_1AAEDA0A4(v818, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group, MEMORY[0x1E69E6720]);
          if (*&v870[8] >= *v870)
          {
            v433 = *v870;
          }

          else
          {
            v433 = *&v870[8];
          }

          v371 = vabdd_f64(*&v870[8], *v870);
          v369 = 0.0;
          if (v432)
          {
            v368 = v433;
          }

          else
          {
            v368 = 0.0;
          }

          if (v432)
          {
            v370 = v371;
          }

          else
          {
            v369 = v433;
            v370 = v423;
          }

          if (v432)
          {
            v371 = v417;
          }
        }

        v924 = CGRectOffset(*&v368, v7, v8);
        v434 = v924.origin.x;
        v435 = v924.origin.y;
        v436 = v924.size.width;
        v437 = v924.size.height;

        sub_1AAF754B8(v722, v897, v770);
        sub_1AACFDFAC(v758, sub_1AACFAA34);
        sub_1AACFDFAC(v909, sub_1AACFAA34);
        sub_1AAE68190(v813);

        v846 = v821[0];
        v847 = v821[1];
        v848 = v822;
        v842 = *&v818[48];
        v843 = *&v818[64];
        v844 = v819;
        v845 = v820;
        v839 = *v818;
        v840 = *&v818[16];
        v849 = v823;
        v841 = *&v818[32];
        if (sub_1AAE492A8(&v839) == 1)
        {
          sub_1AAE2D7EC(&v760);
        }

        else
        {
          *&__src[96] = v846;
          *&__src[112] = v847;
          *&__src[128] = v848;
          *&__src[144] = v849;
          *&__src[32] = v842;
          *&__src[48] = v843;
          *&__src[64] = v844;
          *&__src[80] = v845;
          *__src = v840;
          *&__src[16] = v841;
          nullsub_1();
          v766 = *&__src[96];
          v767 = *&__src[112];
          v768 = *&__src[128];
          v769 = *&__src[144];
          v762 = *&__src[32];
          v763 = *&__src[48];
          v764 = *&__src[64];
          v765 = *&__src[80];
          v760 = *__src;
          v761 = *&__src[16];
        }

        v438 = v5 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 84);
        v439 = *(v438 + 48);
        *&v876[32] = *(v438 + 32);
        *&v876[48] = v439;
        *&v876[64] = *(v438 + 64);
        v876[80] = *(v438 + 80);
        v440 = *(v438 + 16);
        *v876 = *v438;
        *&v876[16] = v440;
        if (*(&v440 + 1) == 1)
        {
          LOBYTE(v798) = 0;
          v796 = 0u;
          v797 = 0u;
          v794 = 0u;
          v795 = 0u;
          v793 = 0u;
          memset(__src, 0, 81);
          sub_1AAE0F994(&v793, &v830);
          sub_1AAE0F9F0(__src);
          v441 = v798;
          v443 = *(&v797 + 1);
          v442 = v797;
          v716 = v795;
          v723 = v796;
          v713 = v794;
          v714 = v793;
        }

        else
        {
          v723 = *&v876[48];
          v714 = *v876;
          v716 = *&v876[32];
          v442 = *&v876[64];
          v443 = *&v876[72];
          v441 = v876[80];
          v713 = *&v876[16];
        }

        sub_1AAE2D7EC(&v793);
        sub_1AAEDA024(v876, __src, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties);

        *&__src[448] = v799;
        *&__src[464] = v800[0];
        *&__src[480] = v800[1];
        *&__src[496] = v801;
        *&__src[384] = v795;
        *&__src[400] = v796;
        *&__src[416] = v797;
        *&__src[432] = v798;
        *&__src[352] = v793;
        *&__src[368] = v794;
        *__src = v434;
        *&__src[8] = v435;
        *&__src[16] = v436;
        *&__src[24] = v437;
        *&__src[136] = v770[6];
        *&__src[152] = v770[7];
        *&__src[168] = v770[8];
        *&__src[32] = v729;
        *&__src[184] = v771;
        *&__src[72] = v770[2];
        *&__src[88] = v770[3];
        *&__src[104] = v770[4];
        *&__src[120] = v770[5];
        *&__src[40] = v770[0];
        *&__src[56] = v770[1];
        *&__src[296] = v766;
        *&__src[312] = v767;
        *&__src[328] = v768;
        *&__src[264] = v764;
        *&__src[280] = v765;
        *&__src[192] = v738;
        *&__src[344] = v769;
        *&__src[232] = v762;
        *&__src[248] = v763;
        *&__src[200] = v760;
        *&__src[216] = v761;
        *&__src[504] = 1;
        *&__src[512] = v714;
        *&__src[528] = v713;
        *&__src[544] = v716;
        *&__src[560] = v723;
        *&__src[576] = v442;
        *&__src[584] = v443;
        __src[592] = v441 & 1;
        sub_1AAEDA100(__src);
        goto LABEL_108;
      }

      sub_1AACFDFAC(v758, sub_1AACFAA34);
      sub_1AAE68190(v813);
      sub_1AACFDFAC(v909, sub_1AACFAA34);
      sub_1AAE68190(v897);
      sub_1AAEDA0A4(v818, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group, MEMORY[0x1E69E6720]);
      goto LABEL_57;
    }

    v156 = *(v6 + 256);
    *&v876[64] = *(v6 + 240);
    *&v876[80] = v156;
    *&v876[96] = *(v6 + 272);
    v157 = *(v6 + 192);
    *v876 = *(v6 + 176);
    *&v876[16] = v157;
    v158 = *(v6 + 224);
    *&v876[32] = *(v6 + 208);
    *&v876[48] = v158;
    if (!*v876)
    {
      goto LABEL_107;
    }

    *v758 = *v876;
    *&v758[40] = *(v6 + 216);
    *&v758[56] = *(v6 + 232);
    *&v758[72] = *(v6 + 248);
    *&v758[8] = *(v6 + 184);
    *&v758[24] = *(v6 + 200);
    *&v758[88] = *(v6 + 264);
    v159 = *(v6 + 296);
    v830 = *(v6 + 280);
    v831 = v159;
    v160 = *(v6 + 312);
    v161 = *(v6 + 328);
    v162 = *(v6 + 344);
    v163 = *(v6 + 360);
    v836 = *(v6 + 376);
    v834 = v162;
    v835 = v163;
    v832 = v160;
    v833 = v161;
    if (!v830)
    {
      goto LABEL_107;
    }

    v744 = v4;
    *v909 = v830;
    v164 = *(v6 + 336);
    *&v909[40] = *(v6 + 320);
    *&v909[56] = v164;
    v165 = *(v6 + 368);
    *&v909[72] = *(v6 + 352);
    *&v909[88] = v165;
    v166 = *(v6 + 304);
    *&v909[8] = *(v6 + 288);
    *&v909[24] = v166;
    v167 = *(v5 + 16);
    v168 = *(v5 + 32);
    v169 = *(v5 + 64);
    v912 = *(v5 + 48);
    v913 = v169;
    v910 = v167;
    v911 = v168;
    v170 = *(v5 + 80);
    v171 = *(v5 + 96);
    *(v917 + 9) = *(v5 + 137);
    v172 = *(v5 + 128);
    v916 = *(v5 + 112);
    v917[0] = v172;
    v914 = v170;
    v915 = v171;
    v173 = *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 24);
    sub_1AAEDA3C0(v876, __src, sub_1AACFAA34);
    sub_1AAEDA3C0(&v830, __src, sub_1AACFAA34);
    sub_1AAF27F58(&v910, v758, 0, (v1 + v173), v850);
    v174 = (v5 + 160);
    v175 = *(v5 + 272);
    v907 = *(v5 + 256);
    v908[0] = v175;
    *(v908 + 9) = *(v5 + 281);
    v176 = *(v5 + 208);
    v903 = *(v5 + 192);
    v904 = v176;
    v177 = *(v5 + 240);
    v905 = *(v5 + 224);
    v906 = v177;
    v178 = *(v5 + 176);
    v901 = *(v5 + 160);
    v902 = v178;
    sub_1AAF27F58(&v901, v909, 0, (v1 + v173), &v852);
    if (v851 & 1) != 0 || (v854)
    {
      sub_1AACFDFAC(&v830, sub_1AACFAA34);
      v155 = v876;
      goto LABEL_31;
    }

    v319 = *v850;
    v320 = *&v850[1];
    v321 = v852;
    v322 = v853;
    v323 = *(v5 + 128);
    v895 = *(v5 + 112);
    v896[0] = v323;
    *(v896 + 9) = *(v5 + 137);
    v324 = *(v5 + 64);
    v891 = *(v5 + 48);
    v892 = v324;
    v325 = *(v5 + 96);
    v893 = *(v5 + 80);
    v894 = v325;
    v326 = *(v5 + 32);
    v889 = *(v5 + 16);
    v890 = v326;
    v327 = *(v5 + 272);
    v899 = *(v5 + 256);
    v900[0] = v327;
    *(v900 + 9) = *(v5 + 281);
    v328 = *(v5 + 208);
    *&v897[32] = *(v5 + 192);
    *&v897[48] = v328;
    v329 = *(v5 + 240);
    *&v897[64] = *(v5 + 224);
    v898 = v329;
    v330 = *(v5 + 176);
    *v897 = *v174;
    *&v897[16] = v330;
    v331 = sub_1AAE63A88(&v889, v897);
    if (v331)
    {
      v332 = *(v5 + 96);
      v333 = *(v5 + 128);
      v872 = *(v5 + 112);
      v873[0] = v333;
      *(v873 + 9) = *(v5 + 137);
      v334 = *(v5 + 32);
      v335 = *(v5 + 64);
      *&v870[32] = *(v5 + 48);
      *&v870[48] = v335;
      v336 = *(v5 + 64);
      v337 = *(v5 + 96);
      *&v870[64] = *(v5 + 80);
      v871 = v337;
      v338 = *(v5 + 32);
      *v870 = *(v5 + 16);
      *&v870[16] = v338;
      v339 = *(v5 + 128);
      v820 = v872;
      v821[0] = v339;
      *(v821 + 9) = *(v5 + 137);
      *&v818[32] = *&v870[32];
      *&v818[48] = v336;
      *&v818[64] = *&v870[64];
      v819 = v332;
      *v818 = *v870;
      *&v818[16] = v334;
      v340 = *(v5 + 240);
      v341 = *(v5 + 272);
      *&__src[96] = *(v5 + 256);
      *&__src[112] = v341;
      *&__src[121] = *(v5 + 281);
      v342 = *(v5 + 176);
      v344 = *(v5 + 192);
      v343 = *(v5 + 208);
      *&__src[32] = v344;
      *&__src[48] = v343;
      v345 = *(v5 + 208);
      v347 = *(v5 + 224);
      v346 = *(v5 + 240);
      *&__src[64] = v347;
      *&__src[80] = v346;
      v348 = *(v5 + 176);
      v349 = *v174;
      *__src = *v174;
      *&__src[16] = v348;
      v350 = *(v5 + 272);
      v828 = *&__src[96];
      v829[0] = v350;
      v351 = *(v5 + 281);
    }

    else
    {
      v399 = *(v5 + 240);
      v400 = *(v5 + 272);
      v872 = *(v5 + 256);
      v873[0] = v400;
      *(v873 + 9) = *(v5 + 281);
      v401 = *(v5 + 176);
      v402 = *(v5 + 208);
      *&v870[32] = *(v5 + 192);
      *&v870[48] = v402;
      v403 = *(v5 + 208);
      v404 = *(v5 + 240);
      *&v870[64] = *(v5 + 224);
      v871 = v404;
      v405 = *(v5 + 176);
      *v870 = *v174;
      *&v870[16] = v405;
      v406 = *(v5 + 272);
      v820 = v872;
      v821[0] = v406;
      *(v821 + 9) = *(v5 + 281);
      *&v818[32] = *&v870[32];
      *&v818[48] = v403;
      *&v818[64] = *&v870[64];
      v819 = v399;
      *v818 = *v870;
      *&v818[16] = v401;
      v340 = *(v5 + 96);
      v407 = *(v5 + 128);
      *&__src[96] = *(v5 + 112);
      *&__src[112] = v407;
      *&__src[121] = *(v5 + 137);
      v342 = *(v5 + 32);
      v344 = *(v5 + 48);
      v408 = *(v5 + 64);
      *&__src[32] = v344;
      *&__src[48] = v408;
      v345 = *(v5 + 64);
      v347 = *(v5 + 80);
      v409 = *(v5 + 96);
      *&__src[64] = v347;
      *&__src[80] = v409;
      v410 = *(v5 + 32);
      v349 = *(v5 + 16);
      *__src = v349;
      *&__src[16] = v410;
      v411 = *(v5 + 128);
      v828 = *&__src[96];
      v829[0] = v411;
      v351 = *(v5 + 137);
    }

    *(v829 + 9) = v351;
    v824 = v344;
    v825 = v345;
    v826 = v347;
    v827 = v340;
    v822 = v349;
    v823 = v342;
    sub_1AAE680CC(v870, &v839);
    sub_1AAE680CC(__src, &v839);
    *&v877[96] = v820;
    v878[0] = v821[0];
    *(v878 + 9) = *(v821 + 9);
    *&v877[32] = *&v818[32];
    *&v877[48] = *&v818[48];
    *&v877[64] = *&v818[64];
    *&v877[80] = v819;
    *v877 = *v818;
    *&v877[16] = *&v818[16];
    v879[6] = v828;
    v880[0] = v829[0];
    *(v880 + 9) = *(v829 + 9);
    v879[2] = v824;
    v879[3] = v825;
    v879[4] = v826;
    v879[5] = v827;
    v879[0] = v822;
    v879[1] = v823;
    v918[6] = v820;
    v919[0] = v821[0];
    *(v919 + 9) = *(v821 + 9);
    v918[2] = *&v818[32];
    v918[3] = *&v818[48];
    v918[4] = *&v818[64];
    v918[5] = v819;
    v918[0] = *v818;
    v918[1] = *&v818[16];
    v412 = sub_1AAE63EF0(v918);
    if (v412)
    {
      if (v412 != 2)
      {
        sub_1AAE49270(&v839);
        sub_1AAD6D0FC(0);
        v455 = swift_allocObject();
        *(v455 + 16) = xmmword_1AAF9E2B0;
        v456 = v455 + 32;
        goto LABEL_154;
      }

      v413 = &v884;
    }

    else
    {
      v413 = v881;
    }

    v454 = sub_1AAD357A8(v918);
    v413[1] = *(v454 + 16);
    v413[2] = *(v454 + 32);
    v413[3] = *(v454 + 48);
    *(v413 + 64) = *(v454 + 64);
    *v413 = *v454;
    sub_1AAED741C(!v331, v413, &v803);
    sub_1AAD6D0FC(0);
    v455 = swift_allocObject();
    *(v455 + 16) = xmmword_1AAF9E2B0;
    v456 = v455 + 32;
    *&__src[128] = v810[1];
    *&__src[144] = v811;
    *&__src[160] = v812;
    *&__src[64] = v807;
    *&__src[80] = v808;
    *&__src[96] = v809;
    *&__src[112] = v810[0];
    *__src = v803;
    *&__src[16] = v804;
    *&__src[32] = v805;
    *&__src[48] = v806;
    if (sub_1AAE492A8(__src) != 1)
    {
      sub_1AAE2D7EC(v813);
      v873[1] = v810[1];
      v874 = v811;
      v875 = v812;
      *&v870[64] = v807;
      v871 = v808;
      v872 = v809;
      v873[0] = v810[0];
      *v870 = v803;
      *&v870[16] = v804;
      *&v870[32] = v805;
      *&v870[48] = v806;
LABEL_155:
      v457 = *&v813[16];
      *v456 = *v813;
      *(v456 + 16) = v457;
      v458 = *&v813[32];
      v459 = *&v813[48];
      v460 = v814;
      *(v456 + 64) = *&v813[64];
      *(v456 + 80) = v460;
      *(v456 + 32) = v458;
      *(v456 + 48) = v459;
      v461 = v815;
      v462 = v816[0];
      v463 = v816[1];
      *(v456 + 144) = v817;
      *(v456 + 112) = v462;
      *(v456 + 128) = v463;
      *(v456 + 96) = v461;
      sub_1AAE680CC(v879, __src);
      sub_1AAF754B8(v331, v879, v855);
      v464 = v858[0];
      *(v456 + 248) = v857;
      v465 = v858[1];
      *(v456 + 264) = v464;
      *(v456 + 280) = v465;
      v466 = v855[3];
      *(v456 + 184) = v855[2];
      *(v456 + 200) = v466;
      v467 = v856;
      *(v456 + 216) = v855[4];
      *(v456 + 232) = v467;
      v468 = v855[1];
      *(v456 + 152) = v855[0];
      *(v456 + 296) = v859;
      *(v456 + 168) = v468;
      sub_1AAEDA024(v5 + 336, &v751, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
      if (BYTE1(v755) < 0xFFu)
      {
        if ((v755 & 0xFF00) == 0x200)
        {
          v777 = v753;
          v778 = v754;
          LOBYTE(v779) = v755;
          v775 = v751;
          v776 = v752;
          *&v772[7] = v751;
          *&v772[23] = v752;
          *&v772[39] = v753;
          *&v772[55] = v754;
          v772[71] = v755;
          __src[0] = 5;
          *&__src[1] = *v772;
          *&__src[65] = *&v772[64];
          *&__src[49] = *&v772[48];
          *&__src[33] = *&v772[32];
          *&__src[17] = *&v772[16];
          __src[73] = 3;
          sub_1AAEDA174(__src);
          sub_1AAE63EFC(&v775, &v793);
          v470 = *(v455 + 16);
          v469 = *(v455 + 24);
          if (v470 >= v469 >> 1)
          {
            v455 = sub_1AAD6AE5C((v469 > 1), v470 + 1, 1, v455);
          }

          sub_1AAE63F58(&v775);
          v799 = *&__src[96];
          v800[0] = *&__src[112];
          v800[1] = *&__src[128];
          *&v801 = *&__src[144];
          v795 = *&__src[32];
          v796 = *&__src[48];
          v797 = *&__src[64];
          v798 = *&__src[80];
          v793 = *__src;
          v794 = *&__src[16];
          nullsub_1();
          *(v455 + 16) = v470 + 1;
          v471 = v455 + 152 * v470;
          v472 = v794;
          *(v471 + 32) = v793;
          *(v471 + 48) = v472;
          v473 = v795;
          v474 = v796;
          v475 = v798;
          *(v471 + 96) = v797;
          *(v471 + 112) = v475;
          *(v471 + 64) = v473;
          *(v471 + 80) = v474;
          v476 = v799;
          v477 = v800[0];
          v478 = v800[1];
          *(v471 + 176) = v801;
          *(v471 + 144) = v477;
          *(v471 + 160) = v478;
          *(v471 + 128) = v476;
        }

        else
        {
          sub_1AAEDA120(&v751);
        }
      }

      else
      {
        sub_1AAEDA0A4(&v751, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
      }

      v489 = sub_1AAF70438(v455);
      v491 = v490;
      if (v320 >= v319)
      {
        v492 = v319;
      }

      else
      {
        v492 = v320;
      }

      if (v322 >= v321)
      {
        v493 = v321;
      }

      else
      {
        v493 = v322;
      }

      v494 = vabdd_f64(v320, v319);
      v495 = vabdd_f64(v322, v321);
      v925 = CGRectOffset(*&v492, v7, v8);
      v496 = v925.origin.x;
      v497 = v925.origin.y;
      v498 = v925.size.width;
      v499 = v925.size.height;

      sub_1AAF754B8(!v331, v877, v791);
      sub_1AACFDFAC(v876, sub_1AACFAA34);
      sub_1AACFDFAC(&v830, sub_1AACFAA34);
      sub_1AAE68190(v879);

      v800[1] = v873[1];
      v801 = v874;
      v802 = v875;
      v797 = *&v870[64];
      v798 = v871;
      v799 = v872;
      v800[0] = v873[0];
      v793 = *v870;
      v794 = *&v870[16];
      v795 = *&v870[32];
      v796 = *&v870[48];
      if (sub_1AAE492A8(&v793) == 1)
      {
        sub_1AAE2D7EC(&v781);
      }

      else
      {
        *&__src[96] = v800[0];
        *&__src[112] = v800[1];
        *&__src[128] = v801;
        *&__src[144] = v802;
        *&__src[32] = v796;
        *&__src[48] = v797;
        *&__src[64] = v798;
        *&__src[80] = v799;
        *__src = v794;
        *&__src[16] = v795;
        nullsub_1();
        v787 = *&__src[96];
        v788 = *&__src[112];
        v789 = *&__src[128];
        v790 = *&__src[144];
        v783 = *&__src[32];
        v784 = *&__src[48];
        v785 = *&__src[64];
        v786 = *&__src[80];
        v781 = *__src;
        v782 = *&__src[16];
      }

      v500 = v5 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 84);
      v501 = *(v500 + 48);
      v753 = *(v500 + 32);
      v754 = v501;
      v755 = *(v500 + 64);
      LOBYTE(v756) = *(v500 + 80);
      v502 = *(v500 + 16);
      v751 = *v500;
      v752 = v502;
      if (*(&v502 + 1) == 1)
      {
        memset(v772, 0, 81);
        memset(__src, 0, 81);
        sub_1AAE0F994(v772, &v775);
        sub_1AAE0F9F0(__src);
        v503 = v772[80];
        v504 = *&v772[64];
        v505 = *&v772[72];
        v731 = *&v772[32];
        v740 = *&v772[48];
        v718 = *&v772[16];
        v725 = *v772;
      }

      else
      {
        v740 = v754;
        v725 = v751;
        v731 = v753;
        v505 = *(&v755 + 1);
        v504 = v755;
        v503 = v756;
        v718 = v752;
      }

      sub_1AAE2D7EC(v772);
      sub_1AAEDA024(&v751, __src, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties);

      *&__src[448] = *&v772[96];
      *&__src[464] = v773[0];
      *&__src[480] = v773[1];
      *&__src[496] = v774;
      *&__src[384] = *&v772[32];
      *&__src[400] = *&v772[48];
      *&__src[416] = *&v772[64];
      *&__src[432] = *&v772[80];
      *&__src[352] = *v772;
      *&__src[368] = *&v772[16];
      *__src = v496;
      *&__src[8] = v497;
      *&__src[16] = v498;
      *&__src[24] = v499;
      *&__src[136] = v791[6];
      *&__src[152] = v791[7];
      *&__src[168] = v791[8];
      *&__src[32] = v489;
      *&__src[184] = v792;
      *&__src[72] = v791[2];
      *&__src[88] = v791[3];
      *&__src[104] = v791[4];
      *&__src[120] = v791[5];
      *&__src[40] = v791[0];
      *&__src[56] = v791[1];
      *&__src[296] = v787;
      *&__src[312] = v788;
      *&__src[328] = v789;
      *&__src[264] = v785;
      *&__src[280] = v786;
      *&__src[192] = v491;
      *&__src[344] = v790;
      *&__src[232] = v783;
      *&__src[248] = v784;
      *&__src[200] = v781;
      *&__src[216] = v782;
      *&__src[504] = 0;
      *&__src[506] = v775;
      *&__src[510] = WORD2(v775);
      *&__src[512] = v725;
      *&__src[528] = v718;
      *&__src[544] = v731;
      *&__src[560] = v740;
      *&__src[576] = v504;
      *&__src[584] = v505;
      __src[592] = v503 & 1;
      goto LABEL_299;
    }

    v846 = v810[0];
    v847 = v810[1];
    v848 = v811;
    v842 = v806;
    v843 = v807;
    v844 = v808;
    v845 = v809;
    v839 = v803;
    v840 = v804;
    v849 = v812;
    v841 = v805;
LABEL_154:
    sub_1AAE680CC(v877, __src);
    sub_1AAF754B8(!v331, v877, v813);
    v873[1] = v847;
    v874 = v848;
    v875 = v849;
    *&v870[64] = v843;
    v871 = v844;
    v872 = v845;
    v873[0] = v846;
    *v870 = v839;
    *&v870[16] = v840;
    *&v870[32] = v841;
    *&v870[48] = v842;
    goto LABEL_155;
  }

  if (!*(v5 + 8))
  {
    v744 = v4;
    v70 = *(v5 + 112);
    v71 = *(v5 + 128);
    v72 = *(v5 + 80);
    v906 = *(v5 + 96);
    v907 = v70;
    v908[0] = v71;
    *(v908 + 9) = *(v5 + 137);
    v73 = *(v5 + 64);
    v903 = *(v5 + 48);
    v904 = v73;
    v905 = v72;
    v74 = *(v5 + 32);
    v901 = *(v5 + 16);
    v902 = v74;
    v75 = (v5 + 160);
    v76 = *(v5 + 256);
    v77 = *(v5 + 272);
    v78 = *(v5 + 224);
    v915 = *(v5 + 240);
    v916 = v76;
    v917[0] = v77;
    *(v917 + 9) = *(v5 + 281);
    v79 = *(v5 + 208);
    v912 = *(v5 + 192);
    v913 = v79;
    v914 = v78;
    v80 = *(v5 + 176);
    v910 = *(v5 + 160);
    v911 = v80;
    v736 = sub_1AAE63A88(&v901, &v910);
    if (v736)
    {
      v81 = *(v5 + 96);
      v82 = *(v5 + 128);
      v872 = *(v5 + 112);
      v873[0] = v82;
      *(v873 + 9) = *(v5 + 137);
      v83 = *(v5 + 32);
      v84 = *(v5 + 64);
      *&v870[32] = *(v5 + 48);
      *&v870[48] = v84;
      v85 = *(v5 + 64);
      v86 = *(v5 + 96);
      *&v870[64] = *(v5 + 80);
      v871 = v86;
      v87 = *(v5 + 32);
      *v870 = *(v5 + 16);
      *&v870[16] = v87;
      v88 = *(v5 + 128);
      v820 = v872;
      v821[0] = v88;
      *(v821 + 9) = *(v5 + 137);
      *&v818[32] = *&v870[32];
      *&v818[48] = v85;
      *&v818[64] = *&v870[64];
      v819 = v81;
      *v818 = *v870;
      *&v818[16] = v83;
      v89 = *(v5 + 240);
      v90 = *(v5 + 272);
      *&__src[96] = *(v5 + 256);
      *&__src[112] = v90;
      *&__src[121] = *(v5 + 281);
      v91 = *(v5 + 176);
      v92 = *(v5 + 208);
      *&__src[32] = *(v5 + 192);
      *&__src[48] = v92;
      v93 = *(v5 + 208);
      v94 = *(v5 + 240);
      *&__src[64] = *(v5 + 224);
      *&__src[80] = v94;
      v95 = *(v5 + 176);
      v96 = *v75;
      *__src = *v75;
      *&__src[16] = v95;
      v97 = *(v5 + 272);
      v828 = *&__src[96];
      v829[0] = v97;
      *(v829 + 9) = *(v5 + 281);
      v824 = *&__src[32];
      v825 = v93;
      v826 = *&__src[64];
      v827 = v89;
      v823 = v91;
    }

    else
    {
      v179 = *(v5 + 256);
      v180 = *(v5 + 224);
      v871 = *(v5 + 240);
      v872 = v179;
      v181 = *(v5 + 256);
      v873[0] = *(v5 + 272);
      *(v873 + 9) = *(v5 + 281);
      v182 = *(v5 + 176);
      v183 = *(v5 + 208);
      *&v870[32] = *(v5 + 192);
      *&v870[48] = v183;
      v184 = *(v5 + 208);
      *&v870[64] = *(v5 + 224);
      v185 = *(v5 + 176);
      *v870 = *v75;
      *&v870[16] = v185;
      v819 = v871;
      v820 = v181;
      v821[0] = *(v5 + 272);
      *(v821 + 9) = *(v5 + 281);
      *&v818[32] = *&v870[32];
      *&v818[48] = v184;
      *&v818[64] = v180;
      *v818 = *v870;
      *&v818[16] = v182;
      v186 = *(v5 + 112);
      v187 = *(v5 + 80);
      *&__src[80] = *(v5 + 96);
      *&__src[96] = v186;
      v188 = *(v5 + 112);
      *&__src[112] = *(v5 + 128);
      *&__src[121] = *(v5 + 137);
      v189 = *(v5 + 32);
      v190 = *(v5 + 64);
      *&__src[32] = *(v5 + 48);
      *&__src[48] = v190;
      v191 = *(v5 + 64);
      *&__src[64] = *(v5 + 80);
      v192 = *(v5 + 32);
      v96 = *(v5 + 16);
      *__src = v96;
      *&__src[16] = v192;
      v193 = *(v5 + 128);
      v828 = v188;
      v829[0] = v193;
      *(v829 + 9) = *(v5 + 137);
      v824 = *&__src[32];
      v825 = v191;
      v826 = v187;
      v827 = *&__src[80];
      v823 = v189;
    }

    v822 = v96;
    sub_1AAE680CC(v870, &v839);
    sub_1AAE680CC(__src, &v839);
    *&v877[96] = v820;
    v878[0] = v821[0];
    *(v878 + 9) = *(v821 + 9);
    *&v877[32] = *&v818[32];
    *&v877[48] = *&v818[48];
    *&v877[64] = *&v818[64];
    *&v877[80] = v819;
    *v877 = *v818;
    *&v877[16] = *&v818[16];
    v879[5] = v827;
    v879[6] = v828;
    v880[0] = v829[0];
    *(v880 + 9) = *(v829 + 9);
    v879[2] = v824;
    v879[3] = v825;
    v879[4] = v826;
    v879[0] = v822;
    v879[1] = v823;
    v918[5] = v819;
    v918[6] = v820;
    v919[0] = v821[0];
    *(v919 + 9) = *(v821 + 9);
    v918[2] = *&v818[32];
    v918[3] = *&v818[48];
    v918[4] = *&v818[64];
    v918[0] = *v818;
    v918[1] = *&v818[16];
    if (sub_1AAE63EF0(v918))
    {
      goto LABEL_36;
    }

    v194 = sub_1AAD357A8(v918);
    v752 = *(v194 + 16);
    v753 = *(v194 + 32);
    v754 = *(v194 + 48);
    LOBYTE(v755) = *(v194 + 64);
    v751 = *v194;
    *&v758[48] = *&v818[48];
    *&v758[64] = *&v818[64];
    *v758 = *v818;
    *&v758[16] = *&v818[16];
    *&v758[32] = *&v818[32];
    *&v759[9] = *(v821 + 9);
    *&v758[96] = v820;
    *v759 = v821[0];
    *&v758[80] = v819;
    v195 = sub_1AAD357A8(v758);
    sub_1AAE63EFC(v195, __src);
    v196 = v1;
    sub_1AAED741C(!v736, &v751, &v839);
    v873[1] = v847;
    v874 = v848;
    v875 = v849;
    *&v870[64] = v843;
    v871 = v844;
    v872 = v845;
    v873[0] = v846;
    *v870 = v839;
    *&v870[16] = v840;
    *&v870[32] = v841;
    *&v870[48] = v842;
    if (sub_1AAE492A8(v870) == 1)
    {
      sub_1AAE68190(v877);
LABEL_36:
      v197 = v879;
      goto LABEL_56;
    }

    v233 = *v870;
    v234 = *&v870[8];
    v809 = v873[0];
    v810[0] = v873[1];
    v810[1] = v874;
    *&v811 = v875;
    v805 = *&v870[48];
    v806 = *&v870[64];
    v807 = v871;
    v808 = v872;
    v803 = *&v870[16];
    v804 = *&v870[32];
    sub_1AAEDA024(v5 + 424, &v793, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    if (BYTE1(v797) == 255)
    {
      sub_1AAEDA0A4(&v793, qword_1ED9B2508, &type metadata for ResolvedSymbol, MEMORY[0x1E69E6720]);
      v235 = v1;
    }

    else
    {
      *&__src[32] = v795;
      *&__src[48] = v796;
      *&__src[64] = v797;
      *__src = v793;
      *&__src[16] = v794;
      v372 = *(v6 + 408);
      v235 = v196;
      if (v372)
      {
        sub_1AAEDA2B4(__src, &v793);
        if (BYTE1(v797))
        {
          if (BYTE1(v797) == 1)
          {
            sub_1AAEDA1A8(&v793);
            if (qword_1ED9B59F0 != -1)
            {
              swift_once();
            }

            sub_1AAEDA1A8(__src);
            memset(v813, 0, 40);
          }

          else
          {
            LOBYTE(v855[4]) = v797;
            v855[3] = v796;
            v855[2] = v795;
            v855[1] = v794;
            v855[0] = v793;
            if (*(v372 + 16))
            {
              v506 = sub_1AADB0548(*(&v855[2] + 1));
              if (v507)
              {
                sub_1AAD9B194(*(v372 + 56) + 40 * v506, v813);
                sub_1AAE63F58(v855);
                sub_1AAEDA1A8(__src);
              }

              else
              {
                sub_1AAE63F58(v855);
                sub_1AAEDA1A8(__src);
                memset(v813, 0, 40);
              }

              v235 = v196;
            }

            else
            {
              sub_1AAE63F58(v855);
              sub_1AAEDA1A8(__src);
              memset(v813, 0, 40);
            }
          }
        }

        else
        {
          sub_1AAEDA1A8(__src);
          *v813 = v793;
          *&v813[16] = v794;
          *&v813[32] = v795;
        }

        if (*&v813[24])
        {
          v881[0] = *v813;
          v881[1] = *&v813[16];
          v882 = *&v813[32];
          goto LABEL_234;
        }

        sub_1AAEDA0A4(v813, &qword_1ED9AE4C0, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E6720]);
      }

      else
      {
        sub_1AAEDA1A8(__src);
      }
    }

    if (qword_1ED9B0450 != -1)
    {
      swift_once();
    }

    sub_1AAD9B194(&unk_1ED9C33F0, v881);
LABEL_234:
    if (*(v235 + *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 28)) == 1)
    {
      v563 = *(v6 + 256);
      v797 = *(v6 + 240);
      v798 = v563;
      *&v799 = *(v6 + 272);
      v564 = *(v6 + 192);
      v793 = *(v6 + 176);
      v794 = v564;
      v565 = *(v6 + 224);
      v795 = *(v6 + 208);
      v796 = v565;
      if (!v793 || (*v909 = v793, *&v909[40] = *(v6 + 216), *&v909[56] = *(v6 + 232), *&v909[72] = *(v6 + 248), *&v909[8] = *(v6 + 184), *&v909[24] = *(v6 + 200), *&v909[88] = *(v6 + 264), v566 = *(v6 + 296), v855[0] = *(v6 + 280), v855[1] = v566, v567 = *(v6 + 328), v855[2] = *(v6 + 312), v568 = *(v6 + 344), v569 = *(v6 + 360), *&v857 = *(v6 + 376), v856 = v569, v855[4] = v568, v855[3] = v567, !*&v855[0]))
      {
        sub_1AAE68190(v877);
        sub_1AAE68190(v877);
        goto LABEL_269;
      }

      *v876 = *&v855[0];
      v570 = *(v6 + 336);
      *&v876[40] = *(v6 + 320);
      *&v876[56] = v570;
      v571 = *(v6 + 368);
      *&v876[72] = *(v6 + 352);
      *&v876[88] = v571;
      v572 = *(v6 + 304);
      *&v876[8] = *(v6 + 288);
      *&v876[24] = v572;
      v573 = *(v5 + 16);
      v574 = *(v5 + 32);
      v576 = *(v5 + 80);
      v575 = *(v5 + 96);
      v577 = *(v5 + 48);
      *&v897[48] = *(v5 + 64);
      *&v897[64] = v576;
      *&v897[16] = v574;
      *&v897[32] = v577;
      *v897 = v573;
      v578 = *(v5 + 112);
      v579 = *(v5 + 128);
      *(v900 + 9) = *(v5 + 137);
      v899 = v578;
      v900[0] = v579;
      v898 = v575;
      sub_1AAEDA3C0(&v793, __src, sub_1AACFAA34);
      sub_1AAEDA3C0(v855, __src, sub_1AACFAA34);
      sub_1AAF27C94(v897, v909);
      v581 = v580;
      v582 = *(v5 + 256);
      v583 = *(v5 + 272);
      v584 = *(v5 + 224);
      v894 = *(v5 + 240);
      v895 = v582;
      v896[0] = v583;
      *(v896 + 9) = *(v5 + 281);
      v585 = *(v5 + 208);
      v891 = *(v5 + 192);
      v892 = v585;
      v893 = v584;
      v586 = *(v5 + 176);
      v889 = *v75;
      v890 = v586;
      sub_1AAF27C94(&v889, v876);
      if (v581 & 1) != 0 || (v587)
      {
        sub_1AAE68190(v877);
        sub_1AAE68190(v877);
        sub_1AACFDFAC(&v793, sub_1AACFAA34);
        sub_1AACFDFAC(v855, sub_1AACFAA34);
LABEL_269:
        sub_1AAEDA0A4(&v839, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group, MEMORY[0x1E69E6720]);
        sub_1AAE68190(v879);
        sub_1AAED9FA0(__src);
        memcpy(&v838[4], __src, 0x251uLL);
        sub_1AAE45A14(v881);
        v4 = v744;
        goto LABEL_109;
      }

      v654 = *(v5 + 544);
      v777 = *(v5 + 528);
      v778 = v654;
      LOBYTE(v779) = *(v5 + 560);
      v655 = *(v5 + 512);
      v775 = *(v5 + 496);
      v776 = v655;
      sub_1AAF27DBC(&v775, *(v6 + 424), *(v6 + 432), *(v6 + 440), v881);
      v932 = CGRectOffset(v931, v7, v8);
      v602 = v932.origin.x;
      v603 = v932.origin.y;
      v604 = v932.size.width;
      v605 = v932.size.height;
      sub_1AACFDFAC(&v793, sub_1AACFAA34);
      sub_1AACFDFAC(v855, sub_1AACFAA34);
      v592 = v736;
    }

    else
    {
      if (!*(v6 + 280) || (v588 = *(v6 + 344), v588 == 255) || (v588 & 1) != 0 || (v589 = *(v6 + 336), (v590 = *(v589 + 16)) == 0))
      {
        v928.size.width = *(v6 + 48);
        v928.size.height = *(v6 + 56);
        v928.origin.x = v7 + 40.0;
        v928.origin.y = v8 + 40.0;
        v591 = CGRectGetHeight(v928);
      }

      else
      {
        v591 = vabdd_f64(*(v589 + 32 + 8 * v590 - 8), *(v589 + 32));
      }

      v592 = v736;
      if (!*(v6 + 176) || (v593 = *(v6 + 240), v593 == 255) || (v593 & 1) != 0 || (v594 = *(v6 + 232), (v595 = *(v594 + 16)) == 0))
      {
        v929.size.width = *(v6 + 48);
        v929.size.height = *(v6 + 56);
        v929.origin.x = v7 + 40.0;
        v929.origin.y = v8 + 40.0;
        v596 = CGRectGetWidth(v929);
      }

      else
      {
        v596 = vabdd_f64(*(v594 + 32 + 8 * v595 - 8), *(v594 + 32));
      }

      if (v234 >= v233)
      {
        v597 = v233;
      }

      else
      {
        v597 = v234;
      }

      v598 = vabdd_f64(v234, v233);
      if (v736)
      {
        v599 = v597;
      }

      else
      {
        v599 = 0.0;
      }

      if (v736)
      {
        v597 = 0.0;
        v600 = v598;
      }

      else
      {
        v600 = v596;
      }

      if (v736)
      {
        v598 = v591;
      }

      v601 = v599;
      v930 = CGRectOffset(*(&v597 - 1), v7, v8);
      v602 = v930.origin.x;
      v603 = v930.origin.y;
      v604 = v930.size.width;
      v605 = v930.size.height;
    }

    sub_1AAE680CC(v879, __src);
    sub_1AAF754B8(v592, v879, &v793);
    v606 = sub_1AAD6AE5C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v608 = v606[2];
    v607 = v606[3];
    v609 = v608 + 1;
    if (v608 >= v607 >> 1)
    {
      v606 = sub_1AAD6AE5C((v607 > 1), v608 + 1, 1, v606);
    }

    v606[2] = v609;
    v610 = &v606[19 * v608];
    *(v610 + 8) = v799;
    *(v610 + 9) = v800[0];
    *(v610 + 10) = v800[1];
    v610[22] = v801;
    *(v610 + 4) = v795;
    *(v610 + 5) = v796;
    *(v610 + 6) = v797;
    *(v610 + 7) = v798;
    *(v610 + 2) = v793;
    *(v610 + 3) = v794;
    sub_1AAEDA024(v5 + 336, v772, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    if (HIBYTE(*&v772[64]) < 0xFFu)
    {
      if ((*&v772[64] & 0xFF00) == 0x200)
      {
        v832 = *&v772[32];
        v833 = *&v772[48];
        LOBYTE(v834) = v772[64];
        v830 = *v772;
        v831 = *&v772[16];
        *&v813[7] = *v772;
        *&v813[23] = *&v772[16];
        *&v813[39] = *&v772[32];
        *&v813[55] = *&v772[48];
        v813[71] = v772[64];
        __src[0] = 5;
        *&__src[1] = *v813;
        *&__src[65] = *&v813[64];
        *&__src[49] = *&v813[48];
        *&__src[33] = *&v813[32];
        *&__src[17] = *&v813[16];
        __src[73] = 3;
        sub_1AAEDA174(__src);
        sub_1AAE63EFC(&v830, v855);
        v611 = v606[3];
        if ((v608 + 2) > (v611 >> 1))
        {
          v606 = sub_1AAD6AE5C((v611 > 1), v608 + 2, 1, v606);
        }

        sub_1AAE63F58(&v830);
        v857 = *&__src[96];
        v858[0] = *&__src[112];
        v858[1] = *&__src[128];
        v855[2] = *&__src[32];
        v855[3] = *&__src[48];
        v855[4] = *&__src[64];
        v856 = *&__src[80];
        v855[0] = *__src;
        v859 = *&__src[144];
        v855[1] = *&__src[16];
        nullsub_1();
        v606[2] = v608 + 2;
        v612 = &v606[19 * v609];
        v613 = v855[1];
        *(v612 + 2) = v855[0];
        *(v612 + 3) = v613;
        v614 = v855[2];
        v615 = v855[3];
        v616 = v856;
        *(v612 + 6) = v855[4];
        *(v612 + 7) = v616;
        *(v612 + 4) = v614;
        *(v612 + 5) = v615;
        v617 = v857;
        v618 = v858[0];
        v619 = v858[1];
        v612[22] = v859;
        *(v612 + 9) = v618;
        *(v612 + 10) = v619;
        *(v612 + 8) = v617;
      }

      else
      {
        sub_1AAEDA120(v772);
      }
    }

    else
    {
      sub_1AAEDA0A4(v772, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
    }

    sub_1AAEDA024(v5 + 424, v772, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    if (HIBYTE(*&v772[64]) < 0xFFu)
    {
      if ((*&v772[64] & 0xFF00) == 0x200)
      {
        v832 = *&v772[32];
        v833 = *&v772[48];
        LOBYTE(v834) = v772[64];
        v830 = *v772;
        v831 = *&v772[16];
        *&v813[7] = *v772;
        *&v813[23] = *&v772[16];
        *&v813[39] = *&v772[32];
        *&v813[55] = *&v772[48];
        v813[71] = v772[64];
        __src[0] = 6;
        *&__src[1] = *v813;
        *&__src[65] = *&v813[64];
        *&__src[49] = *&v813[48];
        *&__src[33] = *&v813[32];
        *&__src[17] = *&v813[16];
        __src[73] = 3;
        sub_1AAEDA174(__src);
        sub_1AAE63EFC(&v830, v855);
        v621 = v606[2];
        v620 = v606[3];
        if (v621 >= v620 >> 1)
        {
          v606 = sub_1AAD6AE5C((v620 > 1), v621 + 1, 1, v606);
        }

        sub_1AAE63F58(&v830);
        v857 = *&__src[96];
        v858[0] = *&__src[112];
        v858[1] = *&__src[128];
        v855[2] = *&__src[32];
        v855[3] = *&__src[48];
        v855[4] = *&__src[64];
        v856 = *&__src[80];
        v855[0] = *__src;
        v859 = *&__src[144];
        v855[1] = *&__src[16];
        nullsub_1();
        v606[2] = v621 + 1;
        v622 = &v606[19 * v621];
        v623 = v855[1];
        *(v622 + 2) = v855[0];
        *(v622 + 3) = v623;
        v624 = v855[2];
        v625 = v855[3];
        v626 = v856;
        *(v622 + 6) = v855[4];
        *(v622 + 7) = v626;
        *(v622 + 4) = v624;
        *(v622 + 5) = v625;
        v627 = v857;
        v628 = v858[0];
        v629 = v858[1];
        v622[22] = v859;
        *(v622 + 9) = v628;
        *(v622 + 10) = v629;
        *(v622 + 8) = v627;
      }

      else
      {
        sub_1AAEDA1A8(v772);
      }
    }

    else
    {
      sub_1AAEDA0A4(v772, qword_1ED9B2508, &type metadata for ResolvedSymbol, MEMORY[0x1E69E6720]);
    }

    v630 = *(v5 + 544);
    v886 = *(v5 + 528);
    v887 = v630;
    v888 = *(v5 + 560);
    v631 = *(v5 + 512);
    v884 = *(v5 + 496);
    v885 = v631;
    v633 = (v888 & 0x7C) != 0 || *(&v631 + 1) >> 1 != 0xFFFFFFFFLL;
    if ((v888 & 0x60) == 0x40 && v633)
    {
      *&__src[8] = v884;
      *&__src[40] = v886;
      __src[0] = 7;
      *&__src[24] = v885;
      *&__src[56] = v887;
      __src[72] = v888 & 0x9F;
      __src[73] = 3;
      sub_1AAEDA174(__src);
      *&v813[32] = v886;
      *&v813[48] = v887;
      v813[64] = v888;
      *v813 = v884;
      *&v813[16] = v885;
      sub_1AAEDA024(&v884, v855, qword_1ED9B22C0, &type metadata for ResolvedSymbolSize);
      sub_1AAEDA258(v813, v855);
      v635 = v606[2];
      v634 = v606[3];
      if (v635 >= v634 >> 1)
      {
        v606 = sub_1AAD6AE5C((v634 > 1), v635 + 1, 1, v606);
      }

      sub_1AAEDA0A4(&v884, qword_1ED9B22C0, &type metadata for ResolvedSymbolSize, MEMORY[0x1E69E6720]);
      v857 = *&__src[96];
      v858[0] = *&__src[112];
      v858[1] = *&__src[128];
      v855[2] = *&__src[32];
      v855[3] = *&__src[48];
      v855[4] = *&__src[64];
      v856 = *&__src[80];
      v855[0] = *__src;
      v859 = *&__src[144];
      v855[1] = *&__src[16];
      nullsub_1();
      v606[2] = v635 + 1;
      v636 = &v606[19 * v635];
      v637 = v855[1];
      *(v636 + 2) = v855[0];
      *(v636 + 3) = v637;
      v638 = v855[2];
      v639 = v855[3];
      v640 = v856;
      *(v636 + 6) = v855[4];
      *(v636 + 7) = v640;
      *(v636 + 4) = v638;
      *(v636 + 5) = v639;
      v641 = v857;
      v642 = v858[0];
      v643 = v858[1];
      v636[22] = v859;
      *(v636 + 9) = v642;
      *(v636 + 10) = v643;
      *(v636 + 8) = v641;
    }

    v644 = sub_1AAF70438(v606);
    v646 = v645;

    sub_1AAF754B8(!v736, v877, v745);
    sub_1AAE68190(v877);
    sub_1AAE68190(v879);
    sub_1AAE45A14(v881);

    v647 = v5 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 84);
    v648 = *(v647 + 48);
    v832 = *(v647 + 32);
    v833 = v648;
    v834 = *(v647 + 64);
    LOBYTE(v835) = *(v647 + 80);
    v649 = *(v647 + 16);
    v830 = *v647;
    v831 = v649;
    if (*(&v649 + 1) == 1)
    {
      LOBYTE(v856) = 0;
      memset(v855, 0, sizeof(v855));
      memset(__src, 0, 81);
      sub_1AAE0F994(v855, v813);
      sub_1AAE0F9F0(__src);
      v650 = v856;
      v652 = *(&v855[4] + 1);
      v651 = *&v855[4];
      v733 = v855[2];
      v742 = v855[3];
      v719 = v855[1];
      v726 = v855[0];
    }

    else
    {
      v742 = v833;
      v726 = v830;
      v733 = v832;
      v652 = *(&v834 + 1);
      v651 = v834;
      v650 = v835;
      v719 = v831;
    }

    *&v772[96] = v809;
    v773[0] = v810[0];
    v773[1] = v810[1];
    v774 = v811;
    *&v772[32] = v805;
    *&v772[48] = v806;
    *&v772[64] = v807;
    *&v772[80] = v808;
    *v772 = v803;
    *&v772[16] = v804;
    sub_1AAE2D7EC(v813);
    sub_1AAEDA024(&v830, __src, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties);

    v857 = *&v772[96];
    v858[0] = v773[0];
    v858[1] = v773[1];
    v855[2] = *&v772[32];
    v855[3] = *&v772[48];
    v855[4] = *&v772[64];
    v856 = *&v772[80];
    v855[0] = *v772;
    v653 = v650 & 1;
    v859 = v774;
    v855[1] = *&v772[16];
    nullsub_1();
    *&__src[296] = v857;
    *&__src[312] = v858[0];
    *&__src[328] = v858[1];
    *&__src[264] = v855[4];
    *&__src[280] = v856;
    *&__src[496] = v817;
    *&__src[232] = v855[2];
    *&__src[248] = v855[3];
    *&__src[200] = v855[0];
    *&__src[216] = v855[1];
    *&__src[448] = v815;
    *&__src[464] = v816[0];
    *&__src[480] = v816[1];
    *&__src[384] = *&v813[32];
    *&__src[400] = *&v813[48];
    *&__src[416] = *&v813[64];
    *&__src[432] = v814;
    *&__src[352] = *v813;
    *&__src[368] = *&v813[16];
    *__src = v602;
    *&__src[8] = v603;
    *&__src[16] = v604;
    *&__src[24] = v605;
    *&__src[136] = v745[6];
    *&__src[152] = v745[7];
    *&__src[168] = v745[8];
    *&__src[32] = v644;
    *&__src[184] = v746;
    *&__src[72] = v745[2];
    *&__src[88] = v745[3];
    *&__src[104] = v745[4];
    *&__src[120] = v745[5];
    *&__src[40] = v745[0];
    *&__src[56] = v745[1];
    *&__src[344] = v859;
    *&__src[192] = v646;
    *&__src[504] = 0;
    *&__src[506] = LODWORD(v852);
    *&__src[510] = WORD2(v852);
    *&__src[512] = v726;
    *&__src[528] = v719;
    *&__src[544] = v733;
    *&__src[560] = v742;
LABEL_297:
    *&__src[576] = v651;
    *&__src[584] = v652;
LABEL_298:
    __src[592] = v653;
LABEL_299:
    sub_1AAEDA100(__src);
    goto LABEL_58;
  }

  if (v9 != 1)
  {
    v128 = *(v6 + 256);
    *&v909[64] = *(v6 + 240);
    *&v909[80] = v128;
    *&v909[96] = *(v6 + 272);
    v129 = *(v6 + 192);
    *v909 = *(v6 + 176);
    *&v909[16] = v129;
    v130 = *(v6 + 224);
    *&v909[32] = *(v6 + 208);
    *&v909[48] = v130;
    if (!*v909)
    {
      goto LABEL_107;
    }

    *v877 = *v909;
    *&v877[40] = *(v6 + 216);
    *&v877[56] = *(v6 + 232);
    *&v877[72] = *(v6 + 248);
    *&v877[8] = *(v6 + 184);
    *&v877[24] = *(v6 + 200);
    *&v877[88] = *(v6 + 264);
    v131 = *(v6 + 296);
    *v876 = *(v6 + 280);
    *&v876[16] = v131;
    v132 = *(v6 + 312);
    v133 = *(v6 + 328);
    v134 = *(v6 + 344);
    v135 = *(v6 + 360);
    *&v876[96] = *(v6 + 376);
    *&v876[64] = v134;
    *&v876[80] = v135;
    *&v876[32] = v132;
    *&v876[48] = v133;
    if (!*v876)
    {
      goto LABEL_107;
    }

    v744 = v4;
    *v758 = *v876;
    v136 = *(v6 + 336);
    *&v758[40] = *(v6 + 320);
    *&v758[56] = v136;
    v137 = *(v6 + 368);
    *&v758[72] = *(v6 + 352);
    *&v758[88] = v137;
    v138 = *(v6 + 304);
    *&v758[8] = *(v6 + 288);
    *&v758[24] = v138;
    v139 = *(v5 + 16);
    v140 = *(v5 + 32);
    v141 = *(v5 + 64);
    *&v772[32] = *(v5 + 48);
    *&v772[48] = v141;
    *v772 = v139;
    *&v772[16] = v140;
    v142 = *(v5 + 80);
    v143 = *(v5 + 96);
    *(v773 + 9) = *(v5 + 137);
    v144 = *(v5 + 128);
    *&v772[96] = *(v5 + 112);
    v773[0] = v144;
    *&v772[64] = v142;
    *&v772[80] = v143;
    sub_1AAEDA3C0(v909, __src, sub_1AACFAA34);
    sub_1AAEDA3C0(v876, __src, sub_1AACFAA34);
    *&v145 = COERCE_DOUBLE(sub_1AAF27C94(v772, v877));
    v147 = v146;
    v148 = (v5 + 160);
    v149 = *(v5 + 272);
    v918[6] = *(v5 + 256);
    v919[0] = v149;
    *(v919 + 9) = *(v5 + 281);
    v150 = *(v5 + 208);
    v918[2] = *(v5 + 192);
    v918[3] = v150;
    v151 = *(v5 + 240);
    v918[4] = *(v5 + 224);
    v918[5] = v151;
    v152 = *(v5 + 176);
    v918[0] = *(v5 + 160);
    v918[1] = v152;
    *&v153 = COERCE_DOUBLE(sub_1AAF27C94(v918, v758));
    if (v147 & 1) != 0 || (v154)
    {
      sub_1AACFDFAC(v876, sub_1AACFAA34);
      v155 = v909;
LABEL_31:
      sub_1AACFDFAC(v155, sub_1AACFAA34);
LABEL_57:
      sub_1AAED9FA0(__src);
LABEL_58:
      memcpy(&v838[4], __src, 0x251uLL);
      v4 = v744;
      goto LABEL_109;
    }

    v737 = *&v153;
    v290 = *(v5 + 128);
    v907 = *(v5 + 112);
    v908[0] = v290;
    *(v908 + 9) = *(v5 + 137);
    v291 = *(v5 + 64);
    v903 = *(v5 + 48);
    v904 = v291;
    v292 = *(v5 + 96);
    v905 = *(v5 + 80);
    v906 = v292;
    v293 = *(v5 + 32);
    v901 = *(v5 + 16);
    v902 = v293;
    v294 = *(v5 + 272);
    v916 = *(v5 + 256);
    v917[0] = v294;
    *(v917 + 9) = *(v5 + 281);
    v295 = *(v5 + 208);
    v912 = *(v5 + 192);
    v913 = v295;
    v296 = *(v5 + 240);
    v914 = *(v5 + 224);
    v915 = v296;
    v297 = *(v5 + 176);
    v910 = *v148;
    v911 = v297;
    v298 = sub_1AAE63A88(&v901, &v910);
    if (v298)
    {
      v299 = *(v5 + 96);
      v300 = *(v5 + 128);
      v872 = *(v5 + 112);
      v873[0] = v300;
      *(v873 + 9) = *(v5 + 137);
      v301 = *(v5 + 32);
      v302 = *(v5 + 64);
      *&v870[32] = *(v5 + 48);
      *&v870[48] = v302;
      v303 = *(v5 + 64);
      v304 = *(v5 + 96);
      *&v870[64] = *(v5 + 80);
      v871 = v304;
      v305 = *(v5 + 32);
      *v870 = *(v5 + 16);
      *&v870[16] = v305;
      v306 = *(v5 + 128);
      v820 = v872;
      v821[0] = v306;
      *(v821 + 9) = *(v5 + 137);
      *&v818[32] = *&v870[32];
      *&v818[48] = v303;
      *&v818[64] = *&v870[64];
      v819 = v299;
      *v818 = *v870;
      *&v818[16] = v301;
      v307 = *(v5 + 240);
      v308 = *(v5 + 272);
      *&__src[96] = *(v5 + 256);
      *&__src[112] = v308;
      *&__src[121] = *(v5 + 281);
      v309 = *(v5 + 176);
      v311 = *(v5 + 192);
      v310 = *(v5 + 208);
      *&__src[32] = v311;
      *&__src[48] = v310;
      v312 = *(v5 + 208);
      v314 = *(v5 + 224);
      v313 = *(v5 + 240);
      *&__src[64] = v314;
      *&__src[80] = v313;
      v315 = *(v5 + 176);
      v316 = *v148;
      *__src = *v148;
      *&__src[16] = v315;
      v317 = *(v5 + 272);
      v828 = *&__src[96];
      v829[0] = v317;
      v318 = *(v5 + 281);
    }

    else
    {
      v382 = *(v5 + 240);
      v383 = *(v5 + 272);
      v872 = *(v5 + 256);
      v873[0] = v383;
      *(v873 + 9) = *(v5 + 281);
      v384 = *(v5 + 176);
      v385 = *(v5 + 208);
      *&v870[32] = *(v5 + 192);
      *&v870[48] = v385;
      v386 = *(v5 + 208);
      v387 = *(v5 + 240);
      *&v870[64] = *(v5 + 224);
      v871 = v387;
      v388 = *(v5 + 176);
      *v870 = *v148;
      *&v870[16] = v388;
      v389 = *(v5 + 272);
      v820 = v872;
      v821[0] = v389;
      *(v821 + 9) = *(v5 + 281);
      *&v818[32] = *&v870[32];
      *&v818[48] = v386;
      *&v818[64] = *&v870[64];
      v819 = v382;
      *v818 = *v870;
      *&v818[16] = v384;
      v307 = *(v5 + 96);
      v390 = *(v5 + 128);
      *&__src[96] = *(v5 + 112);
      *&__src[112] = v390;
      *&__src[121] = *(v5 + 137);
      v309 = *(v5 + 32);
      v311 = *(v5 + 48);
      v391 = *(v5 + 64);
      *&__src[32] = v311;
      *&__src[48] = v391;
      v312 = *(v5 + 64);
      v314 = *(v5 + 80);
      v392 = *(v5 + 96);
      *&__src[64] = v314;
      *&__src[80] = v392;
      v393 = *(v5 + 32);
      v316 = *(v5 + 16);
      *__src = v316;
      *&__src[16] = v393;
      v394 = *(v5 + 128);
      v828 = *&__src[96];
      v829[0] = v394;
      v318 = *(v5 + 137);
    }

    *(v829 + 9) = v318;
    v824 = v311;
    v825 = v312;
    v826 = v314;
    v827 = v307;
    v822 = v316;
    v823 = v309;
    sub_1AAE680CC(v870, &v839);
    sub_1AAE680CC(__src, &v839);
    v895 = v820;
    v896[0] = v821[0];
    *(v896 + 9) = *(v821 + 9);
    v891 = *&v818[32];
    v892 = *&v818[48];
    v893 = *&v818[64];
    v894 = v819;
    v889 = *v818;
    v890 = *&v818[16];
    v899 = v828;
    v900[0] = v829[0];
    *(v900 + 9) = *(v829 + 9);
    *&v897[32] = v824;
    *&v897[48] = v825;
    *&v897[64] = v826;
    v898 = v827;
    *v897 = v822;
    *&v897[16] = v823;
    v815 = v820;
    v816[0] = v821[0];
    *(v816 + 9) = *(v821 + 9);
    *&v813[32] = *&v818[32];
    *&v813[48] = *&v818[48];
    *&v813[64] = *&v818[64];
    v814 = v819;
    *v813 = *v818;
    *&v813[16] = *&v818[16];
    v4 = v744;
    if (sub_1AAE63EF0(v813))
    {
LABEL_105:
      sub_1AAE68190(v897);
      sub_1AAE68190(&v889);
      sub_1AACFDFAC(v876, sub_1AACFAA34);
      v34 = v909;
      goto LABEL_106;
    }

    v395 = sub_1AAD357A8(v813);
    v752 = *(v395 + 16);
    v753 = *(v395 + 32);
    v754 = *(v395 + 48);
    LOBYTE(v755) = *(v395 + 64);
    v751 = *v395;
    v879[2] = *&v818[32];
    v879[3] = *&v818[48];
    v879[0] = *v818;
    v879[1] = *&v818[16];
    *(v880 + 9) = *(v821 + 9);
    v879[6] = v820;
    v880[0] = v821[0];
    v879[4] = *&v818[64];
    v879[5] = v819;
    v396 = sub_1AAD357A8(v879);
    sub_1AAE63EFC(v396, __src);
    v397 = v1;
    sub_1AAED741C(!v298, &v751, &v839);
    v873[1] = v847;
    v874 = v848;
    v875 = v849;
    *&v870[64] = v843;
    v871 = v844;
    v872 = v845;
    v873[0] = v846;
    *v870 = v839;
    *&v870[16] = v840;
    *&v870[32] = v841;
    *&v870[48] = v842;
    if (sub_1AAE492A8(v870) == 1)
    {
      sub_1AAE68190(&v889);
      goto LABEL_105;
    }

    v537 = *v870;
    v538 = *&v870[8];
    v866 = v873[0];
    v867 = v873[1];
    v868 = v874;
    v869 = v875;
    v862 = *&v870[48];
    v863 = *&v870[64];
    v864 = v871;
    v865 = v872;
    v860 = *&v870[16];
    v861 = *&v870[32];
    sub_1AAE680CC(v897, __src);
    sub_1AAF754B8(v298, v897, &v803);
    v539 = sub_1AAD6AE5C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v541 = v539[2];
    v540 = v539[3];
    v542 = v541 + 1;
    if (v541 >= v540 >> 1)
    {
      v539 = sub_1AAD6AE5C((v540 > 1), v541 + 1, 1, v539);
    }

    v539[2] = v542;
    v543 = &v539[19 * v541];
    v544 = v810[0];
    *(v543 + 8) = v809;
    *(v543 + 9) = v544;
    *(v543 + 10) = v810[1];
    v543[22] = v811;
    v545 = v806;
    *(v543 + 4) = v805;
    *(v543 + 5) = v545;
    v546 = v808;
    *(v543 + 6) = v807;
    *(v543 + 7) = v546;
    v547 = v804;
    *(v543 + 2) = v803;
    *(v543 + 3) = v547;
    sub_1AAEDA024(v5 + 336, &v830, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    if (BYTE1(v834) < 0xFFu)
    {
      if ((v834 & 0xFF00) == 0x200)
      {
        v777 = v832;
        v778 = v833;
        LOBYTE(v779) = v834;
        v775 = v830;
        v776 = v831;
        *(v855 + 7) = v830;
        *(&v855[1] + 7) = v831;
        *(&v855[2] + 7) = v832;
        *(&v855[3] + 7) = v833;
        BYTE7(v855[4]) = v834;
        __src[0] = 5;
        *&__src[1] = v855[0];
        *&__src[65] = *&v855[4];
        *&__src[49] = v855[3];
        *&__src[33] = v855[2];
        *&__src[17] = v855[1];
        __src[73] = 3;
        sub_1AAEDA174(__src);
        sub_1AAE63EFC(&v775, &v793);
        v554 = v539[3];
        if ((v541 + 2) > (v554 >> 1))
        {
          v539 = sub_1AAD6AE5C((v554 > 1), v541 + 2, 1, v539);
        }

        sub_1AAE63F58(&v775);
        v799 = *&__src[96];
        v800[0] = *&__src[112];
        v800[1] = *&__src[128];
        *&v801 = *&__src[144];
        v795 = *&__src[32];
        v796 = *&__src[48];
        v797 = *&__src[64];
        v798 = *&__src[80];
        v793 = *__src;
        v794 = *&__src[16];
        nullsub_1();
        v539[2] = v541 + 2;
        v555 = &v539[19 * v542];
        v556 = v794;
        *(v555 + 2) = v793;
        *(v555 + 3) = v556;
        v557 = v795;
        v558 = v796;
        v559 = v798;
        *(v555 + 6) = v797;
        *(v555 + 7) = v559;
        *(v555 + 4) = v557;
        *(v555 + 5) = v558;
        v560 = v799;
        v561 = v800[0];
        v562 = v800[1];
        v555[22] = v801;
        *(v555 + 9) = v561;
        *(v555 + 10) = v562;
        *(v555 + 8) = v560;
      }

      else
      {
        sub_1AAEDA120(&v830);
      }
    }

    else
    {
      sub_1AAEDA0A4(&v830, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
    }

    sub_1AAEDA024(v5 + 424, &v830, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    if (BYTE1(v834) < 0xFFu)
    {
      if ((v834 & 0xFF00) == 0x200)
      {
        v777 = v832;
        v778 = v833;
        LOBYTE(v779) = v834;
        v775 = v830;
        v776 = v831;
        *(v855 + 7) = v830;
        *(&v855[1] + 7) = v831;
        *(&v855[2] + 7) = v832;
        *(&v855[3] + 7) = v833;
        BYTE7(v855[4]) = v834;
        __src[0] = 6;
        *&__src[1] = v855[0];
        *&__src[65] = *&v855[4];
        *&__src[49] = v855[3];
        *&__src[33] = v855[2];
        *&__src[17] = v855[1];
        __src[73] = 3;
        sub_1AAEDA174(__src);
        sub_1AAE63EFC(&v775, &v793);
        v668 = v539[2];
        v667 = v539[3];
        if (v668 >= v667 >> 1)
        {
          v539 = sub_1AAD6AE5C((v667 > 1), v668 + 1, 1, v539);
        }

        sub_1AAE63F58(&v775);
        v799 = *&__src[96];
        v800[0] = *&__src[112];
        v800[1] = *&__src[128];
        *&v801 = *&__src[144];
        v795 = *&__src[32];
        v796 = *&__src[48];
        v797 = *&__src[64];
        v798 = *&__src[80];
        v793 = *__src;
        v794 = *&__src[16];
        nullsub_1();
        v539[2] = v668 + 1;
        v669 = &v539[19 * v668];
        v670 = v794;
        *(v669 + 2) = v793;
        *(v669 + 3) = v670;
        v671 = v795;
        v672 = v796;
        v673 = v798;
        *(v669 + 6) = v797;
        *(v669 + 7) = v673;
        *(v669 + 4) = v671;
        *(v669 + 5) = v672;
        v674 = v799;
        v675 = v800[0];
        v676 = v800[1];
        v669[22] = v801;
        *(v669 + 9) = v675;
        *(v669 + 10) = v676;
        *(v669 + 8) = v674;
      }

      else
      {
        sub_1AAEDA1A8(&v830);
      }
    }

    else
    {
      sub_1AAEDA0A4(&v830, qword_1ED9B2508, &type metadata for ResolvedSymbol, MEMORY[0x1E69E6720]);
    }

    LOBYTE(v779) = *(v5 + 632);
    v677 = *(v5 + 616);
    v777 = *(v5 + 600);
    v778 = v677;
    v678 = *(v5 + 584);
    v775 = *(v5 + 568);
    v776 = v678;
    if ((~v779 & 0x7C) != 0 && (v779 & 0x40) != 0)
    {
      __src[0] = 8;
      *&__src[8] = v775;
      *&__src[24] = v776;
      *&__src[40] = v777;
      *&__src[56] = v778;
      __src[72] = v779 & 0xBF;
      __src[73] = 3;
      sub_1AAEDA174(__src);
      v855[2] = v777;
      v855[3] = v778;
      LOBYTE(v855[4]) = v779;
      v855[0] = v775;
      v855[1] = v776;
      sub_1AAEDA024(&v775, &v793, &qword_1ED9B23C8, &type metadata for ResolvedLineStyle);
      sub_1AAEDA1FC(v855, &v793);
      v680 = v539[2];
      v679 = v539[3];
      if (v680 >= v679 >> 1)
      {
        v539 = sub_1AAD6AE5C((v679 > 1), v680 + 1, 1, v539);
      }

      sub_1AAEDA0A4(&v775, &qword_1ED9B23C8, &type metadata for ResolvedLineStyle, MEMORY[0x1E69E6720]);
      v799 = *&__src[96];
      v800[0] = *&__src[112];
      v800[1] = *&__src[128];
      *&v801 = *&__src[144];
      v795 = *&__src[32];
      v796 = *&__src[48];
      v797 = *&__src[64];
      v798 = *&__src[80];
      v793 = *__src;
      v794 = *&__src[16];
      nullsub_1();
      v539[2] = v680 + 1;
      v681 = &v539[19 * v680];
      v682 = v794;
      *(v681 + 2) = v793;
      *(v681 + 3) = v682;
      v683 = v795;
      v684 = v796;
      v685 = v798;
      *(v681 + 6) = v797;
      *(v681 + 7) = v685;
      *(v681 + 4) = v683;
      *(v681 + 5) = v684;
      v686 = v799;
      v687 = v800[0];
      v688 = v800[1];
      v681[22] = v801;
      *(v681 + 9) = v687;
      *(v681 + 10) = v688;
      *(v681 + 8) = v686;
    }

    v689 = sub_1AAF70438(v539);
    v691 = v690;
    if (!*(v6 + 280) || (v692 = *(v6 + 344), v692 == 255) || (v692 & 1) != 0 || (v693 = *(v6 + 336), (v694 = *(v693 + 16)) == 0))
    {
      v934.size.width = *(v6 + 48);
      v934.size.height = *(v6 + 56);
      v934.origin.x = v7 + 40.0;
      v934.origin.y = v8 + 40.0;
      v695 = CGRectGetHeight(v934);
    }

    else
    {
      v695 = vabdd_f64(*(v693 + 32 + 8 * v694 - 8), *(v693 + 32));
    }

    if (!*(v6 + 176) || (v696 = *(v6 + 240), v696 == 255) || (v696 & 1) != 0 || (v697 = *(v6 + 232), (v698 = *(v697 + 16)) == 0))
    {
      v935.size.width = *(v6 + 48);
      v935.size.height = *(v6 + 56);
      v935.origin.x = v7 + 40.0;
      v935.origin.y = v8 + 40.0;
      v699 = CGRectGetWidth(v935);
    }

    else
    {
      v699 = vabdd_f64(*(v697 + 32 + 8 * v698 - 8), *(v697 + 32));
    }

    v700 = *(v397 + *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 28));
    if (v298)
    {
      v701 = 0.0;
      if (v700)
      {
        v702 = *&v145;
        v699 = 0.0;
      }

      else
      {
        if (v538 >= v537)
        {
          v702 = v537;
        }

        else
        {
          v702 = v538;
        }

        v699 = vabdd_f64(v538, v537);
      }
    }

    else
    {
      v702 = 0.0;
      if (v700)
      {
        v701 = v737;
        v695 = 0.0;
      }

      else
      {
        if (v538 >= v537)
        {
          v701 = v537;
        }

        else
        {
          v701 = v538;
        }

        v695 = vabdd_f64(v538, v537);
      }
    }

    v703 = v699;
    v704 = v695;
    v936 = CGRectOffset(*(&v701 - 1), v7, v8);
    v705 = v936.origin.x;
    v706 = v936.origin.y;
    v707 = v936.size.width;
    v708 = v936.size.height;

    sub_1AAF754B8(!v298, &v889, v747);
    sub_1AACFDFAC(v909, sub_1AACFAA34);
    sub_1AAE68190(&v889);
    sub_1AACFDFAC(v876, sub_1AACFAA34);
    sub_1AAE68190(v897);

    v709 = v5 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 84);
    v710 = *(v709 + 48);
    v832 = *(v709 + 32);
    v833 = v710;
    v834 = *(v709 + 64);
    LOBYTE(v835) = *(v709 + 80);
    v711 = *(v709 + 16);
    v830 = *v709;
    v831 = v711;
    if (*(&v711 + 1) == 1)
    {
      LOBYTE(v798) = 0;
      v796 = 0u;
      v797 = 0u;
      v794 = 0u;
      v795 = 0u;
      v793 = 0u;
      memset(__src, 0, 81);
      sub_1AAE0F994(&v793, v855);
      sub_1AAE0F9F0(__src);
      v712 = v798;
      v652 = *(&v797 + 1);
      v651 = v797;
      v735 = v795;
      v743 = v796;
      v721 = v794;
      v728 = v793;
    }

    else
    {
      v743 = v833;
      v728 = v830;
      v735 = v832;
      v652 = *(&v834 + 1);
      v651 = v834;
      v712 = v835;
      v721 = v831;
    }

    sub_1AAE2D7EC(v855);
    sub_1AAEDA024(&v830, __src, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties);

    v653 = v712 & 1;
    v799 = v866;
    v800[0] = v867;
    v800[1] = v868;
    *&v801 = v869;
    v795 = v862;
    v796 = v863;
    v797 = v864;
    v798 = v865;
    v793 = v860;
    v794 = v861;
    nullsub_1();
    *&__src[296] = v799;
    *&__src[312] = v800[0];
    *&__src[328] = v800[1];
    *&__src[264] = v797;
    *&__src[280] = v798;
    *&__src[232] = v795;
    *&__src[248] = v796;
    *&__src[200] = v793;
    *&__src[216] = v794;
    *&__src[448] = v857;
    *&__src[464] = v858[0];
    *&__src[480] = v858[1];
    *&__src[496] = v859;
    *&__src[384] = v855[2];
    *&__src[400] = v855[3];
    *&__src[416] = v855[4];
    *&__src[432] = v856;
    *&__src[352] = v855[0];
    *&__src[368] = v855[1];
    *__src = v705;
    *&__src[8] = v706;
    *&__src[16] = v707;
    *&__src[24] = v708;
    *&__src[136] = v747[6];
    *&__src[152] = v747[7];
    *&__src[168] = v747[8];
    *&__src[32] = v689;
    *&__src[184] = v748;
    *&__src[72] = v747[2];
    *&__src[88] = v747[3];
    *&__src[104] = v747[4];
    *&__src[120] = v747[5];
    *&__src[40] = v747[0];
    *&__src[56] = v747[1];
    *&__src[344] = v801;
    *&__src[192] = v691;
    *&__src[504] = 257;
    *&__src[506] = v884;
    *&__src[510] = WORD2(v884);
    *&__src[512] = v728;
    *&__src[528] = v721;
    *&__src[544] = v735;
    *&__src[560] = v743;
    goto LABEL_297;
  }

  v10 = *(v6 + 256);
  v914 = *(v6 + 240);
  v915 = v10;
  *&v916 = *(v6 + 272);
  v11 = *(v6 + 192);
  v910 = *(v6 + 176);
  v911 = v11;
  v12 = *(v6 + 224);
  v912 = *(v6 + 208);
  v913 = v12;
  if (!v910)
  {
    goto LABEL_107;
  }

  *v772 = v910;
  *&v772[40] = *(v6 + 216);
  *&v772[56] = *(v6 + 232);
  *&v772[72] = *(v6 + 248);
  *&v772[8] = *(v6 + 184);
  *&v772[24] = *(v6 + 200);
  *&v772[88] = *(v6 + 264);
  v13 = *(v6 + 296);
  v901 = *(v6 + 280);
  v902 = v13;
  v14 = *(v6 + 312);
  v15 = *(v6 + 328);
  v16 = *(v6 + 344);
  v17 = *(v6 + 360);
  *&v907 = *(v6 + 376);
  v905 = v16;
  v906 = v17;
  v903 = v14;
  v904 = v15;
  if (!v901)
  {
    goto LABEL_107;
  }

  *&v918[0] = v901;
  v18 = *(v6 + 336);
  *(&v918[2] + 8) = *(v6 + 320);
  *(&v918[3] + 8) = v18;
  v19 = *(v6 + 368);
  *(&v918[4] + 8) = *(v6 + 352);
  *(&v918[5] + 8) = v19;
  v20 = *(v6 + 304);
  *(v918 + 8) = *(v6 + 288);
  *(&v918[1] + 8) = v20;
  v21 = *(v5 + 16);
  v22 = *(v5 + 32);
  v24 = *(v5 + 80);
  v23 = *(v5 + 96);
  v25 = *(v5 + 48);
  v806 = *(v5 + 64);
  v807 = v24;
  v804 = v22;
  v805 = v25;
  v803 = v21;
  v26 = *(v5 + 112);
  v27 = *(v5 + 128);
  *(v810 + 9) = *(v5 + 137);
  v809 = v26;
  v810[0] = v27;
  v808 = v23;
  v28 = *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 24);
  sub_1AAEDA3C0(&v910, __src, sub_1AACFAA34);
  sub_1AAEDA3C0(&v901, __src, sub_1AACFAA34);
  sub_1AAF27F58(&v803, v772, 0, (v1 + v28), v758);
  v29 = *(v5 + 256);
  v30 = *(v5 + 272);
  v31 = *(v5 + 224);
  v798 = *(v5 + 240);
  v799 = v29;
  v800[0] = v30;
  *(v800 + 9) = *(v5 + 281);
  v32 = *(v5 + 208);
  v795 = *(v5 + 192);
  v796 = v32;
  v797 = v31;
  v33 = *(v5 + 176);
  v793 = *(v5 + 160);
  v794 = v33;
  sub_1AAF27F58(&v793, v918, 0, (v1 + v28), v877);
  if (v758[48] & 1) != 0 || (v877[48])
  {
    sub_1AACFDFAC(&v901, sub_1AACFAA34);
    v34 = &v910;
LABEL_106:
    sub_1AACFDFAC(v34, sub_1AACFAA34);
LABEL_107:
    sub_1AAED9FA0(__src);
LABEL_108:
    memcpy(&v838[4], __src, 0x251uLL);
    goto LABEL_109;
  }

  if (*&v758[8] >= *v758)
  {
    v262 = *v758;
  }

  else
  {
    v262 = *&v758[8];
  }

  if (*&v877[8] >= *v877)
  {
    v263 = *v877;
  }

  else
  {
    v263 = *&v877[8];
  }

  v264 = vabdd_f64(*&v758[8], *v758);
  v265 = vabdd_f64(*&v877[8], *v877);
  v921 = CGRectOffset(*&v262, v7, v8);
  v266 = v921.origin.x;
  v267 = v921.origin.y;
  v268 = v921.size.width;
  v269 = v921.size.height;
  *&v921.origin.y = *(v5 + 80);
  v856 = *(v5 + 96);
  v921.size = *(v5 + 128);
  v857 = *(v5 + 112);
  v858[0] = v921.size;
  *(v858 + 9) = *(v5 + 137);
  v921.size = *(v5 + 64);
  v855[2] = *(v5 + 48);
  v855[3] = v921.size;
  v855[4] = *&v921.origin.y;
  v921.origin = *(v5 + 32);
  v855[0] = *(v5 + 16);
  v855[1] = v921.origin;
  sub_1AAE680CC(v855, __src);
  sub_1AAF754B8(0, v855, v870);
  v270 = sub_1AAD6AE5C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v272 = v270[2];
  v271 = v270[3];
  if (v272 >= v271 >> 1)
  {
    v270 = sub_1AAD6AE5C((v271 > 1), v272 + 1, 1, v270);
  }

  v270[2] = v272 + 1;
  v273 = &v270[19 * v272];
  *(v273 + 3) = *&v870[16];
  *(v273 + 2) = *v870;
  *(v273 + 7) = v871;
  *(v273 + 6) = *&v870[64];
  *(v273 + 5) = *&v870[48];
  *(v273 + 4) = *&v870[32];
  v273[22] = v874;
  *(v273 + 10) = v873[1];
  *(v273 + 9) = v873[0];
  *(v273 + 8) = v872;
  v274 = *(v5 + 256);
  v275 = *(v5 + 272);
  v276 = *(v5 + 224);
  v814 = *(v5 + 240);
  v815 = v274;
  v816[0] = v275;
  *(v816 + 9) = *(v5 + 281);
  v277 = *(v5 + 208);
  *&v813[32] = *(v5 + 192);
  *&v813[48] = v277;
  *&v813[64] = v276;
  v278 = *(v5 + 176);
  *v813 = *(v5 + 160);
  *&v813[16] = v278;
  sub_1AAE680CC(v813, __src);
  sub_1AAF754B8(1, v813, v818);
  v280 = v270[2];
  v279 = v270[3];
  v281 = v280 + 1;
  if (v280 >= v279 >> 1)
  {
    v270 = sub_1AAD6AE5C((v279 > 1), v280 + 1, 1, v270);
  }

  v270[2] = v281;
  v282 = &v270[19 * v280];
  v283 = *&v818[16];
  *(v282 + 2) = *v818;
  *(v282 + 3) = v283;
  v284 = *&v818[32];
  v285 = *&v818[48];
  v286 = v819;
  *(v282 + 6) = *&v818[64];
  *(v282 + 7) = v286;
  *(v282 + 4) = v284;
  *(v282 + 5) = v285;
  v287 = v820;
  v288 = v821[0];
  v289 = v821[1];
  v282[22] = v822;
  *(v282 + 9) = v288;
  *(v282 + 10) = v289;
  *(v282 + 8) = v287;
  sub_1AAEDA024(v5 + 336, &v889, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
  if (BYTE1(v893) < 0xFFu)
  {
    if ((v893 & 0xFF00) == 0x200)
    {
      v879[2] = v891;
      v879[3] = v892;
      LOBYTE(v879[4]) = v893;
      v879[0] = v889;
      v879[1] = v890;
      *&v897[7] = v889;
      *&v897[23] = v890;
      *&v897[39] = v891;
      *&v897[55] = v892;
      v897[71] = v893;
      __src[0] = 5;
      *&__src[1] = *v897;
      *&__src[65] = *&v897[64];
      *&__src[49] = *&v897[48];
      *&__src[33] = *&v897[32];
      *&__src[17] = *&v897[16];
      __src[73] = 3;
      sub_1AAEDA174(__src);
      sub_1AAE63EFC(v879, &v839);
      v373 = v270[3];
      if ((v280 + 2) > (v373 >> 1))
      {
        v270 = sub_1AAD6AE5C((v373 > 1), v280 + 2, 1, v270);
      }

      sub_1AAE63F58(v879);
      v845 = *&__src[96];
      v846 = *&__src[112];
      v847 = *&__src[128];
      v841 = *&__src[32];
      v842 = *&__src[48];
      v843 = *&__src[64];
      v844 = *&__src[80];
      v839 = *__src;
      *&v848 = *&__src[144];
      v840 = *&__src[16];
      nullsub_1();
      v270[2] = v280 + 2;
      v374 = &v270[19 * v281];
      v375 = v840;
      *(v374 + 2) = v839;
      *(v374 + 3) = v375;
      v376 = v841;
      v377 = v842;
      v378 = v844;
      *(v374 + 6) = v843;
      *(v374 + 7) = v378;
      *(v374 + 4) = v376;
      *(v374 + 5) = v377;
      v379 = v845;
      v380 = v846;
      v381 = v847;
      v374[22] = v848;
      *(v374 + 9) = v380;
      *(v374 + 10) = v381;
      *(v374 + 8) = v379;
    }

    else
    {
      sub_1AAEDA120(&v889);
    }
  }

  else
  {
    sub_1AAEDA0A4(&v889, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
  }

  v479 = v4;
  v480 = sub_1AAF70438(v270);
  v482 = v481;
  sub_1AACFDFAC(&v910, sub_1AACFAA34);
  sub_1AACFDFAC(&v901, sub_1AACFAA34);
  v483 = v5 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 84);
  v484 = *(v483 + 48);
  *&v897[32] = *(v483 + 32);
  *&v897[48] = v484;
  *&v897[64] = *(v483 + 64);
  LOBYTE(v898) = *(v483 + 80);
  v485 = *(v483 + 16);
  *v897 = *v483;
  *&v897[16] = v485;
  if (*(&v485 + 1) == 1)
  {
    LOBYTE(v844) = 0;
    v843 = 0u;
    v842 = 0u;
    v841 = 0u;
    v840 = 0u;
    v839 = 0u;
    memset(__src, 0, 81);
    sub_1AAE0F994(&v839, &v889);
    sub_1AAE0F9F0(__src);
    v486 = v844;
    v488 = *(&v843 + 1);
    v487 = v843;
    v730 = v841;
    v739 = v842;
    v717 = v840;
    v724 = v839;
  }

  else
  {
    v739 = *&v897[48];
    v724 = *v897;
    v730 = *&v897[32];
    v487 = *&v897[64];
    v488 = *&v897[72];
    v486 = v898;
    v717 = *&v897[16];
  }

  sub_1AAE2D7EC(&v839);
  sub_1AAEDA024(v897, __src, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties);

  *&__src[136] = v845;
  *&__src[152] = v846;
  *&__src[168] = v847;
  *&__src[72] = v841;
  *&__src[88] = v842;
  *&__src[104] = v843;
  *&__src[120] = v844;
  *&__src[40] = v839;
  *&__src[56] = v840;
  *&__src[296] = v845;
  *&__src[312] = v846;
  *&__src[328] = v847;
  *&__src[264] = v843;
  *&__src[280] = v844;
  *&__src[496] = v848;
  *&__src[232] = v841;
  *&__src[248] = v842;
  *&__src[200] = v839;
  *&__src[216] = v840;
  *&__src[448] = v845;
  *&__src[464] = v846;
  *&__src[480] = v847;
  *&__src[384] = v841;
  *&__src[400] = v842;
  *&__src[416] = v843;
  *&__src[432] = v844;
  *&__src[352] = v839;
  *&__src[368] = v840;
  *__src = v266;
  *&__src[8] = v267;
  *&__src[16] = v268;
  *&__src[24] = v269;
  *&__src[184] = v848;
  *&__src[32] = v480;
  *&__src[344] = v848;
  *&__src[192] = v482;
  *&__src[504] = 0;
  *&__src[506] = v889;
  *&__src[510] = WORD2(v889);
  *&__src[512] = v724;
  *&__src[528] = v717;
  *&__src[544] = v730;
  *&__src[560] = v739;
  *&__src[576] = v487;
  *&__src[584] = v488;
  __src[592] = v486 & 1;
  sub_1AAEDA100(__src);
  memcpy(&v838[4], __src, 0x251uLL);
  v4 = v479;
LABEL_109:
  *v4 = 0;
  return memcpy(v4 + 1, v838, 0x255uLL);
}