uint64_t sub_2529AAA28(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_2529AD0B0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2529AAB54(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        v14 = sub_2529AD1EC(v12, v13);
        sub_2529AEC6C(v14, v15);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2529AAC78(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_25293847C(v12, &qword_27F5404C8, &unk_252E3FD60))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      memcpy(__dst, (*(v2 + 48) + 504 * (v10 | (v9 << 6))), sizeof(__dst));
      sub_2529353AC(__dst, v12);
      sub_2529AD364(__src, __dst);
      sub_252935408(__dst);
      memcpy(v12, __src, sizeof(v12));
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2529AADC0(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v54 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v47 = a1;
    v48 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v46 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v47;
          v16 = v48;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v48 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v47;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v48 << 9) | (8 * v18)));
        sub_252E37EC4();
        MEMORY[0x2530AE390](v5);
        v19 = sub_252E37F14();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (*(v21 + 8 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v21 + 8 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v51 = v46;
    v52 = v48;
    v53 = v11;
    v50[0] = v47;
    v50[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v40 = swift_slowAlloc();
      memcpy(v40, (v6 + 56), v5);
      v41 = sub_2529AD51C(v40, v14, v6, v2, v50);

      MEMORY[0x2530AED00](v40, -1, -1);
      v4 = v50[0];
      v46 = v51;
      v48 = v52;
      v6 = v41;
      goto LABEL_41;
    }

LABEL_18:
    v43 = v14;
    v44 = &v42;
    MEMORY[0x28223BE20](v22);
    v14 = &v42 - v23;
    memcpy(&v42 - v23, (v6 + 56), v5);
    v24 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v25 = v24 - 1;
    v3 = 1;
    v4 = v47;
LABEL_19:
    v45 = v25;
    while (v11)
    {
LABEL_27:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v48 << 9) | (8 * v29)));
      sub_252E37EC4();
      v2 = v49;
      MEMORY[0x2530AE390](v5);
      v30 = sub_252E37F14();
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v5)
        {
LABEL_20:
          v26 = *(v14 + 8 * v33);
          *(v14 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v25 = v45 - 1;
            if (__OFSUB__(v45, 1))
            {
              __break(1u);
            }

            if (v45 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v27 = v48;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v48 = v28;
        goto LABEL_27;
      }
    }

    if (v12 <= v48 + 1)
    {
      v37 = v48 + 1;
    }

    else
    {
      v37 = v12;
    }

    v48 = v37 - 1;
    v6 = sub_252C53514(v14, v43, v45, v6);
LABEL_41:
    v38 = v4;
LABEL_43:
    sub_25291AE30(v38);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t sub_2529AB248(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v83 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for HomeEntityResponse();
    sub_2529AECD4(&qword_27F540340, type metadata accessor for HomeEntityResponse, MEMORY[0x277D85378]);
    sub_252E373E4();
    v5 = v78;
    v7 = v79;
    v8 = v80;
    v9 = v81;
    v10 = v82;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v73 = v5;
  v74 = v7;
  v75 = v8;
  v76 = v9;
  v64 = v8;
  v14 = (v8 + 64) >> 6;
  v70 = (v4 + 56);
  v77 = v10;
  v67 = v5;
  v68 = v14;
  v66 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_252E37904();
      if (!v22)
      {
        goto LABEL_65;
      }

      v71 = v22;
      type metadata accessor for HomeEntityResponse();
      swift_dynamicCast();
      v20 = v72;
      v18 = v9;
      v2 = v10;
      if (!v72)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        if (v14 <= v9 + 1)
        {
          v17 = v9 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_67;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v73 = v5;
      v74 = v7;
      v75 = v64;
      v76 = v18;
      v77 = v2;
      if (!v20)
      {
LABEL_65:
        v53 = v5;
        goto LABEL_63;
      }
    }

    v23 = v20;
    v24 = sub_252E37684();
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v66;
    v5 = v67;
    v14 = v68;
  }

  v3 = ~v25;
  v26 = type metadata accessor for HomeEntityResponse();
  v27 = *(*(v4 + 48) + 8 * v7);
  v69 = v26;
  while (1)
  {
    v28 = sub_252E37694();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v70[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v4 + 48) + 8 * v7);
  }

  v30 = *(v4 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v6 = 8 * v61;
  v3 = v68;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v62 = &v60;
    MEMORY[0x28223BE20](v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v5] & ~v16;
    v34 = *(v4 + 16);
    v63 = v32;
    *&v32[8 * v5] = v33;
    v5 = v34 - 1;
    v36 = v66;
    v35 = v67;
LABEL_33:
    v65 = v5;
    while (v35 < 0)
    {
      v37 = sub_252E37904();
      if (!v37)
      {
        goto LABEL_61;
      }

      v71 = v37;
      swift_dynamicCast();
      v38 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v43 = sub_252E37684();
      v44 = v4;
      v45 = -1 << *(v4 + 32);
      v7 = v43 & ~v45;
      v46 = v7 >> 6;
      v47 = 1 << v7;
      if (((1 << v7) & v70[v7 >> 6]) != 0)
      {
        v48 = ~v45;
        while (1)
        {
          v49 = *(*(v44 + 48) + 8 * v7);
          v50 = sub_252E37694();

          if (v50)
          {
            break;
          }

          v7 = (v7 + 1) & v48;
          v46 = v7 >> 6;
          v47 = 1 << v7;
          if (((1 << v7) & v70[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v68;

        v51 = v63[v46];
        v63[v46] = v51 & ~v47;
        v52 = (v51 & v47) == 0;
        v4 = v44;
        v36 = v66;
        v35 = v67;
        v5 = v65;
        if (!v52)
        {
          v5 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v4 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v44;
        v36 = v66;
        v35 = v67;
        v3 = v68;
        v5 = v65;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v41 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v38 = *(*(v35 + 48) + ((v16 << 9) | (8 * v41)));
      v42 = v38;
      v40 = v16;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v40;
      v18 = v40;
      v77 = v2;
      if (!v38)
      {
LABEL_61:
        v4 = sub_252C53CA8(v63, v61, v5, v4);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v39 = v18 + 1;
    }

    else
    {
      v39 = v3;
    }

    v40 = v39 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v38 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v55 = v6;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_2529AD6F4(v57, v61, v4, v7, &v73);
  v59 = v58;

  MEMORY[0x2530AED00](v57, -1, -1);
  v4 = v59;
LABEL_62:
  v53 = v73;
LABEL_63:
  sub_25291AE30(v53);
  return v4;
}

uint64_t sub_2529AB8D0(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
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
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
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
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_252E37EC4();

    sub_252E37044();
    v23 = sub_252E37F14();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
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
    if (v26 || (sub_252E37DB4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
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
        v5 = sub_252C532DC(v58, v54, v56, v5);
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
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_252E37EC4();

            sub_252E37044();
            v41 = sub_252E37F14();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_252E37DB4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
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

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_2529AD970(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x2530AED00](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_25291AE30(v13);
    return v5;
  }

  result = MEMORY[0x2530AED00](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2529ABE40(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v37[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v37[0] = a1;
  v35 = *(a1 + 16);
  if (v35)
  {
    v4 = 0;
    v5 = a2 + 56;
    v6 = a1 + 32;
    do
    {
      v7 = *(v6 + 8 * v4++);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v7);
      v8 = sub_252E37F14();
      v9 = -1 << *(v2 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = 1 << v10;
      if (((1 << v10) & *(v5 + 8 * (v10 >> 6))) != 0)
      {
        v13 = *(v2 + 48);
        if (*(v13 + 8 * v10) == v7)
        {
LABEL_9:
          v37[1] = v4;
          v14 = (63 - v9) >> 6;
          v15 = 8 * v14;
          v34 = v14;
          if (v14 > 0x80)
          {
            goto LABEL_30;
          }

          {
            v35 = &v33;
            MEMORY[0x28223BE20](i);
            v18 = (&v33 - v17);
            memcpy(&v33 - v17, (v2 + 56), v15);
            v19 = *(v2 + 16);
            v18[v11] &= ~v12;
            v12 = v19 - 1;
            v20 = *(a1 + 16);
            if (v4 == v20)
            {
              break;
            }

            v15 = 1;
            while (v4 < v20)
            {
              v11 = *(v6 + 8 * v4);
              sub_252E37EC4();
              v10 = v36;
              MEMORY[0x2530AE390](v11);
              v22 = sub_252E37F14();
              v23 = -1 << *(v2 + 32);
              v24 = v22 & ~v23;
              v25 = v24 >> 6;
              v26 = 1 << v24;
              if (((1 << v24) & *(v5 + 8 * (v24 >> 6))) != 0)
              {
                v27 = *(v2 + 48);
                if (*(v27 + 8 * v24) == v11)
                {
LABEL_24:
                  v29 = v18[v25];
                  v18[v25] = v29 & ~v26;
                  if ((v29 & v26) != 0)
                  {
                    if (__OFSUB__(v12--, 1))
                    {
                      goto LABEL_29;
                    }

                    if (!v12)
                    {

                      v2 = MEMORY[0x277D84FA0];
                      goto LABEL_13;
                    }
                  }
                }

                else
                {
                  v28 = ~v23;
                  while (1)
                  {
                    v24 = (v24 + 1) & v28;
                    v25 = v24 >> 6;
                    v26 = 1 << v24;
                    if (((1 << v24) & *(v5 + 8 * (v24 >> 6))) == 0)
                    {
                      break;
                    }

                    if (*(v27 + 8 * v24) == v11)
                    {
                      goto LABEL_24;
                    }
                  }
                }
              }

              ++v4;
              v20 = *(a1 + 16);
              if (v4 == v20)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:

            if (!swift_stdlib_isStackAllocationSafe())
            {
              v31 = swift_slowAlloc();
              memcpy(v31, (v2 + 56), v15);
              v32 = sub_2529ADBA8(v31, v34, v2, v10, v37);

              MEMORY[0x2530AED00](v31, -1, -1);

              return v32;
            }
          }

LABEL_12:
          v2 = sub_252C542E8(v18, v34, v12, v2);
LABEL_13:

          return v2;
        }

        while (1)
        {
          v10 = (v10 + 1) & ~v9;
          v11 = v10 >> 6;
          v12 = 1 << v10;
          if (((1 << v10) & *(v5 + 8 * (v10 >> 6))) == 0)
          {
            break;
          }

          if (*(v13 + 8 * v10) == v7)
          {
            goto LABEL_9;
          }
        }
      }
    }

    while (v4 != v35);
  }

  return v2;
}

uint64_t sub_2529AC1D4(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v73 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a1;
  v58 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1 << *(a1 + 32);
  v63 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (63 - v8) >> 6;
  v12 = (a2 + 56);

  v15 = 0;
  v65 = v4;
  v66 = v7;
  v64 = v13;
  while (1)
  {
    if (!v10)
    {
      v16 = v15;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_63;
        }

        if (v17 >= v11)
        {
          v31 = v5;
          goto LABEL_60;
        }

        v10 = *(v7 + 8 * v17);
        ++v16;
      }

      while (!v10);
      v15 = v17;
    }

    v18 = *(v5 + 48);
    v67 = v15;
    v19 = (v18 + ((v15 << 10) | (16 * __clz(__rbit64(v10)))));
    v21 = *v19;
    v20 = v19[1];
    sub_252E37EC4();
    sub_252E37EE4();
    if (v20)
    {

      sub_252E37044();
    }

    v10 &= v10 - 1;
    v22 = sub_252E37F14();
    v23 = -1 << *(v4 + 32);
    v7 = v22 & ~v23;
    v2 = v7 >> 6;
    v5 = 1 << v7;
    if (((1 << v7) & v12[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v64;
    v4 = v65;
    v7 = v66;
    v15 = v67;
  }

  v24 = v4;
  v25 = ~v23;
  v3 = *(v24 + 48);
  while (1)
  {
    v26 = (v3 + 16 * v7);
    v27 = v26[1];
    if (!v27)
    {
      break;
    }

    if (v20)
    {
      v28 = *v26 == v21 && v27 == v20;
      if (v28 || (v22 = sub_252E37DB4(), (v22 & 1) != 0))
      {
        v3 = v64;
        v29 = v66;
        v70 = v63;
        v71 = v67;
        v72 = v10;
        v68 = v64;
        v69 = v66;
        v30 = v67;

        goto LABEL_30;
      }
    }

LABEL_18:
    v7 = (v7 + 1) & v25;
    v2 = v7 >> 6;
    v5 = 1 << v7;
    if ((v12[v7 >> 6] & (1 << v7)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v20)
  {
    goto LABEL_18;
  }

  v3 = v64;
  v29 = v66;
  v30 = v67;
  v70 = v63;
  v71 = v67;
  v72 = v10;
  v68 = v64;
  v69 = v66;
LABEL_30:
  v4 = v65;
  v32 = *(v65 + 32);
  v59 = ((1 << v32) + 63) >> 6;
  v14 = 8 * v59;
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_64;
  }

  while (1)
  {
    v60 = &v57;
    MEMORY[0x28223BE20](v22);
    v7 = &v57 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v7, v12, v33);
    v34 = *(v7 + 8 * v2) & ~v5;
    v35 = *(v4 + 16);
    v62 = v7;
    *(v7 + 8 * v2) = v34;
    v36 = v35 - 1;
LABEL_32:
    v61 = v36;
LABEL_34:
    while (2)
    {
      if (v10)
      {
LABEL_40:
        v39 = *(v3 + 48);
        v67 = v30;
        v40 = (v39 + ((v30 << 10) | (16 * __clz(__rbit64(v10)))));
        v42 = *v40;
        v41 = v40[1];
        sub_252E37EC4();
        sub_252E37EE4();
        if (v41)
        {

          sub_252E37044();
        }

        v10 &= v10 - 1;
        v43 = sub_252E37F14();
        v44 = -1 << *(v4 + 32);
        v7 = v43 & ~v44;
        v5 = v7 >> 6;
        v2 = 1 << v7;
        if (((1 << v7) & v12[v7 >> 6]) == 0)
        {
LABEL_33:

          v3 = v64;
          v4 = v65;
          v29 = v66;
          v30 = v67;
          continue;
        }

        v45 = ~v44;
        v46 = *(v4 + 48);
        while (1)
        {
          v47 = (v46 + 16 * v7);
          v48 = v47[1];
          if (v48)
          {
            if (v41)
            {
              v49 = *v47 == v42 && v48 == v41;
              if (v49 || (sub_252E37DB4() & 1) != 0)
              {

LABEL_54:
                v50 = v62[v5];
                v62[v5] = v50 & ~v2;
                v3 = v64;
                v4 = v65;
                v29 = v66;
                v30 = v67;
                if ((v50 & v2) != 0)
                {
                  v36 = v61 - 1;
                  if (__OFSUB__(v61, 1))
                  {
                    __break(1u);
                  }

                  if (v61 == 1)
                  {

                    v4 = MEMORY[0x277D84FA0];
                    goto LABEL_59;
                  }

                  goto LABEL_32;
                }

                goto LABEL_34;
              }
            }
          }

          else if (!v41)
          {
            goto LABEL_54;
          }

          v7 = (v7 + 1) & v45;
          v5 = v7 >> 6;
          v2 = 1 << v7;
          if ((v12[v7 >> 6] & (1 << v7)) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      break;
    }

    v37 = v30;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v11)
      {
        v4 = sub_252C53528(v62, v59, v61, v4);
        goto LABEL_59;
      }

      v10 = *(v29 + 8 * v38);
      ++v37;
      if (v10)
      {
        v30 = v38;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v52 = v14;

    v53 = v4;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v29 = v66;
    v30 = v67;
  }

  v54 = swift_slowAlloc();
  memcpy(v54, v12, v52);
  v55 = v58;
  v56 = sub_2529ADD44(v54, v59, v53, v7, &v68);

  if (v55)
  {

    result = MEMORY[0x2530AED00](v54, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x2530AED00](v54, -1, -1);
    v3 = v68;
    v63 = v70;
    v4 = v56;
LABEL_59:
    v31 = v3;
LABEL_60:
    sub_25291AE30(v31);
    return v4;
  }

  return result;
}

uint64_t sub_2529AC7A8(uint64_t a1)
{
  v3 = MEMORY[0x28223BE20](a1);
  v5 = v4;
  v70 = *MEMORY[0x277D85DE8];
  if (*(v4 + 16))
  {
    v7 = v3 + 56;
    v6 = *(v3 + 56);
    v8 = -1 << *(v3 + 32);
    v51 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v6;
    v11 = (63 - v8) >> 6;
    v12 = v4 + 56;

    v15 = 0;
    v52 = v7;
    v53 = v13;
    while (1)
    {
      if (!v10)
      {
        v16 = v15;
        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v17 >= v11)
          {
            goto LABEL_41;
          }

          v10 = *(v7 + 8 * v17);
          ++v16;
          if (v10)
          {
            v15 = v17;
            goto LABEL_13;
          }
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

LABEL_13:
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v54 = v15;
      v19 = (*(v13 + 48) + 504 * (v18 | (v15 << 6)));
      memcpy(v64, v19, sizeof(v64));
      memcpy(v65, v19, sizeof(v65));
      memcpy(v63, v19, sizeof(v63));
      sub_252E37EC4();
      sub_2529353AC(v64, v62);
      HomeAutomationIntent.hash(into:)(v61);
      v20 = sub_252E37F14();
      v21 = -1 << *(v5 + 32);
      v7 = v20 & ~v21;
      v2 = v7 >> 6;
      v1 = 1 << v7;
      if (((1 << v7) & *(v12 + 8 * (v7 >> 6))) != 0)
      {
        break;
      }

LABEL_6:
      memcpy(v63, v65, sizeof(v63));
      sub_252935408(v63);
      v7 = v52;
      v13 = v53;
      v15 = v54;
    }

    v22 = ~v21;
    while (1)
    {
      v23 = *(v5 + 48) + 504 * v7;
      memcpy(v62, v23, sizeof(v62));
      memcpy(v61, v23, sizeof(v61));
      sub_2529353AC(v62, v60);
      LOBYTE(v23) = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(v61, v65);
      memcpy(v63, v61, sizeof(v63));
      sub_252935408(v63);
      if (v23)
      {
        break;
      }

      v7 = (v7 + 1) & v22;
      v2 = v7 >> 6;
      v1 = 1 << v7;
      if (((1 << v7) & *(v12 + 8 * (v7 >> 6))) == 0)
      {
        goto LABEL_6;
      }
    }

    v24 = v52;
    v25 = v53;
    v67 = v51;
    v68 = v54;
    v69 = v10;
    v66[0] = v53;
    v66[1] = v52;
    memcpy(v61, v65, sizeof(v61));
    v26 = sub_252935408(v61);
    v27 = *(v5 + 32);
    v47 = ((1 << v27) + 63) >> 6;
    v14 = 8 * v47;
    if ((v27 & 0x3Fu) <= 0xD)
    {
      goto LABEL_20;
    }

LABEL_46:
    v42 = v14;

    v25 = v42;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_49;
    }

    v24 = v52;
    v25 = v53;
LABEL_20:
    v48 = &v46;
    MEMORY[0x28223BE20](v26);
    v7 = &v46 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v7, (v5 + 56), v28);
    *(v7 + 8 * v2) &= ~v1;
    v29 = *(v5 + 16) - 1;
    v49 = v7;
    v50 = v29;
LABEL_21:
    v1 = v54;
    if (v10)
    {
      goto LABEL_27;
    }

LABEL_22:
    v30 = v1;
    do
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v31 >= v11)
      {
        v5 = sub_252C544FC(v49, v47, v50, v5);
        goto LABEL_40;
      }

      v10 = *(v24 + 8 * v31);
      ++v30;
    }

    while (!v10);
    v1 = v31;
    while (1)
    {
LABEL_27:
      v32 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v54 = v1;
      v33 = (*(v25 + 48) + 504 * (v32 | (v1 << 6)));
      memcpy(v59, v33, sizeof(v59));
      memcpy(v60, v33, sizeof(v60));
      memcpy(v58, v33, sizeof(v58));
      sub_252E37EC4();
      sub_2529353AC(v59, v57);
      HomeAutomationIntent.hash(into:)(v56);
      v7 = v56;
      v34 = sub_252E37F14();
      v35 = -1 << *(v5 + 32);
      v2 = v34 & ~v35;
      v36 = v2 >> 6;
      v37 = 1 << v2;
      if (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0)
      {
LABEL_37:
        memcpy(v58, v60, sizeof(v58));
        sub_252935408(v58);
LABEL_38:
        v24 = v52;
        v25 = v53;
        goto LABEL_21;
      }

      v38 = ~v35;
      while (1)
      {
        v39 = (*(v5 + 48) + 504 * v2);
        memcpy(v57, v39, sizeof(v57));
        memcpy(v56, v39, sizeof(v56));
        sub_2529353AC(v57, &v55);
        v7 = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(v56, v60);
        memcpy(v58, v56, sizeof(v58));
        sub_252935408(v58);
        if (v7)
        {
          break;
        }

        v2 = (v2 + 1) & v38;
        v36 = v2 >> 6;
        v37 = 1 << v2;
        if (((1 << v2) & *(v12 + 8 * (v2 >> 6))) == 0)
        {
          goto LABEL_37;
        }
      }

      memcpy(v56, v60, sizeof(v56));
      sub_252935408(v56);
      v40 = v49[v36];
      v49[v36] = v40 & ~v37;
      if ((v40 & v37) == 0)
      {
        goto LABEL_38;
      }

      v24 = v52;
      v25 = v53;
      v1 = v54;
      if (__OFSUB__(v50, 1))
      {
        break;
      }

      if (v50 == 1)
      {

        v5 = MEMORY[0x277D84FA0];
        goto LABEL_40;
      }

      --v50;
      if (!v10)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_49:
    v43 = v25;
    v44 = swift_slowAlloc();
    memcpy(v44, (v5 + 56), v43);
    v45 = sub_2529ADF90(v44, v47, v5, v7, v66);

    MEMORY[0x2530AED00](v44, -1, -1);
    v25 = v66[0];
    v51 = v67;
    v5 = v45;
LABEL_40:
    v13 = v25;
LABEL_41:
    sub_25291AE30(v13);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

uint64_t sub_2529ACE1C(uint64_t a1)
{
  v3 = *v1;
  sub_252E37EC4();
  MEMORY[0x2530AE390](a1);
  v4 = sub_252E37F14();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_252DB02A4();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_2529AE384(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_2529ACF28(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_252E37914();

    if (v6)
    {
      v7 = sub_2529AE22C(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for HomeEntityResponse();
  v10 = sub_252E37684();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_252E37694();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_252DB02B8();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_2529AE714(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_2529AD0B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_252E37EC4();
  sub_252E37044();
  v6 = sub_252E37F14();
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
    if (v11 || (sub_252E37DB4() & 1) != 0)
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
    sub_252DAFEB0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2529AE8B4(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_2529AD1EC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_252E37EC4();
  sub_252E37EE4();
  if (a2)
  {
    sub_252E37044();
  }

  v6 = sub_252E37F14();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  v10 = *(v5 + 48);
  while (1)
  {
    v11 = (v10 + 16 * v8);
    v12 = v11[1];
    if (v12)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_14;
    }

LABEL_6:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v13 = *v11 == a1 && v12 == a2;
  if (!v13 && (sub_252E37DB4() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_14:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v2;
  v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_252DB000C();
    v15 = v18;
  }

  v16 = *(*(v15 + 48) + 16 * v8);
  sub_2529AE52C(v8);
  result = v16;
  *v2 = v18;
  return result;
}

void sub_2529AD364(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  v6 = *v3;
  memcpy(v17, __src, sizeof(v17));
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v16);
  v7 = sub_252E37F14();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v6 + 48) + 504 * v9;
      memcpy(v16, v11, sizeof(v16));
      memcpy(__srca, v11, sizeof(__srca));
      sub_2529353AC(v16, v14);
      LOBYTE(v11) = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(__srca, __dst);
      memcpy(v17, __srca, sizeof(v17));
      sub_252935408(v17);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    __srca[0] = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_252DB0FA0();
      v13 = __srca[0];
    }

    memmove(a1, (*(v13 + 48) + 504 * v9), 0x1F8uLL);
    sub_2529AEA78(v9);
    *v3 = __srca[0];
    GEOLocationCoordinate2DMake();
  }

  else
  {
LABEL_5:
    sub_25293DEE0(v17);
    memcpy(a1, v17, 0x1F8uLL);
  }
}

uint64_t sub_2529AD51C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_252E37EC4();
    MEMORY[0x2530AE390](v17);
    result = sub_252E37F14();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 8 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 8 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_252C53514(v7, a2, v9, a3);
}

void sub_2529AD6F4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_252E37904())
          {
            goto LABEL_30;
          }

          type metadata accessor for HomeEntityResponse();
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_252C53CA8(a1, a2, v30, a3);
            return;
          }
        }

        v18 = sub_252E37684();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for HomeEntityResponse();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_252E37694();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_252E37694();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_2529AD970(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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

          return sub_252C532DC(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_252E37EC4();

        sub_252E37044();
        v19 = sub_252E37F14();
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
        while ((sub_252E37DB4() & 1) == 0)
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

uint64_t sub_2529ADBA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = result;
  v7 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = *a5;
  v10 = a5[1];
  v11 = *(*a5 + 16);
  if (v10 == v11)
  {
LABEL_2:

    return sub_252C542E8(v6, a2, v8, a3);
  }

  else
  {
    v13 = a3 + 56;
    while ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 >= v11)
      {
        goto LABEL_18;
      }

      v14 = *(v9 + 8 * v10 + 32);
      a5[1] = v10 + 1;
      sub_252E37EC4();
      MEMORY[0x2530AE390](v14);
      result = sub_252E37F14();
      v15 = -1 << *(a3 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      v18 = 1 << v16;
      if (((1 << v16) & *(v13 + 8 * (v16 >> 6))) != 0)
      {
        v19 = *(a3 + 48);
        if (*(v19 + 8 * v16) == v14)
        {
LABEL_13:
          v21 = v6[v17];
          v6[v17] = v21 & ~v18;
          if ((v21 & v18) != 0)
          {
            if (__OFSUB__(v8--, 1))
            {
              goto LABEL_19;
            }

            if (!v8)
            {
              return MEMORY[0x277D84FA0];
            }
          }
        }

        else
        {
          v20 = ~v15;
          while (1)
          {
            v16 = (v16 + 1) & v20;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v13 + 8 * (v16 >> 6))) == 0)
            {
              break;
            }

            if (*(v19 + 8 * v16) == v14)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v9 = *a5;
      v10 = a5[1];
      v11 = *(*a5 + 16);
      if (v10 == v11)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2529ADD44(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = a3;
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
LABEL_2:
  v30 = v8;
LABEL_4:
  while (2)
  {
    v10 = a5[3];
    v11 = a5[4];
    if (v11)
    {
      v12 = a5[3];
LABEL_10:
      v15 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
      v17 = *v15;
      v16 = v15[1];
      a5[3] = v12;
      a5[4] = (v11 - 1) & v11;
      sub_252E37EC4();
      sub_252E37EE4();
      if (v16)
      {

        sub_252E37044();
      }

      result = sub_252E37F14();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
      {
LABEL_3:

        v6 = a3;
        continue;
      }

      v22 = ~v18;
      v23 = *(v6 + 48);
      while (1)
      {
        v24 = (v23 + 16 * v19);
        v25 = v24[1];
        if (v25)
        {
          if (v16)
          {
            v26 = *v24 == v17 && v25 == v16;
            if (v26 || (result = sub_252E37DB4(), (result & 1) != 0))
            {

LABEL_24:
              v27 = v31[v20];
              v31[v20] = v27 & ~v21;
              v6 = a3;
              if ((v27 & v21) != 0)
              {
                v8 = v30 - 1;
                if (__OFSUB__(v30, 1))
                {
LABEL_33:
                  __break(1u);
                  return result;
                }

                if (v30 == 1)
                {
                  return MEMORY[0x277D84FA0];
                }

                goto LABEL_2;
              }

              goto LABEL_4;
            }
          }
        }

        else if (!v16)
        {
          goto LABEL_24;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if ((*(v9 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v13 = (a5[2] + 64) >> 6;
  v14 = a5[3];
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v12 >= v13)
    {
      break;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v14;
    if (v11)
    {
      goto LABEL_10;
    }
  }

  if (v13 <= v10 + 1)
  {
    v28 = v10 + 1;
  }

  else
  {
    v28 = (a5[2] + 64) >> 6;
  }

  a5[3] = v28 - 1;
  a5[4] = 0;

  return sub_252C53528(v31, a2, v30, v6);
}

unint64_t *sub_2529ADF90(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v26 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v33 = v7 - 1;
  v8 = a3 + 56;
  while (1)
  {
    v9 = a5[3];
    v10 = a5[4];
    if (!v10)
    {
      break;
    }

    v11 = a5[3];
LABEL_9:
    v14 = (v10 - 1) & v10;
    memcpy(v31, (*(*a5 + 48) + 504 * (__clz(__rbit64(v10)) | (v11 << 6))), sizeof(v31));
    a5[3] = v11;
    a5[4] = v14;
    memcpy(__src, v31, 0x1F8uLL);
    memcpy(__dst, v31, sizeof(__dst));
    sub_252E37EC4();
    sub_2529353AC(v31, v29);
    HomeAutomationIntent.hash(into:)(v28);
    v15 = sub_252E37F14();
    v16 = -1 << *(a3 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v8 + 8 * (v17 >> 6))) != 0)
    {
      v20 = ~v16;
      while (1)
      {
        v21 = *(a3 + 48) + 504 * v17;
        memcpy(v29, v21, sizeof(v29));
        memcpy(v28, v21, sizeof(v28));
        sub_2529353AC(v29, v27);
        LOBYTE(v21) = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(v28, __src);
        memcpy(__dst, v28, sizeof(__dst));
        sub_252935408(__dst);
        if (v21)
        {
          break;
        }

        v17 = (v17 + 1) & v20;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        if (((1 << v17) & *(v8 + 8 * (v17 >> 6))) == 0)
        {
          goto LABEL_2;
        }
      }

      memcpy(v28, __src, sizeof(v28));
      result = sub_252935408(v28);
      v22 = v26[v18];
      v26[v18] = v22 & ~v19;
      if ((v22 & v19) != 0)
      {
        v23 = v33 - 1;
        if (__OFSUB__(v33, 1))
        {
LABEL_23:
          __break(1u);
          return result;
        }

        --v33;
        if (!v23)
        {
          return MEMORY[0x277D84FA0];
        }
      }
    }

    else
    {
LABEL_2:
      memcpy(__dst, __src, sizeof(__dst));
      result = sub_252935408(__dst);
    }
  }

  v12 = (a5[2] + 64) >> 6;
  v13 = a5[3];
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v11 >= v12)
    {
      break;
    }

    v10 = *(a5[1] + 8 * v11);
    ++v13;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  if (v12 <= v9 + 1)
  {
    v24 = v9 + 1;
  }

  else
  {
    v24 = (a5[2] + 64) >> 6;
  }

  a5[3] = v24 - 1;
  a5[4] = 0;

  return sub_252C544FC(v26, a2, v33, a3);
}

uint64_t sub_2529AE22C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_252E378C4();
  v5 = swift_unknownObjectRetain();
  v6 = sub_252DA9E88(v5, v4);
  v15 = v6;

  v7 = sub_252E37684();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for HomeEntityResponse();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_252E37694();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
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

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_2529AE714(v9);
  result = sub_252E37694();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2529AE384(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_252E37844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v10);
        v11 = sub_252E37F14() & v7;
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
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
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

unint64_t sub_2529AE52C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_252E37844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_252E37EC4();
        sub_252E37EE4();
        if (v10)
        {

          sub_252E37044();
        }

        v11 = sub_252E37F14();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_13;
        }

        if (v2 >= v12)
        {
LABEL_13:
          v13 = *(v3 + 48);
          v14 = (v13 + 16 * v2);
          v15 = (v13 + 16 * v6);
          if (v2 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
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

unint64_t sub_2529AE714(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_252E37844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_252E37684();

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

unint64_t sub_2529AE8B4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_252E37844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_252E37EC4();

        sub_252E37044();
        v10 = sub_252E37F14();

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

unint64_t sub_2529AEA78(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_252E37844();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 504 * v6);
        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v21, v10, sizeof(v21));
        sub_252E37EC4();
        sub_2529353AC(__dst, &v19);
        HomeAutomationIntent.hash(into:)(v20);
        v11 = sub_252E37F14();
        sub_252935408(__dst);
        v12 = v11 & v7;
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
          v14 = (v13 + 504 * v2);
          v15 = (v13 + 504 * v6);
          if (v2 != v6 || v14 >= v15 + 504)
          {
            memmove(v14, v15, 0x1F8uLL);
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

uint64_t sub_2529AEC6C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2529AECD4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2529AED1C()
{
  if (!AFIsInternalInstall())
  {
    return 2;
  }

  v1 = *(v0 + 16);
  if (!v1)
  {
    v10 = 0u;
    v11 = 0u;
    sub_252982F10(&v10);
    v10 = 0u;
    v11 = 0u;
LABEL_18:
    sub_252982F10(&v10);
    return 2;
  }

  v2 = sub_252E36F04();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_252982F10(&v10);
  }

  v5 = sub_252E36F04();
  v6 = [v1 objectForKey_];

  if (v6)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  if (v8 == __PAIR128__(0xE100000000000000, 49))
  {

    return 1;
  }

  else
  {
    v7 = sub_252E37DB4();

    return v7 & 1;
  }
}

uint64_t sub_2529AEF14()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v10 = 0u;
    v11 = 0u;
    sub_252982F10(&v10);
    v10 = 0u;
    v11 = 0u;
LABEL_20:
    sub_252982F10(&v10);
    return 4;
  }

  v2 = sub_252E36F04();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      if ((v8 + 1) < 4)
      {
        return v8 + 1;
      }

      else
      {
        return 4;
      }
    }
  }

  else
  {
    sub_252982F10(&v10);
  }

  v5 = sub_252E36F04();
  v6 = [v1 objectForKey_];

  if (v6)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 4;
  }

  if (v8 == __PAIR128__(0xE100000000000000, 48) || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (v8 == __PAIR128__(0xE100000000000000, 49) || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (v8 == __PAIR128__(0xE100000000000000, 50))
  {

    return 3;
  }

  else
  {
    v7 = sub_252E37DB4();

    if (v7)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }
}

void sub_2529AF19C(unsigned __int8 a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    if (a1 == 4)
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_252E37DA4();
    }

    v4 = sub_252E36F04();
    [v2 setObject:v3 forKey:v4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2529AF248()
{
  if (!AFIsInternalInstall())
  {
    return 2;
  }

  v1 = *(v0 + 16);
  if (!v1)
  {
    v10 = 0u;
    v11 = 0u;
    sub_252982F10(&v10);
    v10 = 0u;
    v11 = 0u;
LABEL_18:
    sub_252982F10(&v10);
    return 2;
  }

  v2 = sub_252E36F04();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_252982F10(&v10);
  }

  v5 = sub_252E36F04();
  v6 = [v1 objectForKey_];

  if (v6)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  if (v8 == __PAIR128__(0xE100000000000000, 49))
  {

    return 1;
  }

  else
  {
    v7 = sub_252E37DB4();

    return v7 & 1;
  }
}

uint64_t sub_2529AF444()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (!v1)
  {
    v37 = 0u;
    v38 = 0u;
    sub_252982F10(&v37);
    v37 = 0u;
    v38 = 0u;
LABEL_35:
    sub_252982F10(&v37);
    return 0;
  }

  v2 = sub_252E36F04();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    if (swift_dynamicCast())
    {
      return v35;
    }
  }

  else
  {
    sub_252982F10(&v37);
  }

  v5 = sub_252E36F04();
  v6 = [v1 objectForKey_];

  if (v6)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = *(&v35 + 1);
  v7 = HIBYTE(*(&v35 + 1)) & 0xFLL;
  v8 = v35 & 0xFFFFFFFFFFFFLL;
  if ((*(&v35 + 1) & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(*(&v35 + 1)) & 0xFLL;
  }

  else
  {
    v9 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return 0;
  }

  if ((*(&v35 + 1) & 0x1000000000000000) != 0)
  {
    v13 = sub_2529AFE0C(v35, *(&v35 + 1), 10);
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      return v13;
    }

    return 0;
  }

  if ((*(&v35 + 1) & 0x2000000000000000) == 0)
  {
    if ((v35 & 0x1000000000000000) != 0)
    {
      v10 = ((*(&v35 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_252E37A84();
      result = *(&v35 + 1);
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_79;
          }

          v21 = v10 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v20)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_78;
      }

      goto LABEL_87;
    }

    if (v11 == 45)
    {
      if (v8 >= 1)
      {
        v12 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_79;
          }

          v14 = v10 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_78;
      }

      __break(1u);
      goto LABEL_86;
    }

    if (v8)
    {
      v13 = 0;
      if (!v10)
      {
        goto LABEL_79;
      }

      while (1)
      {
        v27 = *v10 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v10;
        if (!--v8)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_78;
  }

  *&v37 = v35;
  *(&v37 + 1) = *(&v35 + 1) & 0xFFFFFFFFFFFFFFLL;
  if (v35 != 43)
  {
    if (v35 == 45)
    {
      if (!v7)
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v10 = (v7 - 1);
      if (v7 != 1)
      {
        v13 = 0;
        v17 = &v37 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v10)
          {
            goto LABEL_79;
          }
        }
      }
    }

    else if (v7)
    {
      v13 = 0;
      v29 = &v37;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          break;
        }

        ++v29;
        if (!--v7)
        {
LABEL_77:
          LOBYTE(v10) = 0;
          goto LABEL_79;
        }
      }
    }

LABEL_78:
    v13 = 0;
    LOBYTE(v10) = 1;
LABEL_79:
    v32 = v10;

    if ((v32 & 1) == 0)
    {
      return v13;
    }

    return 0;
  }

  if (v7)
  {
    v10 = (v7 - 1);
    if (v7 != 1)
    {
      v13 = 0;
      v24 = &v37 + 1;
      while (1)
      {
        v25 = *v24 - 48;
        if (v25 > 9)
        {
          break;
        }

        v26 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        ++v24;
        if (!--v10)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_2529AF8E4()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (!v1)
  {
    v37 = 0u;
    v38 = 0u;
    sub_252982F10(&v37);
    v37 = 0u;
    v38 = 0u;
LABEL_35:
    sub_252982F10(&v37);
    return 0;
  }

  v2 = sub_252E36F04();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    if (swift_dynamicCast())
    {
      return v35;
    }
  }

  else
  {
    sub_252982F10(&v37);
  }

  v5 = sub_252E36F04();
  v6 = [v1 objectForKey_];

  if (v6)
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = *(&v35 + 1);
  v7 = HIBYTE(*(&v35 + 1)) & 0xFLL;
  v8 = v35 & 0xFFFFFFFFFFFFLL;
  if ((*(&v35 + 1) & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(*(&v35 + 1)) & 0xFLL;
  }

  else
  {
    v9 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return 0;
  }

  if ((*(&v35 + 1) & 0x1000000000000000) != 0)
  {
    v13 = sub_2529AFE0C(v35, *(&v35 + 1), 10);
    v34 = v33;

    if ((v34 & 1) == 0)
    {
      return v13;
    }

    return 0;
  }

  if ((*(&v35 + 1) & 0x2000000000000000) == 0)
  {
    if ((v35 & 0x1000000000000000) != 0)
    {
      v10 = ((*(&v35 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_252E37A84();
      result = *(&v35 + 1);
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_79;
          }

          v21 = v10 + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v20)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_78;
      }

      goto LABEL_87;
    }

    if (v11 == 45)
    {
      if (v8 >= 1)
      {
        v12 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_79;
          }

          v14 = v10 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_78;
      }

      __break(1u);
      goto LABEL_86;
    }

    if (v8)
    {
      v13 = 0;
      if (!v10)
      {
        goto LABEL_79;
      }

      while (1)
      {
        v27 = *v10 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v10;
        if (!--v8)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_78;
  }

  *&v37 = v35;
  *(&v37 + 1) = *(&v35 + 1) & 0xFFFFFFFFFFFFFFLL;
  if (v35 != 43)
  {
    if (v35 == 45)
    {
      if (!v7)
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v10 = (v7 - 1);
      if (v7 != 1)
      {
        v13 = 0;
        v17 = &v37 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v10)
          {
            goto LABEL_79;
          }
        }
      }
    }

    else if (v7)
    {
      v13 = 0;
      v29 = &v37;
      while (1)
      {
        v30 = *v29 - 48;
        if (v30 > 9)
        {
          break;
        }

        v31 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v31 + v30;
        if (__OFADD__(v31, v30))
        {
          break;
        }

        ++v29;
        if (!--v7)
        {
LABEL_77:
          LOBYTE(v10) = 0;
          goto LABEL_79;
        }
      }
    }

LABEL_78:
    v13 = 0;
    LOBYTE(v10) = 1;
LABEL_79:
    v32 = v10;

    if ((v32 & 1) == 0)
    {
      return v13;
    }

    return 0;
  }

  if (v7)
  {
    v10 = (v7 - 1);
    if (v7 != 1)
    {
      v13 = 0;
      v24 = &v37 + 1;
      while (1)
      {
        v25 = *v24 - 48;
        if (v25 > 9)
        {
          break;
        }

        v26 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        ++v24;
        if (!--v10)
        {
          goto LABEL_79;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_88:
  __break(1u);
  return result;
}

void *sub_2529AFD98(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E68, &qword_252E3F1E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_2529AFE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_252E37184();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2529B0398(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_252E37A84();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_2529B0398(uint64_t a1, unint64_t a2)
{
  v2 = sub_252E37194();
  v6 = sub_2529B0418(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2529B0418(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_252E37754();
    if (!v9 || (v10 = v9, v11 = sub_2529AFD98(v9, 0), v12 = sub_2529B0570(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_252E37034();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_252E37034();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_252E37A84();
LABEL_4:

  return sub_252E37034();
}

unint64_t sub_2529B0570(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_252AD5C38(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_252E37124();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_252E37A84();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_252AD5C38(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_252E370F4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2529B0790(uint64_t a1)
{
  *(v2 + 296) = a1;
  *(v2 + 304) = v1;
  return MEMORY[0x2822009F8](sub_2529B07B0, 0, 0);
}

uint64_t sub_2529B07B0(uint64_t a1)
{
  v2 = v1[38];
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v3 + 16), (v1 + 2));

  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v24 = sub_252E338D4();
  v4 = __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
  sub_252929E74((v5 + 16), (v1 + 7));

  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v23 = sub_252E338F4();
  v6 = __swift_destroy_boxed_opaque_existential_1(v1 + 7);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
  sub_252929E74((v7 + 16), (v1 + 12));

  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  v8 = sub_252E33884();
  v9 = __swift_destroy_boxed_opaque_existential_1(v1 + 12);
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v9);
  sub_252929E74((v10 + 16), (v1 + 17));

  __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
  v11 = sub_252E338C4();
  v12 = __swift_destroy_boxed_opaque_existential_1(v1 + 17);
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12);

  v13 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v14 = [v13 canEvaluatePolicy:2 error:0];

  LOBYTE(v13) = sub_252C4D664(5);
  sub_252929E74(v2 + 32, (v1 + 27));
  v16 = v1[30];
  v15 = v1[31];
  __swift_project_boxed_opaque_existential_1(v1 + 27, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  *(v17 + 24) = v24 & 1;
  *(v17 + 25) = v23 & 1;
  *(v17 + 26) = v8 & 1;
  *(v17 + 27) = v11 & 1;
  *(v17 + 28) = v14;
  *(v17 + 29) = v13 & 1;

  sub_252943BD0(sub_2529B10D4, v17, 0, v16, v15);
  v18 = v1[38];

  __swift_destroy_boxed_opaque_existential_1(v1 + 27);
  sub_252929E74(v18 + 72, (v1 + 32));
  v19 = v1[35];
  v20 = v1[36];
  __swift_project_boxed_opaque_existential_1(v1 + 32, v19);
  v21 = swift_task_alloc();
  v1[39] = v21;
  *v21 = v1;
  v21[1] = sub_2529B0B1C;

  return MEMORY[0x2821BB5D0](v1 + 22, v19, v20);
}

uint64_t sub_2529B0B1C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_2529B0C9C;
  }

  else
  {
    v2 = sub_2529B0C30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2529B0C30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2529B0C9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v1 = v0[1];

  return v1();
}

uint64_t sub_2529B0D08(uint64_t a1, char a2, char a3, char a4, char a5, char a6, char a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252E3F1F0;
  v14 = MEMORY[0x277D839B0];
  *(v13 + 32) = 0x54656C7070417369;
  *(v13 + 40) = 0xE900000000000056;
  *(v13 + 48) = a2;
  *(v13 + 72) = v14;
  *(v13 + 80) = 0x6F50656D6F487369;
  *(v13 + 88) = 0xE900000000000064;
  *(v13 + 96) = a3;
  *(v13 + 120) = v14;
  *(v13 + 128) = 0x63614D7369;
  *(v13 + 136) = 0xE500000000000000;
  *(v13 + 144) = a4;
  *(v13 + 168) = v14;
  *(v13 + 176) = 0x68637461577369;
  *(v13 + 184) = 0xE700000000000000;
  *(v13 + 192) = a5;
  *(v13 + 216) = v14;
  *(v13 + 224) = 0xD000000000000010;
  *(v13 + 232) = 0x8000000252E6E4C0;
  *(v13 + 240) = a6;
  *(v13 + 264) = v14;
  strcpy((v13 + 272), "isSceneRequest");
  *(v13 + 287) = -18;
  *(v13 + 312) = v14;
  *(v13 + 288) = a7;

  sub_252E362B4();
}

uint64_t sub_2529B0ED8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_2529B0790(a1);
}

void *sub_2529B0F70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BlockUnsafeActionsHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_2529B0FAC(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v1 + 16), v10);

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v2 = sub_252E338D4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
    sub_252929E74((v3 + 16), v9);

    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v4 = sub_252E338F4();
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(v10);
    if ((v4 & 1) == 0)
    {
      v5 = sub_252C4BEB8();
      if (v5)
      {
        _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);

        v6 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
        v7 = [v6 canEvaluatePolicy:2 error:0];

        return v7 ^ 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2529B1138@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SprinklerModifyGetPowerToInUseHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

void sub_2529B116C(void *a1)
{
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 != 2 && (v4 & 1) == 0 || (v5 = [a1 filters]) == 0)
  {

    return;
  }

  v6 = v5;
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = [a1 userTask];
  v9 = HomeStore.accessories(matching:supporting:)(v7, v8);
  v11 = v10;

  if (v11)
  {
    v12 = v9;
    v13 = 1;
LABEL_45:
    sub_252929F10(v12, v13);
    return;
  }

  if (v9 >> 62)
  {
    v14 = sub_252E378C4();
    if (!v14)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_44;
    }
  }

  v15 = [a1 userTask];
  if (!v15)
  {
LABEL_16:
    sub_252929F10(v9, 0);
    sub_252C515AC();
    return;
  }

  v16 = v15;
  if ([v15 taskType] == 4)
  {

    goto LABEL_13;
  }

  v17 = [v16 taskType];

  if (v17 != 5)
  {
LABEL_44:
    v12 = v9;
    v13 = 0;
    goto LABEL_45;
  }

LABEL_13:
  v18 = [a1 userTask];
  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v18 attribute];

  if (v20 != 27)
  {
    goto LABEL_44;
  }

  v21 = 0;
  v22 = v9 & 0xC000000000000001;
  while (1)
  {
    if (v22)
    {
      v23 = MEMORY[0x2530ADF00](v21, v9);
      v24 = __OFADD__(v21++, 1);
      if (v24)
      {
LABEL_42:
        __break(1u);
LABEL_43:

        goto LABEL_44;
      }

      goto LABEL_21;
    }

    if (v21 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v23 = *(v9 + 32 + 8 * v21);

    v24 = __OFADD__(v21++, 1);
    if (v24)
    {
      goto LABEL_42;
    }

LABEL_21:
    v25 = (*v23 + 256);
    v26 = *v25;
    if ((*v25)() == 32)
    {

      if (v21 == v14)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v27 = (*(*v23 + 272))();
      if (!*(v27 + 16) || (sub_252E37EC4(), MEMORY[0x2530AE390](32), v28 = sub_252E37F14(), v29 = -1 << *(v27 + 32), v30 = v28 & ~v29, ((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0))
      {
LABEL_27:

        v33 = (v26)(v32);
        if (v33 == 38)
        {
          v35 = &unk_2864A8B80;
LABEL_31:
          v34 = sub_2529FC004(v35);
        }

        else
        {
          v34 = MEMORY[0x277D84FA0];
          if (v33 == 41)
          {
            v35 = &unk_2864A8BA8;
            goto LABEL_31;
          }
        }

        if (!*(v34 + 16))
        {
          goto LABEL_43;
        }

        sub_252E37EC4();
        MEMORY[0x2530AE390](32);
        v36 = sub_252E37F14();
        v37 = -1 << *(v34 + 32);
        v38 = v36 & ~v37;
        if (((*(v34 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_43;
        }

        v39 = ~v37;
        while (*(*(v34 + 48) + 8 * v38) != 32)
        {
          v38 = (v38 + 1) & v39;
          if (((*(v34 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        goto LABEL_38;
      }

      v31 = ~v29;
      while (*(*(v27 + 48) + 8 * v30) != 32)
      {
        v30 = (v30 + 1) & v31;
        if (((*(v27 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_38:

      v22 = v9 & 0xC000000000000001;
      if (v21 == v14)
      {
LABEL_46:
        sub_252929F10(v9, 0);
        return;
      }
    }
  }

  __break(1u);
}

id sub_2529B15C0(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 userTask];
  if (v6)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v6 = sub_252D6CA80(v6);
    v6[3] = 46;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v5, v7, v2);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_252E379F4();

  v20 = 0xD000000000000027;
  v21 = 0x8000000252E6E530;
  if (v6)
  {
    v8 = v6[3];
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  v19 = v6 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  v9 = sub_252E36F94();
  MEMORY[0x2530AD570](v9);

  sub_252CC3D90(v20, v21, 0xD00000000000009ELL, 0x8000000252E6E560);

  (*(v3 + 8))(v5, v2);
  if (v6)
  {

    v10 = sub_252D6CB58();
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 filters];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for HomeFilter();
    v13 = sub_252E37264();
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 time];
  v15 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v15 setUserTask_];
  if (v13)
  {
    type metadata accessor for HomeFilter();
    v16 = sub_252E37254();
  }

  else
  {
    v16 = 0;
  }

  [v15 setFilters_];

  [v15 setTime_];

  return v15;
}

uint64_t sub_2529B1920@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v22 = sub_252E34164();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v26, a2, 0x1F8uLL);
  v9 = *(v3 + 16);
  v10 = *(v9 + 16);

  v12 = (v9 + 40);
  v13 = -v10;
  v14 = -1;
  while (1)
  {
    if (v13 + v14 == -1)
    {

LABEL_9:
      v20 = v23;
      *(v23 + 32) = 0;
      *v20 = 0u;
      v20[1] = 0u;
      return result;
    }

    if (++v14 >= *(v9 + 16))
    {
      break;
    }

    v15 = v12 + 2;
    v16 = *(v12 - 1);
    v17 = *v12;
    memcpy(v25, v26, sizeof(v25));
    result = (*(v17 + 16))(v25, a1, v16, v17);
    v12 = v15;
    if (result)
    {

      MEMORY[0x28223BE20](v18);
      memcpy(v25, v26, sizeof(v25));
      (*(v6 + 16))(v8, a1, v22);
      v19 = *(v17 + 8);
      sub_2529353AC(v26, &v24);
      v19(v25, v8, v16, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E70, &qword_252E3F328);
      if (swift_dynamicCast())
      {
        return sub_252927BEC(v25, v23);
      }

      memset(v25, 0, 40);
      result = sub_2529B1C38(v25);
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ReformationProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2529B1C38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E78, &unk_252E3F330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2529B1CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_252E33DB4();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529B1D64, 0, 0);
}

uint64_t sub_2529B1D64()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540798, &qword_252E3F4E0);
  v4 = sub_252E34024();
  v5 = sub_252E34034();
  sub_252E34044();
  v6 = sub_252E33DA4();
  v8 = v7;
  (*(v1 + 8))(v2, v3);
  v9 = [v4 automatableTask];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  type metadata accessor for ControlAutomateHomeIntent();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

LABEL_13:

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544DA8);
    sub_252CC4050(0xD000000000000042, 0x8000000252E6E6B0, 0xD00000000000008DLL, 0x8000000252E6E700, 0xD000000000000037, 0x8000000252E6E790, 34);
    type metadata accessor for HomeAutomationError(0);
    sub_2529B2E60(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    *v23 = v5;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_28;
  }

  v40 = v5;
  v41 = v4;
  v12 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v13 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v14 = v12;

  v15 = [v13 init];
  [v15 setUserTask_];
  type metadata accessor for HomeFilter();
  v16 = sub_252E37254();

  [v15 setFilters_];

  [v15 setTime_];
  v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v17);
  sub_252929E74((v18 + 136), v0 + 16);

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544D18);
  sub_252E379F4();

  MEMORY[0x2530AD570](v6, v8);
  sub_252CC3D90(0xD000000000000020, 0x8000000252E6C4E0, 0xD00000000000008DLL, 0x8000000252E6E700);

  if ((v6 != 0x6174616D6F747561 || v8 != 0xEF6B736154656C62) && (sub_252E37DB4() & 1) == 0)
  {
    type metadata accessor for HomeAutomationError(0);
    sub_2529B2E60(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    *v29 = v6;
    v29[1] = v8;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_28:

    v38 = *(v0 + 8);
    goto LABEL_29;
  }

  sub_252974E7C(*(v0 + 144), v0 + 56);
  if (swift_dynamicCast())
  {
    v20 = *(v0 + 144);

    sub_252974E7C(v20, v0 + 88);
    if (swift_dynamicCast())
    {
      v21 = *(v0 + 128);
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_27;
  }

  v24 = [v15 filters];
  if (v24)
  {
    v25 = v24;
    v26 = sub_252E37264();

    if (v26 >> 62)
    {
      result = sub_252E378C4();
      if (result)
      {
        goto LABEL_19;
      }
    }

    else
    {
      result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_19:
        if ((v26 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x2530ADF00](0, v26);
        }

        else
        {
          if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v28 = *(v26 + 32);
        }

        v21 = v28;

        goto LABEL_27;
      }
    }
  }

  v21 = 0;
LABEL_27:
  v30 = *(v0 + 160);
  v31 = *(v0 + 40);
  v32 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v31);
  v33 = *(v30 + 16);
  v34 = swift_allocObject();
  v34[2] = v40;
  v34[3] = v15;
  v34[4] = v21;
  v35 = *(v32 + 80);
  v39 = v21;
  v36 = v15;
  v37 = v40;
  v35(v33, sub_2529B2EA8, v34, v31, v32);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v38 = *(v0 + 8);
LABEL_29:

  return v38();
}

void sub_2529B2458(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_252A6D5D4(a3);
  v8 = [a1 itemToConfirm];
  sub_252E377F4();
  swift_unknownObjectRelease();
  type metadata accessor for HomeFilter();
  if (swift_dynamicCast())
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  sub_252AA9CA8(a2, v9, v7, a4);
}

uint64_t sub_2529B2514()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2529B2570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v12 = v6;
  v12[1] = sub_25293B808;

  return MEMORY[0x2821BA198](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2529B2650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252973640(a1, a2, a3);
}

uint64_t sub_2529B2714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_25296BC70;

  return MEMORY[0x2821B9E10](a1, a2, v9, a4);
}

uint64_t sub_2529B27D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_2529B1CA0(a1, a2, a3);
}

uint64_t sub_2529B288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9E28](a1, a2, a3, v11, a5);
}

uint64_t sub_2529B2958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9E38](a1, a2, a3, v11, a5);
}

uint64_t sub_2529B2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9E30](a1, a2, v9, a4);
}

uint64_t sub_2529B2AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9E40](a1, a2, v9, a4);
}

uint64_t sub_2529B2BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v12 = v6;
  v12[1] = sub_25294B954;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2529B2C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for AutomateHomeNeedsConfirmationStrategy();
  *v14 = v7;
  v14[1] = sub_25294B954;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_2529B2E08(uint64_t a1, uint64_t a2)
{
  result = sub_2529B2E60(&qword_27F540E90, a2, type metadata accessor for AutomateHomeNeedsConfirmationStrategy, byte_252E3F490);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2529B2E60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_2529B2EB4()
{
  result = sub_252CC65B0(&unk_2864A7DE0);
  off_27F540E98 = result;
  return result;
}

void *sub_2529B2EDC()
{
  result = sub_252CC65D8(&unk_2864A84B8);
  off_27F540EA0 = result;
  return result;
}

uint64_t sub_2529B2F04(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_27F53F228 != -1)
  {
    swift_once();
  }

  v2 = off_27F540E98;
  if (*(off_27F540E98 + 2))
  {
    v3 = sub_252A455CC(v1);
    if (v4)
    {
      return *(v2[7] + 8 * v3);
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E6ECB0);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000017, 0x8000000252E6ECF0, 462);

  return 0;
}

void sub_2529B3090(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_145;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_146:
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v88 = sub_252E36AD4();
    __swift_project_value_buffer(v88, qword_27F544EE0);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E6EAE0);
    v89 = type metadata accessor for HomeEntityResponse();
    v90 = MEMORY[0x2530AD730](v1, v89);
    MEMORY[0x2530AD570](v90);

    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000001FLL, 0x8000000252E6EB20, 260);

    return;
  }

LABEL_3:
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v96 = v1;
  v6 = v1 + 32;
  v1 = 0x279711000;
  v98 = v4;
  v99 = v2;
  v97 = v6;
  while (1)
  {
    if (v4)
    {
      v7 = MEMORY[0x2530ADF00](v3, v96);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_142;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    v9 = __OFADD__(v3++, 1);
    if (v9)
    {
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      v2 = sub_252E378C4();
      if (!v2)
      {
        goto LABEL_146;
      }

      goto LABEL_3;
    }

    v10 = [v7 *(v1 + 1760)];
    if (v10)
    {
      break;
    }

LABEL_5:

    if (v3 == v2)
    {
      v16 = 0;
      while (1)
      {
        if (v4)
        {
          v17 = MEMORY[0x2530ADF00](v16, v96);
        }

        else
        {
          if (v16 >= *(v5 + 16))
          {
            goto LABEL_150;
          }

          v17 = *(v6 + 8 * v16);
        }

        v8 = v17;
        v9 = __OFADD__(v16++, 1);
        if (v9)
        {
          break;
        }

        v18 = [v17 *(v1 + 1760)];
        if (v18)
        {
          v19 = v18;
          v20 = v5;
          type metadata accessor for HomeUserTaskResponse();
          v21 = sub_252E37264();

          if (v21 >> 62)
          {
            v22 = sub_252E378C4();
          }

          else
          {
            v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v23 = 0;
          v1 = v21 & 0xC000000000000001;
          while (v22 != v23)
          {
            if (v1)
            {
              v24 = MEMORY[0x2530ADF00](v23, v21);
            }

            else
            {
              if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_144;
              }

              v24 = *(v21 + 8 * v23 + 32);
            }

            v25 = v24;
            if (__OFADD__(v23, 1))
            {
              goto LABEL_143;
            }

            v26 = [v24 taskOutcome];

            ++v23;
            if (v26 == 22)
            {
              goto LABEL_20;
            }
          }

          v4 = v98;
          v2 = v99;
          v5 = v20;
          v6 = v97;
          v1 = &off_279711000;
        }

        if (v16 == v2)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }
  }

  v11 = v10;
  v6 = v5;
  type metadata accessor for HomeUserTaskResponse();
  v5 = sub_252E37264();

  v4 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    v12 = sub_252E378C4();
  }

  else
  {
    v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = 0;
  v1 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v12 == v2)
    {

      v4 = v98;
      v2 = v99;
      v5 = v6;
      v6 = v97;
      v1 = &off_279711000;
      goto LABEL_5;
    }

    if (v1)
    {
      v13 = MEMORY[0x2530ADF00](v2, v5);
    }

    else
    {
      if (v2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v13 = *(v5 + 8 * v2 + 32);
    }

    v14 = v13;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v15 = [v13 taskOutcome];

    ++v2;
    if (v15 == 21)
    {
LABEL_20:

      return;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  v27 = 0;
  v95 = v5;
  while (1)
  {
    if (v4)
    {
      v28 = MEMORY[0x2530ADF00](v27, v96);
    }

    else
    {
      if (v27 >= *(v5 + 16))
      {
        goto LABEL_158;
      }

      v28 = *(v6 + 8 * v27);
    }

    v29 = v28;
    v9 = __OFADD__(v27++, 1);
    if (v9)
    {
      goto LABEL_157;
    }

    v30 = [v28 *(v1 + 1760)];
    if (!v30)
    {
      break;
    }

    v31 = v30;
    type metadata accessor for HomeUserTaskResponse();
    v32 = sub_252E37264();

    if (v32 >> 62)
    {
      v33 = sub_252E378C4();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = 0;
    do
    {
      if (v33 == v34)
      {

        v4 = v98;
        v2 = v99;
        v5 = v95;
        v1 = &off_279711000;
        goto LABEL_69;
      }

      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x2530ADF00](v34, v32);
      }

      else
      {
        if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_152;
        }

        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_151;
      }

      v37 = [v35 taskOutcome];

      ++v34;
    }

    while (v37 != 12);

    v4 = v98;
    v2 = v99;
    v5 = v95;
    v1 = 0x279711000;
    if (v27 == v99)
    {
      return;
    }
  }

LABEL_69:

  v38 = 0;
LABEL_70:
  if (v4)
  {
    v39 = MEMORY[0x2530ADF00](v38, v96);
  }

  else
  {
    if (v38 >= *(v5 + 16))
    {
      goto LABEL_162;
    }

    v39 = *(v6 + 8 * v38);
  }

  v40 = v39;
  v9 = __OFADD__(v38, 1);
  v41 = v38 + 1;
  if (v9)
  {
    goto LABEL_161;
  }

  v42 = [v39 *(v1 + 1760)];
  v93 = v41;
  v94 = v40;
  if (v42)
  {
    v43 = v42;
    type metadata accessor for HomeUserTaskResponse();
    v44 = sub_252E37264();

    v45 = [v40 entity];
    if (v45)
    {

      if (v44 >> 62)
      {
        v46 = sub_252E378C4();
        if (v46)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v46)
        {
LABEL_79:
          v47 = 0;
          v91 = v44 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if ((v44 & 0xC000000000000001) != 0)
            {
              v48 = MEMORY[0x2530ADF00](v47, v44);
            }

            else
            {
              if (v47 >= *(v91 + 16))
              {
                goto LABEL_160;
              }

              v48 = *(v44 + 32 + 8 * v47);
            }

            v49 = v48;
            v9 = __OFADD__(v47++, 1);
            if (v9)
            {
              goto LABEL_159;
            }

            v50 = v5;
            if (qword_27F53F730 != -1)
            {
              swift_once();
            }

            v51 = qword_27F575C40;
            v52 = [v49 taskOutcome];
            if (*(v51 + 16))
            {
              v53 = v52;
              sub_252E37EC4();
              MEMORY[0x2530AE390](v53);
              v54 = sub_252E37F14();
              v55 = -1 << *(v51 + 32);
              v56 = v54 & ~v55;
              if ((*(v51 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
              {
                v57 = ~v55;
                while (*(*(v51 + 48) + 8 * v56) != v53)
                {
                  v56 = (v56 + 1) & v57;
                  if (((*(v51 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
                  {
                    goto LABEL_80;
                  }
                }

                v4 = v98;
                v2 = v99;
                v5 = v50;
LABEL_135:
                v1 = 0x279711000;
                v38 = v93;
                if (v93 != v2)
                {
                  goto LABEL_70;
                }

                return;
              }
            }

LABEL_80:

            v5 = v50;
            v1 = 0x279711000;
          }

          while (v47 != v46);
        }
      }
    }

    v4 = v98;
    v2 = v99;
    v40 = v94;
  }

  v58 = [v40 *(v1 + 1760)];
  if (v58)
  {
    v59 = v58;
    type metadata accessor for HomeUserTaskResponse();
    v60 = sub_252E37264();

    v61 = [v40 entity];
    if (v61)
    {

      if (v60 >> 62)
      {
        v62 = sub_252E378C4();
        if (v62)
        {
          goto LABEL_101;
        }
      }

      else
      {
        v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v62)
        {
LABEL_101:
          v63 = 0;
          while (v62 != v63)
          {
            if ((v60 & 0xC000000000000001) != 0)
            {
              v64 = MEMORY[0x2530ADF00](v63, v60);
            }

            else
            {
              if (v63 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_156;
              }

              v64 = *(v60 + 8 * v63 + 32);
            }

            v65 = v64;
            if (__OFADD__(v63, 1))
            {
              goto LABEL_155;
            }

            v66 = [v64 taskOutcome];

            ++v63;
            v5 = v95;
            if (v66 == 23)
            {

              goto LABEL_135;
            }
          }
        }
      }
    }

    v1 = &off_279711000;
    v40 = v94;
  }

  v67 = [v40 *(v1 + 1760)];
  if (!v67)
  {
LABEL_139:

    return;
  }

  v68 = v67;
  type metadata accessor for HomeUserTaskResponse();
  v69 = sub_252E37264();

  v70 = [v40 entity];
  if (!v70)
  {
    goto LABEL_138;
  }

  if (v69 >> 62)
  {
    v71 = sub_252E378C4();
    if (v71)
    {
      goto LABEL_116;
    }

    goto LABEL_138;
  }

  v71 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v71)
  {
LABEL_138:

    goto LABEL_139;
  }

LABEL_116:
  v72 = 0;
  v73 = v69 & 0xC000000000000001;
  v74 = v69 & 0xFFFFFFFFFFFFFF8;
  v92 = v69;
  v75 = v69 + 32;
  while (1)
  {
    if (v73)
    {
      v76 = MEMORY[0x2530ADF00](v72, v92);
    }

    else
    {
      if (v72 >= *(v74 + 16))
      {
        goto LABEL_154;
      }

      v76 = *(v75 + 8 * v72);
    }

    v77 = v76;
    v9 = __OFADD__(v72++, 1);
    if (v9)
    {
      break;
    }

    if (qword_27F53F740 != -1)
    {
      swift_once();
    }

    v78 = qword_27F575C50;
    v79 = [v77 taskOutcome];
    if (!*(v78 + 16))
    {
      goto LABEL_117;
    }

    v80 = v79;
    sub_252E37EC4();
    MEMORY[0x2530AE390](v80);
    v81 = sub_252E37F14();
    v82 = -1 << *(v78 + 32);
    v83 = v81 & ~v82;
    if (((*(v78 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
    {
      goto LABEL_117;
    }

    v84 = ~v82;
    while (*(*(v78 + 48) + 8 * v83) != v80)
    {
      v83 = (v83 + 1) & v84;
      if (((*(v78 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
      {
        goto LABEL_117;
      }
    }

    v85 = [v77 userTask];
    if (v85)
    {
      v86 = v85;
      v87 = [v85 attribute];

      if (v87 == 67)
      {

        v4 = v98;
        v2 = v99;
        v5 = v95;
        goto LABEL_135;
      }
    }

    else
    {
LABEL_117:
    }

    if (v72 == v71)
    {

      return;
    }
  }

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
}

void sub_2529B3BE8(unint64_t a1)
{
  sub_2529B3090(a1);
  if ((v2 & 1) == 0)
  {
    return;
  }

  v67 = MEMORY[0x277D84F90];
  v62 = a1;
  if (a1 >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    if (i)
    {
      v4 = 0;
      v63 = i;
      while (1)
      {
        if ((v62 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v4, v62);
        }

        else
        {
          if (v4 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_93;
          }

          v6 = *(v62 + 32 + 8 * v4);
        }

        v7 = v6;
        if (__OFADD__(v4++, 1))
        {
          goto LABEL_92;
        }

        v9 = [v6 taskResponses];
        if (v9)
        {
          v10 = v9;
          type metadata accessor for HomeUserTaskResponse();
          v11 = sub_252E37264();

          if (v11 >> 62)
          {
            v12 = sub_252E378C4();
            v64 = v7;
            v66 = v4;
            if (v12)
            {
LABEL_16:
              v13 = 0;
              v5 = MEMORY[0x277D84F90];
              while (1)
              {
                if ((v11 & 0xC000000000000001) != 0)
                {
                  v15 = MEMORY[0x2530ADF00](v13, v11);
                }

                else
                {
                  v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v13 >= v14)
                  {
                    goto LABEL_85;
                  }

                  v15 = *(v11 + 8 * v13 + 32);
                }

                v16 = v15;
                v17 = v13 + 1;
                if (__OFADD__(v13, 1))
                {
                  break;
                }

                v18 = [v15 taskOutcome];

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v5 = sub_2529F7BD8(0, *(v5 + 2) + 1, 1, v5);
                }

                v20 = *(v5 + 2);
                v19 = *(v5 + 3);
                if (v20 >= v19 >> 1)
                {
                  v5 = sub_2529F7BD8((v19 > 1), v20 + 1, 1, v5);
                }

                *(v5 + 2) = v20 + 1;
                *&v5[8 * v20 + 32] = v18;
                ++v13;
                if (v17 == v12)
                {
                  goto LABEL_7;
                }
              }

              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              if (v14 != -1)
              {
                swift_once();
              }

              v58 = sub_252E36AD4();
              __swift_project_value_buffer(v58, qword_27F544EE0);
              sub_252E379F4();
              MEMORY[0x2530AD570](v12 - 82, 0x8000000252E6E930);
              v59 = sub_252E37D94();
              MEMORY[0x2530AD570](v59);

              MEMORY[0x2530AD570](v12 - 104, 0x8000000252E6E960);
              v60 = sub_252E37D94();
              MEMORY[0x2530AD570](v60);

              MEMORY[0x2530AD570](v12 - 106, 0x8000000252E6E980);
              v61 = sub_252E37D94();
              MEMORY[0x2530AD570](v61);

              sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, v12 - 87, 0x8000000252E6E9A0, 250);

              return;
            }
          }

          else
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v64 = v7;
            v66 = v4;
            if (v12)
            {
              goto LABEL_16;
            }
          }

          v5 = MEMORY[0x277D84F90];
LABEL_7:

          i = v63;
          v4 = v66;
        }

        else
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v21 = sub_252E36AD4();
          __swift_project_value_buffer(v21, qword_27F544D60);
          sub_252E379F4();

          v22 = [v7 description];
          v23 = sub_252E36F34();
          v25 = v24;

          MEMORY[0x2530AD570](v23, v25);

          sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E6E870, 0xD00000000000008CLL, 0x8000000252E6E8A0);

          v5 = MEMORY[0x277D84F90];
        }

        sub_25297A8C0(v5);
        if (v4 == i)
        {
          v26 = v67;
          v27 = *(v67 + 16);
          if (!v27)
          {
            goto LABEL_72;
          }

          goto LABEL_35;
        }
      }
    }

    v26 = MEMORY[0x277D84F90];
    v27 = *(MEMORY[0x277D84F90] + 16);
    if (!v27)
    {
      break;
    }

LABEL_35:
    if (qword_27F53F728 != -1)
    {
      swift_once();
    }

    v28 = 0;
    v29 = v26 + 32;
    v30 = qword_27F575C38;
    v31 = qword_27F575C38 + 56;
    v32 = MEMORY[0x277D84F90];
    do
    {
      if (v28 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_91;
      }

      if (*(v30 + 16))
      {
        v35 = *(v29 + 8 * v28);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v35);
        v36 = sub_252E37F14();
        v37 = -1 << *(v30 + 32);
        v38 = v36 & ~v37;
        if ((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
        {
          v39 = ~v37;
          while (*(*(v30 + 48) + 8 * v38) != v35)
          {
            v38 = (v38 + 1) & v39;
            if (((*(v31 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          v67 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA3E0(0, *(v32 + 16) + 1, 1);
          }

          v34 = *(v32 + 16);
          v33 = *(v32 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_2529AA3E0((v33 > 1), v34 + 1, 1);
          }

          *(v32 + 16) = v34 + 1;
          *(v32 + 8 * v34 + 32) = v35;
          v29 = v26 + 32;
        }
      }

LABEL_41:
      ++v28;
    }

    while (v28 != v27);
    v65 = *(v32 + 16);

    if (qword_27F53F730 != -1)
    {
      swift_once();
    }

    v40 = 0;
    v41 = qword_27F575C40;
    v42 = qword_27F575C40 + 56;
    v43 = MEMORY[0x277D84F90];
    while (v40 < *(v26 + 16))
    {
      if (*(v41 + 16))
      {
        v46 = *(v29 + 8 * v40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v46);
        v47 = sub_252E37F14();
        v48 = -1 << *(v41 + 32);
        v49 = v47 & ~v48;
        if ((*(v42 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
        {
          v50 = ~v48;
          while (*(*(v41 + 48) + 8 * v49) != v46)
          {
            v49 = (v49 + 1) & v50;
            if (((*(v42 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          v67 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA3E0(0, *(v43 + 16) + 1, 1);
          }

          v45 = *(v43 + 16);
          v44 = *(v43 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_2529AA3E0((v44 > 1), v45 + 1, 1);
          }

          *(v43 + 16) = v45 + 1;
          *(v43 + 8 * v45 + 32) = v46;
          v29 = v26 + 32;
        }
      }

LABEL_57:
      if (++v40 == v27)
      {

        v51 = *(v43 + 16);

        if (v65 == v27)
        {
          if (qword_27F53F568 != -1)
          {
            swift_once();
          }

          v52 = sub_252E36AD4();
          __swift_project_value_buffer(v52, qword_27F544EE0);
          sub_252CC3D90(0xD000000000000029, 0x8000000252E6EA60, 0xD00000000000007BLL, 0x8000000252E6E7F0);
        }

        else
        {
          v12 = 0xD00000000000007BLL;
          if (v65 && v51)
          {
            if (qword_27F53F568 != -1)
            {
              swift_once();
            }

            v56 = sub_252E36AD4();
            __swift_project_value_buffer(v56, qword_27F544EE0);
            sub_252CC4050(0xD000000000000053, 0x8000000252E6EA00, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000024, 0x8000000252E6E9A0, 244);
          }

          else
          {
            v14 = qword_27F53F568;
            if (v51 != v27)
            {
              goto LABEL_86;
            }

            if (qword_27F53F568 != -1)
            {
              swift_once();
            }

            v57 = sub_252E36AD4();
            __swift_project_value_buffer(v57, qword_27F544EE0);
            sub_252CC4050(0xD000000000000029, 0x8000000252E6E9D0, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000024, 0x8000000252E6E9A0, 247);
          }
        }

        return;
      }
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

LABEL_72:

  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v53 = sub_252E36AD4();
  __swift_project_value_buffer(v53, qword_27F544EE0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000047, 0x8000000252E6EA90);
  v54 = type metadata accessor for HomeEntityResponse();
  v55 = MEMORY[0x2530AD730](v62, v54);
  MEMORY[0x2530AD570](v55);

  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000024, 0x8000000252E6E9A0, 228);
}

uint64_t sub_2529B46E8(void *a1, uint64_t a2)
{
  v4 = [a1 filters];
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    if (!(v7 >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v8 = sub_252E378C4();
LABEL_4:

  if (v8)
  {
    v9 = type metadata accessor for HomeStore(0);
    v10 = static HomeStore.shared.getter(v9);
    v11 = [a1 filters];
    if (v11)
    {
      v12 = v11;
      type metadata accessor for HomeFilter();
      v13 = sub_252E37264();
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v14 = HomeStore.scenes(matching:)(v13);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v14 >> 62)
      {
        if (sub_252E378C4())
        {
LABEL_13:
          if ((v14 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](0, v14);
          }

          else
          {
            if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_59:
              swift_once();
LABEL_18:
              v28 = sub_252E36AD4();
              __swift_project_value_buffer(v28, qword_27F544EE0);
              sub_252CC4050(0x20676E697373694DLL, 0xEF656D6F6374756FLL, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000002ALL, 0x8000000252E6EDA0, 324);
              v29 = [a1 userTask];
              v30 = objc_allocWithZone(v13);
              v31 = sub_252E36F04();
              v32 = [v30 v2[226]];

              v33 = v32;
              [v33 setTaskOutcome_];
              [v33 setUserTask_];

              type metadata accessor for MutableHomeUserTaskResponse();
              v34 = swift_allocObject();
              *(v34 + 16) = 0;
              v35 = v33;
              v36 = [v35 userTask];
              if (!v36)
              {
                goto LABEL_34;
              }

LABEL_33:
              v55 = v36;
              type metadata accessor for MutableHomeUserTask();
              swift_allocObject();
              *(v34 + 16) = sub_252D6CA80(v55);
              goto LABEL_34;
            }
          }

          sub_252929F10(v14, 0);
          type metadata accessor for HomeEntity.Builder();
          swift_allocObject();
          v18.n128_f64[0] = HomeEntity.Builder.init()();
          v20 = (*(*v19 + 448))(v18);

          v21 = sub_252B302FC();

          v22 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
          v23 = v21;
          v24 = sub_252E36F04();
          v2 = &off_279711000;
          v25 = [v22 initWithIdentifier:0 displayString:v24];

          v26 = v25;
          [v26 setEntity_];
          v13 = type metadata accessor for HomeUserTaskResponse();
          v16 = MEMORY[0x277D84F90];
          v27 = sub_252E37254();
          [v26 setTaskResponses_];

          type metadata accessor for MutableHomeEntityResponse();
          swift_allocObject();
          v17 = sub_252D6D668(v26);

          sub_252E36744();

          if (v108 > 0xFDu)
          {
            if (qword_27F53F568 == -1)
            {
              goto LABEL_18;
            }

            goto LABEL_59;
          }

          if (v108 >> 6)
          {
            if (v108 >> 6 != 1)
            {
              v69 = [a1 userTask];
              v70 = objc_allocWithZone(v13);
              v71 = sub_252E36F04();
              v72 = [v70 initWithIdentifier:0 displayString:v71];

              v73 = v72;
              [v73 setTaskOutcome_];
              [v73 setUserTask_];

              type metadata accessor for MutableHomeUserTaskResponse();
              v74 = swift_allocObject();
              *(v74 + 16) = 0;
              v75 = [v73 userTask];
              if (v75)
              {
                v76 = v75;
                type metadata accessor for MutableHomeUserTask();
                swift_allocObject();
                *(v74 + 16) = sub_252D6CA80(v76);
              }

              v77 = [v73 taskOutcome];

              *(v74 + 24) = v77;
              v78 = swift_beginAccess();
              MEMORY[0x2530AD700](v78);
              if (*((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_252E372A4();
              }

              sub_252E372D4();
              swift_endAccess();
              if (qword_27F53F568 != -1)
              {
                swift_once();
              }

              v79 = sub_252E36AD4();
              __swift_project_value_buffer(v79, qword_27F544EE0);
              v105 = 0;
              v106 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E6EDD0);
              sub_252E37AE4();
              sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0);

              goto LABEL_36;
            }

            if ((v108 & 1) == 0)
            {
              if (qword_27F53F568 != -1)
              {
                swift_once();
              }

              v37 = sub_252E36AD4();
              __swift_project_value_buffer(v37, qword_27F544EE0);
              v105 = 0;
              v106 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E6EC30);
              v38 = sub_252E37D94();
              MEMORY[0x2530AD570](v38);

              sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000002ALL, 0x8000000252E6EDA0, 315);

              v39 = [a1 userTask];
              v40 = objc_allocWithZone(v13);
              v41 = sub_252E36F04();
              v42 = [v40 initWithIdentifier:0 displayString:v41];

              v43 = v42;
              [v43 setTaskOutcome_];
              [v43 setUserTask_];

              type metadata accessor for MutableHomeUserTaskResponse();
              v44 = swift_allocObject();
              *(v44 + 16) = 0;
              v35 = v43;
              v45 = [v35 userTask];
              if (v45)
              {
                v46 = v45;
                type metadata accessor for MutableHomeUserTask();
                swift_allocObject();
                *(v44 + 16) = sub_252D6CA80(v46);
              }

              v47 = [v35 taskOutcome];

              *(v44 + 24) = v47;
              v48 = swift_beginAccess();
              MEMORY[0x2530AD700](v48);
              v16 = MEMORY[0x277D84F90];
              if (*((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_35;
              }

LABEL_28:
              sub_252E372A4();
LABEL_35:
              sub_252E372D4();
              swift_endAccess();

LABEL_36:
              v58 = sub_252D6C15C();
              type metadata accessor for ControlHomeIntentResponse.Builder();
              v59 = swift_allocObject();
              *(v59 + 16) = 4;
              *(v59 + 24) = v16;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v60 = swift_allocObject();
              *(v60 + 16) = xmmword_252E3C130;
              *(v60 + 32) = v58;
              v61 = v58;
              sub_2529B3BE8(v60);
              v63 = v62;

              *(v59 + 16) = v63;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_252E3C290;
              *(inited + 32) = v61;
              v65 = v61;
              v66 = sub_25297D0C0(inited);

              swift_setDeallocating();
              v67 = sub_25293847C(inited + 32, &qword_27F540CC8, &unk_252E3F8F0);
              v68 = (*(*v66 + 176))(v67);

              goto LABEL_56;
            }
          }

          else if (v107 != 23)
          {
            if (qword_27F53F568 != -1)
            {
              swift_once();
            }

            v80 = sub_252E36AD4();
            __swift_project_value_buffer(v80, qword_27F544EE0);
            v106 = 0xE000000000000000;
            MEMORY[0x2530AD570](0x6F72726520746F47, 0xEA00000000002072);
            LOBYTE(v104) = v107;
            sub_252E37AE4();
            sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000002ALL, 0x8000000252E6EDA0, 307);

            v105 = v107;
            v81 = sub_2529B2F04(&v105);
            if (v82)
            {
              v83 = 7;
            }

            else
            {
              v83 = v81;
            }

            v84 = [a1 userTask];
            v85 = objc_allocWithZone(v13);
            v86 = sub_252E36F04();
            v87 = [v85 initWithIdentifier:0 displayString:v86];

            v88 = v87;
            [v88 setTaskOutcome_];
            [v88 setUserTask_];

            type metadata accessor for MutableHomeUserTaskResponse();
            v34 = swift_allocObject();
            *(v34 + 16) = 0;
            v35 = v88;
            v36 = [v35 userTask];
            if (v36)
            {
              goto LABEL_33;
            }

            goto LABEL_34;
          }

          if (qword_27F53F568 != -1)
          {
            swift_once();
          }

          v49 = sub_252E36AD4();
          __swift_project_value_buffer(v49, qword_27F544EE0);
          sub_252CC4050(0xD000000000000012, 0x8000000252E6EC90, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000002ALL, 0x8000000252E6EDA0, 320);
          v50 = [a1 userTask];
          v51 = objc_allocWithZone(v13);
          v52 = sub_252E36F04();
          v53 = [v51 initWithIdentifier:0 displayString:v52];

          v54 = v53;
          [v54 setTaskOutcome_];
          [v54 setUserTask_];

          type metadata accessor for MutableHomeUserTaskResponse();
          v34 = swift_allocObject();
          *(v34 + 16) = 0;
          v35 = v54;
          v36 = [v35 userTask];
          if (v36)
          {
            goto LABEL_33;
          }

LABEL_34:
          v56 = [v35 taskOutcome];

          *(v34 + 24) = v56;
          v57 = swift_beginAccess();
          MEMORY[0x2530AD700](v57);
          if (*((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v17 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_35;
          }

          goto LABEL_28;
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }
    }

    sub_252929F10(v14, v16 & 1);
  }

  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v89 = sub_252E36AD4();
  __swift_project_value_buffer(v89, qword_27F544EE0);
  sub_252CC4050(0xD000000000000027, 0x8000000252E6ED70, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000002ALL, 0x8000000252E6EDA0, 288);
  type metadata accessor for ControlHomeIntentResponse.Builder();
  v90 = swift_allocObject();
  *(v90 + 16) = 102;
  *(v90 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
  v91 = swift_initStackObject();
  *(v91 + 16) = xmmword_252E3C290;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v92.n128_f64[0] = HomeEntity.Builder.init()();
  v94 = (*(*v93 + 448))(v92);

  v95 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
  v96 = v94;
  v97 = sub_252E36F04();
  v98 = [v95 initWithIdentifier:0 displayString:v97];

  v99 = v98;
  [v99 setEntity_];
  type metadata accessor for HomeUserTaskResponse();
  v100 = sub_252E37254();
  [v99 setTaskResponses_];

  *(v91 + 32) = v99;
  v101 = sub_25297D0C0(v91);

  swift_setDeallocating();
  v102 = sub_25293847C(v91 + 32, &qword_27F540CC8, &unk_252E3F8F0);
  v68 = (*(*v101 + 176))(v102);
LABEL_56:

  return v68;
}

uint64_t sub_2529B5794(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_27F53F230 != -1)
  {
    swift_once();
  }

  v2 = off_27F540EA0;
  if (*(off_27F540EA0 + 2))
  {
    v3 = sub_252A45658(v1);
    if (v4)
    {
      return *(v2[7] + 8 * v3);
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003ELL, 0x8000000252E6ED10);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000001DLL, 0x8000000252E6ED50, 478);

  return 0;
}

void sub_2529B5920(unint64_t a1, void *a2, unint64_t a3, uint64_t a4, char a5)
{
  v9 = a1;
  v197 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_143;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v10)
  {
    v11 = 0;
    v186 = v9 & 0xC000000000000001;
    v171 = v9 + 32;
    v172 = v9 & 0xFFFFFFFFFFFFFF8;
    v184 = "Mapped deviceResults to: ";
    v169 = v10;
    v170 = MEMORY[0x277D84F90];
    v163 = v9;
    while (1)
    {
      if (v186)
      {
        v12 = MEMORY[0x2530ADF00](v11, v9);
        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
          goto LABEL_118;
        }
      }

      else
      {
        if (v11 >= *(v172 + 16))
        {
          __break(1u);
          goto LABEL_140;
        }

        v12 = *(v171 + 8 * v11);

        v13 = __OFADD__(v11++, 1);
        if (v13)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }
      }

      sub_252E36744();

      v8 = v196;
      if ((~v196 & 0xFF02) == 0)
      {
        goto LABEL_16;
      }

      v5 = v193;
      v16 = v194;
      v7 = v195;
      v17 = (v196 >> 7) & 2 | (v196 >> 1) & 1;
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          if (v193)
          {
LABEL_40:
            sub_2529B79F8(v192, v193, v194, v195, v196);
LABEL_16:
            if (qword_27F53F568 != -1)
            {
              swift_once();
            }

            v14 = sub_252E36AD4();
            v5 = __swift_project_value_buffer(v14, qword_27F544EE0);
            v188 = 0;
            v189 = 0xE000000000000000;
            sub_252E379F4();

            v190 = 0xD000000000000019;
            v191 = 0x8000000252E6EBD0;

            sub_252E36744();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EB0, &qword_252E3F4E8);
            v15 = sub_252E36F94();
            MEMORY[0x2530AD570](v15);

            v6 = v191;
            sub_252CC4050(v190, v191, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000032, 0x8000000252E6EBF0, 185);

LABEL_19:

            goto LABEL_8;
          }

          v109 = v192;
          v176 = v195;
          v181 = v193;
          if (qword_27F53F568 != -1)
          {
            swift_once();
          }

          v110 = sub_252E36AD4();
          __swift_project_value_buffer(v110, qword_27F544EE0);
          v188 = 0;
          v189 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000037, 0x8000000252E6EC30);
          v7 = v109;
          v111 = sub_252E37D94();
          MEMORY[0x2530AD570](v111);

          sub_252CC4050(v188, v189, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000032, 0x8000000252E6EBF0, 177);

          v112 = [a2 taskType];
          v113 = [a2 attribute];
          v114 = objc_allocWithZone(type metadata accessor for HomeUserTask());
          v115 = sub_252E36F04();
          v116 = [v114 initWithIdentifier:0 displayString:v115];

          v117 = v116;
          [v117 setTaskType_];
          [v117 setAttribute_];
          [v117 setValue_];

          type metadata accessor for HomeUserTaskResponse.Builder();
          swift_allocObject();
          v118 = *(*HomeUserTaskResponse.Builder.init()() + 160);
          v5 = v117;
          v119 = v118(v117);

          v120 = (*(*v119 + 152))(7);

          v6 = (*(*v120 + 176))(v121);

          MEMORY[0x2530AD700](v122);
          if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v106 = v7;
          v107 = v181;
          v108 = v16;
          goto LABEL_91;
        }

        if (v192 == 10)
        {
          goto LABEL_40;
        }

        v19 = v192;
        v178 = v193;
        v173 = v194;
        v166 = v196;
        if (qword_27F53F568 != -1)
        {
          swift_once();
        }

        v20 = sub_252E36AD4();
        __swift_project_value_buffer(v20, qword_27F544EE0);
        v188 = 0;
        v189 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E6EC70);
        v21 = v19;
        sub_252E37AE4();
        sub_252CC4050(v188, v189, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000032, 0x8000000252E6EBF0, 170);

        LOBYTE(v188) = v19;
        v22 = sub_2529B5794(&v188);
        if (v23)
        {
          v5 = 7;
        }

        else
        {
          v5 = v22;
        }

        type metadata accessor for HomeUserTaskResponse.Builder();
        inited = swift_initStackObject();
        *(inited + 16) = 1;
        v25 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v26 = sub_252E36F04();
        v8 = &off_279711000;
        v27 = [v25 initWithIdentifier:0 displayString:v26];

        v28 = v27;
        [v28 setTaskType_];
        [v28 setAttribute_];
        [v28 setValue_];

        *(inited + 24) = a2;
        v29 = a2;

        *(inited + 16) = v5;
        v30 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
        v31 = v29;
        v32 = sub_252E36F04();
        v33 = [v30 initWithIdentifier:0 displayString:v32];

        v6 = v33;
        [v6 setTaskOutcome_];
        [v6 setUserTask_];

        MEMORY[0x2530AD700]();
        if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v5 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        sub_2529B79F8(v21, v178, v173, v7, v166);
      }

      else
      {
        if (!v17)
        {
          v198[0] = v192;
          v198[1] = v193;
          v198[2] = v194;
          v198[3] = v195;
          v199 = v196;
          v6 = v192;

          sub_252E36744();

          if (v188 == 60)
          {
            v18 = v6;
          }

          else
          {
            v165 = v6;
            v162 = v188;
            v51 = sub_252BF8FB8(v198, v188, a3);
            if (v51)
            {
              v52 = v51[2];
              if (!v52)
              {

                sub_2529B79F8(v6, v5, v16, v7, v8);

                v9 = v163;
                goto LABEL_8;
              }

              v177 = v7;
              v180 = v5;
              v175 = v16;
              v168 = v8;
              v160 = v51;
              v8 = (v51 + 5);
              v7 = v162;
              while (2)
              {
                v53 = *(v8 - 8);
                v54 = *v8;
                v55 = a4;
                if (a5)
                {
                  v55 = [a2 taskType];
                  if ((v55 & 0xFFFFFFFFFFFFFFFELL) == 4)
                  {
                    if (qword_27F53F3C0 != -1)
                    {
                      swift_once();
                    }

                    if (*(off_27F543EA8 + 2) && (, sub_252A456C4(v7), v57 = v56, , (v57 & 1) != 0))
                    {
                      v55 = 5;
                    }

                    else
                    {
                      if (qword_27F53F3C8 != -1)
                      {
                        swift_once();
                      }

                      if (*(off_27F543EB0 + 2))
                      {

                        sub_252A456C4(v7);
                        v59 = v58;

                        if (v59)
                        {
                          v55 = 4;
                        }
                      }
                    }
                  }
                }

                v60 = type metadata accessor for HomeUserTask();
                v61 = objc_allocWithZone(v60);
                v5 = v54;
                v62 = sub_252E36F04();
                v63 = [v61 initWithIdentifier:0 displayString:v62];

                v64 = v63;
                [v64 setTaskType_];
                [v64 setAttribute_];
                [v64 setValue_];

                if (v53 == 67)
                {
                  v65 = [v5 cleaningJob];
                  if (v65)
                  {
                    v66 = v65;
                    v67 = [a2 value];
                    if (v67)
                    {
                      v68 = v67;
                      v69 = [v67 cleaningJob];

                      if (v69)
                      {
                        v70 = [v69 targetAreas];

                        if (v70)
                        {
                          type metadata accessor for HomeAttributeTargetArea();
                          v71 = sub_252E37264();

                          if (v71 >> 62)
                          {
                            v72 = sub_252E378C4();
                          }

                          else
                          {
                            v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          }

                          if (v72)
                          {
                            v7 = v162;
                            goto LABEL_70;
                          }

                          v73 = [v66 targetAreas];
                          v7 = v162;
                          if (v73)
                          {
                            v74 = v73;
                            v75 = sub_252E37264();

                            if (!(v75 >> 62))
                            {
                              goto LABEL_67;
                            }

LABEL_76:
                            v76 = sub_252E378C4();
                          }

                          else
                          {
                            v75 = MEMORY[0x277D84F90];
                            if (MEMORY[0x277D84F90] >> 62)
                            {
                              goto LABEL_76;
                            }

LABEL_67:
                            v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          }

                          if (v76)
                          {
                            v77 = v66;
                            [v77 setTargetAreas_];
                            v78 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
                            v79 = sub_252E36F04();
                            v80 = [v78 initWithIdentifier:0 displayString:v79];

                            v66 = v80;
                            [v66 setType_];
                            [v66 setCleaningJob_];

                            [v64 setValue_];
                          }
                        }
                      }
                    }

LABEL_70:
                  }
                }

                v81 = objc_allocWithZone(v60);
                v82 = sub_252E36F04();
                v83 = [v81 initWithIdentifier:0 displayString:v82];

                v84 = v83;
                [v84 setTaskType_];
                [v84 setAttribute_];
                [v84 setValue_];

                v85 = v64;
                v86 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
                v6 = v85;
                v87 = sub_252E36F04();
                v88 = [v86 initWithIdentifier:0 displayString:v87];

                v89 = v88;
                [v89 setTaskOutcome_];
                [v89 setUserTask_];

                MEMORY[0x2530AD700]();
                if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_252E372A4();
                }

                sub_252E372D4();

                v8 += 16;
                if (!--v52)
                {
                  v170 = v197;

                  sub_2529B79F8(v165, v180, v175, v177, v168);

                  goto LABEL_92;
                }

                continue;
              }
            }

            v18 = v6;
          }

          sub_2529B79F8(v18, v5, v16, v7, v8);
          goto LABEL_19;
        }

        v174 = v194;
        v176 = v195;
        v179 = v193;
        if (v192 != 23)
        {
          v90 = v192;
          if (qword_27F53F568 != -1)
          {
            swift_once();
          }

          v91 = sub_252E36AD4();
          __swift_project_value_buffer(v91, qword_27F544EE0);
          v188 = 0;
          v189 = 0xE000000000000000;
          MEMORY[0x2530AD570](0x6F72726520746F47, 0xEA00000000002072);
          v7 = v90;
          sub_252E37AE4();
          sub_252CC4050(v188, v189, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000032, 0x8000000252E6EBF0, 161);

          v92 = [a2 taskType];
          v93 = [a2 attribute];
          v94 = objc_allocWithZone(type metadata accessor for HomeUserTask());
          v95 = sub_252E36F04();
          v96 = [v94 initWithIdentifier:0 displayString:v95];

          v97 = v96;
          [v97 setTaskType_];
          [v97 setAttribute_];
          [v97 setValue_];

          LOBYTE(v188) = v7;
          v98 = sub_2529B2F04(&v188);
          if (v99)
          {
            v100 = 7;
          }

          else
          {
            v100 = v98;
          }

          type metadata accessor for HomeUserTaskResponse.Builder();
          swift_allocObject();
          v101 = *(*HomeUserTaskResponse.Builder.init()() + 160);
          v5 = v97;
          v102 = v101(v97);

          v103 = (*(*v102 + 152))(v100);

          v6 = (*(*v103 + 176))(v104);

          MEMORY[0x2530AD700](v105);
          if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v106 = v7;
          v107 = v179;
          v108 = v174;
LABEL_91:
          sub_2529B79F8(v106, v107, v108, v176, v8);

          v170 = v197;
LABEL_92:
          v9 = v163;
          goto LABEL_7;
        }

        v164 = v192;
        v167 = v196;
        if (qword_27F53F568 != -1)
        {
          swift_once();
        }

        v34 = sub_252E36AD4();
        __swift_project_value_buffer(v34, qword_27F544EE0);
        sub_252CC4050(0xD000000000000012, 0x8000000252E6EC90, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000032, 0x8000000252E6EBF0, 181);
        v35 = [a2 taskType];
        v36 = [a2 attribute];
        v37 = type metadata accessor for HomeUserTask();
        v38 = objc_allocWithZone(v37);
        v39 = sub_252E36F04();
        v8 = &off_279711000;
        v40 = [v38 initWithIdentifier:0 displayString:v39];

        v41 = v40;
        [v41 setTaskType_];
        v7 = &off_279711000;
        [v41 setAttribute_];
        [v41 setValue_];

        type metadata accessor for HomeUserTaskResponse.Builder();
        v5 = swift_initStackObject();
        *(v5 + 16) = 1;
        v42 = objc_allocWithZone(v37);
        v43 = sub_252E36F04();
        v44 = [v42 initWithIdentifier:0 displayString:v43];

        v45 = v44;
        [v45 setTaskType_];
        [v45 setAttribute_];
        [v45 setValue_];

        *(v5 + 24) = v41;
        v46 = v41;

        *(v5 + 16) = 7;
        v47 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
        v6 = v46;
        v48 = sub_252E36F04();
        v49 = [v47 initWithIdentifier:0 displayString:v48];

        v50 = v49;
        [v50 setTaskOutcome_];
        [v50 setUserTask_];

        MEMORY[0x2530AD700]();
        if (*((v197 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v5 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        sub_2529B79F8(v164, v179, v174, v176, v167);
      }

      v170 = v197;
LABEL_7:
      v10 = v169;
LABEL_8:
      if (v11 == v10)
      {
        goto LABEL_97;
      }
    }
  }

  v170 = MEMORY[0x277D84F90];
LABEL_97:
  if ([a2 taskType] != 4)
  {
    return;
  }

  v11 = v170;
  if ([a2 attribute] != 5)
  {
    return;
  }

  v5 = v170 >> 62;
  if (v170 >> 62)
  {
    v123 = sub_252E378C4();
    if (!v123)
    {
      return;
    }
  }

  else
  {
    v123 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v123)
    {
      return;
    }
  }

  v186 = v170 >> 62;
  v6 = 0;
  v8 = v170 & 0xC000000000000001;
  v12 = v170 & 0xFFFFFFFFFFFFFF8;
  v7 = &off_279711000;
  while (1)
  {
    if (v8)
    {
      v124 = MEMORY[0x2530ADF00](v6, v170);
    }

    else
    {
      if (v6 >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_142;
      }

      v124 = *&v170[8 * v6 + 32];
    }

    v5 = v124;
    v125 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      v10 = sub_252E378C4();
      goto LABEL_3;
    }

    v126 = [v124 userTask];
    if (v126)
    {
      v10 = v126;
      v9 = [v126 attribute];

      if (v9 == 5)
      {
        break;
      }
    }

    ++v6;
    if (v125 == v123)
    {
      return;
    }
  }

  v127 = [v5 userTask];
  if (!v127 || (v128 = v127, v129 = [v127 value], v128, !v129) || (v130 = objc_msgSend(v129, sel_stringValue), v129, !v130))
  {

    return;
  }

  v184 = sub_252E36F34();
  a2 = v131;

  if (!v186)
  {
    v132 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_120;
  }

LABEL_119:
  v132 = sub_252E378C4();
LABEL_120:
  if (!v132)
  {
LABEL_138:

    return;
  }

  v133 = 0;
  while (2)
  {
    if (v8)
    {
      v134 = MEMORY[0x2530ADF00](v133, v11);
    }

    else
    {
      if (v133 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_169;
      }

      v134 = *&v11[8 * v133 + 32];
    }

    v6 = v134;
    v135 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
      __break(1u);
      goto LABEL_165;
    }

    v136 = [v134 *(v7 + 1712)];
    if (!v136 || (v10 = v7, v137 = v136, v138 = [v136 attribute], v137, v7 = v10, v139 = v138 == 2, v11 = v170, !v139))
    {

      ++v133;
      if (v135 == v132)
      {
        goto LABEL_138;
      }

      continue;
    }

    break;
  }

  v140 = [v6 v10 + 198];
  if (!v140 || (v141 = &off_279711000, v142 = v140, v143 = [v140 value], v142, !v143) || (v144 = objc_msgSend(v143, sel_type), v143, v144 != 4) || (v145 = objc_msgSend(v6, v10 + 198)) == 0 || (v146 = v145, v147 = objc_msgSend(v145, sel_value), v146, !v147))
  {
LABEL_140:

    return;
  }

  [v147 integerValue];

  v192 = MEMORY[0x277D84F90];
  if (v186)
  {
    v148 = sub_252E378C4();
  }

  else
  {
    v148 = *(v12 + 16);
  }

  if (!v148)
  {
LABEL_157:

    sub_252C5C088(v184, a2);
    v156 = v155;
    v157 = [v5 v10 + 198];
    if (!v157)
    {
      goto LABEL_167;
    }

    v158 = v157;
    v10 = [v157 (v141 + 376)];

    if (!v10)
    {
      goto LABEL_167;
    }

    if (v156)
    {
      v159 = 0;
LABEL_166:
      [v10 setStringValue_];

LABEL_167:
      return;
    }

LABEL_165:
    v192 = 0;
    v193 = 0xE000000000000000;
    MEMORY[0x2530AD570](977425224, 0xE400000000000000);
    sub_252E37374();
    MEMORY[0x2530AD570](44, 0xE100000000000000);
    sub_252E37374();
    MEMORY[0x2530AD570](44, 0xE100000000000000);
    sub_252E37374();
    MEMORY[0x2530AD570](59, 0xE100000000000000);
    v159 = sub_252E36F04();

    goto LABEL_166;
  }

  v149 = 0;
  while (1)
  {
    if (v8)
    {
      v150 = MEMORY[0x2530ADF00](v149, v170);
    }

    else
    {
      if (v149 >= *(v12 + 16))
      {
        goto LABEL_170;
      }

      v150 = *&v170[8 * v149 + 32];
    }

    v151 = v149 + 1;
    if (__OFADD__(v149, 1))
    {
      break;
    }

    v187 = v150;
    v152 = [v150 v10 + 198];
    if (v152 && (v153 = v152, v154 = [v152 attribute], v153, v154 == 2))
    {
    }

    else
    {
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    ++v149;
    v141 = 0x1FAF97000;
    if (v151 == v148)
    {
      goto LABEL_157;
    }
  }

LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
}

unint64_t sub_2529B72F0(unint64_t result, void *a2, uint64_t a3, char a4)
{
  v4 = result;
  v26 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    result = sub_252E378C4();
    v5 = result;
  }

  else
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  if (v5 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v7, v4);
      }

      else
      {
      }

      sub_252E36744();

      sub_252E36744();

      if (v25)
      {
        v18 = v25;
      }

      else
      {
        v18 = v6;
      }

      if (v25)
      {
        v9 = v6;

        v10 = sub_252A966BC();

        v11 = v10;
        sub_2529B5920(v18, a2, v25, a3, a4 & 1);

        v12 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
        v13 = sub_252E36F04();
        v14 = [v12 initWithIdentifier:0 displayString:v13];

        v15 = v14;
        [v15 setEntity_];
        type metadata accessor for HomeUserTaskResponse();
        v16 = sub_252E37254();

        [v15 setTaskResponses_];

        v17 = v15;
        MEMORY[0x2530AD700]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();

        v8 = v26;
        v6 = v9;
      }

      else
      {

        if (qword_27F53F568 != -1)
        {
          swift_once();
        }

        v19 = sub_252E36AD4();
        __swift_project_value_buffer(v19, qword_27F544EE0);
        v25 = 0;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E6EB40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EA8, &unk_252E491B0);
        v20 = sub_252E36F94();
        MEMORY[0x2530AD570](v20);

        MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E6EB80);
        v21 = sub_252C43000();
        MEMORY[0x2530AD570](v21);

        sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD00000000000002CLL, 0x8000000252E6EBA0, 103);
      }

      ++v7;
    }

    while (v5 != v7);
    return v8;
  }

  __break(1u);
  return result;
}

void *sub_2529B76F8(unint64_t a1)
{
  sub_2529B3BE8(a1);
  v3 = v2;
  type metadata accessor for ControlHomeIntentResponse.Builder();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(v4 + 16) = 4;
  *(v4 + 24) = v5;
  v6 = sub_252B4EF24(a1);
  v7 = sub_25297D0C0(v6);

  v8 = (*(*v7 + 152))(v3);

  v10 = (*(*v8 + 176))(v9);

  if (v3 == 105)
  {
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544EE0);
    v12 = sub_252E36AC4();
    v13 = sub_252E374C4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_252917000, v12, v13, "Setting requiresAuthentication to true. It will be handled by SiriKit", v14, 2u);
      MEMORY[0x2530AED00](v14, -1, -1);
    }

    [v10 _setRequiresAuthentication_];
  }

  return v10;
}

void *sub_2529B78B0(unint64_t a1, void *a2, uint64_t a3, char a4)
{
  v4 = sub_2529B72F0(a1, a2, a3, a4 & 1);
  v5 = sub_2529B76F8(v4);

  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544EE0);
  sub_252E379F4();

  v7 = [v5 description];
  v8 = sub_252E36F34();
  v10 = v9;

  MEMORY[0x2530AD570](v8, v10);

  sub_252CC3D90(0xD000000000000019, 0x8000000252E6E7D0, 0xD00000000000007BLL, 0x8000000252E6E7F0);

  return v5;
}

void sub_2529B79F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((~a5 & 0xFF02) != 0)
  {
    sub_2529B7A10(result, a2, a3, a4, a5, BYTE1(a5) & 1);
  }
}

void sub_2529B7A10(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, char a6)
{
  if (a6)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (!(v6 & 0xFFFFFFFE | (a5 >> 1) & 1))
  {
    sub_2529B7A2C(result, a2, a3, a4, a5);
  }
}

void sub_2529B7A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0xFC) == 0xA4)
  {
  }
}

uint64_t sub_2529B7A78(void *a1)
{
  if (sub_252C4D664(5))
  {
    v2 = type metadata accessor for HomeStore(0);
    v3 = static HomeStore.shared.getter(v2);
    v4 = [a1 filters];
    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = v4;
      type metadata accessor for HomeFilter();
      v7 = sub_252E37264();
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v8 = HomeStore.scenes(matching:)(v7);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v8 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_8;
        }
      }

      else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        if ((v8 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](0, v8);
          goto LABEL_11;
        }

        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

LABEL_11:
          sub_252929F10(v8, 0);
          type metadata accessor for HomeEntityResponse.Builder();
          v12 = swift_allocObject();
          type metadata accessor for HomeEntity.Builder();
          swift_allocObject();
          v13.n128_f64[0] = HomeEntity.Builder.init()();
          v15 = (*(*v14 + 448))(v13);

          *(v12 + 16) = v15;
          *(v12 + 24) = v5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540ED8, qword_252E4E970);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_252E3C290;
          v17 = [a1 userTask];
          v18 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
          v19 = sub_252E36F04();
          v20 = [v18 initWithIdentifier:0 displayString:v19];

          v21 = v20;
          [v21 setTaskOutcome_];
          [v21 setUserTask_];

          *(inited + 32) = v21;
          v22 = sub_25297D0C0(inited);

          swift_setDeallocating();
          sub_25293847C(inited + 32, &qword_27F540EE0, &qword_252E4D870);
          v23 = sub_252B302FC();
          v24 = (*(*v22 + 168))();

          v25 = (*(*v24 + 192))();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_252E3C130;
          *(v26 + 32) = v25;

          return v26;
        }

        __break(1u);
        goto LABEL_39;
      }
    }

    sub_252929F10(v8, v10 & 1);
  }

  v28 = type metadata accessor for HomeStore(0);
  v29 = static HomeStore.shared.getter(v28);
  v30 = v29[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v30 != 2 && (v30 & 1) == 0 || (v31 = [a1 filters]) == 0)
  {

LABEL_35:
    type metadata accessor for HomeEntityResponse.Builder();
    v55 = swift_allocObject();
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v56.n128_f64[0] = HomeEntity.Builder.init()();
    v58 = (*(*v57 + 448))(v56);

    v59 = MEMORY[0x277D84F90];
    *(v55 + 16) = v58;
    *(v55 + 24) = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540ED8, qword_252E4E970);
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_252E3C290;
    v61 = [a1 userTask];
    v62 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
    v63 = sub_252E36F04();
    v64 = [v62 initWithIdentifier:0 displayString:v63];

    v65 = v64;
    [v65 setTaskOutcome_];
    [v65 setUserTask_];

    *(v60 + 32) = v65;
    v66 = sub_25297D0C0(v60);

    swift_setDeallocating();
    v67 = sub_25293847C(v60 + 32, &qword_27F540EE0, &qword_252E4D870);
    v68 = (*(*v66 + 192))(v67);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    result = swift_allocObject();
    *(result + 16) = xmmword_252E3C130;
    *(result + 32) = v68;
    return result;
  }

  v32 = v31;
  type metadata accessor for HomeFilter();
  v33 = sub_252E37264();

  v34 = [a1 userTask];
  v11 = HomeStore.services(matching:supporting:)(v33, v34);
  v36 = v35;

  if (v36)
  {
    v37 = v11;
    v38 = 1;
LABEL_34:
    sub_252929F10(v37, v38);
    goto LABEL_35;
  }

  if (v11 >> 62)
  {
    if (sub_252E378C4())
    {
      v69 = a1;
      v54 = sub_252E378C4();
      if (!v54)
      {
LABEL_39:
        sub_252929F10(v11, 0);
        return MEMORY[0x277D84F90];
      }

      v39 = v54;
      v70 = MEMORY[0x277D84F90];
      sub_252E37AB4();
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

LABEL_33:
    v37 = v11;
    v38 = 0;
    goto LABEL_34;
  }

  v39 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
    goto LABEL_33;
  }

  v69 = a1;
  v70 = MEMORY[0x277D84F90];
  sub_252E37AB4();
LABEL_23:
  v40 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v40, v11);
    }

    else
    {
    }

    ++v40;
    type metadata accessor for HomeEntityResponse.Builder();
    v41 = swift_allocObject();
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v42.n128_f64[0] = HomeEntity.Builder.init()();
    v44 = (*(*v43 + 448))(v42);

    *(v41 + 16) = v44;
    *(v41 + 24) = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540ED8, qword_252E4E970);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_252E3C290;
    v46 = [v69 userTask];
    v47 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
    v48 = sub_252E36F04();
    v49 = [v47 initWithIdentifier:0 displayString:v48];

    v50 = v49;
    [v50 setTaskOutcome_];
    [v50 setUserTask_];

    *(v45 + 32) = v50;
    v51 = sub_25297D0C0(v45);

    swift_setDeallocating();
    sub_25293847C(v45 + 32, &qword_27F540EE0, &qword_252E4D870);
    v52 = sub_252CDB028();
    v53 = (*(*v51 + 168))();

    (*(*v53 + 192))();

    sub_252E37A94();
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
  }

  while (v39 != v40);
  sub_252929F10(v11, 0);
  return v70;
}

uint64_t sub_2529B83C8(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v104 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EB8, &qword_252E3F4F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v104 - v8;
  v10 = sub_252E36024();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114[0] = a1;
  v14 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  v16 = swift_dynamicCast();
  v17 = *(v11 + 56);
  if (v16)
  {
    v17(v9, 0, 1, v10);
    (*(v11 + 32))(v13, v9, v10);
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544C70);
    v114[0] = 0;
    v114[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E6EF70);
    sub_252E37AE4();
    sub_252CC4050(v114[0], v114[1], 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000026, 0x8000000252E6EE40, 341);

    v19 = sub_2529B7A78(a2);
    type metadata accessor for ControlHomeIntentResponse.Builder();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D84F90];
    *(v20 + 16) = 5;
    *(v20 + 24) = v21;
    v22 = sub_252B4EF24(v19);

    v23 = sub_25297D0C0(v22);

    v25 = (*(*v23 + 176))(v24);

    (*(v11 + 8))(v13, v10);
    return v25;
  }

  v112 = v6;
  v17(v9, 1, 1, v10);
  sub_25293847C(v9, &qword_27F540EB8, &qword_252E3F4F0);
  v26 = sub_252E360A4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EC0, &qword_252E3F4F8);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v104 - v31;
  sub_252E32C44();
  sub_252E36084();
  if ((*(v27 + 48))(v32, 1, v26) != 1)
  {
    v107 = v15;
    v110 = &v104;
    (*(v27 + 32))(&v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v26);
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v48 = sub_252E36AD4();
    v49 = __swift_project_value_buffer(v48, qword_27F544EE0);
    v114[0] = 0;
    v114[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E6EE70);
    sub_252E37AE4();
    v104 = " a HomeAppIntentError ";
    v105 = "Mapped deviceResults to: ";
    v106 = v49;
    sub_252CC4050(v114[0], v114[1], 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000026, 0x8000000252E6EE40, 360);

    v108 = &v104;
    MEMORY[0x28223BE20](v50);
    v51 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = *(v27 + 16);
    v111 = v29;
    v52(v51, v29, v26);
    v53 = (*(v27 + 88))(v51, v26);
    v109 = v26;
    if (MEMORY[0x277D15040] && v53 == *MEMORY[0x277D15040] || MEMORY[0x277D15048] && v53 == *MEMORY[0x277D15048] || MEMORY[0x277D15058] && v53 == *MEMORY[0x277D15058])
    {
      (*(v27 + 96))(v51, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540ED0, &qword_252E3F508);

      sub_25293847C(v51, &unk_27F541F20, &qword_252E3C180);
      v54 = v112;
LABEL_18:
      type metadata accessor for ErrorFilingHelper();
      inited = swift_initStackObject();
      sub_252E36884();
      swift_allocObject();
      *(inited + 16) = sub_252E36874();
      strcpy(v114, "Error code: ");
      BYTE5(v114[1]) = 0;
      HIWORD(v114[1]) = -5120;
      v56 = v111;
      v113 = sub_252E36094();
      v57 = sub_252E37D94();
      MEMORY[0x2530AD570](v57);

      v58 = v114[0];
      v59 = v114[1];
      v60 = sub_252E36834();
      (*(*(v60 - 8) + 56))(v54, 1, 1, v60);
      sub_25295ADB4(0xD00000000000002CLL, 0x8000000252E6EF20, 0xD000000000000010, 0x8000000252E6EF50, v58, v59, v54);

      sub_25293847C(v54, &qword_27F540570, &unk_252E50EE0);
      type metadata accessor for ControlHomeIntentResponse.Builder();
      v61 = swift_allocObject();
      v62 = MEMORY[0x277D84F90];
      *(v61 + 16) = 102;
      *(v61 + 24) = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
LABEL_27:
      v70 = swift_initStackObject();
      *(v70 + 16) = xmmword_252E3C290;
      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v71.n128_f64[0] = HomeEntity.Builder.init()();
      v73 = (*(*v72 + 448))(v71);

      v74 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
      v75 = v73;
      v76 = sub_252E36F04();
      v77 = [v74 initWithIdentifier:0 displayString:v76];

      v78 = v77;
      [v78 setEntity_];
      type metadata accessor for HomeUserTaskResponse();
      v79 = sub_252E37254();
      [v78 setTaskResponses_];

      *(v70 + 32) = v78;
      v80 = sub_25297D0C0(v70);

      swift_setDeallocating();
      v81 = sub_25293847C(v70 + 32, &qword_27F540CC8, &unk_252E3F8F0);
      v25 = (*(*v80 + 176))(v81);

      (*(v27 + 8))(v56, v109);
      return v25;
    }

    v54 = v112;
    if (MEMORY[0x277D15078] && v53 == *MEMORY[0x277D15078] || MEMORY[0x277D15070] && v53 == *MEMORY[0x277D15070] || MEMORY[0x277D15060] && v53 == *MEMORY[0x277D15060])
    {
      (*(v27 + 96))(v51, v26);
      sub_25293847C(v51, &qword_27F540EC8, &qword_252E3F500);
    }

    else
    {
      if (MEMORY[0x277D15050] && v53 == *MEMORY[0x277D15050])
      {
        goto LABEL_18;
      }

      if (!MEMORY[0x277D15068] || v53 != *MEMORY[0x277D15068])
      {
        v114[0] = 0;
        v114[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E6EE90);
        v113 = a1;
        sub_252E37AE4();
        sub_252CC4050(v114[0], v114[1], 0xD00000000000007BLL, v105 | 0x8000000000000000, 0xD000000000000026, v104 | 0x8000000000000000, 391);

        type metadata accessor for ErrorFilingHelper();
        v83 = swift_initStackObject();
        sub_252E36884();
        swift_allocObject();
        *(v83 + 16) = sub_252E36874();
        v107 = "Unexpected appIntentError code";
        strcpy(v114, "Error code: ");
        BYTE5(v114[1]) = 0;
        HIWORD(v114[1]) = -5120;
        v113 = sub_252E36094();
        v84 = sub_252E37D94();
        MEMORY[0x2530AD570](v84);

        v85 = v114[0];
        v86 = v114[1];
        v87 = sub_252E36834();
        (*(*(v87 - 8) + 56))(v54, 1, 1, v87);
        sub_25295ADB4(0xD00000000000001ELL, 0x8000000252E6EEB0, 0xD00000000000001ALL, v107 | 0x8000000000000000, v85, v86, v54);

        sub_25293847C(v54, &qword_27F540570, &unk_252E50EE0);
        type metadata accessor for ControlHomeIntentResponse.Builder();
        v88 = swift_allocObject();
        v89 = MEMORY[0x277D84F90];
        *(v88 + 16) = 5;
        *(v88 + 24) = v89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
        v90 = swift_initStackObject();
        *(v90 + 16) = xmmword_252E3C290;
        type metadata accessor for HomeEntity.Builder();
        swift_allocObject();
        v91.n128_f64[0] = HomeEntity.Builder.init()();
        v93 = (*(*v92 + 448))(v91);

        v94 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
        v95 = v93;
        v96 = sub_252E36F04();
        v97 = [v94 initWithIdentifier:0 displayString:v96];

        v98 = v97;
        [v98 setEntity_];
        type metadata accessor for HomeUserTaskResponse();
        v99 = sub_252E37254();
        [v98 setTaskResponses_];

        *(v90 + 32) = v98;
        v100 = sub_25297D0C0(v90);

        swift_setDeallocating();
        v101 = sub_25293847C(v90 + 32, &qword_27F540CC8, &unk_252E3F8F0);
        v25 = (*(*v100 + 176))(v101);

        v102 = *(v27 + 8);
        v103 = v109;
        v102(v111, v109);
        v102(v51, v103);
        return v25;
      }
    }

    type metadata accessor for ErrorFilingHelper();
    v63 = swift_initStackObject();
    sub_252E36884();
    swift_allocObject();
    *(v63 + 16) = sub_252E36874();
    strcpy(v114, "Error code: ");
    BYTE5(v114[1]) = 0;
    HIWORD(v114[1]) = -5120;
    v56 = v111;
    v113 = sub_252E36094();
    v64 = sub_252E37D94();
    MEMORY[0x2530AD570](v64);

    v65 = v114[0];
    v66 = v114[1];
    v67 = sub_252E36834();
    (*(*(v67 - 8) + 56))(v54, 1, 1, v67);
    sub_25295ADB4(0xD000000000000027, 0x8000000252E6EEF0, 0x2064696C61766E49, 0xED00007475706E69, v65, v66, v54);

    sub_25293847C(v54, &qword_27F540570, &unk_252E50EE0);
    type metadata accessor for ControlHomeIntentResponse.Builder();
    v68 = swift_allocObject();
    v69 = MEMORY[0x277D84F90];
    *(v68 + 16) = 113;
    *(v68 + 24) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
    goto LABEL_27;
  }

  sub_25293847C(v32, &qword_27F540EC0, &qword_252E3F4F8);
  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v33 = sub_252E36AD4();
  __swift_project_value_buffer(v33, qword_27F544EE0);
  v114[0] = 0;
  v114[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E6EE00);
  v113 = a1;
  sub_252E37AE4();
  sub_252CC4050(v114[0], v114[1], 0xD00000000000007BLL, 0x8000000252E6E7F0, 0xD000000000000026, 0x8000000252E6EE40, 352);

  type metadata accessor for ControlHomeIntentResponse.Builder();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D84F90];
  *(v34 + 16) = 5;
  *(v34 + 24) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CC0, &unk_252E3E530);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_252E3C290;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v37.n128_f64[0] = HomeEntity.Builder.init()();
  v39 = (*(*v38 + 448))(v37);

  v40 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
  v41 = v39;
  v42 = sub_252E36F04();
  v43 = [v40 initWithIdentifier:0 displayString:v42];

  v44 = v43;
  [v44 setEntity_];
  type metadata accessor for HomeUserTaskResponse();
  v45 = sub_252E37254();
  [v44 setTaskResponses_];

  *(v36 + 32) = v44;
  v46 = sub_25297D0C0(v36);

  swift_setDeallocating();
  v47 = sub_25293847C(v36 + 32, &qword_27F540CC8, &unk_252E3F8F0);
  v25 = (*(*v46 + 176))(v47);

  return v25;
}

uint64_t sub_2529B9720()
{
  v14 = sub_252E37F54();
  v1 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = type metadata accessor for TriggerEventType(0);
  v4 = __swift_allocate_boxed_opaque_existential_0(&v15);
  sub_2529BBF5C(v0, v4);
  sub_252E37F24();
  sub_252E37F44();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = sub_252E37A14();
  swift_getObjectType();
  if (v5 != sub_252E37A14())
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = sub_252E37A24();
  swift_unknownObjectRelease();
  if (v6)
  {
    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  sub_252E37AF4();
  swift_unknownObjectRelease();

  v8 = v15;
  v7 = v16;
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (!v7)
  {
LABEL_6:
    if (qword_27F53F568 == -1)
    {
LABEL_7:
      v11 = sub_252E36AD4();
      __swift_project_value_buffer(v11, qword_27F544EE0);
      sub_252CC4050(0xD000000000000030, 0x8000000252E6F0B0, 0xD00000000000007FLL, 0x8000000252E6EFE0, 0x6E65644965707974, 0xEE00726569666974, 27);
      v10 = 0x6E776F6E6B6E55;
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  sub_252E37F34();
  v15 = sub_252E37FB4();
  v16 = v9;
  MEMORY[0x2530AD570](46, 0xE100000000000000);
  MEMORY[0x2530AD570](v8, v7);

  v10 = v15;
LABEL_8:
  (*(v1 + 8))(v3, v14);
  return v10;
}

uint64_t sub_2529B99FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74657366666FLL;
  }

  else
  {
    v3 = 12639;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x74657366666FLL;
  }

  else
  {
    v5 = 12639;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_2529B9A94()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529B9B08(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_2529B9B68(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_2529B9BE4(uint64_t *a1@<X8>)
{
  v2 = 12639;
  if (*v1)
  {
    v2 = 0x74657366666FLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2529B9C14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_252E32E04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TriggerEventType(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2529BBF5C(v0, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v16;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F48, &unk_252E3F7C0);
      sub_2529BBFC0(&v16[*(v19 + 48)], v6);
      sub_2529B9720();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C3C0;
      v29 = 0;
      v20 = 0x657369726E7573;
      if (v18)
      {
        v20 = 0x7465736E7573;
      }

      v21 = 0xE700000000000000;
      if (v18)
      {
        v21 = 0xE600000000000000;
      }

      v27 = v20;
      v28 = v21;
      sub_2529BBF08();
      sub_252E366F4();
      LOBYTE(v27) = 1;
      sub_2529BC030(v6, v4);
      sub_252E32BA4();
      sub_252E366F4();
      sub_252E36564();

      return sub_25293847C(v6, &qword_27F540F00, &unk_252E3FEC0);
    }

    else
    {
      v23 = *v16;
      sub_2529B9720();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      v29 = 0;
      v24 = 0x6D6F48657661656CLL;
      if (v23)
      {
        v24 = 0x6F48657669727261;
      }

      v25 = 0xE900000000000065;
      if (v23)
      {
        v25 = 0xEA0000000000656DLL;
      }

      v27 = v24;
      v28 = v25;
      sub_2529BBF08();
      sub_252E366F4();
      sub_252E36564();
    }
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    sub_2529B9720();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    sub_252E36724();
    *(swift_allocObject() + 16) = xmmword_252E3C290;
    LOBYTE(v27) = 0;
    (*(v11 + 16))(v9, v13, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    sub_2529BBF08();
    sub_252E366F4();
    sub_252E36564();

    return (*(v11 + 8))(v13, v10);
  }
}