void sub_1D620E744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = a3 + 64; ; i += 40)
    {
      v8 = v4;

      swift_retain_n();

      FormatColor.bind(binder:context:)(a1, a2);
      if (v3)
      {
        break;
      }

      FormatFloat.bind(binder:context:)(a1, a2);

      v4 = v8 - 1;
      if (v8 == 1)
      {
        return;
      }
    }
  }
}

uint64_t sub_1D620E8A0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v6 = result;
  for (i = (a3 + 48); ; i += 3)
  {
    v9 = *(i - 2);
    v8 = *(i - 1);
    v10 = *i;
    if ((~v9 & 0xF000000000000007) == 0)
    {
      sub_1D5CFCFAC(*(i - 2));
      sub_1D5D04BD4(v8);
      sub_1D5D04BD4(v10);
      if ((~v8 & 0xF000000000000007) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_1D5CFCFAC(v9);
    sub_1D5D04BD4(v8);
    sub_1D5D04BD4(v10);
    sub_1D5CFCFAC(v9);
    FormatColor.bind(binder:context:)(v6, a2);
    if (v3)
    {
      break;
    }

    if ((~v8 & 0xF000000000000007) == 0)
    {
LABEL_7:
      if ((~v10 & 0xF000000000000007) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }

LABEL_11:

    FormatFloat.bind(binder:context:)(v6, a2);

    if (v3)
    {
      goto LABEL_16;
    }

    if ((~v10 & 0xF000000000000007) == 0)
    {
LABEL_3:
      sub_1D5C84FF4(v9);
      sub_1D5C8500C(v8);
      result = sub_1D5C8500C(v10);
      goto LABEL_4;
    }

LABEL_13:

    FormatFloat.bind(binder:context:)(v6, a2);

    sub_1D5C84FF4(v9);
    sub_1D5C8500C(v8);
    result = sub_1D5C8500C(v10);
    if (v3)
    {
      return result;
    }

LABEL_4:
    if (!--v4)
    {
      return result;
    }
  }

LABEL_16:
  sub_1D5C84FF4(v9);
  sub_1D5C8500C(v8);
  return sub_1D5C8500C(v10);
}

uint64_t sub_1D620EA64(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      sub_1D5CFEC98(v8);
      FormatAdjustment.bind(binder:context:)(v6, a2);
      v9 = v8;
      if (v3)
      {
        break;
      }

      result = sub_1D5CFED88(v9);
      if (!--v4)
      {
        return result;
      }
    }

    return sub_1D5CFED88(v9);
  }

  return result;
}

void sub_1D620EAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = a2;
  v6 = a1;
  for (i = (a3 + 48); ; i += 3)
  {
    v8 = *i;
    if (*i >> 62 != 1)
    {
      goto LABEL_3;
    }

    v9 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (v9 >> 62)
    {
      break;
    }

    sub_1D5EB1500(v8);
    v16 = v9;
LABEL_25:
    sub_1D5EB1500(v16);

LABEL_68:

    sub_1D620EAF8(v6, v5, v10);
    if (v3)
    {
      sub_1D5EB15C4(v9);

      goto LABEL_81;
    }

    sub_1D5EB15C4(v9);

    sub_1D5EB15C4(v8);
LABEL_3:
    if (!--v4)
    {
      return;
    }
  }

  if (v9 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    if (v9 == 0x8000000000000000)
    {
      v16 = 0x8000000000000000;
    }

    else
    {
      v16 = 0x8000000000000008;
    }

    goto LABEL_25;
  }

  v12 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v44 = v12;
  if (!(v12 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    v17 = v12;
LABEL_30:
    sub_1D5EB1500(v17);

LABEL_66:
    v5 = a2;

    sub_1D620EAF8(a1, a2, v11);
    if (v3)
    {
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      goto LABEL_80;
    }

    sub_1D5EB15C4(v44);

    sub_1D5EB15C4(v9);
    v6 = a1;
    goto LABEL_68;
  }

  if (v12 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    if (v12 == 0x8000000000000000)
    {
      v17 = 0x8000000000000000;
    }

    else
    {
      v17 = 0x8000000000000008;
    }

    goto LABEL_30;
  }

  v41 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v42 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!(v42 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    v18 = v42;
LABEL_35:
    sub_1D5EB1500(v18);
    v19 = v41;

LABEL_64:

    sub_1D620EAF8(a1, a2, v19);
    if (v3)
    {
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      goto LABEL_79;
    }

    sub_1D5EB15C4(v42);

    sub_1D5EB15C4(v44);
    goto LABEL_66;
  }

  if (v42 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    if (v42 == 0x8000000000000000)
    {
      v18 = 0x8000000000000000;
    }

    else
    {
      v18 = 0x8000000000000008;
    }

    goto LABEL_35;
  }

  v39 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v40 = *((v42 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!(v40 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    v20 = v40;
LABEL_40:
    sub_1D5EB1500(v20);
    v21 = v39;

LABEL_62:

    sub_1D620EAF8(a1, a2, v21);
    if (v3)
    {
      sub_1D5EB15C4(v40);

      v28 = v42;
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      goto LABEL_78;
    }

    sub_1D5EB15C4(v40);

    sub_1D5EB15C4(v42);
    v19 = v41;
    goto LABEL_64;
  }

  if (v40 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    if (v40 == 0x8000000000000000)
    {
      v20 = 0x8000000000000000;
    }

    else
    {
      v20 = 0x8000000000000008;
    }

    goto LABEL_40;
  }

  v37 = *((v40 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v38 = *((v40 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!(v38 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    v22 = v38;
LABEL_45:
    sub_1D5EB1500(v22);
    v23 = v37;

LABEL_60:

    sub_1D620EAF8(a1, a2, v23);
    if (v3)
    {
      sub_1D5EB15C4(v38);

      sub_1D5EB15C4(v40);

      v28 = v42;
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

LABEL_76:
      v29 = v40;
      goto LABEL_77;
    }

    sub_1D5EB15C4(v38);

    sub_1D5EB15C4(v40);
    v21 = v39;
    goto LABEL_62;
  }

  if (v38 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    if (v38 == 0x8000000000000000)
    {
      v22 = 0x8000000000000000;
    }

    else
    {
      v22 = 0x8000000000000008;
    }

    goto LABEL_45;
  }

  v13 = *((v38 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v35 = *((v38 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v36 = v13;
  if (!(v13 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    sub_1D5EB1500(v38);

    sub_1D5EB1500(v38);
    v24 = v36;
LABEL_50:
    sub_1D5EB1500(v24);
    v25 = v35;

LABEL_58:

    sub_1D620EAF8(a1, a2, v25);
    if (v3)
    {
      sub_1D5EB15C4(v36);

      sub_1D5EB15C4(v38);

      sub_1D5EB15C4(v40);

      v28 = v42;
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      sub_1D5EB15C4(v38);
      goto LABEL_76;
    }

    sub_1D5EB15C4(v36);

    sub_1D5EB15C4(v38);
    v23 = v37;
    goto LABEL_60;
  }

  if (v13 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    sub_1D5EB1500(v38);

    sub_1D5EB1500(v38);
    if (v36 == 0x8000000000000000)
    {
      v24 = 0x8000000000000000;
    }

    else
    {
      v24 = 0x8000000000000008;
    }

    goto LABEL_50;
  }

  v14 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v33 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v34 = v14;
  if (!(v14 >> 62))
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    sub_1D5EB1500(v38);

    sub_1D5EB1500(v38);
    sub_1D5EB1500(v36);

    sub_1D5EB1500(v36);
    v26 = v34;
    goto LABEL_55;
  }

  if (v14 >> 62 != 1)
  {

    sub_1D5EB1500(v8);
    sub_1D5EB1500(v9);

    sub_1D5EB1500(v9);
    sub_1D5EB1500(v12);

    sub_1D5EB1500(v12);
    sub_1D5EB1500(v42);

    sub_1D5EB1500(v42);
    sub_1D5EB1500(v40);

    sub_1D5EB1500(v40);
    sub_1D5EB1500(v38);

    sub_1D5EB1500(v38);
    sub_1D5EB1500(v36);

    sub_1D5EB1500(v36);
    if (v34 == 0x8000000000000000)
    {
      v26 = 0x8000000000000000;
    }

    else
    {
      v26 = 0x8000000000000008;
    }

LABEL_55:
    sub_1D5EB1500(v26);
    v15 = v33;

LABEL_56:

    sub_1D620EAF8(a1, a2, v15);
    if (v3)
    {
      sub_1D5EB15C4(v34);

      sub_1D5EB15C4(v36);

      sub_1D5EB15C4(v38);

      v30 = v40;
      sub_1D5EB15C4(v40);

      v28 = v42;
      sub_1D5EB15C4(v42);

      v27 = v44;
      sub_1D5EB15C4(v44);

      sub_1D5EB15C4(v9);

      goto LABEL_85;
    }

    sub_1D5EB15C4(v34);

    sub_1D5EB15C4(v36);
    v25 = v35;
    goto LABEL_58;
  }

  v31 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v32 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

  sub_1D5EB1500(v8);
  sub_1D5EB1500(v9);

  sub_1D5EB1500(v9);
  sub_1D5EB1500(v12);

  sub_1D5EB1500(v12);
  sub_1D5EB1500(v42);

  sub_1D5EB1500(v42);
  sub_1D5EB1500(v40);

  sub_1D5EB1500(v40);
  sub_1D5EB1500(v38);

  sub_1D5EB1500(v38);
  sub_1D5EB1500(v36);

  sub_1D5EB1500(v36);
  sub_1D5EB1500(v34);

  sub_1D5EB1500(v34);
  sub_1D5EB1500(v31);

  sub_1D624919C(a1, a2, v31, v32);
  if (!v3)
  {
    sub_1D5EB15C4(v31);

    sub_1D5EB15C4(v34);
    v15 = v33;
    goto LABEL_56;
  }

  sub_1D5EB15C4(v31);

  sub_1D5EB15C4(v34);

  sub_1D5EB15C4(v36);

  sub_1D5EB15C4(v38);

  v30 = v40;
  sub_1D5EB15C4(v40);

  v28 = v42;
  sub_1D5EB15C4(v42);

  v27 = v44;
  sub_1D5EB15C4(v44);

  sub_1D5EB15C4(v9);

  sub_1D5EB15C4(v34);
LABEL_85:
  sub_1D5EB15C4(v36);
  sub_1D5EB15C4(v38);
  v29 = v30;
LABEL_77:
  sub_1D5EB15C4(v29);
LABEL_78:
  sub_1D5EB15C4(v28);
LABEL_79:
  sub_1D5EB15C4(v27);
LABEL_80:
  sub_1D5EB15C4(v9);
LABEL_81:

  sub_1D5EB15C4(v8);
}

uint64_t sub_1D620F94C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v11 = result;
  v5 = *(a3 + 16);
  if (v5)
  {
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    v7 = a3 + 56;
    do
    {

      swift_bridgeObjectRetain_n();
      if (swift_dynamicCast())
      {
        v16 = v4;
        v9 = *(&v14 + 1);
        v8 = v15;
        __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
        v10 = v16;
        (*(v8 + 8))(v11, a2, v9, v8);
        v4 = v10;

        result = __swift_destroy_boxed_opaque_existential_1(&v13);
        if (v10)
        {
          return result;
        }
      }

      else
      {

        v15 = 0;
        v13 = 0u;
        v14 = 0u;
        result = sub_1D5BFB774(&v13, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      v7 += 32;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D620FAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v391 = a2;
  v392 = type metadata accessor for FormatOption(0);
  v7 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392, v8);
  v10 = &v348 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v348 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v362 = &v348 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v348 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v348 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v363 = &v348 - v28;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  MEMORY[0x1EEE9AC00](v31, v32);
  v367 = &v348 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v365 = &v348 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v348 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v374 = &v348 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v370 = &v348 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  MEMORY[0x1EEE9AC00](&v348 - v51, v52);
  v371 = &v348 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v366 = &v348 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v360 = &v348 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v361 = &v348 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v373 = &v348 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v369 = &v348 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v359 = &v348 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v388 = &v348 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  MEMORY[0x1EEE9AC00](v77, v78);
  v372 = &v348 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v368 = &v348 - v86;
  if (!*(a3 + 16))
  {
    return;
  }

  v87 = *(a3 + 16);
  v357 = v21;
  v358 = v14;
  v353 = v25;
  v355 = v10;
  v88 = (a3 + 32);
  v382 = (v7 + 48);
  v383 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v381 = (v7 + 56);
  v89 = &protocol descriptor for FormatBindable;
  v379 = a1;
  v354 = v83;
  v350 = v40;
  v351 = v85;
  v352 = v84;
  v356 = v82;
  v90 = v87;
  while (1)
  {
    v91 = v88[1];
    v407 = *v88;
    v408 = v91;
    v92 = v88[3];
    v409 = v88[2];
    v410 = v92;
    v93 = v88[5];
    v411 = v88[4];
    v412[0] = v93;
    *(v412 + 10) = *(v88 + 90);
    v95 = *(&v407 + 1);
    v94 = v407;
    v97 = *(&v408 + 1);
    v96 = v408;
    v99 = *(&v409 + 1);
    v98 = v409;
    v100 = (WORD4(v412[1]) >> 12) & 3;
    v101 = v410;
    if (v100)
    {
      v102 = *(&v410 + 1);
      v390 = *(&v411 + 1);
      v103 = v411;
      v104 = v100 == 1;
      v393 = WORD4(v412[1]);
      v413 = v90;
      v395 = *&v412[1];
      v389 = v412[0];
      v105 = v410 >> 14;
      if (v104)
      {
        if (v410 >> 14)
        {
          if (v105 == 1)
          {
            v385 = v88;
            v394 = v4;
            v106 = v411;
            v397 = v407;
            v398 = v408;
            v396 = 5;
            v107 = v407;
            v380 = *(&v409 + 1);
            v108 = v408;
            v109 = v409;
            v110 = *(&v408 + 1);
            v111 = v410;
            sub_1D60B2AC8(&v407, &v402);
            sub_1D5E1DA6C(v107, *(&v107 + 1), v108, v110, v109, v380, v111);
            v112 = v394;
            v113 = sub_1D703E0C8(&v397, &v396);
            if (v112)
            {
              goto LABEL_163;
            }

            v114 = v113;
            v384 = v102;
            v387 = v106;
            v394 = 0;
            v115 = v413;
            v116 = v391;
            v117 = v373;
            v378 = *(&v107 + 1);
            v386 = v107;
            FormatOptionCollection.subscript.getter(v107, *(&v107 + 1), v373);
            if ((*v382)(v117, 1, v392) == 1)
            {

              sub_1D5B6EF64(v117, &qword_1EDF337F0, type metadata accessor for FormatOption);
              v88 = v385;
              if ((*(v116 + 48) & 1) == 0)
              {
                goto LABEL_152;
              }

              v118 = v369;
              (*v381)(v369, 1, 1, v392);
              sub_1D5B6EF64(v118, &qword_1EDF337F0, type metadata accessor for FormatOption);
              v90 = v115;
            }

            else
            {
              v166 = v117;
              v167 = v357;
              sub_1D5D5E33C(v166, v357, type metadata accessor for FormatOption);
              *&v402 = v167[2];

              FormatOptionValue.type.getter(v168, &v397);
              v169 = sub_1D6183C84(v397, v114);
              v134 = v114;
              v88 = v385;
              if ((v169 & 1) == 0)
              {
                goto LABEL_153;
              }

              v90 = v115;
              swift_bridgeObjectRelease_n();
              v170 = v369;
              sub_1D5D5E33C(v167, v369, type metadata accessor for FormatOption);
              (*v381)(v170, 0, 1, v392);
              sub_1D5B6EF64(v170, &qword_1EDF337F0, type metadata accessor for FormatOption);
            }

            v4 = v394;
            v143 = v395;
            v89 = &protocol descriptor for FormatBindable;
            v103 = v387;
            v102 = v384;
          }

          else
          {
            switch((v410 >> 7) & 0x7E | (v410 >> 3) & 1)
            {
              case 2u:
                v387 = v411;
                v384 = *(&v410 + 1);
                v385 = v88;
                v394 = v4;
                *(v406 + 10) = *(v88 + 90);
                v257 = v88[4];
                v258 = v88[5];
                v259 = v88[2];
                v404 = v88[3];
                v405 = v257;
                v406[0] = v258;
                v260 = v88[1];
                v402 = *v88;
                *v403 = v260;
                *&v403[16] = v259;
                WORD4(v406[1]) &= 0xCFFFu;
                v261 = v407;
                v262 = *(&v409 + 1);
                v263 = v408;
                v264 = v409;
                v265 = *(&v408 + 1);
                v266 = v410;
                sub_1D62B7260(&v402, &v397);
                v402 = v261;
                *v403 = __PAIR128__(v265, v263);
                v375 = v264;
                *&v403[16] = __PAIR128__(v262, v264);
                v380 = v262;
                LODWORD(v378) = v266 & 0xFFFFFFF7;
                LOBYTE(v404) = v266 & 0xF7;
                v267 = v391;
                v268 = v394;
                FormatGroupBinding.Text.bind(binder:context:)(v379, v391);
                if (v268)
                {
                  goto LABEL_163;
                }

                v402 = v261;
                *v403 = __PAIR128__(v265, v263);
                *&v403[16] = v375;
                *&v403[24] = v380;
                LOBYTE(v404) = v378;
                FormatGroupBinding.Text.bind(binder:context:)(v379, v267);
                v4 = 0;
                v90 = v413;
                v102 = v384;
                v88 = v385;
                v143 = v395;
                v89 = &protocol descriptor for FormatBindable;
                v103 = v387;
                break;
              case 3u:
              case 4u:
                v384 = *(&v410 + 1);
                v394 = v4;
                v387 = v411;
                v397 = v407;
                v398 = v408;
                v396 = 5;
                v378 = *(&v407 + 1);
                v230 = v407;
                v231 = v408;
                v232 = v409;
                v233 = *(&v408 + 1);
                v234 = v410;
                sub_1D60B2AC8(&v407, &v402);
                v386 = v230;
                v235 = v230;
                v236 = v378;
                v375 = v232;
                v376 = v233;
                v349 = v234;
                sub_1D5E1DA6C(v235, v378, v231, v233, v232, v99, v234);

                v377 = v231;

                v237 = v394;
                v238 = sub_1D703E0C8(&v397, &v396);
                if (v237)
                {
                  goto LABEL_161;
                }

                v239 = v361;
                sub_1D6BEBFEC(v386, v236, v238, 1, v361);
                v240 = v377;

                sub_1D5B6EF64(v239, &qword_1EDF337F0, type metadata accessor for FormatOption);
                *&v402 = v386;
                *(&v402 + 1) = v236;
                *v403 = v240;
                LOBYTE(v397) = 5;
                sub_1D5E1DA6C(v386, v236, v240, v376, v375, v99, v349);

                v241 = sub_1D703E0C8(&v402, &v397);
                v242 = v360;
                sub_1D6BEBFEC(v386, v236, v241, 1, v360);
                v4 = 0;

                sub_1D5B6EF64(v242, &qword_1EDF337F0, type metadata accessor for FormatOption);
                v89 = &protocol descriptor for FormatBindable;
                v102 = v384;
                v143 = v395;
                v103 = v387;
                goto LABEL_93;
              case 0xCu:
                v251 = v89;
                *(v406 + 10) = *(v88 + 90);
                v252 = v88[4];
                v253 = v88[5];
                v254 = v88[2];
                v404 = v88[3];
                v405 = v252;
                v406[0] = v253;
                v255 = v88[1];
                v402 = *v88;
                *v403 = v255;
                *&v403[16] = v254;
                WORD4(v406[1]) &= 0xCFFFu;
                v256 = BYTE8(v407);
                sub_1D62B7260(&v402, &v397);
                if ((v256 & 0x80) == 0)
                {
                  v89 = v251;
LABEL_141:
                  v90 = v413;
                  v143 = v395;
                  break;
                }

                LODWORD(v386) = v256 & 0x3F;
                LOBYTE(v397) = v256 & 0x3F;
                v89 = v251;
                sub_1D5B49474(0, &qword_1EDF329A8, v251);
                if (swift_dynamicCast())
                {
                  v394 = v4;
                  v304 = *&v403[8];
                  v303 = *&v403[16];
                  __swift_project_boxed_opaque_existential_1(&v402, *&v403[8]);
                  v305 = v394;
                  (*(v303 + 8))(v379, v391, v304, v303);
                  if (v305)
                  {
                    goto LABEL_167;
                  }

                  __swift_destroy_boxed_opaque_existential_1(&v402);
                  v89 = &protocol descriptor for FormatBindable;
                  v4 = 0;
                }

                else
                {
                  memset(v403, 0, 24);
                  v402 = 0u;
                  sub_1D5BFB774(&v402, &qword_1EDF329A0, &qword_1EDF329A8, v251);
                }

                LOBYTE(v397) = v386;
                if (!swift_dynamicCast())
                {
                  memset(v403, 0, 24);
                  v402 = 0u;
                  sub_1D5BFB774(&v402, &qword_1EDF329A0, &qword_1EDF329A8, v89);
                  goto LABEL_141;
                }

                v309 = *&v403[8];
                v310 = *&v403[16];
                __swift_project_boxed_opaque_existential_1(&v402, *&v403[8]);
                (*(v310 + 8))(v379, v391, v309, v310);
                if (v4)
                {
LABEL_167:
                  __swift_destroy_boxed_opaque_existential_1(&v402);
                  sub_1D60B2A74(&v407);
                  return;
                }

                __swift_destroy_boxed_opaque_existential_1(&v402);
                v89 = &protocol descriptor for FormatBindable;
                v143 = v395;
                v4 = 0;
LABEL_93:
                v90 = v413;
                break;
              default:
                goto LABEL_27;
            }
          }
        }

        else
        {
LABEL_27:
          *(v406 + 10) = *(v88 + 90);
          v139 = v88[4];
          v140 = v88[5];
          v141 = v88[2];
          v404 = v88[3];
          v405 = v139;
          v406[0] = v140;
          v142 = v88[1];
          v402 = *v88;
          *v403 = v142;
          *&v403[16] = v141;
          WORD4(v406[1]) &= 0xCFFFu;
          sub_1D62B7260(&v402, &v397);
          v143 = v395;
        }

        v171 = v393;
        if (v393 >> 14)
        {
          if (v393 >> 14 == 1)
          {
            *&v402 = v102;
            *(&v402 + 1) = v103;
            *v403 = v390;
            LOBYTE(v397) = 5;
            sub_1D5E1DA6C(v102, v103, v390, v389, *(&v389 + 1), v143, v393 & 0xFFFFCFFF);
            v172 = sub_1D703E0C8(&v402, &v397);
            if (v4)
            {
              goto LABEL_163;
            }

            v173 = v172;
            v174 = v391;
            v175 = v103;
            v176 = v371;
            v177 = v102;
            v387 = v175;
            FormatOptionCollection.subscript.getter(v102, v175, v371);
            if ((*v382)(v176, 1, v392) == 1)
            {

              sub_1D5B6EF64(v176, &qword_1EDF337F0, type metadata accessor for FormatOption);
              if ((*(v174 + 48) & 1) == 0)
              {
                goto LABEL_155;
              }

              v178 = 1;
              v179 = v366;
              goto LABEL_82;
            }

            v219 = v176;
            v220 = v362;
            sub_1D5D5E33C(v219, v362, type metadata accessor for FormatOption);
            *&v402 = *(v220 + 16);

            FormatOptionValue.type.getter(v221, &v397);
            if (sub_1D6183C84(v397, v173))
            {
              swift_bridgeObjectRelease_n();
              v222 = v220;
              v179 = v366;
LABEL_81:
              sub_1D5D5E33C(v222, v179, type metadata accessor for FormatOption);
              v178 = 0;
LABEL_82:
              (*v381)(v179, v178, 1, v392);
              sub_1D5B6EF64(v179, &qword_1EDF337F0, type metadata accessor for FormatOption);
              sub_1D60B2A74(&v407);
              v89 = &protocol descriptor for FormatBindable;
              v4 = 0;
              v90 = v413;
              goto LABEL_4;
            }

            type metadata accessor for FormatDerivedDataError(0);
            sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
            swift_allocError();
            v321 = v220;
            v329 = v328;
            v331 = *v321;
            v330 = v321[1];
            *&v402 = v321[2];

            FormatOptionValue.type.getter(v332, &v397);
            v333 = v397;
            *v329 = v331;
            *(v329 + 8) = v330;
            *(v329 + 16) = v333;
            *(v329 + 24) = v173;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
LABEL_159:

            sub_1D62B51D0(v321, type metadata accessor for FormatOption);
            goto LABEL_163;
          }

          v180 = v4;
          v181 = v103;
          v182 = v390;
          v385 = v88;
          if ((((v393 & 0xF00) >> 7) & 0xFFFFFFFE | (v393 >> 3) & 1) - 3 >= 2)
          {
            v394 = v180;
          }

          else
          {
            *&v402 = v102;
            *(&v402 + 1) = v181;
            *v403 = v390;
            LOBYTE(v397) = 5;
            sub_1D5E1DA6C(v102, v181, v390, v389, *(&v389 + 1), v143, v393 & 0xFFFFCFFF);

            v183 = sub_1D703E0C8(&v402, &v397);
            if (v180)
            {
              goto LABEL_154;
            }

            v184 = v356;
            v185 = v102;
            sub_1D6BEBFEC(v102, v181, v183, 1, v356);
            v394 = 0;
            v186 = v390;

            v187 = v184;
            v182 = v186;
            sub_1D5B6EF64(v187, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v102 = v185;
            v143 = v395;
            v171 = v393;
          }

          v393 = v171 & 0xFFF;
          *&v402 = v102;
          *(&v402 + 1) = v181;
          v188 = v389;
          *v403 = v182;
          *&v403[8] = v389;
          *&v403[24] = v143;
          LOWORD(v404) = v171 & 0xFFF;
          v189 = v182;
          v190 = v379;
          v191 = v391;
          v192 = v394;
          FormatTextNodeBinding.bindChildren(binder:context:)(v379, v391);
          if (v192)
          {
            goto LABEL_163;
          }

          *&v397 = v102;
          *(&v397 + 1) = v181;
          v398 = v189;
          v399 = v188;
          v400 = v395;
          v401 = v393;
          v193 = v190;
          v194 = v191;
LABEL_73:
          FormatTextNodeBinding.bind(binder:context:)(v193, v194);
          v4 = 0;
          sub_1D60B2A74(&v407);
          v89 = &protocol descriptor for FormatBindable;
          v90 = v413;
          v88 = v385;
          goto LABEL_4;
        }
      }

      else
      {
        v387 = v411;
        if (v410 >> 14)
        {
          v384 = *(&v410 + 1);
          v386 = v407;
          if (v105 == 1)
          {
            v394 = v4;
            v397 = v407;
            v398 = v408;
            v396 = 5;
            v127 = v407;
            v128 = v408;
            v129 = v409;
            v130 = *(&v408 + 1);
            v131 = v410;
            sub_1D60B2AC8(&v407, &v402);
            sub_1D5E1DA6C(v127, *(&v127 + 1), v128, v130, v129, v99, v131);
            v132 = v394;
            v133 = sub_1D703E0C8(&v397, &v396);
            v394 = v132;
            if (v132)
            {
              goto LABEL_156;
            }

            v134 = v133;
            v135 = v391;
            v136 = v374;
            v378 = *(&v127 + 1);
            FormatOptionCollection.subscript.getter(v127, *(&v127 + 1), v374);
            if ((*v382)(v136, 1, v392) == 1)
            {

              sub_1D5B6EF64(v136, &qword_1EDF337F0, type metadata accessor for FormatOption);
              if ((*(v135 + 48) & 1) == 0)
              {
LABEL_152:
                type metadata accessor for FormatLayoutError(0);
                sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
                swift_allocError();
                v312 = v378;
                *v313 = v386;
                v313[1] = v312;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();

                goto LABEL_163;
              }

              v137 = v370;
              (*v381)(v370, 1, 1, v392);
              v138 = v137;
            }

            else
            {
              v197 = v136;
              v167 = v358;
              sub_1D5D5E33C(v197, v358, type metadata accessor for FormatOption);
              *&v402 = v167[2];

              FormatOptionValue.type.getter(v198, &v397);
              if ((sub_1D6183C84(v397, v134) & 1) == 0)
              {
LABEL_153:
                type metadata accessor for FormatDerivedDataError(0);
                sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
                swift_allocError();
                v315 = v314;
                v316 = *v167;
                v317 = v167[1];
                *&v402 = v167[2];

                FormatOptionValue.type.getter(v318, &v397);
                v319 = v397;
                *v315 = v316;
                *(v315 + 8) = v317;
                *(v315 + 16) = v319;
                *(v315 + 24) = v134;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();

                sub_1D62B51D0(v167, type metadata accessor for FormatOption);
                goto LABEL_163;
              }

              swift_bridgeObjectRelease_n();
              v199 = v370;
              sub_1D5D5E33C(v167, v370, type metadata accessor for FormatOption);
              (*v381)(v199, 0, 1, v392);
              v138 = v199;
            }

            sub_1D5B6EF64(v138, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v90 = v413;
            v4 = v394;
            v159 = v395;
            v89 = &protocol descriptor for FormatBindable;
            v103 = v387;
            v102 = v384;
          }

          else
          {
            v364 = v410 & 0x3FFF;
            v375 = v409;
            v376 = *(&v408 + 1);
            v377 = v408;
            v380 = *(&v409 + 1);
            switch((v410 >> 7) & 0x7E | (v410 >> 3) & 1)
            {
              case 2u:
                v394 = v4;
                *(v406 + 10) = *(v88 + 90);
                v280 = v88[4];
                v281 = v88[5];
                v282 = v88[2];
                v404 = v88[3];
                v405 = v280;
                v406[0] = v281;
                v283 = v88[1];
                v402 = *v88;
                *v403 = v283;
                *&v403[16] = v282;
                WORD4(v406[1]) &= 0xCFFFu;
                v284 = v407;
                v285 = v408;
                v286 = *(&v409 + 1);
                v287 = v410;
                sub_1D62B7260(&v402, &v397);
                v288 = v287 & 0xF7;
                v402 = v284;
                v164 = *(&v284 + 1);
                *v403 = v285;
                *&v403[8] = v376;
                *&v403[16] = v375;
                *&v403[24] = v286;
                LOBYTE(v404) = v288;
                v165 = v391;
                v289 = v394;
                FormatGroupBinding.Text.bind(binder:context:)(v379, v391);
                v4 = v289;
                if (v289)
                {
                  goto LABEL_163;
                }

                v89 = &protocol descriptor for FormatBindable;
                goto LABEL_38;
              case 3u:
              case 4u:
                v397 = v407;
                v398 = v408;
                v396 = 5;
                v378 = *(&v407 + 1);
                v243 = v407;
                v244 = v408;
                v349 = v410;
                sub_1D60B2AC8(&v407, &v402);
                v245 = v99;
                v164 = v378;
                sub_1D5E1DA6C(v243, v378, v244, v376, v375, v245, v349);

                v246 = sub_1D703E0C8(&v397, &v396);
                if (v4)
                {
                  goto LABEL_161;
                }

                v247 = v352;
                sub_1D6BEBFEC(v386, v164, v246, 1, v352);
                v248 = v377;

                sub_1D5B6EF64(v247, &qword_1EDF337F0, type metadata accessor for FormatOption);
                *&v402 = v386;
                *(&v402 + 1) = v164;
                *v403 = v248;
                LOBYTE(v397) = 5;
                sub_1D5E1DA6C(v386, v164, v248, v376, v375, v380, v349);

                v249 = sub_1D703E0C8(&v402, &v397);
                v250 = v350;
                sub_1D6BEBFEC(v386, v164, v249, 1, v350);

                sub_1D5B6EF64(v250, &qword_1EDF337F0, type metadata accessor for FormatOption);
                v165 = v391;
                v90 = v413;
                v89 = &protocol descriptor for FormatBindable;
                v4 = 0;
                goto LABEL_38;
              case 0xCu:
                v269 = v89;
                *(v406 + 10) = *(v88 + 90);
                v270 = v88[4];
                v271 = v88[5];
                v272 = v88[2];
                v404 = v88[3];
                v405 = v270;
                v406[0] = v271;
                v273 = v88[1];
                v402 = *v88;
                *v403 = v273;
                *&v403[16] = v272;
                WORD4(v406[1]) &= 0xCFFFu;
                v274 = *(&v407 + 1);
                sub_1D62B7260(&v402, &v397);
                v164 = v274;
                if ((v274 & 0x80) != 0)
                {
                  LOBYTE(v397) = v274 & 0x3F;
                  v306 = v269;
                  sub_1D5B49474(0, &qword_1EDF329A8, v269);
                  if (swift_dynamicCast())
                  {
                    v307 = *&v403[8];
                    v308 = *&v403[16];
                    __swift_project_boxed_opaque_existential_1(&v402, *&v403[8]);
                    (*(v308 + 8))(v379, v391, v307, v308);
                    if (v4)
                    {
                      goto LABEL_168;
                    }

                    __swift_destroy_boxed_opaque_existential_1(&v402);
                    v164 = v274;
                    v89 = v269;
                    v165 = v391;
                  }

                  else
                  {
                    memset(v403, 0, 24);
                    v402 = 0u;
                    sub_1D5BFB774(&v402, &qword_1EDF329A0, &qword_1EDF329A8, v269);
                    v165 = v391;
                    v164 = v274;
                    v89 = v306;
                  }

                  v90 = v413;
                }

                else
                {
                  v89 = v269;
                  v165 = v391;
                }

LABEL_38:
                *&v402 = v386;
                *(&v402 + 1) = v164;
                *v403 = v377;
                *&v403[8] = v376;
                *&v403[16] = v375;
                *&v403[24] = v380;
                LOWORD(v404) = v364;
                FormatTextNodeBinding.bindChildren(binder:context:)(v379, v165);
                if (v4)
                {
                  goto LABEL_163;
                }

                v102 = v384;
                v159 = v395;
                v103 = v387;
                break;
              default:
                *(v406 + 10) = *(v88 + 90);
                v160 = v88[4];
                v161 = v88[5];
                v162 = v88[2];
                v404 = v88[3];
                v405 = v160;
                v406[0] = v161;
                v163 = v88[1];
                v402 = *v88;
                *v403 = v163;
                *&v403[16] = v162;
                WORD4(v406[1]) &= 0xCFFFu;
                v164 = *(&v407 + 1);
                sub_1D62B7260(&v402, &v397);
                v165 = v391;
                goto LABEL_38;
            }
          }
        }

        else
        {
          *(v406 + 10) = *(v88 + 90);
          v155 = v88[4];
          v156 = v88[5];
          v157 = v88[2];
          v404 = v88[3];
          v405 = v155;
          v406[0] = v156;
          v158 = v88[1];
          v402 = *v88;
          *v403 = v158;
          *&v403[16] = v157;
          WORD4(v406[1]) &= 0xCFFFu;
          v159 = *&v412[1];
          sub_1D62B7260(&v402, &v397);
        }

        v200 = v393;
        if (v393 >> 14)
        {
          if (v393 >> 14 == 1)
          {
            *&v402 = v102;
            *(&v402 + 1) = v103;
            *v403 = v390;
            LOBYTE(v397) = 5;
            sub_1D5E1DA6C(v102, v103, v390, v389, *(&v389 + 1), v159, v393 & 0xFFFFCFFF);
            v201 = sub_1D703E0C8(&v402, &v397);
            if (v4)
            {
              goto LABEL_163;
            }

            v202 = v201;
            v203 = v391;
            v204 = v103;
            v205 = v367;
            v177 = v102;
            FormatOptionCollection.subscript.getter(v102, v204, v367);
            if ((*v382)(v205, 1, v392) == 1)
            {

              sub_1D5B6EF64(v205, &qword_1EDF337F0, type metadata accessor for FormatOption);
              if ((*(v203 + 48) & 1) == 0)
              {
LABEL_155:
                type metadata accessor for FormatLayoutError(0);
                sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
                swift_allocError();
                *v320 = v177;
                v320[1] = v387;
                swift_storeEnumTagMultiPayload();
                swift_willThrow();

                goto LABEL_163;
              }

              v178 = 1;
              v179 = v365;
              goto LABEL_82;
            }

            v223 = v355;
            sub_1D5D5E33C(v205, v355, type metadata accessor for FormatOption);
            *&v402 = v223[2];

            FormatOptionValue.type.getter(v224, &v397);
            if ((sub_1D6183C84(v397, v202) & 1) == 0)
            {
              type metadata accessor for FormatDerivedDataError(0);
              sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
              swift_allocError();
              v335 = v334;
              v337 = *v223;
              v336 = v223[1];
              *&v402 = v223[2];

              FormatOptionValue.type.getter(v338, &v397);
              v339 = v397;
              *v335 = v337;
              *(v335 + 8) = v336;
              *(v335 + 16) = v339;
              *(v335 + 24) = v202;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              sub_1D62B51D0(v223, type metadata accessor for FormatOption);
              goto LABEL_163;
            }

            swift_bridgeObjectRelease_n();
            v222 = v223;
            v179 = v365;
            goto LABEL_81;
          }

          v206 = v4;
          v207 = v103;
          v208 = v390;
          v385 = v88;
          if ((((v393 & 0xF00) >> 7) & 0xFFFFFFFE | (v393 >> 3) & 1) - 3 >= 2)
          {
            v213 = v206;
          }

          else
          {
            *&v402 = v102;
            *(&v402 + 1) = v207;
            *v403 = v390;
            LOBYTE(v397) = 5;
            sub_1D5E1DA6C(v102, v207, v390, v389, *(&v389 + 1), v159, v393 & 0xFFFFCFFF);

            v209 = sub_1D703E0C8(&v402, &v397);
            if (v206)
            {
LABEL_154:

              sub_1D60B2A74(&v407);
              return;
            }

            v210 = v354;
            v211 = v102;
            sub_1D6BEBFEC(v102, v207, v209, 1, v354);
            v394 = 0;
            v212 = v390;

            sub_1D5B6EF64(v210, &qword_1EDF337F0, type metadata accessor for FormatOption);
            v213 = v394;
            v159 = v395;
            v214 = v211;
            v208 = v212;
            v102 = v214;
            v200 = v393;
          }

          LODWORD(v394) = v200 & 0xFFF;
          *&v402 = v102;
          *(&v402 + 1) = v207;
          v215 = v389;
          *v403 = v208;
          *&v403[8] = v389;
          *&v403[24] = v159;
          LOWORD(v404) = v200 & 0xFFF;
          v216 = v208;
          v217 = v379;
          v218 = v391;
          FormatTextNodeBinding.bindChildren(binder:context:)(v379, v391);
          if (v213)
          {
            goto LABEL_163;
          }

          *&v397 = v102;
          *(&v397 + 1) = v207;
          v398 = v216;
          v399 = v215;
          v400 = v395;
          v401 = v394;
          v193 = v217;
          v194 = v218;
          goto LABEL_73;
        }
      }

      goto LABEL_3;
    }

    if (!(v410 >> 14))
    {
      goto LABEL_4;
    }

    if (v410 >> 14 == 1)
    {
      v119 = v90;
      v397 = v407;
      v398 = v408;
      v396 = 5;
      v120 = v407;
      sub_1D60B2AC8(&v407, &v402);
      sub_1D60B2AC8(&v407, &v402);
      v121 = sub_1D703E0C8(&v397, &v396);
      if (v4)
      {
        goto LABEL_163;
      }

      v122 = v121;
      v394 = 0;
      v413 = v119;
      v123 = v391;
      v124 = v372;
      v378 = *(&v120 + 1);
      v386 = v120;
      FormatOptionCollection.subscript.getter(v120, *(&v120 + 1), v372);
      if ((*v382)(v124, 1, v392) == 1)
      {

        sub_1D5B6EF64(v124, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if ((*(v123 + 48) & 1) == 0)
        {
          goto LABEL_152;
        }

        v125 = 1;
        v126 = v368;
      }

      else
      {
        v195 = v363;
        sub_1D5D5E33C(v124, v363, type metadata accessor for FormatOption);
        *&v402 = *(v195 + 16);

        FormatOptionValue.type.getter(v196, &v397);
        if ((sub_1D6183C84(v397, v122) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError(0);
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v321 = v195;
          v323 = v322;
          v325 = *v321;
          v324 = v321[1];
          *&v402 = v321[2];

          FormatOptionValue.type.getter(v326, &v397);
          v327 = v397;
          *v323 = v325;
          *(v323 + 8) = v324;
          *(v323 + 16) = v327;
          *(v323 + 24) = v122;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_159;
        }

        swift_bridgeObjectRelease_n();
        v126 = v368;
        sub_1D5D5E33C(v195, v368, type metadata accessor for FormatOption);
        v125 = 0;
      }

      (*v381)(v126, v125, 1, v392);
      sub_1D5B6EF64(v126, &qword_1EDF337F0, type metadata accessor for FormatOption);
      sub_1D60B2A74(&v407);
      v90 = v413;
      v4 = v394;
      v89 = &protocol descriptor for FormatBindable;
      goto LABEL_4;
    }

    v144 = (v410 >> 7) & 0x7E | (v410 >> 3) & 1;
    if (v144 <= 7)
    {
      break;
    }

    if (v144 <= 11)
    {
      if ((v144 - 9) >= 3)
      {
        goto LABEL_90;
      }

      goto LABEL_111;
    }

    if (v144 != 12)
    {
      if (v144 != 13)
      {
        goto LABEL_90;
      }

      goto LABEL_111;
    }

    v275 = BYTE8(v407);
    if ((BYTE8(v407) & 0x80) != 0)
    {
      v276 = v4;
      v277 = v90;
      LOBYTE(v397) = BYTE8(v407) & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8, v89);
      if (swift_dynamicCast())
      {
        v278 = *&v403[8];
        v279 = *&v403[16];
        __swift_project_boxed_opaque_existential_1(&v402, *&v403[8]);
        (*(v279 + 8))(v379, v391, v278, v279);
        if (v276)
        {
          __swift_destroy_boxed_opaque_existential_1(&v402);
LABEL_156:
          sub_1D60B2A74(&v407);
          return;
        }

        __swift_destroy_boxed_opaque_existential_1(&v402);
        v89 = &protocol descriptor for FormatBindable;
      }

      else
      {
        memset(v403, 0, 24);
        v402 = 0u;
        sub_1D5BFB774(&v402, &qword_1EDF329A0, &qword_1EDF329A8, v89);
      }

      v90 = v277;
      v4 = v276;
      v298 = v275 >> 6;
      if (!(v275 >> 6))
      {
        goto LABEL_3;
      }
    }

    else
    {
      v298 = BYTE8(v407) >> 6;
      if (!(BYTE8(v407) >> 6))
      {
        goto LABEL_3;
      }
    }

    if (v298 == 1)
    {
      goto LABEL_3;
    }

    LOBYTE(v397) = v275 & 0x3F;
    sub_1D5B49474(0, &qword_1EDF329A8, v89);
    if ((swift_dynamicCast() & 1) == 0)
    {
      memset(v403, 0, 24);
      v402 = 0u;
      sub_1D5BFB774(&v402, &qword_1EDF329A0, &qword_1EDF329A8, v89);
      goto LABEL_3;
    }

    v299 = v4;
    v300 = v90;
    v301 = *&v403[8];
    v302 = *&v403[16];
    __swift_project_boxed_opaque_existential_1(&v402, *&v403[8]);
    (*(v302 + 8))(v379, v391, v301, v302);
    if (v299)
    {
      goto LABEL_167;
    }

    __swift_destroy_boxed_opaque_existential_1(&v402);
    sub_1D60B2A74(&v407);
    v89 = &protocol descriptor for FormatBindable;
    v90 = v300;
    v4 = 0;
LABEL_4:
    v88 += 7;
    if (!--v90)
    {
      return;
    }
  }

  if (v144 > 2)
  {
    if ((v144 - 5) >= 3)
    {
      v380 = *(&v409 + 1);
      v349 = v410;
      v376 = *(&v408 + 1);
      v385 = v88;
      v145 = v409;
      v397 = v407;
      v398 = v408;
      v396 = 5;
      v146 = v407;
      v147 = v408;
      sub_1D60B2AC8(&v407, &v402);
      sub_1D60B2AC8(&v407, &v402);

      v377 = v147;

      v148 = sub_1D703E0C8(&v397, &v396);
      if (v4)
      {
        goto LABEL_161;
      }

      v149 = v148;
      v394 = 0;
      v150 = v90;
      v151 = v391;
      v378 = *(&v146 + 1);
      v386 = v146;
      FormatOptionCollection.subscript.getter(v146, *(&v146 + 1), v388);
      v152 = v388;
      if ((*v382)(v388, 1, v392) == 1)
      {

        sub_1D5B6EF64(v152, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v89 = &protocol descriptor for FormatBindable;
        if ((*(v151 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          v346 = v378;
          *v347 = v386;
          v347[1] = v346;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_162;
        }

        v153 = 1;
        v154 = v351;
        v90 = v150;
      }

      else
      {
        v290 = v152;
        v291 = v353;
        sub_1D5D5E33C(v290, v353, type metadata accessor for FormatOption);
        *&v402 = v291[2];

        FormatOptionValue.type.getter(v292, &v397);
        v293 = v149;
        v89 = &protocol descriptor for FormatBindable;
        if ((sub_1D6183C84(v397, v149) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError(0);
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v341 = v340;
          v321 = v353;
          v342 = *v353;
          v343 = v353[1];
          *&v402 = v353[2];

          FormatOptionValue.type.getter(v344, &v397);
          v345 = v397;
          *v341 = v342;
          *(v341 + 8) = v343;
          *(v341 + 16) = v345;
          *(v341 + 24) = v293;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          goto LABEL_159;
        }

        v90 = v150;

        swift_bridgeObjectRelease_n();
        v154 = v351;
        sub_1D5D5E33C(v353, v351, type metadata accessor for FormatOption);
        v153 = 0;
      }

      (*v381)(v154, v153, 1, v392);
      sub_1D5B6EF64(v154, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v4 = v394;
      v96 = v377;
      v95 = v378;
      v98 = v145;
      v88 = v385;
      v94 = v386;
      v97 = v376;
      v101 = v349;
      v99 = v380;
    }

LABEL_111:
    if (v144 > 4)
    {
      goto LABEL_3;
    }

    if ((v144 - 3) < 2)
    {
      v413 = v90;
      *&v397 = v94;
      *(&v397 + 1) = v95;
      v398 = v96;
      v396 = 5;
      v294 = v94;
      v295 = v95;
      sub_1D60B2AC8(&v407, &v402);

      v296 = sub_1D703E0C8(&v397, &v396);
      if (!v4)
      {
        v297 = v359;
        sub_1D6BEBFEC(v294, v295, v296, 1, v359);

        sub_1D5B6EF64(v297, &qword_1EDF337F0, type metadata accessor for FormatOption);
        sub_1D60B2A74(&v407);
        v89 = &protocol descriptor for FormatBindable;
        v90 = v413;
        v4 = 0;
        goto LABEL_4;
      }

LABEL_161:

LABEL_162:

      goto LABEL_163;
    }

    if (v144 == 1)
    {
      goto LABEL_3;
    }

LABEL_122:
    *&v402 = v94;
    *(&v402 + 1) = v95;
    *v403 = v96;
    *&v403[8] = v97;
    *&v403[16] = v98;
    *&v403[24] = v99;
    LOBYTE(v404) = v101 & 0xF7;
    FormatGroupBinding.Text.bind(binder:context:)(v379, v391);
    if (v4)
    {
      goto LABEL_163;
    }

    sub_1D60B2A74(&v407);
    v89 = &protocol descriptor for FormatBindable;
    goto LABEL_4;
  }

  if (!v144)
  {
LABEL_90:
    sub_1D5E1DA6C(v407, *(&v407 + 1), v408, *(&v408 + 1), v409, *(&v409 + 1), v410);
LABEL_3:
    sub_1D60B2A74(&v407);
    goto LABEL_4;
  }

  if (v144 == 1)
  {
    goto LABEL_111;
  }

  v385 = v88;
  v378 = *(&v407 + 1);
  v386 = v407;
  v226 = *(&v408 + 1);
  v225 = v408;
  v380 = *(&v409 + 1);
  v227 = v409;
  v228 = v410;
  sub_1D5E1DA6C(v407, *(&v407 + 1), v408, *(&v408 + 1), v409, *(&v409 + 1), v410);
  v101 = v228;
  v229 = v228 >> 4;
  if (((1 << v229) & 0x1EF7) != 0)
  {
    v95 = v378;
    v96 = v225;
    v99 = v380;
    v98 = v227;
    v88 = v385;
    v94 = v386;
    v97 = v226;
    goto LABEL_122;
  }

  v95 = v378;
  v94 = v386;
  v96 = v225;
  if (v229 == 3)
  {
    *&v402 = v386;
    *(&v402 + 1) = v378;
    *v403 = v225;
    sub_1D62B416C(v391);
    if (v4)
    {
      goto LABEL_163;
    }

    goto LABEL_144;
  }

  if ((v378 & 0x80) == 0)
  {
    v98 = v227;
    v97 = v226;
    v99 = v380;
    v88 = v385;
    goto LABEL_122;
  }

  LOBYTE(v397) = v378 & 0x3F;
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (!swift_dynamicCast())
  {
    memset(v403, 0, 24);
    v402 = 0u;
    sub_1D5BFB774(&v402, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    goto LABEL_144;
  }

  v311 = *&v403[8];
  v395 = *&v403[16];
  __swift_project_boxed_opaque_existential_1(&v402, *&v403[8]);
  (*(v395 + 8))(v379, v391, v311);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(&v402);
LABEL_144:
    v95 = v378;
    v96 = v225;
    v99 = v380;
    v98 = v227;
    v88 = v385;
    v94 = v386;
    v97 = v226;
    v101 = v228;
    goto LABEL_122;
  }

LABEL_168:
  __swift_destroy_boxed_opaque_existential_1(&v402);
LABEL_163:
  sub_1D60B2A74(&v407);
}

uint64_t sub_1D62125B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = *(a3 + 16);
  if (!v51)
  {
    return result;
  }

  v6 = result;
  v7 = 0;
  v52 = a3 + 32;
  while (2)
  {
    v8 = v52 + 40 * v7;
    v10 = *v8;
    v9 = *(v8 + 8);
    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    ++v7;
    v55 = v12;
    v53 = *(v8 + 32);
    v54 = v9;
    switch(v53)
    {
      case 1u:
        v25 = *(v10 + 16);

        if (!v25)
        {
          goto LABEL_80;
        }

        v26 = (v10 + 40);
        while (1)
        {
          if ((*v26 & 1) == 0)
          {
            v27 = *(v26 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v6, a2);
            sub_1D62B72BC(v27, 0);

            if (v4)
            {
              break;
            }
          }

          v26 += 16;
          if (!--v25)
          {
            goto LABEL_80;
          }
        }

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 1;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 2u:
        v28 = *(v10 + 16);

        if (!v28)
        {
          goto LABEL_80;
        }

        v29 = (v10 + 40);
        while (2)
        {
          if (*v29)
          {
            goto LABEL_42;
          }

          v30 = *(v29 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v30, 0);

LABEL_42:
            v29 += 16;
            if (!--v28)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v30, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 2;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 3u:
        v16 = *(v10 + 16);

        if (!v16)
        {
          goto LABEL_80;
        }

        v17 = (v10 + 40);
        while (2)
        {
          if (*v17)
          {
            goto LABEL_16;
          }

          v18 = *(v17 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v18, 0);

LABEL_16:
            v17 += 16;
            if (!--v16)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v18, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 3;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 4u:
        v34 = *(v10 + 16);

        if (!v34)
        {
          goto LABEL_80;
        }

        v35 = (v10 + 40);
        while (2)
        {
          if (*v35)
          {
            goto LABEL_55;
          }

          v36 = *(v35 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v36, 0);

LABEL_55:
            v35 += 16;
            if (!--v34)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v36, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 4;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 5u:
        v37 = *(v10 + 16);

        if (!v37)
        {
          goto LABEL_80;
        }

        v38 = (v10 + 40);
        while (2)
        {
          if (*v38)
          {
            goto LABEL_62;
          }

          v39 = *(v38 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v39, 0);

LABEL_62:
            v38 += 16;
            if (!--v37)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v39, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 5;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 6u:
        v31 = *(v10 + 16);

        if (!v31)
        {
          goto LABEL_80;
        }

        v32 = (v10 + 40);
        while (2)
        {
          if (*v32)
          {
            goto LABEL_49;
          }

          v33 = *(v32 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v33, 0);

LABEL_49:
            v32 += 16;
            if (!--v31)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v33, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 6;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 7u:
        v43 = *(v10 + 16);

        if (!v43)
        {
          goto LABEL_80;
        }

        v44 = (v10 + 40);
        while (2)
        {
          if (*v44)
          {
            goto LABEL_76;
          }

          v45 = *(v44 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v45, 0);

LABEL_76:
            v44 += 16;
            if (!--v43)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v45, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 7;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 8u:
        v22 = *(v10 + 16);

        if (!v22)
        {
          goto LABEL_80;
        }

        v23 = (v10 + 40);
        while (2)
        {
          if (*v23)
          {
            goto LABEL_29;
          }

          v24 = *(v23 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v24, 0);

LABEL_29:
            v23 += 16;
            if (!--v22)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v24, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 8;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 9u:
        v40 = *(v10 + 16);

        if (!v40)
        {
          goto LABEL_80;
        }

        v41 = (v10 + 40);
        while (2)
        {
          if (*v41)
          {
            goto LABEL_69;
          }

          v42 = *(v41 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v42, 0);

LABEL_69:
            v41 += 16;
            if (!--v40)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v42, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 9;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 0xAu:
        v13 = *(v10 + 16);

        if (!v13)
        {
          goto LABEL_80;
        }

        v14 = (v10 + 40);
        while (2)
        {
          if (*v14)
          {
            goto LABEL_9;
          }

          v15 = *(v14 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v15, 0);

LABEL_9:
            v14 += 16;
            if (!--v13)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v15, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 10;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 0xBu:
        v19 = *(v10 + 16);

        if (!v19)
        {
          goto LABEL_80;
        }

        v20 = (v10 + 40);
        while (2)
        {
          if (*v20)
          {
            goto LABEL_23;
          }

          v21 = *(v20 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v6, a2);
          if (!v4)
          {
            sub_1D62B72BC(v21, 0);

LABEL_23:
            v20 += 16;
            if (!--v19)
            {
              goto LABEL_80;
            }

            continue;
          }

          break;
        }

        sub_1D62B72BC(v21, 0);

        v46 = v10;
        v47 = v54;
        v48 = v55;
        v49 = v11;
        v50 = 11;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
      case 0xCu:
        goto LABEL_81;
      default:

        sub_1D620B270(v6, a2, v10);
        if (!v4)
        {
          sub_1D620B270(v6, a2, v9);
          sub_1D620B270(v6, a2, v12);
          sub_1D620B270(v6, a2, v11);
          v4 = 0;
LABEL_80:
          result = sub_1D5ECEF00(v10, v54, v55, v11, v53);
LABEL_81:
          if (v7 == v51)
          {
            return result;
          }

          continue;
        }

        v46 = v10;
        v47 = v9;
        v48 = v12;
        v49 = v11;
        v50 = 0;
        return sub_1D5ECEF00(v46, v47, v48, v49, v50);
    }
  }
}

void sub_1D6212DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v7 = a3 + 32;
    while (1)
    {
      v7 += 8;

      FormatColor.bind(binder:context:)(a1, a2);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_1D6212E6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v13 = result;
  v5 = *(a3 + 16);
  if (v5)
  {
    sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
    v8 = v7;
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    v9 = (a3 + 48);
    do
    {
      v19 = *v9;

      swift_bridgeObjectRetain_n();
      if (swift_dynamicCast())
      {
        v10 = v8;
        v15 = v4;
        v12 = *(&v17 + 1);
        v11 = v18;
        __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
        (*(v11 + 8))(v13, a2, v12, v11);
        v4 = v15;

        result = __swift_destroy_boxed_opaque_existential_1(&v16);
        if (v15)
        {
          return result;
        }

        v8 = v10;
      }

      else
      {

        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        result = sub_1D5BFB774(&v16, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      v9 += 3;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D6213004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatOption(0) - 8;
  MEMORY[0x1EEE9AC00](v7, v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_1D62B50EC(v13, v11, type metadata accessor for FormatOption);
      v15[1] = *(v11 + 2);

      FormatOptionValue.bind(binder:context:)(a1, a2);
      if (v3)
      {
        break;
      }

      sub_1D62B51D0(v11, type metadata accessor for FormatOption);
      v13 += v14;
      if (!--v12)
      {
        return;
      }
    }

    sub_1D62B51D0(v11, type metadata accessor for FormatOption);
  }
}

void sub_1D6213184(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = *(a3 + 16);
  if (!v41)
  {
    return;
  }

  v7 = 0;
  v42 = a3 + 32;
  while (1)
  {
    v8 = v42 + 56 * v7;
    v9 = *v8;
    v10 = *(v8 + 8);
    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    v14 = *(v8 + 32);
    v13 = *(v8 + 40);
    v15 = *(v8 + 48);
    if (v15 <= 2)
    {
      break;
    }

    if (v15 == 3)
    {
      v46 = *(v8 + 24);
      v43 = *(v8 + 40);
      sub_1D62B7654(*v8, *(v8 + 8), *(v8 + 16), v11, v14, v13, 3u);

      sub_1D620B270(result, a2, v9);
      if (v4)
      {

        v32 = v9;
        v33 = v10;
        v34 = v12;
        v35 = v46;
        v36 = v14;
        v37 = v43;
        v38 = 3;
        goto LABEL_49;
      }

      sub_1D620B270(result, a2, v10);
      v45 = v14;
      v39 = v10;

      sub_1D620B270(result, a2, v12);
      sub_1D620B270(result, a2, v46);
      v20 = 0;
LABEL_26:
      v10 = v39;

      v21 = v43;
LABEL_44:
      sub_1D62B772C(v9, v10, v12, v46, v45, v21, v15);
      v4 = v20;
      goto LABEL_45;
    }

    if (v15 == 4)
    {
      v46 = *(v8 + 24);
      v44 = *(v8 + 40);
      sub_1D62B7654(*v8, *(v8 + 8), *(v8 + 16), v11, v14, v13, 4u);

      sub_1D620B270(result, a2, v9);
      if (v4)
      {

        v32 = v9;
        v33 = v10;
        v34 = v12;
        v35 = v46;
        v36 = v14;
        v37 = v44;
        v38 = 4;
        goto LABEL_49;
      }

      sub_1D620B270(result, a2, v10);

      sub_1D620B270(result, a2, v12);
      sub_1D620B270(result, a2, v46);
      v45 = v14;
      sub_1D620B270(result, a2, v14);
      v20 = 0;
      LOBYTE(v15) = 4;
      v21 = v44;
      goto LABEL_44;
    }

LABEL_45:
    if (++v7 == v41)
    {
      return;
    }
  }

  v43 = *(v8 + 40);
  v45 = *(v8 + 32);
  v46 = *(v8 + 24);
  if (!*(v8 + 48))
  {
    v22 = *(v9 + 16);
    sub_1D62B7654(v9, v10, v12, v11, *(v8 + 32), v13, 0);
    v40 = v9;
    if (v22)
    {
      v23 = (v9 + 40);
      v24 = v4;
      while (1)
      {
        if ((*v23 & 1) == 0)
        {
          v25 = *(v23 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(result, a2);
          sub_1D62B72BC(v25, 0);

          if (v24)
          {
            goto LABEL_47;
          }
        }

        v23 += 16;
        if (!--v22)
        {
          goto LABEL_28;
        }
      }
    }

    v24 = v4;
LABEL_28:
    v26 = *(v10 + 16);
    if (v26)
    {
      v27 = (v10 + 40);
      while (1)
      {
        if ((*v27 & 1) == 0)
        {
          v28 = *(v27 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(result, a2);
          sub_1D62B72BC(v28, 0);

          if (v24)
          {
            break;
          }
        }

        v27 += 16;
        if (!--v26)
        {
          goto LABEL_34;
        }
      }

LABEL_47:
      v32 = v40;
      v33 = v10;
      v34 = v12;
      v36 = v45;
      v35 = v46;
      v37 = v43;
      v38 = 0;
      goto LABEL_49;
    }

LABEL_34:
    v20 = v24;
    LOBYTE(v15) = 0;
    goto LABEL_43;
  }

  if (v15 != 1)
  {
    sub_1D62B7654(v9, v10, v12, v11, v14, v13, 2u);

    sub_1D620B270(result, a2, v9);
    if (v4)
    {

      v32 = v9;
      v33 = v10;
      v34 = v12;
      v35 = v46;
      v36 = v14;
      v37 = v43;
      v38 = 2;
      goto LABEL_49;
    }

    sub_1D620B270(result, a2, v10);

    sub_1D620B270(result, a2, v12);
    sub_1D620B270(result, a2, v46);
    v39 = v10;

    sub_1D620B270(result, a2, v45);
    sub_1D620B270(result, a2, v43);
    v20 = 0;
    goto LABEL_26;
  }

  v16 = *(v9 + 16);
  sub_1D62B7654(v9, v10, v12, v11, *(v8 + 32), v13, 1u);
  v40 = v9;
  if (v16)
  {
    v17 = (v9 + 40);
    v18 = v4;
    while (1)
    {
      if ((*v17 & 1) == 0)
      {
        v19 = *(v17 - 1);
        swift_retain_n();
        FormatFloat.bind(binder:context:)(result, a2);
        if (v18)
        {
          sub_1D62B72BC(v19, 0);

          sub_1D62B772C(v40, v10, v12, v46, v45, v43, 1u);
          return;
        }

        sub_1D62B72BC(v19, 0);
      }

      v17 += 16;
      if (!--v16)
      {
        goto LABEL_36;
      }
    }
  }

  v18 = v4;
LABEL_36:
  v29 = *(v10 + 16);
  if (!v29)
  {
LABEL_42:
    v20 = v18;
    LOBYTE(v15) = 1;
LABEL_43:
    v21 = v43;
    v9 = v40;
    goto LABEL_44;
  }

  v30 = (v10 + 40);
  while (1)
  {
    if ((*v30 & 1) == 0)
    {
      v31 = *(v30 - 1);
      swift_retain_n();
      FormatFloat.bind(binder:context:)(result, a2);
      sub_1D62B72BC(v31, 0);

      if (v18)
      {
        break;
      }
    }

    v30 += 16;
    if (!--v29)
    {
      goto LABEL_42;
    }
  }

  v32 = v40;
  v33 = v10;
  v34 = v12;
  v36 = v45;
  v35 = v46;
  v37 = v43;
  v38 = 1;
LABEL_49:
  sub_1D62B772C(v32, v33, v34, v35, v36, v37, v38);
}

void sub_1D621397C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v198 = a1;
  v7 = type metadata accessor for FormatOption(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v184 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v183 = &v177 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v177 - v16);
  MEMORY[0x1EEE9AC00](v18, v19);
  v186 = &v177 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v185 = &v177 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v177 - v26);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v189 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v190 = &v177 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v188 = &v177 - v39;
  v40 = *(a3 + 16);
  if (!v40)
  {
    return;
  }

  v191 = (v8 + 56);
  v192 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v179 = v17;
  v180 = v27;
  v231 = a2;
  v41 = v198;
  v193 = v7;
  v42 = (a3 + 32);
  v182 = v38;
  while (1)
  {
    v44 = *v42++;
    v43 = v44;
    v45 = v44 >> 62;
    if (v44 >> 62)
    {
      if (v45 == 1)
      {

        FormatAnimationNodeSpringAnimation.bind(binder:context:)(v41, v231);
        if (v4)
        {
          goto LABEL_241;
        }

        goto LABEL_4;
      }

      v55 = v41;
      v56 = *((v43 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v57 = *(v56 + 16);

      v58 = v55;
      sub_1D621397C(v55, v231, v57);
      if (v4)
      {
LABEL_241:

        goto LABEL_289;
      }

      v59 = *(v56 + 120);
      v213 = *(v56 + 104);
      v214 = v59;
      v215[0] = *(v56 + 136);
      *(v215 + 9) = *(v56 + 145);
      v60 = *(v56 + 56);
      v209 = *(v56 + 40);
      v210 = v60;
      v61 = *(v56 + 88);
      v211 = *(v56 + 72);
      v212 = v61;
      v208 = *(v56 + 24);
      memmove(&__dst, (v56 + 24), 0x89uLL);
      if (sub_1D60486AC(&__dst) == 1)
      {

LABEL_60:

        v41 = v58;
        goto LABEL_4;
      }

      v63 = __dst;
      if (__dst)
      {
        v206 = v214;
        v207[0] = v215[0];
        *(v207 + 9) = *(v215 + 9);
        v202 = v210;
        v203 = v211;
        v204 = v212;
        v205 = v213;
        v200 = v208;
        v201 = v209;
        sub_1D62B4994(&v200, v199);
        sub_1D620B270(v58, v231, v63);
        v64 = v217;
        if (!v217)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v206 = v214;
        v207[0] = v215[0];
        *(v207 + 9) = *(v215 + 9);
        v202 = v210;
        v203 = v211;
        v204 = v212;
        v205 = v213;
        v200 = v208;
        v201 = v209;
        sub_1D62B4994(&v200, v199);
        v64 = v217;
        if (!v217)
        {
LABEL_44:
          if (v218)
          {
            sub_1D620B270(v58, v231, v218);
          }

          if (v219)
          {
            sub_1D620B270(v58, v231, v219);
          }

          if (v220)
          {
            sub_1D620B270(v58, v231, v220);
          }

          if (v221)
          {
            sub_1D620B270(v58, v231, v221);
          }

          if (v223 != 255)
          {
            v200 = v222;
            LOBYTE(v201) = v223 & 1;
            sub_1D6189668(v222, *(&v222 + 1), v223);
            sub_1D60ECF10(v231);
            sub_1D5D2F2C8(v200, *(&v200 + 1), v201);
          }

          v69 = v228;
          if (v228 != 255 && (v228 & 1) != 0)
          {
            v195 = v40;
            v196 = v42;
            v70 = v224;
            v71 = v225;
            v72 = v231;
            v197 = v226;
            v194 = v227;
            sub_1D618903C(v224, v225, v226, v227, 1);
            sub_1D620B270(v58, v72, v70);
            sub_1D620B270(v58, v72, v71);
            sub_1D620B270(v58, v72, v197);
            v73 = v58;
            v74 = v194;
            sub_1D620B270(v73, v72, v194);
            v4 = 0;
            sub_1D62B4B50(v70, v71, v197, v74, v69);
            v58 = v198;
            v40 = v195;
            v42 = v196;
          }

          if (v230 != 255)
          {
            v200 = v229;
            LOBYTE(v201) = v230 & 1;
            sub_1D6189668(v229, *(&v229 + 1), v230);
            sub_1D60ECF10(v231);
            sub_1D5D2F2C8(v200, *(&v200 + 1), v201);
          }

          sub_1D5D0ABCC(&v208, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
          goto LABEL_60;
        }
      }

      sub_1D620B270(v58, v231, v64);
      goto LABEL_44;
    }

    v195 = v40;
    v196 = v42;
    v46 = *(v43 + 16);
    v48 = *(v46 + 16);
    v47 = *(v46 + 24);
    v50 = *(v46 + 32);
    v49 = *(v46 + 40);
    v51 = *(v46 + 48);
    v197 = *(v46 + 56);
    v52 = *(v46 + 64);
    v194 = v43;
    if (v52 > 5)
    {
      break;
    }

    v53 = v231;
    if (v52 <= 2)
    {
      if (v52)
      {
        if (v52 == 1)
        {
          if (v48)
          {

            v54 = v49;
            sub_1D62B753C(v48, v47, v50, v49, v51, v197, 1u);

            sub_1D620B270(v198, v53, v48);
            if (v4)
            {
              goto LABEL_286;
            }

            if (!v47)
            {
              goto LABEL_120;
            }
          }

          else
          {

            v54 = v49;
            sub_1D62B753C(0, v47, v50, v49, v51, v197, 1u);
            if (!v47)
            {
LABEL_120:
              if (v50)
              {

                sub_1D620B270(v198, v53, v50);
                if (v4)
                {
LABEL_286:

                  v169 = v48;
                  v170 = v47;
                  v171 = v50;
                  v172 = v54;
                  v173 = v51;
                  v174 = v197;
                  v176 = 1;
                  goto LABEL_288;
                }

                v83 = v48;
                v84 = v47;
                v85 = v50;
              }

              else
              {
                v83 = v48;
                v84 = v47;
                v85 = 0;
              }

              v92 = v54;
              v93 = v51;
              v94 = v197;
              v95 = 1;
              goto LABEL_189;
            }
          }

          sub_1D620B270(v198, v53, v47);
          if (v4)
          {
            goto LABEL_286;
          }

          goto LABEL_120;
        }

        if (v48)
        {

          v79 = v49;
          sub_1D62B753C(v48, v47, v50, v49, v51, v197, 2u);

          sub_1D620B270(v198, v53, v48);
          if (v4)
          {
            goto LABEL_287;
          }

          if (!v47)
          {
            goto LABEL_144;
          }
        }

        else
        {

          v79 = v49;
          sub_1D62B753C(0, v47, v50, v49, v51, v197, 2u);
          if (!v47)
          {
LABEL_144:
            if (v50)
            {

              sub_1D620B270(v198, v53, v50);
              if (v4)
              {
LABEL_287:

                v169 = v48;
                v170 = v47;
                v171 = v50;
                v172 = v79;
                v173 = v51;
                v174 = v197;
                v176 = 2;
                goto LABEL_288;
              }

              v83 = v48;
              v84 = v47;
              v85 = v50;
            }

            else
            {
              v83 = v48;
              v84 = v47;
              v85 = 0;
            }

            v92 = v79;
            v93 = v51;
            v94 = v197;
            v95 = 2;
            goto LABEL_189;
          }
        }

        sub_1D620B270(v198, v53, v47);
        if (v4)
        {
          goto LABEL_287;
        }

        goto LABEL_144;
      }

      if (v48)
      {

        v75 = v49;
        sub_1D62B753C(v48, v47, v50, v49, v51, v197, 0);

        sub_1D620B270(v198, v53, v48);
        if (v4)
        {
          goto LABEL_280;
        }

        if (!v47)
        {
          goto LABEL_96;
        }
      }

      else
      {

        v75 = v49;
        sub_1D62B753C(0, v47, v50, v49, v51, v197, 0);
        if (!v47)
        {
LABEL_96:
          if (v50)
          {

            sub_1D620B270(v198, v53, v50);
            if (v4)
            {
LABEL_280:

              v169 = v48;
              v170 = v47;
              v171 = v50;
              v172 = v75;
              v173 = v51;
              v174 = v197;
              v176 = 0;
              goto LABEL_288;
            }

            v83 = v48;
            v84 = v47;
            v85 = v50;
          }

          else
          {
            v83 = v48;
            v84 = v47;
            v85 = 0;
          }

          v92 = v75;
          v93 = v51;
          v94 = v197;
          v95 = 0;
          goto LABEL_189;
        }
      }

      sub_1D620B270(v198, v53, v47);
      if (v4)
      {
        goto LABEL_280;
      }

      goto LABEL_96;
    }

    if (v52 == 3)
    {
      if (v48)
      {

        v77 = v49;
        sub_1D62B753C(v48, v47, v50, v49, v51, v197, 3u);

        sub_1D620B270(v198, v53, v48);
        if (v4)
        {
          goto LABEL_281;
        }

        if (!v47)
        {
          goto LABEL_108;
        }
      }

      else
      {

        v77 = v49;
        sub_1D62B753C(0, v47, v50, v49, v51, v197, 3u);
        if (!v47)
        {
LABEL_108:
          if (v50)
          {

            sub_1D620B270(v198, v53, v50);
            if (v4)
            {
LABEL_281:

              v169 = v48;
              v170 = v47;
              v171 = v50;
              v172 = v77;
              v173 = v51;
              v174 = v197;
              v176 = 3;
              goto LABEL_288;
            }

            v83 = v48;
            v84 = v47;
            v85 = v50;
          }

          else
          {
            v83 = v48;
            v84 = v47;
            v85 = 0;
          }

          v92 = v77;
          v93 = v51;
          v94 = v197;
          v95 = 3;
          goto LABEL_189;
        }
      }

      sub_1D620B270(v198, v53, v47);
      if (v4)
      {
        goto LABEL_281;
      }

      goto LABEL_108;
    }

    if (v52 == 4)
    {
      v181 = v51;
      v178 = v49;
      if (v48)
      {

        v65 = v51;
        v66 = v197;
        sub_1D62B753C(v48, v47, v50, v49, v65, v197, 4u);
        sub_1D5D615EC(v48, v47);
        v67 = v198;
        sub_1D620B270(v198, v53, v48);
        if (v4)
        {
          sub_1D5CDE22C(v48, v47);

          v169 = v48;
          v170 = v47;
          v171 = v50;
          v172 = v178;
          v173 = v181;
          goto LABEL_253;
        }

        sub_1D620B270(v67, v53, v47);
        v4 = 0;
        sub_1D5CDE22C(v48, v47);
        v51 = v181;
        if (!v50)
        {
LABEL_132:
          if (!v51)
          {
            v83 = v48;
            v84 = v47;
            v85 = v50;
            v92 = v178;
            v93 = 0;
            v94 = v197;
            goto LABEL_188;
          }

          v89 = v51;
          v66 = v88;
          v90 = v198;
          sub_1D620B270(v198, v53, v89);
          if (!v4)
          {
            sub_1D620B270(v90, v53, v66);
            v4 = 0;
            v91 = v181;
            sub_1D5CDE22C(v181, v66);
            v83 = v48;
            v84 = v47;
            v85 = v50;
            v92 = v178;
            v93 = v91;
            v94 = v66;
LABEL_188:
            v95 = 4;
            goto LABEL_189;
          }

          v175 = v181;
          sub_1D5CDE22C(v181, v66);

          v169 = v48;
          v170 = v47;
          v171 = v50;
          v172 = v178;
          v173 = v175;
LABEL_253:
          v174 = v66;
LABEL_254:
          v176 = 4;
          goto LABEL_288;
        }
      }

      else
      {

        sub_1D62B753C(0, v47, v50, v49, v51, v197, 4u);
        if (!v50)
        {
          goto LABEL_132;
        }
      }

      v86 = v178;

      v87 = v198;
      sub_1D620B270(v198, v53, v50);
      if (!v4)
      {
        sub_1D620B270(v87, v53, v86);
        v4 = 0;
        sub_1D5CDE22C(v50, v86);
        v51 = v181;
        goto LABEL_132;
      }

      sub_1D5CDE22C(v50, v86);

      v169 = v48;
      v170 = v47;
      v171 = v50;
      v172 = v86;
      v173 = v181;
      v174 = v197;
      goto LABEL_254;
    }

    if (v48)
    {

      v81 = v49;
      sub_1D62B753C(v48, v47, v50, v49, v51, v197, 5u);

      sub_1D620B270(v198, v53, v48);
      if (v4)
      {
        goto LABEL_278;
      }

      if (v47)
      {
LABEL_154:

        sub_1D620B270(v198, v53, v47);
        if (v4)
        {
          goto LABEL_278;
        }
      }
    }

    else
    {

      v81 = v49;
      sub_1D62B753C(0, v47, v50, v49, v51, v197, 5u);
      if (v47)
      {
        goto LABEL_154;
      }
    }

    if (v50)
    {

      sub_1D620B270(v198, v53, v50);
      if (v4)
      {
LABEL_278:

        v169 = v48;
        v170 = v47;
        v171 = v50;
        v172 = v81;
        v173 = v51;
        v174 = v197;
        v176 = 5;
        goto LABEL_288;
      }

      v83 = v48;
      v84 = v47;
      v85 = v50;
    }

    else
    {
      v83 = v48;
      v84 = v47;
      v85 = 0;
    }

    v92 = v81;
    v93 = v51;
    v94 = v197;
    v95 = 5;
LABEL_189:
    sub_1D62B4A44(v83, v84, v85, v92, v93, v94, v95);
    v96 = *(v46 + 88);
    v42 = v196;
    v41 = v198;
    if (v96 != 255 && (v96 & 1) != 0)
    {
      v98 = *(v46 + 72);
      v97 = *(v46 + 80);
      sub_1D6189668(v98, v97, *(v46 + 88));
      v181 = sub_1D5E26E28(&unk_1F50F65D0);
      v99 = *(v53 + v192);
      v100 = *(v99 + 16);
      swift_beginAccess();
      v101 = *(*(v100 + 16) + 16);
      v197 = v97;
      if (v101)
      {
        sub_1D5B69D90(v98, v97);
        if (v102)
        {
          v178 = v98;
          swift_endAccess();
          v103 = v186;
          sub_1D5D25108(v186);
          v104 = v103;
          v105 = v185;
          sub_1D5D5E33C(v104, v185, type metadata accessor for FormatOption);
          v106 = v190;
          sub_1D5D5E33C(v105, v190, type metadata accessor for FormatOption);
          goto LABEL_197;
        }
      }

      swift_endAccess();
      swift_beginAccess();
      if (*(*(v99 + 24) + 16) && (sub_1D5B69D90(v98, v97), (v107 & 1) != 0))
      {
        v178 = v98;
        swift_endAccess();
        v106 = v190;
        sub_1D5D25108(v190);
LABEL_197:
        v108 = *v191;
        v109 = v193;
        (*v191)(v106, 0, 1, v193);
        v110 = v106;
        v111 = v180;
        v112 = sub_1D5D5E33C(v110, v180, type metadata accessor for FormatOption);
        __dst = v111[2];
        FormatOptionValue.type.getter(v112, &v208);
        v113 = v181;
        if ((sub_1D6183C84(v208, v181) & 1) == 0)
        {
          v231 = type metadata accessor for FormatDerivedDataError(0);
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v158 = v157;
          v159 = v111[1];
          v198 = *v111;
          __dst = v111[2];

          FormatOptionValue.type.getter(v160, &v208);
          v161 = v208;
          *v158 = v198;
          *(v158 + 8) = v159;
          *(v158 + 16) = v161;
          *(v158 + 24) = v113;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D60107F0(v178, v197, v96);
LABEL_248:

          sub_1D62B51D0(v111, type metadata accessor for FormatOption);
          goto LABEL_289;
        }

        sub_1D60107F0(v178, v197, v96);
        v114 = v188;
        sub_1D5D5E33C(v111, v188, type metadata accessor for FormatOption);
        v108(v114, 0, 1, v109);
        v115 = v114;
        v53 = v231;
        v41 = v198;
      }

      else
      {
        v187 = v46;
        swift_endAccess();
        v116 = v190;
        v117 = *v191;
        v118 = v193;
        (*v191)(v190, 1, 1, v193);

        sub_1D5B6EF64(v116, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v119 = *(v53 + 48);
        v120 = v198;
        if (v119 != 1)
        {
          goto LABEL_249;
        }

        sub_1D60107F0(v98, v197, v96);
        v115 = v188;
        v117(v188, 1, 1, v118);
        v46 = v187;
        v41 = v120;
        v53 = v231;
      }

      sub_1D5B6EF64(v115, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v42 = v196;
    }

    v121 = *(v46 + 112);
    if (v121 != 255 && (v121 & 1) != 0)
    {
      v98 = *(v46 + 96);
      v122 = *(v46 + 104);
      sub_1D6189668(v98, v122, *(v46 + 112));
      v181 = sub_1D5E26E28(&unk_1F50F65F8);
      v123 = *(v53 + v192);
      v124 = *(v123 + 16);
      swift_beginAccess();
      v125 = *(*(v124 + 16) + 16);
      v187 = v46;
      v197 = v122;
      if (v125)
      {
        sub_1D5B69D90(v98, v122);
        if (v126)
        {
          swift_endAccess();
          v127 = v184;
          sub_1D5D25108(v184);
          v128 = v127;
          v129 = v183;
          sub_1D5D5E33C(v128, v183, type metadata accessor for FormatOption);
          v130 = v189;
          sub_1D5D5E33C(v129, v189, type metadata accessor for FormatOption);
          goto LABEL_210;
        }
      }

      swift_endAccess();
      swift_beginAccess();
      if (*(*(v123 + 24) + 16) && (sub_1D5B69D90(v98, v122), (v131 & 1) != 0))
      {
        swift_endAccess();
        v130 = v189;
        sub_1D5D25108(v189);
LABEL_210:
        v132 = *v191;
        v133 = v193;
        (*v191)(v130, 0, 1, v193);
        v134 = v130;
        v111 = v179;
        v135 = sub_1D5D5E33C(v134, v179, type metadata accessor for FormatOption);
        __dst = v111[2];
        FormatOptionValue.type.getter(v135, &v208);
        v136 = v181;
        if ((sub_1D6183C84(v208, v181) & 1) == 0)
        {
          v231 = type metadata accessor for FormatDerivedDataError(0);
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v163 = v162;
          v164 = v111[1];
          v198 = *v111;
          __dst = v111[2];

          FormatOptionValue.type.getter(v165, &v208);
          v166 = v208;
          *v163 = v198;
          *(v163 + 8) = v164;
          *(v163 + 16) = v166;
          *(v163 + 24) = v136;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D60107F0(v98, v197, v121);
          goto LABEL_248;
        }

        sub_1D60107F0(v98, v197, v121);
        v137 = v182;
        sub_1D5D5E33C(v111, v182, type metadata accessor for FormatOption);
        v132(v137, 0, 1, v133);
        v41 = v198;
      }

      else
      {
        v178 = v4;
        swift_endAccess();
        v138 = *v191;
        v139 = v189;
        v140 = v193;
        (*v191)(v189, 1, 1, v193);

        sub_1D5B6EF64(v139, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v141 = *(v53 + 48);
        v142 = v198;
        if (v141 != 1)
        {
LABEL_249:
          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          v167 = v197;
          *v168 = v98;
          v168[1] = v167;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          goto LABEL_289;
        }

        sub_1D60107F0(v98, v197, v121);
        v137 = v182;
        v138(v182, 1, 1, v140);
        v41 = v142;
        v4 = v178;
      }

      sub_1D5B6EF64(v137, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v42 = v196;
      v46 = v187;
    }

    v143 = *(v46 + 200);
    v144 = *(v46 + 232);
    v214 = *(v46 + 216);
    v215[0] = v144;
    *(v215 + 9) = *(v46 + 241);
    v145 = *(v46 + 136);
    v146 = *(v46 + 168);
    v210 = *(v46 + 152);
    v211 = v146;
    v212 = *(v46 + 184);
    v213 = v143;
    v208 = *(v46 + 120);
    v209 = v145;
    memmove(&__dst, (v46 + 120), 0x89uLL);
    if (sub_1D60486AC(&__dst) == 1)
    {

      v40 = v195;
      goto LABEL_4;
    }

    v147 = __dst;
    v40 = v195;
    if (__dst)
    {
      v206 = v214;
      v207[0] = v215[0];
      *(v207 + 9) = *(v215 + 9);
      v202 = v210;
      v203 = v211;
      v204 = v212;
      v205 = v213;
      v200 = v208;
      v201 = v209;
      sub_1D62B4994(&v200, v199);
      sub_1D620B270(v41, v231, v147);
      if (v4)
      {
        goto LABEL_245;
      }

      v148 = v217;
      if (v217)
      {
LABEL_221:
        sub_1D620B270(v41, v231, v148);
        if (v4)
        {
          goto LABEL_245;
        }
      }
    }

    else
    {
      v206 = v214;
      v207[0] = v215[0];
      *(v207 + 9) = *(v215 + 9);
      v202 = v210;
      v203 = v211;
      v204 = v212;
      v205 = v213;
      v200 = v208;
      v201 = v209;
      sub_1D62B4994(&v200, v199);
      v148 = v217;
      if (v217)
      {
        goto LABEL_221;
      }
    }

    if (v218)
    {
      sub_1D620B270(v41, v231, v218);
      if (v4)
      {
        goto LABEL_245;
      }
    }

    if (v219)
    {
      sub_1D620B270(v41, v231, v219);
      if (v4)
      {
        goto LABEL_245;
      }
    }

    if (v220)
    {
      sub_1D620B270(v41, v231, v220);
      if (v4)
      {
        goto LABEL_245;
      }
    }

    if (v221)
    {
      sub_1D620B270(v41, v231, v221);
      if (v4)
      {
        goto LABEL_245;
      }
    }

    if (v223 != 255)
    {
      v200 = v222;
      LOBYTE(v201) = v223 & 1;
      sub_1D6189668(v222, *(&v222 + 1), v223);
      sub_1D60ECF10(v231);
      if (v4)
      {
        goto LABEL_243;
      }

      sub_1D5D2F2C8(v200, *(&v200 + 1), v201);
    }

    v149 = v228;
    if (v228 != 255 && (v228 & 1) != 0)
    {
      v151 = v224;
      v150 = v225;
      v152 = v231;
      v153 = v41;
      v154 = v226;
      v197 = v227;
      sub_1D618903C(v224, v225, v226, v227, 1);
      sub_1D620B270(v153, v152, v151);
      if (v4)
      {
        sub_1D62B4B50(v151, v150, v154, v197, v149);
        goto LABEL_245;
      }

      sub_1D620B270(v153, v152, v150);
      sub_1D620B270(v153, v152, v154);
      v155 = v153;
      v156 = v197;
      sub_1D620B270(v155, v152, v197);
      v4 = 0;
      sub_1D62B4B50(v151, v150, v154, v156, v149);
      v41 = v198;
      v40 = v195;
      v42 = v196;
    }

    if (v230 != 255)
    {
      v200 = v229;
      LOBYTE(v201) = v230 & 1;
      sub_1D6189668(v229, *(&v229 + 1), v230);
      sub_1D60ECF10(v231);
      if (v4)
      {
LABEL_243:
        sub_1D5D2F2C8(v200, *(&v200 + 1), v201);
LABEL_245:

        sub_1D5D0ABCC(&v208, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);
        goto LABEL_289;
      }

      sub_1D5D2F2C8(v200, *(&v200 + 1), v201);
    }

    sub_1D5D0ABCC(&v208, &qword_1EDF10BF0, &type metadata for FormatMediaTiming);

LABEL_4:
    if (!--v40)
    {
      return;
    }
  }

  v53 = v231;
  if (v52 <= 8)
  {
    if (v52 != 6)
    {
      if (v52 == 7)
      {
        if (v48)
        {

          v62 = v49;
          sub_1D62B753C(v48, v47, v50, v49, v51, v197, 7u);

          sub_1D620B270(v198, v53, v48);
          if (v4)
          {
            goto LABEL_282;
          }

          if (!v47)
          {
            goto LABEL_126;
          }
        }

        else
        {

          v62 = v49;
          sub_1D62B753C(0, v47, v50, v49, v51, v197, 7u);
          if (!v47)
          {
LABEL_126:
            if (v50)
            {

              sub_1D620B270(v198, v53, v50);
              if (v4)
              {
LABEL_282:

                v169 = v48;
                v170 = v47;
                v171 = v50;
                v172 = v62;
                v173 = v51;
                v174 = v197;
                v176 = 7;
                goto LABEL_288;
              }

              v83 = v48;
              v84 = v47;
              v85 = v50;
            }

            else
            {
              v83 = v48;
              v84 = v47;
              v85 = 0;
            }

            v92 = v62;
            v93 = v51;
            v94 = v197;
            v95 = 7;
            goto LABEL_189;
          }
        }

        sub_1D620B270(v198, v53, v47);
        if (v4)
        {
          goto LABEL_282;
        }

        goto LABEL_126;
      }

      if (v48)
      {

        v80 = v49;
        sub_1D62B753C(v48, v47, v50, v49, v51, v197, 8u);

        sub_1D620B270(v198, v53, v48);
        if (v4)
        {
          goto LABEL_283;
        }

        if (!v47)
        {
          goto LABEL_150;
        }
      }

      else
      {

        v80 = v49;
        sub_1D62B753C(0, v47, v50, v49, v51, v197, 8u);
        if (!v47)
        {
LABEL_150:
          if (v50)
          {

            sub_1D620B270(v198, v53, v50);
            if (v4)
            {
LABEL_283:

              v169 = v48;
              v170 = v47;
              v171 = v50;
              v172 = v80;
              v173 = v51;
              v174 = v197;
              v176 = 8;
              goto LABEL_288;
            }

            v83 = v48;
            v84 = v47;
            v85 = v50;
          }

          else
          {
            v83 = v48;
            v84 = v47;
            v85 = 0;
          }

          v92 = v80;
          v93 = v51;
          v94 = v197;
          v95 = 8;
          goto LABEL_189;
        }
      }

      sub_1D620B270(v198, v53, v47);
      if (v4)
      {
        goto LABEL_283;
      }

      goto LABEL_150;
    }

    if (v48)
    {

      v76 = v49;
      sub_1D62B753C(v48, v47, v50, v49, v51, v197, 6u);

      sub_1D620B270(v198, v53, v48);
      if (v4)
      {
        goto LABEL_285;
      }

      if (!v47)
      {
        goto LABEL_102;
      }
    }

    else
    {

      v76 = v49;
      sub_1D62B753C(0, v47, v50, v49, v51, v197, 6u);
      if (!v47)
      {
LABEL_102:
        if (v50)
        {

          sub_1D620B270(v198, v53, v50);
          if (v4)
          {
LABEL_285:

            v169 = v48;
            v170 = v47;
            v171 = v50;
            v172 = v76;
            v173 = v51;
            v174 = v197;
            v176 = 6;
            goto LABEL_288;
          }

          v83 = v48;
          v84 = v47;
          v85 = v50;
        }

        else
        {
          v83 = v48;
          v84 = v47;
          v85 = 0;
        }

        v92 = v76;
        v93 = v51;
        v94 = v197;
        v95 = 6;
        goto LABEL_189;
      }
    }

    sub_1D620B270(v198, v53, v47);
    if (v4)
    {
      goto LABEL_285;
    }

    goto LABEL_102;
  }

  if (v52 == 9)
  {
    if (v48)
    {

      v78 = v49;
      sub_1D62B753C(v48, v47, v50, v49, v51, v197, 9u);

      sub_1D620B270(v198, v53, v48);
      if (v4)
      {
        goto LABEL_279;
      }

      if (!v47)
      {
        goto LABEL_114;
      }
    }

    else
    {

      v78 = v49;
      sub_1D62B753C(0, v47, v50, v49, v51, v197, 9u);
      if (!v47)
      {
LABEL_114:
        if (v50)
        {

          sub_1D620B270(v198, v53, v50);
          if (v4)
          {
LABEL_279:

            v169 = v48;
            v170 = v47;
            v171 = v50;
            v172 = v78;
            v173 = v51;
            v174 = v197;
            v176 = 9;
            goto LABEL_288;
          }

          v83 = v48;
          v84 = v47;
          v85 = v50;
        }

        else
        {
          v83 = v48;
          v84 = v47;
          v85 = 0;
        }

        v92 = v78;
        v93 = v51;
        v94 = v197;
        v95 = 9;
        goto LABEL_189;
      }
    }

    sub_1D620B270(v198, v53, v47);
    if (v4)
    {
      goto LABEL_279;
    }

    goto LABEL_114;
  }

  if (v52 == 10)
  {
    if (v48)
    {

      v68 = v49;
      sub_1D62B753C(v48, v47, v50, v49, v51, v197, 0xAu);

      sub_1D620B270(v198, v53, v48);
      if (v4)
      {
        goto LABEL_284;
      }

      if (!v47)
      {
        goto LABEL_138;
      }
    }

    else
    {

      v68 = v49;
      sub_1D62B753C(0, v47, v50, v49, v51, v197, 0xAu);
      if (!v47)
      {
LABEL_138:
        if (v50)
        {

          sub_1D620B270(v198, v53, v50);
          if (v4)
          {
LABEL_284:

            v169 = v48;
            v170 = v47;
            v171 = v50;
            v172 = v68;
            v173 = v51;
            v174 = v197;
            v176 = 10;
            goto LABEL_288;
          }

          v83 = v48;
          v84 = v47;
          v85 = v50;
        }

        else
        {
          v83 = v48;
          v84 = v47;
          v85 = 0;
        }

        v92 = v68;
        v93 = v51;
        v94 = v197;
        v95 = 10;
        goto LABEL_189;
      }
    }

    sub_1D620B270(v198, v53, v47);
    if (v4)
    {
      goto LABEL_284;
    }

    goto LABEL_138;
  }

  if (v48)
  {

    v82 = v49;
    sub_1D62B753C(v48, v47, v50, v49, v51, v197, 0xBu);

    sub_1D620B270(v198, v53, v48);
    if (v4)
    {
      goto LABEL_277;
    }

    if (!v47)
    {
      goto LABEL_162;
    }
  }

  else
  {

    v82 = v49;
    sub_1D62B753C(0, v47, v50, v49, v51, v197, 0xBu);
    if (!v47)
    {
      goto LABEL_162;
    }
  }

  sub_1D620B270(v198, v53, v47);
  if (v4)
  {
    goto LABEL_277;
  }

LABEL_162:
  if (!v50)
  {
    v83 = v48;
    v84 = v47;
    v85 = 0;
    goto LABEL_186;
  }

  sub_1D620B270(v198, v53, v50);
  if (!v4)
  {

    v83 = v48;
    v84 = v47;
    v85 = v50;
LABEL_186:
    v92 = v82;
    v93 = v51;
    v94 = v197;
    v95 = 11;
    goto LABEL_189;
  }

LABEL_277:

  v169 = v48;
  v170 = v47;
  v171 = v50;
  v172 = v82;
  v173 = v51;
  v174 = v197;
  v176 = 11;
LABEL_288:
  sub_1D62B4A44(v169, v170, v171, v172, v173, v174, v176);
LABEL_289:
}

unint64_t sub_1D6215F90(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 32); ; i = (i + 104))
    {
      v8 = i[3];
      v9 = i[5];
      v32 = i[4];
      v33 = v9;
      v10 = i[1];
      v29[0] = *i;
      v29[1] = v10;
      v11 = i[3];
      v13 = *i;
      v12 = i[1];
      v30 = i[2];
      v31 = v11;
      v14 = i[5];
      v26 = v32;
      v27 = v14;
      v22 = v13;
      v23 = v12;
      v34 = *(i + 12);
      v28 = *(i + 12);
      v24 = v30;
      v25 = v8;
      sub_1D5C5C4CC(v29, &v15);
      FormatSourceMapNode.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      v19 = v26;
      v20 = v27;
      v21 = v28;
      v15 = v22;
      v16 = v23;
      v17 = v24;
      v18 = v25;
      result = sub_1D5C5C540(&v15);
      if (!--v4)
      {
        return result;
      }
    }

    v19 = v26;
    v20 = v27;
    v21 = v28;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    return sub_1D5C5C540(&v15);
  }

  return result;
}

void sub_1D62160B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v143 = &v135 - v14;
  v15 = type metadata accessor for FormatItemNodeAction(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v144 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v135 - v21;
  v147 = *(a3 + 16);
  if (v147)
  {
    v141 = v11;
    v23 = 0;
    v148 = a3 + 32;
    v149 = a1;
    v142 = (v16 + 48);
    v145 = &v135 - v21;
    v146 = v15;
    while (1)
    {
      v25 = (v148 + (v23 << 6));
      v26 = v25[1];
      v210[0] = *v25;
      v210[1] = v26;
      v27 = v25[3];
      v210[2] = v25[2];
      v210[3] = v27;
      ++v23;
      v28 = *&v210[0];
      switch(v27 >> 59)
      {
        case 1uLL:

          v24 = v4;
          FormatTextNodeStyle.bind(binder:context:)(a1, a2);
          goto LABEL_4;
        case 2uLL:

          v24 = v4;
          FormatImageNodeStyle.bind(binder:context:)(a1, a2);
          goto LABEL_4;
        case 3uLL:
          v65 = *(*&v210[0] + 64);
          v199 = *(*&v210[0] + 48);
          v200 = v65;
          v66 = *(*&v210[0] + 96);
          v201 = *(*&v210[0] + 80);
          v202 = v66;
          LOBYTE(v203) = *(*&v210[0] + 112);
          if ((v203 & 0xFE) == 0x7E)
          {
          }

          else
          {
            v84 = v199;
            if ((~v199 & 0xF000000000000007) != 0)
            {
              *&v178 = v199;
              sub_1D5C8C900(v210, &v189);
              sub_1D62B5354(&v199, &v189, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
              sub_1D5CFCFAC(v84);
              FormatColor.bind(binder:context:)(v149, a2);
              if (v4)
              {
                sub_1D5D0ABCC(&v199, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
                sub_1D5C8C974(v210);
LABEL_218:

                return;
              }

              sub_1D5D0ABCC(&v199, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
              a1 = v149;
              v22 = v145;
              v15 = v146;
            }

            else
            {

              a1 = v149;
            }
          }

          v99 = *(v28 + 120);
          *(v191 + 9) = *(v28 + 161);
          v100 = *(v28 + 136);
          v189 = v99;
          v190 = v100;
          v191[0] = *(v28 + 152);
          if (BYTE8(v191[1]) > 1u)
          {
            goto LABEL_146;
          }

          v101 = v189;
          v102 = *&v191[1];
          if (BYTE8(v191[1]))
          {
            if ((v189 & 0xF000000000000007) == 0xD000000000000007)
            {
LABEL_124:
              sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              v22 = v145;
              a1 = v149;
            }

            else if ((v189 & 0xF000000000000007) == 0xF000000000000007)
            {
              sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              v22 = v145;
              a1 = v149;
            }

            else
            {
              *&v167 = v189;
              v139 = v190;
              v140 = *(&v189 + 1);
              v137 = *&v191[0];
              v138 = *(&v190 + 1);
              v136 = *(&v191[0] + 1);
              sub_1D62B5354(&v189, &v178, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              sub_1D62B5354(&v189, &v178, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              sub_1D62B54E4(v101, v140, v139, v138, v137, v136, v102, 1);
              a1 = v149;
              FormatFloat.bind(binder:context:)(v149, a2);
              if (v4)
              {
                sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
                sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
                sub_1D5C8C974(v210);
                goto LABEL_218;
              }

              sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

              v22 = v145;
            }

            v15 = v146;
            goto LABEL_146;
          }

          v103 = *&v191[1] & 0xF000000000000007;
          if ((*&v191[1] & 0xF000000000000007) == 0xD000000000000007)
          {
            goto LABEL_124;
          }

          if ((~v189 & 0xF000000000000007) != 0)
          {
            *&v167 = v189;
            sub_1D62B5354(&v189, &v178, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
            sub_1D62B5354(&v189, &v178, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
            sub_1D5CFCFAC(v101);
            FormatColor.bind(binder:context:)(v149, a2);
            if (v4)
            {
              goto LABEL_226;
            }
          }

          else
          {
            v104 = *(&v189 + 1);
            v139 = *(&v190 + 1);
            v140 = v190;
            v137 = *(&v191[0] + 1);
            v138 = *&v191[0];
            sub_1D62B5354(&v189, &v178, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
            sub_1D62B54E4(v101, v104, v140, v139, v138, v137, v102, 0);
          }

          v114 = v103 == 0xF000000000000007;
          v22 = v145;
          v15 = v146;
          if (v114)
          {
            sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
            sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
            a1 = v149;
          }

          else
          {
            *&v178 = v102;

            a1 = v149;
            FormatFloat.bind(binder:context:)(v149, a2);
            if (v4)
            {
LABEL_226:
              sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              sub_1D5C8C974(v210);

              sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
              return;
            }

            sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

            sub_1D5D0ABCC(&v189, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
          }

LABEL_146:
          sub_1D5C00D70(v28 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v22, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
          if ((*v142)(v22, 1, v15) == 1)
          {
            sub_1D5B6EF64(v22, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
            goto LABEL_150;
          }

          sub_1D62B50EC(v22, v144, type metadata accessor for FormatItemNodeAction);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if ((EnumCaseMultiPayload - 2) >= 6)
          {
            if (EnumCaseMultiPayload)
            {
              v126 = v141;
              sub_1D5D5E33C(v144, v141, type metadata accessor for FormatCommandOpenURL);
              sub_1D5F86DA0(a2);
              if (v4)
              {
                sub_1D5C8C974(v210);
                sub_1D62B51D0(v126, type metadata accessor for FormatCommandOpenURL);
LABEL_225:
                sub_1D62B51D0(v22, type metadata accessor for FormatItemNodeAction);
                return;
              }

              sub_1D62B51D0(v126, type metadata accessor for FormatCommandOpenURL);
              goto LABEL_149;
            }

            sub_1D62B5F18(v144, &v167);
            sub_1D62B5F18(&v167, &v178);
            v122 = *(&v179 + 1);
            v123 = v181;
            if (BYTE2(v181))
            {
              v124 = 8;
            }

            else
            {
              v124 = 0;
            }

            v125 = v124 & 0xFFFFFFF8 | (v181 >> 11) & 7;
            if (v125 > 4)
            {
              v128 = v143;
              if (v125 <= 6)
              {
                if (v125 != 5)
                {
                  v22 = v145;
                  v15 = v146;
                  if (BYTE8(v179) >> 6 && BYTE8(v179) >> 6 != 1)
                  {
                    a1 = v149;
                    v131 = v4;
                    sub_1D624011C(v149, a2, v178, *(&v178 + 1), v179, BYTE8(v179) & 0x3F);
                  }

                  else
                  {
                    v156 = v178;
                    LOBYTE(v157) = v179;
                    a1 = v149;
                    v131 = v4;
                    FormatTagBinding.Command.bind(binder:context:)(v149, a2);
                  }

                  goto LABEL_213;
                }
              }

              else
              {
                if (v125 != 7)
                {
                  a1 = v149;
                  v22 = v145;
                  v15 = v146;
                  goto LABEL_214;
                }

                if (v181 >> 14)
                {
                  if (v181 >> 14 != 1)
                  {
                    v156 = v178;
                    v157 = v179;
                    v139 = *(&v180 + 1);
                    v140 = v180;
                    v158 = v180;
                    LOWORD(v159) = v181 & 0x7FF;
                    v137 = *(&v178 + 1);
                    v134 = v178;
                    v138 = v179;
                    FormatTextNodeBinding.bind(binder:context:)(v149, a2);
                    if (v4)
                    {
                      sub_1D5C8C974(v210);
                      sub_1D62B5F74(&v167);
                      v22 = v145;
                      goto LABEL_225;
                    }

                    *&v150 = v134;
                    *(&v150 + 1) = v137;
                    v151 = v138;
                    v152 = v122;
                    v153 = v140;
                    v154 = v139;
                    v155 = v123 & 0x7FF;
                    a1 = v149;
                    FormatTextNodeBinding.bind(binder:context:)(v149, a2);
                    v4 = 0;
                    sub_1D62B5F74(&v167);
                    v22 = v145;
                    v15 = v146;
                    goto LABEL_149;
                  }

                  v150 = v178;
                  v151 = v179;
                  v211 = 5;
                  v132 = v178;
                  sub_1D62B7EFC(&v167, &v156);
                  v133 = sub_1D703E0C8(&v150, &v211);
                  if (v4)
                  {
                    sub_1D62B5F74(&v167);
                    sub_1D5C8C974(v210);
                    v22 = v145;
                    goto LABEL_225;
                  }

                  sub_1D6BEBFEC(v132, *(&v132 + 1), v133, 1, v128);
                  v4 = 0;
                  sub_1D5B6EF64(v128, &qword_1EDF337F0, type metadata accessor for FormatOption);
                }
              }

              sub_1D62B5F74(&v167);
              a1 = v149;
              v22 = v145;
              v15 = v146;
            }

            else
            {
              if (v125 <= 1)
              {
                v22 = v145;
                v15 = v146;
                if (!v125)
                {
                  v129 = (DWORD2(v179) >> 3) & 7;
                  if (v129 <= 1)
                  {
                    a1 = v149;
                    if (!v129 && v179 == 1 && (~v178 & 0xF000000000000007) != 0)
                    {
                      *&v156 = v178;

                      v130 = a1;
                      goto LABEL_205;
                    }

                    goto LABEL_214;
                  }

                  if (v129 != 2 && v129 != 3)
                  {
                    v156 = v178;
                    *&v157 = v179;
                    BYTE8(v157) = BYTE8(v179) & 0xC7;
                    a1 = v149;
                    v131 = v4;
                    FormatSportsEventBinding.Command.bind(binder:context:)(v149, a2);
LABEL_213:
                    v4 = v131;
                    if (v131)
                    {
                      sub_1D5C8C974(v210);
                      sub_1D62B5F74(&v167);
                      goto LABEL_225;
                    }

LABEL_214:
                    sub_1D62B5F74(&v167);
                    goto LABEL_149;
                  }

                  if (v179 == 1 && (~v178 & 0xF000000000000007) != 0)
                  {
                    *&v156 = v178;

                    v130 = v149;
LABEL_205:
                    v140 = a2;
                    FormatTextContent.bind(binder:context:)(v130, a2);
                    if (v4)
                    {
                      sub_1D62B5F74(&v167);
                      sub_1D5C8C974(v210);

                      v22 = v145;
                      goto LABEL_225;
                    }

                    sub_1D62B5F74(&v167);

                    v22 = v145;
                    v15 = v146;
                    a1 = v149;
                    a2 = v140;
                    goto LABEL_149;
                  }
                }
              }

              else
              {
                v22 = v145;
                v15 = v146;
                if (v125 != 2)
                {
                  a1 = v149;
                  if (v125 == 3 && v179 == 1 && (~v178 & 0xF000000000000007) != 0)
                  {
                    *&v156 = v178;
                    v140 = v178;

                    FormatTextContent.bind(binder:context:)(a1, a2);
                    if (v4)
                    {
                      sub_1D62B5F74(&v167);
                      sub_1D5C8C974(v210);

                      goto LABEL_225;
                    }

                    sub_1D62B5F74(&v167);

                    goto LABEL_149;
                  }

                  goto LABEL_214;
                }
              }

              sub_1D62B5F74(&v167);
              a1 = v149;
            }
          }

LABEL_149:
          sub_1D62B51D0(v22, type metadata accessor for FormatItemNodeAction);
LABEL_150:
          v116 = *(v28 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
          if (v116 >= 4)
          {
            v140 = v23;
            v117 = v22;
            v118 = a1;
            v119 = *(v28 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
            sub_1D62B5DD0(v116);
            sub_1D620B270(v118, a2, v116);
            if (v4)
            {
              sub_1D5C8C974(v210);
              sub_1D62B5E14(v116, v119);
              return;
            }

            sub_1D620B270(v118, a2, v119);
            v4 = 0;
            sub_1D62B5E14(v116, v119);
            a1 = v149;
            v15 = v146;
            v22 = v117;
            v23 = v140;
          }

          v120 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
          swift_beginAccess();
          v121 = *(v28 + v120);

          sub_1D62188B8(a1, a2, v121);
          if (v4)
          {
LABEL_216:
            sub_1D5C8C974(v210);

            return;
          }

LABEL_5:
          sub_1D5C8C974(v210);
LABEL_6:
          if (v23 == v147)
          {
            return;
          }

          break;
        case 4uLL:
        case 0x10uLL:
          goto LABEL_6;
        case 5uLL:
          v76 = *(*&v210[0] + 56);
          if (v76)
          {

            sub_1D6213004(a1, a2, v76);
            if (v4)
            {
LABEL_217:
              sub_1D5C8C974(v210);
              return;
            }
          }

          else
          {
          }

          swift_beginAccess();
          v93 = *(v28 + 64);
          v94 = *(v93 + 16);

          if (v94)
          {
            v95 = (v93 + 56);
            do
            {
              v96 = *v95;
              if (*v95)
              {

                sub_1D6213004(v149, a2, v96);
                if (v4)
                {
                  goto LABEL_215;
                }
              }

              v95 += 4;
              --v94;
            }

            while (v94);
          }

LABEL_89:

          sub_1D5C8C974(v210);
          v22 = v145;
          v15 = v146;
          a1 = v149;
          goto LABEL_6;
        case 6uLL:
          swift_beginAccess();
          v58 = *(v28 + 56);
          sub_1D5C8C900(v210, &v199);

          sub_1D621AA44(a1, a2, v58, v59);
          if (v4)
          {
            goto LABEL_216;
          }

          if (*(v28 + 74) == 255)
          {
            goto LABEL_5;
          }

          v60 = *(v28 + 72) | (*(v28 + 74) << 16);
          if (!WORD1(v60))
          {
            goto LABEL_5;
          }

          v61 = *(v28 + 64);
          if (WORD1(v60) == 1)
          {
            if ((v60 & 0x100) == 0)
            {
              sub_1D610CA74(v61, v60, 1, sub_1D610CA28, sub_1D610CA5C);
              sub_1D620B270(a1, a2, v61);
LABEL_180:
              sub_1D5C8C974(v210);
              sub_1D62B6F70(v61, v60);
              goto LABEL_6;
            }

            if (v60 >= 4u)
            {
              goto LABEL_126;
            }

            if (!v61)
            {
              sub_1D62B6F70(0, v60);
              v110 = 0;
              goto LABEL_127;
            }

            if (v61 == 1)
            {
              sub_1D62B6F70(1, v60);
              v110 = 1;
              goto LABEL_127;
            }

            sub_1D62B7DCC(v61, v60);
            v111 = v61;
            v112 = v60;
            v113 = 1;
LABEL_178:
            sub_1D610CA74(v111, v112, v113, sub_1D610CA28, sub_1D610CA5C);
            sub_1D620B270(a1, a2, v61);
LABEL_179:
            sub_1D62B6F70(v61, v60);
            goto LABEL_180;
          }

          if (BYTE1(v60) == 255)
          {
            goto LABEL_126;
          }

          if ((v60 & 0x100) == 0)
          {
            sub_1D62B7DCC(v61, v60);
            v111 = v61;
            v112 = v60;
            v113 = 2;
            goto LABEL_178;
          }

          if (v60 >= 4u)
          {
            sub_1D62B6F70(v61, v60);
LABEL_126:
            v110 = v61;
LABEL_127:
            sub_1D62B6F70(v110, v60);
            goto LABEL_5;
          }

          if (v61)
          {
            if (v61 != 1)
            {
              sub_1D62B7DCC(v61, v60);
              sub_1D62B7DCC(v61, v60);
              sub_1D610CA74(v61, v60, 2, sub_1D610CA28, sub_1D610CA5C);
              sub_1D620B270(a1, a2, v61);
              sub_1D62B6F70(v61, v60);
              goto LABEL_179;
            }

            sub_1D62B6F70(1, v60);
            sub_1D62B6F70(1, v60);
            v127 = 1;
          }

          else
          {
            sub_1D62B6F70(0, v60);
            sub_1D62B6F70(0, v60);
            v127 = 0;
          }

          sub_1D610CA74(v127, v60, 2, sub_1D60CF6A8, sub_1D60CF6DC);
          goto LABEL_5;
        case 7uLL:
          swift_beginAccess();
          v77 = *(v28 + 48);
          sub_1D5C8C900(v210, &v199);

          v38 = v4;
          sub_1D621B440(a1, a2, v77);
          goto LABEL_59;
        case 8uLL:

          v24 = v4;
          FormatLayeredMediaNodeStyle.bind(binder:context:)(a1, a2);
          goto LABEL_4;
        case 9uLL:

          v24 = v4;
          FormatVideoNodeStyle.bind(binder:context:)(a1, a2);
          goto LABEL_4;
        case 0xAuLL:
          swift_beginAccess();
          v37 = *(v28 + 48);
          sub_1D5C8C900(v210, &v199);

          v38 = v4;
          sub_1D621BBC4(a1, a2, v37);
LABEL_59:
          v4 = v38;
          if (v38)
          {
            goto LABEL_216;
          }

          v78 = *(v28 + 56);
          if (v78)
          {

            sub_1D620B270(a1, a2, v78);
          }

          v79 = *(v28 + 64);
          if (v79)
          {
            sub_1D620E744(a1, a2, v79);
          }

          v80 = *(v28 + 176);
          if (v80 == 254)
          {
            goto LABEL_5;
          }

          v81 = *(v28 + 144);
          v191[0] = *(v28 + 128);
          v191[1] = v81;
          v192 = *(v28 + 160);
          v83 = *(v28 + 96);
          v82 = *(v28 + 112);
          v189 = v83;
          v190 = v82;
          LOBYTE(v193) = v80;
          v201 = v191[0];
          v202 = v81;
          v203 = v192;
          v200 = v82;
          goto LABEL_104;
        case 0xBuLL:
          swift_beginAccess();
          v39 = *(v28 + 48);
          sub_1D5C8C900(v210, &v199);

          sub_1D621C350(a1, a2, v39);
          if (v4)
          {
            goto LABEL_216;
          }

          v40 = *(v28 + 56);
          if (v40)
          {

            sub_1D620B270(a1, a2, v40);
          }

          v41 = *(v28 + 64);
          if (v41)
          {
            sub_1D620E744(a1, a2, v41);
          }

          v42 = *(v28 + 176);
          if (v42 != 254)
          {
            v43 = *(v28 + 144);
            v191[0] = *(v28 + 128);
            v191[1] = v43;
            v192 = *(v28 + 160);
            v44 = *(v28 + 112);
            v189 = *(v28 + 96);
            v190 = v44;
            LOBYTE(v193) = v42;
            v201 = v191[0];
            v202 = v43;
            v203 = v192;
            v200 = v44;
            v199 = v189;
            LOBYTE(v204) = v42;
            sub_1D62B7F58(&v199, &v178);
            FormatShadow.bind(binder:context:)(a1, a2);
            v180 = v191[0];
            v181 = v191[1];
            v182 = v192;
            LOBYTE(v183) = v193;
            v178 = v189;
            v179 = v190;
            sub_1D601144C(&v178);
          }

          v45 = *(v28 + 296);
          v46 = *(v28 + 328);
          v196 = *(v28 + 312);
          v197 = v46;
          v198 = *(v28 + 344);
          v47 = *(v28 + 248);
          v48 = *(v28 + 264);
          v49 = *(v28 + 280);
          v191[1] = *(v28 + 232);
          v192 = v47;
          v193 = v48;
          v51 = *(v28 + 264);
          v50 = *(v28 + 280);
          v195 = *(v28 + 296);
          v194 = v50;
          v52 = *(v28 + 200);
          v189 = *(v28 + 184);
          v190 = v52;
          v191[0] = *(v28 + 216);
          v53 = *(v28 + 328);
          v207 = v196;
          v208 = v53;
          v209 = *(v28 + 344);
          v203 = *(v28 + 248);
          v204 = v51;
          v54 = *(v28 + 232);
          v206 = v45;
          v205 = v49;
          v55 = *(v28 + 200);
          v199 = *(v28 + 184);
          v200 = v55;
          v56 = *(v28 + 216);
          v202 = v54;
          v201 = v56;
          if (sub_1D60081E0(&v199) == 1)
          {
            goto LABEL_5;
          }

          v186 = v207;
          v187 = v208;
          v188 = v209;
          v182 = v203;
          v183 = v204;
          v184 = v205;
          v185 = v206;
          v178 = v199;
          v179 = v200;
          v180 = v201;
          v181 = v202;
          v57 = sub_1D62B4E2C(&v178);
          if (v57 <= 1)
          {
            sub_1D5D04BC4(&v178);
            goto LABEL_5;
          }

          if (v57 != 2)
          {
            goto LABEL_5;
          }

          v109 = sub_1D5D04BC4(&v178);
          v163 = *(v109 + 112);
          v164 = *(v109 + 128);
          v165 = *(v109 + 144);
          v166 = *(v109 + 160);
          v159 = *(v109 + 48);
          v160 = *(v109 + 64);
          v161 = *(v109 + 80);
          v162 = *(v109 + 96);
          v156 = *v109;
          v157 = *(v109 + 16);
          v158 = *(v109 + 32);
          v167 = v189;
          v168 = v190;
          v171 = v192;
          v172 = v193;
          v169 = v191[0];
          v170 = v191[1];
          v177 = v198;
          v175 = v196;
          v176 = v197;
          v173 = v194;
          v174 = v195;
          sub_1D60864C0(&v167, &v150);
          FormatGlassEffect.bind(binder:context:)(a1, a2);
          sub_1D5C8C974(v210);
          sub_1D5D0ABCC(&v189, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
          goto LABEL_6;
        case 0xCuLL:
          swift_beginAccess();
          v67 = *(v28 + 48);
          sub_1D5C8C900(v210, &v199);

          sub_1D621CB10(a1, a2, v67);
          if (v4)
          {
            goto LABEL_216;
          }

          v68 = *(v28 + 56);
          v69 = *(v28 + 104);
          LOBYTE(v171) = *(v28 + 120);
          v70 = *(v28 + 72);
          v167 = v68;
          v168 = v70;
          v169 = *(v28 + 88);
          v170 = v69;
          v71 = v68;
          if (v171 <= 1u)
          {
            if (v171)
            {
              v201 = v169;
              v202 = v170;
              LOBYTE(v203) = v171;
              v200 = v168;
              v199 = v167;
              sub_1D619916C(&v199, &v189);
              sub_1D6213184(a1, a2, v71);
              sub_1D5D0ABCC(&v167, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
            }

LABEL_70:
            v22 = v145;
            v75 = *(v28 + 128);
            if (!v75)
            {
              goto LABEL_72;
            }

LABEL_71:
            sub_1D620E744(a1, a2, v75);
            goto LABEL_72;
          }

          if (v171 != 2)
          {
            goto LABEL_70;
          }

          v72 = v170;
          v201 = v169;
          v202 = v170;
          LOBYTE(v203) = v171;
          v200 = v168;
          v199 = v167;
          sub_1D619916C(&v199, &v189);
          sub_1D6212DD8(a1, a2, v71);
          v22 = v145;
          if (v72)
          {
            v73 = v145;

            v74 = v149;
            sub_1D620B270(v149, a2, v72);
            sub_1D620B270(v74, a2, *(&v72 + 1));
            v4 = 0;
            sub_1D5CDE22C(v72, *(&v72 + 1));
            sub_1D5D0ABCC(&v167, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
            a1 = v149;
            v15 = v146;
            v22 = v73;
            v75 = *(v28 + 128);
            if (!v75)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          sub_1D5D0ABCC(&v167, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
          a1 = v149;
          v15 = v146;
          v75 = *(v28 + 128);
          if (v75)
          {
            goto LABEL_71;
          }

LABEL_72:
          v80 = *(v28 + 216);
          if (v80 == 254)
          {
            goto LABEL_5;
          }

          v85 = *(v28 + 152);
          v86 = *(v28 + 168);
          v87 = *(v28 + 184);
          v191[0] = v86;
          v191[1] = v87;
          v88 = *(v28 + 200);
          v192 = v88;
          v83 = *(v28 + 136);
LABEL_103:
          v189 = v83;
          v190 = v85;
          LOBYTE(v193) = v80;
          v201 = v86;
          v202 = v87;
          v203 = v88;
          v200 = v85;
LABEL_104:
          v199 = v83;
          LOBYTE(v204) = v80;
          sub_1D62B7F58(&v199, &v178);
          FormatShadow.bind(binder:context:)(a1, a2);
          sub_1D5C8C974(v210);
          v180 = v191[0];
          v181 = v191[1];
          v182 = v192;
          LOBYTE(v183) = v193;
          v178 = v189;
          v179 = v190;
          sub_1D601144C(&v178);
          goto LABEL_6;
        case 0xDuLL:
          swift_beginAccess();
          v36 = *(v28 + 72);
          if (v36)
          {
            sub_1D5C8C900(v210, &v199);

            sub_1D621397C(a1, a2, v36);
            if (v4)
            {
              goto LABEL_216;
            }
          }

          else
          {
          }

          swift_beginAccess();
          v89 = *(v28 + 88);
          v90 = *(v89 + 16);

          if (!v90)
          {
            goto LABEL_89;
          }

          v91 = (v89 + 72);
          while (2)
          {
            v92 = *v91;
            if (!*v91)
            {
              goto LABEL_77;
            }

            sub_1D621397C(v149, a2, v92);
            if (!v4)
            {

LABEL_77:
              v91 += 7;
              if (!--v90)
              {
                goto LABEL_89;
              }

              continue;
            }

            break;
          }

LABEL_215:

          goto LABEL_216;
        case 0xEuLL:

          v24 = v4;
          FormatVideoPlayerNodeStyle.bind(binder:context:)(a1, a2);
LABEL_4:
          v4 = v24;
          if (!v24)
          {
            goto LABEL_5;
          }

          goto LABEL_217;
        case 0xFuLL:
          swift_beginAccess();
          v33 = *(v28 + 48);
          sub_1D5C8C900(v210, &v199);

          sub_1D621D5F8(a1, a2, v33);
          if (v4)
          {
            goto LABEL_216;
          }

          v34 = *(v28 + 56);
          if (v34)
          {

            sub_1D620B270(a1, a2, v34);
            v35 = v22;
          }

          else
          {
            v35 = v22;
          }

          if ((~*(v28 + 64) & 0xF000000000000007) != 0)
          {
            *&v199 = *(v28 + 64);

            FormatColor.bind(binder:context:)(a1, a2);
          }

          if ((~*(v28 + 72) & 0xF000000000000007) != 0)
          {
            *&v199 = *(v28 + 72);

            FormatColor.bind(binder:context:)(a1, a2);
            sub_1D5C8C974(v210);
          }

          else
          {
            sub_1D5C8C974(v210);
          }

          goto LABEL_121;
        case 0x11uLL:
          swift_beginAccess();
          v62 = *(v28 + 48);
          sub_1D5C8C900(v210, &v199);

          sub_1D621D854(a1, a2, v62);
          if (v4)
          {
            goto LABEL_216;
          }

          v35 = v22;

          if ((~*(v28 + 56) & 0xF000000000000007) != 0)
          {
            *&v199 = *(v28 + 56);

            FormatColor.bind(binder:context:)(a1, a2);
          }

          if ((~*(v28 + 64) & 0xF000000000000007) != 0)
          {
            *&v199 = *(v28 + 64);

            FormatColor.bind(binder:context:)(a1, a2);
          }

          v63 = *(v28 + 80);
          v64 = v146;
          switch(v63)
          {
            case 0uLL:
              sub_1D5C8C974(v210);
              v105 = 0;
LABEL_118:
              sub_1D5D0A5AC(v105);
LABEL_119:
              v15 = v64;
              goto LABEL_6;
            case 1uLL:
              sub_1D5C8C974(v210);
              v105 = 1;
              goto LABEL_118;
            case 2uLL:
              sub_1D5C8C974(v210);
              goto LABEL_119;
          }

          v106 = a1;
          v108 = *(v63 + 16);
          v107 = *(v63 + 24);
          sub_1D5D0A59C(v63);
          sub_1D5D0A57C(v108);
          sub_1D5D0A57C(v107);
          sub_1D6248A90(v106, a2, v108, v107);
          sub_1D5C8C974(v210);
          sub_1D5D0A58C(v108);
          sub_1D5D0A58C(v107);
          sub_1D5D0A5AC(v63);
          a1 = v149;
LABEL_121:
          v22 = v35;
          v15 = v146;
          goto LABEL_6;
        default:
          swift_beginAccess();
          v29 = *(v28 + 48);
          sub_1D5C8C900(v210, &v199);

          sub_1D62180F8(a1, a2, v29);
          if (v4)
          {
            goto LABEL_216;
          }

          v30 = *(v28 + 56);
          if (v30)
          {

            sub_1D620B270(a1, a2, v30);
            v31 = a2;
            v32 = v22;
          }

          else
          {
            v31 = a2;
            v32 = v22;
          }

          if ((~*(v28 + 64) & 0xF000000000000007) != 0)
          {
            *&v199 = *(v28 + 64);

            FormatBackground.bind(binder:context:)(a1, v31);
          }

          v97 = v146;
          v22 = v32;
          v98 = *(v28 + 72);
          a2 = v31;
          if (v98)
          {
            sub_1D620E744(a1, v31, v98);
          }

          v15 = v97;
          v80 = *(v28 + 184);
          if (v80 == 254)
          {
            goto LABEL_5;
          }

          v85 = *(v28 + 120);
          v86 = *(v28 + 136);
          v87 = *(v28 + 152);
          v191[0] = v86;
          v191[1] = v87;
          v88 = *(v28 + 168);
          v192 = v88;
          v83 = *(v28 + 104);
          goto LABEL_103;
      }
    }
  }
}

uint64_t sub_1D62180F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v30 = *(a3 + 16);
  if (!v30)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v39 = a3 + 32;
  while (1)
  {
    v7 = (v39 + 160 * v6);
    v8 = v7[7];
    v37[3] = v7[6];
    v37[4] = v8;
    *v38 = v7[8];
    *&v38[9] = *(v7 + 137);
    v9 = v7[3];
    v36 = v7[2];
    v37[0] = v9;
    v10 = v7[5];
    v37[1] = v7[4];
    v37[2] = v10;
    v11 = v7[1];
    v34 = *v7;
    v35 = v11;
    v12 = v11;
    if ((~v11 & 0xF000000000000007) == 0)
    {
      sub_1D5D044D4(&v34, &v31);
      v13 = *(&v35 + 1);
      if (!*(&v35 + 1))
      {
        goto LABEL_10;
      }

LABEL_9:
      sub_1D620E744(v5, a2, v13);
      if (v3)
      {
        return sub_1D5D04BEC(&v34);
      }

      goto LABEL_10;
    }

    sub_1D5D044D4(&v34, &v31);
    sub_1D5D04BD4(v12);
    FormatBackground.bind(binder:context:)(v5, a2);
    if (v3)
    {
      goto LABEL_46;
    }

    v13 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      goto LABEL_9;
    }

LABEL_10:
    v14 = v38[8];
    if (v38[8] != 254)
    {
      sub_1D62B5354(v37 + 8, &v31, &qword_1EDF33718, &type metadata for FormatShadow);

      FormatColor.bind(binder:context:)(v5, a2);
      if (v3)
      {
        sub_1D5D0ABCC(v37 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_46:

        return sub_1D5D04BEC(&v34);
      }

      if (v14 <= 2)
      {
        if (v14)
        {
          if (v14 == 1)
          {
            sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
            if (swift_dynamicCast())
            {
              v18 = *(&v32 + 1);
              v17 = v33;
              __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
              (*(v17 + 8))(v5, a2, v18, v17);
              __swift_destroy_boxed_opaque_existential_1(&v31);
            }

            else
            {
              v33 = 0;
              v31 = 0u;
              v32 = 0u;
              sub_1D5BFB774(&v31, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
            }

            if (!swift_dynamicCast())
            {
LABEL_36:
              sub_1D5D0ABCC(v37 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
              v31 = 0u;
              v32 = 0u;
              v33 = 0;
              sub_1D5BFB774(&v31, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
              goto LABEL_37;
            }

            goto LABEL_33;
          }

          goto LABEL_22;
        }
      }

      else
      {
        if (v14 <= 4)
        {
          if (v14 != 3)
          {
            sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
            if (swift_dynamicCast())
            {
              v15 = *(&v32 + 1);
              v16 = v33;
              __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
              (*(v16 + 8))(v5, a2, v15, v16);
              __swift_destroy_boxed_opaque_existential_1(&v31);
              goto LABEL_32;
            }

            goto LABEL_31;
          }

LABEL_22:
          sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          if (swift_dynamicCast())
          {
            v19 = *(&v32 + 1);
            v20 = v33;
            __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
            (*(v20 + 8))(v5, a2, v19, v20);
            __swift_destroy_boxed_opaque_existential_1(&v31);
          }

          else
          {
            v33 = 0;
            v31 = 0u;
            v32 = 0u;
            sub_1D5BFB774(&v31, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          }

          if (swift_dynamicCast())
          {
            v21 = *(&v32 + 1);
            v22 = v33;
            __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
            (*(v22 + 8))(v5, a2, v21, v22);
            __swift_destroy_boxed_opaque_existential_1(&v31);
          }

          else
          {
            v33 = 0;
            v31 = 0u;
            v32 = 0u;
            sub_1D5BFB774(&v31, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          }

          if (swift_dynamicCast())
          {
            v23 = *(&v32 + 1);
            v24 = v33;
            __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
            (*(v24 + 8))(v5, a2, v23, v24);
            __swift_destroy_boxed_opaque_existential_1(&v31);
            goto LABEL_32;
          }

LABEL_31:
          v33 = 0;
          v31 = 0u;
          v32 = 0u;
          sub_1D5BFB774(&v31, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
LABEL_32:
          if (!swift_dynamicCast())
          {
            goto LABEL_36;
          }

LABEL_33:
          v25 = *(&v32 + 1);
          v26 = v33;
          __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
          (*(v26 + 8))(v5, a2, v25, v26);
          sub_1D5D0ABCC(v37 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
          __swift_destroy_boxed_opaque_existential_1(&v31);
          goto LABEL_37;
        }

        if (v14 == 5)
        {
          goto LABEL_22;
        }
      }

      sub_1D5D0ABCC(v37 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
    }

LABEL_37:
    if (*&v38[16])
    {
      v27 = *(*&v38[16] + 16);
      if (v27)
      {
        break;
      }
    }

LABEL_3:
    result = sub_1D5D04BEC(&v34);
    if (++v6 == v30)
    {
      return result;
    }
  }

  v28 = (*&v38[16] + 40);
  while (1)
  {
    if ((*v28 & 1) == 0)
    {
      *&v31 = *(v28 - 1);
      v29 = v31;
      swift_retain_n();
      FormatFloat.bind(binder:context:)(v5, a2);
      sub_1D62B72BC(v29, 0);

      if (v3)
      {
        return sub_1D5D04BEC(&v34);
      }
    }

    v28 += 16;
    if (!--v27)
    {
      goto LABEL_3;
    }
  }
}

void sub_1D62188B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v234 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for FormatOption(0);
  v11 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231, v12);
  v218 = &v211 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v217 = &v211 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v225 = (&v211 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v220 = &v211 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v219 = &v211 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v235 = &v211 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v227 = &v211 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v226 = &v211 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v228 = (&v211 - v37);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v222 = &v211 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v221 = &v211 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v224 = &v211 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v223 = &v211 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v230 = &v211 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v229 = &v211 - v55;
  v242 = type metadata accessor for FormatItemNodeAction(0);
  v56 = *(v242 - 8);
  MEMORY[0x1EEE9AC00](v242, v57);
  v238 = &v211 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v59 - 8, v60);
  v62 = &v211 - v61;
  v246 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  MEMORY[0x1EEE9AC00](v246, v63);
  v66 = &v211 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a3 + 16);
  if (!v67)
  {
    return;
  }

  v68 = a3 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
  v241 = (v56 + 48);
  v215 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v216 = (v11 + 56);
  v69 = *(v64 + 72);
  v239 = a1;
  v240 = v69;
  v244 = v67 - 1;
  v70 = qword_1EDF2AF80;
  v243 = a2;
  v236 = &v211 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v245 = v68;
    sub_1D62B50EC(v68, v66, type metadata accessor for FormatItemNodeStyle.Selector);
    v264 = v66[80];
    v71 = *(v66 + 2);
    v263[0] = *(v66 + 1);
    v263[1] = v71;
    v72 = *(v66 + 4);
    v263[2] = *(v66 + 3);
    v263[3] = v72;
    v73 = *&v263[0];
    if ((v264 & 0xFE) != 0x7E && (*&v263[0] & 0xF000000000000007) != 0xF000000000000007)
    {
      v250 = *&v263[0];
      sub_1D62B5354(v263, &v247, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      sub_1D5CFCFAC(v73);
      FormatColor.bind(binder:context:)(v239, v243);
      if (v4)
      {
        sub_1D5D0ABCC(v263, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);

        v180 = type metadata accessor for FormatItemNodeStyle.Selector;
        v181 = v66;
        goto LABEL_167;
      }

      sub_1D5D0ABCC(v263, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
    }

    v75 = *(v66 + 88);
    *(v249 + 9) = *(v66 + 129);
    v76 = *(v66 + 104);
    v247 = v75;
    v248 = v76;
    v249[0] = *(v66 + 120);
    if (BYTE8(v249[1]) > 1u)
    {
      goto LABEL_20;
    }

    v77 = v247;
    v78 = *&v249[1];
    if (BYTE8(v249[1]))
    {
      if ((v247 & 0xF000000000000007) == 0xD000000000000007)
      {
        goto LABEL_19;
      }

      if ((v247 & 0xF000000000000007) == 0xF000000000000007)
      {
        sub_1D5D0ABCC(&v247, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
LABEL_19:
        sub_1D5D0ABCC(&v247, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
LABEL_20:
        v90 = v242;
        v91 = v70;
        goto LABEL_29;
      }

      v92 = *(&v247 + 1);
      v262[0] = v247;
      v237 = v4;
      v93 = *(&v248 + 1);
      v232 = *(&v249[0] + 1);
      v94 = *&v249[0];
      v233 = v248;
      sub_1D62B5354(&v247, &v250, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      sub_1D62B5354(&v247, &v250, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      v95 = v77;
      v96 = v243;
      sub_1D62B54E4(v95, v92, v233, v93, v94, v232, v78, 1);
      v97 = v237;
      FormatFloat.bind(binder:context:)(v239, v96);
      v4 = v97;
      if (v97)
      {
        sub_1D5D0ABCC(&v247, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
        sub_1D5D0ABCC(&v247, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

        v180 = type metadata accessor for FormatItemNodeStyle.Selector;
        v181 = v236;
        goto LABEL_167;
      }

      sub_1D5D0ABCC(&v247, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      sub_1D5D0ABCC(&v247, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

      v66 = v236;
      goto LABEL_28;
    }

    v79 = *&v249[1] & 0xF000000000000007;
    if ((*&v249[1] & 0xF000000000000007) == 0xD000000000000007)
    {
      goto LABEL_27;
    }

    if ((~v247 & 0xF000000000000007) != 0)
    {
      v262[0] = v247;
      sub_1D62B5354(&v247, &v250, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      sub_1D62B5354(&v247, &v250, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      sub_1D5CFCFAC(v77);
      FormatColor.bind(binder:context:)(v239, v243);
      if (v4)
      {
        goto LABEL_173;
      }

      v89 = v243;
    }

    else
    {
      v233 = v62;
      v80 = *(&v247 + 1);
      v81 = v248;
      v237 = v4;
      v82 = *(&v248 + 1);
      v83 = *(&v249[0] + 1);
      v84 = *&v249[0];
      sub_1D62B5354(&v247, &v250, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      v85 = v81;
      v62 = v233;
      v86 = v82;
      v87 = v84;
      v66 = v236;
      v4 = v237;
      v88 = v83;
      v89 = v243;
      sub_1D62B54E4(v77, v80, v85, v86, v87, v88, v78, 0);
    }

    if (v79 == 0xF000000000000007)
    {
      sub_1D5D0ABCC(&v247, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
LABEL_27:
      sub_1D5D0ABCC(&v247, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
LABEL_28:
      v90 = v242;
      v91 = qword_1EDF2AF80;
      goto LABEL_29;
    }

    v250 = v78;

    FormatFloat.bind(binder:context:)(v239, v89);
    v91 = qword_1EDF2AF80;
    if (v4)
    {
LABEL_173:
      sub_1D5D0ABCC(&v247, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

      sub_1D62B51D0(v66, type metadata accessor for FormatItemNodeStyle.Selector);
      sub_1D5D0ABCC(&v247, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
      return;
    }

    sub_1D5D0ABCC(&v247, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);

    sub_1D5D0ABCC(&v247, &qword_1EDF2CAB8, &type metadata for FormatCellSelection);
    v90 = v242;
LABEL_29:
    sub_1D5C00D70(&v66[*(v246 + 28)], v62, v91, type metadata accessor for FormatItemNodeAction);
    if ((*v241)(v62, 1, v90) == 1)
    {
      sub_1D5B6EF64(v62, v91, type metadata accessor for FormatItemNodeAction);
      goto LABEL_33;
    }

    sub_1D62B50EC(v62, v238, type metadata accessor for FormatItemNodeAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) >= 6)
    {
      break;
    }

LABEL_32:
    sub_1D62B51D0(v62, type metadata accessor for FormatItemNodeAction);
LABEL_33:
    v99 = &v66[*(v246 + 40)];
    v100 = *v99;
    v101 = v99[1];
    if (*v99 > 1)
    {
      if (v100 == 2 || v100 == 3)
      {
LABEL_38:
        v70 = v91;
        sub_1D62B51D0(v66, type metadata accessor for FormatItemNodeStyle.Selector);
        goto LABEL_39;
      }
    }

    else if (v100 < 2)
    {
      goto LABEL_38;
    }

    sub_1D62B5DD0(*v99);
    v102 = v239;
    v103 = v243;
    sub_1D620B270(v239, v243, v100);
    if (v4)
    {
      sub_1D62B51D0(v66, type metadata accessor for FormatItemNodeStyle.Selector);
      sub_1D62B5E14(v100, v101);
      return;
    }

    sub_1D620B270(v102, v103, v101);
    v4 = 0;
    v70 = v91;
    sub_1D62B51D0(v66, type metadata accessor for FormatItemNodeStyle.Selector);
    sub_1D62B5E14(v100, v101);
LABEL_39:
    if (!v244)
    {
      return;
    }

    --v244;
    v68 = v245 + v240;
  }

  if (EnumCaseMultiPayload)
  {
    v111 = v234;
    sub_1D5D5E33C(v238, v234, type metadata accessor for FormatCommandOpenURL);
    sub_1D5F86DA0(v243);
    if (v4)
    {
      sub_1D62B51D0(v111, type metadata accessor for FormatCommandOpenURL);
      sub_1D62B51D0(v66, type metadata accessor for FormatItemNodeStyle.Selector);
      goto LABEL_172;
    }

    sub_1D62B51D0(v111, type metadata accessor for FormatCommandOpenURL);
    goto LABEL_32;
  }

  sub_1D62B5F18(v238, v262);
  sub_1D62B5F18(v262, &v250);
  v104 = v250;
  v105 = v251;
  v106 = v252;
  v107 = v254;
  if (v255)
  {
    v108 = 8;
  }

  else
  {
    v108 = 0;
  }

  v109 = v108 & 0xFFFFFFF8 | (v254 >> 11) & 7;
  v110 = v235;
  if (v109 <= 4)
  {
    if (v109 > 1)
    {
      if (v109 != 3)
      {
        goto LABEL_101;
      }

LABEL_81:
      if (v252 != 1 || (~v250 & 0xF000000000000007) == 0)
      {
        goto LABEL_101;
      }

      *&v256 = v250;

      FormatTextContent.bind(binder:context:)(v239, v243);
      if (v4)
      {
LABEL_175:

        goto LABEL_179;
      }

LABEL_84:

LABEL_101:
      sub_1D62B5F74(v262);
      goto LABEL_32;
    }

    if (v109)
    {
      goto LABEL_101;
    }

    v112 = (v253 >> 3) & 7;
    if (v112 <= 1)
    {
      if (!v112)
      {
        goto LABEL_81;
      }

      goto LABEL_101;
    }

    if (v112 == 2 || v112 == 3 || !(v253 >> 6) || v253 >> 6 == 1)
    {
      goto LABEL_81;
    }

    v113 = v253 & 7;
    if (v113 > 1)
    {
      goto LABEL_101;
    }

LABEL_70:
    if (!v113 || (~v251 & 0xF000000000000007) == 0)
    {
      goto LABEL_101;
    }

    *&v256 = v251;

    FormatTextContent.bind(binder:context:)(v239, v243);
    if (v4)
    {
      goto LABEL_175;
    }

    goto LABEL_84;
  }

  if (v109 <= 6)
  {
    if (v109 == 5)
    {
      goto LABEL_101;
    }

    if (!(v253 >> 6) || v253 >> 6 == 1)
    {
      goto LABEL_81;
    }

    v113 = v253 & 0x3F;
    if (v113 > 1)
    {
      goto LABEL_101;
    }

    goto LABEL_70;
  }

  if (v109 != 7 || !(v254 >> 14))
  {
    goto LABEL_101;
  }

  if (v254 >> 14 == 1)
  {
    v259 = v250;
    v260 = v251;
    v261 = v252;
    v265 = 5;
    sub_1D62B7EFC(v262, &v256);
    v233 = sub_1D703E0C8(&v259, &v265);
    if (v4)
    {
      goto LABEL_179;
    }

    v237 = v104;
    v114 = *(v243 + v215);
    v115 = *(v114 + 16);
    swift_beginAccess();
    if (*(*(v115 + 16) + 16))
    {
      sub_1D5B69D90(v237, v105);
      if (v116)
      {
        swift_endAccess();
        v117 = v227;
        sub_1D5D25108(v227);
        v118 = v117;
        v119 = v226;
        sub_1D5D5E33C(v118, v226, type metadata accessor for FormatOption);
        v120 = v230;
        sub_1D5D5E33C(v119, v230, type metadata accessor for FormatOption);
        goto LABEL_95;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    if (*(*(v114 + 24) + 16))
    {
      sub_1D5B69D90(v237, v105);
      if (v132)
      {
        swift_endAccess();
        v120 = v230;
        sub_1D5D25108(v230);
LABEL_95:
        v237 = *v216;
        (v237)(v120, 0, 1, v231);
        v133 = v228;
        sub_1D5D5E33C(v120, v228, type metadata accessor for FormatOption);
        *&v256 = v133[2];
        v134 = v233;

        FormatOptionValue.type.getter(v135, &v259);
        v136 = v134;
        if (sub_1D6183C84(v259, v134))
        {
          swift_bridgeObjectRelease_n();
          v137 = v133;
          v138 = v229;
          sub_1D5D5E33C(v137, v229, type metadata accessor for FormatOption);
          (v237)(v138, 0, 1, v231);
          goto LABEL_99;
        }

        v246 = type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v183 = v182;
        v184 = *v133;
        v185 = v133[1];
        v186 = v133;
        *&v256 = v133[2];

        FormatOptionValue.type.getter(v187, &v259);
        v188 = v259;
        *v183 = v184;
        *(v183 + 8) = v185;
        *(v183 + 16) = v188;
        *(v183 + 24) = v136;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_177:

        sub_1D62B51D0(v236, type metadata accessor for FormatItemNodeStyle.Selector);
        v189 = type metadata accessor for FormatOption;
        v190 = v186;
        goto LABEL_180;
      }
    }

    swift_endAccess();
    v139 = v231;
    v140 = *v216;
    (*v216)(v230, 1, 1, v231);

    sub_1D5B6EF64(v230, &qword_1EDF337F0, type metadata accessor for FormatOption);
    if ((*(v243 + 48) & 1) == 0)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v191 = v237;
      v191[1] = v105;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_179;
    }

    v138 = v229;
    (v140)(v229, 1, 1, v139);
LABEL_99:
    v141 = v138;
LABEL_100:
    sub_1D5B6EF64(v141, &qword_1EDF337F0, type metadata accessor for FormatOption);
    goto LABEL_101;
  }

  v121 = (v254 >> 7) & 0xE | (v254 >> 3) & 1;
  v122 = 1 << ((v254 >> 7) & 0xE | ((v254 & 8) != 0));
  if ((v122 & 0x6FE0) != 0)
  {
LABEL_87:
    switch(v121)
    {
      case 0u:
      case 1u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0xEu:
        goto LABEL_101;
      case 2u:
        v169 = v107 >> 4;
        goto LABEL_142;
      case 3u:
      case 4u:
        v237 = v104;
        v259 = v104;
        v260 = v105;
        v261 = v106;
        v265 = 5;
        v123 = v106;
        sub_1D62B7EFC(v262, &v256);

        v233 = v123;

        v214 = sub_1D703E0C8(&v259, &v265);
        if (v4)
        {
          goto LABEL_182;
        }

        v124 = *(v243 + v215);
        v125 = *(v124 + 16);
        swift_beginAccess();
        v126 = v225;
        if (*(*(v125 + 16) + 16))
        {
          sub_1D5B69D90(v237, v105);
          if (v127)
          {
            swift_endAccess();
            v128 = v218;
            sub_1D5D25108(v218);
            v129 = v128;
            v130 = v217;
            sub_1D5D5E33C(v129, v217, type metadata accessor for FormatOption);
            v131 = v222;
            sub_1D5D5E33C(v130, v222, type metadata accessor for FormatOption);
LABEL_115:
            v237 = *v216;
            (v237)(v131, 0, 1, v231);
            sub_1D5D5E33C(v131, v126, type metadata accessor for FormatOption);
            *&v256 = v126[2];
            v161 = v214;

            FormatOptionValue.type.getter(v162, &v259);
            v163 = v161;
            if ((sub_1D6183C84(v259, v161) & 1) == 0)
            {
              v246 = type metadata accessor for FormatDerivedDataError(0);
              sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
              swift_allocError();
              v201 = v200;
              v232 = v105;
              v202 = v225;
              v203 = *v225;
              v204 = v225[1];
              *&v256 = v225[2];

              FormatOptionValue.type.getter(v205, &v259);
              v206 = v259;
              *v201 = v203;
              *(v201 + 8) = v204;
              *(v201 + 16) = v206;
              *(v201 + 24) = v163;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              sub_1D62B51D0(v236, type metadata accessor for FormatItemNodeStyle.Selector);
              v189 = type metadata accessor for FormatOption;
              v190 = v202;
              goto LABEL_180;
            }

            swift_bridgeObjectRelease_n();
            v164 = v221;
            sub_1D5D5E33C(v225, v221, type metadata accessor for FormatOption);
            (v237)(v164, 0, 1, v231);
            goto LABEL_145;
          }
        }

        swift_endAccess();
        swift_beginAccess();
        if (*(*(v124 + 24) + 16))
        {
          sub_1D5B69D90(v237, v105);
          if (v160)
          {
            swift_endAccess();
            v131 = v222;
            sub_1D5D25108(v222);
            goto LABEL_115;
          }
        }

        swift_endAccess();
        v174 = v222;
        v213 = *v216;
        (v213)(v222, 1, 1, v231);

        sub_1D5B6EF64(v174, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if (*(v243 + 48))
        {

          v164 = v221;
          (v213)(v221, 1, 1, v231);
LABEL_145:
          v141 = v164;
          goto LABEL_100;
        }

        type metadata accessor for FormatLayoutError(0);
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        *v207 = v237;
        v207[1] = v105;
        break;
      case 0xCu:
        v165 = v105;
        goto LABEL_134;
      default:
        goto LABEL_123;
    }

LABEL_187:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_179;
  }

  if ((v122 & 0x18) != 0)
  {
    v213 = ((v254 >> 7) & 0xE | (v254 >> 3) & 1u);
    v237 = v250;
    v259 = v250;
    v260 = v251;
    v261 = v252;
    v265 = 5;
    v142 = v252;
    sub_1D62B7EFC(v262, &v256);

    v233 = v142;

    v214 = sub_1D703E0C8(&v259, &v265);
    if (v4)
    {
LABEL_182:
      sub_1D62B51D0(v66, type metadata accessor for FormatItemNodeStyle.Selector);

      goto LABEL_181;
    }

    v143 = *(v243 + v215);
    v144 = *(v143 + 16);
    swift_beginAccess();
    v145 = *(*(v144 + 16) + 16);
    v146 = v224;
    v232 = v105;
    if (v145)
    {
      sub_1D5B69D90(v237, v105);
      if (v147)
      {
        swift_endAccess();
        v148 = v220;
        sub_1D5D25108(v220);
        v149 = v148;
        v150 = v219;
        sub_1D5D5E33C(v149, v219, type metadata accessor for FormatOption);
        sub_1D5D5E33C(v150, v146, type metadata accessor for FormatOption);
        goto LABEL_110;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    if (*(*(v143 + 24) + 16) && (sub_1D5B69D90(v237, v105), (v151 & 1) != 0))
    {
      swift_endAccess();
      sub_1D5D25108(v146);
LABEL_110:
      v152 = v146;
      v153 = v146;
      v154 = v231;
      v212 = *v216;
      (v212)(v152, 0, 1, v231);
      sub_1D5D5E33C(v153, v110, type metadata accessor for FormatOption);
      *&v256 = v110[2];
      v155 = v214;

      FormatOptionValue.type.getter(v156, &v259);
      v157 = v155;
      if ((sub_1D6183C84(v259, v155) & 1) == 0)
      {
        v246 = type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v193 = v192;
        v186 = v110;
        v194 = *v110;
        v195 = v110[1];
        *&v256 = v186[2];

        FormatOptionValue.type.getter(v196, &v259);
        v197 = v259;
        *v193 = v194;
        *(v193 + 8) = v195;
        *(v193 + 16) = v197;
        *(v193 + 24) = v157;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_177;
      }

      swift_bridgeObjectRelease_n();
      v158 = v110;
      v159 = v223;
      sub_1D5D5E33C(v158, v223, type metadata accessor for FormatOption);
      (v212)(v159, 0, 1, v154);
      v66 = v236;
    }

    else
    {
      swift_endAccess();
      v171 = *v216;
      (*v216)(v146, 1, 1, v231);

      sub_1D5B6EF64(v146, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v66 = v236;
      if ((*(v243 + 48) & 1) == 0)
      {
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        v198 = v232;
        *v199 = v237;
        v199[1] = v198;
        goto LABEL_187;
      }

      v159 = v223;
      v171();
    }

    v104 = v237;
    sub_1D5B6EF64(v159, &qword_1EDF337F0, type metadata accessor for FormatOption);
    v91 = qword_1EDF2AF80;
    v105 = v232;
    v106 = v233;
    v121 = v213;
    goto LABEL_87;
  }

  if (v121 == 12)
  {
    v165 = v251;
    if ((v251 & 0x80) != 0)
    {
      LOBYTE(v259) = v251 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v105 = v66;
        v166 = *(&v257 + 1);
        v167 = v258;
        __swift_project_boxed_opaque_existential_1(&v256, *(&v257 + 1));
        (*(v167 + 8))(v239, v243, v166, v167);
        if (v4)
        {
          goto LABEL_188;
        }

        __swift_destroy_boxed_opaque_existential_1(&v256);
        v66 = v105;
        v91 = qword_1EDF2AF80;
        v168 = v165 >> 6;
        if (!(v165 >> 6))
        {
          goto LABEL_101;
        }
      }

      else
      {
        v258 = 0;
        v256 = 0u;
        v257 = 0u;
        sub_1D5BFB774(&v256, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        v168 = v105 >> 6;
        if (!(v105 >> 6))
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
LABEL_134:
      v168 = v165 >> 6;
      if (!(v165 >> 6))
      {
        goto LABEL_101;
      }
    }

    if (v168 != 1)
    {
      LOBYTE(v259) = v165 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v105 = v66;
        goto LABEL_138;
      }

      v258 = 0;
      v256 = 0u;
      v257 = 0u;
      sub_1D5BFB774(&v256, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }

    goto LABEL_101;
  }

LABEL_123:
  if (v121 < 2)
  {
    goto LABEL_87;
  }

  v169 = v107 >> 4;
  if (((1 << v169) & 0x1EF7) != 0)
  {
LABEL_142:
    switch(v169)
    {
      case 3:
        goto LABEL_154;
      case 8:
        goto LABEL_162;
      default:
        goto LABEL_101;
    }
  }

  if (v169 == 3)
  {
    v170 = v106;
    if (BYTE1(v106) >= 4u || v106 > 0xFDu)
    {
      goto LABEL_153;
    }

    v259 = v104;
    v260 = v105;
    LOBYTE(v261) = v106;
    sub_1D62B7EFC(v262, &v256);
    sub_1D62B40EC(v243);
    if (!v4)
    {
      sub_1D5E1E15C(v259, v260, v261);
LABEL_153:
      LOWORD(v106) = v170;
LABEL_154:
      if (BYTE1(v106) < 4u && v106 <= 0xFDu)
      {
        *&v256 = v104;
        *(&v256 + 1) = v105;
        LOBYTE(v257) = v106;
        sub_1D5E1DCBC(v104, v105, v106);
        sub_1D62B40EC(v243);
        if (v4)
        {
          v209 = *(&v256 + 1);
          v208 = v256;
          v210 = v257;
          goto LABEL_191;
        }

        sub_1D5E1E15C(v256, *(&v256 + 1), v257);
      }

      sub_1D62B5F74(v262);
LABEL_159:
      v91 = qword_1EDF2AF80;
      goto LABEL_32;
    }

    v208 = v259;
    v209 = v260;
    v210 = v261;
LABEL_191:
    sub_1D5E1E15C(v208, v209, v210);
LABEL_179:
    v189 = type metadata accessor for FormatItemNodeStyle.Selector;
    v190 = v66;
LABEL_180:
    sub_1D62B51D0(v190, v189);
    goto LABEL_181;
  }

  if ((v105 & 0x80) == 0)
  {
    goto LABEL_162;
  }

  v175 = v105;
  v105 = v66;
  v176 = v175;
  LOBYTE(v259) = v175 & 0x3F;
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (!swift_dynamicCast())
  {
    v258 = 0;
    v256 = 0u;
    v257 = 0u;
    sub_1D5BFB774(&v256, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
LABEL_161:
    v66 = v105;
    v91 = qword_1EDF2AF80;
    LOBYTE(v105) = v176;
LABEL_162:
    if (v105 >> 6 && v105 >> 6 != 1)
    {
      v179 = v105;
      v105 = v66;
      LOBYTE(v259) = v179 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v258 = 0;
        v256 = 0u;
        v257 = 0u;
        sub_1D5BFB774(&v256, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
LABEL_140:
        sub_1D62B5F74(v262);
        v66 = v105;
        goto LABEL_159;
      }

LABEL_138:
      v172 = *(&v257 + 1);
      v173 = v258;
      __swift_project_boxed_opaque_existential_1(&v256, *(&v257 + 1));
      (*(v173 + 8))(v239, v243, v172, v173);
      if (v4)
      {
        goto LABEL_188;
      }

      __swift_destroy_boxed_opaque_existential_1(&v256);
      goto LABEL_140;
    }

    goto LABEL_101;
  }

  v177 = *(&v257 + 1);
  v178 = v258;
  __swift_project_boxed_opaque_existential_1(&v256, *(&v257 + 1));
  (*(v178 + 8))(v239, v243, v177, v178);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(&v256);
    goto LABEL_161;
  }

LABEL_188:
  sub_1D62B51D0(v105, type metadata accessor for FormatItemNodeStyle.Selector);
  __swift_destroy_boxed_opaque_existential_1(&v256);
LABEL_181:
  sub_1D62B5F74(v262);
LABEL_172:
  v180 = type metadata accessor for FormatItemNodeAction;
  v181 = v62;
LABEL_167:
  sub_1D62B51D0(v181, v180);
}

void sub_1D621A990(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  if (v4)
  {
    v7 = v4 - 1;
    v9 = a3 + 11;
    v8 = a3[7];
    if (!v8)
    {
      goto LABEL_4;
    }

LABEL_3:

    sub_1D6213004(a1, a2, v8);

    if (!v3)
    {
LABEL_4:
      while (v7)
      {
        --v7;
        v10 = *v9;
        v9 += 4;
        v8 = v10;
        if (v10)
        {
          goto LABEL_3;
        }
      }
    }
  }
}

uint64_t sub_1D621AA44(uint64_t result, uint64_t a2, uint64_t a3, __n128 a4)
{
  v44 = result;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return result;
  }

  v6 = 0;
  v7 = a3 + 32;
  v42 = a3 + 32;
  v43 = *(a3 + 16);
  while (1)
  {
    v8 = v7 + 40 * v6;
    v9 = *(v8 + 32) | (*(v8 + 34) << 16);
    v10 = WORD1(v9);
    if (*(v8 + 34) == 255 || v10 == 0)
    {
      goto LABEL_6;
    }

    v12 = *(v8 + 24);
    if (v10 != 1)
    {
      break;
    }

    if ((*(v8 + 32) & 0x100) == 0)
    {
      v13 = *(v12 + 16);

      sub_1D62B7DCC(v12, v9);
      sub_1D62B7DCC(v12, v9);
      if (v13)
      {
        v14 = (v12 + 40);
        while (1)
        {
          if ((*v14 & 1) == 0)
          {
            v15 = *(v14 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v44, a2);
            sub_1D62B72BC(v15, 0);
            if (v4)
            {

              goto LABEL_119;
            }
          }

          v14 += 16;
          if (!--v13)
          {
            goto LABEL_113;
          }
        }
      }

      goto LABEL_113;
    }

    v19 = *(v8 + 32);
    if (v9 <= 1u)
    {
      if (!v19)
      {
        if (!v12)
        {
          goto LABEL_71;
        }

        if (v12 == 1)
        {
          goto LABEL_70;
        }

        v26 = *(v12 + 16);
        sub_1D62B7DCC(v12, v9);

        sub_1D62B7DCC(v12, v9);
        sub_1D62B7DCC(v12, v9);
        if (v26)
        {
          v27 = (v12 + 40);
          while (1)
          {
            if ((*v27 & 1) == 0)
            {
              v28 = *(v27 - 1);
              swift_retain_n();
              FormatFloat.bind(binder:context:)(v44, a2);
              sub_1D62B72BC(v28, 0);

              if (v4)
              {
                goto LABEL_118;
              }
            }

            v27 += 16;
            if (!--v26)
            {
              goto LABEL_112;
            }
          }
        }

        goto LABEL_112;
      }

      if (!v12)
      {
LABEL_71:

        sub_1D62B7DCC(0, v9);
        sub_1D62B6F70(0, v9);
        v32 = 0;
LABEL_72:
        sub_1D62B6F70(v32, v9);
LABEL_97:

        goto LABEL_5;
      }

      if (v12 == 1)
      {
        goto LABEL_70;
      }

      v38 = *(v12 + 16);
      sub_1D62B7DCC(v12, v9);

      sub_1D62B7DCC(v12, v9);
      sub_1D62B7DCC(v12, v9);
      if (v38)
      {
        v39 = (v12 + 40);
        do
        {
          if ((*v39 & 1) == 0)
          {
            v22 = *(v39 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v44, a2);
            if (v4)
            {
LABEL_116:
              sub_1D62B72BC(v22, 0);

              goto LABEL_118;
            }

            sub_1D62B72BC(v22, 0);
          }

          v39 += 16;
          --v38;
        }

        while (v38);
      }
    }

    else
    {
      if (v19 != 2)
      {
        if (v19 != 3)
        {
          goto LABEL_5;
        }

        if (!v12)
        {
          goto LABEL_71;
        }

        if (v12 == 1)
        {
          goto LABEL_70;
        }

        v20 = *(v12 + 16);
        sub_1D62B7DCC(v12, v9);

        sub_1D62B7DCC(v12, v9);
        sub_1D62B7DCC(v12, v9);
        if (v20)
        {
          v21 = (v12 + 40);
          while (1)
          {
            if ((*v21 & 1) == 0)
            {
              v22 = *(v21 - 1);
              swift_retain_n();
              FormatFloat.bind(binder:context:)(v44, a2);
              if (v4)
              {
                goto LABEL_116;
              }

              sub_1D62B72BC(v22, 0);
            }

            v21 += 16;
            if (!--v20)
            {
              goto LABEL_112;
            }
          }
        }

        goto LABEL_112;
      }

      if (!v12)
      {
        goto LABEL_71;
      }

      if (v12 == 1)
      {
LABEL_70:

        sub_1D62B7DCC(1, v9);
        sub_1D62B6F70(1, v9);
        v32 = 1;
        goto LABEL_72;
      }

      v30 = *(v12 + 16);
      sub_1D62B7DCC(v12, v9);

      sub_1D62B7DCC(v12, v9);
      sub_1D62B7DCC(v12, v9);
      if (v30)
      {
        v31 = (v12 + 40);
        do
        {
          if ((*v31 & 1) == 0)
          {
            v22 = *(v31 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v44, a2);
            if (v4)
            {
              goto LABEL_116;
            }

            sub_1D62B72BC(v22, 0);
          }

          v31 += 16;
          --v30;
        }

        while (v30);
      }
    }

LABEL_112:
    sub_1D62B6F70(v12, v9);
LABEL_113:

LABEL_4:
    sub_1D62B6F70(v12, v9);
    v7 = v42;
    v5 = v43;
LABEL_5:
    result = sub_1D62B6F70(v12, v9);
LABEL_6:
    if (++v6 == v5)
    {
      return result;
    }
  }

  if (HIBYTE(*(v8 + 32)) == 255)
  {
    goto LABEL_5;
  }

  if ((*(v8 + 32) & 0x100) == 0)
  {
    v16 = *(v12 + 16);
    sub_1D62B7DCC(v12, v9);

    sub_1D62B7DCC(v12, v9);
    sub_1D62B7DCC(v12, v9);
    if (v16)
    {
      v17 = (v12 + 40);
      do
      {
        if ((*v17 & 1) == 0)
        {
          v18 = *(v17 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v44, a2);
          if (v4)
          {
            sub_1D62B72BC(v18, 0);

            sub_1D62B6F70(v12, v9);
            goto LABEL_119;
          }

          sub_1D62B72BC(v18, 0);
        }

        v17 += 16;
        --v16;
      }

      while (v16);
    }

    sub_1D62B6F70(v12, v9);
    goto LABEL_4;
  }

  v23 = *(v8 + 32);
  if (v9 > 1u)
  {
    if (v23 != 2)
    {
      if (v23 != 3)
      {
        sub_1D62B6F70(v12, v9);
        goto LABEL_5;
      }

      if (!v12)
      {
        goto LABEL_95;
      }

      if (v12 == 1)
      {
        goto LABEL_94;
      }

      v24 = *(v12 + 16);
      sub_1D62B7DCC(v12, v9);
      sub_1D62B7DCC(v12, v9);

      sub_1D62B7DCC(v12, v9);
      sub_1D62B7DCC(v12, v9);
      if (v24)
      {
        v25 = (v12 + 40);
        while (1)
        {
          if ((*v25 & 1) == 0)
          {
            v29 = *(v25 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v44, a2);
            if (v4)
            {
              goto LABEL_117;
            }

            sub_1D62B72BC(v29, 0);
          }

          v25 += 16;
          if (!--v24)
          {
            goto LABEL_111;
          }
        }
      }

      goto LABEL_111;
    }

    if (!v12)
    {
      goto LABEL_95;
    }

    if (v12 != 1)
    {
      v35 = *(v12 + 16);
      sub_1D62B7DCC(v12, v9);
      sub_1D62B7DCC(v12, v9);

      sub_1D62B7DCC(v12, v9);
      sub_1D62B7DCC(v12, v9);
      if (v35)
      {
        v36 = (v12 + 40);
        do
        {
          if ((*v36 & 1) == 0)
          {
            v29 = *(v36 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v44, a2);
            if (v4)
            {
              goto LABEL_117;
            }

            sub_1D62B72BC(v29, 0);
          }

          v36 += 16;
          --v35;
        }

        while (v35);
      }

LABEL_111:
      sub_1D62B6F70(v12, v9);
      goto LABEL_112;
    }

LABEL_94:

    sub_1D62B7DCC(1, v9);
    sub_1D62B6F70(1, v9);
    sub_1D62B6F70(1, v9);
    v37 = 1;
LABEL_96:
    sub_1D610CA74(v37, v9, 2, sub_1D60CF6A8, sub_1D60CF6DC);
    goto LABEL_97;
  }

  if (!v23)
  {
    if (!v12)
    {
      goto LABEL_95;
    }

    if (v12 == 1)
    {
      goto LABEL_94;
    }

    v33 = *(v12 + 16);
    sub_1D62B7DCC(v12, v9);
    sub_1D62B7DCC(v12, v9);

    sub_1D62B7DCC(v12, v9);
    sub_1D62B7DCC(v12, v9);
    if (v33)
    {
      v34 = (v12 + 40);
      while (1)
      {
        if ((*v34 & 1) == 0)
        {
          v29 = *(v34 - 1);
          swift_retain_n();
          FormatFloat.bind(binder:context:)(v44, a2);
          if (v4)
          {
            goto LABEL_117;
          }

          sub_1D62B72BC(v29, 0);
        }

        v34 += 16;
        if (!--v33)
        {
          goto LABEL_111;
        }
      }
    }

    goto LABEL_111;
  }

  if (!v12)
  {
LABEL_95:

    sub_1D62B7DCC(0, v9);
    sub_1D62B6F70(0, v9);
    sub_1D62B6F70(0, v9);
    v37 = 0;
    goto LABEL_96;
  }

  if (v12 == 1)
  {
    goto LABEL_94;
  }

  v40 = *(v12 + 16);
  sub_1D62B7DCC(v12, v9);
  sub_1D62B7DCC(v12, v9);

  sub_1D62B7DCC(v12, v9);
  sub_1D62B7DCC(v12, v9);
  if (!v40)
  {
    goto LABEL_111;
  }

  v41 = (v12 + 40);
  while (1)
  {
    if (*v41)
    {
      goto LABEL_107;
    }

    v29 = *(v41 - 1);
    swift_retain_n();
    FormatFloat.bind(binder:context:)(v44, a2);
    if (v4)
    {
      break;
    }

    sub_1D62B72BC(v29, 0);

LABEL_107:
    v41 += 16;
    if (!--v40)
    {
      goto LABEL_111;
    }
  }

LABEL_117:
  sub_1D62B72BC(v29, 0);

  sub_1D62B6F70(v12, v9);
LABEL_118:
  sub_1D62B6F70(v12, v9);

LABEL_119:
  sub_1D62B6F70(v12, v9);
  return sub_1D62B6F70(v12, v9);
}

uint64_t sub_1D621B440(uint64_t result, uint64_t a2, uint64_t a3)
{
  v31 = *(a3 + 16);
  if (v31)
  {
    v5 = result;
    v6 = 0;
    v40 = a3 + 32;
    while (1)
    {
      v7 = (v40 + 144 * v6);
      v8 = v7[7];
      v38[3] = v7[6];
      *v39 = v8;
      *&v39[10] = *(v7 + 122);
      v9 = v7[3];
      v37 = v7[2];
      v38[0] = v9;
      v10 = v7[5];
      v38[1] = v7[4];
      v38[2] = v10;
      v11 = v7[1];
      v35 = *v7;
      v36 = v11;
      v12 = v11;
      if (v11)
      {
        v13 = *(v36 + 16);
        sub_1D62B7998(&v35, &v32);
        if (v13)
        {
          v14 = (v12 + 40);
          do
          {
            if ((*v14 & 1) == 0)
            {
              *&v32 = *(v14 - 1);
              v15 = v32;
              swift_retain_n();
              FormatFloat.bind(binder:context:)(v5, a2);
              if (v3)
              {
                sub_1D62B72BC(v15, 0);
                goto LABEL_46;
              }

              sub_1D62B72BC(v15, 0);
            }

            v14 += 16;
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        sub_1D62B7998(&v35, &v32);
      }

      if (*(&v36 + 1))
      {
        sub_1D620E744(v5, a2, *(&v36 + 1));
        if (v3)
        {
          return sub_1D62B79F4(&v35);
        }
      }

      v16 = v39[24];
      if (v39[24] == 254)
      {
        goto LABEL_41;
      }

      sub_1D62B5354(v38 + 8, &v32, &qword_1EDF33718, &type metadata for FormatShadow);

      FormatColor.bind(binder:context:)(v5, a2);
      if (v3)
      {
        sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_46:

        return sub_1D62B79F4(&v35);
      }

      if (v16 > 2)
      {
        break;
      }

      if (!v16)
      {
        goto LABEL_27;
      }

      if (v16 != 1)
      {
        goto LABEL_25;
      }

      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v20 = *(&v33 + 1);
        v19 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
        (*(v19 + 8))(v5, a2, v20, v19);
        __swift_destroy_boxed_opaque_existential_1(&v32);
      }

      else
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_40;
      }

      v29 = *(&v33 + 1);
      v30 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v30 + 8))(v5, a2, v29, v30);
      sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      __swift_destroy_boxed_opaque_existential_1(&v32);
      result = sub_1D62B79F4(&v35);
LABEL_42:
      if (++v6 == v31)
      {
        return result;
      }
    }

    if (v16 > 4)
    {
      if (v16 != 5)
      {
LABEL_27:
        sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_41;
      }
    }

    else if (v16 != 3)
    {
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v17 = *(&v33 + 1);
        v18 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
        (*(v18 + 8))(v5, a2, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(&v32);
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_25:
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v21 = *(&v33 + 1);
      v22 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v22 + 8))(v5, a2, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }

    if (swift_dynamicCast())
    {
      v23 = *(&v33 + 1);
      v24 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v24 + 8))(v5, a2, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }

    if (swift_dynamicCast())
    {
      v25 = *(&v33 + 1);
      v26 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v26 + 8))(v5, a2, v25, v26);
      __swift_destroy_boxed_opaque_existential_1(&v32);
      goto LABEL_35;
    }

LABEL_34:
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
LABEL_35:
    if (swift_dynamicCast())
    {
      v27 = *(&v33 + 1);
      v28 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v28 + 8))(v5, a2, v27, v28);
      sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
LABEL_40:
      sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }

LABEL_41:
    result = sub_1D62B79F4(&v35);
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_1D621BBC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v31 = *(a3 + 16);
  if (v31)
  {
    v5 = result;
    v6 = 0;
    v41 = a3 + 32;
    while (1)
    {
      v7 = (v41 + 152 * v6);
      v8 = v7[7];
      v38[3] = v7[6];
      v38[4] = v8;
      v39 = v7[8];
      v40 = *(v7 + 18);
      v9 = v7[3];
      v37 = v7[2];
      v38[0] = v9;
      v10 = v7[5];
      v38[1] = v7[4];
      v38[2] = v10;
      v11 = v7[1];
      v35 = *v7;
      v36 = v11;
      v12 = v11;
      if (v11)
      {
        v13 = *(v36 + 16);
        sub_1D615EAA0(&v35, &v32);
        if (v13)
        {
          v14 = (v12 + 40);
          do
          {
            if ((*v14 & 1) == 0)
            {
              *&v32 = *(v14 - 1);
              v15 = v32;
              swift_retain_n();
              FormatFloat.bind(binder:context:)(v5, a2);
              if (v3)
              {
                sub_1D62B72BC(v15, 0);
                goto LABEL_46;
              }

              sub_1D62B72BC(v15, 0);
            }

            v14 += 16;
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        sub_1D615EAA0(&v35, &v32);
      }

      if (*(&v36 + 1))
      {
        sub_1D620E744(v5, a2, *(&v36 + 1));
        if (v3)
        {
          return sub_1D615EAD8(&v35);
        }
      }

      v16 = BYTE8(v39);
      if (BYTE8(v39) == 254)
      {
        goto LABEL_41;
      }

      sub_1D62B5354(v38 + 8, &v32, &qword_1EDF33718, &type metadata for FormatShadow);

      FormatColor.bind(binder:context:)(v5, a2);
      if (v3)
      {
        sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_46:

        return sub_1D615EAD8(&v35);
      }

      if (v16 > 2)
      {
        break;
      }

      if (!v16)
      {
        goto LABEL_27;
      }

      if (v16 != 1)
      {
        goto LABEL_25;
      }

      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v20 = *(&v33 + 1);
        v19 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
        (*(v19 + 8))(v5, a2, v20, v19);
        __swift_destroy_boxed_opaque_existential_1(&v32);
      }

      else
      {
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_40;
      }

      v29 = *(&v33 + 1);
      v30 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v30 + 8))(v5, a2, v29, v30);
      sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      __swift_destroy_boxed_opaque_existential_1(&v32);
      result = sub_1D615EAD8(&v35);
LABEL_42:
      if (++v6 == v31)
      {
        return result;
      }
    }

    if (v16 > 4)
    {
      if (v16 != 5)
      {
LABEL_27:
        sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_41;
      }
    }

    else if (v16 != 3)
    {
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v17 = *(&v33 + 1);
        v18 = v34;
        __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
        (*(v18 + 8))(v5, a2, v17, v18);
        __swift_destroy_boxed_opaque_existential_1(&v32);
        goto LABEL_35;
      }

      goto LABEL_34;
    }

LABEL_25:
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v21 = *(&v33 + 1);
      v22 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v22 + 8))(v5, a2, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }

    if (swift_dynamicCast())
    {
      v23 = *(&v33 + 1);
      v24 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v24 + 8))(v5, a2, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }

    if (swift_dynamicCast())
    {
      v25 = *(&v33 + 1);
      v26 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v26 + 8))(v5, a2, v25, v26);
      __swift_destroy_boxed_opaque_existential_1(&v32);
      goto LABEL_35;
    }

LABEL_34:
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
LABEL_35:
    if (swift_dynamicCast())
    {
      v27 = *(&v33 + 1);
      v28 = v34;
      __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
      (*(v28 + 8))(v5, a2, v27, v28);
      sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    else
    {
LABEL_40:
      sub_1D5D0ABCC(v38 + 8, &qword_1EDF33718, &type metadata for FormatShadow);
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      sub_1D5BFB774(&v32, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }

LABEL_41:
    result = sub_1D615EAD8(&v35);
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_1D621C350(uint64_t result, uint64_t a2, uint64_t a3)
{
  v64 = result;
  v33 = *(a3 + 16);
  if (!v33)
  {
    return result;
  }

  v4 = a2;
  v5 = 0;
  v34 = a3 + 32;
  while (1)
  {
    memcpy(__dst, (v34 + 320 * v5), 0x13AuLL);
    v6 = __dst[2];
    if (__dst[2])
    {
      sub_1D60101A0(__dst, &v52);
      sub_1D620E744(v64, v4, v6);
      if (v3)
      {
        return sub_1D60101D8(__dst);
      }
    }

    else
    {
      sub_1D60101A0(__dst, &v52);
    }

    v7 = LOBYTE(__dst[16]);
    if (LOBYTE(__dst[16]) == 254)
    {
      v4 = a2;
      v8 = __dst[17];
      if (__dst[17])
      {
        goto LABEL_38;
      }

      goto LABEL_44;
    }

    v9 = __dst[12];
    v31 = __dst[14];
    v32 = __dst[13];
    v10 = __dst[11];
    *&v50[0] = __dst[10];
    sub_1D62B5354(&__dst[6], &v52, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(v64, a2);
    if (v3)
    {
      sub_1D5D0ABCC(&__dst[6], &qword_1EDF33718, &type metadata for FormatShadow);

      return sub_1D60101D8(__dst);
    }

    if (v7 <= 2)
    {
      v4 = a2;
      if (!v7)
      {
        goto LABEL_22;
      }

      if (v7 != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v4 = a2;
      if (v7 > 4)
      {
        if (v7 != 5)
        {
LABEL_22:
          sub_1D5D0ABCC(&__dst[6], &qword_1EDF33718, &type metadata for FormatShadow);
          v8 = __dst[17];
          if (__dst[17])
          {
            goto LABEL_38;
          }

          goto LABEL_44;
        }

LABEL_20:
        *&v50[0] = v10;
        sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        if (swift_dynamicCast())
        {
          v13 = *(&v53 + 1);
          v14 = v54;
          __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
          (*(v14 + 8))(v64, v4, v13, v14);
          __swift_destroy_boxed_opaque_existential_1(&v52);
        }

        else
        {
          *&v54 = 0;
          v52 = 0u;
          v53 = 0u;
          sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        }

        *&v50[0] = v9;
        if (swift_dynamicCast())
        {
          v15 = *(&v53 + 1);
          v16 = v54;
          __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
          (*(v16 + 8))(v64, v4, v15, v16);
          __swift_destroy_boxed_opaque_existential_1(&v52);
        }

        else
        {
          *&v54 = 0;
          v52 = 0u;
          v53 = 0u;
          sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        }

        *&v50[0] = v32;
        if (swift_dynamicCast())
        {
          v17 = *(&v53 + 1);
          v18 = v54;
          __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
          (*(v18 + 8))(v64, v4, v17, v18);
          __swift_destroy_boxed_opaque_existential_1(&v52);
        }

        else
        {
          *&v54 = 0;
          v52 = 0u;
          v53 = 0u;
          sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        }

        *&v50[0] = v31;
        goto LABEL_34;
      }

      if (v7 == 3)
      {
        goto LABEL_20;
      }
    }

    *&v50[0] = v10;
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v11 = *(&v53 + 1);
      v12 = v54;
      __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
      (*(v12 + 8))(v64, v4, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v52);
    }

    else
    {
      *&v54 = 0;
      v52 = 0u;
      v53 = 0u;
      sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }

    *&v50[0] = v9;
LABEL_34:
    if (!swift_dynamicCast())
    {
      break;
    }

    v19 = *(&v53 + 1);
    v20 = v54;
    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
    (*(v20 + 8))(v64, v4, v19, v20);
    sub_1D5D0ABCC(&__dst[6], &qword_1EDF33718, &type metadata for FormatShadow);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v8 = __dst[17];
    if (__dst[17])
    {
      goto LABEL_38;
    }

LABEL_44:
    v60 = *&__dst[35];
    v61 = *&__dst[37];
    v62 = __dst[39];
    v56 = *&__dst[27];
    v57 = *&__dst[29];
    v58 = *&__dst[31];
    v59 = *&__dst[33];
    v52 = *&__dst[19];
    v53 = *&__dst[21];
    v54 = *&__dst[23];
    v55 = *&__dst[25];
    if (sub_1D60081E0(&v52) != 1)
    {
      v50[8] = v60;
      v50[9] = v61;
      v51 = v62;
      v50[4] = v56;
      v50[5] = v57;
      v50[6] = v58;
      v50[7] = v59;
      v50[0] = v52;
      v50[1] = v53;
      v50[2] = v54;
      v50[3] = v55;
      v24 = sub_1D62B4E2C(v50);
      if (v24 > 1)
      {
        if (v24 == 2)
        {
          v25 = sub_1D5D04BC4(v50);
          v26 = *(v25 + 144);
          v45 = *(v25 + 128);
          v46 = v26;
          v47 = *(v25 + 160);
          v27 = *(v25 + 80);
          v41 = *(v25 + 64);
          v42 = v27;
          v28 = *(v25 + 112);
          v43 = *(v25 + 96);
          v44 = v28;
          v29 = *(v25 + 16);
          v37 = *v25;
          v38 = v29;
          v30 = *(v25 + 48);
          v39 = *(v25 + 32);
          v40 = v30;
          v48[0] = *&__dst[19];
          v48[1] = *&__dst[21];
          v48[4] = *&__dst[27];
          v48[5] = *&__dst[29];
          v48[2] = *&__dst[23];
          v48[3] = *&__dst[25];
          v49 = __dst[39];
          v48[8] = *&__dst[35];
          v48[9] = *&__dst[37];
          v48[6] = *&__dst[31];
          v48[7] = *&__dst[33];
          sub_1D60864C0(v48, v36);
          FormatGlassEffect.bind(binder:context:)(v64, v4);
          sub_1D5D0ABCC(&__dst[19], &qword_1EDF2D860, &type metadata for FormatVisualEffect);
          result = sub_1D60101D8(__dst);
          if (v3)
          {
            return result;
          }

          goto LABEL_51;
        }
      }

      else
      {
        sub_1D5D04BC4(v50);
      }
    }

    result = sub_1D60101D8(__dst);
LABEL_51:
    if (++v5 == v33)
    {
      return result;
    }
  }

  sub_1D5D0ABCC(&__dst[6], &qword_1EDF33718, &type metadata for FormatShadow);
  v52 = 0u;
  v53 = 0u;
  *&v54 = 0;
  sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  v8 = __dst[17];
  if (!__dst[17])
  {
    goto LABEL_44;
  }

LABEL_38:
  v21 = *(v8 + 16);
  if (!v21)
  {
    goto LABEL_44;
  }

  v22 = (v8 + 40);
  while (1)
  {
    if ((*v22 & 1) == 0)
    {
      *&v52 = *(v22 - 1);
      v23 = v52;
      swift_retain_n();
      FormatFloat.bind(binder:context:)(v64, v4);
      sub_1D62B72BC(v23, 0);

      if (v3)
      {
        return sub_1D60101D8(__dst);
      }
    }

    v22 += 16;
    if (!--v21)
    {
      goto LABEL_44;
    }
  }
}

uint64_t sub_1D621CB10(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return result;
  }

  v6 = a2;
  v7 = result;
  v8 = (a3 + 32);
  v44 = result;
  while (1)
  {
    v9 = v8[9];
    v42[2] = v8[8];
    v42[3] = v9;
    v42[4] = v8[10];
    v43 = *(v8 + 176);
    v10 = v8[5];
    v40 = v8[4];
    v41 = v10;
    v11 = v8[7];
    v42[0] = v8[6];
    v42[1] = v11;
    v12 = v8[1];
    v38 = *v8;
    v39[0] = v12;
    v13 = v8[3];
    v39[1] = v8[2];
    v39[2] = v13;
    v14 = *&v39[0];
    if (v41 <= 1u)
    {
      break;
    }

    if (v41 != 2)
    {
      goto LABEL_10;
    }

    v16 = v40;
    sub_1D62B7804(&v38, &v35);
    sub_1D62B5354(v39, &v35, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    sub_1D6212DD8(v7, v6, v14);
    if (v4)
    {
      goto LABEL_56;
    }

    if (v16)
    {

      sub_1D620B270(v7, v6, v16);
      sub_1D620B270(v7, v6, *(&v16 + 1));
      v4 = 0;
      sub_1D5CDE22C(v16, *(&v16 + 1));
    }

    sub_1D5D0ABCC(v39, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    v15 = *(&v41 + 1);
    if (*(&v41 + 1))
    {
      goto LABEL_19;
    }

LABEL_20:
    v17 = v43;
    if (v43 != 254)
    {
      sub_1D62B5354(v42, &v35, &qword_1EDF33718, &type metadata for FormatShadow);

      FormatColor.bind(binder:context:)(v44, a2);
      if (v4)
      {
        sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);

        return sub_1D62B7860(&v38);
      }

      if (v17 <= 2)
      {
        if (!v17)
        {
          goto LABEL_34;
        }

        if (v17 == 1)
        {
          sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          if (swift_dynamicCast())
          {
            v20 = *(&v36 + 1);
            v21 = v37;
            __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
            (*(v21 + 8))(v44, a2, v20, v21);
            __swift_destroy_boxed_opaque_existential_1(&v35);
          }

          else
          {
            v37 = 0;
            v35 = 0u;
            v36 = 0u;
            sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          }

          if (swift_dynamicCast())
          {
            v30 = *(&v36 + 1);
            v31 = v37;
            __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
            v6 = a2;
            (*(v31 + 8))(v44, a2, v30, v31);
            sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
            __swift_destroy_boxed_opaque_existential_1(&v35);
            result = sub_1D62B7860(&v38);
          }

          else
          {
            sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
            v35 = 0u;
            v36 = 0u;
            v37 = 0;
            sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
            result = sub_1D62B7860(&v38);
            v6 = a2;
          }

          goto LABEL_4;
        }
      }

      else if (v17 > 4)
      {
        if (v17 != 5)
        {
LABEL_34:
          sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
          result = sub_1D62B7860(&v38);
          v7 = v44;
          v6 = a2;
          goto LABEL_5;
        }
      }

      else if (v17 != 3)
      {
        sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        if (swift_dynamicCast())
        {
          v18 = *(&v36 + 1);
          v19 = v37;
          __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
          (*(v19 + 8))(v44, a2, v18, v19);
          __swift_destroy_boxed_opaque_existential_1(&v35);
        }

        else
        {
          v37 = 0;
          v35 = 0u;
          v36 = 0u;
          sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        }

        if (!swift_dynamicCast())
        {
          sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
          v35 = 0u;
          v36 = 0u;
          v37 = 0;
          sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          result = sub_1D62B7860(&v38);
          v6 = a2;
          v7 = v44;
          goto LABEL_5;
        }

        v32 = *(&v36 + 1);
        v33 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        v6 = a2;
        (*(v33 + 8))(v44, a2, v32, v33);
LABEL_51:
        sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
        __swift_destroy_boxed_opaque_existential_1(&v35);
        goto LABEL_52;
      }

      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v22 = *(&v36 + 1);
        v23 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        (*(v23 + 8))(v44, a2, v22, v23);
        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      if (swift_dynamicCast())
      {
        v24 = *(&v36 + 1);
        v25 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        v6 = a2;
        (*(v25 + 8))(v44, a2, v24, v25);
        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        v6 = a2;
      }

      if (swift_dynamicCast())
      {
        v26 = *(&v36 + 1);
        v27 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        (*(v27 + 8))(v44, v6, v26, v27);
        __swift_destroy_boxed_opaque_existential_1(&v35);
      }

      else
      {
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      if (swift_dynamicCast())
      {
        v28 = *(&v36 + 1);
        v29 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        (*(v29 + 8))(v44, v6, v28, v29);
        goto LABEL_51;
      }

      sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
      v35 = 0u;
      v36 = 0u;
      v37 = 0;
      sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
LABEL_52:
      result = sub_1D62B7860(&v38);
      goto LABEL_4;
    }

    result = sub_1D62B7860(&v38);
    v6 = a2;
LABEL_4:
    v7 = v44;
LABEL_5:
    v8 = (v8 + 184);
    if (!--v5)
    {
      return result;
    }
  }

  if (!v41)
  {
LABEL_10:
    sub_1D62B7804(&v38, &v35);
    v15 = *(&v41 + 1);
    if (!*(&v41 + 1))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  sub_1D62B7804(&v38, &v35);
  sub_1D62B5354(v39, &v35, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  sub_1D6213184(v7, v6, v14);
  if (!v4)
  {
    sub_1D5D0ABCC(v39, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    v15 = *(&v41 + 1);
    if (!*(&v41 + 1))
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1D620E744(v7, v6, v15);
    if (v4)
    {
      return sub_1D62B7860(&v38);
    }

    goto LABEL_20;
  }

LABEL_56:
  sub_1D5D0ABCC(v39, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  return sub_1D62B7860(&v38);
}

void sub_1D621D544(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  if (v4)
  {
    v7 = v4 - 1;
    v9 = a3 + 16;
    v8 = a3[9];
    if (!v8)
    {
      goto LABEL_4;
    }

LABEL_3:

    sub_1D621397C(a1, a2, v8);

    if (!v3)
    {
LABEL_4:
      while (v7)
      {
        --v7;
        v10 = *v9;
        v9 += 7;
        v8 = v10;
        if (v10)
        {
          goto LABEL_3;
        }
      }
    }
  }
}

uint64_t sub_1D621D5F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v15 = *(a3 + 16);
  if (!v15)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v16 = a3 + 32;
  while (1)
  {
    v6 = (v16 + 48 * v5);
    v7 = v6[2];
    v9 = v6[3];
    v8 = v6[4];
    if (v7)
    {
      v10 = *(v7 + 16);

      sub_1D5CFCFAC(v9);
      sub_1D5CFCFAC(v8);
      if (v10)
      {
        v11 = (v7 + 40);
        do
        {
          if ((*v11 & 1) == 0)
          {
            v12 = *(v11 - 1);
            swift_retain_n();
            FormatFloat.bind(binder:context:)(v4, a2);
            if (v3)
            {
              sub_1D62B72BC(v12, 0);

              sub_1D5C84FF4(v9);
              v14 = v8;
              return sub_1D5C84FF4(v14);
            }

            sub_1D62B72BC(v12, 0);
          }

          v11 += 16;
          --v10;
        }

        while (v10);
      }
    }

    else
    {

      sub_1D5CFCFAC(v9);
      sub_1D5CFCFAC(v8);
    }

    if ((~v9 & 0xF000000000000007) == 0)
    {
      v13 = v8;
      if ((~v8 & 0xF000000000000007) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_18;
    }

    FormatColor.bind(binder:context:)(v4, a2);
    v13 = v8;
    if (v3)
    {
      break;
    }

    if ((~v8 & 0xF000000000000007) == 0)
    {
LABEL_3:

      sub_1D5C84FF4(v9);
      result = sub_1D5C84FF4(v13);
      goto LABEL_4;
    }

LABEL_18:

    FormatColor.bind(binder:context:)(v4, a2);

    sub_1D5C84FF4(v9);
    result = sub_1D5C84FF4(v13);
    if (v3)
    {
      return result;
    }

LABEL_4:
    if (++v5 == v15)
    {
      return result;
    }
  }

  sub_1D5C84FF4(v9);
  v14 = v8;
  return sub_1D5C84FF4(v14);
}

unint64_t sub_1D621D854(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v6 = (a3 + 72);
  while (1)
  {
    v7 = *(v6 - 3);
    v8 = *(v6 - 2);
    v9 = *v6;
    if ((~v7 & 0xF000000000000007) != 0)
    {

      sub_1D5CFCFAC(v7);
      sub_1D5CFCFAC(v8);
      sub_1D5D0A59C(v9);
      sub_1D5CFCFAC(v7);
      FormatColor.bind(binder:context:)(v5, a2);
      if (v3)
      {
        goto LABEL_16;
      }

      if ((~v8 & 0xF000000000000007) != 0)
      {
LABEL_11:

        FormatColor.bind(binder:context:)(v5, a2);
        if (v3)
        {
LABEL_16:

          goto LABEL_19;
        }

        v10 = v9 == 2;
        if (v9 < 2)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    else
    {

      sub_1D5CFCFAC(v7);
      sub_1D5CFCFAC(v8);
      sub_1D5D0A59C(v9);
      if ((~v8 & 0xF000000000000007) != 0)
      {
        goto LABEL_11;
      }
    }

    v10 = v9 == 2;
    if (v9 < 2)
    {
      goto LABEL_3;
    }

LABEL_13:
    if (v10)
    {
      goto LABEL_4;
    }

    v11 = *(v9 + 16);
    v12 = *(v9 + 24);
    sub_1D5D0A59C(v9);
    sub_1D5D0A57C(v11);
    sub_1D5D0A57C(v12);
    sub_1D6248A90(v5, a2, v11, v12);
    sub_1D5D0A58C(v11);
    sub_1D5D0A58C(v12);
    if (v3)
    {
      break;
    }

LABEL_3:
    sub_1D5D0A5AC(v9);
LABEL_4:
    v6 += 6;

    sub_1D5C84FF4(v7);
    sub_1D5C84FF4(v8);
    result = sub_1D5D0A5AC(v9);
    if (!--v4)
    {
      return result;
    }
  }

  sub_1D5D0A5AC(v9);

LABEL_19:
  sub_1D5C84FF4(v7);
  sub_1D5C84FF4(v8);
  return sub_1D5D0A5AC(v9);
}

void sub_1D621DA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return;
  }

  v6 = a2;
  v7 = a1;
  for (i = (a3 + 56); ; i += 4)
  {
    v9 = *i;
    v10 = *i >> 61;
    if (v10 > 2)
    {
      goto LABEL_4;
    }

    v11 = *(i - 3);
    v12 = *(i - 2);
    v13 = *(i - 8);
    v60 = v13;
    if (!v10)
    {
      break;
    }

    if (v10 == 1)
    {
      v14 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v55 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v56 = v14;
      v15 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v57 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v58 = v15;
      v16 = v56;
      v52 = v11;
      if (v56 == 255 || (v56 & 1) == 0)
      {
        sub_1D5D03180(v11, v12, v13);

        sub_1D62B6004(&v55, v54);
      }

      else
      {
        v17 = v55;
        v45 = *(v55 + 24);
        sub_1D5D03180(v11, v12, v13);

        sub_1D62B6004(&v55, v54);
        sub_1D62B7ECC(v17, *(&v17 + 1), v16);
        sub_1D621E2E4(v7, v6, v45);
        if (v4)
        {
          sub_1D62B5FEC(v17, *(&v17 + 1), v16);
          goto LABEL_39;
        }

        sub_1D6251BE4(v7, v6, *(v17 + 32), *(v17 + 40));
        v4 = 0;
        sub_1D62B5FEC(v17, *(&v17 + 1), v16);
        v6 = a2;
        v7 = a1;
      }

      v31 = v57;
      if (v57 != 255 && (v57 & 1) != 0)
      {
        v32 = v12;
        v33 = v6;
        v34 = *(&v56 + 1);
        v51 = v4;
        v35 = *(*(&v56 + 1) + 24);
        sub_1D62B5FC8(*(&v56 + 1), 1);
        sub_1D621E140(v7, v33, v35);
        if (v51)
        {
          sub_1D62B5FD4(v34, v31);
          v12 = v32;
LABEL_39:
          sub_1D62B6060(&v55);
          v40 = v52;
          v41 = v12;
LABEL_40:
          sub_1D5D07BA8(v40, v41, v60);
          goto LABEL_42;
        }

        sub_1D6251AD4(v7, v33, v34[4]);
        v4 = 0;
        v12 = v32;
        sub_1D62B5FD4(v34, v31);
        v7 = a1;
        v6 = a2;
      }

      sub_1D621E474(v7, v6, *(&v58 + 1));
      if (v4)
      {
        goto LABEL_39;
      }

      sub_1D62B6060(&v55);
      sub_1D5D07BA8(v52, v12, v60);
    }

    else
    {
      v50 = v5;
      v25 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = v12;
      v27 = v4;
      v28 = *(v25 + 24);
      v29 = v11;
      v30 = v26;
      sub_1D5D03180(v11, v26, v13);

      sub_1D621DA6C(v7, v6, v28);
      if (v27)
      {

        v40 = v29;
        v41 = v30;
        goto LABEL_40;
      }

      sub_1D6251838(v7, v6, *(v25 + 32));
      v4 = 0;

      sub_1D5D07BA8(v29, v30, v60);

      v5 = v50;
    }

LABEL_4:
    if (!--v5)
    {
      return;
    }
  }

  v49 = v12;
  v53 = v11;
  v18 = *(v9 + 16);
  v19 = *(v9 + 24);
  v20 = *(v9 + 40);
  v21 = *(v9 + 48);
  v44 = v19;
  v59 = *(v9 + 32);
  v46 = v18;
  if ((v59 & 1) == 0)
  {
    sub_1D5D03180(v11, v49, v13);

    sub_1D5F26358(v18, v19, 0);
    sub_1D62B5FC8(v20, v21);

    v6 = a2;
    if (!v21)
    {
      goto LABEL_3;
    }

LABEL_29:
    sub_1D621E140(a1, v6, v20[3]);
    if (v4)
    {
      sub_1D5F26348(v46, v19, v59);
      sub_1D5FC4E9C(v20, 1);
      goto LABEL_41;
    }

    v54[0] = v20[4];
    v36 = v54[0];
    sub_1D62B7E2C();
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    v37 = v36;
    if (swift_dynamicCast())
    {
      v39 = *(&v56 + 1);
      v38 = v57;
      __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      (*(v38 + 8))(a1, a2, v39, v38);
      __swift_destroy_boxed_opaque_existential_1(&v55);
    }

    else
    {
      *&v57 = 0;
      v55 = 0u;
      v56 = 0u;
      sub_1D5BFB774(&v55, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    }

    sub_1D5F26348(v46, v44, v59);
    sub_1D5FC4E9C(v20, 1);

    sub_1D5D07BA8(v53, v49, v60);

    v7 = a1;
    v6 = a2;
    goto LABEL_4;
  }

  v42 = v18[3];
  sub_1D5D03180(v11, v49, v13);

  sub_1D5F26358(v18, v19, 1);
  sub_1D62B5FC8(v20, v21);

  sub_1D621E2E4(a1, a2, v42);
  if (!v4)
  {
    v43 = v21;
    v22 = v18[5];
    v54[0] = v18[4];
    v54[1] = v22;
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);

    if (swift_dynamicCast())
    {
      v23 = *(&v56 + 1);
      v24 = v57;
      __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      (*(v24 + 8))(a1, a2, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(&v55);
      v6 = a2;
      if (!v43)
      {
        goto LABEL_3;
      }
    }

    else
    {
      *&v57 = 0;
      v55 = 0u;
      v56 = 0u;
      sub_1D5BFB774(&v55, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      v6 = a2;
      if (!v21)
      {
LABEL_3:
        sub_1D5F26348(v46, v19, v59);
        sub_1D5FC4E9C(v20, 0);

        sub_1D5D07BA8(v53, v49, v60);

        v7 = a1;
        goto LABEL_4;
      }
    }

    goto LABEL_29;
  }

  sub_1D5F26348(v18, v19, 1);
  sub_1D5FC4E9C(v20, v21);
LABEL_41:

  sub_1D5D07BA8(v53, v49, v60);
LABEL_42:
}

uint64_t sub_1D621E140(uint64_t result, uint64_t a2, uint64_t a3)
{
  v14 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = &qword_1EDF329A8;
    v5 = (a3 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 8);
      v21 = *v5;
      v9 = v21;
      sub_1D5D03180(v6, v7, v8);
      sub_1D62B7E2C();
      sub_1D5B49474(0, v4, &protocol descriptor for FormatBindable);
      v10 = v9;
      if (swift_dynamicCast())
      {
        v16 = v10;
        v11 = v4;
        v12 = *(&v19 + 1);
        v13 = v20;
        __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
        (*(v13 + 8))(v14, a2, v12, v13);
        sub_1D5D07BA8(v6, v7, v8);

        result = __swift_destroy_boxed_opaque_existential_1(&v18);
        if (v17)
        {
          return result;
        }

        v4 = v11;
      }

      else
      {
        sub_1D5D07BA8(v6, v7, v8);

        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        result = sub_1D5BFB774(&v18, &qword_1EDF329A0, v4, &protocol descriptor for FormatBindable);
      }

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D621E2E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = result;
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a3 + 64;
    do
    {
      v6 = *(v4 - 32);
      v5 = *(v4 - 24);
      v7 = *(v4 - 16);
      sub_1D5D03180(v6, v5, v7);
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      swift_bridgeObjectRetain_n();
      if (swift_dynamicCast())
      {
        v8 = *(&v14 + 1);
        v9 = v15;
        __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
        v10 = v16;
        (*(v9 + 8))(v11, a2, v8, v9);
        sub_1D5D07BA8(v6, v5, v7);

        result = __swift_destroy_boxed_opaque_existential_1(&v13);
        v16 = v10;
        if (v10)
        {
          return result;
        }
      }

      else
      {
        sub_1D5D07BA8(v6, v5, v7);

        v15 = 0;
        v13 = 0u;
        v14 = 0u;
        result = sub_1D5BFB774(&v13, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1D621E474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = &qword_1EDF329A8;
  for (i = a3 + 40; ; i += 48)
  {
    v26 = v4;
    v7 = v5;
    v9 = *(i - 8);
    v8 = *i;
    v10 = *(i + 8);
    v11 = *(i + 16);
    v12 = *(i + 24);
    v32 = *i;
    v27 = v9;
    v25 = v10;
    if (v10 == 1)
    {
      break;
    }

    sub_1D5F26358(v9, v8, 0);
    sub_1D62B5FC8(v11, v12);

    v5 = v7;
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_3:
    sub_1D5F26348(v27, v32, v10);
    sub_1D5FC4E9C(v11, 0);

LABEL_4:
    v4 = v26 - 1;
    if (v26 == 1)
    {
      return;
    }
  }

  v13 = *(v9 + 24);
  sub_1D5F26358(v9, v8, 1);
  sub_1D62B5FC8(v11, v12);

  sub_1D621E2E4(a1, a2, v13);
  if (v3)
  {
    sub_1D5F26348(v9, v32, 1);
    v20 = v11;
    v21 = v12;
    goto LABEL_19;
  }

  v5 = v7;
  sub_1D5B49474(0, v7, &protocol descriptor for FormatBindable);

  if (swift_dynamicCast())
  {
    v22 = v11;
    v14 = *(&v30 + 1);
    v15 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    (*(v15 + 8))(a1, a2, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(&v29);
    v5 = &qword_1EDF329A8;
    v11 = v22;
    LOBYTE(v10) = 1;
    if (v12)
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_1D5BFB774(&v29, &qword_1EDF329A0, v7, &protocol descriptor for FormatBindable);
  LOBYTE(v10) = 1;
  if (!v12)
  {
    goto LABEL_3;
  }

LABEL_13:
  sub_1D621E140(a1, a2, v11[3]);
  if (!v3)
  {
    v16 = v11;
    v28 = v11[4];
    sub_1D62B7E2C();
    sub_1D5B49474(0, v5, &protocol descriptor for FormatBindable);
    v17 = v28;
    if (swift_dynamicCast())
    {
      v18 = *(&v30 + 1);
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
      (*(v19 + 8))(a1, a2, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(&v29);
      sub_1D5F26348(v27, v32, v25);
      sub_1D5FC4E9C(v16, 1);

      v5 = &qword_1EDF329A8;
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      sub_1D5BFB774(&v29, &qword_1EDF329A0, v5, &protocol descriptor for FormatBindable);
      sub_1D5F26348(v27, v32, v25);
      sub_1D5FC4E9C(v11, 1);
    }

    goto LABEL_4;
  }

  sub_1D5F26348(v27, v32, v10);
  v20 = v11;
  v21 = 1;
LABEL_19:
  sub_1D5FC4E9C(v20, v21);
}