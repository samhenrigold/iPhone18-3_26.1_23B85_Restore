uint64_t sub_217F18428(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, 0x1B2uLL);
  if (sub_217F2B6CC(__dst) == 1)
  {
    if ((a4 & 0x100000000) != 0)
    {
      if ((a4 & 0x100) != 0)
      {
        memcpy(v19, (a5 + 1440), 0x1B2uLL);
        v10 = swift_allocObject();
        memcpy((v10 + 16), (a5 + 1440), 0x1B2uLL);
        sub_217F2B89C(v19, v17, &qword_27CBF5F98, &qword_217F52250);
        v11 = sub_217F2C1CC;
        v12 = sub_217F2B95C;
      }

      else
      {
        memcpy(v19, a5, 0x1B2uLL);
        v10 = swift_allocObject();
        memcpy((v10 + 16), a5, 0x1B2uLL);
        sub_217F2B89C(v19, v17, &qword_27CBF5F80, &qword_217F52238);
        v11 = sub_217F2C1CC;
        v12 = sub_217F2C10C;
      }
    }

    else
    {
      memcpy(v19, (a5 + 440), 0x1B2uLL);
      v10 = swift_allocObject();
      memcpy((v10 + 16), (a5 + 440), 0x1B2uLL);
      sub_217F2B89C(v19, v17, &qword_27CBF5F88, &qword_217F52240);
      v11 = sub_217F2C1CC;
      v12 = sub_217F2C110;
    }

    v13 = v12;
  }

  else
  {
    v10 = swift_allocObject();
    memcpy((v10 + 16), __dst, 0x1B2uLL);
    v11 = sub_217F2C1D0;
    v13 = sub_217F2C114;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  sub_217F2B89C(__src, v17, &qword_27CBF7308, &qword_217F5A030);
  v15 = v11(a6);

  return v15;
}

uint64_t sub_217F186BC(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(__dst, __src, 0x1B2uLL);
  if (sub_217F2B6CC(__dst) == 1)
  {
    if ((a4 & 0x100000000) != 0)
    {
      if ((a4 & 0x100) != 0)
      {
        memcpy(v19, (a5 + 1440), 0x1B2uLL);
        v10 = swift_allocObject();
        memcpy((v10 + 16), (a5 + 1440), 0x1B2uLL);
        sub_217F2B89C(v19, v17, &qword_27CBF5F98, &qword_217F52250);
        v11 = sub_217F2C1C4;
        v12 = sub_217F2B904;
      }

      else
      {
        memcpy(v19, a5, 0x1B2uLL);
        v10 = swift_allocObject();
        memcpy((v10 + 16), a5, 0x1B2uLL);
        sub_217F2B89C(v19, v17, &qword_27CBF5F80, &qword_217F52238);
        v11 = sub_217F2C1C4;
        v12 = sub_217F2C100;
      }
    }

    else
    {
      memcpy(v19, (a5 + 440), 0x1B2uLL);
      v10 = swift_allocObject();
      memcpy((v10 + 16), (a5 + 440), 0x1B2uLL);
      sub_217F2B89C(v19, v17, &qword_27CBF5F88, &qword_217F52240);
      v11 = sub_217F2C1C4;
      v12 = sub_217F2C104;
    }

    v13 = v12;
  }

  else
  {
    v10 = swift_allocObject();
    memcpy((v10 + 16), __dst, 0x1B2uLL);
    v11 = sub_217F2C1C8;
    v13 = sub_217F2C108;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v10;
  sub_217F2B89C(__src, v17, &qword_27CBF7308, &qword_217F5A030);
  v15 = v11(a6);

  return v15;
}

uint64_t sub_217F18950(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v4 = *(a2 + 32);

  v5 = sub_217F36A9C(v4, a3);
  v6 = v5;
  v7 = v5[2];
  if (v7)
  {
    v8 = sub_217E8E5AC(v5[2], 0);
    v9 = sub_217E966DC(&v73, v8 + 4, v7, v6);
    sub_217E7F628(v73);
    if (v9 != v7)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }

    v10 = v8[2];
    if (v10)
    {
LABEL_4:
      if (v8[2])
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v68 = v8 + 4;
        v14 = v8 + 7;
        v15 = 1;
        v71 = v8;
        v72 = v10;
        while (1)
        {
          v16 = &v68[2 * v13];
          v70 = v15;
          v18 = *v16;
          v17 = v16[1];

          sub_217F2BA80(v11, 0);
          v19 = v75;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = *v19;
          v21 = v73;
          v22 = sub_217E8E88C(v18, v17);
          v24 = v21[2];
          v25 = (v23 & 1) == 0;
          v26 = __OFADD__(v24, v25);
          v27 = v24 + v25;
          if (v26)
          {
            break;
          }

          v28 = v23;
          if (v21[3] >= v27)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v65 = v22;
              sub_217E8FF84();
              v22 = v65;
              v21 = v73;
            }
          }

          else
          {
            sub_217E930A8(v27, isUniquelyReferenced_nonNull_native);
            v21 = v73;
            v22 = sub_217E8E88C(v18, v17);
            if ((v28 & 1) != (v29 & 1))
            {
              goto LABEL_55;
            }
          }

          *v75 = v21;
          if ((v28 & 1) == 0)
          {
            v21[(v22 >> 6) + 8] |= 1 << v22;
            v30 = (v21[6] + 16 * v22);
            *v30 = v18;
            v30[1] = v17;
            *(v21[7] + 8 * v22) = 0;
            v31 = v21[2];
            v26 = __OFADD__(v31, 1);
            v32 = v31 + 1;
            if (v26)
            {
              goto LABEL_53;
            }

            v21[2] = v32;
            v33 = v22;

            v22 = v33;
          }

          v34 = v21[7];
          v35 = *(v34 + 8 * v22);
          v26 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v26)
          {
            goto LABEL_52;
          }

          *(v34 + 8 * v22) = v36;
          v37 = v72;
          if (v70 == v72)
          {

            v66 = sub_217F2BF98;
            goto LABEL_44;
          }

          v69 = v14;
          v38 = v14;
          v39 = v70;
          do
          {
            if (v39 >= v37)
            {
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            if (v39 >= v71[2])
            {
              goto LABEL_46;
            }

            v41 = *(v38 - 1);
            v40 = *v38;
            v42 = v18 == v41 && v17 == v40;
            if (v42 || (sub_217F4B144() & 1) == 0)
            {
              v73 = v41;
              v74 = v40;
              swift_bridgeObjectRetain_n();
              v43 = v18;
              v44 = v17;
            }

            else
            {
              v73 = v18;
              v74 = v17;

              v43 = v41;
              v44 = v40;
            }

            MEMORY[0x21CEAEAC0](v43, v44);

            sub_217F2BA80(v12, 0);
            v45 = v73;
            v46 = v74;
            v47 = v75;
            v48 = swift_isUniquelyReferenced_nonNull_native();
            v49 = *v47;
            v73 = v49;
            v50 = sub_217E8E88C(v45, v46);
            v52 = v49[2];
            v53 = (v51 & 1) == 0;
            v26 = __OFADD__(v52, v53);
            v54 = v52 + v53;
            if (v26)
            {
              goto LABEL_47;
            }

            v55 = v51;
            if (v49[3] >= v54)
            {
              if ((v48 & 1) == 0)
              {
                v64 = v50;
                sub_217E8FF84();
                v50 = v64;
                v49 = v73;
              }
            }

            else
            {
              sub_217E930A8(v54, v48);
              v49 = v73;
              v50 = sub_217E8E88C(v45, v46);
              if ((v55 & 1) != (v56 & 1))
              {
                goto LABEL_55;
              }
            }

            *v75 = v49;
            if (v55)
            {
              v57 = v50;

              v50 = v57;
            }

            else
            {
              v49[(v50 >> 6) + 8] |= 1 << v50;
              v58 = (v49[6] + 16 * v50);
              *v58 = v45;
              v58[1] = v46;
              *(v49[7] + 8 * v50) = 0;
              v59 = v49[2];
              v26 = __OFADD__(v59, 1);
              v60 = v59 + 1;
              if (v26)
              {
                goto LABEL_49;
              }

              v49[2] = v60;
            }

            v61 = v49[7];
            v62 = *(v61 + 8 * v50);
            v26 = __OFADD__(v62, 1);
            v63 = v62 + 1;
            if (v26)
            {
              goto LABEL_48;
            }

            ++v39;
            *(v61 + 8 * v50) = v63;
            v38 += 2;
            v12 = sub_217F2BF9C;
            v37 = v72;
          }

          while (v72 != v39);

          v13 = v70;
          v15 = v70 + 1;
          v14 = v69 + 2;
          v12 = sub_217F2BF9C;
          v11 = sub_217F2BF98;
          if (v70 >= v71[2])
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
LABEL_50:
        __break(1u);
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  v66 = 0;
  v12 = 0;
LABEL_44:
  sub_217F2BA80(v66, 0);
  return sub_217F2BA80(v12, 0);
}

BOOL sub_217F18E50(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = sub_217E8E88C(*a1, a1[1]);
    v7 = 0.0;
    v8 = 0.0;
    if (v9)
    {
      v8 = *(*(a3 + 56) + 40 * v6 + 32);
    }

    if (*(a3 + 16))
    {
      v10 = sub_217E8E88C(v4, v5);
      if (v11)
      {
        v7 = *(*(a3 + 56) + 40 * v10 + 32);
      }
    }
  }

  else
  {
    v8 = 0.0;
    v7 = 0.0;
  }

  return v7 < v8;
}

uint64_t sub_217F18EF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v4 = *(a2 + 32);

  v5 = sub_217F36A9C(v4, a3);
  v6 = v5;
  v7 = v5[2];
  if (v7)
  {
    v8 = sub_217E8E5AC(v5[2], 0);
    v9 = sub_217E966DC(&v73, v8 + 4, v7, v6);
    sub_217E7F628(v73);
    if (v9 != v7)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }

    v10 = v8[2];
    if (v10)
    {
LABEL_4:
      if (v8[2])
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v68 = v8 + 4;
        v14 = v8 + 7;
        v15 = 1;
        v71 = v8;
        v72 = v10;
        while (1)
        {
          v16 = &v68[2 * v13];
          v70 = v15;
          v18 = *v16;
          v17 = v16[1];

          sub_217F2BA80(v11, 0);
          v19 = v75;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = *v19;
          v21 = v73;
          v22 = sub_217E8E88C(v18, v17);
          v24 = v21[2];
          v25 = (v23 & 1) == 0;
          v26 = __OFADD__(v24, v25);
          v27 = v24 + v25;
          if (v26)
          {
            break;
          }

          v28 = v23;
          if (v21[3] >= v27)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v65 = v22;
              sub_217E8FF84();
              v22 = v65;
              v21 = v73;
            }
          }

          else
          {
            sub_217E930A8(v27, isUniquelyReferenced_nonNull_native);
            v21 = v73;
            v22 = sub_217E8E88C(v18, v17);
            if ((v28 & 1) != (v29 & 1))
            {
              goto LABEL_55;
            }
          }

          *v75 = v21;
          if ((v28 & 1) == 0)
          {
            v21[(v22 >> 6) + 8] |= 1 << v22;
            v30 = (v21[6] + 16 * v22);
            *v30 = v18;
            v30[1] = v17;
            *(v21[7] + 8 * v22) = 0;
            v31 = v21[2];
            v26 = __OFADD__(v31, 1);
            v32 = v31 + 1;
            if (v26)
            {
              goto LABEL_53;
            }

            v21[2] = v32;
            v33 = v22;

            v22 = v33;
          }

          v34 = v21[7];
          v35 = *(v34 + 8 * v22);
          v26 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v26)
          {
            goto LABEL_52;
          }

          *(v34 + 8 * v22) = v36;
          v37 = v72;
          if (v70 == v72)
          {

            v66 = sub_217F2BF94;
            goto LABEL_44;
          }

          v69 = v14;
          v38 = v14;
          v39 = v70;
          do
          {
            if (v39 >= v37)
            {
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            if (v39 >= v71[2])
            {
              goto LABEL_46;
            }

            v41 = *(v38 - 1);
            v40 = *v38;
            v42 = v18 == v41 && v17 == v40;
            if (v42 || (sub_217F4B144() & 1) == 0)
            {
              v73 = v41;
              v74 = v40;
              swift_bridgeObjectRetain_n();
              v43 = v18;
              v44 = v17;
            }

            else
            {
              v73 = v18;
              v74 = v17;

              v43 = v41;
              v44 = v40;
            }

            MEMORY[0x21CEAEAC0](v43, v44);

            sub_217F2BA80(v12, 0);
            v45 = v73;
            v46 = v74;
            v47 = v75;
            v48 = swift_isUniquelyReferenced_nonNull_native();
            v49 = *v47;
            v73 = v49;
            v50 = sub_217E8E88C(v45, v46);
            v52 = v49[2];
            v53 = (v51 & 1) == 0;
            v26 = __OFADD__(v52, v53);
            v54 = v52 + v53;
            if (v26)
            {
              goto LABEL_47;
            }

            v55 = v51;
            if (v49[3] >= v54)
            {
              if ((v48 & 1) == 0)
              {
                v64 = v50;
                sub_217E8FF84();
                v50 = v64;
                v49 = v73;
              }
            }

            else
            {
              sub_217E930A8(v54, v48);
              v49 = v73;
              v50 = sub_217E8E88C(v45, v46);
              if ((v55 & 1) != (v56 & 1))
              {
                goto LABEL_55;
              }
            }

            *v75 = v49;
            if (v55)
            {
              v57 = v50;

              v50 = v57;
            }

            else
            {
              v49[(v50 >> 6) + 8] |= 1 << v50;
              v58 = (v49[6] + 16 * v50);
              *v58 = v45;
              v58[1] = v46;
              *(v49[7] + 8 * v50) = 0;
              v59 = v49[2];
              v26 = __OFADD__(v59, 1);
              v60 = v59 + 1;
              if (v26)
              {
                goto LABEL_49;
              }

              v49[2] = v60;
            }

            v61 = v49[7];
            v62 = *(v61 + 8 * v50);
            v26 = __OFADD__(v62, 1);
            v63 = v62 + 1;
            if (v26)
            {
              goto LABEL_48;
            }

            ++v39;
            *(v61 + 8 * v50) = v63;
            v38 += 2;
            v12 = sub_217F2BF90;
            v37 = v72;
          }

          while (v72 != v39);

          v13 = v70;
          v15 = v70 + 1;
          v14 = v69 + 2;
          v12 = sub_217F2BF90;
          v11 = sub_217F2BF94;
          if (v70 >= v71[2])
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
LABEL_50:
        __break(1u);
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (v10)
    {
      goto LABEL_4;
    }
  }

  v66 = 0;
  v12 = 0;
LABEL_44:
  sub_217F2BA80(v66, 0);
  return sub_217F2BA80(v12, 0);
}

char *sub_217F193F4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_217EA0CC0(result, v5, 0);
  }

  return result;
}

char *sub_217F1946C(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_217E8D720((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_217F194B0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_217F4B224();
  sub_217F4AB24();
  v8 = sub_217F4B254();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_217F4B144() & 1) != 0)
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

    sub_217F197BC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_217F19600(_OWORD *a1, uint64_t *a2)
{
  v5 = *v2;
  sub_217F4B224();
  v6 = *a2;
  v7 = a2[1];
  sub_217F4AB24();
  v8 = sub_217F4B254();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v5 + 48) + 96 * v10);
      v13 = *v12 == v6 && v12[1] == v7;
      if (v13 || (sub_217F4B144() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_217E98274(a2);
    v18 = (*(v5 + 48) + 96 * v10);
    v19 = v18[1];
    v28[0] = *v18;
    v28[1] = v19;
    v21 = v18[3];
    v20 = v18[4];
    v22 = v18[2];
    *&v29[9] = *(v18 + 73);
    v28[3] = v21;
    *v29 = v20;
    v28[2] = v22;
    v23 = v18[1];
    *a1 = *v18;
    a1[1] = v23;
    v24 = v18[2];
    v25 = v18[3];
    v26 = v18[4];
    *(a1 + 73) = *(v18 + 73);
    a1[3] = v25;
    a1[4] = v26;
    a1[2] = v24;
    sub_217E98218(v28, v27);
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *v2;
    sub_217E98218(a2, v28);
    sub_217F1993C(a2, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v27[0];
    v15 = *(a2 + 3);
    a1[2] = *(a2 + 2);
    a1[3] = v15;
    a1[4] = *(a2 + 4);
    *(a1 + 73) = *(a2 + 73);
    v16 = *(a2 + 1);
    result = 1;
    *a1 = *a2;
    a1[1] = v16;
  }

  return result;
}

uint64_t sub_217F197BC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_217ECF508(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_217ECFC40();
      goto LABEL_16;
    }

    sub_217ED006C(v8 + 1);
  }

  v10 = *v4;
  sub_217F4B224();
  sub_217F4AB24();
  result = sub_217F4B254();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_217F4B144();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_217F4B1B4();
  __break(1u);
  return result;
}

uint64_t sub_217F1993C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_217ECF768(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_217ECFD9C();
      goto LABEL_16;
    }

    sub_217ED02A4(v6 + 1);
  }

  v8 = *v3;
  sub_217F4B224();
  v9 = *v5;
  v10 = *(v5 + 8);
  sub_217F4AB24();
  result = sub_217F4B254();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v8 + 48) + 96 * a2);
      if (*v13 == v9 && v13[1] == v10)
      {
        goto LABEL_19;
      }

      result = sub_217F4B144();
      if (result)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v16 = (*(v15 + 48) + 96 * a2);
  v17 = *(v5 + 16);
  *v16 = *v5;
  v16[1] = v17;
  *(v16 + 73) = *(v5 + 73);
  v18 = *(v5 + 64);
  v16[3] = *(v5 + 48);
  v16[4] = v18;
  v16[2] = *(v5 + 32);
  v19 = *(v15 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v15 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_217F4B1B4();
  __break(1u);
  return result;
}

uint64_t sub_217F19AE8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v6 = sub_217E8E9D0(a1, a2, a3 & 0x101010101, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v4;
  v16 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_217E8FA94();
    v10 = v16;
  }

  v11 = (*(v10 + 48) + 32 * v8);
  v12 = *(v11 + 13);
  v15[0] = *v11;
  *(v15 + 13) = v12;
  sub_217F23FA4(v15);
  v13 = *(*(v10 + 56) + 8 * v8);
  sub_217F35220(v8, v10);
  *v5 = v10;
  return v13;
}

uint64_t sub_217F19B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_217E8E88C(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      sub_217E8F000();
      result = v21;
      goto LABEL_8;
    }

    sub_217E91414(v18, a5 & 1);
    result = sub_217E8E88C(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * result);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_217F35410(result, a3, a4, a1, a2, v23);
  }

  return result;
}

uint64_t sub_217F19CD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_217E8E88C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_217E8F168();
      v11 = v19;
      goto LABEL_8;
    }

    sub_217E916C0(v16, a4 & 1);
    v11 = sub_217E8E88C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_217F35460(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_217F19E20(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_217E8E88C(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      sub_217E8F43C();
      result = v21;
      goto LABEL_8;
    }

    sub_217E91C44(v18, a5 & 1);
    result = sub_217E8E88C(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * result;
    *v24 = a1;
    *(v24 + 8) = a2 & 1;
  }

  else
  {
    sub_217F354A8(result, a3, a4, a1, a2 & 1, v23);
  }

  return result;
}

uint64_t sub_217F19F64(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_217E8E88C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_217E8F5B4();
      result = v19;
      goto LABEL_8;
    }

    sub_217E91F04(v16, a4 & 1);
    result = sub_217E8E88C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 48 * result);
    v23 = a1[1];
    *v22 = *a1;
    v22[1] = v23;
    v22[2] = a1[2];
  }

  else
  {
    sub_217F35500(result, a2, a3, a1, v21);
  }

  return result;
}

uint64_t sub_217F1A0A8(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_217E8E88C(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = result;
      sub_217E8F918();
      result = v19;
      goto LABEL_8;
    }

    sub_217E924FC(v16, a3 & 1);
    result = sub_217E8E88C(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
  }

  else
  {
    sub_217F3555C(result, a1, a2, v21, a4);
  }

  return result;
}

uint64_t sub_217F1A1D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_217E8E88C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_217E8FC3C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_217E92AB8(v16, a4 & 1);
    v11 = sub_217E8E88C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_217F2B650(a1, v22);
  }

  else
  {
    sub_217F355A4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_217F1A318(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ClassicArticleData(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_217E8EABC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_217E903E0();
      goto LABEL_7;
    }

    sub_217E93884(v17, a3 & 1);
    v22 = sub_217E8EABC(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_217E9D964(a2, v11);
      return sub_217F35658(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_217F4B1C4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_217F1A4A8(void *a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_217E8EBB4(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_217E9062C();
    result = v17;
    goto LABEL_8;
  }

  sub_217E93BF8(v14, a2 & 1);
  result = sub_217E8EBB4(a1);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_12:
    result = sub_217F4B1C4();
    __break(1u);
    return result;
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {
    sub_217F356F8(result, a1, v19, a3);
    return sub_217F2B5F4(a1, v20);
  }

  return result;
}

uint64_t sub_217F1A5B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_217E8E88C(a3, a4);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = result;
      sub_217E907B4();
      result = v23;
      goto LABEL_8;
    }

    sub_217E93F10(v20, a5 & 1);
    result = sub_217E8E88C(a3, a4);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * result;
    *v26 = a6;
    *(v26 + 8) = a1;
    *(v26 + 16) = a2 & 1;
  }

  else
  {
    sub_217F35758(result, a3, a4, a1, a2 & 1, v25, a6);
  }

  return result;
}

uint64_t sub_217F1A750(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_217E8E88C(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_217E8E88C(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_217F1A8BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_217F37288(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  result = sub_217F4B0F4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 64];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 + 2) >= v11)
          {
            break;
          }

          v14 = *(v13 + 3);
          v15 = *(v13 + 4);
          v16 = *v13;
          *(v13 + 24) = *(v13 - 1);
          v17 = v13[40];
          v18 = *(v13 + 6);
          *(v13 + 40) = v16;
          *(v13 + 7) = *(v13 + 2);
          *(v13 - 2) = v14;
          *(v13 - 1) = v15;
          *v13 = v17;
          *(v13 + 1) = v18;
          *(v13 + 2) = v11;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_217F4AC54();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_217F1ABBC(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_217F1AA2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_217F372C4(v2);
  }

  v3 = *(v2 + 2);
  v32[0] = (v2 + 32);
  v32[1] = v3;
  result = sub_217F4B0F4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 128;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 5) >= *(v12 + 7))
          {
            break;
          }

          v13 = v12 - 96;
          v14 = *(v12 + 1);
          v27 = *v12;
          v28 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 4);
          *&v31[9] = *(v12 + 73);
          v30 = v16;
          *v31 = v17;
          v29 = v15;
          v18 = *(v12 - 1);
          *(v12 + 4) = *(v12 - 2);
          *(v12 + 5) = v18;
          v19 = *(v12 - 3);
          *(v12 + 2) = *(v12 - 4);
          *(v12 + 3) = v19;
          v20 = *(v12 - 5);
          *v12 = *(v12 - 6);
          *(v12 + 1) = v20;
          v21 = v29;
          v22 = v30;
          v23 = *v31;
          *(v13 + 73) = *&v31[9];
          v24 = v28;
          *v13 = v27;
          *(v13 + 1) = v24;
          *(v13 + 3) = v22;
          *(v13 + 4) = v23;
          *(v13 + 2) = v21;
          v12 -= 96;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 96;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_217F4AC54();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v27 = v7 + 32;
    *(&v27 + 1) = v6;
    sub_217F1B1AC(&v27, v26, v32, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_217F1ABBC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_217F3610C(v8);
      v8 = result;
    }

    v92 = (v8 + 16);
    v93 = *(v8 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v8 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_217F1B7D4((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 32);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 32);
      v13 = v9 + 2;
      v14 = (v11 + 112);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v10) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v31 + v19);
            v23 = (v31 + v18);
            v24 = *(v22 - 4);
            v25 = *(v22 - 3);
            v26 = *(v22 - 16);
            v27 = *(v22 - 1);
            v28 = *v22;
            v29 = v23[1];
            v30 = *(v23 - 1);
            *(v22 - 2) = *(v23 - 3);
            *(v22 - 1) = v30;
            *v22 = v29;
            *(v23 - 3) = v24;
            *(v23 - 2) = v25;
            *(v23 - 8) = v26;
            *v23 = v27;
            v23[1] = v28;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_217E8DA14(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v45 = *(v8 + 16);
    v44 = *(v8 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_217E8DA14((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v46;
    v47 = v8 + 32;
    v48 = (v8 + 32 + 16 * v45);
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 32);
          v51 = *(v8 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v8 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v8 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_217F1B7D4((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v8 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v8 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v8 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 40 * v7 - 8;
  v34 = v9 - v7;
LABEL_30:
  v35 = *(v32 + 40 * v7 + 32);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (*v37 >= v35)
    {
LABEL_29:
      ++v7;
      v33 += 40;
      --v34;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *(v37 + 8);
    v39 = *(v37 + 16);
    v40 = *(v37 - 16);
    *(v37 + 8) = *(v37 - 32);
    v41 = *(v37 + 24);
    v42 = *(v37 + 32);
    *(v37 + 24) = v40;
    *(v37 + 40) = *v37;
    *(v37 - 32) = v38;
    *(v37 - 24) = v39;
    *(v37 - 16) = v41;
    *(v37 - 8) = v42;
    *v37 = v35;
    v37 -= 40;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_217F1B1AC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_217F3610C(v7);
      v7 = result;
    }

    v80 = (v7 + 16);
    v81 = *(v7 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v7 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_217F1BA10((*a3 + 96 * *v82), (*a3 + 96 * *v84), (*a3 + 96 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 96 * v6 + 56);
      v10 = 96 * v8;
      v11 = *a3 + 96 * v8;
      v12 = *(v11 + 56);
      v13 = v8 + 2;
      v14 = (v11 + 152);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[12];
        v14 += 12;
        ++v13;
        if (v12 < v9 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 96 * v6 - 96;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v21 + v17);
            v94 = *(v21 + v10 + 32);
            v96 = *(v21 + v10 + 48);
            *v98 = *(v21 + v10 + 64);
            *&v98[9] = *(v21 + v10 + 73);
            v90 = *(v21 + v10);
            v92 = *(v21 + v10 + 16);
            result = memmove((v21 + v10), (v21 + v17), 0x60uLL);
            v20[2] = v94;
            v20[3] = v96;
            v20[4] = *v98;
            *(v20 + 73) = *&v98[9];
            *v20 = v90;
            v20[1] = v92;
          }

          ++v19;
          v17 -= 96;
          v10 += 96;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_217E8DA14(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v33 = *(v7 + 16);
    v32 = *(v7 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_217E8DA14((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v34;
    v35 = v7 + 32;
    v36 = (v7 + 32 + 16 * v33);
    *v36 = v8;
    v36[1] = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v7 + 32);
          v39 = *(v7 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = (v7 + 16 * v34);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = (v35 + 16 * v37);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = (v7 + 16 * v34);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = (v35 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = (v35 + 16 * (v37 - 1));
        v76 = *v75;
        v77 = (v35 + 16 * v37);
        v78 = v77[1];
        sub_217F1BA10((*a3 + 96 * *v75), (*a3 + 96 * *v77), (*a3 + 96 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v7 + 16);
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove((v35 + 16 * v37), v77 + 2, 16 * (v79 - 1 - v37));
        *(v7 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v35 + 16 * v34;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = (v7 + 16 * v34);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = (v35 + 16 * v37);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 96 * v6;
  v24 = v8 - v6;
LABEL_30:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*(v26 - 40) >= *(v26 + 56))
    {
LABEL_29:
      ++v6;
      v23 += 96;
      --v24;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    v27 = (v26 - 96);
    v95 = *(v26 + 32);
    v97 = *(v26 + 48);
    *v99 = *(v26 + 64);
    *&v99[9] = *(v26 + 73);
    v91 = *v26;
    v93 = *(v26 + 16);
    v28 = *(v26 - 48);
    *(v26 + 32) = *(v26 - 64);
    *(v26 + 48) = v28;
    v29 = *(v26 - 16);
    *(v26 + 64) = *(v26 - 32);
    *(v26 + 80) = v29;
    v30 = *(v26 - 80);
    *v26 = *(v26 - 96);
    *(v26 + 16) = v30;
    v27[2] = v95;
    v27[3] = v97;
    v27[4] = *v99;
    *(v27 + 73) = *&v99[9];
    v26 -= 96;
    *v27 = v91;
    v27[1] = v93;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_217F1B7D4(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[4] < v6[4])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t sub_217F1BA10(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 < v11)
  {
    v12 = 12 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 96)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[7] < v6[7])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 12;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 12;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 12;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x60uLL);
    goto LABEL_9;
  }

  v16 = 12 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 96 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 96 && v6 > v7)
  {
LABEL_20:
    v5 -= 12;
    do
    {
      v17 = v5 + 12;
      if (*(v6 - 5) < *(v13 - 5))
      {
        v19 = v6 - 12;
        if (v17 != v6)
        {
          memmove(v5, v6 - 12, 0x60uLL);
        }

        if (v13 <= v4 || (v6 -= 12, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = (v13 - 12);
      if (v17 != v13)
      {
        memmove(v5, v13 - 12, 0x60uLL);
      }

      v5 -= 12;
      v13 -= 12;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_31:
  v20 = 12 * ((v13 - v4) / 96);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20 * 8);
  }

  return 1;
}

char *sub_217F1BC40()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_217E8D720(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_217F1BC8C(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = v3;
  v6 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
    goto LABEL_2;
  }

  v16 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v16;
LABEL_2:
    MEMORY[0x28223BE20](a1, v11);
    v13 = v20 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a2(v13, v10, v6);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v17 = swift_slowAlloc();
  v18 = v5;
  v19 = sub_217F1BFE0(v17, v10, v6, a3);
  result = MEMORY[0x21CEAF6B0](v17, -1, -1);
  if (!v18)
  {
    return v19;
  }

  return result;
}

unint64_t *sub_217F1BDFC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 40 * v10 + 16) == 1)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_217F3659C(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_217F3659C(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_217F1BEF0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 56) + 40 * v10 + 16) & 1) == 0)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_217F3659C(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_217F3659C(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_217F1BFE0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

unint64_t sub_217F1C068(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x21CEAF6D0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x21CEAF6D0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_217F1C108(uint64_t result)
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

    for (i = 0; v6; result = sub_217F2BC84(v18, &qword_27CBF7300, &qword_217F5A018))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(v2 + 48) + 96 * (v10 | (v9 << 6)));
      v12 = v11[1];
      v20[0] = *v11;
      v20[1] = v12;
      v14 = v11[3];
      v13 = v11[4];
      v15 = v11[2];
      *(v21 + 9) = *(v11 + 73);
      v20[3] = v14;
      v21[0] = v13;
      v20[2] = v15;
      sub_217E98218(v20, v18);
      sub_217F1C278(v20, v16);
      sub_217E98274(v20);
      v18[2] = v16[2];
      v18[3] = v16[3];
      v19[0] = v17[0];
      *(v19 + 9) = *(v17 + 9);
      v18[0] = v16[0];
      v18[1] = v16[1];
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

uint64_t sub_217F1C278@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  sub_217F4B224();
  v7 = *a1;
  v8 = a1[1];
  sub_217F4AB24();
  result = sub_217F4B254();
  v10 = -1 << *(v6 + 32);
  v11 = result & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v6 + 48) + 96 * v11);
      if (*v13 == v7 && v13[1] == v8)
      {
        break;
      }

      result = sub_217F4B144();
      if (result)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v20 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217ECFD9C();
      v16 = v20;
    }

    v17 = (*(v16 + 48) + 96 * v11);
    v18 = v17[3];
    a2[2] = v17[2];
    a2[3] = v18;
    a2[4] = v17[4];
    *(a2 + 73) = *(v17 + 73);
    v19 = v17[1];
    *a2 = *v17;
    a2[1] = v19;
    result = sub_217F1C3E8(v11);
    *v3 = v20;
  }

  else
  {
LABEL_9:
    *(a2 + 73) = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

unint64_t sub_217F1C3E8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_217F4AD94();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 96 * v6;
        v11 = (*(v3 + 48) + 96 * v6);
        v13 = v11[3];
        v12 = v11[4];
        v14 = v11[2];
        *(v26 + 9) = *(v11 + 73);
        v25[3] = v13;
        v26[0] = v12;
        v25[2] = v14;
        v15 = v11[1];
        v25[0] = *v11;
        v25[1] = v15;
        sub_217F4B224();
        sub_217E98218(v25, v24);
        sub_217F4AB24();
        v16 = sub_217F4B254();
        sub_217E98274(v25);
        v17 = v16 & v7;
        if (v2 >= v9)
        {
          if (v17 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v17 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v17)
        {
LABEL_11:
          v18 = *(v3 + 48);
          v19 = (v18 + 96 * v2);
          v20 = (v18 + v10);
          if (96 * v2 < v10 || v19 >= v20 + 96 || v2 != v6)
          {
            memmove(v19, v20, 0x60uLL);
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

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

void (*sub_217F1C5F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11[8] = sub_217F1C980(v11);
  v11[9] = sub_217F1C72C(v11 + 4, a2, a3, a4 & 0x101010101, isUniquelyReferenced_nonNull_native, a5);
  return sub_217F1C6CC;
}

void sub_217F1C6CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_217F1C72C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6))(uint64_t **a1, __n128 a2)
{
  v7 = v6;
  if (MEMORY[0x277D84FD8])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x40uLL);
  }

  v15 = v14;
  *a1 = v14;
  *(v14 + 32) = a4;
  *(v14 + 40) = v6;
  *(v14 + 24) = a6;
  *(v14 + 8) = a2;
  *(v14 + 16) = a3;
  v16 = *v6;
  v17 = sub_217E8E9D0(a2, a3, a4 & 0x101010101, a6);
  *(v15 + 56) = v18 & 1;
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 >= v22 && (a5 & 1) == 0)
    {
      v25 = v17;
      sub_217E8FA94();
      v17 = v25;
      goto LABEL_11;
    }

    sub_217E927B4(v22, a5 & 1);
    v17 = sub_217E8E9D0(a2, a3, a4 & 0x101010101, a6);
    if ((v23 & 1) == (v26 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_217F4B1C4();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v15 + 48) = v17;
  if (v23)
  {
    v27 = *(*(*v7 + 56) + 8 * v17);
  }

  else
  {
    v27 = 0;
  }

  *v15 = v27;
  return sub_217F1C8B8;
}

void sub_217F1C8B8(uint64_t **a1, __n128 a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 56);
  if (v3)
  {
    v5 = v2[6];
    v6 = *v2[5];
    if (v4)
    {
      *(v6[7] + 8 * v5) = v3;
    }

    else
    {
      sub_217F35600(v5, v2[1], v2[2], v2[4] & 0x101010101, v3, v6, *(v2 + 3));
    }
  }

  else if ((*a1)[7])
  {
    v7 = v2[6];
    v8 = *v2[5];
    sub_217F23FA4(*(v8 + 48) + 32 * v7);
    sub_217F35220(v7, v8);
  }

  free(v2);
}

uint64_t (*sub_217F1C980(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_217F1C9A8;
}

uint64_t sub_217F1C9B4(uint64_t a1, uint64_t a2)
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
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_217F4B224();

    sub_217F4AB24();
    v23 = sub_217F4B254();
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
    if (v26 || (sub_217F4B144() & 1) != 0)
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

  v30 = *(v5 + 32);
  v55 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v55;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28, v29);
    v2 = &v54 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v57 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_217F3703C(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v61 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            sub_217F4B224();

            sub_217F4AB24();
            v42 = sub_217F4B254();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
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

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_217F4B144() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v35 = v59[v2];
          v59[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
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

        v34 = v57 - 1;
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
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v50);
  v52 = v54;
  v53 = sub_217F1D3D0(v51, v55, v5, v2, v63);

  if (!v52)
  {

    MEMORY[0x21CEAF6B0](v51, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_217E7F628(v13);
    return v5;
  }

  MEMORY[0x21CEAF510](v52);
  result = MEMORY[0x21CEAF6B0](v51, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_217F1CF24(uint64_t a1, uint64_t a2)
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
    sub_217F4B224();

    sub_217F4AB24();
    v11 = sub_217F4B254();
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
    while ((sub_217F4B144() & 1) == 0)
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

  v22 = *(v2 + 32);
  v50 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v50;
  v24 = v55;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v43 = v23;

  v44 = v43;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v51 = &v48;
    MEMORY[0x28223BE20](v20, v21);
    v13 = &v48 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v57 = v7;
    memcpy(v13, v7, v25);
    v56 = v2;
    v26 = *(v2 + 16);
    v27 = *(v13 + 8 * v14) & ~v15;
    v53 = v13;
    *(v13 + 8 * v14) = v27;
    v28 = v26 - 1;
    v29 = v54;
    v7 = *(v54 + 16);
    v30 = v52;
    while (1)
    {
      v52 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_217F3703C(v53, v50, v52, v56);
LABEL_42:

        return v2;
      }

      v14 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v14);
        v33 = *v32;
        v15 = v32[1];
        ++v14;
        v2 = v56;
        sub_217F4B224();

        sub_217F4AB24();
        v34 = sub_217F4B254();
        v35 = -1 << *(v2 + 32);
        v36 = v34 & ~v35;
        v13 = v36 >> 6;
        v37 = 1 << v36;
        if (((1 << v36) & v57[v36 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v55;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v38 = (*(v2 + 48) + 16 * v36);
      if (*v38 != v33 || v38[1] != v15)
      {
        v40 = ~v35;
        v2 = 1;
        while ((sub_217F4B144() & 1) == 0)
        {
          v36 = (v36 + 1) & v40;
          v13 = v36 >> 6;
          v37 = 1 << v36;
          if (((1 << v36) & v57[v36 >> 6]) == 0)
          {
            v29 = v54;
            goto LABEL_37;
          }

          v41 = (*(v56 + 48) + 16 * v36);
          if (*v41 == v33 && v41[1] == v15)
          {
            break;
          }
        }
      }

      v29 = v54;
      v31 = v53[v13];
      v53[v13] = v31 & ~v37;
      if ((v31 & v37) == 0)
      {
        goto LABEL_22;
      }

      v28 = v52 - 1;
      v24 = v55;
      if (__OFSUB__(v52, 1))
      {
        __break(1u);
      }

      v30 = v14;
      if (v52 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v45 = swift_slowAlloc();
  memcpy(v45, v7, v44);
  v46 = v49;
  v47 = sub_217F1D608(v45, v50, v2, v13, v58);

  if (!v46)
  {

    MEMORY[0x21CEAF6B0](v45, -1, -1);

    return v47;
  }

  MEMORY[0x21CEAF510](v46);
  result = MEMORY[0x21CEAF6B0](v45, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_217F1D3D0(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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

          return sub_217F3703C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_217F4B224();

        sub_217F4AB24();
        v19 = sub_217F4B254();
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
        while ((sub_217F4B144() & 1) == 0)
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

unint64_t *sub_217F1D608(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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

          return sub_217F3703C(v27, a2, v26, a3);
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
        sub_217F4B224();

        sub_217F4AB24();
        v16 = sub_217F4B254();
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
        while ((sub_217F4B144() & 1) == 0)
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

uint64_t sub_217F1D7EC(char *__src, char *a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4;
  v10 = a3;
  v11 = a2 - __src;
  v12 = (a2 - __src) / 96;
  v13 = a3 - a2;
  v14 = (a3 - a2) / 96;
  v108 = __src;
  if (v12 >= v14)
  {
    v61 = 96 * v14;
    if (a4 != a2 || &a2[v61] <= a4)
    {
      v62 = a2;
      memmove(a4, a2, 96 * v14);
      a2 = v62;
    }

    v60 = a2;
    v17 = &v9[v61];
    if (v13 < 96 || a2 <= v108)
    {
      goto LABEL_126;
    }

    v120 = v9;
LABEL_66:
    v107 = v60;
    v63 = v60 - 96;
    v64 = v17;
    while (1)
    {
      v105 = v10;
      v17 = v64;
      v65 = *(v64 - 80);
      v110 = *(v64 - 96);
      v111 = v65;
      v66 = *(v64 - 64);
      v67 = *(v64 - 48);
      v68 = *(v64 - 32);
      *(v114 + 9) = *(v64 - 23);
      v113 = v67;
      v114[0] = v68;
      v112 = v66;
      *(v119 + 9) = *(v63 + 73);
      v69 = *(v63 + 4);
      v118 = *(v63 + 3);
      v119[0] = v69;
      v70 = *(v63 + 2);
      v116 = *(v63 + 1);
      v117 = v70;
      v115 = *v63;
      v71 = v113;
      v72 = *(a7 + 928);
      v73 = *(a7 + 936);
      if (*(v113 + 16))
      {
        sub_217F4B224();
        sub_217E98218(&v110, v109);
        sub_217E98218(&v115, v109);
        sub_217F4AB24();
        v74 = sub_217F4B254();
        v75 = -1 << *(v71 + 32);
        v76 = v74 & ~v75;
        if ((*(v71 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76))
        {
          v77 = ~v75;
          while (1)
          {
            v78 = (*(v71 + 48) + 16 * v76);
            v79 = *v78 == a5 && v78[1] == a6;
            if (v79 || (sub_217F4B144() & 1) != 0)
            {
              break;
            }

            v76 = (v76 + 1) & v77;
            if (((*(v71 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
            {
              goto LABEL_80;
            }
          }

          v81 = v73;
          goto LABEL_92;
        }
      }

      else
      {
        sub_217E98218(&v110, v109);
        sub_217E98218(&v115, v109);
      }

LABEL_80:
      v80 = *(&v112 + 1);
      v81 = 1.0;
      if (*(*(&v112 + 1) + 16))
      {
        sub_217F4B224();
        sub_217F4AB24();
        v82 = sub_217F4B254();
        v83 = -1 << *(v80 + 32);
        v84 = v82 & ~v83;
        if ((*(v80 + 56 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84))
        {
          v85 = ~v83;
          while (1)
          {
            v86 = (*(v80 + 48) + 16 * v84);
            v87 = *v86 == a5 && v86[1] == a6;
            if (v87 || (sub_217F4B144() & 1) != 0)
            {
              break;
            }

            v84 = (v84 + 1) & v85;
            if (((*(v80 + 56 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          v81 = v72;
        }
      }

LABEL_92:
      v88 = v118;
      if (*(v118 + 16) && (sub_217F4B224(), sub_217F4AB24(), v89 = sub_217F4B254(), v90 = -1 << *(v88 + 32), v91 = v89 & ~v90, ((*(v88 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) != 0))
      {
        v92 = ~v90;
        while (1)
        {
          v93 = (*(v88 + 48) + 16 * v91);
          v94 = *v93 == a5 && v93[1] == a6;
          if (v94 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v91 = (v91 + 1) & v92;
          if (((*(v88 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
          {
            goto LABEL_101;
          }
        }
      }

      else
      {
LABEL_101:
        v95 = *(&v117 + 1);
        v73 = 1.0;
        if (*(*(&v117 + 1) + 16))
        {
          sub_217F4B224();
          sub_217F4AB24();
          v96 = sub_217F4B254();
          v97 = -1 << *(v95 + 32);
          v98 = v96 & ~v97;
          if ((*(v95 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98))
          {
            v99 = ~v97;
            while (1)
            {
              v100 = (*(v95 + 48) + 16 * v98);
              v101 = *v100 == a5 && v100[1] == a6;
              if (v101 || (sub_217F4B144() & 1) != 0)
              {
                break;
              }

              v98 = (v98 + 1) & v99;
              if (((*(v95 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
              {
                goto LABEL_112;
              }
            }

            v73 = v72;
          }
        }
      }

LABEL_112:
      sub_217E98274(&v115);
      sub_217E98274(&v110);
      v10 = v105 - 96;
      v9 = v120;
      if (v73 * *(&v118 + 1) < v81 * *(&v113 + 1))
      {
        if (v105 < v107 || v10 >= v107 || v105 != v107)
        {
          memmove((v105 - 96), v63, 0x60uLL);
        }

        if (v64 <= v9 || (v60 = v63, v63 <= v108))
        {
          v60 = v63;
          goto LABEL_126;
        }

        goto LABEL_66;
      }

      v64 -= 96;
      if (v105 < v17 || v10 >= v17 || v105 != v17)
      {
        memmove((v105 - 96), v17 - 96, 0x60uLL);
      }

      if (v64 <= v9)
      {
        v17 -= 96;
        v60 = v107;
        goto LABEL_126;
      }
    }
  }

  v15 = a2;
  v16 = 96 * v12;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, v16);
  }

  v17 = &v9[v16];
  if (v11 >= 96 && v15 < v10)
  {
    v18 = v15;
    v19 = *(a7 + 928);
    v20 = *(a7 + 936);
    while (1)
    {
      v21 = v18[1];
      v110 = *v18;
      v111 = v21;
      v22 = v18[2];
      v23 = v18[3];
      v24 = v18[4];
      v106 = v18;
      *(v114 + 9) = *(v18 + 73);
      v113 = v23;
      v114[0] = v24;
      v112 = v22;
      v25 = *(v9 + 1);
      v115 = *v9;
      v116 = v25;
      v26 = *(v9 + 2);
      v27 = *(v9 + 3);
      v28 = *(v9 + 4);
      v120 = v9;
      *(v119 + 9) = *(v9 + 73);
      v118 = v27;
      v119[0] = v28;
      v117 = v26;
      v29 = v113;
      if (!*(v113 + 16))
      {
        break;
      }

      sub_217F4B224();
      sub_217E98218(&v110, v109);
      sub_217E98218(&v115, v109);
      sub_217F4AB24();
      v30 = sub_217F4B254();
      v31 = -1 << *(v29 + 32);
      v32 = v30 & ~v31;
      if (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        goto LABEL_19;
      }

      v33 = ~v31;
      while (1)
      {
        v34 = (*(v29 + 48) + 16 * v32);
        v35 = *v34 == a5 && v34[1] == a6;
        if (v35 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v37 = v20;
LABEL_31:
      v44 = v118;
      if (*(v118 + 16) && (sub_217F4B224(), sub_217F4AB24(), v45 = sub_217F4B254(), v46 = -1 << *(v44 + 32), v47 = v45 & ~v46, ((*(v44 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) != 0))
      {
        v48 = ~v46;
        while (1)
        {
          v49 = (*(v44 + 48) + 16 * v47);
          v50 = *v49 == a5 && v49[1] == a6;
          if (v50 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v47 = (v47 + 1) & v48;
          if (((*(v44 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        v52 = v20;
      }

      else
      {
LABEL_40:
        v51 = *(&v117 + 1);
        v52 = 1.0;
        if (*(*(&v117 + 1) + 16))
        {
          sub_217F4B224();
          sub_217F4AB24();
          v53 = sub_217F4B254();
          v54 = -1 << *(v51 + 32);
          v55 = v53 & ~v54;
          if ((*(v51 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
          {
            v56 = ~v54;
            while (1)
            {
              v57 = (*(v51 + 48) + 16 * v55);
              v58 = *v57 == a5 && v57[1] == a6;
              if (v58 || (sub_217F4B144() & 1) != 0)
              {
                break;
              }

              v55 = (v55 + 1) & v56;
              if (((*(v51 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            v52 = v19;
          }
        }
      }

LABEL_52:
      sub_217E98274(&v115);
      sub_217E98274(&v110);
      v9 = v120;
      if (v52 * *(&v118 + 1) >= v37 * *(&v113 + 1))
      {
        v59 = v120;
        v9 = v120 + 96;
        if (v108 == v120)
        {
          goto LABEL_57;
        }

LABEL_56:
        memmove(v108, v59, 0x60uLL);
        goto LABEL_57;
      }

      v59 = v18;
      v18 += 6;
      if (v108 != v106)
      {
        goto LABEL_56;
      }

LABEL_57:
      if (v9 >= v17)
      {
        v60 = v108 + 96;
        goto LABEL_126;
      }

      v108 += 96;
      if (v18 >= v10)
      {
        goto LABEL_59;
      }
    }

    sub_217E98218(&v110, v109);
    sub_217E98218(&v115, v109);
LABEL_19:
    v36 = *(&v112 + 1);
    v37 = 1.0;
    if (*(*(&v112 + 1) + 16))
    {
      sub_217F4B224();
      sub_217F4AB24();
      v38 = sub_217F4B254();
      v39 = -1 << *(v36 + 32);
      v40 = v38 & ~v39;
      if ((*(v36 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        while (1)
        {
          v42 = (*(v36 + 48) + 16 * v40);
          v43 = *v42 == a5 && v42[1] == a6;
          if (v43 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          if (((*(v36 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v37 = v19;
      }
    }

    goto LABEL_31;
  }

LABEL_59:
  v60 = v108;
LABEL_126:
  v102 = 96 * ((v17 - v9) / 96);
  if (v60 != v9 || v60 >= &v9[v102])
  {
    memmove(v60, v9, v102);
  }

  return 1;
}

uint64_t sub_217F1E144(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = a1;
  v11 = *a1;

  sub_217EB4358(a6, v29);
  v26 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v26 = sub_217F3610C(v26);
  }

  v22 = v10;
  *v10 = v26;
  v12 = (v26 + 16);
  v13 = *(v26 + 2);
  if (v13 < 2)
  {
LABEL_9:

    *v22 = v26;
LABEL_11:
    sub_217EB5CB8(a6);
    return 1;
  }

  else
  {
    while (1)
    {
      v14 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v26[16 * v13];
      v15 = *v10;
      v16 = &v12[2 * v13];
      v17 = *v16;
      v18 = v16[1];
      v30 = (v14 + 96 * *v10);
      v27 = v14 + 96 * v18;
      v28 = (v14 + 96 * v17);

      sub_217EB4358(a6, v29);
      sub_217F1D7EC(v30, v28, v27, a2, a4, a5, a6);
      sub_217EB5CB8(a6);
      if (v7)
      {
        *v22 = v26;
        swift_bridgeObjectRelease_n();
        goto LABEL_11;
      }

      if (v18 < v15)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v12;
      if (v13 - 2 >= *v12)
      {
        goto LABEL_13;
      }

      *v10 = v15;
      v10[1] = v18;
      v20 = v19 - v13;
      if (v19 < v13)
      {
        goto LABEL_14;
      }

      v13 = v19 - 1;
      memmove(v16, v16 + 2, 16 * v20);
      *v12 = v13;
      if (v13 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v26;
    result = sub_217EB5CB8(a6);
    __break(1u);
  }

  return result;
}

uint64_t sub_217F1E334(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v219[0] = MEMORY[0x277D84F90];
  v10 = a3[1];

  if (v10 >= 1)
  {
    sub_217EB4358(a7, &v214);

    v188 = a7;
    sub_217EB4358(a7, &v214);
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
LABEL_4:
    a7 = v11 + 1;
    v192 = v12;
    if (v11 + 1 >= v10)
    {
      v30 = v188;
      v31 = a4;
      goto LABEL_75;
    }

    v13 = v12;
    v14 = *a3;
    v15 = (*a3 + 96 * a7);
    v16 = v15[1];
    v209 = *v15;
    v210 = v16;
    v17 = v15[2];
    v18 = v15[3];
    v19 = v15[4];
    *(v213 + 9) = *(v15 + 73);
    v212 = v18;
    v213[0] = v19;
    v211 = v17;
    v197 = v11;
    v20 = (v14 + 96 * v11);
    v22 = v20[3];
    v21 = v20[4];
    v23 = v20[2];
    *(v218 + 9) = *(v20 + 73);
    v217 = v22;
    v218[0] = v21;
    v216 = v23;
    v24 = v20[1];
    v214 = *v20;
    v215 = v24;
    v25 = v212;
    v26 = *(v188 + 928);
    v27 = *(v188 + 936);
    sub_217E98218(&v209, &v204);
    sub_217E98218(&v214, &v204);
    v28 = v27;
    if ((sub_217EA3608(a5, a6, v25) & 1) == 0)
    {
      if (sub_217EA3608(a5, a6, *(&v211 + 1)))
      {
        v28 = v26;
      }

      else
      {
        v28 = 1.0;
      }
    }

    if (sub_217EA3608(a5, a6, v217))
    {
      sub_217E98274(&v214);
      sub_217E98274(&v209);
      v29 = v27;
    }

    else
    {
      v32 = sub_217EA3608(a5, a6, *(&v216 + 1));
      sub_217E98274(&v214);
      sub_217E98274(&v209);
      if (v32)
      {
        v29 = v26;
      }

      else
      {
        v29 = 1.0;
      }
    }

    v33 = v28 * *(&v212 + 1);
    v34 = v29 * *(&v217 + 1);
    v35 = v197 + 2;
    if (v197 + 2 >= v10)
    {
      v12 = v13;
      a7 = v197 + 2;
      goto LABEL_66;
    }

    while (1)
    {
      v36 = (v14 + 96 * a7);
      a7 = v35;
      v37 = (v14 + 96 * v35);
      v38 = v37[1];
      v200[0] = *v37;
      v200[1] = v38;
      v39 = v37[2];
      v40 = v37[3];
      v41 = v37[4];
      *(v203 + 9) = *(v37 + 73);
      v202 = v40;
      v203[0] = v41;
      v201 = v39;
      v42 = v36[1];
      v204 = *v36;
      v205 = v42;
      v43 = v36[2];
      v44 = v36[3];
      v45 = v36[4];
      *(v208 + 9) = *(v36 + 73);
      v207 = v44;
      v208[0] = v45;
      v206 = v43;
      v46 = v202;
      if (!*(v202 + 16))
      {
        break;
      }

      sub_217F4B224();
      sub_217E98218(v200, v199);
      sub_217E98218(&v204, v199);
      sub_217F4AB24();
      v47 = sub_217F4B254();
      v48 = -1 << *(v46 + 32);
      v49 = v47 & ~v48;
      if (((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
      {
        goto LABEL_27;
      }

      v50 = ~v48;
      while (1)
      {
        v51 = (*(v46 + 48) + 16 * v49);
        v52 = *v51 == a5 && v51[1] == a6;
        if (v52 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v49 = (v49 + 1) & v50;
        if (((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v54 = v27;
LABEL_39:
      v61 = v207;
      if (*(v207 + 16) && (sub_217F4B224(), sub_217F4AB24(), v62 = sub_217F4B254(), v63 = -1 << *(v61 + 32), v64 = v62 & ~v63, ((*(v61 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) != 0))
      {
        v65 = ~v63;
        while (1)
        {
          v66 = (*(v61 + 48) + 16 * v64);
          v67 = *v66 == a5 && v66[1] == a6;
          if (v67 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v64 = (v64 + 1) & v65;
          if (((*(v61 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v69 = v27;
      }

      else
      {
LABEL_48:
        v68 = *(&v206 + 1);
        v69 = 1.0;
        v70 = v192;
        if (!*(*(&v206 + 1) + 16))
        {
          goto LABEL_61;
        }

        sub_217F4B224();
        sub_217F4AB24();
        v71 = sub_217F4B254();
        v72 = -1 << *(v68 + 32);
        v73 = v71 & ~v72;
        if (((*(v68 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
        {
          goto LABEL_61;
        }

        v74 = ~v72;
        while (1)
        {
          v75 = (*(v68 + 48) + 16 * v73);
          v76 = *v75 == a5 && v75[1] == a6;
          if (v76 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v73 = (v73 + 1) & v74;
          if (((*(v68 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        v69 = v26;
      }

LABEL_60:
      v70 = v192;
LABEL_61:
      sub_217E98274(&v204);
      sub_217E98274(v200);
      if (v34 < v33 == v69 * *(&v207 + 1) >= v54 * *(&v202 + 1))
      {
        goto LABEL_64;
      }

      v35 = a7 + 1;
      if (a7 + 1 == v10)
      {
        a7 = v10;
LABEL_64:
        v12 = v70;
LABEL_66:
        v30 = v188;
        v31 = a4;
        v11 = v197;
        if (v34 < v33)
        {
          if (a7 < v197)
          {
            goto LABEL_211;
          }

          if (v197 < a7)
          {
            v77 = 96 * a7 - 96;
            v78 = 96 * v197;
            v79 = a7;
            a7 = v197;
            v80 = v79;
            do
            {
              if (a7 != --v79)
              {
                v81 = *a3;
                if (!*a3)
                {
                  goto LABEL_216;
                }

                v82 = (v81 + v77);
                v206 = *(v81 + v78 + 32);
                v207 = *(v81 + v78 + 48);
                v208[0] = *(v81 + v78 + 64);
                *(v208 + 9) = *(v81 + v78 + 73);
                v204 = *(v81 + v78);
                v205 = *(v81 + v78 + 16);
                memmove((v81 + v78), (v81 + v77), 0x60uLL);
                v82[2] = v206;
                v82[3] = v207;
                v82[4] = v208[0];
                *(v82 + 73) = *(v208 + 9);
                *v82 = v204;
                v82[1] = v205;
              }

              ++a7;
              v77 -= 96;
              v78 += 96;
            }

            while (a7 < v79);
            v30 = v188;
            v31 = a4;
            v12 = v192;
            v11 = v197;
            a7 = v80;
          }
        }

LABEL_75:
        v83 = a3[1];
        if (a7 >= v83)
        {
          goto LABEL_135;
        }

        if (__OFSUB__(a7, v11))
        {
          goto LABEL_210;
        }

        if (a7 - v11 >= v31)
        {
          goto LABEL_135;
        }

        v84 = v11 + v31;
        if (__OFADD__(v11, v31))
        {
          goto LABEL_212;
        }

        if (v84 >= v83)
        {
          v84 = a3[1];
        }

        if (v84 >= v11)
        {
          if (a7 == v84)
          {
            goto LABEL_135;
          }

          v85 = *a3;
          v86 = *(v30 + 928);
          v87 = *(v30 + 936);
          *v194 = v84;
          while (2)
          {
            v189 = a7;
            while (2)
            {
              v88 = (v85 + 96 * a7);
              v89 = v88[1];
              v209 = *v88;
              v210 = v89;
              v90 = v88[2];
              v91 = v88[3];
              v92 = v88[4];
              *(v213 + 9) = *(v88 + 73);
              v212 = v91;
              v213[0] = v92;
              v211 = v90;
              v93 = *(v88 - 5);
              v214 = *(v88 - 6);
              v215 = v93;
              v94 = *(v88 - 4);
              v95 = *(v88 - 3);
              v96 = *(v88 - 2);
              *(v218 + 9) = *(v88 - 23);
              v217 = v95;
              v218[0] = v96;
              v216 = v94;
              v97 = v212;
              if (*(v212 + 16))
              {
                sub_217F4B224();
                sub_217E98218(&v209, &v204);
                sub_217E98218(&v214, &v204);
                sub_217F4AB24();
                v98 = sub_217F4B254();
                v99 = -1 << *(v97 + 32);
                v100 = v98 & ~v99;
                if ((*(v97 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100))
                {
                  v101 = ~v99;
                  while (1)
                  {
                    v102 = (*(v97 + 48) + 16 * v100);
                    v103 = *v102 == a5 && v102[1] == a6;
                    if (v103 || (sub_217F4B144() & 1) != 0)
                    {
                      break;
                    }

                    v100 = (v100 + 1) & v101;
                    if (((*(v97 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
                    {
                      goto LABEL_97;
                    }
                  }

                  v105 = v87;
                  goto LABEL_109;
                }
              }

              else
              {
                sub_217E98218(&v209, &v204);
                sub_217E98218(&v214, &v204);
              }

LABEL_97:
              v104 = *(&v211 + 1);
              v105 = 1.0;
              if (*(*(&v211 + 1) + 16))
              {
                sub_217F4B224();
                sub_217F4AB24();
                v106 = sub_217F4B254();
                v107 = -1 << *(v104 + 32);
                v108 = v106 & ~v107;
                if ((*(v104 + 56 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
                {
                  v109 = ~v107;
                  while (1)
                  {
                    v110 = (*(v104 + 48) + 16 * v108);
                    v111 = *v110 == a5 && v110[1] == a6;
                    if (v111 || (sub_217F4B144() & 1) != 0)
                    {
                      break;
                    }

                    v108 = (v108 + 1) & v109;
                    if (((*(v104 + 56 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) == 0)
                    {
                      goto LABEL_109;
                    }
                  }

                  v105 = v86;
                }
              }

LABEL_109:
              v112 = v217;
              if (*(v217 + 16) && (sub_217F4B224(), sub_217F4AB24(), v113 = sub_217F4B254(), v114 = -1 << *(v112 + 32), v115 = v113 & ~v114, ((*(v112 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) != 0))
              {
                v116 = ~v114;
                while (1)
                {
                  v117 = (*(v112 + 48) + 16 * v115);
                  v118 = *v117 == a5 && v117[1] == a6;
                  if (v118 || (sub_217F4B144() & 1) != 0)
                  {
                    break;
                  }

                  v115 = (v115 + 1) & v116;
                  if (((*(v112 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) == 0)
                  {
                    goto LABEL_118;
                  }
                }

                v120 = v87;
              }

              else
              {
LABEL_118:
                v119 = *(&v216 + 1);
                v120 = 1.0;
                if (*(*(&v216 + 1) + 16))
                {
                  sub_217F4B224();
                  sub_217F4AB24();
                  v121 = sub_217F4B254();
                  v122 = -1 << *(v119 + 32);
                  v123 = v121 & ~v122;
                  if ((*(v119 + 56 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123))
                  {
                    v124 = ~v122;
                    while (1)
                    {
                      v125 = (*(v119 + 48) + 16 * v123);
                      v126 = *v125 == a5 && v125[1] == a6;
                      if (v126 || (sub_217F4B144() & 1) != 0)
                      {
                        break;
                      }

                      v123 = (v123 + 1) & v124;
                      if (((*(v119 + 56 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123) & 1) == 0)
                      {
                        goto LABEL_130;
                      }
                    }

                    v120 = v86;
                  }
                }
              }

LABEL_130:
              sub_217E98274(&v214);
              sub_217E98274(&v209);
              if (v120 * *(&v217 + 1) < v105 * *(&v212 + 1))
              {
                if (!v85)
                {
                  goto LABEL_214;
                }

                --a7;
                v127 = v88 - 6;
                v206 = v88[2];
                v207 = v88[3];
                v208[0] = v88[4];
                *(v208 + 9) = *(v88 + 73);
                v204 = *v88;
                v205 = v88[1];
                v128 = *(v88 - 3);
                v88[2] = *(v88 - 4);
                v88[3] = v128;
                v129 = *(v88 - 1);
                v88[4] = *(v88 - 2);
                v88[5] = v129;
                v130 = *(v88 - 5);
                *v88 = *(v88 - 6);
                v88[1] = v130;
                v127[1] = v205;
                *v127 = v204;
                *(v127 + 73) = *(v208 + 9);
                v127[4] = v208[0];
                v127[3] = v207;
                v127[2] = v206;
                if (a7 != v11)
                {
                  continue;
                }
              }

              break;
            }

            a7 = v189 + 1;
            if (v189 + 1 != *v194)
            {
              continue;
            }

            break;
          }

          a7 = *v194;
          v12 = v192;
LABEL_135:
          if (a7 < v11)
          {
            goto LABEL_209;
          }

          v131 = v12;
          v190 = a7;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v12 = v131;
          }

          else
          {
            v12 = sub_217E8DA14(0, *(v131 + 2) + 1, 1, v131);
          }

          v133 = *(v12 + 2);
          v132 = *(v12 + 3);
          a7 = v133 + 1;
          if (v133 >= v132 >> 1)
          {
            v12 = sub_217E8DA14((v132 > 1), v133 + 1, 1, v12);
          }

          *(v12 + 2) = a7;
          v134 = v12 + 32;
          v135 = &v12[16 * v133 + 32];
          *v135 = v11;
          *(v135 + 1) = v190;
          v187 = *a1;
          if (!*a1)
          {
            goto LABEL_217;
          }

          if (v133)
          {
            v193 = v12;
            v186 = v12 + 32;
            while (1)
            {
              v136 = a7 - 1;
              if (a7 >= 4)
              {
                break;
              }

              if (a7 == 3)
              {
                v137 = *(v12 + 4);
                v138 = *(v12 + 5);
                v147 = __OFSUB__(v138, v137);
                v139 = v138 - v137;
                v140 = v147;
LABEL_156:
                if (v140)
                {
                  goto LABEL_199;
                }

                v153 = &v12[16 * a7];
                v155 = *v153;
                v154 = *(v153 + 1);
                v156 = __OFSUB__(v154, v155);
                v157 = v154 - v155;
                v158 = v156;
                if (v156)
                {
                  goto LABEL_201;
                }

                v159 = &v134[16 * v136];
                v161 = *v159;
                v160 = *(v159 + 1);
                v147 = __OFSUB__(v160, v161);
                v162 = v160 - v161;
                if (v147)
                {
                  goto LABEL_204;
                }

                if (__OFADD__(v157, v162))
                {
                  goto LABEL_206;
                }

                if (v157 + v162 >= v139)
                {
                  if (v139 < v162)
                  {
                    v136 = a7 - 2;
                  }

                  goto LABEL_178;
                }

                goto LABEL_171;
              }

              if (a7 < 2)
              {
                goto LABEL_207;
              }

              v163 = &v12[16 * a7];
              v165 = *v163;
              v164 = *(v163 + 1);
              v147 = __OFSUB__(v164, v165);
              v157 = v164 - v165;
              v158 = v147;
LABEL_171:
              if (v158)
              {
                goto LABEL_203;
              }

              v166 = &v134[16 * v136];
              v168 = *v166;
              v167 = *(v166 + 1);
              v147 = __OFSUB__(v167, v168);
              v169 = v167 - v168;
              if (v147)
              {
                goto LABEL_205;
              }

              if (v169 < v157)
              {
                goto LABEL_3;
              }

LABEL_178:
              if (v136 - 1 >= a7)
              {
                __break(1u);
LABEL_194:
                __break(1u);
LABEL_195:
                __break(1u);
LABEL_196:
                __break(1u);
LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
LABEL_199:
                __break(1u);
LABEL_200:
                __break(1u);
LABEL_201:
                __break(1u);
LABEL_202:
                __break(1u);
LABEL_203:
                __break(1u);
LABEL_204:
                __break(1u);
LABEL_205:
                __break(1u);
LABEL_206:
                __break(1u);
LABEL_207:
                __break(1u);
LABEL_208:
                __break(1u);
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
LABEL_211:
                __break(1u);
LABEL_212:
                __break(1u);
                goto LABEL_213;
              }

              v174 = *a3;
              if (!*a3)
              {
                goto LABEL_215;
              }

              v175 = &v134[16 * v136 - 16];
              v176 = *v175;
              v177 = v136;
              v178 = &v134[16 * v136];
              v179 = *(v178 + 1);
              v198 = (v174 + 96 * *v175);
              v195 = (v174 + 96 * *v178);
              v180 = v174 + 96 * v179;

              a7 = v188;
              sub_217EB4358(v188, &v214);
              sub_217F1D7EC(v198, v195, v180, v187, a5, a6, v188);
              if (v196)
              {
                sub_217EB5CB8(v188);
                v219[0] = v193;

                goto LABEL_191;
              }

              sub_217EB5CB8(v188);

              if (v179 < v176)
              {
                goto LABEL_194;
              }

              v181 = *(v193 + 16);
              if (v177 > v181)
              {
                goto LABEL_195;
              }

              *v175 = v176;
              *(v175 + 1) = v179;
              if (v177 >= v181)
              {
                goto LABEL_196;
              }

              a7 = v181 - 1;
              memmove(v178, v178 + 16, 16 * (v181 - 1 - v177));
              v12 = v193;
              *(v193 + 16) = v181 - 1;
              v134 = v186;
              if (v181 <= 2)
              {
                goto LABEL_3;
              }
            }

            v141 = &v134[16 * a7];
            v142 = *(v141 - 8);
            v143 = *(v141 - 7);
            v147 = __OFSUB__(v143, v142);
            v144 = v143 - v142;
            if (v147)
            {
              goto LABEL_197;
            }

            v146 = *(v141 - 6);
            v145 = *(v141 - 5);
            v147 = __OFSUB__(v145, v146);
            v139 = v145 - v146;
            v140 = v147;
            if (v147)
            {
              goto LABEL_198;
            }

            v148 = &v12[16 * a7];
            v150 = *v148;
            v149 = *(v148 + 1);
            v147 = __OFSUB__(v149, v150);
            v151 = v149 - v150;
            if (v147)
            {
              goto LABEL_200;
            }

            v147 = __OFADD__(v139, v151);
            v152 = v139 + v151;
            if (v147)
            {
              goto LABEL_202;
            }

            if (v152 >= v144)
            {
              v170 = &v134[16 * v136];
              v172 = *v170;
              v171 = *(v170 + 1);
              v147 = __OFSUB__(v171, v172);
              v173 = v171 - v172;
              if (v147)
              {
                goto LABEL_208;
              }

              if (v139 < v173)
              {
                v136 = a7 - 2;
              }

              goto LABEL_178;
            }

            goto LABEL_156;
          }

LABEL_3:
          v11 = v190;
          v10 = a3[1];
          if (v190 >= v10)
          {
            v219[0] = v12;
            a7 = v188;
            goto LABEL_189;
          }

          goto LABEL_4;
        }

LABEL_213:
        __break(1u);
LABEL_214:

        sub_217EB5CB8(v188);

        sub_217EB5CB8(v188);
        __break(1u);
LABEL_215:

        sub_217EB5CB8(v188);

        sub_217EB5CB8(v188);
        __break(1u);
LABEL_216:

        sub_217EB5CB8(v188);

        sub_217EB5CB8(v188);
        __break(1u);
LABEL_217:

        sub_217EB5CB8(v188);

        sub_217EB5CB8(v188);
        __break(1u);
LABEL_218:

        sub_217EB5CB8(a7);

        result = sub_217EB5CB8(a7);
        __break(1u);
        return result;
      }
    }

    sub_217E98218(v200, v199);
    sub_217E98218(&v204, v199);
LABEL_27:
    v53 = *(&v201 + 1);
    v54 = 1.0;
    if (*(*(&v201 + 1) + 16))
    {
      sub_217F4B224();
      sub_217F4AB24();
      v55 = sub_217F4B254();
      v56 = -1 << *(v53 + 32);
      v57 = v55 & ~v56;
      if ((*(v53 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
      {
        v58 = ~v56;
        while (1)
        {
          v59 = (*(v53 + 48) + 16 * v57);
          v60 = *v59 == a5 && v59[1] == a6;
          if (v60 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v57 = (v57 + 1) & v58;
          if (((*(v53 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        v54 = v26;
      }
    }

    goto LABEL_39;
  }

  sub_217EB4358(a7, &v214);

  sub_217EB4358(a7, &v214);
LABEL_189:
  v182 = *a1;
  if (!*a1)
  {
    goto LABEL_218;
  }

  sub_217EB4358(a7, &v214);
  sub_217F1E144(v219, v182, a3, a5, a6, a7);
  sub_217EB5CB8(a7);

LABEL_191:

  sub_217EB5CB8(a7);

  return sub_217EB5CB8(a7);
}

uint64_t sub_217F1F2EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v71 = result;
  if (a3 != a2)
  {
    v9 = a3;
    v10 = *a4;
    v11 = *(a7 + 928);
    v12 = *(a7 + 936);
LABEL_5:
    v57 = v9;
    while (1)
    {
      v13 = (v10 + 96 * v9);
      v14 = v13[1];
      v63[0] = *v13;
      v63[1] = v14;
      v15 = v13[2];
      v16 = v13[3];
      v17 = v13[4];
      *(v66 + 9) = *(v13 + 73);
      v65 = v16;
      v66[0] = v17;
      v64 = v15;
      v18 = *(v13 - 5);
      v67[0] = *(v13 - 6);
      v67[1] = v18;
      v19 = *(v13 - 4);
      v20 = *(v13 - 3);
      v21 = *(v13 - 2);
      *(v70 + 9) = *(v13 - 23);
      v69 = v20;
      v70[0] = v21;
      v68 = v19;
      v22 = v65;
      if (!*(v65 + 16))
      {
        break;
      }

      sub_217F4B224();
      sub_217E98218(v63, &v58);
      sub_217E98218(v67, &v58);
      sub_217F4AB24();
      v23 = sub_217F4B254();
      v24 = -1 << *(v22 + 32);
      v25 = v23 & ~v24;
      if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_17;
      }

      v26 = ~v24;
      while (1)
      {
        v27 = (*(v22 + 48) + 16 * v25);
        v28 = *v27 == a5 && v27[1] == a6;
        if (v28 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v30 = v12;
LABEL_29:
      v37 = v69;
      if (*(v69 + 16) && (sub_217F4B224(), sub_217F4AB24(), v38 = sub_217F4B254(), v39 = -1 << *(v37 + 32), v40 = v38 & ~v39, ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0))
      {
        v41 = ~v39;
        while (1)
        {
          v42 = (*(v37 + 48) + 16 * v40);
          v43 = *v42 == a5 && v42[1] == a6;
          if (v43 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        v45 = v12;
      }

      else
      {
LABEL_38:
        v44 = *(&v68 + 1);
        v45 = 1.0;
        if (*(*(&v68 + 1) + 16))
        {
          sub_217F4B224();
          sub_217F4AB24();
          v46 = sub_217F4B254();
          v47 = -1 << *(v44 + 32);
          v48 = v46 & ~v47;
          if ((*(v44 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48))
          {
            v49 = ~v47;
            while (1)
            {
              v50 = (*(v44 + 48) + 16 * v48);
              v51 = *v50 == a5 && v50[1] == a6;
              if (v51 || (sub_217F4B144() & 1) != 0)
              {
                break;
              }

              v48 = (v48 + 1) & v49;
              if (((*(v44 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
              {
                goto LABEL_50;
              }
            }

            v45 = v11;
          }
        }
      }

LABEL_50:
      sub_217E98274(v67);
      result = sub_217E98274(v63);
      if (v45 * *(&v69 + 1) >= v30 * *(&v65 + 1))
      {
LABEL_4:
        v9 = v57 + 1;
        if (v57 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v10)
      {
        __break(1u);
        return result;
      }

      --v9;
      v52 = v13 - 6;
      v60 = v13[2];
      v61 = v13[3];
      v62[0] = v13[4];
      *(v62 + 9) = *(v13 + 73);
      v58 = *v13;
      v59 = v13[1];
      v53 = *(v13 - 3);
      v13[2] = *(v13 - 4);
      v13[3] = v53;
      v54 = *(v13 - 1);
      v13[4] = *(v13 - 2);
      v13[5] = v54;
      v55 = *(v13 - 5);
      *v13 = *(v13 - 6);
      v13[1] = v55;
      v52[1] = v59;
      *v52 = v58;
      *(v52 + 73) = *(v62 + 9);
      v52[4] = v62[0];
      v52[3] = v61;
      v52[2] = v60;
      if (v9 == v71)
      {
        goto LABEL_4;
      }
    }

    sub_217E98218(v63, &v58);
    sub_217E98218(v67, &v58);
LABEL_17:
    v29 = *(&v64 + 1);
    v30 = 1.0;
    if (*(*(&v64 + 1) + 16))
    {
      sub_217F4B224();
      sub_217F4AB24();
      v31 = sub_217F4B254();
      v32 = -1 << *(v29 + 32);
      v33 = v31 & ~v32;
      if ((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
      {
        v34 = ~v32;
        while (1)
        {
          v35 = (*(v29 + 48) + 16 * v33);
          v36 = *v35 == a5 && v35[1] == a6;
          if (v36 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v29 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v30 = v11;
      }
    }

    goto LABEL_29;
  }

  return result;
}

uint64_t sub_217F1F780(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[1];

  sub_217EB4358(a4, v14);

  sub_217EB4358(a4, v14);
  result = sub_217F4B0F4();
  if (result >= v8)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8)
      {

        sub_217EB4358(a4, v14);
        sub_217F1F2EC(0, v8, 1, a1, a2, a3, a4);
        sub_217EB5CB8(a4);
        swift_bridgeObjectRelease_n();
LABEL_11:
        sub_217EB5CB8(a4);

        return sub_217EB5CB8(a4);
      }

LABEL_10:

      goto LABEL_11;
    }
  }

  else
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        v12 = sub_217F4AC54();
        *(v12 + 16) = v11;
      }

      v13[0] = (v12 + 32);
      v13[1] = v11;

      sub_217EB4358(a4, v14);
      sub_217F1E334(v13, v14, a1, v10, a2, a3, a4);
      sub_217EB5CB8(a4);

      *(v12 + 16) = 0;

      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_217F1F93C(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;

  sub_217EB4358(a4, v12);

  sub_217EB4358(a4, v12);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_217F372C4(v8);
  }

  v9 = *(v8 + 2);
  v11[0] = (v8 + 32);
  v11[1] = v9;

  sub_217EB4358(a4, v12);
  sub_217F1F780(v11, a2, a3, a4);
  sub_217EB5CB8(a4);

  *a1 = v8;

  sub_217EB5CB8(a4);

  return sub_217EB5CB8(a4);
}

_OWORD *sub_217F1FA44(_OWORD *result, uint64_t a2, uint64_t a3, char a4)
{
  v139 = *MEMORY[0x277D85DE8];
  v5 = result[3];
  v136 = result[2];
  v137 = v5;
  *v138 = result[4];
  *&v138[9] = *(result + 73);
  v6 = result[1];
  v134 = *result;
  v135 = v6;
  v8 = *v4;
  v7 = *(v4 + 8);
  LODWORD(v9) = *(v4 + 24);
  if (v9 > 3)
  {
LABEL_11:
    if (v9 > 5)
    {
      goto LABEL_41;
    }

    if (v9 != 4)
    {
LABEL_52:
      v46 = 1 << *(*&v8 + 32);
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      else
      {
        v47 = -1;
      }

      v48 = v47 & *(*&v8 + 64);
      v49 = (v46 + 63) >> 6;
      v50 = v136 + 56;

      v51 = 0;
      while (1)
      {
        if (v48)
        {
          v52 = v48;
          goto LABEL_63;
        }

        do
        {
          v53 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
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
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
          }

          if (v53 >= v49)
          {
          }

          v52 = *(*&v8 + 64 + 8 * v53);
          ++v51;
        }

        while (!v52);
        v51 = v53;
LABEL_63:
        v48 = (v52 - 1) & v52;
        if (*(v136 + 16))
        {
          v116 = (v52 - 1) & v52;
          v54 = __clz(__rbit64(v52)) | (v51 << 6);
          v55 = (*(*&v8 + 48) + 16 * v54);
          v57 = *v55;
          v56 = v55[1];
          v58 = *(*&v8 + 56) + (v54 << 6);
          v113 = *(v58 + 16);
          v114 = *(v58 + 40);
          sub_217F4B224();

          sub_217F4AB24();
          v59 = sub_217F4B254();
          v60 = -1 << *(v136 + 32);
          v61 = v59 & ~v60;
          if ((*(v50 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
          {
            v62 = ~v60;
            while (1)
            {
              v63 = (*(v136 + 48) + 16 * v61);
              v64 = *v63 == v57 && v63[1] == v56;
              if (v64 || (sub_217F4B144() & 1) != 0)
              {
                break;
              }

              v61 = (v61 + 1) & v62;
              if (((*(v50 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
              {
                goto LABEL_56;
              }
            }

            if (v114)
            {

              v65 = sub_217F3AFAC(a2, v57, v56);

              if (v65 >= v113)
              {
                sub_217F2BB74();
                swift_allocError();
                *v66 = v57;
                *(v66 + 8) = v56;
                *(v66 + 24) = 0;
                *(v66 + 32) = 0;
                *(v66 + 16) = v113;
                *(v66 + 40) = 5;
                swift_willThrow();
              }
            }
          }

LABEL_56:

          v48 = v116;
        }
      }
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_175;
    }

    v15 = *(v4 + 16);
    v16 = *(a2 + 16);
    if (v16 >= v7)
    {
      v17 = v16 - v7;
    }

    else
    {
      v17 = 0;
    }

    v18 = MEMORY[0x277D84FA0];
    v119 = MEMORY[0x277D84FA0];
    sub_217F2BB04(*&v8, v7, v15, 4);

    if (v17 != v16)
    {
      v20 = a2;
      *&v21 = v8;
      if (v7 >= v16)
      {
        v22 = v16;
      }

      else
      {
        v22 = v7;
      }

      v23 = (96 * v16 - 96 * v22 + v20 + 32);
      do
      {
        if (v17 >= v16)
        {
          goto LABEL_160;
        }

        v24 = v23[3];
        v131 = v23[2];
        v132 = v24;
        *v133 = v23[4];
        *&v133[9] = *(v23 + 73);
        v25 = *v23;
        v26 = v23[1];
        v23 += 6;
        v129 = v25;
        v130 = v26;
        ++v17;
        v27 = v131;
        sub_217F2BB04(v21, v7, v15, 4);
        sub_217E98218(&v129, &v120);
        v28 = sub_217F36A9C(v27, v15);
        sub_217F2EC1C(v28);
        sub_217E98274(&v129);
        --v22;
      }

      while (v22);
      v18 = v119;
      v8 = *&v21;
    }

    swift_unknownObjectRelease();
    v29 = sub_217F36A9C(v136, v15);

    v30 = *(sub_217ECE09C(v29, v18) + 16);

    v31 = v30;
    v32 = sub_217F36A9C(v29, v18);

    v33 = v32[2];

    v34 = v33;
    if (v30)
    {
      v35 = v33 / v31;
    }

    else
    {
      v35 = 0.0;
    }

    if (v35 <= v8)
    {
      return result;
    }

    if (v31 <= -9.22337204e18)
    {
      goto LABEL_176;
    }

    if (v31 >= 9.22337204e18)
    {
      goto LABEL_177;
    }

    if (v34 <= -9.22337204e18)
    {
      goto LABEL_178;
    }

    if (v34 >= 9.22337204e18)
    {
      goto LABEL_179;
    }

    v36 = v34;
    sub_217F2BB74();
    swift_allocError();
    *v37 = v7;
    *(v37 + 8) = v31;
    *(v37 + 16) = v36;
    *(v37 + 24) = v35;
    *(v37 + 32) = v8;
    v38 = 2;
    goto LABEL_92;
  }

  if (*(v4 + 24) <= 1u)
  {
    if (!*(v4 + 24))
    {
      if (a4 & 1) != 0 || (v138[0])
      {
        return result;
      }

      v9 = 0;
      v10 = (a2 + 96);
      v11 = *(a2 + 16) + 1;
      while (--v11)
      {
        v12 = *v10;
        v10 += 96;
        v13 = (v12 & 1) == 0;
        v14 = __OFADD__(v9, v13);
        v9 += v13;
        if (v14)
        {
          __break(1u);
          goto LABEL_11;
        }
      }

      if (v9 < *&v8)
      {
        return result;
      }

      sub_217F2BB74();
      swift_allocError();
      *v99 = v8;
      *(v99 + 8) = 0u;
      *(v99 + 24) = 0u;
      *(v99 + 40) = 0;
      return swift_willThrow();
    }

    if ((v138[1] & 1) == 0)
    {
      return result;
    }

    v42 = 0;
    v43 = (a2 + 97);
    v44 = *(a2 + 16) + 1;
    while (--v44)
    {
      v45 = *v43;
      v43 += 96;
      v14 = __OFADD__(v42, v45);
      v42 += v45;
      if (v14)
      {
        __break(1u);
        goto LABEL_52;
      }
    }

    if (v42 < *&v8)
    {
      return result;
    }

    sub_217F2BB74();
    swift_allocError();
    *v37 = v8;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    v38 = 3;
LABEL_92:
    *(v37 + 40) = v38;
    return swift_willThrow();
  }

  if (v9 != 2)
  {
    if (*(v7 + 16))
    {
      v68 = sub_217E8E88C(v135, *(&v135 + 1));
      if (v69)
      {
        v8 = *(*(v7 + 56) + 8 * v68);
      }
    }

    result = sub_217F3AF2C(a2, &v134);
    if (result < *&v8)
    {
      return result;
    }

    sub_217F2BB74();
    swift_allocError();
    *v37 = v8;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    v38 = 1;
    goto LABEL_92;
  }

  if ((v138[3] & 1) == 0)
  {
    return result;
  }

  v9 = 0;
  v39 = (a2 + 99);
  v40 = *(a2 + 16) + 1;
  do
  {
    if (!--v40)
    {
      if (v9 < *&v8)
      {
        return result;
      }

      sub_217F2BB74();
      swift_allocError();
      *v37 = v8;
      *(v37 + 8) = 0u;
      *(v37 + 24) = 0u;
      v38 = 4;
      goto LABEL_92;
    }

    v41 = *v39;
    v39 += 96;
    v14 = __OFADD__(v9, v41);
    v9 += v41;
  }

  while (!v14);
  __break(1u);
LABEL_41:
  if (v9 == 6)
  {
    if ((v138[2] & 1) == 0 || (v138[0] & 1) != 0 || *&v8 > a3)
    {
      return result;
    }

    sub_217F2BB74();
    swift_allocError();
    *v37 = v8;
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    v38 = 6;
    goto LABEL_92;
  }

  v70 = *&v138[16];
  if (*&v138[16] >> 60 == 15)
  {
    return result;
  }

  v71 = *&v138[8];
  v73 = *(a2 + 16);
  sub_217EA34BC(*&v138[8], *&v138[16]);
  if (!v73)
  {
LABEL_155:
    v100 = v71;
    return sub_217EB9ED4(v100, v70);
  }

  v74 = 0;
  v75 = *&v138[16] >> 62;
  v76 = a2 + 32;
  v107 = HIDWORD(*&v138[8]);
  v105 = *&v138[12] - *&v138[8];
  v77 = __OFSUB__(*&v138[12], *&v138[8]);
  v104 = v77;
  v108 = *&v138[8] >> 32;
  v109 = *&v138[8];
  v118 = v8;
  v112 = *&v138[8];
  v102 = a2 + 32;
  v103 = v73;
  v115 = *&v138[16] >> 62;
  while (1)
  {
    v78 = (v76 + 96 * v74);
    *&v133[9] = *(v78 + 73);
    v79 = v78[4];
    v132 = v78[3];
    *v133 = v79;
    v80 = v78[1];
    v131 = v78[2];
    v129 = *v78;
    v130 = v80;
    v81 = *&v133[16];
    if (*&v133[16] >> 60 != 15)
    {
      v82 = *&v133[8];
      v83 = *&v133[16] >> 62;
      v110 = HIDWORD(*&v133[8]);
      if ((*&v133[16] >> 62) > 1)
      {
        if (v83 == 2)
        {
          v86 = *(*&v133[8] + 16);
          v85 = *(*&v133[8] + 24);
          v14 = __OFSUB__(v85, v86);
          v84 = v85 - v86;
          if (v14)
          {
            goto LABEL_182;
          }
        }

        else
        {
          v84 = 0;
        }
      }

      else if (v83)
      {
        LODWORD(v84) = *&v133[12] - *&v133[8];
        if (__OFSUB__(*&v133[12], *&v133[8]))
        {
          goto LABEL_181;
        }

        v84 = v84;
      }

      else
      {
        v84 = v133[22];
      }

      v117 = v84;
      if (v75 > 1)
      {
        if (v75 != 2)
        {
          if (!v84)
          {
            goto LABEL_115;
          }

          goto LABEL_95;
        }

        v89 = *(v71 + 16);
        v88 = *(v71 + 24);
        v14 = __OFSUB__(v88, v89);
        v87 = v88 - v89;
        if (v14)
        {
          goto LABEL_183;
        }
      }

      else
      {
        v87 = BYTE6(v70);
        if (v75)
        {
          v87 = v105;
          if (v104)
          {
            goto LABEL_184;
          }
        }
      }

      if (v117 == v87)
      {
        break;
      }
    }

LABEL_95:
    if (++v74 == v73)
    {
      goto LABEL_155;
    }
  }

  if (v117 < 0)
  {
    goto LABEL_180;
  }

LABEL_115:
  v106 = v74;
  result = sub_217E98218(&v129, &v120);
  v91 = 0;
  v92 = 0;
  while (2)
  {
    if (v117 == v91)
    {
      sub_217E98274(&v129);
      sub_217F2BB74();
      swift_allocError();
      *v101 = 0u;
      *(v101 + 16) = 0u;
      *(v101 + 32) = 0;
      *(v101 + 40) = 7;
      swift_willThrow();
      v100 = v112;
      return sub_217EB9ED4(v100, v70);
    }

    if (__OFADD__(v91, 1))
    {
      goto LABEL_161;
    }

    if (v83 <= 1)
    {
      if (!v83)
      {
        if (v91 >= BYTE6(v81))
        {
          goto LABEL_164;
        }

        LOWORD(v120) = v82;
        BYTE2(v120) = BYTE2(v82);
        HIBYTE(v120) = BYTE3(v82);
        v121 = v110;
        LOBYTE(v122) = BYTE5(v82);
        HIBYTE(v122) = BYTE6(v82);
        v123 = HIBYTE(v82);
        v124 = v81;
        v125 = BYTE2(v81);
        v126 = BYTE3(v81);
        v127 = BYTE4(v81);
        v128 = BYTE5(v81);
        v93 = *(&v120 + v91);
LABEL_134:
        if (v115 > 1)
        {
          if (v115 != 2)
          {
            goto LABEL_186;
          }

          if (v91 < *(v112 + 16))
          {
            goto LABEL_170;
          }

          if (v91 >= *(v112 + 24))
          {
            goto LABEL_172;
          }

          result = sub_217F4A994();
          if (!result)
          {
            goto LABEL_190;
          }

          v97 = result;
          result = sub_217F4A9A4();
          v98 = v91 - result;
          if (__OFSUB__(v91, result))
          {
            goto LABEL_174;
          }
        }

        else
        {
          if (!v115)
          {
            if (v91 >= BYTE6(v70))
            {
              goto LABEL_168;
            }

            v120 = v112;
            v121 = v107;
            v122 = *(&v112 + 5);
            v123 = HIBYTE(v112);
            v124 = v70;
            v125 = BYTE2(v70);
            v126 = BYTE3(v70);
            v127 = BYTE4(v70);
            v128 = BYTE5(v70);
            v96 = *(&v120 + v91);
LABEL_150:
            v90.i32[0] = v96 ^ v93;
            v90 = vcnt_s8(v90);
            v90.i16[0] = vaddlv_u8(v90);
            v14 = __OFADD__(v92, v90.u32[0]);
            v92 += v90.u32[0];
            if (v14)
            {
              goto LABEL_162;
            }

            ++v91;
            LODWORD(v83) = v81 >> 62;
            if (v92 >= *&v118)
            {
              sub_217E98274(&v129);
              v71 = v112;
              v76 = v102;
              v73 = v103;
              v74 = v106;
              LODWORD(v75) = v115;
              goto LABEL_95;
            }

            continue;
          }

          if (v91 < v109 || v91 >= v108)
          {
            goto LABEL_171;
          }

          result = sub_217F4A994();
          if (!result)
          {
            goto LABEL_189;
          }

          v97 = result;
          result = sub_217F4A9A4();
          v98 = v91 - result;
          if (__OFSUB__(v91, result))
          {
            goto LABEL_173;
          }
        }

        v96 = *(v97 + v98);
        goto LABEL_150;
      }

      if (v91 < v82 || v91 >= v82 >> 32)
      {
        goto LABEL_165;
      }

      result = sub_217F4A994();
      if (!result)
      {
        goto LABEL_187;
      }

      v94 = result;
      result = sub_217F4A9A4();
      v95 = v91 - result;
      if (__OFSUB__(v91, result))
      {
        goto LABEL_167;
      }

LABEL_133:
      v93 = *(v94 + v95);
      goto LABEL_134;
    }

    break;
  }

  if (v83 == 2)
  {
    if (v91 < *(v82 + 16))
    {
      goto LABEL_163;
    }

    if (v91 >= *(v82 + 24))
    {
      goto LABEL_166;
    }

    result = sub_217F4A994();
    if (!result)
    {
      goto LABEL_188;
    }

    v94 = result;
    result = sub_217F4A9A4();
    v95 = v91 - result;
    if (__OFSUB__(v91, result))
    {
      goto LABEL_169;
    }

    goto LABEL_133;
  }

  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
  return result;
}

uint64_t sub_217F2064C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  v4 = 0;
  v5 = a1 + 32;
  v19 = *(a1 + 16);
  do
  {
    v6 = (v5 + 96 * v4);
    if (*(v6 + 64) == 1)
    {
      v7 = *v6;
      v8 = v6[1];
      v21 = v4;
      v9 = v6[9];
      v22 = v6[10];
      swift_beginAccess();
      v10 = *(v3 + 16);
      if (!*(v10 + 16))
      {
        return v21;
      }

      sub_217F4B224();

      sub_217EA34A8(v9, v22);

      sub_217F4AB24();
      v11 = sub_217F4B254();
      v12 = -1 << *(v10 + 32);
      v13 = v11 & ~v12;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
LABEL_15:

        swift_bridgeObjectRelease_n();

        sub_217EB9ED4(v9, v22);
        return v21;
      }

      v14 = ~v12;
      while (1)
      {
        v15 = (*(v10 + 48) + 16 * v13);
        v16 = *v15 == v7 && v15[1] == v8;
        if (v16 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      swift_bridgeObjectRelease_n();

      sub_217EB9ED4(v9, v22);
      v2 = v19;
      v3 = a2;
      v5 = v18;
      v4 = v21;
    }

    ++v4;
  }

  while (v4 != v2);
  return 0;
}

uint64_t sub_217F208C4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v17 = result;
  v4 = result;
  v5 = a3 >> 1;
  v18 = a3 >> 1;
  while (1)
  {
    if (a2 == v5)
    {
      return 0;
    }

    if (a2 >= v5)
    {
      break;
    }

    v7 = v4 + 96 * a2;
    if (*(v7 + 64) == 1)
    {
      v8 = *v7;
      v9 = *(v7 + 8);
      v20 = a2;
      v21 = *(v7 + 72);
      v22 = *(v7 + 80);
      swift_beginAccess();
      v10 = *(a4 + 16);
      if (!*(v10 + 16))
      {
        return v20;
      }

      sub_217F4B224();

      sub_217EA34A8(v21, v22);

      sub_217F4AB24();
      v11 = sub_217F4B254();
      v12 = -1 << *(v10 + 32);
      v13 = v11 & ~v12;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
LABEL_17:

        swift_bridgeObjectRelease_n();

        sub_217EB9ED4(v21, v22);
        return v20;
      }

      v14 = ~v12;
      while (1)
      {
        v15 = (*(v10 + 48) + 16 * v13);
        v16 = *v15 == v8 && v15[1] == v9;
        if (v16 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      swift_bridgeObjectRelease_n();

      result = sub_217EB9ED4(v21, v22);
      v4 = v17;
      v5 = v18;
      a2 = v20;
    }

    if (__OFADD__(a2++, 1))
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_217F20B38(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v5 = a3 >> 1;
  v37 = a4;
  result = swift_beginAccess();
  v7 = MEMORY[0x277D84F90];
  if (v5 != a2)
  {
    v8 = a2;
    v28 = a2;
    do
    {
      v9 = v8;
      while (1)
      {
        if (v9 < a2 || v8 >= v5)
        {
          __break(1u);
          return result;
        }

        v10 = (a1 + 96 * v8);
        *(v35 + 9) = *(v10 + 73);
        v11 = v10[4];
        v34 = v10[3];
        v35[0] = v11;
        v12 = v10[2];
        v32 = v10[1];
        v33 = v12;
        v31 = *v10;
        ++v8;
        v13 = *v37;
        if (!*(*v37 + 16))
        {
          break;
        }

        v14 = v31;
        sub_217F4B224();
        sub_217E98218(&v31, v30);

        sub_217F4AB24();
        v15 = sub_217F4B254();
        v16 = -1 << *(v13 + 32);
        v17 = v15 & ~v16;
        if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
LABEL_16:

          goto LABEL_17;
        }

        v18 = ~v16;
        while (1)
        {
          v19 = (*(v13 + 48) + 16 * v17);
          v20 = *v19 == v14 && v19[1] == *(&v14 + 1);
          if (v20 || (sub_217F4B144() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        result = sub_217E98274(&v31);
        a2 = v28;
        if (v8 == v5)
        {
          return v7;
        }
      }

      sub_217E98218(&v31, v30);
LABEL_17:
      result = swift_isUniquelyReferenced_nonNull_native();
      v36 = v7;
      if ((result & 1) == 0)
      {
        result = sub_217EA0CE0(0, *(v7 + 16) + 1, 1);
        v7 = v36;
      }

      a2 = v28;
      v22 = *(v7 + 16);
      v21 = *(v7 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_217EA0CE0((v21 > 1), v22 + 1, 1);
        v7 = v36;
      }

      *(v7 + 16) = v22 + 1;
      v23 = (v7 + 96 * v22);
      v24 = v32;
      v23[2] = v31;
      v23[3] = v24;
      v25 = v33;
      v26 = v34;
      v27 = v35[0];
      *(v23 + 105) = *(v35 + 9);
      v23[5] = v26;
      v23[6] = v27;
      v23[4] = v25;
    }

    while (v8 != v5);
  }

  return v7;
}

uint64_t sub_217F20DB0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = a3;
  v5 = a2;
  v6 = 0;
  v7 = a1 + 32;
  v21 = *(a1 + 16);
  do
  {
    v8 = (v7 + 96 * v6);
    if (*(v8 + 66) == 1 && ((*(v8 + 64) ^ v5) & 1) == 0)
    {
      v9 = *v8;
      v10 = v8[1];
      v24 = v6;
      v11 = v8[9];
      v25 = v8[10];
      swift_beginAccess();
      v12 = *(v4 + 16);
      if (!*(v12 + 16))
      {
        return v24;
      }

      sub_217F4B224();

      sub_217EA34A8(v11, v25);

      sub_217F4AB24();
      v13 = sub_217F4B254();
      v14 = -1 << *(v12 + 32);
      v15 = v13 & ~v14;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
LABEL_16:

        swift_bridgeObjectRelease_n();

        sub_217EB9ED4(v11, v25);
        return v24;
      }

      v16 = ~v14;
      while (1)
      {
        v17 = (*(v12 + 48) + 16 * v15);
        v18 = *v17 == v9 && v17[1] == v10;
        if (v18 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      swift_bridgeObjectRelease_n();

      sub_217EB9ED4(v11, v25);
      v4 = a3;
      v5 = a2;
      v7 = v20;
      v3 = v21;
      v6 = v24;
    }

    ++v6;
  }

  while (v6 != v3);
  return 0;
}

uint64_t sub_217F21044(uint64_t result, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v19 = result;
  v5 = a4;
  v6 = result;
  v7 = a3 >> 1;
  v21 = a3 >> 1;
  while (1)
  {
    if (a2 == v7)
    {
      return 0;
    }

    if (a2 >= v7)
    {
      break;
    }

    v9 = v6 + 96 * a2;
    if (*(v9 + 66) == 1 && ((*(v9 + 64) ^ v5) & 1) == 0)
    {
      v10 = *v9;
      v11 = *(v9 + 8);
      v23 = a2;
      v24 = *(v9 + 72);
      v25 = *(v9 + 80);
      swift_beginAccess();
      v12 = *(a5 + 16);
      if (!*(v12 + 16))
      {
        return v23;
      }

      sub_217F4B224();

      sub_217EA34A8(v24, v25);

      sub_217F4AB24();
      v13 = sub_217F4B254();
      v14 = -1 << *(v12 + 32);
      v15 = v13 & ~v14;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
LABEL_18:

        swift_bridgeObjectRelease_n();

        sub_217EB9ED4(v24, v25);
        return v23;
      }

      v16 = ~v14;
      while (1)
      {
        v17 = (*(v12 + 48) + 16 * v15);
        v18 = *v17 == v10 && v17[1] == v11;
        if (v18 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      swift_bridgeObjectRelease_n();

      result = sub_217EB9ED4(v24, v25);
      v7 = v21;
      v5 = a4;
      v6 = v19;
      a2 = v23;
    }

    if (__OFADD__(a2++, 1))
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_217F212D0(uint64_t a1, uint64_t (*a2)(__int128 *), uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = (a1 + 32);
  do
  {
    v9 = v8[3];
    v10 = v8[1];
    v23 = v8[2];
    v24 = v9;
    v11 = v8[3];
    v25[0] = v8[4];
    *(v25 + 9) = *(v8 + 73);
    v12 = v8[1];
    v21 = *v8;
    v22 = v12;
    v18 = v23;
    v19 = v11;
    v20[0] = v8[4];
    *(v20 + 9) = *(v8 + 73);
    v16 = v21;
    v17 = v10;
    sub_217E98218(&v21, &v15);
    if (a2(&v16))
    {
      v18 = v23;
      v19 = v24;
      v20[0] = v25[0];
      *(v20 + 9) = *(v25 + 9);
      v16 = v21;
      v17 = v22;
      v13 = a4(&v16);
      sub_217E98274(&v21);
      if (v13)
      {
        return v7;
      }
    }

    else
    {
      sub_217E98274(&v21);
    }

    ++v7;
    v8 += 6;
  }

  while (v4 != v7);
  return 0;
}

uint64_t sub_217F2141C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(__int128 *), uint64_t a5, uint64_t (*a6)(__int128 *), uint64_t a7)
{
  v29 = a7;
  v7 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return 0;
  }

  else
  {
    v8 = a2;
    if (a2 <= v7)
    {
      v11 = a3 >> 1;
    }

    else
    {
      v11 = a2;
    }

    v12 = (result + 96 * a2);
    while (v11 != v8)
    {
      v13 = v12[3];
      v14 = v12[1];
      v26 = v12[2];
      v27 = v13;
      v15 = v12[3];
      v28[0] = v12[4];
      *(v28 + 9) = *(v12 + 73);
      v16 = v12[1];
      v24 = *v12;
      v25 = v16;
      v21 = v26;
      v22 = v15;
      v23[0] = v12[4];
      *(v23 + 9) = *(v12 + 73);
      v19 = v24;
      v20 = v14;
      sub_217E98218(&v24, v18);
      if (a4(&v19))
      {
        v21 = v26;
        v22 = v27;
        v23[0] = v28[0];
        *(v23 + 9) = *(v28 + 9);
        v19 = v24;
        v20 = v25;
        v17 = a6(&v19);
        result = sub_217E98274(&v24);
        if (v17)
        {
          return v8;
        }
      }

      else
      {
        result = sub_217E98274(&v24);
      }

      ++v8;
      v12 += 6;
      if (v7 == v8)
      {
        return 0;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_217F21584(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, int64_t a6, uint64_t a7, char *a8, char a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  swift_beginAccess();
  v98 = a1;
  v22 = *(a1 + 16);
  v23 = *a2;
  v24 = a2[1];

  v25 = sub_217EA3608(v23, v24, v22);

  if (v25)
  {
    if (qword_280C27680 == -1)
    {
LABEL_3:
      v28 = MEMORY[0x28223BE20](v26, v27);
      v29(sub_217F2C088, v28);
      v30 = 1;
      return v30 & 1;
    }

LABEL_61:
    v26 = swift_once();
    goto LABEL_3;
  }

  v94 = a2;
  v31 = swift_beginAccess();
  v33 = *(*(a3 + 16) + 16);
  v93 = a5;
  if (v33 < a4)
  {
    v25 = a15;
    v34 = a11;
    v24 = a12;
    v35 = a10;
    v36 = v94[3];
    v115 = v94[2];
    v116 = v36;
    v117[0] = v94[4];
    *(v117 + 9) = *(v94 + 73);
    v37 = v94[1];
    v113 = *v94;
    v114 = v37;
    if (v33 >= *(a15 + 16) || (v38 = *(a15 + v33 + 32)) == 0)
    {
      sub_217E98218(v94, &v102);
      v42 = sub_217F143A0(a10, v94, a3, a5, a11, a12, &v113, a8, a6, a7);
      goto LABEL_55;
    }

    v90 = a8;
    if (v38 == 1)
    {
      swift_beginAccess();
      if ((*(a13 + 16) & 1) == 0)
      {
        swift_beginAccess();
        v39 = *(a12 + 16);
        v40 = __OFADD__(v39, a11);
        v41 = a11 + v39;
        if (!v40)
        {
          if (v41 < a16)
          {
            sub_217E98218(v94, &v102);
            v42 = sub_217F09038(a9 & 1, v98, a10, a3, a11, a12, a7, a8, a5, a6, a13, v94, a4, a14, a15, a16);
LABEL_55:
            v30 = v42;
            v104 = v115;
            v105 = v116;
            v106[0] = v117[0];
            *(v106 + 9) = *(v117 + 9);
            v102 = v113;
            v103 = v114;
            sub_217E98274(&v102);
            return v30 & 1;
          }

          v25 = v94;
          v86 = sub_217E98218(v94, &v102);
          if (qword_280C27680 == -1)
          {
LABEL_59:
            v88 = MEMORY[0x28223BE20](v86, v87);
            v89(sub_217F2C084, v88);
            v42 = sub_217F143A0(v35, v25, a3, v93, v34, v24, &v113, v90, a6, a7);
            goto LABEL_55;
          }

LABEL_65:
          v86 = swift_once();
          goto LABEL_59;
        }

LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    else
    {
      swift_beginAccess();
      if ((*(a14 + 16) & 1) == 0)
      {
        sub_217E98218(v94, &v102);
        v42 = sub_217F0C1FC(v98, a10, a3, a11, a12, a5, a6, a8, a7, a14, v94, a4, a9 & 1, a13, a15, a16);
        goto LABEL_55;
      }
    }

    sub_217E98218(v94, &v102);
    v42 = sub_217F143A0(a10, v94, a3, a5, a11, a12, &v113, a8, a6, a7);
    goto LABEL_55;
  }

  if (qword_280C27680 != -1)
  {
    v31 = swift_once();
  }

  v43 = MEMORY[0x28223BE20](v31, v32);
  v35 = a5;
  v34 = a6;
  v92 = v44;
  v44(sub_217F2BFD4, v43);
  v45 = *(a5 + 16);
  a3 = a7;
  if (v45 < a6)
  {
    __break(1u);
    goto LABEL_63;
  }

  if (a6 < 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v97 = v93 + 32;
  swift_bridgeObjectRetain_n();
  if (v45 != a6)
  {
    v91 = a8;

    swift_beginAccess();
    if (v45 <= a6)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v46 = a6;
    while (1)
    {
      v47 = v97 + 96 * v46;
      v48 = *(v47 + 48);
      v49 = *(v47 + 16);
      v115 = *(v47 + 32);
      v116 = v48;
      v50 = *(v47 + 48);
      v117[0] = *(v47 + 64);
      *(v117 + 9) = *(v47 + 73);
      v51 = *(v47 + 16);
      v113 = *v47;
      v114 = v51;
      v109 = v115;
      v110 = v50;
      v111 = *(v47 + 64);
      v112 = *(v47 + 80);
      v107 = v113;
      v108 = v49;
      v52 = *(v98 + 16);
      if (!*(v52 + 16))
      {
        break;
      }

      v53 = BYTE8(v117[1]);
      v54 = v113;
      sub_217F4B224();
      sub_217E98218(&v113, &v102);

      sub_217F4AB24();
      v55 = sub_217F4B254();
      v56 = -1 << *(v52 + 32);
      v57 = v55 & ~v56;
      if (((*(v52 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
      {
LABEL_28:

        a3 = a7;
        v34 = a6;
LABEL_30:
        v104 = v109;
        v105 = v110;
        v106[0] = v111;
        *&v106[1] = v112;
        v102 = v107;
        v103 = v108;
        BYTE8(v106[1]) = 2;
        swift_beginAccess();
        v61 = *(a3 + 16);
        sub_217E98218(&v102, v99);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + 16) = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = sub_217E8D720(0, *(v61 + 2) + 1, 1, v61);
          *(a3 + 16) = v61;
        }

        v64 = *(v61 + 2);
        v63 = *(v61 + 3);
        if (v64 >= v63 >> 1)
        {
          v61 = sub_217E8D720((v63 > 1), v64 + 1, 1, v61);
        }

        *(v61 + 2) = v64 + 1;
        v65 = &v61[96 * v64];
        v66 = v103;
        *(v65 + 2) = v102;
        *(v65 + 3) = v66;
        v67 = v104;
        v68 = v105;
        v69 = v106[0];
        *(v65 + 105) = *(v106 + 9);
        *(v65 + 5) = v68;
        *(v65 + 6) = v69;
        *(v65 + 4) = v67;
        *(a3 + 16) = v61;
        swift_endAccess();
        v99[2] = v109;
        v99[3] = v110;
        v99[4] = v111;
        v100 = v112;
        v99[0] = v107;
        v99[1] = v108;
        v101 = 2;
        sub_217E98274(v99);
        goto LABEL_36;
      }

      v58 = ~v56;
      while (1)
      {
        v59 = (*(v52 + 48) + 16 * v57);
        v60 = *v59 == v54 && v59[1] == *(&v54 + 1);
        if (v60 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v57 = (v57 + 1) & v58;
        if (((*(v52 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v72 = MEMORY[0x28223BE20](v70, v71);
      v92(sub_217F2C080, v72);
      v104 = v109;
      v105 = v110;
      v106[0] = v111;
      *&v106[1] = v112;
      v102 = v107;
      v103 = v108;
      BYTE8(v106[1]) = v53;
      sub_217E98274(&v102);
      a3 = a7;
      v34 = a6;
LABEL_36:
      if (++v46 == v45)
      {

        a8 = v91;
        goto LABEL_42;
      }

      if (v46 < v34 || v46 >= v45)
      {
        goto LABEL_60;
      }
    }

    sub_217E98218(&v113, &v102);
    goto LABEL_30;
  }

LABEL_42:
  if (a8)
  {
    swift_beginAccess();
    v73 = *(a3 + 16);

    v74 = sub_217F20B38(v97, v34, (2 * v45) | 1, (v98 + 16));

    *&v113 = v73;
    sub_217E80538(v74);
    v75 = v113;
    v76 = *(v113 + 16);
    if (v76)
    {
      *&v113 = MEMORY[0x277D84F90];
      sub_217EA0CC0(0, v76, 0);
      v77 = v113;
      v78 = (v75 + 88);
      do
      {
        v80 = *(v78 - 7);
        v79 = *(v78 - 6);
        v81 = *v78;
        *&v113 = v77;
        v83 = *(v77 + 16);
        v82 = *(v77 + 24);

        if (v83 >= v82 >> 1)
        {
          sub_217EA0CC0((v82 > 1), v83 + 1, 1);
          v77 = v113;
        }

        *(v77 + 16) = v83 + 1;
        v84 = (v77 + 24 * v83);
        v84[4] = v80;
        v84[5] = v79;
        v84[6] = v81;
        v78 += 12;
        --v76;
      }

      while (v76);
    }

    else
    {

      v77 = MEMORY[0x277D84F90];
    }

    *&v102 = v77;
    LOBYTE(v106[0]) = -127;
    ClusteringJournal.record(event:)(&v102);
    v115 = v104;
    v116 = v105;
    LOBYTE(v117[0]) = v106[0];
    v113 = v102;
    v114 = v103;
    sub_217F23F40(&v113);
    v30 = 0;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v30 = 0;
  }

  return v30 & 1;
}

char *sub_217F21FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  MEMORY[0x28223BE20](a1, a2);
  v156 = v12;
  v157 = v13;
  v158 = v14;
  v161 = v15;
  v17 = v16;
  v19 = v18;
  v172 = v20;
  v21 = v11 + 64;
  v22 = 1 << *(v11 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v174 = v23 & *(v11 + 64);
  v153 = OBJC_IVAR____TtC10XavierNews17ClusteringJournal_mode;
  v160 = v11;

  swift_beginAccess();
  v24 = (v22 + 63) >> 6;
  v152 = (v17 + 296);
  v151 = (v17 + 1736);
  v204 = a9 & 1;
  v25 = 1.0;
  v162 = v17;
  v159 = v19;
  v155 = v21;
  v154 = v24;
  v26 = 0;
  v27 = v174;
  while (v27)
  {
    v28 = v26;
LABEL_11:
    v29 = __clz(__rbit64(v27)) | (v28 << 6);
    v30 = *(v160 + 56);
    v31 = (*(v160 + 48) + 32 * v29);
    v32 = *v31;
    *&v191[13] = *(v31 + 13);
    *v191 = v32;
    v33 = *(v30 + 8 * v29);
    v205 = v191[28];
    *v189 = v32;
    v189[16] = v191[28] ^ 1;
    sub_217E98168(v191, __dst);
    sub_217E98168(v191, __dst);

    ClusteringJournal.startedClustering(group:)(v189);
    sub_217EB3F30(*v189, *&v189[8], v189[16]);
    v34 = *v158;
    v175 = v27;
    v177 = *(*a10 + 16);
    v35 = *(v17 + 896);
    v36 = *v191;
    v173 = *&v191[8];
    if (*(v35 + 16))
    {
      sub_217E98168(v191, __dst);
      v37 = sub_217E8E88C(v36, *(&v36 + 1));
      if (v38)
      {
        v39 = (*(v35 + 56) + 440 * v37);
        memcpy(v189, v39, sizeof(v189));
        memmove(__dst, v39, 0x1B2uLL);
        nullsub_152();
        v40 = swift_allocObject();
        v41 = *&v189[312];
        v40[1] = *&v189[296];
        v40[2] = v41;
        v42 = *&v189[344];
        v40[3] = *&v189[328];
        v40[4] = v42;
        sub_217F2B89C(v189, __src, &qword_27CBF5FC0, &qword_217F5A050);
        sub_217F2B89C(&v189[296], __src, &qword_27CBF7318, &unk_217F5A058);
        memcpy(v190, __dst, 0x1B2uLL);
        v43 = sub_217F2BFA8;
        goto LABEL_20;
      }
    }

    else
    {
      sub_217E98168(v191, __dst);
    }

    sub_217F2B688(__dst);
    if (v205)
    {
      if (v191[25])
      {
        v44 = v151[1];
        v201[0] = *v151;
        v201[1] = v44;
        v45 = v151[3];
        v201[2] = v151[2];
        v201[3] = v45;
        v46 = swift_allocObject();
        v47 = v151[1];
        v46[1] = *v151;
        v46[2] = v47;
        v48 = v151[3];
        v46[3] = v151[2];
        v46[4] = v48;
        sub_217F2B89C(v201, v189, &qword_27CBF5C58, &unk_217F5A040);
        memcpy(v190, __dst, 0x1B2uLL);
        v43 = sub_217F2BFA4;
      }

      else
      {
        v54 = v152[1];
        v202[0] = *v152;
        v202[1] = v54;
        v55 = v152[3];
        v202[2] = v152[2];
        v202[3] = v55;
        v56 = swift_allocObject();
        v57 = v152[1];
        v56[1] = *v152;
        v56[2] = v57;
        v58 = v152[3];
        v56[3] = v152[2];
        v56[4] = v58;
        sub_217F2B89C(v202, v189, &qword_27CBF5C80, &unk_217F5A020);
        memcpy(v190, __dst, 0x1B2uLL);
        v43 = sub_217F2BFA0;
      }
    }

    else
    {
      v49 = *(v17 + 752);
      v200[0] = *(v17 + 736);
      v200[1] = v49;
      v50 = *(v17 + 784);
      v200[2] = *(v17 + 768);
      v200[3] = v50;
      v51 = swift_allocObject();
      v52 = *(v17 + 752);
      v51[1] = *(v17 + 736);
      v51[2] = v52;
      v53 = *(v17 + 784);
      v51[3] = *(v17 + 768);
      v51[4] = v53;
      sub_217F2B89C(v200, v189, &qword_27CBF5C78, &qword_217F52098);
      memcpy(v190, __dst, 0x1B2uLL);
      v43 = sub_217F2B81C;
    }

LABEL_20:
    v59 = v43;
    memcpy(v203, v190, 0x1B2uLL);
    (v59)(__dst, v177);

    v185 = __dst[0];
    v186 = __dst[1];
    v187 = __dst[2];
    v188 = __dst[3];
    memcpy(v189, v190, sizeof(v189));
    v171 = v33;
    v170 = v34;
    if (sub_217F2B6CC(v189) == 1)
    {
      if (v205)
      {
        if (v191[25] == 1)
        {
          memcpy(v198, (v17 + 1440), 0x1B2uLL);
          v60 = swift_allocObject();
          memcpy((v60 + 16), (v17 + 1440), 0x1B2uLL);
          sub_217F2B89C(v198, __dst, &qword_27CBF5F98, &qword_217F52250);
          v61 = sub_217F2B6E4;
          v62 = sub_217F2B7C4;
        }

        else
        {
          memcpy(v199, v17, 0x1B2uLL);
          v60 = swift_allocObject();
          memcpy((v60 + 16), v17, 0x1B2uLL);
          sub_217F2B89C(v199, __dst, &qword_27CBF5F80, &qword_217F52238);
          v61 = sub_217F2B6E4;
          v62 = sub_217F2C0F4;
        }
      }

      else
      {
        memcpy(v197, (v17 + 440), 0x1B2uLL);
        v60 = swift_allocObject();
        memcpy((v60 + 16), (v17 + 440), 0x1B2uLL);
        sub_217F2B89C(v197, __dst, &qword_27CBF5F88, &qword_217F52240);
        v61 = sub_217F2B6E4;
        v62 = sub_217F2C0F8;
      }

      v63 = v62;
    }

    else
    {
      v60 = swift_allocObject();
      memcpy((v60 + 16), v189, 0x1B2uLL);
      v61 = sub_217F2C1C0;
      v63 = sub_217F2C0FC;
    }

    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v60;
    sub_217F2B89C(v190, __dst, &qword_27CBF7308, &qword_217F5A030);
    v169 = v61(v177);

    memcpy(__src, v190, 0x1B2uLL);
    if (sub_217F2B6CC(__src) == 1)
    {
      if (v205)
      {
        if (v191[25] == 1)
        {
          memcpy(v195, (v17 + 1440), 0x1B2uLL);
          v65 = swift_allocObject();
          memcpy((v65 + 16), (v17 + 1440), 0x1B2uLL);
          sub_217F2B89C(v195, __dst, &qword_27CBF5F98, &qword_217F52250);
          v66 = sub_217F2C1B0;
          v67 = sub_217F2B76C;
        }

        else
        {
          memcpy(v196, v17, 0x1B2uLL);
          v65 = swift_allocObject();
          memcpy((v65 + 16), v17, 0x1B2uLL);
          sub_217F2B89C(v196, __dst, &qword_27CBF5F80, &qword_217F52238);
          v66 = sub_217F2C1B0;
          v67 = sub_217F2C0E8;
        }
      }

      else
      {
        memcpy(v194, (v17 + 440), 0x1B2uLL);
        v65 = swift_allocObject();
        memcpy((v65 + 16), (v17 + 440), 0x1B2uLL);
        sub_217F2B89C(v194, __dst, &qword_27CBF5F88, &qword_217F52240);
        v66 = sub_217F2C1B0;
        v67 = sub_217F2C0EC;
      }

      v68 = v67;
    }

    else
    {
      v65 = swift_allocObject();
      memcpy((v65 + 16), __src, 0x1B2uLL);
      v66 = sub_217F2C1BC;
      v68 = sub_217F2C0F0;
    }

    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v65;
    sub_217F2B89C(v190, __dst, &qword_27CBF7308, &qword_217F5A030);
    v168 = v66(v177);

    v70 = *(v171 + 16);
    if (v70)
    {
      v71 = sub_217E8E420(*(v171 + 16), 0);
      v72 = sub_217E96EF4(v180, v71 + 32, v70, v171);
      v17 = *&v180[0];
      v163 = v72;
      sub_217E98168(v191, __dst);

      sub_217EB4358(v162, __dst);
      sub_217E7F628(v17);
      if (v163 != v70)
      {
        goto LABEL_139;
      }

      v17 = v162;
    }

    else
    {
      sub_217E98168(v191, __dst);
      v17 = v162;
      sub_217EB4358(v162, __dst);
      v71 = MEMORY[0x277D84F90];
    }

    v182 = v71;
    sub_217F1F93C(&v182, v36, v173, v17);
    if (v10)
    {
      goto LABEL_142;
    }

    sub_217EB5CB8(v17);
    sub_217F23FA4(v191);
    v164 = v182;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53D0, &qword_217F4CC40);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_217F591F0;
    v74 = 256;
    if (!v191[25])
    {
      v74 = 0;
    }

    v75 = v165 & 0xFFFFFF0000000000 | v191[24] | v74;
    if (v191[26])
    {
      v76 = 0x10000;
    }

    else
    {
      v76 = 0;
    }

    if (v191[27])
    {
      v77 = 0x1000000;
    }

    else
    {
      v77 = 0;
    }

    v78 = v75 | v76 | v77;
    if (v191[28])
    {
      v79 = 0x100000000;
    }

    else
    {
      v79 = 0;
    }

    v165 = v78 | v79;
    v80 = sub_217F18194(v203, *v191, *&v191[8], v78 | v79, v17, v177);
    *(v73 + 40) = 0;
    *(v73 + 48) = 0;
    *(v73 + 32) = v80;
    *(v73 + 56) = 0;
    v81 = 256;
    if (!v191[25])
    {
      v81 = 0;
    }

    v82 = v166 & 0xFFFFFF0000000000 | v191[24] | v81;
    if (v191[26])
    {
      v83 = 0x10000;
    }

    else
    {
      v83 = 0;
    }

    if (v191[27])
    {
      v84 = 0x1000000;
    }

    else
    {
      v84 = 0;
    }

    v85 = v82 | v83 | v84;
    if (v191[28])
    {
      v86 = 0x100000000;
    }

    else
    {
      v86 = 0;
    }

    v166 = v85 | v86;
    v87 = sub_217F18428(v203, *v191, *&v191[8], v85 | v86, v17, v177);
    *(v73 + 72) = 0;
    *(v73 + 80) = 0;
    *(v73 + 64) = v87;
    *(v73 + 88) = 1;
    v88 = 256;
    if (!v191[25])
    {
      v88 = 0;
    }

    v89 = v167 & 0xFFFFFF0000000000 | v191[24] | v88;
    if (v191[26])
    {
      v90 = 0x10000;
    }

    else
    {
      v90 = 0;
    }

    if (v191[27])
    {
      v91 = 0x1000000;
    }

    else
    {
      v91 = 0;
    }

    v92 = v89 | v90 | v91;
    if (v191[28])
    {
      v93 = 0x100000000;
    }

    else
    {
      v93 = 0;
    }

    v94 = v92 | v93;
    v95 = v17;
    v96 = sub_217F186BC(v203, *v191, *&v191[8], v92 | v93, v17, v177);
    *(v73 + 104) = 0;
    *(v73 + 112) = 0;
    *(v73 + 96) = v96;
    *(v73 + 120) = 2;
    *(v73 + 136) = 0;
    *(v73 + 144) = 0;
    *(v73 + 128) = v161;
    *(v73 + 152) = 5;
    memcpy(__dst, v190, 0x1B2uLL);
    v97 = sub_217F2B6CC(__dst);
    v98 = 360;
    if (v191[25])
    {
      v98 = 1800;
    }

    v99 = 368;
    if (v191[25])
    {
      v99 = 1808;
    }

    v100 = 376;
    if (v191[25])
    {
      v100 = 1816;
    }

    v101 = v205;
    if (!v205)
    {
      v98 = 800;
    }

    v102 = (v17 + v98);
    if (!v205)
    {
      v99 = 808;
      v100 = 816;
    }

    if (v97 != 1)
    {
      v102 = &__dst[22] + 1;
    }

    v103 = (v17 + v99);
    if (v97 != 1)
    {
      v103 = &__dst[23];
    }

    v104 = (v17 + v100);
    v105 = *v102;
    v106 = *v103;
    v107 = &__dst[23] + 1;
    if (v97 == 1)
    {
      v107 = v104;
    }

    v108 = *v107;
    *(v73 + 160) = v105;
    *(v73 + 168) = v106;
    *(v73 + 176) = v108;
    *(v73 + 184) = 4;
    v109 = *(v17 + 1424);
    *(v73 + 200) = 0;
    *(v73 + 208) = 0;
    *(v73 + 192) = v109;
    *(v73 + 216) = 7;
    v167 = v94;
    if (v101)
    {
      memcpy(v180, v190, 0x1B2uLL);
      if (sub_217F2B6CC(v180) == 1)
      {
        if (v191[25])
        {
          memcpy(v192, (v17 + 1440), 0x1B2uLL);
          v110 = swift_allocObject();
          memcpy((v110 + 16), (v17 + 1440), 0x1B2uLL);
          sub_217F2B89C(v192, v179, &qword_27CBF5F98, &qword_217F52250);
          v111 = sub_217F2C1B4;
          v112 = sub_217F2B710;
        }

        else
        {
          memcpy(v193, v17, 0x1B2uLL);
          v110 = swift_allocObject();
          memcpy((v110 + 16), v17, 0x1B2uLL);
          sub_217F2B89C(v193, v179, &qword_27CBF5F80, &qword_217F52238);
          v111 = sub_217F2C1B4;
          v112 = sub_217F2C0E0;
        }

        v115 = v112;
      }

      else
      {
        v110 = swift_allocObject();
        memcpy((v110 + 16), v180, 0x1B2uLL);
        v111 = sub_217F2C1B8;
        v115 = sub_217F2C0E4;
      }

      v114 = v171;
      v116 = swift_allocObject();
      *(v116 + 16) = v115;
      *(v116 + 24) = v110;
      sub_217F2B89C(v190, v178, &qword_27CBF7308, &qword_217F5A030);

      v117 = v111(v177);

      memcpy(v179, v190, 0x1B2uLL);
      v118 = sub_217F2B6CC(v179);
      v119 = 144;
      if (v191[25])
      {
        v119 = 1584;
      }

      v120 = (v95 + v119);
      if (v118 != 1)
      {
        v120 = &v179[9];
      }

      v121 = *v120;

      v73 = sub_217E8DFB4(1, 7, 1, v73);
      *(v73 + 16) = 7;
      *(v73 + 224) = v117;
      *(v73 + 232) = v121;
      *(v73 + 240) = 0;
      *(v73 + 248) = 3;
      sub_217F2BC84(v190, &qword_27CBF7308, &qword_217F5A030);
      v113 = v159;
    }

    else
    {

      sub_217F2BC84(v190, &qword_27CBF7308, &qword_217F5A030);
      v113 = v159;
      v114 = v171;
    }

    v176 = (v175 - 1) & v175;
    v179[0] = *v191;
    *(v179 + 13) = *&v191[13];
    *&v179[2] = v114;
    v180[0] = v185;
    v180[1] = v186;
    v180[2] = v187;
    v180[3] = v188;
    v122 = v95;
    v17 = v169;
    sub_217F0778C(v164, v169, 0, v168, v73, v180, v113, *(v95 + 912), v183, v170, v156, v157, v204);

    sub_217EB2A44(&v185);
    v123 = v183[0];
    v124 = *(v183[0] + 16);
    v125 = 0.0;
    v126 = 0.0;
    v21 = v155;
    if (v169 < v168)
    {
      if (__OFSUB__(v124, v169))
      {
        goto LABEL_140;
      }

      if (__OFSUB__(v168, v169))
      {
        goto LABEL_141;
      }

      v126 = (v124 - v169) / (v168 - v169);
    }

    v127 = v183[1];
    if (v191[25])
    {
      v128 = v25;
    }

    else
    {
      v128 = 0.0;
    }

    if (v191[26])
    {
      v129 = v25;
    }

    else
    {
      v129 = 0.0;
    }

    if (v191[27])
    {
      v130 = v25;
    }

    else
    {
      v130 = 0.0;
    }

    if (v191[24])
    {
      v131 = v25;
    }

    else
    {
      v131 = 0.0;
    }

    v17 = v122;
    v132 = pow(*(v122 + 1880), v128);
    v133 = pow(*(v122 + 1432), v129);
    v134 = pow(*(v122 + 1896), v130);
    v135 = pow(*(v122 + 1912), v131);
    v136 = pow(*(v122 + 1888), v126);
    if (v124)
    {
      v137 = (v123 + 88);
      v138 = 0.0;
      v139 = v124;
      do
      {
        v140 = *v137;
        v137 += 12;
        v138 = v138 + v140;
        --v139;
      }

      while (v139);
      v125 = v138 / v124;
    }

    v141 = *&v191[16];
    v142 = 880;
    if (v205)
    {
      v142 = 1904;
    }

    v143 = *(v122 + v142);
    if (*(v113 + v153) != 2)
    {
      if (*(v113 + 48))
      {
        v180[0] = *(v113 + 48);
        memset(&v180[1], 0, 17);

        sub_217EB06FC(v180);
        sub_217EB3F48(*&v180[0], *(&v180[0] + 1), *&v180[1], *(&v180[1] + 1), v180[2]);
      }

      else
      {
        if (qword_280C28808 != -1)
        {
          swift_once();
        }

        v144 = qword_280C28810;
        v145 = sub_217F4AD34();
        sub_217F4AA44("Failed to finish clustering, no events", 38, 2, &dword_217E7B000, v144, v145, MEMORY[0x277D84F90]);
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v172 = sub_217E8E0F8(0, *(v172 + 2) + 1, 1, v172);
    }

    v147 = *(v172 + 2);
    v146 = *(v172 + 3);
    if (v147 >= v146 >> 1)
    {
      v172 = sub_217E8E0F8((v146 > 1), v147 + 1, 1, v172);
    }

    v148 = v132 * v133 * v134 * v135 * v136;
    v25 = 1.0;
    *(v172 + 2) = v147 + 1;
    v149 = &v172[40 * v147];
    *(v149 + 4) = v36;
    *(v149 + 5) = v173;
    v149[48] = v205;
    *(v149 + 7) = v123;
    *(v149 + 8) = v148 * (v143 * v141 + v125 * (1.0 - v143));
    if (*(v122 + 904))
    {

      sub_217F37DD8(v127);
    }

    else
    {
    }

    sub_217F2BC84(v179, &qword_27CBF7310, &qword_217F5A038);
    v26 = v28;
    v27 = v176;
    v24 = v154;
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v24)
    {

      return v172;
    }

    v27 = *(v21 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  sub_217EB5CB8(v17);
  sub_217F23FA4(v191);
  MEMORY[0x21CEAF510](v10);

  __break(1u);
  return result;
}

BOOL sub_217F237C8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v22[0] = *a1;
  v22[1] = v4;
  v22[2] = v5;
  v23 = v6;
  v24 = v8;
  v25 = v7;
  v26 = v9;
  v27 = v10;
  if (v6 <= 3)
  {
    if (v6 <= 1)
    {
      if (!v6)
      {
        if (!v10)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (v10 != 1)
      {
LABEL_31:
        v12 = v8;
        goto LABEL_32;
      }

LABEL_30:
      sub_217F2BC84(v22, &qword_27CBF7328, &unk_217F5A070);
      return v3 == v8;
    }

    if (v6 == 2)
    {
      if (v10 != 2)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (v10 == 3)
    {
      if (v3 != v8)
      {
        sub_217F2BB04(v8, v7, v9, 3);
        v12 = v3;
        v7 = v4;
        v9 = v5;
        LOBYTE(v10) = 3;
        goto LABEL_32;
      }

      v14 = v7;
      sub_217F2BB04(v3, v7, v9, 3);
      sub_217F2BB04(v3, v4, v5, 3);
      v13 = sub_217ED3610(v4, v14);
LABEL_27:
      v15 = v13;
      sub_217F2BC84(v22, &qword_27CBF7328, &unk_217F5A070);
      return v15 & 1;
    }

    goto LABEL_28;
  }

  if (v6 > 5)
  {
    if (v6 == 6)
    {
      if (v10 != 6)
      {
        goto LABEL_31;
      }
    }

    else if (v10 != 7)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v6 != 4)
  {
    if (v10 == 5)
    {
      sub_217F2BB04(v8, v7, v9, 5);
      sub_217F2BB04(v3, v4, v5, 5);
      v13 = sub_217ED3744(v3, v8);
      goto LABEL_27;
    }

LABEL_28:
    v17 = v9;
    v18 = v7;
    v19 = v10;

    LOBYTE(v10) = v19;
    v7 = v18;
    v9 = v17;
    goto LABEL_31;
  }

  if (v10 != 4)
  {
    goto LABEL_28;
  }

  if (*&v3 != *&v8 || v4 != v7)
  {
    sub_217F2BB04(v8, v7, v9, 4);
    v12 = v3;
    v7 = v4;
    v9 = v5;
    LOBYTE(v10) = 4;
LABEL_32:
    sub_217F2BB04(v12, v7, v9, v10);
    sub_217F2BC84(v22, &qword_27CBF7328, &unk_217F5A070);
    return 0;
  }

  v20 = v9;
  sub_217F2BB04(v8, v4, v9, 4);
  sub_217F2BB04(v3, v4, v5, 4);
  sub_217F2BB04(v8, v4, v20, 4);
  sub_217F2BB04(v3, v4, v5, 4);
  v21 = sub_217ED6368(v5, v20);
  sub_217F2BC84(v22, &qword_27CBF7328, &unk_217F5A070);
  sub_217F2BB34(v8, v4, v20, 4);
  sub_217F2BB34(v3, v4, v5, 4);
  return (v21 & 1) != 0;
}

unint64_t sub_217F23AAC()
{
  result = qword_280C27860;
  if (!qword_280C27860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27860);
  }

  return result;
}

unint64_t sub_217F23B00()
{
  result = qword_280C277B8;
  if (!qword_280C277B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277B8);
  }

  return result;
}

unint64_t sub_217F23B54()
{
  result = qword_27CBF7258;
  if (!qword_27CBF7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7258);
  }

  return result;
}

unint64_t sub_217F23BA8()
{
  result = qword_280C277E8;
  if (!qword_280C277E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277E8);
  }

  return result;
}

unint64_t sub_217F23BFC()
{
  result = qword_280C27800;
  if (!qword_280C27800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27800);
  }

  return result;
}

unint64_t sub_217F23C50()
{
  result = qword_280C277D0;
  if (!qword_280C277D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277D0);
  }

  return result;
}

unint64_t sub_217F23CA4()
{
  result = qword_280C27848;
  if (!qword_280C27848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27848);
  }

  return result;
}

unint64_t sub_217F23CF8()
{
  result = qword_280C27818;
  if (!qword_280C27818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27818);
  }

  return result;
}

unint64_t sub_217F23D4C()
{
  result = qword_280C27830;
  if (!qword_280C27830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27830);
  }

  return result;
}

uint64_t sub_217F23DA0(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF6F28, &qword_217F52830);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217F23E24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5F68, &qword_217F52230);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217F23EEC()
{
  result = qword_280C28818;
  if (!qword_280C28818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28818);
  }

  return result;
}

uint64_t sub_217F24054(uint64_t a1, uint64_t a2, uint64_t *a3, double *a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v57 = a6;
  v58 = a4;
  v59 = a5;
  v60 = a3;
  v9 = a1;
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v53 = a2;
  v54 = result;
  v51 = v14;
  v52 = v10;
  while (1)
  {
    do
    {
LABEL_6:
      if (v13)
      {
        v17 = v13;
      }

      else
      {
        do
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_36;
          }

          if (v18 >= v14)
          {
          }

          v17 = *(v10 + 8 * v18);
          ++v16;
        }

        while (!v17);
        v16 = v18;
      }

      v13 = (v17 - 1) & v17;
    }

    while (!*(a2 + 16));
    v19 = (*(v9 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v17)))));
    v20 = *v19;
    v21 = v19[1];

    v22 = sub_217E8E88C(v20, v21);
    if (v23)
    {
      break;
    }
  }

  v55 = v21;
  v56 = v13;
  v24 = *(*(a2 + 56) + 8 * v22);
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v24 + 64);
  v29 = (v26 + 63) >> 6;
  v61 = v24;
  result = swift_bridgeObjectRetain_n();
  v31 = 0;
  while (v28)
  {
LABEL_24:
    v63 = &v50;
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = v33 | (v31 << 6);
    v35 = *(*(v61 + 56) + 8 * v34);
    v36 = (*(v61 + 48) + 16 * v34);
    v37 = v36[1];
    v38 = *v60;
    v62 = *v36;
    v64[0] = v62;
    v64[1] = v37;
    MEMORY[0x28223BE20](result, v30);
    v49[2] = v64;

    v39 = sub_217F04BF8(sub_217F2C178, v49, v38);

    if (v39)
    {
    }

    else
    {
      v40 = v59;
      v41 = v35 * *v58;
      v42 = *v59;
      if (!*(*v59 + 16))
      {
        v63 = v7;
        goto LABEL_32;
      }

      v43 = sub_217E8E88C(v62, v37);
      if (v44)
      {
        if (*(*(v42 + 56) + 8 * v43) > v41)
        {
          v41 = *(*(v42 + 56) + 8 * v43);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64[0] = *v40;
        *v40 = 0x8000000000000000;
        sub_217F1A0A8(v62, v37, isUniquelyReferenced_nonNull_native, v41);
        *v40 = v64[0];
      }

      else
      {
        v63 = v7;
LABEL_32:
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v47 = v59;
        v64[0] = *v59;
        *v59 = 0x8000000000000000;
        v48 = v62;
        sub_217F1A0A8(v62, v37, v46, v41);
        *v47 = v64[0];

        sub_217F194B0(v64, v48, v37);

        v7 = v63;
      }
    }
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      a2 = v53;
      v9 = v54;
      v14 = v51;
      v10 = v52;
      v13 = v56;
      goto LABEL_6;
    }

    v28 = *(v25 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_217F24400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v49 = a3;
  v10 = a3 + 56;

  v12 = 0;
  v38 = result;
  v37 = v5;
  while (v8)
  {
LABEL_12:
    v15 = (*(v4 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v8)))));
    v16 = *(v15 + 13);
    v8 &= v8 - 1;
    *v46 = *v15;
    *&v46[13] = v16;
    sub_217E98168(v46, v43);
    if (v46[25])
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    v18 = v3 & 0xFFFFFF0000000000 | v46[24] | v17;
    v19 = 0x10000;
    if (!v46[26])
    {
      v19 = 0;
    }

    v20 = 0x1000000;
    if (!v46[27])
    {
      v20 = 0;
    }

    v21 = v18 | v19 | v20;
    v22 = 0x100000000;
    if (!v46[28])
    {
      v22 = 0;
    }

    v40 = v21 | v22;
    v23 = sub_217F180A0(v45, *&v46[16], *v46, *&v46[8], v21 | v22);
    v13 = v23;
    if (*v24 && *(*v24 + 16))
    {
      v39 = v23;
      v25 = 1 << *(v49 + 32);
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v27 = v26 & *(v49 + 56);
      v28 = (v25 + 63) >> 6;

      for (i = 0; v27; result = sub_217F2BC84(v43, &qword_27CBF7300, &qword_217F5A018))
      {
        v30 = i;
LABEL_32:
        v31 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v32 = (*(v49 + 48) + 96 * (v31 | (v30 << 6)));
        v33 = v32[1];
        v47[0] = *v32;
        v47[1] = v33;
        v35 = v32[3];
        v34 = v32[4];
        v36 = v32[2];
        *(v48 + 9) = *(v32 + 73);
        v47[3] = v35;
        v48[0] = v34;
        v47[2] = v36;
        sub_217E98218(v47, v43);
        sub_217F1C278(v47, v41);
        sub_217E98274(v47);
        v43[2] = v41[2];
        v43[3] = v41[3];
        v44[0] = v42[0];
        *(v44 + 9) = *(v42 + 9);
        v43[0] = v41[0];
        v43[1] = v41[1];
      }

      while (1)
      {
        v30 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v30 >= v28)
        {

          v4 = v38;
          v5 = v37;
          v13 = v39;
          goto LABEL_6;
        }

        v27 = *(v10 + 8 * v30);
        ++i;
        if (v27)
        {
          i = v30;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_6:
    (v13)(v45, 0);
    result = sub_217F23FA4(v46);
    v3 = v40;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v12 = v14;
      goto LABEL_12;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_217F246EC(uint64_t result, void *a2, uint64_t *a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; i += 2)
    {
      v10[0] = *i;
      *(v10 + 13) = *(i + 13);
      v9[0] = *i;
      *(v9 + 13) = *(i + 13);
      sub_217E98168(v10, v8);
      sub_217F17218(v9, a2, a3);
      if (v3)
      {
        break;
      }

      *v8 = v9[0];
      *&v8[13] = *(v9 + 13);
      result = sub_217F23FA4(v8);
      if (!--v4)
      {
        return result;
      }
    }

    *v8 = v9[0];
    *&v8[13] = *(v9 + 13);
    return sub_217F23FA4(v8);
  }

  return result;
}

uint64_t sub_217F247C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269737365636361 && a2 == 0xED00007974696C69;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6565726772657665 && a2 == 0xEE0074696D694C6ELL || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696D694C63676961 && a2 == 0xE900000000000074 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5D0A0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7669446369706F74 && a2 == 0xEE00797469737265 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F604D0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000217F5D0C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F604F0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

char *sub_217F24A80(unint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = a1;
    v4 = MEMORY[0x277D84F90];
    v5 = sub_217E8E6DC(*(a1 + 16), 0);
    v6 = sub_217E96C08(&v31, (v5 + 32), v1, v3);
    v7 = v31;

    sub_217E7F628(v7);
    if (v6 != v1)
    {
LABEL_22:
      __break(1u);
      MEMORY[0x21CEAF510](v3);

      __break(1u);
      return result;
    }

    v2 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v31 = v5;
  v3 = 0;
  sub_217F1A8BC(&v31);
  v8 = v31;
  v9 = *(v31 + 2);
  if (v9)
  {
    v31 = v2;
    sub_217EA0D40(0, v9, 0);
    v10 = 0;
    v11 = v31;
    v27 = v8;
    v28 = v8 + 32;
    v26 = v9;
    while (v10 < *(v8 + 2))
    {
      v12 = &v28[40 * v10];
      v13 = *v12;
      v14 = *(v12 + 3);
      v15 = *(v14 + 16);
      v30 = *(v12 + 1);
      if (v15)
      {
        v29 = v11;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_217EA0864(0, v15, 0);
        v16 = v2;
        v17 = (v14 + 40);
        do
        {
          v18 = *(v17 - 1);
          v19 = *v17;
          v21 = *(v16 + 2);
          v20 = *(v16 + 3);

          if (v21 >= v20 >> 1)
          {
            sub_217EA0864((v20 > 1), v21 + 1, 1);
          }

          *(v16 + 2) = v21 + 1;
          v22 = &v16[16 * v21];
          *(v22 + 4) = v18;
          *(v22 + 5) = v19;
          v17 += 12;
          --v15;
        }

        while (v15);
        swift_bridgeObjectRelease_n();

        v2 = MEMORY[0x277D84F90];
        v9 = v26;
        v8 = v27;
        v11 = v29;
      }

      else
      {

        v16 = v2;
      }

      v31 = v11;
      v3 = *(v11 + 2);
      v23 = *(v11 + 3);
      if (v3 >= v23 >> 1)
      {
        sub_217EA0D40((v23 > 1), v3 + 1, 1);
        v11 = v31;
      }

      ++v10;
      *(v11 + 2) = v3 + 1;
      v24 = &v11[24 * v3];
      *(v24 + 4) = v13;
      *(v24 + 5) = v30;
      *(v24 + 6) = v16;
      if (v10 == v9)
      {

        return v11;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  return MEMORY[0x277D84F90];
}