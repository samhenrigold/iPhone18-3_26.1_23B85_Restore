uint64_t sub_1E46B3780(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_1E46B3974(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v59 = a5;
  v55 = sub_1E4650534(a5, a6);
  MEMORY[0x1EEE9AC00](v55, v11);
  v57 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v56 = (&v47 - v15);
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_59;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_60;
  }

  v19 = (a2 - a1) / v17;
  v62 = a1;
  v61 = a4;
  v58 = a6;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v21;
    if (v21 >= 1)
    {
      v33 = -v17;
      v34 = a4 + v21;
      v35 = a6;
      v50 = a4;
      v51 = a1;
      v49 = -v17;
      do
      {
        v47 = v32;
        v36 = a2 + v33;
        v37 = v59;
        v52 = a2;
        v53 = a2 + v33;
        while (1)
        {
          if (a2 <= a1)
          {
            v62 = a2;
            v60 = v47;
            goto LABEL_57;
          }

          v38 = a3;
          v48 = v32;
          a3 += v33;
          v39 = v34 + v33;
          v40 = v56;
          v41 = v35;
          v42 = v34;
          sub_1E465E0B0(v34 + v33, v56, v37, v35);
          v43 = v36;
          v44 = v57;
          sub_1E465E0B0(v43, v57, v37, v41);
          v54 = *v40;
          v45 = *v44;
          sub_1E465E050(v44, v37, v41);
          sub_1E465E050(v40, v37, v41);
          if (v54 < v45)
          {
            break;
          }

          v32 = v39;
          if (v38 < v42 || a3 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v53;
            v33 = v49;
          }

          else
          {
            v36 = v53;
            v33 = v49;
            if (v38 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v39;
          a1 = v51;
          v35 = v58;
          v37 = v59;
          a2 = v52;
          if (v39 <= v50)
          {
            goto LABEL_55;
          }
        }

        v46 = v42;
        if (v38 < v52 || a3 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v48;
          v33 = v49;
        }

        else
        {
          a2 = v53;
          v32 = v48;
          v33 = v49;
          if (v38 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v51;
        v34 = v46;
        v35 = v58;
      }

      while (v46 > v50);
    }

LABEL_55:
    v62 = a2;
    v60 = v32;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v54 = a4 + v20;
    v60 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      v52 = v17;
      v53 = a3;
      do
      {
        v23 = v56;
        v25 = v58;
        v24 = v59;
        sub_1E465E0B0(a2, v56, v59, v58);
        v26 = v57;
        sub_1E465E0B0(a4, v57, v24, v25);
        v27 = *v23;
        v28 = *v26;
        sub_1E465E050(v26, v24, v25);
        sub_1E465E050(v23, v24, v25);
        if (v27 >= v28)
        {
          v29 = v52;
          v31 = a4 + v52;
          if (a1 < a4 || a1 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v53;
          }

          else
          {
            v30 = v53;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v61 = v31;
          a4 += v29;
        }

        else
        {
          v29 = v52;
          if (a1 < a2 || a1 >= a2 + v52)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v29;
            v30 = v53;
          }

          else
          {
            v30 = v53;
            if (a1 == a2)
            {
              a2 += v52;
            }

            else
            {
              swift_arrayInitWithTakeBackToFront();
              a2 += v29;
            }
          }
        }

        a1 += v29;
        v62 = a1;
      }

      while (a4 < v54 && a2 < v30);
    }
  }

LABEL_57:
  sub_1E46B3F64(&v62, &v61, &v60, v59, v58);
}

uint64_t sub_1E46B3E80(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1E4709CCC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E46B3F64(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = sub_1E4650534(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E46B4060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E46B412C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E46B869C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E46B7BCC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E46B4198()
{
  v0 = sub_1E470A0DC();
  sub_1E4665F64(v0, qword_1ECF75048);
  sub_1E4665EC4(v0, qword_1ECF75048);
  return sub_1E470A0CC();
}

uint64_t static SecureEngagementDataHelper.mergedTimeSliceData(local:remote:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v41 = a1;
  v42 = a2;
  v6 = sub_1E4650534(&qword_1ECF75060, &unk_1E471E780);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v38 - v8;
  v10 = sub_1E4709ECC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = type metadata accessor for PBPropertyTimeSlice(0);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v38 - v20);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = (&v38 - v24);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1E46552AC(a3, a4);
  sub_1E4709EBC();
  sub_1E46B8C7C(&qword_1ECF75068, type metadata accessor for PBPropertyTimeSlice, &protocol conformance descriptor for PBPropertyTimeSlice);
  sub_1E4709FBC();
  v38 = v17;
  v26 = v40;
  if (!*(*v25 + 16))
  {
    if (qword_1ECF740E0 != -1)
    {
      swift_once();
    }

    v28 = sub_1E470A0DC();
    sub_1E4665EC4(v28, qword_1ECF75048);
    v29 = sub_1E470A0BC();
    v30 = sub_1E470B29C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1E45E0000, v29, v30, "Not merging empty secure engagement data", v31, 2u);
      MEMORY[0x1E6917530](v31, -1, -1);
    }

    sub_1E46B9438(v25, type metadata accessor for PBPropertyTimeSlice);
    return 0;
  }

  v39 = v25;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1E46552AC(v41, v42);
  sub_1E4709EBC();
  v27 = v21;
  sub_1E4709FBC();
  v32 = v21;
  v33 = v39;
  static SecureEngagementDataHelper.mergeIntoTimeSlice(_:from:)(v32, v39, v9);
  v34 = (*(v26 + 48))(v9, 1, v14);
  if (v34 == 1)
  {
    sub_1E46B9438(v27, type metadata accessor for PBPropertyTimeSlice);
    sub_1E46B9438(v33, type metadata accessor for PBPropertyTimeSlice);
    sub_1E465E050(v9, &qword_1ECF75060, &unk_1E471E780);
    return 0;
  }

  v36 = v38;
  sub_1E46B8C14(v9, v38, type metadata accessor for PBPropertyTimeSlice);
  v37 = sub_1E4709FCC();
  sub_1E46B9438(v36, type metadata accessor for PBPropertyTimeSlice);
  sub_1E46B9438(v27, type metadata accessor for PBPropertyTimeSlice);
  sub_1E46B9438(v39, type metadata accessor for PBPropertyTimeSlice);
  return v37;
}

uint64_t static SecureEngagementDataHelper.mergeIntoTimeSlice(_:from:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v355 = a1;
  v333 = a3;
  v4 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v339 = &v322 - v6;
  v338 = type metadata accessor for PBPropertyConfiguration(0);
  v363 = *(v338 - 8);
  MEMORY[0x1EEE9AC00](v338, v7);
  v337 = (&v322 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PBPropertyValue(0);
  v362 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v328 = &v322 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v348 = &v322 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v325 = &v322 - v17;
  v336 = type metadata accessor for PBPropertyBundle(0);
  v358 = *(v336 - 8);
  MEMORY[0x1EEE9AC00](v336, v18);
  v347 = &v322 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v352 = &v322 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v359 = &v322 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v346 = &v322 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v351 = &v322 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v354 = &v322 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v344 = &v322 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v335 = &v322 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v326 = &v322 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v364 = &v322 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v324 = &v322 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v349 = (&v322 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v368 = (&v322 - v55);
  v56 = sub_1E4709E7C();
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v58);
  v356 = &v322 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v366 = &v322 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v357 = &v322 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  *&v360 = &v322 - v68;
  v69 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v69 - 8, v70);
  v345 = &v322 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72, v73);
  v75 = &v322 - v74;
  MEMORY[0x1EEE9AC00](v76, v77);
  v365 = &v322 - v78;
  MEMORY[0x1EEE9AC00](v79, v80);
  v353 = &v322 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  v343 = &v322 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v88 = &v322 - v87;
  MEMORY[0x1EEE9AC00](v89, v90);
  v92 = &v322 - v91;
  v93 = type metadata accessor for PBPropertyTimeSlice(0);
  v331 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v94);
  v96 = (&v322 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v96 = MEMORY[0x1E69E7CC0];
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v97 = *(v93 + 24);
  v98 = v57[7];
  v361 = v96;
  v369 = v97;
  v370 = v98;
  v371 = v57 + 7;
  (v98)(v97 + v96, 1, 1, v56);
  v99 = *(v93 + 24);
  v350 = a2;
  v367 = v99;
  sub_1E465E0B0(a2 + v99, v92, &qword_1ECF74A38, &unk_1E471EB00);
  v372 = v57;
  v100 = v57[6];
  LODWORD(a2) = v100(v92, 1, v56);
  sub_1E465E050(v92, &qword_1ECF74A38, &unk_1E471EB00);
  v332 = v93;
  v101 = *(v93 + 24);
  if (a2 == 1)
  {
    v102 = v355;
    sub_1E465E0B0(v355 + v101, v75, &qword_1ECF74A38, &unk_1E471EB00);
    v103 = v100(v75, 1, v56);
    sub_1E465E050(v75, &qword_1ECF74A38, &unk_1E471EB00);
    if (v103 == 1)
    {
      LODWORD(v353) = 0;
      v104 = v348;
      v105 = v354;
      v106 = v364;
      goto LABEL_26;
    }

    v111 = v345;
    sub_1E465E0B0(v102 + v101, v345, &qword_1ECF74A38, &unk_1E471EB00);
    if (v100(v111, 1, v56) == 1)
    {
      v112 = v356;
      sub_1E4709E6C();
      v113 = v100(v111, 1, v56);
      v114 = v372;
      if (v113 != 1)
      {
        sub_1E465E050(v111, &qword_1ECF74A38, &unk_1E471EB00);
      }
    }

    else
    {
      v114 = v372;
      v112 = v356;
      (v372[4])(v356, v111, v56);
    }

    LODWORD(v353) = 0;
    v104 = v348;
    v105 = v354;
    v106 = v364;
  }

  else
  {
    v107 = v355;
    sub_1E465E0B0(v355 + v101, v88, &qword_1ECF74A38, &unk_1E471EB00);
    v108 = v100(v88, 1, v56);
    sub_1E465E050(v88, &qword_1ECF74A38, &unk_1E471EB00);
    if (v108 == 1)
    {
      v109 = 0;
      v105 = v354;
      v106 = v364;
      v110 = v365;
    }

    else
    {
      v115 = v107;
      v116 = v343;
      sub_1E465E0B0(v350 + v367, v343, &qword_1ECF74A38, &unk_1E471EB00);
      v117 = v100(v116, 1, v56);
      v105 = v354;
      v106 = v364;
      v110 = v365;
      if (v117 == 1)
      {
        sub_1E4709E6C();
        v118 = v100(v116, 1, v56);
        v119 = v372;
        if (v118 != 1)
        {
          sub_1E465E050(v116, &qword_1ECF74A38, &unk_1E471EB00);
        }
      }

      else
      {
        v119 = v372;
        (v372[4])(v360, v116, v56);
      }

      v120 = v115 + v101;
      v121 = v353;
      sub_1E465E0B0(v120, v353, &qword_1ECF74A38, &unk_1E471EB00);
      if (v100(v121, 1, v56) == 1)
      {
        v122 = v357;
        sub_1E4709E6C();
        if (v100(v121, 1, v56) != 1)
        {
          sub_1E465E050(v121, &qword_1ECF74A38, &unk_1E471EB00);
        }
      }

      else
      {
        v122 = v357;
        (v119[4])(v357, v121, v56);
      }

      sub_1E46B8C7C(&qword_1ECF75070, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v123 = v360;
      v124 = sub_1E470AEFC();
      v125 = v122;
      v126 = v124;
      v127 = v119[1];
      v127(v125, v56);
      v127(v123, v56);
      v109 = v126 ^ 1;
    }

    sub_1E465E0B0(v350 + v367, v110, &qword_1ECF74A38, &unk_1E471EB00);
    v128 = v100(v110, 1, v56);
    v112 = v366;
    LODWORD(v353) = v109;
    if (v128 == 1)
    {
      sub_1E4709E6C();
      v129 = v100(v110, 1, v56);
      v114 = v372;
      if (v129 != 1)
      {
        sub_1E465E050(v110, &qword_1ECF74A38, &unk_1E471EB00);
      }
    }

    else
    {
      v114 = v372;
      (v372[4])(v366, v110, v56);
    }

    v104 = v348;
  }

  v130 = v361;
  v131 = v369;
  sub_1E465E050(v369 + v361, &qword_1ECF74A38, &unk_1E471EB00);
  (v114[4])(v131 + v130, v112, v56);
  (v370)(v131 + v130, 0, 1, v56);
LABEL_26:
  v132 = sub_1E46B6E28(v355);
  v134 = v133;
  v367 = sub_1E46B6E28(v350);
  v136 = v135;

  v330 = v136;
  v329 = v134;
  v138 = sub_1E46B71BC(v137, v134);
  v139 = v138;
  v140 = *(v138 + 16);
  if (!v140)
  {
LABEL_29:

    v141 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v141 = sub_1E46B7AC8(*(v138 + 16), 0, &unk_1ECF74CE0, &qword_1E471D520);
  v142 = sub_1E46B8A54(&v374, v141 + 4, v140, v139);
  sub_1E45E781C(v374);
  if (v142 != v140)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_30:
  v374 = v141;

  sub_1E46B412C(&v374);
  v345 = 0;

  v144 = v374;
  v366 = *(v374 + 2);
  v145 = v355;
  if (!v366)
  {
LABEL_144:

    v318 = v353;

    v319 = v333;
    if (v318)
    {
LABEL_147:
      sub_1E46B8C14(v361, v319, type metadata accessor for PBPropertyTimeSlice);
      v320 = 0;
    }

    else
    {
      sub_1E46B9438(v361, type metadata accessor for PBPropertyTimeSlice);
      v320 = 1;
    }

    return (*(v331 + 56))(v319, v320, 1, v332);
  }

  v146 = 0;
  v365 = v374 + 32;
  v342 = (v363 + 56);
  v334 = (v363 + 48);
  *&v143 = 136315138;
  v360 = v143;
  v369 = MEMORY[0x1E69E7CC0];
  v356 = v132;
  v357 = v374;
  do
  {
    v148 = &v365[16 * v146];
    v150 = *v148;
    v149 = v148[1];
    v371 = (v146 + 1);
    v151 = *(v132 + 16);

    if (v151)
    {
      v152 = sub_1E46553DC(v150, v149);
      if (v153)
      {
        v154 = *(*(v132 + 56) + 8 * v152);
        if (*(v367 + 16))
        {
          v155 = sub_1E46553DC(v150, v149);
          if (v156)
          {
            if ((v154 & 0x8000000000000000) != 0)
            {
              goto LABEL_157;
            }

            v147 = *v145;
            if (v154 >= *(*v145 + 16))
            {
              goto LABEL_158;
            }

            v157 = *(*(v367 + 56) + 8 * v155);
            v158 = (*(v358 + 80) + 32) & ~*(v358 + 80);
            v159 = *(v358 + 72);
            sub_1E46B8BAC(v147 + v158 + v159 * v154, v368, type metadata accessor for PBPropertyBundle);
            if ((v157 & 0x8000000000000000) != 0)
            {
              goto LABEL_159;
            }

            v147 = *v350;
            if (v157 >= *(*v350 + 16))
            {
              goto LABEL_160;
            }

            v341 = v158;
            v340 = v159;
            v160 = v147 + v158 + v159 * v157;
            v161 = v349;
            sub_1E46B8BAC(v160, v349, type metadata accessor for PBPropertyBundle);
            v162 = sub_1E46B72C0(v368);
            v164 = v163;
            v165 = sub_1E46B72C0(v161);

            v167 = sub_1E46B71BC(v166, v164);
            v168 = v167;
            v169 = *(v167 + 16);
            if (v169)
            {
              v170 = sub_1E46B7AC8(*(v167 + 16), 0, &unk_1ECF74CE0, &qword_1E471D520);
              v171 = sub_1E46B8A54(&v374, v170 + 4, v169, v168);
              sub_1E45E781C(v374);
              if (v171 != v169)
              {
                goto LABEL_161;
              }
            }

            else
            {

              v170 = MEMORY[0x1E69E7CC0];
            }

            v374 = v170;

            v222 = v345;
            sub_1E46B412C(&v374);
            v147 = &v373;
            v345 = v222;
            if (v222)
            {
              goto LABEL_166;
            }

            v223 = v374;
            v224 = *(v374 + 2);
            if (v224)
            {
              v225 = 0;
              v226 = 0;
              v370 = -v224;
              v227 = v374 + 40;
              v372 = MEMORY[0x1E69E7CC0];
              v363 = v374;
              v327 = v374 + 40;
LABEL_78:
              LODWORD(v343) = v225;
              v228 = &v227[16 * v226++];
              while (1)
              {
                v147 = v226 - 1;
                if ((v226 - 1) >= *(v223 + 2))
                {
                  __break(1u);
                  goto LABEL_150;
                }

                v230 = *(v228 - 1);
                v229 = *v228;
                v231 = *(v162 + 16);

                if (v231 && (v232 = sub_1E46553DC(v230, v229), (v233 & 1) != 0))
                {
                  v234 = *(*(v162 + 56) + 8 * v232);
                  if (*(v165 + 16))
                  {
                    v235 = sub_1E46553DC(v230, v229);
                    v237 = v236;

                    if (v237)
                    {
                      v147 = *(*(v165 + 56) + 8 * v235);
                      if ((v147 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_164;
                      }

                      if (v147 < *(*v349 + 16))
                      {
                        v275 = (*(v362 + 80) + 32) & ~*(v362 + 80);
                        v276 = *(v362 + 72);
                        sub_1E46B8BAC(*v349 + v275 + v276 * v147, v325, type metadata accessor for PBPropertyValue);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v372 = sub_1E4693CC0(0, v372[2] + 1, 1, v372);
                        }

                        v278 = v372[2];
                        v277 = v372[3];
                        if (v278 >= v277 >> 1)
                        {
                          v372 = sub_1E4693CC0((v277 > 1), v278 + 1, 1, v372);
                        }

                        v279 = v372;
                        v372[2] = v278 + 1;
                        sub_1E46B8C14(v325, v279 + v275 + v278 * v276, type metadata accessor for PBPropertyValue);
                        if (qword_1ECF740E0 != -1)
                        {
                          swift_once();
                        }

                        v280 = sub_1E470A0DC();
                        sub_1E4665EC4(v280, qword_1ECF75048);
                        v263 = v324;
                        sub_1E46B8BAC(v349, v324, type metadata accessor for PBPropertyBundle);
                        v264 = sub_1E470A0BC();
                        v281 = sub_1E470B29C();
                        if (!os_log_type_enabled(v264, v281))
                        {
                          goto LABEL_124;
                        }

                        v282 = swift_slowAlloc();
                        v323 = v282;
                        v343 = swift_slowAlloc();
                        v374 = v343;
                        v283 = *&v360;
                        *v282 = v360;
                        v284 = sub_1E467ADA8(v283);
                        v286 = v285;
                        sub_1E46B9438(v263, type metadata accessor for PBPropertyBundle);
                        v287 = sub_1E4654D04(v284, v286, &v374);

                        v288 = v323;
                        *(v323 + 1) = v287;
                        _os_log_impl(&dword_1E45E0000, v264, v281, "Taking on cloud property value %s instead of the local version", v288, 0xCu);
                        v289 = v343;
                        sub_1E4658A0C(v343);
                        MEMORY[0x1E6917530](v289, -1, -1);
                        v274 = v288;
LABEL_123:
                        MEMORY[0x1E6917530](v274, -1, -1);

                        goto LABEL_125;
                      }

                      goto LABEL_165;
                    }

                    if ((v234 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_151;
                    }
                  }

                  else
                  {

                    if ((v234 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_151;
                    }
                  }

                  v147 = *v368;
                  if (v234 >= *(*v368 + 16))
                  {
                    goto LABEL_152;
                  }

                  v241 = (*(v362 + 80) + 32) & ~*(v362 + 80);
                  v242 = *(v362 + 72);
                  sub_1E46B8BAC(v147 + v241 + v242 * v234, v104, type metadata accessor for PBPropertyValue);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v372 = sub_1E4693CC0(0, v372[2] + 1, 1, v372);
                  }

                  v244 = v372[2];
                  v243 = v372[3];
                  if (v244 >= v243 >> 1)
                  {
                    v372 = sub_1E4693CC0((v243 > 1), v244 + 1, 1, v372);
                  }

                  v245 = v372;
                  v372[2] = v244 + 1;
                  sub_1E46B8C14(v104, v245 + v241 + v244 * v242, type metadata accessor for PBPropertyValue);
                  if (qword_1ECF740E0 != -1)
                  {
                    swift_once();
                  }

                  v246 = sub_1E470A0DC();
                  sub_1E4665EC4(v246, qword_1ECF75048);
                  sub_1E46B8BAC(v368, v106, type metadata accessor for PBPropertyBundle);
                  v247 = sub_1E470A0BC();
                  v248 = sub_1E470B29C();
                  if (os_log_type_enabled(v247, v248))
                  {
                    v249 = swift_slowAlloc();
                    v250 = swift_slowAlloc();
                    v374 = v250;
                    v251 = *&v360;
                    *v249 = v360;
                    v252 = sub_1E467ADA8(v251);
                    v254 = v253;
                    sub_1E46B9438(v364, type metadata accessor for PBPropertyBundle);
                    v255 = sub_1E4654D04(v252, v254, &v374);
                    v106 = v364;

                    *(v249 + 4) = v255;
                    _os_log_impl(&dword_1E45E0000, v247, v248, "Keeping property bundle %s unchanged", v249, 0xCu);
                    sub_1E4658A0C(v250);
                    v256 = v250;
                    v104 = v348;
                    MEMORY[0x1E6917530](v256, -1, -1);
                    MEMORY[0x1E6917530](v249, -1, -1);
                  }

                  else
                  {

                    sub_1E46B9438(v106, type metadata accessor for PBPropertyBundle);
                  }

                  v223 = v363;
                }

                else if (*(v165 + 16))
                {
                  v238 = sub_1E46553DC(v230, v229);
                  v240 = v239;

                  if (v240)
                  {
                    v147 = *(*(v165 + 56) + 8 * v238);
                    if ((v147 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_162;
                    }

                    if (v147 < *(*v349 + 16))
                    {
                      v257 = (*(v362 + 80) + 32) & ~*(v362 + 80);
                      v258 = *(v362 + 72);
                      sub_1E46B8BAC(*v349 + v257 + v258 * v147, v328, type metadata accessor for PBPropertyValue);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v372 = sub_1E4693CC0(0, v372[2] + 1, 1, v372);
                      }

                      v260 = v372[2];
                      v259 = v372[3];
                      if (v260 >= v259 >> 1)
                      {
                        v372 = sub_1E4693CC0((v259 > 1), v260 + 1, 1, v372);
                      }

                      v261 = v372;
                      v372[2] = v260 + 1;
                      sub_1E46B8C14(v328, v261 + v257 + v260 * v258, type metadata accessor for PBPropertyValue);
                      if (qword_1ECF740E0 != -1)
                      {
                        swift_once();
                      }

                      v262 = sub_1E470A0DC();
                      sub_1E4665EC4(v262, qword_1ECF75048);
                      v263 = v326;
                      sub_1E46B8BAC(v349, v326, type metadata accessor for PBPropertyBundle);
                      v264 = sub_1E470A0BC();
                      v265 = sub_1E470B29C();
                      if (os_log_type_enabled(v264, v265))
                      {
                        v266 = swift_slowAlloc();
                        v267 = swift_slowAlloc();
                        v374 = v267;
                        v268 = *&v360;
                        *v266 = v360;
                        v269 = sub_1E467ADA8(v268);
                        v271 = v270;
                        sub_1E46B9438(v263, type metadata accessor for PBPropertyBundle);
                        v272 = sub_1E4654D04(v269, v271, &v374);
                        v104 = v348;

                        *(v266 + 4) = v272;
                        _os_log_impl(&dword_1E45E0000, v264, v265, "Taking on cloud property value %s", v266, 0xCu);
                        sub_1E4658A0C(v267);
                        v273 = v267;
                        v106 = v364;
                        MEMORY[0x1E6917530](v273, -1, -1);
                        v274 = v266;
                        goto LABEL_123;
                      }

LABEL_124:

                      sub_1E46B9438(v263, type metadata accessor for PBPropertyBundle);
LABEL_125:
                      v223 = v363;
                      v225 = 1;
                      v227 = v327;
                      if (v370 + v226)
                      {
                        goto LABEL_78;
                      }

                      LODWORD(v343) = 1;
LABEL_128:
                      v290 = MEMORY[0x1E69E7CC0];
                      goto LABEL_130;
                    }

                    goto LABEL_163;
                  }
                }

                else
                {
                }

                ++v226;
                v228 += 2;
                if (v370 + v226 == 1)
                {

                  goto LABEL_128;
                }
              }
            }

            LODWORD(v343) = 0;
            v290 = MEMORY[0x1E69E7CC0];
            v372 = MEMORY[0x1E69E7CC0];
LABEL_130:

            v291 = v335;
            *v335 = v290;
            *(v291 + 1) = v290;
            v292 = v336;
            _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
            v293 = *v342;
            v294 = v338;
            (*v342)(&v291[*(v292 + 28)], 1, 1, v338);
            v295 = v339;
            sub_1E465E0B0(v349 + *(v292 + 28), v339, &qword_1ECF74A28, &unk_1E471E790);
            v296 = *v334;
            v297 = (*v334)(v295, 1, v294);
            v298 = v337;
            if (v297 == 1)
            {
              *v337 = 0;
              v298[1] = 0;
              v298[2] = 0;
              v298[3] = 0xE000000000000000;
              v298[4] = 0;
              _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
              v299 = v296(v295, 1, v294);
              v144 = v357;
              if (v299 != 1)
              {
                sub_1E465E050(v295, &qword_1ECF74A28, &unk_1E471E790);
              }
            }

            else
            {
              sub_1E46B8C14(v295, v337, type metadata accessor for PBPropertyConfiguration);
              v144 = v357;
            }

            swift_beginAccess();
            v300 = *(v292 + 28);
            sub_1E465E050(&v291[v300], &qword_1ECF74A28, &unk_1E471E790);
            sub_1E46B8C14(v298, &v291[v300], type metadata accessor for PBPropertyConfiguration);
            v293(&v291[v300], 0, 1, v294);
            *v291 = v372;

            sub_1E46B8BAC(v291, v344, type metadata accessor for PBPropertyBundle);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v369 = sub_1E4693C98(0, v369[2] + 1, 1, v369);
            }

            v301 = v341;
            v302 = v340;
            v304 = v369[2];
            v303 = v369[3];
            if (v304 >= v303 >> 1)
            {
              v369 = sub_1E4693C98((v303 > 1), v304 + 1, 1, v369);
            }

            v305 = v369;
            v369[2] = v304 + 1;
            sub_1E46B8C14(v344, v305 + v301 + v304 * v302, type metadata accessor for PBPropertyBundle);
            *v361 = v305;
            if (qword_1ECF740E0 != -1)
            {
              swift_once();
            }

            v306 = sub_1E470A0DC();
            sub_1E4665EC4(v306, qword_1ECF75048);
            v307 = sub_1E470A0BC();
            v308 = sub_1E470B29C();
            v309 = os_log_type_enabled(v307, v308);
            v310 = v353;
            if (v309)
            {
              v311 = swift_slowAlloc();
              v312 = swift_slowAlloc();
              v374 = v312;
              v313 = *&v360;
              *v311 = v360;
              v314 = sub_1E467ADA8(v313);
              v316 = v291;
              v317 = sub_1E4654D04(v314, v315, &v374);

              *(v311 + 4) = v317;

              _os_log_impl(&dword_1E45E0000, v307, v308, "Merged property bundle %s", v311, 0xCu);
              sub_1E4658A0C(v312);
              MEMORY[0x1E6917530](v312, -1, -1);
              MEMORY[0x1E6917530](v311, -1, -1);

              v145 = v355;
            }

            else
            {

              v145 = v355;
              v316 = v291;
            }

            v105 = v354;
            v132 = v356;
            v146 = v371;
            LODWORD(v353) = v310 | v343;
            sub_1E46B9438(v349, type metadata accessor for PBPropertyBundle);
            sub_1E46B9438(v368, type metadata accessor for PBPropertyBundle);
            sub_1E46B9438(v316, type metadata accessor for PBPropertyBundle);
            v106 = v364;
            goto LABEL_34;
          }
        }

        if ((v154 & 0x8000000000000000) != 0)
        {
          goto LABEL_154;
        }

        v147 = *v145;
        if (v154 >= *(*v145 + 16))
        {
          goto LABEL_156;
        }

        v200 = (*(v358 + 80) + 32) & ~*(v358 + 80);
        v201 = *(v358 + 72);
        sub_1E46B8BAC(v147 + v200 + v201 * v154, v105, type metadata accessor for PBPropertyBundle);
        v202 = v105;
        sub_1E46B8BAC(v105, v351, type metadata accessor for PBPropertyBundle);
        v203 = v106;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v369 = sub_1E4693C98(0, v369[2] + 1, 1, v369);
        }

        v204 = v145;
        v206 = v369[2];
        v205 = v369[3];
        v207 = v104;
        if (v206 >= v205 >> 1)
        {
          v369 = sub_1E4693C98((v205 > 1), v206 + 1, 1, v369);
        }

        v208 = v369;
        v369[2] = v206 + 1;
        sub_1E46B8C14(v351, v208 + v200 + v206 * v201, type metadata accessor for PBPropertyBundle);
        *v361 = v208;
        if (qword_1ECF740E0 != -1)
        {
          swift_once();
        }

        v209 = sub_1E470A0DC();
        sub_1E4665EC4(v209, qword_1ECF75048);
        v210 = v346;
        sub_1E46B8BAC(v202, v346, type metadata accessor for PBPropertyBundle);
        v211 = sub_1E470A0BC();
        v212 = sub_1E470B29C();
        v104 = v207;
        if (!os_log_type_enabled(v211, v212))
        {

          sub_1E46B9438(v210, type metadata accessor for PBPropertyBundle);
          sub_1E46B9438(v202, type metadata accessor for PBPropertyBundle);
          v132 = v356;
          v146 = v371;
          v145 = v204;
          v106 = v203;
          v105 = v202;
LABEL_34:
          if (v146 == v366)
          {
            goto LABEL_144;
          }

          goto LABEL_35;
        }

        v213 = v210;
        v214 = swift_slowAlloc();
        v215 = swift_slowAlloc();
        v374 = v215;
        v216 = *&v360;
        *v214 = v360;
        v217 = sub_1E467ADA8(v216);
        v219 = v218;
        v220 = v213;
        v106 = v364;
        sub_1E46B9438(v220, type metadata accessor for PBPropertyBundle);
        v221 = sub_1E4654D04(v217, v219, &v374);

        *(v214 + 4) = v221;
        _os_log_impl(&dword_1E45E0000, v211, v212, "Keeping local property bundle %s unchanged", v214, 0xCu);
        sub_1E4658A0C(v215);
        MEMORY[0x1E6917530](v215, -1, -1);
        MEMORY[0x1E6917530](v214, -1, -1);

        v105 = v354;
        v145 = v355;
        sub_1E46B9438(v354, type metadata accessor for PBPropertyBundle);
        v132 = v356;
LABEL_33:
        v146 = v371;
        goto LABEL_34;
      }
    }

    v172 = v367;
    if (!*(v367 + 16))
    {

      goto LABEL_33;
    }

    v173 = sub_1E46553DC(v150, v149);
    v175 = v174;

    if ((v175 & 1) == 0)
    {
      v144 = v357;
      goto LABEL_33;
    }

    v147 = *(*(v172 + 56) + 8 * v173);
    if ((v147 & 0x8000000000000000) != 0)
    {
      goto LABEL_153;
    }

    if (v147 >= *(*v350 + 16))
    {
      goto LABEL_155;
    }

    v176 = (*(v358 + 80) + 32) & ~*(v358 + 80);
    v177 = *(v358 + 72);
    v178 = v359;
    sub_1E46B8BAC(*v350 + v176 + v177 * v147, v359, type metadata accessor for PBPropertyBundle);
    sub_1E46B8BAC(v178, v352, type metadata accessor for PBPropertyBundle);
    v179 = v106;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v369 = sub_1E4693C98(0, v369[2] + 1, 1, v369);
    }

    v180 = v145;
    v182 = v369[2];
    v181 = v369[3];
    v183 = v104;
    if (v182 >= v181 >> 1)
    {
      v369 = sub_1E4693C98((v181 > 1), v182 + 1, 1, v369);
    }

    v184 = v369;
    v369[2] = v182 + 1;
    sub_1E46B8C14(v352, v184 + v176 + v182 * v177, type metadata accessor for PBPropertyBundle);
    *v361 = v184;
    if (qword_1ECF740E0 != -1)
    {
      swift_once();
    }

    v185 = sub_1E470A0DC();
    sub_1E4665EC4(v185, qword_1ECF75048);
    v186 = v359;
    v187 = v347;
    sub_1E46B8BAC(v359, v347, type metadata accessor for PBPropertyBundle);
    v188 = sub_1E470A0BC();
    v189 = sub_1E470B29C();
    v190 = v183;
    if (os_log_type_enabled(v188, v189))
    {
      v191 = v187;
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v374 = v193;
      v194 = *&v360;
      *v192 = v360;
      v195 = sub_1E467ADA8(v194);
      v197 = v196;
      sub_1E46B9438(v191, type metadata accessor for PBPropertyBundle);
      v198 = v195;
      v106 = v364;
      v199 = sub_1E4654D04(v198, v197, &v374);

      *(v192 + 4) = v199;
      _os_log_impl(&dword_1E45E0000, v188, v189, "Taking on cloud property bundle %s", v192, 0xCu);
      sub_1E4658A0C(v193);
      MEMORY[0x1E6917530](v193, -1, -1);
      MEMORY[0x1E6917530](v192, -1, -1);

      v105 = v354;
      v145 = v355;
      sub_1E46B9438(v359, type metadata accessor for PBPropertyBundle);
      v132 = v356;
      v146 = v371;
    }

    else
    {

      sub_1E46B9438(v187, type metadata accessor for PBPropertyBundle);
      sub_1E46B9438(v186, type metadata accessor for PBPropertyBundle);
      v132 = v356;
      v146 = v371;
      v145 = v180;
      v106 = v179;
    }

    if (v146 == v366)
    {

      v319 = v333;
      goto LABEL_147;
    }

    v104 = v190;
    LODWORD(v353) = 1;
    v144 = v357;
LABEL_35:
    v147 = *(v144 + 2);
  }

  while (v146 < v147);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:

  __break(1u);
  return result;
}

uint64_t sub_1E46B6E28(uint64_t *a1)
{
  v2 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v27 - v4;
  v6 = type metadata accessor for PBPropertyConfiguration(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for PBPropertyBundle(0);
  MEMORY[0x1EEE9AC00](v31, v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[2] = MEMORY[0x1E69E7CD0];
  v15 = *a1;
  v30 = *(*a1 + 16);
  if (!v30)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v16 = 0;
  v17 = v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v28 = *(v12 + 72);
  v18 = MEMORY[0x1E69E7CC8];
  v19 = (v7 + 48);
  v29 = v6;
  v27 = (v7 + 48);
  do
  {
    sub_1E46B8BAC(v17, v14, type metadata accessor for PBPropertyBundle);
    sub_1E465E0B0(&v14[*(v31 + 28)], v5, &qword_1ECF74A28, &unk_1E471E790);
    v25 = *v19;
    if ((*v19)(v5, 1, v6) == 1)
    {
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = 0xE000000000000000;
      v10[4] = 0;
      _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
      sub_1E46B9438(v14, type metadata accessor for PBPropertyBundle);
      if (v25(v5, 1, v6) != 1)
      {
        sub_1E465E050(v5, &qword_1ECF74A28, &unk_1E471E790);
      }
    }

    else
    {
      sub_1E46B9438(v14, type metadata accessor for PBPropertyBundle);
      sub_1E46B8C14(v5, v10, type metadata accessor for PBPropertyConfiguration);
    }

    v20 = v5;
    v22 = v10[2];
    v21 = v10[3];

    sub_1E46B9438(v10, type metadata accessor for PBPropertyConfiguration);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = v18;
    sub_1E46C7500(v16, v22, v21, isUniquelyReferenced_nonNull_native);
    v18 = v32[0];
    v24 = v21;
    v5 = v20;
    sub_1E46C8108(v32, v22, v24);

    v6 = v29;
    v17 += v28;
    ++v16;
    v19 = v27;
  }

  while (v30 != v16);
  return v18;
}

uint64_t sub_1E46B71BC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1E46C8108(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E46B72C0(uint64_t *a1)
{
  v53 = sub_1E4709C4C();
  v2 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v3);
  v52 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E4709CCC();
  v5 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v6);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v42 - v10;
  v12 = sub_1E4709E7C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for PBPropertyValue(0);
  MEMORY[0x1EEE9AC00](v54, v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1E69E7CD0];
  v21 = *a1;
  v49 = *(*a1 + 16);
  if (!v49)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v22 = 0;
  v23 = v5;
  v24 = v21 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v47 = *(v18 + 72);
  v25 = (v13 + 48);
  v44 = (v2 + 8);
  v45 = (v13 + 8);
  v42 = (v13 + 32);
  v43 = (v23 + 8);
  v26 = MEMORY[0x1E69E7CC8];
  v46 = v25;
  v48 = v11;
  do
  {
    sub_1E46B8BAC(v24, v20, type metadata accessor for PBPropertyValue);
    sub_1E465E0B0(&v20[*(v54 + 28)], v11, &qword_1ECF74A38, &unk_1E471EB00);
    v30 = *v25;
    if ((*v25)(v11, 1, v12) == 1)
    {
      sub_1E4709E6C();
      if (v30(v11, 1, v12) != 1)
      {
        sub_1E465E050(v11, &qword_1ECF74A38, &unk_1E471EB00);
      }
    }

    else
    {
      (*v42)(v16, v11, v12);
    }

    v31 = v50;
    sub_1E4709E5C();
    v32 = v16;
    v33 = v12;
    v34 = (*v45)(v16, v12);
    v35 = v52;
    MEMORY[0x1E6914630](v34);
    sub_1E46B8C7C(&unk_1ECF75080, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
    v36 = v53;
    sub_1E4709CAC();
    (*v44)(v35, v36);
    (*v43)(v31, v51);
    v38 = v55;
    v37 = v56;
    v39 = &v20[*(v54 + 32)];
    v40 = v39[1];
    if (v40)
    {
      v55 = *v39;
      v56 = v40;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1E6915D10](124, 0xE100000000000000);

      MEMORY[0x1E6915D10](v38, v37);
    }

    else
    {
      v55 = 124;
      v56 = 0xE100000000000000;
      MEMORY[0x1E6915D10](v38, v37);
    }

    v27 = v55;
    v28 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v26;
    sub_1E46C7500(v22, v27, v28, isUniquelyReferenced_nonNull_native);
    v26 = v55;
    sub_1E46C8108(&v55, v27, v28);

    sub_1E46B9438(v20, type metadata accessor for PBPropertyValue);
    v24 += v47;
    ++v22;
    v12 = v33;
    v16 = v32;
    v11 = v48;
    v25 = v46;
  }

  while (v49 != v22);
  return v26;
}

id SecureEngagementDataHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecureEngagementDataHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureEngagementDataHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SecureEngagementDataHelper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SecureEngagementDataHelper();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_1E46B79B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1E4650534(&qword_1ECF74C00, &unk_1E471D880);
  v4 = *(sub_1E4709CCC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1E46B7AC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1E4650534(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_1E46B7B44(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1E4650534(&qword_1ECF75078, qword_1E471E7D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1E46B7BCC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E470B80C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1E470B0EC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E46B7D94(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E46B7CC4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E46B7CC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1E470B84C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E46B7D94(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1E46B8624(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1E46B8370((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1E470B84C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1E470B84C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E4693950(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1E4693950((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1E46B8370((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1E46B8624(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1E46B8598(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1E470B84C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1E46B8370(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1E470B84C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1E470B84C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1E46B8598(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E46B8624(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_1E46B86B0(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 10) | (16 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1E46B87B0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v42 = sub_1E4709CCC();
  v44 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v8);
  v43 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v11);
  v41 = &v35 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 64;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42, v12);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1E46B8A54(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E46B8BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E46B8C14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E46B8C7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1E46B8CC4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1E470B4FC();
  sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
  sub_1E46B93D0();
  result = sub_1E470B18C();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1E470B52C())
      {
        goto LABEL_30;
      }

      sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_1E46B8EE0(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_22:
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v10 = v20 & *(v4 + 64);
    v22 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_26:
    v14 = 0;
    a3 = 0;
    goto LABEL_33;
  }

  result = sub_1E470B67C();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v22 = 0;
  if (!a2)
  {
    goto LABEL_26;
  }

LABEL_3:
  if (!a3)
  {
    v14 = 0;
    goto LABEL_33;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_1E470B6AC())
      {
        goto LABEL_32;
      }

      swift_unknownObjectRelease();
      sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
      swift_dynamicCast();
      result = v24;
      v14 = v11;
      if (!v24)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    if (!v10)
    {
      break;
    }

    v14 = v11;
LABEL_17:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    result = *(*(v4 + 56) + ((v14 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_33;
    }

LABEL_18:
    *a2 = result;
    a3 = v23;
    if (v13 == v23)
    {
LABEL_32:
      v14 = v11;
      goto LABEL_33;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v14 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v14);
    ++v15;
    if (v10)
    {
      v11 = v14;
      goto LABEL_17;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v21 = v11 + 1;
  }

  else
  {
    v21 = v12;
  }

  v14 = v21 - 1;
LABEL_33:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v22;
  v7[3] = v14;
  v7[4] = v10;
  return a3;
}

BOOL _s13BookDataStore016SecureEngagementB6HelperC7isEmpty9timeSliceSb10Foundation0B0V_tFZ_0(uint64_t a1, unint64_t a2, double a3)
{
  v5 = sub_1E4709ECC();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = type metadata accessor for PBPropertyTimeSlice(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = 0;
  memset(&v14[16], 0, 32);
  sub_1E46552AC(a1, a2);
  sub_1E4709EBC();
  sub_1E46B8C7C(&qword_1ECF75068, type metadata accessor for PBPropertyTimeSlice, &protocol conformance descriptor for PBPropertyTimeSlice);
  sub_1E4709FBC();
  v11 = *v10;

  sub_1E46B9438(v10, type metadata accessor for PBPropertyTimeSlice);
  v12 = *(v11 + 16);

  return v12 == 0;
}

unint64_t sub_1E46B93D0()
{
  result = qword_1ECF75310;
  if (!qword_1ECF75310)
  {
    sub_1E45E2DE8(255, &unk_1ECF75C30, 0x1E695BA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75310);
  }

  return result;
}

uint64_t sub_1E46B9438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E46B94C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1E4650534(&qword_1ECF74368, &qword_1E471B1E0);
    v2 = sub_1E470B70C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(*(a1 + 56) + 8 * v12);

        v17 = v16;
        v18 = sub_1E46553DC(v15, v14);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v15;
          v8[1] = v14;
          v9 = v18;

          *(v2[7] + 8 * v9) = v17;
          swift_unknownObjectRelease();
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v15;
          v20[1] = v14;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1E46B96A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1E4650534(&qword_1ECF75240, &qword_1E471E878);
    v2 = sub_1E470B70C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        sub_1E46588B4(*(a1 + 56) + 40 * v13, &v29);
        v27 = v16;
        v28 = v15;

        swift_dynamicCast();
        sub_1E46BAC64(&v23, v25);
        sub_1E46BAC64(v25, v26);
        sub_1E46BAC64(v26, &v24);
        v17 = sub_1E46553DC(v16, v15);
        if (v18)
        {
          v8 = (v2[6] + 16 * v17);
          *v8 = v16;
          v8[1] = v15;
          v9 = v17;

          v10 = (v2[7] + 32 * v9);
          sub_1E4658A0C(v10);
          sub_1E46BAC64(&v24, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          v19 = (v2[6] + 16 * v17);
          *v19 = v16;
          v19[1] = v15;
          sub_1E46BAC64(&v24, (v2[7] + 32 * v17));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1E46B9910(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1E4650534(&unk_1ECF75250, qword_1E471E888);
    v2 = sub_1E470B70C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1E4658ABC(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1E46BAC64(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1E46BAC64(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1E46BAC64(v31, v32);
    v16 = sub_1E470B54C();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_1E46BAC64(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1E46B9BD8()
{
  v0 = sub_1E470A0DC();
  sub_1E4665F64(v0, qword_1ECF7B610);
  sub_1E4665EC4(v0, qword_1ECF7B610);
  type metadata accessor for CloudSecureManagerProxy();
  sub_1E4650534(&qword_1ECF75248, &qword_1E471E880);
  sub_1E470AF6C();
  return sub_1E470A0CC();
}

void sub_1E46B9CB0(uint64_t a1)
{
  sub_1E46B9910(a1);
  v1 = sub_1E470AE2C();

  oslog = [objc_opt_self() notificationFromRemoteNotificationDictionary_];

  if (oslog)
  {
    sub_1E46B9F18(oslog);
  }

  else
  {
    if (qword_1ECF740E8 != -1)
    {
      swift_once();
    }

    v2 = sub_1E470A0DC();
    sub_1E4665EC4(v2, qword_1ECF7B610);

    oslog = sub_1E470A0BC();
    v3 = sub_1E470B2AC();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      v6 = sub_1E470AE4C();
      v8 = sub_1E4654D04(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1E45E0000, oslog, v3, "CloudSecureManagerService cannot handle notification with userInfo %s", v4, 0xCu);
      sub_1E4658A0C(v5);
      MEMORY[0x1E6917530](v5, -1, -1);
      MEMORY[0x1E6917530](v4, -1, -1);
    }
  }
}

void sub_1E46B9F18(void *a1)
{
  v2 = v1;
  sub_1E470B2DC();
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC13BookDataStore23CloudSecureManagerProxy_serviceProxy);
    oslog = sub_1E470AF0C();

    [v5 signalFetchChangesTransaction_];
  }

  else
  {
    if (qword_1ECF740E8 != -1)
    {
      swift_once();
    }

    v6 = sub_1E470A0DC();
    sub_1E4665EC4(v6, qword_1ECF7B610);
    v7 = a1;
    oslog = sub_1E470A0BC();
    v8 = sub_1E470B2AC();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v7;
      *v10 = v7;
      v11 = v7;
      _os_log_impl(&dword_1E45E0000, oslog, v8, "CloudSecureManagerService cannot handle notification %@ with no subscriptionID", v9, 0xCu);
      sub_1E46BA998(v10);
      MEMORY[0x1E6917530](v10, -1, -1);
      MEMORY[0x1E6917530](v9, -1, -1);
    }
  }
}

uint64_t sub_1E46BA1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1E46BA260(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1E46BA2B4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t static CloudSecureManagerProxy.shared.getter()
{
  if (qword_1EE2AD590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t static CloudSecureManagerProxy.shared.setter(uint64_t a1)
{
  if (qword_1EE2AD590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE2AD5A0 = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*static CloudSecureManagerProxy.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE2AD590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1E46BA580@<X0>(void *a1@<X8>)
{
  if (qword_1EE2AD590 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EE2AD5A0;
  return swift_unknownObjectRetain();
}

uint64_t sub_1E46BA600(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EE2AD590;
  swift_unknownObjectRetain();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE2AD5A0 = v1;
  return swift_unknownObjectRelease();
}

id CloudSecureManagerProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSecureManagerProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CloudSecureManagerProxy.dissociateCloudDataFromSync(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC13BookDataStore23CloudSecureManagerProxy_serviceProxy);
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1E46BA7E4;
    v5[3] = &unk_1F5E65B28;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 dissociateCloudDataFromSyncWithCompletion_];
  _Block_release(v4);
}

void sub_1E46BA7E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1E46BA998(uint64_t a1)
{
  v2 = sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E46BAA00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E46BAA18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  return swift_unknownObjectRetain();
}

_OWORD *sub_1E46BAC64(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E46BAC7C()
{
  v0 = sub_1E4709B9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4665F64(v5, qword_1ECF75260);
  sub_1E4665EC4(v0, qword_1ECF75260);
  v6 = [objc_opt_self() books];
  v7 = [v6 containerURL];

  sub_1E4709B7C();
  sub_1E4709B5C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1E46BADD8()
{
  v0 = sub_1E4709B9C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4665F64(v5, qword_1ECF75278);
  sub_1E4665EC4(v0, qword_1ECF75278);
  if (qword_1ECF740F8 != -1)
  {
    swift_once();
  }

  v6 = sub_1E4665EC4(v0, qword_1ECF75260);
  (*(v1 + 16))(v4, v6, v0);
  sub_1E4709B6C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t CRDTModelSyncMapper.__allocating_init()()
{
  v0 = swift_allocObject();
  CRDTModelSyncMapper.init()();
  return v0;
}

uint64_t CRDTModelSyncMapper.init()()
{
  v1 = v0;
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() defaultManager];
  if (qword_1ECF74100 != -1)
  {
    swift_once();
  }

  v3 = sub_1E4709B9C();
  sub_1E4665EC4(v3, qword_1ECF75278);
  v4 = sub_1E4709B4C();
  v20[0] = 0;
  v5 = [v2 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:v20];

  if (v5)
  {
    v6 = v20[0];
  }

  else
  {
    v7 = v20[0];
    v8 = sub_1E4709B0C();

    swift_willThrow();
    v9 = sub_1E470B2AC();
    if (qword_1EE2ADDE8 != -1)
    {
      swift_once();
    }

    v10 = qword_1EE2ADDF0;
    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E471B800;
    v12 = sub_1E4709B1C();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1E4663DE4();
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    swift_getErrorValue();
    v17 = sub_1E470B89C();
    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 72) = v17;
    *(v11 + 80) = v18;
    sub_1E470A0AC(v9, &dword_1E45E0000, v10, "CRDTModelSyncMapper unable to create CKAsset local cache at %@ error=%@", 71, 2, v11);
  }

  return v1;
}

uint64_t sub_1E46BB1A8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1E470AF5C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(ObjectType, a2);
  sub_1E470AF4C();
  v11 = sub_1E470AF2C();
  v13 = v12;

  (*(v6 + 8))(v9, v5);
  if (v13 >> 60 == 15)
  {
LABEL_13:
    v19 = sub_1E470B2AC();
    if (qword_1EE2ADDE8 != -1)
    {
      v21 = v19;
      swift_once();
      v19 = v21;
    }

    sub_1E470A0AC(v19, &dword_1E45E0000, qword_1EE2ADDF0, "CRDTModelSyncMapper: could not produce asset filename due to bad data", 69, 2, MEMORY[0x1E69E7CC0]);
    v20 = sub_1E4709B9C();
    return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
  }

  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v14)
  {
    if (v11 == v11 >> 32)
    {
LABEL_12:
      sub_1E465DDA0(v11, v13);
      goto LABEL_13;
    }
  }

  else if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  v15 = sub_1E4709BCC();
  v16 = [v15 bu_md5];

  sub_1E470AF1C();
  if (qword_1ECF74100 != -1)
  {
    swift_once();
  }

  v17 = sub_1E4709B9C();
  sub_1E4665EC4(v17, qword_1ECF75278);
  sub_1E4709B6C();
  sub_1E465DDA0(v11, v13);

  return (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
}

id sub_1E46BB4F0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v5 = a3;

  v6 = a4(v5);

  return v6;
}

char *_s13BookDataStore19CRDTModelSyncMapperC05cloudB04fromSo014BCMutableCloudB0CSgSo8CKRecordC_tF_0(void *a1)
{
  v2 = sub_1E4709CCC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4709B9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v37 - v15;
  v17 = MEMORY[0x1E6916100](0x7079546C65646F6DLL, 0xE900000000000065, v14);
  if (!v17)
  {
    goto LABEL_10;
  }

  v43 = v17;
  sub_1E4650534(&unk_1ECF75298, &qword_1E471E8D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v18 = v42;
  v40 = v41;
  if (!MEMORY[0x1E6916100](0x7461446F746F7270, 0xE900000000000061))
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = [v19 fileURL];
    if (v20)
    {
      v39 = v18;
      v21 = v20;
      sub_1E4709B7C();

      (*(v8 + 32))(v16, v11, v7);
      v24 = sub_1E4709BAC();
      v38 = v25;
      v26 = [objc_allocWithZone(type metadata accessor for CRDTModelSync()) init];
      [v26 setSystemFields_];
      v27 = [a1 modificationDate];
      if (v27)
      {
        v28 = v27;
        sub_1E4709C9C();

        v29 = sub_1E4709C5C();
        (*(v3 + 8))(v6, v2);
      }

      else
      {
        v29 = 0;
      }

      [v26 setModificationDate_];

      swift_unknownObjectRelease();
      (*(v8 + 8))(v16, v7);
      v30 = &v26[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type];
      v31 = v39;
      *v30 = v40;
      *(v30 + 1) = v31;

      v32 = &v26[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
      v33 = *&v26[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
      v34 = *&v26[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8];
      v35 = v38;
      *v32 = v24;
      v32[1] = v35;
      sub_1E465DDA0(v33, v34);

      return v26;
    }

    swift_unknownObjectRelease();
LABEL_9:

    goto LABEL_10;
  }

  swift_unknownObjectRelease();
LABEL_10:
  v22 = sub_1E470B2AC();
  if (qword_1EE2ADDE8 != -1)
  {
    v36 = v22;
    swift_once();
    v22 = v36;
  }

  sub_1E470A0AC(v22, &dword_1E45E0000, qword_1EE2ADDF0, "CRDTModelSyncMapper: error mapping CKRecord into BCMutableCloudData", 67, 2, MEMORY[0x1E69E7CC0]);
  return 0;
}

id _s13BookDataStore19CRDTModelSyncMapperC6record4fromSo8CKRecordCSgSo014BCMutableCloudB0C_tF_0(void *a1)
{
  v2 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v30 - v4;
  v6 = sub_1E4709B9C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 systemFields];
  if (v12)
  {
    swift_getObjectType();
    v13 = swift_conformsToProtocol2();
    if (v13 && a1)
    {
      v14 = v13;
      ObjectType = swift_getObjectType();
      v16 = a1;
      v17 = [v16 identifier];
      if (v17)
      {
        v18 = v17;
        [objc_msgSend(v12 encryptedValuesByKey)];

        swift_unknownObjectRelease();
      }

      v19 = (*(v14 + 8))(ObjectType, v14);
      v30[12] = MEMORY[0x1E69E6158];
      v30[13] = MEMORY[0x1E695B6F0];
      v30[9] = v19;
      v30[10] = v20;
      sub_1E46BBED4();
      sub_1E470B3BC();
      type metadata accessor for CRDTModelSyncMapper();
      sub_1E46BB1A8(v14, v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_1E46BBF20(v5);
      }

      else
      {
        (*(v7 + 32))(v11, v5, v6);
        v22 = (*(v14 + 16))(ObjectType, v14);
        if (v23 >> 60 == 15)
        {
          (*(v7 + 8))(v11, v6);
        }

        else
        {
          v24 = v22;
          v25 = v23;
          sub_1E4709BEC();
          v26 = objc_allocWithZone(MEMORY[0x1E695B878]);
          v27 = sub_1E4709B4C();
          v28 = [v26 initWithFileURL_];

          v29 = v28;
          sub_1E470B3FC();
          sub_1E465DDA0(v24, v25);

          (*(v7 + 8))(v11, v6);
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v12;
}

unint64_t sub_1E46BBED4()
{
  result = qword_1ECF75290;
  if (!qword_1ECF75290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF75290);
  }

  return result;
}

uint64_t sub_1E46BBF20(uint64_t a1)
{
  v2 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E46BBF88(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1E46585B4(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v2;
    v5 = sub_1E4679A94(v12, v12[3]);
    v6 = MEMORY[0x1EEE9AC00](v5, v5);
    v8 = (&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    sub_1E46C9F54(*v8, a2, isUniquelyReferenced_nonNull_native, &v11);

    result = sub_1E4658A0C(v12);
    *v2 = v11;
  }

  else
  {
    sub_1E465E050(a1, &unk_1ECF75468, &qword_1E471EA78);
    sub_1E46FF81C(a2, v12);

    return sub_1E465E050(v12, &unk_1ECF75468, &qword_1E471EA78);
  }

  return result;
}

void sub_1E46BC0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v41 - v5;
  v7 = sub_1E4709B9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v41 - v18;
  type metadata accessor for BDSSyncEngineMetadataStore();
  sub_1E4672BE8(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E465E050(v6, &qword_1ECF754C0, &unk_1E471BA10);
    if (qword_1ECF740B8 != -1)
    {
      swift_once();
    }

    v20 = sub_1E470A0DC();
    sub_1E4665EC4(v20, qword_1ECF74960);
    v21 = sub_1E470A0BC();
    v22 = sub_1E470B2AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1E45E0000, v21, v22, "Could not save metadata. No BaseURL", v23, 2u);
      MEMORY[0x1E6917530](v23, -1, -1);
    }
  }

  else
  {
    (*(v8 + 32))(v19, v6, v7);
    sub_1E4709B6C();
    sub_1E470997C();
    swift_allocObject();
    sub_1E470996C();
    type metadata accessor for BDSSyncEngineStateMetadata(0);
    sub_1E46D01D4(&qword_1ECF754C8, type metadata accessor for BDSSyncEngineStateMetadata, &unk_1E471C2AC);
    v24 = sub_1E470995C();
    v26 = v25;

    sub_1E4709BEC();
    if (qword_1ECF740B8 != -1)
    {
      swift_once();
    }

    v27 = sub_1E470A0DC();
    sub_1E4665EC4(v27, qword_1ECF74960);
    (*(v8 + 16))(v11, v15, v7);
    v28 = sub_1E470A0BC();
    v29 = sub_1E470B2CC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v42 = v30;
      v43 = swift_slowAlloc();
      v45 = v43;
      *v30 = 136315138;
      sub_1E46D01D4(&qword_1ECF754D0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v41 = v28;
      v31 = sub_1E470B81C();
      v33 = v32;
      v44 = v26;
      v34 = *(v8 + 8);
      v34(v11, v7);
      v35 = sub_1E4654D04(v31, v33, &v45);

      v37 = v41;
      v36 = v42;
      *(v42 + 1) = v35;
      v38 = v36;
      _os_log_impl(&dword_1E45E0000, v37, v29, "Saved sync engine metadata at: %s", v36, 0xCu);
      v39 = v43;
      sub_1E4658A0C(v43);
      MEMORY[0x1E6917530](v39, -1, -1);
      MEMORY[0x1E6917530](v38, -1, -1);
      sub_1E465746C(v24, v44);

      v34(v15, v7);
      v34(v19, v7);
    }

    else
    {
      sub_1E465746C(v24, v26);

      v40 = *(v8 + 8);
      v40(v11, v7);
      v40(v15, v7);
      v40(v19, v7);
    }
  }
}

uint64_t sub_1E46BC85C@<X0>(uint64_t a3@<X8>)
{
  v56 = a3;
  v3 = sub_1E4650534(&qword_1ECF754C0, &unk_1E471BA10);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v51 - v5;
  v7 = sub_1E4709B9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v51 - v20;
  v55 = type metadata accessor for BDSSyncEngineStateMetadata(0);
  type metadata accessor for BDSSyncEngineMetadataStore();
  sub_1E4672BE8(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1E465E050(v6, &qword_1ECF754C0, &unk_1E471BA10);
    if (qword_1ECF740B8 != -1)
    {
      swift_once();
    }

    v22 = sub_1E470A0DC();
    sub_1E4665EC4(v22, qword_1ECF74960);
    v23 = sub_1E470A0BC();
    v24 = sub_1E470B2AC();
    v25 = os_log_type_enabled(v23, v24);
    v27 = v55;
    v26 = v56;
    if (v25)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1E45E0000, v23, v24, "Could not get metadata. No BaseURL", v28, 2u);
      MEMORY[0x1E6917530](v28, -1, -1);
    }

    v29 = 1;
  }

  else
  {
    v54 = v8;
    (*(v8 + 32))(v21, v6, v7);
    sub_1E4709B6C();
    v30 = [objc_opt_self() defaultManager];
    sub_1E4709B8C();
    v31 = sub_1E470AF0C();

    v32 = [v30 fileExistsAtPath_];

    if (v32)
    {
      v53 = v21;
      v33 = sub_1E4709BAC();
      v26 = v56;
      v46 = v33;
      v48 = v47;
      sub_1E470994C();
      swift_allocObject();
      sub_1E470993C();
      sub_1E46D01D4(&qword_1ECF754E0, type metadata accessor for BDSSyncEngineStateMetadata, &unk_1E471C2D4);
      v27 = v55;
      sub_1E470992C();

      sub_1E465746C(v46, v48);
      v50 = *(v54 + 8);
      v50(v17, v7);
      v50(v53, v7);
      v29 = 0;
    }

    else
    {
      v26 = v56;
      if (qword_1ECF740B8 != -1)
      {
        swift_once();
      }

      v34 = sub_1E470A0DC();
      sub_1E4665EC4(v34, qword_1ECF74960);
      v35 = v54;
      (*(v54 + 16))(v13, v17, v7);
      v36 = sub_1E470A0BC();
      v37 = sub_1E470B2AC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v57 = v52;
        *v38 = 136315138;
        sub_1E46D01D4(&qword_1ECF754D0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v39 = sub_1E470B81C();
        v41 = v40;
        v53 = v21;
        v42 = *(v35 + 8);
        v42(v13, v7);
        v43 = sub_1E4654D04(v39, v41, &v57);
        v26 = v56;

        *(v38 + 4) = v43;
        _os_log_impl(&dword_1E45E0000, v36, v37, "Could not locate metadata file at %s", v38, 0xCu);
        v44 = v52;
        sub_1E4658A0C(v52);
        MEMORY[0x1E6917530](v44, -1, -1);
        MEMORY[0x1E6917530](v38, -1, -1);

        v42(v17, v7);
        v42(v53, v7);
      }

      else
      {

        v45 = *(v35 + 8);
        v45(v13, v7);
        v45(v17, v7);
        v45(v21, v7);
      }

      v29 = 1;
      v27 = v55;
    }
  }

  return (*(*(v27 - 8) + 56))(v26, v29, 1, v27);
}

id sub_1E46BD24C()
{
  result = [objc_allocWithZone(type metadata accessor for BDSSyncEngine(0)) init];
  qword_1EE2AE3F0 = result;
  return result;
}

id BDSSyncEngine.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static BDSSyncEngine.shared.getter()
{
  if (qword_1EE2AE3E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE2AE3F0;

  return v1;
}

Swift::Void __swiftcall BDSSyncEngine.setDatabase(_:config:)(CKDatabase _, BCCloudKitConfiguration *config)
{
  v3 = v2;
  v53 = config;
  v54 = sub_1E470A1DC();
  v5 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v52 - v11;
  v13 = sub_1E4650534(&qword_1ECF752A8, &qword_1E471E900);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v52 - v15;
  v17 = sub_1E4650534(&unk_1ECF752B0, &unk_1E471C280);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v52 - v23;
  v25 = sub_1E470A0BC();
  v26 = sub_1E470B2CC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v52 = v20;
    v28 = v12;
    v29 = v8;
    v30 = v24;
    v31 = v3;
    v32 = v5;
    isa = _.super.isa;
    v34 = v27;
    *v27 = 0;
    _os_log_impl(&dword_1E45E0000, v25, v26, "Setting up CKSyncEngine...", v27, 2u);
    v35 = v34;
    _.super.isa = isa;
    v5 = v32;
    v3 = v31;
    v24 = v30;
    v8 = v29;
    v12 = v28;
    v20 = v52;
    MEMORY[0x1E6917530](v35, -1, -1);
  }

  sub_1E46BC85C(v16);
  v36 = type metadata accessor for BDSSyncEngineStateMetadata(0);
  if ((*(*(v36 - 8) + 48))(v16, 1, v36) == 1)
  {
    sub_1E465E050(v16, &qword_1ECF752A8, &qword_1E471E900);
    v37 = sub_1E470A53C();
    (*(*(v37 - 8) + 56))(v24, 1, 1, v37);
  }

  else
  {
    sub_1E465E0B0(&v16[*(v36 + 20)], v24, &unk_1ECF752B0, &unk_1E471C280);
    sub_1E4673708(v16);
  }

  sub_1E465E0B0(v24, v20, &unk_1ECF752B0, &unk_1E471C280);
  sub_1E46D01D4(&qword_1ECF752C0, type metadata accessor for BDSSyncEngine, &protocol conformance descriptor for BDSSyncEngine);
  v38 = _.super.isa;
  v39 = v3;
  sub_1E470A1CC();

  sub_1E470A1BC();
  v40 = [(BCCloudKitConfiguration *)v53 dbSubscriptionID];
  if (v40)
  {
    v41 = v40;
    sub_1E470AF1C();
  }

  sub_1E470A1AC();
  v42 = v54;
  (*(v5 + 16))(v8, v12, v54);
  sub_1E470A58C();
  swift_allocObject();
  *&v39[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine] = sub_1E470A59C();

  sub_1E46BD9E4(v43);
  v44 = [objc_allocWithZone(BDSSyncEngineSaltManager) initWithDatabase:v38 observer:v39];
  v45 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v46 = *&v39[v45];
  *&v39[v45] = v44;

  swift_beginAccess();
  v47 = *&v39[v45];
  if (v47)
  {
    swift_endAccess();
    v48 = swift_allocObject();
    *(v48 + 16) = v39;
    aBlock[4] = sub_1E46BDBC4;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46BDBE0;
    aBlock[3] = &unk_1F5E65BC8;
    v49 = _Block_copy(aBlock);
    v50 = v39;
    v51 = v47;

    [v51 refreshSalt_];
    _Block_release(v49);

    (*(v5 + 8))(v12, v42);
    sub_1E465E050(v24, &unk_1ECF752B0, &unk_1E471C280);
  }

  else
  {
    (*(v5 + 8))(v12, v42);
    sub_1E465E050(v24, &unk_1ECF752B0, &unk_1E471C280);
    swift_endAccess();
  }
}

uint64_t type metadata accessor for BDSSyncEngine(uint64_t a1)
{
  result = qword_1EE2AE3C8;
  if (!qword_1EE2AE3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E46BD9E4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine))
  {

    v2 = sub_1E470A0BC();
    v3 = sub_1E470B2CC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEngine - setting hasPendingUntrackedChanges=false", v4, 2u);
      MEMORY[0x1E6917530](v4, -1, -1);
    }

    sub_1E470A57C();
    sub_1E470A55C();
  }

  else
  {
    oslog = sub_1E470A0BC();
    v5 = sub_1E470B2AC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1E4654D04(0xD00000000000001FLL, 0x80000001E4719F30, &v9);
      _os_log_impl(&dword_1E45E0000, oslog, v5, "BDSSyncEngine - %s: syncEngine not initialized", v6, 0xCu);
      sub_1E4658A0C(v7);
      MEMORY[0x1E6917530](v7, -1, -1);
      MEMORY[0x1E6917530](v6, -1, -1);
    }
  }
}

void sub_1E46BDBE0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1E46BDC48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t BDSSyncEngine.addSaltChangeObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1E46CA1E8(a1, v1);
}

void sub_1E46BDD1C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [*(Strong + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltObservers) addObject_];
    v5 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
    swift_beginAccess();
    v6 = *&v4[v5];
    if (v6 && [v6 establishedSalt] && (v7 = *&v4[v5]) != 0 && (v8 = objc_msgSend(v7, sel_establishedSaltVersionIdentifier)) != 0)
    {
      v9 = v8;
      v10 = sub_1E470A0BC();
      v11 = sub_1E470B2CC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1E45E0000, v10, v11, "BDSSyncEngine: Added salt change observer with a valid salt. Calling -saltUpdated with current salt", v12, 2u);
        MEMORY[0x1E6917530](v12, -1, -1);
      }

      [a2 saltUpdatedWithSaltVersionIdentifier_];
    }

    else
    {
      v13 = sub_1E470A0BC();
      v14 = sub_1E470B2CC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1E45E0000, v13, v14, "BDSSyncEngine: Added salt change observer but no valid salt yet", v15, 2u);
        MEMORY[0x1E6917530](v15, -1, -1);
      }

      v9 = v4;
      v4 = v13;
    }
  }
}

Swift::Bool __swiftcall BDSSyncEngine.establishedSalt()()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    LOBYTE(v2) = [v2 establishedSalt];
  }

  return v2;
}

Swift::Void __swiftcall BDSSyncEngine.reestablishSalt()()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    aBlock[4] = sub_1E46D133C;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46BDBE0;
    aBlock[3] = &unk_1F5E65C18;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v0;

    [v5 refreshSalt:v4];
    _Block_release(v4);
  }

  else
  {
    v5 = sub_1E470A0BC();
    v7 = sub_1E470B2AC();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1E45E0000, v5, v7, "BDSSyncEngine - reestablishSalt: saltManager not initialized", v8, 2u);
      MEMORY[0x1E6917530](v8, -1, -1);
    }
  }
}

void sub_1E46BE150(void *a1)
{
  v2 = a1;
  oslog = sub_1E470A0BC();
  v3 = sub_1E470B2AC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = a1;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    _os_log_impl(&dword_1E45E0000, oslog, v3, "BDSSyncEngine: Error encountered while trying to refresh salt: %{public}@", v4, 0xCu);
    sub_1E465E050(v5, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v5, -1, -1);
    MEMORY[0x1E6917530](v4, -1, -1);
  }
}

Swift::Void __swiftcall BDSSyncEngine.reestablishSaltIfNeeded()()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    aBlock[4] = sub_1E46D133C;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46BDBE0;
    aBlock[3] = &unk_1F5E65C68;
    v4 = _Block_copy(aBlock);
    v5 = v2;
    v6 = v0;

    [v5 refreshSaltIfNeeded:v4];
    _Block_release(v4);
  }

  else
  {
    v5 = sub_1E470A0BC();
    v7 = sub_1E470B2AC();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1E45E0000, v5, v7, "BDSSyncEngine - reestablishSaltIfNeeded: saltManager not initialized", v8, 2u);
      MEMORY[0x1E6917530](v8, -1, -1);
    }
  }
}

void sub_1E46BE47C()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [v2 invalidateSalt];
  }

  else
  {
    v3 = sub_1E470A0BC();
    v4 = sub_1E470B2AC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1E45E0000, v3, v4, "BDSSyncEngine - invalidateSalt: saltManager not initialized", v5, 2u);
      MEMORY[0x1E6917530](v5, -1, -1);
    }
  }
}

uint64_t sub_1E46BE554(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E4658550(a3, v5);
  swift_beginAccess();
  sub_1E46BBF88(v5, a2);
  return swift_endAccess();
}

uint64_t sub_1E46BE5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_registeredDataSourceByRecordType;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16) && (v8 = sub_1E4655498(a2), (v9 & 1) != 0))
  {
    sub_1E4658550(*(v7 + 56) + 40 * v8, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return swift_endAccess();
}

Swift::Void __swiftcall BDSSyncEngine.add(recordZonesToSave:)(Swift::OpaquePointer recordZonesToSave)
{
  v2 = v1;
  v4 = sub_1E470A2BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (v31 - v11);
  v13 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);
  if (v13)
  {

    rawValue = recordZonesToSave._rawValue;
    v14 = sub_1E470A57C();
    if (rawValue >> 62)
    {
      v15 = sub_1E470B50C();
    }

    else
    {
      v15 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v15)
    {
LABEL_21:
      sub_1E470A56C();

      sub_1E46BEAC8(v30);

      return;
    }

    v35 = MEMORY[0x1E69E7CC0];
    sub_1E467F240(0, v15 & ~(v15 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v31[0] = v14;
      v31[1] = v13;
      v31[2] = v2;
      v16 = v35;
      v17 = rawValue;
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v18 = 0;
        LODWORD(v34) = *MEMORY[0x1E695B5E0];
        v33 = v5 + 32;
        do
        {
          *v12 = MEMORY[0x1E6916300](v18, v17);
          (*(v5 + 104))(v12, v34, v4);
          v35 = v16;
          v20 = *(v16 + 16);
          v19 = *(v16 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_1E467F240((v19 > 1), v20 + 1, 1);
            v17 = rawValue;
            v16 = v35;
          }

          ++v18;
          *(v16 + 16) = v20 + 1;
          (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v12, v4);
        }

        while (v15 != v18);
      }

      else
      {
        v25 = (rawValue + 32);
        LODWORD(v34) = *MEMORY[0x1E695B5E0];
        rawValue = *(v5 + 104);
        v33 = v5 + 104;
        v31[3] = v5 + 32;
        do
        {
          v26 = *v25;
          *v8 = *v25;
          (rawValue)(v8, v34, v4);
          v35 = v16;
          v28 = *(v16 + 16);
          v27 = *(v16 + 24);
          v29 = v26;
          if (v28 >= v27 >> 1)
          {
            sub_1E467F240((v27 > 1), v28 + 1, 1);
            v16 = v35;
          }

          *(v16 + 16) = v28 + 1;
          (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v28, v8, v4);
          ++v25;
          --v15;
        }

        while (v15);
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    v34 = sub_1E470A0BC();
    v21 = sub_1E470B2BC();
    if (os_log_type_enabled(v34, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1E4654D04(0xD000000000000017, 0x80000001E47198B0, &v35);
      _os_log_impl(&dword_1E45E0000, v34, v21, "BDSSyncEngine - %s: syncEngine not initialized", v22, 0xCu);
      sub_1E4658A0C(v23);
      MEMORY[0x1E6917530](v23, -1, -1);
      MEMORY[0x1E6917530](v22, -1, -1);
    }

    else
    {
      v24 = v34;
    }
  }
}

void sub_1E46BEAC8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine))
  {

    v2 = sub_1E470A0BC();
    v3 = sub_1E470B2CC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEngine - setting hasPendingUntrackedChanges=true", v4, 2u);
      MEMORY[0x1E6917530](v4, -1, -1);
    }

    sub_1E470A57C();
    sub_1E470A55C();
  }

  else
  {
    oslog = sub_1E470A0BC();
    v5 = sub_1E470B2AC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1E4654D04(0x6C7564656863735FLL, 0xEF2928636E795365, &v9);
      _os_log_impl(&dword_1E45E0000, oslog, v5, "BDSSyncEngine - %s: syncEngine not initialized", v6, 0xCu);
      sub_1E4658A0C(v7);
      MEMORY[0x1E6917530](v7, -1, -1);
      MEMORY[0x1E6917530](v6, -1, -1);
    }
  }
}

Swift::Void __swiftcall BDSSyncEngine.add(recordZoneIDsToDelete:)(Swift::OpaquePointer recordZoneIDsToDelete)
{
  v2 = v1;
  v4 = sub_1E470A2BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (v31 - v11);
  v13 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);
  if (v13)
  {

    rawValue = recordZoneIDsToDelete._rawValue;
    v14 = sub_1E470A57C();
    if (rawValue >> 62)
    {
      v15 = sub_1E470B50C();
    }

    else
    {
      v15 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v15)
    {
LABEL_21:
      sub_1E470A56C();

      sub_1E46BEAC8(v30);

      return;
    }

    v35 = MEMORY[0x1E69E7CC0];
    sub_1E467F240(0, v15 & ~(v15 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v31[0] = v14;
      v31[1] = v13;
      v31[2] = v2;
      v16 = v35;
      v17 = rawValue;
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v18 = 0;
        LODWORD(v34) = *MEMORY[0x1E695B5D8];
        v33 = v5 + 32;
        do
        {
          *v12 = MEMORY[0x1E6916300](v18, v17);
          (*(v5 + 104))(v12, v34, v4);
          v35 = v16;
          v20 = *(v16 + 16);
          v19 = *(v16 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_1E467F240((v19 > 1), v20 + 1, 1);
            v17 = rawValue;
            v16 = v35;
          }

          ++v18;
          *(v16 + 16) = v20 + 1;
          (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v12, v4);
        }

        while (v15 != v18);
      }

      else
      {
        v25 = (rawValue + 32);
        LODWORD(v34) = *MEMORY[0x1E695B5D8];
        rawValue = *(v5 + 104);
        v33 = v5 + 104;
        v31[3] = v5 + 32;
        do
        {
          v26 = *v25;
          *v8 = *v25;
          (rawValue)(v8, v34, v4);
          v35 = v16;
          v28 = *(v16 + 16);
          v27 = *(v16 + 24);
          v29 = v26;
          if (v28 >= v27 >> 1)
          {
            sub_1E467F240((v27 > 1), v28 + 1, 1);
            v16 = v35;
          }

          *(v16 + 16) = v28 + 1;
          (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v28, v8, v4);
          ++v25;
          --v15;
        }

        while (v15);
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    v34 = sub_1E470A0BC();
    v21 = sub_1E470B2BC();
    if (os_log_type_enabled(v34, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_1E4654D04(0xD00000000000001BLL, 0x80000001E47198D0, &v35);
      _os_log_impl(&dword_1E45E0000, v34, v21, "BDSSyncEngine - %s: syncEngine not initialized", v22, 0xCu);
      sub_1E4658A0C(v23);
      MEMORY[0x1E6917530](v23, -1, -1);
      MEMORY[0x1E6917530](v22, -1, -1);
    }

    else
    {
      v24 = v34;
    }
  }
}

void sub_1E46BF104(void *a1)
{
  v2 = v1;
  v4 = [a1 zoneID];
  v5 = [v4 zoneName];

  v6 = sub_1E470AF1C();
  v8 = v7;

  v9 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneResetsInProgress;
  swift_beginAccess();
  v10 = *(v2 + v9);

  v11 = sub_1E46F4538(v6, v8, v10);

  if (v11)
  {
    v12 = a1;
    v13 = sub_1E470A0BC();
    v14 = sub_1E470B2CC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19[0] = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_1E4654D04(0xD000000000000017, 0x80000001E4719DA0, v19);
      *(v15 + 12) = 2114;
      *(v15 + 14) = v12;
      *v16 = v12;
      v18 = v12;
      _os_log_impl(&dword_1E45E0000, v13, v14, "BDSSyncEngine - %s. Zone reset in progress while a new zone was added - %{public}@. Re-establishing salt", v15, 0x16u);
      sub_1E465E050(v16, &qword_1ECF75100, qword_1E471E820);
      MEMORY[0x1E6917530](v16, -1, -1);
      sub_1E4658A0C(v17);
      MEMORY[0x1E6917530](v17, -1, -1);
      MEMORY[0x1E6917530](v15, -1, -1);
    }

    swift_beginAccess();
    sub_1E46C9604(v6, v8);
    swift_endAccess();

    BDSSyncEngine.reestablishSalt()();
  }

  else
  {
  }
}

Swift::Void __swiftcall BDSSyncEngine.scheduleSync()()
{
  v0 = sub_1E470A0BC();
  v1 = sub_1E470B2CC();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v4 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1E4654D04(0x656C756465686373, 0xEE002928636E7953, &v4);
    _os_log_impl(&dword_1E45E0000, v0, v1, "BDSSyncEngine - %s", v2, 0xCu);
    sub_1E4658A0C(v3);
    MEMORY[0x1E6917530](v3, -1, -1);
    MEMORY[0x1E6917530](v2, -1, -1);
  }

  sub_1E46BF480(1);
}

uint64_t sub_1E46BF480(char a1)
{
  v2 = v1;
  v4 = sub_1E470A5DC();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E470A61C();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1E46D1290;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E65FB0;
  v14 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v11, v7, v14);
  _Block_release(v14);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

uint64_t BDSSyncEngine.sendChangesIfReady()()
{
  v1[2] = v0;
  v2 = sub_1E470A1FC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1E470A22C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46BF8B0, 0, 0);
}

uint64_t sub_1E46BF8B0()
{
  v11 = v0;
  v1 = sub_1E470A0BC();
  v2 = sub_1E470B2CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1E4654D04(0xD000000000000014, 0x80000001E47198F0, &v10);
    _os_log_impl(&dword_1E45E0000, v1, v2, "BDSSyncEngine - %s", v3, 0xCu);
    sub_1E4658A0C(v4);
    MEMORY[0x1E6917530](v4, -1, -1);
    MEMORY[0x1E6917530](v3, -1, -1);
  }

  if ((sub_1E46BFD3C() & 1) != 0 && (v5 = *(v0[2] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine), (v0[9] = v5) != 0))
  {
    (*(v0[4] + 104))(v0[5], *MEMORY[0x1E695B5A8], v0[3]);

    sub_1E470A20C();
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_1E46BFAE4;
    v7 = v0[8];

    return MEMORY[0x1EEDB5460](v7);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1E46BFAE4()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E46BFCCC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1E46BFCCC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1E46BFD3C()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  result = *(v0 + v1);
  if (result)
  {
    result = [result establishedSalt];
    if (result)
    {
      v3 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
      [*(v0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock) lock];
      v4 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
      swift_beginAccess();
      v5 = *(v0 + v4);
      v6 = *(v0 + v3);

      [v6 unlock];
      if ((v5 & 0xC000000000000001) != 0)
      {
        v7 = sub_1E470B50C();
      }

      else
      {
        v7 = *(v5 + 16);
      }

      return (v7 != 0);
    }
  }

  return result;
}

Swift::Void __swiftcall BDSSyncEngine.setCloudKitZone(_:enabled:)(CKRecordZoneID _, Swift::Bool enabled)
{
  v3 = v2;
  v6 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v29[-1] - v8;
  v10 = _.super.isa;
  v11 = sub_1E470A0BC();
  v12 = sub_1E470B2CC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_1E4654D04(0xD00000000000001BLL, 0x80000001E4719910, v29);
    *(v13 + 12) = 2114;
    *(v13 + 14) = v10;
    *v14 = v10;
    *(v13 + 22) = 1024;
    *(v13 + 24) = enabled;
    v16 = v10;
    _os_log_impl(&dword_1E45E0000, v11, v12, "BDSSyncEngine - %s. Zone: %{public}@. Enabled: %{BOOL}d", v13, 0x1Cu);
    sub_1E465E050(v14, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v14, -1, -1);
    sub_1E4658A0C(v15);
    MEMORY[0x1E6917530](v15, -1, -1);
    MEMORY[0x1E6917530](v13, -1, -1);
  }

  v17 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
  [*&v3[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock] lock];
  swift_beginAccess();
  if (enabled)
  {
    sub_1E46C8258(&v28, v10);
    swift_endAccess();
  }

  else
  {
    v18 = sub_1E46C9740(v10);
    swift_endAccess();
  }

  v19 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
  swift_beginAccess();
  v20 = *&v3[v19];
  if ((v20 & 0xC000000000000001) != 0)
  {

    v21 = sub_1E470B50C();
  }

  else
  {
    v21 = *(v20 + 16);
  }

  [*&v3[v17] unlock];
  if (v21)
  {
    v22 = sub_1E470A0BC();
    v23 = sub_1E470B2CC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1E45E0000, v22, v23, "BDSSyncEngine - Valid zones found", v24, 2u);
      MEMORY[0x1E6917530](v24, -1, -1);
    }

    v25 = sub_1E470B14C();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v3;
    v27 = v3;
    sub_1E46C1EA0(0, 0, v9, &unk_1E471E918, v26);
  }
}

Swift::Void __swiftcall BDSSyncEngine.fetchRemoteChanges()()
{
  v1 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - v3;
  v5 = sub_1E470B14C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1E46C1EA0(0, 0, v4, &unk_1E471E920, v6);
}

uint64_t BDSSyncEngine.enabledCloudKitZones()()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
  [*(v0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock) lock];
  v2 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v0 + v1);

  [v4 unlock];
  return v3;
}

Swift::Void __swiftcall BDSSyncEngine.resetCloudKitZone(_:)(CKRecordZone a1)
{
  v2 = v1;
  v4 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);
  if (v8)
  {

    v9 = a1.super.isa;
    v10 = sub_1E470A0BC();
    v11 = sub_1E470B2CC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v12 = 136315394;
      *(v12 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v29);
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v9;
      v15 = v9;
      _os_log_impl(&dword_1E45E0000, v10, v11, "BDSSyncEngine - %s. Removing zone - %{public}@", v12, 0x16u);
      sub_1E465E050(v13, &qword_1ECF75100, qword_1E471E820);
      MEMORY[0x1E6917530](v13, -1, -1);
      sub_1E4658A0C(v14);
      MEMORY[0x1E6917530](v14, -1, -1);
      MEMORY[0x1E6917530](v12, -1, -1);
    }

    sub_1E46BE47C();
    sub_1E470A57C();
    sub_1E4650534(&unk_1ECF752F0, &qword_1E471D518);
    v16 = sub_1E470A2BC();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1E471BA00;
    *(v19 + v18) = [(objc_class *)v9 zoneID];
    (*(v17 + 104))(v19 + v18, *MEMORY[0x1E695B5D8], v16);
    sub_1E470A56C();

    v20 = sub_1E470B14C();
    (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v21;
    v22[5] = v8;
    v22[6] = v9;
    v23 = v9;
    sub_1E46C1EA0(0, 0, v7, &unk_1E471E930, v22);
  }

  else
  {
    v28 = sub_1E470A0BC();
    v24 = sub_1E470B2BC();
    if (os_log_type_enabled(v28, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v29);
      _os_log_impl(&dword_1E45E0000, v28, v24, "BDSSyncEngine - %s: syncEngine not initialized", v25, 0xCu);
      sub_1E4658A0C(v26);
      MEMORY[0x1E6917530](v26, -1, -1);
      MEMORY[0x1E6917530](v25, -1, -1);
    }

    else
    {
      v27 = v28;
    }
  }
}

uint64_t sub_1E46C096C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_1E470A5DC();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v8 = sub_1E470A61C();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v9 = sub_1E470A1FC();
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  v10 = sub_1E470A22C();
  v6[24] = v10;
  v6[25] = *(v10 - 8);
  v6[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46C0B44, 0, 0);
}

uint64_t sub_1E46C0B44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[27] = Strong;
  v2 = v0[23];
  if (Strong)
  {
    v3 = v0[21];
    v4 = v0[22];
    v5 = v0[14];
    sub_1E4650534(&qword_1ECF75078, qword_1E471E7D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1E471E8F0;
    *(v6 + 32) = [v5 zoneID];
    *v2 = v6;
    (*(v4 + 104))(v2, *MEMORY[0x1E695B5B0], v3);
    sub_1E470A20C();
    v7 = swift_task_alloc();
    v0[28] = v7;
    *v7 = v0;
    v7[1] = sub_1E46C0D0C;
    v8 = v0[26];

    return MEMORY[0x1EEDB5460](v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1E46C0D0C()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  *(*v1 + 232) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1E46C10F0;
  }

  else
  {
    v5 = sub_1E46C0E7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E46C0E7C()
{
  v1 = v0[27];
  v11 = v0[20];
  v2 = v0[17];
  v13 = v0[19];
  v14 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v0[6] = sub_1E46D1058;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E46C4624;
  v0[5] = &unk_1F5E65EE8;
  v7 = _Block_copy(v0 + 2);
  v12 = v1;
  v8 = v5;
  sub_1E470A5FC();
  v0[11] = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v11, v2, v7);
  _Block_release(v7);
  (*(v3 + 8))(v2, v4);
  (*(v13 + 8))(v11, v14);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E46C10F0()
{
  v15 = v0;
  v1 = *(v0 + 112);
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2AC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  if (v4)
  {
    v7 = *(v0 + 112);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v14);
    *(v8 + 12) = 2114;
    *(v8 + 14) = v7;
    *v9 = v7;
    v11 = v7;
    _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEngine - %s: Could not delete %{public}@", v8, 0x16u);
    sub_1E465E050(v9, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v9, -1, -1);
    sub_1E4658A0C(v10);
    MEMORY[0x1E6917530](v10, -1, -1);
    MEMORY[0x1E6917530](v8, -1, -1);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1E46C12DC(char *a1, void *a2)
{
  v4 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28[-1] - v6;
  v8 = sub_1E470A0BC();
  v9 = sub_1E470B2CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, v28);
    _os_log_impl(&dword_1E45E0000, v8, v9, "BDSSyncEngine - %s. Zone removed. Saving it again...", v10, 0xCu);
    sub_1E4658A0C(v11);
    MEMORY[0x1E6917530](v11, -1, -1);
    MEMORY[0x1E6917530](v10, -1, -1);
  }

  v12 = [a2 zoneID];
  v13 = [v12 zoneName];

  v14 = sub_1E470AF1C();
  v16 = v15;

  swift_beginAccess();
  sub_1E46C8108(v29, v14, v16);
  swift_endAccess();

  if (*&a1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine])
  {

    sub_1E470A57C();

    sub_1E4650534(&unk_1ECF752F0, &qword_1E471D518);
    v17 = sub_1E470A2BC();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1E471BA00;
    *(v20 + v19) = a2;
    (*(v18 + 104))(v20 + v19, *MEMORY[0x1E695B5E0], v17);
    v21 = a2;
    sub_1E470A56C();
  }

  v22 = sub_1E470B14C();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a1;
  v23[5] = a2;
  v24 = a2;
  v25 = a1;
  sub_1E46C1EA0(0, 0, v7, &unk_1E471EA98, v23);
}

uint64_t sub_1E46C1660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E470A1FC();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_1E470A22C();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46C177C, 0, 0);
}

uint64_t sub_1E46C177C()
{
  v16 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);
  v0[10] = v1;
  if (v1)
  {
    v3 = v0[5];
    v2 = v0[6];
    v5 = v0[3];
    v4 = v0[4];
    sub_1E4650534(&qword_1ECF75078, qword_1E471E7D0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1E471E8F0;

    *(v6 + 32) = [v5 zoneID];
    *v2 = v6;
    (*(v3 + 104))(v2, *MEMORY[0x1E695B5B0], v4);
    sub_1E470A20C();
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_1E46C19FC;
    v8 = v0[9];

    return MEMORY[0x1EEDB5460](v8);
  }

  else
  {
    v9 = sub_1E470A0BC();
    v10 = sub_1E470B2CC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v15);
      _os_log_impl(&dword_1E45E0000, v9, v10, "BDSSyncEngine - %s  Zone should have been created again!", v11, 0xCu);
      sub_1E4658A0C(v12);
      MEMORY[0x1E6917530](v12, -1, -1);
      MEMORY[0x1E6917530](v11, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1E46C19FC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1E46C1CE0;
  }

  else
  {
    v5 = sub_1E46C1B90;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E46C1B90()
{
  v8 = v0;
  v1 = sub_1E470A0BC();
  v2 = sub_1E470B2CC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v7);
    _os_log_impl(&dword_1E45E0000, v1, v2, "BDSSyncEngine - %s  Zone should have been created again!", v3, 0xCu);
    sub_1E4658A0C(v4);
    MEMORY[0x1E6917530](v4, -1, -1);
    MEMORY[0x1E6917530](v3, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E46C1CE0()
{
  v14 = v0;
  v1 = *(v0 + 24);
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2AC();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 96);
  if (v4)
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1E4654D04(0xD000000000000015, 0x80000001E4719930, &v13);
    *(v7 + 12) = 2114;
    *(v7 + 14) = v6;
    *v8 = v6;
    v10 = v6;
    _os_log_impl(&dword_1E45E0000, v2, v3, "BDSSyncEngine - %s: Could not add %{public}@", v7, 0x16u);
    sub_1E465E050(v8, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v8, -1, -1);
    sub_1E4658A0C(v9);
    MEMORY[0x1E6917530](v9, -1, -1);
    MEMORY[0x1E6917530](v7, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E46C1EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_1E465E0B0(a3, v26 - v11, &unk_1ECF752E0, &qword_1E471B9A8);
  v13 = sub_1E470B14C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1E465E050(v12, &unk_1ECF752E0, &qword_1E471B9A8);
  }

  else
  {
    sub_1E470B13C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1E470B11C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1E470AF9C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1E465E050(a3, &unk_1ECF752E0, &qword_1E471B9A8);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E465E050(a3, &unk_1ECF752E0, &qword_1E471B9A8);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_1E46C2208(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine))
  {

    v3 = a1;
    v4 = sub_1E470A0BC();
    v5 = sub_1E470B2CC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136446210;
      v8 = [v3 zoneName];
      v9 = sub_1E470AF1C();
      v11 = v10;

      v12 = sub_1E4654D04(v9, v11, &v16);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_1E45E0000, v4, v5, "BDSSyncEngine - resetChangeToken: resetting change token for %{public}s", v6, 0xCu);
      sub_1E4658A0C(v7);
      MEMORY[0x1E6917530](v7, -1, -1);
      MEMORY[0x1E6917530](v6, -1, -1);
    }

    sub_1E470A57C();
    sub_1E470A54C();
  }

  else
  {
    oslog = sub_1E470A0BC();
    v13 = sub_1E470B2BC();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1E45E0000, oslog, v13, "BDSSyncEngine - resetChangeToken: syncEngine not initialized", v14, 2u);
      MEMORY[0x1E6917530](v14, -1, -1);
    }
  }
}

uint64_t BDSSyncEngine.handleEvent(_:syncEngine:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E4665DD0;

  return sub_1E46CD72C(a1);
}

uint64_t BDSSyncEngine.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1E470A31C();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_1E4650534(&qword_1ECF75A30, &qword_1E471E950);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v5 = sub_1E470A30C();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v6 = sub_1E470A22C();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v7 = sub_1E470A1FC();
  v3[34] = v7;
  v3[35] = *(v7 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46C27BC, 0, 0);
}

uint64_t sub_1E46C27BC()
{
  v84 = v0;
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 248);
  v8 = sub_1E470A1EC();
  MEMORY[0x1E6914F30](v8);
  (*(v6 + 8))(v5, v7);
  v9 = *(v4 + 16);
  v9(v2, v1, v3);
  v10 = (*(v4 + 88))(v2, v3);
  if (v10 == *MEMORY[0x1E695B5B0])
  {
    v11 = *(v0 + 296);
    v12 = *(v0 + 160);
    (*(*(v0 + 280) + 96))(v11, *(v0 + 272));
    v13 = *v11;
    v14 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
    [*(v12 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock) lock];
    swift_beginAccess();

    v16 = sub_1E46D0684(v15, v13);

    [*(v12 + v14) unlock];
  }

  else if (v10 == *MEMORY[0x1E695B5A8])
  {
    v17 = *(v0 + 160);
    v18 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
    [*(v17 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock) lock];
    v19 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
    swift_beginAccess();
    v16 = *(v17 + v19);
    v20 = *(v17 + v18);

    [v20 unlock];
  }

  else
  {
    v9(*(v0 + 288), *(v0 + 304), *(v0 + 272));
    v21 = sub_1E470A0BC();
    v22 = sub_1E470B2BC();
    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 280);
    v24 = *(v0 + 288);
    v26 = *(v0 + 272);
    if (v23)
    {
      v27 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83[0] = v82;
      *v27 = 136315138;
      sub_1E46D01D4(&qword_1ECF75318, MEMORY[0x1E695B5B8], MEMORY[0x1E695B5C0]);
      v28 = sub_1E470B81C();
      v30 = v29;
      v31 = *(v25 + 8);
      v31(v24, v26);
      v32 = sub_1E4654D04(v28, v30, v83);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1E45E0000, v21, v22, "BDSSyncEngine - Ignoring scope %s. This is unexpected", v27, 0xCu);
      sub_1E4658A0C(v82);
      MEMORY[0x1E6917530](v82, -1, -1);
      MEMORY[0x1E6917530](v27, -1, -1);
    }

    else
    {

      v31 = *(v25 + 8);
      v31(v24, v26);
    }

    v31(*(v0 + 296), *(v0 + 272));
    v16 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + 312) = v16;
  v33 = sub_1E470A0BC();
  v34 = sub_1E470B2CC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v83[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_1E4654D04(0xD000000000000028, 0x80000001E4719950, v83);
    *(v35 + 12) = 2082;
    sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
    sub_1E46B93D0();

    v37 = sub_1E470B16C();
    v39 = v38;

    v40 = sub_1E4654D04(v37, v39, v83);

    *(v35 + 14) = v40;
    _os_log_impl(&dword_1E45E0000, v33, v34, "BDSSyncEngine - %s, enabledZoneIDs: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v36, -1, -1);
    MEMORY[0x1E6917530](v35, -1, -1);
  }

  v41 = *(v0 + 160);
  *(swift_task_alloc() + 16) = v41;
  sub_1E4650534(&qword_1ECF75308, &qword_1E471E958);
  sub_1E470B37C();

  v42 = *(v0 + 128);
  *(v0 + 320) = v42;
  if (!*(v42 + 16))
  {
    v57 = sub_1E470A0BC();
    v58 = sub_1E470B2CC();
    v66 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 304);
    v61 = *(v0 + 272);
    v62 = *(v0 + 280);
    if (!v66)
    {
      goto LABEL_28;
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v83[0] = v64;
    *v63 = 136315138;
    *(v63 + 4) = sub_1E4654D04(0xD000000000000028, 0x80000001E4719950, v83);
    v65 = "BDSSyncEngine - %s, record sources not found";
    goto LABEL_24;
  }

  v43 = *(v0 + 160);
  v44 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v45 = *(v43 + v44);
  if (!v45 || ![v45 establishedSalt])
  {
    v57 = sub_1E470A0BC();
    v58 = sub_1E470B2CC();
    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 304);
    v61 = *(v0 + 272);
    v62 = *(v0 + 280);
    if (!v59)
    {
      goto LABEL_28;
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v83[0] = v64;
    *v63 = 136315138;
    *(v63 + 4) = sub_1E4654D04(0xD000000000000028, 0x80000001E4719950, v83);
    v65 = "BDSSyncEngine - %s, salt not ready";
LABEL_24:
    _os_log_impl(&dword_1E45E0000, v57, v58, v65, v63, 0xCu);
    sub_1E4658A0C(v64);
    MEMORY[0x1E6917530](v64, -1, -1);
    MEMORY[0x1E6917530](v63, -1, -1);

LABEL_29:
    (*(v62 + 8))(v60, v61);
    (*(*(v0 + 232) + 56))(*(v0 + 144), 1, 1, *(v0 + 224));
LABEL_30:

    v68 = *(v0 + 8);

    return v68();
  }

  if ((v16 & 0xC000000000000001) != 0)
  {

    v46 = sub_1E470B50C();

    if (v46)
    {
      goto LABEL_16;
    }

LABEL_26:
    v57 = sub_1E470A0BC();
    v58 = sub_1E470B2CC();
    v67 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 304);
    v61 = *(v0 + 272);
    v62 = *(v0 + 280);
    if (v67)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v83[0] = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_1E4654D04(0xD000000000000028, 0x80000001E4719950, v83);
      v65 = "BDSSyncEngine - %s, enabledZoneIDs is empty";
      goto LABEL_24;
    }

LABEL_28:

    goto LABEL_29;
  }

  if (!*(v16 + 16))
  {
    goto LABEL_26;
  }

LABEL_16:
  v47 = *(v0 + 232);
  v48 = *(v42 + 32);
  *(v0 + 392) = v48;
  v49 = -1;
  v50 = -1 << v48;
  if (-(-1 << v48) < 64)
  {
    v49 = ~(-1 << -(-1 << v48));
  }

  v51 = v49 & *(v42 + 64);
  v52 = MEMORY[0x1E695B5F8];
  *(v0 + 384) = *MEMORY[0x1E695B5F0];
  v53 = MEMORY[0x1E69E7CC8];
  v54 = MEMORY[0x1E69E7CC0];
  *(v0 + 388) = *v52;
  *(v0 + 344) = v54;
  *(v0 + 352) = v53;
  *(v0 + 328) = v53;
  *(v0 + 336) = 250;

  if (!v51)
  {
    v70 = 0;
    v56 = *(v0 + 320);
    while (((63 - v50) >> 6) - 1 != v70)
    {
      v55 = v70 + 1;
      v51 = *(v56 + 8 * v70++ + 72);
      if (v51)
      {
        goto LABEL_36;
      }
    }

    v74 = *(v0 + 224);
    v75 = *(v0 + 208);

    (*(v47 + 56))(v75, 1, 1, v74);
    v76 = *(v0 + 304);
    v77 = *(v0 + 272);
    v78 = *(v0 + 280);
    if (*(v54 + 16))
    {
      v80 = *(v0 + 200);
      v79 = *(v0 + 208);
      *(swift_task_alloc() + 16) = v53;
      sub_1E470A2EC();

      sub_1E465E050(v79, &qword_1ECF75A30, &qword_1E471E950);
      (*(v78 + 8))(v76, v77);
      sub_1E46D0164(v80, v79);
    }

    else
    {

      sub_1E46BD9E4(v81);

      (*(v78 + 8))(v76, v77);
    }

    sub_1E46D0164(*(v0 + 208), *(v0 + 144));
    goto LABEL_30;
  }

  v55 = 0;
  v56 = *(v0 + 320);
LABEL_36:
  *(v0 + 360) = v51;
  *(v0 + 368) = v55;
  sub_1E4658550(*(v56 + 56) + 40 * (__clz(__rbit64(v51)) | (v55 << 6)), v0 + 16);
  sub_1E465057C((v0 + 16), *(v0 + 40));

  v71 = swift_task_alloc();
  *(v0 + 376) = v71;
  *v71 = v0;
  v71[1] = sub_1E46C3308;
  v72 = *(v0 + 312);
  v73 = *(v0 + 216);

  return sub_1E46F8778(v73, v72, 250);
}

uint64_t sub_1E46C3308()
{
  v1 = *v0;

  sub_1E4658A0C((v1 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1E46C3428, 0, 0);
}

uint64_t sub_1E46C3428()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    (*(v2 + 32))(*(v0 + 240), v3, v1);
    v8 = sub_1E470A2DC();
    isUniquelyReferenced_nonNull_native = v8;
    if (v8 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E470B50C())
    {
      v11 = 0;
      v87 = isUniquelyReferenced_nonNull_native;
      v88 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v84 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v86 = i;
      v5 = *(v0 + 344);
      v12 = *(v0 + 352);
      v6 = *(v0 + 328);
      while (1)
      {
        if (v88)
        {
          v16 = MEMORY[0x1E6916300](v11, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          if (v11 >= *(v84 + 16))
          {
            goto LABEL_42;
          }

          v16 = *(isUniquelyReferenced_nonNull_native + 8 * v11 + 32);
        }

        v17 = v16;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v91 = v11 + 1;
        v18 = *(v0 + 384);
        v19 = *(v0 + 192);
        v20 = *(v0 + 168);
        v21 = *(v0 + 176);
        *v19 = [v16 recordID];
        (*(v21 + 104))(v19, v18, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1E4693DF4(0, v5[2] + 1, 1, v5);
        }

        isUniquelyReferenced_nonNull_native = v5[2];
        v22 = v5[3];
        if (isUniquelyReferenced_nonNull_native >= v22 >> 1)
        {
          v5 = sub_1E4693DF4((v22 > 1), isUniquelyReferenced_nonNull_native + 1, 1, v5);
        }

        v23 = *(v0 + 192);
        v24 = *(v0 + 168);
        v25 = *(v0 + 176);
        v5[2] = isUniquelyReferenced_nonNull_native + 1;
        (*(v25 + 32))(v5 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * isUniquelyReferenced_nonNull_native, v23, v24);
        v26 = [v17 recordID];
        if ((v12 & 0xC000000000000001) != 0)
        {
          if (v12 < 0)
          {
            v27 = v12;
          }

          else
          {
            v27 = v12 & 0xFFFFFFFFFFFFFF8;
          }

          v28 = v17;
          v29 = sub_1E470B50C();
          if (__OFADD__(v29, 1))
          {
            goto LABEL_40;
          }

          v6 = sub_1E46C6E94(v27, v29 + 1);
        }

        else
        {
          v30 = v17;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 136) = v6;
        v32 = sub_1E46554E8(v26);
        v33 = v6[2];
        v34 = (v31 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_39;
        }

        v36 = v31;
        if (v6[3] >= v35)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v6 = *(v0 + 136);
            if (v31)
            {
              goto LABEL_6;
            }
          }

          else
          {
            sub_1E4658268();
            v6 = *(v0 + 136);
            if (v36)
            {
              goto LABEL_6;
            }
          }
        }

        else
        {
          sub_1E465682C(v35, isUniquelyReferenced_nonNull_native);
          v37 = sub_1E46554E8(v26);
          if ((v36 & 1) != (v38 & 1))
          {
            sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);

            return sub_1E470B86C();
          }

          v32 = v37;
          v6 = *(v0 + 136);
          if (v36)
          {
LABEL_6:
            v13 = v6[7];
            v14 = *(v13 + 8 * v32);
            *(v13 + 8 * v32) = v17;

            goto LABEL_7;
          }
        }

        v6[(v32 >> 6) + 8] |= 1 << v32;
        *(v6[6] + 8 * v32) = v26;
        *(v6[7] + 8 * v32) = v17;

        v39 = v6[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        if (v40)
        {
          goto LABEL_41;
        }

        v6[2] = v41;
LABEL_7:
        ++v11;
        v12 = v6;
        v15 = v6;
        isUniquelyReferenced_nonNull_native = v87;
        if (v91 == v86)
        {
          goto LABEL_45;
        }
      }

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
      ;
    }

    v5 = *(v0 + 344);
    v15 = *(v0 + 352);
    v6 = *(v0 + 328);
LABEL_45:
    v85 = v15;

    v43 = sub_1E470A2FC();
    v44 = v43;
    if (v43 >> 62)
    {
      v56 = v43;
      result = sub_1E470B50C();
      v44 = v56;
      if (!result)
      {
        goto LABEL_59;
      }
    }

    else
    {
      result = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_59;
      }
    }

    if (result < 1)
    {
LABEL_88:
      __break(1u);
      return result;
    }

    v45 = 0;
    v89 = v44 & 0xC000000000000001;
    v90 = result;
    v92 = v44;
    do
    {
      if (v89)
      {
        v46 = MEMORY[0x1E6916300](v45);
      }

      else
      {
        v46 = *(v44 + 8 * v45 + 32);
      }

      v47 = v46;
      v48 = *(v0 + 176);
      **(v0 + 184) = v46;
      (*(v48 + 104))();
      v49 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1E4693DF4(0, v5[2] + 1, 1, v5);
      }

      v51 = v5[2];
      v50 = v5[3];
      v52 = v5;
      if (v51 >= v50 >> 1)
      {
        v52 = sub_1E4693DF4((v50 > 1), v51 + 1, 1, v5);
      }

      ++v45;
      v53 = *(v0 + 176);
      v54 = *(v0 + 184);
      v55 = *(v0 + 168);

      v52[2] = v51 + 1;
      v5 = v52;
      (*(v53 + 32))(v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v51, v54, v55);
      v44 = v92;
    }

    while (v90 != v45);
LABEL_59:

    v57 = sub_1E470A2DC();
    if (v57 >> 62)
    {
      goto LABEL_84;
    }

    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_61;
  }

  sub_1E465E050(v3, &qword_1ECF75A30, &qword_1E471E950);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  while (1)
  {
    v67 = *(v0 + 360);
    v66 = *(v0 + 368);
    *(v0 + 344) = v5;
    *(v0 + 352) = v4;
    *(v0 + 328) = v6;
    *(v0 + 336) = v7;
    v68 = (v67 - 1) & v67;
    if (v68)
    {
      break;
    }

    while (1)
    {
      v70 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v70 >= (((1 << *(v0 + 392)) + 63) >> 6))
      {
        v85 = v4;
        goto LABEL_77;
      }

      v69 = *(v0 + 320);
      v68 = *(v69 + 8 * v70 + 64);
      ++v66;
      if (v68)
      {
        v66 = v70;
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_84:
    v58 = sub_1E470B50C();
LABEL_61:
    v59 = *(v0 + 336);

    v60 = v59 - v58;
    if (__OFSUB__(v59, v58))
    {
      __break(1u);
    }

    else
    {
      v61 = sub_1E470A2FC();
      if (!(v61 >> 62))
      {
        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_64;
      }
    }

    v62 = sub_1E470B50C();
LABEL_64:
    v64 = *(v0 + 232);
    v63 = *(v0 + 240);
    v65 = *(v0 + 224);

    result = (*(v64 + 8))(v63, v65);
    v7 = v60 - v62;
    if (__OFSUB__(v60, v62))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v7 < 1)
    {
LABEL_77:
      v74 = *(v0 + 224);
      v75 = *(v0 + 232);
      v76 = *(v0 + 208);

      (*(v75 + 56))(v76, 1, 1, v74);
      v77 = *(v0 + 304);
      v78 = *(v0 + 272);
      v79 = *(v0 + 280);
      if (v5[2])
      {
        v81 = *(v0 + 200);
        v80 = *(v0 + 208);
        *(swift_task_alloc() + 16) = v85;
        sub_1E470A2EC();

        sub_1E465E050(v80, &qword_1ECF75A30, &qword_1E471E950);
        (*(v79 + 8))(v77, v78);
        sub_1E46D0164(v81, v80);
      }

      else
      {

        sub_1E46BD9E4(v82);

        (*(v79 + 8))(v77, v78);
      }

      sub_1E46D0164(*(v0 + 208), *(v0 + 144));

      v83 = *(v0 + 8);

      return v83();
    }

    v4 = v85;
  }

  v69 = *(v0 + 320);
LABEL_73:
  *(v0 + 360) = v68;
  *(v0 + 368) = v66;
  sub_1E4658550(*(v69 + 56) + 40 * (__clz(__rbit64(v68)) | (v66 << 6)), v0 + 16);
  sub_1E465057C((v0 + 16), *(v0 + 40));

  v71 = swift_task_alloc();
  *(v0 + 376) = v71;
  *v71 = v0;
  v71[1] = sub_1E46C3308;
  v72 = *(v0 + 312);
  v73 = *(v0 + 216);

  return sub_1E46F8778(v73, v72, v7);
}

void sub_1E46C3D48(unint64_t a1, char a2)
{
  sub_1E46BE47C();
  BDSSyncEngine.reestablishSalt()();
  if ((a2 & 1) == 0)
  {
    return;
  }

  if (a1 >> 62)
  {
    if (!sub_1E470B50C())
    {
      return;
    }

    v9 = sub_1E470B50C();
    v8._rawValue = MEMORY[0x1E69E7CC0];
    if (!v9)
    {
      goto LABEL_11;
    }

    v4 = v9;
    recordZonesToSave._rawValue = MEMORY[0x1E69E7CC0];
    sub_1E470B63C();
    if (v4 < 0)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }

    recordZonesToSave._rawValue = MEMORY[0x1E69E7CC0];
    sub_1E470B63C();
  }

  v5 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6916300](v5, a1);
    }

    else
    {
      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    [objc_allocWithZone(MEMORY[0x1E695BA80]) initWithZoneID_];

    sub_1E470B61C();
    sub_1E470B64C();
    sub_1E470B65C();
    sub_1E470B62C();
  }

  while (v4 != v5);
  v8._rawValue = recordZonesToSave._rawValue;
LABEL_11:
  BDSSyncEngine.add(recordZonesToSave:)(v8);
}

void sub_1E46C3EEC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E46BF104(a2);
  }
}

void sub_1E46C3F48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E46C3FA4(a2);
  }
}

uint64_t sub_1E46C3FA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E470A5DC();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E470A61C();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E470A53C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v16 = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_persistFetchCoordinatorGroup);
  v22[0] = *(v2 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  v22[1] = v16;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  (*(v13 + 32))(v19 + v18, v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = sub_1E46D0FA4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E65E48;
  v20 = _Block_copy(aBlock);

  sub_1E470A5FC();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  sub_1E470B31C();
  _Block_release(v20);
  (*(v25 + 8))(v7, v4);
  (*(v23 + 8))(v11, v24);
}

uint64_t sub_1E46C437C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BDSSyncEngineStateMetadata(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E470A0DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    (*(v8 + 16))(v11, Strong + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_logger, v7);

    v14 = sub_1E470A0BC();
    v15 = sub_1E470B29C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1E45E0000, v14, v15, "BDSSyncEngine - q_saveMetadataState: About to save state metadata", v16, 2u);
      MEMORY[0x1E6917530](v16, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }

  v17 = *(v3 + 20);
  v18 = sub_1E470A53C();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v6[v17], a2, v18);
  (*(v19 + 56))(&v6[v17], 0, 1, v18);
  *v6 = 0x69676E45636E7953;
  *(v6 + 1) = 0xEF6574617453656ELL;
  sub_1E46BC0EC(v6, 0x69676E45636E7953, 0xEF6574617453656ELL);
  return sub_1E4673708(v6);
}

uint64_t sub_1E46C4624(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t BDSSyncEngine.nextFetchChangesOptions(_:syncEngine:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_1E470A17C();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_1E470A25C();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_1E470A27C();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v7 = sub_1E470A2AC();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46C4840, 0, 0);
}

uint64_t sub_1E46C4840()
{
  v55 = v0;
  v1 = v0[19];
  sub_1E470A24C();
  v2 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = [v3 establishedSalt];
    v5 = swift_allocObject();
    if (v4)
    {
      v6 = v0[19];
      v7 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
      [*(v6 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock) lock];
      v8 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones;
      swift_beginAccess();
      v9 = *(v6 + v8);
      v10 = *(v6 + v7);

      [v10 unlock];
      v11 = sub_1E46C9554(v9);

      *(v5 + 16) = v11;

      v53 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = swift_allocObject();
  }

  v53 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
LABEL_6:
  v12 = v0[27];
  v13 = v0[28];
  v15 = v0[25];
  v14 = v0[26];
  v16 = v0[23];
  v17 = v0[24];
  v18 = v0[18];
  *v13 = v11;
  (*(v12 + 104))(v13, *MEMORY[0x1E695B5D0], v14);
  sub_1E470A29C();
  (*(v17 + 16))(v15, v18, v16);
  v19 = sub_1E470A0BC();
  v20 = sub_1E470B2CC();
  if (os_log_type_enabled(v19, v20))
  {
    v52 = v20;
    v21 = v0[24];
    v22 = v0[25];
    v23 = v0[22];
    v24 = v0[21];
    v49 = v0[20];
    v50 = v0[23];
    v25 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v54 = v51;
    *v25 = 136446978;
    swift_beginAccess();
    v26 = sub_1E470A26C();
    v28 = sub_1E4654D04(v26, v27, &v54);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    MEMORY[0x1E6914F50](v29);
    v30 = sub_1E470A16C();
    v32 = v31;
    (*(v24 + 8))(v23, v49);
    (*(v21 + 8))(v22, v50);
    v33 = sub_1E4654D04(v30, v32, &v54);

    *(v25 + 14) = v33;
    *(v25 + 22) = 1024;
    *(v25 + 24) = v53;
    *(v25 + 28) = 2082;
    swift_beginAccess();
    v34 = *(v5 + 16);

    v35 = sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
    v36 = MEMORY[0x1E6915DE0](v34, v35);
    v38 = v37;

    v39 = sub_1E4654D04(v36, v38, &v54);

    *(v25 + 30) = v39;
    _os_log_impl(&dword_1E45E0000, v19, v52, "BDSSyncEngine: Returning %{public}s for nextFetchChangesOptions:syncEngine:%{public}s.\nValid salt: %{BOOL}d. Allowed zones: %{public}s", v25, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v51, -1, -1);
    MEMORY[0x1E6917530](v25, -1, -1);
  }

  else
  {
    v41 = v0[24];
    v40 = v0[25];
    v42 = v0[23];

    (*(v41 + 8))(v40, v42);
  }

  v44 = v0[30];
  v43 = v0[31];
  v45 = v0[29];
  v46 = v0[17];
  swift_beginAccess();
  (*(v44 + 16))(v46, v43, v45);
  (*(v44 + 8))(v43, v45);

  v47 = v0[1];

  return v47();
}

void sub_1E46C4CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v22[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
    swift_beginAccess();
    v10 = *&v8[v9];
    if (v10 && [v10 establishedSalt])
    {
      v11 = sub_1E470A0BC();
      v12 = sub_1E470B2CC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1E45E0000, v11, v12, "BDSSyncEngine - salt established. Fetching remote changes and updating pending modifications", v13, 2u);
        MEMORY[0x1E6917530](v13, -1, -1);
      }

      v14 = sub_1E470B14C();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v8;
      v8;
      sub_1E46C1EA0(0, 0, v6, &unk_1E471EA88, v15);

      sub_1E46BF480(0);
    }

    v16 = [*&v8[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltObservers] allObjects];
    sub_1E4650534(&qword_1ECF75488, &qword_1E471EA80);
    v17 = sub_1E470B0BC();

    if (v17 >> 62)
    {
      v18 = sub_1E470B50C();
      if (v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_9:
        if (v18 < 1)
        {
          __break(1u);
          return;
        }

        v19 = 0;
        do
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1E6916300](v19, v17);
          }

          else
          {
            v20 = *(v17 + 8 * v19 + 32);
            swift_unknownObjectRetain();
          }

          ++v19;
          v21 = sub_1E470AF0C();
          [v20 saltUpdatedWithSaltVersionIdentifier_];
          swift_unknownObjectRelease();
        }

        while (v18 != v19);
      }
    }
  }
}

uint64_t BDSSyncEngine.clearMetadata()()
{
  sub_1E4650534(&qword_1ECF75320, &qword_1E471E968);
  sub_1E470B37C();
  return v1;
}

uint64_t sub_1E46C50E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BDSSyncEngineMetadataStore();
  result = sub_1E4672EA0(0x69676E45636E7953, 0xEF6574617453656ELL);
  *a1 = result;
  return result;
}

uint64_t sub_1E46C514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1E470A27C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1E470A2AC();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46C5268, 0, 0);
}

uint64_t sub_1E46C5268()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);
  v0[9] = v1;
  if (v1)
  {
    (*(v0[4] + 104))(v0[5], *MEMORY[0x1E695B5C8], v0[3]);

    sub_1E470A28C();
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1E46C53A8;
    v3 = v0[8];

    return MEMORY[0x1EEDB5468](v3);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E46C53A8()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E46C558C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1E46C558C()
{
  v1 = *(v0 + 88);
  v2 = v1;
  v3 = sub_1E470A0BC();
  v4 = sub_1E470B2AC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1E45E0000, v3, v4, "BDSSyncEngine - Error fetching remote changes - %@", v7, 0xCu);
    sub_1E465E050(v8, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v8, -1, -1);
    MEMORY[0x1E6917530](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t BDSSyncEngine.fetchRemoteChanges()()
{
  v1[2] = v0;
  v2 = sub_1E470A27C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1E470A2AC();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E46C5828, 0, 0);
}

uint64_t sub_1E46C5828()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine);
  v0[9] = v1;
  if (v1)
  {
    (*(v0[4] + 104))(v0[5], *MEMORY[0x1E695B5C8], v0[3]);

    sub_1E470A28C();
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1E46C596C;
    v3 = v0[8];

    return MEMORY[0x1EEDB5468](v3);
  }

  else
  {

    v4 = v0[1];

    return v4(0);
  }
}

uint64_t sub_1E46C596C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E46C5B54, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(0);
  }
}

uint64_t sub_1E46C5B54()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

Swift::String_optional __swiftcall BDSSyncEngine.recordName(fromRecordType:identifier:)(Swift::String fromRecordType, Swift::String identifier)
{
  v3 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 && (v5 = v4, v6 = sub_1E470AF0C(), v7 = sub_1E470AF0C(), v8 = [v5 recordNameFromRecordType:v6 identifier:v7], v5, v6, v7, v8))
  {
    v9 = sub_1E470AF1C();
    v11 = v10;

    v12 = v11;
    v13 = v9;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  result.value._object = v12;
  result.value._countAndFlagsBits = v13;
  return result;
}

id BDSSyncEngine.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1E470B35C();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E470B33C();
  MEMORY[0x1EEE9AC00](v20, v5);
  v6 = sub_1E470A61C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  *&v0[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_registeredDataSourceByRecordType] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_maxRecordCountPerBatch] = 250;
  v8 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_recordChangePublisher;
  sub_1E4650534(&qword_1ECF75340, &qword_1E471E978);
  swift_allocObject();
  *&v0[v8] = sub_1E470A11C();
  v9 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_recordDeletionPublisher;
  sub_1E4650534(&qword_1ECF75350, &unk_1E47204D0);
  swift_allocObject();
  *&v0[v9] = sub_1E470A11C();
  v10 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_accountChangedPublisher;
  sub_1E4650534(&qword_1ECF75360, &qword_1E471E980);
  swift_allocObject();
  *&v0[v10] = sub_1E470A11C();
  v11 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_endFetchingChangesPublisher;
  sub_1E4650534(&qword_1ECF75370, qword_1E471E988);
  swift_allocObject();
  *&v0[v11] = sub_1E470A11C();
  v12 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_updateMetadataPublisher;
  sub_1E4650534(&qword_1ECF75380, qword_1E47204E0);
  swift_allocObject();
  *&v0[v12] = sub_1E470A11C();
  v13 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue;
  sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  sub_1E470A5FC();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1E46D01D4(&unk_1EE2ACCE0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2F14(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0, MEMORY[0x1E69E6328]);
  sub_1E470B4CC();
  (*(v22 + 104))(v21, *MEMORY[0x1E69E8090], v23);
  *&v0[v13] = sub_1E470B39C();
  v14 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_persistFetchCoordinatorGroup;
  *&v1[v14] = dispatch_group_create();
  v15 = &v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_BDSAPSDelegatePort];
  *v15 = 0xD00000000000001CLL;
  v15[1] = 0x80000001E47199A0;
  *&v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine] = 0;
  sub_1E470A0CC();
  *&v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager] = 0;
  v16 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltObservers;
  *&v1[v16] = [objc_opt_self() weakObjectsHashTable];
  v17 = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_validCKZones] = MEMORY[0x1E69E7CD0];
  v18 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneLock;
  *&v1[v18] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_waitingPendingModifications] = 0;
  *&v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_zoneResetsInProgress] = v17;
  *&v1[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_invalidTokenZoneIDs] = MEMORY[0x1E69E7CC0];
  v25.receiver = v1;
  v25.super_class = ObjectType;
  return objc_msgSendSuper2(&v25, sel_init);
}

id BDSSyncEngine.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E46C6488(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E4665FC8;

  return sub_1E46CD72C(a1);
}

uint64_t sub_1E46C6534(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4665FC8;

  return BDSSyncEngine.nextRecordZoneChangeBatch(_:syncEngine:)(a1, a2);
}

uint64_t sub_1E46C65DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E4665FC8;

  return BDSSyncEngine.nextFetchChangesOptions(_:syncEngine:)(a1, a2);
}

uint64_t sub_1E46C6684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E46C674C;

  return MEMORY[0x1EEDB56C8](a1, a2, ObjectType, a4);
}

uint64_t sub_1E46C674C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1E46C6848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E46C674C;

  return MEMORY[0x1EEDB56D0](a1, a2, a3, ObjectType, a5);
}

BDSCloudSyncDiagnosticSyncEngineInfo __swiftcall BDSSyncEngine.diagnosticSyncEngineInfo()()
{
  v1 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = [v2 establishedSalt];
  }

  else
  {
    v3 = 0;
  }

  result.super.isa = [objc_allocWithZone(BDSCloudSyncDiagnosticSyncEngineInfo) initWithEstablishedSalt_];
  result._establishedSalt = v4;
  return result;
}

void sub_1E46C6A38(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((sub_1E46BFD3C() & 1) == 0)
    {
      if (a2)
      {
        v11 = sub_1E470A0BC();
        v12 = sub_1E470B2CC();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_1E45E0000, v11, v12, "BDSSyncEngine - setting waitingPendingModifications=true since there are pending modifications", v13, 2u);
          MEMORY[0x1E6917530](v13, -1, -1);
        }

        v4[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_waitingPendingModifications] = 1;
      }

      goto LABEL_13;
    }

    v5 = OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_waitingPendingModifications;
    if ((v4[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_waitingPendingModifications] & 1) == 0 && (a2 & 1) == 0)
    {
LABEL_13:

      return;
    }

    v6 = *&v4[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_syncEngine];
    v7 = sub_1E470A0BC();
    if (v6)
    {
      v8 = sub_1E470B2CC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1E45E0000, v7, v8, "BDSSyncEngine - CKSyncEngine.setHasPendingModifications called since there were pending modifications", v9, 2u);
        MEMORY[0x1E6917530](v9, -1, -1);
      }

      sub_1E46BEAC8(v10);
      v4[v5] = 0;
      goto LABEL_13;
    }

    v14 = sub_1E470B2AC();
    if (os_log_type_enabled(v7, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E4654D04(0xD00000000000002DLL, 0x80000001E4719F00, &v17);
      _os_log_impl(&dword_1E45E0000, v7, v14, "BDSSyncEngine - %s: syncEngine not initialized", v15, 0xCu);
      sub_1E4658A0C(v16);
      MEMORY[0x1E6917530](v16, -1, -1);
      MEMORY[0x1E6917530](v15, -1, -1);
    }
  }
}

uint64_t sub_1E46C6CA4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E46C6D9C;

  return v6(a1);
}

uint64_t sub_1E46C6D9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E46C6E94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1E4650534(&qword_1ECF742E8, &qword_1E471B1C0);
    v2 = sub_1E470B6FC();
    v19 = v2;
    sub_1E470B67C();
    v3 = sub_1E470B6AC();
    if (v3)
    {
      v4 = v3;
      sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1E465682C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1E470B41C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1E470B6AC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1E46C70E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1E4650534(&qword_1ECF742A0, &qword_1E471B190);
    v2 = sub_1E470B6FC();
    v19 = v2;
    sub_1E470B67C();
    v3 = sub_1E470B6AC();
    if (v3)
    {
      v4 = v3;
      sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1E45E2DE8(0, &qword_1ECF75460, off_1E8758B88);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1E4656AF4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1E470B41C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1E470B6AC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

unint64_t sub_1E46C7384(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  result = sub_1E4655454(a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      result = sub_1E4655454(a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        result = sub_1E470B86C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      a5();
      result = v23;
    }
  }

  v25 = *v9;
  if ((v21 & 1) == 0)
  {
    v25[(result >> 6) + 8] |= 1 << result;
    *(v25[6] + 8 * result) = a3;
    v27 = (v25[7] + 16 * result);
    *v27 = a1;
    v27[1] = a2;
    v28 = v25[2];
    v19 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v19)
    {
      v25[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v26 = (v25[7] + 16 * result);
  *v26 = a1;
  v26[1] = a2;
}

void sub_1E46C7500(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E46553DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E465630C(v16, a4 & 1);
      v11 = sub_1E46553DC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1E470B86C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1E4657F7C();
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
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

id sub_1E46C7664(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E46554E8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1E465682C(v13, a3 & 1);
      v8 = sub_1E46554E8(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
        sub_1E470B86C();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v16 = v8;
      sub_1E4658268();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_1E46C77DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1E4650534(&qword_1ECF754E8, &qword_1E471EAB8);
  result = sub_1E470B58C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1E470B8FC();
      MEMORY[0x1E6916620](v19);
      MEMORY[0x1E6916620](v20);
      result = sub_1E470B91C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E46C7A44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1E4650534(&unk_1ECF75478, &qword_1E471FCE0);
  result = sub_1E470B58C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1E470B8FC();
      sub_1E470AFCC();
      result = sub_1E470B91C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E46C7CA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1E4650534(&unk_1ECF75490, &unk_1E471FCF0);
  result = sub_1E470B58C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1E470B41C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1E46C7ECC(uint64_t a1, uint64_t a2)
{
  sub_1E470B41C();
  result = sub_1E470B4EC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t *sub_1E46C7F50(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1E46D021C(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1E46C7FEC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](a2);
  MEMORY[0x1E6916620](a3);
  v8 = sub_1E470B91C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1E46C8680(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_1E46C8108(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1E470B8FC();
  sub_1E470AFCC();
  v8 = sub_1E470B91C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1E470B84C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1E46C87F0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1E46C8258(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1E470B51C();

    if (v9)
    {

      sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1E470B50C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1E46C8490(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1E46C7CA4(v20 + 1);
    }

    v18 = v8;
    sub_1E46C7ECC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
  v11 = sub_1E470B41C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1E46C8970(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1E470B42C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1E46C8490(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1E4650534(&unk_1ECF75490, &unk_1E471FCF0);
    v2 = sub_1E470B59C();
    v15 = v2;
    sub_1E470B4FC();
    if (sub_1E470B52C())
    {
      sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1E46C7CA4(v9 + 1);
        }

        v2 = v15;
        result = sub_1E470B41C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1E470B52C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1E46C8680(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_1E46C77DC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = sub_1E46C8AE0();
      a3 = v9;
      goto LABEL_15;
    }

    sub_1E46C8ED0(v7 + 1);
  }

  v10 = *v4;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v6);
  MEMORY[0x1E6916620](a2);
  result = sub_1E470B91C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v6 && v14 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v6;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  result = sub_1E470B85C();
  __break(1u);
  return result;
}

void sub_1E46C87F0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1E46C7A44(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1E46C8C24();
      goto LABEL_16;
    }

    sub_1E46C9108(v8 + 1);
  }

  v10 = *v4;
  sub_1E470B8FC();
  sub_1E470AFCC();
  v11 = sub_1E470B91C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1E470B84C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1E470B85C();
  __break(1u);
}

void sub_1E46C8970(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E46C7CA4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1E46C8D80();
      goto LABEL_12;
    }

    sub_1E46C9340(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1E470B41C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1E470B42C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1E470B85C();
  __break(1u);
}

void *sub_1E46C8AE0()
{
  v1 = v0;
  sub_1E4650534(&qword_1ECF754E8, &qword_1E471EAB8);
  v2 = *v0;
  v3 = sub_1E470B57C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1E46C8C24()
{
  v1 = v0;
  sub_1E4650534(&unk_1ECF75478, &qword_1E471FCE0);
  v2 = *v0;
  v3 = sub_1E470B57C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_1E46C8D80()
{
  v1 = v0;
  sub_1E4650534(&unk_1ECF75490, &unk_1E471FCF0);
  v2 = *v0;
  v3 = sub_1E470B57C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1E46C8ED0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1E4650534(&qword_1ECF754E8, &qword_1E471EAB8);
  result = sub_1E470B58C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1E470B8FC();
      MEMORY[0x1E6916620](v18);
      MEMORY[0x1E6916620](v19);
      result = sub_1E470B91C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E46C9108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1E4650534(&unk_1ECF75478, &qword_1E471FCE0);
  result = sub_1E470B58C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1E470B8FC();

      sub_1E470AFCC();
      result = sub_1E470B91C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}