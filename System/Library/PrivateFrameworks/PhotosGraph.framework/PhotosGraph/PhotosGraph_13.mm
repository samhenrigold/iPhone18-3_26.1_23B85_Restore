uint64_t sub_22F1E8F80(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 56);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_22F742170();

    sub_22F740D60();
    v23 = sub_22F7421D0();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v29 = *(v5 + 32);
  v55 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v55;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28);
    v2 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v57 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_22F1B8E24(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 56);
            v61 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_22F742170();

            sub_22F740D60();
            v41 = sub_22F7421D0();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_22F742040() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v34 = v59[v2];
          v59[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v62, v49);
  v51 = v54;
  sub_22F1EC0A8(v50, v55, v5, v2, v63);
  v53 = v52;

  if (!v51)
  {

    MEMORY[0x2319033A0](v50, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_22F0FF590(v13);
    return v5;
  }

  result = MEMORY[0x2319033A0](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22F1E94F0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v58[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v58[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v49 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v54 = v4;
  v55 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v52 = v5 + 1;
    sub_22F742170();

    sub_22F740D60();
    v11 = sub_22F7421D0();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v52;
    if (v52 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_22F742040() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v55;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v58[1] = v52;

  v21 = *(v2 + 32);
  v50 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v50;
  v23 = v55;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v51 = &v48;
    MEMORY[0x28223BE20](v20);
    v13 = &v48 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v57 = v7;
    memcpy(v13, v7, v24);
    v56 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v53 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v54;
    v7 = *(v54 + 16);
    v29 = v52;
    while (1)
    {
      v52 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_22F1B8E24(v53, v50, v52, v56);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v56;
        sub_22F742170();

        sub_22F740D60();
        v33 = sub_22F7421D0();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v57[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v55;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_22F742040() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v57[v35 >> 6]) == 0)
          {
            v28 = v54;
            goto LABEL_37;
          }

          v40 = (*(v56 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v54;
      v30 = v53[v13];
      v53[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v52 - 1;
      v23 = v55;
      if (__OFSUB__(v52, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v52 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v49;
  sub_22F1EC2E0(v44, v50, v2, v13, v58);
  v47 = v46;

  if (!v45)
  {

    MEMORY[0x2319033A0](v44, -1, -1);

    return v47;
  }

  result = MEMORY[0x2319033A0](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22F1E999C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_22F742170();

    sub_22F740D60();
    v23 = sub_22F7421D0();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v29 = *(v5 + 32);
  v55 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v55;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28);
    v2 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v57 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_22F1B8E24(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v61 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_22F742170();

            sub_22F740D60();
            v41 = sub_22F7421D0();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_22F742040() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v34 = v59[v2];
          v59[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v62, v49);
  v51 = v54;
  sub_22F1EC4C4(v50, v55, v5, v2, v63);
  v53 = v52;

  if (!v51)
  {

    MEMORY[0x2319033A0](v50, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_22F0FF590(v13);
    return v5;
  }

  result = MEMORY[0x2319033A0](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t sub_22F1E9F0C(uint64_t a1, unint64_t a2)
{
  v169 = *MEMORY[0x277D85DE8];
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  MEMORY[0x28223BE20](v152);
  v143 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v123 - v6;
  v8 = sub_22F73F690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v145 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v11 - 8);
  v153 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v128 = &v123 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = (&v123 - v16);
  MEMORY[0x28223BE20](v18);
  v124 = &v123 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2460, &qword_22F78B130);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v125 = &v123 - v24;
  v160 = type metadata accessor for SongSource(0);
  MEMORY[0x28223BE20](v160);
  v150 = (&v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v157 = (&v123 - v27);
  MEMORY[0x28223BE20](v28);
  v151 = (&v123 - v29);
  MEMORY[0x28223BE20](v30);
  v33 = (&v123 - v32);
  v161 = a2;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v129 = v22;
  v123 = 0;
  v34 = *(a1 + 56);
  v140 = a1 + 56;
  v35 = -1 << *(a1 + 32);
  v136 = ~v35;
  if (-v35 < 64)
  {
    v36 = ~(-1 << -v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v34;
  v130 = (63 - v35) >> 6;
  v135 = (v31 + 56);
  v126 = v31;
  v134 = (v31 + 48);
  v155 = (v9 + 48);
  v144 = (v9 + 32);
  v148 = (v9 + 8);
  v159 = (v161 + 56);

  v39 = 0;
  v154 = v8;
  v137 = v17;
  v138 = v33;
  for (i = a1; ; a1 = i)
  {
    v40 = v37;
    v41 = v39;
    v42 = v125;
    if (v37)
    {
LABEL_15:
      v46 = (v40 - 1) & v40;
      sub_22F1A39E0(*(a1 + 48) + *(v126 + 72) * (__clz(__rbit64(v40)) | (v41 << 6)), v125, type metadata accessor for SongSource);
      v47 = 0;
      v48 = v41;
    }

    else
    {
      v43 = v130 <= (v39 + 1) ? v39 + 1 : v130;
      v44 = v43 - 1;
      v45 = v39;
      while (1)
      {
        v41 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_117;
        }

        if (v41 >= v130)
        {
          break;
        }

        v40 = *(v140 + 8 * v41);
        ++v45;
        if (v40)
        {
          goto LABEL_15;
        }
      }

      v46 = 0;
      v47 = 1;
      v48 = v44;
    }

    v49 = v160;
    v132 = *v135;
    v132(v42, v47, 1, v160);
    v164 = a1;
    v165 = v140;
    v166 = v136;
    v167 = v48;
    v141 = v48;
    v142 = v46;
    v168 = v46;
    v131 = *v134;
    if (v131(v42, 1, v49) == 1)
    {
      sub_22F120ADC(v42, &qword_27DAB2460, &qword_22F78B130);
      v115 = a1;
      goto LABEL_113;
    }

    v50 = v42;
    v51 = v138;
    sub_22F1BA7A4(v50, v138, type metadata accessor for SongSource);
    sub_22F742170();
    v52 = *v51;
    v163 = v51[1];
    sub_22F740D60();
    if (*(v51 + v49[11] + 8))
    {
      sub_22F742190();
      v49 = v160;
      sub_22F740D60();
    }

    else
    {
      sub_22F742190();
    }

    v17 = v151;
    v149 = v49[7];
    v53 = v124;
    sub_22F13BA9C(v51 + v149, v124, &qword_27DAB0920, &qword_22F770B20);
    a2 = *v155;
    if ((*v155)(v53, 1, v8) == 1)
    {
      sub_22F742190();
    }

    else
    {
      v54 = v145;
      (*v144)(v145, v53, v8);
      sub_22F742190();
      sub_22F1662C8(&qword_2810AC710, MEMORY[0x277CC9588]);
      sub_22F740D50();
      (*v148)(v54, v8);
    }

    v55 = (v51 + v49[8]);
    v56 = v55[1];
    v127 = *v55;
    sub_22F742190();
    if (v56)
    {
      sub_22F740D60();
    }

    v139 = v56;
    if (*(v51 + v49[12] + 8))
    {
      sub_22F742190();
      sub_22F740D60();
    }

    else
    {
      sub_22F742190();
    }

    v57 = sub_22F7421D0();
    v58 = -1 << *(v161 + 32);
    v39 = v57 & ~v58;
    v59 = v39 >> 6;
    v41 = 1 << v39;
    if (((1 << v39) & v159[v39 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_22F1A3AB0(v51, type metadata accessor for SongSource);
    v39 = v141;
    v37 = v142;
  }

  v162 = ~v58;
  v158 = *(v126 + 72);
  v147 = a2;
  v146 = v52;
  while (1)
  {
    v156 = v59;
    sub_22F1A39E0(*(v161 + 48) + v158 * v39, v17, type metadata accessor for SongSource);
    v60 = *v17 == v52 && v17[1] == v163;
    if (!v60 && (sub_22F742040() & 1) == 0)
    {
      goto LABEL_32;
    }

    v61 = *(v152 + 48);
    sub_22F13BA9C(v17 + *(v160 + 28), v7, &qword_27DAB0920, &qword_22F770B20);
    sub_22F13BA9C(v51 + v149, &v7[v61], &qword_27DAB0920, &qword_22F770B20);
    if ((a2)(v7, 1, v8) == 1)
    {
      v62 = (a2)(&v7[v61], 1, v8);
      v17 = v151;
      if (v62 != 1)
      {
        goto LABEL_31;
      }

      sub_22F120ADC(v7, &qword_27DAB0920, &qword_22F770B20);
      v52 = v146;
    }

    else
    {
      v63 = v7;
      v64 = v7;
      v65 = v137;
      sub_22F13BA9C(v63, v137, &qword_27DAB0920, &qword_22F770B20);
      if ((a2)(v64 + v61, 1, v8) == 1)
      {
        (*v148)(v65, v8);
        v7 = v64;
        v51 = v138;
        v17 = v151;
LABEL_31:
        sub_22F120ADC(v7, &unk_27DAB05B0, &unk_22F771430);
        v52 = v146;
LABEL_32:
        sub_22F1A3AB0(v17, type metadata accessor for SongSource);
        goto LABEL_33;
      }

      v66 = v145;
      (*v144)(v145, v64 + v61, v8);
      sub_22F1662C8(&qword_2810AC700, MEMORY[0x277CC9598]);
      v67 = sub_22F740DE0();
      v68 = *v148;
      (*v148)(v66, v154);
      v68(v65, v154);
      a2 = v147;
      v8 = v154;
      sub_22F120ADC(v64, &qword_27DAB0920, &qword_22F770B20);
      v7 = v64;
      v51 = v138;
      v17 = v151;
      v52 = v146;
      if ((v67 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v69 = (v17 + *(v160 + 32));
    v70 = v69[1];
    if (!v70)
    {
      if (!v139)
      {
        break;
      }

      goto LABEL_32;
    }

    if (!v139)
    {
      goto LABEL_32;
    }

    if (*v69 == v127 && v70 == v139)
    {
      break;
    }

    v71 = sub_22F742040();
    sub_22F1A3AB0(v17, type metadata accessor for SongSource);
    if (v71)
    {
      goto LABEL_55;
    }

LABEL_33:
    v39 = (v39 + 1) & v162;
    v59 = v39 >> 6;
    v41 = 1 << v39;
    if ((v159[v39 >> 6] & (1 << v39)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_22F1A3AB0(v17, type metadata accessor for SongSource);
LABEL_55:
  v72 = sub_22F1A3AB0(v51, type metadata accessor for SongSource);
  v73 = *(v161 + 32);
  v127 = ((1 << v73) + 63) >> 6;
  v38 = 8 * v127;
  a2 = v142;
  v17 = v150;
  if ((v73 & 0x3Fu) > 0xD)
  {
    goto LABEL_118;
  }

  while (2)
  {
    v137 = &v123;
    MEMORY[0x28223BE20](v72);
    v75 = &v123 - ((v74 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v75, v159, v74);
    v76 = *&v75[8 * v156] & ~v41;
    v139 = v75;
    *&v75[8 * v156] = v76;
    v77 = *(v161 + 16) - 1;
    v39 = i;
    v78 = v129;
    v79 = v140;
    v80 = v130;
    v81 = v141;
LABEL_57:
    v138 = v77;
    while (2)
    {
      if (a2)
      {
        v82 = v81;
        v41 = v160;
LABEL_69:
        v85 = __clz(__rbit64(a2));
        v86 = (a2 - 1) & a2;
        sub_22F1A39E0(*(v39 + 48) + (v85 | (v82 << 6)) * v158, v78, type metadata accessor for SongSource);
        v87 = 0;
LABEL_70:
        v132(v78, v87, 1, v41);
        v164 = v39;
        v165 = v140;
        v166 = v136;
        v167 = v81;
        v168 = v86;
        if (v131(v78, 1, v41) == 1)
        {
          sub_22F120ADC(v78, &qword_27DAB2460, &qword_22F78B130);
          v161 = sub_22F1B9328(v139, v127, v138, v161);
          goto LABEL_112;
        }

        v142 = v86;
        v141 = v81;
        v88 = v157;
        sub_22F1BA7A4(v78, v157, type metadata accessor for SongSource);
        sub_22F742170();
        v89 = *v88;
        v162 = v88[1];
        v163 = v89;
        sub_22F740D60();
        if (*(v88 + *(v41 + 44) + 8))
        {
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v90 = v143;
        v91 = v147;
        v151 = *(v41 + 28);
        v92 = v128;
        sub_22F13BA9C(v151 + v157, v128, &qword_27DAB0920, &qword_22F770B20);
        if (v91(v92, 1, v8) == 1)
        {
          sub_22F742190();
        }

        else
        {
          v93 = v145;
          (*v144)(v145, v92, v8);
          sub_22F742190();
          sub_22F1662C8(&qword_2810AC710, MEMORY[0x277CC9588]);
          sub_22F740D50();
          v94 = v93;
          v41 = v160;
          (*v148)(v94, v8);
        }

        v95 = (v157 + *(v41 + 32));
        v96 = v95[1];
        v146 = *v95;
        sub_22F742190();
        if (v96)
        {
          sub_22F740D60();
        }

        v97 = *(v157 + *(v41 + 48) + 8);
        v149 = v96;
        sub_22F742190();
        if (v97)
        {
          sub_22F740D60();
        }

        v98 = sub_22F7421D0();
        v99 = -1 << *(v161 + 32);
        v100 = v98 & ~v99;
        v101 = v100 >> 6;
        v102 = 1 << v100;
        if (((1 << v100) & v159[v100 >> 6]) == 0)
        {
LABEL_58:
          sub_22F1A3AB0(v157, type metadata accessor for SongSource);
          v39 = i;
          v8 = v154;
          v78 = v129;
          v79 = v140;
          v80 = v130;
          v81 = v141;
          a2 = v142;
          continue;
        }

        v156 = ~v99;
LABEL_87:
        sub_22F1A39E0(*(v161 + 48) + v100 * v158, v17, type metadata accessor for SongSource);
        v103 = *v17 == v163 && v17[1] == v162;
        if (!v103 && (sub_22F742040() & 1) == 0)
        {
          goto LABEL_85;
        }

        v104 = *(v152 + 48);
        sub_22F13BA9C(v17 + *(v160 + 28), v90, &qword_27DAB0920, &qword_22F770B20);
        sub_22F13BA9C(v151 + v157, v90 + v104, &qword_27DAB0920, &qword_22F770B20);
        v105 = v154;
        if (v91(v90, 1, v154) == 1)
        {
          v106 = v91(v90 + v104, 1, v105);
          v17 = v150;
          if (v106 == 1)
          {
            sub_22F120ADC(v90, &qword_27DAB0920, &qword_22F770B20);
            goto LABEL_97;
          }

LABEL_84:
          sub_22F120ADC(v90, &unk_27DAB05B0, &unk_22F771430);
          goto LABEL_85;
        }

        sub_22F13BA9C(v90, v153, &qword_27DAB0920, &qword_22F770B20);
        if (v91(v90 + v104, 1, v105) == 1)
        {
          (*v148)(v153, v105);
          v17 = v150;
          goto LABEL_84;
        }

        v107 = v90 + v104;
        v108 = v145;
        (*v144)(v145, v107, v105);
        sub_22F1662C8(&qword_2810AC700, MEMORY[0x277CC9598]);
        v109 = sub_22F740DE0();
        v110 = *v148;
        (*v148)(v108, v105);
        v110(v153, v105);
        v91 = v147;
        v90 = v143;
        sub_22F120ADC(v143, &qword_27DAB0920, &qword_22F770B20);
        v17 = v150;
        if (v109)
        {
LABEL_97:
          v111 = (v17 + *(v160 + 32));
          v112 = v111[1];
          if (!v112)
          {
            if (!v149)
            {
              goto LABEL_104;
            }

            goto LABEL_85;
          }

          if (!v149)
          {
            goto LABEL_85;
          }

          if (*v111 == v146 && v112 == v149)
          {
LABEL_104:
            sub_22F1A3AB0(v17, type metadata accessor for SongSource);
LABEL_105:
            sub_22F1A3AB0(v157, type metadata accessor for SongSource);
            v114 = v139[v101];
            v139[v101] = v114 & ~v102;
            v60 = (v114 & v102) == 0;
            v39 = i;
            v8 = v154;
            v78 = v129;
            v79 = v140;
            v80 = v130;
            v81 = v141;
            a2 = v142;
            if (!v60)
            {
              v77 = v138 - 1;
              if (__OFSUB__(v138, 1))
              {
                __break(1u);
              }

              if (v138 == 1)
              {

                v161 = MEMORY[0x277D84FA0];
                goto LABEL_112;
              }

              goto LABEL_57;
            }

            continue;
          }

          v113 = sub_22F742040();
          sub_22F1A3AB0(v17, type metadata accessor for SongSource);
          if (v113)
          {
            goto LABEL_105;
          }
        }

        else
        {
LABEL_85:
          sub_22F1A3AB0(v17, type metadata accessor for SongSource);
        }

        v100 = (v100 + 1) & v156;
        v101 = v100 >> 6;
        v102 = 1 << v100;
        if ((v159[v100 >> 6] & (1 << v100)) == 0)
        {
          goto LABEL_58;
        }

        goto LABEL_87;
      }

      break;
    }

    if (v80 <= (v81 + 1))
    {
      v83 = v81 + 1;
    }

    else
    {
      v83 = v80;
    }

    v84 = v83 - 1;
    v41 = v160;
    while (1)
    {
      v82 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if (v82 >= v80)
      {
        v86 = 0;
        v87 = 1;
        v81 = v84;
        goto LABEL_70;
      }

      a2 = *(v79 + 8 * v82);
      ++v81;
      if (a2)
      {
        v81 = v82;
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    v117 = v38;

    v118 = v117;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v8 = v154;
      continue;
    }

    break;
  }

  v119 = swift_slowAlloc();
  memcpy(v119, v159, v118);
  v120 = v123;
  sub_22F1EC6FC(v119, v127, v161, v39, &v164);
  v122 = v121;

  if (v120)
  {

    result = MEMORY[0x2319033A0](v119, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x2319033A0](v119, -1, -1);
    v161 = v122;
LABEL_112:
    v115 = v164;
LABEL_113:
    sub_22F0FF590(v115);
    return v161;
  }

  return result;
}

uint64_t sub_22F1EB59C(uint64_t a1, uint64_t a2)
{
  v63[2] = *MEMORY[0x277D85DE8];
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v49 - v8;
  MEMORY[0x28223BE20](v10);
  i = v49 - v11;
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v63[0] = a1;
  v12 = *(a1 + 16);

  v51 = v12;
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = 0;
  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = *(v14 + 64);
  v53 = a1;
  v54 = a1 + ((v16 + 32) & ~v16);
  v60 = *(v14 + 56);
  v61 = v15;
  v58 = (a2 + 56);
  v59 = a2;
  v62 = v14;
  v17 = (v14 - 8);
  v50 = ((v14 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v55 = v13 + 1;
    v63[1] = v13 + 1;
    v61(i, v54 + v60 * v13, v4);
    v52 = sub_22F1662C8(&qword_2810AC710, MEMORY[0x277CC9588]);
    v18 = sub_22F740D40();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) != 0)
    {
      break;
    }

    v25 = *v17;
LABEL_10:
    v25(i, v4);
    v13 = v55;
    if (v55 == v51)
    {
      goto LABEL_30;
    }
  }

  v23 = ~v19;
  while (1)
  {
    v61(v9, *(v59 + 48) + v20 * v60, v4);
    sub_22F1662C8(&qword_2810AC700, MEMORY[0x277CC9598]);
    v24 = sub_22F740DE0();
    v25 = *v17;
    (*v17)(v9, v4);
    if (v24)
    {
      break;
    }

    v20 = (v20 + 1) & v23;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v58[v20 >> 6]) == 0)
    {
      a2 = v59;
      goto LABEL_10;
    }
  }

  v26 = (v25)(i, v4);
  v27 = v59;
  v28 = *(v59 + 32);
  v49[0] = ((1 << v28) + 63) >> 6;
  v29 = 8 * v49[0];
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v49[1] = v49;
    MEMORY[0x28223BE20](v26);
    v31 = v49 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v58, v30);
    v32 = *(v27 + 16);
    *&v31[8 * v21] &= ~v22;
    v50 = v31;
    v51 = (v32 - 1);
    v33 = *(v53 + 16);
    v34 = v55;
    for (i = v33; ; v33 = i)
    {
      if (v34 == v33)
      {
        a2 = sub_22F1B9A78(v50, v49[0], v51, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v53 + 16))
      {
        break;
      }

      v55 = v34;
      v61(v57, v54 + v34 * v60, v4);
      v36 = sub_22F740D40();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v58[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v61(v9, *(v59 + 48) + v20 * v60, v4);
      v38 = sub_22F740DE0();
      v25(v9, v4);
      if ((v38 & 1) == 0)
      {
        v39 = ~v37;
        while (1)
        {
          v20 = (v20 + 1) & v39;
          v22 = v20 >> 6;
          v21 = 1 << v20;
          if (((1 << v20) & v58[v20 >> 6]) == 0)
          {
            break;
          }

          v61(v9, *(v59 + 48) + v20 * v60, v4);
          v40 = sub_22F740DE0();
          v25(v9, v4);
          if (v40)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v25(v57, v4);
        v27 = v59;
LABEL_16:
        v35 = v55;
        goto LABEL_17;
      }

LABEL_25:
      v25(v57, v4);
      v41 = v50[v22];
      v50[v22] = v41 & ~v21;
      v27 = v59;
      if ((v41 & v21) == 0)
      {
        goto LABEL_16;
      }

      v42 = v51 - 1;
      v35 = v55;
      if (__OFSUB__(v51, 1))
      {
        goto LABEL_33;
      }

      --v51;
      if (!v42)
      {

        a2 = MEMORY[0x277D84FA0];
        goto LABEL_30;
      }

LABEL_17:
      v34 = v35 + 1;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v44 = v29;

    v45 = v44;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v46 = v59;

      v27 = v46;
      continue;
    }

    break;
  }

  v47 = swift_slowAlloc();
  memcpy(v47, v58, v45);
  sub_22F1ED1E4(v47, v49[0], v59, v20, v63);
  a2 = v48;

  MEMORY[0x2319033A0](v47, -1, -1);
LABEL_30:

  return a2;
}

void sub_22F1EBC34(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v48 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v55 = type metadata accessor for Song(0);
  MEMORY[0x28223BE20](v55);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v56 = v16;
  v57 = (&v48 - v15);
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18) & ((-1 << a4) - 1);
  v50 = a1;
  v51 = v11;
  *(a1 + v18) = v19;
  v20 = v17 - 1;
  v53 = (v16 + 48);
  v54 = (v16 + 56);
  v59 = a3;
  v58 = a3 + 56;
  v52 = a5;
  while (2)
  {
    v49 = v20;
    do
    {
      while (1)
      {
        v21 = *a5;
        v22 = a5[1];
        v24 = a5[2];
        v23 = a5[3];
        v25 = a5[4];
        if (!v25)
        {
          v27 = (v24 + 64) >> 6;
          if (v27 <= v23 + 1)
          {
            v28 = v23 + 1;
          }

          else
          {
            v28 = (v24 + 64) >> 6;
          }

          v29 = v28 - 1;
          while (1)
          {
            v26 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v26 >= v27)
            {
              v30 = 0;
              v31 = 1;
              goto LABEL_14;
            }

            v25 = *(v22 + 8 * v26);
            ++v23;
            if (v25)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_33;
        }

        v26 = a5[3];
LABEL_13:
        v30 = (v25 - 1) & v25;
        sub_22F1A39E0(*(v21 + 48) + *(v56 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11, type metadata accessor for Song);
        v31 = 0;
        v29 = v26;
LABEL_14:
        v32 = v55;
        (*v54)(v11, v31, 1, v55);
        *a5 = v21;
        a5[1] = v22;
        a5[2] = v24;
        a5[3] = v29;
        a5[4] = v30;
        if ((*v53)(v11, 1, v32) == 1)
        {
          sub_22F120ADC(v11, &qword_27DAB1250, &qword_22F781A10);
          v47 = v59;

          sub_22F1B9048(v50, v48, v49, v47);
          return;
        }

        v33 = v57;
        sub_22F1BA7A4(v11, v57, type metadata accessor for Song);
        v34 = v59;
        sub_22F742170();
        v35 = *v33;
        v36 = v33[1];
        sub_22F740D60();
        v37 = sub_22F7421D0();
        v38 = -1 << *(v34 + 32);
        v39 = v37 & ~v38;
        v40 = v39 >> 6;
        v41 = 1 << v39;
        if (((1 << v39) & *(v58 + 8 * (v39 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_22F1A3AB0(v57, type metadata accessor for Song);
        v11 = v51;
        a5 = v52;
      }

      v42 = ~v38;
      v43 = *(v56 + 72);
      while (1)
      {
        sub_22F1A39E0(*(v59 + 48) + v43 * v39, v13, type metadata accessor for Song);
        if (*v13 == v35 && v13[1] == v36)
        {
          break;
        }

        v45 = sub_22F742040();
        sub_22F1A3AB0(v13, type metadata accessor for Song);
        if (v45)
        {
          goto LABEL_25;
        }

        v39 = (v39 + 1) & v42;
        v40 = v39 >> 6;
        v41 = 1 << v39;
        if (((1 << v39) & *(v58 + 8 * (v39 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_22F1A3AB0(v13, type metadata accessor for Song);
LABEL_25:
      sub_22F1A3AB0(v57, type metadata accessor for Song);
      v11 = v51;
      v46 = v50[v40];
      v50[v40] = v46 & ~v41;
      a5 = v52;
    }

    while ((v46 & v41) == 0);
    v20 = v49 - 1;
    if (__OFSUB__(v49, 1))
    {
LABEL_33:
      __break(1u);
      return;
    }

    if (v49 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_22F1EC0A8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          sub_22F1B8E24(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 56) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_22F742170();

        sub_22F740D60();
        v19 = sub_22F7421D0();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_22F742040() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_22F1EC2E0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          sub_22F1B8E24(a1, a2, v26, a3);
          return;
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_22F742170();

        sub_22F740D60();
        v16 = sub_22F7421D0();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_22F742040() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = a1[v19];
      a1[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_22F1EC4C4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          sub_22F1B8E24(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_22F742170();

        sub_22F740D60();
        v19 = sub_22F7421D0();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_22F742040() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_22F1EC6FC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v71[0] = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  MEMORY[0x28223BE20](v87);
  v10 = v71 - v9;
  v91 = sub_22F73F690();
  v11 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v81 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v13 - 8);
  v83 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v75 = v71 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2460, &qword_22F78B130);
  MEMORY[0x28223BE20](v17 - 8);
  v76 = v71 - v18;
  v92 = type metadata accessor for SongSource(0);
  MEMORY[0x28223BE20](v92);
  v100 = (v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v97 = (v71 - v21);
  v22 = *(a3 + 16);
  v23 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v24 = *(a1 + v23) & ((-1 << a4) - 1);
  v73 = a1;
  *(a1 + v23) = v24;
  v25 = v22 - 1;
  v78 = (v26 + 56);
  v79 = v26;
  v77 = (v26 + 48);
  v90 = (v11 + 48);
  v80 = (v11 + 32);
  v84 = (v11 + 8);
  v93 = a3;
  v74 = a5;
  v85 = a3 + 56;
  do
  {
    v72 = v25;
    do
    {
      while (1)
      {
        v27 = *a5;
        v28 = a5[1];
        v30 = a5[2];
        v29 = a5[3];
        v31 = a5[4];
        if (!v31)
        {
          v33 = (v30 + 64) >> 6;
          if (v33 <= v29 + 1)
          {
            v34 = v29 + 1;
          }

          else
          {
            v34 = (v30 + 64) >> 6;
          }

          v35 = v34 - 1;
          while (1)
          {
            v32 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            if (v32 >= v33)
            {
              v36 = 0;
              v38 = 1;
              v37 = v76;
              goto LABEL_14;
            }

            v31 = *(v28 + 8 * v32);
            ++v29;
            if (v31)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_58:
          __break(1u);
          return;
        }

        v32 = a5[3];
LABEL_13:
        v36 = (v31 - 1) & v31;
        v37 = v76;
        sub_22F1A39E0(*(v27 + 48) + *(v79 + 72) * (__clz(__rbit64(v31)) | (v32 << 6)), v76, type metadata accessor for SongSource);
        v38 = 0;
        v35 = v32;
LABEL_14:
        v39 = v92;
        (*v78)(v37, v38, 1, v92);
        *a5 = v27;
        a5[1] = v28;
        a5[2] = v30;
        a5[3] = v35;
        a5[4] = v36;
        if ((*v77)(v37, 1, v39) == 1)
        {
          sub_22F120ADC(v37, &qword_27DAB2460, &qword_22F78B130);
          v70 = v93;

          sub_22F1B9328(v73, v71[0], v72, v70);
          return;
        }

        v40 = v97;
        sub_22F1BA7A4(v37, v97, type metadata accessor for SongSource);
        v41 = v93;
        sub_22F742170();
        v42 = *v40;
        v98 = v40[1];
        v99 = v42;
        sub_22F740D60();
        v43 = v39;
        if (*(v40 + v39[11] + 8))
        {
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v44 = v91;
        v89 = v39[7];
        v45 = v75;
        sub_22F13BA9C(v97 + v89, v75, &qword_27DAB0920, &qword_22F770B20);
        v46 = *v90;
        if ((*v90)(v45, 1, v44) == 1)
        {
          sub_22F742190();
        }

        else
        {
          v47 = v81;
          (*v80)(v81, v45, v44);
          sub_22F742190();
          sub_22F1662C8(&qword_2810AC710, MEMORY[0x277CC9588]);
          sub_22F740D50();
          (*v84)(v47, v44);
        }

        v48 = v85;
        v49 = (v97 + v39[8]);
        v50 = *v49;
        v86 = v49[1];
        if (v86)
        {
          sub_22F742190();
          sub_22F740D60();
        }

        else
        {
          sub_22F742190();
        }

        v51 = *(v97 + v39[12] + 8);
        v82 = v50;
        sub_22F742190();
        if (v51)
        {
          sub_22F740D60();
        }

        v52 = sub_22F7421D0();
        v53 = -1 << *(v41 + 32);
        v54 = v52 & ~v53;
        v55 = v54 >> 6;
        v56 = 1 << v54;
        if (((1 << v54) & *(v48 + 8 * (v54 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_22F1A3AB0(v97, type metadata accessor for SongSource);
        a5 = v74;
      }

      v88 = v46;
      v95 = ~v53;
      v96 = *(v79 + 72);
      while (1)
      {
        v94 = v55;
        v57 = v100;
        sub_22F1A39E0(*(v41 + 48) + v96 * v54, v100, type metadata accessor for SongSource);
        v58 = *v57 == v99 && v57[1] == v98;
        if (!v58 && (sub_22F742040() & 1) == 0)
        {
          goto LABEL_30;
        }

        v59 = *(v87 + 48);
        sub_22F13BA9C(v100 + *(v43 + 28), v10, &qword_27DAB0920, &qword_22F770B20);
        sub_22F13BA9C(v97 + v89, &v10[v59], &qword_27DAB0920, &qword_22F770B20);
        v60 = v91;
        v61 = v88;
        if (v88(v10, 1, v91) == 1)
        {
          if (v61(&v10[v59], 1, v60) != 1)
          {
            goto LABEL_29;
          }

          sub_22F120ADC(v10, &qword_27DAB0920, &qword_22F770B20);
          v43 = v92;
          v41 = v93;
        }

        else
        {
          v62 = v83;
          sub_22F13BA9C(v10, v83, &qword_27DAB0920, &qword_22F770B20);
          if (v61(&v10[v59], 1, v60) == 1)
          {
            (*v84)(v62, v60);
            v48 = v85;
LABEL_29:
            sub_22F120ADC(v10, &unk_27DAB05B0, &unk_22F771430);
            v43 = v92;
            v41 = v93;
LABEL_30:
            sub_22F1A3AB0(v100, type metadata accessor for SongSource);
            goto LABEL_31;
          }

          v63 = v81;
          (*v80)(v81, &v10[v59], v60);
          sub_22F1662C8(&qword_2810AC700, MEMORY[0x277CC9598]);
          v64 = sub_22F740DE0();
          v65 = *v84;
          (*v84)(v63, v60);
          v65(v62, v60);
          v41 = v93;
          sub_22F120ADC(v10, &qword_27DAB0920, &qword_22F770B20);
          v43 = v92;
          v48 = v85;
          if ((v64 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v66 = (v100 + *(v43 + 32));
        v67 = v66[1];
        if (!v67)
        {
          if (!v86)
          {
            break;
          }

          goto LABEL_30;
        }

        if (!v86)
        {
          goto LABEL_30;
        }

        if (*v66 == v82 && v67 == v86)
        {
          break;
        }

        v68 = sub_22F742040();
        sub_22F1A3AB0(v100, type metadata accessor for SongSource);
        if (v68)
        {
          goto LABEL_50;
        }

LABEL_31:
        v54 = (v54 + 1) & v95;
        v55 = v54 >> 6;
        v56 = 1 << v54;
        if ((*(v48 + 8 * (v54 >> 6)) & (1 << v54)) == 0)
        {
          goto LABEL_3;
        }
      }

      sub_22F1A3AB0(v100, type metadata accessor for SongSource);
LABEL_50:
      sub_22F1A3AB0(v97, type metadata accessor for SongSource);
      v69 = v73[v94];
      v73[v94] = v69 & ~v56;
      a5 = v74;
    }

    while ((v69 & v56) == 0);
    v25 = v72 - 1;
    if (__OFSUB__(v72, 1))
    {
      goto LABEL_58;
    }
  }

  while (v72 != 1);
}

void sub_22F1ED1E4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v35 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v48 = &v35 - v17;
  v18 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v36 = a1;
  v37 = v18 - 1;
  v19 = *a5;
  v20 = a5[1];
  v21 = *(*a5 + 16);
  if (v20 == v21)
  {
LABEL_2:

    sub_22F1B9A78(v36, v35, v37, a3);
    return;
  }

  v40 = v10 + 32;
  v41 = v10;
  v43 = a3 + 56;
  v38 = a5;
  v46 = v10 + 16;
  v47 = (v10 + 8);
  while (v20 < v21)
  {
    v23 = *(v10 + 80);
    v45 = *(v10 + 72);
    v24 = v42;
    v44 = *(v10 + 16);
    v44(v42, v19 + ((v23 + 32) & ~v23) + v45 * v20, v9, v16);
    a5[1] = v20 + 1;
    (*(v10 + 32))(v48, v24, v9);
    sub_22F1662C8(&qword_2810AC710, MEMORY[0x277CC9588]);
    v25 = sub_22F740D40();
    v26 = -1 << *(a3 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    v29 = 1 << v27;
    if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
    {
      v22 = *v47;
LABEL_5:
      v22(v48, v9);
      goto LABEL_6;
    }

    v39 = v47 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30 = a3;
    v31 = ~v26;
    while (1)
    {
      (v44)(v12, *(v30 + 48) + v27 * v45, v9);
      sub_22F1662C8(&qword_2810AC700, MEMORY[0x277CC9598]);
      v32 = sub_22F740DE0();
      v22 = *v47;
      (*v47)(v12, v9);
      if (v32)
      {
        break;
      }

      v27 = (v27 + 1) & v31;
      v28 = v27 >> 6;
      v29 = 1 << v27;
      if (((1 << v27) & *(v43 + 8 * (v27 >> 6))) == 0)
      {
        a3 = v30;
        a5 = v38;
        goto LABEL_5;
      }
    }

    v22(v48, v9);
    v33 = v36[v28];
    v36[v28] = v33 & ~v29;
    if ((v33 & v29) == 0)
    {
      a3 = v30;
      a5 = v38;
LABEL_6:
      v10 = v41;
      goto LABEL_7;
    }

    v34 = v37 - 1;
    v10 = v41;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_20;
    }

    a3 = v30;
    a5 = v38;
    --v37;
    if (!v34)
    {
      return;
    }

LABEL_7:
    v19 = *a5;
    v20 = a5[1];
    v21 = *(*a5 + 16);
    if (v20 == v21)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

id sub_22F1ED5B0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___PGMusicBag_atomicMusicBagContents;
  sub_22F1EDA74(__src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2440, &qword_22F779CC0);
  v5 = swift_allocObject();
  *(v5 + 312) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  memcpy((v5 + 16), __src, 0x121uLL);
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR___PGMusicBag_cache] = a1;
  v6 = a1;
  v7 = sub_22F740DF0();
  v8 = sub_22F740DF0();
  v9 = [objc_opt_self() bagForProfile:v7 profileVersion:v8];

  *&v1[OBJC_IVAR___PGMusicBag_amsBag] = v9;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_22F1ED6E0()
{
  v0 = sub_22F740DF0();
  v1 = sub_22F740DF0();
  v2 = [objc_opt_self() bagForProfile:v0 profileVersion:v1];

  v3 = sub_22F740DF0();
  v4 = [v2 stringForKey_];

  v5 = dispatch_semaphore_create(0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v12[4] = sub_22F1EDC08;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_22F1EDBD4;
  v12[3] = &block_descriptor_93;
  v8 = _Block_copy(v12);

  v9 = v5;

  [v4 valueWithCompletion_];
  _Block_release(v8);
  sub_22F741780();

  swift_beginAccess();
  v10 = *(v6 + 16);

  return v10;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F1ED91C()
{
  result = qword_27DAB2430;
  if (!qword_27DAB2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2430);
  }

  return result;
}

unint64_t sub_22F1ED9CC()
{
  result = qword_2810AB720;
  if (!qword_2810AB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB720);
  }

  return result;
}

unint64_t sub_22F1EDA20()
{
  result = qword_2810AA3B8;
  if (!qword_2810AA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3B8);
  }

  return result;
}

double sub_22F1EDA74(uint64_t a1)
{
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
  *(a1 + 288) = -1;
  return result;
}

unint64_t sub_22F1EDAC4()
{
  result = qword_27DAB2450;
  if (!qword_27DAB2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2450);
  }

  return result;
}

uint64_t sub_22F1EDB8C(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t GraphSearchEntity.label.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGGraphSearchEntity_label);

  return v1;
}

uint64_t GraphSearchEntity.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGGraphSearchEntity_identifier);

  return v1;
}

uint64_t GraphSearchEntity.localeIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGGraphSearchEntity_localeIdentifier);

  return v1;
}

uint64_t sub_22F1EDD04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id GraphSearchEntity.__allocating_init(type:label:identifier:confidence:rankingScore:localeIdentifier:dateInterval:synonyms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  v22 = objc_allocWithZone(v11);
  *&v22[OBJC_IVAR___PGGraphSearchEntity_type] = a1;
  v23 = &v22[OBJC_IVAR___PGGraphSearchEntity_label];
  *v23 = a2;
  *(v23 + 1) = a3;
  v24 = &v22[OBJC_IVAR___PGGraphSearchEntity_identifier];
  *v24 = a4;
  *(v24 + 1) = a5;
  *&v22[OBJC_IVAR___PGGraphSearchEntity_confidence] = a9;
  *&v22[OBJC_IVAR___PGGraphSearchEntity_rankingScore] = a10;
  v25 = &v22[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
  *v25 = a6;
  *(v25 + 1) = a7;
  sub_22F1EDD04(a8, &v22[OBJC_IVAR___PGGraphSearchEntity_dateInterval]);
  *&v22[OBJC_IVAR___PGGraphSearchEntity_synonyms] = a11;
  v28.receiver = v22;
  v28.super_class = v11;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  sub_22F1EDFCC(a8);
  return v26;
}

id GraphSearchEntity.init(type:label:identifier:confidence:rankingScore:localeIdentifier:dateInterval:synonyms:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  ObjectType = swift_getObjectType();
  *&v11[OBJC_IVAR___PGGraphSearchEntity_type] = a1;
  v23 = &v11[OBJC_IVAR___PGGraphSearchEntity_label];
  *v23 = a2;
  *(v23 + 1) = a3;
  v24 = &v11[OBJC_IVAR___PGGraphSearchEntity_identifier];
  *v24 = a4;
  *(v24 + 1) = a5;
  *&v11[OBJC_IVAR___PGGraphSearchEntity_confidence] = a9;
  *&v11[OBJC_IVAR___PGGraphSearchEntity_rankingScore] = a10;
  v25 = &v11[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
  *v25 = a6;
  *(v25 + 1) = a7;
  sub_22F1EDD04(a8, &v11[OBJC_IVAR___PGGraphSearchEntity_dateInterval]);
  *&v11[OBJC_IVAR___PGGraphSearchEntity_synonyms] = a11;
  v28.receiver = v11;
  v28.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v28, sel_init);
  sub_22F1EDFCC(a8);
  return v26;
}

uint64_t sub_22F1EDFCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id GraphSearchEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GraphSearchEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GraphSearchEntity(uint64_t a1)
{
  result = qword_2810AC398;
  if (!qword_2810AC398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22F1EE1DC(uint64_t a1)
{
  sub_22F1EE2CC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22F1EE2CC(uint64_t a1)
{
  if (!qword_2810AC728)
  {
    sub_22F73F090();
    v1 = sub_22F741860();
    if (!v2)
    {
      atomic_store(v1, &qword_2810AC728);
    }
  }
}

uint64_t sub_22F1EE324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1103)
  {
    v3 = sub_22F740DF0();
    v4 = identifierForSeasonLabel(v3);
  }

  else
  {
    if (a3 != 1600)
    {
      return 0;
    }

    v3 = sub_22F740DF0();
    v4 = identifierForMeaningLabel(v3);
  }

  v5 = v4;

  if (v5)
  {
    v6 = sub_22F740E20();

    return v6;
  }

  return 0;
}

unint64_t sub_22F1EE3B4()
{
  v1 = (v0 + OBJC_IVAR___PGKeywordBasedFeatureExtractor____lazy_storage___consistentHash);
  if (*(v0 + OBJC_IVAR___PGKeywordBasedFeatureExtractor____lazy_storage___consistentHash + 8) != 1)
  {
    return *v1;
  }

  result = sub_22F1EEDD0(*(v0 + OBJC_IVAR___PGKeywordBasedFeatureExtractor_weightByKeyword));
  *v1 = result;
  v1[8] = 0;
  return result;
}

id KeywordBasedFeatureExtractor.__allocating_init(with:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_22F7401D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v2);
  v8 = &v7[OBJC_IVAR___PGKeywordBasedFeatureExtractor____lazy_storage___consistentHash];
  *v8 = 0;
  v8[8] = 1;
  sub_22F7401C0();
  v9 = sub_22F740190();

  (*(v4 + 8))(v6, v3);
  *&v7[OBJC_IVAR___PGKeywordBasedFeatureExtractor_weightByKeyword] = v9;
  v11.receiver = v7;
  v11.super_class = v2;
  return objc_msgSendSuper2(&v11, sel_init);
}

id KeywordBasedFeatureExtractor.init(with:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_22F7401D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR___PGKeywordBasedFeatureExtractor____lazy_storage___consistentHash];
  *v8 = 0;
  v8[8] = 1;
  sub_22F7401C0();
  v9 = sub_22F740190();

  (*(v5 + 8))(v7, v4);
  *&v2[OBJC_IVAR___PGKeywordBasedFeatureExtractor_weightByKeyword] = v9;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id KeywordBasedFeatureExtractor.musicCurationFeatures(context:progressReporter:)(uint64_t a1)
{
  v3 = v2;
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v5 = qword_2810B4E90;
  *&v6 = CACurrentMediaTime();
  sub_22F1B560C("KeywordBasedFeatureExtractor - musicCurationFeatures", 52, 2u, v6, 0, v5, v38);
  v7 = sub_22F7416B0();
  v9 = v8;
  v10 = sub_22F2111D0(*&v1[OBJC_IVAR___PGKeywordBasedFeatureExtractor_weightByKeyword]);
  if (v2)
  {

    sub_22F1B2BBC(0);
  }

  else
  {
    v11 = v10;
    v12 = sub_22F3EB684(a1, v10);
    v15 = v14;
    v36 = v12;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4D90);
    v17 = v1;

    v18 = sub_22F740B70();
    v19 = sub_22F7415D0();

    if (os_log_type_enabled(v18, v19))
    {
      v34 = v19;
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v20 = 136315394;
      v21 = sub_22F740CB0();
      v23 = sub_22F145F20(v21, v22, &v39);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = sub_22F740CB0();
      v26 = sub_22F145F20(v24, v25, &v39);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_22F0FC000, v18, v34, "[musicCurationFeatures] Keywords BEFORE: %s |\n AFTER: scoreByKeyword = %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v35, -1, -1);
      MEMORY[0x2319033A0](v20, -1, -1);
    }

    v27 = sub_22F1EE3B4();
    v28 = type metadata accessor for MusicCurationFeatures();
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_memoryCategory] = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_memorySubcategory] = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_curatorEvents] = MEMORY[0x277D84F90];
    v30 = &v29[OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration];
    v30[8] = 1;
    *v30 = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_eventRatioByLanguageCode] = 0;
    v31 = &v29[OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel];
    *v31 = 0;
    v31[1] = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers] = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_inferredUserLanguageCodes] = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID] = v36;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword] = v15;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_consistentHash] = v27;
    v32 = &v29[OBJC_IVAR___PGMusicCurationFeatures_location];
    *v32 = 0;
    v32[1] = 0;
    v29[OBJC_IVAR___PGMusicCurationFeatures_shouldAvoidColorGrading] = 0;
    *&v29[OBJC_IVAR___PGMusicCurationFeatures_keywordsDataFrame] = v11;
    v37.receiver = v29;
    v37.super_class = v28;
    v33 = v11;
    v3 = objc_msgSendSuper2(&v37, sel_init);

    sub_22F1B2BBC(0);
  }

  return v3;
}

id KeywordBasedFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KeywordBasedFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F1EEDD0(uint64_t a1)
{
  v14[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_22F10B348(*(a1 + 16), 0);
    v4 = sub_22F120B3C();

    sub_22F0FF590(v14[0]);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v14[0] = v3;
  sub_22F1AB0EC(v14);
  v5 = *(v14[0] + 2);
  if (v5)
  {
    v6 = 0;
    v7 = (v14[0] + 40);
    do
    {
      if (*(a1 + 16))
      {
        v11 = *(v7 - 1);
        v10 = *v7;

        sub_22F1229E8(v11, v10);
        if (v12)
        {
          v8 = sub_22F1D226C(v11, v10);

          v9 = ((v6 << 6) + 2654435769u + (v6 >> 2) + v8) ^ v6;
          v6 = (sub_22F7413F0() + 2654435769 + (v9 << 6) + (v9 >> 2)) ^ v9;
        }

        else
        {
        }
      }

      v7 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void static FlexMusicSongUtility.value<A>(forTagPrefix:fromTagIDs:ofType:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = sub_22F10B348(*(a3 + 16), 0);
    v8 = sub_22F11A438(&v26, v7 + 4, v5, a3);
    v9 = v26;

    sub_22F1534EC(v9);
    if (v8 != v5)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v10 = v7[2];
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (!v10)
    {
LABEL_16:

      return;
    }
  }

  v11 = 0;
  v12 = v7 + 5;
  while (1)
  {
    if (v11 >= v7[2])
    {
      __break(1u);
      goto LABEL_24;
    }

    v13 = *(v12 - 1);
    v14 = *v12;
    v26 = v13;
    v27 = v14;
    sub_22F160DE4();

    if ((sub_22F741910() & 1) == 0 || (v26 = v13, v27 = v14, sub_22F1BA874(), sub_22F1B1F54(), v15 = sub_22F740D70(), , v15[2] != 2))
    {

      goto LABEL_8;
    }

    v17 = v15[8];
    v16 = v15[9];
    v19 = v15[10];
    v18 = v15[11];

    if (sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0) != a4)
    {
      break;
    }

    v20 = sub_22F741400();
    if ((v20 & 0x100000000) == 0)
    {
      v21 = v20;

      v22 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v23) = v21;
      v24 = [v22 initWithFloat_];
      if (!swift_dynamicCastUnknownClass())
      {
      }

      return;
    }

LABEL_8:
    ++v11;
    v12 += 2;
    if (v10 == v11)
    {
      goto LABEL_16;
    }
  }

  if (sub_22F120634(0, &qword_27DAB24A8, 0x277CCACA8) == a4)
  {
    v26 = v17;
    v27 = v16;
    v28 = v19;
    v29 = v18;
    swift_dynamicCast();
  }

  else
  {
  }
}

void sub_22F1EF300()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24B0, &qword_22F779E58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F7727B0;
  sub_22F740E20();
  v1 = MEMORY[0x277D837D0];
  sub_22F741A90();
  *(inited + 96) = v1;
  *(inited + 72) = 26704;
  *(inited + 80) = 0xE200000000000000;
  sub_22F740E20();
  sub_22F741A90();
  *(inited + 168) = v1;
  *(inited + 144) = 0xD00000000000002BLL;
  *(inited + 152) = 0x800000022F791CB0;
  sub_22F740E20();
  sub_22F741A90();
  *(inited + 240) = v1;
  *(inited + 216) = 0xD00000000000002BLL;
  *(inited + 224) = 0x800000022F791CE0;
  v6 = sub_22F740E20();
  v7 = v2;
  sub_22F741A90();
  *(inited + 312) = MEMORY[0x277D839B0];
  *(inited + 288) = 1;
  sub_22F14EF70(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB12E8, &qword_22F779E60);
  swift_arrayDestroy();
  v3 = objc_allocWithZone(MEMORY[0x277D0A9A8]);
  v4 = sub_22F740C80();

  v5 = [v3 initWithOptions_];

  if (v5)
  {
    qword_2810A91C8 = v5;
  }

  else
  {
    __break(1u);
  }
}

id static FMSongLibrary.sharedLibrary.getter()
{
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2810A91C8;

  return v0;
}

void static FMSongLibrary.sharedLibrary.setter(uint64_t a1)
{
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2810A91C8;
  qword_2810A91C8 = a1;
}

uint64_t (*static FMSongLibrary.sharedLibrary.modify(uint64_t a1))()
{
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_22F1EF73C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_22F740E20();
  v8 = v7;
  v9 = a1;
  v10 = [v9 tagIDs];
  v11 = sub_22F741420();

  v12 = a4(v6, v8, v11);

  return v12;
}

uint64_t sub_22F1EF81C(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = sub_22F740E20();
  v6 = v5;
  v7 = [v2 tagIDs];
  v8 = sub_22F741420();

  v9 = a2(v4, v6, v8);

  return v9;
}

void *FMSong.regions()()
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = [v0 tagIDs];
  v2 = sub_22F741420();

  v4 = *(v2 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v23[1] = v23;
    v24 = v5;
    MEMORY[0x28223BE20](v3);
    v25 = v23 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v6);
    v26 = 0;
    v5 = 0;
    v7 = v2;
    v9 = *(v2 + 56);
    v2 += 56;
    v8 = v9;
    v10 = 1 << *(v2 - 24);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v8;
    v13 = (v10 + 63) >> 6;
    v27 = *MEMORY[0x277D0A980];
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      sub_22F740E20();

      v18 = sub_22F740FE0();

      if (v18)
      {
        *&v25[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
          return sub_22F1B8E24(v25, v24, v26, v7);
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v13)
      {
        return sub_22F1B8E24(v25, v24, v26, v7);
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();
  v22 = sub_22F1B8D94(v21, v5, v2, sub_22F1B6C64);

  MEMORY[0x2319033A0](v21, -1, -1);
  return v22;
}

id sub_22F1EFB84(void *a1)
{
  v1 = a1;
  v2 = [v1 tagIDs];
  v3 = sub_22F741420();

  sub_22F1EFC4C(v3);
  v4 = sub_22F741410();

  return v4;
}

void *sub_22F1EFC4C(uint64_t a1)
{
  v2 = a1;
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v23 = v4;
    v24 = v1;
    v22[1] = v22;
    MEMORY[0x28223BE20](a1);
    v25 = v22 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v5);
    v26 = 0;
    v4 = 0;
    v6 = v2;
    v8 = *(v2 + 56);
    v2 += 56;
    v7 = v8;
    v9 = 1 << *(v2 - 24);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & v7;
    v12 = (v9 + 63) >> 6;
    v27 = *MEMORY[0x277D0A980];
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v4 << 6);
      v1 = sub_22F740E20();

      v17 = sub_22F740FE0();

      if (v17)
      {
        *&v25[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
          return sub_22F1B8E24(v25, v23, v26, v6);
        }
      }
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v12)
      {
        return sub_22F1B8E24(v25, v23, v26, v6);
      }

      v15 = *(v2 + 8 * v4);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();
  v21 = sub_22F1B8D1C(v20, v4, v2);

  MEMORY[0x2319033A0](v20, -1, -1);
  return v21;
}

uint64_t sub_22F1EFEEC(void *a1, uint64_t a2)
{
  v42 = a2;
  v52 = sub_22F73F7A0();
  v3 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24B8, &qword_22F779E68);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v40 - v6;
  v7 = sub_22F73F7C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9BD0 != -1)
  {
LABEL_26:
    swift_once();
  }

  sub_22F1B560C("GraphMusicCurationFeatureExtractor - extractMusicCurationFeatures", 65, 2u, 0, 1, qword_2810B4E90, v54);
  v11 = [a1 inferredUserLocales];
  sub_22F1F0500();
  v45 = v7;
  v12 = sub_22F741420();

  a1 = (v12 + 56);
  v13 = 1 << *(v12 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v7 = v14 & *(v12 + 56);
  v15 = (v13 + 63) >> 6;
  v48 = (v3 + 8);
  v49 = v8 + 16;
  v50 = v8;
  v47 = (v8 + 8);
  v53 = v12;

  v16 = 0;
  v46 = MEMORY[0x277D84F90];
LABEL_5:
  v17 = v16;
  v18 = v44;
  v8 = v45;
  if (!v7)
  {
    goto LABEL_7;
  }

  do
  {
    v16 = v17;
LABEL_10:
    v19 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    (*(v50 + 16))(v10, *(v53 + 48) + *(v50 + 72) * (v19 | (v16 << 6)), v8);
    v20 = v51;
    sub_22F73F7B0();
    sub_22F73F790();
    (*v48)(v20, v52);
    v21 = sub_22F73F710();
    v3 = v18;
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v3, 1, v21) != 1)
    {
      v23 = sub_22F73F700();
      v40 = v24;
      v41 = v23;
      (*v47)(v10, v8);
      (*(v22 + 8))(v3, v21);
      v3 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_22F13E1A8(0, *(v3 + 2) + 1, 1, v3);
      }

      v26 = *(v3 + 2);
      v25 = *(v3 + 3);
      if (v26 >= v25 >> 1)
      {
        v3 = sub_22F13E1A8((v25 > 1), v26 + 1, 1, v3);
      }

      *(v3 + 2) = v26 + 1;
      v46 = v3;
      v27 = &v3[16 * v26];
      v28 = v40;
      *(v27 + 4) = v41;
      *(v27 + 5) = v28;
      goto LABEL_5;
    }

    (*v47)(v10, v8);
    sub_22F1F0558(v3);
    v17 = v16;
    v18 = v3;
  }

  while (v7);
  while (1)
  {
LABEL_7:
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v16 >= v15)
    {
      break;
    }

    v7 = *(a1 + v16);
    ++v17;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  v29 = sub_22F1515F8(v46);

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v30 = sub_22F740B90();
  __swift_project_value_buffer(v30, qword_2810B4D90);

  v31 = sub_22F740B70();
  v32 = sub_22F7415C0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v55 = v34;
    *v33 = 136315138;
    v35 = sub_22F741430();
    v37 = sub_22F145F20(v35, v36, &v55);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_22F0FC000, v31, v32, "[MemoriesMusic] (GraphMusicCurationFeatureExtractor) Extracted inferredUserLanguageCodes: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x2319033A0](v34, -1, -1);
    MEMORY[0x2319033A0](v33, -1, -1);
  }

  v38 = v43;
  sub_22F7416A0();
  if (v38)
  {
  }

  sub_22F1B2BBC(0);

  return v29;
}

unint64_t sub_22F1F0500()
{
  result = qword_2810AC6E0;
  if (!qword_2810AC6E0)
  {
    sub_22F73F7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AC6E0);
  }

  return result;
}

uint64_t sub_22F1F0558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24B8, &qword_22F779E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F1F05C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v26 - v9;
  v11 = [v2 category];
  if (v11)
  {
    v12 = v11;
    v13 = sub_22F740E20();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [v2 lastSuccessfulFetchedDate];
  if (v16)
  {
    v17 = v16;
    sub_22F73F640();

    v18 = sub_22F73F690();
    (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
  }

  else
  {
    v19 = sub_22F73F690();
    (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  }

  v20 = [v2 lastFailedFetchedDate];
  if (v20)
  {
    v21 = v20;
    sub_22F73F640();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_22F73F690();
  (*(*(v23 - 8) + 56))(v6, v22, 1, v23);
  *a1 = v13;
  a1[1] = v15;
  v24 = type metadata accessor for CacherStatus(0);
  sub_22F1207AC(v10, a1 + *(v24 + 20), &qword_27DAB0920, &qword_22F770B20);
  return sub_22F1207AC(v6, a1 + *(v24 + 24), &qword_27DAB0920, &qword_22F770B20);
}

void sub_22F1F0818(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = v26 - v10;
  v12 = [v3 category];
  if (!v12)
  {
    if (!a1[1])
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v13 = v12;
  v14 = sub_22F740E20();
  v16 = v15;

  v17 = a1[1];
  if (!v17)
  {

    goto LABEL_12;
  }

  if (v14 != *a1 || v17 != v16)
  {
    v19 = sub_22F742040();

    if (v19)
    {
      goto LABEL_14;
    }

LABEL_12:
    sub_22F1F251C();
    swift_allocError();
    swift_willThrow();
    return;
  }

LABEL_14:
  v27 = v3;
  v26[1] = v2;
  v20 = type metadata accessor for CacherStatus(0);
  sub_22F13BA9C(a1 + *(v20 + 20), v11, &qword_27DAB0920, &qword_22F770B20);
  v21 = sub_22F73F690();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  v24 = 0;
  if (v23(v11, 1, v21) != 1)
  {
    v24 = sub_22F73F5B0();
    (*(v22 + 8))(v11, v21);
  }

  [v27 setLastSuccessfulFetchedDate_];

  sub_22F13BA9C(a1 + *(v20 + 24), v7, &qword_27DAB0920, &qword_22F770B20);
  if (v23(v7, 1, v21) == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_22F73F5B0();
    (*(v22 + 8))(v7, v21);
  }

  [v27 setLastFailedFetchedDate_];
}

uint64_t CacherStatus.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v1 - 8);
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_22F741B00();
  if (v0[1])
  {
    v12 = *v0;
    v13 = v0[1];
  }

  else
  {
    v13 = 0xEB0000000079726FLL;
    v12 = 0x6765746163206F6ELL;
  }

  MEMORY[0x231900B10](v12, v13);

  MEMORY[0x231900B10](0xD000000000000014, 0x800000022F791D60);
  v14 = type metadata accessor for CacherStatus(0);
  sub_22F13BA9C(v0 + *(v14 + 20), v5, &qword_27DAB0920, &qword_22F770B20);
  v15 = *(v7 + 48);
  v16 = v15(v5, 1, v6);
  v24 = v0;
  if (v16 == 1)
  {
    sub_22F73F550();
    if (v15(v5, 1, v6) != 1)
    {
      sub_22F120ADC(v5, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
  }

  sub_22F1662C8(&qword_2810AC6F8, MEMORY[0x277CC95B8]);
  v17 = sub_22F742010();
  MEMORY[0x231900B10](v17);

  v18 = *(v7 + 8);
  v18(v11, v6);
  MEMORY[0x231900B10](0xD000000000000010, 0x800000022F791D80);
  v19 = v26;
  sub_22F13BA9C(v24 + *(v14 + 24), v26, &qword_27DAB0920, &qword_22F770B20);
  if (v15(v19, 1, v6) == 1)
  {
    v20 = v25;
    sub_22F73F550();
    if (v15(v19, 1, v6) != 1)
    {
      sub_22F120ADC(v19, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  else
  {
    v20 = v25;
    (*(v7 + 32))(v25, v19, v6);
  }

  v21 = sub_22F742010();
  MEMORY[0x231900B10](v21);

  v18(v20, v6);
  return v27;
}

uint64_t CacherStatusUpdater.init(cacheCategory:currentCacheStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a4 + *(type metadata accessor for CacherStatusUpdater(0) + 20));
  *v8 = a1;
  v8[1] = a2;
  return sub_22F1207AC(a3, a4, &qword_27DAB1DA0, &unk_22F7771B0);
}

uint64_t CacherStatusUpdater.write(to:succeeded:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return CacherStatusUpdater.writeSuccess(to:)(a1);
  }

  else
  {
    return CacherStatusUpdater.writeFailure(to:)(a1);
  }
}

uint64_t CacherStatusUpdater.writeSuccess(to:)(uint64_t a1)
{
  v33 = a1;
  v2 = v1;
  v3 = sub_22F740AD0();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for CacherStatus(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (v1 + *(type metadata accessor for CacherStatusUpdater(0) + 20));
  v18 = v17[1];
  v38 = *v17;
  v32 = v18;

  sub_22F73F680();
  v19 = sub_22F73F690();
  v20 = *(*(v19 - 8) + 56);
  (v20)(v12, 0, 1, v19);
  sub_22F13BA9C(v2, v7, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_22F120ADC(v7, &qword_27DAB1DA0, &unk_22F7771B0);
    v21 = v31;
    v20();
  }

  else
  {
    v21 = v31;
    sub_22F13BA9C(&v7[*(v13 + 24)], v31, &qword_27DAB0920, &qword_22F770B20);
    sub_22F1F1F68(v7);
  }

  v22 = v32;
  *v16 = v38;
  v16[1] = v22;
  sub_22F1207AC(v12, v16 + *(v13 + 20), &qword_27DAB0920, &qword_22F770B20);
  sub_22F1207AC(v21, v16 + *(v13 + 24), &qword_27DAB0920, &qword_22F770B20);
  sub_22F741740();
  v23 = v37;
  v24 = v35;
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v25 = *(v36 + 8);
  v26 = v25(v24, v23);
  MEMORY[0x28223BE20](v26);
  *(&v30 - 4) = v38;
  *(&v30 - 3) = v22;
  *(&v30 - 2) = v27;
  *(&v30 - 1) = v16;
  v28 = v34;
  sub_22F7417A0();
  if (!v28)
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v25(v24, v23);
  }

  return sub_22F1F1F68(v16);
}

uint64_t CacherStatusUpdater.writeFailure(to:)(uint64_t a1)
{
  v29[1] = a1;
  v2 = v1;
  v30 = sub_22F740AD0();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v29 - v9;
  v11 = type metadata accessor for CacherStatus(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v1 + *(type metadata accessor for CacherStatusUpdater(0) + 20));
  v16 = *v15;
  v17 = v15[1];
  sub_22F13BA9C(v2, v7, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {

    sub_22F120ADC(v7, &qword_27DAB1DA0, &unk_22F7771B0);
    v18 = sub_22F73F690();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  }

  else
  {
    sub_22F13BA9C(&v7[*(v11 + 20)], v10, &qword_27DAB0920, &qword_22F770B20);

    sub_22F1F1F68(v7);
  }

  v19 = *(v11 + 24);
  sub_22F73F680();
  v20 = sub_22F73F690();
  (*(*(v20 - 8) + 56))(&v14[v19], 0, 1, v20);
  v21 = v16;
  *v14 = v16;
  *(v14 + 1) = v17;
  sub_22F1207AC(v10, &v14[*(v11 + 20)], &qword_27DAB0920, &qword_22F770B20);
  sub_22F741740();
  v22 = v30;
  v23 = v31;
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v24 = *(v23 + 8);
  v31 = v23 + 8;
  v25 = v24(v4, v22);
  MEMORY[0x28223BE20](v25);
  v29[-4] = v21;
  v29[-3] = v17;
  v29[-2] = v26;
  v29[-1] = v14;
  v27 = v29[2];
  sub_22F7417A0();
  if (!v27)
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v24(v4, v30);
  }

  return sub_22F1F1F68(v14);
}

id sub_22F1F1930(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CacherStatusEntry();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22F1F1964()
{
  v0 = aCacherstatus_0[0];

  return v0;
}

BOOL _s11PhotosGraph12CacherStatusV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v39[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  MEMORY[0x28223BE20](v14);
  v45 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v39[-v17];
  v19 = a1[1];
  v20 = a2[1];
  if (v19)
  {
    if (!v20 || (*a1 != *a2 || v19 != v20) && (sub_22F742040() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v41 = v10;
  v43 = v7;
  v21 = type metadata accessor for CacherStatus(0);
  v44 = v5;
  v42 = v21;
  v22 = *(v21 + 20);
  v23 = *(v14 + 48);
  sub_22F13BA9C(a1 + v22, v18, &qword_27DAB0920, &qword_22F770B20);
  v24 = a2 + v22;
  v25 = v44;
  sub_22F13BA9C(v24, &v18[v23], &qword_27DAB0920, &qword_22F770B20);
  v26 = *(v25 + 48);
  if (v26(v18, 1, v4) != 1)
  {
    sub_22F13BA9C(v18, v13, &qword_27DAB0920, &qword_22F770B20);
    if (v26(&v18[v23], 1, v4) != 1)
    {
      (*(v25 + 32))(v43, &v18[v23], v4);
      sub_22F1662C8(&qword_2810AC700, MEMORY[0x277CC9598]);
      v40 = sub_22F740DE0();
      v28 = *(v25 + 8);
      v28(v43, v4);
      v28(v13, v4);
      sub_22F120ADC(v18, &qword_27DAB0920, &qword_22F770B20);
      if ((v40 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v25 + 8))(v13, v4);
LABEL_13:
    v27 = v18;
LABEL_21:
    sub_22F120ADC(v27, &unk_27DAB05B0, &unk_22F771430);
    return 0;
  }

  if (v26(&v18[v23], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_22F120ADC(v18, &qword_27DAB0920, &qword_22F770B20);
LABEL_15:
  v29 = *(v42 + 24);
  v30 = *(v14 + 48);
  v31 = a1 + v29;
  v32 = v45;
  sub_22F13BA9C(v31, v45, &qword_27DAB0920, &qword_22F770B20);
  sub_22F13BA9C(a2 + v29, &v32[v30], &qword_27DAB0920, &qword_22F770B20);
  if (v26(v32, 1, v4) == 1)
  {
    if (v26(&v32[v30], 1, v4) == 1)
    {
      sub_22F120ADC(v32, &qword_27DAB0920, &qword_22F770B20);
      return 1;
    }

    goto LABEL_20;
  }

  v33 = v41;
  sub_22F13BA9C(v32, v41, &qword_27DAB0920, &qword_22F770B20);
  if (v26(&v32[v30], 1, v4) == 1)
  {
    (*(v44 + 8))(v33, v4);
LABEL_20:
    v27 = v32;
    goto LABEL_21;
  }

  v36 = v43;
  v35 = v44;
  (*(v44 + 32))(v43, &v32[v30], v4);
  sub_22F1662C8(&qword_2810AC700, MEMORY[0x277CC9598]);
  v37 = sub_22F740DE0();
  v38 = *(v35 + 8);
  v38(v36, v4);
  v38(v33, v4);
  sub_22F120ADC(v32, &qword_27DAB0920, &qword_22F770B20);
  return (v37 & 1) != 0;
}

uint64_t sub_22F1F1F68(uint64_t a1)
{
  v2 = type metadata accessor for CacherStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22F1F1FEC(uint64_t a1)
{
  sub_22F1F208C();
  if (v1 <= 0x3F)
  {
    sub_22F1F2194(319, &qword_2810AC6F0, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22F1F208C()
{
  if (!qword_2810A9390)
  {
    v0 = sub_22F741860();
    if (!v1)
    {
      atomic_store(v0, &qword_2810A9390);
    }
  }
}

void sub_22F1F2104(uint64_t a1)
{
  sub_22F1F2194(319, qword_2810AC038, type metadata accessor for CacherStatus);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_22F1F2194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22F741860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_22F1F220C(id a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = objc_opt_self();

  v12 = sub_22F740DF0();

  v13 = [v11 entityForName:v12 inManagedObjectContext:a1];

  if (v13)
  {
    a1 = [objc_allocWithZone(type metadata accessor for CacherStatusEntry()) initWithEntity:v13 insertIntoManagedObjectContext:a1];

    v14 = a2[1];
    v26 = v2;
    if (v14)
    {
      v15 = sub_22F740DF0();
    }

    else
    {
      v15 = 0;
    }

    [a1 setCategory_];

    v16 = type metadata accessor for CacherStatus(0);
    v17 = *(v16 + 20);
    v25 = a2;
    sub_22F13BA9C(a2 + v17, v10, &qword_27DAB0920, &qword_22F770B20);
    v18 = sub_22F73F690();
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    v21 = 0;
    if (v20(v10, 1, v18) != 1)
    {
      v21 = sub_22F73F5B0();
      (*(v19 + 8))(v10, v18);
    }

    [a1 setLastSuccessfulFetchedDate_];

    sub_22F13BA9C(v25 + *(v16 + 24), v7, &qword_27DAB0920, &qword_22F770B20);
    if (v20(v7, 1, v18) == 1)
    {
      v22 = 0;
    }

    else
    {
      v22 = sub_22F73F5B0();
      (*(v19 + 8))(v7, v18);
    }

    [a1 setLastFailedFetchedDate_];
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_22F1F251C()
{
  result = qword_27DAB24D0;
  if (!qword_27DAB24D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB24D0);
  }

  return result;
}

unint64_t sub_22F1F2584()
{
  result = qword_27DAB24D8;
  if (!qword_27DAB24D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB24D8);
  }

  return result;
}

void *sub_22F1F25F0(unsigned __int8 *a1)
{
  v144 = sub_22F73F0B0();
  v2 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v142 = &v129 - v5;
  MEMORY[0x28223BE20](v6);
  v139 = &v129 - v7;
  MEMORY[0x28223BE20](v8);
  v129 = &v129 - v9;
  MEMORY[0x28223BE20](v10);
  v145 = &v129 - v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1[6];
  v130 = a1[5];
  v131 = v17;
  v18 = a1[8];
  v132 = a1[7];
  v133 = v18;
  v19 = a1[10];
  v134 = a1[9];
  v135 = v19;
  v20 = a1[12];
  v136 = a1[11];
  v137 = v20;
  v138 = a1[13];
  v21 = a1[14];
  v150 = a1[15];
  v151 = v21;
  v22 = a1[16];
  v23 = a1[17];
  v148 = a1[18];
  v149 = v22;
  v146 = a1[19];
  v147 = v23;
  v24 = a1[20];
  v25 = a1[21];
  v152 = a1[22];
  v153 = v25;
  v26 = *(a1 + 5);
  v140 = *(a1 + 6);
  v141 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22F771340;
  *(v27 + 32) = 0x6172615079616C70;
  *(v27 + 40) = 0xEA0000000000736DLL;
  if (v12 == 1)
  {
    v28 = 2;
    v27 = sub_22F13E1A8(1, 2, 1, v27);
    *(v27 + 16) = 2;
    *(v27 + 48) = 1701667182;
    *(v27 + 56) = 0xE400000000000000;
    if (!v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = 1;
    if (!v13)
    {
LABEL_3:
      v29 = v2;
      if (!v14)
      {
        goto LABEL_4;
      }

LABEL_12:
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        v27 = sub_22F13E1A8((v36 > 1), v37 + 1, 1, v27);
      }

      *(v27 + 16) = v37 + 1;
      v38 = v27 + 16 * v37;
      *(v38 + 32) = 0x6D614E6D75626C61;
      *(v38 + 40) = 0xE900000000000065;
      if (v15)
      {
        goto LABEL_5;
      }

LABEL_15:
      v32 = v24;
      goto LABEL_16;
    }
  }

  v34 = *(v27 + 24);
  if (v28 >= v34 >> 1)
  {
    v27 = sub_22F13E1A8((v34 > 1), v28 + 1, 1, v27);
  }

  v29 = v2;
  *(v27 + 16) = v28 + 1;
  v35 = v27 + 16 * v28;
  *(v35 + 32) = 0x614E747369747261;
  *(v35 + 40) = 0xEA0000000000656DLL;
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (!v15)
  {
    goto LABEL_15;
  }

LABEL_5:
  v31 = *(v27 + 16);
  v30 = *(v27 + 24);
  if (v31 >= v30 >> 1)
  {
    v27 = sub_22F13E1A8((v30 > 1), v31 + 1, 1, v27);
  }

  v32 = v24;
  *(v27 + 16) = v31 + 1;
  v33 = v27 + 16 * v31;
  *(v33 + 32) = 0x6D614E65726E6567;
  *(v33 + 40) = 0xEA00000000007365;
LABEL_16:
  if (v16)
  {
    v40 = *(v27 + 16);
    v39 = *(v27 + 24);
    if (v40 >= v39 >> 1)
    {
      v27 = sub_22F13E1A8((v39 > 1), v40 + 1, 1, v27);
    }

    *(v27 + 16) = v40 + 1;
    v41 = v27 + 16 * v40;
    *(v41 + 32) = 0xD000000000000010;
    *(v41 + 40) = 0x800000022F78FFF0;
  }

  if (!v130)
  {
    v44 = v139;
    if (!v131)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v43 = *(v27 + 16);
  v42 = *(v27 + 24);
  if (v43 >= v42 >> 1)
  {
    v27 = sub_22F13E1A8((v42 > 1), v43 + 1, 1, v27);
  }

  v44 = v139;
  *(v27 + 16) = v43 + 1;
  v45 = v27 + 16 * v43;
  *(v45 + 32) = 0x6E65726566657270;
  *(v45 + 40) = 0xEF65726F63536563;
  if (v131)
  {
LABEL_26:
    v47 = *(v27 + 16);
    v46 = *(v27 + 24);
    if (v47 >= v46 >> 1)
    {
      v27 = sub_22F13E1A8((v46 > 1), v47 + 1, 1, v27);
    }

    *(v27 + 16) = v47 + 1;
    v48 = v27 + 16 * v47;
    *(v48 + 32) = 0x6B726F77747261;
    *(v48 + 40) = 0xE700000000000000;
  }

LABEL_29:
  if (!v132)
  {
    if (!v133)
    {
      goto LABEL_31;
    }

LABEL_40:
    v52 = [objc_opt_self() musicCurationShouldUseOldStylePreviewURL];
    v54 = *(v27 + 16);
    v53 = *(v27 + 24);
    v55 = v54 + 1;
    if (v52)
    {
      if (v53 >> 1 <= v54)
      {
        v27 = sub_22F13E1A8((v53 > 1), v54 + 1, 1, v27);
      }

      *(v27 + 16) = v55;
      v56 = v27 + 16 * v54;
      *(v56 + 32) = 0x7377656976657270;
      *(v56 + 40) = 0xE800000000000000;
      if (qword_2810A9440 != -1)
      {
        swift_once();
      }

      v57 = sub_22F740B90();
      __swift_project_value_buffer(v57, qword_2810B4D48);
      v58 = sub_22F740B70();
      v59 = sub_22F7415C0();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_22F0FC000, v58, v59, "[Warning-Music][MusicKitClient] Custom default 'musicCurationShouldUseOldStylePreviewURL' is set to true so MusicKitClient will fetch the old style preview url.", v60, 2u);
        MEMORY[0x2319033A0](v60, -1, -1);
      }

      if (v134)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v53 >> 1 <= v54)
      {
        v27 = sub_22F13E1A8((v53 > 1), v54 + 1, 1, v27);
      }

      *(v27 + 16) = v55;
      v61 = v27 + 16 * v54;
      strcpy((v61 + 32), "introPreview");
      *(v61 + 45) = 0;
      *(v61 + 46) = -5120;
      if (v134)
      {
        goto LABEL_52;
      }
    }

LABEL_32:
    if (!v135)
    {
      goto LABEL_33;
    }

    goto LABEL_55;
  }

  v50 = *(v27 + 16);
  v49 = *(v27 + 24);
  if (v50 >= v49 >> 1)
  {
    v27 = sub_22F13E1A8((v49 > 1), v50 + 1, 1, v27);
  }

  *(v27 + 16) = v50 + 1;
  v51 = v27 + 16 * v50;
  *(v51 + 32) = 7107189;
  *(v51 + 40) = 0xE300000000000000;
  if (v133)
  {
    goto LABEL_40;
  }

LABEL_31:
  if (!v134)
  {
    goto LABEL_32;
  }

LABEL_52:
  v63 = *(v27 + 16);
  v62 = *(v27 + 24);
  if (v63 >= v62 >> 1)
  {
    v27 = sub_22F13E1A8((v62 > 1), v63 + 1, 1, v27);
  }

  *(v27 + 16) = v63 + 1;
  v64 = v27 + 16 * v63;
  *(v64 + 32) = 0x636F4C6F69647561;
  *(v64 + 40) = 0xEB00000000656C61;
  if (!v135)
  {
LABEL_33:
    if (!v136)
    {
      goto LABEL_34;
    }

    goto LABEL_58;
  }

LABEL_55:
  v66 = *(v27 + 16);
  v65 = *(v27 + 24);
  if (v66 >= v65 >> 1)
  {
    v27 = sub_22F13E1A8((v65 > 1), v66 + 1, 1, v27);
  }

  *(v27 + 16) = v66 + 1;
  v67 = v27 + 16 * v66;
  *(v67 + 32) = 0x73676174696E75;
  *(v67 + 40) = 0xE700000000000000;
  if (!v136)
  {
LABEL_34:
    if (!v137)
    {
      goto LABEL_35;
    }

    goto LABEL_61;
  }

LABEL_58:
  v69 = *(v27 + 16);
  v68 = *(v27 + 24);
  if (v69 >= v68 >> 1)
  {
    v27 = sub_22F13E1A8((v68 > 1), v69 + 1, 1, v27);
  }

  *(v27 + 16) = v69 + 1;
  v70 = v27 + 16 * v69;
  strcpy((v70 + 32), "contentRating");
  *(v70 + 46) = -4864;
  if (!v137)
  {
LABEL_35:
    if (!v138)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

LABEL_61:
  v72 = *(v27 + 16);
  v71 = *(v27 + 24);
  if (v72 >= v71 >> 1)
  {
    v27 = sub_22F13E1A8((v71 > 1), v72 + 1, 1, v27);
  }

  *(v27 + 16) = v72 + 1;
  v73 = v27 + 16 * v72;
  *(v73 + 32) = 0xD00000000000001ELL;
  *(v73 + 40) = 0x800000022F790010;
  if (v138)
  {
LABEL_64:
    v75 = *(v27 + 16);
    v74 = *(v27 + 24);
    if (v75 >= v74 >> 1)
    {
      v27 = sub_22F13E1A8((v74 > 1), v75 + 1, 1, v27);
    }

    *(v27 + 16) = v75 + 1;
    v76 = v27 + 16 * v75;
    *(v76 + 32) = 0x50746E65746E6F63;
    *(v76 + 40) = 0xEF72656469766F72;
  }

LABEL_67:
  if (!v151)
  {
    v77 = MEMORY[0x277D84F90];
    if (!v150)
    {
      goto LABEL_78;
    }

    goto LABEL_73;
  }

  v77 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
  v79 = *(v77 + 2);
  v78 = *(v77 + 3);
  if (v79 >= v78 >> 1)
  {
    v77 = sub_22F13E1A8((v78 > 1), v79 + 1, 1, v77);
  }

  *(v77 + 2) = v79 + 1;
  v80 = &v77[16 * v79];
  *(v80 + 4) = 0x65636E656C6176;
  *(v80 + 5) = 0xE700000000000000;
  if (v150)
  {
LABEL_73:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_22F13E1A8(0, *(v77 + 2) + 1, 1, v77);
    }

    v82 = *(v77 + 2);
    v81 = *(v77 + 3);
    if (v82 >= v81 >> 1)
    {
      v77 = sub_22F13E1A8((v81 > 1), v82 + 1, 1, v77);
    }

    *(v77 + 2) = v82 + 1;
    v83 = &v77[16 * v82];
    *(v83 + 4) = 0x6C6173756F7261;
    *(v83 + 5) = 0xE700000000000000;
  }

LABEL_78:
  if (!v149)
  {
    if (!v147)
    {
      goto LABEL_91;
    }

    goto LABEL_86;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v77 = sub_22F13E1A8(0, *(v77 + 2) + 1, 1, v77);
  }

  v85 = *(v77 + 2);
  v84 = *(v77 + 3);
  if (v85 >= v84 >> 1)
  {
    v77 = sub_22F13E1A8((v84 > 1), v85 + 1, 1, v77);
  }

  *(v77 + 2) = v85 + 1;
  v86 = &v77[16 * v85];
  *(v86 + 4) = 0x65546C6175736976;
  *(v86 + 5) = 0xEB000000006F706DLL;
  if (v147)
  {
LABEL_86:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_22F13E1A8(0, *(v77 + 2) + 1, 1, v77);
    }

    v88 = *(v77 + 2);
    v87 = *(v77 + 3);
    if (v88 >= v87 >> 1)
    {
      v77 = sub_22F13E1A8((v87 > 1), v88 + 1, 1, v77);
    }

    *(v77 + 2) = v88 + 1;
    v89 = &v77[16 * v88];
    *(v89 + 4) = 0x6E696F5074697865;
    *(v89 + 5) = 0xEA00000000007374;
  }

LABEL_91:
  if (v148)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_22F13E1A8(0, *(v77 + 2) + 1, 1, v77);
    }

    v95 = *(v77 + 2);
    v94 = *(v77 + 3);
    if (v95 >= v94 >> 1)
    {
      v77 = sub_22F13E1A8((v94 > 1), v95 + 1, 1, v77);
    }

    *(v77 + 2) = v95 + 1;
    v96 = &v77[16 * v95];
    *(v96 + 4) = 0x696F507972746E65;
    *(v96 + 5) = 0xEB0000000073746ELL;
    if (!v146)
    {
LABEL_93:
      if (v32)
      {
        goto LABEL_94;
      }

LABEL_108:
      v90 = MEMORY[0x277D84F90];
      if (!v153)
      {
        goto LABEL_114;
      }

      goto LABEL_109;
    }
  }

  else if (!v146)
  {
    goto LABEL_93;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v77 = sub_22F13E1A8(0, *(v77 + 2) + 1, 1, v77);
  }

  v98 = *(v77 + 2);
  v97 = *(v77 + 3);
  if (v98 >= v97 >> 1)
  {
    v77 = sub_22F13E1A8((v97 > 1), v98 + 1, 1, v77);
  }

  *(v77 + 2) = v98 + 1;
  v99 = &v77[16 * v98];
  *(v99 + 4) = 0x6576456F65646976;
  *(v99 + 5) = 0xEB0000000073746ELL;
  if (!v32)
  {
    goto LABEL_108;
  }

LABEL_94:
  v90 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
  v92 = *(v90 + 2);
  v91 = *(v90 + 3);
  if (v92 >= v91 >> 1)
  {
    v90 = sub_22F13E1A8((v91 > 1), v92 + 1, 1, v90);
  }

  *(v90 + 2) = v92 + 1;
  v93 = &v90[16 * v92];
  *(v93 + 4) = 0x7373656E64756F6CLL;
  *(v93 + 5) = 0xE800000000000000;
  if (v153)
  {
LABEL_109:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = sub_22F13E1A8(0, *(v90 + 2) + 1, 1, v90);
    }

    v101 = *(v90 + 2);
    v100 = *(v90 + 3);
    if (v101 >= v100 >> 1)
    {
      v90 = sub_22F13E1A8((v100 > 1), v101 + 1, 1, v90);
    }

    *(v90 + 2) = v101 + 1;
    v102 = &v90[16 * v101];
    *(v102 + 4) = 0x796772656E65;
    *(v102 + 5) = 0xE600000000000000;
  }

LABEL_114:
  if (v152)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = sub_22F13E1A8(0, *(v90 + 2) + 1, 1, v90);
    }

    v104 = *(v90 + 2);
    v103 = *(v90 + 3);
    if (v104 >= v103 >> 1)
    {
      v90 = sub_22F13E1A8((v103 > 1), v104 + 1, 1, v90);
    }

    *(v90 + 2) = v104 + 1;
    v105 = &v90[16 * v104];
    *(v105 + 4) = 0x65636E656C6176;
    *(v105 + 5) = 0xE700000000000000;
  }

  v106 = v144;
  if ((v151 | v150 | v149 | v147 | v148 | v146))
  {
    v107 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
    v109 = *(v107 + 2);
    v108 = *(v107 + 3);
    if (v109 >= v108 >> 1)
    {
      v107 = sub_22F13E1A8((v108 > 1), v109 + 1, 1, v107);
    }

    *(v107 + 2) = v109 + 1;
    v110 = &v107[16 * v109];
    *(v110 + 4) = 0x612D6C6D78656C66;
    *(v110 + 5) = 0xEF736973796C616ELL;
  }

  else
  {
    v107 = MEMORY[0x277D84F90];
  }

  if ((v32 | v153 | v152))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_22F13E1A8(0, *(v107 + 2) + 1, 1, v107);
    }

    v112 = *(v107 + 2);
    v111 = *(v107 + 3);
    if (v112 >= v111 >> 1)
    {
      v107 = sub_22F13E1A8((v111 > 1), v112 + 1, 1, v107);
    }

    *(v107 + 2) = v112 + 1;
    v113 = &v107[16 * v112];
    strcpy(v113 + 32, "audio-analysis");
    v113[47] = -18;
  }

  if (!*(v27 + 16))
  {

    v114 = MEMORY[0x277D84F90];
    if (*(v77 + 2))
    {
      goto LABEL_135;
    }

LABEL_151:

    if (*(v90 + 2))
    {
      goto LABEL_140;
    }

    goto LABEL_152;
  }

  v154 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  sub_22F740DA0();

  sub_22F73F0A0();

  v114 = sub_22F13EDB8(0, 1, 1, MEMORY[0x277D84F90]);
  v116 = v114[2];
  v115 = v114[3];
  if (v116 >= v115 >> 1)
  {
    v114 = sub_22F13EDB8((v115 > 1), v116 + 1, 1, v114);
  }

  v114[2] = v116 + 1;
  (*(v29 + 32))(v114 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v116, v145, v106);
  if (!*(v77 + 2))
  {
    goto LABEL_151;
  }

LABEL_135:
  v154 = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  sub_22F740DA0();

  v117 = v129;
  sub_22F73F0A0();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v114 = sub_22F13EDB8(0, v114[2] + 1, 1, v114);
  }

  v119 = v114[2];
  v118 = v114[3];
  if (v119 >= v118 >> 1)
  {
    v114 = sub_22F13EDB8((v118 > 1), v119 + 1, 1, v114);
  }

  v114[2] = v119 + 1;
  (*(v29 + 32))(v114 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v119, v117, v106);
  if (*(v90 + 2))
  {
LABEL_140:
    v154 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F15A2C0();
    sub_22F740DA0();

    sub_22F73F0A0();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = sub_22F13EDB8(0, v114[2] + 1, 1, v114);
    }

    v120 = v142;
    v122 = v114[2];
    v121 = v114[3];
    if (v122 >= v121 >> 1)
    {
      v114 = sub_22F13EDB8((v121 > 1), v122 + 1, 1, v114);
    }

    v114[2] = v122 + 1;
    (*(v29 + 32))(v114 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v122, v44, v106);
    if (*(v107 + 2))
    {
      goto LABEL_145;
    }

LABEL_153:

    v123 = v143;
    goto LABEL_154;
  }

LABEL_152:

  v120 = v142;
  if (!*(v107 + 2))
  {
    goto LABEL_153;
  }

LABEL_145:
  v154 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  sub_22F740DA0();

  sub_22F73F0A0();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v114 = sub_22F13EDB8(0, v114[2] + 1, 1, v114);
  }

  v123 = v143;
  v125 = v114[2];
  v124 = v114[3];
  if (v125 >= v124 >> 1)
  {
    v114 = sub_22F13EDB8((v124 > 1), v125 + 1, 1, v114);
  }

  v114[2] = v125 + 1;
  (*(v29 + 32))(v114 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v125, v120, v106);
LABEL_154:
  sub_22F73F0A0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v114 = sub_22F13EDB8(0, v114[2] + 1, 1, v114);
  }

  v127 = v114[2];
  v126 = v114[3];
  if (v127 >= v126 >> 1)
  {
    v114 = sub_22F13EDB8((v126 > 1), v127 + 1, 1, v114);
  }

  v114[2] = v127 + 1;
  (*(v29 + 32))(v114 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v127, v123, v106);
  return v114;
}

uint64_t sub_22F1F3A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v39 = a2;
  v2 = sub_22F73F7D0();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22F73F9B0();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E8, &qword_22F77A2E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_22F73F270();
  v30 = *(v12 - 8);
  v31 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F73F690();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F550();
  v19 = sub_22F73F660();
  v20 = *(v16 + 8);
  v20(v18, v15);
  if (v19 != 1)
  {
    return (*(v16 + 56))(v39, 1, 1, v15);
  }

  sub_22F73F570();
  v21 = sub_22F73F660();
  v20(v18, v15);
  if (v21 != 1)
  {
    return (*(v16 + 56))(v39, 1, 1, v15);
  }

  v23 = v35;
  v22 = v36;
  (*(v35 + 56))(v11, 1, 1, v36);
  v24 = sub_22F73FA10();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_22F73F250();
  v26 = v37;
  v25 = v38;
  v27 = v34;
  (*(v37 + 104))(v34, *MEMORY[0x277CC9830], v38);
  v28 = v32;
  sub_22F73F7E0();
  (*(v26 + 8))(v27, v25);
  sub_22F73F930();
  (*(v23 + 8))(v28, v22);
  return (*(v30 + 8))(v14, v31);
}

uint64_t sub_22F1F3EE8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_22F73F7D0();
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22F73F9B0();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22F73F690();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F550();
  v11 = sub_22F73F660();
  v12 = *(v8 + 8);
  v12(v10, v7);
  if (v11 == 1 && (sub_22F73F570(), v13 = sub_22F73F660(), v12(v10, v7), v13 == 1))
  {
    v14 = v21;
    (*(v21 + 104))(v3, *MEMORY[0x277CC9830], v1);
    sub_22F73F7E0();
    (*(v14 + 8))(v3, v1);
    v15 = v22;
    sub_22F73F800();
    (*(v19 + 8))(v6, v20);
    v16 = v15;
    v17 = 0;
  }

  else
  {
    v17 = 1;
    v16 = v22;
  }

  return (*(v8 + 56))(v16, v17, 1, v7);
}

uint64_t sub_22F1F41AC@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = sub_22F73F690();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F550();
  v16 = sub_22F73F660();
  v17 = *(v13 + 8);
  v17(v15, v12);
  if (v16 == 1)
  {
    sub_22F73F570();
    v18 = sub_22F73F660();
    v17(v15, v12);
    if (v18 == 1)
    {
      sub_22F1F3EE8(v11);
      sub_22F13BA9C(v11, v5, &qword_27DAB0920, &qword_22F770B20);
      v19 = *(v13 + 48);
      if (v19(v5, 1, v12) == 1)
      {
        sub_22F120ADC(v5, &qword_27DAB0920, &qword_22F770B20);
        (*(v13 + 56))(v8, 1, 1, v12);
      }

      else
      {
        sub_22F1F3A00(1, v8);
        v17(v5, v12);
      }

      v20 = v25;
      sub_22F13BA9C(v8, v25, &qword_27DAB0920, &qword_22F770B20);
      if (v19(v20, 1, v12) != 1)
      {
        v24 = v26;
        sub_22F73F5A0();
        sub_22F120ADC(v8, &qword_27DAB0920, &qword_22F770B20);
        sub_22F120ADC(v11, &qword_27DAB0920, &qword_22F770B20);
        v17(v20, v12);
        v22 = v24;
        v21 = 0;
        return (*(v13 + 56))(v22, v21, 1, v12);
      }

      sub_22F120ADC(v8, &qword_27DAB0920, &qword_22F770B20);
      sub_22F120ADC(v11, &qword_27DAB0920, &qword_22F770B20);
      sub_22F120ADC(v20, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  v21 = 1;
  v22 = v26;
  return (*(v13 + 56))(v22, v21, 1, v12);
}

uint64_t sub_22F1F4550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v51 = a2;
  v4 = sub_22F73F7D0();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v44 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22F73F9B0();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22F73F270();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_22F73FA10();
  v50 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v49 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22F73F690();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F550();
  v22 = sub_22F73F660();
  v23 = *(v19 + 8);
  v23(v21, v18);
  if (v22 != 1)
  {
    return (*(v19 + 56))(v51, 1, 1, v18);
  }

  sub_22F73F570();
  v24 = sub_22F73F660();
  v23(v21, v18);
  if (v24 != 1)
  {
    return (*(v19 + 56))(v51, 1, 1, v18);
  }

  v25 = v3;
  sub_22F13BA9C(v48, v12, &qword_27DAB24E0, &unk_22F77C6B0);
  v26 = v50;
  v27 = *(v50 + 48);
  if (v27(v12, 1, v16) == 1)
  {
    sub_22F73F9D0();
    if (v27(v12, 1, v16) != 1)
    {
      sub_22F120ADC(v12, &qword_27DAB24E0, &unk_22F77C6B0);
    }
  }

  else
  {
    (*(v26 + 32))(v15, v12, v16);
    (*(v26 + 56))(v15, 0, 1, v16);
  }

  if (v27(v15, 1, v16) == 1)
  {
    sub_22F120ADC(v15, &qword_27DAB24E0, &unk_22F77C6B0);
    v29 = v51;
    (*(v19 + 16))(v51, v25, v18);
    return (*(v19 + 56))(v29, 0, 1, v18);
  }

  else
  {
    (*(v26 + 32))(v49, v15, v16);
    LODWORD(v48) = *MEMORY[0x277CC9830];
    v31 = v46;
    v30 = v47;
    v37 = *(v46 + 104);
    v32 = v44;
    v37(v44);
    v33 = v41;
    sub_22F73F7E0();
    v46 = *(v31 + 8);
    (v46)(v32, v30);
    v34 = v39;
    sub_22F73F840();
    v43 = *(v43 + 8);
    v35 = v45;
    (v43)(v33, v45);
    sub_22F73F9D0();
    sub_22F73F260();
    (v37)(v32, v48, v30);
    sub_22F73F7E0();
    (v46)(v32, v30);
    sub_22F73F920();
    (v43)(v33, v35);
    (*(v40 + 8))(v34, v42);
    return (*(v50 + 8))(v49, v16);
  }
}

uint64_t type metadata accessor for PublicEventTimeAndLocation(uint64_t a1)
{
  result = qword_27DAB24F0;
  if (!qword_27DAB24F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22F1F4C6C(uint64_t a1)
{
  type metadata accessor for CLLocationCoordinate2D(319);
  if (v1 <= 0x3F)
  {
    sub_22F73F690();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22F1F4D04()
{
  sub_22F742170();
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t sub_22F1F4D50(uint64_t a1)
{
  sub_22F742170();
  sub_22F740D60();
  return sub_22F7421D0();
}

unint64_t sub_22F1F4D94()
{
  result = qword_27DAB2500;
  if (!qword_27DAB2500)
  {
    type metadata accessor for PublicEventTimeAndLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2500);
  }

  return result;
}

void sub_22F1F4DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *(v3 + 8);
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v5 = sub_22F740B90();
  __swift_project_value_buffer(v5, qword_2810B4CE0);
  v6 = sub_22F740B70();
  v7 = sub_22F7415F0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22F0FC000, v6, v7, "Anniversary grounding has started.", v8, 2u);
    MEMORY[0x2319033A0](v8, -1, -1);
  }

  v9 = objc_opt_self();
  v10 = sub_22F740DF0();
  v11 = [v9 personNodesForLocalIdentifier:v10 inGraph:v20];

  v12 = [v11 anniversaryMomentNodes];
  v13 = [v12 uuids];

  v14 = sub_22F741420();
  if (a3)
  {

    v15 = sub_22F1ABBB4(a3, v14);

    v14 = v15;
  }

  if (*(v14 + 16) || (, (v17 = [v11 firstNode]) == 0))
  {
    sub_22F7407A0();
    v16 = v11;
  }

  else
  {
    v21 = v17;
    v18 = sub_22F1F5074(v17);
    if (a3)
    {
      v19 = v18;

      sub_22F1ABBB4(a3, v19);
    }

    sub_22F7407A0();

    v16 = v21;
  }
}

uint64_t sub_22F1F5074(void *a1)
{
  v3 = sub_22F73F270();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v1;
  v7 = *(v1 + 2);
  v8 = [a1 anniversaryDateComponents];
  if (v8)
  {
    v9 = v8;
    sub_22F73F1B0();

    v33 = v32;
    v34 = v7;
    v10 = sub_22F1F5444();
    if (v10)
    {
      v11 = v10;
      if ([v10 count] >= 1)
      {
        v12 = [v11 momentNodes];
        v13 = [v12 uuids];

        v14 = sub_22F741420();
        (*(v4 + 8))(v6, v3);
        return v14;
      }
    }

    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v27 = sub_22F740B90();
    __swift_project_value_buffer(v27, qword_2810B4CE0);
    v28 = sub_22F740B70();
    v29 = sub_22F7415E0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22F0FC000, v28, v29, "No anniversary date nodes are found", v30, 2u);
      MEMORY[0x2319033A0](v30, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4CE0);
    v17 = a1;
    v18 = sub_22F740B70();
    v19 = sub_22F7415F0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v33 = v21;
      *v20 = 136315138;
      v22 = [v17 localIdentifier];
      if (v22)
      {
        v23 = v22;
        v24 = sub_22F740E20();
        v26 = v25;
      }

      else
      {
        v26 = 0xE300000000000000;
        v24 = 7104878;
      }

      v31 = sub_22F145F20(v24, v26, &v33);

      *(v20 + 4) = v31;
      _os_log_impl(&dword_22F0FC000, v18, v19, "No anniversary date components for person localIdentifier %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x2319033A0](v21, -1, -1);
      MEMORY[0x2319033A0](v20, -1, -1);
    }
  }

  return MEMORY[0x277D84FA0];
}

void *sub_22F1F5444()
{
  v1 = *(v0 + 8);
  v2 = sub_22F73F1F0();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = sub_22F73F1C0();
  if (v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = sub_22F73F210();
  if (v9)
  {
    return 0;
  }

  v11 = v8;
  v12 = [objc_opt_self() dayNodesForDay:v7 inGraph:v1];
  v13 = [v12 dateNodes];

  v14 = [objc_opt_self() monthNodesForMonth:v11 inGraph:v1];
  v15 = [v14 dateNodes];

  v16 = [objc_opt_self() yearNodesLargerThanYear:v4 inGraph:v1];
  v17 = [v16 dateNodes];

  v18 = [v13 collectionByIntersecting_];
  v19 = [v18 collectionByIntersecting_];

  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v20 = sub_22F740B90();
  __swift_project_value_buffer(v20, qword_2810B4CE0);
  v21 = v19;
  v22 = sub_22F740B70();
  v23 = sub_22F7415F0();
  v24 = v21;

  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v34 = v13;
    v35 = swift_slowAlloc();
    v26 = v35;
    *v25 = 136315138;
    v27 = [v24 dateNames];
    v28 = MEMORY[0x277D837D0];
    v29 = sub_22F741180();

    v30 = MEMORY[0x231900D40](v29, v28);
    v32 = v31;

    v33 = sub_22F145F20(v30, v32, &v35);

    *(v25 + 4) = v33;
    _os_log_impl(&dword_22F0FC000, v22, v23, "All potential anniversary dates = %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x2319033A0](v26, -1, -1);
    MEMORY[0x2319033A0](v25, -1, -1);
  }

  else
  {
  }

  return v24;
}

unint64_t get_enum_tag_for_layout_string_11PhotosGraph27EventClusterFeaturizerErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_22F1F57D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22F1F5834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_22F1F589C(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_22F77A0B0;
  }

  return result;
}

uint64_t LibraryAveragePersonCountFeatureExtractor.featureNames.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F771340;
  *(v0 + 32) = sub_22F740E20();
  *(v0 + 40) = v1;
  return v0;
}

id LibraryAveragePersonCountFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LibraryAveragePersonCountFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LibraryAveragePersonCountFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F1F5C18(void *a1)
{
  v2 = [a1 count];
  if (v2 < 1)
  {
    sub_22F1F5FB0();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
  }

  else
  {
    v3 = v2;
    v4 = [a1 photoLibrary];
    v5 = [v4 librarySpecificFetchOptions];

    [v5 setIncludeTorsoOnlyPerson_];
    [v5 setPersonContext_];
    sub_22F741BD0();
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
    sub_22F741BA0();
    sub_22F741BE0();
    sub_22F741BF0();
    sub_22F741BB0();
    sub_22F170D8C();
    v6 = sub_22F741160();

    [v5 setIncludedDetectionTypes_];

    v7 = [objc_opt_self() fetchPersonCountGroupedByAssetLocalIdentifierForAssets:a1 options:v5];
    if (v7)
    {
      v8 = v7;
      v9 = sub_22F740CA0();

      v10 = 1 << *(v9 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v9 + 64);
      v13 = (v10 + 63) >> 6;

      v14 = 0;
      for (i = 0.0; v12; i = i + v18)
      {
        v16 = v14;
LABEL_11:
        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        [*(*(v9 + 56) + ((v16 << 9) | (8 * v17))) floatValue];
      }

      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v16 >= v13)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_22F771340;
          *(v19 + 32) = i / v3;
          v20 = objc_allocWithZone(sub_22F73FBE0());
          v21 = MEMORY[0x2318FF780](v19);
          [objc_allocWithZone(MEMORY[0x277D22C40]) initWithWrapper_];

          return;
        }

        v12 = *(v9 + 64 + 8 * v16);
        ++v14;
        if (v12)
        {
          v14 = v16;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
      sub_22F1F5FB0();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
    }
  }
}

unint64_t sub_22F1F5FB0()
{
  result = qword_27DAB2508;
  if (!qword_27DAB2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2508);
  }

  return result;
}

unint64_t sub_22F1F6018()
{
  result = qword_27DAB2510;
  if (!qword_27DAB2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2510);
  }

  return result;
}

void *ExtendedTokenCollectionGenerator.generateTimeExtendedTokens(for:momentNodes:)(uint64_t a1, void *a2)
{
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v5 = sub_22F740B90();
  __swift_project_value_buffer(v5, qword_2810B4D00);
  v6 = sub_22F740B70();
  v7 = sub_22F7415C0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22F0FC000, v6, v7, "generateTimeExtendedTokens for query tokens has started.", v8, 2u);
    MEMORY[0x2319033A0](v8, -1, -1);
  }

  v19 = MEMORY[0x277D84F98];
  v9 = [a2 dateNodes];
  v10 = swift_allocObject();
  *(v10 + 16) = &v19;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22F1F657C;
  *(v11 + 24) = v10;
  aBlock[4] = sub_22F1F68E8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_7;
  v12 = _Block_copy(aBlock);

  [v9 enumerateUsingBlock_];
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {

    v14 = sub_22F1FF988(a1, v2, &v19);

    v15 = sub_22F740B70();
    v16 = sub_22F7415F0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22F0FC000, v15, v16, "generateTimeExtendedTokens for query tokens complete.", v17, 2u);
      MEMORY[0x2319033A0](v17, -1, -1);
    }

    return v14;
  }

  return result;
}

uint64_t ExtendedTokenCollectionGenerator.generateTimeExtendedTokens(for:timeQueryExtendedTokens:)(void *a1, uint64_t a2)
{
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v4 = sub_22F740B90();
  __swift_project_value_buffer(v4, qword_2810B4D00);
  v5 = sub_22F740B70();
  v6 = sub_22F7415C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22F0FC000, v5, v6, "generateTimeExtendedTokens for collection tokens has started.", v7, 2u);
    MEMORY[0x2319033A0](v7, -1, -1);
  }

  if (*(a2 + 16))
  {
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = sub_22F200C0C(a1);
  }

  v9 = sub_22F1F8BA0(a1);
  v10 = sub_22F740B70();
  v11 = sub_22F7415C0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22F0FC000, v10, v11, "generateTimeExtendedTokens for collection tokens complete.", v12, 2u);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  sub_22F144C20(v13, v8);
  sub_22F144C20(v14, v9);
  return a2;
}

void sub_22F1F651C(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = objc_autoreleasePoolPush();
  sub_22F1F6584(a1, a3);

  objc_autoreleasePoolPop(v5);
}

void sub_22F1F6584(void *a1, uint64_t *a2)
{
  v5 = sub_22F73F690();
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = &v38 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v38 - v15;
  v17 = [a1 seasonNode];
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v19 = [v17 localizedName];

  if (!v19)
  {
    return;
  }

  v41 = v2;
  sub_22F740E20();

  v20 = sub_22F740EA0();
  v22 = v21;

  v23 = [a1 localDate];
  if (!v23)
  {

    return;
  }

  v24 = v20;
  v25 = v23;
  sub_22F73F640();

  v26 = v43;
  (*(v43 + 32))(v16, v12, v5);
  (*(v26 + 16))(v7, v16, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v22;
  v29 = isUniquelyReferenced_nonNull_native;
  v44 = *a2;
  v30 = v44;
  *a2 = 0x8000000000000000;
  v39 = v24;
  v40 = v28;
  sub_22F1229E8(v24, v28);
  v32 = *(v30 + 16);
  v33 = (v31 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    __break(1u);
LABEL_16:
    sub_22F1353A4();
    goto LABEL_10;
  }

  LOBYTE(v26) = v31;
  if (*(v30 + 24) < v34)
  {
    sub_22F1275BC(v34, v29);
    sub_22F1229E8(v39, v40);
    if ((v26 & 1) != (v35 & 1))
    {
      sub_22F7420C0();
      __break(1u);
      return;
    }

    goto LABEL_10;
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  *a2 = v44;

  if (v26)
  {
  }

  else
  {
    sub_22F1534CC();
  }

  v36 = v42;
  sub_22F10C984(v42, v7);
  v37 = *(v43 + 8);
  v37(v36, v5);
  v37(v16, v5);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F1F6928@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v161 = a2;
  v176 = a1;
  v184 = a3;
  v158 = sub_22F740890();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v171 = v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_22F73F690();
  v170 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v162 = v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v164 = v136 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  MEMORY[0x28223BE20](v8 - 8);
  v169 = v136 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E8, &qword_22F77A2E0);
  MEMORY[0x28223BE20](v10 - 8);
  v177 = v136 - v11;
  v160 = sub_22F73F270();
  v168 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v154 = v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v156 = v136 - v14;
  MEMORY[0x28223BE20](v15);
  v178 = v136 - v16;
  MEMORY[0x28223BE20](v17);
  v167 = v136 - v18;
  MEMORY[0x28223BE20](v19);
  v181 = v136 - v20;
  v183 = sub_22F7404D0();
  v188 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v175 = v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v185 = v136 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  MEMORY[0x28223BE20](v24 - 8);
  v159 = v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v155 = v136 - v27;
  MEMORY[0x28223BE20](v28);
  v174 = v136 - v29;
  MEMORY[0x28223BE20](v30);
  v173 = v136 - v31;
  v32 = sub_22F740270();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v172 = v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = (v136 - v36);
  v38 = sub_22F7403B0();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = v136 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v186 = v136 - v43;
  v44 = sub_22F73FD40();
  if (*(v44 + 16))
  {
    v182 = v3;
    (*(v39 + 16))(v41, v44 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v38);

    (*(v39 + 32))(v186, v41, v38);
    v165 = sub_22F73FD50();
    v180 = v45;
    v166 = sub_22F73FD90();
    *v37 = sub_22F73FD80();
    (*(v33 + 104))(v37, *MEMORY[0x277D3C2B8], v32);
    v46 = v185;
    sub_22F7403A0();
    v47 = *(v188 + 88);
    v48 = v183;
    v49 = v47(v46, v183);
    v50 = *MEMORY[0x277D3C4D8];
    v51 = v37;
    v179 = v32;
    if (v49 == v50)
    {
      v52 = v185;
      (*(v188 + 96))(v185, v48);
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB0, &unk_22F777710) + 48);
      v54 = v173;
      sub_22F2030D4(v52, v173);
      v55 = v174;
      sub_22F2030D4(v52 + v53, v174);
      sub_22F1F7F3C(v165, v180, v51, v54, v55, v166, v184);

      sub_22F120ADC(v55, &qword_27DAB1EB8, &unk_22F77A2D0);
      sub_22F120ADC(v54, &qword_27DAB1EB8, &unk_22F77A2D0);
      (*(v33 + 8))(v51, v179);
      return (*(v39 + 8))(v186, v38);
    }

    v176 = v37;
    v153 = v39;
    v173 = v38;
    v174 = v33;
    v62 = *(v188 + 8);
    v62(v185, v48);
    v63 = v175;
    v64 = v186;
    sub_22F7403A0();
    v65 = v183;
    if (v47(v63, v183) != *MEMORY[0x277D3C500])
    {

      (*(v174 + 8))(v176, v179);
      (*(v153 + 8))(v64, v173);
      v62(v63, v65);
      v77 = sub_22F740120();
      return (*(*(v77 - 8) + 56))(v184, 1, 1, v77);
    }

    (*(v188 + 96))(v63, v65);
    v66 = sub_22F740A70();
    (*(*(v66 - 8) + 8))(v63, v66);
    v67 = sub_22F740EA0();
    v69 = *v161;
    v70 = v182;
    if (*(*v161 + 16))
    {
      v71 = sub_22F1229E8(v67, v68);
      v73 = v72;

      v74 = v177;
      if (v73)
      {
        v75 = *(*(v69 + 56) + 8 * v71);

        v76 = *(v75 + 16);
        if (!v76)
        {
          goto LABEL_19;
        }

LABEL_16:
        v78 = sub_22F10B2E8(v76, 0);
        sub_22F11B4EC(&v187, &v78[(*(v170 + 80) + 32) & ~*(v170 + 80)], v76, v75);
        v80 = v79;
        v81 = v187;

        sub_22F0FF590(v81);
        if (v80 != v76)
        {
          __break(1u);
          goto LABEL_30;
        }

        v70 = v182;
        v74 = v177;
LABEL_20:
        v187 = v78;
        sub_22F1FAD44(&v187);
        v182 = v70;
        if (v70)
        {
LABEL_31:

          __break(1u);
          return result;
        }

        v82 = v187;
        v83 = sub_22F73F9B0();
        v84 = (*(v83 - 8) + 56);
        v175 = *v84;
        (v175)(v74, 1, 1, v83);
        v85 = sub_22F73FA10();
        v86 = *(v85 - 8);
        v87 = *(v86 + 56);
        v88 = v169;
        v188 = v85;
        v185 = v87;
        v183 = v86 + 56;
        (v87)(v169, 1, 1);
        sub_22F73F250();
        v89 = v170;
        if (!*(v82 + 16))
        {
          (v175)(v74, 1, 1, v83);
          (v185)(v88, 1, 1, v188);
          sub_22F73F250();

          v121 = v171;
          v122 = v158;
          v123 = v157;
          v120 = v160;
          v119 = v168;
LABEL_28:
          v128 = v174;
          (*(v174 + 16))(v172, v176, v179);
          (*(v123 + 104))(v121, *MEMORY[0x277D3C740], v122);
          v129 = *(v119 + 16);
          v130 = v181;
          v129(v167, v181, v120);
          v131 = v159;
          v132 = v178;
          v129(v159, v178, v120);
          (*(v119 + 56))(v131, 0, 1, v120);
          v133 = v184;
          sub_22F740100();
          v134 = *(v119 + 8);
          v134(v132, v120);
          v134(v130, v120);
          (*(v128 + 8))(v176, v179);
          (*(v153 + 8))(v186, v173);
          v135 = sub_22F740120();
          return (*(*(v135 - 8) + 56))(v133, 0, 1, v135);
        }

        v161 = *(v82 + 16);
        v90 = v82 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
        v91 = *(v170 + 16);
        v152 = v82;
        v142 = v90;
        v151 = v83;
        v92 = v163;
        v144 = v170 + 16;
        v143 = v91;
        (v91)(v164);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
        v93 = sub_22F73F990();
        v94 = *(v93 - 8);
        v95 = *(v94 + 72);
        v96 = v89;
        v97 = *(v94 + 80);
        v98 = (v97 + 32) & ~v97;
        v146 = 2 * v95;
        v138 = v97;
        v99 = swift_allocObject();
        *(v99 + 16) = xmmword_22F770DF0;
        v150 = v84;
        v140 = v98;
        v100 = *(v94 + 104);
        v139 = *MEMORY[0x277CC9998];
        v100(v99 + v98);
        v101 = *MEMORY[0x277CC9968];
        v145 = v95;
        v137 = v101;
        v141 = v100;
        v100(v99 + v98 + v95);
        v102 = v96;
        sub_22F3D97CC(v99);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v103 = v167;
        v104 = v164;
        sub_22F7405A0();

        v105 = v104;
        v106 = v152;
        v164 = *(v102 + 8);
        v149 = v102 + 8;
        (v164)(v105, v92);
        v107 = v168;
        v108 = v181;
        v109 = v160;
        v148 = *(v168 + 8);
        v147 = v168 + 8;
        v148(v181, v160);
        v110 = *(v107 + 32);
        v136[1] = v107 + 32;
        v136[0] = v110;
        v110(v108, v103, v109);
        (v175)(v177, 1, 1, v151);
        (v185)(v169, 1, 1, v188);
        sub_22F73F250();
        if (v161 <= *(v106 + 16))
        {
          v111 = v163;
          v143(v162, v142 + *(v102 + 72) * (v161 - 1), v163);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
          v112 = v145;
          v113 = v140;
          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_22F7707D0;
          v115 = v114 + v113;
          v116 = v141;
          (v141)(v115, *MEMORY[0x277CC9988], v93);
          (v116)(v115 + v112, v139, v93);
          (v116)(v115 + v146, v137, v93);
          sub_22F3D97CC(v114);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v117 = v156;
          sub_22F7405A0();

          v118 = v155;
          sub_22F7405D0();
          v119 = v168;
          v120 = v109;
          if ((*(v168 + 48))(v118, 1, v109) == 1)
          {
            v148(v117, v109);
            (v164)(v162, v111);
            sub_22F120ADC(v118, &qword_27DAB1EB8, &unk_22F77A2D0);
          }

          else
          {
            v124 = v178;
            v125 = v109;
            v126 = v148;
            v148(v178, v125);
            v127 = v154;
            (v136[0])(v154, v118, v120);
            (*(v119 + 16))(v124, v127, v120);
            sub_22F73F200();
            v126(v127, v120);
            v126(v117, v120);
            (v164)(v162, v111);
          }

          v121 = v171;
          v122 = v158;
          v123 = v157;
          goto LABEL_28;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v75 = MEMORY[0x277D84FA0];
      v76 = *(MEMORY[0x277D84FA0] + 16);
      if (v76)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v75 = MEMORY[0x277D84FA0];
      v74 = v177;
      v76 = *(MEMORY[0x277D84FA0] + 16);
      if (v76)
      {
        goto LABEL_16;
      }
    }

LABEL_19:
    v78 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v57 = sub_22F740B90();
  __swift_project_value_buffer(v57, qword_2810B4D00);
  v58 = sub_22F740B70();
  v59 = sub_22F7415E0();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_22F0FC000, v58, v59, "The query token does not have any suggestions", v60, 2u);
    MEMORY[0x2319033A0](v60, -1, -1);
  }

  v61 = sub_22F740120();
  return (*(*(v61 - 8) + 56))(v184, 1, 1, v61);
}

uint64_t sub_22F1F7F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v105 = a6;
  v106 = a1;
  v109 = a5;
  v102 = a3;
  v107 = a2;
  v114 = a7;
  v8 = sub_22F740270();
  v99 = *(v8 - 8);
  v100 = v8;
  MEMORY[0x28223BE20](v8);
  v104 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22F740890();
  v103 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v101 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = &v87 - v12;
  MEMORY[0x28223BE20](v13);
  v108 = &v87 - v14;
  v112 = sub_22F73F9B0();
  v15 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v18 - 8);
  v95 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v87 - v21;
  v113 = sub_22F73F690();
  v115 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v92 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v111 = &v87 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  MEMORY[0x28223BE20](v26 - 8);
  v98 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v87 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v87 - v32;
  v34 = sub_22F73F270();
  MEMORY[0x28223BE20](v34);
  v97 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v94 = &v87 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v87 - v39;
  v41 = a4;
  v43 = v42;
  sub_22F13BA9C(v41, v33, &qword_27DAB1EB8, &unk_22F77A2D0);
  v44 = *(v43 + 48);
  if (v44(v33, 1, v34) != 1)
  {
    v96 = v43;
    v90 = *(v43 + 32);
    v90(v40, v33, v34);
    sub_22F740600();
    v91 = v40;
    sub_22F73F920();
    v89 = *(v15 + 8);
    v89(v17, v112);
    v88 = *(v115 + 48);
    v50 = v34;
    if (v88(v22, 1, v113) == 1)
    {
      sub_22F120ADC(v22, &qword_27DAB0920, &qword_22F770B20);
      if (qword_2810A9418 != -1)
      {
        swift_once();
      }

      v51 = sub_22F740B90();
      __swift_project_value_buffer(v51, qword_2810B4D00);
      v52 = sub_22F740B70();
      v53 = sub_22F7415E0();
      v54 = os_log_type_enabled(v52, v53);
      v45 = v114;
      v55 = v96;
      v56 = v91;
      if (v54)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_22F0FC000, v52, v53, "Could not generate date from start date components.", v57, 2u);
        MEMORY[0x2319033A0](v57, -1, -1);
      }

      (*(v55 + 8))(v56, v50);
      goto LABEL_13;
    }

    v59 = v22;
    v60 = v113;
    v87 = *(v115 + 32);
    v87(v111, v59, v113);
    sub_22F13BA9C(v109, v30, &qword_27DAB1EB8, &unk_22F77A2D0);
    if (v44(v30, 1, v34) == 1)
    {
      v61 = v34;
      v62 = &qword_27DAB1EB8;
      v63 = &unk_22F77A2D0;
      v64 = v30;
    }

    else
    {
      v65 = v60;
      v66 = v94;
      v90(v94, v30, v34);
      sub_22F740600();
      v67 = v95;
      sub_22F73F920();
      v89(v17, v112);
      if (v88(v67, 1, v65) != 1)
      {
        v61 = v34;
        v75 = v92;
        v87(v92, v67, v65);
        sub_22F73F590();
        v77 = v76;
        sub_22F741390();
        v69 = v103;
        if (v77 <= v78)
        {
          (*(v115 + 8))(v75, v65);
          (*(v96 + 8))(v66, v34);
          v82 = v93;
          v74 = v110;
          (*(v69 + 104))(v93, *MEMORY[0x277D3C730], v110);
        }

        else
        {
          sub_22F741370();
          v80 = v79;
          (*(v115 + 8))(v75, v65);
          (*(v96 + 8))(v66, v34);
          v74 = v110;
          if (v77 <= v80)
          {
            v81 = MEMORY[0x277D3C750];
          }

          else
          {
            v81 = MEMORY[0x277D3C738];
          }

          v82 = v93;
          (*(v69 + 104))(v93, *v81, v110);
        }

        v68 = v108;
        (*(v69 + 32))(v108, v82, v74);
LABEL_30:
        (*(v99 + 16))(v104, v102, v100);
        (*(v69 + 16))(v101, v68, v74);
        v83 = v96;
        v84 = v91;
        (*(v96 + 16))(v97, v91, v61);
        sub_22F13BA9C(v109, v98, &qword_27DAB1EB8, &unk_22F77A2D0);

        v45 = v114;
        sub_22F740100();
        (*(v69 + 8))(v108, v110);
        (*(v115 + 8))(v111, v113);
        (*(v83 + 8))(v84, v61);
        v58 = 0;
        goto LABEL_31;
      }

      v61 = v34;
      (*(v96 + 8))(v66, v34);
      v62 = &qword_27DAB0920;
      v63 = &qword_22F770B20;
      v64 = v67;
    }

    sub_22F120ADC(v64, v62, v63);
    v68 = v108;
    v69 = v103;
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v70 = sub_22F740B90();
    __swift_project_value_buffer(v70, qword_2810B4D00);
    v71 = sub_22F740B70();
    v72 = sub_22F7415F0();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_22F0FC000, v71, v72, "No valid end date components or date from date components, setting timeType to day", v73, 2u);
      MEMORY[0x2319033A0](v73, -1, -1);
    }

    v74 = v110;
    (*(v69 + 104))(v68, *MEMORY[0x277D3C730], v110);
    goto LABEL_30;
  }

  v45 = v114;
  sub_22F120ADC(v33, &qword_27DAB1EB8, &unk_22F77A2D0);
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v46 = sub_22F740B90();
  __swift_project_value_buffer(v46, qword_2810B4D00);
  v47 = sub_22F740B70();
  v48 = sub_22F7415E0();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_22F0FC000, v47, v48, "The query token did not have start date components, invalid date token", v49, 2u);
    MEMORY[0x2319033A0](v49, -1, -1);
  }

LABEL_13:
  v58 = 1;
LABEL_31:
  v85 = sub_22F740120();
  return (*(*(v85 - 8) + 56))(v45, v58, 1, v85);
}

uint64_t sub_22F1F8BA0(void *a1)
{
  v3 = *v1;
  v4 = [a1 count];
  if (v4 < 1)
  {
    if (qword_2810A9418 == -1)
    {
LABEL_7:
      v24 = sub_22F740B90();
      __swift_project_value_buffer(v24, qword_2810B4D00);
      v25 = sub_22F740B70();
      v26 = sub_22F7415E0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22F0FC000, v25, v26, "No moments from which to generate holiday extended time tokens!", v27, 2u);
        MEMORY[0x2319033A0](v27, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [objc_opt_self() celebratedHolidayOfMoment];
  v7 = [objc_msgSend(a1 graph)];
  swift_unknownObjectRelease();
  v8 = [v7 concreteGraph];

  if (v8)
  {
    v9 = v5;
    v10 = [a1 elementIdentifiers];
    v11 = [v8 adjacencyWithSources:v10 relation:v6];

    swift_unknownObjectRetain();
    v12 = [v11 transposed];
    swift_unknownObjectRelease();

    v13 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
    MEMORY[0x28223BE20](v13);
    *&v29[2] = v9;
    v29[3] = v14;
    v29[4] = v3;
    v15 = swift_allocObject();
    v15[2] = sub_22F202E74;
    v15[3] = v29;
    v15[4] = v12;
    v15[5] = v8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_22F202E80;
    *(v16 + 24) = v15;
    v35 = sub_22F15A3B8;
    v36 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v33 = sub_22F107F34;
    v34 = &block_descriptor_12;
    v17 = _Block_copy(&aBlock);
    v18 = v12;
    swift_unknownObjectRetain();

    [v18 enumerateTargetsBySourceWith_];
    _Block_release(v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
      v19 = [objc_allocWithZone(PGGraphHolidayNodeCollection) initWithGraph:*(v1 + 16) elementIdentifiers:v13];
      v20 = swift_allocObject();
      *(v20 + 16) = &v30;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_22F202E8C;
      *(v21 + 24) = v20;
      v35 = sub_22F15A678;
      v36 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_22F2136B4;
      v34 = &block_descriptor_21;
      v22 = _Block_copy(&aBlock);

      [v19 enumerateLocalizedHolidayNamesUsingBlock_];
      _Block_release(v22);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if ((v22 & 1) == 0)
      {
        aBlock = v30;
        swift_bridgeObjectRetain_n();
        sub_22F1FAFF0(&aBlock);

        swift_unknownObjectRelease();

        v23 = aBlock;

        return v23;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_22F741D40();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22F1F9174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a2, v6, v8);
  v11 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_22F13E15C(0, v11[2] + 1, 1, v11);
    *a4 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_22F13E15C((v13 > 1), v14 + 1, 1, v11);
    *a4 = v11;
  }

  v11[2] = v14 + 1;
  return (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v10, v6);
}

uint64_t sub_22F1F92EC@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v56 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E8, &qword_22F77A2E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56 - v6;
  v8 = sub_22F73F270();
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F73F9B0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v56 - v17;
  v19 = sub_22F73F690();
  MEMORY[0x28223BE20](v19);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v21 + 24) == 1)
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v25 = sub_22F740B90();
    __swift_project_value_buffer(v25, qword_2810B4D00);
    v26 = sub_22F740B70();
    v27 = sub_22F7415E0();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_18;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "sortedMonthYearTimeTokens: Collection time token did not have a month!";
LABEL_11:
    _os_log_impl(&dword_22F0FC000, v26, v27, v29, v28, 2u);
    MEMORY[0x2319033A0](v28, -1, -1);
LABEL_18:

    v40 = _s29IntermediateTimeExtendedTokenVMa(0);
    return (*(*(v40 - 8) + 56))(v64, 1, 1, v40);
  }

  if (*(v21 + 40) == 1)
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v30 = sub_22F740B90();
    __swift_project_value_buffer(v30, qword_2810B4D00);
    v26 = sub_22F740B70();
    v27 = sub_22F7415E0();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_18;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "sortedMonthYearTimeTokens: Collection time token did not have a year!";
    goto LABEL_11;
  }

  v31 = *(v21 + 16);
  v60 = v1;
  v61 = v31;
  v32 = *(v21 + 32);
  v56 = v21;
  v57 = v32;
  v58 = v22;
  v59 = v20;
  sub_22F73F970();
  (*(v13 + 56))(v7, 1, 1, v12);
  v33 = sub_22F73FA10();
  (*(*(v33 - 8) + 56))(v4, 1, 1, v33);
  v34 = v57;
  sub_22F73F250();
  sub_22F73F920();
  (*(v63 + 8))(v11, v62);
  (*(v13 + 8))(v15, v12);
  v35 = v58;
  v36 = v59;
  if ((*(v58 + 48))(v18, 1) == 1)
  {
    sub_22F120ADC(v18, &qword_27DAB0920, &qword_22F770B20);
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v37 = sub_22F740B90();
    __swift_project_value_buffer(v37, qword_2810B4D00);
    v26 = sub_22F740B70();
    v38 = sub_22F7415E0();
    if (os_log_type_enabled(v26, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134218240;
      *(v39 + 4) = v34;
      *(v39 + 12) = 2048;
      *(v39 + 14) = v61;
      _os_log_impl(&dword_22F0FC000, v26, v38, "Unable to create a date from year %ld and month %ld!", v39, 0x16u);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    goto LABEL_18;
  }

  (*(v35 + 32))(v24, v18, v36);
  v42 = sub_22F7405E0();
  v43 = sub_22F73F5B0();
  v44 = [v42 stringFromDate_];

  v45 = sub_22F740E20();
  v47 = v46;

  (*(v35 + 8))(v24, v36);
  v48 = _s29IntermediateTimeExtendedTokenVMa(0);
  v49 = v34;
  v50 = v48[7];
  v51 = *MEMORY[0x277D3C750];
  v52 = sub_22F740890();
  v53 = v64;
  (*(*(v52 - 8) + 104))(v64 + v50, v51, v52);
  v54 = *(v35 + 16);
  v55 = v56;
  v54(v53 + v48[8], v56 + v48[8], v36);
  v54(v53 + v48[9], v55 + v48[9], v36);
  *v53 = v45;
  *(v53 + 8) = v47;
  *(v53 + 16) = v61;
  *(v53 + 24) = 0;
  *(v53 + 32) = v49;
  *(v53 + 40) = 0;
  return (*(*(v48 - 1) + 56))(v53, 0, 1, v48);
}

void sub_22F1F9B54(uint64_t *a1, uint64_t a2)
{
  v94 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0BC8, &unk_22F77A300);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = &v83 - v4;
  v91 = _s29IntermediateTimeExtendedTokenVMa(0);
  v93 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = &v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v83 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E8, &qword_22F77A2E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v83 - v12;
  v14 = sub_22F73F270();
  v95 = *(v14 - 8);
  v96 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22F73F9B0();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v83 - v22;
  v24 = sub_22F73F690();
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  if (*(a2 + 40) == 1)
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v31 = sub_22F740B90();
    __swift_project_value_buffer(v31, qword_2810B4D00);
    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_12;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "sortedYearTimeTokens: Collection time token did not have a year!";
    v36 = v33;
    v37 = v32;
    v38 = v34;
    v39 = 2;
LABEL_11:
    _os_log_impl(&dword_22F0FC000, v37, v36, v35, v38, v39);
    MEMORY[0x2319033A0](v34, -1, -1);
LABEL_12:

    return;
  }

  v83 = v28;
  v84 = v29;
  v85 = a2;
  v86 = &v83 - v27;
  v88 = *(a2 + 32);
  v89 = v30;
  sub_22F73F970();
  (*(v18 + 56))(v13, 1, 1, v17);
  v40 = sub_22F73FA10();
  (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
  v41 = v88;
  sub_22F73F250();
  sub_22F73F920();
  (*(v95 + 8))(v16, v96);
  (*(v18 + 8))(v20, v17);
  v42 = v89;
  if ((*(v89 + 48))(v23, 1, v24) == 1)
  {
    sub_22F120ADC(v23, &qword_27DAB0920, &qword_22F770B20);
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v43 = sub_22F740B90();
    __swift_project_value_buffer(v43, qword_2810B4D00);
    v32 = sub_22F740B70();
    v44 = sub_22F7415E0();
    if (!os_log_type_enabled(v32, v44))
    {
      goto LABEL_12;
    }

    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v41;
    v35 = "Unable to create a date from year %ld!";
    v36 = v44;
    v37 = v32;
    v38 = v34;
    v39 = 12;
    goto LABEL_11;
  }

  (*(v42 + 32))(v86, v23, v24);
  v45 = sub_22F7405C0();
  v46 = sub_22F73F5B0();
  v47 = [v45 stringFromDate_];

  v95 = sub_22F740E20();
  v96 = v48;

  v49 = *v94;
  if (*(*v94 + 16) && (v50 = sub_22F13A8F4(v41), (v51 & 1) != 0))
  {
    v52 = v87;
    sub_22F202F68(*(v49 + 56) + *(v93 + 72) * v50, v87);
    v53 = v90;
    sub_22F202F04(v52, v90);
    v54 = v91;
    v55 = v42;
    v56 = *(v91 + 32);
    sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v57 = v24;
    v58 = v85;
    v59 = sub_22F740DB0();
    v60 = *(v55 + 16);
    if (v59)
    {
      v61 = v58 + v56;
    }

    else
    {
      v61 = v53 + v56;
    }

    v60(v84, v61, v57);
    v71 = v54[9];
    if (sub_22F740DC0())
    {
      v72 = v58 + v71;
    }

    else
    {
      v72 = v53 + v71;
    }

    v73 = v83;
    v60(v83, v72, v57);
    v74 = v57;
    v75 = v54[7];
    v76 = *MEMORY[0x277D3C738];
    v77 = sub_22F740890();
    v78 = v92;
    (*(*(v77 - 8) + 104))(&v92[v75], v76, v77);
    v79 = v84;
    v60(v78 + v54[8], v84, v74);
    v60(v78 + v54[9], v73, v74);
    v80 = v96;
    *v78 = v95;
    *(v78 + 8) = v80;
    *(v78 + 16) = 0;
    *(v78 + 24) = 1;
    v81 = v88;
    *(v78 + 32) = v88;
    *(v78 + 40) = 0;
    (*(v93 + 56))(v78, 0, 1, v54);
    sub_22F1218C0(v78, v81);
    v82 = *(v89 + 8);
    v82(v73, v74);
    v82(v79, v74);
    sub_22F202FCC(v90);
    v82(v86, v74);
  }

  else
  {
    v62 = v91;
    v63 = *(v91 + 28);
    v64 = *MEMORY[0x277D3C738];
    v65 = sub_22F740890();
    v66 = v92;
    (*(*(v65 - 8) + 104))(&v92[v63], v64, v65);
    v67 = *(v42 + 16);
    v68 = v41;
    v69 = v85;
    v67(v66 + *(v62 + 32), v85 + *(v62 + 32), v24);
    v67(v66 + *(v62 + 36), v69 + *(v62 + 36), v24);
    v70 = v96;
    *v66 = v95;
    *(v66 + 8) = v70;
    *(v66 + 16) = 0;
    *(v66 + 24) = 1;
    *(v66 + 32) = v68;
    *(v66 + 40) = 0;
    (*(v93 + 56))(v66, 0, 1, v62);
    sub_22F1218C0(v66, v68);
    (*(v42 + 8))(v86, v24);
  }
}

void sub_22F1FA5E0(void *a1, id a2, double a3, uint64_t a4, void *a5)
{
  if ([a2 count] / a3 >= 0.5)
  {
    v7 = [a1 elementIdentifiers];
    [a5 unionWithIdentifierSet_];
  }
}

uint64_t sub_22F1FA698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v52 = a5;
  v54 = a2;
  v55 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EB8, &unk_22F77A2D0);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E8, &qword_22F77A2E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = sub_22F73F270();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  v14 = sub_22F740890();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v17;
  v18 = sub_22F740270();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v21;
  v49 = sub_22F740120();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v44 = &v44 - v25;
  (*(v19 + 104))(v21, *MEMORY[0x277D3C2B0], v18, v24);
  (*(v15 + 104))(v17, *MEMORY[0x277D3C748], v14);
  v26 = sub_22F73F9B0();
  v27 = *(*(v26 - 8) + 56);
  v27(v12, 1, 1, v26);
  v28 = sub_22F73FA10();
  v29 = *(*(v28 - 8) + 56);
  v29(v9, 1, 1, v28);

  sub_22F73F250();
  v30 = v26;
  v31 = v44;
  v27(v12, 1, 1, v30);
  v32 = v52;
  v33 = v28;
  v34 = v45;
  v29(v9, 1, 1, v33);
  v35 = v53;
  v36 = v47;
  sub_22F73F250();
  (*(v50 + 56))(v35, 0, 1, v51);
  v37 = v49;
  sub_22F740100();
  (*(v36 + 16))(v34, v31, v37);
  v38 = *v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v32 = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v38 = sub_22F13EA3C(0, v38[2] + 1, 1, v38);
    *v32 = v38;
  }

  v41 = v38[2];
  v40 = v38[3];
  if (v41 >= v40 >> 1)
  {
    *v32 = sub_22F13EA3C((v40 > 1), v41 + 1, 1, v38);
  }

  (*(v36 + 8))(v31, v37);
  v42 = *v32;
  v42[2] = v41 + 1;
  return (*(v36 + 32))(v42 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v41, v34, v37);
}

void sub_22F1FAD44(uint64_t *a1)
{
  v2 = *(sub_22F73F690() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6440(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F1FB0D4(v5, MEMORY[0x277CC9578], sub_22F1FBC08, sub_22F1FB224);
  *a1 = v3;
}

void sub_22F1FAE28(uint64_t *a1)
{
  v2 = *(_s29IntermediateTimeExtendedTokenVMa(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F64F4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F1FB0D4(v5, _s29IntermediateTimeExtendedTokenVMa, sub_22F1FC630, sub_22F1FB4E8);
  *a1 = v3;
}

void sub_22F1FAF0C(uint64_t *a1)
{
  v2 = *(_s29IntermediateTimeExtendedTokenVMa(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F64F4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F1FB0D4(v5, _s29IntermediateTimeExtendedTokenVMa, sub_22F1FCE90, sub_22F1FB6E8);
  *a1 = v3;
}

void sub_22F1FAFF0(uint64_t *a1)
{
  v2 = *(sub_22F740120() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6508(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F1FB0D4(v5, MEMORY[0x277D3C218], sub_22F1FD7C8, sub_22F1FB8FC);
  *a1 = v3;
}

void sub_22F1FB0D4(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_22F742000();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_22F741200();
        *(v12 + 16) = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v12 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

void sub_22F1FB224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22F73F690();
  MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v26 = sub_22F740DB0();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F1FB4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s29IntermediateTimeExtendedTokenVMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_22F202F68(v23, v17);
      sub_22F202F68(v20, v13);
      v24 = sub_22F73F5D0();
      sub_22F202FCC(v13);
      sub_22F202FCC(v17);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_22F202F04(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F202F04(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F1FB6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = _s29IntermediateTimeExtendedTokenVMa(0);
  MEMORY[0x28223BE20](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v26 - v11);
  MEMORY[0x28223BE20](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_22F202F68(v22, v16);
      sub_22F202F68(v19, v12);
      if (*v16 == *v12 && v16[1] == v12[1])
      {
        sub_22F202FCC(v12);
        sub_22F202FCC(v16);
LABEL_5:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_6;
      }

      v24 = sub_22F742040();
      sub_22F202FCC(v12);
      sub_22F202FCC(v16);
      if ((v24 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_22F202F04(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F202F04(v9, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_22F1FB8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_22F740120();
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v34 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_22F740110();
      v27 = v26;
      if (v25 == sub_22F740110() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_22F742040();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_22F1FBC08(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_22F73F690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v134 = &v119 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v119 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_22F3F5F98(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_22F1FE384(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_22F3F5F98(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_22F3F5F0C(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      LODWORD(v133) = sub_22F740DB0();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_22F740DB0() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_22F13D970(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_22F13D970((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_22F1FE384(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_22F3F5F98(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_22F3F5F0C(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_22F20308C(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v109 = sub_22F740DB0();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_22F1FC630(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = _s29IntermediateTimeExtendedTokenVMa(0);
  v110 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v104 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v113 = &v99 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v99 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v99 - v17;
  v112 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = a4;
    }

    else
    {
LABEL_129:
      v94 = sub_22F3F5F98(a4);
    }

    v115 = v94;
    a4 = *(v94 + 2);
    if (a4 >= 2)
    {
      while (*v112)
      {
        v95 = *&v94[16 * a4];
        v96 = v94;
        v97 = *&v94[16 * a4 + 24];
        sub_22F1FE978(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *&v94[16 * a4 + 16], *v112 + *(v110 + 72) * v97, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v97 < v95)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_22F3F5F98(v96);
        }

        if (a4 - 2 >= *(v96 + 2))
        {
          goto LABEL_123;
        }

        v98 = &v96[16 * a4];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        sub_22F3F5F0C(a4 - 1);
        v94 = v115;
        a4 = *(v115 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v101 = a4;
  v114 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v105 = v21;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = *v112;
      v25 = v22;
      v26 = *(v110 + 72);
      v5 = *v112 + v26 * v23;
      sub_22F202F68(v5, v18);
      sub_22F202F68(v24 + v26 * v25, v15);
      LODWORD(v109) = sub_22F73F5D0();
      sub_22F202FCC(v15);
      sub_22F202FCC(v18);
      v100 = v25;
      v27 = v25 + 2;
      v111 = v26;
      v28 = v24 + v26 * v27;
      v29 = v109;
      while (v19 != v27)
      {
        sub_22F202F68(v28, v18);
        sub_22F202F68(v5, v15);
        v30 = sub_22F73F5D0() & 1;
        sub_22F202FCC(v15);
        sub_22F202FCC(v18);
        ++v27;
        v28 += v111;
        v5 += v111;
        if ((v29 & 1) != v30)
        {
          v31 = v29;
          v19 = v27 - 1;
          goto LABEL_11;
        }
      }

      v31 = v29;
LABEL_11:
      v22 = v100;
      a4 = v101;
      if (v31)
      {
        if (v19 < v100)
        {
          goto LABEL_126;
        }

        if (v100 < v19)
        {
          v99 = v6;
          v32 = v111 * (v19 - 1);
          v33 = v19 * v111;
          v109 = v19;
          v34 = v19;
          v35 = v100;
          v36 = v100 * v111;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v112;
              if (!*v112)
              {
                goto LABEL_132;
              }

              v5 = v37 + v36;
              sub_22F202F04(v37 + v36, v104);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22F202F04(v104, v37 + v32);
            }

            ++v35;
            v32 -= v111;
            v33 -= v111;
            v36 += v111;
          }

          while (v35 < v34);
          v6 = v99;
          v22 = v100;
          a4 = v101;
          v19 = v109;
        }
      }
    }

    v38 = v112[1];
    if (v19 < v38)
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

        if ((v22 + a4) >= v38)
        {
          v39 = v112[1];
        }

        else
        {
          v39 = v22 + a4;
        }

        if (v39 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v40 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v105;
    }

    else
    {
      v21 = sub_22F13D970(0, *(v105 + 2) + 1, 1, v105);
    }

    a4 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v21 = sub_22F13D970((v41 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v42 = &v21[16 * a4];
    *(v42 + 4) = v22;
    *(v42 + 5) = v40;
    v43 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v106 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v21 + 4);
          v46 = *(v21 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_54:
          if (v48)
          {
            goto LABEL_113;
          }

          v61 = &v21[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_116;
          }

          v67 = &v21[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_120;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v71 = &v21[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_68:
        if (v66)
        {
          goto LABEL_115;
        }

        v74 = &v21[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_118;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
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

        if (!*v112)
        {
          goto LABEL_131;
        }

        v82 = v21;
        v83 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v44 + 40];
        sub_22F1FE978(*v112 + *(v110 + 72) * v83, *v112 + *(v110 + 72) * *&v21[16 * v44 + 32], *v112 + *(v110 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v83)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_22F3F5F98(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_110;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v115 = v82;
        sub_22F3F5F0C(v44);
        v21 = v115;
        v5 = *(v115 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v21[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_111;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_112;
      }

      v56 = &v21[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_114;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_117;
      }

      if (v60 >= v52)
      {
        v78 = &v21[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_121;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v19 = v112[1];
    v20 = v106;
    a4 = v101;
    if (v106 >= v19)
    {
      goto LABEL_96;
    }
  }

  v99 = v6;
  v100 = v22;
  a4 = *v112;
  v85 = *(v110 + 72);
  v86 = *v112 + v85 * (v19 - 1);
  v87 = v19;
  v88 = -v85;
  v89 = v22 - v87;
  v109 = v87;
  v103 = v85;
  v5 = a4 + v87 * v85;
  v106 = v39;
LABEL_86:
  v107 = v5;
  v108 = v89;
  v111 = v86;
  v90 = v86;
  while (1)
  {
    sub_22F202F68(v5, v18);
    sub_22F202F68(v90, v15);
    v91 = sub_22F73F5D0();
    sub_22F202FCC(v15);
    sub_22F202FCC(v18);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v86 = v111 + v103;
      v89 = v108 - 1;
      v40 = v106;
      v5 = v107 + v103;
      if (++v109 != v106)
      {
        goto LABEL_86;
      }

      v6 = v99;
      v22 = v100;
      if (v106 < v100)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v92 = v113;
    sub_22F202F04(v5, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F202F04(v92, v90);
    v90 += v88;
    v5 += v88;
    if (__CFADD__(v89++, 1))
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
}

void sub_22F1FCE90(unint64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v6 = v4;
  v124 = a1;
  v137 = _s29IntermediateTimeExtendedTokenVMa(0);
  v131 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v127 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v136 = &v117 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (&v117 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v117 - v16);
  MEMORY[0x28223BE20](v18);
  v135 = (&v117 - v19);
  MEMORY[0x28223BE20](v20);
  v134 = (&v117 - v21);
  MEMORY[0x28223BE20](v22);
  v123 = (&v117 - v23);
  MEMORY[0x28223BE20](v24);
  v122 = (&v117 - v25);
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v138 = v28;
      v112 = *(v28 + 16);
      if (v112 >= 2)
      {
        while (*a3)
        {
          v113 = v28;
          v28 = *(v28 + 16 * v112);
          v114 = v113;
          v115 = *&v113[16 * v112 + 24];
          sub_22F1FEE00(*a3 + *(v131 + 72) * v28, *a3 + *(v131 + 72) * *&v113[16 * v112 + 16], *a3 + *(v131 + 72) * v115, v5);
          if (v6)
          {
            goto LABEL_120;
          }

          if (v115 < v28)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_22F3F5F98(v114);
          }

          if (v112 - 2 >= *(v114 + 2))
          {
            goto LABEL_136;
          }

          v116 = &v114[16 * v112];
          *v116 = v28;
          v116[1] = v115;
          v138 = v114;
          sub_22F3F5F0C(v112 - 1);
          v28 = v138;
          v112 = *(v138 + 16);
          if (v112 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_146;
      }

LABEL_120:

      return;
    }

LABEL_142:
    v28 = sub_22F3F5F98(v28);
    goto LABEL_112;
  }

  v118 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v132 = a3;
  v128 = v14;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 < v26)
    {
      v129 = v26;
      v31 = *a3;
      v32 = *(v131 + 72);
      v33 = v27 + 1;
      v34 = v122;
      sub_22F202F68(v31 + v32 * v30, v122);
      v133 = v32;
      v35 = v31 + v32 * v29;
      v36 = v123;
      sub_22F202F68(v35, v123);
      v37 = *v34 == *v36 && v34[1] == v36[1];
      v120 = v6;
      if (v37)
      {
        LODWORD(v130) = 0;
      }

      else
      {
        LODWORD(v130) = sub_22F742040();
      }

      v119 = v28;
      sub_22F202FCC(v123);
      sub_22F202FCC(v122);
      v121 = v29;
      v38 = v29 + 2;
      v39 = v133 * (v29 + 2);
      v40 = v31 + v39;
      v41 = v33;
      v42 = v133 * v33;
      a3 = v31 + v133 * v33;
      do
      {
        v6 = v38;
        v44 = v41;
        v28 = v42;
        v5 = v39;
        if (v38 >= v129)
        {
          break;
        }

        v45 = v38;
        v46 = v134;
        sub_22F202F68(v40, v134);
        v47 = v135;
        sub_22F202F68(a3, v135);
        v48 = *v46 == *v47 && v46[1] == v47[1];
        v43 = v48 ? 0 : sub_22F742040();
        v6 = v45;
        sub_22F202FCC(v135);
        sub_22F202FCC(v134);
        v38 = v45 + 1;
        v40 += v133;
        a3 += v133;
        v41 = v44 + 1;
        v42 = v28 + v133;
        v39 = v5 + v133;
        v14 = v128;
      }

      while (((v130 ^ v43) & 1) == 0);
      if (v130)
      {
        if (v6 < v121)
        {
          goto LABEL_139;
        }

        if (v121 >= v6)
        {
          v30 = v6;
          v28 = v119;
          v6 = v120;
          a3 = v132;
          v29 = v121;
          goto LABEL_36;
        }

        v49 = v121 * v133;
        v50 = v121;
        do
        {
          if (v50 != v44)
          {
            v52 = *v132;
            if (!*v132)
            {
              goto LABEL_145;
            }

            v130 = v52 + v49;
            sub_22F202F04(v52 + v49, v127);
            if (v49 < v28 || v130 >= v52 + v5)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22F202F04(v127, v52 + v28);
          }

          ++v50;
          v28 -= v133;
          v5 -= v133;
          v49 += v133;
        }

        while (v50 < v44--);
      }

      v30 = v6;
      v28 = v119;
      v6 = v120;
      a3 = v132;
      v29 = v121;
    }

LABEL_36:
    v53 = *(a3 + 8);
    v133 = v30;
    if (v30 < v53)
    {
      v80 = __OFSUB__(v30, v29);
      v54 = v30 - v29;
      if (v80)
      {
        goto LABEL_138;
      }

      if (v54 < v118)
      {
        break;
      }
    }

LABEL_59:
    if (v133 < v29)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_22F13D970(0, *(v28 + 16) + 1, 1, v28);
    }

    v66 = *(v28 + 16);
    v65 = *(v28 + 24);
    v67 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      v28 = sub_22F13D970((v65 > 1), v66 + 1, 1, v28);
    }

    *(v28 + 16) = v67;
    v68 = v28 + 16 * v66;
    v69 = v133;
    *(v68 + 32) = v29;
    *(v68 + 40) = v69;
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_147;
    }

    if (v66)
    {
      while (1)
      {
        a3 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v70 = *(v28 + 32);
          v71 = *(v28 + 40);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_79:
          if (v73)
          {
            goto LABEL_126;
          }

          v86 = (v28 + 16 * v67);
          v88 = *v86;
          v87 = v86[1];
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_129;
          }

          v92 = (v28 + 32 + 16 * a3);
          v94 = *v92;
          v93 = v92[1];
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_133;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              a3 = v67 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v96 = (v28 + 16 * v67);
        v98 = *v96;
        v97 = v96[1];
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_93:
        if (v91)
        {
          goto LABEL_128;
        }

        v99 = v28 + 16 * a3;
        v101 = *(v99 + 32);
        v100 = *(v99 + 40);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_131;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_100:
        v107 = a3 - 1;
        if (a3 - 1 >= v67)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v132)
        {
          goto LABEL_144;
        }

        v108 = v28;
        v109 = v28 + 32;
        v28 = *(v28 + 32 + 16 * v107);
        v110 = *(v109 + 16 * a3 + 8);
        sub_22F1FEE00(*v132 + *(v131 + 72) * v28, *v132 + *(v131 + 72) * *(v109 + 16 * a3), *v132 + *(v131 + 72) * v110, v5);
        if (v6)
        {
          goto LABEL_120;
        }

        if (v110 < v28)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_22F3F5F98(v108);
        }

        if (v107 >= *(v108 + 2))
        {
          goto LABEL_123;
        }

        v111 = &v108[16 * v107];
        *(v111 + 4) = v28;
        *(v111 + 5) = v110;
        v138 = v108;
        sub_22F3F5F0C(a3);
        v28 = v138;
        v67 = *(v138 + 16);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = v28 + 32 + 16 * v67;
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_124;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_125;
      }

      v81 = (v28 + 16 * v67);
      v83 = *v81;
      v82 = v81[1];
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_127;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_130;
      }

      if (v85 >= v77)
      {
        v103 = (v28 + 32 + 16 * a3);
        v105 = *v103;
        v104 = v103[1];
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_134;
        }

        if (v72 < v106)
        {
          a3 = v67 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v132;
    v27 = v133;
    v26 = v132[1];
    if (v133 >= v26)
    {
      goto LABEL_110;
    }
  }

  if (__OFADD__(v29, v118))
  {
    goto LABEL_140;
  }

  if (v29 + v118 >= v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = v29 + v118;
  }

  if (v55 < v29)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v133 == v55)
  {
    goto LABEL_59;
  }

  v119 = v28;
  v120 = v6;
  v56 = *a3;
  v57 = *(v131 + 72);
  v58 = *a3 + v57 * (v133 - 1);
  v59 = -v57;
  v121 = v29;
  a3 = v29 - v133;
  v125 = v57;
  v126 = v55;
  v60 = v56 + v133 * v57;
LABEL_48:
  v5 = v60;
  v129 = a3;
  v130 = v58;
  while (1)
  {
    sub_22F202F68(v5, v17);
    sub_22F202F68(v58, v14);
    if (*v17 == *v14 && v17[1] == v14[1])
    {
      sub_22F202FCC(v14);
      sub_22F202FCC(v17);
LABEL_47:
      v58 = v130 + v125;
      a3 = v129 - 1;
      v60 += v125;
      if (++v133 == v126)
      {
        v133 = v126;
        v28 = v119;
        v6 = v120;
        v29 = v121;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v62 = sub_22F742040();
    sub_22F202FCC(v14);
    sub_22F202FCC(v17);
    if ((v62 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!v56)
    {
      break;
    }

    v63 = v136;
    sub_22F202F04(v5, v136);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F202F04(v63, v58);
    v58 += v59;
    v5 += v59;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

void sub_22F1FD7C8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_22F740120();
  MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v147 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v146 = &v129 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = &v129 - v22;
  v25 = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v26;
  v27 = a3[1];
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_22F1FF2EC(v124 + *(v5 + 72) * v126, (v124 + *(v5 + 72) * v127), (v124 + *(v5 + 72) * v29), v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_22F3F5F98(a3);
          }

          if (v123 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v128 = &a3[2 * v123];
          *v128 = v126;
          v128[1] = v29;
          v156 = a3;
          sub_22F3F5F0C(v123 - 1);
          v29 = v156;
          v123 = v156[2];
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_22F3F5F98(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, v32 + v33 * v30, v9);
      v31 = sub_22F740110();
      v37 = v36;
      v38 = sub_22F740110();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_22F742040();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = v32 + v42;
      v44 = v145 * v5;
      v45 = v32 + v145 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_22F740110();
        v52 = v51;
        if (v50 == sub_22F740110() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_22F742040();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = (a3 + 1);
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              v149(v139, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v149((v57 + v6), v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_22F13D970(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_22F13D970((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_22F1FF2EC(v118 + *(v144 + 72) * v119, (v118 + *(v144 + 72) * v120), (v118 + *(v144 + 72) * v29), v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_22F3F5F98(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v156 = a3;
        sub_22F3F5F0C(v31);
        v29 = v156;
        v77 = v156[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = v60 + v31 * v61;
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_22F740110();
    v69 = v68;
    if (v5 == sub_22F740110() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_22F742040();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}