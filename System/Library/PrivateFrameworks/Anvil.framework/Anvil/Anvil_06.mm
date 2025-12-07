double sub_1DD988FC4@<D0>(_OWORD *a1@<X8>)
{
  v11 = a1;
  v2 = objc_opt_self();
  v3 = [v2 processInfo];
  [v3 operatingSystemVersion];

  v4 = [v2 processInfo];
  [v4 operatingSystemVersion];

  v5 = [v2 processInfo];
  [v5 operatingSystemVersion];

  sub_1DD982210(sub_1DD9B3454, v9);
  if (!v1)
  {
    result = *v9;
    v7 = v9[1];
    v8 = v11;
    *v11 = v9[0];
    v8[1] = v7;
    *(v8 + 4) = v10;
  }

  return result;
}

uint64_t sub_1DD9890F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v4 = sub_1DD96AC38(0x745F656372756F73, 0xEB00000000657079), (v5 & 1) == 0))
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v15 = sub_1DDA14810();
    __swift_project_value_buffer(v15, qword_1ECDA20E0);
    v16 = sub_1DDA147F0();
    v17 = sub_1DDA14EE0();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_16;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Extended attributes for file were not provided";
    goto LABEL_15;
  }

  v6 = (*(a1 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *v6 == 0x65746973626577 && v8 == 0xE700000000000000;
  if (!v9 && (sub_1DDA15440() & 1) == 0)
  {
    v28 = v7 == 1701603686 && v8 == 0xE400000000000000;
    if (v28 || (sub_1DDA15440() & 1) != 0)
    {
      if (*(a1 + 16) && (v29 = sub_1DD96AC38(0x6D616E5F656C6966, 0xE900000000000065), (v30 & 1) != 0))
      {
        if (*(a1 + 16))
        {
          v31 = (*(a1 + 56) + 16 * v29);
          v14 = *v31;
          v13 = v31[1];

          v32 = sub_1DD96AC38(0x6D696D5F656C6966, 0xEE00657079745F65);
          if (v33)
          {
            v20 = *(*(a1 + 56) + 16 * v32);

            v22 = xmmword_1DDA1B010;
            v23 = 1;
            goto LABEL_23;
          }
        }

        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v36 = sub_1DDA14810();
        __swift_project_value_buffer(v36, qword_1ECDA20E0);
        v16 = sub_1DDA147F0();
        v17 = sub_1DDA14EE0();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_16;
        }

        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Extended attributes were provided for file, but missing mime type attribute";
      }

      else
      {
        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v34 = sub_1DDA14810();
        __swift_project_value_buffer(v34, qword_1ECDA20E0);
        v16 = sub_1DDA147F0();
        v17 = sub_1DDA14EE0();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_16;
        }

        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Extended attributes were provided for file, but missing name attribute";
      }
    }

    else
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v35 = sub_1DDA14810();
      __swift_project_value_buffer(v35, qword_1ECDA20E0);
      v16 = sub_1DDA147F0();
      v17 = sub_1DDA14EE0();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "Provided source type attribute is currently not supported. Not saving extended attribute information.";
    }

LABEL_15:
    _os_log_impl(&dword_1DD8F8000, v16, v17, v19, v18, 2u);
    MEMORY[0x1E12B8CE0](v18, -1, -1);
LABEL_16:

    v14 = 0;
    v13 = 0;
    v20 = 0;
    result = 0;
    v22 = 0uLL;
    v23 = -1;
    goto LABEL_23;
  }

  if (*(a1 + 16) && (v10 = sub_1DD96AC38(7107189, 0xE300000000000000), (v11 & 1) != 0))
  {
    v12 = (*(a1 + 56) + 16 * v10);
    v14 = *v12;
    v13 = v12[1];
  }

  else
  {
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v24 = sub_1DDA14810();
    __swift_project_value_buffer(v24, qword_1ECDA20E0);
    v25 = sub_1DDA147F0();
    v26 = sub_1DDA14EE0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1DD8F8000, v25, v26, "Extended attributes were provided for website, but missing url attribute", v27, 2u);
      MEMORY[0x1E12B8CE0](v27, -1, -1);
    }

    v14 = 0;
    v13 = 0;
  }

  v20 = 0;
  result = 0;
  v23 = 0;
  v22 = xmmword_1DDA1B020;
LABEL_23:
  *a2 = v22;
  *(a2 + 16) = v14;
  *(a2 + 24) = v13;
  *(a2 + 32) = v20;
  *(a2 + 40) = result;
  *(a2 + 48) = v23;
  return result;
}

__n128 sub_1DD9895F8@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v5 = sub_1DDA14030();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83820, &qword_1DDA1B490);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  sub_1DD9890F8(a2, &v24);
  v10 = v25;
  v19 = v27;
  v20 = v25;
  v11 = v28;
  v21 = v26;
  v22 = v24;
  if (v28 == 255 || (v28 & 1) == 0)
  {
    v10 = sub_1DDA13460();
    v12 = v13;
  }

  else
  {
    v12 = v26.n128_u64[0];
  }

  sub_1DDA13430();
  sub_1DDA14020();
  sub_1DDA14000();
  if ((*(v6 + 48))(v9, 1, v5) == 1)
  {
    sub_1DD90D378(v9, &qword_1ECD83820, &qword_1DDA1B490);
LABEL_8:
    v16 = 0x80000001DDA28A70;
    v14 = 0xD000000000000018;
    goto LABEL_9;
  }

  v14 = sub_1DDA14010();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 16) = v23;
  *(a3 + 24) = v14;
  *(a3 + 32) = v16;
  result = v21;
  *(a3 + 40) = v22;
  v18 = v19;
  *(a3 + 56) = v20;
  *(a3 + 64) = result;
  *(a3 + 80) = v18;
  *(a3 + 88) = v11;
  return result;
}

uint64_t sub_1DD989844@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v98 = a5;
  v99 = a6;
  v95 = a3;
  v96 = a4;
  v94 = a2;
  v7 = sub_1DDA136E0();
  v100 = *(v7 - 8);
  v101 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v93 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83798, &qword_1DDA1B320);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v97 = v92 - v10;
  v133 = sub_1DDA14580();
  v118 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v146 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DDA14550();
  v131 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v92 - v16;
  v18 = sub_1DDA145B0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v92 - v23;
  v25 = v132;
  result = sub_1DDA13F00();
  if (!v25)
  {
    v120 = v12;
    v121 = v24;
    v116 = v22;
    v117 = v19;
    v119 = v17;
    v113 = v15;
    v106 = v18;
    v92[1] = 0;
    v92[2] = a1;
    v115 = *(result + 16);
    if (v115)
    {
      v27 = 0;
      v28 = v117;
      v127 = v117 + 16;
      v110 = (v131 + 88);
      v111 = (v131 + 16);
      v109 = *MEMORY[0x1E69A0CE0];
      v105 = *MEMORY[0x1E69A0CD8];
      v102 = *MEMORY[0x1E69A0CD0];
      v108 = (v131 + 96);
      v29 = v118;
      v129 = (v118 + 8);
      v130 = v118 + 16;
      v112 = (v131 + 8);
      v128 = (v117 + 8);
      v30 = MEMORY[0x1E69E7CC0];
      v31 = v106;
      v114 = result;
      do
      {
        if (v27 >= *(result + 16))
        {
          __break(1u);
LABEL_42:
          result = sub_1DDA15180();
          __break(1u);
          return result;
        }

        v107 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v122 = *(v28 + 72);
        v32 = *(v28 + 16);
        v33 = v121;
        v125 = v27;
        v126 = v32;
        v32(v121, result + v107 + v122 * v27, v31);
        v34 = sub_1DDA14590();
        v123 = v35;
        v124 = v34;
        v36 = v119;
        sub_1DDA145A0();
        v37 = v113;
        v38 = v120;
        (*v111)(v113, v36, v120);
        v39 = (*v110)(v37, v38);
        if (v39 == v109)
        {
          (*v112)(v36, v38);
          (*v128)(v33, v31);
          (*v108)(v37, v38);
          v40 = 0;
          v41 = 0;
          v42 = *v37;
        }

        else
        {
          v43 = v133;
          if (v39 == v105)
          {
            (*v112)(v36, v38);
            (*v128)(v121, v31);
            (*v108)(v37, v38);
            v44 = v37;
            v42 = *v37;
            v40 = *(v44 + 1);
            v41 = 2;
          }

          else
          {
            if (v39 != v102)
            {
              goto LABEL_42;
            }

            (*v108)(v37, v38);
            v45 = *v37;
            v46 = *(*v37 + 16);
            if (v46)
            {
              v104 = v30;
              *&v139 = MEMORY[0x1E69E7CC0];
              v47 = v45;
              sub_1DD9AF0BC(0, v46, 0);
              v48 = v146;
              v42 = v139;
              v49 = (*(v29 + 80) + 32) & ~*(v29 + 80);
              v103 = v47;
              v50 = v47 + v49;
              v51 = *(v29 + 72);
              v131 = *(v29 + 16);
              v132 = v51;
              do
              {
                (v131)(v48, v50, v43);
                v52 = sub_1DDA14570();
                v48 = v146;
                v53 = v52;
                v55 = v54;
                (*v129)(v146, v43);
                *&v139 = v42;
                v57 = *(v42 + 16);
                v56 = *(v42 + 24);
                if (v57 >= v56 >> 1)
                {
                  sub_1DD9AF0BC((v56 > 1), v57 + 1, 1);
                  v48 = v146;
                  v42 = v139;
                }

                *(v42 + 16) = v57 + 1;
                v58 = v42 + 16 * v57;
                *(v58 + 32) = v53;
                *(v58 + 40) = v55;
                v43 = v133;
                v50 += v132;
                --v46;
              }

              while (v46);

              (*v112)(v119, v120);
              v31 = v106;
              (*v128)(v121, v106);
              v30 = v104;
            }

            else
            {

              (*v112)(v36, v38);
              v31 = v106;
              (*v128)(v121, v106);
              v42 = MEMORY[0x1E69E7CC0];
            }

            v40 = 0;
            v41 = 3;
          }
        }

        v59 = v125;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1DD908E54(0, *(v30 + 2) + 1, 1, v30);
        }

        v61 = *(v30 + 2);
        v60 = *(v30 + 3);
        result = v114;
        if (v61 >= v60 >> 1)
        {
          v30 = sub_1DD908E54((v60 > 1), v61 + 1, 1, v30);
          result = v114;
        }

        v27 = v59 + 1;
        *(v30 + 2) = v61 + 1;
        v62 = &v30[40 * v61];
        v63 = v123;
        *(v62 + 4) = v124;
        *(v62 + 5) = v63;
        *(v62 + 6) = v42;
        *(v62 + 7) = v40;
        v62[64] = v41;
        v28 = v117;
        v29 = v118;
      }

      while (v27 != v115);
      v64 = v116;
      v65 = v115 - 1;
      v66 = result + v107;
      v67 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v126(v64, v66, v31);
        sub_1DDA00814(v144);
        v141 = v144[2];
        v142 = v144[3];
        v143 = v145;
        v139 = v144[0];
        v140 = v144[1];
        (*v128)(v64, v31);
        if (*(&v144[0] + 1))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_1DD908D30(0, *(v67 + 2) + 1, 1, v67);
          }

          v69 = *(v67 + 2);
          v68 = *(v67 + 3);
          if (v69 >= v68 >> 1)
          {
            v67 = sub_1DD908D30((v68 > 1), v69 + 1, 1, v67);
          }

          v138 = v143;
          v136 = v141;
          v137 = v142;
          v70 = v139;
          v134 = v139;
          v135 = v140;
          *(v67 + 2) = v69 + 1;
          v71 = &v67[72 * v69];
          *(v71 + 2) = v70;
          v72 = v135;
          v73 = v136;
          v74 = v137;
          *(v71 + 48) = v138;
          *(v71 + 4) = v73;
          *(v71 + 5) = v74;
          *(v71 + 3) = v72;
          v31 = v106;
        }

        v64 = v116;
        if (!v65)
        {
          break;
        }

        --v65;
        v66 += v122;
      }
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
      v67 = MEMORY[0x1E69E7CC0];
    }

    v75 = v94[4];
    v76 = v94[5];
    __swift_project_boxed_opaque_existential_1(v94 + 1, v75);
    v77 = (*(v76 + 48))(v75, v76);
    v104 = v30;
    if (v78)
    {
      v79 = v77;
    }

    else
    {
      v79 = sub_1DDA13F10();
    }

    v80 = v78;
    v81 = v101;
    v82 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837A0, &qword_1DDA1B328);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000010;
    *(inited + 16) = xmmword_1DDA1B030;
    v84 = v95;
    *(inited + 40) = 0x80000001DDA28880;
    *(inited + 48) = v84;
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    *(inited + 72) = 0xD000000000000010;
    *(inited + 80) = 0x80000001DDA288A0;
    *(inited + 88) = v82;
    *(inited + 96) = 0;
    *(inited + 104) = 1;
    *(inited + 112) = 0xD000000000000010;
    *(inited + 120) = 0x80000001DDA288C0;
    v85 = v97;
    *(inited + 128) = v98;
    *(inited + 136) = 0;
    *(inited + 144) = 1;
    *(inited + 152) = 0x656C61636F6CLL;
    *(inited + 160) = 0xE600000000000000;
    sub_1DDA13F20();
    if ((*(v100 + 48))(v85, 1, v81) == 1)
    {
      sub_1DD90D378(v85, &qword_1ECD83798, &qword_1DDA1B320);
      v85 = v93;
      sub_1DDA136D0();
    }

    v86 = sub_1DDA136C0();
    v88 = v87;
    (*(v100 + 8))(v85, v101);
    *(inited + 168) = v86;
    *(inited + 176) = v88;
    *(inited + 184) = 2;
    *(inited + 192) = 0x6D726F6674616C70;
    *(inited + 200) = 0xE800000000000000;
    *(inited + 208) = xmmword_1DDA1B040;
    *(inited + 224) = 2;
    v89 = sub_1DD9405D8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837A8, &qword_1DDA1B330);
    result = swift_arrayDestroy();
    v90 = v99;
    *v99 = v79;
    v90[1] = v80;
    v91 = v104;
    v90[2] = v89;
    v90[3] = v91;
    v90[4] = v67;
  }

  return result;
}

uint64_t sub_1DD98A384(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DD96AE9C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 16 * v3);

  return v5;
}

uint64_t sub_1DD98A3E8(uint64_t a1)
{
  v2 = v1;
  v36 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v11 << 6);
      v14 = (*(a1 + 56) + 24 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      if (*v14 < 0)
      {
        sub_1DD940DF4(*v14, v14[1], v14[2]);
      }

      else
      {
        v18 = (*(a1 + 48) + 16 * v13);
        v33 = v2;
        v34 = *v18;
        v35 = v18[1];
        v19 = *(v36 + 16);
        if (*(v36 + 24) <= v19)
        {
          sub_1DD940DF4(v15, v16, v17);
          sub_1DD940DF4(v15, v16, v17);

          sub_1DD9C838C(v19 + 1, 1);
          v20 = v37;
        }

        else
        {
          sub_1DD940DF4(v15, v16, v17);
          sub_1DD940DF4(v15, v16, v17);

          v20 = v36;
        }

        v36 = v20;
        sub_1DDA15570();
        sub_1DDA14BC0();
        result = sub_1DDA155B0();
        v21 = v36 + 64;
        v22 = -1 << *(v36 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v36 + 64 + 8 * (v23 >> 6))) == 0)
        {
          v26 = 0;
          v27 = (63 - v22) >> 6;
          v2 = v33;
          while (++v24 != v27 || (v26 & 1) == 0)
          {
            v28 = v24 == v27;
            if (v24 == v27)
            {
              v24 = 0;
            }

            v26 |= v28;
            v29 = *(v21 + 8 * v24);
            if (v29 != -1)
            {
              v25 = __clz(__rbit64(~v29)) + (v24 << 6);
              goto LABEL_26;
            }
          }

LABEL_29:
          __break(1u);
          return result;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v36 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
        v2 = v33;
LABEL_26:
        *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = 16 * v25;
        v31 = (*(v36 + 48) + v30);
        *v31 = v34;
        v31[1] = v35;
        v32 = (*(v36 + 56) + v30);
        *v32 = v16;
        v32[1] = v17;
        ++*(v36 + 16);
      }

      result = sub_1DD94A02C(v15, v16, v17);
      v10 = v11;
      if (!v7)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  return v36;
}

uint64_t sub_1DD98A6C0(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 664) = v6;
  *(v7 + 425) = a6;
  *(v7 + 656) = a5;
  *(v7 + 648) = a4;
  *(v7 + 640) = a2;
  *(v7 + 632) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83658, &qword_1DDA1B1C8);
  *(v7 + 672) = v9;
  *(v7 + 680) = *(v9 - 8);
  *(v7 + 688) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836C8, &qword_1DDA1B260);
  *(v7 + 696) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836D0, &qword_1DDA1B268);
  *(v7 + 704) = v10;
  *(v7 + 712) = *(v10 - 8);
  *(v7 + 720) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836D8, &qword_1DDA1B270);
  *(v7 + 728) = v11;
  *(v7 + 736) = *(v11 - 8);
  *(v7 + 744) = swift_task_alloc();
  *(v7 + 752) = swift_task_alloc();
  sub_1DDA14B60();
  *(v7 + 760) = swift_task_alloc();
  v12 = sub_1DDA134E0();
  *(v7 + 768) = v12;
  *(v7 + 776) = *(v12 - 8);
  *(v7 + 784) = swift_task_alloc();
  v13 = sub_1DDA13140();
  *(v7 + 792) = v13;
  *(v7 + 800) = *(v13 - 8);
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  memcpy((v7 + 16), a3, 0x118uLL);

  return MEMORY[0x1EEE6DFA0](sub_1DD98A9B8, 0, 0);
}

uint64_t sub_1DD98A9B8()
{
  v32 = v0;
  sub_1DD9B31DC();
  v1 = sub_1DDA13210();
  v3 = v2;
  (*(*(v0 + 776) + 16))(*(v0 + 784), *(v0 + 640), *(v0 + 768));
  sub_1DDA130F0();
  sub_1DD909CD4(v1, v3);
  sub_1DD909CD4(v1, v3);
  sub_1DDA13120();
  sub_1DDA13130();
  if (qword_1ECD827B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1DDA14810();
  __swift_project_value_buffer(v4, qword_1ECDA20F8);
  v5 = sub_1DDA147F0();
  v6 = sub_1DDA14ED0();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_7;
  }

  v30 = v1;
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v31[0] = v8;
  *v7 = 136315138;
  swift_beginAccess();
  v9 = sub_1DDA13110();
  v11 = v10;
  result = swift_endAccess();
  if (v11 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1DDA14B50();
  v13 = sub_1DDA14B30();
  v15 = v14;
  result = sub_1DD90D440(v9, v11);
  if (!v15)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v16 = sub_1DD93FA54(v13, v15, v31);

  *(v7 + 4) = v16;
  _os_log_impl(&dword_1DD8F8000, v5, v6, "Sending request: %s", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v8);
  MEMORY[0x1E12B8CE0](v8, -1, -1);
  MEMORY[0x1E12B8CE0](v7, -1, -1);
  v1 = v30;
LABEL_7:
  sub_1DD909D28(v1, v3);

  if (*(v0 + 425))
  {
    swift_beginAccess();
    sub_1DDA130B0();
    swift_endAccess();
  }

  v17 = *(v0 + 664);
  swift_beginAccess();
  sub_1DDA130C0();
  sub_1DDA130A0();
  swift_endAccess();
  if (*(v17 + 56) == 1)
  {
    v18 = sub_1DD93FF08(&unk_1F58EC5A8);
    sub_1DD90D378(&unk_1F58EC5C8, &qword_1ECD829C8, &qword_1DDA1E380);
  }

  else
  {
    v18 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  }

  v19 = *(v0 + 648);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31[0] = v19;
  sub_1DD954E10(v18, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, v31);

  v21 = v31[0];
  v22 = *(v0 + 816);
  v23 = *(v0 + 808);
  v24 = *(v0 + 800);
  v25 = *(v0 + 792);
  swift_beginAccess();
  sub_1DD9528C4(v23, v21);
  swift_endAccess();
  sub_1DD909D28(v1, v3);

  (*(v24 + 16))(v22, v23, v25);
  v26 = *(v24 + 8);
  *(v0 + 824) = v26;
  *(v0 + 832) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v26(v23, v25);
  v27 = swift_task_alloc();
  *(v0 + 840) = v27;
  *v27 = v0;
  v27[1] = sub_1DD98AF6C;
  v28 = *(v0 + 816);
  v29 = *(v0 + 752);

  return sub_1DD95223C(v29, v28, 1);
}

uint64_t sub_1DD98AF6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 848) = a1;
  *(v3 + 856) = v1;

  if (v1)
  {
    v4 = sub_1DD98B6B4;
  }

  else
  {
    v4 = sub_1DD98B084;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DD98B084()
{
  v50 = v0;
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  v4 = *(v0 + 728);
  v5 = *(v0 + 720);
  v44 = *(v0 + 712);
  v6 = *(v0 + 704);
  v47 = *(v0 + 848);
  v7 = *(v0 + 664);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836E8, &qword_1DDA1B278);
  swift_allocBox();
  (*(v3 + 16))(v2, v1, v4);
  sub_1DD929A8C(v7, v0 + 368);
  v8 = swift_allocObject();
  v9 = *(v0 + 384);
  v8[1] = *(v0 + 368);
  v8[2] = v9;
  v8[3] = *(v0 + 400);
  *(v8 + 57) = *(v0 + 409);
  type metadata accessor for ChatChunk(0);
  sub_1DD90D2A4(&qword_1ECD836F0, &qword_1ECD836D8, &qword_1DDA1B270, MEMORY[0x1E69E88C0]);
  sub_1DDA153F0();
  MEMORY[0x1E12B8260](v6);
  sub_1DDA14DC0();
  sub_1DDA153C0();
  (*(v44 + 8))(v5, v6);
  sub_1DDA153D0();

  sub_1DDA14E30();
  v10 = [v47 allHeaderFields];
  v11 = sub_1DDA14AA0();

  v12 = -1;
  v13 = -1 << *(v11 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v11 + 64);
  v15 = (63 - v13) >> 6;

  v17 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    while (1)
    {
LABEL_11:
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v20 = v19 | (v17 << 6);
      sub_1DD9550D8(*(v11 + 48) + 40 * v20, v0 + 296);
      sub_1DD9410C8(*(v11 + 56) + 32 * v20, v0 + 336);
      sub_1DD9550D8(v0 + 296, v0 + 432);
      if (!swift_dynamicCast())
      {
        goto LABEL_6;
      }

      v21 = *(v0 + 600);
      v22 = *(v0 + 608);
      sub_1DD9410C8(v0 + 336, v0 + 472);
      if (swift_dynamicCast())
      {
        v45 = *(v0 + 624);
        v46 = *(v0 + 616);
        sub_1DD90D378(v0 + 296, &qword_1ECD83180, &qword_1DDA196E8);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DD908740(0, v48[2] + 1, 1, v48);
          v48 = result;
        }

        v24 = v48[2];
        v23 = v48[3];
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          v42 = v48[2];
          v43 = v24 + 1;
          result = sub_1DD908740((v23 > 1), v24 + 1, 1, v48);
          v24 = v42;
          v25 = v43;
          v48 = result;
        }

        v48[2] = v25;
        v26 = &v48[4 * v24];
        v26[4] = v21;
        v26[5] = v22;
        v26[6] = v46;
        v26[7] = v45;
        if (!v14)
        {
          goto LABEL_7;
        }
      }

      else
      {

LABEL_6:
        result = sub_1DD90D378(v0 + 296, &qword_1ECD83180, &qword_1DDA196E8);
        if (!v14)
        {
          goto LABEL_7;
        }
      }
    }
  }

  while (1)
  {
LABEL_7:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return result;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_11;
    }
  }

  if (v48[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
    v27 = sub_1DDA151C0();
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC8];
  }

  v28 = *(v0 + 856);
  v49 = v27;

  sub_1DD954678(v29, 1, &v49);
  if (v28)
  {

    return swift_unexpectedError();
  }

  else
  {
    v41 = *(v0 + 824);
    v30 = *(v0 + 816);
    v40 = *(v0 + 792);
    v31 = *(v0 + 752);
    v32 = *(v0 + 736);
    v33 = *(v0 + 728);
    v34 = *(v0 + 688);
    v35 = *(v0 + 680);
    v36 = *(v0 + 672);
    v37 = *(v0 + 632);

    (*(v32 + 8))(v31, v33);
    v41(v30, v40);
    v38 = v49;
    (*(v35 + 32))(v37, v34, v36);

    v39 = *(v0 + 8);

    return v39(v38);
  }
}

uint64_t sub_1DD98B6B4()
{
  (*(v0 + 824))(*(v0 + 816), *(v0 + 792));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD98B7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1DDA14B60();
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for ChatChunk(0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD98B89C, 0, 0);
}

uint64_t sub_1DD98B89C()
{
  sub_1DD9B48D0(&qword_1ECD83708, 255, type metadata accessor for ChatChunk, &unk_1DDA1E08C);
  sub_1DDA13170();
  sub_1DD9B4978(v0[9], v0[2], type metadata accessor for ChatChunk);
  (*(v0[8] + 56))(v0[2], 0, 1, v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DD98BBB4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836F8, &qword_1DDA1B2A0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD98BC70, 0, 0);
}

uint64_t sub_1DD98BC70()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1DD98BD30;
  v2 = *(v0 + 40);

  return sub_1DD98C0F0(v2);
}

uint64_t sub_1DD98BD30()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1DD98C078;
  }

  else
  {
    swift_endAccess();
    v2 = sub_1DD98BE4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD98BE4C()
{
  v18 = v0;
  if (qword_1ECD827B0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[5];
  v3 = sub_1DDA14810();
  __swift_project_value_buffer(v3, qword_1ECDA20F8);
  sub_1DD90ADB4(v2, v1, &qword_1ECD836F8, &qword_1DDA1B2A0);
  v4 = sub_1DDA147F0();
  v5 = sub_1DDA14ED0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    sub_1DD90ADB4(v7, v8, &qword_1ECD836F8, &qword_1DDA1B2A0);
    v11 = sub_1DDA14B70();
    v13 = v12;
    sub_1DD90D378(v7, &qword_1ECD836F8, &qword_1DDA1B2A0);
    v14 = sub_1DD93FA54(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1DD8F8000, v4, v5, "Received streaming chunk response: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E12B8CE0](v10, -1, -1);
    MEMORY[0x1E12B8CE0](v9, -1, -1);
  }

  else
  {

    sub_1DD90D378(v7, &qword_1ECD836F8, &qword_1DDA1B2A0);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DD98C078()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD98C0F0(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836F8, &qword_1DDA1B2A0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD98C18C, 0, 0);
}

uint64_t sub_1DD98C18C()
{
  v0[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836E8, &qword_1DDA1B278);
  v0[14] = sub_1DDA153B0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836C8, &qword_1DDA1B260);
  v2 = sub_1DD90D2A4(&qword_1ECD83700, &qword_1ECD836C8, &qword_1DDA1B260, MEMORY[0x1E69E88B0]);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1DD98C2B0;

  return MEMORY[0x1EEE6D8C8](v0 + 8, v1, v2);
}

uint64_t sub_1DD98C2B0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1DD98C580;
  }

  else
  {
    (*(v2 + 112))();
    v3 = sub_1DD98C3DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DD98C3DC()
{
  v1 = v0[9];
  if (v1 >> 60 == 15)
  {
    v2 = v0[10];
    sub_1DD90D440(v0[8], v1);
    v3 = type metadata accessor for ChatChunk(0);
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[6] = v0[8];
    v0[7] = v1;
    v6 = sub_1DDA153C0();
    v0[17] = v7;
    v10 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    v8[1] = sub_1DD98C600;
    v9 = v0[12];

    return (v10)(v9, v0 + 6);
  }
}

uint64_t sub_1DD98C580()
{
  (*(v0 + 112))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD98C600()
{
  v1 = *v0;

  sub_1DD909D28(*(v1 + 48), *(v1 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1DD98C750, 0, 0);
}

uint64_t sub_1DD98C750()
{
  v1 = v0[12];
  v2 = type metadata accessor for ChatChunk(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1DD90D378(v1, &qword_1ECD836F8, &qword_1DDA1B2A0);
    v0[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836E8, &qword_1DDA1B278);
    v0[14] = sub_1DDA153B0();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836C8, &qword_1DDA1B260);
    v5 = sub_1DD90D2A4(&qword_1ECD83700, &qword_1ECD836C8, &qword_1DDA1B260, MEMORY[0x1E69E88B0]);
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_1DD98C2B0;

    return MEMORY[0x1EEE6D8C8](v0 + 8, v4, v5);
  }

  else
  {
    v7 = v0[10];
    sub_1DD9B4978(v1, v7, type metadata accessor for ChatChunk);
    (*(v3 + 56))(v7, 0, 1, v2);

    v8 = v0[1];

    return v8();
  }
}

void sub_1DD98C988(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v48 = a4;
  v51 = a7;
  v50 = a6;
  v49 = a5;
  v43 = a3;
  v44 = a1;
  v45 = sub_1DDA134E0();
  v9 = *(v45 - 8);
  v46 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83858, &qword_1DDA1B4D8);
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v39 - v13;
  v14 = sub_1DDA13140();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[5];
  v19 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v18);
  (*(v15 + 16))(v17, v43, v14);
  v43 = (*(v19 + 32))(v17, v18, v19);
  (*(v15 + 8))(v17, v14);
  v20 = v40;
  v21 = v41;
  (*(v11 + 16))(v40, v44, v41);
  sub_1DD929A8C(a2, v53);
  v22 = v42;
  v23 = v45;
  (*(v9 + 16))(v42, v47, v45);
  v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v9 + 80) + v25 + 57) & ~*(v9 + 80);
  v27 = swift_allocObject();
  (*(v11 + 32))(v27 + v24, v20, v21);
  v28 = (v27 + v25);
  v29 = v53[1];
  *v28 = v53[0];
  v28[1] = v29;
  v28[2] = v54[0];
  *(v28 + 41) = *(v54 + 9);
  (*(v9 + 32))(v27 + v26, v22, v23);
  v30 = type metadata accessor for DocumentRegistrationURLSessionDelegate();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_data] = xmmword_1DDA16330;
  v32 = &v31[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileSize];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v31[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_update];
  v34 = v49;
  *v33 = v48;
  v33[1] = v34;
  v35 = &v31[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_completion];
  *v35 = sub_1DD9B4E78;
  v35[1] = v27;
  v36 = &v31[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileDescriptor];
  *v36 = v50;
  v36[4] = 0;
  *v32 = v51;
  v32[8] = 0;
  v52.receiver = v31;
  v52.super_class = v30;
  v37 = v43;

  v38 = objc_msgSendSuper2(&v52, sel_init);
  [v37 setDelegate_];

  [v37 resume];
}

uint64_t sub_1DD98CDE0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1DDA134E0();
  result = MEMORY[0x1EEE9AC00](v8);
  if (a4)
  {
    v10 = a4;
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v11 = sub_1DDA14810();
    __swift_project_value_buffer(v11, qword_1ECDA20F8);
    v12 = a4;
    v13 = sub_1DDA147F0();
    v14 = sub_1DDA14EE0();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a4;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1DD8F8000, v13, v14, "Received error response: %@", v15, 0xCu);
      sub_1DD90D378(v16, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v16, -1, -1);
      MEMORY[0x1E12B8CE0](v15, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83858, &qword_1DDA1B4D8);
    return sub_1DDA14CE0();
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      __break(1u);
    }

    else if (a3)
    {
      sub_1DD98D284(a1, a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83858, &qword_1DDA1B4D8);
      return sub_1DDA14CF0();
    }

    __break(1u);
  }

  return result;
}

void *sub_1DD98D284(uint64_t a1, unint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  if (sub_1DD9552D8(v7, a1, a2))
  {
    return swift_willThrow();
  }

  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      return 0;
    }
  }

  else if (v9)
  {
    if (a1 == a1 >> 32)
    {
      return 0;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  result = sub_1DDA13170();
  if (!v4)
  {
    return v10;
  }

  return result;
}

void *sub_1DD98D3BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a4@<X8>)
{
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  if (sub_1DD9552D8(v9, a1, a2))
  {
    return swift_willThrow();
  }

  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v11)
  {
    if (a1 == a1 >> 32)
    {
LABEL_13:
      v13 = type metadata accessor for UploadDocumentResponse(0);
      return (*(*(v13 - 8) + 56))(a4, 1, 1, v13);
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v12 = type metadata accessor for UploadDocumentResponse(0);
  sub_1DD9B48D0(&qword_1ECD83818, 255, type metadata accessor for UploadDocumentResponse, &unk_1DDA21968);
  result = sub_1DDA13170();
  if (!v5)
  {
    return (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
  }

  return result;
}

uint64_t sub_1DD98D59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 488) = v20;
  *(v9 + 496) = v8;
  *(v9 + 472) = v19;
  *(v9 + 456) = a7;
  *(v9 + 464) = a8;
  *(v9 + 244) = a6;
  *(v9 + 440) = a4;
  *(v9 + 448) = a5;
  *(v9 + 424) = a2;
  *(v9 + 432) = a3;
  *(v9 + 416) = a1;
  v10 = *(a3 + 16);
  *(v9 + 504) = *a3;
  *(v9 + 520) = v10;
  *(v9 + 536) = *(a3 + 32);
  *(v9 + 241) = *(a3 + 48);
  v11 = sub_1DDA14030();
  *(v9 + 552) = v11;
  *(v9 + 560) = *(v11 - 8);
  *(v9 + 568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83820, &qword_1DDA1B490);
  *(v9 + 576) = swift_task_alloc();
  v12 = sub_1DDA14B60();
  *(v9 + 584) = v12;
  *(v9 + 592) = *(v12 - 8);
  *(v9 + 600) = swift_task_alloc();
  v13 = sub_1DDA13420();
  *(v9 + 608) = v13;
  *(v9 + 616) = *(v13 - 8);
  *(v9 + 624) = swift_task_alloc();
  v14 = sub_1DDA134E0();
  *(v9 + 632) = v14;
  *(v9 + 640) = *(v14 - 8);
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  *(v9 + 672) = swift_task_alloc();
  v15 = sub_1DDA13140();
  *(v9 + 680) = v15;
  *(v9 + 688) = *(v15 - 8);
  *(v9 + 696) = swift_task_alloc();
  v16 = sub_1DDA136B0();
  *(v9 + 704) = v16;
  *(v9 + 712) = *(v16 - 8);
  *(v9 + 720) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD98D8C8, 0, 0);
}

uint64_t sub_1DD98D8C8(uint64_t a1)
{
  v141 = v1;
  v2 = v1[90];
  v3 = v1[89];
  v4 = v1[88];
  v5 = v1[84];
  v6 = v1[80];
  v134 = v1[79];
  v135 = v1[62];
  v7 = v1[55];
  sub_1DDA136A0();
  v8 = sub_1DDA13690();
  v10 = v9;
  v132 = *(v3 + 8);
  v132(v2, v4);
  strcpy(v140, "Boundry-");
  BYTE1(v140[1]) = 0;
  WORD1(v140[1]) = 0;
  HIDWORD(v140[1]) = -402653184;
  MEMORY[0x1E12B7AB0](v8, v10);

  v11 = v140[0];
  v12 = v140[1];
  v13 = *(v6 + 16);
  v13(v5, v7, v134);
  sub_1DDA130F0();
  sub_1DDA130A0();
  sub_1DDA15070();

  v140[0] = 0xD00000000000001ELL;
  v140[1] = 0x80000001DDA28A20;
  v131 = v11;
  MEMORY[0x1E12B7AB0](v11, v12);
  sub_1DDA13130();

  if (*(v135 + 56) == 1)
  {
    v14 = sub_1DD93FF08(&unk_1F58EC5E8);
    sub_1DD90D378(&unk_1F58EC608, &qword_1ECD829C8, &qword_1DDA1E380);
  }

  else
  {
    v14 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
  }

  v15 = *(v137 + 448);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v140[0] = v15;
  sub_1DD954E10(v14, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, v140);

  v129 = v13;
  v130 = v12;
  v17 = *(v137 + 720);
  v122 = *(v137 + 704);
  v18 = *(v137 + 672);
  v19 = *(v137 + 640);
  v20 = *(v137 + 624);
  v21 = *(v137 + 616);
  v124 = *(v137 + 608);
  v126 = *(v137 + 632);
  sub_1DD9528C4(*(v137 + 696), v140[0]);

  v22 = NSTemporaryDirectory();
  sub_1DDA14B10();

  sub_1DDA13450();

  sub_1DDA136A0();
  v23 = sub_1DDA13690();
  v25 = v24;
  v132(v17, v122);
  *(v137 + 304) = v23;
  *(v137 + 312) = v25;
  (*(v21 + 104))(v20, *MEMORY[0x1E6968F70], v124);
  sub_1DD9313D4();
  sub_1DDA134D0();
  (*(v21 + 8))(v20, v124);
  v133 = *(v19 + 8);
  v133(v18, v126);

  *(v137 + 320) = 0;
  *(v137 + 328) = 0xE000000000000000;
  sub_1DDA14B50();
  sub_1DDA14F90();
  v26 = *(v137 + 664);
  v27 = *(v137 + 656);
  v28 = *(v137 + 632);
  (*(*(v137 + 592) + 8))(*(v137 + 600), *(v137 + 584));
  sub_1DD9B45E4();
  v129(v27, v26, v28);
  v121 = sub_1DD98FD08(v27);
  v30 = *(v137 + 576);
  v31 = *(v137 + 560);
  v136 = *(v137 + 552);
  v32 = *(v137 + 480);
  v33 = *(v137 + 488);
  v34 = *(v137 + 464);
  v35 = *(v137 + 456);
  v120 = [objc_allocWithZone(MEMORY[0x1E696AC00]) initWithFileDescriptor:*(v137 + 244) closeOnDealloc:0];
  v140[0] = 11565;
  v140[1] = 0xE200000000000000;
  MEMORY[0x1E12B7AB0](v131, v130);
  MEMORY[0x1E12B7AB0](2573, 0xE200000000000000);
  v127 = sub_1DD901910(v140[0], v140[1]);
  v128 = v36;
  v140[0] = 0;
  v140[1] = 0xE000000000000000;
  sub_1DDA15070();
  MEMORY[0x1E12B7AB0](0xD000000000000026, 0x80000001DDA28A40);
  MEMORY[0x1E12B7AB0](v32, v33);
  MEMORY[0x1E12B7AB0](0x6E656C6966203B22, 0xED0000223D656D61);
  MEMORY[0x1E12B7AB0](v35, v34);
  MEMORY[0x1E12B7AB0](658722, 0xE300000000000000);
  v123 = sub_1DD901910(v140[0], v140[1]);
  v125 = v37;
  v140[0] = 0;
  v140[1] = 0xE000000000000000;
  sub_1DDA15070();

  strcpy(v140, "Content-Type: ");
  HIBYTE(v140[1]) = -18;
  sub_1DDA13430();
  sub_1DDA14020();
  sub_1DDA14000();
  v38 = (*(v31 + 48))(v30, 1, v136);
  v39 = *(v137 + 576);
  if (v38 == 1)
  {
    sub_1DD90D378(*(v137 + 576), &qword_1ECD83820, &qword_1DDA1B490);
  }

  else
  {
    v40 = *(v137 + 560);
    v41 = *(v137 + 552);
    v42 = sub_1DDA14010();
    v44 = v43;
    (*(v40 + 8))(v39, v41);
    if (v44)
    {
      v45 = v42;
      goto LABEL_13;
    }
  }

  v44 = 0x80000001DDA28A70;
  v45 = 0xD000000000000018;
LABEL_13:
  v46 = v121;
  MEMORY[0x1E12B7AB0](v45, v44);

  MEMORY[0x1E12B7AB0](168626701, 0xE400000000000000);
  v47 = sub_1DD901910(v140[0], v140[1]);
  v49 = v48;
  *(v137 + 144) = v127;
  *(v137 + 152) = v128;
  *(v137 + 160) = v123;
  *(v137 + 168) = v125;
  *(v137 + 176) = v47;
  *(v137 + 184) = v48;
  sub_1DD909CD4(v127, v128);
  sub_1DD909CD4(v123, v125);
  v119 = v49;
  sub_1DD909CD4(v47, v49);
  v51 = *(v137 + 144);
  v50 = *(v137 + 152);
  *(v137 + 336) = v51;
  *(v137 + 344) = v50;
  sub_1DD909CD4(v51, v50);
  sub_1DD9B4630();
  sub_1DDA14E80();
  sub_1DD909D28(v51, v50);
  v53 = *(v137 + 160);
  v52 = *(v137 + 168);
  *(v137 + 336) = v53;
  *(v137 + 344) = v52;
  sub_1DD909CD4(v53, v52);
  sub_1DDA14E80();
  sub_1DD909D28(v53, v52);
  v55 = *(v137 + 176);
  v54 = *(v137 + 184);
  *(v137 + 336) = v55;
  *(v137 + 344) = v54;
  sub_1DD909CD4(v55, v54);
  sub_1DDA14E80();
  sub_1DD909D28(v55, v54);
  swift_arrayDestroy();
  sub_1DDA13370();
  swift_allocObject();
  v139 = sub_1DDA13360() | 0x4000000000000000;
  v117 = v139;
  v56 = sub_1DDA14E70();
  v58 = v137;
  if (v57 >> 60 == 15)
  {
    goto LABEL_23;
  }

  v59 = v57 >> 62;
  if ((v57 >> 62) > 1)
  {
    if (v59 == 3)
    {
      goto LABEL_22;
    }

    v60 = *(v56 + 16);
    v61 = *(v56 + 24);
  }

  else
  {
    if (!v59)
    {
      if ((v57 & 0xFF000000000000) == 0)
      {
LABEL_17:
        sub_1DD90D440(v56, v57);
        v58 = v137;
        v46 = v121;
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    v60 = v56;
    v61 = v56 >> 32;
  }

  if (v60 == v61)
  {
    goto LABEL_22;
  }

LABEL_25:
  v118 = v56;
  v73 = v57;
  sub_1DDA135A0();
  *(v137 + 400) = 0;
  *(v137 + 408) = v139;
  sub_1DD909CD4(0, v139);
  sub_1DDA14E80();
  sub_1DD90D440(v118, v73);
  sub_1DD909D28(*(v137 + 400), *(v137 + 408));
  sub_1DD909D28(0, v139);
  v138 = xmmword_1DDA16330;
  v56 = sub_1DDA14E70();
  v58 = v137;
  v79 = v78;
  while (1)
  {
    v57 = v79;
    if (v79 >> 60 == 15)
    {
      v117 = 0xC000000000000000;
      goto LABEL_23;
    }

    v80 = v79 >> 62;
    if ((v57 >> 62) > 1)
    {
      break;
    }

    if (v80)
    {
      v81 = v56;
      v82 = v56 >> 32;
      goto LABEL_34;
    }

    if ((v57 & 0xFF000000000000) == 0)
    {
      v117 = 0xC000000000000000;
      goto LABEL_17;
    }

LABEL_35:
    v83 = v56;
    v84 = v57;
    sub_1DDA135A0();
    *(v137 + 400) = v138;
    sub_1DD909CD4(v138, *(&v138 + 1));
    sub_1DDA14E80();
    sub_1DD90D440(v83, v84);
    sub_1DD909D28(*(v137 + 400), *(v137 + 408));
    sub_1DD909D28(v138, *(&v138 + 1));
    v138 = xmmword_1DDA16330;
    v56 = sub_1DDA14E70();
    v79 = v85;
    v58 = v137;
  }

  if (v80 != 2)
  {
    goto LABEL_37;
  }

  v81 = *(v56 + 16);
  v82 = *(v56 + 24);
LABEL_34:
  if (v81 != v82)
  {
    goto LABEL_35;
  }

LABEL_37:
  v117 = 0xC000000000000000;
  v58 = v137;
LABEL_22:
  sub_1DD90D440(v56, v57);
LABEL_23:
  v62 = sub_1DD901910(2573, 0xE200000000000000);
  v64 = v63;
  *(v58 + 352) = v62;
  *(v58 + 360) = v63;
  sub_1DDA14E80();
  v116 = v62;
  v65 = *(v58 + 432);
  if (*(v65 + 48) != 255)
  {
    v66 = *(v58 + 241);
    v67 = *(v58 + 520);
    *(v58 + 192) = *(v58 + 504);
    *(v58 + 208) = v67;
    *(v58 + 224) = *(v58 + 536);
    *(v58 + 240) = v66 & 1;
    v140[0] = 11565;
    v140[1] = 0xE200000000000000;
    sub_1DD90ADB4(v65, v58 + 248, &qword_1ECD83838, &qword_1DDA1B498);
    MEMORY[0x1E12B7AB0](v131, v130);
    MEMORY[0x1E12B7AB0](2573, 0xE200000000000000);
    v68 = sub_1DD901910(v140[0], v140[1]);
    v70 = v69;
    v114 = sub_1DD901910(0xD00000000000002FLL, 0x80000001DDA28A90);
    v115 = v71;
    sub_1DDA13230();
    swift_allocObject();
    sub_1DDA13220();
    sub_1DD9B4684();
    v72 = sub_1DDA13210();
    v75 = v74;
    v110 = v72;

    *(v58 + 48) = v68;
    *(v58 + 56) = v70;
    v108 = v68;
    *(v58 + 64) = v114;
    *(v58 + 72) = v115;
    *(v58 + 80) = v110;
    *(v58 + 88) = v75;
    *(v58 + 96) = v116;
    *(v58 + 104) = v64;
    sub_1DD909CD4(v68, v70);
    sub_1DD909CD4(v114, v115);
    v107 = v75;
    sub_1DD909CD4(v110, v75);
    sub_1DD909CD4(v116, v64);
    v76 = v68;
    *(v58 + 384) = v68;
    *(v58 + 392) = v70;
    v77 = v70;
    sub_1DD909CD4(v76, v70);
    sub_1DDA14E80();
    sub_1DD909D28(v76, v70);
    v86 = *(v137 + 64);
    v87 = *(v137 + 72);
    *(v137 + 384) = v86;
    *(v137 + 392) = v87;
    v88 = v86;
    sub_1DD909CD4(v86, v87);
    sub_1DDA14E80();
    sub_1DD909D28(v88, v87);
    v89 = *(v137 + 80);
    v90 = *(v137 + 88);
    *(v137 + 384) = v89;
    *(v137 + 392) = v90;
    v91 = v89;
    sub_1DD909CD4(v89, v90);
    sub_1DDA14E80();
    sub_1DD909D28(v91, v90);
    v92 = *(v137 + 96);
    v93 = *(v137 + 104);
    *(v137 + 384) = v92;
    *(v137 + 392) = v93;
    v94 = v92;
    sub_1DD909CD4(v92, v93);
    sub_1DDA14E80();
    v58 = v137;
    v95 = *(v137 + 432);
    sub_1DD909D28(v94, v93);
    sub_1DD909D28(v108, v77);
    sub_1DD909D28(v114, v115);
    sub_1DD909D28(v110, v107);
    sub_1DD90D378(v95, &qword_1ECD83838, &qword_1DDA1B498);
    swift_arrayDestroy();
    v46 = v121;
  }

  v112 = v64;
  v113 = v47;
  v140[0] = 11565;
  v140[1] = 0xE200000000000000;
  MEMORY[0x1E12B7AB0](v131, v130);

  MEMORY[0x1E12B7AB0](168635693, 0xE400000000000000);
  v96 = sub_1DD901910(v140[0], v140[1]);
  v98 = v97;
  *(v58 + 368) = v96;
  *(v58 + 376) = v97;
  sub_1DDA14E80();
  v99 = *(v58 + 696);
  v100 = *(v58 + 688);
  v101 = v58;
  v111 = *(v58 + 680);
  v102 = *(v58 + 664);
  v103 = *(v58 + 632);
  v105 = v58 + 416;
  v104 = *(v58 + 416);
  v109 = *(v105 + 8);
  sub_1DD909D28(0, v117);
  sub_1DD909D28(v127, v128);
  sub_1DD909D28(v123, v125);
  sub_1DD909D28(v113, v119);
  sub_1DD909D28(v116, v112);

  sub_1DD909D28(v96, v98);
  (*(v100 + 16))(v104, v99, v111);
  v129(v109, v102, v103);
  [v46 closeFile];

  v133(v102, v103);
  (*(v100 + 8))(v99, v111);

  v106 = *(v101 + 8);

  return v106();
}

void sub_1DD98F07C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v45 = a1;
  v47 = a5;
  v48 = a6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83810, &qword_1DDA1B488);
  v42 = *(v50 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v40 - v10;
  v11 = sub_1DDA134E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = a2[5];
  v18 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v17);
  v46 = (*(v18 + 24))(a3, a4, v17, v18);
  v19 = *(v12 + 16);
  v19(v16, a4, v11);
  v19(&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v44, v11);
  v20 = v42;
  (*(v42 + 16))(v49, v45, v50);
  sub_1DD929A8C(a2, v52);
  v21 = *(v12 + 80);
  v22 = (v21 + 16) & ~v21;
  v23 = (v13 + v21 + v22) & ~v21;
  v24 = v20;
  v25 = (v13 + *(v20 + 80) + v23) & ~*(v20 + 80);
  v26 = (v43 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = *(v12 + 32);
  v28(v27 + v22, v16, v11);
  v28(v27 + v23, v41, v11);
  (*(v24 + 32))(v27 + v25, v49, v50);
  v29 = (v27 + v26);
  v30 = v52[1];
  *v29 = v52[0];
  v29[1] = v30;
  v29[2] = v53[0];
  *(v29 + 41) = *(v53 + 9);
  v31 = type metadata accessor for DocumentRegistrationURLSessionDelegate();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_data] = xmmword_1DDA16330;
  v33 = &v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileSize];
  *v33 = 0;
  v33[8] = 1;
  v34 = &v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_update];
  v35 = v48;
  *v34 = v47;
  v34[1] = v35;
  v36 = &v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_completion];
  *v36 = sub_1DD9B44A0;
  v36[1] = v27;
  v37 = &v32[OBJC_IVAR____TtC5Anvil38DocumentRegistrationURLSessionDelegate_fileDescriptor];
  *v37 = 0;
  v37[4] = 1;
  *v33 = 0;
  v33[8] = 1;
  v51.receiver = v32;
  v51.super_class = v31;
  v38 = v46;

  v39 = objc_msgSendSuper2(&v51, sel_init);
  [v38 setDelegate_];

  [v38 resume];
}

void sub_1DD98F464(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a7;
  v63 = a3;
  v61 = a2;
  v59 = a1;
  v64[1] = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83800, &qword_1DDA1B438);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v60 = (&v53 - v14);
  v15 = sub_1DDA134E0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = [objc_opt_self() defaultManager];
  v21 = sub_1DDA13470();
  v64[0] = 0;
  v22 = [v20 removeItemAtURL:v21 error:v64];

  if (v22)
  {
    v23 = v64[0];
    v24 = v63;
    if (a4)
    {
LABEL_3:
      v25 = a4;
      if (qword_1ECD827B0 != -1)
      {
        swift_once();
      }

      v26 = sub_1DDA14810();
      __swift_project_value_buffer(v26, qword_1ECDA20F8);
      v27 = a4;
      v28 = sub_1DDA147F0();
      v29 = sub_1DDA14EE0();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        v32 = a4;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v30 + 4) = v33;
        *v31 = v33;
        _os_log_impl(&dword_1DD8F8000, v28, v29, "Received error response: %@", v30, 0xCu);
        sub_1DD90D378(v31, &unk_1ECD83100, &unk_1DDA185C0);
        MEMORY[0x1E12B8CE0](v31, -1, -1);
        MEMORY[0x1E12B8CE0](v30, -1, -1);
      }

      v64[0] = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83810, &qword_1DDA1B488);
      sub_1DDA14CE0();
      return;
    }
  }

  else
  {
    v57 = a8;
    v34 = v64[0];
    v35 = sub_1DDA13410();

    swift_willThrow();
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v36 = sub_1DDA14810();
    __swift_project_value_buffer(v36, qword_1ECDA20F8);
    (*(v16 + 16))(v19, a6, v15);
    v37 = v35;
    v38 = sub_1DDA147F0();
    v39 = sub_1DDA14EE0();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v56 = v16;
      v41 = v40;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64[0] = v55;
      *v41 = 136315394;
      sub_1DD9B48D0(&qword_1ECD82CE8, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v53 = v38;
      v42 = sub_1DDA15400();
      v43 = v15;
      v45 = v44;
      (*(v56 + 8))(v19, v43);
      v46 = sub_1DD93FA54(v42, v45, v64);

      *(v41 + 4) = v46;
      *(v41 + 12) = 2112;
      v47 = v35;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 14) = v48;
      v50 = v53;
      v49 = v54;
      *v54 = v48;
      _os_log_impl(&dword_1DD8F8000, v50, v39, "Unable to delete temporary client file for: %s with error %@", v41, 0x16u);
      sub_1DD90D378(v49, &unk_1ECD83100, &unk_1DDA185C0);
      MEMORY[0x1E12B8CE0](v49, -1, -1);
      v51 = v55;
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1E12B8CE0](v51, -1, -1);
      MEMORY[0x1E12B8CE0](v41, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v19, v15);
    }

    v24 = v63;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  if (v61 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v52 = v60;
    if (v24)
    {
      sub_1DD98D3BC(v59, v61, v60);
      sub_1DD90ADB4(v52, v58, &qword_1ECD83800, &qword_1DDA1B438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83810, &qword_1DDA1B488);
      sub_1DDA14CF0();
      sub_1DD90D378(v52, &qword_1ECD83800, &qword_1DDA1B438);
      return;
    }
  }

  __break(1u);
}

id sub_1DD98FD08(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DDA13470();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1DDA134E0();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1DDA13410();

    swift_willThrow();
    v9 = sub_1DDA134E0();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_1DD98FE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83648, &qword_1DDA1B1B8);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83670, &qword_1DDA1B1E8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD98FF80, 0, 0);
}

uint64_t sub_1DD98FF80()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD83670, &qword_1DDA1B1E8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83678, &qword_1DDA1B1F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD83670, &qword_1DDA1B1E8);
  if (v1 == 1)
  {
    v6 = v0[18];
    v7 = v0[16];
    (*(v0[14] + 16))(v0[15], v0[12], v0[13]);
    sub_1DD90D2A4(&qword_1ECD83680, &qword_1ECD83648, &qword_1DDA1B1B8, MEMORY[0x1E69E8918]);
    sub_1DDA14DC0();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_1DD90AE1C(v7, v6, &qword_1ECD83670, &qword_1DDA1B1E8);
  }

  v8 = v0[18];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[11];
    swift_endAccess();
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = sub_1DD90D2A4(&qword_1ECD83688, &qword_1ECD83678, &qword_1DDA1B1F0, MEMORY[0x1E69E8910]);
    v13 = swift_task_alloc();
    v0[19] = v13;
    *v13 = v0;
    v13[1] = sub_1DD990288;
    v14 = v0[11];

    return MEMORY[0x1EEE6D8C8](v14, v3, v12);
  }
}

uint64_t sub_1DD990288()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD9B4F90, 0, 0);
  }

  else
  {
    swift_endAccess();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DD9903E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83380, &qword_1DDA1A288);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83388, &qword_1DDA1A298);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1DD990504, 0, 0);
}

uint64_t sub_1DD990504()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  sub_1DD90ADB4(v1, v2, &qword_1ECD83388, &qword_1DDA1A298);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83390, &qword_1DDA1A2A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_1DD90D378(v2, &qword_1ECD83388, &qword_1DDA1A298);
  if (v1 == 1)
  {
    v6 = v0[18];
    v7 = v0[16];
    (*(v0[14] + 16))(v0[15], v0[12], v0[13]);
    sub_1DD90D2A4(&qword_1ECD83860, &qword_1ECD83380, &qword_1DDA1A288, MEMORY[0x1E69E8878]);
    sub_1DDA14DC0();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_1DD90AE1C(v7, v6, &qword_1ECD83388, &qword_1DDA1A298);
  }

  v8 = v0[18];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[11];
    swift_endAccess();
    v10 = sub_1DDA13BD0();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = sub_1DD90D2A4(&qword_1ECD83868, &qword_1ECD83390, &qword_1DDA1A2A0, MEMORY[0x1E69E8868]);
    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v14[1] = sub_1DD990840;
    v15 = v0[11];

    return MEMORY[0x1EEE6D8C8](v15, v3, v13);
  }
}

uint64_t sub_1DD990840()
{
  v2 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD99099C, 0, 0);
  }

  else
  {
    swift_endAccess();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1DD99099C()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD990A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[51] = a8;
  v8[52] = v14;
  v8[49] = a6;
  v8[50] = a7;
  v8[47] = a4;
  v8[48] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v8[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  v8[54] = swift_task_alloc();
  v10 = sub_1DDA13420();
  v8[55] = v10;
  v8[56] = *(v10 - 8);
  v8[57] = swift_task_alloc();
  v11 = sub_1DDA134E0();
  v8[58] = v11;
  v8[59] = *(v11 - 8);
  v8[60] = swift_task_alloc();
  v8[61] = swift_task_alloc();
  v8[62] = type metadata accessor for CreateSessionResponse(0);
  v8[63] = swift_task_alloc();
  v8[64] = swift_task_alloc();
  v8[65] = swift_task_alloc();
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v8[68] = swift_task_alloc();
  v8[69] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  v8[70] = swift_task_alloc();
  sub_1DDA14B60();
  v8[71] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD990CD4, a4, 0);
}

uint64_t sub_1DD990CD4()
{
  v1 = v0[49];
  v2 = v0[47];
  v0[46] = MEMORY[0x1E69E7CC8];
  __swift_project_boxed_opaque_existential_1(v2 + 22, v2[25]);
  swift_beginAccess();
  sub_1DD928DF4((v2 + 27), (v0 + 2));
  v3 = sub_1DD913FF8();
  v5 = v4;
  v0[72] = v4;
  sub_1DD9291B0((v0 + 2));
  v6 = v2[18];
  v0[73] = v6;
  v7 = v2[19];
  v0[74] = v7;
  v8 = swift_task_alloc();
  v0[75] = v8;
  *v8 = v0;
  v8[1] = sub_1DD990DFC;
  v9 = v0[48];

  return sub_1DD911340(v3, v5, v6, v7, v9, v1);
}

uint64_t sub_1DD990DFC(uint64_t a1)
{
  v2 = *(*v1 + 376);
  *(*v1 + 608) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD990F30, v2, 0);
}

uint64_t sub_1DD990F30()
{
  v15 = v0;
  v1 = v0[76];
  v3 = v0[48];
  v2 = v0[49];
  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v4;
  sub_1DD911E90(v1, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, &v14);

  v0[46] = v14;
  v0[37] = 0xD000000000000018;
  v0[38] = 0x80000001DDA262D0;
  v0[39] = v3;
  v0[40] = v2;
  sub_1DDA13230();
  swift_allocObject();

  sub_1DDA13220();
  sub_1DD9B2808();
  v6 = sub_1DDA13210();
  v8 = v7;

  v9 = v0[47];

  sub_1DDA14B50();
  v10 = sub_1DDA14B30();
  v12 = v11;
  sub_1DD909D28(v6, v8);
  sub_1DD9C70C8(v10, v12, 0xD000000000000022, 0x80000001DDA26990);
  v0[77] = v9[45];
  v0[78] = v9[14];
  v0[79] = v9[15];

  return MEMORY[0x1EEE6DFA0](sub_1DD991138, 0, 0);
}

uint64_t sub_1DD991138()
{
  v1 = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[68];
  v5 = sub_1DDA14D60();
  v0[80] = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v0[81] = v7;
  v0[82] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v4, 1, 1, v5);
  v0[83] = sub_1DDA14D40();

  v8 = sub_1DDA14D30();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  v9[5] = v1;
  v9[6] = v3;
  v11 = sub_1DD982A18(0, 0, v4, &unk_1DDA1B3E8, v9);
  v0[84] = v11;
  v12 = swift_task_alloc();
  v0[85] = v12;
  *v12 = v0;
  v12[1] = sub_1DD9912CC;
  v13 = v0[70];
  v14 = v0[69];

  return MEMORY[0x1EEE6DA40](v13, v11, v14);
}

uint64_t sub_1DD9912CC()
{
  v1 = *(*v0 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1DD9913F8, v1, 0);
}

uint64_t sub_1DD9913F8()
{
  v1 = *(v0 + 560);
  v2 = type metadata accessor for SessionRegistry.SessionInfo(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_1DD90D378(v1, &qword_1ECD82FA0, &qword_1DDA18948);
  if (v3 == 1)
  {
    v4 = *(v0 + 400);
    if (v4 >> 62)
    {
      if (sub_1DDA15190() >= 2)
      {
        goto LABEL_4;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
    {
LABEL_4:
      v5 = *(v0 + 480);
      v6 = *(v0 + 464);
      v7 = *(v0 + 472);
      v9 = *(v0 + 448);
      v8 = *(v0 + 456);
      v10 = *(v0 + 440);
      __swift_project_boxed_opaque_existential_1((*(v0 + 376) + 176), *(*(v0 + 376) + 200));
      sub_1DD910E48(v5);
      *(v0 + 352) = 0x6E6F69737365732FLL;
      *(v0 + 360) = 0xE900000000000073;
      (*(v9 + 104))(v8, *MEMORY[0x1E6968F70], v10);
      sub_1DD9313D4();
      sub_1DDA134D0();
      (*(v9 + 8))(v8, v10);
      v11 = *(v7 + 8);
      *(v0 + 688) = v11;
      *(v0 + 696) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v11(v5, v6);
      v12 = *(v0 + 368);
      *(v0 + 704) = v12;
      v13 = swift_task_alloc();
      *(v0 + 712) = v13;
      *v13 = v0;
      v13[1] = sub_1DD991784;
      v14 = *(v0 + 488);

      return sub_1DD950D48(v14, 0, 0xF000000000000000, 0, v12, 0, 1, 0);
    }
  }

  v17 = *(v0 + 408);
  v16 = *(v0 + 416);
  v18 = *(v0 + 400);
  v27 = *(v0 + 384);
  v28 = *(v0 + 584);
  v19 = *(v0 + 376);
  v21 = sub_1DD9B48D0(&qword_1ECD82F88, v20, type metadata accessor for Session, &unk_1DDA1B150);
  sub_1DD928DF4(v19 + 216, v0 + 96);
  v22 = swift_task_alloc();
  *(v0 + 752) = v22;
  *(v22 + 16) = v18;
  *(v22 + 24) = v16;
  *(v22 + 32) = v19;
  *(v22 + 40) = v0 + 96;
  *(v22 + 48) = v28;
  *(v22 + 64) = v27;
  *(v22 + 80) = v17;
  v23 = swift_task_alloc();
  *(v0 + 760) = v23;
  *v23 = v0;
  v23[1] = sub_1DD992264;
  v24 = MEMORY[0x1E69E7CA8] + 8;
  v25 = MEMORY[0x1E69E7CA8] + 8;
  v26 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v23, v24, v25, v19, v21, &unk_1DDA1B3F8, v22, v26);
}

uint64_t sub_1DD991784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[90] = a1;
  v5[91] = a2;
  v5[92] = v3;

  if (v3)
  {
    v6 = sub_1DD991C3C;
  }

  else
  {

    v6 = sub_1DD9918E0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD9918E0()
{
  v28 = v0;
  v1 = *(v0 + 736);
  sub_1DD9B48D0(&qword_1ECD837F8, 255, type metadata accessor for CreateSessionResponse, &unk_1DDA1CBD4);
  sub_1DDA13170();
  if (v1)
  {
    sub_1DD909D28(*(v0 + 720), *(v0 + 728));
    *(v0 + 744) = v1;
    v2 = *(v0 + 376);
    (*(v0 + 688))(*(v0 + 488), *(v0 + 464));
    v3 = sub_1DD992154;
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 520);
    v5 = *(v0 + 512);
    v6 = sub_1DDA14810();
    __swift_project_value_buffer(v6, qword_1ECDA20F8);
    sub_1DD9B4C84(v4, v5, type metadata accessor for CreateSessionResponse);
    v7 = sub_1DDA147F0();
    v8 = sub_1DDA14ED0();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 728);
    v11 = *(v0 + 720);
    v12 = *(v0 + 688);
    v13 = *(v0 + 512);
    if (v9)
    {
      v14 = *(v0 + 504);
      v25 = *(v0 + 464);
      v26 = *(v0 + 488);
      v15 = swift_slowAlloc();
      v24 = v12;
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      sub_1DD9B4C84(v13, v14, type metadata accessor for CreateSessionResponse);
      v17 = sub_1DDA14B70();
      v19 = v18;
      sub_1DD9B4918(v13, type metadata accessor for CreateSessionResponse);
      v20 = sub_1DD93FA54(v17, v19, &v27);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1DD8F8000, v7, v8, "Decoded response: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E12B8CE0](v16, -1, -1);
      MEMORY[0x1E12B8CE0](v15, -1, -1);
      sub_1DD909D28(v11, v10);

      v24(v26, v25);
    }

    else
    {
      v21 = *(v0 + 488);
      v22 = *(v0 + 464);
      sub_1DD909D28(*(v0 + 720), *(v0 + 728));

      sub_1DD9B4918(v13, type metadata accessor for CreateSessionResponse);
      v12(v21, v22);
    }

    v2 = *(v0 + 376);
    sub_1DD9B4978(*(v0 + 520), *(v0 + 528), type metadata accessor for CreateSessionResponse);
    v3 = sub_1DD991CBC;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1DD991C3C()
{
  *(v0 + 744) = *(v0 + 736);
  v1 = *(v0 + 376);
  (*(v0 + 688))(*(v0 + 488), *(v0 + 464));

  return MEMORY[0x1EEE6DFA0](sub_1DD992154, v1, 0);
}

uint64_t sub_1DD991CBC()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 432);
  v3 = *(v0 + 376);
  sub_1DD9B4978(*(v0 + 528), v1, type metadata accessor for CreateSessionResponse);
  v4 = *(v3 + 136);
  v49 = *(v3 + 128);
  v46 = v1[1];
  v47 = *v1;
  sub_1DD928DF4(v3 + 216, v0 + 176);
  v5 = *(v0 + 192);
  *(v0 + 256) = *(v0 + 176);
  *(v0 + 272) = v5;
  *(v0 + 285) = *(v0 + 205);
  sub_1DD9122F0(v2);
  sub_1DD9291B0(v0 + 176);
  v6 = type metadata accessor for Credentials(0);
  v7 = (*(*(v6 - 8) + 48))(v2, 1, v6);
  v8 = *(v0 + 432);
  if (v7 == 1)
  {
    sub_1DD90D378(*(v0 + 432), &qword_1ECD82D20, &qword_1DDA18CE0);
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v9 = Credentials.credentialsID.getter();
    v44 = v10;
    v45 = v9;
    sub_1DD9B4918(v8, type metadata accessor for Credentials);
  }

  v11 = *(v0 + 424);
  sub_1DD90ADB4(*(v0 + 408), v11, &qword_1ECD82F60, &qword_1DDA18890);
  v12 = sub_1DDA13F50();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  v15 = *(v0 + 424);
  if (v14 == 1)
  {
    sub_1DD90D378(*(v0 + 424), &qword_1ECD82F60, &qword_1DDA18890);
    v42 = 0;
  }

  else
  {
    v42 = sub_1DDA13F40();
    (*(v13 + 8))(v15, v12);
  }

  v43 = *(v0 + 536);
  v16 = (v43 + *(*(v0 + 496) + 32));
  v17 = *v16;
  v18 = 0.0;
  if (v17 != 2)
  {
    v18 = v16[1];
  }

  v40 = v14 == 1;
  v41 = v17 == 2;
  v19 = *(v0 + 632);
  v20 = *(v0 + 624);
  v21 = *(v0 + 616);
  v22 = *(v0 + 592);
  v23 = *(v0 + 584);
  v24 = *(v0 + 544);
  (*(v0 + 648))(v24, 1, 1, *(v0 + 640));

  v25 = sub_1DDA14D30();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  *(v26 + 32) = v49;
  *(v26 + 40) = v4;
  *(v26 + 48) = v47;
  *(v26 + 56) = v46;
  *(v26 + 64) = v20;
  *(v26 + 72) = v19;
  *(v26 + 80) = v21;
  *(v26 + 88) = v23;
  *(v26 + 96) = v22;
  *(v26 + 104) = v45;
  *(v26 + 112) = v44;
  *(v26 + 120) = v42;
  *(v26 + 124) = v40;
  *(v26 + 128) = v18;
  *(v26 + 136) = v41;
  sub_1DD982718(0, 0, v24, &unk_1DDA1B400, v26);

  sub_1DD9B4918(v43, type metadata accessor for CreateSessionResponse);
  v29 = *(v0 + 408);
  v28 = *(v0 + 416);
  v30 = *(v0 + 400);
  v48 = *(v0 + 384);
  v50 = *(v0 + 584);
  v31 = *(v0 + 376);
  v33 = sub_1DD9B48D0(&qword_1ECD82F88, v32, type metadata accessor for Session, &unk_1DDA1B150);
  sub_1DD928DF4(v31 + 216, v0 + 96);
  v34 = swift_task_alloc();
  *(v0 + 752) = v34;
  *(v34 + 16) = v30;
  *(v34 + 24) = v28;
  *(v34 + 32) = v31;
  *(v34 + 40) = v0 + 96;
  *(v34 + 48) = v50;
  *(v34 + 64) = v48;
  *(v34 + 80) = v29;
  v35 = swift_task_alloc();
  *(v0 + 760) = v35;
  *v35 = v0;
  v35[1] = sub_1DD992264;
  v36 = MEMORY[0x1E69E7CA8] + 8;
  v37 = MEMORY[0x1E69E7CA8] + 8;
  v38 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v35, v36, v37, v31, v33, &unk_1DDA1B3F8, v34, v38);
}

uint64_t sub_1DD992154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD992264()
{
  v1 = *v0;
  v2 = *(*v0 + 376);

  sub_1DD9291B0(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1DD9923A0, v2, 0);
}

uint64_t sub_1DD9923A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD9924B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 400) = v19;
  *(v8 + 384) = v18;
  *(v8 + 368) = a7;
  *(v8 + 376) = a8;
  *(v8 + 352) = a5;
  *(v8 + 360) = a6;
  *(v8 + 336) = a3;
  *(v8 + 344) = a4;
  *(v8 + 328) = a2;
  sub_1DDA14140();
  *(v8 + 408) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D50, &qword_1DDA18638);
  *(v8 + 416) = v10;
  *(v8 + 424) = *(v10 - 8);
  *(v8 + 432) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  *(v8 + 440) = v11;
  v12 = *(v11 - 8);
  *(v8 + 448) = v12;
  *(v8 + 456) = *(v12 + 64);
  *(v8 + 464) = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  *(v8 + 472) = v13;
  *(v8 + 480) = *(v13 + 64);
  *(v8 + 488) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  v14 = sub_1DDA134E0();
  *(v8 + 528) = v14;
  v15 = *(v14 - 8);
  *(v8 + 536) = v15;
  *(v8 + 544) = *(v15 + 64);
  *(v8 + 552) = swift_task_alloc();
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD992780, a5, 0);
}

uint64_t sub_1DD992780()
{
  v152 = v0;
  v1 = *(v0 + 336);
  if (v1 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DDA15190())
  {
    v3 = 0;
    v4 = *(v0 + 536);
    v147 = v1 & 0xC000000000000001;
    v138 = v1 & 0xFFFFFFFFFFFFFF8;
    v137 = *(v0 + 336) + 32;
    v148 = (v4 + 16);
    v139 = *(v0 + 472);
    v143 = (*(v0 + 424) + 8);
    v146 = (v4 + 8);
    v141 = *(v0 + 352);
    v99 = *(v0 + 544) + 7;
    v140 = v4;
    v142 = *(v0 + 448);
    v145 = i;
    while (v147)
    {
      v8 = MEMORY[0x1E12B7F50](v3, *(v0 + 336));
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_61;
      }

LABEL_13:
      v10 = *v148;
      (*v148)(*(v0 + 568), v8 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_url, *(v0 + 528));
      v150 = v9;
      if ((*(v8 + 16) & 0x80000000) != 0)
      {
        if (qword_1ECD827B0 != -1)
        {
          swift_once();
        }

        v18 = *(v0 + 568);
        v19 = *(v0 + 552);
        v20 = *(v0 + 528);
        v21 = sub_1DDA14810();
        __swift_project_value_buffer(v21, qword_1ECDA20F8);
        v10(v19, v18, v20);
        v22 = sub_1DDA147F0();
        v23 = sub_1DDA14EE0();
        v24 = os_log_type_enabled(v22, v23);
        v25 = *(v0 + 552);
        v26 = *(v0 + 528);
        if (v24)
        {
          v27 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          v151 = v134;
          *v27 = 136315138;
          sub_1DD9B48D0(&qword_1ECD82CE8, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v28 = v3;
          v29 = sub_1DDA15400();
          v31 = v30;
          v7 = *v146;
          (*v146)(v25, v26);
          v32 = v29;
          v3 = v28;
          v33 = sub_1DD93FA54(v32, v31, &v151);

          *(v27 + 4) = v33;
          _os_log_impl(&dword_1DD8F8000, v22, v23, "Invalid file descriptor provided: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v134);
          i = v145;
          MEMORY[0x1E12B8CE0](v134, -1, -1);
          MEMORY[0x1E12B8CE0](v27, -1, -1);
        }

        else
        {

          v7 = *v146;
          (*v146)(v25, v26);
        }

        v82 = *(v0 + 432);
        v83 = *(v0 + 416);
        v1 = *(v0 + 344);
        sub_1DDA140F0();
        sub_1DDA14DF0();

        (*v143)(v82, v83);
        goto LABEL_5;
      }

      v11 = sub_1DD957CEC();
      if (v11 < 1)
      {
        v34 = v3;
        if (qword_1ECD827B0 != -1)
        {
          swift_once();
        }

        v35 = sub_1DDA14810();
        __swift_project_value_buffer(v35, qword_1ECDA20F8);
        v36 = sub_1DDA147F0();
        v37 = sub_1DDA14EE0();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_1DD8F8000, v36, v37, "Unable to get file size.", v38, 2u);
          MEMORY[0x1E12B8CE0](v38, -1, -1);
        }

        v5 = *(v0 + 432);
        v6 = *(v0 + 416);
        v1 = *(v0 + 344);

        sub_1DDA140F0();
        sub_1DDA14DF0();

        (*v143)(v5, v6);
        i = v145;
        v7 = *v146;
        v3 = v34;
LABEL_5:
        v7(*(v0 + 568), *(v0 + 528));
        goto LABEL_6;
      }

      v12 = v11;
      v149 = v8;
      v13 = __swift_project_boxed_opaque_existential_1((v141 + 176), *(v141 + 200));
      sub_1DD929A28((v13 + 1), v0 + 176);
      v14 = *(v0 + 200);
      v15 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v14);
      v16 = (*(v15 + 40))(v14, v15);
      if (v17)
      {
        v1 = *__swift_project_boxed_opaque_existential_1((v141 + 176), *(v141 + 200));
      }

      else
      {
        v1 = v16;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      v39 = v12 / 1000000.0;
      if (v39 == INFINITY)
      {
        goto LABEL_62;
      }

      if (v39 <= -9.22337204e18)
      {
        goto LABEL_63;
      }

      if (v39 >= 9.22337204e18)
      {
        goto LABEL_64;
      }

      v144 = v3;
      if (v1 <= v39)
      {
        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v136 = v12;
        v58 = sub_1DDA14810();
        __swift_project_value_buffer(v58, qword_1ECDA20E0);
        v59 = sub_1DDA147F0();
        v60 = sub_1DDA14EC0();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_1DD8F8000, v59, v60, "Using two phase upload", v61, 2u);
          MEMORY[0x1E12B8CE0](v61, -1, -1);
        }

        v62 = *(v0 + 560);
        v63 = *(v0 + 528);
        v108 = v63;
        v109 = v62;
        v64 = *(v0 + 520);
        v65 = *(v0 + 488);
        v118 = *(v0 + 480);
        v66 = *(v0 + 464);
        v114 = v66;
        v123 = v64;
        v67 = *(v0 + 440);
        v112 = v65;
        v102 = *(v0 + 568);
        v104 = *(v0 + 400);
        v131 = *(v0 + 392);
        v133 = *(v0 + 512);
        v127 = *(v0 + 376);
        v129 = *(v0 + 384);
        v125 = *(v0 + 368);
        v100 = *(v0 + 360);
        v106 = *(v0 + 344);

        v120 = sub_1DDA14D60();
        v116 = *(v120 - 8);
        (*(v116 + 56))(v64, 1, 1, v120);
        v110 = swift_allocObject();
        swift_weakInit();
        v10(v62, v102, v63);
        sub_1DD928DF4(v100, v0 + 16);
        sub_1DD90ADB4(v104, v65, &qword_1ECD82F60, &qword_1DDA18890);
        (*(v142 + 16))(v66, v106, v67);
        v68 = (*(v140 + 80) + 40) & ~*(v140 + 80);
        v69 = (v99 + v68) & 0xFFFFFFFFFFFFFFF8;
        v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF8;
        v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
        v72 = (v71 + 87) & 0xFFFFFFFFFFFFFFF8;
        v73 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
        v74 = (*(v139 + 80) + v73 + 16) & ~*(v139 + 80);
        v119 = (v118 + *(v142 + 80) + v74) & ~*(v142 + 80);
        v75 = swift_allocObject();
        *(v75 + 2) = 0;
        *(v75 + 3) = 0;
        *(v75 + 4) = v110;
        (*(v140 + 32))(&v75[v68], v109, v108);
        *&v75[v69] = v136;
        *&v75[v70] = v149;
        v76 = &v75[v71];
        v77 = *(v0 + 64);
        *(v76 + 2) = *(v0 + 48);
        *(v76 + 3) = v77;
        *(v76 + 4) = *(v0 + 80);
        v78 = *(v0 + 32);
        *v76 = *(v0 + 16);
        *(v76 + 1) = v78;
        v79 = &v75[v72];
        *v79 = v125;
        *(v79 + 1) = v127;
        v80 = &v75[v73];
        *v80 = v129;
        *(v80 + 1) = v131;
        sub_1DD914958(v112, &v75[v74], &qword_1ECD82F60, &qword_1DDA18890);
        (*(v142 + 32))(&v75[v119], v114, v67);
        sub_1DD90ADB4(v123, v133, &qword_1ECD82D30, &qword_1DDA188D0);
        LODWORD(v69) = (*(v116 + 48))(v133, 1, v120);

        v81 = *(v0 + 512);
        if (v69 == 1)
        {
          sub_1DD90D378(*(v0 + 512), &qword_1ECD82D30, &qword_1DDA188D0);
        }

        else
        {
          sub_1DDA14D50();
          (*(v116 + 8))(v81, v120);
        }

        v3 = v144;
        if (*(v75 + 2))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v87 = sub_1DDA14CD0();
          v89 = v88;
          swift_unknownObjectRelease();
        }

        else
        {
          v87 = 0;
          v89 = 0;
        }

        v90 = v146;
        v94 = **(v0 + 328);
        v95 = swift_allocObject();
        *(v95 + 16) = &unk_1DDA1B410;
        *(v95 + 24) = v75;

        if (v89 | v87)
        {
          v96 = v0 + 216;
          *(v0 + 216) = 0;
          *(v0 + 224) = 0;
          *(v0 + 232) = v87;
          *(v0 + 240) = v89;
        }

        else
        {
          v96 = 0;
        }

        i = v145;
        v1 = *(v0 + 520);
        *(v0 + 280) = 1;
        *(v0 + 288) = v96;
        *(v0 + 296) = v94;
        swift_task_create();
      }

      else
      {
        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v40 = sub_1DDA14810();
        __swift_project_value_buffer(v40, qword_1ECDA20E0);
        v41 = sub_1DDA147F0();
        v42 = sub_1DDA14EC0();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1DD8F8000, v41, v42, "Using direct upload", v43, 2u);
          MEMORY[0x1E12B8CE0](v43, -1, -1);
        }

        v105 = *(v0 + 568);
        v44 = *(v0 + 560);
        v45 = *(v0 + 528);
        v46 = *(v0 + 504);
        v135 = *(v0 + 496);
        v47 = *(v0 + 488);
        v113 = v44;
        v117 = *(v0 + 544);
        v48 = *(v0 + 464);
        v111 = v48;
        v115 = *(v0 + 456);
        v49 = *(v0 + 440);
        v107 = *(v0 + 400);
        v130 = *(v0 + 392);
        v126 = v46;
        v128 = *(v0 + 384);
        v122 = *(v0 + 368);
        v124 = *(v0 + 376);
        v101 = *(v0 + 360);
        v103 = *(v0 + 344);

        v121 = sub_1DDA14D60();
        v132 = *(v121 - 8);
        (*(v132 + 56))(v46, 1, 1, v121);
        v50 = swift_allocObject();
        swift_weakInit();
        sub_1DD928DF4(v101, v0 + 96);
        v10(v44, v105, v45);
        (*(v142 + 16))(v48, v103, v49);
        sub_1DD90ADB4(v107, v47, &qword_1ECD82F60, &qword_1DDA18890);
        v51 = (*(v140 + 80) + 160) & ~*(v140 + 80);
        v52 = (v117 + *(v142 + 80) + v51) & ~*(v142 + 80);
        v53 = (v115 + *(v139 + 80) + v52) & ~*(v139 + 80);
        v54 = swift_allocObject();
        v55 = *(v0 + 96);
        *(v54 + 56) = *(v0 + 112);
        v56 = *(v0 + 144);
        *(v54 + 72) = *(v0 + 128);
        *(v54 + 88) = v56;
        *(v54 + 104) = *(v0 + 160);
        *(v54 + 16) = 0;
        *(v54 + 24) = 0;
        *(v54 + 32) = v50;
        *(v54 + 40) = v55;
        *(v54 + 120) = v122;
        *(v54 + 128) = v124;
        *(v54 + 136) = v128;
        *(v54 + 144) = v130;
        *(v54 + 152) = v149;
        (*(v140 + 32))(v54 + v51, v113, v45);
        (*(v142 + 32))(v54 + v52, v111, v49);
        sub_1DD914958(v47, v54 + v53, &qword_1ECD82F60, &qword_1DDA18890);
        sub_1DD90ADB4(v126, v135, &qword_1ECD82D30, &qword_1DDA188D0);
        LODWORD(v52) = (*(v132 + 48))(v135, 1, v121);

        v57 = *(v0 + 496);
        if (v52 == 1)
        {
          sub_1DD90D378(*(v0 + 496), &qword_1ECD82D30, &qword_1DDA188D0);
        }

        else
        {
          sub_1DDA14D50();
          (*(v132 + 8))(v57, v121);
        }

        v3 = v144;
        if (*(v54 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v84 = sub_1DDA14CD0();
          v86 = v85;
          swift_unknownObjectRelease();
        }

        else
        {
          v84 = 0;
          v86 = 0;
        }

        v90 = v146;
        v91 = **(v0 + 328);
        v92 = swift_allocObject();
        *(v92 + 16) = &unk_1DDA1B428;
        *(v92 + 24) = v54;

        if (v86 | v84)
        {
          v93 = v0 + 248;
          *(v0 + 248) = 0;
          *(v0 + 256) = 0;
          *(v0 + 264) = v84;
          *(v0 + 272) = v86;
        }

        else
        {
          v93 = 0;
        }

        i = v145;
        v1 = *(v0 + 504);
        *(v0 + 304) = 1;
        *(v0 + 312) = v93;
        *(v0 + 320) = v91;
        swift_task_create();
      }

      sub_1DD90D378(v1, &qword_1ECD82D30, &qword_1DDA188D0);
      (*v90)(*(v0 + 568), *(v0 + 528));
LABEL_6:
      ++v3;
      if (v150 == i)
      {
        goto LABEL_67;
      }
    }

    if (v3 >= *(v138 + 16))
    {
      goto LABEL_65;
    }

    v8 = *(v137 + 8 * v3);

    v9 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_13;
    }

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
    ;
  }

LABEL_67:

  v97 = *(v0 + 8);

  return v97();
}

uint64_t sub_1DD993834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 888) = v23;
  *(v8 + 880) = v22;
  *(v8 + 848) = v20;
  *(v8 + 864) = v21;
  *(v8 + 840) = a8;
  *(v8 + 832) = a7;
  *(v8 + 824) = a6;
  *(v8 + 816) = a5;
  *(v8 + 808) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8);
  *(v8 + 896) = swift_task_alloc();
  v9 = sub_1DDA13830();
  *(v8 + 904) = v9;
  *(v8 + 912) = *(v9 - 8);
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = swift_task_alloc();
  sub_1DDA14140();
  *(v8 + 936) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D50, &qword_1DDA18638);
  *(v8 + 944) = v10;
  *(v8 + 952) = *(v10 - 8);
  *(v8 + 960) = swift_task_alloc();
  v11 = sub_1DDA14180();
  *(v8 + 968) = v11;
  v12 = *(v11 - 8);
  *(v8 + 976) = v12;
  *(v8 + 984) = *(v12 + 64);
  *(v8 + 992) = swift_task_alloc();
  *(v8 + 1000) = swift_task_alloc();
  *(v8 + 1008) = type metadata accessor for UploadDocumentResponse(0);
  *(v8 + 1016) = swift_task_alloc();
  *(v8 + 1024) = swift_task_alloc();
  *(v8 + 1032) = swift_task_alloc();
  v13 = sub_1DDA13140();
  *(v8 + 1040) = v13;
  *(v8 + 1048) = *(v13 - 8);
  *(v8 + 1056) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  *(v8 + 1064) = v14;
  v15 = *(v14 - 8);
  *(v8 + 1072) = v15;
  *(v8 + 1080) = *(v15 + 64);
  *(v8 + 1088) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  *(v8 + 1096) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  *(v8 + 1104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  *(v8 + 1112) = swift_task_alloc();
  v16 = sub_1DDA134E0();
  *(v8 + 1120) = v16;
  v17 = *(v16 - 8);
  *(v8 + 1128) = v17;
  *(v8 + 1136) = *(v17 + 64);
  *(v8 + 1144) = swift_task_alloc();
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  *(v8 + 1168) = swift_task_alloc();
  *(v8 + 1176) = type metadata accessor for TwoPhaseUploadDocumentResponse(0);
  *(v8 + 1184) = swift_task_alloc();
  *(v8 + 1192) = swift_task_alloc();
  *(v8 + 1200) = swift_task_alloc();
  *(v8 + 1208) = swift_task_alloc();
  *(v8 + 1216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  *(v8 + 1224) = swift_task_alloc();
  *(v8 + 1232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  *(v8 + 1240) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD993D7C, 0, 0);
}

uint64_t sub_1DD993D7C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[156] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (*(__swift_project_boxed_opaque_existential_1((Strong + 176), *(Strong + 200)) + 48) == 1)
    {

      v0[87] = sub_1DD9403A4(MEMORY[0x1E69E7CC0]);
      v0[88] = &unk_1DDA1B4D0;
      v0[89] = v2;
      v3 = swift_task_alloc();
      v0[157] = v3;
      *v3 = v0;
      v3[1] = sub_1DD994228;

      return sub_1DD9424E4(&unk_1F58EC8A0);
    }

    else
    {
      v0[87] = 0;
      v0[88] = 0;
      v0[89] = 0;
      v6 = sub_1DD9404B4(MEMORY[0x1E69E7CC0]);
      v7 = v0[156];
      v8 = v0[153];
      v9 = v0[104];
      v10 = v0[103];
      v0[159] = sub_1DD98A3E8(v6);
      v0[160] = 0;

      __swift_project_boxed_opaque_existential_1(v7 + 22, v7[25]);
      sub_1DD9895F8(v10, *(v9 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_metadata), (v0 + 2));
      v11 = v7[45];
      v0[161] = v11;
      v13 = v7[14];
      v12 = v7[15];
      v14 = sub_1DDA14D60();
      v0[162] = v14;
      v15 = *(v14 - 8);
      v16 = *(v15 + 56);
      v0[163] = v16;
      v0[164] = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;

      v16(v8, 1, 1, v14);
      v0[165] = sub_1DDA14D40();

      v17 = sub_1DDA14D30();
      v18 = swift_allocObject();
      v19 = MEMORY[0x1E69E85E0];
      v18[2] = v17;
      v18[3] = v19;
      v18[4] = v13;
      v18[5] = v12;
      v18[6] = v11;
      v20 = sub_1DD982A18(0, 0, v8, &unk_1DDA1B4A0, v18);
      v0[166] = v20;
      v21 = swift_task_alloc();
      v0[167] = v21;
      *v21 = v0;
      v21[1] = sub_1DD994530;
      v22 = v0[155];
      v23 = v0[154];

      return MEMORY[0x1EEE6DA40](v22, v20, v23);
    }
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1DD994228(uint64_t a1)
{
  *(*v1 + 1264) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD994328, 0, 0);
}

uint64_t sub_1DD994328()
{
  v1 = v0[156];
  v2 = v0[153];
  v3 = v0[104];
  v4 = v0[103];
  v0[159] = sub_1DD98A3E8(v0[158]);
  v0[160] = 0;

  __swift_project_boxed_opaque_existential_1(v1 + 22, v1[25]);
  sub_1DD9895F8(v4, *(v3 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_metadata), (v0 + 2));
  v5 = v1[45];
  v0[161] = v5;
  v7 = v1[14];
  v6 = v1[15];
  v8 = sub_1DDA14D60();
  v0[162] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v0[163] = v10;
  v0[164] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;

  v10(v2, 1, 1, v8);
  v0[165] = sub_1DDA14D40();

  v11 = sub_1DDA14D30();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v7;
  v12[5] = v6;
  v12[6] = v5;
  v14 = sub_1DD982A18(0, 0, v2, &unk_1DDA1B4A0, v12);
  v0[166] = v14;
  v15 = swift_task_alloc();
  v0[167] = v15;
  *v15 = v0;
  v15[1] = sub_1DD994530;
  v16 = v0[155];
  v17 = v0[154];

  return MEMORY[0x1EEE6DA40](v16, v14, v17);
}

uint64_t sub_1DD994530()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD994648, 0, 0);
}

uint64_t sub_1DD994648()
{
  v1 = v0[155];

  v2 = type metadata accessor for SessionRegistry.SessionInfo(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[155];
  if (v3 == 1)
  {
    sub_1DD90D378(v0[155], &qword_1ECD82FA0, &qword_1DDA18948);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);

    sub_1DD9B4918(v4, type metadata accessor for SessionRegistry.SessionInfo);
  }

  v0[169] = v6;
  v0[168] = v5;
  v7 = v0[109];
  v8 = v0[107];
  v9 = v0[105];
  __swift_project_boxed_opaque_existential_1((v0[156] + 176), *(v0[156] + 200));
  v0[170] = *v9;
  v10 = sub_1DD913FF8();
  v12 = v11;
  v0[171] = v11;
  v13 = swift_task_alloc();
  v0[172] = v13;
  *v13 = v0;
  v13[1] = sub_1DD9947E0;
  v14 = v0[108];
  v15 = v0[106];

  return sub_1DD911340(v10, v12, v15, v8, v14, v7);
}

uint64_t sub_1DD9947E0(uint64_t a1)
{
  *(*v1 + 1384) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD994900, 0, 0);
}

uint64_t sub_1DD994900()
{
  v19 = v0;
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1280);
  v3 = *(v0 + 1272);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v1;
  sub_1DD911E90(v3, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, &v18);

  v5 = v18;
  *(v0 + 1392) = v18;
  if (v2)
  {
  }

  else
  {
    v7 = *(v0 + 1352);
    v8 = *(v0 + 1344);
    v9 = *(v0 + 1168);
    __swift_project_boxed_opaque_existential_1((*(v0 + 1248) + 176), *(*(v0 + 1248) + 200));
    sub_1DD983354(v8, v7, 0x7364616F6C70752FLL, 0xE800000000000000, v9);
    sub_1DD9B46D8(v0 + 16, v0 + 112);
    v10 = *(v0 + 64);
    *(v0 + 240) = *(v0 + 48);
    *(v0 + 256) = v10;
    *(v0 + 272) = *(v0 + 80);
    *(v0 + 281) = *(v0 + 89);
    v11 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v11;
    sub_1DD9B46D8(v0 + 16, v0 + 304);
    sub_1DD9B4734();
    v12 = sub_1DDA13210();
    *(v0 + 1400) = v12;
    *(v0 + 1408) = v13;
    v14 = v12;
    v15 = v13;
    sub_1DD9B4788(v0 + 16);
    v16 = swift_task_alloc();
    *(v0 + 1416) = v16;
    *v16 = v0;
    v16[1] = sub_1DD994B60;
    v17 = *(v0 + 1168);

    return sub_1DD950D48(v17, v14, v15, 0, v5, 0, 1, 0);
  }
}

uint64_t sub_1DD994B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[178] = a1;
  v5[179] = a2;
  v5[180] = v3;

  if (v3)
  {
    sub_1DD9B4788((v5 + 2));

    v6 = sub_1DD995904;
  }

  else
  {

    v6 = sub_1DD994CD0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD994CD0()
{
  v89 = v0;
  v1 = *(v0 + 1440);
  sub_1DD9B48D0(&qword_1ECD83850, 255, type metadata accessor for TwoPhaseUploadDocumentResponse, &unk_1DDA218F0);
  sub_1DDA13170();
  if (v1)
  {
    v79 = *(v0 + 1432);
    v2 = *(v0 + 1424);
    v3 = *(v0 + 1408);
    v4 = *(v0 + 1400);
    v5 = *(v0 + 1128);
    v81 = *(v0 + 1120);
    v84 = *(v0 + 1168);
    sub_1DD9B4788(v0 + 16);

    sub_1DD909D28(v4, v3);
    sub_1DD909D28(v2, v79);
    sub_1DD9B4788(v0 + 16);
    (*(v5 + 8))(v84, v81);
    *(v0 + 1656) = v1;
    *(v0 + 784) = v1;
    v6 = v1;
    *(v0 + 1664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
    if (swift_dynamicCast())
    {
      v7 = *(v0 + 448);
      v9 = *(v0 + 456);
      v8 = *(v0 + 464);
      if (v7)
      {

        sub_1DD9B41AC(v7, v9, v8, MEMORY[0x1E69E7CF8]);
      }

      else
      {

        sub_1DD9B41AC(0, v9, v8, MEMORY[0x1E69E7CF8]);
        v7 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 1672) = v7;

      v34 = *(v7 + 16);
      *(v0 + 1680) = v34;
      if (v34)
      {
        v35 = *(v0 + 696);
        *(v0 + 1688) = v35;
        if (v35)
        {
          *(v0 + 1696) = 0;
          v36 = *(v0 + 1672);
          v37 = *(v36 + 48);
          *(v0 + 1704) = v37;
          v38 = *(v36 + 40);
          v39 = *(v36 + 32);

          v40 = swift_task_alloc();
          *(v0 + 1712) = v40;
          *v40 = v0;
          v40[1] = sub_1DD998C98;

          return sub_1DD948CE8(v38, v37, v39, v35);
        }

        *(v0 + 1696) = v34 - 1;
      }
    }

    *(v0 + 792) = sub_1DD9C4E98(*(v0 + 1656));
    v41 = sub_1DDA13840();
    v42 = swift_dynamicCast();
    v43 = *(*(v41 - 8) + 56);
    v44 = *(v0 + 896);
    if (v42)
    {
      v45 = *(v41 - 8);
      v43(*(v0 + 896), 0, 1, v41);
      if ((*(v45 + 88))(v44, v41) == *MEMORY[0x1E69DA4A0])
      {
        v46 = *(v0 + 928);
        v47 = *(v0 + 912);
        v48 = *(v0 + 904);
        v49 = *(v0 + 896);
        (*(v45 + 96))(v49, v41);
        (*(v47 + 32))(v46, v49, v48);
        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v50 = *(v0 + 928);
        v51 = *(v0 + 920);
        v52 = *(v0 + 912);
        v53 = *(v0 + 904);
        v54 = sub_1DDA14810();
        __swift_project_value_buffer(v54, qword_1ECDA20E0);
        (*(v52 + 16))(v51, v50, v53);
        v55 = sub_1DDA147F0();
        v56 = sub_1DDA14EE0();
        v57 = os_log_type_enabled(v55, v56);
        v58 = *(v0 + 920);
        v59 = *(v0 + 912);
        v60 = *(v0 + 904);
        if (v57)
        {
          v61 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v88[0] = v86;
          *v61 = 136315138;
          v83 = sub_1DDA13810();
          v63 = v62;
          v64 = *(v59 + 8);
          v64(v58, v60);
          v65 = sub_1DD93FA54(v83, v63, v88);

          *(v61 + 4) = v65;
          _os_log_impl(&dword_1DD8F8000, v55, v56, "Attempted a two-phase document upload to an expired session! %s", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v86);
          v66 = v64;
          MEMORY[0x1E12B8CE0](v86, -1, -1);
          MEMORY[0x1E12B8CE0](v61, -1, -1);
        }

        else
        {

          v66 = *(v59 + 8);
          v66(v58, v60);
        }

        v67 = *(v0 + 1248);
        v68 = *(v0 + 1224);
        v69 = *(v0 + 928);
        v70 = *(v0 + 904);
        (*(v0 + 1304))(v68, 1, 1, *(v0 + 1296));
        v71 = swift_allocObject();
        v71[2] = 0;
        v71[3] = 0;
        v71[4] = v67;

        sub_1DD982718(0, 0, v68, &unk_1DDA1B4B0, v71);

        v66(v69, v70);
      }

      else
      {
        (*(v45 + 8))(*(v0 + 896), v41);
      }
    }

    else
    {
      v43(*(v0 + 896), 1, 1, v41);
      sub_1DD90D378(v44, &qword_1ECD82F78, &qword_1DDA188D8);
    }

    v72 = *(v0 + 1656);
    v73 = *(v0 + 960);
    v74 = *(v0 + 952);
    v87 = *(v0 + 944);
    swift_getErrorValue();
    sub_1DDA15510();
    sub_1DDA140F0();

    sub_1DDA14DF0();

    (*(v74 + 8))(v73, v87);
    sub_1DD9B41AC(*(v0 + 696), *(v0 + 704), *(v0 + 712), MEMORY[0x1E69E7D48]);

    v75 = *(v0 + 8);

    return v75();
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 1200);
    v11 = *(v0 + 1192);
    v12 = sub_1DDA14810();
    *(v0 + 1448) = __swift_project_value_buffer(v12, qword_1ECDA20F8);
    sub_1DD9B4C84(v10, v11, type metadata accessor for TwoPhaseUploadDocumentResponse);
    v13 = sub_1DDA147F0();
    v14 = sub_1DDA14ED0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 1432);
    v85 = *(v0 + 1424);
    v17 = *(v0 + 1408);
    v18 = *(v0 + 1400);
    v19 = *(v0 + 1192);
    if (v15)
    {
      v20 = *(v0 + 1184);
      v77 = *(v0 + 1432);
      v82 = *(v0 + 1168);
      v78 = *(v0 + 1128);
      v80 = *(v0 + 1120);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v88[0] = v22;
      *v21 = 136315138;
      sub_1DD9B4C84(v19, v20, type metadata accessor for TwoPhaseUploadDocumentResponse);
      v23 = sub_1DDA14B70();
      v25 = v24;
      sub_1DD9B4918(v19, type metadata accessor for TwoPhaseUploadDocumentResponse);
      v26 = sub_1DD93FA54(v23, v25, v88);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1DD8F8000, v13, v14, "Decoded response: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12B8CE0](v22, -1, -1);
      MEMORY[0x1E12B8CE0](v21, -1, -1);
      sub_1DD909D28(v18, v17);
      sub_1DD909D28(v85, v77);

      sub_1DD9B4788(v0 + 16);
      v27 = *(v78 + 8);
      v27(v82, v80);
    }

    else
    {
      v28 = *(v0 + 1168);
      v29 = *(v0 + 1128);
      v30 = *(v0 + 1120);
      sub_1DD909D28(*(v0 + 1400), *(v0 + 1408));
      sub_1DD909D28(v85, v16);

      sub_1DD9B4788(v0 + 16);
      sub_1DD9B4918(v19, type metadata accessor for TwoPhaseUploadDocumentResponse);
      v27 = *(v29 + 8);
      v27(v28, v30);
    }

    *(v0 + 1456) = v27;
    v31 = *(v0 + 1248);
    v32 = *(v0 + 1216);
    v33 = *(v0 + 1208);
    sub_1DD9B4978(*(v0 + 1200), v33, type metadata accessor for TwoPhaseUploadDocumentResponse);
    sub_1DD9B4978(v33, v32, type metadata accessor for TwoPhaseUploadDocumentResponse);
    *(v0 + 1464) = v31[45];
    *(v0 + 1472) = v31[14];
    *(v0 + 1480) = v31[15];
    *(v0 + 1488) = v31[16];
    *(v0 + 1496) = v31[17];
    *(v0 + 1504) = *(v32 + 112);
    *(v0 + 1512) = *(v32 + 120);

    return MEMORY[0x1EEE6DFA0](sub_1DD996138, v31, 0);
  }
}

uint64_t sub_1DD995904()
{
  v56 = v0;
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1128);
  v3 = *(v0 + 1120);
  sub_1DD909D28(*(v0 + 1400), *(v0 + 1408));
  sub_1DD9B4788(v0 + 16);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1440);
  *(v0 + 1656) = v4;
  *(v0 + 784) = v4;
  v5 = v4;
  *(v0 + 1664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 448);
    v8 = *(v0 + 456);
    v7 = *(v0 + 464);
    if (v6)
    {

      sub_1DD9B41AC(v6, v8, v7, MEMORY[0x1E69E7CF8]);
    }

    else
    {

      sub_1DD9B41AC(0, v8, v7, MEMORY[0x1E69E7CF8]);
      v6 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 1672) = v6;

    v9 = *(v6 + 16);
    *(v0 + 1680) = v9;
    if (v9)
    {
      v10 = *(v0 + 696);
      *(v0 + 1688) = v10;
      if (v10)
      {
        *(v0 + 1696) = 0;
        v11 = *(v0 + 1672);
        v12 = *(v11 + 48);
        *(v0 + 1704) = v12;
        v13 = *(v11 + 40);
        v14 = *(v11 + 32);

        v15 = swift_task_alloc();
        *(v0 + 1712) = v15;
        *v15 = v0;
        v15[1] = sub_1DD998C98;

        return sub_1DD948CE8(v13, v12, v14, v10);
      }

      *(v0 + 1696) = v9 - 1;
    }
  }

  *(v0 + 792) = sub_1DD9C4E98(*(v0 + 1656));
  v17 = sub_1DDA13840();
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  v20 = *(v0 + 896);
  if (v18)
  {
    v21 = *(v17 - 8);
    v19(*(v0 + 896), 0, 1, v17);
    if ((*(v21 + 88))(v20, v17) == *MEMORY[0x1E69DA4A0])
    {
      v22 = *(v0 + 928);
      v23 = *(v0 + 912);
      v24 = *(v0 + 904);
      v25 = *(v0 + 896);
      (*(v21 + 96))(v25, v17);
      (*(v23 + 32))(v22, v25, v24);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 928);
      v27 = *(v0 + 920);
      v28 = *(v0 + 912);
      v29 = *(v0 + 904);
      v30 = sub_1DDA14810();
      __swift_project_value_buffer(v30, qword_1ECDA20E0);
      (*(v28 + 16))(v27, v26, v29);
      v31 = sub_1DDA147F0();
      v32 = sub_1DDA14EE0();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 920);
      v35 = *(v0 + 912);
      v36 = *(v0 + 904);
      if (v33)
      {
        v37 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v37 = 136315138;
        v52 = sub_1DDA13810();
        v39 = v38;
        v40 = *(v35 + 8);
        v40(v34, v36);
        v41 = sub_1DD93FA54(v52, v39, &v55);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_1DD8F8000, v31, v32, "Attempted a two-phase document upload to an expired session! %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        v42 = v40;
        MEMORY[0x1E12B8CE0](v53, -1, -1);
        MEMORY[0x1E12B8CE0](v37, -1, -1);
      }

      else
      {

        v42 = *(v35 + 8);
        v42(v34, v36);
      }

      v43 = *(v0 + 1248);
      v44 = *(v0 + 1224);
      v45 = *(v0 + 928);
      v46 = *(v0 + 904);
      (*(v0 + 1304))(v44, 1, 1, *(v0 + 1296));
      v47 = swift_allocObject();
      v47[2] = 0;
      v47[3] = 0;
      v47[4] = v43;

      sub_1DD982718(0, 0, v44, &unk_1DDA1B4B0, v47);

      v42(v45, v46);
    }

    else
    {
      (*(v21 + 8))(*(v0 + 896), v17);
    }
  }

  else
  {
    v19(*(v0 + 896), 1, 1, v17);
    sub_1DD90D378(v20, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v48 = *(v0 + 1656);
  v49 = *(v0 + 960);
  v50 = *(v0 + 952);
  v54 = *(v0 + 944);
  swift_getErrorValue();
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v50 + 8))(v49, v54);
  sub_1DD9B41AC(*(v0 + 696), *(v0 + 704), *(v0 + 712), MEMORY[0x1E69E7D48]);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1DD996138()
{
  v1 = *(v0 + 1248);
  swift_beginAccess();
  sub_1DD928DF4(v1 + 216, v0 + 488);

  return MEMORY[0x1EEE6DFA0](sub_1DD9961BC, 0, 0);
}

uint64_t sub_1DD9961BC()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 504);
  *(v0 + 632) = *(v0 + 488);
  *(v0 + 648) = v2;
  *(v0 + 661) = *(v0 + 517);
  sub_1DD9122F0(v1);
  sub_1DD9291B0(v0 + 488);
  v3 = type metadata accessor for Credentials(0);
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v5 = *(v0 + 1112);
  if (v4 == 1)
  {
    sub_1DD90D378(*(v0 + 1112), &qword_1ECD82D20, &qword_1DDA18CE0);
    v76 = 0;
    v74 = 0;
  }

  else
  {
    v76 = Credentials.credentialsID.getter();
    v74 = v6;
    sub_1DD9B4918(v5, type metadata accessor for Credentials);
  }

  v75 = v0 + 568;
  v7 = *(v0 + 1104);
  sub_1DD90ADB4(*(v0 + 880), v7, &qword_1ECD82F60, &qword_1DDA18890);
  v8 = sub_1DDA13F50();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = *(v0 + 1104);
  if (v10 == 1)
  {
    sub_1DD90D378(*(v0 + 1104), &qword_1ECD82F60, &qword_1DDA18890);
    v72 = 0;
  }

  else
  {
    v72 = sub_1DDA13F40();
    (*(v9 + 8))(v11, v8);
  }

  v12 = *(v0 + 1216);
  v13 = *(*(v0 + 1176) + 52);
  v14 = (v12 + *(type metadata accessor for CreateSessionResponse(0) + 32) + v13);
  v15 = *v14;
  v16 = 0.0;
  if (v15 != 2)
  {
    v16 = v14[1];
  }

  v17 = *(v0 + 1512);
  v66 = v15 == 2;
  v64 = v10 == 1;
  v58 = *(v0 + 1488);
  v60 = *(v0 + 1480);
  v62 = *(v0 + 1504);
  v59 = *(v0 + 1472);
  v18 = *(v0 + 1464);
  v19 = *(v0 + 1224);
  v20 = *(v0 + 1128);
  v68 = *(v0 + 1248);
  v70 = *(v0 + 1120);
  v21 = *(v0 + 1096);
  v22 = *(v0 + 856);
  v23 = *(v0 + 848);
  (*(v0 + 1304))(v19, 1, 1, *(v0 + 1296));

  v24 = sub_1DDA14D30();
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  *(v25 + 32) = v58;
  *(v25 + 48) = v62;
  *(v25 + 56) = v17;
  *(v25 + 64) = v59;
  *(v25 + 72) = v60;
  *(v25 + 80) = v18;
  *(v25 + 88) = v23;
  *(v25 + 96) = v22;
  *(v25 + 104) = v76;
  *(v25 + 112) = v74;
  *(v25 + 120) = v72;
  *(v25 + 124) = v64;
  *(v25 + 128) = v16;
  *(v25 + 136) = v66;
  sub_1DD982718(0, 0, v19, &unk_1DDA1B4B8, v25);

  sub_1DD929A8C(v68 + 296, v75);
  sub_1DDA134C0();
  v27 = (*(v20 + 48))(v21, 1, v70);
  if (v27 == 1)
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v35 = *(v0 + 1128);
    v63 = *(v0 + 1120);
    v65 = *(v0 + 1160);
    v71 = *(v0 + 1096);
    v73 = *(v0 + 1152);
    v36 = *(v0 + 1088);
    v67 = *(v0 + 1080);
    v37 = *(v0 + 1072);
    v38 = *(v0 + 1064);
    v39 = *(v0 + 888);
    v40 = *(v0 + 832);
    v61 = *(v0 + 816);

    sub_1DD9B4788(v0 + 16);

    v77 = sub_1DD93FF08(&unk_1F58EC8C8);
    *(v0 + 1520) = v77;
    sub_1DD90D378(&unk_1F58EC8E8, &qword_1ECD829C8, &qword_1DDA1E380);
    v57 = *(v40 + 16);
    (*(v37 + 16))(v36, v39, v38);
    v41 = *(v35 + 16);
    *(v0 + 1528) = v41;
    *(v0 + 1536) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41(v65, v61, v63);
    v42 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v43 = (v67 + *(v35 + 80) + v42) & ~*(v35 + 80);
    v44 = swift_allocObject();
    *(v0 + 1544) = v44;
    (*(v37 + 32))(v44 + v42, v36, v38);
    v69 = v44;
    (*(v35 + 32))(v44 + v43, v65, v63);
    v41(v73, v71, v63);
    sub_1DDA130F0();
    sub_1DDA130A0();
    v45 = -1;
    v46 = -1 << *(v77 + 32);
    if (-v46 < 64)
    {
      v45 = ~(-1 << -v46);
    }

    v47 = v45 & *(v77 + 64);
    v48 = (63 - v46) >> 6;

    v49 = 0;
    if (v47)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v50 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v50 >= v48)
      {
        break;
      }

      v47 = *(v77 + 64 + 8 * v50);
      ++v49;
      if (v47)
      {
        v49 = v50;
        do
        {
LABEL_18:
          v47 &= v47 - 1;

          sub_1DDA13100();
        }

        while (v47);
        continue;
      }
    }

    v51 = *(v0 + 1056);
    v52 = *(v0 + 824);
    v53 = *(v0 + 816);

    v54 = swift_task_alloc();
    *(v0 + 1552) = v54;
    *(v54 + 16) = v75;
    *(v54 + 24) = v51;
    *(v54 + 32) = sub_1DD9B4FDC;
    *(v54 + 40) = v69;
    *(v54 + 48) = v57;
    *(v54 + 56) = v52;
    *(v54 + 64) = v53;
    v55 = swift_task_alloc();
    *(v0 + 1560) = v55;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA8, &qword_1DDA1B930);
    *v55 = v0;
    v55[1] = sub_1DD99690C;
    v32 = sub_1DD9B4C70;
    v27 = v0 + 768;
    v31 = 0x80000001DDA28AC0;
    v28 = 0;
    v29 = 0;
    v30 = 0xD00000000000005ELL;
    v33 = v54;
  }

  return MEMORY[0x1EEE6DE38](v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_1DD99690C()
{
  *(*v1 + 1568) = v0;

  if (v0)
  {
    v2 = sub_1DD996EEC;
  }

  else
  {

    v2 = sub_1DD996A34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD996A34()
{
  v20 = v0[188];
  v21 = v0[189];
  v1 = v0[156];
  v2 = v0[152];
  v18 = v0[182];
  v19 = v0[143];
  v3 = v0[141];
  v4 = v0[140];
  v5 = v0[137];
  v6 = v0[132];
  v7 = v0[131];
  v8 = v0[130];
  v23 = v0[109];
  v22 = v0[107];

  (*(v7 + 8))(v6, v8);

  sub_1DD926314((v0 + 71));
  v0[197] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v5, v4);
  __swift_project_boxed_opaque_existential_1((v1 + 176), *(v1 + 200));
  v9 = *v2;
  v0[198] = *v2;
  v10 = v2[1];
  v0[199] = v10;
  sub_1DD983648(v20, v21, v9, v10, v19);
  __swift_project_boxed_opaque_existential_1((v1 + 176), *(v1 + 200));
  v11 = sub_1DD913FF8();
  v13 = v12;
  v0[200] = v12;
  v14 = swift_task_alloc();
  v0[201] = v14;
  *v14 = v0;
  v14[1] = sub_1DD996BEC;
  v15 = v0[108];
  v16 = v0[106];

  return sub_1DD911340(v11, v13, v16, v22, v15, v23);
}

uint64_t sub_1DD996BEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v3[202] = a1;

  v5 = swift_task_alloc();
  v3[203] = v5;
  *v5 = v4;
  v5[1] = sub_1DD996D90;
  v6 = v3[143];

  return sub_1DD950D48(v6, 0, 0xF000000000000000, 0, a1, 0, 1, 0);
}

uint64_t sub_1DD996D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[204] = a1;
  v5[205] = a2;
  v5[206] = v3;

  if (v3)
  {
    v6 = sub_1DD998464;
  }

  else
  {

    v6 = sub_1DD997784;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD996EEC()
{
  v60 = v0;
  v56 = *(v0 + 1456);
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 1040);

  (*(v5 + 8))(v4, v6);

  sub_1DD926314(v0 + 568);
  sub_1DD9B4918(v1, type metadata accessor for TwoPhaseUploadDocumentResponse);
  v56(v3, v2);
  v7 = *(v0 + 1568);
  *(v0 + 1656) = v7;
  *(v0 + 784) = v7;
  v8 = v7;
  *(v0 + 1664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 448);
    v11 = *(v0 + 456);
    v10 = *(v0 + 464);
    if (v9)
    {

      sub_1DD9B41AC(v9, v11, v10, MEMORY[0x1E69E7CF8]);
    }

    else
    {

      sub_1DD9B41AC(0, v11, v10, MEMORY[0x1E69E7CF8]);
      v9 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 1672) = v9;

    v12 = *(v9 + 16);
    *(v0 + 1680) = v12;
    if (v12)
    {
      v13 = *(v0 + 696);
      *(v0 + 1688) = v13;
      if (v13)
      {
        *(v0 + 1696) = 0;
        v14 = *(v0 + 1672);
        v15 = *(v14 + 48);
        *(v0 + 1704) = v15;
        v16 = *(v14 + 40);
        v17 = *(v14 + 32);

        v18 = swift_task_alloc();
        *(v0 + 1712) = v18;
        *v18 = v0;
        v18[1] = sub_1DD998C98;

        return sub_1DD948CE8(v16, v15, v17, v13);
      }

      *(v0 + 1696) = v12 - 1;
    }
  }

  *(v0 + 792) = sub_1DD9C4E98(*(v0 + 1656));
  v20 = sub_1DDA13840();
  v21 = swift_dynamicCast();
  v22 = *(*(v20 - 8) + 56);
  v23 = *(v0 + 896);
  if (v21)
  {
    v24 = *(v20 - 8);
    v22(*(v0 + 896), 0, 1, v20);
    if ((*(v24 + 88))(v23, v20) == *MEMORY[0x1E69DA4A0])
    {
      v25 = *(v0 + 928);
      v26 = *(v0 + 912);
      v27 = *(v0 + 904);
      v28 = *(v0 + 896);
      (*(v24 + 96))(v28, v20);
      (*(v26 + 32))(v25, v28, v27);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 928);
      v30 = *(v0 + 920);
      v31 = *(v0 + 912);
      v32 = *(v0 + 904);
      v33 = sub_1DDA14810();
      __swift_project_value_buffer(v33, qword_1ECDA20E0);
      (*(v31 + 16))(v30, v29, v32);
      v34 = sub_1DDA147F0();
      v35 = sub_1DDA14EE0();
      v36 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 920);
      v38 = *(v0 + 912);
      v39 = *(v0 + 904);
      if (v36)
      {
        v40 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v59 = v57;
        *v40 = 136315138;
        v55 = sub_1DDA13810();
        v42 = v41;
        v43 = *(v38 + 8);
        v43(v37, v39);
        v44 = sub_1DD93FA54(v55, v42, &v59);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_1DD8F8000, v34, v35, "Attempted a two-phase document upload to an expired session! %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        v45 = v43;
        MEMORY[0x1E12B8CE0](v57, -1, -1);
        MEMORY[0x1E12B8CE0](v40, -1, -1);
      }

      else
      {

        v45 = *(v38 + 8);
        v45(v37, v39);
      }

      v46 = *(v0 + 1248);
      v47 = *(v0 + 1224);
      v48 = *(v0 + 928);
      v49 = *(v0 + 904);
      (*(v0 + 1304))(v47, 1, 1, *(v0 + 1296));
      v50 = swift_allocObject();
      v50[2] = 0;
      v50[3] = 0;
      v50[4] = v46;

      sub_1DD982718(0, 0, v47, &unk_1DDA1B4B0, v50);

      v45(v48, v49);
    }

    else
    {
      (*(v24 + 8))(*(v0 + 896), v20);
    }
  }

  else
  {
    v22(*(v0 + 896), 1, 1, v20);
    sub_1DD90D378(v23, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v51 = *(v0 + 1656);
  v52 = *(v0 + 960);
  v53 = *(v0 + 952);
  v58 = *(v0 + 944);
  swift_getErrorValue();
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v53 + 8))(v52, v58);
  sub_1DD9B41AC(*(v0 + 696), *(v0 + 704), *(v0 + 712), MEMORY[0x1E69E7D48]);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1DD997784()
{
  v99 = v0;
  v1 = *(v0 + 1648);
  sub_1DD9B48D0(&qword_1ECD83818, 255, type metadata accessor for UploadDocumentResponse, &unk_1DDA21968);
  sub_1DDA13170();
  if (v1)
  {
    sub_1DD909D28(*(v0 + 1632), *(v0 + 1640));
    v2 = *(v0 + 1216);
    (*(v0 + 1456))(*(v0 + 1144), *(v0 + 1120));
    sub_1DD9B4918(v2, type metadata accessor for TwoPhaseUploadDocumentResponse);
    *(v0 + 1656) = v1;
    *(v0 + 784) = v1;
    v3 = v1;
    *(v0 + 1664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
    if (swift_dynamicCast())
    {
      v4 = *(v0 + 448);
      v6 = *(v0 + 456);
      v5 = *(v0 + 464);
      if (v4)
      {

        sub_1DD9B41AC(v4, v6, v5, MEMORY[0x1E69E7CF8]);
      }

      else
      {

        sub_1DD9B41AC(0, v6, v5, MEMORY[0x1E69E7CF8]);
        v4 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 1672) = v4;

      v36 = *(v4 + 16);
      *(v0 + 1680) = v36;
      if (v36)
      {
        v37 = *(v0 + 696);
        *(v0 + 1688) = v37;
        if (v37)
        {
          *(v0 + 1696) = 0;
          v38 = *(v0 + 1672);
          v39 = *(v38 + 48);
          *(v0 + 1704) = v39;
          v40 = *(v38 + 40);
          v41 = *(v38 + 32);

          v42 = swift_task_alloc();
          *(v0 + 1712) = v42;
          *v42 = v0;
          v42[1] = sub_1DD998C98;

          return sub_1DD948CE8(v40, v39, v41, v37);
        }

        *(v0 + 1696) = v36 - 1;
      }
    }

    *(v0 + 792) = sub_1DD9C4E98(*(v0 + 1656));
    v44 = sub_1DDA13840();
    v45 = swift_dynamicCast();
    v46 = *(*(v44 - 8) + 56);
    v47 = *(v0 + 896);
    if (v45)
    {
      v48 = *(v44 - 8);
      v46(*(v0 + 896), 0, 1, v44);
      if ((*(v48 + 88))(v47, v44) == *MEMORY[0x1E69DA4A0])
      {
        v49 = *(v0 + 928);
        v50 = *(v0 + 912);
        v51 = *(v0 + 904);
        v52 = *(v0 + 896);
        (*(v48 + 96))(v52, v44);
        (*(v50 + 32))(v49, v52, v51);
        if (qword_1ECD827A8 != -1)
        {
          swift_once();
        }

        v53 = *(v0 + 928);
        v54 = *(v0 + 920);
        v55 = *(v0 + 912);
        v56 = *(v0 + 904);
        v57 = sub_1DDA14810();
        __swift_project_value_buffer(v57, qword_1ECDA20E0);
        (*(v55 + 16))(v54, v53, v56);
        v58 = sub_1DDA147F0();
        v59 = sub_1DDA14EE0();
        v60 = os_log_type_enabled(v58, v59);
        v61 = *(v0 + 920);
        v62 = *(v0 + 912);
        v63 = *(v0 + 904);
        if (v60)
        {
          v64 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v98[0] = v96;
          *v64 = 136315138;
          v93 = sub_1DDA13810();
          v66 = v65;
          v67 = *(v62 + 8);
          v67(v61, v63);
          v68 = sub_1DD93FA54(v93, v66, v98);

          *(v64 + 4) = v68;
          _os_log_impl(&dword_1DD8F8000, v58, v59, "Attempted a two-phase document upload to an expired session! %s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v96);
          v69 = v67;
          MEMORY[0x1E12B8CE0](v96, -1, -1);
          MEMORY[0x1E12B8CE0](v64, -1, -1);
        }

        else
        {

          v69 = *(v62 + 8);
          v69(v61, v63);
        }

        v70 = *(v0 + 1248);
        v71 = *(v0 + 1224);
        v72 = *(v0 + 928);
        v73 = *(v0 + 904);
        (*(v0 + 1304))(v71, 1, 1, *(v0 + 1296));
        v74 = swift_allocObject();
        v74[2] = 0;
        v74[3] = 0;
        v74[4] = v70;

        sub_1DD982718(0, 0, v71, &unk_1DDA1B4B0, v74);

        v69(v72, v73);
      }

      else
      {
        (*(v48 + 8))(*(v0 + 896), v44);
      }
    }

    else
    {
      v46(*(v0 + 896), 1, 1, v44);
      sub_1DD90D378(v47, &qword_1ECD82F78, &qword_1DDA188D8);
    }

    v75 = *(v0 + 1656);
    v76 = *(v0 + 960);
    v77 = *(v0 + 952);
    v97 = *(v0 + 944);
    swift_getErrorValue();
    sub_1DDA15510();
    sub_1DDA140F0();

    sub_1DDA14DF0();

    (*(v77 + 8))(v76, v97);
  }

  else
  {
    sub_1DD9B4C84(*(v0 + 1032), *(v0 + 1024), type metadata accessor for UploadDocumentResponse);
    v7 = sub_1DDA147F0();
    v8 = sub_1DDA14ED0();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 1632);
    v11 = *(v0 + 1456);
    v12 = *(v0 + 1144);
    v13 = *(v0 + 1120);
    v94 = *(v0 + 1032);
    v14 = *(v0 + 1024);
    if (v9)
    {
      v15 = *(v0 + 1016);
      v87 = *(v0 + 1640);
      v90 = *(v0 + 1144);
      v16 = swift_slowAlloc();
      v89 = v13;
      v17 = swift_slowAlloc();
      v98[0] = v17;
      *v16 = 136315138;
      sub_1DD9B4C84(v14, v15, type metadata accessor for UploadDocumentResponse);
      v18 = sub_1DDA14B70();
      v86 = v11;
      v20 = v19;
      sub_1DD9B4918(v14, type metadata accessor for UploadDocumentResponse);
      v21 = sub_1DD93FA54(v18, v20, v98);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1DD8F8000, v7, v8, "Decoded response: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E12B8CE0](v17, -1, -1);
      MEMORY[0x1E12B8CE0](v16, -1, -1);
      sub_1DD909D28(v10, v87);

      sub_1DD9B4918(v94, type metadata accessor for UploadDocumentResponse);
      v86(v90, v89);
    }

    else
    {
      sub_1DD909D28(v10, *(v0 + 1640));

      sub_1DD9B4918(v14, type metadata accessor for UploadDocumentResponse);
      sub_1DD9B4918(v94, type metadata accessor for UploadDocumentResponse);
      v11(v12, v13);
    }

    v82 = *(v0 + 1304);
    v80 = *(v0 + 1296);
    v22 = *(v0 + 1248);
    v23 = *(v0 + 1224);
    v85 = v23;
    v95 = *(v0 + 1216);
    v24 = *(v0 + 1000);
    v25 = *(v0 + 992);
    v81 = v25;
    v84 = *(v0 + 984);
    v26 = *(v0 + 976);
    v27 = *(v0 + 968);
    v79 = v27;
    v88 = *(v0 + 960);
    v91 = *(v0 + 952);
    v92 = *(v0 + 944);
    (*(v0 + 1528))(*(v0 + 1152));

    sub_1DDA14150();
    v28 = v22[45];
    v29 = v22[15];
    v83 = v22[14];
    v82(v23, 1, 1, v80);
    (*(v26 + 16))(v25, v24, v27);

    v30 = sub_1DDA14D30();
    v31 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v32 = (v84 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E85E0];
    *(v33 + 16) = v30;
    *(v33 + 24) = v34;
    (*(v26 + 32))(v33 + v31, v81, v79);
    v35 = (v33 + v32);
    *v35 = v83;
    v35[1] = v29;
    *(v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8)) = v28;
    sub_1DD982718(0, 0, v85, &unk_1DDA1B4C0, v33);

    sub_1DDA14130();
    sub_1DDA14DF0();

    (*(v91 + 8))(v88, v92);
    (*(v26 + 8))(v24, v79);
    sub_1DD9B4918(v95, type metadata accessor for TwoPhaseUploadDocumentResponse);
  }

  sub_1DD9B41AC(*(v0 + 696), *(v0 + 704), *(v0 + 712), MEMORY[0x1E69E7D48]);

  v78 = *(v0 + 8);

  return v78();
}

uint64_t sub_1DD998464()
{
  v54 = v0;
  v1 = *(v0 + 1648);
  v2 = *(v0 + 1216);
  (*(v0 + 1456))(*(v0 + 1144), *(v0 + 1120));
  sub_1DD9B4918(v2, type metadata accessor for TwoPhaseUploadDocumentResponse);
  *(v0 + 1656) = v1;
  *(v0 + 784) = v1;
  v3 = v1;
  *(v0 + 1664) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 448);
    v6 = *(v0 + 456);
    v5 = *(v0 + 464);
    if (v4)
    {

      sub_1DD9B41AC(v4, v6, v5, MEMORY[0x1E69E7CF8]);
    }

    else
    {

      sub_1DD9B41AC(0, v6, v5, MEMORY[0x1E69E7CF8]);
      v4 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 1672) = v4;

    v7 = *(v4 + 16);
    *(v0 + 1680) = v7;
    if (v7)
    {
      v8 = *(v0 + 696);
      *(v0 + 1688) = v8;
      if (v8)
      {
        *(v0 + 1696) = 0;
        v9 = *(v0 + 1672);
        v10 = *(v9 + 48);
        *(v0 + 1704) = v10;
        v11 = *(v9 + 40);
        v12 = *(v9 + 32);

        v13 = swift_task_alloc();
        *(v0 + 1712) = v13;
        *v13 = v0;
        v13[1] = sub_1DD998C98;

        return sub_1DD948CE8(v11, v10, v12, v8);
      }

      *(v0 + 1696) = v7 - 1;
    }
  }

  *(v0 + 792) = sub_1DD9C4E98(*(v0 + 1656));
  v15 = sub_1DDA13840();
  v16 = swift_dynamicCast();
  v17 = *(*(v15 - 8) + 56);
  v18 = *(v0 + 896);
  if (v16)
  {
    v19 = *(v15 - 8);
    v17(*(v0 + 896), 0, 1, v15);
    if ((*(v19 + 88))(v18, v15) == *MEMORY[0x1E69DA4A0])
    {
      v20 = *(v0 + 928);
      v21 = *(v0 + 912);
      v22 = *(v0 + 904);
      v23 = *(v0 + 896);
      (*(v19 + 96))(v23, v15);
      (*(v21 + 32))(v20, v23, v22);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 928);
      v25 = *(v0 + 920);
      v26 = *(v0 + 912);
      v27 = *(v0 + 904);
      v28 = sub_1DDA14810();
      __swift_project_value_buffer(v28, qword_1ECDA20E0);
      (*(v26 + 16))(v25, v24, v27);
      v29 = sub_1DDA147F0();
      v30 = sub_1DDA14EE0();
      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 920);
      v33 = *(v0 + 912);
      v34 = *(v0 + 904);
      if (v31)
      {
        v35 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v53 = v51;
        *v35 = 136315138;
        v50 = sub_1DDA13810();
        v37 = v36;
        v38 = *(v33 + 8);
        v38(v32, v34);
        v39 = sub_1DD93FA54(v50, v37, &v53);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_1DD8F8000, v29, v30, "Attempted a two-phase document upload to an expired session! %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        v40 = v38;
        MEMORY[0x1E12B8CE0](v51, -1, -1);
        MEMORY[0x1E12B8CE0](v35, -1, -1);
      }

      else
      {

        v40 = *(v33 + 8);
        v40(v32, v34);
      }

      v41 = *(v0 + 1248);
      v42 = *(v0 + 1224);
      v43 = *(v0 + 928);
      v44 = *(v0 + 904);
      (*(v0 + 1304))(v42, 1, 1, *(v0 + 1296));
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = v41;

      sub_1DD982718(0, 0, v42, &unk_1DDA1B4B0, v45);

      v40(v43, v44);
    }

    else
    {
      (*(v19 + 8))(*(v0 + 896), v15);
    }
  }

  else
  {
    v17(*(v0 + 896), 1, 1, v15);
    sub_1DD90D378(v18, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v46 = *(v0 + 1656);
  v47 = *(v0 + 960);
  v48 = *(v0 + 952);
  v52 = *(v0 + 944);
  swift_getErrorValue();
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v48 + 8))(v47, v52);
  sub_1DD9B41AC(*(v0 + 696), *(v0 + 704), *(v0 + 712), MEMORY[0x1E69E7D48]);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1DD998C98()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD998DB0, 0, 0);
}

uint64_t sub_1DD998DB0()
{
  v51 = v0;
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1696);
  v3 = 24 * v2;
  for (i = v2 + 1; v1 != i; ++i)
  {
    *(v0 + 1696) = i;
    v5 = *(v0 + 1688);
    v3 += 24;
    if (v5)
    {
      v6 = *(v0 + 1672) + v3;
      v7 = *(v6 + 48);
      *(v0 + 1704) = v7;
      v8 = *(v6 + 40);
      v9 = *(v6 + 32);

      v10 = swift_task_alloc();
      *(v0 + 1712) = v10;
      *v10 = v0;
      v10[1] = sub_1DD998C98;

      return sub_1DD948CE8(v8, v7, v9, v5);
    }
  }

  *(v0 + 792) = sub_1DD9C4E98(*(v0 + 1656));
  v12 = sub_1DDA13840();
  v13 = swift_dynamicCast();
  v14 = *(*(v12 - 8) + 56);
  v15 = *(v0 + 896);
  if (v13)
  {
    v16 = *(v12 - 8);
    v14(*(v0 + 896), 0, 1, v12);
    if ((*(v16 + 88))(v15, v12) == *MEMORY[0x1E69DA4A0])
    {
      v17 = *(v0 + 928);
      v18 = *(v0 + 912);
      v19 = *(v0 + 904);
      v20 = *(v0 + 896);
      (*(v16 + 96))(v20, v12);
      (*(v18 + 32))(v17, v20, v19);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 928);
      v22 = *(v0 + 920);
      v23 = *(v0 + 912);
      v24 = *(v0 + 904);
      v25 = sub_1DDA14810();
      __swift_project_value_buffer(v25, qword_1ECDA20E0);
      (*(v23 + 16))(v22, v21, v24);
      v26 = sub_1DDA147F0();
      v27 = sub_1DDA14EE0();
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 920);
      v30 = *(v0 + 912);
      v31 = *(v0 + 904);
      if (v28)
      {
        v32 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v50 = v48;
        *v32 = 136315138;
        v47 = sub_1DDA13810();
        v34 = v33;
        v35 = *(v30 + 8);
        v35(v29, v31);
        v36 = sub_1DD93FA54(v47, v34, &v50);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_1DD8F8000, v26, v27, "Attempted a two-phase document upload to an expired session! %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        v37 = v35;
        MEMORY[0x1E12B8CE0](v48, -1, -1);
        MEMORY[0x1E12B8CE0](v32, -1, -1);
      }

      else
      {

        v37 = *(v30 + 8);
        v37(v29, v31);
      }

      v38 = *(v0 + 1248);
      v39 = *(v0 + 1224);
      v40 = *(v0 + 928);
      v41 = *(v0 + 904);
      (*(v0 + 1304))(v39, 1, 1, *(v0 + 1296));
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v42[4] = v38;

      sub_1DD982718(0, 0, v39, &unk_1DDA1B4B0, v42);

      v37(v40, v41);
    }

    else
    {
      (*(v16 + 8))(*(v0 + 896), v12);
    }
  }

  else
  {
    v14(*(v0 + 896), 1, 1, v12);
    sub_1DD90D378(v15, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v43 = *(v0 + 1656);
  v44 = *(v0 + 960);
  v45 = *(v0 + 952);
  v49 = *(v0 + 944);
  swift_getErrorValue();
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v45 + 8))(v44, v49);
  sub_1DD9B41AC(*(v0 + 696), *(v0 + 704), *(v0 + 712), MEMORY[0x1E69E7D48]);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1DD9994AC(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 48) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD9B4F98, a2, 0);
}

uint64_t sub_1DD9994EC()
{
  v3 = (*(*(v0 + 16) + 368) + **(*(v0 + 16) + 368));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DD9B4FD0;

  return v3();
}

uint64_t sub_1DD9995D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 584) = v22;
  *(v8 + 568) = v21;
  *(v8 + 552) = v20;
  *(v8 + 544) = a8;
  *(v8 + 536) = a7;
  *(v8 + 528) = a6;
  *(v8 + 520) = a5;
  *(v8 + 512) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F78, &qword_1DDA188D8);
  *(v8 + 592) = swift_task_alloc();
  v9 = sub_1DDA14180();
  *(v8 + 600) = v9;
  v10 = *(v9 - 8);
  *(v8 + 608) = v10;
  *(v8 + 616) = *(v10 + 64);
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  *(v8 + 640) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  *(v8 + 648) = swift_task_alloc();
  sub_1DDA14140();
  *(v8 + 656) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D50, &qword_1DDA18638);
  *(v8 + 664) = v11;
  *(v8 + 672) = *(v11 - 8);
  *(v8 + 680) = swift_task_alloc();
  v12 = type metadata accessor for UploadDocumentResponse(0);
  *(v8 + 688) = v12;
  *(v8 + 696) = *(v12 - 8);
  *(v8 + 704) = swift_task_alloc();
  v13 = sub_1DDA13140();
  *(v8 + 712) = v13;
  *(v8 + 720) = *(v13 - 8);
  *(v8 + 728) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  *(v8 + 736) = v14;
  v15 = *(v14 - 8);
  *(v8 + 744) = v15;
  *(v8 + 752) = *(v15 + 64);
  *(v8 + 760) = swift_task_alloc();
  v16 = sub_1DDA134E0();
  *(v8 + 768) = v16;
  v17 = *(v16 - 8);
  *(v8 + 776) = v17;
  *(v8 + 784) = *(v17 + 64);
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83800, &qword_1DDA1B438);
  *(v8 + 832) = swift_task_alloc();
  *(v8 + 840) = swift_task_alloc();
  *(v8 + 848) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  *(v8 + 872) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD999A90, 0, 0);
}

uint64_t sub_1DD999A90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[110] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (*(__swift_project_boxed_opaque_existential_1((Strong + 176), *(Strong + 200)) + 48) == 1)
    {

      v0[52] = sub_1DD9403A4(MEMORY[0x1E69E7CC0]);
      v0[53] = &unk_1DDA1B480;
      v0[54] = v2;
      v3 = swift_task_alloc();
      v0[111] = v3;
      *v3 = v0;
      v3[1] = sub_1DD999DE4;

      return sub_1DD9424E4(&unk_1F58EC908);
    }

    else
    {
      v0[52] = 0;
      v0[53] = 0;
      v0[54] = 0;
      v6 = sub_1DD9404B4(MEMORY[0x1E69E7CC0]);
      v7 = v0[110];
      v8 = v0[69];
      v9 = v0[67];
      v0[113] = sub_1DD98A3E8(v6);
      v0[114] = 0;

      __swift_project_boxed_opaque_existential_1((v7 + 176), *(v7 + 200));
      v10 = sub_1DD913FF8();
      v12 = v11;
      v0[115] = v11;
      v13 = swift_task_alloc();
      v0[116] = v13;
      *v13 = v0;
      v13[1] = sub_1DD999FF8;
      v14 = v0[68];
      v15 = v0[66];

      return sub_1DD911340(v10, v12, v15, v9, v14, v8);
    }
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1DD999DE4(uint64_t a1)
{
  *(*v1 + 896) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD999EE4, 0, 0);
}

uint64_t sub_1DD999EE4()
{
  v1 = v0[110];
  v2 = v0[69];
  v3 = v0[67];
  v0[113] = sub_1DD98A3E8(v0[112]);
  v0[114] = 0;

  __swift_project_boxed_opaque_existential_1((v1 + 176), *(v1 + 200));
  v4 = sub_1DD913FF8();
  v6 = v5;
  v0[115] = v5;
  v7 = swift_task_alloc();
  v0[116] = v7;
  *v7 = v0;
  v7[1] = sub_1DD999FF8;
  v8 = v0[68];
  v9 = v0[66];

  return sub_1DD911340(v4, v6, v9, v3, v8, v2);
}

uint64_t sub_1DD999FF8(uint64_t a1)
{
  *(*v1 + 936) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD99A118, 0, 0);
}

uint64_t sub_1DD99A118()
{
  v22 = v0;
  v1 = v0[117];
  v2 = v0[114];
  v3 = v0[113];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v1;
  sub_1DD911E90(v3, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, &v21);

  if (v2)
  {
  }

  else
  {
    v6 = v0[110];
    v7 = v0[107];
    v0[118] = v21;
    v8 = v6[45];
    v0[119] = v8;
    v10 = v6[14];
    v9 = v6[15];
    v11 = sub_1DDA14D60();
    v0[120] = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    v0[121] = v13;
    v0[122] = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;

    v13(v7, 1, 1, v11);
    v0[123] = sub_1DDA14D40();

    v14 = sub_1DDA14D30();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v10;
    v15[5] = v9;
    v15[6] = v8;
    v17 = sub_1DD982A18(0, 0, v7, &unk_1DDA1B440, v15);
    v0[124] = v17;
    v18 = swift_task_alloc();
    v0[125] = v18;
    *v18 = v0;
    v18[1] = sub_1DD99A348;
    v19 = v0[109];
    v20 = v0[108];

    return MEMORY[0x1EEE6DA40](v19, v17, v20);
  }
}

uint64_t sub_1DD99A348()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD99A460, 0, 0);
}

uint64_t sub_1DD99A460()
{
  v1 = *(v0 + 872);

  v2 = type metadata accessor for SessionRegistry.SessionInfo(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 872);
  if (v3 == 1)
  {
    sub_1DD90D378(*(v0 + 872), &qword_1ECD82FA0, &qword_1DDA18948);
    v44 = 0;
    v46 = 0;
  }

  else
  {
    v44 = *(v4 + 16);
    v46 = *(v4 + 24);

    sub_1DD9B4918(v4, type metadata accessor for SessionRegistry.SessionInfo);
  }

  v5 = *(v0 + 560);
  __swift_project_boxed_opaque_existential_1((*(v0 + 880) + 176), *(*(v0 + 880) + 200));
  sub_1DD9890F8(*(v5 + OBJC_IVAR____TtC5Anvil19ImmutableFileHandle_metadata), v0 + 240);
  v6 = *(v0 + 288);
  if (v6 == 255)
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
    v7 = 0;
    v40 = 0;
    v41 = 0;
    v11 = -1;
  }

  else
  {
    v8 = *(v0 + 256);
    v7 = *(v0 + 264);
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);
    v11 = v6 & 1;
    v40 = *(v0 + 280);
    v41 = *(v0 + 272);
    if (v6)
    {

      v12 = v7;
      v43 = v8;
      goto LABEL_9;
    }
  }

  sub_1DD90ADB4(v0 + 240, v0 + 296, &qword_1ECD83808, &qword_1DDA1B448);
  v43 = sub_1DDA13460();
  v12 = v13;
  sub_1DD90D378(v0 + 240, &qword_1ECD83808, &qword_1DDA1B448);
LABEL_9:
  v42 = v12;
  *(v0 + 233) = v11;
  *(v0 + 1056) = v40;
  *(v0 + 1048) = v41;
  *(v0 + 1040) = v7;
  *(v0 + 1032) = v8;
  *(v0 + 1024) = v10;
  *(v0 + 1016) = v9;
  *(v0 + 1008) = v12;
  v14 = *(v0 + 816);
  v39 = *(v0 + 880);
  v15 = v10;
  v16 = *(v0 + 776);
  v36 = *(v0 + 768);
  v37 = *(v0 + 808);
  v17 = *(v0 + 760);
  v38 = *(v0 + 752);
  v18 = v9;
  v19 = *(v0 + 744);
  v20 = *(v0 + 736);
  v21 = v7;
  v22 = *(v0 + 576);
  v23 = *(v0 + 568);
  v24 = v11;
  v25 = *(v0 + 560);
  *(v0 + 184) = v18;
  *(v0 + 192) = v15;
  *(v0 + 200) = v8;
  *(v0 + 208) = v21;
  *(v0 + 216) = v41;
  *(v0 + 224) = v40;
  *(v0 + 232) = v24;
  __swift_project_boxed_opaque_existential_1((v39 + 176), *(v39 + 200));
  sub_1DD983354(v44, v46, 0x73656C69662FLL, 0xE600000000000000, v14);

  v47 = *(v25 + 16);
  (*(v19 + 16))(v17, v22, v20);
  v26 = *(v16 + 16);
  *(v0 + 1064) = v26;
  *(v0 + 1072) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26(v37, v23, v36);
  v27 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v28 = (v38 + *(v16 + 80) + v27) & ~*(v16 + 80);
  v29 = swift_allocObject();
  *(v0 + 1080) = v29;
  (*(v19 + 32))(v29 + v27, v17, v20);
  (*(v16 + 32))(v29 + v28, v37, v36);
  v30 = swift_task_alloc();
  *(v0 + 1088) = v30;
  *v30 = v0;
  v30[1] = sub_1DD99A878;
  v31 = *(v0 + 944);
  v32 = *(v0 + 816);
  v33 = *(v0 + 800);
  v34 = *(v0 + 728);

  return sub_1DD98D59C(v34, v33, v0 + 184, v32, v31, v47, v43, v42);
}

uint64_t sub_1DD99A878()
{
  v2 = *v1;
  *(v2 + 1096) = v0;

  v3 = *(v2 + 1056);
  v4 = *(v2 + 1048);
  v5 = *(v2 + 1040);
  v6 = *(v2 + 1032);
  v7 = *(v2 + 1024);
  v8 = *(v2 + 1016);
  v9 = *(v2 + 233);

  sub_1DD9B412C(v8, v7, v6, v5, v4, v3, v9);
  if (v12)
  {
    v10 = sub_1DD99ACE8;
  }

  else
  {
    v10 = sub_1DD99AA84;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DD99AA84()
{
  v1 = v0[135];
  v2 = v0[100];
  v3 = v0[91];
  v4 = v0[71];
  v5 = v0[110] + 296;
  v6 = swift_task_alloc();
  v0[138] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = sub_1DD9B4128;
  v6[6] = v1;
  v6[7] = v4;
  v7 = swift_task_alloc();
  v0[139] = v7;
  *v7 = v0;
  v7[1] = sub_1DD99ABB4;
  v8 = v0[105];
  v9 = v0[103];

  return MEMORY[0x1EEE6DE38](v8, 0, 0, 0xD00000000000007CLL, 0x80000001DDA28980, sub_1DD9B42B4, v6, v9);
}

uint64_t sub_1DD99ABB4()
{
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v2 = sub_1DD99B740;
  }

  else
  {
    v2 = sub_1DD99B36C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD99ACE8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1096);
  *(v0 + 1128) = v4;
  *(v0 + 488) = v4;
  v5 = v4;
  *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 64);
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    if (v6)
    {

      sub_1DD9B41AC(v6, v8, v7, MEMORY[0x1E69E7CF8]);
    }

    else
    {

      sub_1DD9B41AC(0, v8, v7, MEMORY[0x1E69E7CF8]);
      v6 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 1200) = v6;

    v9 = *(v6 + 16);
    *(v0 + 1208) = v9;
    if (v9)
    {
      v10 = *(v0 + 416);
      *(v0 + 1216) = v10;
      if (v10)
      {
        *(v0 + 1224) = 0;
        v11 = *(v0 + 1200);
        v12 = *(v11 + 48);
        *(v0 + 1232) = v12;
        v13 = *(v11 + 40);
        v14 = *(v11 + 32);

        v15 = swift_task_alloc();
        *(v0 + 1240) = v15;
        *v15 = v0;
        v15[1] = sub_1DD99C55C;

        return sub_1DD948CE8(v13, v12, v14, v10);
      }

      *(v0 + 1224) = v9 - 1;
    }
  }

  *(v0 + 496) = sub_1DD9C4E98(*(v0 + 1128));
  v17 = sub_1DDA13840();
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  v20 = *(v0 + 592);
  if (v18)
  {
    v21 = *(v17 - 8);
    v19(*(v0 + 592), 0, 1, v17);
    v22 = (*(v21 + 88))(v20, v17);
    v23 = *MEMORY[0x1E69DA4A0];
    (*(v21 + 8))(v20, v17);
    if (v22 == v23)
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v24 = sub_1DDA14810();
      __swift_project_value_buffer(v24, qword_1ECDA20E0);
      v25 = sub_1DDA147F0();
      v26 = sub_1DDA14EE0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1DD8F8000, v25, v26, "Attempted to upload a document to an expired session!", v27, 2u);
        MEMORY[0x1E12B8CE0](v27, -1, -1);
      }

      v28 = *(v0 + 968);
      v29 = *(v0 + 960);
      v30 = *(v0 + 880);
      v31 = *(v0 + 856);

      v28(v31, 1, 1, v29);
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v32[4] = v30;

      sub_1DD982718(0, 0, v31, &unk_1DDA1B460, v32);
    }
  }

  else
  {
    v19(*(v0 + 592), 1, 1, v17);
    sub_1DD90D378(v20, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v33 = *(v0 + 1128);
  v34 = *(v0 + 680);
  v35 = *(v0 + 672);
  v37 = *(v0 + 664);
  swift_getErrorValue();
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v35 + 8))(v34, v37);
  sub_1DD9B41AC(*(v0 + 416), *(v0 + 424), *(v0 + 432), MEMORY[0x1E69E7D48]);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1DD99B36C()
{
  v1 = v0[106];
  v19 = v0[105];
  v20 = v0[104];
  v2 = v0[102];
  v3 = v0[100];
  v4 = v0[97];
  v5 = v0[96];
  v18 = v0[91];
  v6 = v0[90];
  v7 = v0[89];
  v8 = v0[87];
  v21 = v0[86];

  v9 = *(v4 + 8);
  v9(v2, v5);
  v9(v3, v5);
  (*(v6 + 8))(v18, v7);
  sub_1DD914958(v19, v1, &qword_1ECD83800, &qword_1DDA1B438);
  sub_1DD90ADB4(v1, v20, &qword_1ECD83800, &qword_1DDA1B438);
  if ((*(v8 + 48))(v20, 1, v21) == 1)
  {
    v10 = v0[106];
    v11 = v0[85];
    v12 = v0[84];
    v13 = v0[83];
    sub_1DD90D378(v0[104], &qword_1ECD83800, &qword_1DDA1B438);
    sub_1DDA140F0();
    sub_1DDA14DF0();

    (*(v12 + 8))(v11, v13);
    sub_1DD90D378(v10, &qword_1ECD83800, &qword_1DDA1B438);
    sub_1DD9B41AC(v0[52], v0[53], v0[54], MEMORY[0x1E69E7D48]);

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[110];
    v17 = v0[88];
    sub_1DD9B4978(v0[104], v17, type metadata accessor for UploadDocumentResponse);
    v0[143] = v16[45];
    v0[144] = v16[14];
    v0[145] = v16[15];
    v0[146] = v16[16];
    v0[147] = v16[17];
    v0[148] = *(v17 + 16);
    v0[149] = *(v17 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1DD99BE00, v16, 0);
  }
}

uint64_t sub_1DD99B740()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 800);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);

  v8 = *(v3 + 8);
  v8(v1, v4);
  v8(v2, v4);
  (*(v6 + 8))(v5, v7);
  v9 = *(v0 + 1120);
  *(v0 + 1128) = v9;
  *(v0 + 488) = v9;
  v10 = v9;
  *(v0 + 1136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 64);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    if (v11)
    {

      sub_1DD9B41AC(v11, v13, v12, MEMORY[0x1E69E7CF8]);
    }

    else
    {

      sub_1DD9B41AC(0, v13, v12, MEMORY[0x1E69E7CF8]);
      v11 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 1200) = v11;

    v14 = *(v11 + 16);
    *(v0 + 1208) = v14;
    if (v14)
    {
      v15 = *(v0 + 416);
      *(v0 + 1216) = v15;
      if (v15)
      {
        *(v0 + 1224) = 0;
        v16 = *(v0 + 1200);
        v17 = *(v16 + 48);
        *(v0 + 1232) = v17;
        v18 = *(v16 + 40);
        v19 = *(v16 + 32);

        v20 = swift_task_alloc();
        *(v0 + 1240) = v20;
        *v20 = v0;
        v20[1] = sub_1DD99C55C;

        return sub_1DD948CE8(v18, v17, v19, v15);
      }

      *(v0 + 1224) = v14 - 1;
    }
  }

  *(v0 + 496) = sub_1DD9C4E98(*(v0 + 1128));
  v22 = sub_1DDA13840();
  v23 = swift_dynamicCast();
  v24 = *(*(v22 - 8) + 56);
  v25 = *(v0 + 592);
  if (v23)
  {
    v26 = *(v22 - 8);
    v24(*(v0 + 592), 0, 1, v22);
    v27 = (*(v26 + 88))(v25, v22);
    v28 = *MEMORY[0x1E69DA4A0];
    (*(v26 + 8))(v25, v22);
    if (v27 == v28)
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v29 = sub_1DDA14810();
      __swift_project_value_buffer(v29, qword_1ECDA20E0);
      v30 = sub_1DDA147F0();
      v31 = sub_1DDA14EE0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1DD8F8000, v30, v31, "Attempted to upload a document to an expired session!", v32, 2u);
        MEMORY[0x1E12B8CE0](v32, -1, -1);
      }

      v33 = *(v0 + 968);
      v34 = *(v0 + 960);
      v35 = *(v0 + 880);
      v36 = *(v0 + 856);

      v33(v36, 1, 1, v34);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = v35;

      sub_1DD982718(0, 0, v36, &unk_1DDA1B460, v37);
    }
  }

  else
  {
    v24(*(v0 + 592), 1, 1, v22);
    sub_1DD90D378(v25, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v38 = *(v0 + 1128);
  v39 = *(v0 + 680);
  v40 = *(v0 + 672);
  v42 = *(v0 + 664);
  swift_getErrorValue();
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v40 + 8))(v39, v42);
  sub_1DD9B41AC(*(v0 + 416), *(v0 + 424), *(v0 + 432), MEMORY[0x1E69E7D48]);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1DD99BE00()
{
  v1 = *(v0 + 880);
  swift_beginAccess();
  sub_1DD928DF4(v1 + 216, v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1DD99BE84, 0, 0);
}

uint64_t sub_1DD99BE84()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 120);
  *(v0 + 352) = *(v0 + 104);
  *(v0 + 368) = v2;
  *(v0 + 381) = *(v0 + 133);
  sub_1DD9122F0(v1);
  sub_1DD9291B0(v0 + 104);
  v3 = type metadata accessor for Credentials(0);
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  v5 = *(v0 + 648);
  if (v4 == 1)
  {
    sub_1DD90D378(*(v0 + 648), &qword_1ECD82D20, &qword_1DDA18CE0);
    v52 = 0;
    v54 = 0;
  }

  else
  {
    v6 = Credentials.credentialsID.getter();
    v52 = v7;
    v54 = v6;
    sub_1DD9B4918(v5, type metadata accessor for Credentials);
  }

  v8 = *(v0 + 640);
  sub_1DD90ADB4(*(v0 + 584), v8, &qword_1ECD82F60, &qword_1DDA18890);
  v9 = sub_1DDA13F50();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  v12 = *(v0 + 640);
  if (v11 == 1)
  {
    sub_1DD90D378(*(v0 + 640), &qword_1ECD82F60, &qword_1DDA18890);
    v47 = 0;
  }

  else
  {
    v47 = sub_1DDA13F40();
    (*(v10 + 8))(v12, v9);
  }

  v13 = *(*(v0 + 688) + 24);
  v60 = *(v0 + 704);
  v14 = (v60 + *(type metadata accessor for CreateSessionResponse(0) + 32) + v13);
  v15 = *v14;
  v16 = 0.0;
  if (v15 != 2)
  {
    v16 = v14[1];
  }

  v17 = *(v0 + 1192);
  v38 = v11 == 1;
  v39 = v15 == 2;
  v34 = *(v0 + 1168);
  v36 = *(v0 + 1160);
  v37 = *(v0 + 1184);
  v35 = *(v0 + 1152);
  v18 = *(v0 + 1144);
  v44 = *(v0 + 1064);
  v42 = *(v0 + 960);
  v43 = *(v0 + 968);
  v59 = *(v0 + 880);
  v19 = *(v0 + 856);
  v56 = *(v0 + 848);
  v40 = *(v0 + 792);
  v41 = *(v0 + 768);
  v49 = *(v0 + 680);
  v50 = *(v0 + 672);
  v51 = *(v0 + 664);
  v57 = *(v0 + 632);
  v46 = *(v0 + 624);
  v48 = *(v0 + 616);
  v58 = *(v0 + 608);
  v45 = *(v0 + 600);
  v20 = *(v0 + 568);
  v21 = *(v0 + 536);
  v22 = *(v0 + 528);
  v43(v19, 1, 1);

  v23 = sub_1DDA14D30();
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  *(v24 + 32) = v34;
  *(v24 + 48) = v37;
  *(v24 + 56) = v17;
  *(v24 + 64) = v35;
  *(v24 + 72) = v36;
  *(v24 + 80) = v18;
  *(v24 + 88) = v22;
  *(v24 + 96) = v21;
  *(v24 + 104) = v54;
  *(v24 + 112) = v52;
  *(v24 + 120) = v47;
  *(v24 + 124) = v38;
  *(v24 + 128) = v16;
  *(v24 + 136) = v39;
  sub_1DD982718(0, 0, v19, &unk_1DDA1B468, v24);

  v44(v40, v20, v41);

  sub_1DDA14150();
  v26 = v59[15];
  v53 = v59[45];
  v55 = v59[14];
  (v43)(v19, 1, 1, v42);
  (*(v58 + 16))(v46, v57, v45);

  v27 = sub_1DDA14D30();
  v28 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v29 = (v48 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = MEMORY[0x1E69E85E0];
  (*(v58 + 32))(v30 + v28, v46, v45);
  v31 = (v30 + v29);
  *v31 = v55;
  v31[1] = v26;
  *(v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) = v53;
  sub_1DD982718(0, 0, v19, &unk_1DDA1B470, v30);

  sub_1DDA14130();
  sub_1DDA14DF0();

  (*(v50 + 8))(v49, v51);
  (*(v58 + 8))(v57, v45);
  sub_1DD90D378(v56, &qword_1ECD83800, &qword_1DDA1B438);
  sub_1DD9B4918(v60, type metadata accessor for UploadDocumentResponse);
  sub_1DD9B41AC(*(v0 + 416), *(v0 + 424), *(v0 + 432), MEMORY[0x1E69E7D48]);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1DD99C55C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD99C674, 0, 0);
}

uint64_t sub_1DD99C674()
{
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1224);
  v3 = 24 * v2;
  for (i = v2 + 1; v1 != i; ++i)
  {
    *(v0 + 1224) = i;
    v5 = *(v0 + 1216);
    v3 += 24;
    if (v5)
    {
      v6 = *(v0 + 1200) + v3;
      v7 = *(v6 + 48);
      *(v0 + 1232) = v7;
      v8 = *(v6 + 40);
      v9 = *(v6 + 32);

      v10 = swift_task_alloc();
      *(v0 + 1240) = v10;
      *v10 = v0;
      v10[1] = sub_1DD99C55C;

      return sub_1DD948CE8(v8, v7, v9, v5);
    }
  }

  *(v0 + 496) = sub_1DD9C4E98(*(v0 + 1128));
  v12 = sub_1DDA13840();
  v13 = swift_dynamicCast();
  v14 = *(*(v12 - 8) + 56);
  v15 = *(v0 + 592);
  if (v13)
  {
    v16 = *(v12 - 8);
    v14(*(v0 + 592), 0, 1, v12);
    v17 = (*(v16 + 88))(v15, v12);
    v18 = *MEMORY[0x1E69DA4A0];
    (*(v16 + 8))(v15, v12);
    if (v17 == v18)
    {
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v19 = sub_1DDA14810();
      __swift_project_value_buffer(v19, qword_1ECDA20E0);
      v20 = sub_1DDA147F0();
      v21 = sub_1DDA14EE0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1DD8F8000, v20, v21, "Attempted to upload a document to an expired session!", v22, 2u);
        MEMORY[0x1E12B8CE0](v22, -1, -1);
      }

      v23 = *(v0 + 968);
      v24 = *(v0 + 960);
      v25 = *(v0 + 880);
      v26 = *(v0 + 856);

      v23(v26, 1, 1, v24);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = v25;

      sub_1DD982718(0, 0, v26, &unk_1DDA1B460, v27);
    }
  }

  else
  {
    v14(*(v0 + 592), 1, 1, v12);
    sub_1DD90D378(v15, &qword_1ECD82F78, &qword_1DDA188D8);
  }

  v28 = *(v0 + 1128);
  v29 = *(v0 + 680);
  v30 = *(v0 + 672);
  v32 = *(v0 + 664);
  swift_getErrorValue();
  sub_1DDA15510();
  sub_1DDA140F0();

  sub_1DDA14DF0();

  (*(v30 + 8))(v29, v32);
  sub_1DD9B41AC(*(v0 + 416), *(v0 + 424), *(v0 + 432), MEMORY[0x1E69E7D48]);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1DD99CBCC(char a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  *(v2 + 48) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD99CBEC, a2, 0);
}

uint64_t sub_1DD99CBEC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  sub_1DD9314B0(v1);
  swift_endAccess();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DD99CDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1DDA14140();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D50, &qword_1DDA18638);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1DDA140B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D40, &qword_1DDA1A270);
  sub_1DDA14DF0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DD99CF2C()
{
  v3 = (*(*(v0 + 16) + 368) + **(*(v0 + 16) + 368));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DD99D018;

  return v3();
}

uint64_t sub_1DD99D018()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DD99D10C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D48, &qword_1DDA18630);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, a1, v3);
  LODWORD(a1) = (*(v4 + 88))(v6, v3);
  v7 = *MEMORY[0x1E69E8760];
  result = (*(v4 + 8))(v6, v3);
  if (a1 == v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
    return sub_1DDA14D70();
  }

  return result;
}

uint64_t sub_1DD99D264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD99D304, v3, 0);
}

uint64_t sub_1DD99D304()
{
  if (sub_1DDA14C50())
  {
    v2 = v0[6];
    v0[8] = v2[45];
    v0[9] = v2[14];
    v0[10] = v2[15];

    return MEMORY[0x1EEE6DFA0](sub_1DD99D4C4, 0, 0);
  }

  else
  {
    v3 = v0[3];
    v4 = v0[4];
    v0[14] = v3;
    v6 = v0[5];
    v5 = v0[6];
    sub_1DD9B48D0(&qword_1ECD82F88, v1, type metadata accessor for Session, &unk_1DDA1B150);

    v7 = swift_task_alloc();
    v0[15] = v7;
    v7[2] = v5;
    v7[3] = v3;
    v7[4] = v4;
    v7[5] = v6;
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_1DD99D8C4;

    return MEMORY[0x1EEE6DD58]();
  }
}

uint64_t sub_1DD99D4C4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = sub_1DDA14D60();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_1DDA14D40();

  v6 = sub_1DDA14D30();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v2;
  v7[5] = v1;
  v7[6] = v4;
  v9 = sub_1DD982D2C(0, 0, v3, &unk_1DDA1B370, v7);
  v0[11] = v9;
  v10 = swift_task_alloc();
  v0[12] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837B8, &qword_1DDA1B378);
  *v10 = v0;
  v10[1] = sub_1DD99D64C;

  return MEMORY[0x1EEE6DA40](v0 + 2, v9, v11);
}

uint64_t sub_1DD99D64C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD99D764, 0, 0);
}

uint64_t sub_1DD99D764()
{
  v1 = v0[6];
  v0[13] = v0[2];
  return MEMORY[0x1EEE6DFA0](sub_1DD99D788, v1, 0);
}

uint64_t sub_1DD99D788(uint64_t a1, uint64_t a2)
{
  v3 = v2[13];
  v2[14] = v3;
  v5 = v2[5];
  v4 = v2[6];
  v6 = v2[4];
  sub_1DD9B48D0(&qword_1ECD82F88, a2, type metadata accessor for Session, &unk_1DDA1B150);
  v7 = swift_task_alloc();
  v2[15] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
  v8 = swift_task_alloc();
  v2[16] = v8;
  *v8 = v2;
  v8[1] = sub_1DD99D8C4;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1DD99D8C4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_1DD99DA58;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1DD99D9F4;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DD99D9F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD99DA58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DD99DAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  v8 = sub_1DDA13840();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = sub_1DDA13830();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v10 = sub_1DDA14180();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v6[23] = *(v11 + 64);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD99DCB8, a3, 0);
}

uint64_t sub_1DD99DCB8()
{
  v1 = v0[11];
  v0[29] = v1[45];
  v0[30] = v1[14];
  v0[31] = v1[15];
  return MEMORY[0x1EEE6DFA0](sub_1DD99DCF0, 0, 0);
}

uint64_t sub_1DD99DCF0()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = sub_1DDA14D60();
  v0[32] = v5;
  v6 = *(v5 - 8);
  v0[33] = v6;
  v7 = *(v6 + 56);
  v0[34] = v7;
  v0[35] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v3, 1, 1, v5);
  sub_1DDA14D40();

  v8 = sub_1DDA14D30();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v2;
  v9[5] = v1;
  v9[6] = v4;
  v11 = sub_1DD982D2C(0, 0, v3, &unk_1DDA1B3A0, v9);
  v0[36] = v11;
  v12 = swift_task_alloc();
  v0[37] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837B8, &qword_1DDA1B378);
  *v12 = v0;
  v12[1] = sub_1DD99DE9C;

  return MEMORY[0x1EEE6DA40](v0 + 9, v11, v13);
}

uint64_t sub_1DD99DE9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD99DFB4, 0, 0);
}

uint64_t sub_1DD99DFB4()
{
  v1 = v0[11];
  v0[38] = v0[9];
  return MEMORY[0x1EEE6DFA0](sub_1DD99DFD8, v1, 0);
}

uint64_t sub_1DD99DFD8()
{
  v137 = v0;
  v1 = v0[38];
  v2 = v0[12];

  v4 = sub_1DD9B2EF0(v3);

  v5 = sub_1DD9B154C(v1, v4);

  v7 = sub_1DD9B2EF0(v6);

  v8 = sub_1DD9B154C(v2, v7);
  if (qword_1ECD827A8 != -1)
  {
LABEL_46:
    swift_once();
  }

  v9 = sub_1DDA14810();
  __swift_project_value_buffer(v9, qword_1ECDA20E0);

  v10 = sub_1DDA147F0();
  v11 = sub_1DDA14F00();

  if (os_log_type_enabled(v10, v11))
  {
    v120 = v11;
    log = v10;
    v118 = v8;
    v12 = v0[12];
    v13 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v136[0] = v116;
    *v13 = 136315906;
    v14 = *(v12 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    v132 = v0;
    v123 = v5;
    v125 = v13;
    if (v14)
    {
      v16 = v0[22];
      v17 = v0[12];
      v134 = MEMORY[0x1E69E7CC0];
      sub_1DD9AF0BC(0, v14, 0);
      v18 = v15;
      v19 = *(v16 + 16);
      v16 += 16;
      v130 = v19;
      v20 = v17 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v127 = *(v16 + 56);
      v21 = (v16 - 8);
      do
      {
        v22 = v132[25];
        v23 = v132[21];
        v130(v22, v20, v23);
        v24 = sub_1DDA14160();
        v26 = v25;
        (*v21)(v22, v23);
        v134 = v18;
        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1DD9AF0BC((v27 > 1), v28 + 1, 1);
          v18 = v134;
        }

        *(v18 + 16) = v28 + 1;
        v29 = v18 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v20 += v127;
        --v14;
      }

      while (v14);
      v13 = v125;
      v15 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v51 = v132[38];
    v52 = MEMORY[0x1E12B7B70](v18, MEMORY[0x1E69E6158]);
    v54 = v53;

    v55 = sub_1DD93FA54(v52, v54, v136);

    *(v13 + 4) = v55;
    *(v13 + 12) = 2080;
    v56 = *(v51 + 16);
    v57 = v132[38];
    if (v56)
    {
      v58 = v132[22];
      v134 = v15;
      sub_1DD9AF0BC(0, v56, 0);
      v59 = v15;
      v60 = *(v58 + 16);
      v58 += 16;
      v131 = v60;
      v61 = v57 + ((*(v58 + 64) + 32) & ~*(v58 + 64));
      v128 = *(v58 + 56);
      v62 = (v58 - 8);
      do
      {
        v63 = v132[25];
        v64 = v132[21];
        v131(v63, v61, v64);
        v65 = sub_1DDA14160();
        v67 = v66;
        (*v62)(v63, v64);
        v134 = v59;
        v69 = *(v59 + 16);
        v68 = *(v59 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1DD9AF0BC((v68 > 1), v69 + 1, 1);
          v59 = v134;
        }

        *(v59 + 16) = v69 + 1;
        v70 = v59 + 16 * v69;
        *(v70 + 32) = v65;
        *(v70 + 40) = v67;
        v61 += v128;
        --v56;
      }

      while (v56);

      v13 = v125;
    }

    else
    {

      v59 = MEMORY[0x1E69E7CC0];
    }

    v71 = MEMORY[0x1E12B7B70](v59, MEMORY[0x1E69E6158]);
    v73 = v72;

    v74 = sub_1DD93FA54(v71, v73, v136);

    *(v13 + 14) = v74;
    *(v13 + 22) = 2080;
    v5 = v123;
    sub_1DD982410(v123);
    v75 = MEMORY[0x1E12B7B70]();
    v77 = v76;

    v78 = sub_1DD93FA54(v75, v77, v136);

    *(v13 + 24) = v78;
    *(v13 + 32) = 2080;
    v8 = v118;
    sub_1DD982410(v118);
    v79 = MEMORY[0x1E12B7B70]();
    v81 = v80;

    v82 = sub_1DD93FA54(v79, v81, v136);

    *(v13 + 34) = v82;
    _os_log_impl(&dword_1DD8F8000, log, v120, "Resolving registration for documents: %s\nCurrently attached documents: %s\nAdditions: %s\nDeletions: %s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E12B8CE0](v116, -1, -1);
    MEMORY[0x1E12B8CE0](v13, -1, -1);

    v0 = v132;
    if (!*(v123 + 16))
    {
      goto LABEL_24;
    }

LABEL_10:

    v30 = sub_1DDA147F0();
    v31 = sub_1DDA14EE0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v134 = v33;
      *v32 = 136315138;
      sub_1DD982410(v5);
      v34 = MEMORY[0x1E12B7B70]();
      v36 = v35;

      v37 = sub_1DD93FA54(v34, v36, &v134);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1DD8F8000, v30, v31, "Received unknown document identifiers: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E12B8CE0](v33, -1, -1);
      MEMORY[0x1E12B8CE0](v32, -1, -1);
    }

    v39 = v0[19];
    v38 = v0[20];
    v41 = v0[17];
    v40 = v0[18];
    v42 = v0[15];
    v43 = v0[16];
    v134 = 0;
    v135 = 0xE000000000000000;
    sub_1DDA15070();

    v134 = 0xD000000000000027;
    v135 = 0x80000001DDA28900;
    v44 = sub_1DD982410(v5);

    v45 = MEMORY[0x1E12B7B70](v44, MEMORY[0x1E69E6158]);
    v47 = v46;

    MEMORY[0x1E12B7AB0](v45, v47);

    sub_1DDA13800();
    (*(v39 + 16))(v41, v38, v40);
    (*(v43 + 104))(v41, *MEMORY[0x1E69DA4C0], v42);
    sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
    swift_allocError();
    (*(v43 + 16))(v48, v41, v42);
    swift_willThrow();
    (*(v43 + 8))(v41, v42);
    (*(v39 + 8))(v38, v40);

    v49 = v0[1];

    return v49();
  }

  if (*(v5 + 16))
  {
    goto LABEL_10;
  }

LABEL_24:
  v83 = v0[33];
  v84 = v0[22];

  v85 = 0;
  v86 = v8 + 56;
  v87 = -1;
  v88 = -1 << *(v8 + 32);
  if (-v88 < 64)
  {
    v87 = ~(-1 << -v88);
  }

  v89 = v87 & *(v8 + 56);
  v90 = (63 - v88) >> 6;
  v115 = v8 + 56;
  v117 = v84;
  v113 = (v83 + 48);
  v112 = (v83 + 8);
  v114 = v90;
  v119 = v8;
  while (v89)
  {
LABEL_34:
    v94 = v0[34];
    v95 = v0[32];
    v96 = v0[27];
    loga = v96;
    v97 = v0[25];
    v129 = v0[26];
    v98 = v0[24];
    v99 = v0[21];
    v124 = v0[13];
    v126 = v0[14];
    v133 = v0[11];
    (*(v117 + 16))(v98, *(v8 + 48) + *(v117 + 72) * (__clz(__rbit64(v89)) | (v85 << 6)), v99);
    v94(v96, 1, 1, v95);
    v100 = *(v117 + 32);
    v100(v97, v98, v99);
    v101 = (*(v117 + 80) + 56) & ~*(v117 + 80);
    v102 = swift_allocObject();
    v102[2] = 0;
    v102[3] = 0;
    v102[4] = v133;
    v102[5] = v124;
    v102[6] = v126;
    v100(v102 + v101, v97, v99);
    sub_1DD90ADB4(loga, v129, &qword_1ECD82D30, &qword_1DDA188D0);
    LODWORD(v97) = (*v113)(v129, 1, v95);

    if (v97 == 1)
    {
      sub_1DD90D378(v0[26], &qword_1ECD82D30, &qword_1DDA188D0);
    }

    else
    {
      v103 = v0[32];
      v104 = v0[26];
      sub_1DDA14D50();
      (*v112)(v104, v103);
    }

    if (v102[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v105 = sub_1DDA14CD0();
      v5 = v106;
      swift_unknownObjectRelease();
    }

    else
    {
      v105 = 0;
      v5 = 0;
    }

    v8 = v119;
    v107 = *v0[10];

    if (v5 | v105)
    {
      v91 = v0 + 2;
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v105;
      v0[5] = v5;
    }

    else
    {
      v91 = 0;
    }

    v92 = v0[27];
    v89 &= v89 - 1;
    v0[6] = 1;
    v0[7] = v91;
    v0[8] = v107;
    swift_task_create();

    sub_1DD90D378(v92, &qword_1ECD82D30, &qword_1DDA188D0);
    v90 = v114;
    v86 = v115;
  }

  while (1)
  {
    v93 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v93 >= v90)
    {
      break;
    }

    v89 = *(v86 + 8 * v93);
    ++v85;
    if (v89)
    {
      v85 = v93;
      goto LABEL_34;
    }
  }

  v108 = v0[11];

  v110 = sub_1DD9B48D0(&qword_1ECD82F88, v109, type metadata accessor for Session, &unk_1DDA1B150);
  v111 = swift_task_alloc();
  v0[39] = v111;
  *v111 = v0;
  v111[1] = sub_1DD99EC90;

  return sub_1DD99EF14(v108, v110);
}

uint64_t sub_1DD99EC90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DD99EE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_1DD9165BC;

  return sub_1DD99F468(a5, a6, a7);
}

uint64_t sub_1DD99EF14(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1DDA14CD0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1DD99EFA8, v4, v6);
}

uint64_t sub_1DD99EFA8()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (sub_1DDA14DA0())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837C8, &qword_1DDA1B3C0);
    *v3 = v0;
    v3[1] = sub_1DD99F0E0;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return MEMORY[0x1EEE6DAC8](v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_1DD99F0E0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1DD99F32C;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1DD99F1FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1DD99F1FC()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_1DDA14DA0())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837C8, &qword_1DDA1B3C0);
  *v4 = v0;
  v4[1] = sub_1DD99F0E0;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DAC8](v0 + 96, v7, v6, v5);
}

uint64_t sub_1DD99F32C()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_1DDA14DA0())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD837C8, &qword_1DDA1B3C0);
    *v4 = v0;
    v4[1] = sub_1DD99F0E0;
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v7, v6, v5);
  }
}

uint64_t sub_1DD99F468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_1DDA134E0();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  sub_1DDA14B60();
  v4[27] = swift_task_alloc();
  v6 = sub_1DDA14180();
  v4[28] = v6;
  v7 = *(v6 - 8);
  v4[29] = v7;
  v4[30] = *(v7 + 64);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v4[33] = swift_task_alloc();
  v4[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  v4[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD99F63C, 0, 0);
}

uint64_t sub_1DD99F63C()
{
  v1 = v0[33];
  v2 = v0[23];
  v3 = v2[45];
  v0[36] = v3;
  v4 = v2[14];
  v0[37] = v4;
  v5 = v2[15];
  v0[38] = v5;
  v6 = sub_1DDA14D60();
  v0[39] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[40] = v8;
  v0[41] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 1, 1, v6);
  v0[42] = sub_1DDA14D40();

  v9 = sub_1DDA14D30();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v4;
  v10[5] = v5;
  v10[6] = v3;
  v12 = sub_1DD982A18(0, 0, v1, &unk_1DDA1B350, v10);
  v0[43] = v12;
  v13 = swift_task_alloc();
  v0[44] = v13;
  *v13 = v0;
  v13[1] = sub_1DD99F7D8;
  v15 = v0[34];
  v14 = v0[35];

  return MEMORY[0x1EEE6DA40](v14, v12, v15);
}

uint64_t sub_1DD99F7D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DD99F8F0, 0, 0);
}

uint64_t sub_1DD99F8F0()
{
  v30 = v0;
  v1 = v0[35];
  v2 = type metadata accessor for SessionRegistry.SessionInfo(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v23 = sub_1DD90D378(v1, &qword_1ECD82FA0, &qword_1DDA18948);
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 16);
    v0[45] = v3;
    v4 = *(v1 + 24);
    v0[46] = v4;

    sub_1DD9B4918(v1, type metadata accessor for SessionRegistry.SessionInfo);
    if (qword_1ECD827A8 != -1)
    {
      swift_once();
    }

    v5 = v0[32];
    v7 = v0[28];
    v6 = v0[29];
    v8 = v0[22];
    v9 = sub_1DDA14810();
    v0[47] = v9;
    __swift_project_value_buffer(v9, qword_1ECDA20E0);
    v10 = *(v6 + 16);
    v0[48] = v10;
    v0[49] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v5, v8, v7);

    v11 = sub_1DDA147F0();
    v12 = sub_1DDA14F00();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[32];
    v16 = v0[28];
    v15 = v0[29];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v17 = 136315394;
      v27 = v3;
      v18 = sub_1DDA14160();
      v20 = v19;
      (*(v15 + 8))(v14, v16);
      v21 = sub_1DD93FA54(v18, v20, &v29);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1DD93FA54(v27, v4, &v29);
      _os_log_impl(&dword_1DD8F8000, v11, v12, "Deleting document:%s from session:%s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B8CE0](v28, -1, -1);
      MEMORY[0x1E12B8CE0](v17, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v22 = v0[23];
    v0[19] = MEMORY[0x1E69E7CC8];
    v0[50] = __swift_project_boxed_opaque_existential_1((v22 + 176), *(v22 + 200));
    v23 = sub_1DD99FBF8;
    v24 = v22;
    v25 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1DD99FBF8()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  sub_1DD928DF4(v1 + 216, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DD99FC7C, 0, 0);
}

uint64_t sub_1DD99FC7C()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = sub_1DD913FF8();
  v5 = v4;
  v0[51] = v4;
  sub_1DD9291B0((v0 + 2));
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = swift_task_alloc();
  v0[52] = v8;
  *v8 = v0;
  v8[1] = sub_1DD99FD60;
  v9 = v0[20];

  return sub_1DD911340(v3, v5, v6, v7, v9, v2);
}

uint64_t sub_1DD99FD60(uint64_t a1)
{
  *(*v1 + 424) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD99FE80, 0, 0);
}

uint64_t sub_1DD99FE80()
{
  v23 = v0;
  v1 = v0[53];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v4;
  sub_1DD911E90(v1, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, &v22);

  v0[19] = v22;
  v0[12] = 0xD000000000000018;
  v0[13] = 0x80000001DDA262D0;
  v0[14] = v3;
  v0[15] = v2;
  sub_1DDA13230();
  swift_allocObject();

  sub_1DDA13220();
  sub_1DD9B2808();
  v6 = sub_1DDA13210();
  v8 = v7;

  v9 = v0[46];
  v21 = v0[45];
  v10 = v0[26];
  v11 = v0[23];

  sub_1DDA14B50();
  v12 = sub_1DDA14B30();
  v14 = v13;
  sub_1DD909D28(v6, v8);
  sub_1DD9C70C8(v12, v14, 0xD000000000000022, 0x80000001DDA26990);
  __swift_project_boxed_opaque_existential_1((v11 + 176), *(v11 + 200));
  v15 = sub_1DDA14160();
  sub_1DD983948(v21, v9, v15, v16, v10);

  v17 = v0[19];
  v0[54] = v17;
  v18 = swift_task_alloc();
  v0[55] = v18;
  *v18 = v0;
  v18[1] = sub_1DD9A0134;
  v19 = v0[26];

  return sub_1DD950D48(v19, 0, 0xF000000000000000, 2, v17, 0, 1, 0);
}

uint64_t sub_1DD9A0134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[56] = a1;
  v5[57] = a2;
  v5[58] = v3;

  if (v3)
  {
    v6 = sub_1DD9A0654;
  }

  else
  {

    v6 = sub_1DD9A028C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD9A028C()
{
  v36 = v0;
  v1 = *(v0 + 464);
  sub_1DD9B3634();
  sub_1DDA13170();
  if (v1)
  {
    sub_1DD909D28(*(v0 + 448), *(v0 + 456));
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

    v2 = *(v0 + 8);
  }

  else
  {
    if (qword_1ECD827B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 376), qword_1ECDA20F8);
    v3 = sub_1DDA147F0();
    v4 = sub_1DDA14ED0();
    v5 = os_log_type_enabled(v3, v4);
    v7 = *(v0 + 448);
    v6 = *(v0 + 456);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 192);
    if (v5)
    {
      v34 = *(v0 + 192);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136315138;
      v13 = sub_1DDA14B70();
      v33 = v8;
      v15 = sub_1DD93FA54(v13, v14, &v35);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1DD8F8000, v3, v4, "Decoded response: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E12B8CE0](v12, -1, -1);
      MEMORY[0x1E12B8CE0](v11, -1, -1);
      sub_1DD909D28(v7, v6);

      (*(v9 + 8))(v33, v34);
    }

    else
    {
      sub_1DD909D28(*(v0 + 448), *(v0 + 456));

      (*(v9 + 8))(v8, v10);
    }

    v16 = *(v0 + 384);
    v17 = *(v0 + 288);
    v32 = *(v0 + 296);
    v30 = *(v0 + 304);
    v31 = *(v0 + 264);
    v18 = *(v0 + 248);
    v29 = *(v0 + 240);
    v19 = *(v0 + 224);
    v20 = *(v0 + 232);
    v21 = *(v0 + 176);
    (*(v0 + 320))();
    v16(v18, v21, v19);

    v22 = sub_1DDA14D30();
    v23 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v24 = (v29 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    *(v25 + 16) = v22;
    *(v25 + 24) = v26;
    (*(v20 + 32))(v25 + v23, v18, v19);
    v27 = (v25 + v24);
    *v27 = v32;
    v27[1] = v30;
    *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v17;
    sub_1DD982718(0, 0, v31, &unk_1DDA1B358, v25);

    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_1DD9A0654()
{
  (*(v0[25] + 8))(v0[26], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DD9A0720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[92] = v8;
  v9[91] = v30;
  v9[90] = v29;
  v9[89] = v28;
  v9[88] = v27;
  v9[87] = a8;
  v9[86] = a7;
  v9[85] = a6;
  v9[84] = a5;
  v9[83] = a4;
  v9[82] = a3;
  v9[81] = a2;
  v9[80] = a1;
  v12 = sub_1DDA13830();
  v9[93] = v12;
  v9[94] = *(v12 - 8);
  v9[95] = swift_task_alloc();
  v13 = sub_1DDA13840();
  v9[96] = v13;
  v9[97] = *(v13 - 8);
  v9[98] = swift_task_alloc();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890) - 8);
  v9[99] = v14;
  v9[100] = *(v14 + 64);
  v9[101] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83648, &qword_1DDA1B1B8);
  v9[102] = v15;
  v16 = *(v15 - 8);
  v9[103] = v16;
  v9[104] = *(v16 + 64);
  v9[105] = swift_task_alloc();
  v9[106] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83650, &qword_1DDA1B1C0);
  v9[107] = swift_task_alloc();
  v17 = sub_1DDA136B0();
  v9[108] = v17;
  v9[109] = *(v17 - 8);
  v9[110] = swift_task_alloc();
  v18 = type metadata accessor for Instrumentation(0);
  v9[111] = v18;
  v19 = *(v18 - 8);
  v9[112] = v19;
  v9[113] = *(v19 + 64);
  v9[114] = swift_task_alloc();
  v9[115] = swift_task_alloc();
  v20 = sub_1DDA134E0();
  v9[116] = v20;
  v9[117] = *(v20 - 8);
  v9[118] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83658, &qword_1DDA1B1C8);
  v9[119] = v21;
  v9[120] = *(v21 - 8);
  v9[121] = swift_task_alloc();
  v9[122] = swift_task_alloc();
  v9[123] = swift_task_alloc();
  sub_1DDA14B60();
  v9[124] = swift_task_alloc();
  v22 = sub_1DDA14810();
  v9[125] = v22;
  v9[126] = *(v22 - 8);
  v9[127] = swift_task_alloc();
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0) - 8);
  v9[128] = v23;
  v9[129] = *(v23 + 64);
  v9[130] = swift_task_alloc();
  v9[131] = swift_task_alloc();
  v9[132] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v9[133] = swift_task_alloc();
  v9[134] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FA0, &qword_1DDA18948);
  v9[135] = swift_task_alloc();
  v9[136] = swift_task_alloc();
  v24 = swift_task_alloc();
  v9[137] = v24;
  *v24 = v9;
  v24[1] = sub_1DD9A0D1C;

  return sub_1DD99D264(v29, a2, a3);
}

uint64_t sub_1DD9A0D1C()
{
  v2 = *v1;
  v2[138] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[92];

    return MEMORY[0x1EEE6DFA0](sub_1DD9A0F94, v5, 0);
  }
}

uint64_t sub_1DD9A0F94()
{
  v1 = v0[92];
  v0[139] = v1[45];
  v0[140] = v1[14];
  v0[141] = v1[15];
  return MEMORY[0x1EEE6DFA0](sub_1DD9A0FCC, 0, 0);
}

uint64_t sub_1DD9A0FCC()
{
  v1 = v0[141];
  v2 = v0[140];
  v3 = v0[139];
  v4 = v0[133];
  v5 = sub_1DDA14D60();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1DDA14D40();

  v6 = sub_1DDA14D30();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v2;
  v7[5] = v1;
  v7[6] = v3;
  v9 = sub_1DD982A18(0, 0, v4, &unk_1DDA18960, v7);
  v0[142] = v9;
  v10 = swift_task_alloc();
  v0[143] = v10;
  *v10 = v0;
  v10[1] = sub_1DD9A1148;
  v11 = v0[136];
  v12 = v0[134];

  return MEMORY[0x1EEE6DA40](v11, v9, v12);
}

uint64_t sub_1DD9A1148()
{
  v1 = *(*v0 + 736);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A1274, v1, 0);
}

uint64_t sub_1DD9A1274()
{
  v1 = v0[135];
  sub_1DD90ADB4(v0[136], v1, &qword_1ECD82FA0, &qword_1DDA18948);
  v2 = type metadata accessor for SessionRegistry.SessionInfo(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[135];
  if (v3 == 1)
  {
    sub_1DD90D378(v0[135], &qword_1ECD82FA0, &qword_1DDA18948);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);

    sub_1DD9B4918(v4, type metadata accessor for SessionRegistry.SessionInfo);
  }

  v0[145] = v6;
  v0[144] = v5;
  v7 = swift_task_alloc();
  v0[146] = v7;
  *v7 = v0;
  v7[1] = sub_1DD9A13E0;
  v8 = v0[141];
  v9 = v0[140];
  v10 = v0[86];
  v11 = v0[82];
  v12 = v0[81];

  return sub_1DD9AE07C(v9, v8, v12, v11, v10);
}

uint64_t sub_1DD9A13E0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 736);
  *(v3 + 1176) = a1;
  *(v3 + 1184) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DD9A14FC, v4, 0);
}

uint64_t sub_1DD9A14FC()
{
  v27 = *(v0 + 1176);
  v28 = *(v0 + 1184);
  v29 = *(v0 + 1104);
  v1 = *(v0 + 1056);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v24 = *(v0 + 712);
  v25 = *(v0 + 696);
  v26 = *(v0 + 704);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = *(v0 + 656);
  v7 = *(v0 + 648);
  swift_beginAccess();
  sub_1DD928DF4(v2 + 216, v0 + 296);
  v8 = *(v0 + 312);
  *(v0 + 456) = *(v0 + 296);
  *(v0 + 472) = v8;
  *(v0 + 485) = *(v0 + 325);
  sub_1DD9122F0(v1);
  sub_1DD9291B0(v0 + 296);
  __swift_project_boxed_opaque_existential_1((v2 + 176), *(v2 + 200));
  sub_1DD983C08(v7, v6, v27, v28, v5, v4, v25, v26, v0 + 16, v24, *(&v24 + 1), v3);
  if (v29)
  {
    v9 = *(v0 + 1088);
    v10 = *(v0 + 1056);

    sub_1DD90D378(v10, &qword_1ECD82D20, &qword_1DDA18CE0);
    sub_1DD90D378(v9, &qword_1ECD82FA0, &qword_1DDA18948);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {

    type metadata accessor for Session.ResponseInfo(0);
    v13 = swift_allocObject();
    *(v0 + 1192) = v13;
    swift_defaultActor_initialize();
    v13[14] = 0;
    v13[15] = 0;
    v14 = MEMORY[0x1E69E7CC8];
    v13[16] = MEMORY[0x1E69E7CC8];
    v13[17] = v14;
    v13[18] = v14;
    if (qword_1ECD827B8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 1016);
    v16 = *(v0 + 1008);
    v17 = *(v0 + 1000);
    v18 = __swift_project_value_buffer(v17, qword_1ECDA2110);
    *(v0 + 1200) = v18;
    (*(v16 + 16))(v15, v18, v17);
    sub_1DDA14770();
    v19 = OBJC_IVAR____TtCC5Anvil7SessionP33_E1876D4D428828624FC460FD9CB075F112ResponseInfo_signposts;
    *(v13 + v19) = sub_1DD9402A0(MEMORY[0x1E69E7CC0]);

    v20 = swift_task_alloc();
    *(v0 + 1208) = v20;
    *v20 = v0;
    v20[1] = sub_1DD9A194C;
    v21 = *(v0 + 736);
    v22 = *(v0 + 656);
    v23 = *(v0 + 648);

    return sub_1DD9774B8("FetchAuthenticationHeaders", 26, 2, v18, v21, v23, v22);
  }
}

void sub_1DD9A194C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1216) = a1;

  v4 = *(v3 + 736);

  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1DD9A1ABC, v4, 0);
  }
}

uint64_t sub_1DD9A1ABC()
{
  if (*(__swift_project_boxed_opaque_existential_1((v0[92] + 176), *(v0[92] + 200)) + 48) == 1)
  {
    v1 = swift_allocObject();
    swift_weakInit();
    v2 = sub_1DD9403A4(MEMORY[0x1E69E7CC0]);
    v3 = &unk_1DDA1B210;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v1 = 0;
  }

  v4 = swift_allocObject();
  v0[153] = v4;
  v4[2] = v2;
  v5 = (v4 + 2);
  v4[3] = v3;
  v4[4] = v1;

  v6 = swift_task_alloc();
  v0[154] = v6;
  *v6 = v0;
  v6[1] = sub_1DD9A1C3C;
  v7 = v0[150];
  v8 = v0[82];
  v9 = v0[81];

  return sub_1DD9791E4("FetchTicketingHeaders", 21, 2, v7, v5, v9, v8);
}

void sub_1DD9A1C3C(uint64_t a1)
{
  v3 = *v2;
  v3[155] = a1;
  v3[156] = v1;

  if (v1)
  {
  }

  else
  {
    v4 = v3[92];

    MEMORY[0x1EEE6DFA0](sub_1DD9A1D8C, v4, 0);
  }
}

uint64_t sub_1DD9A1D8C()
{
  v16 = v0;
  v1 = v0[156];
  v2 = v0[152];
  v3 = sub_1DD98A3E8(v0[155]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v3;
  sub_1DD911E90(v2, sub_1DD9B233C, 0, isUniquelyReferenced_nonNull_native, &v15);
  if (v1)
  {
  }

  else
  {
    v6 = v0[82];
    v7 = v0[81];

    v0[78] = v15;
    v0[67] = 0xD000000000000018;
    v0[68] = 0x80000001DDA262D0;
    v0[69] = v7;
    v0[70] = v6;
    sub_1DDA13230();
    swift_allocObject();

    sub_1DDA13220();
    sub_1DD9B2808();
    v8 = sub_1DDA13210();
    v10 = v9;

    v11 = v0[149];

    sub_1DDA14B50();
    v12 = sub_1DDA14B30();
    v14 = v13;
    sub_1DD909D28(v8, v10);
    sub_1DD9C70C8(v12, v14, 0xD000000000000022, 0x80000001DDA26990);

    return MEMORY[0x1EEE6DFA0](sub_1DD9A1FC0, v11, 0);
  }
}

uint64_t sub_1DD9A1FC0()
{
  v1 = *(v0 + 736);
  sub_1DD9AD638("StreamingPromptSessionCreated", 29, 2);
  sub_1DD9AD638("StreamingPromptTimeToFirstToken", 31, 2);

  return MEMORY[0x1EEE6DFA0](sub_1DD9A2050, v1, 0);
}

uint64_t sub_1DD9A2050()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[118];
  __swift_project_boxed_opaque_existential_1((v0[92] + 176), *(v0[92] + 200));
  sub_1DD983354(v2, v1, 0x736E6F707365722FLL, 0xEA00000000007365, v3);

  v4 = v0[78];
  v0[157] = v4;
  v5 = sub_1DDA13A60();
  v7 = v6;
  v8 = swift_task_alloc();
  v0[158] = v8;
  *v8 = v0;
  v8[1] = sub_1DD9A2190;
  v9 = v0[122];
  v10 = v0[118];

  return sub_1DD98A6C0(v9, v10, v0 + 2, v4, v5, v7 & 1);
}

uint64_t sub_1DD9A2190(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 1272) = v1;

  if (v1)
  {
    v4 = v3[92];
    (*(v3[117] + 8))(v3[118], v3[116]);

    v5 = sub_1DD9A2B24;
    v6 = v4;
  }

  else
  {
    v7 = v3[118];
    v8 = v3[117];
    v9 = v3[116];
    v10 = v3[92];

    (*(v8 + 8))(v7, v9);
    v5 = sub_1DD9A234C;
    v6 = v10;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1DD9A234C()
{
  v1 = *(v0 + 920);
  v55 = *(v0 + 888);
  v56 = *(v0 + 1048);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v58 = *(v0 + 1272);
  v53 = *(v0 + 736);
  v5 = *(v0 + 664);
  (*(*(v0 + 960) + 32))(*(v0 + 984), *(v0 + 976), *(v0 + 952));
  v6 = *(v3 + 16);
  v6(v2, v5, v4);
  v6(v1, v2, v4);
  sub_1DDA14840();
  swift_allocObject();
  v7 = sub_1DDA14830();
  (*(v3 + 8))(v2, v4);
  *(v1 + *(v55 + 20)) = v7;
  sub_1DD928DF4(v53 + 216, v0 + 376);
  v8 = *(v0 + 392);
  *(v0 + 496) = *(v0 + 376);
  *(v0 + 512) = v8;
  *(v0 + 525) = *(v0 + 405);
  sub_1DD9122F0(v56);
  sub_1DD9291B0(v0 + 376);
  v9 = swift_task_alloc();
  *(v9 + 16) = v1;
  *(v9 + 24) = v56;
  sub_1DDA14820();
  if (v58)
  {

    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  v50 = *(v0 + 1192);
  v51 = *(v0 + 1224);
  v49 = *(v0 + 1088);
  v52 = *(v0 + 1056);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1040);
  v57 = v11;
  v38 = *(v0 + 1024);
  v39 = *(v0 + 1032);
  v12 = *(v0 + 984);
  v47 = v12;
  v13 = *(v0 + 968);
  v14 = *(v0 + 960);
  v48 = v14;
  v15 = *(v0 + 952);
  v59 = *(v0 + 920);
  v54 = *(v0 + 912);
  v41 = *(v0 + 904);
  v37 = *(v0 + 896);
  v16 = *(v0 + 856);
  v43 = *(v0 + 848);
  v44 = *(v0 + 824);
  v45 = *(v0 + 816);
  v46 = *(v0 + 840);
  v17 = *(v0 + 808);
  v35 = *(v0 + 792);
  v36 = *(v0 + 800);
  v40 = *(v0 + 736);
  v42 = *(v0 + 720);
  v33 = *(v0 + 672);

  v18 = sub_1DDA14250();
  (*(*(v18 - 8) + 56))(v16, v34, 1, v18);
  sub_1DD90D378(v16, &qword_1ECD83650, &qword_1DDA1B1C0);
  sub_1DD90D378(v10, &qword_1ECD82D20, &qword_1DDA18CE0);
  (*(v14 + 16))(v13, v12, v15);
  sub_1DD90ADB4(v52, v11, &qword_1ECD82D20, &qword_1DDA18CE0);
  sub_1DD90ADB4(v33, v17, &qword_1ECD82F60, &qword_1DDA18890);
  sub_1DD9B4C84(v59, v54, type metadata accessor for Instrumentation);
  v19 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v20 = (v39 + *(v35 + 80) + v19) & ~*(v35 + 80);
  v21 = (v36 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v37 + 80) + v21 + 8) & ~*(v37 + 80);
  v23 = (v41 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v40;
  sub_1DD914958(v57, v24 + v19, &qword_1ECD82D20, &qword_1DDA18CE0);
  sub_1DD914958(v17, v24 + v20, &qword_1ECD82F60, &qword_1DDA18890);
  *(v24 + v21) = v50;
  sub_1DD9B4978(v54, v24 + v22, type metadata accessor for Instrumentation);
  *(v24 + v23) = v42;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v51;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82FE0, &qword_1DDA189C8);
  sub_1DD90D2A4(&qword_1ECD83668, &qword_1ECD83658, &qword_1DDA1B1C8, MEMORY[0x1E69E87D0]);
  sub_1DDA154D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83670, &qword_1DDA1B1E8);
  v25 = swift_allocBox();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83678, &qword_1DDA1B1F0);
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  (*(v44 + 16))(v46, v43, v45);
  v29 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  (*(v44 + 32))(v30 + v29, v46, v45);

  sub_1DDA14E30();
  sub_1DD9B285C(v0 + 16);

  (*(v44 + 8))(v43, v45);
  (*(v48 + 8))(v47, v15);
  sub_1DD90D378(v52, &qword_1ECD82D20, &qword_1DDA18CE0);
  sub_1DD90D378(v49, &qword_1ECD82FA0, &qword_1DDA18948);

  sub_1DD9B4918(v59, type metadata accessor for Instrumentation);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1DD9A2B24()
{
  v1 = *(v0 + 1272);
  *(v0 + 632) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F80, &qword_1DDA188E0);
  if (!swift_dynamicCast())
  {
    v59 = *(v0 + 1088);
    v60 = *(v0 + 1056);

    sub_1DD9B285C(v0 + 16);

    sub_1DD90D378(v60, &qword_1ECD82D20, &qword_1DDA18CE0);
    sub_1DD90D378(v59, &qword_1ECD82FA0, &qword_1DDA18948);
    goto LABEL_43;
  }

  v3 = (*(*(v0 + 776) + 88))(*(v0 + 784), *(v0 + 768));
  if (v3 != *MEMORY[0x1E69DA4A8])
  {
    v61 = *(v0 + 1088);
    v62 = *(v0 + 1056);
    v63 = *(v0 + 784);
    v64 = *(v0 + 776);
    v65 = *(v0 + 768);

    sub_1DD9B285C(v0 + 16);

    sub_1DD90D378(v62, &qword_1ECD82D20, &qword_1DDA18CE0);
    sub_1DD90D378(v61, &qword_1ECD82FA0, &qword_1DDA18948);
    (*(v64 + 8))(v63, v65);
LABEL_43:

LABEL_45:

    v74 = *(v0 + 8);

    return v74();
  }

  v88 = v3;
  v4 = v0 + 568;
  v5 = *(v0 + 1240);
  v6 = *(v0 + 784);
  v7 = *(v0 + 776);
  v8 = *(v0 + 768);
  v9 = *(v0 + 760);
  v10 = *(v0 + 752);
  v11 = *(v0 + 744);

  (*(v7 + 96))(v6, v8);
  (*(v10 + 32))(v9, v6, v11);
  v12 = v5;
  v13 = 0;
  v16 = *(v5 + 64);
  v15 = v5 + 64;
  v14 = v16;
  v17 = -1;
  v18 = -1 << *(v12 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & v14;
  v20 = (63 - v18) >> 6;
  v21 = "CodeInterpreterTicketRequestId";
  v22 = "FileUploadTicketRequestId";
  v23 = "ImageGeneratorTicketRequestId";
  v24 = "StreamingPromptTimeToFirstToken";
  while (v19)
  {
LABEL_11:
    v26 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = (*(v12 + 56) + 24 * (v26 | (v13 << 6)));
    v28 = *v27;
    if (*v27 < 0 && (v28 & 0xC000) == 0)
    {
      v80 = v21;
      v81 = v12;
      v29 = v27[1];
      v30 = v27[2];
      v31 = *v27;
      v32 = 0xD000000000000019;
      if (v28 == 2)
      {
        v32 = 0xD00000000000001ELL;
      }

      v78 = v23;
      v79 = v22;
      if (v31 == 2)
      {
        v33 = v22;
      }

      else
      {
        v33 = v23;
      }

      v34 = 0xD00000000000001DLL;
      if (!v31)
      {
        v34 = 0xD00000000000001ELL;
      }

      v77 = v24;
      if (v31)
      {
        v35 = v24;
      }

      else
      {
        v35 = v21;
      }

      if (v28 <= 1u)
      {
        v36 = v34;
      }

      else
      {
        v36 = v32;
      }

      v87 = v36;
      if (v28 <= 1u)
      {
        v37 = v35;
      }

      else
      {
        v37 = v33;
      }

      v38 = v37 | 0x8000000000000000;
      v82 = v29;
      sub_1DD940DF4(v28, v29, v30);
      v84 = v30;

      v83 = v4;
      v76 = sub_1DDA13820();
      v40 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *v40;
      v89 = *v40;
      v75 = v40;
      *v40 = 0x8000000000000000;
      v85 = v38;
      v44 = sub_1DD96AC38(v87, v38);
      v45 = v42[2];
      v46 = (v43 & 1) == 0;
      result = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      v48 = v43;
      if (v42[3] >= result)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v4 = v83;
          if (v43)
          {
            goto LABEL_36;
          }
        }

        else
        {
          result = sub_1DD9C9D00();
          v4 = v83;
          if (v48)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_1DD9C838C(result, isUniquelyReferenced_nonNull_native);
        result = sub_1DD96AC38(v87, v85);
        if ((v48 & 1) != (v49 & 1))
        {
          goto LABEL_49;
        }

        v44 = result;
        v4 = v83;
        if (v48)
        {
LABEL_36:

          v50 = v89;
          v51 = (v89[7] + 16 * v44);
          v52 = v82;
          v53 = v84;
          *v51 = v82;
          v51[1] = v84;

          goto LABEL_40;
        }
      }

      v50 = v89;
      v89[(v44 >> 6) + 8] |= 1 << v44;
      v54 = (v89[6] + 16 * v44);
      *v54 = v87;
      v54[1] = v85;
      v55 = (v89[7] + 16 * v44);
      v52 = v82;
      *v55 = v82;
      v55[1] = v84;
      v56 = v89[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_53;
      }

      v89[2] = v58;
      v53 = v84;
LABEL_40:
      *v75 = v50;

      v76(v4, 0);
      sub_1DD94A02C(v28, v52, v53);
      v21 = v80;
      v12 = v81;
      v23 = v78;
      v22 = v79;
      v24 = v77;
    }
  }

  while (1)
  {
    v25 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v86 = *(v0 + 1088);
      v66 = *(v0 + 1056);
      v67 = *(v0 + 776);
      v68 = *(v0 + 768);
      v69 = *(v0 + 760);
      v70 = *(v0 + 752);
      v71 = *(v0 + 744);

      sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
      swift_allocError();
      v73 = v72;
      (*(v70 + 16))(v72, v69, v71);
      (*(v67 + 104))(v73, v88, v68);
      swift_willThrow();
      sub_1DD9B285C(v0 + 16);

      (*(v70 + 8))(v69, v71);
      sub_1DD90D378(v66, &qword_1ECD82D20, &qword_1DDA18CE0);
      sub_1DD90D378(v86, &qword_1ECD82FA0, &qword_1DDA18948);

      goto LABEL_45;
    }

    v19 = *(v15 + 8 * v25);
    ++v13;
    if (v19)
    {
      v13 = v25;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_49:

  return sub_1DDA15500();
}

uint64_t sub_1DD9A32B8(char a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  *(v2 + 80) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD9A32DC, 0, 0);
}

uint64_t sub_1DD9A32DC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DD9A3394, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1DD9A3394()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  sub_1DD914294(v1);
  swift_endAccess();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DD9A3424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[172] = v16;
  v8[171] = a8;
  v8[170] = a7;
  v8[169] = a6;
  v8[168] = a5;
  v8[167] = a4;
  v8[166] = a3;
  v8[165] = a2;
  v8[164] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CF8, &unk_1DDA1AD50);
  v8[173] = swift_task_alloc();
  v9 = type metadata accessor for ChatChunk.RateLimits(0);
  v8[174] = v9;
  v8[175] = *(v9 - 8);
  v8[176] = swift_task_alloc();
  v8[177] = swift_task_alloc();
  v8[178] = swift_task_alloc();
  v10 = sub_1DDA13880();
  v8[179] = v10;
  v8[180] = *(v10 - 8);
  v8[181] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82CE0, &qword_1DDA18700);
  v8[182] = swift_task_alloc();
  type metadata accessor for FileGeneratorCall.File(0);
  v8[183] = swift_task_alloc();
  v8[184] = type metadata accessor for ChatChunk.FileGeneratorCallFileAdded(0);
  v8[185] = swift_task_alloc();
  v8[186] = swift_task_alloc();
  sub_1DDA13960();
  v8[187] = swift_task_alloc();
  v8[188] = type metadata accessor for FileGeneratorFile(0);
  v8[189] = swift_task_alloc();
  v8[190] = type metadata accessor for MessageContent(0);
  v8[191] = swift_task_alloc();
  v8[192] = type metadata accessor for ChatChunk.ChoiceItemMessageContent(0);
  v8[193] = swift_task_alloc();
  sub_1DDA13990();
  v8[194] = swift_task_alloc();
  type metadata accessor for ImageGeneratorCall.Image(0);
  v8[195] = swift_task_alloc();
  v8[196] = swift_task_alloc();
  v8[197] = type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded(0);
  v8[198] = swift_task_alloc();
  v8[199] = swift_task_alloc();
  v8[200] = swift_task_alloc();
  v8[201] = swift_task_alloc();
  v8[202] = swift_task_alloc();
  sub_1DDA13930();
  v8[203] = swift_task_alloc();
  v11 = sub_1DDA13910();
  v8[204] = v11;
  v8[205] = *(v11 - 8);
  v8[206] = swift_task_alloc();
  v8[207] = swift_task_alloc();
  v12 = sub_1DDA14180();
  v8[208] = v12;
  v8[209] = *(v12 - 8);
  v8[210] = swift_task_alloc();
  v8[211] = swift_task_alloc();
  v8[212] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83690, &qword_1DDA1B218);
  v8[213] = swift_task_alloc();
  v8[214] = swift_task_alloc();
  v13 = sub_1DDA134E0();
  v8[215] = v13;
  v8[216] = *(v13 - 8);
  v8[217] = swift_task_alloc();
  v8[218] = type metadata accessor for TextAnnotation.URLCitation(0);
  v8[219] = swift_task_alloc();
  v8[220] = type metadata accessor for TextAnnotation.Type(0);
  v8[221] = swift_task_alloc();
  type metadata accessor for TextAnnotation(0);
  v8[222] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83698, &qword_1DDA1B220);
  v8[223] = swift_task_alloc();
  v8[224] = swift_task_alloc();
  v8[225] = swift_task_alloc();
  v8[226] = type metadata accessor for ChatChunk.TextValueAnnotation(0);
  v8[227] = swift_task_alloc();
  v8[228] = swift_task_alloc();
  v8[229] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD83650, &qword_1DDA1B1C0);
  v8[230] = swift_task_alloc();
  v8[231] = swift_task_alloc();
  v8[232] = swift_task_alloc();
  v8[233] = swift_task_alloc();
  v8[234] = swift_task_alloc();
  v8[235] = swift_task_alloc();
  v8[236] = swift_task_alloc();
  v8[237] = swift_task_alloc();
  v8[238] = type metadata accessor for ChatChunk.ChoiceResource(0);
  v8[239] = swift_task_alloc();
  v8[240] = swift_task_alloc();
  sub_1DDA13900();
  v8[241] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D30, &qword_1DDA188D0);
  v8[242] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82F60, &qword_1DDA18890);
  v8[243] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD82D20, &qword_1DDA18CE0);
  v8[244] = swift_task_alloc();
  v8[245] = type metadata accessor for CreateSessionResponse(0);
  v8[246] = swift_task_alloc();
  v8[247] = type metadata accessor for ChatChunk(0);
  v8[248] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD9A3CA0, 0, 0);
}

uint64_t sub_1DD9A3CA0()
{
  v361 = v0;
  sub_1DD9B4C84(*(v0 + 1320), *(v0 + 1984), type metadata accessor for ChatChunk);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v1 = *(v0 + 1968);
      v2 = *(v0 + 1952);
      v3 = *(v0 + 1336);
      v4 = *(v0 + 1328);
      sub_1DD9B4978(*(v0 + 1984), v1, type metadata accessor for CreateSessionResponse);
      v5 = v4[45];
      v7 = v4[14];
      v6 = v4[15];
      v8 = v4[18];
      v9 = v4[19];
      v10 = v4[16];
      v11 = v4[17];
      v348 = v10;
      v12 = v1[1];
      v344 = v6;
      v345 = *v1;
      sub_1DD90ADB4(v3, v2, &qword_1ECD82D20, &qword_1DDA18CE0);
      v13 = type metadata accessor for Credentials(0);
      v14 = (*(*(v13 - 8) + 48))(v2, 1, v13);
      v15 = *(v0 + 1952);
      v354 = v8;
      v352 = v7;
      v16 = v11;
      if (v14 == 1)
      {
        sub_1DD90D378(v15, &qword_1ECD82D20, &qword_1DDA18CE0);
        v342 = 0;
        v343 = 0;
      }

      else
      {
        v150 = Credentials.credentialsID.getter();
        v342 = v151;
        v343 = v150;
        sub_1DD9B4918(v15, type metadata accessor for Credentials);
      }

      v152 = *(v0 + 1944);
      sub_1DD90ADB4(*(v0 + 1344), v152, &qword_1ECD82F60, &qword_1DDA18890);
      v153 = sub_1DDA13F50();
      v154 = *(v153 - 8);
      v155 = (*(v154 + 48))(v152, 1, v153);
      v156 = *(v0 + 1944);
      if (v155 == 1)
      {
        sub_1DD90D378(*(v0 + 1944), &qword_1ECD82F60, &qword_1DDA18890);
        v341 = 0;
      }

      else
      {
        v341 = sub_1DDA13F40();
        (*(v154 + 8))(v156, v153);
      }

      v157 = *(v0 + 1968);
      v158 = (v157 + *(*(v0 + 1960) + 32));
      v159 = *v158;
      v160 = 0.0;
      if (v159 != 2)
      {
        v160 = v158[1];
      }

      v340 = v159 == 2;
      v161 = v155 == 1;
      v162 = *(v0 + 1936);
      v163 = sub_1DDA14D60();
      (*(*(v163 - 8) + 56))(v162, 1, 1, v163);
      sub_1DDA14D40();

      v164 = sub_1DDA14D30();
      v165 = swift_allocObject();
      v166 = MEMORY[0x1E69E85E0];
      *(v165 + 16) = v164;
      *(v165 + 24) = v166;
      *(v165 + 32) = v348;
      *(v165 + 40) = v16;
      *(v165 + 48) = v345;
      *(v165 + 56) = v12;
      *(v165 + 64) = v352;
      *(v165 + 72) = v344;
      *(v165 + 80) = v5;
      *(v165 + 88) = v354;
      *(v165 + 96) = v9;
      *(v165 + 104) = v343;
      *(v165 + 112) = v342;
      *(v165 + 120) = v341;
      *(v165 + 124) = v161;
      *(v165 + 128) = v160;
      *(v165 + 136) = v340;
      sub_1DD982718(0, 0, v162, &unk_1DDA1B250, v165);

      v144 = type metadata accessor for CreateSessionResponse;
      v143 = v157;
      goto LABEL_64;
    case 2u:
      v76 = *(v0 + 1984);
      v24 = *(v0 + 1352);
      v77 = *v76;
      v78 = v76[1];
      v79 = v76[3];
      *(v0 + 408) = v76[2];
      *(v0 + 424) = v79;
      *(v0 + 376) = v77;
      *(v0 + 392) = v78;
      v80 = v76[4];
      v81 = v76[5];
      v82 = v76[6];
      *(v0 + 488) = *(v76 + 14);
      *(v0 + 456) = v81;
      *(v0 + 472) = v82;
      *(v0 + 440) = v80;
      v83 = *(v0 + 384);
      *(v0 + 1992) = *(v0 + 376);
      *(v0 + 2000) = v83;
      v25 = sub_1DD9A6E50;
      goto LABEL_74;
    case 4u:
      v42 = *(v0 + 1984);
      v43 = *(v42 + 32);
      v44 = *(v42 + 48);
      v45 = *(v42 + 16);
      *(v0 + 136) = *v42;
      *(v0 + 184) = v44;
      *(v0 + 168) = v43;
      *(v0 + 152) = v45;
      v47 = *(v42 + 80);
      v46 = *(v42 + 96);
      v48 = *(v42 + 112);
      *(v0 + 200) = *(v42 + 64);
      *(v0 + 248) = v48;
      *(v0 + 232) = v46;
      *(v0 + 216) = v47;
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v49 = sub_1DDA14810();
      __swift_project_value_buffer(v49, qword_1ECDA20E0);
      sub_1DD9B2CA0(v0 + 136, v0 + 256);
      v50 = sub_1DDA147F0();
      v51 = sub_1DDA14F00();
      sub_1DD9B2CFC(v0 + 136);
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v360[0] = v53;
        *v52 = 136315138;
        *(v0 + 1304) = *(v0 + 224);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836A8, &qword_1DDA1B238);
        v54 = sub_1DDA14B70();
        v56 = sub_1DD93FA54(v54, v55, v360);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_1DD8F8000, v50, v51, "Received response notices: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x1E12B8CE0](v53, -1, -1);
        MEMORY[0x1E12B8CE0](v52, -1, -1);
      }

      v58 = *(v0 + 232);
      v57 = *(v0 + 240);
      *(v0 + 2512) = v58;
      *(v0 + 2520) = v57;
      v59 = *(v0 + 248);
      *(v0 + 2528) = v59;
      if (v58)
      {
        sub_1DD9B2E6C(v58, v57, v59);
      }

      else
      {
        v58 = MEMORY[0x1E69E7CC0];
      }

      *(v0 + 2536) = v58;
      v201 = *(v58 + 16);
      *(v0 + 2544) = v201;
      if (!v201)
      {
        goto LABEL_92;
      }

      swift_beginAccess();
      v202 = 0;
      v203 = 0;
      v204 = *(v0 + 1376);
      do
      {
        *(v0 + 2552) = v203;
        v205 = v204[2];
        *(v0 + 2560) = v205;
        if (v205)
        {
          v219 = *(v0 + 2536);
          v220 = v204[4];
          *(v0 + 2568) = v220;
          v221 = v204[3];
          v222 = v219 + v202;
          v223 = *(v222 + 48);
          *(v0 + 2576) = v223;
          v224 = *(v222 + 40);
          v225 = *(v222 + 32);

          sub_1DD9B2D50(v205, v221, v220);
          v226 = swift_task_alloc();
          *(v0 + 2584) = v226;
          *v226 = v0;
          v226[1] = sub_1DD9ABAB4;

          return sub_1DD948CE8(v224, v223, v225, v205);
        }

        ++v203;
        v202 += 24;
      }

      while (v203 != *(v0 + 2544));
LABEL_92:

      v206 = *(v0 + 1376);
      swift_beginAccess();
      v207 = *(v206 + 16);
      if (!v207)
      {
        sub_1DD9B41AC(*(v0 + 2512), *(v0 + 2520), *(v0 + 2528), MEMORY[0x1E69E7CF8]);
        v227 = *(v0 + 216);
        if (v227 && *(v227 + 16))
        {
          v228 = *(v0 + 1936);
          v229 = *(v0 + 1328);
          v230 = *(type metadata accessor for ChatChunk.Choice(0) - 8);
          v231 = (v227 + ((*(v230 + 80) + 32) & ~*(v230 + 80)));
          v233 = *v231;
          v232 = v231[1];
          v234 = v229[45];
          v236 = v229[14];
          v235 = v229[15];
          v237 = sub_1DDA14D60();
          (*(*(v237 - 8) + 56))(v228, 1, 1, v237);
          sub_1DDA14D40();

          v238 = sub_1DDA14D30();
          v239 = swift_allocObject();
          v240 = MEMORY[0x1E69E85E0];
          v239[2] = v238;
          v239[3] = v240;
          v239[4] = v233;
          v239[5] = v232;
          v239[6] = v236;
          v239[7] = v235;
          v239[8] = v234;
          sub_1DD982718(0, 0, v228, &unk_1DDA1B230, v239);
        }

        v241 = MEMORY[0x1E69E7CC0];
        v242 = sub_1DD940874(MEMORY[0x1E69E7CC0]);
        v243 = *(v0 + 224);
        if (v243)
        {

          sub_1DD9B2CFC(v0 + 136);
          v244 = *(v243 + 16);
          if (v244)
          {
            v351 = v242;
            v360[0] = v241;
            sub_1DD9AF17C(0, v244, 0);
            v241 = v360[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD830B0, &unk_1DDA18D30);
            v245 = (v243 + 56);
            while (1)
            {
              v246 = *(v245 - 3);
              v247 = *(v245 - 2);
              v248 = *(v245 - 1);
              v249 = *v245;
              *(v0 + 648) = 25705;
              *(v0 + 656) = 0xE200000000000000;
              *(v0 + 664) = v246;
              *(v0 + 672) = v247;
              *(v0 + 680) = 0x6567617373656DLL;
              *(v0 + 688) = 0xE700000000000000;
              *(v0 + 696) = v248;
              *(v0 + 704) = v249;
              v250 = sub_1DDA151C0();

              v251 = *(v0 + 648);
              v252 = *(v0 + 656);
              v253 = *(v0 + 664);
              v254 = *(v0 + 672);

              v255 = sub_1DD96AC38(v251, v252);
              if (v256)
              {
                break;
              }

              *(v250 + ((v255 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v255;
              v257 = (v250[6] + 16 * v255);
              *v257 = v251;
              v257[1] = v252;
              v258 = (v250[7] + 16 * v255);
              *v258 = v253;
              v258[1] = v254;
              v259 = v250[2];
              v260 = __OFADD__(v259, 1);
              v261 = v259 + 1;
              if (v260)
              {
                goto LABEL_175;
              }

              v250[2] = v261;
              v262 = *(v0 + 680);
              v263 = *(v0 + 688);
              v264 = *(v0 + 696);
              v265 = *(v0 + 704);

              v266 = sub_1DD96AC38(v262, v263);
              if (v267)
              {
                break;
              }

              *(v250 + ((v266 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v266;
              v268 = (v250[6] + 16 * v266);
              *v268 = v262;
              v268[1] = v263;
              v269 = (v250[7] + 16 * v266);
              *v269 = v264;
              v269[1] = v265;
              v270 = v250[2];
              v260 = __OFADD__(v270, 1);
              v271 = v270 + 1;
              if (v260)
              {
                goto LABEL_175;
              }

              v250[2] = v271;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD829C8, &qword_1DDA1E380);
              swift_arrayDestroy();
              v360[0] = v241;
              v273 = *(v241 + 16);
              v272 = *(v241 + 24);
              if (v273 >= v272 >> 1)
              {
                sub_1DD9AF17C((v272 > 1), v273 + 1, 1);
                v241 = v360[0];
              }

              *(v241 + 16) = v273 + 1;
              *(v241 + 8 * v273 + 32) = v250;
              v245 += 4;
              if (!--v244)
              {

                v242 = v351;
                goto LABEL_149;
              }
            }

            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            swift_once();
LABEL_5:
            v17 = sub_1DDA14810();
            __swift_project_value_buffer(v17, qword_1ECDA20E0);
            v18 = sub_1DDA147F0();
            v19 = sub_1DDA14F00();
            if (os_log_type_enabled(v18, v19))
            {
              v20 = swift_slowAlloc();
              *v20 = 0;
              _os_log_impl(&dword_1DD8F8000, v18, v19, "Received file generator call in progress", v20, 2u);
              MEMORY[0x1E12B8CE0](v20, -1, -1);
            }

            v21 = *(v0 + 1360);

            type metadata accessor for Instrumentation(0);
            v22 = swift_task_alloc();
            *(v22 + 16) = 0;
            *(v22 + 24) = v21;
            sub_1DDA14820();
            v197 = *(v0 + 1880);
            v198 = *(v0 + 1352);

            v199 = sub_1DDA14250();
            (*(*(v199 - 8) + 56))(v197, 0, 1, v199);
            sub_1DD90D378(v197, &qword_1ECD83650, &qword_1DDA1B1C0);
            v200 = sub_1DD9A986C;
            goto LABEL_96;
          }

LABEL_149:
          *(v0 + 816) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836A0, &qword_1DDA1B228);
          *(v0 + 792) = v241;
          sub_1DD940DE4((v0 + 792), (v0 + 824));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v360[0] = v242;
          sub_1DD9CBCE4((v0 + 824), 0x73656369746F4ELL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
          v242 = v360[0];
        }

        else
        {
          sub_1DD9B2CFC(v0 + 136);
        }

        *(v0 + 2624) = v242;
        v24 = *(v0 + 1352);
        v25 = sub_1DD9AC8D0;
        goto LABEL_74;
      }

      v208 = *(v206 + 32);
      if (*(v0 + 2512))
      {
        v209 = *(v0 + 2528);

        if (v209)
        {
          v210 = *(v0 + 2528);
          v211 = *(v0 + 2520);
          goto LABEL_119;
        }
      }

      else
      {
      }

      v211 = 0;
      v210 = 0xE000000000000000;
LABEL_119:
      *(v0 + 2608) = v210;
      *(v0 + 2600) = v207;
      *(v0 + 2592) = v208;
      v275 = swift_task_alloc();
      *(v0 + 2616) = v275;
      *v275 = v0;
      v275[1] = sub_1DD9AC2E8;

      return sub_1DD949B9C(v211, v210);
    case 5u:
      v120 = *(v0 + 1920);
      v121 = *(v0 + 1904);
      v122 = *(v0 + 1352);
      sub_1DD9B4978(*(v0 + 1984), v120, type metadata accessor for ChatChunk.ChoiceResource);
      v123 = (v120 + *(v121 + 20));
      *(v0 + 2024) = *v123;
      *(v0 + 2032) = v123[1];
      *(v0 + 2040) = *v120;
      v124 = sub_1DD9A76B8;
      goto LABEL_143;
    case 9u:
      sub_1DD9B4978(*(v0 + 1984), *(v0 + 1912), type metadata accessor for ChatChunk.ChoiceResource);
      sub_1DD9CE658();
      if (v125)
      {
        goto LABEL_45;
      }

      v216 = *(v0 + 1912);
      v217 = *(*(v0 + 1904) + 20);
      *(v0 + 2648) = v217;
      v218 = (v216 + v217);
      if (*(v216 + v217 + 16) == 1)
      {
      }

      else
      {
        v276 = sub_1DDA15440();

        if ((v276 & 1) == 0)
        {
          goto LABEL_124;
        }
      }

      v277 = v218[4];
      *(v0 + 2440) = v277;
      v278 = v218[5];
      *(v0 + 2448) = v278;
      *(v0 + 2456) = v218[6];
      v279 = v218[7];
      *(v0 + 2464) = v279;
      if (v279 == 1)
      {
LABEL_124:
        v280 = *(v0 + 1728);
        v281 = *(v0 + 1720);
        v282 = *(v0 + 1456);
        v283 = sub_1DD940874(MEMORY[0x1E69E7CC0]);
        v284 = type metadata accessor for ChatChunk.Choice(0);
        sub_1DD90ADB4(v218 + *(v284 + 32), v282, &qword_1ECD82CE0, &qword_1DDA18700);
        if ((*(v280 + 48))(v282, 1, v281) == 1)
        {
          sub_1DD90D378(*(v0 + 1456), &qword_1ECD82CE0, &qword_1DDA18700);
        }

        else
        {
          v287 = *(v0 + 1728);
          v288 = *(v0 + 1720);
          v289 = *(v0 + 1456);
          v290 = sub_1DDA13440();
          v292 = v291;
          (*(v287 + 8))(v289, v288);
          *(v0 + 880) = MEMORY[0x1E69E6158];
          *(v0 + 856) = v290;
          *(v0 + 864) = v292;
          sub_1DD940DE4((v0 + 856), (v0 + 888));
          v293 = swift_isUniquelyReferenced_nonNull_native();
          v360[0] = v283;
          sub_1DD9CBCE4((v0 + 888), 0x61756E69746E6F43, 0xEF4C52556E6F6974, v293);
        }

        *(v0 + 2472) = v283;
        v24 = *(v0 + 1352);
        v25 = sub_1DD9AB518;
LABEL_74:
        v89 = v25;
        goto LABEL_144;
      }

      if (v278 <= 1)
      {
        if (v278 <= 1)
        {
          goto LABEL_152;
        }
      }

      else
      {
        if (v278 == 2 || v278 == 3)
        {
          goto LABEL_152;
        }

        if (v278 == 4)
        {
          v285 = 0xD00000000000001CLL;
          v286 = 0x80000001DDA28010;
LABEL_161:
          if (v285 == 0xD00000000000001CLL && 0x80000001DDA28010 == v286)
          {
            sub_1DD928DC0(v277, v278);

            goto LABEL_164;
          }

LABEL_152:
          v325 = sub_1DDA15440();
          sub_1DD928DC0(v277, v278);

          if (v325)
          {
LABEL_164:
            v326 = *(v0 + 1360);
            type metadata accessor for Instrumentation(0);
            v327 = swift_task_alloc();
            *(v327 + 16) = 2;
            *(v327 + 24) = v326;
            sub_1DDA14820();
            v328 = *(v0 + 1856);
            v198 = *(v0 + 1352);

            v329 = sub_1DDA14250();
            (*(*(v329 - 8) + 56))(v328, 0, 1, v329);
            sub_1DD90D378(v328, &qword_1ECD83650, &qword_1DDA1B1C0);
            v200 = sub_1DD9AAF5C;
            goto LABEL_96;
          }

          if (v278 <= 1)
          {
            if (v278 <= 1)
            {
              goto LABEL_167;
            }
          }

          else
          {
            switch(v278)
            {
              case 2:
                goto LABEL_167;
              case 3:
                v330 = 0xD00000000000001BLL;
                v331 = 0x80000001DDA28030;
LABEL_170:
                if (v330 == 0xD00000000000001BLL && 0x80000001DDA28030 == v331)
                {
                  sub_1DD928DC0(v277, v278);

LABEL_173:
                  v336 = *(v0 + 1360);
                  type metadata accessor for Instrumentation(0);
                  v337 = swift_task_alloc();
                  *(v337 + 16) = 2;
                  *(v337 + 24) = v336;
                  sub_1DDA14820();
                  v338 = *(v0 + 1848);
                  v198 = *(v0 + 1352);

                  v339 = sub_1DDA14250();
                  (*(*(v339 - 8) + 56))(v338, 0, 1, v339);
                  sub_1DD90D378(v338, &qword_1ECD83650, &qword_1DDA1B1C0);
                  v200 = sub_1DD9AB4A0;
LABEL_96:
                  v89 = v200;
                  v24 = v198;
LABEL_144:

                  return MEMORY[0x1EEE6DFA0](v89, v24, 0);
                }

LABEL_167:
                v332 = sub_1DDA15440();
                sub_1DD928DC0(v277, v278);

                if ((v332 & 1) == 0)
                {
                  v333 = sub_1DDA13840();
                  sub_1DD9B48D0(&qword_1ECD82F58, 255, MEMORY[0x1E69DA4E8], MEMORY[0x1E69DA4F0]);
                  v353 = *(v0 + 2456);
                  v359 = *(v0 + 2440);
                  swift_allocError();
                  v335 = v334;
                  v360[0] = 0;
                  v360[1] = 0xE000000000000000;
                  sub_1DDA15070();
                  *(v0 + 1288) = 0;
                  *(v0 + 1296) = 0xE000000000000000;
                  MEMORY[0x1E12B7AB0](0xD000000000000044, 0x80000001DDA28610);
                  *(v0 + 920) = v359;
                  *(v0 + 936) = v353;
                  sub_1DDA15160();
                  sub_1DDA13800();
                  (*(*(v333 - 8) + 104))(v335, *MEMORY[0x1E69DA480], v333);
LABEL_45:
                  v126 = *(v0 + 1912);
                  swift_willThrow();
                  sub_1DD9B4918(v126, type metadata accessor for ChatChunk.ChoiceResource);

                  v127 = *(v0 + 8);
LABEL_67:

                  return v127();
                }

                goto LABEL_173;
              case 4:
                goto LABEL_167;
            }
          }

          v330 = v277;
          v331 = v278;
          goto LABEL_170;
        }
      }

      v285 = v277;
      v286 = v278;
      goto LABEL_161;
    case 0xAu:
      v60 = *(v0 + 1984);
      v61 = *(v60 + 16);
      *(v0 + 2048) = v61;
      v62 = *(v60 + 24);
      *(v0 + 2056) = v62;
      v63 = *(v60 + 32);
      *(v0 + 2064) = v63;
      v64 = *(v60 + 40);
      *(v0 + 2072) = v64;
      v65 = *(v60 + 48);
      *(v0 + 2080) = v65;
      v66 = *(v60 + 56);
      *(v0 + 2088) = v66;
      v67 = *(v60 + 64);
      if (v67 != 1)
      {
        goto LABEL_31;
      }

      v68 = *(v0 + 1352);
      *(v0 + 2096) = *(v60 + 8);
      sub_1DD96E3E4(v61, v62, v63, v64, v65, v66, 1u);
      v69 = sub_1DD9A7B28;
      goto LABEL_34;
    case 0xBu:
      v84 = *(v0 + 1984);
      v61 = *(v84 + 16);
      v62 = *(v84 + 24);
      v63 = *(v84 + 32);
      v64 = *(v84 + 40);
      v65 = *(v84 + 48);
      v66 = *(v84 + 56);
      v67 = *(v84 + 64);
      if (v67 == 4 && (v62 | v61 | v63 | v64 | v65 | v66) == 0)
      {
        v274 = *(v0 + 1360);
        type metadata accessor for Instrumentation(0);
        *(swift_task_alloc() + 16) = v274;
        sub_1DDA14820();
        v322 = *(v0 + 1840);

        v323 = sub_1DDA14250();
        (*(*(v323 - 8) + 56))(v322, 0, 1, v323);
        sub_1DD90D378(v322, &qword_1ECD83650, &qword_1DDA1B1C0);
      }

      else
      {
LABEL_31:
        sub_1DD96E310(v61, v62, v63, v64, v65, v66, v67);
      }

      goto LABEL_65;
    case 0xCu:
      v86 = *(v0 + 1544);
      v87 = *(v0 + 1536);
      v88 = *(v0 + 1528);
      sub_1DD9B4978(*(v0 + 1984), v86, type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      sub_1DD9B4C84(v86 + *(v87 + 28), v88, type metadata accessor for MessageContent);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v68 = *(v0 + 1352);
        sub_1DD9B4978(*(v0 + 1528), *(v0 + 1512), type metadata accessor for FileGeneratorFile);
        v69 = sub_1DD9AA558;
LABEL_34:
        v89 = v69;
        v24 = v68;
        goto LABEL_144;
      }

      v167 = *(v0 + 1528);
      sub_1DD9B4918(*(v0 + 1544), type metadata accessor for ChatChunk.ChoiceItemMessageContent);
      v144 = type metadata accessor for MessageContent;
      v143 = v167;
LABEL_64:
      sub_1DD9B4918(v143, v144);
LABEL_65:
      v168 = *(v0 + 1312);
      goto LABEL_66;
    case 0xEu:
      v142 = *(v0 + 1984);
      v24 = *(v0 + 1352);
      *(v0 + 2104) = *v142;
      *(v0 + 2112) = v142[1];
      *(v0 + 2120) = v142[2];
      *(v0 + 2128) = v142[3];
      *(v0 + 2136) = v142[4];
      v25 = sub_1DD9A8038;
      goto LABEL_74;
    case 0x10u:
      sub_1DD9B4978(*(v0 + 1984), *(v0 + 1832), type metadata accessor for ChatChunk.TextValueAnnotation);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v128 = *(v0 + 1832);
      v129 = *(v0 + 1824);
      v130 = sub_1DDA14810();
      __swift_project_value_buffer(v130, qword_1ECDA20E0);
      sub_1DD9B4C84(v128, v129, type metadata accessor for ChatChunk.TextValueAnnotation);
      v131 = sub_1DDA147F0();
      v132 = sub_1DDA14F00();
      v133 = os_log_type_enabled(v131, v132);
      v134 = *(v0 + 1824);
      if (v133)
      {
        v135 = *(v0 + 1816);
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v360[0] = v137;
        *v136 = 136315138;
        sub_1DD9B4C84(v134, v135, type metadata accessor for ChatChunk.TextValueAnnotation);
        v138 = sub_1DDA14B70();
        v140 = v139;
        sub_1DD9B4918(v134, type metadata accessor for ChatChunk.TextValueAnnotation);
        v141 = sub_1DD93FA54(v138, v140, v360);

        *(v136 + 4) = v141;
        _os_log_impl(&dword_1DD8F8000, v131, v132, "Received response annotation update: %s", v136, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v137);
        MEMORY[0x1E12B8CE0](v137, -1, -1);
        MEMORY[0x1E12B8CE0](v136, -1, -1);
      }

      else
      {

        sub_1DD9B4918(v134, type metadata accessor for ChatChunk.TextValueAnnotation);
      }

      v172 = *(v0 + 1776);
      v173 = *(v0 + 1768);
      sub_1DD9B4C84(*(v0 + 1832) + *(*(v0 + 1808) + 32), v172, type metadata accessor for TextAnnotation);
      sub_1DD9B4978(v172, v173, type metadata accessor for TextAnnotation.Type);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v189 = *(v0 + 1792);
        v190 = *(v0 + 1752);
        v346 = *(v0 + 1744);
        v191 = *(v0 + 1736);
        v192 = *(v0 + 1728);
        v193 = *(v0 + 1720);
        v194 = *(v0 + 1640);
        v358 = *(v0 + 1632);
        sub_1DD9B4978(*(v0 + 1768), v190, type metadata accessor for TextAnnotation.URLCitation);
        v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836B0, &qword_1DDA1B240);
        v350 = *(v195 + 48);
        (*(v192 + 16))(v191, v190, v193);

        sub_1DDA13970();
        (*(v194 + 104))(v189, *MEMORY[0x1E69DA510], v358);
        v196 = *(v190 + *(v346 + 24));
        sub_1DD9B4918(v190, type metadata accessor for TextAnnotation.URLCitation);
        *(v189 + v350) = v196;
        (*(*(v195 - 8) + 56))(v189, 0, 1, v195);
        goto LABEL_138;
      }

      v174 = *(v0 + 1768);
      v175 = *(v0 + 1368);
      v176 = v174[1];
      v349 = v174[2];
      v177 = *(v175 + 16);
      if (!v177)
      {
        goto LABEL_85;
      }

      v178 = *v174;
      v179 = *(v0 + 1672);
      v181 = *(v179 + 16);
      v180 = v179 + 16;
      v357 = v181;
      v182 = v175 + ((*(v180 + 64) + 32) & ~*(v180 + 64));
      v183 = *(v180 + 56);
      while (1)
      {
        v357(*(v0 + 1696), v182, *(v0 + 1664));
        if (sub_1DDA14160() == v178 && v184 == v176)
        {
          break;
        }

        v186 = v176;
        v187 = sub_1DDA15440();

        if (v187)
        {
          goto LABEL_134;
        }

        (*(v180 - 8))(*(v0 + 1696), *(v0 + 1664));
        v182 += v183;
        --v177;
        v176 = v186;
        if (!v177)
        {
LABEL_85:
          v188 = 1;
          goto LABEL_135;
        }
      }

LABEL_134:
      (*(*(v0 + 1672) + 32))(*(v0 + 1712), *(v0 + 1696), *(v0 + 1664));
      v188 = 0;
LABEL_135:
      v294 = *(v0 + 1712);
      v295 = *(v0 + 1704);
      v296 = *(v0 + 1672);
      v297 = *(v0 + 1664);
      (*(v296 + 56))(v294, v188, 1, v297);
      sub_1DD90ADB4(v294, v295, &qword_1ECD83690, &qword_1DDA1B218);
      v298 = (*(v296 + 48))(v295, 1, v297);
      v299 = *(v0 + 1792);
      v300 = *(v0 + 1712);
      if (v298 == 1)
      {
        sub_1DD90D378(*(v0 + 1712), &qword_1ECD83690, &qword_1DDA1B218);

        v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836B0, &qword_1DDA1B240);
        (*(*(v301 - 8) + 56))(v299, 1, 1, v301);
      }

      else
      {
        v302 = *(v0 + 1688);
        v303 = *(v0 + 1680);
        v304 = *(v0 + 1672);
        v305 = *(v0 + 1664);
        v306 = *(v0 + 1640);
        v347 = *(v0 + 1632);
        (*(v304 + 32))(v302, *(v0 + 1704), v305);
        v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836B0, &qword_1DDA1B240);
        v308 = *(v307 + 48);
        (*(v304 + 16))(v303, v302, v305);
        sub_1DDA139A0();
        (*(v304 + 8))(v302, v305);
        sub_1DD90D378(v300, &qword_1ECD83690, &qword_1DDA1B218);
        (*(v306 + 104))(v299, *MEMORY[0x1E69DA518], v347);

        *(v299 + v308) = v349;
        (*(*(v307 - 8) + 56))(v299, 0, 1, v307);
      }

LABEL_138:
      v309 = *(v0 + 1800);
      v310 = *(v0 + 1784);
      sub_1DD914958(*(v0 + 1792), v309, &qword_1ECD83698, &qword_1DDA1B220);
      sub_1DD90ADB4(v309, v310, &qword_1ECD83698, &qword_1DDA1B220);
      v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECD836B0, &qword_1DDA1B240);
      v312 = (*(*(v311 - 8) + 48))(v310, 1, v311);
      v313 = *(v0 + 1784);
      if (v312 != 1)
      {
        v319 = *(v0 + 1656);
        v320 = *(v0 + 1640);
        v321 = *(v0 + 1632);
        v122 = *(v0 + 1352);
        *(v0 + 2168) = *(v313 + *(v311 + 48));
        (*(v320 + 32))(v319, v313, v321);
        v124 = sub_1DD9A8718;
LABEL_143:
        v89 = v124;
        v24 = v122;
        goto LABEL_144;
      }

      sub_1DD90D378(*(v0 + 1784), &qword_1ECD83698, &qword_1DDA1B220);
      v314 = sub_1DDA147F0();
      v315 = sub_1DDA14EF0();
      if (os_log_type_enabled(v314, v315))
      {
        v316 = swift_slowAlloc();
        *v316 = 0;
        _os_log_impl(&dword_1DD8F8000, v314, v315, "Failed to convert annotation!", v316, 2u);
        MEMORY[0x1E12B8CE0](v316, -1, -1);
      }

      v317 = *(v0 + 1832);
      v318 = *(v0 + 1800);
      v168 = *(v0 + 1312);

      sub_1DD90D378(v318, &qword_1ECD83698, &qword_1DDA1B220);
      sub_1DD9B4918(v317, type metadata accessor for ChatChunk.TextValueAnnotation);
LABEL_66:
      *(v168 + 32) = 0;
      *v168 = 0u;
      *(v168 + 16) = 0u;

      v127 = *(v0 + 8);
      goto LABEL_67;
    case 0x13u:
      v23 = *(v0 + 1984);
      v24 = *(v0 + 1352);
      *(v0 + 2208) = *v23;
      *(v0 + 2216) = v23[1];
      *(v0 + 2224) = v23[2];
      *(v0 + 2232) = v23[3];
      v25 = sub_1DD9A8CF0;
      goto LABEL_74;
    case 0x15u:
      sub_1DD9B4918(*(v0 + 1984), type metadata accessor for ChatChunk);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v70 = sub_1DDA14810();
      __swift_project_value_buffer(v70, qword_1ECDA20E0);
      v71 = sub_1DDA147F0();
      v72 = sub_1DDA14F00();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_1DD8F8000, v71, v72, "Received image generator call in progress", v73, 2u);
        MEMORY[0x1E12B8CE0](v73, -1, -1);
      }

      v74 = *(v0 + 1360);

      type metadata accessor for Instrumentation(0);
      v75 = swift_task_alloc();
      *(v75 + 16) = 0;
      *(v75 + 24) = v74;
      sub_1DDA14820();
      v212 = *(v0 + 1888);
      v198 = *(v0 + 1352);

      v213 = sub_1DDA14250();
      (*(*(v213 - 8) + 56))(v212, 0, 1, v213);
      sub_1DD90D378(v212, &qword_1ECD83650, &qword_1DDA1B1C0);
      v200 = sub_1DD9A947C;
      goto LABEL_96;
    case 0x19u:
      sub_1DD9B4978(*(v0 + 1984), *(v0 + 1616), type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 1616);
      v27 = *(v0 + 1608);
      v28 = sub_1DDA14810();
      *(v0 + 2312) = __swift_project_value_buffer(v28, qword_1ECDA20E0);
      sub_1DD9B4C84(v26, v27, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      v29 = sub_1DDA147F0();
      v30 = sub_1DDA14F00();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = *(v0 + 1736);
        v32 = *(v0 + 1728);
        v33 = *(v0 + 1720);
        v34 = *(v0 + 1608);
        v35 = *(v0 + 1576);
        v36 = *(v0 + 1568);
        v37 = swift_slowAlloc();
        v355 = swift_slowAlloc();
        v360[0] = v355;
        *v37 = 136315138;
        sub_1DD9B4C84(v34 + *(v35 + 28), v36, type metadata accessor for ImageGeneratorCall.Image);
        (*(v32 + 32))(v31, v36, v33);
        sub_1DD9B48D0(&qword_1ECD82CE8, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v38 = sub_1DDA15400();
        v40 = v39;
        (*(v32 + 8))(v31, v33);
        sub_1DD9B4918(v34, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
        v41 = sub_1DD93FA54(v38, v40, v360);

        *(v37 + 4) = v41;
        _os_log_impl(&dword_1DD8F8000, v29, v30, "Received image generation update: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v355);
        MEMORY[0x1E12B8CE0](v355, -1, -1);
        MEMORY[0x1E12B8CE0](v37, -1, -1);
      }

      else
      {
        v145 = *(v0 + 1608);

        sub_1DD9B4918(v145, type metadata accessor for ChatChunk.ImageGeneratorCallImageAdded);
      }

      sub_1DD9B4C84(*(v0 + 1616) + *(*(v0 + 1576) + 28), *(v0 + 1560), type metadata accessor for ImageGeneratorCall.Image);
      v146 = sub_1DD93FF08(MEMORY[0x1E69E7CC0]);
      *(v0 + 2320) = v146;
      v147 = swift_task_alloc();
      *(v0 + 2328) = v147;
      *v147 = v0;
      v147[1] = sub_1DD9A98E4;
      v148 = *(v0 + 1560);

      return sub_1DD950D48(v148, 0, 0xF000000000000000, 1, v146, 0, 1, 0);
    case 0x1Bu:
      sub_1DD9B4918(*(v0 + 1984), type metadata accessor for ChatChunk);
      if (qword_1ECD827A8 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_176;
    case 0x1Du:
      sub_1DD9B4978(*(v0 + 1984), *(v0 + 1488), type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v90 = *(v0 + 1488);
      v91 = *(v0 + 1480);
      v92 = sub_1DDA14810();
      __swift_project_value_buffer(v92, qword_1ECDA20E0);
      sub_1DD9B4C84(v90, v91, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
      v93 = sub_1DDA147F0();
      v94 = sub_1DDA14F00();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = *(v0 + 1736);
        v96 = *(v0 + 1728);
        v97 = *(v0 + 1720);
        v98 = *(v0 + 1480);
        v99 = *(v0 + 1472);
        v100 = *(v0 + 1464);
        v101 = swift_slowAlloc();
        v356 = swift_slowAlloc();
        v360[0] = v356;
        *v101 = 136315138;
        sub_1DD9B4C84(v98 + *(v99 + 28), v100, type metadata accessor for FileGeneratorCall.File);
        (*(v96 + 32))(v95, v100, v97);
        sub_1DD9B48D0(&qword_1ECD82CE8, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
        v102 = sub_1DDA15400();
        v104 = v103;
        (*(v96 + 8))(v95, v97);
        sub_1DD9B4918(v98, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
        v105 = sub_1DD93FA54(v102, v104, v360);

        *(v101 + 4) = v105;
        _os_log_impl(&dword_1DD8F8000, v93, v94, "Received file generation update: %s", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v356);
        MEMORY[0x1E12B8CE0](v356, -1, -1);
        MEMORY[0x1E12B8CE0](v101, -1, -1);
      }

      else
      {
        v169 = *(v0 + 1480);

        sub_1DD9B4918(v169, type metadata accessor for ChatChunk.FileGeneratorCallFileAdded);
      }

      v170 = *(v0 + 1360);
      type metadata accessor for Instrumentation(0);
      v171 = swift_task_alloc();
      *(v171 + 16) = 1;
      *(v171 + 24) = v170;
      sub_1DDA14820();
      v214 = *(v0 + 1864);
      v198 = *(v0 + 1352);

      v215 = sub_1DDA14250();
      (*(*(v215 - 8) + 56))(v214, 0, 1, v215);
      sub_1DD90D378(v214, &qword_1ECD83650, &qword_1DDA1B1C0);
      v200 = sub_1DD9AAB50;
      goto LABEL_96;
    case 0x20u:
      sub_1DD9B4978(*(v0 + 1984), *(v0 + 1424), type metadata accessor for ChatChunk.RateLimits);
      if (qword_1ECD827A8 != -1)
      {
        swift_once();
      }

      v106 = *(v0 + 1424);
      v107 = *(v0 + 1416);
      v108 = sub_1DDA14810();
      __swift_project_value_buffer(v108, qword_1ECDA20E0);
      sub_1DD9B4C84(v106, v107, type metadata accessor for ChatChunk.RateLimits);
      v109 = sub_1DDA147F0();
      v110 = sub_1DDA14EC0();
      v111 = os_log_type_enabled(v109, v110);
      v112 = *(v0 + 1416);
      if (v111)
      {
        v113 = *(v0 + 1408);
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v360[0] = v115;
        *v114 = 136315138;
        sub_1DD9B4C84(v112, v113, type metadata accessor for ChatChunk.RateLimits);
        v116 = sub_1DDA14B70();
        v118 = v117;
        sub_1DD9B4918(v112, type metadata accessor for ChatChunk.RateLimits);
        v119 = sub_1DD93FA54(v116, v118, v360);

        *(v114 + 4) = v119;
        _os_log_impl(&dword_1DD8F8000, v109, v110, "Updating rate limits: %s", v114, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v115);
        MEMORY[0x1E12B8CE0](v115, -1, -1);
        MEMORY[0x1E12B8CE0](v114, -1, -1);
      }

      else
      {

        sub_1DD9B4918(v112, type metadata accessor for ChatChunk.RateLimits);
      }

      v24 = *(v0 + 1328);
      v25 = sub_1DD9ACD18;
      goto LABEL_74;
    default:
      v143 = *(v0 + 1984);
      v144 = type metadata accessor for ChatChunk;
      goto LABEL_64;
  }
}

uint64_t sub_1DD9A6E50()
{
  v1 = v0[250];
  v2 = v0[169];
  *(v2 + 112) = v0[249];
  *(v2 + 120) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DD9A6ED0, 0, 0);
}

uint64_t sub_1DD9A6ED0()
{
  v20 = v0;
  if (qword_1ECD827A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1DDA14810();
  __swift_project_value_buffer(v1, qword_1ECDA20E0);
  sub_1DD9B2CA0((v0 + 47), (v0 + 2));
  v2 = sub_1DDA147F0();
  v3 = sub_1DDA14F00();
  sub_1DD9B2CFC((v0 + 47));
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    v6 = v0[53];
    v7 = v0[54];

    v8 = sub_1DD93FA54(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DD8F8000, v2, v3, "Received response model info: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E12B8CE0](v5, -1, -1);
    MEMORY[0x1E12B8CE0](v4, -1, -1);
  }

  sub_1DD9B2CA0((v0 + 47), (v0 + 62));
  v9 = sub_1DDA147F0();
  v10 = sub_1DDA14ED0();
  sub_1DD9B2CFC((v0 + 47));
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = v0[56];
    if (v13)
    {
      v14 = v0[55];
    }

    else
    {
      v14 = 0x6E776F6E6B6E753CLL;
    }

    if (v13)
    {
      v15 = v0[56];
    }

    else
    {
      v15 = 0xE90000000000003ELL;
    }

    v16 = sub_1DD93FA54(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1DD8F8000, v9, v10, "Received request instructions: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E12B8CE0](v12, -1, -1);
    MEMORY[0x1E12B8CE0](v11, -1, -1);
  }

  v17 = v0[169];

  return MEMORY[0x1EEE6DFA0](sub_1DD9A7174, v17, 0);
}