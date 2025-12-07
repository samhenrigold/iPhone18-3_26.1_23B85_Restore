void sub_223B5C988(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xF9)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 248) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xF8)
  {
    v8 = a2 - 249;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_223B5CB40()
{
  if (!qword_281339330)
  {
    v0 = sub_223BF445C();
    if (!v1)
    {
      atomic_store(v0, &qword_281339330);
    }
  }
}

void sub_223B5CBA0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_223BF471C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_223B5CBEC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_223B5CC6C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_223B5CDF0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

int *sub_223B5D040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1250, &unk_223BF7F40);
  v108 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v107 = &v86 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11E8, &qword_223BF7C70);
  v5 = *(v4 - 8);
  v104 = v4;
  v105 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v86 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12F0, &qword_223BF7F50);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v86 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11D8, &qword_223BF7C60);
  v102 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v86 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11F8, &qword_223BF7C80);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = &v86 - v21;
  v23 = v109;
  result = sub_223B7B440(a1, &v111, (&v86 - v21));
  if (!v23)
  {
    v99 = v20;
    v100 = v13;
    v91 = v7;
    v94 = v16;
    v95 = v14;
    v96 = v11;
    v97 = v8;
    v98 = v22;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12F8, &qword_223BF7F58);
    v26 = *(a1 + v25[9]);
    v27 = 0;
    v28 = sub_223B5ACC8(*(a1 + v25[10]));
    v89 = v26;
    v90 = v28;
    v88 = sub_223B5ACC8(*(a1 + v25[11]));
    v29 = *(a1 + v25[12]);
    v30 = *(v29 + 16);
    v31 = MEMORY[0x277D84F90];
    v32 = v103;
    if (v30)
    {
      v86 = a1;
      v87 = v25;
      v109 = 0;
      v111 = MEMORY[0x277D84F90];
      sub_223B57D54(0, v30, 0);
      v33 = 0;
      v34 = v107;
      v35 = *(v108 + 80);
      v92 = v30;
      v93 = v29 + ((v35 + 32) & ~v35);
      v101 = v111;
      v36 = v91;
      while (v33 < *(v29 + 16))
      {
        sub_223B568F8(v93 + *(v108 + 72) * v33, v34, &qword_27D0B1250, &unk_223BF7F40);
        v38 = *v34;
        v37 = *(v34 + 1);
        v39 = *(v106 + 36);

        v40 = &v34[v39];
        v41 = v99;
        v42 = v109;
        sub_223B7B440(v40, &v110, v99);
        if (v42)
        {

          sub_223B56960(v34, &qword_27D0B1250, &unk_223BF7F40);
          sub_223B56960(v98, &qword_27D0B11F8, &qword_223BF7C80);
        }

        v109 = 0;
        *v36 = v38;
        v36[1] = v37;
        sub_223B56890(v41, v36 + *(v104 + 36), &qword_27D0B11F8, &qword_223BF7C80);
        sub_223B56960(v34, &qword_27D0B1250, &unk_223BF7F40);
        v43 = v101;
        v111 = v101;
        v45 = *(v101 + 16);
        v44 = *(v101 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_223B57D54((v44 > 1), v45 + 1, 1);
          v43 = v111;
        }

        ++v33;
        *(v43 + 16) = v45 + 1;
        v46 = (*(v105 + 80) + 32) & ~*(v105 + 80);
        v101 = v43;
        sub_223B56890(v36, v43 + v46 + *(v105 + 72) * v45, &qword_27D0B11E8, &qword_223BF7C70);
        v34 = v107;
        if (v92 == v33)
        {
          v27 = v109;
          v32 = v103;
          v25 = v87;
          a1 = v86;
          v31 = v101;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_11:
    v47 = *(a1 + v25[13]);
    v48 = *(v47 + 16);
    v49 = MEMORY[0x277D84F90];
    if (v48)
    {
      v101 = v31;
      v109 = v27;
      v111 = MEMORY[0x277D84F90];
      sub_223B57D14(0, v48, 0);
      v108 = v111;
      v50 = v47 + 64;
      v51 = sub_223BF4A3C();
      v52 = 0;
      v53 = *(v47 + 36);
      v93 = v47 + 72;
      v54 = v97;
      v99 = v48;
      v104 = v53;
      v105 = v47 + 64;
      v106 = v47;
      while ((v51 & 0x8000000000000000) == 0 && v51 < 1 << *(v47 + 32))
      {
        v57 = v51 >> 6;
        if ((*(v50 + 8 * (v51 >> 6)) & (1 << v51)) == 0)
        {
          goto LABEL_41;
        }

        if (v53 != *(v47 + 36))
        {
          goto LABEL_42;
        }

        v107 = v52;
        v58 = *(v54 + 48);
        v59 = *(v47 + 48);
        v60 = *(v47 + 56);
        v61 = *(v59 + 4 * v51);
        v62 = v54;
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1228, &unk_223BF7CB0);
        sub_223B568F8(v60 + *(*(v63 - 8) + 72) * v51, &v100[v58], &qword_27D0B1228, &unk_223BF7CB0);
        v64 = v96;
        *v96 = v61;
        v65 = *(v62 + 48);
        v66 = v94;
        v67 = &v100[v58];
        v68 = v64;
        sub_223B56890(v67, v64 + v65, &qword_27D0B1228, &unk_223BF7CB0);
        v69 = v109;
        sub_223B5B6C8(v68 + v65, (v66 + *(v95 + 48)));
        v109 = v69;
        if (v69)
        {

          sub_223B56960(v68, &qword_27D0B12F0, &qword_223BF7F50);
          sub_223B56960(v98, &qword_27D0B11F8, &qword_223BF7C80);
        }

        *v66 = v61;
        sub_223B56960(v68, &qword_27D0B12F0, &qword_223BF7F50);
        v70 = v108;
        v111 = v108;
        v72 = *(v108 + 16);
        v71 = *(v108 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_223B57D14((v71 > 1), v72 + 1, 1);
          v70 = v111;
        }

        *(v70 + 16) = v72 + 1;
        v73 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v108 = v70;
        sub_223B56890(v66, v70 + v73 + *(v102 + 72) * v72, &qword_27D0B11D8, &qword_223BF7C60);
        v47 = v106;
        v55 = 1 << *(v106 + 32);
        if (v51 >= v55)
        {
          goto LABEL_43;
        }

        v50 = v105;
        v74 = *(v105 + 8 * v57);
        if ((v74 & (1 << v51)) == 0)
        {
          goto LABEL_44;
        }

        LODWORD(v53) = v104;
        if (v104 != *(v106 + 36))
        {
          goto LABEL_45;
        }

        v75 = v74 & (-2 << (v51 & 0x3F));
        if (v75)
        {
          v55 = __clz(__rbit64(v75)) | v51 & 0x7FFFFFFFFFFFFFC0;
          v56 = v99;
        }

        else
        {
          v76 = v57 << 6;
          v77 = v57 + 1;
          v78 = (v93 + 8 * v57);
          v56 = v99;
          while (v77 < (v55 + 63) >> 6)
          {
            v80 = *v78++;
            v79 = v80;
            v76 += 64;
            ++v77;
            if (v80)
            {
              sub_223B5AC98(v51, v104, 0);
              v55 = __clz(__rbit64(v79)) + v76;
              goto LABEL_14;
            }
          }

          sub_223B5AC98(v51, v104, 0);
        }

LABEL_14:
        v52 = v107 + 1;
        v51 = v55;
        v32 = v103;
        v54 = v97;
        if (v107 + 1 == v56)
        {
          v49 = v108;
          v27 = v109;
          v31 = v101;
          goto LABEL_33;
        }
      }

LABEL_40:
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
      goto LABEL_46;
    }

LABEL_33:
    v81 = v89;
    if (v49[2])
    {
      v82 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11C8, &qword_223BF7C50);
      v83 = sub_223BF4C1C();
      v49 = v82;
    }

    else
    {
      v83 = MEMORY[0x277D84F98];
    }

    v84 = v98;
    v111 = v83;
    sub_223B5DA54(v49, 1, &v111);
    if (v27)
    {
LABEL_46:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v85 = v111;
    sub_223B56890(v84, v32, &qword_27D0B11F8, &qword_223BF7C80);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11B0, &unk_223BF7F60);
    *(v32 + result[9]) = v81;
    *(v32 + result[10]) = v90;
    *(v32 + result[11]) = v88;
    *(v32 + result[12]) = v31;
    *(v32 + result[13]) = v85;
  }

  return result;
}

void sub_223B5DA54(uint64_t *a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11C0, &qword_223BF7C48);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B11D8, &qword_223BF7C60);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = (v52 - v14);
  v56 = a1[2];
  if (!v56)
  {
    goto LABEL_22;
  }

  v52[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v55 = *(v13 + 72);
  v57 = a1;
  sub_223B568F8(a1 + v17, v52 - v14, &qword_27D0B11D8, &qword_223BF7C60);
  v61 = *v15;
  v18 = v61;
  v54 = v16;
  sub_223B56890(v15 + v16, v10, &qword_27D0B11C0, &qword_223BF7C48);
  v19 = *a3;
  v20 = sub_223B6F918(v18);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_223B594C4(v25, a2 & 1);
    v20 = sub_223B6F918(v18);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_223BF4DEC();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v20;
  sub_223B6FDD4();
  v20 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();

    v60 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_223B56960(v10, &qword_27D0B11C0, &qword_223BF7C48);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  *(v31[6] + 4 * v20) = v18;
  v32 = v31[7];
  v53 = *(v8 + 72);
  sub_223B56890(v10, v32 + v53 * v20, &qword_27D0B11C0, &qword_223BF7C48);
  v33 = v31[2];
  v24 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (!v24)
  {
    v31[2] = v34;
    v35 = v57;
    if (v56 == 1)
    {
LABEL_22:

      return;
    }

    v36 = v57 + v55 + v17;
    v37 = &qword_27D0B11C0;
    v38 = 1;
    while (v38 < v35[2])
    {
      sub_223B568F8(v36, v15, &qword_27D0B11D8, &qword_223BF7C60);
      v61 = *v15;
      v39 = v61;
      v40 = v37;
      sub_223B56890(v15 + v54, v10, v37, &qword_223BF7C48);
      v41 = *a3;
      v42 = sub_223B6F918(v39);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v24 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v24)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        sub_223B594C4(v46, 1);
        v42 = sub_223B6F918(v39);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      *(v49[6] + 4 * v42) = v39;
      v37 = v40;
      sub_223B56890(v10, v49[7] + v53 * v42, v40, &qword_223BF7C48);
      v50 = v49[2];
      v24 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v38;
      v49[2] = v51;
      v36 += v55;
      v35 = v57;
      if (v56 == v38)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_223BF4AAC();
  MEMORY[0x223DF2DE0](0xD00000000000001BLL, 0x8000000223C03E00);
  sub_223BF4BCC();
  MEMORY[0x223DF2DE0](39, 0xE100000000000000);
  sub_223BF4BEC();
  __break(1u);
}

unint64_t sub_223B5DFAC()
{
  result = qword_27D0B1300;
  if (!qword_27D0B1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1300);
  }

  return result;
}

uint64_t sub_223B5E000(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_223BF459C();

    return sub_223BF460C();
  }

  return result;
}

uint64_t sub_223B5E0A0(uint64_t a1)
{
  result = sub_223BF430C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_223B5E128(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_223BF430C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_223B5E368(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_223BF430C() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_223B5E64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_223BF430C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v12 = type metadata accessor for ConcreteLocation(0, a3, a4, v11);
  v13 = *(*(a3 - 8) + 32);
  v14 = a5 + *(v12 + 36);

  return v13(v14, a2, a3);
}

uint64_t sub_223B5E71C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_223BF430C();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v5);
  a1(v5 + *(a2 + 36));
  return sub_223B5E64C(v15, v12, a3, a4, a5);
}

uint64_t sub_223B5E874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_223BF42AC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ConcreteLocation(0, a3, a4, v6);
  return sub_223BF452C() & 1;
}

unint64_t sub_223B5E960()
{
  result = qword_27D0B1308;
  if (!qword_27D0B1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1308);
  }

  return result;
}

uint64_t sub_223B5E9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ConcreteLocation(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = sub_223B5EE00();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_223B5EA30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = ((*(*(sub_223BF430C() - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  v6 = 16;
  if (v5 > 0x10)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v11 < 2)
    {
LABEL_25:
      v13 = *(a1 + v6);
      if (v13 >= 2)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_25;
  }

LABEL_14:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 255;
}

void sub_223B5EBCC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = ((*(*(sub_223BF430C() - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  v8 = v7 + 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 254) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v7] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_223B5EE00()
{
  result = qword_281339328;
  if (!qword_281339328)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_281339328);
  }

  return result;
}

uint64_t sub_223B5EE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a1;
  v38 = a2;
  v6 = type metadata accessor for ConcreteLocation(0, a3, a4, a4);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v32 = &v31 - v7;
  v33 = a4;
  v9 = type metadata accessor for FailableConcreteLocation(0, a3, a4, v8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v31 - v18;
  v20 = &v31 + *(v17 + 48) - v18;
  v21 = *(v10 + 16);
  v21(&v31 - v18, v37, v9);
  v21(v20, v38, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21(v15, v19, v9);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v35;
      v26 = v36;
      v28 = v32;
      (*(v35 + 32))(v32, v20, v36);
      v25 = sub_223B5E874(v15, v28, a3, v33);
      v29 = *(v27 + 8);
      v29(v28, v26);
      v29(v15, v26);
      goto LABEL_14;
    }

    (*(v35 + 8))(v15, v36);
    goto LABEL_11;
  }

  v21(v13, v19, v9);
  v23 = *v13;
  v22 = v13[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_11:
    v25 = 0;
    v10 = v34;
    v9 = TupleTypeMetadata2;
    goto LABEL_14;
  }

  if (v23 == *v20 && v22 == *(v20 + 1))
  {

    v25 = 1;
  }

  else
  {
    v25 = sub_223BF4DAC();
  }

LABEL_14:
  (*(v10 + 8))(v19, v9);
  return v25 & 1;
}

uint64_t sub_223B5F1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  type metadata accessor for FailureTracked(0, a2, a3, a4);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_223B5F240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_223BF46CC();
  sub_223B5F1EC(v8, a1, a2, a3, a4);
}

uint64_t sub_223B5F2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_223B6CE60(a3, a3);
  v10 = *(a3 - 8);
  swift_allocObject();
  v11 = sub_223BF469C();
  (*(v10 + 16))(v12, a1, a3);
  v13 = sub_223B6C1C4(v11, a3);
  sub_223B5F1EC(v13, a2, a3, a4, a5);
}

BOOL sub_223B5F3C8(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = swift_getEnumCaseMultiPayload() == 1;
  (*(v2 + 8))(v4, a1);
  return v5;
}

uint64_t sub_223B5F4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v6, a1);
    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = *(v8 - 8);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }
}

uint64_t sub_223B5F658(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v4;
  }

  (*(v2 + 8))(v4, a1);
  return 0;
}

uint64_t sub_223B5F748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30[2] = a7;
  v30[3] = a6;
  v33 = a1;
  v34 = a2;
  v32 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v30[0] = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[1] = v9;
  v12 = type metadata accessor for FailureTracked(0, v10, v9, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v30 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = *(TupleTypeMetadata2 - 8);
  v20 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v22 = v30 - v21;
  v23 = *(v20 + 48);
  v24 = *(v13 + 16);
  v24(v30 - v21, v33, v12);
  v24(&v22[v23], v34, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v24(v18, v22, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = v32;
      v27 = v30[0];
      (*(v32 + 32))(v30[0], &v22[v23], a3);
      v25 = sub_223BF452C();
      v28 = *(v26 + 8);
      v28(v27, a3);
      v28(v18, a3);
      goto LABEL_9;
    }

    (*(v32 + 8))(v18, a3);
    goto LABEL_7;
  }

  v24(v16, v22, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_7:
    v25 = 0;
    v13 = v31;
    v12 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v25 = sub_223BF474C();

LABEL_9:
  (*(v13 + 8))(v22, v12);
  return v25 & 1;
}

uint64_t sub_223B5FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    MEMORY[0x223DF36D0](1);
    sub_223BF473C();
  }

  else
  {
    (*(v6 + 32))(v9, v11, v5);
    MEMORY[0x223DF36D0](0);
    sub_223BF44AC();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_223B5FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_223BF4E8C();
  sub_223B5FAC8(v7, a1, a2, a3);
  return sub_223BF4EBC();
}

uint64_t sub_223B5FD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_223BF4E8C();
  sub_223B5FAC8(v7, a2, v4, v5);
  return sub_223BF4EBC();
}

uint64_t sub_223B5FDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(a1, a2, a4);
  type metadata accessor for FailureTracked(0, a2, a3, *(a4 + 8));

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_223B5FE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v37 = a5;
  v32 = sub_223BF4A0C();
  v31 = *(v32 - 8);
  v9 = MEMORY[0x28223BE20](v32);
  v11 = v30 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v34 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v33 = a1;
  *&v43 = a1;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  KeyPath = swift_getKeyPath();
  v38 = a4;
  v39 = KeyPath;
  v35 = a4;
  v36 = type metadata accessor for FailureTracked(255, a2, a3, *(a4 + 8));
  type metadata accessor for NonEmptyArray(0, v36, v15, v16);
  v30[1] = swift_getWitnessTable();
  v17 = sub_223BF461C();

  *&v43 = v17;
  sub_223BF471C();
  swift_getWitnessTable();
  sub_223BF491C();
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    (*(v31 + 8))(v11, v32);

    *&v43 = v33;
    MEMORY[0x28223BE20](v18);
    v30[-4] = a2;
    v30[-3] = a3;
    v19 = v35;
    v30[-2] = v35;
    v20 = swift_getKeyPath();
    v21 = MEMORY[0x28223BE20](v20);
    v30[-2] = v19;
    v30[-1] = v21;
    sub_223BF471C();
    v22 = sub_223BF461C();

    v48 = v22;
    v47 = sub_223BF46CC();
    MEMORY[0x28223BE20](v47);
    v30[-4] = a2;
    v30[-3] = a3;
    v30[-2] = v19;
    sub_223BF471C();
    swift_getWitnessTable();
    sub_223BF465C();

    *v37 = v43;
  }

  else
  {
    v23 = v34;
    (*(v12 + 32))(v34, v11, a2);
    v48 = v17;
    sub_223BF496C();
    v24 = v44;
    v25 = v45;
    v26 = sub_223BF4A2C();
    v33 = v43;
    v45 = v26;
    WitnessTable = swift_getWitnessTable();
    v27 = swift_allocObject();
    *&v43 = v27;
    *(v27 + 16) = v33;
    *(v27 + 32) = v24;
    *(v27 + 40) = v25;
    swift_unknownObjectRetain();
    v28 = sub_223B6D09C(v23, &v43, a2);
    __swift_destroy_boxed_opaque_existential_0(&v43);
    (*(v35 + 16))(v28, a2);
    swift_unknownObjectRelease();

    (*(v12 + 8))(v23, a2);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_223B603C8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_223B604AC@<X0>(uint64_t *a3@<X8>)
{
  result = sub_223BF46BC();
  *a3 = result;
  return result;
}

uint64_t sub_223B604E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_223BF471C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_223B60564(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_223B6067C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_223B60850(uint64_t a1, int a2)
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

uint64_t sub_223B60898(uint64_t result, int a2, int a3)
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

uint64_t sub_223B608FC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_223B6092C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_223BF4DAC();
  }
}

unint64_t sub_223B60968(uint64_t a1)
{
  result = sub_223B60990();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_223B60990()
{
  result = qword_281339348;
  if (!qword_281339348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281339348);
  }

  return result;
}

uint64_t sub_223B609E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_223B60A20(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t (*sub_223B60AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1)
{
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v11[6] = a6;
  return sub_223B60C24;
}

uint64_t sub_223B60B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_223BF429C())
  {
    return (*(a6 + 24))(a1, a3, a6);
  }

  else
  {
    return (*(a5 + 40))(a1, a3, a5);
  }
}

unint64_t sub_223B60CD4()
{
  v1 = (v0 + OBJC_IVAR___ADMListenerRegistrationResults_state);
  if (*(v0 + OBJC_IVAR___ADMListenerRegistrationResults_state + 16))
  {
    if (*(v0 + OBJC_IVAR___ADMListenerRegistrationResults_state + 16) == 1)
    {
      return 0;
    }

    else
    {
      return 0xD000000000000018;
    }
  }

  else
  {
    v4 = *v1;
    v3 = v1[1];
    sub_223BF4AAC();

    MEMORY[0x223DF2DE0](v4, v3);
    return 0xD000000000000022;
  }
}

uint64_t sub_223B60D94()
{
  if (*(v0 + OBJC_IVAR___ADMListenerRegistrationResults_state + 16) == 1)
  {
    return *(v0 + OBJC_IVAR___ADMListenerRegistrationResults_state);
  }

  else
  {
    return 0;
  }
}

id sub_223B60E68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListenerRegistrationResults();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_20AudioDSPManagerSwift27ListenerRegistrationResultsC5StateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_223B60FC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_223B61008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_223B6104C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_223B61074(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_223B61088()
{
  v0 = sub_223BF442C();
  __swift_allocate_value_buffer(v0, qword_27D0B97F8);
  __swift_project_value_buffer(v0, qword_27D0B97F8);
  sub_223B61180();
  sub_223BF49FC();
  return sub_223BF443C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_223B61180()
{
  result = qword_27D0B1318;
  if (!qword_27D0B1318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0B1318);
  }

  return result;
}

void *sub_223B611CC(uint64_t a1)
{
  v2 = sub_223BF4A3C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_223B63518(&v4, v2, *(a1 + 36), 0, a1);
  }
}

void sub_223B6124C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_223BF4A3C();
  if (v4 == 1 << *(a1 + 32))
  {
    sub_223B65C24(&v52);
    v5 = v61;
    *(a2 + 128) = v60;
    *(a2 + 144) = v5;
    *(a2 + 160) = v62;
    v6 = v57;
    *(a2 + 64) = v56;
    *(a2 + 80) = v6;
    v7 = v59;
    *(a2 + 96) = v58;
    *(a2 + 112) = v7;
    v8 = v53;
    *a2 = v52;
    *(a2 + 16) = v8;
    v9 = v55;
    *(a2 + 32) = v54;
    *(a2 + 48) = v9;
  }

  else
  {
    v10 = sub_223B63414(&v18, v4, *(a1 + 36), 0, a1);
    v11 = v24;
    v28[6] = v24;
    v28[7] = v25;
    v28[8] = v26;
    v12 = v20;
    v28[2] = v20;
    v28[3] = v21;
    v28[4] = v22;
    v28[5] = v23;
    v28[0] = v18;
    v28[1] = v19;
    v48 = v24;
    v49 = v25;
    v50 = v26;
    v44 = v20;
    v45 = v21;
    v46 = v22;
    v47 = v23;
    v42 = v18;
    v43 = v19;
    v37 = v24;
    v38 = v25;
    v39 = v26;
    v33 = v20;
    v34 = v21;
    v35 = v22;
    v36 = v23;
    v29 = v27;
    *&v17 = v10;
    *(&v17 + 1) = v13;
    v51 = v27;
    *&v30 = v10;
    *(&v30 + 1) = v13;
    v40 = v27;
    v31 = v18;
    v32 = v19;
    v14 = v26;
    *(a2 + 128) = v25;
    *(a2 + 144) = v14;
    *(a2 + 160) = v40;
    v15 = v35;
    *(a2 + 64) = v34;
    *(a2 + 80) = v15;
    *(a2 + 96) = v36;
    *(a2 + 112) = v11;
    v16 = v31;
    *a2 = v30;
    *(a2 + 16) = v16;
    *(a2 + 32) = v32;
    *(a2 + 48) = v12;
    v41[0] = v10;
    v41[1] = v13;

    sub_223B65BEC(v28, &v52);
    sub_223B568F8(&v30, &v52, &qword_27D0B1378, &qword_223BF8550);
    sub_223B56960(v41, &qword_27D0B1378, &qword_223BF8550);
    v60 = v25;
    v61 = v26;
    v62 = v27;
    v56 = v21;
    v57 = v22;
    v58 = v23;
    v59 = v24;
    v52 = v17;
    v53 = v18;
    v54 = v19;
    v55 = v20;
    sub_223B56960(&v52, &qword_27D0B1378, &qword_223BF8550);
    nullsub_1();
  }
}

BOOL sub_223B614E8(uint64_t a1, uint64_t a2)
{
  v15 = MEMORY[0x277D84F90];
  sub_223B57CF4(0, 2, 0);
  v4 = v15;
  v6 = *(v15 + 16);
  v5 = *(v15 + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    sub_223B57CF4((v5 > 1), v6 + 1, 1);
    v4 = v15;
    v5 = *(v15 + 24);
    v7 = v5 >> 1;
  }

  *(v4 + 16) = v8;
  v9 = v4 + 16 * v6;
  *(v9 + 32) = 1684957547;
  *(v9 + 40) = 0xE400000000000000;
  v10 = v6 + 2;
  if (v7 <= v8)
  {
    sub_223B57CF4((v5 > 1), v10, 1);
    v4 = v15;
  }

  *(v4 + 16) = v10;
  v11 = v4 + 16 * v8;
  *(v11 + 32) = 1701080941;
  *(v11 + 40) = 0xE400000000000000;
  v12 = sub_223B635AC(v4);

  v13 = sub_223B61614(a1, a2, v12);

  return (v13 & 1) == 0;
}

uint64_t sub_223B61614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_223BF4E8C();
  sub_223BF458C();
  v6 = sub_223BF4EBC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_223BF4DAC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_223B61738(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_223B617E4@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1 == 3)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B13B8, &qword_223BF8570);
    swift_storeEnumTagMultiPayload();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B13B0, &qword_223BF8568);
    swift_storeEnumTagMultiPayload();
    v4 = *(*(v3 - 8) + 56);
    v5 = a2;
    v6 = 0;
    v7 = v3;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B13B0, &qword_223BF8568);
    v4 = *(*(v8 - 8) + 56);
    v7 = v8;
    v5 = a2;
    v6 = 1;
  }

  return v4(v5, v6, 1, v7);
}

double sub_223B618F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X4>, _OWORD *a3@<X8>)
{
  sub_223B64E58(*a1, a2, v14);
  if (!v3)
  {
    v6 = v26;
    a3[12] = v25;
    a3[13] = v6;
    v7 = v28;
    a3[14] = v27;
    a3[15] = v7;
    v8 = v22;
    a3[8] = v21;
    a3[9] = v8;
    v9 = v24;
    a3[10] = v23;
    a3[11] = v9;
    v10 = v18;
    a3[4] = v17;
    a3[5] = v10;
    v11 = v20;
    a3[6] = v19;
    a3[7] = v11;
    v12 = v14[1];
    *a3 = v14[0];
    a3[1] = v12;
    result = *&v15;
    v13 = v16;
    a3[2] = v15;
    a3[3] = v13;
  }

  return result;
}

unint64_t sub_223B619C8(_OWORD *a1)
{
  v1 = a1[13];
  v10[12] = a1[12];
  v10[13] = v1;
  v2 = a1[15];
  v10[14] = a1[14];
  v10[15] = v2;
  v3 = a1[9];
  v10[8] = a1[8];
  v10[9] = v3;
  v4 = a1[11];
  v10[10] = a1[10];
  v10[11] = v4;
  v5 = a1[5];
  v10[4] = a1[4];
  v10[5] = v5;
  v6 = a1[7];
  v10[6] = a1[6];
  v10[7] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = a1[3];
  v10[2] = a1[2];
  v10[3] = v8;
  return sub_223B655BC(v10);
}

void sub_223B61A34(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[4];

  if (!v6)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = sub_223B6F81C(v8, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_223B58FAC(v15, v5 & 1);
    v10 = sub_223B6F81C(v8, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_223BF4DEC();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v20 = v10;
  sub_223B6FB04();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1100, &qword_223BF7760);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v7;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_223BF4AAC();
    MEMORY[0x223DF2DE0](0xD00000000000001BLL, 0x8000000223C03E00);
    sub_223BF4BCC();
    MEMORY[0x223DF2DE0](39, 0xE100000000000000);
    sub_223BF4BEC();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = *(v5 - 2);

      if (!v6)
      {
        goto LABEL_23;
      }

      v26 = *a3;
      v27 = sub_223B6F81C(v8, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_223B58FAC(v31, 1);
        v27 = sub_223B6F81C(v8, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v8;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v7;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void *sub_223B61DD0(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_223B62398(v12, v7, v5, a3);
  result = MEMORY[0x223DF4FD0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_223B61F40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

unint64_t *sub_223B61F4C(unint64_t *result, uint64_t a2, uint64_t a3)
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
    if (!*(*(a3 + 56) + 152 * v10))
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_223B62420(result, a2, v4, a3);
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
      return sub_223B62420(result, a2, v4, a3);
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

unint64_t *sub_223B62040(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v15 = result;
  v16 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v19 = (v7 - 1) & v7;
LABEL_12:
    v17 = v9 | (v3 << 6);
    sub_223B50954();

    if (sub_223BF4A1C())
    {

      v7 = v19;
    }

    else
    {
      v12 = sub_223BF4A1C();

      v7 = v19;
      if ((v12 & 1) == 0)
      {
        *(v15 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v16++, 1))
        {
          __break(1u);
          return sub_223B626C8(v15, a2, v16, a3);
        }
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_223B626C8(v15, a2, v16, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v19 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_223B6222C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_223B614E8(v15, v16);

    if (v17)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_223B6290C(v20, a2, v21, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_223B6290C(v20, a2, v21, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_223B62398(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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

uint64_t sub_223B62420(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1370, &qword_223BF8548);
  result = sub_223BF4C1C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v47 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 152 * v16);
    v22 = v21[5];
    v24 = v21[2];
    v23 = v21[3];
    v53 = v21[4];
    v54 = v22;
    v51 = v24;
    v52 = v23;
    v26 = v21[7];
    v25 = v21[8];
    v27 = v21[6];
    v58 = *(v21 + 36);
    v56 = v26;
    v57 = v25;
    v55 = v27;
    v28 = v21[1];
    v49 = *v21;
    v50 = v28;
    sub_223BF4E8C();

    sub_223B65BEC(&v49, v48);
    sub_223BF458C();
    result = sub_223BF4EBC();
    v29 = -1 << *(v9 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v12 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v12 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v12 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v9 + 48) + 16 * v32);
    *v37 = v19;
    v37[1] = v20;
    v38 = *(v9 + 56) + 152 * v32;
    v39 = v50;
    *v38 = v49;
    *(v38 + 16) = v39;
    v40 = v51;
    v41 = v52;
    v42 = v54;
    *(v38 + 64) = v53;
    *(v38 + 80) = v42;
    *(v38 + 32) = v40;
    *(v38 + 48) = v41;
    v43 = v55;
    v44 = v56;
    v45 = v57;
    *(v38 + 144) = v58;
    *(v38 + 112) = v44;
    *(v38 + 128) = v45;
    *(v38 + 96) = v43;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v47;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_223B626C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B13A8, &qword_223BF8560);
  result = sub_223BF4C1C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_223BF4E8C();

    sub_223BF458C();
    result = sub_223BF4EBC();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_223B6290C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12B8, &unk_223BFA070);
  result = sub_223BF4C1C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_223BF4E8C();

    sub_223BF458C();
    result = sub_223BF4EBC();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_223B62B50(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_223BF4E8C();
  sub_223BF458C();
  v8 = sub_223BF4EBC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_223BF4DAC() & 1) != 0)
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

    sub_223B62F00(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_223B62CA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1398, &qword_223BF8558);
  result = sub_223BF4A6C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_223BF4E8C();
      sub_223BF458C();
      result = sub_223BF4EBC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_223B62F00(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_223B62CA0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_223B63080();
      goto LABEL_16;
    }

    sub_223B631DC(v8 + 1);
  }

  v10 = *v4;
  sub_223BF4E8C();
  sub_223BF458C();
  result = sub_223BF4EBC();
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

      result = sub_223BF4DAC();
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
  result = sub_223BF4DDC();
  __break(1u);
  return result;
}

void *sub_223B63080()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1398, &qword_223BF8558);
  v2 = *v0;
  v3 = sub_223BF4A5C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_223B631DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1398, &qword_223BF8558);
  result = sub_223BF4A6C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_223BF4E8C();

      sub_223BF458C();
      result = sub_223BF4EBC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_223B63414(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v23 = v5;
    v24 = v6;
    v7 = *(*(a5 + 48) + 16 * a2);
    v8 = *(a5 + 56) + 152 * a2;
    v9 = *(v8 + 16);
    v21[0] = *v8;
    v21[1] = v9;
    v10 = *(v8 + 80);
    v12 = *(v8 + 32);
    v11 = *(v8 + 48);
    v21[4] = *(v8 + 64);
    v21[5] = v10;
    v21[2] = v12;
    v21[3] = v11;
    v14 = *(v8 + 112);
    v13 = *(v8 + 128);
    v15 = *(v8 + 96);
    v22 = *(v8 + 144);
    v21[7] = v14;
    v21[8] = v13;
    v21[6] = v15;
    v16 = *(v8 + 112);
    *(result + 96) = *(v8 + 96);
    *(result + 112) = v16;
    *(result + 128) = *(v8 + 128);
    *(result + 144) = *(v8 + 144);
    v17 = *(v8 + 48);
    *(result + 32) = *(v8 + 32);
    *(result + 48) = v17;
    v18 = *(v8 + 80);
    *(result + 64) = *(v8 + 64);
    *(result + 80) = v18;
    v19 = *(v8 + 16);
    *result = *v8;
    *(result + 16) = v19;

    sub_223B65BEC(v21, v20);
    return v7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_223B63518(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_223B635AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DF30C0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_223B62B50(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_223B63644(unint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 & 0x1FFFFFFFFFFFFFFFLL;
  if (v1 >> 61 != 5)
  {

    sub_223B65D98();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  v3 = *(v2 + 16);

  if (!*(v3 + 16) || (result = sub_223B6F81C(1684957547, 0xE400000000000000), (v5 & 1) == 0))
  {

    sub_223B65D98();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  v6 = *(*(v3 + 56) + 8 * result);
  if (v6 >> 61 != 1)
  {

    sub_223B65D98();
    swift_allocError();
    v16 = 2;
LABEL_21:
    *v15 = v16;
    swift_willThrow();
  }

  v7 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (HIDWORD(v7))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v8 = *(v3 + 16);

  if (!v8)
  {
    v12 = 0;
    goto LABEL_19;
  }

  result = sub_223B6F81C(1701080941, 0xE400000000000000);
  if ((v9 & 1) == 0)
  {
    v12 = 0;
    goto LABEL_19;
  }

  v10 = *(*(v3 + 56) + 8 * result);
  if (v10 >> 61 != 1)
  {

    sub_223B65D98();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();
  }

  v11 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

  if (HIDWORD(v11))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v12 = v11 << 32;
LABEL_19:
  v17 = sub_223B61DD0(v3, sub_223B6222C, sub_223B6222C);

  v18 = v17[2];

  if (v18)
  {
    sub_223B65D98();
    swift_allocError();
    v16 = 4;
    goto LABEL_21;
  }

  return v12 | v7;
}

unint64_t sub_223B638EC(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 48;
  v76 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  v77 = a1 + 48;
LABEL_2:
  v4 = v1 + 1;
  v5 = (v2 + 24 * v1);
  while (v4 - v76 != 1)
  {
    v1 = v4;
    if ((v4 - 1) >= *(a1 + 16))
    {
      __break(1u);
LABEL_68:
      v78 = v5;
LABEL_69:

      v62 = v78[2];
      if (v62)
      {
        v80[0] = v5;
        sub_223B57CB4(0, v62, 0);
        v63 = v80[0];
        v64 = v78 + 6;
        do
        {
          v66 = *(v64 - 2);
          v65 = *(v64 - 1);
          v67 = *v64;
          v80[0] = v63;
          v69 = v63[2];
          v68 = v63[3];

          if (v69 >= v68 >> 1)
          {
            sub_223B57CB4((v68 > 1), v69 + 1, 1);
            v63 = v80[0];
          }

          v64 += 3;
          v63[2] = v69 + 1;
          v70 = &v63[3 * v69];
          v70[4] = v66;
          v70[5] = v65;
          v70[6] = v67;
          --v62;
        }

        while (v62);
      }

      else
      {

        v63 = MEMORY[0x277D84F90];
      }

      if (v63[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B12B8, &unk_223BFA070);
        v71 = sub_223BF4C1C();
      }

      else
      {
        v71 = MEMORY[0x277D84F98];
      }

      v80[0] = v71;
      sub_223B61A34(v63, 1, v80);
      if (!v73)
      {

        return v72;
      }

LABEL_83:
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v6 = *(v5 - 2);
    v7 = *(v5 - 1);
    v8 = *v5;
    if (v6 != 1936024675 || v7 != 0xE400000000000000)
    {
      ++v4;
      v5 += 3;
      if ((sub_223BF4DAC() & 1) == 0)
      {
        continue;
      }
    }

    v80[0] = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_223B57CD4(0, v3[2] + 1, 1);
      v3 = v80[0];
    }

    v11 = v3[2];
    v10 = v3[3];
    if (v11 >= v10 >> 1)
    {
      sub_223B57CD4((v10 > 1), v11 + 1, 1);
      v3 = v80[0];
    }

    v3[2] = v11 + 1;
    v12 = &v3[3 * v11];
    v12[4] = v6;
    v12[5] = v7;
    v12[6] = v8;
    v2 = v77;
    goto LABEL_2;
  }

  v13 = v3[2];
  if (v13 > 1)
  {

    sub_223B65D44();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  if (!v13)
  {

    sub_223B65D44();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  v15 = v3[6];

  v80[0] = v15;

  v16 = sub_223B63644(v80);
  if (!v74)
  {
    v72 = v16;
    v73 = 0;
    v19 = 0;
    v20 = a1 + 48;
    v21 = MEMORY[0x277D84F90];
LABEL_23:
    v22 = v19 + 1;
    v23 = (v20 + 24 * v19);
    while (v22 - v76 != 1)
    {
      v19 = v22;
      if ((v22 - 1) >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_82;
      }

      v24 = *(v23 - 2);
      v25 = *(v23 - 1);
      v26 = *v23;
      if (v24 != 1818521453 || v25 != 0xE400000000000000)
      {
        ++v22;
        v23 += 3;
        if ((sub_223BF4DAC() & 1) == 0)
        {
          continue;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80[0] = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_223B57CD4(0, v21[2] + 1, 1);
        v21 = v80[0];
      }

      v30 = v21[2];
      v29 = v21[3];
      if (v30 >= v29 >> 1)
      {
        sub_223B57CD4((v29 > 1), v30 + 1, 1);
        v21 = v80[0];
      }

      v21[2] = v30 + 1;
      v31 = &v21[3 * v30];
      v31[4] = v24;
      v31[5] = v25;
      v31[6] = v26;
      v20 = a1 + 48;
      goto LABEL_23;
    }

    v32 = v21[2];
    if (v32 > 1)
    {

      sub_223B65D44();
      swift_allocError();
      *v33 = 2;
      swift_willThrow();
    }

    if (v32)
    {
      v34 = v21[6];

      if (v34 >> 61)
      {

        sub_223B65D44();
        swift_allocError();
        *v61 = 3;
        swift_willThrow();
      }

      swift_bridgeObjectRetain_n();
    }

    else
    {
    }

    v5 = MEMORY[0x277D84F90];
    if (!v76)
    {
      goto LABEL_68;
    }

    v35 = 0;
    v78 = MEMORY[0x277D84F90];
    while (v35 < *(a1 + 16))
    {
      v36 = (v75 + 24 * v35);
      v37 = *v36;
      v38 = v36[1];
      v39 = v36[2];
      v40 = v5;
      v80[0] = v5;
      swift_bridgeObjectRetain_n();

      sub_223B57CF4(0, 2, 0);
      v41 = v80[0];
      v43 = *(v80[0] + 16);
      v42 = *(v80[0] + 24);
      v44 = v42 >> 1;
      v45 = v43 + 1;
      if (v42 >> 1 <= v43)
      {
        sub_223B57CF4((v42 > 1), v43 + 1, 1);
        v41 = v80[0];
        v42 = *(v80[0] + 24);
        v44 = v42 >> 1;
      }

      *(v41 + 16) = v45;
      v46 = v41 + 16 * v43;
      *(v46 + 32) = 1936024675;
      *(v46 + 40) = 0xE400000000000000;
      v47 = v43 + 2;
      if (v44 < v47)
      {
        sub_223B57CF4((v42 > 1), v47, 1);
        v41 = v80[0];
      }

      ++v35;
      *(v41 + 16) = v47;
      v48 = v41 + 16 * v45;
      *(v48 + 32) = 1818521453;
      *(v48 + 40) = 0xE400000000000000;
      v49 = sub_223B635AC(v41);

      if (*(v49 + 16) && (sub_223BF4E8C(), sub_223BF458C(), v50 = sub_223BF4EBC(), v51 = -1 << *(v49 + 32), v52 = v50 & ~v51, ((*(v49 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0))
      {
        v53 = ~v51;
        while (1)
        {
          v54 = (*(v49 + 48) + 16 * v52);
          v55 = *v54 == v37 && v54[1] == v38;
          if (v55 || (sub_223BF4DAC() & 1) != 0)
          {
            break;
          }

          v52 = (v52 + 1) & v53;
          if (((*(v49 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        swift_bridgeObjectRelease_n();
        v5 = v40;
        if (v35 == v76)
        {
          goto LABEL_69;
        }
      }

      else
      {
LABEL_59:

        v56 = v78;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v78;
        if ((v57 & 1) == 0)
        {
          sub_223B57CD4(0, v78[2] + 1, 1);
          v56 = v81;
        }

        v5 = v40;
        v59 = v56[2];
        v58 = v56[3];
        if (v59 >= v58 >> 1)
        {
          sub_223B57CD4((v58 > 1), v59 + 1, 1);
          v56 = v81;
        }

        v56[2] = v59 + 1;
        v78 = v56;
        v60 = &v56[3 * v59];
        v60[4] = v37;
        v60[5] = v38;
        v60[6] = v39;
        if (v35 == v76)
        {
          goto LABEL_69;
        }
      }
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }
}

uint64_t sub_223B64180@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 > 1)
  {

    sub_223B65C9C();
    swift_allocError();
    *v4 = 0;
    return swift_willThrow();
  }

  if (!v3)
  {

    sub_223B65C9C();
    swift_allocError();
    v24 = 1;
LABEL_24:
    *v23 = v24;
    return swift_willThrow();
  }

  v87 = v2;
  v77 = a2;
  v5 = *(a1 + 32);

  v6 = v5 + 8;
  v85 = v5[2];
  v7 = v85 + 1;
  do
  {
    if (!--v7)
    {

      sub_223B65C9C();
      swift_allocError();
      v24 = 2;
      goto LABEL_24;
    }

    v9 = *(v6 - 4);
    v8 = *(v6 - 3);
    v10 = *v6;
    if (*(v6 - 2) == 0x6870617247505344 && *(v6 - 1) == 0xE800000000000000)
    {
      break;
    }

    v6 += 5;
  }

  while ((sub_223BF4DAC() & 1) == 0);
  v12 = 0;
  v86 = v5;
  v13 = v5 + 7;
  v14 = v85 + 1;
  do
  {
    if (!--v14)
    {
      if (v12 <= 1)
      {
        v25 = v86 + 8;
        v26 = v85 + 1;
        do
        {
          if (!--v26)
          {
            v88 = 0;
            v90 = 0;
            goto LABEL_39;
          }

          v27 = *(v25 - 3);
          v88 = *(v25 - 4);
          v90 = v27;
          v28 = *v25;
          if (*(v25 - 2) == 0x70697274535541 && *(v25 - 1) == 0xE700000000000000)
          {
            break;
          }

          v25 += 5;
        }

        while ((sub_223BF4DAC() & 1) == 0);
        if (v28)
        {

          sub_223B65C9C();
          swift_allocError();
          v20 = 0;
          v21 = 0;
          v22 = 5;
          goto LABEL_36;
        }

LABEL_39:
        v30 = 0;
        v31 = v86;
        v32 = v86 + 7;
        v33 = v85 + 1;
        while (--v33)
        {
          result = *(v32 - 1);
          if (result == 0x79747265706F7250 && *v32 == 0xED00007069727453)
          {
            v34 = 1;
          }

          else
          {
            result = sub_223BF4DAC();
            v34 = result & 1;
          }

          v32 += 5;
          v16 = __OFADD__(v30, v34);
          v30 += v34;
          if (v16)
          {
            goto LABEL_94;
          }
        }

        if (v30 <= 1)
        {
          v38 = v86 + 8;
          v39 = v85 + 1;
          do
          {
            if (!--v39)
            {
              v78 = 0;
              v79 = 0;
              goto LABEL_66;
            }

            v40 = *(v38 - 3);
            v78 = *(v38 - 4);
            v79 = v40;
            v41 = *v38;
            if (*(v38 - 2) == 0x79747265706F7250 && *(v38 - 1) == 0xED00007069727453)
            {
              break;
            }

            v38 += 5;
          }

          while ((sub_223BF4DAC() & 1) == 0);
          if (v41)
          {

            sub_223B65C9C();
            swift_allocError();
            v21 = 0;
            v37 = 5;
            goto LABEL_59;
          }

LABEL_66:

          v43 = v86 + 8;
          v76 = -v85;
          v44 = -1;
          while (v76 + v44 != -1)
          {
            v45 = v44 + 1;
            if (v45 >= v31[2])
            {
              goto LABEL_95;
            }

            v46 = *(v43 - 3);
            v81 = *(v43 - 2);
            v47 = *(v43 - 1);
            v48 = *v43;
            v89[0] = MEMORY[0x277D84F90];

            v82 = v47;

            v49 = sub_223B57CF4(0, 3, 0);
            v84 = v46;
            v85 = v45;
            v83 = v48;
            if (byte_283717048)
            {
              if (byte_283717048 == 1)
              {
                v50 = 0xE700000000000000;
                v51 = 0x70697274535541;
              }

              else
              {
                v51 = 0x79747265706F7250;
                v50 = 0xED00007069727453;
              }
            }

            else
            {
              v50 = 0xE800000000000000;
              v51 = 0x6870617247505344;
            }

            v52 = v89[0];
            v54 = *(v89[0] + 16);
            v53 = *(v89[0] + 24);
            v55 = v54 + 1;
            if (v54 >= v53 >> 1)
            {
              v80 = v50;
              v49 = sub_223B57CF4((v53 > 1), v54 + 1, 1);
              v50 = v80;
              v52 = v89[0];
            }

            *(v52 + 16) = v55;
            v56 = v52 + 16 * v54;
            *(v56 + 32) = v51;
            *(v56 + 40) = v50;
            if (byte_283717049)
            {
              if (byte_283717049 == 1)
              {
                v57 = 0xE700000000000000;
                v58 = 0x70697274535541;
              }

              else
              {
                v58 = 0x79747265706F7250;
                v57 = 0xED00007069727453;
              }
            }

            else
            {
              v57 = 0xE800000000000000;
              v58 = 0x6870617247505344;
            }

            v89[0] = v52;
            v59 = *(v52 + 24);
            v60 = v54 + 2;
            if (v55 >= v59 >> 1)
            {
              v80 = v57;
              v49 = sub_223B57CF4((v59 > 1), v60, 1);
              v57 = v80;
              v52 = v89[0];
            }

            *(v52 + 16) = v60;
            v61 = v52 + 16 * v55;
            *(v61 + 32) = v58;
            *(v61 + 40) = v57;
            if (byte_28371704A)
            {
              if (byte_28371704A == 1)
              {
                v62 = 0xE700000000000000;
                v63 = 0x70697274535541;
              }

              else
              {
                v63 = 0x79747265706F7250;
                v62 = 0xED00007069727453;
              }
            }

            else
            {
              v62 = 0xE800000000000000;
              v63 = 0x6870617247505344;
            }

            v89[0] = v52;
            v65 = *(v52 + 16);
            v64 = *(v52 + 24);
            if (v65 >= v64 >> 1)
            {
              v80 = v62;
              v49 = sub_223B57CF4((v64 > 1), v65 + 1, 1);
              v62 = v80;
              v52 = v89[0];
            }

            v80 = &v75;
            v43 += 5;
            *(v52 + 16) = v65 + 1;
            v66 = v52 + 16 * v65;
            *(v66 + 32) = v63;
            *(v66 + 40) = v62;
            v89[0] = v81;
            v89[1] = v82;
            MEMORY[0x28223BE20](v49);
            v74[2] = v89;
            v67 = v87;
            v68 = sub_223B61738(sub_223B65C44, v74, v52);
            v87 = v67;

            v44 = v85;
            v31 = v86;
            if ((v68 & 1) == 0)
            {

              sub_223B65C9C();
              swift_allocError();
              *v73 = 6;
              v20 = 1;
              v21 = 1;
              goto LABEL_60;
            }
          }

          v69 = v77;
          *v77 = v9;
          v69[1] = v8;
          v70 = v88;
          v69[2] = v10;
          v69[3] = v70;
          v72 = v78;
          v71 = v79;
          v69[4] = v90;
          v69[5] = v72;
          v69[6] = v71;
          return result;
        }

        sub_223B65C9C();
        swift_allocError();
        v21 = 0;
        v37 = 4;
LABEL_59:
        *v36 = v37;
        v20 = 1;
      }

      else
      {

        sub_223B65C9C();
        swift_allocError();
        v20 = 0;
        v21 = 0;
        v22 = 3;
LABEL_36:
        *v19 = v22;
      }

LABEL_60:
      swift_willThrow();

      if (v20)
      {
      }

      if (v21)
      {
      }

      return result;
    }

    result = *(v13 - 1);
    if (result == 0x70697274535541 && *v13 == 0xE700000000000000)
    {
      v15 = 1;
    }

    else
    {
      result = sub_223BF4DAC();
      v15 = result & 1;
    }

    v13 += 5;
    v16 = __OFADD__(v12, v15);
    v12 += v15;
  }

  while (!v16);
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

void *sub_223B649A8(void *result)
{
  if (result[2] != 1)
  {
    goto LABEL_11;
  }

  v1 = result[4];
  v2 = result[5];
  v3 = result[6];

  v4 = v1 == 1953657710 && v2 == 0xE400000000000000;
  if (!v4 && (sub_223BF4DAC() & 1) == 0)
  {
    sub_223B65CF0();
    swift_allocError();
    v8 = 1;
    goto LABEL_14;
  }

  if (v3 >> 61 != 1)
  {
    sub_223B65CF0();
    swift_allocError();
    v8 = 2;
LABEL_14:
    *v7 = v8;
    swift_willThrow();

    return v1;
  }

  v1 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if (v1 >= 0xFFFFFFFF80000000)
  {
    if (v1 <= 0x7FFFFFFF)
    {
      return v1;
    }

    __break(1u);
LABEL_11:

    sub_223B65CF0();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    return v1;
  }

  __break(1u);
  return v5;
}

void sub_223B64B28(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{

  v10 = sub_223B638EC(v9);
  if (v5)
  {

    return;
  }

  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  if (a2)
  {

    sub_223B64180(v18, v54);
    v39 = v54[1];
    v40 = v54[0];
    v37 = v54[3];
    v38 = v54[2];
    v35 = v54[5];
    v36 = v54[4];
    v34 = v54[6];
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    if (!a3)
    {
LABEL_8:
      v29 = 0;
      v30 = 0;
      v27 = 0;
      v28 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      goto LABEL_9;
    }
  }

  sub_223B64180(v19, v55);
  v29 = v55[1];
  v30 = v55[0];
  v27 = v55[3];
  v28 = v55[2];
  v32 = v55[5];
  v33 = v55[4];
  v31 = v55[6];
LABEL_9:

  v21 = sub_223B649A8(v20);
  v55[9] = 0;
  v26 = v21;

  *&v42 = v14;
  *(&v42 + 1) = v15;
  *&v43 = v16;
  *(&v43 + 1) = v17;
  *&v44 = v40;
  *(&v44 + 1) = v39;
  *&v45 = v38;
  *(&v45 + 1) = v37;
  *&v46 = v36;
  *(&v46 + 1) = v35;
  *&v47 = v34;
  *(&v47 + 1) = v30;
  *&v48 = v29;
  *(&v48 + 1) = v28;
  *&v49 = v27;
  *(&v49 + 1) = v33;
  *&v50 = v32;
  *(&v50 + 1) = v31;
  v51 = v26;
  v52[0] = v14;
  v52[1] = v15;
  v52[2] = v16;
  v52[3] = v17;
  v52[4] = v40;
  v52[5] = v39;
  v52[6] = v38;
  v52[7] = v37;
  v52[8] = v36;
  v52[9] = v35;
  v52[10] = v34;
  v52[11] = v30;
  v52[12] = v29;
  v52[13] = v28;
  v52[14] = v27;
  v52[15] = v33;
  v52[16] = v32;
  v52[17] = v31;
  v53 = v26;
  sub_223B65BEC(&v42, v41);
  sub_223B65B58(v52);
  v22 = v49;
  *(a5 + 96) = v48;
  *(a5 + 112) = v22;
  *(a5 + 128) = v50;
  *(a5 + 144) = v51;
  v23 = v45;
  *(a5 + 32) = v44;
  *(a5 + 48) = v23;
  v24 = v47;
  *(a5 + 64) = v46;
  *(a5 + 80) = v24;
  v25 = v43;
  *a5 = v42;
  *(a5 + 16) = v25;
}

void sub_223B64E58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

  v5 = *(a2 + 40);
  v4 = *(a2 + 48);

  sub_223B6F81C(v5, v4);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    sub_223B65B04();
    swift_allocError();
    *v12 = 0;
LABEL_32:
    swift_willThrow();
    return;
  }

  v8 = sub_223B61DD0(v7, sub_223B62040, sub_223B62040);
  v9 = v3;

  if (v8[2] > 1uLL)
  {

    sub_223B65B04();
    swift_allocError();
    v11 = 1;
LABEL_31:
    *v10 = v11;
    goto LABEL_32;
  }

  v13 = sub_223B611CC(v8);
  v15 = v14;
  v17 = v16;

  if (!v15)
  {

    sub_223B65B04();
    swift_allocError();
    v11 = 2;
    goto LABEL_31;
  }

  v59 = v13;
  v60 = v5;
  v61 = v15;
  v62 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1370, &qword_223BF8548);
  v18 = sub_223BF4BFC();
  v19 = v18;
  v20 = 0;
  v21 = v17 + 64;
  v22 = 1 << *(v17 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v17 + 64);
  v25 = (v22 + 63) >> 6;
  v63 = v18 + 64;
  v64 = v17;
  v65 = v18;
  if (v24)
  {
    while (1)
    {
      v80 = v9;
      v26 = __clz(__rbit64(v24));
      v67 = (v24 - 1) & v24;
LABEL_17:
      v29 = v26 | (v20 << 6);
      v30 = *(v17 + 56);
      v31 = (*(v17 + 48) + 16 * v29);
      v32 = *v31;
      v33 = v31[1];
      v34 = v30 + 32 * v29;
      v35 = *(v34 + 8);
      v36 = *(v34 + 16);

      v37 = v80;
      sub_223B64B28(v35, v36, v78);
      v9 = v37;
      if (v37)
      {

        return;
      }

      *(v63 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v19 = v65;
      v38 = (v65[6] + 16 * v29);
      *v38 = v32;
      v38[1] = v33;
      v39 = v65[7] + 152 * v29;
      v40 = v78[5];
      *(v39 + 64) = v78[4];
      *(v39 + 80) = v40;
      v41 = v78[3];
      *(v39 + 32) = v78[2];
      *(v39 + 48) = v41;
      *(v39 + 144) = v79;
      v42 = v78[8];
      *(v39 + 112) = v78[7];
      *(v39 + 128) = v42;
      *(v39 + 96) = v78[6];
      v43 = v78[1];
      *v39 = v78[0];
      *(v39 + 16) = v43;
      v44 = v65[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        break;
      }

      v65[2] = v46;
      v17 = v64;
      v24 = v67;
      if (!v67)
      {
        goto LABEL_12;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_12:
    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v20 >= v25)
      {
        break;
      }

      v28 = *(v21 + 8 * v20);
      ++v27;
      if (v28)
      {
        v80 = v9;
        v26 = __clz(__rbit64(v28));
        v67 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    v47 = sub_223B61DD0(v19, sub_223B61F4C, sub_223B61F4C);

    if (v47[2] > 1uLL)
    {

      sub_223B65B04();
      swift_allocError();
      v11 = 3;
      goto LABEL_31;
    }

    sub_223B6124C(v47, v68);

    if (sub_223B4E768(v68) == 1)
    {

      sub_223B65B04();
      swift_allocError();
      v11 = 4;
      goto LABEL_31;
    }

    v48 = v68[1];
    v49 = *(&v70 + 1);
    if (!*(&v70 + 1))
    {

      sub_223B65B58(v69);
      sub_223B65B04();
      swift_allocError();
      v11 = 5;
      goto LABEL_31;
    }

    v50 = v70;
    v51 = v71;
    v52 = v72;
    v53 = v73;
    if (v74)
    {

      sub_223B65B88(v50, v49, v51, *(&v51 + 1), v52, *(&v52 + 1), v53);
      sub_223B65B58(v69);
      sub_223B65B04();
      swift_allocError();
      v11 = 6;
      goto LABEL_31;
    }

    v54 = v68[0];
    *a3 = v60;
    *(a3 + 8) = v62;
    *(a3 + 16) = v59;
    *(a3 + 24) = v61;
    *(a3 + 32) = v54;
    *(a3 + 40) = v48;
    v55 = v75;
    *(a3 + 144) = v74;
    *(a3 + 160) = v55;
    *(a3 + 176) = v76;
    *(a3 + 192) = v77;
    v56 = v71;
    *(a3 + 80) = v70;
    *(a3 + 96) = v56;
    v57 = v73;
    *(a3 + 112) = v72;
    *(a3 + 128) = v57;
    v58 = v69[1];
    *(a3 + 48) = v69[0];
    *(a3 + 64) = v58;
    *(a3 + 200) = v50;
    *(a3 + 208) = v49;
    *(a3 + 216) = v51;
    *(a3 + 232) = v52;
    *(a3 + 248) = v53;
  }
}

unint64_t sub_223B65450()
{
  sub_223BF4AAC();

  v0 = sub_223BF4D6C();
  MEMORY[0x223DF2DE0](v0);

  MEMORY[0x223DF2DE0](0x3A65646F6D2E202CLL, 0xE800000000000000);
  v1 = sub_223BF4D6C();
  MEMORY[0x223DF2DE0](v1);

  MEMORY[0x223DF2DE0](125, 0xE100000000000000);
  return 0xD000000000000017;
}

unint64_t sub_223B65568()
{
  result = qword_27D0B1320;
  if (!qword_27D0B1320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1320);
  }

  return result;
}

unint64_t sub_223B655BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1278, &qword_223BF8500);
  MEMORY[0x28223BE20](v2);
  v4 = &v32[-v3 - 8];
  v5 = *(a1 + 208);
  *&v31 = *(a1 + 200);
  v35 = v5;
  v34 = *(a1 + 224);
  v6 = *(&v34 + 1);
  if (*(&v34 + 1))
  {
    v7 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1360, &qword_223BF8540);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510) - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_223BF84C0;
    v11 = (v10 + v9);
    *v11 = v7;
    v11[1] = v6;
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v33 = *(a1 + 240);
  v12 = *(&v33 + 1);
  v13 = MEMORY[0x277D84F90];
  if (*(&v33 + 1))
  {
    v14 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1360, &qword_223BF8540);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510) - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_223BF84C0;
    v18 = (v17 + v16);
    *v18 = v14;
    v13 = MEMORY[0x277D84F90];
    v18[1] = v12;
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v19 = v35;
  *v4 = v31;
  *(v4 + 1) = v19;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1328, &qword_223BF8508);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1330, &unk_223BF8510);
  swift_storeEnumTagMultiPayload();
  v20 = sub_223B752A0(v13);
  v4[v2[9]] = 2;
  *&v4[v2[10]] = v10;
  *&v4[v2[11]] = v17;
  *&v4[v2[12]] = v13;
  *&v4[v2[13]] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1338, &unk_223BFAF50);
  inited = swift_initStackObject();
  v31 = xmmword_223BF84C0;
  *(inited + 16) = xmmword_223BF84C0;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000223C03FE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1340, &unk_223BF8520);
  v22 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1348, &unk_223BFA760) - 8);
  v23 = (*(*v22 + 80) + 32) & ~*(*v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v31;
  v25 = (v24 + v23);
  v26 = v22[14];
  sub_223B568F8(&v34, v32, &qword_27D0B1350, &qword_223BF8530);
  sub_223B568F8(&v33, v32, &qword_27D0B1350, &qword_223BF8530);

  *v25 = sub_223B65450();
  v25[1] = v27;
  sub_223B568F8(v4, v25 + v26, &qword_27D0B1278, &qword_223BF8500);
  v28 = sub_223B75488(v24);
  swift_setDeallocating();
  sub_223B56960(v25, &qword_27D0B1348, &unk_223BFA760);
  swift_deallocClassInstance();
  *(inited + 48) = v28;
  v29 = sub_223B75688(inited);
  swift_setDeallocating();
  sub_223B56960(inited + 32, &qword_27D0B1358, &qword_223BF8538);
  sub_223B56960(v4, &qword_27D0B1278, &qword_223BF8500);
  return v29;
}

unint64_t sub_223B65B04()
{
  result = qword_27D0B1368;
  if (!qword_27D0B1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1368);
  }

  return result;
}

void sub_223B65B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

double sub_223B65C24(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
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
  return result;
}

uint64_t sub_223B65C44(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_223BF4DAC() & 1;
  }
}

unint64_t sub_223B65C9C()
{
  result = qword_27D0B1380;
  if (!qword_27D0B1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1380);
  }

  return result;
}

unint64_t sub_223B65CF0()
{
  result = qword_27D0B1388;
  if (!qword_27D0B1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1388);
  }

  return result;
}

unint64_t sub_223B65D44()
{
  result = qword_27D0B1390;
  if (!qword_27D0B1390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1390);
  }

  return result;
}

unint64_t sub_223B65D98()
{
  result = qword_27D0B13A0;
  if (!qword_27D0B13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B13A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MacDriverDataSource.ValidatedDSPConfiguration.ClientDescription.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MacDriverDataSource.ValidatedDSPConfiguration.ClientDescription.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MacDriverDataSource.ValidatedDSPConfiguration.DSPDeviceProperties.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MacDriverDataSource.ValidatedDSPConfiguration.DSPDeviceProperties.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20AudioDSPManagerSwift19MacDriverDataSourceV25ValidatedDSPConfigurationV21HardwareConfigurationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy148_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_223B660F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 148))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223B66140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 148) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 148) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_223B661B8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_223B66248(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_223B6634C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
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

uint64_t sub_223B66394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_223B66428()
{
  result = qword_27D0B13C0;
  if (!qword_27D0B13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B13C0);
  }

  return result;
}

unint64_t sub_223B66480()
{
  result = qword_27D0B13C8;
  if (!qword_27D0B13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B13C8);
  }

  return result;
}

unint64_t sub_223B664D8()
{
  result = qword_27D0B13D0;
  if (!qword_27D0B13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B13D0);
  }

  return result;
}

unint64_t sub_223B66530()
{
  result = qword_27D0B13D8;
  if (!qword_27D0B13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B13D8);
  }

  return result;
}

unint64_t sub_223B66588()
{
  result = qword_27D0B13E0;
  if (!qword_27D0B13E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B13E0);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_223B66608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_223B66650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_223B666B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223B66700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MacDriverDataSource.ValidatedDSPConfiguration.ClientDescription(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MacDriverDataSource.ValidatedDSPConfiguration.ClientDescription(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_223B667E8()
{
  result = qword_27D0B13E8;
  if (!qword_27D0B13E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B13F0, &qword_223BF8BF0);
    sub_223B66874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B13E8);
  }

  return result;
}

unint64_t sub_223B66874()
{
  result = qword_27D0B13F8;
  if (!qword_27D0B13F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1400, &qword_223BF8BF8);
    sub_223B66900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B13F8);
  }

  return result;
}

unint64_t sub_223B66900()
{
  result = qword_27D0B1408;
  if (!qword_27D0B1408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1410, &qword_223BF8C00);
    sub_223B6698C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1408);
  }

  return result;
}

unint64_t sub_223B6698C()
{
  result = qword_27D0B1418;
  if (!qword_27D0B1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1418);
  }

  return result;
}

unint64_t sub_223B669E4()
{
  result = qword_27D0B1420;
  if (!qword_27D0B1420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B13F0, &qword_223BF8BF0);
    sub_223B66A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1420);
  }

  return result;
}

unint64_t sub_223B66A70()
{
  result = qword_27D0B1428;
  if (!qword_27D0B1428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1400, &qword_223BF8BF8);
    sub_223B66AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1428);
  }

  return result;
}

unint64_t sub_223B66AFC()
{
  result = qword_27D0B1430;
  if (!qword_27D0B1430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1410, &qword_223BF8C00);
    sub_223B66B88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1430);
  }

  return result;
}

unint64_t sub_223B66B88()
{
  result = qword_27D0B1438;
  if (!qword_27D0B1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1438);
  }

  return result;
}

uint64_t sub_223B66BDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7475706E49;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xE600000000000000;
      v4 = 0x74757074754FLL;
    }

    else
    {
      v5 = 0x8000000223C03BC0;
      v4 = 0xD00000000000001ALL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7475706E49;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0x8000000223C03B90;
    }
  }

  v6 = 0x74757074754FLL;
  v7 = 0x8000000223C03BC0;
  if (a2 == 2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  v8 = 0x8000000223C03B90;
  if (a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_223BF4DAC();
  }

  return v11 & 1;
}

uint64_t sub_223B66D1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x654B656C62616E45;
  v4 = a1;
  v5 = 0xD000000000000015;
  v6 = 0x8000000223C03C30;
  if (a1 != 6)
  {
    v5 = 0x7543656D756C6F56;
    v6 = 0xEB00000000657672;
  }

  v7 = 0xE700000000000000;
  v8 = 0x79654B656D6954;
  if (a1 != 4)
  {
    v8 = 0x74696E55656D6954;
    v7 = 0xEC00000065707954;
  }

  if (a1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x74696E556E696147;
  v10 = 0xEC00000065707954;
  if (a1 != 2)
  {
    v9 = 17481;
    v10 = 0xE200000000000000;
  }

  v11 = 0xE700000000000000;
  v12 = 0x79654B6E696147;
  if (!a1)
  {
    v12 = 0x654B656C62616E45;
    v11 = 0xE900000000000079;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x8000000223C03C30;
        if (v13 != 0xD000000000000015)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEB00000000657672;
        if (v13 != 0x7543656D756C6F56)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_38;
    }

    if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      v15 = 1701669204;
LABEL_26:
      if (v13 != (v15 | 0x79654B00000000))
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v16 = 1701669204;
LABEL_34:
    v2 = 0xEC00000065707954;
    if (v13 != (v16 | 0x74696E5500000000))
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xE700000000000000;
      v15 = 1852399943;
      goto LABEL_26;
    }

    goto LABEL_37;
  }

  if (a2 == 2)
  {
    v16 = 1852399943;
    goto LABEL_34;
  }

  v2 = 0xE200000000000000;
  v3 = 17481;
LABEL_37:
  if (v13 != v3)
  {
LABEL_41:
    v17 = sub_223BF4DAC();
    goto LABEL_42;
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v17 = 1;
LABEL_42:

  return v17 & 1;
}

uint64_t sub_223B66F6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x617261506574754DLL;
    }

    else
    {
      v3 = 0x6570795474726F50;
    }

    if (v2)
    {
      v4 = 0xED0000726574656DLL;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x617261506B637544;
    v4 = 0xEE0073726574656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000015;
    v4 = 0x8000000223C03C30;
  }

  else
  {
    v3 = 0x7543656D756C6F56;
    v4 = 0xEB00000000657672;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x617261506574754DLL;
    }

    else
    {
      v6 = 0x6570795474726F50;
    }

    if (a2)
    {
      v5 = 0xED0000726574656DLL;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEE0073726574656DLL;
    if (v3 != 0x617261506B637544)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x8000000223C03C30;
    if (v3 != 0xD000000000000015)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEB00000000657672;
    if (v3 != 0x7543656D756C6F56)
    {
LABEL_31:
      v7 = sub_223BF4DAC();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_223B67150(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1568, &qword_223BF9348);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B69EE8();
  sub_223BF4EDC();
  v12 = 0;
  sub_223BF4D2C();
  if (!v2)
  {
    v11 = *(v3 + 32);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1558, &qword_223BF9340);
    sub_223B69F3C(&qword_27D0B1570, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_223BF4D1C();
    v10[14] = 2;
    sub_223BF4D2C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_223B6732C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1500, &qword_223BF9028);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B698C0();
  sub_223BF4EDC();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B14E0, &qword_223BF9018);
  sub_223B699EC();
  sub_223BF4D4C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_223B67488(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  v16 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1480, &qword_223BF8C90);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B68D94();
  sub_223BF4EDC();
  v18 = a2;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1450, &qword_223BF8C80);
  sub_223B68F98();
  sub_223BF4D4C();
  if (!v5)
  {
    v14 = a4;
    v18 = v16;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1468, &qword_223BF8C88);
    sub_223B69070();
    sub_223BF4D1C();
    v18 = v14;
    v17 = 2;
    sub_223BF4D1C();
    v18 = v15;
    v17 = 3;
    sub_223BF4D4C();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_223B676CC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B14F8, &qword_223BF9020);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B6986C();
  sub_223BF4EDC();
  v13 = 0;
  sub_223BF4D2C();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    sub_223B5A61C();

    sub_223BF4D4C();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t sub_223B67878@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B14C0, &qword_223BF9008);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B6986C();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = 0;
  v9 = sub_223BF4C9C();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_223B5A670();
  sub_223BF4CBC();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_223B67A88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7574697473627553;
  v4 = 0xED0000736E6F6974;
  if (v2 != 1)
  {
    v3 = 1701869908;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1752457552;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x7574697473627553;
  v8 = 0xED0000736E6F6974;
  if (*a2 != 1)
  {
    v7 = 1701869908;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1752457552;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_223BF4DAC();
  }

  return v11 & 1;
}

uint64_t sub_223B67B8C()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B67C2C(uint64_t a1)
{
  sub_223BF458C();
}

uint64_t sub_223B67CB8()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

unint64_t sub_223B67D54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223B697D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_223B67D84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xED0000736E6F6974;
  v5 = 0x7574697473627553;
  if (v2 != 1)
  {
    v5 = 1701869908;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1752457552;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_223B67DE0()
{
  v1 = 0x7574697473627553;
  if (*v0 != 1)
  {
    v1 = 1701869908;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1752457552;
  }
}

unint64_t sub_223B67E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223B697D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223B67E78(uint64_t a1)
{
  v2 = sub_223B69EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B67EB4(uint64_t a1)
{
  v2 = sub_223B69EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_223B67EF0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_223B693B4(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_223B67F50()
{
  sub_223BF4E8C();
  sub_223BF458C();
  return sub_223BF4EBC();
}

uint64_t sub_223B67FBC()
{
  sub_223BF4E8C();
  sub_223BF458C();
  return sub_223BF4EBC();
}

uint64_t sub_223B6800C@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_223BF4C2C();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_223B68094@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_223BF4C2C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_223B680EC(uint64_t a1)
{
  v2 = sub_223B698C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B68128(uint64_t a1)
{
  v2 = sub_223B698C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_223B68164@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_223B69650(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_223B681B8()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B68280(uint64_t a1)
{
  sub_223BF458C();
}

uint64_t sub_223B68334()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

unint64_t sub_223B683F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223B69820(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_223B68428(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7475706E49;
  v4 = 0xE600000000000000;
  v5 = 0x74757074754FLL;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001ALL;
    v4 = 0x8000000223C03BC0;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x8000000223C03B90;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_223B684AC()
{
  v1 = 0x7475706E49;
  v2 = 0x74757074754FLL;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_223B6852C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223B69820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223B68560(uint64_t a1)
{
  v2 = sub_223B68D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B6859C(uint64_t a1)
{
  v2 = sub_223B68D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B685D8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_223B68A30(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_223B68628(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65756C6156;
  }

  else
  {
    v3 = 0x726F7463656C6553;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x65756C6156;
  }

  else
  {
    v5 = 0x726F7463656C6553;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_223BF4DAC();
  }

  return v8 & 1;
}

uint64_t sub_223B686CC()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B6874C(uint64_t a1)
{
  sub_223BF458C();
}

uint64_t sub_223B687B8()
{
  sub_223BF4E8C();
  sub_223BF458C();

  return sub_223BF4EBC();
}

uint64_t sub_223B68834@<X0>(char *a2@<X8>)
{
  v3 = sub_223BF4C2C();

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

void sub_223B68894(uint64_t *a1@<X8>)
{
  v2 = 0x726F7463656C6553;
  if (*v1)
  {
    v2 = 0x65756C6156;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_223B688D0()
{
  if (*v0)
  {
    return 0x65756C6156;
  }

  else
  {
    return 0x726F7463656C6553;
  }
}

uint64_t sub_223B68908@<X0>(char *a3@<X8>)
{
  v4 = sub_223BF4C2C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_223B6896C(uint64_t a1)
{
  v2 = sub_223B6986C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B689A8(uint64_t a1)
{
  v2 = sub_223B6986C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B68A30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1440, &qword_223BF8C78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B68D94();
  sub_223BF4ECC();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1450, &qword_223BF8C80);
  v12 = 0;
  v7 = sub_223B68DE8();
  sub_223BF4CBC();
  v11 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1468, &qword_223BF8C88);
  v12 = 1;
  v10 = sub_223B68EC0();
  sub_223BF4C8C();
  v9 = v7;
  v12 = 2;
  v10 = 0;
  sub_223BF4C8C();
  v12 = 3;
  sub_223BF4CBC();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_223B68D94()
{
  result = qword_27D0B1448;
  if (!qword_27D0B1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1448);
  }

  return result;
}

unint64_t sub_223B68DE8()
{
  result = qword_27D0B1458;
  if (!qword_27D0B1458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1450, &qword_223BF8C80);
    sub_223B68E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1458);
  }

  return result;
}

unint64_t sub_223B68E6C()
{
  result = qword_27D0B1460;
  if (!qword_27D0B1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1460);
  }

  return result;
}

unint64_t sub_223B68EC0()
{
  result = qword_27D0B1470;
  if (!qword_27D0B1470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1468, &qword_223BF8C88);
    sub_223B68F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1470);
  }

  return result;
}

unint64_t sub_223B68F44()
{
  result = qword_27D0B1478;
  if (!qword_27D0B1478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1478);
  }

  return result;
}

unint64_t sub_223B68F98()
{
  result = qword_27D0B1488;
  if (!qword_27D0B1488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1450, &qword_223BF8C80);
    sub_223B6901C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1488);
  }

  return result;
}

unint64_t sub_223B6901C()
{
  result = qword_27D0B1490;
  if (!qword_27D0B1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1490);
  }

  return result;
}

unint64_t sub_223B69070()
{
  result = qword_27D0B1498;
  if (!qword_27D0B1498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1468, &qword_223BF8C88);
    sub_223B690F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1498);
  }

  return result;
}

unint64_t sub_223B690F4()
{
  result = qword_27D0B14A0;
  if (!qword_27D0B14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B14A0);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_223B6917C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_223B691C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_223B69214(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223B6925C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_223B692B0()
{
  result = qword_27D0B14A8;
  if (!qword_27D0B14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B14A8);
  }

  return result;
}

unint64_t sub_223B69308()
{
  result = qword_27D0B14B0;
  if (!qword_27D0B14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B14B0);
  }

  return result;
}

unint64_t sub_223B69360()
{
  result = qword_27D0B14B8;
  if (!qword_27D0B14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B14B8);
  }

  return result;
}

uint64_t sub_223B693B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1548, &qword_223BF9338);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B69EE8();
  sub_223BF4ECC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = 0;
  v9 = sub_223BF4C9C();
  v11 = v10;
  v20 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B1558, &qword_223BF9340);
  v23 = 1;
  sub_223B69F3C(&qword_27D0B1560, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_223BF4C8C();
  v19 = v21;
  v22 = 2;
  v12 = sub_223BF4C9C();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v17 = v19;
  *a2 = v20;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v15;
  a2[4] = v17;
  return result;
}

void *sub_223B69650(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B14D0, &qword_223BF9010);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B698C0();
  sub_223BF4ECC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B14E0, &qword_223BF9018);
    sub_223B69914();
    sub_223BF4CBC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_223B697D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_223BF4C2C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_223B69820(uint64_t a1, uint64_t a2)
{
  v2 = sub_223BF4C2C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_223B6986C()
{
  result = qword_27D0B14C8;
  if (!qword_27D0B14C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B14C8);
  }

  return result;
}

unint64_t sub_223B698C0()
{
  result = qword_27D0B14D8;
  if (!qword_27D0B14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B14D8);
  }

  return result;
}

unint64_t sub_223B69914()
{
  result = qword_27D0B14E8;
  if (!qword_27D0B14E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B14E0, &qword_223BF9018);
    sub_223B69998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B14E8);
  }

  return result;
}

unint64_t sub_223B69998()
{
  result = qword_27D0B14F0;
  if (!qword_27D0B14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B14F0);
  }

  return result;
}

unint64_t sub_223B699EC()
{
  result = qword_27D0B1508;
  if (!qword_27D0B1508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B14E0, &qword_223BF9018);
    sub_223B69A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1508);
  }

  return result;
}

unint64_t sub_223B69A70()
{
  result = qword_27D0B1510;
  if (!qword_27D0B1510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1510);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MacDriverDSPDatabaseSchema.Property.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MacDriverDSPDatabaseSchema.Property.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_223B69C38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_223B69C80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_223B69CDC()
{
  result = qword_27D0B1518;
  if (!qword_27D0B1518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1518);
  }

  return result;
}

unint64_t sub_223B69D34()
{
  result = qword_27D0B1520;
  if (!qword_27D0B1520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1520);
  }

  return result;
}

unint64_t sub_223B69D8C()
{
  result = qword_27D0B1528;
  if (!qword_27D0B1528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1528);
  }

  return result;
}

unint64_t sub_223B69DE4()
{
  result = qword_27D0B1530;
  if (!qword_27D0B1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1530);
  }

  return result;
}

unint64_t sub_223B69E3C()
{
  result = qword_27D0B1538;
  if (!qword_27D0B1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1538);
  }

  return result;
}

unint64_t sub_223B69E94()
{
  result = qword_27D0B1540;
  if (!qword_27D0B1540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1540);
  }

  return result;
}

unint64_t sub_223B69EE8()
{
  result = qword_27D0B1550;
  if (!qword_27D0B1550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1550);
  }

  return result;
}

uint64_t sub_223B69F3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0B1558, &qword_223BF9340);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223B69FBC()
{
  result = qword_27D0B1578;
  if (!qword_27D0B1578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1578);
  }

  return result;
}

unint64_t sub_223B6A014()
{
  result = qword_27D0B1580;
  if (!qword_27D0B1580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1580);
  }

  return result;
}

unint64_t sub_223B6A06C()
{
  result = qword_27D0B1588;
  if (!qword_27D0B1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0B1588);
  }

  return result;
}

uint64_t sub_223B6A0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a1;
  v49 = a2;
  v10 = type metadata accessor for ModelAssetLocation(0, a4, a6, a4);
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v38 = &v38 - v11;
  v13 = type metadata accessor for ConcreteLocation(0, a3, a5, v12);
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v39 = a3;
  v40 = a4;
  v50[0] = a3;
  v50[1] = a4;
  v41 = a5;
  v42 = a6;
  v50[2] = a5;
  v50[3] = a6;
  v16 = type metadata accessor for MixedAssetLocation(0, v50);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v38 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v24 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v26 = &v38 - v25;
  v27 = *(v24 + 48);
  v28 = *(v17 + 16);
  v28(&v38 - v25, v48, v16);
  v28(&v26[v27], v49, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28(v22, v26, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = v44;
      v34 = v45;
      (*(v44 + 32))(v15, &v26[v27], v45);
      v32 = sub_223B5E874(v22, v15, v39, v41);
      v36 = *(v35 + 8);
      v36(v15, v34);
      v36(v22, v34);
      goto LABEL_9;
    }

    (*(v44 + 8))(v22, v45);
    goto LABEL_7;
  }

  v28(v20, v26, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v46 + 8))(v20, v47);
LABEL_7:
    v32 = 0;
    v17 = v43;
    v16 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v30 = v46;
  v29 = v47;
  v31 = v38;
  (*(v46 + 32))(v38, &v26[v27], v47);
  v32 = sub_223B6B370(v20, v31, v40, v42);
  v33 = *(v30 + 8);
  v33(v31, v29);
  v33(v20, v29);
LABEL_9:
  (*(v17 + 8))(v26, v16);
  return v32 & 1;
}

uint64_t sub_223B6A520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  WitnessTable = swift_getWitnessTable();
  v9 = type metadata accessor for ConcreteLocation(0, v6, WitnessTable, v8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v3, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(v6 - 8) + 32))(a2, v15, v6);
  }

  (*(v10 + 32))(v13, v15, v9);
  (*(*(v6 - 8) + 16))(a2, &v13[*(v9 + 36)], v6);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_223B6A744(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ConcreteLocation(319, a1[2], a1[4], a4);
  if (v7 <= 0x3F)
  {
    result = type metadata accessor for ModelAssetLocation(319, a1[3], a1[5], v6);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_223B6A7C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = ((*(*(sub_223BF430C() - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  v7 = ((*(*(*(a3 + 24) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_223B6A984(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = ((*(*(sub_223BF430C() - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  v9 = *(*(a4 + 24) - 8);
  if (((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 24 > v8)
  {
    v8 = ((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v10 = v8 + 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 254) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v10 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v8 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t get_enum_tag_for_layout_string_20AudioDSPManagerSwift11ModelFolderO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223B6ABFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223B6AC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_223B6ACB8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_223B6ACF8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_223B6AD70(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFD)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    if ((v18 + 1) >= 2)
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_223B6AEC8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFD)
  {
    v7 = 2147483645;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFD)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFD)
    {
      *v18 = 0;
      v18[1] = 0;
      v18[2] = 0;
      *v18 = a2 - 2147483646;
    }

    else
    {
      v18[2] = a2 + 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_223B6B0B4(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15D8, &qword_223BF9768);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15E0, &qword_223BF9770);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0B15E8, &qword_223BF9778);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223B6BDCC();
  sub_223BF4EDC();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_223B6BE20();
    sub_223BF4CDC();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_223B6BE74();
    sub_223BF4CDC();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_223B6B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_223BF452C())
  {
    v9 = *(type metadata accessor for ModelAssetLocation(0, a3, a4, v8) + 36);
    v10 = a1 + v9;
    v11 = *(a1 + v9 + 16);
    v12 = (a2 + v9);
    v13 = v12[2];
    if (v11 == 1)
    {
      if (v13 == 1)
      {
        return 1;
      }
    }

    else if (v13 != 1 && ((*v10 ^ *v12) & 0x101) == 0)
    {
      if (v11)
      {
        if (v13)
        {
          v15 = *(v10 + 8) == v12[1] && v11 == v13;
          if (v15 || (sub_223BF4DAC() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v13)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_223B6B444()
{
  if (*v0)
  {
    return 0x7053656369766564;
  }

  else
  {
    return 0x636972656E6567;
  }
}

uint64_t sub_223B6B48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636972656E6567 && a2 == 0xE700000000000000;
  if (v6 || (sub_223BF4DAC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7053656369766564 && a2 == 0xEE00636966696365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_223BF4DAC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_223B6B570(uint64_t a1)
{
  v2 = sub_223B6BDCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B6B5AC(uint64_t a1)
{
  v2 = sub_223B6BDCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B6B5F4(uint64_t a1)
{
  v2 = sub_223B6BE20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B6B630(uint64_t a1)
{
  v2 = sub_223B6BE20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223B6B66C(uint64_t a1)
{
  v2 = sub_223B6BE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223B6B6A8(uint64_t a1)
{
  v2 = sub_223B6BE74();

  return MEMORY[0x2821FE720](a1, v2);
}