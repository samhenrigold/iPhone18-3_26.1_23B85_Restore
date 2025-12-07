BOOL sub_2695A0440(unint64_t a1, SEL *a2)
{
  v14 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v5 = sub_2695B1278();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D6416E0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_18;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v11 = [v8 *a2];

    ++v6;
    if (v11)
    {
      MEMORY[0x26D6414F0]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2695B1058();
      }

      sub_2695B1068();
      v7 = v14;
      v6 = v10;
    }
  }

  if (v7 >> 62)
  {
    v12 = sub_2695B1278();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v12 != 0;
}

BOOL sub_2695A05CC(unint64_t a1, SEL *a2)
{
  v16 = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v4 = sub_2695B1278();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D6416E0](v7, a1);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 requestContext];
      if (v10)
      {
        break;
      }

LABEL_6:
      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v11 = v10;
    v12 = [v10 *a2];

    if (!v12)
    {
      goto LABEL_6;
    }

    MEMORY[0x26D6414F0]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2695B1058();
    }

    sub_2695B1068();
    v6 = v16;
  }

  while (v5 != v4);
LABEL_23:
  if (v6 >> 62)
  {
    v13 = sub_2695B1278();
  }

  else
  {
    v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v13 != 0;
}

BOOL sub_2695A079C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_2695B1278();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = 0x279C65000uLL;
  do
  {
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D6416E0](v7, a1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 invocation];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = v10;
    [v10 *(v6 + 3584)];

    sub_2695B1188();
    sub_2695A133C();
    v12 = sub_2695B11A8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_26959F730(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_26959F730((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v5[v14 + 32] = v12 & 1;
    v6 = 0x279C65000;
  }

  while (v4 != v3);
LABEL_23:
  v15 = *(v5 + 2);
  v16 = (v5 + 32);
  do
  {
    v17 = v15;
    if (v15-- == 0)
    {
      break;
    }

    v19 = *v16++;
  }

  while (v19 != 1);
  v20 = v17 != 0;

  return v20;
}

BOOL sub_2695A09C4(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_41:
    v3 = sub_2695B1278();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = a1 & 0xC000000000000001;
  v5 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = 0;
    v7 = 0x279C65000uLL;
    do
    {
      v8 = v6;
      while (1)
      {
        if (v4)
        {
          v9 = MEMORY[0x26D6416E0](v8, a1);
        }

        else
        {
          if (v8 >= *(v2 + 16))
          {
            goto LABEL_40;
          }

          v9 = *(a1 + 8 * v8 + 32);
        }

        v10 = v9;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v11 = [v9 invocation];
        if (v11)
        {
          break;
        }

        ++v8;
        if (v6 == v3)
        {
          goto LABEL_19;
        }
      }

      v12 = v11;
      [v11 *(v7 + 3584)];

      sub_2695B1188();
      sub_2695A133C();
      v13 = sub_2695B11A8();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_26959F730(0, *(v5 + 2) + 1, 1, v5);
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        v5 = sub_26959F730((v14 > 1), v15 + 1, 1, v5);
      }

      *(v5 + 2) = v15 + 1;
      v5[v15 + 32] = v13 & 1;
      v7 = 0x279C65000;
    }

    while (v6 != v3);
  }

LABEL_19:
  v16 = *(v5 + 2);
  v17 = (v5 + 32);
  do
  {
    v18 = v16;
    if (v16-- == 0)
    {
      break;
    }

    v20 = *v17++;
  }

  while (v20 != 1);

  v21 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v3 != v21)
  {
    if (v4)
    {
      v22 = MEMORY[0x26D6416E0](v21, a1);
    }

    else
    {
      if (v21 >= *(v2 + 16))
      {
        goto LABEL_38;
      }

      v22 = *(a1 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v25 = [v22 dictationContext];

    ++v21;
    if (v25)
    {
      MEMORY[0x26D6414F0]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2695B1058();
      }

      sub_2695B1068();
      v29 = v30;
      v21 = v24;
    }
  }

  if (v29 >> 62)
  {
    v26 = sub_2695B1278();
  }

  else
  {
    v26 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v18 | v26;

  return v27 != 0;
}

uint64_t sub_2695A0CF8(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_97;
  }

  v55 = a2 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2695B1278())
  {
    v56 = v2 & 0xC000000000000001;
    v4 = MEMORY[0x277D84F90];
    if (i)
    {
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      do
      {
        v7 = v5;
        while (1)
        {
          if (v56)
          {
            v8 = MEMORY[0x26D6416E0](v7, v2);
          }

          else
          {
            if (v7 >= *(v55 + 16))
            {
              goto LABEL_92;
            }

            v8 = *(v2 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

          v10 = [v8 ueiRequestCategorization];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == i)
          {
            goto LABEL_21;
          }
        }

        v11 = v10;
        v12 = [v10 requestStatus];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_26959F824(0, *(v6 + 2) + 1, 1, v6, &qword_28031D318, "f!");
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        if (v14 >= v13 >> 1)
        {
          v6 = sub_26959F824((v13 > 1), v14 + 1, 1, v6, &qword_28031D318, "f!");
        }

        *(v6 + 2) = v14 + 1;
        *&v6[4 * v14 + 32] = v12;
      }

      while (v5 != i);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

LABEL_21:
    v15 = *(v6 + 2);
    v16 = 32;
    do
    {
      v17 = v15;
      v18 = v15-- != 0;
      v19 = v18;
      if (!v18)
      {
        break;
      }

      v20 = *&v6[v16];
      v16 += 4;
    }

    while (v20 != 3);
    v53 = v19;

    v58 = v4;
    if (a1 >> 62)
    {
      v21 = sub_2695B1278();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = a1 & 0xC000000000000001;
    if (v21)
    {
      v22 = 0;
      v23 = MEMORY[0x277D84F90];
LABEL_32:
      v24 = v22;
      while (1)
      {
        if (v57)
        {
          v25 = MEMORY[0x26D6416E0](v24, a1);
        }

        else
        {
          if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_94;
          }

          v25 = *(a1 + 8 * v24 + 32);
        }

        v26 = v25;
        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v27 = [v25 requestContext];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 ended];

          if (v29)
          {
            MEMORY[0x26D6414F0]();
            if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2695B1058();
            }

            sub_2695B1068();
            v23 = v58;
            if (v22 != v21)
            {
              goto LABEL_32;
            }

            goto LABEL_48;
          }
        }

        else
        {
        }

        ++v24;
        if (v22 == v21)
        {
          goto LABEL_48;
        }
      }

LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v23 = MEMORY[0x277D84F90];
LABEL_48:
    v52 = v23 >> 62 ? sub_2695B1278() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v30 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v31 = 0;
    v32 = MEMORY[0x277D84F90];
LABEL_52:
    v33 = v31;
    while (1)
    {
      if (v56)
      {
        v34 = MEMORY[0x26D6416E0](v33, v2);
      }

      else
      {
        if (v33 >= *(v55 + 16))
        {
          goto LABEL_96;
        }

        v34 = *(v2 + 8 * v33 + 32);
      }

      v35 = v34;
      v31 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v36 = [v34 ueiRequestCategorization];
      if (v36)
      {
        v37 = v36;
        v38 = [v36 requestStatus];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_26959F824(0, *(v32 + 2) + 1, 1, v32, &qword_28031D318, "f!");
        }

        v40 = *(v32 + 2);
        v39 = *(v32 + 3);
        if (v40 >= v39 >> 1)
        {
          v32 = sub_26959F824((v39 > 1), v40 + 1, 1, v32, &qword_28031D318, "f!");
        }

        *(v32 + 2) = v40 + 1;
        *&v32[4 * v40 + 32] = v38;
        if (v31 != i)
        {
          goto LABEL_52;
        }

        goto LABEL_68;
      }

      ++v33;
      if (v31 == i)
      {
        goto LABEL_68;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    v55 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_68:
  v41 = *(v32 + 2);
  v42 = 32;
  do
  {
    v43 = v41;
    if (!v41)
    {
      break;
    }

    v44 = *&v32[v42];
    v42 += 4;
    --v41;
  }

  while (v44 != 1);

  v2 = 0;
  v59 = v30;
  while (v21 != v2)
  {
    if (v57)
    {
      v45 = MEMORY[0x26D6416E0](v2, a1);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v45 = *(a1 + 8 * v2 + 32);
    }

    v46 = v45;
    v47 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v48 = [v45 partialResultGenerated];

    ++v2;
    if (v48)
    {
      MEMORY[0x26D6414F0]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2695B1058();
      }

      sub_2695B1068();
      v30 = v59;
      v2 = v47;
    }
  }

  if (v30 >> 62)
  {
    v49 = sub_2695B1278();
  }

  else
  {
    v49 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = (v52 | v49) != 0;
  if (!v43)
  {
    v50 = v53;
  }

  if (v17)
  {
    return v53;
  }

  else
  {
    return v50;
  }
}

unint64_t sub_2695A133C()
{
  result = qword_28031D320;
  if (!qword_28031D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D320);
  }

  return result;
}

uint64_t sub_2695A1390@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v78 = a2;
  v79 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D2A8, &unk_2695B2900);
  v4 = MEMORY[0x28223BE20](v76);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v62 - v12;
  v14 = sub_2695B0C78();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v72 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v62 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v77 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  sub_2695A37EC(v79, v13, &unk_28031D370, &unk_2695B2800);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2695A3348(v13, &unk_28031D370, &unk_2695B2800);
    return sub_2695A37EC(v3, v78, &qword_28031D1B8, &qword_2695B2538);
  }

  else
  {
    v66 = v10;
    v70 = *(v15 + 32);
    v71 = v15 + 32;
    v70(v23, v13, v14);
    v25 = *(v8 + 36);
    v73 = sub_269595A24();
    v26 = sub_2695B0F78();
    v27 = *(v15 + 16);
    v67 = v25;
    if (v26)
    {
      v28 = (v3 + v25);
      v29 = v77;
      v30 = v77;
    }

    else
    {
      v29 = v77;
      v30 = v77;
      v28 = v23;
    }

    v27(v30, v28, v14);
    result = sub_2695B0F98();
    if (result)
    {
      v31 = v75;
      v63 = v23;
      v27(v75, v23, v14);
      v64 = v3;
      v32 = v8;
      v33 = v76;
      v34 = v31 + *(v76 + 48);
      v69 = v27;
      v27(v34, v29, v14);
      sub_2695A37EC(v31, v6, &qword_28031D2A8, &unk_2695B2900);
      v35 = *(v33 + 48);
      v36 = v66;
      v37 = v6;
      v79 = v6;
      v38 = v70;
      v70(v66, v37, v14);
      v39 = &v79[v35];
      v40 = *(v15 + 8);
      v40(v39, v14);
      sub_2695A3854(v31, v79, &qword_28031D2A8, &unk_2695B2900);
      v41 = *(v33 + 48);
      v65 = v32;
      v42 = *(v32 + 36);
      v43 = v64;
      v38(v36 + v42, &v79[v41], v14);
      v44 = v36;
      v40(v79, v14);
      v45 = sub_2695B0F68();
      v68 = v15 + 16;
      if (v45)
      {
        v69(v74, v36, v14);
      }

      else
      {
        if (sub_2695B0F78())
        {
          v46 = v36 + v42;
          v47 = v74;
        }

        else
        {
          v47 = v74;
          v46 = v43;
        }

        v69(v47, v46, v14);
      }

      v48 = v77;
      v49 = v63;
      v50 = v67;
      v51 = sub_2695B0F78();
      v62 = v40;
      if (v51)
      {
        v40(v48, v14);
        v40(v49, v14);
        v52 = v72;
        v69(v72, v44 + v42, v14);
        sub_2695A3348(v44, &qword_28031D1B8, &qword_2695B2538);
      }

      else
      {
        v53 = sub_2695B0F68();
        v40(v48, v14);
        v40(v49, v14);
        if (v53)
        {
          v52 = v72;
          v69(v72, v44, v14);
          sub_2695A3348(v44, &qword_28031D1B8, &qword_2695B2538);
        }

        else
        {
          sub_2695A3348(v44, &qword_28031D1B8, &qword_2695B2538);
          v52 = v72;
          v69(v72, v43 + v50, v14);
        }
      }

      v54 = v75;
      v55 = v70;
      v70(v75, v74, v14);
      v56 = v76;
      v55(v54 + *(v76 + 48), v52, v14);
      v57 = v79;
      sub_2695A37EC(v54, v79, &qword_28031D2A8, &unk_2695B2900);
      v58 = *(v56 + 48);
      v59 = v78;
      v55(v78, v57, v14);
      v60 = &v57[v58];
      v61 = v62;
      v62(v60, v14);
      sub_2695A3854(v54, v57, &qword_28031D2A8, &unk_2695B2900);
      v55(&v59[*(v65 + 36)], &v57[*(v56 + 48)], v14);
      return v61(v57, v14);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2695A1AD8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D360, &unk_2695B2B50);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D288, &qword_2695B28D0);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v45 - v8;
  v9 = sub_2695B0C78();
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  v45 = a1;
  sub_2695A1390(a2, &v45 - v22);
  v24 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v25 = [v24 Wireless];
  swift_unknownObjectRelease();
  v26 = [v25 Bluetooth];
  swift_unknownObjectRelease();
  sub_2695A2A60(v26, v23, sub_2695A2158, 0, v20);

  v47 = a2;
  v27 = v9;
  v28 = v49;
  sub_2695968A8(v20, a2, v18);
  sub_2695A37EC(v18, v15, &unk_28031D370, &unk_2695B2800);
  v29 = *(v28 + 48);
  v48 = v27;
  if (v29(v15, 1, v27) == 1)
  {
    sub_2695A3348(v18, &unk_28031D370, &unk_2695B2800);
    sub_2695A3348(v20, &unk_28031D370, &unk_2695B2800);
    sub_2695A3348(v23, &qword_28031D1B8, &qword_2695B2538);
    sub_2695A3348(v15, &unk_28031D370, &unk_2695B2800);
    SeenResult = type metadata accessor for SegmentFlagLastSeenResult(0);
    v37 = v51;
    result = sub_2695A37EC(v47, &v51[*(SeenResult + 20)], &unk_28031D370, &unk_2695B2800);
  }

  else
  {
    v30 = *(v28 + 32);
    v30(v11, v15, v48);
    v31 = *(v21 + 36);
    v32 = sub_2695B0C98();
    v33 = v50;
    (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
    v34 = sub_2695B0D68();
    v35 = v46;
    (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
    v40 = sub_2695AB4A4(v45 + v31, v33, v35);
    sub_2695A3348(v35, &unk_28031D360, &unk_2695B2B50);
    sub_2695A3348(v50, &qword_28031D288, &qword_2695B28D0);
    sub_2695A3348(v18, &unk_28031D370, &unk_2695B2800);
    sub_2695A3348(v20, &unk_28031D370, &unk_2695B2800);
    sub_2695A3348(v23, &qword_28031D1B8, &qword_2695B2538);
    if (v40 <= 27)
    {
      v41 = *(type metadata accessor for SegmentFlagLastSeenResult(0) + 20);
      v37 = v51;
      v42 = v48;
      v30(&v51[v41], v11, v48);
      result = (*(v28 + 56))(&v37[v41], 0, 1, v42);
      v39 = 4;
      goto LABEL_5;
    }

    v43 = v48;
    (*(v28 + 8))(v11, v48);
    v44 = type metadata accessor for SegmentFlagLastSeenResult(0);
    v37 = v51;
    result = (*(v28 + 56))(&v51[*(v44 + 20)], 1, 1, v43);
  }

  v39 = 7;
LABEL_5:
  *v37 = v39;
  return result;
}

uint64_t sub_2695A2178@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a4;
  v64 = a3;
  v62 = a1;
  v69 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v11 = MEMORY[0x28223BE20](v10);
  v59 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v58 - v13;
  v15 = swift_allocObject();
  v68 = v15;
  *(v15 + 16) = 0;
  v58[1] = v15 + 16;
  v16 = swift_allocObject();
  v67 = v16;
  *(v16 + 16) = 0;
  v58[3] = v16 + 16;
  v17 = swift_allocObject();
  v71 = v17;
  *(v17 + 16) = 0;
  v58[2] = v17 + 16;
  v60 = v10;
  v70 = swift_allocBox();
  v19 = v18;
  v20 = sub_2695B0C78();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v66 = v19;
  v22(v19, 1, 1, v20);
  v23 = sub_2695B0FB8();
  (*(v21 + 16))(v14, a2, v20);
  v22(v14, 0, 1, v20);
  v24 = sub_2695B0C38();
  v25 = 0;
  if ((*(v21 + 48))(v14, 1, v20) != 1)
  {
    v25 = sub_2695B0C38();
    (*(v21 + 8))(v14, v20);
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v24 endDate:v25 maxEvents:0 lastN:0 reversed:1];

  v62 = [v62 publisherWithUseCase:v23 options:v26];
  v77 = sub_2695AC690;
  v78 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_2695A33A8;
  v76 = &block_descriptor_14;
  v61 = _Block_copy(&aBlock);
  sub_2695A37EC(a2, v9, &qword_28031D1B8, &qword_2695B2538);
  v27 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v28 = (v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = v9;
  v30 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v68;
  *(v33 + 16) = v68;
  sub_2695A3854(v29, v33 + v27, &qword_28031D1B8, &qword_2695B2538);
  v35 = (v33 + v28);
  v36 = v65;
  *v35 = v64;
  v35[1] = v36;
  *(v33 + v30) = v70;
  *(v33 + v31) = v71;
  v37 = v67;
  *(v33 + v32) = v67;
  v77 = sub_2695A3B5C;
  v78 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_2695A3708;
  v76 = &block_descriptor_20;
  v38 = _Block_copy(&aBlock);

  v39 = v37;

  v40 = v62;
  v41 = v61;
  v42 = [v62 sinkWithCompletion:v61 shouldContinue:v38];
  _Block_release(v38);
  _Block_release(v41);

  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v43 = sub_2695B0EF8();
  __swift_project_value_buffer(v43, qword_2814B2250);
  swift_retain_n();
  swift_retain_n();

  v44 = sub_2695B0ED8();
  v45 = sub_2695B1128();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v46 = 136316418;
    *(v46 + 4) = sub_26959CE44(0xD000000000000027, 0x80000002695B3DE0, &aBlock);
    *(v46 + 12) = 2048;
    swift_beginAccess();
    *(v46 + 14) = *(v34 + 16);

    *(v46 + 22) = 2080;
    v72 = sub_2695A3AFC(0, &qword_28031D3A0, 0x277CF1030);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D3A8, &qword_2695B2D18);
    v48 = sub_2695B0FC8();
    v50 = sub_26959CE44(v48, v49, &aBlock);

    *(v46 + 24) = v50;
    *(v46 + 32) = 2048;
    swift_beginAccess();
    v51 = *(v71 + 16);

    *(v46 + 34) = v51;

    *(v46 + 42) = 2048;
    swift_beginAccess();
    v52 = *(v39 + 16);

    *(v46 + 44) = v52;

    *(v46 + 52) = 2080;
    v53 = v66;
    swift_beginAccess();
    sub_2695A37EC(v53, v59, &unk_28031D370, &unk_2695B2800);
    v54 = sub_2695B0FC8();
    v56 = sub_26959CE44(v54, v55, &aBlock);

    *(v46 + 54) = v56;
    _os_log_impl(&dword_269588000, v44, v45, "%s Scanned %ld %s events; %ld more recent, non-matching events; %ld date out of range; result %s", v46, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v47, -1, -1);
    MEMORY[0x26D641DE0](v46, -1, -1);
  }

  else
  {

    v53 = v66;
  }

  swift_beginAccess();
  sub_2695A37EC(v53, v69, &unk_28031D370, &unk_2695B2800);
}

uint64_t sub_2695A2A60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a4;
  v64 = a3;
  v62 = a1;
  v69 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v11 = MEMORY[0x28223BE20](v10);
  v59 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v58 - v13;
  v15 = swift_allocObject();
  v68 = v15;
  *(v15 + 16) = 0;
  v58[1] = v15 + 16;
  v16 = swift_allocObject();
  v67 = v16;
  *(v16 + 16) = 0;
  v58[3] = v16 + 16;
  v17 = swift_allocObject();
  v71 = v17;
  *(v17 + 16) = 0;
  v58[2] = v17 + 16;
  v60 = v10;
  v70 = swift_allocBox();
  v19 = v18;
  v20 = sub_2695B0C78();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v66 = v19;
  v22(v19, 1, 1, v20);
  v23 = sub_2695B0FB8();
  (*(v21 + 16))(v14, a2, v20);
  v22(v14, 0, 1, v20);
  v24 = sub_2695B0C38();
  v25 = 0;
  if ((*(v21 + 48))(v14, 1, v20) != 1)
  {
    v25 = sub_2695B0C38();
    (*(v21 + 8))(v14, v20);
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v24 endDate:v25 maxEvents:0 lastN:0 reversed:1];

  v62 = [v62 publisherWithUseCase:v23 options:v26];
  v77 = sub_2695AC690;
  v78 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_2695A33A8;
  v76 = &block_descriptor_0;
  v61 = _Block_copy(&aBlock);
  sub_2695A37EC(a2, v9, &qword_28031D1B8, &qword_2695B2538);
  v27 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v28 = (v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = v9;
  v30 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v68;
  *(v33 + 16) = v68;
  sub_2695A3854(v29, v33 + v27, &qword_28031D1B8, &qword_2695B2538);
  v35 = (v33 + v28);
  v36 = v65;
  *v35 = v64;
  v35[1] = v36;
  *(v33 + v30) = v70;
  *(v33 + v31) = v71;
  v37 = v67;
  *(v33 + v32) = v67;
  v77 = sub_2695A3778;
  v78 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v74 = 1107296256;
  v75 = sub_2695A3708;
  v76 = &block_descriptor_8;
  v38 = _Block_copy(&aBlock);

  v39 = v37;

  v40 = v62;
  v41 = v61;
  v42 = [v62 sinkWithCompletion:v61 shouldContinue:v38];
  _Block_release(v38);
  _Block_release(v41);

  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v43 = sub_2695B0EF8();
  __swift_project_value_buffer(v43, qword_2814B2250);
  swift_retain_n();
  swift_retain_n();

  v44 = sub_2695B0ED8();
  v45 = sub_2695B1128();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v46 = 136316418;
    *(v46 + 4) = sub_26959CE44(0xD000000000000027, 0x80000002695B3DE0, &aBlock);
    *(v46 + 12) = 2048;
    swift_beginAccess();
    *(v46 + 14) = *(v34 + 16);

    *(v46 + 22) = 2080;
    v72 = sub_2695A3AFC(0, &qword_28031D380, 0x277CF10C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D388, &qword_2695B2D10);
    v48 = sub_2695B0FC8();
    v50 = sub_26959CE44(v48, v49, &aBlock);

    *(v46 + 24) = v50;
    *(v46 + 32) = 2048;
    swift_beginAccess();
    v51 = *(v71 + 16);

    *(v46 + 34) = v51;

    *(v46 + 42) = 2048;
    swift_beginAccess();
    v52 = *(v39 + 16);

    *(v46 + 44) = v52;

    *(v46 + 52) = 2080;
    v53 = v66;
    swift_beginAccess();
    sub_2695A37EC(v53, v59, &unk_28031D370, &unk_2695B2800);
    v54 = sub_2695B0FC8();
    v56 = sub_26959CE44(v54, v55, &aBlock);

    *(v46 + 54) = v56;
    _os_log_impl(&dword_269588000, v44, v45, "%s Scanned %ld %s events; %ld more recent, non-matching events; %ld date out of range; result %s", v46, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v47, -1, -1);
    MEMORY[0x26D641DE0](v46, -1, -1);
  }

  else
  {

    v53 = v66;
  }

  swift_beginAccess();
  sub_2695A37EC(v53, v69, &unk_28031D370, &unk_2695B2800);
}

uint64_t sub_2695A3348(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2695A33A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2695A3410(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a5;
  v35 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_2695B0C78();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_projectBox();
  result = swift_beginAccess();
  v21 = *(a2 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_14;
  }

  v33 = v19;
  *(a2 + 16) = v23;
  [a1 timestamp];
  sub_2695B0B98();
  sub_269595A24();
  if (sub_2695B0F98())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
    if (sub_2695B0F78())
    {
      v24 = [a1 eventBody];
      if (v24)
      {
        v25 = v24;
        v26 = v35();

        if (v26)
        {
          (*(v16 + 32))(v14, v18, v15);
          (*(v16 + 56))(v14, 0, 1, v15);
          v27 = v33;
          swift_beginAccess();
          sub_2695A377C(v14, v27);
          return 0;
        }
      }

      (*(v16 + 8))(v18, v15);
      result = swift_beginAccess();
      v30 = *(a7 + 16);
      v22 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (!v22)
      {
        *(a7 + 16) = v31;
        return 1;
      }

LABEL_15:
      __break(1u);
      return result;
    }
  }

  (*(v16 + 8))(v18, v15);
  result = swift_beginAccess();
  v28 = *(a8 + 16);
  v22 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(a8 + 16) = v29;
  return 1;
}

uint64_t sub_2695A3708(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2695A377C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2695A37EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2695A3854(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_4Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v8 = (((((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v3;
  v5 = sub_2695B0C78();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[11], v5);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

uint64_t sub_2695A3A30(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2695A3410(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8))) & 1;
}

uint64_t sub_2695A3AFC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2695A3B60(uint64_t a1, unsigned __int8 a2)
{
  sub_2695B1388();
  sub_2695B0FE8();

  return sub_2695B13A8();
}

unint64_t SegmentFlags.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F7473754377656ELL;
  v3 = 0x6D6F44736D6D6F63;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001ALL;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x73646F50726961;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F69746174636964;
  if (v1 != 1)
  {
    v5 = 7496035;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

SiriUserSegments::SegmentFlags_optional __swiftcall SegmentFlags.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2695B1288();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2695A3E10()
{
  result = qword_2814B1FE0;
  if (!qword_2814B1FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B1FE0);
  }

  return result;
}

uint64_t sub_2695A3E70(uint64_t a1)
{
  sub_2695B0FE8();
}

void sub_2695A3FB0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000072656DLL;
  v4 = 0x6F7473754377656ELL;
  v5 = 0xED0000746E616E69;
  v6 = 0x6D6F44736D6D6F63;
  if (v2 != 5)
  {
    v6 = 0xD00000000000001ALL;
    v5 = 0x80000002695B36F0;
  }

  v7 = 0xD000000000000011;
  v8 = 0x80000002695B36C0;
  if (v2 != 3)
  {
    v7 = 0x73646F50726961;
    v8 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE90000000000006ELL;
  v10 = 0x6F69746174636964;
  if (v2 != 1)
  {
    v10 = 7496035;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_2695A4160()
{
  result = qword_28031D3B0;
  if (!qword_28031D3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031D3B8, &qword_2695B2E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D3B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SegmentFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SegmentFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2695A4338()
{
  result = qword_28031D3C0;
  if (!qword_28031D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D3C0);
  }

  return result;
}

uint64_t sub_2695A438C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000072656DLL;
  v3 = 0x6F7473754377656ELL;
  v4 = a1;
  v5 = 0xED0000746E616E69;
  v6 = 0xD00000000000001ALL;
  if (a1 == 5)
  {
    v6 = 0x6D6F44736D6D6F63;
  }

  else
  {
    v5 = 0x80000002695B36F0;
  }

  v7 = 0xD000000000000011;
  v8 = 0x80000002695B36C0;
  if (a1 != 3)
  {
    v7 = 0x73646F50726961;
    v8 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0x6F69746174636964;
  v10 = 0xE90000000000006ELL;
  if (a1 != 1)
  {
    v9 = 7496035;
    v10 = 0xE300000000000000;
  }

  if (!a1)
  {
    v9 = 0x6F7473754377656ELL;
    v10 = 0xEB0000000072656DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE90000000000006ELL;
        if (v11 != 0x6F69746174636964)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE300000000000000;
        if (v11 != 7496035)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xED0000746E616E69;
        if (v11 != 0x6D6F44736D6D6F63)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0x80000002695B36F0;
        if (v11 != 0xD00000000000001ALL)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x80000002695B36C0;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v2 = 0xE700000000000000;
    v3 = 0x73646F50726961;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = sub_2695B1328();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_2695A45C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v8 = 0xE700000000000000;
    v9 = 0x6F69746174636964;
    v10 = 0xED0000796C6E4F6ELL;
    v11 = 0x80000002695B3730;
    v12 = 0xD000000000000018;
    if (a1 == 3)
    {
      v12 = 0xD000000000000016;
    }

    else
    {
      v11 = 0x80000002695B3750;
    }

    if (a1 != 2)
    {
      v9 = v12;
      v10 = v11;
    }

    v13 = 0x64656C6261736964;
    if (a1)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v14 = v13;
    }

    else
    {
      v14 = v9;
    }

    if (v2 <= 1)
    {
      v15 = v8;
    }

    else
    {
      v15 = v10;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v3 = 0x80000002695B37D0;
      v4 = 0xD00000000000001ALL;
      v5 = 0x80000002695B37F0;
      v6 = 0xD00000000000001BLL;
      if (a1 != 9)
      {
        v6 = 0xD000000000000014;
        v5 = 0x80000002695B3810;
      }

      v7 = a1 == 8;
    }

    else
    {
      v3 = 0x80000002695B3770;
      v4 = 0xD000000000000013;
      v5 = 0x80000002695B3790;
      v6 = 0xD000000000000012;
      if (a1 != 6)
      {
        v6 = 0xD000000000000016;
        v5 = 0x80000002695B37B0;
      }

      v7 = a1 == 5;
    }

    if (v7)
    {
      v14 = v4;
    }

    else
    {
      v14 = v6;
    }

    if (v7)
    {
      v15 = v3;
    }

    else
    {
      v15 = v5;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v16 = 0xE800000000000000;
        if (v14 != 0x64656C6261736964)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        if (v14 != 0x6E776F6E6B6E75)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_60;
    }

    if (a2 == 2)
    {
      v16 = 0xED0000796C6E4F6ELL;
      if (v14 != 0x6F69746174636964)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 != 3)
    {
      v16 = 0x80000002695B3750;
      if (v14 != 0xD000000000000018)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v17 = "active6MonthsOrMoreAgo";
    goto LABEL_57;
  }

  if (a2 <= 7u)
  {
    if (a2 == 5)
    {
      v16 = 0x80000002695B3770;
      if (v14 != 0xD000000000000013)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 6)
    {
      v16 = 0x80000002695B3790;
      if (v14 != 0xD000000000000012)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v17 = "activeWithin7Days1Turn";
LABEL_57:
    v16 = (v17 - 32) | 0x8000000000000000;
    if (v14 != 0xD000000000000016)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 == 8)
  {
    v16 = 0x80000002695B37D0;
    if (v14 != 0xD00000000000001ALL)
    {
      goto LABEL_62;
    }
  }

  else if (a2 == 9)
  {
    v16 = 0x80000002695B37F0;
    if (v14 != 0xD00000000000001BLL)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v16 = 0x80000002695B3810;
    if (v14 != 0xD000000000000014)
    {
LABEL_62:
      v18 = sub_2695B1328();
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v15 != v16)
  {
    goto LABEL_62;
  }

  v18 = 1;
LABEL_63:

  return v18 & 1;
}

uint64_t sub_2695A490C(uint64_t a1, unsigned __int8 a2)
{
  sub_2695B0FE8();
}

unint64_t ActivitySegment.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x6F69746174636964;
    v8 = 0xD000000000000016;
    if (v1 != 3)
    {
      v8 = 0xD000000000000018;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (*v0)
    {
      v6 = 0x64656C6261736964;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    v3 = 0xD00000000000001BLL;
    if (v1 != 9)
    {
      v3 = 0xD000000000000014;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000012;
    if (v1 != 6)
    {
      v4 = 0xD000000000000016;
    }

    if (v1 == 5)
    {
      v4 = 0xD000000000000013;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

SiriUserSegments::ActivitySegment_optional __swiftcall ActivitySegment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2695B1288();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2695A4CA8()
{
  result = qword_28031D3C8;
  if (!qword_28031D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D3C8);
  }

  return result;
}

uint64_t sub_2695A4CFC()
{
  v1 = *v0;
  sub_2695B1388();
  sub_2695A490C(v3, v1);
  return sub_2695B13A8();
}

uint64_t sub_2695A4D4C(uint64_t a1)
{
  v2 = *v1;
  sub_2695B1388();
  sub_2695A490C(v4, v2);
  return sub_2695B13A8();
}

unint64_t sub_2695A4D9C@<X0>(unint64_t *a1@<X8>)
{
  result = ActivitySegment.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2695A4E78()
{
  result = qword_28031D3D0;
  if (!qword_28031D3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031D3D8, &qword_2695B2F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D3D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivitySegment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivitySegment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2695A5050()
{
  result = qword_28031D3E0;
  if (!qword_28031D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D3E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriEnablementState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for SiriEnablementState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_2695A5228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2695A5358;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_2695A5358()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2695A544C()
{
  sub_2695B1208();
  MEMORY[0x26D6414B0](0x6E72755420202020, 0xED0000203A444920);
  type metadata accessor for ConversationTurn(0);
  sub_2695B0C88();
  sub_2695A56B8();
  v1 = sub_2695B1318();
  MEMORY[0x26D6414B0](v1);

  MEMORY[0x26D6414B0](0xD00000000000001BLL, 0x80000002695B3E10);
  if (*v0 >> 62)
  {
    sub_2695B1278();
  }

  v2 = sub_2695B1318();
  MEMORY[0x26D6414B0](v2);

  MEMORY[0x26D6414B0](0xD00000000000001BLL, 0x80000002695B3E30);
  if (v0[1] >> 62)
  {
    sub_2695B1278();
  }

  v3 = sub_2695B1318();
  MEMORY[0x26D6414B0](v3);

  MEMORY[0x26D6414B0](0xD00000000000001CLL, 0x80000002695B3E50);
  if (v0[2] >> 62)
  {
    sub_2695B1278();
  }

  v4 = sub_2695B1318();
  MEMORY[0x26D6414B0](v4);

  return 0;
}

uint64_t type metadata accessor for ConversationTurn(uint64_t a1)
{
  result = qword_28031D3F0;
  if (!qword_28031D3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2695A56B8()
{
  result = qword_28031D3E8;
  if (!qword_28031D3E8)
  {
    sub_2695B0C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D3E8);
  }

  return result;
}

void sub_2695A5738(uint64_t a1)
{
  sub_2695A5834(319, &qword_28031D400, &qword_28031D408, 0x277D56858);
  if (v1 <= 0x3F)
  {
    sub_2695A5834(319, &qword_28031D410, &qword_28031D418, 0x277D5A800);
    if (v2 <= 0x3F)
    {
      sub_2695A5834(319, &qword_28031D420, &qword_28031D428, 0x277D59610);
      if (v3 <= 0x3F)
      {
        sub_2695B0C88();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2695A5834(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2695A588C(255, a3, a4);
    v5 = sub_2695B1078();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2695A588C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2695A58D4()
{
  v1 = sub_2695B0C18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v26 - v6;
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_2695B1208();
  MEMORY[0x26D6414B0](0xD00000000000002ALL, 0x80000002695B3E70);
  v8 = *v0;
  v9 = 0xEB0000000072656DLL;
  v10 = 0x6F7473754377656ELL;
  v11 = 0x80000002695B36F0;
  v12 = 0xD00000000000001ALL;
  if (v8 != 6)
  {
    v12 = 7104878;
    v11 = 0xE300000000000000;
  }

  v13 = 0xE700000000000000;
  v14 = 0x73646F50726961;
  if (v8 != 4)
  {
    v14 = 0x6D6F44736D6D6F63;
    v13 = 0xED0000746E616E69;
  }

  if (*v0 <= 5u)
  {
    v12 = v14;
    v11 = v13;
  }

  v15 = 0xE300000000000000;
  v16 = 7496035;
  if (v8 != 2)
  {
    v16 = 0xD000000000000011;
    v15 = 0x80000002695B36C0;
  }

  if (*v0)
  {
    v10 = 0x6F69746174636964;
    v9 = 0xE90000000000006ELL;
  }

  if (*v0 > 1u)
  {
    v10 = v16;
    v9 = v15;
  }

  if (*v0 <= 3u)
  {
    v17 = v10;
  }

  else
  {
    v17 = v12;
  }

  if (*v0 <= 3u)
  {
    v18 = v9;
  }

  else
  {
    v18 = v11;
  }

  MEMORY[0x26D6414B0](v17, v18);

  MEMORY[0x26D6414B0](0x65537473616C202CLL, 0xEC000000203A6E65);
  SeenResult = type metadata accessor for SegmentFlagLastSeenResult(0);
  sub_269591050(&v0[*(SeenResult + 20)], v7);
  v20 = sub_2695B0C78();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v7, 1, v20) == 1)
  {
    v22 = 7104878;
    sub_2695910C0(v7);
    v23 = 0xE300000000000000;
  }

  else
  {
    sub_2695AC8F0(v4);
    v22 = sub_2695B0BB8();
    v23 = v24;
    (*(v2 + 8))(v4, v1);
    (*(v21 + 8))(v7, v20);
  }

  MEMORY[0x26D6414B0](v22, v23);

  MEMORY[0x26D6414B0](41, 0xE100000000000000);
  return v26[0];
}

uint64_t type metadata accessor for SegmentFlagLastSeenResult(uint64_t a1)
{
  result = qword_2814B1D70;
  if (!qword_2814B1D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2695A5CC0(uint64_t a1)
{
  sub_269595C60();
  if (v1 <= 0x3F)
  {
    sub_2695A5D44(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2695A5D44(uint64_t a1)
{
  if (!qword_2814B1FB8)
  {
    sub_2695B0C78();
    v1 = sub_2695B1198();
    if (!v2)
    {
      atomic_store(v1, &qword_2814B1FB8);
    }
  }
}

uint64_t sub_2695A5DAC(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v2[16] = type metadata accessor for ConversationTurn(0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1E0, &qword_2695B2560);
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1E8, &unk_2695B31E0);
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v5 = sub_2695B0C78();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2695A5F84, 0, 0);
}

uint64_t sub_2695A5F84()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  sub_2695B0E28();
  sub_2695B0E98();
  v0[29] = sub_2695A7594(0, &qword_28031D408, 0x277D56858);
  v5 = sub_2695B0E78();
  v0[30] = sub_2695A7594(0, &qword_28031D418, 0x277D5A800);
  v6 = sub_2695B0E78();
  v7 = MEMORY[0x26D641320](v5, v6);

  v0[31] = sub_2695A7594(0, &qword_28031D428, 0x277D59610);
  v8 = sub_2695B0E78();
  v9 = MEMORY[0x26D641320](v7, v8);
  v0[32] = v9;

  sub_2695B09F8();
  sub_2695B0BA8();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v2, v4);
  v13 = v11;
  sub_2695B09D8();
  sub_2695B0BA8();
  v15 = v14;
  v12(v1, v4);
  v16 = swift_task_alloc();
  v0[33] = v16;
  *v16 = v0;
  v16[1] = sub_2695A61A0;

  return MEMORY[0x2821377A8](v0 + 2, v9, v13, 0, v15, 0, 0, 1);
}

uint64_t sub_2695A61A0()
{
  v2 = *(*v1 + 256);
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_2695A74EC;
  }

  else
  {
    v3 = sub_2695A62CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2695A62CC()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2695B0DF8();
  sub_2695A75DC(&qword_28031D1F0, &qword_28031D1E0, &qword_2695B2560, MEMORY[0x277CF1760]);
  sub_2695B0D78();
  (*(v6 + 8))(v4, v5);
  v7 = sub_2695B0EA8();
  (*(v2 + 8))(v1, v3);
  v0[7] = v7;
  v0[35] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D200, &qword_2695B2578);
  v9 = sub_2695A75DC(&qword_28031D208, &qword_28031D200, &qword_2695B2578, MEMORY[0x277CE4870]);
  v10 = swift_task_alloc();
  v0[36] = v10;
  *v10 = v0;
  v10[1] = sub_2695A6498;

  return MEMORY[0x282200308](v0 + 8, v8, v9);
}

uint64_t sub_2695A6498()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_2695A73A0;
  }

  else
  {
    v2 = sub_2695A65AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2695A65D0()
{
  v145 = v0;
  v1 = v0[38];
  if (v1)
  {
    v2 = MEMORY[0x26D641900]();
    v3 = sub_2695B0E58();
    v4 = v3;
    v0[10] = MEMORY[0x277D84F90];
    v139 = v2;
    v140 = v1;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      goto LABEL_111;
    }

    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v7 = 0;
    v142 = MEMORY[0x277D84F90];
    while (v6 != v7)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x26D6416E0](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_104;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
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
        v6 = sub_2695B1278();
        goto LABEL_4;
      }

      v11 = sub_2695B0D98();
      if (!v11)
      {
        goto LABEL_133;
      }

      v14 = v11;
      v15 = [v11 wrapAsAnyEvent];

      ++v7;
      if (v15)
      {
        MEMORY[0x26D6414F0]();
        if (*((v141[10] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v141[10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2695B1058();
        }

        sub_2695B1068();
        v142 = v141[10];
        v7 = v10;
      }
    }

    v17 = v141;
    v16 = v142;
    v18 = MEMORY[0x277D84F90];
    v141[11] = MEMORY[0x277D84F90];
    if (v142 >> 62)
    {
      v143 = v142 & 0xFFFFFFFFFFFFFF8;
      v4 = sub_2695B1278();
      if (v4)
      {
LABEL_18:
        v5 = v142 & 0xC000000000000001;
        v19 = 0x279C65000;
        v137 = MEMORY[0x277D84F90];
        v138 = MEMORY[0x277D84F90];
        v20 = 0;
        if ((v142 & 0xC000000000000001) != 0)
        {
LABEL_43:
          v21 = MEMORY[0x26D6416E0](v20, v16);
          goto LABEL_25;
        }

        while (1)
        {
          if (v20 >= *(v143 + 16))
          {
            goto LABEL_106;
          }

          v21 = *(v16 + 8 * v20 + 32);
LABEL_25:
          v22 = v21;
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_105;
          }

          if ([v21 *(v19 + 3752)] == 6)
          {
            v24 = [v22 payload];
            if (v24)
            {
              v25 = v24;
              v26 = sub_2695B0B78();
              v28 = v27;

              v29 = sub_2695B0B68();
              sub_26958B49C(v26, v28);
            }

            else
            {
              v29 = 0;
            }

            v31 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

            v30 = [v31 event];
            v19 = 0x279C65000uLL;
            if (!v30)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v30 = v22;
          }

          [v30 *(v19 + 3752)];
          v32 = sub_2695B1158();
          if (!v32 || v17[29] != v32)
          {
            goto LABEL_20;
          }

          v33 = [v30 payload];
          if (v33)
          {
            v34 = v33;
            v35 = sub_2695B0B78();
            v37 = v36;

            v38 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v39 = sub_2695B0B68();
            v40 = v35;
            v41 = v37;
            v17 = v141;
            v16 = v142;
            sub_26958B49C(v40, v41);
            v42 = v38;
          }

          else
          {
            v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v39 = 0;
          }

          v43 = [v42 initWithData_];

          v19 = 0x279C65000;
          if (!v43)
          {
            goto LABEL_21;
          }

          objc_opt_self();
          v30 = v43;
          if (swift_dynamicCastObjCClass())
          {

            MEMORY[0x26D6414F0]();
            if (*((v17[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2695B1058();
              v16 = v142;
            }

            sub_2695B1068();
            v138 = v17[11];
            if (v23 == v4)
            {
LABEL_50:
              v51 = MEMORY[0x277D84F90];
              v17[12] = MEMORY[0x277D84F90];
              v136 = v51;
              v52 = 0;
              if (v5)
              {
LABEL_75:
                v53 = MEMORY[0x26D6416E0](v52, v16);
                goto LABEL_57;
              }

              while (1)
              {
                if (v52 >= *(v143 + 16))
                {
                  goto LABEL_108;
                }

                v53 = *(v16 + 8 * v52 + 32);
LABEL_57:
                v54 = v53;
                v55 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
                  goto LABEL_107;
                }

                if ([v53 *(v19 + 3752)] == 6)
                {
                  v56 = [v54 payload];
                  if (v56)
                  {
                    v57 = v56;
                    v58 = sub_2695B0B78();
                    v60 = v59;

                    v61 = sub_2695B0B68();
                    v62 = v58;
                    v17 = v141;
                    v63 = v60;
                    v19 = 0x279C65000;
                    sub_26958B49C(v62, v63);
                  }

                  else
                  {
                    v61 = 0;
                  }

                  v65 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

                  v64 = [v65 event];
                  v16 = v142;
                  if (!v64)
                  {
                    goto LABEL_53;
                  }
                }

                else
                {
                  v64 = v54;
                }

                [v64 *(v19 + 3752)];
                v66 = sub_2695B1158();
                if (!v66 || v17[30] != v66)
                {
LABEL_52:

LABEL_53:
                  ++v52;
                  if (v55 == v4)
                  {
                    goto LABEL_76;
                  }

                  if (v5)
                  {
                    goto LABEL_75;
                  }

                  continue;
                }

                v67 = [v64 payload];
                if (v67)
                {
                  v68 = v67;
                  v69 = sub_2695B0B78();
                  v71 = v70;

                  v72 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                  v73 = sub_2695B0B68();
                  v74 = v69;
                  v17 = v141;
                  sub_26958B49C(v74, v71);
                  v75 = v72;
                  v16 = v142;
                }

                else
                {
                  v75 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                  v73 = 0;
                }

                v76 = [v75 initWithData_];

                v19 = 0x279C65000uLL;
                if (!v76)
                {
                  goto LABEL_53;
                }

                objc_opt_self();
                v64 = v76;
                if (!swift_dynamicCastObjCClass())
                {
                  goto LABEL_52;
                }

                MEMORY[0x26D6414F0]();
                if (*((v17[12] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17[12] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_2695B1058();
                  v16 = v142;
                }

                sub_2695B1068();
                v136 = v17[12];
                if (v55 == v4)
                {
LABEL_76:
                  v77 = 0;
                  v17[13] = MEMORY[0x277D84F90];
                  while (2)
                  {
                    v78 = v77;
LABEL_80:
                    if (v5)
                    {
                      v79 = MEMORY[0x26D6416E0](v78, v16);
                    }

                    else
                    {
                      if (v78 >= *(v143 + 16))
                      {
                        goto LABEL_110;
                      }

                      v79 = *(v16 + 8 * v78 + 32);
                    }

                    v80 = v79;
                    v77 = v78 + 1;
                    if (__OFADD__(v78, 1))
                    {
                      goto LABEL_109;
                    }

                    if ([v79 *(v19 + 3752)] != 6)
                    {
                      v89 = v80;
                      goto LABEL_90;
                    }

                    v81 = [v80 payload];
                    if (v81)
                    {
                      v82 = v81;
                      v83 = sub_2695B0B78();
                      v85 = v84;

                      v86 = sub_2695B0B68();
                      v87 = v83;
                      v17 = v141;
                      v88 = v85;
                      v19 = 0x279C65000;
                      sub_26958B49C(v87, v88);
                    }

                    else
                    {
                      v86 = 0;
                    }

                    v90 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

                    v89 = [v90 event];
                    v16 = v142;
                    if (v89)
                    {
LABEL_90:
                      [v89 *(v19 + 3752)];
                      v91 = sub_2695B1158();
                      if (!v91 || v17[31] != v91)
                      {
                        goto LABEL_78;
                      }

                      v92 = [v89 payload];
                      if (v92)
                      {
                        v93 = v92;
                        v94 = sub_2695B0B78();
                        v96 = v95;

                        v97 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                        v98 = sub_2695B0B68();
                        v99 = v94;
                        v17 = v141;
                        sub_26958B49C(v99, v96);
                        v100 = v97;
                        v16 = v142;
                      }

                      else
                      {
                        v100 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                        v98 = 0;
                      }

                      v101 = [v100 initWithData_];

                      v19 = 0x279C65000;
                      if (v101)
                      {
                        objc_opt_self();
                        v89 = v101;
                        if (swift_dynamicCastObjCClass())
                        {

                          MEMORY[0x26D6414F0]();
                          if (*((v17[13] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17[13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            sub_2695B1058();
                            v16 = v142;
                          }

                          sub_2695B1068();
                          v137 = v17[13];
                          if (v77 == v4)
                          {
LABEL_102:
                            v102 = v137;
                            v103 = v138;
                            v104 = v136;
                            goto LABEL_114;
                          }

                          continue;
                        }

LABEL_78:
                      }
                    }

                    break;
                  }

                  ++v78;
                  if (v77 == v4)
                  {
                    goto LABEL_102;
                  }

                  goto LABEL_80;
                }

                ++v52;
                if (v5)
                {
                  goto LABEL_75;
                }
              }
            }

            ++v20;
            if (v5)
            {
              goto LABEL_43;
            }
          }

          else
          {
LABEL_20:

LABEL_21:
            ++v20;
            if (v23 == v4)
            {
              goto LABEL_50;
            }

            if (v5)
            {
              goto LABEL_43;
            }
          }
        }
      }
    }

    else
    {
      v143 = v142 & 0xFFFFFFFFFFFFFF8;
      v4 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_18;
      }
    }

    v141[13] = v18;
    v103 = v18;
    v102 = v18;
    v104 = v18;
LABEL_114:
    v105 = v17[18];

    sub_2695B0EB8();
    *v105 = v103;
    v105[1] = v104;
    v105[2] = v102;
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v106 = v17[17];
    v107 = v17[18];
    v108 = sub_2695B0EF8();
    __swift_project_value_buffer(v108, qword_2814B2250);
    sub_2695A7624(v107, v106);
    v109 = v141;
    v110 = sub_2695B0ED8();
    v111 = sub_2695B1128();
    v112 = os_log_type_enabled(v110, v111);
    v113 = v141[17];
    if (v112)
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v144 = v115;
      *v114 = 136315138;
      v116 = sub_2695A544C();
      v118 = v117;
      sub_2695A7688(v113);
      v119 = v116;
      v109 = v141;
      v120 = sub_26959CE44(v119, v118, &v144);

      *(v114 + 4) = v120;
      _os_log_impl(&dword_269588000, v110, v111, "AIMLInstrumentationStreamSource turn: %s", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
      MEMORY[0x26D641DE0](v115, -1, -1);
      MEMORY[0x26D641DE0](v114, -1, -1);
    }

    else
    {

      sub_2695A7688(v113);
    }

    v121 = v109[18];
    v122 = __swift_project_boxed_opaque_existential_1(v109[15], *(v109[15] + 24));
    v0 = *v122;
    v123 = *(*v122 + 32);
    v11 = sub_26959F1C4(v121);
    if (*(v123 + 16) == 1)
    {
      v124 = v0[2];
      v125 = __CFADD__(v124, 1);
      v126 = v124 + 1;
      if (v125)
      {
        __break(1u);
        goto LABEL_132;
      }

      v0[2] = v126;
    }

    if (*(v123 + 19) != 1)
    {
LABEL_125:
      v129 = v109[35];
      sub_2695A7688(v109[18]);
      v130 = __OFADD__(v129, 1);
      v131 = v129 + 1;
      if (!v130)
      {
        objc_autoreleasePoolPop(v139);

        v109[35] = v131;
        v132 = v109;
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D200, &qword_2695B2578);
        v134 = sub_2695A75DC(&qword_28031D208, &qword_28031D200, &qword_2695B2578, MEMORY[0x277CE4870]);
        v135 = swift_task_alloc();
        v132[36] = v135;
        *v135 = v132;
        v135[1] = sub_2695A6498;
        v11 = v132 + 8;
        v12 = v133;
        v13 = v134;

        return MEMORY[0x282200308](v11, v12, v13);
      }

      __break(1u);
      goto LABEL_130;
    }

    v127 = v0[3];
    v125 = __CFADD__(v127, 1);
    v128 = v127 + 1;
    if (!v125)
    {
      v0[3] = v128;
      goto LABEL_125;
    }

LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    return MEMORY[0x282200308](v11, v12, v13);
  }

  if (qword_2814B1FD8 != -1)
  {
LABEL_130:
    swift_once();
  }

  v44 = sub_2695B0EF8();
  __swift_project_value_buffer(v44, qword_2814B2250);
  v45 = sub_2695B0ED8();
  v46 = sub_2695B1128();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = v0[35];
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    *(v48 + 4) = v47;
    _os_log_impl(&dword_269588000, v45, v46, "AIMLInstrumentationStreamSource turn count: %ld", v48, 0xCu);
    v0 = v141;
    MEMORY[0x26D641DE0](v48, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v49 = v0[1];

  return v49();
}

uint64_t sub_2695A73A0()
{
  *(v0 + 72) = *(v0 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031CF98, qword_2695B2630);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2695A7434, 0, 0);
}

uint64_t sub_2695A7434()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2695A74EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2695A7594(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2695A75DC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2695A7624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationTurn(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2695A7688(uint64_t a1)
{
  v2 = type metadata accessor for ConversationTurn(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2695A7730()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2695A778C(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_2695B0A18();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2695A784C, 0, 0);
}

uint64_t sub_2695A784C()
{
  v25 = v0;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = sub_2695B0EF8();
  __swift_project_value_buffer(v5, qword_2814B2250);
  v6 = *(v2 + 16);
  v0[11] = v6;
  v0[12] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_2695B0ED8();
  v8 = sub_2695B1128();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_26959CE44(0xD000000000000026, 0x80000002695B3F70, &v24);
    *(v13 + 12) = 2080;
    sub_2695A88D8(&qword_28031D258, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v15 = sub_2695B1318();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_26959CE44(v15, v17, &v24);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_269588000, v7, v8, "SiriMetricsCalculator.%s calculationInterval: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v14, -1, -1);
    MEMORY[0x26D641DE0](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = type metadata accessor for SiriUsageMetricsTurnSink();
  v20 = swift_allocObject();
  v0[13] = v20;
  type metadata accessor for ValidTurnFeatureExtractor();
  v20[2] = 0;
  v20[3] = 0;
  swift_allocObject();
  v20[4] = sub_26959F1B4();
  v0[2] = v20;
  v0[5] = v19;
  v0[6] = &off_287A1A378;

  v21 = swift_task_alloc();
  v0[14] = v21;
  *v21 = v0;
  v21[1] = sub_2695A7B78;
  v22 = v0[7];

  return sub_2695A5DAC(v22, (v0 + 2));
}

uint64_t sub_2695A7B78()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2695A7E1C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_2695A7C94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2695A7C94()
{
  v1 = v0[13];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D350, &qword_2695B2D00);
  v5 = (type metadata accessor for SiriUsageMetrics(0) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2695B31F0;
  v9 = v8 + v7;
  v2(v9, v4, v3);
  *(v9 + v5[8]) = *(v1 + 16);
  *(v9 + v5[7]) = 1;
  v10 = v9 + v6;
  v2(v10, v4, v3);
  *(v10 + v5[8]) = *(v1 + 24);
  *(v10 + v5[7]) = 2;

  v11 = v0[1];

  return v11(v8);
}

uint64_t sub_2695A7E1C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2695A7E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2695B0A18();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_2695B0C78();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2695A7FD8, 0, 0);
}

uint64_t sub_2695A7FD8()
{
  v30 = v0;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_2695B0EF8();
  __swift_project_value_buffer(v5, qword_2814B2250);
  v6 = *(v3 + 16);
  v0[14] = v6;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_2695B0ED8();
  v8 = sub_2695B1128();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[13];
  v11 = v0[8];
  v12 = v0[9];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v13 = 136315394;
    *(v13 + 4) = sub_26959CE44(0xD000000000000020, 0x80000002695B3F40, &v29);
    *(v13 + 12) = 2080;
    sub_2695A88D8(&qword_28031D250, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v14 = sub_2695B1318();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_26959CE44(v14, v16, &v29);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_269588000, v7, v8, "SiriMetricsCalculator.%s calculationDate: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v28, -1, -1);
    MEMORY[0x26D641DE0](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[16] = v17;
  v19 = v0[3];
  sub_2695B0C28();
  if (v19)
  {
    v0[17] = MEMORY[0x277D84F90];
    v0[18] = 0;
    v20 = v0[14];
    v21 = v0[11];
    v22 = v0[10];
    v23 = v0[8];
    sub_2695B0C28();
    v20(v22, v21, v23);
    sub_2695B09E8();
    v24 = swift_task_alloc();
    v0[19] = v24;
    *v24 = v0;
    v24[1] = sub_2695A83BC;
    v25 = v0[7];
    v26 = sub_2695A778C;
  }

  else
  {
    (v0[16])(v0[12], v0[8]);

    v26 = v0[1];
    v25 = MEMORY[0x277D84F90];
  }

  return v26(v25);
}

uint64_t sub_2695A83BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {

    v4 = sub_2695A87E4;
  }

  else
  {
    v4 = sub_2695A84D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2695A84D8()
{
  v1 = v0[20];
  result = v0[17];
  v3 = *(v1 + 16);
  v4 = *(result + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0[17];
  if (isUniquelyReferenced_nonNull_native && v5 <= v7[3] >> 1)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v3;
  }

  else
  {
    v12 = v4;
  }

  v7 = sub_26959F464(isUniquelyReferenced_nonNull_native, v12, 1, v0[17]);
  if (!*(v1 + 16))
  {
LABEL_13:

    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_5:
  v8 = (v7[3] >> 1) - v7[2];
  result = type metadata accessor for SiriUsageMetrics(0);
  if (v8 < v3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  swift_arrayInitWithCopy();

  if (v3)
  {
    v9 = v7[2];
    v10 = __OFADD__(v9, v3);
    v11 = v9 + v3;
    if (!v10)
    {
      v7[2] = v11;
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    return result;
  }

LABEL_14:
  v13 = v0[16];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[3];
  v17 = v0[18] + 1;
  (*(v0[6] + 8))(v0[7], v0[5]);
  v13(v14, v15);
  if (v17 == v16)
  {
    (v0[16])(v0[12], v0[8]);

    v18 = v0[1];
    v19 = v7;
  }

  else
  {
    v20 = v0[18] + 1;
    v0[17] = v7;
    v0[18] = v20;
    v21 = v0[14];
    v22 = v0[11];
    v23 = v0[10];
    v24 = v0[8];
    sub_2695B0C28();
    v21(v23, v22, v24);
    sub_2695B09E8();
    v25 = swift_task_alloc();
    v0[19] = v25;
    *v25 = v0;
    v25[1] = sub_2695A83BC;
    v19 = v0[7];
    v18 = sub_2695A778C;
  }

  return v18(v19);
}

uint64_t sub_2695A87E4()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2695A88D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2695A8920(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2695A8968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2695A89C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v5 = sub_2695B0C78();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v41 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - v21;
  result = sub_2695AB068(v45, a3, &unk_28031D370, &unk_2695B2800);
  v24 = a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    v26 = v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v27 = *(v12 + 72);
    v44 = (v6 + 48);
    v45 = v27;
    v35 = (v6 + 8);
    v37 = (v6 + 56);
    v38 = (v6 + 32);
    v39 = v17;
    v40 = a3;
    v46 = v22;
    v43 = v20;
    do
    {
      sub_2695AB068(v26, v22, &unk_28031D370, &unk_2695B2800);
      sub_2695AB068(v22, v17, &unk_28031D370, &unk_2695B2800);
      v29 = *v44;
      if ((*v44)(v17, 1, v5) == 1)
      {
        sub_2695AB200(v17, &unk_28031D370, &unk_2695B2800);
        v28 = v43;
        sub_2695AB068(a3, v43, &unk_28031D370, &unk_2695B2800);
      }

      else
      {
        v42 = *v38;
        (v42)(v10, v17, v5);
        v30 = a3;
        v31 = v41;
        sub_2695AB068(v30, v41, &unk_28031D370, &unk_2695B2800);
        if (v29(v31, 1, v5) == 1)
        {
          sub_2695AB200(v31, &unk_28031D370, &unk_2695B2800);
          v28 = v43;
          (v42)(v43, v10, v5);
          (*v37)(v28, 0, 1, v5);
          v17 = v39;
          a3 = v40;
        }

        else
        {
          v32 = v36;
          v33 = v42;
          (v42)(v36, v31, v5);
          sub_269595A24();
          if (sub_2695B0F88())
          {
            v34 = v32;
          }

          else
          {
            v34 = v10;
          }

          (*v35)(v34, v5);
          v28 = v43;
          v33();
          (*v37)(v28, 0, 1, v5);
          v17 = v39;
          a3 = v40;
        }
      }

      v22 = v46;
      sub_2695AB200(v46, &unk_28031D370, &unk_2695B2800);
      sub_2695AB200(a3, &unk_28031D370, &unk_2695B2800);
      result = sub_2695AB190(v28, a3);
      v26 += v45;
      --v25;
    }

    while (v25);
  }

  return result;
}

uint64_t sub_2695A8E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  type metadata accessor for SegmentFlagLastSeenResult(0);
  v3[7] = swift_task_alloc();
  v4 = sub_2695B0C18();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2695A8F98, 0, 0);
}

uint64_t sub_2695A8F98()
{
  v36 = v0;
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[12];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_2695B0EF8();
  v0[15] = __swift_project_value_buffer(v5, qword_2814B2250);
  sub_2695AB068(v4, v1, &qword_28031D1B8, &qword_2695B2538);
  sub_2695AB068(v3, v2, &unk_28031D370, &unk_2695B2800);
  v6 = sub_2695B0ED8();
  v7 = sub_2695B1128();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  if (v8)
  {
    v34 = v7;
    v31 = v0[12];
    v10 = v0[11];
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v11 = 136315394;
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    v12 = sub_2695B0C78();
    sub_2695B1268();
    MEMORY[0x26D6414B0](3943982, 0xE300000000000000);
    sub_2695B1268();
    v13 = v0[2];
    v14 = v0[3];
    sub_2695AB200(v9, &qword_28031D1B8, &qword_2695B2538);
    v15 = sub_26959CE44(v13, v14, &v35);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_2695AB068(v31, v10, &unk_28031D370, &unk_2695B2800);
    v16 = *(v12 - 8);
    v17 = (*(v16 + 48))(v10, 1, v12);
    v18 = v0[11];
    if (v17 == 1)
    {
      sub_2695AB200(v0[11], &unk_28031D370, &unk_2695B2800);
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v23 = v0[9];
      v22 = v0[10];
      v32 = v0[8];
      sub_2695AC8F0(v22);
      v20 = sub_2695B0BB8();
      v19 = v24;
      (*(v23 + 8))(v22, v32);
      (*(v16 + 8))(v18, v12);
    }

    sub_2695AB200(v0[12], &unk_28031D370, &unk_2695B2800);
    v25 = sub_26959CE44(v20, v19, &v35);

    *(v11 + 14) = v25;
    _os_log_impl(&dword_269588000, v6, v34, "Starting CarPlaySegment.calculate(in dateRange: %s, lastSeen: %s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v33, -1, -1);
    MEMORY[0x26D641DE0](v11, -1, -1);
  }

  else
  {
    v21 = v0[12];

    sub_2695AB200(v21, &unk_28031D370, &unk_2695B2800);
    sub_2695AB200(v9, &qword_28031D1B8, &qword_2695B2538);
  }

  v26 = swift_task_alloc();
  v0[16] = v26;
  *v26 = v0;
  v26[1] = sub_2695A93C4;
  v27 = v0[5];
  v28 = v0[6];
  v29 = v0[4];

  return sub_2695A9698(v29, v27, v28);
}

uint64_t sub_2695A93C4()
{

  return MEMORY[0x2822009F8](sub_2695A94C0, 0, 0);
}

uint64_t sub_2695A94C0()
{
  v14 = v0;
  sub_2695AB0D0(v0[4], v0[7]);
  v1 = sub_2695B0ED8();
  v2 = sub_2695B1128();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[7];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_26959CE44(0xD000000000000017, 0x80000002695B3FA0, &v13);
    *(v5 + 12) = 2080;
    v7 = sub_2695A58D4();
    v9 = v8;
    sub_2695AB134(v4);
    v10 = sub_26959CE44(v7, v9, &v13);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_269588000, v1, v2, "Ended CarPlaySegment.%s -> %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v6, -1, -1);
    MEMORY[0x26D641DE0](v5, -1, -1);
  }

  else
  {

    sub_2695AB134(v4);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2695A9698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D360, &unk_2695B2B50);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D288, &qword_2695B28D0);
  v3[6] = swift_task_alloc();
  v4 = sub_2695B0C78();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D1B8, &qword_2695B2538);
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2695A9894, 0, 0);
}

uint64_t sub_2695A9894()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  sub_2695A1390(*(v0 + 32), v1);
  v3 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v4 = [v3 Connected];
  swift_unknownObjectRelease();
  sub_2695A2178(v4, v1, sub_2695AAFE8, 0, v2);

  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_2695A99C8;
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);

  return sub_2695AA004(v7, v6);
}

uint64_t sub_2695A99C8()
{

  return MEMORY[0x2822009F8](sub_2695A9AC4, 0, 0);
}

uint64_t sub_2695A9AC4()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[11];
  v39 = v0[15];
  v4 = v0[8];
  v40 = v0[12];
  v41 = v0[7];
  v5 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D430, &qword_2695B3338);
  v6 = *(v3 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2695B31F0;
  sub_2695AB068(v5, v8 + v7, &unk_28031D370, &unk_2695B2800);
  sub_2695AB068(v1, v8 + v7 + v6, &unk_28031D370, &unk_2695B2800);
  sub_2695A89C4(v39, v8, v2);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2695AB068(v2, v40, &unk_28031D370, &unk_2695B2800);
  if ((*(v4 + 48))(v40, 1, v41) == 1)
  {
    v9 = v0[17];
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[12];
    sub_2695AB200(v0[13], &unk_28031D370, &unk_2695B2800);
    sub_2695AB200(v11, &unk_28031D370, &unk_2695B2800);
    sub_2695AB200(v10, &unk_28031D370, &unk_2695B2800);
    sub_2695AB200(v9, &qword_28031D1B8, &qword_2695B2538);
    sub_2695AB200(v12, &unk_28031D370, &unk_2695B2800);
    v26 = v0[4];
    v27 = v0[2];
    SeenResult = type metadata accessor for SegmentFlagLastSeenResult(0);
    sub_2695AB068(v26, v27 + *(SeenResult + 20), &unk_28031D370, &unk_2695B2800);
LABEL_4:
    v29 = 7;
    goto LABEL_5;
  }

  v13 = v0[16];
  v14 = v0[6];
  v15 = v0[5];
  v16 = v0[3];
  v17 = *(v0[8] + 32);
  v17(v0[9], v0[12], v0[7]);
  v18 = *(v13 + 36);
  v19 = sub_2695B0C98();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  v20 = sub_2695B0D68();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = sub_2695AB4A4(v16 + v18, v14, v15);
  v22 = v0[17];
  v24 = v0[14];
  v23 = v0[15];
  v25 = v0[13];
  v32 = v0[6];
  sub_2695AB200(v0[5], &unk_28031D360, &unk_2695B2B50);
  sub_2695AB200(v32, &qword_28031D288, &qword_2695B28D0);
  sub_2695AB200(v25, &unk_28031D370, &unk_2695B2800);
  sub_2695AB200(v24, &unk_28031D370, &unk_2695B2800);
  sub_2695AB200(v23, &unk_28031D370, &unk_2695B2800);
  sub_2695AB200(v22, &qword_28031D1B8, &qword_2695B2538);
  v34 = v0[8];
  v33 = v0[9];
  v35 = v0[7];
  v36 = v0[2];
  if (v21 > 29)
  {
    (*(v34 + 8))(v0[9], v0[7]);
    v38 = type metadata accessor for SegmentFlagLastSeenResult(0);
    (*(v34 + 56))(v36 + *(v38 + 20), 1, 1, v35);
    goto LABEL_4;
  }

  v37 = *(type metadata accessor for SegmentFlagLastSeenResult(0) + 20);
  v17(v36 + v37, v33, v35);
  (*(v34 + 56))(v36 + v37, 0, 1, v35);
  v29 = 2;
LABEL_5:
  *v0[2] = v29;

  v30 = v0[1];

  return v30();
}

uint64_t sub_2695AA004(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_2695AA0A8;

  return sub_2695AA3C4(a1, a2);
}

uint64_t sub_2695AA0A8()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2695AA1DC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2695AA1DC()
{
  if (qword_2814B1FD8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_2695B0EF8();
  __swift_project_value_buffer(v2, qword_2814B2250);
  MEMORY[0x26D641C60](v1);
  v3 = sub_2695B0ED8();
  v4 = sub_2695B1138();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[4];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x26D641C60](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_269588000, v3, v4, "Failed to check SELF events for Siri in car use: %@", v7, 0xCu);
    sub_2695AB200(v8, &qword_28031D280, &unk_2695B28C0);
    MEMORY[0x26D641DE0](v8, -1, -1);
    MEMORY[0x26D641DE0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[2];
  v11 = sub_2695B0C78();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = v0[1];

  return v12();
}

uint64_t sub_2695AA3C4(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D438, &qword_2695B3348);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D440, &qword_2695B3350);
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2695AA540, 0, 0);
}

uint64_t sub_2695AA540()
{
  sub_2695B0E98();
  v1 = sub_2695AB260(0, &qword_28031D448, 0x277D587F0);
  sub_2695AAFF0();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2695B2770;
  v3 = sub_2695AB260(0, &qword_28031D450, 0x277D58638);
  v0[20] = v3;
  *(v2 + 32) = v3;
  v4 = MEMORY[0x26D641340](v1, v2);
  v0[21] = v4;

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_2695AA678;
  v6 = v0[19];
  v7 = v0[10];

  return sub_26958E1F4(v6, v4, v7);
}

uint64_t sub_2695AA678()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_2695AAF50;
  }

  else
  {
    v2 = sub_2695AA78C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2695AA78C()
{
  v1 = v0[16];
  v2 = sub_2695B0C78();
  v0[24] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[25] = v4;
  v0[26] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  sub_2695B10C8();
  v0[27] = 0;
  v0[28] = 0;
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_2695AA8A8;
  v6 = v0[11];

  return MEMORY[0x2822003E8](v0 + 8, 0, 0, v6);
}

uint64_t sub_2695AA8A8()
{

  return MEMORY[0x2822009F8](sub_2695AA9A4, 0, 0);
}

uint64_t sub_2695AA9A4()
{
  v66 = v1;
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = *(v1 + 224);
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_29;
    }

    v6 = v3;
    v7 = sub_2695B0E48();
    v2 = v7;
    v0 = *(v1 + 216);
    v60 = v6;
    v62 = v1;
    v57 = v5;
    v58 = v1 + 64;
    if (v7 >> 62)
    {
LABEL_30:
      v51 = sub_2695B1278();
      if (__OFADD__(v0, v51))
      {
        __break(1u);
        return MEMORY[0x2822003E8](v51, v52, v53, v54);
      }

      v56 = v0 + v51;
      v8 = sub_2695B1278();
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_32:

      v46 = v62;
LABEL_33:
      v46[27] = v56;
      v46[28] = v57;
      v55 = swift_task_alloc();
      v46[29] = v55;
      *v55 = v46;
      v55[1] = sub_2695AA8A8;
      v54 = v46[11];
      v51 = v58;
      v52 = 0;
      v53 = 0;

      return MEMORY[0x2822003E8](v51, v52, v53, v54);
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!__OFADD__(v0, v8))
    {
      v56 = v0 + v8;
      if (v8)
      {
LABEL_6:
        v9 = 0;
        v10 = v2 & 0xC000000000000001;
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        v0 = &unk_28031D458;
        v12 = 0x277D5A918;
        v63 = v2 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v10)
          {
            v13 = MEMORY[0x26D6416E0](v9, v2);
          }

          else
          {
            if (v9 >= *(v11 + 16))
            {
              goto LABEL_28;
            }

            v13 = *(v2 + 8 * v9 + 32);
          }

          v14 = v13;
          v15 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          sub_2695AB260(0, v0, v12);
          v16 = sub_2695B0DA8();
          if (!v16)
          {
            goto LABEL_8;
          }

          v17 = v16;
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (!v18)
          {
            break;
          }

          v19 = v8;
          v20 = v10;
          v21 = v2;
          v22 = v12;
          v23 = v0;
          v24 = [v18 bluetoothAudioDeviceCategory];

          v25 = v24 == 2;
          v0 = v23;
          v12 = v22;
          v2 = v21;
          v10 = v20;
          v8 = v19;
          v11 = v63;
          if (v25)
          {
            v46 = v62;
            v47 = v62[25];
            v48 = v62[24];
            v50 = v62[15];
            v49 = v62[16];

            sub_2695B0E38();

            v47(v50, 0, 1, v48);
            sub_2695A377C(v50, v49);
            goto LABEL_33;
          }

LABEL_9:
          ++v9;
          if (v15 == v8)
          {
            goto LABEL_32;
          }
        }

LABEL_8:
        goto LABEL_9;
      }

      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_37;
  }

  (*(*(v1 + 96) + 8))(*(v1 + 104), *(v1 + 88));
  if (qword_2814B1FD8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v26 = sub_2695B0EF8();
  __swift_project_value_buffer(v26, qword_2814B2250);
  v27 = sub_2695B0ED8();
  v28 = sub_2695B1128();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = *(v1 + 216);
    v30 = *(v1 + 224);
    v31 = *(v1 + 144);
    v64 = *(v1 + 152);
    v32 = *(v1 + 128);
    v59 = *(v1 + 168);
    v61 = *(v1 + 136);
    v33 = *(v1 + 120);
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v65 = v35;
    *v34 = 136315906;
    *(v34 + 4) = sub_26959CE44(0xD00000000000001ELL, 0x80000002695B3FC0, &v65);
    *(v34 + 12) = 2048;
    *(v34 + 14) = v30;
    *(v34 + 22) = 2048;
    *(v34 + 24) = v29;
    *(v34 + 32) = 2080;
    swift_beginAccess();
    sub_2695AB068(v32, v33, &unk_28031D370, &unk_2695B2800);
    v36 = sub_2695B0FC8();
    v38 = sub_26959CE44(v36, v37, &v65);

    *(v34 + 34) = v38;
    _os_log_impl(&dword_269588000, v27, v28, "%s Scanned %ld turns; %ld MHAssistantDaemonAudioBluetoothInfo events; result %s", v34, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D641DE0](v35, -1, -1);
    MEMORY[0x26D641DE0](v34, -1, -1);

    (*(v31 + 8))(v64, v61);
  }

  else
  {
    v40 = *(v1 + 144);
    v39 = *(v1 + 152);
    v41 = *(v1 + 136);

    (*(v40 + 8))(v39, v41);
  }

  v42 = *(v1 + 128);
  v43 = *(v1 + 72);
  swift_beginAccess();
  sub_2695AB068(v42, v43, &unk_28031D370, &unk_2695B2800);
  sub_2695AB200(v42, &unk_28031D370, &unk_2695B2800);

  v44 = *(v1 + 8);

  return v44();
}

uint64_t sub_2695AAF50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2695AAFF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D460, &qword_2695B3358);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_28031D468;
    v3 = &unk_2695B3360;
  }

  else
  {
    v2 = &unk_28031D470;
    v3 = &unk_2695B3368;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_2695AB068(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2695AB0D0(uint64_t a1, uint64_t a2)
{
  SeenResult = type metadata accessor for SegmentFlagLastSeenResult(0);
  (*(*(SeenResult - 8) + 16))(a2, a1, SeenResult);
  return a2;
}

uint64_t sub_2695AB134(uint64_t a1)
{
  SeenResult = type metadata accessor for SegmentFlagLastSeenResult(0);
  (*(*(SeenResult - 8) + 8))(a1, SeenResult);
  return a1;
}

uint64_t sub_2695AB190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2695AB200(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2695AB260(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2695AB2AC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2695AB3B0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

void (*sub_2695AB4A4(uint64_t a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v71 = a3;
  v74 = a2;
  v76 = a1;
  v4 = sub_2695B0A78();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v77 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D360, &unk_2695B2B50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v67 - v7;
  v9 = sub_2695B0D68();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v68 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v67 - v12;
  v13 = sub_2695B0C98();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v72 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D288, &qword_2695B28D0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D500, &qword_2695B33B8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v67 - v20;
  v81 = sub_2695B0D48();
  v22 = *(v81 - 8);
  v23 = MEMORY[0x28223BE20](v81);
  v80 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v84 = &v67 - v25;
  sub_2695AC4DC(v74, v18, &qword_28031D288, &qword_2695B28D0);
  v73 = v14;
  v74 = v13;
  v26 = 1;
  if ((*(v14 + 48))(v18, 1, v13) != 1)
  {
    v28 = v72;
    v27 = v73;
    v29 = v74;
    (*(v73 + 32))(v72, v18, v74);
    sub_2695B0CA8();
    (*(v27 + 8))(v28, v29);
    v26 = 0;
  }

  v30 = v22;
  v31 = v81;
  (*(v22 + 56))(v21, v26, 1, v81);
  v32 = *(v22 + 48);
  v33 = v32(v21, 1, v31);
  v75 = v3;
  if (v33 == 1)
  {
    v34 = v84;
    sub_2695B0D18();
    v35 = v32(v21, 1, v31);
    v36 = v34;
    v37 = v69;
    if (v35 != 1)
    {
      sub_2695AC544(v21, &qword_28031D500, &qword_2695B33B8);
    }
  }

  else
  {
    v36 = v84;
    (*(v22 + 32))(v84, v21, v31);
    v37 = v69;
  }

  v38 = *(v22 + 16);
  v39 = v80;
  v38(v80, v36, v31);
  sub_2695AC4DC(v71, v8, &unk_28031D360, &unk_2695B2B50);
  v40 = v70;
  if ((*(v37 + 48))(v8, 1, v70) == 1)
  {
    sub_2695AC544(v8, &unk_28031D360, &unk_2695B2B50);
  }

  else
  {
    v41 = v67;
    (*(v37 + 32))(v67, v8, v40);
    (*(v37 + 16))(v68, v41, v40);
    sub_2695B0D28();
    (*(v37 + 8))(v41, v40);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D238, &qword_2695B33C0);
  v42 = sub_2695B0D38();
  v43 = *(v42 - 8);
  v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_2695B2770;
  (*(v43 + 104))(v45 + v44, *MEMORY[0x277CC9968], v42);
  sub_269591E84(v45);
  swift_setDeallocating();
  (*(v43 + 8))(v45 + v44, v42);
  swift_deallocClassInstance();
  v46 = v77;
  sub_2695B0CD8();

  v47 = sub_2695B0A28();
  if (v48)
  {
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_2695B1208();
    MEMORY[0x26D6414B0](0xD00000000000003ELL, 0x80000002695B4030);
    sub_2695B0C78();
    sub_2695AC5A4();
    v49 = sub_2695B1318();
    v50 = v39;
    MEMORY[0x26D6414B0](v49);

    MEMORY[0x26D6414B0](0x203A6F74202CLL, 0xE600000000000000);
    v51 = sub_2695B1318();
    MEMORY[0x26D6414B0](v51);

    MEMORY[0x26D6414B0](0xD00000000000001CLL, 0x80000002695B4070);
    v52 = v72;
    sub_2695B0CB8();
    v53 = v74;
    sub_2695B1268();
    (*(v73 + 8))(v52, v53);
    v54 = v82;
    v55 = v83;
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v56 = sub_2695B0EF8();
    __swift_project_value_buffer(v56, qword_2814B2250);

    v57 = sub_2695B0ED8();
    v58 = sub_2695B1138();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v82 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_26959CE44(v54, v55, &v82);
      _os_log_impl(&dword_269588000, v57, v58, "%s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      v61 = v60;
      v31 = v81;
      MEMORY[0x26D641DE0](v61, -1, -1);
      v62 = v59;
      v50 = v80;
      MEMORY[0x26D641DE0](v62, -1, -1);
    }

    sub_2695AC448();
    swift_allocError();
    *v63 = v54;
    v63[1] = v55;
    swift_willThrow();
    (*(v78 + 8))(v46, v79);
    v64 = *(v30 + 8);
    v64(v50, v31);
    v64(v84, v31);
  }

  else
  {
    v64 = v47;
    (*(v78 + 8))(v46, v79);
    v65 = *(v30 + 8);
    v65(v39, v31);
    v65(v84, v31);
  }

  return v64;
}

uint64_t sub_2695ABE9C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v35 = a3;
  v4 = sub_2695B0C18();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_2695B0C98();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2695B0D48();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x277CC9830], v9);
  sub_2695B0CA8();
  (*(v10 + 8))(v12, v9);
  sub_2695B0CF8();
  v17 = sub_2695B0C78();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    v36 = v14;
    v19 = v13;
    sub_2695AC544(v8, &unk_28031D370, &unk_2695B2800);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_2695B1208();
    MEMORY[0x26D6414B0](0xD000000000000030, 0x80000002695B3FF0);
    sub_2695B0D38();
    sub_2695B1268();
    MEMORY[0x26D6414B0](0x3A65756C6176202CLL, 0xE900000000000020);
    v42 = a1;
    v20 = sub_2695B1318();
    MEMORY[0x26D6414B0](v20);

    MEMORY[0x26D6414B0](0x203A6F74202CLL, 0xE600000000000000);
    v21 = v37;
    sub_2695AC8F0(v37);
    v22 = sub_2695B0BB8();
    v24 = v23;
    (*(v38 + 8))(v21, v39);
    MEMORY[0x26D6414B0](v22, v24);

    MEMORY[0x26D6414B0](96, 0xE100000000000000);
    v25 = v40;
    v26 = v41;
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v27 = sub_2695B0EF8();
    __swift_project_value_buffer(v27, qword_2814B2250);

    v28 = sub_2695B0ED8();
    v29 = sub_2695B1138();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_26959CE44(v25, v26, &v40);
      _os_log_impl(&dword_269588000, v28, v29, "%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x26D641DE0](v31, -1, -1);
      MEMORY[0x26D641DE0](v30, -1, -1);
    }

    v32 = v36;
    sub_2695AC448();
    swift_allocError();
    *v33 = v25;
    v33[1] = v26;
    swift_willThrow();
    return (*(v32 + 8))(v16, v19);
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    return (*(v18 + 32))(v35, v8, v17);
  }
}

unint64_t sub_2695AC448()
{
  result = qword_28031D4F8;
  if (!qword_28031D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D4F8);
  }

  return result;
}

uint64_t sub_2695AC4AC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2695AC4DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2695AC544(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2695AC5A4()
{
  result = qword_28031D250;
  if (!qword_28031D250)
  {
    sub_2695B0C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D250);
  }

  return result;
}

uint64_t sub_2695AC5FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2695AC644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2695AC690(void *a1)
{
  if ([a1 state] == 1)
  {
    if (qword_2814B1FD8 != -1)
    {
      swift_once();
    }

    v2 = sub_2695B0EF8();
    __swift_project_value_buffer(v2, qword_2814B2250);
    v3 = a1;
    oslog = sub_2695B0ED8();
    v4 = sub_2695B1138();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v5 = 136315394;
      *(v5 + 4) = sub_26959CE44(0xD000000000000027, 0x80000002695B3DE0, &v11);
      *(v5 + 12) = 2112;
      v8 = [v3 error];
      if (v8)
      {
        v8 = _swift_stdlib_bridgeErrorToNSError();
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      *(v5 + 14) = v8;
      *v6 = v9;
      _os_log_impl(&dword_269588000, oslog, v4, "%s Failure during Biome sink: %@", v5, 0x16u);
      sub_2695AC888(v6);
      MEMORY[0x26D641DE0](v6, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x26D641DE0](v7, -1, -1);
      MEMORY[0x26D641DE0](v5, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2695AC888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D280, &unk_2695B28C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2695AC8F0@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D360, &unk_2695B2B50);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_2695B0D68();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2695B0C08();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2695B0BE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2695B0BC8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2695B0BD8();
  MEMORY[0x28223BE20](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9458], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9468], v8);
  (*(v5 + 104))(v21, *MEMORY[0x277CC9480], v27);
  sub_2695B0D58();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_2695B0BF8();
  }

  return result;
}

uint64_t SegmentsSummary.membershipCheckedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SegmentsSummary(0) + 24);
  v4 = sub_2695B0C78();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SegmentsSummary(uint64_t a1)
{
  result = qword_2814B1FE8;
  if (!qword_2814B1FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SegmentsSummary.init(activitySegment:segmentFlags:at:)@<X0>(_BYTE *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v104 = a2;
  v86 = a4;
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  v102 = *(EnablementStatus - 8);
  v103 = EnablementStatus;
  MEMORY[0x28223BE20](EnablementStatus);
  v97 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D278, &qword_2695B3490);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v94 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v96 = &v84 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v89 = &v84 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v84 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v87 = &v84 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v88 = &v84 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v84 = &v84 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v85 = &v84 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v84 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v84 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v84 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v84 - v36;
  v38 = sub_2695B0C78();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x28223BE20](v38);
  v98 = &v84 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v84 - v42;
  LOBYTE(a1) = *a1;
  v44 = *(v39 + 16);
  v95 = a3;
  v44(&v84 - v42, a3, v38);
  v45 = *(v39 + 56);
  v45(v37, 1, 1, v38);
  v100 = v35;
  v45(v35, 1, 1, v38);
  v99 = v32;
  v46 = v32;
  v47 = v84;
  v45(v46, 1, 1, v38);
  v92 = v29;
  v105 = v45;
  v45(v29, 1, 1, v38);
  (*(v102 + 56))(v101, 1, 1, v103);
  v48 = v86;
  *v86 = a1;
  v106 = type metadata accessor for SegmentsSummary(0);
  v91 = v43;
  sub_2695B0BA8();
  sub_2695B0B98();
  *(v48 + 1) = v104;
  v93 = v37;
  v49 = v37;
  v50 = v85;
  sub_269591050(v49, v47);
  v104 = *(v39 + 48);
  v51 = v104(v47, 1, v38);
  v52 = 1;
  if (v51 != 1)
  {
    v53 = v98;
    (*(v39 + 32))(v98, v47, v38);
    sub_2695B0BA8();
    sub_2695B0B98();
    (*(v39 + 8))(v53, v38);
    v52 = 0;
  }

  v54 = 1;
  v105(v50, v52, 1, v38);
  sub_2695AB190(v50, &v48[v106[7]]);
  v55 = v87;
  sub_269591050(v100, v87);
  v56 = v104(v55, 1, v38);
  v57 = v88;
  if (v56 != 1)
  {
    v58 = v98;
    (*(v39 + 32))(v98, v55, v38);
    sub_2695B0BA8();
    sub_2695B0B98();
    (*(v39 + 8))(v58, v38);
    v54 = 0;
  }

  v59 = 1;
  v105(v57, v54, 1, v38);
  v60 = v48;
  sub_2695AB190(v57, &v48[v106[8]]);
  v61 = v89;
  sub_269591050(v99, v89);
  v62 = v104(v61, 1, v38);
  v63 = v96;
  v64 = v92;
  v65 = v90;
  if (v62 != 1)
  {
    v66 = v98;
    (*(v39 + 32))(v98, v61, v38);
    sub_2695B0BA8();
    sub_2695B0B98();
    (*(v39 + 8))(v66, v38);
    v59 = 0;
  }

  v105(v65, v59, 1, v38);
  v67 = v60;
  sub_2695AB190(v65, &v60[v106[9]]);
  v68 = v94;
  sub_269591050(v64, v94);
  v69 = v104(v68, 1, v38);
  v70 = v101;
  v71 = v64;
  if (v69 == 1)
  {
    v72 = *(v39 + 8);
    v72(v95, v38);
    v73 = v63;
    sub_2695B0910(v71, &unk_28031D370, &unk_2695B2800);
    sub_2695B0910(v99, &unk_28031D370, &unk_2695B2800);
    sub_2695B0910(v100, &unk_28031D370, &unk_2695B2800);
    sub_2695B0910(v93, &unk_28031D370, &unk_2695B2800);
    v72(v91, v38);
    v74 = 1;
  }

  else
  {
    v75 = v98;
    (*(v39 + 32))(v98, v68, v38);
    sub_2695B0BA8();
    sub_2695B0B98();
    v76 = *(v39 + 8);
    v76(v95, v38);
    v76(v75, v38);
    v73 = v63;
    sub_2695B0910(v71, &unk_28031D370, &unk_2695B2800);
    sub_2695B0910(v99, &unk_28031D370, &unk_2695B2800);
    sub_2695B0910(v100, &unk_28031D370, &unk_2695B2800);
    sub_2695B0910(v93, &unk_28031D370, &unk_2695B2800);
    v76(v91, v38);
    v74 = 0;
  }

  v77 = v102;
  v105(v73, v74, 1, v38);
  sub_2695AB190(v73, &v67[v106[10]]);
  v78 = *(v77 + 48);
  v79 = v103;
  v80 = v78(v70, 1, v103);
  v81 = v97;
  if (v80 == 1)
  {
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D0A8, qword_2695B1F50);
    (*(*(v82 - 8) + 56))(v81, 1, 3, v82);
    if (v78(v70, 1, v79) != 1)
    {
      sub_2695B0910(v70, &qword_28031D278, &qword_2695B3490);
    }
  }

  else
  {
    sub_26958D54C(v70, v97);
  }

  return sub_26958D54C(v81, &v67[v106[11]]);
}

uint64_t SegmentsSummary.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v75 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v73 = &v69 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v72 = &v69 - v8;
  MEMORY[0x28223BE20](v7);
  v70 = &v69 - v9;
  v10 = sub_2695B0C18();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_2695B1208();
  MEMORY[0x26D6414B0](0xD000000000000021, 0x80000002695B4090);
  v14 = *v0;
  v79 = v11;
  if (v14 <= 4)
  {
    v25 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
    v27 = 0xED0000796C6E4F6ELL;
    v28 = 0x6F69746174636964;
    v29 = 0x80000002695B3730;
    v30 = 0xD000000000000018;
    if (v14 == 3)
    {
      v30 = 0xD000000000000016;
    }

    else
    {
      v29 = 0x80000002695B3750;
    }

    if (v14 != 2)
    {
      v28 = v30;
      v27 = v29;
    }

    if (v14)
    {
      v26 = 0x64656C6261736964;
      v25 = 0xE800000000000000;
    }

    if (v14 <= 1)
    {
      v23 = v26;
    }

    else
    {
      v23 = v28;
    }

    if (v14 <= 1)
    {
      v24 = v25;
    }

    else
    {
      v24 = v27;
    }
  }

  else
  {
    v15 = 0x80000002695B37D0;
    v16 = 0xD00000000000001ALL;
    v17 = 0x80000002695B37F0;
    v18 = 0xD00000000000001BLL;
    if (v14 != 9)
    {
      v18 = 0xD000000000000014;
      v17 = 0x80000002695B3810;
    }

    if (v14 != 8)
    {
      v16 = v18;
      v15 = v17;
    }

    v19 = 0x80000002695B3770;
    v20 = 0xD000000000000013;
    v21 = 0x80000002695B3790;
    v22 = 0xD000000000000012;
    if (v14 != 6)
    {
      v22 = 0xD000000000000016;
      v21 = 0x80000002695B37B0;
    }

    if (v14 != 5)
    {
      v20 = v22;
      v19 = v21;
    }

    if (v14 <= 7)
    {
      v23 = v20;
    }

    else
    {
      v23 = v16;
    }

    if (v14 <= 7)
    {
      v24 = v19;
    }

    else
    {
      v24 = v15;
    }
  }

  MEMORY[0x26D6414B0](v23, v24);

  MEMORY[0x26D6414B0](0xD000000000000010, 0x80000002695B40C0);
  sub_2695ADF8C(*(v0 + 1));
  v31 = MEMORY[0x26D641500]();
  v33 = v32;

  MEMORY[0x26D6414B0](v31, v33);

  MEMORY[0x26D6414B0](0x203A7461202CLL, 0xE600000000000000);
  v34 = type metadata accessor for SegmentsSummary(0);
  sub_2695AC8F0(v13);
  v35 = sub_2695B0BB8();
  v37 = v36;
  v39 = v79 + 8;
  v38 = *(v79 + 8);
  v38(v13, v10);
  MEMORY[0x26D6414B0](v35, v37);

  MEMORY[0x26D6414B0](0xD000000000000017, 0x80000002695B40E0);
  v71 = v34;
  v40 = *(v34 + 28);
  v74 = v0;
  v41 = v70;
  sub_269591050(&v1[v40], v70);
  v42 = sub_2695B0C78();
  v43 = *(v42 - 8);
  v69 = *(v43 + 48);
  v44 = v69(v41, 1, v42);
  v78 = v10;
  v79 = v39;
  v76 = v43;
  v77 = v38;
  if (v44 == 1)
  {
    sub_2695B0910(v41, &unk_28031D370, &unk_2695B2800);
    v45 = 0xE300000000000000;
    v46 = 7104878;
  }

  else
  {
    sub_2695AC8F0(v13);
    v46 = sub_2695B0BB8();
    v45 = v47;
    v38(v13, v10);
    (*(v43 + 8))(v41, v42);
  }

  MEMORY[0x26D6414B0](v46, v45);

  MEMORY[0x26D6414B0](0xD000000000000018, 0x80000002695B4100);
  v48 = v71;
  v49 = v72;
  v50 = v74;
  sub_269591050(&v74[*(v71 + 32)], v72);
  v51 = v69;
  v52 = v69(v49, 1, v42);
  v53 = v75;
  if (v52 == 1)
  {
    sub_2695B0910(v49, &unk_28031D370, &unk_2695B2800);
    v54 = 0xE300000000000000;
    v55 = 7104878;
  }

  else
  {
    sub_2695AC8F0(v13);
    v56 = sub_2695B0BB8();
    v54 = v57;
    v77(v13, v78);
    (*(v76 + 8))(v49, v42);
    v55 = v56;
  }

  MEMORY[0x26D6414B0](v55, v54);

  MEMORY[0x26D6414B0](0xD000000000000015, 0x80000002695B4120);
  v58 = v73;
  sub_269591050(&v50[*(v48 + 36)], v73);
  if (v51(v58, 1, v42) == 1)
  {
    sub_2695B0910(v58, &unk_28031D370, &unk_2695B2800);
    v59 = 0xE300000000000000;
    v60 = 7104878;
  }

  else
  {
    sub_2695AC8F0(v13);
    v61 = sub_2695B0BB8();
    v59 = v62;
    v77(v13, v78);
    (*(v76 + 8))(v58, v42);
    v60 = v61;
  }

  MEMORY[0x26D6414B0](v60, v59);

  MEMORY[0x26D6414B0](0xD000000000000017, 0x80000002695B4140);
  sub_269591050(&v50[*(v48 + 40)], v53);
  if (v51(v53, 1, v42) == 1)
  {
    sub_2695B0910(v53, &unk_28031D370, &unk_2695B2800);
    v63 = 0xE300000000000000;
    v64 = 7104878;
  }

  else
  {
    sub_2695AC8F0(v13);
    v65 = sub_2695B0BB8();
    v63 = v66;
    v77(v13, v78);
    (*(v76 + 8))(v53, v42);
    v64 = v65;
  }

  MEMORY[0x26D6414B0](v64, v63);

  MEMORY[0x26D6414B0](0xD000000000000019, 0x80000002695B4160);
  v67 = sub_26958BB30();
  MEMORY[0x26D6414B0](v67);

  MEMORY[0x26D6414B0](41, 0xE100000000000000);
  return v80;
}

uint64_t sub_2695ADF8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  v27 = *(a1 + 16);
  sub_2695AF51C(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  result = sub_2695B11B8();
  v6 = v27;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_34;
    }

    v11 = *(*(a1 + 48) + result);
    if (v11 <= 2)
    {
      if (*(*(a1 + 48) + result))
      {
        if (v11 == 1)
        {
          v13 = 0xE90000000000006ELL;
          v12 = 0x6F69746174636964;
        }

        else
        {
          v13 = 0xE300000000000000;
          v12 = 7496035;
        }
      }

      else
      {
        v12 = 0x6F7473754377656ELL;
        v13 = 0xEB0000000072656DLL;
      }
    }

    else if (*(*(a1 + 48) + result) > 4u)
    {
      if (v11 == 5)
      {
        v12 = 0x6D6F44736D6D6F63;
        v13 = 0xED0000746E616E69;
      }

      else
      {
        v12 = 0xD00000000000001ALL;
        v13 = 0x80000002695B36F0;
      }
    }

    else if (v11 == 3)
    {
      v12 = 0xD000000000000011;
      v13 = 0x80000002695B36C0;
    }

    else
    {
      v13 = 0xE700000000000000;
      v12 = 0x73646F50726961;
    }

    v14 = *(a1 + 36);
    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      sub_2695AF51C((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v14 = v25;
      result = v26;
    }

    *(v28 + 16) = v16 + 1;
    v17 = v28 + 16 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_35;
    }

    v4 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_36;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_37;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_2695B09B8(result, v14, 0);
          v6 = v27;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_2695B09B8(result, v14, 0);
      v6 = v27;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_2695AE2AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v33 = v9;
  v34 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = v11 | (v4 << 6);
    v16 = *(v3 + 48);
    v17 = *(v16 + v15);
    v18 = sub_2695A3B60(*(a2 + 40), *(v16 + v15));
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }

    v35 = v12;
    v21 = ~v19;
    while (1)
    {
      v22 = *(*(a2 + 48) + v20);
      if (v22 <= 2)
      {
        break;
      }

      if (*(*(a2 + 48) + v20) > 4u)
      {
        if (v22 == 5)
        {
          v23 = 0x6D6F44736D6D6F63;
          v24 = 0xED0000746E616E69;
          if (v17 <= 2)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v23 = 0xD00000000000001ALL;
          v24 = 0x80000002695B36F0;
          if (v17 <= 2)
          {
            goto LABEL_48;
          }
        }
      }

      else if (v22 == 3)
      {
        v23 = 0xD000000000000011;
        v24 = 0x80000002695B36C0;
        if (v17 <= 2)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v24 = 0xE700000000000000;
        v23 = 0x73646F50726961;
        if (v17 <= 2)
        {
          goto LABEL_48;
        }
      }

LABEL_28:
      v25 = 0xD000000000000011;
      v26 = 0xD00000000000001ALL;
      if (v17 == 5)
      {
        v26 = 0x6D6F44736D6D6F63;
      }

      v27 = 0xED0000746E616E69;
      if (v17 != 5)
      {
        v27 = 0x80000002695B36F0;
      }

      if (v17 != 3)
      {
        v25 = 0x73646F50726961;
      }

      v28 = 0x80000002695B36C0;
      if (v17 != 3)
      {
        v28 = 0xE700000000000000;
      }

      if (v17 <= 4)
      {
        v29 = v25;
      }

      else
      {
        v29 = v26;
      }

      if (v17 <= 4)
      {
        v30 = v28;
      }

      else
      {
        v30 = v27;
      }

      if (v23 == v29)
      {
        goto LABEL_58;
      }

LABEL_59:
      v32 = sub_2695B1328();

      if (v32)
      {
        goto LABEL_67;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return 0;
      }
    }

    if (!*(*(a2 + 48) + v20))
    {
      v23 = 0x6F7473754377656ELL;
      v24 = 0xEB0000000072656DLL;
      if (v17 <= 2)
      {
        goto LABEL_48;
      }

      goto LABEL_28;
    }

    if (v22 == 1)
    {
      v23 = 0x6F69746174636964;
    }

    else
    {
      v23 = 7496035;
    }

    if (v22 == 1)
    {
      v24 = 0xE90000000000006ELL;
    }

    else
    {
      v24 = 0xE300000000000000;
    }

    if (v17 > 2)
    {
      goto LABEL_28;
    }

LABEL_48:
    if (v17)
    {
      if (v17 == 1)
      {
        v31 = 0x6F69746174636964;
      }

      else
      {
        v31 = 7496035;
      }

      if (v17 == 1)
      {
        v30 = 0xE90000000000006ELL;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      if (v23 == v31)
      {
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    v30 = 0xEB0000000072656DLL;
    if (v23 != 0x6F7473754377656ELL)
    {
      goto LABEL_59;
    }

LABEL_58:
    if (v24 != v30)
    {
      goto LABEL_59;
    }

LABEL_67:
    v9 = v33;
    v3 = v34;
    v8 = v35;
  }

  while (v35);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2695AE674()
{
  v1 = *v0;
  sub_2695B1388();
  MEMORY[0x26D641850](v1);
  return sub_2695B13A8();
}

uint64_t sub_2695AE6E8(uint64_t a1)
{
  v2 = *v1;
  sub_2695B1388();
  MEMORY[0x26D641850](v2);
  return sub_2695B13A8();
}

uint64_t sub_2695AE72C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0xD000000000000015;
    if (v1 == 6)
    {
      v4 = 0xD000000000000013;
    }

    if (v1 == 4)
    {
      v5 = 0xD000000000000014;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x7974697669746361;
    if (*v0)
    {
      v2 = 0x46746E656D676573;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000013;
    }
  }
}

uint64_t sub_2695AE844@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2695B066C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2695AE884(uint64_t a1)
{
  v2 = sub_2695AFFD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2695AE8C0(uint64_t a1)
{
  v2 = sub_2695AFFD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SegmentsSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D508, &qword_2695B3498);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2695AFFD8();
  sub_2695B13C8();
  LOBYTE(v11) = *v3;
  v12 = 0;
  sub_2695B002C();
  sub_2695B1308();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D520, &qword_2695B34A0);
    sub_2695B0128(&qword_28031D528, sub_2695B0080, MEMORY[0x277D83B50]);
    sub_2695B1308();
    type metadata accessor for SegmentsSummary(0);
    LOBYTE(v11) = 2;
    sub_2695B0C78();
    sub_2695B0970(&qword_28031D0F0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2695B1308();
    LOBYTE(v11) = 3;
    sub_2695B12F8();
    LOBYTE(v11) = 4;
    sub_2695B12F8();
    LOBYTE(v11) = 5;
    sub_2695B12F8();
    LOBYTE(v11) = 6;
    sub_2695B12F8();
    LOBYTE(v11) = 7;
    type metadata accessor for SiriFirstEnablementStatus(0);
    sub_2695B0970(&qword_28031D538, type metadata accessor for SiriFirstEnablementStatus, &unk_2695B2014);
    sub_2695B1308();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SegmentsSummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  EnablementStatus = type metadata accessor for SiriFirstEnablementStatus(0);
  MEMORY[0x28223BE20](EnablementStatus);
  v37 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v38 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v39 = v34 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v40 = v34 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v34 - v11;
  v13 = sub_2695B0C78();
  v41 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D540, &qword_2695B34A8);
  v17 = *(v16 - 8);
  v42 = v16;
  v43 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = v34 - v18;
  v20 = type metadata accessor for SegmentsSummary(0);
  MEMORY[0x28223BE20](v20);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_2695AFFD8();
  v44 = v19;
  v24 = v45;
  sub_2695B13B8();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v25 = v15;
  v45 = v12;
  v48 = 0;
  sub_2695B00D4();
  v26 = v42;
  sub_2695B12C8();
  *v22 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D520, &qword_2695B34A0);
  v48 = 1;
  sub_2695B0128(&qword_28031D550, sub_2695B01A0, MEMORY[0x277D83B70]);
  sub_2695B12C8();
  v27 = v43;
  *(v22 + 1) = v47;
  LOBYTE(v47) = 2;
  v34[2] = sub_2695B0970(&qword_28031D138, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_2695B12C8();
  (*(v41 + 32))(&v22[v20[6]], v25, v13);
  LOBYTE(v47) = 3;
  v28 = v45;
  v34[1] = 0;
  sub_2695B12B8();
  sub_2695AB190(v28, &v22[v20[7]]);
  LOBYTE(v47) = 4;
  v29 = v40;
  sub_2695B12B8();
  sub_2695AB190(v29, &v22[v20[8]]);
  LOBYTE(v47) = 5;
  v30 = v39;
  sub_2695B12B8();
  sub_2695AB190(v30, &v22[v20[9]]);
  LOBYTE(v47) = 6;
  v31 = v38;
  sub_2695B12B8();
  sub_2695AB190(v31, &v22[v20[10]]);
  LOBYTE(v47) = 7;
  sub_2695B0970(&qword_28031D560, type metadata accessor for SiriFirstEnablementStatus, &unk_2695B1FEC);
  v32 = v37;
  sub_2695B12C8();
  (*(v27 + 8))(v44, v26);
  sub_26958D54C(v32, &v22[v20[11]]);
  sub_2695B01F4(v22, v35);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return sub_2695B0258(v22);
}

char *sub_2695AF51C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2695AF53C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2695AF53C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D590, &qword_2695B36B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s16SiriUserSegments0C7SummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2695B0C78();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v81 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28031D370, &unk_2695B2800);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v78 = &v69[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v69[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v69[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v69[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28031D580, &unk_2695B36A8);
  v19 = MEMORY[0x28223BE20](v18);
  v79 = &v69[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v80 = &v69[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v69[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v69[-v26];
  if ((sub_2695A45C0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((sub_2695AE2AC(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_31;
  }

  v76 = v12;
  v28 = v18;
  v29 = type metadata accessor for SegmentsSummary(0);
  if ((sub_2695B0C48() & 1) == 0)
  {
    goto LABEL_31;
  }

  v77 = v4;
  v30 = a1;
  v31 = v5;
  v72 = v29;
  v73 = v30;
  v32 = *(v29 + 28);
  v33 = v28;
  v34 = *(v28 + 48);
  sub_269591050(v30 + v32, v27);
  v74 = a2;
  v35 = a2 + v32;
  v36 = v77;
  sub_269591050(v35, &v27[v34]);
  v75 = v31;
  v37 = *(v31 + 48);
  if (v37(v27, 1, v36) == 1)
  {
    if (v37(&v27[v34], 1, v36) == 1)
    {
      sub_2695B0910(v27, &unk_28031D370, &unk_2695B2800);
      goto LABEL_11;
    }

LABEL_9:
    v38 = v27;
LABEL_30:
    sub_2695B0910(v38, &qword_28031D580, &unk_2695B36A8);
    goto LABEL_31;
  }

  sub_269591050(v27, v17);
  if (v37(&v27[v34], 1, v36) == 1)
  {
    (*(v75 + 8))(v17, v36);
    goto LABEL_9;
  }

  v71 = v28;
  v39 = v75;
  v40 = v37;
  v41 = v81;
  (*(v75 + 32))(v81, &v27[v34], v36);
  sub_2695B0970(&qword_28031D588, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v70 = sub_2695B0FA8();
  v42 = v39;
  v33 = v71;
  v43 = *(v42 + 8);
  v44 = v41;
  v37 = v40;
  v43(v44, v77);
  v43(v17, v77);
  v36 = v77;
  sub_2695B0910(v27, &unk_28031D370, &unk_2695B2800);
  if ((v70 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v45 = v72;
  v46 = v73;
  v47 = v72[8];
  v48 = *(v33 + 48);
  sub_269591050(v73 + v47, v25);
  sub_269591050(v74 + v47, &v25[v48]);
  if (v37(v25, 1, v36) == 1)
  {
    if (v37(&v25[v48], 1, v36) == 1)
    {
      sub_2695B0910(v25, &unk_28031D370, &unk_2695B2800);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  sub_269591050(v25, v15);
  if (v37(&v25[v48], 1, v36) == 1)
  {
    (*(v75 + 8))(v15, v36);
LABEL_16:
    v38 = v25;
    goto LABEL_30;
  }

  v49 = v75;
  v50 = v81;
  (*(v75 + 32))(v81, &v25[v48], v36);
  sub_2695B0970(&qword_28031D588, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v51 = sub_2695B0FA8();
  v52 = *(v49 + 8);
  v46 = v73;
  v52(v50, v36);
  v52(v15, v36);
  v45 = v72;
  sub_2695B0910(v25, &unk_28031D370, &unk_2695B2800);
  if ((v51 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  v53 = v45[9];
  v54 = *(v33 + 48);
  v55 = v80;
  sub_269591050(v46 + v53, v80);
  sub_269591050(v74 + v53, &v55[v54]);
  if (v37(v55, 1, v36) != 1)
  {
    v56 = v76;
    sub_269591050(v55, v76);
    if (v37(&v55[v54], 1, v36) != 1)
    {
      v57 = v75;
      v58 = v81;
      (*(v75 + 32))(v81, &v55[v54], v36);
      sub_2695B0970(&qword_28031D588, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      LODWORD(v77) = sub_2695B0FA8();
      v59 = *(v57 + 8);
      v46 = v73;
      v59(v58, v36);
      v59(v56, v36);
      sub_2695B0910(v55, &unk_28031D370, &unk_2695B2800);
      if ((v77 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    (*(v75 + 8))(v56, v36);
LABEL_29:
    v38 = v55;
    goto LABEL_30;
  }

  if (v37(&v55[v54], 1, v36) != 1)
  {
    goto LABEL_29;
  }

  sub_2695B0910(v55, &unk_28031D370, &unk_2695B2800);
LABEL_24:
  v60 = v45[10];
  v61 = *(v33 + 48);
  v55 = v79;
  sub_269591050(v46 + v60, v79);
  sub_269591050(v74 + v60, &v55[v61]);
  if (v37(v55, 1, v36) == 1)
  {
    if (v37(&v55[v61], 1, v36) == 1)
    {
      sub_2695B0910(v55, &unk_28031D370, &unk_2695B2800);
LABEL_34:
      v63 = sub_26958D5F4(v46 + v45[11], v74 + v45[11]);
      return v63 & 1;
    }

    goto LABEL_29;
  }

  v62 = v78;
  sub_269591050(v55, v78);
  if (v37(&v55[v61], 1, v36) == 1)
  {
    (*(v75 + 8))(v62, v36);
    goto LABEL_29;
  }

  v65 = v75;
  v66 = v81;
  (*(v75 + 32))(v81, &v55[v61], v36);
  sub_2695B0970(&qword_28031D588, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v67 = sub_2695B0FA8();
  v68 = *(v65 + 8);
  v68(v66, v36);
  v68(v62, v36);
  sub_2695B0910(v55, &unk_28031D370, &unk_2695B2800);
  v45 = v72;
  if (v67)
  {
    goto LABEL_34;
  }

LABEL_31:
  v63 = 0;
  return v63 & 1;
}

unint64_t sub_2695AFFD8()
{
  result = qword_28031D510;
  if (!qword_28031D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D510);
  }

  return result;
}

unint64_t sub_2695B002C()
{
  result = qword_28031D518;
  if (!qword_28031D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D518);
  }

  return result;
}

unint64_t sub_2695B0080()
{
  result = qword_28031D530;
  if (!qword_28031D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D530);
  }

  return result;
}

unint64_t sub_2695B00D4()
{
  result = qword_28031D548;
  if (!qword_28031D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D548);
  }

  return result;
}

uint64_t sub_2695B0128(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28031D520, &qword_2695B34A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2695B01A0()
{
  result = qword_28031D558;
  if (!qword_28031D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D558);
  }

  return result;
}

uint64_t sub_2695B01F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SegmentsSummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2695B0258(uint64_t a1)
{
  v2 = type metadata accessor for SegmentsSummary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2695B02DC(uint64_t a1)
{
  sub_2695B03A4(319);
  if (v1 <= 0x3F)
  {
    sub_2695B0C78();
    if (v2 <= 0x3F)
    {
      sub_2695A5D44(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SiriFirstEnablementStatus(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2695B03A4(uint64_t a1)
{
  if (!qword_2814B1E20)
  {
    sub_26959EB50();
    v1 = sub_2695B1118();
    if (!v2)
    {
      atomic_store(v1, &qword_2814B1E20);
    }
  }
}

uint64_t getEnumTagSinglePayload for SegmentsSummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentsSummary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2695B0568()
{
  result = qword_28031D568;
  if (!qword_28031D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D568);
  }

  return result;
}

unint64_t sub_2695B05C0()
{
  result = qword_28031D570;
  if (!qword_28031D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D570);
  }

  return result;
}

unint64_t sub_2695B0618()
{
  result = qword_28031D578;
  if (!qword_28031D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28031D578);
  }

  return result;
}

uint64_t sub_2695B066C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEF746E656D676553;
  if (v4 || (sub_2695B1328() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46746E656D676573 && a2 == 0xEC0000007367616CLL || (sub_2695B1328() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002695B4180 == a2 || (sub_2695B1328() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002695B41A0 == a2 || (sub_2695B1328() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002695B41C0 == a2 || (sub_2695B1328() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002695B41E0 == a2 || (sub_2695B1328() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002695B4200 == a2 || (sub_2695B1328() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002695B4220 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_2695B1328();

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

uint64_t sub_2695B0910(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2695B0970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2695B09B8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}