uint64_t sub_1D6232A3C(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, __int128 *), uint64_t (*a5)(__int128 *))
{
  v45 = a4;
  v32 = *(a3 + 16);
  if (v32)
  {
    v7 = result;
    v8 = 0;
    v33 = a3 + 32;
    while (1)
    {
      v9 = (v33 + 168 * v8);
      v10 = v9[9];
      v42[4] = v9[8];
      v43 = v10;
      v44 = *(v9 + 160);
      v11 = v9[5];
      v42[0] = v9[4];
      v42[1] = v11;
      v12 = v9[7];
      v42[2] = v9[6];
      v42[3] = v12;
      v13 = v9[1];
      v38 = *v9;
      v39 = v13;
      v14 = v9[3];
      v40 = v9[2];
      v41 = v14;
      v15 = v13;
      if (v13)
      {
        v16 = *(v39 + 16);
        v45(&v38, &v35);
        if (v16)
        {
          v17 = (v15 + 40);
          do
          {
            if ((*v17 & 1) == 0)
            {
              *&v35 = *(v17 - 1);
              v18 = v35;
              swift_retain_n();
              FormatFloat.bind(binder:context:)(v7, a2);
              if (v5)
              {
                sub_1D62B72BC(v18, 0);
                goto LABEL_50;
              }

              sub_1D62B72BC(v18, 0);
            }

            v17 += 16;
            --v16;
          }

          while (v16);
        }
      }

      else
      {
        v45(&v38, &v35);
      }

      if ((~*(&v39 + 1) & 0xF000000000000007) != 0)
      {
        *&v35 = *(&v39 + 1);

        FormatBackground.bind(binder:context:)(v7, a2);
        if (v5)
        {
          goto LABEL_50;
        }
      }

      if (v40)
      {
        sub_1D620E744(v7, a2, v40);
        if (v5)
        {
          return a5(&v38);
        }
      }

      v19 = v43;
      if (v43 != 254)
      {
        break;
      }

LABEL_45:
      if ((~*(&v43 + 1) & 0xF000000000000007) != 0)
      {
        *&v35 = *(&v43 + 1);

        FormatColor.bind(binder:context:)(v7, a2);

        result = a5(&v38);
        if (v5)
        {
          return result;
        }
      }

      else
      {
        result = a5(&v38);
      }

      if (++v8 == v32)
      {
        return result;
      }
    }

    sub_1D62B5354(v42, &v35, &qword_1EDF33718, &type metadata for FormatShadow);

    FormatColor.bind(binder:context:)(v7, a2);
    if (v5)
    {
      sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_50:

      return a5(&v38);
    }

    if (v19 <= 2)
    {
      if (!v19)
      {
        goto LABEL_32;
      }

      if (v19 == 1)
      {
        sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        if (swift_dynamicCast())
        {
          v22 = *(&v36 + 1);
          v23 = v37;
          __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
          (*(v23 + 8))(v7, a2, v22, v23);
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
LABEL_41:
          v30 = *(&v36 + 1);
          v31 = v37;
          __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
          (*(v31 + 8))(v7, a2, v30, v31);
          sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
          __swift_destroy_boxed_opaque_existential_1(&v35);
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    else if (v19 > 4)
    {
      if (v19 != 5)
      {
LABEL_32:
        sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
        goto LABEL_45;
      }
    }

    else if (v19 != 3)
    {
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v20 = *(&v36 + 1);
        v21 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
        (*(v21 + 8))(v7, a2, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(&v35);
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    if (swift_dynamicCast())
    {
      v24 = *(&v36 + 1);
      v25 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      (*(v25 + 8))(v7, a2, v24, v25);
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
      v26 = *(&v36 + 1);
      v27 = v37;
      __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
      (*(v27 + 8))(v7, a2, v26, v27);
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
      (*(v29 + 8))(v7, a2, v28, v29);
      __swift_destroy_boxed_opaque_existential_1(&v35);
      goto LABEL_40;
    }

LABEL_39:
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
LABEL_40:
    if (swift_dynamicCast())
    {
      goto LABEL_41;
    }

LABEL_44:
    sub_1D5D0ABCC(v42, &qword_1EDF33718, &type metadata for FormatShadow);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    sub_1D5BFB774(&v35, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    goto LABEL_45;
  }

  return result;
}

unint64_t sub_1D6233270(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 32); ; i += 13)
    {
      v8 = i[9];
      v9 = i[11];
      v55 = i[10];
      v56 = v9;
      v10 = i[11];
      v57 = i[12];
      v11 = i[5];
      v12 = i[7];
      v51 = i[6];
      v52 = v12;
      v13 = i[7];
      v14 = i[9];
      v53 = i[8];
      v54 = v14;
      v15 = i[1];
      v16 = i[3];
      v47 = i[2];
      v48 = v16;
      v17 = i[3];
      v18 = i[5];
      v49 = i[4];
      v50 = v18;
      v19 = i[1];
      v46[0] = *i;
      v46[1] = v19;
      v43 = v55;
      v44 = v10;
      v45 = i[12];
      v39 = v51;
      v40 = v13;
      v41 = v53;
      v42 = v8;
      v35 = v47;
      v36 = v17;
      v37 = v49;
      v38 = v11;
      v33 = v46[0];
      v34 = v15;
      sub_1D5D0B3B8(v46, &v20);
      FormatLayeredMediaNodeStyle.Selector.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      v30 = v43;
      v31 = v44;
      v32 = v45;
      v26 = v39;
      v27 = v40;
      v28 = v41;
      v29 = v42;
      v22 = v35;
      v23 = v36;
      v24 = v37;
      v25 = v38;
      v20 = v33;
      v21 = v34;
      result = sub_1D5D0B670(&v20);
      if (!--v4)
      {
        return result;
      }
    }

    v30 = v43;
    v31 = v44;
    v32 = v45;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    v20 = v33;
    v21 = v34;
    return sub_1D5D0B670(&v20);
  }

  return result;
}

unint64_t sub_1D62333F0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = a3 + 32; ; i += 216)
    {
      v8 = *(i + 176);
      v9 = *(i + 144);
      v57 = *(i + 160);
      v58 = v8;
      v10 = *(i + 176);
      v59 = *(i + 192);
      v11 = *(i + 112);
      v12 = *(i + 80);
      v53 = *(i + 96);
      v54 = v11;
      v13 = *(i + 112);
      v14 = *(i + 144);
      v55 = *(i + 128);
      v56 = v14;
      v15 = *(i + 48);
      v16 = *(i + 16);
      v49 = *(i + 32);
      v50 = v15;
      v17 = *(i + 48);
      v18 = *(i + 80);
      v51 = *(i + 64);
      v52 = v18;
      v19 = *(i + 16);
      v48[0] = *i;
      v48[1] = v19;
      v44 = v57;
      v45 = v10;
      v46 = *(i + 192);
      v40 = v53;
      v41 = v13;
      v42 = v55;
      v43 = v9;
      v36 = v49;
      v37 = v17;
      v38 = v51;
      v39 = v12;
      v60 = *(i + 208);
      v47 = *(i + 208);
      v34 = v48[0];
      v35 = v16;
      sub_1D5D0B0E4(v48, &v20);
      FormatImageNodeStyle.Selector.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      v30 = v44;
      v31 = v45;
      v32 = v46;
      v33 = v47;
      v26 = v40;
      v27 = v41;
      v28 = v42;
      v29 = v43;
      v22 = v36;
      v23 = v37;
      v24 = v38;
      v25 = v39;
      v20 = v34;
      v21 = v35;
      result = sub_1D5D0B1AC(&v20);
      if (!--v4)
      {
        return result;
      }
    }

    v30 = v44;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v29 = v43;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v25 = v39;
    v20 = v34;
    v21 = v35;
    return sub_1D5D0B1AC(&v20);
  }

  return result;
}

uint64_t sub_1D6233590(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = a3 + 56; ; i += 32)
    {

      swift_retain_n();

      FormatTextContent.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      FormatTextNodeAlternativeLogic.bind(binder:context:)(v6, a2);

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

double sub_1D62336A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v494 = type metadata accessor for FormatOption(0);
  v6 = *(v494 - 8);
  MEMORY[0x1EEE9AC00](v494, v7);
  v9 = (&v470 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v490 = (&v470 - v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v470 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v470 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v470 - v23);
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v488 = &v470 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v486 = &v470 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v485 = &v470 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v484 = &v470 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v483 = &v470 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v489 = &v470 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v487 = &v470 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v491 = &v470 - v50;
  *&result = MEMORY[0x1EEE9AC00](v51, v52).n128_u64[0];
  if (!*(a3 + 16))
  {
    return result;
  }

  v56 = *(a3 + 16);
  v479 = &v470 - v53;
  v476 = v20;
  v474 = v16;
  v475 = v9;
  v482 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v481 = (v6 + 48);
  v480 = (v6 + 56);
  v57 = (a3 + 48);
  v478 = v24;
  v502 = a2;
  v503 = a1;
  v477 = v54;
  v58 = v56;
  while (1)
  {
    v60 = *(v57 - 1);
    v59 = *v57;
    v61 = *v57 >> 62;
    if (v61)
    {
      break;
    }

    v76 = *(v59 + 16);
    if ((v76 >> 62) < 2)
    {
      goto LABEL_4;
    }

    if (v76 >> 62 != 2)
    {
      v124 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v123 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if ((v124 >> 62) > 1)
      {
        v500 = v57;
        v501 = v60;
        v498 = v124;
        v499 = v58;
        if (v124 >> 62 == 2)
        {
          v125 = v124 & 0x3FFFFFFFFFFFFFFFLL;
          v126 = *((v124 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v127 = *((v124 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v128 = *((v124 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v129 = *(v125 + 40);
          v505 = v126;
          v506 = v127;
          v507 = v128;
          v508 = v129;
          swift_retain_n();

          swift_retain_n();

          sub_1D5D27950(v126, v127, v128, v129);
          v130 = v504;
          sub_1D6089844(v502);
          v504 = v130;
          if (v130)
          {

            sub_1D5D28C84(v126, v127, v128, v129);

            goto LABEL_383;
          }

          sub_1D5D28C84(v126, v127, v128, v129);

          a2 = v502;
          v58 = v499;
          v57 = v500;
        }

        else
        {
          v171 = *((v124 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v505 = *((v124 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          v172 = v502;
          v173 = v503;
          v174 = v504;
          FormatURL.bind(binder:context:)(v503, v502);
          v160 = v174;
          if (v174)
          {

            goto LABEL_328;
          }

          sub_1D620FAB4(v173, v172, v171);
          v504 = 0;

          swift_bridgeObjectRelease_n();

          v57 = v500;
          a2 = v502;
          v58 = v499;
        }
      }

      else
      {

        swift_retain_n();
      }

      v175 = v504;
      sub_1D620FAB4(v503, a2, v123);
      v504 = v175;
      if (v175)
      {

        swift_bridgeObjectRelease_n();
LABEL_289:

        goto LABEL_384;
      }

      swift_bridgeObjectRelease_n();

      goto LABEL_3;
    }

    v77 = v76 & 0x3FFFFFFFFFFFFFFFLL;
    if (!*((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
    {
      v78 = v58;
      v79 = a2;
      v500 = v57;
      v80 = v60;
      v82 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v81 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v83 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v505 = v82;
      v506 = v81;
      v507 = v83;
      v509 = 6;
      sub_1D5D27950(v82, v81, v83, 0);
      sub_1D5D27950(v82, v81, v83, 0);
      swift_retain_n();

      v84 = v80;

      v85 = v504;
      v86 = sub_1D703E0C8(&v505, &v509);
      v504 = v85;
      if (v85)
      {
        sub_1D5D28C84(v82, v81, v83, 0);
LABEL_320:

        return result;
      }

      v87 = v86;
      v497 = v83;
      v498 = v77;
      v499 = v78;
      v88 = v491;
      FormatOptionCollection.subscript.getter(v82, v81, v491);
      if ((*v481)(v88, 1, v494) == 1)
      {

        sub_1D5B6EF64(v88, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if (*(v79 + 48) != 1)
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          v504 = swift_allocError();
          *v426 = v82;
          v426[1] = v81;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D5D28C84(v82, v81, v497, 0);
          goto LABEL_320;
        }

        sub_1D5D28C84(v82, v81, v497, 0);

        v89 = v479;
        (*v480)(v479, 1, 1, v494);
        sub_1D5B6EF64(v89, &qword_1EDF337F0, type metadata accessor for FormatOption);

        v58 = v499;
        v57 = v500;
        a2 = v79;
      }

      else
      {
        v192 = v88;
        v193 = v478;
        sub_1D5D5E33C(v192, v478, type metadata accessor for FormatOption);
        v505 = v193[2];

        FormatOptionValue.type.getter(v194, &v509);
        if ((sub_1D6183C84(v509, v87) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError(0);
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          v427 = swift_allocError();
          v501 = v84;
          v429 = v428;
          v430 = v193[1];
          v503 = *v193;
          v504 = v427;
          v505 = v193[2];

          FormatOptionValue.type.getter(v431, &v509);
          v432 = v509;
          *v429 = v503;
          *(v429 + 8) = v430;
          *(v429 + 16) = v432;
          *(v429 + 24) = v87;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D5D28C84(v82, v81, v497, 0);

          sub_1D62B51D0(v193, type metadata accessor for FormatOption);

          goto LABEL_384;
        }

        sub_1D5D28C84(v82, v81, v497, 0);

        v195 = v479;
        sub_1D5D5E33C(v193, v479, type metadata accessor for FormatOption);
        (*v480)(v195, 0, 1, v494);
        sub_1D5B6EF64(v195, &qword_1EDF337F0, type metadata accessor for FormatOption);

        a2 = v502;
        v58 = v499;
        v57 = v500;
      }
    }

LABEL_4:
    v57 += 3;
    if (!--v58)
    {
      return result;
    }
  }

  if (v61 != 1)
  {
    v90 = v59 & 0x3FFFFFFFFFFFFFFFLL;
    v91 = *((v59 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v92 = *(v90 + 24);
    if (v91 >> 62)
    {
      v501 = *(v57 - 1);
      if (v91 >> 62 == 1)
      {
        v94 = *((v91 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v93 = *((v91 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v496 = v91 & 0x3FFFFFFFFFFFFFFFLL;
        v497 = v92;
        v498 = v91;
        v499 = v58;
        v493 = v94;
        if (v94 >> 62)
        {
          v492 = v93;
          if (v94 >> 62 == 1)
          {
            v95 = v94 & 0x3FFFFFFFFFFFFFFFLL;
            v97 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v96 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v473 = v97;
            v472 = v96;
            if (v97 >> 62)
            {
              v500 = v57;
              v98 = v503;
              if (v97 >> 62 == 1)
              {
                v99 = v97 & 0x3FFFFFFFFFFFFFFFLL;
                v100 = *(v99 + 24);
                v505 = *(v99 + 16);
                v470 = v96 & 0x3FFFFFFFFFFFFFFFLL;

                swift_retain_n();

                swift_retain_n();
                swift_retain_n();
                v101 = v92;

                swift_retain_n();

                v471 = v99;
                swift_retain_n();

                v102 = v502;
                v103 = v504;
                FormatMicaNodeContent.bind(binder:context:)(v98, v502);
                v504 = v103;
                if (v103 || (, v505 = v100, , v104 = v504, FormatMicaNodeContent.bind(binder:context:)(v98, v102), (v504 = v104) != 0))
                {

                  goto LABEL_383;
                }

                v58 = v499;
                v57 = v500;
                v92 = v101;
              }

              else
              {
                v234 = *((v97 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                v505 = *((v97 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                v470 = v505;
                swift_retain_n();

                v235 = v90;
                swift_retain_n();
                swift_retain_n();

                v471 = v95;
                swift_retain_n();

                swift_retain_n();

                v236 = v98;
                v237 = v98;
                v238 = v502;
                v239 = v504;
                FormatMicaNodeContent.bind(binder:context:)(v236, v502);
                v504 = v239;
                if (v239)
                {

                  goto LABEL_373;
                }

                v240 = v504;
                sub_1D62336A0(v237, v238, v234);
                v504 = v240;
                if (v240)
                {

                  swift_bridgeObjectRelease_n();
                  goto LABEL_384;
                }

                swift_bridgeObjectRelease_n();
                v58 = v499;
                v57 = v500;
                v98 = v503;
                v90 = v235;
                v92 = v497;
              }
            }

            else
            {
              v505 = *(v97 + 16);
              v230 = v96 & 0x3FFFFFFFFFFFFFFFLL;

              swift_retain_n();
              swift_retain_n();

              v471 = v94 & 0x3FFFFFFFFFFFFFFFLL;
              swift_retain_n();

              swift_retain_n();
              v470 = v230;

              v98 = v503;
              v231 = v504;
              FormatMicaNodeArchive.bind(binder:context:)(v503, v502);
              v504 = v231;
              if (v231)
              {

                goto LABEL_373;
              }

              v92 = v497;
            }

            v505 = v472;

            v241 = v504;
            FormatMicaNodeContent.bind(binder:context:)(v98, v502);
            v504 = v241;
            if (v241)
            {

              goto LABEL_384;
            }

            a2 = v502;
          }

          else
          {
            v146 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v505 = *((v94 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();

            v147 = v90;
            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            v149 = v503;
            v148 = v504;
            FormatMicaNodeContent.bind(binder:context:)(v503, a2);
            v504 = v148;
            if (v148)
            {

LABEL_344:

LABEL_345:

              goto LABEL_373;
            }

            v150 = v504;
            sub_1D62336A0(v149, a2, v146);
            v504 = v150;
            if (v150)
            {

              goto LABEL_276;
            }

            swift_bridgeObjectRelease_n();
            v58 = v499;
            v90 = v147;
            v92 = v497;
          }
        }

        else
        {
          v142 = *(v94 + 16);
          if ((v142 >> 62) <= 1)
          {

            swift_retain_n();
            swift_retain_n();

            v143 = v93 >> 62;
            if (v93 >> 62)
            {
LABEL_175:
              v495 = v90;
              if (v143 == 1)
              {
                v269 = *((v93 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                v505 = *((v93 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

                swift_retain_n();

                v271 = v503;
                v270 = v504;
                FormatMicaNodeContent.bind(binder:context:)(v503, a2);
                v504 = v270;
                if (v270 || (, v505 = v269, , v272 = v504, FormatMicaNodeContent.bind(binder:context:)(v271, a2), (v504 = v272) != 0))
                {

                  goto LABEL_383;
                }
              }

              else
              {
                v273 = *((v93 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
                v505 = *((v93 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
                swift_retain_n();

                v275 = v503;
                v274 = v504;
                FormatMicaNodeContent.bind(binder:context:)(v503, a2);
                v504 = v274;
                if (v274)
                {

                  goto LABEL_289;
                }

                v276 = v504;
                sub_1D62336A0(v275, a2, v273);
                v504 = v276;
                if (v276)
                {

                  swift_bridgeObjectRelease_n();

                  goto LABEL_384;
                }

                swift_bridgeObjectRelease_n();
              }

              v58 = v499;
              goto LABEL_183;
            }

LABEL_71:
            v505 = *(v93 + 16);

            v144 = v504;
            FormatMicaNodeArchive.bind(binder:context:)(v503, a2);
            v504 = v144;
            if (v144)
            {

              goto LABEL_384;
            }

            goto LABEL_184;
          }

          v495 = v90;
          v492 = v93;
          if (v142 >> 62 == 2)
          {
            v500 = v57;
            v177 = *((v142 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v178 = *((v142 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v179 = *((v142 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
            v505 = *((v142 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v176 = v505;
            v506 = v177;
            v507 = v178;
            v508 = v179;

            swift_retain_n();

            swift_retain_n();
            swift_retain_n();

            sub_1D5D27950(v176, v177, v178, v179);
            v180 = v504;
            sub_1D6089844(a2);
            v504 = v180;
            if (v180)
            {

              sub_1D5D28C84(v176, v177, v178, v179);

              goto LABEL_383;
            }

            sub_1D5D28C84(v176, v177, v178, v179);

            v57 = v500;
            v58 = v499;
          }

          else
          {
            v265 = *((v142 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v505 = *((v142 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            v267 = v503;
            v266 = v504;
            FormatURL.bind(binder:context:)(v503, a2);
            v504 = v266;
            if (v266)
            {

              goto LABEL_344;
            }

            v268 = v504;
            sub_1D620FAB4(v267, a2, v265);
            v504 = v268;
            if (v268)
            {

              swift_bridgeObjectRelease_n();

              goto LABEL_373;
            }

            swift_bridgeObjectRelease_n();

            v58 = v499;
          }

          v90 = v495;
          v92 = v497;
        }

        v93 = v492;
        v143 = v492 >> 62;
        if (v492 >> 62)
        {
          goto LABEL_175;
        }

        goto LABEL_71;
      }

      v117 = *((v91 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v118 = *((v91 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v493 = v117;
      if (v117 >> 62)
      {
        v496 = v118;
        v498 = v91;
        v500 = v57;
        v119 = v504;
        v492 = v91 & 0x3FFFFFFFFFFFFFFFLL;
        if (v117 >> 62 != 1)
        {
          v156 = *((v117 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v505 = *((v117 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          swift_retain_n();
          swift_retain_n();
          v157 = v92;

          swift_retain_n();

          v158 = v502;
          v159 = v503;
          FormatMicaNodeContent.bind(binder:context:)(v503, v502);
          v160 = v119;
          if (v119)
          {

LABEL_327:

LABEL_328:

LABEL_329:

            v504 = v160;
            return result;
          }

          sub_1D62336A0(v159, v158, v156);
          v504 = 0;

          swift_bridgeObjectRelease_n();
          v57 = v500;
          v92 = v157;
          a2 = v502;
          goto LABEL_110;
        }

        v499 = v58;
        v120 = *((v117 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v505 = *((v117 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        swift_retain_n();
        v121 = v502;
        v122 = v503;

        swift_retain_n();
        swift_retain_n();
        v497 = v92;

        swift_retain_n();

        FormatMicaNodeContent.bind(binder:context:)(v122, v121);
        if (v119)
        {

          v504 = v119;
          goto LABEL_383;
        }

        v505 = v120;

        FormatMicaNodeContent.bind(binder:context:)(v122, v121);

        v504 = 0;
        a2 = v502;
        v58 = v499;
        v57 = v500;
      }

      else
      {
        v155 = *(v117 + 16);
        if ((v155 >> 62) <= 1)
        {

          swift_retain_n();
          swift_retain_n();

LABEL_111:

          v191 = v504;
          sub_1D62336A0(v503, a2, v118);
          v504 = v191;
          if (v191)
          {

            swift_bridgeObjectRelease_n();
            goto LABEL_384;
          }

          swift_bridgeObjectRelease_n();

          goto LABEL_184;
        }

        v496 = v118;
        v497 = v92;
        v500 = v57;
        if (v155 >> 62 == 2)
        {
          v186 = *((v155 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v185 = *((v155 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v187 = *((v155 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          LODWORD(v470) = *((v155 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v505 = v186;
          v506 = v185;
          v507 = v187;
          v508 = v470;
          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          v471 = v186;
          v472 = v185;
          v473 = v187;
          v188 = v187;
          v189 = v470;
          sub_1D5D27950(v186, v185, v188, v470);
          v190 = v504;
          sub_1D6089844(a2);
          v504 = v190;
          if (v190)
          {

            sub_1D5D28C84(v471, v472, v473, v189);

            goto LABEL_382;
          }

          sub_1D5D28C84(v471, v472, v473, v189);

          v57 = v500;
          v92 = v497;
          goto LABEL_110;
        }

        v498 = v91;
        v499 = v58;
        v282 = *((v155 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v505 = *((v155 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        swift_retain_n();
        v492 = v91 & 0x3FFFFFFFFFFFFFFFLL;
        swift_retain_n();

        swift_retain_n();

        v284 = v503;
        v283 = v504;
        FormatURL.bind(binder:context:)(v503, a2);
        v160 = v283;
        if (v283)
        {

          goto LABEL_329;
        }

        sub_1D620FAB4(v284, a2, v282);
        v504 = 0;

        swift_bridgeObjectRelease_n();

        v57 = v500;
        v58 = v499;
      }

      v92 = v497;
LABEL_110:
      v118 = v496;
      goto LABEL_111;
    }

    v116 = *(v91 + 16);
    if ((v116 >> 62) <= 1)
    {
LABEL_42:

      swift_retain_n();
LABEL_184:

      v277 = v504;
      sub_1D62336A0(v503, a2, v92);
      v504 = v277;
      if (v277)
      {

LABEL_276:
        swift_bridgeObjectRelease_n();
        goto LABEL_384;
      }

      swift_bridgeObjectRelease_n();
LABEL_3:

      goto LABEL_4;
    }

    if (v116 >> 62 == 2)
    {
      if (*((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
      {
        goto LABEL_42;
      }

      v498 = v91;
      v377 = v90;
      v378 = v58;
      v500 = v57;
      v379 = v92;
      v380 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v381 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v382 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v505 = v380;
      v506 = v381;
      v507 = v382;
      v509 = 6;
      sub_1D5D27950(v380, v381, v382, 0);

      v497 = v379;

      v495 = v377;
      swift_retain_n();
      sub_1D5D27950(v380, v381, v382, 0);

      v383 = v504;
      v384 = sub_1D703E0C8(&v505, &v509);
      v504 = v383;
      if (v383)
      {
        sub_1D5D28C84(v380, v381, v382, 0);

        goto LABEL_345;
      }

      v385 = v384;
      v501 = v60;
      v386 = v477;
      FormatOptionCollection.subscript.getter(v380, v381, v477);
      if ((*v481)(v386, 1, v494) == 1)
      {

        sub_1D5B6EF64(v386, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if ((*(a2 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          v444 = swift_allocError();
          *v445 = v380;
          v445[1] = v381;
          swift_storeEnumTagMultiPayload();
          v504 = v444;
          swift_willThrow();

          sub_1D5D28C84(v380, v381, v382, 0);
LABEL_315:

LABEL_373:

          return result;
        }

        sub_1D5D28C84(v380, v381, v382, 0);
        v387 = v488;
        (*v480)(v488, 1, 1, v494);
        sub_1D5B6EF64(v387, &qword_1EDF337F0, type metadata accessor for FormatOption);

        v57 = v500;
      }

      else
      {
        v496 = v382;
        v406 = v475;
        sub_1D5D5E33C(v386, v475, type metadata accessor for FormatOption);
        v505 = v406[2];

        FormatOptionValue.type.getter(v407, &v509);
        if ((sub_1D6183C84(v509, v385) & 1) == 0)
        {
          v504 = type metadata accessor for FormatDerivedDataError(0);
          sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          v446 = swift_allocError();
          v448 = v447;
          v449 = v406[1];
          v503 = *v406;
          v505 = v406[2];

          FormatOptionValue.type.getter(v450, &v509);
          v451 = v509;
          *v448 = v503;
          *(v448 + 8) = v449;
          *(v448 + 16) = v451;
          *(v448 + 24) = v385;
          swift_storeEnumTagMultiPayload();
          v504 = v446;
          swift_willThrow();

          sub_1D5D28C84(v380, v381, v496, 0);

          sub_1D62B51D0(v406, type metadata accessor for FormatOption);

          goto LABEL_383;
        }

        sub_1D5D28C84(v380, v381, v496, 0);

        v408 = v488;
        sub_1D5D5E33C(v406, v488, type metadata accessor for FormatOption);
        (*v480)(v408, 0, 1, v494);
        sub_1D5B6EF64(v408, &qword_1EDF337F0, type metadata accessor for FormatOption);

        v57 = v500;
        a2 = v502;
      }

      v58 = v378;
    }

    else
    {
      v163 = *(v90 + 24);
      v164 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v505 = *((v116 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      v501 = v60;

      v495 = v90;
      swift_retain_n();
      v498 = v91;
      swift_retain_n();
      v497 = v163;

      v166 = v503;
      v165 = v504;
      FormatURL.bind(binder:context:)(v503, a2);
      v504 = v165;
      if (v165)
      {

        goto LABEL_373;
      }

      v167 = v504;
      sub_1D620FAB4(v166, a2, v164);
      v504 = v167;
      if (v167)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_315;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_183:
    v92 = v497;
    goto LABEL_184;
  }

  v63 = *((v59 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v62 = *((v59 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v497 = v63;
  v498 = v59 & 0x3FFFFFFFFFFFFFFFLL;
  v500 = v57;
  v501 = v60;
  if (!(v63 >> 62))
  {
    v105 = *(v63 + 16);
    v106 = v503;
    if ((v105 >> 62) > 1)
    {
      if (v105 >> 62 != 2)
      {
        v496 = v62;
        v162 = *((v105 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v161 = *((v105 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v495 = v105 & 0x3FFFFFFFFFFFFFFFLL;
        if ((v162 >> 62) > 1)
        {
          v499 = v58;
          v493 = v162;
          if (v162 >> 62 == 2)
          {
            v196 = v162 & 0x3FFFFFFFFFFFFFFFLL;
            v197 = *((v162 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v198 = *((v162 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v199 = *(v196 + 32);
            v200 = *(v196 + 40);
            v505 = v197;
            v506 = v198;
            v507 = v199;
            v508 = v200;

            swift_retain_n();

            swift_retain_n();

            swift_retain_n();
            sub_1D5D27950(v197, v198, v199, v200);
            v201 = v504;
            sub_1D6089844(v502);
            v504 = v201;
            if (v201)
            {

              sub_1D5D28C84(v197, v198, v199, v200);

              goto LABEL_383;
            }

            sub_1D5D28C84(v197, v198, v199, v200);

            v57 = v500;
            v106 = v503;
            v58 = v499;
          }

          else
          {
            v285 = v162 & 0x3FFFFFFFFFFFFFFFLL;
            v286 = *(v285 + 24);
            v505 = *(v285 + 16);
            swift_retain_n();

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            v287 = v106;
            v288 = v502;
            v289 = v106;
            v290 = v504;
            FormatURL.bind(binder:context:)(v287, v502);
            if (v290)
            {

              goto LABEL_365;
            }

            sub_1D620FAB4(v289, v288, v286);

            swift_bridgeObjectRelease_n();
            v504 = 0;
            v57 = v500;
            v58 = v499;
            v106 = v289;
          }
        }

        else
        {

          swift_retain_n();
          swift_retain_n();
        }

        v281 = v106;
        v291 = v106;
        v292 = v504;
        sub_1D620FAB4(v291, v502, v161);
        v504 = v292;
        if (v292)
        {

          swift_bridgeObjectRelease_n();

          goto LABEL_384;
        }

        swift_bridgeObjectRelease_n();

        v62 = v496;
        goto LABEL_196;
      }

      if (!*((v105 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
      {
        v499 = v58;
        v368 = *((v105 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v367 = *((v105 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v369 = v62;
        v370 = *((v105 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v505 = v368;
        v506 = v367;
        v507 = v370;
        v509 = 6;
        sub_1D5D27950(v368, v367, v370, 0);
        v496 = v369;

        swift_retain_n();

        sub_1D5D27950(v368, v367, v370, 0);

        v371 = v504;
        v372 = sub_1D703E0C8(&v505, &v509);
        v504 = v371;
        if (v371)
        {
          sub_1D5D28C84(v368, v367, v370, 0);
        }

        else
        {
          v373 = v372;
          v374 = v502;
          v375 = v489;
          FormatOptionCollection.subscript.getter(v368, v367, v489);
          if ((*v481)(v375, 1, v494) != 1)
          {
            v399 = v375;
            v400 = v476;
            sub_1D5D5E33C(v399, v476, type metadata accessor for FormatOption);
            v505 = v400[2];

            FormatOptionValue.type.getter(v401, &v509);
            v402 = sub_1D6183C84(v509, v373);
            v403 = v503;
            if ((v402 & 1) == 0)
            {
              v503 = type metadata accessor for FormatDerivedDataError(0);
              sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
              v434 = swift_allocError();
              v436 = v435;
              v437 = v400;
              v438 = *v400;
              v440 = v437[1];
              v439 = v437[2];
              v504 = v434;
              v505 = v439;

              FormatOptionValue.type.getter(v441, &v509);
              v442 = v509;
              *v436 = v438;
              *(v436 + 8) = v440;
              *(v436 + 16) = v442;
              *(v436 + 24) = v373;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              sub_1D5D28C84(v368, v367, v370, 0);

              v443 = v476;
              goto LABEL_381;
            }

            sub_1D5D28C84(v368, v367, v370, 0);

            v404 = v400;
            v405 = v487;
            sub_1D5D5E33C(v404, v487, type metadata accessor for FormatOption);
            (*v480)(v405, 0, 1, v494);
            sub_1D5B6EF64(v405, &qword_1EDF337F0, type metadata accessor for FormatOption);

            v106 = v403;
            v57 = v500;
LABEL_132:
            v58 = v499;
            goto LABEL_136;
          }

          sub_1D5B6EF64(v375, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if (*(v374 + 48))
          {
            sub_1D5D28C84(v368, v367, v370, 0);
            v376 = v487;
            (*v480)(v487, 1, 1, v494);
            sub_1D5B6EF64(v376, &qword_1EDF337F0, type metadata accessor for FormatOption);

            v57 = v500;
            v106 = v503;
            goto LABEL_132;
          }

          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          v504 = swift_allocError();
          *v433 = v368;
          v433[1] = v367;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D5D28C84(v368, v367, v370, 0);
        }

        goto LABEL_373;
      }
    }

    swift_retain_n();

    v107 = v62 >> 62;
    if (!(v62 >> 62))
    {
      goto LABEL_33;
    }

    goto LABEL_197;
  }

  v64 = v503;
  if (v63 >> 62 != 1)
  {
    v109 = v504;
    v110 = *((v63 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v495 = *((v63 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v492 = v110;
    v493 = v63 & 0x3FFFFFFFFFFFFFFFLL;
    if (v110 >> 62)
    {
      if (v110 >> 62 != 1)
      {
        v151 = *((v110 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v473 = *((v110 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v472 = v151;
        if (v151 >> 62)
        {
          v499 = v58;
          v496 = v62;
          v471 = v110 & 0x3FFFFFFFFFFFFFFFLL;
          if (v151 >> 62 == 1)
          {
            v152 = *((v151 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v505 = *((v151 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

            swift_retain_n();

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            v153 = v502;
            v154 = v503;
            FormatMicaNodeContent.bind(binder:context:)(v503, v502);
            if (v109)
            {

              v504 = v109;

              goto LABEL_383;
            }

            v505 = v152;

            FormatMicaNodeContent.bind(binder:context:)(v154, v153);
          }

          else
          {
            v256 = *((v151 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v505 = *((v151 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();

            swift_retain_n();
            swift_retain_n();

            swift_retain_n();

            swift_retain_n();

            v257 = v502;
            v258 = v503;
            FormatMicaNodeContent.bind(binder:context:)(v503, v502);
            if (v109)
            {

              goto LABEL_355;
            }

            sub_1D62336A0(v258, v257, v256);

            swift_bridgeObjectRelease_n();
          }

          v255 = v502;
          v58 = v499;
          v57 = v500;
          v62 = v496;
        }

        else
        {
          v505 = *(v151 + 16);

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();

          FormatMicaNodeArchive.bind(binder:context:)(v503, v502);
          if (v109)
          {
            goto LABEL_331;
          }

          v255 = v502;
        }

        v259 = v473;

        sub_1D62336A0(v503, v255, v259);

        swift_bridgeObjectRelease_n();

        v64 = v503;
        goto LABEL_188;
      }

      v473 = v110 & 0x3FFFFFFFFFFFFFFFLL;
      v112 = *((v110 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v111 = *((v110 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v472 = v112;
      v471 = v111;
      if (v112 >> 62)
      {
        v496 = v62;
        v499 = v58;
        if (v112 >> 62 == 1)
        {
          v113 = *((v112 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v505 = *((v112 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();

          v470 = v112 & 0x3FFFFFFFFFFFFFFFLL;
          swift_retain_n();

          v115 = v502;
          v114 = v503;
          FormatMicaNodeContent.bind(binder:context:)(v503, v502);
          if (v109)
          {

            v504 = v109;

            goto LABEL_382;
          }

          v505 = v113;

          FormatMicaNodeContent.bind(binder:context:)(v114, v115);

          goto LABEL_151;
        }

        v242 = *((v112 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v505 = *((v112 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        v244 = v502;
        v243 = v503;
        FormatMicaNodeContent.bind(binder:context:)(v503, v502);
        if (!v109)
        {

          sub_1D62336A0(v243, v244, v242);

          swift_bridgeObjectRelease_n();
LABEL_151:
          v232 = v502;
          v58 = v499;
          v57 = v500;
          v62 = v496;
          goto LABEL_152;
        }
      }

      else
      {
        v505 = *(v112 + 16);
        v470 = v111 & 0x3FFFFFFFFFFFFFFFLL;

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        FormatMicaNodeArchive.bind(binder:context:)(v503, v502);
        if (!v109)
        {

          v232 = v502;
LABEL_152:
          v505 = v471;

          FormatMicaNodeContent.bind(binder:context:)(v503, v232);

          v64 = v503;
          goto LABEL_188;
        }
      }
    }

    else
    {
      v145 = *(v110 + 16);
      if ((v145 >> 62) <= 1)
      {

        swift_retain_n();
        swift_retain_n();

LABEL_188:
        v280 = v495;

        v281 = v64;
        sub_1D62336A0(v64, v502, v280);
        v504 = v109;
        if (v109)
        {

          swift_bridgeObjectRelease_n();

          goto LABEL_384;
        }

        swift_bridgeObjectRelease_n();

LABEL_196:
        v106 = v281;
        v107 = v62 >> 62;
        if (!(v62 >> 62))
        {
          goto LABEL_33;
        }

        goto LABEL_197;
      }

      v496 = v62;
      v499 = v58;
      if (v145 >> 62 == 2)
      {
        v182 = *((v145 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v183 = *((v145 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v184 = *((v145 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v505 = *((v145 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v181 = v505;
        v506 = v182;
        v507 = v183;
        v508 = v184;
        swift_retain_n();

        swift_retain_n();
        swift_retain_n();

        sub_1D5D27950(v181, v182, v183, v184);
        sub_1D6089844(v502);
        if (v109)
        {

          sub_1D5D28C84(v181, v182, v183, v184);

          v504 = v109;
          return result;
        }

        sub_1D5D28C84(v181, v182, v183, v184);

        v57 = v500;
        v64 = v503;
        v58 = v499;
        v62 = v496;
        goto LABEL_188;
      }

      v278 = *((v145 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v505 = *((v145 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      swift_retain_n();
      swift_retain_n();

      swift_retain_n();

      v279 = v502;
      FormatURL.bind(binder:context:)(v64, v502);
      if (!v109)
      {

        sub_1D620FAB4(v64, v279, v278);

        swift_bridgeObjectRelease_n();

        v64 = v503;
        v58 = v499;
        v62 = v496;
        goto LABEL_188;
      }

LABEL_331:
    }

LABEL_355:

    v504 = v109;
    return result;
  }

  v496 = v62;
  v65 = v63 & 0x3FFFFFFFFFFFFFFFLL;
  v66 = *((v63 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v67 = *((v63 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v495 = v66;
  if (v66 >> 62)
  {
    if (v66 >> 62 == 1)
    {
      v68 = v66 & 0x3FFFFFFFFFFFFFFFLL;
      v69 = *((v66 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v70 = *((v66 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v499 = v58;
      v492 = v67;
      v473 = v69;
      v472 = v70;
      if (v69 >> 62)
      {
        v71 = v504;
        if (v69 >> 62 == 1)
        {
          v72 = *((v69 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v505 = *((v69 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          v471 = v68;
          swift_retain_n();

          swift_retain_n();

          v73 = v502;
          v74 = v503;
          FormatMicaNodeContent.bind(binder:context:)(v503, v502);
          if (v71)
          {

            v504 = v71;

            goto LABEL_384;
          }

          v505 = v72;

          FormatMicaNodeContent.bind(binder:context:)(v74, v73);

          v504 = 0;
          v75 = v503;
          v58 = v499;
          v57 = v500;
        }

        else
        {
          v210 = *((v69 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v505 = *((v69 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v211 = v70 & 0x3FFFFFFFFFFFFFFFLL;
          v470 = v505;
          swift_retain_n();

          swift_retain_n();
          v493 = v65;
          swift_retain_n();

          swift_retain_n();

          swift_retain_n();
          v471 = v211;

          v213 = v502;
          v212 = v503;
          FormatMicaNodeContent.bind(binder:context:)(v503, v502);
          v160 = v71;
          if (v71)
          {

            goto LABEL_329;
          }

          sub_1D62336A0(v212, v213, v210);
          v504 = 0;

          swift_bridgeObjectRelease_n();
          v75 = v503;
          v58 = v499;
        }
      }

      else
      {
        v505 = *(v69 + 16);

        swift_retain_n();
        v493 = v65;
        swift_retain_n();

        v471 = v68;
        swift_retain_n();

        swift_retain_n();

        v208 = v503;
        v209 = v504;
        FormatMicaNodeArchive.bind(binder:context:)(v503, v502);
        v504 = v209;
        if (v209)
        {

          goto LABEL_373;
        }

        v58 = v499;
        v75 = v208;
      }

      v505 = v472;

      v214 = v75;
      v215 = v75;
      v216 = v504;
      FormatMicaNodeContent.bind(binder:context:)(v215, v502);
      v504 = v216;
      if (v216)
      {

        goto LABEL_383;
      }

      v64 = v214;
LABEL_127:
      v67 = v492;
      v132 = v492 >> 62;
      if (v492 >> 62)
      {
LABEL_128:
        if (v132 == 1)
        {
          v217 = *((v67 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v505 = *((v67 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          swift_retain_n();

          v218 = v64;
          v219 = v64;
          v220 = v502;
          v221 = v504;
          FormatMicaNodeContent.bind(binder:context:)(v218, v502);
          v504 = v221;
          if (v221 || (v499 = v58, , v505 = v217, , v222 = v504, FormatMicaNodeContent.bind(binder:context:)(v219, v220), (v504 = v222) != 0))
          {

            goto LABEL_382;
          }

          v106 = v219;
          goto LABEL_132;
        }

        v223 = v67 & 0x3FFFFFFFFFFFFFFFLL;
        v224 = *(v223 + 24);
        v505 = *(v223 + 16);
        v492 = v505;
        swift_retain_n();

        v225 = v64;
        v226 = v64;
        v227 = v502;
        v228 = v504;
        FormatMicaNodeContent.bind(binder:context:)(v225, v502);
        v504 = v228;
        if (v228)
        {
          goto LABEL_305;
        }

        v229 = v504;
        sub_1D62336A0(v226, v227, v224);
        v504 = v229;
        if (v229)
        {
LABEL_309:

          swift_bridgeObjectRelease_n();

          goto LABEL_383;
        }

        swift_bridgeObjectRelease_n();

        v106 = v226;
LABEL_136:
        v62 = v496;
        v107 = v496 >> 62;
        if (!(v496 >> 62))
        {
          goto LABEL_33;
        }

LABEL_197:
        if (v107 == 1)
        {
          v294 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v293 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v496 = v294;
          if (v294 >> 62)
          {
            if (v294 >> 62 == 1)
            {
              v295 = *((v294 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v505 = *((v294 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

              swift_retain_n();

              swift_retain_n();

              v296 = v106;
              v297 = v106;
              v298 = v502;
              v299 = v504;
              FormatMicaNodeContent.bind(binder:context:)(v296, v502);
              v504 = v299;
              if (v299 || (, v505 = v295, , v300 = v504, FormatMicaNodeContent.bind(binder:context:)(v297, v298), (v504 = v300) != 0))
              {

                goto LABEL_382;
              }

              goto LABEL_228;
            }

            v309 = *((v294 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v505 = *((v294 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();

            swift_retain_n();

            v310 = v106;
            v311 = v106;
            v312 = v502;
            v313 = v504;
            FormatMicaNodeContent.bind(binder:context:)(v310, v502);
            v504 = v313;
            if (!v313)
            {

              v314 = v504;
              sub_1D62336A0(v311, v312, v309);
              v504 = v314;
              if (v314)
              {

                swift_bridgeObjectRelease_n();
                goto LABEL_383;
              }

              swift_bridgeObjectRelease_n();
              goto LABEL_228;
            }

LABEL_360:

            goto LABEL_379;
          }

          v308 = *(v294 + 16);
          if ((v308 >> 62) > 1)
          {
            if (v308 >> 62 == 2)
            {
              v323 = *((v308 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v324 = *((v308 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
              v325 = *((v308 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
              v505 = *((v308 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v322 = v505;
              v506 = v323;
              v507 = v324;
              v508 = v325;

              swift_retain_n();

              sub_1D5D27950(v322, v323, v324, v325);
              v326 = v504;
              sub_1D6089844(v502);
              v504 = v326;
              if (v326)
              {

                sub_1D5D28C84(v322, v323, v324, v325);

                goto LABEL_382;
              }

              sub_1D5D28C84(v322, v323, v324, v325);

              v106 = v503;
              v57 = v500;
            }

            else
            {
              v334 = *((v308 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v505 = *((v308 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              swift_retain_n();

              swift_retain_n();

              v335 = v106;
              v336 = v106;
              v337 = v502;
              v338 = v504;
              FormatURL.bind(binder:context:)(v335, v502);
              v504 = v338;
              if (v338)
              {

                goto LABEL_360;
              }

              v339 = v504;
              sub_1D620FAB4(v336, v337, v334);
              v504 = v339;
              if (v339)
              {

                swift_bridgeObjectRelease_n();

                goto LABEL_379;
              }

              swift_bridgeObjectRelease_n();

LABEL_228:
              v106 = v503;
              v57 = v500;
            }
          }

          else
          {
          }

          if (v293 >> 62)
          {
            v499 = v58;
            v340 = v57;
            if (v293 >> 62 == 1)
            {
              v342 = *((v293 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
              v341 = *((v293 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v505 = v342;

              swift_retain_n();

              v343 = v106;
              v344 = v502;
              v345 = v106;
              v346 = v504;
              FormatMicaNodeContent.bind(binder:context:)(v343, v502);
              v504 = v346;
              if (v346 || (, v505 = v341, , v347 = v504, FormatMicaNodeContent.bind(binder:context:)(v345, v344), (v504 = v347) != 0))
              {

                goto LABEL_383;
              }

              goto LABEL_239;
            }

            v350 = *((v293 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v505 = *((v293 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            swift_retain_n();

            v351 = v106;
            v352 = v502;
            v353 = v106;
            v354 = v504;
            FormatMicaNodeContent.bind(binder:context:)(v351, v502);
            v504 = v354;
            if (!v354)
            {

              v355 = v504;
              sub_1D62336A0(v353, v352, v350);
              v504 = v355;
              if (v355)
              {
                goto LABEL_309;
              }

              swift_bridgeObjectRelease_n();

LABEL_239:

              a2 = v502;
              v57 = v340;
              v58 = v499;
              goto LABEL_4;
            }

LABEL_305:
          }

          else
          {
            v505 = *(v293 + 16);

            v348 = v106;
            v349 = v504;
            FormatMicaNodeArchive.bind(binder:context:)(v348, v502);
            v504 = v349;
            if (!v349)
            {

              goto LABEL_246;
            }

LABEL_306:
          }

          goto LABEL_383;
        }

        v301 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v302 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v301 >> 62)
        {
          v303 = v504;
          v496 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          if (v301 >> 62 == 1)
          {
            v304 = v58;
            v305 = *((v301 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v505 = *((v301 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

            swift_retain_n();
            v495 = v62 & 0x3FFFFFFFFFFFFFFFLL;

            swift_retain_n();

            v306 = v502;
            v307 = v503;
            FormatMicaNodeContent.bind(binder:context:)(v503, v502);
            if (v303)
            {

              v504 = v303;
              goto LABEL_383;
            }

            v505 = v305;

            FormatMicaNodeContent.bind(binder:context:)(v307, v306);

            v504 = 0;
            v106 = v503;
            v58 = v304;
            v57 = v500;
LABEL_216:
            v302 = v496;
LABEL_217:

            v320 = v106;
            v321 = v504;
            sub_1D62336A0(v320, v502, v302);
            v504 = v321;
            if (v321)
            {

              swift_bridgeObjectRelease_n();
              goto LABEL_383;
            }

            swift_bridgeObjectRelease_n();

            goto LABEL_246;
          }

          v316 = *((v301 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v505 = *((v301 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          swift_retain_n();

          v317 = v502;
          v318 = v503;
          FormatMicaNodeContent.bind(binder:context:)(v503, v502);
          v319 = v303;
          if (!v303)
          {

            sub_1D62336A0(v318, v317, v316);
            v504 = 0;

            swift_bridgeObjectRelease_n();
            v57 = v500;
            v106 = v503;
            goto LABEL_216;
          }
        }

        else
        {
          v315 = *(v301 + 16);
          if ((v315 >> 62) <= 1)
          {

            goto LABEL_217;
          }

          v493 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v495 = v62 & 0x3FFFFFFFFFFFFFFFLL;
          if (v315 >> 62 == 2)
          {
            v328 = *((v315 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v329 = v302;
            v330 = *((v315 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v331 = *((v315 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
            v505 = *((v315 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v327 = v505;
            v506 = v328;
            v507 = v330;
            v508 = v331;
            swift_retain_n();
            v332 = v329;

            sub_1D5D27950(v327, v328, v330, v331);
            v333 = v504;
            sub_1D6089844(v502);
            v504 = v333;
            if (v333)
            {

              sub_1D5D28C84(v327, v328, v330, v331);

              goto LABEL_382;
            }

            sub_1D5D28C84(v327, v328, v330, v331);

            v57 = v500;
            v106 = v503;
            v302 = v332;
            goto LABEL_217;
          }

          v356 = *((v315 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v505 = *((v315 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          swift_retain_n();

          v357 = v106;
          v358 = v502;
          v359 = v106;
          v360 = v504;
          FormatURL.bind(binder:context:)(v357, v502);
          v319 = v360;
          if (!v360)
          {
            v496 = v302;

            sub_1D620FAB4(v359, v358, v356);
            v504 = 0;

            swift_bridgeObjectRelease_n();

            v57 = v500;
            v106 = v359;
            v302 = v496;
            goto LABEL_217;
          }
        }

        v504 = v319;
        return result;
      }
    }

    else
    {
      v133 = *((v66 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v134 = *((v66 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v493 = v63 & 0x3FFFFFFFFFFFFFFFLL;
      v472 = v66 & 0x3FFFFFFFFFFFFFFFLL;
      v473 = v134;
      v471 = v133;
      if (v133 >> 62)
      {
        v499 = v58;
        v135 = v504;
        if (v133 >> 62 == 1)
        {
          v136 = v133 & 0x3FFFFFFFFFFFFFFFLL;
          v137 = *((v133 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v505 = *((v133 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();
          v138 = v67;

          v470 = v136;
          swift_retain_n();

          v139 = v502;
          v140 = v503;
          FormatMicaNodeContent.bind(binder:context:)(v503, v502);
          if (v135)
          {

            v504 = v135;

            goto LABEL_383;
          }

          v505 = v137;

          FormatMicaNodeContent.bind(binder:context:)(v140, v139);

          v504 = 0;
          v141 = v503;
          v57 = v500;
          v58 = v499;
          v67 = v138;
        }

        else
        {
          v245 = *((v133 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v505 = *((v133 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          swift_retain_n();

          swift_retain_n();
          swift_retain_n();

          swift_retain_n();
          v492 = v67;

          swift_retain_n();

          v247 = v502;
          v246 = v503;
          FormatMicaNodeContent.bind(binder:context:)(v503, v502);
          v160 = v135;
          if (v135)
          {

            goto LABEL_327;
          }

          sub_1D62336A0(v246, v247, v245);
          v504 = 0;

          swift_bridgeObjectRelease_n();
          v57 = v500;
          v58 = v499;
          v141 = v503;
          v67 = v492;
        }
      }

      else
      {
        v505 = *(v133 + 16);

        swift_retain_n();
        swift_retain_n();

        swift_retain_n();

        swift_retain_n();

        v233 = v504;
        FormatMicaNodeArchive.bind(binder:context:)(v503, v502);
        v504 = v233;
        if (v233)
        {

          goto LABEL_373;
        }

        v141 = v503;
      }

      v248 = v473;

      v249 = v141;
      v250 = v141;
      v251 = v504;
      sub_1D62336A0(v250, v502, v248);
      v504 = v251;
      if (v251)
      {
        goto LABEL_309;
      }

      swift_bridgeObjectRelease_n();

      v64 = v249;
      v132 = v67 >> 62;
      if (v67 >> 62)
      {
        goto LABEL_128;
      }
    }

LABEL_157:
    v505 = *(v67 + 16);

    v252 = v64;
    v253 = v64;
    v254 = v504;
    FormatMicaNodeArchive.bind(binder:context:)(v253, v502);
    v504 = v254;
    if (v254)
    {
      goto LABEL_306;
    }

    v106 = v252;
    v62 = v496;
    v107 = v496 >> 62;
    if (!(v496 >> 62))
    {
LABEL_33:
      v108 = *(v62 + 16);
      if ((v108 >> 62) <= 1)
      {
        goto LABEL_34;
      }

      if (v108 >> 62 == 2)
      {
        if (*((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
        {
LABEL_34:

          goto LABEL_246;
        }

        v388 = v490;
        v499 = v58;
        v390 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v389 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v391 = v62;
        v392 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v505 = v390;
        v506 = v389;
        v507 = v392;
        v509 = 6;
        sub_1D5D27950(v390, v389, v392, 0);
        v496 = v391;

        sub_1D5D27950(v390, v389, v392, 0);
        v393 = v504;
        v394 = sub_1D703E0C8(&v505, &v509);
        v504 = v393;
        if (v393)
        {
          sub_1D5D28C84(v390, v389, v392, 0);

          goto LABEL_378;
        }

        v395 = v394;
        v396 = v502;
        v397 = v486;
        FormatOptionCollection.subscript.getter(v390, v389, v486);
        if ((*v481)(v397, 1, v494) == 1)
        {

          sub_1D5B6EF64(v397, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if (*(v396 + 48) == 1)
          {
            sub_1D5D28C84(v390, v389, v392, 0);

            v398 = v485;
            (*v480)(v485, 1, 1, v494);
            sub_1D5B6EF64(v398, &qword_1EDF337F0, type metadata accessor for FormatOption);

            goto LABEL_267;
          }

          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          v504 = swift_allocError();
          *v452 = v390;
          v452[1] = v389;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D5D28C84(v390, v389, v392, 0);

LABEL_378:

LABEL_379:

          goto LABEL_384;
        }

        sub_1D5D5E33C(v397, v388, type metadata accessor for FormatOption);
        v505 = v388[2];

        FormatOptionValue.type.getter(v409, &v509);
        if (sub_1D6183C84(v509, v395))
        {

          sub_1D5D28C84(v390, v389, v392, 0);

          v410 = v485;
          sub_1D5D5E33C(v490, v485, type metadata accessor for FormatOption);
          (*v480)(v410, 0, 1, v494);
          sub_1D5B6EF64(v410, &qword_1EDF337F0, type metadata accessor for FormatOption);

LABEL_267:

          v58 = v499;
          v57 = v500;
LABEL_247:
          a2 = v502;
          goto LABEL_4;
        }

        v503 = type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        v453 = swift_allocError();
        v455 = v454;
        v456 = *v490;
        v457 = v490[1];
        v458 = v490[2];
        v504 = v453;
        v505 = v458;

        FormatOptionValue.type.getter(v459, &v509);
        v460 = v509;
        *v455 = v456;
        *(v455 + 8) = v457;
        *(v455 + 16) = v460;
        *(v455 + 24) = v395;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D5D28C84(v390, v389, v392, 0);

        v443 = v490;
LABEL_381:
        sub_1D62B51D0(v443, type metadata accessor for FormatOption);
LABEL_382:

        goto LABEL_383;
      }

      v496 = v62;
      v168 = v108 & 0x3FFFFFFFFFFFFFFFLL;
      v170 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v169 = *((v108 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if ((v170 >> 62) <= 1)
      {

        goto LABEL_244;
      }

      if (v170 >> 62 == 2)
      {
        v499 = v58;
        v495 = v170;
        v202 = v170 & 0x3FFFFFFFFFFFFFFFLL;
        v203 = *((v170 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v204 = *((v170 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v205 = *(v202 + 32);
        v206 = *(v202 + 40);
        v505 = v203;
        v506 = v204;
        v507 = v205;
        v508 = v206;

        swift_retain_n();

        sub_1D5D27950(v203, v204, v205, v206);
        v207 = v504;
        sub_1D6089844(v502);
        v504 = v207;
        if (v207)
        {

          sub_1D5D28C84(v203, v204, v205, v206);

          goto LABEL_382;
        }

        sub_1D5D28C84(v203, v204, v205, v206);

        v57 = v500;
        v106 = v503;
        v58 = v499;
LABEL_244:

        v365 = v106;
        v366 = v504;
        sub_1D620FAB4(v365, v502, v169);
        v504 = v366;
        if (v366)
        {

          swift_bridgeObjectRelease_n();

          goto LABEL_384;
        }

        swift_bridgeObjectRelease_n();

LABEL_246:

        goto LABEL_247;
      }

      v361 = *((v170 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v505 = *((v170 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      v495 = v170 & 0x3FFFFFFFFFFFFFFFLL;
      swift_retain_n();

      v362 = v106;
      v363 = v106;
      v364 = v502;
      v290 = v504;
      FormatURL.bind(binder:context:)(v362, v502);
      if (!v290)
      {
        v493 = v168;

        sub_1D620FAB4(v363, v364, v361);

        swift_bridgeObjectRelease_n();
        v504 = 0;
        v57 = v500;
        v106 = v363;
        goto LABEL_244;
      }

LABEL_365:
      v504 = v290;

      goto LABEL_384;
    }

    goto LABEL_197;
  }

  v131 = *(v66 + 16);
  if ((v131 >> 62) <= 1)
  {
LABEL_63:

    swift_retain_n();
    swift_retain_n();

    v132 = v67 >> 62;
    if (v67 >> 62)
    {
      goto LABEL_128;
    }

    goto LABEL_157;
  }

  if (v131 >> 62 != 2)
  {
    v260 = v503;
    v261 = *((v131 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v505 = *((v131 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();

    swift_retain_n();
    v493 = v65;
    swift_retain_n();

    swift_retain_n();
    v492 = v67;

    v262 = v502;
    v263 = v504;
    FormatURL.bind(binder:context:)(v260, v502);
    v504 = v263;
    if (v263)
    {

      goto LABEL_344;
    }

    v264 = v504;
    sub_1D620FAB4(v260, v262, v261);
    v504 = v264;
    if (!v264)
    {

      swift_bridgeObjectRelease_n();

      v64 = v503;
      v67 = v492;
      v132 = v492 >> 62;
      if (v492 >> 62)
      {
        goto LABEL_128;
      }

      goto LABEL_157;
    }

    swift_bridgeObjectRelease_n();

    goto LABEL_353;
  }

  if (*((v131 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
  {
    goto LABEL_63;
  }

  v499 = v58;
  v412 = *((v131 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v411 = *((v131 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v413 = *((v131 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v505 = v412;
  v506 = v411;
  v507 = v413;
  v509 = 6;
  sub_1D5D27950(v412, v411, v413, 0);

  swift_retain_n();
  swift_retain_n();

  v473 = v413;
  sub_1D5D27950(v412, v411, v413, 0);

  v414 = v504;
  v415 = sub_1D703E0C8(&v505, &v509);
  v504 = v414;
  if (v414)
  {
    sub_1D5D28C84(v412, v411, v473, 0);

    goto LABEL_354;
  }

  v416 = v415;
  v492 = v67;
  v417 = v502;
  v418 = v484;
  FormatOptionCollection.subscript.getter(v412, v411, v484);
  if ((*v481)(v418, 1, v494) == 1)
  {

    sub_1D5B6EF64(v418, &qword_1EDF337F0, type metadata accessor for FormatOption);
    if (*(v417 + 48))
    {
      sub_1D5D28C84(v412, v411, v473, 0);
      v419 = v483;
      (*v480)(v483, 1, 1, v494);
      v420 = v419;
LABEL_274:
      sub_1D5B6EF64(v420, &qword_1EDF337F0, type metadata accessor for FormatOption);

      v64 = v503;
      v58 = v499;
      v57 = v500;
      goto LABEL_127;
    }

    type metadata accessor for FormatLayoutError(0);
    sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    v468 = swift_allocError();
    *v469 = v412;
    v469[1] = v411;
    swift_storeEnumTagMultiPayload();
    v504 = v468;
    swift_willThrow();

    sub_1D5D28C84(v412, v411, v473, 0);

LABEL_353:

LABEL_354:

    goto LABEL_373;
  }

  v421 = v418;
  v422 = v474;
  sub_1D5D5E33C(v421, v474, type metadata accessor for FormatOption);
  v505 = v422[2];

  FormatOptionValue.type.getter(v423, &v509);
  if (sub_1D6183C84(v509, v416))
  {

    sub_1D5D28C84(v412, v411, v473, 0);

    v424 = v422;
    v425 = v483;
    sub_1D5D5E33C(v424, v483, type metadata accessor for FormatOption);
    (*v480)(v425, 0, 1, v494);
    v420 = v425;
    goto LABEL_274;
  }

  v503 = type metadata accessor for FormatDerivedDataError(0);
  sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
  v461 = swift_allocError();
  v463 = v462;
  v464 = v422[1];
  v502 = *v422;
  v465 = v422[2];
  v504 = v461;
  v505 = v465;

  FormatOptionValue.type.getter(v466, &v509);
  v467 = v509;
  *v463 = v502;
  *(v463 + 8) = v464;
  *(v463 + 16) = v467;
  *(v463 + 24) = v416;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_1D5D28C84(v412, v411, v473, 0);

  sub_1D62B51D0(v422, type metadata accessor for FormatOption);

LABEL_383:

LABEL_384:

  return result;
}

uint64_t sub_1D623A698(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v13 = a3 + 32;
    v14 = *(a3 + 16);
    do
    {
      v9 = *(v8 + 24 * v7 + 16);
      if (v9 >= 3)
      {
        v10 = *(v9 + 16);

        sub_1D5DEA234(v9);
        if (v10)
        {
          v11 = (v9 + 40);
          do
          {
            if ((*v11 & 1) == 0)
            {
              v12 = *(v11 - 1);
              swift_retain_n();
              FormatFloat.bind(binder:context:)(v6, a2);
              sub_1D62B72BC(v12, 0);
              if (v3)
              {

                return sub_1D5CBF568(v9);
              }
            }

            v11 += 16;
            --v10;
          }

          while (v10);
        }

        result = sub_1D5CBF568(v9);
        v8 = v13;
        v4 = v14;
      }

      ++v7;
    }

    while (v7 != v4);
  }

  return result;
}

void sub_1D623A7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = a2;
  for (i = (a3 + 48); ; i += 3)
  {
    v8 = *i;
    v9 = *i >> 62;
    if (v9 <= 1)
    {
      if (v9)
      {

        sub_1D5F33D5C(v8);

        FormatColor.bind(binder:context:)(a1, v5);
      }

      else
      {
        v7 = *(v8 + 16);

        sub_1D5F33D5C(v8);

        sub_1D6212DD8(a1, v5, v7);
      }

      sub_1D5F33D8C(v8);
      if (v3)
      {
        return;
      }

      goto LABEL_5;
    }

    if (v9 != 2)
    {
      goto LABEL_5;
    }

    v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = v10 >> 62;
    if ((v10 >> 62) <= 1)
    {
      if (!v12)
      {
        v13 = *(v10 + 16);

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);

        sub_1D6212DD8(a1, v5, v13);
        if (v3)
        {
          goto LABEL_116;
        }

        sub_1D5F33D8C(v10);
        goto LABEL_111;
      }

      sub_1D5F33D5C(v8);
      sub_1D5F33D5C(v10);

      sub_1D5F33D5C(v10);

      FormatColor.bind(binder:context:)(a1, a2);
      if (v3)
      {
        sub_1D5F33D8C(v10);

        goto LABEL_117;
      }

      goto LABEL_110;
    }

    if (v12 != 2)
    {

      sub_1D5F33D5C(v8);
      if (v10 == 0xC000000000000000)
      {
        v18 = 0xC000000000000000;
      }

      else
      {
        v18 = 0xC000000000000008;
      }

      sub_1D5F33D5C(v18);

      goto LABEL_111;
    }

    v15 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v16 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v16 != 2)
      {

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        if (v15 == 0xC000000000000000)
        {
          v22 = 0xC000000000000000;
        }

        else
        {
          v22 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v22);

        goto LABEL_108;
      }

      v75 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v19 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v73 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v74 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v20 = v19 >> 62;
      if ((v19 >> 62) <= 1)
      {
        if (!v20)
        {
          v71 = *(v19 + 16);

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);

          sub_1D6212DD8(a1, a2, v71);
          if (v3)
          {
            sub_1D5F33D8C(v19);

            sub_1D5F33D8C(v15);

            sub_1D5F33D8C(v10);

            goto LABEL_135;
          }

          sub_1D5F33D8C(v19);
          v21 = v19;
          goto LABEL_104;
        }

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        sub_1D5F33D5C(v19);

        sub_1D5F33D5C(v19);

        v21 = v19;
        FormatColor.bind(binder:context:)(a1, a2);
        if (v3)
        {
          sub_1D5F33D8C(v19);

          v44 = v73;
          sub_1D5F33D8C(v73);

          sub_1D5F33D8C(v10);

          v45 = v21;
          goto LABEL_144;
        }

        v26 = v19;
        goto LABEL_103;
      }

      if (v20 != 2)
      {

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        v21 = v19;
        if (v19 == 0xC000000000000000)
        {
          v27 = 0xC000000000000000;
        }

        else
        {
          v27 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v27);

        goto LABEL_104;
      }

      v23 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = v23 >> 62;
      v69 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v70 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v72 = v23;
      if ((v23 >> 62) <= 1)
      {
        if (v24)
        {

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);

          FormatColor.bind(binder:context:)(a1, a2);
          if (v3)
          {
            v47 = v72;
            sub_1D5F33D8C(v72);

            sub_1D5F33D8C(v19);

            sub_1D5F33D8C(v15);

            sub_1D5F33D8C(v10);

            goto LABEL_134;
          }

          v25 = v72;
        }

        else
        {
          v67 = *(v23 + 16);

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);

          sub_1D6212DD8(a1, a2, v67);
          if (v3)
          {
            sub_1D5F33D8C(v72);

            sub_1D5F33D8C(v19);

            v44 = v15;
            sub_1D5F33D8C(v15);

            sub_1D5F33D8C(v10);

            sub_1D5F33D8C(v72);
            v45 = v69;
            goto LABEL_144;
          }

          v25 = v72;
        }

        sub_1D5F33D8C(v25);
        goto LABEL_100;
      }

      if (v24 != 2)
      {

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        sub_1D5F33D5C(v19);

        sub_1D5F33D5C(v19);
        if (v72 == 0xC000000000000000)
        {
          v31 = 0xC000000000000000;
        }

        else
        {
          v31 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v31);
        v35 = v70;

        goto LABEL_101;
      }

      v28 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v66 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v68 = v28;
      v29 = v28 >> 62;
      if ((v28 >> 62) <= 1)
      {
        if (v29)
        {

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);
          sub_1D5F33D5C(v68);

          v30 = v68;
          sub_1D5F33D5C(v68);

          FormatColor.bind(binder:context:)(a1, a2);
          if (v3)
          {
            sub_1D5F33D8C(v68);

            v47 = v72;
            sub_1D5F33D8C(v72);

            sub_1D5F33D8C(v19);

            v15 = v73;
            sub_1D5F33D8C(v73);

            sub_1D5F33D8C(v10);

            sub_1D5F33D8C(v68);
LABEL_134:
            sub_1D5F33D8C(v47);
LABEL_135:
            v46 = v19;
            goto LABEL_136;
          }
        }

        else
        {
          v64 = *(v28 + 16);

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);
          v30 = v68;
          sub_1D5F33D5C(v68);

          sub_1D5F33D5C(v68);

          sub_1D6212DD8(a1, a2, v64);
          if (v3)
          {
            sub_1D5F33D8C(v68);

            sub_1D5F33D8C(v72);

            v53 = v19;
            sub_1D5F33D8C(v19);

            v44 = v73;
            sub_1D5F33D8C(v73);

            sub_1D5F33D8C(v10);

            sub_1D5F33D8C(v68);
            v54 = v72;
LABEL_143:
            sub_1D5F33D8C(v54);
            v45 = v53;
            goto LABEL_144;
          }
        }

        sub_1D5F33D8C(v30);
        v15 = v73;
        goto LABEL_98;
      }

      if (v29 != 2)
      {

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        sub_1D5F33D5C(v19);

        sub_1D5F33D5C(v19);
        sub_1D5F33D5C(v72);

        sub_1D5F33D5C(v72);
        if (v68 == 0xC000000000000000)
        {
          v36 = 0xC000000000000000;
        }

        else
        {
          v36 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v36);

LABEL_98:

        sub_1D623A7D4(a1, a2, v66);
        if (v3)
        {
          sub_1D5F33D8C(v68);

          v48 = v72;
          sub_1D5F33D8C(v72);

          v49 = v15;
          v50 = v69;
          sub_1D5F33D8C(v69);

          sub_1D5F33D8C(v49);

          sub_1D5F33D8C(v10);

          goto LABEL_131;
        }

        sub_1D5F33D8C(v68);

        sub_1D5F33D8C(v72);
LABEL_100:
        v35 = v70;
LABEL_101:

        sub_1D623A7D4(a1, a2, v35);
        if (v3)
        {
          sub_1D5F33D8C(v72);

          sub_1D5F33D8C(v69);

          sub_1D5F33D8C(v15);

          sub_1D5F33D8C(v10);

          v46 = v69;
LABEL_136:
          sub_1D5F33D8C(v46);
          goto LABEL_137;
        }

        sub_1D5F33D8C(v72);

        v26 = v69;
        v21 = v69;
LABEL_103:
        sub_1D5F33D8C(v26);
LABEL_104:

        sub_1D623A7D4(a1, a2, v74);
        if (v3)
        {
          sub_1D5F33D8C(v21);

          v15 = v73;
LABEL_124:
          sub_1D5F33D8C(v15);

          sub_1D5F33D8C(v10);

LABEL_137:
          v52 = v15;
LABEL_138:
          sub_1D5F33D8C(v52);
          goto LABEL_118;
        }

        sub_1D5F33D8C(v21);

        v15 = v73;
        goto LABEL_106;
      }

      v32 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = v32 >> 62;
      v63 = *((v28 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v65 = v32;
      if ((v32 >> 62) <= 1)
      {
        if (v33)
        {

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);
          sub_1D5F33D5C(v68);

          sub_1D5F33D5C(v68);
          sub_1D5F33D5C(v65);

          sub_1D5F33D5C(v65);

          FormatColor.bind(binder:context:)(a1, a2);
          if (v3)
          {
            sub_1D5F33D8C(v65);

            sub_1D5F33D8C(v68);

            sub_1D5F33D8C(v72);

            sub_1D5F33D8C(v19);

            v49 = v15;
            sub_1D5F33D8C(v15);

            sub_1D5F33D8C(v10);

            sub_1D5F33D8C(v65);
            sub_1D5F33D8C(v68);
            sub_1D5F33D8C(v72);
            v51 = v19;
            goto LABEL_132;
          }

          v34 = v65;
        }

        else
        {
          v61 = *(v32 + 16);

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);
          sub_1D5F33D5C(v68);

          sub_1D5F33D5C(v68);
          sub_1D5F33D5C(v65);

          sub_1D5F33D5C(v65);

          sub_1D6212DD8(a1, a2, v61);
          if (v3)
          {
            sub_1D5F33D8C(v65);

            sub_1D5F33D8C(v68);

            sub_1D5F33D8C(v72);

            v53 = v19;
            sub_1D5F33D8C(v19);

            v44 = v73;
            sub_1D5F33D8C(v73);

            sub_1D5F33D8C(v10);

            sub_1D5F33D8C(v65);
            sub_1D5F33D8C(v68);
            v54 = v72;
            goto LABEL_143;
          }

          v34 = v65;
        }

        sub_1D5F33D8C(v34);
        goto LABEL_95;
      }

      if (v33 != 2)
      {

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        sub_1D5F33D5C(v19);

        sub_1D5F33D5C(v19);
        sub_1D5F33D5C(v72);

        sub_1D5F33D5C(v72);
        sub_1D5F33D5C(v68);

        sub_1D5F33D5C(v68);
        if (v65 == 0xC000000000000000)
        {
          v40 = 0xC000000000000000;
        }

        else
        {
          v40 = 0xC000000000000008;
        }

        sub_1D5F33D5C(v40);
        v41 = v63;

        goto LABEL_96;
      }

      v37 = *((v32 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v60 = *((v32 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v62 = v37;
      v38 = v37 >> 62;
      if ((v37 >> 62) > 1)
      {
        if (v38 != 2)
        {

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);
          sub_1D5F33D5C(v68);

          sub_1D5F33D5C(v68);
          sub_1D5F33D5C(v65);

          sub_1D5F33D5C(v65);
          if (v62 == 0xC000000000000000)
          {
            v42 = 0xC000000000000000;
          }

          else
          {
            v42 = 0xC000000000000008;
          }

          sub_1D5F33D5C(v42);
          v39 = v60;

          goto LABEL_93;
        }

        v57 = *((v37 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v59 = *((v37 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        sub_1D5F33D5C(v19);

        sub_1D5F33D5C(v19);
        sub_1D5F33D5C(v72);

        sub_1D5F33D5C(v72);
        sub_1D5F33D5C(v68);

        sub_1D5F33D5C(v68);
        sub_1D5F33D5C(v65);

        sub_1D5F33D5C(v65);
        sub_1D5F33D5C(v62);
        v39 = v60;

        sub_1D5F33D5C(v62);
        sub_1D5F33D5C(v57);

        sub_1D6249738(a1, a2, v57, v59);
        if (v3)
        {
          v55 = v62;
          sub_1D5F33D8C(v57);
LABEL_149:

          sub_1D5F33D8C(v65);

          sub_1D5F33D8C(v68);

          sub_1D5F33D8C(v72);

          sub_1D5F33D8C(v69);

          v56 = v15;
          v44 = v15;
LABEL_150:
          sub_1D5F33D8C(v56);

          sub_1D5F33D8C(v10);

          sub_1D5F33D8C(v55);

          sub_1D5F33D8C(v55);
          sub_1D5F33D8C(v65);
          sub_1D5F33D8C(v68);
          sub_1D5F33D8C(v72);
          v45 = v69;
LABEL_144:
          sub_1D5F33D8C(v45);
          v52 = v44;
          goto LABEL_138;
        }

        sub_1D5F33D8C(v57);
      }

      else
      {
        if (v38)
        {

          sub_1D5F33D5C(v8);
          sub_1D5F33D5C(v10);

          sub_1D5F33D5C(v10);
          sub_1D5F33D5C(v15);

          sub_1D5F33D5C(v15);
          sub_1D5F33D5C(v19);

          sub_1D5F33D5C(v19);
          sub_1D5F33D5C(v72);

          sub_1D5F33D5C(v72);
          sub_1D5F33D5C(v68);

          sub_1D5F33D5C(v68);
          sub_1D5F33D5C(v65);

          sub_1D5F33D5C(v65);
          sub_1D5F33D5C(v62);

          sub_1D5F33D5C(v62);

          FormatColor.bind(binder:context:)(a1, a2);
          if (v3)
          {
            v55 = v62;

            sub_1D5F33D8C(v65);

            sub_1D5F33D8C(v68);

            sub_1D5F33D8C(v72);

            sub_1D5F33D8C(v19);

            v44 = v15;
            v56 = v15;
            goto LABEL_150;
          }

          sub_1D5F33D8C(v62);
          v39 = v60;
          goto LABEL_93;
        }

        v58 = *(v37 + 16);

        sub_1D5F33D5C(v8);
        sub_1D5F33D5C(v10);

        sub_1D5F33D5C(v10);
        sub_1D5F33D5C(v15);

        sub_1D5F33D5C(v15);
        sub_1D5F33D5C(v19);

        sub_1D5F33D5C(v19);
        sub_1D5F33D5C(v72);

        sub_1D5F33D5C(v72);
        sub_1D5F33D5C(v68);

        sub_1D5F33D5C(v68);
        sub_1D5F33D5C(v65);

        sub_1D5F33D5C(v65);
        sub_1D5F33D5C(v62);
        v39 = v60;

        sub_1D5F33D5C(v62);

        sub_1D6212DD8(a1, a2, v58);
        if (v3)
        {
          v55 = v62;
          goto LABEL_149;
        }
      }

      sub_1D5F33D8C(v62);
LABEL_93:

      sub_1D623A7D4(a1, a2, v39);
      if (v3)
      {
        sub_1D5F33D8C(v62);

        sub_1D5F33D8C(v65);

        sub_1D5F33D8C(v68);

        v48 = v72;
        sub_1D5F33D8C(v72);

        v49 = v15;
        v50 = v69;
        sub_1D5F33D8C(v69);

        sub_1D5F33D8C(v49);

        sub_1D5F33D8C(v10);

        sub_1D5F33D8C(v65);
        sub_1D5F33D8C(v68);
LABEL_131:
        sub_1D5F33D8C(v48);
        v51 = v50;
LABEL_132:
        sub_1D5F33D8C(v51);
        v52 = v49;
        goto LABEL_138;
      }

      sub_1D5F33D8C(v62);
      swift_bridgeObjectRelease_n();
      sub_1D5F33D8C(v65);
LABEL_95:
      v41 = v63;
LABEL_96:

      sub_1D623A7D4(a1, a2, v41);
      if (v3)
      {
        sub_1D5F33D8C(v65);

        sub_1D5F33D8C(v68);

        sub_1D5F33D8C(v72);

        sub_1D5F33D8C(v69);

        sub_1D5F33D8C(v15);

        sub_1D5F33D8C(v10);

        sub_1D5F33D8C(v68);
        sub_1D5F33D8C(v72);
        v46 = v69;
        goto LABEL_136;
      }

      sub_1D5F33D8C(v65);

      sub_1D5F33D8C(v68);
      goto LABEL_98;
    }

    v75 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    if (!v16)
    {
      v17 = *(v15 + 16);

      sub_1D5F33D5C(v8);
      sub_1D5F33D5C(v10);

      sub_1D5F33D5C(v10);
      sub_1D5F33D5C(v15);

      sub_1D5F33D5C(v15);

      sub_1D6212DD8(a1, a2, v17);
      if (v3)
      {
        goto LABEL_124;
      }

LABEL_106:
      sub_1D5F33D8C(v15);
      goto LABEL_107;
    }

    sub_1D5F33D5C(v8);
    sub_1D5F33D5C(v10);

    sub_1D5F33D5C(v10);
    sub_1D5F33D5C(v15);

    sub_1D5F33D5C(v15);

    FormatColor.bind(binder:context:)(a1, a2);
    if (v3)
    {
      break;
    }

    sub_1D5F33D8C(v15);
LABEL_107:
    v14 = v75;
LABEL_108:

    sub_1D623A7D4(a1, a2, v14);
    if (v3)
    {
      sub_1D5F33D8C(v15);

LABEL_116:
      sub_1D5F33D8C(v10);

LABEL_117:

LABEL_118:
      v43 = v10;
      goto LABEL_119;
    }

    sub_1D5F33D8C(v15);

LABEL_110:
    sub_1D5F33D8C(v10);
    v5 = a2;
LABEL_111:

    sub_1D623A7D4(a1, v5, v11);
    if (v3)
    {
      sub_1D5F33D8C(v10);

      swift_bridgeObjectRelease_n();
      goto LABEL_120;
    }

    sub_1D5F33D8C(v10);

    sub_1D5F33D8C(v8);
LABEL_5:
    if (!--v4)
    {
      return;
    }
  }

  sub_1D5F33D8C(v15);

  sub_1D5F33D8C(v10);

  sub_1D5F33D8C(v15);
  v43 = v10;
LABEL_119:
  sub_1D5F33D8C(v43);

LABEL_120:
  sub_1D5F33D8C(v8);
}

void sub_1D623C2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v7 = a3 + 48;
    while (1)
    {
      swift_retain_n();

      FormatAsyncImageContent.bind(binder:context:)(a1, a2);
      if (v3)
      {
        break;
      }

      v7 += 24;

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_1D623C390(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a3 + 56;
    while (1)
    {
      v8 = *(v7 - 24);
      v9 = *(v7 - 16);
      v10 = *(v7 - 8);
      sub_1D5D03180(v8, v9, v10);
      swift_retain_n();
      a4(v6, a2);
      if (v4)
      {
        break;
      }

      v7 += 32;
      sub_1D5D07BA8(v8, v9, v10);

      if (!--v5)
      {
        return result;
      }
    }

    sub_1D5D07BA8(v8, v9, v10);
  }

  return result;
}

void sub_1D623C484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a2;
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CF4A48(0, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v26 = &v23 - v12;
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v15 = (v5 + 16);
    v27 = *(v11 + 72);
    v16 = v26;
    v23 = v15;
    do
    {
      sub_1D62B7198(v14, v16, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
      (*v15)(v8, v16 + *(v28 + 36), v4);
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v17 = v8;
        v18 = v4;
        v19 = *(&v30 + 1);
        v20 = v31;
        __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
        v21 = v32;
        v22 = v19;
        v16 = v26;
        (*(v20 + 8))(v24, v25, v22, v20);
        sub_1D62B7204(v16, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
        __swift_destroy_boxed_opaque_existential_1(&v29);
        if (v21)
        {
          return;
        }

        v32 = 0;
        v4 = v18;
        v8 = v17;
        v15 = v23;
      }

      else
      {
        sub_1D62B7204(v16, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
        v29 = 0u;
        v30 = 0u;
        v31 = 0;
        sub_1D5BFB774(&v29, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      v14 += v27;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1D623C788(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = result;
  v4 = *(a3 + 16);
  if (v4)
  {
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    v6 = (a3 + 48);
    do
    {
      v14 = *v6;

      if (swift_dynamicCast())
      {
        v7 = *(&v12 + 1);
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v8 + 8))(v9, a2, v7, v8);

        result = __swift_destroy_boxed_opaque_existential_1(&v11);
        if (v3)
        {
          return result;
        }
      }

      else
      {

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        result = sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      v6 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D623C8CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = result;
  v4 = *(a3 + 16);
  if (v4)
  {
    sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    v6 = (a3 + 48);
    do
    {
      v14 = *v6;

      if (swift_dynamicCast())
      {
        v7 = *(&v12 + 1);
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v8 + 8))(v9, a2, v7, v8);

        result = __swift_destroy_boxed_opaque_existential_1(&v11);
        if (v3)
        {
          return result;
        }
      }

      else
      {

        v13 = 0;
        v11 = 0u;
        v12 = 0u;
        result = sub_1D5BFB774(&v11, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      v6 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1D623CA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a2;
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CF4AE4(0);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v28 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v15 = (v5 + 16);
    v16 = *(v11 + 72);
    v17 = v28;
    v25 = v16;
    do
    {
      sub_1D62B50EC(v14, v17, sub_1D5CF4AE4);
      (*v15)(v8, v17 + *(v29 + 36), v4);
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if (swift_dynamicCast())
      {
        v18 = v8;
        v19 = v4;
        v20 = *(&v31 + 1);
        v21 = v32;
        __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
        v22 = v33;
        v23 = v20;
        v17 = v28;
        (*(v21 + 8))(v26, v27, v23, v21);
        sub_1D62B51D0(v17, sub_1D5CF4AE4);
        __swift_destroy_boxed_opaque_existential_1(&v30);
        if (v22)
        {
          return;
        }

        v33 = 0;
        v4 = v19;
        v8 = v18;
        v16 = v25;
      }

      else
      {
        sub_1D62B51D0(v17, sub_1D5CF4AE4);
        v30 = 0u;
        v31 = 0u;
        v32 = 0;
        sub_1D5BFB774(&v30, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      }

      v14 += v16;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1D623CCEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    v6 = a3 + 56;
    while (1)
    {
      v7 = *(v6 - 24);
      v8 = *(v6 - 16);
      v9 = *(v6 - 8);
      sub_1D5D03180(v7, v8, v9);
      swift_retain_n();
      FormatImage.bind(binder:context:)(v5, a2);
      if (v3)
      {
        break;
      }

      v6 += 32;
      sub_1D5D07BA8(v7, v8, v9);

      if (!--v4)
      {
        return result;
      }
    }

    sub_1D5D07BA8(v7, v8, v9);
  }

  return result;
}

uint64_t sub_1D623CDD8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 32); ; i += 528)
    {
      memcpy(__dst, i, sizeof(__dst));
      memcpy(__src, i, sizeof(__src));
      sub_1D5CFDDA0(__dst, v8);
      FormatTextNodeStyle.Selector.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      memcpy(v8, __src, sizeof(v8));
      result = sub_1D5CFF4CC(v8);
      if (!--v4)
      {
        return result;
      }
    }

    memcpy(v8, __src, sizeof(v8));
    return sub_1D5CFF4CC(v8);
  }

  return result;
}

void sub_1D623CEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = a3 + 64; ; i += 40)
    {
      v7 = *(i - 8);

      swift_retain_n();

      FormatTextContent.bind(binder:context:)(a1, a2);
      if (v3)
      {
        break;
      }

      if (v7)
      {
        FormatTextNodeStyle.bind(binder:context:)(a1, a2);
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_1D623CFF4(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v8 = result;
    v9 = a3 + 48;
    while (1)
    {
      swift_retain_n();

      a4(v8, a2);
      if (v4)
      {
        break;
      }

      v9 += 24;

      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D623D0C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a3 + 48); ; i += 5)
    {
      v8 = *i;
      v9 = i[2];
      v19 = i[1];
      v20 = v9;
      v21 = i[3];
      v10 = *i;
      v17 = *(i - 1);
      v18 = v10;
      v14 = v8;
      v15 = v19;
      v16[0] = i[2];
      *(v16 + 15) = *(i + 47);
      sub_1D5CF5D60(&v17, &v11);
      sub_1D5CF5DBC(&v18, &v11);
      FormatOptionsNodeStatementValue.bind(binder:context:)(v6, a2);
      if (v3)
      {
        break;
      }

      sub_1D5CF5E18(&v17);
      v11 = v14;
      v12 = v15;
      v13[0] = v16[0];
      *(v13 + 15) = *(v16 + 15);
      result = sub_1D5CF603C(&v11);
      if (!--v4)
      {
        return result;
      }
    }

    sub_1D5CF5E18(&v17);
    v11 = v14;
    v12 = v15;
    v13[0] = v16[0];
    *(v13 + 15) = *(v16 + 15);
    return sub_1D5CF603C(&v11);
  }

  return result;
}

double FormatVisibility.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  if (*v2 >> 62 == 1)
  {
    v3 = *v2 & 0x3FFFFFFFFFFFFFFFLL;
    v4 = *(v3 + 0x10);
    v5 = *(v3 + 0x18);
    sub_1D5EB1500(*(v3 + 16));

    sub_1D624919C(a1, a2, v4, v5);
    sub_1D5EB15C4(v4);
  }

  return result;
}

void FormatAdjustment.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  switch((*v2 >> 59) & 0x1E | (*v2 >> 2) & 1)
  {
    case 1uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0x19uLL:
      return;
    case 2uLL:
      v15 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);

      sub_1D620B270(a1, a2, v16);
      if (!v3)
      {
        sub_1D620B270(a1, a2, v17);
      }

      goto LABEL_17;
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
      v7 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D620B270(a1, a2, v7);
      goto LABEL_18;
    case 9uLL:
      v9 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D620B270(a1, a2, v9);
      goto LABEL_18;
    case 0xEuLL:
    case 0xFuLL:
    case 0x16uLL:

      FormatTextNodeStyle.bind(binder:context:)(a1, a2);

      return;
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:

      FormatTextNodeStyle.bind(binder:context:)(a1, a2);

      goto LABEL_18;
    case 0x14uLL:
    case 0x15uLL:
      v8 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D62B41FC(a2, v8);
      goto LABEL_18;
    case 0x17uLL:
      v14 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D623D89C(a1, a2, v14);
      goto LABEL_17;
    case 0x18uLL:

      FormatGeometryAdjustment.bind(binder:context:)(a1, a2);

      goto LABEL_18;
    default:
      v10 = *(v4 + 16);
      v11 = *(v4 + 24);
      v12 = *(v4 + 32);
      v13 = *(v4 + 40);

      sub_1D620B270(a1, a2, v10);
      if (!v3)
      {
        sub_1D620B270(a1, a2, v11);
        sub_1D620B270(a1, a2, v12);
        sub_1D620B270(a1, a2, v13);
      }

LABEL_17:

LABEL_18:

      return;
  }
}

uint64_t FormatEquation.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = type metadata accessor for FormatEquationToken(0, *(a3 + 16), *(a3 + 24), a4);
  return Array<A>.bind(binder:context:)(a1, a2, v7, v8, &protocol witness table for FormatEquationToken<A>);
}

void sub_1D623D6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v15 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v15, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v9 + 8);
  v11 = a3 + 40;
  v12 = *(a3 + 16) + 1;
  do
  {
    if (!--v12)
    {
      break;
    }

    v14 = *(v11 - 8);
    v17 = v14;
    swift_retain_n();

    sub_1D71C3968(a1, v16, v8);
    if (v3)
    {

      return;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v17 = v14;

      FormatExpression.bind(binder:context:)(a1, v16);
    }

    v11 += 16;
    v13 = sub_1D725BC5C();

    (*v10)(v8, v15);
  }

  while ((v13 & 1) == 0);
}

void sub_1D623D89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a2;
  v18 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v18, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v12 = (v11 + 8);

  v17[1] = a3;
  v13 = a3 + 40;
  v14 = v10 + 1;
  while (1)
  {
    if (!--v14)
    {
LABEL_7:

      return;
    }

    v16 = *(v13 - 8);
    v20 = v16;
    swift_retain_n();

    sub_1D71C3968(a1, v19, v9);
    if (v4)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v20 = v16;

      FormatExpression.bind(binder:context:)(a1, v19);
    }

    v13 += 16;
    v15 = sub_1D725BC5C();

    (*v12)(v9, v18);
    if (v15)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1D623DAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v8 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v5, v6);
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v10 = *(&v14 + 1);
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
    (*(v11 + 8))(a1, a2, v10, v11);
    return __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    return sub_1D5BFB774(&v13, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

void FormatExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *v2 >> 60;
  if (v7 <= 7)
  {
    if (v7 <= 3)
    {
      if ((v7 - 2) >= 2 && v7 != 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFFFFLL;
        v10 = *(v9 + 48);
        if ((v10 & 0x80000000) == 0 && (v10 & 1) == 0)
        {
          v11 = *(v9 + 16);
          v12 = *(v9 + 24);
          v14 = *(v9 + 40);
          v13 = *(v9 + 32);

          sub_1D5C58190(v13, v14, 0);
          FormatOptionValue.bind(binder:context:)(a1, a2);
          sub_1D60576D0(v11, v12, v13, v14, v10);
        }
      }

      return;
    }

    if ((v7 - 5) < 2)
    {
      return;
    }

    if (v7 == 4)
    {
      v17 = (v6 & 0xFFFFFFFFFFFFFFFLL);
      v18 = v17[5];
      v34[3] = v17[4];
      v34[4] = v18;
      v35[0] = v17[6];
      *(v35 + 11) = *(v17 + 107);
      v19 = v17[2];
      v34[0] = v17[1];
      v34[1] = v19;
      v34[2] = v17[3];
      v20 = v17[6];
      v32[11] = v17[5];
      v33[0] = v20;
      *(v33 + 11) = *(v17 + 107);
      v21 = v17[2];
      v32[7] = v17[1];
      v32[8] = v21;
      v22 = v17[4];
      v32[9] = v17[3];
      v32[10] = v22;
      sub_1D62B48E4(v34, v32);
      FormatBindingExpression.bind(binder:context:)(a1, a2);
      sub_1D62B4940(v34);
      return;
    }

    *&v34[0] = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();
    FormatExpression.bind(binder:context:)(a1, a2);
    goto LABEL_27;
  }

  if (v7 <= 10)
  {
    v15 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v7 == 8)
    {
      v29 = *(v15 + 24);
      *&v34[0] = *(v15 + 16);

      swift_retain_n();
      FormatExpression.bind(binder:context:)(a1, a2);
      if (!v3)
      {

        *&v34[0] = v29;

        FormatExpression.bind(binder:context:)(a1, a2);

        goto LABEL_27;
      }
    }

    else
    {
      if (v7 != 9)
      {
        v30 = *(v15 + 16);
        v31 = *(v15 + 24);
        *&v34[0] = v30;
        WORD4(v34[0]) = v31;
        FormatBoolBinding.bind(binder:context:)(a1, a2);
        return;
      }

      v16 = *(v15 + 24);
      *&v34[0] = *(v15 + 16);

      swift_retain_n();
      FormatExpression.bind(binder:context:)(a1, a2);
      if (!v3)
      {

        *&v34[0] = v16;

        FormatExpression.bind(binder:context:)(a1, a2);

        goto LABEL_27;
      }
    }

LABEL_27:

    return;
  }

  if ((v7 - 13) >= 2 && v7 != 11)
  {
    v24 = v6 & 0xFFFFFFFFFFFFFFFLL;
    v25 = *(v24 + 32);
    v27 = *(v24 + 40);
    v26 = *(v24 + 48);
    v28 = *(v24 + 56);

    sub_1D6057D14(v25, v27, v26, v28);
    sub_1D6057D14(v25, v27, v26, v28);
    sub_1D620B270(a1, a2, v25);
    if (v28 >> 6 >= 2 && !v3)
    {
      FormatTextNodeStyle.bind(binder:context:)(a1, a2);
    }

    sub_1D6057D74(v25, v27, v26, v28);
    sub_1D6057D74(v25, v27, v26, v28);
  }
}

void FormatAnimationNodeAnimation.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2 >> 62;
  if (!v6)
  {

    FormatAnimationNodeBasicAnimation.bind(binder:context:)(a1, a2);
    goto LABEL_5;
  }

  if (v6 == 1)
  {

    FormatAnimationNodeSpringAnimation.bind(binder:context:)(a1, a2);
LABEL_5:

    return;
  }

  v7 = *((*v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v8 = *(v7 + 16);

  sub_1D621397C(a1, a2, v8);
  if (v3 || (v9 = *(v7 + 104), v10 = *(v7 + 136), v31 = *(v7 + 120), v32[0] = v10, *(v32 + 9) = *(v7 + 145), v11 = *(v7 + 40), v12 = *(v7 + 72), v27 = *(v7 + 56), v28 = v12, v29 = *(v7 + 88), v30 = v9, v25 = *(v7 + 24), v26 = v11, memmove(__dst, (v7 + 24), 0x89uLL), sub_1D60486AC(__dst) == 1))
  {
  }

  else
  {
    v21 = __dst[6];
    v22[0] = v34[0];
    *(v22 + 9) = *(v34 + 9);
    v17 = __dst[2];
    v18 = __dst[3];
    v19 = __dst[4];
    v20 = __dst[5];
    v15 = __dst[0];
    v16 = __dst[1];
    v23[6] = v31;
    v24[0] = v32[0];
    *(v24 + 9) = *(v32 + 9);
    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v23[5] = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_1D62B4994(v23, v13);
    FormatMediaTiming.bind(binder:context:)(a1, a2);

    v13[6] = v21;
    v14[0] = v22[0];
    *(v14 + 9) = *(v22 + 9);
    v13[2] = v17;
    v13[3] = v18;
    v13[4] = v19;
    v13[5] = v20;
    v13[0] = v15;
    v13[1] = v16;
    sub_1D62B49F0(v13);
  }
}

void FormatAnimationNodeBasicAnimation.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  if (*(v2 + 64) != 4)
  {
    if (v7)
    {

      sub_1D620B270(a1, a2, v7);
      if (v3)
      {
        goto LABEL_7;
      }
    }

    if (v6)
    {

      sub_1D620B270(a1, a2, v6);
      if (v3)
      {
        goto LABEL_7;
      }
    }

    if (!v8)
    {
      goto LABEL_16;
    }

    sub_1D620B270(a1, a2, v8);
    if (!v3)
    {

      goto LABEL_16;
    }

LABEL_7:

    return;
  }

  v10 = *(v2 + 40);
  v9 = *(v2 + 48);
  v11 = *(v2 + 56);
  if (v7)
  {

    sub_1D620B270(a1, a2, v7);
    if (v3)
    {
      v12 = v7;
      v13 = v6;
LABEL_36:
      sub_1D5CDE22C(v12, v13);
      return;
    }

    v60 = v11;
    sub_1D620B270(a1, a2, v6);
    sub_1D5CDE22C(v7, v6);
  }

  if (v8)
  {

    sub_1D620B270(a1, a2, v8);
    if (v3)
    {
      v12 = v8;
      v13 = v10;
      goto LABEL_36;
    }

    sub_1D620B270(a1, a2, v10);
    sub_1D5CDE22C(v8, v10);
  }

  if (v9)
  {

    sub_1D620B270(a1, a2, v9);
    if (v3)
    {
      v12 = v9;
      v13 = v11;
      goto LABEL_36;
    }

    sub_1D620B270(a1, a2, v11);
    sub_1D5CDE22C(v9, v11);
  }

LABEL_16:
  v14 = *(v2 + 88);
  if (v14 != 255)
  {
    v15 = *(v2 + 80);
    *&v52 = *(v2 + 72);
    *(&v52 + 1) = v15;
    LOBYTE(v53) = v14 & 1;
    sub_1D6189668(v52, v15, v14);
    sub_1D60ECF10(a2);
    if (v3)
    {
LABEL_18:
      sub_1D5D2F2C8(v52, *(&v52 + 1), v53);
      return;
    }

    sub_1D5D2F2C8(v52, *(&v52 + 1), v53);
  }

  v16 = *(v2 + 112);
  if (v16 != 255)
  {
    v17 = *(v2 + 104);
    *&v52 = *(v2 + 96);
    *(&v52 + 1) = v17;
    LOBYTE(v53) = v16 & 1;
    sub_1D6189668(v52, v17, v16);
    sub_1D60ECF10(a2);
    if (v3)
    {
      goto LABEL_18;
    }

    sub_1D5D2F2C8(v52, *(&v52 + 1), v53);
  }

  v18 = *(v2 + 200);
  v19 = *(v2 + 232);
  v50 = *(v2 + 216);
  v51[0] = v19;
  *(v51 + 9) = *(v2 + 241);
  v20 = *(v2 + 136);
  v21 = *(v2 + 168);
  v46 = *(v2 + 152);
  v47 = v21;
  v48 = *(v2 + 184);
  v49 = v18;
  v44 = *(v2 + 120);
  v45 = v20;
  v22 = *(v2 + 200);
  v23 = *(v2 + 232);
  v58 = *(v2 + 216);
  v59[0] = v23;
  *(v59 + 9) = *(v2 + 241);
  v24 = *(v2 + 136);
  v25 = *(v2 + 168);
  v54 = *(v2 + 152);
  v55 = v25;
  v56 = *(v2 + 184);
  v57 = v22;
  v52 = *(v2 + 120);
  v53 = v24;
  if (sub_1D60486AC(&v52) != 1)
  {
    v40 = v58;
    v41[0] = v59[0];
    *(v41 + 9) = *(v59 + 9);
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v39 = v57;
    v34 = v52;
    v35 = v53;
    v42[6] = v50;
    v43[0] = v51[0];
    *(v43 + 9) = *(v51 + 9);
    v42[2] = v46;
    v42[3] = v47;
    v42[4] = v48;
    v42[5] = v49;
    v42[0] = v44;
    v42[1] = v45;
    sub_1D62B4994(v42, &v26);
    FormatMediaTiming.bind(binder:context:)(a1, a2);
    if (v3)
    {
      v32 = v40;
      v33[0] = v41[0];
      *(v33 + 9) = *(v41 + 9);
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v26 = v34;
      v27 = v35;
      sub_1D62B49F0(&v26);
    }

    else
    {
      v32 = v40;
      v33[0] = v41[0];
      *(v33 + 9) = *(v41 + 9);
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v26 = v34;
      v27 = v35;
      sub_1D62B49F0(&v26);
    }
  }
}

void FormatAnimationNodeSpringAnimation.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  v10 = *(v2 + 48);
  v9 = *(v2 + 56);
  v11 = *(v2 + 64);
  if (v11 > 5)
  {
    if (*(v2 + 64) > 8u)
    {
      if (v11 == 9)
      {

        sub_1D623F728(v67, a2, v5, v6, v8);
        v12 = a2;
        v13 = v3;
        if (v3)
        {
          sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 9u);
          return;
        }
      }

      else if (v11 == 10)
      {

        sub_1D623F728(v67, a2, v5, v6, v8);
        v12 = a2;
        v13 = v3;
        if (v3)
        {
          sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 0xAu);
          return;
        }
      }

      else
      {

        sub_1D623F728(v67, a2, v5, v6, v8);
        v12 = a2;
        v13 = v3;
        if (v3)
        {
          sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 0xBu);
          return;
        }
      }
    }

    else if (v11 == 6)
    {

      sub_1D623F728(v67, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 6u);
        return;
      }
    }

    else if (v11 == 7)
    {

      sub_1D623F728(v67, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 7u);
        return;
      }
    }

    else
    {

      sub_1D623F728(v67, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 8u);
        return;
      }
    }

    goto LABEL_36;
  }

  if (*(v2 + 64) > 2u)
  {
    if (v11 == 3)
    {

      sub_1D623F728(v67, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 3u);
        return;
      }
    }

    else
    {
      if (v11 == 4)
      {
        v61 = *(v2 + 16);
        v62 = v6;
        v63 = v8;
        v64 = v7;
        v65 = v10;
        v66 = v9;
        sub_1D5D615EC(v5, v6);
        sub_1D5D615EC(v8, v7);
        sub_1D5D615EC(v10, v9);
        v32 = a2;
        sub_1D623F7F4(v67, a2);
        v13 = v3;
        if (v3)
        {
          sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 4u);
          return;
        }

        goto LABEL_37;
      }

      sub_1D623F728(v67, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 5u);
        return;
      }
    }

LABEL_36:
    v32 = v12;
LABEL_37:
    sub_1D62B4A44(v5, v6, v8, v7, v10, v9, v11);
    goto LABEL_38;
  }

  if (*(v2 + 64))
  {
    if (v11 == 1)
    {

      sub_1D623F728(v67, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 1u);
        return;
      }
    }

    else
    {

      sub_1D623F728(v67, a2, v5, v6, v8);
      v12 = a2;
      v13 = v3;
      if (v3)
      {
        sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 2u);
        return;
      }
    }

    goto LABEL_36;
  }

  sub_1D623F728(v67, a2, v5, v6, v8);
  v14 = a2;
  v13 = v3;
  sub_1D62B4A44(v5, v6, v8, v7, v10, v9, 0);
  if (v3)
  {
    return;
  }

  v32 = v14;
LABEL_38:
  v15 = *(v2 + 88);
  if (v15 != 255)
  {
    v16 = *(v2 + 80);
    *&v53 = *(v2 + 72);
    *(&v53 + 1) = v16;
    LOBYTE(v54) = v15 & 1;
    sub_1D6189668(v53, v16, v15);
    sub_1D60ECF10(v32);
    if (v13)
    {
LABEL_43:
      sub_1D5D2F2C8(v53, *(&v53 + 1), v54);
      return;
    }

    sub_1D5D2F2C8(v53, *(&v53 + 1), v54);
  }

  v17 = *(v2 + 112);
  if (v17 != 255)
  {
    v18 = *(v2 + 104);
    *&v53 = *(v2 + 96);
    *(&v53 + 1) = v18;
    LOBYTE(v54) = v17 & 1;
    sub_1D6189668(v53, v18, v17);
    sub_1D60ECF10(v32);
    if (v13)
    {
      goto LABEL_43;
    }

    sub_1D5D2F2C8(v53, *(&v53 + 1), v54);
  }

  v19 = *(v2 + 120);
  v20 = v67;
  if (!v19 || (sub_1D620B270(v67, v32, v19), !v13))
  {
    v21 = *(v2 + 128);
    if (!v21 || (sub_1D620B270(v67, v32, v21), !v13))
    {
      v22 = *(v2 + 136);
      if (!v22 || (sub_1D620B270(v67, v32, v22), !v13))
      {
        v23 = *(v2 + 144);
        if (!v23 || (sub_1D620B270(v67, v32, v23), !v13))
        {
          v24 = *(v2 + 232);
          v25 = *(v2 + 264);
          v51 = *(v2 + 248);
          v52[0] = v25;
          *(v52 + 9) = *(v2 + 273);
          v26 = *(v2 + 168);
          v27 = *(v2 + 200);
          v47 = *(v2 + 184);
          v48 = v27;
          v49 = *(v2 + 216);
          v50 = v24;
          v45 = *(v2 + 152);
          v46 = v26;
          v28 = *(v2 + 232);
          v29 = *(v2 + 264);
          v59 = *(v2 + 248);
          v60[0] = v29;
          *(v60 + 9) = *(v2 + 273);
          v30 = *(v2 + 168);
          v31 = *(v2 + 200);
          v55 = *(v2 + 184);
          v56 = v31;
          v57 = *(v2 + 216);
          v58 = v28;
          v53 = *(v2 + 152);
          v54 = v30;
          if (sub_1D60486AC(&v53) != 1)
          {
            v41 = v59;
            v42[0] = v60[0];
            *(v42 + 9) = *(v60 + 9);
            v37 = v55;
            v38 = v56;
            v39 = v57;
            v40 = v58;
            v35 = v53;
            v36 = v54;
            v43[6] = v51;
            v44[0] = v52[0];
            *(v44 + 9) = *(v52 + 9);
            v43[2] = v47;
            v43[3] = v48;
            v43[4] = v49;
            v43[5] = v50;
            v43[0] = v45;
            v43[1] = v46;
            sub_1D62B4994(v43, v33);
            FormatMediaTiming.bind(binder:context:)(v20, v32);
            v33[6] = v41;
            v34[0] = v42[0];
            *(v34 + 9) = *(v42 + 9);
            v33[2] = v37;
            v33[3] = v38;
            v33[4] = v39;
            v33[5] = v40;
            v33[0] = v35;
            v33[1] = v36;
            sub_1D62B49F0(v33);
          }
        }
      }
    }
  }
}

void FormatAnimationNodeGroupAnimation.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  sub_1D621397C(a1, a2, *(v2 + 16));
  if (!v3)
  {
    v6 = *(v2 + 104);
    v7 = *(v2 + 136);
    v32 = *(v2 + 120);
    v33[0] = v7;
    *(v33 + 9) = *(v2 + 145);
    v8 = *(v2 + 40);
    v9 = *(v2 + 72);
    v28 = *(v2 + 56);
    v29 = v9;
    v30 = *(v2 + 88);
    v31 = v6;
    v26 = *(v2 + 24);
    v27 = v8;
    v10 = *(v2 + 104);
    v11 = *(v2 + 136);
    v40 = *(v2 + 120);
    v41[0] = v11;
    *(v41 + 9) = *(v2 + 145);
    v12 = *(v2 + 40);
    v13 = *(v2 + 72);
    v36 = *(v2 + 56);
    v37 = v13;
    v38 = *(v2 + 88);
    v39 = v10;
    v34 = *(v2 + 24);
    v35 = v12;
    if (sub_1D60486AC(&v34) != 1)
    {
      v22 = v40;
      v23[0] = v41[0];
      *(v23 + 9) = *(v41 + 9);
      v18 = v36;
      v19 = v37;
      v20 = v38;
      v21 = v39;
      v16 = v34;
      v17 = v35;
      v24[6] = v32;
      v25[0] = v33[0];
      *(v25 + 9) = *(v33 + 9);
      v24[2] = v28;
      v24[3] = v29;
      v24[4] = v30;
      v24[5] = v31;
      v24[0] = v26;
      v24[1] = v27;
      sub_1D62B4994(v24, v14);
      FormatMediaTiming.bind(binder:context:)(a1, a2);
      v14[6] = v22;
      v15[0] = v23[0];
      *(v15 + 9) = *(v23 + 9);
      v14[2] = v18;
      v14[3] = v19;
      v14[4] = v20;
      v14[5] = v21;
      v14[0] = v16;
      v14[1] = v17;
      sub_1D62B49F0(v14);
    }
  }
}

void FormatAnimationNodeKeyPath.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  if (*(v2 + 48) != 4)
  {
    if (v7)
    {

      sub_1D620B270(a1, a2, v7);
      if (v3)
      {
        goto LABEL_13;
      }
    }

    if (!v6)
    {
LABEL_11:
      if (!v8)
      {
        return;
      }

      sub_1D620B270(a1, a2, v8);
      goto LABEL_13;
    }

    sub_1D620B270(a1, a2, v6);
    if (!v3)
    {

      goto LABEL_11;
    }

LABEL_13:

    return;
  }

  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = *(v2 + 40);
  if (v7)
  {

    sub_1D620B270(a1, a2, v7);
    if (v3)
    {
      v12 = v7;
      v13 = v6;
LABEL_24:
      sub_1D5CDE22C(v12, v13);
      return;
    }

    sub_1D620B270(a1, a2, v6);
    sub_1D5CDE22C(v7, v6);
  }

  if (v8)
  {

    sub_1D620B270(a1, a2, v8);
    if (v3)
    {
      v12 = v8;
      v13 = v10;
      goto LABEL_24;
    }

    sub_1D620B270(a1, a2, v10);
    sub_1D5CDE22C(v8, v10);
  }

  if (v9)
  {

    sub_1D620B270(a1, a2, v9);
    if (!v3)
    {
      sub_1D620B270(a1, a2, v11);
    }

    v12 = v9;
    v13 = v11;
    goto LABEL_24;
  }
}

void FormatMediaTiming.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v11 = *(v2 + 40);
  v10 = *(v2 + 48);
  v21 = *(v2 + 64);
  v22 = *(v2 + 56);
  v12 = *(v2 + 72);
  v23 = *(v2 + 80);
  v15 = *(v2 + 88);
  v16 = *(v2 + 96);
  v20 = *(v2 + 112);
  v19 = *(v2 + 120);
  v17 = *(v2 + 104);
  v18 = *(v2 + 128);
  v13 = *(v2 + 136);
  if (v6)
  {
    sub_1D620B270(a1, a2, v6);
    if (v3)
    {
      return;
    }
  }

  if (v7)
  {
    sub_1D620B270(a1, a2, v7);
    if (v3)
    {
      return;
    }
  }

  if (v8)
  {
    sub_1D620B270(a1, a2, v8);
    if (v3)
    {
      return;
    }
  }

  if (v9)
  {
    sub_1D620B270(a1, a2, v9);
    if (v3)
    {
      return;
    }
  }

  if (v11)
  {
    sub_1D620B270(a1, a2, v11);
    if (v3)
    {
      return;
    }
  }

  if (v10)
  {
    sub_1D620B270(a1, a2, v10);
    if (v3)
    {
      return;
    }
  }

  v14 = v3;
  if (v12 != 255)
  {
    sub_1D6189668(v22, v21, v12);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v22, v21, v12 & 1);
    if (v3)
    {
      return;
    }

    v14 = 0;
  }

  if (v20 == 255 || (v20 & 1) == 0)
  {
    if (v13 == 255)
    {
      return;
    }

LABEL_21:
    sub_1D6189668(v19, v18, v13);
    sub_1D60ECF10(a2);
    sub_1D5D2F2C8(v19, v18, v13 & 1);
    return;
  }

  sub_1D618903C(v23, v15, v16, v17, 1);
  sub_1D620B270(a1, a2, v23);
  if (v14)
  {
    sub_1D62B4B50(v23, v15, v16, v17, v20);
    return;
  }

  sub_1D620B270(a1, a2, v15);
  sub_1D620B270(a1, a2, v16);
  sub_1D620B270(a1, a2, v17);
  sub_1D62B4B50(v23, v15, v16, v17, v20);
  if (v13 != 255)
  {
    goto LABEL_21;
  }
}

void sub_1D623F5CC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  sub_1D621397C(a1, a2, *(*v2 + 16));
  if (!v3)
  {
    v7 = *(v6 + 104);
    v8 = *(v6 + 136);
    v29 = *(v6 + 120);
    v30[0] = v8;
    *(v30 + 9) = *(v6 + 145);
    v9 = *(v6 + 40);
    v10 = *(v6 + 72);
    v25 = *(v6 + 56);
    v26 = v10;
    v27 = *(v6 + 88);
    v28 = v7;
    v23 = *(v6 + 24);
    v24 = v9;
    memmove(__dst, (v6 + 24), 0x89uLL);
    if (sub_1D60486AC(__dst) != 1)
    {
      v19 = __dst[6];
      v20[0] = v32[0];
      *(v20 + 9) = *(v32 + 9);
      v15 = __dst[2];
      v16 = __dst[3];
      v17 = __dst[4];
      v18 = __dst[5];
      v13 = __dst[0];
      v14 = __dst[1];
      v21[6] = v29;
      v22[0] = v30[0];
      *(v22 + 9) = *(v30 + 9);
      v21[2] = v25;
      v21[3] = v26;
      v21[4] = v27;
      v21[5] = v28;
      v21[0] = v23;
      v21[1] = v24;
      sub_1D62B4994(v21, v11);
      FormatMediaTiming.bind(binder:context:)(a1, a2);
      v11[6] = v19;
      v12[0] = v20[0];
      *(v12 + 9) = *(v20 + 9);
      v11[2] = v15;
      v11[3] = v16;
      v11[4] = v17;
      v11[5] = v18;
      v11[0] = v13;
      v11[1] = v14;
      sub_1D62B49F0(v11);
    }
  }
}

double sub_1D623F728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3 || (, sub_1D620B270(a1, a2, a3), , !v5))
  {
    if (!a4 || (, sub_1D620B270(a1, a2, a4), , !v5))
    {
      if (a5)
      {

        sub_1D620B270(a1, a2, a5);
      }
    }
  }

  return result;
}

uint64_t sub_1D623F7F4(uint64_t result, uint64_t a2)
{
  v5 = result;
  v6 = *v2;
  if (*v2)
  {
    v7 = v2[1];

    sub_1D620B270(v5, a2, v6);
    if (v3)
    {
LABEL_6:
      v8 = v6;
      v9 = v7;
      return sub_1D5CDE22C(v8, v9);
    }

    sub_1D620B270(v5, a2, v7);
    result = sub_1D5CDE22C(v6, v7);
  }

  v6 = v2[2];
  if (v6)
  {
    v7 = v2[3];

    sub_1D620B270(v5, a2, v6);
    if (v3)
    {
      goto LABEL_6;
    }

    sub_1D620B270(v5, a2, v7);
    result = sub_1D5CDE22C(v6, v7);
  }

  v10 = v2[4];
  if (v10)
  {
    v11 = v2[5];

    sub_1D620B270(v5, a2, v10);
    if (!v3)
    {
      sub_1D620B270(v5, a2, v11);
    }

    v8 = v10;
    v9 = v11;
    return sub_1D5CDE22C(v8, v9);
  }

  return result;
}

uint64_t FormatAnimationNodeKeyPathAnimation.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a1;
  v44 = a3;
  v6 = *(a3 + 16);
  v7 = sub_1D726393C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v42 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v42 - v18;
  v20 = v4;
  v55 = *(v8 + 16);
  v55(&v42 - v18, v4, v7, v17);
  v21 = *(v6 - 8);
  v22 = *(v21 + 48);
  v50 = v21 + 48;
  v51 = v22;
  v23 = v22(v19, 1, v6);
  v45 = v7;
  v46 = a2;
  v48 = v8;
  if (v23 == 1)
  {
    v24 = v49;
    (*(v8 + 8))(v19, v7);
LABEL_7:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    v26 = v20;
    goto LABEL_8;
  }

  v24 = v49;
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v25 = *(&v53 + 1);
  v26 = v20;
  if (!*(&v53 + 1))
  {
LABEL_8:
    sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    v28 = v24;
    v30 = v45;
    goto LABEL_9;
  }

  v27 = v54;
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  (*(v27 + 8))(v47, v46, v25, v27);
  v28 = v24;
  result = __swift_destroy_boxed_opaque_existential_1(&v52);
  v30 = v45;
  if (v24)
  {
    return result;
  }

LABEL_9:
  v31 = v44;
  (v55)(v14, v26 + *(v44 + 36), v30);
  v32 = v51(v14, 1, v6);
  v33 = v47;
  if (v32 == 1)
  {
    (*(v48 + 8))(v14, v30);
LABEL_15:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    goto LABEL_16;
  }

  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v34 = *(&v53 + 1);
  if (!*(&v53 + 1))
  {
LABEL_16:
    sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
    goto LABEL_17;
  }

  v49 = v28;
  v35 = v54;
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  v36 = v49;
  (*(v35 + 8))(v33, v46, v34, v35);
  result = __swift_destroy_boxed_opaque_existential_1(&v52);
  if (v36)
  {
    return result;
  }

LABEL_17:
  v37 = v43;
  (v55)(v43, v26 + *(v31 + 40), v30);
  v38 = v51(v37, 1, v6);
  v39 = v46;
  if (v38 == 1)
  {
    (*(v48 + 8))(v37, v30);
LABEL_22:
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    return sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }

  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (!swift_dynamicCast())
  {
    goto LABEL_22;
  }

  v40 = *(&v53 + 1);
  if (*(&v53 + 1))
  {
    v41 = v54;
    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
    (*(v41 + 8))(v47, v39, v40, v41);
    return __swift_destroy_boxed_opaque_existential_1(&v52);
  }

  return sub_1D5BFB774(&v52, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
}

double sub_1D623FE0C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 48) != 4)
  {
    return sub_1D623F728(a1, a2, *v2, *(v2 + 8), *(v2 + 16));
  }

  sub_1D623F7F4(a1, a2);
  return result;
}

void FormatAnimationNodeStyle.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 72);
  if (!v6 || (, sub_1D621397C(a1, a2, v6), , !v3))
  {
    swift_beginAccess();
    v7 = *(v2 + 88);

    sub_1D621D544(a1, a2, v7);
  }
}

void FormatAnimationNodeStyle.Selector.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (v3)
  {
    sub_1D621397C(a1, a2, v3);
  }
}

void sub_1D6240000(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (v3)
  {
    sub_1D621397C(a1, a2, v3);
  }
}

uint64_t sub_1D6240020(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v13 = a4;
  sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  if (swift_dynamicCast())
  {
    v7 = *(&v11 + 1);
    v8 = v12;
    __swift_project_boxed_opaque_existential_1(&v10, *(&v11 + 1));
    (*(v8 + 8))(a1, a2, v7, v8);
    return __swift_destroy_boxed_opaque_existential_1(&v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    return sub_1D5BFB774(&v10, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
  }
}

double sub_1D624011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1 && (a4 & 0xF000000000000007) != 0xF000000000000007)
  {

    FormatTextContent.bind(binder:context:)(a1, a2);
  }

  return result;
}

void FormatAsyncImageContent.bind(binder:context:)(unint64_t a1, uint64_t a2, __n128 a3)
{
  v7 = *v3;
  v8 = *v3 >> 60;
  if (v8 > 4)
  {
    if (v8 <= 6)
    {
      v19 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      if (v8 == 5)
      {

        sub_1D6248794(a1, a2, v19, v20, FormatAsyncImageContent.bind(binder:context:));
      }

      else
      {

        sub_1D6250710(a1, a2, v19, v20, FormatAsyncImageContent.bind(binder:context:));
      }
    }

    else if (v8 == 7)
    {
      *&v54 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      FormatAsyncImageContent.bind(binder:context:)(a1, a2);
      if (v4)
      {
      }

      else
      {

        FormatImageNodeStyle.bind(binder:context:)(a1, a2);
      }
    }

    else if (v8 == 8)
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *&v54 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      FormatAsyncImageContent.bind(binder:context:)(a1, a2);
      if (v4)
      {
      }

      else
      {

        sub_1D623C2C8(a1, a2, v12);
      }
    }
  }

  else if (v8 <= 1)
  {
    v62 = v4;
    if (v8)
    {
      v37 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v38 = *(v37 + 80);
      v57 = *(v37 + 64);
      v58 = v38;
      v59 = *(v37 + 96);
      *&v60 = *(v37 + 112);
      v39 = *(v37 + 32);
      v54 = *(v37 + 16);
      v55 = v39;
      v40 = *(v37 + 64);
      v56 = *(v37 + 48);
      v41 = *(v37 + 80);
      v42 = *(v37 + 96);
      v49 = v40;
      v50 = v41;
      v51 = v42;
      v43 = *(v37 + 32);
      v44 = *(v37 + 48);
      v46 = *(v37 + 16);
      *&v52 = *(v37 + 112);
      v47 = v43;
      v48 = v44;
      sub_1D5D0322C(&v54, v45);
      FormatSymbolImage.bind(binder:context:)(a1, a2);
      sub_1D5D07BBC(&v54);
    }

    else
    {
      v13 = *(v7 + 24);
      v14 = *(v7 + 32);
      v15 = *(v7 + 40);
      v16 = *(v7 + 48);
      v17 = *(v7 + 56);
      *&v54 = *(v7 + 16);
      *(&v54 + 1) = v13;
      *&v55 = v14;
      *(&v55 + 1) = v15;
      *&v56 = v16;
      BYTE8(v56) = v17;
      sub_1D62B4B68(v54, v13, v14, v15, v16, v17, a3);
      FormatImageNodeBinding.bind(binder:context:)(a1, a2);
      sub_1D62B4C5C(v54, v13, v14, v15, v16, v17, v18);
    }
  }

  else if (v8 == 2)
  {
    v22 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v21 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
    if (*((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40) > 1u)
    {
      if (*((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40) != 2)
      {
        return;
      }

      sub_1D5E433E0(*((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30), *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x38), 2u);
      sub_1D620B270(a1, a2, v22);
      if (!v4)
      {
        sub_1D620B270(a1, a2, v21);
      }

      v25 = v22;
      v26 = v21;
      v27 = 2;
    }

    else
    {
      v23 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v24 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      if (*((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x40))
      {
        sub_1D5E433E0(v23, v24, 1u);
        sub_1D620B270(a1, a2, v22);
        v25 = v22;
        v26 = v21;
        v27 = 1;
      }

      else
      {
        sub_1D5E433E0(v23, v24, 0);
        sub_1D620B270(a1, a2, v22);
        v25 = v22;
        v26 = v21;
        v27 = 0;
      }
    }

    sub_1D5E4342C(v25, v26, v27);
  }

  else if (v8 == 3)
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v11 = *((v7 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

    sub_1D6209FB8(a1, a2, v9, v10, v11, FormatAsyncImageContent.bind(binder:context:), FormatAsyncImageContent.bind(binder:context:));
  }

  else
  {
    v28 = v7 & 0xFFFFFFFFFFFFFFFLL;
    v29 = *(v28 + 96);
    v58 = *(v28 + 80);
    v59 = v29;
    v60 = *(v28 + 112);
    v61 = *(v28 + 128);
    v30 = *(v28 + 32);
    v54 = *(v28 + 16);
    v55 = v30;
    v31 = *(v28 + 64);
    v56 = *(v28 + 48);
    v57 = v31;
    v32 = *(v28 + 80);
    v33 = *(v28 + 112);
    v51 = *(v28 + 96);
    v52 = v33;
    v34 = *(v28 + 32);
    v46 = *(v28 + 16);
    v35 = *(v28 + 48);
    v36 = *(v28 + 64);
    v47 = v34;
    v48 = v35;
    v53 = *(v28 + 128);
    v49 = v36;
    v50 = v32;
    sub_1D5D093E8(&v54, v45);
    FormatRemoteImage.bind(binder:context:)(a1, a2);
    sub_1D5D09904(&v54);
  }
}

void FormatSymbolImage.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v18 = *(v2 + 40);
  v19 = *(v2 + 32);
  v5 = *(v2 + 48);
  v20 = *v2;
  v6 = *(v2 + 72);
  v7 = *(v2 + 80);
  v8 = *(v2 + 88);
  v9 = *(v2 + 96);
  v21 = *(v2 + 8);
  v22 = *(v2 + 16);
  v23 = *(v2 + 24);
  sub_1D5FB995C(*v2, v21, v22, v23);
  sub_1D61E0984(a2);
  if (v3)
  {
    sub_1D5FBA070(v20, v21, v22, v23);
    return;
  }

  v17 = v8;
  sub_1D5FBA070(v20, v21, v22, v23);
  v10 = v5 >> 8;
  if (v5 >> 8 > 0xFE)
  {
    v11 = a2;
    goto LABEL_16;
  }

  v11 = a2;
  if (v5 >> 8 > 2)
  {
    v13 = v18;
    v12 = v19;
  }

  else
  {
    if (!v10)
    {
      sub_1D5F586A4(v19, v18, v5, 0);
      FormatSymbolConfig.Font.bind(binder:context:)(a1, a2);
      sub_1D5FBACE0(v19, v18, v5);
      goto LABEL_16;
    }

    v12 = v19;
    if (v10 != 1)
    {
      v13 = v18;
      sub_1D5F586A4(v19, v18, v5, 2);
      v14 = a1;
      v15 = a2;
      v16 = v19;
      goto LABEL_14;
    }

    v13 = v18;
    if (v18)
    {
      sub_1D5F586A4(v19, v18, v5, 1);
      v14 = a1;
      v15 = a2;
      v16 = v18;
LABEL_14:
      sub_1D620B270(v14, v15, v16);
    }
  }

  sub_1D5FBACE0(v12, v13, v5);
LABEL_16:
  sub_1D5C75A4C(v6, v7, v17);
  sub_1D60ECF10(v11);
  sub_1D5D2F2C8(v6, v7, v17);
  if ((~v9 & 0xF000000000000007) != 0)
  {
    sub_1D5F33D5C(v9);
    FormatSymbolImageColor.bind(binder:context:)(a1, v11);
    sub_1D5F33D8C(v9);
  }
}

uint64_t FormatBundleImage.bind(binder:context:)(uint64_t result, uint64_t a2)
{
  v5 = result;
  v7 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (*(v2 + 48) > 1u)
  {
    if (*(v2 + 48) != 2)
    {
      return result;
    }

    sub_1D5E433E0(*(v2 + 32), *(v2 + 40), 2u);
    sub_1D620B270(v5, a2, v7);
    if (v3)
    {
      return sub_1D5E4342C(v7, v6, 2u);
    }

    sub_1D620B270(v5, a2, v6);
    v10 = v7;
    v11 = v6;
    v12 = 2;
  }

  else
  {
    v8 = *(v2 + 32);
    v9 = *(v2 + 40);
    if (*(v2 + 48))
    {
      sub_1D5E433E0(v8, v9, 1u);
      sub_1D620B270(v5, a2, v7);
      v10 = v7;
      v11 = v6;
      v12 = 1;
    }

    else
    {
      sub_1D5E433E0(v8, v9, 0);
      sub_1D620B270(v5, a2, v7);
      v10 = v7;
      v11 = v6;
      v12 = 0;
    }
  }

  return sub_1D5E4342C(v10, v11, v12);
}

void FormatRemoteImage.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v20 = v2[3];
  v21 = v2[4];
  v19 = v2[5];
  v22 = v2[7];
  v17 = v2[8];
  v18 = v2[6];
  v23 = v2[9];
  v7 = v2[10];
  v6 = v2[11];
  v8 = v2[12];
  v9 = v2[13];
  v10 = v2[14];

  FormatURL.bind(binder:context:)(a1, a2);
  if (v3)
  {
    goto LABEL_3;
  }

  v16 = v7;
  v15 = v9;

  FormatURL.bind(binder:context:)(a1, a2);

  FormatURL.bind(binder:context:)(a1, a2);
  v11 = a2;

  if ((~v20 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, a2);
    v12 = v6;
    v14 = v22;
    v13 = v23;

    if ((~v21 & 0xF000000000000007) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = v6;
  v14 = v22;
  v13 = v23;
  if ((~v21 & 0xF000000000000007) != 0)
  {
LABEL_9:

    FormatURL.bind(binder:context:)(a1, v11);
  }

LABEL_10:
  if ((~v19 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v18 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v14 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v17 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v13 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v16 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v12 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v8 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v15 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
  }

  if ((~v10 & 0xF000000000000007) != 0)
  {

    FormatURL.bind(binder:context:)(a1, v11);
LABEL_3:
  }
}

uint64_t sub_1D6240FD0(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v224 = a2;
  v225 = a1;
  v220 = type metadata accessor for FormatOption(0);
  v5 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220, v6);
  v208 = &v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v207 = &v198 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v198 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v210 = &v198 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v209 = &v198 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v213 = (&v198 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v217 = &v198 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v216 = &v198 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v198 - v32;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v214 = &v198 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v211 = &v198 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v215 = &v198 - v42;
  MEMORY[0x1EEE9AC00](v43, v44);
  v212 = &v198 - v45;
  MEMORY[0x1EEE9AC00](v46, v47);
  v219 = &v198 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v218 = &v198 - v51;
  v52 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v52, v53);
  v221 = v2;
  v56 = *v2;
  v57 = *(*v2 + 16);
  if (!v57)
  {
LABEL_133:
    v166 = v221;
    v167 = *(v221 + 3);
    v237[0] = *(v221 + 1);
    v237[1] = v167;
    v238[0] = *(v221 + 5);
    *(v238 + 15) = *(v221 + 55);
    sub_1D62B6438(v237, &v234, qword_1EDF2EEF8, type metadata accessor for FormatSwitchValue.DefaultValue);
    FormatOptionsNodeStatementValue.bind(binder:context:)(v225, v224);
    v168 = *(v166 + 3);
    v234 = *(v166 + 1);
    v235 = v168;
    v236[0] = *(v166 + 5);
    *(v236 + 15) = *(v166 + 55);
    v169 = &v234;
    return sub_1D5CF603C(v169);
  }

  v203 = v14;
  v241 = &v198 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = (v56 + 32);
  v205 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v206 = (v5 + 56);
  v222 = v52;
  v223 = (v54 + 8);
  v204 = v33;
  while (1)
  {
    v60 = v58[1];
    v59 = v58[2];
    v61 = *v58;
    *(v236 + 11) = *(v58 + 43);
    v236[0] = v59;
    v234 = v61;
    v235 = v60;
    v62 = v61;
    v227 = v61;
    sub_1D62B6438(&v234, v231, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);

    sub_1D71C3968(v225, v224, v241);
    if (v4)
    {

      return sub_1D62B7904(&v234);
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      break;
    }

LABEL_46:
    v113 = v241;
    v114 = sub_1D725BC5C();
    sub_1D62B7904(&v234);
    result = (*v223)(v113, v52);
    if (v114)
    {
      return result;
    }

    v58 += 4;
    if (!--v57)
    {
      goto LABEL_133;
    }
  }

  v230 = v62;

  v63 = v224;
  FormatExpression.bind(binder:context:)(v225, v224);

  v64 = *(&v234 + 1);
  v66 = *(&v235 + 1);
  v65 = v235;
  v67 = *(&v236[0] + 1);
  v68 = BYTE8(v236[1]);
  v69 = ((4 * BYTE10(v236[1])) | (WORD4(v236[1]) >> 11) & 3);
  if (v69 > 3)
  {
    if (((4 * BYTE10(v236[1])) | (WORD4(v236[1]) >> 11) & 3) <= 5u)
    {
      if (v69 == 4)
      {
        *v231 = *(&v234 + 1);
        *&v231[8] = v235;
        *&v231[24] = v236[0];
        v232 = *&v236[1];
        v233 = WORD4(v236[1]) & 0xE7FF;
        sub_1D62B78B4(*(&v234 + 1), v235, *(&v235 + 1), *&v236[0], *(&v236[0] + 1), *&v236[1], WORD4(v236[1]) & 0xE7FF);
        FormatOptionsNodeStatementBinding.bind(binder:context:)(v225, v63);
      }

      else
      {

        sub_1D620F94C(v225, v63, v67);
      }

      v4 = 0;
      goto LABEL_30;
    }

    if (v69 != 6)
    {
      if (v69 != 7)
      {
        v93 = *(*(&v234 + 1) + 32);
        v239[0] = *(*(&v234 + 1) + 16);
        v239[1] = v93;
        v240[0] = *(*(&v234 + 1) + 48);
        *(v240 + 11) = *(*(&v234 + 1) + 59);
        sub_1D5CF5DBC(&v234 + 8, v231);
        sub_1D62B6438(v239, v231, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
        sub_1D6240FD0(v225, v63);
        sub_1D62B6514(v239);
        goto LABEL_30;
      }

      if ((*(&v234 + 1) >> 62) > 1)
      {
        if (*(&v234 + 1) >> 62 == 3)
        {
          v70 = v63;
          v72 = *((*(&v234 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v227 = *((*(&v234 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v71 = v227;
          sub_1D5CF5DBC(&v234 + 8, v231);
          v202 = v71;
          swift_retain_n();

          v73 = v225;
          FormatURL.bind(binder:context:)(v225, v70);

          sub_1D620FAB4(v73, v70, v72);
          swift_bridgeObjectRelease_n();

          goto LABEL_30;
        }

        v110 = *((*(&v234 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v111 = *((*(&v234 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v112 = *((*(&v234 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v227 = *((*(&v234 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v109 = v227;
        *&v228 = v110;
        *(&v228 + 1) = v111;
        v229 = v112;
        sub_1D5CF5DBC(&v234 + 8, v231);
        sub_1D5D27950(v109, v110, v111, v112);
        sub_1D6089844(v224);
        v89 = v109;
        v90 = v110;
        v91 = v111;
        v92 = v112;
LABEL_44:
        sub_1D5D28C84(v89, v90, v91, v92);
        sub_1D5CF603C(&v234 + 8);
      }

      goto LABEL_45;
    }

    v84 = *(&v234 + 1) >> 62;
    if ((*(&v234 + 1) >> 62) <= 1)
    {
      if (!v84)
      {
        v86 = *(*(&v234 + 1) + 24);
        v87 = *(*(&v234 + 1) + 32);
        v88 = *(*(&v234 + 1) + 40);
        v227 = *(*(&v234 + 1) + 16);
        v85 = v227;
        *&v228 = v86;
        *(&v228 + 1) = v87;
        v229 = v88;
        sub_1D5CF5DBC(&v234 + 8, v231);
        sub_1D5D27950(v85, v86, v87, v88);
        sub_1D6D9914C(v224);
        v89 = v85;
        v90 = v86;
        v91 = v87;
        v92 = v88;
        goto LABEL_44;
      }

      v105 = *((*(&v234 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v104 = *((*(&v234 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5CF5DBC(&v234 + 8, v231);

      sub_1D5F33D5C(v104);
      sub_1D620B270(v225, v224, v105);
      v106 = v104 >> 62;
      if ((v104 >> 62) <= 1)
      {
        if (v106)
        {
          v129 = *((v104 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v130 = v224;
          sub_1D620B270(v225, v224, *((v104 & 0x3FFFFFFFFFFFFFFFLL) + 0x10));
          *v231 = v129;
          v202 = v129;
          sub_1D5F33D5C(v129);
          FormatDateTime.bind(binder:context:)(v225, v130);
          sub_1D5F33D8C(v202);
        }

        else
        {
          v107 = *(v104 + 32);
          v108 = *(v104 + 40);
          *v231 = *(v104 + 16);
          *&v231[16] = v107;
          v231[24] = v108;
          sub_1D6D9914C(v224);
        }

LABEL_73:

        sub_1D5F33D8C(v104);
        goto LABEL_30;
      }

      if (v106 == 2)
      {
        goto LABEL_73;
      }

      if (v104 == 0xC000000000000000)
      {
        sub_1D5F33D8C(0xC000000000000000);
        goto LABEL_30;
      }

      v52 = v222;
      if (v104 == 0xC000000000000008)
      {
        sub_1D5F33D8C(0xC000000000000008);
      }

      else
      {
        sub_1D5F33D8C(0xC000000000000010);
      }

      goto LABEL_33;
    }

    if (v84 == 2)
    {
      goto LABEL_45;
    }

    goto LABEL_32;
  }

  if (((4 * BYTE10(v236[1])) | (WORD4(v236[1]) >> 11) & 3) <= 1u)
  {
    if ((4 * BYTE10(v236[1])) | (WORD4(v236[1]) >> 11) & 3)
    {

      sub_1D620B270(v225, v63, v64);
    }

    else
    {
      sub_1D5CF5DBC(&v234 + 8, v231);
      sub_1D62B41FC(v63, v64);
    }

    goto LABEL_30;
  }

  if (v69 != 2 || !(WORD4(v236[1]) >> 14))
  {
    goto LABEL_45;
  }

  if (WORD4(v236[1]) >> 14 == 1)
  {
    v227 = *(&v234 + 1);
    v228 = v235;
    v202 = v235;
    v226 = 5;
    sub_1D5CF5DBC(&v234 + 8, v231);
    sub_1D5CF5DBC(&v234 + 8, v231);
    v201 = sub_1D703E0C8(&v227, &v226);
    v74 = v204;
    v75 = v206;
    v76 = *(v224 + v205);
    v77 = *(v76 + 16);
    swift_beginAccess();
    if (*(*(v77 + 16) + 16))
    {
      sub_1D5B69D90(v64, v202);
      if (v78)
      {
        swift_endAccess();
        v79 = v217;
        sub_1D5D25108(v217);
        v80 = v79;
        v81 = v216;
        sub_1D5D5E33C(v80, v216, type metadata accessor for FormatOption);
        v82 = v81;
        v75 = v206;
        v83 = v219;
        sub_1D5D5E33C(v82, v219, type metadata accessor for FormatOption);
        goto LABEL_52;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    if (*(*(v76 + 24) + 16))
    {
      sub_1D5B69D90(v64, v202);
      if (v116)
      {
        swift_endAccess();
        v83 = v219;
        sub_1D5D25108(v219);
LABEL_52:
        v117 = *v75;
        v118 = v220;
        v202 = v117;
        v117(v83, 0, 1, v220);
        sub_1D5D5E33C(v83, v74, type metadata accessor for FormatOption);
        *v231 = *(v74 + 16);
        v119 = v201;

        FormatOptionValue.type.getter(v120, &v227);
        v121 = v119;
        if (sub_1D6183C84(v227, v119))
        {
          swift_bridgeObjectRelease_n();
          v122 = v218;
          sub_1D5D5E33C(v74, v218, type metadata accessor for FormatOption);
          (v202)(v122, 0, 1, v118);
          goto LABEL_59;
        }

        v225 = type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v170 = v74;
        v172 = v171;
        v173 = *v170;
        v174 = v170[1];
        *v231 = v170[2];

        FormatOptionValue.type.getter(v175, &v227);
        v176 = v227;
        *v172 = v173;
        *(v172 + 8) = v174;
        *(v172 + 16) = v176;
        *(v172 + 24) = v121;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D62B7904(&v234);
        (*v223)(v241, v222);
        v177 = v170;
LABEL_140:
        sub_1D62B51D0(v177, type metadata accessor for FormatOption);
        goto LABEL_138;
      }
    }

    swift_endAccess();
    v123 = *v75;
    v124 = v219;
    v125 = v220;
    v200 = v123;
    v123(v219, 1, 1, v220);

    sub_1D5B6EF64(v124, &qword_1EDF337F0, type metadata accessor for FormatOption);
    if ((*(v224 + 48) & 1) == 0)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v178 = v202;
      *v179 = v64;
      v179[1] = v178;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_137;
    }

    v122 = v218;
    v200(v218, 1, 1, v125);
LABEL_59:
    v126 = v122;
LABEL_60:
    sub_1D5B6EF64(v126, &qword_1EDF337F0, type metadata accessor for FormatOption);
LABEL_30:
    sub_1D5CF603C(&v234 + 8);
LABEL_45:
    v52 = v222;
    goto LABEL_46;
  }

  v94 = (WORD4(v236[1]) >> 7) & 0x4E | (WORD4(v236[1]) >> 3) & 1;
  if (v94 > 7)
  {
    if (v94 > 11)
    {
      if (v94 == 12)
      {
        v141 = v235;
        if ((v235 & 0x80) != 0)
        {
          LOBYTE(v227) = v235 & 0x3F;
          sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          if (swift_dynamicCast())
          {
            v142 = *&v231[24];
            v143 = *&v231[32];
            __swift_project_boxed_opaque_existential_1(v231, *&v231[24]);
            (*(v143 + 8))(v225, v224, v142, v143);
            __swift_destroy_boxed_opaque_existential_1(v231);
          }

          else
          {
            memset(v231, 0, sizeof(v231));
            sub_1D5BFB774(v231, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          }
        }

        v52 = v222;
        if (v141 >> 6 && v141 >> 6 != 1)
        {
          LOBYTE(v227) = v141 & 0x3F;
          sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          if (swift_dynamicCast())
          {
            goto LABEL_112;
          }

          memset(v231, 0, sizeof(v231));
          sub_1D5BFB774(v231, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        }

        goto LABEL_33;
      }

      if (v94 != 13)
      {
        goto LABEL_74;
      }
    }

    else if ((v94 - 9) >= 3)
    {
      sub_1D5E1DA6C(*(&v234 + 1), v235, *(&v235 + 1), *&v236[0], *(&v236[0] + 1), *&v236[1], WORD4(v236[1]) & 0xE7FF);
LABEL_32:
      v52 = v222;
LABEL_33:
      sub_1D5CF603C(&v234 + 8);
      goto LABEL_46;
    }
  }

  else
  {
    if (v94 > 2)
    {
      if ((v94 - 5) < 3)
      {
        goto LABEL_86;
      }

      v227 = *(&v234 + 1);
      v228 = v235;
      v226 = 5;
      v201 = *(&v235 + 1);
      v95 = v235;
      sub_1D5CF5DBC(&v234 + 8, v231);
      sub_1D5CF5DBC(&v234 + 8, v231);
      v202 = v95;

      v96 = sub_1D703E0C8(&v227, &v226);
      v199 = *(v224 + v205);
      v200 = v96;
      v97 = *(v199 + 2);
      swift_beginAccess();
      if (*(*(v97 + 16) + 16) && (sub_1D5B69D90(v64, v202), (v98 & 1) != 0))
      {
        swift_endAccess();
        v99 = v210;
        sub_1D5D25108(v210);
        v100 = v99;
        v101 = v209;
        sub_1D5D5E33C(v100, v209, type metadata accessor for FormatOption);
        v102 = v101;
        v103 = v215;
        sub_1D5D5E33C(v102, v215, type metadata accessor for FormatOption);
      }

      else
      {
        swift_endAccess();
        v131 = v199;
        swift_beginAccess();
        if (!*(v131[3] + 16) || (sub_1D5B69D90(v64, v202), (v132 & 1) == 0))
        {
          swift_endAccess();
          v144 = v220;
          v199 = *v206;
          v199(v215, 1, 1, v220);

          sub_1D5B6EF64(v215, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if (*(v224 + 48))
          {

            v138 = v212;
            v139 = 1;
            v140 = v144;
            v137 = v212;
            goto LABEL_85;
          }

          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          v187 = v202;
          *v188 = v64;
          v188[1] = v187;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D62B7904(&v234);
          (*v223)(v241, v222);
LABEL_144:
          v169 = &v234 + 8;
          return sub_1D5CF603C(v169);
        }

        swift_endAccess();
        v103 = v215;
        sub_1D5D25108(v215);
      }

      v199 = *v206;
      v199(v103, 0, 1, v220);
      v133 = v213;
      sub_1D5D5E33C(v103, v213, type metadata accessor for FormatOption);
      *v231 = v133[2];
      v134 = v200;

      FormatOptionValue.type.getter(v135, &v227);
      v136 = v134;
      if (sub_1D6183C84(v227, v134))
      {

        swift_bridgeObjectRelease_n();
        v137 = v212;
        sub_1D5D5E33C(v213, v212, type metadata accessor for FormatOption);
        v138 = v137;
        v139 = 0;
        v140 = v220;
LABEL_85:
        v199(v138, v139, 1, v140);
        sub_1D5B6EF64(v137, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v66 = v201;
        v65 = v202;
        goto LABEL_86;
      }

      type metadata accessor for FormatDerivedDataError(0);
      sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      v181 = v180;
      v182 = v213;
      v183 = *v213;
      v184 = v213[1];
      *v231 = v213[2];

      FormatOptionValue.type.getter(v185, &v227);
      v186 = v227;
      *v181 = v183;
      *(v181 + 8) = v184;
      *(v181 + 16) = v186;
      *(v181 + 24) = v136;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D62B7904(&v234);
      (*v223)(v241, v222);
      sub_1D62B51D0(v182, type metadata accessor for FormatOption);
      goto LABEL_144;
    }

    if (!v94)
    {
LABEL_74:
      sub_1D5E1DA6C(*(&v234 + 1), v235, *(&v235 + 1), *&v236[0], *(&v236[0] + 1), *&v236[1], WORD4(v236[1]) & 0xE7FF);
      goto LABEL_30;
    }

    if (v94 != 1)
    {
      v127 = WORD4(v235);
      v202 = v235;
      sub_1D5E1DA6C(*(&v234 + 1), v235, *(&v235 + 1), *&v236[0], *(&v236[0] + 1), *&v236[1], WORD4(v236[1]) & 0xE7FF);
      v128 = v68 >> 4;
      if (((1 << v128) & 0x1EF7) == 0)
      {
        if (v128 == 3)
        {
          LOWORD(v66) = v127;
          v65 = v202;
          if (HIBYTE(v127) >= 4u)
          {
            goto LABEL_122;
          }

          if (v127 <= 0xFDu)
          {
            v227 = v64;
            *&v228 = v202;
            BYTE8(v228) = v127 & 1;
            sub_1D5CF5DBC(&v234 + 8, v231);
            sub_1D5CF5DBC(&v234 + 8, v231);
            sub_1D60ECF10(v224);
            sub_1D5D2F2C8(v227, v228, SBYTE8(v228));
            sub_1D5CF603C(&v234 + 8);
LABEL_122:
            v65 = v202;
            LOWORD(v66) = v127;
          }

LABEL_123:
          if (BYTE1(v66) < 4u && v66 <= 0xFDu)
          {
            v227 = v64;
            *&v228 = v65;
            BYTE8(v228) = v66 & 1;
            sub_1D5CF5DBC(&v234 + 8, v231);
            sub_1D5CF5DBC(&v234 + 8, v231);
            sub_1D60ECF10(v224);
            sub_1D5D2F2C8(v227, v228, SBYTE8(v228));
            sub_1D5CF603C(&v234 + 8);
          }

          goto LABEL_30;
        }

        LOBYTE(v65) = v202;
        if ((v202 & 0x80) != 0)
        {
          LOBYTE(v227) = v202 & 0x3F;
          sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          if (swift_dynamicCast())
          {
            v164 = *&v231[24];
            v165 = *&v231[32];
            __swift_project_boxed_opaque_existential_1(v231, *&v231[24]);
            (*(v165 + 8))(v225, v224, v164, v165);
            __swift_destroy_boxed_opaque_existential_1(v231);
          }

          else
          {
            memset(v231, 0, sizeof(v231));
            sub_1D5BFB774(v231, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          }

          LOBYTE(v65) = v202;
        }

LABEL_129:
        if (!(v65 >> 6))
        {
          goto LABEL_30;
        }

        v52 = v222;
        if (v65 >> 6 != 1)
        {
          LOBYTE(v227) = v65 & 0x3F;
          sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
          if (swift_dynamicCast())
          {
LABEL_112:
            v162 = *&v231[24];
            v163 = *&v231[32];
            __swift_project_boxed_opaque_existential_1(v231, *&v231[24]);
            (*(v163 + 8))(v225, v224, v162, v163);
            __swift_destroy_boxed_opaque_existential_1(v231);
            goto LABEL_30;
          }

          memset(v231, 0, sizeof(v231));
          sub_1D5BFB774(v231, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        }

        goto LABEL_33;
      }

      v65 = v202;
      LOWORD(v66) = v127;
LABEL_97:
      switch(v128)
      {
        case 3:
          goto LABEL_123;
        case 8:
          goto LABEL_129;
        default:
          goto LABEL_30;
      }
    }
  }

LABEL_86:
  if (v94 > 7)
  {
    v52 = v222;
    goto LABEL_33;
  }

  if (v94 > 4)
  {
    if (v94 == 5)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  if ((v94 - 3) >= 2)
  {
    if (v94 == 1)
    {
      goto LABEL_30;
    }

    v128 = v68 >> 4;
    goto LABEL_97;
  }

  v227 = v64;
  *&v228 = v65;
  *(&v228 + 1) = v66;
  v226 = 5;
  v145 = v65;
  v146 = v66;
  sub_1D5CF5DBC(&v234 + 8, v231);
  v202 = v145;

  v201 = v146;

  v200 = sub_1D703E0C8(&v227, &v226);
  v147 = *(v224 + v205);
  v148 = *(v147 + 16);
  swift_beginAccess();
  if (*(*(v148 + 16) + 16))
  {
    sub_1D5B69D90(v64, v202);
    if (v149)
    {
      swift_endAccess();
      v150 = v208;
      sub_1D5D25108(v208);
      v151 = v150;
      v152 = v207;
      sub_1D5D5E33C(v151, v207, type metadata accessor for FormatOption);
      v153 = v214;
      sub_1D5D5E33C(v152, v214, type metadata accessor for FormatOption);
      goto LABEL_101;
    }
  }

  swift_endAccess();
  swift_beginAccess();
  if (*(*(v147 + 24) + 16))
  {
    sub_1D5B69D90(v64, v202);
    if (v154)
    {
      swift_endAccess();
      v153 = v214;
      sub_1D5D25108(v214);
LABEL_101:
      v155 = v220;
      v199 = *v206;
      v199(v153, 0, 1, v220);
      v156 = v203;
      sub_1D5D5E33C(v153, v203, type metadata accessor for FormatOption);
      *v231 = v156[2];
      v157 = v200;

      FormatOptionValue.type.getter(v158, &v227);
      if ((sub_1D6183C84(v227, v157) & 1) == 0)
      {
        type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v190 = v189;
        v191 = v203;
        v192 = *v203;
        v193 = v203[1];
        *v231 = v203[2];

        FormatOptionValue.type.getter(v194, &v227);
        v195 = v227;
        *v190 = v192;
        *(v190 + 8) = v193;
        *(v190 + 16) = v195;
        *(v190 + 24) = v157;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D62B7904(&v234);
        (*v223)(v241, v222);
        v177 = v191;
        goto LABEL_140;
      }

      swift_bridgeObjectRelease_n();
      v159 = v211;
      sub_1D5D5E33C(v203, v211, type metadata accessor for FormatOption);
      v199(v159, 0, 1, v155);
LABEL_107:
      v126 = v159;
      goto LABEL_60;
    }
  }

  swift_endAccess();
  v160 = v220;
  v199 = *v206;
  v199(v214, 1, 1, v220);

  sub_1D5B6EF64(v214, &qword_1EDF337F0, type metadata accessor for FormatOption);
  if (*(v224 + 48))
  {

    v161 = v211;
    v199(v211, 1, 1, v160);
    v159 = v161;
    goto LABEL_107;
  }

  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  v196 = v202;
  *v197 = v64;
  v197[1] = v196;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_137:
  sub_1D62B7904(&v234);
  (*v223)(v241, v222);
LABEL_138:
  v169 = &v234 + 8;
  return sub_1D5CF603C(v169);
}

void sub_1D6242FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a4;
  v43 = a1;
  v38 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v38, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v37 = (v12 + 8);
  v13 = (a3 + 40);
  v14 = v11 + 1;
  v33 = a2;
  while (--v14)
  {
    v17 = *(v13 - 1);
    v16 = *v13;
    v39 = v17;
    v18 = v16 & 0x7FFFFFFFFFFFFFFFLL;

    swift_retain_n();
    sub_1D71C3968(v43, a2, v10);
    if (v5)
    {

      goto LABEL_13;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v39 = v17;

      FormatExpression.bind(binder:context:)(v43, a2);

      if (v16 < 0)
      {
        v22 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v21 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
        v23 = *((v16 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
        v24 = *(v18 + 40);
        v39 = v22;
        v40 = v21;
        v41 = v23;
        v42 = v24;

        v35 = v21;
        v36 = v22;
        v34 = v24;
        sub_1D62B6240(v22, v21, v23, v24);
        a2 = v33;
        sub_1D6C09C54(v33);
        sub_1D62B628C(v36, v35, v23, v34);
      }

      else
      {
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);

        sub_1D6242FE8(v43, a2, v19, v20);
      }
    }

    v13 += 2;
    v15 = sub_1D725BC5C();

    (*v37)(v10, v38);
    if (v15)
    {
      return;
    }
  }

  if ((v32 & 0x8000000000000000) == 0)
  {
    v25 = *(v32 + 16);
    v26 = *(v32 + 24);

    sub_1D6242FE8(v43, a2, v25, v26);

    return;
  }

  v28 = *((v32 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v29 = *((v32 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v30 = *((v32 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v39 = *((v32 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v27 = v39;
  v40 = v28;
  v41 = v29;
  v42 = v30;

  sub_1D62B6240(v27, v28, v29, v30);
  sub_1D6C09C54(a2);
  sub_1D62B628C(v27, v28, v29, v30);
LABEL_13:
}

double sub_1D62433FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v316 = a2;
  v303 = a4;
  v302 = type metadata accessor for FormatOption(0);
  v6 = *(v302 - 8);
  MEMORY[0x1EEE9AC00](v302, v7);
  v295 = (&v288 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v301 = &v288 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v300 = &v288 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v297 = &v288 - v17;
  v18 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v305 = &v288 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v307 = &v288 - v23;
  v24 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v288 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a3 + 16);
  v29 = (v6 + 48);
  v30 = (v6 + 56);
  v32 = v31;
  v296 = v30;
  v34 = (v33 + 8);
  v298 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v299 = v29;
  v35 = (a3 + 40);
  v315 = v28 + 1;
  v308 = v31;
  v311 = v27;
  v312 = (v33 + 8);
  v310 = a1;
  while (1)
  {
    if (!--v315)
    {
      v273 = v317;
      sub_1D625C2EC(a1, v316, v303);
      v317 = v273;
      return result;
    }

    v314 = v35;
    v37 = *(v35 - 1);
    v36 = *v35;
    *&v318 = v37;
    v38 = v36 & 0x1FFFFFFFFFFFFFFFLL;

    swift_retain_n();
    v39 = v317;
    sub_1D71C3968(a1, v316, v27);
    v317 = v39;
    if (v39)
    {

      goto LABEL_267;
    }

    if (sub_1D725BC6C())
    {
      goto LABEL_5;
    }

    *&v318 = v37;

    v43 = v317;
    FormatExpression.bind(binder:context:)(a1, v316);
    v317 = v43;
    if (v43)
    {

      (*v34)(v27, v32);
      goto LABEL_266;
    }

    v44 = v36 >> 61;
    if ((v36 >> 61) <= 1)
    {
      v313 = v37;
      if (!v44)
      {
        v57 = *(v36 + 32);
        v324 = *(v36 + 16);
        v325 = v57;
        v58 = *(v36 + 64);
        *v326 = *(v36 + 48);
        *&v326[16] = v58;
        v59 = v324;
        v60 = *(&v325 + 1);
        if ((BYTE8(v325) & 4) != 0)
        {
          v80 = v32;
          *&v327 = v324;
          sub_1D5CFBAA8(&v324, &v318);
          v81 = v317;
          FormatTextContent.bind(binder:context:)(a1, v316);
          v66 = v307;
          v317 = v81;
          if (v81)
          {
            goto LABEL_245;
          }

          v63 = a1;
        }

        else
        {
          v61 = v312;
          v62 = v325;
          v309 = *(&v324 + 1);
          sub_1D5CFBAA8(&v324, &v318);
          v63 = a1;
          v64 = v317;
          v65 = sub_1D6245970(a1, v316, v59, v309, v62, v60);
          v317 = v64;
          if (v64)
          {
            (*v61)(v311, v308, v65);
            goto LABEL_265;
          }

          v66 = v307;
        }

        v82 = *&v326[16];
        if ((*&v326[16] & 0x2000000000000000) != 0)
        {
          v90 = v312;
          if (*v326 >> 62)
          {
            if (*v326 >> 62 == 1)
            {
              v89 = v63;
              v91 = *((*v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
              v80 = v308;
              if (v91 != 255)
              {
                v309 = v38;
                v93 = *((*v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
                v92 = *((*v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
                *&v318 = v93;
                *(&v318 + 1) = v92;
                LOBYTE(v319) = v91;
                sub_1D5E433E0(v93, v92, v91);
                v94 = v317;
                FormatBundleImageSize.bind(binder:context:)(v63, v316);
                v317 = v94;
                if (v94)
                {
                  sub_1D5E43440(v93, v92, v91);
                  (*v312)(v311, v80);
                  goto LABEL_265;
                }

                sub_1D5E43440(v93, v92, v91);
              }

              v88 = v316;
              v66 = v307;
              goto LABEL_115;
            }

            v112 = *((*v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v111 = *((*v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v113 = v311;
            if (v112 >> 62)
            {
              v309 = v38;
              if (v112 >> 62 == 1)
              {
                v114 = v112 & 0x3FFFFFFFFFFFFFFFLL;
                v115 = *(v114 + 64);
                if (v115 == 255)
                {
                  v88 = v316;
                  v119 = v63;
                }

                else
                {
                  v116 = v111;
                  v118 = *(v114 + 56);
                  *&v318 = *(v114 + 48);
                  v117 = v318;
                  *(&v318 + 1) = v118;
                  LOBYTE(v319) = v115;

                  sub_1D5E433CC(v117, v118, v115);
                  v119 = v63;
                  v120 = v317;
                  FormatBundleImageSize.bind(binder:context:)(v63, v316);
                  v317 = v120;
                  if (v120)
                  {
                    sub_1D5E43440(v117, v118, v115);
                    goto LABEL_264;
                  }

                  sub_1D5E43440(v117, v118, v115);

                  v90 = v312;
                  v113 = v311;
                  v88 = v316;
                  v111 = v116;
                }
              }

              else
              {
                v306 = v111;
                v132 = v112 & 0x3FFFFFFFFFFFFFFFLL;
                v133 = *(v132 + 24);
                *&v318 = *(v132 + 16);

                v135 = v316;
                v134 = v317;
                FormatSyncImageContent.bind(binder:context:)(v63, v316);
                v317 = v134;
                if (v134)
                {

LABEL_264:
                  (*v312)(v311, v308);

                  goto LABEL_265;
                }

                v119 = v63;
                v136 = v317;
                sub_1D622B230(v63, v135, v133);
                v317 = v136;
                if (v136)
                {
                  goto LABEL_264;
                }

                v88 = v135;

                v90 = v312;
                v113 = v311;
                v111 = v306;
              }
            }

            else
            {
              v306 = *((*v326 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
              v129 = *(v112 + 80);
              v320[1] = *(v112 + 64);
              v321 = v129;
              v322 = *(v112 + 96);
              v323 = *(v112 + 112);
              v130 = *(v112 + 32);
              v318 = *(v112 + 16);
              v319 = v130;
              v320[0] = *(v112 + 48);

              v131 = v317;
              FormatSymbolImage.bind(binder:context:)(v63, v316);
              v317 = v131;
              if (v131)
              {
                (*v90)(v113, v308);

                goto LABEL_265;
              }

              v88 = v316;
              v119 = v63;
              v111 = v306;
            }

            v149 = v119;
            v150 = v317;
            sub_1D622B230(v119, v88, v111);
            v66 = v307;
            v317 = v150;
            if (v150)
            {
              (*v90)(v113, v308);
              goto LABEL_265;
            }

            v89 = v149;
          }

          else
          {
            v108 = *(*v326 + 80);
            v320[1] = *(*v326 + 64);
            v321 = v108;
            v322 = *(*v326 + 96);
            v323 = *(*v326 + 112);
            v109 = *(*v326 + 32);
            v318 = *(*v326 + 16);
            v319 = v109;
            v320[0] = *(*v326 + 48);
            v110 = v317;
            FormatSymbolImage.bind(binder:context:)(v63, v316);
            v317 = v110;
            v89 = v63;
            v88 = v316;
          }
        }

        else
        {
          v83 = *&v326[8];
          v84 = *(*v326 + 32);
          v318 = *(*v326 + 16);
          v319 = v84;
          v320[0] = *(*v326 + 48);
          *(v320 + 15) = *(*v326 + 63);
          v86 = v316;
          v85 = v317;
          FormatCommandBinding.bind(binder:context:)(v63, v316);
          v317 = v85;
          sub_1D6226080(v63, v86, v83);
          v317 = 0;
          *&v318 = v82;

          v87 = v317;
          FormatSyncImageContent.bind(binder:context:)(v63, v86);
          v317 = v87;
          if (v87)
          {

            (*v312)(v311, v308);
            goto LABEL_265;
          }

          v88 = v316;
          v89 = v63;
          v66 = v307;
        }

        v80 = v308;
LABEL_115:
        v151 = *&v326[24] >> 62;
        if ((*&v326[24] >> 62) > 1)
        {
          v27 = v311;
          if (v151 == 2)
          {
            a1 = v89;
            v154 = v317;
            sub_1D6245CC4(v89, v88, *((*&v326[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((*&v326[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
            v317 = v154;
            v32 = v80;
            if (v154)
            {
              goto LABEL_245;
            }

            sub_1D5D08954(&v324);
            goto LABEL_196;
          }

          sub_1D5D08954(&v324);
          a1 = v89;
        }

        else
        {
          v27 = v311;
          if (v151)
          {
            v155 = *((*&v326[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v157 = *(v155 + 16);
            v156 = *(v155 + 24);
            v158 = *(v155 + 32);
            v159 = *(v155 + 40);
            v160 = *(v155 + 64);
            if (*(v155 + 66))
            {
              v161 = 8;
            }

            else
            {
              v161 = 0;
            }

            v162 = v161 & 0xFFFFFFF8 | (v160 >> 11) & 7;
            if (v162 <= 4)
            {
              v163 = v89;
              v32 = v80;
              if (v162 > 1)
              {
                v34 = v312;
                v40 = v314;
                if (v162 == 3)
                {
                  *&v318 = *(v155 + 16);
                  *(&v318 + 1) = v156;
                  LOBYTE(v319) = v158;
                  a1 = v163;
                  v164 = v317;
                  v165.n128_f64[0] = FormatTagBinding.Command.bind(binder:context:)(v163, v316);
LABEL_144:
                  v317 = v164;
                  if (v164)
                  {
                    goto LABEL_276;
                  }

                  goto LABEL_145;
                }

                goto LABEL_140;
              }

              v34 = v312;
              v40 = v314;
              if (v162)
              {
                goto LABEL_140;
              }

              v166 = (v159 >> 3) & 7;
              if (v166 <= 1)
              {
                if (v166)
                {
                  goto LABEL_140;
                }
              }

              else if (v166 != 2 && v166 != 3)
              {
                *&v318 = v157;
                *(&v318 + 1) = v156;
                *&v319 = v158;
                BYTE8(v319) = v159 & 0xC7;
                goto LABEL_143;
              }

              if (v158 > 1u)
              {
                if (v158 != 2 && v157 | v156)
                {
                  a1 = v163;
                  goto LABEL_145;
                }
              }

              else if (v158)
              {
                a1 = v163;
                if ((~v157 & 0xF000000000000007) != 0)
                {
                  *&v318 = v157;
                  v309 = v157;

                  v267 = v317;
                  FormatTextContent.bind(binder:context:)(a1, v316);
                  v317 = v267;
                  if (v267)
                  {

LABEL_276:
                    (*v34)(v27, v32, v165);
LABEL_265:
                    sub_1D5D08954(&v324);
LABEL_266:

LABEL_267:

                    return result;
                  }
                }

                goto LABEL_145;
              }

              goto LABEL_140;
            }

            v163 = v89;
            v32 = v80;
            if (v162 > 6)
            {
              v34 = v312;
              v40 = v314;
              if (v162 == 7)
              {
                *&v318 = *(v155 + 16);
                *(&v318 + 1) = v156;
                *&v319 = v158;
                *(&v319 + 1) = v159;
                v320[0] = *(v155 + 48);
                LOWORD(v320[1]) = v160 & 0xC7FF;
                a1 = v163;
                v164 = v317;
                FormatString.bind(binder:context:)(v163, v316);
                goto LABEL_144;
              }

              a1 = v163;
LABEL_145:
              sub_1D5D08954(&v324);
              goto LABEL_6;
            }

            v34 = v312;
            v40 = v314;
            if (v162 == 5)
            {
LABEL_140:
              a1 = v163;
              goto LABEL_145;
            }

            *&v318 = *(v155 + 16);
            *(&v318 + 1) = v156;
            *&v319 = v158;
            BYTE8(v319) = v159;
LABEL_143:
            a1 = v163;
            v164 = v317;
            v165.n128_f64[0] = FormatSportsEventBinding.Command.bind(binder:context:)(v163, v316);
            goto LABEL_144;
          }

          v152 = swift_projectBox();
          sub_1D62B50EC(v152, v66, type metadata accessor for FormatCommandOpenURL);
          v153 = v317;
          sub_1D5F86DA0(v88);
          v317 = v153;
          if (v153)
          {
            sub_1D62B51D0(v66, type metadata accessor for FormatCommandOpenURL);
LABEL_245:
            (*v312)(v27, v80);
            goto LABEL_265;
          }

          a1 = v89;
          sub_1D62B51D0(v66, type metadata accessor for FormatCommandOpenURL);
          sub_1D5D08954(&v324);
        }

        v34 = v312;
        v32 = v80;
LABEL_5:
        v40 = v314;
        goto LABEL_6;
      }

      v71 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v318 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v319 = v71;
      v72 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v320[0] = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v320[1] = v72;
      v309 = v36 & 0x1FFFFFFFFFFFFFFFLL;
      *&v321 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v73 = v318;
      v74 = *(&v319 + 1);
      v75 = v319;
      if ((~*(&v318 + 1) & 0xF000000000000007) != 0 || (BYTE8(v319) & 7) != 7)
      {
        if ((BYTE8(v319) & 4) == 0)
        {
          sub_1D62B72DC(&v318, &v324);
          sub_1D62B738C(v73, *(&v73 + 1), v75, v74);
          v77 = v316;
          v78 = v317;
          sub_1D6245970(v310, v316, v73, *(&v73 + 1), v75, v74);
          v317 = v78;
          if (v78)
          {
            v274 = sub_1D62B7110(v73, *(&v73 + 1), v75, v74);
            (*v312)(v311, v308, v274);
            goto LABEL_240;
          }

          v76 = v314;
          sub_1D62B7110(v73, *(&v73 + 1), v75, v74);
          goto LABEL_52;
        }

        *&v327 = v318;
        sub_1D62B72DC(&v318, &v324);
        sub_1D62B738C(v73, *(&v73 + 1), v75, v74);
        v95 = v317;
        FormatTextContent.bind(binder:context:)(v310, v316);
        v317 = v95;
        if (v95)
        {
          (*v312)(v311, v308);
          sub_1D62B7110(v73, *(&v73 + 1), v75, v74);
          goto LABEL_240;
        }

        v76 = v314;
        sub_1D62B7110(v73, *(&v73 + 1), v75, v74);
      }

      else
      {
        v76 = v314;
        sub_1D62B72DC(&v318, &v324);
      }

      v77 = v316;
LABEL_52:
      v96 = *&v320[0];
      v97 = *&v320[1];
      v98 = v308;
      if ((~(*&v320[0] & *&v320[1]) & 0x3000000000000007) == 0)
      {
LABEL_58:
        a1 = v310;
        v104 = v317;
        sub_1D6223ECC(v310, v77, v321);
        v317 = v104;
        if (v104)
        {
          (*v312)(v311, v98);
          sub_1D62B7338(&v318);
          goto LABEL_266;
        }

        sub_1D62B7338(&v318);
        v27 = v311;
        v105 = v98;
        v34 = v312;
        v40 = v76;
        v32 = v105;
        goto LABEL_6;
      }

      v99 = *(&v320[0] + 1);
      if ((*&v320[1] & 0x2000000000000000) != 0)
      {
        *&v324 = *&v320[0];
        sub_1D62B6FC0(*&v320[0], *(&v320[0] + 1), *&v320[1]);
        v103 = v317;
        FormatSyncImageContent.bind(binder:context:)(v310, v77);
        v317 = v103;
        if (!v103)
        {
          sub_1D62B7020(v96, v99, v97);
          v77 = v316;
          goto LABEL_58;
        }

        (*v312)(v311, v98);
        sub_1D62B7020(v96, v99, v97);
      }

      else
      {
        sub_1D62B6FC0(*&v320[0], *(&v320[0] + 1), *&v320[1]);
        v100 = v317;
        sub_1D6209F10(v310, v77, v96, v99, v97, v101, v102);
        v317 = v100;
        if (!v100)
        {
          sub_1D62B7020(v96, v99, v97);
          goto LABEL_58;
        }

        v275 = sub_1D62B7020(v96, v99, v97);
        (*v312)(v311, v98, v275);
      }

LABEL_240:
      sub_1D62B7338(&v318);
      goto LABEL_266;
    }

    if (v44 == 2)
    {
      v67 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v68 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v69 = v317;
      v70 = sub_1D62433FC(a1, v316, v67, v68);
      v317 = v69;
      if (v69)
      {
        (*v34)(v27, v32, v70);

        return result;
      }

      goto LABEL_5;
    }

    if (v44 != 3)
    {
      goto LABEL_5;
    }

    v313 = v37;
    v46 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v45 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v309 = v36 & 0x1FFFFFFFFFFFFFFFLL;
    v47 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v48 = *(v46 + 32);
    v324 = *(v46 + 16);
    v325 = v48;
    *v326 = *(v46 + 48);
    *&v326[15] = *(v46 + 63);
    v49 = v48;
    v50 = (*&v326[15] >> 8);
    if ((*&v326[15] & 0x1000000) != 0)
    {
      v51 = 8;
    }

    else
    {
      v51 = 0;
    }

    v52 = v51 & 0xFFFFFFF8 | (v50 >> 11) & 7;
    v306 = v45;
    v304 = v47;
    if (v52 <= 4)
    {
      v53 = v316;
      if (v52 > 1)
      {
        v54 = v305;
        if (v52 == 2)
        {
          goto LABEL_69;
        }

        v55 = v310;
        if (v52 != 3)
        {
          goto LABEL_149;
        }

LABEL_19:
        v56 = v48;
        if (v48 > 1u)
        {
          goto LABEL_74;
        }

        goto LABEL_20;
      }

      v54 = v305;
      if (v52)
      {
LABEL_69:

LABEL_88:
        v79 = v310;
        v27 = v311;
        goto LABEL_150;
      }

      v106 = (DWORD2(v48) >> 3) & 7;
      if (v106 <= 1)
      {
        v55 = v310;
        if (v106)
        {
          goto LABEL_149;
        }

        goto LABEL_19;
      }

      if (v106 == 2 || v106 == 3 || !(BYTE8(v48) >> 6))
      {
        goto LABEL_89;
      }

      if (BYTE8(v48) >> 6 == 1)
      {
        goto LABEL_73;
      }

      v107 = BYTE8(v48) & 7;
      if (v107 <= 1)
      {
        v55 = v310;
        if ((BYTE8(v48) & 7) == 0)
        {
          goto LABEL_149;
        }

        v27 = v311;
        if ((~*(&v324 + 1) & 0xF000000000000007) != 0)
        {
LABEL_110:
          *&v318 = *(&v324 + 1);
          v127 = *(&v324 + 1);
          goto LABEL_93;
        }

        goto LABEL_37;
      }

      goto LABEL_146;
    }

    v53 = v316;
    if (v52 > 6)
    {
      break;
    }

    if (v52 == 5)
    {
      goto LABEL_87;
    }

    v54 = v305;
    if (!(BYTE8(v48) >> 6))
    {
LABEL_89:
      if (v48 > 1u)
      {
        v55 = v310;
        v27 = v311;
      }

      else
      {
        v55 = v310;
        v27 = v311;
        if (v48)
        {
          goto LABEL_91;
        }
      }

LABEL_37:

      v79 = v55;
      goto LABEL_150;
    }

    if (BYTE8(v48) >> 6 == 1)
    {
LABEL_73:
      v56 = v48;
      v55 = v310;
      if (v48 > 1u)
      {
LABEL_74:
        v27 = v311;
        goto LABEL_37;
      }

LABEL_20:
      v27 = v311;
      if (v56)
      {
LABEL_91:
        if ((~v324 & 0xF000000000000007) != 0)
        {
          *&v318 = v324;
          v127 = v324;
LABEL_93:

          sub_1D5CFCFAC(v127);
          v128 = v317;
          FormatTextContent.bind(binder:context:)(v55, v53);
          v317 = v128;
          if (v128)
          {

            (*v312)(v27, v32);

LABEL_269:

            goto LABEL_273;
          }

          v53 = v316;
          v45 = v306;
          v79 = v55;
          goto LABEL_150;
        }
      }

      goto LABEL_37;
    }

    v107 = BYTE8(v48) & 0x3F;
    if (v107 <= 1)
    {
      v55 = v310;
      if ((BYTE8(v48) & 0x3F) == 0)
      {
        goto LABEL_149;
      }

      v27 = v311;
      if ((~*(&v324 + 1) & 0xF000000000000007) != 0)
      {
        goto LABEL_110;
      }

      goto LABEL_37;
    }

LABEL_146:
    v55 = v310;
    if (v107 == 2 || !(*(&v324 + 1) | v48))
    {
LABEL_149:

      v79 = v55;
      v27 = v311;
      goto LABEL_150;
    }

    v27 = v311;
    v79 = v55;
LABEL_150:
    a1 = v79;
    v167 = v45;
    v168 = v317;
    v169 = sub_1D62218D8(v79, v53, v167);
    v317 = v168;
    if (v168)
    {
      (*v312)(v27, v32, v169);

      goto LABEL_266;
    }

    v170 = v304 >> 61;
    if ((v304 >> 61) > 1)
    {
      if (v170 == 2)
      {
        v189 = v317;
        sub_1D62433FC(a1, v53, *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x10), *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
        v317 = v189;
        v40 = v314;

        v34 = v312;
        goto LABEL_6;
      }

      if (v170 == 3)
      {
        v171 = v304 & 0x1FFFFFFFFFFFFFFFLL;
        v172 = *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v173 = *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v174 = *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v175 = *(v172 + 24);
        v176 = *(v172 + 32);
        v177 = *(v172 + 40);
        v178 = *(v172 + 64);
        if (*(v172 + 66))
        {
          v179 = 8;
        }

        else
        {
          v179 = 0;
        }

        v180 = v179 & 0xFFFFFFF8 | (v178 >> 11) & 7;
        if (v180 <= 3)
        {
          v181 = a1;
          if ((v180 - 1) >= 2)
          {
            *&v318 = *(v172 + 16);
            *(&v318 + 1) = v175;
            if (v180)
            {
              LOBYTE(v319) = v176;
              v182 = v317;
              FormatTagBinding.Command.bind(binder:context:)(a1, v316);
            }

            else
            {
              *&v319 = v176;
              BYTE8(v319) = v177;
              v182 = v317;
              FormatGroupBinding.Command.bind(binder:context:)(a1, v316);
            }

LABEL_199:
            v317 = v182;
            v53 = v316;
            v181 = a1;
          }
        }

        else
        {
          v181 = a1;
          if (((1 << v180) & 0x330) == 0)
          {
            *&v318 = *(v172 + 16);
            *(&v318 + 1) = v175;
            *&v319 = v176;
            if (v180 == 6)
            {
              BYTE8(v319) = v177;
              v182 = v317;
              FormatSportsEventBinding.Command.bind(binder:context:)(a1, v316);
            }

            else
            {
              *(&v319 + 1) = v177;
              v320[0] = *(v172 + 48);
              LOWORD(v320[1]) = v178 & 0xC7FF;
              v182 = v317;
              FormatString.bind(binder:context:)(a1, v316);
            }

            goto LABEL_199;
          }
        }

        v230 = v317;
        sub_1D62218D8(v181, v53, v173);
        v317 = v230;
        v231 = v174 >> 61;
        v27 = v311;
        if ((v174 >> 61) <= 1)
        {
          if (!v231)
          {
            v304 = v171;
            v294 = v46;
            v241 = *(v174 + 16);
            v240 = *(v174 + 24);
            v242 = a1;
            v243 = *(v174 + 32);
            v244 = *(v174 + 40);
            v245 = *(v174 + 56);
            v247 = *(v174 + 64);
            v246 = *(v174 + 72);
            v292 = *(v174 + 48);
            v293 = v247;
            v291 = v246;
            *&v318 = v241;
            *(&v318 + 1) = v240;
            *&v319 = v243;
            *(&v319 + 1) = v244;
            v248 = v240;
            sub_1D62B7098(v241, v240, v243, v244);
            v250 = v316;
            v249 = v317;
            FormatMenuTitle.bind(binder:context:)(v242, v316);
            v317 = v249;
            if (v249)
            {
              v276.n128_f64[0] = sub_1D62B7130(v241, v248, v243, v244);
              goto LABEL_260;
            }

            sub_1D62B7130(v241, v248, v243, v244);
            v252 = v292;
            v251 = v293;
            *&v318 = v292;
            *(&v318 + 1) = v245;
            *&v319 = v293;
            v253.n128_f64[0] = sub_1D62B6FC0(v292, v245, v293);
            v254 = v317;
            FormatMenuImage.bind(binder:context:)(v242, v250, v253, v255, v256, v257, v258, v259);
            v317 = v254;
            v223 = v252;
            v224 = v245;
            v225 = v251;
            if (v254)
            {
LABEL_259:
              v276.n128_f64[0] = sub_1D62B703C(v223, v224, v225);
              goto LABEL_260;
            }

            sub_1D62B703C(v252, v245, v251);
            a1 = v242;
            v260 = v317;
            sub_1D625CCA8(v242, v250, v291);
            v34 = v312;
            v32 = v308;
            v27 = v311;
            v317 = v260;
            if (v260)
            {
              (*v312)(v311, v308);

              goto LABEL_273;
            }

            goto LABEL_5;
          }

          v262 = *((v174 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v319 = *((v174 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v320[0] = v262;
          v320[1] = *((v174 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
          *&v321 = *((v174 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
          v318 = *((v174 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v263 = v317;
          sub_1D625BE1C(a1, v316);
          v317 = v263;
        }

        else
        {
          v304 = v171;
          if (v231 == 2)
          {
            v261 = v317;
            sub_1D62433FC(a1, v53, *((v174 & 0x1FFFFFFFFFFFFFFFLL) + 0x10), *((v174 & 0x1FFFFFFFFFFFFFFFLL) + 0x18));
            v317 = v261;
          }

          else if (v231 == 3)
          {
            v294 = v46;
            v232 = v312;
            v233 = *((v174 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v234 = *((v174 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v235 = *((v174 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
            v236 = *(v233 + 32);
            v318 = *(v233 + 16);
            v319 = v236;
            v320[0] = *(v233 + 48);
            *(v320 + 15) = *(v233 + 63);
            v238 = v316;
            v237 = v317;
            FormatCommandBinding.bind(binder:context:)(a1, v316);
            v317 = v237;
            sub_1D62218D8(a1, v238, v234);
            v317 = 0;
            sub_1D625C2EC(a1, v238, v235);
            v34 = v232;
            v239 = v308;
            v317 = 0;
            v27 = v311;

            v32 = v239;
            v40 = v314;
            goto LABEL_6;
          }
        }
      }

      else
      {
      }

      v34 = v312;
      goto LABEL_5;
    }

    v294 = v46;
    if (v170)
    {
      v190 = *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v191 = *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v192 = *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v193 = *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v195 = *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v194 = *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v196 = *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v197 = *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      if ((~v191 & 0xF000000000000007) != 0 || (*((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x28) & 7) != 7)
      {
        v304 = *((v304 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
        if ((v193 & 4) != 0)
        {
          *&v318 = v190;
          v293 = v190;
          sub_1D62B7098(v190, v191, v192, v193);
          v211 = v317;
          FormatTextContent.bind(binder:context:)(v310, v316);
          v317 = v211;
          if (v211)
          {
            (*v312)(v311, v308);
            sub_1D62B7110(v293, v191, v192, v193);
            goto LABEL_272;
          }

          sub_1D62B7110(v293, v191, v192, v193);
          v198 = v316;
          v194 = v304;
        }

        else
        {
          sub_1D62B7098(v190, v191, v192, v193);
          v199 = v317;
          sub_1D6245970(v310, v316, v190, v191, v192, v193);
          v317 = v199;
          if (v199)
          {
            v276.n128_f64[0] = sub_1D62B7110(v190, v191, v192, v193);
LABEL_260:
            (*v312)(v311, v308, v276);
            goto LABEL_272;
          }

          sub_1D62B7110(v190, v191, v192, v193);
          v194 = v304;
          v198 = v316;
        }
      }

      else
      {
        v198 = v316;
      }

      v212 = v310;
      if ((~(v195 & v196) & 0x3000000000000007) != 0)
      {
        *&v318 = v195;
        *(&v318 + 1) = v194;
        *&v319 = v196;
        v213 = v194;
        v214 = v310;
        v215 = v198;
        v216.n128_f64[0] = sub_1D62B6FC0(v195, v194, v196);
        v217 = v317;
        FormatMenuImage.bind(binder:context:)(v214, v215, v216, v218, v219, v220, v221, v222);
        v317 = v217;
        v223 = v195;
        v224 = v213;
        v225 = v196;
        if (v217)
        {
          goto LABEL_259;
        }

        sub_1D62B703C(v195, v213, v196);
        v198 = v316;
        v212 = v214;
      }

      a1 = v212;
      v226 = v317;
      sub_1D6223ECC(v212, v198, v197);
      v317 = v226;
      if (v226)
      {
        (*v312)(v311, v308);
        goto LABEL_272;
      }

      v34 = v312;
      v27 = v311;
      v32 = v308;
      goto LABEL_5;
    }

    v183 = *(v304 + 40);
    v184 = *(v304 + 48);
    v185 = *(v304 + 56);
    v186 = *(v304 + 64);
    v187 = *(v304 + 72);
    if ((v183 & 4) != 0)
    {
      *&v318 = *(v304 + 16);
      v188 = v317;
      FormatTextContent.bind(binder:context:)(v310, v53);
    }

    else
    {
      v188 = v317;
      sub_1D6245970(v310, v53, *(v304 + 16), *(v304 + 24), *(v304 + 32), v183);
    }

    v317 = v188;
    if ((v186 & 0x2000000000000000) != 0)
    {
      *&v318 = v184;
      a1 = v310;
      v205 = v317;
      FormatSyncImageContent.bind(binder:context:)(v310, v316);
      v317 = v205;
      v32 = v308;
    }

    else
    {
      v200 = *(v184 + 32);
      v318 = *(v184 + 16);
      v319 = v200;
      v320[0] = *(v184 + 48);
      *(v320 + 15) = *(v184 + 63);
      v201 = v310;
      v203 = v316;
      v202 = v317;
      FormatCommandBinding.bind(binder:context:)(v310, v316);
      v317 = v202;
      sub_1D6226080(v201, v203, v185);
      v32 = v308;
      v317 = 0;
      *&v318 = v186;

      v204 = v317;
      FormatSyncImageContent.bind(binder:context:)(v201, v203);
      v317 = v204;
      if (v204)
      {
        (*v312)(v311, v32);

        goto LABEL_266;
      }

      v54 = v305;
      a1 = v310;
    }

    v206 = v187 >> 62;
    v207 = v316;
    if ((v187 >> 62) <= 1)
    {
      if (v206)
      {
        v227 = *((v187 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v228 = *(v227 + 32);
        v318 = *(v227 + 16);
        v319 = v228;
        v320[0] = *(v227 + 48);
        *(v320 + 15) = *(v227 + 63);
        v229 = v317;
        FormatCommandBinding.bind(binder:context:)(a1, v316);
        v317 = v229;
        if (v229)
        {
          goto LABEL_257;
        }
      }

      else
      {
        v208 = swift_projectBox();
        sub_1D62B50EC(v208, v54, type metadata accessor for FormatCommandOpenURL);
        v209 = v317;
        sub_1D5F86DA0(v207);
        v317 = v209;
        if (v209)
        {
          sub_1D62B51D0(v54, type metadata accessor for FormatCommandOpenURL);
LABEL_257:
          (*v312)(v311, v32);

          goto LABEL_266;
        }

        sub_1D62B51D0(v54, type metadata accessor for FormatCommandOpenURL);
      }

LABEL_195:

      v27 = v311;
LABEL_196:
      v34 = v312;
      goto LABEL_5;
    }

    if (v206 != 2)
    {
      goto LABEL_195;
    }

    v210 = v317;
    sub_1D6245CC4(a1, v316, *((v187 & 0x3FFFFFFFFFFFFFFFLL) + 0x10), *((v187 & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
    v317 = v210;
    v40 = v314;
    if (v210)
    {
      goto LABEL_257;
    }

    v34 = v312;
    v27 = v311;
LABEL_6:
    v35 = v40 + 2;
    v41 = sub_1D725BC5C();

    (*v34)(v27, v32);
    if (v41)
    {
      return result;
    }
  }

  if (v52 != 7)
  {
    v54 = v305;
    v55 = v310;
    v27 = v311;
    goto LABEL_37;
  }

  if (!(v50 >> 14))
  {
LABEL_87:

    v54 = v305;
    goto LABEL_88;
  }

  v294 = v46;
  if (v50 >> 14 == 1)
  {
    v327 = v324;
    v328 = v48;
    v333 = 5;
    v121 = v324;

    sub_1D62B5248(&v324, &v318);
    v122 = v317;
    v123 = sub_1D703E0C8(&v327, &v333);
    v317 = v122;
    if (v122)
    {
      (*v312)(v311, v32);

      goto LABEL_269;
    }

    v124 = v123;
    v125 = v300;
    FormatOptionCollection.subscript.getter(v121, *(&v121 + 1), v300);
    if ((*v299)(v125, 1, v302) == 1)
    {

      sub_1D5B6EF64(v125, &qword_1EDF337F0, type metadata accessor for FormatOption);
      if ((*(v53 + 48) & 1) == 0)
      {
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        v285 = swift_allocError();
        *v286 = v121;
        swift_storeEnumTagMultiPayload();
        v317 = v285;
        swift_willThrow();
        v287 = *v312;

        v287(v311, v308);
LABEL_272:

LABEL_273:

        goto LABEL_267;
      }

      v126 = v297;
      (*v296)(v297, 1, 1, v302);
      sub_1D5B6EF64(v126, &qword_1EDF337F0, type metadata accessor for FormatOption);
    }

    else
    {
      v264 = v295;
      sub_1D5D5E33C(v125, v295, type metadata accessor for FormatOption);
      *&v318 = v264[2];

      FormatOptionValue.type.getter(v265, &v327);
      if ((sub_1D6183C84(v327, v124) & 1) == 0)
      {
        v317 = type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        v277 = swift_allocError();
        v279 = v278;
        v280 = v312;
        v282 = *v264;
        v281 = v264[1];
        *&v318 = v264[2];

        FormatOptionValue.type.getter(v283, &v327);
        v284 = v327;
        *v279 = v282;
        *(v279 + 8) = v281;
        *(v279 + 16) = v284;
        *(v279 + 24) = v124;
        swift_storeEnumTagMultiPayload();
        v317 = v277;
        swift_willThrow();

        (*v280)(v311, v308);
        sub_1D62B51D0(v264, type metadata accessor for FormatOption);
        goto LABEL_272;
      }

      swift_bridgeObjectRelease_n();
      v266 = v297;
      sub_1D5D5E33C(v264, v297, type metadata accessor for FormatOption);
      (*v296)(v266, 0, 1, v302);
      sub_1D5B6EF64(v266, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v53 = v316;
    }

    v54 = v305;
    v45 = v306;
    v32 = v308;
    v79 = v310;
    v27 = v311;
    v46 = v294;
    goto LABEL_150;
  }

  v137 = (*&v326[15] >> 8) & 0x7FF;
  v138 = v301;
  v291 = *&v326[8];
  v292 = *v326;
  LODWORD(v293) = v137;
  switch((((*&v326[15] >> 8) & 0x700u) >> 7) & 0xFFFFFFFE | ((*&v326[15] >> 8) >> 3) & 1)
  {
    case 3u:
    case 4u:
      v327 = v324;
      v328 = v48;
      v333 = 5;
      v268 = v324;

      sub_1D62B5248(&v324, &v318);
      v290 = *(&v268 + 1);

      v269 = v317;
      v270 = sub_1D703E0C8(&v327, &v333);
      v317 = v269;
      if (!v269)
      {
        v140 = v268;
        v271 = v290;
        v272 = v138;
        sub_1D6BEBFEC(v268, v290, v270, 1, v138);
        v317 = 0;

        v139 = v271;

        sub_1D5B6EF64(v272, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v32 = v308;
        v137 = v293;
        goto LABEL_105;
      }

      (*v312)(v311, v32);

      break;
    default:
      v139 = *(&v324 + 1);
      v140 = v324;

LABEL_105:
      v141 = v137 >> 8;
      v142 = v140;
      *&v318 = v140;
      *(&v318 + 1) = v139;
      v319 = v49;
      v289 = *(&v49 + 1);
      v290 = v49;
      v144 = v291;
      v143 = v292;
      *&v320[0] = v292;
      *(&v320[0] + 1) = v291;
      LOBYTE(v320[1]) = v50;
      BYTE1(v320[1]) = v141;
      v145 = v310;
      v147 = v316;
      v146 = v317;
      FormatTextNodeBinding.bindChildren(binder:context:)(v310, v316);
      v317 = v146;
      if (!v146)
      {
        *&v327 = v142;
        *(&v327 + 1) = v139;
        v328 = v290;
        v329 = v289;
        v330 = v143;
        v331 = v144;
        v332 = v293;
        FormatTextNodeBinding.bind(binder:context:)(v145, v147);
        v317 = 0;
        v79 = v145;
        v53 = v316;
        v54 = v305;
        v45 = v306;
        v27 = v311;
        v46 = v294;
        goto LABEL_150;
      }

      (*v312)(v311, v32, v148);

      goto LABEL_266;
  }

  return result;
}

double sub_1D6245970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a2;
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v34 = a1;
  v33 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v33, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v31 = v9;
  v32 = (v11 + 8);
  v12 = (a3 + 56);
  v13 = v10 + 1;
  while (1)
  {
    if (!--v13)
    {
      v26 = v36;
      result = sub_1D6209FB8(v34, v35, v28, v29, v30, FormatTextContent.bind(binder:context:), FormatTextContent.bind(binder:context:));
      v36 = v26;
      return result;
    }

    v16 = *(v12 - 3);
    v17 = *(v12 - 2);
    v19 = *(v12 - 1);
    v18 = *v12;
    *&v37 = v16;

    swift_retain_n();

    v20 = v36;
    sub_1D71C3968(v34, v35, v9);
    v36 = v20;
    if (v20)
    {
      break;
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v40 = v16;

      v21 = v34;
      v22 = v35;
      v23 = v36;
      FormatExpression.bind(binder:context:)(v34, v35);
      v36 = v23;
      if (v23)
      {

        (*v32)(v31, v33);
        return result;
      }

      v24 = *(v17 + 32);
      v37 = *(v17 + 16);
      v38 = v24;
      v39[0] = *(v17 + 48);
      *(v39 + 15) = *(v17 + 63);
      v25 = v36;
      FormatCommandBinding.bind(binder:context:)(v21, v22);
      if (v25)
      {
        v36 = v25;
        (*v32)(v31, v33);

        goto LABEL_13;
      }

      sub_1D623C390(v21, v22, v19, FormatTextContent.bind(binder:context:));
      *&v37 = v18;

      FormatTextContent.bind(binder:context:)(v21, v22);
      v36 = 0;

      v9 = v31;
    }

    v12 += 4;
    v14 = sub_1D725BC5C();

    (*v32)(v9, v33);
    if (v14)
    {
      return result;
    }
  }

LABEL_13:

  return result;
}

void sub_1D6245CC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v177 = a4;
  v183 = a2;
  v182 = a1;
  v176 = type metadata accessor for FormatOption(0);
  v7 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176, v8);
  v10 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v164 = &v157 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v163 = &v157 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v169 = (&v157 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v171 = &v157 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v170 = &v157 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v157 - v28;
  sub_1D5B54684(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v157 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v168 = &v157 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v167 = &v157 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v173 = &v157 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v172 = &v157 - v49;
  v50 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v178 = &v157 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1D725BC7C();
  MEMORY[0x1EEE9AC00](v181, v53);
  v55 = &v157 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a3 + 16);
  v174 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;
  v175 = (v7 + 56);
  v165 = (v7 + 48);
  v180 = (v57 + 8);
  v58 = (a3 + 40);
  v59 = v56 + 1;
  v179 = v55;
  v166 = v37;
  while (1)
  {
    v60 = v59 - 1;
    if (!v60)
    {
      sub_1D625CCA8(v182, v183, v177);
      return;
    }

    v184 = v60;
    v61 = v33;
    v63 = *v58;
    *&v191 = *(v58 - 1);
    v62 = v191;

    v194 = v62;
    swift_retain_n();
    sub_1D71C3968(v182, v183, v55);
    if (v5)
    {
      goto LABEL_119;
    }

    if (sub_1D725BC6C())
    {
      goto LABEL_5;
    }

    *&v191 = v194;

    FormatExpression.bind(binder:context:)(v182, v183);

    v65 = v63 >> 62;
    if ((v63 >> 62) > 1)
    {
      if (v65 != 2)
      {
        goto LABEL_5;
      }

      v68 = *((v63 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v69 = *((v63 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D6245CC4(v182, v183, v68, v69);

LABEL_14:
      v55 = v179;
      goto LABEL_6;
    }

    if (!v65)
    {
      v66 = swift_projectBox();
      v67 = v178;
      sub_1D62B50EC(v66, v178, type metadata accessor for FormatCommandOpenURL);
      sub_1D5F86DA0(v183);
      sub_1D62B51D0(v67, type metadata accessor for FormatCommandOpenURL);
LABEL_5:
      v55 = v179;
      goto LABEL_6;
    }

    v70 = *((v63 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v71 = *(v70 + 32);
    v191 = *(v70 + 16);
    v192 = v71;
    v72 = *(v70 + 48);
    *&v193[15] = *(v70 + 63);
    *v193 = v72;
    v73 = *(&v191 + 1);
    v74 = v193[16];
    if (v193[18])
    {
      v75 = 8;
    }

    else
    {
      v75 = 0;
    }

    v76 = v75 & 0xFFFFFFF8 | (*&v193[16] >> 11) & 7;
    if (v76 <= 4)
    {
      if (v76 <= 1)
      {
        if (v76)
        {
          goto LABEL_56;
        }

        v77 = (DWORD2(v71) >> 3) & 7;
        if (v77 <= 1)
        {
          if (v77)
          {
            goto LABEL_49;
          }
        }

        else if (v77 != 2 && v77 != 3 && BYTE8(v71) >> 6 && BYTE8(v71) >> 6 != 1)
        {
          v78 = BYTE8(v71) & 7;
          if (v78 <= 1)
          {
            if ((BYTE8(v71) & 7) == 0)
            {
LABEL_49:
              sub_1D5D085FC(&v191);
              goto LABEL_56;
            }

            goto LABEL_39;
          }

          goto LABEL_64;
        }
      }

      else if (v76 != 3)
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    }

    if (v76 > 6)
    {
      break;
    }

    if (v76 == 5)
    {
      goto LABEL_14;
    }

    if (BYTE8(v71) >> 6 && BYTE8(v71) >> 6 != 1)
    {
      v78 = BYTE8(v71) & 0x3F;
      if (v78 <= 1)
      {
        if ((BYTE8(v71) & 0x3F) == 0)
        {
          goto LABEL_49;
        }

LABEL_39:
        if ((~*(&v191 + 1) & 0xF000000000000007) != 0)
        {
          *&v186 = *(&v191 + 1);

          sub_1D62B5248(&v191, &v188);
          v161 = v73;
          sub_1D5CFCFAC(v73);
          FormatTextContent.bind(binder:context:)(v182, v183);
          goto LABEL_54;
        }

        goto LABEL_56;
      }

LABEL_64:
      v55 = v179;
      if (v78 == 2)
      {
        goto LABEL_7;
      }

LABEL_51:
      sub_1D5D085FC(&v191);
      goto LABEL_7;
    }

LABEL_47:
    if (v71 <= 1u)
    {
      if (!v71)
      {
        goto LABEL_49;
      }

      if ((~v191 & 0xF000000000000007) != 0)
      {
        *&v186 = v191;
        v87 = v191;

        sub_1D62B5248(&v191, &v188);
        v162 = v87;
        sub_1D5CFCFAC(v87);
        FormatTextContent.bind(binder:context:)(v182, v183);
LABEL_54:

LABEL_55:
        sub_1D5D085FC(&v191);
      }

LABEL_56:
      v55 = v179;
      goto LABEL_7;
    }

    v55 = v179;
    if (v71 != 2)
    {
      goto LABEL_51;
    }

LABEL_7:
    v58 += 2;
    v64 = sub_1D725BC5C();

    (*v180)(v55, v181);
    v59 = v184;
    if (v64)
    {
      return;
    }
  }

  if (v76 != 7 || !(*&v193[16] >> 14))
  {
    goto LABEL_14;
  }

  if (*&v193[16] >> 14 == 1)
  {
    v162 = v191;
    v186 = v191;
    v161 = *(&v191 + 1);
    v187 = v71;
    v185 = 5;
    sub_1D62B5248(&v191, &v188);

    sub_1D62B5248(&v191, &v188);
    v159 = sub_1D703E0C8(&v186, &v185);
    v160 = v70;
    v79 = *(v183 + v174);
    v80 = *(v79 + 16);
    swift_beginAccess();
    if (*(*(v80 + 16) + 16))
    {
      sub_1D5B69D90(v162, v161);
      if (v81)
      {
        swift_endAccess();
        v82 = v171;
        sub_1D5D25108(v171);
        v83 = v82;
        v84 = v170;
        sub_1D5D5E33C(v83, v170, type metadata accessor for FormatOption);
        v85 = v84;
        v86 = v173;
        sub_1D5D5E33C(v85, v173, type metadata accessor for FormatOption);
        goto LABEL_62;
      }
    }

    swift_endAccess();
    swift_beginAccess();
    if (*(*(v79 + 24) + 16) && (sub_1D5B69D90(v162, v161), (v88 & 1) != 0))
    {
      swift_endAccess();
      v86 = v173;
      sub_1D5D25108(v173);
LABEL_62:
      v161 = *v175;
      (v161)(v86, 0, 1, v176);
      sub_1D5D5E33C(v86, v29, type metadata accessor for FormatOption);
      v162 = v29;
      *&v188 = *(v29 + 2);
      v89 = v159;

      FormatOptionValue.type.getter(v90, &v186);
      if ((sub_1D6183C84(v186, v89) & 1) == 0)
      {
        type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v131 = v130;
        v132 = v162;
        v133 = *v162;
        v134 = v162[1];
        *&v188 = v162[2];

        FormatOptionValue.type.getter(v135, &v186);
        v136 = v186;
        *v131 = v133;
        *(v131 + 8) = v134;
        *(v131 + 16) = v136;
        *(v131 + 24) = v89;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*v180)(v179, v181);
        sub_1D62B51D0(v132, type metadata accessor for FormatOption);
        goto LABEL_118;
      }

      swift_bridgeObjectRelease_n();
      v91 = v172;
      sub_1D5D5E33C(v162, v172, type metadata accessor for FormatOption);
      (v161)(v91, 0, 1, v176);
      v55 = v179;
    }

    else
    {
      swift_endAccess();
      v92 = v173;
      v93 = v176;
      v158 = *v175;
      v158(v173, 1, 1, v176);

      sub_1D5B6EF64(v92, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v55 = v179;
      if ((*(v183 + 48) & 1) == 0)
      {
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        v137 = v161;
        *v138 = v162;
        v138[1] = v137;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v139 = *v180;

        v139(v55, v181);
        goto LABEL_118;
      }

      v91 = v172;
      v158(v172, 1, 1, v93);
    }

    sub_1D5B6EF64(v91, &qword_1EDF337F0, type metadata accessor for FormatOption);
    sub_1D5D085FC(&v191);

LABEL_6:
    v33 = v61;
    goto LABEL_7;
  }

  switch((*&v193[16] >> 7) & 0xE | (*&v193[16] >> 3) & 1)
  {
    case 1:
    case 5:
    case 6:
    case 7:
    case 9:
    case 0xA:
    case 0xB:
    case 0xD:

      goto LABEL_70;
    case 2:
      v160 = v192;
      v161 = *(&v191 + 1);
      v162 = v191;

      sub_1D62B5248(&v191, &v188);
      v111 = v74 >> 4;
      v112 = v161;
      v113 = v160;
      if (((1 << v111) & 0x1EF7) != 0)
      {
        v114 = v162;
        switch(v74 >> 4)
        {
          case 3:
            goto LABEL_105;
          case 8:
            goto LABEL_111;
          default:
            goto LABEL_70;
        }
      }

      if (v111 == 3)
      {
        if (BYTE1(v160) < 4u && v160 <= 0xFDu)
        {
          *&v186 = v162;
          *(&v186 + 1) = v161;
          LOBYTE(v187) = v160 & 1;
          sub_1D62B5248(&v191, &v188);
          sub_1D62B5248(&v191, &v188);
          sub_1D60ECF10(v183);
          sub_1D5D2F2C8(v186, *(&v186 + 1), v187);
          sub_1D5D085FC(&v191);
        }

        v112 = v161;
        v114 = v162;
        v113 = v160;
LABEL_105:
        *&v188 = v114;
        *(&v188 + 1) = v112;
        LOWORD(v189) = v113;
        sub_1D62B416C(v183);
        goto LABEL_70;
      }

      if ((v161 & 0x80) != 0)
      {
        v160 = v70;
        LOBYTE(v186) = v161 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        if (swift_dynamicCast())
        {
          v126 = *(&v189 + 1);
          v127 = v190;
          __swift_project_boxed_opaque_existential_1(&v188, *(&v189 + 1));
          (*(v127 + 8))(v182, v183, v126, v127);
          __swift_destroy_boxed_opaque_existential_1(&v188);
        }

        else
        {
          v190 = 0;
          v188 = 0u;
          v189 = 0u;
          sub_1D5BFB774(&v188, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        }

        v70 = v160;
        LOBYTE(v112) = v161;
      }

LABEL_111:
      if (!(v112 >> 6) || v112 >> 6 == 1)
      {
        goto LABEL_70;
      }

      LOBYTE(v186) = v112 & 0x3F;
      sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v190 = 0;
        v188 = 0u;
        v189 = 0u;
        sub_1D5BFB774(&v188, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
LABEL_70:
        sub_1D5D085FC(&v191);

        goto LABEL_14;
      }

      v160 = v70;
      v128 = *(&v189 + 1);
      v129 = v190;
      __swift_project_boxed_opaque_existential_1(&v188, *(&v189 + 1));
      (*(v129 + 8))(v182, v183, v128, v129);
      __swift_destroy_boxed_opaque_existential_1(&v188);
      sub_1D5D085FC(&v191);

      goto LABEL_5;
    case 3:
    case 4:
      v162 = v191;
      v186 = v191;
      v187 = v71;
      v185 = 5;
      v94 = v71;
      sub_1D62B5248(&v191, &v188);

      sub_1D62B5248(&v191, &v188);
      v161 = v73;

      v160 = v94;

      v158 = sub_1D703E0C8(&v186, &v185);
      v95 = *(v183 + v174);
      v96 = *(v95 + 16);
      swift_beginAccess();
      if (*(*(v96 + 16) + 16) && (sub_1D5B69D90(v162, v161), (v97 & 1) != 0))
      {
        swift_endAccess();
        v98 = v164;
        sub_1D5D25108(v164);
        v99 = v98;
        v100 = v163;
        sub_1D5D5E33C(v99, v163, type metadata accessor for FormatOption);
        v101 = v168;
        sub_1D5D5E33C(v100, v168, type metadata accessor for FormatOption);
      }

      else
      {
        swift_endAccess();
        swift_beginAccess();
        if (!*(*(v95 + 24) + 16) || (sub_1D5B69D90(v162, v161), (v102 & 1) == 0))
        {
          swift_endAccess();
          v115 = *v175;
          v116 = v168;
          (*v175)(v168, 1, 1, v176);

          sub_1D5B6EF64(v116, &qword_1EDF337F0, type metadata accessor for FormatOption);
          if ((*(v183 + 48) & 1) == 0)
          {
            goto LABEL_122;
          }

          v109 = v167;
          v159 = v115;
          v115(v167, 1, 1, v176);
          v108 = v161;
          goto LABEL_85;
        }

        swift_endAccess();
        v101 = v168;
        sub_1D5D25108(v168);
      }

      v159 = *v175;
      v159(v101, 0, 1, v176);
      v103 = v101;
      v104 = v169;
      sub_1D5D5E33C(v103, v169, type metadata accessor for FormatOption);
      *&v188 = v104[2];
      v105 = v158;

      FormatOptionValue.type.getter(v106, &v186);
      v107 = v105;
      if ((sub_1D6183C84(v186, v105) & 1) == 0)
      {
        v184 = type metadata accessor for FormatDerivedDataError(0);
        sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v143 = v142;
        v144 = v169;
        v145 = *v169;
        v146 = v169[1];
        *&v188 = v169[2];

        FormatOptionValue.type.getter(v147, &v186);
        v148 = v186;
        *v143 = v145;
        *(v143 + 8) = v146;
        *(v143 + 16) = v148;
        *(v143 + 24) = v107;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*v180)(v179, v181);
        v149 = v144;
        goto LABEL_125;
      }

      v108 = v161;

      swift_bridgeObjectRelease_n();
      v109 = v167;
      sub_1D5D5E33C(v169, v167, type metadata accessor for FormatOption);
      v159(v109, 0, 1, v176);
LABEL_85:
      sub_1D5B6EF64(v109, &qword_1EDF337F0, type metadata accessor for FormatOption);
      v117 = v162;
      *&v186 = v162;
      *(&v186 + 1) = v108;
      v187 = v160;
      v185 = 5;
      sub_1D62B5248(&v191, &v188);

      v33 = v61;
      v118 = sub_1D703E0C8(&v186, &v185);
      FormatOptionCollection.subscript.getter(v117, v161, v33);
      v119 = v176;
      if ((*v165)(v33, 1, v176) == 1)
      {

        sub_1D5B6EF64(v33, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v120 = v166;
        if ((*(v183 + 48) & 1) == 0)
        {
LABEL_122:
          type metadata accessor for FormatLayoutError(0);
          sub_1D5B57348(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          v140 = v161;
          *v141 = v162;
          v141[1] = v140;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          (*v180)(v179, v181);
          goto LABEL_118;
        }

        v121 = 1;
        goto LABEL_90;
      }

      sub_1D5D5E33C(v33, v10, type metadata accessor for FormatOption);
      v162 = v10;
      *&v188 = *(v10 + 2);

      FormatOptionValue.type.getter(v122, &v186);
      v123 = v118;
      v124 = sub_1D6183C84(v186, v118);
      v120 = v166;
      if (v124)
      {

        swift_bridgeObjectRelease_n();
        sub_1D5D5E33C(v162, v120, type metadata accessor for FormatOption);
        v121 = 0;
        v119 = v176;
LABEL_90:
        v159(v120, v121, 1, v119);
        sub_1D5B6EF64(v120, &qword_1EDF337F0, type metadata accessor for FormatOption);
        goto LABEL_55;
      }

      v184 = type metadata accessor for FormatDerivedDataError(0);
      sub_1D5B57348(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      v151 = v150;
      v152 = v162;
      v153 = *v162;
      v154 = v162[1];
      *&v188 = v162[2];

      FormatOptionValue.type.getter(v155, &v186);
      v156 = v186;
      *v151 = v153;
      *(v151 + 8) = v154;
      *(v151 + 16) = v156;
      *(v151 + 24) = v123;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*v180)(v179, v181);
      v149 = v152;
LABEL_125:
      sub_1D62B51D0(v149, type metadata accessor for FormatOption);
LABEL_118:
      sub_1D5D085FC(&v191);
LABEL_119:

      return;
    case 0xC:
      v110 = BYTE8(v191);

      if ((v73 & 0x80) != 0)
      {
        LODWORD(v162) = v73;
        LOBYTE(v186) = v73 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        if (swift_dynamicCast())
        {
          v125 = *(&v189 + 1);
          v161 = v190;
          __swift_project_boxed_opaque_existential_1(&v188, *(&v189 + 1));
          (*(v161 + 8))(v182, v183, v125);
          __swift_destroy_boxed_opaque_existential_1(&v188);
        }

        else
        {
          v190 = 0;
          v188 = 0u;
          v189 = 0u;
          sub_1D5BFB774(&v188, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        }

        v33 = v61;
        v110 = v162;
      }

      if (v110 >> 6 && v110 >> 6 != 1)
      {
        LOBYTE(v186) = v110 & 0x3F;
        sub_1D5B49474(0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        if (swift_dynamicCast())
        {
          v162 = *(&v189 + 1);
          v161 = v190;
          __swift_project_boxed_opaque_existential_1(&v188, *(&v189 + 1));
          (*(v161 + 8))(v182, v183, v162);
          __swift_destroy_boxed_opaque_existential_1(&v188);
        }

        else
        {
          v190 = 0;
          v188 = 0u;
          v189 = 0u;
          sub_1D5BFB774(&v188, &qword_1EDF329A0, &qword_1EDF329A8, &protocol descriptor for FormatBindable);
        }
      }

      goto LABEL_55;
    default:

      sub_1D62B5248(&v191, &v188);
      goto LABEL_70;
  }
}