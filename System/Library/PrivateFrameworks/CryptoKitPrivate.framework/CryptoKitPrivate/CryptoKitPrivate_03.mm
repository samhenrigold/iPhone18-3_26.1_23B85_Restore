uint64_t _s17CuckooTableConfigVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1C0D18FB0()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C0CF7C00(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      if (*v4 >> 60 == 15)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(v4 - 1);
      }

      if (*v4 >> 60 == 15)
      {
        v6 = 0xC000000000000000;
      }

      else
      {
        v6 = *v4;
      }

      sub_1C0D134D0(*(v4 - 1), *v4);
      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1C0CF7C00((v7 > 1), v8 + 1, 1);
      }

      v4 += 2;
      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v2;
    }

    while (v2);
  }

  return v3;
}

BOOL sub_1C0D19090(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v17 - v11;
  (*(v6 + 16))(v8, a1, a2);
  sub_1C0D78B7C();
  swift_getAssociatedConformanceWitness();
  do
  {
    sub_1C0D78D4C();
    v13 = v18;
    if (v18 >> 60 == 15)
    {
      break;
    }

    v14 = v17;
    v15 = sub_1C0D192A4(v17, v18, *(v3 + 8));
    sub_1C0D13830(v14, v13);
  }

  while ((v15 & 1) != 0);
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  return v13 >> 60 == 15;
}

void *sub_1C0D192A4(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v57[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_79;
  }

  v6 = v3;
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = sub_1C0CF610C(a1, a2, v3[2], *v3);
  v11 = *(v10 + 2);
  v51 = v8;
  if (v11)
  {
    v4 = 0;
    v3 = v3[3];
    v12 = v3 + 4;
    if (v8)
    {
      v13 = 0;
    }

    else
    {
      v13 = v7 == 0xC000000000000000;
    }

    v14 = !v13;
    v55 = v14;
    v15 = v7 >> 62;
    v16 = __OFSUB__(HIDWORD(v8), v8);
    v49 = v16;
    v47 = v6;
    v48 = HIDWORD(v8) - v8;
    v53 = v3 + 4;
    v54 = BYTE6(v7);
    v50 = v3;
    v52 = v7 >> 62;
    v46 = v7;
    while (1)
    {
      if (v4 >= *(v10 + 2))
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        v3 = sub_1C0CFD698(v3);
LABEL_75:
        if (v8 < v3[2])
        {
          v36 = &v3[2 * v8];
          v37 = v36[4];
          v38 = v36[5];
          v36[4] = v51;
          v36[5] = v7;
          sub_1C0CF6468(v51, v7);
          sub_1C0D13830(v37, v38);
          *(v6 + 24) = v3;
          v39 = 1;
          return (v39 & 1);
        }

        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v17 = *&v10[8 * v4 + 32];
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_90;
      }

      if (v17 >= v3[2])
      {
        goto LABEL_91;
      }

      v18 = &v12[2 * v17];
      v5 = v18[1];
      if (v5 >> 60 == 15)
      {
        goto LABEL_14;
      }

      v19 = *v18;
      v20 = v5 >> 62;
      if (v5 >> 62 == 3)
      {
        break;
      }

      if (v20 > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_41;
        }

        v26 = *(v19 + 16);
        v25 = *(v19 + 24);
        v27 = __OFSUB__(v25, v26);
        v24 = v25 - v26;
        if (v27)
        {
          goto LABEL_98;
        }

        if (v15 <= 1)
        {
          goto LABEL_38;
        }
      }

      else if (v20)
      {
        LODWORD(v24) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_97;
        }

        v24 = v24;
        if (v15 <= 1)
        {
LABEL_38:
          v28 = v54;
          if (v15)
          {
            v28 = v48;
            if (v49)
            {
              goto LABEL_96;
            }
          }

          goto LABEL_44;
        }
      }

      else
      {
        v24 = BYTE6(v5);
        if (v15 <= 1)
        {
          goto LABEL_38;
        }
      }

LABEL_42:
      if (v15 != 2)
      {
        if (!v24)
        {
          goto LABEL_80;
        }

        goto LABEL_14;
      }

      v30 = *(v8 + 16);
      v29 = *(v8 + 24);
      v27 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v27)
      {
        goto LABEL_95;
      }

LABEL_44:
      if (v24 == v28)
      {
        if (v24 < 1)
        {
          goto LABEL_80;
        }

        if (v20 > 1)
        {
          if (v20 != 2)
          {
            memset(v57, 0, 14);
            sub_1C0CF6468(v19, v5);
            goto LABEL_66;
          }

          v6 = *(v19 + 16);
          v8 = *(v19 + 24);
          sub_1C0CF6468(v19, v5);
          v3 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
          v7 = sub_1C0D7812C();
          if (v7)
          {
            v3 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
            v31 = sub_1C0D7815C();
            if (__OFSUB__(v6, v31))
            {
              goto LABEL_103;
            }

            v7 += v6 - v31;
          }

          v27 = __OFSUB__(v8, v6);
          v8 -= v6;
          if (v27)
          {
            goto LABEL_100;
          }

          sub_1C0D7814C();
          v32 = v7;
          v8 = v51;
        }

        else
        {
          if (!v20)
          {
            v57[0] = v19;
            LOWORD(v57[1]) = v5;
            BYTE2(v57[1]) = BYTE2(v5);
            BYTE3(v57[1]) = BYTE3(v5);
            BYTE4(v57[1]) = BYTE4(v5);
            BYTE5(v57[1]) = BYTE5(v5);
            sub_1C0CF6468(v19, v5);
            v3 = v50;
LABEL_66:
            sub_1C0D198E4(v57, v8, v7, &v56);
            sub_1C0D13830(v19, v5);
            if (v56)
            {
              goto LABEL_80;
            }

LABEL_67:
            v15 = v52;
            v12 = v53;
            goto LABEL_14;
          }

          v8 = v19;
          v6 = (v19 >> 32) - v19;
          if (v19 >> 32 < v19)
          {
            goto LABEL_99;
          }

          sub_1C0CF6468(v19, v5);
          v33 = sub_1C0D7812C();
          if (v33)
          {
            v3 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
            v34 = sub_1C0D7815C();
            if (__OFSUB__(v19, v34))
            {
              goto LABEL_104;
            }

            v33 += v19 - v34;
          }

          v8 = v51;
          sub_1C0D7814C();
          v32 = v33;
        }

        v7 = v46;
        sub_1C0D198E4(v32, v8, v46, v57);
        sub_1C0D13830(v19, v5);
        v6 = v47;
        v3 = v50;
        if (v57[0])
        {
          goto LABEL_80;
        }

        goto LABEL_67;
      }

LABEL_14:
      if (v11 == ++v4)
      {
        goto LABEL_68;
      }
    }

    if (v19)
    {
      v21 = 0;
    }

    else
    {
      v21 = v5 == 0xC000000000000000;
    }

    v23 = !v21 || v15 < 3;
    if (((v23 | v55) & 1) == 0)
    {
LABEL_80:

      v39 = 1;
      return (v39 & 1);
    }

LABEL_41:
    v24 = 0;
    if (v15 <= 1)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

LABEL_68:
  v35 = 0;
  while (v11 != v35)
  {
    if (v35 >= *(v10 + 2))
    {
      goto LABEL_92;
    }

    v8 = *&v10[8 * v35 + 32];
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_93;
    }

    v3 = *(v6 + 24);
    if (v8 >= v3[2])
    {
      goto LABEL_94;
    }

    ++v35;
    if (v3[2 * v8 + 5] >> 60 == 15)
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_75;
      }

      goto LABEL_101;
    }
  }

  v4 = v7;
  v56 = v10;
  v9 = *(v6 + 56);
  v5 = *(v6 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(v6 + 32, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D0A0, &qword_1C0D7B770);
  sub_1C0D19B64();
  v3 = &v56;
  result = sub_1C0D78CBC();
  if (v57[1])
  {

LABEL_79:
    v39 = 0;
    return (v39 & 1);
  }

  v8 = v57[0];
  if ((v57[0] & 0x8000000000000000) != 0)
  {
    goto LABEL_105;
  }

  v3 = *(v6 + 24);
  if (v57[0] >= v3[2])
  {
LABEL_106:
    __break(1u);
LABEL_107:
    v3 = sub_1C0CFD698(v3);
    goto LABEL_85;
  }

  v41 = &v3[2 * v57[0]];
  v9 = v41[5];
  if (v9 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  v5 = v41[4];
  sub_1C0CF6468(v5, v41[5]);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_107;
  }

LABEL_85:
  if (v8 >= v3[2])
  {
    __break(1u);
LABEL_109:
    __break(1u);
  }

  v42 = &v3[2 * v8];
  v43 = v42[4];
  v44 = v42[5];
  v42[4] = v51;
  v42[5] = v4;
  sub_1C0CF6468(v51, v4);
  sub_1C0D13830(v43, v44);
  *(v6 + 24) = v3;
  if (__OFSUB__(a3, 1))
  {
    goto LABEL_109;
  }

  v39 = sub_1C0D192A4(v5, v9, a3 - 1);
  sub_1C0D13830(v5, v9);
  return (v39 & 1);
}

uint64_t sub_1C0D198E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1C0D7812C();
    if (v10)
    {
      v11 = sub_1C0D7815C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1C0D7814C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1C0D7812C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1C0D7815C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1C0D7814C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1C0D19B64()
{
  result = qword_1EBE6D6D0;
  if (!qword_1EBE6D6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE6D0A0, &qword_1C0D7B770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D6D0);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C0D19BEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C0D19C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0D19C94(unsigned __int8 a1, unint64_t a2, char a3)
{
  v6 = sub_1C0D78AEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ABC();
  v10 = sub_1C0D78AAC();
  v12 = v11;

  result = (*(v7 + 8))(v9, v6);
  if (v12 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_1C0D053E8(a1, 1);
    v16 = v15;
    v35 = v10;
    v36 = v12;
    v17 = MEMORY[0x1E6969080];
    v18 = MEMORY[0x1E6969078];
    v33 = MEMORY[0x1E6969080];
    v34 = MEMORY[0x1E6969078];
    v31 = v14;
    v32 = v15;
    v19 = __swift_project_boxed_opaque_existential_1(&v31, MEMORY[0x1E6969080]);
    v20 = *v19;
    v21 = v19[1];
    sub_1C0D134D0(v10, v12);
    sub_1C0CF6468(v14, v16);
    sub_1C0D4268C(v20, v21, &v35);
    sub_1C0CF448C(v14, v16);
    sub_1C0D13830(v10, v12);
    __swift_destroy_boxed_opaque_existential_1(&v31);
    v22 = v35;
    v23 = v36;
    v24 = sub_1C0D1E970(a2, a3 & 1);
    v26 = v25;
    v37[0] = v22;
    v37[1] = v23;
    v33 = v17;
    v34 = v18;
    v31 = v24;
    v32 = v25;
    v27 = __swift_project_boxed_opaque_existential_1(&v31, v17);
    v28 = *v27;
    v29 = v27[1];
    sub_1C0CF6468(v22, v23);
    sub_1C0CF6468(v24, v26);
    sub_1C0D4268C(v28, v29, v37);
    sub_1C0CF448C(v24, v26);
    sub_1C0CF448C(v22, v23);
    __swift_destroy_boxed_opaque_existential_1(&v31);
    return v37[0];
  }

  return result;
}

uint64_t sub_1C0D19EF0(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, char a7, char a8)
{
  LOBYTE(v9) = a7;
  v173 = a3;
  v15 = sub_1C0D78AEC();
  v16 = *(v15 - 8);
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a8)
  {
    v172 = a5;
    sub_1C0D78ABC();
    v20 = sub_1C0D78AAC();
    a5 = v21;
    result = (*(v16 + 8))(v19, v15);
    if (a5 >> 60 == 15)
    {
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v22 = sub_1C0D19C94(v9, a6, 1);
    v24 = v23;
    v182 = v20;
    v183 = a5;
    a6 = MEMORY[0x1E6969080];
    v180 = MEMORY[0x1E6969080];
    v181 = MEMORY[0x1E6969078];
    v178 = v22;
    v179 = v23;
    v25 = __swift_project_boxed_opaque_existential_1(&v178, MEMORY[0x1E6969080]);
    v26 = *v25;
    v27 = v25[1];
    sub_1C0D134D0(v20, a5);
    sub_1C0CF6468(v22, v24);
    sub_1C0D4268C(v26, v27, &v182);
    sub_1C0CF448C(v22, v24);
    sub_1C0D13830(v20, a5);
    result = __swift_destroy_boxed_opaque_existential_1(&v178);
    v170 = v183;
    v171 = v182;
    v28 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      v9 = MEMORY[0x1E6969078];
      if (!v28)
      {
        result = BYTE6(a2);
        goto LABEL_28;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        result = HIDWORD(a1) - a1;
        goto LABEL_28;
      }

      goto LABEL_87;
    }
  }

  else
  {
    v29 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v29)
      {
        v30 = BYTE6(a2);
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    if (v29 != 2)
    {
      v30 = 0;
      goto LABEL_20;
    }

    v31 = *(a1 + 16);
    v28 = *(a1 + 24);
    v30 = v28 - v31;
    if (!__OFSUB__(v28, v31))
    {
LABEL_20:
      v34 = sub_1C0D053E8(v30, 2);
      v36 = v35;
      v182 = v34;
      v183 = v35;
      a6 = MEMORY[0x1E6969080];
      v180 = MEMORY[0x1E6969080];
      v181 = MEMORY[0x1E6969078];
      v178 = a1;
      v179 = a2;
      v37 = __swift_project_boxed_opaque_existential_1(&v178, MEMORY[0x1E6969080]);
      v38 = *v37;
      v39 = v37[1];
      sub_1C0CF6468(a1, a2);
      sub_1C0CF6468(v34, v36);
      sub_1C0D4268C(v38, v39, &v182);
      sub_1C0CF448C(v34, v36);
      result = __swift_destroy_boxed_opaque_existential_1(&v178);
      v41 = v9;
      v42 = v182;
      v43 = v183;
      if (v41 == 2)
      {
        if (a4 >> 60 == 15)
        {
LABEL_99:
          __break(1u);
          return result;
        }

        v44 = a4 >> 62;
        v172 = a5;
        v169 = a4;
        if ((a4 >> 62) > 1)
        {
          if (v44 == 2)
          {
            v56 = *(v173 + 16);
            v55 = *(v173 + 24);
            v45 = v55 - v56;
            if (__OFSUB__(v55, v56))
            {
              __break(1u);
LABEL_37:
              v54 = MEMORY[0x1E6969078];
              if (v55 == 2)
              {
                v58 = *(v173 + 16);
                v57 = *(v173 + 24);
                result = v57 - v58;
                if (__OFSUB__(v57, v58))
                {
LABEL_91:
                  __break(1u);
                  goto LABEL_92;
                }

                v52 = a6;
              }

              else
              {
                v52 = a6;
                result = 0;
              }

              goto LABEL_61;
            }
          }

          else
          {
            v45 = 0;
          }
        }

        else if (v44)
        {
          if (__OFSUB__(HIDWORD(v173), v173))
          {
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

          v45 = HIDWORD(v173) - v173;
        }

        else
        {
          v45 = BYTE6(a4);
        }

        v59 = sub_1C0D053E8(v45, 2);
        v61 = v60;
        v174 = v42;
        v175 = v43;
        v180 = a6;
        v62 = a6;
        v63 = MEMORY[0x1E6969078];
        v181 = MEMORY[0x1E6969078];
        v178 = v59;
        v179 = v60;
        v64 = __swift_project_boxed_opaque_existential_1(&v178, v62);
        v65 = v43;
        v66 = *v64;
        v67 = v64[1];
        sub_1C0CF6468(v42, v65);
        sub_1C0CF6468(v59, v61);
        sub_1C0D4268C(v66, v67, &v174);
        sub_1C0CF448C(v59, v61);
        __swift_destroy_boxed_opaque_existential_1(&v178);
        v68 = v174;
        v69 = v175;
        v176 = v174;
        v177 = v175;
        v180 = v62;
        v181 = v63;
        a6 = v62;
        v70 = v173;
        v71 = v169;
        v178 = v173;
        v179 = v169;
        v72 = __swift_project_boxed_opaque_existential_1(&v178, a6);
        v73 = *v72;
        v74 = v72[1];
        sub_1C0CF6468(v68, v69);
        sub_1C0D134D0(v70, v71);
        sub_1C0D4268C(v73, v74, &v176);
        sub_1C0CF448C(v68, v69);
        __swift_destroy_boxed_opaque_existential_1(&v178);
        sub_1C0CF448C(v42, v65);
        v42 = v176;
        v43 = v177;
        a5 = v172;
      }

      result = [a5 serializedPublicKey_];
      if (!result)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v75 = result;
      v76 = sub_1C0D7832C();
      v78 = v77;

      v79 = v78;
      v80 = v78 >> 62;
      v81 = a6;
      if ((v78 >> 62) <= 1)
      {
        a6 = MEMORY[0x1E6969078];
        if (!v80)
        {
          sub_1C0CF448C(v76, v78);
          v82 = BYTE6(v78);
          goto LABEL_58;
        }

        goto LABEL_54;
      }

      if (v80 == 2)
      {
        v84 = *(v76 + 16);
        v83 = *(v76 + 24);
        sub_1C0CF448C(v76, v79);
        v82 = v83 - v84;
        if (__OFSUB__(v83, v84))
        {
          __break(1u);
LABEL_54:
          result = sub_1C0CF448C(v76, v79);
          if (__OFSUB__(HIDWORD(v76), v76))
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v82 = HIDWORD(v76) - v76;
LABEL_58:
          v85 = sub_1C0D053E8(v82, 2);
          v87 = v86;
          v176 = v42;
          v177 = v43;
          v180 = v81;
          v181 = a6;
          v178 = v85;
          v179 = v86;
          v88 = __swift_project_boxed_opaque_existential_1(&v178, v81);
          v89 = v43;
          v90 = *v88;
          v91 = v88[1];
          v173 = v89;
          sub_1C0CF6468(v42, v89);
          sub_1C0CF6468(v85, v87);
          sub_1C0D4268C(v90, v91, &v176);
          sub_1C0CF448C(v85, v87);
          __swift_destroy_boxed_opaque_existential_1(&v178);
          v92 = v176;
          v93 = v177;
          result = [a5 serializedPublicKey_];
          if (result)
          {
            v94 = result;
            v95 = sub_1C0D7832C();
            v97 = v96;

            v174 = v92;
            v175 = v93;
            v180 = v81;
            v181 = a6;
            v178 = v95;
            v179 = v97;
            v98 = __swift_project_boxed_opaque_existential_1(&v178, v81);
            v99 = *v98;
            v100 = v98[1];
            sub_1C0CF6468(v92, v93);
            sub_1C0CF6468(v95, v97);
            sub_1C0D4268C(v99, v100, &v174);
            sub_1C0CF448C(v95, v97);
            sub_1C0CF448C(v92, v93);
            __swift_destroy_boxed_opaque_existential_1(&v178);
            v101 = v174;
            v102 = v175;
            v103 = sub_1C0D07698(0x657A696C616E6946, 0xE800000000000000);
            v105 = v104;
            v176 = v101;
            v177 = v102;
            v180 = v81;
            v181 = a6;
            v178 = v103;
            v179 = v104;
            v106 = __swift_project_boxed_opaque_existential_1(&v178, v81);
            v107 = *v106;
            v108 = v106[1];
            sub_1C0CF6468(v101, v102);
            sub_1C0CF6468(v103, v105);
            sub_1C0D4268C(v107, v108, &v176);
            sub_1C0CF448C(v103, v105);
            sub_1C0CF448C(v101, v102);
            __swift_destroy_boxed_opaque_existential_1(&v178);
            sub_1C0CF448C(v42, v173);
            return v176;
          }

          goto LABEL_97;
        }
      }

      else
      {
        sub_1C0CF448C(v76, v78);
        v82 = 0;
      }

      a6 = MEMORY[0x1E6969078];
      goto LABEL_58;
    }

    __break(1u);
  }

  v9 = MEMORY[0x1E6969078];
  if (v28 != 2)
  {
    result = 0;
    goto LABEL_28;
  }

  v33 = *(a1 + 16);
  v32 = *(a1 + 24);
  result = v32 - v33;
  if (__OFSUB__(v32, v33))
  {
    __break(1u);
LABEL_17:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v30 = HIDWORD(a1) - a1;
    goto LABEL_20;
  }

LABEL_28:
  v46 = sub_1C0D053E8(result, 2);
  v48 = v47;
  v182 = v46;
  v183 = v47;
  v180 = a6;
  v181 = v9;
  v178 = a1;
  v179 = a2;
  v49 = __swift_project_boxed_opaque_existential_1(&v178, a6);
  v50 = *v49;
  v51 = v49[1];
  sub_1C0CF6468(v46, v48);
  sub_1C0CF6468(a1, a2);
  sub_1C0D4268C(v50, v51, &v182);
  sub_1C0CF448C(v46, v48);
  result = __swift_destroy_boxed_opaque_existential_1(&v178);
  a2 = v182;
  v42 = v183;
  if (a4 >> 60 == 15)
  {
    v52 = a6;
    v173 = 0;
    result = 0;
    v53 = 0xC000000000000000;
    v54 = MEMORY[0x1E6969078];
    goto LABEL_62;
  }

  v55 = a4 >> 62;
  v40 = a4;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_37;
  }

  v54 = MEMORY[0x1E6969078];
  if (!v55)
  {
    v52 = a6;
    v53 = v40;
    result = BYTE6(v40);
    goto LABEL_62;
  }

  if (__OFSUB__(HIDWORD(v173), v173))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v52 = a6;
  result = HIDWORD(v173) - v173;
LABEL_61:
  v53 = v40;
LABEL_62:
  v109 = sub_1C0D053E8(result, 2);
  v111 = v110;
  v176 = a2;
  v177 = v42;
  v180 = v52;
  v181 = v54;
  v178 = v109;
  v179 = v110;
  v112 = __swift_project_boxed_opaque_existential_1(&v178, v52);
  v113 = v54;
  v114 = *v112;
  v115 = v112[1];
  sub_1C0CF6468(a2, v42);
  sub_1C0CF6468(v109, v111);
  sub_1C0D4268C(v114, v115, &v176);
  sub_1C0CF448C(v109, v111);
  sub_1C0CF448C(a2, v42);
  __swift_destroy_boxed_opaque_existential_1(&v178);
  v116 = v176;
  v117 = v177;
  v182 = v176;
  v183 = v177;
  v180 = v52;
  v181 = v113;
  v118 = v173;
  v178 = v173;
  v179 = v53;
  v119 = v52;
  v120 = __swift_project_boxed_opaque_existential_1(&v178, v52);
  v121 = *v120;
  v122 = v120[1];
  sub_1C0CF6468(v116, v117);
  sub_1C0CF6468(v118, v53);
  sub_1C0D4268C(v121, v122, &v182);
  sub_1C0CF448C(v116, v117);
  __swift_destroy_boxed_opaque_existential_1(&v178);
  v123 = v182;
  v124 = v183;
  result = [v172 serializedPublicKey_];
  if (!result)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v125 = result;
  v126 = sub_1C0D7832C();
  v128 = v127;

  v129 = v128;
  v130 = v128 >> 62;
  if ((v128 >> 62) <= 1)
  {
    v131 = v119;
    if (!v130)
    {
      sub_1C0CF448C(v126, v128);
      v132 = BYTE6(v128);
      goto LABEL_73;
    }

LABEL_70:
    result = sub_1C0CF448C(v126, v129);
    if (!__OFSUB__(HIDWORD(v126), v126))
    {
      v132 = HIDWORD(v126) - v126;
      goto LABEL_73;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v131 = v119;
  if (v130 == 2)
  {
    v134 = *(v126 + 16);
    v133 = *(v126 + 24);
    sub_1C0CF448C(v126, v129);
    v132 = v133 - v134;
    if (__OFSUB__(v133, v134))
    {
      __break(1u);
      goto LABEL_70;
    }
  }

  else
  {
    sub_1C0CF448C(v126, v128);
    v132 = 0;
  }

LABEL_73:
  v135 = sub_1C0D053E8(v132, 2);
  v137 = v136;
  v176 = v123;
  v177 = v124;
  v180 = v131;
  v138 = MEMORY[0x1E6969078];
  v181 = MEMORY[0x1E6969078];
  v178 = v135;
  v179 = v136;
  v139 = __swift_project_boxed_opaque_existential_1(&v178, v131);
  v140 = *v139;
  v141 = v139[1];
  sub_1C0CF6468(v123, v124);
  sub_1C0CF6468(v135, v137);
  sub_1C0D4268C(v140, v141, &v176);
  sub_1C0CF448C(v135, v137);
  sub_1C0CF448C(v123, v124);
  __swift_destroy_boxed_opaque_existential_1(&v178);
  v142 = v176;
  v143 = v177;
  result = [v172 serializedPublicKey_];
  if (!result)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v144 = result;
  v145 = sub_1C0D7832C();
  v147 = v146;

  v182 = v142;
  v183 = v143;
  v180 = v131;
  v181 = v138;
  v178 = v145;
  v179 = v147;
  v148 = __swift_project_boxed_opaque_existential_1(&v178, v131);
  v149 = *v148;
  v150 = v148[1];
  sub_1C0CF6468(v142, v143);
  sub_1C0CF6468(v145, v147);
  sub_1C0D4268C(v149, v150, &v182);
  sub_1C0CF448C(v145, v147);
  sub_1C0CF448C(v142, v143);
  result = __swift_destroy_boxed_opaque_existential_1(&v178);
  v151 = v182;
  v152 = v183;
  v153 = v170;
  v154 = v170 >> 62;
  if ((v170 >> 62) > 1)
  {
    if (v154 != 2)
    {
      result = 0;
      goto LABEL_84;
    }

    v156 = *(v171 + 16);
    v155 = *(v171 + 24);
    result = v155 - v156;
    if (!__OFSUB__(v155, v156))
    {
      goto LABEL_84;
    }

    __break(1u);
LABEL_81:
    if (!__OFSUB__(HIDWORD(v171), v171))
    {
      result = HIDWORD(v171) - v171;
      goto LABEL_84;
    }

    goto LABEL_90;
  }

  if (v154)
  {
    goto LABEL_81;
  }

  result = BYTE6(v170);
LABEL_84:
  v157 = sub_1C0D053E8(result, 2);
  v159 = v158;
  v176 = v151;
  v177 = v152;
  v180 = v131;
  v181 = v138;
  v178 = v157;
  v179 = v158;
  v160 = __swift_project_boxed_opaque_existential_1(&v178, v131);
  v161 = *v160;
  v162 = v160[1];
  sub_1C0CF6468(v151, v152);
  sub_1C0CF6468(v157, v159);
  sub_1C0D4268C(v161, v162, &v176);
  sub_1C0CF448C(v157, v159);
  sub_1C0CF448C(v151, v152);
  __swift_destroy_boxed_opaque_existential_1(&v178);
  v163 = v176;
  v164 = v177;
  v182 = v176;
  v183 = v177;
  v180 = v131;
  v181 = v138;
  v178 = v171;
  v179 = v153;
  v165 = __swift_project_boxed_opaque_existential_1(&v178, v131);
  v166 = *v165;
  v167 = v165[1];
  sub_1C0CF6468(v163, v164);
  sub_1C0D4268C(v166, v167, &v182);
  sub_1C0CF448C(v163, v164);
  __swift_destroy_boxed_opaque_existential_1(&v178);
  return v182;
}

id sub_1C0D1AAB4(uint64_t *a1, unint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, unint64_t a6, char a7)
{
  v32 = a1;
  v33 = a4;
  v12 = sub_1C0D78AEC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ABC();
  v16 = sub_1C0D78AAC();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  if (v18 >> 60 == 15)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v19 = sub_1C0D19C94(a5, a6, a7 & 1);
    v21 = v20;
    v35 = v16;
    v36 = v18;
    v34[3] = MEMORY[0x1E6969080];
    v34[4] = MEMORY[0x1E6969078];
    v34[0] = v19;
    v34[1] = v20;
    v22 = __swift_project_boxed_opaque_existential_1(v34, MEMORY[0x1E6969080]);
    v23 = *v22;
    v24 = v22[1];
    sub_1C0D134D0(v16, v18);
    sub_1C0CF6468(v19, v21);
    sub_1C0D4268C(v23, v24, &v35);
    sub_1C0CF448C(v19, v21);
    sub_1C0D13830(v16, v18);
    __swift_destroy_boxed_opaque_existential_1(v34);
    v25 = v35;
    v26 = v36;
    sub_1C0D3F7B4(a2, a3, v35, v36);
    v28 = v27;
    v29 = sub_1C0D13834(v33, v27);

    sub_1C0CF448C(v25, v26);
    v30 = v33;
    *v32 = v29;

    return v30;
  }

  return result;
}

uint64_t sub_1C0D1ACEC(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9, char a10, unint64_t a11, unsigned __int8 a12)
{
  v127 = a8;
  v128 = a7;
  v132 = a6;
  v137 = a5;
  v138 = a3;
  v139 = a4;
  v136 = a2;
  v135 = a1;
  v13 = sub_1C0D789FC();
  v126 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C0D7866C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1C0D786CC();
  v130 = *(v131 - 1);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C0D78AEC();
  v21 = *(v20 - 8);
  result = MEMORY[0x1EEE9AC00](v20);
  v24 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a10 != 1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v122 = v13;
  v123 = v18;
  v124 = v16;
  v133 = a12;
  v134 = a11;
  v25 = sub_1C0D19C94(1u, a11, a12 & 1);
  v27 = v26;
  sub_1C0D78ABC();
  v28 = sub_1C0D78AAC();
  v30 = v29;
  result = (*(v21 + 8))(v24, v20);
  if (v30 >> 60 == 15)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v148 = v28;
  v149 = v30;
  v31 = MEMORY[0x1E6969080];
  v146 = MEMORY[0x1E6969080];
  v147 = MEMORY[0x1E6969078];
  v144 = v25;
  v145 = v27;
  v32 = __swift_project_boxed_opaque_existential_1(&v144, MEMORY[0x1E6969080]);
  v33 = v25;
  v34 = *v32;
  v35 = v32[1];
  sub_1C0D134D0(v28, v30);
  v150 = v33;
  sub_1C0CF6468(v33, v27);
  sub_1C0D4268C(v34, v35, &v148);
  sub_1C0D13830(v28, v30);
  result = __swift_destroy_boxed_opaque_existential_1(&v144);
  v37 = v148;
  v36 = v149;
  v38 = v139;
  v141 = v27;
  v121 = v15;
  if (v139 >> 60 != 15)
  {
    v40 = v139 >> 62;
    v41 = v138;
    if ((v139 >> 62) > 1)
    {
      if (v40 != 2)
      {
        result = 0;
        goto LABEL_15;
      }

      v43 = *(v138 + 16);
      v42 = *(v138 + 24);
      result = v42 - v43;
      if (!__OFSUB__(v42, v43))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v40)
    {
      result = BYTE6(v139);
LABEL_15:
      v39 = v41;
      goto LABEL_16;
    }

    if (!__OFSUB__(HIDWORD(v41), v41))
    {
      result = HIDWORD(v41) - v41;
      goto LABEL_15;
    }

    goto LABEL_27;
  }

  v39 = 0;
  result = 0;
  v38 = 0xC000000000000000;
LABEL_16:
  v44 = sub_1C0D053E8(result, 2);
  v46 = v45;
  v142 = v37;
  v143 = v36;
  v146 = v31;
  v147 = MEMORY[0x1E6969078];
  v144 = v44;
  v145 = v45;
  v47 = __swift_project_boxed_opaque_existential_1(&v144, v31);
  v48 = v36;
  v49 = v37;
  v50 = *v47;
  v51 = v47[1];
  v140 = v48;
  sub_1C0CF6468(v49, v48);
  sub_1C0CF6468(v44, v46);
  sub_1C0D4268C(v50, v51, &v142);
  sub_1C0CF448C(v44, v46);
  __swift_destroy_boxed_opaque_existential_1(&v144);
  v52 = v142;
  v53 = v143;
  v148 = v142;
  v149 = v143;
  v146 = v31;
  v147 = MEMORY[0x1E6969078];
  v144 = v39;
  v145 = v38;
  v54 = __swift_project_boxed_opaque_existential_1(&v144, v31);
  v55 = *v54;
  v56 = v54[1];
  sub_1C0CF6468(v52, v53);
  sub_1C0CF6468(v39, v38);
  sub_1C0D4268C(v55, v56, &v148);
  sub_1C0CF448C(v52, v53);
  __swift_destroy_boxed_opaque_existential_1(&v144);
  v58 = v148;
  v57 = v149;
  v59 = v150;
  inited = v141;
  v61 = sub_1C0D0E898(v148, v149, v150, v141);
  if (v12)
  {
    sub_1C0CF448C(v58, v57);
    sub_1C0CF448C(v49, v140);
    sub_1C0CF448C(v59, inited);
    return inited;
  }

  v117 = v58;
  v118 = v57;
  v120 = v49;
  v62 = v61;
  v119 = v61;
  sub_1C0D7896C();
  sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
  v115 = 0;
  v63 = v129;
  sub_1C0D786EC();
  v64 = sub_1C0D786BC();
  v65 = v130[1];
  v66 = v131;
  v65(v63, v131);
  v67 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  v68 = sub_1C0D13834(v62, v67);

  v116 = v68;
  v130 = sub_1C0D1388C(a9, v68);
  v69 = v133;
  v70 = v134;

  sub_1C0D786EC();
  v71 = sub_1C0D786BC();
  v65(v63, v66);
  v131 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
  inited = swift_initStackObject();
  inited[1] = xmmword_1C0D7B690;
  v72 = v142;
  v73 = v132;
  *(inited + 4) = v132;
  *(inited + 5) = v72;
  v74 = v73;
  v75 = v72;
  v76 = v70;
  v77 = v130;
  v78 = sub_1C0D19C94(1u, v76, v69 & 1);
  v80 = v79;
  v81 = v115;
  sub_1C0D1EAA0(&v144, 0, v77, v78, v79, inited, v69 & 1);
  if (v81)
  {
    sub_1C0CF448C(v117, v118);

    sub_1C0CF448C(v78, v80);

    sub_1C0CF448C(v120, v140);
    sub_1C0CF448C(v150, v141);

    return inited;
  }

  v115 = v74;
  v129 = v75;
  v83 = v82;

  v84 = v127;
  v85 = sub_1C0D13834(v127, v131);
  v86 = v128;
  v87 = sub_1C0D13834(v128, v77);
  v132 = sub_1C0D1388C(v85, v87);

  v88 = sub_1C0D13834(v84, v83);
  v89 = v144;
  v90 = sub_1C0D13834(v86, v144);
  v91 = v83;
  v92 = sub_1C0D1388C(v88, v90);

  v93 = v89;
  v94 = v69 & 1;
  v95 = v91;
  v127 = v92;
  sub_1C0D1FCCC(v78, v80, v130, v91, v89, v132, v92, v94);
  v97 = v150;
  v98 = v96;
  v99 = v93;
  v100 = [v96 isEqual_];
  sub_1C0CF448C(v78, v80);

  inited = v116;
  if ((v100 & 1) == 0)
  {
    sub_1C0D20BA4();
    swift_allocError();
    *v113 = 0;
    swift_willThrow();
    sub_1C0CF448C(v117, v118);

    sub_1C0CF448C(v120, v140);
    sub_1C0CF448C(v97, v141);

    return inited;
  }

  v101 = v116;
  result = [v137 inverseModOrder];
  if (result)
  {
    v102 = result;
    v103 = sub_1C0D13834(result, v115);
    v137 = v103;

    v104 = sub_1C0D19EF0(v135, v136, v138, v139, v103, v134, 1, v133 & 1);
    v106 = v105;
    sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
    v107 = v125;
    v108 = v122;
    sub_1C0D7863C();
    sub_1C0CF6468(v104, v106);
    sub_1C0D208E4(v104, v106, v107);
    sub_1C0CF448C(v104, v106);
    v109 = v123;
    sub_1C0D7862C();
    sub_1C0CF448C(v104, v106);
    (*(v126 + 8))(v107, v108);
    v110 = v121;
    v146 = v121;
    v147 = sub_1C0D20BF8(&qword_1ED9076C0, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v144);
    v112 = v124;
    (*(v124 + 16))(boxed_opaque_existential_1, v109, v110);
    __swift_project_boxed_opaque_existential_1(&v144, v146);
    sub_1C0D7819C();
    sub_1C0CF448C(v117, v118);

    sub_1C0CF448C(v120, v140);
    sub_1C0CF448C(v150, v141);
    (*(v112 + 8))(v109, v110);

    inited = v148;
    __swift_destroy_boxed_opaque_existential_1(&v144);
    return inited;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1C0D1BA14(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9, unsigned __int8 a10, unint64_t a11, char a12)
{
  v169 = a8;
  v168 = a7;
  v170 = a6;
  v172 = a5;
  v16 = sub_1C0D789FC();
  v164 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v163 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1C0D7866C();
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C0D786CC();
  v20 = MEMORY[0x1EEE9AC00](v19);
  if (a12)
  {
    sub_1C0D1ACEC(a1, a2, a3, a4, v172, v170, v168, v169, a9, a10, a11, 1u);
    return;
  }

  v158 = a9;
  v160 = a1;
  v161 = a2;
  v162 = a11;
  v159 = a3;
  v23 = (a4 >> 60);
  if (a4 >> 60 != 15 && a10 == 1)
  {
    sub_1C0D20BA4();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
    return;
  }

  v152 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v22;
  v154 = v20;
  v155 = a4;
  v151 = v16;
  v25 = a10;
  v26 = v162;
  v156 = sub_1C0D19C94(a10, v162, 0);
  v157 = v27;

  if (a10 == 1)
  {
    sub_1C0D7896C();
    sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
    v28 = v152;
    sub_1C0D786EC();
    v29 = sub_1C0D786BC();
    (v153)[1](v28, v154);
    v154 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C0D7B690;
    v31 = v182;
    v32 = v170;
    *(inited + 32) = v182;
    *(inited + 40) = v32;
    v25 = v31;
    v33 = v32;
    a2 = sub_1C0D19C94(1u, v26, 0);
    v23 = v158;
    v170 = v34;
    v35 = v171;
    sub_1C0D1EAA0(&v174, 0, v158, a2, v34, inited, 0);
    a3 = v35;
    v37 = v169;
    if (v35)
    {
      v38 = v154;

      sub_1C0CF448C(v156, v157);
      sub_1C0CF448C(a2, v170);
LABEL_20:

      return;
    }

    goto LABEL_18;
  }

  if (a10 != 2)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v39 = sub_1C0D07698(1868983881, 0xE400000000000000);
  v41 = v171;
  if (v23 <= 0xE)
  {
    v33 = v39;
    v37 = v40;
    v42 = v155 >> 62;
    if ((v155 >> 62) > 1)
    {
      if (v42 == 2)
      {
        v44 = v159[2];
        v43 = v159[3];
        v36 = v43 - v44;
        if (__OFSUB__(v43, v44))
        {
          __break(1u);
LABEL_18:
          v45 = v36;
          v152 = v33;
          v153 = v25;

          v46 = sub_1C0D13834(v37, v154);
          v47 = v168;
          v48 = sub_1C0D13834(v168, v23);
          v49 = sub_1C0D1388C(v46, v48);

          v50 = v49;
          v51 = v47;
          v52 = sub_1C0D13834(v37, v45);
          v53 = v174;
          v54 = sub_1C0D13834(v51, v174);
          v55 = sub_1C0D1388C(v52, v54);

          v56 = v170;
          v171 = v50;
          v57 = v50;
          v58 = v55;
          sub_1C0D1FCCC(a2, v170, v158, v45, v53, v57, v55, 0);
          if (a3)
          {
            v38 = v154;

            sub_1C0CF448C(v156, v157);
            sub_1C0CF448C(a2, v56);

            v25 = v153;
            goto LABEL_20;
          }

          v99 = v59;
          v100 = [v59 isEqual_];
          sub_1C0CF448C(a2, v56);

          v101 = v161;
          if (v100)
          {
            v102 = [v172 inverseModOrder];
            if (v102)
            {
              v103 = v102;
              v104 = sub_1C0D13834(v102, v152);
              v172 = v104;

              v105 = sub_1C0D19EF0(v160, v101, v159, v155, v104, v26, 1, 0);
              v107 = v106;
              sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
              v108 = v163;
              v109 = v151;
              sub_1C0D7863C();
              sub_1C0CF6468(v105, v107);
              sub_1C0D208E4(v105, v107, v108);
              sub_1C0CF448C(v105, v107);
              v110 = v165;
              sub_1C0D7862C();
              sub_1C0CF448C(v105, v107);
              (*(v164 + 8))(v108, v109);
              v111 = v167;
              v176 = v167;
              v177 = sub_1C0D20BF8(&qword_1ED9076C0, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v174);
              v113 = v166;
              (*(v166 + 16))(boxed_opaque_existential_1, v110, v111);
              __swift_project_boxed_opaque_existential_1(&v174, v176);
              sub_1C0D7819C();
              sub_1C0CF448C(v156, v157);

              (*(v113 + 8))(v110, v111);
              v114 = &v174;
LABEL_34:

              __swift_destroy_boxed_opaque_existential_1(&v174);
              return;
            }

            goto LABEL_40;
          }

          sub_1C0D20BA4();
          swift_allocError();
          *v130 = 0;
          swift_willThrow();
          sub_1C0CF448C(v156, v157);
          v131 = &v174;
LABEL_36:

          return;
        }
      }

      else
      {
        v36 = 0;
      }

LABEL_24:
      v60 = sub_1C0D053E8(v36, 2);
      v62 = v61;
      v178 = v33;
      v179 = v37;
      v63 = MEMORY[0x1E6969080];
      v176 = MEMORY[0x1E6969080];
      v177 = MEMORY[0x1E6969078];
      v174 = v60;
      v175 = v61;
      v64 = __swift_project_boxed_opaque_existential_1(&v174, MEMORY[0x1E6969080]);
      v66 = *v64;
      v65 = v64[1];
      sub_1C0CF6468(v33, v37);
      sub_1C0CF6468(v60, v62);
      sub_1C0D4268C(v66, v65, &v178);
      sub_1C0CF448C(v60, v62);
      sub_1C0CF448C(v33, v37);
      __swift_destroy_boxed_opaque_existential_1(&v174);
      v67 = v178;
      v68 = v179;
      v180 = v178;
      v181 = v179;
      v176 = v63;
      v177 = MEMORY[0x1E6969078];
      v69 = v159;
      v70 = v155;
      v174 = v159;
      v175 = v155;
      v71 = __swift_project_boxed_opaque_existential_1(&v174, v63);
      v72 = *v71;
      v73 = v71[1];
      sub_1C0CF6468(v67, v68);
      sub_1C0D134D0(v69, v70);
      sub_1C0D4268C(v72, v73, &v180);
      sub_1C0CF448C(v67, v68);
      __swift_destroy_boxed_opaque_existential_1(&v174);
      v75 = v180;
      v74 = v181;
      v76 = v156;
      v77 = v157;
      v78 = sub_1C0D0E898(v180, v181, v156, v157);
      if (v41)
      {

        sub_1C0CF448C(v76, v77);
        sub_1C0CF448C(v75, v74);
        return;
      }

      v79 = v78;
      v150 = v75;
      v171 = v74;
      sub_1C0D7896C();
      v149 = sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
      v80 = v152;
      sub_1C0D786EC();
      v81 = sub_1C0D786BC();
      v82 = v153[1];
      v83 = v154;
      v82(v80, v154);
      v84 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
      v85 = sub_1C0D13834(v79, v84);

      v153 = v85;
      v86 = sub_1C0D1388C(v85, v158);
      v87 = v79;
      v88 = v86;
      sub_1C0D786EC();
      v89 = sub_1C0D786BC();
      v82(v80, v83);
      v90 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
      v91 = swift_initStackObject();
      *(v91 + 16) = xmmword_1C0D7B690;
      v92 = v182;
      v93 = v170;
      *(v91 + 32) = v170;
      *(v91 + 40) = v92;
      v94 = v93;
      v95 = v92;
      v96 = sub_1C0D19C94(2u, v162, 0);
      v98 = v97;
      sub_1C0D1EAA0(&v174, 0, v88, v96, v97, v91, 0);
      v148 = v94;
      v149 = v95;
      v152 = v87;
      v116 = v115;

      v117 = v169;
      v118 = sub_1C0D13834(v169, v90);
      v158 = v90;
      v119 = v168;
      v120 = sub_1C0D13834(v168, v88);
      v154 = sub_1C0D1388C(v118, v120);

      v121 = sub_1C0D13834(v117, v116);
      v122 = v174;
      v123 = sub_1C0D13834(v119, v174);
      v170 = v88;
      v124 = v123;
      v125 = sub_1C0D1388C(v121, v123);

      v126 = v116;
      v127 = v116;
      v128 = v154;
      sub_1C0D1FCCC(v96, v98, v170, v127, v122, v154, v125, 0);
      v132 = v129;
      v133 = [v129 isEqual_];
      sub_1C0CF448C(v96, v98);

      if (v133)
      {
        v134 = [v172 inverseModOrder];
        if (v134)
        {
          v135 = v134;
          v136 = sub_1C0D13834(v134, v148);

          v137 = sub_1C0D19EF0(v160, v161, v159, v155, v136, v162, 2, 0);
          v139 = v138;
          sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
          v140 = v163;
          v141 = v151;
          sub_1C0D7863C();
          sub_1C0CF6468(v137, v139);
          sub_1C0D208E4(v137, v139, v140);
          sub_1C0CF448C(v137, v139);
          v142 = v165;
          sub_1C0D7862C();
          sub_1C0CF448C(v137, v139);
          (*(v164 + 8))(v140, v141);
          v143 = v167;
          v176 = v167;
          v177 = sub_1C0D20BF8(&qword_1ED9076C0, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
          v144 = __swift_allocate_boxed_opaque_existential_1(&v174);
          v145 = v166;
          (*(v166 + 16))(v144, v142, v143);
          __swift_project_boxed_opaque_existential_1(&v174, v176);
          sub_1C0D7819C();
          sub_1C0CF448C(v156, v157);
          sub_1C0CF448C(v150, v171);

          (*(v145 + 8))(v142, v143);
          v114 = &v173;
          goto LABEL_34;
        }

        goto LABEL_41;
      }

      sub_1C0D20BA4();
      swift_allocError();
      *v146 = 0;
      swift_willThrow();
      sub_1C0CF448C(v156, v157);
      sub_1C0CF448C(v150, v171);

      v131 = &v183;
      goto LABEL_36;
    }

    if (!v42)
    {
      v36 = BYTE6(v155);
      goto LABEL_24;
    }

    if (!__OFSUB__(HIDWORD(v159), v159))
    {
      v36 = HIDWORD(v159) - v159;
      goto LABEL_24;
    }

    goto LABEL_38;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t PIR.BlindedKeyword.blindedElement.getter()
{
  v1 = *(v0 + 32);
  sub_1C0CF6468(v1, *(v0 + 40));
  return v1;
}

uint64_t PIR.BlindedKeyword.blindedElement.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C0CF448C(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1C0D1CD00()
{
  if (qword_1EBE6CC60 != -1)
  {
    result = swift_once();
  }

  if (qword_1EBE72CE0 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    qword_1EBE72CE8 = 2 * qword_1EBE72CE0;
  }

  return result;
}

unint64_t sub_1C0D1CD80(uint64_t a1, SEL *a2, unint64_t *a3)
{
  v5 = sub_1C0D786CC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  sub_1C0D7896C();
  sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
  sub_1C0D786EC();
  v10 = sub_1C0D786BC();
  (*(v6 + 8))(v8, v5);
  result = [v9 *a2];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t PIR.SymmetricPIRClient.init(serverPublicKey:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = sub_1C0D786CC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[0] = 0;
  v19 = 0;
  sub_1C0D7896C();
  sub_1C0CF6468(a1, a2);
  sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
  sub_1C0D786EC();
  v10 = sub_1C0D786BC();
  (*(v7 + 8))(v9, v6);
  v11 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v12 = sub_1C0D7830C();
  v13 = [v11 initFromPublicKeyBytes:v12 inGroup:v10 compressed:1 corecryptoError:&v19];

  sub_1C0CF448C(a1, a2);
  if (v13)
  {
    result = sub_1C0CF448C(a1, a2);
    v15 = v18[0];
    *a3 = 1;
    *(a3 + 8) = 4;
    *(a3 + 16) = v15;
    *(a3 + 24) = v13;
  }

  else
  {
    v16 = v19;
    sub_1C0CF8DE0();
    swift_allocError();
    *v17 = v16;
    *(v17 + 4) = 0;
    swift_willThrow();
    return sub_1C0CF448C(a1, a2);
  }

  return result;
}

uint64_t PIR.SymmetricPIRClient.blindKeyword(keyword:blind:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v49 = a1;
  v50 = a2;
  v52[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1C0D786CC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *v5;
  v13 = *(v5 + 1);
  v14 = v5[16];
  if (a4 >> 60 == 15)
  {
    sub_1C0D7896C();
    sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
    sub_1C0D786EC();
    v15 = sub_1C0D786BC();
    (*(v10 + 8))(v12, v9);
    v16 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
    if (!v16)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v17 = v16;
    v18 = sub_1C0D1AAB4(v52, v49, v50, v16, v48, v13, v14);
  }

  else
  {
    v51 = 0;
    sub_1C0D7896C();
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a3, a4);
    sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
    sub_1C0D786EC();
    v19 = sub_1C0D786BC();
    (*(v10 + 8))(v12, v9);
    v20 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v21 = sub_1C0D7830C();
    v22 = [v20 initWithData:v21 inGroup:v19 reduction:0 corecryptoError:&v51];

    sub_1C0D13830(a3, a4);
    if (!v22)
    {
      v45 = v51;
      sub_1C0CF8DE0();
      swift_allocError();
      *v46 = v45;
      *(v46 + 4) = 0;
      swift_willThrow();
      return sub_1C0D13830(a3, a4);
    }

    sub_1C0D13830(a3, a4);
    v18 = sub_1C0D1AAB4(v52, v49, v50, v22, v48, v13, v14);
  }

  v23 = v52[0];
  v24 = [v18 serializedBigEndianScalar];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1C0D7832C();
    v28 = v27;

    v29 = [v23 serializedPublicKey_];
    if (v29)
    {
      v30 = v29;
      v31 = sub_1C0D7832C();
      v33 = v32;

      v34 = v28 >> 62;
      if ((v28 >> 62) > 1)
      {
        if (v34 != 2)
        {
          v35 = 0;
          goto LABEL_18;
        }

        v37 = *(v26 + 16);
        v36 = *(v26 + 24);
        v35 = v36 - v37;
        if (!__OFSUB__(v36, v37))
        {
LABEL_18:
          if (qword_1EBE6CC60 != -1)
          {
            swift_once();
          }

          if (v35 != qword_1EBE72CE0)
          {
            __break(1u);
            goto LABEL_36;
          }

          v38 = v33 >> 62;
          if ((v33 >> 62) > 1)
          {
            if (v38 != 2)
            {
              v35 = 0;
              goto LABEL_31;
            }

            v40 = *(v31 + 16);
            v39 = *(v31 + 24);
            v35 = v39 - v40;
            if (!__OFSUB__(v39, v40))
            {
LABEL_31:
              if (qword_1EBE6CC70 == -1)
              {
LABEL_32:
                v41 = qword_1EBE72CF0;

                if (v35 == v41)
                {
                  v42 = v49;
                  v43 = v50;
                  *a5 = v49;
                  a5[1] = v43;
                  a5[2] = v26;
                  a5[3] = v28;
                  a5[4] = v31;
                  a5[5] = v33;
                  return sub_1C0CF6468(v42, v43);
                }

                __break(1u);
                goto LABEL_38;
              }

LABEL_36:
              swift_once();
              goto LABEL_32;
            }

            __break(1u);
          }

          else if (!v38)
          {
            v35 = BYTE6(v33);
            goto LABEL_31;
          }

          if (__OFSUB__(HIDWORD(v31), v31))
          {
            goto LABEL_39;
          }

          v35 = HIDWORD(v31) - v31;
          goto LABEL_31;
        }

        __break(1u);
      }

      else if (!v34)
      {
        v35 = BYTE6(v28);
        goto LABEL_18;
      }

      if (__OFSUB__(HIDWORD(v26), v26))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v35 = HIDWORD(v26) - v26;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_42:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

uint64_t sub_1C0D1D654(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *(result + 16);
  v7 = *(result + 24);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v5 = BYTE6(v7);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v10 = v6 + 16;
  v6 = *(v6 + 16);
  v9 = *(v10 + 8);
  v5 = v9 - v6;
  if (__OFSUB__(v9, v6))
  {
    __break(1u);
LABEL_8:
    v11 = __OFSUB__(HIDWORD(v6), v6);
    v12 = HIDWORD(v6) - v6;
    if (v11)
    {
      __break(1u);
LABEL_42:
      result = swift_once();
LABEL_38:
      if (v5 == qword_1EBE72CE8)
      {
        return result;
      }

      goto LABEL_39;
    }

    v5 = v12;
  }

LABEL_11:
  if (qword_1EBE6CC60 != -1)
  {
    v21 = a2;
    v22 = a4;
    v23 = a5;
    v24 = a3;
    result = swift_once();
    a3 = v24;
    a2 = v21;
    a5 = v23;
    a4 = v22;
  }

  if (v5 != qword_1EBE72CE0)
  {
    goto LABEL_39;
  }

  v13 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(a3);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v13 != 2)
  {
    v14 = 0;
    goto LABEL_24;
  }

  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = v15 - v16;
  if (__OFSUB__(v15, v16))
  {
    __break(1u);
LABEL_21:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
      goto LABEL_44;
    }

    v14 = HIDWORD(a2) - a2;
  }

LABEL_24:
  if (qword_1EBE6CC70 != -1)
  {
    v25 = a4;
    v26 = a5;
    result = swift_once();
    a5 = v26;
    a4 = v25;
  }

  if (v14 == qword_1EBE72CF0)
  {
    v17 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (!v17)
      {
        v5 = BYTE6(a5);
        goto LABEL_37;
      }

LABEL_34:
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        v5 = HIDWORD(a4) - a4;
        goto LABEL_37;
      }

LABEL_44:
      __break(1u);
      return result;
    }

    if (v17 == 2)
    {
      v19 = *(a4 + 16);
      v18 = *(a4 + 24);
      v5 = v18 - v19;
      if (__OFSUB__(v18, v19))
      {
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_37:
    if (qword_1EBE6CC68 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

LABEL_39:
  sub_1C0CF8DE0();
  swift_allocError();
  *v20 = 1;
  *(v20 + 4) = 1;
  return swift_willThrow();
}

char *PIR.SymmetricPIRClient.validateThenHash(blindedKeyword:evaluatedElement:proof:)(char *a1, char *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v155 = a4;
  v156 = a5;
  v157 = a3;
  v166 = *MEMORY[0x1E69E9840];
  v146 = sub_1C0D789FC();
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1C0D7866C();
  v147 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v10 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1C0D786CC();
  v153 = *(v151 - 1);
  MEMORY[0x1EEE9AC00](v151);
  v150 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = *(a1 + 1);
  v14 = *(a1 + 2);
  v15 = *(a1 + 5);
  LODWORD(v148) = *v5;
  v16 = *(v5 + 1);
  v17 = v5[16];
  v18 = *(v5 + 3);
  v161 = v13;
  v162 = v12;
  v163 = v14;
  v149 = *(a1 + 24);
  v164 = v149;
  v165 = v15;
  v152 = a2;
  v19 = v154;
  sub_1C0D1D654(&v161, a2, v157, v155, v156);
  if (v19)
  {
    return a1;
  }

  v136 = v17;
  v141 = v14;
  v135 = v18;
  v137 = v16;
  v138 = v13;
  v139 = v12;
  v134 = v10;
  v140 = 0;
  LODWORD(v161) = 0;
  v20 = sub_1C0D7896C();
  v21 = v152;
  v22 = v157;
  sub_1C0CF6468(v152, v157);
  sub_1C0CF6468(v21, v22);
  v23 = sub_1C0D20BF8(&qword_1ED9076B0, MEMORY[0x1E69665E8], MEMORY[0x1E69665E0]);
  v24 = v150;
  v154 = v23;
  sub_1C0D786EC();
  v25 = sub_1C0D786BC();
  v26 = v153 + 8;
  v27 = v151;
  v142 = *(v153 + 1);
  v142(v24, v151);
  v28 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v29 = sub_1C0D7830C();
  v30 = [v28 initFromPublicKeyBytes:v29 inGroup:v25 compressed:1 corecryptoError:&v161];

  sub_1C0CF448C(v21, v22);
  if (!v30)
  {
    v32 = v161;
    sub_1C0CF8DE0();
    a1 = swift_allocError();
    *v33 = v32;
    *(v33 + 4) = 0;
    swift_willThrow();
    v34 = v152;
    v35 = v22;
LABEL_32:
    sub_1C0CF448C(v34, v35);
    return a1;
  }

  sub_1C0CF448C(v152, v22);
  v31 = v156 >> 62;
  if ((v156 >> 62) > 1)
  {
    if (v31 != 2)
    {
      goto LABEL_12;
    }

    v36 = *(v155 + 16);
    v37 = *(v155 + 24);
  }

  else
  {
    if (!v31)
    {
      goto LABEL_12;
    }

    v36 = v155;
    v37 = v155 >> 32;
  }

  if (v37 < v36)
  {
    __break(1u);
  }

LABEL_12:
  v153 = v26;
  v38 = v27;
  v157 = v20;
  v152 = v30;
  v39 = sub_1C0D782DC();
  v41 = v40;
  sub_1C0CF6468(v39, v40);
  if (qword_1EBE6CC60 != -1)
  {
    swift_once();
  }

  v156 = qword_1EBE72CE0;
  sub_1C0D01560(qword_1EBE72CE0, v39, v41, &v161);
  v43 = v161;
  v42 = v162;
  LODWORD(v159) = 0;
  sub_1C0CF6468(v161, v162);
  sub_1C0D786EC();
  v44 = sub_1C0D786BC();
  v155 = v41;
  v45 = v44;
  v46 = v153;
  v142(v24, v38);
  v47 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v48 = sub_1C0D7830C();
  v49 = [v47 initWithData:v48 inGroup:v45 reduction:0 corecryptoError:&v159];

  sub_1C0CF448C(v43, v42);
  if (!v49)
  {
    v65 = v159;
    sub_1C0CF8DE0();
    a1 = swift_allocError();
    *v66 = v65;
    *(v66 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v43, v42);

    v34 = v39;
    v35 = v155;
    goto LABEL_32;
  }

  v133 = v49;
  sub_1C0CF448C(v43, v42);
  v50 = v156;
  sub_1C0D01F1C(v156, v39, v155, &v161);
  v51 = v161;
  v52 = v162;
  sub_1C0CF6468(v161, v162);
  v155 = v51;
  sub_1C0D01560(v50, v51, v52, &v161);
  v53 = v161;
  v54 = v162;
  LODWORD(v159) = 0;
  sub_1C0CF6468(v161, v162);
  sub_1C0D786EC();
  v55 = sub_1C0D786BC();
  v142(v24, v151);
  v56 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v57 = sub_1C0D7830C();
  v58 = [v56 initWithData:v57 inGroup:v55 reduction:0 corecryptoError:&v159];

  sub_1C0CF448C(v53, v54);
  if (!v58)
  {
    v67 = v159;
    sub_1C0CF8DE0();
    a1 = swift_allocError();
    *v68 = v67;
    *(v68 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v53, v54);

    v34 = v155;
    v35 = v52;
    goto LABEL_32;
  }

  v59 = v46;
  sub_1C0CF448C(v53, v54);
  sub_1C0D01F1C(v156, v155, v52, &v161);
  v61 = v161;
  v60 = v162;
  v62 = v162 >> 62;
  if ((v162 >> 62) <= 1)
  {
    v63 = v141;
    v64 = v149;
    if (v62)
    {
      if (v161 == v161 >> 32)
      {
        goto LABEL_26;
      }
    }

    else if ((v162 & 0xFF000000000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_24:
    sub_1C0CF8DE0();
    a1 = swift_allocError();
    *v69 = 1;
    *(v69 + 4) = 1;
    swift_willThrow();

    v70 = &v160;
LABEL_31:

    v34 = v61;
    v35 = v60;
    goto LABEL_32;
  }

  v63 = v141;
  v64 = v149;
  if (v62 == 2 && *(v161 + 16) != *(v161 + 24))
  {
    goto LABEL_24;
  }

LABEL_26:
  v71 = v58;
  LODWORD(v161) = 0;
  v72 = v64;
  sub_1C0CF6468(v63, v64);
  sub_1C0CF6468(v63, v72);
  v73 = v150;
  sub_1C0D786EC();
  a1 = sub_1C0D786BC();
  v142(v73, v151);
  v74 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v75 = sub_1C0D7830C();
  v76 = [v74 initWithData:v75 inGroup:a1 reduction:0 corecryptoError:&v161];

  sub_1C0CF448C(v63, v72);
  if (!v76)
  {
    v81 = v161;
    sub_1C0CF8DE0();
    a1 = swift_allocError();
    *v82 = v81;
    *(v82 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v63, v72);

    v70 = &v167;
    goto LABEL_31;
  }

  sub_1C0CF448C(v63, v72);
  if (v136)
  {
    v59 = v152;
    v77 = v133;
    v78 = v140;
    v79 = sub_1C0D1ACEC(v138, v139, 0, 0xF000000000000000, v76, v152, v133, v71, v135, v148, v137, 1u);
    v80 = v76;
    if (v78)
    {

      sub_1C0CF448C(v61, v60);
      return a1;
    }

LABEL_39:
    a1 = v79;

    sub_1C0CF448C(v61, v60);
    return a1;
  }

  v84 = v148;
  v85 = v137;
  v86 = sub_1C0D19C94(v148, v137, 0);
  v77 = v87;

  if (v84 != 1)
  {
    if (v84 != 2)
    {
      __break(1u);
    }

    v79 = sub_1C0D07698(1868983881, 0xE400000000000000);
    __break(1u);
    goto LABEL_39;
  }

  v155 = v86;
  v156 = v76;
  v148 = v61;
  *&v149 = v60;
  v88 = v150;
  sub_1C0D786EC();
  v89 = sub_1C0D786BC();
  v142(v88, v151);
  v157 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0D7B690;
  v91 = v158;
  v92 = v152;
  *(inited + 32) = v158;
  *(inited + 40) = v92;
  a1 = v91;
  v93 = v92;
  v94 = sub_1C0D19C94(1u, v85, 0);
  v96 = v95;
  v97 = v135;
  v98 = v140;
  sub_1C0D1EAA0(&v161, 0, v135, v94, v95, inited, 0);
  v140 = v98;
  if (v98)
  {

    sub_1C0CF448C(v148, v149);

    sub_1C0CF448C(v155, v77);
    sub_1C0CF448C(v94, v96);
    v100 = v133;
LABEL_42:

    return a1;
  }

  v151 = v93;
  v153 = a1;
  v152 = v77;
  v101 = v99;

  v102 = sub_1C0D13834(v71, v157);
  v103 = v133;
  v104 = sub_1C0D13834(v133, v97);
  v154 = sub_1C0D1388C(v102, v104);

  v150 = v71;
  v105 = sub_1C0D13834(v71, v101);
  v100 = v161;
  v106 = sub_1C0D13834(v103, v161);
  v107 = v97;
  v108 = v106;
  v109 = sub_1C0D1388C(v105, v106);

  v110 = v107;
  v111 = v101;
  v112 = v101;
  v113 = v154;
  v114 = v140;
  sub_1C0D1FCCC(v94, v96, v110, v112, v100, v154, v109, 0);
  v140 = v114;
  if (v114)
  {

    sub_1C0CF448C(v148, v149);
    sub_1C0CF448C(v155, v152);
    sub_1C0CF448C(v94, v96);

    v71 = v133;
    a1 = v153;
    goto LABEL_42;
  }

  v116 = v115;
  v117 = [v115 isEqual_];
  sub_1C0CF448C(v94, v96);

  v118 = v155;
  if ((v117 & 1) == 0)
  {
    sub_1C0D20BA4();
    a1 = swift_allocError();
    *v132 = 0;
    swift_willThrow();

    sub_1C0CF448C(v148, v149);
    sub_1C0CF448C(v118, v152);

    return a1;
  }

  result = [v156 inverseModOrder];
  if (result)
  {
    v119 = result;
    v120 = v151;
    v121 = sub_1C0D13834(result, v151);
    v157 = v121;

    v122 = sub_1C0D19EF0(v138, v139, 0, 0xF000000000000000, v121, v137, 1, 0);
    v124 = v123;
    sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
    v125 = v144;
    v126 = v146;
    sub_1C0D7863C();
    sub_1C0CF6468(v122, v124);
    v127 = v140;
    sub_1C0D208E4(v122, v124, v125);
    v154 = v127;
    sub_1C0CF448C(v122, v124);
    v128 = v134;
    sub_1C0D7862C();
    sub_1C0CF448C(v122, v124);
    (*(v145 + 8))(v125, v126);
    v129 = v143;
    *&v164 = v143;
    *(&v164 + 1) = sub_1C0D20BF8(&qword_1ED9076C0, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
    v130 = __swift_allocate_boxed_opaque_existential_1(&v161);
    v131 = v147;
    (*(v147 + 16))(v130, v128, v129);
    __swift_project_boxed_opaque_existential_1(&v161, v164);
    sub_1C0D7819C();

    sub_1C0CF448C(v155, v152);
    sub_1C0CF448C(v148, v149);

    (*(v131 + 8))(v128, v129);
    a1 = v159;
    __swift_destroy_boxed_opaque_existential_1(&v161);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D1E970(unint64_t a1, char a2)
{
  if (a2)
  {

    return sub_1C0D053E8(a1, 2);
  }

  else
  {
    switch(a1)
    {
      case 5uLL:
        v3 = 0xEB00000000323135;
        v4 = 825374032;
        break;
      case 4uLL:
        v3 = 0xEB00000000343833;
        v4 = 876098384;
        break;
      case 3uLL:
        v3 = 0xEB00000000363532;
        v4 = 909455952;
        break;
      default:
        result = sub_1C0D78EBC();
        __break(1u);
        return result;
    }

    MEMORY[0x1C68E3B00](v4 | 0x4148532D00000000, v3);

    return sub_1C0D07698(45, 0xE100000000000000);
  }
}

void sub_1C0D1EAA0(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void **a6, int a7)
{
  v229 = a7;
  v253 = a3;
  v230 = a2;
  v210 = a1;
  v11 = sub_1C0D789FC();
  v238 = *(v11 - 8);
  v239 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v237 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C0D7866C();
  v241 = *(v13 - 8);
  v242 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v240 = &v209 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C0D78AEC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v209 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ABC();
  v19 = sub_1C0D78AAC();
  v21 = v20;
  v22 = *(v16 + 8);
  v220 = v18;
  v222 = v15;
  v221 = v16 + 8;
  v219 = v22;
  v22(v18, v15);
  if (v21 >> 60 == 15)
  {
    goto LABEL_103;
  }

  v251 = v19;
  v252 = v21;
  v249 = MEMORY[0x1E6969080];
  v250 = MEMORY[0x1E6969078];
  v247 = a4;
  v248 = a5;
  v23 = __swift_project_boxed_opaque_existential_1(&v247, MEMORY[0x1E6969080]);
  v24 = *v23;
  v25 = v23[1];
  sub_1C0D134D0(v19, v21);
  v232 = a4;
  v233 = a5;
  sub_1C0CF6468(a4, a5);
  sub_1C0D4268C(v24, v25, &v251);
  sub_1C0D13830(v19, v21);
  __swift_destroy_boxed_opaque_existential_1(&v247);
  v215 = v251;
  v216 = v252;
  v26 = [v253 serializedPublicKey_];
  if (!v26)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v27 = v26;
  v28 = sub_1C0D7832C();
  v30 = v29;

  v31 = v30 >> 62;
  if ((v30 >> 62) <= 1)
  {
    v32 = MEMORY[0x1E6969080];
    if (!v31)
    {
      v33 = BYTE6(v30);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v32 = MEMORY[0x1E6969080];
  if (v31 != 2)
  {
    v33 = 0;
    goto LABEL_13;
  }

  v35 = *(v28 + 16);
  v34 = *(v28 + 24);
  v33 = v34 - v35;
  if (__OFSUB__(v34, v35))
  {
    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v28), v28))
    {
      goto LABEL_98;
    }

    v33 = HIDWORD(v28) - v28;
  }

LABEL_13:
  v36 = sub_1C0D053E8(v33, 2);
  v38 = v37;
  v251 = v36;
  v252 = v37;
  v249 = v32;
  v250 = MEMORY[0x1E6969078];
  v247 = v28;
  v248 = v30;
  v39 = __swift_project_boxed_opaque_existential_1(&v247, v32);
  v40 = *v39;
  v41 = v39[1];
  sub_1C0CF6468(v36, v38);
  sub_1C0CF6468(v28, v30);
  sub_1C0D4268C(v40, v41, &v251);
  sub_1C0CF448C(v36, v38);
  __swift_destroy_boxed_opaque_existential_1(&v247);
  v42 = v251;
  v43 = v252;
  v44 = v216 >> 62;
  v236 = a6;
  if ((v216 >> 62) <= 1)
  {
    if (!v44)
    {
      v45 = BYTE6(v216);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v44 != 2)
  {
    v45 = 0;
    goto LABEL_23;
  }

  v47 = *(v215 + 16);
  v46 = *(v215 + 24);
  v45 = v46 - v47;
  if (__OFSUB__(v46, v47))
  {
    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(v215), v215))
    {
      goto LABEL_99;
    }

    v45 = HIDWORD(v215) - v215;
  }

LABEL_23:
  v213 = v28;
  v214 = v30;
  v48 = sub_1C0D053E8(v45, 2);
  v50 = v49;
  v245 = v42;
  v246 = v43;
  v51 = MEMORY[0x1E6969080];
  v249 = MEMORY[0x1E6969080];
  v52 = MEMORY[0x1E6969078];
  v250 = MEMORY[0x1E6969078];
  v247 = v48;
  v248 = v49;
  v53 = __swift_project_boxed_opaque_existential_1(&v247, MEMORY[0x1E6969080]);
  v55 = *v53;
  v54 = v53[1];
  sub_1C0CF6468(v42, v43);
  sub_1C0CF6468(v48, v50);
  sub_1C0D4268C(v55, v54, &v245);
  sub_1C0CF448C(v48, v50);
  sub_1C0CF448C(v42, v43);
  __swift_destroy_boxed_opaque_existential_1(&v247);
  v56 = v245;
  v57 = v246;
  v251 = v245;
  v252 = v246;
  v249 = v51;
  v250 = v52;
  v58 = v215;
  v59 = v216;
  v247 = v215;
  v248 = v216;
  v60 = __swift_project_boxed_opaque_existential_1(&v247, v51);
  v61 = *v60;
  v62 = v60[1];
  sub_1C0CF6468(v56, v57);
  sub_1C0CF6468(v58, v59);
  sub_1C0D4268C(v61, v62, &v251);
  sub_1C0CF448C(v56, v57);
  __swift_destroy_boxed_opaque_existential_1(&v247);
  v64 = v251;
  v63 = v252;
  sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  v65 = v237;
  v66 = v239;
  sub_1C0D7863C();
  sub_1C0CF6468(v64, v63);
  sub_1C0D208E4(v64, v63, v65);
  v67 = v7;
  v211 = v64;
  v212 = v63;
  sub_1C0CF448C(v64, v63);
  v68 = v240;
  sub_1C0D7862C();
  v238[1](v65, v66);
  v69 = v242;
  v249 = v242;
  v250 = sub_1C0D20BF8(&qword_1ED9076C0, MEMORY[0x1E6966408], MEMORY[0x1E69663F8]);
  v70 = __swift_allocate_boxed_opaque_existential_1(&v247);
  v71 = v241;
  (*(v241 + 16))(v70, v68, v69);
  __swift_project_boxed_opaque_existential_1(&v247, v249);
  sub_1C0D7819C();
  (*(v71 + 8))(v68, v69);
  v72 = v251;
  v73 = v252;
  __swift_destroy_boxed_opaque_existential_1(&v247);
  v228 = v236[2];
  if (!v228)
  {
LABEL_105:
    if (!v230)
    {
LABEL_106:
      __break(1u);
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v239 = 0;
  v224 = 0;
  v74 = 0;
  v75 = (v73 >> 62);
  v231 = v72;
  v76 = __OFSUB__(HIDWORD(v72), v72);
  v218 = v76;
  v217 = HIDWORD(v72) - v72;
  v223 = BYTE6(v73);
  v77 = v236 + 5;
  v78 = MEMORY[0x1E6969078];
  v237 = v73;
  v227 = v73 >> 62;
  do
  {
    v81 = *v77;
    v82 = *(v77 - 1);
    v83 = v81;
    v84 = v82;
    v85 = v83;
    v238 = v84;
    v86 = [v84 serializedPublicKey_];
    if (!v86)
    {
      goto LABEL_100;
    }

    v87 = v86;
    v241 = sub_1C0D7832C();
    v253 = v88;

    v89 = [v85 serializedPublicKey_];
    if (!v89)
    {
      goto LABEL_101;
    }

    v90 = v89;
    v240 = sub_1C0D7832C();
    v242 = v91;

    if (v75 > 1)
    {
      if (v75 == 2)
      {
        v94 = *(v231 + 16);
        v93 = *(v231 + 24);
        v92 = v93 - v94;
        if (__OFSUB__(v93, v94))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
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
          goto LABEL_104;
        }
      }

      else
      {
        v92 = 0;
      }
    }

    else
    {
      v92 = v223;
      if (v75)
      {
        v92 = v217;
        if (v218)
        {
          goto LABEL_91;
        }
      }
    }

    v234 = v77;
    v235 = v85;
    v236 = v74;
    v95 = sub_1C0D053E8(v92, 2);
    v97 = v96;
    v245 = v95;
    v246 = v96;
    v98 = MEMORY[0x1E6969080];
    v249 = MEMORY[0x1E6969080];
    v250 = v78;
    v99 = v231;
    v100 = v237;
    v247 = v231;
    v248 = v237;
    v101 = __swift_project_boxed_opaque_existential_1(&v247, MEMORY[0x1E6969080]);
    v103 = *v101;
    v102 = v101[1];
    sub_1C0CF6468(v95, v97);
    sub_1C0CF6468(v99, v100);
    v104 = v67;
    sub_1C0D4268C(v103, v102, &v245);
    sub_1C0CF448C(v95, v97);
    __swift_destroy_boxed_opaque_existential_1(&v247);
    v105 = v245;
    v106 = v246;
    v107 = sub_1C0D053E8(v239, 2);
    v109 = v108;
    v243 = v105;
    v244 = v106;
    v249 = v98;
    v250 = v78;
    v247 = v107;
    v248 = v108;
    v110 = __swift_project_boxed_opaque_existential_1(&v247, v98);
    v111 = *v110;
    v112 = v110[1];
    sub_1C0CF6468(v105, v106);
    sub_1C0CF6468(v107, v109);
    sub_1C0D4268C(v111, v112, &v243);
    sub_1C0CF448C(v107, v109);
    sub_1C0CF448C(v105, v106);
    __swift_destroy_boxed_opaque_existential_1(&v247);
    v113 = v243;
    v114 = v244;
    v115 = v253 >> 62;
    if ((v253 >> 62) > 1)
    {
      if (v115 == 2)
      {
        v118 = *(v241 + 16);
        v117 = *(v241 + 24);
        v116 = v117 - v118;
        if (__OFSUB__(v117, v118))
        {
          goto LABEL_92;
        }
      }

      else
      {
        v116 = 0;
      }
    }

    else if (v115)
    {
      if (__OFSUB__(HIDWORD(v241), v241))
      {
        goto LABEL_93;
      }

      v116 = HIDWORD(v241) - v241;
    }

    else
    {
      v116 = BYTE6(v253);
    }

    v119 = sub_1C0D053E8(v116, 2);
    v121 = v120;
    v245 = v113;
    v246 = v114;
    v122 = MEMORY[0x1E6969080];
    v249 = MEMORY[0x1E6969080];
    v123 = MEMORY[0x1E6969078];
    v250 = MEMORY[0x1E6969078];
    v247 = v119;
    v248 = v120;
    v124 = __swift_project_boxed_opaque_existential_1(&v247, MEMORY[0x1E6969080]);
    v125 = *v124;
    v126 = v124[1];
    sub_1C0CF6468(v113, v114);
    sub_1C0CF6468(v119, v121);
    sub_1C0D4268C(v125, v126, &v245);
    sub_1C0CF448C(v119, v121);
    sub_1C0CF448C(v113, v114);
    __swift_destroy_boxed_opaque_existential_1(&v247);
    v127 = v245;
    v128 = v246;
    v243 = v245;
    v244 = v246;
    v249 = v122;
    v250 = v123;
    v129 = v241;
    v130 = v253;
    v247 = v241;
    v248 = v253;
    v131 = __swift_project_boxed_opaque_existential_1(&v247, v122);
    v132 = *v131;
    v133 = v131[1];
    sub_1C0CF6468(v127, v128);
    sub_1C0CF6468(v129, v130);
    sub_1C0D4268C(v132, v133, &v243);
    sub_1C0CF448C(v127, v128);
    __swift_destroy_boxed_opaque_existential_1(&v247);
    v134 = v243;
    v135 = v244;
    v136 = v242 >> 62;
    if ((v242 >> 62) > 1)
    {
      if (v136 == 2)
      {
        v139 = *(v240 + 16);
        v138 = *(v240 + 24);
        v137 = v138 - v139;
        if (__OFSUB__(v138, v139))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v137 = 0;
      }
    }

    else if (v136)
    {
      if (__OFSUB__(HIDWORD(v240), v240))
      {
        goto LABEL_95;
      }

      v137 = HIDWORD(v240) - v240;
    }

    else
    {
      v137 = BYTE6(v242);
    }

    v140 = sub_1C0D053E8(v137, 2);
    v142 = v141;
    v245 = v134;
    v246 = v135;
    v249 = v122;
    v143 = MEMORY[0x1E6969078];
    v250 = MEMORY[0x1E6969078];
    v247 = v140;
    v248 = v141;
    v144 = __swift_project_boxed_opaque_existential_1(&v247, v122);
    v145 = *v144;
    v146 = v144[1];
    sub_1C0CF6468(v134, v135);
    sub_1C0CF6468(v140, v142);
    v147 = v122;
    v148 = v143;
    sub_1C0D4268C(v145, v146, &v245);
    sub_1C0CF448C(v140, v142);
    sub_1C0CF448C(v134, v135);
    __swift_destroy_boxed_opaque_existential_1(&v247);
    v149 = v245;
    v150 = v246;
    v251 = v245;
    v252 = v246;
    v249 = v147;
    v250 = v143;
    v151 = v240;
    v152 = v242;
    v247 = v240;
    v248 = v242;
    v153 = __swift_project_boxed_opaque_existential_1(&v247, v147);
    v154 = *v153;
    v155 = v153[1];
    sub_1C0CF6468(v149, v150);
    sub_1C0CF6468(v151, v152);
    sub_1C0D4268C(v154, v155, &v251);
    sub_1C0CF448C(v149, v150);
    __swift_destroy_boxed_opaque_existential_1(&v247);
    if (v229)
    {
      v156 = v220;
      sub_1C0D78ABC();
      v157 = sub_1C0D78AAC();
      v159 = v158;
      v219(v156, v222);
      if (v159 >> 60 == 15)
      {
        goto LABEL_102;
      }

      v245 = v157;
      v246 = v159;
      v249 = MEMORY[0x1E6969080];
      v250 = v148;
      v160 = v232;
      v161 = v233;
      v247 = v232;
      v248 = v233;
      v162 = __swift_project_boxed_opaque_existential_1(&v247, MEMORY[0x1E6969080]);
      v163 = *v162;
      v164 = v162[1];
      sub_1C0CF6468(v160, v161);
      sub_1C0D134D0(v157, v159);
      sub_1C0D4268C(v163, v164, &v245);
      sub_1C0D13830(v157, v159);
      __swift_destroy_boxed_opaque_existential_1(&v247);
      v166 = v251;
      v165 = v252;
      v167 = v246 >> 62;
      v226 = v245;
      v225 = v246;
      if ((v246 >> 62) > 1)
      {
        if (v167 == 2)
        {
          v183 = *(v245 + 16);
          v182 = *(v245 + 24);
          v168 = v182 - v183;
          if (__OFSUB__(v182, v183))
          {
            goto LABEL_96;
          }
        }

        else
        {
          v168 = 0;
        }
      }

      else if (v167)
      {
        if (__OFSUB__(HIDWORD(v245), v245))
        {
          goto LABEL_97;
        }

        v168 = HIDWORD(v245) - v245;
      }

      else
      {
        v168 = BYTE6(v246);
      }

      v184 = sub_1C0D053E8(v168, 2);
      v186 = v185;
      v243 = v166;
      v244 = v165;
      v187 = MEMORY[0x1E6969080];
      v249 = MEMORY[0x1E6969080];
      v188 = MEMORY[0x1E6969078];
      v250 = MEMORY[0x1E6969078];
      v247 = v184;
      v248 = v185;
      v189 = __swift_project_boxed_opaque_existential_1(&v247, MEMORY[0x1E6969080]);
      v190 = *v189;
      v191 = v189[1];
      sub_1C0CF6468(v166, v165);
      sub_1C0CF6468(v184, v186);
      sub_1C0D4268C(v190, v191, &v243);
      sub_1C0CF448C(v184, v186);
      __swift_destroy_boxed_opaque_existential_1(&v247);
      v192 = v243;
      v193 = v244;
      v245 = v243;
      v246 = v244;
      v249 = v187;
      v250 = v188;
      v247 = v226;
      v248 = v225;
      v194 = __swift_project_boxed_opaque_existential_1(&v247, v187);
      v195 = *v194;
      v196 = v194[1];
      sub_1C0CF6468(v192, v193);
      sub_1C0D4268C(v195, v196, &v245);
      sub_1C0CF448C(v192, v193);
      __swift_destroy_boxed_opaque_existential_1(&v247);
      sub_1C0CF448C(v166, v165);
      v178 = v245;
      v177 = v246;
      v251 = v245;
      v180 = v233;
      v181 = v232;
      v179 = v237;
    }

    else
    {
      v169 = v251;
      v170 = v252;
      v171 = sub_1C0D07698(0x7469736F706D6F43, 0xE900000000000065);
      v173 = v172;
      v245 = v169;
      v246 = v170;
      v249 = v147;
      v250 = v148;
      v247 = v171;
      v248 = v172;
      v174 = __swift_project_boxed_opaque_existential_1(&v247, v147);
      v175 = *v174;
      v176 = v174[1];
      sub_1C0CF6468(v169, v170);
      sub_1C0CF6468(v171, v173);
      sub_1C0D4268C(v175, v176, &v245);
      sub_1C0CF448C(v171, v173);
      __swift_destroy_boxed_opaque_existential_1(&v247);
      sub_1C0CF448C(v169, v170);
      v178 = v245;
      v177 = v246;
      v251 = v245;
      v179 = v237;
      v180 = v233;
      v181 = v232;
    }

    v197 = sub_1C0D0E898(v178, v177, v181, v180);
    v67 = v104;
    v198 = v236;
    if (v104)
    {
      v204 = v238;
      v205 = v235;

      sub_1C0CF448C(v211, v212);
      sub_1C0CF448C(v240, v242);
      sub_1C0CF448C(v241, v253);
      sub_1C0CF448C(v231, v179);
      sub_1C0CF448C(v215, v216);
      sub_1C0CF448C(v213, v214);

      sub_1C0CF448C(v178, v177);
      return;
    }

    v199 = v197;
    if (v236)
    {
      v200 = sub_1C0D13834(v197, v238);
      v74 = sub_1C0D1388C(v200, v198);
    }

    else
    {
      v74 = sub_1C0D13834(v197, v238);
    }

    if (v230)
    {
      v79 = v235;
LABEL_29:

      v75 = v238;
      sub_1C0CF448C(v240, v242);
      sub_1C0CF448C(v241, v253);

      goto LABEL_30;
    }

    v201 = v224;
    if (!v224)
    {
      v79 = v235;
      v224 = sub_1C0D13834(v199, v235);
      goto LABEL_29;
    }

    v202 = v235;
    v203 = sub_1C0D13834(v199, v235);
    v236 = sub_1C0D1388C(v203, v201);

    v75 = v238;
    sub_1C0CF448C(v240, v242);
    sub_1C0CF448C(v241, v253);

    v224 = v236;
LABEL_30:
    v80 = v239 + 1;

    sub_1C0CF448C(v178, v177);
    v77 = v234 + 2;
    v239 = v80;
    LODWORD(v75) = v227;
    v78 = MEMORY[0x1E6969078];
  }

  while (v228 != v80);
  if (v230)
  {
    v206 = v214;
    v207 = v213;
    if (!v74)
    {
      goto LABEL_107;
    }

    v208 = sub_1C0D13834(v230, v74);

LABEL_90:
    sub_1C0CF448C(v211, v212);
    sub_1C0CF448C(v231, v237);
    sub_1C0CF448C(v215, v216);
    sub_1C0CF448C(v207, v206);
    *v210 = v208;
    return;
  }

  v206 = v214;
  v207 = v213;
  if (!v74)
  {
    goto LABEL_106;
  }

  v208 = v224;
  if (v224)
  {
    goto LABEL_90;
  }

LABEL_108:
  __break(1u);
}

void sub_1C0D1FCCC(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8)
{
  LODWORD(v169) = a8;
  v170 = a1;
  v171 = a2;
  v168 = sub_1C0D78AEC();
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v15 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a3 serializedPublicKey_];
  if (!v16)
  {
    goto LABEL_78;
  }

  v17 = v16;
  v18 = sub_1C0D7832C();
  v172 = v19;

  v20 = [a4 serializedPublicKey_];
  if (!v20)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v21 = v20;
  v176 = sub_1C0D7832C();
  v190 = v22;

  v23 = [a5 serializedPublicKey_];
  if (!v23)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = v23;
  v175 = sub_1C0D7832C();
  v179 = v25;

  v26 = [a6 serializedPublicKey_];
  if (!v26)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v27 = v26;
  v174 = sub_1C0D7832C();
  v178 = v28;

  v29 = [a7 serializedPublicKey_];
  if (!v29)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v30 = v29;
  v173 = sub_1C0D7832C();
  v177 = v31;

  v32 = v172;
  v33 = v172 >> 62;
  if ((v172 >> 62) <= 1)
  {
    if (!v33)
    {
      v34 = BYTE6(v172);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v33 != 2)
  {
    v34 = 0;
    goto LABEL_16;
  }

  v36 = *(v18 + 16);
  v35 = *(v18 + 24);
  v34 = v35 - v36;
  if (__OFSUB__(v35, v36))
  {
    __break(1u);
LABEL_13:
    if (__OFSUB__(HIDWORD(v18), v18))
    {
      __break(1u);
      goto LABEL_73;
    }

    v34 = HIDWORD(v18) - v18;
  }

LABEL_16:
  v37 = sub_1C0D053E8(v34, 2);
  v39 = v38;
  v188 = v37;
  v189 = v38;
  v40 = MEMORY[0x1E6969080];
  v184 = MEMORY[0x1E6969080];
  v185 = MEMORY[0x1E6969078];
  v182 = v18;
  v183 = v32;
  v41 = __swift_project_boxed_opaque_existential_1(&v182, MEMORY[0x1E6969080]);
  v42 = v18;
  v44 = *v41;
  v43 = v41[1];
  sub_1C0CF6468(v37, v39);
  v165 = v42;
  sub_1C0CF6468(v42, v32);
  sub_1C0D4268C(v44, v43, &v188);
  sub_1C0CF448C(v37, v39);
  __swift_destroy_boxed_opaque_existential_1(&v182);
  v45 = v188;
  v46 = v189;
  v47 = v190 >> 62;
  v166 = v15;
  if ((v190 >> 62) <= 1)
  {
    if (!v47)
    {
      v48 = BYTE6(v190);
      goto LABEL_26;
    }

LABEL_23:
    if (!__OFSUB__(HIDWORD(v176), v176))
    {
      v48 = HIDWORD(v176) - v176;
      goto LABEL_26;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v47 == 2)
  {
    v50 = *(v176 + 16);
    v49 = *(v176 + 24);
    v48 = v49 - v50;
    if (__OFSUB__(v49, v50))
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v48 = 0;
  }

LABEL_26:
  v51 = sub_1C0D053E8(v48, 2);
  v53 = v52;
  v186 = v45;
  v187 = v46;
  v184 = v40;
  v54 = MEMORY[0x1E6969078];
  v185 = MEMORY[0x1E6969078];
  v182 = v51;
  v183 = v52;
  v55 = __swift_project_boxed_opaque_existential_1(&v182, v40);
  v56 = *v55;
  v57 = v55[1];
  sub_1C0CF6468(v45, v46);
  sub_1C0CF6468(v51, v53);
  sub_1C0D4268C(v56, v57, &v186);
  sub_1C0CF448C(v51, v53);
  sub_1C0CF448C(v45, v46);
  __swift_destroy_boxed_opaque_existential_1(&v182);
  v58 = v186;
  v59 = v187;
  v188 = v186;
  v189 = v187;
  v184 = v40;
  v185 = v54;
  v60 = v176;
  v61 = v190;
  v182 = v176;
  v183 = v190;
  v62 = __swift_project_boxed_opaque_existential_1(&v182, v40);
  v63 = *v62;
  v64 = v62[1];
  sub_1C0CF6468(v58, v59);
  sub_1C0CF6468(v60, v61);
  sub_1C0D4268C(v63, v64, &v188);
  sub_1C0CF448C(v58, v59);
  __swift_destroy_boxed_opaque_existential_1(&v182);
  v65 = v188;
  v66 = v189;
  v67 = v179 >> 62;
  if ((v179 >> 62) <= 1)
  {
    if (!v67)
    {
      v68 = BYTE6(v179);
      goto LABEL_36;
    }

LABEL_33:
    if (!__OFSUB__(HIDWORD(v175), v175))
    {
      v68 = HIDWORD(v175) - v175;
      goto LABEL_36;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v67 == 2)
  {
    v70 = *(v175 + 16);
    v69 = *(v175 + 24);
    v68 = v69 - v70;
    if (__OFSUB__(v69, v70))
    {
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
    v68 = 0;
  }

LABEL_36:
  v71 = sub_1C0D053E8(v68, 2);
  v73 = v72;
  v186 = v65;
  v187 = v66;
  v184 = v40;
  v185 = v54;
  v182 = v71;
  v183 = v72;
  v74 = __swift_project_boxed_opaque_existential_1(&v182, v40);
  v75 = *v74;
  v76 = v74[1];
  sub_1C0CF6468(v65, v66);
  sub_1C0CF6468(v71, v73);
  sub_1C0D4268C(v75, v76, &v186);
  sub_1C0CF448C(v71, v73);
  sub_1C0CF448C(v65, v66);
  __swift_destroy_boxed_opaque_existential_1(&v182);
  v77 = v186;
  v78 = v187;
  v188 = v186;
  v189 = v187;
  v184 = v40;
  v185 = v54;
  v79 = v175;
  v80 = v179;
  v182 = v175;
  v183 = v179;
  v81 = __swift_project_boxed_opaque_existential_1(&v182, v40);
  v82 = *v81;
  v83 = v81[1];
  sub_1C0CF6468(v77, v78);
  sub_1C0CF6468(v79, v80);
  sub_1C0D4268C(v82, v83, &v188);
  sub_1C0CF448C(v77, v78);
  __swift_destroy_boxed_opaque_existential_1(&v182);
  v84 = v188;
  v85 = v189;
  v86 = v178 >> 62;
  if ((v178 >> 62) <= 1)
  {
    if (!v86)
    {
      v87 = BYTE6(v178);
      goto LABEL_46;
    }

LABEL_43:
    if (!__OFSUB__(HIDWORD(v174), v174))
    {
      v87 = HIDWORD(v174) - v174;
      goto LABEL_46;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v86 == 2)
  {
    v89 = *(v174 + 16);
    v88 = *(v174 + 24);
    v87 = v88 - v89;
    if (__OFSUB__(v88, v89))
    {
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v87 = 0;
  }

LABEL_46:
  v90 = sub_1C0D053E8(v87, 2);
  v92 = v91;
  v186 = v84;
  v187 = v85;
  v184 = v40;
  v185 = v54;
  v182 = v90;
  v183 = v91;
  v93 = __swift_project_boxed_opaque_existential_1(&v182, v40);
  v94 = *v93;
  v95 = v93[1];
  sub_1C0CF6468(v84, v85);
  sub_1C0CF6468(v90, v92);
  sub_1C0D4268C(v94, v95, &v186);
  sub_1C0CF448C(v90, v92);
  sub_1C0CF448C(v84, v85);
  __swift_destroy_boxed_opaque_existential_1(&v182);
  v96 = v186;
  v97 = v187;
  v188 = v186;
  v189 = v187;
  v184 = v40;
  v185 = v54;
  v98 = v174;
  v99 = v178;
  v182 = v174;
  v183 = v178;
  v100 = __swift_project_boxed_opaque_existential_1(&v182, v40);
  v101 = *v100;
  v102 = v100[1];
  sub_1C0CF6468(v96, v97);
  sub_1C0CF6468(v98, v99);
  sub_1C0D4268C(v101, v102, &v188);
  sub_1C0CF448C(v96, v97);
  __swift_destroy_boxed_opaque_existential_1(&v182);
  v104 = v188;
  v103 = v189;
  v105 = v177 >> 62;
  if ((v177 >> 62) <= 1)
  {
    if (!v105)
    {
      v106 = BYTE6(v177);
      goto LABEL_56;
    }

LABEL_53:
    if (!__OFSUB__(HIDWORD(v173), v173))
    {
      v106 = HIDWORD(v173) - v173;
      goto LABEL_56;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v105 == 2)
  {
    v108 = *(v173 + 16);
    v107 = *(v173 + 24);
    v106 = v107 - v108;
    if (__OFSUB__(v107, v108))
    {
      __break(1u);
      goto LABEL_53;
    }
  }

  else
  {
    v106 = 0;
  }

LABEL_56:
  v109 = sub_1C0D053E8(v106, 2);
  v111 = v110;
  v186 = v104;
  v187 = v103;
  v184 = v40;
  v185 = v54;
  v182 = v109;
  v183 = v110;
  v112 = __swift_project_boxed_opaque_existential_1(&v182, v40);
  v113 = *v112;
  v114 = v112[1];
  sub_1C0CF6468(v104, v103);
  sub_1C0CF6468(v109, v111);
  sub_1C0D4268C(v113, v114, &v186);
  sub_1C0CF448C(v109, v111);
  sub_1C0CF448C(v104, v103);
  __swift_destroy_boxed_opaque_existential_1(&v182);
  v115 = v186;
  v116 = v187;
  v188 = v186;
  v189 = v187;
  v184 = v40;
  v185 = v54;
  v117 = v173;
  v118 = v177;
  v182 = v173;
  v183 = v177;
  v119 = __swift_project_boxed_opaque_existential_1(&v182, v40);
  v120 = *v119;
  v121 = v119[1];
  sub_1C0CF6468(v115, v116);
  sub_1C0CF6468(v117, v118);
  sub_1C0D4268C(v120, v121, &v188);
  sub_1C0CF448C(v115, v116);
  __swift_destroy_boxed_opaque_existential_1(&v182);
  if (v169)
  {
    v122 = v166;
    sub_1C0D78ABC();
    v123 = sub_1C0D78AAC();
    v125 = v124;
    (*(v167 + 8))(v122, v168);
    if (v125 >> 60 == 15)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v186 = v123;
    v187 = v125;
    v184 = v40;
    v185 = MEMORY[0x1E6969078];
    v127 = v170;
    v126 = v171;
    v182 = v170;
    v183 = v171;
    v128 = __swift_project_boxed_opaque_existential_1(&v182, v40);
    v129 = *v128;
    v130 = v128[1];
    sub_1C0D134D0(v123, v125);
    sub_1C0CF6468(v127, v126);
    sub_1C0D4268C(v129, v130, &v186);
    sub_1C0D13830(v123, v125);
    __swift_destroy_boxed_opaque_existential_1(&v182);
    v132 = v186;
    v131 = v187;
    v133 = v188;
    v134 = v189;
    v135 = v187 >> 62;
    v169 = v8;
    if ((v187 >> 62) > 1)
    {
      if (v135 != 2)
      {
        v136 = 0;
        goto LABEL_70;
      }

      v149 = *(v186 + 16);
      v148 = *(v186 + 24);
      v136 = v148 - v149;
      if (!__OFSUB__(v148, v149))
      {
        goto LABEL_70;
      }

      __break(1u);
    }

    else if (!v135)
    {
      v136 = BYTE6(v187);
LABEL_70:
      v150 = sub_1C0D053E8(v136, 2);
      v152 = v151;
      v180 = v133;
      v181 = v134;
      v184 = v40;
      v185 = MEMORY[0x1E6969078];
      v182 = v150;
      v183 = v151;
      v153 = __swift_project_boxed_opaque_existential_1(&v182, v40);
      v154 = *v153;
      v155 = v153[1];
      sub_1C0CF6468(v133, v134);
      sub_1C0CF6468(v150, v152);
      sub_1C0D4268C(v154, v155, &v180);
      sub_1C0CF448C(v150, v152);
      __swift_destroy_boxed_opaque_existential_1(&v182);
      v156 = v180;
      v157 = v181;
      v186 = v180;
      v187 = v181;
      v184 = v40;
      v185 = MEMORY[0x1E6969078];
      v182 = v132;
      v183 = v131;
      v158 = __swift_project_boxed_opaque_existential_1(&v182, v40);
      v159 = *v158;
      v160 = v158[1];
      sub_1C0CF6468(v156, v157);
      sub_1C0D4268C(v159, v160, &v186);
      sub_1C0CF448C(v156, v157);
      __swift_destroy_boxed_opaque_existential_1(&v182);
      v146 = v133;
      v147 = v134;
      goto LABEL_71;
    }

    if (!__OFSUB__(HIDWORD(v132), v132))
    {
      v136 = HIDWORD(v132) - v132;
      goto LABEL_70;
    }

    goto LABEL_77;
  }

  v137 = v166;
  sub_1C0D78ABC();
  v138 = sub_1C0D78AAC();
  v140 = v139;
  (*(v167 + 8))(v137, v168);
  if (v140 >> 60 != 15)
  {
    v141 = v188;
    v142 = v189;
    v186 = v188;
    v187 = v189;
    v184 = v40;
    v185 = MEMORY[0x1E6969078];
    v182 = v138;
    v183 = v140;
    v143 = __swift_project_boxed_opaque_existential_1(&v182, v40);
    v144 = *v143;
    v145 = v143[1];
    sub_1C0CF6468(v141, v142);
    sub_1C0D4268C(v144, v145, &v186);
    __swift_destroy_boxed_opaque_existential_1(&v182);
    v146 = v141;
    v147 = v142;
LABEL_71:
    sub_1C0CF448C(v146, v147);
    v161 = v186;
    v162 = v187;
    v163 = v165;
    sub_1C0D0E898(v186, v187, v170, v171);
    sub_1C0CF448C(v173, v177);
    sub_1C0CF448C(v174, v178);
    sub_1C0CF448C(v175, v179);
    sub_1C0CF448C(v176, v190);
    sub_1C0CF448C(v163, v172);
    sub_1C0CF448C(v161, v162);
    return;
  }

LABEL_84:
  __break(1u);
}

_BYTE *sub_1C0D20850@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1C0D77CE4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1C0D77DA4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1C0D77E20(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1C0D208E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_1C0D789FC();
      sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
      return sub_1C0D7861C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1C0D20AC4(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_1C0D20AC4(v5, v6);
  }

  sub_1C0D789FC();
  sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
  return sub_1C0D7861C();
}

uint64_t sub_1C0D20AC4(uint64_t a1, uint64_t a2)
{
  result = sub_1C0D7812C();
  if (!result || (result = sub_1C0D7815C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C0D7814C();
      sub_1C0D789FC();
      sub_1C0D20BF8(&qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628]);
      return sub_1C0D7861C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0D20BA4()
{
  result = qword_1EBE6D6E0[0];
  if (!qword_1EBE6D6E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE6D6E0);
  }

  return result;
}

uint64_t sub_1C0D20BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1C0D20CA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0D20CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1C0D20D64(uint64_t a1, int a2)
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

uint64_t sub_1C0D20DAC(uint64_t result, int a2, int a3)
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

uint64_t sub_1C0D20DFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for Proof(319, v2, v1, v4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0D20EFC(int *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v6 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v11 + v12;
  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = v11 + v16;
  v18 = *(*(v8 - 8) + 64) + 7;
  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v19 = (v18 & 0xFFFFFFFFFFFFFFF8) + ((v17 + ((v15 + ((v15 + (v15 & ~v12)) & ~v12)) & ~v12)) & ~v16) + 8;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v14 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v14 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 >= v13)
  {
    v30 = *(v6 + 48);

    return v30(a1, v7, AssociatedTypeWitness);
  }

  else
  {
    v28 = (v17 + ((v15 + ((v15 + ((a1 + v15) & ~v12)) & ~v12)) & ~v12)) & ~v16;
    if (v10 < 0x7FFFFFFF)
    {
      v31 = *((v18 + v28) & 0xFFFFFFFFFFFFFFF8);
      if (v31 >= 0xFFFFFFFF)
      {
        LODWORD(v31) = -1;
      }

      return (v31 + 1);
    }

    else
    {
      v29 = *(v9 + 48);

      return v29(v28);
    }
  }
}

void sub_1C0D2125C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 64);
  v14 = *(v8 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (v15 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v15;
  }

  v17 = v13 + v14;
  v18 = (v13 + v14 + ((v13 + v14 + ((v13 + v14) & ~v14)) & ~v14)) & ~v14;
  v19 = *(v11 + 80) & 0xF8 | 7;
  v20 = v13 + v19;
  v21 = *(*(v10 - 8) + 64) + 7;
  v22 = (v21 & 0xFFFFFFFFFFFFFFF8) + 8;
  v23 = ((v20 + v18) & ~v19) + v22;
  if (v16 >= a3)
  {
    v26 = 0;
    v27 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v23)
    {
      v24 = 2;
    }

    else
    {
      v24 = a3 - v16 + 1;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v26 > 1)
      {
        if (v26 != 2)
        {
          *(a1 + v23) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v23) = 0;
      }

      else if (v26)
      {
        *(a1 + v23) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v9 >= v15)
        {
          v32 = *(v8 + 56);

          v32(a1, a2, v9, AssociatedTypeWitness);
        }

        else
        {
          v30 = ((v20 + ((v17 + ((v17 + ((a1 + v17) & ~v14)) & ~v14)) & ~v14)) & ~v19);
          if (v15 >= a2)
          {
            if (v12 < 0x7FFFFFFF)
            {
              if ((a2 & 0x80000000) != 0)
              {
                v34 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v34 = (a2 - 1);
              }

              *((v30 + v21) & 0xFFFFFFFFFFFFFFF8) = v34;
            }

            else
            {
              v33 = *(v11 + 56);

              v33(v30, a2);
            }
          }

          else if ((v21 & 0xFFFFFFF8) != 0xFFFFFFF8)
          {
            v31 = ~v15 + a2;
            bzero(v30, v22);
            *v30 = v31;
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (v23)
  {
    v28 = 1;
  }

  else
  {
    v28 = v27;
  }

  if (v23)
  {
    v29 = ~v16 + a2;
    bzero(a1, v23);
    *a1 = v29;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      *(a1 + v23) = v28;
    }

    else
    {
      *(a1 + v23) = v28;
    }
  }

  else if (v26)
  {
    *(a1 + v23) = v28;
  }
}

uint64_t CKSecretSharing.SecretSharingError.SecretSharingErrorType.hashValue.getter()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

unint64_t sub_1C0D216D4()
{
  result = qword_1EBE6D768;
  if (!qword_1EBE6D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6D768);
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

uint64_t sub_1C0D21744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0D2178C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s18SecretSharingErrorV22SecretSharingErrorTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18SecretSharingErrorV22SecretSharingErrorTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1C0D21940(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *(v4 + 24);
  sub_1C0D78BFC();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1C0CF49E8(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1C0CF49E8((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[16 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  *(v4 + 24) = v8;
  v12 = a3;
  MEMORY[0x1C68E3BD0]();
  if (*(*(v4 + 16) + 16) >= *(*(v4 + 16) + 24) >> 1)
  {
    sub_1C0D78C0C();
  }

  sub_1C0D78C3C();
  return *(*(v4 + 16) + 16) - 1;
}

id sub_1C0D21A5C()
{
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(v0 + 16) + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v11[0] = v1;
    v11[1] = v0;
    v12 = MEMORY[0x1E69E7CC0];
    sub_1C0D78E3C();
    sub_1C0D7884C();
    sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
    while (1)
    {
      sub_1C0D786EC();
      v8 = sub_1C0D786BC();
      (*(v3 + 8))(v5, v2);
      result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
      if (!result)
      {
        break;
      }

      sub_1C0D78E0C();
      sub_1C0D78E4C();
      sub_1C0D78E5C();
      sub_1C0D78E1C();
      if (!--v6)
      {
        v7 = v12;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v10 = sub_1C0D2DEAC(v7);

    return v10;
  }

  return result;
}

uint64_t sub_1C0D21C50(unint64_t a1, uint64_t a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = v3[3];
  v6 = v3[4];
  v7 = *(v5 + 16);
  if (v7 != *(v6 + 16))
  {
    sub_1C0D30124();
    swift_allocError();
    *v51 = 2;
LABEL_33:
    swift_willThrow();
    return v2 & 1;
  }

  v8 = MEMORY[0x1E69E7CC0];
  v77 = MEMORY[0x1E69E7CC0];
  v9 = v3[5];
  v10 = *(v9 + 16);
  if (!v10)
  {
    v44 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v2 = a1;
    sub_1C0D2EDD0(*v3, v3[1], v5, v44);
    if (v4)
    {
    }

    else
    {
      v55 = v54;

      LOBYTE(v2) = [v55 isEqual_];
    }

    return v2 & 1;
  }

  v11 = a2;
  v12 = 0;
  v13 = v9 + 32;
  v71 = a2 + 32;
  v72 = v5 + 32;
  v68 = v6 + 32;
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v15 = (v13 + 16 * v12);
    v16 = *v15;
    if (*v15 >= v7)
    {
LABEL_32:

      sub_1C0D30124();
      swift_allocError();
      *v52 = 0;
      goto LABEL_33;
    }

    v17 = v15[1];
    v18 = v12 + 1;
    v19 = *(v17 + 16) + 1;
    v20 = 40;
    while (--v19)
    {
      v21 = *(v17 + v20);
      v20 += 16;
      if (v21 >= v7)
      {
        goto LABEL_32;
      }
    }

    v59 = v13;
    v60 = v18;
    v61 = v10;
    v62 = v14;
    v64 = v5;
    v65 = v3;
    v67 = v4;
    v58 = v16;
    v22 = *(v72 + 8 * v16);
    v23 = a1;
    sub_1C0D78BFC();
    v24 = v22;
    v66 = v23;
    v25 = sub_1C0D13834(v23, v24);

    v26 = *(v17 + 16);
    v63 = v11;
    if (v26)
    {
      break;
    }

    v35 = v8;
LABEL_18:
    v36 = *(v35 + 16);
    v37 = v25;
    v70 = v37;
    if (v36)
    {
      v38 = 0;
      v39 = v37;
      while (v38 < *(v35 + 16))
      {
        v40 = *(v35 + 32 + 8 * v38);
        LODWORD(v76) = 0;
        v41 = v40;
        v42 = [v39 add:v41 corecryptoError:&v76];
        if (!v42)
        {
          sub_1C0D78DAC();
          MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
          v75 = v76;
          v56 = sub_1C0D78F2C();
          MEMORY[0x1C68E3B00](v56);

          goto LABEL_45;
        }

        v37 = v42;

        ++v38;
        v39 = v37;
        if (v36 == v38)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

LABEL_23:

    v43 = v37;
    MEMORY[0x1C68E3BD0]();
    if (*(v77 + 16) >= *(v77 + 24) >> 1)
    {
      sub_1C0D78C0C();
    }

    sub_1C0D78C3C();
    v44 = v77;
    v45 = (v68 + 16 * v58);
    v73 = *v45;
    v74 = v45[1];
    swift_bridgeObjectRetain_n();
    MEMORY[0x1C68E3B00](0x646E696C622DLL, 0xE600000000000000);

    v46 = v62;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_1C0CF49E8(0, *(v62 + 2) + 1, 1, v62);
    }

    v11 = v63;
    v48 = *(v46 + 2);
    v47 = *(v46 + 3);
    v49 = v46;
    v2 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v49 = sub_1C0CF49E8((v47 > 1), v48 + 1, 1, v49);
    }

    *(v49 + 2) = v2;
    v14 = v49;
    v50 = &v49[16 * v48];
    *(v50 + 4) = v73;
    *(v50 + 5) = v74;
    v12 = v60;
    v10 = v61;
    a1 = v66;
    v4 = v67;
    v5 = v64;
    v3 = v65;
    v8 = MEMORY[0x1E69E7CC0];
    v13 = v59;
    if (v60 == v61)
    {
      goto LABEL_36;
    }
  }

  v69 = v25;
  v76 = v8;
  sub_1C0D78E3C();
  v27 = 0;
  v28 = *(v11 + 16);
  v29 = (v17 + 40);
  while (1)
  {
    if (v27 >= *(v17 + 16))
    {
      goto LABEL_40;
    }

    v30 = *(v29 - 1);
    if (v30 >= v28)
    {
      goto LABEL_41;
    }

    if (*v29 >= v7)
    {
      goto LABEL_42;
    }

    v31 = *(v71 + 8 * v30);
    v32 = *(v72 + 8 * *v29);
    v75 = 0;
    v33 = v31;
    v34 = v32;
    if (![v34 multiply:v33 corecryptoError:&v75])
    {
      break;
    }

    ++v27;
    sub_1C0D78E0C();
    sub_1C0D78E4C();
    sub_1C0D78E5C();
    sub_1C0D78E1C();
    v29 += 2;
    if (v26 == v27)
    {

      v35 = v76;
      v25 = v69;
      goto LABEL_18;
    }
  }

  sub_1C0D78DAC();
  MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
  v57 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v57);

LABEL_45:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

unint64_t sub_1C0D22268(unint64_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      v4 = *(v1 + 8);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v6 = *(v3 + 16);
          v7 = *(v3 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }
      }

      else
      {
        if (v5)
        {
          v6 = v3;
        }

        else
        {
          v6 = 0;
        }

        if (v5)
        {
          v7 = v3 >> 32;
        }

        else
        {
          v7 = BYTE6(v4);
        }
      }

      result = sub_1C0D428BC(v6, v7, *v1, *(v1 + 8));
      if (result < v2)
      {
        goto LABEL_26;
      }

      v8 = sub_1C0D42858(v6, v2, v3, v4);
      v9 = *v1;
      v10 = *(v1 + 8);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v9 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v9 >> 32;
      }

      else
      {
        v12 = BYTE6(v10);
      }

      sub_1C0CF6468(*v1, *(v1 + 8));
      result = sub_1C0CF448C(v9, v10);
      if (v12 >= v8)
      {
        v13 = sub_1C0D782DC();
        v15 = v14;
        result = sub_1C0CF448C(v9, v10);
        *v1 = v13;
        *(v1 + 8) = v15;
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

id sub_1C0D223A4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, id a12, void *a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  v357 = xmmword_1C0D7BAB0;
  v23 = [a1 serializedPublicKey_];
  if (!v23)
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v24 = v23;
  v25 = sub_1C0D7832C();
  v27 = v26;

  v28 = v27;
  v29 = v27 >> 62;
  v358 = a2;
  if ((v27 >> 62) <= 1)
  {
    if (!v29)
    {
      sub_1C0CF448C(v25, v27);
      v30 = BYTE6(v27);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v29 != 2)
  {
    sub_1C0CF448C(v25, v27);
    v30 = 0;
    goto LABEL_12;
  }

  v32 = *(v25 + 16);
  v31 = *(v25 + 24);
  sub_1C0CF448C(v25, v28);
  v30 = v31 - v32;
  if (__OFSUB__(v31, v32))
  {
    __break(1u);
LABEL_9:
    sub_1C0CF448C(v25, v28);
    if (__OFSUB__(HIDWORD(v25), v25))
    {
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v30 = HIDWORD(v25) - v25;
  }

LABEL_12:
  v347 = a7;
  v348 = a6;
  v346 = a8;
  v33 = sub_1C0D053E8(v30, 2);
  v35 = v34;
  v36 = [a1 serializedPublicKey_];
  if (!v36)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v37 = v36;
  v38 = sub_1C0D7832C();
  v40 = v39;

  v355 = v33;
  v356 = v35;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v38;
  v352[1] = v40;
  v41 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v42 = *v41;
  v43 = v41[1];
  sub_1C0CF6468(v33, v35);
  sub_1C0CF6468(v38, v40);
  sub_1C0D4268C(v42, v43, &v355);
  sub_1C0CF448C(v38, v40);
  sub_1C0CF448C(v33, v35);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v44 = v355;
  v45 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v44, v45);
  v46 = v358;
  v47 = [v358 serializedPublicKey_];
  if (!v47)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v48 = v47;
  v49 = sub_1C0D7832C();
  v51 = v50;

  v52 = v51 >> 62;
  if ((v51 >> 62) <= 1)
  {
    if (!v52)
    {
      sub_1C0CF448C(v49, v51);
      v53 = BYTE6(v51);
      goto LABEL_24;
    }

LABEL_21:
    sub_1C0CF448C(v49, v51);
    if (!__OFSUB__(HIDWORD(v49), v49))
    {
      v53 = HIDWORD(v49) - v49;
      goto LABEL_24;
    }

LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v52 == 2)
  {
    v55 = *(v49 + 16);
    v54 = *(v49 + 24);
    sub_1C0CF448C(v49, v51);
    v53 = v54 - v55;
    if (__OFSUB__(v54, v55))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    sub_1C0CF448C(v49, v51);
    v53 = 0;
  }

LABEL_24:
  v56 = sub_1C0D053E8(v53, 2);
  v58 = v57;
  v59 = [v46 serializedPublicKey_];
  if (!v59)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v60 = v59;
  v61 = sub_1C0D7832C();
  v63 = v62;

  v355 = v56;
  v356 = v58;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v61;
  v352[1] = v63;
  v64 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v65 = *v64;
  v66 = v64[1];
  sub_1C0CF6468(v56, v58);
  sub_1C0CF6468(v61, v63);
  sub_1C0D4268C(v65, v66, &v355);
  sub_1C0CF448C(v61, v63);
  sub_1C0CF448C(v56, v58);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v67 = v355;
  v68 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v67, v68);
  v69 = [a3 serializedPublicKey_];
  if (!v69)
  {
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v70 = v69;
  v71 = sub_1C0D7832C();
  v73 = v72;

  v74 = v73 >> 62;
  if ((v73 >> 62) <= 1)
  {
    if (!v74)
    {
      sub_1C0CF448C(v71, v73);
      v75 = BYTE6(v73);
      goto LABEL_36;
    }

LABEL_33:
    sub_1C0CF448C(v71, v73);
    if (!__OFSUB__(HIDWORD(v71), v71))
    {
      v75 = HIDWORD(v71) - v71;
      goto LABEL_36;
    }

LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  if (v74 == 2)
  {
    v77 = *(v71 + 16);
    v76 = *(v71 + 24);
    sub_1C0CF448C(v71, v73);
    v75 = v76 - v77;
    if (__OFSUB__(v76, v77))
    {
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
    sub_1C0CF448C(v71, v73);
    v75 = 0;
  }

LABEL_36:
  v78 = sub_1C0D053E8(v75, 2);
  v80 = v79;
  v81 = [a3 0x1E81283FCLL];
  if (!v81)
  {
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  v82 = v81;
  v83 = sub_1C0D7832C();
  v85 = v84;

  v355 = v78;
  v356 = v80;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v83;
  v352[1] = v85;
  v86 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v87 = *v86;
  v88 = v86[1];
  sub_1C0CF6468(v78, v80);
  sub_1C0CF6468(v83, v85);
  sub_1C0D4268C(v87, v88, &v355);
  sub_1C0CF448C(v83, v85);
  sub_1C0CF448C(v78, v80);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v89 = v355;
  v90 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v89, v90);
  v91 = [a4 0x1E81283FCLL];
  if (!v91)
  {
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v92 = v91;
  v93 = sub_1C0D7832C();
  v95 = v94;

  v96 = v95 >> 62;
  if ((v95 >> 62) <= 1)
  {
    if (!v96)
    {
      sub_1C0CF448C(v93, v95);
      v97 = BYTE6(v95);
      goto LABEL_48;
    }

LABEL_45:
    sub_1C0CF448C(v93, v95);
    if (!__OFSUB__(HIDWORD(v93), v93))
    {
      v97 = HIDWORD(v93) - v93;
      goto LABEL_48;
    }

LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v96 == 2)
  {
    v99 = *(v93 + 16);
    v98 = *(v93 + 24);
    sub_1C0CF448C(v93, v95);
    v97 = v98 - v99;
    if (__OFSUB__(v98, v99))
    {
      __break(1u);
      goto LABEL_45;
    }
  }

  else
  {
    sub_1C0CF448C(v93, v95);
    v97 = 0;
  }

LABEL_48:
  v100 = sub_1C0D053E8(v97, 2);
  v102 = v101;
  v103 = [a4 0x1E81283FCLL];
  if (!v103)
  {
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  v104 = v103;
  v105 = sub_1C0D7832C();
  v107 = v106;

  v355 = v100;
  v356 = v102;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v105;
  v352[1] = v107;
  v108 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v109 = *v108;
  v110 = v108[1];
  sub_1C0CF6468(v100, v102);
  sub_1C0CF6468(v105, v107);
  sub_1C0D4268C(v109, v110, &v355);
  sub_1C0CF448C(v105, v107);
  sub_1C0CF448C(v100, v102);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v111 = v355;
  v112 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v111, v112);
  v113 = [a5 0x1E81283FCLL];
  if (!v113)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v114 = v113;
  v115 = sub_1C0D7832C();
  v117 = v116;

  v118 = v117 >> 62;
  if ((v117 >> 62) <= 1)
  {
    if (!v118)
    {
      sub_1C0CF448C(v115, v117);
      v119 = BYTE6(v117);
      goto LABEL_60;
    }

LABEL_57:
    sub_1C0CF448C(v115, v117);
    if (!__OFSUB__(HIDWORD(v115), v115))
    {
      v119 = HIDWORD(v115) - v115;
      goto LABEL_60;
    }

LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  if (v118 == 2)
  {
    v121 = *(v115 + 16);
    v120 = *(v115 + 24);
    sub_1C0CF448C(v115, v117);
    v119 = v120 - v121;
    if (__OFSUB__(v120, v121))
    {
      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
    sub_1C0CF448C(v115, v117);
    v119 = 0;
  }

LABEL_60:
  v122 = sub_1C0D053E8(v119, 2);
  v124 = v123;
  v125 = [a5 0x1E81283FCLL];
  if (!v125)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v126 = v125;
  v127 = sub_1C0D7832C();
  v129 = v128;

  v355 = v122;
  v356 = v124;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v127;
  v352[1] = v129;
  v130 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v131 = *v130;
  v132 = v130[1];
  sub_1C0CF6468(v122, v124);
  sub_1C0CF6468(v127, v129);
  sub_1C0D4268C(v131, v132, &v355);
  sub_1C0CF448C(v127, v129);
  sub_1C0CF448C(v122, v124);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v133 = v355;
  v134 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v133, v134);
  v135 = [v348 0x1E81283FCLL];
  if (!v135)
  {
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  v136 = v135;
  v137 = sub_1C0D7832C();
  v139 = v138;

  v140 = v139 >> 62;
  if ((v139 >> 62) <= 1)
  {
    if (!v140)
    {
      sub_1C0CF448C(v137, v139);
      v141 = BYTE6(v139);
      goto LABEL_72;
    }

LABEL_69:
    sub_1C0CF448C(v137, v139);
    if (!__OFSUB__(HIDWORD(v137), v137))
    {
      v141 = HIDWORD(v137) - v137;
      goto LABEL_72;
    }

LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  if (v140 == 2)
  {
    v143 = *(v137 + 16);
    v142 = *(v137 + 24);
    sub_1C0CF448C(v137, v139);
    v141 = v142 - v143;
    if (__OFSUB__(v142, v143))
    {
      __break(1u);
      goto LABEL_69;
    }
  }

  else
  {
    sub_1C0CF448C(v137, v139);
    v141 = 0;
  }

LABEL_72:
  v144 = sub_1C0D053E8(v141, 2);
  v146 = v145;
  v147 = [v348 0x1E81283FCLL];
  if (!v147)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  v148 = v147;
  v149 = sub_1C0D7832C();
  v151 = v150;

  v355 = v144;
  v356 = v146;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v149;
  v352[1] = v151;
  v152 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v153 = *v152;
  v154 = v152[1];
  sub_1C0CF6468(v144, v146);
  sub_1C0CF6468(v149, v151);
  sub_1C0D4268C(v153, v154, &v355);
  sub_1C0CF448C(v149, v151);
  sub_1C0CF448C(v144, v146);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v155 = v355;
  v156 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v155, v156);
  v157 = [v347 0x1E81283FCLL];
  if (!v157)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v158 = v157;
  v159 = sub_1C0D7832C();
  v161 = v160;

  v162 = v161 >> 62;
  if ((v161 >> 62) <= 1)
  {
    if (!v162)
    {
      sub_1C0CF448C(v159, v161);
      v163 = BYTE6(v161);
      goto LABEL_84;
    }

LABEL_81:
    sub_1C0CF448C(v159, v161);
    if (!__OFSUB__(HIDWORD(v159), v159))
    {
      v163 = HIDWORD(v159) - v159;
      goto LABEL_84;
    }

LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v162 == 2)
  {
    v165 = *(v159 + 16);
    v164 = *(v159 + 24);
    sub_1C0CF448C(v159, v161);
    v163 = v164 - v165;
    if (__OFSUB__(v164, v165))
    {
      __break(1u);
      goto LABEL_81;
    }
  }

  else
  {
    sub_1C0CF448C(v159, v161);
    v163 = 0;
  }

LABEL_84:
  v166 = sub_1C0D053E8(v163, 2);
  v168 = v167;
  v169 = [v347 0x1E81283FCLL];
  if (!v169)
  {
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  v170 = v169;
  v171 = sub_1C0D7832C();
  v173 = v172;

  v355 = v166;
  v356 = v168;
  v353 = MEMORY[0x1E6969080];
  v354 = MEMORY[0x1E6969078];
  v352[0] = v171;
  v352[1] = v173;
  v174 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
  v175 = *v174;
  v176 = v174[1];
  sub_1C0CF6468(v166, v168);
  sub_1C0CF6468(v171, v173);
  sub_1C0D4268C(v175, v176, &v355);
  sub_1C0CF448C(v171, v173);
  sub_1C0CF448C(v166, v168);
  __swift_destroy_boxed_opaque_existential_1(v352);
  v177 = v355;
  v178 = v356;
  sub_1C0D7834C();
  sub_1C0CF448C(v177, v178);
  v179 = [v346 serializedBigEndianScalar];
  if (!v179)
  {
    goto LABEL_213;
  }

  v180 = v179;
  v181 = sub_1C0D7832C();
  v183 = v182;

  v184 = v183;
  v185 = v183 >> 62;
  if ((v183 >> 62) <= 1)
  {
    if (!v185)
    {
      sub_1C0CF448C(v181, v183);
      v186 = BYTE6(v183);
      goto LABEL_96;
    }

LABEL_93:
    sub_1C0CF448C(v181, v184);
    if (!__OFSUB__(HIDWORD(v181), v181))
    {
      v186 = HIDWORD(v181) - v181;
      goto LABEL_96;
    }

LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  if (v185 == 2)
  {
    v188 = *(v181 + 16);
    v187 = *(v181 + 24);
    sub_1C0CF448C(v181, v184);
    v186 = v187 - v188;
    if (__OFSUB__(v187, v188))
    {
      __break(1u);
      goto LABEL_93;
    }
  }

  else
  {
    sub_1C0CF448C(v181, v183);
    v186 = 0;
  }

LABEL_96:
  v189 = sub_1C0D053E8(v186, 2);
  v191 = v190;
  v192 = [v346 serializedBigEndianScalar];
  if (v192)
  {
    v193 = v192;
    v194 = sub_1C0D7832C();
    v196 = v195;

    v355 = v189;
    v356 = v191;
    v353 = MEMORY[0x1E6969080];
    v354 = MEMORY[0x1E6969078];
    v352[0] = v194;
    v352[1] = v196;
    v197 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
    v198 = *v197;
    v199 = v197[1];
    sub_1C0CF6468(v189, v191);
    sub_1C0D4268C(v198, v199, &v355);
    sub_1C0CF448C(v189, v191);
    __swift_destroy_boxed_opaque_existential_1(v352);
    v200 = v355;
    v201 = v356;
    sub_1C0D7834C();
    sub_1C0CF448C(v200, v201);
    v202 = [a9 0x1E81283FCLL];
    if (!v202)
    {
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    v203 = v202;
    v204 = sub_1C0D7832C();
    v206 = v205;

    v207 = v206 >> 62;
    if ((v206 >> 62) <= 1)
    {
      if (!v207)
      {
        sub_1C0CF448C(v204, v206);
        v208 = BYTE6(v206);
        goto LABEL_108;
      }

LABEL_105:
      sub_1C0CF448C(v204, v206);
      if (!__OFSUB__(HIDWORD(v204), v204))
      {
        v208 = HIDWORD(v204) - v204;
        goto LABEL_108;
      }

LABEL_182:
      __break(1u);
      goto LABEL_183;
    }

    if (v207 == 2)
    {
      v210 = *(v204 + 16);
      v209 = *(v204 + 24);
      sub_1C0CF448C(v204, v206);
      v208 = v209 - v210;
      if (__OFSUB__(v209, v210))
      {
        __break(1u);
        goto LABEL_105;
      }
    }

    else
    {
      sub_1C0CF448C(v204, v206);
      v208 = 0;
    }

LABEL_108:
    v211 = sub_1C0D053E8(v208, 2);
    v213 = v212;
    v214 = [a9 0x1E81283FCLL];
    if (!v214)
    {
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    v215 = v214;
    v216 = sub_1C0D7832C();
    v218 = v217;

    v355 = v211;
    v356 = v213;
    v353 = MEMORY[0x1E6969080];
    v354 = MEMORY[0x1E6969078];
    v352[0] = v216;
    v352[1] = v218;
    v219 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
    v220 = *v219;
    v221 = v219[1];
    sub_1C0CF6468(v211, v213);
    sub_1C0CF6468(v216, v218);
    sub_1C0D4268C(v220, v221, &v355);
    sub_1C0CF448C(v216, v218);
    sub_1C0CF448C(v211, v213);
    __swift_destroy_boxed_opaque_existential_1(v352);
    v222 = v355;
    v223 = v356;
    sub_1C0D7834C();
    sub_1C0CF448C(v222, v223);
    v224 = [a10 0x1E81283FCLL];
    if (!v224)
    {
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    v225 = v224;
    v226 = sub_1C0D7832C();
    v228 = v227;

    v229 = v228 >> 62;
    if ((v228 >> 62) <= 1)
    {
      if (!v229)
      {
        sub_1C0CF448C(v226, v228);
        v230 = BYTE6(v228);
        goto LABEL_120;
      }

LABEL_117:
      sub_1C0CF448C(v226, v228);
      if (!__OFSUB__(HIDWORD(v226), v226))
      {
        v230 = HIDWORD(v226) - v226;
        goto LABEL_120;
      }

LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    if (v229 == 2)
    {
      v232 = *(v226 + 16);
      v231 = *(v226 + 24);
      sub_1C0CF448C(v226, v228);
      v230 = v231 - v232;
      if (__OFSUB__(v231, v232))
      {
        __break(1u);
        goto LABEL_117;
      }
    }

    else
    {
      sub_1C0CF448C(v226, v228);
      v230 = 0;
    }

LABEL_120:
    v233 = sub_1C0D053E8(v230, 2);
    v235 = v234;
    v236 = [a10 0x1E81283FCLL];
    if (!v236)
    {
LABEL_206:
      __break(1u);
      goto LABEL_207;
    }

    v237 = v236;
    v238 = sub_1C0D7832C();
    v240 = v239;

    v355 = v233;
    v356 = v235;
    v353 = MEMORY[0x1E6969080];
    v354 = MEMORY[0x1E6969078];
    v352[0] = v238;
    v352[1] = v240;
    v241 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
    v242 = *v241;
    v243 = v241[1];
    sub_1C0CF6468(v233, v235);
    sub_1C0CF6468(v238, v240);
    sub_1C0D4268C(v242, v243, &v355);
    v358 = v17;
    sub_1C0CF448C(v238, v240);
    sub_1C0CF448C(v233, v235);
    __swift_destroy_boxed_opaque_existential_1(v352);
    v244 = v355;
    v245 = v356;
    sub_1C0D7834C();
    sub_1C0CF448C(v244, v245);
    v246 = *(a11 + 16);
    if (v246)
    {
      v247 = (a11 + 32);
      do
      {
        v248 = *v247;
        v249 = [v248 serializedPublicKey_];
        if (!v249)
        {
          goto LABEL_187;
        }

        v250 = v249;
        v251 = sub_1C0D7832C();
        v253 = v252;

        v254 = v253;
        v255 = v253 >> 62;
        if ((v253 >> 62) > 1)
        {
          if (v255 == 2)
          {
            v258 = *(v251 + 16);
            v257 = *(v251 + 24);
            sub_1C0CF448C(v251, v254);
            v256 = v257 - v258;
            if (__OFSUB__(v257, v258))
            {
              __break(1u);
LABEL_173:
              __break(1u);
              goto LABEL_174;
            }
          }

          else
          {
            sub_1C0CF448C(v251, v253);
            v256 = 0;
          }
        }

        else if (v255)
        {
          sub_1C0CF448C(v251, v253);
          if (__OFSUB__(HIDWORD(v251), v251))
          {
            goto LABEL_173;
          }

          v256 = HIDWORD(v251) - v251;
        }

        else
        {
          sub_1C0CF448C(v251, v253);
          v256 = BYTE6(v253);
        }

        v259 = sub_1C0D053E8(v256, 2);
        v261 = v260;
        v262 = [v248 serializedPublicKey_];
        if (!v262)
        {
          goto LABEL_188;
        }

        v263 = v262;
        v264 = sub_1C0D7832C();
        v266 = v265;

        v355 = v259;
        v356 = v261;
        v353 = MEMORY[0x1E6969080];
        v354 = MEMORY[0x1E6969078];
        v352[0] = v264;
        v352[1] = v266;
        v267 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
        v268 = *v267;
        v269 = v267[1];
        sub_1C0CF6468(v259, v261);
        sub_1C0CF6468(v264, v266);
        v270 = v358;
        sub_1C0D4268C(v268, v269, &v355);
        v358 = v270;
        sub_1C0CF448C(v264, v266);
        sub_1C0CF448C(v259, v261);
        __swift_destroy_boxed_opaque_existential_1(v352);
        v271 = v355;
        v272 = v356;
        sub_1C0D7834C();
        sub_1C0CF448C(v271, v272);

        ++v247;
      }

      while (--v246);
    }

    v273 = [a12 serializedPublicKey_];
    if (!v273)
    {
LABEL_207:
      __break(1u);
      goto LABEL_208;
    }

    v274 = v273;
    v275 = sub_1C0D7832C();
    v277 = v276;

    v278 = v277 >> 62;
    if ((v277 >> 62) <= 1)
    {
      if (!v278)
      {
        sub_1C0CF448C(v275, v277);
        v279 = BYTE6(v277);
        goto LABEL_147;
      }

LABEL_144:
      sub_1C0CF448C(v275, v277);
      if (!__OFSUB__(HIDWORD(v275), v275))
      {
        v279 = HIDWORD(v275) - v275;
        goto LABEL_147;
      }

LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    if (v278 == 2)
    {
      v281 = *(v275 + 16);
      v280 = *(v275 + 24);
      sub_1C0CF448C(v275, v277);
      v279 = v280 - v281;
      if (__OFSUB__(v280, v281))
      {
        __break(1u);
        goto LABEL_144;
      }
    }

    else
    {
      sub_1C0CF448C(v275, v277);
      v279 = 0;
    }

LABEL_147:
    v282 = sub_1C0D053E8(v279, 2);
    v284 = v283;
    v285 = [a12 serializedPublicKey_];
    if (!v285)
    {
LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    v286 = v285;
    v287 = sub_1C0D7832C();
    v289 = v288;

    v355 = v282;
    v356 = v284;
    v353 = MEMORY[0x1E6969080];
    v354 = MEMORY[0x1E6969078];
    v352[0] = v287;
    v352[1] = v289;
    v290 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
    v291 = *v290;
    v292 = v290[1];
    sub_1C0CF6468(v282, v284);
    sub_1C0CF6468(v287, v289);
    sub_1C0D4268C(v291, v292, &v355);
    sub_1C0CF448C(v287, v289);
    sub_1C0CF448C(v282, v284);
    __swift_destroy_boxed_opaque_existential_1(v352);
    v293 = v355;
    v294 = v356;
    sub_1C0D7834C();
    sub_1C0CF448C(v293, v294);
    v295 = [a13 0x1E81283FCLL];
    if (!v295)
    {
LABEL_209:
      __break(1u);
      goto LABEL_210;
    }

    v296 = v295;
    v297 = sub_1C0D7832C();
    v299 = v298;

    v300 = v299 >> 62;
    if ((v299 >> 62) <= 1)
    {
      if (!v300)
      {
        sub_1C0CF448C(v297, v299);
        v301 = BYTE6(v299);
        goto LABEL_159;
      }

LABEL_156:
      sub_1C0CF448C(v297, v299);
      if (!__OFSUB__(HIDWORD(v297), v297))
      {
        v301 = HIDWORD(v297) - v297;
        goto LABEL_159;
      }

LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    if (v300 == 2)
    {
      v303 = *(v297 + 16);
      v302 = *(v297 + 24);
      sub_1C0CF448C(v297, v299);
      v301 = v302 - v303;
      if (__OFSUB__(v302, v303))
      {
        __break(1u);
        goto LABEL_156;
      }
    }

    else
    {
      sub_1C0CF448C(v297, v299);
      v301 = 0;
    }

LABEL_159:
    v304 = sub_1C0D053E8(v301, 2);
    v306 = v305;
    v307 = [a13 0x1E81283FCLL];
    if (!v307)
    {
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    v308 = v307;
    v309 = sub_1C0D7832C();
    v311 = v310;

    v355 = v304;
    v356 = v306;
    v353 = MEMORY[0x1E6969080];
    v354 = MEMORY[0x1E6969078];
    v352[0] = v309;
    v352[1] = v311;
    v312 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
    v313 = *v312;
    v314 = v312[1];
    sub_1C0CF6468(v304, v306);
    sub_1C0CF6468(v309, v311);
    sub_1C0D4268C(v313, v314, &v355);
    sub_1C0CF448C(v309, v311);
    sub_1C0CF448C(v304, v306);
    __swift_destroy_boxed_opaque_existential_1(v352);
    v315 = v355;
    v316 = v356;
    sub_1C0D7834C();
    sub_1C0CF448C(v315, v316);
    v317 = [a14 0x1E81283FCLL];
    if (!v317)
    {
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    v318 = v317;
    v319 = sub_1C0D7832C();
    v321 = v320;

    v322 = v321 >> 62;
    if ((v321 >> 62) <= 1)
    {
      if (!v322)
      {
        sub_1C0CF448C(v319, v321);
        v323 = BYTE6(v321);
        goto LABEL_171;
      }

LABEL_168:
      sub_1C0CF448C(v319, v321);
      if (!__OFSUB__(HIDWORD(v319), v319))
      {
        v323 = HIDWORD(v319) - v319;
        goto LABEL_171;
      }

LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (v322 == 2)
    {
      v325 = *(v319 + 16);
      v324 = *(v319 + 24);
      sub_1C0CF448C(v319, v321);
      v323 = v324 - v325;
      if (__OFSUB__(v324, v325))
      {
        __break(1u);
        goto LABEL_168;
      }
    }

    else
    {
      sub_1C0CF448C(v319, v321);
      v323 = 0;
    }

LABEL_171:
    v326 = sub_1C0D053E8(v323, 2);
    v328 = v327;
    v329 = [a14 0x1E81283FCLL];
    if (v329)
    {
      v330 = v329;
      v358 = a17;
      v331 = sub_1C0D7832C();
      v333 = v332;

      v355 = v326;
      v356 = v328;
      v353 = MEMORY[0x1E6969080];
      v354 = MEMORY[0x1E6969078];
      v352[0] = v331;
      v352[1] = v333;
      v334 = __swift_project_boxed_opaque_existential_1(v352, MEMORY[0x1E6969080]);
      v335 = *v334;
      v336 = v334[1];
      sub_1C0CF6468(v326, v328);
      sub_1C0CF6468(v331, v333);
      sub_1C0D4268C(v335, v336, &v355);
      sub_1C0CF448C(v331, v333);
      sub_1C0CF448C(v326, v328);
      __swift_destroy_boxed_opaque_existential_1(v352);
      v337 = v355;
      v338 = v356;
      sub_1C0D7834C();
      sub_1C0CF448C(v337, v338);
      v352[0] = a15;
      v339 = sub_1C0D78F2C();
      strcpy(v352, "ATHMV1-P256-");
      BYTE5(v352[1]) = 0;
      HIWORD(v352[1]) = -5120;
      MEMORY[0x1C68E3B00](v339);

      sub_1C0D78BFC();
      MEMORY[0x1C68E3B00](45, 0xE100000000000000);

      sub_1C0D78BFC();
      MEMORY[0x1C68E3B00](a16, v358);

      sub_1C0D78BFC();
      MEMORY[0x1C68E3B00](0xD000000000000012, 0x80000001C0D80D70);

      v340 = v357;
      v341 = sub_1C0D07698(v352[0], v352[1]);
      v343 = v342;
      v344 = sub_1C0D0E630(v340, *(&v340 + 1), v341, v342);
      sub_1C0CF448C(v341, v343);
      sub_1C0CF448C(v340, *(&v340 + 1));
      return v344;
    }

    goto LABEL_212;
  }

LABEL_213:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

id sub_1C0D23BD0(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  result = [a1 multiply:a2 corecryptoError:&v4];
  if (!result)
  {
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
    v3 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v3);

    result = sub_1C0D78EBC();
    __break(1u);
  }

  return result;
}

id sub_1C0D23CF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C0D786CC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D7884C();
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v13 = sub_1C0D786BC();
  (*(v10 + 8))(v12, v9);
  v14 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  v30[0] = a3;
  v15 = sub_1C0D78F2C();
  strcpy(v30, "ATHMV1-P256-");
  BYTE5(v30[1]) = 0;
  HIWORD(v30[1]) = -5120;
  MEMORY[0x1C68E3B00](v15);

  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](45, 0xE100000000000000);

  sub_1C0D78BFC();
  MEMORY[0x1C68E3B00](a4, a5);

  v17 = v30[0];
  v16 = v30[1];
  v18 = [v14 serializedPublicKey_];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1C0D7832C();
    v22 = v21;

    strcpy(v30, "HashToGroup-");
    BYTE5(v30[1]) = 0;
    HIWORD(v30[1]) = -5120;
    MEMORY[0x1C68E3B00](v17, v16);

    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](0x6F746172656E6567, 0xEA00000000004872);

    v23 = sub_1C0D07698(v30[0], v30[1]);
    v25 = v24;
    sub_1C0D3F5F4(v20, v22, v23, v24);
    v27 = v26;
    sub_1C0CF448C(v23, v25);
    sub_1C0CF448C(v20, v22);
    *a1 = v27;
    return v14;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1C0D23FF4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v102 = *MEMORY[0x1E69E9840];
  v90 = sub_1C0D786CC();
  v93 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v10 = HIDWORD(a1) - a1;
LABEL_10:
  if (qword_1EBE6CCA8 != -1)
  {
    swift_once();
  }

  if (v10 != qword_1EBE72D80)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
    return;
  }

  v98 = MEMORY[0x1E6969080];
  v99 = MEMORY[0x1E6969078];
  v96 = a1;
  v97 = a2;
  v13 = __swift_project_boxed_opaque_existential_1(&v96, MEMORY[0x1E6969080]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v15 >> 62;
  v86 = a3;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v94, 0, 14);
      sub_1C0CF6468(a1, a2);
      v17 = v94;
      v18 = v94;
      goto LABEL_37;
    }

    v20 = *(v14 + 16);
    v21 = *(v14 + 24);
    sub_1C0CF6468(a1, a2);
    v22 = sub_1C0D7812C();
    if (v22)
    {
      v23 = sub_1C0D7815C();
      if (__OFSUB__(v20, v23))
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
      }

      v22 += v20 - v23;
    }

    if (__OFSUB__(v21, v20))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v24 = sub_1C0D7814C();
    if (v24 >= v21 - v20)
    {
      v25 = v21 - v20;
    }

    else
    {
      v25 = v24;
    }
  }

  else
  {
    if (!v16)
    {
      v94[0] = v14;
      LOWORD(v94[1]) = v15;
      BYTE2(v94[1]) = BYTE2(v15);
      BYTE3(v94[1]) = BYTE3(v15);
      BYTE4(v94[1]) = BYTE4(v15);
      BYTE5(v94[1]) = BYTE5(v15);
      sub_1C0CF6468(a1, a2);
      v17 = v94;
      v18 = v94 + BYTE6(v15);
      goto LABEL_37;
    }

    v26 = v14;
    v27 = v14 >> 32;
    v28 = v27 - v26;
    if (v27 < v26)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    sub_1C0CF6468(a1, a2);
    v22 = sub_1C0D7812C();
    if (v22)
    {
      v29 = sub_1C0D7815C();
      if (__OFSUB__(v26, v29))
      {
        goto LABEL_56;
      }

      v22 += v26 - v29;
    }

    v30 = sub_1C0D7814C();
    if (v30 >= v28)
    {
      v25 = v28;
    }

    else
    {
      v25 = v30;
    }
  }

  v31 = (v25 + v22);
  if (v22)
  {
    v18 = v31;
  }

  else
  {
    v18 = 0;
  }

  v17 = v22;
LABEL_37:
  sub_1C0D20850(v17, v18, v95);
  v32 = v95[0];
  v33 = v95[1];
  __swift_destroy_boxed_opaque_existential_1(&v96);
  v100 = v32;
  v101 = v33;
  v34 = objc_opt_self();
  sub_1C0D7884C();
  v92 = sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v35 = sub_1C0D786BC();
  v36 = v93 + 8;
  v37 = v90;
  v91 = *(v93 + 8);
  v91(v8, v90);
  v89 = v34;
  v38 = [v34 compressedx962PointByteCountForCurveParameters_];
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v39 = v38;
  v87 = v3;
  v40 = v100;
  v41 = v101;
  sub_1C0CF6468(v100, v101);
  sub_1C0D01560(v39, v40, v41, &v96);
  v43 = v96;
  v42 = v97;
  sub_1C0D22268(v39);
  LODWORD(v96) = 0;
  sub_1C0CF6468(v43, v42);
  sub_1C0D786EC();
  v44 = sub_1C0D786BC();
  v91(v8, v37);
  v45 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v46 = v36;
  v47 = sub_1C0D7830C();
  v48 = [v45 initFromPublicKeyBytes:v47 inGroup:v44 compressed:1 corecryptoError:&v96];

  sub_1C0CF448C(v43, v42);
  if (!v48)
  {
    v77 = v96;
    sub_1C0CF8DE0();
    swift_allocError();
    *v78 = v77;
    *(v78 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v43, v42);
    sub_1C0CF448C(v100, v101);
    return;
  }

  v88 = v48;
  sub_1C0CF448C(v43, v42);
  sub_1C0D786EC();
  v49 = sub_1C0D786BC();
  v91(v8, v37);
  v50 = [v89 compressedx962PointByteCountForCurveParameters_];
  if ((v50 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

  v51 = v50;
  v52 = v100;
  v53 = v101;
  sub_1C0CF6468(v100, v101);
  sub_1C0D01560(v51, v52, v53, &v96);
  v54 = v96;
  v55 = v97;
  sub_1C0D22268(v51);
  LODWORD(v96) = 0;
  sub_1C0CF6468(v54, v55);
  sub_1C0D786EC();
  v56 = sub_1C0D786BC();
  v91(v8, v37);
  v57 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v58 = sub_1C0D7830C();
  v93 = v46;
  v59 = v58;
  v60 = [v57 initFromPublicKeyBytes:v58 inGroup:v56 compressed:1 corecryptoError:&v96];

  sub_1C0CF448C(v54, v55);
  if (!v60)
  {
    v79 = v96;
    sub_1C0CF8DE0();
    swift_allocError();
    *v80 = v79;
    *(v80 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v54, v55);
    sub_1C0CF448C(v100, v101);

    return;
  }

  sub_1C0CF448C(v54, v55);
  sub_1C0D786EC();
  v61 = sub_1C0D786BC();
  v91(v8, v37);
  v62 = [v89 compressedx962PointByteCountForCurveParameters_];
  if ((v62 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  v63 = v62;
  v64 = v100;
  v65 = v101;
  sub_1C0CF6468(v100, v101);
  sub_1C0D01560(v63, v64, v65, &v96);
  v66 = v96;
  v67 = v97;
  sub_1C0D22268(v63);
  LODWORD(v96) = 0;
  sub_1C0CF6468(v66, v67);
  sub_1C0D786EC();
  v68 = sub_1C0D786BC();
  v91(v8, v37);
  v69 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v70 = sub_1C0D7830C();
  v71 = [v69 initFromPublicKeyBytes:v70 inGroup:v68 compressed:1 corecryptoError:&v96];

  sub_1C0CF448C(v66, v67);
  if (v71)
  {
    sub_1C0CF448C(v66, v67);
    v72 = v100;
    v73 = v101;
    sub_1C0CF6468(v100, v101);
    v74 = v87;
    v75 = sub_1C0D2C610(v72, v73);
    if (v74)
    {
      sub_1C0CF448C(v72, v73);

      sub_1C0CF448C(v72, v73);
    }

    else
    {
      v83 = v75;
      v84 = v76;
      sub_1C0CF448C(v72, v73);
      sub_1C0CF448C(v72, v73);
      v85 = v86;
      *v86 = v60;
      v85[1] = v71;
      v85[2] = v88;
      v85[3] = v83;
      v85[4] = v84;
    }
  }

  else
  {
    v81 = v96;
    sub_1C0CF8DE0();
    swift_allocError();
    *v82 = v81;
    *(v82 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v66, v67);
    sub_1C0CF448C(v100, v101);
  }
}

uint64_t sub_1C0D24920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[3];
  v40 = v5[2];
  v31 = v5[4];
  v32 = v12;
  if ([v10 isEqual_] & 1) != 0 || objc_msgSend(v10, sel_isEqual_, a2) || (v5 = sub_1C0D1388C(v10, v10), v13 = objc_msgSend(v10, sel_isEqual_, v5), v5, (v13) || (objc_msgSend(v11, sel_isEqual_, a1) & 1) != 0 || (objc_msgSend(v11, sel_isEqual_, a2) & 1) != 0 || (v14 = sub_1C0D1388C(v11, v11), LOBYTE(v5) = objc_msgSend(v11, sel_isEqual_, v14), v14, (v5) || (objc_msgSend(v40, sel_isEqual_, a1) & 1) != 0 || (v15 = sub_1C0D1388C(v40, v40), LOBYTE(v5) = objc_msgSend(v40, sel_isEqual_, v15), v15, (v5))
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v16 = 2;
    swift_willThrow();
  }

  else
  {
    v18 = sub_1C0D78F2C();
    strcpy(v34, "ATHMV1-P256-");
    BYTE5(v34[1]) = 0;
    HIWORD(v34[1]) = -5120;
    MEMORY[0x1C68E3B00](v18);

    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](45, 0xE100000000000000);

    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](a4, a5);

    sub_1C0D78BFC();
    MEMORY[0x1C68E3B00](0x696D6D6F4379654BLL, 0xEE0073746E656D74);

    v36 = MEMORY[0x1E69E7CC0];
    v37 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    v19 = sub_1C0CF49E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1C0CF49E8((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v22 = &v19[16 * v21];
    *(v22 + 4) = 122;
    *(v22 + 5) = 0xE100000000000000;
    v35 = v19;
    v23 = sub_1C0D2EC40(0x6F746172656E6567, 0xEA00000000004772, a1, v34);
    v24 = sub_1C0D2EC40(90, 0xE100000000000000, v40, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D4D8, &qword_1C0D7C030);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1C0D7B690;
    *(v25 + 32) = v21;
    *(v25 + 40) = v23;
    v26 = v38;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1C0CF4AF4(0, v26[2] + 1, 1, v26);
    }

    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      v26 = sub_1C0CF4AF4((v27 > 1), v28 + 1, 1, v26);
    }

    v26[2] = v28 + 1;
    v29 = &v26[2 * v28];
    v29[4] = v24;
    v29[5] = v25;
    v39[0] = v34[0];
    v39[1] = v34[1];
    v39[2] = v35;
    v39[3] = v36;
    v39[4] = v37;
    v39[5] = v26;
    v5 = v39;
    v30 = sub_1C0D21C50(v32, v31);
    if (!v33)
    {
      LOBYTE(v5) = v30;
    }
  }

  return v5 & 1;
}

uint64_t sub_1C0D24E1C(_BYTE *a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = sub_1C0D789EC();
  v37[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C0D7865C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1E6969080];
  v42 = MEMORY[0x1E6969078];
  v39 = a1;
  v40 = a2;
  v11 = __swift_project_boxed_opaque_existential_1(&v39, MEMORY[0x1E6969080]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (!v14)
    {
      v38[0] = *v11;
      LOWORD(v38[1]) = v13;
      BYTE2(v38[1]) = BYTE2(v13);
      BYTE3(v38[1]) = BYTE3(v13);
      BYTE4(v38[1]) = BYTE4(v13);
      BYTE5(v38[1]) = BYTE5(v13);
      sub_1C0CF6468(a1, a2);
      v15 = v38;
      v16 = v38 + BYTE6(v13);
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v14 != 2)
  {
    memset(v38, 0, 14);
    sub_1C0CF6468(a1, a2);
    v15 = v38;
    v16 = v38;
    goto LABEL_23;
  }

  v17 = *(v12 + 16);
  v18 = *(v12 + 24);
  sub_1C0CF6468(a1, a2);
  a2 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  a1 = sub_1C0D7812C();
  if (a1)
  {
    a2 = v13 & 0x3FFFFFFFFFFFFFFFLL;
    v19 = sub_1C0D7815C();
    v12 = v17 - v19;
    if (__OFSUB__(v17, v19))
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    a1 += v12;
  }

  v20 = __OFSUB__(v18, v17);
  v21 = v18 - v17;
  if (v20)
  {
    __break(1u);
LABEL_11:
    v22 = v12;
    v23 = v12 >> 32;
    v21 = v23 - v22;
    if (v23 < v22)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    sub_1C0CF6468(a1, a2);
    a1 = sub_1C0D7812C();
    if (a1)
    {
      v24 = sub_1C0D7815C();
      if (__OFSUB__(v22, v24))
      {
        goto LABEL_32;
      }

      a1 += v22 - v24;
    }
  }

  v25 = sub_1C0D7814C();
  if (v25 >= v21)
  {
    v26 = v21;
  }

  else
  {
    v26 = v25;
  }

  v27 = &a1[v26];
  if (a1)
  {
    v16 = v27;
  }

  else
  {
    v16 = 0;
  }

  v15 = a1;
LABEL_23:
  sub_1C0D20850(v15, v16, &v43);
  v28 = v43;
  v29 = v44;
  __swift_destroy_boxed_opaque_existential_1(&v39);
  v43 = v28;
  v44 = v29;
  if (qword_1EBE6CCA8 != -1)
  {
    swift_once();
  }

  v30 = qword_1EBE72D80;
  if (qword_1EBE6CCC8 != -1)
  {
    swift_once();
  }

  v31 = v30 - qword_1EBE72DA0;
  if (__OFSUB__(v30, qword_1EBE72DA0))
  {
    __break(1u);
    goto LABEL_30;
  }

  sub_1C0CF6468(v28, v29);
  sub_1C0D01560(v31, v28, v29, &v39);
  v32 = v39;
  v33 = v40;
  sub_1C0D22268(v31);
  sub_1C0D30240(qword_1EBE6C9D8, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
  sub_1C0D7863C();
  sub_1C0CF6468(v32, v33);
  sub_1C0D3C2C8(v32, v33, v6);
  sub_1C0CF448C(v32, v33);
  sub_1C0D7862C();
  (*(v37[0] + 8))(v6, v4);
  v41 = v7;
  v42 = sub_1C0D30240(qword_1EBE6D7B8, MEMORY[0x1E69663E0], MEMORY[0x1E69663D0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  (*(v8 + 16))(boxed_opaque_existential_1, v10, v7);
  __swift_project_boxed_opaque_existential_1(&v39, v41);
  sub_1C0D7819C();
  sub_1C0CF448C(v32, v33);
  (*(v8 + 8))(v10, v7);
  sub_1C0CF448C(v43, v44);
  v35 = v38[0];
  __swift_destroy_boxed_opaque_existential_1(&v39);
  return v35;
}

id ATHMKeyCommitments.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATHMKeyCommitments();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *ATHMClient.init(keyCommitmentsData:numBuckets:deploymentID:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = sub_1C0D786CC();
  v66 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D23FF4(a1, a2, &v59);
  if (v6)
  {

    sub_1C0CF448C(a1, a2);
    goto LABEL_11;
  }

  v48 = a3;
  *&v49 = a4;
  *(&v49 + 1) = a5;
  v44 = a1;
  v45 = a2;
  v46 = 0;
  v47 = v5;
  sub_1C0D7884C();
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v15 = sub_1C0D786BC();
  v16 = v66[1];
  v16(v14, v12);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v66 = result;
    sub_1C0D786EC();
    v18 = sub_1C0D786BC();
    v16(v14, v12);
    result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
    if (result)
    {
      v19 = result;
      v64 = *(&v59 + 1);
      v65 = v59;
      v20 = v60;
      v62 = v61;
      v63 = *(&v60 + 1);
      sub_1C0D13734(&v65, v51, &qword_1EBE6D478, &unk_1C0D7C850);
      sub_1C0D13734(&v64, v51, &qword_1EBE6D478, &unk_1C0D7C850);
      v21 = v20;
      sub_1C0D13734(&v63, v51, &qword_1EBE6D480, &unk_1C0D7BF30);
      sub_1C0D13734(&v62, v51, &qword_1EBE6D488, &qword_1C0D7C860);
      v22 = v48;
      v23 = v49;
      v24 = sub_1C0D23CF0(&v56 + 1, 3, v48, v49, *(&v49 + 1));
      *&v56 = v24;
      v43 = *(&v56 + 1);
      v25 = v46;
      v26 = sub_1C0D24920(v24, *(&v56 + 1), v22, v23, *(&v23 + 1));
      v27 = v45;
      v28 = v44;
      if (v25)
      {
        sub_1C0D13578(&v65, &qword_1EBE6D478, &unk_1C0D7C850);
        sub_1C0D13578(&v64, &qword_1EBE6D478, &unk_1C0D7C850);

        sub_1C0D13578(&v63, &qword_1EBE6D480, &unk_1C0D7BF30);
        sub_1C0D13578(&v62, &qword_1EBE6D488, &qword_1C0D7C860);
        sub_1C0CF448C(v28, v27);

        v5 = v47;
      }

      else
      {
        v29 = v26;
        sub_1C0D13578(&v65, &qword_1EBE6D478, &unk_1C0D7C850);
        sub_1C0D13578(&v64, &qword_1EBE6D478, &unk_1C0D7C850);

        sub_1C0D13578(&v63, &qword_1EBE6D480, &unk_1C0D7BF30);
        sub_1C0D13578(&v62, &qword_1EBE6D488, &qword_1C0D7C860);
        v5 = v47;
        if (v29)
        {
          v53 = v59;
          v54 = v60;
          v30 = v66;
          *&v52 = v66;
          *(&v52 + 1) = v19;
          *&v55 = v61;
          *(&v55 + 1) = 3;
          v31 = v21;
          v32 = sub_1C0D13834(v30, v31);

          v33 = sub_1C0D13834(v19, v24);
          v34 = sub_1C0D1388C(v32, v33);

          *&v57 = v34;
          *(&v57 + 1) = v48;
          v58 = v49;
          v35 = &v5[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client];
          v36 = v57;
          *(v35 + 4) = v56;
          *(v35 + 5) = v36;
          *(v35 + 6) = v58;
          v38 = v53;
          v37 = v54;
          *v35 = v52;
          *(v35 + 1) = v38;
          v39 = v55;
          *(v35 + 2) = v37;
          *(v35 + 3) = v39;
          v40 = type metadata accessor for ATHMClient();
          v50.receiver = v5;
          v50.super_class = v40;
          v5 = objc_msgSendSuper2(&v50, sel_init);
          sub_1C0CF448C(v28, v27);
          return v5;
        }

        sub_1C0D2FE30();
        swift_allocError();
        *v41 = 2;
        swift_willThrow();
        sub_1C0CF448C(v28, v27);
      }

      sub_1C0D13578(&v65, &qword_1EBE6D478, &unk_1C0D7C850);
      sub_1C0D13578(&v64, &qword_1EBE6D478, &unk_1C0D7C850);

      sub_1C0D13578(&v63, &qword_1EBE6D480, &unk_1C0D7BF30);
      sub_1C0D13578(&v62, &qword_1EBE6D488, &qword_1C0D7C860);

LABEL_11:
      type metadata accessor for ATHMClient();
      swift_deallocPartialClassInstance();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D25C3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 96);
  sub_1C0D78BFC();
  return v1;
}

id sub_1C0D25CD8()
{
  result = [*(v0 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 80) serializedPublicKey_];
  if (result)
  {
    v2 = result;
    v3 = sub_1C0D7832C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C0D25DF0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = sub_1C0D786CC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D26040(a1, a2, v23);
  if (v4)
  {
    return a3;
  }

  v12 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 80);
  v28 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 64);
  v29 = v12;
  v30 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 96);
  v13 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 16);
  v24 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client);
  v25 = v13;
  v14 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 48);
  v26 = *(v3 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMClient_client + 32);
  v27 = v14;
  sub_1C0D7884C();
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v15 = sub_1C0D786BC();
  (*(v9 + 8))(v11, v8);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v17 = result;
    v18 = sub_1C0D269A8(v23, a3, 0, result);
    v20 = v19;
    v22 = v21;

    a3 = sub_1C0D39E8C(v18, v20, v22);
    sub_1C0D13578(v23, &qword_1EBE6D780, &qword_1C0D7C868);
    return a3;
  }

  __break(1u);
  return result;
}

void sub_1C0D26040(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v103 = *MEMORY[0x1E69E9840];
  v89 = sub_1C0D786CC();
  v92 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v10 = HIDWORD(a1) - a1;
LABEL_10:
  if (qword_1EBE6CCB8 != -1)
  {
    swift_once();
  }

  if (qword_1EBE72D90 >= v10)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v19 = 4;
    swift_willThrow();
    return;
  }

  v99 = MEMORY[0x1E6969080];
  v100 = MEMORY[0x1E6969078];
  v97 = a1;
  v98 = a2;
  v13 = __swift_project_boxed_opaque_existential_1(&v97, MEMORY[0x1E6969080]);
  v14 = *v13;
  v15 = v13[1];
  v16 = v15 >> 62;
  v86 = a3;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2)
    {
      memset(v93, 0, 14);
      sub_1C0CF6468(a1, a2);
      v17 = v93;
      v18 = v93;
      goto LABEL_37;
    }

    v20 = *(v14 + 16);
    v21 = *(v14 + 24);
    sub_1C0CF6468(a1, a2);
    v22 = sub_1C0D7812C();
    if (v22)
    {
      v23 = sub_1C0D7815C();
      if (__OFSUB__(v20, v23))
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
      }

      v22 += v20 - v23;
    }

    if (__OFSUB__(v21, v20))
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v24 = sub_1C0D7814C();
    if (v24 >= v21 - v20)
    {
      v25 = v21 - v20;
    }

    else
    {
      v25 = v24;
    }
  }

  else
  {
    if (!v16)
    {
      v93[0] = v14;
      LOWORD(v93[1]) = v15;
      BYTE2(v93[1]) = BYTE2(v15);
      BYTE3(v93[1]) = BYTE3(v15);
      BYTE4(v93[1]) = BYTE4(v15);
      BYTE5(v93[1]) = BYTE5(v15);
      sub_1C0CF6468(a1, a2);
      v17 = v93;
      v18 = v93 + BYTE6(v15);
      goto LABEL_37;
    }

    v26 = v14;
    v27 = v14 >> 32;
    v28 = v27 - v26;
    if (v27 < v26)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    sub_1C0CF6468(a1, a2);
    v22 = sub_1C0D7812C();
    if (v22)
    {
      v29 = sub_1C0D7815C();
      if (__OFSUB__(v26, v29))
      {
        goto LABEL_56;
      }

      v22 += v26 - v29;
    }

    v30 = sub_1C0D7814C();
    if (v30 >= v28)
    {
      v25 = v28;
    }

    else
    {
      v25 = v30;
    }
  }

  v31 = (v25 + v22);
  if (v22)
  {
    v18 = v31;
  }

  else
  {
    v18 = 0;
  }

  v17 = v22;
LABEL_37:
  sub_1C0D20850(v17, v18, v96);
  v32 = v96[0];
  v33 = v96[1];
  __swift_destroy_boxed_opaque_existential_1(&v97);
  v101 = v32;
  v102 = v33;
  v34 = objc_opt_self();
  sub_1C0D7884C();
  v91 = sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v35 = sub_1C0D786BC();
  v36 = v92 + 8;
  v37 = v89;
  v90 = *(v92 + 8);
  v90(v8, v89);
  v88 = v34;
  v38 = [v34 compressedx962PointByteCountForCurveParameters_];
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v39 = v38;
  v87 = v3;
  v40 = v101;
  v41 = v102;
  sub_1C0CF6468(v101, v102);
  sub_1C0D01560(v39, v40, v41, &v97);
  v42 = v97;
  v43 = v98;
  sub_1C0D22268(v39);
  LODWORD(v97) = 0;
  sub_1C0CF6468(v42, v43);
  sub_1C0D786EC();
  v44 = sub_1C0D786BC();
  v90(v8, v37);
  v45 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v46 = v36;
  v47 = sub_1C0D7830C();
  v48 = [v45 initFromPublicKeyBytes:v47 inGroup:v44 compressed:1 corecryptoError:&v97];

  sub_1C0CF448C(v42, v43);
  if (!v48)
  {
    v77 = v97;
    sub_1C0CF8DE0();
    swift_allocError();
    *v78 = v77;
    *(v78 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v42, v43);
    sub_1C0CF448C(v101, v102);
    return;
  }

  sub_1C0CF448C(v42, v43);
  sub_1C0D786EC();
  v49 = sub_1C0D786BC();
  v90(v8, v37);
  v50 = [v88 compressedx962PointByteCountForCurveParameters_];
  if ((v50 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

  v51 = v50;
  v52 = v46;
  v53 = v48;
  v54 = v101;
  v55 = v102;
  sub_1C0CF6468(v101, v102);
  sub_1C0D01560(v51, v54, v55, &v97);
  v56 = v97;
  v57 = v98;
  sub_1C0D22268(v51);
  LODWORD(v97) = 0;
  sub_1C0CF6468(v56, v57);
  sub_1C0D786EC();
  v58 = sub_1C0D786BC();
  v90(v8, v37);
  v59 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v60 = sub_1C0D7830C();
  v92 = v52;
  v61 = v60;
  v62 = [v59 initFromPublicKeyBytes:v60 inGroup:v58 compressed:1 corecryptoError:&v97];

  sub_1C0CF448C(v56, v57);
  if (!v62)
  {
    v79 = v97;
    sub_1C0CF8DE0();
    swift_allocError();
    *v80 = v79;
    *(v80 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v56, v57);
    sub_1C0CF448C(v101, v102);

    return;
  }

  sub_1C0CF448C(v56, v57);
  sub_1C0D786EC();
  v63 = sub_1C0D786BC();
  v90(v8, v37);
  v64 = [v88 groupOrderByteCountForCP_];
  if ((v64 & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

  v65 = v64;
  v66 = v101;
  v67 = v102;
  sub_1C0CF6468(v101, v102);
  sub_1C0D01560(v65, v66, v67, &v97);
  v69 = v97;
  v68 = v98;
  sub_1C0D22268(v65);
  LODWORD(v97) = 0;
  sub_1C0CF6468(v69, v68);
  sub_1C0D786EC();
  v70 = sub_1C0D786BC();
  v90(v8, v37);
  v71 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v72 = sub_1C0D7830C();
  v73 = [v71 initWithData:v72 inGroup:v70 reduction:0 corecryptoError:&v97];

  sub_1C0CF448C(v69, v68);
  if (v73)
  {
    sub_1C0CF448C(v69, v68);
    v74 = v101;
    v75 = v102;
    sub_1C0CF6468(v101, v102);
    v76 = v87;
    sub_1C0D2CD8C(v74, v75, v94);
    sub_1C0CF448C(v74, v75);
    if (v76)
    {

      sub_1C0CF448C(v74, v75);
    }

    else
    {
      sub_1C0CF448C(v74, v75);
      v83 = v86;
      *v86 = v53;
      v83[1] = v62;
      v83[2] = v73;
      v84 = v94[1];
      *(v83 + 3) = v94[0];
      *(v83 + 5) = v84;
      *(v83 + 7) = v94[2];
      v83[9] = v95;
    }
  }

  else
  {
    v81 = v97;
    sub_1C0CF8DE0();
    swift_allocError();
    *v82 = v81;
    *(v82 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v69, v68);
    sub_1C0CF448C(v101, v102);
  }
}

char *sub_1C0D269A8(uint64_t *a1, uint64_t a2, char a3, void *a4)
{
  v157[1] = *MEMORY[0x1E69E9840];
  v149 = sub_1C0D786CC();
  v10 = *(v149 - 1);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v4[11];
  if ((a3 & 1) == 0)
  {
    if (a2 < 1 || (v12 = v152, v152 = a2, v12 != a2))
    {
      sub_1C0D2FE30();
      swift_allocError();
      v22 = 8;
      goto LABEL_8;
    }
  }

  v134 = v5;
  v13 = v4[13];
  v133 = v4[12];
  v132 = v13;
  v14 = v4[9];
  v135 = v4[10];
  v15 = v4[3];
  v138 = v4[2];
  v147 = v15;
  v137 = v4[4];
  v16 = v4[8];
  v17 = *a1;
  v18 = sub_1C0D1388C(*a1, *a1);
  v136 = v17;
  LOBYTE(v17) = [v17 isEqual_];

  if ((v17 & 1) != 0 || (v19 = a1[1], v20 = sub_1C0D1388C(v19, v19), v131 = v19, LODWORD(v19) = [v19 isEqual_], v20, v19))
  {
    sub_1C0D2FE30();
    swift_allocError();
    v22 = 4;
LABEL_8:
    *v21 = v22;
LABEL_9:
    swift_willThrow();
    return v10;
  }

  if (v152 <= 0)
  {
    sub_1C0D2FE30();
    swift_allocError();
    *v60 = 0;
    goto LABEL_9;
  }

  v130 = v16;
  v145 = v14;
  v128 = a4;
  v129 = v4;
  v24 = MEMORY[0x1E69E7CC0];
  v156 = MEMORY[0x1E69E7CC0];
  v25 = (v10 + 8);
  v26 = sub_1C0D7884C();
  v27 = sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  v28 = 0;
  v151 = a1;
  v144 = v10 + 8;
  v143 = v26;
  v142 = v27;
  do
  {
    v146 = v24;
    v29 = v148;
    sub_1C0D786EC();
    v30 = sub_1C0D786BC();
    v31 = *v25;
    v32 = v149;
    (*v25)(v29, v149);
    v150 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
    if (!v150)
    {
      goto LABEL_40;
    }

    v33 = objc_opt_self();
    sub_1C0D786EC();
    v34 = sub_1C0D786BC();
    v31(v29, v32);
    v35 = [v33 groupOrderByteCountForCP_];
    if (v35 < 0)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v36 = sub_1C0D053E8(v28, v35);
    v10 = v37;
    LODWORD(v153[0]) = 0;
    sub_1C0CF6468(v36, v37);
    sub_1C0D786EC();
    v38 = sub_1C0D786BC();
    v141 = v31;
    v31(v29, v32);
    v39 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v40 = sub_1C0D7830C();
    v41 = [v39 initWithData:v40 inGroup:v38 reduction:1 corecryptoError:v153];

    sub_1C0CF448C(v36, v10);
    if (!v41)
    {
      v61 = v153[0];
      sub_1C0CF8DE0();
      swift_allocError();
      *v62 = v61;
      *(v62 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v36, v10);

      return v10;
    }

    sub_1C0CF448C(v36, v10);
    v42 = v150;
    v43 = sub_1C0D2BFF8(v41, v150);

    v44 = v151[5];
    if (v28 >= *(v44 + 16))
    {
      goto LABEL_37;
    }

    v46 = v151[3];
    v45 = v151[4];
    v47 = *(v44 + 8 * v28 + 32);
    v48 = sub_1C0D13834(v47, v145);

    if (v28 >= *(v45 + 16))
    {
      goto LABEL_38;
    }

    v140 = v45;
    v49 = *(v45 + 8 * v28 + 32);
    v50 = v147;
    v51 = sub_1C0D13834(v43, v147);
    v139 = v46;
    v52 = sub_1C0D2BEDC(v46, v51);

    v53 = sub_1C0D13834(v49, v52);
    v54 = sub_1C0D2BEDC(v48, v53);

    v55 = v49;
    v56 = sub_1C0D23BD0(v55, v42);

    v57 = sub_1C0D13834(v56, v50);
    v58 = sub_1C0D2BEDC(v54, v57);

    v59 = v58;
    MEMORY[0x1C68E3BD0]();
    if (*(v156 + 16) >= *(v156 + 24) >> 1)
    {
      sub_1C0D78C0C();
    }

    ++v28;
    sub_1C0D78C3C();

    v24 = v156;
    v25 = v144;
  }

  while (v152 != v28);
  v146 = v156;
  v63 = v151[7];
  v126 = v151[6];
  v125 = v63;
  v127 = v151[8];
  v157[0] = v140;
  v64 = objc_opt_self();
  sub_1C0D78BFC();
  v65 = v148;
  sub_1C0D786EC();
  v66 = sub_1C0D786BC();
  v67 = v149;
  v68 = v141;
  v141(v65, v149);
  v69 = [v64 groupOrderByteCountForCP_];
  if (v69 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  v70 = sub_1C0D053E8(0, v69);
  v10 = v71;
  LODWORD(v153[0]) = 0;
  sub_1C0CF6468(v70, v71);
  sub_1C0D786EC();
  v72 = sub_1C0D786BC();
  v68(v65, v67);
  v73 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v74 = sub_1C0D7830C();
  v75 = [v73 initWithData:v74 inGroup:v72 reduction:1 corecryptoError:v153];

  sub_1C0CF448C(v70, v10);
  v76 = v130;
  if (!v75)
  {
    v111 = v153[0];
    sub_1C0CF8DE0();
    swift_allocError();
    *v112 = v111;
    *(v112 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v70, v10);
    sub_1C0D13578(v157, &qword_1EBE6D488, &qword_1C0D7C860);

    return v10;
  }

  sub_1C0CF448C(v70, v10);
  v77 = v140;
  v78 = *(v140 + 16);
  v79 = v75;
  v80 = v79;
  v10 = v79;
  if (!v78)
  {
LABEL_30:
    sub_1C0D13578(v157, &qword_1EBE6D488, &qword_1C0D7C860);

    v86 = v126;
    v87 = sub_1C0D13834(v126, v136);
    v88 = sub_1C0D13834(v10, v76);
    v150 = sub_1C0D1388C(v87, v88);

    v89 = sub_1C0D13834(v86, v131);
    v90 = v145;
    v91 = sub_1C0D13834(v125, v145);
    v92 = sub_1C0D1388C(v89, v91);

    v93 = sub_1C0D1388C(v138, v139);
    v149 = v151[2];
    v94 = sub_1C0D13834(v149, v137);
    v95 = sub_1C0D1388C(v93, v94);

    v96 = v135;
    v97 = sub_1C0D1388C(v95, v135);

    v98 = sub_1C0D13834(v10, v97);
    v99 = sub_1C0D1388C(v92, v98);

    v100 = v86;
    v101 = v90;
    v102 = v131;
    v103 = sub_1C0D13834(v100, v131);
    v104 = v130;
    v105 = sub_1C0D13834(v127, v130);
    v106 = sub_1C0D1388C(v103, v105);

    v107 = sub_1C0D13834(v10, v96);
    v108 = sub_1C0D1388C(v106, v107);

    v109 = v134;
    v110 = sub_1C0D223A4(v104, v101, v138, v147, v137, v136, v102, v149, v96, v139, v146, v150, v99, v108, v152, v133, v132);
    if (v109)
    {

      return v10;
    }

    v113 = v110;

    v114 = [v113 isEqual_];

    if (v114)
    {
      v115 = *v129;
      v116 = v129[1];
      v117 = v151;
      sub_1C0D13734(v151, v153, &qword_1EBE6D780, &qword_1C0D7C868);
      v118 = v135;
      v119 = v115;
      v120 = v116;
      v121 = v130;
      v122 = v101;
      v10 = sub_1C0D2F14C(v117, v118, v119, v120, v121, v122, v128);
      sub_1C0D13578(v117, &qword_1EBE6D780, &qword_1C0D7C868);
      return v10;
    }

    sub_1C0D2FE30();
    swift_allocError();
    v22 = 5;
    goto LABEL_8;
  }

  v81 = (v77 + 32);
  v82 = v79;
  while (1)
  {
    v83 = *v81;
    v155 = 0;
    v84 = v83;
    v85 = [v82 add:v84 corecryptoError:&v155];
    if (!v85)
    {
      break;
    }

    v10 = v85;

    ++v81;
    v82 = v10;
    if (!--v78)
    {
      goto LABEL_30;
    }
  }

  v153[0] = 0;
  v153[1] = 0xE000000000000000;
  sub_1C0D78DAC();
  MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
  v154 = v155;
  v123 = sub_1C0D78F2C();
  MEMORY[0x1C68E3B00](v123);

  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

id ATHMClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATHMServer.init(numBuckets:deploymentID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  v56 = a1;
  v71 = *MEMORY[0x1E69E9840];
  v4 = sub_1C0D786CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D7884C();
  sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v8 = sub_1C0D786BC();
  v9 = *(v5 + 8);
  v9(v7, v4);
  v55 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v55)
  {
    goto LABEL_15;
  }

  sub_1C0D786EC();
  v10 = sub_1C0D786BC();
  v9(v7, v4);
  v54 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v54)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1C0D786EC();
  v11 = sub_1C0D786BC();
  v9(v7, v4);
  v53 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v53)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1C0D786EC();
  v12 = sub_1C0D786BC();
  v9(v7, v4);
  v52 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v52)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v51 = a2;
  sub_1C0D786EC();
  v13 = sub_1C0D786BC();
  v9(v7, v4);
  v14 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = v14;
  v16 = objc_opt_self();
  sub_1C0D786EC();
  v17 = sub_1C0D786BC();
  v9(v7, v4);
  v18 = [v16 groupOrderByteCountForCP_];
  if (v18 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = sub_1C0D053E8(0, v18);
  v21 = v20;
  LODWORD(v68) = 0;
  sub_1C0CF6468(v19, v20);
  sub_1C0D786EC();
  v22 = sub_1C0D786BC();
  v9(v7, v4);
  v23 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v24 = sub_1C0D7830C();
  v25 = [v23 initWithData:v24 inGroup:v22 reduction:1 corecryptoError:&v68];

  sub_1C0CF448C(v19, v21);
  if (!v25)
  {
    goto LABEL_22;
  }

  sub_1C0CF448C(v19, v21);
  v21 = v55;
  v26 = [v55 isEqual_];
  v27 = v58;
  v28 = v56;
  v19 = v54;
  v29 = v53;
  v30 = v52;
  if (v26 & 1) != 0 || [v54 isEqual_] || (objc_msgSend(v29, sel_isEqual_, v25) & 1) != 0 || (objc_msgSend(v30, sel_isEqual_, v25) & 1) != 0 || (objc_msgSend(v15, sel_isEqual_, v25))
  {

    sub_1C0D2FE30();
    swift_allocError();
    *v48 = 0;
    swift_willThrow();
    while (1)
    {

      swift_unexpectedError();
      __break(1u);
LABEL_22:
      v49 = v68;
      sub_1C0CF8DE0();
      swift_allocError();
      *v50 = v49;
      *(v50 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v19, v21);

      v25 = v52;
    }
  }

  *&v68 = v21;
  *(&v68 + 1) = v19;
  *&v69 = v29;
  *(&v69 + 1) = v30;
  v70 = v15;
  *v62 = v15;
  v60 = v68;
  v61 = v69;
  v55 = v21;
  v54 = v19;
  v31 = v29;
  v32 = v30;
  v33 = v15;
  v34 = v28;
  v35 = v28;
  v36 = v51;
  *(&v63 + 1) = sub_1C0D23CF0(&v64, 3, v34, v51, v27);
  v37 = v64;
  v38 = *(&v63 + 1);
  v39 = v37;
  sub_1C0D78BFC();
  sub_1C0D2E720(&v68, v38, v39, v36, v27, v66);

  *&v62[24] = v66[1];
  *&v62[8] = v66[0];
  *&v62[40] = v67;
  *&v63 = 3;
  *(&v64 + 1) = v35;
  *&v65 = v36;
  *(&v65 + 1) = v27;
  v40 = v57;
  v41 = &v57[OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server];
  v42 = v65;
  *(v41 + 6) = v64;
  *(v41 + 7) = v42;
  v43 = v61;
  *v41 = v60;
  *(v41 + 1) = v43;
  v44 = v63;
  *(v41 + 4) = *&v62[32];
  *(v41 + 5) = v44;
  v45 = *&v62[16];
  *(v41 + 2) = *v62;
  *(v41 + 3) = v45;
  v46 = type metadata accessor for ATHMServer();
  v59.receiver = v40;
  v59.super_class = v46;
  return objc_msgSendSuper2(&v59, sel_init);
}

uint64_t sub_1C0D28124()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 112);
  sub_1C0D78BFC();
  return v1;
}

char *sub_1C0D282F4(uint64_t a1, unint64_t a2, int64_t a3, uint64_t a4)
{
  v319[9] = *MEMORY[0x1E69E9840];
  v10 = sub_1C0D786CC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C0D2ADA8(a1, a2);
  if (v5)
  {
    return v13;
  }

  v298 = v14;
  v307 = a3;
  v306 = a4;
  v293 = 0;
  v15 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 8);
  v286 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server);
  v287 = v15;
  v16 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 24);
  v288 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 16);
  v289 = v16;
  v17 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 40);
  v290 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 32);
  v291 = v17;
  v18 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 56);
  v294 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 48);
  v292 = v18;
  v19 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 72);
  v295 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 64);
  v296 = v19;
  v20 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 96);
  v308 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 88);
  v304 = v20;
  v21 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 120);
  v283 = *(v4 + OBJC_IVAR____TtC16CryptoKitPrivate10ATHMServer_server + 112);
  v302 = v21;
  v22 = sub_1C0D7884C();
  v23 = sub_1C0D30240(&qword_1EBE6D428, MEMORY[0x1E6966580], MEMORY[0x1E6966578]);
  sub_1C0D786EC();
  v24 = sub_1C0D786BC();
  v25 = (v11 + 8);
  v26 = *(v11 + 8);
  v26(v13, v10);
  v297 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v297)
  {
    __break(1u);
    goto LABEL_113;
  }

  sub_1C0D786EC();
  v27 = sub_1C0D786BC();
  v26(v13, v10);
  v303 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v303)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  sub_1C0D786EC();
  v28 = sub_1C0D786BC();
  v26(v13, v10);
  v305 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v305)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  sub_1C0D786EC();
  v29 = sub_1C0D786BC();
  v26(v13, v10);
  v301 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v301)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  sub_1C0D786EC();
  v30 = sub_1C0D786BC();
  v26(v13, v10);
  v300 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v300)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  sub_1C0D786EC();
  v31 = sub_1C0D786BC();
  v26(v13, v10);
  v299 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v299)
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v312 = v23;
  sub_1C0D786EC();
  v32 = sub_1C0D786BC();
  v310 = v10;
  v311 = v25;
  v309 = v26;
  v26(v13, v10);
  v33 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v33)
  {
    goto LABEL_118;
  }

  v34 = v33;
  if (v307 < 0 || v306 < 1 || v307 >= v306)
  {
    sub_1C0D2FE30();
    v13 = swift_allocError();
    *v49 = 0;
    swift_willThrow();

    return v13;
  }

  v285 = v33;
  v286 = v286;
  v287 = v287;
  v288 = v288;
  v279 = v289;
  v278 = v290;
  v35 = v291;
  v294 = v294;
  v36 = v292;
  v280 = v295;
  sub_1C0D78BFC();
  v37 = v308;
  v304 = v304;
  sub_1C0D78BFC();
  v38 = v303;
  v308 = v37;
  v39 = sub_1C0D13834(v303, v37);
  v303 = v38;
  LODWORD(v314) = 0;
  v40 = [v39 add:v39 corecryptoError:&v314];
  if (!v40)
  {
LABEL_18:
    v316 = 0;
    v317 = 0xE000000000000000;
    sub_1C0D78DAC();
    MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
    v315 = v314;
    v48 = sub_1C0D78F2C();
    MEMORY[0x1C68E3B00](v48);

    goto LABEL_125;
  }

  v41 = v40;
  v42 = v303;
  while (1)
  {
    v43 = [v39 isEqual_];

    if ((v43 & 1) == 0)
    {
      break;
    }

    v44 = v36;
    sub_1C0D786EC();
    v45 = sub_1C0D786BC();
    v309(v13, v310);
    v46 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];

    if (!v46)
    {
      goto LABEL_105;
    }

    LODWORD(v314) = 0;
    v47 = [v308 multiply:v46 corecryptoError:&v314];

    if (!v47)
    {
      goto LABEL_123;
    }

    LODWORD(v314) = 0;
    v41 = [v47 add:v47 corecryptoError:&v314];
    v42 = v46;
    v39 = v47;
    v36 = v44;
    if (!v41)
    {
      goto LABEL_18;
    }
  }

  v281 = v35;
  v282 = v36;
  v50 = objc_opt_self();
  sub_1C0D786EC();
  v51 = sub_1C0D786BC();
  v52 = v310;
  v309(v13, v310);
  v295 = v50;
  v53 = [v50 groupOrderByteCountForCP_];
  if (v53 < 0)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    v50 = sub_1C0CFD6AC(v50);
    goto LABEL_29;
  }

  v54 = sub_1C0D053E8(v307, v53);
  v56 = v55;
  LODWORD(v316) = 0;
  sub_1C0CF6468(v54, v55);
  sub_1C0D786EC();
  v292 = sub_1C0D786BC();
  v309(v13, v52);
  v57 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v58 = sub_1C0D7830C();
  v59 = [v57 initWithData:v58 inGroup:v292 reduction:1 corecryptoError:&v316];

  sub_1C0CF448C(v54, v56);
  if (!v59)
  {
    v141 = v316;
    sub_1C0CF8DE0();
    v13 = swift_allocError();
    *v142 = v141;
    *(v142 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v54, v56);

    return v13;
  }

  sub_1C0CF448C(v54, v56);
  v272 = v59;
  v60 = sub_1C0D23BD0(v59, v287);
  v61 = sub_1C0D2BFF8(v286, v60);

  v62 = v297;
  v63 = sub_1C0D23BD0(v297, v288);
  v64 = sub_1C0D2BFF8(v61, v63);

  v65 = sub_1C0D13834(v64, v308);
  v271 = v65;
  v66 = v298;
  v67 = sub_1C0D1388C(v65, v298);
  v68 = sub_1C0D13834(v42, v67);

  sub_1C0D786EC();
  v69 = sub_1C0D786BC();
  v309(v13, v52);
  v70 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v70)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v71 = v70;
  v273 = v303;
  v275 = v62;
  v290 = v68;
  v72 = v39;
  v274 = v66;

  v316 = MEMORY[0x1E69E7CC0];
  v73 = v306;
  sub_1C0D78E3C();
  do
  {
    sub_1C0D786EC();
    v74 = sub_1C0D786BC();
    v309(v13, v52);
    v75 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
    if (!v75)
    {
      goto LABEL_106;
    }

    v50 = v75;
    sub_1C0D78E0C();
    sub_1C0D78E4C();
    sub_1C0D78E5C();
    sub_1C0D78E1C();
    --v73;
    v52 = v310;
  }

  while (v73);
  v270 = v42;
  v276 = v72;
  v298 = v316;
  v42 = v312;
  sub_1C0D786EC();
  v51 = sub_1C0D786BC();
  v76 = v309;
  v309(v13, v52);
  v77 = [v295 groupOrderByteCountForCP_];
  if (v77 < 0)
  {
    goto LABEL_97;
  }

  v78 = sub_1C0D053E8(0, v77);
  v80 = v79;
  LODWORD(v316) = 0;
  sub_1C0CF6468(v78, v79);
  sub_1C0D786EC();
  v81 = sub_1C0D786BC();
  v76(v13, v52);
  v82 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v42 = v76;
  v83 = sub_1C0D7830C();
  v51 = [v82 initWithData:v83 inGroup:v81 reduction:1 corecryptoError:&v316];

  sub_1C0CF448C(v78, v80);
  if (!v51)
  {
    v144 = v316;
    sub_1C0CF8DE0();
    v145 = swift_allocError();
    *v146 = v144;
    *(v146 + 4) = 0;
    v293 = v145;
    swift_willThrow();
    sub_1C0CF448C(v78, v80);

    goto LABEL_64;
  }

  sub_1C0CF448C(v78, v80);
  v50 = v298;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_99;
  }

LABEL_29:
  v84 = v306;
  if (v50[2] <= v307)
  {
    __break(1u);
  }

  else
  {
    v298 = v50;
    v85 = v50[v307 + 4];
    v268 = v50 + 4;
    v50[v307 + 4] = v51;

    v316 = MEMORY[0x1E69E7CC0];
    v51 = &v316;
    sub_1C0D78E3C();
    v86 = 0;
    do
    {
      if (v86 >= v84)
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v87 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_89;
      }

      sub_1C0D786EC();
      v88 = sub_1C0D786BC();
      (v42)(v13, v52);
      v89 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
      if (!v89)
      {
        goto LABEL_108;
      }

      v50 = v89;
      v51 = &v316;
      sub_1C0D78E0C();
      sub_1C0D78E4C();
      sub_1C0D78E5C();
      sub_1C0D78E1C();
      ++v86;
      v52 = v310;
    }

    while (v87 != v84);
    v289 = v316;
    sub_1C0D786EC();
    v51 = sub_1C0D786BC();
    (v42)(v13, v52);
    v90 = [v295 groupOrderByteCountForCP_];
    if ((v90 & 0x8000000000000000) == 0)
    {
      v91 = sub_1C0D053E8(0, v90);
      v93 = v92;
      LODWORD(v316) = 0;
      sub_1C0CF6468(v91, v92);
      v284 = v22;
      sub_1C0D786EC();
      v94 = sub_1C0D786BC();
      (v42)(v13, v52);
      v95 = objc_allocWithZone(MEMORY[0x1E6999650]);
      v96 = sub_1C0D7830C();
      v51 = [v95 initWithData:v96 inGroup:v94 reduction:1 corecryptoError:&v316];

      sub_1C0CF448C(v91, v93);
      if (v51)
      {
        sub_1C0CF448C(v91, v93);
        v50 = v289;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_38;
        }

        goto LABEL_102;
      }

      v147 = v316;
      sub_1C0CF8DE0();
      v148 = swift_allocError();
      *v149 = v147;
      *(v149 + 4) = 0;
      v293 = v148;
      swift_willThrow();
      sub_1C0CF448C(v91, v93);

LABEL_64:

      v150 = v273;

      v151 = v276;
      v152 = v290;

      v153 = v275;

      v154 = v274;

      v155 = &v311;
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_102:
  v50 = sub_1C0CFD6AC(v50);
LABEL_38:
  v42 = v284;
  if (v50[2] <= v307)
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v97 = v50[v307 + 4];
  v50[v307 + 4] = v51;

  sub_1C0D786EC();
  v98 = sub_1C0D786BC();
  v99 = v309;
  v309(v13, v52);
  v269 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v269)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v265 = v50 + 4;
  v289 = v50;
  sub_1C0D786EC();
  v100 = sub_1C0D786BC();
  v99(v13, v52);
  v101 = [v295 groupOrderByteCountForCP_];
  if (v101 < 0)
  {
    goto LABEL_104;
  }

  v102 = sub_1C0D053E8(v307, v101);
  v104 = v103;
  LODWORD(v316) = 0;
  sub_1C0CF6468(v102, v103);
  sub_1C0D786EC();
  v105 = sub_1C0D786BC();
  v99(v13, v52);
  v106 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v107 = sub_1C0D7830C();
  v108 = [v106 initWithData:v107 inGroup:v105 reduction:1 corecryptoError:&v316];

  sub_1C0CF448C(v102, v104);
  if (!v108)
  {
    v174 = v316;
    sub_1C0CF8DE0();
    v175 = swift_allocError();
    *v176 = v174;
    *(v176 + 4) = 0;
    v293 = v175;
    swift_willThrow();
    sub_1C0CF448C(v102, v104);

    v150 = v273;

    v177 = v274;

    v178 = v275;
    v179 = v290;

    v180 = &v308;
    goto LABEL_68;
  }

  sub_1C0CF448C(v102, v104);
  v109 = v269;
  v110 = sub_1C0D2BFF8(v108, v269);

  v267 = v110;
  v22 = v294;
  v111 = sub_1C0D13834(v110, v294);
  v50 = sub_1C0D13834(v285, v304);
  v112 = sub_1C0D1388C(v111, v50);

  v51 = sub_1C0D13834(v109, v22);
  v266 = v112;
  v277 = sub_1C0D2BEDC(v112, v51);

  v113 = 0;
  v114 = MEMORY[0x1E69E7CC0];
  v314 = MEMORY[0x1E69E7CC0];
  v115 = v306;
  v116 = v307;
  v117 = v290;
  while (1)
  {
    if (v113 >= v115)
    {
      goto LABEL_90;
    }

    v118 = v113;
    v22 = v113 + 1;
    if (__OFADD__(v113, 1))
    {
      goto LABEL_91;
    }

    if (v116 != v113)
    {
      break;
    }

    v315 = 0;
    v119 = [v304 multiply:v305 corecryptoError:&v315];
    if (!v119)
    {
      goto LABEL_126;
    }

    v50 = v119;
    v51 = &v314;
    MEMORY[0x1C68E3BD0]();
    if (v314[2] >= v314[3] >> 1)
    {
      sub_1C0D78C0C();
      v52 = v310;
    }

    sub_1C0D78C3C();
LABEL_44:
    v114 = v314;
    v113 = v118 + 1;
    v115 = v306;
    v116 = v307;
    if (v22 == v306)
    {
      v291 = v314;

      v156 = v301;
      v303 = sub_1C0D13834(v301, v276);
      v157 = sub_1C0D13834(v156, v117);
      v158 = v304;
      v159 = sub_1C0D13834(v300, v304);
      v160 = sub_1C0D1388C(v157, v159);

      v161 = sub_1C0D13834(v156, v117);
      v162 = v308;
      v163 = sub_1C0D13834(v299, v308);
      v164 = sub_1C0D1388C(v161, v163);

      v263 = v115;
      v296 = v164;
      v297 = v160;
      v262 = v160;
      v165 = v274;
      v166 = v162;
      v167 = v290;
      v168 = v276;
      v169 = v158;
      v170 = v294;
      v171 = v275;
      v172 = v293;
      v173 = sub_1C0D223A4(v166, v169, v281, v294, v282, v276, v290, v275, v274, v277, v291, v303, v262, v164, v263, v283, v302);
      v293 = v172;
      if (v172)
      {

        v150 = v273;

        goto LABEL_71;
      }

      v292 = v173;

      sub_1C0D786EC();
      v190 = sub_1C0D786BC();
      v191 = v310;
      v192 = v309;
      v309(v13, v310);
      v193 = [v295 groupOrderByteCountForCP_];
      if ((v193 & 0x8000000000000000) == 0)
      {
        v194 = sub_1C0D053E8(0, v193);
        v196 = v195;
        LODWORD(v316) = 0;
        sub_1C0CF6468(v194, v195);
        sub_1C0D786EC();
        v197 = sub_1C0D786BC();
        v192(v13, v191);
        v198 = objc_allocWithZone(MEMORY[0x1E6999650]);
        v199 = sub_1C0D7830C();
        v200 = [v198 initWithData:v199 inGroup:v197 reduction:1 corecryptoError:&v316];

        sub_1C0CF448C(v194, v196);
        if (v200)
        {
          sub_1C0CF448C(v194, v196);
          v52 = *(v298 + 2);
          v201 = v200;
          v51 = v201;
          v202 = v201;
          v22 = v284;
          v42 = v268;
          if (v52)
          {
            v203 = 0;
            v50 = v201;
            while (1)
            {
              if (v203 >= *(v298 + 2))
              {
                goto LABEL_98;
              }

              v204 = *(v42 + 8 * v203);
              v315 = 0;
              v205 = v204;
              v206 = [v50 add:v205 corecryptoError:&v315];
              if (!v206)
              {
                break;
              }

              v202 = v206;

              ++v203;
              v50 = v202;
              if (v52 == v203)
              {
                goto LABEL_80;
              }
            }

            v316 = 0;
            v317 = 0xE000000000000000;
            sub_1C0D78DAC();
            MEMORY[0x1C68E3B00](0xD00000000000003CLL, 0x80000001C0D80790);
            v313 = v315;
            v261 = sub_1C0D78F2C();
            MEMORY[0x1C68E3B00](v261);

            while (1)
            {
LABEL_125:
              sub_1C0D78EBC();
              __break(1u);
LABEL_126:
              v316 = 0;
              v317 = 0xE000000000000000;
              sub_1C0D78DAC();
              MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
              v313 = v315;
LABEL_124:
              v260 = sub_1C0D78F2C();
              MEMORY[0x1C68E3B00](v260);
            }
          }

LABEL_80:

          v207 = sub_1C0D2C16C(v292, v202);
          if (*(v298 + 2) > v307)
          {
            v208 = *(v42 + 8 * v307);
            *(v42 + 8 * v307) = v207;
            v209 = v207;

            v210 = v273;
            v211 = [v273 inverseModOrder];

            v189 = v272;
            v212 = v310;
            if (v211)
            {
              v308 = v209;
              v304 = v211;
              sub_1C0D786EC();
              v213 = sub_1C0D786BC();
              v214 = v309;
              v309(v13, v212);
              v215 = [v295 groupOrderByteCountForCP_];
              if ((v215 & 0x8000000000000000) == 0)
              {
                v216 = sub_1C0D053E8(v307, v215);
                v218 = v217;
                LODWORD(v316) = 0;
                sub_1C0CF6468(v216, v217);
                sub_1C0D786EC();
                v219 = sub_1C0D786BC();
                v214(v13, v212);
                v220 = objc_allocWithZone(MEMORY[0x1E6999650]);
                v221 = sub_1C0D7830C();
                v222 = [v220 initWithData:v221 inGroup:v219 reduction:1 corecryptoError:&v316];

                sub_1C0CF448C(v216, v218);
                if (!v222)
                {
                  v256 = v316;
                  sub_1C0CF8DE0();
                  v257 = swift_allocError();
                  *v258 = v256;
                  *(v258 + 4) = 0;
                  v293 = v257;
                  swift_willThrow();
                  sub_1C0CF448C(v216, v218);

                  v259 = v275;
                  v13 = v271;
                  v150 = v273;
                  goto LABEL_72;
                }

                sub_1C0CF448C(v216, v218);
                v223 = v278;
                v224 = sub_1C0D23BD0(v222, v278);

                v225 = v279;
                v226 = sub_1C0D2BFF8(v279, v224);

                v227 = v285;
                v228 = sub_1C0D2BFF8(v226, v285);

                v229 = sub_1C0D2C288(v228);
                v230 = v287;
                v231 = sub_1C0D23BD0(v222, v287);

                v232 = v286;
                v233 = sub_1C0D2BFF8(v286, v231);

                v234 = v275;
                v235 = v288;
                v236 = sub_1C0D23BD0(v275, v288);

                v312 = sub_1C0D2BFF8(v233, v236);
                v237 = v308;
                v238 = sub_1C0D23BD0(v308, v227);

                v239 = v305;
                v240 = sub_1C0D2BFF8(v305, v238);

                if (*(v289 + 2) > v307)
                {
                  v241 = v265[v307];
                  v265[v307] = v240;
                  v242 = v240;

                  v243 = v292;
                  v244 = v304;
                  v245 = sub_1C0D23BD0(v292, v304);
                  v246 = v301;
                  v311 = sub_1C0D2C16C(v301, v245);

                  v247 = v229;
                  v248 = sub_1C0D23BD0(v243, v229);
                  v249 = v300;
                  v310 = sub_1C0D2BFF8(v300, v248);

                  v250 = v312;
                  v251 = sub_1C0D23BD0(v243, v312);
                  v252 = v299;
                  v309 = sub_1C0D2BFF8(v299, v251);

                  v318 = v276;
                  v319[0] = v290;
                  v319[1] = v275;
                  v319[2] = v277;
                  v319[3] = v298;
                  v319[4] = v289;
                  v319[5] = v311;
                  v319[6] = v310;
                  v319[7] = v309;
                  v319[8] = v306;
                  v13 = sub_1C0D3A200();
                  sub_1C0D13578(&v318, &qword_1EBE6D780, &qword_1C0D7C868);

                  return v13;
                }

LABEL_111:
                __break(1u);
              }

LABEL_110:
              __break(1u);
              goto LABEL_111;
            }

LABEL_122:
            __break(1u);
LABEL_123:
            v316 = 0;
            v317 = 0xE000000000000000;
            sub_1C0D78DAC();
            MEMORY[0x1C68E3B00](0xD000000000000042, 0x80000001C0D807D0);
            v315 = v314;
            goto LABEL_124;
          }

LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v253 = v316;
        sub_1C0CF8DE0();
        v254 = swift_allocError();
        *v255 = v253;
        *(v255 + 4) = 0;
        v293 = v254;
        swift_willThrow();
        sub_1C0CF448C(v194, v196);

        v150 = v273;

        v180 = &v307;
LABEL_68:
        v181 = *(v180 - 32);

        v155 = v319;
        goto LABEL_70;
      }

LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }
  }

  v292 = v113 + 1;
  v291 = v114;
  v22 = v42;
  v42 = v312;
  sub_1C0D786EC();
  v120 = sub_1C0D786BC();
  v121 = v309;
  v309(v13, v52);
  v303 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v303)
  {
    goto LABEL_119;
  }

  sub_1C0D786EC();
  v51 = sub_1C0D786BC();
  v121(v13, v52);
  v122 = [v295 groupOrderByteCountForCP_];
  if (v122 < 0)
  {
    goto LABEL_92;
  }

  v123 = sub_1C0D053E8(v118, v122);
  v297 = v118;
  v124 = v123;
  v50 = v125;
  LODWORD(v316) = 0;
  sub_1C0CF6468(v123, v125);
  sub_1C0D786EC();
  v126 = sub_1C0D786BC();
  v121(v13, v52);
  v127 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v52 = sub_1C0D7830C();
  v128 = [v127 initWithData:v52 inGroup:v126 reduction:1 corecryptoError:&v316];

  sub_1C0CF448C(v124, v50);
  if (v128)
  {
    sub_1C0CF448C(v124, v50);
    v129 = sub_1C0D2BFF8(v128, v303);

    v42 = v297;
    v130 = v294;
    v51 = v304;
    if (v297 >= *(v289 + 2))
    {
      goto LABEL_93;
    }

    v50 = *(v289 + v297 + 4);
    v51 = sub_1C0D13834(v50, v51);

    v22 = v298;
    if (v42 >= *(v298 + 2))
    {
      goto LABEL_94;
    }

    v131 = &v298[8 * v42];
    v50 = v131[4];
    v291 = v129;
    v132 = sub_1C0D13834(v129, v130);
    v133 = sub_1C0D2BEDC(v277, v132);

    v52 = sub_1C0D13834(v50, v133);
    v134 = sub_1C0D2BEDC(v51, v52);

    if (v42 >= v22[2])
    {
      goto LABEL_95;
    }

    v135 = v42;
    v136 = v131[4];
    v137 = v303;
    v138 = sub_1C0D23BD0(v136, v303);

    v139 = sub_1C0D13834(v138, v130);
    v140 = sub_1C0D2BEDC(v134, v139);

    v50 = v140;
    v51 = &v314;
    MEMORY[0x1C68E3BD0]();
    if (v314[2] >= v314[3] >> 1)
    {
      sub_1C0D78C0C();
    }

    sub_1C0D78C3C();

    v117 = v290;
    v52 = v310;
    v42 = v284;
    v118 = v135;
    v22 = v292;
    goto LABEL_44;
  }

  v182 = v316;
  sub_1C0CF8DE0();
  v183 = swift_allocError();
  *v184 = v182;
  *(v184 + 4) = 0;
  v293 = v183;
  swift_willThrow();
  sub_1C0CF448C(v124, v50);
  v150 = v273;

  v185 = v274;

  v186 = v275;
  v187 = v290;

  v188 = v276;
  v155 = &v318;
LABEL_70:

LABEL_71:
  v189 = v272;
  v13 = v271;
LABEL_72:

  return v13;
}