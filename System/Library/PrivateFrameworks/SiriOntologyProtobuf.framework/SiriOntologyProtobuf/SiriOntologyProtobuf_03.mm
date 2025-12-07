uint64_t sub_2685DC2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v7 = v6;
  v11 = a4 + 64;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (v14)
  {
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = *(*(a4 + 48) + ((v16 << 9) | (8 * v19)));
    if (v20 >= a2 && v20 < a3)
    {
      v35[0] = v17;
      v32 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2685C4674(0, *(v17 + 2) + 1, 1);
        v17 = v35[0];
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_2685C4674((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
        v17 = v35[0];
      }

      *(v17 + 2) = v23;
      *&v17[8 * v22 + 32] = v20;
      a3 = v32;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  v35[0] = v17;

  sub_2685C3CDC(v35);
  v15 = v7;
  if (v7)
  {
    goto LABEL_28;
  }

  v24 = v35[0];
  v25 = *(v35[0] + 2);
  if (!v25)
  {
LABEL_23:
  }

  v26 = 0;
  while (v26 < *(v24 + 2))
  {
    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v27 = sub_2685B351C(*&v24[8 * v26 + 32]);
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_2685B1724(*(a4 + 56) + 40 * v27, v35);
    v30 = v36;
    v29 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v29 + 48))(a1, a5, v38, v30, v29);
    ++v26;
    __swift_destroy_boxed_opaque_existential_1(v35);
    if (v25 == v26)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  MEMORY[0x26D61DC90](v15);

  __break(1u);
  return result;
}

uint64_t sub_2685DC564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v10)
  {
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = *(*(a4 + 48) + ((v12 << 9) | (8 * v15)));
    if (v16 >= a2 && v16 < a3)
    {
      v31[0] = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2685C4674(0, *(v13 + 2) + 1, 1);
        v13 = v31[0];
      }

      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v28 = *(v13 + 2);
        v29 = v18 + 1;
        sub_2685C4674((v17 > 1), v18 + 1, 1);
        v18 = v28;
        v19 = v29;
        v13 = v31[0];
      }

      *(v13 + 2) = v19;
      *&v13[8 * v18 + 32] = v16;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  v31[0] = v13;

  sub_2685C3CDC(v31);
  v10 = v30;
  if (v30)
  {
    goto LABEL_28;
  }

  v20 = v31[0];
  v21 = *(v31[0] + 2);
  if (!v21)
  {
  }

  v22 = 0;
  while (v22 < *(v20 + 2))
  {
    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v23 = sub_2685B351C(*&v20[8 * v22 + 32]);
    if ((v24 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_2685B1724(*(a4 + 56) + 40 * v23, v31);
    v25 = v32;
    v26 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v26 + 48))(v34, &type metadata for HashVisitor, &off_287928AE0, v25, v26);
    ++v22;
    __swift_destroy_boxed_opaque_existential_1(v31);
    if (v21 == v22)
    {
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  MEMORY[0x26D61DC90](v10);

  __break(1u);
  return result;
}

uint64_t sub_2685DC83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v7 = v6;
  v11 = a4 + 64;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (v14)
  {
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = *(*(a4 + 48) + ((v16 << 9) | (8 * v19)));
    if (v20 >= a2 && v20 < a3)
    {
      v35[0] = v17;
      v32 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2685C4674(0, *(v17 + 2) + 1, 1);
        v17 = v35[0];
      }

      v22 = *(v17 + 2);
      v21 = *(v17 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_2685C4674((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
        v17 = v35[0];
      }

      *(v17 + 2) = v23;
      *&v17[8 * v22 + 32] = v20;
      a3 = v32;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  v35[0] = v17;

  sub_2685C3CDC(v35);
  v15 = v7;
  if (v7)
  {
    goto LABEL_28;
  }

  v24 = v35[0];
  v25 = *(v35[0] + 2);
  if (!v25)
  {
  }

  v26 = 0;
  while (v26 < *(v24 + 2))
  {
    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v27 = sub_2685B351C(*&v24[8 * v26 + 32]);
    if ((v28 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_2685B1724(*(a4 + 56) + 40 * v27, v35);
    v29 = v36;
    v30 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v30 + 48))(a1, a5, v38, v29, v30);
    ++v26;
    __swift_destroy_boxed_opaque_existential_1(v35);
    if (v25 == v26)
    {
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  MEMORY[0x26D61DC90](v15);

  __break(1u);
  return result;
}

__n128 sub_2685DCAD0(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a1;
  v5 = a1[3];
  v50 = a1[2];
  v51 = v5;
  v52 = *(a1 + 8);
  v6 = a1[1];
  v48 = *a1;
  v49 = v6;
  v7 = *(a2 + 16);
  if (v7)
  {
    v30 = a3;
    v31 = a4;
    MEMORY[0x26D61D8F0](1);
    v45 = v50;
    v46 = v51;
    v47 = v52;
    v43 = v48;
    v44 = v49;
    v9 = v7 - 1;
    for (i = (a2 + 48); ; i += 3)
    {
      v11 = *(i - 2);
      v12 = *(i - 1);
      v13 = *i;
      v40 = v45;
      v41 = v46;
      v42 = v47;
      v38 = v43;
      v39 = v44;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = *(v13 + 32);
      v17 = *(v13 + 40);
      if ((~v16 & 0x3000000000000000) == 0 && v17 == 255)
      {
        goto LABEL_21;
      }

      v18 = (v16 >> 60) & 3 | (4 * (v17 & 1));
      if (v18 > 2)
      {
        break;
      }

      if (!v18)
      {
        MEMORY[0x26D61D8F0](1);
        if (v15)
        {
          v20 = 0;
        }

        else
        {
          v20 = v14;
        }

        MEMORY[0x26D61D8F0](v20);
        goto LABEL_21;
      }

      if (v18 != 1)
      {
        MEMORY[0x26D61D8F0](3);
        sub_2685BA80C(v11, v12);

        sub_2685D10A0(v14, v15, v16, v17);
        sub_268689A24();
LABEL_24:
        sub_2685D1170(v14, v15, v16, v17);
        goto LABEL_37;
      }

      MEMORY[0x26D61D8F0](2);
      if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v19 = v14;
      }

      else
      {
        v19 = 0;
      }

      MEMORY[0x26D61D920](v19);
      sub_2685BA80C(v11, v12);

LABEL_37:
      v24 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v24 == 2 && *(v11 + 16) != *(v11 + 24))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v24)
        {
          if (v11 == v11 >> 32)
          {
            goto LABEL_46;
          }

LABEL_45:
          sub_268689844();
          goto LABEL_46;
        }

        if ((v12 & 0xFF000000000000) != 0)
        {
          goto LABEL_45;
        }
      }

LABEL_46:
      sub_2685B593C(v11, v12);

      if (!v9)
      {
        v50 = v40;
        v51 = v41;
        v52 = v42;
        v48 = v38;
        v49 = v39;
        a4 = v31;
        v4 = a1;
        a3 = v30;
        goto LABEL_49;
      }

      v45 = v40;
      v46 = v41;
      v47 = v42;
      v43 = v38;
      v44 = v39;
      --v9;
    }

    if (v18 == 3)
    {
      MEMORY[0x26D61D8F0](4);
      sub_268689EB4();
LABEL_21:
      sub_2685BA80C(v11, v12);

      goto LABEL_37;
    }

    if (v18 == 4)
    {
      MEMORY[0x26D61D8F0](5);
      v35 = v40;
      v36 = v41;
      v37 = v42;
      v33 = v38;
      v34 = v39;
      if (*(v14 + 16))
      {
        MEMORY[0x26D61D8F0](1);
        sub_2685BA80C(v11, v12);

        sub_2685D10A0(v14, v15, v16, v17);
        sub_268612CF4(&v33, v14);
      }

      else
      {
        sub_2685BA80C(v11, v12);

        sub_2685D10A0(v14, v15, v16, v17);
      }

      v21 = v16 >> 62;
      if ((v16 >> 62) > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_36;
        }

        v22 = *(v15 + 16);
        v23 = *(v15 + 24);
      }

      else
      {
        if (!v21)
        {
          if ((v16 & 0xFF000000000000) == 0)
          {
            goto LABEL_36;
          }

LABEL_35:
          sub_268689844();
LABEL_36:
          sub_2685D1170(v14, v15, v16, v17);
          v40 = v35;
          v41 = v36;
          v42 = v37;
          v38 = v33;
          v39 = v34;
          goto LABEL_37;
        }

        v22 = v15;
        v23 = v15 >> 32;
      }

      if (v22 != v23)
      {
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    MEMORY[0x26D61D8F0](6);
    sub_2685BA80C(v11, v12);

    sub_2685D10A0(v14, v15, v16, v17);
    sub_2685DCAD0(&v38, v14, v15, v16 & 0xCFFFFFFFFFFFFFFFLL);
    goto LABEL_24;
  }

LABEL_49:
  v25 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v25 != 2)
    {
      goto LABEL_58;
    }

    v26 = *(a3 + 16);
    v27 = *(a3 + 24);
  }

  else
  {
    if (!v25)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    v26 = a3;
    v27 = a3 >> 32;
  }

  if (v26 != v27)
  {
LABEL_57:
    sub_268689844();
  }

LABEL_58:
  v28 = v51;
  v4[2] = v50;
  v4[3] = v28;
  *(v4 + 8) = v52;
  result = v49;
  *v4 = v48;
  v4[1] = result;
  return result;
}

__n128 sub_2685DCF24(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v10 = a1[2];
  v11 = a1[3];
  v12 = *(a1 + 8);
  v8 = *a1;
  v9 = a1[1];
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((a3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = a2;
    v6 = a2 >> 32;
  }

  if (v5 != v6)
  {
LABEL_9:
    sub_268689844();
  }

LABEL_10:
  a1[2] = v10;
  a1[3] = v11;
  *(a1 + 8) = v12;
  result = v9;
  *a1 = v8;
  a1[1] = v9;
  return result;
}

__n128 sub_2685DCFC0(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a1;
  v8 = a1[3];
  v66 = a1[2];
  v67 = v8;
  v68 = *(a1 + 8);
  v9 = a1[1];
  v64 = *a1;
  v65 = v9;
  v41 = *(a2 + 16);
  if (v41)
  {
    v36 = a5;
    MEMORY[0x26D61D8F0](999);
    v11 = 0;
    v61 = v66;
    v62 = v67;
    v63 = v68;
    v59 = v64;
    v60 = v65;
    v40 = a2 + 32;
    while (1)
    {
      v52 = v11;
      v12 = (v40 + 120 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[2];
      v16 = v12[4];
      v49 = *(v12 + 48);
      v46 = v12[5];
      v47 = v12[7];
      v48 = v12[9];
      v50 = *(v12 + 64);
      v51 = *(v12 + 80);
      v17 = v12[11];
      v18 = v12[12];
      v19 = v12[14];
      v58 = v63;
      v56 = v61;
      v57 = v62;
      v54 = v59;
      v55 = v60;
      v20 = *(*v12 + 16);
      v53 = v18;
      if (v20)
      {
        MEMORY[0x26D61D8F0](2);

        v45 = v13;
        v43 = v15;
        sub_2685BA80C(v13, v15);
        v44 = v16;

        v42 = v17;
        sub_268614834(v17, v18);

        v21 = v20 - 1;
        v22 = (v14 + 64);
        v23 = v52;
        while (1)
        {
          v24 = *(v22 - 4);
          v25 = *(v22 - 3);
          v26 = *v22;
          if (*(v22 - 1))
          {
            break;
          }

          sub_2685BA80C(v24, v25);
          if (v26 != 2)
          {
            goto LABEL_7;
          }

LABEL_8:
          v27 = v25 >> 62;
          if ((v25 >> 62) > 1)
          {
            if (v27 == 2 && *(v24 + 16) != *(v24 + 24))
            {
              goto LABEL_18;
            }
          }

          else
          {
            if (v27)
            {
              if (v24 == v24 >> 32)
              {
                goto LABEL_19;
              }

LABEL_18:
              sub_268689844();
              goto LABEL_19;
            }

            if ((v25 & 0xFF000000000000) != 0)
            {
              goto LABEL_18;
            }
          }

LABEL_19:
          sub_2685B593C(v24, v25);

          if (!v21)
          {
            v56 = v61;
            v57 = v62;
            v58 = v63;
            v54 = v59;
            v55 = v60;
            v13 = v45;
            v15 = v43;
            v28 = v19;
            v17 = v42;
            if (v44)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          v22 += 40;
          --v21;
        }

        MEMORY[0x26D61D8F0](1);
        sub_2685BA80C(v24, v25);

        sub_268689A24();
        if (v26 == 2)
        {
          goto LABEL_8;
        }

LABEL_7:
        MEMORY[0x26D61D8F0](2);
        sub_268689EB4();
        goto LABEL_8;
      }

      sub_2685BA80C(v13, v15);

      sub_268614834(v17, v18);

      v28 = v19;
      v23 = v52;
      if (v16)
      {
LABEL_22:
        MEMORY[0x26D61D8F0](3);
        sub_268689A24();
      }

LABEL_23:
      if (v49)
      {
        if ((v50 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        MEMORY[0x26D61D8F0](4);
        MEMORY[0x26D61D920](v46);
        if ((v50 & 1) == 0)
        {
LABEL_39:
          MEMORY[0x26D61D8F0](5);
          MEMORY[0x26D61D920](v47);
          if (v51)
          {
            goto LABEL_30;
          }

          goto LABEL_26;
        }
      }

      if (v51)
      {
        goto LABEL_30;
      }

LABEL_26:
      MEMORY[0x26D61D8F0](6);
      if ((v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v29 = v48;
      }

      else
      {
        v29 = 0;
      }

      MEMORY[0x26D61D920](v29);
LABEL_30:
      if (v53 >> 60 != 15)
      {
        MEMORY[0x26D61D8F0](7);
        sub_2685BA80C(v17, v53);
        sub_268689844();
        sub_2685B98FC(v17, v53);
      }

      if (v28)
      {
        MEMORY[0x26D61D8F0](8);
        sub_268689A24();
      }

      v30 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        if (v30 == 2 && *(v13 + 16) != *(v13 + 24))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v30)
        {
          if (v13 == v13 >> 32)
          {
            goto LABEL_48;
          }

LABEL_47:
          sub_268689844();
          goto LABEL_48;
        }

        if ((v15 & 0xFF000000000000) != 0)
        {
          goto LABEL_47;
        }
      }

LABEL_48:
      v11 = v23 + 1;

      sub_2685B593C(v13, v15);

      sub_2685B98FC(v17, v53);

      if (v11 == v41)
      {
        v66 = v56;
        v67 = v57;
        v68 = v58;
        v64 = v54;
        v65 = v55;
        v5 = a4;
        v7 = a1;
        a5 = v36;
        v6 = a3;
        break;
      }

      v61 = v56;
      v62 = v57;
      v63 = v58;
      v59 = v54;
      v60 = v55;
    }
  }

  sub_2685DC564(&v64, 1000, 0x20000000, a5);
  v33 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v33 != 2)
    {
      goto LABEL_52;
    }

    v34 = *(v6 + 16);
    v35 = *(v6 + 24);
  }

  else
  {
    if (!v33)
    {
      if ((v5 & 0xFF000000000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_61;
    }

    v34 = v6;
    v35 = v6 >> 32;
  }

  if (v34 != v35)
  {
LABEL_61:
    sub_268689844();
  }

LABEL_52:
  v31 = v67;
  v7[2] = v66;
  v7[3] = v31;
  *(v7 + 8) = v68;
  result = v65;
  *v7 = v64;
  v7[1] = result;
  return result;
}

__n128 sub_2685DD548(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a1[3];
  v51 = a1[2];
  v52 = v5;
  v53 = *(a1 + 8);
  v6 = a1[1];
  v49 = *a1;
  v50 = v6;
  v7 = *(a2 + 16);
  if (v7)
  {
    v31 = a3;
    v32 = a4;
    MEMORY[0x26D61D8F0](1);
    v9 = 0;
    v46 = v51;
    v47 = v52;
    v48 = v53;
    v44 = v49;
    v45 = v50;
    v10 = a2 + 32;
    while (1)
    {
      v11 = (v10 + 72 * v9);
      v43 = *(v11 + 8);
      v12 = v11[3];
      v41 = v11[2];
      v42 = v12;
      v13 = v11[1];
      v39 = *v11;
      v40 = v13;
      v14 = v39;
      v38 = v48;
      v36 = v46;
      v37 = v47;
      v34 = v44;
      v35 = v45;
      v15 = *(v39 + 16);
      if (v15)
      {
        MEMORY[0x26D61D8F0](1);
        MEMORY[0x26D61D8F0](v15);
        v16 = v14 + 32;
        do
        {
          v16 += 4;
          sub_268689EC4();
          --v15;
        }

        while (v15);
      }

      v17 = *(&v39 + 1);
      v18 = *(*(&v39 + 1) + 16);
      if (v18)
      {
        MEMORY[0x26D61D8F0](2);
        MEMORY[0x26D61D8F0](v18);
        v19 = v17 + 32;
        do
        {
          v19 += 4;
          sub_268689EC4();
          --v18;
        }

        while (v18);
      }

      if (v42)
      {
        break;
      }

      sub_268618FD8(&v39, v33);
      if (v43)
      {
        goto LABEL_11;
      }

LABEL_12:
      v20 = v40;
      v21 = *(v40 + 16);
      if (v21)
      {
        MEMORY[0x26D61D8F0](6);
        MEMORY[0x26D61D8F0](v21);
        v22 = v20 + 40;
        do
        {

          sub_268689A24();

          v22 += 16;
          --v21;
        }

        while (v21);
      }

      v23 = v41 >> 62;
      if ((v41 >> 62) > 1)
      {
        if (v23 != 2)
        {
          goto LABEL_26;
        }

        v24 = *(*(&v40 + 1) + 16);
        v25 = *(*(&v40 + 1) + 24);
LABEL_24:
        if (v24 == v25)
        {
          goto LABEL_26;
        }

LABEL_25:
        sub_268689844();
        goto LABEL_26;
      }

      if (v23)
      {
        v24 = SDWORD2(v40);
        v25 = *(&v40 + 1) >> 32;
        goto LABEL_24;
      }

      if ((v41 & 0xFF000000000000) != 0)
      {
        goto LABEL_25;
      }

LABEL_26:
      ++v9;
      sub_268619010(&v39);
      if (v9 == v7)
      {
        v51 = v36;
        v52 = v37;
        v53 = v38;
        v49 = v34;
        v50 = v35;
        a3 = v31;
        a4 = v32;
        goto LABEL_29;
      }

      v46 = v36;
      v47 = v37;
      v48 = v38;
      v44 = v34;
      v45 = v35;
    }

    MEMORY[0x26D61D8F0](3);
    sub_268618FD8(&v39, v33);
    sub_268689A24();
    if (!v43)
    {
      goto LABEL_12;
    }

LABEL_11:
    MEMORY[0x26D61D8F0](4);
    sub_268689A24();
    goto LABEL_12;
  }

LABEL_29:
  v26 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v26 != 2)
    {
      goto LABEL_38;
    }

    v27 = *(a3 + 16);
    v28 = *(a3 + 24);
  }

  else
  {
    if (!v26)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v27 = a3;
    v28 = a3 >> 32;
  }

  if (v27 != v28)
  {
LABEL_37:
    sub_268689844();
  }

LABEL_38:
  v29 = v52;
  a1[2] = v51;
  a1[3] = v29;
  *(a1 + 8) = v53;
  result = v50;
  *a1 = v49;
  a1[1] = result;
  return result;
}

__n128 sub_2685DD85C(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a1[2];
  v14 = a1[3];
  v15 = *(a1 + 8);
  v11 = *a1;
  v12 = a1[1];
  if (*(a2 + 16))
  {
    sub_2685DBD70(a2, 1);
  }

  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_12;
    }

    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v8 = a3;
    v9 = a3 >> 32;
  }

  if (v8 != v9)
  {
LABEL_11:
    sub_268689844();
  }

LABEL_12:
  a1[2] = v13;
  a1[3] = v14;
  *(a1 + 8) = v15;
  result = v12;
  *a1 = v11;
  a1[1] = v12;
  return result;
}

__n128 sub_2685DD944(__int128 *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[3];
  v34 = a1[2];
  v35 = v7;
  v36 = *(a1 + 8);
  v8 = a1[1];
  v32 = *a1;
  v33 = v8;
  v9 = *(a2 + 16);
  if (v9)
  {
    MEMORY[0x26D61D8F0](1);
    v30 = v35;
    v31 = v36;
    v28 = v33;
    v29 = v34;
    v27 = v32;
    v11 = v9 - 1;
    for (i = a2 + 48; ; i += 24)
    {
      v13 = *(i - 16);
      v14 = *(i - 8);
      v24 = v29;
      v25 = v30;
      v26 = v31;
      v22 = v27;
      v23 = v28;
      sub_2685BA80C(v13, v14);

      sub_2685F25F4(v15, &v22);
      v16 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v16 == 2 && *(v13 + 16) != *(v13 + 24))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v16)
        {
          if (v13 == v13 >> 32)
          {
            goto LABEL_4;
          }

LABEL_14:
          sub_268689844();
          goto LABEL_4;
        }

        if ((v14 & 0xFF000000000000) != 0)
        {
          goto LABEL_14;
        }
      }

LABEL_4:
      sub_2685B593C(v13, v14);

      if (!v11)
      {
        v34 = v24;
        v35 = v25;
        v36 = v26;
        v32 = v22;
        v33 = v23;
        break;
      }

      v30 = v25;
      v31 = v26;
      v28 = v23;
      v29 = v24;
      v27 = v22;
      --v11;
    }
  }

  v17 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_25;
    }

    v18 = *(a3 + 16);
    v19 = *(a3 + 24);
  }

  else
  {
    if (!v17)
    {
      if ((a4 & 0xFF000000000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v18 = a3;
    v19 = a3 >> 32;
  }

  if (v18 != v19)
  {
LABEL_24:
    sub_268689844();
  }

LABEL_25:
  v20 = v35;
  a1[2] = v34;
  a1[3] = v20;
  *(a1 + 8) = v36;
  result = v33;
  *a1 = v32;
  a1[1] = result;
  return result;
}

__n128 sub_2685DDB54(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  v8 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    MEMORY[0x26D61D8F0](1);
    sub_268689A24();
  }

  v9 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_14;
    }

    v10 = *(a4 + 16);
    v11 = *(a4 + 24);
  }

  else
  {
    if (!v9)
    {
      if ((a5 & 0xFF000000000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = a4;
    v11 = a4 >> 32;
  }

  if (v10 != v11)
  {
LABEL_13:
    sub_268689844();
  }

LABEL_14:
  a1[2] = v15;
  a1[3] = v16;
  *(a1 + 8) = v17;
  result = v14;
  *a1 = v13;
  a1[1] = v14;
  return result;
}

void (*Google_Protobuf_FileDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685DDD8C;
}

uint64_t sub_2685DDDF0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F1768(v6);
    *(a2 + 16) = v6;
  }

  swift_beginAccess();
  v6[4] = v4;
  v6[5] = v3;
}

uint64_t Google_Protobuf_FileDescriptorProto.package.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F1768(v7);
    *(v3 + 16) = v7;
  }

  swift_beginAccess();
  v7[4] = a1;
  v7[5] = a2;
}

void (*Google_Protobuf_FileDescriptorProto.package.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 40))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685DDFCC;
}

void sub_2685DDFCC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v7 = sub_2685F1768(v7);
      *(v8 + 16) = v7;
    }

    swift_beginAccess();
    v7[4] = v3;
    v7[5] = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v10 = sub_2685F1768(v10);
      *(v11 + 16) = v10;
    }

    swift_beginAccess();
    v10[4] = v3;
    v10[5] = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileDescriptorProto.hasPackage.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearPackage()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F1768(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  v2[4] = 0;
  v2[5] = 0;
}

void (*Google_Protobuf_FileDescriptorProto.dependency.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 48);

  return sub_2685DE288;
}

void (*Google_Protobuf_FileDescriptorProto.publicDependency.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 56);

  return sub_2685DE380;
}

void (*Google_Protobuf_FileDescriptorProto.weakDependency.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 64);

  return sub_2685DE478;
}

void (*Google_Protobuf_FileDescriptorProto.messageType.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 72);

  return sub_2685DE570;
}

void (*Google_Protobuf_FileDescriptorProto.enumType.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 80);

  return sub_2685DE668;
}

void (*Google_Protobuf_FileDescriptorProto.service.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 88);

  return sub_2685DE760;
}

uint64_t sub_2685DE7D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F1768(v5);
    *(a2 + 16) = v5;
  }

  swift_beginAccess();
  v5[12] = v3;
}

uint64_t Google_Protobuf_FileDescriptorProto.extension.setter(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F1768(v5);
    *(v2 + 16) = v5;
  }

  swift_beginAccess();
  v5[12] = a1;
}

void (*Google_Protobuf_FileDescriptorProto.extension.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 96);

  return sub_2685DE994;
}

void sub_2685DE994(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = v2[10];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v6 = sub_2685F1768(v6);
      *(v7 + 16) = v6;
    }

    swift_beginAccess();
    v6[12] = v3;
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 16);
    if ((v8 & 1) == 0)
    {
      v10 = v2[10];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F1768(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v9[12] = v3;
  }

  free(v2);
}

uint64_t Google_Protobuf_FileDescriptorProto.options.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = v3[13];
  v5 = v3[14];
  v6 = v3[15];
  v7 = v3[16];
  if (v6)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  else
  {
    *a1 = xmmword_26868A5E0;
    a1[2] = MEMORY[0x277D84F98];
    if (qword_28028BD08 != -1)
    {
      swift_once();
    }

    a1[3] = qword_28028C660;
  }

  return sub_268601AE8(v4, v5, v6, v7);
}

uint64_t sub_2685DEB8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = v3[13];
  v5 = v3[14];
  v6 = v3[15];
  v7 = v3[16];
  if (v6)
  {
    v8 = v7;
    v9 = v6;
    v10 = v5;
    v11 = v4;
  }

  else
  {
    if (qword_28028BD08 != -1)
    {
      swift_once();
    }

    v11 = 0;
    v10 = 0xC000000000000000;
    v9 = MEMORY[0x277D84F98];
  }

  *a2 = v11;
  a2[1] = v10;
  a2[2] = v9;
  a2[3] = v8;
  return sub_268601AE8(v4, v5, v6, v7);
}

uint64_t sub_2685DEC64(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  sub_2685BA80C(*a1, v4);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2685F1768(v8);
    *(a2 + 16) = v8;
  }

  swift_beginAccess();
  v9 = v8[13];
  v10 = v8[14];
  v11 = v8[15];
  v12 = v8[16];
  v8[13] = v3;
  v8[14] = v4;
  v8[15] = v5;
  v8[16] = v6;
  return sub_268601B34(v9, v10, v11, v12);
}

uint64_t Google_Protobuf_FileDescriptorProto.options.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F1768(v7);
    *(v1 + 16) = v7;
  }

  swift_beginAccess();
  v8 = v7[13];
  v9 = v7[14];
  v10 = v7[15];
  v11 = v7[16];
  v7[13] = v2;
  v7[14] = v3;
  v7[15] = v4;
  v7[16] = v5;
  return sub_268601B34(v8, v9, v10, v11);
}

uint64_t Google_Protobuf_FileOptions.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  *(a1 + 16) = MEMORY[0x277D84F98];
  if (qword_28028BD08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *(a1 + 24) = qword_28028C660;
}

void (*Google_Protobuf_FileDescriptorProto.options.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = v5[13];
  v7 = v5[14];
  v8 = v5[15];
  v9 = v5[16];
  if (v8)
  {
    *v4 = v6;
    v4[1] = v7;
    v4[2] = v8;
    v4[3] = v9;
  }

  else
  {
    *v4 = xmmword_26868A5E0;
    v4[2] = MEMORY[0x277D84F98];
    if (qword_28028BD08 != -1)
    {
      swift_once();
    }

    v4[3] = qword_28028C660;
  }

  sub_268601AE8(v6, v7, v8, v9);
  return sub_2685DEF70;
}

void sub_2685DEF70(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[13];
  if (a2)
  {
    sub_2685BA80C(**a1, v3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v7 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[13];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F1768(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    v11 = v9[13];
    v12 = v9[14];
    v13 = v9[15];
    v14 = v9[16];
    v9[13] = v4;
    v9[14] = v3;
    v9[15] = v6;
    v9[16] = v5;
    sub_268601B34(v11, v12, v13, v14);
    sub_2685B593C(*v2, v2[1]);
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v7 + 16);
    if ((v15 & 1) == 0)
    {
      v17 = v2[13];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v16 = sub_2685F1768(v16);
      *(v17 + 16) = v16;
    }

    swift_beginAccess();
    v18 = v16[13];
    v19 = v16[14];
    v20 = v16[15];
    v21 = v16[16];
    v16[13] = v4;
    v16[14] = v3;
    v16[15] = v6;
    v16[16] = v5;
    sub_268601B34(v18, v19, v20, v21);
  }

  free(v2);
}

BOOL Google_Protobuf_FileDescriptorProto.hasOptions.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 120) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearOptions()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F1768(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  v3 = v2[13];
  v4 = v2[14];
  v5 = v2[15];
  v6 = v2[16];
  *(v2 + 13) = 0u;
  *(v2 + 15) = 0u;
  sub_268601B34(v3, v4, v5, v6);
}

uint64_t Google_Protobuf_FileDescriptorProto.sourceCodeInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = v3[17];
  v5 = v3[18];
  v6 = v3[19];
  v7 = MEMORY[0x277D84F90];
  if (v4)
  {
    v7 = v3[17];
    v8 = v3[18];
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xC000000000000000;
  if (v4)
  {
    v9 = v3[19];
  }

  *a1 = v7;
  a1[1] = v8;
  a1[2] = v9;
  return sub_268601B80(v4, v5, v6);
}

uint64_t sub_2685DF224@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = v3[17];
  v5 = v3[18];
  v6 = v3[19];
  v7 = 0xC000000000000000;
  if (v4)
  {
    v7 = v3[19];
    v8 = v3[18];
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x277D84F90];
  if (v4)
  {
    v9 = v3[17];
  }

  *a2 = v9;
  a2[1] = v8;
  a2[2] = v7;
  return sub_268601B80(v4, v5, v6);
}

uint64_t sub_2685DF294(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  sub_2685BA80C(v4, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F1768(v7);
    *(a2 + 16) = v7;
  }

  swift_beginAccess();
  v8 = v7[17];
  v9 = v7[18];
  v10 = v7[19];
  v7[17] = v3;
  v7[18] = v4;
  v7[19] = v5;
  return sub_268601BC8(v8, v9, v10);
}

uint64_t Google_Protobuf_FileDescriptorProto.sourceCodeInfo.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F1768(v6);
    *(v1 + 16) = v6;
  }

  swift_beginAccess();
  v7 = v6[17];
  v8 = v6[18];
  v9 = v6[19];
  v6[17] = v2;
  v6[18] = v3;
  v6[19] = v4;
  return sub_268601BC8(v7, v8, v9);
}

double Google_Protobuf_SourceCodeInfo.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

void (*Google_Protobuf_FileDescriptorProto.sourceCodeInfo.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 96) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = v5[17];
  v7 = v5[18];
  v8 = v5[19];
  v9 = MEMORY[0x277D84F90];
  if (v6)
  {
    v9 = v5[17];
    v10 = v5[18];
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xC000000000000000;
  if (v6)
  {
    v11 = v5[19];
  }

  *v4 = v9;
  v4[1] = v10;
  v4[2] = v11;
  sub_268601B80(v6, v7, v8);
  return sub_2685DF4C0;
}

void sub_2685DF4C0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[12];
  if (a2)
  {

    sub_2685BA80C(v3, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = v2[12];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v8 = sub_2685F1768(v8);
      *(v9 + 16) = v8;
    }

    swift_beginAccess();
    v10 = v8[17];
    v11 = v8[18];
    v12 = v8[19];
    v8[17] = v4;
    v8[18] = v3;
    v8[19] = v5;
    sub_268601BC8(v10, v11, v12);
    v13 = v2[1];
    v14 = v2[2];

    sub_2685B593C(v13, v14);
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v6 + 16);
    if ((v15 & 1) == 0)
    {
      v17 = v2[12];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v16 = sub_2685F1768(v16);
      *(v17 + 16) = v16;
    }

    swift_beginAccess();
    v18 = v16[17];
    v19 = v16[18];
    v20 = v16[19];
    v16[17] = v4;
    v16[18] = v3;
    v16[19] = v5;
    sub_268601BC8(v18, v19, v20);
  }

  free(v2);
}

BOOL Google_Protobuf_FileDescriptorProto.hasSourceCodeInfo.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 136) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearSourceCodeInfo()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F1768(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  v3 = v2[17];
  v4 = v2[18];
  v5 = v2[19];
  v2[18] = 0;
  v2[19] = 0;
  v2[17] = 0;
  sub_268601BC8(v3, v4, v5);
}

uint64_t Google_Protobuf_FileDescriptorProto.syntax.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 168))
  {
    v2 = *(v1 + 160);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685DF750@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 168))
  {
    v4 = *(v3 + 160);
    v5 = *(v3 + 168);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685DF7B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F1768(v6);
    *(a2 + 16) = v6;
  }

  swift_beginAccess();
  v6[20] = v4;
  v6[21] = v3;
}

uint64_t Google_Protobuf_FileDescriptorProto.syntax.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F1768(v7);
    *(v3 + 16) = v7;
  }

  swift_beginAccess();
  v7[20] = a1;
  v7[21] = a2;
}

void (*Google_Protobuf_FileDescriptorProto.syntax.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 168))
  {
    v6 = *(v5 + 160);
    v7 = *(v5 + 168);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685DF990;
}

void sub_2685DF990(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v7 = sub_2685F1768(v7);
      *(v8 + 16) = v7;
    }

    swift_beginAccess();
    v7[20] = v3;
    v7[21] = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
      swift_allocObject();
      v10 = sub_2685F1768(v10);
      *(v11 + 16) = v10;
    }

    swift_beginAccess();
    v10[20] = v3;
    v10[21] = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileDescriptorProto.hasSyntax.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 168) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileDescriptorProto.clearSyntax()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F1768(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  v2[20] = 0;
  v2[21] = 0;
}

void (*Google_Protobuf_DescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685DFCAC;
}

BOOL Google_Protobuf_DescriptorProto.hasName.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

void (*Google_Protobuf_DescriptorProto.field.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 32);

  return sub_2685DFE20;
}

uint64_t sub_2685DFE94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F4214(v5);
    *(a2 + 16) = v5;
  }

  swift_beginAccess();
  *(v5 + 40) = v3;
}

uint64_t Google_Protobuf_DescriptorProto.extension.setter(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F4214(v5);
    *(v2 + 16) = v5;
  }

  swift_beginAccess();
  *(v5 + 40) = a1;
}

void (*Google_Protobuf_DescriptorProto.extension.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 40);

  return sub_2685E0054;
}

void sub_2685E0054(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = v2[10];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v6 = sub_2685F4214(v6);
      *(v7 + 16) = v6;
    }

    swift_beginAccess();
    *(v6 + 40) = v3;
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 16);
    if ((v8 & 1) == 0)
    {
      v10 = v2[10];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F4214(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    *(v9 + 40) = v3;
  }

  free(v2);
}

uint64_t sub_2685E01C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v12 = a7(v12);
    *(a2 + 16) = v12;
  }

  swift_beginAccess();
  *(v12 + 48) = v10;
}

uint64_t sub_2685E02A4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v10 = a4(v10);
    *(v7 + 16) = v10;
  }

  swift_beginAccess();
  *(v10 + 48) = a1;
}

void (*Google_Protobuf_DescriptorProto.nestedType.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 48);

  return sub_2685E03E8;
}

void sub_2685E0418(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = v7[10];
      a3(0);
      swift_allocObject();
      v11 = a5(v11);
      *(v12 + 16) = v11;
    }

    swift_beginAccess();
    *(v11 + 48) = v8;
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v9 + 16);
    if ((v13 & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    *(v14 + 48) = v8;
  }

  free(v7);
}

uint64_t sub_2685E05A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v12 = a7(v12);
    *(a2 + 16) = v12;
  }

  swift_beginAccess();
  *(v12 + 56) = v10;
}

uint64_t sub_2685E0684(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v10 = a4(v10);
    *(v7 + 16) = v10;
  }

  swift_beginAccess();
  *(v10 + 56) = a1;
}

void (*Google_Protobuf_DescriptorProto.enumType.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 56);

  return sub_2685E07C8;
}

void sub_2685E07F8(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = v7[10];
      a3(0);
      swift_allocObject();
      v11 = a5(v11);
      *(v12 + 16) = v11;
    }

    swift_beginAccess();
    *(v11 + 56) = v8;
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v9 + 16);
    if ((v13 & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    *(v14 + 56) = v8;
  }

  free(v7);
}

uint64_t sub_2685E0980(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v12 = a7(v12);
    *(a2 + 16) = v12;
  }

  swift_beginAccess();
  *(v12 + 64) = v10;
}

uint64_t sub_2685E0A64(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v10 = a4(v10);
    *(v7 + 16) = v10;
  }

  swift_beginAccess();
  *(v10 + 64) = a1;
}

void (*Google_Protobuf_DescriptorProto.extensionRange.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 64);

  return sub_2685E0BA8;
}

void sub_2685E0BD8(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = v7[10];
      a3(0);
      swift_allocObject();
      v11 = a5(v11);
      *(v12 + 16) = v11;
    }

    swift_beginAccess();
    *(v11 + 64) = v8;
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v9 + 16);
    if ((v13 & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    *(v14 + 64) = v8;
  }

  free(v7);
}

uint64_t sub_2685E0D60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v12 = a7(v12);
    *(a2 + 16) = v12;
  }

  swift_beginAccess();
  *(v12 + 72) = v10;
}

uint64_t sub_2685E0E44(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v10 = a4(v10);
    *(v7 + 16) = v10;
  }

  swift_beginAccess();
  *(v10 + 72) = a1;
}

void (*Google_Protobuf_DescriptorProto.oneofDecl.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 72);

  return sub_2685E0F88;
}

void sub_2685E0FB8(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = v7[10];
      a3(0);
      swift_allocObject();
      v11 = a5(v11);
      *(v12 + 16) = v11;
    }

    swift_beginAccess();
    *(v11 + 72) = v8;
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v9 + 16);
    if ((v13 & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    *(v14 + 72) = v8;
  }

  free(v7);
}

uint64_t Google_Protobuf_DescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  if (v4)
  {
    v8 = *(v3 + 112);
  }

  else
  {
    v8 = 33686018;
  }

  v9 = MEMORY[0x277D84F90];
  if (v4)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 88);
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xC000000000000000;
  if (v4)
  {
    v11 = *(v3 + 96);
  }

  v12 = MEMORY[0x277D84F98];
  if (v4)
  {
    v12 = *(v3 + 104);
  }

  *(a1 + 32) = v8;
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  return sub_268601C34(v4, v5, v6, v7);
}

uint64_t sub_2685E1184(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  v17 = *(a1 + 8);
  sub_268601CEC(&v15, v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F4214(v5);
    *(a2 + 16) = v5;
  }

  v6 = v17;
  v12 = v15;
  v13 = v16;
  swift_beginAccess();
  v7 = *(v5 + 80);
  v8 = *(v5 + 88);
  v9 = *(v5 + 96);
  v10 = *(v5 + 104);
  *(v5 + 80) = v12;
  *(v5 + 96) = v13;
  *(v5 + 112) = v6;
  return sub_268601C90(v7, v8, v9, v10);
}

uint64_t Google_Protobuf_DescriptorProto.options.setter(__int128 *a1)
{
  v10 = *a1;
  v11 = a1[1];
  v2 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v4 = sub_2685F4214(v4);
    *(v1 + 16) = v4;
  }

  swift_beginAccess();
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = *(v4 + 96);
  v8 = *(v4 + 104);
  *(v4 + 80) = v10;
  *(v4 + 96) = v11;
  *(v4 + 112) = v2;
  return sub_268601C90(v5, v6, v7, v8);
}

double Google_Protobuf_MessageOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *(a1 + 32) = 33686018;
  return result;
}

void (*Google_Protobuf_DescriptorProto.options.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  v8 = *(v5 + 96);
  v9 = *(v5 + 104);
  v10 = MEMORY[0x277D84F98];
  v11 = 0xC000000000000000;
  v12 = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = *(v5 + 112);
  }

  else
  {
    v13 = 33686018;
  }

  if (v6)
  {
    v12 = *(v5 + 80);
    v14 = *(v5 + 88);
  }

  else
  {
    v14 = 0;
  }

  if (v6)
  {
    v11 = *(v5 + 96);
    v10 = *(v5 + 104);
  }

  *(v4 + 32) = v13;
  *v4 = v12;
  *(v4 + 8) = v14;
  *(v4 + 16) = v11;
  *(v4 + 24) = v10;
  sub_268601C34(v6, v7, v8, v9);
  return sub_2685E13EC;
}

void sub_2685E13EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  if (a2)
  {
    v4 = v2[1];
    *(v2 + 40) = *v2;
    *(v2 + 56) = v4;
    *(v2 + 18) = *(v2 + 8);
    sub_268601CEC(v2 + 40, (v2 + 5));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v3 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 21);
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v6 = sub_2685F4214(v6);
      *(v7 + 16) = v6;
    }

    v8 = *(v2 + 18);
    v22 = *(v2 + 40);
    v24 = *(v2 + 56);
    swift_beginAccess();
    v9 = *(v6 + 80);
    v10 = *(v6 + 88);
    v11 = *(v6 + 96);
    v12 = *(v6 + 104);
    *(v6 + 80) = v22;
    *(v6 + 96) = v24;
    *(v6 + 112) = v8;
    sub_268601C90(v9, v10, v11, v12);
    v13 = v2[1];
    v2[5] = *v2;
    v2[6] = v13;
    *(v2 + 28) = *(v2 + 8);
    sub_268601D24((v2 + 5));
  }

  else
  {
    v23 = *v2;
    v25 = v2[1];
    v14 = *(v2 + 8);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v3 + 16);
    if ((v15 & 1) == 0)
    {
      v17 = *(v2 + 21);
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v16 = sub_2685F4214(v16);
      *(v17 + 16) = v16;
    }

    swift_beginAccess();
    v18 = *(v16 + 80);
    v19 = *(v16 + 88);
    v20 = *(v16 + 96);
    v21 = *(v16 + 104);
    *(v16 + 80) = v23;
    *(v16 + 96) = v25;
    *(v16 + 112) = v14;
    sub_268601C90(v18, v19, v20, v21);
  }

  free(v2);
}

BOOL Google_Protobuf_DescriptorProto.hasOptions.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 80) != 0;
}

Swift::Void __swiftcall Google_Protobuf_DescriptorProto.clearOptions()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F4214(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  sub_268601C90(v3, v4, v5, v6);
}

uint64_t sub_2685E1694(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F4214(v5);
    *(a2 + 16) = v5;
  }

  swift_beginAccess();
  *(v5 + 120) = v3;
}

uint64_t Google_Protobuf_DescriptorProto.reservedRange.setter(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F4214(v5);
    *(v2 + 16) = v5;
  }

  swift_beginAccess();
  *(v5 + 120) = a1;
}

void (*Google_Protobuf_DescriptorProto.reservedRange.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 120);

  return sub_2685E1854;
}

void sub_2685E1854(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = v2[10];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v6 = sub_2685F4214(v6);
      *(v7 + 16) = v6;
    }

    swift_beginAccess();
    *(v6 + 120) = v3;
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 16);
    if ((v8 & 1) == 0)
    {
      v10 = v2[10];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F4214(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    *(v9 + 120) = v3;
  }

  free(v2);
}

uint64_t sub_2685E19BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F4214(v5);
    *(a2 + 16) = v5;
  }

  swift_beginAccess();
  *(v5 + 128) = v3;
}

uint64_t Google_Protobuf_DescriptorProto.reservedName.setter(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F4214(v5);
    *(v2 + 16) = v5;
  }

  swift_beginAccess();
  *(v5 + 128) = a1;
}

void (*Google_Protobuf_DescriptorProto.reservedName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 128);

  return sub_2685E1B7C;
}

void sub_2685E1B7C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = v2[10];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v6 = sub_2685F4214(v6);
      *(v7 + 16) = v6;
    }

    swift_beginAccess();
    *(v6 + 128) = v3;
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + 16);
    if ((v8 & 1) == 0)
    {
      v10 = v2[10];
      type metadata accessor for Google_Protobuf_DescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2685F4214(v9);
      *(v10 + 16) = v9;
    }

    swift_beginAccess();
    *(v9 + 128) = v3;
  }

  free(v2);
}

uint64_t Google_Protobuf_DescriptorProto.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_DescriptorProto.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.start.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 20))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t sub_2685E1D4C(int *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v5 = sub_2685F6DD8(v5);
    *(a2 + 16) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 16) = v3;
  *(v5 + 20) = 0;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.start.setter(int a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v5 = sub_2685F6DD8(v5);
    *(v2 + 16) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 20) = 0;
  return result;
}

void (*Google_Protobuf_DescriptorProto.ExtensionRange.start.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v5 + 20))
  {
    v6 = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E1EFC;
}

void sub_2685E1EFC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v6 = sub_2685F6DD8(v6);
    *(v7 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 16) = v3;
  *(v6 + 20) = 0;

  free(v2);
}

BOOL Google_Protobuf_DescriptorProto.ExtensionRange.hasStart.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return (*(v1 + 20) & 1) == 0;
}

Swift::Void __swiftcall Google_Protobuf_DescriptorProto.ExtensionRange.clearStart()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v2 = sub_2685F6DD8(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  *(v2 + 16) = 0;
  *(v2 + 20) = 1;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.end.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 28))
  {
    return 0;
  }

  else
  {
    return *(v1 + 24);
  }
}

uint64_t sub_2685E20D8(int *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v5 = sub_2685F6DD8(v5);
    *(a2 + 16) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 24) = v3;
  *(v5 + 28) = 0;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ExtensionRange.end.setter(int a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v5 = sub_2685F6DD8(v5);
    *(v2 + 16) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 24) = a1;
  *(v5 + 28) = 0;
  return result;
}

void (*Google_Protobuf_DescriptorProto.ExtensionRange.end.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 24);
  if (*(v5 + 28))
  {
    v6 = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E2288;
}

void sub_2685E2288(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v6 = sub_2685F6DD8(v6);
    *(v7 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 24) = v3;
  *(v6 + 28) = 0;

  free(v2);
}

BOOL Google_Protobuf_DescriptorProto.ExtensionRange.hasEnd.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return (*(v1 + 28) & 1) == 0;
}

Swift::Void __swiftcall Google_Protobuf_DescriptorProto.ExtensionRange.clearEnd()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_DescriptorProto.ExtensionRange._StorageClass();
    swift_allocObject();
    v2 = sub_2685F6DD8(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  *(v2 + 24) = 0;
  *(v2 + 28) = 1;
}

void (*Google_Protobuf_DescriptorProto.ExtensionRange.options.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];
  v10 = MEMORY[0x277D84F98];
  v11 = 0xC000000000000000;
  v12 = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = v5[4];
    v13 = v5[5];
  }

  else
  {
    v13 = 0;
  }

  if (v6)
  {
    v11 = v5[6];
    v10 = v5[7];
  }

  *v4 = v12;
  v4[1] = v13;
  v4[2] = v11;
  v4[3] = v10;
  sub_268601C34(v6, v7, v8, v9);
  return sub_2685E250C;
}

BOOL Google_Protobuf_DescriptorProto.ExtensionRange.hasOptions.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 32) != 0;
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.start.getter()
{
  if (*(v0 + 20))
  {
    return 0;
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.start.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = 0;
  return result;
}

uint64_t *(*Google_Protobuf_DescriptorProto.ReservedRange.start.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if (*(v1 + 20))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685E2644;
}

uint64_t *sub_2685E2644(uint64_t *result)
{
  v1 = *result;
  *(v1 + 16) = *(result + 2);
  *(v1 + 20) = 0;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.end.getter()
{
  if (*(v0 + 28))
  {
    return 0;
  }

  else
  {
    return *(v0 + 24);
  }
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.end.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = 0;
  return result;
}

uint64_t *(*Google_Protobuf_DescriptorProto.ReservedRange.end.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24);
  if (*(v1 + 28))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_2685E26D0;
}

uint64_t *sub_2685E26D0(uint64_t *result)
{
  v1 = *result;
  *(v1 + 24) = *(result + 2);
  *(v1 + 28) = 0;
  return result;
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_DescriptorProto.ReservedRange.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

double Google_Protobuf_DescriptorProto.ReservedRange.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
  *(a1 + 24) = 0;
  *(a1 + 28) = 1;
  return result;
}

void (*Google_Protobuf_FieldDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E290C;
}

void (*Google_Protobuf_FieldDescriptorProto.number.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (*(v5 + 36))
  {
    v6 = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E2A3C;
}

BOOL Google_Protobuf_FieldDescriptorProto.hasNumber.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return (*(v1 + 36) & 1) == 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.label.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 37);
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_2685E2B34(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F8130(v5);
    *(a2 + 16) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 37) = v3;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.label.setter(char *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v4 = sub_2685F8130(v4);
    *(v1 + 16) = v4;
  }

  result = swift_beginAccess();
  *(v4 + 37) = v2;
  return result;
}

void (*Google_Protobuf_FieldDescriptorProto.label.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 37);
  if (v6 == 3)
  {
    LOBYTE(v6) = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E2CD4;
}

void sub_2685E2CD4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(v7 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 37) = v3;

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasLabel.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 37) != 3;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearLabel()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F8130(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  *(v2 + 37) = 3;
}

uint64_t Google_Protobuf_FieldDescriptorProto.type.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 38);
  if (v5 == 18)
  {
    LOBYTE(v5) = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_2685E2EAC(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F8130(v5);
    *(a2 + 16) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 38) = v3;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.type.setter(char *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v4 = sub_2685F8130(v4);
    *(v1 + 16) = v4;
  }

  result = swift_beginAccess();
  *(v4 + 38) = v2;
  return result;
}

void (*Google_Protobuf_FieldDescriptorProto.type.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 38);
  if (v6 == 18)
  {
    LOBYTE(v6) = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E304C;
}

void sub_2685E304C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(v7 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 38) = v3;

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasType.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 38) != 18;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearType()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F8130(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  *(v2 + 38) = 18;
}

uint64_t Google_Protobuf_FieldDescriptorProto.typeName.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 48))
  {
    v2 = *(v1 + 40);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E3238@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 48))
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E329C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(a2 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 40) = v4;
  *(v6 + 48) = v3;
}

uint64_t Google_Protobuf_FieldDescriptorProto.typeName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F8130(v7);
    *(v3 + 16) = v7;
  }

  swift_beginAccess();
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
}

void (*Google_Protobuf_FieldDescriptorProto.typeName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 48))
  {
    v6 = *(v5 + 40);
    v7 = *(v5 + 48);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E3478;
}

void sub_2685E3478(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v7 = sub_2685F8130(v7);
      *(v8 + 16) = v7;
    }

    swift_beginAccess();
    *(v7 + 40) = v3;
    *(v7 + 48) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v10 = sub_2685F8130(v10);
      *(v11 + 16) = v10;
    }

    swift_beginAccess();
    *(v10 + 40) = v3;
    *(v10 + 48) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasTypeName.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 48) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearTypeName()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F8130(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.extendee.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 64))
  {
    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E36D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 64))
  {
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E3734(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(a2 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 56) = v4;
  *(v6 + 64) = v3;
}

uint64_t Google_Protobuf_FieldDescriptorProto.extendee.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F8130(v7);
    *(v3 + 16) = v7;
  }

  swift_beginAccess();
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
}

void (*Google_Protobuf_FieldDescriptorProto.extendee.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 64))
  {
    v6 = *(v5 + 56);
    v7 = *(v5 + 64);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E3910;
}

void sub_2685E3910(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v7 = sub_2685F8130(v7);
      *(v8 + 16) = v7;
    }

    swift_beginAccess();
    *(v7 + 56) = v3;
    *(v7 + 64) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v10 = sub_2685F8130(v10);
      *(v11 + 16) = v10;
    }

    swift_beginAccess();
    *(v10 + 56) = v3;
    *(v10 + 64) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasExtendee.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 64) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearExtendee()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F8130(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.defaultValue.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 80))
  {
    v2 = *(v1 + 72);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E3B68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 80))
  {
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E3BCC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(a2 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 72) = v4;
  *(v6 + 80) = v3;
}

uint64_t Google_Protobuf_FieldDescriptorProto.defaultValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F8130(v7);
    *(v3 + 16) = v7;
  }

  swift_beginAccess();
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;
}

void (*Google_Protobuf_FieldDescriptorProto.defaultValue.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 80))
  {
    v6 = *(v5 + 72);
    v7 = *(v5 + 80);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E3DA8;
}

void sub_2685E3DA8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v7 = sub_2685F8130(v7);
      *(v8 + 16) = v7;
    }

    swift_beginAccess();
    *(v7 + 72) = v3;
    *(v7 + 80) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v10 = sub_2685F8130(v10);
      *(v11 + 16) = v10;
    }

    swift_beginAccess();
    *(v10 + 72) = v3;
    *(v10 + 80) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasDefaultValue.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 80) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearDefaultValue()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F8130(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.oneofIndex.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 92))
  {
    return 0;
  }

  else
  {
    return *(v1 + 88);
  }
}

uint64_t sub_2685E3FE8(int *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F8130(v5);
    *(a2 + 16) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 88) = v3;
  *(v5 + 92) = 0;
  return result;
}

uint64_t Google_Protobuf_FieldDescriptorProto.oneofIndex.setter(int a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F8130(v5);
    *(v2 + 16) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 88) = a1;
  *(v5 + 92) = 0;
  return result;
}

void (*Google_Protobuf_FieldDescriptorProto.oneofIndex.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 88);
  if (*(v5 + 92))
  {
    v6 = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E4198;
}

void sub_2685E4198(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(v7 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 88) = v3;
  *(v6 + 92) = 0;

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasOneofIndex.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return (*(v1 + 92) & 1) == 0;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearOneofIndex()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F8130(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  *(v2 + 88) = 0;
  *(v2 + 92) = 1;
}

uint64_t Google_Protobuf_FieldDescriptorProto.jsonName.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 104))
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E438C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 104))
  {
    v4 = *(v3 + 96);
    v5 = *(v3 + 104);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E43F0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2685F8130(v6);
    *(a2 + 16) = v6;
  }

  swift_beginAccess();
  *(v6 + 96) = v4;
  *(v6 + 104) = v3;
}

uint64_t Google_Protobuf_FieldDescriptorProto.jsonName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2685F8130(v7);
    *(v3 + 16) = v7;
  }

  swift_beginAccess();
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
}

void (*Google_Protobuf_FieldDescriptorProto.jsonName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 104))
  {
    v6 = *(v5 + 96);
    v7 = *(v5 + 104);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E45CC;
}

void sub_2685E45CC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v7 = sub_2685F8130(v7);
      *(v8 + 16) = v7;
    }

    swift_beginAccess();
    *(v7 + 96) = v3;
    *(v7 + 104) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v10 = sub_2685F8130(v10);
      *(v11 + 16) = v10;
    }

    swift_beginAccess();
    *(v10 + 96) = v3;
    *(v10 + 104) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasJsonName.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 104) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearJsonName()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F8130(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
}

uint64_t Google_Protobuf_FieldDescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  v6 = *(v3 + 128);
  v7 = *(v3 + 136);
  v8 = *(v3 + 144) | (*(v3 + 148) << 32);
  if (v4)
  {
    *a1 = v4;
    *(a1 + 32) = v8;
    *(a1 + 36) = WORD2(v8);
    v9 = v5;
    v10 = v6;
    v11 = v7;
  }

  else
  {
    v9 = 0;
    *a1 = MEMORY[0x277D84F90];
    *(a1 + 32) = 33751555;
    *(a1 + 36) = 514;
    v11 = MEMORY[0x277D84F98];
    v10 = 0xC000000000000000;
  }

  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  return sub_268601C34(v4, v5, v6, v7);
}

uint64_t sub_2685E4874(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v16 = *a1;
  *v17 = v3;
  *&v17[14] = *(a1 + 30);
  sub_268601D9C(&v16, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v5 = sub_2685F8130(v5);
    *(a2 + 16) = v5;
  }

  v6 = *&v17[20];
  v7 = *&v17[16];
  v13 = v16;
  v14 = *v17;
  swift_beginAccess();
  v8 = *(v5 + 112);
  v9 = *(v5 + 120);
  v10 = *(v5 + 128);
  v11 = *(v5 + 136);
  *(v5 + 112) = v13;
  *(v5 + 128) = v14;
  *(v5 + 144) = v7;
  *(v5 + 148) = v6;
  return sub_268601C90(v8, v9, v10, v11);
}

uint64_t Google_Protobuf_FieldDescriptorProto.options.setter(__int128 *a1)
{
  v10 = *a1;
  v11 = a1[1];
  v2 = *(a1 + 8) | (*(a1 + 18) << 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v4 = sub_2685F8130(v4);
    *(v1 + 16) = v4;
  }

  swift_beginAccess();
  v5 = *(v4 + 112);
  v6 = *(v4 + 120);
  v7 = *(v4 + 128);
  v8 = *(v4 + 136);
  *(v4 + 112) = v10;
  *(v4 + 128) = v11;
  *(v4 + 144) = v2;
  *(v4 + 148) = WORD2(v2);
  return sub_268601C90(v5, v6, v7, v8);
}

double Google_Protobuf_FieldOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *&result = 33751555;
  *(a1 + 32) = 33751555;
  *(a1 + 36) = 514;
  return result;
}

void (*Google_Protobuf_FieldDescriptorProto.options.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 112);
  v7 = *(v5 + 120);
  v8 = *(v5 + 128);
  v9 = *(v5 + 136);
  v10 = *(v5 + 144) | (*(v5 + 148) << 32);
  if (v6)
  {
    *(v4 + 32) = *(v5 + 144);
    *(v4 + 36) = WORD2(v10);
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
  }

  else
  {
    v12 = 0;
    *(v4 + 32) = 33751555;
    *(v4 + 36) = 514;
    v14 = MEMORY[0x277D84F98];
    v13 = 0xC000000000000000;
    v11 = MEMORY[0x277D84F90];
  }

  *v4 = v11;
  *(v4 + 8) = v12;
  *(v4 + 16) = v13;
  *(v4 + 24) = v14;
  sub_268601C34(v6, v7, v8, v9);
  return sub_2685E4B4C;
}

void sub_2685E4B4C(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 21);
  if (a2)
  {
    v4 = *(v2 + 1);
    *(v2 + 5) = *v2;
    *(v2 + 7) = v4;
    *(v2 + 70) = *(v2 + 30);
    sub_268601D9C((v2 + 5), (v2 + 10));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v3 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = v2[21];
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v6 = sub_2685F8130(v6);
      *(v7 + 16) = v6;
    }

    v8 = *(v2 + 38);
    v9 = *(v2 + 18);
    v23 = *(v2 + 5);
    v25 = *(v2 + 7);
    swift_beginAccess();
    v10 = *(v6 + 112);
    v11 = *(v6 + 120);
    v12 = *(v6 + 128);
    v13 = *(v6 + 136);
    *(v6 + 112) = v23;
    *(v6 + 128) = v25;
    *(v6 + 144) = v9;
    *(v6 + 148) = v8;
    sub_268601C90(v10, v11, v12, v13);
    v14 = *(v2 + 1);
    *(v2 + 5) = *v2;
    *(v2 + 6) = v14;
    *(v2 + 110) = *(v2 + 30);
    sub_268601DD4((v2 + 10));
  }

  else
  {
    v24 = *v2;
    v26 = *(v2 + 1);
    v15 = *(v2 + 8) | (*(v2 + 18) << 32);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v3 + 16);
    if ((v16 & 1) == 0)
    {
      v18 = v2[21];
      type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
      swift_allocObject();
      v17 = sub_2685F8130(v17);
      *(v18 + 16) = v17;
    }

    swift_beginAccess();
    v19 = *(v17 + 112);
    v20 = *(v17 + 120);
    v21 = *(v17 + 128);
    v22 = *(v17 + 136);
    *(v17 + 112) = v24;
    *(v17 + 128) = v26;
    *(v17 + 144) = v15;
    *(v17 + 148) = WORD2(v15);
    sub_268601C90(v19, v20, v21, v22);
  }

  free(v2);
}

BOOL Google_Protobuf_FieldDescriptorProto.hasOptions.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 112) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FieldDescriptorProto.clearOptions()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FieldDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685F8130(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  v3 = v2[14];
  v4 = v2[15];
  v5 = v2[16];
  v6 = v2[17];
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 142) = 0;
  sub_268601C90(v3, v4, v5, v6);
}

SiriOntologyProtobuf::Google_Protobuf_FieldDescriptorProto::TypeEnum_optional __swiftcall Google_Protobuf_FieldDescriptorProto.TypeEnum.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 1;
  if ((rawValue - 1) >= 0x12)
  {
    v2 = 18;
  }

  *v1 = v2;
  return rawValue;
}

void (*Google_Protobuf_OneofDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E4F78;
}

uint64_t _s20SiriOntologyProtobuf07Google_C16_DescriptorProtoV14ExtensionRangeV7optionsAA0d1_c1_gH7OptionsVvg_0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = MEMORY[0x277D84F98];
  v9 = 0xC000000000000000;
  v10 = MEMORY[0x277D84F90];
  if (v4)
  {
    v10 = v3[4];
    v11 = v3[5];
  }

  else
  {
    v11 = 0;
  }

  if (v4)
  {
    v9 = v3[6];
    v8 = v3[7];
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = v9;
  a1[3] = v8;
  return sub_268601C34(v4, v5, v6, v7);
}

uint64_t sub_2685E5054@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = MEMORY[0x277D84F90];
  v9 = 0xC000000000000000;
  v10 = MEMORY[0x277D84F98];
  if (v4)
  {
    v10 = v3[7];
    v9 = v3[6];
    v11 = v3[5];
  }

  else
  {
    v11 = 0;
  }

  if (v4)
  {
    v8 = v3[4];
  }

  *a2 = v8;
  a2[1] = v11;
  a2[2] = v9;
  a2[3] = v10;
  return sub_268601C34(v4, v5, v6, v7);
}

uint64_t sub_2685E50D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void *))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];

  sub_2685BA80C(v10, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v14 = a6(v14);
    *(a2 + 16) = v14;
  }

  swift_beginAccess();
  v15 = v14[4];
  v16 = v14[5];
  v17 = v14[6];
  v18 = v14[7];
  v14[4] = v9;
  v14[5] = v10;
  v14[6] = v11;
  v14[7] = v12;
  return sub_268601C90(v15, v16, v17, v18);
}

uint64_t sub_2685E51D4(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void *))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v11 = a3(v11);
    *(v3 + 16) = v11;
  }

  swift_beginAccess();
  v12 = v11[4];
  v13 = v11[5];
  v14 = v11[6];
  v15 = v11[7];
  v11[4] = v6;
  v11[5] = v7;
  v11[6] = v8;
  v11[7] = v9;
  return sub_268601C90(v12, v13, v14, v15);
}

double Google_Protobuf_OneofOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  return result;
}

void (*Google_Protobuf_OneofDescriptorProto.options.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  v9 = v5[7];
  v10 = MEMORY[0x277D84F98];
  v11 = 0xC000000000000000;
  v12 = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = v5[4];
    v13 = v5[5];
  }

  else
  {
    v13 = 0;
  }

  if (v6)
  {
    v11 = v5[6];
    v10 = v5[7];
  }

  *v4 = v12;
  v4[1] = v13;
  v4[2] = v11;
  v4[3] = v10;
  sub_268601C34(v6, v7, v8, v9);
  return sub_2685E5380;
}

void sub_2685E53AC(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(void *))
{
  v6 = *a1;
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v11 = (*a1)[13];
  if (a2)
  {

    sub_2685BA80C(v7, v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v11 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = v6[13];
      a3(0);
      swift_allocObject();
      v13 = a4(v13);
      *(v14 + 16) = v13;
    }

    swift_beginAccess();
    v15 = v13[4];
    v16 = v13[5];
    v17 = v13[6];
    v18 = v13[7];
    v13[4] = v8;
    v13[5] = v7;
    v13[6] = v10;
    v13[7] = v9;
    sub_268601C90(v15, v16, v17, v18);
    v19 = v6[1];
    v20 = v6[2];

    sub_2685B593C(v19, v20);
  }

  else
  {
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v11 + 16);
    if ((v21 & 1) == 0)
    {
      v23 = v6[13];
      a3(0);
      swift_allocObject();
      v22 = a4(v22);
      *(v23 + 16) = v22;
    }

    swift_beginAccess();
    v24 = v22[4];
    v25 = v22[5];
    v26 = v22[6];
    v27 = v22[7];
    v22[4] = v8;
    v22[5] = v7;
    v22[6] = v10;
    v22[7] = v9;
    sub_268601C90(v24, v25, v26, v27);
  }

  free(v6);
}

uint64_t sub_2685E555C(uint64_t (*a1)(void), uint64_t (*a2)(void *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a1(0);
    swift_allocObject();
    v6 = a2(v6);
    *(v2 + 16) = v6;
  }

  swift_beginAccess();
  v7 = v6[4];
  v8 = v6[5];
  v9 = v6[6];
  v10 = v6[7];
  *(v6 + 2) = 0u;
  *(v6 + 3) = 0u;
  return sub_268601C90(v7, v8, v9, v10);
}

void (*Google_Protobuf_EnumDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E5724;
}

void (*Google_Protobuf_EnumDescriptorProto.value.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 32);

  return sub_2685E584C;
}

uint64_t Google_Protobuf_EnumDescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  v8 = MEMORY[0x277D84F98];
  v9 = 0xC000000000000000;
  v10 = MEMORY[0x277D84F90];
  if (v4)
  {
    v10 = *(v3 + 40);
    v11 = *(v3 + 48);
  }

  else
  {
    v11 = 0;
  }

  if (v4)
  {
    v9 = *(v3 + 56);
    v8 = *(v3 + 64);
    v12 = *(v3 + 72);
  }

  else
  {
    v12 = 2;
  }

  if (v4)
  {
    v13 = HIBYTE(*(v3 + 72));
  }

  else
  {
    v13 = 2;
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 32) = v12;
  *(a1 + 33) = v13;
  return sub_268601C34(v4, v5, v6, v7);
}

uint64_t sub_2685E5918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  v8 = MEMORY[0x277D84F90];
  v9 = 0xC000000000000000;
  v10 = MEMORY[0x277D84F98];
  v11 = HIBYTE(*(v3 + 72));
  if (v4)
  {
    v12 = *(v3 + 72);
  }

  else
  {
    LOBYTE(v11) = 2;
    v12 = 2;
  }

  if (v4)
  {
    v10 = *(v3 + 64);
    v9 = *(v3 + 56);
    v13 = *(v3 + 48);
  }

  else
  {
    v13 = 0;
  }

  if (v4)
  {
    v8 = *(v3 + 40);
  }

  *a2 = v8;
  *(a2 + 8) = v13;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 33) = v11;
  return sub_268601C34(v4, v5, v6, v7);
}

uint64_t sub_2685E59B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);

  sub_2685BA80C(v4, v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_EnumDescriptorProto._StorageClass();
    swift_allocObject();
    v10 = sub_2685FB91C(v10);
    *(a2 + 16) = v10;
  }

  swift_beginAccess();
  v11 = *(v10 + 40);
  v12 = *(v10 + 48);
  v13 = *(v10 + 56);
  v14 = *(v10 + 64);
  *(v10 + 40) = v3;
  *(v10 + 48) = v4;
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 72) = v7 | (v8 << 8);
  return sub_268601C90(v11, v12, v13, v14);
}

uint64_t Google_Protobuf_EnumDescriptorProto.options.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_EnumDescriptorProto._StorageClass();
    swift_allocObject();
    v9 = sub_2685FB91C(v9);
    *(v1 + 16) = v9;
  }

  swift_beginAccess();
  v10 = *(v9 + 40);
  v11 = *(v9 + 48);
  v12 = *(v9 + 56);
  v13 = *(v9 + 64);
  *(v9 + 40) = v2;
  *(v9 + 48) = v3;
  *(v9 + 56) = v4;
  *(v9 + 64) = v5;
  *(v9 + 72) = v6 | (v7 << 8);
  return sub_268601C90(v10, v11, v12, v13);
}

double Google_Protobuf_EnumOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *(a1 + 32) = 514;
  return result;
}

void (*Google_Protobuf_EnumDescriptorProto.options.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 112) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  v9 = *(v5 + 64);
  v10 = MEMORY[0x277D84F98];
  v11 = 0xC000000000000000;
  v12 = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = *(v5 + 40);
    v13 = *(v5 + 48);
  }

  else
  {
    v13 = 0;
  }

  if (v6)
  {
    v11 = *(v5 + 56);
    v10 = *(v5 + 64);
    v14 = *(v5 + 72);
  }

  else
  {
    v14 = 2;
  }

  if (v6)
  {
    v15 = HIBYTE(*(v5 + 72));
  }

  else
  {
    v15 = 2;
  }

  *v4 = v12;
  *(v4 + 8) = v13;
  *(v4 + 16) = v11;
  *(v4 + 24) = v10;
  *(v4 + 32) = v14;
  *(v4 + 33) = v15;
  sub_268601C34(v6, v7, v8, v9);
  return sub_2685E5C68;
}

void sub_2685E5C68(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 33);
  v9 = (*a1)[14];
  if (a2)
  {

    sub_2685BA80C(v3, v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = v2[14];
      type metadata accessor for Google_Protobuf_EnumDescriptorProto._StorageClass();
      swift_allocObject();
      v11 = sub_2685FB91C(v11);
      *(v12 + 16) = v11;
    }

    swift_beginAccess();
    v13 = *(v11 + 40);
    v14 = *(v11 + 48);
    v15 = *(v11 + 56);
    v16 = *(v11 + 64);
    *(v11 + 40) = v4;
    *(v11 + 48) = v3;
    *(v11 + 56) = v6;
    *(v11 + 64) = v5;
    *(v11 + 72) = v7 | (v8 << 8);
    sub_268601C90(v13, v14, v15, v16);
    v17 = v2[1];
    v18 = v2[2];

    sub_2685B593C(v17, v18);
  }

  else
  {
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v9 + 16);
    if ((v19 & 1) == 0)
    {
      v21 = v2[14];
      type metadata accessor for Google_Protobuf_EnumDescriptorProto._StorageClass();
      swift_allocObject();
      v20 = sub_2685FB91C(v20);
      *(v21 + 16) = v20;
    }

    swift_beginAccess();
    v22 = *(v20 + 40);
    v23 = *(v20 + 48);
    v24 = *(v20 + 56);
    v25 = *(v20 + 64);
    *(v20 + 40) = v4;
    *(v20 + 48) = v3;
    *(v20 + 56) = v6;
    *(v20 + 64) = v5;
    *(v20 + 72) = v7 | (v8 << 8);
    sub_268601C90(v22, v23, v24, v25);
  }

  free(v2);
}

BOOL Google_Protobuf_EnumDescriptorProto.hasOptions.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall Google_Protobuf_EnumDescriptorProto.clearOptions()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_EnumDescriptorProto._StorageClass();
    swift_allocObject();
    v2 = sub_2685FB91C(v2);
    *(v0 + 16) = v2;
  }

  swift_beginAccess();
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  sub_268601C90(v3, v4, v5, v6);
}

uint64_t sub_2685E5F28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v12 = a7(v12);
    *(a2 + 16) = v12;
  }

  swift_beginAccess();
  *(v12 + 80) = v10;
}

uint64_t sub_2685E600C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v10 = a4(v10);
    *(v7 + 16) = v10;
  }

  swift_beginAccess();
  *(v10 + 80) = a1;
}

void (*Google_Protobuf_EnumDescriptorProto.reservedRange.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 80);

  return sub_2685E6150;
}

void sub_2685E6180(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = v7[10];
      a3(0);
      swift_allocObject();
      v11 = a5(v11);
      *(v12 + 16) = v11;
    }

    swift_beginAccess();
    *(v11 + 80) = v8;
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v9 + 16);
    if ((v13 & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    *(v14 + 80) = v8;
  }

  free(v7);
}

uint64_t sub_2685E6308(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v12 = a7(v12);
    *(a2 + 16) = v12;
  }

  swift_beginAccess();
  *(v12 + 88) = v10;
}

uint64_t sub_2685E63EC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v10 = a4(v10);
    *(v7 + 16) = v10;
  }

  swift_beginAccess();
  *(v10 + 88) = a1;
}

void (*Google_Protobuf_EnumDescriptorProto.reservedName.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 88);

  return sub_2685E6530;
}

void sub_2685E6560(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = v7[10];
      a3(0);
      swift_allocObject();
      v11 = a5(v11);
      *(v12 + 16) = v11;
    }

    swift_beginAccess();
    *(v11 + 88) = v8;
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v9 + 16);
    if ((v13 & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    *(v14 + 88) = v8;
  }

  free(v7);
}

uint64_t *(*Google_Protobuf_EnumDescriptorProto.EnumReservedRange.start.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if (*(v1 + 20))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_268619478;
}

uint64_t *(*Google_Protobuf_EnumDescriptorProto.EnumReservedRange.end.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24);
  if (*(v1 + 28))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_26861947C;
}

void (*Google_Protobuf_EnumValueDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E6854;
}

uint64_t _s20SiriOntologyProtobuf07Google_C21_FieldDescriptorProtoV6numbers5Int32Vvg_0()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 36))
  {
    return 0;
  }

  else
  {
    return *(v1 + 32);
  }
}

uint64_t sub_2685E6900(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v12 = a7(v12);
    *(a2 + 16) = v12;
  }

  result = swift_beginAccess();
  *(v12 + 32) = v10;
  *(v12 + 36) = 0;
  return result;
}

uint64_t sub_2685E69D4(int a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v10 = a4(v10);
    *(v7 + 16) = v10;
  }

  result = swift_beginAccess();
  *(v10 + 32) = a1;
  *(v10 + 36) = 0;
  return result;
}

void (*Google_Protobuf_EnumValueDescriptorProto.number.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (*(v5 + 36))
  {
    v6 = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685E6B18;
}

void sub_2685E6B48(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v9 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = v7[9];
    a3(0);
    swift_allocObject();
    v11 = a5(v11);
    *(v12 + 16) = v11;
  }

  swift_beginAccess();
  *(v11 + 32) = v8;
  *(v11 + 36) = 0;

  free(v7);
}

uint64_t sub_2685E6C54(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a1(0);
    swift_allocObject();
    v7 = a3(v7);
    *(v3 + 16) = v7;
  }

  result = swift_beginAccess();
  *(v7 + 32) = 0;
  *(v7 + 36) = 1;
  return result;
}

void (*Google_Protobuf_EnumValueDescriptorProto.options.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 112) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  v9 = *(v5 + 64);
  v10 = MEMORY[0x277D84F98];
  v11 = MEMORY[0x277D84F90];
  v12 = 0xC000000000000000;
  if (v6)
  {
    v11 = *(v5 + 40);
    v13 = *(v5 + 48);
  }

  else
  {
    v13 = 0;
  }

  if (v6)
  {
    v12 = *(v5 + 56);
    v10 = *(v5 + 64);
    v14 = *(v5 + 72);
  }

  else
  {
    v14 = 2;
  }

  *v4 = v11;
  *(v4 + 8) = v13;
  *(v4 + 16) = v12;
  *(v4 + 24) = v10;
  *(v4 + 32) = v14;
  sub_268601C34(v6, v7, v8, v9);
  return sub_2685E6DF8;
}

uint64_t sub_2685E6E90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v11 = *a1;
  v10 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v13 = a7(v13);
    *(a2 + 16) = v13;
  }

  swift_beginAccess();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
}

uint64_t sub_2685E6F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v5 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    swift_allocObject();
    v12 = a5(v12);
    *(v8 + 16) = v12;
  }

  swift_beginAccess();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
}

void (*Google_Protobuf_ServiceDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E70E4;
}

void sub_2685E7114(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  v10 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = v7[11];
      a3(0);
      swift_allocObject();
      v12 = a5(v12);
      *(v13 + 16) = v12;
    }

    swift_beginAccess();
    *(v12 + 16) = v8;
    *(v12 + 24) = v9;
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v10 + 16);
    if ((v14 & 1) == 0)
    {
      v16 = v7[11];
      a3(0);
      swift_allocObject();
      v15 = a5(v15);
      *(v16 + 16) = v15;
    }

    swift_beginAccess();
    *(v15 + 16) = v8;
    *(v15 + 24) = v9;
  }

  free(v7);
}

uint64_t sub_2685E7284(uint64_t (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a1(0);
    swift_allocObject();
    v7 = a3(v7);
    *(v3 + 16) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
}

uint64_t sub_2685E7328(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v12 = a7(v12);
    *(a2 + 16) = v12;
  }

  swift_beginAccess();
  *(v12 + 32) = v10;
}

uint64_t sub_2685E740C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v10 = a4(v10);
    *(v7 + 16) = v10;
  }

  swift_beginAccess();
  *(v10 + 32) = a1;
}

void (*Google_Protobuf_ServiceDescriptorProto.method.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 32);

  return sub_2685E7550;
}

void sub_2685E7580(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  v9 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = v7[10];
      a3(0);
      swift_allocObject();
      v11 = a5(v11);
      *(v12 + 16) = v11;
    }

    swift_beginAccess();
    *(v11 + 32) = v8;
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v9 + 16);
    if ((v13 & 1) == 0)
    {
      v15 = v7[10];
      a3(0);
      swift_allocObject();
      v14 = a5(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    *(v14 + 32) = v8;
  }

  free(v7);
}

uint64_t sub_2685E76C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  v8 = MEMORY[0x277D84F98];
  v9 = MEMORY[0x277D84F90];
  v10 = 0xC000000000000000;
  if (v4)
  {
    v9 = *(v3 + 40);
    v11 = *(v3 + 48);
  }

  else
  {
    v11 = 0;
  }

  if (v4)
  {
    v10 = *(v3 + 56);
    v8 = *(v3 + 64);
    v12 = *(v3 + 72);
  }

  else
  {
    v12 = 2;
  }

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  *(a1 + 32) = v12;
  return sub_268601C34(v4, v5, v6, v7);
}

uint64_t sub_2685E7750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  v6 = *(v3 + 56);
  v7 = *(v3 + 64);
  v8 = MEMORY[0x277D84F90];
  v9 = 0xC000000000000000;
  v10 = MEMORY[0x277D84F98];
  if (v4)
  {
    v11 = *(v3 + 72);
  }

  else
  {
    v11 = 2;
  }

  if (v4)
  {
    v10 = *(v3 + 64);
    v9 = *(v3 + 56);
    v12 = *(v3 + 48);
  }

  else
  {
    v12 = 0;
  }

  if (v4)
  {
    v8 = *(v3 + 40);
  }

  *a2 = v8;
  *(a2 + 8) = v12;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  return sub_268601C34(v4, v5, v6, v7);
}

uint64_t sub_2685E77DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *(a1 + 32);

  sub_2685BA80C(v10, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    swift_allocObject();
    v15 = a6(v15);
    *(a2 + 16) = v15;
  }

  swift_beginAccess();
  v16 = *(v15 + 40);
  v17 = *(v15 + 48);
  v18 = *(v15 + 56);
  v19 = *(v15 + 64);
  *(v15 + 40) = v9;
  *(v15 + 48) = v10;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  *(v15 + 72) = v13;
  return sub_268601C90(v16, v17, v18, v19);
}

uint64_t sub_2685E78F4(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a1 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    swift_allocObject();
    v12 = a3(v12);
    *(v3 + 16) = v12;
  }

  swift_beginAccess();
  v13 = *(v12 + 40);
  v14 = *(v12 + 48);
  v15 = *(v12 + 56);
  v16 = *(v12 + 64);
  *(v12 + 40) = v6;
  *(v12 + 48) = v7;
  *(v12 + 56) = v8;
  *(v12 + 64) = v9;
  *(v12 + 72) = v10;
  return sub_268601C90(v13, v14, v15, v16);
}

double Google_Protobuf_ServiceOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *(a1 + 32) = 2;
  return result;
}

void (*Google_Protobuf_ServiceDescriptorProto.options.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 112) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);
  v9 = *(v5 + 64);
  v10 = MEMORY[0x277D84F98];
  v11 = MEMORY[0x277D84F90];
  v12 = 0xC000000000000000;
  if (v6)
  {
    v11 = *(v5 + 40);
    v13 = *(v5 + 48);
  }

  else
  {
    v13 = 0;
  }

  if (v6)
  {
    v12 = *(v5 + 56);
    v10 = *(v5 + 64);
    v14 = *(v5 + 72);
  }

  else
  {
    v14 = 2;
  }

  *v4 = v11;
  *(v4 + 8) = v13;
  *(v4 + 16) = v12;
  *(v4 + 24) = v10;
  *(v4 + 32) = v14;
  sub_268601C34(v6, v7, v8, v9);
  return sub_2685E7AC4;
}

void sub_2685E7AF0(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v6 = *a1;
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v11 = *(*a1 + 32);
  v12 = (*a1)[14];
  if (a2)
  {

    sub_2685BA80C(v7, v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v12 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = v6[14];
      a3(0);
      swift_allocObject();
      v14 = a4(v14);
      *(v15 + 16) = v14;
    }

    swift_beginAccess();
    v16 = *(v14 + 40);
    v17 = *(v14 + 48);
    v18 = *(v14 + 56);
    v19 = *(v14 + 64);
    *(v14 + 40) = v8;
    *(v14 + 48) = v7;
    *(v14 + 56) = v10;
    *(v14 + 64) = v9;
    *(v14 + 72) = v11;
    sub_268601C90(v16, v17, v18, v19);
    v20 = v6[1];
    v21 = v6[2];

    sub_2685B593C(v20, v21);
  }

  else
  {
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v12 + 16);
    if ((v22 & 1) == 0)
    {
      v24 = v6[14];
      a3(0);
      swift_allocObject();
      v23 = a4(v23);
      *(v24 + 16) = v23;
    }

    swift_beginAccess();
    v25 = *(v23 + 40);
    v26 = *(v23 + 48);
    v27 = *(v23 + 56);
    v28 = *(v23 + 64);
    *(v23 + 40) = v8;
    *(v23 + 48) = v7;
    *(v23 + 56) = v10;
    *(v23 + 64) = v9;
    *(v23 + 72) = v11;
    sub_268601C90(v25, v26, v27, v28);
  }

  free(v6);
}

uint64_t sub_2685E7CB4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a1(0);
    swift_allocObject();
    v6 = a2(v6);
    *(v2 + 16) = v6;
  }

  swift_beginAccess();
  v7 = *(v6 + 40);
  v8 = *(v6 + 48);
  v9 = *(v6 + 56);
  v10 = *(v6 + 64);
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0;
  return sub_268601C90(v7, v8, v9, v10);
}

uint64_t _s20SiriOntologyProtobuf07Google_C16_DescriptorProtoV4nameSSvg_0()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E7E10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E7E74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2686145F0(v6);

    *(a2 + 16) = v7;
    v6 = v7;
  }

  swift_beginAccess();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
}

uint64_t Google_Protobuf_MethodDescriptorProto.name.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2686145F0(v7);

    *(v3 + 16) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
}

void (*Google_Protobuf_MethodDescriptorProto.name.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E8070;
}

void sub_2685E8070(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2686145F0(v7);

      *(v8 + 16) = v9;
      v7 = v9;
    }

    swift_beginAccess();
    *(v7 + 16) = v3;
    *(v7 + 24) = v5;
  }

  else
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v4 + 16);
    if ((v10 & 1) == 0)
    {
      v12 = v2[11];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v13 = sub_2686145F0(v11);

      *(v12 + 16) = v13;
      v11 = v13;
    }

    swift_beginAccess();
    *(v11 + 16) = v3;
    *(v11 + 24) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearName()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v4 = sub_2686145F0(v3);

    *(v1 + 16) = v4;
    v3 = v4;
  }

  swift_beginAccess();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
}

uint64_t _s20SiriOntologyProtobuf07Google_C20_FileDescriptorProtoV7packageSSvg_0()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E829C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 40))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E8300(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2686145F0(v6);

    *(a2 + 16) = v7;
    v6 = v7;
  }

  swift_beginAccess();
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
}

uint64_t Google_Protobuf_MethodDescriptorProto.inputType.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2686145F0(v7);

    *(v3 + 16) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
}

void (*Google_Protobuf_MethodDescriptorProto.inputType.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 40))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E84FC;
}

void sub_2685E84FC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2686145F0(v7);

      *(v8 + 16) = v9;
      v7 = v9;
    }

    swift_beginAccess();
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
  }

  else
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v4 + 16);
    if ((v10 & 1) == 0)
    {
      v12 = v2[11];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v13 = sub_2686145F0(v11);

      *(v12 + 16) = v13;
      v11 = v13;
    }

    swift_beginAccess();
    *(v11 + 32) = v3;
    *(v11 + 40) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearInputType()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v4 = sub_2686145F0(v3);

    *(v1 + 16) = v4;
    v3 = v4;
  }

  swift_beginAccess();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
}

uint64_t Google_Protobuf_MethodDescriptorProto.outputType.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  if (*(v1 + 56))
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E8728@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  if (*(v3 + 56))
  {
    v4 = *(v3 + 48);
    v5 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E878C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v7 = sub_2686145F0(v6);

    *(a2 + 16) = v7;
    v6 = v7;
  }

  swift_beginAccess();
  *(v6 + 48) = v4;
  *(v6 + 56) = v3;
}

uint64_t Google_Protobuf_MethodDescriptorProto.outputType.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2686145F0(v7);

    *(v3 + 16) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
}

void (*Google_Protobuf_MethodDescriptorProto.outputType.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  if (*(v5 + 56))
  {
    v6 = *(v5 + 48);
    v7 = *(v5 + 56);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E8988;
}

void sub_2685E8988(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v9 = sub_2686145F0(v7);

      *(v8 + 16) = v9;
      v7 = v9;
    }

    swift_beginAccess();
    *(v7 + 48) = v3;
    *(v7 + 56) = v5;
  }

  else
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v4 + 16);
    if ((v10 & 1) == 0)
    {
      v12 = v2[11];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v13 = sub_2686145F0(v11);

      *(v12 + 16) = v13;
      v11 = v13;
    }

    swift_beginAccess();
    *(v11 + 48) = v3;
    *(v11 + 56) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_MethodDescriptorProto.hasOutputType.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 56) != 0;
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearOutputType()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v4 = sub_2686145F0(v3);

    *(v1 + 16) = v4;
    v3 = v4;
  }

  swift_beginAccess();
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
}

uint64_t Google_Protobuf_MethodDescriptorProto.options.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v8 = MEMORY[0x277D84F98];
  v9 = 0xC000000000000000;
  v10 = MEMORY[0x277D84F90];
  if (v4)
  {
    v10 = *(v3 + 64);
    v11 = *(v3 + 72);
  }

  else
  {
    v11 = 0;
  }

  if (v4)
  {
    v9 = *(v3 + 80);
    v8 = *(v3 + 88);
    v12 = *(v3 + 96);
  }

  else
  {
    v12 = 2;
  }

  if (v4)
  {
    v13 = HIBYTE(*(v3 + 96));
  }

  else
  {
    v13 = 3;
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 32) = v12;
  *(a1 + 33) = v13;
  return sub_268601C34(v4, v5, v6, v7);
}

double sub_2685E8C38@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v11 = *a1;
  v12 = v3;
  Google_Protobuf_MethodDescriptorProto.options.getter(&v7);
  v4 = v9;
  v5 = v10;
  *a2 = v7;
  result = *&v8;
  *(a2 + 8) = v8;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_2685E8C9C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);

  sub_2685BA80C(v4, v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v11 = sub_2686145F0(v10);

    *(a2 + 16) = v11;
    v10 = v11;
  }

  swift_beginAccess();
  v12 = *(v10 + 64);
  v13 = *(v10 + 72);
  v14 = *(v10 + 80);
  v15 = *(v10 + 88);
  *(v10 + 64) = v3;
  *(v10 + 72) = v4;
  *(v10 + 80) = v5;
  *(v10 + 88) = v6;
  *(v10 + 96) = v7 | (v8 << 8);
  return sub_268601C90(v12, v13, v14, v15);
}

uint64_t Google_Protobuf_MethodDescriptorProto.options.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v11 = sub_2686145F0(v10);

    *(v2 + 16) = v11;
    v10 = v11;
  }

  swift_beginAccess();
  v12 = *(v10 + 64);
  v13 = *(v10 + 72);
  v14 = *(v10 + 80);
  v15 = *(v10 + 88);
  *(v10 + 64) = v3;
  *(v10 + 72) = v4;
  *(v10 + 80) = v5;
  *(v10 + 88) = v6;
  *(v10 + 96) = v7 | (v8 << 8);
  return sub_268601C90(v12, v13, v14, v15);
}

double Google_Protobuf_MethodOptions.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  *(a1 + 24) = MEMORY[0x277D84F98];
  *(a1 + 32) = 770;
  return result;
}

void (*Google_Protobuf_MethodDescriptorProto.options.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 112) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 64);
  v7 = *(v5 + 72);
  v8 = *(v5 + 80);
  v9 = *(v5 + 88);
  v10 = MEMORY[0x277D84F98];
  v11 = 0xC000000000000000;
  v12 = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = *(v5 + 64);
    v13 = *(v5 + 72);
  }

  else
  {
    v13 = 0;
  }

  if (v6)
  {
    v11 = *(v5 + 80);
    v10 = *(v5 + 88);
    v14 = *(v5 + 96);
  }

  else
  {
    v14 = 2;
  }

  if (v6)
  {
    v15 = HIBYTE(*(v5 + 96));
  }

  else
  {
    v15 = 3;
  }

  *v4 = v12;
  *(v4 + 8) = v13;
  *(v4 + 16) = v11;
  *(v4 + 24) = v10;
  *(v4 + 32) = v14;
  *(v4 + 33) = v15;
  sub_268601C34(v6, v7, v8, v9);
  return sub_2685E8F70;
}

void sub_2685E8F70(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 33);
  v9 = (*a1)[14];
  if (a2)
  {

    sub_2685BA80C(v3, v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = v2[14];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v13 = sub_2686145F0(v11);

      *(v12 + 16) = v13;
      v11 = v13;
    }

    swift_beginAccess();
    v14 = *(v11 + 64);
    v15 = *(v11 + 72);
    v16 = *(v11 + 80);
    v17 = *(v11 + 88);
    *(v11 + 64) = v4;
    *(v11 + 72) = v3;
    *(v11 + 80) = v6;
    *(v11 + 88) = v5;
    *(v11 + 96) = v7 | (v8 << 8);
    sub_268601C90(v14, v15, v16, v17);
    v18 = v2[1];
    v19 = v2[2];

    sub_2685B593C(v18, v19);
  }

  else
  {
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v9 + 16);
    if ((v20 & 1) == 0)
    {
      v22 = v2[14];
      type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
      swift_allocObject();
      v23 = sub_2686145F0(v21);

      *(v22 + 16) = v23;
      v21 = v23;
    }

    swift_beginAccess();
    v24 = *(v21 + 64);
    v25 = *(v21 + 72);
    v26 = *(v21 + 80);
    v27 = *(v21 + 88);
    *(v21 + 64) = v4;
    *(v21 + 72) = v3;
    *(v21 + 80) = v6;
    *(v21 + 88) = v5;
    *(v21 + 96) = v7 | (v8 << 8);
    sub_268601C90(v24, v25, v26, v27);
  }

  free(v2);
}

BOOL Google_Protobuf_MethodDescriptorProto.hasOptions.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 64) != 0;
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearOptions()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v4 = sub_2686145F0(v3);

    *(v1 + 16) = v4;
    v3 = v4;
  }

  swift_beginAccess();
  v5 = *(v3 + 64);
  v6 = *(v3 + 72);
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  sub_268601C90(v5, v6, v7, v8);
}

uint64_t Google_Protobuf_MethodDescriptorProto.clientStreaming.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 98) & 1;
}

uint64_t sub_2685E9244(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2686145F0(v5);

    *(a2 + 16) = v6;
    v5 = v6;
  }

  result = swift_beginAccess();
  *(v5 + 98) = v3;
  return result;
}

uint64_t Google_Protobuf_MethodDescriptorProto.clientStreaming.setter(char a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2686145F0(v5);

    *(v2 + 16) = v6;
    v5 = v6;
  }

  result = swift_beginAccess();
  *(v5 + 98) = a1 & 1;
  return result;
}

void (*Google_Protobuf_MethodDescriptorProto.clientStreaming.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 98) & 1;
  return sub_2685E93FC;
}

void sub_2685E93FC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2686145F0(v6);

    *(v7 + 16) = v8;
    v6 = v8;
  }

  swift_beginAccess();
  *(v6 + 98) = v4;

  free(v2);
}

BOOL Google_Protobuf_MethodDescriptorProto.hasClientStreaming.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 98) != 2;
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearClientStreaming()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v4 = sub_2686145F0(v3);

    *(v1 + 16) = v4;
    v3 = v4;
  }

  swift_beginAccess();
  *(v3 + 98) = 2;
}

uint64_t Google_Protobuf_MethodDescriptorProto.serverStreaming.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 99) & 1;
}

uint64_t sub_2685E95D8(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2686145F0(v5);

    *(a2 + 16) = v6;
    v5 = v6;
  }

  result = swift_beginAccess();
  *(v5 + 99) = v3;
  return result;
}

uint64_t Google_Protobuf_MethodDescriptorProto.serverStreaming.setter(char a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v6 = sub_2686145F0(v5);

    *(v2 + 16) = v6;
    v5 = v6;
  }

  result = swift_beginAccess();
  *(v5 + 99) = a1 & 1;
  return result;
}

void (*Google_Protobuf_MethodDescriptorProto.serverStreaming.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 99) & 1;
  return sub_2685E9790;
}

void sub_2685E9790(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v8 = sub_2686145F0(v6);

    *(v7 + 16) = v8;
    v6 = v8;
  }

  swift_beginAccess();
  *(v6 + 99) = v4;

  free(v2);
}

BOOL Google_Protobuf_MethodDescriptorProto.hasServerStreaming.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 99) != 2;
}

Swift::Void __swiftcall Google_Protobuf_MethodDescriptorProto.clearServerStreaming()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_MethodDescriptorProto._StorageClass();
    swift_allocObject();
    v4 = sub_2686145F0(v3);

    *(v1 + 16) = v4;
    v3 = v4;
  }

  swift_beginAccess();
  *(v3 + 99) = 2;
}

uint64_t sub_2685E9968@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a3@<X8>)
{
  *a3 = xmmword_26868A5E0;
  a1(0);
  result = swift_initStaticObject();
  *(a3 + 16) = result;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaPackage.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E9A18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E9A7C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
}

uint64_t Google_Protobuf_FileOptions.javaPackage.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(v3 + 24) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
}

void (*Google_Protobuf_FileOptions.javaPackage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685E9C58;
}

void sub_2685E9C58(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v7 = sub_268601EB8(v7);
      *(v8 + 24) = v7;
    }

    swift_beginAccess();
    *(v7 + 16) = v3;
    *(v7 + 24) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 24);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v10 = sub_268601EB8(v10);
      *(v11 + 24) = v10;
    }

    swift_beginAccess();
    *(v10 + 16) = v3;
    *(v10 + 24) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasJavaPackage.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 24) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaPackage()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
}

uint64_t Google_Protobuf_FileOptions.javaOuterClassname.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685E9EB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 40))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685E9F14(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
}

uint64_t Google_Protobuf_FileOptions.javaOuterClassname.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(v3 + 24) = v7;
  }

  swift_beginAccess();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
}

void (*Google_Protobuf_FileOptions.javaOuterClassname.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 40))
  {
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685EA0F0;
}

void sub_2685EA0F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v7 = sub_268601EB8(v7);
      *(v8 + 24) = v7;
    }

    swift_beginAccess();
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 24);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v10 = sub_268601EB8(v10);
      *(v11 + 24) = v10;
    }

    swift_beginAccess();
    *(v10 + 32) = v3;
    *(v10 + 40) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasJavaOuterClassname.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 40) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaOuterClassname()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
}

uint64_t Google_Protobuf_FileOptions.javaMultipleFiles.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 48) & 1;
}

uint64_t sub_2685EA328(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(a2 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 48) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaMultipleFiles.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v4 = sub_268601EB8(v4);
    *(v1 + 24) = v4;
  }

  result = swift_beginAccess();
  *(v4 + 48) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.javaMultipleFiles.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 48) & 1;
  return sub_2685EA4C8;
}

void sub_2685EA4C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 48) = v4;

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasJavaMultipleFiles.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 48) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaMultipleFiles()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 48) = 2;
}

uint64_t Google_Protobuf_FileOptions.javaGenerateEqualsAndHash.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 49) & 1;
}

uint64_t sub_2685EA690(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(a2 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 49) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaGenerateEqualsAndHash.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v4 = sub_268601EB8(v4);
    *(v1 + 24) = v4;
  }

  result = swift_beginAccess();
  *(v4 + 49) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.javaGenerateEqualsAndHash.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 49) & 1;
  return sub_2685EA830;
}

void sub_2685EA830(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 49) = v4;

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasJavaGenerateEqualsAndHash.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 49) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaGenerateEqualsAndHash()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 49) = 2;
}

uint64_t Google_Protobuf_FileOptions.javaStringCheckUtf8.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 50) & 1;
}

uint64_t sub_2685EA9F8(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(a2 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 50) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaStringCheckUtf8.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v4 = sub_268601EB8(v4);
    *(v1 + 24) = v4;
  }

  result = swift_beginAccess();
  *(v4 + 50) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.javaStringCheckUtf8.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 50) & 1;
  return sub_2685EAB98;
}

void sub_2685EAB98(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 50) = v4;

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasJavaStringCheckUtf8.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 50) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaStringCheckUtf8()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 50) = 2;
}

uint64_t Google_Protobuf_FileOptions.optimizeFor.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  result = swift_beginAccess();
  v5 = *(v3 + 51);
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_2685EAD6C(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(a2 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 51) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.optimizeFor.setter(char *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v4 = sub_268601EB8(v4);
    *(v1 + 24) = v4;
  }

  result = swift_beginAccess();
  *(v4 + 51) = v2;
  return result;
}

void (*Google_Protobuf_FileOptions.optimizeFor.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  v6 = *(v5 + 51);
  if (v6 == 3)
  {
    LOBYTE(v6) = 0;
  }

  *(v4 + 80) = v6;
  return sub_2685EAF0C;
}

void sub_2685EAF0C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v4 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 51) = v3;

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasOptimizeFor.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 51) != 3;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearOptimizeFor()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 51) = 3;
}

uint64_t Google_Protobuf_FileOptions.goPackage.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  if (*(v1 + 64))
  {
    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2685EB0F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  swift_beginAccess();
  if (*(v3 + 64))
  {
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_2685EB15C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(a2 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 56) = v4;
  *(v6 + 64) = v3;
}

uint64_t Google_Protobuf_FileOptions.goPackage.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v7 = sub_268601EB8(v7);
    *(v3 + 24) = v7;
  }

  swift_beginAccess();
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
}

void (*Google_Protobuf_FileOptions.goPackage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  if (*(v5 + 64))
  {
    v6 = *(v5 + 56);
    v7 = *(v5 + 64);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v4 + 72) = v6;
  *(v4 + 80) = v7;

  return sub_2685EB338;
}

void sub_2685EB338(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 24);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v7 = sub_268601EB8(v7);
      *(v8 + 24) = v7;
    }

    swift_beginAccess();
    *(v7 + 56) = v3;
    *(v7 + 64) = v5;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 24);
    if ((v9 & 1) == 0)
    {
      v11 = v2[11];
      type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
      swift_allocObject();
      v10 = sub_268601EB8(v10);
      *(v11 + 24) = v10;
    }

    swift_beginAccess();
    *(v10 + 56) = v3;
    *(v10 + 64) = v5;
  }

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasGoPackage.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 64) != 0;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearGoPackage()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
}

uint64_t Google_Protobuf_FileOptions.ccGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 72) & 1;
}

uint64_t sub_2685EB570(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(a2 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 72) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.ccGenericServices.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v4 = sub_268601EB8(v4);
    *(v1 + 24) = v4;
  }

  result = swift_beginAccess();
  *(v4 + 72) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.ccGenericServices.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 72) & 1;
  return sub_2685EB710;
}

void sub_2685EB710(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 72) = v4;

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasCcGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 72) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearCcGenericServices()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 72) = 2;
}

uint64_t Google_Protobuf_FileOptions.javaGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 73) & 1;
}

uint64_t sub_2685EB8D8(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(a2 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 73) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.javaGenericServices.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v4 = sub_268601EB8(v4);
    *(v1 + 24) = v4;
  }

  result = swift_beginAccess();
  *(v4 + 73) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.javaGenericServices.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 73) & 1;
  return sub_2685EBA78;
}

void sub_2685EBA78(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 73) = v4;

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasJavaGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 73) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearJavaGenericServices()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 73) = 2;
}

uint64_t Google_Protobuf_FileOptions.pyGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 74) & 1;
}

uint64_t sub_2685EBC40(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(a2 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 74) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.pyGenericServices.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v4 = sub_268601EB8(v4);
    *(v1 + 24) = v4;
  }

  result = swift_beginAccess();
  *(v4 + 74) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.pyGenericServices.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 74) & 1;
  return sub_2685EBDE0;
}

void sub_2685EBDE0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 74) = v4;

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasPyGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 74) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPyGenericServices()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 74) = 2;
}

uint64_t Google_Protobuf_FileOptions.phpGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 75) & 1;
}

uint64_t sub_2685EBFA8(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(a2 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 75) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.phpGenericServices.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v4 = sub_268601EB8(v4);
    *(v1 + 24) = v4;
  }

  result = swift_beginAccess();
  *(v4 + 75) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.phpGenericServices.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 75) & 1;
  return sub_2685EC148;
}

void sub_2685EC148(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 75) = v4;

  free(v2);
}

BOOL Google_Protobuf_FileOptions.hasPhpGenericServices.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 75) != 2;
}

Swift::Void __swiftcall Google_Protobuf_FileOptions.clearPhpGenericServices()()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v2 = sub_268601EB8(v2);
    *(v0 + 24) = v2;
  }

  swift_beginAccess();
  *(v2 + 75) = 2;
}

uint64_t Google_Protobuf_FileOptions.deprecated.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 76) & 1;
}

uint64_t sub_2685EC310(char *a1, uint64_t a2)
{
  v3 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v5 = sub_268601EB8(v5);
    *(a2 + 24) = v5;
  }

  result = swift_beginAccess();
  *(v5 + 76) = v3;
  return result;
}

uint64_t Google_Protobuf_FileOptions.deprecated.setter(char a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v4 = sub_268601EB8(v4);
    *(v1 + 24) = v4;
  }

  result = swift_beginAccess();
  *(v4 + 76) = a1 & 1;
  return result;
}

void (*Google_Protobuf_FileOptions.deprecated.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 76) & 1;
  return sub_2685EC4B0;
}

void sub_2685EC4B0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v3 + 24);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = v2[9];
    type metadata accessor for Google_Protobuf_FileOptions._StorageClass();
    swift_allocObject();
    v6 = sub_268601EB8(v6);
    *(v7 + 24) = v6;
  }

  swift_beginAccess();
  *(v6 + 76) = v4;

  free(v2);
}