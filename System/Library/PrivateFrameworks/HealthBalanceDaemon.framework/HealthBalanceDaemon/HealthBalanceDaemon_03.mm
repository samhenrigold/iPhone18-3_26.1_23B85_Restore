uint64_t sub_2289014AC(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_22892F818() & 1) != 0)
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
      if (!v21 && (sub_22892F818() & 1) != 0)
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

char *sub_2289016D4(uint64_t *a1)
{
  v1 = a1[2];
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    v7 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (v8)
    {
LABEL_4:
      v26[0] = v2;
      v25 = v7;
      sub_2288D677C(0, v8, 0);
      v9 = v25;
      v10 = 32;
      v11 = v26[0];
      v12 = "SleepingSampleTypesAdded";
      do
      {
        v13 = 0xD000000000000018;
        if (*(v9 + v10) == 1)
        {
          v14 = "SleepingSampleTypesRemoved";
        }

        else
        {
          v13 = 0xD00000000000001ALL;
          v14 = "tion";
        }

        if (*(v9 + v10))
        {
          v15 = v13;
        }

        else
        {
          v15 = 0xD000000000000010;
        }

        if (*(v9 + v10))
        {
          v16 = v14;
        }

        else
        {
          v16 = v12;
        }

        v26[0] = v11;
        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          v24 = v12;
          sub_2288D677C((v17 > 1), v18 + 1, 1);
          v12 = v24;
          v9 = v25;
          v11 = v26[0];
        }

        *(v11 + 2) = v18 + 1;
        v19 = &v11[16 * v18];
        *(v19 + 4) = v15;
        *(v19 + 5) = v16 | 0x8000000000000000;
        ++v10;
        --v8;
      }

      while (v8);

      goto LABEL_20;
    }

LABEL_19:

    v11 = MEMORY[0x277D84F90];
LABEL_20:
    v26[0] = v11;

    sub_2289002D8(v26);

    v26[0] = 0x2065636E616C6162;
    v26[1] = 0xE90000000000005BLL;
    sub_228901F30(0, &qword_2813DED10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_228901EB4();
    v20 = sub_22892F008();
    v22 = v21;

    MEMORY[0x22AAC3770](v20, v22);

    MEMORY[0x22AAC3770](93, 0xE100000000000000);
    return v26[0];
  }

  v4 = sub_228900B80(a1[2], 0);
  v5 = sub_228900C0C(v26, v4 + 32, v1, a1);
  v6 = v26[0];

  sub_2288D3D50(v6);
  if (v5 == v1)
  {
    v7 = v4;
    v8 = v4[2];
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_228901974(id *a1, uint64_t a2, unint64_t a3, uint64_t *a4, int a5, void *a6)
{
  v47 = a6;
  v45 = a5;
  v41 = a2;
  v44 = sub_22892EDE8();
  v50 = *(v44 - 8);
  v9 = MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v42 = *a1;
  v13 = [v42 kind];
  if (!v13)
  {
    sub_22892F0C8();
    v13 = sub_22892F098();
  }

  v14 = sub_22892F0C8();
  v16 = v15;
  sub_22892EDC8();

  v17 = sub_22892EDD8();
  v18 = sub_22892F398();

  v19 = os_log_type_enabled(v17, v18);
  v46 = v13;
  v48 = v14;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v40 = a4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v39 = a3;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136446722;
    *(v21 + 4) = sub_2288B748C(0xD00000000000001DLL, 0x8000000228932520, aBlock);
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_2288B748C(v14, v16, aBlock);
    *(v21 + 22) = 2082;
    *(v21 + 24) = sub_2288B748C(v41, v39, aBlock);
    _os_log_impl(&dword_2288B2000, v17, v18, "[%{public}s] reloading widget for kind %{public}s with reason: %{public}s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v23, -1, -1);
    v24 = v21;
    a4 = v40;
    MEMORY[0x22AAC47E0](v24, -1, -1);
  }

  v25 = *(v50 + 8);
  v26 = v44;
  v25(v12, v44);
  sub_2289016D4(a4);
  v27 = sub_22892F098();

  v28 = v43;
  sub_22892EDC8();

  v29 = sub_22892EDD8();
  v30 = sub_22892F398();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136446466;
    *(v31 + 4) = sub_2288B748C(0xD00000000000001DLL, 0x8000000228932520, aBlock);
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_2288B748C(v48, v16, aBlock);
    _os_log_impl(&dword_2288B2000, v29, v30, "[%{public}s] invalidating widget relevances for kind %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v32, -1, -1);
    MEMORY[0x22AAC47E0](v31, -1, -1);
  }

  v25(v28, v26);
  v33 = v46;
  if (v45)
  {
    sub_22892E3A8();
  }

  else
  {
    sub_22892E3E8();
  }

  v34 = v48;
  v35 = sub_22892F098();

  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v16;
  aBlock[4] = sub_228901E9C;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228900B08;
  aBlock[3] = &block_descriptor_7;
  v37 = _Block_copy(aBlock);

  [v47 invalidateRelevancesOfKind:v33 inBundle:v35 completion:v37];
  _Block_release(v37);
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_228901EB4()
{
  result = qword_2813DED08;
  if (!qword_2813DED08)
  {
    sub_228901F30(255, &qword_2813DED10, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DED08);
  }

  return result;
}

void sub_228901F30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_228901F80(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22892F588();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2288D6714(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x22AAC3CC0](i, a1);
        sub_2288BC0FC(0, &qword_2813DEC18, 0x277D10B70);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2288D6714((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2288DDB00(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2288BC0FC(0, &qword_2813DEC18, 0x277D10B70);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2288D6714((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2288DDB00(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22890217C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v3 = sub_22892E048();
  v130 = *(v3 - 8);
  v131 = v3;
  MEMORY[0x28223BE20](v3);
  v129 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892E5A8();
  v127 = *(v5 - 8);
  v128 = v5;
  MEMORY[0x28223BE20](v5);
  v126 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BC064(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v133 = &v111 - v8;
  v9 = sub_22892DEF8();
  v136 = *(v9 - 8);
  v137 = v9;
  MEMORY[0x28223BE20](v9);
  v134 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_22892E8D8();
  v142 = *(v138 - 8);
  v11 = MEMORY[0x28223BE20](v138);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v111 - v14;
  v140 = sub_22892E948();
  v143 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22892E638();
  v141 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v123 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v121 = &v111 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v122 = &v111 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v132 = &v111 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v111 - v27;
  v29 = sub_22892EFA8();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = a1;
  sub_22892E5E8();
  sub_228905190(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  LOBYTE(a1) = sub_22892F088();
  (*(v30 + 8))(v32, v29);
  if ((a1 & 1) == 0)
  {
    v55 = 1;
    v56 = v139;
    v40 = v141;
    return (*(v40 + 56))(v56, v55, 1, v18);
  }

  v146 = MEMORY[0x277D84F90];
  v33 = sub_228905190(&qword_2813DFE78, MEMORY[0x277D0FF98], MEMORY[0x277D0FFA8]);
  v34 = MEMORY[0x277D0FF98];
  sub_2288BC064(0, &qword_2813DED30, MEMORY[0x277D0FF98], MEMORY[0x277D83940]);
  sub_2289051D8(&qword_2813DED28, &qword_2813DED30, v34, MEMORY[0x277D83970]);
  v114 = v33;
  sub_22892F548();
  sub_22892E6C8();
  sub_22892E8E8();
  v35 = *(v143 + 8);
  v143 += 8;
  v125 = v35;
  v35(v17, v140);
  v36 = v142;
  v37 = *(v142 + 13);
  v115 = *MEMORY[0x277D10058];
  v38 = v138;
  v117 = v142 + 104;
  v116 = v37;
  v37(v13);
  LOBYTE(v34) = sub_22892E8C8();
  v39 = *(v36 + 1);
  v118 = v13;
  v39(v13, v38);
  v120 = v15;
  v142 = v36 + 8;
  v119 = v39;
  v39(v15, v38);
  v40 = v141;
  v41 = v28;
  if (v34 & 1) != 0 || (sub_22892E668(), v42 = v120, sub_22892E8E8(), v125(v17, v140), v43 = v118, v44 = v138, v116(v118, v115, v138), v45 = sub_22892E8C8(), v46 = v17, v47 = v18, v48 = v119, v119(v43, v44), v48(v42, v44), v18 = v47, v17 = v46, (v45))
  {
    v49 = sub_228903314();
    if (v49 != 2)
    {
      v50 = v49;
      v51 = sub_228903690();
      if (v51)
      {
        v52 = v51;
        v53 = [v51 state];

        v54 = v53 != 0;
        if ((v50 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_10:
        if (!v54)
        {
          v57 = v132;
          sub_22892E618();
          v58 = MEMORY[0x277D0FF98];
          sub_228905190(&qword_27D85BC20, MEMORY[0x277D0FF98], MEMORY[0x277D0FFA0]);
          sub_22892F1E8();
          v59 = *(v40 + 8);
          v59(v41, v18);
          sub_22892F1E8();
          v146 = v144 | v145;
          sub_228905190(&qword_27D85BC28, v58, MEMORY[0x277D0FFB0]);
          sub_22892F938();
          v59(v57, v18);
        }

        goto LABEL_12;
      }

      v54 = 0;
      if (v50)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_12:
  sub_22892E6D8();
  v60 = v133;
  sub_22892EC08();
  v62 = v136;
  v61 = v137;
  v63 = (*(v136 + 48))(v60, 1, v137);
  v124 = v41;
  if (v63 == 1)
  {
    sub_2289048EC(v60);
  }

  else
  {
    (*(v62 + 32))(v134, v60, v61);
    v64 = v132;
    sub_22892E618();
    v65 = sub_22892F508();
    v66 = *(v40 + 8);
    v113 = v40 + 8;
    v112 = v66;
    v66(v64, v18);
    v67 = v140;
    v68 = v125;
    if ((v65 & 1) == 0)
    {
      sub_22892E6C8();
      v69 = v67;
      v70 = v120;
      sub_22892E8E8();
      v68(v17, v69);
      v71 = v118;
      v72 = v138;
      v116(v118, v115, v138);
      v73 = sub_22892E8C8();
      v133 = v18;
      v74 = v119;
      v119(v71, v72);
      v75 = v70;
      v67 = v69;
      v74(v75, v72);
      v18 = v133;
      v68 = v125;
      if (v73)
      {
        sub_22892E658();
        v76 = v120;
        sub_22892E8E8();
        v68(v17, v69);
        v77 = v118;
        v78 = v138;
        v116(v118, *MEMORY[0x277D10050], v138);
        sub_228905190(&unk_27D85BC30, MEMORY[0x277D10060], MEMORY[0x277D10068]);
        v79 = sub_22892F088();
        v80 = v119;
        v119(v77, v78);
        v81 = v76;
        v67 = v69;
        v80(v81, v78);
        v18 = v133;
        if ((v79 & 1) == 0)
        {
          sub_22892E668();
          v82 = v120;
          sub_22892E8E8();
          v68(v17, v69);
          v83 = sub_22892E8B8();
          v84 = v82;
          v67 = v69;
          v119(v84, v138);
          if ((v83 & 1) == 0)
          {
            sub_22892E5D8();
            v85 = v120;
            sub_22892E8E8();
            v68(v17, v69);
            v86 = sub_22892E8B8();
            v87 = v85;
            v67 = v69;
            v119(v87, v138);
            if ((v86 & 1) == 0)
            {
              v88 = v132;
              sub_22892E628();
              v89 = MEMORY[0x277D0FF98];
              sub_228905190(&qword_27D85BC20, MEMORY[0x277D0FF98], MEMORY[0x277D0FFA0]);
              v142 = v17;
              v90 = v124;
              sub_22892F1E8();
              v91 = v112;
              v112(v90, v18);
              sub_22892F1E8();
              v146 = v144 | v145;
              sub_228905190(&qword_27D85BC28, v89, MEMORY[0x277D0FFB0]);
              v92 = v140;
              sub_22892F938();
              v91(v88, v18);
              v67 = v92;
              sub_22892E6C8();
              v93 = v126;
              sub_22892E938();
              v68(v142, v67);
              v94 = v129;
              sub_22892E578();
              (*(v127 + 8))(v93, v128);
              v95 = sub_228903794(v134, v94);
              v96 = v94;
              v17 = v142;
              (*(v130 + 8))(v96, v131);
              if (v95 != 2 && (v95 & 1) != 0)
              {
                v97 = v132;
                sub_22892E628();
                v98 = *(v40 + 16);
                v98(v121, v124, v18);
                v98(v123, v97, v18);
                v99 = v122;
                sub_22892F528();
                v17 = v142;
                sub_22892F518();
                v100 = v112;
                v112(v99, v18);
                v67 = v140;
                v100(v132, v18);
              }
            }
          }
        }
      }
    }

    sub_22892E5D8();
    v101 = sub_22892E898();
    v68(v17, v67);
    if (v101)
    {
      sub_22892E6C8();
      v102 = v126;
      sub_22892E938();
      v68(v17, v67);
      v103 = v129;
      sub_22892E578();
      (*(v127 + 8))(v102, v128);
      v104 = v134;
      v105 = sub_2289043C8(v134, v103);
      (*(v130 + 8))(v103, v131);
      if (v105 != 2 && (v105 & 1) != 0)
      {
        v106 = v132;
        sub_22892E608();
        v107 = MEMORY[0x277D0FF98];
        sub_228905190(&qword_27D85BC20, MEMORY[0x277D0FF98], MEMORY[0x277D0FFA0]);
        v108 = v124;
        sub_22892F1E8();
        v109 = v112;
        v112(v108, v18);
        sub_22892F1E8();
        v146 = v144 | v145;
        sub_228905190(&qword_27D85BC28, v107, MEMORY[0x277D0FFB0]);
        sub_22892F938();
        v109(v106, v18);
      }

      (*(v136 + 8))(v104, v137);
      v40 = v141;
    }

    else
    {
      (*(v136 + 8))(v134, v137);
    }
  }

  v56 = v139;
  (*(v40 + 32))(v139, v124, v18);
  v55 = 0;
  return (*(v40 + 56))(v56, v55, 1, v18);
}

uint64_t sub_228903314()
{
  v1 = v0;
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22892EDE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v1 + 16) onboardingCompletionManager];
  v7 = *MEMORY[0x277CCC090];
  v29[0] = 0;
  v8 = [v6 onboardingCompletionsForHighestVersionOfFeatureIdentifier:v7 error:v29];

  v9 = v29[0];
  if (v8)
  {
    sub_2288BC0FC(0, &unk_27D85BC40, 0x277CCD740);
    v10 = sub_22892F218();
    v11 = v9;

    if (v10 >> 62)
    {
      v12 = sub_22892F588();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v12 != 0;
  }

  else
  {
    v14 = v29[0];
    v15 = sub_22892DE38();

    swift_willThrow();
    sub_22892EDC8();
    v16 = v15;
    v17 = sub_22892EDD8();
    v18 = sub_22892F378();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v3;
      v22 = v21;
      v29[0] = v21;
      *v19 = 136446466;
      v23 = sub_22892F948();
      v25 = sub_2288B748C(v23, v24, v29);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2114;
      v26 = v15;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v27;
      *v20 = v27;
      _os_log_impl(&dword_2288B2000, v17, v18, "[%{public}s] Error reading onboarding completions: %{public}@", v19, 0x16u);
      sub_2288DDB10(v20);
      MEMORY[0x22AAC47E0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AAC47E0](v22, -1, -1);
      MEMORY[0x22AAC47E0](v19, -1, -1);

      (*(v28 + 8))(v5, v2);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    return 2;
  }
}

id sub_228903690()
{
  v1 = [*(v0 + 16) profileExtensionsConformingToProtocol_];
  v2 = sub_22892F218();

  if (*(v2 + 16))
  {
    sub_2288B7664(v2 + 32, v6);

    sub_2288D1A38();
    if (swift_dynamicCast())
    {
      v3 = [objc_msgSend(v5 getPregnancyModelProvider)];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v3;
    }
  }

  else
  {
  }

  return 0;
}

BOOL sub_228903794(char *a1, char *a2)
{
  v91 = a2;
  v95 = a1;
  v77 = *v2;
  v81 = sub_22892EDE8();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v90 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22892E5A8();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v86 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892E048();
  v96 = *(v5 - 8);
  v97 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v85 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v74 - v8;
  v10 = sub_22892EFA8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v92 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v74 - v14;
  v16 = sub_22892DEF8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = sub_22892DDC8();
  v88 = *(v21 - 8);
  v89 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v95;
  sub_22892DE48();
  (*(v17 + 16))(v20, v24, v16);
  sub_22892DD88();
  v84 = v11;
  v26 = *(v11 + 16);
  v25 = v11 + 16;
  v27 = v87;
  v93 = v15;
  v94 = v10;
  v82 = v26;
  v26(v15, &v87[OBJC_IVAR____TtC19HealthBalanceDaemon22OutlierContextProvider_targetDay], v10);
  v28 = *(v96 + 16);
  v95 = v9;
  v29 = v91;
  v91 = (v96 + 16);
  v83 = v28;
  v28(v9, v29, v97);
  sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v30 = *MEMORY[0x277CCCCD8];
  v31 = MEMORY[0x22AAC3A10]();
  v32 = *(v27 + 2);
  sub_2288DB154();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228930B00;
  *(inited + 32) = HDSampleEntityPredicateForDataType();
  v87 = v23;
  v34 = sub_22892DD58();
  v35 = HDSampleEntityPredicateForDateInterval();

  *(inited + 40) = v35;
  v98 = inited;
  sub_2289049D0(MEMORY[0x277D84F90], sub_228904FB0, sub_228904B38);
  sub_228901F80(v98);

  v36 = sub_22892F208();

  v37 = [objc_opt_self() predicateMatchingAllPredicates_];

  v38 = objc_allocWithZone(MEMORY[0x277D108A0]);
  v39 = v32;
  v40 = [v38 initForProfile:v39 quantityType:v31 predicate:v37 restrictedSourceEntities:0];

  v41 = MEMORY[0x22AAC3A10](v30);
  v42 = objc_opt_self();
  v43 = v40;
  v44 = [v42 calculatorForQuantityType:v41 intervalCollection:0 options:8 mergeStrategy:0 computationMethod:1];

  if (v44)
  {
    v75 = [objc_allocWithZone(MEMORY[0x277D108A8]) initWithProfile:v39 quantityType:v41];
    v45 = v92;
    v46 = v94;
    v76 = v41;
    v47 = v82;
    v82(v92, v93, v94);
    v74[1] = v25;
    v48 = v85;
    v49 = v97;
    v50 = v83;
    v83(v85, v95, v97);
    type metadata accessor for SleepingSampleAggregator(0);
    v51 = swift_allocObject();
    v47(v51 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex, v45, v46);
    v50(v51 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar, v48, v49);
    v52 = v51 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder;
    *v52 = 2;
    *(v52 + 8) = 1;
    *(v52 + 16) = 1;
    *(v51 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator) = v44;
    *(v51 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource) = v43;
    v53 = v75;
    *(v51 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider) = v75;
    v41 = v43;
    v43 = v44;
    [v43 setSourceOrderProvider_];
    [v43 setDataSource_];
  }

  else
  {
    v54 = v92;
    v55 = v94;
    v56 = v82;
    v82(v92, v93, v94);
    v57 = v85;
    v58 = v97;
    v59 = v83;
    v83(v85, v95, v97);
    type metadata accessor for SleepingSampleAggregator(0);
    v60 = swift_allocObject();
    v56(v60 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_morningIndex, v54, v55);
    v48 = v57;
    v61 = v60;
    v49 = v58;
    v59(v61 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_gregorianCalendar, v48, v58);
    v62 = v61 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_builder;
    *v62 = 2;
    *(v62 + 8) = 1;
    *(v62 + 16) = 1;
    *(v61 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_calculator) = 0;
    *(v61 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_dataSource) = 0;
    *(v61 + OBJC_IVAR____TtC19HealthBalanceDaemon24SleepingSampleAggregator_sourceOrderProvider) = 0;
    [0 setSourceOrderProvider_];
    [0 setDataSource_];
  }

  v63 = *(v96 + 8);
  v63(v48, v49);
  v64 = *(v84 + 8);
  v65 = v94;
  v64(v92, v94);
  v63(v95, v49);
  v64(v93, v65);
  v66 = v86;
  sub_2288C9A18(v86);
  v67 = sub_22892E598();
  (*(v78 + 8))(v66, v79);
  if (v67)
  {
    v68 = objc_opt_self();
    v69 = v67;
    v70 = [v68 appleEffortScoreUnit];
    [v69 doubleValueForUnit_];
    v72 = v71;

    (*(v88 + 8))(v87, v89);
    return v72 <= 3.0;
  }

  else
  {
    (*(v88 + 8))(v87, v89);

    return 0;
  }
}

uint64_t sub_2289043C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v21[1] = *v3;
  v5 = sub_22892EDE8();
  v21[3] = *(v5 - 8);
  v21[4] = v5;
  MEMORY[0x28223BE20](v5);
  v21[2] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892E048();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22892DEF8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22892EFA8();
  MEMORY[0x28223BE20](v15);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[2];
  (*(v19 + 16))(v17, v3 + OBJC_IVAR____TtC19HealthBalanceDaemon22OutlierContextProvider_targetDay);
  (*(v12 + 16))(v14, a1, v11);
  (*(v8 + 16))(v10, v22, v7);
  type metadata accessor for OxygenSaturationElevationContextProvider(0);
  swift_allocObject();
  sub_228912BAC(v18, v17, v14, v10);
  LOBYTE(a1) = sub_228912958();

  return a1 & 1;
}

uint64_t sub_22890484C(uint64_t a1)
{
  result = sub_22892EFA8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2289048EC(uint64_t a1)
{
  sub_2288BC064(0, &qword_2813DFEE0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2289049D0(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_22892F588();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_22892F588();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_228904AD0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2288BC0FC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_228904B38(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22892F588();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22892F588();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_228904AD0(0, &qword_27D85BC50, &qword_2813DEC18, 0x277D10B70, MEMORY[0x277D83940]);
          sub_22890506C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_228904EA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2288BC0FC(0, &qword_2813DEC18, 0x277D10B70);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_228904CE0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22892F588();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22892F588();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2288BC064(0, &qword_27D85BC60, sub_2288C351C, MEMORY[0x277D83940]);
          sub_2289051D8(&qword_27D85BC68, &qword_27D85BC60, sub_2288C351C, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_228904F28(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2288C351C(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_228904EA8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAC3CC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_228905230;
  }

  __break(1u);
  return result;
}

void (*sub_228904F28(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AAC3CC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_228904FA8;
  }

  __break(1u);
  return result;
}

unint64_t sub_228904FB0(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_22892F588();
    }

    result = sub_22892F668();
    *v2 = result;
  }

  return result;
}

unint64_t sub_22890506C()
{
  result = qword_27D85BC58;
  if (!qword_27D85BC58)
  {
    sub_228904AD0(255, &qword_27D85BC50, &qword_2813DEC18, 0x277D10B70, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85BC58);
  }

  return result;
}

uint64_t sub_2289050F0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22892F588();
LABEL_9:
  result = sub_22892F668();
  *v2 = result;
  return result;
}

uint64_t sub_228905190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2289051D8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2288BC064(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2289052AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, _OWORD *, _BYTE *, __n128))
{
  v7 = OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_dataType;
  v8 = *(a1 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment + 48);
  v14[2] = *(a1 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment + 32);
  v15[0] = v8;
  *(v15 + 9) = *(a1 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment + 57);
  v9 = *(a1 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment + 16);
  v14[0] = *(a1 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment);
  v14[1] = v9;
  memcpy(__dst, (a1 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_summaryAnalytics), sizeof(__dst));

  v10 = (a5)(a1 + v7, v14, __dst);
  sub_2288DB7D0(v10);

  v11 = sub_22892EFB8();

  return v11;
}

uint64_t sub_2289053F8()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_dataType;
  v2 = sub_22892E508();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HealthBalanceAnalysisAnalyticsEvent(uint64_t a1)
{
  result = qword_2813DFCB8;
  if (!qword_2813DFCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228905508(uint64_t a1)
{
  result = sub_22892E508();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_2289055AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_22891C740(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_228905C50();
      v10 = v12;
    }

    sub_2288D3C20((*(v10 + 56) + 40 * v8), a3);
    sub_228906048(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_228905658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_228908640(0);
  v33 = v4;
  result = sub_22892F778();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_2288D3C20(v24, v34);
      }

      else
      {
        sub_2288D3D58(v24, v34);
      }

      sub_22892F8A8();
      sub_22892F0F8();
      result = sub_22892F8C8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2288D3C20(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_228905910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = sub_22892DDC8();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_2289086A8(0);
  v38 = v4;
  result = sub_22892F778();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
        v26 = v23;
      }

      result = sub_22892F458();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void *sub_228905C50()
{
  v1 = v0;
  sub_228908640(0);
  v2 = *v0;
  v3 = sub_22892F768();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_2288D3D58(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2288D3C20(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_228905DEC()
{
  v1 = v0;
  v30 = sub_22892DDC8();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2289086A8(0);
  v3 = *v0;
  v4 = sub_22892F768();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v11;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v3; v14; v3 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v19 = v16 | (v10 << 6);
      v20 = *(v3 + 56);
      v21 = *(*(v3 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27[0];
        v5 = v31;
        goto LABEL_21;
      }

      v18 = *(v7 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_228906048(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22892F558() + 1) & ~v5;
    do
    {
      sub_22892F8A8();

      sub_22892F0F8();
      v11 = sub_22892F8C8();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_228906204(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = MEMORY[0x277D839B0];
  v25 = MEMORY[0x277D839C8];
  v9 = *a5;
  v11 = sub_22891C740(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_2288D3C20(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_228905C50();
    goto LABEL_7;
  }

  sub_228905658(v14, a4 & 1);
  v20 = sub_22891C740(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22892F858();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D839B0]);
  sub_228906988(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

uint64_t sub_228906368(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x277D83B88];
  v25 = MEMORY[0x277D83BA8];
  v9 = *a5;
  v11 = sub_22891C740(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 40 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_2288D3C20(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_228905C50();
    goto LABEL_7;
  }

  sub_228905658(v14, a4 & 1);
  v20 = sub_22891C740(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22892F858();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D83B88]);
  sub_2289068F4(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

uint64_t sub_2289064D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D837F8];
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v11 = *a6;
  v13 = sub_22891C740(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_2288D3C20(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_228905C50();
    goto LABEL_7;
  }

  sub_228905658(v16, a5 & 1);
  v22 = sub_22891C740(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22892F858();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v10);
  MEMORY[0x28223BE20](v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_228906A18(v13, a3, a4, *v26, v26[1], v19);

  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

uint64_t sub_2289066C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v15 = *a5;
  v17 = sub_22891C740(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_0(v24);
      return sub_2288D3C20(&v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_228905C50();
    goto LABEL_7;
  }

  sub_228905658(v20, a4 & 1);
  v26 = sub_22891C740(a2, a3);
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_22892F858();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v33, v34);
  MEMORY[0x28223BE20](v28);
  v30 = &v32 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30);
  sub_228906AA8(v17, a2, a3, v30, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(&v33);
}

uint64_t sub_2289068F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83B88];
  v13 = MEMORY[0x277D83BA8];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2288D3C20(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_228906988(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  v13 = MEMORY[0x277D839C8];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2288D3C20(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_228906A18(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D837F8];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_2288D3C20(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_228906AA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_2288D3C20(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_228906B80(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = sub_22892E508();
  v7 = MEMORY[0x28223BE20](v6);
  v130 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = a3[2];
  v135 = a3[1];
  v116 = v9;
  v115 = a3[3];
  v114 = a3[7];
  v10 = a3[12];
  v113 = a3[11];
  v112 = v10;
  v111 = a3[13];
  v110 = a3[17];
  v11 = a3[22];
  v120 = a3[21];
  v119 = v11;
  v118 = a3[23];
  v117 = a3[27];
  v12 = a3[32];
  v124 = a3[31];
  v123 = v12;
  v122 = a3[33];
  v121 = a3[37];
  v13 = a3[42];
  v125 = a3[41];
  v134 = a3[43];
  v127 = a3[47];
  v142 = MEMORY[0x277D84F98];
  v131 = v14;
  v15 = *(v14 + 16);
  v133 = a1;
  v128 = v15;
  v129 = v14 + 16;
  v15(&v109 - v16, a1, v6);
  v132 = v6;
  v17 = sub_22892F0D8();
  v18 = MEMORY[0x277D837D0];
  v19 = MEMORY[0x277D837F8];
  v140 = MEMORY[0x277D837D0];
  v141 = MEMORY[0x277D837F8];
  *&v139 = v17;
  *(&v139 + 1) = v20;
  sub_2288D3C20(&v139, v137);
  v21 = v142;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v136 = v21;
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  MEMORY[0x28223BE20](v23);
  v25 = (&v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  sub_2289064D0(*v25, v25[1], 0x63697274656DLL, 0xE600000000000000, isUniquelyReferenced_nonNull_native, &v136);
  __swift_destroy_boxed_opaque_existential_0(v137);
  v27 = v136;
  v142 = v136;
  v28 = a2[1];
  v126 = v13;
  if (v28)
  {
    v29 = *a2;
    v140 = v18;
    v141 = v19;
    *&v139 = v29;
    *(&v139 + 1) = v28;
    sub_2288D3C20(&v139, v137);

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v27;
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
    MEMORY[0x28223BE20](v31);
    v33 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v33);
    sub_2289066C0(v33, 0xD000000000000016, 0x8000000228933480, v30, &v136, v18, v19);
    __swift_destroy_boxed_opaque_existential_0(v137);
    v35 = v136;
  }

  else
  {
    sub_2289055AC(0xD000000000000016, 0x8000000228933480, &v139);
    sub_22890858C(&v139);
    v35 = v142;
  }

  v36 = MEMORY[0x277D839B0];
  v37 = *(a2 + 48);
  v38 = MEMORY[0x277D839C8];
  v140 = MEMORY[0x277D839B0];
  v141 = MEMORY[0x277D839C8];
  LOBYTE(v139) = v37;
  sub_2288D3C20(&v139, v137);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v35;
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  sub_228906204(*v40, 0xD000000000000021, 0x80000002289334D0, v39, &v136);
  __swift_destroy_boxed_opaque_existential_0(v137);
  v41 = v136;
  v142 = v136;
  v42 = *(a2 + 49);
  if (v42 == 2)
  {
    sub_2289055AC(0xD00000000000001BLL, 0x8000000228933600, &v139);
    sub_22890858C(&v139);
  }

  else
  {
    v140 = v36;
    v141 = v38;
    LOBYTE(v139) = v42;
    sub_2288D3C20(&v139, v137);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v41;
    v44 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
    MEMORY[0x28223BE20](v44);
    v46 = &v109 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v46);
    sub_2289066C0(v46, 0xD00000000000001BLL, 0x8000000228933600, v43, &v136, v36, v38);
    __swift_destroy_boxed_opaque_existential_0(v137);
    v142 = v136;
  }

  v48 = MEMORY[0x277D83B88];
  v49 = MEMORY[0x277D83BA8];
  if (a2[9])
  {
    sub_2289055AC(0xD000000000000013, 0x8000000228933520, &v139);
    sub_22890858C(&v139);
    v50 = v142;
  }

  else
  {
    v51 = a2[8];
    v140 = MEMORY[0x277D83B88];
    v141 = MEMORY[0x277D83BA8];
    *&v139 = v51;
    sub_2288D3C20(&v139, v137);
    v52 = v142;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v52;
    v54 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
    MEMORY[0x28223BE20](v54);
    v56 = &v109 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v57 + 16))(v56);
    sub_2289066C0(v56, 0xD000000000000013, 0x8000000228933520, v53, &v136, v48, v49);
    __swift_destroy_boxed_opaque_existential_0(v137);
    v50 = v136;
  }

  v58 = v134;
  v59 = a2[7];
  v140 = v48;
  v141 = v49;
  *&v139 = v59;
  sub_2288D3C20(&v139, v137);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v50;
  v61 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  sub_228906368(*v61, 0xD00000000000001ALL, 0x80000002289336C0, v60, &v136);
  __swift_destroy_boxed_opaque_existential_0(v137);
  v140 = v48;
  v141 = v49;
  v62 = v136;
  *&v139 = v135;
  sub_2288D3C20(&v139, v137);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v62;
  v64 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  sub_228906368(*v64, 0xD00000000000001BLL, 0x8000000228934BA0, v63, &v136);
  __swift_destroy_boxed_opaque_existential_0(v137);
  v142 = v136;
  v65 = v130;
  v66 = v132;
  v128(v130, v133, v132);
  v67 = (*(v131 + 88))(v65, v66);
  if (v67 == *MEMORY[0x277D0FF50])
  {
    v68 = v48;
    v69 = v125;
    v70 = v127;
    v71 = v126;
  }

  else if (v67 == *MEMORY[0x277D0FF40])
  {
    v68 = v48;
    v69 = v124;
    v71 = v123;
    v58 = v122;
    v70 = v121;
  }

  else if (v67 == *MEMORY[0x277D0FF38])
  {
    v68 = v48;
    v69 = v120;
    v71 = v119;
    v58 = v118;
    v70 = v117;
  }

  else if (v67 == *MEMORY[0x277D0FF48])
  {
    v68 = v48;
    v69 = v113;
    v71 = v112;
    v58 = v111;
    v70 = v110;
  }

  else
  {
    if (v67 != *MEMORY[0x277D0FF30])
    {
      *&v139 = 0;
      *(&v139 + 1) = 0xE000000000000000;
      sub_22892F648();
      MEMORY[0x22AAC3770](0xD000000000000010, 0x8000000228934B60);
      sub_22892F718();
      result = sub_22892F738();
      __break(1u);
      return result;
    }

    v68 = v48;
    v71 = v116;
    v58 = v115;
    v70 = v114;
    v69 = v135;
  }

  v140 = v68;
  v141 = v49;
  *&v139 = v69;
  sub_2288D3C20(&v139, v137);
  v72 = v142;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v72;
  v74 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  sub_228906368(*v74, 0xD00000000000001ELL, 0x8000000228934BC0, v73, &v136);
  __swift_destroy_boxed_opaque_existential_0(v137);
  v75 = v136;
  v140 = v68;
  v141 = v49;
  *&v139 = v71;
  sub_2288D3C20(&v139, v137);
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v75;
  v77 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  sub_228906368(*v77, 0xD000000000000029, 0x8000000228934BE0, v76, &v136);
  __swift_destroy_boxed_opaque_existential_0(v137);
  v78 = v136;
  v140 = v68;
  v141 = v49;
  *&v139 = v58;
  sub_2288D3C20(&v139, v137);
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v78;
  v80 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  sub_228906368(*v80, 0xD00000000000002ALL, 0x8000000228934C10, v79, &v136);
  __swift_destroy_boxed_opaque_existential_0(v137);
  v81 = v136;
  v142 = v136;
  v82 = v70;
  v83 = v70;
  if (v70 == 2)
  {
    sub_2289055AC(0x7461697665447369, 0xEB000000006E6F69, v137);
    sub_22890858C(v137);
LABEL_23:
    sub_2289055AC(0xD000000000000013, 0x8000000228934C40, v137);
    sub_22890858C(v137);
    v93 = MEMORY[0x277D837D0];
    if (v82 == 2)
    {
      sub_2289055AC(0x74654D646E756F62, 0xEB00000000646F68, v137);
      sub_22890858C(v137);
      return v142;
    }

    v95 = v142;
    goto LABEL_27;
  }

  v84 = MEMORY[0x277D839B0];
  v140 = MEMORY[0x277D839B0];
  v85 = MEMORY[0x277D839C8];
  v141 = MEMORY[0x277D839C8];
  LOBYTE(v139) = v70 & 1;
  sub_2288D3C20(&v139, v137);
  v86 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v81;
  v87 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  MEMORY[0x28223BE20](v87);
  v89 = &v109 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v90 + 16))(v89);
  v91 = v86;
  v83 = v70;
  sub_2289066C0(v89, 0x7461697665447369, 0xEB000000006E6F69, v91, &v136, v84, v85);
  __swift_destroy_boxed_opaque_existential_0(v137);
  v92 = v136;
  v142 = v136;
  if ((v70 & 0xFF00) == 0x200)
  {
    goto LABEL_23;
  }

  v140 = v84;
  v141 = v85;
  LOBYTE(v139) = BYTE1(v70) & 1;
  sub_2288D3C20(&v139, v137);
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v92;
  v97 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  MEMORY[0x28223BE20](v97);
  v99 = &v109 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v100 + 16))(v99);
  v83 = v70;
  sub_2289066C0(v99, 0xD000000000000013, 0x8000000228934C40, v96, &v136, v84, v85);
  __swift_destroy_boxed_opaque_existential_0(v137);
  v95 = v136;
  v93 = MEMORY[0x277D837D0];
LABEL_27:
  v101 = 7500137;
  if ((*&v83 & 0x10000) != 0)
  {
    v101 = 0x6E696772616DLL;
  }

  v102 = 0xE600000000000000;
  v140 = v93;
  v103 = MEMORY[0x277D837F8];
  v141 = MEMORY[0x277D837F8];
  if ((*&v83 & 0x10000) == 0)
  {
    v102 = 0xE300000000000000;
  }

  *&v139 = v101;
  *(&v139 + 1) = v102;
  sub_2288D3C20(&v139, v137);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v136 = v95;
  v105 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  MEMORY[0x28223BE20](v105);
  v107 = &v109 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v108 + 16))(v107);
  sub_2289066C0(v107, 0x74654D646E756F62, 0xEB00000000646F68, v104, &v136, v93, v103);
  __swift_destroy_boxed_opaque_existential_0(v137);
  return v136;
}

uint64_t sub_228907AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a1;
  v5 = a3 + 288;
  v6 = sub_22892E508();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(a3 + 40);
  v65 = *(a3 + 48);
  v63 = *(a3 + 120);
  v62 = *(a3 + 128);
  v70 = *(a3 + 200);
  v69 = *(a3 + 208);
  v10 = *(a3 + 280);
  v73 = *(a3 + 288);
  v11 = *(a3 + 360);
  v74 = v10;
  v75 = v11;
  v12 = *(v5 + 80);
  v64 = *(a3 + 72);
  v61 = *(a3 + 56);
  v60[1] = *(a3 + 152);
  v60[0] = *(a3 + 136);
  v68 = *(a3 + 232);
  v67 = *(a3 + 216);
  v72 = *(v5 + 24);
  v71 = *(v5 + 8);
  v13 = *(v5 + 104);
  v77 = *(v5 + 88);
  v78 = v13;
  v14 = MEMORY[0x277D84F98];
  v87 = MEMORY[0x277D84F98];
  if (*(a2 + 24))
  {
    sub_2289055AC(6645601, 0xE300000000000000, &v83);
    sub_22890858C(&v83);
    v15 = v87;
  }

  else
  {
    v16 = *(a2 + 16);
    v85 = MEMORY[0x277D83B88];
    v86 = MEMORY[0x277D83BA8];
    *&v83 = v16;
    sub_2288D3C20(&v83, &v80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v14;
    v18 = __swift_mutable_project_boxed_opaque_existential_1(&v80, v82);
    MEMORY[0x28223BE20](v18);
    v20 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v20);
    sub_2289066C0(v20, 6645601, 0xE300000000000000, isUniquelyReferenced_nonNull_native, &v79, MEMORY[0x277D83B88], MEMORY[0x277D83BA8]);
    __swift_destroy_boxed_opaque_existential_0(&v80);
    v15 = v79;
  }

  v22 = *(a2 + 32);
  v23 = *(a2 + 40);
  v85 = MEMORY[0x277D837D0];
  v86 = MEMORY[0x277D837F8];
  *&v83 = v22;
  *(&v83 + 1) = v23;
  sub_2288D3C20(&v83, &v80);

  LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
  v79 = v15;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v80, v82);
  MEMORY[0x28223BE20](v24);
  v26 = (v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_2289064D0(*v26, v26[1], 0x6369676F6C6F6962, 0xED00007865536C61, v23, &v79);
  __swift_destroy_boxed_opaque_existential_0(&v80);
  v87 = v79;
  (*(v7 + 16))(v9, v76, v6);
  v28 = (*(v7 + 88))(v9, v6);
  if (v28 == *MEMORY[0x277D0FF50])
  {
    v29 = v75;
  }

  else
  {
    if (v28 == *MEMORY[0x277D0FF40])
    {
      v29 = v74;
      v12 = v73;
      v77 = v71;
      v30 = &v89;
    }

    else if (v28 == *MEMORY[0x277D0FF38])
    {
      v29 = v70;
      v12 = v69;
      v77 = v67;
      v30 = &v88;
    }

    else if (v28 == *MEMORY[0x277D0FF48])
    {
      v29 = v63;
      v12 = v62;
      v77 = v60[0];
      v30 = &v81;
    }

    else
    {
      if (v28 != *MEMORY[0x277D0FF30])
      {
        *&v83 = 0;
        *(&v83 + 1) = 0xE000000000000000;
        sub_22892F648();
        MEMORY[0x22AAC3770](0xD000000000000010, 0x8000000228934B60);
        sub_22892F718();
        result = sub_22892F738();
        __break(1u);
        return result;
      }

      v29 = v66;
      v12 = v65;
      v77 = v61;
      v30 = &v84;
    }

    v78 = *(v30 - 16);
  }

  if (v12)
  {
    sub_2289055AC(0xD000000000000016, 0x8000000228934B80, &v83);
    sub_22890858C(&v83);
  }

  else
  {
    v31 = MEMORY[0x277D83B88];
    v32 = MEMORY[0x277D83BA8];
    v85 = MEMORY[0x277D83B88];
    v86 = MEMORY[0x277D83BA8];
    *&v83 = v29;
    sub_2288D3C20(&v83, &v80);
    v33 = v87;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v33;
    v35 = __swift_mutable_project_boxed_opaque_existential_1(&v80, v82);
    MEMORY[0x28223BE20](v35);
    v37 = v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v37);
    sub_2289066C0(v37, 0xD000000000000016, 0x8000000228934B80, v34, &v79, v31, v32);
    __swift_destroy_boxed_opaque_existential_0(&v80);
    v87 = v79;
  }

  if (v77 == 2)
  {
    sub_2289055AC(0x646E756F42776F6CLL, 0xE800000000000000, &v80);
    sub_22890858C(&v80);
    sub_2289055AC(0x6E756F4268676968, 0xE900000000000064, &v80);
    sub_22890858C(&v80);
    sub_2289055AC(5394761, 0xE300000000000000, &v80);
    sub_22890858C(&v80);
    return v87;
  }

  else
  {
    v40 = MEMORY[0x277D839F8];
    v41 = MEMORY[0x277D83A28];
    v85 = MEMORY[0x277D839F8];
    v86 = MEMORY[0x277D83A28];
    *&v83 = *(&v77 + 1);
    sub_2288D3C20(&v83, &v80);
    v42 = v87;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v42;
    v44 = __swift_mutable_project_boxed_opaque_existential_1(&v80, v82);
    MEMORY[0x28223BE20](v44);
    v46 = v60 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v46);
    sub_2289066C0(v46, 0x646E756F42776F6CLL, 0xE800000000000000, v43, &v79, v40, v41);
    __swift_destroy_boxed_opaque_existential_0(&v80);
    v48 = v79;
    v85 = v40;
    v86 = v41;
    *&v83 = v78;
    sub_2288D3C20(&v83, &v80);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v48;
    v50 = __swift_mutable_project_boxed_opaque_existential_1(&v80, v82);
    MEMORY[0x28223BE20](v50);
    v52 = v60 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 16))(v52);
    sub_2289066C0(v52, 0x6E756F4268676968, 0xE900000000000064, v49, &v79, v40, v41);
    __swift_destroy_boxed_opaque_existential_0(&v80);
    v54 = v79;
    v85 = v40;
    v86 = v41;
    *&v83 = *(&v78 + 1);
    sub_2288D3C20(&v83, &v80);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v79 = v54;
    v56 = __swift_mutable_project_boxed_opaque_existential_1(&v80, v82);
    MEMORY[0x28223BE20](v56);
    v58 = v60 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v59 + 16))(v58);
    sub_2289066C0(v58, 5394761, 0xE300000000000000, v55, &v79, v40, v41);
    __swift_destroy_boxed_opaque_existential_0(&v80);
    return v79;
  }
}

uint64_t sub_22890858C(uint64_t a1)
{
  sub_2289085E8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2289085E8(uint64_t a1)
{
  if (!qword_2813DED60)
  {
    sub_2288D3BBC();
    v1 = sub_22892F498();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DED60);
    }
  }
}

void sub_228908640(uint64_t a1)
{
  if (!qword_2813DEA58)
  {
    sub_2288D3BBC();
    v1 = sub_22892F798();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEA58);
    }
  }
}

void sub_2289086A8(uint64_t a1)
{
  if (!qword_2813DEA48)
  {
    sub_228908724();
    sub_22892DDC8();
    sub_2288E716C();
    v1 = sub_22892F798();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEA48);
    }
  }
}

unint64_t sub_228908724()
{
  result = qword_2813DEC58;
  if (!qword_2813DEC58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DEC58);
  }

  return result;
}

id sub_228908770(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager_eventSubmissionManager] = a2;
  v11 = &v5[OBJC_IVAR____TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager_unitTest_didObserveAnalyticsSubmissionCoordinator];
  *v11 = a3;
  *(v11 + 1) = a4;
  v12 = a2;
  sub_2288C0764(a3, a4);
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  v14 = [a1 daemon];
  if (v14)
  {
    v15 = v14;
    [v14 registerDaemonReadyObserver:v13 queue:0];
    sub_2288C751C(a3, a4);
  }

  else
  {
    sub_2288C751C(a3, a4);
  }

  return v13;
}

void sub_2289089F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_22892DE28();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

void sub_228908B30(void (*a1)(void, uint64_t, void *), uint64_t a2)
{
  v3 = v2;
  v176[55] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v7 = sub_22892E508();
  v160 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v158 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v157 = &v137 - v11;
  MEMORY[0x28223BE20](v10);
  v154 = &v137 - v12;
  v13 = sub_22892EDE8();
  v163 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v137 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v156 = &v137 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v147 = &v137 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v161 = &v137 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v137 - v26;
  v159 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_22892EDC8();
    v41 = sub_22892EDD8();
    v42 = sub_22892F378();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v176[0] = v44;
      *v43 = 136446210;
      v45 = sub_22892F948();
      v165 = v13;
      v47 = sub_2288B748C(v45, v46, v176);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_2288B2000, v41, v42, "[%{public}s] Profile not available, completing without submission", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AAC47E0](v44, -1, -1);
      MEMORY[0x22AAC47E0](v43, -1, -1);

      (*(v163 + 8))(v19, v165);
    }

    else
    {

      (*(v163 + 8))(v19, v13);
    }

    a1(0, 2, 0);
    return;
  }

  v29 = Strong;
  v151 = a1;
  sub_22892EDC8();
  v30 = sub_22892EDD8();
  v31 = sub_22892F398();
  v32 = os_log_type_enabled(v30, v31);
  v164 = v7;
  v165 = v13;
  v150 = a2;
  v148 = v16;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v176[0] = v34;
    *v33 = 136446210;
    v35 = sub_22892F948();
    v37 = sub_2288B748C(v35, v36, v176);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_2288B2000, v30, v31, "[%{public}s] Submitting HealthBalanceDailyAnalyticsEvent", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x22AAC47E0](v34, -1, -1);
    MEMORY[0x22AAC47E0](v33, -1, -1);

    v38 = *(v163 + 8);
    v39 = v27;
    v40 = v165;
  }

  else
  {

    v38 = *(v163 + 8);
    v39 = v27;
    v40 = v13;
  }

  v162 = v38;
  v38(v39, v40);
  v48 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v48)
  {
    __break(1u);
    goto LABEL_37;
  }

  v49 = v48;
  v50 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v50)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v51 = v50;
  sub_22892E268();
  v52 = sub_22892E258();
  v53 = objc_allocWithZone(MEMORY[0x277D62528]);
  v54 = sub_22892F098();
  v55 = [v53 initWithIdentifier:v54 healthStore:0 options:2];

  type metadata accessor for HealthBalanceDailyAnalyticsEvent();
  v56 = swift_allocObject();
  *(v56 + 64) = 0u;
  *(v56 + 80) = 0u;
  *(v56 + 96) = 0u;
  *(v56 + 112) = 0u;
  *(v56 + 121) = 0u;
  sub_228909A9C(v176);
  memcpy((v56 + 144), v176, 0x1B8uLL);
  *(v56 + 16) = v29;
  v57 = v29;
  *(v56 + 24) = [v57 notificationManager];
  *(v56 + 32) = v49;
  *(v56 + 40) = v51;
  *(v56 + 48) = v52;
  *(v56 + 56) = v55;
  v58 = *(v159 + OBJC_IVAR____TtC19HealthBalanceDaemon31AnalyticsDailyMultiEventManager_eventSubmissionManager);
  v168[0] = 0;
  v155 = v58;
  v59 = [v58 submitEvent:v56 error:v168];
  v60 = v168[0];
  if (!v59)
  {
    v76 = v168[0];
    v77 = sub_22892DE38();

    swift_willThrow();

LABEL_15:
    v78 = v165;
    v79 = v148;
    sub_22892EDC8();
    v80 = v77;
    v81 = sub_22892EDD8();
    v82 = sub_22892F378();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v168[0] = v85;
      *v83 = 136446466;
      v86 = sub_22892F948();
      v88 = sub_2288B748C(v86, v87, v168);

      *(v83 + 4) = v88;
      *(v83 + 12) = 2114;
      v89 = v77;
      v90 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 14) = v90;
      *v84 = v90;
      _os_log_impl(&dword_2288B2000, v81, v82, "[%{public}s] Error submitting event: %{public}@", v83, 0x16u);
      sub_228909B4C(v84, sub_2288D6D64);
      MEMORY[0x22AAC47E0](v84, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x22AAC47E0](v85, -1, -1);
      MEMORY[0x22AAC47E0](v83, -1, -1);

      v91 = v148;
      v92 = v165;
    }

    else
    {

      v91 = v79;
      v92 = v78;
    }

    v162(v91, v92);
    v93 = v151;
    v94 = v77;
    v93(0, 1, v77);

    return;
  }

  v61 = *(v56 + 112);
  v170 = *(v56 + 96);
  v171[0] = v61;
  *(v171 + 9) = *(v56 + 121);
  v62 = *(v56 + 80);
  v169[0] = *(v56 + 64);
  v169[1] = v62;
  v173 = v169[0];
  v174 = v62;
  v175 = *(v56 + 96);
  v63 = *(v56 + 112);
  *(v172 + 9) = *(v56 + 121);
  v172[0] = v63;
  v64 = v165;
  v65 = v156;
  v152 = *(&v170 + 1);
  v140 = v56;
  if (!*(&v170 + 1) || (memcpy(v168, (v56 + 144), sizeof(v168)), sub_2288D3CB8(v168) == 1))
  {
    v66 = v60;
    sub_22892EDC8();
    v67 = sub_22892EDD8();
    v68 = sub_22892F378();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v168[0] = v70;
      *v69 = 136446210;
      v71 = sub_22892F948();
      v73 = v57;
      v74 = sub_2288B748C(v71, v72, v168);

      *(v69 + 4) = v74;
      v57 = v73;
      _os_log_impl(&dword_2288B2000, v67, v68, "[%{public}s] Daily event failed to populate, cannot continue", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x22AAC47E0](v70, -1, -1);
      MEMORY[0x22AAC47E0](v69, -1, -1);

      v75 = v156;
    }

    else
    {

      v75 = v65;
    }

    v162(v75, v64);
    v151(0, 1, 0);

    return;
  }

  v138 = v57;
  v95 = v60;
  sub_228909AE8(v169, v167);
  v149 = sub_22892E4F8();
  v97 = v164;
  v98 = v154;
  v146 = *(v149 + 16);
  if (v146)
  {
    v99 = 0;
    v144 = v149 + ((*(v160 + 80) + 32) & ~*(v160 + 80));
    v100 = v160 + 16;
    v159 = (v160 + 8);
    v142 = (v160 + 32);
    v143 = v163 + 8;
    *&v96 = 136446466;
    v139 = v96;
    v145 = ObjectType;
    while (1)
    {
      if (v99 >= *(v149 + 16))
      {
        __break(1u);
      }

      v101 = *(v160 + 16);
      v101(v98, v144 + *(v160 + 72) * v99, v97);
      sub_22892EDC8();
      v102 = v157;
      v101(v157, v98, v97);
      v103 = sub_22892EDD8();
      v104 = sub_22892F398();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v153 = v101;
        v106 = v102;
        v107 = v105;
        v141 = swift_slowAlloc();
        v167[0] = v141;
        *v107 = v139;
        v108 = sub_22892F948();
        v110 = v100;
        v111 = sub_2288B748C(v108, v109, v167);

        *(v107 + 4) = v111;
        *(v107 + 12) = 2080;
        v112 = v158;
        v153(v158, v106, v164);
        v113 = sub_22892F0D8();
        v115 = v114;
        v116 = v106;
        v101 = v153;
        v156 = *v159;
        (v156)(v116, v164);
        v117 = sub_2288B748C(v113, v115, v167);
        v100 = v110;

        *(v107 + 14) = v117;
        v97 = v164;
        _os_log_impl(&dword_2288B2000, v103, v104, "[%{public}s] Submitting HealthBalanceAnalysisAnalyticsEvent(%s)", v107, 0x16u);
        v118 = v141;
        swift_arrayDestroy();
        v119 = v118;
        v98 = v154;
        MEMORY[0x22AAC47E0](v119, -1, -1);
        MEMORY[0x22AAC47E0](v107, -1, -1);

        v162(v161, v165);
      }

      else
      {

        v156 = *v159;
        (v156)(v102, v97);
        v162(v161, v165);
        v112 = v158;
      }

      v101(v112, v98, v97);
      type metadata accessor for HealthBalanceAnalysisAnalyticsEvent(0);
      v120 = swift_allocObject();
      (*v142)(v120 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_dataType, v112, v97);
      v121 = v120 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_analyticsEnvironment;
      v122 = v174;
      *v121 = v173;
      *(v121 + 16) = v122;
      v123 = v152;
      *(v121 + 32) = v175;
      *(v121 + 40) = v123;
      *(v121 + 48) = v172[0];
      *(v121 + 57) = *(v172 + 9);
      memcpy((v120 + OBJC_IVAR____TtC19HealthBalanceDaemon35HealthBalanceAnalysisAnalyticsEvent_summaryAnalytics), v168, 0x1B8uLL);
      v166[0] = 0;
      sub_228909AE8(v169, v167);
      v124 = [v155 submitEvent:v120 error:v166];

      v125 = v166[0];
      if (!v124)
      {
        break;
      }

      ++v99;
      (v156)(v98, v97);
      if (v146 == v99)
      {
        goto LABEL_31;
      }
    }

    v135 = v125;

    sub_228909B4C(v169, sub_2288D1B4C);
    v136 = v98;
    v77 = sub_22892DE38();

    swift_willThrow();

    (v156)(v136, v97);
    v57 = v138;
    goto LABEL_15;
  }

LABEL_31:

  sub_228909B4C(v169, sub_2288D1B4C);
  v126 = v147;
  sub_22892EDC8();
  v127 = sub_22892EDD8();
  v128 = sub_22892F398();
  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v167[0] = v130;
    *v129 = 136446210;
    v131 = sub_22892F948();
    v133 = sub_2288B748C(v131, v132, v167);

    *(v129 + 4) = v133;
    _os_log_impl(&dword_2288B2000, v127, v128, "[%{public}s] All events submitted successfully", v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v130);
    MEMORY[0x22AAC47E0](v130, -1, -1);
    MEMORY[0x22AAC47E0](v129, -1, -1);
  }

  v162(v126, v165);
  v134 = v138;
  v151(0, 0, 0);
}

double sub_228909A9C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 3;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  return result;
}

uint64_t sub_228909AE8(uint64_t a1, uint64_t a2)
{
  sub_2288D1B4C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228909B4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_228909BAC@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1;
  *(a1 + 216) = 2;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 296) = 2;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 1;
  *(a1 + 376) = 2;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  return result;
}

uint64_t sub_228909C20(uint64_t a1)
{
  v3 = sub_22892E508();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 104);
  v7(v6, *MEMORY[0x277D0FF30], v3);
  sub_22890B5CC(a1, v6);
  v8 = *(v4 + 8);
  v8(v6, v3);
  v7(v6, *MEMORY[0x277D0FF48], v3);
  sub_22890B5CC(a1, v6);
  v8(v6, v3);
  v7(v6, *MEMORY[0x277D0FF38], v3);
  sub_22890B5CC(a1, v6);
  v8(v6, v3);
  v7(v6, *MEMORY[0x277D0FF40], v3);
  sub_22890B5CC(a1, v6);
  v8(v6, v3);
  v7(v6, *MEMORY[0x277D0FF50], v3);
  sub_22890B5CC(a1, v6);
  v8(v6, v3);
  result = sub_22892E6B8();
  if (result)
  {
    v10 = *(v1 + 408);
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    *(v1 + 408) = v12;
  }

  if (sub_22892E6B8())
  {
    v13 = 3;
  }

  else
  {
    sub_22892E6D8();
    if (sub_22892EC28())
    {
      v13 = 2;
    }

    else if (sub_22892E698())
    {
      v13 = 4;
    }

    else
    {
      v13 = 1;
    }
  }

  *(v1 + 416) = v13;
  result = MEMORY[0x22AAC2CF0]();
  if (result >= 1)
  {
    v14 = *(v1 + 424);
    v11 = __OFADD__(v14, 1);
    v15 = v14 + 1;
    if (v11)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    *(v1 + 424) = v15;
    *(v1 + 416) = 5;
  }

  v16 = MEMORY[0x22AAC2D10]();
  result = sub_22892E228();
  if (v16 < result)
  {
LABEL_17:
    if (!__OFADD__(*v1, 1))
    {
      ++*v1;
      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

  v17 = *(v1 + 432);
  v11 = __OFADD__(v17, 1);
  v18 = v17 + 1;
  if (!v11)
  {
    *(v1 + 432) = v18;
    goto LABEL_17;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_228909F24()
{
  v1 = v0[1];
  v2 = v0[11];
  v3 = v0[21];
  v4 = v0[31];
  v5 = v0[41];
  v6 = v0[51];
  sub_22890CEFC(0, &unk_2813DE9B8, sub_22890CE94, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001BLL;
  v8 = MEMORY[0x277D83B88];
  *(inited + 16) = xmmword_228932620;
  v9 = MEMORY[0x277D83BA8];
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  *(inited + 40) = 0x8000000228934BA0;
  *(inited + 48) = v1;
  *(inited + 88) = 0xD00000000000001ALL;
  *(inited + 96) = 0x8000000228934EE0;
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 104) = v2;
  *(inited + 144) = 0xD000000000000015;
  *(inited + 152) = 0x8000000228934F00;
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 160) = v3;
  *(inited + 200) = 0xD000000000000020;
  *(inited + 208) = 0x8000000228934F20;
  *(inited + 240) = v8;
  *(inited + 248) = v9;
  *(inited + 216) = v4;
  *(inited + 256) = 0xD00000000000001CLL;
  *(inited + 264) = 0x8000000228934F50;
  *(inited + 296) = v8;
  *(inited + 304) = v9;
  *(inited + 272) = v5;
  *(inited + 312) = 0xD000000000000017;
  *(inited + 320) = 0x8000000228934F70;
  *(inited + 352) = v8;
  *(inited + 360) = v9;
  *(inited + 328) = v6;
  v10 = sub_22891CBE4(inited);
  swift_setDeallocating();
  sub_22890CE94(0);
  swift_arrayDestroy();
  return v10;
}

unint64_t sub_22890A0D4()
{
  v16 = *(v0 + 32);
  v1 = *(v0 + 112);
  v2 = *(v0 + 192);
  v3 = *(v0 + 272);
  v4 = *(v0 + 352);
  v5 = *(v0 + 416);
  v7 = *(v0 + 424);
  v6 = *(v0 + 432);
  sub_22890CEFC(0, &unk_2813DE9B8, sub_22890CE94, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228932630;
  *(inited + 32) = 0x746174537473616CLL;
  *(inited + 40) = 0xEA00000000007375;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v9 = 0xEA0000000000746ELL;
      v10 = 0x656D656E69666572;
    }

    else if (v5 == 4)
    {
      v9 = 0xE700000000000000;
      v10 = 0x6C616369707974;
    }

    else
    {
      v9 = 0xE800000000000000;
      v10 = 0x737265696C74756FLL;
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      v9 = 0xE600000000000000;
      v10 = 0x617461446F6ELL;
    }

    else
    {
      v9 = 0x8000000228933080;
      v10 = 0xD000000000000014;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  v11 = MEMORY[0x277D837F8];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v11;
  *(inited + 48) = v10;
  *(inited + 56) = v9;
  v12 = MEMORY[0x277D83B88];
  *(inited + 88) = 0xD00000000000001CLL;
  *(inited + 96) = 0x8000000228934DC0;
  v13 = MEMORY[0x277D83BA8];
  *(inited + 128) = v12;
  *(inited + 136) = v13;
  *(inited + 104) = v7;
  *(inited + 144) = 0xD00000000000001BLL;
  *(inited + 152) = 0x8000000228934DE0;
  *(inited + 184) = v12;
  *(inited + 192) = v13;
  *(inited + 160) = v2;
  *(inited + 200) = 0xD000000000000026;
  *(inited + 208) = 0x8000000228934E00;
  *(inited + 240) = v12;
  *(inited + 248) = v13;
  *(inited + 216) = v3;
  *(inited + 256) = 0xD000000000000022;
  *(inited + 264) = 0x8000000228934E30;
  *(inited + 296) = v12;
  *(inited + 304) = v13;
  *(inited + 272) = v4;
  *(inited + 312) = 0xD000000000000020;
  *(inited + 320) = 0x8000000228934E60;
  *(inited + 352) = v12;
  *(inited + 360) = v13;
  *(inited + 328) = v1;
  *(inited + 368) = 0xD000000000000024;
  *(inited + 376) = 0x8000000228934E90;
  *(inited + 408) = v12;
  *(inited + 416) = v13;
  *(inited + 384) = v16;
  *(inited + 424) = 0xD00000000000001ALL;
  *(inited + 432) = 0x8000000228934EC0;
  *(inited + 464) = v12;
  *(inited + 472) = v13;
  *(inited + 440) = v6;
  v14 = sub_22891CBE4(inited);
  swift_setDeallocating();
  sub_22890CE94(0);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_22890A39C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEA0000000000746ELL;
  v5 = 0xE700000000000000;
  v6 = 0x6C616369707974;
  if (a1 != 4)
  {
    v6 = 0x737265696C74756FLL;
    v5 = 0xE800000000000000;
  }

  if (a1 == 3)
  {
    v6 = 0x656D656E69666572;
  }

  else
  {
    v4 = v5;
  }

  v7 = 0xE600000000000000;
  v8 = 0x617461446F6ELL;
  if (a1 != 1)
  {
    v8 = 0xD000000000000014;
    v7 = 0x8000000228933080;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xEA0000000000746ELL;
      if (v9 != 0x656D656E69666572)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6C616369707974)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE800000000000000;
      if (v9 != 0x737265696C74756FLL)
      {
LABEL_35:
        v12 = sub_22892F818();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x617461446F6ELL)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0x8000000228933080;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x6E776F6E6B6E75)
    {
      goto LABEL_35;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_35;
  }

  v12 = 1;
LABEL_36:

  return v12 & 1;
}

uint64_t sub_22890A580(unsigned __int8 a1)
{
  sub_22892F8A8();
  sub_22892F0F8();

  return sub_22892F8C8();
}

uint64_t sub_22890A68C(uint64_t a1, unsigned __int8 a2)
{
  sub_22892F8A8();
  sub_22892F0F8();

  return sub_22892F8C8();
}

uint64_t SleepingSampleDaySummaryCollectionAnalytics.MetricSummary.BoundMethod.rawValue.getter()
{
  if (*v0)
  {
    return 0x6E696772616DLL;
  }

  else
  {
    return 7500137;
  }
}

HealthBalanceDaemon::SleepingSampleDaySummaryCollectionAnalytics::MetricSummary::BoundMethod_optional __swiftcall SleepingSampleDaySummaryCollectionAnalytics.MetricSummary.BoundMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22892F7C8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22890A858(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E696772616DLL;
  }

  else
  {
    v3 = 7500137;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E696772616DLL;
  }

  else
  {
    v5 = 7500137;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22892F818();
  }

  return v8 & 1;
}

uint64_t sub_22890A8F4()
{
  sub_22892F8A8();
  sub_22892F0F8();

  return sub_22892F8C8();
}

uint64_t sub_22890A96C(uint64_t a1)
{
  sub_22892F0F8();
}

uint64_t sub_22890A9D0(uint64_t a1)
{
  sub_22892F8A8();
  sub_22892F0F8();

  return sub_22892F8C8();
}

uint64_t sub_22890AA44@<X0>(char *a2@<X8>)
{
  v3 = sub_22892F7C8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_22890AAA4(uint64_t *a1@<X8>)
{
  v2 = 7500137;
  if (*v1)
  {
    v2 = 0x6E696772616DLL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_22890AC00(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = sub_22892E5A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22890CEFC(0, &qword_2813DFE90, MEMORY[0x277D0FF28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_22892E4D8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892E908();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v17 = sub_22892E508();
    (*(*(v17 - 8) + 8))(a2, v17);
    v18 = sub_22892E948();
    (*(*(v18 - 8) + 8))(a1, v18);
    sub_22890CF60(v12);
    *a3 = 2;
    a3[1] = 0.0;
    a3[2] = 0.0;
    a3[3] = 0.0;
    return;
  }

  v52 = v7;
  v53 = v6;
  (*(v14 + 32))(v16, v12, v13);
  v55 = a1;
  v57 = sub_22892E898() & 1;
  if (v57)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

  v54 = v19;
  v20 = sub_22892E498();
  v21 = sub_22890BF00();
  v22 = [v20 minimum];
  [v22 doubleValueForUnit_];
  v24 = v23;

  v25 = [v20 maximum];
  [v25 doubleValueForUnit_];
  v27 = v26;

  sub_22890C12C(v24);
  v29 = v28;
  sub_22890C12C(v27);
  v31 = v30;

  if (v29 > v31)
  {
    __break(1u);
    return;
  }

  v32 = sub_22892E4B8();
  sub_22890B230(v32);
  v34 = v33;

  sub_2288CD058();
  v35 = sub_22892E498();
  v36 = sub_22892E4A8();
  v37 = sub_22892F468();

  if (v37)
  {
    v38 = sub_22892E508();
    (*(*(v38 - 8) + 8))(a2, v38);
    v39 = sub_22892E948();
    (*(*(v39 - 8) + 8))(v55, v39);
    (*(v14 + 8))(v16, v13);
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v40 = v55;
    sub_22892E938();
    v41 = sub_22892E598();
    (*(v52 + 8))(v9, v53);
    if (v41)
    {
      v42 = sub_22892E4A8();
      v43 = [v42 containsQuantity_];

      if ((v43 & 1) == 0)
      {
        v48 = sub_22892E498();
        v49 = [v48 containsQuantity_];

        v50 = sub_22892E508();
        (*(*(v50 - 8) + 8))(a2, v50);
        v51 = sub_22892E948();
        (*(*(v51 - 8) + 8))(v40, v51);
        (*(v14 + 8))(v16, v13);
        v46 = v54;
        if (v49)
        {
          v46 = 1;
        }

        goto LABEL_14;
      }
    }

    v44 = sub_22892E508();
    (*(*(v44 - 8) + 8))(a2, v44);
    v45 = sub_22892E948();
    (*(*(v45 - 8) + 8))(v40, v45);
    (*(v14 + 8))(v16, v13);
  }

  v46 = v54;
LABEL_14:
  v47 = 0x10000;
  if (!v56)
  {
    v47 = 0;
  }

  *a3 = v47 | v57 | (v46 << 8);
  a3[1] = v29;
  a3[2] = v31;
  *(a3 + 3) = v34;
}

void *sub_22890B230(void *a1)
{
  v2 = v1;
  v4 = sub_22892E508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22890BF00();
  [a1 doubleValueForUnit_];
  v10 = v9;

  (*(v5 + 16))(v7, v2, v4);
  v11 = (*(v5 + 88))(v7, v4);
  if (v11 == *MEMORY[0x277D0FF50])
  {
    v16 = v10;
    v17 = xmmword_228932680;
    v12 = 0x4000000000000000;
LABEL_10:
    v15 = v12;
    sub_22890CFEC();
    return sub_22892EFE8();
  }

  if (v11 == *MEMORY[0x277D0FF40])
  {
    v16 = v10;
    v13 = xmmword_228932670;
LABEL_5:
    v17 = v13;
    v12 = 0x3FE0000000000000;
    goto LABEL_10;
  }

  if (v11 == *MEMORY[0x277D0FF38])
  {
    v16 = v10;
    v17 = xmmword_228932660;
    v12 = 0x3F747AE147AE147BLL;
    goto LABEL_10;
  }

  if (v11 == *MEMORY[0x277D0FF48])
  {
    v16 = v10;
    v17 = xmmword_228932650;
    v12 = 0x3FD0000000000000;
    goto LABEL_10;
  }

  if (v11 == *MEMORY[0x277D0FF30])
  {
    v16 = v10;
    v13 = xmmword_228932640;
    goto LABEL_5;
  }

  *&v17 = 0;
  *(&v17 + 1) = 0xE000000000000000;
  sub_22892F648();
  MEMORY[0x22AAC3770](0xD000000000000015, 0x8000000228934F90);
  sub_22892F718();
  result = sub_22892F738();
  __break(1u);
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.MetricCounts.lastSummary.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.MetricCounts.lastSummary.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  return result;
}

uint64_t sub_22890B5CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v5 = sub_22892E508();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22892E538();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22892E5A8();
  v10 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22892E948();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  sub_22892E678();
  sub_22892E938();
  sub_22892E548();
  (*(v10 + 8))(v12, v30);
  sub_22890B93C(v9);
  (*(v31 + 8))(v9, v32);
  (*(v14 + 16))(v17, v19, v13);
  v20 = v34;
  (*(v35 + 16))(v34, a2, v36);
  sub_22890AC00(v17, v20, v37);
  v21 = v37[1];
  *(v3 + 48) = v37[0];
  *(v3 + 64) = v21;
  LOBYTE(v20) = sub_22892E898();
  result = (*(v14 + 8))(v19, v13);
  if ((v20 & 1) == 0)
  {
    if (*(v3 + 40))
    {
      return result;
    }

    v27 = *(v3 + 32);
    v28 = v27 + 1;
    if (!__OFADD__(v27, 1))
    {
      v26 = (v3 + 40);
      *(v3 + 32) = v28;
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v23 = *(v3 + 24);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v3 + 24) = v25;
  *(v3 + 32) = 0;
  v26 = (v3 + 40);
LABEL_7:
  *v26 = 0;
  return result;
}

uint64_t sub_22890B93C(uint64_t a1)
{
  v3 = sub_22892E538();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  result = (*(v4 + 88))(v6, v3);
  if (result == *MEMORY[0x277D0FF70])
  {
    v8 = v1[1];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (!v9)
    {
      v1[1] = v10;
      return result;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (result == *MEMORY[0x277D0FF58])
  {
    v11 = v1[2];
    v9 = __OFADD__(v11, 1);
    v12 = v11 + 1;
    if (!v9)
    {
      v1[2] = v12;
      return result;
    }

    goto LABEL_21;
  }

  if (result == *MEMORY[0x277D0FF68] || result == *MEMORY[0x277D0FF60] || result == *MEMORY[0x277D0FF78])
  {
    if (!__OFADD__(*v1, 1))
    {
      ++*v1;
      return result;
    }

    goto LABEL_22;
  }

  v15 = v1[1];
  v9 = __OFADD__(v15, 1);
  v16 = v15 + 1;
  if (v9)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v1[1] = v16;
  return (*(v4 + 8))(v6, v3);
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.watchSleepCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 72);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.watchSleepCounts.setter(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 24) = a1[1];
  v3 = a1[3];
  *(v1 + 40) = a1[2];
  *(v1 + 56) = v3;
  result = a1[4];
  *(v1 + 72) = result;
  *(v1 + 8) = v2;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.wristTempCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 104);
  v3 = *(v1 + 136);
  *(a1 + 32) = *(v1 + 120);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 152);
  *a1 = *(v1 + 88);
  *(a1 + 16) = result;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.wristTempCounts.setter(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 104) = a1[1];
  v3 = a1[3];
  *(v1 + 120) = a1[2];
  *(v1 + 136) = v3;
  result = a1[4];
  *(v1 + 152) = result;
  *(v1 + 88) = v2;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.spO2Counts.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 184);
  v3 = *(v1 + 216);
  *(a1 + 32) = *(v1 + 200);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 232);
  *a1 = *(v1 + 168);
  *(a1 + 16) = result;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.spO2Counts.setter(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 184) = a1[1];
  v3 = a1[3];
  *(v1 + 200) = a1[2];
  *(v1 + 216) = v3;
  result = a1[4];
  *(v1 + 232) = result;
  *(v1 + 168) = v2;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.respiratoryRateCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 264);
  v3 = *(v1 + 280);
  *a1 = *(v1 + 248);
  *(a1 + 16) = v2;
  result = *(v1 + 296);
  v5 = *(v1 + 312);
  *(a1 + 32) = v3;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.respiratoryRateCounts.setter(__int128 *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  *(v1 + 264) = a1[1];
  *(v1 + 280) = v2;
  result = a1[4];
  *(v1 + 296) = v3;
  *(v1 + 312) = result;
  *(v1 + 248) = v4;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.sleepingRHRCounts.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  *(a1 + 32) = *(v1 + 360);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 392);
  result = *(v1 + 344);
  *a1 = *(v1 + 328);
  *(a1 + 16) = result;
  return result;
}

__n128 SleepingSampleDaySummaryCollectionAnalytics.sleepingRHRCounts.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 360) = *(a1 + 32);
  *(v1 + 376) = v2;
  *(v1 + 392) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 328) = *a1;
  *(v1 + 344) = result;
  return result;
}

uint64_t sub_22890BD08(uint64_t a1)
{
  sub_22892F0F8();
}

unint64_t sub_22890BE04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22890CE48(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22890BE34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA0000000000746ELL;
  v6 = 0x656D656E69666572;
  v7 = 0xE700000000000000;
  v8 = 0x6C616369707974;
  if (v2 != 4)
  {
    v8 = 0x737265696C74756FLL;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x617461446F6ELL;
  if (v2 != 1)
  {
    v10 = 0xD000000000000014;
    v9 = 0x8000000228933080;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

id sub_22890BF00()
{
  v1 = v0;
  v2 = sub_22892E508();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D0FF50] || v6 == *MEMORY[0x277D0FF40])
  {
    v8 = &selRef__countPerMinuteUnit;
  }

  else if (v6 == *MEMORY[0x277D0FF38])
  {
    v8 = &selRef_percentUnit;
  }

  else if (v6 == *MEMORY[0x277D0FF48])
  {
    v8 = &selRef__changeInDegreeCelsiusUnit;
  }

  else
  {
    if (v6 != *MEMORY[0x277D0FF30])
    {
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_22892F648();
      MEMORY[0x22AAC3770](0xD000000000000015, 0x8000000228934F90);
      sub_22892F718();
      result = sub_22892F738();
      __break(1u);
      return result;
    }

    v8 = &selRef_hourUnit;
  }

  v9 = [objc_opt_self() *v8];

  return v9;
}

void *sub_22890C12C(double a1)
{
  v2 = v1;
  v4 = sub_22892E508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D0FF50])
  {
    v12 = a1;
    v13 = xmmword_2289326D0;
    v9 = 0x4014000000000000;
LABEL_11:
    v11 = v9;
    sub_22890CFEC();
    return sub_22892EFE8();
  }

  if (v8 == *MEMORY[0x277D0FF40])
  {
    v12 = a1;
    v13 = xmmword_2289326C0;
    v9 = 0x4000000000000000;
    goto LABEL_11;
  }

  if (v8 == *MEMORY[0x277D0FF38])
  {
    v12 = a1;
    v13 = xmmword_2289326B0;
    v9 = 0x3F947AE147AE147BLL;
    goto LABEL_11;
  }

  if (v8 == *MEMORY[0x277D0FF48])
  {
    v12 = a1;
    v13 = xmmword_2289326A0;
    v9 = 0x3FE0000000000000;
    goto LABEL_11;
  }

  if (v8 == *MEMORY[0x277D0FF30])
  {
    v12 = a1;
    v13 = xmmword_228932690;
    v9 = 0x3FF0000000000000;
    goto LABEL_11;
  }

  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_22892F648();
  MEMORY[0x22AAC3770](0xD000000000000015, 0x8000000228934F90);
  sub_22892F718();
  result = sub_22892F738();
  __break(1u);
  return result;
}

BOOL _s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV06MetricG0V2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = a1[1];
  v5 = a1[2];
  v7 = a1[3];
  v8 = *(a2 + 1);
  v10 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  if (v3 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }

LABEL_8:
    if (v4)
    {
      v12 = 0x6E696772616DLL;
    }

    else
    {
      v12 = 7500137;
    }

    if (v4)
    {
      v13 = 0xE600000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    if (*(a2 + 2))
    {
      v14 = 0x6E696772616DLL;
    }

    else
    {
      v14 = 7500137;
    }

    if (*(a2 + 2))
    {
      v15 = 0xE600000000000000;
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    if (v12 == v14 && v13 == v15)
    {

      if (v6 != v10 || v5 != v9)
      {
        return 0;
      }
    }

    else
    {
      v17 = sub_22892F818();

      result = 0;
      if ((v17 & 1) == 0 || v6 != v10 || v5 != v9)
      {
        return result;
      }
    }

    return v7 == v11;
  }

  result = 0;
  if (v8 != 2 && ((v8 ^ v3) & 1) == 0)
  {
    goto LABEL_8;
  }

  return result;
}

BOOL _s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV12MetricCountsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(*(a1 + 16), *(a2 + 16))))) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 64);
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (*(a1 + 48) != 2)
  {
    v11[0] = *(a1 + 48);
    v11[1] = v3;
    if (v5 != 2)
    {
      LOWORD(v8) = v5 & 0xFF01;
      BYTE2(v8) = BYTE2(v5) & 1;
      v9 = v6;
      v10 = v7;
      if (_s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV06MetricG0V2eeoiySbAE_AEtFZ_0(v11, &v8))
      {
        return 1;
      }
    }

    return 0;
  }

  return *(a2 + 48) == 2;
}

uint64_t _s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v47 = v2;
  v48 = v3;
  v6 = *(a1 + 408);
  v7 = *(a1 + 416);
  v9 = *(a1 + 424);
  v8 = *(a1 + 432);
  v10 = *(a2 + 408);
  v11 = *(a2 + 416);
  v13 = *(a2 + 424);
  v12 = *(a2 + 432);
  v14 = *(a1 + 24);
  v15 = *(a1 + 56);
  v44 = *(a1 + 40);
  v45 = v15;
  v46 = *(a1 + 72);
  v42 = *(a1 + 8);
  v43 = v14;
  v16 = *(a2 + 24);
  v17 = *(a2 + 56);
  v39 = *(a2 + 40);
  v40 = v17;
  v41 = *(a2 + 72);
  v37 = *(a2 + 8);
  v38 = v16;
  if (!_s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV12MetricCountsV2eeoiySbAE_AEtFZ_0(&v42, &v37))
  {
    return 0;
  }

  v18 = *(a1 + 104);
  v19 = *(a1 + 136);
  v44 = *(a1 + 120);
  v45 = v19;
  v46 = *(a1 + 152);
  v42 = *(a1 + 88);
  v43 = v18;
  v20 = *(a2 + 104);
  v21 = *(a2 + 136);
  v39 = *(a2 + 120);
  v40 = v21;
  v41 = *(a2 + 152);
  v37 = *(a2 + 88);
  v38 = v20;
  if (!_s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV12MetricCountsV2eeoiySbAE_AEtFZ_0(&v42, &v37))
  {
    return 0;
  }

  v22 = *(a1 + 184);
  v23 = *(a1 + 216);
  v44 = *(a1 + 200);
  v45 = v23;
  v46 = *(a1 + 232);
  v42 = *(a1 + 168);
  v43 = v22;
  v24 = *(a2 + 184);
  v25 = *(a2 + 216);
  v39 = *(a2 + 200);
  v40 = v25;
  v41 = *(a2 + 232);
  v37 = *(a2 + 168);
  v38 = v24;
  if (!_s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV12MetricCountsV2eeoiySbAE_AEtFZ_0(&v42, &v37))
  {
    return 0;
  }

  v26 = *(a1 + 296);
  v44 = *(a1 + 280);
  v45 = v26;
  v46 = *(a1 + 312);
  v27 = *(a1 + 264);
  v42 = *(a1 + 248);
  v43 = v27;
  v28 = *(a2 + 296);
  v39 = *(a2 + 280);
  v40 = v28;
  v41 = *(a2 + 312);
  v29 = *(a2 + 264);
  v37 = *(a2 + 248);
  v38 = v29;
  if (!_s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV12MetricCountsV2eeoiySbAE_AEtFZ_0(&v42, &v37))
  {
    return 0;
  }

  v30 = *(a1 + 376);
  v44 = *(a1 + 360);
  v45 = v30;
  v46 = *(a1 + 392);
  v31 = *(a1 + 344);
  v42 = *(a1 + 328);
  v43 = v31;
  v32 = *(a2 + 376);
  v39 = *(a2 + 360);
  v40 = v32;
  v41 = *(a2 + 392);
  v33 = *(a2 + 344);
  v37 = *(a2 + 328);
  v38 = v33;
  v34 = _s19HealthBalanceDaemon43SleepingSampleDaySummaryCollectionAnalyticsV12MetricCountsV2eeoiySbAE_AEtFZ_0(&v42, &v37);
  result = 0;
  if (v34 && v6 == v10)
  {
    v36 = sub_22890A39C(v7, v11) & (v9 == v13);
    if (v8 == v12)
    {
      return v36;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22890C82C()
{
  result = qword_27D85BD50;
  if (!qword_27D85BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85BD50);
  }

  return result;
}

uint64_t sub_22890C888(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 440))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22890C8E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 440) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 440) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22890C9B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22890CA0C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleDaySummaryCollectionAnalytics.MetricSummary.BoundMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepingSampleDaySummaryCollectionAnalytics.MetricSummary.BoundMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_22890CBD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 80))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22890CC38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingSampleDaySummaryCollectionAnalytics.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepingSampleDaySummaryCollectionAnalytics.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22890CDF4()
{
  result = qword_27D85BD58;
  if (!qword_27D85BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85BD58);
  }

  return result;
}

unint64_t sub_22890CE48(uint64_t a1, uint64_t a2)
{
  v2 = sub_22892F7C8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

void sub_22890CE94(uint64_t a1)
{
  if (!qword_2813DED40)
  {
    sub_2288D3BBC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DED40);
    }
  }
}

void sub_22890CEFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22890CF60(uint64_t a1)
{
  sub_22890CEFC(0, &qword_2813DFE90, MEMORY[0x277D0FF28], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22890CFEC()
{
  result = qword_2813DEDB8;
  if (!qword_2813DEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DEDB8);
  }

  return result;
}

void sub_22890D06C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22892DF58();
  v86 = *(v2 - 8);
  v87 = v2;
  MEMORY[0x28223BE20](v2);
  v85 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22892EDE8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v88 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v83 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v83 - v11;
  sub_22892EDC8();
  v13 = v0;
  v14 = sub_22892EDD8();
  v15 = sub_22892F398();

  v16 = os_log_type_enabled(v14, v15);
  v90 = ObjectType;
  v91 = v5;
  if (v16)
  {
    v89 = v4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v92 = v18;
    *v17 = 136446466;
    v19 = sub_22892F948();
    v21 = sub_2288B748C(v19, v20, &v92);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = [v13 &selRef_activityTypes];
    v23 = [v22 debugIdentifier];

    if (v23)
    {
      v24 = sub_22892F0C8();
      v26 = v25;
    }

    else
    {
      v28 = [v13 queryUUID];
      v29 = v85;
      sub_22892DF38();

      v24 = sub_22892DF08();
      v26 = v30;
      (*(v86 + 8))(v29, v87);
    }

    v31 = sub_2288B748C(v24, v26, &v92);

    *(v17 + 14) = v31;
    _os_log_impl(&dword_2288B2000, v14, v15, "[%{public}s:%s] Training Load Query started", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v18, -1, -1);
    MEMORY[0x22AAC47E0](v17, -1, -1);

    v27 = *(v91 + 8);
    v4 = v89;
    v27(v12, v89);
    ObjectType = v90;
  }

  else
  {

    v27 = *(v5 + 8);
    v27(v12, v4);
  }

  v93.receiver = v13;
  v93.super_class = ObjectType;
  objc_msgSendSuper2(&v93, sel__queue_start);
  v32 = [v13 configuration];
  v33 = [v32 shouldDeactivateAfterInitialResults];

  if ((v33 & 1) == 0)
  {
    v34 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
    if (v34)
    {
      v35 = v34;
      sub_22892EDC8();
      v36 = v13;
      v37 = sub_22892EDD8();
      v38 = sub_22892F398();

      if (os_log_type_enabled(v37, v38))
      {
        v84 = v27;
        v89 = v4;
        v39 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v92 = v83;
        *v39 = 136446466;
        v40 = sub_22892F948();
        v42 = sub_2288B748C(v40, v41, &v92);

        *(v39 + 4) = v42;
        *(v39 + 12) = 2080;
        v43 = [v36 configuration];
        v44 = [v43 debugIdentifier];

        if (v44)
        {
          v45 = sub_22892F0C8();
          v47 = v46;
        }

        else
        {
          v50 = [v36 queryUUID];
          v51 = v85;
          sub_22892DF38();

          v45 = sub_22892DF08();
          v47 = v52;
          (*(v86 + 8))(v51, v87);
        }

        v53 = sub_2288B748C(v45, v47, &v92);

        *(v39 + 14) = v53;
        _os_log_impl(&dword_2288B2000, v37, v38, "[%{public}s:%s] Training Load Query, adding observer on workout effort", v39, 0x16u);
        v54 = v83;
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v54, -1, -1);
        MEMORY[0x22AAC47E0](v39, -1, -1);

        v48 = v10;
        v4 = v89;
        v49 = v89;
        v27 = v84;
      }

      else
      {

        v48 = v10;
        v49 = v4;
      }

      v27(v48, v49);
      v55 = [v36 profile];
      if (v55)
      {
        v56 = v55;
        v57 = [v55 associationManager];

        if (v57)
        {
          [v57 addObserver:v36 forDataType:v35];
        }
      }
    }
  }

  v58 = [v13 configuration];
  v59 = [v58 shouldDeactivateAfterInitialResults];

  if ((v59 & 1) == 0)
  {
    v60 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
    if (v60)
    {
      v61 = v60;
      v62 = v88;
      sub_22892EDC8();
      v63 = v13;
      v64 = sub_22892EDD8();
      v65 = sub_22892F398();

      if (os_log_type_enabled(v64, v65))
      {
        v84 = v27;
        v89 = v4;
        v66 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v92 = v83;
        *v66 = 136446466;
        v67 = sub_22892F948();
        v69 = sub_2288B748C(v67, v68, &v92);

        *(v66 + 4) = v69;
        *(v66 + 12) = 2080;
        v70 = [v63 configuration];
        v71 = [v70 debugIdentifier];

        if (v71)
        {
          v72 = sub_22892F0C8();
          v74 = v73;
        }

        else
        {
          v75 = [v63 queryUUID];
          v76 = v85;
          sub_22892DF38();

          v72 = sub_22892DF08();
          v74 = v77;
          (*(v86 + 8))(v76, v87);
        }

        v78 = sub_2288B748C(v72, v74, &v92);

        *(v66 + 14) = v78;
        _os_log_impl(&dword_2288B2000, v64, v65, "[%{public}s:%s] Training Load Query, adding observer on estimated workout effort", v66, 0x16u);
        v79 = v83;
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v79, -1, -1);
        MEMORY[0x22AAC47E0](v66, -1, -1);

        v84(v88, v89);
      }

      else
      {

        v27(v62, v4);
      }

      v80 = [v63 profile];
      if (v80)
      {
        v81 = v80;
        v82 = [v80 associationManager];

        if (v82)
        {
          [v82 addObserver:v63 forDataType:v61];
        }
      }
    }
  }

  sub_2288B5F94();
}

void sub_22890DA00()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22892DF58();
  v39 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22892EDE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41.receiver = v0;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, sel__queue_stop);
  sub_22892EDC8();
  v9 = v0;
  v10 = sub_22892EDD8();
  v11 = sub_22892F398();

  if (os_log_type_enabled(v10, v11))
  {
    v36 = v2;
    v38 = v5;
    v12 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v12 = 136446466;
    v13 = sub_22892F948();
    v15 = sub_2288B748C(v13, v14, &v40);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = [v9 configuration];
    v17 = [v16 debugIdentifier];

    if (v17)
    {
      v18 = sub_22892F0C8();
      v20 = v19;
    }

    else
    {
      v21 = [v9 queryUUID];
      sub_22892DF38();

      v18 = sub_22892DF08();
      v20 = v22;
      (*(v39 + 8))(v4, v36);
    }

    v23 = sub_2288B748C(v18, v20, &v40);

    *(v12 + 14) = v23;
    _os_log_impl(&dword_2288B2000, v10, v11, "[%{public}s:%s] Training Load Query, Queue Stop, removing observer for effort", v12, 0x16u);
    v24 = v37;
    swift_arrayDestroy();
    MEMORY[0x22AAC47E0](v24, -1, -1);
    MEMORY[0x22AAC47E0](v12, -1, -1);

    (*(v6 + 8))(v8, v38);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
  if (v25)
  {
    v26 = v25;
    v27 = [v9 profile];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 associationManager];

      if (v29)
      {
        [v29 removeObserver:v9 forDataType:v26];
      }
    }
  }

  v30 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
  if (v30)
  {
    v31 = v30;
    v32 = [v9 profile];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 associationManager];

      if (v34)
      {
        [v34 removeObserver:v9 forDataType:v31];
      }
    }
  }
}

uint64_t sub_22890DF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v172 = a6;
  ObjectType = swift_getObjectType();
  v159 = sub_22892DF58();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22892EDE8();
  v15 = *(v14 - 8);
  v170 = v14;
  v171 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v161 = (&v149 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v163 = &v149 - v22;
  MEMORY[0x28223BE20](v21);
  v150 = &v149 - v23;
  v156 = sub_22892EDF8();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v153 = &v149 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_22892EE18();
  v152 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v151 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B6D08(0, &qword_2813DFEB0, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v149 - v27;
  v168 = sub_22892DEF8();
  v164 = *(v168 - 8);
  v29 = MEMORY[0x28223BE20](v168);
  v162 = &v149 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v166 = &v149 - v32;
  MEMORY[0x28223BE20](v31);
  v167 = &v149 - v33;
  sub_228911988(0);
  v35 = v34;
  MEMORY[0x28223BE20](v34);
  v169 = &v149 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BC0FC(0, &unk_27D85BD70, 0x277CCD6F0);
  v37 = sub_22892F208();
  v175.receiver = v7;
  v175.super_class = ObjectType;
  v165 = ObjectType;
  v160 = a2;
  objc_msgSendSuper2(&v175, sel_associationsUpdatedForObject_subObject_type_behavior_objects_anchor_, a1, a2, a3, a4, v37, v172);

  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (v38)
  {
    v39 = v38;
    swift_unknownObjectRetain();
    v40 = [v7 configuration];
    sub_22892EBF8();
    if (swift_dynamicCastClass())
    {
      v172 = v40;
      sub_22890F20C(v169, v169 + *(v35 + 48));
      sub_22892EBC8();
      v41 = sub_22892E048();
      v42 = *(v41 - 8);
      result = (*(v42 + 48))(v28, 1, v41);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v44 = v167;
        sub_22892EF98();
        (*(v42 + 8))(v28, v41);
        v45 = [v39 endDate];
        v46 = v166;
        sub_22892DEC8();

        sub_22891285C(&qword_2813DFEE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v47 = v168;
        LOBYTE(v45) = sub_22892F038();
        v48 = v164;
        v161 = *(v164 + 8);
        v161(v46, v47);
        if (v45)
        {
          v49 = v160;
          if (!v160 || (sub_2288BC0FC(0, &unk_27D85BDA0, 0x277CCDBF0), [v49 isKindOfClass_]))
          {
            v50 = [v7 queryQueue];
            v51 = swift_allocObject();
            *(v51 + 16) = v7;
            aBlock[4] = sub_2289119EC;
            aBlock[5] = v51;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_2288F3CC4;
            aBlock[3] = &block_descriptor_8;
            v52 = _Block_copy(aBlock);
            v53 = v7;
            v54 = v151;
            sub_22892EE08();
            v173 = MEMORY[0x277D84F90];
            sub_22891285C(qword_2813DEE40, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            sub_228911A20(0);
            sub_22891285C(&qword_27D85B7B0, sub_228911A20, MEMORY[0x277D83970]);
            v55 = v153;
            v56 = v156;
            sub_22892F548();
            MEMORY[0x22AAC3A70](0, v54, v55, v52);
            _Block_release(v52);
            swift_unknownObjectRelease();

            (*(v155 + 8))(v55, v56);
            (*(v152 + 8))(v54, v154);
            v161(v167, v168);
            sub_2288B5BCC(v169, sub_228911988);
          }

          v107 = v150;
          sub_22892EDC8();
          v108 = v7;
          v109 = sub_22892EDD8();
          v110 = sub_22892F398();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            aBlock[0] = v112;
            *v111 = 136446466;
            v113 = sub_22892F948();
            v115 = sub_2288B748C(v113, v114, aBlock);

            *(v111 + 4) = v115;
            *(v111 + 12) = 2080;
            v116 = [v108 configuration];
            v117 = [v116 debugIdentifier];

            if (v117)
            {
              v118 = sub_22892F0C8();
              v120 = v119;
            }

            else
            {
              v145 = [v108 queryUUID];
              v146 = v157;
              sub_22892DF38();

              v118 = sub_22892DF08();
              v120 = v147;
              (*(v158 + 8))(v146, v159);
            }

            v148 = sub_2288B748C(v118, v120, aBlock);

            *(v111 + 14) = v148;
            _os_log_impl(&dword_2288B2000, v109, v110, "[%{public}s:%s] Associations Updated, sub-object is NOT workout activity", v111, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AAC47E0](v112, -1, -1);
            MEMORY[0x22AAC47E0](v111, -1, -1);
            swift_unknownObjectRelease();

            (*(v171 + 8))(v150, v170);
          }

          else
          {
            swift_unknownObjectRelease();

            (*(v171 + 8))(v107, v170);
          }

          v161(v167, v168);
        }

        else
        {
          v85 = v163;
          sub_22892EDC8();
          v86 = v162;
          (*(v48 + 16))(v162, v44, v47);
          swift_unknownObjectRetain();
          v87 = v44;
          v88 = a1;
          v89 = v7;
          v90 = sub_22892EDD8();
          v91 = v47;
          v92 = sub_22892F398();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v90, v92))
          {
            v164 = v88;
            v93 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            aBlock[0] = v160;
            *v93 = 136446978;
            v94 = sub_22892F948();
            v96 = sub_2288B748C(v94, v95, aBlock);

            *(v93 + 4) = v96;
            *(v93 + 12) = 2080;
            v97 = [v89 configuration];
            v98 = [v97 debugIdentifier];

            if (v98)
            {
              v99 = sub_22892F0C8();
              v101 = v100;
            }

            else
            {
              v126 = [v89 queryUUID];
              v127 = v157;
              sub_22892DF38();

              v99 = sub_22892DF08();
              v101 = v128;
              (*(v158 + 8))(v127, v159);
            }

            v129 = sub_2288B748C(v99, v101, aBlock);

            *(v93 + 14) = v129;
            *(v93 + 22) = 2080;
            v130 = [v39 endDate];
            v131 = v166;
            sub_22892DEC8();

            sub_22891285C(&qword_27D85B550, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v132 = v168;
            v133 = sub_22892F7E8();
            v135 = v134;
            v136 = v131;
            v137 = v161;
            v161(v136, v132);
            v138 = sub_2288B748C(v133, v135, aBlock);

            *(v93 + 24) = v138;
            *(v93 + 32) = 2080;
            v139 = v162;
            v140 = sub_22892F7E8();
            v142 = v141;
            v137(v139, v132);
            v143 = sub_2288B748C(v140, v142, aBlock);

            *(v93 + 34) = v143;
            _os_log_impl(&dword_2288B2000, v90, v92, "[%{public}s:%s] Associations Updated, workout's end date %s is older than lower bound of query range %s", v93, 0x2Au);
            v144 = v160;
            swift_arrayDestroy();
            MEMORY[0x22AAC47E0](v144, -1, -1);
            MEMORY[0x22AAC47E0](v93, -1, -1);
            swift_unknownObjectRelease();

            (*(v171 + 8))(v163, v170);
            v137(v167, v132);
          }

          else
          {
            swift_unknownObjectRelease();

            v102 = v161;
            v161(v86, v91);
            (*(v171 + 8))(v85, v170);
            v102(v87, v91);
          }
        }

        return sub_2288B5BCC(v169, sub_228911988);
      }
    }

    else
    {

      v71 = v161;
      sub_22892EDC8();
      v72 = v7;
      v73 = sub_22892EDD8();
      v74 = sub_22892F398();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        aBlock[0] = v76;
        *v75 = 136446466;
        v77 = sub_22892F948();
        v79 = sub_2288B748C(v77, v78, aBlock);

        *(v75 + 4) = v79;
        *(v75 + 12) = 2080;
        v80 = [v72 &selRef_activityTypes];
        v81 = [v80 debugIdentifier];

        if (v81)
        {
          v82 = sub_22892F0C8();
          v84 = v83;
        }

        else
        {
          v121 = [v72 queryUUID];
          v122 = v157;
          sub_22892DF38();

          v82 = sub_22892DF08();
          v84 = v123;
          v124 = v122;
          v71 = v161;
          (*(v158 + 8))(v124, v159);
        }

        v125 = sub_2288B748C(v82, v84, aBlock);

        *(v75 + 14) = v125;
        _os_log_impl(&dword_2288B2000, v73, v74, "[%{public}s:%s] Associations Updated, No Custom Configuration for Query", v75, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC47E0](v76, -1, -1);
        MEMORY[0x22AAC47E0](v75, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v171 + 8))(v71, v170);
    }
  }

  else
  {
    sub_22892EDC8();
    v57 = v7;
    v58 = sub_22892EDD8();
    v59 = sub_22892F398();

    v60 = v18;
    if (os_log_type_enabled(v58, v59))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v61 = 136446466;
      v63 = sub_22892F948();
      v65 = sub_2288B748C(v63, v64, aBlock);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2080;
      v66 = [v57 configuration];
      v67 = [v66 debugIdentifier];

      if (v67)
      {
        v68 = sub_22892F0C8();
        v70 = v69;
      }

      else
      {
        v103 = [v57 queryUUID];
        v104 = v157;
        sub_22892DF38();

        v68 = sub_22892DF08();
        v70 = v105;
        (*(v158 + 8))(v104, v159);
      }

      v106 = sub_2288B748C(v68, v70, aBlock);

      *(v61 + 14) = v106;
      _os_log_impl(&dword_2288B2000, v58, v59, "[%{public}s:%s] Associations Updated, object is NOT workout", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC47E0](v62, -1, -1);
      MEMORY[0x22AAC47E0](v61, -1, -1);
    }

    return (*(v171 + 8))(v60, v170);
  }

  return result;
}

uint64_t sub_22890F20C(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  sub_2288B4A64(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v30 = &v29 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = sub_22892EFA8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v35 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v32 = &v29 - v17;
  sub_22892EBD8();
  sub_2288B4B3C(0);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  result = v20(v12, 1, v18);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = &v12[*(v19 + 36)];
  v34 = *(v14 + 16);
  v34(a2, v22, v13);
  sub_2288B5BCC(v12, sub_2288B4B3C);
  sub_22892EBD8();
  result = v20(v10, 1, v19);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_22891285C(&unk_2813DEE00, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
  sub_22892F4E8();
  v23 = v36;
  sub_2288B5BCC(v10, sub_2288B4B3C);
  if (v23 > 28)
  {
    v24 = v31;
    sub_22892EBD8();
    result = v20(v24, 1, v19);
    if (result == 1)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v20 = v35;
    v34(v35, v24, v13);
    sub_2288B5BCC(v24, sub_2288B4B3C);
    sub_2288E2A3C();
    if (!__OFSUB__(0, (*(v25 + 32))()))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v26 = v30;
  sub_22892EBD8();
  result = v20(v26, 1, v19);
  if (result != 1)
  {
    v20 = v35;
    v34(v35, (v26 + *(v19 + 36)), v13);
    sub_2288B5BCC(v26, sub_2288B4B3C);
    sub_2288E2A3C();
    result = (*(v27 + 32))();
    if (!__OFADD__(result, 28))
    {
LABEL_10:
      v28 = v32;
      sub_22892EF78();
      (*(v14 + 8))(v20, v13);
      return (*(v14 + 32))(v33, v28, v13);
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_22890F740()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer____lazy_storage___loadBaselineUnit;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer____lazy_storage___loadBaselineUnit);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer____lazy_storage___loadBaselineUnit);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 appleEffortScoreUnit];
    v6 = [v4 secondUnit];
    v7 = [v5 unitMultipliedByUnit_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_22890F810(unint64_t a1, uint64_t a2)
{
  v59 = a2;
  v58 = sub_22892DE18();
  v4 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22892DDC8();
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22892DEF8();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22892DFB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22892E048();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v14, *MEMORY[0x277CC9830], v11);
  v60 = v17;
  sub_22892DFC8();
  (*(v12 + 8))(v14, v11);
  result = sub_22892F248();
  *(result + 16) = 56;
  *(result + 32) = 0u;
  v45 = result + 32;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = 0u;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  *(result + 304) = 0u;
  *(result + 320) = 0u;
  *(result + 336) = 0u;
  *(result + 352) = 0u;
  *(result + 368) = 0u;
  *(result + 384) = 0u;
  *(result + 400) = 0u;
  *(result + 416) = 0u;
  *(result + 432) = 0u;
  *(result + 448) = 0u;
  v46 = result;
  *(result + 464) = 0u;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
LABEL_23:
    v42 = sub_228912164(v46);

    (*(v43 + 8))(v60, v44);
    return v42;
  }

LABEL_3:
  if (v19 >= 1)
  {
    v20 = 0;
    v21 = v4;
    v22 = a1 & 0xC000000000000001;
    v53 = v6 + 1;
    v52 = *MEMORY[0x277CC9968];
    v50 = (v8 + 8);
    v51 = (v21 + 8);
    v23 = &off_278609000;
    v49 = xmmword_228931960;
    v47 = a1 & 0xC000000000000001;
    v48 = v19;
    while (1)
    {
      if (v22)
      {
        v24 = MEMORY[0x22AAC3CC0](v20, a1);
      }

      else
      {
        v24 = *(a1 + 8 * v20 + 32);
      }

      v6 = v24;
      v25 = [v24 v23[465]];
      v26 = sub_22890F740();
      [v25 doubleValueForUnit_];
      v28 = v27;

      if (v28 <= 0.0)
      {
      }

      else
      {
        v4 = a1;
        v8 = v2;
        v29 = [v6 dateInterval];
        v30 = v55;
        sub_22892DD68();

        sub_22892DD98();
        (*v53)(v30, v56);
        sub_2288B6D08(0, &qword_2813DEA08, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
        v31 = sub_22892E038();
        v32 = v10;
        v33 = *(v31 - 8);
        v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = v49;
        (*(v33 + 104))(v35 + v34, v52, v31);
        sub_228912338(v35);
        swift_setDeallocating();
        (*(v33 + 8))(v35 + v34, v31);
        v10 = v32;
        swift_deallocClassInstance();
        a1 = v57;
        sub_22892DFE8();

        v2 = a1;
        v36 = sub_22892DDF8();
        LOBYTE(v35) = v37;
        (*v51)(a1, v58);
        if ((v35 & 1) != 0 || v36 > 55)
        {
          (*v50)(v32, v54);

          v2 = v8;
          a1 = v4;
        }

        else
        {
          v38 = [v6 workoutsCount];

          (*v50)(v32, v54);
          if (v36 < 0)
          {
            __break(1u);
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            result = sub_22892F588();
            v19 = result;
            if (!result)
            {
              goto LABEL_23;
            }

            goto LABEL_3;
          }

          if (v36 >= *(v46 + 16))
          {
            goto LABEL_20;
          }

          v39 = *(v45 + 8 * v36);
          v40 = __OFADD__(v39, v38);
          v41 = &v38[v39];
          if (v40)
          {
            goto LABEL_21;
          }

          v2 = v8;
          a1 = v4;
          *(v45 + 8 * v36) = v41;
        }

        v22 = v47;
        v19 = v48;
        v23 = &off_278609000;
      }

      if (v19 == ++v20)
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22890FF10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v198 = a6;
  v175 = a5;
  v160 = a4;
  v159 = a3;
  v179 = a2;
  v196 = sub_22892DDC8();
  v157 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v195 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288B6D08(0, &qword_2813DFEB0, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v169 = &v157 - v14;
  v201 = sub_22892DEF8();
  v186 = *(v201 - 8);
  v15 = MEMORY[0x28223BE20](v201);
  v162 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v200 = &v157 - v18;
  MEMORY[0x28223BE20](v17);
  v167 = &v157 - v19;
  v20 = sub_22892EFA8();
  v193 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v172 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v173 = &v157 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v168 = (&v157 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v157 - v28);
  MEMORY[0x28223BE20](v27);
  v194 = (&v157 - v30);
  sub_2288BB4E0(0);
  v185 = v31;
  v32 = MEMORY[0x28223BE20](v31);
  v184 = &v157 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v188 = &v157 - v34;
  sub_2288B4B3C(0);
  v183 = v35;
  MEMORY[0x28223BE20](v35);
  v191 = (&v157 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2289126E0(0);
  v158 = v37;
  v38 = MEMORY[0x28223BE20](v37);
  v174 = &v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v197 = &v157 - v40;
  v41 = sub_2288E2A3C();
  v43 = v42;
  v44 = *(v42 + 8);
  v203[3] = v41;
  v203[4] = v42;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v203);
  v165 = v41;
  v166 = v43;
  v44(v198, a7 & 1, v41, v43);
  v161 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_82;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22892F588())
  {
    v190 = v29;
    v163 = v13;
    v199 = a1;
    if (i)
    {
      v46 = 0;
      v47 = a1 & 0xC000000000000001;
      v48 = a1 & 0xFFFFFFFFFFFFFF8;
      v49 = 0.0;
      while (1)
      {
        if (v47)
        {
          v50 = MEMORY[0x22AAC3CC0](v46, a1);
        }

        else
        {
          if (v46 >= *(v48 + 16))
          {
            goto LABEL_73;
          }

          v50 = *(a1 + 8 * v46 + 32);
        }

        v29 = v50;
        v13 = (v46 + 1);
        if (__OFADD__(v46, 1))
        {
          break;
        }

        v51 = [v50 quantity];
        v52 = sub_22890F740();
        [v51 doubleValueForUnit_];
        v54 = v53;

        v49 = v49 + v54;
        ++v46;
        a1 = v199;
        v55 = v193;
        if (v13 == i)
        {
          goto LABEL_13;
        }
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v49 = 0.0;
    v55 = v193;
LABEL_13:
    v56 = v55;
    v57 = sub_22891285C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    v58 = v159;
    v59 = v160;
    result = sub_22892F048();
    if ((result & 1) == 0)
    {
      break;
    }

    v192 = v57;
    v61 = v56 + 2;
    v62 = v56[2];
    v63 = v188;
    v62(v188, v58, v20);
    v64 = v185;
    v62(v63 + *(v185 + 48), v59, v20);
    v65 = v184;
    sub_2289127F4(v63, v184, sub_2288BB4E0);
    v66 = *(v64 + 48);
    v170 = v20;
    v67 = v56[4];
    v29 = v191;
    v67(v191, v65, v170);
    v68 = v56[1];
    v69 = v65 + v66;
    v13 = v67;
    v20 = v170;
    v68(v69, v170);
    sub_2288C34B4(v188, v65, sub_2288BB4E0);
    v70 = *(v64 + 48);
    v71 = v183;
    v72 = v29 + *(v183 + 36);
    v189 = (v56 + 4);
    (v13)(v72, v65 + v70, v20);
    v181 = v68;
    v193 = v56 + 1;
    v68(v65, v20);
    v73 = v197;
    sub_2289127F4(v29, v197, sub_2288B4B3C);
    v198 = *(v158 + 36);
    v62(v73 + v198, v29, v20);
    sub_2288B5BCC(v29, sub_2288B4B3C);
    v74 = *(v71 + 36);
    v182 = sub_22891285C(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
    v75 = 0;
    v176 = (v186 + 8);
    v180 = v61;
    v178 = v62;
    v177 = v13;
    v76 = v190;
    v187 = v74;
    while ((sub_22892F088() & 1) == 0)
    {
      v186 = v75;
      v77 = v198;
      v62(v194, v73 + v198, v20);
      a1 = v189;
      (v13)(v76, v73 + v77, v20);
      v29 = v62;
      v78 = v187;
      if ((sub_22892F048() & 1) == 0)
      {
        goto LABEL_74;
      }

      v79 = v188;
      (v29)(v188, v73, v20);
      v80 = v73;
      v81 = v185;
      (v29)(v79 + *(v185 + 48), v80 + v78, v20);
      v82 = v184;
      sub_2289127F4(v79, v184, sub_2288BB4E0);
      v83 = *(v81 + 48);
      (v13)(v191, v82, v20);
      v84 = v82 + v83;
      v85 = v181;
      v181(v84, v20);
      v29 = v191;
      sub_2288C34B4(v79, v82, sub_2288BB4E0);
      (v13)(v29 + *(v183 + 36), v82 + *(v81 + 48), v20);
      v86 = v82;
      v87 = v85;
      v85(v86, v20);
      if ((sub_22892F048() & 1) == 0)
      {
        goto LABEL_75;
      }

      v88 = sub_22892F028();
      sub_2288B5BCC(v29, sub_2288B4B3C);
      if ((v88 & 1) == 0)
      {
        goto LABEL_76;
      }

      v202 = 1;
      sub_22891285C(&unk_2813DEE00, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
      sub_22892F4D8();
      v87(v76, v20);
      v89 = v168;
      (v13)(v168, v194, v20);
      v90 = v169;
      sub_22892EBC8();
      v91 = sub_22892E048();
      v92 = v90;
      v93 = *(v91 - 8);
      result = (*(v93 + 48))(v92, 1, v91);
      if (result == 1)
      {
        goto LABEL_87;
      }

      v94 = v167;
      sub_22892EF98();
      (*(v93 + 8))(v92, v91);
      v95 = sub_22892DDA8();
      (*v176)(v94, v201);
      v87(v89, v20);
      v76 = v190;
      v62 = v178;
      v13 = v177;
      v73 = v197;
      v75 = v186;
      if (v95)
      {
        break;
      }

      v75 = v186 + 1;
      if (__OFADD__(v186, 1))
      {
        __break(1u);
        break;
      }
    }

    sub_2288B5BCC(v73, sub_2289126E0);
    v96 = sub_22892EF68();
    result = sub_22892EF68();
    v97 = v96 - result;
    if (__OFSUB__(v96, result))
    {
      goto LABEL_84;
    }

    v98 = __OFSUB__(v97, v75);
    v99 = v97 - v75;
    if (v98)
    {
      goto LABEL_85;
    }

    if (v99 < 1)
    {
      v100 = 0.0;
    }

    else
    {
      v100 = v49 / v99;
    }

    v101 = v171;
    v102 = sub_22890F740();
    v103 = objc_opt_self();
    v168 = [v103 quantityWithUnit:v102 doubleValue:v100];

    v167 = [v103 quantityWithUnit:*(v101 + OBJC_IVAR____TtC19HealthBalanceDaemon30TrainingLoadSummaryQueryServer____lazy_storage___loadBaselineUnit) doubleValue:0.0];
    v104 = v159;
    v105 = v160;
    result = sub_22892F048();
    if ((result & 1) == 0)
    {
      goto LABEL_86;
    }

    v106 = v188;
    v62(v188, v104, v20);
    v107 = v185;
    v62(v106 + *(v185 + 48), v105, v20);
    v108 = v184;
    sub_2289127F4(v106, v184, sub_2288BB4E0);
    v109 = *(v107 + 48);
    (v13)(v29, v108, v20);
    v110 = v108 + v109;
    v111 = v181;
    v181(v110, v170);
    sub_2288C34B4(v106, v108, sub_2288BB4E0);
    v112 = v183;
    (v13)(v29 + *(v183 + 36), v108 + *(v107 + 48), v170);
    v20 = v170;
    v111(v108, v170);
    v113 = v174;
    sub_2289127F4(v29, v174, sub_2288B4B3C);
    v114 = *(v158 + 36);
    v62(v113 + v114, v29, v20);
    sub_2288B5BCC(v29, sub_2288B4B3C);
    a1 = *(v112 + 36);
    v115 = v113;
    if (sub_22892F088())
    {
LABEL_31:
      sub_2288B5BCC(v115, sub_2289126E0);
      v116 = (*(v166 + 24))(v159, v160, v165);

      __swift_destroy_boxed_opaque_existential_0(v203);
      return v116;
    }

    v117 = 0;
    v118 = v199 & 0xFFFFFFFFFFFFFF8;
    v198 = v199 & 0xFFFFFFFFFFFFFF8;
    if (v199 < 0)
    {
      v118 = v199;
    }

    v169 = v118;
    v197 = v199 & 0xC000000000000001;
    v194 = (v157 + 8);
    v171 = (v166 + 16);
    v187 = v114;
    v186 = a1;
    while (1)
    {
      v120 = v178;
      v178(v173, v115 + v114, v20);
      v13 = v189;
      v29 = v177;
      (v177)(v190, v115 + v114, v20);
      if ((sub_22892F048() & 1) == 0)
      {
        break;
      }

      v121 = a1;
      v122 = v188;
      v120(v188, v115, v20);
      v123 = v185;
      v120(v122 + *(v185 + 48), v115 + v121, v20);
      v124 = v184;
      sub_2289127F4(v122, v184, sub_2288BB4E0);
      v125 = *(v123 + 48);
      v126 = v191;
      (v29)(v191, v124, v20);
      v127 = v124 + v125;
      v128 = v181;
      v129 = v193;
      v181(v127, v20);
      sub_2288C34B4(v122, v124, sub_2288BB4E0);
      (v29)(v126 + *(v183 + 36), v124 + *(v123 + 48), v20);
      v130 = v124;
      v131 = v126;
      v132 = v190;
      v13 = v129;
      a1 = v192;
      v128(v130, v20);
      if ((sub_22892F048() & 1) == 0)
      {
        goto LABEL_78;
      }

      v133 = sub_22892F028();
      sub_2288B5BCC(v131, sub_2288B4B3C);
      if ((v133 & 1) == 0)
      {
        goto LABEL_79;
      }

      v202 = 1;
      sub_22891285C(&unk_2813DEE00, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
      sub_22892F4D8();
      v128(v132, v20);
      (v29)(v172, v173, v20);
      v134 = v163;
      sub_22892EBC8();
      v135 = sub_22892E048();
      v136 = *(v135 - 8);
      result = (*(v136 + 48))(v134, 1, v135);
      if (result == 1)
      {
        goto LABEL_88;
      }

      sub_22892EF98();
      v137 = *(v136 + 8);
      v13 = (v136 + 8);
      v137(v134, v135);
      v138 = v162;
      a1 = v176;
      if (v161)
      {
        v139 = sub_22892F588();
      }

      else
      {
        v139 = *(v198 + 16);
      }

      v20 = v170;
      if (v117 >= v139)
      {
LABEL_62:
        v146 = 0;
      }

      else
      {
        v140 = v199;
        while (1)
        {
          v29 = (v140 + 8 * v117);
          if (v197)
          {
            v141 = MEMORY[0x22AAC3CC0](v117, v199);
          }

          else
          {
            if ((v117 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

            if (v117 >= *(v198 + 16))
            {
              goto LABEL_71;
            }

            v141 = v29[4];
          }

          v142 = v141;
          v143 = [v141 dateInterval];

          v144 = v195;
          sub_22892DD68();

          sub_22892DD78();
          v13 = *v194;
          (*v194)(v144, v196);
          LOBYTE(v144) = sub_22892DE78();
          (*a1)(v138, v201);
          if ((v144 & 1) == 0)
          {
            break;
          }

          ++v117;
          v140 = v199;
          if (v139 == v117)
          {
            v146 = 0;
            v117 = v139;
            goto LABEL_63;
          }
        }

        if (v197)
        {
          v145 = MEMORY[0x22AAC3CC0](v117, v199);
        }

        else
        {
          if ((v117 & 0x8000000000000000) != 0)
          {
            goto LABEL_80;
          }

          if (v117 >= *(v198 + 16))
          {
            goto LABEL_81;
          }

          v145 = v29[4];
        }

        v147 = v145;
        v148 = [v145 dateInterval];

        v149 = v195;
        sub_22892DD68();

        LOBYTE(v147) = sub_22892DDA8();
        (v13)(v149, v196);
        if ((v147 & 1) == 0)
        {
          goto LABEL_62;
        }

        if (v197)
        {
          v150 = MEMORY[0x22AAC3CC0](v117, v199);
        }

        else
        {
          v150 = v29[4];
        }

        v156 = v150;
        v146 = [v150 quantity];

        ++v117;
      }

LABEL_63:
      sub_22892DD98();
      v151 = sub_22892DE78();
      v152 = *a1;
      (*a1)(v138, v201);
      if (v146)
      {
        v119 = v172;
        (*(v166 + 16))(v146, v172, 0, v165);

        v115 = v174;
      }

      else
      {
        v115 = v174;
        if (v151)
        {
          v153 = v168;
          v119 = v172;
          v154 = v172;
          v155 = 1;
        }

        else
        {
          v153 = v167;
          v119 = v172;
          v154 = v172;
          v155 = 0;
        }

        (*v171)(v153, v154, v155, v165, v166);
      }

      v152(v200, v201);
      v128(v119, v20);
      v114 = v187;
      a1 = v186;
      if (sub_22892F088())
      {
        goto LABEL_31;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    ;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_2289115DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_22892EFA8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892E828();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22892EE68();
  sub_22892E808();
  (*(v7 + 8))(v9, v6);
  sub_22891285C(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  if (sub_22892F048())
  {
    sub_2288B4B3C(0);
    v10 = sub_22892F028();
  }

  else
  {
    v10 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return v10 & 1;
}

void sub_228911988(uint64_t a1)
{
  if (!qword_27D85BD80)
  {
    sub_22892EFA8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85BD80);
    }
  }
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_228911A54()
{
  result = qword_2813DFDE0;
  if (!qword_2813DFDE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DFDE0);
  }

  return result;
}

unint64_t sub_228911AB8()
{
  result = qword_2813DE8F0;
  if (!qword_2813DE8F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DE8F0);
  }

  return result;
}

uint64_t sub_228911B1C(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2288BC0FC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228911B80(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2288B5C84(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v53 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v48 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v48 - v11;
  v13 = sub_22892DEF8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v54 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v48 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v48 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v48 - v24;
  MEMORY[0x28223BE20](v23);
  v52 = v48 - v26;
  sub_22892EF98();
  v27 = [a1 _startDate];
  if (v27)
  {
    v28 = v27;
    sub_22892DEC8();

    v29 = *(v14 + 32);
    v29(v12, v22, v13);
    v51 = *(v14 + 56);
    v51(v12, 0, 1, v13);
    v29(v25, v12, v13);
    v30 = v54;
    v31 = v25;
    v32 = a1;
    v33 = v52;
  }

  else
  {
    v48[1] = a3;
    v50 = v25;
    v34 = *(v14 + 56);
    v34(v12, 1, 1, v13);
    v49 = a1;
    v35 = [a1 _endDate];
    v51 = v34;
    if (v35)
    {
      v36 = v34;
      v37 = v35;
      sub_22892DEC8();

      v38 = *(v14 + 32);
      v38(v10, v22, v13);
      v36(v10, 0, 1, v13);
      v38(v19, v10, v13);
      v33 = v52;
    }

    else
    {
      v34(v10, 1, 1, v13);
      sub_22892DEE8();
      v39 = (*(v14 + 48))(v10, 1, v13);
      v33 = v52;
      if (v39 != 1)
      {
        sub_2288B5BCC(v10, sub_2288B5C84);
      }
    }

    v31 = v50;
    sub_22892DFD8();
    (*(v14 + 8))(v19, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_2288B5BCC(v12, sub_2288B5C84);
    }

    v30 = v54;
    v32 = v49;
  }

  v40 = [v32 _endDate];
  if (v40)
  {
    v41 = v40;
    sub_22892DEC8();

    v42 = *(v14 + 32);
    v43 = v53;
    v42(v53, v22, v13);
    v51(v43, 0, 1, v13);
    v42(v30, v43, v13);
  }

  else
  {
    v44 = v53;
    v51(v53, 1, 1, v13);
    sub_22892DEE8();
    if ((*(v14 + 48))(v44, 1, v13) != 1)
    {
      sub_2288B5BCC(v44, sub_2288B5C84);
    }
  }

  sub_22891285C(&qword_2813DFEE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22892F048())
  {
    v45 = sub_22892F038();
  }

  else
  {
    v45 = 0;
  }

  v46 = *(v14 + 8);
  v46(v30, v13);
  v46(v31, v13);
  v46(v33, v13);
  return v45 & 1;
}

BOOL sub_228912164(_BOOL8 result)
{
  v1 = 0;
  v2 = *(result + 16);
  if (v2 <= 0x1B)
  {
    v2 = 27;
  }

  v3 = v2 - 27;
  v4 = (result + 128);
  v5 = -32;
  while (1)
  {
    if (v3 == v1)
    {
      goto LABEL_41;
    }

    v6 = *(v4 - 12);
    v7 = *(v4 - 11);
    v8 = __OFADD__(v6, v7);
    v9 = v6 + v7;
    if (v8 || (v10 = *(v4 - 10), v8 = __OFADD__(v9, v10), v11 = v9 + v10, v8) || (v12 = *(v4 - 9), v8 = __OFADD__(v11, v12), v13 = v11 + v12, v8) || (v14 = *(v4 - 8), v8 = __OFADD__(v13, v14), v15 = v13 + v14, v8) || (v16 = *(v4 - 7), v8 = __OFADD__(v15, v16), v17 = v15 + v16, v8) || (v18 = *(v4 - 6), v8 = __OFADD__(v17, v18), v19 = v17 + v18, v8) || (v20 = *(v4 - 5), v8 = __OFADD__(v19, v20), v21 = v19 + v20, v8) || (v22 = *(v4 - 4), v8 = __OFADD__(v21, v22), v23 = v21 + v22, v8) || (v24 = *(v4 - 3), v8 = __OFADD__(v23, v24), v25 = v23 + v24, v8) || (v26 = *(v4 - 2), v8 = __OFADD__(v25, v26), v27 = v25 + v26, v8) || (v28 = *(v4 - 1), v8 = __OFADD__(v27, v28), v29 = v27 + v28, v8) || (v8 = __OFADD__(v29, *v4), v30 = v29 + *v4, v8) || (v31 = v4[1], v8 = __OFADD__(v30, v31), v32 = v30 + v31, v8) || (v33 = v4[2], v8 = __OFADD__(v32, v33), v34 = v32 + v33, v8) || (v35 = v4[3], v8 = __OFADD__(v34, v35), v36 = v34 + v35, v8) || (v37 = v4[4], v8 = __OFADD__(v36, v37), v38 = v36 + v37, v8) || (v39 = v4[5], v8 = __OFADD__(v38, v39), v40 = v38 + v39, v8) || (v41 = v4[6], v8 = __OFADD__(v40, v41), v42 = v40 + v41, v8) || (v43 = v4[7], v8 = __OFADD__(v42, v43), v44 = v42 + v43, v8) || (v45 = v4[8], v8 = __OFADD__(v44, v45), v46 = v44 + v45, v8) || (v47 = v4[9], v8 = __OFADD__(v46, v47), v48 = v46 + v47, v8) || (v49 = v4[10], v8 = __OFADD__(v48, v49), v50 = v48 + v49, v8) || (v51 = v4[11], v8 = __OFADD__(v50, v51), v52 = v50 + v51, v8) || (v53 = v4[12], v8 = __OFADD__(v52, v53), v54 = v52 + v53, v8) || (v55 = v4[13], v8 = __OFADD__(v54, v55), v56 = v54 + v55, v8) || (v57 = v4[14], v8 = __OFADD__(v56, v57), v58 = v56 + v57, v8) || (v59 = v4[15], v8 = __OFADD__(v58, v59), v60 = v58 + v59, v8))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v60 >= 6)
    {
      break;
    }

    if (v5 != -248)
    {
      v5 -= 8;
      ++v4;
      if (v1++ | v60)
      {
        continue;
      }
    }

    return 0;
  }

  v62 = 0;
  v63 = -v5;
  while (1)
  {
    v64 = *(result + v63);
    v8 = __OFADD__(v62, v64);
    v62 += v64;
    if (v8)
    {
      break;
    }

    v63 += 8;
    if (v63 == 256)
    {
      return v62 > 0;
    }
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_228912338(uint64_t a1)
{
  v2 = sub_22892E038();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_22891264C(0);
    v9 = sub_22892F618();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_22891285C(&unk_2813DFEB8, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_22892EFF8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_22891285C(&qword_27D85BDB0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_22892F088();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_22891264C(uint64_t a1)
{
  if (!qword_2813DEAF0)
  {
    sub_22892E038();
    sub_22891285C(&unk_2813DFEB8, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
    v1 = sub_22892F628();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEAF0);
    }
  }
}

void sub_2289126E0(uint64_t a1)
{
  if (!qword_2813DEA70)
  {
    sub_2288B4B3C(255);
    sub_228912744();
    v1 = sub_22892F728();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DEA70);
    }
  }
}

unint64_t sub_228912744()
{
  result = qword_2813DECA8;
  if (!qword_2813DECA8)
  {
    sub_2288B4B3C(255);
    sub_22891285C(&unk_2813DEE00, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
    sub_2288D9DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813DECA8);
  }

  return result;
}

uint64_t sub_2289127F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22891285C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2289128B0(uint64_t *a1)
{
  v2 = *(type metadata accessor for BloodOxygenMetadataStatistics(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2289170EC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_228915C30(v6);
  *a1 = v3;
  return result;
}

BOOL sub_228912958()
{
  v1 = v0;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for BloodOxygenComparisonSummary(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228913674();
  v6 = swift_allocObject();
  v7 = v6;
  v6[2] = sub_2289159D8;
  v6[3] = v1;
  aBlock[4] = sub_2289159E0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289147D4;
  aBlock[3] = &block_descriptor_9;
  v8 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v9 = [v5 enumerateWithError:aBlock handler:v8];
  _Block_release(v8);
  v10 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v9)
  {
    sub_228914830(v4);
    v7 = sub_228914AC0();

    sub_228915B3C(v4, type metadata accessor for BloodOxygenComparisonSummary);
  }

  else
  {
    sub_22892DE38();

    swift_willThrow();
  }

  return v7;
}

uint64_t sub_228912BAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v77 = a3;
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v73 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = &v54 - v10;
  v11 = sub_22892E048();
  v78 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v74 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288BB4E0(0);
  v66 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v58 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v54 - v16;
  v17 = sub_22892EFA8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  sub_2289171F8(0, &qword_2813DECB8, MEMORY[0x277D83D00]);
  v62 = v24;
  MEMORY[0x28223BE20](v24);
  v72 = &v54 - v25;
  *(v4 + 16) = a1;
  v26 = *(v18 + 16);
  v70 = v18 + 16;
  v71 = v26;
  v26(v4 + OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_targetDay, a2, v17);
  v27 = OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_targetEndDate;
  v28 = sub_22892DEF8();
  v63 = *(v28 - 8);
  v64 = v28;
  (*(v63 + 16))(v4 + v27, v77);
  v29 = *(v78 + 16);
  v67 = v4;
  v68 = v11;
  v60 = v78 + 16;
  v59 = v29;
  v29((v4 + OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_gregorianCalendar), v76, v11);
  v61 = a1;
  sub_22892EED8();
  sub_22892EF18();
  v79 = v18;
  v30 = *(v18 + 8);
  v30(v21, v17);
  sub_2288BAA64(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  v31 = a2;
  result = sub_22892F048();
  if (result)
  {
    v55 = v30;
    v34 = v79 + 32;
    v33 = *(v79 + 32);
    v35 = v65;
    v69 = v23;
    v33(v65, v23, v17);
    v36 = v33;
    v37 = v66;
    v38 = v35 + *(v66 + 48);
    v56 = v31;
    v39 = v58;
    v71(v38, v31, v17);
    sub_228917294(v35, v39, sub_2288BB4E0);
    v40 = *(v37 + 48);
    v41 = v72;
    v57 = v36;
    v79 = v34;
    v36(v72, v39, v17);
    v42 = v39 + v40;
    v43 = v55;
    v55(v42, v17);
    sub_2289172FC(v35, v39, sub_2288BB4E0);
    v36(v41 + *(v62 + 36), (v39 + *(v37 + 48)), v17);
    v43(v39, v17);
    v44 = v43;
    v45 = v56;
    v71(v69, v56, v17);
    v46 = v76;
    v47 = v68;
    v59(v74, v76, v68);
    v48 = type metadata accessor for BloodOxygenMetadataStatistics(0);
    v49 = *(*(v48 - 8) + 56);
    v49(v75, 1, 1, v48);
    v49(v73, 1, 1, v48);

    v50 = v78;
    (*(v78 + 8))(v46, v47);
    (*(v63 + 8))(v77, v64);
    v44(v45, v17);
    type metadata accessor for BloodOxygenMetadataStatisticsBuilder(0);
    v51 = swift_allocObject();
    v49(v51 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetStatistics, 1, 1, v48);
    v49(v51 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_openStatistics, 1, 1, v48);
    *(v51 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_lastSample) = 0;
    sub_228917364(v72, v51 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_baselineRange);
    v57(v51 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetDay, v69, v17);
    (*(v50 + 32))(v51 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_gregorianCalendar, v74, v47);
    *(v51 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_completedBaselineStatistics) = MEMORY[0x277D84F90];
    v52 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetStatistics;
    swift_beginAccess();
    sub_228917164(v75, v51 + v52);
    swift_endAccess();
    v53 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_openStatistics;
    swift_beginAccess();
    sub_228917164(v73, v51 + v53);
    swift_endAccess();
    result = v67;
    *(v67 + OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_builder) = v51;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22891336C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  sub_2288BB4E0(0);
  v4 = v3;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  sub_2289171F8(0, &qword_2813DED90, MEMORY[0x277D83638]);
  v11 = v10;
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_baselineRange;
  v15 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetDay;
  v16 = sub_22892EFA8();
  sub_2288BAA64(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  result = sub_22892F048();
  if (result)
  {
    v18 = *(v16 - 8);
    v19 = v18;
    v29 = v11;
    v20 = *(v18 + 16);
    v21 = v14;
    v22 = v15;
    v23 = v13;
    v28 = v13;
    v30 = v2;
    v20(v9, v2 + v21, v16);
    v20(&v9[*(v4 + 48)], v2 + v22, v16);
    sub_228917294(v9, v7, sub_2288BB4E0);
    v24 = *(v4 + 48);
    v25 = *(v19 + 32);
    v25(v23, v7, v16);
    v26 = *(v19 + 8);
    v26(&v7[v24], v16);
    sub_2289172FC(v9, v7, sub_2288BB4E0);
    v27 = v28;
    v25(&v28[*(v29 + 36)], &v7[*(v4 + 48)], v16);
    v26(v7, v16);
    sub_22892F058();
    return sub_2288BA8EC(v27, &qword_2813DED90, MEMORY[0x277D83638]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_228913674()
{
  v1 = v0;
  v31 = sub_22892DDC8();
  v2 = *(v31 - 8);
  v3 = MEMORY[0x28223BE20](v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  sub_2288BC0FC(0, &qword_27D85BDF8, 0x277D10810);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = sub_2288BC0FC(0, &qword_2813DEC40, 0x277CCD830);
  v9 = *MEMORY[0x277CCCBE8];
  v10 = MEMORY[0x22AAC3A10]();
  v11 = *(v1 + 16);
  v30 = [ObjCClassFromMetadata entityEnumeratorWithType:v10 profile:v11];

  sub_2288DB154();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228931950;
  *(inited + 32) = HDDataEntityPredicateForObjectsFromAppleWatchSources();
  v13 = [v11 metadataManager];
  v14 = [v13 predicateWithMetadataKey:*MEMORY[0x277CCC478] exists:1];

  *(inited + 40) = v14;
  sub_22891336C(v5);
  sub_22892DD38();
  v15 = *(v2 + 8);
  v16 = v5;
  v17 = v31;
  v15(v16, v31);
  v18 = sub_22892DD58();
  v15(v7, v17);
  v19 = MEMORY[0x22AAC3A10](v9);
  v20 = HDSampleEntityPredicateForDateInterval();

  *(inited + 48) = v20;
  v21 = v30;
  sub_228901F80(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = sub_22892F208();

  v23 = [objc_opt_self() predicateMatchingAllPredicates_];

  [v21 setPredicate_];
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_228930AF0;
  v25 = *MEMORY[0x277D104A8];
  sub_2288BC0FC(0, &qword_27D85BE00, 0x277D10848);
  v26 = swift_getObjCClassFromMetadata();
  *(v24 + 32) = [objc_opt_self() orderingTermWithProperty:v25 entityClass:v26 ascending:1];
  sub_2288BC0FC(0, &qword_27D85BE08, 0x277D10B68);
  v27 = sub_22892F208();

  [v21 setOrderingTerms_];

  return v21;
}

BOOL sub_228913A6C(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = a1;
    sub_228913BBC(v5);
  }

  else
  {
    v7 = objc_opt_self();
    sub_22892F648();

    v8 = [a1 description];
    v9 = sub_22892F0C8();
    v11 = v10;

    MEMORY[0x22AAC3770](v9, v11);

    v6 = sub_22892F098();

    [v7 hk:a3 assignError:0 code:v6 description:?];
  }

  return v5 != 0;
}

char *sub_228913BBC(void *a1)
{
  v2 = v1;
  v112 = a1;
  v3 = sub_22892DDC8();
  v102 = *(v3 - 8);
  v103 = v3;
  MEMORY[0x28223BE20](v3);
  v99 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_22892EFA8();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22892E048();
  v109 = *(v6 - 8);
  v110 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v104 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v105 = &v91 - v11;
  v107 = type metadata accessor for BloodOxygenMetadataStatistics(0);
  v12 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22892DEF8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v111 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v91 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v91 - v21;
  v23 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_lastSample;
  v24 = *(v1 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_lastSample);
  if (v24)
  {
    v25 = v24;
    v26 = v23;
    v27 = v1;
    v28 = [v25 endDate];
    sub_22892DEC8();

    v29 = [v112 endDate];
    sub_22892DEC8();

    sub_2288BAA64(&qword_2813DFEE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    LOBYTE(v29) = sub_22892F048();

    v30 = *(v15 + 8);
    v30(v20, v14);
    result = (v30)(v22, v14);
    v2 = v27;
    v23 = v26;
    if ((v29 & 1) == 0)
    {
      __break(1u);
      goto LABEL_24;
    }
  }

  v32 = v14;
  v33 = [v112 metadata];
  if (v33)
  {
    v97 = v12;
    v34 = v33;
    v35 = sub_22892EFC8();

    v36 = sub_22892F0C8();
    if (*(v35 + 16))
    {
      v38 = sub_22891C740(v36, v37);
      v40 = v39;

      if (v40)
      {
        sub_2288B7664(*(v35 + 56) + 32 * v38, v114);

        sub_2288BC0FC(0, &unk_2813DEC98, 0x277CCD7E8);
        if (swift_dynamicCast())
        {
          v41 = v113;
          v42 = objc_opt_self();
          v43 = v41;
          v44 = [v42 pascalUnitWithMetricPrefix_];
          [v43 doubleValueForUnit_];
          v46 = v45;

          v47 = [v112 endDate];
          v48 = v111;
          sub_22892DEC8();

          v49 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_openStatistics;
          swift_beginAccess();
          v50 = v105;
          sub_228915A1C(v2 + v49, v105);
          v51 = v107;
          v52 = (*(v97 + 48))(v50, 1, v107);
          v96 = v49;
          if (v52 == 1)
          {
            sub_228915AB0(v50);
            v92 = v15;
            v53 = *(v15 + 16);
            v94 = v22;
            v95 = v32;
            v53(v22, v48, v32);
            (*(v109 + 16))(v108, v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_gregorianCalendar, v110);
            v54 = v51;
            v55 = sub_22892DE58();
            v56 = sub_22892DFF8();
            [v55 hk:v56 morningIndexWithCalendar:?];

            v57 = v98;
            sub_22892EED8();
            v58 = v43;
            v59 = v99;
            sub_22892EEC8();
            v60 = v100;
            v61 = v104;
            v62 = v101;
            (*(v100 + 16))(v104, v57, v101);
            sub_22892DD48();

            (*(v102 + 8))(v59, v103);
            (*(v60 + 8))(v57, v62);
            (*(v109 + 8))(v108, v110);
            v63 = *(v92 + 8);
            v64 = v95;
            v63(v94, v95);
            v63(v111, v64);
            *(v61 + *(v54 + 24)) = v46;
            *(v61 + *(v54 + 28)) = 1;
            (*(v97 + 56))(v61, 0, 1, v54);
LABEL_9:
            v65 = v96;
            swift_beginAccess();
            v66 = v2 + v65;
            v67 = v61;
LABEL_22:
            sub_228917164(v67, v66);
            swift_endAccess();
            goto LABEL_12;
          }

          v93 = v43;
          sub_2289172FC(v50, v106, type metadata accessor for BloodOxygenMetadataStatistics);
          sub_2288BAA64(&qword_2813DFEE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v70 = v32;
          v71 = v15;
          if ((sub_22892F048() & 1) == 0 || (sub_228915874(0), (sub_22892F028() & 1) == 0))
          {
            sub_228915070();
            (*(v15 + 16))(v22, v48, v70);
            v79 = *(v109 + 16);
            v94 = v22;
            v95 = v70;
            v79(v108, v2 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_gregorianCalendar, v110);
            v80 = sub_22892DE58();
            v81 = sub_22892DFF8();
            [v80 hk:v81 morningIndexWithCalendar:?];

            v82 = v98;
            sub_22892EED8();
            v83 = v99;
            sub_22892EEC8();
            v84 = v100;
            v85 = v104;
            v86 = v101;
            (*(v100 + 16))(v104, v82, v101);
            v87 = v107;
            sub_22892DD48();

            (*(v102 + 8))(v83, v103);
            (*(v84 + 8))(v82, v86);
            (*(v109 + 8))(v108, v110);
            v88 = *(v71 + 8);
            v89 = v95;
            v88(v94, v95);
            sub_228915B3C(v106, type metadata accessor for BloodOxygenMetadataStatistics);
            v88(v111, v89);
            *(v85 + *(v87 + 24)) = v46;
            *(v85 + *(v87 + 28)) = 1;
            (*(v97 + 56))(v85, 0, 1, v87);
            v90 = v96;
            swift_beginAccess();
            v66 = v2 + v90;
            v67 = v85;
            goto LABEL_22;
          }

          (*(v15 + 8))(v48, v70);

          result = v106;
          v72 = v107;
          v73 = *(v107 + 24);
          v74 = *&v106[v73];
          if (v46 < v74)
          {
            v74 = v46;
          }

          *&v106[v73] = v74;
          v75 = *(v72 + 28);
          v76 = *&result[v75];
          v77 = __OFADD__(v76, 1);
          v78 = v76 + 1;
          if (!v77)
          {
            *&result[v75] = v78;
            v61 = v104;
            sub_2289172FC(result, v104, type metadata accessor for BloodOxygenMetadataStatistics);
            (*(v97 + 56))(v61, 0, 1, v72);
            goto LABEL_9;
          }

LABEL_24:
          __break(1u);
          return result;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

LABEL_12:
  v68 = *(v2 + v23);
  *(v2 + v23) = v112;

  v69 = v112;

  return v69;
}

uint64_t sub_2289147D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_228914830@<X0>(uint64_t a1@<X8>)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - v4;
  sub_228915070();
  v6 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_completedBaselineStatistics;
  swift_beginAccess();
  v7 = *(*(v1 + v6) + 16);
  if (v7)
  {
    v19[0] = *(v1 + v6);
    swift_bridgeObjectRetain_n();
    sub_2289128B0(v19);

    v8 = v19[0];
    v9 = v7 >> 1;
    if (v9 >= *(v19[0] + 16))
    {
      __break(1u);

      __break(1u);
    }

    else
    {
      v10 = type metadata accessor for BloodOxygenMetadataStatistics(0);
      v11 = *(v10 - 8);
      sub_228917294(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, v5, type metadata accessor for BloodOxygenMetadataStatistics);

      (*(v11 + 56))(v5, 0, 1, v10);
      v12 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetStatistics;
      swift_beginAccess();
      v13 = type metadata accessor for BloodOxygenComparisonSummary(0);
      sub_228915A1C(v1 + v12, a1 + *(v13 + 20));
      return sub_228915B9C(v5, a1);
    }
  }

  else
  {
    v15 = type metadata accessor for BloodOxygenMetadataStatistics(0);
    (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    v16 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetStatistics;
    swift_beginAccess();
    v17 = type metadata accessor for BloodOxygenComparisonSummary(0);
    return sub_228915A1C(v1 + v16, a1 + *(v17 + 20));
  }

  return result;
}

BOOL sub_228914AC0()
{
  v1 = v0;
  v2 = type metadata accessor for BloodOxygenMetadataStatistics(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  sub_228915A1C(v1, &v27 - v16);
  v18 = *(v3 + 48);
  if (v18(v17, 1, v2) == 1)
  {
    v19 = v17;
LABEL_7:
    sub_228915AB0(v19);
    return 0;
  }

  v20 = *&v17[*(v2 + 24)];
  sub_228915B3C(v17, type metadata accessor for BloodOxygenMetadataStatistics);
  v21 = __exp10(v20 * 0.0154 + -0.445);
  sub_228915A1C(v1, v15);
  if (v18(v15, 1, v2) == 1)
  {
    v19 = v15;
    goto LABEL_7;
  }

  sub_2289172FC(v15, v8, type metadata accessor for BloodOxygenMetadataStatistics);
  v22 = type metadata accessor for BloodOxygenComparisonSummary(0);
  sub_228915A1C(v1 + *(v22 + 20), v12);
  if (v18(v12, 1, v2) == 1)
  {
    sub_228915B3C(v8, type metadata accessor for BloodOxygenMetadataStatistics);
    v19 = v12;
    goto LABEL_7;
  }

  sub_2289172FC(v12, v6, type metadata accessor for BloodOxygenMetadataStatistics);
  v24 = *&v8[*(v2 + 24)];
  sub_228915B3C(v8, type metadata accessor for BloodOxygenMetadataStatistics);
  v25 = v24 - v21;
  v26 = *&v6[*(v2 + 24)];
  sub_228915B3C(v6, type metadata accessor for BloodOxygenMetadataStatistics);
  return v26 <= v25;
}

uint64_t sub_228914DF4()
{
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_targetDay;
  v2 = sub_22892EFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_targetEndDate;
  v4 = sub_22892DEF8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC19HealthBalanceDaemon40OxygenSaturationElevationContextProvider_gregorianCalendar;
  v6 = sub_22892E048();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_228914F50(uint64_t a1)
{
  result = sub_22892EFA8();
  if (v2 <= 0x3F)
  {
    result = sub_22892DEF8();
    if (v3 <= 0x3F)
    {
      result = sub_22892E048();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_228915070()
{
  v1 = v0;
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = type metadata accessor for BloodOxygenMetadataStatistics(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v15 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_openStatistics;
  swift_beginAccess();
  sub_228915A1C(v1 + v15, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_228915AB0(v7);
  }

  sub_2289172FC(v7, v14, type metadata accessor for BloodOxygenMetadataStatistics);
  sub_22892EFA8();
  sub_2288BAA64(&qword_2813DEE20, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  if (sub_22892F048())
  {
    sub_2289171F8(0, &qword_2813DECB8, MEMORY[0x277D83D00]);
    if (sub_22892F028())
    {
      sub_228917294(v14, v12, type metadata accessor for BloodOxygenMetadataStatistics);
      v17 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_completedBaselineStatistics;
      swift_beginAccess();
      v18 = *(v1 + v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v17) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_2288D6004(0, v18[2] + 1, 1, v18);
        *(v1 + v17) = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v26 = v21 + 1;
        v24 = sub_2288D6004((v20 > 1), v21 + 1, 1, v18);
        v22 = v26;
        v18 = v24;
      }

      v18[2] = v22;
      sub_2289172FC(v12, v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, type metadata accessor for BloodOxygenMetadataStatistics);
      *(v1 + v17) = v18;
      swift_endAccess();
      goto LABEL_12;
    }
  }

  sub_2288BAA64(&unk_2813DEE10, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  if ((sub_22892F088() & 1) == 0)
  {
LABEL_12:
    sub_228915B3C(v14, type metadata accessor for BloodOxygenMetadataStatistics);
    goto LABEL_13;
  }

  sub_2289172FC(v14, v5, type metadata accessor for BloodOxygenMetadataStatistics);
  (*(v9 + 56))(v5, 0, 1, v8);
  v23 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetStatistics;
  swift_beginAccess();
  sub_228917164(v5, v1 + v23);
  swift_endAccess();
LABEL_13:
  (*(v9 + 56))(v5, 1, 1, v8);
  swift_beginAccess();
  sub_228917164(v5, v1 + v15);
  return swift_endAccess();
}

uint64_t sub_22891552C()
{
  sub_2288BA8EC(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_baselineRange, &qword_2813DECB8, MEMORY[0x277D83D00]);
  v1 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetDay;
  v2 = sub_22892EFA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_gregorianCalendar;
  v4 = sub_22892E048();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_228915AB0(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_targetStatistics);
  sub_228915AB0(v0 + OBJC_IVAR____TtC19HealthBalanceDaemon36BloodOxygenMetadataStatisticsBuilder_openStatistics);

  return swift_deallocClassInstance();
}

void sub_22891569C(uint64_t a1)
{
  sub_2289171F8(319, &qword_2813DECB8, MEMORY[0x277D83D00]);
  if (v1 <= 0x3F)
  {
    sub_22892EFA8();
    if (v2 <= 0x3F)
    {
      sub_22892E048();
      if (v3 <= 0x3F)
      {
        sub_228917100(319, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_228915874(uint64_t a1)
{
  if (!qword_27D85BDE0)
  {
    sub_22892DEF8();
    sub_2288BAA64(&qword_2813DFEE8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v1 = sub_22892F348();
    if (!v2)
    {
      atomic_store(v1, &qword_27D85BDE0);
    }
  }
}

void sub_22891591C(uint64_t a1)
{
  sub_22892EFA8();
  if (v1 <= 0x3F)
  {
    sub_228915874(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_228915A1C(uint64_t a1, uint64_t a2)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228915AB0(uint64_t a1)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228915B3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_228915B9C(uint64_t a1, uint64_t a2)
{
  sub_228917100(0, &qword_27D85BDD8, type metadata accessor for BloodOxygenMetadataStatistics, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228915C30(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22892F7D8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for BloodOxygenMetadataStatistics(0);
        v6 = sub_22892F248();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for BloodOxygenMetadataStatistics(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_228915FB4(v8, v9, a1, v4);
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
    return sub_228915D5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_228915D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BloodOxygenMetadataStatistics(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_228917294(v24, v18, type metadata accessor for BloodOxygenMetadataStatistics);
      sub_228917294(v21, v14, type metadata accessor for BloodOxygenMetadataStatistics);
      v25 = *(v8 + 24);
      v26 = *&v18[v25];
      v27 = *&v14[v25];
      sub_228915B3C(v14, type metadata accessor for BloodOxygenMetadataStatistics);
      result = sub_228915B3C(v18, type metadata accessor for BloodOxygenMetadataStatistics);
      if (v26 >= v27)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_2289172FC(v24, v11, type metadata accessor for BloodOxygenMetadataStatistics);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2289172FC(v11, v21, type metadata accessor for BloodOxygenMetadataStatistics);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_228915FB4(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = type metadata accessor for BloodOxygenMetadataStatistics(0);
  v118 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v113 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v121 = &v107 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v122 = &v107 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v107 - v17;
  v120 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_228916EB0(a4);
    }

    v124 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v120)
      {
        v103 = *(result + 16 * a4);
        v104 = result;
        v105 = *(result + 16 * (a4 - 1) + 40);
        sub_228916918(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *(result + 16 * (a4 - 1) + 32), *v120 + *(v118 + 72) * v105, v5);
        if (v6)
        {
        }

        if (v105 < v103)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_228916EB0(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v124 = v104;
        sub_228916E24(a4 - 1);
        result = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v109 = a4;
  v123 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v114 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v118 + 72);
      v5 = *v120 + v24 * v23;
      v117 = *v120;
      v25 = v117;
      sub_228917294(v117 + v24 * v23, v18, type metadata accessor for BloodOxygenMetadataStatistics);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v122;
      sub_228917294(v26, v122, type metadata accessor for BloodOxygenMetadataStatistics);
      v29 = *(v9 + 24);
      v30 = *&v18[v29];
      v31 = *(v28 + v29);
      sub_228915B3C(v28, type metadata accessor for BloodOxygenMetadataStatistics);
      result = sub_228915B3C(v18, type metadata accessor for BloodOxygenMetadataStatistics);
      v108 = v27;
      v32 = v27 + 2;
      v119 = v24;
      v33 = v117 + v24 * (v27 + 2);
      while (v19 != v32)
      {
        sub_228917294(v33, v18, type metadata accessor for BloodOxygenMetadataStatistics);
        v34 = v122;
        sub_228917294(v5, v122, type metadata accessor for BloodOxygenMetadataStatistics);
        v35 = *(v123 + 24);
        v36 = *&v18[v35];
        v37 = *(v34 + v35);
        sub_228915B3C(v34, type metadata accessor for BloodOxygenMetadataStatistics);
        result = sub_228915B3C(v18, type metadata accessor for BloodOxygenMetadataStatistics);
        ++v32;
        v33 += v119;
        v5 += v119;
        if (v30 < v31 == v36 >= v37)
        {
          v19 = v32 - 1;
          break;
        }
      }

      v22 = v108;
      a4 = v109;
      v9 = v123;
      if (v30 < v31)
      {
        if (v19 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v19)
        {
          v107 = v6;
          v38 = v119 * (v19 - 1);
          v39 = v19 * v119;
          v40 = v19;
          v41 = v19;
          v42 = v108;
          v43 = v108 * v119;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v120;
              if (!*v120)
              {
                goto LABEL_132;
              }

              v5 = v44 + v43;
              sub_2289172FC(v44 + v43, v113, type metadata accessor for BloodOxygenMetadataStatistics);
              if (v43 < v38 || v5 >= v44 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2289172FC(v113, v44 + v38, type metadata accessor for BloodOxygenMetadataStatistics);
            }

            ++v42;
            v38 -= v119;
            v39 -= v119;
            v43 += v119;
          }

          while (v42 < v41);
          v6 = v107;
          v22 = v108;
          a4 = v109;
          v9 = v123;
          v19 = v40;
        }
      }
    }

    v45 = v120[1];
    if (v19 < v45)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v45)
        {
          v46 = v120[1];
        }

        else
        {
          v46 = v22 + a4;
        }

        if (v46 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v46)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v114;
    }

    else
    {
      result = sub_2288D605C(0, *(v114 + 2) + 1, 1, v114);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v47 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      result = sub_2288D605C((v47 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v48 = &v21[16 * a4];
    *(v48 + 4) = v22;
    *(v48 + 5) = v20;
    v49 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v50 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v51 = *(v21 + 4);
          v52 = *(v21 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_52:
          if (v54)
          {
            goto LABEL_113;
          }

          v67 = &v21[16 * v5];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_116;
          }

          v73 = &v21[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_120;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v77 = &v21[16 * v5];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_66:
        if (v72)
        {
          goto LABEL_115;
        }

        v80 = &v21[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_118;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v50 - 1;
        if (v50 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v120)
        {
          goto LABEL_131;
        }

        v88 = v21;
        v89 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v50 + 40];
        sub_228916918(*v120 + *(v118 + 72) * v89, *v120 + *(v118 + 72) * *&v21[16 * v50 + 32], *v120 + *(v118 + 72) * v5, v49);
        if (v6)
        {
        }

        if (v5 < v89)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v88;
        }

        else
        {
          v90 = sub_228916EB0(v88);
        }

        v9 = v123;
        if (a4 >= *(v90 + 2))
        {
          goto LABEL_110;
        }

        v91 = &v90[16 * a4];
        *(v91 + 4) = v89;
        *(v91 + 5) = v5;
        v124 = v90;
        result = sub_228916E24(v50);
        v21 = v124;
        v5 = *(v124 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v21[16 * v5 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_111;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_112;
      }

      v62 = &v21[16 * v5];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_114;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_117;
      }

      if (v66 >= v58)
      {
        v84 = &v21[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v53 < v87)
        {
          v50 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v120[1];
    a4 = v109;
    if (v20 >= v19)
    {
      goto LABEL_96;
    }
  }

  v107 = v6;
  v108 = v22;
  a4 = *v120;
  v92 = *(v118 + 72);
  v93 = *v120 + v92 * (v19 - 1);
  v94 = -v92;
  v95 = v22 - v19;
  v111 = v92;
  v112 = v46;
  v5 = a4 + v19 * v92;
LABEL_86:
  v119 = v19;
  v115 = v5;
  v116 = v95;
  v117 = v93;
  v96 = v123;
  while (1)
  {
    sub_228917294(v5, v18, type metadata accessor for BloodOxygenMetadataStatistics);
    v97 = v122;
    sub_228917294(v93, v122, type metadata accessor for BloodOxygenMetadataStatistics);
    v98 = *(v96 + 24);
    v99 = *&v18[v98];
    v100 = *(v97 + v98);
    sub_228915B3C(v97, type metadata accessor for BloodOxygenMetadataStatistics);
    result = sub_228915B3C(v18, type metadata accessor for BloodOxygenMetadataStatistics);
    if (v99 >= v100)
    {
LABEL_85:
      v19 = v119 + 1;
      v20 = v112;
      v93 = v117 + v111;
      v95 = v116 - 1;
      v5 = v115 + v111;
      if (v119 + 1 != v112)
      {
        goto LABEL_86;
      }

      v6 = v107;
      v22 = v108;
      v9 = v123;
      if (v112 < v108)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v101 = v121;
    sub_2289172FC(v5, v121, type metadata accessor for BloodOxygenMetadataStatistics);
    v96 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_2289172FC(v101, v93, type metadata accessor for BloodOxygenMetadataStatistics);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_228916918(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = type metadata accessor for BloodOxygenMetadataStatistics(0);
  v8 = MEMORY[0x28223BE20](v47);
  v46 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v42 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42[1] = v4;
    v25 = a4 + v18;
    if (v18 < 1)
    {
      v28 = a4 + v18;
    }

    else
    {
      v26 = -v14;
      v27 = a4 + v18;
      v28 = v25;
      v44 = v26;
      v45 = a4;
      do
      {
        v42[0] = v28;
        v29 = a2;
        v30 = a2 + v26;
        while (1)
        {
          v32 = v48;
          if (v29 <= a1)
          {
            v51 = v29;
            v49 = v42[0];
            goto LABEL_59;
          }

          v43 = v28;
          v48 += v26;
          v33 = v27 + v26;
          sub_228917294(v33, v12, type metadata accessor for BloodOxygenMetadataStatistics);
          v34 = v30;
          v35 = v30;
          v36 = v12;
          v37 = v46;
          sub_228917294(v35, v46, type metadata accessor for BloodOxygenMetadataStatistics);
          v38 = *(v47 + 24);
          v39 = *(v36 + v38);
          v40 = *(v37 + v38);
          v41 = v37;
          v12 = v36;
          sub_228915B3C(v41, type metadata accessor for BloodOxygenMetadataStatistics);
          sub_228915B3C(v36, type metadata accessor for BloodOxygenMetadataStatistics);
          if (v39 < v40)
          {
            break;
          }

          v28 = v33;
          if (v32 < v27 || v48 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v31 = v33 > v45;
          v26 = v44;
          if (!v31)
          {
            a2 = v29;
            goto LABEL_58;
          }
        }

        if (v32 < v29 || v48 >= v29)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v43;
          v26 = v44;
        }

        else
        {
          v28 = v43;
          v26 = v44;
          a2 = v34;
          if (v32 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v45);
    }

LABEL_58:
    v51 = a2;
    v49 = v28;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      do
      {
        sub_228917294(a2, v12, type metadata accessor for BloodOxygenMetadataStatistics);
        v21 = v46;
        sub_228917294(a4, v46, type metadata accessor for BloodOxygenMetadataStatistics);
        v22 = *(v47 + 24);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_228915B3C(v21, type metadata accessor for BloodOxygenMetadataStatistics);
        sub_228915B3C(v12, type metadata accessor for BloodOxygenMetadataStatistics);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v19 && a2 < v48);
    }
  }

LABEL_59:
  sub_228916EDC(&v51, &v50, &v49, type metadata accessor for BloodOxygenMetadataStatistics);
  return 1;
}