uint64_t JobConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27B0, &qword_22F77AD50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F222BFC();
  sub_22F742200();
  if (!v2)
  {
    v40 = 0;
    sub_22F222CA4();
    sub_22F741F10();
    v9 = v34;
    v10 = v35;
    v40 = 1;
    sub_22F741EA0();
    v32 = v34;
    v33 = v35;
    v39 = v36;
    v40 = 2;
    sub_22F741F10();
    v11 = v34;
    v12 = *(&v35 + 1);
    v31 = v35;
    v40 = 3;
    sub_22F741F10();
    v30 = v11;
    v13 = v34;
    v14 = *(&v35 + 1);
    v29 = v35;
    v40 = 4;
    sub_22F741F10();
    v26 = *(&v13 + 1);
    v27 = v13;
    v28 = v14;
    v15 = v34;
    v16 = *(&v35 + 1);
    v25 = v35;
    v40 = 5;
    sub_22F741EA0();
    v24 = v35;
    v23 = v34;
    v38 = v36;
    v40 = 6;
    sub_22F741EA0();
    (*(v6 + 8))(v8, v5);
    v18 = v36;
    v37 = v36;
    v19 = v39;
    v20 = v38;
    *a2 = v9;
    *(a2 + 16) = v10;
    v21 = v33;
    *(a2 + 32) = v32;
    *(a2 + 48) = v21;
    *(a2 + 64) = v19;
    *(a2 + 72) = v30;
    *(a2 + 80) = *(&v11 + 1);
    *(a2 + 88) = v31;
    *&v21 = v27;
    *(a2 + 96) = v12;
    *(a2 + 104) = v21;
    *(a2 + 112) = v26;
    *(a2 + 120) = v29;
    *(a2 + 128) = v28;
    *(a2 + 136) = v15;
    *(a2 + 152) = v25;
    *(a2 + 160) = v16;
    *(a2 + 168) = v23;
    *(a2 + 184) = v24;
    *(a2 + 200) = v20;
    v22 = v35;
    *(a2 + 208) = v34;
    *(a2 + 224) = v22;
    *(a2 + 240) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F220F88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7A69536863746162;
  }

  else
  {
    v3 = 0xD00000000000001CLL;
  }

  if (v2)
  {
    v4 = 0x800000022F78E380;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x7A69536863746162;
  }

  else
  {
    v5 = 0xD00000000000001CLL;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0x800000022F78E380;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22F742040();
  }

  return v8 & 1;
}

uint64_t sub_22F221038()
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

double sub_22F2210C4(uint64_t a1)
{
  sub_22F740D60();

  return result;
}

uint64_t sub_22F22113C(uint64_t a1)
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

void sub_22F2211C4(char *a2@<X8>)
{
  v3 = sub_22F741E30();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_22F221224(unint64_t *a1@<X8>)
{
  v2 = 0x800000022F78E380;
  v3 = 0xD00000000000001CLL;
  if (*v1)
  {
    v3 = 0x7A69536863746162;
    v2 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_22F22126C()
{
  if (*v0)
  {
    return 0x7A69536863746162;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

void sub_22F2212B0(char *a3@<X8>)
{
  v4 = sub_22F741E30();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_22F221314(uint64_t a1)
{
  v2 = sub_22F222CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F221350(uint64_t a1)
{
  v2 = sub_22F222CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t CacheRefreshConfiguration.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27B8, &qword_22F77AD58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27C0, &qword_22F77AD60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v49[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F222CF8();
  sub_22F742200();
  if (v2)
  {

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_22F120ADC(v6, &qword_27DAB27B8, &qword_22F77AD58);
    v11 = 200;
    v12 = 604800.0;
LABEL_82:
    v44 = v48;
    *v48 = v12;
    *(v44 + 1) = v11;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  (*(v8 + 56))(v6, 0, 1, v7);
  (*(v8 + 32))(v10, v6, v7);
  LOBYTE(v49[0]) = 0;
  v13 = sub_22F741E50();
  if (v14)
  {
    v49[0] = 0;
    v17 = sub_22F222738(v13, v14, v49);

    if (v17)
    {
      v12 = *v49;
    }

    else
    {
      v12 = 604800.0;
    }
  }

  else
  {
    LOBYTE(v49[0]) = 0;
    v15 = sub_22F741E90();
    if (v16)
    {
      v12 = 604800.0;
    }

    else
    {
      v12 = v15;
    }
  }

  LOBYTE(v49[0]) = 1;
  result = sub_22F741E50();
  if (!v19)
  {
    LOBYTE(v49[0]) = 1;
    v11 = sub_22F741E90();
    v28 = v27;
    (*(v8 + 8))(v10, v7);
    if (v28)
    {
      v11 = 200;
    }

    goto LABEL_82;
  }

  v20 = HIBYTE(v19) & 0xF;
  v21 = result & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v22 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    (*(v8 + 8))(v10, v7);

LABEL_14:
    v11 = 200;
    goto LABEL_82;
  }

  if ((v19 & 0x1000000000000000) != 0)
  {
    sub_22F29C288(result, v19, 10);
    v11 = v45;
    v43 = v46;
LABEL_81:
    (*(v8 + 8))(v10, v7);

    if ((v43 & 1) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_14;
  }

  if ((v19 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v19 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_22F741B80();
      v21 = v47;
    }

    v23 = *result;
    if (v23 == 43)
    {
      if (v21 >= 1)
      {
        if (--v21)
        {
          v11 = 0;
          if (result)
          {
            v32 = (result + 1);
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                goto LABEL_79;
              }

              v34 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_79;
              }

              v11 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                goto LABEL_79;
              }

              ++v32;
              if (!--v21)
              {
                goto LABEL_80;
              }
            }
          }

          goto LABEL_78;
        }

        goto LABEL_79;
      }

      goto LABEL_88;
    }

    if (v23 != 45)
    {
      if (v21)
      {
        v11 = 0;
        if (result)
        {
          while (1)
          {
            v38 = *result - 48;
            if (v38 > 9)
            {
              goto LABEL_79;
            }

            v39 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_79;
            }

            v11 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              goto LABEL_79;
            }

            ++result;
            if (!--v21)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_78;
      }

LABEL_79:
      v11 = 0;
      LOBYTE(v21) = 1;
      goto LABEL_80;
    }

    if (v21 >= 1)
    {
      if (--v21)
      {
        v11 = 0;
        if (result)
        {
          v24 = (result + 1);
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              goto LABEL_79;
            }

            v26 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              goto LABEL_79;
            }

            v11 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              goto LABEL_79;
            }

            ++v24;
            if (!--v21)
            {
              goto LABEL_80;
            }
          }
        }

LABEL_78:
        LOBYTE(v21) = 0;
LABEL_80:
        v50 = v21;
        v43 = v21;
        goto LABEL_81;
      }

      goto LABEL_79;
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v49[0] = result;
  v49[1] = v19 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v20)
      {
        v11 = 0;
        v40 = v49;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            break;
          }

          v42 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v42 + v41;
          if (__OFADD__(v42, v41))
          {
            break;
          }

          ++v40;
          if (!--v20)
          {
            goto LABEL_78;
          }
        }
      }

      goto LABEL_79;
    }

    if (v20)
    {
      v21 = v20 - 1;
      if (v20 != 1)
      {
        v11 = 0;
        v29 = v49 + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v31 - v30;
          if (__OFSUB__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v21)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    goto LABEL_87;
  }

  if (v20)
  {
    v21 = v20 - 1;
    if (v20 != 1)
    {
      v11 = 0;
      v35 = v49 + 1;
      while (1)
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          break;
        }

        v37 = 10 * v11;
        if ((v11 * 10) >> 64 != (10 * v11) >> 63)
        {
          break;
        }

        v11 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          break;
        }

        ++v35;
        if (!--v21)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_79;
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t CacheRefreshConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27C8, &qword_22F77AD68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F222CF8();
  result = sub_22F742210();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = 0;
  sub_22F741FC0();
  if (!v2)
  {
    v12 = 1;
    sub_22F741FC0();
  }

  return (*(v5 + 8))(v7, v4);
}

double static MusicBagContents.defaultPersonalMixIdentifersToNames.getter()
{
  if (qword_27DAAFDE0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_22F221D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_22F14F0AC(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E48, &unk_22F7711F0);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

__n128 MusicBagContents.jobConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  *(a1 + 192) = *(v1 + 200);
  *(a1 + 208) = v2;
  *(a1 + 224) = *(v1 + 232);
  *(a1 + 240) = *(v1 + 248);
  v3 = *(v1 + 152);
  *(a1 + 128) = *(v1 + 136);
  *(a1 + 144) = v3;
  v4 = *(v1 + 184);
  *(a1 + 160) = *(v1 + 168);
  *(a1 + 176) = v4;
  v5 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v5;
  v6 = *(v1 + 120);
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v6;
  v7 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v7;
  result = *(v1 + 40);
  v9 = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v9;
  return result;
}

double MusicBagContents.cacheRefreshConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 256);
  v3 = *(v1 + 264);
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

unint64_t sub_22F221E04()
{
  v1 = 0xD00000000000001CLL;
  v2 = *v0;
  v3 = 0xD000000000000019;
  v4 = 0xD000000000000012;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22F221E90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F2238DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F221EC4(uint64_t a1)
{
  v2 = sub_22F222D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F221F00(uint64_t a1)
{
  v2 = sub_22F222D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicBagContents.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27D0, &unk_22F77AD70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - v6;
  v8 = *v2;
  v9 = v2[32];
  v10 = v2[33];
  v21[1] = v2[34];
  v22 = v10;
  v21[0] = v2[35];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F222D4C();

  sub_22F742210();
  *&v24 = v8;
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0800, &qword_22F78A570);
  sub_22F222E48(&qword_2810A93B0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  v11 = v23;
  sub_22F741FE0();
  if (v11)
  {
  }

  else
  {
    v12 = v22;

    v13 = *(v2 + 27);
    v36 = *(v2 + 25);
    v37 = v13;
    v38 = *(v2 + 29);
    v39 = *(v2 + 248);
    v14 = *(v2 + 19);
    v32 = *(v2 + 17);
    v33 = v14;
    v15 = *(v2 + 23);
    v34 = *(v2 + 21);
    v35 = v15;
    v16 = *(v2 + 11);
    v28 = *(v2 + 9);
    v29 = v16;
    v17 = *(v2 + 15);
    v30 = *(v2 + 13);
    v31 = v17;
    v18 = *(v2 + 3);
    v24 = *(v2 + 1);
    v25 = v18;
    v19 = *(v2 + 7);
    v26 = *(v2 + 5);
    v27 = v19;
    v40 = 1;
    sub_22F222DA0();
    sub_22F741FE0();
    *&v24 = v9;
    *(&v24 + 1) = v12;
    v40 = 2;
    sub_22F222DF4();
    sub_22F741FE0();
    LOBYTE(v24) = 3;
    sub_22F741FC0();
    LOBYTE(v24) = 4;
    sub_22F741FC0();
  }

  return (*(v5 + 8))(v7, v4);
}

void MusicBagContents.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB27D8, &qword_22F77AD80);
  v5 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v18 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F222D4C();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v8 = v5;
    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0800, &qword_22F78A570);
    LOBYTE(v22[0]) = 0;
    sub_22F222E48(&qword_2810A93A8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_22F741F10();
    v10 = v23;
    v45 = 1;
    sub_22F1ED9CC();
    sub_22F741F10();
    v11 = v8;
    v74 = v58;
    v75 = v59;
    v76 = v60;
    v77 = v61;
    v70 = v54;
    v71 = v55;
    v72 = v56;
    v73 = v57;
    v66 = v50;
    v67 = v51;
    v68 = v52;
    v69 = v53;
    v62 = v46;
    v63 = v47;
    v64 = v48;
    v65 = v49;
    LOBYTE(v22[0]) = 2;
    sub_22F1EDA20();
    sub_22F741F10();
    v12 = v23;
    v13 = v24;
    LOBYTE(v23) = 3;
    v20 = sub_22F741EF0();
    v44 = 4;
    v14 = sub_22F741EF0();
    v15 = *(v11 + 8);
    v19 = v14;
    v15(v7, v21);
    *&v22[25] = v74;
    *&v22[27] = v75;
    *&v22[29] = v76;
    *&v22[17] = v70;
    *&v22[19] = v71;
    *&v22[21] = v72;
    *&v22[23] = v73;
    *&v22[9] = v66;
    *&v22[11] = v67;
    *&v22[13] = v68;
    *&v22[15] = v69;
    *&v22[1] = v62;
    *&v22[3] = v63;
    *&v22[5] = v64;
    v22[0] = v10;
    LOBYTE(v22[31]) = v77;
    *&v22[7] = v65;
    v22[32] = v12;
    v17 = v19;
    v16 = v20;
    v22[33] = v13;
    v22[34] = v20;
    v22[35] = v19;
    memcpy(v9, v22, 0x120uLL);
    sub_22F1ED970(v22, &v23);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v36 = v74;
    v37 = v75;
    v38 = v76;
    v32 = v70;
    v33 = v71;
    v34 = v72;
    v35 = v73;
    v28 = v66;
    v29 = v67;
    v30 = v68;
    v31 = v69;
    v24 = v62;
    v25 = v63;
    v26 = v64;
    v23 = v10;
    v39 = v77;
    v27 = v65;
    v40 = v12;
    v41 = v13;
    v42 = v16;
    v43 = v17;
    sub_22F162EC8(&v23);
  }
}

unint64_t sub_22F2226E4()
{
  result = qword_2810AB768[0];
  if (!qword_2810AB768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810AB768);
  }

  return result;
}

BOOL sub_22F222738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_22F741AF0();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t _s11PhotosGraph16JobConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return result;
  }

  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 64))
    {
      return 0;
    }

    result = 0;
    if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
    {
      return result;
    }
  }

  result = 0;
  v4.f64[1] = *(a1 + 128);
  v5.f64[1] = *(a2 + 128);
  v4.f64[0] = *(a1 + 112);
  v5.f64[0] = *(a2 + 112);
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 72), *(a2 + 72)), vceqq_f64(*(a1 + 96), *(a2 + 96))), vuzp1q_s32(vceqq_f64(v4, v5), vceqq_f64(*(a1 + 136), *(a2 + 136)))))) & 1) != 0 && *(a1 + 160) == *(a2 + 160) && *(a1 + 88) == *(a2 + 88) && *(a1 + 120) == *(a2 + 120) && *(a1 + 152) == *(a2 + 152))
  {
    if (*(a1 + 200))
    {
      if (*(a2 + 200))
      {
        goto LABEL_28;
      }

      return 0;
    }

    if (*(a2 + 200))
    {
      return 0;
    }

    result = 0;
    if (*(a1 + 168) == *(a2 + 168) && *(a1 + 176) == *(a2 + 176) && *(a1 + 184) == *(a2 + 184) && *(a1 + 192) == *(a2 + 192))
    {
LABEL_28:
      if (*(a1 + 240))
      {
        if (*(a2 + 240))
        {
          return 1;
        }
      }

      else if ((*(a2 + 240) & 1) == 0 && *(a1 + 208) == *(a2 + 208) && *(a1 + 216) == *(a2 + 216) && *(a1 + 224) == *(a2 + 224) && *(a1 + 232) == *(a2 + 232))
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t _s11PhotosGraph16MusicBagContentsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 256);
  v6 = *(a1 + 264);
  v5 = *(a1 + 272);
  v7 = *(a1 + 280);
  v8 = *(a2 + 256);
  v10 = *(a2 + 264);
  v9 = *(a2 + 272);
  v11 = *(a2 + 280);
  if ((sub_22F15BB70(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 216);
  v30[12] = *(a1 + 200);
  v30[13] = v12;
  v30[14] = *(a1 + 232);
  v31 = *(a1 + 248);
  v13 = *(a1 + 152);
  v30[8] = *(a1 + 136);
  v30[9] = v13;
  v14 = *(a1 + 184);
  v30[10] = *(a1 + 168);
  v30[11] = v14;
  v15 = *(a1 + 88);
  v30[4] = *(a1 + 72);
  v30[5] = v15;
  v16 = *(a1 + 120);
  v30[6] = *(a1 + 104);
  v30[7] = v16;
  v17 = *(a1 + 24);
  v30[0] = *(a1 + 8);
  v30[1] = v17;
  v18 = *(a1 + 56);
  v30[2] = *(a1 + 40);
  v30[3] = v18;
  v19 = *(a2 + 216);
  v28[12] = *(a2 + 200);
  v28[13] = v19;
  v28[14] = *(a2 + 232);
  v29 = *(a2 + 248);
  v20 = *(a2 + 152);
  v28[8] = *(a2 + 136);
  v28[9] = v20;
  v21 = *(a2 + 184);
  v28[10] = *(a2 + 168);
  v28[11] = v21;
  v22 = *(a2 + 88);
  v28[4] = *(a2 + 72);
  v28[5] = v22;
  v23 = *(a2 + 120);
  v28[6] = *(a2 + 104);
  v28[7] = v23;
  v24 = *(a2 + 24);
  v28[0] = *(a2 + 8);
  v28[1] = v24;
  v25 = *(a2 + 56);
  v28[2] = *(a2 + 40);
  v28[3] = v25;
  v26 = _s11PhotosGraph16JobConfigurationV2eeoiySbAC_ACtFZ_0(v30, v28) & (v4 == v8);
  if (v6 != v10)
  {
    v26 = 0;
  }

  if (v5 != v9)
  {
    v26 = 0;
  }

  if (v7 == v11)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22F222BFC()
{
  result = qword_2810AB740;
  if (!qword_2810AB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB740);
  }

  return result;
}

unint64_t sub_22F222C50()
{
  result = qword_2810AB750;
  if (!qword_2810AB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB750);
  }

  return result;
}

unint64_t sub_22F222CA4()
{
  result = qword_2810AB748;
  if (!qword_2810AB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB748);
  }

  return result;
}

unint64_t sub_22F222CF8()
{
  result = qword_2810AA3D8;
  if (!qword_2810AA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3D8);
  }

  return result;
}

unint64_t sub_22F222D4C()
{
  result = qword_2810AB5F8[0];
  if (!qword_2810AB5F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810AB5F8);
  }

  return result;
}

unint64_t sub_22F222DA0()
{
  result = qword_2810AB728;
  if (!qword_2810AB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB728);
  }

  return result;
}

unint64_t sub_22F222DF4()
{
  result = qword_2810AA3C0;
  if (!qword_2810AA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3C0);
  }

  return result;
}

uint64_t sub_22F222E48(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0800, &qword_22F78A570);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy241_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_22F222F00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 241))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F222F20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
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

  *(result + 241) = v3;
  return result;
}

uint64_t sub_22F222FC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_22F22300C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JobConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JobConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F22322C()
{
  result = qword_27DAB27E0;
  if (!qword_27DAB27E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB27E0);
  }

  return result;
}

unint64_t sub_22F223284()
{
  result = qword_27DAB27E8;
  if (!qword_27DAB27E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB27E8);
  }

  return result;
}

unint64_t sub_22F2232DC()
{
  result = qword_27DAB27F0;
  if (!qword_27DAB27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB27F0);
  }

  return result;
}

unint64_t sub_22F223334()
{
  result = qword_27DAB27F8;
  if (!qword_27DAB27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB27F8);
  }

  return result;
}

unint64_t sub_22F22338C()
{
  result = qword_2810AB5E8;
  if (!qword_2810AB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB5E8);
  }

  return result;
}

unint64_t sub_22F2233E4()
{
  result = qword_2810AB5F0;
  if (!qword_2810AB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB5F0);
  }

  return result;
}

unint64_t sub_22F22343C()
{
  result = qword_2810AA3C8;
  if (!qword_2810AA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3C8);
  }

  return result;
}

unint64_t sub_22F223494()
{
  result = qword_2810AA3D0;
  if (!qword_2810AA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3D0);
  }

  return result;
}

unint64_t sub_22F2234EC()
{
  result = qword_2810AB730;
  if (!qword_2810AB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB730);
  }

  return result;
}

unint64_t sub_22F223544()
{
  result = qword_2810AB738;
  if (!qword_2810AB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB738);
  }

  return result;
}

unint64_t sub_22F22359C()
{
  result = qword_2810AB758;
  if (!qword_2810AB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB758);
  }

  return result;
}

unint64_t sub_22F2235F4()
{
  result = qword_2810AB760;
  if (!qword_2810AB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB760);
  }

  return result;
}

unint64_t sub_22F223648(uint64_t a1, uint64_t a2)
{
  v2 = sub_22F741E30();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22F223694(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x726F46636973756DLL && a2 == 0xEB00000000756F59;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xED00006369706F54 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xEE00746E656D6F4DLL || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7924F0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xEC000000656D6954 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022F78E880 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022F78E8A0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_22F2238DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x800000022F792510 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F7919A0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022F7919C0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022F791900 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022F791950 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_22F742040();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

_BYTE *sub_22F223A94@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t static MusicKitCatalogPlaylist.Attributes.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22F742040(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_22F742040();
    }
  }

  return result;
}

uint64_t sub_22F223BB8()
{
  if (*v0)
  {
    return 0x7473696C79616C70;
  }

  else
  {
    return 1701667182;
  }
}

void sub_22F223BF4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_22F742040() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xEC00000065707954)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22F742040();

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

uint64_t sub_22F223CD4(uint64_t a1)
{
  v2 = sub_22F223EE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F223D10(uint64_t a1)
{
  v2 = sub_22F223EE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylist.Attributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2800, &qword_22F77B4F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F223EE0();
  sub_22F742210();
  v12 = 0;
  v8 = v10[3];
  sub_22F741F80();
  if (!v8)
  {
    v11 = 1;
    sub_22F741F80();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22F223EE0()
{
  result = qword_27DAB2808;
  if (!qword_27DAB2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2808);
  }

  return result;
}

void MusicKitCatalogPlaylist.Attributes.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2810, &qword_22F77B4F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F223EE0();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v18 = 0;
    v9 = sub_22F741EB0();
    v11 = v10;
    v16 = v9;
    v17 = 1;
    v12 = sub_22F741EB0();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    *a2 = v16;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v14;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t static MusicKitCatalogPlaylist.Relationships.Artwork.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_22F742040();
  }
}

uint64_t sub_22F2241B0(uint64_t a1)
{
  v2 = sub_22F2243E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2241EC(uint64_t a1)
{
  v2 = sub_22F2243E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylist.Relationships.Artwork.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2818, &qword_22F77B500);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2243E4();
  sub_22F742210();
  v14 = 0;
  sub_22F741FC0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_22F741FC0();
  v12 = 2;
  sub_22F741F80();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_22F2243E4()
{
  result = qword_27DAB2820;
  if (!qword_27DAB2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2820);
  }

  return result;
}

uint64_t MusicKitCatalogPlaylist.Relationships.Artwork.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2828, &qword_22F77B508);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2243E4();
  sub_22F742200();
  if (!v2)
  {
    v19 = 0;
    v9 = sub_22F741EF0();
    v18 = 1;
    v16 = sub_22F741EF0();
    v17 = 2;
    v11 = sub_22F741EB0();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    v14 = v16;
    *a2 = v9;
    a2[1] = v14;
    a2[2] = v11;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F224640(uint64_t a1)
{
  v2 = sub_22F22485C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F22467C(uint64_t a1)
{
  v2 = sub_22F22485C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylist.Relationships.PlaylistToSongs.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2830, &unk_22F77B510);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F22485C();

  sub_22F742210();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EE8, &qword_22F777808);
  sub_22F224AB4(&qword_27DAB2840, sub_22F2248B0, MEMORY[0x277D83948]);
  sub_22F741FE0();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22F22485C()
{
  result = qword_27DAB2838;
  if (!qword_27DAB2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2838);
  }

  return result;
}

unint64_t sub_22F2248B0()
{
  result = qword_27DAB2848;
  if (!qword_27DAB2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2848);
  }

  return result;
}

uint64_t MusicKitCatalogPlaylist.Relationships.PlaylistToSongs.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2850, &qword_22F77B520);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F22485C();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EE8, &qword_22F777808);
    sub_22F224AB4(&qword_2810A9320, sub_22F1A8480, MEMORY[0x277D83978]);
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F224AB4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1EE8, &qword_22F777808);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22F224B70(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736B63617274 && a2 == 0xE600000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_22F224BF4(uint64_t a1)
{
  v2 = sub_22F224DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F224C30(uint64_t a1)
{
  v2 = sub_22F224DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogPlaylist.Relationships.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2858, &qword_22F77B528);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F224DCC();

  sub_22F742210();
  v9[1] = v7;
  sub_22F224E20();
  sub_22F741FE0();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22F224DCC()
{
  result = qword_27DAB2860;
  if (!qword_27DAB2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2860);
  }

  return result;
}

unint64_t sub_22F224E20()
{
  result = qword_27DAB2868;
  if (!qword_27DAB2868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2868);
  }

  return result;
}

uint64_t MusicKitCatalogPlaylist.Relationships.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2870, &qword_22F77B530);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F224DCC();
  sub_22F742200();
  if (!v2)
  {
    sub_22F224FE0();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F224FE0()
{
  result = qword_27DAB2878;
  if (!qword_27DAB2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2878);
  }

  return result;
}

uint64_t MusicKitCatalogPlaylist.id.getter()
{
  v1 = *v0;

  return v1;
}

double MusicKitCatalogPlaylist.attributes.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

double MusicKitCatalogPlaylist.relationships.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 48);

  return result;
}

uint64_t sub_22F2250E4()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6974616C6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_22F225144@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F225C1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F22516C(uint64_t a1)
{
  v2 = sub_22F2254AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2251A8(uint64_t a1)
{
  v2 = sub_22F2254AC();

  return MEMORY[0x2821FE720](a1, v2);
}

void MusicKitCatalogPlaylist.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2880, &qword_22F77B538);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2254AC();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v22) = 0;
    v9 = sub_22F741EB0();
    v21 = v10;
    v26 = 1;
    sub_22F225500();
    sub_22F741F10();
    v17 = v24;
    v18 = v22;
    v19 = v25;
    v20 = v23;
    v26 = 2;
    sub_22F225554();
    sub_22F741EA0();
    (*(v6 + 8))(v8, v5);
    v12 = v21;
    v11 = v22;
    *a2 = v9;
    a2[1] = v12;
    v13 = v17;
    v15 = v19;
    v14 = v20;
    a2[2] = v18;
    a2[3] = v14;
    a2[4] = v13;
    a2[5] = v15;
    a2[6] = v11;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

unint64_t sub_22F2254AC()
{
  result = qword_27DAB2888;
  if (!qword_27DAB2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2888);
  }

  return result;
}

unint64_t sub_22F225500()
{
  result = qword_27DAB2890;
  if (!qword_27DAB2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2890);
  }

  return result;
}

unint64_t sub_22F225554()
{
  result = qword_27DAB2898;
  if (!qword_27DAB2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2898);
  }

  return result;
}

uint64_t sub_22F2255C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_22F225608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22F2256F8()
{
  result = qword_27DAB28A0;
  if (!qword_27DAB28A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28A0);
  }

  return result;
}

unint64_t sub_22F225750()
{
  result = qword_27DAB28A8;
  if (!qword_27DAB28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28A8);
  }

  return result;
}

unint64_t sub_22F2257A8()
{
  result = qword_27DAB28B0;
  if (!qword_27DAB28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28B0);
  }

  return result;
}

unint64_t sub_22F225800()
{
  result = qword_27DAB28B8;
  if (!qword_27DAB28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28B8);
  }

  return result;
}

unint64_t sub_22F225858()
{
  result = qword_27DAB28C0;
  if (!qword_27DAB28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28C0);
  }

  return result;
}

unint64_t sub_22F2258B0()
{
  result = qword_27DAB28C8;
  if (!qword_27DAB28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28C8);
  }

  return result;
}

unint64_t sub_22F225908()
{
  result = qword_27DAB28D0;
  if (!qword_27DAB28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28D0);
  }

  return result;
}

unint64_t sub_22F225960()
{
  result = qword_27DAB28D8;
  if (!qword_27DAB28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28D8);
  }

  return result;
}

unint64_t sub_22F2259B8()
{
  result = qword_27DAB28E0;
  if (!qword_27DAB28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28E0);
  }

  return result;
}

unint64_t sub_22F225A10()
{
  result = qword_27DAB28E8;
  if (!qword_27DAB28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28E8);
  }

  return result;
}

unint64_t sub_22F225A68()
{
  result = qword_27DAB28F0;
  if (!qword_27DAB28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28F0);
  }

  return result;
}

unint64_t sub_22F225AC0()
{
  result = qword_27DAB28F8;
  if (!qword_27DAB28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB28F8);
  }

  return result;
}

unint64_t sub_22F225B18()
{
  result = qword_27DAB2900;
  if (!qword_27DAB2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2900);
  }

  return result;
}

unint64_t sub_22F225B70()
{
  result = qword_27DAB2908;
  if (!qword_27DAB2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2908);
  }

  return result;
}

unint64_t sub_22F225BC8()
{
  result = qword_27DAB2910;
  if (!qword_27DAB2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2910);
  }

  return result;
}

uint64_t sub_22F225C1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void static MomentGraphFeature.extractors(for:with:in:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v4 = a4;
  v56 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a3;
    v8 = (a1 + 32);
    v9 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = *v8++;
      switch(v10)
      {
        case 1:
          v33 = PGPOIFeatureExtractor;
          goto LABEL_20;
        case 2:
          v32 = PGROIFeatureExtractor;
          goto LABEL_27;
        case 3:
          v26 = PGPartOfDayFeatureExtractor;
          goto LABEL_33;
        case 4:
          v26 = type metadata accessor for DayOfWeekFeatureExtractor();
          goto LABEL_33;
        case 5:
          v26 = type metadata accessor for AtFrequentLocationFeatureExtractor();
          goto LABEL_33;
        case 6:
          v32 = PGMobilityFeatureExtractor;
LABEL_27:
          v35 = objc_allocWithZone(v32);
          *&v51[0] = 0;
          v12 = [v35 initWithVersion:2 error:v51];
          goto LABEL_34;
        case 7:
          v33 = PGPublicEventCategoryFeatureExtractor;
LABEL_20:
          v34 = objc_allocWithZone(v33);
          *&v51[0] = 0;
          v12 = [v34 initWithVersion:3 error:v51];
          goto LABEL_34;
        case 8:
          v26 = type metadata accessor for AtHomeOrWorkFeatureExtractor();
LABEL_33:
          v40 = objc_allocWithZone(v26);
          *&v51[0] = 0;
          v12 = [v40 initWithError_];
          goto LABEL_34;
        case 9:
          v30 = objc_allocWithZone(type metadata accessor for FeatureExtractorAverageMomentScenes());
          v31 = v7;
          sub_22F23FAF0(0, v31);

          goto LABEL_29;
        case 10:
          IsInteresting = type metadata accessor for FeatureExtractorIsInteresting();
          v37 = objc_allocWithZone(IsInteresting);
          v38 = [a2 interestingSubset];
          *&v37[OBJC_IVAR___PGFeatureExtractorIsInteresting_interestingMomentNodes] = v38;
          v39 = [a2 smartInterestingSubset];
          *&v37[OBJC_IVAR___PGFeatureExtractorIsInteresting_smartInterestingMomentNodes] = v39;
          v48.receiver = v37;
          v48.super_class = IsInteresting;
          objc_msgSendSuper2(&v48, sel_init);
LABEL_29:
          MEMORY[0x231900D00]();
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22F7411C0();
          }

          sub_22F741220();
          v9 = v54;
          goto LABEL_4;
        case 11:
          v45 = v5;
          HasBirthdayFeatureExtractor = type metadata accessor for MomentHasBirthdayFeatureExtractor();
          v17 = objc_allocWithZone(HasBirthdayFeatureExtractor);
          v18 = objc_opt_self();
          v19 = a2;
          v20 = [v18 personInMoment];
          v21 = [objc_msgSend(v19 graph)];
          swift_unknownObjectRelease();
          v22 = [v21 concreteGraph];

          if (!v22)
          {
            sub_22F741D40();
            __break(1u);
            return;
          }

          v23 = [v19 elementIdentifiers];
          v24 = [v22 adjacencyWithSources:v23 relation:v20];

          v25 = &v17[OBJC_IVAR___PGMomentHasBirthdayFeatureExtractor_personNodesByMomentNode];
          *v25 = v24;
          *(v25 + 1) = v22;
          v49.receiver = v17;
          v49.super_class = HasBirthdayFeatureExtractor;
          objc_msgSendSuper2(&v49, sel_init);

          MEMORY[0x231900D00]();
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22F7411C0();
          }

          sub_22F741220();
          v9 = v54;
          v7 = a3;
          v4 = a4;
          v5 = v45;
LABEL_4:
          if (!--v6)
          {
            goto LABEL_38;
          }

          break;
        case 12:
          v27 = [objc_allocWithZone(type metadata accessor for FeatureExtractorStoredCLIP()) init];
          v28 = type metadata accessor for FeatureExtractorAssetAverage();
          v29 = objc_allocWithZone(v28);
          *&v29[OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor] = v27;
          v29[OBJC_IVAR___PGFeatureExtractorAssetAverage_skipAssetsWithErrors] = 1;
          v50.receiver = v29;
          v50.super_class = v28;
          objc_msgSendSuper2(&v50, sel_init);
          goto LABEL_23;
        case 13:
          [objc_allocWithZone(type metadata accessor for LibraryAveragePersonCountFeatureExtractor()) init];
          goto LABEL_23;
        case 14:
          v13 = [objc_allocWithZone(type metadata accessor for FeatureExtractorCircularDatetime()) init];
          v14 = type metadata accessor for FeatureExtractorAssetAverage();
          v15 = objc_allocWithZone(v14);
          *&v15[OBJC_IVAR___PGFeatureExtractorAssetAverage_featureExtractor] = v13;
          v15[OBJC_IVAR___PGFeatureExtractorAssetAverage_skipAssetsWithErrors] = 1;
          v52.receiver = v15;
          v52.super_class = v14;
          objc_msgSendSuper2(&v52, sel_init);
LABEL_23:
          MEMORY[0x231900D00]();
          if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22F7411C0();
          }

          sub_22F741220();
          v47 = v53;
          goto LABEL_4;
        default:
          v11 = objc_allocWithZone(PGPeopleFeatureExtractor);
          *&v51[0] = 0;
          v12 = [v11 initWithTopNumberOfPeople:10 graph:v7 error:v51];
LABEL_34:
          if (!v12)
          {
            v42 = *&v51[0];
            sub_22F73F370();

            swift_willThrow();

            return;
          }

          MEMORY[0x231900D00](*&v51[0]);
          if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22F7411C0();
          }

          sub_22F741220();
          v5 = v55;
          goto LABEL_4;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
LABEL_38:
  EventFeatureExtractors.init(graphFeatureExtractors:momentNodeFeatureExtractors:assetFetchResultFeatureExtractors:)(v5, v9, v47, v51);
  v41 = v51[1];
  *v4 = v51[0];
  v4[1] = v41;
}

PhotosGraph::MomentGraphFeature __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MomentGraphFeature.init(featureName:)(Swift::String featureName)
{
  object = featureName._object;
  countAndFlagsBits = featureName._countAndFlagsBits;
  v4 = v1;
  if (sub_22F740E20() == featureName._countAndFlagsBits && v5 == object)
  {
    v8 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v7 = sub_22F742040();

  if (v7)
  {
    v8 = 0;
LABEL_9:

    *v4 = v8;
    return result;
  }

  if (sub_22F740E20() == countAndFlagsBits && v10 == object)
  {
    v8 = 1;
    goto LABEL_8;
  }

  v12 = sub_22F742040();

  if (v12)
  {
    v8 = 1;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v13 == object)
  {
    v8 = 2;
    goto LABEL_8;
  }

  v15 = sub_22F742040();

  if (v15)
  {
    v8 = 2;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v16 == object)
  {
    v8 = 3;
    goto LABEL_8;
  }

  v17 = sub_22F742040();

  if (v17)
  {
    v8 = 3;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v18 == object)
  {
    v8 = 4;
    goto LABEL_8;
  }

  v19 = sub_22F742040();

  if (v19)
  {
    v8 = 4;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v20 == object)
  {
    v8 = 5;
    goto LABEL_8;
  }

  v21 = sub_22F742040();

  if (v21)
  {
    v8 = 5;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v22 == object)
  {
    v8 = 6;
    goto LABEL_8;
  }

  v23 = sub_22F742040();

  if (v23)
  {
    v8 = 6;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v24 == object)
  {
    v8 = 7;
    goto LABEL_8;
  }

  v25 = sub_22F742040();

  if (v25)
  {
    v8 = 7;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v26 == object)
  {
    v8 = 8;
    goto LABEL_8;
  }

  v27 = sub_22F742040();

  if (v27)
  {
    v8 = 8;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v28 == object)
  {
    v8 = 9;
    goto LABEL_8;
  }

  v29 = sub_22F742040();

  if (v29)
  {
    v8 = 9;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v30 == object)
  {
    v8 = 10;
    goto LABEL_8;
  }

  v31 = sub_22F742040();

  if (v31)
  {
    v8 = 10;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v32 == object)
  {
    v8 = 11;
    goto LABEL_8;
  }

  v33 = sub_22F742040();

  if (v33)
  {
    v8 = 11;
    goto LABEL_9;
  }

  v43 = sub_22F740E20();
  v45 = v34;
  MEMORY[0x231900B10](95, 0xE100000000000000);
  v35 = sub_22F740E20();
  MEMORY[0x231900B10](v35);

  if (v43 == countAndFlagsBits && v45 == object)
  {
    v8 = 12;
    goto LABEL_8;
  }

  v36 = sub_22F742040();

  if (v36)
  {
    v8 = 12;
    goto LABEL_9;
  }

  if (sub_22F740E20() == countAndFlagsBits && v37 == object)
  {
    v8 = 13;
    goto LABEL_8;
  }

  v38 = sub_22F742040();

  if (v38)
  {
    v8 = 13;
    goto LABEL_9;
  }

  v44 = sub_22F740E20();
  v46 = v39;
  MEMORY[0x231900B10](95, 0xE100000000000000);
  v40 = sub_22F740E20();
  MEMORY[0x231900B10](v40);

  if (v44 == countAndFlagsBits && v46 == object)
  {
    v8 = 14;
    goto LABEL_8;
  }

  v41 = sub_22F742040();

  if (v41)
  {
    v8 = 14;
    goto LABEL_9;
  }

  sub_22F176540();
  swift_allocError();
  *v42 = countAndFlagsBits;
  v42[1] = object;
  v42[2] = 0x4000000000000000;
  return swift_willThrow();
}

uint64_t MomentGraphFeature.FeatureType.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t MomentGraphFeature.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

unint64_t sub_22F226B04()
{
  result = qword_27DAB2918;
  if (!qword_27DAB2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2918);
  }

  return result;
}

unint64_t sub_22F226B5C()
{
  result = qword_27DAB2920;
  if (!qword_27DAB2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2920);
  }

  return result;
}

unint64_t sub_22F226BB4()
{
  result = qword_27DAB2928;
  if (!qword_27DAB2928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2930, &qword_22F77BE20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2928);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MomentGraphFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MomentGraphFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_22F226D78()
{
  if (v0[4])
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    result = sub_22F741A00();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    result = *(v2 + 8 * v3 + 32);
    v4 = (v3 + 1);
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_10;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = MEMORY[0x2319016F0](v0[1], v2);
  v4 = (v3 + 1);
  if (__OFADD__(v3, 1))
  {
    goto LABEL_18;
  }

LABEL_10:
  v0[1] = v4;
  v5 = v0[3];
  v6 = *(v0[2] + 16);
  if (v5 == v6)
  {

LABEL_12:
    result = 0;
    *(v0 + 32) = 1;
    return result;
  }

  if (v5 < v6)
  {
    v7 = result;
    v0[3] = v5 + 1;

    return v7;
  }

LABEL_21:
  __break(1u);
  return result;
}

id sub_22F226E88(id result)
{
  if (*(v2 + 56))
  {
    return 0;
  }

  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = *(v2 + 24);
LABEL_12:
    v10 = *(*v2 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v5))));
    v3 = *v10;
    result = *(v10 + 8);
    *(v2 + 24) = v6;
    *(v2 + 32) = (v5 - 1) & v5;
    v1 = *(v2 + 40);
    if (!(v1 >> 62))
    {
      v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_14;
    }
  }

  else
  {
    v7 = (*(v2 + 16) + 64) >> 6;
    if (v7 <= v4 + 1)
    {
      v8 = v4 + 1;
    }

    else
    {
      v8 = (*(v2 + 16) + 64) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 >= v7)
      {
        *(v2 + 24) = v9;
        *(v2 + 32) = 0;
        goto LABEL_22;
      }

      v5 = *(*(v2 + 8) + 8 * v6);
      ++v4;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  v14 = result;
  v11 = sub_22F741A00();
  result = v14;
LABEL_14:
  v12 = *(v2 + 48);
  if (v12 == v11)
  {
LABEL_22:
    result = 0;
    *(v2 + 56) = 1;
    return result;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {

    result = MEMORY[0x2319016F0](v12, v1);
LABEL_19:
    if (!__OFADD__(v12, 1))
    {
      result = v3;
      *(v2 + 48) = v12 + 1;
      return result;
    }

    goto LABEL_27;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v12 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v1 + 8 * v12 + 32);

    result = v13;
    goto LABEL_19;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_22F227010(_OWORD *a1@<X8>)
{
  if (*(v2 + 32) == 1)
  {
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return;
  }

  v8 = *(v2 + 8);
  v9 = *(*v2 + 16);
  if (v8 == v9)
  {
    goto LABEL_8;
  }

  if (v8 >= v9)
  {
    __break(1u);
  }

  else
  {
    v10 = (*v2 + 40 * v8);
    v6 = v10[4];
    v1 = v10[5];
    v7 = v10[6];
    v3 = v10[7];
    v4 = v10[8];
    *(v2 + 8) = v8 + 1;
    v5 = *(v2 + 16);
    if (!(v5 >> 62))
    {
      v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  v17 = a1;
  v11 = sub_22F741A00();
  a1 = v17;
LABEL_7:
  v12 = *(v2 + 24);
  if (v12 == v11)
  {
LABEL_8:
    *(v2 + 32) = 1;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    return;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v13 = a1;

    v15 = MEMORY[0x2319016F0](v12, v5);
    v16 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = a1;
  if (v12 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v5 + 8 * v12 + 32);

    v15 = v14;
    v16 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
LABEL_13:
      *(v2 + 24) = v16;
      *v13 = v6;
      v13[1] = v1;
      v13[2] = v7;
      v13[3] = v3;
      v13[4] = v4;
      v13[5] = v15;
      return;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

double MusicKitClient.requestFactory.getter@<D0>(void *a1@<X8>)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;

  return result;
}

uint64_t sub_22F227238()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_22F227268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void *a7, uint64_t a8, uint64_t a9)
{
  v57 = a6;
  v55 = a4;
  v56 = a5;
  v58 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_22F73EEC0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v19 = sub_22F740B90();
  __swift_project_value_buffer(v19, qword_2810B4D48);
  v20 = *(v16 + 16);
  v54 = a1;
  v20(v18, a1, v15);
  v21 = sub_22F740B70();
  v22 = sub_22F7415C0();
  if (os_log_type_enabled(v21, v22))
  {
    v52 = a8;
    v53 = a7;
    v23 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock = v50;
    v51 = v23;
    *v23 = 136315138;
    sub_22F73EEB0();
    v24 = sub_22F73F470();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v14, 1, v24) == 1)
    {
      sub_22F120ADC(v14, &qword_27DAB29A0, &unk_22F77BFC0);
      v26 = 0xE300000000000000;
      v27 = 7104878;
    }

    else
    {
      v27 = sub_22F73F3A0();
      v26 = v28;
      (*(v25 + 8))(v14, v24);
    }

    (*(v16 + 8))(v18, v15);
    v29 = sub_22F145F20(v27, v26, &aBlock);

    v30 = v51;
    *(v51 + 1) = v29;
    _os_log_impl(&dword_22F0FC000, v21, v22, "[MusicKitClient] Query: %s", v30, 0xCu);
    v31 = v50;
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x2319033A0](v31, -1, -1);
    MEMORY[0x2319033A0](v30, -1, -1);

    a8 = v52;
    a7 = v53;
  }

  else
  {

    (*(v16 + 8))(v18, v15);
  }

  v32 = v58;
  v33 = *(v58 + 23);
  v34 = objc_allocWithZone(MEMORY[0x277D7FB38]);
  if (v33)
  {
    v63 = sub_22F22F778;
    v64 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_22F22F7B0;
    v62 = &block_descriptor_275;
    v35 = _Block_copy(&aBlock);
    v34 = [v34 initWithBlock_];
    _Block_release(v35);

    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
LABEL_13:
      v37 = objc_allocWithZone(MEMORY[0x277D7FB40]);
      v38 = v34;
      v39 = sub_22F73EE90();
      v40 = [v37 initWithURLRequest:v39 requestContext:v38];

      v41 = v40;
      [v41 setMaxRetryCount_];
      v42 = [objc_opt_self() sharedSessionManager];
      v43 = [v42 sessionWithQualityOfService_];

      v44 = swift_allocObject();
      v45 = v56;
      *(v44 + 16) = v55;
      *(v44 + 24) = v45;
      *(v44 + 32) = v57;
      *(v44 + 40) = a7;
      *(v44 + 48) = a8;
      *(v44 + 56) = a9;
      v63 = sub_22F236030;
      v64 = v44;
      aBlock = MEMORY[0x277D85DD0];
      v60 = 1107296256;
      v61 = sub_22F16AC08;
      v62 = &block_descriptor_272;
      v46 = _Block_copy(&aBlock);
      a7;

      [v43 enqueueDataRequest:v41 withCompletionHandler:v46];
      _Block_release(v46);
      v47 = [v41 progress];

      v48 = sub_22F741720();
      return;
    }

    __break(1u);
  }

  v63 = sub_22F22F794;
  v64 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  v61 = sub_22F22F7B0;
  v62 = &block_descriptor_266;
  v36 = _Block_copy(&aBlock);
  v34 = [v34 initWithBlock_];
  _Block_release(v36);

  if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
}

void sub_22F2278EC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, unint64_t, uint64_t), uint64_t a8)
{
  v45[2] = a8;
  v46 = a7;
  v45[1] = a6;
  v10 = sub_22F740AD0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741730();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  (*(v11 + 8))(v13, v10);
  if (!a1)
  {
    sub_22F7416A0();
    type metadata accessor for MusicKitClientError(0);
    sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
    v33 = swift_allocError();
    *v34 = a2;
    swift_storeEnumTagMultiPayload();
    v35 = a2;
    v46(v33, 0, 1);

    return;
  }

  v14 = a1;
  v15 = [v14 parsedBodyDictionary];
  if (!v15)
  {
    goto LABEL_22;
  }

  v16 = v15;
  v17 = sub_22F740CA0();

  v18 = [v14 bodyData];
  if (!v18)
  {

LABEL_22:
    sub_22F7416A0();
    type metadata accessor for MusicKitClientError(0);
    sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
    v41 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v46(v41, 0, 1);

    return;
  }

  v19 = v18;
  v20 = sub_22F73F510();
  v22 = v21;

  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v23 = sub_22F740B90();
  __swift_project_value_buffer(v23, qword_2810B4D48);

  v24 = sub_22F740B70();
  v25 = sub_22F7415D0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *&v50[0] = v27;
    *v26 = 136315138;
    v28 = sub_22F740CB0();
    v30 = sub_22F145F20(v28, v29, v50);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_22F0FC000, v24, v25, "[MusicKitClient] Response: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x2319033A0](v27, -1, -1);
    MEMORY[0x2319033A0](v26, -1, -1);
  }

  *&v49[0] = 0x73726F727265;
  *(&v49[0] + 1) = 0xE600000000000000;
  sub_22F741A90();
  if (*(v17 + 16) && (v31 = sub_22F122B24(v50), (v32 & 1) != 0))
  {
    sub_22F13A100(*(v17 + 56) + 32 * v31, v51);
    sub_22F139E70(v50);
  }

  else
  {
    sub_22F139E70(v50);
    memset(v51, 0, 32);
  }

  *&v47 = 0x6567617373656DLL;
  *(&v47 + 1) = 0xE700000000000000;
  sub_22F741A90();
  if (*(v17 + 16) && (v36 = sub_22F122B24(v50), (v37 & 1) != 0))
  {
    sub_22F13A100(*(v17 + 56) + 32 * v36, v49);
    sub_22F139E70(v50);
  }

  else
  {

    sub_22F139E70(v50);
    memset(v49, 0, sizeof(v49));
  }

  sub_22F1BCD04(v51, &v47);
  if (v48)
  {
    sub_22F107D08(&v47, v50);
    sub_22F13A100(v50, &v47);
    v38 = sub_22F740E90();
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    sub_22F120ADC(&v47, &qword_27DAB0C28, &qword_22F778980);
    v38 = 0;
    v40 = 0;
  }

  sub_22F1BCD04(v49, &v47);
  if (v48)
  {

    sub_22F107D08(&v47, v50);
    sub_22F13A100(v50, &v47);
    v38 = sub_22F740E90();
    v40 = v42;
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    sub_22F120ADC(&v47, &qword_27DAB0C28, &qword_22F778980);
    if (!v40)
    {
      sub_22F7416A0();
      sub_22F15C3C4(v20, v22);
      v46(v20, v22, 0);

      sub_22F133BF0(v20, v22);
      goto LABEL_28;
    }
  }

  sub_22F7416A0();
  type metadata accessor for MusicKitClientError(0);
  sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
  v43 = swift_allocError();
  *v44 = v38;
  v44[1] = v40;
  swift_storeEnumTagMultiPayload();
  v46(v43, 0, 1);

LABEL_28:
  sub_22F133BF0(v20, v22);
  sub_22F120ADC(v49, &qword_27DAB0C28, &qword_22F778980);
  sub_22F120ADC(v51, &qword_27DAB0C28, &qword_22F778980);
}

void sub_22F2280D8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  v109 = a4;
  v101 = sub_22F740AD0();
  v14 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22F73EEC0();
  v103 = *(v110 - 8);
  v16 = *(v103 + 64);
  MEMORY[0x28223BE20](v110);
  v99 = v87 - ((&v16[1].isa + 7) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v112 = v87 - v18;
  v19 = sub_22F73EEE0();
  MEMORY[0x28223BE20](v19);
  v108 = (v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = a2[1];
  v129 = *a2;
  v130 = v23;
  v131 = a2[2];
  v132 = *(a2 + 6);
  v24 = *(a1 + 16);
  if (!v24)
  {
    (a6)(MEMORY[0x277D84F90], 0);
    return;
  }

  v96 = a5;
  v97 = a6;
  v94 = v21;
  v95 = v20;
  v105 = a7;
  v106 = v16;
  v107 = v14;
  v111 = v7;
  if (qword_2810A9B98 != -1)
  {
LABEL_29:
    swift_once();
  }

  v25 = qword_2810B4E70;
  *&v26 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v26, 0, v25, v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
  v27 = swift_allocObject();
  v28 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v27 + 16) = MEMORY[0x277D84F90];
  *(v27 + 24) = v28;
  v104 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
  v29 = swift_allocObject();
  *(v29 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v102 = v29;
  *(v29 + 16) = 0;
  v30 = v29 + 16;
  v31 = v111;
  if ((v111[3] != a3 || v111[4] != v109) && (sub_22F742040() & 1) == 0)
  {
    Batch = MusicBag.songEquivalentQueryBatchSize()();
    v98 = 1;
    if (Batch)
    {
      goto LABEL_7;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    *(Batch + 16) = v24;
    os_unfair_lock_unlock((Batch + 32));

    (*(a6 + 16))(v86);

    goto LABEL_28;
  }

  Batch = MusicBag.songQueryBatchSize()();
  v98 = 0;
  if (!Batch)
  {
    goto LABEL_26;
  }

LABEL_7:
  v87[1] = v30;

  sub_22F233C24(0, v24, Batch, a1, Batch);
  v34 = v33;
  v109 = 0;

  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v35 = sub_22F740B90();
  __swift_project_value_buffer(v35, qword_2810B4D48);

  v36 = sub_22F740B70();
  v37 = sub_22F7415C0();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v97;
  if (v38)
  {
    v40 = swift_slowAlloc();
    *v40 = 134218240;
    *(v40 + 4) = v24;

    *(v40 + 12) = 2048;
    *(v40 + 14) = *(v34 + 16);

    _os_log_impl(&dword_22F0FC000, v36, v37, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v40, 0x16u);
    MEMORY[0x2319033A0](v40, -1, -1);
  }

  else
  {
  }

  v41 = *(v34 + 16);
  v42 = *(&v127 + 1);
  v88 = v34;
  v89 = v128;
  v43 = swift_allocObject();
  v44 = v126[1];
  *(v43 + 16) = v126[0];
  *(v43 + 32) = v44;
  *(v43 + 48) = v127;
  v45 = v96;
  *(v43 + 64) = v128;
  *(v43 + 72) = v45;
  v46 = v105;
  *(v43 + 80) = v39;
  *(v43 + 88) = v46;
  a1 = v102;
  v47 = v104;
  *(v43 + 96) = v102;
  *(v43 + 104) = v47;
  type metadata accessor for CompletionCounter();
  a6 = swift_allocObject();
  *(a6 + 16) = sub_22F233FA4;
  *(a6 + 24) = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
  v48 = swift_allocObject();
  *(v48 + 32) = 0;
  *(v48 + 16) = 0;
  v93 = v41;
  *(v48 + 24) = v41;
  *(a6 + 32) = v48;
  sub_22F73EF30();
  swift_allocObject();
  v87[2] = v42;

  v49 = v45;

  v50 = sub_22F73EF20();
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v51 = qword_2810A9170;
  v52 = v108;
  *v108 = qword_2810A9170;
  (*(v94 + 104))(v52, *MEMORY[0x277CC86D8], v95);
  v53 = v51;
  sub_22F73EF00();
  v54 = [v49 progressReportersForParallelOperationsWithCount_];
  sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
  v55 = sub_22F741180();

  v94 = v103 + 16;
  v95 = (v107 + 1);
  v92 = v103 + 32;
  v93 = &v106->isa + 7;
  v121 = v55;
  v122 = 0;
  v90 = v103 + 8;
  v91 = &v117;
  v123 = v88;
  v124 = 0;
  v125 = 0;
  v96 = v50;
  v97 = a6;
  while (1)
  {
    v56 = sub_22F226D78();
    if (!v56)
    {

      return;
    }

    v58 = v56;
    v59 = v57;
    v60 = v31[4];
    v61 = v31[5];
    v62 = v31[6];
    v63 = v31[7];
    v64 = v31[8];
    v115 = v31[3];
    v116 = v60;
    v117 = v61;
    v118 = v62;
    v119 = v63;
    v120 = v64;
    v113[0] = v129;
    v113[1] = v130;
    v113[2] = v131;
    v114 = v132;

    a3 = v109;
    MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v59, v113, v98, v112);
    if (a3)
    {
      break;
    }

    v108 = v58;
    v109 = 0;

    v65 = swift_allocObject();
    v66 = v104;
    v65[2] = v50;
    v65[3] = v66;
    v65[4] = a6;
    v65[5] = a1;
    v107 = v65;

    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v67 = v100;
    sub_22F740AC0();
    sub_22F740A90();
    (*v95)(v67, v101);
    v106 = v31[9];
    a3 = v103;
    v68 = v99;
    v69 = v110;
    (*(v103 + 16))(v99, v112, v110);
    v70 = (*(a3 + 80) + 16) & ~*(a3 + 80);
    v71 = &v93[v70] & 0xFFFFFFFFFFFFFFF8;
    v72 = (v71 + 63) & 0xFFFFFFFFFFFFFFF8;
    v105 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
    v73 = (v72 + 39) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    (*(a3 + 32))(v74 + v70, v68, v69);
    v75 = v74 + v71;
    v76 = v130;
    *v75 = v129;
    *(v75 + 16) = v76;
    *(v75 + 32) = v131;
    *(v75 + 48) = v132;
    *(v74 + v72) = v111;
    v77 = v74 + v105;
    v31 = v111;
    *v77 = "MusicKitClient HTTP Request";
    *(v77 + 8) = 27;
    *(v77 + 16) = 2;
    v78 = v108;
    *(v74 + v73) = v108;
    v79 = (v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8));
    v80 = v107;
    *v79 = sub_22F233FA8;
    v79[1] = v80;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_22F233FAC;
    *(v24 + 24) = v74;
    v119 = sub_22F233FB0;
    v120 = v24;
    v115 = MEMORY[0x277D85DD0];
    v116 = 1107296256;
    v117 = sub_22F2280B0;
    v118 = &block_descriptor_10;
    v81 = _Block_copy(&v115);
    sub_22F1D20B0(&v129, v113);

    v82 = v78;

    dispatch_sync(v106, v81);
    _Block_release(v81);

    (*(a3 + 8))(v112, v110);
    LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

    a1 = v102;
    v50 = v96;
    a6 = v97;
    if (v80)
    {
      __break(1u);
      goto LABEL_29;
    }
  }

  [*(a1 + 24) lock];
  LOBYTE(v24) = 1;
  swift_beginAccess();
  v83 = *(a1 + 16);
  *(a1 + 16) = a3;

  v84 = *(a1 + 24);
  v85 = a3;
  [v84 unlock];
  Batch = *(a6 + 32);

  os_unfair_lock_lock((Batch + 32));
  if ((*(Batch + 16) & 1) == 0)
  {
    goto LABEL_27;
  }

  os_unfair_lock_unlock((Batch + 32));

LABEL_28:
}

void sub_22F228D34(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22F1B2BBC(0);
  sub_22F7416A0();
  swift_beginAccess();
  v9 = *(a5 + 16);
  if (v9)
  {
    v10 = v9;
    a3(v9, 1);
  }

  else
  {
    [*(a6 + 24) lock];
    swift_beginAccess();
    a3(*(a6 + 16), 0);
    swift_endAccess();
    [*(a6 + 24) unlock];
  }
}

void *sub_22F228E7C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    [*(a7 + 24) lock];
    swift_beginAccess();
    v10 = *(a7 + 16);
    *(a7 + 16) = a1;

    v11 = *(a7 + 24);
    v12 = a1;
    [v11 unlock];
    v13 = *(a6 + 32);

    os_unfair_lock_lock((v13 + 32));
    if (*(v13 + 16))
    {
      os_unfair_lock_unlock((v13 + 32));
    }

    *(v13 + 16) = 1;
    os_unfair_lock_unlock((v13 + 32));

    return (*(a6 + 16))(result);
  }

  sub_22F1C9EB0();
  result = sub_22F73EF10();
  v16 = v50;
  v17 = *(v50 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = v50 + 48;
    v20 = MEMORY[0x277D84F90];
    do
    {
      v21 = v17 - v18;
      v22 = (v19 + 296 * v18);
      while (1)
      {
        if (v18 >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v22 - 1, sizeof(__dst));
        v24 = v22[1];
        v23 = v22[2];
        v43[0] = *v22;
        v43[1] = v24;
        v43[2] = v23;
        v25 = v22[6];
        v27 = v22[3];
        v26 = v22[4];
        v43[5] = v22[5];
        v43[6] = v25;
        v43[3] = v27;
        v43[4] = v26;
        v28 = v22[10];
        v30 = v22[7];
        v29 = v22[8];
        v43[9] = v22[9];
        v44 = v28;
        v43[7] = v30;
        v43[8] = v29;
        v31 = v22[14];
        v33 = v22[11];
        v32 = v22[12];
        v47 = v22[13];
        v48 = v31;
        v45 = v33;
        v46 = v32;
        result = sub_22F1E1664(v43);
        if (result != 1)
        {
          if (*(&v44 + 1))
          {
            break;
          }
        }

        v22 = (v22 + 296);
        ++v18;
        if (!--v21)
        {
          goto LABEL_20;
        }
      }

      sub_22F18C4EC(__dst, v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v20;
      v40 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22F1468FC(0, *(v20 + 16) + 1, 1);
        v20 = v49;
      }

      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_22F1468FC((v35 > 1), v36 + 1, 1);
        v37 = v36 + 1;
        v20 = v49;
      }

      ++v18;
      *(v20 + 16) = v37;
      result = memcpy((v20 + 296 * v36 + 32), __dst, 0x128uLL);
      v19 = v40;
    }

    while (v21 != 1);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

LABEL_20:

  [*(a5 + 24) lock];
  swift_beginAccess();
  sub_22F14519C(v20);
  swift_endAccess();
  [*(a5 + 24) unlock];
  v38 = *(a6 + 32);

  os_unfair_lock_lock(v38 + 8);
  sub_22F1CBE1C(&v38[4], __dst);
  os_unfair_lock_unlock(v38 + 8);
  v39 = __dst[0];

  if (v39)
  {
    return (*(a6 + 16))(result);
  }

  return result;
}

uint64_t sub_22F229248(__int128 *a1, void *a2, NSObject *a3, uint64_t a4)
{
  v5 = v4;
  v50 = a3;
  v47 = a2;
  v48 = sub_22F73EEC0();
  v49 = *(v48 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - v10;
  v11 = sub_22F740AD0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v60 = *a1;
  v16 = a1[2];
  v61 = v15;
  v62 = v16;
  v63 = *(a1 + 6);
  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v17 = *(v12 + 8);
  v17(v14, v11);
  v52[0] = v60;
  v52[1] = v61;
  v52[2] = v62;
  v18 = v4[4];
  v19 = v4[5];
  v20 = v4[6];
  v21 = v5[7];
  v22 = v5[8];
  aBlock = v5[3];
  v55 = v18;
  v56 = v19;
  v57 = v20;
  v58 = v21;
  v59 = v22;
  v53 = v63;

  sub_22F3E1B88(v52, v51);

  v23 = swift_allocObject();
  v45 = v23;
  *(v23 + 16) = "MusicKitClient Fetch Recommended Playlists";
  *(v23 + 24) = 42;
  *(v23 + 32) = 2;
  *(v23 + 40) = v50;
  *(v23 + 48) = a4;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v17(v14, v11);
  v50 = v5[9];
  v24 = v49;
  v25 = v46;
  v26 = v48;
  (*(v49 + 16))(v46, v51, v48);
  v27 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v28 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 63) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 39) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v24 + 32))(v31 + v27, v25, v26);
  v32 = v31 + v28;
  v33 = v61;
  v34 = v62;
  *v32 = v60;
  *(v32 + 16) = v33;
  *(v32 + 32) = v34;
  *(v32 + 48) = v63;
  *(v31 + v29) = v5;
  v35 = v31 + v44;
  *v35 = "MusicKitClient HTTP Request";
  *(v35 + 8) = 27;
  *(v35 + 16) = 2;
  v36 = v47;
  *(v31 + v30) = v47;
  v37 = (v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  v38 = v45;
  *v37 = sub_22F233FF0;
  v37[1] = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_22F2360E0;
  *(v39 + 24) = v31;
  v58 = sub_22F2360E8;
  v59 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = sub_22F2280B0;
  v57 = &block_descriptor_23_0;
  v40 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v60, v52);

  v41 = v36;

  dispatch_sync(v50, v40);
  _Block_release(v40);

  (*(v49 + 8))(v51, v26);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22F2298A4(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned int a6, void (*a7)(void *, uint64_t), uint64_t a8)
{
  v25 = a8;
  v26 = a7;
  v24 = a6;
  v23[1] = a4;
  v23[2] = a5;
  v23[0] = a2;
  v10 = sub_22F740AD0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F73EEE0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22F73EF30();
  swift_allocObject();
  sub_22F73EF20();
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v18 = qword_2810A9170;
  *v17 = qword_2810A9170;
  (*(v15 + 104))(v17, *MEMORY[0x277CC86D8], v14);
  v19 = v18;
  sub_22F73EF00();
  if (a3)
  {
    v20 = a1;
    v21 = 1;
  }

  else
  {
    sub_22F229B70(&v27, &v28);
    v21 = 0;
    a1 = v28;
  }

  sub_22F741730();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  (*(v11 + 8))(v13, v10);
  v26(a1, v21);
  sub_22F1D20A4(a1, v21);
}

void sub_22F229B70(void *a3@<X3>, char **a4@<X8>)
{
  sub_22F235FDC();
  sub_22F73EF10();
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v23 = a4;
    v7 = v26;
    v8 = *(v25 + 16);
    if (v8)
    {
      v9 = (v25 + 80);
      v10 = MEMORY[0x277D84F90];
      do
      {
        v12 = *(v9 - 5);
        v13 = *(v9 - 4);
        v14 = *(v9 - 3);
        v15 = *(v9 - 2);
        v16 = *(v9 - 1);
        v17 = *v9;
        v25 = *(v9 - 6);
        v26 = v12;
        v27 = v13;
        v28 = v14;
        v29 = v15;
        v30 = v16;
        v31 = v17;
        v36 = v7;

        sub_22F1E0BD4(&v25, &v36, &v32);
        v18 = v33;
        if (v33)
        {
          v19 = v32;
          v20 = v34;
          v24 = v35;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_22F13F2BC(0, *(v10 + 2) + 1, 1, v10);
          }

          v22 = *(v10 + 2);
          v21 = *(v10 + 3);
          if (v22 >= v21 >> 1)
          {
            v10 = sub_22F13F2BC((v21 > 1), v22 + 1, 1, v10);
          }

          *(v10 + 2) = v22 + 1;
          v11 = &v10[40 * v22];
          *(v11 + 4) = v19;
          *(v11 + 5) = v18;
          *(v11 + 6) = v20;
          *(v11 + 56) = v24;
        }

        v9 += 7;
        --v8;
      }

      while (v8);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    *v23 = v10;
  }
}

uint64_t sub_22F229D40(uint64_t a1, char *a2, __int128 *a3, void *a4, unint64_t a5, char *a6)
{
  v7 = v6;
  v52 = a6;
  v51 = a5;
  v47 = a4;
  v50 = a2;
  v49 = sub_22F73EEC0();
  v48 = *(v49 - 8);
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v53 = sub_22F740AD0();
  isa = v53[-1].isa;
  MEMORY[0x28223BE20](v53);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3[1];
  v62 = *a3;
  v18 = a3[2];
  v63 = v17;
  v64 = v18;
  v65 = *(a3 + 6);
  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v19 = *(isa + 1);
  v19(v16, v53);
  v54[0] = v62;
  v54[1] = v63;
  v54[2] = v64;
  v20 = v7[4];
  v21 = v7[5];
  v22 = v7[6];
  v23 = v7[7];
  v24 = v7[8];
  aBlock = v7[3];
  v57 = v20;
  v58 = v21;
  v59 = v22;
  v60 = v23;
  v61 = v24;
  v55 = v65;

  sub_22F3E21F0(a1, v50, v54, v13);

  v25 = swift_allocObject();
  v50 = v25;
  *(v25 + 16) = "MusicKitClient Fetch Essentials Playlists For Artists";
  *(v25 + 24) = 53;
  *(v25 + 32) = 2;
  *(v25 + 40) = v51;
  *(v25 + 48) = v52;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v19(v16, v53);
  v53 = v7[9];
  v26 = v48;
  v27 = v46;
  v28 = v49;
  (*(v48 + 16))(v46, v13, v49);
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v30 = (v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 63) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v52 = v13;
  v32 = (v31 + 39) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v26 + 32))(v33 + v29, v27, v28);
  v34 = v33 + v30;
  v35 = v63;
  v36 = v64;
  *v34 = v62;
  *(v34 + 16) = v35;
  *(v34 + 32) = v36;
  *(v34 + 48) = v65;
  *(v33 + v31) = v7;
  v37 = v33 + v51;
  *v37 = "MusicKitClient HTTP Request";
  *(v37 + 8) = 27;
  *(v37 + 16) = 2;
  v38 = v47;
  *(v33 + v32) = v47;
  v39 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v40 = v50;
  *v39 = sub_22F234008;
  v39[1] = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_22F2360E0;
  *(v41 + 24) = v33;
  v60 = sub_22F2360E8;
  v61 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = sub_22F2280B0;
  v59 = &block_descriptor_37;
  v42 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v62, v54);

  v43 = v38;

  dispatch_sync(v53, v42);
  _Block_release(v42);

  (*(v26 + 8))(v52, v28);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22F22A3D0(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned int a6, void (*a7)(void, void), uint64_t a8)
{
  v48 = a6;
  v47 = a5;
  v45 = a4;
  v46 = sub_22F740AD0();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73EEE0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22F73EF30();
  swift_allocObject();
  v17 = sub_22F73EF20();
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v18 = qword_2810A9170;
  *v16 = qword_2810A9170;
  (*(v14 + 104))(v16, *MEMORY[0x277CC86D8], v13);
  v19 = v18;
  sub_22F73EF00();
  if (a3)
  {
    v20 = a1;
    v21 = 1;
  }

  else
  {
    sub_22F235F88();
    sub_22F73EF10();
    v22 = v50[0];
    v23 = *(v50[0] + 16);
    if (v23)
    {
      v40 = v17;
      v41 = a8;
      v42 = a7;
      v52 = MEMORY[0x277D84F90];
      sub_22F146994(0, v23, 0);
      a1 = v52;
      v39 = v22;
      v24 = (v22 + 64);
      do
      {
        v25 = *(v24 - 3);
        v26 = *(v24 - 2);
        v27 = *(v24 - 1);
        v28 = *v24;
        v49[0] = *(v24 - 4);
        v49[1] = v25;
        v49[2] = v26;
        v49[3] = v27;
        v49[4] = v28;

        sub_22F1E1050(v49, v50);
        v29 = v50[0];
        v30 = v50[1];
        v31 = v50[2];
        v32 = v51;
        v52 = a1;
        v34 = a1[2];
        v33 = a1[3];
        if (v34 >= v33 >> 1)
        {
          v38 = v51;
          sub_22F146994((v33 > 1), v34 + 1, 1);
          v32 = v38;
          a1 = v52;
        }

        a1[2] = v34 + 1;
        v35 = &a1[5 * v34];
        v35[4] = v29;
        v35[5] = v30;
        v35[6] = v31;
        *(v35 + 7) = v32;
        v24 += 5;
        --v23;
      }

      while (v23);

      a7 = v42;
    }

    else
    {

      a1 = MEMORY[0x277D84F90];
    }

    v21 = 0;
  }

  sub_22F741730();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v36 = v43;
  sub_22F740AC0();
  sub_22F740A90();
  (*(v44 + 8))(v36, v46);
  a7(a1, v21);
  sub_22F1D20A4(a1, v21);
}

void sub_22F22A7E4(uint64_t a1, char *a2, __int128 *a3, void *a4, char *a5, NSObject *a6)
{
  v72 = a6;
  v71 = a5;
  v68 = a4;
  v9 = sub_22F73EEC0();
  v69 = *(v9 - 8);
  v10 = *(v69 + 64);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  v14 = sub_22F740AD0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a3[1];
  v81 = *a3;
  v19 = a3[2];
  v82 = v18;
  v83 = v19;
  v84 = *(a3 + 6);
  if (sub_22F73F660() == -1)
  {
    v65 = a1;
    v66 = a2;
    v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = v70;
    v67 = v13;
    v62 = v9;
    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v28 = qword_2810A8E38;
    sub_22F740AC0();
    v64 = v28;
    sub_22F740A90();
    v29 = v14;
    v30 = *(v15 + 8);
    v63 = v29;
    v30(v17);
    v73[0] = v81;
    v73[1] = v82;
    v73[2] = v83;
    v31 = v27;
    v32 = v27[4];
    v33 = v27[5];
    v34 = v27[6];
    v35 = v27[7];
    v36 = v27[8];
    aBlock = v27[3];
    v76 = v32;
    v77 = v33;
    v78 = v34;
    v79 = v35;
    v80 = v36;
    v74 = v84;

    v37 = v67;
    sub_22F3E29C0(v66, v73, v67);
    v38 = v72;
    v39 = v71;

    v40 = v30;
    v41 = swift_allocObject();
    *(v41 + 16) = "MusicKitClient Fetch Tesseract Songs";
    *(v41 + 24) = 36;
    *(v41 + 32) = 2;
    *(v41 + 40) = v39;
    *(v41 + 48) = v38;

    sub_22F741740();
    sub_22F740AC0();
    sub_22F740A90();
    v40(v17, v63);
    v72 = v31[9];
    v42 = v69;
    v43 = v61;
    (*(v69 + 16))(v61, v37, v62);
    v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v45 = (v10 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + 63) & 0xFFFFFFFFFFFFFFF8;
    v71 = ((v46 + 15) & 0xFFFFFFFFFFFFFFF8);
    v47 = (v46 + 39) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    v49 = v43;
    v50 = v62;
    (*(v42 + 32))(v48 + v44, v49, v62);
    v51 = v48 + v45;
    v52 = v82;
    v53 = v83;
    *v51 = v81;
    *(v51 + 16) = v52;
    *(v51 + 32) = v53;
    *(v51 + 48) = v84;
    *(v48 + v46) = v31;
    v54 = &v71[v48];
    *v54 = "MusicKitClient HTTP Request";
    *(v54 + 1) = 27;
    v54[16] = 2;
    v55 = v68;
    *(v48 + v47) = v68;
    v56 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v56 = sub_22F23406C;
    v56[1] = v41;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_22F2360E0;
    *(v57 + 24) = v48;
    v79 = sub_22F2360E8;
    v80 = v57;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_22F2280B0;
    v78 = &block_descriptor_51;
    v58 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v81, v73);

    v59 = v55;

    dispatch_sync(v72, v58);
    _Block_release(v58);

    (*(v42 + 8))(v67, v50);
    LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

    if (v58)
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for MusicKitClientError(0);
    sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
    v20 = swift_allocError();
    v22 = v21;
    v23 = a2;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2950, &unk_22F781A20) + 48);
    v25 = sub_22F73F690();
    v26 = *(*(v25 - 8) + 16);
    v26(v22, a1, v25);
    v26(v22 + v24, v23, v25);
    swift_storeEnumTagMultiPayload();
    (v71)(v20, 1);
  }
}

void sub_22F22AFEC(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned int a6, void (*a7)(void *, uint64_t), uint64_t a8)
{
  v47 = a8;
  v48 = a7;
  v45 = a6;
  v43 = a4;
  v44 = a5;
  LOBYTE(v8) = a3;
  v46 = sub_22F740AD0();
  v42 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F73EEE0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73EF30();
  swift_allocObject();
  v16 = sub_22F73EF20();
  if (qword_2810A9168 != -1)
  {
LABEL_26:
    swift_once();
  }

  v17 = qword_2810A9170;
  *v15 = qword_2810A9170;
  (*(v13 + 104))(v15, *MEMORY[0x277CC86D8], v12);
  v18 = v17;
  sub_22F73EF00();
  if (v8)
  {
    v49 = a1;
    v19 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    sub_22F741730();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    (*(v42 + 8))(v11, v46);
    v20 = a1;
    v48(a1, 1);
  }

  else
  {
    sub_22F235F34();
    sub_22F73EF10();
    MusicKitTesseractResponse.songs()();
    v22 = v21;

    v13 = *(v22 + 16);
    if (v13)
    {
      v15 = 0;
      v8 = v22 + 48;
      a1 = MEMORY[0x277D84F90];
      do
      {
        v12 = v13 - v15;
        v23 = (v8 + 296 * v15);
        while (1)
        {
          if (v15 >= *(v22 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          memcpy(v50, v23 - 1, sizeof(v50));
          v25 = v23[1];
          v24 = v23[2];
          v51[0] = *v23;
          v51[1] = v25;
          v51[2] = v24;
          v26 = v23[6];
          v28 = v23[3];
          v27 = v23[4];
          v51[5] = v23[5];
          v51[6] = v26;
          v51[3] = v28;
          v51[4] = v27;
          v29 = v23[10];
          v31 = v23[7];
          v30 = v23[8];
          v51[9] = v23[9];
          v52 = v29;
          v51[7] = v31;
          v51[8] = v30;
          v32 = v23[14];
          v34 = v23[11];
          v33 = v23[12];
          v55 = v23[13];
          v56 = v32;
          v53 = v34;
          v54 = v33;
          if (sub_22F1E1664(v51) != 1)
          {
            if (*(&v52 + 1))
            {
              break;
            }
          }

          v23 = (v23 + 296);
          ++v15;
          if (!--v12)
          {
            goto LABEL_22;
          }
        }

        v41 = v13;
        sub_22F18C4EC(v50, &v49);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = a1;
        v40 = v8;
        v36 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1468FC(0, a1[2] + 1, 1);
          a1 = v57;
        }

        v38 = a1[2];
        v37 = a1[3];
        if (v38 >= v37 >> 1)
        {
          sub_22F1468FC((v37 > 1), v38 + 1, 1);
          a1 = v57;
        }

        ++v15;
        a1[2] = v38 + 1;
        memcpy(&a1[37 * v38 + 4], v50, 0x128uLL);
        v16 = v36;
        v8 = v40;
        v13 = v41;
      }

      while (v12 != 1);
    }

    else
    {
      a1 = MEMORY[0x277D84F90];
    }

LABEL_22:

    sub_22F741730();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    (*(v42 + 8))(v11, v46);
    v48(a1, 0);
  }
}

uint64_t sub_22F22B524(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, char *a6)
{
  v7 = v6;
  v57 = a6;
  v56 = a5;
  v54 = a4;
  v53 = sub_22F740AD0();
  isa = v53[-1].isa;
  MEMORY[0x28223BE20](v53);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73EEC0();
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  MEMORY[0x28223BE20](v13);
  v52 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v50 - v16;
  v18 = a3[1];
  v69 = *a3;
  v70 = v18;
  v71 = a3[2];
  v72 = *(a3 + 6);
  if (qword_2810A9B98 != -1)
  {
    swift_once();
  }

  v19 = qword_2810B4E70;
  *&v20 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Fetch Songs By Purchased ID", 42, 2u, v20, 0, v19, v66);
  v21 = v7[4];
  v22 = v7[5];
  v23 = v7[6];
  v24 = v7[7];
  v25 = v7[8];
  aBlock = v7[3];
  v61 = v21;
  v62 = v22;
  v63 = v23;
  v64 = v24;
  v65 = v25;
  v58[0] = v69;
  v58[1] = v70;
  v58[2] = v71;
  v59 = v72;

  sub_22F3E3150(a1, a2, v58, v17);

  v26 = *(&v67 + 1);
  v27 = v68;
  v28 = swift_allocObject();
  v29 = v66[1];
  *(v28 + 16) = v66[0];
  *(v28 + 32) = v29;
  *(v28 + 48) = v67;
  v30 = v56;
  *(v28 + 64) = v68;
  *(v28 + 72) = v30;
  v50[0] = v28;
  *(v28 + 80) = v57;
  v56 = v26;

  v50[1] = v27;

  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  (*(isa + 8))(v12, v53);
  v53 = v7[9];
  v31 = v55;
  v32 = v52;
  (*(v55 + 16))(v52, v17, v13);
  v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v34 = (v14 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 63) & 0xFFFFFFFFFFFFFFF8;
  v57 = v17;
  isa = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 39) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v32;
  v39 = v13;
  (*(v31 + 32))(v37 + v33, v38, v13);
  v40 = v37 + v34;
  v41 = v70;
  *v40 = v69;
  *(v40 + 16) = v41;
  *(v40 + 32) = v71;
  *(v40 + 48) = v72;
  *(v37 + v35) = v7;
  v42 = v37 + isa;
  *v42 = "MusicKitClient HTTP Request";
  *(v42 + 8) = 27;
  *(v42 + 16) = 2;
  v43 = v54;
  *(v37 + v36) = v54;
  v44 = (v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8));
  v45 = v50[0];
  *v44 = sub_22F2340A0;
  v44[1] = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_22F2360E0;
  *(v46 + 24) = v37;
  v64 = sub_22F2360E8;
  v65 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v61 = 1107296256;
  v62 = sub_22F2280B0;
  v63 = &block_descriptor_65;
  v47 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v69, v58);

  v48 = v43;

  dispatch_sync(v53, v47);
  _Block_release(v47);

  (*(v55 + 8))(v57, v39);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22F22BBC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v8 = sub_22F73EEE0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_22F1B2BBC(0);
    return a5(a1, 1);
  }

  else
  {
    v37 = a5;
    sub_22F73EF30();
    swift_allocObject();
    sub_22F73EF20();
    if (qword_2810A9168 != -1)
    {
LABEL_20:
      swift_once();
    }

    v13 = qword_2810A9170;
    *v11 = qword_2810A9170;
    (*(v9 + 104))(v11, *MEMORY[0x277CC86D8], v8);
    v14 = v13;
    sub_22F73EF00();
    sub_22F1C9EB0();
    sub_22F73EF10();
    v15 = v47;
    v9 = *(v47 + 16);
    if (v9)
    {
      v11 = 0;
      v16 = v47 + 48;
      v17 = MEMORY[0x277D84F90];
      v36 = v47 + 48;
      do
      {
        v8 = v9 - v11;
        v18 = (v16 + 296 * v11);
        while (1)
        {
          if (v11 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          memcpy(v39, v18 - 1, sizeof(v39));
          v20 = v18[1];
          v19 = v18[2];
          v40[0] = *v18;
          v40[1] = v20;
          v40[2] = v19;
          v21 = v18[6];
          v23 = v18[3];
          v22 = v18[4];
          v40[5] = v18[5];
          v40[6] = v21;
          v40[3] = v23;
          v40[4] = v22;
          v24 = v18[10];
          v26 = v18[7];
          v25 = v18[8];
          v40[9] = v18[9];
          v41 = v24;
          v40[7] = v26;
          v40[8] = v25;
          v27 = v18[14];
          v29 = v18[11];
          v28 = v18[12];
          v44 = v18[13];
          v45 = v27;
          v42 = v29;
          v43 = v28;
          if (sub_22F1E1664(v40) != 1)
          {
            if (*(&v41 + 1))
            {
              break;
            }
          }

          v18 = (v18 + 296);
          ++v11;
          if (!--v8)
          {
            goto LABEL_18;
          }
        }

        sub_22F18C4EC(v39, &v38);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v17;
        v35 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1468FC(0, *(v17 + 16) + 1, 1);
          v17 = v46;
        }

        v32 = *(v17 + 16);
        v31 = *(v17 + 24);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          sub_22F1468FC((v31 > 1), v32 + 1, 1);
          v33 = v32 + 1;
          v17 = v46;
        }

        ++v11;
        *(v17 + 16) = v33;
        memcpy((v17 + 296 * v32 + 32), v39, 0x128uLL);
        v9 = v35;
        v16 = v36;
      }

      while (v8 != 1);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

LABEL_18:

    sub_22F1B2BBC(0);
    v37(v17, 0);
  }
}

uint64_t sub_22F22BF70(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, uint64_t (*a5)(void, void), char *a6)
{
  v7 = v6;
  v73 = a6;
  v74 = a5;
  v72 = sub_22F740AD0();
  isa = v72[-1].isa;
  MEMORY[0x28223BE20](v72);
  v69 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73EEC0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v71 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v65 - v17;
  v19 = a3[1];
  v86 = *a3;
  v87 = v19;
  v88 = a3[2];
  v89 = *(a3 + 6);
  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D48);
    v37 = sub_22F740B70();
    v38 = sub_22F7415C0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22F0FC000, v37, v38, "[Warning-Music] Unable to search for playlist songs without a playlistId", v39, 2u);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    return v74(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v66 = a4;
    v20 = qword_2810B4E70;
    *&v21 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Get Playlist Songs", 33, 2u, v21, 0, v20, v83);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v22 = sub_22F740B90();
    __swift_project_value_buffer(v22, qword_2810B4D48);

    v23 = sub_22F740B70();
    v24 = sub_22F7415C0();

    v25 = os_log_type_enabled(v23, v24);
    v68 = v13;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v67 = v14;
      v27 = v18;
      v28 = v26;
      v29 = swift_slowAlloc();
      *&v75[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_22F145F20(a1, a2, v75);
      _os_log_impl(&dword_22F0FC000, v23, v24, "[MemoriesMusic] Get Playlist Songs for: '%s'", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x2319033A0](v29, -1, -1);
      v30 = v28;
      v18 = v27;
      v14 = v67;
      MEMORY[0x2319033A0](v30, -1, -1);
    }

    v31 = v7[4];
    v32 = v7[5];
    v33 = v7[6];
    v34 = v7[7];
    v35 = v7[8];
    aBlock = v7[3];
    v78 = v31;
    v79 = v32;
    v80 = v33;
    v81 = v34;
    v82 = v35;
    v75[0] = v86;
    v75[1] = v87;
    v75[2] = v88;
    v76 = v89;

    sub_22F3E35AC(a1, a2, v75, v18);

    v41 = *(&v84 + 1);
    v42 = v85;
    v43 = swift_allocObject();
    v44 = v83[1];
    *(v43 + 16) = v83[0];
    *(v43 + 32) = v44;
    *(v43 + 48) = v84;
    v45 = v74;
    *(v43 + 64) = v85;
    *(v43 + 72) = v45;
    *(v43 + 80) = v73;
    v74 = v41;

    v65[1] = v42;

    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v46 = v69;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v46, v72);
    v72 = v7[9];
    v47 = v14;
    v48 = *(v14 + 16);
    v49 = v71;
    v48(v71, v18, v68);
    v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v51 = (v15 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = v47;
    v73 = v18;
    v52 = (v51 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 39) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    v55 = v49;
    v56 = v68;
    (*(v47 + 32))(v54 + v50, v55, v68);
    v57 = v54 + v51;
    v58 = v87;
    *v57 = v86;
    *(v57 + 16) = v58;
    *(v57 + 32) = v88;
    *(v57 + 48) = v89;
    *(v54 + v52) = v7;
    v59 = v54 + isa;
    *v59 = "MusicKitClient HTTP Request";
    *(v59 + 8) = 27;
    *(v59 + 16) = 2;
    v60 = v66;
    *(v54 + v53) = v66;
    v61 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v61 = sub_22F2340B0;
    v61[1] = v43;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_22F2360E0;
    *(v62 + 24) = v54;
    v81 = sub_22F2360E8;
    v82 = v62;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_22F2280B0;
    v80 = &block_descriptor_79;
    v63 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v86, v75);

    v64 = v60;

    dispatch_sync(v72, v63);
    _Block_release(v63);

    (*(v67 + 8))(v73, v56);
    LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

    if (v63)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_22F22C844(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    sub_22F1B2BBC(0);
    a5(a1, 1);
  }

  else
  {
    sub_22F73EF30();
    swift_allocObject();
    sub_22F73EF20();
    sub_22F1A9194();
    sub_22F73EF10();
    if (*(v40 + 16))
    {
      v7 = *(v40 + 80);

      if (v7)
      {
        v8 = *(v7 + 16);
        if (v8)
        {
          v9 = 0;
          v10 = v7 + 48;
          v11 = MEMORY[0x277D84F90];
          do
          {
            v12 = v8 - v9;
            v13 = (v10 + 296 * v9);
            while (1)
            {
              if (v9 >= *(v7 + 16))
              {
                __break(1u);
                goto LABEL_22;
              }

              memcpy(__dst, v13 - 1, sizeof(__dst));
              v15 = v13[1];
              v14 = v13[2];
              v33[0] = *v13;
              v33[1] = v15;
              v33[2] = v14;
              v16 = v13[6];
              v18 = v13[3];
              v17 = v13[4];
              v33[5] = v13[5];
              v33[6] = v16;
              v33[3] = v18;
              v33[4] = v17;
              v19 = v13[10];
              v21 = v13[7];
              v20 = v13[8];
              v33[9] = v13[9];
              v34 = v19;
              v33[7] = v21;
              v33[8] = v20;
              v22 = v13[14];
              v24 = v13[11];
              v23 = v13[12];
              v37 = v13[13];
              v38 = v22;
              v35 = v24;
              v36 = v23;
              if (sub_22F1E1664(v33) != 1)
              {
                if (*(&v34 + 1))
                {
                  break;
                }
              }

              v13 = (v13 + 296);
              ++v9;
              if (!--v12)
              {
                goto LABEL_20;
              }
            }

            sub_22F18C4EC(__dst, v31);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = v11;
            v30 = v8;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22F1468FC(0, *(v11 + 16) + 1, 1);
              v11 = v39;
            }

            v27 = *(v11 + 16);
            v26 = *(v11 + 24);
            v28 = v27 + 1;
            if (v27 >= v26 >> 1)
            {
              sub_22F1468FC((v26 > 1), v27 + 1, 1);
              v28 = v27 + 1;
              v11 = v39;
            }

            ++v9;
            *(v11 + 16) = v28;
            memcpy((v11 + 296 * v27 + 32), __dst, 0x128uLL);
            v8 = v30;
            v10 = v7 + 48;
          }

          while (v12 != 1);
        }

        else
        {
          v11 = MEMORY[0x277D84F90];
        }

LABEL_20:

        sub_22F1B2BBC(0);
        a5(v11, 0);
      }

      else
      {
        sub_22F1B2BBC(0);
        type metadata accessor for MusicKitClientError(0);
        sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
        v29 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        a5(v29, 1);
      }
    }

    else
    {
LABEL_22:
      __break(1u);
    }
  }
}

uint64_t sub_22F22CBE8(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, uint64_t (*a5)(void, void), NSObject *a6)
{
  v7 = v6;
  v75 = a6;
  v76 = a5;
  v74 = sub_22F740AD0();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73EEC0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v73 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v19 = a3[1];
  v86 = *a3;
  v87 = v19;
  v88 = a3[2];
  v89 = *(a3 + 6);
  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v35 = sub_22F740B90();
    __swift_project_value_buffer(v35, qword_2810B4D48);
    v36 = sub_22F740B70();
    v37 = sub_22F7415C0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22F0FC000, v36, v37, "[Warning-Music] Empty music search term", v38, 2u);
      MEMORY[0x2319033A0](v38, -1, -1);
    }

    return v76(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v70 = a4;
    v20 = qword_2810B4E70;
    *&v21 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Search Songs with term", 37, 2u, v21, 0, v20, v83);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v22 = sub_22F740B90();
    __swift_project_value_buffer(v22, qword_2810B4D48);

    v23 = sub_22F740B70();
    v24 = sub_22F7415C0();

    v25 = os_log_type_enabled(v23, v24);
    v69 = v13;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v68 = v7;
      v27 = v18;
      v28 = v14;
      v29 = v26;
      v30 = swift_slowAlloc();
      *&v77[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_22F145F20(a1, a2, v77);
      _os_log_impl(&dword_22F0FC000, v23, v24, "[MemoriesMusic] Search for song using term: '%s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x2319033A0](v30, -1, -1);
      v31 = v29;
      v14 = v28;
      v18 = v27;
      v7 = v68;
      MEMORY[0x2319033A0](v31, -1, -1);
    }

    v32 = *(v7 + 40);
    v33 = *(v7 + 56);
    v34 = *(v7 + 64);
    aBlock = *(v7 + 24);
    v80 = v32;
    v81 = v33;
    v82 = v34;
    v77[0] = v86;
    v77[1] = v87;
    v77[2] = v88;
    v78 = v89;
    sub_22F3E3C18(a1, a2, &unk_2843DB040, v77, v18);
    v40 = *(&v84 + 1);
    v41 = v85;
    v42 = swift_allocObject();
    v43 = v83[1];
    *(v42 + 16) = v83[0];
    *(v42 + 32) = v43;
    *(v42 + 48) = v84;
    v44 = v76;
    *(v42 + 64) = v85;
    *(v42 + 72) = v44;
    v66 = v42;
    *(v42 + 80) = v75;
    v76 = v40;

    v68 = v41;

    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v45 = v71;
    sub_22F740AC0();
    sub_22F740A90();
    (*(v72 + 8))(v45, v74);
    v75 = *(v7 + 72);
    v46 = *(v14 + 16);
    v47 = v73;
    v67 = v18;
    v48 = v18;
    v49 = v69;
    v46(v73, v48, v69);
    v50 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v51 = (v15 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = v14;
    v52 = (v51 + 63) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 39) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    (*(v14 + 32))(v54 + v50, v47, v49);
    v55 = v54 + v51;
    v56 = v87;
    *v55 = v86;
    *(v55 + 16) = v56;
    *(v55 + 32) = v88;
    *(v55 + 48) = v89;
    *(v54 + v52) = v7;
    v57 = v54 + v74;
    *v57 = "MusicKitClient HTTP Request";
    *(v57 + 8) = 27;
    *(v57 + 16) = 2;
    v58 = v70;
    *(v54 + v53) = v70;
    v59 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    v60 = v66;
    *v59 = sub_22F2340C0;
    v59[1] = v60;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_22F2360E0;
    *(v61 + 24) = v54;
    v81 = sub_22F2360E8;
    v82 = v61;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v80 = sub_22F2280B0;
    *(&v80 + 1) = &block_descriptor_93_0;
    v62 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v86, v77);

    v63 = v58;

    dispatch_sync(v75, v62);
    _Block_release(v62);

    (*(v65 + 8))(v67, v49);
    LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

    if (v62)
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_22F22D49C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    sub_22F1B2BBC(0);
    return a5(a1, 1);
  }

  else
  {
    sub_22F73EF30();
    swift_allocObject();
    sub_22F73EF20();
    sub_22F235EE0();
    result = sub_22F73EF10();
    v8 = v41;
    v9 = *(v41 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = v41 + 48;
      v12 = MEMORY[0x277D84F90];
      v31 = v41 + 48;
      do
      {
        v13 = v9 - v10;
        v14 = (v11 + 296 * v10);
        while (1)
        {
          if (v10 >= *(v8 + 16))
          {
            __break(1u);
            return result;
          }

          memcpy(__dst, v14 - 1, sizeof(__dst));
          v16 = v14[1];
          v15 = v14[2];
          v34[0] = *v14;
          v34[1] = v16;
          v34[2] = v15;
          v17 = v14[6];
          v19 = v14[3];
          v18 = v14[4];
          v34[5] = v14[5];
          v34[6] = v17;
          v34[3] = v19;
          v34[4] = v18;
          v20 = v14[10];
          v22 = v14[7];
          v21 = v14[8];
          v34[9] = v14[9];
          v35 = v20;
          v34[7] = v22;
          v34[8] = v21;
          v23 = v14[14];
          v25 = v14[11];
          v24 = v14[12];
          v38 = v14[13];
          v39 = v23;
          v36 = v25;
          v37 = v24;
          result = sub_22F1E1664(v34);
          if (result != 1)
          {
            if (*(&v35 + 1))
            {
              break;
            }
          }

          v14 = (v14 + 296);
          ++v10;
          if (!--v13)
          {
            goto LABEL_17;
          }
        }

        sub_22F18C4EC(__dst, v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v12;
        v30 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1468FC(0, *(v12 + 16) + 1, 1);
          v12 = v40;
        }

        v28 = *(v12 + 16);
        v27 = *(v12 + 24);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          sub_22F1468FC((v27 > 1), v28 + 1, 1);
          v29 = v28 + 1;
          v12 = v40;
        }

        ++v10;
        *(v12 + 16) = v29;
        result = memcpy((v12 + 296 * v28 + 32), __dst, 0x128uLL);
        v9 = v30;
        v11 = v31;
      }

      while (v13 != 1);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

LABEL_17:

    sub_22F1B2BBC(0);
    a5(v12, 0);
  }
}

uint64_t sub_22F22D750(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, uint64_t (*a5)(void, void), NSObject *a6)
{
  v7 = v6;
  v75 = a6;
  v76 = a5;
  v74 = sub_22F740AD0();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73EEC0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v73 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v64 - v17;
  v19 = a3[1];
  v86 = *a3;
  v87 = v19;
  v88 = a3[2];
  v89 = *(a3 + 6);
  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v35 = sub_22F740B90();
    __swift_project_value_buffer(v35, qword_2810B4D48);
    v36 = sub_22F740B70();
    v37 = sub_22F7415C0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22F0FC000, v36, v37, "[Warning-Music] Empty playlist searchTerm", v38, 2u);
      MEMORY[0x2319033A0](v38, -1, -1);
    }

    return v76(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v70 = a4;
    v20 = qword_2810B4E70;
    *&v21 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Search playlist", 30, 2u, v21, 0, v20, v83);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v22 = sub_22F740B90();
    __swift_project_value_buffer(v22, qword_2810B4D48);

    v23 = sub_22F740B70();
    v24 = sub_22F7415C0();

    v25 = os_log_type_enabled(v23, v24);
    v69 = v13;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v68 = v7;
      v27 = v18;
      v28 = v14;
      v29 = v26;
      v30 = swift_slowAlloc();
      *&v77[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_22F145F20(a1, a2, v77);
      _os_log_impl(&dword_22F0FC000, v23, v24, "[MemoriesMusic] Search for apple music playlist: '%s'", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x2319033A0](v30, -1, -1);
      v31 = v29;
      v14 = v28;
      v18 = v27;
      v7 = v68;
      MEMORY[0x2319033A0](v31, -1, -1);
    }

    v32 = *(v7 + 40);
    v33 = *(v7 + 56);
    v34 = *(v7 + 64);
    aBlock = *(v7 + 24);
    v80 = v32;
    v81 = v33;
    v82 = v34;
    v77[0] = v86;
    v77[1] = v87;
    v77[2] = v88;
    v78 = v89;
    sub_22F3E3C18(a1, a2, &unk_2843DB070, v77, v18);
    v40 = *(&v84 + 1);
    v41 = v85;
    v42 = swift_allocObject();
    v43 = v83[1];
    *(v42 + 16) = v83[0];
    *(v42 + 32) = v43;
    *(v42 + 48) = v84;
    v44 = v76;
    *(v42 + 64) = v85;
    *(v42 + 72) = v44;
    v66 = v42;
    *(v42 + 80) = v75;
    v76 = v40;

    v68 = v41;

    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v45 = v71;
    sub_22F740AC0();
    sub_22F740A90();
    (*(v72 + 8))(v45, v74);
    v75 = *(v7 + 72);
    v46 = *(v14 + 16);
    v47 = v73;
    v67 = v18;
    v48 = v18;
    v49 = v69;
    v46(v73, v48, v69);
    v50 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v51 = (v15 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = v14;
    v52 = (v51 + 63) & 0xFFFFFFFFFFFFFFF8;
    v74 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 39) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    (*(v14 + 32))(v54 + v50, v47, v49);
    v55 = v54 + v51;
    v56 = v87;
    *v55 = v86;
    *(v55 + 16) = v56;
    *(v55 + 32) = v88;
    *(v55 + 48) = v89;
    *(v54 + v52) = v7;
    v57 = v54 + v74;
    *v57 = "MusicKitClient HTTP Request";
    *(v57 + 8) = 27;
    *(v57 + 16) = 2;
    v58 = v70;
    *(v54 + v53) = v70;
    v59 = (v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8));
    v60 = v66;
    *v59 = sub_22F2340D0;
    v59[1] = v60;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_22F2360E0;
    *(v61 + 24) = v54;
    v81 = sub_22F2360E8;
    v82 = v61;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v80 = sub_22F2280B0;
    *(&v80 + 1) = &block_descriptor_108;
    v62 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v86, v77);

    v63 = v58;

    dispatch_sync(v75, v62);
    _Block_release(v62);

    (*(v65 + 8))(v67, v49);
    LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

    if (v62)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22F22E004(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    sub_22F1B2BBC(0);
    return a5(a1, 1);
  }

  else
  {
    sub_22F73EF30();
    swift_allocObject();
    sub_22F73EF20();
    sub_22F235E8C();
    sub_22F73EF10();
    v29 = a5;
    result = v34;
    v8 = *(v34 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v34 + 80;
      v30 = MEMORY[0x277D84F90];
      v31 = *(v34 + 16);
      v28 = v8 - 1;
      do
      {
        v11 = (v10 + 56 * v9);
        while (1)
        {
          if (v9 >= *(result + 16))
          {
            __break(1u);
            return result;
          }

          v12 = *(v11 - 6);
          v13 = *(v11 - 5);
          v14 = *(v11 - 3);
          v32 = *(v11 - 4);
          v16 = *(v11 - 2);
          v15 = *(v11 - 1);
          v17 = *v11;
          v18 = v9 + 1;
          sub_22F1BA874();
          sub_22F1B1F54();

          if (sub_22F740D80())
          {
            break;
          }

          v11 += 7;
          ++v9;
          result = v34;
          if (v31 == v18)
          {
            goto LABEL_17;
          }
        }

        v33 = v9;
        v19 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22F1468BC(0, *(v30 + 16) + 1, 1);
          v19 = v30;
        }

        v20 = v12;
        v21 = v17;
        v22 = v32;
        v23 = v16;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        v26 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          sub_22F1468BC((v24 > 1), v25 + 1, 1);
          v26 = v25 + 1;
          v23 = v16;
          v22 = v32;
          v20 = v12;
          v19 = v30;
        }

        *(v19 + 16) = v26;
        v30 = v19;
        v27 = (v19 + 56 * v25);
        v27[4] = v20;
        v27[5] = v13;
        v27[6] = v22;
        v27[7] = v14;
        v27[8] = v23;
        v27[9] = v15;
        v27[10] = v21;
        result = v34;
        v10 = v34 + 80;
        v9 = v18;
      }

      while (v28 != v33);
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

LABEL_17:

    sub_22F1B2BBC(0);
    v29(v30, 0);
  }
}

uint64_t sub_22F22E398(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, const char *a7, char *a8, ...)
{
  v11 = v8;
  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v17 = sub_22F740B90();
  __swift_project_value_buffer(v17, qword_2810B4D48);

  v18 = sub_22F740B70();
  v19 = sub_22F7415C0();

  if (os_log_type_enabled(v18, v19))
  {
    v27 = a8;
    v28 = a5;
    v20 = swift_slowAlloc();
    v21 = v11;
    v22 = swift_slowAlloc();
    *&v29[0] = v22;
    *v20 = 136315138;
    *(v20 + 4) = sub_22F145F20(a1, a2, v29);
    _os_log_impl(&dword_22F0FC000, v18, v19, a7, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v22;
    v11 = v21;
    MEMORY[0x2319033A0](v23, -1, -1);
    v24 = v20;
    a8 = v27;
    a5 = v28;
    MEMORY[0x2319033A0](v24, -1, -1);
  }

  v25 = *(a3 + 16);
  v29[0] = *a3;
  v29[1] = v25;
  v29[2] = *(a3 + 32);
  v30 = *(a3 + 48);

  sub_22F23241C(a1, a2, v29, v11, a5, a6, a8);
}

uint64_t sub_22F22E578(uint8_t *a1, unint64_t a2, NSObject *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = a3;
  v11 = *&a3[2].isa;
  v107 = *&a3->isa;
  v108 = v11;
  v109 = *&a3[4].isa;
  isa = a3[6].isa;
  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v27 = sub_22F740B90();
    __swift_project_value_buffer(v27, qword_2810B4D48);
    v28 = sub_22F740B70();
    v29 = sub_22F7415C0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22F0FC000, v28, v29, "[Warning-Music] Empty searchTerm for playlist search", v30, 2u);
      MEMORY[0x2319033A0](v30, -1, -1);
    }

    return (a5)(MEMORY[0x277D84F90], 0);
  }

  if (qword_2810A9B98 != -1)
  {
LABEL_63:
    swift_once();
  }

  v12 = qword_2810B4E70;
  *&v13 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Search genre music", 33, 2u, v13, 0, v12, v106);
  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v14 = sub_22F740B90();
  __swift_project_value_buffer(v14, qword_2810B4D48);

  v15 = sub_22F740B70();
  v16 = sub_22F7415C0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v102 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_22F145F20(a1, a2, &v102);
    _os_log_impl(&dword_22F0FC000, v15, v16, "[MemoriesMusic] Search for playlist with searchTerm: '%s'", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2319033A0](v18, -1, -1);
    MEMORY[0x2319033A0](v17, -1, -1);
  }

  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = -1;
  v21 = *&v8[2].isa;
  v102 = *&v8->isa;
  v103 = v21;
  v104 = *&v8[4].isa;
  v105 = v8[6].isa;
  v93 = objc_opt_self();
  v22 = [v93 ignoreProgress];

  v23 = v19;
  sub_22F23073C(a1, a2, &v102, v22, v96, v20, v23);

  sub_22F741620();
  swift_beginAccess();
  v24 = *(v20 + 24);
  if (v24 == 255)
  {

    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = a5;
      v35 = v23;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v102 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_22F145F20(a1, a2, &v102);
      _os_log_impl(&dword_22F0FC000, v32, v33, "Did not find any playlists using searchTerm '%s'", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x2319033A0](v37, -1, -1);
      v38 = v36;
      v23 = v35;
      a5 = v34;
LABEL_26:
      MEMORY[0x2319033A0](v38, -1, -1);
    }
  }

  else
  {
    v25 = *(v20 + 16);
    if (v24)
    {
      sub_22F1D2178(v25, 1);
      sub_22F1B2BBC(0);
      v26 = sub_22F1D2178(v25, 1);
      (a5)(v25, 1, v26);
      sub_22F101678(v25, v24);
      sub_22F101678(v25, v24);
      goto LABEL_28;
    }

    v39 = v25[2];

    if (v39)
    {
      v87 = a5;
      v92 = a6;
      v86 = v24;
      sub_22F1D2160(v25, v24);
      v8 = sub_22F740B70();
      v40 = sub_22F7415C0();

      v99 = v25;
      v88 = v23;
      if (os_log_type_enabled(v8, v40))
      {
        v90 = v40;
        log = v8;
        v41 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v101 = v85;
        *v41 = 134218498;
        *(v41 + 4) = v25[2];
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_22F145F20(a1, a2, &v101);
        buf = v41;
        *(v41 + 22) = 2080;
        v100 = MEMORY[0x277D84F90];
        sub_22F146454(0, v39, 0);
        v42 = v25 + 5;
        do
        {
          v43 = *v42;
          v44 = v42[1];
          v45 = v42[2];
          a2 = v42[4];
          *&v102 = *(v42 - 1);
          *(&v102 + 1) = v43;

          swift_bridgeObjectRetain_n();

          MEMORY[0x231900B10](2112032, 0xE300000000000000);

          MEMORY[0x231900B10](v44, v45);

          v46 = v102;
          a5 = *(v100 + 16);
          v47 = *(v100 + 24);
          if (a5 >= v47 >> 1)
          {
            sub_22F146454((v47 > 1), a5 + 1, 1);
          }

          v42 += 7;
          *(v100 + 16) = a5 + 1;
          *(v100 + 16 * a5 + 32) = v46;
          --v39;
        }

        while (v39);
        v56 = MEMORY[0x231900D40](v100, MEMORY[0x277D837D0]);
        v58 = v57;

        v59 = sub_22F145F20(v56, v58, &v101);

        a1 = buf;
        *(buf + 3) = v59;
        v8 = log;
        _os_log_impl(&dword_22F0FC000, log, v90, "Found %ld playlists for the searchTerm '%s'. Playlists: %s", buf, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2319033A0](v85, -1, -1);
        MEMORY[0x2319033A0](buf, -1, -1);

        v25 = v99;
      }

      else
      {
      }

      a6 = 0;
      v60 = v25 + 10;
      loga = -v25[2];
      bufa = MEMORY[0x277D84F90];
      v91 = v25 + 10;
LABEL_34:
      v61 = a6 + 1;
      v62 = &v60[7 * a6];
      while ((loga + v61) != 1)
      {
        a6 = v61;
        if (v61 - 1 >= v99[2])
        {
          __break(1u);
          goto LABEL_63;
        }

        v8 = *(v62 - 6);
        v63 = *(v62 - 5);
        a1 = *(v62 - 4);
        a2 = *(v62 - 3);
        a5 = *(v62 - 2);
        v64 = *(v62 - 1);
        v65 = *v62;
        if (a5 != 0x6169726F74696465 || v64 != 0xE90000000000006CLL)
        {
          ++v61;
          v62 += 7;
          if ((sub_22F742040() & 1) == 0)
          {
            continue;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v102 = bufa;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1468BC(0, *(bufa + 2) + 1, 1);
          bufa = v102;
        }

        v69 = *(bufa + 2);
        v68 = *(bufa + 3);
        v70 = v69 + 1;
        if (v69 >= v68 >> 1)
        {
          sub_22F1468BC((v68 > 1), v69 + 1, 1);
          v70 = v69 + 1;
          bufa = v102;
        }

        *(bufa + 2) = v70;
        v71 = &bufa[56 * v69];
        *(v71 + 4) = v8;
        *(v71 + 5) = v63;
        *(v71 + 6) = a1;
        *(v71 + 7) = a2;
        *(v71 + 8) = a5;
        *(v71 + 9) = v64;
        *(v71 + 10) = v65;
        v60 = v91;
        goto LABEL_34;
      }

      sub_22F101678(v99, v86);
      a5 = v87;
      if (*(bufa + 2))
      {
        v73 = *(bufa + 4);
        v72 = *(bufa + 5);

        swift_bridgeObjectRetain_n();

        v74 = sub_22F740B70();
        v75 = sub_22F7415D0();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *&v102 = v77;
          *v76 = 136315138;
          if (v72)
          {
            v78 = v73;
          }

          else
          {
            v78 = 0x3E656E6F6E3CLL;
          }

          if (v72)
          {
            v79 = v72;
          }

          else
          {
            v79 = 0xE600000000000000;
          }

          v80 = sub_22F145F20(v78, v79, &v102);
          a5 = v87;

          *(v76 + 4) = v80;
          _os_log_impl(&dword_22F0FC000, v74, v75, "Editorial Playlists selected: %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v77);
          MEMORY[0x2319033A0](v77, -1, -1);
          MEMORY[0x2319033A0](v76, -1, -1);
        }

        else
        {
        }

        v23 = v88;
        if (v72)
        {
          v102 = v107;
          v103 = v108;
          v104 = v109;
          v105 = isa;
          v84 = [v93 ignoreProgress];

          sub_22F234DF0(v73, v72, &v102, v84, v96, a5, v92);
        }
      }

      else
      {

        v81 = sub_22F740B70();
        v82 = sub_22F7415C0();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&dword_22F0FC000, v81, v82, "[Warning-Music] No editorial playlist found so using first playlist", v83, 2u);
          MEMORY[0x2319033A0](v83, -1, -1);
        }

        v23 = v88;
      }

      goto LABEL_28;
    }

    v32 = sub_22F740B70();
    v48 = sub_22F7415E0();

    if (os_log_type_enabled(v32, v48))
    {
      v89 = v23;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v102 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_22F145F20(a1, a2, &v102);
      _os_log_impl(&dword_22F0FC000, v32, v48, "Did not find any playlists using searchTerm'%s'", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x2319033A0](v50, -1, -1);
      v38 = v49;
      v23 = v89;
      goto LABEL_26;
    }
  }

  sub_22F1B2BBC(0);
  type metadata accessor for MusicKitClientError(0);
  sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
  v51 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (a5)(v51, 1);

LABEL_28:
  v52 = sub_22F740B70();
  v53 = sub_22F7415E0();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_22F0FC000, v52, v53, "Unable to get the playlistId", v54, 2u);
    MEMORY[0x2319033A0](v54, -1, -1);
  }

  sub_22F1B2BBC(0);
  type metadata accessor for MusicKitClientError(0);
  sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
  v55 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (a5)(v55, 1);
}

void sub_22F22F388(void *a1, char a2, uint64_t a3, NSObject *a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = *(a3 + 24);
  a2 &= 1u;
  *(a3 + 24) = a2;
  sub_22F101678(v8, v9);
  sub_22F1D2178(a1, a2);
  dispatch_group_leave(a4);
}

uint64_t MusicKitClient.deinit()
{

  return v0;
}

uint64_t MusicKitClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_22F22F4CC(void *a1, uint64_t a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = sub_22F740DF0();
    v8 = sub_22F740DF0();
    v9 = sub_22F740DF0();
    v10 = [objc_opt_self() clientInfoForMusicKitRequestWithClientIdentifier:v7 clientVersion:v8 bundleIdentifier:v9];

    [v10 mutableCopy];
    sub_22F741920();
    swift_unknownObjectRelease();
    sub_22F120634(0, &unk_2810A9090, 0x277D7FB98);
    swift_dynamicCast();
    v11 = sub_22F740DF0();
    [v19 setBagProfile_];

    v12 = sub_22F740DF0();
    [v19 setBagProfileVersion_];

    v13 = v6;
    [v5 setClientInfo_];
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 defaultIdentityStore];
    [v5 setIdentityStore_];

    v17 = [objc_opt_self() activeAccount];
    [v5 setIdentity_];

    [v5 setPersonalizationStyle_];
    v18 = [objc_allocWithZone(MEMORY[0x277D7FC80]) initWithUserInteractionLevel_];
    [v5 setAuthenticationProvider_];
  }
}

void sub_22F22F7B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_22F22F7FC(void *a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  v8 = sub_22F741640();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v26 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F741630();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22F740C00();
  v23 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 4);
  v18 = *(a2 + 5);
  *(v4 + 80) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = v15;
  *(v4 + 40) = v16;
  *(v4 + 56) = v17;
  *(v4 + 64) = v18;
  v25 = sub_22F120634(0, &qword_2810A90E8, 0x277D85C78);
  v22 = "ponse8@NSError16";
  (*(v12 + 16))(v14, a3, v11);
  v29 = MEMORY[0x277D84F90];
  sub_22F236044(&unk_2810A90F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A8, &unk_22F77BFD0);
  sub_22F16BC6C(&qword_2810A92A8, &qword_27DAB29A8, &unk_22F77BFD0, MEMORY[0x277D83970]);
  sub_22F741970();
  (*(v27 + 104))(v26, *MEMORY[0x277D85260], v28);
  v20 = sub_22F741660();
  (*(v12 + 8))(v24, v23);
  *(v4 + 72) = v20;
  return v4;
}

char *sub_22F22FB24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22F740C00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(type metadata accessor for MusicBag());
  v9 = sub_22F1ED5B0(0);
  v10 = MusicBag.userStorefront()();
  if (v11)
  {
    (*(v5 + 8))(a1, v4);
LABEL_6:

    return v7;
  }

  countAndFlagsBits = v10._countAndFlagsBits;
  v12 = MusicBag.mediaApiDomain()();
  if (v13)
  {
    (*(v5 + 8))(a1, v4);

    goto LABEL_6;
  }

  v23 = v12._countAndFlagsBits;
  v14 = MusicBag.personalMixIdentifers()();
  v22 = 0;
  if (a2)
  {

    v14 = a2;
  }

  v21[1] = v14;
  *&v24 = v14;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  sub_22F16BC6C(&qword_2810A9250, &qword_27DAB1608, &unk_22F772BB0, MEMORY[0x277D83B68]);
  sub_22F160DE4();
  v16 = sub_22F7410E0();
  v18 = v17;

  *&v24 = countAndFlagsBits;
  *(&v24 + 1) = v10._object;
  v25 = v23;
  object = v12._object;
  v27 = v16;
  v28 = v18;
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MusicKitClient();
  swift_allocObject();
  v19 = v22;
  v20 = sub_22F22F7FC(v9, &v24, v7);
  if (!v19)
  {
    v7 = v20;
  }

  (*(v5 + 8))(a1, v4);
  return v7;
}

uint64_t sub_22F22FDFC(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v79 = a4;
  v77 = sub_22F740AD0();
  isa = v77[-1].isa;
  MEMORY[0x28223BE20](v77);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_22F73EEC0();
  v78 = *(v80 - 8);
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v76 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  v19 = a3[1];
  v90 = *a3;
  v91 = v19;
  v92 = a3[2];
  v93 = *(a3 + 6);

  v20 = a7;
  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v37 = sub_22F740B90();
    __swift_project_value_buffer(v37, qword_2810B4D48);
    v38 = sub_22F740B70();
    v39 = sub_22F7415C0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22F0FC000, v38, v39, "[Warning-Music] Empty music search term", v40, 2u);
      MEMORY[0x2319033A0](v40, -1, -1);
    }

    swift_beginAccess();
    v41 = *(a6 + 16);
    *(a6 + 16) = MEMORY[0x277D84F90];
    v42 = *(a6 + 24);
    *(a6 + 24) = 0;
    sub_22F101678(v41, v42);
    dispatch_group_leave(v20);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v21 = qword_2810B4E70;
    *&v22 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Search Songs with term", 37, 2u, v22, 0, v21, v87);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D48);

    v24 = sub_22F740B70();
    v25 = sub_22F7415C0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v73 = v18;
      v27 = v26;
      v28 = swift_slowAlloc();
      v72 = v20;
      v29 = v17;
      v30 = a5;
      v31 = v28;
      *&v81[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_22F145F20(a1, a2, v81);
      _os_log_impl(&dword_22F0FC000, v24, v25, "[MemoriesMusic] Search for song using term: '%s'", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v32 = v31;
      a5 = v30;
      v17 = v29;
      MEMORY[0x2319033A0](v32, -1, -1);
      v33 = v27;
      v18 = v73;
      MEMORY[0x2319033A0](v33, -1, -1);
    }

    v34 = *(a5 + 40);
    v35 = *(a5 + 56);
    v36 = *(a5 + 64);
    aBlock = *(a5 + 24);
    v84 = v34;
    v85 = v35;
    v86 = v36;
    v81[0] = v90;
    v81[1] = v91;
    v81[2] = v92;
    v82 = v93;
    sub_22F3E3C18(a1, a2, &unk_2843D99C8, v81, v17);
    v44 = v17;
    v45 = a5;
    v46 = *(&v88 + 1);
    v47 = v89;
    v48 = swift_allocObject();
    v49 = v87[1];
    *(v48 + 16) = v87[0];
    *(v48 + 32) = v49;
    *(v48 + 48) = v88;
    *(v48 + 64) = v89;
    *(v48 + 72) = sub_22F235B78;
    *(v48 + 80) = v18;
    v72 = v46;

    v71 = v47;

    sub_22F741740();
    v73 = v18;
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v50 = v74;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v50, v77);
    v69 = v45;
    v77 = *(v45 + 72);
    v51 = v78;
    v52 = *(v78 + 16);
    v53 = v76;
    v70 = v44;
    v54 = v80;
    v52(v76, v44, v80);
    v55 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v56 = (v14 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 39) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    (*(v51 + 32))(v59 + v55, v53, v54);
    v60 = v59 + v56;
    v61 = v91;
    *v60 = v90;
    *(v60 + 16) = v61;
    *(v60 + 32) = v92;
    *(v60 + 48) = v93;
    *(v59 + v57) = v69;
    v62 = v59 + isa;
    *v62 = "MusicKitClient HTTP Request";
    *(v62 + 8) = 27;
    *(v62 + 16) = 2;
    v63 = v79;
    *(v59 + v58) = v79;
    v64 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v64 = sub_22F2360D0;
    v64[1] = v48;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_22F2360E0;
    *(v65 + 24) = v59;
    v85 = sub_22F2360E8;
    v86 = v65;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v84 = sub_22F2280B0;
    *(&v84 + 1) = &block_descriptor_135;
    v66 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v90, v81);

    v67 = v63;

    dispatch_sync(v77, v66);
    _Block_release(v66);

    (*(v51 + 8))(v70, v54);
    LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

    if (v66)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22F23073C(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v79 = a4;
  v77 = sub_22F740AD0();
  isa = v77[-1].isa;
  MEMORY[0x28223BE20](v77);
  v74 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_22F73EEC0();
  v78 = *(v80 - 8);
  v14 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v76 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  v19 = a3[1];
  v90 = *a3;
  v91 = v19;
  v92 = a3[2];
  v93 = *(a3 + 6);

  v20 = a7;
  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v37 = sub_22F740B90();
    __swift_project_value_buffer(v37, qword_2810B4D48);
    v38 = sub_22F740B70();
    v39 = sub_22F7415C0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22F0FC000, v38, v39, "[Warning-Music] Empty playlist searchTerm", v40, 2u);
      MEMORY[0x2319033A0](v40, -1, -1);
    }

    swift_beginAccess();
    v41 = *(a6 + 16);
    *(a6 + 16) = MEMORY[0x277D84F90];
    v42 = *(a6 + 24);
    *(a6 + 24) = 0;
    sub_22F101678(v41, v42);
    dispatch_group_leave(v20);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v21 = qword_2810B4E70;
    *&v22 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Search playlist", 30, 2u, v22, 0, v21, v87);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D48);

    v24 = sub_22F740B70();
    v25 = sub_22F7415C0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v73 = v18;
      v27 = v26;
      v28 = swift_slowAlloc();
      v72 = v20;
      v29 = v17;
      v30 = a5;
      v31 = v28;
      *&v81[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_22F145F20(a1, a2, v81);
      _os_log_impl(&dword_22F0FC000, v24, v25, "[MemoriesMusic] Search for apple music playlist: '%s'", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v32 = v31;
      a5 = v30;
      v17 = v29;
      MEMORY[0x2319033A0](v32, -1, -1);
      v33 = v27;
      v18 = v73;
      MEMORY[0x2319033A0](v33, -1, -1);
    }

    v34 = *(a5 + 40);
    v35 = *(a5 + 56);
    v36 = *(a5 + 64);
    aBlock = *(a5 + 24);
    v84 = v34;
    v85 = v35;
    v86 = v36;
    v81[0] = v90;
    v81[1] = v91;
    v81[2] = v92;
    v82 = v93;
    sub_22F3E3C18(a1, a2, &unk_2843D99F8, v81, v17);
    v44 = v17;
    v45 = a5;
    v46 = *(&v88 + 1);
    v47 = v89;
    v48 = swift_allocObject();
    v49 = v87[1];
    *(v48 + 16) = v87[0];
    *(v48 + 32) = v49;
    *(v48 + 48) = v88;
    *(v48 + 64) = v89;
    *(v48 + 72) = sub_22F235C68;
    *(v48 + 80) = v18;
    v72 = v46;

    v71 = v47;

    sub_22F741740();
    v73 = v18;
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v50 = v74;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v50, v77);
    v69 = v45;
    v77 = *(v45 + 72);
    v51 = v78;
    v52 = *(v78 + 16);
    v53 = v76;
    v70 = v44;
    v54 = v80;
    v52(v76, v44, v80);
    v55 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v56 = (v14 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (v57 + 39) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    (*(v51 + 32))(v59 + v55, v53, v54);
    v60 = v59 + v56;
    v61 = v91;
    *v60 = v90;
    *(v60 + 16) = v61;
    *(v60 + 32) = v92;
    *(v60 + 48) = v93;
    *(v59 + v57) = v69;
    v62 = v59 + isa;
    *v62 = "MusicKitClient HTTP Request";
    *(v62 + 8) = 27;
    *(v62 + 16) = 2;
    v63 = v79;
    *(v59 + v58) = v79;
    v64 = (v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v64 = sub_22F2360D8;
    v64[1] = v48;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_22F2360E0;
    *(v65 + 24) = v59;
    v85 = sub_22F2360E8;
    v86 = v65;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v84 = sub_22F2280B0;
    *(&v84 + 1) = &block_descriptor_194;
    v66 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v90, v81);

    v67 = v63;

    dispatch_sync(v77, v66);
    _Block_release(v66);

    (*(v51 + 8))(v70, v54);
    LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

    if (v66)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22F23107C(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v72 = a5;
  v68 = a4;
  v66 = sub_22F740AD0();
  isa = v66[-1].isa;
  MEMORY[0x28223BE20](v66);
  v63 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73EEC0();
  v67 = *(v13 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v13);
  v65 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v62 - v16;
  v18 = swift_allocObject();
  v71 = a6;
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22F236130;
  *(v19 + 24) = v18;
  v20 = a3[1];
  v84 = *a3;
  v85 = v20;
  v86 = a3[2];
  v87 = *(a3 + 6);
  swift_retain_n();

  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v37 = sub_22F740B90();
    __swift_project_value_buffer(v37, qword_2810B4D48);
    v38 = sub_22F740B70();
    v39 = sub_22F7415C0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22F0FC000, v38, v39, "[Warning-Music] Unable to search for playlist songs without a playlistId", v40, 2u);
      MEMORY[0x2319033A0](v40, -1, -1);
    }

    v71(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v70 = v17;
    v21 = qword_2810B4E70;
    *&v22 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Get Playlist Songs", 33, 2u, v22, 0, v21, v81);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D48);

    v24 = sub_22F740B70();
    v25 = sub_22F7415C0();

    v26 = os_log_type_enabled(v24, v25);
    v69 = v13;
    if (v26)
    {
      v27 = v19;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v73[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_22F145F20(a1, a2, v73);
      _os_log_impl(&dword_22F0FC000, v24, v25, "[MemoriesMusic] Get Playlist Songs for: '%s'", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x2319033A0](v29, -1, -1);
      v30 = v28;
      v19 = v27;
      MEMORY[0x2319033A0](v30, -1, -1);
    }

    v31 = v72[4];
    v32 = v72[5];
    v33 = v72[6];
    v34 = v72[7];
    v35 = v72[8];
    aBlock = v72[3];
    v76 = v31;
    v77 = v32;
    v78 = v33;
    v79 = v34;
    v80 = v35;
    v73[0] = v84;
    v73[1] = v85;
    v73[2] = v86;
    v74 = v87;

    v36 = v70;
    sub_22F3E35AC(a1, a2, v73, v70);

    v62[2] = a7;
    v43 = *(&v82 + 1);
    v42 = v83;
    v44 = swift_allocObject();
    v45 = v81[1];
    *(v44 + 16) = v81[0];
    *(v44 + 32) = v45;
    *(v44 + 48) = v82;
    *(v44 + 64) = v83;
    *(v44 + 72) = sub_22F236130;
    *(v44 + 80) = v19;
    v71 = v43;

    v62[1] = v42;

    sub_22F741740();
    v62[0] = v19;
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v46 = v63;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v46, v66);
    v66 = v72[9];
    v47 = v67;
    v48 = v65;
    (*(v67 + 16))(v65, v36, v69);
    v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v50 = (v14 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 39) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    (*(v47 + 32))(v53 + v49, v48, v69);
    v54 = v53 + v50;
    v55 = v85;
    *v54 = v84;
    *(v54 + 16) = v55;
    *(v54 + 32) = v86;
    *(v54 + 48) = v87;
    *(v53 + v51) = v72;
    v56 = v53 + isa;
    *v56 = "MusicKitClient HTTP Request";
    *(v56 + 8) = 27;
    *(v56 + 16) = 2;
    v57 = v68;
    *(v53 + v52) = v68;
    v58 = (v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v58 = sub_22F2360D4;
    v58[1] = v44;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_22F2360E0;
    *(v59 + 24) = v53;
    v79 = sub_22F2360E8;
    v80 = v59;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_22F2280B0;
    v78 = &block_descriptor_217;
    v60 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v84, v73);

    v61 = v57;

    dispatch_sync(v66, v60);
    _Block_release(v60);

    (*(v47 + 8))(v70, v69);
    LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

    if (v60)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22F231A4C(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v72 = a5;
  v68 = a4;
  v66 = sub_22F740AD0();
  isa = v66[-1].isa;
  MEMORY[0x28223BE20](v66);
  v63 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73EEC0();
  v67 = *(v13 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v13);
  v65 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v62 - v16;
  v18 = swift_allocObject();
  v71 = a6;
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22F235C74;
  *(v19 + 24) = v18;
  v20 = a3[1];
  v84 = *a3;
  v85 = v20;
  v86 = a3[2];
  v87 = *(a3 + 6);
  swift_retain_n();

  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v37 = sub_22F740B90();
    __swift_project_value_buffer(v37, qword_2810B4D48);
    v38 = sub_22F740B70();
    v39 = sub_22F7415C0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22F0FC000, v38, v39, "[Warning-Music] Unable to search for playlist songs without a playlistId", v40, 2u);
      MEMORY[0x2319033A0](v40, -1, -1);
    }

    v71(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v70 = v17;
    v21 = qword_2810B4E70;
    *&v22 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Get Playlist Songs", 33, 2u, v22, 0, v21, v81);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D48);

    v24 = sub_22F740B70();
    v25 = sub_22F7415C0();

    v26 = os_log_type_enabled(v24, v25);
    v69 = v13;
    if (v26)
    {
      v27 = v19;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v73[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_22F145F20(a1, a2, v73);
      _os_log_impl(&dword_22F0FC000, v24, v25, "[MemoriesMusic] Get Playlist Songs for: '%s'", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x2319033A0](v29, -1, -1);
      v30 = v28;
      v19 = v27;
      MEMORY[0x2319033A0](v30, -1, -1);
    }

    v31 = v72[4];
    v32 = v72[5];
    v33 = v72[6];
    v34 = v72[7];
    v35 = v72[8];
    aBlock = v72[3];
    v76 = v31;
    v77 = v32;
    v78 = v33;
    v79 = v34;
    v80 = v35;
    v73[0] = v84;
    v73[1] = v85;
    v73[2] = v86;
    v74 = v87;

    v36 = v70;
    sub_22F3E35AC(a1, a2, v73, v70);

    v62[2] = a7;
    v43 = *(&v82 + 1);
    v42 = v83;
    v44 = swift_allocObject();
    v45 = v81[1];
    *(v44 + 16) = v81[0];
    *(v44 + 32) = v45;
    *(v44 + 48) = v82;
    *(v44 + 64) = v83;
    *(v44 + 72) = sub_22F236130;
    *(v44 + 80) = v19;
    v71 = v43;

    v62[1] = v42;

    sub_22F741740();
    v62[0] = v19;
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v46 = v63;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v46, v66);
    v66 = v72[9];
    v47 = v67;
    v48 = v65;
    (*(v67 + 16))(v65, v36, v69);
    v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v50 = (v14 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 39) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    (*(v47 + 32))(v53 + v49, v48, v69);
    v54 = v53 + v50;
    v55 = v85;
    *v54 = v84;
    *(v54 + 16) = v55;
    *(v54 + 32) = v86;
    *(v54 + 48) = v87;
    *(v53 + v51) = v72;
    v56 = v53 + isa;
    *v56 = "MusicKitClient HTTP Request";
    *(v56 + 8) = 27;
    *(v56 + 16) = 2;
    v57 = v68;
    *(v53 + v52) = v68;
    v58 = (v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v58 = sub_22F2360D4;
    v58[1] = v44;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_22F2360E0;
    *(v59 + 24) = v53;
    v79 = sub_22F2360E8;
    v80 = v59;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_22F2280B0;
    v78 = &block_descriptor_240;
    v60 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v84, v73);

    v61 = v57;

    dispatch_sync(v66, v60);
    _Block_release(v60);

    (*(v47 + 8))(v70, v69);
    LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

    if (v60)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22F23241C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7)
{
  v12 = &v103;
  v13 = *(a3 + 16);
  v103 = *a3;
  v104 = v13;
  v105 = *(a3 + 32);
  v106 = *(a3 + 48);

  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v29 = sub_22F740B90();
    __swift_project_value_buffer(v29, qword_2810B4D48);
    v30 = sub_22F740B70();
    v31 = sub_22F7415C0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22F0FC000, v30, v31, "[Warning-Music] Empty searchTerm for playlist search", v32, 2u);
      MEMORY[0x2319033A0](v32, -1, -1);
    }

    (a5)(MEMORY[0x277D84F90], 0);
  }

  if (qword_2810A9B98 != -1)
  {
LABEL_65:
    swift_once();
  }

  v14 = qword_2810B4E70;
  *&v15 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Search genre music", 33, 2u, v15, 0, v14, v102);
  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v16 = sub_22F740B90();
  __swift_project_value_buffer(v16, qword_2810B4D48);

  v17 = sub_22F740B70();
  v18 = sub_22F7415C0();

  v88 = a7;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v98 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_22F145F20(a1, a2, &v98);
    _os_log_impl(&dword_22F0FC000, v17, v18, "[MemoriesMusic] Search for playlist with searchTerm: '%s'", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v12 = &v103;
    MEMORY[0x2319033A0](v20, -1, -1);
    MEMORY[0x2319033A0](v19, -1, -1);
  }

  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = -1;
  v23 = v12[1];
  v98 = *v12;
  v99 = v23;
  v100 = v12[2];
  v101 = v106;
  v87 = objc_opt_self();
  v24 = [v87 ignoreProgress];

  v25 = v21;
  sub_22F23073C(a1, a2, &v98, v24, a4, v22, v25);

  sub_22F741620();
  swift_beginAccess();
  v26 = *(v22 + 24);
  v89 = v25;
  if (v26 == 255)
  {

    v34 = sub_22F740B70();
    v35 = sub_22F7415E0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v98 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_22F145F20(a1, a2, &v98);
      v38 = "Did not find any playlists using searchTerm '%s'";
LABEL_28:
      _os_log_impl(&dword_22F0FC000, v34, v35, v38, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x2319033A0](v37, -1, -1);
      MEMORY[0x2319033A0](v36, -1, -1);
    }
  }

  else
  {
    v27 = *(v22 + 16);
    if (v26)
    {
      sub_22F1D2178(v27, 1);
      sub_22F1B2BBC(0);
      v28 = sub_22F1D2178(v27, 1);
      (a5)(v27, 1, v28);
      sub_22F101678(v27, v26);
      sub_22F101678(v27, v26);
      goto LABEL_30;
    }

    v12 = v27[2];

    if (v12)
    {
      v85 = a5;
      v84 = a6;
      v83 = v26;
      sub_22F1D2160(v27, v26);
      v39 = sub_22F740B70();
      v40 = sub_22F7415C0();

      v95 = v27;
      if (os_log_type_enabled(v39, v40))
      {
        log = v39;
        v41 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v97 = v82;
        *v41 = 134218498;
        *(v41 + 4) = v27[2];
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_22F145F20(a1, a2, &v97);
        buf = v41;
        *(v41 + 22) = 2080;
        v96 = MEMORY[0x277D84F90];
        sub_22F146454(0, v12, 0);
        a1 = v96;
        v42 = v27 + 5;
        do
        {
          v43 = *v42;
          v44 = v42[1];
          v45 = v42[2];
          a2 = v42[4];
          a6 = v42[5];
          *&v98 = *(v42 - 1);
          *(&v98 + 1) = v43;

          swift_bridgeObjectRetain_n();

          MEMORY[0x231900B10](2112032, 0xE300000000000000);

          MEMORY[0x231900B10](v44, v45);

          v46 = v98;
          a5 = *(v96 + 16);
          v47 = *(v96 + 24);
          if (a5 >= v47 >> 1)
          {
            sub_22F146454((v47 > 1), a5 + 1, 1);
          }

          v42 += 7;
          *(v96 + 16) = a5 + 1;
          *(v96 + 16 * a5 + 32) = v46;
          v12 = (v12 - 1);
        }

        while (v12);
        v53 = MEMORY[0x231900D40](v96, MEMORY[0x277D837D0]);
        v55 = v54;

        v56 = sub_22F145F20(v53, v55, &v97);

        *(buf + 3) = v56;
        _os_log_impl(&dword_22F0FC000, log, v40, "Found %ld playlists for the searchTerm '%s'. Playlists: %s", buf, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2319033A0](v82, -1, -1);
        MEMORY[0x2319033A0](buf, -1, -1);

        v27 = v95;
      }

      else
      {
      }

      a7 = 0;
      v57 = v27 + 10;
      loga = -v27[2];
      bufa = MEMORY[0x277D84F90];
      v86 = v27 + 10;
LABEL_36:
      v58 = a7 + 1;
      v59 = &v57[7 * a7];
      while (&v58[loga] != 1)
      {
        a7 = v58;
        if ((v58 - 1) >= v95[2])
        {
          __break(1u);
          goto LABEL_65;
        }

        v60 = *(v59 - 6);
        a6 = *(v59 - 5);
        v12 = *(v59 - 4);
        a2 = *(v59 - 3);
        a1 = *(v59 - 2);
        a5 = *(v59 - 1);
        v61 = *v59;
        if (a1 != 0x6169726F74696465 || a5 != 0xE90000000000006CLL)
        {
          ++v58;
          v59 += 7;
          if ((sub_22F742040() & 1) == 0)
          {
            continue;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v98 = bufa;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F1468BC(0, *(bufa + 2) + 1, 1);
          bufa = v98;
        }

        v65 = *(bufa + 2);
        v64 = *(bufa + 3);
        v66 = v65 + 1;
        if (v65 >= v64 >> 1)
        {
          sub_22F1468BC((v64 > 1), v65 + 1, 1);
          v66 = v65 + 1;
          bufa = v98;
        }

        *(bufa + 2) = v66;
        v67 = &bufa[56 * v65];
        *(v67 + 4) = v60;
        *(v67 + 5) = a6;
        *(v67 + 6) = v12;
        *(v67 + 7) = a2;
        *(v67 + 8) = a1;
        *(v67 + 9) = a5;
        *(v67 + 10) = v61;
        v57 = v86;
        goto LABEL_36;
      }

      sub_22F101678(v95, v83);
      a5 = v85;
      if (*(bufa + 2))
      {
        v69 = *(bufa + 4);
        v68 = *(bufa + 5);

        swift_bridgeObjectRetain_n();

        v70 = sub_22F740B70();
        v71 = sub_22F7415D0();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *&v98 = v73;
          *v72 = 136315138;
          if (v68)
          {
            v74 = v69;
          }

          else
          {
            v74 = 0x3E656E6F6E3CLL;
          }

          if (v68)
          {
            v75 = v68;
          }

          else
          {
            v75 = 0xE600000000000000;
          }

          v76 = sub_22F145F20(v74, v75, &v98);

          *(v72 + 4) = v76;
          _os_log_impl(&dword_22F0FC000, v70, v71, "Editorial Playlists selected: %s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v73);
          MEMORY[0x2319033A0](v73, -1, -1);
          v77 = v72;
          a5 = v85;
          MEMORY[0x2319033A0](v77, -1, -1);
        }

        else
        {
        }

        if (v68)
        {
          v98 = v103;
          v99 = v104;
          v100 = v105;
          v101 = v106;
          v81 = [v87 ignoreProgress];

          (v88)(v69, v68, &v98, v81, a4, a5, v84);
        }
      }

      else
      {

        v78 = sub_22F740B70();
        v79 = sub_22F7415C0();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&dword_22F0FC000, v78, v79, "[Warning-Music] No editorial playlist found so using first playlist", v80, 2u);
          MEMORY[0x2319033A0](v80, -1, -1);
        }
      }

      goto LABEL_30;
    }

    v34 = sub_22F740B70();
    v35 = sub_22F7415E0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v98 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_22F145F20(a1, a2, &v98);
      v38 = "Did not find any playlists using searchTerm'%s'";
      goto LABEL_28;
    }
  }

  sub_22F1B2BBC(0);
  type metadata accessor for MusicKitClientError(0);
  sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
  v48 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (a5)(v48, 1);

LABEL_30:
  v49 = sub_22F740B70();
  v50 = sub_22F7415E0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_22F0FC000, v49, v50, "Unable to get the playlistId", v51, 2u);
    MEMORY[0x2319033A0](v51, -1, -1);
  }

  sub_22F1B2BBC(0);
  type metadata accessor for MusicKitClientError(0);
  sub_22F236044(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
  v52 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  (a5)(v52, 1);
}

uint64_t sub_22F233254(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v72 = a5;
  v68 = a4;
  v66 = sub_22F740AD0();
  isa = v66[-1].isa;
  MEMORY[0x28223BE20](v66);
  v63 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F73EEC0();
  v67 = *(v13 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v13);
  v65 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v62 - v16;
  v18 = swift_allocObject();
  v71 = a6;
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22F236130;
  *(v19 + 24) = v18;
  v20 = a3[1];
  v84 = *a3;
  v85 = v20;
  v86 = a3[2];
  v87 = *(a3 + 6);
  swift_retain_n();

  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v37 = sub_22F740B90();
    __swift_project_value_buffer(v37, qword_2810B4D48);
    v38 = sub_22F740B70();
    v39 = sub_22F7415C0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22F0FC000, v38, v39, "[Warning-Music] Unable to search for playlist songs without a playlistId", v40, 2u);
      MEMORY[0x2319033A0](v40, -1, -1);
    }

    v71(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v70 = v17;
    v21 = qword_2810B4E70;
    *&v22 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Get Playlist Songs", 33, 2u, v22, 0, v21, v81);
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D48);

    v24 = sub_22F740B70();
    v25 = sub_22F7415C0();

    v26 = os_log_type_enabled(v24, v25);
    v69 = v13;
    if (v26)
    {
      v27 = v19;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v73[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_22F145F20(a1, a2, v73);
      _os_log_impl(&dword_22F0FC000, v24, v25, "[MemoriesMusic] Get Playlist Songs for: '%s'", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x2319033A0](v29, -1, -1);
      v30 = v28;
      v19 = v27;
      MEMORY[0x2319033A0](v30, -1, -1);
    }

    v31 = v72[4];
    v32 = v72[5];
    v33 = v72[6];
    v34 = v72[7];
    v35 = v72[8];
    aBlock = v72[3];
    v76 = v31;
    v77 = v32;
    v78 = v33;
    v79 = v34;
    v80 = v35;
    v73[0] = v84;
    v73[1] = v85;
    v73[2] = v86;
    v74 = v87;

    v36 = v70;
    sub_22F3E35AC(a1, a2, v73, v70);

    v62[2] = a7;
    v43 = *(&v82 + 1);
    v42 = v83;
    v44 = swift_allocObject();
    v45 = v81[1];
    *(v44 + 16) = v81[0];
    *(v44 + 32) = v45;
    *(v44 + 48) = v82;
    *(v44 + 64) = v83;
    *(v44 + 72) = sub_22F236130;
    *(v44 + 80) = v19;
    v71 = v43;

    v62[1] = v42;

    sub_22F741740();
    v62[0] = v19;
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v46 = v63;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v46, v66);
    v66 = v72[9];
    v47 = v67;
    v48 = v65;
    (*(v67 + 16))(v65, v36, v69);
    v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v50 = (v14 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 39) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    (*(v47 + 32))(v53 + v49, v48, v69);
    v54 = v53 + v50;
    v55 = v85;
    *v54 = v84;
    *(v54 + 16) = v55;
    *(v54 + 32) = v86;
    *(v54 + 48) = v87;
    *(v53 + v51) = v72;
    v56 = v53 + isa;
    *v56 = "MusicKitClient HTTP Request";
    *(v56 + 8) = 27;
    *(v56 + 16) = 2;
    v57 = v68;
    *(v53 + v52) = v68;
    v58 = (v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v58 = sub_22F2360D4;
    v58[1] = v44;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_22F2360E0;
    *(v59 + 24) = v53;
    v79 = sub_22F2360E8;
    v80 = v59;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_22F2280B0;
    v78 = &block_descriptor_263;
    v60 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v84, v73);

    v61 = v57;

    dispatch_sync(v66, v60);
    _Block_release(v60);

    (*(v47 + 8))(v70, v69);
    LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

    if (v60)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_22F233C24(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v37 = MEMORY[0x277D84F90];
  sub_22F146954(0, v9, 0);
  v36 = v7;
  if (v9)
  {
    v13 = a4[2];
    v14 = a5;
    while (1)
    {
      v15 = v8 <= v7;
      if (a3 > 0)
      {
        v15 = v8 >= v7;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v16 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v8 + a3;
      }

      v17 = v8 + v14;
      if (__OFADD__(v8, v14))
      {
        goto LABEL_62;
      }

      if (v13 < v17)
      {
        v17 = v13;
      }

      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_63;
      }

      if (v8 < 0)
      {
        goto LABEL_64;
      }

      if (v13 == v18)
      {

        v19 = a4;
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
        if (v17 != v8)
        {
          if (v18 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
            v19 = swift_allocObject();
            v22 = _swift_stdlib_malloc_size(v19);
            v23 = v22 - 32;
            if (v22 < 32)
            {
              v23 = v22 - 17;
            }

            v19[2] = v18;
            v19[3] = 2 * (v23 >> 4);
          }

          swift_arrayInitWithCopy();
          v14 = a5;
        }
      }

      v21 = *(v37 + 16);
      v20 = *(v37 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22F146954((v20 > 1), v21 + 1, 1);
        v14 = a5;
      }

      *(v37 + 16) = v21 + 1;
      *(v37 + 8 * v21 + 32) = v19;
      v8 = v16;
      --v9;
      v7 = v36;
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v16 = v8;
  v14 = a5;
LABEL_36:
  v24 = v16 <= v7;
  if (a3 > 0)
  {
    v24 = v16 >= v7;
  }

  if (!v24)
  {
    while (1)
    {
      v25 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v26 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        break;
      }

      v27 = a4[2];
      if (v27 < v26)
      {
        v26 = a4[2];
      }

      v28 = v26 - v16;
      if (v26 < v16)
      {
        goto LABEL_66;
      }

      if (v16 < 0)
      {
        goto LABEL_67;
      }

      if (v27 == v28)
      {

        v29 = a4;
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
        if (v26 != v16)
        {
          if (v28 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
            v29 = swift_allocObject();
            v33 = _swift_stdlib_malloc_size(v29);
            v34 = v33 - 32;
            if (v33 < 32)
            {
              v34 = v33 - 17;
            }

            v29[2] = v28;
            v29[3] = 2 * (v34 >> 4);
          }

          swift_arrayInitWithCopy();
          v14 = a5;
        }
      }

      v31 = *(v37 + 16);
      v30 = *(v37 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_22F146954((v30 > 1), v31 + 1, 1);
        v14 = a5;
      }

      *(v37 + 16) = v31 + 1;
      *(v37 + 8 * v31 + 32) = v29;
      v32 = v25 <= v36;
      if (a3 > 0)
      {
        v32 = v25 >= v36;
      }

      v16 = v25;
      if (v32)
      {
        return;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for MusicKitClientError(uint64_t a1)
{
  result = qword_27DAB2958;
  if (!qword_27DAB2958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22F2340E0(void *a1, __int128 *a2, uint64_t a3, void *a4, unint64_t a5, void *a6, void *a7, void *a8, void (*a9)(uint64_t, void), uint64_t a10)
{
  v111 = a6;
  v104 = a5;
  v108 = a4;
  v99 = sub_22F740AD0();
  v106 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_22F73EEC0();
  v102 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v97 = v90 - ((&v16[1].isa + 7) & 0xFFFFFFFFFFFFFFF0);
  v105 = v16;
  MEMORY[0x28223BE20](v17);
  v110 = v90 - v18;
  v19 = sub_22F73EEE0();
  v101 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v93 = (v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a8;
  v21[4] = a9;
  v21[5] = a10;
  v22 = a2[1];
  v128 = *a2;
  v129 = v22;
  v130 = a2[2];
  v131 = *(a2 + 6);
  v107 = a1[2];
  if (!v107)
  {
    v41 = a7;
    v42 = a8;

    sub_22F3A7B14(MEMORY[0x277D84F90], 0, v42, a9, a10);

    goto LABEL_13;
  }

  v23 = qword_2810A9B98;
  v24 = a7;
  v25 = a8;

  if (v23 != -1)
  {
LABEL_30:
    swift_once();
  }

  v26 = qword_2810B4E70;
  *&v27 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v27, 0, v26, v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
  v28 = swift_allocObject();
  v29 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v28 + 16) = MEMORY[0x277D84F90];
  *(v28 + 24) = v29;
  v103 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
  v30 = swift_allocObject();
  *(v30 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v30 + 16) = 0;
  v31 = (v30 + 16);
  if ((v111[3] != a3 || v111[4] != v108) && (sub_22F742040() & 1) == 0)
  {
    Batch = MusicBag.songEquivalentQueryBatchSize()();
    v96 = 1;
    if (Batch)
    {
      goto LABEL_7;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    *(Batch + 16) = v19;
    os_unfair_lock_unlock((Batch + 32));

    (a1[2])(v89);

    goto LABEL_13;
  }

  Batch = MusicBag.songQueryBatchSize()();
  v96 = 0;
  if (!Batch)
  {
    goto LABEL_28;
  }

LABEL_7:
  v90[1] = v30 + 16;

  sub_22F233C24(0, v107, Batch, a1, Batch);
  v34 = v33;
  v108 = 0;

  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  v35 = sub_22F740B90();
  __swift_project_value_buffer(v35, qword_2810B4D48);

  v36 = sub_22F740B70();
  v37 = sub_22F7415C0();
  v38 = os_log_type_enabled(v36, v37);
  v39 = v34;
  v92 = v19;
  if (v38)
  {
    v40 = swift_slowAlloc();
    *v40 = 134218240;
    *(v40 + 4) = v107;

    *(v40 + 12) = 2048;
    *(v40 + 14) = *(v39 + 16);

    _os_log_impl(&dword_22F0FC000, v36, v37, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v40, 0x16u);
    MEMORY[0x2319033A0](v40, -1, -1);
  }

  else
  {
  }

  v43 = *(v39 + 16);
  v44 = *(&v126 + 1);
  v45 = v127;
  v46 = swift_allocObject();
  v47 = v125[1];
  *(v46 + 16) = v125[0];
  *(v46 + 32) = v47;
  *(v46 + 48) = v126;
  v48 = v104;
  *(v46 + 64) = v127;
  *(v46 + 72) = v48;
  *(v46 + 80) = sub_22F235B84;
  *(v46 + 88) = v21;
  v107 = v39;
  v49 = v103;
  *(v46 + 96) = v30;
  *(v46 + 104) = v49;
  type metadata accessor for CompletionCounter();
  v50 = swift_allocObject();
  v50[2] = sub_22F2360E4;
  v50[3] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
  v51 = swift_allocObject();
  *(v51 + 32) = 0;
  *(v51 + 16) = 0;
  *(v51 + 24) = v43;
  v100 = v50;
  v50[4] = v51;
  sub_22F73EF30();
  swift_allocObject();
  v90[3] = v44;

  v90[2] = v45;

  v52 = v48;

  v53 = sub_22F73EF20();
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v54 = qword_2810A9170;
  v55 = v92;
  v56 = v93;
  *v93 = qword_2810A9170;
  (*(v101 + 104))(v56, *MEMORY[0x277CC86D8], v55);
  v57 = v54;
  v101 = v53;
  sub_22F73EF00();
  v58 = [v52 progressReportersForParallelOperationsWithCount_];
  sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
  v59 = sub_22F741180();

  v92 = (v102 + 16);
  v93 = v106 + 1;
  v90[6] = v102 + 32;
  v91 = &v105->isa + 7;
  v120 = v59;
  v121 = 0;
  v90[4] = v102 + 8;
  v90[5] = &v116;
  v122 = v107;
  v123 = 0;
  v124 = 0;
  v94 = v30;
  v95 = v21;
  while (1)
  {
    v60 = sub_22F226D78();
    if (!v60)
    {

      return;
    }

    v19 = v60;
    v62 = v61;
    v63 = v111[4];
    v64 = v111[5];
    v65 = v111[6];
    v66 = v111[7];
    v67 = v111[8];
    v114 = v111[3];
    v115 = v63;
    v116 = v64;
    v117 = v65;
    v118 = v66;
    v119 = v67;
    v112[0] = v128;
    v112[1] = v129;
    v112[2] = v130;
    v113 = v131;

    v31 = v108;
    MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v62, v112, v96, v110);
    v68 = v101;
    if (v31)
    {
      break;
    }

    v107 = v19;
    v108 = 0;

    v69 = swift_allocObject();
    v70 = v103;
    v69[2] = v68;
    v69[3] = v70;
    v69[4] = v100;
    v69[5] = v30;
    v106 = v69;

    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v71 = v98;
    sub_22F740AC0();
    sub_22F740A90();
    (*v93)(v71, v99);
    v105 = v111[9];
    v72 = v102;
    v73 = v97;
    v74 = v109;
    (*(v102 + 16))(v97, v110, v109);
    v75 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v76 = &v91[v75] & 0xFFFFFFFFFFFFFFF8;
    v77 = (v76 + 63) & 0xFFFFFFFFFFFFFFF8;
    v104 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
    v78 = (v77 + 39) & 0xFFFFFFFFFFFFFFF8;
    a3 = swift_allocObject();
    (*(v72 + 32))(a3 + v75, v73, v74);
    v79 = a3 + v76;
    v80 = v129;
    *v79 = v128;
    *(v79 + 16) = v80;
    *(v79 + 32) = v130;
    *(v79 + 48) = v131;
    *(a3 + v77) = v111;
    v81 = a3 + v104;
    *v81 = "MusicKitClient HTTP Request";
    *(v81 + 8) = 27;
    *(v81 + 16) = 2;
    v82 = v107;
    *(a3 + v78) = v107;
    v83 = (a3 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8));
    v84 = v106;
    *v83 = sub_22F2360DC;
    v83[1] = v84;
    a1 = swift_allocObject();
    a1[2] = sub_22F2360E0;
    a1[3] = a3;
    v118 = sub_22F2360E8;
    v119 = a1;
    v114 = MEMORY[0x277D85DD0];
    v115 = 1107296256;
    v116 = sub_22F2280B0;
    v117 = &block_descriptor_157;
    v19 = _Block_copy(&v114);
    sub_22F1D20B0(&v128, v112);

    v85 = v82;

    dispatch_sync(v105, v19);
    _Block_release(v19);

    (*(v72 + 8))(v110, v109);
    LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

    v30 = v94;
    v21 = v95;
    if (v84)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  [*(v30 + 24) lock];
  LOBYTE(v19) = 1;
  swift_beginAccess();
  v86 = *(v30 + 16);
  *(v30 + 16) = v31;

  v87 = *(v30 + 24);
  v88 = v31;
  [v87 unlock];
  a1 = v100;
  Batch = v100[4];

  os_unfair_lock_lock((Batch + 32));
  if ((*(Batch + 16) & 1) == 0)
  {
    goto LABEL_29;
  }

  os_unfair_lock_unlock((Batch + 32));

LABEL_13:
}

uint64_t sub_22F234DF0(uint64_t a1, unint64_t a2, __int128 *a3, void *a4, void *a5, void (*a6)(void, void), uint64_t a7)
{
  v72 = a5;
  v70 = sub_22F740AD0();
  isa = v70[-1].isa;
  MEMORY[0x28223BE20](v70);
  v67 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F73EEC0();
  v71 = *(v14 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14);
  v69 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = v64 - v17;
  v18 = swift_allocObject();
  v74 = a6;
  *(v18 + 16) = a6;
  *(v18 + 24) = a7;
  v19 = a3[1];
  v87 = *a3;
  v88 = v19;
  v89 = a3[2];
  v90 = *(a3 + 6);
  v73 = a7;
  v20 = a1;

  if (sub_22F740F10() < 1)
  {
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v37 = sub_22F740B90();
    __swift_project_value_buffer(v37, qword_2810B4D48);
    v38 = sub_22F740B70();
    v39 = sub_22F7415C0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_22F0FC000, v38, v39, "[Warning-Music] Unable to search for playlist songs without a playlistId", v40, 2u);
      MEMORY[0x2319033A0](v40, -1, -1);
    }

    v74(MEMORY[0x277D84F90], 0);
  }

  else
  {
    if (qword_2810A9B98 != -1)
    {
      swift_once();
    }

    v65 = a4;
    v21 = qword_2810B4E70;
    *&v22 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Get Playlist Songs", 33, 2u, v22, 0, v21, v84);
    v23 = v72;
    if (qword_2810A9440 != -1)
    {
      swift_once();
    }

    v24 = sub_22F740B90();
    __swift_project_value_buffer(v24, qword_2810B4D48);

    v25 = sub_22F740B70();
    v26 = sub_22F7415C0();

    v27 = os_log_type_enabled(v25, v26);
    v66 = v14;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = v18;
      v30 = swift_slowAlloc();
      *&v76[0] = v30;
      *v28 = 136315138;
      *(v28 + 4) = sub_22F145F20(v20, a2, v76);
      _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] Get Playlist Songs for: '%s'", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      v31 = v30;
      v18 = v29;
      MEMORY[0x2319033A0](v31, -1, -1);
      MEMORY[0x2319033A0](v28, -1, -1);
    }

    v32 = v23[4];
    v33 = v23[5];
    v34 = v23[6];
    v35 = v23[7];
    v36 = v23[8];
    aBlock = v23[3];
    v79 = v32;
    v80 = v33;
    v81 = v34;
    v82 = v35;
    v83 = v36;
    v76[0] = v87;
    v76[1] = v88;
    v76[2] = v89;
    v77 = v90;

    sub_22F3E35AC(v20, a2, v76, v75);

    v43 = *(&v85 + 1);
    v42 = v86;
    v44 = swift_allocObject();
    v45 = v84[1];
    *(v44 + 16) = v84[0];
    *(v44 + 32) = v45;
    *(v44 + 48) = v85;
    *(v44 + 64) = v86;
    *(v44 + 72) = sub_22F236130;
    *(v44 + 80) = v18;
    v74 = v43;

    v73 = v42;

    sub_22F741740();
    v64[1] = v18;
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v46 = v67;
    sub_22F740AC0();
    sub_22F740A90();
    (*(isa + 8))(v46, v70);
    v70 = v23[9];
    v47 = v71;
    v48 = v69;
    (*(v71 + 16))(v69, v75, v66);
    v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v50 = (v15 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = (v50 + 63) & 0xFFFFFFFFFFFFFFF8;
    isa = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 39) & 0xFFFFFFFFFFFFFFF8;
    v53 = swift_allocObject();
    v54 = v48;
    v55 = v66;
    (*(v47 + 32))(v53 + v49, v54, v66);
    v56 = v53 + v50;
    v57 = v88;
    *v56 = v87;
    *(v56 + 16) = v57;
    *(v56 + 32) = v89;
    *(v56 + 48) = v90;
    *(v53 + v51) = v23;
    v58 = v53 + isa;
    *v58 = "MusicKitClient HTTP Request";
    *(v58 + 8) = 27;
    *(v58 + 16) = 2;
    v59 = v65;
    *(v53 + v52) = v65;
    v60 = (v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v60 = sub_22F2360D4;
    v60[1] = v44;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_22F2360E0;
    *(v61 + 24) = v53;
    v82 = sub_22F2360E8;
    v83 = v61;
    aBlock = MEMORY[0x277D85DD0];
    v79 = 1107296256;
    v80 = sub_22F2280B0;
    v81 = &block_descriptor_175;
    v62 = _Block_copy(&aBlock);
    sub_22F1D20B0(&v87, v76);

    v63 = v59;

    dispatch_sync(v70, v62);
    _Block_release(v62);

    (*(v47 + 8))(v75, v55);
    LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

    if (v59)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_22F23578C(uint64_t a1)
{
  sub_22F2358B4(319, &qword_27DAB2968, sub_22F235850);
  if (v1 <= 0x3F)
  {
    sub_22F2358B4(319, &qword_27DAB2978, sub_22F1F208C);
    if (v2 <= 0x3F)
    {
      sub_22F235900(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_22F235850(uint64_t a1)
{
  if (!qword_27DAB2970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1518, &qword_22F77A7E0);
    v1 = sub_22F741860();
    if (!v2)
    {
      atomic_store(v1, &qword_27DAB2970);
    }
  }
}

void sub_22F2358B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22F235900(uint64_t a1)
{
  if (!qword_27DAB2980)
  {
    sub_22F73F690();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DAB2980);
    }
  }
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_53Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_5Tm()
{
  v1 = sub_22F73EEC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

void sub_22F235DC4()
{
  v1 = *(sub_22F73EEC0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 63) & 0xFFFFFFFFFFFFFFF8;
  sub_22F227268(v0 + v2, v0 + v3, *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + ((v4 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_22F235E8C()
{
  result = qword_27DAB2988;
  if (!qword_27DAB2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2988);
  }

  return result;
}

unint64_t sub_22F235EE0()
{
  result = qword_27DAB2990;
  if (!qword_27DAB2990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2990);
  }

  return result;
}

unint64_t sub_22F235F34()
{
  result = qword_2810AA1F8;
  if (!qword_2810AA1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA1F8);
  }

  return result;
}

unint64_t sub_22F235F88()
{
  result = qword_27DAB2998;
  if (!qword_27DAB2998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2998);
  }

  return result;
}

unint64_t sub_22F235FDC()
{
  result = qword_2810A9D00;
  if (!qword_2810A9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9D00);
  }

  return result;
}

uint64_t sub_22F236044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void MusicKitTesseractResponse.songs()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = v2 - v3;
      v6 = (v1 + 48 + 296 * v3);
      while (1)
      {
        if (v3 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_29;
        }

        memcpy(__dst, v6 - 1, sizeof(__dst));
        v8 = v6[1];
        v7 = v6[2];
        v82 = *v6;
        v83 = v8;
        v84 = v7;
        v9 = v6[6];
        v11 = v6[3];
        v10 = v6[4];
        v87 = v6[5];
        v88 = v9;
        v85 = v11;
        v86 = v10;
        v12 = v6[9];
        v14 = v6[7];
        v13 = v6[8];
        v92 = v6[10];
        v91 = v12;
        v89 = v14;
        v90 = v13;
        v15 = v6[13];
        v17 = v6[11];
        v16 = v6[12];
        v96 = v6[14];
        v95 = v15;
        v93 = v17;
        v94 = v16;
        if (sub_22F1E1664(&v82) != 1)
        {
          break;
        }

        v6 = (v6 + 296);
        ++v3;
        if (!--v5)
        {
          goto LABEL_15;
        }
      }

      sub_22F236530(__dst, &v66);
      v65[0] = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22F1469B4(0, *(v4 + 16) + 1, 1);
        v4 = v65[0];
      }

      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      v20 = v4;
      if (v19 >= v18 >> 1)
      {
        sub_22F1469B4((v18 > 1), v19 + 1, 1);
        v20 = v65[0];
      }

      ++v3;
      *(v20 + 16) = v19 + 1;
      memcpy((v20 + 296 * v19 + 32), __dst, 0x128uLL);
      v4 = v20;
    }

    while (v5 != 1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_15:
  v21 = *(v4 + 16);
  if (v21)
  {
    v22 = 0;
    v63 = *(v4 + 16);
    v61 = v21 - 1;
    v23 = v4 + 288;
    v62 = MEMORY[0x277D84F90];
    v60 = v4 + 288;
    v64 = v4;
LABEL_17:
    v24 = (v23 + 296 * v22);
    v25 = v22;
    while (v25 < *(v4 + 16))
    {
      v26 = *(v24 - 32);
      v27 = *(v24 - 31);
      v28 = *(v24 - 9);
      v30 = *(v24 - 12);
      v29 = *(v24 - 11);
      v71 = *(v24 - 10);
      v72 = v28;
      v69 = v30;
      v70 = v29;
      v31 = *(v24 - 5);
      v33 = *(v24 - 8);
      v32 = *(v24 - 7);
      v75 = *(v24 - 6);
      v76 = v31;
      v73 = v33;
      v74 = v32;
      v34 = *(v24 - 1);
      v36 = *(v24 - 4);
      v35 = *(v24 - 3);
      v79 = *(v24 - 2);
      v80 = v34;
      v77 = v36;
      v78 = v35;
      v37 = *(v24 - 15);
      v38 = *(v24 - 13);
      v67 = *(v24 - 14);
      v68 = v38;
      v66 = v37;
      v39 = *v24;
      v40 = v24[1];
      v41 = v24[2];
      v42 = v24[3];
      v43 = v24[4];
      v22 = v25 + 1;
      memmove(__dst, v24 - 30, 0xF0uLL);
      if (sub_22F1E1664(__dst) != 1)
      {
        v94 = v78;
        v95 = v79;
        v96 = v80;
        v91 = v75;
        v93 = v77;
        v92 = v76;
        v86 = v70;
        v87 = v71;
        v89 = v73;
        v90 = v74;
        v88 = v72;
        v82 = v66;
        v83 = v67;
        v84 = v68;
        v85 = v69;
        sub_22F2370A8(&v66, v65);

        sub_22F18C1D8(v39, v40, v41, v42);
        sub_22F1007AC(v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_22F13F194(0, *(v62 + 2) + 1, 1, v62);
        }

        v45 = *(v62 + 2);
        v44 = *(v62 + 3);
        v46 = v26;
        if (v45 >= v44 >> 1)
        {
          v59 = sub_22F13F194((v44 > 1), v45 + 1, 1, v62);
          v46 = v26;
          v62 = v59;
        }

        *(v62 + 2) = v45 + 1;
        v47 = &v62[296 * v45];
        *(v47 + 4) = v46;
        *(v47 + 5) = v27;
        v48 = v82;
        v49 = v84;
        *(v47 + 4) = v83;
        *(v47 + 5) = v49;
        *(v47 + 3) = v48;
        v50 = v85;
        v51 = v86;
        v52 = v88;
        *(v47 + 8) = v87;
        *(v47 + 9) = v52;
        *(v47 + 6) = v50;
        *(v47 + 7) = v51;
        v53 = v89;
        v54 = v90;
        v55 = v92;
        *(v47 + 12) = v91;
        *(v47 + 13) = v55;
        *(v47 + 10) = v53;
        *(v47 + 11) = v54;
        v56 = v93;
        v57 = v94;
        v58 = v96;
        *(v47 + 16) = v95;
        *(v47 + 17) = v58;
        *(v47 + 14) = v56;
        *(v47 + 15) = v57;
        *(v47 + 36) = v39;
        *(v47 + 37) = v40;
        *(v47 + 38) = v41;
        *(v47 + 39) = v42;
        *(v47 + 40) = v43;
        v4 = v64;
        v23 = v60;
        if (v61 != v25)
        {
          goto LABEL_17;
        }

        goto LABEL_27;
      }

      v24 += 37;
      ++v25;
      v4 = v64;
      if (v63 == v22)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_27:
  }
}

void sub_22F23658C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B63617254706F74 && a2 == 0xE900000000000073)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_22F23661C(uint64_t a1)
{
  v2 = sub_22F237118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F236658(uint64_t a1)
{
  v2 = sub_22F237118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitTesseractResponse.MusicKitTesseractResults.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29B0, &qword_22F77C008);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F237118();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29B8, &qword_22F77C010);
    sub_22F23716C();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

double MusicKitTesseractResponse.results.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void MusicKitTesseractResponse.results.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t sub_22F236884(uint64_t a1)
{
  v2 = sub_22F237244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2368C0(uint64_t a1)
{
  v2 = sub_22F237244();

  return MEMORY[0x2821FE720](a1, v2);
}