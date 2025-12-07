unint64_t sub_252CE87A4(unint64_t a1)
{
  v2 = v1;
  *(v1 + 208) = 0;
  v4 = *(v1 + 192);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_30:
    v4 = sub_2529F82C4(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_2529F82C4((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v4[v6 + 32] = 70;
  *(v2 + 192) = v4;
  *(v2 + 384) = 18;
  v7 = sub_252C75848(&unk_2864A5E78);
  sub_252A01B34(&unk_2864A5E98);
  v8 = *(v2 + 96);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_2529F8278(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_2529F8278((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v8[v10 + 4] = v7;
  *(v2 + 96) = v8;
  v4 = a1;
  v11 = sub_252E35294();
  if (v11)
  {
    v12 = v11;
    v31 = v2;
    a1 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      v13 = sub_252E378C4();
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_11:
        v2 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x2530ADF00](v2, v12);
            v15 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }
          }

          else
          {
            if (v2 >= *(a1 + 16))
            {
              __break(1u);
              goto LABEL_30;
            }

            v14 = *(v12 + 8 * v2 + 32);

            v15 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_25;
            }
          }

          v4 = v14;
          sub_252E349D4();
          if (v35[0] && (v16 = sub_252E34D74(), v4 = v17, , v4))
          {
            if (v16 == 0x676E696E61656C63 && v4 == 0xE800000000000000)
            {

              goto LABEL_28;
            }

            v18 = sub_252E37DB4();

            if (v18)
            {

LABEL_28:
              v19 = 1;
              goto LABEL_33;
            }
          }

          else
          {
          }

          ++v2;
        }

        while (v15 != v13);
      }
    }

    v19 = 0;
LABEL_33:
    v2 = v31;
  }

  else
  {
LABEL_26:
    v19 = 0;
  }

  memcpy(__dst, v2, sizeof(__dst));
  memcpy(__src, v2, sizeof(__src));
  sub_2529353AC(__dst, v35);
  v20 = sub_252CDFDD4();
  memcpy(v35, __src, 0x1F8uLL);
  sub_252935408(v35);
  if (v19 & 1) != 0 || (v20)
  {
    sub_252CE10F0(0, 0xE000000000000000);
    sub_252CE2134(0, 0xE000000000000000);
    v21 = sub_2529FC02C(&unk_2864A5EA8);
    v22 = sub_2529FC02C(&unk_2864A5ED0);
    sub_252CE3278(v21, v22);
  }

  result = sub_252E35284();
  if (result)
  {
    v24 = result;
    __src[0] = MEMORY[0x277D84F90];
    v25 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_57:
      v26 = sub_252E378C4();
      if (v26)
      {
LABEL_40:
        v27 = 0;
        v28 = MEMORY[0x277D84F90];
        do
        {
          v29 = v2;
          v2 = v27;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v2, v24);
              v27 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
                goto LABEL_55;
              }
            }

            else
            {
              if (v2 >= *(v25 + 16))
              {
                goto LABEL_56;
              }

              v27 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }
            }

            sub_252E349D4();

            if (v32)
            {
              break;
            }

            ++v2;
            if (v27 == v26)
            {
              goto LABEL_59;
            }
          }

          MEMORY[0x2530AD700](v30);
          if (*((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v28 = __src[0];
          v2 = v29;
        }

        while (v27 != v26);
        goto LABEL_59;
      }
    }

    else
    {
      v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_40;
      }
    }

    v28 = MEMORY[0x277D84F90];
LABEL_59:

    sub_252CDF97C(v28, 0);
  }

  return result;
}

unint64_t sub_252CE8C8C(unint64_t a1)
{
  v2 = v1;
  *(v1 + 208) = 0;
  v4 = *(v1 + 192);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_30:
    v4 = sub_2529F82C4(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_2529F82C4((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v4[v6 + 32] = 71;
  *(v2 + 192) = v4;
  *(v2 + 384) = 19;
  v7 = sub_252C75848(&unk_2864A5EF8);
  sub_252A01B34(&unk_2864A5F18);
  v8 = *(v2 + 96);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_2529F8278(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_2529F8278((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v8[v10 + 4] = v7;
  *(v2 + 96) = v8;
  v4 = a1;
  v11 = sub_252E35294();
  if (v11)
  {
    v12 = v11;
    v31 = v2;
    a1 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      v13 = sub_252E378C4();
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_11:
        v2 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x2530ADF00](v2, v12);
            v15 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }
          }

          else
          {
            if (v2 >= *(a1 + 16))
            {
              __break(1u);
              goto LABEL_30;
            }

            v14 = *(v12 + 8 * v2 + 32);

            v15 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_25;
            }
          }

          v4 = v14;
          sub_252E349D4();
          if (v35[0] && (v16 = sub_252E34D74(), v4 = v17, , v4))
          {
            if (v16 == 0x676E696E61656C63 && v4 == 0xE800000000000000)
            {

              goto LABEL_28;
            }

            v18 = sub_252E37DB4();

            if (v18)
            {

LABEL_28:
              v19 = 1;
              goto LABEL_33;
            }
          }

          else
          {
          }

          ++v2;
        }

        while (v15 != v13);
      }
    }

    v19 = 0;
LABEL_33:
    v2 = v31;
  }

  else
  {
LABEL_26:
    v19 = 0;
  }

  memcpy(__dst, v2, sizeof(__dst));
  memcpy(__src, v2, sizeof(__src));
  sub_2529353AC(__dst, v35);
  v20 = sub_252CDFDD4();
  memcpy(v35, __src, 0x1F8uLL);
  sub_252935408(v35);
  if (v19 & 1) != 0 || (v20)
  {
    sub_252CE10F0(0, 0xE000000000000000);
    sub_252CE2134(0, 0xE000000000000000);
    v21 = sub_2529FC02C(&unk_2864A5F28);
    v22 = sub_2529FC02C(&unk_2864A5F50);
    sub_252CE3278(v21, v22);
  }

  result = sub_252E35284();
  if (result)
  {
    v24 = result;
    __src[0] = MEMORY[0x277D84F90];
    v25 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_57:
      v26 = sub_252E378C4();
      if (v26)
      {
LABEL_40:
        v27 = 0;
        v28 = MEMORY[0x277D84F90];
        do
        {
          v29 = v2;
          v2 = v27;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v2, v24);
              v27 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
                goto LABEL_55;
              }
            }

            else
            {
              if (v2 >= *(v25 + 16))
              {
                goto LABEL_56;
              }

              v27 = v2 + 1;
              if (__OFADD__(v2, 1))
              {
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }
            }

            sub_252E349D4();

            if (v32)
            {
              break;
            }

            ++v2;
            if (v27 == v26)
            {
              goto LABEL_59;
            }
          }

          MEMORY[0x2530AD700](v30);
          if (*((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v28 = __src[0];
          v2 = v29;
        }

        while (v27 != v26);
        goto LABEL_59;
      }
    }

    else
    {
      v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_40;
      }
    }

    v28 = MEMORY[0x277D84F90];
LABEL_59:

    sub_252CDF97C(v28, 0);
  }

  return result;
}

unint64_t sub_252CE9174()
{
  *(v0 + 208) = 0;
  v1 = *(v0 + 192);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_28:
    v1 = sub_2529F82C4(0, *(v1 + 16) + 1, 1, v1);
  }

  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_2529F82C4((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 16) = v3 + 1;
  *(v1 + v3 + 32) = 1;
  *(v0 + 192) = v1;
  *(v0 + 384) = 20;
  v4 = sub_252C75848(&unk_2864A5F78);
  sub_252A01B34(&unk_2864A5F98);
  v5 = *(v0 + 96);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2529F8278(0, v5[2] + 1, 1, v5);
  }

  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_2529F8278((v6 > 1), v7 + 1, 1, v5);
  }

  v5[2] = v7 + 1;
  v5[v7 + 4] = v4;
  *(v0 + 96) = v5;
  result = sub_252E35284();
  if (result)
  {
    v1 = result;
    v16 = MEMORY[0x277D84F90];
    v9 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      v10 = sub_252E378C4();
      if (v10)
      {
LABEL_11:
        v11 = 0;
        v12 = MEMORY[0x277D84F90];
        do
        {
          v13 = v11;
          while (1)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v13, v1);
              v11 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              if (v13 >= *(v9 + 16))
              {
                goto LABEL_27;
              }

              v11 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }
            }

            sub_252E349D4();

            if (v15)
            {
              break;
            }

            ++v13;
            if (v11 == v10)
            {
              goto LABEL_31;
            }
          }

          MEMORY[0x2530AD700](v14);
          if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v12 = v16;
        }

        while (v11 != v10);
        goto LABEL_31;
      }
    }

    else
    {
      v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_11;
      }
    }

    v12 = MEMORY[0x277D84F90];
LABEL_31:

    sub_252CDF97C(v12, 0);
  }

  return result;
}

uint64_t sub_252CE941C(uint64_t a1)
{
  v3 = *(a1 + 16);

  if (v3)
  {
    v4 = (a1 + 352);
    v5 = MEMORY[0x277D84F90];
    v6 = v3;
    do
    {
      v7 = *v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2529F8104(0, *(v5 + 2) + 1, 1, v5);
      }

      v9 = *(v5 + 2);
      v8 = *(v5 + 3);
      if (v9 >= v8 >> 1)
      {
        v5 = sub_2529F8104((v8 > 1), v9 + 1, 1, v5);
      }

      v4 += 63;
      *(v5 + 2) = v9 + 1;
      *&v5[8 * v9 + 32] = v7;
      --v6;
    }

    while (v6);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v10 = sub_25298A638(v5);
  v12 = v11;

  if (!v3 || (v12 & 1) != 0)
  {
    v15 = a1;
LABEL_19:

    *v1 = v15;
  }

  else
  {
    v13 = 0;
    v14 = 344;
    v15 = a1;
    while (1)
    {
      v16 = *(a1 + v14 + 8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_252D57AC0(v15);
        v15 = result;
      }

      if (v13 >= *(v15 + 16))
      {
        break;
      }

      ++v13;
      *(v15 + v14) = v16 == v10;
      v14 += 504;
      if (v3 == v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_252CE958C(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x28223BE20](a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545548, &qword_252E5B5D8);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = (&v85 - v4);
  v5 = sub_252E34E84();
  v90 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v87 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v86 = &v85 - v9;
  MEMORY[0x28223BE20](v8);
  v88 = &v85 - v10;
  sub_252E352C4();
  v11 = v103;
  v91 = v1;
  if (v103)
  {
    memcpy(v101, v1, sizeof(v101));
    memcpy(v100, v1, sizeof(v100));
    sub_2529353AC(v101, v99);
    sub_252CEB304(v11, v98);
    memcpy(v102, v100, sizeof(v102));
    sub_252935408(v102);
    v12 = v98[0];
    if (v98[0] != 66)
    {
      v13 = v101[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2529F82EC(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_2529F82EC((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v13[v15 + 32] = v12;
      v2[10] = v13;
    }

    memcpy(v99, v2, sizeof(v99));
    memcpy(v98, v2, sizeof(v98));
    sub_2529353AC(v99, v97);
    sub_252CEB53C(v11, v96);
    memcpy(v100, v98, sizeof(v100));
    sub_252935408(v100);
    v16 = LOBYTE(v96[0]);
    if (LOBYTE(v96[0]) != 77)
    {
      v17 = v99[24];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2529F82C4(0, *(v17 + 2) + 1, 1, v17);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = sub_2529F82C4((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      v17[v19 + 32] = v16;
      v2[24] = v17;
      if (sub_2529A78B0(v16, &unk_2864A5BB8))
      {
        v20 = v99[12];
        v21 = sub_2529FE74C(&unk_2864A5BE0);
        sub_252A01B34(&unk_2864A5C00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2529F8278(0, *(v20 + 2) + 1, 1, v20);
        }

        v23 = *(v20 + 2);
        v22 = *(v20 + 3);
        if (v23 >= v22 >> 1)
        {
          v20 = sub_2529F8278((v22 > 1), v23 + 1, 1, v20);
        }

        *(v20 + 2) = v23 + 1;
        *&v20[8 * v23 + 32] = v21;
        v2[12] = v20;
      }
    }

    memcpy(v97, v2, sizeof(v97));
    memcpy(v96, v2, sizeof(v96));
    sub_2529353AC(v97, v95);
    sub_252CEBF68(v11, v93);
    memcpy(v98, v96, sizeof(v98));
    sub_252935408(v98);
    v24 = v93[0];
    v89 = v5;
    if (v93[0] != 709)
    {
      v25 = v97[7];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_2529F8B48(0, *(v25 + 2) + 1, 1, v25);
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_2529F8B48((v26 > 1), v27 + 1, 1, v25);
      }

      v28 = v97[12];
      *(v25 + 2) = v27 + 1;
      *&v25[2 * v27 + 32] = v24;
      v2[7] = v25;
      v29 = sub_2529FE74C(&unk_2864A5C10);
      sub_252A01B34(&unk_2864A5C30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_2529F8278(0, *(v28 + 2) + 1, 1, v28);
      }

      v31 = *(v28 + 2);
      v30 = *(v28 + 3);
      if (v31 >= v30 >> 1)
      {
        v28 = sub_2529F8278((v30 > 1), v31 + 1, 1, v28);
      }

      *(v28 + 2) = v31 + 1;
      *&v28[8 * v31 + 32] = v29;
      v2[12] = v28;
    }

    v32 = sub_252E34D54();
    if (v32)
    {
      if (*(v97[10] + 16) || (v33 = v32, memcpy(v95, v2, sizeof(v95)), memcpy(v93, v2, 0x1F8uLL), sub_2529353AC(v95, &v92), sub_252CEB304(v33, &v94), memcpy(v96, v93, sizeof(v96)), sub_252935408(v96), v34 = v94, v94 == 66))
      {
      }

      else
      {
        v60 = v95[10];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_2529F82EC(0, *(v60 + 2) + 1, 1, v60);
        }

        v62 = *(v60 + 2);
        v61 = *(v60 + 3);
        if (v62 >= v61 >> 1)
        {
          v60 = sub_2529F82EC((v61 > 1), v62 + 1, 1, v60);
        }

        *(v60 + 2) = v62 + 1;
        v60[v62 + 32] = v34;
        v2[10] = v60;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545568, &qword_252E5B5F0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_252E3C3C0;
    *(v35 + 32) = sub_252E34D54();
    *(v35 + 40) = v11;

    v36 = sub_252CEC1A0(v35);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545570, &qword_252E5B5F8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v37 = v36[2];
    if (v37)
    {
      v38 = v36 + 4;
      do
      {
        v39 = *v38;
        if (*(*v38 + 16))
        {
          v40 = v2[12];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_2529F8278(0, *(v40 + 2) + 1, 1, v40);
          }

          v42 = *(v40 + 2);
          v41 = *(v40 + 3);
          if (v42 >= v41 >> 1)
          {
            v40 = sub_2529F8278((v41 > 1), v42 + 1, 1, v40);
          }

          *(v40 + 2) = v42 + 1;
          *&v40[8 * v42 + 32] = v39;
          v2 = v91;
          v91[12] = v40;
        }

        ++v38;
        --v37;
      }

      while (v37);
    }

    v43 = sub_252E34A14();

    if (!v43)
    {

      goto LABEL_71;
    }

    v44 = v85;
    sub_252E34E74();
    v45 = v89;
    v46 = v90;
    if ((*(v90 + 48))(v44, 1, v89) == 1)
    {

      sub_25293847C(v44, &qword_27F545548, &qword_252E5B5D8);
      goto LABEL_71;
    }

    (*(v46 + 32))(v88, v44, v45);
    v47 = *MEMORY[0x277D5EA28];
    v85 = *(v46 + 104);
    v85(v86, v47, v45);
    sub_252D07DD4(&qword_27F545560, MEMORY[0x277D5EA60], MEMORY[0x277D5EA78]);
    sub_252E371F4();
    sub_252E371F4();
    if (v96[0] == v95[0] && v96[1] == v95[1])
    {
      v48 = 1;
    }

    else
    {
      v48 = sub_252E37DB4();
    }

    v49 = *(v90 + 8);
    v50 = v86;
    v90 += 8;
    v86 = v49;
    (v49)(v50, v89);

    if (v48)
    {
      v51 = v91;
      v52 = v91[4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_2529F8B34(0, *(v52 + 2) + 1, 1, v52);
      }

      v54 = *(v52 + 2);
      v53 = *(v52 + 3);
      if (v54 >= v53 >> 1)
      {
        v52 = sub_2529F8B34((v53 > 1), v54 + 1, 1, v52);
      }

      *(v52 + 2) = v54 + 1;
      v52[v54 + 32] = 2;
      v51[4] = v52;
    }

    v85(v87, *MEMORY[0x277D5EA58], v89);
    sub_252E371F4();
    sub_252E371F4();
    if (v96[0] == v95[0] && v96[1] == v95[1])
    {
      v55 = v89;
      (v86)(v87, v89);
    }

    else
    {
      v56 = sub_252E37DB4();
      v55 = v89;
      (v86)(v87, v89);

      if ((v56 & 1) == 0)
      {
        (v86)(v88, v55);

        v2 = v91;
        goto LABEL_71;
      }
    }

    v2 = v91;
    v57 = v91[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_2529F8B34(0, *(v57 + 2) + 1, 1, v57);
    }

    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v59 >= v58 >> 1)
    {
      v57 = sub_2529F8B34((v58 > 1), v59 + 1, 1, v57);
    }

    (v86)(v88, v55);
    *(v57 + 2) = v59 + 1;
    v57[v59 + 32] = 1;
    v2[4] = v57;
  }

LABEL_71:
  v63 = sub_252E352B4();
  if (v63)
  {
    v64 = v63;
    memcpy(v97, v2, sizeof(v97));
    memcpy(v102, v2, sizeof(v102));
    sub_2529353AC(v97, v101);
    v65 = sub_252CEC3C0();
    memcpy(v98, v102, sizeof(v98));
    sub_252935408(v98);

    v2[2] = v65;
    memcpy(v99, v2, sizeof(v99));
    memcpy(v102, v2, sizeof(v102));
    sub_2529353AC(v99, v101);
    sub_252CEC448(v64, v101);
    memcpy(v100, v102, sizeof(v100));
    sub_252935408(v100);
    *(v2 + 40) = v101[0];
    memcpy(v101, v2, sizeof(v101));
    memcpy(v96, v2, sizeof(v96));
    sub_2529353AC(v101, v102);
    sub_252CECC58(v95);

    memcpy(v102, v96, sizeof(v102));
    sub_252935408(v102);
    v66 = v95[1];
    v67 = BYTE1(v95[1]);
    v2[35] = v95[0];
    *(v2 + 288) = v66;
    *(v2 + 289) = v67;
  }

  memcpy(v102, v2, sizeof(v102));
  memcpy(v101, v2, sizeof(v101));
  sub_2529353AC(v102, v100);
  v68 = sub_252E352A4();
  v69 = MEMORY[0x277D84F90];
  if (v68)
  {
    v70 = v68;
  }

  else
  {
    v70 = MEMORY[0x277D84F90];
  }

  sub_252CED168(v70, v93);

  memcpy(v100, v101, sizeof(v100));
  sub_252935408(v100);
  if (LOBYTE(v93[0]) != 5)
  {
    v71 = v102[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_2529F8B34(0, *(v71 + 2) + 1, 1, v71);
    }

    v73 = *(v71 + 2);
    v72 = *(v71 + 3);
    if (v73 >= v72 >> 1)
    {
      v71 = sub_2529F8B34((v72 > 1), v73 + 1, 1, v71);
    }

    *(v71 + 2) = v73 + 1;
    v71[v73 + 32] = 4;
    v2[4] = v71;
  }

  memcpy(v99, v2, sizeof(v99));
  memcpy(v98, v2, sizeof(v98));
  sub_2529353AC(v99, v97);
  v74 = sub_252E352A4();
  if (v74)
  {
    v75 = v74;
  }

  else
  {
    v75 = v69;
  }

  v76 = sub_252CED470(v75);

  memcpy(v97, v98, sizeof(v97));
  sub_252935408(v97);
  v77 = sub_252E352A4();
  if (v77)
  {
    v78 = v77;
    v96[0] = v69;
    v79 = v77 & 0xFFFFFFFFFFFFFF8;
    if (v77 >> 62)
    {
LABEL_105:
      v80 = sub_252E378C4();
      v90 = v76;
      if (v80)
      {
LABEL_88:
        v76 = 0;
        v81 = MEMORY[0x277D84F90];
        do
        {
          v82 = v76;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v82, v78);
              v76 = v82 + 1;
              if (__OFADD__(v82, 1))
              {
                goto LABEL_103;
              }
            }

            else
            {
              if (v82 >= *(v79 + 16))
              {
                goto LABEL_104;
              }

              v76 = v82 + 1;
              if (__OFADD__(v82, 1))
              {
LABEL_103:
                __break(1u);
LABEL_104:
                __break(1u);
                goto LABEL_105;
              }
            }

            sub_252E349D4();

            if (v95[0])
            {
              break;
            }

            ++v82;
            if (v76 == v80)
            {
              goto LABEL_107;
            }
          }

          MEMORY[0x2530AD700](v83);
          if (*((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v81 = v96[0];
        }

        while (v76 != v80);
        goto LABEL_107;
      }
    }

    else
    {
      v80 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v90 = v76;
      if (v80)
      {
        goto LABEL_88;
      }
    }

    v81 = MEMORY[0x277D84F90];
LABEL_107:

    v96[0] = v81;
    sub_25297AE00(v90);
    sub_252CDF97C(v96[0], 0);
  }
}

uint64_t sub_252CEA530(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;

  v6 = sub_252C75D8C(v5);

  v7 = v6 + 56;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v89 = v6;
  v90 = v9 & *(v6 + 56);
  v10 = (v8 + 63) >> 6;

  do
  {
LABEL_5:
    v11 = v90;
    if (v90)
    {
      goto LABEL_10;
    }

    do
    {
      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
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
        swift_once();
        goto LABEL_41;
      }

      if (v12 >= v10)
      {
LABEL_38:
        v7 = v89;

        v39 = a1;
        goto LABEL_43;
      }

      v11 = *(v7 + 8 * v12);
      ++v4;
    }

    while (!v11);
    v4 = v12;
LABEL_10:
    v90 = (v11 - 1) & v11;
  }

  while (!*(a2 + 16));
  v13 = *(*(v89 + 48) + (__clz(__rbit64(v11)) | (v4 << 6)));
  sub_252E37EC4();
  LOBYTE(v94) = v13;
  StateSemantic.rawValue.getter();
  sub_252E37044();

  v14 = sub_252E37F14();
  v15 = ~(-1 << *(a2 + 32));
  for (i = v14 & v15; ; i = (i + 1) & v15)
  {
    if (((*(a2 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
    {
      goto LABEL_5;
    }

    LOBYTE(__dst[0]) = *(*(a2 + 48) + i);
    LOBYTE(v94) = v13;
    v17 = StateSemantic.rawValue.getter();
    v19 = v18;
    if (v17 == StateSemantic.rawValue.getter() && v19 == v20)
    {
      break;
    }

    v22 = sub_252E37DB4();

    if (v22)
    {
      goto LABEL_20;
    }
  }

LABEL_20:

  v23 = 1 << *(v89 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v92 = v24 & *(v89 + 56);
  v25 = (v23 + 63) >> 6;

  v26 = 0;
  do
  {
LABEL_24:
    v27 = v92;
    if (!v92)
    {
      while (1)
      {
        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_119;
        }

        if (v28 >= v25)
        {
          goto LABEL_38;
        }

        v27 = *(v7 + 8 * v28);
        ++v26;
        if (v27)
        {
          v26 = v28;
          break;
        }
      }
    }

    v92 = (v27 - 1) & v27;
  }

  while (!*(a3 + 16));
  v29 = *(*(v89 + 48) + (__clz(__rbit64(v27)) | (v26 << 6)));
  sub_252E37EC4();
  LOBYTE(v94) = v29;
  StateSemantic.rawValue.getter();
  sub_252E37044();

  v30 = sub_252E37F14();
  v31 = ~(-1 << *(a3 + 32));
  for (j = v30 & v31; ; j = (j + 1) & v31)
  {
    if (((*(a3 + 56 + ((j >> 3) & 0xFFFFFFFFFFFFFF8)) >> j) & 1) == 0)
    {
      goto LABEL_24;
    }

    LOBYTE(__dst[0]) = *(*(a3 + 48) + j);
    LOBYTE(v94) = v29;
    v33 = StateSemantic.rawValue.getter();
    v35 = v34;
    if (v33 == StateSemantic.rawValue.getter() && v35 == v36)
    {
      break;
    }

    v38 = sub_252E37DB4();

    if (v38)
    {
      goto LABEL_40;
    }
  }

LABEL_40:
  v7 = v89;

  if (qword_27F53F4F8 != -1)
  {
    goto LABEL_125;
  }

LABEL_41:
  v40 = sub_252E36AD4();
  __swift_project_value_buffer(v40, qword_27F544D90);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();
  v94 = __dst[0];
  v95 = __dst[1];
  MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E935D0);
  memcpy(__dst, __src, sizeof(__dst));
  v41 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v41);

  MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E93600);
  sub_252A54248();
  v42 = sub_252E373B4();
  MEMORY[0x2530AD570](v42);

  sub_252CC3D90(v94, v95, 0xD000000000000077, 0x8000000252E92DE0);

  v39 = a1;
  v43 = sub_252D07538(a1, a3);

  v45 = *(*a1 + 16);
  if (v45 < v43)
  {
    __break(1u);
    goto LABEL_127;
  }

  sub_252D57B9C(v43, v45);
LABEL_43:
  v46 = sub_2529FC02C(&unk_2864A24B0);
  if (sub_252DA0454(56, v7))
  {
    v47 = sub_252A11F64(v46, v7);

    if ((v47 & 1) == 0)
    {
      v48 = *v39;
      v49 = *(*v39 + 16);
      if (!v49)
      {
        v50 = 0;
        v53 = 0;
LABEL_74:
        sub_252D57B9C(v50, v53);
        goto LABEL_75;
      }

      v50 = 0;
      while (1)
      {
        if (v50 >= *(v48 + 16))
        {
          goto LABEL_121;
        }

        LOBYTE(__dst[0]) = *(v48 + 32 + v50);
        if (StateSemantic.rawValue.getter() == 0x6E61656C63 && v51 == 0xE500000000000000)
        {
          break;
        }

        v52 = sub_252E37DB4();

        if (v52)
        {
          goto LABEL_56;
        }

        if (v49 == ++v50)
        {
          v50 = *(v48 + 16);
          v53 = v50;
          goto LABEL_74;
        }
      }

LABEL_56:
      v54 = *(v48 + 16);
      if (v54 - 1 == v50)
      {
        v53 = v50 + 1;
        goto LABEL_74;
      }

      v55 = v50 + 33;
      do
      {
        v58 = v55 - 32;
        if (v55 - 32 >= v54)
        {
          goto LABEL_122;
        }

        LOBYTE(__dst[0]) = *(v48 + v55);
        if (StateSemantic.rawValue.getter() == 0x6E61656C63 && v59 == 0xE500000000000000)
        {
        }

        else
        {
          v60 = sub_252E37DB4();

          if ((v60 & 1) == 0)
          {
            if (v58 != v50)
            {
              if ((v50 & 0x8000000000000000) != 0)
              {
                goto LABEL_128;
              }

              v61 = *(v48 + 16);
              if (v50 >= v61)
              {
                goto LABEL_129;
              }

              if (v58 >= v61)
              {
                goto LABEL_130;
              }

              v62 = *(v48 + 32 + v50);
              v63 = *(v48 + v55);
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_252D57AE8(v48);
                v48 = result;
              }

              *(v48 + v50 + 32) = v63;
              *(v48 + v55) = v62;
              *v39 = v48;
            }

            ++v50;
          }
        }

        v54 = *(v48 + 16);
        v56 = v55 + 1;
        v57 = v55 - 31;
        ++v55;
      }

      while (v57 != v54);
      v53 = v56 - 32;
      if ((v56 - 32) >= v50)
      {
        goto LABEL_74;
      }

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
      return result;
    }
  }

  else
  {
  }

LABEL_75:
  if (sub_252DA0454(59, v7))
  {
    if (sub_252DA0454(57, v7))
    {
    }

    else
    {
      v64 = sub_252DA0454(58, v7);

      if ((v64 & 1) == 0)
      {
        return result;
      }
    }

    v65 = *v39;
    v66 = *(*v39 + 16);
    if (!v66)
    {
      v67 = 0;
      v73 = 0;
      return sub_252D57B9C(v67, v73);
    }

    v67 = 0;
    v7 = 0xE300000000000000;
    while (1)
    {
      if (v67 >= *(v65 + 2))
      {
        goto LABEL_123;
      }

      v68 = v65[v67 + 32];
      LOBYTE(__dst[0]) = v68;
      if (StateSemantic.rawValue.getter() == 0x6D7575636176 && v69 == 0xE600000000000000)
      {
        break;
      }

      v70 = sub_252E37DB4();

      if (v70)
      {
        goto LABEL_95;
      }

      LOBYTE(__dst[0]) = v68;
      if (StateSemantic.rawValue.getter() == 7368557 && v71 == 0xE300000000000000)
      {
        break;
      }

      v72 = sub_252E37DB4();

      if (v72)
      {
        goto LABEL_95;
      }

      if (v66 == ++v67)
      {
        v67 = *(v65 + 2);
        v73 = v67;
        return sub_252D57B9C(v67, v73);
      }
    }

LABEL_95:
    v74 = *(v65 + 2);
    if (v74 - 1 == v67)
    {
      v73 = v67 + 1;
      return sub_252D57B9C(v67, v73);
    }

    v75 = v67 + 33;
    v7 = 0xE300000000000000;
    while (1)
    {
      v78 = v75 - 32;
      if (v75 - 32 >= v74)
      {
        goto LABEL_120;
      }

      v79 = v65[v75];
      LOBYTE(__dst[0]) = v79;
      if (StateSemantic.rawValue.getter() != 0x6D7575636176 || v80 != 0xE600000000000000)
      {
        v81 = sub_252E37DB4();

        if (v81)
        {
          goto LABEL_99;
        }

        LOBYTE(__dst[0]) = v79;
        if (StateSemantic.rawValue.getter() != 7368557 || v82 != 0xE300000000000000)
        {
          v83 = sub_252E37DB4();

          if ((v83 & 1) == 0)
          {
            if (v78 != v67)
            {
              if ((v67 & 0x8000000000000000) != 0)
              {
                goto LABEL_131;
              }

              v84 = *(v65 + 2);
              if (v67 >= v84)
              {
                goto LABEL_132;
              }

              if (v78 >= v84)
              {
                goto LABEL_133;
              }

              v85 = v65[v67 + 32];
              v86 = v65[v75];
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v65 = sub_252D57AE8(v65);
              }

              v65[v67 + 32] = v86;
              v65[v75] = v85;
              *a1 = v65;
            }

            ++v67;
          }

          goto LABEL_99;
        }
      }

LABEL_99:
      v74 = *(v65 + 2);
      v76 = v75 + 1;
      v77 = v75 - 31;
      ++v75;
      if (v77 == v74)
      {
        v73 = v76 - 32;
        if ((v76 - 32) < v67)
        {
          goto LABEL_124;
        }

        return sub_252D57B9C(v67, v73);
      }
    }
  }
}

void *sub_252CEAF6C(void *result, uint64_t *a2)
{
  v27 = result;
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 136);
    v7 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      memcpy(__dst, v6 - 104, 0x1F8uLL);
      v8 = *(v6 - 56);
      v50 = *(v6 - 72);
      v51 = v8;
      v9 = *(v6 - 24);
      v52 = *(v6 - 40);
      v53 = v9;
      v10 = *(v6 - 88);
      v48 = *(v6 - 104);
      v49 = v10;
      v11 = __dst[24];
      v12 = __dst[12];
      v13 = *v6;
      v43 = v6[1];
      v42 = v13;
      v14 = v6[2];
      v15 = v6[3];
      v16 = v6[4];
      v47 = *(v6 + 10);
      v46 = v16;
      v45 = v15;
      v44 = v14;
      memcpy(__src, v6 + 6, sizeof(__src));
      if (*(__dst[24] + 16))
      {
        sub_2529353AC(__dst, v40);
        sub_2529353AC(__dst, v40);
      }

      else
      {
        sub_2529353AC(__dst, v40);
        sub_2529353AC(__dst, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2529F82C4(0, 1, 1, v11);
        }

        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          v11 = sub_2529F82C4((v17 > 1), v18 + 1, 1, v11);
        }

        *(v11 + 2) = v18 + 1;
        v11[v18 + 32] = v27;
      }

      if (BYTE4(__dst[48]) == 1)
      {
        sub_252935408(__dst);
      }

      else
      {
        v12 = __dst[12];

        v20 = sub_252C75848(v19);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2529F8278(0, v12[2] + 1, 1, v12);
        }

        v22 = v12[2];
        v21 = v12[3];
        if (v22 >= v21 >> 1)
        {
          v12 = sub_2529F8278((v21 > 1), v22 + 1, 1, v12);
        }

        sub_252935408(__dst);
        v12[2] = v22 + 1;
        v12[v22 + 4] = v20;
      }

      v36 = v50;
      v37 = v51;
      v38 = v52;
      v39 = v53;
      v34 = v48;
      v35 = v49;
      v28 = v42;
      v29 = v43;
      v33 = v47;
      v31 = v45;
      v32 = v46;
      v30 = v44;
      memcpy(v40, __src, 0x130uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2529F7FB0(0, *(v7 + 2) + 1, 1, v7);
      }

      v24 = *(v7 + 2);
      v23 = *(v7 + 3);
      if (v24 >= v23 >> 1)
      {
        v7 = sub_2529F7FB0((v23 > 1), v24 + 1, 1, v7);
      }

      ++v5;
      *(v7 + 2) = v24 + 1;
      v25 = &v7[504 * v24];
      *(v25 + 2) = v34;
      *(v25 + 3) = v35;
      *(v25 + 4) = v36;
      *(v25 + 5) = v37;
      *(v25 + 6) = v38;
      *(v25 + 7) = v39;
      *(v25 + 16) = v12;
      *(v25 + 152) = v29;
      *(v25 + 136) = v28;
      *(v25 + 200) = v32;
      *(v25 + 184) = v31;
      *(v25 + 168) = v30;
      *(v25 + 27) = v33;
      *(v25 + 28) = v11;
      result = memcpy(v25 + 232, v40, 0x130uLL);
      v6 = (v6 + 504);
      if (v4 == v5)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_25:

    *v26 = v7;
  }

  return result;
}

uint64_t sub_252CEB304@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_252E34804();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v21, v2, sizeof(v21));
  result = sub_252D05090(a1);
  v10 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v11 = 0;
    v19 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v17 = a2;
    v18 = 0x8000000252E7BB10;
    v12 = (v6 + 8);
    while (v11 < *(v10 + 16))
    {
      (*(v6 + 16))(v8, v19 + *(v6 + 72) * v11, v5);
      v14 = sub_252E347F4();
      if (v15)
      {
        if (v14 == 0xD000000000000012 && v15 == v18)
        {

LABEL_10:

          v16._countAndFlagsBits = sub_252E347E4();
          AttributeSemantic.init(rawValue:)(v16);
          return (*v12)(v8, v5);
        }

        v13 = sub_252E37DB4();

        if (v13)
        {
          goto LABEL_10;
        }
      }

      ++v11;
      result = (*v12)(v8, v5);
      if (v20 == v11)
      {

        a2 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_13:
    *a2 = 66;
  }

  return result;
}

uint64_t sub_252CEB53C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545578, &qword_252E5B600);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v66 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v70 = &v66 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v72 = &v66 - v15;
  MEMORY[0x28223BE20](v14);
  v74 = &v66 - v16;
  v17 = sub_252E34804();
  v78 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v75 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v73 = &v66 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v66 - v22;
  memcpy(v80, v2, sizeof(v80));
  memcpy(v79, v2, sizeof(v79));
  v24 = sub_252D05090(a1);
  memcpy(v79, v2, sizeof(v79));
  v25 = v79;
  if (sub_252D057E4(v24))
  {

    v27 = 56;
    goto LABEL_3;
  }

  v68 = v8;
  v69 = v11;
  v28 = *(v24 + 2);
  v71 = a2;
  v77 = v17;
  if (v28)
  {
    v67 = a1;
    a2 = 0;
    a1 = &v24[(*(v78 + 80) + 32) & ~*(v78 + 80)];
    v76 = 0x8000000252E74CB0;
    v29 = (v78 + 8);
    do
    {
      if (a2 >= *(v24 + 2))
      {
        __break(1u);
        goto LABEL_73;
      }

      (*(v78 + 16))(v23, a1 + *(v78 + 72) * a2, v17);
      v25 = v23;
      v31 = sub_252E347F4();
      if (v32)
      {
        if (v31 == 0xD000000000000013 && v32 == v76)
        {

LABEL_13:

          v33._countAndFlagsBits = sub_252E347E4();
          StateSemantic.init(rawValue:)(v33);
          return (*v29)(v23, v77);
        }

        v25 = v32;
        v30 = sub_252E37DB4();

        if (v30)
        {
          goto LABEL_13;
        }
      }

      ++a2;
      v17 = v77;
      (*v29)(v23, v77);
    }

    while (v28 != a2);

    a2 = v71;
    a1 = v67;
  }

  else
  {
  }

  v34 = sub_252E34D84();
  v35 = v74;
  if (v34)
  {
    v36 = sub_252E350C4();
    v37 = *(v36 - 8);
    v38 = *(v37 + 56);
    v38(v35, 1, 1, v36);
    if (sub_252E34F24())
    {
      v39 = v72;
      sub_252E350B4();

      sub_25293847C(v35, &qword_27F545578, &qword_252E5B600);
      sub_25293DDF0(v39, v35, &qword_27F545578, &qword_252E5B600);
    }

    else
    {
      if (sub_252E34F34())
      {
        sub_252E34A04();
        if (v79[0])
        {
          v59 = v70;
          sub_252E350B4();

          sub_25293847C(v35, &qword_27F545578, &qword_252E5B600);
        }

        else
        {
          sub_25293847C(v35, &qword_27F545578, &qword_252E5B600);

          v63 = v70;
          v38(v70, 1, 1, v36);
          v59 = v63;
        }

        v41 = v68;
        v40 = v69;
        sub_25293DDF0(v59, v35, &qword_27F545578, &qword_252E5B600);
LABEL_60:
        sub_25293DDF0(v35, v40, &qword_27F545578, &qword_252E5B600);
        if ((*(v37 + 48))(v40, 1, v36) != 1)
        {
          sub_252938414(v40, v41, &qword_27F545578, &qword_252E5B600);
          v65 = (*(v37 + 88))(v41, v36);
          if (v65 == *MEMORY[0x277D5F008])
          {
            v64 = 1;
            goto LABEL_64;
          }

          if (v65 == *MEMORY[0x277D5F000])
          {
            *v71 = 0;
            return sub_25293847C(v40, &qword_27F545578, &qword_252E5B600);
          }

          (*(v37 + 8))(v41, v36);
        }

        v64 = 77;
LABEL_64:
        *v71 = v64;
        return sub_25293847C(v40, &qword_27F545578, &qword_252E5B600);
      }
    }

    v41 = v68;
    v40 = v69;
    goto LABEL_60;
  }

  sub_252E34644();
  v42 = sub_252E359F4();

  if (!*(v42 + 16))
  {
    goto LABEL_31;
  }

  v43 = sub_252A44A10(1701667182, 0xE400000000000000);
  if ((v44 & 1) == 0)
  {
    goto LABEL_31;
  }

  v25 = *(*(v42 + 56) + 8 * v43);

  if (v25 >> 62)
  {
    goto LABEL_75;
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_24:
  if ((v25 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0, v25);
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v45 = sub_252E35924();

  if (!v45)
  {
    while (1)
    {
LABEL_32:
      result = sub_252E34D54();
      if (!result)
      {
        goto LABEL_56;
      }

      v50 = result;
      memcpy(v79, v80, sizeof(v79));
      v25 = v79;
      v76 = v50;
      v51 = sub_252D05090(v50);
      v52 = v51;
      v53 = *(v51 + 2);
      if (!v53)
      {
        break;
      }

      a2 = 0;
      a1 = &v51[(*(v78 + 80) + 32) & ~*(v78 + 80)];
      v49 = (v78 + 8);
      while (a2 < *(v52 + 2))
      {
        v25 = v75;
        (*(v78 + 16))(v75, a1 + *(v78 + 72) * a2, v17);
        v55 = sub_252E347F4();
        if (v56)
        {
          if (v55 == 0xD000000000000013 && v56 == 0x8000000252E74CB0)
          {

LABEL_42:

            v57 = v75;
            goto LABEL_43;
          }

          v25 = v56;
          v54 = sub_252E37DB4();

          if (v54)
          {
            goto LABEL_42;
          }
        }

        ++a2;
        v17 = v77;
        (*v49)(v75, v77);
        if (v53 == a2)
        {
          goto LABEL_55;
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      result = sub_252E378C4();
      if (result)
      {
        goto LABEL_24;
      }

LABEL_31:
    }

LABEL_55:

    a2 = v71;
LABEL_56:
    v27 = 77;
LABEL_3:
    *a2 = v27;
    return result;
  }

  v46 = sub_252E34734();
  if (!v46)
  {

    goto LABEL_32;
  }

  v25 = v46;
  v47 = sub_252E358F4();

  v48 = *(v47 + 16);
  if (!v48)
  {

    goto LABEL_31;
  }

  v76 = v45;
  v67 = a1;
  a2 = 0;
  a1 = v47 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
  v49 = (v78 + 8);
  while (1)
  {
    if (a2 >= *(v47 + 16))
    {
      goto LABEL_74;
    }

    v25 = v73;
    (*(v78 + 16))(v73, a1 + *(v78 + 72) * a2, v17);
    v61 = sub_252E347F4();
    if (!v62)
    {
      goto LABEL_48;
    }

    if (v61 == 0xD000000000000013 && v62 == 0x8000000252E74CB0)
    {
      break;
    }

    v25 = v62;
    v60 = sub_252E37DB4();

    if (v60)
    {
      goto LABEL_54;
    }

LABEL_48:
    ++a2;
    v17 = v77;
    (*v49)(v73, v77);
    if (v48 == a2)
    {

      a2 = v71;
      goto LABEL_32;
    }
  }

LABEL_54:

  v57 = v73;
LABEL_43:
  v58._countAndFlagsBits = sub_252E347E4();
  StateSemantic.init(rawValue:)(v58);

  return (*v49)(v57, v77);
}

uint64_t sub_252CEBF68@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v5 = sub_252E34804();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v21, v2, sizeof(v21));
  result = sub_252D05090(a1);
  v10 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v11 = 0;
    v19 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v17 = a2;
    v18 = 0x8000000252E7BAF0;
    v12 = (v6 + 8);
    while (v11 < *(v10 + 16))
    {
      (*(v6 + 16))(v8, v19 + *(v6 + 72) * v11, v5);
      v14 = sub_252E347F4();
      if (v15)
      {
        if (v14 == 0xD000000000000011 && v15 == v18)
        {

LABEL_10:

          v16._countAndFlagsBits = sub_252E347E4();
          HueSemantic.init(rawValue:)(v16);
          return (*v12)(v8, v5);
        }

        v13 = sub_252E37DB4();

        if (v13)
        {
          goto LABEL_10;
        }
      }

      ++v11;
      result = (*v12)(v8, v5);
      if (v20 == v11)
      {

        a2 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_13:
    *a2 = 709;
  }

  return result;
}

void *sub_252CEC1A0(void *result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v3 = result[2];
  v4 = result + 4;
  while (1)
  {
    if (v3 == v1)
    {
      if (v2 >> 62)
      {
        goto LABEL_26;
      }

      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_11;
      }

LABEL_27:
      v10 = MEMORY[0x277D84F90];
LABEL_28:

      return v10;
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_25;
    }

    if (v4[v1++])
    {

      MEMORY[0x2530AD700](v7);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v2 = v15;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_252E378C4();
  v8 = result;
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_11:
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v9, v2);
      }

      else
      {
        v11 = *(v2 + 8 * v9 + 32);
      }

      v12 = sub_252D0661C(v11);
      if (*(v12 + 16))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2529F8278(0, v10[2] + 1, 1, v10);
        }

        v14 = v10[2];
        v13 = v10[3];
        if (v14 >= v13 >> 1)
        {
          v10 = sub_2529F8278((v13 > 1), v14 + 1, 1, v10);
        }

        v10[2] = v14 + 1;
        v10[v14 + 4] = v12;
      }

      else
      {
      }

      ++v9;
    }

    while (v8 != v9);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_252CEC3C0()
{
  if (sub_252E34EC4())
  {
    v0 = sub_252E34FD4();
  }

  else if (sub_252E34EE4())
  {
    v0 = sub_252E34DC4();
  }

  else
  {
    if (!sub_252E34ED4())
    {
      return 0;
    }

    v0 = sub_252E35314();
  }

  v1 = v0;

  return v1;
}

uint64_t sub_252CEC448@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545598, &qword_252E5B618);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v53 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v55 = v52 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v54 = v52 - v9;
  MEMORY[0x28223BE20](v8);
  v56 = v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455A0, &qword_252E5B620);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v52 - v15;
  v17 = sub_252E34EF4();
  v57 = a1;
  if (v17)
  {
    v18 = v17;
    v19 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v17 >> 62)
    {
      goto LABEL_24;
    }

    v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      while (1)
      {
        v21 = 0;
        while ((v18 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v21, v18);
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            sub_252E345B4();

            v23 = sub_252E345C4();
            v24 = *(v23 - 8);
            if ((*(v24 + 48))(v16, 1, v23) == 1)
            {
LABEL_15:
              v25 = 4;
              goto LABEL_16;
            }

            sub_252938414(v16, v14, &qword_27F5455A0, &qword_252E5B620);
            v26 = (*(v24 + 88))(v14, v23);
            if (v26 == *MEMORY[0x277D5E3B8])
            {
              *v58 = 0;
            }

            else
            {
              if (v26 != *MEMORY[0x277D5E3C0])
              {
                (*(v24 + 8))(v14, v23);
                goto LABEL_15;
              }

              v25 = 1;
LABEL_16:
              *v58 = v25;
            }

            v27 = &qword_27F5455A0;
            v28 = &qword_252E5B620;
            v29 = v16;
            return sub_25293847C(v29, v27, v28);
          }

LABEL_8:
          sub_252E349D4();
          if (v60)
          {
            goto LABEL_14;
          }

          ++v21;
          if (v22 == v20)
          {
            goto LABEL_25;
          }
        }

        if (v21 < *(v19 + 16))
        {
          break;
        }

        __break(1u);
LABEL_24:
        v20 = sub_252E378C4();
        if (!v20)
        {
          goto LABEL_25;
        }
      }

      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_25:
  }

  v30 = sub_252E34ED4();
  if (!v30)
  {
    goto LABEL_65;
  }

  v31 = v30;
  v32 = sub_252E35304();
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v60 = MEMORY[0x277D84F90];
  if (v33 >> 62)
  {
LABEL_52:
    v34 = sub_252E378C4();
    if (v34)
    {
      goto LABEL_32;
    }

LABEL_53:
    v36 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_53;
  }

LABEL_32:
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v52[1] = v31;
  do
  {
    v31 = v35;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v31, v33);
        v35 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v31 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v35 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      sub_252E349D4();
      if (v59)
      {
        break;
      }

LABEL_35:
      ++v31;
      if (v35 == v34)
      {
        goto LABEL_54;
      }
    }

    v37 = sub_252E34DD4();

    if (!v37)
    {
      goto LABEL_35;
    }

    MEMORY[0x2530AD700](v38);
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v36 = v60;
  }

  while (v35 != v34);
LABEL_54:

  if (v36 >> 62)
  {
    result = sub_252E378C4();
    v40 = v56;
    if (!result)
    {
      goto LABEL_64;
    }

LABEL_56:
    if ((v36 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](0, v36);
    }

    else
    {
      if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    sub_252E34C84();

    v41 = sub_252E34C94();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v40, 1, v41) != 1)
    {
      v43 = v54;
      sub_252938414(v40, v54, &qword_27F545598, &qword_252E5B618);
      v44 = (*(v42 + 88))(v43, v41);
      if (v44 == *MEMORY[0x277D5E770])
      {
        goto LABEL_70;
      }

      if (v44 == *MEMORY[0x277D5E778])
      {
        goto LABEL_74;
      }

      (*(v42 + 8))(v54, v41);
    }

    goto LABEL_76;
  }

  v40 = v56;
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

LABEL_64:

LABEL_65:
  result = sub_252E34EC4();
  if (result)
  {
    if (sub_252E34FE4() && (v45 = sub_252E34DD4(), , v45))
    {
      v40 = v55;
      sub_252E34C84();

      v46 = sub_252E34C94();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v40, 1, v46) != 1)
      {
        v48 = v53;
        sub_252938414(v40, v53, &qword_27F545598, &qword_252E5B618);
        v49 = (*(v47 + 88))(v48, v46);
        if (v49 == *MEMORY[0x277D5E770])
        {
LABEL_70:
          v50 = 3;
          goto LABEL_77;
        }

        if (v49 == *MEMORY[0x277D5E778])
        {
LABEL_74:
          v50 = 2;
          goto LABEL_77;
        }

        (*(v47 + 8))(v48, v46);
      }
    }

    else
    {

      v51 = sub_252E34C94();
      v40 = v55;
      (*(*(v51 - 8) + 56))(v55, 1, 1, v51);
    }

LABEL_76:
    v50 = 4;
LABEL_77:
    *v58 = v50;
    v27 = &qword_27F545598;
    v28 = &qword_252E5B618;
    v29 = v40;
    return sub_25293847C(v29, v27, v28);
  }

  else
  {
    *v58 = 4;
  }

  return result;
}

uint64_t sub_252CECC58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_252E34F14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545580, &qword_252E5B608);
  MEMORY[0x28223BE20](v6);
  v8 = &v30[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545588, &qword_252E5B610);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v34 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v30[-v15];
  result = sub_252E34EC4();
  if (!result)
  {
    goto LABEL_12;
  }

  v32 = v5;
  v18 = sub_252E34FE4();
  v33 = a1;
  if (v18 && (v19 = sub_252E34A24(), , v19))
  {
    sub_252E34F04();
  }

  else
  {
    (*(v3 + 56))(v16, 1, 1, v2);
  }

  (*(v3 + 104))(v14, *MEMORY[0x277D5EBF0], v2);
  (*(v3 + 56))(v14, 0, 1, v2);
  v20 = *(v6 + 48);
  sub_252938414(v16, v8, &qword_27F545588, &qword_252E5B610);
  sub_252938414(v14, &v8[v20], &qword_27F545588, &qword_252E5B610);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) == 1)
  {

    sub_25293847C(v14, &qword_27F545588, &qword_252E5B610);
    sub_25293847C(v16, &qword_27F545588, &qword_252E5B610);
    v22 = v21(&v8[v20], 1, v2);
    a1 = v33;
    if (v22 == 1)
    {
      result = sub_25293847C(v8, &qword_27F545588, &qword_252E5B610);
LABEL_14:
      v26 = 0;
      v25 = 1;
      v24 = 2;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v23 = v34;
  sub_252938414(v8, v34, &qword_27F545588, &qword_252E5B610);
  if (v21(&v8[v20], 1, v2) == 1)
  {

    sub_25293847C(v14, &qword_27F545588, &qword_252E5B610);
    sub_25293847C(v16, &qword_27F545588, &qword_252E5B610);
    (*(v3 + 8))(v23, v2);
    a1 = v33;
LABEL_11:
    result = sub_25293847C(v8, &qword_27F545580, &qword_252E5B608);
    goto LABEL_12;
  }

  v27 = &v8[v20];
  v28 = v32;
  (*(v3 + 32))(v32, v27, v2);
  sub_252D07DD4(&qword_27F545590, MEMORY[0x277D5EC70], MEMORY[0x277D5EC80]);
  v31 = sub_252E36EF4();

  v29 = *(v3 + 8);
  v29(v28, v2);
  sub_25293847C(v14, &qword_27F545588, &qword_252E5B610);
  sub_25293847C(v16, &qword_27F545588, &qword_252E5B610);
  v29(v23, v2);
  result = sub_25293847C(v8, &qword_27F545588, &qword_252E5B610);
  a1 = v33;
  if (v31)
  {
    goto LABEL_14;
  }

LABEL_12:
  v24 = 0;
  v25 = 0;
  v26 = 1;
LABEL_15:
  *a1 = v24;
  *(a1 + 8) = v25;
  *(a1 + 9) = v26;
  return result;
}

uint64_t sub_252CED168@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_252E346B4();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_25:
    v6 = sub_252E378C4();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_26:
    v29 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_26;
  }

LABEL_3:
  v7 = 0;
  v29 = MEMORY[0x277D84F90];
  v25 = a2;
  do
  {
    a2 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](a2, a1);
        v7 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v7 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      if (sub_252E349C4())
      {
        break;
      }

LABEL_6:
      ++a2;
      if (v7 == v6)
      {
        a2 = v25;
        goto LABEL_27;
      }
    }

    v8 = sub_252E349F4();
    v10 = v9;

    if (!v10)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_2529F7A80(0, *(v29 + 2) + 1, 1, v29);
    }

    v13 = *(v29 + 2);
    v12 = *(v29 + 3);
    if (v13 >= v12 >> 1)
    {
      v29 = sub_2529F7A80((v12 > 1), v13 + 1, 1, v29);
    }

    v14 = v29;
    *(v29 + 2) = v13 + 1;
    v15 = &v14[16 * v13];
    *(v15 + 4) = v8;
    *(v15 + 5) = v10;
    a2 = v25;
  }

  while (v7 != v6);
LABEL_27:
  v17 = v26;
  v16 = v27;
  v18 = v28;
  (*(v27 + 104))(v26, *MEMORY[0x277D5E468], v28);
  v19 = sub_252E346A4();
  v21 = v20;
  v22 = (*(v16 + 8))(v17, v18);
  v30[0] = v19;
  v30[1] = v21;
  MEMORY[0x28223BE20](v22);
  *(&v25 - 2) = v30;
  LOBYTE(v19) = sub_2529ED970(sub_25296A724, (&v25 - 4), v29);

  if (v19)
  {
    v24 = 4;
  }

  else
  {
    v24 = 5;
  }

  *a2 = v24;
  return result;
}

unint64_t sub_252CED470(unint64_t result)
{
  v1 = result;
  v7 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v3, v1);
      }

      else
      {
      }

      if (sub_252E349C4() && (sub_252E34A04(), , v6))
      {

        MEMORY[0x2530AD700](v5);
        if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();

        v4 = v7;
      }

      else
      {
      }

      ++v3;
    }

    while (v2 != v3);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_252CED5E8(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF8, &qword_252E419F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v72 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v7 = *(v77 - 8);
  v8 = MEMORY[0x28223BE20](v77);
  v74 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v75 = v72 - v10;
  v1[208] = 0;
  sub_252E35554();
  v11 = *v87;
  v76 = v7;
  if (*v87)
  {
    memcpy(v85, v1, sizeof(v85));
    memcpy(v84, v1, sizeof(v84));
    sub_2529353AC(v85, v83);
    sub_252CEB304(v11, v82);
    memcpy(v86, v84, sizeof(v86));
    sub_252935408(v86);
    v12 = v82[0];
    v73 = v6;
    if (v82[0] != 66)
    {
      v13 = v85[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2529F82EC(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_2529F82EC((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v13[v15 + 32] = v12;
      *(v2 + 10) = v13;
    }

    memcpy(v83, v2, sizeof(v83));
    memcpy(v82, v2, sizeof(v82));
    sub_2529353AC(v83, v81);
    sub_252CEB53C(v11, v80);
    memcpy(v84, v82, sizeof(v84));
    sub_252935408(v84);
    v16 = v80[0];
    if (LOBYTE(v80[0]) != 77)
    {
      v17 = v83[24];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2529F82C4(0, *(v17 + 2) + 1, 1, v17);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = sub_2529F82C4((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      v17[v19 + 32] = v16;
      *(v2 + 24) = v17;
    }

    v20 = sub_252E34D54();
    if (v20)
    {
      if (*(v83[10] + 16) || (v21 = v20, memcpy(v81, v2, sizeof(v81)), memcpy(v80, v2, sizeof(v80)), sub_2529353AC(v81, v78), sub_252CEB304(v21, &v79), memcpy(v82, v80, sizeof(v82)), sub_252935408(v82), v22 = v79, v79 == 66))
      {
      }

      else
      {
        v23 = v81[10];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_2529F82EC(0, *(v23 + 2) + 1, 1, v23);
        }

        v25 = *(v23 + 2);
        v24 = *(v23 + 3);
        if (v25 >= v24 >> 1)
        {
          v23 = sub_2529F82EC((v24 > 1), v25 + 1, 1, v23);
        }

        *(v23 + 2) = v25 + 1;
        v23[v25 + 32] = v22;
        *(v2 + 10) = v23;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545568, &qword_252E5B5F0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_252E3C3C0;
    *(v26 + 32) = sub_252E34D54();
    *(v26 + 40) = v11;

    v27 = sub_252CEC1A0(v26);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545570, &qword_252E5B5F8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v28 = v27[2];
    if (v28)
    {
      v72[1] = v3;
      v29 = 4;
      do
      {
        v30 = v27[v29];
        if (*(v30 + 16))
        {
          v31 = *(v2 + 12);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_2529F8278(0, v31[2] + 1, 1, v31);
          }

          v33 = v31[2];
          v32 = v31[3];
          if (v33 >= v32 >> 1)
          {
            v31 = sub_2529F8278((v32 > 1), v33 + 1, 1, v31);
          }

          v31[2] = v33 + 1;
          v31[v33 + 4] = v30;
          *(v2 + 12) = v31;
        }

        ++v29;
        --v28;
      }

      while (v28);
    }

    v7 = v76;
    v6 = v73;
  }

  if (sub_252E35534())
  {
    memcpy(v85, v2, sizeof(v85));
    memcpy(v84, v2, sizeof(v84));
    sub_2529353AC(v85, v86);
    sub_252CEE320(v6);
    memcpy(v86, v84, sizeof(v86));
    sub_252935408(v86);
    v34 = v77;
    if ((*(v7 + 48))(v6, 1, v77) == 1)
    {
      sub_25293847C(v6, &qword_27F541AF8, &qword_252E419F8);
    }

    else
    {
      v35 = v85[32];
      v36 = v6;
      v37 = *(v7 + 32);
      v38 = v75;
      v37(v75, v36, v34);
      (*(v7 + 16))(v74, v38, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_2529F8C44(0, *(v35 + 2) + 1, 1, v35);
      }

      v40 = *(v35 + 2);
      v39 = *(v35 + 3);
      if (v40 >= v39 >> 1)
      {
        v35 = sub_2529F8C44((v39 > 1), v40 + 1, 1, v35);
      }

      *(v35 + 2) = v40 + 1;
      v42 = v76;
      v41 = v77;
      v37(&v35[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v76 + 72) * v40], v74, v77);
      *(v2 + 32) = v35;
      memcpy(v83, v2, sizeof(v83));
      memcpy(v82, v2, sizeof(v82));
      sub_2529353AC(v83, v81);
      v43 = v75;
      v44 = sub_252CEEFBC();
      memcpy(v84, v82, sizeof(v84));
      sub_252935408(v84);
      if (*(v44 + 16))
      {
        v45 = v83[12];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_2529F8278(0, v45[2] + 1, 1, v45);
        }

        v46 = v76;
        v48 = v45[2];
        v47 = v45[3];
        if (v48 >= v47 >> 1)
        {
          v45 = sub_2529F8278((v47 > 1), v48 + 1, 1, v45);
        }

        (*(v46 + 8))(v75, v77);
        v45[2] = v48 + 1;
        v45[v48 + 4] = v44;
        *(v2 + 12) = v45;
      }

      else
      {
        (*(v42 + 8))(v43, v41);
      }
    }

    memcpy(v81, v2, sizeof(v81));
    memcpy(v84, v2, sizeof(v84));
    sub_2529353AC(v81, v83);
    sub_252CEF084(v83);
    memcpy(v82, v84, sizeof(v82));
    sub_252935408(v82);
    v2[64] = v83[0];
    memcpy(v83, v2, sizeof(v83));
    memcpy(v80, v2, sizeof(v80));
    sub_2529353AC(v83, v84);
    sub_252CEF454(v78);

    memcpy(v84, v80, sizeof(v84));
    sub_252935408(v84);
    v2[25] = v78[0];
  }

  v49 = sub_252E35544();
  if (v49)
  {
    v50 = v49;
    memcpy(v83, v2, sizeof(v83));
    memcpy(v86, v2, sizeof(v86));
    sub_2529353AC(v83, v85);
    v51 = sub_252CEC3C0();
    memcpy(v84, v86, sizeof(v84));
    sub_252935408(v84);

    *(v2 + 2) = v51;
    memcpy(v85, v2, sizeof(v85));
    memcpy(v82, v2, sizeof(v82));
    sub_2529353AC(v85, v86);
    sub_252CEC448(v50, v81);

    memcpy(v86, v82, sizeof(v86));
    sub_252935408(v86);
    v2[40] = v81[0];
  }

  v52 = sub_2529FE74C(&unk_2864A5D90);
  sub_252A01B34(&unk_2864A5DB0);
  v53 = *(v2 + 12);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_85:
    v53 = sub_2529F8278(0, v53[2] + 1, 1, v53);
  }

  v55 = v53[2];
  v54 = v53[3];
  if (v55 >= v54 >> 1)
  {
    v53 = sub_2529F8278((v54 > 1), v55 + 1, 1, v53);
  }

  v53[2] = v55 + 1;
  v53[v55 + 4] = v52;
  *(v2 + 12) = v53;
  memcpy(v86, v2, sizeof(v86));
  memcpy(v85, v2, sizeof(v85));
  sub_2529353AC(v86, v84);
  v56 = sub_252E35524();
  v57 = MEMORY[0x277D84F90];
  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = MEMORY[0x277D84F90];
  }

  sub_252CED168(v58, v87);

  memcpy(v84, v85, sizeof(v84));
  sub_252935408(v84);
  if (v87[0] != 5)
  {
    v59 = v86[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_2529F8B34(0, *(v59 + 2) + 1, 1, v59);
    }

    v61 = *(v59 + 2);
    v60 = *(v59 + 3);
    if (v61 >= v60 >> 1)
    {
      v59 = sub_2529F8B34((v60 > 1), v61 + 1, 1, v59);
    }

    *(v59 + 2) = v61 + 1;
    v59[v61 + 32] = 4;
    *(v2 + 4) = v59;
  }

  memcpy(v83, v2, sizeof(v83));
  memcpy(v82, v2, sizeof(v82));
  sub_2529353AC(v83, v81);
  v62 = sub_252E35524();
  if (v62)
  {
    v63 = v62;
  }

  else
  {
    v63 = v57;
  }

  v64 = sub_252CED470(v63);

  memcpy(v81, v82, sizeof(v81));
  sub_252935408(v81);
  v65 = sub_252E35524();
  if (v65)
  {
    v66 = v65;
    v80[0] = v57;
    v67 = v65 & 0xFFFFFFFFFFFFFF8;
    if (v65 >> 62)
    {
      v68 = sub_252E378C4();
      v77 = v64;
      if (v68)
      {
LABEL_68:
        v53 = 0;
        v52 = MEMORY[0x277D84F90];
        do
        {
          v76 = v52;
          v69 = v53;
          while (1)
          {
            if ((v66 & 0xC000000000000001) != 0)
            {
              v52 = MEMORY[0x2530ADF00](v69, v66);
              v53 = (v69 + 1);
              if (__OFADD__(v69, 1))
              {
                goto LABEL_83;
              }
            }

            else
            {
              if (v69 >= *(v67 + 16))
              {
                goto LABEL_84;
              }

              v52 = *(v66 + 8 * v69 + 32);

              v53 = (v69 + 1);
              if (__OFADD__(v69, 1))
              {
LABEL_83:
                __break(1u);
LABEL_84:
                __break(1u);
                goto LABEL_85;
              }
            }

            sub_252E349D4();

            if (v78[0])
            {
              break;
            }

            ++v69;
            if (v53 == v68)
            {
              v52 = v76;
              goto LABEL_88;
            }
          }

          MEMORY[0x2530AD700](v70);
          if (*((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v52 = v80[0];
        }

        while (v53 != v68);
        goto LABEL_88;
      }
    }

    else
    {
      v68 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v77 = v64;
      if (v68)
      {
        goto LABEL_68;
      }
    }

    v52 = MEMORY[0x277D84F90];
LABEL_88:

    v80[0] = v52;
    sub_25297AE00(v77);
    sub_252CDF97C(v80[0], 0);
  }
}

uint64_t sub_252CEE320@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v1 = sub_252E34D04();
  v2 = *(v1 - 8);
  v90 = v1;
  v91 = v2;
  MEMORY[0x28223BE20](v1);
  v86 = v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455B8, &qword_252E5B630);
  MEMORY[0x28223BE20](v88);
  v89 = v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455C0, &qword_252E5B638);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v87 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v93 = v84 - v9;
  MEMORY[0x28223BE20](v8);
  v94 = v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455A8, &qword_252E5B628);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v84 - v15;
  v17 = sub_252E34CC4();
  v92 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v84 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v84 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v84 - v27;
  sub_252E34644();
  sub_252E351C4();
  sub_252E34E24();

  if (v97 != 0.0)
  {
    if (sub_252E351B4())
    {
      v29 = sub_252E351A4();
      if (v29)
      {
        v30 = v29;
        sub_252E34CB4();
        v31 = v92;
        if ((*(v92 + 48))(v16, 1, v17) == 1)
        {
          sub_25293847C(v16, &qword_27F5455A8, &qword_252E5B628);

          sub_252E34644();

          sub_252E34D44();
          sub_252E34E24();

          v33 = v93;
          v32 = v94;
          if (v97 == 0.0 || (v34 = sub_252E34D34(), v36 = v35, , (v36 & 1) != 0))
          {
            v37 = 0.0;
            v38 = 1;
          }

          else
          {
            v38 = 0;
            v37 = v34;
          }
        }

        else
        {
          v48 = *(v31 + 32);
          v48(v28, v16, v17);
          v48(v26, v28, v17);
          v49 = (*(v31 + 88))(v26, v17);
          v33 = v93;
          if (v49 == *MEMORY[0x277D5E7D8])
          {
            v38 = 0;
            v37 = 12.0;
          }

          else if (v49 == *MEMORY[0x277D5E7F8])
          {
            v38 = 0;
            v37 = 1000.0;
          }

          else if (v49 == *MEMORY[0x277D5E798])
          {
            v38 = 0;
            v37 = 50.0;
          }

          else if (v49 == *MEMORY[0x277D5E7E8])
          {
            v38 = 0;
            v37 = 100.0;
          }

          else
          {
            (*(v92 + 8))(v26, v17);
            v37 = 0.0;
            v38 = 1;
          }

          v32 = v94;
        }

        sub_252E34644();

        sub_252E34D24();
        sub_252E34E24();

        if (v97 == 0.0)
        {
        }

        else
        {
          v84[1] = v30;
          v85 = v37;
          LODWORD(v92) = v38;
          sub_252E34CF4();
          v66 = v90;
          v65 = v91;
          (*(v91 + 104))(v33, *MEMORY[0x277D5E880], v90);
          (*(v65 + 56))(v33, 0, 1, v66);
          v67 = *(v88 + 48);
          v68 = v32;
          v69 = v89;
          sub_252938414(v68, v89, &qword_27F5455C0, &qword_252E5B638);
          v88 = v67;
          v70 = v66;
          sub_252938414(v33, v69 + v67, &qword_27F5455C0, &qword_252E5B638);
          v71 = *(v65 + 48);
          if (v71(v69, 1, v70) == 1)
          {

            sub_25293847C(v33, &qword_27F5455C0, &qword_252E5B638);
            sub_25293847C(v94, &qword_27F5455C0, &qword_252E5B638);
            v72 = v71(v69 + v88, 1, v70);
            LOBYTE(v38) = v92;
            v37 = v85;
            if (v72 == 1)
            {
              sub_25293847C(v69, &qword_27F5455C0, &qword_252E5B638);
              v43 = 0;
              goto LABEL_12;
            }
          }

          else
          {
            v73 = v87;
            sub_252938414(v69, v87, &qword_27F5455C0, &qword_252E5B638);
            v74 = v88;
            if (v71(v69 + v88, 1, v70) != 1)
            {
              v76 = v91;
              v77 = v69 + v74;
              v78 = v86;
              (*(v91 + 32))(v86, v77, v70);
              sub_252D07DD4(&qword_27F5455C8, MEMORY[0x277D5E888], MEMORY[0x277D5E890]);
              v79 = v70;
              v80 = sub_252E36EF4();

              v81 = *(v76 + 8);
              v81(v78, v79);
              sub_25293847C(v93, &qword_27F5455C0, &qword_252E5B638);
              sub_25293847C(v94, &qword_27F5455C0, &qword_252E5B638);
              v81(v73, v79);
              sub_25293847C(v69, &qword_27F5455C0, &qword_252E5B638);
              if (v80)
              {
                v43 = 0;
              }

              else
              {
                v43 = 4;
              }

              v44 = v95;
              LOBYTE(v38) = v92;
              v37 = v85;
LABEL_55:
              if (v43)
              {
                v75 = v38;
              }

              else
              {
                v75 = 0;
              }

              if ((v75 & 1) == 0)
              {
                goto LABEL_68;
              }

LABEL_59:
              v45 = 1;
              goto LABEL_69;
            }

            sub_25293847C(v93, &qword_27F5455C0, &qword_252E5B638);
            sub_25293847C(v94, &qword_27F5455C0, &qword_252E5B638);
            (*(v91 + 8))(v73, v70);
            LOBYTE(v38) = v92;
            v37 = v85;
          }

          sub_25293847C(v69, &qword_27F5455B8, &qword_252E5B630);
        }

        v43 = 4;
        v44 = v95;
        goto LABEL_55;
      }
    }

    goto LABEL_14;
  }

  sub_252E34644();
  sub_252E34D44();
  sub_252E34E24();

  if (v97 == 0.0)
  {
    sub_252E34644();
    sub_252E34D24();
    sub_252E34E24();

    if (v97 != 0.0)
    {
      sub_252E34D14();
      if (!v46)
      {
LABEL_14:

        goto LABEL_15;
      }

      v47 = sub_252E34AC4();

      if ((v47 & 0x100000000) != 0)
      {
        goto LABEL_15;
      }

      LOBYTE(v38) = 0;
      v42 = *&v47;
      goto LABEL_11;
    }

    sub_252E34644();
    sub_252E35024();
    sub_252E34E24();

    if (v97 != 0.0)
    {
      v50 = sub_252E35014();
      if ((v51 & 1) == 0)
      {
        v55 = v50;
        v56 = sub_252E35004();
        v58 = v57;
        v59 = v56;
        v60 = sub_252E34FF4();
        v62 = v61;

        LOBYTE(v38) = 0;
        v63 = v60;
        v64 = 0.0;
        if (v62)
        {
          v63 = 0.0;
        }

        if ((v58 & 1) == 0)
        {
          v64 = v59;
        }

        v42 = v63 + v64 / v55;
        goto LABEL_11;
      }
    }

    sub_252E34CB4();
    v52 = v92;
    if ((*(v92 + 48))(v14, 1, v17) == 1)
    {
      sub_25293847C(v14, &qword_27F5455A8, &qword_252E5B628);
      goto LABEL_15;
    }

    v53 = *(v52 + 32);
    v53(v23, v14, v17);
    v53(v20, v23, v17);
    v54 = (*(v52 + 88))(v20, v17);
    if (v54 != *MEMORY[0x277D5E7D8])
    {
      v44 = v95;
      if (v54 == *MEMORY[0x277D5E7F8])
      {
        LOBYTE(v38) = 0;
        v37 = 1000.0;
        v43 = 4;
        goto LABEL_68;
      }

      if (v54 == *MEMORY[0x277D5E798])
      {
        LOBYTE(v38) = 0;
        v43 = 4;
        v37 = 50.0;
        goto LABEL_68;
      }

      if (v54 == *MEMORY[0x277D5E7E8])
      {
        LOBYTE(v38) = 0;
        v43 = 4;
        v37 = 100.0;
        goto LABEL_68;
      }

      (*(v52 + 8))(v20, v17);
      goto LABEL_59;
    }

    LOBYTE(v38) = 0;
    v43 = 4;
    v37 = 12.0;
LABEL_12:
    v44 = v95;
LABEL_68:
    v97 = v37;
    v98 = v38;
    v96 = v43;
    sub_252AD617C();
    sub_252E35824();
    v45 = 0;
    goto LABEL_69;
  }

  v39 = sub_252E34D34();
  v41 = v40;

  if ((v41 & 1) == 0)
  {
    LOBYTE(v38) = 0;
    v42 = v39;
LABEL_11:
    v37 = v42;
    v43 = 4;
    goto LABEL_12;
  }

LABEL_15:
  v45 = 1;
  v44 = v95;
LABEL_69:
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  return (*(*(v82 - 8) + 56))(v44, v45, 1, v82);
}

uint64_t sub_252CEEFBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  sub_252E35814();
  result = MEMORY[0x277D84FA0];
  if (v2 != 4)
  {
    v3 = MEMORY[0x277D84FA0];
    if (v2 - 1 > 2)
    {
      v1 = sub_2529FE74C(&unk_2864A5D30);
      swift_arrayDestroy();
      return v1;
    }

    else
    {
      sub_252DA6CD0(&v2, 0xD000000000000019, 0x8000000252E64DA0);

      return v3;
    }
  }

  return result;
}

uint64_t sub_252CEF084@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455A8, &qword_252E5B628);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_252E34CC4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_252E34CB4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_25293847C(v4, &qword_27F5455A8, &qword_252E5B628);
    v16 = 4;
  }

  else
  {
    v24 = v9;
    v25 = a1;
    (*(v6 + 32))(v14, v4, v5);
    v17 = *MEMORY[0x277D5E7B0];
    v23 = *(v6 + 104);
    v23(v12, v17, v5);
    sub_252D07DD4(&qword_27F5455B0, MEMORY[0x277D5E808], MEMORY[0x277D5E820]);
    sub_252E371F4();
    sub_252E371F4();
    if (v28 == v26 && v29 == v27)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_252E37DB4();
    }

    v19 = *(v6 + 8);
    v19(v12, v5);

    if (v18)
    {
      result = (v19)(v14, v5);
      v16 = 2;
    }

    else
    {
      v20 = v24;
      v23(v24, *MEMORY[0x277D5E7B8], v5);
      sub_252E371F4();
      sub_252E371F4();
      if (v28 == v26 && v29 == v27)
      {
        v19(v20, v5);
        v19(v14, v5);

        v16 = 1;
      }

      else
      {
        v21 = sub_252E37DB4();
        v19(v20, v5);
        v19(v14, v5);

        if (v21)
        {
          v16 = 1;
        }

        else
        {
          v16 = 4;
        }
      }
    }

    a1 = v25;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_252CEF454@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455A8, &qword_252E5B628);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_252E34CC4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_252E34CB4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_25293847C(v4, &qword_27F5455A8, &qword_252E5B628);
    v16 = 3;
  }

  else
  {
    v24 = v9;
    v25 = a1;
    (*(v6 + 32))(v14, v4, v5);
    v17 = *MEMORY[0x277D5E7C8];
    v23 = *(v6 + 104);
    v23(v12, v17, v5);
    sub_252D07DD4(&qword_27F5455B0, MEMORY[0x277D5E808], MEMORY[0x277D5E820]);
    sub_252E371F4();
    sub_252E371F4();
    if (v28 == v26 && v29 == v27)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_252E37DB4();
    }

    v19 = *(v6 + 8);
    v19(v12, v5);

    if (v18)
    {
      result = (v19)(v14, v5);
      v16 = 0;
    }

    else
    {
      v20 = v24;
      v23(v24, *MEMORY[0x277D5E7D0], v5);
      sub_252E371F4();
      sub_252E371F4();
      if (v28 == v26 && v29 == v27)
      {
        v19(v20, v5);
        v19(v14, v5);

        v16 = 2;
      }

      else
      {
        v21 = sub_252E37DB4();
        v19(v20, v5);
        v19(v14, v5);

        if (v21)
        {
          v16 = 2;
        }

        else
        {
          v16 = 3;
        }
      }
    }

    a1 = v25;
  }

  *a1 = v16;
  return result;
}

uint64_t sub_252CEF824(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF8, &qword_252E419F8);
  MEMORY[0x28223BE20](v4 - 8);
  v101 = &v88 - v5;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v95 = *(v103 - 8);
  v6 = MEMORY[0x28223BE20](v103);
  v100 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v102 = &v88 - v8;
  *(v1 + 208) = 0;
  v99 = (v1 + 208);
  sub_252E35724();
  v9 = *v113;
  v91 = v3;
  if (!*v113)
  {
    goto LABEL_28;
  }

  memcpy(v111, v1, sizeof(v111));
  memcpy(v110, v1, 0x1F8uLL);
  sub_2529353AC(v111, v109);
  sub_252CEB304(v9, v108);
  memcpy(v112, v110, sizeof(v112));
  sub_252935408(v112);
  v10 = v108[0];
  if (LOBYTE(v108[0]) != 66)
  {
    v11 = v111[10];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2529F82EC(0, *(v11 + 2) + 1, 1, v11);
    }

    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_2529F82EC((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v11[v13 + 32] = v10;
    *(v2 + 10) = v11;
  }

  memcpy(v109, v2, sizeof(v109));
  memcpy(v108, v2, sizeof(v108));
  sub_2529353AC(v109, v107);
  sub_252CEB53C(v9, v105);
  memcpy(v110, v108, 0x1F8uLL);
  sub_252935408(v110);
  v14 = v105[0];
  if (LOBYTE(v105[0]) != 77)
  {
    v15 = v109[24];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_2529F82C4(0, *(v15 + 2) + 1, 1, v15);
    }

    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_2529F82C4((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v15[v17 + 32] = v14;
    *(v2 + 24) = v15;
  }

  v18 = sub_252E34D54();
  if (v18)
  {
    if (!*(v109[10] + 16))
    {
      v19 = v18;
      memcpy(v107, v2, sizeof(v107));
      memcpy(v105, v2, sizeof(v105));
      sub_2529353AC(v107, v104);
      sub_252CEB304(v19, &v106);
      memcpy(v108, v105, sizeof(v108));
      sub_252935408(v108);
      LOBYTE(v20) = v106;
      if (v106 != 66)
      {
        v31 = v107[10];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_49;
        }

        goto LABEL_136;
      }
    }
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545568, &qword_252E5B5F0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_252E3C3C0;
    *(v21 + 32) = sub_252E34D54();
    *(v21 + 40) = v9;

    v22 = sub_252CEC1A0(v21);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545570, &qword_252E5B5F8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v23 = v22[2];
    if (v23)
    {
      v24 = 4;
      do
      {
        v25 = v22[v24];
        if (*(v25 + 16))
        {
          v26 = *(v2 + 12);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_2529F8278(0, v26[2] + 1, 1, v26);
          }

          v28 = v26[2];
          v27 = v26[3];
          if (v28 >= v27 >> 1)
          {
            v26 = sub_2529F8278((v27 > 1), v28 + 1, 1, v26);
          }

          v26[2] = v28 + 1;
          v26[v28 + 4] = v25;
          *(v2 + 12) = v26;
        }

        ++v24;
        --v23;
      }

      while (v23);
    }

LABEL_28:
    v29 = sub_252E356F4();
    v30 = MEMORY[0x277D84F90];
    if (!v29)
    {
      goto LABEL_92;
    }

    v31 = v29;
    v32 = sub_252E34EB4();
    if (!v32)
    {

      goto LABEL_92;
    }

    v33 = v32;
    v112[0] = v30;
    v9 = v32 & 0xFFFFFFFFFFFFFF8;
    if (v32 >> 62)
    {
LABEL_54:
      v34 = sub_252E378C4();
      v89 = v31;
      if (!v34)
      {
LABEL_55:
        v94 = MEMORY[0x277D84F90];
        goto LABEL_56;
      }
    }

    else
    {
      v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v89 = v31;
      if (!v34)
      {
        goto LABEL_55;
      }
    }

    v35 = 0;
    v94 = MEMORY[0x277D84F90];
    do
    {
      v36 = v35;
      while (1)
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x2530ADF00](v36, v33);
          v35 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v36 >= *(v9 + 16))
          {
            goto LABEL_53;
          }

          v31 = *(v33 + 8 * v36 + 32);

          v35 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }
        }

        sub_252E349D4();

        if (v111[0])
        {
          break;
        }

        ++v36;
        if (v35 == v34)
        {
          goto LABEL_56;
        }
      }

      MEMORY[0x2530AD700](v37);
      if (*((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      v31 = v112;
      sub_252E372D4();
      v94 = v112[0];
    }

    while (v35 != v34);
LABEL_56:

    v20 = v94;
    v40 = v94 >> 62 ? sub_252E378C4() : *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v41 = v101;
    v42 = v103;
    if (!v40)
    {
      break;
    }

    v98 = v40 - 1;
    if (v40 >= 1)
    {
      v43 = 0;
      v44 = (v95 + 48);
      v96 = (v95 + 32);
      v97 = v20 & 0xC000000000000001;
      v90 = "HomeAutomationSwingMode";
      v92 = (v95 + 8);
      v93 = (v95 + 16);
      if ((v20 & 0xC000000000000001) == 0)
      {
        goto LABEL_62;
      }

LABEL_61:
      MEMORY[0x2530ADF00](v43, v20);
      while (1)
      {
        memcpy(v111, v2, sizeof(v111));
        memcpy(v110, v2, 0x1F8uLL);
        sub_2529353AC(v111, v109);
        sub_252CF0864(v41);
        memcpy(v112, v110, sizeof(v112));
        sub_252935408(v112);
        if ((*v44)(v41, 1, v42) == 1)
        {
          sub_25293847C(v41, &qword_27F541AF8, &qword_252E419F8);
          goto LABEL_81;
        }

        v45 = v111[32];
        v46 = *v96;
        v47 = v102;
        (*v96)(v102, v41, v42);
        (*v93)(v100, v47, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_2529F8C44(0, *(v45 + 2) + 1, 1, v45);
        }

        v49 = *(v45 + 2);
        v48 = *(v45 + 3);
        v20 = v94;
        if (v49 >= v48 >> 1)
        {
          v45 = sub_2529F8C44((v48 > 1), v49 + 1, 1, v45);
        }

        *(v45 + 2) = v49 + 1;
        v50 = v103;
        v46(&v45[((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v49], v100, v103);
        *(v2 + 32) = v45;
        memcpy(v110, v2, 0x1F8uLL);
        sub_2529353AC(v110, v109);
        sub_252E35814();
        if (LOBYTE(v109[0]) == 4)
        {
          sub_252935408(v110);
          v51 = MEMORY[0x277D84FA0];
          if (!*(MEMORY[0x277D84FA0] + 16))
          {
            goto LABEL_80;
          }
        }

        else
        {
          v108[0] = MEMORY[0x277D84FA0];
          if (LOBYTE(v109[0]) - 1 >= 3)
          {
            v51 = sub_2529FE74C(&unk_2864A5D30);
            swift_arrayDestroy();
            sub_252935408(v110);
            if (!*(v51 + 16))
            {
LABEL_80:
              (*v92)(v102, v50);

              goto LABEL_81;
            }
          }

          else
          {
            sub_252DA6CD0(v109, 0xD000000000000019, v90 | 0x8000000000000000);

            sub_252935408(v110);
            v51 = v108[0];
            if (!*(v108[0] + 16))
            {
              goto LABEL_80;
            }
          }
        }

        v52 = *&v110[6];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_2529F8278(0, v52[2] + 1, 1, v52);
        }

        v54 = v52[2];
        v53 = v52[3];
        if (v54 >= v53 >> 1)
        {
          v52 = sub_2529F8278((v53 > 1), v54 + 1, 1, v52);
        }

        (*v92)(v102, v103);
        v52[2] = v54 + 1;
        v52[v54 + 4] = v51;
        *(v2 + 12) = v52;
LABEL_81:
        v55 = *(v2 + 25);
        *&v110[12] = *(v2 + 24);
        v56 = v2[11];
        v110[10] = v2[10];
        v110[11] = v56;
        v57 = v2[7];
        v110[6] = v2[6];
        v110[7] = v57;
        v58 = v2[8];
        v110[9] = v2[9];
        v110[8] = v58;
        v59 = v2[3];
        v110[2] = v2[2];
        v110[3] = v59;
        v60 = v2[4];
        v110[5] = v2[5];
        v110[4] = v60;
        v61 = *v2;
        v110[1] = v2[1];
        v110[0] = v61;
        memcpy(&v110[13], v99, 0x128uLL);
        *(&v110[12] + 1) = v55;

        v62 = sub_252E35414();
        sub_252D0607C(v62, v109);

        v63 = v109[0];
        if (LOBYTE(v109[0]) == 4)
        {
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_2529F8C68(0, *(v55 + 2) + 1, 1, v55);
          }

          v65 = *(v55 + 2);
          v64 = *(v55 + 3);
          if (v65 >= v64 >> 1)
          {
            v55 = sub_2529F8C68((v64 > 1), v65 + 1, 1, v55);
          }

          *(v55 + 2) = v65 + 1;
          v55[v65 + 32] = v63;
          *(v2 + 25) = v55;
        }

        v41 = v101;
        v42 = v103;
        if (v98 == v43)
        {
          goto LABEL_91;
        }

        ++v43;
        if (v97)
        {
          goto LABEL_61;
        }

LABEL_62:
      }
    }

    __break(1u);
LABEL_136:
    v31 = sub_2529F82EC(0, *(v31 + 2) + 1, 1, v31);
LABEL_49:
    v39 = *(v31 + 2);
    v38 = *(v31 + 3);
    if (v39 >= v38 >> 1)
    {
      v31 = sub_2529F82EC((v38 > 1), v39 + 1, 1, v31);
    }

    *(v31 + 2) = v39 + 1;
    v31[v39 + 32] = v20;
    *(v2 + 10) = v31;
  }

LABEL_91:

  v30 = MEMORY[0x277D84F90];
LABEL_92:
  v66 = sub_252E35714();
  if (v66)
  {
    v67 = v66;
    memcpy(v109, v2, sizeof(v109));
    memcpy(v112, v2, sizeof(v112));
    sub_2529353AC(v109, v111);
    v68 = sub_252CEC3C0();
    memcpy(v110, v112, 0x1F8uLL);
    sub_252935408(v110);

    *(v2 + 2) = v68;
    memcpy(v111, v2, sizeof(v111));
    memcpy(v108, v2, sizeof(v108));
    sub_2529353AC(v111, v112);
    sub_252CEC448(v67, v107);

    memcpy(v112, v108, sizeof(v112));
    sub_252935408(v112);
    *(v2 + 40) = v107[0];
  }

  v69 = sub_2529FE74C(&unk_2864A5DC0);
  sub_252A01B34(&unk_2864A5DE0);
  v70 = *(v2 + 12);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_129:
    v70 = sub_2529F8278(0, v70[2] + 1, 1, v70);
  }

  v72 = v70[2];
  v71 = v70[3];
  if (v72 >= v71 >> 1)
  {
    v70 = sub_2529F8278((v71 > 1), v72 + 1, 1, v70);
  }

  v70[2] = v72 + 1;
  v70[v72 + 4] = v69;
  *(v2 + 12) = v70;
  memcpy(v112, v2, sizeof(v112));
  memcpy(v111, v2, sizeof(v111));
  sub_2529353AC(v112, v110);
  v73 = sub_252E35704();
  if (v73)
  {
    v74 = v73;
  }

  else
  {
    v74 = v30;
  }

  sub_252CED168(v74, v113);

  memcpy(v110, v111, 0x1F8uLL);
  sub_252935408(v110);
  if (v113[0] != 5)
  {
    v75 = v112[4];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_2529F8B34(0, *(v75 + 2) + 1, 1, v75);
    }

    v77 = *(v75 + 2);
    v76 = *(v75 + 3);
    if (v77 >= v76 >> 1)
    {
      v75 = sub_2529F8B34((v76 > 1), v77 + 1, 1, v75);
    }

    *(v75 + 2) = v77 + 1;
    v75[v77 + 32] = 4;
    *(v2 + 4) = v75;
  }

  memcpy(v109, v2, sizeof(v109));
  memcpy(v108, v2, sizeof(v108));
  sub_2529353AC(v109, v107);
  v78 = sub_252E35704();
  if (v78)
  {
    v79 = v78;
  }

  else
  {
    v79 = v30;
  }

  v80 = sub_252CED470(v79);

  memcpy(v107, v108, sizeof(v107));
  sub_252935408(v107);
  v81 = sub_252E35704();
  if (!v81)
  {
  }

  v82 = v81;
  v105[0] = v30;
  v83 = v81 & 0xFFFFFFFFFFFFFF8;
  if (v81 >> 62)
  {
    v84 = sub_252E378C4();
    v103 = v80;
    if (v84)
    {
      goto LABEL_112;
    }

    goto LABEL_131;
  }

  v84 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v103 = v80;
  if (!v84)
  {
LABEL_131:
    v69 = MEMORY[0x277D84F90];
    goto LABEL_132;
  }

LABEL_112:
  v70 = 0;
  v69 = MEMORY[0x277D84F90];
  do
  {
    v102 = v69;
    v85 = v70;
    while (1)
    {
      if ((v82 & 0xC000000000000001) != 0)
      {
        v69 = MEMORY[0x2530ADF00](v85, v82);
        v70 = (v85 + 1);
        if (__OFADD__(v85, 1))
        {
          goto LABEL_127;
        }
      }

      else
      {
        if (v85 >= *(v83 + 16))
        {
          goto LABEL_128;
        }

        v69 = *(v82 + 8 * v85 + 32);

        v70 = (v85 + 1);
        if (__OFADD__(v85, 1))
        {
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }
      }

      sub_252E349D4();

      v30 = v104[0];
      if (v104[0])
      {
        break;
      }

      ++v85;
      if (v70 == v84)
      {
        v69 = v102;
        goto LABEL_132;
      }
    }

    MEMORY[0x2530AD700](v86);
    if (*((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v69 = v105[0];
  }

  while (v70 != v84);
LABEL_132:

  v105[0] = v69;
  sub_25297AE00(v103);
  sub_252CDF97C(v105[0], 0);
}

uint64_t sub_252CF0864@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455D0, &unk_252E5B640);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_252E35114();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF8, &qword_252E419F8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  memcpy(v36, v1, sizeof(v36));
  sub_252E34644();
  sub_252E35454();
  sub_252E34E24();

  if (v34[0])
  {
    memcpy(v34, v36, sizeof(v34));
    sub_252D05C24(v33);
  }

  v31 = v9;
  v32 = v6;
  if (!sub_252E35424())
  {
    goto LABEL_6;
  }

  memcpy(v34, v36, sizeof(v34));
  sub_252CEE320(v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {

    sub_25293847C(v14, &qword_27F541AF8, &qword_252E419F8);
LABEL_6:
    v18 = 0;
    v19 = 1;
    goto LABEL_8;
  }

  sub_252E35834();

  v20 = v34[0];
  v19 = LOBYTE(v34[1]);
  (*(v17 + 8))(v14, v16);
  v18 = v20;
LABEL_8:
  if (sub_252E35414())
  {
    sub_252E34644();
  }

  sub_252E35124();
  sub_252E34E24();

  if (v34[0])
  {
    sub_252E35104();

    v21 = v32;
    if ((*(v32 + 48))(v4, 1, v5) == 1)
    {
      sub_25293847C(v4, &qword_27F5455D0, &unk_252E5B640);
      v22 = 4;
    }

    else
    {
      v23 = *(v21 + 32);
      v23(v11, v4, v5);
      v24 = v31;
      v23(v31, v11, v5);
      v25 = (*(v21 + 88))(v24, v5);
      if (v25 == *MEMORY[0x277D5F078])
      {
        v22 = 3;
      }

      else if (v25 == *MEMORY[0x277D5F068])
      {
        v22 = 1;
      }

      else if (v25 == *MEMORY[0x277D5F070])
      {
        v22 = 2;
      }

      else
      {
        (*(v32 + 8))(v24, v5);
        v22 = 4;
      }
    }
  }

  else
  {
    if (sub_252E35414())
    {
      sub_252E34644();
    }

    sub_252E350D4();
    sub_252E34E24();

    if (!v34[0])
    {
      if (v19)
      {
        goto LABEL_22;
      }

      v34[0] = v18;
      LOBYTE(v34[1]) = 0;
      v22 = 4;
      goto LABEL_24;
    }

    memcpy(v34, v36, sizeof(v34));

    sub_252D0607C(v26, &v35);

    v22 = v35;
  }

  if (v19)
  {
LABEL_22:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
    return (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
  }

  v34[0] = v18;
  LOBYTE(v34[1]) = 0;
LABEL_24:
  v35 = v22;
  sub_252AD617C();
  v28 = v33;
  sub_252E35824();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
}

uint64_t HomeAutomationIntent.getMeasurementUnit(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v3, sizeof(__dst));
  if (a1)
  {
    v6 = sub_252E35414();
  }

  else
  {
    v6 = 0;
  }

  sub_252D0607C(v6, a2);
}

unint64_t sub_252CF0EC8(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x28223BE20](a1);
  sub_252E34E64();
  v3 = v119[0];
  if (!v119[0])
  {
    goto LABEL_77;
  }

  memcpy(v117, v1, sizeof(v117));
  memcpy(__dst, v1, sizeof(__dst));
  sub_2529353AC(v117, v115);
  sub_252CEB304(v3, __src);
  memcpy(v118, __dst, sizeof(v118));
  sub_252935408(v118);
  LOBYTE(v4) = __src[0];
  v55 = v3;
  if (__src[0] != 66)
  {
    v5 = v117[10];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_55:
      v5 = sub_2529F82EC(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_2529F82EC((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v5[v7 + 32] = v4;
    *(v2 + 80) = v5;
    v3 = v55;
  }

  memcpy(v115, v2, sizeof(v115));
  memcpy(__src, v2, sizeof(__src));
  sub_2529353AC(v115, v113);
  sub_252CEB53C(v3, v112);
  memcpy(__dst, __src, sizeof(__dst));
  sub_252935408(__dst);
  v8 = v112[0];
  if (v112[0] != 77)
  {
    v9 = v115[24];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2529F82C4(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_2529F82C4((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v9[v11 + 32] = v8;
    *(v2 + 192) = v9;
    v3 = v55;
  }

  v12 = sub_252E34D54();
  if (v12)
  {
    v13 = v12;
    memcpy(v113, v2, sizeof(v113));
    memcpy(v112, v2, sizeof(v112));
    sub_2529353AC(v113, v111);
    sub_252CEB304(v13, v110);
    memcpy(__src, v112, sizeof(__src));
    sub_252935408(__src);
    v14 = v110[0];
    if (v110[0] == 66)
    {
    }

    else
    {
      v15 = v113[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2529F82EC(0, *(v15 + 2) + 1, 1, v15);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_2529F82EC((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v15[v17 + 32] = v14;
      *(v2 + 80) = v15;
      v3 = v55;
    }
  }

  memcpy(v111, v2, sizeof(v111));
  memcpy(v110, v2, sizeof(v110));
  sub_2529353AC(v111, &v104);
  sub_252CF2510(&v104);
  memcpy(v112, v110, sizeof(v112));
  sub_252935408(v112);
  *(v2 + 8) = v104;
  memcpy(v113, v2, sizeof(v113));
  memcpy(v110, v2, sizeof(v110));
  sub_2529353AC(v113, &v104);
  v18 = sub_252CF276C(v3);
  memcpy(__src, v110, sizeof(__src));
  sub_252935408(__src);

  *(v2 + 16) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545568, &qword_252E5B5F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_252E3C3C0;
  *(v19 + 32) = sub_252E34D54();
  *(v19 + 40) = v3;

  v20 = sub_252CEC1A0(v19);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545570, &qword_252E5B5F8);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21 = v20[2];
  if (v21)
  {
    v22 = v20 + 4;
    do
    {
      v23 = *v22;
      if (*(*v22 + 16))
      {
        v24 = *(v2 + 96);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2529F8278(0, v24[2] + 1, 1, v24);
        }

        v26 = v24[2];
        v25 = v24[3];
        if (v26 >= v25 >> 1)
        {
          v24 = sub_2529F8278((v25 > 1), v26 + 1, 1, v24);
        }

        v24[2] = v26 + 1;
        v24[v26 + 4] = v23;
        *(v2 + 96) = v24;
      }

      ++v22;
      --v21;
    }

    while (v21);
  }

  if (!sub_252E34D84())
  {
LABEL_76:

    goto LABEL_77;
  }

  v27 = sub_252E34F44();

  if (!v27)
  {
LABEL_52:

    goto LABEL_77;
  }

  v5 = v27;
  v28 = sub_252E34EB4();
  if (!v28)
  {

    goto LABEL_52;
  }

  v29 = v28;
  *v110 = MEMORY[0x277D84F90];
  v4 = v28 & 0xFFFFFFFFFFFFFF8;
  if (v28 >> 62)
  {
    v30 = sub_252E378C4();
    if (v30)
    {
LABEL_35:
      v31 = 0;
      v54 = MEMORY[0x277D84F90];
      do
      {
        v32 = v2;
        v2 = v31;
        while (1)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x2530ADF00](v2, v29);
            v31 = (v2 + 1);
            if (__OFADD__(v2, 1))
            {
              goto LABEL_53;
            }
          }

          else
          {
            if (v2 >= *(v4 + 16))
            {
              goto LABEL_54;
            }

            v5 = *(v29 + 8 * v2 + 32);

            v31 = (v2 + 1);
            if (__OFADD__(v2, 1))
            {
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }
          }

          sub_252E349D4();

          if (v104)
          {
            break;
          }

          ++v2;
          if (v31 == v30)
          {
            v2 = v32;
            goto LABEL_58;
          }
        }

        MEMORY[0x2530AD700](v33);
        if (*((*v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        v5 = v110;
        sub_252E372D4();
        v54 = *v110;
        v2 = v32;
      }

      while (v31 != v30);
      goto LABEL_58;
    }
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_35;
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_58:

  v34 = v54;
  if (v54 >> 62)
  {
    result = sub_252E378C4();
  }

  else
  {
    result = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result)
  {
    v102 = result - 1;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v36 = 0;
    v101 = *v2;
    v100 = *(v2 + 8);
    v99 = *(v2 + 9);
    v37 = *(v2 + 10);
    v98 = *(v2 + 16);
    v97 = *(v2 + 24);
    v96 = *(v2 + 25);
    v95 = *(v2 + 26);
    v94 = *(v2 + 32);
    v93 = *(v2 + 40);
    v92 = *(v2 + 48);
    v91 = *(v2 + 64);
    v89 = *(v2 + 88);
    v90 = *(v2 + 72);
    v87 = *(v2 + 120);
    v88 = *(v2 + 104);
    v85 = *(v2 + 152);
    v86 = *(v2 + 136);
    v83 = *(v2 + 184);
    v84 = *(v2 + 168);
    v82 = *(v2 + 208);
    v81 = *(v2 + 209);
    v80 = *(v2 + 216);
    v79 = *(v2 + 232);
    v78 = *(v2 + 240);
    v76 = *(v2 + 264);
    v77 = *(v2 + 256);
    v75 = *(v2 + 272);
    v73 = *(v2 + 289);
    v74 = *(v2 + 288);
    v71 = *(v2 + 304);
    v72 = *(v2 + 296);
    v70 = *(v2 + 312);
    v68 = *(v2 + 328);
    v69 = *(v2 + 320);
    v66 = *(v2 + 352);
    v67 = *(v2 + 336);
    v65 = *(v2 + 368);
    v63 = *(v2 + 385);
    v64 = *(v2 + 384);
    v61 = *(v2 + 387);
    v62 = *(v2 + 386);
    v60 = *(v2 + 488);
    v109 = *(v2 + 480);
    v38 = *(v2 + 388);
    v39 = *(v2 + 448);
    v106 = *(v2 + 432);
    v107 = v39;
    v108 = *(v2 + 464);
    v40 = *(v2 + 416);
    v104 = *(v2 + 400);
    v105 = v40;
    v58 = *(v2 + 389);
    v59 = v38;
    v56 = *(v2 + 496);
    v57 = *(v2 + 392);
    if ((v54 & 0xC000000000000001) == 0)
    {
      goto LABEL_64;
    }

LABEL_63:
    MEMORY[0x2530ADF00](v36, v34);
    while (1)
    {
      v103[2] = v79;
      v103[1] = v73;
      *&v110[480] = v109;
      v110[232] = v79;
      v110[289] = v73;
      v41 = v2;
      v42 = *(v2 + 200);
      v103[8] = v37;
      *&v110[432] = v106;
      *&v110[448] = v107;
      *&v110[464] = v108;
      *&v110[400] = v104;
      *&v110[416] = v105;
      *v110 = v101;
      v110[8] = v100;
      v110[9] = v99;
      v110[10] = v37;
      *&v110[16] = v98;
      v110[24] = v97;
      v110[25] = v96;
      v110[26] = v95;
      *&v110[32] = v94;
      v110[40] = v93;
      *&v110[48] = v92;
      v110[64] = v91;
      *&v110[72] = v90;
      *&v110[88] = v89;
      *&v110[104] = v88;
      *&v110[120] = v87;
      *&v110[136] = v86;
      *&v110[152] = v85;
      *&v110[168] = v84;
      *&v110[184] = v83;
      *&v110[200] = v42;
      v110[208] = v82;
      v110[209] = v81;
      *&v110[216] = v80;
      *&v110[240] = v78;
      *&v110[256] = v77;
      *&v110[264] = v76;
      *&v110[272] = v75;
      v110[288] = v74;
      *&v110[296] = v72;
      *&v110[304] = v71;
      v110[312] = v70;
      *&v110[320] = v69;
      *&v110[328] = v68;
      *&v110[336] = v67;
      *&v110[352] = v66;
      *&v110[368] = v65;
      v110[384] = v64;
      v110[385] = v63;
      v110[386] = v62;
      v110[387] = v61;
      v110[388] = v59;
      v110[389] = v58;
      *&v110[392] = v57;
      *&v110[488] = v60;
      *&v110[496] = v56;
      v43 = sub_252E35414();
      sub_252D0607C(v43, v103);

      v44 = v103[0];
      if (v103[0] == 4)
      {

        v2 = v41;
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_2529F8C68(0, *(v42 + 2) + 1, 1, v42);
        }

        v46 = *(v42 + 2);
        v45 = *(v42 + 3);
        if (v46 >= v45 >> 1)
        {
          v42 = sub_2529F8C68((v45 > 1), v46 + 1, 1, v42);
        }

        *(v42 + 2) = v46 + 1;
        v42[v46 + 32] = v44;
        v41[25] = v42;
        v2 = v41;
        v34 = v54;
      }

      if (v102 == v36)
      {
        break;
      }

      ++v36;
      if ((v54 & 0xC000000000000001) != 0)
      {
        goto LABEL_63;
      }

LABEL_64:
    }

    goto LABEL_76;
  }

LABEL_77:
  result = sub_252E34E54();
  if (!result)
  {
    return result;
  }

  v47 = result;
  v118[0] = MEMORY[0x277D84F90];
  v48 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
LABEL_98:
    v49 = sub_252E378C4();
    if (v49)
    {
LABEL_80:
      v50 = 0;
      v51 = MEMORY[0x277D84F90];
      do
      {
        v52 = v50;
        while (1)
        {
          if ((v47 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v52, v47);
            v50 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_96;
            }
          }

          else
          {
            if (v52 >= *(v48 + 16))
            {
              goto LABEL_97;
            }

            v50 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }
          }

          sub_252E349D4();

          if (v117[0])
          {
            break;
          }

          ++v52;
          if (v50 == v49)
          {
            goto LABEL_100;
          }
        }

        MEMORY[0x2530AD700](v53);
        if (*((v118[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v51 = v118[0];
      }

      while (v50 != v49);
      goto LABEL_100;
    }
  }

  else
  {
    v49 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v49)
    {
      goto LABEL_80;
    }
  }

  v51 = MEMORY[0x277D84F90];
LABEL_100:

  sub_252CDF97C(v51, 0);
}

uint64_t sub_252CF1B58()
{
  v1 = v0;
  memcpy(__dst, v0, sizeof(__dst));
  result = sub_252A15CE0();
  if (result & 1) != 0 || (memcpy(v6, v0, sizeof(v6)), result = sub_252A0E1E8(), (result))
  {
    v3 = 3;
  }

  else
  {
    memcpy(v6, v0, sizeof(v6));
    result = sub_252AB5058();
    if (result & 1) != 0 && (v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(result), sub_252929E74((v4 + 368), v6), , v5 = sub_252C92828(v6), result = __swift_destroy_boxed_opaque_existential_1(v6), (v5))
    {
      v3 = 8;
    }

    else
    {
      v3 = 1;
    }
  }

  v1[208] = v3;
  v1[384] = 10;
  return result;
}

uint64_t sub_252CF1C30@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_252E34CE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455E0, &qword_252E5B660);
  v7 = MEMORY[0x28223BE20](v63);
  v60 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v53[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455E8, &qword_252E5B668);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v56 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v61 = &v53[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v62 = &v53[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v53[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v53[-v24];
  if (sub_252E34D64())
  {
    sub_252E349F4();
    if (v26)
    {
      v55 = a1;
      v59 = a2;
      sub_252E34CD4();
      (*(v5 + 104))(v23, *MEMORY[0x277D5E868], v4);
      (*(v5 + 56))(v23, 0, 1, v4);
      v27 = v5;
      v28 = *(v63 + 48);
      sub_252938414(v25, v10, &qword_27F5455E8, &qword_252E5B668);
      sub_252938414(v23, &v10[v28], &qword_27F5455E8, &qword_252E5B668);
      v58 = v27;
      v29 = *(v27 + 48);
      if (v29(v10, 1, v4) == 1)
      {

        sub_25293847C(v23, &qword_27F5455E8, &qword_252E5B668);
        sub_25293847C(v25, &qword_27F5455E8, &qword_252E5B668);
        v30 = v29(&v10[v28], 1, v4);
        v5 = v58;
        a2 = v59;
        if (v30 == 1)
        {
          v31 = v10;
LABEL_16:
          result = sub_25293847C(v31, &qword_27F5455E8, &qword_252E5B668);
          v42 = 0;
          goto LABEL_32;
        }

        goto LABEL_9;
      }

      sub_252938414(v10, v20, &qword_27F5455E8, &qword_252E5B668);
      if (v29(&v10[v28], 1, v4) == 1)
      {

        sub_25293847C(v23, &qword_27F5455E8, &qword_252E5B668);
        sub_25293847C(v25, &qword_27F5455E8, &qword_252E5B668);
        v5 = v58;
        (*(v58 + 8))(v20, v4);
        a2 = v59;
LABEL_9:
        sub_25293847C(v10, &qword_27F5455E0, &qword_252E5B660);
        goto LABEL_10;
      }

      v46 = v57;
      v47 = v58;
      (*(v58 + 32))(v57, &v10[v28], v4);
      sub_252D07DD4(&qword_27F5455F0, MEMORY[0x277D5E870], MEMORY[0x277D5E878]);
      v54 = sub_252E36EF4();

      v48 = *(v47 + 8);
      v48(v46, v4);
      sub_25293847C(v23, &qword_27F5455E8, &qword_252E5B668);
      sub_25293847C(v25, &qword_27F5455E8, &qword_252E5B668);
      v48(v20, v4);
      v5 = v58;
      result = sub_25293847C(v10, &qword_27F5455E8, &qword_252E5B668);
      a2 = v59;
      if (v54)
      {
        goto LABEL_31;
      }
    }

    else
    {
    }
  }

LABEL_10:
  if (!sub_252E34D84())
  {
    goto LABEL_21;
  }

  v32 = sub_252E34F34();

  if (!v32)
  {
    goto LABEL_21;
  }

  sub_252E349F4();
  if (v33)
  {
    v59 = a2;
    v34 = v62;
    sub_252E34CD4();
    v35 = v61;
    (*(v5 + 104))(v61, *MEMORY[0x277D5E868], v4);
    (*(v5 + 56))(v35, 0, 1, v4);
    v36 = v5;
    v37 = *(v63 + 48);
    v38 = v60;
    sub_252938414(v34, v60, &qword_27F5455E8, &qword_252E5B668);
    sub_252938414(v35, &v38[v37], &qword_27F5455E8, &qword_252E5B668);
    v58 = v36;
    v39 = *(v36 + 48);
    if (v39(v38, 1, v4) == 1)
    {

      sub_25293847C(v35, &qword_27F5455E8, &qword_252E5B668);
      sub_25293847C(v34, &qword_27F5455E8, &qword_252E5B668);
      v40 = v39(&v38[v37], 1, v4);
      a2 = v59;
      if (v40 == 1)
      {
        v31 = v38;
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    v43 = v56;
    sub_252938414(v38, v56, &qword_27F5455E8, &qword_252E5B668);
    if (v39(&v38[v37], 1, v4) == 1)
    {

      sub_25293847C(v61, &qword_27F5455E8, &qword_252E5B668);
      sub_25293847C(v62, &qword_27F5455E8, &qword_252E5B668);
      (*(v58 + 8))(v43, v4);
      a2 = v59;
LABEL_20:
      sub_25293847C(v38, &qword_27F5455E0, &qword_252E5B660);
      goto LABEL_21;
    }

    v49 = v57;
    v50 = v58;
    (*(v58 + 32))(v57, &v38[v37], v4);
    sub_252D07DD4(&qword_27F5455F0, MEMORY[0x277D5E870], MEMORY[0x277D5E878]);
    v51 = sub_252E36EF4();

    v52 = *(v50 + 8);
    v52(v49, v4);
    sub_25293847C(v61, &qword_27F5455E8, &qword_252E5B668);
    sub_25293847C(v62, &qword_27F5455E8, &qword_252E5B668);
    v52(v43, v4);
    result = sub_25293847C(v38, &qword_27F5455E8, &qword_252E5B668);
    a2 = v59;
    if ((v51 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_31:
    v42 = 0;
    goto LABEL_32;
  }

LABEL_21:
  sub_252E34D74();
  if (v44)
  {
  }

  else
  {
    result = sub_252E34D84();
    if (!result || (v45 = sub_252E34F24(), result = , !v45))
    {
      v42 = 2;
      goto LABEL_32;
    }
  }

  v42 = 1;
LABEL_32:
  *a2 = v42;
  return result;
}

uint64_t sub_252CF2510@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455D8, &qword_252E5B658);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_252E351E4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  result = sub_252E34D84();
  if (!result)
  {
    goto LABEL_6;
  }

  if (!sub_252E34F74())
  {

    goto LABEL_6;
  }

  sub_252E351D4();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_25293847C(v4, &qword_27F5455D8, &qword_252E5B658);
LABEL_6:
    v13 = 3;
LABEL_7:
    *a1 = v13;
    return result;
  }

  v14 = *(v6 + 32);
  v14(v11, v4, v5);
  v14(v9, v11, v5);
  result = (*(v6 + 88))(v9, v5);
  if (result == *MEMORY[0x277D5F138])
  {
    v13 = 1;
    goto LABEL_7;
  }

  if (result == *MEMORY[0x277D5F130])
  {
    *a1 = 0;
  }

  else
  {
    *a1 = 3;
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_252CF276C(uint64_t a1)
{
  if (!sub_252E34D84())
  {
LABEL_5:
    if (sub_252E34D84())
    {
      if (sub_252E34F54())
      {
        v2 = sub_252E34FD4();

        return v2;
      }
    }

    return 0;
  }

  if (!sub_252E34F64())
  {

    goto LABEL_5;
  }

  memcpy(__dst, v1, sizeof(__dst));
  v2 = sub_252CEC3C0();

  return v2;
}

uint64_t sub_252CF2854(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  sub_252CDF97C(v1, 0);
  v3[208] = 3;
  v3[384] = 17;
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(__src, v3, 0x1F8uLL);
  sub_2529353AC(__dst, v69);
  sub_252E34E64();
  v4 = sub_252CF2D4C(v66[0]);

  memcpy(v69, __src, 0x1F8uLL);
  sub_252935408(v69);
  v3[389] = v4 & 1;
  result = *v3;
  v6 = *(*v3 + 16);
  if (v6)
  {

    v29 = v6 - 1;
    v30 = MEMORY[0x277D84F90];
    for (i = v7; ; i += 504)
    {
      memcpy(v64, (i + 32), sizeof(v64));
      v9 = *(i + 208);
      v61 = *(i + 192);
      v62 = v9;
      v63 = *(i + 224);
      v10 = *(i + 144);
      v57 = *(i + 128);
      v58 = v10;
      v11 = *(i + 176);
      v59 = *(i + 160);
      v60 = v11;
      v12 = *(i + 80);
      v53 = *(i + 64);
      v54 = v12;
      v13 = *(i + 112);
      v55 = *(i + 96);
      v56 = v13;
      v14 = *(i + 48);
      v51 = *(i + 32);
      v52 = v14;
      v15 = *(i + 369);
      v48 = *(i + 353);
      v49 = v15;
      v50[0] = *(i + 385);
      *(v50 + 15) = *(i + 400);
      v16 = *(i + 289);
      v17 = *(i + 321);
      v18 = *(i + 337);
      v45 = *(i + 305);
      v46 = v17;
      v47 = v18;
      v19 = *(i + 257);
      v20 = *(i + 273);
      v41 = *(i + 241);
      v42 = v19;
      v43 = v20;
      v44 = v16;
      v21 = *&v64[385];
      v22 = *(i + 502);
      v37 = *(i + 486);
      v38 = v22;
      v39 = *(i + 518);
      v40 = *(i + 534);
      v23 = *(i + 438);
      v33 = *(i + 422);
      v34 = v23;
      v24 = *(i + 470);
      v35 = *(i + 454);
      v36 = v24;
      memcpy(v65, v3, sizeof(v65));
      memcpy(v32, v3, 0x1F8uLL);
      sub_2529353AC(v64, v31);
      sub_2529353AC(v64, v31);
      sub_2529353AC(v65, v31);
      sub_252E34E64();
      v25 = sub_252CF2D4C(v31[0]);

      memcpy(v66, v32, sizeof(v66));
      sub_252935408(v66);
      __src[9] = v60;
      __src[10] = v61;
      __src[11] = v62;
      __src[12] = v63;
      __src[5] = v56;
      __src[6] = v57;
      __src[7] = v58;
      __src[8] = v59;
      __src[1] = v52;
      __src[2] = v53;
      __src[3] = v54;
      __src[4] = v55;
      __src[0] = v51;
      LOBYTE(__src[13]) = 3;
      *(&__src[21] + 1) = v49;
      *(&__src[22] + 1) = v50[0];
      __src[23] = *(v50 + 15);
      *(&__src[17] + 1) = v45;
      *(&__src[18] + 1) = v46;
      *(&__src[19] + 1) = v47;
      *(&__src[20] + 1) = v48;
      *(&__src[13] + 1) = v41;
      *(&__src[14] + 1) = v42;
      *(&__src[15] + 1) = v43;
      *(&__src[16] + 1) = v44;
      LOBYTE(__src[24]) = 17;
      v28 = v21;
      *(&__src[24] + 1) = v21;
      BYTE5(__src[24]) = v25 & 1;
      *(&__src[28] + 6) = v37;
      *(&__src[29] + 6) = v38;
      *(&__src[30] + 6) = v39;
      WORD3(__src[31]) = v40;
      *(&__src[24] + 6) = v33;
      *(&__src[25] + 6) = v34;
      *(&__src[26] + 6) = v35;
      *(&__src[27] + 6) = v36;
      sub_2529353AC(__src, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_2529F7FB0(0, *(v30 + 2) + 1, 1, v30);
      }

      v27 = *(v30 + 2);
      v26 = *(v30 + 3);
      if (v27 >= v26 >> 1)
      {
        v30 = sub_2529F7FB0((v26 > 1), v27 + 1, 1, v30);
      }

      sub_252935408(v64);
      v32[10] = v61;
      v32[11] = v62;
      v32[12] = v63;
      v32[6] = v57;
      v32[7] = v58;
      v32[8] = v59;
      v32[9] = v60;
      v32[2] = v53;
      v32[3] = v54;
      v32[4] = v55;
      v32[5] = v56;
      v32[0] = v51;
      v32[1] = v52;
      LOBYTE(v32[13]) = 3;
      *(&v32[21] + 1) = v49;
      *(&v32[22] + 1) = v50[0];
      v32[23] = *(v50 + 15);
      *(&v32[17] + 1) = v45;
      *(&v32[18] + 1) = v46;
      *(&v32[19] + 1) = v47;
      *(&v32[20] + 1) = v48;
      *(&v32[13] + 1) = v41;
      *(&v32[14] + 1) = v42;
      *(&v32[15] + 1) = v43;
      *(&v32[16] + 1) = v44;
      LOBYTE(v32[24]) = 17;
      *(&v32[24] + 1) = v28;
      BYTE5(v32[24]) = v25 & 1;
      *(&v32[28] + 6) = v37;
      *(&v32[29] + 6) = v38;
      *(&v32[30] + 6) = v39;
      WORD3(v32[31]) = v40;
      *(&v32[24] + 6) = v33;
      *(&v32[25] + 6) = v34;
      *(&v32[26] + 6) = v35;
      *(&v32[27] + 6) = v36;
      sub_252935408(v32);
      *(v30 + 2) = v27 + 1;
      memcpy(&v30[504 * v27 + 32], __src, 0x1F8uLL);
      if (!v29)
      {
        break;
      }

      --v29;
    }

    *v3 = v30;
  }

  return result;
}

uint64_t sub_252CF2D4C(uint64_t a1)
{
  v2 = sub_252E350F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5455F8, &qword_252E5B670);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545600, &unk_252E5B678);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v29 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  MEMORY[0x28223BE20](v14);
  v19 = &v29 - v18;
  if (a1)
  {
    v30 = v5;
    v31 = v17;
    swift_retain_n();
    if (sub_252E34A54())
    {
      sub_252E350E4();
    }

    else
    {
      (*(v3 + 56))(v19, 1, 1, v2);
    }

    v21 = sub_252E34A54();

    v32 = v19;
    if (v21)
    {
      sub_252E350E4();
    }

    else
    {
      (*(v3 + 56))(v16, 1, 1, v2);
    }

    (*(v3 + 104))(v13, *MEMORY[0x277D5F050], v2);
    (*(v3 + 56))(v13, 0, 1, v2);
    v22 = *(v6 + 48);
    sub_252938414(v16, v8, &qword_27F545600, &unk_252E5B678);
    sub_252938414(v13, &v8[v22], &qword_27F545600, &unk_252E5B678);
    v23 = *(v3 + 48);
    if (v23(v8, 1, v2) == 1)
    {

      sub_25293847C(v13, &qword_27F545600, &unk_252E5B678);
      sub_25293847C(v16, &qword_27F545600, &unk_252E5B678);
      sub_25293847C(v32, &qword_27F545600, &unk_252E5B678);
      if (v23(&v8[v22], 1, v2) == 1)
      {
        sub_25293847C(v8, &qword_27F545600, &unk_252E5B678);
        v20 = 1;
        return v20 & 1;
      }
    }

    else
    {
      v24 = v31;
      sub_252938414(v8, v31, &qword_27F545600, &unk_252E5B678);
      if (v23(&v8[v22], 1, v2) != 1)
      {
        v25 = v30;
        (*(v3 + 32))(v30, &v8[v22], v2);
        sub_252D07DD4(&qword_27F545608, MEMORY[0x277D5F058], MEMORY[0x277D5F060]);
        v26 = v24;
        v20 = sub_252E36EF4();

        v27 = *(v3 + 8);
        v27(v25, v2);
        sub_25293847C(v13, &qword_27F545600, &unk_252E5B678);
        sub_25293847C(v16, &qword_27F545600, &unk_252E5B678);
        sub_25293847C(v32, &qword_27F545600, &unk_252E5B678);
        v27(v26, v2);
        sub_25293847C(v8, &qword_27F545600, &unk_252E5B678);
        return v20 & 1;
      }

      sub_25293847C(v13, &qword_27F545600, &unk_252E5B678);
      sub_25293847C(v16, &qword_27F545600, &unk_252E5B678);
      sub_25293847C(v32, &qword_27F545600, &unk_252E5B678);
      (*(v3 + 8))(v24, v2);
    }

    sub_25293847C(v8, &qword_27F5455F8, &qword_252E5B670);
    v20 = 0;
    return v20 & 1;
  }

  v20 = 0;
  return v20 & 1;
}

unint64_t sub_252CF32BC()
{
  v1 = v0;
  sub_252E34504();
  v2 = v43;
  if (v43)
  {
    memcpy(__dst, v0, sizeof(__dst));
    memcpy(__src, v0, sizeof(__src));
    sub_2529353AC(__dst, v39);
    sub_252CEB304(v2, v38);
    memcpy(v42, __src, sizeof(v42));
    sub_252935408(v42);
    v3 = v38[0];
    if (v38[0] != 66)
    {
      v4 = __dst[10];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2529F82EC(0, *(v4 + 2) + 1, 1, v4);
      }

      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      if (v6 >= v5 >> 1)
      {
        v4 = sub_2529F82EC((v5 > 1), v6 + 1, 1, v4);
      }

      *(v4 + 2) = v6 + 1;
      v4[v6 + 32] = v3;
      v1[10] = v4;
    }

    memcpy(v39, v1, sizeof(v39));
    memcpy(v38, v1, sizeof(v38));
    sub_2529353AC(v39, v37);
    sub_252CEB53C(v2, v36);
    memcpy(__src, v38, sizeof(__src));
    sub_252935408(__src);
    v7 = v36[0];
    if (v36[0] != 77)
    {
      v8 = v39[24];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2529F82C4(0, *(v8 + 2) + 1, 1, v8);
      }

      v10 = *(v8 + 2);
      v9 = *(v8 + 3);
      if (v10 >= v9 >> 1)
      {
        v8 = sub_2529F82C4((v9 > 1), v10 + 1, 1, v8);
      }

      *(v8 + 2) = v10 + 1;
      v8[v10 + 32] = v7;
      v1[24] = v8;
    }

    v11 = sub_252E34D54();
    if (v11)
    {
      v12 = v11;
      memcpy(v37, v1, sizeof(v37));
      memcpy(v36, v1, sizeof(v36));
      sub_2529353AC(v37, v35);
      sub_252CEB304(v12, &v34);
      memcpy(v38, v36, sizeof(v38));
      sub_252935408(v38);
      v13 = v34;
      if (v34 == 66)
      {
      }

      else
      {
        v14 = v37[10];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2529F82EC(0, *(v14 + 2) + 1, 1, v14);
        }

        v16 = *(v14 + 2);
        v15 = *(v14 + 3);
        if (v16 >= v15 >> 1)
        {
          v14 = sub_2529F82EC((v15 > 1), v16 + 1, 1, v14);
        }

        *(v14 + 2) = v16 + 1;
        v14[v16 + 32] = v13;
        v1[10] = v14;
      }
    }

    memcpy(v37, v1, sizeof(v37));
    memcpy(v36, v1, sizeof(v36));
    sub_2529353AC(v37, v35);
    sub_252CF2510(v35);
    memcpy(v38, v36, sizeof(v38));
    sub_252935408(v38);
    *(v1 + 8) = v35[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545568, &qword_252E5B5F0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_252E3C3C0;
    *(v17 + 32) = sub_252E34D54();
    *(v17 + 40) = v2;

    v18 = sub_252CEC1A0(v17);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545570, &qword_252E5B5F8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v19 = v18[2];
    if (v19)
    {
      v20 = 4;
      do
      {
        v21 = v18[v20];
        if (*(v21 + 16))
        {
          v22 = v1[12];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_2529F8278(0, v22[2] + 1, 1, v22);
          }

          v24 = v22[2];
          v23 = v22[3];
          if (v24 >= v23 >> 1)
          {
            v22 = sub_2529F8278((v23 > 1), v24 + 1, 1, v22);
          }

          v22[2] = v24 + 1;
          v22[v24 + 4] = v21;
          v1[12] = v22;
        }

        ++v20;
        --v19;
      }

      while (v19);
    }
  }

  result = sub_252E344F4();
  if (result)
  {
    v26 = result;
    v42[0] = MEMORY[0x277D84F90];
    v27 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
LABEL_52:
      v28 = sub_252E378C4();
      if (v28)
      {
LABEL_35:
        v29 = 0;
        v30 = MEMORY[0x277D84F90];
        do
        {
          v33 = v30;
          v31 = v29;
          while (1)
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              MEMORY[0x2530ADF00](v31, v26);
              v29 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_50;
              }
            }

            else
            {
              if (v31 >= *(v27 + 16))
              {
                goto LABEL_51;
              }

              v29 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
LABEL_50:
                __break(1u);
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }
            }

            sub_252E349D4();

            if (__dst[0])
            {
              break;
            }

            ++v31;
            if (v29 == v28)
            {
              v30 = v33;
              goto LABEL_54;
            }
          }

          MEMORY[0x2530AD700](v32);
          if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v30 = v42[0];
        }

        while (v29 != v28);
        goto LABEL_54;
      }
    }

    else
    {
      v28 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_35;
      }
    }

    v30 = MEMORY[0x277D84F90];
LABEL_54:

    sub_252CDF97C(v30, 0);
  }

  return result;
}

uint64_t sub_252CF38DC(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = v183;
  memcpy(v193, v1, sizeof(v193));
  memcpy(v192, v1, sizeof(v192));
  sub_2529353AC(v193, v194);
  sub_252CF555C(v3, v191);
  memcpy(v194, v192, 0x1F8uLL);
  sub_252935408(v194);
  LOBYTE(v5) = v191[0];
  v176 = v1;
  v177 = v3;
  if (LOBYTE(v191[0]) > 2u)
  {
    if (LOBYTE(v191[0]) != 3 && LOBYTE(v191[0]) != 4)
    {
      goto LABEL_34;
    }
  }

  else if (LOBYTE(v191[0]) > 1u)
  {

    goto LABEL_9;
  }

  v6 = sub_252E37DB4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v8 = *(sub_252B680FC(v7) + 72);

  if (v8 != 1 || (v10 = *(sub_252B680FC(v9) + 120), , , !v10))
  {
LABEL_16:
    v21 = v193[4];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_17;
    }

    goto LABEL_190;
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D90);

  v12 = sub_252E36AC4();
  v13 = sub_252E374C4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v192[0] = v15;
    *v14 = 136315138;
    v16 = type metadata accessor for HomeFilter();
    v17 = MEMORY[0x2530AD730](v10, v16);
    v19 = sub_252BE2CE0(v17, v18, v192);
    v2 = v176;

    *(v14 + 4) = v19;
    _os_log_impl(&dword_252917000, v12, v13, "All quantifier with disambiguation candidates: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v20 = v15;
    v3 = v177;
    MEMORY[0x2530AED00](v20, -1, -1);
    MEMORY[0x2530AED00](v14, -1, -1);
  }

  *(v2 + 304) = v10;
LABEL_34:
  while (1)
  {
    memcpy(v191, v2, sizeof(v191));
    memcpy(v190, v2, sizeof(v190));
    sub_2529353AC(v191, v192);
    sub_252CF5B00(v3, v189);
    memcpy(v192, v190, sizeof(v192));
    sub_252935408(v192);
    LODWORD(v5) = *(v4 + 3072);
    if (v5 == 21)
    {
      break;
    }

    v21 = v191[11];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_192:
      v21 = sub_2529F82D8(0, *(v21 + 16) + 1, 1, v21);
    }

    v35 = *(v21 + 16);
    v34 = *(v21 + 24);
    if (v35 >= v34 >> 1)
    {
      v21 = sub_2529F82D8((v34 > 1), v35 + 1, 1, v21);
    }

    v36 = v191[0];
    *(v21 + 16) = v35 + 1;
    *(v21 + v35 + 32) = v5;
    *(v2 + 88) = v21;
    v37 = *(v36 + 16);
    if (!v37)
    {
      v21 = MEMORY[0x277D84F90];
LABEL_52:

      v2 = v176;
      v3 = v177;
      *v176 = v21;
      break;
    }

    v2 = 0;
    v38 = (v36 + 128);
    v21 = MEMORY[0x277D84F90];
    while (v2 < *(v36 + 16))
    {
      memcpy(v190, v38 - 6, sizeof(v190));
      v39 = v190[11];
      *(v4 + 2080) = *(v38 - 4);
      *(v4 + 2096) = *(v38 - 3);
      *(v4 + 2112) = *(v38 - 2);
      v187[10] = *(v38 - 2);
      *(v4 + 2048) = *(v38 - 6);
      *(v4 + 2064) = *(v38 - 5);
      memcpy(v188, v38, 0x198uLL);
      sub_2529353AC(v190, v189);
      sub_2529353AC(v190, v189);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_2529F82D8(0, *(v39 + 2) + 1, 1, v39);
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_2529F82D8((v40 > 1), v41 + 1, 1, v39);
      }

      sub_252935408(v190);
      *(v39 + 2) = v41 + 1;
      v39[v41 + 32] = v5;
      *(v4 + 1536) = *(v4 + 2048);
      *(v4 + 1568) = *(v4 + 2080);
      *(v4 + 1584) = *(v4 + 2096);
      *(v4 + 1600) = *(v4 + 2112);
      v186[10] = v187[10];
      *(v4 + 1552) = *(v4 + 2064);
      memcpy(v189, v188, 0x198uLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2529F7FB0(0, *(v21 + 16) + 1, 1, v21);
      }

      v43 = *(v21 + 16);
      v42 = *(v21 + 24);
      if (v43 >= v42 >> 1)
      {
        v21 = sub_2529F7FB0((v42 > 1), v43 + 1, 1, v21);
      }

      ++v2;
      *(v21 + 16) = v43 + 1;
      v44 = v21 + 504 * v43;
      v45 = *(v4 + 1552);
      *(v44 + 32) = *(v4 + 1536);
      *(v44 + 48) = v45;
      v46 = *(v4 + 1568);
      v47 = *(v4 + 1600);
      v48 = v186[10];
      *(v44 + 80) = *(v4 + 1584);
      *(v44 + 96) = v47;
      *(v44 + 64) = v46;
      *(v44 + 112) = v48;
      *(v44 + 120) = v39;
      memcpy((v44 + 128), v189, 0x198uLL);
      v38 = (v38 + 504);
      if (v37 == v2)
      {
        goto LABEL_52;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_185:
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
      v21 = sub_2529F8B34(0, *(v21 + 16) + 1, 1, v21);
LABEL_17:
      v23 = *(v21 + 16);
      v22 = *(v21 + 24);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_2529F8B34((v22 > 1), v23 + 1, 1, v21);
      }

      v24 = v193[0];
      *(v21 + 16) = v23 + 1;
      *(v21 + v23 + 32) = v5;
      *(v2 + 32) = v21;
      v25 = *(v24 + 16);
      if (!v25)
      {
        break;
      }

      v2 = 0;
      v26 = (v24 + 72);
      v21 = MEMORY[0x277D84F90];
      while (v2 < *(v24 + 16))
      {
        memcpy(v192, v26 - 40, sizeof(v192));
        v27 = v192[4];
        *(v4 + 3072) = *(v26 - 40);
        *(v4 + 3088) = *(v26 - 24);
        memcpy(v190, v26, 0x1D0uLL);
        sub_2529353AC(v192, v191);
        sub_2529353AC(v192, v191);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_2529F8B34(0, *(v27 + 2) + 1, 1, v27);
        }

        v29 = *(v27 + 2);
        v28 = *(v27 + 3);
        if (v29 >= v28 >> 1)
        {
          v27 = sub_2529F8B34((v28 > 1), v29 + 1, 1, v27);
        }

        sub_252935408(v192);
        *(v27 + 2) = v29 + 1;
        v27[v29 + 32] = v5;
        *(v4 + 2560) = *(v4 + 3072);
        *(v4 + 2576) = *(v4 + 3088);
        memcpy(v191, v190, 0x1D0uLL);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2529F7FB0(0, *(v21 + 16) + 1, 1, v21);
        }

        v31 = *(v21 + 16);
        v30 = *(v21 + 24);
        if (v31 >= v30 >> 1)
        {
          v21 = sub_2529F7FB0((v30 > 1), v31 + 1, 1, v21);
        }

        ++v2;
        *(v21 + 16) = v31 + 1;
        v32 = v21 + 504 * v31;
        v33 = *(v4 + 2576);
        *(v32 + 32) = *(v4 + 2560);
        *(v32 + 48) = v33;
        *(v32 + 64) = v27;
        memcpy((v32 + 72), v191, 0x1D0uLL);
        v26 += 504;
        if (v25 == v2)
        {
          goto LABEL_33;
        }
      }

LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
    }

    v21 = MEMORY[0x277D84F90];
LABEL_33:

    v2 = v176;
    v3 = v177;
    *v176 = v21;
  }

  memcpy(v189, v2, sizeof(v189));
  memcpy(v188, v2, 0x1F8uLL);
  sub_2529353AC(v189, v190);
  sub_252CF6614(v3, v187);
  memcpy(v190, v188, sizeof(v190));
  sub_252935408(v190);
  LODWORD(v5) = *(v4 + 2048);
  if (v5 != 66)
  {
    v49 = v189[10];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_2529F82EC(0, *(v49 + 2) + 1, 1, v49);
    }

    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_2529F82EC((v50 > 1), v51 + 1, 1, v49);
    }

    v52 = v189[0];
    *(v49 + 2) = v51 + 1;
    v49[v51 + 32] = v5;
    *(v2 + 80) = v49;
    v53 = *(v52 + 16);
    if (v53)
    {
      v2 = 0;
      v54 = (v52 + 120);
      v21 = MEMORY[0x277D84F90];
      do
      {
        if (v2 >= *(v52 + 16))
        {
          goto LABEL_185;
        }

        memcpy(v188, v54 - 88, 0x1F8uLL);
        v55 = v188[10];
        *(v4 + 1040) = *(v54 - 72);
        *(v4 + 1056) = *(v54 - 56);
        *(v4 + 1072) = *(v54 - 40);
        *(v4 + 1088) = *(v54 - 24);
        *(v4 + 1024) = *(v54 - 88);
        memcpy(v186, v54, 0x1A0uLL);
        sub_2529353AC(v188, v187);
        sub_2529353AC(v188, v187);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_2529F82EC(0, *(v55 + 2) + 1, 1, v55);
        }

        v57 = *(v55 + 2);
        v56 = *(v55 + 3);
        if (v57 >= v56 >> 1)
        {
          v55 = sub_2529F82EC((v56 > 1), v57 + 1, 1, v55);
        }

        sub_252935408(v188);
        *(v55 + 2) = v57 + 1;
        v55[v57 + 32] = v5;
        v58 = *(v4 + 1040);
        *(v4 + 512) = *(v4 + 1024);
        *(v4 + 528) = v58;
        v59 = *(v4 + 1072);
        *(v4 + 544) = *(v4 + 1056);
        *(v4 + 560) = v59;
        *(v4 + 576) = *(v4 + 1088);
        memcpy(v187, v186, 0x1A0uLL);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2529F7FB0(0, *(v21 + 16) + 1, 1, v21);
        }

        v61 = *(v21 + 16);
        v60 = *(v21 + 24);
        if (v61 >= v60 >> 1)
        {
          v21 = sub_2529F7FB0((v60 > 1), v61 + 1, 1, v21);
        }

        ++v2;
        *(v21 + 16) = v61 + 1;
        v62 = v21 + 504 * v61;
        *(v62 + 32) = *(v4 + 512);
        v63 = *(v4 + 528);
        v64 = *(v4 + 544);
        v65 = *(v4 + 576);
        *(v62 + 80) = *(v4 + 560);
        *(v62 + 96) = v65;
        *(v62 + 48) = v63;
        *(v62 + 64) = v64;
        *(v62 + 112) = v55;
        memcpy((v62 + 120), v187, 0x1A0uLL);
        v54 += 504;
      }

      while (v53 != v2);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v2 = v176;
    v3 = v177;
    *v176 = v21;
  }

  memcpy(v187, v2, 0x1F8uLL);
  memcpy(v186, v2, 0x1F8uLL);
  sub_2529353AC(v187, v188);
  v66 = sub_252CF68D0();
  memcpy(v188, v186, 0x1F8uLL);
  sub_252935408(v188);
  if (v66 != 2)
  {
    v67 = v187[0];
    LOBYTE(v5) = v66 & 1;
    *(v2 + 387) = v66 & 1;
    v68 = *(v67 + 16);
    if (v68)
    {
      v69 = 0;
      v21 = MEMORY[0x277D84F90];
      v2 = v67;
      do
      {
        if (v69 >= *(v67 + 16))
        {
          goto LABEL_186;
        }

        memcpy(v186, (v2 + 32), 0x1F8uLL);
        memcpy(__dst, (v2 + 32), 0x183uLL);
        *(v4 + 64) = *(v2 + 484);
        *(v4 + 80) = *(v2 + 500);
        *(v4 + 96) = *(v2 + 516);
        LODWORD(v183[14]) = *(v2 + 532);
        *v4 = *(v2 + 420);
        *(v4 + 16) = *(v2 + 436);
        *(v4 + 32) = *(v2 + 452);
        *(v4 + 48) = *(v2 + 468);
        sub_2529353AC(v186, v185);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2529F7FB0(0, *(v21 + 16) + 1, 1, v21);
        }

        v71 = *(v21 + 16);
        v70 = *(v21 + 24);
        if (v71 >= v70 >> 1)
        {
          v21 = sub_2529F7FB0((v70 > 1), v71 + 1, 1, v21);
        }

        ++v69;
        *(v21 + 16) = v71 + 1;
        v72 = v21 + 504 * v71;
        memcpy((v72 + 32), __dst, 0x183uLL);
        *(v72 + 419) = v5;
        v73 = *(v4 + 48);
        v75 = *v4;
        v74 = *(v4 + 16);
        *(v72 + 452) = *(v4 + 32);
        *(v72 + 468) = v73;
        *(v72 + 420) = v75;
        *(v72 + 436) = v74;
        v77 = *(v4 + 80);
        v76 = *(v4 + 96);
        v78 = *(v4 + 64);
        *(v72 + 532) = v183[14];
        *(v72 + 500) = v77;
        *(v72 + 516) = v76;
        *(v72 + 484) = v78;
        v2 += 504;
      }

      while (v68 != v69);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v2 = v176;
    v3 = v177;
    *v176 = v21;
  }

  memcpy(v185, v2, 0x1F8uLL);
  memcpy(__dst, v2, 0x1F8uLL);
  sub_2529353AC(v185, v186);
  v79 = sub_252CF6D5C(v3);
  memcpy(v186, __dst, 0x1F8uLL);
  v80 = sub_252935408(v186);
  v81 = *(sub_252B680FC(v80) + 72);

  if (v81 == 1)
  {
    v83 = *(sub_252B680FC(v82) + 112);

    if ((v83 & 1) == 0)
    {
      goto LABEL_156;
    }
  }

  v21 = 0;
  v85 = sub_252D06E64(v84, sub_252D071AC, sub_252D071AC);

  v166 = sub_252D06E64(v79, sub_252D06FD4, sub_252D06FD4);

  v86 = 0;
  v87 = v85 + 64;
  v88 = 1 << v85[32];
  v89 = -1;
  if (v88 < 64)
  {
    v89 = ~(-1 << v88);
  }

  v4 = v89 & *(v85 + 8);
  v90 = (v88 + 63) >> 6;
  v173 = v85 + 64;
  v174 = v85;
  v172 = v90;
  if (v4)
  {
    goto LABEL_92;
  }

  while (1)
  {
LABEL_93:
    v5 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    if (v5 >= v90)
    {
      break;
    }

    v4 = *&v87[8 * v5];
    ++v86;
    if (v4)
    {
      while (1)
      {
        v91 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v92 = v91 | (v5 << 6);
        v93 = *(*(v85 + 7) + 8 * v92);
        v94 = v2;
        v95 = *v2;
        v96 = *(v95 + 16);
        if (v96)
        {
          _s7BuilderCMa_1();

          v97 = v96 - 1;
          v21 = 32;
          v98 = MEMORY[0x277D84F90];
          while (1)
          {
            memcpy(__src, (v95 + v21), sizeof(__src));
            swift_allocObject();
            sub_252E1E238();
            memcpy(v179, __src, sizeof(v179));
            sub_2529353AC(__src, v178);
            sub_252E1EBE8(v179);

            sub_252E1E4F8(v180);

            sub_252CFD198(v93);
            memcpy(v182, v180, sizeof(v182));
            sub_252935408(v182);
            memcpy(v180, v183, sizeof(v180));
            memcpy(__dst, v183, 0x1F8uLL);
            sub_2529353AC(__dst, v179);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v98 = sub_2529F7FB0(0, *(v98 + 2) + 1, 1, v98);
            }

            v100 = *(v98 + 2);
            v99 = *(v98 + 3);
            if (v100 >= v99 >> 1)
            {
              v98 = sub_2529F7FB0((v99 > 1), v100 + 1, 1, v98);
            }

            sub_252935408(__src);
            memcpy(v179, v180, sizeof(v179));
            sub_252935408(v179);
            *(v98 + 2) = v100 + 1;
            memcpy(&v98[504 * v100 + 32], __dst, 0x1F8uLL);
            if (!v97)
            {
              break;
            }

            --v97;
            v21 += 504;
          }

          v2 = v176;
          *v176 = v98;
          v86 = v5;
          v87 = v173;
          v85 = v174;
          v90 = v172;
          if (!v4)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v21 = *(*(v85 + 6) + 16 * v92 + 8);

          sub_252CF8794(v101);

          v86 = v5;
          v2 = v94;
          if (!v4)
          {
            goto LABEL_93;
          }
        }

LABEL_92:
        v5 = v86;
      }
    }
  }

  v102 = 0;
  v103 = v166 + 64;
  v104 = 1 << v166[32];
  if (v104 < 64)
  {
    v105 = ~(-1 << v104);
  }

  else
  {
    v105 = -1;
  }

  v5 = v105 & *(v166 + 8);
  v106 = (v104 + 63) >> 6;
  v163 = v106;
  if (v5)
  {
    goto LABEL_110;
  }

  do
  {
LABEL_111:
    v107 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      goto LABEL_183;
    }

    if (v107 >= v106)
    {

      v146 = sub_252DF93D8(*v2);

      *v2 = v146;
      return result;
    }

    v5 = *&v103[8 * v107];
    ++v102;
  }

  while (!v5);
  while (1)
  {
    v164 = v107;
    v108 = (*(v166 + 6) + 16 * (__clz(__rbit64(v5)) | (v107 << 6)));
    v109 = *v108;
    v4 = v108[1];

    v111 = sub_252D078FC(v110);

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v165 = (v5 - 1) & v5;
    v112 = sub_252E36AD4();
    __swift_project_value_buffer(v112, qword_27F544CB8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0x2065646F4ELL;
    __dst[1] = 0xE500000000000000;
    MEMORY[0x2530AD570](v109, v4);
    MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E92FE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543360, &unk_252E5B590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5408A0, &qword_252E3DF08);
    sub_252D07C78();
    v113 = sub_252E36E54();
    MEMORY[0x2530AD570](v113);

    v21 = __dst[1];
    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000077, 0x8000000252E92DE0);

    v5 = (v111 + 8);
    v175 = v4;
    v169 = *(*v2 + 16);
    if (v169)
    {
      break;
    }

    v4 = 0;
    v129 = 1 << *(v111 + 32);
    v130 = v111[8];
    if (v129 < 64)
    {
      v131 = ~(-1 << v129);
    }

    else
    {
      v131 = -1;
    }

    v132 = v131 & v130;
    v133 = (v129 + 63) >> 6;
    v134 = MEMORY[0x277D84F90];
    if ((v131 & v130) == 0)
    {
      goto LABEL_141;
    }

    do
    {
      v171 = v134;
LABEL_145:
      v136 = (v4 << 9) | (8 * __clz(__rbit64(v132)));
      v137 = v111[6] + v136;
      v138 = *v137;
      v139 = *(v137 + 4);
      v140 = *(v111[7] + v136);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;

      sub_252E379F4();

      __dst[0] = 0x2070756F7247;
      __dst[1] = 0xE600000000000000;
      LODWORD(v183[0]) = v138;
      BYTE4(v183[0]) = v139;
      v141 = sub_252E36F94();
      MEMORY[0x2530AD570](v141);

      MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E93010);
      v142 = sub_252E34804();
      v143 = MEMORY[0x2530AD730](v140, v142);
      MEMORY[0x2530AD570](v143);

      sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000077, 0x8000000252E92DE0);

      v144 = *v2;
      memcpy(&__dst[1], (v2 + 8), 0x1F0uLL);
      _s7BuilderCMa_1();
      swift_allocObject();
      sub_252E1E238();
      __dst[0] = v144;
      sub_252E1EBE8(__dst);

      sub_252E1E4F8(__src);

      sub_252CFD198(v140);

      memcpy(v182, __src, sizeof(v182));
      sub_252935408(v182);
      memcpy(__src, v183, sizeof(__src));
      memcpy(__dst, v183, 0x1F8uLL);
      sub_2529353AC(__dst, v180);
      v134 = v171;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = sub_2529F7FB0(0, *(v171 + 2) + 1, 1, v171);
      }

      v21 = *(v134 + 2);
      v145 = *(v134 + 3);
      if (v21 >= v145 >> 1)
      {
        v134 = sub_2529F7FB0((v145 > 1), v21 + 1, 1, v134);
      }

      v132 &= v132 - 1;
      memcpy(v180, __src, sizeof(v180));
      sub_252935408(v180);
      *(v134 + 2) = v21 + 1;
      memcpy(&v134[504 * v21 + 32], __dst, 0x1F8uLL);
    }

    while (v132);
    while (1)
    {
LABEL_141:
      v135 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_181;
      }

      if (v135 >= v133)
      {
        break;
      }

      v132 = *(v5 + 8 * v135);
      ++v4;
      if (v132)
      {
        v171 = v134;
        v4 = v135;
        goto LABEL_145;
      }
    }

    *v2 = v134;
LABEL_152:
    v102 = v164;
    v5 = v165;
    v106 = v163;
    v103 = v166 + 64;
    if (!v165)
    {
      goto LABEL_111;
    }

LABEL_110:
    v107 = v102;
  }

  v114 = 0;
  v168 = *v2 + 32;
  v21 = MEMORY[0x277D84F90];
  v167 = *v2;
LABEL_118:
  memcpy(__dst, (v168 + 504 * v114), 0x1F8uLL);
  v170 = v114 + 1;
  v115 = 1 << *(v111 + 32);
  if (v115 < 64)
  {
    v116 = ~(-1 << v115);
  }

  else
  {
    v116 = -1;
  }

  v79 = v116 & v111[8];
  sub_2529353AC(__dst, v183);

  v117 = 0;
  if (v79)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v118 = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      break;
    }

    if (v118 >= ((v115 + 63) >> 6))
    {
      sub_252935408(__dst);

      v114 = v170;
      if (v170 == v169)
      {

        *v2 = v21;
        goto LABEL_152;
      }

      if (v170 >= *(v167 + 16))
      {
        goto LABEL_180;
      }

      goto LABEL_118;
    }

    v79 = *(v5 + 8 * v118);
    ++v117;
    if (v79)
    {
      v117 = v118;
      do
      {
LABEL_126:
        v119 = (v117 << 9) | (8 * __clz(__rbit64(v79)));
        v120 = v111[6] + v119;
        v121 = *v120;
        v122 = *(v120 + 4);
        v123 = *(v111[7] + v119);
        v183[0] = 0;
        v183[1] = 0xE000000000000000;

        sub_252E379F4();

        v183[0] = 0x2070756F7247;
        v183[1] = 0xE600000000000000;
        v182[0] = v121;
        LOBYTE(v182[1]) = v122;
        v124 = sub_252E36F94();
        MEMORY[0x2530AD570](v124);

        MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E93010);
        v125 = sub_252E34804();
        v126 = MEMORY[0x2530AD730](v123, v125);
        MEMORY[0x2530AD570](v126);

        sub_252CC3D90(v183[0], v183[1], 0xD000000000000077, 0x8000000252E92DE0);

        _s7BuilderCMa_1();
        swift_allocObject();
        sub_252E1E238();
        memcpy(v183, __dst, 0x1F8uLL);
        sub_252E1EBE8(v183);

        sub_252E1E4F8(v180);

        v4 = v175;
        v2 = v176;
        sub_252CFD198(v123);

        memcpy(__src, v180, sizeof(__src));
        sub_252935408(__src);
        memcpy(v180, v182, sizeof(v180));
        memcpy(v183, v182, 0x1F8uLL);
        sub_2529353AC(v183, v179);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2529F7FB0(0, *(v21 + 16) + 1, 1, v21);
        }

        v128 = *(v21 + 16);
        v127 = *(v21 + 24);
        if (v128 >= v127 >> 1)
        {
          v21 = sub_2529F7FB0((v127 > 1), v128 + 1, 1, v21);
        }

        v79 &= v79 - 1;
        memcpy(v179, v180, sizeof(v179));
        sub_252935408(v179);
        *(v21 + 16) = v128 + 1;
        memcpy((v21 + 504 * v128 + 32), v183, 0x1F8uLL);
      }

      while (v79);
      continue;
    }
  }

  __break(1u);
LABEL_156:
  if (qword_27F53F4F8 != -1)
  {
LABEL_194:
    swift_once();
  }

  v148 = sub_252E36AD4();
  __swift_project_value_buffer(v148, qword_27F544D90);
  sub_252CC4A5C(0xD00000000000004ELL, 0x8000000252E93030, 0, 0xD000000000000077, 0x8000000252E92DE0);
  v5 = v79 + 64;
  v149 = 1 << *(v79 + 32);
  v150 = -1;
  if (v149 < 64)
  {
    v150 = ~(-1 << v149);
  }

  v2 = v150 & *(v79 + 64);
  v4 = (v149 + 63) >> 6;

  v151 = 0;
  v177 = 0;
  v21 = MEMORY[0x277D84F90];
  while (v2)
  {
LABEL_166:
    v153 = *(*(v79 + 56) + ((v151 << 9) | (8 * __clz(__rbit64(v2)))));
    v154 = *(v153 + 16);
    v155 = *(v21 + 16);
    v156 = v155 + v154;
    if (__OFADD__(v155, v154))
    {
      goto LABEL_188;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v156 > *(v21 + 24) >> 1)
    {
      if (v155 <= v156)
      {
        v158 = v155 + v154;
      }

      else
      {
        v158 = v155;
      }

      v21 = sub_2529F85CC(isUniquelyReferenced_nonNull_native, v158, 1, v21);
    }

    v2 &= v2 - 1;
    if (*(v153 + 16))
    {
      v159 = (*(v21 + 24) >> 1) - *(v21 + 16);
      sub_252E34804();
      if (v159 < v154)
      {
        __break(1u);
        goto LABEL_192;
      }

      swift_arrayInitWithCopy();

      if (v154)
      {
        v160 = *(v21 + 16);
        v161 = __OFADD__(v160, v154);
        v162 = v160 + v154;
        if (v161)
        {
          __break(1u);
          goto LABEL_194;
        }

        *(v21 + 16) = v162;
      }
    }

    else
    {

      if (v154)
      {
        goto LABEL_189;
      }
    }
  }

  while (1)
  {
    v152 = v151 + 1;
    if (__OFADD__(v151, 1))
    {
      goto LABEL_187;
    }

    if (v152 >= v4)
    {
      break;
    }

    v2 = *(v5 + 8 * v152);
    ++v151;
    if (v2)
    {
      v151 = v152;
      goto LABEL_166;
    }
  }

  sub_252CF7A04(v21);
}

uint64_t sub_252CF555C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30[-v4];
  v6 = sub_252E34544();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v32 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v33 = &v30[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545548, &qword_252E5B5D8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30[-v12];
  v14 = sub_252E34E84();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v30[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v30[-v19];
  v34 = a1;
  if (sub_252E34A14())
  {
    sub_252E34E74();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      sub_25293847C(v13, &qword_27F545548, &qword_252E5B5D8);
    }

    else
    {
      (*(v15 + 32))(v20, v13, v14);
      (*(v15 + 104))(v18, *MEMORY[0x277D5EA28], v14);
      sub_252D07DD4(&qword_27F545560, MEMORY[0x277D5EA60], MEMORY[0x277D5EA78]);
      sub_252E371F4();
      sub_252E371F4();
      if (v38 == v36 && v39 == v37)
      {

        v26 = *(v15 + 8);
        v26(v18, v14);
        v26(v20, v14);

        goto LABEL_13;
      }

      v31 = sub_252E37DB4();

      v29 = *(v15 + 8);
      v29(v18, v14);
      v29(v20, v14);

      if (v31)
      {
        goto LABEL_17;
      }
    }
  }

  sub_252E34534();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v23 = v33;
    (*(v7 + 32))(v33, v5, v6);
    v24 = v32;
    (*(v7 + 104))(v32, *MEMORY[0x277D5E230], v6);
    sub_252D07DD4(&qword_27F545558, MEMORY[0x277D5E248], MEMORY[0x277D5E258]);
    sub_252E371F4();
    sub_252E371F4();
    if (v38 != v36 || v39 != v37)
    {
      v27 = sub_252E37DB4();
      v28 = *(v7 + 8);
      v28(v24, v6);
      v28(v23, v6);

      if ((v27 & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_17:
      v22 = 2;
      goto LABEL_18;
    }

    v25 = *(v7 + 8);
    v25(v24, v6);
    v25(v23, v6);

LABEL_13:

    goto LABEL_17;
  }

  result = sub_25293847C(v5, &qword_27F540288, &qword_252E41DE0);
LABEL_6:
  v22 = 5;
LABEL_18:
  *v35 = v22;
  return result;
}

uint64_t sub_252CF5B00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  v3 = sub_252E34544();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v77 = &v70[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C20, &unk_252E5B5E0);
  v7 = MEMORY[0x28223BE20](v6);
  v75 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v78 = &v70[-v10];
  MEMORY[0x28223BE20](v9);
  v12 = &v70[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v73 = &v70[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v80 = &v70[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v76 = &v70[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v74 = &v70[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v81 = &v70[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v82 = &v70[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v70[-v27];
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v70[-v30];
  MEMORY[0x28223BE20](v29);
  v33 = &v70[-v32];
  v89 = a1;
  sub_252E34534();
  v34 = *MEMORY[0x277D5E238];
  v35 = v4[13];
  v88 = v4 + 13;
  v86 = v35;
  v35(v31, v34, v3);
  v36 = v4[7];
  v87 = v4 + 7;
  v85 = v36;
  v36(v31, 0, 1, v3);
  v79 = v6;
  v37 = *(v6 + 48);
  sub_252938414(v33, v12, &qword_27F540288, &qword_252E41DE0);
  sub_252938414(v31, &v12[v37], &qword_27F540288, &qword_252E41DE0);
  v84 = v4;
  v38 = v4[6];
  if (v38(v12, 1, v3) != 1)
  {
    sub_252938414(v12, v28, &qword_27F540288, &qword_252E41DE0);
    if (v38(&v12[v37], 1, v3) != 1)
    {
      v52 = v84;
      v53 = v84[4];
      v72 = v38;
      v54 = v77;
      v53(v77, &v12[v37], v3);
      sub_252D07DD4(&qword_27F541C28, MEMORY[0x277D5E248], MEMORY[0x277D5E250]);
      v71 = sub_252E36EF4();
      v55 = v52[1];
      v56 = v54;
      v38 = v72;
      v55(v56, v3);
      sub_25293847C(v31, &qword_27F540288, &qword_252E41DE0);
      sub_25293847C(v33, &qword_27F540288, &qword_252E41DE0);
      v55(v28, v3);
      result = sub_25293847C(v12, &qword_27F540288, &qword_252E41DE0);
      if (v71)
      {
        v40 = 2;
        goto LABEL_26;
      }

LABEL_7:
      v41 = v82;
      sub_252E34534();
      v42 = v81;
      v86(v81, *MEMORY[0x277D5E240], v3);
      v85(v42, 0, 1, v3);
      v43 = v78;
      v44 = v79;
      v45 = *(v79 + 48);
      sub_252938414(v41, v78, &qword_27F540288, &qword_252E41DE0);
      sub_252938414(v42, &v43[v45], &qword_27F540288, &qword_252E41DE0);
      if (v38(v43, 1, v3) == 1)
      {
        sub_25293847C(v42, &qword_27F540288, &qword_252E41DE0);
        sub_25293847C(v41, &qword_27F540288, &qword_252E41DE0);
        v46 = v38(&v43[v45], 1, v3);
        v47 = v80;
        if (v46 == 1)
        {
          result = sub_25293847C(v43, &qword_27F540288, &qword_252E41DE0);
          v40 = 3;
          goto LABEL_26;
        }
      }

      else
      {
        v48 = v74;
        sub_252938414(v43, v74, &qword_27F540288, &qword_252E41DE0);
        if (v38(&v43[v45], 1, v3) != 1)
        {
          v58 = v84;
          v59 = v77;
          (v84[4])(v77, &v43[v45], v3);
          sub_252D07DD4(&qword_27F541C28, MEMORY[0x277D5E248], MEMORY[0x277D5E250]);
          LODWORD(v72) = sub_252E36EF4();
          v60 = v38;
          v61 = v43;
          v62 = v58[1];
          v62(v59, v3);
          sub_25293847C(v81, &qword_27F540288, &qword_252E41DE0);
          sub_25293847C(v82, &qword_27F540288, &qword_252E41DE0);
          v62(v48, v3);
          v63 = v61;
          v38 = v60;
          result = sub_25293847C(v63, &qword_27F540288, &qword_252E41DE0);
          v47 = v80;
          v49 = v76;
          if (v72)
          {
            v40 = 3;
            goto LABEL_26;
          }

LABEL_13:
          sub_252E34534();
          v86(v47, *MEMORY[0x277D5E230], v3);
          v85(v47, 0, 1, v3);
          v50 = *(v44 + 48);
          v51 = v75;
          sub_252938414(v49, v75, &qword_27F540288, &qword_252E41DE0);
          sub_252938414(v47, &v51[v50], &qword_27F540288, &qword_252E41DE0);
          if (v38(v51, 1, v3) == 1)
          {
            sub_25293847C(v47, &qword_27F540288, &qword_252E41DE0);
            sub_25293847C(v49, &qword_27F540288, &qword_252E41DE0);
            if (v38(&v51[v50], 1, v3) == 1)
            {
              result = sub_25293847C(v51, &qword_27F540288, &qword_252E41DE0);
LABEL_25:
              v40 = 0;
              goto LABEL_26;
            }
          }

          else
          {
            v57 = v73;
            sub_252938414(v51, v73, &qword_27F540288, &qword_252E41DE0);
            if (v38(&v51[v50], 1, v3) != 1)
            {
              v64 = v49;
              v65 = v84;
              v66 = &v51[v50];
              v67 = v77;
              (v84[4])(v77, v66, v3);
              sub_252D07DD4(&qword_27F541C28, MEMORY[0x277D5E248], MEMORY[0x277D5E250]);
              v68 = sub_252E36EF4();
              v69 = v65[1];
              v69(v67, v3);
              sub_25293847C(v47, &qword_27F540288, &qword_252E41DE0);
              sub_25293847C(v64, &qword_27F540288, &qword_252E41DE0);
              v69(v57, v3);
              result = sub_25293847C(v51, &qword_27F540288, &qword_252E41DE0);
              if (v68)
              {
                goto LABEL_25;
              }

LABEL_21:
              v40 = 21;
              goto LABEL_26;
            }

            sub_25293847C(v47, &qword_27F540288, &qword_252E41DE0);
            sub_25293847C(v49, &qword_27F540288, &qword_252E41DE0);
            (v84[1])(v57, v3);
          }

          result = sub_25293847C(v51, &qword_27F541C20, &unk_252E5B5E0);
          goto LABEL_21;
        }

        sub_25293847C(v81, &qword_27F540288, &qword_252E41DE0);
        sub_25293847C(v82, &qword_27F540288, &qword_252E41DE0);
        (v84[1])(v48, v3);
        v47 = v80;
      }

      sub_25293847C(v43, &qword_27F541C20, &unk_252E5B5E0);
      v49 = v76;
      goto LABEL_13;
    }

    sub_25293847C(v31, &qword_27F540288, &qword_252E41DE0);
    sub_25293847C(v33, &qword_27F540288, &qword_252E41DE0);
    (v84[1])(v28, v3);
LABEL_6:
    sub_25293847C(v12, &qword_27F541C20, &unk_252E5B5E0);
    goto LABEL_7;
  }

  sub_25293847C(v31, &qword_27F540288, &qword_252E41DE0);
  sub_25293847C(v33, &qword_27F540288, &qword_252E41DE0);
  if (v38(&v12[v37], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  result = sub_25293847C(v12, &qword_27F540288, &qword_252E41DE0);
  v40 = 2;
LABEL_26:
  *v83 = v40;
  return result;
}

uint64_t sub_252CF6614@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_252E34804();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  memcpy(v31, v2, sizeof(v31));
  result = sub_252D05234(a1);
  v16 = result;
  v30 = *(result + 16);
  if (v30)
  {
    v25 = v12;
    v26 = v14;
    v27 = a2;
    v17 = 0;
    v29 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v28 = 0x8000000252E7BB10;
    while (v17 < *(v16 + 16))
    {
      (*(v6 + 16))(v9, v29 + *(v6 + 72) * v17, v5);
      v19 = sub_252E347F4();
      if (v20)
      {
        if (v19 == 0xD000000000000012 && v20 == v28)
        {

LABEL_10:

          v21 = *(v6 + 32);
          v22 = v25;
          v21(v25, v9, v5);
          v23 = v26;
          v21(v26, v22, v5);
          v24._countAndFlagsBits = sub_252E347E4();
          AttributeSemantic.init(rawValue:)(v24);
          return (*(v6 + 8))(v23, v5);
        }

        v18 = sub_252E37DB4();

        if (v18)
        {
          goto LABEL_10;
        }
      }

      ++v17;
      result = (*(v6 + 8))(v9, v5);
      if (v30 == v17)
      {

        a2 = v27;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_13:
    *a2 = 66;
  }

  return result;
}

uint64_t sub_252CF68D0()
{
  v0 = sub_252E34E84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545540, &qword_252E5B5D0);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545548, &qword_252E5B5D8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  if (sub_252E34A14())
  {
    sub_252E34E74();
  }

  else
  {
    (*(v1 + 56))(v14, 1, 1, v0);
  }

  (*(v1 + 104))(v12, *MEMORY[0x277D5EA58], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v15 = *(v3 + 48);
  sub_252938414(v14, v5, &qword_27F545548, &qword_252E5B5D8);
  sub_252938414(v12, &v5[v15], &qword_27F545548, &qword_252E5B5D8);
  v16 = *(v1 + 48);
  if (v16(v5, 1, v0) == 1)
  {
    sub_25293847C(v12, &qword_27F545548, &qword_252E5B5D8);
    sub_25293847C(v14, &qword_27F545548, &qword_252E5B5D8);
    if (v16(&v5[v15], 1, v0) == 1)
    {
      sub_25293847C(v5, &qword_27F545548, &qword_252E5B5D8);
      return 1;
    }

    goto LABEL_9;
  }

  sub_252938414(v5, v9, &qword_27F545548, &qword_252E5B5D8);
  if (v16(&v5[v15], 1, v0) == 1)
  {
    sub_25293847C(v12, &qword_27F545548, &qword_252E5B5D8);
    sub_25293847C(v14, &qword_27F545548, &qword_252E5B5D8);
    (*(v1 + 8))(v9, v0);
LABEL_9:
    sub_25293847C(v5, &qword_27F545540, &qword_252E5B5D0);
    return 2;
  }

  v18 = v22;
  (*(v1 + 32))(v22, &v5[v15], v0);
  sub_252D07DD4(&qword_27F545550, MEMORY[0x277D5EA60], MEMORY[0x277D5EA70]);
  v19 = sub_252E36EF4();
  v20 = *(v1 + 8);
  v20(v18, v0);
  sub_25293847C(v12, &qword_27F545548, &qword_252E5B5D8);
  sub_25293847C(v14, &qword_27F545548, &qword_252E5B5D8);
  v20(v9, v0);
  sub_25293847C(v5, &qword_27F545548, &qword_252E5B5D8);
  if (v19)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_252CF6D5C(uint64_t a1)
{
  v69 = sub_252E36CA4();
  v2 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_252E36D04();
  v4 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_252E32E84();
  v6 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E34644();
  v9 = sub_252E359F4();
  if (!*(v9 + 16) || (v10 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000), (v11 & 1) == 0))
  {

    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v46 = sub_252E36AD4();
    __swift_project_value_buffer(v46, qword_27F544D90);
    aBlock = 0;
    v75 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E933D0);
    v80 = a1;
    sub_252E34554();
    sub_252E37AE4();
    sub_252CC3D90(aBlock, v75, 0xD000000000000077, 0x8000000252E92DE0);

    v13 = sub_252CC7674(MEMORY[0x277D84F90]);

    return v13;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v13 = sub_252CC7674(MEMORY[0x277D84F90]);
  if (v12 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_43:

    return v13;
  }

LABEL_5:
  v70 = v13;
  v47[1] = v8;
  if (result >= 1)
  {
    v15 = 0;
    v62 = 0x8000000252E72DC0;
    v63 = v12 & 0xC000000000000001;
    v53 = (v6 + 8);
    v52 = "No names attributes from ";
    v51 = " name of the usoValue ";
    v16 = "Checking for RVC: ";
    v57 = ". Setting random string: ";
    v61 = &v76;
    v60 = (v2 + 8);
    v59 = (v4 + 8);
    v54 = "fiers for node: ";
    v49 = 0x8000000252E934E0;
    v48 = "sFromEntitySpans ";
    v50 = "rUserEntityNames(_:)";
    v58 = xmmword_252E41C50;
    v17 = &unk_2814B0000;
    v64 = result;
    v65 = v12;
    v71 = "Checking for RVC: ";
    while (1)
    {
      if (v63)
      {
        v21 = MEMORY[0x2530ADF00](v15, v12);
      }

      else
      {
        v21 = *(v12 + 8 * v15 + 32);
      }

      v22 = sub_252E358E4();
      if (v23)
      {
        v24 = v22;
        v25 = v23;
      }

      else
      {
        v26 = v55;
        sub_252E32E74();
        v24 = sub_252E32E24();
        v25 = v27;
        (*v53)(v26, v56);
        if (qword_27F53F4F8 != -1)
        {
          swift_once();
        }

        v28 = sub_252E36AD4();
        __swift_project_value_buffer(v28, qword_27F544D90);
        aBlock = 0;
        v75 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000026, v52 | 0x8000000000000000);
        v80 = v21;
        sub_252E35944();
        sub_252E37AE4();
        MEMORY[0x2530AD570](0xD000000000000019, v51 | 0x8000000000000000);
        MEMORY[0x2530AD570](v24, v25);
        sub_252CC4050(aBlock, v75, 0xD000000000000077, v16 | 0x8000000000000000, 0xD000000000000034, v57 | 0x8000000000000000, 1645);
      }

      if (qword_2814B0DB8 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v29 = v17[440];
      v72 = v24;
      v73 = v25;
      if (v29)
      {
      }

      else
      {
        type metadata accessor for LifeCycleManager();
        swift_allocObject();
        v29 = sub_252D7EAE8();
        v17[440] = v29;

        sub_252D7E92C();
      }

      sub_252E37614();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = v58;
      *(v30 + 40) = v62;
      *(v30 + 48) = sub_252979724;
      *(v30 + 56) = 0;
      v78 = sub_252990E7C;
      v79 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v75 = 1107296256;
      v76 = sub_252AD686C;
      v77 = &block_descriptor_21;
      v31 = _Block_copy(&aBlock);

      v32 = v66;
      sub_252E36CD4();
      v80 = MEMORY[0x277D84F90];
      sub_252D07DD4(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_2529905D0();
      v34 = v68;
      v33 = v69;
      sub_252E37824();
      MEMORY[0x2530ADA30](0, v32, v34, v31);
      _Block_release(v31);
      (*v60)(v34, v33);
      (*v59)(v32, v67);

      if (qword_27F53F220 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v35 = qword_27F5407C0;
      v12 = v65;
      if (qword_27F5407C0)
      {
      }

      else
      {
        type metadata accessor for ApplicationContext(0);
        swift_allocObject();
        v35 = sub_252978E58();
        qword_27F5407C0 = v35;
      }

      v17 = &unk_2814B0000;
      sub_252E37614();
      sub_252929E74((v35 + 288), &aBlock);

      v36 = v77;
      v37 = v78;
      __swift_project_boxed_opaque_existential_1(&aBlock, v77);
      v38 = (*(v37 + 11))(v36, v37);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (v38)
      {
        v16 = v71;
        if (qword_27F53F4F8 != -1)
        {
          swift_once();
        }

        v39 = sub_252E36AD4();
        __swift_project_value_buffer(v39, qword_27F544D90);
        sub_252CC3D90(0xD000000000000027, v54 | 0x8000000000000000, 0xD000000000000077, v16 | 0x8000000000000000);
        sub_252E35914();
        sub_252E34B04();
        v40 = sub_252E34AE4();

        v41 = sub_252E35934();
        v18 = sub_252A491E4(v40, v41, v72, v73);

        if (*(v18 + 16))
        {
          aBlock = 0;
          v75 = 0xE000000000000000;

          sub_252E379F4();

          aBlock = 0xD000000000000021;
          v75 = v49;
          v80 = *(v18 + 16);
          v42 = sub_252E37D94();
          MEMORY[0x2530AD570](v42);

          sub_252CC3D90(aBlock, v75, 0xD000000000000077, v16 | 0x8000000000000000);

          v43 = *(v18 + 16);

          if (!v43)
          {
            goto LABEL_35;
          }
        }

        else
        {

          sub_252CC4050(0xD000000000000044, v48 | 0x8000000000000000, 0xD000000000000077, v16 | 0x8000000000000000, 0xD000000000000034, v57 | 0x8000000000000000, 1657);
          v18 = sub_252E358F4();
          if (!*(v18 + 16))
          {
LABEL_35:

            if (qword_27F53F4F8 != -1)
            {
              swift_once();
            }

            v44 = sub_252E36AD4();
            __swift_project_value_buffer(v44, qword_27F544D90);
            aBlock = 0;
            v75 = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000020, v50 | 0x8000000000000000);
            v80 = v21;
            sub_252E35944();
            sub_252E37AE4();
            v45 = v71;
            sub_252CC4050(aBlock, v75, 0xD000000000000077, v71 | 0x8000000000000000, 0xD000000000000034, v57 | 0x8000000000000000, 1670);
            v16 = v45;

            goto LABEL_9;
          }
        }
      }

      else
      {
        v18 = sub_252E358F4();
        v16 = v71;
        if (!*(v18 + 16))
        {
          goto LABEL_35;
        }
      }

      v19 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v19;
      sub_2529FB7A0(v18, v72, v73, isUniquelyReferenced_nonNull_native);

      v70 = aBlock;
LABEL_9:
      if (v64 == ++v15)
      {

        return v70;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252CF7A04(uint64_t a1)
{
  v2 = v1;
  v83 = sub_252E34804();
  v4 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34874();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252B680FC(v8);
  v12 = *(v11 + 104);
  v13 = *(v11 + 112);

  if ((v13 & 1) == 0)
  {
    if (v12 <= 2)
    {
      if (v12 == 1)
      {
        memcpy(v88, v2, sizeof(v88));
        memcpy(v87, v2, sizeof(v87));
        (*(v7 + 104))(v10, *MEMORY[0x277D5E508], v6);
        sub_2529353AC(v88, v86);
        v66 = sub_252D02830(a1, v10);
        v68 = v67;
        (*(v7 + 8))(v10, v6);
        memcpy(v89, v87, 0x1F8uLL);
        result = sub_252935408(v89);
        if (v68)
        {
          v69 = v88[6];
          if (qword_27F53F4F8 != -1)
          {
            swift_once();
          }

          v70 = sub_252E36AD4();
          __swift_project_value_buffer(v70, qword_27F544D90);
          v87[0] = 0;
          v87[1] = 0xE000000000000000;
          sub_252E379F4();

          v87[0] = 0xD00000000000002FLL;
          v87[1] = 0x8000000252E931A0;
          MEMORY[0x2530AD570](v66, v68);
          sub_252CC4A5C(v87[0], v87[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2529F7A80(0, *(v69 + 16) + 1, 1, v69);
            v69 = result;
          }

          v72 = *(v69 + 16);
          v71 = *(v69 + 24);
          if (v72 >= v71 >> 1)
          {
            result = sub_2529F7A80((v71 > 1), v72 + 1, 1, v69);
            v69 = result;
          }

          *(v69 + 16) = v72 + 1;
          v73 = v69 + 16 * v72;
          *(v73 + 32) = v66;
          *(v73 + 40) = v68;
          v2[6] = v69;
        }
      }

      else if (v12 == 2)
      {
        memcpy(v88, v2, sizeof(v88));
        memcpy(v87, v2, sizeof(v87));
        (*(v7 + 104))(v10, *MEMORY[0x277D5E530], v6);
        sub_2529353AC(v88, v86);
        v32 = sub_252D02830(a1, v10);
        v34 = v33;
        (*(v7 + 8))(v10, v6);
        memcpy(v89, v87, 0x1F8uLL);
        result = sub_252935408(v89);
        if (v34)
        {
          v35 = v88[28];
          if (qword_27F53F4F8 != -1)
          {
            swift_once();
          }

          v36 = sub_252E36AD4();
          __swift_project_value_buffer(v36, qword_27F544D90);
          v87[0] = 0;
          v87[1] = 0xE000000000000000;
          sub_252E379F4();

          v87[0] = 0xD00000000000002FLL;
          v87[1] = 0x8000000252E93170;
          MEMORY[0x2530AD570](v32, v34);
          sub_252CC4A5C(v87[0], v87[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2529F7A80(0, *(v35 + 16) + 1, 1, v35);
            v35 = result;
          }

          v38 = *(v35 + 16);
          v37 = *(v35 + 24);
          if (v38 >= v37 >> 1)
          {
            result = sub_2529F7A80((v37 > 1), v38 + 1, 1, v35);
            v35 = result;
          }

          *(v35 + 16) = v38 + 1;
          v39 = v35 + 16 * v38;
          *(v39 + 32) = v32;
          *(v39 + 40) = v34;
          v2[28] = v35;
        }
      }
    }

    else
    {
      switch(v12)
      {
        case 3:
          memcpy(v88, v2, sizeof(v88));
          memcpy(v87, v2, sizeof(v87));
          (*(v7 + 104))(v10, *MEMORY[0x277D5E528], v6);
          sub_2529353AC(v88, v86);
          v40 = sub_252D02830(a1, v10);
          v42 = v41;
          (*(v7 + 8))(v10, v6);
          memcpy(v89, v87, 0x1F8uLL);
          result = sub_252935408(v89);
          if (v42)
          {
            v43 = v88[13];
            if (qword_27F53F4F8 != -1)
            {
              swift_once();
            }

            v44 = sub_252E36AD4();
            __swift_project_value_buffer(v44, qword_27F544D90);
            v87[0] = 0;
            v87[1] = 0xE000000000000000;
            sub_252E379F4();

            v87[0] = 0xD00000000000002FLL;
            v87[1] = 0x8000000252E93140;
            MEMORY[0x2530AD570](v40, v42);
            sub_252CC4A5C(v87[0], v87[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_2529F7A80(0, *(v43 + 16) + 1, 1, v43);
              v43 = result;
            }

            v46 = *(v43 + 16);
            v45 = *(v43 + 24);
            if (v46 >= v45 >> 1)
            {
              result = sub_2529F7A80((v45 > 1), v46 + 1, 1, v43);
              v43 = result;
            }

            *(v43 + 16) = v46 + 1;
            v47 = v43 + 16 * v46;
            *(v47 + 32) = v40;
            *(v47 + 40) = v42;
            v2[13] = v43;
          }

          break;
        case 5:
          v48 = sub_252D01B8C(a1);
          v89[0] = v49;
          sub_25297BA5C(v48);
          v50 = v89[0];
          v51 = *(v89[0] + 16);
          if (v51)
          {
            v78 = v2;
            v89[0] = MEMORY[0x277D84F90];
            sub_2529AA3A0(0, v51, 0);
            v52 = v89[0];
            v54 = *(v4 + 16);
            v53 = v4 + 16;
            v55 = *(v53 + 64);
            v77 = v50;
            v56 = v50 + ((v55 + 32) & ~v55);
            v79 = *(v53 + 56);
            v80 = v54;
            v81 = v53;
            v57 = (v53 - 8);
            do
            {
              v58 = v82;
              v59 = v83;
              v80(v82, v56, v83);
              v60 = sub_252E347E4();
              v62 = v61;
              (*v57)(v58, v59);
              v89[0] = v52;
              v64 = *(v52 + 16);
              v63 = *(v52 + 24);
              if (v64 >= v63 >> 1)
              {
                sub_2529AA3A0((v63 > 1), v64 + 1, 1);
                v52 = v89[0];
              }

              *(v52 + 16) = v64 + 1;
              v65 = v52 + 16 * v64;
              *(v65 + 32) = v60;
              *(v65 + 40) = v62;
              v56 += v79;
              --v51;
            }

            while (v51);

            v74 = sub_252DF88E4(v52);

            if (qword_27F53F4F8 != -1)
            {
              swift_once();
            }

            v75 = sub_252E36AD4();
            __swift_project_value_buffer(v75, qword_27F544D90);
            v89[0] = 0;
            v89[1] = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E93080);
            v76 = MEMORY[0x2530AD730](v74, MEMORY[0x277D837D0]);
            MEMORY[0x2530AD570](v76);

            sub_252CC4A5C(v89[0], v89[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

            return sub_25297A744(v74);
          }

          else
          {
          }

        case 7:
          memcpy(v88, v2, sizeof(v88));
          memcpy(v87, v2, sizeof(v87));
          v15 = *MEMORY[0x277D5E558];
          v82 = *(v7 + 104);
          (v82)(v10, v15, v6);
          sub_2529353AC(v88, v86);
          v83 = sub_252D02830(a1, v10);
          v17 = v16;
          v81 = *(v7 + 8);
          v81(v10, v6);
          memcpy(v89, v87, 0x1F8uLL);
          sub_252935408(v89);
          if (v17)
          {
            v78 = v2;
            v18 = v88[21];
            if (qword_27F53F4F8 != -1)
            {
              swift_once();
            }

            v19 = sub_252E36AD4();
            v80 = __swift_project_value_buffer(v19, qword_27F544D90);
            v87[0] = 0;
            v87[1] = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E93100);
            MEMORY[0x2530AD570](v83, v17);
            sub_252CC4A5C(v87[0], v87[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_2529F7A80(0, *(v18 + 2) + 1, 1, v18);
            }

            v21 = *(v18 + 2);
            v20 = *(v18 + 3);
            if (v21 >= v20 >> 1)
            {
              v18 = sub_2529F7A80((v20 > 1), v21 + 1, 1, v18);
            }

            *(v18 + 2) = v21 + 1;
            v22 = &v18[16 * v21];
            *(v22 + 4) = v83;
            *(v22 + 5) = v17;
            v23 = v78;
            v78[21] = v18;
            v2 = v23;
          }

          memcpy(v86, v2, sizeof(v86));
          memcpy(v85, v2, sizeof(v85));
          (v82)(v10, *MEMORY[0x277D5E548], v6);
          sub_2529353AC(v86, &v84);
          v24 = sub_252D02830(a1, v10);
          v26 = v25;
          v81(v10, v6);
          memcpy(v87, v85, sizeof(v87));
          result = sub_252935408(v87);
          if (v26)
          {
            v27 = v86[19];
            if (qword_27F53F4F8 != -1)
            {
              swift_once();
            }

            v28 = sub_252E36AD4();
            __swift_project_value_buffer(v28, qword_27F544D90);
            v85[0] = 0;
            v85[1] = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E930C0);
            MEMORY[0x2530AD570](v24, v26);
            sub_252CC4A5C(v85[0], v85[1], 0, 0xD000000000000077, 0x8000000252E92DE0);

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_2529F7A80(0, *(v27 + 16) + 1, 1, v27);
              v27 = result;
            }

            v30 = *(v27 + 16);
            v29 = *(v27 + 24);
            if (v30 >= v29 >> 1)
            {
              result = sub_2529F7A80((v29 > 1), v30 + 1, 1, v27);
              v27 = result;
            }

            *(v27 + 16) = v30 + 1;
            v31 = v27 + 16 * v30;
            *(v31 + 32) = v24;
            *(v31 + 40) = v26;
            v2[19] = v27;
          }

          break;
      }
    }
  }

  return result;
}

uint64_t sub_252CF8794(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v621 = v4;
  v6 = v5;
  v606 = v7;
  v607 = v8;
  v624 = v2;
  v604 = sub_252E34874();
  v9 = *(v604 - 8);
  MEMORY[0x28223BE20](v604);
  v617 = &v589 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v589 = &v589 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v590 = &v589 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v591 = &v589 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v592 = &v589 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v593 = &v589 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v594 = &v589 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v589 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v595 = &v589 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v589 - v29;
  v31 = sub_252E34804();
  v620 = *(v31 - 1);
  v32 = MEMORY[0x28223BE20](v31);
  v618 = &v589 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v613 = &v589 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v622 = &v589 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v614 = &v589 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v616 = &v589 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v623 = &v589 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v608 = &v589 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v619 = &v589 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v596 = &v589 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v603 = &v589 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v602 = &v589 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v597 = &v589 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v598 = &v589 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v599 = &v589 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v600 = &v589 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  *&v601 = &v589 - v63;
  MEMORY[0x28223BE20](v62);
  v65 = &v589 - v64;
  memcpy(v708, v1, sizeof(v708));
  memcpy(v648, v1, sizeof(v648));
  sub_2529353AC(v708, v709);
  sub_252CF5B00(v6, v647);
  memcpy(v709, v648, 0x1F8uLL);
  sub_252935408(v709);
  v66 = v647[0];
  if (v647[0] != 21)
  {
    v67 = *(v3 + 11);
    if (!sub_2529A6F34(v647[0], v67))
    {
      v615 = v26;
      v72 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_2529F82D8(0, *(v67 + 2) + 1, 1, v67);
      }

      v69 = v604;
      v74 = *(v67 + 2);
      v73 = *(v67 + 3);
      if (v74 >= v73 >> 1)
      {
        v67 = sub_2529F82D8((v73 > 1), v74 + 1, 1, v67);
      }

      *(v67 + 2) = v74 + 1;
      v67[v74 + 32] = v66;
      *(v3 + 11) = v67;
      goto LABEL_28;
    }
  }

  memcpy(v647, v3, sizeof(v647));
  memcpy(v646, v3, sizeof(v646));
  sub_2529353AC(v647, v645);
  sub_252D01354(v624, v30);
  memcpy(v648, v646, sizeof(v648));
  sub_252935408(v648);
  v68 = v620;
  if ((*(v620 + 6))(v30, 1, v31) == 1)
  {
    sub_25293847C(v30, &qword_27F541D70, &unk_252E5B5A0);
    v69 = v604;
    goto LABEL_29;
  }

  (*(v68 + 4))(v65, v30, v31);
  v70._countAndFlagsBits = sub_252E347E4();
  PlaceHintSemantic.init(rawValue:)(v70);
  v71 = v646[0];
  if (LOBYTE(v646[0]) == 21)
  {
    (*(v68 + 1))(v65, v31);
    v69 = v604;
    goto LABEL_29;
  }

  v615 = v26;
  v75 = *(v3 + 11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = v604;
  v72 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v75 = sub_2529F82D8(0, *(v75 + 2) + 1, 1, v75);
  }

  v78 = *(v75 + 2);
  v77 = *(v75 + 3);
  if (v78 >= v77 >> 1)
  {
    v75 = sub_2529F82D8((v77 > 1), v78 + 1, 1, v75);
  }

  *(v75 + 2) = v78 + 1;
  v75[v78 + 32] = v71;
  *(v3 + 11) = v75;
  if ((v621 & 1) == 0)
  {
    memcpy(v645, v3, sizeof(v645));
    memcpy(v644, v3, sizeof(v644));
    sub_2529353AC(v645, v643);
    sub_252D01540(v624, v65, &v649);
    memcpy(v646, v644, sizeof(v646));
    result = sub_252935408(v646);
    v80 = v653;
    if (v653 != 1)
    {
      v81 = v645[40];
      if (v651)
      {
        if (!v653)
        {
          v588 = *(v620 + 1);

          v588(v65, v31);
          goto LABEL_28;
        }

        v612 = *(&v649 + 1) - v649;
        if (__OFSUB__(*(&v649 + 1), v649))
        {
LABEL_442:
          __break(1u);
          goto LABEL_443;
        }

        v82 = v652;

        v83 = sub_252AD4324(v82, v80);
        sub_25293847C(&v649, &qword_27F545530, &unk_252E5B5C0);
        sub_25293847C(&v649, &qword_27F545530, &unk_252E5B5C0);
        result = (*(v620 + 1))(v65, v31);
        if (__OFSUB__(v612, v83))
        {
LABEL_443:
          __break(1u);
          return result;
        }

        v84 = (v612 - v83) & ~((v612 - v83) >> 63);
        v85 = __OFADD__(v81, v84);
        v86 = v81 + v84;
        if (!v85)
        {
          goto LABEL_27;
        }

        __break(1u);
      }

      v87 = v650;
      sub_25293847C(&v649, &qword_27F545530, &unk_252E5B5C0);
      result = (*(v620 + 1))(v65, v31);
      v86 = v81 + v87;
      if (__OFADD__(v81, v87))
      {
LABEL_441:
        __break(1u);
        goto LABEL_442;
      }

LABEL_27:
      *(v3 + 40) = v86;
      goto LABEL_28;
    }
  }

  (*(v620 + 1))(v65, v31);
LABEL_28:
  v9 = v72;
  v26 = v615;
LABEL_29:
  memcpy(v648, v3, sizeof(v648));
  memcpy(v647, v3, sizeof(v647));
  v88 = *MEMORY[0x277D5E508];
  v89 = *(v9 + 104);
  v90 = v617;
  v615 = (v9 + 104);
  v612 = v89;
  v89(v617, v88, v69);
  sub_2529353AC(v648, v646);
  v91 = v595;
  sub_252D02F3C(v624, v90, v595);
  v611 = *(v9 + 8);
  v611(v90, v69);
  sub_252935408(v648);
  v92 = v620;
  v609 = *(v620 + 6);
  v610 = (v620 + 48);
  v93 = v609(v91, 1, v31);
  v625 = v31;
  v605 = v9 + 8;
  if (v93 == 1)
  {
    sub_25293847C(v91, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_58;
  }

  (*(v92 + 4))(v601, v91, v31);
  v94 = sub_252E347E4();
  v96 = v95;
  v97 = *(v3 + 6);
  v98 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v97 = sub_2529F7A80(0, *(v97 + 2) + 1, 1, v97);
  }

  v100 = *(v97 + 2);
  v99 = *(v97 + 3);
  if (v100 >= v99 >> 1)
  {
    v97 = sub_2529F7A80((v99 > 1), v100 + 1, 1, v97);
  }

  *(v97 + 2) = v100 + 1;
  v101 = &v97[16 * v100];
  *(v101 + 4) = v94;
  *(v101 + 5) = v96;
  *(v3 + 6) = v97;
  v102 = *(v3 + 47);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v102 = sub_2529F846C(0, *(v102 + 2) + 1, 1, v102);
  }

  v26 = v98;
  v103 = v601;
  v105 = *(v102 + 2);
  v104 = *(v102 + 3);
  v69 = v604;
  if (v105 >= v104 >> 1)
  {
    v102 = sub_2529F846C((v104 > 1), v105 + 1, 1, v102);
  }

  *(v102 + 2) = v105 + 1;
  v102[v105 + 32] = 8;
  *(v3 + 47) = v102;
  v106 = v624;
  if ((v621 & 1) == 0)
  {
    memcpy(v646, v3, sizeof(v646));
    memcpy(v645, v3, sizeof(v645));
    sub_2529353AC(v646, v644);
    sub_252D01540(v106, v103, &v654);
    memcpy(v647, v645, sizeof(v647));
    result = sub_252935408(v647);
    v107 = v658;
    if (v658 != 1)
    {
      v108 = v646[40];
      if (v656)
      {
        if (!v658)
        {

          goto LABEL_50;
        }

        v109 = *(&v654 + 1) - v654;
        if (__OFSUB__(*(&v654 + 1), v654))
        {
LABEL_427:
          __break(1u);
          goto LABEL_428;
        }

        v110 = v657;

        v111 = sub_252AD4324(v110, v107);
        sub_25293847C(&v654, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v654, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v109, v111))
        {
LABEL_432:
          __break(1u);
          goto LABEL_433;
        }

        v112 = (v109 - v111) & ~((v109 - v111) >> 63);
        v85 = __OFADD__(v108, v112);
        v113 = v108 + v112;
        v106 = v624;
        v31 = v625;
        if (!v85)
        {
LABEL_49:
          *(v3 + 40) = v113;
LABEL_50:
          v103 = v601;
          goto LABEL_51;
        }

        __break(1u);
      }

      v114 = v655;
      result = sub_25293847C(&v654, &qword_27F545530, &unk_252E5B5C0);
      v113 = v108 + v114;
      if (__OFADD__(v108, v114))
      {
LABEL_413:
        __break(1u);
        goto LABEL_414;
      }

      goto LABEL_49;
    }
  }

LABEL_51:
  memcpy(v646, v3, sizeof(v646));
  memcpy(v645, v3, sizeof(v645));
  sub_2529353AC(v646, v644);
  sub_252D02164(v106, v103, sub_252D083F0, v643);
  memcpy(v647, v645, sizeof(v647));
  sub_252935408(v647);
  v115 = v643[1];
  if (v643[1] == 1)
  {
    (*(v620 + 1))(v103, v31);
  }

  else
  {
    v116 = v643[0];
    LODWORD(v595) = LOBYTE(v643[3]);
    v117 = v643[2];
    v118 = HIDWORD(v643[2]);
    v119 = *(v3 + 59);
    v120 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 59) = v119;
    v121 = v26;
    if ((v120 & 1) == 0)
    {
      v119 = sub_2529F8360(0, *(v119 + 2) + 1, 1, v119);
      *(v3 + 59) = v119;
    }

    v123 = *(v119 + 2);
    v122 = *(v119 + 3);
    if (v123 >= v122 >> 1)
    {
      *(v3 + 59) = sub_2529F8360((v122 > 1), v123 + 1, 1, v119);
    }

    v124 = v625;
    (*(v620 + 1))(v601, v625);
    v125 = *(v3 + 59);
    *(v125 + 16) = v123 + 1;
    v126 = v125 + 32 * v123;
    *(v126 + 32) = v116;
    *(v126 + 40) = v115;
    v31 = v124;
    *(v126 + 48) = v117;
    *(v126 + 52) = v118;
    *(v126 + 56) = v595;
    *(v3 + 59) = v125;
    v26 = v121;
    v69 = v604;
  }

LABEL_58:
  memcpy(v647, v3, sizeof(v647));
  memcpy(v646, v3, sizeof(v646));
  v127 = v617;
  (v612)(v617, *MEMORY[0x277D5E528], v69);
  sub_2529353AC(v647, v645);
  sub_252D02F3C(v624, v127, v26);
  v611(v127, v69);
  sub_252935408(v647);
  if (v609(v26, 1, v31) == 1)
  {
    sub_25293847C(v26, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_82;
  }

  (*(v620 + 4))(v600, v26, v31);
  v128 = sub_252E347E4();
  v130 = v129;
  v131 = *(v3 + 13);
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v624;
  if ((v132 & 1) == 0)
  {
    v131 = sub_2529F7A80(0, *(v131 + 2) + 1, 1, v131);
  }

  v135 = *(v131 + 2);
  v134 = *(v131 + 3);
  if (v135 >= v134 >> 1)
  {
    v131 = sub_2529F7A80((v134 > 1), v135 + 1, 1, v131);
  }

  *(v131 + 2) = v135 + 1;
  v136 = &v131[16 * v135];
  *(v136 + 4) = v128;
  *(v136 + 5) = v130;
  *(v3 + 13) = v131;
  v137 = v600;
  v138 = v133;
  if ((v621 & 1) == 0)
  {
    memcpy(v645, v3, sizeof(v645));
    memcpy(v644, v3, sizeof(v644));
    sub_2529353AC(v645, v643);
    sub_252D01540(v133, v137, &v659);
    memcpy(v646, v644, sizeof(v646));
    result = sub_252935408(v646);
    v139 = v663;
    if (v663 != 1)
    {
      v140 = v645[40];
      if (v661)
      {
        if (!v663)
        {

          goto LABEL_74;
        }

        v141 = *(&v659 + 1) - v659;
        if (__OFSUB__(*(&v659 + 1), v659))
        {
LABEL_428:
          __break(1u);
          goto LABEL_429;
        }

        v142 = v662;

        v143 = sub_252AD4324(v142, v139);
        sub_25293847C(&v659, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v659, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v141, v143))
        {
LABEL_433:
          __break(1u);
          goto LABEL_434;
        }

        v144 = (v141 - v143) & ~((v141 - v143) >> 63);
        v85 = __OFADD__(v140, v144);
        v145 = v140 + v144;
        v31 = v625;
        if (v85)
        {
LABEL_437:
          __break(1u);
          goto LABEL_438;
        }

        v138 = v133;
      }

      else
      {
        v146 = v660;
        result = sub_25293847C(&v659, &qword_27F545530, &unk_252E5B5C0);
        v145 = v140 + v146;
        if (__OFADD__(v140, v146))
        {
LABEL_414:
          __break(1u);
          goto LABEL_415;
        }
      }

      *(v3 + 40) = v145;
LABEL_74:
      v137 = v600;
    }
  }

  memcpy(v645, v3, sizeof(v645));
  memcpy(v644, v3, sizeof(v644));
  sub_2529353AC(v645, v643);
  sub_252D02164(v138, v137, sub_252D083F0, v642);
  memcpy(v646, v644, sizeof(v646));
  sub_252935408(v646);
  v147 = v642[1];
  if (v642[1] == 1)
  {
    (*(v620 + 1))(v137, v31);
  }

  else
  {
    v148 = v642[0];
    v149 = v642[3];
    v150 = v642[2];
    v151 = HIDWORD(v642[2]);
    v152 = *(v3 + 55);
    v153 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 55) = v152;
    if ((v153 & 1) == 0)
    {
      v152 = sub_2529F8360(0, *(v152 + 2) + 1, 1, v152);
      *(v3 + 55) = v152;
    }

    v155 = *(v152 + 2);
    v154 = *(v152 + 3);
    if (v155 >= v154 >> 1)
    {
      *(v3 + 55) = sub_2529F8360((v154 > 1), v155 + 1, 1, v152);
    }

    v156 = v625;
    (*(v620 + 1))(v600, v625);
    v157 = *(v3 + 55);
    *(v157 + 16) = v155 + 1;
    v158 = v157 + 32 * v155;
    *(v158 + 32) = v148;
    *(v158 + 40) = v147;
    v31 = v156;
    *(v158 + 48) = v150;
    *(v158 + 52) = v151;
    *(v158 + 56) = v149;
    *(v3 + 55) = v157;
    v69 = v604;
  }

LABEL_82:
  memcpy(v646, v3, sizeof(v646));
  memcpy(v645, v3, sizeof(v645));
  v159 = v617;
  *v617 = 0xD000000000000018;
  *(v159 + 8) = 0x8000000252E932F0;
  v160 = *MEMORY[0x277D5E510];
  (v612)(v159, v160, v69);
  sub_2529353AC(v646, v644);
  v161 = v594;
  sub_252D02F3C(v624, v159, v594);
  v611(v159, v69);
  sub_252935408(v646);
  v162 = v609(v161, 1, v31);
  LODWORD(v601) = v160;
  if (v162 == 1)
  {
    sub_25293847C(v161, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_107;
  }

  (*(v620 + 4))(v599, v161, v31);
  v163 = sub_252E347E4();
  v165 = v164;
  v166 = *(v3 + 14);
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v168 = v624;
  if ((v167 & 1) == 0)
  {
    v166 = sub_2529F7A80(0, *(v166 + 2) + 1, 1, v166);
  }

  v170 = *(v166 + 2);
  v169 = *(v166 + 3);
  if (v170 >= v169 >> 1)
  {
    v166 = sub_2529F7A80((v169 > 1), v170 + 1, 1, v166);
  }

  *(v166 + 2) = v170 + 1;
  v171 = &v166[16 * v170];
  *(v171 + 4) = v163;
  *(v171 + 5) = v165;
  *(v3 + 14) = v166;
  v172 = v599;
  v173 = v168;
  if ((v621 & 1) == 0)
  {
    memcpy(v644, v3, sizeof(v644));
    memcpy(v643, v3, sizeof(v643));
    sub_2529353AC(v644, v642);
    sub_252D01540(v168, v172, &v664);
    memcpy(v645, v643, sizeof(v645));
    result = sub_252935408(v645);
    v174 = v668;
    if (v668 != 1)
    {
      v175 = v644[40];
      if (v666)
      {
        if (!v668)
        {

          goto LABEL_98;
        }

        v176 = *(&v664 + 1) - v664;
        if (__OFSUB__(*(&v664 + 1), v664))
        {
LABEL_429:
          __break(1u);
          goto LABEL_430;
        }

        v177 = v667;

        v178 = sub_252AD4324(v177, v174);
        sub_25293847C(&v664, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v664, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v176, v178))
        {
LABEL_434:
          __break(1u);
          goto LABEL_435;
        }

        v179 = (v176 - v178) & ~((v176 - v178) >> 63);
        v85 = __OFADD__(v175, v179);
        v180 = v175 + v179;
        v31 = v625;
        if (v85)
        {
LABEL_438:
          __break(1u);
          goto LABEL_439;
        }

        v173 = v168;
      }

      else
      {
        v181 = v665;
        result = sub_25293847C(&v664, &qword_27F545530, &unk_252E5B5C0);
        v180 = v175 + v181;
        if (__OFADD__(v175, v181))
        {
LABEL_415:
          __break(1u);
          goto LABEL_416;
        }
      }

      *(v3 + 40) = v180;
LABEL_98:
      v172 = v599;
    }
  }

  memcpy(v644, v3, sizeof(v644));
  memcpy(v643, v3, sizeof(v643));
  sub_2529353AC(v644, v642);
  sub_252D02164(v173, v172, sub_252D083F0, v641);
  memcpy(v645, v643, sizeof(v645));
  sub_252935408(v645);
  v182 = v641[1];
  if (v641[1] == 1)
  {
    (*(v620 + 1))(v172, v31);
  }

  else
  {
    v183 = v641[0];
    v184 = v641[3];
    v185 = v641[2];
    v186 = HIDWORD(v641[2]);
    v187 = *(v3 + 56);
    v188 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 56) = v187;
    if ((v188 & 1) == 0)
    {
      v187 = sub_2529F8360(0, *(v187 + 2) + 1, 1, v187);
      *(v3 + 56) = v187;
    }

    v190 = *(v187 + 2);
    v189 = *(v187 + 3);
    if (v190 >= v189 >> 1)
    {
      *(v3 + 56) = sub_2529F8360((v189 > 1), v190 + 1, 1, v187);
    }

    v191 = v625;
    (*(v620 + 1))(v599, v625);
    v192 = *(v3 + 56);
    *(v192 + 16) = v190 + 1;
    v193 = v192 + 32 * v190;
    *(v193 + 32) = v183;
    *(v193 + 40) = v182;
    v31 = v191;
    *(v193 + 48) = v185;
    *(v193 + 52) = v186;
    *(v193 + 56) = v184;
    *(v3 + 56) = v192;
    v69 = v604;
  }

  v160 = v601;
LABEL_107:
  memcpy(v645, v3, sizeof(v645));
  memcpy(v644, v3, sizeof(v644));
  v194 = v617;
  (v612)(v617, *MEMORY[0x277D5E530], v69);
  sub_2529353AC(v645, v643);
  v195 = v593;
  sub_252D02F3C(v624, v194, v593);
  v611(v194, v69);
  sub_252935408(v645);
  if (v609(v195, 1, v31) == 1)
  {
    sub_25293847C(v195, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_132;
  }

  (*(v620 + 4))(v598, v195, v31);
  v196 = sub_252E347E4();
  v198 = v197;
  v199 = *(v3 + 28);
  v200 = swift_isUniquelyReferenced_nonNull_native();
  v201 = v624;
  if ((v200 & 1) == 0)
  {
    v199 = sub_2529F7A80(0, *(v199 + 2) + 1, 1, v199);
  }

  v203 = *(v199 + 2);
  v202 = *(v199 + 3);
  if (v203 >= v202 >> 1)
  {
    v199 = sub_2529F7A80((v202 > 1), v203 + 1, 1, v199);
  }

  *(v199 + 2) = v203 + 1;
  v204 = &v199[16 * v203];
  *(v204 + 4) = v196;
  *(v204 + 5) = v198;
  *(v3 + 28) = v199;
  v205 = v598;
  v206 = v201;
  if ((v621 & 1) == 0)
  {
    memcpy(v643, v3, sizeof(v643));
    memcpy(v642, v3, sizeof(v642));
    sub_2529353AC(v643, v641);
    sub_252D01540(v201, v205, &v669);
    memcpy(v644, v642, sizeof(v644));
    result = sub_252935408(v644);
    v207 = v673;
    if (v673 != 1)
    {
      v208 = v643[40];
      if (v671)
      {
        if (!v673)
        {

          goto LABEL_123;
        }

        v209 = *(&v669 + 1) - v669;
        if (__OFSUB__(*(&v669 + 1), v669))
        {
LABEL_430:
          __break(1u);
          goto LABEL_431;
        }

        v210 = v672;

        v211 = sub_252AD4324(v210, v207);
        sub_25293847C(&v669, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v669, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v209, v211))
        {
LABEL_435:
          __break(1u);
          goto LABEL_436;
        }

        v212 = (v209 - v211) & ~((v209 - v211) >> 63);
        v85 = __OFADD__(v208, v212);
        v213 = v208 + v212;
        v31 = v625;
        if (v85)
        {
LABEL_439:
          __break(1u);
          goto LABEL_440;
        }

        v206 = v201;
      }

      else
      {
        v214 = v670;
        result = sub_25293847C(&v669, &qword_27F545530, &unk_252E5B5C0);
        v213 = v208 + v214;
        if (__OFADD__(v208, v214))
        {
LABEL_416:
          __break(1u);
          goto LABEL_417;
        }
      }

      *(v3 + 40) = v213;
LABEL_123:
      v205 = v598;
    }
  }

  memcpy(v643, v3, sizeof(v643));
  memcpy(v642, v3, sizeof(v642));
  sub_2529353AC(v643, v641);
  sub_252D02164(v206, v205, sub_252D083F0, v640);
  memcpy(v644, v642, sizeof(v644));
  sub_252935408(v644);
  v215 = v640[1];
  if (v640[1] == 1)
  {
    (*(v620 + 1))(v205, v31);
  }

  else
  {
    v216 = v640[0];
    v217 = v640[3];
    v218 = v640[2];
    v219 = HIDWORD(v640[2]);
    v220 = *(v3 + 57);
    v221 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 57) = v220;
    if ((v221 & 1) == 0)
    {
      v220 = sub_2529F8360(0, *(v220 + 2) + 1, 1, v220);
      *(v3 + 57) = v220;
    }

    v223 = *(v220 + 2);
    v222 = *(v220 + 3);
    if (v223 >= v222 >> 1)
    {
      *(v3 + 57) = sub_2529F8360((v222 > 1), v223 + 1, 1, v220);
    }

    v224 = v625;
    (*(v620 + 1))(v598, v625);
    v225 = *(v3 + 57);
    *(v225 + 16) = v223 + 1;
    v226 = v225 + 32 * v223;
    *(v226 + 32) = v216;
    *(v226 + 40) = v215;
    v31 = v224;
    *(v226 + 48) = v218;
    *(v226 + 52) = v219;
    *(v226 + 56) = v217;
    *(v3 + 57) = v225;
    v69 = v604;
  }

  v160 = v601;
LABEL_132:
  memcpy(v644, v3, sizeof(v644));
  memcpy(v643, v3, sizeof(v643));
  v227 = v617;
  *v617 = 0xD000000000000017;
  *(v227 + 8) = 0x8000000252E93310;
  (v612)(v227, v160, v69);
  sub_2529353AC(v644, v642);
  v228 = v592;
  sub_252D02F3C(v624, v227, v592);
  v611(v227, v69);
  sub_252935408(v644);
  if (v609(v228, 1, v31) == 1)
  {
    sub_25293847C(v228, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_156;
  }

  (*(v620 + 4))(v597, v228, v31);
  v229 = sub_252E347E4();
  v231 = v230;
  v232 = *(v3 + 15);
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v234 = v624;
  if ((v233 & 1) == 0)
  {
    v232 = sub_2529F7A80(0, *(v232 + 2) + 1, 1, v232);
  }

  v236 = *(v232 + 2);
  v235 = *(v232 + 3);
  if (v236 >= v235 >> 1)
  {
    v232 = sub_2529F7A80((v235 > 1), v236 + 1, 1, v232);
  }

  *(v232 + 2) = v236 + 1;
  v237 = &v232[16 * v236];
  *(v237 + 4) = v229;
  *(v237 + 5) = v231;
  *(v3 + 15) = v232;
  v238 = v597;
  v239 = v234;
  if ((v621 & 1) == 0)
  {
    memcpy(v642, v3, sizeof(v642));
    memcpy(v641, v3, sizeof(v641));
    sub_2529353AC(v642, v640);
    sub_252D01540(v234, v238, &v674);
    memcpy(v643, v641, sizeof(v643));
    result = sub_252935408(v643);
    v240 = v678;
    if (v678 != 1)
    {
      v241 = v642[40];
      if (v676)
      {
        if (!v678)
        {

          goto LABEL_148;
        }

        v242 = *(&v674 + 1) - v674;
        if (__OFSUB__(*(&v674 + 1), v674))
        {
LABEL_431:
          __break(1u);
          goto LABEL_432;
        }

        v243 = v677;

        v244 = sub_252AD4324(v243, v240);
        sub_25293847C(&v674, &qword_27F545530, &unk_252E5B5C0);
        result = sub_25293847C(&v674, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v242, v244))
        {
LABEL_436:
          __break(1u);
          goto LABEL_437;
        }

        v245 = (v242 - v244) & ~((v242 - v244) >> 63);
        v85 = __OFADD__(v241, v245);
        v246 = v241 + v245;
        v31 = v625;
        if (v85)
        {
LABEL_440:
          __break(1u);
          goto LABEL_441;
        }

        v239 = v234;
      }

      else
      {
        v247 = v675;
        result = sub_25293847C(&v674, &qword_27F545530, &unk_252E5B5C0);
        v246 = v241 + v247;
        if (__OFADD__(v241, v247))
        {
LABEL_417:
          __break(1u);
LABEL_418:
          __break(1u);
          goto LABEL_419;
        }
      }

      *(v3 + 40) = v246;
LABEL_148:
      v238 = v597;
    }
  }

  memcpy(v642, v3, sizeof(v642));
  memcpy(v641, v3, sizeof(v641));
  sub_2529353AC(v642, v640);
  sub_252D02164(v239, v238, sub_252D083F0, v639);
  memcpy(v643, v641, sizeof(v643));
  sub_252935408(v643);
  v248 = v639[1];
  if (v639[1] == 1)
  {
    (*(v620 + 1))(v238, v31);
  }

  else
  {
    v249 = v639[0];
    v250 = v639[3];
    v251 = v639[2];
    v252 = HIDWORD(v639[2]);
    v253 = *(v3 + 58);
    v254 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 58) = v253;
    if ((v254 & 1) == 0)
    {
      v253 = sub_2529F8360(0, *(v253 + 2) + 1, 1, v253);
      *(v3 + 58) = v253;
    }

    v256 = *(v253 + 2);
    v255 = *(v253 + 3);
    if (v256 >= v255 >> 1)
    {
      *(v3 + 58) = sub_2529F8360((v255 > 1), v256 + 1, 1, v253);
    }

    v257 = v625;
    (*(v620 + 1))(v597, v625);
    v258 = *(v3 + 58);
    *(v258 + 16) = v256 + 1;
    v259 = v258 + 32 * v256;
    *(v259 + 32) = v249;
    *(v259 + 40) = v248;
    v31 = v257;
    *(v259 + 48) = v251;
    *(v259 + 52) = v252;
    *(v259 + 56) = v250;
    *(v3 + 58) = v258;
    v69 = v604;
  }

LABEL_156:
  memcpy(v643, v3, sizeof(v643));
  memcpy(v642, v3, sizeof(v642));
  v260 = v617;
  (v612)(v617, *MEMORY[0x277D5E550], v69);
  sub_2529353AC(v643, v641);
  v261 = v591;
  sub_252D02F3C(v624, v260, v591);
  v611(v260, v69);
  sub_252935408(v643);
  if (v609(v261, 1, v31) == 1)
  {
    sub_25293847C(v261, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_192;
  }

  (*(v620 + 4))(v602, v261, v31);
  v262 = sub_252E347E4();
  v264 = v263;
  v265 = *(v3 + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v266 = v624;
  }

  else
  {
    v266 = v624;
    v265 = sub_2529F7A80(0, *(v265 + 2) + 1, 1, v265);
  }

  v268 = *(v265 + 2);
  v267 = *(v265 + 3);
  if (v268 >= v267 >> 1)
  {
    v265 = sub_2529F7A80((v267 > 1), v268 + 1, 1, v265);
  }

  *(v265 + 2) = v268 + 1;
  v269 = &v265[16 * v268];
  *(v269 + 4) = v262;
  *(v269 + 5) = v264;
  *(v3 + 20) = v265;
  v270 = v602;
  v271 = v266;
  if ((v621 & 1) == 0)
  {
    memcpy(v641, v3, sizeof(v641));
    memcpy(v640, v3, sizeof(v640));
    sub_2529353AC(v641, v639);
    sub_252D01540(v266, v270, &v679);
    memcpy(v642, v640, sizeof(v642));
    sub_252935408(v642);
    v272 = v680;
    v273 = v681;
    v274 = *(&v682 + 1);
    if (*(&v682 + 1))
    {
      if (*(&v682 + 1) == 1)
      {
        v271 = v624;
        v31 = v625;
        goto LABEL_185;
      }

      v601 = v682;
      v599 = *(&v679 + 1);
      v600 = v679;
      v279 = *(v3 + 45);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_410;
      }

      while (1)
      {
        v281 = *(v279 + 16);
        v280 = *(v279 + 24);
        v282 = v601;
        if (v281 >= v280 >> 1)
        {
          result = sub_2529F7A80((v280 > 1), v281 + 1, 1, v279);
          v282 = v601;
          v279 = result;
        }

        *(v279 + 16) = v281 + 1;
        *(v279 + 16 * v281 + 32) = v282;
        *(v3 + 45) = v279;
        v279 = v641[40];
        if (v273)
        {
          break;
        }

LABEL_181:
        sub_25293847C(&v679, &qword_27F545530, &unk_252E5B5C0);
        if (!__OFADD__(v279, v272))
        {
          *(v3 + 40) = v279 + v272;
          goto LABEL_183;
        }

        __break(1u);
LABEL_410:
        result = sub_2529F7A80(0, *(v279 + 16) + 1, 1, v279);
        v279 = result;
      }

      v283 = v599 - v600;
      if (__OFSUB__(v599, v600))
      {
        goto LABEL_418;
      }

      v284 = sub_252AD4324(v601, v274);
      sub_25293847C(&v679, &qword_27F545530, &unk_252E5B5C0);
      result = sub_25293847C(&v679, &qword_27F545530, &unk_252E5B5C0);
      v271 = v624;
      if (__OFSUB__(v283, v284))
      {
LABEL_421:
        __break(1u);
        goto LABEL_422;
      }

      v285 = (v283 - v284) & ~((v283 - v284) >> 63);
      v85 = __OFADD__(v279, v285);
      v286 = v279 + v285;
      v31 = v625;
      if (v85)
      {
LABEL_424:
        __break(1u);
        goto LABEL_425;
      }

      *(v3 + 40) = v286;
    }

    else
    {
      v274 = *(v3 + 45);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v274 = sub_2529F7A80(0, *(v274 + 2) + 1, 1, v274);
      }

      v276 = *(v274 + 2);
      v275 = *(v274 + 3);
      if (v276 >= v275 >> 1)
      {
        v274 = sub_2529F7A80((v275 > 1), v276 + 1, 1, v274);
      }

      *(v274 + 2) = v276 + 1;
      v277 = &v274[16 * v276];
      v278 = v607;
      *(v277 + 4) = v606;
      *(v277 + 5) = v278;
      *(v3 + 45) = v274;
      if ((v273 & 1) == 0)
      {
        v279 = v641[40];
        goto LABEL_181;
      }

LABEL_183:
      v271 = v624;
      v31 = v625;
    }

    v270 = v602;
  }

LABEL_185:
  memcpy(v641, v3, sizeof(v641));
  memcpy(v640, v3, sizeof(v640));
  sub_2529353AC(v641, v639);
  sub_252D02164(v271, v270, sub_252D083F0, v638);
  memcpy(v642, v640, sizeof(v642));
  sub_252935408(v642);
  v287 = *&v638[8];
  if (*&v638[8] == 1)
  {
    (*(v620 + 1))(v270, v31);
  }

  else
  {
    v288 = *v638;
    v289 = v638[24];
    v290 = v638[16];
    v291 = *&v638[20];
    v292 = *(v3 + 50);
    v293 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 50) = v292;
    if ((v293 & 1) == 0)
    {
      v292 = sub_2529F8360(0, *(v292 + 2) + 1, 1, v292);
      *(v3 + 50) = v292;
    }

    v295 = *(v292 + 2);
    v294 = *(v292 + 3);
    if (v295 >= v294 >> 1)
    {
      *(v3 + 50) = sub_2529F8360((v294 > 1), v295 + 1, 1, v292);
    }

    v296 = v625;
    (*(v620 + 1))(v602, v625);
    v297 = *(v3 + 50);
    *(v297 + 16) = v295 + 1;
    v298 = v297 + 32 * v295;
    *(v298 + 32) = v288;
    *(v298 + 40) = v287;
    v31 = v296;
    *(v298 + 48) = v290;
    *(v298 + 52) = v291;
    *(v298 + 56) = v289;
    *(v3 + 50) = v297;
    v69 = v604;
  }

LABEL_192:
  memcpy(v642, v3, sizeof(v642));
  memcpy(v641, v3, sizeof(v641));
  v299 = v617;
  (v612)(v617, *MEMORY[0x277D5E558], v69);
  sub_2529353AC(v642, v640);
  v300 = v590;
  sub_252D02F3C(v624, v299, v590);
  v611(v299, v69);
  sub_252935408(v642);
  if (v609(v300, 1, v31) == 1)
  {
    sub_25293847C(v300, &qword_27F541D70, &unk_252E5B5A0);
    goto LABEL_218;
  }

  (*(v620 + 4))(v603, v300, v31);
  v301 = sub_252E347E4();
  v303 = v302;
  v304 = *(v3 + 21);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v304 = sub_2529F7A80(0, *(v304 + 2) + 1, 1, v304);
  }

  v306 = *(v304 + 2);
  v305 = *(v304 + 3);
  if (v306 >= v305 >> 1)
  {
    v304 = sub_2529F7A80((v305 > 1), v306 + 1, 1, v304);
  }

  *(v304 + 2) = v306 + 1;
  v307 = &v304[16 * v306];
  *(v307 + 4) = v301;
  *(v307 + 5) = v303;
  *(v3 + 21) = v304;
  v308 = v603;
  if ((v621 & 1) == 0)
  {
    memcpy(v640, v3, sizeof(v640));
    memcpy(v639, v3, sizeof(v639));
    sub_2529353AC(v640, v638);
    sub_252D01540(v624, v308, &v683);
    memcpy(v641, v639, sizeof(v641));
    sub_252935408(v641);
    v309 = v685;
    v310 = v684;
    v311 = v687;
    if (v687)
    {
      if (v687 != 1)
      {
        *&v601 = *(&v683 + 1);
        v602 = v683;
        v312 = v686;

        sub_2529F77E0();
        v313 = *(*(v3 + 44) + 16);
        result = sub_2529F7934(v313);
        v314 = *(v3 + 44);
        *(v314 + 16) = v313 + 1;
        v315 = v314 + 16 * v313;
        *(v315 + 32) = v312;
        *(v315 + 40) = v311;
        *(v3 + 44) = v314;
        v316 = v640[40];
        if (v309)
        {
          v317 = v312;
          v318 = v601 - v602;
          if (__OFSUB__(v601, v602))
          {
LABEL_419:
            __break(1u);
LABEL_420:
            __break(1u);
            goto LABEL_421;
          }

          v319 = sub_252AD4324(v317, v311);
          sub_25293847C(&v683, &qword_27F545530, &unk_252E5B5C0);
          result = sub_25293847C(&v683, &qword_27F545530, &unk_252E5B5C0);
          v31 = v625;
          if (__OFSUB__(v318, v319))
          {
LABEL_422:
            __break(1u);
LABEL_423:
            __break(1u);
            goto LABEL_424;
          }

          v320 = (v318 - v319) & ~((v318 - v319) >> 63);
          v85 = __OFADD__(v316, v320);
          v321 = v316 + v320;
          v308 = v603;
          if (v85)
          {
LABEL_425:
            __break(1u);
LABEL_426:
            __break(1u);
            goto LABEL_427;
          }

          *(v3 + 40) = v321;
LABEL_212:
          v69 = v604;
          goto LABEL_213;
        }

LABEL_210:
        result = sub_25293847C(&v683, &qword_27F545530, &unk_252E5B5C0);
        v308 = v603;
        if (__OFADD__(v316, v310))
        {
          __break(1u);
LABEL_412:
          __break(1u);
          goto LABEL_413;
        }

        *(v3 + 40) = v316 + v310;
        v31 = v625;
        goto LABEL_212;
      }
    }

    else
    {
      v322 = v607;

      sub_2529F77E0();
      v323 = *(*(v3 + 44) + 16);
      sub_2529F7934(v323);
      v324 = *(v3 + 44);
      *(v324 + 16) = v323 + 1;
      v325 = v324 + 16 * v323;
      *(v325 + 32) = v606;
      *(v325 + 40) = v322;
      *(v3 + 44) = v324;
      if ((v309 & 1) == 0)
      {
        v316 = v640[40];
        goto LABEL_210;
      }
    }

    v31 = v625;
    v308 = v603;
  }

LABEL_213:
  memcpy(v640, v3, sizeof(v640));
  memcpy(v639, v3, sizeof(v639));
  sub_2529353AC(v640, v638);
  sub_252D02164(v624, v308, sub_252D083F0, v637);
  memcpy(v641, v639, sizeof(v641));
  sub_252935408(v641);
  v326 = *&v637[8];
  if (*&v637[8] == 1)
  {
    (*(v620 + 1))(v308, v31);
  }

  else
  {
    v327 = *v637;
    v328 = v637[24];
    v329 = v637[16];
    v330 = *&v637[20];
    v331 = *(v3 + 52);
    v332 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 52) = v331;
    if ((v332 & 1) == 0)
    {
      v331 = sub_2529F8360(0, *(v331 + 2) + 1, 1, v331);
      *(v3 + 52) = v331;
    }

    v333 = *(v331 + 2);
    sub_2529F79B0(v333);
    v334 = v625;
    (*(v620 + 1))(v603, v625);
    v335 = *(v3 + 52);
    *(v335 + 16) = v333 + 1;
    v336 = v335 + 32 * v333;
    *(v336 + 32) = v327;
    *(v336 + 40) = v326;
    v31 = v334;
    *(v336 + 48) = v329;
    *(v336 + 52) = v330;
    *(v336 + 56) = v328;
    *(v3 + 52) = v335;
    v69 = v604;
  }

LABEL_218:
  memcpy(v641, v3, sizeof(v641));
  memcpy(v640, v3, sizeof(v640));
  v337 = v617;
  (v612)(v617, *MEMORY[0x277D5E548], v69);
  sub_2529353AC(v641, v639);
  v338 = v589;
  sub_252D02F3C(v624, v337, v589);
  v611(v337, v69);
  sub_252935408(v641);
  if (v609(v338, 1, v31) != 1)
  {
    (*(v620 + 4))(v596, v338, v31);
    v339 = sub_252E347E4();
    v341 = v340;
    v342 = *(v3 + 19);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v343 = v624;
    }

    else
    {
      v343 = v624;
      v342 = sub_2529F7A80(0, *(v342 + 2) + 1, 1, v342);
    }

    v345 = *(v342 + 2);
    v344 = *(v342 + 3);
    if (v345 >= v344 >> 1)
    {
      v342 = sub_2529F7A80((v344 > 1), v345 + 1, 1, v342);
    }

    *(v342 + 2) = v345 + 1;
    v346 = &v342[16 * v345];
    *(v346 + 4) = v339;
    *(v346 + 5) = v341;
    *(v3 + 19) = v342;
    v347 = v596;
    if (v621)
    {
      goto LABEL_238;
    }

    memcpy(v639, v3, sizeof(v639));
    memcpy(v638, v3, sizeof(v638));
    sub_2529353AC(v639, v637);
    sub_252D01540(v343, v347, &v688);
    memcpy(v640, v638, sizeof(v640));
    sub_252935408(v640);
    v348 = v690;
    v349 = v689;
    v350 = v692;
    if (v692)
    {
      if (v692 == 1)
      {
        v31 = v625;
        goto LABEL_238;
      }

      v615 = *(&v688 + 1);
      v617 = v688;
      v355 = v691;

      sub_2529F77E0();
      v356 = *(*(v3 + 43) + 16);
      result = sub_2529F7934(v356);
      v357 = *(v3 + 43);
      *(v357 + 16) = v356 + 1;
      v358 = v357 + 16 * v356;
      *(v358 + 32) = v355;
      *(v358 + 40) = v350;
      *(v3 + 43) = v357;
      v359 = v639[40];
      if (v348)
      {
        v360 = v615 - v617;
        if (!__OFSUB__(v615, v617))
        {

          v361 = sub_252AD4324(v355, v350);
          sub_25293847C(&v688, &qword_27F545530, &unk_252E5B5C0);
          result = sub_25293847C(&v688, &qword_27F545530, &unk_252E5B5C0);
          if (!__OFSUB__(v360, v361))
          {
            v362 = (v360 - v361) & ~((v360 - v361) >> 63);
            v85 = __OFADD__(v359, v362);
            v363 = v359 + v362;
            v31 = v625;
            v347 = v596;
            if (!v85)
            {
              *(v3 + 40) = v363;
              v343 = v624;
              goto LABEL_238;
            }

            goto LABEL_426;
          }

          goto LABEL_423;
        }

        goto LABEL_420;
      }
    }

    else
    {
      v351 = v607;

      sub_2529F77E0();
      v352 = *(*(v3 + 43) + 16);
      sub_2529F7934(v352);
      v353 = *(v3 + 43);
      *(v353 + 16) = v352 + 1;
      v354 = v353 + 16 * v352;
      *(v354 + 32) = v606;
      *(v354 + 40) = v351;
      *(v3 + 43) = v353;
      if (v348)
      {

        v31 = v625;
        v347 = v596;
        goto LABEL_238;
      }

      v359 = v639[40];
    }

    result = sub_25293847C(&v688, &qword_27F545530, &unk_252E5B5C0);
    v347 = v596;
    if (!__OFADD__(v359, v349))
    {
      *(v3 + 40) = v359 + v349;
      v343 = v624;
      v31 = v625;
LABEL_238:
      memcpy(v639, v3, sizeof(v639));
      memcpy(v638, v3, sizeof(v638));
      sub_2529353AC(v639, v637);
      sub_252D02164(v343, v347, sub_252D083F0, v636);
      memcpy(v640, v638, sizeof(v640));
      sub_252935408(v640);
      v364 = v636[1];
      if (v636[1] == 1)
      {
        (*(v620 + 1))(v347, v31);
      }

      else
      {
        LODWORD(v617) = LOBYTE(v636[3]);
        v365 = v636[2];
        v366 = v636[0];
        v367 = HIDWORD(v636[2]);
        sub_2529F7864();
        v368 = v347;
        v369 = *(*(v3 + 51) + 16);
        sub_2529F79B0(v369);
        (*(v620 + 1))(v368, v625);
        v370 = *(v3 + 51);
        *(v370 + 16) = v369 + 1;
        v371 = v370 + 32 * v369;
        *(v371 + 32) = v366;
        *(v371 + 40) = v364;
        v31 = v625;
        *(v371 + 48) = v365;
        *(v371 + 52) = v367;
        *(v371 + 56) = v617;
        *(v3 + 51) = v370;
      }

      goto LABEL_241;
    }

    goto LABEL_412;
  }

  sub_25293847C(v338, &qword_27F541D70, &unk_252E5B5A0);
LABEL_241:
  v373 = sub_252D01B8C(v624);
  v374 = v372;
  if (*(v373 + 16))
  {
    v375 = *(v3 + 47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_406;
    }

    goto LABEL_243;
  }

  if (*(v372 + 16))
  {
    v375 = *(v3 + 47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v375 = sub_2529F846C(0, *(v375 + 16) + 1, 1, v375);
    }

    v376 = v620;
    v382 = *(v375 + 16);
    v381 = *(v375 + 24);
    if (v382 >= v381 >> 1)
    {
      v375 = sub_2529F846C((v381 > 1), v382 + 1, 1, v375);
    }

    *(v375 + 16) = v382 + 1;
    v379 = v375 + v382;
    for (i = 7; ; i = 6)
    {
      *(v379 + 32) = i;
      *(v3 + 47) = v375;
      v640[0] = v374;
      sub_25297BA5C(v373);
      v383 = v640[0];
      v384 = *(v640[0] + 16);
      v385 = MEMORY[0x277D84F90];
      v605 = v640[0];
      if (v384)
      {
        v640[0] = MEMORY[0x277D84F90];
        sub_2529507DC(v384);
        v387 = *(v376 + 2);
        v386 = v376 + 16;
        v615 = v387;
        v388 = v383 + ((v386[64] + 32) & ~v386[64]);
        v612 = *(v386 + 7);
        v617 = v386;
        v389 = v386 - 8;
        do
        {
          v390 = v619;
          (v615)(v619, v388, v31);
          v391 = sub_252E347E4();
          v393 = v392;
          (*v389)(v390, v31);
          v385 = v640[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA3A0(0, *(v385 + 16) + 1, 1);
            v385 = v640[0];
          }

          v395 = *(v385 + 16);
          v394 = *(v385 + 24);
          if (v395 >= v394 >> 1)
          {
            sub_2529AA3A0((v394 > 1), v395 + 1, 1);
            v385 = v640[0];
          }

          *(v385 + 16) = v395 + 1;
          v396 = v385 + 16 * v395;
          *(v396 + 32) = v391;
          *(v396 + 40) = v393;
          v388 += v612;
          --v384;
          v31 = v625;
        }

        while (v384);
        v383 = v605;
      }

      v397 = sub_252DF88E4(v385);

      sub_25297A744(v397);
      v398 = *(v383 + 16);
      v399 = v618;
      v400 = v608;
      if (!v398)
      {
LABEL_281:

        goto LABEL_282;
      }

      v617 = *(v620 + 2);
      v373 = v383 + ((v620[80] + 32) & ~v620[80]);
      v612 = *(v620 + 9);
      v619 = v620 + 16;
      v615 = v620 + 8;
      v401 = (v398 - 1);
      (v617)(v608, v373, v31);
      while (1)
      {
        if (v621)
        {
          goto LABEL_275;
        }

        memcpy(v639, v3, sizeof(v639));
        memcpy(v638, v3, sizeof(v638));
        sub_2529353AC(v639, v637);
        sub_252D01540(v624, v400, &v693);
        v374 = v697;
        memcpy(v640, v638, sizeof(v640));
        sub_252935408(v640);
        v375 = v697;
        if (v697 == 1)
        {
          goto LABEL_275;
        }

        v402 = v639[40];
        if ((v695 & 1) == 0)
        {
          break;
        }

        if (v697)
        {
          v403 = *(&v693 + 1) - v693;
          if (__OFSUB__(*(&v693 + 1), v693))
          {
            goto LABEL_397;
          }

          v404 = v31;
          v31 = v373;
          v405 = v696;

          v374 = sub_252AD4324(v405, v375);
          v375 = &qword_27F545530;
          v373 = &unk_252E5B5C0;
          sub_25293847C(&v693, &qword_27F545530, &unk_252E5B5C0);
          sub_25293847C(&v693, &qword_27F545530, &unk_252E5B5C0);
          if (__OFSUB__(v403, v374))
          {
            goto LABEL_398;
          }

          v406 = (v403 - v374) & ~((v403 - v374) >> 63);
          v85 = __OFADD__(v402, v406);
          v407 = v402 + v406;
          if (v85)
          {
            goto LABEL_399;
          }

          *(v3 + 40) = v407;
          v400 = v608;
          v373 = v31;
          v31 = v404;
          v399 = v618;
        }

        else
        {
        }

LABEL_275:
        memcpy(v639, v3, sizeof(v639));
        memcpy(v638, v3, sizeof(v638));
        sub_2529353AC(v639, v637);
        sub_252D02164(v624, v400, sub_252D083F0, v636);
        memcpy(v640, v638, sizeof(v640));
        sub_252935408(v640);
        v408 = v636[1];
        if (v636[1] == 1)
        {
          (*v615)(v400, v31);
          if (!v401)
          {
            goto LABEL_281;
          }
        }

        else
        {
          v611 = v401;
          v409 = v636[0];
          LODWORD(v610) = LOBYTE(v636[3]);
          v410 = v636[2];
          LODWORD(v609) = HIDWORD(v636[2]);
          v411 = *(v3 + 60);
          v412 = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + 60) = v411;
          v413 = v373;
          if ((v412 & 1) == 0)
          {
            v411 = sub_2529F8360(0, *(v411 + 2) + 1, 1, v411);
            *(v3 + 60) = v411;
          }

          v415 = *(v411 + 2);
          v414 = *(v411 + 3);
          if (v415 >= v414 >> 1)
          {
            *(v3 + 60) = sub_2529F8360((v414 > 1), v415 + 1, 1, v411);
          }

          v400 = v608;
          v416 = v625;
          (*v615)(v608, v625);
          v417 = *(v3 + 60);
          *(v417 + 16) = v415 + 1;
          v418 = v417 + 32 * v415;
          *(v418 + 32) = v409;
          *(v418 + 40) = v408;
          *(v418 + 48) = v410;
          *(v418 + 52) = v609;
          *(v418 + 56) = v610;
          v31 = v416;
          *(v3 + 60) = v417;
          v399 = v618;
          v373 = v413;
          v401 = v611;
          if (!v611)
          {
            goto LABEL_281;
          }
        }

        v401 = (v401 - 1);
        v373 += v612;
        (v617)(v400, v373, v31);
      }

      v374 = v694;
      sub_25293847C(&v693, &qword_27F545530, &unk_252E5B5C0);
      if (!__OFADD__(v402, v374))
      {
        *(v3 + 40) = v402 + v374;
        goto LABEL_275;
      }

      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
LABEL_398:
      __break(1u);
LABEL_399:
      __break(1u);
LABEL_400:
      __break(1u);
LABEL_401:
      __break(1u);
LABEL_402:
      __break(1u);
LABEL_403:
      __break(1u);
LABEL_404:
      __break(1u);
LABEL_405:
      __break(1u);
LABEL_406:
      v375 = sub_2529F846C(0, *(v375 + 16) + 1, 1, v375);
LABEL_243:
      v376 = v620;
      v378 = *(v375 + 16);
      v377 = *(v375 + 24);
      if (v378 >= v377 >> 1)
      {
        v375 = sub_2529F846C((v377 > 1), v378 + 1, 1, v375);
      }

      *(v375 + 16) = v378 + 1;
      v379 = v375 + v378;
    }
  }

  v399 = v618;
LABEL_282:
  v619 = v3 + 264;
  memcpy(v640, v3, sizeof(v640));
  v419 = *(v624 + 16);
  v604 = v419;
  if (v419)
  {
    v420 = v620;
    v612 = (v420[80] + 32) & ~v420[80];
    v421 = v624 + v612;
    v615 = 0x8000000252E7B360;
    sub_2529353AC(v640, v639);
    v422 = v420 + 16;
    v423 = *(v420 + 2);
    v424 = *(v420 + 9);
    v425 = v422 - 8;
    v617 = v422;
    v610 = (v422 + 16);
    v426 = MEMORY[0x277D84F90];
    v611 = v423;
    (v423)(v623, v421, v625);
    while (1)
    {
      v427 = sub_252E347F4();
      if (!v428)
      {
        break;
      }

      if (v427 == 0xD00000000000001BLL && v428 == v615)
      {
      }

      else
      {
        v429 = sub_252E37DB4();

        if ((v429 & 1) == 0)
        {
          break;
        }
      }

      (v423)(v616, v623, v625);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v426 = sub_2529F85CC(0, *(v426 + 2) + 1, 1, v426);
      }

      v431 = *(v426 + 2);
      v430 = *(v426 + 3);
      if (v431 >= v430 >> 1)
      {
        v426 = sub_2529F85CC((v430 > 1), v431 + 1, 1, v426);
      }

      v432 = v625;
      (*v425)(v623, v625);
      *(v426 + 2) = v431 + 1;
      (*v610)(&v426[v612 + v431 * v424], v616, v432);
      v423 = v611;
LABEL_285:
      v421 += v424;
      if (!--v419)
      {
        sub_252935408(v640);
        v399 = v618;
        v419 = v604;
        goto LABEL_299;
      }

      (v423)(v623, v421, v625);
    }

    (*v425)(v623, v625);
    goto LABEL_285;
  }

  v426 = MEMORY[0x277D84F90];
LABEL_299:
  v433 = *(v426 + 2);
  if (v433)
  {
    v608 = &v638[289];
    v434 = *(v620 + 2);
    v612 = &v638[264];
    v435 = v620[80];
    v603 = v426;
    v436 = &v426[(v435 + 32) & ~v435];
    v616 = *(v620 + 9);
    v617 = v434;
    v623 = (v620 + 16);
    v615 = v620 + 8;
    v438 = v624;
    v437 = v625;
    v439 = v614;
    (v434)(v614, v436, v625);
    while (1)
    {
      v440._countAndFlagsBits = sub_252E347E4();
      AccessoryTypeSemantic.init(rawValue:)(v440);
      v441 = v639[0];
      if (LOBYTE(v639[0]) == 52)
      {
        (*v615)(v439, v437);
        goto LABEL_302;
      }

      v442 = *(v3 + 18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v442 = sub_2529F80DC(0, *(v442 + 2) + 1, 1, v442);
      }

      v444 = *(v442 + 2);
      v443 = *(v442 + 3);
      if (v444 >= v443 >> 1)
      {
        v442 = sub_2529F80DC((v443 > 1), v444 + 1, 1, v442);
      }

      *(v442 + 2) = v444 + 1;
      v442[v444 + 32] = v441;
      *(v3 + 18) = v442;
      v445 = v614;
      if ((v621 & 1) == 0)
      {
        break;
      }

LABEL_324:
      v469 = *v3;
      v470 = *(v3 + 61);
      *&v638[480] = *(v3 + 60);
      v471 = *(v3 + 4);
      *v638 = v469;
      LOBYTE(v469) = v3[10];
      *&v638[8] = v471;
      v472 = *(v3 + 2);
      v638[10] = v469;
      LOWORD(v469) = *(v3 + 12);
      *&v638[16] = v472;
      LOBYTE(v472) = v3[26];
      *&v638[24] = v469;
      v473 = *(v3 + 4);
      v638[26] = v472;
      LOBYTE(v472) = v3[40];
      *&v638[32] = v473;
      LOBYTE(v473) = v3[64];
      v638[40] = v472;
      v474 = *(v3 + 25);
      v638[64] = v473;
      LOWORD(v473) = *(v3 + 104);
      *&v638[200] = v474;
      LOBYTE(v474) = v3[232];
      *&v638[208] = v473;
      v475 = *(v3 + 32);
      v638[232] = v474;
      v476 = *(v3 + 35);
      *&v638[256] = v475;
      LOBYTE(v475) = v3[288];
      *&v638[280] = v476;
      v477 = v619;
      LOBYTE(v476) = v619[25];
      v638[288] = v475;
      LOBYTE(v475) = v3[312];
      v478 = v612;
      *(v612 + 25) = v476;
      v479 = *(v3 + 40);
      v638[312] = v475;
      v480 = *(v3 + 47);
      *&v638[320] = v479;
      *&v638[376] = v480;
      v638[384] = v3[384];
      v638[385] = v477[121];
      v638[386] = v477[122];
      v638[387] = v477[123];
      v638[388] = v477[124];
      v638[389] = v477[125];
      *&v638[392] = *(v3 + 49);
      *&v638[488] = v470;
      *&v638[496] = *(v3 + 62);
      v481 = *(v3 + 28);
      *&v638[432] = *(v3 + 27);
      *&v638[448] = v481;
      *&v638[464] = *(v3 + 29);
      v482 = *(v3 + 26);
      *&v638[400] = *(v3 + 25);
      *&v638[416] = v482;
      *&v638[48] = *(v3 + 3);
      *&v638[72] = *(v3 + 72);
      *&v638[88] = *(v3 + 88);
      *&v638[104] = *(v3 + 104);
      *&v638[120] = *(v3 + 120);
      *&v638[136] = *(v3 + 136);
      *&v638[152] = *(v3 + 152);
      *&v638[168] = *(v3 + 168);
      *&v638[184] = *(v3 + 184);
      *&v638[216] = *(v3 + 216);
      *&v638[240] = *(v3 + 15);
      *v478 = *v477;
      v478[2] = *(v477 + 2);
      v483 = *(v477 + 5);
      v478[4] = *(v477 + 4);
      v478[5] = v483;
      v478[6] = *(v477 + 6);
      memcpy(v637, v638, sizeof(v637));
      sub_2529353AC(v638, v636);
      sub_252D02164(v438, v445, sub_252D083F0, &v631);
      memcpy(v639, v637, sizeof(v639));
      sub_252935408(v639);
      v484 = v632;
      if (v632 == 1)
      {
        v437 = v625;
        (*v615)(v445, v625);
        v439 = v445;
      }

      else
      {
        v485 = v631;
        v486 = v635;
        v487 = v633;
        v488 = v634;
        v489 = *(v3 + 54);
        v490 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 54) = v489;
        v611 = v485;
        LODWORD(v610) = v487;
        LODWORD(v609) = v488;
        if ((v490 & 1) == 0)
        {
          v489 = sub_2529F8360(0, *(v489 + 2) + 1, 1, v489);
          *(v3 + 54) = v489;
        }

        v492 = *(v489 + 2);
        v491 = *(v489 + 3);
        if (v492 >= v491 >> 1)
        {
          *(v3 + 54) = sub_2529F8360((v491 > 1), v492 + 1, 1, v489);
        }

        v493 = v614;
        v494 = v625;
        (*v615)(v614, v625);
        v495 = *(v3 + 54);
        *(v495 + 16) = v492 + 1;
        v496 = v495 + 32 * v492;
        *(v496 + 32) = v611;
        *(v496 + 40) = v484;
        v439 = v493;
        v437 = v494;
        *(v496 + 48) = v610;
        *(v496 + 52) = v609;
        *(v496 + 56) = v486;
        *(v3 + 54) = v495;
        v438 = v624;
        v399 = v618;
      }

LABEL_302:
      v436 = &v616[v436];
      if (!--v433)
      {

        v419 = v604;
        goto LABEL_333;
      }

      (v617)(v439, v436, v437);
    }

    v446 = *(v3 + 61);
    *&v638[480] = *(v3 + 60);
    *v638 = *v3;
    *&v638[8] = *(v3 + 4);
    v638[10] = v3[10];
    *&v638[16] = *(v3 + 2);
    *&v638[24] = *(v3 + 12);
    v638[26] = v3[26];
    *&v638[32] = *(v3 + 4);
    v638[40] = v3[40];
    v638[64] = v3[64];
    *&v638[136] = *(v3 + 17);
    v447 = *(v3 + 25);
    *&v638[144] = v442;
    v448 = *(v3 + 104);
    *&v638[200] = v447;
    LOBYTE(v447) = v3[232];
    *&v638[208] = v448;
    v638[232] = v447;
    v449 = *(v3 + 33);
    *&v638[256] = *(v3 + 32);
    LOBYTE(v447) = v3[288];
    *&v638[264] = v449;
    v450 = v619;
    LOBYTE(v449) = v619[25];
    v638[288] = v447;
    v451 = v608;
    *v608 = v449;
    v452 = *(v3 + 38);
    *&v638[296] = *(v3 + 37);
    *&v638[304] = v452;
    v638[312] = v3[312];
    *&v638[344] = *(v3 + 43);
    v638[384] = v3[384];
    v638[385] = v450[121];
    v638[386] = v450[122];
    v638[387] = v450[123];
    v638[388] = v450[124];
    v638[389] = v450[125];
    *&v638[392] = *(v3 + 49);
    *&v638[488] = v446;
    *&v638[496] = *(v3 + 62);
    v611 = *(v3 + 40);
    *&v638[320] = v611;
    v453 = *(v3 + 28);
    *&v638[432] = *(v3 + 27);
    *&v638[448] = v453;
    *&v638[464] = *(v3 + 29);
    v454 = *(v3 + 26);
    *&v638[400] = *(v3 + 25);
    *&v638[416] = v454;
    *&v638[48] = *(v3 + 3);
    *&v638[72] = *(v3 + 72);
    *&v638[88] = *(v3 + 88);
    *&v638[104] = *(v3 + 104);
    *&v638[120] = *(v3 + 120);
    *&v638[152] = *(v3 + 152);
    *&v638[168] = *(v3 + 168);
    *&v638[184] = *(v3 + 184);
    *&v638[216] = *(v3 + 216);
    *&v638[240] = *(v3 + 15);
    *&v638[272] = *(v3 + 17);
    *(v451 + 39) = *(v450 + 4);
    v455 = *(v3 + 23);
    *&v638[352] = *(v3 + 22);
    *&v638[368] = v455;
    memcpy(v637, v638, sizeof(v637));
    sub_2529353AC(v638, v636);
    v456 = v438;
    v457 = v445;
    sub_252D01540(v438, v445, &v698);
    v458 = v702;
    memcpy(v639, v637, sizeof(v639));
    sub_252935408(v639);
    v375 = v700;
    v459 = v699;
    v373 = v702;
    if (v702)
    {
      if (v702 == 1)
      {
        v399 = v618;
        v445 = v457;
        v438 = v456;
        goto LABEL_324;
      }

      v609 = *(&v698 + 1);
      v610 = v698;
      v31 = v701;
      v605 = v458;

      sub_2529F77E0();
      v463 = *(*(v3 + 42) + 16);
      v374 = (v3 + 336);
      sub_2529F7934(v463);
      v464 = *(v3 + 42);
      *(v464 + 16) = v463 + 1;
      v465 = v464 + 16 * v463;
      *(v465 + 32) = v31;
      *(v465 + 40) = v373;
      *(v3 + 42) = v464;
      if (v375)
      {
        v466 = v609 - v610;
        if (__OFSUB__(v609, v610))
        {
          goto LABEL_400;
        }

        v374 = sub_252AD4324(v31, v373);
        v375 = &qword_27F545530;
        v31 = &unk_252E5B5C0;
        sub_25293847C(&v698, &qword_27F545530, &unk_252E5B5C0);
        sub_25293847C(&v698, &qword_27F545530, &unk_252E5B5C0);
        if (__OFSUB__(v466, v374))
        {
          goto LABEL_401;
        }

        v467 = (v466 - v374) & ~((v466 - v374) >> 63);
        v85 = __OFADD__(v611, v467);
        v468 = v611 + v467;
        if (v85)
        {
          goto LABEL_402;
        }

        goto LABEL_322;
      }
    }

    else
    {
      v31 = v458;
      v373 = v607;

      sub_2529F77E0();
      v460 = *(*(v3 + 42) + 16);
      v374 = (v3 + 336);
      sub_2529F7934(v460);
      v461 = *(v3 + 42);
      *(v461 + 16) = v460 + 1;
      v462 = v461 + 16 * v460;
      *(v462 + 32) = v606;
      *(v462 + 40) = v373;
      *(v3 + 42) = v461;
      if (v375)
      {

LABEL_323:
        v438 = v624;
        v399 = v618;
        v445 = v614;
        goto LABEL_324;
      }
    }

    sub_25293847C(&v698, &qword_27F545530, &unk_252E5B5C0);
    v468 = v611 + v459;
    if (__OFADD__(v611, v459))
    {
      goto LABEL_395;
    }

LABEL_322:
    *(v3 + 40) = v468;
    goto LABEL_323;
  }

  v438 = v624;
LABEL_333:
  memcpy(v639, v3, sizeof(v639));
  if (v419)
  {
    v614 = v3;
    v497 = v438;
    v498 = v620;
    v617 = ((v620[80] + 32) & ~v620[80]);
    v499 = &v617[v497];
    v623 = 0x8000000252E7B340;
    sub_2529353AC(v639, v638);
    v501 = *(v498 + 2);
    v498 += 16;
    v500 = v501;
    v502 = *(v498 + 7);
    v503 = v498 - 8;
    v615 = v498 + 16;
    v504 = MEMORY[0x277D84F90];
    v616 = v498;
    v501(v622, v499, v625);
    while (1)
    {
      v505 = sub_252E347F4();
      if (!v506)
      {
        break;
      }

      if (v505 == 0xD000000000000015 && v506 == v623)
      {
      }

      else
      {
        v507 = sub_252E37DB4();

        if ((v507 & 1) == 0)
        {
          break;
        }
      }

      v500(v613, v622, v625);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v504 = sub_2529F85CC(0, v504[2] + 1, 1, v504);
      }

      v508 = v500;
      v510 = v504[2];
      v509 = v504[3];
      if (v510 >= v509 >> 1)
      {
        v511 = sub_2529F85CC((v509 > 1), v510 + 1, 1, v504);
      }

      else
      {
        v511 = v504;
      }

      v512 = v625;
      (*v503)(v622, v625);
      v511[2] = v510 + 1;
      v513 = v512;
      v504 = v511;
      (*v615)(&v617[v511 + v510 * v502], v613, v513);
      v500 = v508;
LABEL_336:
      v499 += v502;
      if (!--v419)
      {
        sub_252935408(v639);
        v438 = v624;
        v399 = v618;
        v3 = v614;
        goto LABEL_351;
      }

      v500(v622, v499, v625);
    }

    (*v503)(v622, v625);
    goto LABEL_336;
  }

  v504 = MEMORY[0x277D84F90];
LABEL_351:
  v514 = v504[2];
  v515 = v504;
  v516 = v625;
  if (v514)
  {
    v517 = *(v620 + 2);
    v615 = &v637[264];
    v616 = v517;
    v518 = (v620[80] + 32) & ~v620[80];
    v610 = v515;
    v375 = v515 + v518;
    v519 = *(v620 + 9);
    v620 += 16;
    v622 = v620 - 8;
    v623 = v519;
    (v517)(v399, v515 + v518, v625);
    while (1)
    {
      v520._countAndFlagsBits = sub_252E347E4();
      AccessoryTypeSemantic.init(rawValue:)(v520);
      v521 = v638[0];
      if (v638[0] == 52)
      {
        (*v622)(v399, v516);
        goto LABEL_354;
      }

      v522 = *(v3 + 17);
      v523 = swift_isUniquelyReferenced_nonNull_native();
      v617 = v514;
      if ((v523 & 1) == 0)
      {
        v522 = sub_2529F80DC(0, *(v522 + 2) + 1, 1, v522);
      }

      v525 = *(v522 + 2);
      v524 = *(v522 + 3);
      if (v525 >= v524 >> 1)
      {
        v522 = sub_2529F80DC((v524 > 1), v525 + 1, 1, v522);
      }

      *(v522 + 2) = v525 + 1;
      v522[v525 + 32] = v521;
      *(v3 + 17) = v522;
      if ((v621 & 1) == 0)
      {
        break;
      }

LABEL_375:
      v553 = *v3;
      v554 = *(v3 + 61);
      *&v637[480] = *(v3 + 60);
      v555 = *(v3 + 4);
      *v637 = v553;
      LOBYTE(v553) = v3[10];
      *&v637[8] = v555;
      v556 = *(v3 + 2);
      v637[10] = v553;
      LOWORD(v553) = *(v3 + 12);
      *&v637[16] = v556;
      LOBYTE(v556) = v3[26];
      *&v637[24] = v553;
      v557 = *(v3 + 4);
      v637[26] = v556;
      LOBYTE(v556) = v3[40];
      *&v637[32] = v557;
      LOBYTE(v557) = v3[64];
      v637[40] = v556;
      v558 = *(v3 + 25);
      v637[64] = v557;
      LOWORD(v557) = *(v3 + 104);
      *&v637[200] = v558;
      LOBYTE(v558) = v3[232];
      *&v637[208] = v557;
      v559 = *(v3 + 32);
      v637[232] = v558;
      v560 = *(v3 + 35);
      *&v637[256] = v559;
      LOBYTE(v559) = v3[288];
      *&v637[280] = v560;
      v561 = v619;
      LOBYTE(v560) = v619[25];
      v637[288] = v559;
      LOBYTE(v559) = v3[312];
      v562 = v615;
      v615[25] = v560;
      v563 = *(v3 + 40);
      v637[312] = v559;
      v564 = *(v3 + 47);
      *&v637[320] = v563;
      *&v637[376] = v564;
      v637[384] = v3[384];
      v637[385] = v561[121];
      v637[386] = v561[122];
      v637[387] = v561[123];
      v637[388] = v561[124];
      v637[389] = v561[125];
      *&v637[392] = *(v3 + 49);
      *&v637[488] = v554;
      *&v637[496] = *(v3 + 62);
      v565 = *(v3 + 28);
      *&v637[432] = *(v3 + 27);
      *&v637[448] = v565;
      *&v637[464] = *(v3 + 29);
      v566 = *(v3 + 26);
      *&v637[400] = *(v3 + 25);
      *&v637[416] = v566;
      *&v637[48] = *(v3 + 3);
      *&v637[72] = *(v3 + 72);
      *&v637[88] = *(v3 + 88);
      *&v637[104] = *(v3 + 104);
      *&v637[120] = *(v3 + 120);
      *&v637[136] = *(v3 + 136);
      *&v637[152] = *(v3 + 152);
      *&v637[168] = *(v3 + 168);
      *&v637[184] = *(v3 + 184);
      *&v637[216] = *(v3 + 216);
      *&v637[240] = *(v3 + 15);
      *v562 = *v561;
      *(v562 + 2) = *(v561 + 2);
      v567 = *(v561 + 5);
      *(v562 + 4) = *(v561 + 4);
      *(v562 + 5) = v567;
      *(v562 + 6) = *(v561 + 6);
      memcpy(v636, v637, sizeof(v636));
      sub_2529353AC(v637, &v631);
      sub_252D02164(v438, v399, sub_252D083F0, &v626);
      memcpy(v638, v636, sizeof(v638));
      sub_252935408(v638);
      v568 = v627;
      if (v627 == 1)
      {
        v516 = v625;
        (*v622)(v399, v625);
      }

      else
      {
        v569 = v626;
        v570 = v630;
        v571 = v628;
        v572 = v629;
        v573 = *(v3 + 53);
        v574 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 53) = v573;
        v614 = v569;
        LODWORD(v613) = v571;
        LODWORD(v612) = v572;
        if ((v574 & 1) == 0)
        {
          v573 = sub_2529F8360(0, *(v573 + 2) + 1, 1, v573);
          *(v3 + 53) = v573;
        }

        v576 = *(v573 + 2);
        v575 = *(v573 + 3);
        if (v576 >= v575 >> 1)
        {
          *(v3 + 53) = sub_2529F8360((v575 > 1), v576 + 1, 1, v573);
        }

        v577 = v618;
        v578 = v625;
        (*v622)(v618, v625);
        v579 = *(v3 + 53);
        *(v579 + 16) = v576 + 1;
        v580 = v579 + 32 * v576;
        v516 = v578;
        *(v580 + 32) = v614;
        *(v580 + 40) = v568;
        *(v580 + 48) = v613;
        *(v580 + 52) = v612;
        *(v580 + 56) = v570;
        v399 = v577;
        *(v3 + 53) = v579;
        v438 = v624;
      }

      v517 = v616;
      v514 = v617;
LABEL_354:
      v375 += v623;
      if (!--v514)
      {
        goto LABEL_383;
      }

      (v517)(v399, v375, v516);
    }

    v526 = *(v3 + 61);
    *&v637[480] = *(v3 + 60);
    *v637 = *v3;
    *&v637[8] = *(v3 + 4);
    v637[10] = v3[10];
    *&v637[16] = *(v3 + 2);
    *&v637[24] = *(v3 + 12);
    v637[26] = v3[26];
    *&v637[32] = *(v3 + 4);
    v637[40] = v3[40];
    v637[64] = v3[64];
    v527 = *(v3 + 104);
    *&v637[136] = v522;
    v528 = v3[232];
    *&v637[208] = v527;
    v637[232] = v528;
    v529 = *(v3 + 33);
    *&v637[256] = *(v3 + 32);
    LOBYTE(v527) = v3[288];
    *&v637[264] = v529;
    LOBYTE(v529) = v619[25];
    v637[288] = v527;
    v637[289] = v529;
    v530 = *(v3 + 38);
    *&v637[296] = *(v3 + 37);
    *&v637[304] = v530;
    v637[312] = v3[312];
    v531 = *(v3 + 40);
    *&v637[328] = *(v3 + 41);
    v637[384] = v3[384];
    v637[385] = v619[121];
    v637[386] = v619[122];
    v637[387] = v619[123];
    v637[388] = v619[124];
    v637[389] = v619[125];
    *&v637[392] = *(v3 + 49);
    *&v637[488] = v526;
    *&v637[496] = *(v3 + 62);
    *&v637[320] = v531;
    v532 = *(v3 + 28);
    *&v637[432] = *(v3 + 27);
    *&v637[448] = v532;
    *&v637[464] = *(v3 + 29);
    v533 = *(v3 + 26);
    *&v637[400] = *(v3 + 25);
    *&v637[416] = v533;
    *&v637[48] = *(v3 + 3);
    *&v637[72] = *(v3 + 72);
    *&v637[88] = *(v3 + 88);
    *&v637[104] = *(v3 + 104);
    *&v637[120] = *(v3 + 120);
    v534 = *(v3 + 10);
    *&v637[144] = *(v3 + 9);
    *&v637[160] = v534;
    v535 = *(v3 + 12);
    *&v637[176] = *(v3 + 11);
    *&v637[192] = v535;
    *&v637[216] = *(v3 + 216);
    *&v637[240] = *(v3 + 15);
    *&v637[272] = *(v3 + 17);
    v536 = *(v3 + 22);
    *&v637[336] = *(v3 + 21);
    *&v637[352] = v536;
    *&v637[368] = *(v3 + 23);
    memcpy(v636, v637, sizeof(v636));
    sub_2529353AC(v637, &v631);
    sub_252D01540(v438, v399, &v703);
    v537 = v707;
    memcpy(v638, v636, sizeof(v638));
    sub_252935408(v638);
    v373 = v705;
    v31 = v704;
    v538 = v707;
    if (v707)
    {
      if (v707 != 1)
      {
        v611 = *(&v703 + 1);
        v612 = v703;
        v613 = v531;
        v614 = v537;
        v539 = v704;
        v540 = v706;

        v541 = v619;
        sub_2529F77E0();
        v542 = *(*(v541 + 8) + 16);
        sub_2529F7934(v542);
        v374 = v540;
        v31 = v539;
        v531 = v613;
        v543 = *(v541 + 8);
        *(v543 + 16) = v542 + 1;
        v544 = v543 + 16 * v542;
        *(v544 + 32) = v374;
        *(v544 + 40) = v538;
        *(v541 + 8) = v543;
        if (v373)
        {
          v545 = v611 - v612;
          if (__OFSUB__(v611, v612))
          {
            goto LABEL_403;
          }

          v31 = v531;

          v374 = sub_252AD4324(v374, v538);
          sub_25293847C(&v703, &qword_27F545530, &unk_252E5B5C0);
          sub_25293847C(&v703, &qword_27F545530, &unk_252E5B5C0);
          if (__OFSUB__(v545, v374))
          {
            goto LABEL_404;
          }

          v546 = &v545[-v374] & ~(&v545[-v374] >> 63);
          v85 = __OFADD__(v531, v546);
          v547 = &v531[v546];
          if (v85)
          {
            goto LABEL_405;
          }

          goto LABEL_373;
        }

LABEL_372:
        sub_25293847C(&v703, &qword_27F545530, &unk_252E5B5C0);
        v547 = v31 + v531;
        if (__OFADD__(v531, v31))
        {
          goto LABEL_396;
        }

LABEL_373:
        *(v3 + 40) = v547;
      }
    }

    else
    {
      v614 = v537;
      v548 = v607;

      v549 = v619;
      sub_2529F77E0();
      v550 = *(*(v549 + 8) + 16);
      v374 = (v549 + 64);
      sub_2529F7934(v550);
      v551 = *(v549 + 8);
      *(v551 + 16) = v550 + 1;
      v552 = v551 + 16 * v550;
      *(v552 + 32) = v606;
      *(v552 + 40) = v548;
      *(v549 + 8) = v551;
      if ((v373 & 1) == 0)
      {
        goto LABEL_372;
      }
    }

    v438 = v624;
    v399 = v618;
    goto LABEL_375;
  }

LABEL_383:

  v581 = sub_252D02644(v438);
  if (*(v581 + 16))
  {
    sub_2529F77F8();
    v582 = *(*(v3 + 12) + 16);
    sub_2529F794C(v582);
    v583 = *(v3 + 12);
    *(v583 + 16) = v582 + 1;
    *(v583 + 8 * v582 + 32) = v581;
    *(v3 + 12) = v583;
  }

  else
  {
  }

  v584 = v607;

  sub_2529F77E0();
  v585 = *(*(v3 + 46) + 16);
  result = sub_2529F7934(v585);
  v586 = *(v3 + 46);
  *(v586 + 16) = v585 + 1;
  v587 = v586 + 16 * v585;
  *(v587 + 32) = v606;
  *(v587 + 40) = v584;
  *(v3 + 46) = v586;
  return result;
}