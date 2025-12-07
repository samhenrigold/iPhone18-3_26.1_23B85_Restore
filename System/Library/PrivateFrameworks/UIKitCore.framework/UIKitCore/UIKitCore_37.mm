void sub_188EE24E4(double a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7, uint64_t a8, char a9, char a10, id *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  (*(a14 + 80))(v21, a13, a14, a1);
  if (a6)
  {
    a6(v21);
  }

  sub_188A55598(v21, v20);
  (*(a14 + 88))(v19, v21, a13, a14);
  if ((LODWORD(a2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2 < 9.2234e18)
  {
    sub_188AAC950(v20, v19, a2, a9 & 1, a10 & 1, a11, a12, a5);
    sub_188A3F5FC(v19, &qword_1EA934050, qword_18A64CA10);
    sub_188A3F5FC(v20, &qword_1EA934050, qword_18A64CA10);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_188EE2660()
{
  v2.receiver = v0;
  v2.super_class = _s23InProcessAnimationStateCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_188EE26A8()
{
  result = qword_1EA9364A0;
  if (!qword_1EA9364A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9364A0);
  }

  return result;
}

double sub_188EE26FC(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3 < 0)
  {
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v4 = *(a1 + 48);
    if (*(a1 + 24) & a2)
    {
      v4 = 0.0;
    }

    if (v3 & a2)
    {
      v6 = 0.0;
    }
  }

  v7 = 6.28318531 / v4 * (6.28318531 / v4);
  v8 = sqrt(v7);
  *(v2 + 56) = v7;
  *(v2 + 64) = v8 + v8;
  *(v2 + 193) = v4 == 0.0;
  v9 = 6.28318531 / v6 * (6.28318531 / v6);
  v10 = sqrt(v9);
  *(v2 + 88) = v9;
  *(v2 + 96) = v10 + v10;
  *(v2 + 194) = v6 == 0.0;
  v11 = 6.28318531 / v5 * (6.28318531 / v5);
  v12 = sqrt(v11);
  *(v2 + 176) = v11;
  *(v2 + 184) = v12 + v12;
  *(v2 + 195) = v5 == 0.0;
  v13 = *a1;
  v14 = *(a1 + 8);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v15 = *a1;
    *(v2 + 32) = v13;
    v16 = 40;
    v17 = v14;
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 24);
  v15 = 6.28318531 / v13 * (6.28318531 / v13);
  v21 = sqrt(v15);
  v17 = (v21 + v21) * v14;
  *(v2 + 32) = v15;
  *(v2 + 40) = v17;
  *(v2 + 48) = v14;
  *(v2 + 80) = v13;
  if (v20)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v2 = v18;
    if (v3)
    {
LABEL_10:
      if (v4 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v16 = 16;
  v14 = v19;
LABEL_17:
  *(v2 + v16) = v14;
  if (v4 == 0.0)
  {
LABEL_11:
    *v2 = *(v2 + 48);
    *(v2 + 8) = 0;
  }

LABEL_12:
  if (v6 == 0.0)
  {
    *(v2 + 16) = *(v2 + 80);
    *(v2 + 24) = 0;
  }

  result = v17 / v15;
  *(v2 + 200) = v17 / v15;
  return result;
}

double sub_188EE284C(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v3 < 0)
  {
    v6 = *(a1 + 56);
    v5 = *(a1 + 64);
    v4 = *(a1 + 48);
    if (*(a1 + 24) & a2)
    {
      v4 = 0.0;
    }

    if (v3 & a2)
    {
      v6 = 0.0;
    }
  }

  v7 = 6.28318531 / v4 * (6.28318531 / v4);
  v8 = sqrt(v7);
  *(v2 + 56) = v7;
  *(v2 + 64) = v8 + v8;
  *(v2 + 169) = v4 == 0.0;
  v9 = 6.28318531 / v6 * (6.28318531 / v6);
  v10 = sqrt(v9);
  *(v2 + 88) = v9;
  *(v2 + 96) = v10 + v10;
  *(v2 + 170) = v6 == 0.0;
  v11 = 6.28318531 / v5 * (6.28318531 / v5);
  v12 = sqrt(v11);
  *(v2 + 152) = v11;
  *(v2 + 160) = v12 + v12;
  *(v2 + 171) = v5 == 0.0;
  v13 = *a1;
  v14 = *(a1 + 8);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v15 = *a1;
    *(v2 + 32) = v13;
    v16 = 40;
    v17 = v14;
    goto LABEL_17;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  v20 = *(a1 + 24);
  v15 = 6.28318531 / v13 * (6.28318531 / v13);
  v21 = sqrt(v15);
  v17 = (v21 + v21) * v14;
  *(v2 + 32) = v15;
  *(v2 + 40) = v17;
  *(v2 + 48) = v14;
  *(v2 + 80) = v13;
  if (v20)
  {
    if (v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    *v2 = v18;
    if (v3)
    {
LABEL_10:
      if (v4 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v16 = 16;
  v14 = v19;
LABEL_17:
  *(v2 + v16) = v14;
  if (v4 == 0.0)
  {
LABEL_11:
    *v2 = *(v2 + 48);
    *(v2 + 8) = 0;
  }

LABEL_12:
  if (v6 == 0.0)
  {
    *(v2 + 16) = *(v2 + 80);
    *(v2 + 24) = 0;
  }

  result = v17 / v15;
  *(v2 + 176) = v17 / v15;
  return result;
}

char *sub_188EE299C(__n128 a1)
{
  v2 = v1;
  v480 = a1.n128_f64[0];
  if (a1.n128_f64[0] <= 0.0)
  {
    v11 = *(v1 + 21);

    return v11;
  }

  v3 = *(v1 + 19);
  v4 = *(v1 + 139);
  if (v4)
  {

    *(v1 + 22) = v3;

    *(v1 + 23) = 0;
  }

  v5 = *(v1 + 10);
  v6 = *(v1 + 11);
  v7 = *(v1 + 12);
  v8 = *(v1 + 104);
  v9 = *(v2 + 137);
  v10 = *(v2 + 138);
  if ((v9 & 1) == 0)
  {
    v12 = *(v2 + 6);
    v13 = *(v2 + 7);
    v14 = *(v2 + 8);
    if (*v2 == v12 && *(v2 + 1) == 0.0)
    {
      if ((*(v2 + 138) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v505 = *(v2 + 11);
      v16 = sub_188ABBBFC(*(v2 + 72), *v2, v12);
      v17 = *(v2 + 1);
      v18 = sqrt(v13);
      v19 = v14 * 0.5;
      v521 = v5;
      if (v14 * 0.5 >= v18)
      {
        if (v18 >= v19)
        {
          v35 = v19 * v16 + v17;
          v36 = v16 + v35 * v480;
          v24 = exp(-(v19 * v480));
          v25 = v24 * v36;
          v28 = v24 * v35;
          v29 = v36 * v19;
        }

        else
        {
          v30 = sqrt(v19 * v19 - v18 * v18);
          v31 = cosh(v30 * v480);
          v485 = v7;
          v32 = 1.0 / v30 * (v19 * v16 + v17);
          v33 = sinh(v30 * v480);
          v34 = v16 * v31 + v32 * v33;
          v24 = exp(-(v19 * v480));
          v25 = v24 * v34;
          v28 = v24 * (v30 * (v32 * v31) + v30 * (v16 * v33));
          v29 = v34 * v19;
          v7 = v485;
        }
      }

      else
      {
        v484 = v7;
        v20 = sqrt(v18 * v18 - v19 * v19);
        v21 = __sincos_stret(v20 * v480);
        v22 = 1.0 / v20 * (v19 * v16 + v17);
        v23 = v21.__cosval * v16 + v21.__sinval * v22;
        v24 = exp(-(v19 * v480));
        v25 = v24 * v23;
        v26 = v20 * (v16 * v21.__sinval);
        v27 = v20 * (v21.__cosval * v22);
        v7 = v484;
        v28 = v24 * (v27 - v26);
        v29 = v23 * v19;
      }

      *v2 = v12 + v25;
      *(v2 + 1) = v28 - v24 * v29;
      v5 = v521;
      v6 = v505;
      if ((v10 & 1) == 0)
      {
LABEL_19:
        v15 = *(v2 + 2);
        if (v15 != v5 || *(v2 + 3) != 0.0)
        {
          v37 = sub_188ABBBFC(v8, v15, v5);
          v38 = *(v2 + 3);
          v39 = sqrt(v6);
          v40 = v7 * 0.5;
          if (v7 * 0.5 >= v39)
          {
            if (v39 >= v40)
            {
              v54 = v40 * v37 + v38;
              v55 = v37 + v54 * v480;
              v45 = exp(-(v40 * v480));
              v46 = v45 * v55;
              v47 = v45 * v54;
              v48 = v55 * v40;
            }

            else
            {
              v49 = sqrt(v40 * v40 - v39 * v39);
              v50 = cosh(v49 * v480);
              v51 = 1.0 / v49 * (v40 * v37 + v38);
              v52 = sinh(v49 * v480);
              v53 = v37 * v50 + v51 * v52;
              v45 = exp(-(v40 * v480));
              v46 = v45 * v53;
              v47 = v45 * (v49 * (v51 * v50) + v49 * (v37 * v52));
              v48 = v53 * v40;
            }
          }

          else
          {
            v41 = sqrt(v39 * v39 - v40 * v40);
            v42 = __sincos_stret(v41 * v480);
            v43 = 1.0 / v41 * (v40 * v37 + v38);
            v44 = v42.__cosval * v37 + v42.__sinval * v43;
            v45 = exp(-(v40 * v480));
            v46 = v45 * v44;
            v47 = v45 * (v41 * (v42.__cosval * v43) - v41 * (v37 * v42.__sinval));
            v48 = v44 * v40;
          }

          v56 = v47 - v45 * v48;
          v15 = v5 + v46;
          *(v2 + 2) = v5 + v46;
          *(v2 + 3) = v56;
        }

LABEL_27:
        v57 = 6.28318531 / v15 * (6.28318531 / v15);
        v58 = sqrt(v57);
        v59 = *v2 * (v58 + v58);
        *(v2 + 4) = v57;
        *(v2 + 5) = v59;
        goto LABEL_28;
      }
    }

    if (v9)
    {
      goto LABEL_28;
    }

    v15 = *(v2 + 2);
    goto LABEL_27;
  }

  if ((*(v2 + 138) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_28:

  *(v2 + 14) = v3;
  v60 = *(v2 + 22);
  v61 = *(v2 + 23);
  v62 = *(v2 + 20);
  v63 = *(v2 + 21);
  v65 = *(v2 + 4);
  v64 = *(v2 + 5);
  v542 = v60;
  v543 = v61;
  v544 = v63;
  v545 = v62;
  v66 = v2[1];
  v546 = *v2;
  v547 = v66;
  v548 = v65;
  v549 = v64;
  v415 = v62;
  if (v4)
  {

    v67 = v60;
    if (v63)
    {
LABEL_30:
      if (!v67)
      {
        goto LABEL_38;
      }

      v68 = sub_1890154CC(v63, v67);

      if ((v68 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }
  }

  else
  {
    v70 = *(v2 + 15);
    v69 = *(v2 + 16);

    v71.n128_u64[0] = v70;
    sub_188EE99B8(v3, v71, v69, v480);
    v67 = v542;
    if (v63)
    {
      goto LABEL_30;
    }
  }

  if (v67)
  {

    goto LABEL_38;
  }

LABEL_36:
  if (!v415)
  {

    v72 = v67;
    v73 = 0;
    v11 = v63;
LABEL_537:

    *(v2 + 20) = v73;
    *(v2 + 21) = v11;
    v413 = v543;
    *(v2 + 22) = v72;
    *(v2 + 23) = v413;
    return v11;
  }

LABEL_38:
  sub_188CD18C0(v63, v67);
  v75 = sqrt(v65);
  v76 = v64 * 0.5;
  v414 = v67;
  v427 = v74;
  v522 = v64 * 0.5;
  if (v64 * 0.5 < v75)
  {
    v466 = sqrt(v75 * v75 - v76 * v76);
    v77 = v466 * v480;
    v506 = cos(v466 * v480);
    if (v427)
    {
      v78 = *(v427 + 16);
      v79 = MEMORY[0x1E69E7CC0];
      if (v78)
      {
        v541 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v78);
        v79 = v541;
        v80 = (v427 + 48);
        do
        {
          v486 = v80[-1];
          v448 = *v80;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v79 + 16) + 1, 1);
            v79 = v541;
          }

          v82 = *(v79 + 16);
          v81 = *(v79 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_188CCF904((v81 > 1), v82 + 1, 1);
            v79 = v541;
          }

          *(v79 + 16) = v82 + 1;
          v83 = (v79 + 32 * v82);
          v83[2] = vmulq_n_f64(v486, v506);
          v83[3] = vmulq_n_f64(v448, v506);
          v80 += 2;
          --v78;
        }

        while (v78);
        v99 = *(v427 + 16);
        v100 = MEMORY[0x1E69E7CC0];
        if (v99)
        {
          v541 = MEMORY[0x1E69E7CC0];
          sub_18914A444(v99);
          v100 = v541;
          v101 = (v427 + 48);
          do
          {
            v489 = v101[-1];
            v450 = *v101;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v100 + 16) + 1, 1);
              v100 = v541;
            }

            v102 = v64 * 0.5;
            v104 = *(v100 + 16);
            v103 = *(v100 + 24);
            if (v104 >= v103 >> 1)
            {
              sub_188CCF904((v103 > 1), v104 + 1, 1);
              v102 = v64 * 0.5;
              v100 = v541;
            }

            *(v100 + 16) = v104 + 1;
            v105 = (v100 + 32 * v104);
            v105[2] = vmulq_n_f64(v489, v102);
            v105[3] = vmulq_n_f64(v450, v102);
            v101 += 2;
            --v99;
          }

          while (v99);
        }
      }

      else
      {
        v100 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v100 = 0;
      v79 = 0;
    }

    v106 = sub_18914A510(v100, v415);

    v490 = 1.0 / v466;
    if (!v106)
    {
      v114 = 0;
      goto LABEL_96;
    }

    v107 = *(v106 + 16);
    if (v107)
    {
      v541 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v107);
      v108 = v541;
      v109 = (v106 + 48);
      do
      {
        v428 = *v109;
        v451 = v109[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v108 + 16) + 1, 1);
          v108 = v541;
        }

        v111 = *(v108 + 16);
        v110 = *(v108 + 24);
        if (v111 >= v110 >> 1)
        {
          sub_188CCF904((v110 > 1), v111 + 1, 1);
          v108 = v541;
        }

        *(v108 + 16) = v111 + 1;
        v112 = (v108 + 32 * v111);
        v112[2] = vmulq_n_f64(v451, v490);
        v112[3] = vmulq_n_f64(v428, v490);
        v109 += 2;
        --v107;
      }

      while (v107);

      v113 = *(v108 + 16);
      if (v113)
      {
        goto LABEL_86;
      }
    }

    else
    {

      v108 = MEMORY[0x1E69E7CC0];
      v113 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v113)
      {
LABEL_86:
        v417 = sin(v77);
        v541 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v113);
        v114 = v541;
        v115 = (v108 + 48);
        do
        {
          v429 = *v115;
          v452 = v115[-1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v114 + 16) + 1, 1);
            v114 = v541;
          }

          v117 = *(v114 + 16);
          v116 = *(v114 + 24);
          if (v117 >= v116 >> 1)
          {
            sub_188CCF904((v116 > 1), v117 + 1, 1);
            v114 = v541;
          }

          *(v114 + 16) = v117 + 1;
          v118 = (v114 + 32 * v117);
          v118[2] = vmulq_n_f64(v452, v417);
          v118[3] = vmulq_n_f64(v429, v417);
          v115 += 2;
          --v113;
        }

        while (v113);

LABEL_96:
        v119 = sub_18914A510(v79, v114);

        v481 = exp(-(v522 * v480));
        if (v119)
        {
          v120 = *(v119 + 16);
          if (v120)
          {
            v541 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v120);
            v121 = v541;
            v122 = (v119 + 48);
            do
            {
              v430 = *v122;
              v453 = v122[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v121 + 16) + 1, 1);
                v121 = v541;
              }

              v124 = *(v121 + 16);
              v123 = *(v121 + 24);
              if (v124 >= v123 >> 1)
              {
                sub_188CCF904((v123 > 1), v124 + 1, 1);
                v121 = v541;
              }

              *(v121 + 16) = v124 + 1;
              v125 = (v121 + 32 * v124);
              v125[2] = vmulq_n_f64(v453, v481);
              v125[3] = vmulq_n_f64(v430, v481);
              v122 += 2;
              --v120;
            }

            while (v120);
          }

          else
          {

            v121 = MEMORY[0x1E69E7CC0];
          }
        }

        else
        {
          v121 = 0;
        }

        v126 = sin(v77);
        v418 = v126;
        if (v427)
        {
          v127 = *(v427 + 16);
          v128 = MEMORY[0x1E69E7CC0];
          if (v127)
          {
            v416 = -v126;
            v541 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v127);
            v129 = v541;
            v130 = (v427 + 48);
            do
            {
              v431 = *v130;
              v454 = v130[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v129 + 16) + 1, 1);
                v129 = v541;
              }

              v132 = *(v129 + 16);
              v131 = *(v129 + 24);
              if (v132 >= v131 >> 1)
              {
                sub_188CCF904((v131 > 1), v132 + 1, 1);
                v129 = v541;
              }

              *(v129 + 16) = v132 + 1;
              v133 = (v129 + 32 * v132);
              v133[2] = vmulq_n_f64(v454, v416);
              v133[3] = vmulq_n_f64(v431, v416);
              v130 += 2;
              --v127;
            }

            while (v127);
          }

          else
          {
            v129 = MEMORY[0x1E69E7CC0];
          }

          v136 = sub_188D7F314(v129);
          if (v136)
          {
            v137 = v136;
            v541 = v128;
            result = sub_18914A444(v136);
            if (v137 < 0)
            {
              __break(1u);
              goto LABEL_540;
            }

            v135 = v541;
            v139 = (v129 + 48);
            do
            {
              v432 = *v139;
              v455 = v139[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v135 + 16) + 1, 1);
                v135 = v541;
              }

              v141 = *(v135 + 16);
              v140 = *(v135 + 24);
              if (v141 >= v140 >> 1)
              {
                sub_188CCF904((v140 > 1), v141 + 1, 1);
                v135 = v541;
              }

              *(v135 + 16) = v141 + 1;
              v142 = (v135 + 32 * v141);
              v142[2] = vmulq_n_f64(v455, v466);
              v142[3] = vmulq_n_f64(v432, v466);
              v139 += 2;
              --v137;
            }

            while (v137);
          }

          else
          {
            v135 = sub_18914A4BC(0);
          }

          v143 = sub_188D7F314(v427);
          if (v143)
          {
            v144 = v143;
            v541 = v128;
            result = sub_18914A444(v143);
            if ((v144 & 0x8000000000000000) == 0)
            {
              v134 = v541;
              v145 = (v427 + 48);
              do
              {
                v433 = *v145;
                v456 = v145[-1];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v134 + 16) + 1, 1);
                  v134 = v541;
                }

                v146 = v64 * 0.5;
                v148 = *(v134 + 16);
                v147 = *(v134 + 24);
                if (v148 >= v147 >> 1)
                {
                  sub_188CCF904((v147 > 1), v148 + 1, 1);
                  v146 = v64 * 0.5;
                  v134 = v541;
                }

                *(v134 + 16) = v148 + 1;
                v149 = (v134 + 32 * v148);
                v149[2] = vmulq_n_f64(v456, v146);
                v149[3] = vmulq_n_f64(v433, v146);
                v145 += 2;
                --v144;
              }

              while (v144);
              goto LABEL_138;
            }

LABEL_540:
            __break(1u);
            goto LABEL_541;
          }

          v134 = sub_18914A4BC(0);
        }

        else
        {
          v134 = 0;
          v135 = 0;
        }

LABEL_138:
        v150 = sub_18914A510(v134, v415);

        if (!v150)
        {
          v158 = 0;
LABEL_171:
          v172 = sub_18914A510(v135, v158);

          if (!v172)
          {
            v175 = 0;
LABEL_184:
            v541 = v175;
            if (!v427)
            {
              v187 = 0;
              v182 = 0;
              goto LABEL_206;
            }

            v180 = sub_188D7F314(v427);
            if (!v180)
            {
              v182 = sub_18914A4BC(0);
LABEL_196:
              v188 = sub_188D7F314(v427);
              if (v188)
              {
                v189 = v188;
                v530 = MEMORY[0x1E69E7CC0];
                result = sub_18914A444(v188);
                if ((v189 & 0x8000000000000000) == 0)
                {
                  v187 = v530;
                  v190 = (v427 + 48);
                  do
                  {
                    v509 = v190[-1];
                    v470 = *v190;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_188CCF904(0, *(v187 + 16) + 1, 1);
                      v187 = v530;
                    }

                    v191 = v64 * 0.5;
                    v193 = *(v187 + 16);
                    v192 = *(v187 + 24);
                    if (v193 >= v192 >> 1)
                    {
                      sub_188CCF904((v192 > 1), v193 + 1, 1);
                      v191 = v64 * 0.5;
                      v187 = v530;
                    }

                    *(v187 + 16) = v193 + 1;
                    v194 = (v187 + 32 * v193);
                    v194[2] = vmulq_n_f64(v509, v191);
                    v194[3] = vmulq_n_f64(v470, v191);
                    v190 += 2;
                    --v189;
                  }

                  while (v189);
                  goto LABEL_206;
                }

LABEL_546:
                __break(1u);
                goto LABEL_547;
              }

              v187 = sub_18914A4BC(0);
LABEL_206:
              v195 = v414;
              v196 = sub_18914A510(v187, v415);

              if (!v196)
              {
                v204 = 0;
                goto LABEL_229;
              }

              v197 = sub_188D7F314(v196);
              if (!v197)
              {
                v199 = sub_18914A4BC(0);
LABEL_218:

                v205 = sub_188D7F314(v199);
                if (!v205)
                {
                  v204 = sub_18914A4BC(0);
LABEL_228:

                  v195 = v414;
LABEL_229:
                  v211 = sub_18914A510(v182, v204);

                  if (v211)
                  {
                    v212 = sub_188D7F314(v211);
                    if (!v212)
                    {
                      v214 = sub_18914A4BC(0);
                      goto LABEL_240;
                    }

                    v213 = v212;
                    v533 = MEMORY[0x1E69E7CC0];
                    result = sub_18914A444(v212);
                    if ((v213 & 0x8000000000000000) == 0)
                    {
                      v492 = -v522;
                      v214 = v533;
                      v215 = (v211 + 48);
                      do
                      {
                        v512 = *v215;
                        v523 = v215[-1];
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_188CCF904(0, *(v214 + 16) + 1, 1);
                          v214 = v533;
                        }

                        v217 = *(v214 + 16);
                        v216 = *(v214 + 24);
                        if (v217 >= v216 >> 1)
                        {
                          sub_188CCF904((v216 > 1), v217 + 1, 1);
                          v214 = v533;
                        }

                        *(v214 + 16) = v217 + 1;
                        v218 = (v214 + 32 * v217);
                        v218[2] = vmulq_n_f64(v523, v492);
                        v218[3] = vmulq_n_f64(v512, v492);
                        v215 += 2;
                        --v213;
                      }

                      while (v213);
LABEL_240:

                      v219 = sub_188D7F314(v214);
                      if (v219)
                      {
                        v220 = v219;
                        v534 = MEMORY[0x1E69E7CC0];
                        result = sub_18914A444(v219);
                        if ((v220 & 0x8000000000000000) == 0)
                        {
                          v221 = v534;
                          v222 = (v214 + 48);
                          do
                          {
                            v513 = *v222;
                            v524 = v222[-1];
                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                            {
                              sub_188CCF904(0, *(v221 + 16) + 1, 1);
                              v221 = v534;
                            }

                            v224 = *(v221 + 16);
                            v223 = *(v221 + 24);
                            if (v224 >= v223 >> 1)
                            {
                              sub_188CCF904((v223 > 1), v224 + 1, 1);
                              v221 = v534;
                            }

                            *(v221 + 16) = v224 + 1;
                            v225 = (v221 + 32 * v224);
                            v225[2] = vmulq_n_f64(v524, v481);
                            v225[3] = vmulq_n_f64(v513, v481);
                            v222 += 2;
                            --v220;
                          }

                          while (v220);
                          goto LABEL_534;
                        }

                        goto LABEL_550;
                      }

LABEL_533:
                      v221 = sub_18914A4BC(v219);
LABEL_534:

                      v195 = v414;
                      goto LABEL_535;
                    }

LABEL_549:
                    __break(1u);
LABEL_550:
                    __break(1u);
                    goto LABEL_551;
                  }

LABEL_522:
                  v221 = 0;
LABEL_535:
                  sub_188ECCDF0(&v541, v221);

                  goto LABEL_536;
                }

                v206 = v205;
                v532 = MEMORY[0x1E69E7CC0];
                result = sub_18914A444(v205);
                if ((v206 & 0x8000000000000000) == 0)
                {
                  v204 = v532;
                  v207 = (v199 + 48);
                  do
                  {
                    v491 = *v207;
                    v511 = v207[-1];
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_188CCF904(0, *(v204 + 16) + 1, 1);
                      v204 = v532;
                    }

                    v209 = *(v204 + 16);
                    v208 = *(v204 + 24);
                    if (v209 >= v208 >> 1)
                    {
                      sub_188CCF904((v208 > 1), v209 + 1, 1);
                      v204 = v532;
                    }

                    *(v204 + 16) = v209 + 1;
                    v210 = (v204 + 32 * v209);
                    v210[2] = vmulq_n_f64(v511, v418);
                    v210[3] = vmulq_n_f64(v491, v418);
                    v207 += 2;
                    --v206;
                  }

                  while (v206);
                  goto LABEL_228;
                }

LABEL_548:
                __break(1u);
                goto LABEL_549;
              }

              v198 = v197;
              v531 = MEMORY[0x1E69E7CC0];
              result = sub_18914A444(v197);
              if ((v198 & 0x8000000000000000) == 0)
              {
                v199 = v531;
                v200 = (v196 + 48);
                do
                {
                  v510 = v200[-1];
                  v471 = *v200;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_188CCF904(0, *(v199 + 16) + 1, 1);
                    v199 = v531;
                  }

                  v202 = *(v199 + 16);
                  v201 = *(v199 + 24);
                  if (v202 >= v201 >> 1)
                  {
                    sub_188CCF904((v201 > 1), v202 + 1, 1);
                    v199 = v531;
                  }

                  *(v199 + 16) = v202 + 1;
                  v203 = (v199 + 32 * v202);
                  v203[2] = vmulq_n_f64(v510, v490);
                  v203[3] = vmulq_n_f64(v471, v490);
                  v200 += 2;
                  --v198;
                }

                while (v198);
                goto LABEL_218;
              }

LABEL_547:
              __break(1u);
              goto LABEL_548;
            }

            v181 = v180;
            v529 = MEMORY[0x1E69E7CC0];
            result = sub_18914A444(v180);
            if ((v181 & 0x8000000000000000) == 0)
            {
              v182 = v529;
              v183 = (v427 + 48);
              do
              {
                v461 = *v183;
                v469 = v183[-1];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v182 + 16) + 1, 1);
                  v182 = v529;
                }

                v185 = *(v182 + 16);
                v184 = *(v182 + 24);
                if (v185 >= v184 >> 1)
                {
                  sub_188CCF904((v184 > 1), v185 + 1, 1);
                  v182 = v529;
                }

                *(v182 + 16) = v185 + 1;
                v186 = (v182 + 32 * v185);
                v186[2] = vmulq_n_f64(v469, v506);
                v186[3] = vmulq_n_f64(v461, v506);
                v183 += 2;
                --v181;
              }

              while (v181);
              goto LABEL_196;
            }

LABEL_545:
            __break(1u);
            goto LABEL_546;
          }

          v173 = sub_188D7F314(v172);
          if (!v173)
          {
            v175 = sub_18914A4BC(0);
LABEL_183:

            goto LABEL_184;
          }

          v174 = v173;
          v541 = MEMORY[0x1E69E7CC0];
          result = sub_18914A444(v173);
          if ((v174 & 0x8000000000000000) == 0)
          {
            v175 = v541;
            v176 = (v172 + 48);
            do
            {
              v460 = *v176;
              v468 = v176[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v175 + 16) + 1, 1);
                v175 = v541;
              }

              v178 = *(v175 + 16);
              v177 = *(v175 + 24);
              if (v178 >= v177 >> 1)
              {
                sub_188CCF904((v177 > 1), v178 + 1, 1);
                v175 = v541;
              }

              *(v175 + 16) = v178 + 1;
              v179 = (v175 + 32 * v178);
              v179[2] = vmulq_n_f64(v468, v481);
              v179[3] = vmulq_n_f64(v460, v481);
              v176 += 2;
              --v174;
            }

            while (v174);
            goto LABEL_183;
          }

          goto LABEL_543;
        }

        v151 = sub_188D7F314(v150);
        if (!v151)
        {
          v153 = sub_18914A4BC(0);
LABEL_150:

          v159 = sub_188D7F314(v153);
          if (!v159)
          {
            v161 = sub_18914A4BC(0);
LABEL_160:

            v166 = sub_188D7F314(v161);
            if (v166)
            {
              v167 = v166;
              v541 = MEMORY[0x1E69E7CC0];
              result = sub_18914A444(v166);
              if (v167 < 0)
              {
LABEL_544:
                __break(1u);
                goto LABEL_545;
              }

              v158 = v541;
              v168 = (v161 + 48);
              do
              {
                v436 = *v168;
                v459 = v168[-1];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v158 + 16) + 1, 1);
                  v158 = v541;
                }

                v170 = *(v158 + 16);
                v169 = *(v158 + 24);
                if (v170 >= v169 >> 1)
                {
                  sub_188CCF904((v169 > 1), v170 + 1, 1);
                  v158 = v541;
                }

                *(v158 + 16) = v170 + 1;
                v171 = (v158 + 32 * v170);
                v171[2] = vmulq_n_f64(v459, v466);
                v171[3] = vmulq_n_f64(v436, v466);
                v168 += 2;
                --v167;
              }

              while (v167);
            }

            else
            {
              v158 = sub_18914A4BC(0);
            }

            goto LABEL_171;
          }

          v160 = v159;
          v541 = MEMORY[0x1E69E7CC0];
          result = sub_18914A444(v159);
          if ((v160 & 0x8000000000000000) == 0)
          {
            v161 = v541;
            v162 = (v153 + 48);
            do
            {
              v435 = *v162;
              v458 = v162[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v161 + 16) + 1, 1);
                v161 = v541;
              }

              v164 = *(v161 + 16);
              v163 = *(v161 + 24);
              if (v164 >= v163 >> 1)
              {
                sub_188CCF904((v163 > 1), v164 + 1, 1);
                v161 = v541;
              }

              *(v161 + 16) = v164 + 1;
              v165 = (v161 + 32 * v164);
              v165[2] = vmulq_n_f64(v458, v506);
              v165[3] = vmulq_n_f64(v435, v506);
              v162 += 2;
              --v160;
            }

            while (v160);
            goto LABEL_160;
          }

LABEL_542:
          __break(1u);
LABEL_543:
          __break(1u);
          goto LABEL_544;
        }

        v152 = v151;
        v541 = MEMORY[0x1E69E7CC0];
        result = sub_18914A444(v151);
        if ((v152 & 0x8000000000000000) == 0)
        {
          v153 = v541;
          v154 = (v150 + 48);
          do
          {
            v434 = *v154;
            v457 = v154[-1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v153 + 16) + 1, 1);
              v153 = v541;
            }

            v156 = *(v153 + 16);
            v155 = *(v153 + 24);
            if (v156 >= v155 >> 1)
            {
              sub_188CCF904((v155 > 1), v156 + 1, 1);
              v153 = v541;
            }

            *(v153 + 16) = v156 + 1;
            v157 = (v153 + 32 * v156);
            v157[2] = vmulq_n_f64(v457, v490);
            v157[3] = vmulq_n_f64(v434, v490);
            v154 += 2;
            --v152;
          }

          while (v152);
          goto LABEL_150;
        }

LABEL_541:
        __break(1u);
        goto LABEL_542;
      }
    }

    v114 = MEMORY[0x1E69E7CC0];
    goto LABEL_96;
  }

  if (v75 >= v76)
  {
    if (v74)
    {
      v91 = *(v74 + 16);
      v92 = MEMORY[0x1E69E7CC0];
      if (v91)
      {
        v93 = v74;
        v541 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v91);
        v92 = v541;
        v94 = v93 + 3;
        do
        {
          v488 = *v94;
          v508 = v94[-1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v92 + 16) + 1, 1);
            v92 = v541;
          }

          v95 = v64 * 0.5;
          v97 = *(v92 + 16);
          v96 = *(v92 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_188CCF904((v96 > 1), v97 + 1, 1);
            v95 = v64 * 0.5;
            v92 = v541;
          }

          *(v92 + 16) = v97 + 1;
          v98 = (v92 + 32 * v97);
          v98[2] = vmulq_n_f64(v508, v95);
          v98[3] = vmulq_n_f64(v488, v95);
          v94 += 2;
          --v91;
        }

        while (v91);
      }
    }

    else
    {
      v92 = 0;
    }

    v233 = sub_18914A510(v92, v415);

    if (v233)
    {
      v234 = *(v233 + 16);
      if (v234)
      {
        v541 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v234);
        v235 = v541;
        v236 = (v233 + 48);
        do
        {
          v494 = *v236;
          v514 = v236[-1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v235 + 16) + 1, 1);
            v235 = v541;
          }

          v238 = *(v235 + 16);
          v237 = *(v235 + 24);
          if (v238 >= v237 >> 1)
          {
            sub_188CCF904((v237 > 1), v238 + 1, 1);
            v235 = v541;
          }

          *(v235 + 16) = v238 + 1;
          v239 = (v235 + 32 * v238);
          v239[2] = vmulq_n_f64(v514, v480);
          v239[3] = vmulq_n_f64(v494, v480);
          v236 += 2;
          --v234;
        }

        while (v234);
      }

      else
      {

        v235 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v235 = 0;
    }

    v248 = sub_18914A510(v427, v235);

    v515 = exp(-(v522 * v480));
    if (v248)
    {
      v249 = *(v248 + 16);
      if (v249)
      {
        v541 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v249);
        v121 = v541;
        v250 = (v248 + 48);
        do
        {
          v496 = v250[-1];
          v475 = *v250;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v121 + 16) + 1, 1);
            v121 = v541;
          }

          v252 = *(v121 + 16);
          v251 = *(v121 + 24);
          if (v252 >= v251 >> 1)
          {
            sub_188CCF904((v251 > 1), v252 + 1, 1);
            v121 = v541;
          }

          *(v121 + 16) = v252 + 1;
          v253 = (v121 + 32 * v252);
          v253[2] = vmulq_n_f64(v496, v515);
          v253[3] = vmulq_n_f64(v475, v515);
          v250 += 2;
          --v249;
        }

        while (v249);

        v254 = v427;
        if (!v427)
        {
          goto LABEL_312;
        }

LABEL_292:
        v255 = sub_188D7F314(v254);
        if (v255)
        {
          v256 = v255;
          v541 = MEMORY[0x1E69E7CC0];
          result = sub_18914A444(v255);
          if (v256 < 0)
          {
LABEL_551:
            __break(1u);
            goto LABEL_552;
          }

          v257 = v541;
          v258 = (v427 + 48);
          do
          {
            v497 = v258[-1];
            v476 = *v258;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v257 + 16) + 1, 1);
              v257 = v541;
            }

            v259 = v64 * 0.5;
            v261 = *(v257 + 16);
            v260 = *(v257 + 24);
            if (v261 >= v260 >> 1)
            {
              sub_188CCF904((v260 > 1), v261 + 1, 1);
              v259 = v64 * 0.5;
              v257 = v541;
            }

            *(v257 + 16) = v261 + 1;
            v262 = (v257 + 32 * v261);
            v262[2] = vmulq_n_f64(v497, v259);
            v262[3] = vmulq_n_f64(v476, v259);
            v258 += 2;
            --v256;
          }

          while (v256);
        }

        else
        {
          v257 = sub_18914A4BC(0);
        }

LABEL_314:
        v269 = sub_18914A510(v257, v415);

        if (v269)
        {
          v270 = sub_188D7F314(v269);
          if (v270)
          {
            v271 = v270;
            v541 = MEMORY[0x1E69E7CC0];
            result = sub_18914A444(v270);
            if (v271 < 0)
            {
LABEL_553:
              __break(1u);
              goto LABEL_554;
            }

            v272 = v541;
            v273 = (v269 + 48);
            do
            {
              v498 = v273[-1];
              v477 = *v273;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v272 + 16) + 1, 1);
                v272 = v541;
              }

              v275 = *(v272 + 16);
              v274 = *(v272 + 24);
              if (v275 >= v274 >> 1)
              {
                sub_188CCF904((v274 > 1), v275 + 1, 1);
                v272 = v541;
              }

              *(v272 + 16) = v275 + 1;
              v276 = (v272 + 32 * v275);
              v276[2] = vmulq_n_f64(v498, v515);
              v276[3] = vmulq_n_f64(v477, v515);
              v273 += 2;
              --v271;
            }

            while (v271);
          }

          else
          {
            v272 = sub_18914A4BC(0);
          }

          v277 = v427;
          if (v427)
          {
            goto LABEL_342;
          }
        }

        else
        {
          v272 = 0;
          v277 = v427;
          if (v427)
          {
LABEL_342:
            v289 = sub_188D7F314(v277);
            if (v289)
            {
              v290 = v289;
              v541 = MEMORY[0x1E69E7CC0];
              result = sub_18914A444(v289);
              if (v290 < 0)
              {
LABEL_555:
                __break(1u);
                goto LABEL_556;
              }

              v278 = v541;
              v291 = (v427 + 48);
              do
              {
                v499 = v291[-1];
                v478 = *v291;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v278 + 16) + 1, 1);
                  v278 = v541;
                }

                v292 = v64 * 0.5;
                v294 = *(v278 + 16);
                v293 = *(v278 + 24);
                if (v294 >= v293 >> 1)
                {
                  sub_188CCF904((v293 > 1), v294 + 1, 1);
                  v292 = v64 * 0.5;
                  v278 = v541;
                }

                *(v278 + 16) = v294 + 1;
                v295 = (v278 + 32 * v294);
                v295[2] = vmulq_n_f64(v499, v292);
                v295[3] = vmulq_n_f64(v478, v292);
                v291 += 2;
                --v290;
              }

              while (v290);
            }

            else
            {
              v278 = sub_18914A4BC(0);
            }

LABEL_363:
            v303 = sub_18914A510(v278, v415);

            if (v303)
            {
              v304 = sub_188D7F314(v303);
              if (v304)
              {
                v305 = v304;
                v541 = MEMORY[0x1E69E7CC0];
                result = sub_18914A444(v304);
                if (v305 < 0)
                {
LABEL_557:
                  __break(1u);
                  goto LABEL_558;
                }

                v306 = v541;
                v307 = (v303 + 48);
                do
                {
                  v500 = v307[-1];
                  v479 = *v307;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_188CCF904(0, *(v306 + 16) + 1, 1);
                    v306 = v541;
                  }

                  v309 = *(v306 + 16);
                  v308 = *(v306 + 24);
                  if (v309 >= v308 >> 1)
                  {
                    sub_188CCF904((v308 > 1), v309 + 1, 1);
                    v306 = v541;
                  }

                  *(v306 + 16) = v309 + 1;
                  v310 = (v306 + 32 * v309);
                  v310[2] = vmulq_n_f64(v500, v480);
                  v310[3] = vmulq_n_f64(v479, v480);
                  v307 += 2;
                  --v305;
                }

                while (v305);
              }

              else
              {
                v306 = sub_18914A4BC(0);
              }
            }

            else
            {
              v306 = 0;
            }

            v317 = sub_18914A510(v427, v306);

            if (v317)
            {
              v318 = sub_188D7F314(v317);
              if (v318)
              {
                v319 = v318;
                v541 = MEMORY[0x1E69E7CC0];
                result = sub_18914A444(v318);
                if (v319 < 0)
                {
LABEL_559:
                  __break(1u);
                  goto LABEL_560;
                }

                v483 = -v522;
                v320 = v541;
                v321 = (v317 + 48);
                do
                {
                  v525 = v321[-1];
                  v501 = *v321;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_188CCF904(0, *(v320 + 16) + 1, 1);
                    v320 = v541;
                  }

                  v323 = *(v320 + 16);
                  v322 = *(v320 + 24);
                  if (v323 >= v322 >> 1)
                  {
                    sub_188CCF904((v322 > 1), v323 + 1, 1);
                    v320 = v541;
                  }

                  *(v320 + 16) = v323 + 1;
                  v324 = (v320 + 32 * v323);
                  v324[2] = vmulq_n_f64(v525, v483);
                  v324[3] = vmulq_n_f64(v501, v483);
                  v321 += 2;
                  --v319;
                }

                while (v319);
              }

              else
              {
                v320 = sub_18914A4BC(0);
              }

              v333 = sub_188D7F314(v320);
              if (v333)
              {
                v334 = v333;
                v541 = MEMORY[0x1E69E7CC0];
                result = sub_18914A444(v333);
                if (v334 < 0)
                {
LABEL_562:
                  __break(1u);
                  goto LABEL_563;
                }

                v325 = v541;
                v335 = (v320 + 48);
                do
                {
                  v526 = v335[-1];
                  v502 = *v335;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_188CCF904(0, *(v325 + 16) + 1, 1);
                    v325 = v541;
                  }

                  v337 = *(v325 + 16);
                  v336 = *(v325 + 24);
                  if (v337 >= v336 >> 1)
                  {
                    sub_188CCF904((v336 > 1), v337 + 1, 1);
                    v325 = v541;
                  }

                  *(v325 + 16) = v337 + 1;
                  v338 = (v325 + 32 * v337);
                  v338[2] = vmulq_n_f64(v526, v515);
                  v338[3] = vmulq_n_f64(v502, v515);
                  v335 += 2;
                  --v334;
                }

                while (v334);
              }

              else
              {
                v325 = sub_18914A4BC(0);
              }
            }

            else
            {
              v325 = 0;
            }

            v355 = sub_18914A510(v272, v325);

            v541 = v355;
            v195 = v414;
LABEL_536:
            v11 = sub_18914A510(v121, v195);

            v72 = v195;
            v73 = v541;
            goto LABEL_537;
          }
        }

        v278 = 0;
        goto LABEL_363;
      }

      v121 = MEMORY[0x1E69E7CC0];
      v254 = v427;
      if (v427)
      {
        goto LABEL_292;
      }
    }

    else
    {
      v121 = 0;
      v254 = v427;
      if (v427)
      {
        goto LABEL_292;
      }
    }

LABEL_312:
    v257 = 0;
    goto LABEL_314;
  }

  v449 = sqrt(v76 * v76 - v75 * v75);
  v84 = v449 * v480;
  v507 = cosh(v449 * v480);
  if (v427)
  {
    v85 = *(v427 + 16);
    v86 = MEMORY[0x1E69E7CC0];
    if (v85)
    {
      v541 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v85);
      v86 = v541;
      v87 = (v427 + 48);
      do
      {
        v487 = v87[-1];
        v467 = *v87;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v86 + 16) + 1, 1);
          v86 = v541;
        }

        v89 = *(v86 + 16);
        v88 = *(v86 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_188CCF904((v88 > 1), v89 + 1, 1);
          v86 = v541;
        }

        *(v86 + 16) = v89 + 1;
        v90 = (v86 + 32 * v89);
        v90[2] = vmulq_n_f64(v487, v507);
        v90[3] = vmulq_n_f64(v467, v507);
        v87 += 2;
        --v85;
      }

      while (v85);
      v226 = *(v427 + 16);
      v227 = MEMORY[0x1E69E7CC0];
      if (v226)
      {
        v541 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v226);
        v227 = v541;
        v228 = (v427 + 48);
        do
        {
          v493 = v228[-1];
          v472 = *v228;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v227 + 16) + 1, 1);
            v227 = v541;
          }

          v229 = v64 * 0.5;
          v231 = *(v227 + 16);
          v230 = *(v227 + 24);
          if (v231 >= v230 >> 1)
          {
            sub_188CCF904((v230 > 1), v231 + 1, 1);
            v229 = v64 * 0.5;
            v227 = v541;
          }

          *(v227 + 16) = v231 + 1;
          v232 = (v227 + 32 * v231);
          v232[2] = vmulq_n_f64(v493, v229);
          v232[3] = vmulq_n_f64(v472, v229);
          v228 += 2;
          --v226;
        }

        while (v226);
      }
    }

    else
    {
      v227 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v227 = 0;
    v86 = 0;
  }

  v240 = sub_18914A510(v227, v415);

  v495 = 1.0 / v449;
  if (v240)
  {
    v241 = *(v240 + 16);
    if (v241)
    {
      v541 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v241);
      v242 = v541;
      v243 = (v240 + 48);
      do
      {
        v473 = v243[-1];
        v437 = *v243;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v242 + 16) + 1, 1);
          v242 = v541;
        }

        v245 = *(v242 + 16);
        v244 = *(v242 + 24);
        if (v245 >= v244 >> 1)
        {
          sub_188CCF904((v244 > 1), v245 + 1, 1);
          v242 = v541;
        }

        *(v242 + 16) = v245 + 1;
        v246 = (v242 + 32 * v245);
        v246[2] = vmulq_n_f64(v473, v495);
        v246[3] = vmulq_n_f64(v437, v495);
        v243 += 2;
        --v241;
      }

      while (v241);
    }

    else
    {

      v242 = MEMORY[0x1E69E7CC0];
    }

    v474 = sinh(v84);
    v263 = sub_188D7F314(v242);
    if (v263)
    {
      v264 = v263;
      v541 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v263);
      if (v264 < 0)
      {
LABEL_552:
        __break(1u);
        goto LABEL_553;
      }

      v247 = v541;
      v265 = (v242 + 48);
      do
      {
        v438 = v265[-1];
        v419 = *v265;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v247 + 16) + 1, 1);
          v247 = v541;
        }

        v267 = *(v247 + 16);
        v266 = *(v247 + 24);
        if (v267 >= v266 >> 1)
        {
          sub_188CCF904((v266 > 1), v267 + 1, 1);
          v247 = v541;
        }

        *(v247 + 16) = v267 + 1;
        v268 = (v247 + 32 * v267);
        v268[2] = vmulq_n_f64(v438, v474);
        v268[3] = vmulq_n_f64(v419, v474);
        v265 += 2;
        --v264;
      }

      while (v264);
    }

    else
    {
      v247 = sub_18914A4BC(0);
    }
  }

  else
  {
    v474 = sinh(v84);
    v247 = 0;
  }

  v279 = sub_18914A510(v86, v247);

  v482 = exp(-(v522 * v480));
  if (v279)
  {
    v280 = sub_188D7F314(v279);
    if (v280)
    {
      v281 = v280;
      v541 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v280);
      if (v281 < 0)
      {
LABEL_554:
        __break(1u);
        goto LABEL_555;
      }

      v121 = v541;
      v282 = (v279 + 48);
      do
      {
        v439 = v282[-1];
        v420 = *v282;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v121 + 16) + 1, 1);
          v121 = v541;
        }

        v284 = *(v121 + 16);
        v283 = *(v121 + 24);
        if (v284 >= v283 >> 1)
        {
          sub_188CCF904((v283 > 1), v284 + 1, 1);
          v121 = v541;
        }

        *(v121 + 16) = v284 + 1;
        v285 = (v121 + 32 * v284);
        v285[2] = vmulq_n_f64(v439, v482);
        v285[3] = vmulq_n_f64(v420, v482);
        v282 += 2;
        --v281;
      }

      while (v281);
    }

    else
    {
      v121 = sub_18914A4BC(0);
    }

    v286 = v427;
    if (v427)
    {
      goto LABEL_353;
    }

LABEL_339:
    v287 = 0;
    v288 = 0;
    goto LABEL_418;
  }

  v121 = 0;
  v286 = v427;
  if (!v427)
  {
    goto LABEL_339;
  }

LABEL_353:
  v296 = sub_188D7F314(v286);
  if (v296)
  {
    v297 = v296;
    v541 = MEMORY[0x1E69E7CC0];
    result = sub_18914A444(v296);
    if (v297 < 0)
    {
LABEL_556:
      __break(1u);
      goto LABEL_557;
    }

    v298 = v541;
    v299 = (v427 + 48);
    do
    {
      v440 = v299[-1];
      v421 = *v299;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v298 + 16) + 1, 1);
        v298 = v541;
      }

      v301 = *(v298 + 16);
      v300 = *(v298 + 24);
      if (v301 >= v300 >> 1)
      {
        sub_188CCF904((v300 > 1), v301 + 1, 1);
        v298 = v541;
      }

      *(v298 + 16) = v301 + 1;
      v302 = (v298 + 32 * v301);
      v302[2] = vmulq_n_f64(v440, v474);
      v302[3] = vmulq_n_f64(v421, v474);
      v299 += 2;
      --v297;
    }

    while (v297);
  }

  else
  {
    v298 = sub_18914A4BC(0);
  }

  v311 = sub_188D7F314(v298);
  if (v311)
  {
    v312 = v311;
    v541 = MEMORY[0x1E69E7CC0];
    result = sub_18914A444(v311);
    if (v312 < 0)
    {
LABEL_558:
      __break(1u);
      goto LABEL_559;
    }

    v288 = v541;
    v313 = (v298 + 48);
    do
    {
      v441 = v313[-1];
      v422 = *v313;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v288 + 16) + 1, 1);
        v288 = v541;
      }

      v315 = *(v288 + 16);
      v314 = *(v288 + 24);
      if (v315 >= v314 >> 1)
      {
        sub_188CCF904((v314 > 1), v315 + 1, 1);
        v288 = v541;
      }

      *(v288 + 16) = v315 + 1;
      v316 = (v288 + 32 * v315);
      v316[2] = vmulq_n_f64(v441, v449);
      v316[3] = vmulq_n_f64(v422, v449);
      v313 += 2;
      --v312;
    }

    while (v312);
  }

  else
  {
    v288 = sub_18914A4BC(0);
  }

  v326 = sub_188D7F314(v427);
  if (v326)
  {
    v327 = v326;
    v541 = MEMORY[0x1E69E7CC0];
    result = sub_18914A444(v326);
    if (v327 < 0)
    {
LABEL_561:
      __break(1u);
      goto LABEL_562;
    }

    v287 = v541;
    v328 = (v427 + 48);
    do
    {
      v442 = v328[-1];
      v423 = *v328;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v287 + 16) + 1, 1);
        v287 = v541;
      }

      v329 = v64 * 0.5;
      v331 = *(v287 + 16);
      v330 = *(v287 + 24);
      if (v331 >= v330 >> 1)
      {
        sub_188CCF904((v330 > 1), v331 + 1, 1);
        v329 = v64 * 0.5;
        v287 = v541;
      }

      *(v287 + 16) = v331 + 1;
      v332 = (v287 + 32 * v331);
      v332[2] = vmulq_n_f64(v442, v329);
      v332[3] = vmulq_n_f64(v423, v329);
      v328 += 2;
      --v327;
    }

    while (v327);
  }

  else
  {
    v287 = sub_18914A4BC(0);
  }

LABEL_418:
  v339 = sub_18914A510(v287, v415);

  if (v339)
  {
    v340 = sub_188D7F314(v339);
    if (v340)
    {
      v341 = v340;
      v541 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v340);
      if (v341 < 0)
      {
LABEL_560:
        __break(1u);
        goto LABEL_561;
      }

      v342 = v541;
      v343 = (v339 + 48);
      do
      {
        v443 = v343[-1];
        v424 = *v343;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v342 + 16) + 1, 1);
          v342 = v541;
        }

        v345 = *(v342 + 16);
        v344 = *(v342 + 24);
        if (v345 >= v344 >> 1)
        {
          sub_188CCF904((v344 > 1), v345 + 1, 1);
          v342 = v541;
        }

        *(v342 + 16) = v345 + 1;
        v346 = (v342 + 32 * v345);
        v346[2] = vmulq_n_f64(v443, v495);
        v346[3] = vmulq_n_f64(v424, v495);
        v343 += 2;
        --v341;
      }

      while (v341);
    }

    else
    {
      v342 = sub_18914A4BC(0);
    }

    v348 = sub_188D7F314(v342);
    if (v348)
    {
      v349 = v348;
      v541 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v348);
      if (v349 < 0)
      {
LABEL_563:
        __break(1u);
        goto LABEL_564;
      }

      v350 = v541;
      v351 = (v342 + 48);
      do
      {
        v444 = v351[-1];
        v425 = *v351;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v350 + 16) + 1, 1);
          v350 = v541;
        }

        v353 = *(v350 + 16);
        v352 = *(v350 + 24);
        if (v353 >= v352 >> 1)
        {
          sub_188CCF904((v352 > 1), v353 + 1, 1);
          v350 = v541;
        }

        *(v350 + 16) = v353 + 1;
        v354 = (v350 + 32 * v353);
        v354[2] = vmulq_n_f64(v444, v507);
        v354[3] = vmulq_n_f64(v425, v507);
        v351 += 2;
        --v349;
      }

      while (v349);
    }

    else
    {
      v350 = sub_18914A4BC(0);
    }

    v356 = sub_188D7F314(v350);
    if (v356)
    {
      v357 = v356;
      v541 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v356);
      if (v357 < 0)
      {
LABEL_565:
        __break(1u);
        goto LABEL_566;
      }

      v347 = v541;
      v358 = (v350 + 48);
      do
      {
        v445 = v358[-1];
        v426 = *v358;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v347 + 16) + 1, 1);
          v347 = v541;
        }

        v360 = *(v347 + 16);
        v359 = *(v347 + 24);
        if (v360 >= v359 >> 1)
        {
          sub_188CCF904((v359 > 1), v360 + 1, 1);
          v347 = v541;
        }

        *(v347 + 16) = v360 + 1;
        v361 = (v347 + 32 * v360);
        v361[2] = vmulq_n_f64(v445, v449);
        v361[3] = vmulq_n_f64(v426, v449);
        v358 += 2;
        --v357;
      }

      while (v357);
    }

    else
    {
      v347 = sub_18914A4BC(0);
    }
  }

  else
  {
    v347 = 0;
  }

  v362 = sub_18914A510(v288, v347);

  if (v362)
  {
    v363 = sub_188D7F314(v362);
    if (v363)
    {
      v364 = v363;
      v541 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v363);
      if (v364 < 0)
      {
LABEL_564:
        __break(1u);
        goto LABEL_565;
      }

      v365 = v541;
      v366 = (v362 + 48);
      do
      {
        v446 = *v366;
        v462 = v366[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v365 + 16) + 1, 1);
          v365 = v541;
        }

        v368 = *(v365 + 16);
        v367 = *(v365 + 24);
        if (v368 >= v367 >> 1)
        {
          sub_188CCF904((v367 > 1), v368 + 1, 1);
          v365 = v541;
        }

        *(v365 + 16) = v368 + 1;
        v369 = (v365 + 32 * v368);
        v369[2] = vmulq_n_f64(v462, v482);
        v369[3] = vmulq_n_f64(v446, v482);
        v366 += 2;
        --v364;
      }

      while (v364);
    }

    else
    {
      v365 = sub_18914A4BC(0);
    }
  }

  else
  {
    v365 = 0;
  }

  v541 = v365;
  if (v427)
  {
    v370 = sub_188D7F314(v427);
    if (v370)
    {
      v371 = v370;
      v535 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v370);
      if (v371 < 0)
      {
LABEL_566:
        __break(1u);
        goto LABEL_567;
      }

      v372 = v535;
      v373 = (v427 + 48);
      do
      {
        v447 = *v373;
        v463 = v373[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v372 + 16) + 1, 1);
          v372 = v535;
        }

        v375 = *(v372 + 16);
        v374 = *(v372 + 24);
        if (v375 >= v374 >> 1)
        {
          sub_188CCF904((v374 > 1), v375 + 1, 1);
          v372 = v535;
        }

        *(v372 + 16) = v375 + 1;
        v376 = (v372 + 32 * v375);
        v376[2] = vmulq_n_f64(v463, v507);
        v376[3] = vmulq_n_f64(v447, v507);
        v373 += 2;
        --v371;
      }

      while (v371);
    }

    else
    {
      v372 = sub_18914A4BC(0);
    }

    v378 = sub_188D7F314(v427);
    if (v378)
    {
      v379 = v378;
      v536 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v378);
      if (v379 < 0)
      {
LABEL_567:
        __break(1u);
        goto LABEL_568;
      }

      v377 = v536;
      v380 = (v427 + 48);
      do
      {
        v516 = v380[-1];
        v464 = *v380;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v377 + 16) + 1, 1);
          v377 = v536;
        }

        v381 = v64 * 0.5;
        v383 = *(v377 + 16);
        v382 = *(v377 + 24);
        if (v383 >= v382 >> 1)
        {
          sub_188CCF904((v382 > 1), v383 + 1, 1);
          v381 = v64 * 0.5;
          v377 = v536;
        }

        *(v377 + 16) = v383 + 1;
        v384 = (v377 + 32 * v383);
        v384[2] = vmulq_n_f64(v516, v381);
        v384[3] = vmulq_n_f64(v464, v381);
        v380 += 2;
        --v379;
      }

      while (v379);
    }

    else
    {
      v377 = sub_18914A4BC(0);
    }
  }

  else
  {
    v377 = 0;
    v372 = 0;
  }

  v195 = v414;
  v385 = sub_18914A510(v377, v415);

  if (v385)
  {
    v386 = sub_188D7F314(v385);
    if (v386)
    {
      v387 = v386;
      v537 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v386);
      if (v387 < 0)
      {
LABEL_568:
        __break(1u);
        goto LABEL_569;
      }

      v388 = v537;
      v389 = (v385 + 48);
      do
      {
        v517 = v389[-1];
        v465 = *v389;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v388 + 16) + 1, 1);
          v388 = v537;
        }

        v391 = *(v388 + 16);
        v390 = *(v388 + 24);
        if (v391 >= v390 >> 1)
        {
          sub_188CCF904((v390 > 1), v391 + 1, 1);
          v388 = v537;
        }

        *(v388 + 16) = v391 + 1;
        v392 = (v388 + 32 * v391);
        v392[2] = vmulq_n_f64(v517, v495);
        v392[3] = vmulq_n_f64(v465, v495);
        v389 += 2;
        --v387;
      }

      while (v387);
    }

    else
    {
      v388 = sub_18914A4BC(0);
    }

    v394 = sub_188D7F314(v388);
    if (v394)
    {
      v395 = v394;
      v538 = MEMORY[0x1E69E7CC0];
      result = sub_18914A444(v394);
      if (v395 < 0)
      {
LABEL_569:
        __break(1u);
        goto LABEL_570;
      }

      v393 = v538;
      v396 = (v388 + 48);
      do
      {
        v503 = *v396;
        v518 = v396[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v393 + 16) + 1, 1);
          v393 = v538;
        }

        v398 = *(v393 + 16);
        v397 = *(v393 + 24);
        if (v398 >= v397 >> 1)
        {
          sub_188CCF904((v397 > 1), v398 + 1, 1);
          v393 = v538;
        }

        *(v393 + 16) = v398 + 1;
        v399 = (v393 + 32 * v398);
        v399[2] = vmulq_n_f64(v518, v474);
        v399[3] = vmulq_n_f64(v503, v474);
        v396 += 2;
        --v395;
      }

      while (v395);
    }

    else
    {
      v393 = sub_18914A4BC(0);
    }

    v195 = v414;
  }

  else
  {
    v393 = 0;
  }

  v400 = sub_18914A510(v372, v393);

  if (!v400)
  {
    goto LABEL_522;
  }

  v401 = sub_188D7F314(v400);
  if (v401)
  {
    v402 = v401;
    v539 = MEMORY[0x1E69E7CC0];
    result = sub_18914A444(v401);
    if (v402 < 0)
    {
LABEL_570:
      __break(1u);
      goto LABEL_571;
    }

    v504 = -v522;
    v403 = v539;
    v404 = (v400 + 48);
    do
    {
      v519 = *v404;
      v527 = v404[-1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v403 + 16) + 1, 1);
        v403 = v539;
      }

      v406 = *(v403 + 16);
      v405 = *(v403 + 24);
      if (v406 >= v405 >> 1)
      {
        sub_188CCF904((v405 > 1), v406 + 1, 1);
        v403 = v539;
      }

      *(v403 + 16) = v406 + 1;
      v407 = (v403 + 32 * v406);
      v407[2] = vmulq_n_f64(v527, v504);
      v407[3] = vmulq_n_f64(v519, v504);
      v404 += 2;
      --v402;
    }

    while (v402);
  }

  else
  {
    v403 = sub_18914A4BC(0);
  }

  v219 = sub_188D7F314(v403);
  if (!v219)
  {
    goto LABEL_533;
  }

  v408 = v219;
  v540 = MEMORY[0x1E69E7CC0];
  result = sub_18914A444(v219);
  if ((v408 & 0x8000000000000000) == 0)
  {
    v221 = v540;
    v409 = (v403 + 48);
    do
    {
      v520 = *v409;
      v528 = v409[-1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v221 + 16) + 1, 1);
        v221 = v540;
      }

      v411 = *(v221 + 16);
      v410 = *(v221 + 24);
      if (v411 >= v410 >> 1)
      {
        sub_188CCF904((v410 > 1), v411 + 1, 1);
        v221 = v540;
      }

      *(v221 + 16) = v411 + 1;
      v412 = (v221 + 32 * v411);
      v412[2] = vmulq_n_f64(v528, v482);
      v412[3] = vmulq_n_f64(v520, v482);
      v409 += 2;
      --v408;
    }

    while (v408);
    goto LABEL_534;
  }

LABEL_571:
  __break(1u);
  return result;
}

__n128 sub_188EE58A4@<Q0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 <= 0.0)
  {
    v14 = v2 + 336;
    goto LABEL_74;
  }

  v4 = *(v2 + 195);
  if (v4)
  {
    v5 = *(v2 + 224);
    *(v2 + 400) = *(v2 + 208);
    *(v2 + 416) = v5;
    v6 = *(v2 + 256);
    *(v2 + 432) = *(v2 + 240);
    *(v2 + 448) = v6;
    *(v2 + 464) = 0u;
    *(v2 + 480) = 0u;
    *(v2 + 496) = 0u;
    *(v2 + 512) = 0u;
  }

  v7 = (v2 + 272);
  v8 = *(v2 + 80);
  v9 = *(v2 + 88);
  v10 = *(v2 + 96);
  v11 = *(v2 + 104);
  v12 = *(v2 + 193);
  v13 = *(v2 + 194);
  if ((v12 & 1) == 0)
  {
    v16 = *(v2 + 48);
    v15 = *(v2 + 56);
    v17 = *(v2 + 64);
    v18 = *(v2 + 72);
    if (*v2 == v16 && *(v2 + 8) == 0.0)
    {
      if (*(v2 + 194))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v21 = *v2 - v16;
      v249 = *(v2 + 88);
      if ((v18 - 1) <= 2)
      {
        v22 = __sincos_stret(*v2 - v16);
        v23 = atan2(v22.__sinval, v22.__cosval);
        if (v23 > 0.0 && v18 == 2)
        {
          v23 = v23 + -6.28318531;
        }

        if (v23 < 0.0 && v18 == 3)
        {
          v21 = v23 + 6.28318531;
        }

        else
        {
          v21 = v23;
        }
      }

      v26 = *(v2 + 8);
      v27 = sqrt(v15);
      v28 = v17 * 0.5;
      if (v17 * 0.5 >= v27)
      {
        if (v27 >= v28)
        {
          v47 = v28 * v21 + v26;
          v48 = v21 + v47 * a2;
          v33 = exp(-(v28 * a2));
          v34 = v33 * v48;
          v37 = v33 * v47;
          v38 = v48 * v28;
        }

        else
        {
          v243 = v8;
          v39 = sqrt(v28 * v28 - v27 * v27);
          v40 = cosh(v39 * a2);
          v236 = v10;
          v41 = 1.0 / v39 * (v28 * v21 + v26);
          v42 = sinh(v39 * a2);
          v43 = v21 * v40 + v41 * v42;
          v33 = exp(-(v28 * a2));
          v34 = v33 * v43;
          v44 = v39 * (v21 * v42);
          v45 = v39 * (v41 * v40);
          v8 = v243;
          v37 = v33 * (v45 + v44);
          v38 = v43 * v28;
          v10 = v236;
        }
      }

      else
      {
        v235 = v10;
        v29 = sqrt(v27 * v27 - v28 * v28);
        v30 = __sincos_stret(v29 * a2);
        v31 = 1.0 / v29 * (v28 * v21 + v26);
        v242 = v8;
        v32 = v30.__cosval * v21 + v30.__sinval * v31;
        v33 = exp(-(v28 * a2));
        v34 = v33 * v32;
        v35 = v29 * (v21 * v30.__sinval);
        v36 = v29 * (v30.__cosval * v31);
        v10 = v235;
        v37 = v33 * (v36 - v35);
        v38 = v32 * v28;
        v8 = v242;
      }

      *v2 = v16 + v34;
      *(v2 + 8) = v37 - v33 * v38;
      v9 = v249;
      if (v13)
      {
LABEL_11:
        if (!v12)
        {
          v46 = *(v2 + 16);
LABEL_53:
          v19 = 6.28318531 / v46 * (6.28318531 / v46);
          v73 = sqrt(v19);
          v20 = *v2 * (v73 + v73);
          *(v2 + 32) = v19;
          *(v2 + 40) = v20;
          goto LABEL_54;
        }

        goto LABEL_12;
      }
    }

LABEL_32:
    v46 = *(v2 + 16);
    if (v46 == v8 && *(v2 + 24) == 0.0)
    {
      goto LABEL_53;
    }

    v49 = v46 - v8;
    if ((v11 - 1) <= 2)
    {
      v50 = __sincos_stret(v46 - v8);
      v51 = atan2(v50.__sinval, v50.__cosval);
      if (v51 > 0.0 && v11 == 2)
      {
        v51 = v51 + -6.28318531;
      }

      if (v51 < 0.0 && v11 == 3)
      {
        v49 = v51 + 6.28318531;
      }

      else
      {
        v49 = v51;
      }
    }

    v54 = *(v2 + 24);
    v55 = sqrt(v9);
    v56 = v10 * 0.5;
    if (v10 * 0.5 >= v55)
    {
      if (v55 >= v56)
      {
        v70 = v56 * v49 + v54;
        v71 = v49 + v70 * a2;
        v61 = exp(-(v56 * a2));
        v62 = v61 * v71;
        v68 = v61 * v70;
        v69 = v71 * v56;
        goto LABEL_52;
      }

      v64 = sqrt(v56 * v56 - v55 * v55);
      v65 = cosh(v64 * a2);
      v66 = 1.0 / v64 * (v56 * v49 + v54);
      v67 = sinh(v64 * a2);
      v60 = v49 * v65 + v66 * v67;
      v61 = exp(-(v56 * a2));
      v62 = v61 * v60;
      v63 = v64 * (v66 * v65) + v64 * (v49 * v67);
    }

    else
    {
      v57 = sqrt(v55 * v55 - v56 * v56);
      v58 = __sincos_stret(v57 * a2);
      v59 = 1.0 / v57 * (v56 * v49 + v54);
      v60 = v58.__cosval * v49 + v58.__sinval * v59;
      v61 = exp(-(v56 * a2));
      v62 = v61 * v60;
      v63 = v57 * (v58.__cosval * v59) - v57 * (v49 * v58.__sinval);
    }

    v68 = v61 * v63;
    v69 = v60 * v56;
LABEL_52:
    v72 = v68 - v61 * v69;
    v46 = v8 + v62;
    *(v2 + 16) = v8 + v62;
    *(v2 + 24) = v72;
    goto LABEL_53;
  }

  if ((*(v2 + 194) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_12:
  v19 = *(v2 + 32);
  v20 = *(v2 + 40);
LABEL_54:
  v74 = *(v2 + 224);
  *(v2 + 112) = *(v2 + 208);
  *(v2 + 128) = v74;
  v75 = *(v2 + 256);
  *(v2 + 144) = *(v2 + 240);
  *(v2 + 160) = v75;
  v14 = v2 + 336;
  v213 = *v7;
  v214 = *(v2 + 288);
  v215 = *(v2 + 304);
  v216 = *(v2 + 320);
  v76 = *(v2 + 400);
  v77 = *(v2 + 448);
  v221 = *(v2 + 464);
  v78 = *(v2 + 416);
  v79 = *(v2 + 432);
  v229 = *(v2 + 512);
  v217 = *(v2 + 480);
  v225 = *(v2 + 496);
  v209 = *(v2 + 352);
  v211 = *(v2 + 336);
  v204 = *(v2 + 384);
  v208 = *(v2 + 368);
  if ((v4 & 1) == 0)
  {
    v81 = *(v2 + 176);
    v80 = *(v2 + 184);
    v244 = *(v2 + 448);
    v250 = *(v2 + 400);
    v233 = *(v2 + 432);
    v237 = *(v2 + 416);
    v196 = *(v2 + 144);
    v198 = *(v2 + 112);
    v200 = *(v2 + 160);
    v202 = *(v2 + 128);
    if (CACornerRadiiEqualToRadii() & 1) != 0 && (CACornerRadiiEqualToRadii())
    {
      v77 = v244;
      v76 = v250;
      v79 = v233;
      v78 = v237;
    }

    else
    {
      v82 = vsubq_f64(v250, v198);
      v83 = vsubq_f64(v237, v202);
      v84 = vsubq_f64(v233, v196);
      v85 = vsubq_f64(v244, v200);
      v86 = sqrt(v81);
      v87 = v80 * 0.5;
      if (v80 * 0.5 >= v86)
      {
        if (v86 >= v87)
        {
          v100 = vaddq_f64(v221, vmulq_n_f64(v82, v87));
          v224 = vaddq_f64(v217, vmulq_n_f64(v83, v87));
          v220 = vaddq_f64(v82, vmulq_n_f64(v100, a2));
          v190 = v100;
          v194 = vaddq_f64(v83, vmulq_n_f64(v224, a2));
          v228 = vaddq_f64(v225, vmulq_n_f64(v84, v87));
          v240 = vaddq_f64(v229, vmulq_n_f64(v85, v87));
          v232 = vaddq_f64(v84, vmulq_n_f64(v228, a2));
          v247 = vaddq_f64(v85, vmulq_n_f64(v240, a2));
          v253 = -v87;
          v101 = exp(-(v87 * a2));
          v91 = vmulq_n_f64(v194, v101);
          v92 = vmulq_n_f64(v220, v101);
          v93 = vmulq_n_f64(v247, v101);
          v94 = vmulq_n_f64(v232, v101);
          v102 = vmulq_n_f64(vmulq_n_f64(v220, v253), v101);
          v103 = vmulq_n_f64(vmulq_n_f64(v232, v253), v101);
          v217 = vaddq_f64(vmulq_n_f64(v224, v101), vmulq_n_f64(vmulq_n_f64(v194, v253), v101));
          v221 = vaddq_f64(vmulq_n_f64(v190, v101), v102);
          v229 = vaddq_f64(vmulq_n_f64(v240, v101), vmulq_n_f64(vmulq_n_f64(v247, v253), v101));
          v96 = vaddq_f64(vmulq_n_f64(v228, v101), v103);
        }

        else
        {
          v189 = sqrt(v87 * v87 - v86 * v86);
          v193 = v82;
          v246 = v85;
          v252 = v84;
          v239 = v83;
          v186 = cosh(v189 * a2);
          v179 = sinh(v189 * a2);
          v219 = vmulq_n_f64(vaddq_f64(v217, vmulq_n_f64(v239, v80 * 0.5)), 1.0 / v189);
          v223 = vmulq_n_f64(vaddq_f64(v221, vmulq_n_f64(v193, v80 * 0.5)), 1.0 / v189);
          v180 = vaddq_f64(vmulq_n_f64(v239, v186), vmulq_n_f64(v219, v179));
          v182 = vaddq_f64(vmulq_n_f64(v193, v186), vmulq_n_f64(v223, v179));
          v97 = vmulq_n_f64(vaddq_f64(v225, vmulq_n_f64(v252, v80 * 0.5)), 1.0 / v189);
          v227 = vmulq_n_f64(vaddq_f64(v229, vmulq_n_f64(v246, v80 * 0.5)), 1.0 / v189);
          v231 = v97;
          v177 = vaddq_f64(vmulq_n_f64(v246, v186), vmulq_n_f64(v227, v179));
          v185 = vaddq_f64(vmulq_n_f64(v252, v186), vmulq_n_f64(v97, v179));
          v98 = exp(-(v80 * 0.5 * a2));
          v91 = vmulq_n_f64(v180, v98);
          v92 = vmulq_n_f64(v182, v98);
          v93 = vmulq_n_f64(v177, v98);
          v94 = vmulq_n_f64(v185, v98);
          v99 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v231, v186), v189), vmulq_n_f64(vmulq_n_f64(v252, v179), v189)), v98);
          v217 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v219, v186), v189), vmulq_n_f64(vmulq_n_f64(v239, v179), v189)), v98), vmulq_n_f64(vmulq_n_f64(v180, -(v80 * 0.5)), v98));
          v221 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v223, v186), v189), vmulq_n_f64(vmulq_n_f64(v193, v179), v189)), v98), vmulq_n_f64(vmulq_n_f64(v182, -(v80 * 0.5)), v98));
          v229 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v227, v186), v189), vmulq_n_f64(vmulq_n_f64(v246, v179), v189)), v98), vmulq_n_f64(vmulq_n_f64(v177, -(v80 * 0.5)), v98));
          v96 = vaddq_f64(v99, vmulq_n_f64(vmulq_n_f64(v185, -(v80 * 0.5)), v98));
        }
      }

      else
      {
        v188 = sqrt(v86 * v86 - v87 * v87);
        v192 = v82;
        v245 = v85;
        v251 = v84;
        v238 = v83;
        v88 = __sincos_stret(v188 * a2);
        v218 = vmulq_n_f64(vaddq_f64(v217, vmulq_n_f64(v238, v80 * 0.5)), 1.0 / v188);
        v222 = vmulq_n_f64(vaddq_f64(v221, vmulq_n_f64(v192, v80 * 0.5)), 1.0 / v188);
        v181 = vaddq_f64(vmulq_n_f64(v238, v88.__cosval), vmulq_n_f64(v218, v88.__sinval));
        v184 = vaddq_f64(vmulq_n_f64(v192, v88.__cosval), vmulq_n_f64(v222, v88.__sinval));
        v89 = vmulq_n_f64(vaddq_f64(v225, vmulq_n_f64(v251, v80 * 0.5)), 1.0 / v188);
        v226 = vmulq_n_f64(vaddq_f64(v229, vmulq_n_f64(v245, v80 * 0.5)), 1.0 / v188);
        v230 = v89;
        v176 = vaddq_f64(vmulq_n_f64(v245, v88.__cosval), vmulq_n_f64(v226, v88.__sinval));
        v178 = vaddq_f64(vmulq_n_f64(v251, v88.__cosval), vmulq_n_f64(v89, v88.__sinval));
        v90 = exp(-(v80 * 0.5 * a2));
        v91 = vmulq_n_f64(v181, v90);
        v92 = vmulq_n_f64(v184, v90);
        v93 = vmulq_n_f64(v176, v90);
        v94 = vmulq_n_f64(v178, v90);
        v95 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v251, -v88.__sinval), v188), vmulq_n_f64(vmulq_n_f64(v230, v88.__cosval), v188)), v90);
        v217 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v238, -v88.__sinval), v188), vmulq_n_f64(vmulq_n_f64(v218, v88.__cosval), v188)), v90), vmulq_n_f64(vmulq_n_f64(v181, -(v80 * 0.5)), v90));
        v221 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v192, -v88.__sinval), v188), vmulq_n_f64(vmulq_n_f64(v222, v88.__cosval), v188)), v90), vmulq_n_f64(vmulq_n_f64(v184, -(v80 * 0.5)), v90));
        v229 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v245, -v88.__sinval), v188), vmulq_n_f64(vmulq_n_f64(v226, v88.__cosval), v188)), v90), vmulq_n_f64(vmulq_n_f64(v176, -(v80 * 0.5)), v90));
        v96 = vaddq_f64(v95, vmulq_n_f64(vmulq_n_f64(v178, -(v80 * 0.5)), v90));
      }

      v225 = v96;
      v76 = vaddq_f64(v198, v92);
      v78 = vaddq_f64(v202, v91);
      v79 = vaddq_f64(v196, v94);
      v77 = vaddq_f64(v200, v93);
    }
  }

  v248 = v77;
  v254 = v76;
  v234 = v79;
  v241 = v78;
  if (CACornerRadiiEqualToRadii() && CACornerRadiiEqualToRadii())
  {
    v105 = v215;
    v104 = v216;
    v106 = v213;
    v107 = v214;
    v109 = v209;
    v108 = v211;
    v110 = v248;
    v111 = v254;
    v112 = v204;
    v113 = v208;
    v115 = v234;
    v114 = v241;
  }

  else
  {
    v116 = vsubq_f64(v211, v254);
    v117 = vsubq_f64(v209, v241);
    v118 = vsubq_f64(v208, v234);
    v119 = vsubq_f64(v204, v248);
    v120 = sqrt(v19);
    v121 = v20 * 0.5;
    v210 = v119;
    v212 = v118;
    v201 = v117;
    v203 = v116;
    if (v20 * 0.5 >= v120)
    {
      if (v120 >= v121)
      {
        v191 = vmulq_n_f64(v116, v121);
        v195 = vmulq_n_f64(v117, v121);
        v207 = vmulq_n_f64(v119, v121);
        v197 = -v121;
        v199 = vmulq_n_f64(v118, v121);
        v160 = exp(-(v121 * a2));
        v161 = vaddq_f64(v213, v191);
        v162 = vaddq_f64(v214, v195);
        v163 = vaddq_f64(v203, vmulq_n_f64(v161, a2));
        v164 = vaddq_f64(v201, vmulq_n_f64(v162, a2));
        v128 = vmulq_n_f64(v164, v160);
        v129 = vmulq_n_f64(v163, v160);
        v165 = vmulq_n_f64(v161, v160);
        v166 = vmulq_n_f64(v162, v160);
        v167 = vaddq_f64(v215, v199);
        v168 = vaddq_f64(v216, v207);
        v169 = vaddq_f64(v212, vmulq_n_f64(v167, a2));
        v170 = vaddq_f64(v210, vmulq_n_f64(v168, a2));
        v139 = vmulq_n_f64(v170, v160);
        v140 = vmulq_n_f64(v169, v160);
        v171 = vmulq_n_f64(v167, v160);
        v172 = vmulq_n_f64(vmulq_n_f64(v169, v197), v160);
        v107 = vaddq_f64(v166, vmulq_n_f64(vmulq_n_f64(v164, v197), v160));
        v106 = vaddq_f64(v165, vmulq_n_f64(vmulq_n_f64(v163, v197), v160));
        v104 = vaddq_f64(vmulq_n_f64(v168, v160), vmulq_n_f64(vmulq_n_f64(v170, v197), v160));
        v105 = vaddq_f64(v171, v172);
      }

      else
      {
        v206 = sqrt(v121 * v121 - v120 * v120);
        v187 = cosh(v206 * a2);
        v183 = sinh(v206 * a2);
        v144 = exp(-(v20 * 0.5 * a2));
        v145 = vmulq_n_f64(vaddq_f64(v213, vmulq_n_f64(v203, v20 * 0.5)), 1.0 / v206);
        v146 = vmulq_n_f64(vaddq_f64(v214, vmulq_n_f64(v201, v20 * 0.5)), 1.0 / v206);
        v147 = vaddq_f64(vmulq_n_f64(v203, v187), vmulq_n_f64(v145, v183));
        v148 = vaddq_f64(vmulq_n_f64(v201, v187), vmulq_n_f64(v146, v183));
        v128 = vmulq_n_f64(v148, v144);
        v129 = vmulq_n_f64(v147, v144);
        v149 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v145, v187), v206), vmulq_n_f64(vmulq_n_f64(v203, v183), v206)), v144);
        v150 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v146, v187), v206), vmulq_n_f64(vmulq_n_f64(v201, v183), v206)), v144);
        v151 = vmulq_n_f64(v148, -(v20 * 0.5));
        v152 = vmulq_n_f64(vmulq_n_f64(v147, -(v20 * 0.5)), v144);
        v153 = vmulq_n_f64(v151, v144);
        v154 = vmulq_n_f64(vaddq_f64(v215, vmulq_n_f64(v212, v20 * 0.5)), 1.0 / v206);
        v155 = vmulq_n_f64(vaddq_f64(v216, vmulq_n_f64(v210, v20 * 0.5)), 1.0 / v206);
        v156 = vaddq_f64(vmulq_n_f64(v212, v187), vmulq_n_f64(v154, v183));
        v157 = vaddq_f64(vmulq_n_f64(v210, v187), vmulq_n_f64(v155, v183));
        v139 = vmulq_n_f64(v157, v144);
        v140 = vmulq_n_f64(v156, v144);
        v158 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v154, v187), v206), vmulq_n_f64(vmulq_n_f64(v212, v183), v206)), v144);
        v159 = vmulq_n_f64(vmulq_n_f64(v156, -(v20 * 0.5)), v144);
        v107 = vaddq_f64(v150, v153);
        v106 = vaddq_f64(v149, v152);
        v104 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v155, v187), v206), vmulq_n_f64(vmulq_n_f64(v210, v183), v206)), v144), vmulq_n_f64(vmulq_n_f64(v157, -(v20 * 0.5)), v144));
        v105 = vaddq_f64(v158, v159);
      }
    }

    else
    {
      v205 = sqrt(v120 * v120 - v121 * v121);
      v122 = __sincos_stret(v205 * a2);
      v123 = exp(-(v20 * 0.5 * a2));
      v124 = vmulq_n_f64(vaddq_f64(v213, vmulq_n_f64(v203, v20 * 0.5)), 1.0 / v205);
      v125 = vmulq_n_f64(vaddq_f64(v214, vmulq_n_f64(v201, v20 * 0.5)), 1.0 / v205);
      v126 = vaddq_f64(vmulq_n_f64(v203, v122.__cosval), vmulq_n_f64(v124, v122.__sinval));
      v127 = vaddq_f64(vmulq_n_f64(v201, v122.__cosval), vmulq_n_f64(v125, v122.__sinval));
      v128 = vmulq_n_f64(v127, v123);
      v129 = vmulq_n_f64(v126, v123);
      v130 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v203, -v122.__sinval), v205), vmulq_n_f64(vmulq_n_f64(v124, v122.__cosval), v205)), v123);
      v131 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v201, -v122.__sinval), v205), vmulq_n_f64(vmulq_n_f64(v125, v122.__cosval), v205)), v123);
      v132 = vmulq_n_f64(v127, -(v20 * 0.5));
      v133 = vmulq_n_f64(vmulq_n_f64(v126, -(v20 * 0.5)), v123);
      v134 = vmulq_n_f64(v132, v123);
      v135 = vmulq_n_f64(vaddq_f64(v215, vmulq_n_f64(v212, v20 * 0.5)), 1.0 / v205);
      v136 = vmulq_n_f64(vaddq_f64(v216, vmulq_n_f64(v210, v20 * 0.5)), 1.0 / v205);
      v137 = vaddq_f64(vmulq_n_f64(v212, v122.__cosval), vmulq_n_f64(v135, v122.__sinval));
      v138 = vaddq_f64(vmulq_n_f64(v210, v122.__cosval), vmulq_n_f64(v136, v122.__sinval));
      v139 = vmulq_n_f64(v138, v123);
      v140 = vmulq_n_f64(v137, v123);
      v141 = vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v212, -v122.__sinval), v205), vmulq_n_f64(vmulq_n_f64(v135, v122.__cosval), v205)), v123);
      v142 = vmulq_n_f64(v138, -(v20 * 0.5));
      v143 = vmulq_n_f64(vmulq_n_f64(v137, -(v20 * 0.5)), v123);
      v107 = vaddq_f64(v131, v134);
      v106 = vaddq_f64(v130, v133);
      v104 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_n_f64(v210, -v122.__sinval), v205), vmulq_n_f64(vmulq_n_f64(v136, v122.__cosval), v205)), v123), vmulq_n_f64(v142, v123));
      v105 = vaddq_f64(v141, v143);
    }

    v111 = v254;
    v108 = vaddq_f64(v254, v129);
    v115 = v234;
    v114 = v241;
    v109 = vaddq_f64(v241, v128);
    v113 = vaddq_f64(v234, v140);
    v110 = v248;
    v112 = vaddq_f64(v248, v139);
  }

  *(v2 + 336) = v108;
  *(v2 + 352) = v109;
  *(v2 + 368) = v113;
  *(v2 + 384) = v112;
  *v7 = v106;
  *(v2 + 288) = v107;
  *(v2 + 304) = v105;
  *(v2 + 320) = v104;
  *(v2 + 400) = v111;
  *(v2 + 416) = v114;
  *(v2 + 432) = v115;
  *(v2 + 448) = v110;
  *(v2 + 464) = v221;
  *(v2 + 480) = v217;
  *(v2 + 496) = v225;
  *(v2 + 512) = v229;
LABEL_74:
  v173 = *(v14 + 16);
  *a1 = *v14;
  *(a1 + 16) = v173;
  result = *(v14 + 32);
  v175 = *(v14 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v175;
  return result;
}

void sub_188EE6890(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = a1;
  if (a2 > 0.0)
  {
    v4 = a2;
    v383 = (v2 + 16);
    v406 = *(v2 + 24);
    v408 = *(v2 + 23);
    v402 = *(v2 + 26);
    v404 = *(v2 + 25);
    v400 = *(v2 + 54) | (*(v2 + 220) << 32);
    v410 = v2;
    v381 = *(v2 + 171);
    if (v381)
    {
      v5 = *(v2 + 38);
      v394 = *(v410 + 39);
      v6 = *(v410 + 40);
      v7 = *(v410 + 41);
      sub_188F0B550(v408, v406, v404, v402);
      v8 = v5;
      v2 = v410;
      sub_188F0B59C(v8, v394, v6, v7);
      *(v410 + 38) = v408;
      *(v410 + 39) = v406;
      *(v410 + 40) = v404;
      *(v410 + 41) = v402;
      *(v383 + 84) = BYTE4(v400);
      v383[20] = v400;
      sub_188F0B59C(*(v2 + 43), *(v2 + 44), *(v2 + 45), *(v2 + 46));
      *(v410 + 373) = 0;
      *(v410 + 344) = 0u;
      *(v410 + 360) = 0u;
    }

    v10 = *(v2 + 10);
    v9 = *(v2 + 11);
    v11 = *(v2 + 12);
    v12 = *(v2 + 104);
    v13 = *(v2 + 169);
    v14 = *(v2 + 170);
    if (v13)
    {
      if (*(v2 + 170))
      {
LABEL_53:
        v81 = *(v2 + 14);
        v397 = *(v2 + 15);
        v82 = *(v2 + 16);
        v83 = *(v2 + 17);
        sub_188F0B550(v408, v406, v404, v402);
        sub_188F0B59C(v81, v397, v82, v83);
        *(v410 + 14) = v408;
        *(v410 + 15) = v406;
        v84 = v410;
        *(v410 + 16) = v404;
        *(v410 + 17) = v402;
        *(v2 + 148) = BYTE4(v400);
        *(v2 + 36) = v400;
        v85 = *(v410 + 39);
        v86 = *(v410 + 40);
        v87 = *(v410 + 41);
        v88 = *(v383 + 84);
        v89 = v383[20];
        v90 = *(v410 + 43);
        v91 = *(v410 + 44);
        v93 = *(v410 + 45);
        v92 = *(v410 + 46);
        v94 = *(v383 + 124);
        v95 = v383[30];
        v409 = *(v410 + 33);
        v405 = *(v410 + 34);
        v384 = *(v410 + 36);
        v385 = *(v410 + 35);
        v96 = *(v383 + 44);
        v97 = v383[10];
        v388 = v97 | (v96 << 32);
        v391 = *(v410 + 29);
        v98 = *(v410 + 31);
        v371 = *(v410 + 30);
        v99 = *(v383 + 4);
        v100 = *v383;
        v393 = *(v410 + 28);
        v398 = v100 | (v99 << 32);
        v102 = *(v410 + 4);
        v101 = *(v410 + 5);
        *&v419 = *(v410 + 38);
        *(&v419 + 1) = v85;
        v373 = v85;
        v374 = v419;
        *v420 = v86;
        *&v420[8] = v87;
        v420[20] = v88;
        *&v420[16] = v89;
        *&v421 = v90;
        *(&v421 + 1) = v91;
        *&v422 = v93;
        *(&v422 + 1) = v92;
        v424 = v94;
        v423 = v95;
        v425 = v409;
        v426 = v405;
        v427 = v385;
        v428 = v384;
        v430 = v96;
        v429 = v97;
        v431 = v393;
        v432 = v391;
        v433 = v371;
        v434 = v98;
        v436 = v99;
        v435 = v100;
        v103 = v410[1];
        v437 = *v410;
        v438 = v103;
        v439 = v102;
        v440 = v101;
        v104 = v410[8];
        v538[0] = v410[7];
        v538[1] = v104;
        v105 = v98;
        *v539 = v2[9];
        *&v539[9] = *(v410 + 153);
        v106 = v86;
        v107 = v87;
        v108 = v89 | (v88 << 32);
        sub_188F0B550(v419, v85, v86, v87);
        v361 = v91;
        v362 = v90;
        v359 = v92;
        v360 = v93;
        sub_188F0B550(v90, v91, v93, v92);
        sub_188F0B550(v409, v405, v385, v384);
        sub_188F0B550(v393, v391, v371, v105);
        v109 = v108;
        v363 = v107;
        v364 = v106;
        v110 = v107;
        v111 = v106;
        v113 = v373;
        v112 = v419;
        if ((v381 & 1) == 0)
        {
          sub_188EEE874(v538, v4);
          v113 = *(&v419 + 1);
          v112 = v419;
          v110 = *&v420[8];
          v111 = *v420;
          v109 = *&v420[16] | (v420[20] << 32);
        }

        v471 = v419;
        *v472 = *v420;
        v473[0] = v393;
        v473[1] = v391;
        v473[2] = v371;
        v372 = v105;
        v473[3] = v105;
        v474 = v398;
        v475 = BYTE4(v398);
        *&v472[13] = *&v420[13];
        v358 = v539[24];
        v114 = v419;
        v115 = *v472;
        v116 = (*&v420[13] >> 24) | (v420[20] << 32);
        v417 = v419;
        *v418 = *v420;
        *&v418[13] = *&v420[13];
        if (v409)
        {
          if (!v419)
          {
            v118 = v409;

            v119 = v405;

            v109 = v388 & 0x1FFFFFFFFLL;
            v111 = v385;
            v110 = v120;
            goto LABEL_68;
          }

          if (sub_189090578(v409, v419))
          {
            sub_188F0D2E8(&v471, &v411);
            if (!v393)
            {
              v375 = 0;
              v367 = v371;
              v368 = v391;
              v366 = v372;
              v352 = v409;
              v355 = v398;
              v350 = v405;
              v117 = v385;
              v18 = v385;
LABEL_138:
              v17 = v384;
              v237 = v371;
              v238 = v384;
              v19 = v388;
LABEL_240:
              v411 = v417;
              v412 = *v418;
              v413 = *&v418[16];
              v414 = v102;
              v415 = v101;
              v416 = v358;
              sub_188A3F5FC(&v411, &qword_1EA936630, &qword_18A650DC0);
              v16 = v350;
              v15 = v352;
              sub_188F0B550(v352, v350, v18, v17);
              sub_188F0B59C(v409, v405, v117, v238);
              sub_188F0B59C(v393, v391, v237, v372);
              sub_188F0B59C(v374, v373, v364, v363);
              sub_188F0B59C(v362, v361, v360, v359);
              v84[33] = v352;
              v84[34] = v350;
              v84[35] = v18;
              v84[36] = v17;
              *(v383 + 44) = BYTE4(v19);
              v383[10] = v19;
              v84[28] = v375;
              v84[29] = v368;
              v84[30] = v367;
              v84[31] = v366;
              *(v383 + 4) = BYTE4(v355);
              *v383 = v355;
              v342 = *v472;
              v410[19] = v471;
              v410[20] = v342;
              *(v410 + 333) = *&v472[13];
              v343 = v423;
              v344 = v424;
              *(v383 + 22) = v421;
              *(v383 + 26) = v422;
              *(v383 + 124) = v344;
              v383[30] = v343;
              v3 = a1;
              goto LABEL_241;
            }
          }

          else
          {
            sub_188F0D2E8(&v471, &v411);
          }

          v535[0] = v114;
          v535[1] = v115;
          v536 = v116;
          v537 = BYTE4(v116) & 1;
          *&v411 = v409;
          *(&v411 + 1) = v405;
          *&v412 = v385;
          *(&v412 + 1) = v384;
          LODWORD(v413) = v388;
          BYTE4(v413) = BYTE4(v388) & 1;

          sub_18908FE70(v535);
        }

        else
        {
          if (!v419)
          {
            v118 = v112;
            v119 = v113;
            if (!v393)
            {
              v375 = 0;
              v367 = v371;
              v368 = v391;
              v366 = v372;
              v352 = 0;
              v355 = v398;
              v350 = v405;
              v117 = v385;
              v18 = v385;
              goto LABEL_138;
            }

LABEL_68:
            v502[0] = v118;
            v502[1] = v119;
            v502[2] = v111;
            v502[3] = v110;
            v503 = v109;
            v504 = BYTE4(v109);
            v122 = sqrt(v102);
            v123 = v101 * 0.5;
            v407 = v118;
            v382 = v119;
            v399 = v110;
            v401 = v111;
            v403 = v109;
            if (v101 * 0.5 < v122)
            {
              v124 = sqrt(v122 * v122 - v123 * v123);
              v125 = cos(v124 * v4);
              if (v118)
              {
                *&v411 = v118;
                *(&v411 + 1) = v119;
                *&v412 = v401;
                *(&v412 + 1) = v399;
                LODWORD(v413) = v403;
                BYTE4(v413) = BYTE4(v403) & 1;

                sub_18908FB80(v125);
                v126 = *(&v411 + 1);
                v376 = v411;
                v128 = *(&v412 + 1);
                v127 = v412;
                if (BYTE4(v413))
                {
                  v129 = 0x100000000;
                }

                else
                {
                  v129 = 0;
                }

                v130 = v129 | v413;
                *&v411 = v118;
                *(&v411 + 1) = v119;
                *&v412 = v401;
                *(&v412 + 1) = v399;
                LODWORD(v413) = v403;
                BYTE4(v413) = BYTE4(v403) & 1;

                sub_18908FB80(v101 * 0.5);
                v131 = v376;
                v133 = *(&v411 + 1);
                v132 = v411;
                v134 = *(&v412 + 1);
                v135 = v412;
                if (BYTE4(v413))
                {
                  v136 = 0x100000000;
                }

                else
                {
                  v136 = 0;
                }

                v137 = v136 | v413;
              }

              else
              {
                v132 = 0;
                v131 = 0;
                v133 = v119;
                v128 = v399;
                v127 = v401;
                v135 = v401;
                v134 = v399;
                v126 = v119;
                v130 = v403;
                v137 = v403;
              }

              v377 = v131;
              v517 = v131;
              v518 = v126;
              v519 = v127;
              v520 = v128;
              v521 = v130;
              v522 = BYTE4(v130);
              v529 = v132;
              v530 = v133;
              v531 = v135;
              v532 = v134;
              v533 = v137;
              v534 = BYTE4(v137);
              sub_189090750(&v529, v473, &v444);
              sub_188F0B59C(v132, v133, v135, v134);
              v163 = *(&v444 + 1);
              v165 = *(&v445 + 1);
              v164 = v445;
              v166 = v446 | (v447 << 32);
              if (v444)
              {
                v411 = v444;
                v412 = v445;
                LODWORD(v413) = v446;
                BYTE4(v413) = BYTE4(v166) & 1;
                sub_18908FB80(1.0 / v124);
                v168 = *(&v412 + 1);
                v167 = v412;
                v169 = v413;
                v170 = BYTE4(v413);
                v171 = sin(v124 * v4);
                v412 = __PAIR128__(v168, v167);
                v118 = v407;
                LODWORD(v413) = v169;
                BYTE4(v413) = v170;
                sub_18908FB80(v171);
                v163 = *(&v411 + 1);
                v172 = v411;
                v165 = *(&v412 + 1);
                v164 = v412;
                v173 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v173 = 0;
                }

                v166 = v173 | v413;
              }

              else
              {
                v172 = 0;
              }

              v523 = v172;
              v524 = v163;
              v525 = v164;
              v526 = v165;
              v527 = v166;
              v528 = BYTE4(v166);
              sub_189090750(&v517, &v523, &v448);
              sub_188F0B59C(v172, v163, v164, v165);
              sub_188F0B59C(v377, v126, v127, v128);
              v174 = exp(-(v123 * v4));
              v175 = *(&v448 + 1);
              v177 = *(&v449 + 1);
              v176 = v449;
              v178 = v450 | (v451 << 32);
              v356 = v174;
              if (v448)
              {
                v411 = v448;
                v412 = v449;
                LODWORD(v413) = v450;
                BYTE4(v413) = BYTE4(v178) & 1;
                sub_18908FB80(v174);
                v175 = *(&v411 + 1);
                v345 = v411;
                v177 = *(&v412 + 1);
                v176 = v412;
                v179 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v179 = 0;
                }

                v178 = v179 | v413;
              }

              else
              {
                v345 = 0;
              }

              v346 = v178;
              v347 = v177;
              v348 = v176;
              v349 = v175;
              v180 = sin(v124 * v4);
              if (v118)
              {
                *&v411 = v118;
                *(&v411 + 1) = v382;
                *&v412 = v401;
                *(&v412 + 1) = v399;
                LODWORD(v413) = v403;
                BYTE4(v413) = BYTE4(v403) & 1;

                sub_18908FB80(-v180);
                sub_18908FB80(v124);
                v181 = v118;
                v182 = *(&v411 + 1);
                v369 = v411;
                v183 = *(&v412 + 1);
                v184 = v412;
                v185 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v185 = 0;
                }

                v186 = v185 | v413;
                *&v411 = v181;
                *(&v411 + 1) = v382;
                *&v412 = v401;
                *(&v412 + 1) = v399;
                LODWORD(v413) = v403;
                BYTE4(v413) = BYTE4(v403) & 1;

                sub_18908FB80(v101 * 0.5);
                v188 = *(&v411 + 1);
                v187 = v411;
                v189 = *(&v412 + 1);
                v190 = v412;
                v191 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v191 = 0;
                }

                v192 = v191 | v413;
              }

              else
              {
                v187 = 0;
                v369 = 0;
                v188 = v382;
                v183 = v399;
                v184 = v401;
                v190 = v401;
                v189 = v399;
                v182 = v382;
                v186 = v403;
                v192 = v403;
              }

              v496 = v369;
              v497 = v182;
              v498 = v184;
              v499 = v183;
              v500 = v186;
              v501 = BYTE4(v186);
              v511 = v187;
              v512 = v188;
              v513 = v190;
              v514 = v189;
              v515 = v192;
              v516 = BYTE4(v192);
              sub_189090750(&v511, v473, &v452);
              sub_188F0B59C(v187, v188, v190, v189);
              v193 = *(&v452 + 1);
              v195 = *(&v453 + 1);
              v194 = v453;
              v196 = v454 | (v455 << 32);
              if (v452)
              {
                v411 = v452;
                v412 = v453;
                LODWORD(v413) = v454;
                BYTE4(v413) = BYTE4(v196) & 1;
                sub_18908FB80(1.0 / v124);
                sub_18908FB80(v125);
                sub_18908FB80(v124);
                v193 = *(&v411 + 1);
                v197 = v411;
                v195 = *(&v412 + 1);
                v194 = v412;
                v198 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v198 = 0;
                }

                v196 = v198 | v413;
              }

              else
              {
                v197 = 0;
              }

              v505 = v197;
              v506 = v193;
              v507 = v194;
              v508 = v195;
              v509 = v196;
              v510 = BYTE4(v196);
              sub_189090750(&v496, &v505, &v456);
              sub_188F0B59C(v197, v193, v194, v195);
              sub_188F0B59C(v369, v182, v184, v183);
              v199 = *(&v456 + 1);
              v200 = v458 | (v459 << 32);
              if (v456)
              {
                v411 = v456;
                v412 = v457;
                LODWORD(v413) = v458;
                BYTE4(v413) = BYTE4(v200) & 1;
                sub_18908FB80(v356);
                v199 = *(&v411 + 1);
                v375 = v411;
                v366 = *(&v412 + 1);
                v367 = v412;
                v201 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v201 = 0;
                }

                v200 = v201 | v413;
              }

              else
              {
                v366 = *(&v457 + 1);
                v367 = v457;
                v375 = 0;
              }

              v202 = v399;
              v203 = v401;
              v351 = v200;
              v368 = v199;
              if (v407)
              {
                *&v411 = v407;
                *(&v411 + 1) = v382;
                *&v412 = v401;
                *(&v412 + 1) = v399;
                LODWORD(v413) = v403;
                BYTE4(v413) = BYTE4(v403) & 1;

                sub_18908FB80(v125);
                v204 = *(&v411 + 1);
                v353 = v411;
                v202 = *(&v412 + 1);
                v203 = v412;
                v205 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v205 = 0;
                }

                v206 = v205 | v413;
                *&v411 = v407;
                *(&v411 + 1) = v382;
                *&v412 = v401;
                *(&v412 + 1) = v399;
                LODWORD(v413) = v403;
                BYTE4(v413) = BYTE4(v403) & 1;

                sub_18908FB80(v101 * 0.5);
                v207 = v204;
                v209 = *(&v411 + 1);
                v208 = v411;
                v210 = *(&v412 + 1);
                v211 = v412;
                v212 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v212 = 0;
                }

                v213 = v212 | v413;
              }

              else
              {
                v208 = 0;
                v353 = 0;
                v209 = v382;
                v211 = v401;
                v210 = v399;
                v213 = v403;
                v207 = v382;
                v206 = v403;
              }

              *&v480 = v353;
              v214 = v207;
              *(&v480 + 1) = v207;
              *&v481 = v203;
              *(&v481 + 1) = v202;
              v482 = v206;
              v483 = BYTE4(v206);
              v490 = v208;
              v491 = v209;
              v492 = v211;
              v493 = v210;
              v494 = v213;
              v495 = BYTE4(v213);
              sub_189090750(&v490, v473, &v460);
              sub_188F0B59C(v208, v209, v211, v210);
              v215 = *(&v460 + 1);
              v217 = *(&v461 + 1);
              v216 = v461;
              v218 = v462 | (v463 << 32);
              if (v460)
              {
                v411 = v460;
                v412 = v461;
                LODWORD(v413) = v462;
                BYTE4(v413) = BYTE4(v218) & 1;
                sub_18908FB80(1.0 / v124);
                sub_18908FB80(v180);
                v215 = *(&v411 + 1);
                v219 = v411;
                v217 = *(&v412 + 1);
                v216 = v412;
                v220 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v220 = 0;
                }

                v218 = v220 | v413;
              }

              else
              {
                v219 = 0;
              }

              v484 = v219;
              v485 = v215;
              v486 = v216;
              v487 = v217;
              v488 = v218;
              v489 = BYTE4(v218);
              sub_189090750(&v480, &v484, &v464);
              sub_188F0B59C(v219, v215, v216, v217);
              sub_188F0B59C(v353, v214, v203, v202);
              v221 = *(&v464 + 1);
              v222 = *(&v465 + 1);
              v223 = v465;
              v224 = v466 | (v467 << 32);
              if (v464)
              {
                v411 = v464;
                v412 = v465;
                LODWORD(v413) = v466;
                BYTE4(v413) = BYTE4(v224) & 1;
                sub_18908FB80(-v123);
                sub_18908FB80(v356);
                v226 = *(&v411 + 1);
                v225 = v411;
                v227 = *(&v412 + 1);
                v228 = v412;
                v229 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v229 = 0;
                }

                v230 = v229 | v413;
                if (v375)
                {
                  if (v411)
                  {
                    v476 = v411;
                    v477 = v412;
                    v478 = v413;
                    v479 = BYTE4(v229);
                    v231 = v375;
                    v233 = v367;
                    v232 = v368;
                    *&v411 = v375;
                    *(&v411 + 1) = v368;
                    v234 = v366;
                    *&v412 = v367;
                    *(&v412 + 1) = v366;
                    v235 = v351;
LABEL_231:
                    LODWORD(v413) = v235;
                    BYTE4(v413) = BYTE4(v235) & 1;
                    sub_188F0B550(v225, v226, v228, v227);
                    sub_188F0B550(v231, v232, v233, v234);
                    sub_18908FD40(&v476);
                    sub_188F0B59C(v225, v226, v228, v227);
                    sub_188F0B59C(v231, v368, v233, v234);

                    v375 = v411;
                    v367 = v412;
                    v368 = *(&v411 + 1);
                    v366 = *(&v412 + 1);
                    v341 = 0x100000000;
                    if (!BYTE4(v413))
                    {
                      v341 = 0;
                    }

                    v293 = v341 | v413;
                    goto LABEL_238;
                  }

                  goto LABEL_135;
                }

LABEL_234:
                v355 = v230;
                v375 = v225;
                v367 = v228;
                v368 = v226;
                v366 = v227;
LABEL_239:
                v84 = v410;
                v468[0] = v345;
                v468[1] = v349;
                v468[2] = v348;
                v468[3] = v347;
                v469 = v346;
                v470 = BYTE4(v346);
                sub_189090750(v468, &v471, v441);
                v350 = v441[1];
                v352 = v441[0];
                v18 = v441[2];
                v17 = v441[3];
                v19 = v442 | (v443 << 32);
                sub_188F0B59C(v345, v349, v348, v347);
                sub_188F0B59C(v407, v382, v401, v399);
                v238 = v384;
                v117 = v385;
                sub_188F0B59C(v409, v405, v385, v384);
                v237 = v371;
                sub_188F0B59C(v393, v391, v371, v372);
                goto LABEL_240;
              }

              if (v375)
              {
LABEL_135:
                v236 = v351;
LABEL_237:
                v293 = v236 & 0x1FFFFFFFFLL;
LABEL_238:
                v355 = v293;
                goto LABEL_239;
              }

LABEL_242:
              v355 = v224;
              v375 = 0;
              v367 = v223;
              v368 = v221;
              v366 = v222;
              goto LABEL_239;
            }

            if (v122 >= v123)
            {
              v156 = HIDWORD(v109) & 1;
              if (v118)
              {
                *&v411 = v118;
                *(&v411 + 1) = v119;
                *&v412 = v111;
                *(&v412 + 1) = v110;
                LODWORD(v413) = v109;
                BYTE4(v413) = BYTE4(v109) & 1;

                sub_18908FB80(v101 * 0.5);
                v158 = *(&v411 + 1);
                v157 = v411;
                v160 = *(&v412 + 1);
                v159 = v412;
                v161 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v161 = 0;
                }

                v162 = v161 | v413;
              }

              else
              {
                v157 = 0;
                v158 = v119;
                v159 = v111;
                v160 = v110;
                v162 = v109;
              }

              v529 = v157;
              v530 = v158;
              v531 = v159;
              v532 = v160;
              v533 = v162;
              v534 = BYTE4(v162);
              sub_189090750(&v529, v473, &v456);
              sub_188F0B59C(v157, v158, v159, v160);
              v250 = *(&v456 + 1);
              v252 = *(&v457 + 1);
              v251 = v457;
              v253 = v458 | (v459 << 32);
              if (v456)
              {
                v411 = v456;
                v412 = v457;
                LODWORD(v413) = v458;
                BYTE4(v413) = BYTE4(v253) & 1;
                sub_18908FB80(v4);
                v250 = *(&v411 + 1);
                v254 = v411;
                v252 = *(&v412 + 1);
                v251 = v412;
                v255 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v255 = 0;
                }

                v253 = v255 | v413;
              }

              else
              {
                v254 = 0;
              }

              v523 = v254;
              v524 = v250;
              v525 = v251;
              v526 = v252;
              v527 = v253;
              v528 = BYTE4(v253);
              sub_189090750(v502, &v523, &v460);
              sub_188F0B59C(v254, v250, v251, v252);
              v256 = exp(-(v123 * v4));
              v257 = v256;
              v258 = *(&v460 + 1);
              v260 = *(&v461 + 1);
              v259 = v461;
              v261 = v462 | (v463 << 32);
              if (v460)
              {
                v411 = v460;
                v412 = v461;
                LODWORD(v413) = v462;
                BYTE4(v413) = BYTE4(v261) & 1;
                sub_18908FB80(v256);
                v258 = *(&v411 + 1);
                v345 = v411;
                v260 = *(&v412 + 1);
                v259 = v412;
                v262 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v262 = 0;
                }

                v261 = v262 | v413;
              }

              else
              {
                v345 = 0;
              }

              v263 = v382;
              v265 = v399;
              v264 = v401;
              v266 = v403;
              v346 = v261;
              v347 = v260;
              v348 = v259;
              v349 = v258;
              if (v118)
              {
                *&v411 = v118;
                *(&v411 + 1) = v382;
                *&v412 = v401;
                *(&v412 + 1) = v399;
                LODWORD(v413) = v403;
                BYTE4(v413) = v156;

                sub_18908FB80(v101 * 0.5);
                v263 = *(&v411 + 1);
                v267 = v411;
                v265 = *(&v412 + 1);
                v264 = v412;
                v268 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v268 = 0;
                }

                v266 = v268 | v413;
              }

              else
              {
                v267 = 0;
              }

              v517 = v267;
              v518 = v263;
              v519 = v264;
              v520 = v265;
              v521 = v266;
              v522 = BYTE4(v266);
              sub_189090750(&v517, v473, &v464);
              sub_188F0B59C(v267, v263, v264, v265);
              v269 = *(&v464 + 1);
              v271 = *(&v465 + 1);
              v270 = v465;
              v272 = v466 | (v467 << 32);
              if (v464)
              {
                v411 = v464;
                v412 = v465;
                LODWORD(v413) = v466;
                BYTE4(v413) = BYTE4(v272) & 1;
                sub_18908FB80(v257);
                v269 = *(&v411 + 1);
                v273 = v411;
                v271 = *(&v412 + 1);
                v270 = v412;
                v274 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v274 = 0;
                }

                v272 = v274 | v413;
              }

              else
              {
                v273 = 0;
              }

              v275 = v401;
              v276 = v403;
              v379 = v269;
              if (v118)
              {
                *&v411 = v118;
                *(&v411 + 1) = v382;
                *&v412 = v401;
                *(&v412 + 1) = v399;
                LODWORD(v413) = v403;
                BYTE4(v413) = v156;

                sub_18908FB80(v101 * 0.5);
                v278 = *(&v411 + 1);
                v277 = v411;
                v279 = *(&v412 + 1);
                v275 = v412;
                v280 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v280 = 0;
                }

                v276 = v280 | v413;
              }

              else
              {
                v277 = 0;
                v278 = v382;
                v279 = v399;
              }

              v511 = v277;
              v512 = v278;
              v513 = v275;
              v514 = v279;
              v515 = v276;
              v516 = BYTE4(v276);
              sub_189090750(&v511, v473, &v476);
              sub_188F0B59C(v277, v278, v275, v279);
              v281 = *(&v476 + 1);
              v283 = *(&v477 + 1);
              v282 = v477;
              v284 = v478 | (v479 << 32);
              if (v476)
              {
                v411 = v476;
                v412 = v477;
                LODWORD(v413) = v478;
                BYTE4(v413) = BYTE4(v284) & 1;
                sub_18908FB80(v4);
                v281 = *(&v411 + 1);
                v285 = v411;
                v283 = *(&v412 + 1);
                v282 = v412;
                v286 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v286 = 0;
                }

                v284 = v286 | v413;
              }

              else
              {
                v285 = 0;
              }

              v505 = v285;
              v506 = v281;
              v507 = v282;
              v508 = v283;
              v509 = v284;
              v510 = BYTE4(v284);
              sub_189090750(v502, &v505, &v480);
              sub_188F0B59C(v285, v281, v282, v283);
              v287 = *(&v480 + 1);
              v289 = *(&v481 + 1);
              v288 = v481;
              v290 = v482 | (v483 << 32);
              if (v480)
              {
                v411 = v480;
                v412 = v481;
                LODWORD(v413) = v482;
                BYTE4(v413) = BYTE4(v290) & 1;
                sub_18908FB80(-v123);
                sub_18908FB80(v257);
                v287 = *(&v411 + 1);
                v291 = v411;
                v289 = *(&v412 + 1);
                v288 = v412;
                v292 = 0x100000000;
                if (!BYTE4(v413))
                {
                  v292 = 0;
                }

                v290 = v292 | v413;
              }

              else
              {
                v291 = 0;
              }

              v490 = v273;
              v491 = v379;
              v492 = v270;
              v493 = v271;
              v494 = v272;
              v495 = BYTE4(v272);
              v496 = v291;
              v497 = v287;
              v498 = v288;
              v499 = v289;
              v500 = v290;
              v501 = BYTE4(v290);
              sub_189090750(&v490, &v496, &v484);
              sub_188F0B59C(v291, v287, v288, v289);
              sub_188F0B59C(v273, v379, v270, v271);
              v375 = v484;
              v367 = v486;
              v368 = v485;
              v366 = v487;
              v293 = v488 | (v489 << 32);
              goto LABEL_238;
            }

            v138 = sqrt(v123 * v123 - v122 * v122);
            v139 = v138 * v4;
            v140 = cosh(v138 * v4);
            if (v118)
            {
              *&v411 = v118;
              *(&v411 + 1) = v119;
              *&v412 = v401;
              *(&v412 + 1) = v399;
              LODWORD(v413) = v403;
              BYTE4(v413) = BYTE4(v403) & 1;

              sub_18908FB80(v140);
              v141 = v411;
              v143 = *(&v412 + 1);
              v142 = v412;
              v144 = 0x100000000;
              if (!BYTE4(v413))
              {
                v144 = 0;
              }

              v145 = v144 | v413;
              *&v411 = v407;
              *(&v411 + 1) = v119;
              *&v412 = v401;
              *(&v412 + 1) = v399;
              LODWORD(v413) = v403;
              BYTE4(v413) = BYTE4(v403) & 1;

              v146 = v141;

              sub_18908FB80(v101 * 0.5);
              v147 = v145;
              v148 = v142;
              v149 = *(&v141 + 1);
              v151 = *(&v411 + 1);
              v150 = v411;
              v153 = *(&v412 + 1);
              v152 = v412;
              v154 = 0x100000000;
              if (!BYTE4(v413))
              {
                v154 = 0;
              }

              v118 = v407;
              v155 = v154 | v413;
            }

            else
            {
              v150 = 0;
              v146 = 0;
              v151 = v119;
              v143 = v399;
              v152 = v401;
              v153 = v399;
              v155 = v403;
              v149 = v119;
              v148 = v401;
              v147 = v403;
            }

            v517 = v146;
            v378 = v149;
            v518 = v149;
            v370 = v148;
            v519 = v148;
            v520 = v143;
            v521 = v147;
            v522 = BYTE4(v147);
            v529 = v150;
            v530 = v151;
            v531 = v152;
            v532 = v153;
            v533 = v155;
            v534 = BYTE4(v155);
            sub_189090750(&v529, v473, &v444);
            sub_188F0B59C(v150, v151, v152, v153);
            v239 = *(&v444 + 1);
            v241 = *(&v445 + 1);
            v240 = v445;
            v242 = v446 | (v447 << 32);
            v243 = v143;
            if (v444)
            {
              v411 = v444;
              v412 = v445;
              LODWORD(v413) = v446;
              BYTE4(v413) = BYTE4(v242) & 1;
              sub_18908FB80(1.0 / v138);
              v239 = *(&v411 + 1);
              v244 = v411;
              v241 = *(&v412 + 1);
              v240 = v412;
              v245 = v413;
              if (BYTE4(v413))
              {
                v246 = 0x100000000;
              }

              else
              {
                v246 = 0;
              }

              v247 = sinh(v139);
              v248 = v247;
              if (v244)
              {
                *&v411 = v244;
                *(&v411 + 1) = v239;
                *&v412 = v240;
                *(&v412 + 1) = v241;
                LODWORD(v413) = v245;
                BYTE4(v413) = BYTE4(v246);
                sub_18908FB80(v247);
                v239 = *(&v411 + 1);
                v244 = v411;
                v241 = *(&v412 + 1);
                v240 = v412;
                if (BYTE4(v413))
                {
                  v249 = 0x100000000;
                }

                else
                {
                  v249 = 0;
                }

                v242 = v249 | v413;
              }

              else
              {
                v242 = v246 | v245;
              }

              v118 = v407;
            }

            else
            {
              v248 = sinh(v139);
              v244 = 0;
            }

            v523 = v244;
            v524 = v239;
            v525 = v240;
            v526 = v241;
            v527 = v242;
            v528 = BYTE4(v242);
            sub_189090750(&v517, &v523, &v448);
            sub_188F0B59C(v244, v239, v240, v241);
            sub_188F0B59C(v146, v378, v370, v243);
            v294 = exp(-(v123 * v4));
            v295 = v294;
            v296 = *(&v448 + 1);
            v298 = *(&v449 + 1);
            v297 = v449;
            v299 = v450 | (v451 << 32);
            if (v448)
            {
              v411 = v448;
              v412 = v449;
              LODWORD(v413) = v450;
              BYTE4(v413) = BYTE4(v299) & 1;
              sub_18908FB80(v294);
              v296 = *(&v411 + 1);
              v345 = v411;
              v298 = *(&v412 + 1);
              v297 = v412;
              v300 = 0x100000000;
              if (!BYTE4(v413))
              {
                v300 = 0;
              }

              v299 = v300 | v413;
            }

            else
            {
              v345 = 0;
            }

            v301 = v399;
            v302 = v403;
            v346 = v299;
            v347 = v298;
            v348 = v297;
            v349 = v296;
            if (v118)
            {
              *&v411 = v118;
              *(&v411 + 1) = v119;
              *&v412 = v401;
              *(&v412 + 1) = v399;
              LODWORD(v413) = v403;
              BYTE4(v413) = BYTE4(v403) & 1;

              sub_18908FB80(v248);
              sub_18908FB80(v138);
              v303 = *(&v411 + 1);
              v304 = v411;
              v301 = *(&v412 + 1);
              v380 = v412;
              if (BYTE4(v413))
              {
                v305 = 0x100000000;
              }

              else
              {
                v305 = 0;
              }

              v302 = v305 | v413;
              *&v411 = v118;
              *(&v411 + 1) = v119;
              *&v412 = v401;
              *(&v412 + 1) = v399;
              LODWORD(v413) = v403;
              BYTE4(v413) = BYTE4(v403) & 1;

              sub_18908FB80(v101 * 0.5);
              v307 = *(&v411 + 1);
              v306 = v411;
              v309 = *(&v412 + 1);
              v308 = v412;
              if (BYTE4(v413))
              {
                v310 = 0x100000000;
              }

              else
              {
                v310 = 0;
              }

              v118 = v304;
              v311 = v310 | v413;
            }

            else
            {
              v306 = 0;
              v307 = v119;
              v308 = v401;
              v309 = v399;
              v303 = v119;
              v311 = v403;
              v380 = v401;
            }

            v496 = v118;
            v497 = v303;
            v498 = v380;
            v499 = v301;
            v500 = v302;
            v501 = BYTE4(v302);
            v511 = v306;
            v512 = v307;
            v513 = v308;
            v514 = v309;
            v515 = v311;
            v516 = BYTE4(v311);
            sub_189090750(&v511, v473, &v452);
            sub_188F0B59C(v306, v307, v308, v309);
            v312 = *(&v452 + 1);
            v314 = *(&v453 + 1);
            v313 = v453;
            v315 = v454 | (v455 << 32);
            if (v452)
            {
              v411 = v452;
              v412 = v453;
              LODWORD(v413) = v454;
              BYTE4(v413) = BYTE4(v315) & 1;
              sub_18908FB80(1.0 / v138);
              sub_18908FB80(v140);
              sub_18908FB80(v138);
              v312 = *(&v411 + 1);
              v316 = v411;
              v314 = *(&v412 + 1);
              v313 = v412;
              v317 = 0x100000000;
              if (!BYTE4(v413))
              {
                v317 = 0;
              }

              v315 = v317 | v413;
            }

            else
            {
              v316 = 0;
            }

            v505 = v316;
            v506 = v312;
            v507 = v313;
            v508 = v314;
            v509 = v315;
            v510 = BYTE4(v315);
            sub_189090750(&v496, &v505, &v456);
            sub_188F0B59C(v316, v312, v313, v314);
            sub_188F0B59C(v118, v303, v380, v301);
            v318 = *(&v456 + 1);
            v319 = v458 | (v459 << 32);
            if (v456)
            {
              v411 = v456;
              v412 = v457;
              LODWORD(v413) = v458;
              BYTE4(v413) = BYTE4(v319) & 1;
              sub_18908FB80(v295);
              v318 = *(&v411 + 1);
              v375 = v411;
              v366 = *(&v412 + 1);
              v367 = v412;
              v320 = 0x100000000;
              if (!BYTE4(v413))
              {
                v320 = 0;
              }

              v319 = v320 | v413;
            }

            else
            {
              v366 = *(&v457 + 1);
              v367 = v457;
              v375 = 0;
            }

            v321 = v399;
            v322 = v401;
            v354 = v319;
            v368 = v318;
            if (v407)
            {
              *&v411 = v407;
              *(&v411 + 1) = v382;
              *&v412 = v401;
              *(&v412 + 1) = v399;
              LODWORD(v413) = v403;
              BYTE4(v413) = BYTE4(v403) & 1;

              sub_18908FB80(v140);
              v323 = *(&v411 + 1);
              v357 = v411;
              v321 = *(&v412 + 1);
              v322 = v412;
              v324 = 0x100000000;
              if (!BYTE4(v413))
              {
                v324 = 0;
              }

              v325 = v324 | v413;
              *&v411 = v407;
              *(&v411 + 1) = v382;
              *&v412 = v401;
              *(&v412 + 1) = v399;
              LODWORD(v413) = v403;
              BYTE4(v413) = BYTE4(v403) & 1;

              sub_18908FB80(v101 * 0.5);
              v326 = v323;
              v328 = *(&v411 + 1);
              v327 = v411;
              v329 = *(&v412 + 1);
              v330 = v412;
              v331 = 0x100000000;
              if (!BYTE4(v413))
              {
                v331 = 0;
              }

              v332 = v331 | v413;
            }

            else
            {
              v327 = 0;
              v357 = 0;
              v328 = v382;
              v330 = v401;
              v329 = v399;
              v332 = v403;
              v326 = v382;
              v325 = v403;
            }

            *&v480 = v357;
            v333 = v326;
            *(&v480 + 1) = v326;
            *&v481 = v322;
            *(&v481 + 1) = v321;
            v482 = v325;
            v483 = BYTE4(v325);
            v490 = v327;
            v491 = v328;
            v492 = v330;
            v493 = v329;
            v494 = v332;
            v495 = BYTE4(v332);
            sub_189090750(&v490, v473, &v460);
            sub_188F0B59C(v327, v328, v330, v329);
            v334 = *(&v460 + 1);
            v336 = *(&v461 + 1);
            v335 = v461;
            v337 = v462 | (v463 << 32);
            if (v460)
            {
              v411 = v460;
              v412 = v461;
              LODWORD(v413) = v462;
              BYTE4(v413) = BYTE4(v337) & 1;
              sub_18908FB80(1.0 / v138);
              sub_18908FB80(v248);
              v334 = *(&v411 + 1);
              v338 = v411;
              v336 = *(&v412 + 1);
              v335 = v412;
              v339 = 0x100000000;
              if (!BYTE4(v413))
              {
                v339 = 0;
              }

              v337 = v339 | v413;
            }

            else
            {
              v338 = 0;
            }

            v484 = v338;
            v485 = v334;
            v486 = v335;
            v487 = v336;
            v488 = v337;
            v489 = BYTE4(v337);
            sub_189090750(&v480, &v484, &v464);
            sub_188F0B59C(v338, v334, v335, v336);
            sub_188F0B59C(v357, v333, v322, v321);
            v221 = *(&v464 + 1);
            v222 = *(&v465 + 1);
            v223 = v465;
            v224 = v466 | (v467 << 32);
            if (v464)
            {
              v411 = v464;
              v412 = v465;
              LODWORD(v413) = v466;
              BYTE4(v413) = BYTE4(v224) & 1;
              sub_18908FB80(-v123);
              sub_18908FB80(v295);
              v226 = *(&v411 + 1);
              v225 = v411;
              v227 = *(&v412 + 1);
              v228 = v412;
              v340 = 0x100000000;
              if (!BYTE4(v413))
              {
                v340 = 0;
              }

              v230 = v340 | v413;
              if (!v375)
              {
                goto LABEL_234;
              }

              if (v411)
              {
                v476 = v411;
                v477 = v412;
                v478 = v413;
                v479 = BYTE4(v340);
                v231 = v375;
                v233 = v367;
                v232 = v368;
                *&v411 = v375;
                *(&v411 + 1) = v368;
                v234 = v366;
                *&v412 = v367;
                *(&v412 + 1) = v366;
                v235 = v354;
                goto LABEL_231;
              }
            }

            else if (!v375)
            {
              goto LABEL_242;
            }

            v236 = v354;
            goto LABEL_237;
          }

          v411 = v419;
          v412 = *v472;
          LODWORD(v413) = *&v420[13] >> 24;
          BYTE4(v413) = BYTE4(v116) & 1;

          sub_18908FB80(-1.0);
        }

        v119 = *(&v411 + 1);
        v118 = v411;
        v110 = *(&v412 + 1);
        v111 = v412;
        v121 = 0x100000000;
        if (!BYTE4(v413))
        {
          v121 = 0;
        }

        v109 = v121 | v413;
        goto LABEL_68;
      }

LABEL_31:
      v25 = *(v2 + 2);
      if (v25 == v10 && *(v2 + 3) == 0.0)
      {
        goto LABEL_52;
      }

      v51 = v25 - v10;
      if ((v12 - 1) <= 2)
      {
        v52 = __sincos_stret(v25 - v10);
        v53 = atan2(v52.__sinval, v52.__cosval);
        if (v53 > 0.0 && v12 == 2)
        {
          v53 = v53 + -6.28318531;
        }

        if (v53 < 0.0 && v12 == 3)
        {
          v51 = v53 + 6.28318531;
        }

        else
        {
          v51 = v53;
        }
      }

      v56 = *(v2 + 3);
      v57 = sqrt(v9);
      v58 = v11 * 0.5;
      if (v11 * 0.5 >= v57)
      {
        if (v57 >= v58)
        {
          v75 = v58 * v51 + v56;
          v76 = v51 + v75 * v4;
          v63 = exp(-(v58 * v4));
          v64 = v63 * v76;
          v73 = v63 * v75;
          v74 = v76 * v58;
          goto LABEL_51;
        }

        v66 = sqrt(v58 * v58 - v57 * v57);
        v67 = v66 * v4;
        v68 = v4;
        v69 = cosh(v66 * v4);
        v396 = v10;
        v70 = 1.0 / v66 * (v58 * v51 + v56);
        v71 = sinh(v67);
        v62 = v51 * v69 + v70 * v71;
        v63 = exp(-(v58 * v68));
        v64 = v63 * v62;
        v72 = v70 * v69;
        v4 = v68;
        v65 = v66 * v72 + v66 * (v51 * v71);
      }

      else
      {
        v59 = sqrt(v57 * v57 - v58 * v58);
        v60 = __sincos_stret(v59 * v4);
        v61 = 1.0 / v59 * (v58 * v51 + v56);
        v396 = v10;
        v62 = v60.__cosval * v51 + v60.__sinval * v61;
        v63 = exp(-(v58 * v4));
        v64 = v63 * v62;
        v65 = v59 * (v60.__cosval * v61) - v59 * (v51 * v60.__sinval);
      }

      v73 = v63 * v65;
      v74 = v62 * v58;
      v10 = v396;
LABEL_51:
      v77 = v73 - v63 * v74;
      v25 = v10 + v64;
      *(v2 + 2) = v10 + v64;
      *(v2 + 3) = v77;
LABEL_52:
      v78 = 6.28318531 / v25 * (6.28318531 / v25);
      v79 = sqrt(v78);
      v80 = *v2 * (v79 + v79);
      *(v2 + 4) = v78;
      *(v2 + 5) = v80;
      goto LABEL_53;
    }

    v20 = *(v2 + 6);
    v21 = *(v2 + 7);
    v22 = *(v2 + 8);
    v23 = *(v2 + 72);
    v24 = *v2;
    if (*v2 == v20 && *(v2 + 1) == 0.0)
    {
      if ((*(v2 + 170) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v26 = v24 - v20;
      v392 = *(v2 + 6);
      if ((v23 - 1) <= 2)
      {
        v27 = __sincos_stret(v24 - v20);
        v28 = atan2(v27.__sinval, v27.__cosval);
        if (v28 > 0.0 && v23 == 2)
        {
          v28 = v28 + -6.28318531;
        }

        if (v28 < 0.0 && v23 == 3)
        {
          v26 = v28 + 6.28318531;
        }

        else
        {
          v26 = v28;
        }
      }

      v31 = *(v2 + 1);
      v32 = sqrt(v21);
      v33 = v22 * 0.5;
      if (v33 >= v32)
      {
        if (v32 >= v33)
        {
          v49 = v33 * v26 + v31;
          v50 = v26 + v49 * v4;
          v38 = exp(-(v33 * v4));
          v39 = v38 * v50;
          v40 = v38 * v49;
          v41 = v50 * v33;
        }

        else
        {
          v390 = v11;
          v42 = sqrt(v33 * v33 - v32 * v32);
          v43 = v42 * v4;
          v395 = v4;
          v44 = cosh(v42 * v4);
          v387 = v9;
          v45 = 1.0 / v42 * (v33 * v26 + v31);
          v46 = sinh(v43);
          v47 = v26 * v44 + v45 * v46;
          v38 = exp(-(v33 * v395));
          v39 = v38 * v47;
          v48 = v45 * v44;
          v4 = v395;
          v40 = v38 * (v42 * v48 + v42 * (v26 * v46));
          v41 = v47 * v33;
          v9 = v387;
          v11 = v390;
        }
      }

      else
      {
        v386 = v9;
        v34 = sqrt(v32 * v32 - v33 * v33);
        v35 = __sincos_stret(v34 * v4);
        v36 = 1.0 / v34 * (v33 * v26 + v31);
        v389 = v11;
        v37 = v35.__cosval * v26 + v35.__sinval * v36;
        v38 = exp(-(v33 * v4));
        v39 = v38 * v37;
        v40 = v38 * (v34 * (v35.__cosval * v36) - v34 * (v26 * v35.__sinval));
        v41 = v37 * v33;
        v9 = v386;
        v11 = v389;
      }

      *v2 = v392 + v39;
      *(v2 + 1) = v40 - v38 * v41;
      if ((v14 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (v13)
    {
      goto LABEL_53;
    }

    v25 = *(v2 + 2);
    goto LABEL_52;
  }

  v15 = *(v2 + 33);
  v16 = *(v2 + 34);
  v18 = *(v2 + 35);
  v17 = *(v2 + 36);
  v19 = *(v2 + 74) | (*(v2 + 300) << 32);
  sub_188F0B550(v15, v16, v18, v17);
LABEL_241:
  *v3 = v15;
  *(v3 + 8) = v16;
  *(v3 + 16) = v18;
  *(v3 + 24) = v17;
  *(v3 + 36) = BYTE4(v19);
  *(v3 + 32) = v19;
}

BOOL sub_188EE8E28()
{
  sub_188CD18C0(*(v0 + 19), *(v0 + 21));
  if (v1)
  {
    v2 = sub_188EF6EEC(v1, v1);
  }

  else
  {
    v2 = 0;
  }

  v14 = *(v0 + 20);
  v15 = v14;
  v3 = v0[18];
  sub_188F0D774(&v15, v13);
  sub_188CD1B20(v3);
  v4 = v14;
  if (!v14)
  {
    if (!v2)
    {
      v10 = 0;
      goto LABEL_17;
    }

LABEL_15:

    v10 = v2;
    goto LABEL_17;
  }

  v6 = sub_188EF6EEC(v5, v4);
  swift_bridgeObjectRelease_n();
  if (!v2)
  {
    if (!v6)
    {
      v10 = 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = *(v2 + 16);
  v8 = *(v6 + 16);
  if (v7 != v8)
  {
    if (v8 < v7)
    {
      goto LABEL_15;
    }

LABEL_16:

    v10 = v6;
    goto LABEL_17;
  }

  v10 = sub_188EF6C40(v9, v6);

LABEL_17:
  v11 = sub_189149EF0(0, v10, 0.0001);

  return v11;
}

BOOL sub_188EE8FB0()
{
  v17 = *(v0 + 336);
  v18 = *(v0 + 352);
  v19 = *(v0 + 368);
  v20 = *(v0 + 384);
  if (sub_188EB9748())
  {
    return 1;
  }

  v13 = *(v0 + 272);
  v14 = *(v0 + 288);
  v15 = *(v0 + 304);
  v16 = *(v0 + 320);
  if (sub_188EB9748())
  {
    return 1;
  }

  v1 = *(v0 + 200);
  v2 = vsubq_f64(*(v0 + 208), v17);
  v3 = vmulq_n_f64(v13, *&v1);
  v4 = vaddq_f64(vmulq_f64(v2, v2), vmulq_f64(v3, v3));
  v5 = vsubq_f64(*(v0 + 224), v18);
  v6 = vmulq_n_f64(v14, *&v1);
  v21[4] = v4;
  v21[5] = vaddq_f64(vmulq_f64(v5, v5), vmulq_f64(v6, v6));
  v7 = vsubq_f64(*(v0 + 240), v19);
  v8 = vmulq_n_f64(v15, *&v1);
  v9 = vsubq_f64(*(v0 + 256), v20);
  v10 = vmulq_n_f64(v16, *&v1);
  v21[6] = vaddq_f64(vmulq_f64(v7, v7), vmulq_f64(v8, v8));
  v21[7] = vaddq_f64(vmulq_f64(v9, v9), vmulq_f64(v10, v10));
  if (sub_188EB9748())
  {
    return 1;
  }

  else
  {
    memset(v21, 0, 64);
    return sub_188EB97C0(v21, 0.000001);
  }
}

uint64_t sub_188EE90C0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  if (v1)
  {
    v5 = v1[1].i64[0];
    if (!v5 || !*(v2 + 16))
    {
      return 1;
    }

    v6 = v1 + 4;
    v7 = v5 + 1;
    v8 = vdupq_n_s64(0x7FF0000000000000uLL);
    v9 = 1;
    while (--v7)
    {
      if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(vandq_s8(v6[-2], v8), v8), vceqq_s64(vandq_s8(v6[-1], v8), v8)))) & 1) == 0)
      {
        v10 = v6->i64[0];
        v6 = (v6 + 40);
        if ((v10 & 0x7FF0000000000000) != 0x7FF0000000000000)
        {
          continue;
        }
      }

      return v9;
    }
  }

  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  v13 = *(v0 + 240);
  v14 = *(v0 + 248);
  if (v12)
  {
    v17 = *(v12 + 16);
    if (!v17 || !*(v11 + 16))
    {
      return 1;
    }

    v18 = (v12 + 64);
    v19 = v17 + 1;
    v20 = vdupq_n_s64(0x7FF0000000000000uLL);
    v9 = 1;
    while (--v19)
    {
      if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(vandq_s8(v18[-2], v20), v20), vceqq_s64(vandq_s8(v18[-1], v20), v20)))) & 1) == 0)
      {
        v21 = v18->i64[0];
        v18 = (v18 + 40);
        if ((v21 & 0x7FF0000000000000) != 0x7FF0000000000000)
        {
          continue;
        }
      }

      return v9;
    }
  }

  v22 = *(v0 + 296) | (*(v0 + 300) << 32);
  v23 = *(v0 + 184);
  v15 = *(v0 + 260);
  v16 = *(v0 + 256);
  v50 = v16 | (v15 << 32);
  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v52 = *(v0 + 248);
  if (!v23)
  {
    if (v1)
    {
      v13 = v0;
      v62 = *(v0 + 264);
      v63 = v2;
      v64 = v3;
      v65 = v4;
      v66 = v22;
      v67 = BYTE4(v22) & 1;

      sub_18908FB80(-1.0);
      v23 = v62;
      v25 = v2;
      v14 = v4;
      v55 = v64;
      v11 = v66;
      v4 = v67;
      goto LABEL_22;
    }

    if (v12)
    {
      v51 = 0;
      v55 = *(v0 + 280);
      v23 = v16 | (v15 << 32);
      goto LABEL_37;
    }

    return 1;
  }

  v25 = *(v0 + 192);
  v24 = *(v0 + 200);
  v14 = *(v0 + 208);
  v13 = v0;
  v11 = *(v0 + 216);
  v26 = v11 | (*(v0 + 220) << 32);
  if (v1)
  {
    v62 = *(v0 + 264);
    v63 = v2;
    v64 = v3;
    v65 = v4;
    v66 = v22;
    v67 = BYTE4(v22) & 1;
    v56 = v23;
    v57 = v25;
    v58 = v24;
    v59 = v14;
    v60 = v11;
    v61 = (v26 & 0x100000000) >> 32;

    sub_18908FE70(&v62);
    v55 = v58;
    v11 = v11;
    v4 = v61;
LABEL_22:
    v27 = v23;
    goto LABEL_24;
  }

  v55 = *(v0 + 200);
  v4 = (v26 & 0x100000000) != 0;

  v27 = v23;
LABEL_24:
  v2 = *(v27 + 2);
  v28 = *(v23 + 16);
  if (v2 != v28)
  {
    v0 = v13;
    if (v28 < v2)
    {
      goto LABEL_35;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v27 = v23;
    goto LABEL_34;
  }

  v0 = v13;
  if (!v2)
  {
    goto LABEL_35;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_27:
  if (v2 > *(v23 + 16))
  {
    __break(1u);
    return result;
  }

  v30 = 0;
  v31 = *(v27 + 2);
  v32 = (v27 + 48);
  v33 = (v23 + 48);
  do
  {
    if (v30 >= v31)
    {
      goto LABEL_65;
    }

    ++v30;
    v34 = vmulq_f64(*v33, *v32);
    v32[-1] = vmulq_f64(v33[-1], v32[-1]);
    *v32 = v34;
    v32 = (v32 + 40);
    v33 = (v33 + 40);
  }

  while (v2 != v30);
LABEL_34:
  sub_188F0B59C(v23, v25, v55, v14);
LABEL_35:
  v23 = v50;
  if (!v12)
  {

    v41 = 0;
    v4 = v14;
    v2 = v25;
    v42 = v27;
    v13 = v55;
    v43 = *(v27 + 2);
    if (!v43)
    {
      goto LABEL_57;
    }

LABEL_51:
    if (!*(v25 + 16))
    {
      goto LABEL_57;
    }

    v44 = (v27 + 64);
    v45 = v43 + 1;
    v46 = vdupq_n_s64(0x7FF0000000000000uLL);
    v9 = 1;
    while (--v45)
    {
      if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(vandq_s8(v44[-2], v46), v46), vceqq_s64(vandq_s8(v44[-1], v46), v46)))) & 1) == 0)
      {
        v47 = v44->i64[0];
        v44 = (v44 + 40);
        if ((v47 & 0x7FF0000000000000) != 0x7FF0000000000000)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v48 = v41;
    v49 = v42;
    v9 = sub_189090ADC(v27, 1.0e-16);
    v42 = v49;
    v41 = v48;
    goto LABEL_59;
  }

  v4 = v14;
  v2 = v25;
  v51 = v27;
  v13 = v53;
  v11 = v54;
  v14 = v52;
LABEL_37:
  v35 = *(v0 + 176);
  v56 = v12;
  v57 = v11;
  v58 = v13;
  v59 = v14;
  v60 = v23;
  v61 = BYTE4(v23) & 1;

  sub_18908FB80(v35);
  v25 = v12;
  v0 = *(v12 + 16);
  if (v0)
  {

    v27 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_66;
    }

    while (1)
    {
      if (v0 > *(v25 + 16))
      {
        __break(1u);
LABEL_68:
        result = sub_189212B38(v27);
        v27 = result;
        goto LABEL_27;
      }

      v36 = 0;
      v37 = 0;
      v38 = *(v27 + 2);
      while (v37 < v38)
      {
        ++v37;
        v39 = &v27[v36];
        v40 = vmulq_f64(*(v25 + v36 + 48), *&v27[v36 + 48]);
        v39[2] = vmulq_f64(*(v25 + v36 + 32), *&v27[v36 + 32]);
        v39[3] = v40;
        v36 += 40;
        if (v0 == v37)
        {

          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      v27 = sub_189212B38(v25);
    }
  }

  v27 = v56;
LABEL_47:
  if (!v51)
  {
    sub_188F0B550(v27, v11, v13, v14);
    v42 = 0;
    v41 = v27;
    v25 = v11;
    v43 = *(v27 + 2);
    if (!v43)
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

  v56 = v27;
  v57 = v11;
  v58 = v13;
  v59 = v14;
  v60 = v23;
  v61 = BYTE4(v23) & 1;
  sub_188F0B550(v27, v11, v13, v14);
  sub_188F0B550(v51, v2, v55, v4);
  sub_18908FD40(&v56);

  v42 = v51;
  v41 = v27;
  v27 = v51;
  v25 = v2;
  v13 = v55;
  v14 = v4;
  v43 = *(v51 + 16);
  if (v43)
  {
    goto LABEL_51;
  }

LABEL_57:
  v9 = 1;
LABEL_59:
  sub_188F0B59C(v42, v2, v55, v4);
  sub_188F0B59C(v27, v25, v13, v14);
  sub_188F0B59C(v41, v54, v53, v52);
  return v9;
}

BOOL sub_188EE97A4()
{
  v1 = v0[12];
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = vnegq_f64(v2);
  v4 = vdupq_n_s64(0x7FF0000000000000uLL);
  *&v2.f64[0] = vmovn_s64(vcgeq_s64(vandq_s8(v1, v3), v4));
  if ((LODWORD(v2.f64[0]) | HIDWORD(v2.f64[0])))
  {
    return 1;
  }

  v5 = v0[11];
  v6 = vmovn_s64(vcgeq_s64(vandq_s8(v5, v3), v4));
  if ((v6.i32[0] | v6.i32[1]))
  {
    return 1;
  }

  v7 = vsubq_f64(v0[10], v1);
  v8 = vmulq_n_f64(v5, v0[9].f64[1]);
  v9 = vaddq_f64(vmulq_f64(v7, v7), vmulq_f64(v8, v8));
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  *&v8.f64[0] = vmovn_s64(vcgeq_s64(vandq_s8(v9, vnegq_f64(v8)), vdupq_n_s64(0x7FF0000000000000uLL)));
  if ((LODWORD(v8.f64[0]) | HIDWORD(v8.f64[0])))
  {
    return 1;
  }

  if (*v9.i64 <= 0.000001)
  {
    return *&v9.i64[1] <= 0.000001;
  }

  return 0;
}

BOOL sub_188EE986C()
{
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  v2 = vnegq_f64(v1);
  v3 = vdupq_n_s64(0x7FF0000000000000uLL);
  if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_s64(vandq_s8(*(v0 + 240), v2), v3), vcgeq_s64(vandq_s8(*(v0 + 256), v2), v3)))))
  {
    return 1;
  }

  v18 = *(v0 + 240);
  v19 = *(v0 + 256);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  if (sub_188AABCA0(v4, v5, v6, v7))
  {
    return 1;
  }

  v8 = *(v0 + 168);
  v9 = v4 * v8 * (v4 * v8);
  v10 = v5 * v8 * (v5 * v8);
  v11 = v6 * v8 * (v6 * v8);
  v12 = v7 * v8 * (v7 * v8);
  v13 = (*(v0 + 176) - *&v18) * (*(v0 + 176) - *&v18) + v9;
  v14 = (*(v0 + 184) - *(&v18 + 1)) * (*(v0 + 184) - *(&v18 + 1)) + v10;
  v15 = (*(v0 + 192) - *&v19) * (*(v0 + 192) - *&v19) + v11;
  v16 = (*(v0 + 200) - *(&v19 + 1)) * (*(v0 + 200) - *(&v19 + 1)) + v12;
  if (sub_188AABCA0(v13, v14, v15, v16))
  {
    return 1;
  }

  result = 0;
  if (fabs(v13) <= 0.000001 && fabs(v14) <= 0.000001 && fabs(v15) <= 0.000001)
  {
    return fabs(v16) <= 0.000001;
  }

  return result;
}

void sub_188EE99B8(uint64_t a1, __n128 a2, double a3, double a4)
{
  v6 = a2.n128_f64[0];
  v8 = *v4;
  if (*v4)
  {
    if (!a1 || (sub_1890154CC(*v4, a1) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (a1)
  {
    goto LABEL_7;
  }

  if (!v4[1])
  {
    return;
  }

LABEL_7:
  v348 = a1;
  sub_188CD18C0(v8, a1);
  v10 = v9;
  v350 = v4[1];
  v11 = sqrt(v6);
  v12 = a3 * 0.5;
  v448 = a3 * 0.5;
  v349 = v4;
  if (a3 * 0.5 < v11)
  {
    v395 = sqrt(v11 * v11 - v12 * v12);
    v13 = v395 * a4;
    v433 = cos(v395 * a4);
    if (v10)
    {
      v14 = *(v10 + 16);
      v15 = MEMORY[0x1E69E7CC0];
      if (v14)
      {
        v470 = MEMORY[0x1E69E7CC0];
        sub_188CCF904(0, v14, 0);
        v15 = v470;
        v16 = *(v470 + 16);
        v17 = 32 * v16;
        v18 = (v10 + 48);
        do
        {
          v19 = v18[-1];
          v20 = *v18;
          v470 = v15;
          v21 = *(v15 + 24);
          v22 = v16 + 1;
          if (v16 >= v21 >> 1)
          {
            v403 = v20;
            v415 = v19;
            sub_188CCF904((v21 > 1), v16 + 1, 1);
            v20 = v403;
            v19 = v415;
            v15 = v470;
          }

          *(v15 + 16) = v22;
          v23 = (v15 + v17);
          v23[2] = vmulq_n_f64(v19, v433);
          v23[3] = vmulq_n_f64(v20, v433);
          v17 += 32;
          v18 += 2;
          v16 = v22;
          --v14;
        }

        while (v14);
        v38 = *(v10 + 16);
        v39 = MEMORY[0x1E69E7CC0];
        if (v38)
        {
          v470 = MEMORY[0x1E69E7CC0];
          sub_18914A444(v38);
          v39 = v470;
          v40 = (v10 + 48);
          do
          {
            v405 = *v40;
            v418 = v40[-1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v39 + 16) + 1, 1);
              v39 = v470;
            }

            v41 = v448;
            v43 = *(v39 + 16);
            v42 = *(v39 + 24);
            if (v43 >= v42 >> 1)
            {
              sub_188CCF904((v42 > 1), v43 + 1, 1);
              v41 = v448;
              v39 = v470;
            }

            *(v39 + 16) = v43 + 1;
            v44 = (v39 + 32 * v43);
            v44[2] = vmulq_n_f64(v418, v41);
            v44[3] = vmulq_n_f64(v405, v41);
            v40 += 2;
            --v38;
          }

          while (v38);
        }
      }

      else
      {
        v39 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v39 = 0;
      v15 = 0;
    }

    v45 = sub_18914A510(v39, v350);

    v419 = 1.0 / v395;
    if (!v45)
    {
      v53 = 0;
      goto LABEL_63;
    }

    v46 = *(v45 + 16);
    if (v46)
    {
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v46);
      v47 = v470;
      v48 = (v45 + 48);
      do
      {
        v406 = v48[-1];
        v381 = *v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v47 + 16) + 1, 1);
          v47 = v470;
        }

        v50 = *(v47 + 16);
        v49 = *(v47 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_188CCF904((v49 > 1), v50 + 1, 1);
          v47 = v470;
        }

        *(v47 + 16) = v50 + 1;
        v51 = (v47 + 32 * v50);
        v51[2] = vmulq_n_f64(v406, v419);
        v51[3] = vmulq_n_f64(v381, v419);
        v48 += 2;
        --v46;
      }

      while (v46);

      v52 = *(v47 + 16);
      if (v52)
      {
        goto LABEL_53;
      }
    }

    else
    {

      v47 = MEMORY[0x1E69E7CC0];
      v52 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v52)
      {
LABEL_53:
        v361 = sin(v13);
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v52);
        v53 = v470;
        v54 = (v47 + 48);
        do
        {
          v407 = v54[-1];
          v382 = *v54;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v53 + 16) + 1, 1);
            v53 = v470;
          }

          v56 = *(v53 + 16);
          v55 = *(v53 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_188CCF904((v55 > 1), v56 + 1, 1);
            v53 = v470;
          }

          *(v53 + 16) = v56 + 1;
          v57 = (v53 + 32 * v56);
          v57[2] = vmulq_n_f64(v407, v361);
          v57[3] = vmulq_n_f64(v382, v361);
          v54 += 2;
          --v52;
        }

        while (v52);

LABEL_63:
        v58 = sub_18914A510(v15, v53);

        v408 = exp(-(v448 * a4));
        if (v58)
        {
          v59 = *(v58 + 16);
          if (v59)
          {
            v470 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v59);
            v60 = v470;
            v61 = (v58 + 48);
            do
            {
              v364 = *v61;
              v383 = v61[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v60 + 16) + 1, 1);
                v60 = v470;
              }

              v63 = *(v60 + 16);
              v62 = *(v60 + 24);
              if (v63 >= v62 >> 1)
              {
                sub_188CCF904((v62 > 1), v63 + 1, 1);
                v60 = v470;
              }

              *(v60 + 16) = v63 + 1;
              v64 = (v60 + 32 * v63);
              v64[2] = vmulq_n_f64(v383, v408);
              v64[3] = vmulq_n_f64(v364, v408);
              v61 += 2;
              --v59;
            }

            while (v59);
          }

          else
          {

            v60 = MEMORY[0x1E69E7CC0];
          }
        }

        else
        {
          v60 = 0;
        }

        v65 = sin(v13);
        v362 = v65;
        if (v10)
        {
          v66 = *(v10 + 16);
          v67 = MEMORY[0x1E69E7CC0];
          if (v66)
          {
            v351 = -v65;
            v470 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v66);
            v68 = v470;
            v69 = (v10 + 48);
            do
            {
              v365 = *v69;
              v384 = v69[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v68 + 16) + 1, 1);
                v68 = v470;
              }

              v71 = *(v68 + 16);
              v70 = *(v68 + 24);
              if (v71 >= v70 >> 1)
              {
                sub_188CCF904((v70 > 1), v71 + 1, 1);
                v68 = v470;
              }

              *(v68 + 16) = v71 + 1;
              v72 = (v68 + 32 * v71);
              v72[2] = vmulq_n_f64(v384, v351);
              v72[3] = vmulq_n_f64(v365, v351);
              v69 += 2;
              --v66;
            }

            while (v66);
          }

          else
          {
            v68 = MEMORY[0x1E69E7CC0];
          }

          v75 = sub_188D7F314(v68);
          if (v75)
          {
            v76 = v75;
            v470 = v67;
            sub_18914A444(v75);
            if (v76 < 0)
            {
              __break(1u);
              goto LABEL_499;
            }

            v74 = v470;
            v77 = (v68 + 48);
            do
            {
              v366 = *v77;
              v385 = v77[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v74 + 16) + 1, 1);
                v74 = v470;
              }

              v79 = *(v74 + 16);
              v78 = *(v74 + 24);
              if (v79 >= v78 >> 1)
              {
                sub_188CCF904((v78 > 1), v79 + 1, 1);
                v74 = v470;
              }

              *(v74 + 16) = v79 + 1;
              v80 = (v74 + 32 * v79);
              v80[2] = vmulq_n_f64(v385, v395);
              v80[3] = vmulq_n_f64(v366, v395);
              v77 += 2;
              --v76;
            }

            while (v76);
          }

          else
          {

            v74 = MEMORY[0x1E69E7CC0];
          }

          v81 = sub_188D7F314(v10);
          v73 = MEMORY[0x1E69E7CC0];
          if (v81)
          {
            v82 = v81;
            v470 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v81);
            if ((v82 & 0x8000000000000000) == 0)
            {
              v73 = v470;
              v83 = (v10 + 48);
              do
              {
                v367 = *v83;
                v386 = v83[-1];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v73 + 16) + 1, 1);
                  v73 = v470;
                }

                v84 = v448;
                v86 = *(v73 + 16);
                v85 = *(v73 + 24);
                if (v86 >= v85 >> 1)
                {
                  sub_188CCF904((v85 > 1), v86 + 1, 1);
                  v84 = v448;
                  v73 = v470;
                }

                *(v73 + 16) = v86 + 1;
                v87 = (v73 + 32 * v86);
                v87[2] = vmulq_n_f64(v386, v84);
                v87[3] = vmulq_n_f64(v367, v84);
                v83 += 2;
                --v82;
              }

              while (v82);
              goto LABEL_103;
            }

LABEL_499:
            __break(1u);
            goto LABEL_500;
          }
        }

        else
        {
          v73 = 0;
          v74 = 0;
        }

LABEL_103:
        v88 = sub_18914A510(v73, v350);

        if (!v88)
        {
          v96 = 0;
LABEL_136:
          v110 = sub_18914A510(v74, v96);

          if (!v110)
          {
            v470 = 0;
            if (v10)
            {
LABEL_150:
              v120 = sub_188D7F314(v10);
              if (!v120)
              {
                v119 = sub_18914A4BC(0);
LABEL_160:
                v126 = sub_188D7F314(v10);
                if (v126)
                {
                  v127 = v126;
                  v459 = MEMORY[0x1E69E7CC0];
                  sub_18914A444(v126);
                  if ((v127 & 0x8000000000000000) == 0)
                  {
                    v118 = v459;
                    v128 = (v10 + 48);
                    do
                    {
                      v436 = v128[-1];
                      v398 = *v128;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_188CCF904(0, *(v118 + 16) + 1, 1);
                        v118 = v459;
                      }

                      v129 = v448;
                      v131 = *(v118 + 16);
                      v130 = *(v118 + 24);
                      if (v131 >= v130 >> 1)
                      {
                        sub_188CCF904((v130 > 1), v131 + 1, 1);
                        v129 = v448;
                        v118 = v459;
                      }

                      *(v118 + 16) = v131 + 1;
                      v132 = (v118 + 32 * v131);
                      v132[2] = vmulq_n_f64(v436, v129);
                      v132[3] = vmulq_n_f64(v398, v129);
                      v128 += 2;
                      --v127;
                    }

                    while (v127);
                    goto LABEL_170;
                  }

LABEL_505:
                  __break(1u);
                  goto LABEL_506;
                }

                v118 = sub_18914A4BC(0);
LABEL_170:
                v133 = sub_18914A510(v118, v350);

                if (!v133)
                {
                  v141 = 0;
                  goto LABEL_193;
                }

                v134 = sub_188D7F314(v133);
                if (!v134)
                {
                  v136 = sub_18914A4BC(0);
LABEL_182:

                  v142 = sub_188D7F314(v136);
                  if (!v142)
                  {
                    v141 = sub_18914A4BC(0);
LABEL_192:

LABEL_193:
                    v148 = sub_18914A510(v119, v141);

                    if (v148)
                    {
                      v149 = sub_188D7F314(v148);
                      if (!v149)
                      {
                        v151 = sub_18914A4BC(0);
                        goto LABEL_204;
                      }

                      v150 = v149;
                      v462 = MEMORY[0x1E69E7CC0];
                      sub_18914A444(v149);
                      if ((v150 & 0x8000000000000000) == 0)
                      {
                        v421 = -v448;
                        v151 = v462;
                        v152 = (v148 + 48);
                        do
                        {
                          v449 = v152[-1];
                          v439 = *v152;
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_188CCF904(0, *(v151 + 16) + 1, 1);
                            v151 = v462;
                          }

                          v154 = *(v151 + 16);
                          v153 = *(v151 + 24);
                          if (v154 >= v153 >> 1)
                          {
                            sub_188CCF904((v153 > 1), v154 + 1, 1);
                            v151 = v462;
                          }

                          *(v151 + 16) = v154 + 1;
                          v155 = (v151 + 32 * v154);
                          v155[2] = vmulq_n_f64(v449, v421);
                          v155[3] = vmulq_n_f64(v439, v421);
                          v152 += 2;
                          --v150;
                        }

                        while (v150);
LABEL_204:

                        v156 = sub_188D7F314(v151);
                        if (v156)
                        {
                          v157 = v156;
                          v463 = MEMORY[0x1E69E7CC0];
                          sub_18914A444(v156);
                          if ((v157 & 0x8000000000000000) == 0)
                          {
                            v158 = v463;
                            v159 = (v151 + 48);
                            do
                            {
                              v450 = v159[-1];
                              v440 = *v159;
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                sub_188CCF904(0, *(v158 + 16) + 1, 1);
                                v158 = v463;
                              }

                              v161 = *(v158 + 16);
                              v160 = *(v158 + 24);
                              if (v161 >= v160 >> 1)
                              {
                                sub_188CCF904((v160 > 1), v161 + 1, 1);
                                v158 = v463;
                              }

                              *(v158 + 16) = v161 + 1;
                              v162 = (v158 + 32 * v161);
                              v162[2] = vmulq_n_f64(v450, v408);
                              v162[3] = vmulq_n_f64(v440, v408);
                              v159 += 2;
                              --v157;
                            }

                            while (v157);
                            goto LABEL_494;
                          }

                          goto LABEL_509;
                        }

LABEL_493:
                        v158 = sub_18914A4BC(v156);
LABEL_494:

                        goto LABEL_495;
                      }

LABEL_508:
                      __break(1u);
LABEL_509:
                      __break(1u);
                      goto LABEL_510;
                    }

LABEL_482:
                    v158 = 0;
LABEL_495:
                    sub_188ECCDF0(&v470, v158);

                    goto LABEL_496;
                  }

                  v143 = v142;
                  v461 = MEMORY[0x1E69E7CC0];
                  sub_18914A444(v142);
                  if ((v143 & 0x8000000000000000) == 0)
                  {
                    v141 = v461;
                    v144 = (v136 + 48);
                    do
                    {
                      v420 = *v144;
                      v438 = v144[-1];
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_188CCF904(0, *(v141 + 16) + 1, 1);
                        v141 = v461;
                      }

                      v146 = *(v141 + 16);
                      v145 = *(v141 + 24);
                      if (v146 >= v145 >> 1)
                      {
                        sub_188CCF904((v145 > 1), v146 + 1, 1);
                        v141 = v461;
                      }

                      *(v141 + 16) = v146 + 1;
                      v147 = (v141 + 32 * v146);
                      v147[2] = vmulq_n_f64(v438, v362);
                      v147[3] = vmulq_n_f64(v420, v362);
                      v144 += 2;
                      --v143;
                    }

                    while (v143);
                    goto LABEL_192;
                  }

LABEL_507:
                  __break(1u);
                  goto LABEL_508;
                }

                v135 = v134;
                v460 = MEMORY[0x1E69E7CC0];
                sub_18914A444(v134);
                if ((v135 & 0x8000000000000000) == 0)
                {
                  v136 = v460;
                  v137 = (v133 + 48);
                  do
                  {
                    v437 = v137[-1];
                    v399 = *v137;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_188CCF904(0, *(v136 + 16) + 1, 1);
                      v136 = v460;
                    }

                    v139 = *(v136 + 16);
                    v138 = *(v136 + 24);
                    if (v139 >= v138 >> 1)
                    {
                      sub_188CCF904((v138 > 1), v139 + 1, 1);
                      v136 = v460;
                    }

                    *(v136 + 16) = v139 + 1;
                    v140 = (v136 + 32 * v139);
                    v140[2] = vmulq_n_f64(v437, v419);
                    v140[3] = vmulq_n_f64(v399, v419);
                    v137 += 2;
                    --v135;
                  }

                  while (v135);
                  goto LABEL_182;
                }

LABEL_506:
                __break(1u);
                goto LABEL_507;
              }

              v121 = v120;
              v458 = MEMORY[0x1E69E7CC0];
              sub_18914A444(v120);
              if ((v121 & 0x8000000000000000) == 0)
              {
                v119 = v458;
                v122 = (v10 + 48);
                do
                {
                  v391 = *v122;
                  v397 = v122[-1];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_188CCF904(0, *(v119 + 16) + 1, 1);
                    v119 = v458;
                  }

                  v124 = *(v119 + 16);
                  v123 = *(v119 + 24);
                  if (v124 >= v123 >> 1)
                  {
                    sub_188CCF904((v123 > 1), v124 + 1, 1);
                    v119 = v458;
                  }

                  *(v119 + 16) = v124 + 1;
                  v125 = (v119 + 32 * v124);
                  v125[2] = vmulq_n_f64(v397, v433);
                  v125[3] = vmulq_n_f64(v391, v433);
                  v122 += 2;
                  --v121;
                }

                while (v121);
                goto LABEL_160;
              }

LABEL_504:
              __break(1u);
              goto LABEL_505;
            }

LABEL_147:
            v118 = 0;
            v119 = 0;
            goto LABEL_170;
          }

          v111 = sub_188D7F314(v110);
          if (!v111)
          {
            v113 = sub_18914A4BC(0);
            goto LABEL_149;
          }

          v112 = v111;
          v470 = MEMORY[0x1E69E7CC0];
          sub_18914A444(v111);
          if ((v112 & 0x8000000000000000) == 0)
          {
            v113 = v470;
            v114 = (v110 + 48);
            do
            {
              v390 = *v114;
              v396 = v114[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v113 + 16) + 1, 1);
                v113 = v470;
              }

              v116 = *(v113 + 16);
              v115 = *(v113 + 24);
              if (v116 >= v115 >> 1)
              {
                sub_188CCF904((v115 > 1), v116 + 1, 1);
                v113 = v470;
              }

              *(v113 + 16) = v116 + 1;
              v117 = (v113 + 32 * v116);
              v117[2] = vmulq_n_f64(v396, v408);
              v117[3] = vmulq_n_f64(v390, v408);
              v114 += 2;
              --v112;
            }

            while (v112);
LABEL_149:

            v470 = v113;
            if (v10)
            {
              goto LABEL_150;
            }

            goto LABEL_147;
          }

          goto LABEL_502;
        }

        v89 = sub_188D7F314(v88);
        if (!v89)
        {
          v91 = sub_18914A4BC(0);
LABEL_115:

          v97 = sub_188D7F314(v91);
          if (!v97)
          {
            v99 = sub_18914A4BC(0);
LABEL_125:

            v104 = sub_188D7F314(v99);
            if (v104)
            {
              v105 = v104;
              v470 = MEMORY[0x1E69E7CC0];
              sub_18914A444(v104);
              if (v105 < 0)
              {
LABEL_503:
                __break(1u);
                goto LABEL_504;
              }

              v96 = v470;
              v106 = (v99 + 48);
              do
              {
                v370 = *v106;
                v389 = v106[-1];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v96 + 16) + 1, 1);
                  v96 = v470;
                }

                v108 = *(v96 + 16);
                v107 = *(v96 + 24);
                if (v108 >= v107 >> 1)
                {
                  sub_188CCF904((v107 > 1), v108 + 1, 1);
                  v96 = v470;
                }

                *(v96 + 16) = v108 + 1;
                v109 = (v96 + 32 * v108);
                v109[2] = vmulq_n_f64(v389, v395);
                v109[3] = vmulq_n_f64(v370, v395);
                v106 += 2;
                --v105;
              }

              while (v105);
            }

            else
            {
              v96 = sub_18914A4BC(0);
            }

            goto LABEL_136;
          }

          v98 = v97;
          v470 = MEMORY[0x1E69E7CC0];
          sub_18914A444(v97);
          if ((v98 & 0x8000000000000000) == 0)
          {
            v99 = v470;
            v100 = (v91 + 48);
            do
            {
              v369 = *v100;
              v388 = v100[-1];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v99 + 16) + 1, 1);
                v99 = v470;
              }

              v102 = *(v99 + 16);
              v101 = *(v99 + 24);
              if (v102 >= v101 >> 1)
              {
                sub_188CCF904((v101 > 1), v102 + 1, 1);
                v99 = v470;
              }

              *(v99 + 16) = v102 + 1;
              v103 = (v99 + 32 * v102);
              v103[2] = vmulq_n_f64(v388, v433);
              v103[3] = vmulq_n_f64(v369, v433);
              v100 += 2;
              --v98;
            }

            while (v98);
            goto LABEL_125;
          }

LABEL_501:
          __break(1u);
LABEL_502:
          __break(1u);
          goto LABEL_503;
        }

        v90 = v89;
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v89);
        if ((v90 & 0x8000000000000000) == 0)
        {
          v91 = v470;
          v92 = (v88 + 48);
          do
          {
            v368 = *v92;
            v387 = v92[-1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v91 + 16) + 1, 1);
              v91 = v470;
            }

            v94 = *(v91 + 16);
            v93 = *(v91 + 24);
            if (v94 >= v93 >> 1)
            {
              sub_188CCF904((v93 > 1), v94 + 1, 1);
              v91 = v470;
            }

            *(v91 + 16) = v94 + 1;
            v95 = (v91 + 32 * v94);
            v95[2] = vmulq_n_f64(v387, v419);
            v95[3] = vmulq_n_f64(v368, v419);
            v92 += 2;
            --v90;
          }

          while (v90);
          goto LABEL_115;
        }

LABEL_500:
        __break(1u);
        goto LABEL_501;
      }
    }

    v53 = MEMORY[0x1E69E7CC0];
    goto LABEL_63;
  }

  v360 = -v12;
  if (v11 < v12)
  {
    v380 = sqrt(v12 * v12 - v11 * v11);
    v24 = v380 * a4;
    v416 = cosh(v380 * a4);
    if (v10)
    {
      v25 = *(v10 + 16);
      v26 = MEMORY[0x1E69E7CC0];
      if (v25)
      {
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v25);
        v26 = v470;
        v27 = (v10 + 48);
        do
        {
          v434 = v27[-1];
          v404 = *v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v26 + 16) + 1, 1);
            v26 = v470;
          }

          v29 = *(v26 + 16);
          v28 = *(v26 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_188CCF904((v28 > 1), v29 + 1, 1);
            v26 = v470;
          }

          *(v26 + 16) = v29 + 1;
          v30 = (v26 + 32 * v29);
          v30[2] = vmulq_n_f64(v434, v416);
          v30[3] = vmulq_n_f64(v404, v416);
          v27 += 2;
          --v25;
        }

        while (v25);
        v163 = *(v10 + 16);
        v164 = MEMORY[0x1E69E7CC0];
        if (v163)
        {
          v470 = MEMORY[0x1E69E7CC0];
          sub_18914A444(v163);
          v164 = v470;
          v165 = (v10 + 48);
          do
          {
            v441 = v165[-1];
            v409 = *v165;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v164 + 16) + 1, 1);
              v164 = v470;
            }

            v166 = v448;
            v168 = *(v164 + 16);
            v167 = *(v164 + 24);
            if (v168 >= v167 >> 1)
            {
              sub_188CCF904((v167 > 1), v168 + 1, 1);
              v166 = v448;
              v164 = v470;
            }

            *(v164 + 16) = v168 + 1;
            v169 = (v164 + 32 * v168);
            v169[2] = vmulq_n_f64(v441, v166);
            v169[3] = vmulq_n_f64(v409, v166);
            v165 += 2;
            --v163;
          }

          while (v163);
        }
      }

      else
      {
        v164 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v164 = 0;
      v26 = 0;
    }

    v177 = sub_18914A510(v164, v350);

    v410 = 1.0 / v380;
    if (v177)
    {
      v178 = *(v177 + 16);
      if (v178)
      {
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v178);
        v179 = v470;
        v180 = (v177 + 48);
        do
        {
          v443 = v180[-1];
          v400 = *v180;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v179 + 16) + 1, 1);
            v179 = v470;
          }

          v182 = *(v179 + 16);
          v181 = *(v179 + 24);
          if (v182 >= v181 >> 1)
          {
            sub_188CCF904((v181 > 1), v182 + 1, 1);
            v179 = v470;
          }

          *(v179 + 16) = v182 + 1;
          v183 = (v179 + 32 * v182);
          v183[2] = vmulq_n_f64(v443, v410);
          v183[3] = vmulq_n_f64(v400, v410);
          v180 += 2;
          --v178;
        }

        while (v178);
      }

      else
      {

        v179 = MEMORY[0x1E69E7CC0];
      }

      v444 = sinh(v24);
      v208 = *(v179 + 16);
      if (v208)
      {
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v208);
        v184 = v470;
        v209 = (v179 + 48);
        do
        {
          v401 = v209[-1];
          v352 = *v209;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v184 + 16) + 1, 1);
            v184 = v470;
          }

          v211 = *(v184 + 16);
          v210 = *(v184 + 24);
          if (v211 >= v210 >> 1)
          {
            sub_188CCF904((v210 > 1), v211 + 1, 1);
            v184 = v470;
          }

          *(v184 + 16) = v211 + 1;
          v212 = (v184 + 32 * v211);
          v212[2] = vmulq_n_f64(v401, v444);
          v212[3] = vmulq_n_f64(v352, v444);
          v209 += 2;
          --v208;
        }

        while (v208);
      }

      else
      {

        v184 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v444 = sinh(v24);
      v184 = 0;
    }

    v213 = sub_18914A510(v26, v184);

    v402 = exp(-(v448 * a4));
    if (v213)
    {
      v214 = sub_188D7F314(v213);
      if (v214)
      {
        v215 = v214;
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v214);
        if (v215 < 0)
        {
LABEL_511:
          __break(1u);
          goto LABEL_512;
        }

        v60 = v470;
        v216 = (v213 + 48);
        do
        {
          v371 = v216[-1];
          v353 = *v216;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v60 + 16) + 1, 1);
            v60 = v470;
          }

          v218 = *(v60 + 16);
          v217 = *(v60 + 24);
          if (v218 >= v217 >> 1)
          {
            sub_188CCF904((v217 > 1), v218 + 1, 1);
            v60 = v470;
          }

          *(v60 + 16) = v218 + 1;
          v219 = (v60 + 32 * v218);
          v219[2] = vmulq_n_f64(v371, v402);
          v219[3] = vmulq_n_f64(v353, v402);
          v216 += 2;
          --v215;
        }

        while (v215);

        if (v10)
        {
          goto LABEL_299;
        }

LABEL_309:
        v227 = 0;
        v228 = 0;
        goto LABEL_379;
      }

      v60 = MEMORY[0x1E69E7CC0];
      if (!v10)
      {
        goto LABEL_309;
      }
    }

    else
    {
      v60 = 0;
      if (!v10)
      {
        goto LABEL_309;
      }
    }

LABEL_299:
    v220 = sub_188D7F314(v10);
    if (v220)
    {
      v221 = v220;
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v220);
      if (v221 < 0)
      {
LABEL_513:
        __break(1u);
        goto LABEL_514;
      }

      v222 = v470;
      v223 = (v10 + 48);
      do
      {
        v372 = v223[-1];
        v354 = *v223;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v222 + 16) + 1, 1);
          v222 = v470;
        }

        v225 = *(v222 + 16);
        v224 = *(v222 + 24);
        if (v225 >= v224 >> 1)
        {
          sub_188CCF904((v224 > 1), v225 + 1, 1);
          v222 = v470;
        }

        *(v222 + 16) = v225 + 1;
        v226 = (v222 + 32 * v225);
        v226[2] = vmulq_n_f64(v372, v444);
        v226[3] = vmulq_n_f64(v354, v444);
        v223 += 2;
        --v221;
      }

      while (v221);
    }

    else
    {
      v222 = sub_18914A4BC(0);
    }

    v236 = sub_188D7F314(v222);
    if (v236)
    {
      v237 = v236;
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v236);
      if (v237 < 0)
      {
LABEL_515:
        __break(1u);
        goto LABEL_516;
      }

      v228 = v470;
      v238 = (v222 + 48);
      do
      {
        v373 = v238[-1];
        v355 = *v238;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v228 + 16) + 1, 1);
          v228 = v470;
        }

        v240 = *(v228 + 16);
        v239 = *(v228 + 24);
        if (v240 >= v239 >> 1)
        {
          sub_188CCF904((v239 > 1), v240 + 1, 1);
          v228 = v470;
        }

        *(v228 + 16) = v240 + 1;
        v241 = (v228 + 32 * v240);
        v241[2] = vmulq_n_f64(v373, v380);
        v241[3] = vmulq_n_f64(v355, v380);
        v238 += 2;
        --v237;
      }

      while (v237);
    }

    else
    {
      v228 = sub_18914A4BC(0);
    }

    v250 = sub_188D7F314(v10);
    if (v250)
    {
      v251 = v250;
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v250);
      if (v251 < 0)
      {
LABEL_519:
        __break(1u);
        goto LABEL_520;
      }

      v227 = v470;
      v252 = (v10 + 48);
      do
      {
        v374 = v252[-1];
        v356 = *v252;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v227 + 16) + 1, 1);
          v227 = v470;
        }

        v253 = v448;
        v255 = *(v227 + 16);
        v254 = *(v227 + 24);
        if (v255 >= v254 >> 1)
        {
          sub_188CCF904((v254 > 1), v255 + 1, 1);
          v253 = v448;
          v227 = v470;
        }

        *(v227 + 16) = v255 + 1;
        v256 = (v227 + 32 * v255);
        v256[2] = vmulq_n_f64(v374, v253);
        v256[3] = vmulq_n_f64(v356, v253);
        v252 += 2;
        --v251;
      }

      while (v251);
    }

    else
    {
      v227 = sub_18914A4BC(0);
    }

LABEL_379:
    v272 = sub_18914A510(v227, v350);

    if (v272)
    {
      v273 = sub_188D7F314(v272);
      if (v273)
      {
        v274 = v273;
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v273);
        if (v274 < 0)
        {
LABEL_517:
          __break(1u);
          goto LABEL_518;
        }

        v275 = v470;
        v276 = (v272 + 48);
        do
        {
          v375 = v276[-1];
          v357 = *v276;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v275 + 16) + 1, 1);
            v275 = v470;
          }

          v278 = *(v275 + 16);
          v277 = *(v275 + 24);
          if (v278 >= v277 >> 1)
          {
            sub_188CCF904((v277 > 1), v278 + 1, 1);
            v275 = v470;
          }

          *(v275 + 16) = v278 + 1;
          v279 = (v275 + 32 * v278);
          v279[2] = vmulq_n_f64(v375, v410);
          v279[3] = vmulq_n_f64(v357, v410);
          v276 += 2;
          --v274;
        }

        while (v274);
      }

      else
      {
        v275 = sub_18914A4BC(0);
      }

      v281 = sub_188D7F314(v275);
      if (v281)
      {
        v282 = v281;
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v281);
        if (v282 < 0)
        {
LABEL_520:
          __break(1u);
          goto LABEL_521;
        }

        v283 = v470;
        v284 = (v275 + 48);
        do
        {
          v376 = v284[-1];
          v358 = *v284;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v283 + 16) + 1, 1);
            v283 = v470;
          }

          v286 = *(v283 + 16);
          v285 = *(v283 + 24);
          if (v286 >= v285 >> 1)
          {
            sub_188CCF904((v285 > 1), v286 + 1, 1);
            v283 = v470;
          }

          *(v283 + 16) = v286 + 1;
          v287 = (v283 + 32 * v286);
          v287[2] = vmulq_n_f64(v376, v416);
          v287[3] = vmulq_n_f64(v358, v416);
          v284 += 2;
          --v282;
        }

        while (v282);
      }

      else
      {
        v283 = sub_18914A4BC(0);
      }

      v288 = sub_188D7F314(v283);
      if (v288)
      {
        v289 = v288;
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v288);
        if (v289 < 0)
        {
LABEL_523:
          __break(1u);
          goto LABEL_524;
        }

        v280 = v470;
        v290 = (v283 + 48);
        do
        {
          v377 = v290[-1];
          v359 = *v290;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v280 + 16) + 1, 1);
            v280 = v470;
          }

          v292 = *(v280 + 16);
          v291 = *(v280 + 24);
          if (v292 >= v291 >> 1)
          {
            sub_188CCF904((v291 > 1), v292 + 1, 1);
            v280 = v470;
          }

          *(v280 + 16) = v292 + 1;
          v293 = (v280 + 32 * v292);
          v293[2] = vmulq_n_f64(v377, v380);
          v293[3] = vmulq_n_f64(v359, v380);
          v290 += 2;
          --v289;
        }

        while (v289);
      }

      else
      {
        v280 = sub_18914A4BC(0);
      }
    }

    else
    {
      v280 = 0;
    }

    v295 = sub_18914A510(v228, v280);

    if (v295)
    {
      v296 = sub_188D7F314(v295);
      if (v296)
      {
        v297 = v296;
        v470 = MEMORY[0x1E69E7CC0];
        sub_18914A444(v296);
        if (v297 < 0)
        {
LABEL_522:
          __break(1u);
          goto LABEL_523;
        }

        v298 = v470;
        v299 = (v295 + 48);
        do
        {
          v378 = *v299;
          v392 = v299[-1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_188CCF904(0, *(v298 + 16) + 1, 1);
            v298 = v470;
          }

          v301 = *(v298 + 16);
          v300 = *(v298 + 24);
          if (v301 >= v300 >> 1)
          {
            sub_188CCF904((v300 > 1), v301 + 1, 1);
            v298 = v470;
          }

          *(v298 + 16) = v301 + 1;
          v302 = (v298 + 32 * v301);
          v302[2] = vmulq_n_f64(v392, v402);
          v302[3] = vmulq_n_f64(v378, v402);
          v299 += 2;
          --v297;
        }

        while (v297);
      }

      else
      {
        v298 = sub_18914A4BC(0);
      }

      v470 = v298;
      if (v10)
      {
        goto LABEL_429;
      }
    }

    else
    {
      v470 = 0;
      if (v10)
      {
LABEL_429:
        v305 = sub_188D7F314(v10);
        if (v305)
        {
          v306 = v305;
          v464 = MEMORY[0x1E69E7CC0];
          sub_18914A444(v305);
          if (v306 < 0)
          {
LABEL_524:
            __break(1u);
            goto LABEL_525;
          }

          v304 = v464;
          v307 = (v10 + 48);
          do
          {
            v379 = *v307;
            v393 = v307[-1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v304 + 16) + 1, 1);
              v304 = v464;
            }

            v309 = *(v304 + 16);
            v308 = *(v304 + 24);
            if (v309 >= v308 >> 1)
            {
              sub_188CCF904((v308 > 1), v309 + 1, 1);
              v304 = v464;
            }

            *(v304 + 16) = v309 + 1;
            v310 = (v304 + 32 * v309);
            v310[2] = vmulq_n_f64(v393, v416);
            v310[3] = vmulq_n_f64(v379, v416);
            v307 += 2;
            --v306;
          }

          while (v306);
        }

        else
        {
          v304 = sub_18914A4BC(0);
        }

        v311 = sub_188D7F314(v10);
        if (v311)
        {
          v312 = v311;
          v465 = MEMORY[0x1E69E7CC0];
          sub_18914A444(v311);
          if (v312 < 0)
          {
LABEL_525:
            __break(1u);
            goto LABEL_526;
          }

          v303 = v465;
          v313 = (v10 + 48);
          do
          {
            v430 = v313[-1];
            v394 = *v313;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_188CCF904(0, *(v303 + 16) + 1, 1);
              v303 = v465;
            }

            v314 = v448;
            v316 = *(v303 + 16);
            v315 = *(v303 + 24);
            if (v316 >= v315 >> 1)
            {
              sub_188CCF904((v315 > 1), v316 + 1, 1);
              v314 = v448;
              v303 = v465;
            }

            *(v303 + 16) = v316 + 1;
            v317 = (v303 + 32 * v316);
            v317[2] = vmulq_n_f64(v430, v314);
            v317[3] = vmulq_n_f64(v394, v314);
            v313 += 2;
            --v312;
          }

          while (v312);
        }

        else
        {
          v303 = sub_18914A4BC(0);
        }

LABEL_449:
        v318 = sub_18914A510(v303, v350);

        if (v318)
        {
          v319 = sub_188D7F314(v318);
          if (v319)
          {
            v320 = v319;
            v466 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v319);
            if (v320 < 0)
            {
LABEL_526:
              __break(1u);
              goto LABEL_527;
            }

            v321 = v466;
            v322 = (v318 + 48);
            do
            {
              v454 = v322[-1];
              v431 = *v322;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v321 + 16) + 1, 1);
                v321 = v466;
              }

              v324 = *(v321 + 16);
              v323 = *(v321 + 24);
              if (v324 >= v323 >> 1)
              {
                sub_188CCF904((v323 > 1), v324 + 1, 1);
                v321 = v466;
              }

              *(v321 + 16) = v324 + 1;
              v325 = (v321 + 32 * v324);
              v325[2] = vmulq_n_f64(v454, v410);
              v325[3] = vmulq_n_f64(v431, v410);
              v322 += 2;
              --v320;
            }

            while (v320);
          }

          else
          {
            v321 = sub_18914A4BC(0);
          }

          v327 = sub_188D7F314(v321);
          if (v327)
          {
            v328 = v327;
            v467 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v327);
            if (v328 < 0)
            {
LABEL_527:
              __break(1u);
              goto LABEL_528;
            }

            v326 = v467;
            v329 = (v321 + 48);
            do
            {
              v455 = v329[-1];
              v432 = *v329;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v326 + 16) + 1, 1);
                v326 = v467;
              }

              v331 = *(v326 + 16);
              v330 = *(v326 + 24);
              if (v331 >= v330 >> 1)
              {
                sub_188CCF904((v330 > 1), v331 + 1, 1);
                v326 = v467;
              }

              *(v326 + 16) = v331 + 1;
              v332 = (v326 + 32 * v331);
              v332[2] = vmulq_n_f64(v455, v444);
              v332[3] = vmulq_n_f64(v432, v444);
              v329 += 2;
              --v328;
            }

            while (v328);
          }

          else
          {
            v326 = sub_18914A4BC(0);
          }
        }

        else
        {
          v326 = 0;
        }

        v333 = sub_18914A510(v304, v326);

        if (v333)
        {
          v334 = sub_188D7F314(v333);
          if (v334)
          {
            v335 = v334;
            v468 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v334);
            if (v335 < 0)
            {
LABEL_528:
              __break(1u);
              goto LABEL_529;
            }

            v336 = v468;
            v337 = (v333 + 48);
            do
            {
              v456 = v337[-1];
              v446 = *v337;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_188CCF904(0, *(v336 + 16) + 1, 1);
                v336 = v468;
              }

              v339 = *(v336 + 16);
              v338 = *(v336 + 24);
              if (v339 >= v338 >> 1)
              {
                sub_188CCF904((v338 > 1), v339 + 1, 1);
                v336 = v468;
              }

              *(v336 + 16) = v339 + 1;
              v340 = (v336 + 32 * v339);
              v340[2] = vmulq_n_f64(v456, v360);
              v340[3] = vmulq_n_f64(v446, v360);
              v337 += 2;
              --v335;
            }

            while (v335);
          }

          else
          {
            v336 = sub_18914A4BC(0);
          }

          v156 = sub_188D7F314(v336);
          if (v156)
          {
            v341 = v156;
            v469 = MEMORY[0x1E69E7CC0];
            sub_18914A444(v156);
            if ((v341 & 0x8000000000000000) == 0)
            {
              v158 = v469;
              v342 = (v336 + 48);
              do
              {
                v457 = v342[-1];
                v447 = *v342;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_188CCF904(0, *(v158 + 16) + 1, 1);
                  v158 = v469;
                }

                v344 = *(v158 + 16);
                v343 = *(v158 + 24);
                if (v344 >= v343 >> 1)
                {
                  sub_188CCF904((v343 > 1), v344 + 1, 1);
                  v158 = v469;
                }

                *(v158 + 16) = v344 + 1;
                v345 = (v158 + 32 * v344);
                v345[2] = vmulq_n_f64(v457, v402);
                v345[3] = vmulq_n_f64(v447, v402);
                v342 += 2;
                --v341;
              }

              while (v341);
              goto LABEL_494;
            }

LABEL_529:
            __break(1u);
            return;
          }

          goto LABEL_493;
        }

        goto LABEL_482;
      }
    }

    v303 = 0;
    v304 = 0;
    goto LABEL_449;
  }

  if (v9)
  {
    v31 = *(v9 + 16);
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v31);
      v32 = v470;
      v33 = (v10 + 48);
      do
      {
        v417 = *v33;
        v435 = v33[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v32 + 16) + 1, 1);
          v32 = v470;
        }

        v34 = a3 * 0.5;
        v36 = *(v32 + 16);
        v35 = *(v32 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_188CCF904((v35 > 1), v36 + 1, 1);
          v34 = a3 * 0.5;
          v32 = v470;
        }

        *(v32 + 16) = v36 + 1;
        v37 = (v32 + 32 * v36);
        v37[2] = vmulq_n_f64(v435, v34);
        v37[3] = vmulq_n_f64(v417, v34);
        v33 += 2;
        --v31;
      }

      while (v31);
    }
  }

  else
  {
    v32 = 0;
  }

  v170 = sub_18914A510(v32, v350);

  if (v170)
  {
    v171 = *(v170 + 16);
    if (v171)
    {
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v171);
      v172 = v470;
      v173 = (v170 + 48);
      do
      {
        v422 = *v173;
        v442 = v173[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v172 + 16) + 1, 1);
          v172 = v470;
        }

        v175 = *(v172 + 16);
        v174 = *(v172 + 24);
        if (v175 >= v174 >> 1)
        {
          sub_188CCF904((v174 > 1), v175 + 1, 1);
          v172 = v470;
        }

        *(v172 + 16) = v175 + 1;
        v176 = (v172 + 32 * v175);
        v176[2] = vmulq_n_f64(v442, a4);
        v176[3] = vmulq_n_f64(v422, a4);
        v173 += 2;
        --v171;
      }

      while (v171);
    }

    else
    {

      v172 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v172 = 0;
  }

  v185 = sub_18914A510(v10, v172);

  v445 = exp(-(v448 * a4));
  if (!v185)
  {
    v60 = 0;
    if (v10)
    {
      goto LABEL_254;
    }

    goto LABEL_264;
  }

  v186 = *(v185 + 16);
  if (!v186)
  {

    v60 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      goto LABEL_254;
    }

LABEL_264:
    v192 = 0;
    goto LABEL_265;
  }

  v470 = MEMORY[0x1E69E7CC0];
  sub_18914A444(v186);
  v60 = v470;
  v187 = (v185 + 48);
  do
  {
    v411 = *v187;
    v423 = v187[-1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_188CCF904(0, *(v60 + 16) + 1, 1);
      v60 = v470;
    }

    v189 = *(v60 + 16);
    v188 = *(v60 + 24);
    if (v189 >= v188 >> 1)
    {
      sub_188CCF904((v188 > 1), v189 + 1, 1);
      v60 = v470;
    }

    *(v60 + 16) = v189 + 1;
    v190 = (v60 + 32 * v189);
    v190[2] = vmulq_n_f64(v423, v445);
    v190[3] = vmulq_n_f64(v411, v445);
    v187 += 2;
    --v186;
  }

  while (v186);

  if (!v10)
  {
    goto LABEL_264;
  }

LABEL_254:
  v191 = sub_188D7F314(v10);
  v192 = MEMORY[0x1E69E7CC0];
  if (v191)
  {
    v193 = v191;
    v470 = MEMORY[0x1E69E7CC0];
    sub_18914A444(v191);
    if (v193 < 0)
    {
LABEL_510:
      __break(1u);
      goto LABEL_511;
    }

    v192 = v470;
    v194 = (v10 + 48);
    do
    {
      v412 = *v194;
      v424 = v194[-1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v192 + 16) + 1, 1);
        v192 = v470;
      }

      v195 = a3 * 0.5;
      v197 = *(v192 + 16);
      v196 = *(v192 + 24);
      if (v197 >= v196 >> 1)
      {
        sub_188CCF904((v196 > 1), v197 + 1, 1);
        v195 = a3 * 0.5;
        v192 = v470;
      }

      *(v192 + 16) = v197 + 1;
      v198 = (v192 + 32 * v197);
      v198[2] = vmulq_n_f64(v424, v195);
      v198[3] = vmulq_n_f64(v412, v195);
      v194 += 2;
      --v193;
    }

    while (v193);
  }

LABEL_265:
  v199 = sub_18914A510(v192, v350);

  if (v199)
  {
    v200 = sub_188D7F314(v199);
    if (v200)
    {
      v201 = v200;
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v200);
      if (v201 < 0)
      {
LABEL_512:
        __break(1u);
        goto LABEL_513;
      }

      v202 = v470;
      v203 = (v199 + 48);
      do
      {
        v413 = *v203;
        v425 = v203[-1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v202 + 16) + 1, 1);
          v202 = v470;
        }

        v205 = *(v202 + 16);
        v204 = *(v202 + 24);
        if (v205 >= v204 >> 1)
        {
          sub_188CCF904((v204 > 1), v205 + 1, 1);
          v202 = v470;
        }

        *(v202 + 16) = v205 + 1;
        v206 = (v202 + 32 * v205);
        v206[2] = vmulq_n_f64(v425, v445);
        v206[3] = vmulq_n_f64(v413, v445);
        v203 += 2;
        --v201;
      }

      while (v201);
    }

    else
    {
      v202 = sub_18914A4BC(0);
    }

    if (v10)
    {
      goto LABEL_314;
    }

LABEL_276:
    v207 = 0;
    goto LABEL_334;
  }

  v202 = 0;
  if (!v10)
  {
    goto LABEL_276;
  }

LABEL_314:
  v229 = sub_188D7F314(v10);
  if (v229)
  {
    v230 = v229;
    v470 = MEMORY[0x1E69E7CC0];
    sub_18914A444(v229);
    if (v230 < 0)
    {
LABEL_514:
      __break(1u);
      goto LABEL_515;
    }

    v207 = v470;
    v231 = (v10 + 48);
    do
    {
      v414 = *v231;
      v426 = v231[-1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_188CCF904(0, *(v207 + 16) + 1, 1);
        v207 = v470;
      }

      v232 = a3 * 0.5;
      v234 = *(v207 + 16);
      v233 = *(v207 + 24);
      if (v234 >= v233 >> 1)
      {
        sub_188CCF904((v233 > 1), v234 + 1, 1);
        v232 = a3 * 0.5;
        v207 = v470;
      }

      *(v207 + 16) = v234 + 1;
      v235 = (v207 + 32 * v234);
      v235[2] = vmulq_n_f64(v426, v232);
      v235[3] = vmulq_n_f64(v414, v232);
      v231 += 2;
      --v230;
    }

    while (v230);
  }

  else
  {
    v207 = sub_18914A4BC(0);
  }

LABEL_334:
  v242 = sub_18914A510(v207, v350);

  if (v242)
  {
    v243 = sub_188D7F314(v242);
    if (v243)
    {
      v244 = v243;
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v243);
      if (v244 < 0)
      {
LABEL_516:
        __break(1u);
        goto LABEL_517;
      }

      v245 = v470;
      v246 = (v242 + 48);
      do
      {
        v451 = v246[-1];
        v427 = *v246;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v245 + 16) + 1, 1);
          v245 = v470;
        }

        v248 = *(v245 + 16);
        v247 = *(v245 + 24);
        if (v248 >= v247 >> 1)
        {
          sub_188CCF904((v247 > 1), v248 + 1, 1);
          v245 = v470;
        }

        *(v245 + 16) = v248 + 1;
        v249 = (v245 + 32 * v248);
        v249[2] = vmulq_n_f64(v451, a4);
        v249[3] = vmulq_n_f64(v427, a4);
        v246 += 2;
        --v244;
      }

      while (v244);
    }

    else
    {
      v245 = sub_18914A4BC(0);
    }
  }

  else
  {
    v245 = 0;
  }

  v257 = sub_18914A510(v10, v245);

  if (v257)
  {
    v258 = sub_188D7F314(v257);
    if (v258)
    {
      v259 = v258;
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v258);
      if (v259 < 0)
      {
LABEL_518:
        __break(1u);
        goto LABEL_519;
      }

      v260 = v470;
      v261 = (v257 + 48);
      do
      {
        v452 = v261[-1];
        v428 = *v261;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v260 + 16) + 1, 1);
          v260 = v470;
        }

        v263 = *(v260 + 16);
        v262 = *(v260 + 24);
        if (v263 >= v262 >> 1)
        {
          sub_188CCF904((v262 > 1), v263 + 1, 1);
          v260 = v470;
        }

        *(v260 + 16) = v263 + 1;
        v264 = (v260 + 32 * v263);
        v264[2] = vmulq_n_f64(v452, v360);
        v264[3] = vmulq_n_f64(v428, v360);
        v261 += 2;
        --v259;
      }

      while (v259);
    }

    else
    {
      v260 = sub_18914A4BC(0);
    }

    v266 = sub_188D7F314(v260);
    if (v266)
    {
      v267 = v266;
      v470 = MEMORY[0x1E69E7CC0];
      sub_18914A444(v266);
      if (v267 < 0)
      {
LABEL_521:
        __break(1u);
        goto LABEL_522;
      }

      v265 = v470;
      v268 = (v260 + 48);
      do
      {
        v453 = v268[-1];
        v429 = *v268;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_188CCF904(0, *(v265 + 16) + 1, 1);
          v265 = v470;
        }

        v270 = *(v265 + 16);
        v269 = *(v265 + 24);
        if (v270 >= v269 >> 1)
        {
          sub_188CCF904((v269 > 1), v270 + 1, 1);
          v265 = v470;
        }

        *(v265 + 16) = v270 + 1;
        v271 = (v265 + 32 * v270);
        v271[2] = vmulq_n_f64(v453, v445);
        v271[3] = vmulq_n_f64(v429, v445);
        v268 += 2;
        --v267;
      }

      while (v267);
    }

    else
    {
      v265 = sub_18914A4BC(0);
    }
  }

  else
  {
    v265 = 0;
  }

  v294 = sub_18914A510(v202, v265);

  v470 = v294;
LABEL_496:
  v346 = sub_18914A510(v60, v348);

  v347 = v470;
  *v349 = v346;
  v349[1] = v347;
}

void sub_188EEC36C(uint64_t a1, double a2, long double a3, double a4)
{
  v10 = *v4;
  if (sub_188BD69E4(a1, *v4, 0.0) & 1) != 0 && (sub_188BD69E4(MEMORY[0x1E69E7CC0], v4[1], 0.0))
  {
    return;
  }

  sub_188D7EBC0(v10, a1);
  v12 = v11;
  v13 = v4[1];
  v14 = sqrt(a2);
  v15 = a3 * 0.5;
  v354 = a3 * 0.5;
  if (a3 * 0.5 >= v14)
  {
    if (v14 >= v15)
    {
      v18 = *(v11 + 16);

      v20 = v12;
      if (!v18)
      {
        goto LABEL_149;
      }

      v20 = v12;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_19:
        if (v18 > *(v20 + 2))
        {
          __break(1u);
          goto LABEL_589;
        }

        if (v18 > 3)
        {
          v21 = v18 & 0x7FFFFFFFFFFFFFFCLL;
          v95 = (v20 + 48);
          v96 = v18 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v97 = vmulq_n_f64(*v95, v354);
            v95[-1] = vmulq_n_f64(v95[-1], v354);
            *v95 = v97;
            v95 += 2;
            v96 -= 4;
          }

          while (v96);
          if (v18 == v21)
          {
LABEL_149:
            sub_188D85564(v20, v13);
            v5 = v100;

            v18 = *(v5 + 2);
            if (!v18)
            {
              v93 = v5;
              goto LABEL_161;
            }

            v93 = v5;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_151:
              if (v18 > *(v93 + 16))
              {
                __break(1u);
LABEL_591:
                v93 = sub_188D75E50(v20);
LABEL_337:
                if (v18 <= *(v93 + 16))
                {
                  if (v18 > 3)
                  {
                    v221 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                    v222 = (v93 + 48);
                    v223 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v224 = vmulq_n_f64(*v222, v352);
                      v222[-1] = vmulq_n_f64(v222[-1], v352);
                      *v222 = v224;
                      v222 += 2;
                      v223 -= 4;
                    }

                    while (v223);
                    if (v18 == v221)
                    {
LABEL_346:

                      v18 = *(v93 + 16);
                      v349 = sinh(a3);
                      if (!v18)
                      {
                        v20 = v93;
                        goto LABEL_358;
                      }

                      v20 = v93;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
LABEL_348:
                        if (v18 > *(v20 + 2))
                        {
                          __break(1u);
                          goto LABEL_632;
                        }

                        if (v18 > 3)
                        {
                          v227 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                          v228 = (v20 + 48);
                          v229 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                          do
                          {
                            v230 = vmulq_n_f64(*v228, v349);
                            v228[-1] = vmulq_n_f64(v228[-1], v349);
                            *v228 = v230;
                            v228 += 2;
                            v229 -= 4;
                          }

                          while (v229);
                          if (v18 == v227)
                          {
                            goto LABEL_357;
                          }
                        }

                        else
                        {
                          v227 = 0;
                        }

                        v231 = v18 - v227;
                        v232 = &v20[8 * v227 + 32];
                        do
                        {
                          *v232 = v349 * *v232;
                          ++v232;
                          --v231;
                        }

                        while (v231);
LABEL_357:

LABEL_358:
                        sub_188D85564(v5, v20);
                        v93 = v233;

                        a4 = exp(-(v354 * a4));
                        v18 = *(v93 + 16);
                        if (!v18)
                        {
                          v5 = v93;
                          goto LABEL_370;
                        }

                        v5 = v93;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          goto LABEL_360;
                        }

                        goto LABEL_597;
                      }

LABEL_630:
                      v20 = sub_188D75E50(v93);
                      goto LABEL_348;
                    }
                  }

                  else
                  {
                    v221 = 0;
                  }

                  v225 = v18 - v221;
                  v226 = (v93 + 8 * v221 + 32);
                  do
                  {
                    *v226 = v352 * *v226;
                    ++v226;
                    --v225;
                  }

                  while (v225);
                  goto LABEL_346;
                }

                __break(1u);
                goto LABEL_593;
              }

              if (v18 > 3)
              {
                v101 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                v102 = (v93 + 48);
                v103 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v104 = vmulq_n_f64(*v102, a4);
                  v102[-1] = vmulq_n_f64(v102[-1], a4);
                  *v102 = v104;
                  v102 += 2;
                  v103 -= 4;
                }

                while (v103);
                if (v18 == v101)
                {
                  goto LABEL_160;
                }
              }

              else
              {
                v101 = 0;
              }

              v105 = v18 - v101;
              v106 = (v93 + 8 * v101 + 32);
              do
              {
                *v106 = *v106 * a4;
                ++v106;
                --v105;
              }

              while (v105);
LABEL_160:

LABEL_161:
              sub_188D85564(v12, v93);
              v20 = v107;

              v352 = exp(-(v354 * a4));
              v18 = *(v20 + 2);
              if (!v18)
              {
                v5 = v20;
                goto LABEL_173;
              }

              v5 = v20;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_163:
                if (v18 > *(v5 + 2))
                {
                  __break(1u);
                  goto LABEL_595;
                }

                if (v18 > 3)
                {
                  v108 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                  v109 = (v5 + 48);
                  v110 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v111 = vmulq_n_f64(*v109, v352);
                    v109[-1] = vmulq_n_f64(v109[-1], v352);
                    *v109 = v111;
                    v109 += 2;
                    v110 -= 4;
                  }

                  while (v110);
                  if (v18 == v108)
                  {
                    goto LABEL_172;
                  }
                }

                else
                {
                  v108 = 0;
                }

                v112 = v18 - v108;
                v113 = &v5[8 * v108 + 32];
                do
                {
                  *v113 = v352 * *v113;
                  ++v113;
                  --v112;
                }

                while (v112);
LABEL_172:

LABEL_173:
                v18 = *(v12 + 16);

                v114 = v12;
                if (!v18)
                {
                  goto LABEL_183;
                }

                v114 = v12;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
LABEL_175:
                  if (v18 > *(v114 + 2))
                  {
                    __break(1u);
LABEL_597:
                    v5 = sub_188D75E50(v93);
LABEL_360:
                    if (v18 <= *(v5 + 2))
                    {
                      if (v18 > 3)
                      {
                        v234 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                        v235 = (v5 + 48);
                        v236 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v237 = vmulq_n_f64(*v235, a4);
                          v235[-1] = vmulq_n_f64(v235[-1], a4);
                          *v235 = v237;
                          v235 += 2;
                          v236 -= 4;
                        }

                        while (v236);
                        if (v18 == v234)
                        {
                          goto LABEL_369;
                        }
                      }

                      else
                      {
                        v234 = 0;
                      }

                      v238 = v18 - v234;
                      v239 = &v5[8 * v234 + 32];
                      do
                      {
                        *v239 = a4 * *v239;
                        ++v239;
                        --v238;
                      }

                      while (v238);
LABEL_369:

LABEL_370:
                      v18 = *(v12 + 16);

                      v10 = v12;
                      if (!v18)
                      {
                        goto LABEL_386;
                      }

                      v93 = v12;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        goto LABEL_372;
                      }

                      goto LABEL_601;
                    }

                    __break(1u);
                    goto LABEL_599;
                  }

                  if (v18 > 3)
                  {
                    v115 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                    v116 = (v114 + 48);
                    v117 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v118 = vmulq_n_f64(*v116, v354);
                      v116[-1] = vmulq_n_f64(v116[-1], v354);
                      *v116 = v118;
                      v116 += 2;
                      v117 -= 4;
                    }

                    while (v117);
                    if (v18 == v115)
                    {
LABEL_183:
                      sub_188D85564(v114, v13);
                      v93 = v121;

                      v18 = *(v93 + 16);
                      if (!v18)
                      {
                        v10 = v93;
                        goto LABEL_195;
                      }

                      v10 = v93;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
LABEL_185:
                        if (v18 > *(v10 + 16))
                        {
                          __break(1u);
LABEL_601:
                          v93 = sub_188D75E50(v12);
LABEL_372:
                          if (v18 <= *(v93 + 16))
                          {
                            if (v18 > 3)
                            {
                              v240 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                              v241 = (v93 + 48);
                              v242 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                              do
                              {
                                v243 = vmulq_n_f64(*v241, v349);
                                v241[-1] = vmulq_n_f64(v241[-1], v349);
                                *v241 = v243;
                                v241 += 2;
                                v242 -= 4;
                              }

                              while (v242);
                              if (v18 == v240)
                              {
LABEL_380:
                                v18 = *(v93 + 16);
                                if (!v18)
                                {
                                  v10 = v93;
                                  v18 = *(v12 + 16);
                                  if (v18)
                                  {
                                    goto LABEL_393;
                                  }

                                  goto LABEL_386;
                                }

                                v10 = v93;
                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
LABEL_382:
                                  if (v18 > *(v10 + 16))
                                  {
                                    __break(1u);
LABEL_634:
                                    v247 = sub_188D75E50(v12);
LABEL_394:
                                    if (v18 > *(v247 + 2))
                                    {
                                      __break(1u);
                                      goto LABEL_636;
                                    }

                                    if (v18 > 3)
                                    {
                                      v253 = v18 & 0xFFFFFFFFFFFFFFFCLL;
                                      v254 = (v247 + 48);
                                      v255 = v18 & 0xFFFFFFFFFFFFFFFCLL;
                                      do
                                      {
                                        v256 = vmulq_n_f64(*v254, v354);
                                        v254[-1] = vmulq_n_f64(v254[-1], v354);
                                        *v254 = v256;
                                        v254 += 2;
                                        v255 -= 4;
                                      }

                                      while (v255);
                                      if (v18 == v253)
                                      {
LABEL_402:
                                        sub_188D85564(v247, v13);
                                        v93 = v259;

                                        v18 = *(v93 + 16);
                                        if (!v18)
                                        {
                                          goto LABEL_445;
                                        }

                                        v6 = v93;
                                        if (swift_isUniquelyReferenced_nonNull_native())
                                        {
                                          goto LABEL_404;
                                        }

                                        goto LABEL_607;
                                      }
                                    }

                                    else
                                    {
                                      v253 = 0;
                                    }

                                    v257 = v18 - v253;
                                    v258 = 8 * v253 + 32;
                                    do
                                    {
                                      *&v247[v258] = v354 * *&v247[v258];
                                      v258 += 8;
                                      --v257;
                                    }

                                    while (v257);
                                    goto LABEL_402;
                                  }

                                  if (v18 > 3)
                                  {
                                    v246 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                    v248 = (v10 + 48);
                                    v249 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                    do
                                    {
                                      v250 = vmulq_n_f64(*v248, v350);
                                      v248[-1] = vmulq_n_f64(v248[-1], v350);
                                      *v248 = v250;
                                      v248 += 2;
                                      v249 -= 4;
                                    }

                                    while (v249);
                                    if (v18 == v246)
                                    {
LABEL_392:

                                      v18 = *(v12 + 16);
                                      if (v18)
                                      {
LABEL_393:

                                        v247 = v12;
                                        if (swift_isUniquelyReferenced_nonNull_native())
                                        {
                                          goto LABEL_394;
                                        }

                                        goto LABEL_634;
                                      }

LABEL_386:

                                      v247 = v12;
                                      goto LABEL_402;
                                    }
                                  }

                                  else
                                  {
                                    v246 = 0;
                                  }

                                  v251 = v18 - v246;
                                  v252 = (v10 + 8 * v246 + 32);
                                  do
                                  {
                                    *v252 = v350 * *v252;
                                    ++v252;
                                    --v251;
                                  }

                                  while (v251);
                                  goto LABEL_392;
                                }

LABEL_632:
                                v10 = sub_188D75E50(v93);
                                goto LABEL_382;
                              }
                            }

                            else
                            {
                              v240 = 0;
                            }

                            v244 = v18 - v240;
                            v245 = (v93 + 8 * v240 + 32);
                            do
                            {
                              *v245 = v349 * *v245;
                              ++v245;
                              --v244;
                            }

                            while (v244);
                            goto LABEL_380;
                          }

                          __break(1u);
                          goto LABEL_603;
                        }

                        if (v18 > 3)
                        {
                          v122 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                          v123 = (v10 + 48);
                          v124 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                          do
                          {
                            v125 = vmulq_n_f64(*v123, v352);
                            v123[-1] = vmulq_n_f64(v123[-1], v352);
                            *v123 = v125;
                            v123 += 2;
                            v124 -= 4;
                          }

                          while (v124);
                          if (v18 == v122)
                          {
                            goto LABEL_194;
                          }
                        }

                        else
                        {
                          v122 = 0;
                        }

                        v126 = v18 - v122;
                        v127 = (v10 + 8 * v122 + 32);
                        do
                        {
                          *v127 = v352 * *v127;
                          ++v127;
                          --v126;
                        }

                        while (v126);
LABEL_194:

LABEL_195:
                        v18 = *(v12 + 16);

                        v128 = v12;
                        if (!v18)
                        {
                          goto LABEL_205;
                        }

                        v128 = v12;
                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
LABEL_197:
                          if (v18 > *(v128 + 2))
                          {
                            __break(1u);
                            goto LABEL_605;
                          }

                          if (v18 > 3)
                          {
                            v129 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                            v130 = (v128 + 48);
                            v131 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                            do
                            {
                              v132 = vmulq_n_f64(*v130, v354);
                              v130[-1] = vmulq_n_f64(v130[-1], v354);
                              *v130 = v132;
                              v130 += 2;
                              v131 -= 4;
                            }

                            while (v131);
                            if (v18 == v129)
                            {
LABEL_205:
                              sub_188D85564(v128, v13);
                              v93 = v135;

                              v18 = *(v93 + 16);
                              if (!v18)
                              {
                                v136 = v93;
                                goto LABEL_217;
                              }

                              v136 = v93;
                              if (swift_isUniquelyReferenced_nonNull_native())
                              {
LABEL_207:
                                if (v18 > *(v136 + 2))
                                {
                                  __break(1u);
LABEL_607:
                                  v6 = sub_188D75E50(v93);
LABEL_404:
                                  if (v18 <= *(v6 + 16))
                                  {
                                    if (v18 > 3)
                                    {
                                      v260 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                      v261 = (v6 + 48);
                                      v262 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                      do
                                      {
                                        v263 = vmulq_n_f64(*v261, v352);
                                        v261[-1] = vmulq_n_f64(v261[-1], v352);
                                        *v261 = v263;
                                        v261 += 2;
                                        v262 -= 4;
                                      }

                                      while (v262);
                                      if (v18 == v260)
                                      {
LABEL_412:

                                        v93 = *(v6 + 16);
                                        if (!v93)
                                        {
                                          v93 = v6;
                                          goto LABEL_445;
                                        }

                                        v144 = v6;
                                        if (swift_isUniquelyReferenced_nonNull_native())
                                        {
                                          v266 = *(v6 + 16);
                                          if (v266)
                                          {
                                            goto LABEL_415;
                                          }

LABEL_637:
                                          __break(1u);
LABEL_638:
                                          v93 = sub_188D75E50(v144);
LABEL_229:
                                          if (v18 <= *(v93 + 16))
                                          {
                                            if (v18 > 3)
                                            {
                                              v152 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                              v268 = (v93 + 48);
                                              v269 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                              do
                                              {
                                                v270 = vmulq_n_f64(*v268, v352);
                                                v268[-1] = vmulq_n_f64(v268[-1], v352);
                                                *v268 = v270;
                                                v268 += 2;
                                                v269 -= 4;
                                              }

                                              while (v269);
                                              if (v18 == v152)
                                              {
                                                goto LABEL_536;
                                              }
                                            }

                                            else
                                            {
                                              v152 = 0;
                                            }

                                            v271 = v18 - v152;
                                            v272 = (v93 + 8 * v152 + 32);
                                            do
                                            {
                                              *v272 = v352 * *v272;
                                              ++v272;
                                              --v271;
                                            }

                                            while (v271);
                                            goto LABEL_536;
                                          }

                                          __break(1u);
                                          goto LABEL_640;
                                        }

LABEL_636:
                                        v144 = sub_188D75E50(v6);
                                        v266 = *(v144 + 2);
                                        if (v266)
                                        {
LABEL_415:
                                          if (v266 > v93 - 1)
                                          {
                                            if (swift_isUniquelyReferenced_nonNull_native())
                                            {
                                              goto LABEL_417;
                                            }

                                            goto LABEL_641;
                                          }

LABEL_640:
                                          __break(1u);
LABEL_641:
                                          v144 = sub_188D75E50(v144);
LABEL_417:
                                          if (v93 > 3)
                                          {
                                            v267 = v93 & 0x7FFFFFFFFFFFFFFCLL;
                                            v273 = (v144 + 48);
                                            v274 = v93 & 0x7FFFFFFFFFFFFFFCLL;
                                            do
                                            {
                                              v275 = vmulq_n_f64(*v273, v351);
                                              v273[-1] = vmulq_n_f64(v273[-1], v351);
                                              *v273 = v275;
                                              v273 += 2;
                                              v274 -= 4;
                                            }

                                            while (v274);
                                            if (v93 == v267)
                                            {
LABEL_431:

                                              v278 = *(v144 + 2);
                                              if (!v278)
                                              {
                                                v93 = v144;
                                                goto LABEL_445;
                                              }

                                              v93 = v144;
                                              if (swift_isUniquelyReferenced_nonNull_native())
                                              {
                                                v279 = *(v144 + 2);
                                                if (v279)
                                                {
                                                  goto LABEL_434;
                                                }
                                              }

                                              else
                                              {
                                                v93 = sub_188D75E50(v144);
                                                v279 = *(v93 + 16);
                                                if (v279)
                                                {
LABEL_434:
                                                  if (v279 > v278 - 1)
                                                  {
                                                    if (swift_isUniquelyReferenced_nonNull_native())
                                                    {
                                                      goto LABEL_436;
                                                    }

                                                    goto LABEL_658;
                                                  }

LABEL_657:
                                                  __break(1u);
LABEL_658:
                                                  v93 = sub_188D75E50(v93);
LABEL_436:
                                                  if (v278 > 3)
                                                  {
                                                    v280 = v278 & 0x7FFFFFFFFFFFFFFCLL;
                                                    v281 = (v93 + 48);
                                                    v282 = v278 & 0x7FFFFFFFFFFFFFFCLL;
                                                    do
                                                    {
                                                      v283 = vmulq_n_f64(*v281, v350);
                                                      v281[-1] = vmulq_n_f64(v281[-1], v350);
                                                      *v281 = v283;
                                                      v281 += 2;
                                                      v282 -= 4;
                                                    }

                                                    while (v282);
                                                    if (v278 == v280)
                                                    {
                                                      goto LABEL_444;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v280 = 0;
                                                  }

                                                  v284 = v278 - v280;
                                                  v285 = (v93 + 8 * v280 + 32);
                                                  do
                                                  {
                                                    *v285 = v350 * *v285;
                                                    ++v285;
                                                    --v284;
                                                  }

                                                  while (v284);
LABEL_444:

LABEL_445:
                                                  sub_188D85564(v10, v93);
                                                  v144 = v286;

                                                  v93 = *(v144 + 2);
                                                  if (!v93)
                                                  {
                                                    v10 = v144;
                                                    goto LABEL_459;
                                                  }

                                                  v10 = v144;
                                                  if (swift_isUniquelyReferenced_nonNull_native())
                                                  {
                                                    v287 = *(v144 + 2);
                                                    if (v287)
                                                    {
                                                      goto LABEL_448;
                                                    }

                                                    goto LABEL_612;
                                                  }

LABEL_611:
                                                  v10 = sub_188D75E50(v144);
                                                  v287 = *(v10 + 16);
                                                  if (v287)
                                                  {
LABEL_448:
                                                    if (v287 > v93 - 1)
                                                    {
                                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                                      {
                                                        goto LABEL_616;
                                                      }

                                                      while (1)
                                                      {
                                                        if (v93 > 3)
                                                        {
                                                          v288 = v93 & 0x7FFFFFFFFFFFFFFCLL;
                                                          v289 = (v10 + 48);
                                                          v290 = v93 & 0x7FFFFFFFFFFFFFFCLL;
                                                          do
                                                          {
                                                            v291 = vmulq_n_f64(*v289, a4);
                                                            v289[-1] = vmulq_n_f64(v289[-1], a4);
                                                            *v289 = v291;
                                                            v289 += 2;
                                                            v290 -= 4;
                                                          }

                                                          while (v290);
                                                          if (v93 == v288)
                                                          {
                                                            goto LABEL_458;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v288 = 0;
                                                        }

                                                        v292 = v93 - v288;
                                                        v293 = (v10 + 8 * v288 + 32);
                                                        do
                                                        {
                                                          *v293 = a4 * *v293;
                                                          ++v293;
                                                          --v292;
                                                        }

                                                        while (v292);
LABEL_458:

LABEL_459:
                                                        v93 = *(v12 + 16);

                                                        v294 = v12;
                                                        if (!v93)
                                                        {
                                                          goto LABEL_479;
                                                        }

                                                        v294 = v12;
                                                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                                        {
LABEL_614:
                                                          v294 = sub_188D75E50(v12);
                                                          v295 = *(v294 + 2);
                                                          if (!v295)
                                                          {
                                                            goto LABEL_615;
                                                          }

LABEL_462:
                                                          if (v295 <= v93 - 1)
                                                          {
                                                            __break(1u);
                                                          }

                                                          else if (swift_isUniquelyReferenced_nonNull_native())
                                                          {
                                                            goto LABEL_464;
                                                          }

                                                          v294 = sub_188D75E50(v294);
LABEL_464:
                                                          if (v93 <= 3)
                                                          {
                                                            v296 = 0;
                                                            goto LABEL_469;
                                                          }

                                                          v296 = v93 & 0x7FFFFFFFFFFFFFFCLL;
                                                          v297 = (v294 + 48);
                                                          v298 = v93 & 0x7FFFFFFFFFFFFFFCLL;
                                                          do
                                                          {
                                                            v299 = vmulq_n_f64(*v297, v351);
                                                            v297[-1] = vmulq_n_f64(v297[-1], v351);
                                                            *v297 = v299;
                                                            v297 += 2;
                                                            v298 -= 4;
                                                          }

                                                          while (v298);
                                                          if (v93 != v296)
                                                          {
LABEL_469:
                                                            v300 = v93 - v296;
                                                            v301 = &v294[8 * v296 + 32];
                                                            do
                                                            {
                                                              *v301 = v351 * *v301;
                                                              ++v301;
                                                              --v300;
                                                            }

                                                            while (v300);
                                                          }

                                                          v302 = *(v12 + 16);
                                                          if (!v302)
                                                          {
LABEL_479:

                                                            v303 = v12;
                                                            goto LABEL_485;
                                                          }

                                                          v303 = v12;
                                                          if (swift_isUniquelyReferenced_nonNull_native())
                                                          {
                                                            v304 = *(v12 + 16);
                                                            if (v304)
                                                            {
                                                              goto LABEL_474;
                                                            }

LABEL_643:
                                                            __break(1u);
                                                            goto LABEL_644;
                                                          }

                                                          v303 = sub_188D75E50(v12);
                                                          v304 = *(v303 + 2);
                                                          if (!v304)
                                                          {
                                                            goto LABEL_643;
                                                          }

LABEL_474:
                                                          if (v302 < 1)
                                                          {
LABEL_644:
                                                            __break(1u);
                                                          }

                                                          else if (v304 > v302 - 1)
                                                          {
                                                            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                                            {
                                                              goto LABEL_648;
                                                            }

                                                            while (v302 > 3)
                                                            {
                                                              v305 = v302 & 0x7FFFFFFFFFFFFFFCLL;
                                                              v306 = (v303 + 48);
                                                              v307 = v302 & 0x7FFFFFFFFFFFFFFCLL;
                                                              do
                                                              {
                                                                v308 = vmulq_n_f64(*v306, v354);
                                                                v306[-1] = vmulq_n_f64(v306[-1], v354);
                                                                *v306 = v308;
                                                                v306 += 2;
                                                                v307 -= 4;
                                                              }

                                                              while (v307);
                                                              if (v302 != v305)
                                                              {
                                                                goto LABEL_483;
                                                              }

LABEL_485:
                                                              sub_188D85564(v303, v13);
                                                              v302 = v311;

                                                              v312 = *(v302 + 16);
                                                              if (!v312)
                                                              {
                                                                goto LABEL_511;
                                                              }

                                                              v303 = v302;
                                                              if (swift_isUniquelyReferenced_nonNull_native())
                                                              {
                                                                v313 = *(v302 + 16);
                                                                if (!v313)
                                                                {
                                                                  goto LABEL_620;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v303 = sub_188D75E50(v302);
                                                                v313 = *(v303 + 2);
                                                                if (!v313)
                                                                {
LABEL_620:
                                                                  __break(1u);
                                                                  goto LABEL_621;
                                                                }
                                                              }

                                                              if (v313 > v312 - 1)
                                                              {
                                                                if (swift_isUniquelyReferenced_nonNull_native())
                                                                {
                                                                  goto LABEL_490;
                                                                }

                                                                goto LABEL_622;
                                                              }

LABEL_621:
                                                              __break(1u);
LABEL_622:
                                                              v303 = sub_188D75E50(v303);
LABEL_490:
                                                              if (v312 <= 3)
                                                              {
                                                                v314 = 0;
LABEL_495:
                                                                v318 = v312 - v314;
                                                                v319 = &v303[8 * v314 + 32];
                                                                do
                                                                {
                                                                  *v319 = v352 * *v319;
                                                                  ++v319;
                                                                  --v318;
                                                                }

                                                                while (v318);
                                                                goto LABEL_497;
                                                              }

                                                              v314 = v312 & 0x7FFFFFFFFFFFFFFCLL;
                                                              v315 = (v303 + 48);
                                                              v316 = v312 & 0x7FFFFFFFFFFFFFFCLL;
                                                              do
                                                              {
                                                                v317 = vmulq_n_f64(*v315, v352);
                                                                v315[-1] = vmulq_n_f64(v315[-1], v352);
                                                                *v315 = v317;
                                                                v315 += 2;
                                                                v316 -= 4;
                                                              }

                                                              while (v316);
                                                              if (v312 != v314)
                                                              {
                                                                goto LABEL_495;
                                                              }

LABEL_497:

                                                              v18 = *(v303 + 2);
                                                              if (!v18)
                                                              {
                                                                v302 = v303;
                                                                goto LABEL_511;
                                                              }

                                                              v302 = v303;
                                                              if (swift_isUniquelyReferenced_nonNull_native())
                                                              {
                                                                v320 = *(v303 + 2);
                                                                if (v320)
                                                                {
                                                                  goto LABEL_500;
                                                                }
                                                              }

                                                              else
                                                              {
LABEL_646:
                                                                v302 = sub_188D75E50(v303);
                                                                v320 = *(v302 + 16);
                                                                if (v320)
                                                                {
LABEL_500:
                                                                  if (v320 <= v18 - 1)
                                                                  {
                                                                    __break(1u);
                                                                  }

                                                                  else if (swift_isUniquelyReferenced_nonNull_native())
                                                                  {
                                                                    goto LABEL_502;
                                                                  }

                                                                  v302 = sub_188D75E50(v302);
LABEL_502:
                                                                  if (v18 <= 3)
                                                                  {
                                                                    v321 = 0;
                                                                    goto LABEL_508;
                                                                  }

                                                                  v321 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                                                  v322 = (v302 + 48);
                                                                  v323 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                                                  do
                                                                  {
                                                                    v324 = vmulq_n_f64(*v322, v349);
                                                                    v322[-1] = vmulq_n_f64(v322[-1], v349);
                                                                    *v322 = v324;
                                                                    v322 += 2;
                                                                    v323 -= 4;
                                                                  }

                                                                  while (v323);
                                                                  if (v18 != v321)
                                                                  {
LABEL_508:
                                                                    v325 = v18 - v321;
                                                                    v326 = (v302 + 8 * v321 + 32);
                                                                    do
                                                                    {
                                                                      *v326 = v349 * *v326;
                                                                      ++v326;
                                                                      --v325;
                                                                    }

                                                                    while (v325);
                                                                  }

LABEL_511:
                                                                  sub_188D85564(v294, v302);
                                                                  v93 = v327;

                                                                  v328 = *(v93 + 16);
                                                                  if (!v328)
                                                                  {
                                                                    goto LABEL_537;
                                                                  }

                                                                  v144 = v93;
                                                                  if (swift_isUniquelyReferenced_nonNull_native())
                                                                  {
                                                                    v329 = *(v93 + 16);
                                                                    if (v329)
                                                                    {
                                                                      goto LABEL_514;
                                                                    }

LABEL_624:
                                                                    __break(1u);
                                                                    goto LABEL_625;
                                                                  }

                                                                  v144 = sub_188D75E50(v93);
                                                                  v329 = *(v144 + 2);
                                                                  if (!v329)
                                                                  {
                                                                    goto LABEL_624;
                                                                  }

LABEL_514:
                                                                  if (v329 <= v328 - 1)
                                                                  {
LABEL_625:
                                                                    __break(1u);
                                                                  }

                                                                  else if (swift_isUniquelyReferenced_nonNull_native())
                                                                  {
                                                                    goto LABEL_516;
                                                                  }

                                                                  v144 = sub_188D75E50(v144);
LABEL_516:
                                                                  v330 = -v354;
                                                                  if (v328 <= 3)
                                                                  {
                                                                    v331 = 0;
                                                                    goto LABEL_521;
                                                                  }

                                                                  v331 = v328 & 0x7FFFFFFFFFFFFFFCLL;
                                                                  v332 = (v144 + 48);
                                                                  v333 = v328 & 0x7FFFFFFFFFFFFFFCLL;
                                                                  do
                                                                  {
                                                                    v334 = vmulq_n_f64(*v332, v330);
                                                                    v332[-1] = vmulq_n_f64(v332[-1], v330);
                                                                    *v332 = v334;
                                                                    v332 += 2;
                                                                    v333 -= 4;
                                                                  }

                                                                  while (v333);
                                                                  if (v328 != v331)
                                                                  {
LABEL_521:
                                                                    v335 = v328 - v331;
                                                                    v336 = &v144[8 * v331 + 32];
                                                                    do
                                                                    {
                                                                      *v336 = *v336 * v330;
                                                                      ++v336;
                                                                      --v335;
                                                                    }

                                                                    while (v335);
                                                                  }

                                                                  v337 = *(v144 + 2);
                                                                  if (v337)
                                                                  {

                                                                    v93 = v144;
                                                                    if (swift_isUniquelyReferenced_nonNull_native())
                                                                    {
                                                                      v338 = *(v144 + 2);
                                                                      if (v338)
                                                                      {
                                                                        goto LABEL_526;
                                                                      }

LABEL_652:
                                                                      __break(1u);
                                                                      goto LABEL_653;
                                                                    }

                                                                    v93 = sub_188D75E50(v144);
                                                                    v338 = *(v93 + 16);
                                                                    if (!v338)
                                                                    {
                                                                      goto LABEL_652;
                                                                    }

LABEL_526:
                                                                    if (v338 <= v337 - 1)
                                                                    {
LABEL_653:
                                                                      __break(1u);
                                                                    }

                                                                    else if (swift_isUniquelyReferenced_nonNull_native())
                                                                    {
                                                                      goto LABEL_528;
                                                                    }

                                                                    v93 = sub_188D75E50(v93);
LABEL_528:
                                                                    if (v337 > 3)
                                                                    {
                                                                      v339 = v337 & 0x7FFFFFFFFFFFFFFCLL;
                                                                      v340 = (v93 + 48);
                                                                      v341 = v337 & 0x7FFFFFFFFFFFFFFCLL;
                                                                      do
                                                                      {
                                                                        v342 = vmulq_n_f64(*v340, a4);
                                                                        v340[-1] = vmulq_n_f64(v340[-1], a4);
                                                                        *v340 = v342;
                                                                        v340 += 2;
                                                                        v341 -= 4;
                                                                      }

                                                                      while (v341);
                                                                      if (v337 == v339)
                                                                      {
                                                                        goto LABEL_536;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v339 = 0;
                                                                    }

                                                                    v343 = v337 - v339;
                                                                    v344 = (v93 + 8 * v339 + 32);
                                                                    do
                                                                    {
                                                                      *v344 = a4 * *v344;
                                                                      ++v344;
                                                                      --v343;
                                                                    }

                                                                    while (v343);
                                                                    goto LABEL_536;
                                                                  }

LABEL_530:
                                                                  v93 = v144;
                                                                  goto LABEL_537;
                                                                }
                                                              }

                                                              __break(1u);
LABEL_648:
                                                              v303 = sub_188D75E50(v303);
                                                            }

                                                            v305 = 0;
LABEL_483:
                                                            v309 = v302 - v305;
                                                            v310 = 8 * v305 + 32;
                                                            do
                                                            {
                                                              *&v303[v310] = v354 * *&v303[v310];
                                                              v310 += 8;
                                                              --v309;
                                                            }

                                                            while (v309);
                                                            goto LABEL_485;
                                                          }

                                                          __break(1u);
                                                          goto LABEL_646;
                                                        }

                                                        v295 = *(v12 + 16);
                                                        if (v295)
                                                        {
                                                          goto LABEL_462;
                                                        }

LABEL_615:
                                                        __break(1u);
LABEL_616:
                                                        v10 = sub_188D75E50(v10);
                                                      }
                                                    }

LABEL_613:
                                                    __break(1u);
                                                    goto LABEL_614;
                                                  }

LABEL_612:
                                                  __break(1u);
                                                  goto LABEL_613;
                                                }
                                              }

                                              __break(1u);
                                              goto LABEL_657;
                                            }
                                          }

                                          else
                                          {
                                            v267 = 0;
                                          }

                                          v276 = v93 - v267;
                                          v277 = &v144[8 * v267 + 32];
                                          do
                                          {
                                            *v277 = v351 * *v277;
                                            ++v277;
                                            --v276;
                                          }

                                          while (v276);
                                          goto LABEL_431;
                                        }

                                        goto LABEL_637;
                                      }
                                    }

                                    else
                                    {
                                      v260 = 0;
                                    }

                                    v264 = v18 - v260;
                                    v265 = (v6 + 8 * v260 + 32);
                                    do
                                    {
                                      *v265 = v352 * *v265;
                                      ++v265;
                                      --v264;
                                    }

                                    while (v264);
                                    goto LABEL_412;
                                  }

                                  __break(1u);
                                  goto LABEL_609;
                                }

                                if (v18 > 3)
                                {
                                  v137 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                  v138 = (v136 + 48);
                                  v139 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                  do
                                  {
                                    v140 = vmulq_n_f64(*v138, a4);
                                    v138[-1] = vmulq_n_f64(v138[-1], a4);
                                    *v138 = v140;
                                    v138 += 2;
                                    v139 -= 4;
                                  }

                                  while (v139);
                                  if (v18 == v137)
                                  {
                                    goto LABEL_216;
                                  }
                                }

                                else
                                {
                                  v137 = 0;
                                }

                                v141 = v18 - v137;
                                v142 = &v136[8 * v137 + 32];
                                do
                                {
                                  *v142 = *v142 * a4;
                                  ++v142;
                                  --v141;
                                }

                                while (v141);
LABEL_216:

LABEL_217:
                                sub_188D85564(v12, v136);
                                v93 = v143;

                                v18 = *(v93 + 16);
                                if (!v18)
                                {
                                  goto LABEL_537;
                                }

                                v144 = v93;
                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
LABEL_219:
                                  if (v18 > *(v144 + 2))
                                  {
                                    __break(1u);
                                    goto LABEL_611;
                                  }

                                  v145 = -v354;
                                  if (v18 > 3)
                                  {
                                    v146 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                    v147 = (v144 + 48);
                                    v148 = v18 & 0x7FFFFFFFFFFFFFFCLL;
                                    do
                                    {
                                      v149 = vmulq_n_f64(*v147, v145);
                                      v147[-1] = vmulq_n_f64(v147[-1], v145);
                                      *v147 = v149;
                                      v147 += 2;
                                      v148 -= 4;
                                    }

                                    while (v148);
                                    if (v18 == v146)
                                    {
LABEL_227:

                                      v18 = *(v144 + 2);
                                      if (!v18)
                                      {
                                        goto LABEL_530;
                                      }

                                      v93 = v144;
                                      if (swift_isUniquelyReferenced_nonNull_native())
                                      {
                                        goto LABEL_229;
                                      }

                                      goto LABEL_638;
                                    }
                                  }

                                  else
                                  {
                                    v146 = 0;
                                  }

                                  v150 = v18 - v146;
                                  v151 = &v144[8 * v146 + 32];
                                  do
                                  {
                                    *v151 = *v151 * v145;
                                    ++v151;
                                    --v150;
                                  }

                                  while (v150);
                                  goto LABEL_227;
                                }

LABEL_609:
                                v144 = sub_188D75E50(v93);
                                goto LABEL_219;
                              }

LABEL_605:
                              v136 = sub_188D75E50(v93);
                              goto LABEL_207;
                            }
                          }

                          else
                          {
                            v129 = 0;
                          }

                          v133 = v18 - v129;
                          v134 = 8 * v129 + 32;
                          do
                          {
                            *&v128[v134] = v354 * *&v128[v134];
                            v134 += 8;
                            --v133;
                          }

                          while (v133);
                          goto LABEL_205;
                        }

LABEL_603:
                        v128 = sub_188D75E50(v12);
                        goto LABEL_197;
                      }

LABEL_599:
                      v10 = sub_188D75E50(v93);
                      goto LABEL_185;
                    }
                  }

                  else
                  {
                    v115 = 0;
                  }

                  v119 = v18 - v115;
                  v120 = 8 * v115 + 32;
                  do
                  {
                    *&v114[v120] = v354 * *&v114[v120];
                    v120 += 8;
                    --v119;
                  }

                  while (v119);
                  goto LABEL_183;
                }

LABEL_595:
                v114 = sub_188D75E50(v12);
                goto LABEL_175;
              }

LABEL_593:
              v5 = sub_188D75E50(v20);
              goto LABEL_163;
            }

LABEL_589:
            v93 = sub_188D75E50(v5);
            goto LABEL_151;
          }
        }

        else
        {
          v21 = 0;
        }

        v98 = v18 - v21;
        v99 = 8 * v21 + 32;
        do
        {
          *&v20[v99] = v354 * *&v20[v99];
          v99 += 8;
          --v98;
        }

        while (v98);
        goto LABEL_149;
      }
    }

    else
    {
      v350 = sqrt(v15 * v15 - v14 * v14);
      a3 = v350 * a4;
      v351 = cosh(v350 * a4);
      v18 = *(v12 + 16);

      v5 = v12;
      if (!v18)
      {
        goto LABEL_143;
      }

      v5 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_188D75E50(v12);
      }

      if (v18 <= *(v5 + 2))
      {
        if (v18 > 3)
        {
          v19 = v18 & 0x7FFFFFFFFFFFFFFCLL;
          v88 = (v5 + 48);
          v89 = v18 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v90 = vmulq_n_f64(*v88, v351);
            v88[-1] = vmulq_n_f64(v88[-1], v351);
            *v88 = v90;
            v88 += 2;
            v89 -= 4;
          }

          while (v89);
          if (v18 == v19)
          {
LABEL_138:
            v18 = *(v12 + 16);
            if (v18)
            {

              v93 = v12;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_140;
              }

              goto LABEL_628;
            }

LABEL_143:

            v93 = v12;
            goto LABEL_335;
          }
        }

        else
        {
          v19 = 0;
        }

        v91 = v18 - v19;
        v92 = &v5[8 * v19 + 32];
        do
        {
          *v92 = v351 * *v92;
          ++v92;
          --v91;
        }

        while (v91);
        goto LABEL_138;
      }

      __break(1u);
    }

    v20 = sub_188D75E50(v12);
    goto LABEL_19;
  }

  v350 = sqrt(v14 * v14 - v15 * v15);
  a3 = v350 * a4;
  v351 = cos(v350 * a4);
  v16 = *(v12 + 16);

  v5 = v12;
  if (!v16)
  {
LABEL_33:

    v27 = v12;
    goto LABEL_39;
  }

  v5 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_188D75E50(v12);
  }

  if (v16 > *(v5 + 2))
  {
    __break(1u);
LABEL_540:
    v27 = sub_188D75E50(v10);
    goto LABEL_41;
  }

  if (v16 <= 3)
  {
    v17 = 0;
LABEL_25:
    v25 = v16 - v17;
    v26 = &v5[8 * v17 + 32];
    do
    {
      *v26 = v351 * *v26;
      ++v26;
      --v25;
    }

    while (v25);
    goto LABEL_27;
  }

  v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  v22 = (v5 + 48);
  v23 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v24 = vmulq_n_f64(*v22, v351);
    v22[-1] = vmulq_n_f64(v22[-1], v351);
    *v22 = v24;
    v22 += 2;
    v23 -= 4;
  }

  while (v23);
  if (v16 != v17)
  {
    goto LABEL_25;
  }

LABEL_27:
  v16 = *(v12 + 16);
  if (!v16)
  {
    goto LABEL_33;
  }

  v27 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_188D75E50(v12);
  }

  if (v16 > *(v27 + 16))
  {
    __break(1u);
LABEL_565:
    v10 = sub_188D75E50(v27);
    goto LABEL_52;
  }

  if (v16 <= 3)
  {
    v28 = 0;
LABEL_37:
    v32 = v16 - v28;
    v33 = 8 * v28 + 32;
    do
    {
      *(v27 + v33) = v354 * *(v27 + v33);
      v33 += 8;
      --v32;
    }

    while (v32);
    goto LABEL_39;
  }

  v28 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v29 = (v27 + 48);
  v30 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v31 = vmulq_n_f64(*v29, v354);
    v29[-1] = vmulq_n_f64(v29[-1], v354);
    *v29 = v31;
    v29 += 2;
    v30 -= 4;
  }

  while (v30);
  if (v16 != v28)
  {
    goto LABEL_37;
  }

LABEL_39:
  sub_188D85564(v27, v13);
  v10 = v34;

  v16 = *(v10 + 16);
  v352 = 1.0 / v350;
  if (!v16)
  {
    v349 = sin(a3);
    goto LABEL_62;
  }

  v27 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_540;
  }

LABEL_41:
  if (v16 > *(v27 + 16))
  {
    __break(1u);
LABEL_542:
    v5 = sub_188D75E50(v27);
    goto LABEL_64;
  }

  if (v16 <= 3)
  {
    v35 = 0;
LABEL_48:
    v39 = v16 - v35;
    v40 = (v27 + 8 * v35 + 32);
    do
    {
      *v40 = v352 * *v40;
      ++v40;
      --v39;
    }

    while (v39);
    goto LABEL_50;
  }

  v35 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  v36 = (v27 + 48);
  v37 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v38 = vmulq_n_f64(*v36, v352);
    v36[-1] = vmulq_n_f64(v36[-1], v352);
    *v36 = v38;
    v36 += 2;
    v37 -= 4;
  }

  while (v37);
  if (v16 != v35)
  {
    goto LABEL_48;
  }

LABEL_50:

  v16 = *(v27 + 16);
  v349 = sin(a3);
  if (!v16)
  {
    v10 = v27;
    goto LABEL_62;
  }

  v10 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_565;
  }

LABEL_52:
  if (v16 > *(v10 + 16))
  {
    __break(1u);
LABEL_567:
    v10 = sub_188D75E50(v27);
    goto LABEL_86;
  }

  if (v16 > 3)
  {
    v41 = v16 & 0x7FFFFFFFFFFFFFFCLL;
    v42 = (v10 + 48);
    v43 = v16 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v44 = vmulq_n_f64(*v42, v349);
      v42[-1] = vmulq_n_f64(v42[-1], v349);
      *v42 = v44;
      v42 += 2;
      v43 -= 4;
    }

    while (v43);
    if (v16 == v41)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v41 = 0;
  }

  v45 = v16 - v41;
  v46 = (v10 + 8 * v41 + 32);
  do
  {
    *v46 = v349 * *v46;
    ++v46;
    --v45;
  }

  while (v45);
LABEL_61:

LABEL_62:
  sub_188D85564(v5, v10);
  v27 = v47;

  a4 = exp(-(v354 * a4));
  v16 = *(v27 + 16);
  if (!v16)
  {
    v5 = v27;
    goto LABEL_74;
  }

  v5 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_542;
  }

LABEL_64:
  if (v16 > *(v5 + 2))
  {
    __break(1u);
LABEL_544:
    v27 = sub_188D75E50(v12);
    goto LABEL_76;
  }

  if (v16 > 3)
  {
    v48 = v16 & 0x7FFFFFFFFFFFFFFCLL;
    v49 = (v5 + 48);
    v50 = v16 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v51 = vmulq_n_f64(*v49, a4);
      v49[-1] = vmulq_n_f64(v49[-1], a4);
      *v49 = v51;
      v49 += 2;
      v50 -= 4;
    }

    while (v50);
    if (v16 == v48)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v48 = 0;
  }

  v52 = v16 - v48;
  v53 = &v5[8 * v48 + 32];
  do
  {
    *v53 = a4 * *v53;
    ++v53;
    --v52;
  }

  while (v52);
LABEL_73:

LABEL_74:
  v16 = *(v12 + 16);

  v10 = v12;
  if (!v16)
  {
    goto LABEL_90;
  }

  v27 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_544;
  }

LABEL_76:
  if (v16 > *(v27 + 16))
  {
    __break(1u);
LABEL_546:
    v62 = sub_188D75E50(v27);
    goto LABEL_108;
  }

  v54 = -v349;
  if (v16 <= 3)
  {
    v55 = 0;
LABEL_82:
    v59 = v16 - v55;
    v60 = (v27 + 8 * v55 + 32);
    do
    {
      *v60 = *v60 * v54;
      ++v60;
      --v59;
    }

    while (v59);
    goto LABEL_84;
  }

  v55 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  v56 = (v27 + 48);
  v57 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v58 = vmulq_n_f64(*v56, v54);
    v56[-1] = vmulq_n_f64(v56[-1], v54);
    *v56 = v58;
    v56 += 2;
    v57 -= 4;
  }

  while (v57);
  if (v16 != v55)
  {
    goto LABEL_82;
  }

LABEL_84:
  v16 = *(v27 + 16);
  if (!v16)
  {
    v10 = v27;
    v16 = *(v12 + 16);
    if (v16)
    {
      goto LABEL_97;
    }

    goto LABEL_90;
  }

  v10 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_567;
  }

LABEL_86:
  if (v16 <= *(v10 + 16))
  {
    if (v16 > 3)
    {
      v61 = v16 & 0x7FFFFFFFFFFFFFFCLL;
      v63 = (v10 + 48);
      v64 = v16 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v65 = vmulq_n_f64(*v63, v350);
        v63[-1] = vmulq_n_f64(v63[-1], v350);
        *v63 = v65;
        v63 += 2;
        v64 -= 4;
      }

      while (v64);
      if (v16 == v61)
      {
LABEL_96:

        v16 = *(v12 + 16);
        if (v16)
        {
LABEL_97:

          v62 = v12;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_98;
          }

          goto LABEL_569;
        }

LABEL_90:

        v62 = v12;
        goto LABEL_106;
      }
    }

    else
    {
      v61 = 0;
    }

    v66 = v16 - v61;
    v67 = (v10 + 8 * v61 + 32);
    do
    {
      *v67 = v350 * *v67;
      ++v67;
      --v66;
    }

    while (v66);
    goto LABEL_96;
  }

  __break(1u);
LABEL_569:
  v62 = sub_188D75E50(v12);
LABEL_98:
  if (v16 > *(v62 + 2))
  {
    __break(1u);
LABEL_571:
    v6 = sub_188D75E50(v62);
    goto LABEL_118;
  }

  if (v16 <= 3)
  {
    v68 = 0;
LABEL_104:
    v72 = v16 - v68;
    v73 = 8 * v68 + 32;
    do
    {
      *&v62[v73] = v354 * *&v62[v73];
      v73 += 8;
      --v72;
    }

    while (v72);
    goto LABEL_106;
  }

  v68 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v69 = (v62 + 48);
  v70 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v71 = vmulq_n_f64(*v69, v354);
    v69[-1] = vmulq_n_f64(v69[-1], v354);
    *v69 = v71;
    v69 += 2;
    v70 -= 4;
  }

  while (v70);
  if (v16 != v68)
  {
    goto LABEL_104;
  }

LABEL_106:
  sub_188D85564(v62, v13);
  v27 = v74;

  v16 = *(v27 + 16);
  if (!v16)
  {
    goto LABEL_239;
  }

  v62 = v27;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_546;
  }

LABEL_108:
  if (v16 > *(v62 + 2))
  {
    __break(1u);
    goto LABEL_548;
  }

  if (v16 <= 3)
  {
    v75 = 0;
LABEL_114:
    v79 = v16 - v75;
    v80 = &v62[8 * v75 + 32];
    do
    {
      *v80 = v352 * *v80;
      ++v80;
      --v79;
    }

    while (v79);
    goto LABEL_116;
  }

  v75 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  v76 = (v62 + 48);
  v77 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v78 = vmulq_n_f64(*v76, v352);
    v76[-1] = vmulq_n_f64(v76[-1], v352);
    *v76 = v78;
    v76 += 2;
    v77 -= 4;
  }

  while (v77);
  if (v16 != v75)
  {
    goto LABEL_114;
  }

LABEL_116:

  v16 = *(v62 + 2);
  if (!v16)
  {
    v27 = v62;
    goto LABEL_239;
  }

  v6 = v62;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_571;
  }

LABEL_118:
  if (v16 > *(v6 + 16))
  {
    __break(1u);
    goto LABEL_573;
  }

  if (v16 <= 3)
  {
    v81 = 0;
LABEL_125:
    v85 = v16 - v81;
    v86 = (v6 + 8 * v81 + 32);
    do
    {
      *v86 = v351 * *v86;
      ++v86;
      --v85;
    }

    while (v85);
    goto LABEL_127;
  }

  v81 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  v82 = (v6 + 48);
  v83 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v84 = vmulq_n_f64(*v82, v351);
    v82[-1] = vmulq_n_f64(v82[-1], v351);
    *v82 = v84;
    v82 += 2;
    v83 -= 4;
  }

  while (v83);
  if (v16 != v81)
  {
    goto LABEL_125;
  }

LABEL_127:

  v18 = *(v6 + 16);
  if (!v18)
  {
    v27 = v6;
    goto LABEL_239;
  }

  v27 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_188D75E50(v6);
  }

  if (v18 > *(v27 + 16))
  {
    __break(1u);
LABEL_628:
    v93 = sub_188D75E50(v12);
LABEL_140:
    if (v18 > *(v93 + 16))
    {
      __break(1u);
      goto LABEL_630;
    }

    if (v18 > 3)
    {
      v94 = v18 & 0xFFFFFFFFFFFFFFFCLL;
      v215 = (v93 + 48);
      v216 = v18 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v217 = vmulq_n_f64(*v215, v354);
        v215[-1] = vmulq_n_f64(v215[-1], v354);
        *v215 = v217;
        v215 += 2;
        v216 -= 4;
      }

      while (v216);
      if (v18 == v94)
      {
LABEL_335:
        sub_188D85564(v93, v13);
        v20 = v220;

        v18 = *(v20 + 2);
        v352 = 1.0 / v350;
        if (!v18)
        {
          v349 = sinh(a3);
          goto LABEL_358;
        }

        v93 = v20;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_337;
        }

        goto LABEL_591;
      }
    }

    else
    {
      v94 = 0;
    }

    v218 = v18 - v94;
    v219 = 8 * v94 + 32;
    do
    {
      *(v93 + v219) = v354 * *(v93 + v219);
      v219 += 8;
      --v218;
    }

    while (v218);
    goto LABEL_335;
  }

  if (v18 > 3)
  {
    v87 = v18 & 0x7FFFFFFFFFFFFFFCLL;
    v153 = (v27 + 48);
    v154 = v18 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v155 = vmulq_n_f64(*v153, v350);
      v153[-1] = vmulq_n_f64(v153[-1], v350);
      *v153 = v155;
      v153 += 2;
      v154 -= 4;
    }

    while (v154);
    if (v18 == v87)
    {
      goto LABEL_238;
    }
  }

  else
  {
    v87 = 0;
  }

  v156 = v18 - v87;
  v157 = (v27 + 8 * v87 + 32);
  do
  {
    *v157 = v350 * *v157;
    ++v157;
    --v156;
  }

  while (v156);
LABEL_238:

LABEL_239:
  sub_188D85564(v10, v27);
  v62 = v158;

  v16 = *(v62 + 2);
  if (!v16)
  {
    v10 = v62;
    goto LABEL_253;
  }

  v10 = v62;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v159 = *(v62 + 2);
    if (v159)
    {
      goto LABEL_242;
    }

LABEL_549:
    __break(1u);
    goto LABEL_550;
  }

LABEL_548:
  v10 = sub_188D75E50(v62);
  v159 = *(v10 + 16);
  if (!v159)
  {
    goto LABEL_549;
  }

LABEL_242:
  if (v159 <= v16 - 1)
  {
LABEL_550:
    __break(1u);
    goto LABEL_551;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_553;
  }

  while (1)
  {
    if (v16 > 3)
    {
      v160 = v16 & 0x7FFFFFFFFFFFFFFCLL;
      v161 = (v10 + 48);
      v162 = v16 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v163 = vmulq_n_f64(*v161, a4);
        v161[-1] = vmulq_n_f64(v161[-1], a4);
        *v161 = v163;
        v161 += 2;
        v162 -= 4;
      }

      while (v162);
      if (v16 == v160)
      {
        goto LABEL_252;
      }
    }

    else
    {
      v160 = 0;
    }

    v164 = v16 - v160;
    v165 = (v10 + 8 * v160 + 32);
    do
    {
      *v165 = a4 * *v165;
      ++v165;
      --v164;
    }

    while (v164);
LABEL_252:

LABEL_253:
    v27 = *(v12 + 16);

    v62 = v12;
    if (!v27)
    {
      goto LABEL_273;
    }

    v62 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    v166 = *(v12 + 16);
    if (v166)
    {
      goto LABEL_256;
    }

LABEL_552:
    __break(1u);
LABEL_553:
    v10 = sub_188D75E50(v10);
  }

LABEL_551:
  v62 = sub_188D75E50(v12);
  v166 = *(v62 + 2);
  if (!v166)
  {
    goto LABEL_552;
  }

LABEL_256:
  if (v166 <= v27 - 1)
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_258;
  }

  v62 = sub_188D75E50(v62);
LABEL_258:
  if (v27 <= 3)
  {
    v167 = 0;
    goto LABEL_263;
  }

  v167 = v27 & 0x7FFFFFFFFFFFFFFCLL;
  v168 = (v62 + 48);
  v169 = v27 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v170 = vmulq_n_f64(*v168, v351);
    v168[-1] = vmulq_n_f64(v168[-1], v351);
    *v168 = v170;
    v168 += 2;
    v169 -= 4;
  }

  while (v169);
  if (v27 != v167)
  {
LABEL_263:
    v171 = v27 - v167;
    v172 = &v62[8 * v167 + 32];
    do
    {
      *v172 = v351 * *v172;
      ++v172;
      --v171;
    }

    while (v171);
  }

  v6 = *(v12 + 16);
  if (!v6)
  {
LABEL_273:

    v173 = v12;
    goto LABEL_279;
  }

  v173 = v12;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v174 = *(v12 + 16);
    if (v174)
    {
      goto LABEL_268;
    }

LABEL_574:
    __break(1u);
    goto LABEL_575;
  }

LABEL_573:
  v173 = sub_188D75E50(v12);
  v174 = *(v173 + 2);
  if (!v174)
  {
    goto LABEL_574;
  }

LABEL_268:
  if (v6 < 1)
  {
LABEL_575:
    __break(1u);
    goto LABEL_576;
  }

  if (v174 <= v6 - 1)
  {
LABEL_576:
    __break(1u);
    goto LABEL_577;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_579;
  }

  while (1)
  {
    if (v6 <= 3)
    {
      v175 = 0;
LABEL_277:
      v179 = v6 - v175;
      v180 = 8 * v175 + 32;
      do
      {
        *&v173[v180] = v354 * *&v173[v180];
        v180 += 8;
        --v179;
      }

      while (v179);
      goto LABEL_279;
    }

    v175 = v6 & 0x7FFFFFFFFFFFFFFCLL;
    v176 = (v173 + 48);
    v177 = v6 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v178 = vmulq_n_f64(*v176, v354);
      v176[-1] = vmulq_n_f64(v176[-1], v354);
      *v176 = v178;
      v176 += 2;
      v177 -= 4;
    }

    while (v177);
    if (v6 != v175)
    {
      goto LABEL_277;
    }

LABEL_279:
    sub_188D85564(v173, v13);
    v6 = v181;

    v182 = *(v6 + 16);
    if (!v182)
    {
      goto LABEL_305;
    }

    v173 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v183 = *(v6 + 16);
      if (!v183)
      {
        goto LABEL_557;
      }
    }

    else
    {
      v173 = sub_188D75E50(v6);
      v183 = *(v173 + 2);
      if (!v183)
      {
LABEL_557:
        __break(1u);
        goto LABEL_558;
      }
    }

    if (v183 > v182 - 1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_284;
      }

      goto LABEL_559;
    }

LABEL_558:
    __break(1u);
LABEL_559:
    v173 = sub_188D75E50(v173);
LABEL_284:
    if (v182 <= 3)
    {
      v184 = 0;
LABEL_289:
      v188 = v182 - v184;
      v189 = &v173[8 * v184 + 32];
      do
      {
        *v189 = v352 * *v189;
        ++v189;
        --v188;
      }

      while (v188);
      goto LABEL_291;
    }

    v184 = v182 & 0x7FFFFFFFFFFFFFFCLL;
    v185 = (v173 + 48);
    v186 = v182 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v187 = vmulq_n_f64(*v185, v352);
      v185[-1] = vmulq_n_f64(v185[-1], v352);
      *v185 = v187;
      v185 += 2;
      v186 -= 4;
    }

    while (v186);
    if (v182 != v184)
    {
      goto LABEL_289;
    }

LABEL_291:

    v16 = *(v173 + 2);
    if (!v16)
    {
      v6 = v173;
      goto LABEL_305;
    }

    v6 = v173;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    v190 = *(v173 + 2);
    if (v190)
    {
      goto LABEL_294;
    }

LABEL_578:
    __break(1u);
LABEL_579:
    v173 = sub_188D75E50(v173);
  }

LABEL_577:
  v6 = sub_188D75E50(v173);
  v190 = *(v6 + 16);
  if (!v190)
  {
    goto LABEL_578;
  }

LABEL_294:
  if (v190 <= v16 - 1)
  {
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_296;
  }

  v6 = sub_188D75E50(v6);
LABEL_296:
  if (v16 <= 3)
  {
    v191 = 0;
    goto LABEL_302;
  }

  v191 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  v192 = (v6 + 48);
  v193 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v194 = vmulq_n_f64(*v192, v349);
    v192[-1] = vmulq_n_f64(v192[-1], v349);
    *v192 = v194;
    v192 += 2;
    v193 -= 4;
  }

  while (v193);
  if (v16 != v191)
  {
LABEL_302:
    v195 = v16 - v191;
    v196 = (v6 + 8 * v191 + 32);
    do
    {
      *v196 = v349 * *v196;
      ++v196;
      --v195;
    }

    while (v195);
  }

LABEL_305:
  sub_188D85564(v62, v6);
  v93 = v197;

  v198 = *(v93 + 16);
  if (!v198)
  {
    goto LABEL_537;
  }

  v144 = v93;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v199 = *(v93 + 16);
    if (v199)
    {
      goto LABEL_308;
    }

LABEL_561:
    __break(1u);
    goto LABEL_562;
  }

  v144 = sub_188D75E50(v93);
  v199 = *(v144 + 2);
  if (!v199)
  {
    goto LABEL_561;
  }

LABEL_308:
  if (v199 <= v198 - 1)
  {
LABEL_562:
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_310;
  }

  v144 = sub_188D75E50(v144);
LABEL_310:
  v200 = -v354;
  if (v198 <= 3)
  {
    v201 = 0;
    goto LABEL_315;
  }

  v201 = v198 & 0x7FFFFFFFFFFFFFFCLL;
  v202 = (v144 + 48);
  v203 = v198 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v204 = vmulq_n_f64(*v202, v200);
    v202[-1] = vmulq_n_f64(v202[-1], v200);
    *v202 = v204;
    v202 += 2;
    v203 -= 4;
  }

  while (v203);
  if (v198 != v201)
  {
LABEL_315:
    v205 = v198 - v201;
    v206 = &v144[8 * v201 + 32];
    do
    {
      *v206 = *v206 * v200;
      ++v206;
      --v205;
    }

    while (v205);
  }

  v207 = *(v144 + 2);
  if (!v207)
  {
    goto LABEL_530;
  }

  v93 = v144;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v208 = *(v144 + 2);
    if (v208)
    {
      goto LABEL_320;
    }

LABEL_583:
    __break(1u);
    goto LABEL_584;
  }

  v93 = sub_188D75E50(v144);
  v208 = *(v93 + 16);
  if (!v208)
  {
    goto LABEL_583;
  }

LABEL_320:
  if (v208 <= v207 - 1)
  {
LABEL_584:
    __break(1u);
  }

  else if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_322;
  }

  v93 = sub_188D75E50(v93);
LABEL_322:
  if (v207 <= 3)
  {
    v209 = 0;
    goto LABEL_327;
  }

  v209 = v207 & 0x7FFFFFFFFFFFFFFCLL;
  v210 = (v93 + 48);
  v211 = v207 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v212 = vmulq_n_f64(*v210, a4);
    v210[-1] = vmulq_n_f64(v210[-1], a4);
    *v210 = v212;
    v210 += 2;
    v211 -= 4;
  }

  while (v211);
  if (v207 != v209)
  {
LABEL_327:
    v213 = v207 - v209;
    v214 = (v93 + 8 * v209 + 32);
    do
    {
      *v214 = a4 * *v214;
      ++v214;
      --v213;
    }

    while (v213);
  }

LABEL_536:

LABEL_537:
  sub_188D85564(v10, v93);
  v346 = v345;

  sub_188D85564(v5, a1);
  v348 = v347;

  *v4 = v348;
  v4[1] = v346;
}