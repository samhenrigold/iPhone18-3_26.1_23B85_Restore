unint64_t *sub_227009018(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_22766D370();

    sub_22766C100();
    v11 = sub_22766D3F0();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_22766D190() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
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
    v50 = &v47;
    MEMORY[0x28223BE20](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_22726999C(v52, v49, v51, v55);
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
        v2 = v55;
        sub_22766D370();

        sub_22766C100();
        v33 = sub_22766D3F0();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
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
        while ((sub_22766D190() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_22700EA24(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x22AA9A450](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x22AA9A450](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2270094C4(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BC8, &qword_227675590);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v66 - v9);
  v11 = sub_227665F20();
  MEMORY[0x28223BE20](v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v66 - v14);
  MEMORY[0x28223BE20](v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = (a2 + 56);
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_226E97D1C(v30, &qword_27D7B9BC8, &qword_227675590);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_227010FF8(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
    v32 = sub_22766BF50();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v24, v11);
    v35 = sub_227010FF8(&qword_27D7B8700, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
    v36 = sub_22766BFB0();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    MEMORY[0x28223BE20](v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_226E97D1C(v24, &qword_27D7B9BC8, &qword_227675590);
        a2 = sub_22726B3A0(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = sub_22766BF50();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 48) + v54 * v85, v11);
        v55 = sub_22766BFB0();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 48) + v54 * v85, v11);
            v57 = sub_22766BFB0();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_22700EC08(v64, v66, v81, v24, &v90);
  a2 = v65;

  MEMORY[0x22AA9A450](v64, -1, -1);
LABEL_52:
  v59 = v90;
LABEL_53:
  sub_226EBB21C(v59);
  return a2;
}

uint64_t sub_227009F28(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v77 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v54 = 0;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1 << *(a1 + 32);
    v59 = ~v7;
    if (-v7 < 64)
    {
      v8 = ~(-1 << -v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & v5;
    v10 = (63 - v7) >> 6;
    v67 = (a2 + 56);

    v13 = 0;
    v64 = v6;
    v62 = v10;
    v63 = v11;
    while (1)
    {
      if (!v9)
      {
        v14 = v13;
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v15 >= v10)
          {
            goto LABEL_40;
          }

          v9 = *(v6 + 8 * v15);
          ++v14;
          if (v9)
          {
            v13 = v15;
            goto LABEL_13;
          }
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_13:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v65 = v13;
      v17 = *(v11 + 48) + 24 * (v16 | (v13 << 6));
      v18 = *(v17 + 8);
      v20 = *(v17 + 16);
      v70 = *v17;
      v19 = v70;
      v71 = v18;
      v72 = v20;
      sub_22766D370();
      sub_226EB396C(v70, v18, v20);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      v60 = sub_226F480FC();
      sub_227663B10();
      v21 = sub_22766D3F0();
      v10 = v4;
      v22 = -1 << *(v4 + 32);
      v6 = v21 & ~v22;
      v2 = v6 >> 6;
      v3 = 1 << v6;
      if (((1 << v6) & v67[v6 >> 6]) != 0)
      {
        break;
      }

LABEL_6:
      sub_226EB2DFC(v19, v18, v20);
      v4 = v10;
      v11 = v63;
      v6 = v64;
      v13 = v65;
      v10 = v62;
    }

    v23 = ~v22;
    v66 = sub_226F48150();
    sub_226EC1E18();
    while (1)
    {
      v24 = *(v10 + 48) + 24 * v6;
      v25 = *(v24 + 16);
      v68 = *v24;
      v69 = v25;
      v70 = v19;
      v71 = v18;
      v72 = v20;
      if (sub_227663B20())
      {
        break;
      }

      v6 = (v6 + 1) & v23;
      v2 = v6 >> 6;
      v3 = 1 << v6;
      if (((1 << v6) & v67[v6 >> 6]) == 0)
      {
        goto LABEL_6;
      }
    }

    v74 = v59;
    v75 = v65;
    v76 = v9;
    v73[0] = v63;
    v73[1] = v64;
    v26 = sub_226EB2DFC(v19, v18, v20);
    v4 = v10;
    v27 = *(v10 + 32);
    v55 = ((1 << v27) + 63) >> 6;
    v12 = 8 * v55;
    if ((v27 & 0x3Fu) <= 0xD)
    {
LABEL_20:
      v56 = &v53;
      MEMORY[0x28223BE20](v26);
      v6 = &v53 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v6, v67, v28);
      v29 = *(v4 + 16);
      v30 = *(v6 + 8 * v2) & ~v3;
      v58 = v6;
      *(v6 + 8 * v2) = v30;
      v31 = v29 - 1;
      v2 = v64;
      v32 = v65;
      v33 = v62;
      while (2)
      {
        v57 = v31;
        do
        {
          while (1)
          {
            if (!v9)
            {
              v34 = v32;
              while (1)
              {
                v35 = v34 + 1;
                if (__OFADD__(v34, 1))
                {
                  break;
                }

                if (v35 >= v33)
                {
                  v4 = sub_22726A888(v58, v55, v57, v4);
                  goto LABEL_39;
                }

                v9 = *(v2 + 8 * v35);
                ++v34;
                if (v9)
                {
                  v32 = v35;
                  goto LABEL_29;
                }
              }

              __break(1u);
              goto LABEL_43;
            }

LABEL_29:
            v36 = __clz(__rbit64(v9));
            v9 &= v9 - 1;
            v65 = v32;
            v37 = *(v63 + 48) + 24 * (v36 | (v32 << 6));
            v39 = *(v37 + 8);
            v40 = *(v37 + 16);
            v70 = *v37;
            v38 = v70;
            v71 = v39;
            v72 = v40;
            sub_22766D370();
            sub_226EB396C(v38, v39, v40);
            sub_227663B10();
            v41 = sub_22766D3F0();
            v42 = -1 << *(v4 + 32);
            v3 = v41 & ~v42;
            v6 = v3 >> 6;
            v43 = 1 << v3;
            if (((1 << v3) & v67[v3 >> 6]) != 0)
            {
              break;
            }

LABEL_22:
            sub_226EB2DFC(v38, v39, v40);
            v4 = v10;
            v2 = v64;
            v32 = v65;
            v33 = v62;
          }

          v44 = ~v42;
          while (1)
          {
            v45 = *(v10 + 48) + 24 * v3;
            v46 = *(v45 + 16);
            v68 = *v45;
            v69 = v46;
            v70 = v38;
            v71 = v39;
            v72 = v40;
            if (sub_227663B20())
            {
              break;
            }

            v3 = (v3 + 1) & v44;
            v6 = v3 >> 6;
            v43 = 1 << v3;
            if (((1 << v3) & v67[v3 >> 6]) == 0)
            {
              goto LABEL_22;
            }
          }

          sub_226EB2DFC(v38, v39, v40);
          v47 = v58[v6];
          v58[v6] = v47 & ~v43;
          v48 = (v47 & v43) == 0;
          v4 = v10;
          v2 = v64;
          v32 = v65;
          v33 = v62;
        }

        while (v48);
        v31 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 != 1)
        {
          continue;
        }

        break;
      }

      v4 = MEMORY[0x277D84FA0];
LABEL_39:
      v11 = v63;
      goto LABEL_40;
    }

LABEL_44:
    v50 = v12;

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_20;
    }

    v51 = swift_slowAlloc();
    memcpy(v51, v67, v50);
    v52 = v54;
    v4 = sub_22700F0DC(v51, v55, v4, v6, v73);

    if (!v52)
    {

      MEMORY[0x22AA9A450](v51, -1, -1);
      v11 = v73[0];
      v59 = v74;
LABEL_40:
      sub_226EBB21C(v11);
      return v4;
    }

    result = MEMORY[0x22AA9A450](v51, -1, -1);
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_22700A628(uint64_t a1, uint64_t a2)
{
  v63[2] = *MEMORY[0x277D85DE8];
  v4 = sub_2276639B0();
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
    v52 = sub_227010FF8(&qword_28139BCA8, MEMORY[0x277D501C8], MEMORY[0x277D501D0]);
    v18 = sub_22766BF50();
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
    sub_227010FF8(&qword_27D7B8678, MEMORY[0x277D501C8], MEMORY[0x277D501D8]);
    v24 = sub_22766BFB0();
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
        a2 = sub_22726B9F0(v50, v49[0], v51, v27);
        goto LABEL_30;
      }

      if (v34 >= *(v53 + 16))
      {
        break;
      }

      v55 = v34;
      v61(v57, v54 + v34 * v60, v4);
      v36 = sub_22766BF50();
      v37 = -1 << *(v27 + 32);
      v20 = v36 & ~v37;
      v22 = v20 >> 6;
      v21 = 1 << v20;
      if (((1 << v20) & v58[v20 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v61(v9, *(v59 + 48) + v20 * v60, v4);
      v38 = sub_22766BFB0();
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
          v40 = sub_22766BFB0();
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
  sub_22700F384(v47, v49[0], v59, v20, v63);
  a2 = v48;

  MEMORY[0x22AA9A450](v47, -1, -1);
LABEL_30:

  return a2;
}

uint64_t sub_22700ACE8(uint64_t a1, uint64_t a2)
{

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedDirtySyncZone, sub_22726C040, sub_22726C040, type metadata accessor for ManagedDirtySyncZone);
}

uint64_t sub_22700AD90(uint64_t a1, uint64_t a2)
{

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedHealthKitMindfulSession, sub_22726C054, sub_22726C054, type metadata accessor for ManagedHealthKitMindfulSession);
}

uint64_t sub_22700AE38(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void (*)(void), unint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  v61 = a3;
  v10 = a2;
  v71 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v57 = a5;
  v58 = a6;
  v12 = a1 + 64;
  v11 = *(a1 + 64);
  v13 = -1 << *(a1 + 32);
  v59 = a4;
  v60 = ~v13;
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v11;
  v16 = (63 - v13) >> 6;
  v66 = (a2 + 56);

  v19 = 0;
  v63 = v17;
  v64 = v12;
  for (i = v16; ; v16 = i)
  {
    if (!v15)
    {
      v20 = v19;
      do
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_43;
        }

        if (v21 >= v16)
        {
          goto LABEL_40;
        }

        v15 = *(v12 + 8 * v21);
        ++v20;
      }

      while (!v15);
      v19 = v21;
    }

    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v23 = *(v17 + 56);
    v65 = v19;
    v24 = *(v23 + ((v19 << 9) | (8 * v22)));
    v25 = sub_22766CB20();
    v26 = -1 << *(v10 + 32);
    v7 = v25 & ~v26;
    v6 = v7 >> 6;
    v8 = 1 << v7;
    if (((1 << v7) & v66[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v17 = v63;
    v12 = v64;
    v19 = v65;
  }

  v9 = ~v26;
  v61(0);
  while (1)
  {
    v27 = *(*(v10 + 48) + 8 * v7);
    v28 = sub_22766CB30();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v9;
    v6 = v7 >> 6;
    v8 = 1 << v7;
    if (((1 << v7) & v66[v7 >> 6]) == 0)
    {
      goto LABEL_6;
    }
  }

  v29 = v64;
  v30 = v65;
  v68 = v60;
  v69 = v65;
  v70 = v15;
  v9 = v63;
  v67[0] = v63;
  v67[1] = v64;

  v32 = *(v10 + 32);
  v56 = ((1 << v32) + 63) >> 6;
  v18 = 8 * v56;
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v57 = &v56;
    MEMORY[0x28223BE20](v31);
    v7 = &v56 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v7, v66, v33);
    v34 = *(v7 + 8 * v6) & ~v8;
    v35 = *(v10 + 16);
    v61 = v7;
    *(v7 + 8 * v6) = v34;
    v36 = (v35 - 1);
    v37 = i;
LABEL_21:
    v58 = v36;
    while (v15)
    {
LABEL_29:
      v40 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v41 = *(v9 + 56);
      v65 = v30;
      v42 = *(v41 + ((v30 << 9) | (8 * v40)));
      v43 = sub_22766CB20();
      v7 = -1 << *(v10 + 32);
      v44 = v43 & ~v7;
      v6 = v44 >> 6;
      v8 = 1 << v44;
      if (((1 << v44) & v66[v44 >> 6]) == 0)
      {
        goto LABEL_22;
      }

      v45 = *(*(v10 + 48) + 8 * v44);
      v46 = sub_22766CB30();

      if (v46)
      {
LABEL_34:

        v37 = i;
        v49 = *(v61 + v6);
        *(v61 + v6) = v49 & ~v8;
        v9 = v63;
        v29 = v64;
        v30 = v65;
        if ((v49 & v8) != 0)
        {
          v36 = (v58 - 1);
          if (__OFSUB__(v58, 1))
          {
            __break(1u);
          }

          if (v58 == 1)
          {

            v10 = MEMORY[0x277D84FA0];
            goto LABEL_39;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v7 = ~v7;
        while (1)
        {
          v44 = (v44 + 1) & v7;
          v6 = v44 >> 6;
          v8 = 1 << v44;
          if (((1 << v44) & v66[v44 >> 6]) == 0)
          {
            break;
          }

          v47 = *(*(v10 + 48) + 8 * v44);
          v48 = sub_22766CB30();

          if (v48)
          {
            goto LABEL_34;
          }
        }

LABEL_22:

        v9 = v63;
        v29 = v64;
        v30 = v65;
        v37 = i;
      }
    }

    v38 = v30;
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v37)
      {
        v10 = v59(v61, v56, v58, v10);
        goto LABEL_39;
      }

      v15 = *(v29 + 8 * v39);
      ++v38;
      if (v15)
      {
        v30 = v39;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v51 = v18;

    v52 = v51;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v29 = v64;
      v30 = v65;
      continue;
    }

    break;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v66, v52);
  sub_22700F778(v53, v56, v10, v7, v67, v57, v58);
  v55 = v54;

  MEMORY[0x22AA9A450](v53, -1, -1);
  v9 = v67[0];
  v60 = v68;
  v10 = v55;
LABEL_39:
  v17 = v9;
LABEL_40:
  sub_226EBB21C(v17);
  return v10;
}

uint64_t sub_22700B370(uint64_t a1, uint64_t a2)
{

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedPrivacyAcknowledgement, sub_22726C068, sub_22726C068, type metadata accessor for ManagedPrivacyAcknowledgement);
}

uint64_t sub_22700B418(uint64_t a1, uint64_t a2)
{

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedEngagementBadge, sub_22726C07C, sub_22726C07C, type metadata accessor for ManagedEngagementBadge);
}

uint64_t sub_22700B4C0(uint64_t a1, uint64_t a2)
{

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedPlaylistItem, sub_22726C090, sub_22726C090, type metadata accessor for ManagedPlaylistItem);
}

uint64_t sub_22700B568(uint64_t a1, uint64_t a2)
{

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedArchivedWorkoutPlanSession, sub_22726C0A4, sub_22726C0A4, type metadata accessor for ManagedArchivedWorkoutPlanSession);
}

uint64_t sub_22700B610(uint64_t a1, uint64_t a2)
{

  return sub_22700AE38(a1, a2, type metadata accessor for ManagedWorkoutPlanSummaryViewed, sub_22726C0B8, sub_22726C0B8, type metadata accessor for ManagedWorkoutPlanSummaryViewed);
}

uint64_t sub_22700B6B8(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v66 - v9);
  v11 = sub_227663480();
  MEMORY[0x28223BE20](v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v66 - v14);
  MEMORY[0x28223BE20](v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = (a2 + 56);
  v68 = v17;
  v89 = (v17 + 8);

  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_226E97D1C(v30, &unk_27D7BD3F0, &unk_2276823F0);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_227010FF8(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
    v32 = sub_22766BF50();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v24, v11);
    v35 = sub_227010FF8(&qword_27D7B89E0, MEMORY[0x277D4FF88], MEMORY[0x277D4FF98]);
    v36 = sub_22766BFB0();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    MEMORY[0x28223BE20](v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_226E97D1C(v24, &unk_27D7BD3F0, &unk_2276823F0);
        a2 = sub_22726AD50(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = sub_22766BF50();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 48) + v54 * v85, v11);
        v55 = sub_22766BFB0();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 48) + v54 * v85, v11);
            v57 = sub_22766BFB0();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_22700F9BC(v64, v66, v81, v24, &v90);
  a2 = v65;

  MEMORY[0x22AA9A450](v64, -1, -1);
LABEL_52:
  v59 = v90;
LABEL_53:
  sub_226EBB21C(v59);
  return a2;
}

void *sub_22700C11C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_2272C553C(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_22700C1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2276694E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_227010FF8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  v31 = a1;
  v10 = sub_22766BF50();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_227010FF8(&qword_2813A54C8, MEMORY[0x277D53DA0], MEMORY[0x277D53DB0]);
      v19 = sub_22766BFB0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2270EE180();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_2270101C4(v13, MEMORY[0x277D53DA0], &qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_22700C498(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22766D370();
  sub_22766C100();
  v6 = sub_22766D3F0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22766D190() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2270EE3B0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_227010000(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_22700C5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227666FF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_227010FF8(&unk_28139B578, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
  v31 = a1;
  v10 = sub_22766BF50();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_227010FF8(&qword_28139B570, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
      v19 = sub_22766BFB0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2270EE584();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_2270101C4(v13, MEMORY[0x277D52AF8], &unk_28139B578, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_22700C8C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  sub_227663B10();
  v5 = sub_22766D3F0();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  sub_226F48150();
  sub_226EC1E18();
  while ((sub_227663B20() & 1) == 0)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v13 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2270EE854();
    v11 = v13;
  }

  v12 = *(*(v11 + 48) + 24 * v7);
  sub_2270104C0(v7);
  result = v12;
  *v3 = v13;
  return result;
}

uint64_t sub_22700CA80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22766D370();
  v4 = sub_227669310();
  MEMORY[0x22AA996B0](v4);
  v5 = sub_22766D3F0();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 7;
  }

  v8 = ~v6;
  while (1)
  {
    v9 = sub_227669310();
    if (v9 == sub_227669310())
    {
      break;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 7;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2270EE840();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v7);
  sub_2270106D0(v7);
  result = v13;
  *v2 = v14;
  return result;
}

uint64_t sub_22700CBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227665F20();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_227010FF8(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
  v31 = a1;
  v10 = sub_22766BF50();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_227010FF8(&qword_27D7B8700, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
      v19 = sub_22766BFB0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2270EE55C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_2270101C4(v13, MEMORY[0x277D51FE0], &unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_22700CE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2276638D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_227010FF8(&qword_2813A57E8, MEMORY[0x277D50180], MEMORY[0x277D50188]);
  v31 = a1;
  v10 = sub_22766BF50();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_227010FF8(&qword_27D7B8920, MEMORY[0x277D50180], MEMORY[0x277D50190]);
      v19 = sub_22766BFB0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2270EE534();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_2270101C4(v13, MEMORY[0x277D50180], &qword_2813A57E8, MEMORY[0x277D50180], MEMORY[0x277D50188]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_22700D1F0(void *a1, unint64_t *a2, void *a3, void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = a1;
    v13 = sub_22766CD60();

    if (v13)
    {
      v14 = sub_22700FE90(v11, v12, a5, a2, a3);

      return v14;
    }

    return 0;
  }

  v17 = v5;
  sub_226E99364(0, a2, a3);
  v18 = sub_22766CB20();
  v19 = -1 << *(v7 + 32);
  v20 = v18 & ~v19;
  if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v7 + 48) + 8 * v20);
    v23 = sub_22766CB30();

    if (v23)
    {
      break;
    }

    v20 = (v20 + 1) & v21;
    if (((*(v7 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v17;
  v27 = *v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a4();
    v25 = v27;
  }

  v26 = *(*(v25 + 48) + 8 * v20);
  sub_22701087C(v20);
  result = v26;
  *v17 = v27;
  return result;
}

uint64_t sub_22700D398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_227010FF8(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
  v31 = a1;
  v10 = sub_22766BF50();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_227010FF8(&qword_27D7B89E0, MEMORY[0x277D4FF88], MEMORY[0x277D4FF98]);
      v19 = sub_22766BFB0();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2270EE50C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_2270101C4(v13, MEMORY[0x277D4FF88], &unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_22700D684(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = sub_2276694E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v35 - v14;
  v16.n128_f64[0] = MEMORY[0x28223BE20](v15);
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

    sub_227268FCC(v36, v35, v37, a3);
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
    sub_227010FF8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    v25 = sub_22766BF50();
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
      sub_227010FF8(&qword_2813A54C8, MEMORY[0x277D53DA0], MEMORY[0x277D53DB0]);
      v32 = sub_22766BFB0();
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

void sub_22700DA78(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_2276694E0();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_226E97D1C(v11, &qword_27D7B8460, qword_2276709E0);
          v45 = v61;

          sub_227268FCC(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_227010FF8(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
        v35 = sub_22766BF50();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_227010FF8(&qword_2813A54C8, MEMORY[0x277D53DA0], MEMORY[0x277D53DB0]);
        v43 = sub_22766BFB0();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_22700DF4C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
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

          return sub_22726999C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_22766D370();

        sub_22766C100();
        v19 = sub_22766D3F0();
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
        while ((sub_22766D190() & 1) == 0)
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

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_22700E184(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v21 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v23 = v6 - 1;
  v7 = a5[1];
  v8 = *(*a5 + 16);
  if (v7 == v8)
  {
LABEL_2:

    return sub_22726A538(v21, a2, v23, a3);
  }

  else
  {
    v9 = a5;
    v10 = a3 + 56;
    while ((v7 & 0x8000000000000000) == 0)
    {
      if (v7 >= v8)
      {
        goto LABEL_17;
      }

      v9[1] = v7 + 1;
      sub_22766D370();
      v11 = sub_227664570();
      MEMORY[0x22AA996B0](v11);
      result = sub_22766D3F0();
      v12 = -1 << *(a3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v10 + 8 * (v13 >> 6))) != 0)
      {
        v16 = ~v12;
        while (1)
        {
          v17 = sub_227664570();
          result = sub_227664570();
          if (v17 == result)
          {
            break;
          }

          v13 = (v13 + 1) & v16;
          v14 = v13 >> 6;
          v15 = 1 << v13;
          if (((1 << v13) & *(v10 + 8 * (v13 >> 6))) == 0)
          {
            v9 = a5;
            goto LABEL_4;
          }
        }

        v9 = a5;
        v18 = v21[v14];
        v21[v14] = v18 & ~v15;
        if ((v18 & v15) != 0)
        {
          v19 = v23 - 1;
          if (__OFSUB__(v23, 1))
          {
            goto LABEL_18;
          }

          --v23;
          if (!v19)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

LABEL_4:
      v7 = v9[1];
      v8 = *(*v9 + 16);
      if (v7 == v8)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

void sub_22700E344(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FA8, &unk_227672A50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_227666FF0();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_226E97D1C(v11, &qword_27D7B8FA8, &unk_227672A50);
          v45 = v61;

          sub_226EBAEF0(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_227010FF8(&unk_28139B578, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
        v35 = sub_22766BF50();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_227010FF8(&qword_28139B570, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
        v43 = sub_22766BFB0();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_22700E818(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        do
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
                goto LABEL_24;
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
              v24 = v11 + 1;
            }

            else
            {
              v24 = (a5[2] + 64) >> 6;
            }

            a5[3] = v24 - 1;
            a5[4] = 0;

            return sub_22726AB18(v27, a2, v26, a3);
          }

          v13 = a5[3];
LABEL_10:
          a5[3] = v13;
          a5[4] = (v12 - 1) & v12;
          sub_22766D370();
          v16 = sub_227669310();
          MEMORY[0x22AA996B0](v16);
          result = sub_22766D3F0();
          v17 = -1 << *(a3 + 32);
          v18 = result & ~v17;
          v19 = v18 >> 6;
          v20 = 1 << v18;
        }

        while (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0);
        v21 = sub_227669310();
        result = sub_227669310();
        if (v21 == result)
        {
          break;
        }

        v22 = ~v17;
        while (1)
        {
          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            break;
          }

          v23 = sub_227669310();
          result = sub_227669310();
          if (v23 == result)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_3:
      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      if (v26 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t *sub_22700EA24(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
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

          return sub_22726999C(v27, a2, v26, a3);
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
        sub_22766D370();

        sub_22766C100();
        v16 = sub_22766D3F0();
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
        while ((sub_22766D190() & 1) == 0)
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

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

void sub_22700EC08(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BC8, &qword_227675590);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_227665F20();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_226E97D1C(v11, &qword_27D7B9BC8, &qword_227675590);
          v45 = v61;

          sub_22726B3A0(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_227010FF8(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
        v35 = sub_22766BF50();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_227010FF8(&qword_27D7B8700, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
        v43 = sub_22766BFB0();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_22700F0DC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v26 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v27 = a5;
  v28 = a3 + 56;
  while (2)
  {
    v25 = v6;
    do
    {
      while (1)
      {
        v7 = a5[3];
        v8 = a5[4];
        if (!v8)
        {
          v10 = (a5[2] + 64) >> 6;
          v11 = a5[3];
          while (1)
          {
            v9 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
              goto LABEL_24;
            }

            if (v9 >= v10)
            {
              break;
            }

            v8 = *(a5[1] + 8 * v9);
            ++v11;
            if (v8)
            {
              goto LABEL_10;
            }
          }

          if (v10 <= v7 + 1)
          {
            v23 = v7 + 1;
          }

          else
          {
            v23 = (a5[2] + 64) >> 6;
          }

          a5[3] = v23 - 1;
          a5[4] = 0;

          return sub_22726A888(v26, a2, v25, a3);
        }

        v9 = a5[3];
LABEL_10:
        v12 = *(*a5 + 48) + 24 * (__clz(__rbit64(v8)) | (v9 << 6));
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        a5[3] = v9;
        a5[4] = (v8 - 1) & v8;
        sub_22766D370();
        sub_226EB396C(v13, v14, v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        sub_226F480FC();
        sub_227663B10();
        v16 = sub_22766D3F0();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v28 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        result = sub_226EB2DFC(v13, v14, v15);
        a5 = v27;
      }

      v21 = ~v17;
      sub_226F48150();
      sub_226EC1E18();
      while ((sub_227663B20() & 1) == 0)
      {
        v18 = (v18 + 1) & v21;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v28 + 8 * (v18 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

      result = sub_226EB2DFC(v13, v14, v15);
      a5 = v27;
      v22 = v26[v19];
      v26[v19] = v22 & ~v20;
    }

    while ((v22 & v20) == 0);
    v6 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      if (v25 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

void sub_22700F384(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v35 = a2;
  v9 = sub_2276639B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v35 - v14;
  v16.n128_f64[0] = MEMORY[0x28223BE20](v15);
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

    sub_22726B9F0(v36, v35, v37, a3);
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
    sub_227010FF8(&qword_28139BCA8, MEMORY[0x277D501C8], MEMORY[0x277D501D0]);
    v25 = sub_22766BF50();
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
      sub_227010FF8(&qword_27D7B8678, MEMORY[0x277D501C8], MEMORY[0x277D501D8]);
      v32 = sub_22766BFB0();
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

void sub_22700F778(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a7)(void))
{
  v7 = a5;
  v9 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v36 = a3 + 56;
  while (2)
  {
    v32 = v10;
    do
    {
      while (1)
      {
        v11 = v7[3];
        v12 = v7[4];
        if (!v12)
        {
          v14 = (v7[2] + 64) >> 6;
          v15 = v7[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_24;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(v7[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (v7[2] + 64) >> 6;
          }

          v7[3] = v29 - 1;
          v7[4] = 0;

          a6(a1, a2, v32, a3);
          return;
        }

        v13 = v7[3];
LABEL_10:
        v16 = *(*(*v7 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
        v7[3] = v13;
        v7[4] = (v12 - 1) & v12;
        v17 = v16;
        v18 = sub_22766CB20();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v7 = a5;
      }

      a7(0);
      v23 = *(*(a3 + 48) + 8 * v20);
      v24 = sub_22766CB30();

      if ((v24 & 1) == 0)
      {
        v25 = ~v19;
        do
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v36 + 8 * (v20 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_22766CB30();
        }

        while ((v27 & 1) == 0);
      }

      v7 = a5;

      v28 = *(a1 + 8 * v21);
      *(a1 + 8 * v21) = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v10 = v32 - 1;
    if (__OFSUB__(v32, 1))
    {
LABEL_24:
      __break(1u);
    }

    else if (v32 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_22700F9BC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_227663480();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_226E97D1C(v11, &unk_27D7BD3F0, &unk_2276823F0);
          v45 = v61;

          sub_22726AD50(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_227010FF8(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
        v35 = sub_22766BF50();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_227010FF8(&qword_27D7B89E0, MEMORY[0x277D4FF88], MEMORY[0x277D4FF98]);
        v43 = sub_22766BFB0();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_22700FE90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  v9 = v5;

  v10 = sub_22766CD20();
  v11 = swift_unknownObjectRetain();
  v12 = a3(v11, v10);
  v21 = v12;

  v13 = sub_22766CB20();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    sub_226E99364(0, a4, a5);
    while (1)
    {
      v17 = *(*(v12 + 48) + 8 * v15);
      v18 = sub_22766CB30();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v19 = *(*(v12 + 48) + 8 * v15);
  sub_22701087C(v15);
  result = sub_22766CB30();
  if (result)
  {
    *v9 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_227010000(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22766CCA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22766D370();

        sub_22766C100();
        v10 = sub_22766D3F0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void sub_2270101C4(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = *v5;
  v12 = *v5 + 56;
  v13 = -1 << *(*v5 + 32);
  v14 = (a1 + 1) & ~v13;
  if (((1 << v14) & *(v12 + 8 * (v14 >> 6))) != 0)
  {
    v15 = ~v13;

    v16 = sub_22766CCA0();
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) != 0)
    {
      v38 = (v16 + 1) & v15;
      v37 = *(v8 + 16);
      v43 = *(v8 + 72);
      v39 = v8 + 16;
      v17 = (v8 + 8);
      v18 = v11;
      v19 = v15;
      while (1)
      {
        v20 = v12;
        v21 = v43 * v14;
        v22 = v19;
        v37(v10, *(v18 + 48) + v43 * v14, v7);
        v23 = v18;
        sub_227010FF8(v40, v41, v42);
        v24 = sub_22766BF50();
        (*v17)(v10, v7);
        v19 = v22;
        v25 = v24 & v22;
        if (a1 >= v38)
        {
          if (v25 < v38 || a1 < v25)
          {
LABEL_4:
            v18 = v23;
            goto LABEL_5;
          }
        }

        else if (v25 < v38 && a1 < v25)
        {
          goto LABEL_4;
        }

        v18 = v23;
        v28 = *(v23 + 48);
        v29 = v43 * a1;
        v30 = v28 + v43 * a1;
        v31 = v28 + v21 + v43;
        if (v43 * a1 < v21 || v30 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v19 = v22;
          a1 = v14;
          goto LABEL_5;
        }

        a1 = v14;
        if (v29 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v14 = (v14 + 1) & v19;
        v12 = v20;
        if (((*(v20 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v18 = v11;
LABEL_28:
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v18 = v11;
  }

  v33 = *(v18 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v35;
    ++*(v18 + 36);
  }
}

unint64_t sub_2270104C0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22766CCA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v11 = 24 * v6;
        sub_22766D370();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        sub_226F480FC();
        sub_227663B10();
        v12 = sub_22766D3F0() & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v12)
        {
LABEL_11:
          v13 = *(v3 + 48);
          v14 = v13 + 24 * v2;
          v15 = (v13 + v11);
          if (24 * v2 < v11 || v14 >= v15 + 24 || v2 != v6)
          {
            v10 = *v15;
            *(v14 + 16) = *(v15 + 2);
            *v14 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2270106D0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22766CCA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_22766D370();
        v10 = sub_227669310();
        MEMORY[0x22AA996B0](v10);
        v11 = sub_22766D3F0() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_22701087C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22766CCA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_22766CB20();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

_OWORD *sub_227010A38(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  a2[2] = a1[2];
  a2[3] = v4;
  *a2 = v2;
  a2[1] = v3;
  return a2;
}

uint64_t sub_227010A6C(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_227662010();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x28223BE20](v13);
  v42 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v43 = &v39 - v16;
  v17 = type metadata accessor for DateIntervalSessionThreshold(0);
  v18 = (v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[3] = &type metadata for PersistenceHandle;
  v47[4] = &off_283A9AF78;
  v21 = swift_allocObject();
  v47[0] = v21;
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  v22 = v11;
  v23 = *(v11 + 2);
  v40 = a1;
  v23(v20, a1, v10);
  *&v20[v18[7]] = 0x4072C00000000000;
  v24 = &v20[v18[8]];
  *v24 = 0;
  v24[8] = 1;
  *&v20[v18[9]] = 0x3FE0000000000000;
  v25 = a2;
  v26 = a3;

  v27 = sub_2274B8C4C(v20, v47);
  v42 = v22;
  sub_226F733F0(v20);
  sub_22766A610();
  v28 = v41;
  v23(v41, v40, v10);

  v29 = sub_22766B380();
  v30 = sub_22766C8B0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v46 = v32;
    *v31 = 134218242;
    *(v31 + 4) = *(v27 + 16);

    *(v31 + 12) = 2080;
    sub_227010FF8(&qword_28139BDF8, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v33 = sub_22766D140();
    v34 = v28;
    v36 = v35;
    v42[1](v34, v10);
    v37 = sub_226E97AE8(v33, v36, &v46);

    *(v31 + 14) = v37;
    _os_log_impl(&dword_226E8E000, v29, v30, "[AchievementEnvironmentProvider] Found [%ld] completed archived sessions for date interval: %s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v31, -1, -1);
  }

  else
  {

    v42[1](v28, v10);
  }

  (*(v44 + 8))(v43, v45);
  __swift_destroy_boxed_opaque_existential_0(v47);
  return v27;
}

uint64_t sub_227010FE0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_226EB2DFC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_227010FF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WorkoutPlanModalityDurationGroup.init(scheduledItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  sub_226EB396C(v3, v4, v5);

  result = sub_226EB2DFC(v3, v4, v5);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return result;
}

uint64_t static WorkoutPlanModalityDurationGroup.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_226F48150();
  sub_226EC1E18();
  return sub_227663B20() & 1;
}

uint64_t WorkoutPlanModalityDurationGroup.hash(into:)(uint64_t a1)
{
  MEMORY[0x22AA996B0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  return sub_227663B10();
}

uint64_t WorkoutPlanModalityDurationGroup.hashValue.getter()
{
  sub_22766D370();
  sub_226F48338();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_22701123C(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_22766BF60();
  return sub_22766D3F0();
}

uint64_t sub_2270112B0(uint64_t a1)
{
  MEMORY[0x22AA996B0](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  return sub_227663B10();
}

uint64_t sub_22701133C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22766D370();
  sub_22766BF60();
  return sub_22766D3F0();
}

unint64_t sub_2270113B0()
{
  result = qword_27D7B9BD0;
  if (!qword_27D7B9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9BD0);
  }

  return result;
}

uint64_t sub_227011404(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_226F48150();
  sub_226EC1E18();
  return sub_227663B20() & 1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2270114B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_227011500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_227011568(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_227665E80();
  v2[8] = swift_task_alloc();
  v3 = sub_22766A2F0();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_22766B390();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2270116BC, 0, 0);
}

uint64_t sub_2270116BC()
{
  v1 = v0[7];
  v2 = sub_226FC52A4();
  v0[16] = v2;
  v3 = v1[3];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_22701178C;

  return MEMORY[0x2821AEDA8](v2, v3, v4);
}

uint64_t sub_22701178C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_227011CFC;
  }

  else
  {
    v2 = sub_2270118A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2270118A8()
{
  v23 = v0;
  sub_22766A6D0();

  v1 = sub_22766B380();
  v2 = sub_22766C8B0();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[15];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  if (v3)
  {
    v21 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315138;
    v10 = sub_226E99364(0, &qword_281398A10, 0x277CCD8A8);
    v11 = MEMORY[0x22AA98660](v5, v10);
    v13 = v12;

    v14 = sub_226E97AE8(v11, v13, &v22);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v1, v2, "HealthKitMindfulSessionService: Successfully saved mindful session samples: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v6 + 8))(v21, v7);
  }

  else
  {

    (*(v6 + 8))(v4, v7);
  }

  v15 = v0[7];
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_0(v15, v16);
  v18 = swift_task_alloc();
  v0[19] = v18;
  v19 = *(v17 + 8);
  *v18 = v0;
  v18[1] = sub_227011AC4;

  return MEMORY[0x2821AED88](v16, v19);
}

uint64_t sub_227011AC4(double a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_227011EF4;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_227011BE8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227011BE8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  swift_getObjectType();
  sub_22766C500();
  sub_227665E70();
  sub_22766A2E0();
  sub_2276699D0();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227011CFC()
{
  v19 = v0;
  v1 = v0[18];
  sub_22766A6D0();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v17 = v0[14];
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v11 = sub_226E97AE8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "HealthKitMindfulSessionService: Error processing mindfulness jobs: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[12];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_227011EF4()
{
  v19 = v0;
  v1 = v0[20];
  sub_22766A6D0();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v17 = v0[14];
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v11 = sub_226E97AE8(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_226E8E000, v3, v4, "HealthKitMindfulSessionService: Error processing mindfulness jobs: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AA9A450](v8, -1, -1);
    MEMORY[0x22AA9A450](v7, -1, -1);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[12];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_2270120EC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_227666BF0();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_227662750();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BF3D0, &unk_227675740);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BD8, qword_22767DD50);
  v3[13] = swift_task_alloc();
  v6 = sub_227662190();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = sub_227662940();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227012378, 0, 0);
}

uint64_t sub_227012378()
{
  v1 = [objc_opt_self() categoryTypeForIdentifier_];
  v0[22] = v1;
  if (!v1)
  {
    return sub_22766CFB0();
  }

  v2 = v1;
  v3 = v0[18];
  v4 = v0[17];
  v6 = v0[12];
  v5 = v0[13];
  sub_227662920();
  (*(v3 + 56))(v5, 1, 1, v4);
  v7 = sub_2276629D0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_227668950();
  if (__OFSUB__(0, v8))
  {
    __break(1u);
  }

  else
  {
    v16 = v0[21];
    v63 = v0[20];
    v64 = v2;
    v18 = v0[18];
    v17 = v0[19];
    v19 = v0[16];
    v20 = v0[15];
    v61 = v0[14];
    v62 = v0[17];
    v21 = v0[10];
    v22 = v0[11];
    v60 = v0[9];
    LOBYTE(v59) = 1;
    LOBYTE(v58) = 1;
    LOBYTE(v57) = 1;
    LOBYTE(v56) = 1;
    LOBYTE(v55) = 1;
    LOBYTE(v54) = 1;
    LOBYTE(v53) = 1;
    LOBYTE(v52) = 1;
    LOBYTE(v51) = 1;
    LOBYTE(v50) = 1;
    v49[0] = 0;
    v48 = -v8;
    sub_227662180();
    sub_227662740();
    sub_2276628E0();
    v23 = *(v21 + 8);
    v23(v22, v60);
    (*(v20 + 8))(v19, v61);
    (*(v18 + 8))(v17, v62);
    sub_226EDDC60(v16, v63);
    v24 = 0;
    if ((*(v21 + 48))(v63, 1, v60) != 1)
    {
      v25 = v0[20];
      v26 = v0[9];
      v24 = sub_2276626A0();
      v23(v25, v26);
    }

    v27 = v0[11];
    v28 = v0[9];
    v29 = v0[4];
    v30 = v0[5];
    v31 = objc_opt_self();
    sub_227662740();
    v32 = sub_2276626A0();
    v23(v27, v28);
    v33 = [v31 predicateForSamplesWithStartDate:v24 endDate:v32 options:{0, v48, *v49, 0, v50, 0, v51, 0, v52, 0, v53, 0, v54, 0, v55, 0, v56, 0, v57, 0, v58, 0, v59}];
    v0[23] = v33;

    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_2276728D0;
    v35 = sub_22766C000();
    v37 = v36;
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = sub_22701311C();
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    *(v34 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
    *(v34 + 104) = sub_227013170();
    *(v34 + 72) = v29;

    v38 = sub_22766C7F0();
    v0[24] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2276756A0;
    *(v39 + 32) = v33;
    *(v39 + 40) = v38;
    v40 = v33;
    v41 = v38;
    v42 = sub_22766C2B0();

    v43 = [objc_opt_self() andPredicateWithSubpredicates_];
    v0[25] = v43;

    v44 = [objc_allocWithZone(MEMORY[0x277CCAC98]) initWithKey:*MEMORY[0x277CCCD50] ascending:0];
    v0[26] = v44;
    v45 = swift_task_alloc();
    v0[27] = v45;
    v45[2] = v64;
    v45[3] = v43;
    v45[4] = v44;
    v45[5] = v30;
    v46 = swift_task_alloc();
    v0[28] = v46;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BE8, &unk_227675760);
    *v46 = v0;
    v46[1] = sub_227012930;
    v13 = sub_2270131D4;
    v8 = (v0 + 2);
    v12 = 0x8000000227696DC0;
    v9 = 0;
    v10 = 0;
    v11 = 0xD000000000000030;
    v14 = v45;
  }

  return MEMORY[0x2822008A0](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_227012930()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_227012D9C;
  }

  else
  {
    v2 = sub_227012A60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_227012A60()
{
  v1 = v0[2];
  v26 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AA991A0](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      MEMORY[0x22AA985C0](v5);
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      ++v4;
      if (v6 == i)
      {
        v7 = v26;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_15:

  if (v7 >> 62)
  {
    v8 = sub_22766CD20();
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_30:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_17:
  v27 = v3;
  result = sub_226F1F328(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    return result;
  }

  v10 = 0;
  v11 = v0[7];
  v12 = v27;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AA991A0](v10, v7);
    }

    else
    {
      v13 = *(v7 + 8 * v10 + 32);
    }

    sub_227070868(v13, v0[8]);
    v15 = *(v27 + 16);
    v14 = *(v27 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_226F1F328((v14 > 1), v15 + 1, 1);
    }

    v16 = v0[8];
    v17 = v0[6];
    ++v10;
    *(v27 + 16) = v15 + 1;
    (*(v11 + 32))(v27 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15, v16, v17);
  }

  while (v8 != v10);

LABEL_31:
  v19 = v0[25];
  v18 = v0[26];
  v21 = v0[23];
  v20 = v0[24];
  v22 = v0[21];
  v23 = v0[22];
  v25 = sub_226F3EF74(v12);

  sub_226EDDD40(v22);

  v24 = v0[1];

  return v24(v25);
}

uint64_t sub_227012D9C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);

  sub_226EDDD40(v5);

  v6 = *(v0 + 8);

  return v6();
}

void sub_227012E9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v22 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670B30;
  *(v13 + 32) = a4;
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v12, v9);
  v16 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
  v17 = a4;
  v18 = sub_22766C2B0();

  aBlock[4] = sub_2270131E0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2274FCD04;
  aBlock[3] = &block_descriptor_7;
  v19 = _Block_copy(aBlock);
  v20 = [v16 initWithSampleType:a2 predicate:v22 limit:0 sortDescriptors:v18 resultsHandler:v19];

  _Block_release(v19);

  __swift_project_boxed_opaque_existential_0(a5, a5[3]);
  sub_227669CD0();
}

unint64_t sub_22701311C()
{
  result = qword_2813991A0;
  if (!qword_2813991A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813991A0);
  }

  return result;
}

unint64_t sub_227013170()
{
  result = qword_27D7B9BE0;
  if (!qword_27D7B9BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B84D0, &unk_227675750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9BE0);
  }

  return result;
}

uint64_t sub_2270131E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  return sub_22766C430();
}

uint64_t sub_22701328C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_226F1EFF0(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_22766CC90();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_227663FB0();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_226F1EFF0((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_226EB526C(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
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

uint64_t sub_227013520(uint64_t a1, unsigned int a2)
{
  v35 = a2;
  v4 = sub_2276660A0();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v29[1] = v2;
  v38 = MEMORY[0x277D84F90];
  sub_226F1FBA8(0, v7, 0);
  v8 = v38;
  v9 = a1 + 56;
  result = sub_22766CC90();
  v11 = result;
  v12 = 0;
  v30 = a1 + 64;
  v31 = v7;
  v32 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v15 = *(a1 + 36);
    v36 = v12;
    v37 = v15;
    v16 = (*(a1 + 48) + 16 * v11);
    v17 = a1;
    v18 = v16[1];
    *v6 = *v16;
    v6[1] = v18;
    swift_storeEnumTagMultiPayload();
    v38 = v8;
    v19 = v6;
    v21 = *(v8 + 16);
    v20 = *(v8 + 24);

    if (v21 >= v20 >> 1)
    {
      sub_226F1FBA8((v20 > 1), v21 + 1, 1);
      v8 = v38;
    }

    *(v8 + 16) = v21 + 1;
    result = sub_22701A9C0(v19, v8 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21);
    v13 = 1 << *(v17 + 32);
    if (v11 >= v13)
    {
      goto LABEL_23;
    }

    a1 = v17;
    v9 = v32;
    v22 = *(v32 + 8 * v14);
    if ((v22 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v37 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v6 = v19;
    v23 = v22 & (-2 << (v11 & 0x3F));
    if (v23)
    {
      v13 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v14 << 6;
      v25 = v14 + 1;
      v26 = (v30 + 8 * v14);
      while (v25 < (v13 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_226EB526C(v11, v37, 0);
          v13 = __clz(__rbit64(v27)) + v24;
          goto LABEL_19;
        }
      }

      result = sub_226EB526C(v11, v37, 0);
LABEL_19:
      v6 = v19;
    }

    v12 = v36 + 1;
    v11 = v13;
    if (v36 + 1 == v31)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22701380C(uint64_t a1)
{
  v3 = sub_2276660A0();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v32 = v1;
  v42 = MEMORY[0x277D84F90];
  sub_226F1FBA8(0, v7, 0);
  v8 = v42;
  v9 = a1 + 56;
  result = sub_22766CC90();
  v11 = result;
  v12 = 0;
  v33 = a1 + 64;
  v34 = v7;
  v35 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    v40 = v12;
    v41 = v15;
    v16 = *(a1 + 48) + 24 * v11;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = v37;
    *v37 = *v16;
    v20[1] = v17;
    swift_storeEnumTagMultiPayload();
    v21 = v20;
    v22 = v36;
    sub_22701A9C0(v21, v36);
    sub_226F491FC(v18, v17, v19);
    v42 = v8;
    v24 = *(v8 + 16);
    v23 = *(v8 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_226F1FBA8((v23 > 1), v24 + 1, 1);
      v8 = v42;
    }

    *(v8 + 16) = v24 + 1;
    result = sub_22701A9C0(v22, v8 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v24);
    v13 = 1 << *(a1 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v9 = v35;
    v25 = *(v35 + 8 * v14);
    if ((v25 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v41 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v11 & 0x3F));
    if (v26)
    {
      v13 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v14 << 6;
      v28 = v14 + 1;
      v29 = (v33 + 8 * v14);
      while (v28 < (v13 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_226EB526C(v11, v41, 0);
          v13 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v11, v41, 0);
    }

LABEL_4:
    v12 = v40 + 1;
    v11 = v13;
    if (v40 + 1 == v34)
    {
      return v8;
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

uint64_t sub_227013B2C(uint64_t a1)
{
  v3 = sub_2276660A0();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v29 = v1;
  v37 = MEMORY[0x277D84F90];
  sub_226F1FBA8(0, v6, 0);
  v7 = v37;
  v8 = a1 + 56;
  result = sub_22766CC90();
  v10 = result;
  v11 = 0;
  v30 = a1 + 64;
  v31 = v6;
  v32 = a1 + 56;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v35 = v11;
    v36 = v14;
    v15 = *(a1 + 48) + 24 * v10;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = a1;
    v19 = *(v15 + 16);
    *v5 = *v15;
    *(v5 + 1) = v17;
    v5[16] = v19;
    swift_storeEnumTagMultiPayload();
    sub_226EB396C(v16, v17, v19);
    v37 = v7;
    v21 = *(v7 + 16);
    v20 = *(v7 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_226F1FBA8((v20 > 1), v21 + 1, 1);
      v7 = v37;
    }

    *(v7 + 16) = v21 + 1;
    result = sub_22701A9C0(v5, v7 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v21);
    v12 = 1 << *(v18 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    a1 = v18;
    v8 = v32;
    v22 = *(v32 + 8 * v13);
    if ((v22 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v36 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v23 = v22 & (-2 << (v10 & 0x3F));
    if (v23)
    {
      v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v13 << 6;
      v25 = v13 + 1;
      v26 = (v30 + 8 * v13);
      while (v25 < (v12 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_226EB526C(v10, v36, 0);
          v12 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v10, v36, 0);
    }

LABEL_4:
    v11 = v35 + 1;
    v10 = v12;
    if (v35 + 1 == v31)
    {
      return v7;
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

void *sub_227013E10(uint64_t a1)
{
  v54 = sub_2276660A0();
  v2 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  MEMORY[0x28223BE20](v7);
  v56 = &v46 - v8;
  MEMORY[0x28223BE20](v9);
  v53 = &v46 - v10;
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v47 = xmmword_227670CD0;
  v48 = a1;
  v49 = v17;
  v50 = v6;
  v51 = v2;
  while (v16)
  {
LABEL_11:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = *(v2 + 72);
    v21 = v53;
    sub_22701A900(*(a1 + 48) + v20 * (v19 | (v11 << 6)), v53);
    v22 = v21;
    v23 = v56;
    sub_22701A9C0(v22, v56);
    sub_22701A900(v23, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v55 = v20;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_22701A964(v6);
        v25 = 1;
        break;
      case 2:
        sub_22701A964(v6);
        v25 = 2;
        break;
      case 3:
        sub_22701A964(v6);
        v25 = 3;
        break;
      case 4:
        sub_22701A964(v6);
        v25 = 5;
        break;
      case 5:
        sub_22701A964(v6);
        v25 = 6;
        break;
      case 6:
        v26 = sub_227664010();
        (*(*(v26 - 8) + 8))(v6, v26);
        v25 = 4;
        break;
      case 7:
        sub_22701A964(v6);
        v25 = 7;
        break;
      case 8:
        sub_22701A964(v6);
        v25 = 8;
        break;
      case 9:
        sub_22701A964(v6);
        v25 = 9;
        break;
      case 10:
        sub_22701A964(v6);
        v25 = 10;
        break;
      case 11:
        sub_22701A964(v6);
        v25 = 11;
        break;
      case 12:
        sub_22701A964(v6);
        v25 = 12;
        break;
      default:
        sub_22701A964(v6);
        v25 = 0;
        break;
    }

    v28 = sub_226F3A9E4(v25);
    v29 = v12[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_38;
    }

    v32 = v27;
    if (v12[3] < v31)
    {
      sub_226FE4394(v31, 1);
      v12 = v57;
      v33 = sub_226F3A9E4(v25);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_40;
      }

      v28 = v33;
    }

    if (v32)
    {
      v35 = v12[7];
      sub_22701A9C0(v56, v52);
      v36 = *(v35 + 8 * v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 8 * v28) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_2273A52C0(0, v36[2] + 1, 1, v36);
        *(v35 + 8 * v28) = v36;
      }

      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        v36 = sub_2273A52C0((v38 > 1), v39 + 1, 1, v36);
        *(v35 + 8 * v28) = v36;
      }

      v36[2] = v39 + 1;
      v2 = v51;
      sub_22701A9C0(v52, v36 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + v39 * v55);
      a1 = v48;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B0, &unk_2276758F0);
      v40 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v47;
      sub_22701A9C0(v56, v41 + v40);
      v12[(v28 >> 6) + 8] |= 1 << v28;
      *(v12[6] + v28) = v25;
      *(v12[7] + 8 * v28) = v41;
      v42 = v12[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_39;
      }

      v12[2] = v44;
      v2 = v51;
    }

    v17 = v49;
    v6 = v50;
  }

  while (1)
  {
    v18 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return v12;
    }

    v16 = *(v13 + 8 * v18);
    ++v11;
    if (v16)
    {
      v11 = v18;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_22766D220();
  __break(1u);
  return result;
}

id sub_2270142F4()
{
  v0 = sub_227663D30();
  v1 = sub_227013E10(v0);
  sub_227014900(v1, sub_22750E2B0, &selRef_orPredicateWithSubpredicates_);
  v3 = v2;

  v4 = sub_227663D20();
  v5 = sub_227013E10(v4);
  sub_227014900(v5, sub_22750F174, &selRef_andPredicateWithSubpredicates_);
  v7 = v6;

  v8 = *(v3 + 16);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = sub_226ECC830(*(v3 + 16), 0);
  v10 = sub_2274CF834();
  result = sub_226EBB21C(v33[0]);
  if (v10 == v8)
  {
    v12 = *(v7 + 16);
    if (v12)
    {
      while (1)
      {
        v13 = sub_226ECC830(v12, 0);
        v7 = sub_2274CF834();
        sub_226EBB21C(v33[0]);
        if (v7 == v12)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v9 = MEMORY[0x277D84F90];
        v12 = *(v7 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v13 = MEMORY[0x277D84F90];
    }

    sub_22745F2F8(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2276728D0;
    *(v14 + 32) = sub_227664C10();
    *(v14 + 40) = v15;
    *(v14 + 48) = sub_227664C10();
    *(v14 + 56) = v16;
    swift_getKeyPath();
    v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
    v33[0] = v14;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v17 = sub_22766C820();
    sub_226ED25F8(v33, v31);
    v18 = v32;
    if (v32)
    {
      v19 = __swift_project_boxed_opaque_existential_0(v31, v32);
      v20 = *(v18 - 8);
      v21 = MEMORY[0x28223BE20](v19);
      v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
      (*(v20 + 16))(v23, v21);
      v24 = sub_22766D170();
      (*(v20 + 8))(v23, v18);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    else
    {
      v24 = 0;
    }

    v25 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

    sub_226EBC888(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670B30;
    *(inited + 32) = v26;
    v33[0] = v9;
    sub_22745F2F8(inited);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v28 = sub_22766C2B0();

    v29 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_227014728()
{
  v0 = sub_227663D30();
  v1 = sub_227013E10(v0);
  sub_227014D38(v1, sub_227018428);
  v3 = v2;

  v4 = sub_227663D20();
  v5 = sub_227013E10(v4);
  sub_227014D38(v5, sub_22701876C);
  v7 = v6;

  v8 = *(v3 + 16);
  if (!v8)
  {
    goto LABEL_6;
  }

  sub_226ECC830(*(v3 + 16), 0);
  v9 = sub_2274CF834();
  result = sub_226EBB21C(v15);
  if (v9 == v8)
  {
    v11 = *(v7 + 16);
    if (v11)
    {
      while (1)
      {
        v12 = sub_226ECC830(v11, 0);
        v7 = sub_2274CF834();
        sub_226EBB21C(v15);
        if (v7 == v11)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v11 = *(v7 + 16);
        if (!v11)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v12 = MEMORY[0x277D84F90];
    }

    sub_22745F2F8(v12);
    sub_22745F2F8(MEMORY[0x277D84F90]);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v13 = sub_22766C2B0();

    v14 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_227014900(uint64_t a1, uint64_t (*a2)(char *), SEL *a3)
{
  v42 = a3;
  v50 = a2;
  v4 = sub_2276660A0();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x277D84F98];
  v52 = MEMORY[0x277D84F98];
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v48 = a1;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v46 = v11;
  v47 = a1 + 64;
  while (1)
  {
    v14 = v12;
    if (!v10)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v12 = v14;
LABEL_10:
      v15 = __clz(__rbit64(v10)) | (v12 << 6);
      v16 = *(v48 + 56);
      v45 = *(*(v48 + 48) + v15);
      v17 = *(v16 + 8 * v15);
      v51 = v13;
      v18 = *(v17 + 16);
      v49 = v17;
      if (v18)
      {
        v19 = v44;
        v20 = v17 + ((*(v44 + 80) + 32) & ~*(v44 + 80));

        v21 = *(v19 + 72);
        v22 = v13;
        do
        {
          sub_22701A900(v20, v6);
          v23 = v50(v6);
          v24 = sub_22701A964(v6);
          if (v23)
          {
            MEMORY[0x22AA985C0](v24);
            if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22766C360();
            }

            sub_22766C3A0();
            v22 = v51;
          }

          v20 += v21;
          --v18;
        }

        while (v18);
      }

      else
      {

        v22 = v13;
      }

      v25 = v22 >> 62 ? sub_22766CD20() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 &= v10 - 1;
      if (v25)
      {
        break;
      }

      v14 = v12;
      v11 = v46;
      v7 = v47;
      v13 = MEMORY[0x277D84F90];
      if (!v10)
      {
LABEL_7:
        while (1)
        {
          v12 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v12 >= v11)
          {

            return;
          }

          v10 = *(v7 + 8 * v12);
          ++v14;
          if (v10)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_39;
      }
    }

    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v26 = sub_22766C2B0();

    v27 = [objc_opt_self() *v42];

    v28 = v43[2];
    v13 = MEMORY[0x277D84F90];
    if (v43[3] <= v28)
    {
      sub_226FE40EC(v28 + 1, 1);
    }

    v29 = v52;
    sub_22766D370();
    sub_227667470();
    sub_22766C100();

    v30 = sub_22766D3F0();
    v31 = v29 + 64;
    v43 = v29;
    v32 = -1 << *(v29 + 32);
    v33 = v30 & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v29 + 64 + 8 * (v33 >> 6))) == 0)
    {
      break;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v29 + 64 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    v11 = v46;
    v7 = v47;
LABEL_36:
    *(v31 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v40 = v43;
    *(v43[6] + v35) = v45;
    *(v40[7] + 8 * v35) = v27;
    ++v40[2];
  }

  v36 = 0;
  v37 = (63 - v32) >> 6;
  v11 = v46;
  v7 = v47;
  while (++v34 != v37 || (v36 & 1) == 0)
  {
    v38 = v34 == v37;
    if (v34 == v37)
    {
      v34 = 0;
    }

    v36 |= v38;
    v39 = *(v31 + 8 * v34);
    if (v39 != -1)
    {
      v35 = __clz(__rbit64(~v39)) + (v34 << 6);
      goto LABEL_36;
    }
  }

LABEL_39:
  __break(1u);
}

void sub_227014D38(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v26 = MEMORY[0x277D84F98];
  v28 = MEMORY[0x277D84F98];
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

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = *(*(a1 + 48) + (__clz(__rbit64(v7)) | (v9 << 6)));

    v13 = a2(v12);
    if (v2)
    {

      return;
    }

    v14 = v13;
    v7 &= v7 - 1;

    if (v14)
    {
      v15 = *(v26 + 16);
      if (*(v26 + 24) <= v15)
      {
        sub_226FE40EC(v15 + 1, 1);
      }

      v26 = v28;
      sub_22766D370();
      sub_227667470();
      sub_22766C100();

      v16 = sub_22766D3F0();
      v17 = v28 + 64;
      v18 = -1 << *(v28 + 32);
      v19 = v16 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v28 + 64 + 8 * (v19 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v18) >> 6;
        while (++v20 != v23 || (v22 & 1) == 0)
        {
          v24 = v20 == v23;
          if (v20 == v23)
          {
            v20 = 0;
          }

          v22 |= v24;
          v25 = *(v17 + 8 * v20);
          if (v25 != -1)
          {
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_28;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v28 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v28 + 48) + v21) = v11;
      *(*(v28 + 56) + 8 * v21) = v14;
      ++*(v28 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_227014FB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v70 = a2;
  v4 = sub_227663D60();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x28223BE20](v4);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v74 = &v66 - v10;
  v11 = sub_227664010();
  MEMORY[0x28223BE20](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v69 = v2;
  v19 = *(v2 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_modalityIdentifierMap + 8);
  if (*(v19 + 16))
  {
    v68 = v12;
    v67 = *a1;

    v20 = sub_226F491D8();
    if (v21)
    {
      v22 = (*(v19 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      inited = swift_initStackObject();
      v66 = xmmword_227670CD0;
      *(inited + 16) = xmmword_227670CD0;
      *(inited + 32) = v24;
      v26 = inited + 32;
      *(inited + 40) = v23;
      v27 = sub_226F3E6A8(inited);
      swift_setDeallocating();
      sub_226FA6DA4(v26);
      v28 = MEMORY[0x277D84F90];
      v77 = MEMORY[0x277D84F90];
      v29 = sub_227013520(v27, 4u);

      sub_22745FA30(v29);
      v30 = sub_22701380C(v15);
      sub_22745FA30(v30);
      v80[0] = v67;
      sub_22766D140();
      sub_22766C540();
      sub_22766C540();
      sub_22766C540();
      sub_227663FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B0, &unk_2276758F0);
      v31 = *(sub_2276660A0() - 8);
      v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = v66;
      v34 = v68;
      (*(v68 + 16))(v33 + v32, v14, v11);
      swift_storeEnumTagMultiPayload();
      sub_22745FA30(v33);
      (*(v34 + 8))(v14, v11);
      v35 = v77;
      v80[0] = v28;
      v36 = sub_2276672F0();
      v37 = sub_227013520(v36, 2u);

      sub_22745FA30(v37);
      v38 = sub_2276672D0();
      v39 = sub_227013520(v38, 5u);

      sub_22745FA30(v39);
      v40 = sub_227667280();
      v41 = sub_227013520(v40, 0xAu);

      sub_22745FA30(v41);
      v42 = sub_227667260();
      v43 = sub_227013B2C(v42);

      sub_22745FA30(v43);
      sub_226F438E8(v80[0]);

      sub_226F438E8(v35);

      v44 = v70;
      sub_227663D10();
      v45 = v74;
      sub_22766A630();
      v47 = v71;
      v46 = v72;
      v48 = v73;
      (*(v72 + 16))(v71, v44, v73);
      v49 = sub_22766B380();
      v50 = sub_22766C8B0();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v80[0] = v70;
        *v51 = 136315138;
        sub_226EABF94(&qword_28139BC38, MEMORY[0x277D504B0], MEMORY[0x277D504B8]);
        v52 = sub_22766D140();
        v53 = v47;
        v55 = v54;
        (*(v46 + 8))(v53, v48);
        v56 = sub_226E97AE8(v52, v55, v80);

        *(v51 + 4) = v56;
        _os_log_impl(&dword_226E8E000, v49, v50, "Filtering catalog using: %s", v51, 0xCu);
        v57 = v70;
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x22AA9A450](v57, -1, -1);
        MEMORY[0x22AA9A450](v51, -1, -1);
      }

      else
      {

        (*(v46 + 8))(v47, v48);
      }

      return (*(v75 + 8))(v45, v76);
    }
  }

  sub_22766A630();

  sub_226EB396C(v16, v17, v18);
  v58 = sub_22766B380();
  v59 = sub_22766C890();

  sub_226EB2DFC(v16, v17, v18);
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v82 = v61;
    *v60 = 136315138;
    v80[0] = v16;
    v80[1] = v17;
    v81 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_227663AD0();
    v62 = sub_226E97AE8(v78, v79, &v82);

    *(v60 + 4) = v62;
    _os_log_impl(&dword_226E8E000, v58, v59, "Could not find modalityIdentifier for modalityKind = %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x22AA9A450](v61, -1, -1);
    MEMORY[0x22AA9A450](v60, -1, -1);
  }

  (*(v75 + 8))(v8, v76);
  v63 = sub_227664EC0();
  sub_226EABF94(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
  swift_allocError();
  (*(*(v63 - 8) + 104))(v64, *MEMORY[0x277D51188], v63);
  return swift_willThrow();
}

uint64_t sub_227015900(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  return MEMORY[0x2822009F8](sub_227015930, 0, 0);
}

uint64_t sub_227015930()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = *(v1 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_persistenceStore + 24);
  v4 = *(v1 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_persistenceStore + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_persistenceStore), v3);
  v5 = swift_allocObject();
  v0[15] = v5;
  *(v5 + 16) = v1;
  v7 = *v2;
  v6 = v2[1];
  *(v5 + 56) = *(v2 + 32);
  *(v5 + 24) = v7;
  *(v5 + 40) = v6;
  v8 = *(v4 + 24);

  sub_227019388((v0 + 2), (v0 + 7));
  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[16] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC970, qword_227675810);
  *v9 = v0;
  v9[1] = sub_227015AF4;

  return (v12)(v0 + 12, sub_22701A8E0, v5, v10, v3, v4);
}

uint64_t sub_227015AF4()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_227015E34;
  }

  else
  {

    v2 = sub_227015C10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_227015C10()
{
  v1 = v0[3];
  v2 = v0[12];
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = (63 - v4) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = *(v1 + 48) + 24 * (v9 | (v7 << 6));
      if (*(v10 + 16) == 1)
      {
        break;
      }

      if (!v5)
      {
        goto LABEL_6;
      }
    }

    v21 = *(v10 + 8);
    v22 = *v10;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_226EB3F78(0, *(v8 + 2) + 1, 1, v8);
    }

    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v16 = sub_226EB3F78((v12 > 1), v13 + 1, 1, v8);
      v14 = v13 + 1;
      v8 = v16;
    }

    *(v8 + 2) = v14;
    v15 = &v8[16 * v13];
    *(v15 + 4) = v22;
    *(v15 + 5) = v21;
  }

  while (v5);
  while (1)
  {
LABEL_6:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v1 + 56 + 8 * v11);
    ++v7;
    if (v5)
    {
      v7 = v11;
      goto LABEL_4;
    }
  }

  v17 = sub_226F3E6A8(v8);

  if (*(v17 + 16))
  {

    v19 = sub_22701967C(v18, v17);

    if (*(v19 + 16))
    {

      v2 = v19;
    }

    else
    {
    }
  }

  else
  {
  }

  v20 = v0[1];

  v20(v2);
}

uint64_t sub_227015E34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227015E98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v9 = sub_227663D60();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_227014FB8(a3, v12);
  if (!v4)
  {
    v14 = *(a2 + 16);
    v15 = sub_2276672A0();
    v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_227019A10(v12, v14, v15, *v16, v16[1], *(v16 + 16), v16[3]);

    (*(v10 + 8))(v12, v9);
    v17 = sub_226EE010C(100);

    *a4 = v17;
  }

  return result;
}

uint64_t sub_227016004(uint64_t a1, uint64_t a2)
{
  v54 = a1;
  v4 = sub_22766B390();
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v55 = *a2;
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_usedWorkoutsByGroup;
  swift_beginAccess();
  v17 = *(v2 + v16);
  v18 = *(v17 + 16);
  sub_226EB396C(v14, v13, v15);
  if (v18)
  {

    v19 = sub_226F3AB00(v55, v14, v13, v15);
    if (v20)
    {
      v21 = *(*(v17 + 56) + 8 * v19);

      if (*(v21 + 16))
      {
        v52 = v9;

        v23 = v57;
        v24 = sub_22701A480(v22, v21);
        v57 = v23;

        sub_22766A630();

        v25 = sub_22766B380();
        v26 = sub_22766C8B0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;
          *(v27 + 4) = *(v24 + 16);

          _os_log_impl(&dword_226E8E000, v25, v26, "%ld workouts left after filtering out used workouts", v27, 0xCu);
          MEMORY[0x22AA9A450](v27, -1, -1);
        }

        else
        {
        }

        v39 = v56 + 8;
        v38 = *(v56 + 8);
        v38(v12, v4);
        if (*(v24 + 16))
        {
          sub_226EB2DFC(v14, v13, v15);
        }

        else
        {
          v53 = v4;

          v24 = v52;
          sub_22766A630();
          sub_226EB396C(v14, v13, v15);
          v40 = sub_22766B380();
          v41 = sub_22766C890();
          sub_226EB2DFC(v14, v13, v15);
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v56 = v39;
            v43 = v42;
            v57 = swift_slowAlloc();
            v62 = v57;
            *v43 = 136315138;
            v58 = v55;
            v59 = v14;
            v60 = v13;
            v61 = v15;
            v44 = WorkoutPlanModalityDurationGroup.description.getter();
            v46 = v45;
            sub_226EB2DFC(v59, v60, v61);
            v47 = sub_226E97AE8(v44, v46, &v62);

            *(v43 + 4) = v47;
            _os_log_impl(&dword_226E8E000, v40, v41, "Could not find workout candidates for group: %s after filtering out used workouts", v43, 0xCu);
            v48 = v57;
            __swift_destroy_boxed_opaque_existential_0(v57);
            MEMORY[0x22AA9A450](v48, -1, -1);
            MEMORY[0x22AA9A450](v43, -1, -1);
          }

          else
          {
            sub_226EB2DFC(v14, v13, v15);
          }

          v38(v24, v53);
          v49 = sub_227664EC0();
          sub_226EABF94(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
          swift_allocError();
          (*(*(v49 - 8) + 104))(v50, *MEMORY[0x277D51170], v49);
          swift_willThrow();
        }

        return v24;
      }
    }
  }

  sub_22766A630();
  sub_226EB396C(v14, v13, v15);
  v28 = sub_22766B380();
  v29 = sub_22766C8B0();
  sub_226EB2DFC(v14, v13, v15);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v53 = v4;
    v31 = v30;
    v32 = swift_slowAlloc();
    v62 = v32;
    *v31 = 136315138;
    v58 = v55;
    v59 = v14;
    v60 = v13;
    v61 = v15;
    v33 = WorkoutPlanModalityDurationGroup.description.getter();
    v35 = v34;
    sub_226EB2DFC(v59, v60, v61);
    v36 = sub_226E97AE8(v33, v35, &v62);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v28, v29, "No used workouts found for group: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v31, -1, -1);

    (*(v56 + 8))(v6, v53);
  }

  else
  {
    sub_226EB2DFC(v14, v13, v15);

    (*(v56 + 8))(v6, v4);
  }

  v24 = v54;

  return v24;
}

uint64_t sub_227016634(uint64_t a1)
{
  *(v2 + 344) = v1;
  v4 = sub_22766B390();
  *(v2 + 352) = v4;
  *(v2 + 360) = *(v4 - 8);
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = swift_task_alloc();
  v5 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  *(v2 + 48) = *(a1 + 32);

  return MEMORY[0x2822009F8](sub_227016714, 0, 0);
}

uint64_t sub_227016714()
{
  v29 = v0;
  v1 = *(v0 + 344);
  v2 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_cachedCatalog;
  *(v0 + 384) = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_cachedCatalog;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_226F3ABA4((v0 + 16));
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      sub_22766A630();

      sub_227019388(v0 + 16, v0 + 216);
      v7 = sub_22766B380();
      v8 = sub_22766C8B0();
      sub_2270193E4(v0 + 16);
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 376);
      v11 = *(v0 + 352);
      v12 = *(v0 + 360);
      if (v9)
      {
        v13 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = v24;
        *v13 = 134218242;
        *(v13 + 4) = *(v6 + 16);

        *(v13 + 12) = 2080;
        v14 = *(v0 + 32);
        v26 = *(v0 + 16);
        v27 = v14;
        v28 = *(v0 + 48);
        sub_227019388(v0 + 16, v0 + 256);
        v23 = v10;
        v15 = WorkoutPlanGenerationScheduledItem.description.getter();
        v17 = v16;

        sub_226EB2DFC(v27, *(&v27 + 1), v28);
        v18 = sub_226E97AE8(v15, v17, &v25);

        *(v13 + 14) = v18;
        _os_log_impl(&dword_226E8E000, v7, v8, "Found %ld cached workouts for scheduled item: %s", v13, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x22AA9A450](v24, -1, -1);
        MEMORY[0x22AA9A450](v13, -1, -1);

        (*(v12 + 8))(v23, v11);
      }

      else
      {

        (*(v12 + 8))(v10, v11);
      }

      v22 = *(v0 + 8);

      return v22(v6);
    }
  }

  v19 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 72) = v19;
  *(v0 + 88) = *(v0 + 48);
  v20 = swift_task_alloc();
  *(v0 + 392) = v20;
  *v20 = v0;
  v20[1] = sub_227016A34;

  return sub_227015900(v0 + 56);
}

uint64_t sub_227016A34(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 400) = a1;
  *(v3 + 408) = v1;

  if (v1)
  {
    v4 = sub_227016E00;
  }

  else
  {
    v4 = sub_227016B48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227016B48()
{
  v28 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  v3 = *(v0 + 344);
  swift_beginAccess();
  sub_227019388(v0 + 16, v0 + 96);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v25 = *(v3 + v2);
  *(v3 + v2) = 0x8000000000000000;
  sub_22736A144(v1, v0 + 16, isUniquelyReferenced_nonNull_native);
  sub_2270193E4(v0 + 16);
  *(v3 + v2) = v25;
  swift_endAccess();
  sub_22766A630();
  sub_227019388(v0 + 16, v0 + 136);

  v5 = sub_22766B380();
  v6 = sub_22766C8B0();
  sub_2270193E4(v0 + 16);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 400);
    v21 = *(v0 + 360);
    v22 = *(v0 + 352);
    v23 = *(v0 + 368);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 134218242;
    *(v8 + 4) = *(v7 + 16);

    *(v8 + 12) = 2080;
    v10 = *(v0 + 32);
    v25 = *(v0 + 16);
    v26 = v10;
    v27 = *(v0 + 48);
    sub_227019388(v0 + 16, v0 + 176);
    v11 = WorkoutPlanGenerationScheduledItem.description.getter();
    v13 = v12;

    sub_226EB2DFC(v26, *(&v26 + 1), v27);
    v14 = sub_226E97AE8(v11, v13, &v24);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_226E8E000, v5, v6, "Found %ld workouts for scheduled item: %s. Saved to cache.", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);

    (*(v21 + 8))(v23, v22);
  }

  else
  {
    v16 = *(v0 + 360);
    v15 = *(v0 + 368);
    v17 = *(v0 + 352);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 400);

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_227016E00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227016E6C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_227666AA0();
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_20:

    v31 = sub_227666AE0();
    v32 = *(v31 + 16);
    if (!v32)
    {
    }

    v33 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_musicGenreFrequencies;
    swift_beginAccess();
    v34 = 0;
    v35 = (v31 + 40);
    v60 = v31;
    while (1)
    {
      if (v34 >= *(v31 + 16))
      {
        goto LABEL_41;
      }

      v36 = *(v2 + v33);
      if (*(v36 + 16))
      {
        v38 = *(v35 - 1);
        v37 = *v35;

        v39 = sub_226E92000(v38, v37);
        if (v40)
        {
          v41 = *(*(v36 + 56) + 8 * v39);

          if (__OFADD__(v41, 1))
          {
            goto LABEL_44;
          }

          v62 = v41 + 1;
          v42 = v32;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v44 = *(v2 + v33);
          v63 = v44;
          *(v2 + v33) = 0x8000000000000000;
          v45 = sub_226E92000(v38, v37);
          v47 = v44[2];
          v48 = (v46 & 1) == 0;
          v21 = __OFADD__(v47, v48);
          v49 = v47 + v48;
          if (v21)
          {
            goto LABEL_45;
          }

          v50 = v46;
          if (v44[3] >= v49)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_33;
            }

            v54 = v45;
            sub_226FF016C();
            v45 = v54;
            v32 = v42;
            if ((v50 & 1) == 0)
            {
              goto LABEL_36;
            }

LABEL_34:
            v52 = v45;

            v53 = v63;
            *(v63[7] + 8 * v52) = v62;
          }

          else
          {
            sub_226FE2228(v49, isUniquelyReferenced_nonNull_native);
            v45 = sub_226E92000(v38, v37);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_48;
            }

LABEL_33:
            v32 = v42;
            if (v50)
            {
              goto LABEL_34;
            }

LABEL_36:
            v53 = v44;
            v44[(v45 >> 6) + 8] |= 1 << v45;
            v55 = (v44[6] + 16 * v45);
            *v55 = v38;
            v55[1] = v37;
            *(v44[7] + 8 * v45) = v62;
            v56 = v44[2];
            v21 = __OFADD__(v56, 1);
            v57 = v56 + 1;
            if (v21)
            {
              goto LABEL_47;
            }

            v44[2] = v57;
          }

          *(v2 + v33) = v53;
          swift_endAccess();
          v31 = v60;
          goto LABEL_23;
        }
      }

LABEL_23:
      ++v34;
      v35 += 2;
      if (v32 == v34)
      {
      }
    }
  }

  v5 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_trainerFrequencies;
  swift_beginAccess();
  v6 = 0;
  v7 = (v3 + 40);
  v59 = v3;
  while (v6 < *(v3 + 16))
  {
    v8 = *(v2 + v5);
    if (*(v8 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;

      v11 = sub_226E92000(v10, v9);
      if (v12)
      {
        v13 = *(*(v8 + 56) + 8 * v11);

        if (__OFADD__(v13, 1))
        {
          goto LABEL_42;
        }

        v61 = v13 + 1;
        v14 = v4;
        swift_beginAccess();
        v15 = swift_isUniquelyReferenced_nonNull_native();
        v16 = *(v2 + v5);
        v64 = v16;
        *(v2 + v5) = 0x8000000000000000;
        v17 = sub_226E92000(v10, v9);
        v19 = v16[2];
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_43;
        }

        v23 = v18;
        if (v16[3] >= v22)
        {
          if (v15)
          {
            goto LABEL_14;
          }

          v27 = v17;
          sub_226FF016C();
          v17 = v27;
          v4 = v14;
          if ((v23 & 1) == 0)
          {
            goto LABEL_17;
          }

LABEL_15:
          v25 = v17;

          v26 = v64;
          *(v64[7] + 8 * v25) = v61;
        }

        else
        {
          sub_226FE2228(v22, v15);
          v17 = sub_226E92000(v10, v9);
          if ((v23 & 1) != (v24 & 1))
          {
            goto LABEL_48;
          }

LABEL_14:
          v4 = v14;
          if (v23)
          {
            goto LABEL_15;
          }

LABEL_17:
          v26 = v16;
          v16[(v17 >> 6) + 8] |= 1 << v17;
          v28 = (v16[6] + 16 * v17);
          *v28 = v10;
          v28[1] = v9;
          *(v16[7] + 8 * v17) = v61;
          v29 = v16[2];
          v21 = __OFADD__(v29, 1);
          v30 = v29 + 1;
          if (v21)
          {
            goto LABEL_46;
          }

          v16[2] = v30;
        }

        *(v2 + v5) = v26;
        swift_endAccess();
        v3 = v59;
        goto LABEL_4;
      }
    }

LABEL_4:
    ++v6;
    v7 += 2;
    if (v4 == v6)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2270172E0(uint64_t a1, uint64_t *a2)
{
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  v5 = sub_227666B60();
  *(v3 + 216) = v5;
  *(v3 + 224) = *(v5 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v6 = sub_22766B390();
  *(v3 + 248) = v6;
  *(v3 + 256) = *(v6 - 8);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  *(v3 + 288) = v7;
  *(v3 + 296) = v8;
  *(v3 + 304) = v9;
  *(v3 + 312) = *(a2 + 1);
  *(v3 + 97) = *(a2 + 32);

  return MEMORY[0x2822009F8](sub_22701744C, 0, 0);
}

uint64_t sub_22701744C()
{
  v1 = *(v0 + 97);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v4 = *(v0 + 304);
  *(v0 + 64) = *(v0 + 296);
  *(v0 + 72) = v4;
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  *(v0 + 96) = v1;
  sub_226EB396C(v2, v3, v1);
  v5 = swift_task_alloc();
  *(v0 + 328) = v5;
  *v5 = v0;
  v5[1] = sub_227017504;

  return sub_227016634(v0 + 64);
}

uint64_t sub_227017504(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    sub_226EB2DFC(*(v3 + 312), *(v3 + 320), *(v3 + 97));
    v4 = sub_2270180F8;
  }

  else
  {
    v4 = sub_227017624;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227017624()
{
  v147 = v0;
  v1 = *(v0 + 208);
  v2 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_usedWorkoutsByGroup;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
LABEL_7:
    v38 = *(*(v0 + 336) + 16);

    v39 = *(v0 + 97);
    v41 = *(v0 + 312);
    v40 = *(v0 + 320);
    if (v38 == 1)
    {
      sub_22766A630();
      sub_226EB396C(v41, v40, v39);
      v42 = sub_22766B380();
      v43 = sub_22766C8B0();
      sub_226EB2DFC(v41, v40, v39);
      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 97);
      v47 = *(v0 + 312);
      v46 = *(v0 + 320);
      if (v44)
      {
        v48 = *(v0 + 296);
        v49 = *(v0 + 256);
        v134 = *(v0 + 248);
        v138 = *(v0 + 272);
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v142 = v51;
        v143 = v48;
        *v50 = 136315138;
        v144 = v47;
        v145 = v46;
        v146 = v45;
        v52 = WorkoutPlanModalityDurationGroup.description.getter();
        v54 = v53;
        sub_226EB2DFC(v47, v145, v146);
        v55 = sub_226E97AE8(v52, v54, &v142);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_226E8E000, v42, v43, "Skipping addition of used workouts for group: %s due to low workout count.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x22AA9A450](v51, -1, -1);
        MEMORY[0x22AA9A450](v50, -1, -1);

        (*(v49 + 8))(v138, v134);
      }

      else
      {
        v76 = *(v0 + 272);
        v77 = *(v0 + 248);
        v78 = *(v0 + 256);
        sub_226EB2DFC(*(v0 + 312), *(v0 + 320), *(v0 + 97));

        (*(v78 + 8))(v76, v77);
      }
    }

    else
    {
      v139 = v1;
      v57 = *(v0 + 224);
      v56 = *(v0 + 232);
      v58 = *(v0 + 216);
      v59 = *(v0 + 200);
      sub_22766A630();
      (*(v57 + 16))(v56, v59, v58);
      sub_226EB396C(v41, v40, v39);
      v60 = sub_22766B380();
      v61 = sub_22766C8B0();
      sub_226EB2DFC(v41, v40, v39);
      if (os_log_type_enabled(v60, v61))
      {
        v62 = *(v0 + 97);
        v64 = *(v0 + 312);
        v63 = *(v0 + 320);
        v65 = *(v0 + 296);
        v129 = *(v0 + 256);
        v132 = *(v0 + 248);
        v135 = *(v0 + 264);
        v66 = *(v0 + 224);
        v121 = *(v0 + 232);
        v123 = *(v0 + 216);
        v67 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v142 = v126;
        v143 = v65;
        *v67 = 136315394;
        v144 = v64;
        v145 = v63;
        v146 = v62;
        sub_226EB396C(v64, v63, v62);
        v68 = WorkoutPlanModalityDurationGroup.description.getter();
        v70 = v69;
        sub_226EB2DFC(v64, v145, v146);
        v71 = sub_226E97AE8(v68, v70, &v142);

        *(v67 + 4) = v71;
        *(v67 + 12) = 2080;
        v72 = sub_227666A50();
        v74 = v73;
        (*(v66 + 8))(v121, v123);
        v75 = sub_226E97AE8(v72, v74, &v142);

        *(v67 + 14) = v75;
        _os_log_impl(&dword_226E8E000, v60, v61, "No used workouts found for group: %s. Adding %s.", v67, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AA9A450](v126, -1, -1);
        MEMORY[0x22AA9A450](v67, -1, -1);

        (*(v129 + 8))(v135, v132);
      }

      else
      {
        v80 = *(v0 + 256);
        v79 = *(v0 + 264);
        v81 = *(v0 + 248);
        v83 = *(v0 + 224);
        v82 = *(v0 + 232);
        v84 = *(v0 + 216);

        (*(v83 + 8))(v82, v84);
        (*(v80 + 8))(v79, v81);
      }

      v85 = *(v0 + 97);
      v87 = *(v0 + 312);
      v86 = *(v0 + 320);
      v88 = *(v0 + 296);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227670CD0;
      *(inited + 32) = sub_227666A50();
      *(inited + 40) = v90;
      v91 = sub_226F3E6A8(inited);
      swift_setDeallocating();
      sub_226FA6DA4(inited + 32);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143 = *(v139 + v2);
      *(v139 + v2) = 0x8000000000000000;
      sub_22736A2BC(v91, v88, v87, v86, v85, isUniquelyReferenced_nonNull_native);
      sub_226EB2DFC(v87, v86, v85);
      *(v139 + v2) = v143;
      swift_endAccess();
    }

    goto LABEL_20;
  }

  v4 = *(v0 + 97);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 296);

  v8 = sub_226F3AB00(v7, v6, v5, v4);
  if ((v9 & 1) == 0)
  {

    goto LABEL_7;
  }

  v10 = *(v0 + 336);
  v11 = *(*(v3 + 56) + 8 * v8);

  v141 = v11;
  v12 = *(sub_227018AD4(v10, &v141) + 2);

  v13 = *(v0 + 97);
  v15 = *(v0 + 312);
  v14 = *(v0 + 320);
  v136 = *(v0 + 296);
  if (v12 <= 1)
  {
    swift_beginAccess();
    sub_226EB396C(v15, v14, v13);
    sub_227363610(0, v136, v15, v14, v4);
    swift_endAccess();
    sub_22766A630();
    sub_226EB396C(v15, v14, v13);
    v93 = sub_22766B380();
    v94 = sub_22766C8B0();
    sub_226EB2DFC(v15, v14, v13);
    v95 = os_log_type_enabled(v93, v94);
    v96 = *(v0 + 97);
    v97 = *(v0 + 312);
    v98 = *(v0 + 320);
    if (v95)
    {
      v99 = *(v0 + 296);
      v140 = *(v0 + 288);
      v100 = *(v0 + 256);
      v133 = *(v0 + 248);
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v142 = v102;
      v143 = v99;
      *v101 = 136315138;
      v144 = v97;
      v145 = v98;
      v146 = v96;
      v103 = WorkoutPlanModalityDurationGroup.description.getter();
      v105 = v104;
      sub_226EB2DFC(v144, v145, v146);
      v106 = sub_226E97AE8(v103, v105, &v142);

      *(v101 + 4) = v106;
      _os_log_impl(&dword_226E8E000, v93, v94, "Reset used workouts for group: %s due to <= 1 available workout left", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x22AA9A450](v102, -1, -1);
      MEMORY[0x22AA9A450](v101, -1, -1);

      (*(v100 + 8))(v140, v133);
    }

    else
    {
      v114 = *(v0 + 288);
      v116 = *(v0 + 248);
      v115 = *(v0 + 256);
      sub_226EB2DFC(*(v0 + 312), *(v0 + 320), *(v0 + 97));

      (*(v115 + 8))(v114, v116);
    }
  }

  else
  {
    v16 = *(v0 + 224);
    v127 = *(v0 + 216);
    v130 = *(v0 + 240);
    v124 = *(v0 + 200);
    v17 = sub_227666A50();
    sub_2270AE890(&v143, v17, v18);

    v19 = v141;
    swift_beginAccess();
    sub_226EB396C(v15, v14, v13);

    v20 = swift_isUniquelyReferenced_nonNull_native();
    v143 = *(v1 + v2);
    *(v1 + v2) = 0x8000000000000000;
    sub_22736A2BC(v19, v136, v15, v14, v4, v20);
    sub_226EB2DFC(v15, v14, v13);
    *(v1 + v2) = v143;
    swift_endAccess();
    sub_22766A630();
    (*(v16 + 16))(v130, v124, v127);
    sub_226EB396C(v15, v14, v13);
    v21 = sub_22766B380();
    v22 = sub_22766C8B0();
    sub_226EB2DFC(v15, v14, v13);
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 97);
    v25 = *(v0 + 312);
    v26 = *(v0 + 320);
    if (v23)
    {
      v137 = *(v0 + 280);
      v128 = *(v0 + 256);
      v131 = *(v0 + 248);
      v125 = v22;
      v27 = *(v0 + 240);
      v28 = *(v0 + 224);
      v119 = *(v0 + 216);
      v120 = *(v0 + 296);
      v29 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v142 = v122;
      *v29 = 136315394;
      v30 = sub_227666A50();
      v32 = v31;
      (*(v28 + 8))(v27, v119);
      v33 = sub_226E97AE8(v30, v32, &v142);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v143 = v120;
      v144 = v25;
      v145 = v26;
      v146 = v24;
      v34 = WorkoutPlanModalityDurationGroup.description.getter();
      v36 = v35;
      sub_226EB2DFC(v144, v145, v146);
      v37 = sub_226E97AE8(v34, v36, &v142);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_226E8E000, v21, v125, "Added used workout %s to group: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v122, -1, -1);
      MEMORY[0x22AA9A450](v29, -1, -1);

      (*(v128 + 8))(v137, v131);
    }

    else
    {
      v107 = *(v0 + 280);
      v108 = *(v0 + 248);
      v109 = *(v0 + 256);
      v110 = *(v0 + 240);
      v111 = v21;
      v113 = *(v0 + 216);
      v112 = *(v0 + 224);

      sub_226EB2DFC(v25, v26, v24);
      (*(v112 + 8))(v110, v113);
      (*(v109 + 8))(v107, v108);
    }
  }

LABEL_20:

  v117 = *(v0 + 8);

  return v117();
}

uint64_t sub_2270180F8()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_22701819C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v1 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_persistenceStore));

  return v0;
}

uint64_t sub_2270182B0()
{
  sub_22701819C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanContentCurator(uint64_t a1)
{
  result = qword_27D7B9C28;
  if (!qword_27D7B9C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22701835C(uint64_t a1)
{
  result = sub_227667370();
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

id sub_227018428(uint64_t a1)
{
  v2 = sub_2276660A0();
  MEMORY[0x28223BE20](v2);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    v23 = "usedWorkoutsByGroup";
    v22 = xmmword_227670CD0;
    do
    {
      sub_22701A900(v11, v8);
      sub_22701A900(v8, v4);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 6u:
          sub_22701A964(v8);
          v13 = sub_227664010();
          (*(*(v13 - 8) + 8))(v4, v13);
          break;
        case 9u:
          v14 = *v4;
          v24 = v4[1];
          sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
          v15 = swift_allocObject();
          *(v15 + 16) = v22;
          *(v15 + 56) = MEMORY[0x277D837D0];
          *(v15 + 64) = sub_22701311C();
          v16 = v24;
          *(v15 + 32) = v14;
          *(v15 + 40) = v16;
          sub_22766C7F0();
          v17 = sub_22701A964(v8);
          MEMORY[0x22AA985C0](v17);
          if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22766C360();
          }

          sub_22766C3A0();
          v9 = v25;
          break;
        default:
          sub_22701A964(v8);
          sub_22701A964(v4);
          break;
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }

  if (v9 >> 62)
  {
    if (sub_22766CD20())
    {
      goto LABEL_12;
    }

LABEL_14:

    return 0;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_12:
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v18 = sub_22766C2B0();

  v19 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v19;
}

id sub_22701876C(uint64_t a1)
{
  v2 = sub_2276660A0();
  MEMORY[0x28223BE20](v2);
  v4 = (&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    v25 = "usedWorkoutsByGroup";
    v24 = xmmword_227670CD0;
    do
    {
      sub_22701A900(v11, v8);
      sub_22701A900(v8, v4);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 6u:
          v13 = sub_227664010();
          (*(*(v13 - 8) + 8))(v4, v13);
          goto LABEL_5;
        case 9u:
          v14 = *v4;
          v26 = v4[1];
          sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
          v15 = swift_allocObject();
          *(v15 + 16) = v24;
          *(v15 + 56) = MEMORY[0x277D837D0];
          *(v15 + 64) = sub_22701311C();
          v16 = v26;
          *(v15 + 32) = v14;
          *(v15 + 40) = v16;
          v17 = sub_22766C7F0();
          v18 = [objc_opt_self() notPredicateWithSubpredicate_];

          v19 = sub_22701A964(v8);
          MEMORY[0x22AA985C0](v19);
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22766C360();
          }

          sub_22766C3A0();
          v9 = v27;
          break;
        default:
          sub_22701A964(v4);
LABEL_5:
          sub_22701A964(v8);
          break;
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }

  if (v9 >> 62)
  {
    if (sub_22766CD20())
    {
      goto LABEL_14;
    }

LABEL_16:

    return 0;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_14:
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v20 = sub_22766C2B0();

  v21 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v21;
}

void *sub_227018AD4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v48 = a2;
  v51 = *MEMORY[0x277D85DE8];
  v5 = sub_227666B60();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v38 = v10;
    v39 = v3;
    v37[1] = v37;
    MEMORY[0x28223BE20](v7);
    v40 = v37 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v11);
    v10 = 0;
    v12 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = v13 < 64 ? ~(-1 << v13) : -1;
    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v43 = v6 + 16;
    v44 = v9;
    v41 = 0;
    v42 = (v6 + 8);
    v46 = v5;
    v47 = a1;
    v45 = v6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v50 = (v15 - 1) & v15;
LABEL_14:
      v20 = v17 | (v10 << 6);
      v21 = *(a1 + 48);
      v22 = *(v6 + 72);
      v49 = v20;
      (*(v6 + 16))(v9, v21 + v22 * v20, v5);
      v23 = *v48;

      v24 = sub_227666A50();
      v26 = v25;
      if (*(v23 + 16) && (v3 = v24, sub_22766D370(), sub_22766C100(), v27 = sub_22766D3F0(), v28 = -1 << *(v23 + 32), v29 = v27 & ~v28, ((*(v23 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(v23 + 48) + 16 * v29);
          v32 = *v31 == v3 && v31[1] == v26;
          if (v32 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v23 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v9 = v44;
        v5 = v46;
        (*v42)(v44, v46);
        a1 = v47;
        v6 = v45;
        v15 = v50;
      }

      else
      {
LABEL_23:

        v9 = v44;
        v5 = v46;
        (*v42)(v44, v46);
        *&v40[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
        v33 = __OFADD__(v41++, 1);
        a1 = v47;
        v6 = v45;
        v15 = v50;
        if (v33)
        {
          __break(1u);
          return sub_22726A560(v40, v38, v41, a1);
        }
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        return sub_22726A560(v40, v38, v41, a1);
      }

      v19 = *(v12 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v35 = swift_slowAlloc();
  v36 = sub_227019300(v35, v10, a1, v48);

  result = MEMORY[0x22AA9A450](v35, -1, -1);
  if (!v3)
  {
    return v36;
  }

  return result;
}

void sub_227018F34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = a2;
  v46 = a4;
  v39 = a1;
  v5 = sub_227666B60();
  v8.n128_f64[0] = MEMORY[0x28223BE20](v5);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v48 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v42 = v7 + 16;
  v43 = v10;
  v44 = v7;
  v45 = v6;
  v40 = 0;
  v41 = (v7 + 8);
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_13:
    v22 = v19 | (v11 << 6);
    v23 = *(v48 + 48);
    v24 = *(v44 + 72);
    v47 = v22;
    (*(v44 + 16))(v10, v23 + v24 * v22, v5, v8);
    v25 = *v46;

    v26 = sub_227666A50();
    v28 = v27;
    if (*(v25 + 16) && (v29 = v26, sub_22766D370(), sub_22766C100(), v30 = sub_22766D3F0(), v31 = -1 << *(v25 + 32), v32 = v30 & ~v31, ((*(v25 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (1)
      {
        v34 = (*(v25 + 48) + 16 * v32);
        v35 = *v34 == v29 && v34[1] == v28;
        if (v35 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v25 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v10 = v43;
      v5 = v45;
      (*v41)(v43, v45);
      v17 = v49;
    }

    else
    {
LABEL_22:

      v10 = v43;
      v5 = v45;
      (*v41)(v43, v45);
      *(v39 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v36 = __OFADD__(v40++, 1);
      v17 = v49;
      if (v36)
      {
        __break(1u);
LABEL_25:
        v37 = v48;

        sub_22726A560(v39, v38, v40, v37);
        return;
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_25;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v49 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_22701925C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

void *sub_227019300(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_227018F34(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_227019438(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v35 = a4;
  v29 = a1;
  v34 = sub_227666B60();
  v6.n128_f64[0] = MEMORY[0x28223BE20](v34);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v36 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v32 = v5 + 16;
  v33 = v5;
  v30 = 0;
  v31 = v5 + 8;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v37 = (v15 - 1) & v15;
LABEL_11:
    v20 = v33;
    v21 = v34;
    v22 = v17 | (v9 << 6);
    (*(v33 + 16))(v8, *(v36 + 48) + *(v33 + 72) * v22, v34, v6);
    v23 = sub_227666AD0();
    v24 = sub_226F3E6A8(v23);

    v25 = sub_227035534(v24, v35);

    (*(v20 + 8))(v8, v21);
    v15 = v37;
    if (v25)
    {
      *(v29 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_15:
        v27 = v36;

        sub_22726A560(v29, v28, v30, v27);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_15;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v37 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22701967C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = *MEMORY[0x277D85DE8];
  v37 = sub_227666B60();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v39 = a2;

  if (v8 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = v9;
    v31 = v3;
    v29[1] = v29;
    MEMORY[0x28223BE20](v11);
    v32 = v29 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v32, v10);
    v10 = 0;
    v38 = a1;
    v12 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v35 = v6 + 16;
    v33 = 0;
    v34 = v6 + 8;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v40 = (v15 - 1) & v15;
LABEL_12:
      v20 = v37;
      v3 = v17 | (v10 << 6);
      v9 = v36;
      (*(v6 + 16))(v36, *(v38 + 48) + *(v6 + 72) * v3, v37);
      v21 = sub_227666AD0();
      a1 = v6;
      v22 = sub_226F3E6A8(v21);

      v23 = sub_227035534(v22, v39);
      v6 = a1;

      (*(a1 + 8))(v9, v20);
      v15 = v40;
      if (v23)
      {
        *&v32[(v3 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v3;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_22726A560(v32, v30, v33, v38);

          return v25;
        }
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v12 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
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

  v27 = swift_slowAlloc();
  v28 = v39;

  v25 = sub_22701925C(v27, v9, a1, v28, sub_227019438);

  MEMORY[0x22AA9A450](v27, -1, -1);

  return v25;
}

uint64_t sub_227019A10(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, char a6, uint64_t a7)
{
  v65 = a2;
  v66 = a3;
  v64[1] = a1;
  v71[3] = &type metadata for PersistenceHandle;
  v71[4] = &off_283A9AF78;
  v11 = swift_allocObject();
  v71[0] = v11;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = a6;
  *(v11 + 40) = a7;
  v12 = __swift_project_boxed_opaque_existential_0(v71, &type metadata for PersistenceHandle);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v12 + 16);
  v16 = v12[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v17 = swift_allocObject();
  v18 = a4;
  v19 = a5;

  v20 = v13;
  v21 = v14;

  sub_22766A070();
  *(v17 + 16) = v20;
  *(v17 + 24) = v21;
  *(v17 + 32) = v15;
  *(v17 + 40) = v16;
  v22 = sub_2270142F4();
  swift_beginAccess();
  v23 = sub_22766A080();
  v25 = v24;
  v26 = v22;
  MEMORY[0x22AA985C0]();
  if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v23(v69, 0);
  swift_endAccess();

  swift_getKeyPath();
  v27 = sub_22701328C(v65);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v69[0] = v27;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v28 = sub_22766C820();
  sub_226ED25F8(v69, v67);
  v29 = v68;
  if (v68)
  {
    v30 = __swift_project_boxed_opaque_existential_0(v67, v68);
    v31 = *(v29 - 8);
    v32 = MEMORY[0x28223BE20](v30);
    v34 = v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34, v32);
    v35 = sub_22766D170();
    (*(v31 + 8))(v34, v29);
    __swift_destroy_boxed_opaque_existential_0(v67);
  }

  else
  {
    v35 = 0;
  }

  v36 = objc_opt_self();
  v37 = [v36 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
  [objc_allocWithZone(v38) initWithLeftExpression:v28 rightExpression:v37 modifier:0 type:10 options:0];

  sub_226EBC888(v69);
  swift_beginAccess();
  v39 = sub_22766A080();
  v41 = v40;
  MEMORY[0x22AA985C0]();
  if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v65 = *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v39(v69, 0);
  swift_endAccess();

  v42 = v66;
  if (v66)
  {
    swift_getKeyPath();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    v69[0] = v42;

    v43 = sub_22766C820();
    sub_226ED25F8(v69, v67);
    v44 = v68;
    if (v68)
    {
      v45 = __swift_project_boxed_opaque_existential_0(v67, v68);
      v66 = v64;
      v46 = v36;
      v47 = *(v44 - 8);
      v48 = MEMORY[0x28223BE20](v45);
      v50 = v64 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v47 + 16))(v50, v48);
      v51 = sub_22766D170();
      (*(v47 + 8))(v50, v44);
      v36 = v46;
      __swift_destroy_boxed_opaque_existential_0(v67);
    }

    else
    {
      v51 = 0;
    }

    v52 = [v36 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v53 = [objc_allocWithZone(v38) initWithLeftExpression:v43 rightExpression:v52 modifier:0 type:10 options:0];

    sub_226EBC888(v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_227670B30;
    *(v54 + 32) = v53;
    v55 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C38, qword_22768C260));
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v56 = v53;
    v57 = sub_22766C2B0();

    v58 = [v55 initWithType:0 subpredicates:v57];

    swift_beginAccess();
    v59 = v58;
    v60 = sub_22766A080();
    v62 = v61;
    MEMORY[0x22AA985C0]();
    if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v60(v69, 0);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_0(v71);
  return v17;
}

void sub_22701A178(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a2;
  v41 = a1;
  v6 = sub_227666B60();
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v49 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v44 = v8 + 16;
  v45 = v11;
  v20 = a4 + 56;
  v46 = v8;
  v47 = v7;
  v42 = 0;
  v43 = (v8 + 8);
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v50 = (v18 - 1) & v18;
LABEL_13:
    v24 = v21 | (v12 << 6);
    v25 = *(v49 + 48);
    v26 = *(v46 + 72);
    v48 = v24;
    (*(v46 + 16))(v11, v25 + v26 * v24, v6, v9);
    v27 = sub_227666A50();
    v29 = v28;
    if (*(a4 + 16) && (v30 = v27, sub_22766D370(), sub_22766C100(), v31 = sub_22766D3F0(), v32 = -1 << *(a4 + 32), v33 = v31 & ~v32, ((*(v20 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(a4 + 48) + 16 * v33);
        v36 = *v35 == v30 && v35[1] == v29;
        if (v36 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v20 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v11 = v45;
      v6 = v47;
      (*v43)(v45, v47);
      v18 = v50;
    }

    else
    {
LABEL_22:

      v11 = v45;
      v6 = v47;
      (*v43)(v45, v47);
      *(v41 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v37 = __OFADD__(v42++, 1);
      v18 = v50;
      if (v37)
      {
        __break(1u);
LABEL_25:
        v38 = v49;

        sub_22726A560(v41, v40, v42, v38);
        return;
      }
    }
  }

  v22 = v12;
  while (1)
  {
    v12 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_25;
    }

    v23 = *(v14 + 8 * v12);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v50 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_22701A480(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = *MEMORY[0x277D85DE8];
  v6 = sub_227666B60();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v38 = v10;
    v39 = v3;
    v37 = &v37;
    MEMORY[0x28223BE20](v12);
    v40 = &v37 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v17 = (v14 + 63) >> 6;
    v43 = v7 + 16;
    v44 = v7;
    v11 = a2 + 56;
    v41 = 0;
    v42 = (v7 + 8);
    v45 = v6;
    v46 = a1;
    while (v16)
    {
      v18 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_14:
      v21 = v18 | (v10 << 6);
      v22 = *(a1 + 48);
      v23 = *(v7 + 72);
      v47 = v21;
      v3 = v49;
      (*(v7 + 16))(v49, v22 + v23 * v21, v6);
      v24 = sub_227666A50();
      v26 = v25;
      if (*(a2 + 16) && (v3 = v24, sub_22766D370(), sub_22766C100(), v27 = sub_22766D3F0(), v28 = -1 << *(a2 + 32), v29 = v27 & ~v28, ((*(v11 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a2 + 48) + 16 * v29);
          v32 = *v31 == v3 && v31[1] == v26;
          if (v32 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v11 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v6 = v45;
        (*v42)(v49, v45);
        a1 = v46;
        v7 = v44;
        v16 = v48;
      }

      else
      {
LABEL_23:

        v6 = v45;
        (*v42)(v49, v45);
        a1 = v46;
        *&v40[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
        v33 = __OFADD__(v41++, 1);
        v7 = v44;
        v16 = v48;
        if (v33)
        {
          __break(1u);
LABEL_26:
          v34 = sub_22726A560(v40, v38, v41, a1);

          return v34;
        }
      }
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        goto LABEL_26;
      }

      v20 = *(v13 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v48 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = swift_slowAlloc();

  v34 = sub_22701925C(v36, v10, a1, a2, sub_22701A178);

  MEMORY[0x22AA9A450](v36, -1, -1);

  return v34;
}

uint64_t sub_22701A900(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276660A0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22701A964(uint64_t a1)
{
  v2 = sub_2276660A0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22701A9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276660A0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22701AA24()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  type metadata accessor for SeymourServicesLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_2276621B0();

  v4 = sub_22766BFD0();

  [v0 setTitle_];

  v5 = [v2 bundleForClass_];
  sub_2276621B0();

  v6 = sub_22766BFD0();

  [v0 setBody_];

  v7 = sub_22766BFD0();
  [v0 setCategoryIdentifier_];

  [v0 setInterruptionLevel_];
  [v0 setShouldIgnoreDowntime_];
  [v0 setShouldIgnoreDoNotDisturb_];
  v8 = v0;
  v9 = sub_22766BFD0();
  v10 = [objc_opt_self() requestWithIdentifier:v9 content:v8 trigger:0];

  return v10;
}

id sub_22701ACB8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  type metadata accessor for SeymourServicesLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_2276621B0();

  v4 = sub_22766BFD0();

  [v0 setTitle_];

  v5 = [v2 bundleForClass_];
  sub_2276621B0();

  v6 = sub_22766BFD0();

  [v0 setBody_];

  v7 = sub_22766BFD0();
  [v0 setCategoryIdentifier_];

  [v0 setInterruptionLevel_];
  [v0 setShouldIgnoreDowntime_];
  [v0 setShouldIgnoreDoNotDisturb_];
  sub_227666D60();
  sub_22701B084();
  v8 = sub_2276683C0();
  v18 = MEMORY[0x277CC9318];
  *&v19[0] = 0xD000000000000017;
  *&v17 = v8;
  *(&v17 + 1) = v9;
  *(&v19[0] + 1) = 0x8000000227697090;
  sub_22766CDA0();
  v10 = [v0 userInfo];
  sub_22766BEB0();

  sub_2273C272C(&v17, v16, v19);
  sub_226E9B62C(v16);
  sub_226EBC888(v19);
  v11 = sub_22766BE90();

  [v0 setUserInfo_];

  v12 = v0;
  v13 = sub_22766BFD0();
  v14 = [objc_opt_self() requestWithIdentifier:v13 content:v12 trigger:0];

  return v14;
}

unint64_t sub_22701B084()
{
  result = qword_27D7B9C40;
  if (!qword_27D7B9C40)
  {
    sub_227666D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9C40);
  }

  return result;
}

uint64_t sub_22701B100@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C48, qword_227675970);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - v4;
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91A0, &qword_2276732C0);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v14 = sub_227666990();
  v16 = v15;
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v44[0] = v14;
  v44[1] = v16;
  sub_226F06498();

  v17 = sub_22766C820();
  sub_226ED25F8(v44, v42);
  v18 = v43;
  if (v43)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v42, v43);
    v20 = *(v18 - 8);
    v21 = MEMORY[0x28223BE20](v19);
    v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C50 qword_2276759C0))];

  sub_226E97D1C(v44, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v27 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v44, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227397FC8();

  v32 = MEMORY[0x22AA99A00](v31);
  v33 = v44[5];
  sub_2275446D4(v5);
  if (v33)
  {
    objc_autoreleasePoolPop(v32);
  }

  else
  {
    objc_autoreleasePoolPop(v32);

    v35 = sub_2276652D0();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v5, 1, v35) == 1)
    {
      sub_226E97D1C(v5, &qword_27D7B9C48, qword_227675970);
      v37 = 1;
      v38 = v41;
    }

    else
    {
      v38 = v41;
      sub_2276652A0();
      (*(v36 + 8))(v5, v35);
      v37 = 0;
    }

    v39 = sub_227662750();
    return (*(*(v39 - 8) + 56))(v38, v37, 1, v39);
  }
}

uint64_t sub_22701B6B4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CF8];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22701B72C(uint64_t a1)
{
  v2 = MEMORY[0x277D51CF0];
  *(a1 + 24) = sub_22701B7B0(&qword_2813A56E0, MEMORY[0x277D51CF0], &unk_227670D28);
  result = sub_22701B7B0(&qword_2813A56D8, v2, MEMORY[0x277D51CF8]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22701B7B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22701B7F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D28];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22701B878@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_227668D10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666EF0();
  v6 = sub_227668D00();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_22701B958(uint64_t a1)
{
  *(a1 + 24) = sub_22701B9C0(&qword_2813A5650, &unk_227685958);
  result = sub_22701B9C0(&unk_2813A5640, MEMORY[0x277D52A88]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22701B9C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227666F20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22701BA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v97 = a4;
  *&v96 = a1;
  *(&v96 + 1) = a2;
  v91 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  MEMORY[0x28223BE20](v6 - 8);
  v103 = v89 - v7;
  v8 = sub_227664530();
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x28223BE20](v8);
  v90 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662930();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227662750();
  v94 = *(v14 - 1);
  v15 = v94;
  v95 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (v89 - v22);
  sub_227662740();
  (*(v11 + 104))(v13, *MEMORY[0x277CC9968], v10);
  v89[1] = a3;
  sub_2276676B0();
  sub_227662610();
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v14);
  v24 = __swift_project_boxed_opaque_existential_0(v97, v97[3]);
  v25 = *v24;
  v26 = v24[1];
  LOBYTE(v17) = *(v24 + 16);
  v27 = v24[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v28 = swift_allocObject();
  v29 = v25;
  v30 = v26;

  sub_22766A070();
  *(v28 + 16) = v29;
  *(v28 + 24) = v30;
  *(v28 + 32) = v17;
  *(v28 + 40) = v27;
  v31 = v94;
  swift_getKeyPath();
  v97 = v23;
  v32 = v23;
  v33 = v95;
  sub_226E93170(v32, v20, &qword_27D7B9690, qword_227670B50);
  if ((*(v31 + 48))(v20, 1, v33) == 1)
  {
    sub_226E97D1C(v20, &qword_27D7B9690, qword_227670B50);
    v101 = 0u;
    v102 = 0u;
  }

  else
  {
    *(&v102 + 1) = v33;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v101);
    (*(v31 + 32))(boxed_opaque_existential_0, v20, v33);
  }

  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v35 = sub_22766C820();
  sub_226E93170(&v101, v99, &unk_27D7BC990, &qword_227670A30);
  v36 = v100;
  if (v100)
  {
    v37 = __swift_project_boxed_opaque_existential_0(v99, v100);
    v38 = *(v36 - 8);
    v39 = MEMORY[0x28223BE20](v37);
    v41 = v89 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v41, v39);
    v42 = sub_22766D170();
    (*(v38 + 8))(v41, v36);
    __swift_destroy_boxed_opaque_existential_0(v99);
  }

  else
  {
    v42 = 0;
  }

  v43 = objc_opt_self();
  v44 = &off_2785D6000;
  v45 = [v43 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v46 = [objc_allocWithZone(v95) initWithLeftExpression:v35 rightExpression:v45 modifier:0 type:2 options:0];

  sub_226E97D1C(&v101, &unk_27D7BC990, &qword_227670A30);
  v47 = qword_2813B2078;
  swift_beginAccess();
  v48 = v46;
  v49 = sub_22766A080();
  v51 = v50;
  MEMORY[0x22AA985C0]();
  if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v94 = *((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v49(&v101, 0);
  swift_endAccess();

  swift_getKeyPath();
  *(&v102 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v101 = v96;

  v52 = sub_22766C820();
  sub_226E93170(&v101, v99, &unk_27D7BC990, &qword_227670A30);
  v53 = v100;
  if (v100)
  {
    v54 = __swift_project_boxed_opaque_existential_0(v99, v100);
    *(&v96 + 1) = v47;
    v55 = v43;
    v56 = *(v53 - 8);
    v57 = MEMORY[0x28223BE20](v54);
    v59 = v89 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v59, v57);
    v60 = sub_22766D170();
    (*(v56 + 8))(v59, v53);
    v43 = v55;
    v44 = &off_2785D6000;
    __swift_destroy_boxed_opaque_existential_0(v99);
  }

  else
  {
    v60 = 0;
  }

  v61 = v103;
  v62 = [v43 v44[297]];
  swift_unknownObjectRelease();
  v63 = [objc_allocWithZone(v95) initWithLeftExpression:v52 rightExpression:v62 modifier:0 type:4 options:0];

  sub_226E97D1C(&v101, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v64 = v63;
  v65 = sub_22766A080();
  v67 = v66;
  MEMORY[0x22AA985C0]();
  if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v65(&v101, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227397FC8();

  v69 = MEMORY[0x22AA99A00](v68);
  v70 = v98;
  sub_227544604(v61);
  if (v70)
  {
    objc_autoreleasePoolPop(v69);

    return sub_226E97D1C(v97, &qword_27D7B9690, qword_227670B50);
  }

  objc_autoreleasePoolPop(v69);
  v73 = v92;
  v72 = v93;
  if ((*(v92 + 48))(v61, 1, v93) == 1)
  {
    sub_226E97D1C(v97, &qword_27D7B9690, qword_227670B50);

    sub_226E97D1C(v61, &qword_27D7B8E60, &unk_2276724B0);
LABEL_22:
    v88 = 1;
    v87 = v91;
    return (*(v73 + 56))(v87, v88, 1, v72);
  }

  v74 = *(v73 + 32);
  v74(v90, v61, v72);
  sub_2276644C0();
  v76 = v75;
  sub_227667690();
  v78 = v76 - v77;
  sub_227664510();
  v80 = v79;
  sub_227664510();
  v82 = v81;
  sub_227667680();
  v84 = v83;

  sub_226E97D1C(v97, &qword_27D7B9690, qword_227670B50);
  if (v80 >= v78 || v84 >= v82)
  {
    v73 = v92;
    v72 = v93;
    (*(v92 + 8))(v90, v93);
    goto LABEL_22;
  }

  v85 = v91;
  v86 = v93;
  v74(v91, v90, v93);
  v87 = v85;
  v72 = v86;
  v88 = 0;
  v73 = v92;
  return (*(v73 + 56))(v87, v88, 1, v72);
}

uint64_t sub_22701C560(uint64_t a1, void *a2)
{
  v4 = sub_227662930();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227662750();
  v59 = *(v8 - 8);
  v9 = v59;
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v57 - v16;
  sub_227662740();
  (*(v5 + 104))(v7, *MEMORY[0x277CC9968], v4);
  v57[0] = a1;
  sub_2276676B0();
  sub_227662610();
  (*(v5 + 8))(v7, v4);
  v18 = *(v9 + 8);
  v19 = v60;
  v18(v11, v60);
  v20 = a2[3];
  v58 = a2;
  v21 = __swift_project_boxed_opaque_existential_0(a2, v20);
  v22 = *v21;
  v23 = v21[1];
  LODWORD(v66) = *(v21 + 16);
  v24 = v21[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v25 = swift_allocObject();
  v26 = v22;
  v27 = v23;

  sub_22766A070();
  *(v25 + 16) = v26;
  *(v25 + 24) = v27;
  *(v25 + 32) = v66;
  *(v25 + 40) = v24;
  v28 = v59;
  swift_getKeyPath();
  v66 = v17;
  sub_226E93170(v17, v14, &qword_27D7B9690, qword_227670B50);
  if ((*(v28 + 48))(v14, 1, v19) == 1)
  {
    sub_226E97D1C(v14, &qword_27D7B9690, qword_227670B50);
    v64 = 0u;
    v65 = 0u;
  }

  else
  {
    *(&v65 + 1) = v19;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
    (*(v28 + 32))(boxed_opaque_existential_0, v14, v19);
  }

  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v30 = sub_22766C820();
  sub_226E93170(&v64, v62, &unk_27D7BC990, &qword_227670A30);
  v31 = v63;
  if (v63)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v62, v63);
    v33 = *(v31 - 8);
    v34 = MEMORY[0x28223BE20](v32);
    v36 = v57 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36, v34);
    v37 = sub_22766D170();
    (*(v33 + 8))(v36, v31);
    __swift_destroy_boxed_opaque_existential_0(v62);
  }

  else
  {
    v37 = 0;
  }

  v38 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v39 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(&v64, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v40 = v39;
  v41 = sub_22766A080();
  v43 = v42;
  MEMORY[0x22AA985C0]();
  if (*((*v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v41(&v64, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v45 = v61;
  sub_2273FC7CC(KeyPath);
  if (v45)
  {

    swift_setDeallocating();

    v47 = qword_2813B2078;
    v48 = sub_22766A100();
    (*(*(v48 - 8) + 8))(v25 + v47, v48);
    swift_deallocClassInstance();
  }

  else
  {
    v49 = sub_226F3E6A8(v46);

    swift_setDeallocating();

    v50 = qword_2813B2078;
    v51 = sub_22766A100();
    (*(*(v51 - 8) + 8))(v25 + v50, v51);
    v52 = swift_deallocClassInstance();
    MEMORY[0x28223BE20](v52);
    v53 = v57[0];
    v57[-4] = v57[1];
    v57[-3] = v53;
    v57[-2] = v58;
    sub_226FDEED8(sub_22701D424, &v57[-6], v49);
    v56 = v55;

    KeyPath = sub_226F40EB0(v56);
  }

  sub_226E97D1C(v66, &qword_27D7B9690, qword_227670B50);
  return KeyPath;
}

uint64_t sub_22701CD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v46 - v10;
  v11 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v15 = v11[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v16 = swift_allocObject();
  v17 = v12;
  v18 = v13;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  swift_getKeyPath();
  v52[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v52[0] = a1;
  v52[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226E93170(v52, v50, &unk_27D7BC990, &qword_227670A30);
  v20 = v51;
  if (v51)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v50, v51);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v50);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(v52, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v29 = v28;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  v33 = v53;
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v52, 0);
  swift_endAccess();

  v34 = MEMORY[0x22AA99A00]();
  v35 = v49;
  sub_227544604(v33);
  if (v35)
  {
    objc_autoreleasePoolPop(v34);
    swift_setDeallocating();

    v36 = qword_2813B2078;
    v37 = sub_22766A100();
    (*(*(v37 - 8) + 8))(v16 + v36, v37);
    return swift_deallocClassInstance();
  }

  else
  {
    objc_autoreleasePoolPop(v34);
    swift_setDeallocating();

    v39 = qword_2813B2078;
    v40 = sub_22766A100();
    (*(*(v40 - 8) + 8))(v16 + v39, v40);
    swift_deallocClassInstance();
    v41 = v48;
    sub_226E93170(v33, v48, &qword_27D7B8E60, &unk_2276724B0);
    v42 = sub_227664530();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v41, 1, v42) == 1)
    {
      sub_226E97D1C(v41, &qword_27D7B8E60, &unk_2276724B0);
      v44 = sub_227665CB0();
      sub_22701E404();
      swift_allocError();
      (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277D51D18], v44);
      swift_willThrow();
      return sub_226E97D1C(v33, &qword_27D7B8E60, &unk_2276724B0);
    }

    else
    {
      sub_226E97D1C(v33, &qword_27D7B8E60, &unk_2276724B0);
      return (*(v43 + 32))(v47, v41, v42);
    }
  }
}