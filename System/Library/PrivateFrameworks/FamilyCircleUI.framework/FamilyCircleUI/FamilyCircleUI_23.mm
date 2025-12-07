uint64_t sub_21BDE671C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v49 = a2;
  v10 = sub_21BE26A4C();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v16);
  v18 = sub_21BBE7D24(v16, v17);
  if (v18 == 7)
  {
    sub_21BE261BC();
    sub_21BB3A35C(a1, v53);

    v19 = sub_21BE26A2C();
    v20 = sub_21BE28FCC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v52[0] = v22;
      *v21 = 136315394;
      v23 = v54;
      v24 = v55;
      __swift_project_boxed_opaque_existential_1Tm(v53, v54);
      v25 = sub_21BBE7CF8(v23, v24);
      v27 = v26;
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      v28 = sub_21BB3D81C(v25, v27, v52);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_21BB3D81C(v49, a3, v52);
      _os_log_impl(&dword_21BB35000, v19, v20, "%s skipped for category %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v22, -1, -1);
      MEMORY[0x21CF05C50](v21, -1, -1);

      (*(v50 + 8))(v13, v51);
    }

    else
    {

      (*(v50 + 8))(v13, v51);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
    }

LABEL_10:
    v46 = 0;
    return v46 & 1;
  }

  v29 = v18;
  v49 = v5;
  swift_beginAccess();
  v30 = *(a4 + 40);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v31);
  v33 = *(v32 + 32);

  v34 = v33(v31, v32);
  v35 = sub_21BDE51A0(v34, v30);

  if (v35)
  {
    sub_21BE261BC();
    sub_21BB3A35C(a1, v53);
    v36 = sub_21BE26A2C();
    v37 = sub_21BE28FFC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v56 = v39;
      *v38 = 136315138;
      v40 = v54;
      v41 = v55;
      __swift_project_boxed_opaque_existential_1Tm(v53, v54);
      v42 = sub_21BBE7CF8(v40, v41);
      v44 = v43;
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      v45 = sub_21BB3D81C(v42, v44, &v56);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_21BB35000, v36, v37, "%s filtered out for user", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x21CF05C50](v39, -1, -1);
      MEMORY[0x21CF05C50](v38, -1, -1);

      (*(v50 + 8))(v15, v51);
    }

    else
    {

      (*(v50 + 8))(v15, v51);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
    }

    goto LABEL_10;
  }

  v46 = sub_21BD98508(v29, a5);
  return v46 & 1;
}

uint64_t sub_21BDE6BA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_21BDE6BD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59F0, &qword_21BE32F60);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_21BDE6CB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_21BBE66D8();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_21BDE6D94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AA0, &qword_21BE33018);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_21BDE6E84(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char **a5)
{
  v6 = a2;
  v7 = a1;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v34 = a3 + 32;
  v13 = 0;

  v37 = v12;
  v38 = v8;
  while (v11)
  {
    v14 = v11;
LABEL_10:
    v11 = (v14 - 1) & v14;
    if (v6[2])
    {
      v16 = *(*(v7 + 48) + (__clz(__rbit64(v14)) | (v13 << 6)));
      v17 = sub_21BBB3230(v16);
      if (v18)
      {
        v41 = v11;
        v19 = (v6[7] + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = *(a3 + 16);

        v42 = v20;
        if (v22)
        {
          v23 = v34;
          v24 = MEMORY[0x277D84F90];
          while (1)
          {
            sub_21BB3A35C(v23, v45);
            v25 = sub_21BDE671C(v45, v20, v21, a4, v16);
            if (v5)
            {
              goto LABEL_34;
            }

            if (v25)
            {
              sub_21BB3D104(v45, v44);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v46 = v24;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_21BC59C94(0, *(v24 + 16) + 1, 1);
                v24 = v46;
              }

              v28 = *(v24 + 16);
              v27 = *(v24 + 24);
              if (v28 >= v27 >> 1)
              {
                sub_21BC59C94((v27 > 1), v28 + 1, 1);
                v24 = v46;
              }

              *(v24 + 16) = v28 + 1;
              sub_21BB3D104(v44, v24 + 40 * v28 + 32);
              v20 = v42;
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0Tm(v45);
            }

            v23 += 40;
            if (!--v22)
            {
              goto LABEL_24;
            }
          }
        }

        v24 = MEMORY[0x277D84F90];
LABEL_24:
        if (*(v24 + 16))
        {
          v29 = *a5;
          v30 = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v29;
          v7 = v40;
          if ((v30 & 1) == 0)
          {
            v29 = sub_21BBBCF94(0, *(v29 + 2) + 1, 1, v29);
            *a5 = v29;
          }

          v32 = *(v29 + 2);
          v31 = *(v29 + 3);
          if (v32 >= v31 >> 1)
          {
            v29 = sub_21BBBCF94((v31 > 1), v32 + 1, 1, v29);
            *a5 = v29;
          }

          *(v29 + 2) = v32 + 1;
          v33 = &v29[32 * v32];
          *(v33 + 4) = v42;
          *(v33 + 5) = v21;
          *(v33 + 6) = v24;
          v33[56] = v16;
        }

        else
        {

          v7 = v40;
        }

        v8 = v38;
        v6 = a2;
        v12 = v37;
        v11 = v41;
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return;
    }

    v14 = *(v8 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_34:

  __swift_destroy_boxed_opaque_existential_0Tm(v45);

  __break(1u);
}

uint64_t sub_21BDE7180(char *__src, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v73 = a5;
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = (a2 - __src) / 40;
  v11 = a3 - a2;
  v12 = (a3 - a2) / 40;
  if (v10 >= v12)
  {
    if (a4 != a2 || &a2[40 * v12] <= a4)
    {
      memmove(a4, a2, 40 * v12);
    }

    v66 = &v5[40 * v12];
    if (v11 < 40 || v7 <= v8)
    {
      v35 = v7;
      goto LABEL_53;
    }

    v36 = v7;
    while (1)
    {
      __dst = v36;
      v37 = (v36 - 40);
      v38 = (v66 - 40);
      v6 -= 40;
      v65 = v36 - 40;
      while (1)
      {
        sub_21BB3A35C(v38, v70);
        sub_21BB3A35C(v37, v67);
        v41 = *(v73 + 16);
        v42 = v71;
        v43 = v72;
        __swift_project_boxed_opaque_existential_1Tm(v70, v71);
        v44 = sub_21BBE7CF8(v42, v43);
        if (*(v41 + 16))
        {
          v46 = sub_21BBB3108(v44, v45);
          v48 = v47;

          if (v48)
          {
            v49 = *(*(v41 + 56) + 8 * v46);
            goto LABEL_39;
          }
        }

        else
        {
        }

        v49 = 0;
LABEL_39:
        v50 = v68;
        v51 = v69;
        __swift_project_boxed_opaque_existential_1Tm(v67, v68);
        v52 = sub_21BBE7CF8(v50, v51);
        if (*(v41 + 16))
        {
          v54 = sub_21BBB3108(v52, v53);
          v56 = v55;

          if (v56)
          {
            v57 = *(*(v41 + 56) + 8 * v54);
            goto LABEL_44;
          }
        }

        else
        {
        }

        v57 = 0;
LABEL_44:
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        __swift_destroy_boxed_opaque_existential_0Tm(v70);
        if (v49 < v57)
        {
          break;
        }

        v37 = v65;
        if (v6 + 40 != v38 + 40)
        {
          v58 = *v38;
          v59 = *(v38 + 16);
          *(v6 + 32) = *(v38 + 32);
          *v6 = v58;
          *(v6 + 16) = v59;
        }

        v39 = v38 - 40;
        v6 -= 40;
        v40 = v38 > v5;
        v38 -= 40;
        if (!v40)
        {
          v66 = (v39 + 40);
          v35 = __dst;
          goto LABEL_53;
        }
      }

      v35 = v65;
      if ((v6 + 40) != __dst)
      {
        v60 = *v65;
        v61 = *(v65 + 1);
        *(v6 + 32) = *(v65 + 4);
        *v6 = v60;
        *(v6 + 16) = v61;
      }

      v66 = (v38 + 40);
      if (v38 + 40 > v5)
      {
        v36 = v65;
        if (v65 > v8)
        {
          continue;
        }
      }

      v66 = (v38 + 40);
      goto LABEL_53;
    }
  }

  if (a4 != __src || &__src[40 * v10] <= a4)
  {
    memmove(a4, __src, 40 * v10);
  }

  v66 = &v5[40 * v10];
  if (v9 >= 40 && v7 < v6)
  {
    do
    {
      sub_21BB3A35C(v7, v70);
      sub_21BB3A35C(v5, v67);
      v13 = *(v73 + 16);
      v14 = v71;
      v15 = v72;
      __swift_project_boxed_opaque_existential_1Tm(v70, v71);
      v16 = sub_21BBE7CF8(v14, v15);
      if (*(v13 + 16))
      {
        v18 = v7;
        v19 = sub_21BBB3108(v16, v17);
        v21 = v20;

        if (v21)
        {
          v22 = *(*(v13 + 56) + 8 * v19);
          goto LABEL_12;
        }
      }

      else
      {
        v18 = v7;
      }

      v22 = 0;
LABEL_12:
      v23 = v68;
      v24 = v69;
      __swift_project_boxed_opaque_existential_1Tm(v67, v68);
      v25 = sub_21BBE7CF8(v23, v24);
      if (*(v13 + 16))
      {
        v27 = sub_21BBB3108(v25, v26);
        v29 = v28;

        if (v29)
        {
          v30 = *(*(v13 + 56) + 8 * v27);
          goto LABEL_17;
        }
      }

      else
      {
      }

      v30 = 0;
LABEL_17:
      __swift_destroy_boxed_opaque_existential_0Tm(v67);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      if (v22 >= v30)
      {
        v31 = v5;
        v32 = v8 == v5;
        v5 += 40;
        v7 = v18;
        if (v32)
        {
          goto LABEL_22;
        }

LABEL_21:
        v33 = *v31;
        v34 = *(v31 + 1);
        *(v8 + 4) = *(v31 + 4);
        *v8 = v33;
        *(v8 + 1) = v34;
        goto LABEL_22;
      }

      v31 = v18;
      v7 = v18 + 40;
      if (v8 != v18)
      {
        goto LABEL_21;
      }

LABEL_22:
      v8 += 40;
    }

    while (v5 < v66 && v7 < v6);
  }

  v35 = v8;
LABEL_53:
  v62 = (v66 - v5) / 40;
  if (v35 != v5 || v35 >= &v5[40 * v62])
  {
    memmove(v35, v5, 40 * v62);
  }

  return 1;
}

void sub_21BDE760C(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v23 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v23 = sub_21BDFD0AC(v23);
  }

  v19 = v6;
  *v6 = v23;
  v8 = (v23 + 16);
  v9 = *(v23 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v19 = v23;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v23[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 40 * *v6);
      v15 = (v10 + 40 * *v13);
      v16 = v10 + 40 * v14;

      sub_21BDE7180(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v19 = v23;

        return;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_12;
      }

      *v6 = v12;
      v6[1] = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_13;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v23;
    __break(1u);
  }
}

uint64_t sub_21BDE77B8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v6 = a3[1];
  v140 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_retain_n();
    v8 = 0;
    v130 = MEMORY[0x277D84F90];
    v132 = a5;
    v121 = a4;
    while (1)
    {
      if (v8 + 1 >= v6)
      {
        v6 = v8 + 1;
        goto LABEL_34;
      }

      v9 = *a3;
      sub_21BB3A35C(*a3 + 40 * (v8 + 1), &v137);
      sub_21BB3A35C(v9 + 40 * v8, v134);
      v127 = sub_21BBE9E64(&v137, v134, a5);
      if (v133)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v134);
        __swift_destroy_boxed_opaque_existential_0Tm(&v137);
        goto LABEL_115;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v134);
      __swift_destroy_boxed_opaque_existential_0Tm(&v137);
      v10 = v8 + 2;
      v119 = v8;
      v11 = 40 * v8;
      v12 = v9 + 40 * v8 + 80;
      while (v6 != v10)
      {
        v15 = v6;
        sub_21BB3A35C(v12, &v137);
        sub_21BB3A35C(v12 - 40, v134);
        v16 = *(a5 + 2);
        v17 = v138;
        v18 = v139;
        __swift_project_boxed_opaque_existential_1Tm(&v137, v138);
        v19 = sub_21BBE7CF8(v17, v18);
        if (*(v16 + 16))
        {
          v21 = sub_21BBB3108(v19, v20);
          v23 = v22;

          if (v23)
          {
            v24 = *(*(v16 + 56) + 8 * v21);
            goto LABEL_17;
          }
        }

        else
        {
        }

        v24 = 0;
LABEL_17:
        v25 = v135;
        v26 = v136;
        __swift_project_boxed_opaque_existential_1Tm(v134, v135);
        v27 = sub_21BBE7CF8(v25, v26);
        if (*(v16 + 16))
        {
          v29 = sub_21BBB3108(v27, v28);
          v31 = v30;

          if (v31)
          {
            v13 = *(*(v16 + 56) + 8 * v29);
            goto LABEL_10;
          }
        }

        else
        {
        }

        v13 = 0;
LABEL_10:
        __swift_destroy_boxed_opaque_existential_0Tm(v134);
        __swift_destroy_boxed_opaque_existential_0Tm(&v137);
        v14 = v24 >= v13;
        ++v10;
        v12 += 40;
        a5 = v132;
        v6 = v15;
        if (((v127 ^ v14) & 1) == 0)
        {
          v6 = v10 - 1;
          break;
        }
      }

      if (!v127)
      {
        a4 = v121;
        goto LABEL_33;
      }

      v32 = v119;
      if (v6 < v119)
      {
        break;
      }

      if (v119 >= v6)
      {
        a4 = v121;
        v8 = v119;
      }

      else
      {
        v33 = 40 * v6 - 40;
        v34 = v6;
        a4 = v121;
        do
        {
          if (v32 != --v34)
          {
            v35 = *a3;
            if (!*a3)
            {
              goto LABEL_141;
            }

            v36 = v35 + v11;
            v37 = v35 + v33;
            sub_21BB3D104((v35 + v11), &v137);
            v38 = *(v37 + 32);
            v39 = *(v37 + 16);
            *v36 = *v37;
            *(v36 + 16) = v39;
            *(v36 + 32) = v38;
            sub_21BB3D104(&v137, v37);
          }

          ++v32;
          v33 -= 40;
          v11 += 40;
        }

        while (v32 < v34);
        a5 = v132;
LABEL_33:
        v8 = v119;
      }

LABEL_34:
      v40 = a3[1];
      if (v6 >= v40)
      {
        goto LABEL_61;
      }

      if (__OFSUB__(v6, v8))
      {
        goto LABEL_135;
      }

      if (v6 - v8 >= a4)
      {
        goto LABEL_61;
      }

      if (__OFADD__(v8, a4))
      {
        goto LABEL_136;
      }

      if (v8 + a4 < v40)
      {
        v40 = v8 + a4;
      }

      if (v40 < v8)
      {
LABEL_137:
        __break(1u);
        break;
      }

      if (v6 == v40)
      {
        goto LABEL_61;
      }

      v123 = v40;
      v41 = *a3;
      v42 = *(a5 + 2);
      v43 = *a3 + 40 * v6;
      v120 = v8;
      v44 = v8 - v6;
      while (2)
      {
        v126 = v43;
        v128 = v6;
        v125 = v44;
        v45 = v43;
        while (2)
        {
          sub_21BB3A35C(v45, &v137);
          sub_21BB3A35C(v45 - 40, v134);
          v46 = v138;
          v47 = v139;
          __swift_project_boxed_opaque_existential_1Tm(&v137, v138);
          v48 = sub_21BBE7CF8(v46, v47);
          if (*(v42 + 16))
          {
            v50 = sub_21BBB3108(v48, v49);
            v52 = v51;

            if (v52)
            {
              v53 = *(*(v42 + 56) + 8 * v50);
              goto LABEL_50;
            }
          }

          else
          {
          }

          v53 = 0;
LABEL_50:
          v54 = v135;
          v55 = v136;
          __swift_project_boxed_opaque_existential_1Tm(v134, v135);
          v56 = sub_21BBE7CF8(v54, v55);
          if (*(v42 + 16))
          {
            v58 = sub_21BBB3108(v56, v57);
            v60 = v59;

            if (v60)
            {
              v61 = *(*(v42 + 56) + 8 * v58);
              goto LABEL_55;
            }
          }

          else
          {
          }

          v61 = 0;
LABEL_55:
          __swift_destroy_boxed_opaque_existential_0Tm(v134);
          __swift_destroy_boxed_opaque_existential_0Tm(&v137);
          if (v53 >= v61)
          {
            break;
          }

          if (!v41)
          {
            goto LABEL_139;
          }

          sub_21BB3D104(v45, &v137);
          v62 = *(v45 - 24);
          *v45 = *(v45 - 40);
          *(v45 + 16) = v62;
          *(v45 + 32) = *(v45 - 8);
          sub_21BB3D104(&v137, v45 - 40);
          v45 -= 40;
          if (!__CFADD__(v44++, 1))
          {
            continue;
          }

          break;
        }

        v6 = (v128 + 1);
        v43 = v126 + 40;
        v44 = v125 - 1;
        if (v128 + 1 != v123)
        {
          continue;
        }

        break;
      }

      v8 = v120;
      v6 = v123;
LABEL_61:
      v64 = v130;
      if (v6 < v8)
      {
        goto LABEL_134;
      }

      v124 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_21BBBCBFC(0, *(v130 + 16) + 1, 1, v130);
      }

      v66 = *(v64 + 2);
      v65 = *(v64 + 3);
      v67 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        v64 = sub_21BBBCBFC((v65 > 1), v66 + 1, 1, v64);
      }

      *(v64 + 2) = v67;
      v68 = v64 + 32;
      v69 = &v64[16 * v66 + 32];
      *v69 = v8;
      *(v69 + 1) = v6;
      v140 = v64;
      v129 = *a1;
      if (!*a1)
      {
        goto LABEL_142;
      }

      v130 = v64;
      if (v66)
      {
        while (1)
        {
          v70 = v67 - 1;
          if (v67 >= 4)
          {
            break;
          }

          if (v67 == 3)
          {
            v71 = *(v64 + 4);
            v72 = *(v64 + 5);
            v81 = __OFSUB__(v72, v71);
            v73 = v72 - v71;
            v74 = v81;
LABEL_81:
            if (v74)
            {
              goto LABEL_125;
            }

            v87 = &v64[16 * v67];
            v89 = *v87;
            v88 = *(v87 + 1);
            v90 = __OFSUB__(v88, v89);
            v91 = v88 - v89;
            v92 = v90;
            if (v90)
            {
              goto LABEL_128;
            }

            v93 = &v68[16 * v70];
            v95 = *v93;
            v94 = *(v93 + 1);
            v81 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v81)
            {
              goto LABEL_131;
            }

            if (__OFADD__(v91, v96))
            {
              goto LABEL_132;
            }

            if (v91 + v96 >= v73)
            {
              if (v73 < v96)
              {
                v70 = v67 - 2;
              }

              goto LABEL_102;
            }

            goto LABEL_95;
          }

          v97 = &v64[16 * v67];
          v99 = *v97;
          v98 = *(v97 + 1);
          v81 = __OFSUB__(v98, v99);
          v91 = v98 - v99;
          v92 = v81;
LABEL_95:
          if (v92)
          {
            goto LABEL_127;
          }

          v100 = &v68[16 * v70];
          v102 = *v100;
          v101 = *(v100 + 1);
          v81 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v81)
          {
            goto LABEL_130;
          }

          if (v103 < v91)
          {
            goto LABEL_3;
          }

LABEL_102:
          if (v70 - 1 >= v67)
          {
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
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          v108 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v109 = &v68[16 * v70 - 16];
          v110 = *v109;
          v111 = &v68[16 * v70];
          v112 = *(v111 + 1);
          v113 = (v108 + 40 * *v109);
          v114 = (v108 + 40 * *v111);
          v115 = v108 + 40 * v112;

          sub_21BDE7180(v113, v114, v115, v129, v132);
          if (v133)
          {

            v140 = v130;
            goto LABEL_115;
          }

          if (v112 < v110)
          {
            goto LABEL_120;
          }

          v64 = v130;
          v116 = *(v130 + 16);
          if (v70 > v116)
          {
            goto LABEL_121;
          }

          *v109 = v110;
          *(v109 + 1) = v112;
          if (v70 >= v116)
          {
            goto LABEL_122;
          }

          v67 = v116 - 1;
          memmove(&v68[16 * v70], v111 + 16, 16 * (v116 - 1 - v70));
          *(v130 + 16) = v116 - 1;
          if (v116 <= 2)
          {
LABEL_3:
            v140 = v64;
            goto LABEL_4;
          }
        }

        v75 = &v68[16 * v67];
        v76 = *(v75 - 8);
        v77 = *(v75 - 7);
        v81 = __OFSUB__(v77, v76);
        v78 = v77 - v76;
        if (v81)
        {
          goto LABEL_123;
        }

        v80 = *(v75 - 6);
        v79 = *(v75 - 5);
        v81 = __OFSUB__(v79, v80);
        v73 = v79 - v80;
        v74 = v81;
        if (v81)
        {
          goto LABEL_124;
        }

        v82 = &v64[16 * v67];
        v84 = *v82;
        v83 = *(v82 + 1);
        v81 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v81)
        {
          goto LABEL_126;
        }

        v81 = __OFADD__(v73, v85);
        v86 = v73 + v85;
        if (v81)
        {
          goto LABEL_129;
        }

        if (v86 >= v78)
        {
          v104 = &v68[16 * v70];
          v106 = *v104;
          v105 = *(v104 + 1);
          v81 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v81)
          {
            goto LABEL_133;
          }

          if (v73 < v107)
          {
            v70 = v67 - 2;
          }

          goto LABEL_102;
        }

        goto LABEL_81;
      }

LABEL_4:
      a5 = v132;
      v6 = a3[1];
      v8 = v124;
      a4 = v121;
      if (v124 >= v6)
      {
        goto LABEL_112;
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

    __break(1u);
    goto LABEL_143;
  }

  swift_retain_n();
LABEL_112:
  v117 = *a1;
  if (!*a1)
  {
LABEL_143:

    __break(1u);
    return result;
  }

  sub_21BDE760C(&v140, v117, a3, a5);
  if (v133)
  {

LABEL_115:
  }

  else
  {
  }
}

uint64_t sub_21BDE802C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *(a5 + 16);
    v7 = *a4 + 40 * a3;
    v8 = result - a3;
LABEL_5:
    v36 = a3;
    v28 = v8;
    v29 = v7;
    while (1)
    {
      sub_21BB3A35C(v7, &v33);
      sub_21BB3A35C(v7 - 40, v30);
      v9 = v34;
      v10 = v35;
      __swift_project_boxed_opaque_existential_1Tm(&v33, v34);
      v11 = sub_21BBE7CF8(v9, v10);
      if (*(v6 + 16))
      {
        v13 = sub_21BBB3108(v11, v12);
        v15 = v14;

        if (v15)
        {
          v16 = *(*(v6 + 56) + 8 * v13);
          goto LABEL_11;
        }
      }

      else
      {
      }

      v16 = 0;
LABEL_11:
      v17 = v31;
      v18 = v32;
      __swift_project_boxed_opaque_existential_1Tm(v30, v31);
      v19 = sub_21BBE7CF8(v17, v18);
      if (*(v6 + 16))
      {
        v21 = sub_21BBB3108(v19, v20);
        v23 = v22;

        if (v23)
        {
          v24 = *(*(v6 + 56) + 8 * v21);
          goto LABEL_16;
        }
      }

      else
      {
      }

      v24 = 0;
LABEL_16:
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v33);
      if (v16 >= v24)
      {
        goto LABEL_4;
      }

      if (!v5)
      {
        __break(1u);
        return result;
      }

      sub_21BB3D104(v7, &v33);
      v25 = *(v7 - 24);
      *v7 = *(v7 - 40);
      *(v7 + 16) = v25;
      *(v7 + 32) = *(v7 - 8);
      result = sub_21BB3D104(&v33, v7 - 40);
      v7 -= 40;
      if (__CFADD__(v8++, 1))
      {
LABEL_4:
        a3 = v36 + 1;
        v7 = v29 + 40;
        v8 = v28 - 1;
        if (v36 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_21BDE81FC(uint64_t *a1, char *a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_21BE2991C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59E8, &unk_21BE3A400);
        v8 = sub_21BE28C7C();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_21BDE77B8(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_21BDE802C(0, v4, 1, a1, a2);
  }
}

uint64_t sub_21BDE8354(uint64_t *a1, char *a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_21BDFD58C(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;

  sub_21BDE81FC(v7, a2);

  *a1 = v4;
}

void sub_21BDE83F8(unint64_t a1)
{
  v113 = sub_21BE25FCC();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BD6F00 != -1)
  {
    goto LABEL_207;
  }

  while (1)
  {
    v110 = qword_280BDCB50;
    sub_21BE261BC();
    v7 = sub_21BE26A2C();
    v8 = sub_21BE28FFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v126 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_21BB3D81C(0xD00000000000002ELL, 0x800000021BE62210, &v126);
      _os_log_impl(&dword_21BB35000, v7, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x21CF05C50](v10, -1, -1);
      MEMORY[0x21CF05C50](v9, -1, -1);
    }

    v11 = v4[1];
    ++v4;
    v11(v6, v3);
    *&v126 = sub_21BE2975C();

    v12 = 0;
    sub_21BDE8354(&v126, a1);

    v13 = v126;
    v3 = v110;
    swift_beginAccess();
    sub_21BDE9A4C(v3 + 64, &v126);
    if (!v126)
    {
      break;
    }

    v6 = v127;

    sub_21BBFD7AC(&v126);
    v14 = MEMORY[0x277D84F90];
    *&v126 = MEMORY[0x277D84F90];

    sub_21BDE6E84(v6, v6, v13, v3, &v126);
    v105[1] = 0;
    swift_bridgeObjectRelease_n();

    v15 = v126;
    v116 = *(a1 + 24);
    v115 = *(v116 + 16);
    if (v115)
    {
      *&v126 = v14;
LABEL_8:
      v17 = *(v15 + 16);
      v114 = v116 + 32;
      v121 = 0x800000021BE542B0;

      v18 = 0;
      v118 = (v15 + 56);
      v122 = v17;
      v117 = v17 - 1;
      v123 = v15;
LABEL_10:
      if (v18 >= *(v116 + 16))
      {
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
        goto LABEL_205;
      }

      v119 = v18;
      if (!v122)
      {
        v14 = MEMORY[0x277D84F90];
        goto LABEL_9;
      }

      v19 = 0;
      v4 = *(v114 + v18);
      v14 = MEMORY[0x277D84F90];
LABEL_13:
      v120 = v14;
      v20 = &v118[32 * v19];
      v3 = v19;
      while (1)
      {
        if (v3 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_167;
        }

        v21 = *v20;
        if (v21 <= 2)
        {
          v23 = 0x7069726373627573;
          if (v21 != 1)
          {
            v23 = 0x646C696843726F66;
          }

          v24 = 0xED0000736E6F6974;
          if (v21 != 1)
          {
            v24 = 0xEB000000006E6572;
          }

          if (*v20)
          {
            v22 = v23;
          }

          else
          {
            v22 = 0x756F59726F66;
          }

          if (*v20)
          {
            v6 = v24;
          }

          else
          {
            v6 = 0xE600000000000000;
          }

          if (v4 <= 2)
          {
LABEL_55:
            if (v4)
            {
              if (v4 == 1)
              {
                v29 = 0x7069726373627573;
              }

              else
              {
                v29 = 0x646C696843726F66;
              }

              if (v4 == 1)
              {
                v30 = 0xED0000736E6F6974;
              }

              else
              {
                v30 = 0xEB000000006E6572;
              }
            }

            else
            {
              v30 = 0xE600000000000000;
              v29 = 0x756F59726F66;
            }

            goto LABEL_63;
          }
        }

        else if (*v20 > 4u)
        {
          if (v21 == 5)
          {
            v22 = 0xD000000000000014;
            v6 = v121;
            if (v4 <= 2)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v22 = 0x4D65726F6C707865;
            v6 = 0xEB0000000065726FLL;
            if (v4 <= 2)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
          if (v21 == 3)
          {
            v22 = 0x746553646C696863;
          }

          else
          {
            v22 = 0x7250797465666173;
          }

          if (v21 == 3)
          {
            v6 = 0xEA00000000007075;
          }

          else
          {
            v6 = 0xED00007963617669;
          }

          if (v4 <= 2)
          {
            goto LABEL_55;
          }
        }

        if (v4 == 5)
        {
          v25 = 0xD000000000000014;
        }

        else
        {
          v25 = 0x4D65726F6C707865;
        }

        v26 = 0xEB0000000065726FLL;
        if (v4 == 5)
        {
          v26 = v121;
        }

        v27 = 0x746553646C696863;
        if (v4 != 3)
        {
          v27 = 0x7250797465666173;
        }

        v28 = 0xED00007963617669;
        if (v4 == 3)
        {
          v28 = 0xEA00000000007075;
        }

        if (v4 <= 4)
        {
          v29 = v27;
        }

        else
        {
          v29 = v25;
        }

        if (v4 <= 4)
        {
          v30 = v28;
        }

        else
        {
          v30 = v26;
        }

LABEL_63:
        v31 = *(v20 - 3);
        a1 = *(v20 - 2);
        v32 = *(v20 - 1);
        if (v22 == v29 && v6 == v30)
        {

LABEL_69:
          v14 = v120;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v124[0] = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v6 = v124;
            sub_21BC59C74(0, *(v14 + 16) + 1, 1);
            v14 = *&v124[0];
          }

          v35 = *(v14 + 16);
          v34 = *(v14 + 24);
          if (v35 >= v34 >> 1)
          {
            v6 = v124;
            sub_21BC59C74((v34 > 1), v35 + 1, 1);
            v14 = *&v124[0];
          }

          v19 = v3 + 1;
          *(v14 + 16) = v35 + 1;
          v36 = v14 + 32 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = a1;
          *(v36 + 48) = v32;
          *(v36 + 56) = v21;
          v15 = v123;
          if (v117 == v3)
          {
LABEL_9:
            v18 = v119 + 1;
            v6 = &v126;
            sub_21BDE5ACC(v14);
            if (v18 == v115)
            {

              v14 = v126;
              goto LABEL_77;
            }

            goto LABEL_10;
          }

          goto LABEL_13;
        }

        v14 = sub_21BE2995C();

        if (v14)
        {
          goto LABEL_69;
        }

        ++v3;

        v20 += 32;
        v15 = v123;
        if (v122 == v3)
        {
          v14 = v120;
          goto LABEL_9;
        }
      }
    }

    v6 = v3;
    *(a1 + 24) = sub_21BBFC4BC(v126);

    v116 = *(a1 + 24);
    v16 = *(v116 + 16);
    *&v126 = v14;
    v115 = v16;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_77:
    v37 = v112;
    v3 = v111;
    v38 = v113;
    (*(v112 + 104))(v111, *MEMORY[0x277D07F38], v113);
    v39 = MEMORY[0x21CF01150](v3);
    v40 = *(v37 + 8);
    v12 = (v37 + 8);
    v40(v3, v38);
    if ((v39 & 1) == 0)
    {
LABEL_200:

      return;
    }

    sub_21BDE9A4C(v110 + 64, &v126);
    if (!v126)
    {
      goto LABEL_210;
    }

    v41 = v129;
    if (v130)
    {
      v41 = 500;
    }

    v105[0] = v41;
    sub_21BBFD7AC(&v126);
    v6 = *(v14 + 16);
    swift_beginAccess();
    v119 = v14 + 32;
    v109 = v14;
    v120 = v6;
    if (v6)
    {
      v42 = 0;
      v118 = 0x800000021BE544F0;
      v117 = 0x800000021BE544D0;
      v116 = 0x800000021BE544B0;
      v115 = 0x800000021BE54490;
      v114 = 0x800000021BE54460;
      v113 = 0x800000021BE54420;
      v112 = 0x800000021BE543F0;
      v111 = 0x800000021BE543D0;
      v106 = MEMORY[0x277D84F90];
      v43 = v110;
      while (v42 < *(v14 + 16))
      {
        v44 = v119 + 32 * v42;
        v45 = *v44;
        a1 = *(v44 + 16);
        v46 = *(v44 + 24);
        v6 = *(v43 + 184);
        v47 = *(v6 + 16);
        v121 = *(v44 + 8);

        v108 = v45;
        if (v47)
        {

          v48 = sub_21BBB3230(v46);
          if (v49)
          {
            v50 = *(*(v6 + 56) + 8 * v48);
          }

          else
          {
            v50 = -1;
          }

          v123 = v50;
        }

        else
        {
          v123 = -1;
        }

        v107 = v46;
        v122 = v42;
        v3 = *(a1 + 16);
        if (v3)
        {
          v51 = 0;
          v52 = a1 + 32;
          v4 = MEMORY[0x277D84F90];
          while (v51 < *(a1 + 16))
          {
            sub_21BB3A35C(v52, &v126);
            v53 = v127;
            v54 = v128;
            v6 = __swift_project_boxed_opaque_existential_1Tm(&v126, v127);
            if (((*(v54 + 24))(v53, v54) & 1) != 0 || (v55 = v127, v56 = v128, v57 = __swift_project_boxed_opaque_existential_1Tm(&v126, v127), v58 = v56, v6 = v57, sub_21BBE7DA8(v55, v58)))
            {
              __swift_destroy_boxed_opaque_existential_0Tm(&v126);
            }

            else
            {
              sub_21BB3D104(&v126, v124);
              v59 = swift_isUniquelyReferenced_nonNull_native();
              v125 = v4;
              if ((v59 & 1) == 0)
              {
                v6 = &v125;
                sub_21BC59C94(0, v4[2] + 1, 1);
                v4 = v125;
              }

              v61 = v4[2];
              v60 = v4[3];
              if (v61 >= v60 >> 1)
              {
                v6 = &v125;
                sub_21BC59C94((v60 > 1), v61 + 1, 1);
                v4 = v125;
              }

              v4[2] = v61 + 1;
              sub_21BB3D104(v124, &v4[5 * v61 + 4]);
            }

            ++v51;
            v52 += 40;
            if (v3 == v51)
            {
              goto LABEL_103;
            }
          }

          __break(1u);
LABEL_202:
          __break(1u);
          goto LABEL_203;
        }

        v4 = MEMORY[0x277D84F90];
LABEL_103:
        if (v123 > 0)
        {
          v62 = v4[2];
          if (v62)
          {
            v63 = 0;
            v64 = 0;
            v65 = (v4 + 4);
            v66 = MEMORY[0x277D84F90];
            do
            {
              sub_21BB3A35C(v65, &v126);
              v67 = v127;
              v3 = v128;
              __swift_project_boxed_opaque_existential_1Tm(&v126, v127);
              v6 = 0xE700000000000000;
              v68 = (*(v3 + 32))(v67, v3);
              v69 = 0x6E776F6E6B6E75;
              switch(v68)
              {
                case 1:
                  v69 = 0x696D694C6D6D6F63;
                  v6 = 0xEE006D6574497374;
                  break;
                case 2:
                  v69 = 0xD000000000000013;
                  v70 = &v131;
                  goto LABEL_121;
                case 3:
                  v69 = 0xD000000000000014;
                  v70 = &v132;
                  goto LABEL_121;
                case 4:
                  v69 = 0x6E6F697461636F6CLL;
                  v6 = 0xEC0000006D657449;
                  break;
                case 5:
                  v69 = 0xD000000000000013;
                  v70 = &v133;
                  goto LABEL_121;
                case 6:
                  v69 = 0x69636966656E6562;
                  v6 = 0xEF6D657449797261;
                  break;
                case 7:
                  v6 = 0xEE006D6574497375;
                  v69 = 0x6C5064756F6C4369;
                  break;
                case 8:
                  v6 = 0xE800000000000000;
                  v69 = 0x6D657449656D6F68;
                  break;
                case 9:
                  v69 = 0xD000000000000013;
                  v70 = &v134;
                  goto LABEL_121;
                case 10:
                  v69 = 0x736143656C707061;
                  v6 = 0xED00006D65744968;
                  break;
                case 11:
                  v69 = 0x49746361746E6F63;
                  v6 = 0xEB000000006D6574;
                  break;
                case 12:
                  v69 = 0xD000000000000012;
                  v70 = &v135;
                  goto LABEL_121;
                case 13:
                  v69 = 0xD000000000000015;
                  v70 = &v136;
                  goto LABEL_121;
                case 14:
                  v69 = 0xD000000000000018;
                  v70 = &v137;
                  goto LABEL_121;
                case 15:
                  v69 = 0xD000000000000012;
                  v70 = &v138;
LABEL_121:
                  v6 = *(v70 - 32);
                  break;
                default:
                  break;
              }

              v71 = 0xE700000000000000;
              v72 = 0x6E776F6E6B6E75;
              switch(v63)
              {
                case 1:
                  v72 = 0x696D694C6D6D6F63;
                  v71 = 0xEE006D6574497374;
                  break;
                case 2:
                  v72 = 0xD000000000000013;
                  v73 = &v131;
                  goto LABEL_135;
                case 3:
                  v72 = 0xD000000000000014;
                  v73 = &v132;
                  goto LABEL_135;
                case 4:
                  v72 = 0x6E6F697461636F6CLL;
                  v71 = 0xEC0000006D657449;
                  break;
                case 5:
                  v72 = 0xD000000000000013;
                  v73 = &v133;
                  goto LABEL_135;
                case 6:
                  v72 = 0x69636966656E6562;
                  v71 = 0xEF6D657449797261;
                  break;
                case 7:
                  v71 = 0xEE006D6574497375;
                  v72 = 0x6C5064756F6C4369;
                  break;
                case 8:
                  v71 = 0xE800000000000000;
                  v72 = 0x6D657449656D6F68;
                  break;
                case 9:
                  v72 = 0xD000000000000013;
                  v73 = &v134;
                  goto LABEL_135;
                case 10:
                  v72 = 0x736143656C707061;
                  v71 = 0xED00006D65744968;
                  break;
                case 11:
                  v72 = 0x49746361746E6F63;
                  v71 = 0xEB000000006D6574;
                  break;
                case 12:
                  v72 = 0xD000000000000012;
                  v73 = &v135;
                  goto LABEL_135;
                case 13:
                  v72 = 0xD000000000000015;
                  v73 = &v136;
                  goto LABEL_135;
                case 14:
                  v72 = 0xD000000000000018;
                  v73 = &v137;
                  goto LABEL_135;
                case 15:
                  v72 = 0xD000000000000012;
                  v73 = &v138;
LABEL_135:
                  v71 = *(v73 - 32);
                  break;
                default:
                  break;
              }

              if (v69 == v72 && v6 == v71)
              {
              }

              else
              {
                v3 = sub_21BE2995C();

                if ((v3 & 1) == 0)
                {
                  if (__OFADD__(v64++, 1))
                  {
                    goto LABEL_204;
                  }

                  v75 = v127;
                  v76 = v128;
                  v6 = __swift_project_boxed_opaque_existential_1Tm(&v126, v127);
                  v63 = (*(v76 + 32))(v75, v76);
                }
              }

              if (v123 >= v64)
              {
                sub_21BB3A35C(&v126, v124);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v66 = sub_21BBBD448(0, v66[2] + 1, 1, v66);
                }

                v6 = v66[2];
                v77 = v66[3];
                if (v6 >= v77 >> 1)
                {
                  v66 = sub_21BBBD448((v77 > 1), v6 + 1, 1, v66);
                }

                v66[2] = v6 + 1;
                sub_21BB3D104(v124, &v66[5 * v6 + 4]);
              }

              __swift_destroy_boxed_opaque_existential_0Tm(&v126);
              v65 += 40;
              --v62;
            }

            while (v62);

            v4 = v66;
            v14 = v109;
          }

          else
          {

            v4 = MEMORY[0x277D84F90];
          }
        }

        v42 = v122 + 1;
        if (v4[2])
        {

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v78 = v106;
          }

          else
          {
            v78 = sub_21BBBCF94(0, *(v106 + 2) + 1, 1, v106);
          }

          v3 = v121;
          v6 = *(v78 + 2);
          v79 = *(v78 + 3);
          v43 = v110;
          if (v6 >= v79 >> 1)
          {
            v78 = sub_21BBBCF94((v79 > 1), v6 + 1, 1, v78);
            v43 = v110;
          }

          *(v78 + 2) = v6 + 1;
          v106 = v78;
          v80 = &v78[32 * v6];
          *(v80 + 4) = v108;
          *(v80 + 5) = v3;
          *(v80 + 6) = v4;
          v80[56] = v107;
          if (v42 == v120)
          {
            goto LABEL_168;
          }
        }

        else
        {

          v43 = v110;
          if (v42 == v120)
          {
            goto LABEL_168;
          }
        }
      }

LABEL_205:
      __break(1u);
    }

    else
    {
LABEL_167:
      v106 = MEMORY[0x277D84F90];
LABEL_168:
      if (v105[0] > 0)
      {
        v6 = v106;
        if (v105[0] < *(v106 + 2))
        {
          sub_21BE2999C();
          swift_unknownObjectRetain_n();

          v81 = swift_dynamicCastClass();
          if (!v81)
          {
            swift_unknownObjectRelease();
            v81 = MEMORY[0x277D84F90];
          }

          v82 = *(v81 + 16);

          if (v82 == v105[0])
          {
            v6 = v106;
            v83 = swift_dynamicCastClass();
            if (!v83)
            {
              swift_unknownObjectRelease();
              v83 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v103 = (2 * v105[0]) | 1;
            v6 = v106;
            swift_unknownObjectRelease();
            sub_21BDE6BD8(v6, v6 + 32, 0, v103);
            v83 = v104;
          }

          swift_unknownObjectRelease();
          v106 = v83;
        }
      }

      if (!v120)
      {
        goto LABEL_200;
      }

      v84 = 0;
      v118 = MEMORY[0x277D84F90];
      while (v84 < *(v14 + 16))
      {
        v85 = v119 + 32 * v84;
        v86 = *(v85 + 8);
        v122 = *v85;
        v87 = *(v85 + 16);
        LODWORD(v121) = *(v85 + 24);
        v88 = *(v87 + 16);
        v123 = v86;

        if (v88)
        {
          v89 = 0;
          v90 = v87 + 32;
          v4 = MEMORY[0x277D84F90];
          while (v89 < *(v87 + 16))
          {
            sub_21BB3A35C(v90, &v126);
            v91 = v127;
            a1 = v128;
            v6 = __swift_project_boxed_opaque_existential_1Tm(&v126, v127);
            if (((*(a1 + 24))(v91, a1) & 1) != 0 || (v92 = v127, v3 = v128, v93 = __swift_project_boxed_opaque_existential_1Tm(&v126, v127), v94 = v92, v6 = v93, sub_21BBE7DA8(v94, v3)))
            {
              sub_21BB3D104(&v126, v124);
              v95 = swift_isUniquelyReferenced_nonNull_native();
              v125 = v4;
              if ((v95 & 1) == 0)
              {
                v6 = &v125;
                sub_21BC59C94(0, v4[2] + 1, 1);
                v4 = v125;
              }

              v3 = v4[2];
              v96 = v4[3];
              a1 = v3 + 1;
              if (v3 >= v96 >> 1)
              {
                v6 = &v125;
                sub_21BC59C94((v96 > 1), v3 + 1, 1);
                v4 = v125;
              }

              v4[2] = a1;
              sub_21BB3D104(v124, &v4[5 * v3 + 4]);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_0Tm(&v126);
            }

            ++v89;
            v90 += 40;
            if (v88 == v89)
            {
              goto LABEL_192;
            }
          }

          goto LABEL_202;
        }

        v4 = MEMORY[0x277D84F90];
LABEL_192:
        ++v84;
        if (v4[2])
        {

          v97 = swift_isUniquelyReferenced_nonNull_native();
          v14 = v109;
          if ((v97 & 1) == 0)
          {
            v118 = sub_21BBBCF94(0, *(v118 + 2) + 1, 1, v118);
          }

          v99 = *(v118 + 2);
          v98 = *(v118 + 3);
          v6 = v99 + 1;
          if (v99 >= v98 >> 1)
          {
            v118 = sub_21BBBCF94((v98 > 1), v99 + 1, 1, v118);
          }

          v100 = v118;
          *(v118 + 2) = v6;
          v101 = &v100[32 * v99];
          v102 = v123;
          *(v101 + 4) = v122;
          *(v101 + 5) = v102;
          *(v101 + 6) = v4;
          v101[56] = v121;
          if (v84 == v120)
          {
            goto LABEL_200;
          }
        }

        else
        {

          v14 = v109;
          if (v84 == v120)
          {
            goto LABEL_200;
          }
        }
      }
    }

    __break(1u);
LABEL_207:
    swift_once();
  }

  __break(1u);
LABEL_210:
  __break(1u);

  __break(1u);
}

uint64_t sub_21BDE9A4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6878, &unk_21BE357E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21BDE9ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v30 = MEMORY[0x277D84F90];
    sub_21BC59D54(0, v1, 0);
    v3 = 0;
    v4 = v30;
    v23 = v1;
    v24 = a1 + 32;
    while (1)
    {
      v5 = *(v24 + 32 * v3 + 16);
      v6 = *(v5 + 16);

      if (v6)
      {
        break;
      }

      v9 = MEMORY[0x277D84F90];
LABEL_15:

      v15 = *(v9 + 16);

      v30 = v4;
      v17 = *(v4 + 16);
      v16 = *(v4 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_21BC59D54((v16 > 1), v17 + 1, 1);
        v4 = v30;
      }

      ++v3;
      *(v4 + 16) = v18;
      *(v4 + 8 * v17 + 32) = v15;
      if (v3 == v23)
      {
        goto LABEL_20;
      }
    }

    v7 = 0;
    v8 = v5 + 32;
    v9 = MEMORY[0x277D84F90];
    while (v7 < *(v5 + 16))
    {
      sub_21BB3A35C(v8, &v26);
      v10 = v27;
      v11 = v28;
      __swift_project_boxed_opaque_existential_1Tm(&v26, v27);
      if (sub_21BBE7E6C(v10, v11))
      {
        sub_21BB3D104(&v26, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21BC59C94(0, *(v9 + 16) + 1, 1);
          v9 = v29;
        }

        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_21BC59C94((v13 > 1), v14 + 1, 1);
          v9 = v29;
        }

        *(v9 + 16) = v14 + 1;
        sub_21BB3D104(v25, v9 + 40 * v14 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v26);
      }

      ++v7;
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v4 = MEMORY[0x277D84F90];
  v18 = *(MEMORY[0x277D84F90] + 16);
  if (!v18)
  {
LABEL_23:

    return;
  }

LABEL_20:
  v19 = 0;
  v20 = 32;
  while (1)
  {
    v21 = *(v4 + v20);
    v22 = __OFADD__(v19, v21);
    v19 += v21;
    if (v22)
    {
      break;
    }

    v20 += 8;
    if (!--v18)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t sub_21BDE9D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_21BDE9D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_21BDE9DE8()
{
  type metadata accessor for PurchaseSharingFamilyCache();
  v0 = swift_allocObject();
  return sub_21BE20240(v0);
}

uint64_t sub_21BDE9E20@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = *(v1 + 8);
  if (*(v6 + 16) && (v7 = sub_21BBB3108(0xD000000000000010, 0x800000021BE55930), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = sub_21BE25B9C();
    v12 = *(v11 - 8);
    v13 = v12;
    v14 = *(v12 + 72);
    v15 = v10 + v14 * v9;
    v16 = *(v12 + 16);
    v16(v5, v15, v11);
    v17 = *(v13 + 56);
    v17(v5, 0, 1, v11);
    sub_21BB3A4CC(v5, &unk_27CDB57F0, &qword_21BE328A0);
    if (*(v6 + 16) && (v18 = sub_21BBB3108(0xD000000000000010, 0x800000021BE55930), (v19 & 1) != 0))
    {
      v16(a1, *(v6 + 56) + v18 * v14, v11);
      v20 = a1;
      v21 = 0;
    }

    else
    {
      v20 = a1;
      v21 = 1;
    }

    return v17(v20, v21, 1, v11);
  }

  else
  {
    v22 = sub_21BE25B9C();
    v23 = *(*(v22 - 8) + 56);
    v23(v5, 1, 1, v22);
    sub_21BB3A4CC(v5, &unk_27CDB57F0, &qword_21BE328A0);
    return (v23)(a1, 1, 1, v22);
  }
}

uint64_t sub_21BDEA078(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*(v1 + 48) isOrganizer];
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21BE2599C();

  return v4;
}

uint64_t sub_21BDEA1E0(void *a1)
{
  v2 = v1;
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v8 = a1;
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = v2;
    v13 = v12;
    v41[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE5FFE0, v41);
    *(v11 + 12) = 2080;
    v40 = a1;
    v14 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBB568, qword_21BE47588);
    v15 = sub_21BE28A5C();
    v17 = sub_21BB3D81C(v15, v16, v41);
    v38 = v4;
    v18 = v17;

    *(v11 + 14) = v18;
    _os_log_impl(&dword_21BB35000, v9, v10, "%s subscription: %s", v11, 0x16u);
    swift_arrayDestroy();
    v19 = v13;
    v2 = v39;
    MEMORY[0x21CF05C50](v19, -1, -1);
    MEMORY[0x21CF05C50](v11, -1, -1);

    (*(v5 + 8))(v7, v38);
    if (a1)
    {
LABEL_3:
      v20 = v8;
      v21 = sub_21BDEA078([v20 isEnabled]);
      v22 = *(v2 + 72);
      v23 = type metadata accessor for PurchaseSharingFamilyCache();
      v38 = sub_21BDEAC94(&qword_27CDBD908, type metadata accessor for PurchaseSharingFamilyCache, protocol conformance descriptor for SimpleFamilyServerCache);
      v39 = v23;
      v24 = sub_21BE26EAC();
      v25 = sub_21BE28CEC();
      v26 = sub_21BE1F55C();
      if (v26)
      {
        v27 = v26;
        v28 = *(v24 + 24);
        v41[0] = *(v24 + 16);
        v41[1] = v28;

        MEMORY[0x21CF03CA0](46, 0xE100000000000000);
        MEMORY[0x21CF03CA0](0x7069726373627573, 0xEC0000006E6F6974);
        v29 = sub_21BE289CC();
        v37[1] = v22;
        v30 = v21;
        v31 = v29;

        [v27 setValue:v25 forKey:v31];

        v25 = v31;
        v21 = v30;
      }

      else
      {
      }

      sub_21BE26EAC();
      v34 = sub_21BE1F55C();
      [v34 synchronize];

      goto LABEL_14;
    }
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    if (a1)
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for PurchaseSharingFamilyCache();
  sub_21BDEAC94(&qword_27CDBD908, type metadata accessor for PurchaseSharingFamilyCache, protocol conformance descriptor for SimpleFamilyServerCache);
  sub_21BE26EAC();
  strcpy(v41, "subscription");
  BYTE5(v41[1]) = 0;
  HIWORD(v41[1]) = -5120;
  v32 = sub_21BE20000(v41);

  if (!v32)
  {
    goto LABEL_13;
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {

    goto LABEL_13;
  }

  LOBYTE(v41[0]) = 2;
  MEMORY[0x21CF03EA0](v33, v41);

  if (LOBYTE(v41[0]) == 2)
  {
LABEL_13:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = [objc_opt_self() bundleForClass_];
    v21 = sub_21BE2599C();
LABEL_14:

    return v21;
  }

  return sub_21BDEA078(v41[0] & 1);
}

uint64_t sub_21BDEA74C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v43 = sub_21BE27A2C();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = type metadata accessor for StaticSelectableCellTemplate(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7F88, &qword_21BE3AA38);
  MEMORY[0x28223BE20](v38);
  v39 = &v34 - v9;
  sub_21BDE9E20(v5);
  v10 = *v1;
  if (*v1)
  {
    v37 = [*v1 isEnabled];
  }

  else
  {
    v37 = 0;
  }

  swift_unknownObjectWeakLoadStrong();
  v11 = sub_21BDEA1E0(v10);
  v35 = v12;
  v36 = v11;
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v47 = *(v1 + 16);
  v48 = v13;
  v49 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  sub_21BE2856C();
  v15 = v44;
  v34 = v45;
  v16 = v46;
  v17 = sub_21BE262DC();
  v18 = 0;
  if (v10 && (v17 & 1) == 0)
  {
    v18 = [v10 &selRef_initWithMembersToRender_familyCircle_] ^ 1;
  }

  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  *v8 = 0xD000000000000010;
  v8[1] = 0x800000021BE55930;
  sub_21BC438F8(v5, v8 + v6[5]);
  *(v8 + v6[6]) = v37;
  swift_unknownObjectWeakInit();

  swift_unknownObjectRelease();
  v19 = (v8 + v6[8]);
  v20 = v35;
  *v19 = v36;
  v19[1] = v20;
  v21 = v8 + v6[9];
  *v21 = 0;
  v21[8] = 1;
  v22 = (v8 + v6[10]);
  *v22 = 0;
  v22[1] = 0;
  v23 = v8 + v6[11];
  v24 = v34;
  *v23 = v15;
  *(v23 + 1) = v24;
  v23[16] = v16;
  v25 = (v8 + v6[12]);
  *v25 = 0;
  v25[1] = 0;
  *(v8 + v6[13]) = 0;
  *(v8 + v6[14]) = 7;
  v26 = (v8 + v6[15]);
  type metadata accessor for ServicesStore(0);
  sub_21BDEAC94(&qword_27CDB5750, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);
  *v26 = sub_21BE270CC();
  v26[1] = v27;
  *(v8 + v6[16]) = v18;
  v28 = v8 + v6[17];
  LOBYTE(v44) = 0;
  sub_21BE283EC();
  v29 = v48;
  *v28 = v47;
  *(v28 + 1) = v29;
  sub_21BC46FB4();
  v30 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27CDB4EE0 != -1)
  {
    swift_once();
  }

  sub_21BE2935C();

  sub_21BDEAC94(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate, aA7F);
  v31 = v39;
  sub_21BE2809C();
  sub_21BC5E088(v8);
  v32 = v40;
  sub_21BE27A0C();
  sub_21BC5E0E4();
  sub_21BE2805C();
  (*(v41 + 8))(v32, v43);
  return sub_21BB3A4CC(v31, &qword_27CDB7F88, &qword_21BE3AA38);
}

uint64_t sub_21BDEAC94(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BDEACDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21BDEAD24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BDEADA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v69 = a8;
  v70 = a3;
  v67 = a6;
  v68 = a7;
  v64 = a5;
  v66 = a4;
  v72 = a2;
  v73 = a1;
  v76 = a9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA80, &qword_21BE4F150);
  MEMORY[0x28223BE20](v60);
  v65 = &v54 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD9E8, &unk_21BE4F0B0);
  MEMORY[0x28223BE20](v62);
  v59 = &v54 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB0B8, &qword_21BE460A8);
  MEMORY[0x28223BE20](v61);
  v63 = &v54 - v12;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD9D8, &qword_21BE4F0A8);
  v13 = MEMORY[0x28223BE20](v71);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA88, &qword_21BE4F158);
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBB088, &qword_21BE46088);
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD9A0, &unk_21BE4F080);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v54 - v26;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD990, &qword_21BE4F078);
  v28 = MEMORY[0x28223BE20](v75);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v74 = &v54 - v31;
  v77 = v72;
  if (v73)
  {
    (*(v25 + 56))(v30, 1, 1, v24);
  }

  else
  {
    v54 = v15;
    v56 = v30;
    v73 = v18;
    v57 = v25;
    v32 = v65;
    v58 = v27;
    v33 = v20;
    v55 = v17;
    v72 = v21;
    if (v70)
    {
      sub_21BD4648C(v64, v67, v23);
      sub_21BBA3854(v23, v20, &qword_27CDBB088, &qword_21BE46088);
      swift_storeEnumTagMultiPayload();
      sub_21BDEDD68(&qword_27CDBD9A8, &qword_27CDBB088, &qword_21BE46088, sub_21BDEDA60);
      sub_21BDEDCB0();
      v34 = v58;
      sub_21BE2784C();
      v35 = v23;
      v36 = &qword_27CDBB088;
      v37 = &qword_21BE46088;
    }

    else
    {
      v38 = v63;
      sub_21BD4687C(v64, v67, v63);
      if (a10)
      {
        sub_21BBA3854(v38, v32, &qword_27CDBB0B8, &qword_21BE460A8);
        swift_storeEnumTagMultiPayload();
        sub_21BDEDD68(&qword_27CDBD9E0, &qword_27CDBD9E8, &unk_21BE4F0B0, sub_21BDEDDEC);
        sub_21BDEDDEC();
        v39 = v54;
        sub_21BE2784C();
      }

      else
      {
        v40 = sub_21BE27B8C();
        sub_21BE26E0C();
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v49 = v59;
        sub_21BBA3854(v38, v59, &qword_27CDBB0B8, &qword_21BE460A8);
        v50 = v49 + *(v62 + 36);
        *v50 = v40;
        *(v50 + 8) = v42;
        *(v50 + 16) = v44;
        *(v50 + 24) = v46;
        *(v50 + 32) = v48;
        *(v50 + 40) = 0;
        sub_21BBA3854(v49, v32, &qword_27CDBD9E8, &unk_21BE4F0B0);
        swift_storeEnumTagMultiPayload();
        sub_21BDEDD68(&qword_27CDBD9E0, &qword_27CDBD9E8, &unk_21BE4F0B0, sub_21BDEDDEC);
        sub_21BDEDDEC();
        v39 = v54;
        v38 = v63;
        sub_21BE2784C();
        sub_21BB3A4CC(v49, &qword_27CDBD9E8, &unk_21BE4F0B0);
      }

      v51 = v55;
      sub_21BB3A4CC(v38, &qword_27CDBB0B8, &qword_21BE460A8);
      sub_21BBB7D84(v39, v51, &qword_27CDBD9D8, &qword_21BE4F0A8);
      sub_21BBA3854(v51, v33, &qword_27CDBD9D8, &qword_21BE4F0A8);
      swift_storeEnumTagMultiPayload();
      sub_21BDEDD68(&qword_27CDBD9A8, &qword_27CDBB088, &qword_21BE46088, sub_21BDEDA60);
      sub_21BDEDCB0();
      v34 = v58;
      sub_21BE2784C();
      v35 = v51;
      v36 = &qword_27CDBD9D8;
      v37 = &qword_21BE4F0A8;
    }

    sub_21BB3A4CC(v35, v36, v37);
    v52 = v57;
    v30 = v56;
    sub_21BBB7D84(v34, v56, &qword_27CDBD9A0, &unk_21BE4F080);
    (*(v52 + 56))(v30, 0, 1, v24);
  }

  sub_21BBB7D84(v30, v74, &qword_27CDBD990, &qword_21BE4F078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA20, &qword_21BE4F0D0);
  sub_21BDED924();
  sub_21BDEE044();
  return sub_21BE285EC();
}

uint64_t sub_21BDEB5B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_21BE27A2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA90, &qword_21BE4F160);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-1] - v9;
  sub_21BB3A35C(a1, v17);
  sub_21BE27A1C();
  v11 = sub_21BDEE12C();
  sub_21BE2805C();
  (*(v4 + 8))(v6, v3);
  sub_21BDEE3BC(v17);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v12);
  v14 = (*(v13 + 32))(v12, v13);
  sub_21BC5A608(v14);
  v17[0] = &type metadata for CheckListItemView;
  v17[1] = v11;
  swift_getOpaqueTypeConformance2();
  sub_21BE2809C();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21BDEB7EC()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v6 = v18;
  if (!v18)
  {
    sub_21BE2614C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "No family found", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (qword_27CDB5000 != -1)
    {
      swift_once();
    }

    v12 = qword_27CDD43B0;

    return v12;
  }

  v18 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDAB0, &unk_21BE4F200);
  sub_21BE283FC();
  v7 = *v1;
  if (*v1)
  {
    v8 = v17[1];
    v9 = *(v7 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB75C0, &qword_21BE382F0);
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = sub_21BE0476C;
    v10[4] = 0;

    sub_21BDE83F8(v8);
    v12 = v11;

    return v12;
  }

  type metadata accessor for FamilyChecklistStore();
  sub_21BDEE574(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  result = sub_21BE2726C();
  __break(1u);
  return result;
}

uint64_t sub_21BDEBAD8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v93 = a1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD910, &qword_21BE4EFF8);
  v3 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD918, &qword_21BE4F000);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v86 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v85 = v74 - v8;
  v82 = sub_21BE2721C();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD920, &qword_21BE4F008);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = v74 - v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD928, &qword_21BE4F010);
  MEMORY[0x28223BE20](v77);
  v74[4] = v74 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD930, &qword_21BE4F018);
  v12 = MEMORY[0x28223BE20](v76);
  v84 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD938, &qword_21BE4F020);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v91 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v89 = v74 - v18;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD940, &unk_21BE4F028);
  v95 = *(v90 - 8);
  v19 = MEMORY[0x28223BE20](v90);
  v94 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v74 - v21;
  v23 = sub_21BDEB7EC();
  v25 = v24;
  v26 = *(v23 + 16);
  v97 = 0;
  v98 = v26;
  swift_getKeyPath();
  v27 = swift_allocObject();
  v28 = v1[1];
  *(v27 + 16) = *v1;
  *(v27 + 32) = v28;
  v29 = v1[3];
  *(v27 + 48) = v1[2];
  *(v27 + 64) = v29;
  *(v27 + 80) = v23;
  *(v27 + 88) = v25;
  sub_21BDED634(v1, v96);

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB67A0, &qword_21BE4F050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD948, &qword_21BE4F058);
  v31 = sub_21BDED66C();
  v74[1] = sub_21BDED6F8();
  v88 = v22;
  v74[3] = v30;
  v74[2] = v31;
  sub_21BE285BC();
  if (*(v25 + 16))
  {
    v74[0] = v3;
    v32 = swift_allocObject();
    v33 = v1[1];
    v32[1] = *v1;
    v32[2] = v33;
    v34 = v1[3];
    v32[3] = v1[2];
    v32[4] = v34;
    MEMORY[0x28223BE20](v32);
    sub_21BDED634(v1, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA30, &qword_21BE4F0D8);
    sub_21BB3B038(&qword_27CDBDA38, &qword_27CDBDA30, &qword_21BE4F0D8, MEMORY[0x277CE1138]);
    v35 = v75;
    sub_21BE2843C();
    v36 = v80;
    sub_21BE2720C();
    sub_21BB3B038(&qword_27CDBDA40, &qword_27CDBD920, &qword_21BE4F008, MEMORY[0x277CDF028]);
    sub_21BDEE574(&qword_27CDBC430, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v37 = v79;
    v38 = v82;
    sub_21BE27ECC();
    (*(v81 + 8))(v36, v38);
    (*(v78 + 8))(v35, v37);
    sub_21BDEE1B8();
    v39 = v83;
    sub_21BE285EC();
    v40 = sub_21BE27B8C();
    sub_21BE26E0C();
    v41 = v39 + *(v76 + 36);
    *v41 = v40;
    *(v41 + 8) = v42;
    *(v41 + 16) = v43;
    *(v41 + 24) = v44;
    *(v41 + 32) = v45;
    *(v41 + 40) = 0;
    v96[0] = v2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA50, &qword_21BE4F0E0);
    sub_21BE283FC();
    v46 = v97;
    swift_getKeyPath();
    *&v96[0] = v46;
    sub_21BDEE574(&qword_27CDB59B8, type metadata accessor for ChecklistUserPreferences, protocol conformance descriptor for ChecklistUserPreferences);
    sub_21BE25F1C();

    v47 = *(v46 + 96);

    if (v47)
    {

      v48 = 1;
      v49 = v87;
      v50 = v85;
      v51 = v90;
    }

    else
    {
      v55 = *(v25 + 16);
      v97 = 0;
      v98 = v55;
      swift_getKeyPath();
      v56 = swift_allocObject();
      v57 = v2[1];
      *(v56 + 16) = *v2;
      *(v56 + 32) = v57;
      v58 = v2[3];
      *(v56 + 48) = v2[2];
      *(v56 + 64) = v58;
      *(v56 + 80) = v23;
      *(v56 + 88) = v25;
      sub_21BDED634(v2, v96);
      v59 = v94;
      sub_21BE285BC();
      v50 = v85;
      v60 = v59;
      v51 = v90;
      (*(v95 + 32))(v85, v60, v90);
      v48 = 0;
      v49 = v87;
    }

    (*(v95 + 56))(v50, v48, 1, v51);
    v61 = v84;
    sub_21BBA3854(v39, v84, &qword_27CDBD930, &qword_21BE4F018);
    v62 = v39;
    v63 = v86;
    sub_21BBA3854(v50, v86, &qword_27CDBD918, &qword_21BE4F000);
    sub_21BBA3854(v61, v49, &qword_27CDBD930, &qword_21BE4F018);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA58, &qword_21BE4F110);
    sub_21BBA3854(v63, v49 + *(v64 + 48), &qword_27CDBD918, &qword_21BE4F000);
    sub_21BB3A4CC(v50, &qword_27CDBD918, &qword_21BE4F000);
    sub_21BB3A4CC(v62, &qword_27CDBD930, &qword_21BE4F018);
    sub_21BB3A4CC(v63, &qword_27CDBD918, &qword_21BE4F000);
    sub_21BB3A4CC(v61, &qword_27CDBD930, &qword_21BE4F018);
    v53 = v89;
    sub_21BB599E8(v49, v89);
    v52 = 0;
    v54 = v92;
    v3 = v74[0];
  }

  else
  {

    v52 = 1;
    v53 = v89;
    v51 = v90;
    v54 = v92;
  }

  (*(v3 + 56))(v53, v52, 1, v54);
  v65 = v94;
  v66 = v95;
  v67 = *(v95 + 16);
  v68 = v88;
  v67(v94, v88, v51);
  v69 = v91;
  sub_21BBA3854(v53, v91, &qword_27CDBD938, &qword_21BE4F020);
  v70 = v93;
  v67(v93, v65, v51);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA60, &qword_21BE4F118);
  sub_21BBA3854(v69, &v70[*(v71 + 48)], &qword_27CDBD938, &qword_21BE4F020);
  sub_21BB3A4CC(v53, &qword_27CDBD938, &qword_21BE4F020);
  v72 = *(v66 + 8);
  v72(v68, v51);
  sub_21BB3A4CC(v69, &qword_27CDBD938, &qword_21BE4F020);
  return (v72)(v65, v51);
}

void *sub_21BDEC6A4@<X0>(unint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD960, &qword_21BE4F060);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA68, &qword_21BE4F120);
  result = MEMORY[0x28223BE20](v11);
  v14 = v27 - v13;
  v15 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v15 >= *(a3 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v16 = a3 + 32 * v15;
  v17 = *(v16 + 48);
  if (*(v17 + 16))
  {
    v27[2] = v8;
    v18 = *(v16 + 56);
    v20 = *(v16 + 32);
    v19 = *(v16 + 40);

    v29 = sub_21BC2BB28(v21);
    v27[0] = swift_getKeyPath();
    v22 = swift_allocObject();
    v27[1] = a4;
    v23 = v22;
    v24 = a2[1];
    *(v22 + 24) = *a2;
    *(v22 + 40) = v24;
    v25 = a2[3];
    *(v22 + 56) = a2[2];
    *(v22 + 16) = 1;
    *(v22 + 72) = v25;
    *(v22 + 88) = v20;
    *(v22 + 96) = v19;
    *(v22 + 104) = v17;
    *(v22 + 112) = v18;
    *(v22 + 120) = v15;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_21BDEE5D4;
    *(v26 + 24) = v23;

    sub_21BDED634(a2, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA70, &qword_21BE4F148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD980, &qword_21BE4F070);
    sub_21BB3B038(&qword_27CDBDA78, &qword_27CDBDA70, &qword_21BE4F148, MEMORY[0x277D83980]);
    sub_21BDED88C();
    sub_21BE285BC();
    sub_21BBA3854(v10, v14, &qword_27CDBD960, &qword_21BE4F060);
    swift_storeEnumTagMultiPayload();
    sub_21BDED784();
    sub_21BE2784C();

    return sub_21BB3A4CC(v10, &qword_27CDBD960, &qword_21BE4F060);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_21BDED784();
    return sub_21BE2784C();
  }
}

uint64_t sub_21BDEC9F4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE275DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA98, &qword_21BE4F168);
  return sub_21BDECA4C(a1, a2 + *(v4 + 44));
}

uint64_t sub_21BDECA4C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD6E0, &qword_21BE4E660);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB99C0, &qword_21BE40C00);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_21BE2599C();
  v18 = v17;

  v42 = v16;
  v43 = v18;
  sub_21BB41FA4();
  v19 = sub_21BE27DBC();
  v21 = v20;
  v42 = v19;
  v43 = v20;
  v23 = v22 & 1;
  v44 = v22 & 1;
  v45 = v24;
  v37 = v13;
  sub_21BE2809C();
  sub_21BBC7C7C(v19, v21, v23);

  v25 = swift_allocObject();
  v26 = a1[1];
  v25[1] = *a1;
  v25[2] = v26;
  v27 = a1[3];
  v25[3] = a1[2];
  v25[4] = v27;
  v41 = a1;
  sub_21BDED634(a1, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E0, &unk_21BE4E4A8);
  sub_21BDE0DE0();
  v28 = v38;
  sub_21BE2843C();
  sub_21BBA3854(v13, v11, &qword_27CDB99C0, &qword_21BE40C00);
  v29 = *(v4 + 16);
  v30 = v39;
  v31 = v28;
  v29(v39, v28, v3);
  v32 = v40;
  sub_21BBA3854(v11, v40, &qword_27CDB99C0, &qword_21BE40C00);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDAA0, &qword_21BE4F178);
  v34 = v32 + *(v33 + 48);
  *v34 = 0;
  *(v34 + 8) = 1;
  v29((v32 + *(v33 + 64)), v30, v3);
  v35 = *(v4 + 8);
  v35(v31, v3);
  sub_21BB3A4CC(v37, &qword_27CDB99C0, &qword_21BE40C00);
  v35(v30, v3);
  return sub_21BB3A4CC(v11, &qword_27CDB99C0, &qword_21BE40C00);
}

double sub_21BDECE54(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA50, &qword_21BE4F0E0);
  sub_21BE283FC();
  sub_21BE283FC();
  swift_getKeyPath();
  sub_21BDEE574(&qword_27CDB59B8, type metadata accessor for ChecklistUserPreferences, protocol conformance descriptor for ChecklistUserPreferences);
  sub_21BE25F1C();

  v2 = *(v6 + 96);

  v3 = (v2 ^ 1) & 1;
  if (v3 == *(v6 + 96))
  {
    *(v6 + 96) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21BE25F0C();
  }

  sub_21BBBB83C();

  return result;
}

uint64_t sub_21BDED000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDAA8, &qword_21BE4F180);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v15 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA50, &qword_21BE4F0E0);
  sub_21BE283FC();
  v8 = v17;
  swift_getKeyPath();
  *&v15 = v8;
  sub_21BDEE574(&qword_27CDB59B8, type metadata accessor for ChecklistUserPreferences, protocol conformance descriptor for ChecklistUserPreferences);
  sub_21BE25F1C();

  v9 = sub_21BE2837C();
  v10 = sub_21BE27BEC();
  KeyPath = swift_getKeyPath();
  *&v15 = v9;
  *(&v15 + 1) = KeyPath;
  v16 = v10;
  sub_21BE27C4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E8, &qword_21BE4F170);
  sub_21BDE06D4();
  sub_21BE27EAC();

  if (qword_27CDB4E88 != -1)
  {
    swift_once();
  }

  v12 = qword_27CDD41F8;
  v13 = sub_21BE2826C();
  (*(v5 + 32))(a2, v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD5E0, &unk_21BE4E4A8);
  *(a2 + *(result + 36)) = v13;
  return result;
}

void *sub_21BDED2A0@<X0>(unint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD960, &qword_21BE4F060);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA68, &qword_21BE4F120);
  result = MEMORY[0x28223BE20](v11);
  v14 = v27 - v13;
  v15 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v15 >= *(a3 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v16 = a3 + 32 * v15;
  v17 = *(v16 + 48);
  if (*(v17 + 16))
  {
    v27[2] = v8;
    v18 = *(v16 + 56);
    v20 = *(v16 + 32);
    v19 = *(v16 + 40);

    v29 = sub_21BC2BB28(v21);
    v27[0] = swift_getKeyPath();
    v22 = swift_allocObject();
    v27[1] = a4;
    v23 = v22;
    v24 = a2[1];
    *(v22 + 24) = *a2;
    *(v22 + 40) = v24;
    v25 = a2[3];
    *(v22 + 56) = a2[2];
    *(v22 + 16) = 0;
    *(v22 + 72) = v25;
    *(v22 + 88) = v20;
    *(v22 + 96) = v19;
    *(v22 + 104) = v17;
    *(v22 + 112) = v18;
    *(v22 + 120) = v15;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_21BDEE380;
    *(v26 + 24) = v23;

    sub_21BDED634(a2, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDA70, &qword_21BE4F148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD980, &qword_21BE4F070);
    sub_21BB3B038(&qword_27CDBDA78, &qword_27CDBDA70, &qword_21BE4F148, MEMORY[0x277D83980]);
    sub_21BDED88C();
    sub_21BE285BC();
    sub_21BBA3854(v10, v14, &qword_27CDBD960, &qword_21BE4F060);
    swift_storeEnumTagMultiPayload();
    sub_21BDED784();
    sub_21BE2784C();

    return sub_21BB3A4CC(v10, &qword_27CDBD960, &qword_21BE4F060);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_21BDED784();
    return sub_21BE2784C();
  }
}

unint64_t sub_21BDED66C()
{
  result = qword_27CDB67B8[0];
  if (!qword_27CDB67B8[0])
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB67A0, &qword_21BE4F050);
    v4 = sub_21BBF8150();
    v5[0] = MEMORY[0x277D83BC8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277D83D40], v3, v5);
    atomic_store(result, qword_27CDB67B8);
  }

  return result;
}

unint64_t sub_21BDED6F8()
{
  result = qword_27CDBD950;
  if (!qword_27CDBD950)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD948, &qword_21BE4F058);
    v4[0] = sub_21BDED784();
    v4[1] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBD950);
  }

  return result;
}

unint64_t sub_21BDED784()
{
  result = qword_27CDBD958;
  if (!qword_27CDBD958)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD960, &qword_21BE4F060);
    v4[0] = sub_21BDED808();
    result = swift_getWitnessTable(MEMORY[0x277CE0FB0], v3, v4);
    atomic_store(result, &qword_27CDBD958);
  }

  return result;
}

unint64_t sub_21BDED808()
{
  result = qword_27CDBD968;
  if (!qword_27CDBD968)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD970, &qword_21BE4F068);
    v4[0] = sub_21BDED88C();
    result = swift_getWitnessTable(MEMORY[0x277CE1290], v3, v4);
    atomic_store(result, &qword_27CDBD968);
  }

  return result;
}

unint64_t sub_21BDED88C()
{
  result = qword_27CDBD978;
  if (!qword_27CDBD978)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD980, &qword_21BE4F070);
    v4[0] = sub_21BDED924();
    v4[1] = sub_21BDEE044();
    v4[2] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v3, v4);
    atomic_store(result, &qword_27CDBD978);
  }

  return result;
}

unint64_t sub_21BDED924()
{
  result = qword_27CDBD988;
  if (!qword_27CDBD988)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD990, &qword_21BE4F078);
    v4[0] = sub_21BDED9A8();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDBD988);
  }

  return result;
}

unint64_t sub_21BDED9A8()
{
  result = qword_27CDBD998;
  if (!qword_27CDBD998)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD9A0, &unk_21BE4F080);
    v4[0] = sub_21BDEDD68(&qword_27CDBD9A8, &qword_27CDBB088, &qword_21BE46088, sub_21BDEDA60);
    v4[1] = sub_21BDEDCB0();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBD998);
  }

  return result;
}

uint64_t sub_21BDEDA90(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = sub_21BB3B038(&unk_27CDBC2D0, &qword_27CDBB020, &qword_21BE4F0A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BDEDB40()
{
  result = qword_27CDBD9B8;
  if (!qword_27CDBD9B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB078, &qword_21BE46078);
    v4[0] = sub_21BDEDF30(&qword_27CDBD9C0, &qword_27CDBD9C8, &unk_21BE4F090, sub_21BDEDC24);
    v4[1] = sub_21BB3B038(&unk_27CDBC2C0, &qword_27CDBB040, &qword_21BE45FD0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBD9B8);
  }

  return result;
}

unint64_t sub_21BDEDC24()
{
  result = qword_27CDBB068;
  if (!qword_27CDBB068)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB060, &unk_21BE46068);
    v4[0] = sub_21BCE1FBC();
    v4[1] = sub_21BD4ADE0();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB068);
  }

  return result;
}

unint64_t sub_21BDEDCB0()
{
  result = qword_27CDBD9D0;
  if (!qword_27CDBD9D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD9D8, &qword_21BE4F0A8);
    v4[0] = sub_21BDEDD68(&qword_27CDBD9E0, &qword_27CDBD9E8, &unk_21BE4F0B0, sub_21BDEDDEC);
    v4[1] = sub_21BDEDDEC();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBD9D0);
  }

  return result;
}

uint64_t sub_21BDEDD68(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BDEDE4C()
{
  result = qword_27CDBDA00;
  if (!qword_27CDBDA00)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB0A8, &qword_21BE46098);
    v4[0] = sub_21BDEDF30(&qword_27CDBDA08, &qword_27CDBDA10, &unk_21BE4F0C0, sub_21BDEDFB8);
    v4[1] = sub_21BB3B038(&unk_27CDBC2C0, &qword_27CDBB040, &qword_21BE45FD0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBDA00);
  }

  return result;
}

uint64_t sub_21BDEDF30(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8[0] = a4();
    v8[1] = MEMORY[0x277CE1410];
    v8[2] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CDF0A8], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BDEDFB8()
{
  result = qword_27CDBB098;
  if (!qword_27CDBB098)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBB090, &qword_21BE46090);
    v4[0] = sub_21BCE1FBC();
    v4[1] = sub_21BD4AEB8();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBB098);
  }

  return result;
}

unint64_t sub_21BDEE044()
{
  result = qword_27CDBDA18;
  if (!qword_27CDBDA18)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDA20, &qword_21BE4F0D0);
    v4[2] = &type metadata for CheckListItemView;
    v4[3] = sub_21BDEE12C();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BDEE574(&qword_27CDB6790, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBDA18);
  }

  return result;
}

unint64_t sub_21BDEE12C()
{
  result = qword_27CDBDA28;
  if (!qword_27CDBDA28)
  {
    result = swift_getWitnessTable(byte_21BE46234, &type metadata for CheckListItemView, v0, v1);
    atomic_store(result, &qword_27CDBDA28);
  }

  return result;
}

unint64_t sub_21BDEE1B8()
{
  result = qword_27CDBDA48;
  if (!qword_27CDBDA48)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD928, &qword_21BE4F010);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBD920, &qword_21BE4F008);
    v4[3] = sub_21BE2721C();
    v4[4] = sub_21BB3B038(&qword_27CDBDA40, &qword_27CDBD920, &qword_21BE4F008, MEMORY[0x277CDF028]);
    v4[5] = sub_21BDEE574(&qword_27CDBC430, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BD4ADE0();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBDA48);
  }

  return result;
}

uint64_t objectdestroyTm_41()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm_2()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_21BDEE574(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

id sub_21BDEE5DC()
{
  v1 = [*v0 primaryAuthKitAccount];

  return v1;
}

id sub_21BDEE614(uint64_t a1)
{
  v2 = [*v1 custodianLastModifiedForAccount_];

  return v2;
}

id sub_21BDEE650(uint64_t a1)
{
  v2 = [*v1 beneficiaryLastModifiedForAccount_];

  return v2;
}

uint64_t sub_21BDEE68C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB8A28;

  return sub_21BDEEC34();
}

id static ACAccountStore.getAccountAndWait()()
{
  v0 = sub_21BE2876C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v10 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    *(v11 + 24) = v8;
    aBlock[4] = sub_21BDEEAC8;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BBF23E4;
    aBlock[3] = &block_descriptor_60;
    v12 = _Block_copy(aBlock);

    v13 = v8;

    [v10 aa:v12 primaryAppleAccountWithCompletion:?];
    _Block_release(v12);

    sub_21BE2875C();
    sub_21BE2877C();
    v14 = *(v1 + 8);
    v14(v4, v0);
    sub_21BE2921C();

    v14(v6, v0);
    swift_beginAccess();
    v15 = *(v7 + 16);
    v16 = v15;

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21BDEE994(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a3 + 16);
  *(a3 + 16) = a1;
  v13 = a1;

  sub_21BE2614C();
  sub_21BC51D50(a2, 0xD00000000000001BLL, 0x800000021BE62360);
  (*(v9 + 8))(v11, v8);
  dispatch_group_leave(a4);
}

uint64_t sub_21BDEEB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BBB8A28;

  return v9(a1, a2, a3);
}

uint64_t sub_21BDEEC50()
{
  *(v0 + 16) = sub_21BE28D7C();
  *(v0 + 24) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDEECE8, v2, v1);
}

uint64_t sub_21BDEECE8()
{

  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_21BDEED80, 0, 0);
}

uint64_t sub_21BDEED80(uint64_t a1)
{
  *(v1 + 32) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDEEE0C, v3, v2);
}

uint64_t sub_21BDEEE0C()
{

  return MEMORY[0x2822009F8](sub_21BDEEE74, 0, 0);
}

uint64_t sub_21BDEEE74(uint64_t a1)
{
  *(v1 + 40) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDEEF00, v3, v2);
}

uint64_t sub_21BDEEF00()
{

  *(v0 + 48) = sub_21BD44478();

  return MEMORY[0x2822009F8](sub_21BDEEF70, 0, 0);
}

uint64_t sub_21BDEEF70()
{
  if (*(*(v0 + 48) + 16) && (v1 = sub_21BBB322C(), (v2 & 1) != 0))
  {
    v3 = *(*(*(v0 + 48) + 56) + 8 * v1);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v3);
}

id sub_21BDEF00C(uint64_t a1)
{
  v30 = sub_21BE26A4C();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = sub_21BE25B9C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BBF0D04(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_21BC12FE4(v13);
    sub_21BE2614C();
    sub_21BBF0D04(a1, v11);
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FDC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_21BB3D81C(0xD00000000000001ALL, 0x800000021BE62380, &v31);
      *(v20 + 12) = 2080;
      sub_21BBF0D04(v11, v8);
      v22 = sub_21BE28A5C();
      v24 = v23;
      sub_21BC12FE4(v11);
      v25 = sub_21BB3D81C(v22, v24, &v31);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_21BB35000, v18, v19, "%s invalid deeplinkUrl: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    else
    {

      sub_21BC12FE4(v11);
    }

    return (*(v2 + 8))(v4, v30);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v27 = result;
      v28 = sub_21BE25B2C();
      sub_21BBB52D8(MEMORY[0x277D84F90]);
      v29 = sub_21BE288EC();

      [v27 openSensitiveURL:v28 withOptions:v29];

      return (*(v15 + 8))(v17, v14);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21BDEF478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_21BE2760C();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDAC8, &qword_21BE4F390);
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDAD0, qword_21BE4F398);
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v21 - v11;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v14 = &v21 - v13;
  sub_21BE26EEC();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_21BC5A604(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC8F0, &qword_21BE4B570);
  sub_21BB3B038(&qword_27CDBC8E8, &qword_27CDBC8F0, &qword_21BE4B570, MEMORY[0x277CDEFF0]);
  sub_21BE2843C();
  sub_21BE275FC();
  v16 = sub_21BB3B038(&qword_27CDBDAD8, &qword_27CDBDAC8, &qword_21BE4F390, MEMORY[0x277CDF028]);
  v17 = sub_21BDEF9DC();
  sub_21BE27EBC();
  (*(v26 + 8))(v7, v5);
  (*(v23 + 8))(v10, v8);
  sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520, MEMORY[0x277CDD7F8]);
  v29 = v8;
  v30 = v5;
  v31 = v16;
  v32 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  v19 = v25;
  sub_21BE27FEC();
  (*(v27 + 8))(v12, v19);
  return (*(v24 + 8))(v14, v18);
}

uint64_t sub_21BDEF8CC()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  return sub_21BE283DC();
}

uint64_t sub_21BDEF9AC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_21BDEF9DC()
{
  result = qword_27CDBDAE0;
  if (!qword_27CDBDAE0)
  {
    v3 = sub_21BE2760C();
    result = swift_getWitnessTable(MEMORY[0x277CDDE70], v3, v0, v1);
    atomic_store(result, &qword_27CDBDAE0);
  }

  return result;
}

uint64_t sub_21BDEFA34(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_21BE260AC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[8] = swift_task_alloc();
  v2[9] = sub_21BE28D7C();
  v2[10] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[11] = v5;
  v2[12] = v4;

  return MEMORY[0x2822009F8](sub_21BDEFB64, v5, v4);
}

uint64_t sub_21BDEFB64()
{
  *(v0 + 104) = *__swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 112) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;

  return MEMORY[0x2822009F8](sub_21BDEFC04, v2, v1);
}

void sub_21BDEFC04()
{
  v1 = *(v0[13] + 40);
  v0[17] = v1;
  if (v1)
  {
    v2 = v0[8];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_21BDEFD18;
    v5 = v0[8];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDEFD18()
{
  v2 = *v1;
  (*v1)[19] = v0;

  sub_21BB3A4CC(v2[8], &qword_27CDB5790, &qword_21BE32800);

  v3 = v2[16];
  v4 = v2[15];
  if (v0)
  {
    v5 = sub_21BDEFF04;
  }

  else
  {
    v5 = sub_21BDEFE98;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BDEFE98()
{

  v0[20] = v0[2];
  v1 = v0[11];
  v2 = v0[12];

  return MEMORY[0x2822009F8](sub_21BDF2664, v1, v2);
}

uint64_t sub_21BDEFF04()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_21BDF2668, v1, v2);
}

uint64_t sub_21BDEFF68(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_21BE260AC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[8] = swift_task_alloc();
  v2[9] = sub_21BE28D7C();
  v2[10] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[11] = v5;
  v2[12] = v4;

  return MEMORY[0x2822009F8](sub_21BDF0098, v5, v4);
}

uint64_t sub_21BDF0098()
{
  *(v0 + 104) = *__swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 112) = sub_21BE28D6C();
  v2 = sub_21BE28D0C();
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;

  return MEMORY[0x2822009F8](sub_21BDF0138, v2, v1);
}

void sub_21BDF0138()
{
  v1 = *(v0[13] + 40);
  v0[17] = v1;
  if (v1)
  {
    v2 = v0[8];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v6 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_21BDF024C;
    v5 = v0[8];

    v6(v0 + 2, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BDF024C()
{
  v2 = *v1;
  (*v1)[19] = v0;

  sub_21BB3A4CC(v2[8], &qword_27CDB5790, &qword_21BE32800);

  v3 = v2[16];
  v4 = v2[15];
  if (v0)
  {
    v5 = sub_21BDF03CC;
  }

  else
  {
    v5 = sub_21BBEFF84;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21BDF03CC()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x2822009F8](sub_21BDF0430, v1, v2);
}

uint64_t sub_21BDF0430()
{
  v1 = v0[19];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];

  sub_21BE295EC();

  v8 = *(v5 + qword_27CDB63F0);
  v9 = *(v5 + qword_27CDB63F0 + 8);

  MEMORY[0x21CF03CA0](0xD000000000000013, 0x800000021BE62470);
  (*(v4 + 104))(v2, *MEMORY[0x277D07F58], v3);
  MEMORY[0x21CF01220](v8, v9, v2, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000020, 0x800000021BE57400);

  (*(v4 + 8))(v2, v3);
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

unint64_t sub_21BDF05C8()
{
  v1 = *(type metadata accessor for PurchaseSharingItem(0) + 32);
  result = 0x6E776F6E6B6E75;
  switch(*(v0 + v1))
  {
    case 1:
      result = 0x696D694C6D6D6F63;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x69636966656E6562;
      break;
    case 7:
      result = 0x6C5064756F6C4369;
      break;
    case 8:
      result = 0x6D657449656D6F68;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0x736143656C707061;
      break;
    case 0xB:
      result = 0x49746361746E6F63;
      break;
    case 0xC:
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21BDF0804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BDAE93C();
  v8 = v7;
  if (v6 == sub_21BDAE93C() && v8 == v9)
  {
  }

  else
  {
    v10 = sub_21BE2995C();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = *(a3 + 32);
  v13 = *(a2 + v12);
  v14 = sub_21BC5C62C(*(a1 + v12));
  v16 = v15;
  if (v14 == sub_21BC5C62C(v13) && v16 == v17)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21BE2995C();
  }

  return v11 & 1;
}

uint64_t sub_21BDF0918(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BDAE93C();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v1 + *(a1 + 32)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BDF09AC(uint64_t a1, uint64_t a2)
{
  sub_21BDAE93C();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 32)));
  sub_21BE28ABC();
}

uint64_t sub_21BDF0A34(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BDAE93C();
  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 32)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BDF0AC4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21BDF05C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21BDF0AEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BDF0B60@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PurchaseSharingItemView(0);
  sub_21BDF2454(v1, a1 + *(v3 + 20));
  type metadata accessor for ChecklistStateVars(0);
  sub_21BDF2300(&qword_27CDBDB60, type metadata accessor for ChecklistStateVars, protocol conformance descriptor for ChecklistStateVars);
  result = sub_21BE26E9C();
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_21BDF0BF4(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BDF0E40();
}

uint64_t sub_21BDF0CA4(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BDF0D3C, v4, v3);
}

uint64_t sub_21BDF0D3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCC544();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BDF0E40()
{
  v1[2] = v0;
  v2 = sub_21BE260AC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v1[6] = swift_task_alloc();
  sub_21BE28D7C();
  v1[7] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_21BDF0F6C, v4, v3);
}

uint64_t sub_21BDF0F6C()
{
  v1 = v0[2];
  v2 = v1 + qword_27CDB63F0;
  v3 = *(v1 + qword_27CDB63F0);
  v0[10] = v3;
  v4 = *(v2 + 8);
  v0[11] = v4;
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v0[12] = sub_21BC84D18(v3, v4, "computeItems", 12, 2u);
  v5 = qword_27CDD43C0;
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_21BDF1094;

  return sub_21BE19D18(v1 + v5);
}

uint64_t sub_21BDF1094(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 72);
  v6 = *(v3 + 64);
  if (v1)
  {
    v7 = sub_21BDF1B08;
  }

  else
  {
    v7 = sub_21BDF11D8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21BDF11D8()
{
  v1 = [*(v0 + 112) me];
  *(v0 + 128) = v1;
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = qword_27CDD43C8;
    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_21BDF1434;

    return sub_21BDEFA34(v2 + v3);
  }

  else
  {
    v6 = *(v0 + 112);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 24);

    sub_21BE295EC();

    MEMORY[0x21CF03CA0](v8, v7);
    (*(v10 + 104))(v9, *MEMORY[0x277D07F98], v11);
    MEMORY[0x21CF01220](0xD000000000000013, 0x800000021BE623E0, v9, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000030, 0x800000021BE62400);

    (*(v10 + 8))(v9, v11);
    swift_willThrow();

    sub_21BC852D8();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_21BDF1434(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_21BDF1B9C;
  }

  else
  {
    v4[19] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_21BDF155C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BDF155C()
{
  v1 = v0[19];

  v2 = sub_21BCE6070(0xD000000000000010, 0x800000021BE55930, v1);

  if (v2)
  {
    v3 = [*(v0[2] + qword_27CDD43D0) aa_primaryAppleAccount];
    if (v3)
    {
      v4 = v3;
      v5 = v0[2];
      v6 = sub_21BC85A38();
      *(v5 + qword_27CDBDAF8) = v6;

      if (v6[2] && (v7 = sub_21BBB3108(0xD000000000000010, 0x800000021BE55930), (v8 & 1) != 0))
      {
        v9 = v7;
        v10 = v0[6];
        v11 = v6[7];
        v12 = sub_21BE25B9C();
        v13 = *(v12 - 8);
        (*(v13 + 16))(v10, v11 + *(v13 + 72) * v9, v12);

        v14 = 0;
      }

      else
      {

        v12 = sub_21BE25B9C();
        v13 = *(v12 - 8);
        v14 = 1;
      }

      v22 = v0[16];
      v23 = v0[6];
      v36 = v0[14];
      (*(v13 + 56))(v23, v14, 1, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDB70, &unk_21BE4F590);
      v24 = (type metadata accessor for PurchaseSharingItem(0) - 8);
      v25 = (*(*v24 + 80) + 32) & ~*(*v24 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_21BE32770;
      v27 = (v26 + v25);
      LOBYTE(v25) = [v2 isEnabled];
      sub_21BBF0D04(v23, &v27[v24[7]]);
      *v27 = v25;
      *&v27[v24[8]] = v22;
      *&v27[v24[9]] = v2;
      v27[v24[10]] = 9;

      sub_21BB3A4CC(v23, &unk_27CDB57F0, &qword_21BE328A0);
      sub_21BC852D8();

      v28 = v0[1];

      return v28(v26);
    }

    v15 = v0[16];
    v16 = v0[14];
    v31 = v0[10];
    v30 = v0[11];
    v33 = v0[4];
    v32 = v0[5];
    v34 = v0[3];
    sub_21BE295EC();

    MEMORY[0x21CF03CA0](v31, v30);
    (*(v33 + 104))(v32, *MEMORY[0x277D07F68], v34);
    MEMORY[0x21CF01220](0xD000000000000015, 0x800000021BE573C0, v32, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000030, 0x800000021BE62400);

    (*(v33 + 8))(v32, v34);
    swift_willThrow();
  }

  else
  {
    v15 = v0[16];
    v16 = v0[14];
    v18 = v0[10];
    v17 = v0[11];
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[3];
    sub_21BE295EC();

    MEMORY[0x21CF03CA0](v18, v17);
    (*(v20 + 104))(v19, *MEMORY[0x277D07F88], v21);
    MEMORY[0x21CF01220](0xD000000000000026, 0x800000021BE62440, v19, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000030, 0x800000021BE62400);

    (*(v20 + 8))(v19, v21);
    swift_willThrow();
  }

  sub_21BC852D8();

  v35 = v0[1];

  return v35();
}

uint64_t sub_21BDF1B08()
{

  sub_21BC852D8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BDF1B9C()
{
  v1 = v0[16];
  v2 = v0[14];

  sub_21BC852D8();

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BDF1C40()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCC544();
}

void sub_21BDF1D04(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  v6 = a1;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21BBA932C(0, 0, v4, &unk_21BE4F5A8, v8);
}

uint64_t sub_21BDF1E34()
{
  v1 = qword_27CDBDAF0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDB68, &qword_21BE4F580);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD43C0));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD43C8));
  swift_unknownObjectRelease();
}

id sub_21BDF1EE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchaseSharingItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDF1F20(uint64_t a1)
{
  v2 = qword_27CDBDAF0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDB68, &qword_21BE4F580);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD43C0));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD43C8));
  swift_unknownObjectRelease();
}

void sub_21BDF1FF8(uint64_t a1)
{
  sub_21BDF20AC(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BDF20AC(uint64_t a1)
{
  if (!qword_27CDBDB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDB20, &qword_21BE50670);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBDB18);
    }
  }
}

void sub_21BDF2160(uint64_t a1)
{
  sub_21BBF088C(319);
  if (v1 <= 0x3F)
  {
    sub_21BB3A2A4(319, &qword_280BD8A40, 0x277D08268);
    if (v2 <= 0x3F)
    {
      sub_21BB3A2A4(319, &unk_27CDB6550, 0x277D08338);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BDF227C(uint64_t a1)
{
  *(a1 + 8) = sub_21BDF2300(&qword_27CDBDB40, type metadata accessor for PurchaseSharingItem, aM_2);
  result = sub_21BDF2300(&qword_27CDBDB48, type metadata accessor for PurchaseSharingItem, aU_6);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BDF2300(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BDF2348(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

uint64_t sub_21BDF23B4(uint64_t a1)
{
  *(a1 + 8) = sub_21BDF2300(&unk_27CDBDB50, type metadata accessor for PurchaseSharingItemProvider, byte_21BE34830);
  result = sub_21BDF2300(&qword_27CDB5FC8, type metadata accessor for PurchaseSharingItemProvider, byte_21BE34878);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BDF2454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseSharingItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21BDF24B8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BDF2538(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BDF25B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BDF1C40();
}

id sub_21BDF266C()
{
  result = [objc_allocWithZone(type metadata accessor for FamilyChecklistAnalytics()) init];
  qword_27CDBDB90 = result;
  return result;
}

id FamilyChecklistAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static FamilyChecklistAnalytics.shared.getter()
{
  if (qword_27CDB5008 != -1)
  {
    swift_once();
  }

  v1 = qword_27CDBDB90;

  return v1;
}

double sub_21BDF28B0(char a1)
{
  if (qword_27CDB4F68 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v4 = a1;

  v1 = sub_21BBB5E60(MEMORY[0x277D84F90]);
  sub_21BCA55DC(&v4, v1);

  return result;
}

double sub_21BDF2964(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_27CDB4F68 != -1)
  {
    v5 = a3;
    swift_once();
    a3 = v5;
  }

  v6 = a3;

  v3 = sub_21BBB5E60(MEMORY[0x277D84F90]);
  sub_21BCA55DC(&v6, v3);

  return result;
}

id FamilyChecklistAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyChecklistAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FamilyChecklistAnalytics.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FamilyChecklistAnalytics();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id static FASwiftUIHostingControllerProvider.getFamilySettingsViewController(viewModel:locationModel:pictureStore:appleAccount:accountManager:delegate:appleCardFamilySettingsViewModel:hostingViewController:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  swift_getObjectType();

  return sub_21BDF37A0(a1, a2, a3, a5, a6, a7, a8);
}

id sub_21BDF2F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 32);
  v23[3] = *(a1 + 48);
  v23[4] = v6;
  v23[5] = v7;
  v24 = *(a1 + 96);
  v9 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v9;
  v23[2] = v8;
  v10 = MEMORY[0x277D85000];
  v11 = v3 + *((*MEMORY[0x277D85000] & *v3) + 0x70);
  v12 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v12;
  v30 = *(a1 + 96);
  v13 = v30;
  v14 = *(a1 + 80);
  v28 = *(a1 + 64);
  v15 = v28;
  v29 = v14;
  v17 = *(a1 + 48);
  v26 = *(a1 + 32);
  v16 = v26;
  v27 = v17;
  *v11 = v25[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v16;
  *(v11 + 3) = v17;
  *(v11 + 4) = v15;
  *(v11 + 5) = v14;
  *(v11 + 12) = v13;
  sub_21BC12ED0(v25, v22);
  sub_21BD10D60();
  v22[0] = sub_21BE2852C();
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5778, &qword_21BE4F700));
  *(v3 + *((*v10 & *v3) + 0x60)) = sub_21BE2774C();
  v19 = (v3 + *((*v10 & *v3) + 0x68));
  *v19 = a2;
  v19[1] = a3;
  v21.receiver = v3;
  v21.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBA0, &qword_21BE4F610);
  return objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
}

id static FASwiftUIHostingControllerProvider.getLocationViewController(viewModel:pictureStore:hackfromObjC:)(void *a1, void *a2, uint64_t a3)
{
  sub_21BDFD940(a1, a2, a3, v5);
  v3 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBA0, &qword_21BE4F610));
  return sub_21BDF2F58(v5, 0, 0);
}

uint64_t static FASwiftUIHostingControllerProvider.getFamilyChecklistHeaderView()()
{
  type metadata accessor for FamilyNetworkMonitor(0);
  sub_21BDF471C(&qword_27CDBC320, type metadata accessor for FamilyNetworkMonitor, protocol conformance descriptor for FamilyNetworkMonitor);
  sub_21BE2727C();
  v0 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBB0, &qword_21BE4F618));
  return sub_21BE2774C();
}

char *static FASwiftUIHostingControllerProvider.getCheckListController(specifiers:)(uint64_t a1)
{
  v1 = objc_allocWithZone(type metadata accessor for CheckListHostController(0));

  return sub_21BD92B14(v2);
}

uint64_t static FASwiftUIHostingControllerProvider.getLoadingController(cancelAction:)(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBB8, qword_21BE4F620));
  sub_21BC5A604(a1, a2);
  return sub_21BE2774C();
}

id FASwiftUIHostingControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FASwiftUIHostingControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FASwiftUIHostingControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FASwiftUIHostingControllerProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FASwiftUIHostingControllerProvider();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_21BDF37A0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v69 = a7;
  v66 = a2;
  v67 = a6;
  v64 = a3;
  v65 = a5;
  v9 = type metadata accessor for FamilyLandingPageMainView(0);
  v10 = MEMORY[0x28223BE20](v9);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v17 = [objc_allocWithZone(FAChecklistStore) init];
  LOBYTE(v71) = 1;
  v18 = v17;
  sub_21BE283EC();
  v19 = v73;
  v16[40] = v72;
  *(v16 + 6) = v19;
  v20 = v9[7];
  *&v16[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5740, &qword_21BE327B0);
  swift_storeEnumTagMultiPayload();
  v21 = v9[8];
  *&v16[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  swift_storeEnumTagMultiPayload();
  v22 = &v16[v9[10]];
  LOBYTE(v71) = 0;
  sub_21BE283EC();
  v23 = v73;
  *v22 = v72;
  *(v22 + 1) = v23;
  swift_unknownObjectWeakInit();
  v24 = &v16[v9[14]];
  LOBYTE(v71) = 0;
  sub_21BE283EC();
  v25 = v73;
  *v24 = v72;
  *(v24 + 1) = v25;
  v26 = &v16[v9[18]];
  LOBYTE(v71) = 0;
  sub_21BE283EC();
  v27 = v73;
  *v26 = v72;
  *(v26 + 1) = v27;
  v28 = &v16[v9[20]];
  *v28 = sub_21BBDC524;
  *(v28 + 1) = 0;
  v28[16] = 0;
  v29 = &v16[v9[21]];
  type metadata accessor for ChecklistStateVars(0);
  swift_allocObject();
  v71 = ChecklistStateVars.init()();
  sub_21BE283EC();
  v30 = v73;
  *v29 = v72;
  v29[1] = v30;
  v31 = &v16[v9[22]];
  v71 = 0;
  sub_21BE283EC();
  v32 = v73;
  *v31 = v72;
  v31[1] = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  *v16 = sub_21BBB510C;
  *(v16 + 1) = v33;
  v16[16] = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = v18;
  v35 = &v16[v9[15]];
  *v35 = sub_21BBB510C;
  *(v35 + 1) = v34;
  v35[16] = 0;
  v36 = &v16[v9[17]];
  *v36 = sub_21BBFE74C;
  *(v36 + 1) = 0;
  v36[16] = 0;
  v37 = qword_280BD76F0;
  v38 = v18;
  v39 = a1;
  if (v37 != -1)
  {
    swift_once();
  }

  v40 = &v16[v9[9]];
  type metadata accessor for ServicesStore(0);
  sub_21BDF471C(&qword_27CDB5750, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);

  *v40 = sub_21BE270CC();
  v40[1] = v41;
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();
  *&v16[v9[23]] = sub_21BC84D18(0x20676E69646E614CLL, 0xEC00000065676170, "initToView", 10, 2u);
  v42 = &v16[v9[16]];
  *v42 = sub_21BBFE770;
  *(v42 + 1) = 0;
  v42[16] = 0;
  v43 = &v16[v9[11]];
  sub_21BBDAF04();
  sub_21BDF471C(&qword_280BD8A20, sub_21BBDAF04, protocol conformance descriptor for FAProfilePictureStore);
  v44 = v64;
  *v43 = sub_21BE270CC();
  v43[1] = v45;
  swift_unknownObjectWeakAssign();
  *&v16[v9[12]] = a4;
  type metadata accessor for LocationViewModel(0);
  sub_21BDF471C(&qword_27CDBDC20, type metadata accessor for LocationViewModel, protocol conformance descriptor for LocationViewModel);
  v46 = a4;
  v47 = v66;
  *(v16 + 3) = sub_21BE270CC();
  *(v16 + 4) = v48;
  v49 = &v16[v9[19]];
  type metadata accessor for AppleCardFamilySettingsViewModel(0);
  sub_21BDF471C(&unk_27CDB5760, type metadata accessor for AppleCardFamilySettingsViewModel, protocol conformance descriptor for AppleCardFamilySettingsViewModel);
  v50 = v67;
  v51 = sub_21BE270CC();
  v53 = v52;

  *v49 = v51;
  v49[1] = v53;
  v54 = v69;
  *&v16[v9[24]] = v69;
  sub_21BDF46B4(v16, v14, type metadata accessor for FamilyLandingPageMainView);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC30, &unk_21BE327F0);
  v56 = objc_allocWithZone(v55);
  v57 = MEMORY[0x277D85000];
  sub_21BDF46B4(v14, v56 + *((*MEMORY[0x277D85000] & *v56) + 0x70), type metadata accessor for FamilyLandingPageMainView);
  v67 = v38;
  sub_21BDF46B4(v14, v68, type metadata accessor for FamilyLandingPageMainView);
  sub_21BDF471C(&qword_27CDB5770, type metadata accessor for FamilyLandingPageMainView, protocol conformance descriptor for FamilyLandingPageMainView);
  v58 = v54;
  v72 = sub_21BE2852C();
  v59 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5778, &qword_21BE4F700));
  *(v56 + *((*v57 & *v56) + 0x60)) = sub_21BE2774C();
  v60 = (v56 + *((*v57 & *v56) + 0x68));
  *v60 = 0;
  v60[1] = 0;
  v70.receiver = v56;
  v70.super_class = v55;
  v61 = objc_msgSendSuper2(&v70, sel_initWithNibName_bundle_, 0, 0);
  sub_21BDF4764(v14, type metadata accessor for FamilyLandingPageMainView);

  sub_21BDF4764(v16, type metadata accessor for FamilyLandingPageMainView);
  return v61;
}

id _s14FamilyCircleUI34FASwiftUIHostingControllerProviderC033familyMemberAccountChangePasswordF004mainJ012memberToShow0hB0So06UIViewF0CSo08FAFamilyI0C_AKSo0rB0CtFZ_0(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for FamilyMemberAccountDetails(0);
  v7 = MEMORY[0x28223BE20](v6);
  v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v67 = &v64 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v64 - v12);
  MEMORY[0x28223BE20](v11);
  v66 = &v64 - v14;
  v15 = [a1 altDSID];
  if (v15)
  {
    v16 = v15;
    v17 = sub_21BE28A0C();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = [a2 altDSID];
  if (v20)
  {
    v21 = v20;
    v22 = sub_21BE28A0C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  v70 = type metadata accessor for FamilyDependentPasswordResetController();
  v25 = objc_allocWithZone(v70);
  v26 = sub_21BC0C5A4(v17, v19, v22, v24);
  v69 = [objc_allocWithZone(type metadata accessor for FamilyMemberAccountDetailsViewModel()) init];
  v27 = [objc_allocWithZone(MEMORY[0x277D08210]) init];
  type metadata accessor for AgeRangeSharingViewModel(0);
  v28 = swift_allocObject();
  v29 = a2;
  v68 = sub_21BCBF078(v27, v29, v28);
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  swift_storeEnumTagMultiPayload();
  v30 = (v13 + v6[9]);
  *v30 = 0;
  v30[1] = 0xE000000000000000;
  v31 = v13 + v6[11];
  LOBYTE(v72) = 0;
  v32 = v26;
  v64 = a1;
  sub_21BE283EC();
  v33 = v74;
  *v31 = v73;
  *(v31 + 1) = v33;
  v34 = v6[13];
  *(v13 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  *(v13 + v6[6]) = a1;
  *(v13 + v6[7]) = v29;
  *(v13 + v6[8]) = a3;
  v35 = a3;
  v36 = (v13 + v6[5]);
  sub_21BDF471C(&qword_27CDBDBE0, type metadata accessor for FamilyMemberAccountDetailsViewModel, aF_5);
  v37 = v29;
  v38 = v35;
  v39 = v69;
  *v36 = sub_21BE270CC();
  v36[1] = v40;
  v41 = (v13 + v6[12]);
  v72 = v32;
  v42 = v32;
  sub_21BE283EC();
  v43 = v74;
  *v41 = v73;
  v41[1] = v43;
  *(v13 + v6[10]) = v68;
  v44 = v13 + v6[14];
  LOBYTE(v72) = 0;
  sub_21BE283EC();
  v45 = v74;
  *v44 = v73;
  *(v44 + 1) = v45;
  if (![v37 isChildAccount])
  {
    goto LABEL_12;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v47 = result;
    v48 = [result hasLocalSecret];

    if (v48 && [v64 isGuardian])
    {
      v49 = 0x800000021BE5D480;
      v50 = 0xD00000000000001CLL;
LABEL_13:
      String.rebrand.getter(v50, v49);
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v52 = [objc_opt_self() bundleForClass_];
      v53 = sub_21BE2599C();
      v55 = v54;

      *v30 = v53;
      v30[1] = v55;
      v56 = v66;
      sub_21BC35600(v13, v66);
      v57 = v67;
      sub_21BDF46B4(v56, v67, type metadata accessor for FamilyMemberAccountDetails);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBE8, &qword_21BE4F6F8);
      v59 = objc_allocWithZone(v58);
      v60 = MEMORY[0x277D85000];
      sub_21BDF46B4(v57, v59 + *((*MEMORY[0x277D85000] & *v59) + 0x70), type metadata accessor for FamilyMemberAccountDetails);
      sub_21BDF46B4(v57, v65, type metadata accessor for FamilyMemberAccountDetails);
      sub_21BDF471C(&unk_27CDBDBF0, type metadata accessor for FamilyMemberAccountDetails, aPFU);
      v73 = sub_21BE2852C();
      v61 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5778, &qword_21BE4F700));
      *(v59 + *((*v60 & *v59) + 0x60)) = sub_21BE2774C();
      v62 = (v59 + *((*v60 & *v59) + 0x68));
      *v62 = 0;
      v62[1] = 0;
      v71.receiver = v59;
      v71.super_class = v58;
      v63 = objc_msgSendSuper2(&v71, sel_initWithNibName_bundle_, 0, 0);
      sub_21BDF4764(v57, type metadata accessor for FamilyMemberAccountDetails);

      sub_21BDF4764(v56, type metadata accessor for FamilyMemberAccountDetails);
      return v63;
    }

LABEL_12:
    v50 = 0x44495F454C505041;
    v49 = 0xEE004C4542414C5FLL;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t _s14FamilyCircleUI34FASwiftUIHostingControllerProviderC015getSettingsViewF018resourceDictionarySo06UIViewF0CSDys11AnyHashableVypG_tFZ_0()
{
  if (qword_280BD7EB8 != -1)
  {
    swift_once();
  }

  sub_21BB3A35C(&qword_280BD7EC0, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBC0, &qword_21BE4F678);
  type metadata accessor for FamilyViewsProvider(0);
  if (swift_dynamicCast())
  {
    v0 = *(v3 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView);
    *(v3 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastFamilyView) = 0;

    *(v3 + OBJC_IVAR____TtC14FamilyCircleUI19FamilyViewsProvider_lastRowStatus) = 0;
  }

  v1 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDBC8, &qword_21BE4F680));
  v4[0] = sub_21BDCFB14;
  v4[1] = 0;
  v5 = 0;
  return sub_21BE2774C();
}

uint64_t sub_21BDF46B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21BDF471C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BDF4764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21BDF4800@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_21BE2599C();
  v23 = v10;
  v24 = v9;

  v11 = [v7 bundleForClass_];
  v12 = sub_21BE2599C();
  v21 = v13;
  v22 = v12;

  sub_21BDF4AAC(&v29);
  v14 = [v7 bundleForClass_];
  v15 = sub_21BE2599C();
  v17 = v16;

  a5[13] = &type metadata for LocationDataItem;
  a5[14] = sub_21BDF5110();
  v18 = swift_allocObject();
  a5[10] = v18;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *a5 = v24;
  a5[1] = v23;
  a5[2] = v22;
  a5[3] = v21;

  v19 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
  sub_21BC65EA8();
  result = sub_21BE2852C();
  a5[15] = result;
  a5[6] = 0;
  a5[7] = v15;
  a5[8] = v17;
  a5[9] = 0;
  a5[4] = 0;
  a5[5] = 0;
  return result;
}

void sub_21BDF4AAC(uint64_t a1@<X8>)
{
  v2 = sub_21BE2838C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v7 = sub_21BE289CC();
  v8 = [v6 initWithBundleIdentifier_];

  v9 = [objc_opt_self() imageDescriptorNamed_];
  v10 = [v8 prepareImageForDescriptor_];

  if (v10)
  {
    v11 = [v10 CGImage];
    if (v11)
    {
      v12 = v11;
      [v10 iconSize];
      [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

      sub_21BE2836C();
      (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
      v13 = sub_21BE283CC();

      (*(v3 + 8))(v5, v2);
      sub_21BE2869C();
      sub_21BE26F2C();
      v14 = v18;
      v15 = v19;
      v16 = v20;
      v17 = v21;

      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 24) = v16;
      *(a1 + 32) = v17;
      *(a1 + 40) = v22;
      return;
    }

    __break(1u);
  }

  sub_21BE2978C();
  __break(1u);
}

double sub_21BDF4D84@<D0>(char a1@<W0>, unint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  v11 = sub_21BE2599C();
  v31 = v12;
  v32 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21BE33260;
  if (a2 >> 62)
  {
    v14 = sub_21BE2951C();
  }

  else
  {
    v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D83B88];
  v16 = MEMORY[0x277D83C10];
  *(v13 + 56) = MEMORY[0x277D83B88];
  *(v13 + 64) = v16;
  *(v13 + 32) = v14;

  v30 = a3;
  v17 = sub_21BE2905C();
  if (v17 >> 62)
  {
    v18 = sub_21BE2951C();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v13 + 96) = v15;
  *(v13 + 104) = v16;
  *(v13 + 72) = v18 & ~(v18 >> 63);

  v19 = [v9 bundleForClass_];
  sub_21BE2599C();

  v20 = sub_21BE289DC();
  v28 = v21;
  v29 = v20;

  v22 = [v9 bundleForClass_];
  v23 = sub_21BE2599C();
  v25 = v24;

  sub_21BDF4AAC(&v35);
  *(a5 + 104) = &type metadata for LocationDataItem;
  *(a5 + 112) = sub_21BDF5110();
  v26 = swift_allocObject();
  *(a5 + 80) = v26;
  *(v26 + 16) = a1 & 1;
  *(v26 + 24) = a2;
  *(v26 + 32) = v30;
  *(v26 + 40) = a4;
  *a5 = v32;
  *(a5 + 8) = v31;
  *(a5 + 16) = v29;
  *(a5 + 24) = v28;
  *(a5 + 32) = v23;
  *(a5 + 40) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8110, &unk_21BE3AE10);
  sub_21BC65EA8();
  *(a5 + 120) = sub_21BE2852C();
  result = 0.0;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  return result;
}

unint64_t sub_21BDF5110()
{
  result = qword_27CDBDC38;
  if (!qword_27CDBDC38)
  {
    result = swift_getWitnessTable(byte_21BE3D0F4, &type metadata for LocationDataItem, v0, v1);
    atomic_store(result, &qword_27CDBDC38);
  }

  return result;
}

id ScreenTimePasscodeDelegate.__allocating_init(flowStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id ScreenTimePasscodeDelegate.init(flowStore:)(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ScreenTimePasscodeDelegate();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_21BDF528C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_21BE28D7C();
  v4[4] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDF5324, v6, v5);
}

uint64_t sub_21BDF5324()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_27CDB4F48 != -1)
    {
      swift_once();
    }

    [sub_21BDC7650() dismissWithError:qword_27CDB8C08 response:0];
    swift_unknownObjectRelease();
    sub_21BDC83CC();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

id ScreenTimePasscodeDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScreenTimePasscodeDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenTimePasscodeDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BDF5504()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261CC();
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v4, v5, "ST passcode authentication successful", v6, 2u);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

double sub_21BDF5638()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE261CC();
  v9 = sub_21BE26A2C();
  v10 = sub_21BE28FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21BB35000, v9, v10, "ST passcode authentication failed", v11, 2u);
    MEMORY[0x21CF05C50](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  sub_21BE28D7C();
  v13 = v1;
  v14 = sub_21BE28D6C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  sub_21BBA9018(0, 0, v4, &unk_21BE4F8F0, v15);

  return result;
}

uint64_t sub_21BDF5904(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BDF528C(a1, v4, v5, v6);
}

uint64_t sub_21BDF59F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_21BDF5A3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21BDF5AA8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = *a1;
  if (!*a1)
  {
    MEMORY[0x21CF01210](0xD000000000000037, 0x800000021BE62700, 0xD000000000000010, 0x800000021BE573A0, 500);
    goto LABEL_42;
  }

  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_21BB3A35C(a2, v64);
  v60[4] = v4;
  v61 = *(a1 + 8);
  v62 = v8;
  v63 = v7;

  v9 = sub_21BB41E7C(v8, v7);
  if (!v10)
  {

    *&v55 = 0xE000000000000000;
    sub_21BE295EC();

    v58 = 0xD000000000000013;
    v59 = 0x800000021BE62740;
    v54 = v4;
    v55 = *(a1 + 8);
    v56 = v8;
    v57 = v7;

    v45 = sub_21BE28A5C();
    MEMORY[0x21CF03CA0](v45);

    MEMORY[0x21CF01210](0xD000000000000013, 0x800000021BE62740, 0xD000000000000010, 0x800000021BE573A0, 500);
LABEL_41:

LABEL_42:
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    if (v4)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v64);
    }

    return;
  }

  v50 = v7;
  v51 = v9;
  v52 = v10;
  v48 = a3;
  v11 = *(v4 + 16);
  v67 = v3;
  if (v11)
  {
    v12 = 0;
    v13 = v4 + 56;
    v47 = v11 - 1;
    v14 = MEMORY[0x277D84F90];
    do
    {
      v49 = v14;
      v15 = v13 + 48 * v12;
      v16 = v12;
      while (1)
      {
        if (v16 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_46;
        }

        if (*(v15 - 16))
        {
          v17 = v13;

          v18 = sub_21BE2980C();

          if (v18 < 7)
          {
            break;
          }
        }

        ++v16;
        v15 += 48;
        if (v11 == v16)
        {
          v3 = v67;
          v14 = v49;
          goto LABEL_19;
        }
      }

      v14 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_21BBBCD3C(0, *(v49 + 2) + 1, 1, v49);
      }

      v20 = *(v14 + 2);
      v19 = *(v14 + 3);
      if (v20 >= v19 >> 1)
      {
        v14 = sub_21BBBCD3C((v19 > 1), v20 + 1, 1, v14);
      }

      v12 = v16 + 1;
      *(v14 + 2) = v20 + 1;
      v14[v20 + 32] = v18;
      v21 = v47 == v16;
      v3 = v67;
      v13 = v17;
    }

    while (!v21);
LABEL_19:
    if (!*(v14 + 2))
    {
      goto LABEL_40;
    }

    goto LABEL_20;
  }

  v14 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
LABEL_40:

    sub_21BE295EC();

    MEMORY[0x21CF03CA0](v51, v52);

    MEMORY[0x21CF01210](0xD000000000000021, 0x800000021BE62760, 0xD000000000000010, 0x800000021BE573A0, 500);
    goto LABEL_41;
  }

LABEL_20:
  v60[0] = v14;
  v54 = sub_21BBB62CC(MEMORY[0x277D84F90]);
  MEMORY[0x28223BE20](v54);
  v46[2] = v51;
  v46[3] = v52;
  v46[4] = v3;
  v46[5] = &v54;

  sub_21BBFB9C4(sub_21BDF7044, v46, v4);

  swift_bridgeObjectRelease_n();
  v22 = v54;
  v60[2] = v54;
  v23 = v65;
  v24 = v66;
  __swift_project_boxed_opaque_existential_1Tm(v64, v65);
  v25 = *(v24 + 24);

  v60[1] = v25(v26, v23, v24);
  v27 = v65;
  v28 = v66;
  __swift_project_boxed_opaque_existential_1Tm(v64, v65);
  v29 = (*(v28 + 8))(v27, v28);
  v30 = v29;
  if (*(v22 + 16))
  {
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v35 = 0;
    v53 = v30;
    while (v33)
    {
LABEL_30:
      v39 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v40 = *(*(v30 + 48) + (v39 | (v35 << 6)));
      if (*(v22 + 16))
      {
        sub_21BBB3230(v40);
        if (v41)
        {
          continue;
        }
      }

      v36 = sub_21BBB3230(v40);
      if (v37)
      {
        v52 = v36;
        v42 = v53;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21BC822EC();
          v42 = v58;
        }

        v44 = v52;

        v53 = v42;
        sub_21BC7F56C(v44, v42);
      }
    }

    while (1)
    {
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v38 >= v34)
      {
        swift_bridgeObjectRelease_n();

        v3 = v67;
        v30 = v53;
        goto LABEL_38;
      }

      v33 = *(v30 + 64 + 8 * v38);
      ++v35;
      if (v33)
      {
        v35 = v38;
        goto LABEL_30;
      }
    }

LABEL_46:
    __break(1u);
  }

  else
  {
LABEL_38:

    v60[3] = v30;
    sub_21BBFD750(v60, v48);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    sub_21BBFD7AC(v60);
  }
}

uint64_t sub_21BDF617C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t *a5)
{
  v6 = v5;
  v90 = a3;
  v84 = a2;
  v88 = sub_21BE26A4C();
  v86 = *(v88 - 8);
  v10 = MEMORY[0x28223BE20](v88);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v87 = &v76 - v13;
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *(a1 + 24);
  v85 = *(a1 + 16);
  v89 = v16;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  if (!v14 || (, v19 = sub_21BC5C4D8(v15, v14), v19 == 7))
  {
    LODWORD(v87) = v18;
    sub_21BE261BC();

    v20 = v90;

    v21 = v89;

    v22 = sub_21BE26A2C();
    v23 = sub_21BE28FFC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v81 = v5;
      v25 = v24;
      v26 = v21;
      v27 = swift_slowAlloc();
      v98 = v27;
      *v25 = 136315394;
      v92 = v15;
      v93 = v14;
      v94 = v85;
      v95 = v26;
      v96 = v17;
      v97 = v87;

      v28 = sub_21BE28A5C();
      v30 = sub_21BB3D81C(v28, v29, &v98);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_21BB3D81C(v84, v20, &v98);
      _os_log_impl(&dword_21BB35000, v22, v23, "Invalid category id skipped %s in %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v27, -1, -1);
      MEMORY[0x21CF05C50](v25, -1, -1);
    }

    return (*(v86 + 8))(v12, v88);
  }

  v32 = v19;
  v33 = a4[3];
  v34 = a4[4];
  __swift_project_boxed_opaque_existential_1Tm(a4, v33);
  v35 = (*(v34 + 16))(v33, v34);
  if (*(v35 + 16))
  {
    v36 = sub_21BBB3230(v32);
    v37 = v89;
    if (v38)
    {
      v39 = *(*(v35 + 56) + 8 * v36);
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
    v37 = v89;
  }

  v78 = v32;
  v79 = a5;

  v83 = sub_21BDF729C(v39);

  v41 = *(v37 + 16);
  if (v41)
  {
    v42 = 0;
    v86 += 8;
    v43 = v37 + 48;
    v80 = MEMORY[0x277D84F90];
    *&v40 = 136315394;
    v82 = v40;
    v81 = v5;
    v77 = v41;
    v76 = v37 + 48;
    while (1)
    {
      v44 = v41 - v42;
      v45 = (v43 + 24 * v42);
      while (1)
      {
        if (v42 >= *(v37 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v47 = *(v45 - 2);
        v46 = *(v45 - 1);
        v48 = *v45;
        if (!v46 || (swift_bridgeObjectRetain_n(), v49 = sub_21BC5C438(v47, v46), v49 == 16))
        {
          sub_21BE261BC();

          v50 = sub_21BE26A2C();
          v51 = sub_21BE28FFC();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v91 = v85;
            v92 = v47;
            *v52 = v82;
            v93 = v46;
            v94 = v48;

            v53 = sub_21BE28A5C();
            v55 = sub_21BB3D81C(v53, v54, &v91);

            *(v52 + 4) = v55;
            *(v52 + 12) = 2080;
            *(v52 + 14) = sub_21BB3D81C(v84, v90, &v91);
            _os_log_impl(&dword_21BB35000, v50, v51, "Invalid itemType skipped %s in %s", v52, 0x16u);
            v56 = v85;
            swift_arrayDestroy();
            MEMORY[0x21CF05C50](v56, -1, -1);
            MEMORY[0x21CF05C50](v52, -1, -1);
          }

          (*v86)(v87, v88);

          v37 = v89;
          goto LABEL_15;
        }

        if (sub_21BDE51A0(v49, v83))
        {
          break;
        }

LABEL_15:
        v45 += 3;
        ++v42;
        if (!--v44)
        {
          v6 = v81;
          goto LABEL_31;
        }
      }

      v57 = v80;
      result = swift_isUniquelyReferenced_nonNull_native();
      v98 = v57;
      if ((result & 1) == 0)
      {
        result = sub_21BC59E14(0, *(v57 + 16) + 1, 1);
        v57 = v98;
      }

      v6 = v81;
      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      if (v59 >= v58 >> 1)
      {
        result = sub_21BC59E14((v58 > 1), v59 + 1, 1);
        v57 = v98;
      }

      ++v42;
      *(v57 + 16) = v59 + 1;
      v80 = v57;
      v60 = (v57 + 24 * v59);
      v60[4] = v47;
      v60[5] = v46;
      v60[6] = v48;
      v37 = v89;
      v41 = v77;
      v43 = v76;
      if (v44 == 1)
      {
        goto LABEL_31;
      }
    }
  }

  v80 = MEMORY[0x277D84F90];
LABEL_31:

  v61 = v80;
  v62 = *(v80 + 16);
  if (v62)
  {
    v63 = 0;
    v64 = v80 + 40;
    v65 = MEMORY[0x277D84F90];
LABEL_33:
    v66 = v62 - v63;
    v67 = (v64 + 24 * v63);
    while (v63 < *(v61 + 16))
    {
      v68 = *v67;
      if (*v67)
      {
        v69 = *(v67 - 1);

        result = sub_21BC5C438(v69, v68);
        if (result != 16)
        {
          v70 = result;
          result = swift_isUniquelyReferenced_nonNull_native();
          v71 = v6;
          if ((result & 1) == 0)
          {
            result = sub_21BBBCD28(0, *(v65 + 16) + 1, 1, v65);
            v65 = result;
          }

          v73 = *(v65 + 16);
          v72 = *(v65 + 24);
          if (v73 >= v72 >> 1)
          {
            result = sub_21BBBCD28((v72 > 1), v73 + 1, 1, v65);
            v65 = result;
          }

          ++v63;
          *(v65 + 16) = v73 + 1;
          *(v65 + v73 + 32) = v70;
          v6 = v71;
          v61 = v80;
          if (v66 != 1)
          {
            goto LABEL_33;
          }

          goto LABEL_45;
        }
      }

      v67 += 3;
      ++v63;
      if (!--v66)
      {
        goto LABEL_45;
      }
    }

LABEL_47:
    __break(1u);
  }

  else
  {
    v65 = MEMORY[0x277D84F90];
LABEL_45:

    v74 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = *v74;
    *v74 = 0x8000000000000000;
    result = sub_21BC807CC(v65, v78, isUniquelyReferenced_nonNull_native);
    *v74 = v92;
  }

  return result;
}

uint64_t sub_21BDF6910()
{
  if (*v0)
  {
    return 0x676E696B6E6172;
  }

  else
  {
    return 0x657079546D657469;
  }
}

uint64_t sub_21BDF694C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657079546D657469 && a2 == 0xE800000000000000;
  if (v6 || (sub_21BE2995C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696B6E6172 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21BE2995C();

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

uint64_t sub_21BDF6A28(uint64_t a1)
{
  v2 = sub_21BDF7EB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BDF6A64(uint64_t a1)
{
  v2 = sub_21BDF7EB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BDF6AA0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21BDF7494(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_21BDF6AD0()
{
  v1 = 25705;
  v2 = 0x736D657469;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x676E696B6E6172;
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

uint64_t sub_21BDF6B40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21BDF7648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21BDF6B68(uint64_t a1)
{
  v2 = sub_21BDF7F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BDF6BA4(uint64_t a1)
{
  v2 = sub_21BDF7F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21BDF6BE0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_21BDF77A8(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

unint64_t sub_21BDF6C24()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x795474656B637562;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69726F6765746163;
  }
}

uint64_t sub_21BDF6C88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21BDF7A6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21BDF6CB0(uint64_t a1)
{
  v2 = sub_21BDF7E10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BDF6CEC(uint64_t a1)
{
  v2 = sub_21BDF7E10();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21BDF6D28@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_21BDF7B9C(a2, v6);
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

void sub_21BDF6D70(void *a3@<X8>)
{
  v4 = sub_21BE26A4C();
  MEMORY[0x28223BE20](v4);
  sub_21BE2578C();
  swift_allocObject();
  sub_21BE2577C();
  sub_21BD24E50();
  sub_21BE2576C();

  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  a3[4] = v9;
}

unint64_t sub_21BDF7064(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAF38, &unk_21BE4FB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE374E0;
  *(inited + 32) = 0;
  *(inited + 40) = &unk_282D85100;
  *(inited + 48) = 1;
  *(inited + 56) = &unk_282D85128;
  *(inited + 64) = 2;
  v3 = MEMORY[0x277D84F90];
  *(inited + 72) = MEMORY[0x277D84F90];
  *(inited + 80) = 3;
  if (*(a1 + 16) && (v4 = sub_21BBB3230(2), (v5 & 1) != 0))
  {
    *(inited + 88) = *(*(a1 + 56) + 8 * v4);
  }

  else
  {
    *(inited + 88) = v3;
  }

  v6 = sub_21BBB64E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAF40, &unk_21BE45C50);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_21BDF716C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21BE2951C())
  {
    v4 = sub_21BDF8378();
    v5 = sub_21BC692B8();
    result = MEMORY[0x21CF04010](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CF047C0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_21BC679C8(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_21BE2951C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21BDF729C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21BBFD988();
  result = MEMORY[0x21CF04010](v2, &type metadata for ChecklistItemType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_21BC67DB0(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_21BDF7320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21BDF737C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21BDF73E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21BDF7428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21BDF7494(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC58, &qword_21BE4FB50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BDF7EB8();
  sub_21BE29B4C();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_21BE2982C();
    v9[14] = 1;
    sub_21BE2989C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

uint64_t sub_21BDF7648(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_21BE2995C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696B6E6172 && a2 == 0xE700000000000000 || (sub_21BE2995C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_21BE2995C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021BE627B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_21BE2995C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21BDF77A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC60, &qword_21BE4FB58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BDF7F0C();
  sub_21BE29B4C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v26 = 0;
    v9 = sub_21BE2982C();
    v11 = v10;
    v21 = v9;
    v25 = 1;
    v20 = sub_21BE2989C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC68, &qword_21BE4FB60);
    v24 = 2;
    sub_21BDF7F60(&qword_280BD69B8, &qword_27CDBDC68, &qword_21BE4FB60, sub_21BDF7FDC);
    sub_21BE298AC();
    v12 = v22;
    v23 = 3;
    v13 = sub_21BE2984C();
    v14 = v8;
    v16 = v15;
    (*(v6 + 8))(v14, v5);
    result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v18 = v20;
    *a2 = v21;
    *(a2 + 8) = v11;
    *(a2 + 16) = v18;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 40) = v16 & 1;
  }

  return result;
}

uint64_t sub_21BDF7A6C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_21BE2995C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021BE62790 == a2 || (sub_21BE2995C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x795474656B637562 && a2 == 0xEA00000000006570)
  {

    return 2;
  }

  else
  {
    v5 = sub_21BE2995C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21BDF7B9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC48, &qword_21BE4FB30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BDF7E10();
  sub_21BE29B4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC50, &qword_21BE4FB38);
  v21 = 0;
  sub_21BDF7F60(&qword_280BD69B0, &qword_27CDBDC50, &qword_21BE4FB38, sub_21BDF7E64);
  sub_21BE298AC();
  v9 = v22;
  v20 = 1;
  v10 = sub_21BE2984C();
  v18 = v11;
  v17 = v10;
  v19 = 2;
  v12 = sub_21BE2986C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v16 = v17;
  *a2 = v9;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  return result;
}

unint64_t sub_21BDF7E10()
{
  result = qword_280BD6FE0;
  if (!qword_280BD6FE0)
  {
    result = swift_getWitnessTable(byte_21BE4FE3C, &type metadata for ChecklistDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_280BD6FE0);
  }

  return result;
}

unint64_t sub_21BDF7E64()
{
  result = qword_280BD6FE8;
  if (!qword_280BD6FE8)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for ChecklistDefinition.CategoryDefinition, v0, v1);
    atomic_store(result, &qword_280BD6FE8);
  }

  return result;
}

unint64_t sub_21BDF7EB8()
{
  result = qword_280BD7020;
  if (!qword_280BD7020)
  {
    result = swift_getWitnessTable(asc_21BE4FDEC, &type metadata for ChecklistDefinition.ItemDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_280BD7020);
  }

  return result;
}

unint64_t sub_21BDF7F0C()
{
  result = qword_280BD7000;
  if (!qword_280BD7000)
  {
    result = swift_getWitnessTable(byte_21BE4FD9C, &type metadata for ChecklistDefinition.CategoryDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_280BD7000);
  }

  return result;
}

uint64_t sub_21BDF7F60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BDF7FDC()
{
  result = qword_280BD7008;
  if (!qword_280BD7008)
  {
    result = swift_getWitnessTable(asc_21BE4FACC, &type metadata for ChecklistDefinition.ItemDefinition, v0, v1);
    atomic_store(result, &qword_280BD7008);
  }

  return result;
}

unint64_t sub_21BDF8064()
{
  result = qword_27CDBDC70;
  if (!qword_27CDBDC70)
  {
    result = swift_getWitnessTable(aTFx, &type metadata for ChecklistDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDBDC70);
  }

  return result;
}

unint64_t sub_21BDF80BC()
{
  result = qword_27CDBDC78;
  if (!qword_27CDBDC78)
  {
    result = swift_getWitnessTable(asc_21BE4FCBC, &type metadata for ChecklistDefinition.ItemDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDBDC78);
  }

  return result;
}

unint64_t sub_21BDF8114()
{
  result = qword_27CDBDC80;
  if (!qword_27CDBDC80)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for ChecklistDefinition.CategoryDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CDBDC80);
  }

  return result;
}

unint64_t sub_21BDF816C()
{
  result = qword_280BD6FF0;
  if (!qword_280BD6FF0)
  {
    result = swift_getWitnessTable(byte_21BE4FCE4, &type metadata for ChecklistDefinition.CategoryDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_280BD6FF0);
  }

  return result;
}

unint64_t sub_21BDF81C4()
{
  result = qword_280BD6FF8;
  if (!qword_280BD6FF8)
  {
    result = swift_getWitnessTable(aVF_1, &type metadata for ChecklistDefinition.CategoryDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_280BD6FF8);
  }

  return result;
}

unint64_t sub_21BDF821C()
{
  result = qword_280BD7010;
  if (!qword_280BD7010)
  {
    result = swift_getWitnessTable(aU_2, &type metadata for ChecklistDefinition.ItemDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_280BD7010);
  }

  return result;
}

unint64_t sub_21BDF8274()
{
  result = qword_280BD7018;
  if (!qword_280BD7018)
  {
    result = swift_getWitnessTable(byte_21BE4FC54, &type metadata for ChecklistDefinition.ItemDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_280BD7018);
  }

  return result;
}

unint64_t sub_21BDF82CC()
{
  result = qword_280BD6FD0;
  if (!qword_280BD6FD0)
  {
    result = swift_getWitnessTable(asc_21BE4FB74, &type metadata for ChecklistDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_280BD6FD0);
  }

  return result;
}

unint64_t sub_21BDF8324()
{
  result = qword_280BD6FD8;
  if (!qword_280BD6FD8)
  {
    result = swift_getWitnessTable(asc_21BE4FB9C, &type metadata for ChecklistDefinition.CodingKeys, v0, v1);
    atomic_store(result, &qword_280BD6FD8);
  }

  return result;
}

unint64_t sub_21BDF8378()
{
  result = qword_27CDB60E0;
  if (!qword_27CDB60E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDB60E0);
  }

  return result;
}

void sub_21BDF83D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v0 = sub_21BDFD218(v30[0]);

  v1 = v0[2];
  if (v1)
  {
    v2 = sub_21BDFAF3C(v0[2], 0);
    v3 = sub_21BDFD0C0(v30, (v2 + 4), v1, v0);
    v4 = v30[0];

    sub_21BC50480(v4);
    if (v3 == v1)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v2 = MEMORY[0x277D84F90];
LABEL_5:
  v30[0] = v2;
  sub_21BDFC1A0(v30);

  v5 = v30[0];
  v6 = *(v30[0] + 16);
  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v9 = 4;
    do
    {
      if (v7 >= v5[2])
      {
        __break(1u);

        __break(1u);
        return;
      }

      v10 = v5[v9];
      v30[0] = sub_21BE2917C();
      v30[1] = v11;
      v12 = sub_21BE28B8C();
      v14 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_21BBBC990(0, *(v8 + 2) + 1, 1, v8);
      }

      v16 = *(v8 + 2);
      v15 = *(v8 + 3);
      if (v16 >= v15 >> 1)
      {
        v8 = sub_21BBBC990((v15 > 1), v16 + 1, 1, v8);
      }

      ++v7;
      *(v8 + 2) = v16 + 1;
      v17 = &v8[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      v9 += 2;
    }

    while (v6 != v7);
    v30[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
    sub_21BB3B038(&qword_27CDBDD00, &qword_27CDB6EF0, &unk_21BE33800, MEMORY[0x277D83970]);
    v18 = sub_21BE28BAC();
    v20 = v19;

    v21 = v5[2];

    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    if (v21 == 1)
    {
      v29 = 0x800000021BE627F0;
    }

    else
    {
      v29 = 0x800000021BE627D0;
    }

    sub_21BE2599C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_21BE32770;
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = sub_21BBBEFE8();
    *(v26 + 32) = v18;
    *(v26 + 40) = v20;
    v27 = objc_opt_self();

    v28 = [v27 bundleForClass_];
    sub_21BE2599C();

    sub_21BE289DC();
  }

  else
  {

    type metadata accessor for ConfirmChildAgeViewModel();
    v24 = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    sub_21BE2599C();
  }
}

void sub_21BDF88C8()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE2599C();
  v4 = v3;

  qword_27CDBDC88 = v2;
  unk_27CDBDC90 = v4;
}

uint64_t sub_21BDF8984@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = sub_21BCD11F4();
  v11 = [v10 me];

  v12 = [v11 dsid];
  if (v12)
  {
    v32 = v3;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v14 = v33;
    v33 = v12;
    MEMORY[0x28223BE20](v13);
    *(&v31 - 2) = &v33;
    v15 = sub_21BC9DAC4(sub_21BDFD8D8, (&v31 - 4), v14);

    sub_21BE2614C();
    v16 = v12;
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FCC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = a2;
      v22 = v21;
      v33 = v21;
      *v19 = 136315650;
      *(v19 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62830, &v33);
      *(v19 + 12) = 2112;
      *(v19 + 14) = v16;
      *v20 = v12;
      *(v19 + 22) = 1024;
      *(v19 + 24) = v15 & 1;
      v23 = v16;
      _os_log_impl(&dword_21BB35000, v17, v18, "%s %@ auto sharing: %{BOOL}d", v19, 0x1Cu);
      sub_21BB3A4CC(v20, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      v24 = v22;
      a2 = v31;
      MEMORY[0x21CF05C50](v24, -1, -1);
      MEMORY[0x21CF05C50](v19, -1, -1);
    }

    else
    {
    }

    result = (*(v4 + 8))(v9, v32);
    v30 = v15 & 1;
  }

  else
  {
    sub_21BE2614C();
    v25 = sub_21BE26A2C();
    v26 = sub_21BE28FDC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62830, &v33);
      _os_log_impl(&dword_21BB35000, v25, v26, "%s locationToggleBinding no myDSID!!", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x21CF05C50](v28, -1, -1);
      MEMORY[0x21CF05C50](v27, -1, -1);
    }

    result = (*(v4 + 8))(v7, v3);
    v30 = 0;
  }

  *a2 = v30;
  return result;
}

double sub_21BDF8DC4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v26 - v7;
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  *v26 = *(a4 + 40);
  v27 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();
  sub_21BE2614C();
  v14 = sub_21BE26A2C();
  v15 = sub_21BE28FFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62830, v26);
    *(v16 + 12) = 1024;
    *(v16 + 14) = v13;
    _os_log_impl(&dword_21BB35000, v14, v15, "%s Attempting update to newState: %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x21CF05C50](v17, -1, -1);
    MEMORY[0x21CF05C50](v16, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_21BE28D8C();
  v18 = sub_21BE28DAC();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_21BE28D7C();
  sub_21BC12ED0(a4, v26);
  v19 = sub_21BE28D6C();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  v22 = *(a4 + 80);
  *(v20 + 96) = *(a4 + 64);
  *(v20 + 112) = v22;
  *(v20 + 128) = *(a4 + 96);
  v23 = *(a4 + 16);
  *(v20 + 32) = *a4;
  *(v20 + 48) = v23;
  v24 = *(a4 + 48);
  *(v20 + 64) = *(a4 + 32);
  *(v20 + 80) = v24;
  *(v20 + 136) = v13;
  sub_21BBA932C(0, 0, v8, &unk_21BE50018, v20);

  return result;
}

uint64_t sub_21BDF90D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 292) = a5;
  *(v5 + 200) = a4;
  v6 = sub_21BE26A4C();
  *(v5 + 208) = v6;
  *(v5 + 216) = *(v6 - 8);
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  sub_21BE28D7C();
  *(v5 + 248) = sub_21BE28D6C();
  v8 = sub_21BE28D0C();
  *(v5 + 256) = v8;
  *(v5 + 264) = v7;

  return MEMORY[0x2822009F8](sub_21BDF91E8, v8, v7);
}

uint64_t sub_21BDF91E8()
{
  v18 = v0;
  v1 = sub_21BCD11F4();
  v2 = [v1 me];

  v3 = [v2 dsid];
  *(v0 + 272) = v3;

  if (v3)
  {
    v4 = swift_task_alloc();
    *(v0 + 280) = v4;
    *v4 = v0;
    v4[1] = sub_21BDF9490;
    v5 = *(v0 + 292);

    return sub_21BCD4AC8(v5, v3);
  }

  else
  {

    sub_21BE2614C();
    v7 = sub_21BE26A2C();
    v8 = sub_21BE28FDC();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 216);
    v10 = *(v0 + 224);
    v12 = *(v0 + 208);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62830, &v17);
      _os_log_impl(&dword_21BB35000, v7, v8, "%s locationToggleBinding no memberDSID!!", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x21CF05C50](v14, -1, -1);
      MEMORY[0x21CF05C50](v13, -1, -1);
    }

    (*(v11 + 8))(v10, v12);
    v15 = *(v0 + 200);
    *(v0 + 120) = *(v15 + 40);
    *(v0 + 288) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
    *(v0 + 136) = *(v15 + 56);
    *(v0 + 289) = 0;
    sub_21BE2840C();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_21BDF9490(char a1)
{
  v2 = *v1;
  *(*v1 + 293) = a1;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);

  return MEMORY[0x2822009F8](sub_21BDF95B8, v4, v3);
}

uint64_t sub_21BDF95B8()
{
  v27 = v0;
  v1 = *(v0 + 293);

  if (v1)
  {
    sub_21BE2614C();
    v2 = sub_21BE26A2C();
    v3 = sub_21BE28FCC();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 232);
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62830, &v26);
      _os_log_impl(&dword_21BB35000, v2, v3, "%s automaticLocationSharing toggle flipped", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x21CF05C50](v9, -1, -1);
      MEMORY[0x21CF05C50](v8, -1, -1);
    }

    (*(v7 + 8))(v5, v6);
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 292);
    LOBYTE(v26) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0xD00000000000001ELL;
    v12 = MEMORY[0x277D839B0];
    *(inited + 40) = 0x800000021BE5AE60;
    *(inited + 72) = v12;
    *(inited + 80) = &protocol witness table for Bool;
    *(inited + 48) = v10;

    v13 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
    sub_21BCA55DC(&v26, v13);
  }

  else
  {
    sub_21BE2614C();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FCC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 240);
    v18 = *(v0 + 208);
    v19 = *(v0 + 216);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62830, &v26);
      _os_log_impl(&dword_21BB35000, v14, v15, "%s automaticLocationSharing toggle failure", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    (*(v19 + 8))(v17, v18);
    *(v0 + 152) = *(*(v0 + 200) + 56);
    *(v0 + 290) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2840C();
  }

  v22 = *(v0 + 272);
  v23 = *(v0 + 200);
  *(v0 + 104) = *(v23 + 40);
  *(v0 + 168) = *(v23 + 40);
  *(v0 + 291) = 0;
  *(v0 + 184) = *(v0 + 112);
  sub_21BDFD868(v0 + 184, v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2840C();

  sub_21BB3A4CC(v0 + 104, &qword_27CDBBB50, &unk_21BE333D0);

  v24 = *(v0 + 8);

  return v24();
}

id sub_21BDF99E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDC98, &qword_21BE4FF58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCA0, &qword_21BE4FF60);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCA8, &qword_21BE4FF68);
  sub_21BB3B038(&qword_27CDBDCB0, &qword_27CDBDCA8, &qword_21BE4FF68, MEMORY[0x277CE14C0]);
  sub_21BE27CFC();
  v31 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  sub_21BB3B038(&qword_27CDBDCB8, &qword_27CDBDC98, &qword_21BE4FF58, MEMORY[0x277CDE580]);
  sub_21BE280DC();

  (*(v5 + 8))(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCC0, &qword_21BE4FF70);
  sub_21BDFABD4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCD8, &qword_21BE4FF78);
  v12 = sub_21BB3B038(&qword_27CDBDCE0, &qword_27CDBDCD8, &qword_21BE4FF78, MEMORY[0x277CDD7A8]);
  v30[0] = v11;
  v30[1] = v12;
  swift_getOpaqueTypeConformance2();
  sub_21BE2817C();
  sub_21BB5A07C(v10);
  v13 = swift_allocObject();
  v14 = *(v2 + 80);
  *(v13 + 80) = *(v2 + 64);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(v2 + 96);
  v15 = *(v2 + 16);
  *(v13 + 16) = *v2;
  *(v13 + 32) = v15;
  v16 = *(v2 + 48);
  *(v13 + 48) = *(v2 + 32);
  *(v13 + 64) = v16;
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCE8, &qword_21BE4FF80) + 36));
  *v17 = sub_21BDFAD24;
  v17[1] = v13;
  v17[2] = 0;
  v17[3] = 0;
  v18 = swift_allocObject();
  v19 = *(v2 + 80);
  *(v18 + 80) = *(v2 + 64);
  *(v18 + 96) = v19;
  *(v18 + 112) = *(v2 + 96);
  v20 = *(v2 + 16);
  *(v18 + 16) = *v2;
  *(v18 + 32) = v20;
  v21 = *(v2 + 48);
  *(v18 + 48) = *(v2 + 32);
  *(v18 + 64) = v21;
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCF0, &qword_21BE4FF88) + 36));
  *v22 = 0;
  v22[1] = 0;
  v22[2] = sub_21BDFAD8C;
  v22[3] = v18;
  v28 = *(v2 + 24);
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC12ED0(v2, v30);
  sub_21BC12ED0(v2, v30);
  sub_21BC2ACA4();
  v23 = sub_21BE26BFC();
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCF8, &qword_21BE4FF90) + 36));
  v25 = v28;
  *v24 = v23;
  v24[1] = v25;

  return v25;
}

uint64_t sub_21BDF9E88@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E18, &qword_21BE33870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass_];
  v7 = sub_21BE2599C();
  v9 = v8;

  v17 = v7;
  v18 = v9;
  sub_21BB41FA4();
  sub_21BE27DBC();
  v10 = [v5 bundleForClass_];
  v11 = sub_21BE2599C();
  v13 = v12;

  v17 = v11;
  v18 = v13;
  sub_21BE27DBC();
  v14 = sub_21BE2825C();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  return sub_21BE2821C();
}

uint64_t sub_21BDFA0E0()
{
  v0 = sub_21BE278CC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDCD8, &qword_21BE4FF78);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  sub_21BE278BC();
  sub_21BE26EDC();
  v5 = sub_21BB3B038(&qword_27CDBDCE0, &qword_27CDBDCD8, &qword_21BE4FF78, MEMORY[0x277CDD7A8]);
  MEMORY[0x21CF02AD0](v4, v1, v5);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_21BDFA278@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  v9 = sub_21BE27D8C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_21BBC7C7C(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

void sub_21BDFA3A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25[-v3];
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_21BCD11F4();
  v10 = [v9 me];

  if (v10)
  {
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    v25[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21BE32770;
    *(inited + 32) = 0x6976614E77656976;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0xEF6F546465746167;
    strcpy((inited + 48), "LocationView");
    *(inited + 61) = 0;
    *(inited + 62) = -5120;

    v12 = sub_21BBB5E60(inited);
    swift_setDeallocating();
    sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
    sub_21BCA55DC(v25, v12);

    v13 = sub_21BE28DAC();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    sub_21BE28D7C();
    sub_21BC12ED0(a1, v25);
    v14 = v10;
    v15 = sub_21BE28D6C();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    *(v16 + 16) = v15;
    *(v16 + 24) = v17;
    v18 = *(a1 + 80);
    *(v16 + 96) = *(a1 + 64);
    *(v16 + 112) = v18;
    v19 = *(a1 + 96);
    v20 = *(a1 + 16);
    *(v16 + 32) = *a1;
    *(v16 + 48) = v20;
    v21 = *(a1 + 48);
    *(v16 + 64) = *(a1 + 32);
    *(v16 + 80) = v21;
    *(v16 + 128) = v19;
    *(v16 + 136) = v14;
    sub_21BBA932C(0, 0, v4, &unk_21BE4FFB0, v16);
  }

  else
  {
    sub_21BE2614C();
    v22 = sub_21BE26A2C();
    v23 = sub_21BE28FDC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21BB35000, v22, v23, "No 'me' in family", v24, 2u);
      MEMORY[0x21CF05C50](v24, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_21BDFA75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_21BE28D7C();
  v5[3] = sub_21BE28D6C();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_21BDFA818;

  return sub_21BCCEADC(a5);
}

uint64_t sub_21BDFA818()
{
  v1 = *v0;

  *(v1 + 40) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BDFA958, v3, v2);
}

uint64_t sub_21BDFA958()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BBAFEE4, v1, v0);
}

double sub_21BDFA9DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3 - 8];
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  sub_21BC12ED0(a1, v14);
  v6 = sub_21BE28D6C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  v9 = *(a1 + 80);
  *(v7 + 96) = *(a1 + 64);
  *(v7 + 112) = v9;
  *(v7 + 128) = *(a1 + 96);
  v10 = *(a1 + 16);
  *(v7 + 32) = *a1;
  *(v7 + 48) = v10;
  v11 = *(a1 + 48);
  *(v7 + 64) = *(a1 + 32);
  *(v7 + 80) = v11;
  sub_21BBA932C(0, 0, v4, &unk_21BE4FFA0, v7);

  return result;
}

unint64_t sub_21BDFABD4()
{
  result = qword_27CDBDCC8;
  if (!qword_27CDBDCC8)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCA0, &qword_21BE4FF60);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDC98, &qword_21BE4FF58);
    v4[3] = sub_21BB3B038(&qword_27CDBDCB8, &qword_27CDBDC98, &qword_21BE4FF58, MEMORY[0x277CDE580]);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BDFACD0();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBDCC8);
  }

  return result;
}

unint64_t sub_21BDFACD0()
{
  result = qword_27CDBDCD0;
  if (!qword_27CDBDCD0)
  {
    result = swift_getWitnessTable(asc_21BE365BC, &type metadata for LocationViewFormModifier, v0, v1);
    atomic_store(result, &qword_27CDBDCD0);
  }

  return result;
}

uint64_t objectdestroyTm_42()
{

  return swift_deallocObject();
}

uint64_t sub_21BDFAD94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BC3400C();
}

void sub_21BDFAE44(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BDFAEC4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

void *sub_21BDFAF3C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD10, &qword_21BE50008);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_21BDFAFC0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_21BDFB09C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC880, &qword_21BE32F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_21BDFB1CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A70, &qword_21BE32FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_21BDFB2C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59F0, &qword_21BE32F60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BDFB3CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AA0, &qword_21BE33018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21BDFB4F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD10, &qword_21BE50008);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD08, &qword_21BE50000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21BDFB628(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59F8, &qword_21BE32F68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A00, &qword_21BE32F70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BDFB75C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD40, &qword_21BE50090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21BDFB87C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD18, &qword_21BE50068);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB8060, &qword_21BE3BDC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BDFBA14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD20, &qword_21BE50070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21BDFBB40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7AD0, &qword_21BE39190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21BDFBC78(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_21BDFBE54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD28, &qword_21BE50078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21BDFBF74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5A30, &qword_21BE32F98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_21BDFC080(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD48, &qword_21BE50098);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_21BDFC1A0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21BDFD5E8(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_21BDFC20C(v4);
  *a1 = v2;
}

void sub_21BDFC20C(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21BE2991C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDD08, &qword_21BE50000);
        v5 = sub_21BE28C7C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_21BDFC48C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21BDFC314(0, v2, 1, a1);
  }
}

void sub_21BDFC314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v29 = *a4;
    v4 = *a4 + 16 * a3;
    v5 = a1 - a3;
    v6 = &off_2782F5000;
    v7 = &selRef_fa_URLByAddingAirdropInviteParams;
LABEL_5:
    v27 = v4;
    v28 = a3;
    v26 = v5;
    while (1)
    {
      v8 = *(v4 - 16);
      v9 = *v4;
      v10 = v8;
      v11 = [v9 v6[257]];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 v7[236]];
      }

      else
      {
        v13 = 0;
      }

      v14 = [v10 v6[257]];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 v7[236]];
        v17 = v9;
        v18 = v6;
        v19 = v7;
        v20 = v16;

        v21 = v13 < v20;
        v7 = v19;
        v6 = v18;
        if (!v21)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if (v13 > 0)
        {
          goto LABEL_4;
        }
      }

      if (!v29)
      {
        break;
      }

      v22 = *v4;
      v23 = *(v4 + 8);
      *v4 = *(v4 - 16);
      *(v4 - 8) = v23;
      *(v4 - 16) = v22;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
LABEL_4:
        a3 = v28 + 1;
        v4 = v27 + 16;
        v5 = v26 - 1;
        if (v28 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_21BDFC48C(id *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_110:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v96 = v4;
LABEL_113:
      v4 = *(v96 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v97 = *&v96[16 * v4];
          v98 = v96;
          v99 = *&v96[16 * v4 + 24];
          sub_21BDFCC7C((*a3 + 16 * v97), (*a3 + 16 * *&v96[16 * v4 + 16]), (*a3 + 16 * v99), v8);
          if (v6)
          {
            goto LABEL_121;
          }

          if (v99 < v97)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_21BDFD0AC(v98);
          }

          if (v4 - 2 >= *(v98 + 2))
          {
            goto LABEL_137;
          }

          v100 = &v98[16 * v4];
          *v100 = v97;
          *(v100 + 1) = v99;
          sub_21BDFD020(v4 - 1);
          v96 = v98;
          v4 = *(v98 + 2);
          if (v4 <= 1)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_147;
      }

LABEL_121:

      return;
    }

LABEL_143:
    v96 = sub_21BDFD0AC(v4);
    goto LABEL_113;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8;
  v11 = v8 + 1;
  if (v8 + 1 < v7)
  {
    v104 = v9;
    v106 = v6;
    v4 = *a3;
    v12 = 16 * v8;
    v13 = *(*a3 + 16 * v8);
    v14 = *(*a3 + 16 * v11);
    v15 = v13;
    v16 = [v14 memberSortOrder];
    if (v16)
    {
      v8 = v16;
      v114 = [v16 integerValue];
    }

    else
    {
      v114 = 0;
    }

    v17 = [v15 memberSortOrder];
    if (v17)
    {
      v8 = v17;
      v112 = [v17 integerValue];

      v14 = v15;
      v15 = v8;
    }

    else
    {
      v112 = 1;
    }

    v11 = v10 + 2;
    if (v10 + 2 < v7)
    {
      v101 = v10;
      v4 += 16 * v10 + 32;
      v110 = v7;
      do
      {
        v18 = *(v4 - 16);
        v19 = *v4;
        v20 = v18;
        v21 = [v19 memberSortOrder];
        if (v21)
        {
          v8 = v21;
          v22 = [v21 integerValue];
        }

        else
        {
          v22 = 0;
        }

        v23 = [v20 memberSortOrder];
        if (v23)
        {
          v8 = v23;
          v24 = [v23 integerValue];

          if (v114 < v112 == v22 >= v24)
          {
            goto LABEL_22;
          }
        }

        else
        {

          if (v114 < v112 == v22 > 0)
          {
            goto LABEL_22;
          }
        }

        ++v11;
        v4 += 16;
      }

      while (v110 != v11);
      v11 = v110;
LABEL_22:
      v10 = v101;
    }

    v9 = v104;
    v6 = v106;
    if (v114 < v112)
    {
      if (v11 < v10)
      {
        goto LABEL_140;
      }

      if (v10 < v11)
      {
        v25 = 16 * v11 - 16;
        v26 = v11;
        v27 = v10;
        do
        {
          if (v27 != --v26)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_146;
            }

            v30 = (v29 + v12);
            v31 = (v29 + v25);
            v32 = *(v29 + v12);
            v33 = *(v29 + v12 + 8);
            if (v12 != v25 || v30 >= v31 + 1)
            {
              *v30 = *v31;
            }

            v28 = v29 + v25;
            *v28 = v32;
            *(v28 + 8) = v33;
          }

          ++v27;
          v25 -= 16;
          v12 += 16;
        }

        while (v27 < v26);
      }
    }
  }

  v34 = a3[1];
  if (v11 >= v34)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_139;
  }

  if (v11 - v10 >= a4)
  {
    goto LABEL_58;
  }

  v35 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_141;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v10)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v11 == v35)
  {
    goto LABEL_58;
  }

  v105 = v9;
  v107 = v6;
  v36 = *a3;
  v37 = *a3 + 16 * v11;
  v102 = v10;
  v4 = v10 - v11;
  v109 = v35;
LABEL_45:
  v113 = v37;
  v115 = v11;
  v111 = v4;
  while (1)
  {
    v38 = *(v37 - 16);
    v39 = *v37;
    v40 = v38;
    v41 = [v39 memberSortOrder];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 integerValue];
    }

    else
    {
      v43 = 0;
    }

    v44 = [v40 memberSortOrder];
    if (v44)
    {
      v45 = v44;
      v8 = [v44 integerValue];

      if (v43 >= v8)
      {
        goto LABEL_44;
      }
    }

    else
    {

      if (v43 > 0)
      {
        goto LABEL_44;
      }
    }

    if (!v36)
    {
      break;
    }

    v46 = *v37;
    v47 = *(v37 + 8);
    *v37 = *(v37 - 16);
    *(v37 - 8) = v47;
    *(v37 - 16) = v46;
    v37 -= 16;
    if (__CFADD__(v4++, 1))
    {
LABEL_44:
      v11 = v115 + 1;
      v37 = v113 + 16;
      v4 = v111 - 1;
      if (v115 + 1 != v109)
      {
        goto LABEL_45;
      }

      v11 = v109;
      v9 = v105;
      v6 = v107;
      v10 = v102;
LABEL_58:
      if (v11 < v10)
      {
        goto LABEL_138;
      }

      v49 = v9;
      v8 = v11;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v9 = v49;
      }

      else
      {
        v9 = sub_21BBBCBFC(0, *(v49 + 2) + 1, 1, v49);
      }

      v4 = *(v9 + 2);
      v50 = *(v9 + 3);
      v51 = v4 + 1;
      if (v4 >= v50 >> 1)
      {
        v9 = sub_21BBBCBFC((v50 > 1), v4 + 1, 1, v9);
      }

      *(v9 + 2) = v51;
      v52 = &v9[16 * v4];
      *(v52 + 4) = v10;
      *(v52 + 5) = v11;
      v53 = *a1;
      if (!*a1)
      {
        goto LABEL_148;
      }

      if (v4)
      {
        while (1)
        {
          v54 = v51 - 1;
          if (v51 >= 4)
          {
            break;
          }

          if (v51 == 3)
          {
            v55 = *(v9 + 4);
            v56 = *(v9 + 5);
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_78:
            if (v58)
            {
              goto LABEL_127;
            }

            v71 = &v9[16 * v51];
            v73 = *v71;
            v72 = *(v71 + 1);
            v74 = __OFSUB__(v72, v73);
            v75 = v72 - v73;
            v76 = v74;
            if (v74)
            {
              goto LABEL_130;
            }

            v77 = &v9[16 * v54 + 32];
            v79 = *v77;
            v78 = *(v77 + 1);
            v65 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v65)
            {
              goto LABEL_133;
            }

            if (__OFADD__(v75, v80))
            {
              goto LABEL_134;
            }

            if (v75 + v80 >= v57)
            {
              if (v57 < v80)
              {
                v54 = v51 - 2;
              }

              goto LABEL_99;
            }

            goto LABEL_92;
          }

          v81 = &v9[16 * v51];
          v83 = *v81;
          v82 = *(v81 + 1);
          v65 = __OFSUB__(v82, v83);
          v75 = v82 - v83;
          v76 = v65;
LABEL_92:
          if (v76)
          {
            goto LABEL_129;
          }

          v84 = &v9[16 * v54];
          v86 = *(v84 + 4);
          v85 = *(v84 + 5);
          v65 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v65)
          {
            goto LABEL_132;
          }

          if (v87 < v75)
          {
            goto LABEL_3;
          }

LABEL_99:
          v4 = v54 - 1;
          if (v54 - 1 >= v51)
          {
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
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          if (!*a3)
          {
            goto LABEL_145;
          }

          v92 = v9;
          v93 = *&v9[16 * v4 + 32];
          v94 = *&v9[16 * v54 + 40];
          sub_21BDFCC7C((*a3 + 16 * v93), (*a3 + 16 * *&v9[16 * v54 + 32]), (*a3 + 16 * v94), v53);
          if (v6)
          {
            goto LABEL_121;
          }

          if (v94 < v93)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = sub_21BDFD0AC(v92);
          }

          if (v4 >= *(v92 + 2))
          {
            goto LABEL_124;
          }

          v95 = &v92[16 * v4];
          *(v95 + 4) = v93;
          *(v95 + 5) = v94;
          sub_21BDFD020(v54);
          v9 = v92;
          v51 = *(v92 + 2);
          if (v51 <= 1)
          {
            goto LABEL_3;
          }
        }

        v59 = &v9[16 * v51 + 32];
        v60 = *(v59 - 64);
        v61 = *(v59 - 56);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_125;
        }

        v64 = *(v59 - 48);
        v63 = *(v59 - 40);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_126;
        }

        v66 = &v9[16 * v51];
        v68 = *v66;
        v67 = *(v66 + 1);
        v65 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v65)
        {
          goto LABEL_128;
        }

        v65 = __OFADD__(v57, v69);
        v70 = v57 + v69;
        if (v65)
        {
          goto LABEL_131;
        }

        if (v70 >= v62)
        {
          v88 = &v9[16 * v54 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v65 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v65)
          {
            goto LABEL_135;
          }

          if (v57 < v91)
          {
            v54 = v51 - 2;
          }

          goto LABEL_99;
        }

        goto LABEL_78;
      }

LABEL_3:
      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_110;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

uint64_t sub_21BDFCC7C(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 4;
  if (v9 < v12)
  {
    v13 = 2 * v9;
    v14 = a4;
    if (a4 != __src || &__src[v13] <= a4)
    {
      memmove(a4, __src, v13 * 8);
      v5 = __dst;
    }

    v16 = &v14[v13];
    if (v7 < 16 || v5 >= v4)
    {
LABEL_24:
      v29 = v6;
      goto LABEL_50;
    }

    v50 = &v14[v13];
    while (1)
    {
      v17 = v5;
      v18 = *v14;
      v19 = *v5;
      v20 = v18;
      v21 = [v19 memberSortOrder];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 integerValue];
      }

      else
      {
        v23 = 0;
      }

      v24 = [v20 memberSortOrder];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 integerValue];

        if (v23 >= v26)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if (v23 > 0)
        {
LABEL_20:
          v27 = v14;
          v28 = v6 == v14;
          v14 += 2;
          v5 = v17;
          if (v28)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v6 = *v27;
          goto LABEL_22;
        }
      }

      v27 = v17;
      v5 = v17 + 2;
      if (v6 != v17)
      {
        goto LABEL_21;
      }

LABEL_22:
      v6 += 2;
      v16 = v50;
      if (v14 >= v50 || v5 >= v4)
      {
        goto LABEL_24;
      }
    }
  }

  v30 = 2 * v12;
  if (a4 != __dst || &__dst[v30] <= a4)
  {
    v32 = a4;
    memmove(a4, __dst, 16 * v12);
    v5 = __dst;
    a4 = v32;
  }

  v51 = a4;
  v16 = &a4[v30];
  if (v10 < 16)
  {
    v14 = a4;
    goto LABEL_49;
  }

  v14 = a4;
  if (v5 <= v6)
  {
LABEL_49:
    v29 = v5;
    goto LABEL_50;
  }

  v33 = &off_2782F5000;
  do
  {
    v48 = v5;
    v34 = v5 - 2;
    v4 -= 2;
    v35 = v16;
    v49 = v5 - 2;
    while (1)
    {
      v36 = *(v35 - 2);
      v35 -= 2;
      v37 = *v34;
      v38 = v36;
      v39 = v37;
      v40 = [v38 v33[257]];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 integerValue];
      }

      else
      {
        v42 = 0;
      }

      v43 = [v39 v33[257]];
      if (!v43)
      {
        break;
      }

      v44 = v43;
      v45 = [v43 integerValue];

      if (v42 < v45)
      {
        goto LABEL_42;
      }

LABEL_40:
      if (v4 + 2 != v16)
      {
        *v4 = *v35;
      }

      v4 -= 2;
      v16 = v35;
      v33 = &off_2782F5000;
      v34 = v49;
      if (v35 <= v51)
      {
        v16 = v35;
        v14 = v51;
        v29 = v48;
        goto LABEL_50;
      }
    }

    if (v42 > 0)
    {
      goto LABEL_40;
    }

LABEL_42:
    v29 = v49;
    if (v4 + 2 != v48)
    {
      *v4 = *v49;
    }

    v14 = v51;
    v33 = &off_2782F5000;
    if (v16 <= v51)
    {
      break;
    }

    v5 = v49;
  }

  while (v49 > v6);
LABEL_50:
  v46 = (v16 - v14 + (v16 - v14 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v29 != v14 || v29 >= (v14 + v46))
  {
    memmove(v29, v14, v46);
  }

  return 1;
}

uint64_t sub_21BDFD020(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21BDFD0AC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_21BDFD0C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 48) + 8 * v17);
      LOBYTE(v17) = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = v18;
      *(v11 + 8) = v17;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      v11 += 16;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t *sub_21BDFD218(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_21BC70B40(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_21BC70CA4(v8, v4, v2);
  result = MEMORY[0x21CF05C50](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_21BDFD378(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5858, &unk_21BE32950);
  result = sub_21BE297DC();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v27 = *(*(v4 + 56) + v16);
    v17 = *(*(v4 + 48) + 8 * v16);
    result = sub_21BE293FC();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    *(*(v9 + 56) + v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_21BDFD674(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[17];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BDFA75C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t objectdestroy_7Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21BDFD7A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 136);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBA6A64;

  return sub_21BDF90D8(a1, v4, v5, v1 + 32, v6);
}

uint64_t sub_21BDFD868(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E28, &qword_21BE33898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BDFD940@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v55 = a3;
  v46 = sub_21BE26A4C();
  v7 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v57) = 0;
  sub_21BE283EC();
  LODWORD(v10) = v58;
  v56 = v59;
  LOBYTE(v57) = 0;
  sub_21BE283EC();
  v54 = v58;
  v53 = v59;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_21BE2599C();
  v51 = v14;
  v52 = v13;

  v58 = 0;
  v59 = 0xE000000000000000;
  sub_21BE295EC();

  v58 = 91;
  v59 = 0xE100000000000000;
  if (qword_27CDB5010 != -1)
  {
    swift_once();
  }

  MEMORY[0x21CF03CA0](qword_27CDBDC88, unk_27CDBDC90);
  MEMORY[0x21CF03CA0](0xD000000000000025, 0x800000021BE62850);
  v49 = v59;
  v50 = v58;
  type metadata accessor for LocationViewModel(0);
  sub_21BDAB0B8();
  v15 = a1;
  v16 = sub_21BE270CC();
  v47 = v17;
  v48 = v16;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BC2ACA4();
  v18 = a2;
  v19 = sub_21BE270CC();
  v21 = v20;
  sub_21BE2614C();
  v22 = v15;
  v23 = sub_21BE26A2C();
  v24 = sub_21BE28FCC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v43 = v7;
    v26 = v25;
    v27 = swift_slowAlloc();
    v45 = v10;
    v10 = v27;
    v58 = v27;
    *v26 = 136315138;
    swift_getKeyPath();
    v42 = v9;
    v44 = v21;
    v28 = v19;
    swift_getKeyPath();
    v41 = v18;
    sub_21BE26CAC();

    v29 = v57;
    v30 = sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
    v31 = MEMORY[0x21CF03DF0](v29, v30);
    v33 = v32;

    v34 = sub_21BB3D81C(v31, v33, &v58);

    *(v26 + 4) = v34;
    v19 = v28;
    v21 = v44;
    _os_log_impl(&dword_21BB35000, v23, v24, "Location view member DSIDs %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v35 = v10;
    LOBYTE(v10) = v45;
    MEMORY[0x21CF05C50](v35, -1, -1);
    MEMORY[0x21CF05C50](v26, -1, -1);

    result = (*(v43 + 8))(v42, v46);
  }

  else
  {

    result = (*(v7 + 8))(v9, v46);
  }

  v37 = v55 & 1;
  v38 = v47;
  *a4 = v48;
  *(a4 + 8) = v38;
  *(a4 + 16) = v19;
  *(a4 + 24) = v21;
  *(a4 + 32) = v37;
  *(a4 + 40) = v10;
  *(a4 + 48) = v56;
  *(a4 + 56) = v54;
  v39 = v52;
  *(a4 + 64) = v53;
  *(a4 + 72) = v39;
  v40 = v50;
  *(a4 + 80) = v51;
  *(a4 + 88) = v40;
  *(a4 + 96) = v49;
  return result;
}

unint64_t sub_21BDFDDDC()
{
  result = qword_27CDBDD58;
  if (!qword_27CDBDD58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCF8, &qword_21BE4FF90);
    v4[0] = sub_21BDFDE94();
    v4[1] = sub_21BB3B038(&qword_27CDB6B20, &qword_27CDB6B28, &qword_21BE35DB8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBDD58);
  }

  return result;
}

unint64_t sub_21BDFDE94()
{
  result = qword_27CDBDD60;
  if (!qword_27CDBDD60)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCF0, &qword_21BE4FF88);
    v4[0] = sub_21BDFDF20();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBDD60);
  }

  return result;
}

unint64_t sub_21BDFDF20()
{
  result = qword_27CDBDD68;
  if (!qword_27CDBDD68)
  {
    v7[14] = v0;
    v7[15] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCE8, &qword_21BE4FF80);
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCA0, &qword_21BE4FF60);
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCC0, &qword_21BE4FF70);
    v6 = sub_21BDFABD4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDCD8, &qword_21BE4FF78);
    sub_21BB3B038(&qword_27CDBDCE0, &qword_27CDBDCD8, &qword_21BE4FF78, MEMORY[0x277CDD7A8]);
    v7[2] = v4;
    v7[3] = v5;
    v7[4] = v6;
    v7[5] = swift_getOpaqueTypeConformance2();
    v7[0] = swift_getOpaqueTypeConformance2();
    v7[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v7);
    atomic_store(result, &qword_27CDBDD68);
  }

  return result;
}

uint64_t sub_21BDFE0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21BDFE148(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_21BE286FC();
}

uint64_t sub_21BDFE318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v32 = a5;
  v33 = sub_21BE27A2C();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21BE2754C();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDDF8, &qword_21BE502B0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE00, &qword_21BE502B8);
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  *v17 = sub_21BE275DC();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE08, &qword_21BE502C0);
  sub_21BDFE680(a1, v7, &v17[*(v21 + 44)]);
  v22 = sub_21BE2832C();
  KeyPath = swift_getKeyPath();
  v24 = &v17[*(v15 + 44)];
  *v24 = KeyPath;
  v24[1] = v22;
  if ((a4 & 1) == 0)
  {

    sub_21BE28FEC();
    v25 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    v26 = sub_21BCBC920(a3, 0);
    (*(v29 + 8))(v13, v30, v26);
    LOBYTE(a3) = v34;
  }

  if (a3)
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.5;
  }

  sub_21BBB7D84(v17, v20, &qword_27CDBDDF8, &qword_21BE502B0);
  *&v20[*(v18 + 36)] = v27;
  sub_21BE27A0C();
  sub_21BDFFCE8();
  sub_21BE2805C();
  (*(v31 + 8))(v10, v33);
  return sub_21BB3A4CC(v20, &qword_27CDBDE00, &qword_21BE502B8);
}

uint64_t sub_21BDFE680@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE30, &qword_21BE50308);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE38, &qword_21BE50310);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE40, &qword_21BE50318);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v39 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - v17;
  v37 = v14;
  v38 = *(v14 + 16);
  v38(&v35 - v17, a1, v13);
  if (a2)
  {
    v19 = sub_21BE2837C();
    v20 = sub_21BE2795C();
    v43 = v19;
    v44 = v20;
    sub_21BE27C4C();
    v36 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE50, &qword_21BE50328);
    sub_21BDFFE58();
    sub_21BE27EAC();

    v21 = &v7[*(v36 + 36)];
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4D0, &qword_21BE425D8) + 28);
    v23 = *MEMORY[0x277CE1050];
    v24 = sub_21BE283BC();
    v25 = v23;
    v5 = v36;
    (*(*(v24 - 8) + 104))(v21 + v22, v25, v24);
    *v21 = swift_getKeyPath();
    sub_21BBB7D84(v7, v12, &qword_27CDBDE30, &qword_21BE50308);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v40 + 56))(v12, v26, 1, v5);
  v28 = v38;
  v27 = v39;
  v38(v39, v18, v13);
  v29 = v41;
  sub_21BBA3854(v12, v41, &qword_27CDBDE38, &qword_21BE50310);
  v30 = v42;
  v28(v42, v27, v13);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE48, &qword_21BE50320);
  v32 = v30 + *(v31 + 48);
  *v32 = 0x4020000000000000;
  *(v32 + 8) = 0;
  sub_21BBA3854(v29, v30 + *(v31 + 64), &qword_27CDBDE38, &qword_21BE50310);
  sub_21BB3A4CC(v12, &qword_27CDBDE38, &qword_21BE50310);
  v33 = *(v37 + 8);
  v33(v18, v13);
  sub_21BB3A4CC(v29, &qword_27CDBDE38, &qword_21BE50310);
  return (v33)(v27, v13);
}

uint64_t sub_21BDFEADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v56 = a2;
  v4 = sub_21BE27A2C();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_21BE2754C();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE70, &qword_21BE50370);
  swift_getTupleTypeMetadata3();
  v7 = sub_21BE286EC();
  swift_getWitnessTable(MEMORY[0x277CE14C0], v7);
  v8 = sub_21BE2848C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  v9 = sub_21BE2719C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE1138], v8);
  v11 = sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0, MEMORY[0x277CE0868]);
  v63[0] = WitnessTable;
  v63[1] = v11;
  v12 = MEMORY[0x277CDFAD8];
  v43 = v9;
  v42 = swift_getWitnessTable(MEMORY[0x277CDFAD8], v9, v63);
  v13 = sub_21BE2846C();
  v52 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v41 = &v37 - v14;
  v15 = sub_21BE2719C();
  v51 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v50 = &v37 - v16;
  v44 = swift_getWitnessTable(MEMORY[0x277CDF028], v13);
  v62[0] = v44;
  v62[1] = MEMORY[0x277CDF900];
  v17 = swift_getWitnessTable(v12, v15, v62);
  v60 = v15;
  v61 = v17;
  v48 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  v19 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v46 = &v37 - v22;
  v65 = *(v2 + 56);
  v64 = *(v2 + 48);
  v23 = v65;
  v24 = swift_allocObject();
  v25 = *(v47 + 24);
  v26 = v45;
  *(v24 + 16) = v45;
  *(v24 + 24) = v25;
  v27 = *(v2 + 16);
  *(v24 + 32) = *v2;
  *(v24 + 48) = v27;
  *(v24 + 64) = *(v2 + 32);
  *(v24 + 73) = *(v2 + 41);
  v57 = v26;
  v58 = v25;
  v59 = v2;
  v28 = v41;

  sub_21BBA3854(&v64, &v60, &qword_27CDBDE78, &unk_21BE50378);
  sub_21BE2843C();
  if (v23 != 1)
  {

    sub_21BE28FEC();
    v29 = sub_21BE27B2C();
    sub_21BE269DC();

    v30 = v38;
    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v64, &qword_27CDBDE78, &unk_21BE50378);
    (*(v39 + 8))(v30, v40);
  }

  v31 = v50;
  sub_21BE2814C();
  (*(v52 + 8))(v28, v13);
  v32 = v53;
  sub_21BE27A0C();
  v33 = v48;
  sub_21BE2805C();
  (*(v54 + 8))(v32, v55);
  (*(v51 + 8))(v31, v15);
  v60 = v15;
  v61 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v46;
  sub_21BD37338();
  v35 = *(v49 + 8);
  v35(v21, OpaqueTypeMetadata2);
  sub_21BD37338();
  return (v35)(v34, OpaqueTypeMetadata2);
}

uint64_t sub_21BDFF238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a1;
  v23 = a3;
  v24 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE70, &qword_21BE50370);
  swift_getTupleTypeMetadata3();
  v5 = sub_21BE286EC();
  swift_getWitnessTable(MEMORY[0x277CE14C0], v5);
  v6 = sub_21BE2848C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBC520, &qword_21BE38BA0);
  v10 = sub_21BE2719C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v25 = a2;
  v26 = v23;
  v27 = v22;
  sub_21BE275DC();
  sub_21BE2847C();
  sub_21BE2832C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE1138], v6);
  sub_21BE27F8C();

  (*(v7 + 8))(v9, v6);
  v18 = sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0, MEMORY[0x277CE0868]);
  v28[0] = WitnessTable;
  v28[1] = v18;
  swift_getWitnessTable(MEMORY[0x277CDFAD8], v10, v28);
  sub_21BD37338();
  v19 = *(v11 + 8);
  v19(v14, v10);
  sub_21BD37338();
  return (v19)(v16, v10);
}

uint64_t sub_21BDFF564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF0, &unk_21BE33810);
  MEMORY[0x28223BE20](v50);
  v47 = &v46 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE80, &qword_21BE50388);
  MEMORY[0x28223BE20](v48);
  v9 = &v46 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE30, &qword_21BE50308);
  MEMORY[0x28223BE20](v49);
  v11 = &v46 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE70, &qword_21BE50370);
  v12 = MEMORY[0x28223BE20](v54);
  v55 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - v15;
  v17 = *(a2 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - v22;
  (*(a1 + 8))(v21);
  v53 = v23;
  v56 = a3;
  sub_21BD37338();
  v51 = v17;
  v52 = *(v17 + 8);
  v52(v20, a2);
  if (*a1)
  {
    v24 = sub_21BE2837C();
    v25 = sub_21BE2795C();
    *&v65 = v24;
    DWORD2(v65) = v25;
    sub_21BE27C4C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE50, &qword_21BE50328);
    sub_21BDFFE58();
    sub_21BE27EAC();

    v26 = &v11[*(v49 + 36)];
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC4D0, &qword_21BE425D8) + 28);
    v28 = *MEMORY[0x277CE1050];
    v29 = sub_21BE283BC();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    sub_21BBA3854(v11, v9, &qword_27CDBDE30, &qword_21BE50308);
    swift_storeEnumTagMultiPayload();
    sub_21BE0014C();
    sub_21BE00240();
    sub_21BE2784C();
    sub_21BB3A4CC(v11, &qword_27CDBDE30, &qword_21BE50308);
    v30 = 0;
LABEL_6:
    v39 = v16;
    goto LABEL_7;
  }

  v31 = v50;
  if ((*(a1 + 40) & 1) == 0)
  {
    v30 = 1;
    goto LABEL_6;
  }

  v32 = v47;
  sub_21BE26EEC();
  *(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5DF8, &unk_21BE38C60) + 36)) = 257;
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5E00, &unk_21BE33820) + 36));
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB55B0, &qword_21BE3FF90) + 28);
  v35 = *MEMORY[0x277CDF438];
  v36 = sub_21BE26E7C();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  sub_21BE286BC();
  sub_21BE26F2C();
  v37 = (v32 + *(v31 + 36));
  v38 = v66;
  *v37 = v65;
  v37[1] = v38;
  v37[2] = v67;
  sub_21BBA3854(v32, v9, &qword_27CDB5DF0, &unk_21BE33810);
  swift_storeEnumTagMultiPayload();
  sub_21BE0014C();
  sub_21BE00240();
  sub_21BE2784C();
  v39 = v16;
  sub_21BB3A4CC(v32, &qword_27CDB5DF0, &unk_21BE33810);
  v30 = 0;
LABEL_7:
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDE88, &qword_21BE50390);
  (*(*(v40 - 8) + 56))(v39, v30, 1, v40);
  v41 = v53;
  (*(v51 + 16))(v20, v53, a2);
  v62 = 0x4020000000000000;
  v63 = 0;
  v64[0] = v20;
  v64[1] = &v62;
  v42 = v55;
  sub_21BBA3854(v39, v55, &qword_27CDBDE70, &qword_21BE50370);
  v64[2] = v42;
  v61[0] = a2;
  v61[1] = MEMORY[0x277CE1180];
  v61[2] = v54;
  v58 = v56;
  v59 = MEMORY[0x277CE1170];
  v60 = sub_21BE0003C();
  sub_21BDFE148(v64, 3uLL, v61);
  sub_21BB3A4CC(v39, &qword_27CDBDE70, &qword_21BE50370);
  v43 = v41;
  v44 = v52;
  v52(v43, a2);
  sub_21BB3A4CC(v42, &qword_27CDBDE70, &qword_21BE50370);
  return v44(v20, a2);
}

unint64_t sub_21BDFFCE8()
{
  result = qword_27CDBDE10;
  if (!qword_27CDBDE10)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE00, &qword_21BE502B8);
    v4[0] = sub_21BDFFD74();
    v4[1] = MEMORY[0x277CDF900];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBDE10);
  }

  return result;
}

unint64_t sub_21BDFFD74()
{
  result = qword_27CDBDE18;
  if (!qword_27CDBDE18)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDDF8, &qword_21BE502B0);
    v4[0] = sub_21BB3B038(&qword_27CDBDE20, &qword_27CDBDE28, &unk_21BE502F8, MEMORY[0x277CE1138]);
    v4[1] = sub_21BB3B038(&qword_27CDB7970, &qword_27CDBC520, &qword_21BE38BA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBDE18);
  }

  return result;
}

unint64_t sub_21BDFFE58()
{
  result = qword_27CDBDE58;
  if (!qword_27CDBDE58)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE50, &qword_21BE50328);
    v4 = sub_21BB3B038(&qword_27CDBDE60, &qword_27CDBDE68, &unk_21BE50330, MEMORY[0x277CE0740]);
    v5[0] = MEMORY[0x277CE1078];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27CDBDE58);
  }

  return result;
}

uint64_t sub_21BDFFF34(uint64_t a1)
{
  v2 = sub_21BE283BC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_21BE272CC();
}

unint64_t sub_21BE0003C()
{
  result = qword_27CDBDE90;
  if (!qword_27CDBDE90)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE70, &qword_21BE50370);
    v4[0] = sub_21BE000C0();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDBDE90);
  }

  return result;
}

unint64_t sub_21BE000C0()
{
  result = qword_27CDBDE98;
  if (!qword_27CDBDE98)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE88, &qword_21BE50390);
    v4[0] = sub_21BE0014C();
    v4[1] = sub_21BE00240();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27CDBDE98);
  }

  return result;
}

unint64_t sub_21BE0014C()
{
  result = qword_27CDBDEA0;
  if (!qword_27CDBDEA0)
  {
    v4[6] = v0;
    v4[7] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE30, &qword_21BE50308);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBDE50, &qword_21BE50328);
    v4[3] = sub_21BDFFE58();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_21BB3B038(&unk_27CDBC510, &qword_27CDBC4D0, &qword_21BE425D8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBDEA0);
  }

  return result;
}

unint64_t sub_21BE00240()
{
  result = qword_27CDBDEA8;
  if (!qword_27CDBDEA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5DF0, &unk_21BE33810);
    v4[0] = sub_21BC933C4();
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27CDBDEA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountInfo(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void *sub_21BE00438(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDEE0, &qword_21BE505B8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v3) + 0xF8);
  v13 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDEE8, &unk_21BE505C0);
  sub_21BE26C6C();
  (*(v8 + 32))(&v3[v12], v10, v7);
  v14 = *((*v11 & *v3) + 0x100);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v15 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager);
  *&v3[v14] = v15;
  if (v13 >> 62 && sub_21BE2951C())
  {
    v28 = v15;
    v17 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = v15;
    v17 = MEMORY[0x277D84FA0];
  }

  *&v3[qword_27CDB63F8] = v17;
  *&v3[qword_27CDB6400] = 0;
  v18 = &v3[qword_27CDB63F0];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDED0, &qword_21BE505B0);
  v30.receiver = v3;
  v30.super_class = v19;
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v21 = *(v20 + *((*v11 & *v20) + 0x100));
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = v20;
  aBlock[4] = sub_21BE117CC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BE012D4;
  aBlock[3] = &block_descriptor_56;
  v23 = _Block_copy(aBlock);
  v24 = v20;
  v25 = v21;
  v26 = a3;

  [v25 addAccountChangeObserver:v24 handler:v23];
  _Block_release(v23);

  return v24;
}

void *sub_21BE00774(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF58, &qword_21BE50650);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v3) + 0xF8);
  v13 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF60, &qword_21BE50658);
  sub_21BE26C6C();
  (*(v8 + 32))(&v3[v12], v10, v7);
  v14 = *((*v11 & *v3) + 0x100);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v15 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager);
  *&v3[v14] = v15;
  if (v13 >> 62 && sub_21BE2951C())
  {
    v28 = v15;
    v17 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = v15;
    v17 = MEMORY[0x277D84FA0];
  }

  *&v3[qword_27CDB63F8] = v17;
  *&v3[qword_27CDB6400] = 0;
  v18 = &v3[qword_27CDB63F0];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF48, &qword_21BE50648);
  v30.receiver = v3;
  v30.super_class = v19;
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v21 = *(v20 + *((*v11 & *v20) + 0x100));
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = v20;
  aBlock[4] = sub_21BE11C8C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BE012D4;
  aBlock[3] = &block_descriptor_120;
  v23 = _Block_copy(aBlock);
  v24 = v20;
  v25 = v21;
  v26 = a3;

  [v25 addAccountChangeObserver:v24 handler:v23];
  _Block_release(v23);

  return v24;
}

void *sub_21BE00AB0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF20, &qword_21BE50608);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  v11 = MEMORY[0x277D85000];
  v12 = *((*MEMORY[0x277D85000] & *v3) + 0xF8);
  v13 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB58D0, &qword_21BE50610);
  sub_21BE26C6C();
  (*(v8 + 32))(&v3[v12], v10, v7);
  v14 = *((*v11 & *v3) + 0x100);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v15 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager);
  *&v3[v14] = v15;
  if (v13 >> 62 && sub_21BE2951C())
  {
    v28 = v15;
    v17 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = v15;
    v17 = MEMORY[0x277D84FA0];
  }

  *&v3[qword_27CDB63F8] = v17;
  *&v3[qword_27CDB6400] = 0;
  v18 = &v3[qword_27CDB63F0];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF10, &qword_21BE50600);
  v30.receiver = v3;
  v30.super_class = v19;
  v20 = objc_msgSendSuper2(&v30, sel_init);
  v21 = *(v20 + *((*v11 & *v20) + 0x100));
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = v20;
  aBlock[4] = sub_21BE11A2C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BE012D4;
  aBlock[3] = &block_descriptor_88;
  v23 = _Block_copy(aBlock);
  v24 = v20;
  v25 = v21;
  v26 = a3;

  [v25 addAccountChangeObserver:v24 handler:v23];
  _Block_release(v23);

  return v24;
}

void sub_21BE00DEC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v49 = a5;
  v50 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - v11;
  v13 = sub_21BE26A4C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  if (*(a1 + 16))
  {
    v20 = sub_21BBB322C();
    if (v21)
    {
      if (*(a2 + 16))
      {
        v48 = *(*(a1 + 56) + 8 * v20);
        v22 = sub_21BBB322C();
        if (v23)
        {
          v24 = *(*(a2 + 56) + 8 * v22);
          v25 = [v48 isEnabledForDataclass_];
          if (v25 == [v24 isEnabledForDataclass_])
          {

            v44 = v48;
          }

          else
          {
            v47 = v24;
            sub_21BE261BC();
            v26 = a3;
            v27 = sub_21BE26A2C();
            v28 = sub_21BE28FFC();

            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v52 = v46;
              *v29 = 136315394;
              *(v29 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62940, &v52);
              *(v29 + 12) = 2080;
              v51 = v26;
              type metadata accessor for Dataclass(0);
              v30 = v26;
              v31 = sub_21BE28A5C();
              v33 = sub_21BB3D81C(v31, v32, &v52);

              *(v29 + 14) = v33;
              _os_log_impl(&dword_21BB35000, v27, v28, "%s changes detected in iCloud settings,\n refreshing checklist item associated with dataclass: %s", v29, 0x16u);
              v34 = v46;
              swift_arrayDestroy();
              MEMORY[0x21CF05C50](v34, -1, -1);
              MEMORY[0x21CF05C50](v29, -1, -1);
            }

            (*(v14 + 8))(v17, v13);
            v35 = sub_21BE28DAC();
            (*(*(v35 - 8) + 56))(v12, 1, 1, v35);
            sub_21BE28D7C();
            v36 = a4;
            v37 = sub_21BE28D6C();
            v38 = swift_allocObject();
            v39 = MEMORY[0x277D85700];
            v38[2] = v37;
            v38[3] = v39;
            v38[4] = v36;
            sub_21BBA932C(0, 0, v12, v50, v38);
          }

          return;
        }
      }
    }
  }

  sub_21BE261BC();
  v40 = sub_21BE26A2C();
  v41 = sub_21BE28FFC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v52 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE62940, &v52);
    _os_log_impl(&dword_21BB35000, v40, v41, "%s Unable to get iCloud account", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x21CF05C50](v43, -1, -1);
    MEMORY[0x21CF05C50](v42, -1, -1);
  }

  (*(v14 + 8))(v19, v13);
}

uint64_t sub_21BE012D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  type metadata accessor for AIDAServiceType(0);
  sub_21BB3A2A4(0, &qword_280BD68E0, 0x277CB8F30);
  sub_21BE10D1C(&unk_280BD6960, 255, type metadata accessor for AIDAServiceType, byte_21BE322E4);
  v4 = sub_21BE2890C();
  v5 = sub_21BE2890C();

  v3(v4, v5);
}

uint64_t sub_21BE013E4()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAA898;

  return sub_21BBC9C4C();
}

uint64_t sub_21BE014A8()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAA898;

  return sub_21BBCAAB4();
}

uint64_t sub_21BE0156C()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCAD5C();
}

double sub_21BE01630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21BE2870C();
  v19 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21BE2874C();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BB3A2A4(0, &qword_280BD6930, 0x277D85C78);
  v12 = sub_21BE2925C();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BB42A18;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_21BE2872C();
  v20 = MEMORY[0x277D84F90];
  sub_21BE10D1C(&qword_280BD69E0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBAF0, &unk_21BE3B600);
  sub_21BB3B038(&qword_280BD69A0, &qword_27CDBBAF0, &unk_21BE3B600, MEMORY[0x277D83970]);
  sub_21BE294DC();
  MEMORY[0x21CF04410](0, v11, v8, v14);
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);

  return result;
}

void sub_21BE01914(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDEC0, &qword_21BE505A0);
    sub_21BB3B038(&qword_27CDBDEC8, &qword_27CDBDEC0, &qword_21BE505A0, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE01A74(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE108, &qword_21BE508B0);
    sub_21BB3B038(&qword_27CDBE110, &qword_27CDBE108, &qword_21BE508B0, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE01BD4(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0E0, &qword_21BE50888);
    sub_21BB3B038(&qword_27CDBE0E8, &qword_27CDBE0E0, &qword_21BE50888, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE01D34(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE068, &qword_21BE50790);
    sub_21BB3B038(&qword_27CDBE070, &qword_27CDBE068, &qword_21BE50790, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE01E94(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE188, &qword_21BE50940);
    sub_21BB3B038(&qword_27CDBE190, &qword_27CDBE188, &qword_21BE50940, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE01FF4(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE160, &qword_21BE50918);
    sub_21BB3B038(&qword_27CDBE168, &qword_27CDBE160, &qword_21BE50918, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE02154(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0B8, &qword_21BE50850);
    sub_21BB3B038(&qword_27CDBE0C0, &qword_27CDBE0B8, &qword_21BE50850, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE022B4(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE128, &qword_21BE508E0);
    sub_21BB3B038(&qword_27CDBE130, &qword_27CDBE128, &qword_21BE508E0, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE02414(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE090, &qword_21BE507C8);
    sub_21BB3B038(&qword_27CDBE098, &qword_27CDBE090, &qword_21BE507C8, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE02574(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE048, &qword_21BE50760);
    sub_21BB3B038(&qword_27CDBE050, &qword_27CDBE048, &qword_21BE50760, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE026D4(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE000, &qword_21BE50728);
    sub_21BB3B038(&qword_27CDBE008, &qword_27CDBE000, &qword_21BE50728, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE02834(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFB8, &qword_21BE506E8);
    sub_21BB3B038(&qword_27CDBDFE0, &qword_27CDBDFB8, &qword_21BE506E8, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE02994(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF78, &qword_21BE50690);
    sub_21BB3B038(&qword_27CDBDF80, &qword_27CDBDF78, &qword_21BE50690, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE02AF4(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF38, &qword_21BE50638);
    sub_21BB3B038(&qword_27CDBDF40, &qword_27CDBDF38, &qword_21BE50638, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE02C54(uint64_t a1)
{
  if (*(a1 + qword_27CDB6400))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF00, &qword_21BE505F0);
    sub_21BB3B038(&qword_27CDBDF08, &qword_27CDBDF00, &qword_21BE505F0, MEMORY[0x277D08000]);
    sub_21BE26C0C();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21BE26C5C();
    sub_21BE26D1C();

    swift_beginAccess();
    sub_21BE26BBC();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_21BE02DB4()
{
  v1 = v0;
  v56 = sub_21BE26A4C();
  v2 = *(v56 - 8);
  v3 = MEMORY[0x28223BE20](v56);
  v59 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - v5;
  sub_21BE261BC();
  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21BB35000, v7, v8, "Checklist row status reset", v9, 2u);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  v54 = *(v2 + 8);
  v55 = v2 + 8;
  v54(v6, v56);
  v10 = *(v1 + 24);
  v11 = *(v10 + 16);

  v13 = v59;
  if (v11)
  {
    v14 = 0;
    v15 = (v10 + 40);
    *&v12 = 136315138;
    v51 = v12;
    v48 = xmmword_21BE362A0;
    v52 = v11;
    v53 = v10;
    while (v14 < *(v10 + 16))
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      ObjectType = swift_getObjectType();
      if (sub_21BBE97A8(ObjectType, v16))
      {
        if (qword_27CDB5030 != -1)
        {
          swift_once();
        }

        v19 = qword_27CDD43F0;
        v20 = *(v16 + 24);
        v60 = ObjectType;
        v61 = v16;
        v57 = v20;
        v58 = v16 + 24;
        v21 = v20(ObjectType, v16);
        v23 = v22;
        swift_beginAccess();
        v24 = *(v19 + 16);
        if (*(v24 + 16))
        {

          v25 = sub_21BBB3108(v21, v23);
          if (v26)
          {
            v27 = *(v24 + 56) + 16 * v25;
            v28 = *(v27 + 8);
            v29 = *v27;

            if (v28 < 1)
            {
            }

            else
            {
              v50 = v29;
              if (qword_27CDB4F68 != -1)
              {
                swift_once();
              }

              v49 = qword_27CDB8D18;
              LOBYTE(v63[0]) = 45;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
              inited = swift_initStackObject();
              *(inited + 16) = v48;
              *(inited + 32) = 0x72656469766F7270;
              v31 = MEMORY[0x277D837D0];
              *(inited + 72) = MEMORY[0x277D837D0];
              *(inited + 40) = 0xE800000000000000;
              *(inited + 48) = v21;
              *(inited + 56) = v23;
              *(inited + 80) = &protocol witness table for String;
              *(inited + 88) = 0x737574617473;
              *(inited + 96) = 0xE600000000000000;
              *(inited + 128) = MEMORY[0x277D839B0];
              *(inited + 136) = &protocol witness table for Bool;
              *(inited + 104) = 1;
              *(inited + 144) = 0x6E6F73616572;
              *(inited + 152) = 0xE600000000000000;
              *(inited + 184) = v31;
              *(inited + 192) = &protocol witness table for String;
              *(inited + 160) = 0x657265766F636572;
              *(inited + 168) = 0xE900000000000064;

              v32 = sub_21BBB5E60(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E8, &qword_21BE32890);
              swift_arrayDestroy();
              sub_21BCA55DC(v63, v32);
            }

            v13 = v59;
          }

          else
          {
          }
        }

        swift_beginAccess();
        v33 = sub_21BBB3108(v21, v23);
        if (v34)
        {
          v35 = v33;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v37 = *(v19 + 16);
          v62 = v37;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_21BC81000();
            v37 = v62;
          }

          v38 = *(*(v37 + 56) + 16 * v35);
          sub_21BC7ECF0(v35, v37);
          *(v19 + 16) = v37;

          v13 = v59;
        }

        swift_endAccess();

        v63[0] = v17;
        v39 = v60;
        (*(*(v61 + 16) + 72))(v60);
        sub_21BE261BC();
        swift_unknownObjectRetain();
        v40 = sub_21BE26A2C();
        v41 = sub_21BE28FCC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v63[0] = v43;
          *v42 = v51;
          v44 = v57(v39, v61);
          v46 = sub_21BB3D81C(v44, v45, v63);

          *(v42 + 4) = v46;
          _os_log_impl(&dword_21BB35000, v40, v41, "%s status reset", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v43);
          v47 = v43;
          v13 = v59;
          MEMORY[0x21CF05C50](v47, -1, -1);
          MEMORY[0x21CF05C50](v42, -1, -1);
        }

        v54(v13, v56);
        v11 = v52;
        v10 = v53;
      }

      ++v14;
      v15 += 2;
      if (v11 == v14)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_26:
  }
}

id sub_21BE033E4()
{
  result = [objc_allocWithZone(MEMORY[0x277CEC790]) init];
  qword_27CDD43D8 = result;
  return result;
}

void sub_21BE03438()
{
  v0 = sub_21BE25FCC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59F8, &qword_21BE32F68);
  v5 = swift_allocObject();
  v61 = xmmword_21BE33260;
  *(v5 + 16) = xmmword_21BE33260;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v6 = qword_280BD79E0;
  v7 = [objc_allocWithZone(MEMORY[0x277CD1C60]) initWithOptions:1 cachePolicy:1];
  v8 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];

  v9 = objc_allocWithZone(type metadata accessor for HomeItemProvider(0));

  v11 = sub_21BE0BDFC(v10, v8, v9);
  v12 = sub_21BE10D1C(&qword_27CDB60D0, 255, type metadata accessor for HomeItemProvider, a9b);
  *(v5 + 32) = v11;
  *(v5 + 40) = v12;
  v13 = type metadata accessor for ContactManagementStore();
  swift_allocObject();
  v14 = sub_21BCCB434();
  v63[3] = v13;
  v63[4] = &off_282D8F758;
  v63[0] = v14;
  v15 = objc_allocWithZone(type metadata accessor for CommLimitsItemProvider(0));
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v63, v13);
  MEMORY[0x28223BE20](v16);
  v18 = (v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;

  v22 = sub_21BE0B56C(v21, v20, v15);
  __swift_destroy_boxed_opaque_existential_0Tm(v63);
  v23 = sub_21BE10D1C(&qword_27CDB60B8, 255, type metadata accessor for CommLimitsItemProvider, byte_21BE50F20);
  *(v5 + 48) = v22;
  *(v5 + 56) = v23;
  v63[0] = v5;
  v24 = [objc_opt_self() isMedicalIDViewControllerSupportedOnDevice];
  v60[1] = v4;
  if (v24)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v25 = v62;
    v26 = [objc_allocWithZone(FAHealthKitSoftLinking) initWithFamilyCircle_];

    if (!v26)
    {
      __break(1u);
      goto LABEL_21;
    }

    v27 = objc_allocWithZone(type metadata accessor for EmergencyContactItemProvider(0));

    v29 = sub_21BE0AD58(v28, v26, v27);
    v31 = *(v5 + 16);
    v30 = *(v5 + 24);
    if (v31 >= v30 >> 1)
    {
      v5 = sub_21BBBCE3C((v30 > 1), v31 + 1, 1, v5);
    }

    v32 = sub_21BE10D1C(&qword_27CDB6060, 255, type metadata accessor for EmergencyContactItemProvider, aU_4);
    *(v5 + 16) = v31 + 1;
    v33 = v5 + 16 * v31;
    *(v33 + 32) = v29;
    *(v33 + 40) = v32;
    v63[0] = v5;
  }

  v34 = *MEMORY[0x277D07F38];
  v35 = *(v1 + 104);
  v35(v3, v34, v0);
  v36 = MEMORY[0x21CF01150](v3);
  (*(v1 + 8))(v3, v0);
  if (v36)
  {
    v37 = [objc_opt_self() defaultStore];
    if (v37)
    {
      v38 = v37;
      if (qword_280BD76F0 != -1)
      {
        swift_once();
      }

      v39 = qword_280BDCB98;
      if (qword_280BD83C0 != -1)
      {
        swift_once();
      }

      v40 = qword_280BDCBF0;

      v41 = sub_21BE09254(v38, v6, v39, v40);
      v43 = *(v5 + 16);
      v42 = *(v5 + 24);
      if (v43 >= v42 >> 1)
      {
        v5 = sub_21BBBCE3C((v42 > 1), v43 + 1, 1, v5);
      }

      v44 = sub_21BE10D1C(&qword_27CDB6070, 255, type metadata accessor for AppleCashItemProvider, aU_5);
      *(v5 + 16) = v43 + 1;
      v45 = v5 + 16 * v43;
      *(v45 + 32) = v41;
      *(v45 + 40) = v44;
      v63[0] = v5;
      goto LABEL_17;
    }

LABEL_21:
    __break(1u);
    return;
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8CB0, &unk_21BE3DAE0);
  v46 = *(v1 + 72);
  v47 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v61;
  v49 = v48 + v47;
  v35(v49, v34, v0);
  v35((v49 + v46), *MEMORY[0x277D07F30], v0);
  v50 = sub_21BE25FBC();

  if (v50)
  {
    inited = swift_initStackObject();
    *(inited + 16) = v61;
    v52 = objc_allocWithZone(type metadata accessor for FamilyContactsItemProvider(0));

    v54 = sub_21BE09C7C(v53, v52);
    v55 = sub_21BE10D1C(&qword_27CDB60A0, 255, type metadata accessor for FamilyContactsItemProvider, byte_21BE44D28);
    *(inited + 32) = v54;
    *(inited + 40) = v55;
    v56 = objc_allocWithZone(type metadata accessor for FamilyMessageConfigProvider(0));

    v58 = sub_21BE09438(v57, v56);
    v59 = sub_21BE10D1C(&qword_27CDB6088, 255, type metadata accessor for FamilyMessageConfigProvider, byte_21BE34648);
    *(inited + 48) = v58;
    *(inited + 56) = v59;
    sub_21BDE59C8(inited);
  }
}

id sub_21BE03B94()
{
  result = sub_21BE03BB4();
  qword_27CDD43E8 = result;
  return result;
}

id sub_21BE03BB4()
{
  v0 = sub_21BE25FCC();
  v1 = *(v0 - 8);
  v98 = v0;
  v99 = v1;
  MEMORY[0x28223BE20](v0);
  v3 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CDB5020 != -1)
  {
    swift_once();
  }

  v4 = qword_27CDD43E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB59F8, &qword_21BE32F68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21BE374E0;
  v6 = qword_27CDB5018;
  v96 = v4;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27CDD43D8;
  v95 = objc_opt_self();
  v8 = [v95 sharedInstance];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v9 = qword_280BD79E0;
  v10 = objc_allocWithZone(type metadata accessor for BeneficiaryItemProvider(0));
  v11 = v7;

  v12 = sub_21BE0EDCC(v11, v8, v9, v10);
  v13 = sub_21BE10D1C(&qword_27CDB6048, 255, type metadata accessor for BeneficiaryItemProvider, byte_21BE3D424);
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v97 = v3;
  v14 = qword_280BD76F0;
  v15 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_aidaAccountManager);
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_280BDCB98;
  v17 = type metadata accessor for ServicesStore(0);
  v101 = v17;
  v102 = &off_282D8FEE0;
  v100[0] = v16;
  v18 = objc_allocWithZone(type metadata accessor for IcloudPlusItemProvider(0));
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
  MEMORY[0x28223BE20](v19);
  v21 = (&v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;

  v24 = sub_21BE0E4D0(v15, v23, v9, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v100);
  v25 = sub_21BE10D1C(&qword_27CDB6030, 255, type metadata accessor for IcloudPlusItemProvider, byte_21BE35294);
  *(inited + 48) = v24;
  *(inited + 56) = v25;
  v26 = [v95 sharedInstance];
  v27 = objc_allocWithZone(type metadata accessor for RecoveryContactItemProvider(0));
  v28 = v11;

  v29 = sub_21BE0DB70(v28, v26, v9, v27);
  v30 = sub_21BE10D1C(&qword_27CDB6018, 255, type metadata accessor for RecoveryContactItemProvider, byte_21BE50D30);
  *(inited + 64) = v29;
  *(inited + 72) = v30;
  v101 = v17;
  v102 = &off_282D8FEE0;
  v94 = v17;
  v100[0] = v16;
  v31 = objc_allocWithZone(type metadata accessor for LocationItemProvider(0));
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
  MEMORY[0x28223BE20](v32);
  v34 = (&v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;

  v95 = v16;

  v37 = sub_21BE10D64(v9, 0, v36, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v100);
  v38 = sub_21BE10D1C(&qword_27CDB6000, 255, type metadata accessor for LocationItemProvider, byte_21BE3D164);
  *(inited + 80) = v37;
  *(inited + 88) = v38;
  v100[0] = v96;
  sub_21BDE59C8(inited);
  v40 = v99;
  v39 = v100[0];
  v41 = *(v99 + 104);
  v43 = v97;
  v42 = v98;
  v41(v97, *MEMORY[0x277D07F20], v98);
  MEMORY[0x21CF01150](v43);
  v44 = *(v40 + 8);
  v99 = v40 + 8;
  v44(v43, v42);
  v45 = qword_280BD83C0;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = qword_280BDCBF0;
  type metadata accessor for AgeBasedPresetService();
  v47 = swift_allocObject();

  v48 = sub_21BE0C7AC(v9, v46, v47);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = sub_21BBBCE3C(0, v39[2] + 1, 1, v39);
  }

  v50 = v39[2];
  v49 = v39[3];
  if (v50 >= v49 >> 1)
  {
    v39 = sub_21BBBCE3C((v49 > 1), v50 + 1, 1, v39);
  }

  v51 = sub_21BE10D1C(&qword_27CDB5FE8, 255, type metadata accessor for ParentalControlItemProvider, byte_21BE37390);
  v39[2] = v50 + 1;
  v52 = &v39[2 * v50];
  v52[4] = v48;
  v52[5] = v51;
  v53 = v98;
  v41(v43, *MEMORY[0x277D07F38], v98);
  v54 = MEMORY[0x21CF01150](v43);
  v44(v43, v53);
  if ((v54 & 1) == 0)
  {
    goto LABEL_28;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v56 = result;
    v101 = v94;
    v102 = &off_282D8FEE0;
    v100[0] = v95;
    v57 = objc_allocWithZone(type metadata accessor for PurchaseSharingItemProvider(0));
    v58 = __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
    MEMORY[0x28223BE20](v58);
    v60 = (&v94 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v61 + 16))(v60);
    v62 = *v60;

    v63 = sub_21BE0C988(v56, v9, v62, v57);
    __swift_destroy_boxed_opaque_existential_0Tm(v100);
    v65 = v39[2];
    v64 = v39[3];
    if (v65 >= v64 >> 1)
    {
      v39 = sub_21BBBCE3C((v64 > 1), v65 + 1, 1, v39);
    }

    v66 = sub_21BE10D1C(&qword_27CDB5FD0, 255, type metadata accessor for PurchaseSharingItemProvider, a4);
    v39[2] = v65 + 1;
    v67 = &v39[2 * v65];
    v67[4] = v63;
    v67[5] = v66;
    v68 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
    v69 = objc_allocWithZone(type metadata accessor for SharedFamilyCalendarItemProvider(0));

    v71 = sub_21BE0F6E0(v70, v68, v69);
    v73 = v39[2];
    v72 = v39[3];
    if (v73 >= v72 >> 1)
    {
      v39 = sub_21BBBCE3C((v72 > 1), v73 + 1, 1, v39);
    }

    v74 = sub_21BE10D1C(&qword_27CDB5FA0, 255, type metadata accessor for SharedFamilyCalendarItemProvider, aI_8);
    v39[2] = v73 + 1;
    v75 = &v39[2 * v73];
    v75[4] = v71;
    v75[5] = v74;
    v76 = [objc_opt_self() sharedMonitor];
    v77 = sub_21BB3A2A4(0, &qword_27CDBDEB0, 0x277D49DD8);
    v78 = objc_allocWithZone(type metadata accessor for SharedPasswordsItemProvider(0));

    v80 = sub_21BE0FE68(v79, v76, v77, &off_282D8B558, v78);
    v82 = v39[2];
    v81 = v39[3];
    if (v82 >= v81 >> 1)
    {
      v39 = sub_21BBBCE3C((v81 > 1), v82 + 1, 1, v39);
    }

    v83 = sub_21BE10D1C(&qword_27CDB5F70, 255, type metadata accessor for SharedPasswordsItemProvider, aI_8);
    v39[2] = v82 + 1;
    v84 = &v39[2 * v82];
    v84[4] = v80;
    v84[5] = v83;
    v85 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
    v86 = objc_allocWithZone(type metadata accessor for SharedFamilyGroceryItemProvider(0));

    v88 = sub_21BE105D4(v87, v85, v86);
    v90 = v39[2];
    v89 = v39[3];
    if (v90 >= v89 >> 1)
    {
      v39 = sub_21BBBCE3C((v89 > 1), v90 + 1, 1, v39);
    }

    v91 = sub_21BE10D1C(&qword_27CDB5F40, 255, type metadata accessor for SharedFamilyGroceryItemProvider, aI_8);
    v39[2] = v90 + 1;
    v92 = &v39[2 * v90];
    v92[4] = v88;
    v92[5] = v91;
LABEL_28:
    type metadata accessor for FamilyChecklistStore();
    v93 = swift_allocObject();
    sub_21BE086D8(v39);
    return v93;
  }

  __break(1u);
  return result;
}

uint64_t sub_21BE0476C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  ObjectType = swift_getObjectType();
  result = sub_21BBE7F94(ObjectType, v3);
  *a2 = result;
  return result;
}

uint64_t sub_21BE047AC(char a1, uint64_t a2)
{
  *(v3 + 48) = a2;
  *(v3 + 56) = v2;
  *(v3 + 136) = a1;
  *(v3 + 64) = sub_21BE28D7C();
  *(v3 + 72) = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return MEMORY[0x2822009F8](sub_21BE0484C, v5, v4);
}

uint64_t sub_21BE0484C()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);

  v4 = v1;
  v19 = v3;
  if (v3)
  {
    v5 = 0;
    while (v5 < *(v2 + 16))
    {
      v6 = v5 + 1;
      v17 = *(v2 + 32 + 16 * v5);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      *(v0 + 40) = sub_21BBE8030(ObjectType, *(&v17 + 1));
      v8 = swift_allocObject();
      swift_weakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v17;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1A8, &qword_21BE50998);
      sub_21BB3B038(&qword_27CDBE1B0, &qword_27CDBE1A8, &qword_21BE50998, MEMORY[0x277CBCD90]);
      sub_21BE26D1C();

      swift_beginAccess();
      sub_21BE26BBC();
      swift_endAccess();

      swift_unknownObjectRelease();
      v5 = v6;
      if (v19 == v6)
      {
        v4 = *(v0 + 56);
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v10 = *(v4 + 16);
    if (!v10)
    {
      type metadata accessor for FamilySignpost(0);
      swift_allocObject();
      v10 = sub_21BC84D18(0x73696C6B63656843, 0xEF65726F74732074, "loadItems", 9, 2u);
    }

    v11 = *(v0 + 48);
    *(v4 + 16) = v10;

    if (v11)
    {
      v12 = *(v0 + 48);
    }

    else
    {
      v12 = *(v1 + 24);
    }

    *(v0 + 96) = v12;
    v13 = *(v0 + 136);

    *(v0 + 104) = sub_21BE28D6C();
    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = swift_task_alloc();
    *(v0 + 120) = v15;
    *v15 = v0;
    v15[1] = sub_21BE04BAC;
  }

  return MEMORY[0x282200740]();
}

uint64_t sub_21BE04BAC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_21BE04CE4;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_21BBE56CC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BE04CE4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21BE04D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BE10D1C(&qword_27CDB63D0, v9, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
    sub_21BE26C0C();
    sub_21BE26C4C();
  }

  else
  {
    sub_21BE261BC();
    swift_unknownObjectRetain();
    v10 = sub_21BE26A2C();
    v11 = sub_21BE28FDC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      ObjectType = swift_getObjectType();
      v15 = (*(a4 + 24))(ObjectType, a4);
      v17 = sub_21BB3D81C(v15, v16, &v18);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_21BB35000, v10, v11, "%s can't find self!", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x21CF05C50](v13, -1, -1);
      MEMORY[0x21CF05C50](v12, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_21BE04FD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 160) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = sub_21BE28D7C();
  *(v4 + 112) = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  *(v4 + 120) = v6;
  *(v4 + 128) = v5;

  return MEMORY[0x2822009F8](sub_21BE050BC, v6, v5);
}

uint64_t sub_21BE050BC(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = *(v2 + 16);
  if (v3)
  {
    v27 = *(v1 + 160);
    v4 = (v2 + 32);
    v5 = sub_21BE28DAC();
    v6 = *(v5 - 8);
    v25 = *(v6 + 56);
    v24 = (v6 + 48);
    v23 = (v6 + 8);
    v26 = v5;
    do
    {
      v10 = *(v1 + 88);
      v9 = *(v1 + 96);
      v28 = *v4;
      v25(v9, 1, 1, v5);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      *(v11 + 32) = v27;
      *(v11 + 40) = v28;
      sub_21BC39020(v9, v10);
      v13 = (*v24)(v10, 1, v5);
      swift_unknownObjectRetain_n();
      v14 = *(v1 + 88);
      if (v13 == 1)
      {
        sub_21BBDE578(*(v1 + 88));
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_21BE28D9C();
        (*v23)(v14, v5);
        if (*v12)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v15 = sub_21BE28D0C();
          v16 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v15 = 0;
      v16 = 0;
LABEL_10:
      v18 = **(v1 + 72);

      if (v16 | v15)
      {
        v7 = v1 + 16;
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
        *(v1 + 32) = v15;
        *(v1 + 40) = v16;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v1 + 96);
      *(v1 + 48) = 1;
      *(v1 + 56) = v7;
      *(v1 + 64) = v18;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_21BBDE578(v8);
      ++v4;
      --v3;
      v5 = v26;
    }

    while (v3);
  }

  v19 = sub_21BE28D6C();
  *(v1 + 136) = v19;
  v20 = swift_task_alloc();
  *(v1 + 144) = v20;
  *v20 = v1;
  v20[1] = sub_21BE053D8;
  v21 = MEMORY[0x277D85700];

  return sub_21BE059E8(v19, v21);
}

uint64_t sub_21BE053D8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_21BE0556C;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_21BE054F4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BE054F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BE0556C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BE055F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    v10 = swift_task_alloc();
    *(v6 + 16) = v10;
    *v10 = v6;
    v10[1] = sub_21BC706A0;

    return sub_21BBE6BBC(ObjectType, a6);
  }

  else
  {
    v12 = swift_task_alloc();
    *(v6 + 24) = v12;
    *v12 = v6;
    v12[1] = sub_21BE05720;

    return sub_21BBE93A4(ObjectType, a6);
  }
}

uint64_t sub_21BE05720()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_21BE05818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_21BC39020(a1, v18 - v8);
  v10 = sub_21BE28DAC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21BBDE578(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_21BE28D0C();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_21BE28D9C();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();

  return result;
}

uint64_t sub_21BE059E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_21BE28D0C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_21BE05A7C, v4, v6);
}

uint64_t sub_21BE05A7C()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  if (sub_21BE28E2C())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1A0, &qword_21BE50980);
    *v3 = v0;
    v3[1] = sub_21BE05BB4;
    v5 = *(v0 + 24);
    v6 = *(v0 + 16);

    return MEMORY[0x2822004D0](v0 + 96, v6, v5, v4);
  }
}

uint64_t sub_21BE05BB4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21BE05E00;
  }

  else
  {
    *(v2 + 97) = *(v2 + 96);
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_21BE05CD0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BE05CD0()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_21BE28E2C())
    {
      if (v1)
      {
        swift_willThrow();
      }

      v2 = *(v0 + 8);

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1A0, &qword_21BE50980);
  *v4 = v0;
  v4[1] = sub_21BE05BB4;
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);

  return MEMORY[0x2822004D0](v0 + 96, v7, v6, v5);
}

uint64_t sub_21BE05E00()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_21BE28E2C())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1A0, &qword_21BE50980);
    *v4 = v0;
    v4[1] = sub_21BE05BB4;
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x2822004D0](v0 + 12, v7, v6, v5);
  }
}

uint64_t sub_21BE05F3C()
{
  v1[2] = v0;
  v2 = sub_21BE26A4C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = sub_21BE28D7C();
  v1[8] = sub_21BE28D6C();
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  v3[1] = sub_21BE06058;

  return MEMORY[0x282200480](500000000);
}

uint64_t sub_21BE06058()
{

  if (v0)
  {

    v1 = sub_21BE28D0C();
    v3 = v2;
    v4 = sub_21BE13484;
  }

  else
  {
    v1 = sub_21BE28D0C();
    v3 = v5;
    v4 = sub_21BE061DC;
  }

  return MEMORY[0x2822009F8](v4, v1, v3);
}

uint64_t sub_21BE061DC()
{
  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }

  if (*(qword_280BD7FE0 + OBJC_IVAR____TtC14FamilyCircleUI20FamilyNetworkMonitor_lastStatus))
  {
    v1 = sub_21BE2995C();

    if ((v1 & 1) == 0)
    {

      sub_21BE261BC();
      v3 = sub_21BE26A2C();
      v4 = sub_21BE28FFC();
      v12 = os_log_type_enabled(v3, v4);
      v8 = v0[4];
      v6 = v0[5];
      v7 = v0[3];
      if (v12)
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        v10 = "Network is down, retryLoadingIncompleteItems disabled";
        goto LABEL_15;
      }

LABEL_16:

      (*(v8 + 8))(v6, v7);

      v13 = v0[1];

      return v13();
    }
  }

  else
  {
  }

  sub_21BE07D30(1);
  if (v2)
  {

    sub_21BE261BC();
    v3 = sub_21BE26A2C();
    v4 = sub_21BE28FFC();
    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "retryLoadingIncompleteItems: nothing to do";
LABEL_15:
      _os_log_impl(&dword_21BB35000, v3, v4, v10, v9, 2u);
      MEMORY[0x21CF05C50](v9, -1, -1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v0[10] = sub_21BE28D6C();
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_21BE064F4;

  return MEMORY[0x282200740]();
}

uint64_t sub_21BE064F4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21BE28D0C();
    v4 = v3;
    v5 = sub_21BE066B8;
  }

  else
  {

    v2 = sub_21BE28D0C();
    v4 = v6;
    v5 = sub_21BE06644;
  }

  return MEMORY[0x2822009F8](v5, v2, v4);
}

uint64_t sub_21BE06644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BE066B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BE06744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = sub_21BE28D7C();
  v3[5] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21BE067E0, v5, v4);
}

void sub_21BE067E0()
{
  v10 = v0;
  v1 = *(v0[3] + 24);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = v0[2];
      v5 = v3 + 1;
      v9 = *(v1 + 32 + 16 * v3);
      sub_21BE06B00(&v9, v4);
      v3 = v5;
      if (v2 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v6 = sub_21BE28D6C();
    v0[8] = v6;
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_21BE06910;
    v8 = MEMORY[0x277D85700];

    sub_21BE059E8(v6, v8);
  }
}

uint64_t sub_21BE06910()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21BE06A90;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21BE06A2C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BE06A2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BE06A90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BE06B00(uint64_t *a1, uint64_t a2)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v40 - v4;
  v5 = sub_21BE26A4C();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  v11 = sub_21BE25FCC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  ObjectType = swift_getObjectType();
  if (qword_280BD6F00 != -1)
  {
    swift_once();
  }

  (*(v12 + 104))(v14, *MEMORY[0x277D07F38], v11);
  MEMORY[0x21CF01150](v14);
  (*(v12 + 8))(v14, v11);
  if (sub_21BBE97A8(ObjectType, v16))
  {
    sub_21BE261BC();
    swift_unknownObjectRetain();
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FCC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v20 = 136315394;
      v21 = (*(v16 + 24))(ObjectType, v16);
      v23 = sub_21BB3D81C(v21, v22, &v45);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = sub_21BBE98B8(ObjectType, v16);
      v26 = sub_21BB3D81C(v24, v25, &v45);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_21BB35000, v18, v19, "%s marked skipped due to errors %s", v20, 0x16u);
      v27 = v42;
      swift_arrayDestroy();
      MEMORY[0x21CF05C50](v27, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    return (*(v43 + 8))(v10, v44);
  }

  else
  {
    v45 = v15;
    v29 = *(v16 + 16);
    result = (*(v29 + 24))(ObjectType, v29);
    if ((result & 1) == 0)
    {
      v45 = v15;
      result = (*(v29 + 40))(ObjectType, v29);
      if ((result & 1) == 0)
      {
        sub_21BE261BC();
        swift_unknownObjectRetain();
        v30 = sub_21BE26A2C();
        v31 = sub_21BE28FCC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v45 = v33;
          *v32 = 136315138;
          v34 = (*(v16 + 24))(ObjectType, v16);
          v36 = sub_21BB3D81C(v34, v35, &v45);

          *(v32 + 4) = v36;
          _os_log_impl(&dword_21BB35000, v30, v31, "%s added to task group", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v33);
          MEMORY[0x21CF05C50](v33, -1, -1);
          MEMORY[0x21CF05C50](v32, -1, -1);
        }

        (*(v43 + 8))(v8, v44);
        v37 = sub_21BE28DAC();
        v38 = v41;
        (*(*(v37 - 8) + 56))(v41, 1, 1, v37);
        v39 = swift_allocObject();
        v39[2] = 0;
        v39[3] = 0;
        v39[4] = v15;
        v39[5] = v16;
        swift_unknownObjectRetain();
        sub_21BE05818(v38, &unk_21BE50990, v39);
        return sub_21BBDE578(v38);
      }
    }
  }

  return result;
}

uint64_t sub_21BE070A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_21BC706A0;

  return sub_21BBE93A4(ObjectType, a5);
}

uint64_t sub_21BE07154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21BE26A4C();
  v5[2] = v7;
  v5[3] = *(v7 - 8);
  v5[4] = swift_task_alloc();
  v5[5] = sub_21BE28D7C();
  v5[6] = sub_21BE28D6C();
  v8 = swift_task_alloc();
  v5[7] = v8;
  *v8 = v5;
  v8[1] = sub_21BE07270;

  return sub_21BE047AC(1, a5);
}

uint64_t sub_21BE07270()
{
  *(*v1 + 64) = v0;

  v3 = sub_21BE28D0C();
  if (v0)
  {
    v4 = sub_21BE07434;
  }

  else
  {
    v4 = sub_21BE073CC;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21BE073CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BE07434()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  sub_21BE261BC();
  v5 = v1;
  sub_21BC51D50(v1, 0xD000000000000029, 0x800000021BE62910);

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

double sub_21BE07510(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  if (!v7)
  {
    type metadata accessor for FamilySignpost(0);
    swift_allocObject();
    v7 = sub_21BC84D18(0x73696C6B63656843, 0xEF65726F74732074, "loadItems", 9, 2u);
  }

  *(v1 + 16) = v7;

  v8 = sub_21BE28DAC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  sub_21BE28D7C();

  v9 = sub_21BE28D6C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v2;
  *(v10 + 40) = a1 & 1;
  sub_21BBA932C(0, 0, v6, &unk_21BE50960, v10);

  return result;
}

uint64_t sub_21BE076B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  v7 = sub_21BE26A4C();
  *(v5 + 16) = v7;
  *(v5 + 24) = *(v7 - 8);
  *(v5 + 32) = swift_task_alloc();
  *(v5 + 40) = sub_21BE28D7C();
  *(v5 + 48) = sub_21BE28D6C();
  v8 = swift_task_alloc();
  *(v5 + 56) = v8;
  *v8 = v5;
  v8[1] = sub_21BE077D8;

  return sub_21BE047AC(a5, 0);
}

uint64_t sub_21BE077D8()
{
  *(*v1 + 64) = v0;

  v3 = sub_21BE28D0C();
  if (v0)
  {
    v4 = sub_21BE07934;
  }

  else
  {
    v4 = sub_21BE13478;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21BE07934()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 72);

  sub_21BE261BC();
  v6 = v1;
  sub_21BE295EC();

  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v5)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x21CF03CA0](v7, v8);

  sub_21BC51D50(v1, 0xD00000000000002FLL, 0x800000021BE62990);

  (*(v3 + 8))(v2, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21BE07A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21BE26A4C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BE07B80, v7, v6);
}

uint64_t sub_21BE07B80()
{

  if (qword_280BD7FD8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  if (*(v0 + 56) == 1)
  {
    sub_21BE07D30(1);
    if ((v1 & 1) == 0)
    {
      sub_21BE261BC();
      v2 = sub_21BE26A2C();
      v3 = sub_21BE28FFC();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_21BB35000, v2, v3, "Reloading on network reconnect", v4, 2u);
        MEMORY[0x21CF05C50](v4, -1, -1);
      }

      v6 = *(v0 + 32);
      v5 = *(v0 + 40);
      v7 = *(v0 + 24);

      (*(v6 + 8))(v5, v7);
      sub_21BE07510(0);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_21BE07D30(char a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);

  if ((a1 & 1) == 0)
  {
    v6 = (v3 + 40);
    v7 = -v4;
    v8 = -1;
    while (1)
    {
      if (v7 + v8 == -1)
      {
LABEL_13:

        return;
      }

      if (++v8 >= *(v3 + 16))
      {
        break;
      }

      v9 = v6 + 2;
      v10 = *(v6 - 1);
      v11 = *v6;
      ObjectType = swift_getObjectType();
      *&v14 = v10;
      v13 = (*(*(v11 + 16) + 40))(ObjectType);
      v6 = v9;
      if (v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v4)
  {
    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      v14 = *(v3 + 16 * v5 + 32);
      if ((sub_21BE07EA0(&v14) & 1) == 0)
      {

        if (*(v1 + 16))
        {
          goto LABEL_8;
        }

        goto LABEL_16;
      }

      if (v4 == ++v5)
      {
        goto LABEL_7;
      }
    }

LABEL_18:
    __break(1u);
    return;
  }

LABEL_7:

  if (*(v1 + 16))
  {
LABEL_8:

    sub_21BC852D8();
  }

LABEL_16:
  *(v1 + 16) = 0;
}

uint64_t sub_21BE07EA0(uint64_t *a1)
{
  v2 = sub_21BE25FCC();
  v53 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21BE26A4C();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v54 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  v13 = *a1;
  v14 = a1[1];
  ObjectType = swift_getObjectType();
  v58 = v13;
  v16 = *(v14 + 16);
  if (v16[3](ObjectType, v16))
  {
    sub_21BE261BC();
    swift_unknownObjectRetain();
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FCC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v58 = v20;
      *v19 = 136315138;
      v21 = (*(v14 + 24))(ObjectType, v14);
      v23 = sub_21BB3D81C(v21, v22, &v58);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_21BB35000, v17, v18, "%s busy", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x21CF05C50](v20, -1, -1);
      MEMORY[0x21CF05C50](v19, -1, -1);
    }

    (*(v55 + 8))(v12, v56);
    v24 = 0;
  }

  else
  {
    v52 = ObjectType;
    if (sub_21BBE97A8(ObjectType, v14))
    {
      sub_21BE261BC();
      swift_unknownObjectRetain();
      v25 = sub_21BE26A2C();
      v26 = sub_21BE28FCC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = v10;
        v28 = v27;
        v29 = swift_slowAlloc();
        v58 = v29;
        *v28 = 136315394;
        v30 = v52;
        v31 = (*(v14 + 24))(v52, v14);
        v33 = sub_21BB3D81C(v31, v32, &v58);

        *(v28 + 4) = v33;
        *(v28 + 12) = 2080;
        v34 = sub_21BBE98B8(v30, v14);
        v36 = sub_21BB3D81C(v34, v35, &v58);

        *(v28 + 14) = v36;
        _os_log_impl(&dword_21BB35000, v25, v26, "%s marked skip on error: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CF05C50](v29, -1, -1);
        MEMORY[0x21CF05C50](v28, -1, -1);

        (*(v55 + 8))(v54, v56);
      }

      else
      {

        (*(v55 + 8))(v10, v56);
      }

      v24 = 1;
    }

    else
    {
      if (qword_280BD6F00 != -1)
      {
        swift_once();
      }

      v37 = v53;
      (*(v53 + 104))(v4, *MEMORY[0x277D07F38], v2);
      MEMORY[0x21CF01150](v4);
      (*(v37 + 8))(v4, v2);
      v38 = v54;
      sub_21BE261BC();
      swift_unknownObjectRetain();
      v39 = sub_21BE26A2C();
      v40 = sub_21BE28FCC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v58 = v42;
        *v41 = 136315394;
        v43 = v52;
        v44 = (*(v14 + 24))(v52, v14);
        v46 = sub_21BB3D81C(v44, v45, &v58);

        *(v41 + 4) = v46;
        *(v41 + 12) = 2080;
        v57 = v13;
        v47 = v16[6](v43, v16);
        v49 = sub_21BB3D81C(v47, v48, &v58);

        *(v41 + 14) = v49;
        _os_log_impl(&dword_21BB35000, v39, v40, "Provider %s state: %s", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CF05C50](v42, -1, -1);
        MEMORY[0x21CF05C50](v41, -1, -1);

        (*(v55 + 8))(v54, v56);
      }

      else
      {

        (*(v55 + 8))(v38, v56);
        v43 = v52;
      }

      v58 = v13;
      v24 = v16[5](v43, v16);
    }
  }

  return v24 & 1;
}

void sub_21BE08538()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = v3;
      while (1)
      {
        if (v5 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v12 = *(v1 + 32 + 16 * v5);
        v3 = v5 + 1;
        ObjectType = swift_getObjectType();
        v7 = *(*(&v12 + 1) + 16);
        v8 = *(v7 + 40);
        swift_unknownObjectRetain();
        if (v8(ObjectType, v7))
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v5;
        if (v2 == v3)
        {
          goto LABEL_13;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21BC59CB4(0, *(v4 + 16) + 1, 1);
      }

      v9 = v12;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21BC59CB4((v10 > 1), v11 + 1, 1);
        v9 = v12;
      }

      *(v4 + 16) = v11 + 1;
      *(v4 + 16 * v11 + 32) = v9;
    }

    while (v2 - 1 != v5);
  }

LABEL_13:
}

void *sub_21BE086D8(uint64_t a1)
{
  v1[2] = 0;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v1[4] = qword_280BD79E0;
  v3 = qword_280BD83C0;

  if (v3 != -1)
  {
    swift_once();
  }

  v1[5] = qword_280BDCBF0;
  if (MEMORY[0x277D84F90] >> 62 && sub_21BE2951C())
  {

    v4 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {

    v4 = MEMORY[0x277D84FA0];
  }

  v1[6] = v4;
  v1[3] = a1;
  if (qword_27CDB5030 != -1)
  {
    swift_once();
  }

  v5 = qword_27CDD43F0;
  swift_beginAccess();
  *(v5 + 16) = MEMORY[0x277D84F98];

  return v1;
}

uint64_t sub_21BE08844()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21BE088C0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FamilyChecklistStore();
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

uint64_t sub_21BE088FC()
{
  type metadata accessor for ChecklistProviderLedger();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  qword_27CDD43F0 = result;
  return result;
}

void sub_21BE08934(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_21BBB3108(a1, a2);
    if (v7)
    {
      v8 = *(v5 + 56) + 16 * v6;
      v9 = *(v8 + 8);
      v10 = *v8;

      if (v9 < 1)
      {
      }

      else
      {
        if (qword_27CDB4F68 != -1)
        {
          swift_once();
        }

        sub_21BCA59D4(a1, a2, 1, 0x657265766F636572, 0xE900000000000064);
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  v11 = sub_21BC7B6E0(a1, a2);
  swift_endAccess();
}

void sub_21BE08A90(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v8 = sub_21BE26A4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21BE28D3C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[0] = a3;
  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAFB0, &qword_21BE3AAD0);
  if (!swift_dynamicCast())
  {
    swift_beginAccess();
    if (*(*(v4 + 16) + 16) && (, sub_21BBB3108(a1, a2), v35 = v34, , (v35 & 1) != 0))
    {
      v36 = *(v4 + 16);
      if (!*(v36 + 16))
      {
        return;
      }

      v37 = sub_21BBB3108(a1, a2);
      if ((v38 & 1) == 0)
      {

        return;
      }

      v39 = *(v36 + 56) + 16 * v37;
      v40 = *(v39 + 8);
      v41 = *v39;

      if (__OFADD__(v40, 1))
      {
        __break(1u);
        return;
      }

      v42 = sub_21BE25A7C();

      swift_beginAccess();

      v43 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v4 + 16);
      *(v4 + 16) = 0x8000000000000000;
      sub_21BC7FB30(v43, v40 + 1, a1, a2, isUniquelyReferenced_nonNull_native);

      *(v4 + 16) = v53;
      swift_endAccess();

      if (v40)
      {

        return;
      }
    }

    else
    {
      v45 = sub_21BE25A7C();
      swift_beginAccess();

      v43 = v45;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v4 + 16);
      *(v4 + 16) = 0x8000000000000000;
      sub_21BC7FB30(v43, 1, a1, a2, v46);

      *(v4 + 16) = v53;
      swift_endAccess();
    }

    v47 = v43;
    v48 = sub_21BE2608C();
    v50 = v49;

    if (!v50)
    {
      v54 = 0x203A726F727245;
      v55 = 0xE700000000000000;
      v53 = [v47 code];
      v51 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v51);

      v48 = v54;
      v50 = v55;
    }

    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    sub_21BCA59D4(a1, a2, 0, v48, v50);

    goto LABEL_24;
  }

  (*(v13 + 8))(v15, v12);
  sub_21BE261BC();

  v17 = sub_21BE26A2C();
  v18 = sub_21BE28FFC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v52 = a3;
    v21 = a2;
    v22 = a1;
    v23 = v20;
    v56[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_21BB3D81C(v22, v21, v56);
    _os_log_impl(&dword_21BB35000, v17, v18, "Timeout, immediate skip for %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    v24 = v23;
    a1 = v22;
    a2 = v21;
    MEMORY[0x21CF05C50](v24, -1, -1);
    MEMORY[0x21CF05C50](v19, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  if (!*(*(v4 + 16) + 16) || (, sub_21BBB3108(a1, a2), v26 = v25, , (v26 & 1) == 0))
  {
    v27 = sub_21BE25A7C();
    v28 = sub_21BE2608C();
    v30 = v29;

    if (!v30)
    {
      v54 = 0x203A726F727245;
      v55 = 0xE700000000000000;
      v53 = [v27 code];
      v31 = sub_21BE2992C();
      MEMORY[0x21CF03CA0](v31);

      v28 = v54;
      v30 = v55;
    }

    swift_beginAccess();

    v32 = v27;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v53 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_21BC7FB30(v32, 1, a1, a2, v33);

    *(v4 + 16) = v53;
    swift_endAccess();
    if (qword_27CDB4F68 != -1)
    {
      swift_once();
    }

    sub_21BCA59D4(a1, a2, 0, v28, v30);

LABEL_24:
  }
}

double sub_21BE09194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_21BB3B038(a5, a3, a4, byte_21BE34830);
    sub_21BE26C0C();

    sub_21BE26C4C();
  }

  return result;
}

char *sub_21BE09254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = type metadata accessor for ServicesStore(0);
  v24 = &off_282D8FEE0;
  v22[0] = a3;
  v20 = type metadata accessor for FamilyPictureStore(0);
  v21 = &off_282D95F60;
  v19[0] = a4;
  v8 = objc_allocWithZone(type metadata accessor for AppleCashItemProvider(0));
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  MEMORY[0x28223BE20](v9);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  MEMORY[0x28223BE20](v13);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_21BE0A4B4(a1, a2, *v11, *v15, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  return v17;
}

char *sub_21BE09438(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB63D8, &qword_21BE346D8);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = type metadata accessor for FamilyCircleStore(0);
  v52[3] = v19;
  v52[4] = &protocol witness table for FamilyCircleStore;
  a2[qword_27CDB6380] = 0;
  v52[0] = a1;
  v20 = qword_27CDB6388;
  v21 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB63A8, &qword_21BE34530);
  sub_21BE26C6C();
  (*(v16 + 32))(&a2[v20], v18, v15);
  sub_21BB3A35C(v52, &a2[qword_27CDD4150]);
  v50 = type metadata accessor for FamilyContactsItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0F8, &qword_21BE50898);
  v22 = sub_21BE28A5C();
  if (v21 >> 62)
  {
    v40 = v23;
    v41 = v22;
    if (sub_21BE2951C())
    {
      v24 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v24 = MEMORY[0x277D84FA0];
    }

    v22 = v41;
    v23 = v40;
  }

  else
  {
    v24 = MEMORY[0x277D84FA0];
  }

  *&a2[qword_27CDB63F8] = v24;
  *&a2[qword_27CDB6400] = 0;
  v25 = &a2[qword_27CDB63F0];
  *v25 = v22;
  v25[1] = v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE100, &qword_21BE508A0);
  v51.receiver = a2;
  v51.super_class = v26;
  v27 = objc_msgSendSuper2(&v51, sel_init);

  sub_21BE261BC();
  v28 = sub_21BE26A4C();
  (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
  *(swift_allocObject() + 16) = v27;
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE108, &qword_21BE508B0);
  swift_allocObject();
  v29 = v27;
  *&v29[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D9A130, sub_21BE12B7C, &block_descriptor_321);

  off_282D95F10(v19, &protocol witness table for FamilyCircleStore);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v31 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v32 = v46;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v33 = v47;
  v34 = v44;
  sub_21BE26CFC();
  (*(v43 + 8))(v6, v34);
  v35 = swift_allocObject();
  v35[2] = v31;
  v35[3] = &unk_21BE508B8;
  v35[4] = v30;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v36 = v49;
  sub_21BE26D1C();

  (*(v48 + 8))(v33, v36);
  (*(v45 + 8))(v11, v32);
  swift_beginAccess();
  v37 = v29;
  sub_21BE26BBC();
  swift_endAccess();

  v38 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4F00 != -1)
  {
    swift_once();
  }

  [v38 addObserver:v37 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  return v37;
}

char *sub_21BE09C7C(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAA50, &unk_21BE508C0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = type metadata accessor for FamilyCircleStore(0);
  v52[3] = v19;
  v52[4] = &protocol witness table for FamilyCircleStore;
  v52[0] = a1;
  v20 = qword_27CDBAA08;
  v21 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBAA28, &qword_21BE44C28);
  sub_21BE26C6C();
  (*(v16 + 32))(&a2[v20], v18, v15);
  sub_21BB3A35C(v52, &a2[qword_27CDD42E0]);
  v50 = type metadata accessor for FamilyContactsItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0F8, &qword_21BE50898);
  v22 = sub_21BE28A5C();
  if (v21 >> 62)
  {
    v40 = v23;
    v41 = v22;
    if (sub_21BE2951C())
    {
      v24 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v24 = MEMORY[0x277D84FA0];
    }

    v22 = v41;
    v23 = v40;
  }

  else
  {
    v24 = MEMORY[0x277D84FA0];
  }

  *&a2[qword_27CDB63F8] = v24;
  *&a2[qword_27CDB6400] = 0;
  v25 = &a2[qword_27CDB63F0];
  *v25 = v22;
  *(v25 + 1) = v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE120, &qword_21BE508D0);
  v51.receiver = a2;
  v51.super_class = v26;
  v27 = objc_msgSendSuper2(&v51, sel_init);

  sub_21BE261BC();
  v28 = sub_21BE26A4C();
  (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
  *(swift_allocObject() + 16) = v27;
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE128, &qword_21BE508E0);
  swift_allocObject();
  v29 = v27;
  *&v29[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D9A220, sub_21BE12CF0, &block_descriptor_342);

  off_282D95F10(v19, &protocol witness table for FamilyCircleStore);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v31 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v32 = v46;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v33 = v47;
  v34 = v44;
  sub_21BE26CFC();
  (*(v43 + 8))(v6, v34);
  v35 = swift_allocObject();
  v35[2] = v31;
  v35[3] = &unk_21BE508E8;
  v35[4] = v30;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v36 = v49;
  sub_21BE26D1C();

  (*(v48 + 8))(v33, v36);
  (*(v45 + 8))(v11, v32);
  swift_beginAccess();
  v37 = v29;
  sub_21BE26BBC();
  swift_endAccess();

  v38 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EF8 != -1)
  {
    swift_once();
  }

  [v38 addObserver:v37 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  return v37;
}

char *sub_21BE0A4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD320, &qword_21BE4DBE0);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v11 = &v43 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD328, &qword_21BE4DBE8);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v43 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD330, &unk_21BE4DBF0);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6590, &unk_21BE50860);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  v58[3] = type metadata accessor for FamilyCircleStore(0);
  v58[4] = &protocol witness table for FamilyCircleStore;
  v58[0] = a2;
  v56 = type metadata accessor for ServicesStore(0);
  v57 = &off_282D8FEE0;
  v55[0] = a3;
  v54[3] = type metadata accessor for FamilyPictureStore(0);
  v54[4] = &off_282D95F60;
  v54[0] = a4;
  v21 = qword_27CDB64A0;
  v22 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB64D0, &qword_21BE34BA0);
  sub_21BE26C6C();
  (*(v18 + 32))(&a5[v21], v20, v17);
  v23 = qword_27CDB64A8;
  *&a5[v23] = sub_21BBB541C(v22);
  sub_21BB3A35C(v58, &a5[qword_27CDD4158]);
  sub_21BB3A35C(v55, &a5[qword_27CDD4160]);
  *&a5[qword_27CDD4168] = a1;
  sub_21BB3A35C(v54, &a5[qword_27CDD4170]);
  v52 = type metadata accessor for AppleCashItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0D0, &qword_21BE50870);
  v24 = sub_21BE28A5C();
  if (v22 >> 62)
  {
    v41 = v25;
    v42 = v24;
    if (sub_21BE2951C())
    {
      v26 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v26 = MEMORY[0x277D84FA0];
    }

    v24 = v42;
    v25 = v41;
  }

  else
  {
    v26 = MEMORY[0x277D84FA0];
  }

  *&a5[qword_27CDB63F8] = v26;
  *&a5[qword_27CDB6400] = 0;
  v27 = &a5[qword_27CDB63F0];
  *v27 = v24;
  *(v27 + 1) = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0D8, &qword_21BE50878);
  v53.receiver = a5;
  v53.super_class = v28;
  v29 = objc_msgSendSuper2(&v53, sel_init);

  sub_21BE261BC();
  v30 = sub_21BE26A4C();
  (*(*(v30 - 8) + 56))(v16, 0, 1, v30);
  *(swift_allocObject() + 16) = v29;
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0E0, &qword_21BE50888);
  swift_allocObject();
  v31 = v29;
  *&v31[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D9A040, sub_21BE12A08, &block_descriptor_300);

  __swift_project_boxed_opaque_existential_1Tm(v55, v56);
  v32 = v45;
  off_282D8FEF0();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v34 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBD340, &qword_27CDBD330, &unk_21BE4DBF0, MEMORY[0x277CBCEC8]);
  sub_21BDD3A64();
  v35 = v48;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_27CDBD358, &qword_27CDBD320, &qword_21BE4DBE0, MEMORY[0x277CBCBE0]);
  v36 = v49;
  v37 = v46;
  sub_21BE26CFC();
  (*(v44 + 8))(v11, v37);
  v38 = swift_allocObject();
  v38[2] = v34;
  v38[3] = &unk_21BE50890;
  v38[4] = v33;
  sub_21BB3B038(&qword_27CDBD360, &qword_27CDBD328, &qword_21BE4DBE8, MEMORY[0x277CBCC18]);

  v39 = v51;
  sub_21BE26D1C();

  (*(v50 + 8))(v36, v39);
  (*(v47 + 8))(v32, v35);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  return v31;
}

char *sub_21BE0AD58(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9BF0, &unk_21BE41518);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  v53 = type metadata accessor for FamilyCircleStore(0);
  v54 = &protocol witness table for FamilyCircleStore;
  v42 = v53;
  v52[0] = a1;
  v21 = qword_27CDB9B90;
  v22 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9BB0, &qword_21BE50830);
  sub_21BE26C6C();
  (*(v18 + 32))(&a3[v21], v20, v17);
  sub_21BB3A35C(v52, &a3[qword_27CDD42D8]);
  *&a3[qword_27CDD42D0] = a2;
  v50 = type metadata accessor for EmergencyContactItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0A8, &qword_21BE50838);
  v23 = sub_21BE28A5C();
  if (v22 >> 62)
  {
    v40 = v24;
    v41 = v23;
    if (sub_21BE2951C())
    {
      v25 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v25 = MEMORY[0x277D84FA0];
    }

    v23 = v41;
    v24 = v40;
  }

  else
  {
    v25 = MEMORY[0x277D84FA0];
  }

  *&a3[qword_27CDB63F8] = v25;
  *&a3[qword_27CDB6400] = 0;
  v26 = &a3[qword_27CDB63F0];
  *v26 = v23;
  *(v26 + 1) = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0B0, &qword_21BE50840);
  v51.receiver = a3;
  v51.super_class = v27;
  v28 = objc_msgSendSuper2(&v51, sel_init);

  sub_21BE261BC();
  v29 = sub_21BE26A4C();
  (*(*(v29 - 8) + 56))(v16, 0, 1, v29);
  *(swift_allocObject() + 16) = v28;
  v50 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE0B8, &qword_21BE50850);
  swift_allocObject();
  v30 = v28;
  *&v30[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D99F50, sub_21BE12894, &block_descriptor_279);

  v31 = [objc_opt_self() defaultCenter];
  [v31 addObserver:v30 selector:sel_medicalDidChange name:*MEMORY[0x277D08118] object:0];

  off_282D95F10(v42, &protocol witness table for FamilyCircleStore);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21BE2635C();
  swift_allocObject();
  v33 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v34 = v46;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v35 = v47;
  v36 = v44;
  sub_21BE26CFC();
  (*(v43 + 8))(v8, v36);
  v37 = swift_allocObject();
  v37[2] = v33;
  v37[3] = &unk_21BE50858;
  v37[4] = v32;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v38 = v49;
  sub_21BE26D1C();

  (*(v48 + 8))(v35, v38);
  (*(v45 + 8))(v13, v34);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  return v30;
}

char *sub_21BE0B56C(uint64_t a1, uint64_t a2, char *a3)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE140, &unk_21BE508F0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v20 = type metadata accessor for FamilyCircleStore(0);
  v54[3] = v20;
  v54[4] = &protocol witness table for FamilyCircleStore;
  v54[0] = a1;
  v53[3] = type metadata accessor for ContactManagementStore();
  v53[4] = &off_282D8F758;
  v53[0] = a2;
  v21 = qword_27CDBE220;
  v22 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE148, &qword_21BE50E10);
  sub_21BE26C6C();
  (*(v17 + 32))(&a3[v21], v19, v16);
  sub_21BB3A35C(v54, &a3[qword_27CDD4410]);
  sub_21BB3A35C(v53, &a3[qword_27CDD4418]);
  v51 = type metadata accessor for CommLimitsItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE150, &qword_21BE50900);
  v23 = sub_21BE28A5C();
  if (v22 >> 62)
  {
    v41 = v24;
    v42 = v23;
    if (sub_21BE2951C())
    {
      v25 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v25 = MEMORY[0x277D84FA0];
    }

    v23 = v42;
    v24 = v41;
  }

  else
  {
    v25 = MEMORY[0x277D84FA0];
  }

  *&a3[qword_27CDB63F8] = v25;
  *&a3[qword_27CDB6400] = 0;
  v26 = &a3[qword_27CDB63F0];
  *v26 = v23;
  *(v26 + 1) = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE158, &qword_21BE50908);
  v52.receiver = a3;
  v52.super_class = v27;
  v28 = objc_msgSendSuper2(&v52, sel_init);

  sub_21BE261BC();
  v29 = sub_21BE26A4C();
  (*(*(v29 - 8) + 56))(v15, 0, 1, v29);
  *(swift_allocObject() + 16) = v28;
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE160, &qword_21BE50918);
  swift_allocObject();
  v30 = v28;
  *&v30[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D9A310, sub_21BE12E64, &block_descriptor_363);

  off_282D95F10(v20, &protocol witness table for FamilyCircleStore);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v32 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v33 = v47;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v34 = v48;
  v35 = v45;
  sub_21BE26CFC();
  (*(v44 + 8))(v7, v35);
  v36 = swift_allocObject();
  v36[2] = v32;
  v36[3] = &unk_21BE50920;
  v36[4] = v31;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v37 = v50;
  sub_21BE26D1C();

  (*(v49 + 8))(v34, v37);
  (*(v46 + 8))(v12, v33);
  swift_beginAccess();
  v38 = v30;
  sub_21BE26BBC();
  swift_endAccess();

  v39 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EA0 != -1)
  {
    swift_once();
  }

  [v39 addObserver:v38 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  return v38;
}

char *sub_21BE0BDFC(uint64_t a1, uint64_t a2, char *a3)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBCDA0, &unk_21BE4C760);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = type metadata accessor for FamilyCircleStore(0);
  v59[3] = v20;
  v59[4] = &protocol witness table for FamilyCircleStore;
  v59[0] = a1;
  v58[3] = sub_21BB3A2A4(0, &qword_27CDBCDB8, 0x277CD1A90);
  v58[4] = &off_282D969B0;
  v58[0] = a2;
  v21 = qword_27CDBCCD0;
  v22 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBCD58, &qword_21BE4C530);
  sub_21BE26C6C();
  (*(v17 + 32))(&a3[v21], v19, v16);
  *&a3[qword_27CDD4380] = 0;
  sub_21BB3A35C(v58, &a3[qword_27CDD4388]);
  sub_21BB3A35C(v59, &a3[qword_27CDD4390]);
  v56 = type metadata accessor for HomeItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE178, &qword_21BE50928);
  v23 = sub_21BE28A5C();
  if (v22 >> 62)
  {
    v46 = v24;
    v47 = v23;
    if (sub_21BE2951C())
    {
      v25 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v25 = MEMORY[0x277D84FA0];
    }

    v23 = v47;
    v24 = v46;
  }

  else
  {
    v25 = MEMORY[0x277D84FA0];
  }

  *&a3[qword_27CDB63F8] = v25;
  *&a3[qword_27CDB6400] = 0;
  v26 = &a3[qword_27CDB63F0];
  *v26 = v23;
  *(v26 + 1) = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE180, &qword_21BE50930);
  v57.receiver = a3;
  v57.super_class = v27;
  v28 = objc_msgSendSuper2(&v57, sel_init);

  sub_21BE261BC();
  v29 = sub_21BE26A4C();
  (*(*(v29 - 8) + 56))(v15, 0, 1, v29);
  *(swift_allocObject() + 16) = v28;
  v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE188, &qword_21BE50940);
  swift_allocObject();
  v30 = v28;
  *&v30[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D9A400, sub_21BE12FD8, &block_descriptor_384);

  v31 = &v30[qword_27CDD4388];
  swift_beginAccess();
  v32 = *(v31 + 24);
  v33 = *(v31 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v34 = *(v33 + 16);
  v35 = v30;
  v34(v30, v32, v33);
  swift_endAccess();
  off_282D95F10(v20, &protocol witness table for FamilyCircleStore);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v37 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v38 = v52;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v39 = v53;
  v40 = v50;
  sub_21BE26CFC();
  (*(v49 + 8))(v7, v40);
  v41 = swift_allocObject();
  v41[2] = v37;
  v41[3] = &unk_21BE50948;
  v41[4] = v36;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v42 = v55;
  sub_21BE26D1C();

  (*(v54 + 8))(v39, v42);
  (*(v51 + 8))(v12, v38);
  swift_beginAccess();
  v43 = v35;
  sub_21BE26BBC();
  swift_endAccess();

  v44 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4E98 != -1)
  {
    swift_once();
  }

  [v44 addObserver:v43 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  return v43;
}

double sub_21BE0C710(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = v6;

  v8 = v6;
  sub_21BE2633C();

  return result;
}

char *sub_21BE0C7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = type metadata accessor for FamilyPictureStore(0);
  v22 = &off_282D95F60;
  v20[0] = a2;
  v18 = type metadata accessor for AgeBasedPresetService();
  v19 = &off_282D8C0B0;
  v17[0] = a3;
  v6 = objc_allocWithZone(type metadata accessor for ParentalControlItemProvider(0));
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v7);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  MEMORY[0x28223BE20](v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_21BE0D248(a1, *v9, *v13, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  return v15;
}

char *sub_21BE0C988(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD320, &qword_21BE4DBE0);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD328, &qword_21BE4DBE8);
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v51 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD330, &unk_21BE4DBF0);
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDB68, &qword_21BE4F580);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  v59[3] = type metadata accessor for FamilyCircleStore(0);
  v59[4] = &protocol witness table for FamilyCircleStore;
  v59[0] = a2;
  v57 = type metadata accessor for ServicesStore(0);
  v58 = &off_282D8FEE0;
  v46 = v57;
  v56[0] = a3;
  v22 = qword_27CDBDAF0;
  v23 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDB20, &qword_21BE50670);
  sub_21BE26C6C();
  (*(v19 + 32))(&a4[v22], v21, v18);
  v24 = qword_27CDBDAF8;
  *&a4[v24] = sub_21BBB541C(v23);
  sub_21BB3A35C(v59, &a4[qword_27CDD43C0]);
  sub_21BB3A35C(v56, &a4[qword_27CDD43C8]);
  *&a4[qword_27CDD43D0] = a1;
  v54 = type metadata accessor for PurchaseSharingItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF68, &qword_21BE50678);
  v25 = sub_21BE28A5C();
  if (v23 >> 62)
  {
    v44 = v26;
    v45 = v25;
    if (sub_21BE2951C())
    {
      v27 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v27 = MEMORY[0x277D84FA0];
    }

    v25 = v45;
    v26 = v44;
  }

  else
  {
    v27 = MEMORY[0x277D84FA0];
  }

  *&a4[qword_27CDB63F8] = v27;
  *&a4[qword_27CDB6400] = 0;
  v28 = &a4[qword_27CDB63F0];
  *v28 = v25;
  *(v28 + 1) = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF70, &qword_21BE50680);
  v55.receiver = a4;
  v55.super_class = v29;
  v30 = objc_msgSendSuper2(&v55, sel_init);

  sub_21BE261BC();
  v31 = sub_21BE26A4C();
  (*(*(v31 - 8) + 56))(v17, 0, 1, v31);
  *(swift_allocObject() + 16) = v30;
  v54 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF78, &qword_21BE50690);
  swift_allocObject();
  v32 = v30;
  *&v32[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D99988, sub_21BE11EB0, &block_descriptor_142);

  v33 = [objc_opt_self() defaultCenter];
  v34 = qword_27CDB4EC0;
  v35 = v32;
  if (v34 != -1)
  {
    swift_once();
  }

  [v33 addObserver:v35 selector:sel_handleDismiss name:qword_27CDB7E70 object:0];

  __swift_project_boxed_opaque_existential_1Tm(v56, v57);
  off_282D8FEF0();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v37 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBD340, &qword_27CDBD330, &unk_21BE4DBF0, MEMORY[0x277CBCEC8]);
  sub_21BDD3A64();
  v38 = v50;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_27CDBD358, &qword_27CDBD320, &qword_21BE4DBE0, MEMORY[0x277CBCBE0]);
  v39 = v51;
  v40 = v48;
  sub_21BE26CFC();
  (*(v47 + 8))(v9, v40);
  v41 = swift_allocObject();
  v41[2] = v37;
  v41[3] = &unk_21BE50698;
  v41[4] = v36;
  sub_21BB3B038(&qword_27CDBD360, &qword_27CDBD328, &qword_21BE4DBE8, MEMORY[0x277CBCC18]);

  v42 = v53;
  sub_21BE26D1C();

  (*(v52 + 8))(v39, v42);
  (*(v49 + 8))(v14, v38);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  return v35;
}

char *sub_21BE0D248(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF90, &qword_21BE506A8);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v9 = &v43 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF98, &qword_21BE506B0);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v43 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFA0, &qword_21BE506B8);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB73A0, &unk_21BE506C0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v58[3] = type metadata accessor for FamilyCircleStore(0);
  v58[4] = &protocol witness table for FamilyCircleStore;
  v58[0] = a1;
  v19 = type metadata accessor for FamilyPictureStore(0);
  v56 = v19;
  v57 = &off_282D95F60;
  v55[0] = a2;
  v54[3] = type metadata accessor for AgeBasedPresetService();
  v54[4] = &off_282D8C0B0;
  v54[0] = a3;
  v20 = qword_27CDB7340;
  v21 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7360, &unk_21BE37290);
  sub_21BE26C6C();
  (*(v16 + 32))(&a4[v20], v18, v15);
  sub_21BB3A35C(v58, &a4[qword_27CDB7330]);
  sub_21BB3A35C(v54, &a4[qword_27CDB7328]);
  sub_21BB3A35C(v55, &a4[qword_27CDB7338]);
  v52 = type metadata accessor for ParentalControlItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFA8, &qword_21BE506D0);
  v22 = sub_21BE28A5C();
  if (v21 >> 62)
  {
    v41 = v23;
    v42 = v22;
    if (sub_21BE2951C())
    {
      v24 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v24 = MEMORY[0x277D84FA0];
    }

    v22 = v42;
    v23 = v41;
  }

  else
  {
    v24 = MEMORY[0x277D84FA0];
  }

  *&a4[qword_27CDB63F8] = v24;
  *&a4[qword_27CDB6400] = 0;
  v25 = &a4[qword_27CDB63F0];
  *v25 = v22;
  *(v25 + 1) = v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFB0, &qword_21BE506D8);
  v53.receiver = a4;
  v53.super_class = v26;
  v27 = objc_msgSendSuper2(&v53, sel_init);

  sub_21BE261BC();
  v28 = sub_21BE26A4C();
  (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
  *(swift_allocObject() + 16) = v27;
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFB8, &qword_21BE506E8);
  swift_allocObject();
  v29 = v27;
  *&v29[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D99AA0, sub_21BE120E0, &block_descriptor_168_0);

  __swift_project_boxed_opaque_existential_1Tm(v55, v56);
  v30 = v45;
  off_282D95F80(v19, &off_282D95F60);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v32 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBDFC0, &qword_27CDBDFA0, &qword_21BE506B8, MEMORY[0x277CBCEC8]);
  sub_21BB3CC8C(&qword_27CDBDFC8, &qword_280BD8A10, off_2782F0CC0);
  v33 = v48;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_27CDBDFD0, &qword_27CDBDF90, &qword_21BE506A8, MEMORY[0x277CBCBE0]);
  v34 = v49;
  v35 = v46;
  sub_21BE26CFC();
  (*(v44 + 8))(v9, v35);
  v36 = swift_allocObject();
  v36[2] = v32;
  v36[3] = &unk_21BE506F0;
  v36[4] = v31;
  sub_21BB3B038(&qword_27CDBDFD8, &qword_27CDBDF98, &qword_21BE506B0, MEMORY[0x277CBCC18]);

  v37 = v51;
  sub_21BE26D1C();

  (*(v50 + 8))(v34, v37);
  (*(v47 + 8))(v30, v33);
  swift_beginAccess();
  v38 = v29;
  sub_21BE26BBC();
  swift_endAccess();

  v39 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EA8 != -1)
  {
    swift_once();
  }

  [v39 addObserver:v38 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_0Tm(v58);
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  return v38;
}

char *sub_21BE0DB70(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v9 = &v45 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v45 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE018, &qword_21BE50738);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - v18;
  v60[3] = sub_21BB3A2A4(0, &qword_27CDBE020, 0x277CEC790);
  v60[4] = &off_282D9A748;
  v60[0] = a1;
  v59[3] = sub_21BB3A2A4(0, &qword_27CDBE028, 0x277CF0130);
  v59[4] = &off_282D98978;
  v59[0] = a2;
  v57 = type metadata accessor for FamilyCircleStore(0);
  v58 = &protocol witness table for FamilyCircleStore;
  v46 = v57;
  v56[0] = a3;
  v20 = qword_27CDBE1C0;
  v21 = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE030, &qword_21BE50740);
  sub_21BE26C6C();
  (*(v17 + 32))(&a4[v20], v19, v16);
  sub_21BB3A35C(v60, &a4[qword_27CDD43F8]);
  sub_21BB3A35C(v59, &a4[qword_27CDD4408]);
  sub_21BB3A35C(v56, &a4[qword_27CDD4400]);
  v54 = type metadata accessor for RecoveryContactItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE038, &qword_21BE50748);
  v22 = sub_21BE28A5C();
  if (v21 >> 62)
  {
    v43 = v23;
    v44 = v22;
    if (sub_21BE2951C())
    {
      v24 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v24 = MEMORY[0x277D84FA0];
    }

    v22 = v44;
    v23 = v43;
  }

  else
  {
    v24 = MEMORY[0x277D84FA0];
  }

  *&a4[qword_27CDB63F8] = v24;
  *&a4[qword_27CDB6400] = 0;
  v25 = &a4[qword_27CDB63F0];
  *v25 = v22;
  *(v25 + 1) = v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE040, &qword_21BE50750);
  v55.receiver = a4;
  v55.super_class = v26;
  v27 = objc_msgSendSuper2(&v55, sel_init);

  sub_21BE261BC();
  v28 = sub_21BE26A4C();
  (*(*(v28 - 8) + 56))(v15, 0, 1, v28);
  *(swift_allocObject() + 16) = v27;
  v54 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE048, &qword_21BE50760);
  swift_allocObject();
  v29 = v27;
  *&v29[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D99C80, sub_21BE12438, &block_descriptor_210);

  v30 = objc_opt_self();
  v31 = [v30 defaultCenter];
  v32 = qword_27CDB4EB8;
  v33 = v29;
  if (v32 != -1)
  {
    swift_once();
  }

  [v31 addObserver:v33 selector:sel_recoveryContactViewDismissed name:qword_27CDB7E68 object:0];

  v34 = [v30 defaultCenter];
  [v34 addObserver:v33 selector:sel_recoveryContactChanged name:*MEMORY[0x277CEC6F8] object:0];

  off_282D95F10(v46, &protocol witness table for FamilyCircleStore);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v36 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v37 = v50;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v38 = v51;
  v39 = v48;
  sub_21BE26CFC();
  (*(v47 + 8))(v9, v39);
  v40 = swift_allocObject();
  v40[2] = v36;
  v40[3] = &unk_21BE50768;
  v40[4] = v35;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v41 = v53;
  sub_21BE26D1C();

  (*(v52 + 8))(v38, v41);
  (*(v49 + 8))(v12, v37);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  return v33;
}

char *sub_21BE0E4D0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD320, &qword_21BE4DBE0);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v38 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD328, &qword_21BE4DBE8);
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v38 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD330, &unk_21BE4DBF0);
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6720, &unk_21BE50770);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v53[3] = sub_21BB3A2A4(0, &qword_27CDB6918, 0x277CED1D0);
  v53[4] = &off_282D98998;
  v53[0] = a1;
  v52[3] = type metadata accessor for FamilyCircleStore(0);
  v52[4] = &protocol witness table for FamilyCircleStore;
  v52[0] = a3;
  v50 = type metadata accessor for ServicesStore(0);
  v51 = &off_282D8FEE0;
  v49[0] = a2;
  v19 = qword_27CDB66D0;
  v20 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB66F0, &qword_21BE35120);
  sub_21BE26C6C();
  (*(v16 + 32))(&a4[v19], v18, v15);
  *&a4[qword_27CDD4190] = 0;
  sub_21BB3A35C(v49, &a4[qword_27CDD4180]);
  sub_21BB3A35C(v53, &a4[qword_27CDD4178]);
  sub_21BB3A35C(v52, &a4[qword_27CDD4188]);
  if (v20 >> 62 && sub_21BE2951C())
  {
    v21 = sub_21BC0870C(MEMORY[0x277D84F90]);
  }

  else
  {
    v21 = MEMORY[0x277D84FA0];
  }

  *&a4[qword_27CDB63F8] = v21;
  *&a4[qword_27CDB6400] = 0;
  v22 = &a4[qword_27CDB63F0];
  *v22 = 0xD000000000000016;
  *(v22 + 1) = 0x800000021BE62960;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE060, &qword_21BE50780);
  v48.receiver = a4;
  v48.super_class = v23;
  v24 = objc_msgSendSuper2(&v48, sel_init);

  sub_21BE261BC();
  v25 = sub_21BE26A4C();
  (*(*(v25 - 8) + 56))(v14, 0, 1, v25);
  *(swift_allocObject() + 16) = v24;
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE068, &qword_21BE50790);
  swift_allocObject();
  v26 = v24;
  *&v26[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D99D70, sub_21BE125AC, &block_descriptor_231);

  __swift_project_boxed_opaque_existential_1Tm(v49, v50);
  v27 = v40;
  off_282D8FEF0();
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v29 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBD340, &qword_27CDBD330, &unk_21BE4DBF0, MEMORY[0x277CBCEC8]);
  sub_21BDD3A64();
  v30 = v43;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_27CDBD358, &qword_27CDBD320, &qword_21BE4DBE0, MEMORY[0x277CBCBE0]);
  v31 = v44;
  v32 = v41;
  sub_21BE26CFC();
  (*(v39 + 8))(v9, v32);
  v33 = swift_allocObject();
  v33[2] = v29;
  v33[3] = &unk_21BE50798;
  v33[4] = v28;
  sub_21BB3B038(&qword_27CDBD360, &qword_27CDBD328, &qword_21BE4DBE8, MEMORY[0x277CBCC18]);

  v34 = v46;
  sub_21BE26D1C();

  (*(v45 + 8))(v31, v34);
  (*(v42 + 8))(v27, v30);
  swift_beginAccess();
  v35 = v26;
  sub_21BE26BBC();
  swift_endAccess();

  v36 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4E90 != -1)
  {
    swift_once();
  }

  [v36 addObserver:v35 selector:? name:? object:?];

  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  return v35;
}

char *sub_21BE0EDCC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = &v44 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v44 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B28, &unk_21BE507A0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - v18;
  v55[3] = sub_21BB3A2A4(0, &qword_27CDBE020, 0x277CEC790);
  v55[4] = &off_282D8DE78;
  v55[0] = a1;
  v54[3] = sub_21BB3A2A4(0, &qword_27CDBE028, 0x277CF0130);
  v54[4] = &off_282D98978;
  v54[0] = a2;
  v20 = type metadata accessor for FamilyCircleStore(0);
  v53[3] = v20;
  v53[4] = &protocol witness table for FamilyCircleStore;
  v53[0] = a3;
  v21 = qword_27CDB8AC0;
  v22 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8AE0, &qword_21BE3D330);
  sub_21BE26C6C();
  (*(v17 + 32))(&a4[v21], v19, v16);
  sub_21BB3A35C(v55, &a4[qword_27CDD4278]);
  sub_21BB3A35C(v54, &a4[qword_27CDD4280]);
  sub_21BB3A35C(v53, &a4[qword_27CDD4288]);
  v51 = type metadata accessor for BeneficiaryItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE080, &qword_21BE507B0);
  v23 = sub_21BE28A5C();
  if (v22 >> 62)
  {
    v42 = v24;
    v43 = v23;
    if (sub_21BE2951C())
    {
      v25 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v25 = MEMORY[0x277D84FA0];
    }

    v23 = v43;
    v24 = v42;
  }

  else
  {
    v25 = MEMORY[0x277D84FA0];
  }

  *&a4[qword_27CDB63F8] = v25;
  *&a4[qword_27CDB6400] = 0;
  v26 = &a4[qword_27CDB63F0];
  *v26 = v23;
  *(v26 + 1) = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE088, &qword_21BE507B8);
  v52.receiver = a4;
  v52.super_class = v27;
  v28 = objc_msgSendSuper2(&v52, sel_init);

  sub_21BE261BC();
  v29 = sub_21BE26A4C();
  (*(*(v29 - 8) + 56))(v15, 0, 1, v29);
  *(swift_allocObject() + 16) = v28;
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE090, &qword_21BE507C8);
  swift_allocObject();
  v30 = v28;
  *&v30[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D99E60, sub_21BE12720, &block_descriptor_252);

  v31 = [objc_opt_self() defaultCenter];
  v32 = qword_27CDB4EB0;
  v33 = v30;
  if (v32 != -1)
  {
    swift_once();
  }

  [v31 addObserver:v33 selector:sel_handleDismiss name:qword_27CDB7E60 object:{0, v44}];

  off_282D95F10(v20, &protocol witness table for FamilyCircleStore);
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v35 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v36 = v47;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v37 = v48;
  v38 = v45;
  sub_21BE26CFC();
  (*(v44 + 8))(v9, v38);
  v39 = swift_allocObject();
  v39[2] = v35;
  v39[3] = &unk_21BE507D0;
  v39[4] = v34;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v40 = v50;
  sub_21BE26D1C();

  (*(v49 + 8))(v37, v40);
  (*(v46 + 8))(v12, v36);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v54);
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  return v33;
}

char *sub_21BE0F6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v36 - v16;
  v44[3] = sub_21BB3A2A4(0, &qword_27CDBDF28, 0x277CC5A40);
  v44[4] = &off_282D96870;
  v44[0] = a2;
  v18 = type metadata accessor for FamilyCircleStore(0);
  v43[3] = v18;
  v43[4] = &protocol witness table for FamilyCircleStore;
  v43[0] = a1;
  sub_21BB3A35C(v43, a3 + qword_27CDD4370);
  sub_21BB3A35C(v44, a3 + qword_27CDD4378);
  v42 = type metadata accessor for SharedFamilyCalendarItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF30, &qword_21BE50628);
  v19 = sub_21BE28A5C();
  v21 = sub_21BE00774(v19, v20, *MEMORY[0x277CB8958]);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 defaultCenter];
  [v24 addObserver:v23 selector:sel_handleRefresh name:*MEMORY[0x277CC5960] object:0];

  v25 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EC8 != -1)
  {
    swift_once();
  }

  [v25 addObserver:v23 selector:sel_handleRefresh name:qword_27CDB7E78 object:{0, v36}];

  v26 = v23;

  sub_21BE261BC();
  v27 = sub_21BE26A4C();
  (*(*(v27 - 8) + 56))(v17, 0, 1, v27);
  *(swift_allocObject() + 16) = v26;
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF38, &qword_21BE50638);
  swift_allocObject();
  v28 = v26;
  *&v28[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D99820, sub_21BE11C50, &block_descriptor_111);

  off_282D95F10(v18, &protocol witness table for FamilyCircleStore);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v30 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v31 = v39;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v32 = v37;
  sub_21BE26CFC();
  (*(v36 + 8))(v8, v32);
  v33 = swift_allocObject();
  v33[2] = v30;
  v33[3] = &unk_21BE50640;
  v33[4] = v29;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v34 = v41;
  sub_21BE26D1C();

  (*(v40 + 8))(v11, v34);
  (*(v38 + 8))(v14, v31);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  return v28;
}

char *sub_21BE0FE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  v45 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v40 - v19;
  v50[3] = sub_21BB3A2A4(0, &qword_27CDBDEF0, 0x277D49A50);
  v50[4] = &off_282D8B540;
  v50[0] = a2;
  v21 = type metadata accessor for FamilyCircleStore(0);
  v49[3] = v21;
  v49[4] = &protocol witness table for FamilyCircleStore;
  v49[0] = a1;
  sub_21BB3A35C(v49, a5 + qword_27CDD4200);
  sub_21BB3A35C(v50, a5 + qword_27CDD4208);
  v22 = (a5 + qword_27CDD4210);
  *v22 = a3;
  v22[1] = a4;
  v48 = type metadata accessor for SharedPasswordsItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDEF8, &qword_21BE505E0);
  v23 = sub_21BE28A5C();
  v25 = sub_21BE00AB0(v23, v24, *MEMORY[0x277CB89C0]);
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 defaultCenter];
  if (qword_27CDB4ED0 != -1)
  {
    swift_once();
  }

  [v28 addObserver:v27 selector:? name:? object:?];

  v29 = v27;

  sub_21BE261BC();
  v30 = sub_21BE26A4C();
  (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
  *(swift_allocObject() + 16) = v29;
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDF00, &qword_21BE505F0);
  swift_allocObject();
  v31 = v29;
  *&v31[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D996B8, sub_21BE119F0, &block_descriptor_79);

  off_282D95F10(v21, &protocol witness table for FamilyCircleStore);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v33 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v34 = v44;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v35 = v45;
  v36 = v42;
  sub_21BE26CFC();
  (*(v41 + 8))(v12, v36);
  v37 = swift_allocObject();
  v37[2] = v33;
  v37[3] = &unk_21BE505F8;
  v37[4] = v32;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v38 = v47;
  sub_21BE26D1C();

  (*(v46 + 8))(v35, v38);
  (*(v43 + 8))(v17, v34);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  return v31;
}

char *sub_21BE105D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  v43[3] = sub_21BB3A2A4(0, &qword_27CDBA3A8, 0x277D44850);
  v43[4] = &off_282D888B8;
  v43[0] = a2;
  v18 = type metadata accessor for FamilyCircleStore(0);
  v42[3] = v18;
  v42[4] = &protocol witness table for FamilyCircleStore;
  v42[0] = a1;
  sub_21BB3A35C(v42, a3 + qword_27CDD4120);
  sub_21BB3A35C(v43, a3 + qword_27CDD4128);
  v41 = type metadata accessor for SharedFamilyGroceryItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDEB8, &qword_21BE50590);
  v19 = sub_21BE28A5C();
  v21 = sub_21BE00438(v19, v20, *MEMORY[0x277CB8A18]);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 defaultCenter];
  if (qword_27CDB4ED8 != -1)
  {
    swift_once();
  }

  [v24 addObserver:v23 selector:v35 name:? object:?];

  v25 = v23;

  sub_21BE261BC();
  v26 = sub_21BE26A4C();
  (*(*(v26 - 8) + 56))(v17, 0, 1, v26);
  *(swift_allocObject() + 16) = v25;
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDEC0, &qword_21BE505A0);
  swift_allocObject();
  v27 = v25;
  *&v27[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D99550, sub_21BE11790, &block_descriptor_61);

  off_282D95F10(v18, &protocol witness table for FamilyCircleStore);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v29 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180, MEMORY[0x277CBCEC8]);
  sub_21BB3CCDC();
  v30 = v38;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70, MEMORY[0x277CBCBE0]);
  v31 = v36;
  sub_21BE26CFC();
  (*(v35 + 8))(v8, v31);
  v32 = swift_allocObject();
  v32[2] = v29;
  v32[3] = &unk_21BE505A8;
  v32[4] = v28;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0, MEMORY[0x277CBCC18]);

  v33 = v40;
  sub_21BE26D1C();

  (*(v39 + 8))(v11, v33);
  (*(v37 + 8))(v14, v30);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0Tm(v43);
  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  return v27;
}

uint64_t sub_21BE10D1C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

char *sub_21BE10D64(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD320, &qword_21BE4DBE0);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v46 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD328, &qword_21BE4DBE8);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v46 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBD330, &unk_21BE4DBF0);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC7C0, &qword_21BE356C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8A98, &unk_21BE3D210);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - v17;
  v60[3] = type metadata accessor for FamilyCircleStore(0);
  v60[4] = &protocol witness table for FamilyCircleStore;
  v60[0] = a1;
  v58 = type metadata accessor for ServicesStore(0);
  v59 = &off_282D8FEE0;
  v57[0] = a3;
  v19 = qword_27CDB8A40;
  v20 = MEMORY[0x277D84F90];
  v56[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8A68, &qword_21BE3CFC0);
  sub_21BE26C6C();
  (*(v16 + 32))(&a4[v19], v18, v15);
  v21 = &a4[qword_27CDD4270];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v22 = qword_27CDB8A48;
  *&a4[qword_27CDB8A48] = 0;
  sub_21BB3A35C(v60, &a4[qword_27CDD4268]);
  sub_21BB3A35C(v57, v56);
  swift_beginAccess();
  sub_21BE1211C(v56, v21);
  swift_endAccess();
  v23 = *&a4[v22];
  *&a4[v22] = a2;
  v24 = a2;

  v56[0] = type metadata accessor for LocationItemProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFF0, &qword_21BE50710);
  v25 = sub_21BE28A5C();
  if (v20 >> 62)
  {
    v44 = v26;
    v45 = v25;
    if (sub_21BE2951C())
    {
      v27 = sub_21BC0870C(MEMORY[0x277D84F90]);
    }

    else
    {
      v27 = MEMORY[0x277D84FA0];
    }

    v25 = v45;
    v26 = v44;
  }

  else
  {
    v27 = MEMORY[0x277D84FA0];
  }

  *&a4[qword_27CDB63F8] = v27;
  *&a4[qword_27CDB6400] = 0;
  v28 = &a4[qword_27CDB63F0];
  *v28 = v25;
  *(v28 + 1) = v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBDFF8, &qword_21BE50718);
  v55.receiver = a4;
  v55.super_class = v29;
  v30 = objc_msgSendSuper2(&v55, sel_init);

  sub_21BE261BC();
  v31 = sub_21BE26A4C();
  (*(*(v31 - 8) + 56))(v14, 0, 1, v31);
  *(swift_allocObject() + 16) = v30;
  v56[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE000, &qword_21BE50728);
  swift_allocObject();
  v32 = v30;
  *&v32[qword_27CDB6400] = sub_21BE262AC();

  sub_21BE01630(&unk_282D99B90, sub_21BE122C4, &block_descriptor_189);

  __swift_project_boxed_opaque_existential_1Tm(v57, v58);
  v33 = v48;
  off_282D8FEF0();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21BE2635C();
  swift_allocObject();
  v35 = sub_21BE2634C();
  sub_21BB3B038(&qword_27CDBD340, &qword_27CDBD330, &unk_21BE4DBF0, MEMORY[0x277CBCEC8]);
  sub_21BDD3A64();
  v36 = v51;
  sub_21BE26D0C();
  sub_21BB3B038(&qword_27CDBD358, &qword_27CDBD320, &qword_21BE4DBE0, MEMORY[0x277CBCBE0]);
  v37 = v52;
  v38 = v49;
  sub_21BE26CFC();
  (*(v47 + 8))(v9, v38);
  v39 = swift_allocObject();
  v39[2] = v35;
  v39[3] = &unk_21BE50730;
  v39[4] = v34;
  sub_21BB3B038(&qword_27CDBD360, &qword_27CDBD328, &qword_21BE4DBE8, MEMORY[0x277CBCC18]);

  v40 = v54;
  sub_21BE26D1C();

  (*(v53 + 8))(v37, v40);
  (*(v50 + 8))(v33, v36);
  swift_beginAccess();
  v41 = v32;
  sub_21BE26BBC();
  swift_endAccess();

  v42 = [objc_opt_self() defaultCenter];
  [v42 addObserver:v41 selector:sel_handleUpdate name:*MEMORY[0x277D08110] object:0];

  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  __swift_destroy_boxed_opaque_existential_0Tm(v57);
  return v41;
}

uint64_t sub_21BE11658(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBA6A64;

  return sub_21BBCD88C(a1);
}

uint64_t sub_21BE116F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBCDB90(a1, v1);
}

uint64_t sub_21BE11804()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BE013E4();
}

uint64_t sub_21BE118B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BC371CC(a1);
}

uint64_t sub_21BE11958(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC3727C(a1, v1);
}

uint64_t sub_21BE11A64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BE0156C();
}

uint64_t sub_21BE11B18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BDAF940(a1);
}

uint64_t sub_21BE11BB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDAF9F0(a1, v1);
}

uint64_t sub_21BE11CC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BE014A8();
}

uint64_t sub_21BE11D78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BDF0BF4(a1);
}

uint64_t sub_21BE11E18(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDF0CA4(a1, v1);
}

uint64_t sub_21BE11EEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BC1B204(a1);
}

uint64_t sub_21BE11F8C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC1B2B4(a1, v1);
}

uint64_t sub_21BE12030()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB44438(v2, v3, v0 + 4);
}

uint64_t sub_21BE1211C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8AA0, &qword_21BE4DC20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BE1218C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BC939E8(a1);
}

uint64_t sub_21BE1222C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC93A98(a1, v1);
}

uint64_t sub_21BE12300(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BE185D0(a1);
}

uint64_t sub_21BE123A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BE18680(a1, v1);
}

uint64_t sub_21BE12474(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BBF3FD0(a1);
}

uint64_t sub_21BE12514(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBF4080(a1, v1);
}

uint64_t sub_21BE125E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BC96120(a1);
}

uint64_t sub_21BE12688(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC961D0(a1, v1);
}

uint64_t sub_21BE1275C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BCEB220(a1);
}

uint64_t sub_21BE127FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BCEB2D0(a1, v1);
}

uint64_t sub_21BE128D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BBEE1C4(a1);
}

uint64_t sub_21BE12970(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBEE274(a1, v1);
}

uint64_t sub_21BE12A44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BBE5308(a1);
}

uint64_t sub_21BE12AE4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBE53B8(a1, v1);
}

uint64_t sub_21BE12BB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BD3357C(a1);
}

uint64_t sub_21BE12C58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BD3362C(a1, v1);
}

uint64_t sub_21BE12D2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BE1A600(a1);
}

uint64_t sub_21BE12DCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BE1A6B0(a1, v1);
}

uint64_t sub_21BE12EA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21BBB7EB8;

  return sub_21BDB1498(a1);
}

uint64_t sub_21BE12F40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BDB1548(a1, v1);
}

uint64_t sub_21BE13014(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BE076B8(a1, v4, v5, v6, v7);
}

uint64_t sub_21BE130D8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21BBB7EB8;

  return sub_21BE06744(a1, a2, v2);
}

uint64_t objectdestroy_43Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return swift_deallocObject();
}

uint64_t sub_21BE131E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BE070A0(a1, v4, v5, v7, v6);
}

uint64_t sub_21BE132B4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21BBB7EB8;

  return sub_21BE04FD8(a1, a2, v6, v7);
}

uint64_t sub_21BE1336C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21BBB7EB8;

  return sub_21BE055F8(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_21BE1351C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BBB7EB8;

  return v9(a1, a2, a3);
}

uint64_t sub_21BE13648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21BBB7EB8;

  return v9(a1, a2, a3);
}

uint64_t sub_21BE13774(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

double sub_21BE137D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return result;
}

uint64_t sub_21BE13848(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_21BE28D7C();
  v2[5] = sub_21BE28D6C();
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  v3[1] = sub_21BE138F8;

  return sub_21BE144F4();
}

uint64_t sub_21BE138F8()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BE13A34, v1, v0);
}

uint64_t sub_21BE13A34()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BE13AE8(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_21BE26A4C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v2[10] = swift_task_alloc();
  v2[11] = sub_21BE28D7C();
  v2[12] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[13] = v5;
  v2[14] = v4;

  return MEMORY[0x2822009F8](sub_21BE13C50, v5, v4);
}

uint64_t sub_21BE13C50()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v0[16] = sub_21BE28D6C();
    v3 = sub_21BE28D0C();
    v0[17] = v3;
    v0[18] = v2;

    return MEMORY[0x2822009F8](sub_21BE13E6C, v3, v2);
  }

  else
  {

    v4 = v0[10];
    v5 = sub_21BE25D1C();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_21BB3A4CC(v4, &qword_27CDB9720, &unk_21BE39F00);
    sub_21BE2614C();
    v6 = sub_21BE26A2C();
    v7 = sub_21BE28FFC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21BB35000, v6, v7, "AppleCardStore, family changed", v8, 2u);
      MEMORY[0x21CF05C50](v8, -1, -1);
    }

    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[6];

    (*(v10 + 8))(v9, v11);

    v12 = v0[1];

    return v12();
  }
}

void sub_21BE13E6C()
{
  v1 = *(v0[15] + 40);
  v0[19] = v1;
  if (v1)
  {
    v2 = v0[9];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_21BE13F7C;
    v6 = v0[9];
    v5 = v0[10];

    v7(v5, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BE13F7C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 72);
  if (v0)
  {

    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);
    v5 = *(v3 + 136);
    v6 = *(v3 + 144);
    v7 = sub_21BE14300;
  }

  else
  {
    sub_21BB3A4CC(v4, &qword_27CDB5790, &qword_21BE32800);

    v5 = *(v3 + 136);
    v6 = *(v3 + 144);
    v7 = sub_21BE1410C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BE1410C()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21BE14178, v1, v2);
}

uint64_t sub_21BE14178()
{

  v1 = v0[10];
  v2 = sub_21BE25D1C();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_21BB3A4CC(v1, &qword_27CDB9720, &unk_21BE39F00);
  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21BB35000, v3, v4, "AppleCardStore, family changed", v5, 2u);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21BE14300()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_21BE1436C, v1, v2);
}

uint64_t sub_21BE1436C()
{

  v1 = v0[10];
  v2 = sub_21BE25D1C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_21BB3A4CC(v1, &qword_27CDB9720, &unk_21BE39F00);
  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21BB35000, v3, v4, "AppleCardStore, family changed", v5, 2u);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21BE144F4()
{
  v1[52] = v0;
  v2 = sub_21BE25D1C();
  v1[53] = v2;
  v1[54] = *(v2 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v3 = sub_21BE26A4C();
  v1[57] = v3;
  v1[58] = *(v3 - 8);
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  sub_21BE28D7C();
  v1[66] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v1[67] = v5;
  v1[68] = v4;

  return MEMORY[0x2822009F8](sub_21BE1469C, v5, v4);
}

uint64_t sub_21BE1469C()
{
  v1 = (v0[52] + qword_280BDCB68);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = [v4 me];
  v0[69] = v5;

  if (v5)
  {
    v6 = *(v0[52] + qword_280BDCB70);
    v0[70] = v6;
    v0[2] = v0;
    v0[7] = v0 + 75;
    v0[3] = sub_21BE14B80;
    v7 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB61F0, &qword_21BE39610);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_21BBDC4C4;
    v0[29] = &block_descriptor_62;
    v0[30] = v7;
    [v6 hasAppleCardWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    sub_21BE2614C();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21BB35000, v8, v9, "AppleCardStore loadData has no currentFamilyMember", v10, 2u);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }

    v12 = v0[58];
    v11 = v0[59];
    v13 = v0[57];
    v14 = v0[52];

    (*(v12 + 8))(v11, v13);
    *(v14 + qword_280BDCB78) = 0;
    v15 = (v14 + qword_280BD7510);
    v16 = *(v14 + qword_280BD7510);
    v17 = *(v14 + qword_280BD7510 + 8);
    sub_21BC718B0(v16, v17);
    type metadata accessor for AppleCardFamilyCache();
    sub_21BC718B8();
    sub_21BE26EAC();
    sub_21BB47CE0(v16, v17);
    v18 = sub_21BE28CEC();
    v19 = sub_21BE1F55C();
    if (v19)
    {
      v20 = v19;

      MEMORY[0x21CF03CA0](46, 0xE100000000000000);
      MEMORY[0x21CF03CA0](0xD000000000000010, 0x800000021BE57B40);
      v21 = sub_21BE289CC();

      [v20 setValue:v18 forKey:v21];

      v18 = v21;
    }

    v23 = v0[55];
    v22 = v0[56];
    v25 = v0[53];
    v24 = v0[54];

    v26 = *v15;
    v27 = v15[1];
    sub_21BC718B0(*v15, v27);
    sub_21BE26EAC();
    sub_21BB47CE0(v26, v27);
    v28 = sub_21BE1F55C();
    [v28 synchronize];

    sub_21BE25D0C();
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v24 + 16))(v23, v22, v25);

    sub_21BE26CBC();
    (*(v24 + 8))(v22, v25);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_21BE14B80()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);

  return MEMORY[0x2822009F8](sub_21BE14C88, v2, v1);
}

uint64_t sub_21BE14C88()
{
  v37 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 600);
  v3 = qword_280BDCB80;
  *(v0 + 568) = qword_280BDCB80;
  *(v1 + v3) = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + 560);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 400;
    *(v0 + 88) = sub_21BE15180;
    v5 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C60, &qword_21BE39660);
    *(v0 + 272) = MEMORY[0x277D85DD0];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_21BE17340;
    *(v0 + 296) = &block_descriptor_58;
    *(v0 + 304) = v5;
    [v4 appleCardAccountStateWithCompletion_];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {

    sub_21BE2614C();
    v6 = sub_21BE26A2C();
    v7 = sub_21BE28FFC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21BB35000, v6, v7, "AppleCardStore, does not have Apple Card", v8, 2u);
      MEMORY[0x21CF05C50](v8, -1, -1);
    }

    v9 = *(v0 + 480);
    v10 = *(v0 + 456);
    v11 = *(v0 + 464);

    (*(v11 + 8))(v9, v10);
    if (qword_27CDB4F90 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 416);
    LOBYTE(v32) = *(v1 + v3);
    v33 = xmmword_21BE33DF0;
    v34 = 0;
    v35 = 0;
    v36 = 771;
    sub_21BD236A8(&v32);
    *(v12 + qword_280BDCB78) = 0;
    v13 = (v12 + qword_280BD7510);
    v14 = *(v12 + qword_280BD7510);
    v15 = *(v12 + qword_280BD7510 + 8);
    sub_21BC718B0(v14, v15);
    type metadata accessor for AppleCardFamilyCache();
    sub_21BC718B8();
    v16 = sub_21BE26EAC();
    sub_21BB47CE0(v14, v15);
    v17 = sub_21BE28CEC();
    v18 = sub_21BE1F55C();
    if (v18)
    {
      v19 = v18;
      v20 = *(v16 + 24);
      v32 = *(v16 + 16);
      *&v33 = v20;

      MEMORY[0x21CF03CA0](46, 0xE100000000000000);
      MEMORY[0x21CF03CA0](0xD000000000000010, 0x800000021BE57B40);
      v21 = sub_21BE289CC();

      [v19 setValue:v17 forKey:v21];

      v17 = v21;
    }

    v31 = *(v0 + 552);
    v23 = *(v0 + 440);
    v22 = *(v0 + 448);
    v25 = *(v0 + 424);
    v24 = *(v0 + 432);

    v26 = *v13;
    v27 = v13[1];
    sub_21BC718B0(*v13, v27);
    sub_21BE26EAC();
    sub_21BB47CE0(v26, v27);
    v28 = sub_21BE1F55C();
    [v28 synchronize];

    sub_21BE25D0C();
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v24 + 16))(v23, v22, v25);

    sub_21BE26CBC();
    (*(v24 + 8))(v22, v25);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_21BE15180()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);

  return MEMORY[0x2822009F8](sub_21BE15288, v2, v1);
}

uint64_t sub_21BE15288(uint64_t a1)
{
  v2 = *(v1 + 400);
  sub_21BE2614C();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_21BB35000, v3, v4, "AppleCardStore, current user account state %ld", v5, 0xCu);
    MEMORY[0x21CF05C50](v5, -1, -1);
  }

  v6 = *(v1 + 520);
  v7 = *(v1 + 456);
  v8 = *(v1 + 464);

  v9 = *(v8 + 8);
  *(v1 + 576) = v9;
  *(v1 + 584) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v7);
  if (v2 == 1)
  {
    v10 = *(v1 + 560);
    v11 = [*(v1 + 552) altDSID];
    *(v1 + 592) = v11;
    *(v1 + 144) = v1;
    *(v1 + 184) = v1 + 408;
    *(v1 + 152) = sub_21BE157E8;
    v12 = swift_continuation_init();
    *(v1 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7C68, &qword_21BE39668);
    *(v1 + 336) = MEMORY[0x277D85DD0];
    *(v1 + 344) = 1107296256;
    *(v1 + 352) = sub_21BE17340;
    *(v1 + 360) = &block_descriptor_61_0;
    *(v1 + 368) = v12;
    [v10 appleCardAccessLevelForAltDSID:v11 completion:v1 + 336];

    return MEMORY[0x282200938](v1 + 144);
  }

  else
  {

    sub_21BE2614C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "AppleCardStore, account state is not active. Don't show apple card row", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }

    v16 = *(v1 + 488);
    v17 = *(v1 + 456);
    v18 = *(v1 + 416);

    v9(v16, v17);
    *(v18 + qword_280BDCB78) = 0;
    v19 = (v18 + qword_280BD7510);
    v20 = *(v18 + qword_280BD7510);
    v21 = *(v18 + qword_280BD7510 + 8);
    sub_21BC718B0(v20, v21);
    type metadata accessor for AppleCardFamilyCache();
    sub_21BC718B8();
    sub_21BE26EAC();
    sub_21BB47CE0(v20, v21);
    v22 = sub_21BE28CEC();
    v23 = sub_21BE1F55C();
    if (v23)
    {
      v24 = v23;

      MEMORY[0x21CF03CA0](46, 0xE100000000000000);
      MEMORY[0x21CF03CA0](0xD000000000000010, 0x800000021BE57B40);
      v25 = sub_21BE289CC();

      [v24 setValue:v22 forKey:v25];

      v22 = v25;
    }

    v35 = *(v1 + 552);
    v27 = *(v1 + 440);
    v26 = *(v1 + 448);
    v29 = *(v1 + 424);
    v28 = *(v1 + 432);

    v30 = *v19;
    v31 = v19[1];
    sub_21BC718B0(*v19, v31);
    sub_21BE26EAC();
    sub_21BB47CE0(v30, v31);
    v32 = sub_21BE1F55C();
    [v32 synchronize];

    sub_21BE25D0C();
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v28 + 16))(v27, v26, v29);

    sub_21BE26CBC();
    (*(v28 + 8))(v26, v29);

    v33 = *(v1 + 8);

    return v33();
  }
}

uint64_t sub_21BE157E8()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);

  return MEMORY[0x2822009F8](sub_21BE158F0, v2, v1);
}

uint64_t sub_21BE158F0()
{
  v46 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 416);

  v3 = qword_280BDCB58;
  *(v2 + qword_280BDCB58) = *(v0 + 408);

  sub_21BE2614C();

  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FFC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v2 + v3);

    _os_log_impl(&dword_21BB35000, v4, v5, "AppleCardStore, current user access level %lu", v6, 0xCu);
    MEMORY[0x21CF05C50](v6, -1, -1);
  }

  else
  {
  }

  (*(v0 + 576))(*(v0 + 512), *(v0 + 456));
  if (qword_27CDB4F90 != -1)
  {
    swift_once();
  }

  v7 = *(v2 + v3);
  LOBYTE(v40) = *(*(v0 + 416) + *(v0 + 568));
  v41 = v7;
  v42 = -1;
  v43 = 0;
  v44 = 0;
  v45 = 771;
  sub_21BD236A8(&v40);
  if (*(v2 + v3) == 1)
  {
    sub_21BE2614C();
    v8 = sub_21BE26A2C();
    v9 = sub_21BE28FFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21BB35000, v8, v9, "AppleCardStore, show apple card row", v10, 2u);
      MEMORY[0x21CF05C50](v10, -1, -1);
    }

    v11 = *(v0 + 576);
    v12 = *(v0 + 504);
    v13 = *(v0 + 456);
    v14 = *(v0 + 416);

    v11(v12, v13);
    *(v14 + qword_280BDCB78) = 1;
  }

  else
  {
    sub_21BE2614C();
    v15 = sub_21BE26A2C();
    v16 = sub_21BE28FFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21BB35000, v15, v16, "AppleCardStore, current user does not have a primary role. Don't show apple card row", v17, 2u);
      MEMORY[0x21CF05C50](v17, -1, -1);
    }

    v18 = *(v0 + 576);
    v19 = *(v0 + 496);
    v20 = *(v0 + 456);
    v14 = *(v0 + 416);

    v18(v19, v20);
    *(v14 + qword_280BDCB78) = 0;
  }

  v21 = (v14 + qword_280BD7510);
  v22 = *(v14 + qword_280BD7510);
  v23 = *(v14 + qword_280BD7510 + 8);
  sub_21BC718B0(v22, v23);
  type metadata accessor for AppleCardFamilyCache();
  sub_21BC718B8();
  v24 = sub_21BE26EAC();
  sub_21BB47CE0(v22, v23);
  v25 = sub_21BE28CEC();
  v26 = sub_21BE1F55C();
  if (v26)
  {
    v27 = v26;
    v28 = *(v24 + 24);
    v40 = *(v24 + 16);
    v41 = v28;

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](0xD000000000000010, 0x800000021BE57B40);
    v29 = sub_21BE289CC();

    [v27 setValue:v25 forKey:v29];

    v25 = v29;
  }

  v39 = *(v0 + 552);
  v31 = *(v0 + 440);
  v30 = *(v0 + 448);
  v33 = *(v0 + 424);
  v32 = *(v0 + 432);

  v34 = *v21;
  v35 = v21[1];
  sub_21BC718B0(*v21, v35);
  sub_21BE26EAC();
  sub_21BB47CE0(v34, v35);
  v36 = sub_21BE1F55C();
  [v36 synchronize];

  sub_21BE25D0C();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v32 + 16))(v31, v30, v33);

  sub_21BE26CBC();
  (*(v32 + 8))(v30, v33);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_21BE15E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[3] = swift_task_alloc();
  v5 = sub_21BE25D1C();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = sub_21BE28D7C();
  v4[8] = sub_21BE28D6C();
  v4[9] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_21BE15FC8, v7, v6);
}

void sub_21BE15FC8()
{
  v1 = *(v0[2] + 40);
  v0[12] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_21BE160DC;
    v5 = v0[6];
    v6 = v0[3];

    v7(v5, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BE160DC()
{
  v2 = *v1;
  (*v1)[14] = v0;

  if (v0)
  {
    sub_21BB3A4CC(v2[3], &qword_27CDB5790, &qword_21BE32800);

    v3 = v2[10];
    v4 = v2[11];
    v5 = sub_21BE16374;
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v9 = v2[3];
    v8 = v2[4];

    sub_21BB3A4CC(v9, &qword_27CDB5790, &qword_21BE32800);
    (*(v7 + 8))(v6, v8);
    v3 = v2[10];
    v4 = v2[11];
    v5 = sub_21BE16274;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BE16274()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BE162F8, v1, v0);
}

uint64_t sub_21BE162F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BE16374()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BE163F8, v1, v0);
}

uint64_t sub_21BE163F8()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_21BE164B4(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_21BE26A4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2613C();
  v14 = sub_21BE26A2C();
  v15 = sub_21BE28FFC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a3;
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21BB35000, v14, v15, a1, v17, 2u);
    v18 = v17;
    a3 = v16;
    MEMORY[0x21CF05C50](v18, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v19 = sub_21BE28DAC();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  sub_21BE28D7C();

  v20 = sub_21BE28D6C();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v6;
  sub_21BC54908(0, 0, v9, a3, v21);

  return result;
}

uint64_t sub_21BE166F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v4[3] = swift_task_alloc();
  v5 = sub_21BE25D1C();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = sub_21BE28D7C();
  v4[8] = sub_21BE28D6C();
  v4[9] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_21BE16834, v7, v6);
}

void sub_21BE16834()
{
  v1 = *(v0[2] + 40);
  v0[12] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v7 = (*MEMORY[0x277D07FF8] + MEMORY[0x277D07FF8]);

    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_21BE16948;
    v5 = v0[6];
    v6 = v0[3];

    v7(v5, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BE16948()
{
  v2 = *v1;
  (*v1)[14] = v0;

  if (v0)
  {
    sub_21BB3A4CC(v2[3], &qword_27CDB5790, &qword_21BE32800);

    v3 = v2[10];
    v4 = v2[11];
    v5 = sub_21BE16B64;
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v9 = v2[3];
    v8 = v2[4];

    sub_21BB3A4CC(v9, &qword_27CDB5790, &qword_21BE32800);
    (*(v7 + 8))(v6, v8);
    v3 = v2[10];
    v4 = v2[11];
    v5 = sub_21BE16AE0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21BE16AE0()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BE1733C, v1, v0);
}

uint64_t sub_21BE16B64()
{

  v1 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BE17338, v1, v0);
}

double sub_21BE16C00(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  return result;
}

uint64_t sub_21BE16C44()
{
  v1 = qword_280BD7500;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1B8, &unk_21BE50A88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_280BDCB68));
  swift_unknownObjectRelease();
  v3 = *(v0 + qword_280BD7510);
  v4 = *(v0 + qword_280BD7510 + 8);

  return sub_21BB47CE0(v3, v4);
}

uint64_t sub_21BE16CF0()
{

  v1 = qword_280BD7500;

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1B8, &unk_21BE50A88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_280BDCB68));
  swift_unknownObjectRelease();
  sub_21BB47CE0(*(v0 + qword_280BD7510), *(v0 + qword_280BD7510 + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_21BE16DF8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE1B8, &unk_21BE50A88);
  sub_21BE26C7C();
  return swift_endAccess();
}

double sub_21BE16E70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return result;
}

uint64_t sub_21BE16EEC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21BE25D1C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v10(v7, v9, v3);

  sub_21BE26CBC();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_21BE1705C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_21BE1708C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BE13848(a1, v1);
}

uint64_t sub_21BE17128(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BE13AE8(a1, v1);
}

uint64_t sub_21BE171C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BE166F8(a1, v4, v5, v6);
}

uint64_t sub_21BE17274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BE15E8C(a1, v4, v5, v6);
}

void sub_21BE17344(void (*a1)(id), uint64_t a2)
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  if (*(v2 + 16) > 0)
  {
    sub_21BE2614C();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FDC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21BB35000, v12, v13, "Already tried renew once.", v14, 2u);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v15 = 0;
    goto LABEL_5;
  }

  v15 = [objc_opt_self() defaultStore];
  if (!v15)
  {
LABEL_5:
    a1(v15);
    return;
  }

  v16 = v15;
  v38 = v2;
  v17 = [v15 aa_primaryAppleAccount];
  sub_21BE2614C();
  v18 = sub_21BE26A2C();
  v19 = sub_21BE28FFC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_21BB35000, v18, v19, "Renewing primary account...", v20, 2u);
    MEMORY[0x21CF05C50](v20, -1, -1);
  }

  (*(v6 + 8))(v11, v5);
  String.rebrand.getter(0xD00000000000002DLL, 0x800000021BE62AB0);
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v37 = sub_21BE2599C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21BE32770;
  v24 = v38;
  if (v17 && (v25 = [v17 appleID]) != 0)
  {
    v26 = v17;
    v27 = v24;
    v28 = v25;
    v29 = sub_21BE28A0C();
    v31 = v30;

    v24 = v27;
    v17 = v26;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 64) = sub_21BBBEFE8();
  if (v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  *(v23 + 32) = v32;
  *(v23 + 40) = v33;
  sub_21BE28A2C();

  v34 = sub_21BE289CC();

  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = a2;
  aBlock[4] = sub_21BE17A68;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BE179BC;
  aBlock[3] = &block_descriptor_63;
  v36 = _Block_copy(aBlock);

  [v16 renewCredentialsForAccount:v17 force:1 reason:v34 completion:v36];

  _Block_release(v36);
  *(v24 + 16) = 1;
}

uint64_t sub_21BE177FC(uint64_t a1, void *a2, uint64_t (*a3)(BOOL))
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  if (a1)
  {
    sub_21BE2614C();
    v12 = v10;
    sub_21BC51D50(a2, 0xD00000000000001FLL, 0x800000021BE62AE0);
  }

  else
  {
    sub_21BE2614C();
    v13 = sub_21BE26A2C();
    v14 = sub_21BE28FFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21BB35000, v13, v14, "Primary account sucessfully renewed.", v15, 2u);
      MEMORY[0x21CF05C50](v15, -1, -1);
    }
  }

  (*(v7 + 8))(v12, v6);
  return a3(a1 == 0);
}

void sub_21BE179BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

double sub_21BE17A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t), uint64_t a8, void *a9)
{
  v55 = a8;
  v16 = sub_21BE26A4C();
  v53 = *(v16 - 8);
  v54 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v52 - v20;
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5] = a5;
  v23 = v55;
  v24 = v22;
  v22[6] = a6;
  v22[7] = a7;
  v22[8] = v23;
  v22[9] = a9;
  if (*(a1 + 16) <= 0)
  {
    v52 = a1;
    v29 = objc_opt_self();

    v30 = a9;
    v31 = [v29 defaultStore];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 aa_primaryAppleAccount];
      sub_21BE2614C();
      v34 = sub_21BE26A2C();
      v35 = sub_21BE28FFC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_21BB35000, v34, v35, "Renewing primary account...", v36, 2u);
        MEMORY[0x21CF05C50](v36, -1, -1);
      }

      (*(v53 + 8))(v19, v54);
      String.rebrand.getter(0xD00000000000002DLL, 0x800000021BE62AB0);
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v38 = [objc_opt_self() bundleForClass_];
      sub_21BE2599C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_21BE32770;
      v40 = v52;
      if (v33 && (v41 = [v33 appleID]) != 0)
      {
        v42 = v41;
        v43 = sub_21BE28A0C();
        v45 = v44;

        v40 = v52;
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      *(v39 + 56) = MEMORY[0x277D837D0];
      *(v39 + 64) = sub_21BBBEFE8();
      if (v45)
      {
        v46 = v43;
      }

      else
      {
        v46 = 0;
      }

      if (v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0xE000000000000000;
      }

      *(v39 + 32) = v46;
      *(v39 + 40) = v47;
      sub_21BE28A2C();

      v48 = sub_21BE289CC();

      v49 = swift_allocObject();
      *(v49 + 16) = sub_21BE18018;
      *(v49 + 24) = v24;
      aBlock[4] = sub_21BE18050;
      aBlock[5] = v49;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21BE179BC;
      aBlock[3] = &block_descriptor_14;
      v50 = _Block_copy(aBlock);

      [v32 renewCredentialsForAccount:v33 force:1 reason:v48 completion:v50];

      _Block_release(v50);
      *(v40 + 16) = 1;
    }

    else
    {
      a7(a9, 1);
    }
  }

  else
  {

    v25 = a9;
    sub_21BE2614C();
    v26 = sub_21BE26A2C();
    v27 = sub_21BE28FDC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_21BB35000, v26, v27, "Already tried renew once.", v28, 2u);
      MEMORY[0x21CF05C50](v28, -1, -1);
    }

    (*(v53 + 8))(v21, v54);
    a7(a9, 1);
  }

  return result;
}

uint64_t sub_21BE18058(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  sub_21BC97154();
  **(*(v2 + 64) + 40) = sub_21BE28C3C();

  return MEMORY[0x282200948](v2);
}

uint64_t sub_21BE180F0()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21BC95680;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB8B38, &qword_21BE3D4E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21BE18058;
  v0[13] = &block_descriptor_64;
  v0[14] = v2;
  [v1 fetchMyCustodians_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21BE1820C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB8A28;

  return v7(a1, a2);
}

uint64_t sub_21BE18324()
{
  v1 = qword_27CDBE1C0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE018, &qword_21BE50738);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD43F8));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4400));
  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4408));
}

id sub_21BE183BC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for RecoveryContactItemProvider(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21BE18434(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver_];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for RecoveryContactItemProvider(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_21BE184C0(uint64_t a1)
{
  v2 = qword_27CDBE1C0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE018, &qword_21BE50738);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD43F8));
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4400));
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4408));
}

uint64_t sub_21BE1855C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BE185D0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BE1881C();
}

uint64_t sub_21BE18680(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BE18718, v4, v3);
}

uint64_t sub_21BE18718()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCC7EC();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BE1881C()
{
  v1[2] = v0;
  v2 = sub_21BE260AC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_21BE28D7C();
  v1[8] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x2822009F8](sub_21BE18954, v4, v3);
}

uint64_t sub_21BE18954()
{
  v1 = v0[2];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v4 = sub_21BC84D18(v3, v2, "computeItems", 12, 2u);
  v5 = qword_27CDD4408;
  v0[11] = v4;
  v0[12] = v5;
  v6 = *(v1 + v5 + 24);
  v7 = *(v1 + v5 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + v5), v6);
  v0[13] = (*(v7 + 8))(v6, v7);
  v8 = *(v1 + qword_27CDD43F8 + 24);
  v9 = *(v1 + qword_27CDD43F8 + 32);
  __swift_project_boxed_opaque_existential_1Tm((v1 + qword_27CDD43F8), v8);
  v12 = (*(v9 + 8) + **(v9 + 8));
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_21BE18B20;

  return v12(v8, v9);
}

uint64_t sub_21BE18B20(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_21BE18C48, v4, v3);
}

uint64_t sub_21BE18C48()
{
  v1 = v0[15];

  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    v24 = v0[13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE210, &unk_21BE50DB0);
    v25 = (type metadata accessor for RecoveryContactDataItem(0) - 8);
    v26 = (*(*v25 + 80) + 32) & ~*(*v25 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_21BE32770;
    v27 = (v22 + v26);
    v28 = v25[7];
    v29 = sub_21BE25D1C();
    (*(*(v29 - 8) + 56))(&v27[v28], 1, 1, v29);
    *v27 = 0;
    *&v27[v25[8]] = MEMORY[0x277D84F90];
    v27[v25[9]] = 5;

LABEL_14:
    sub_21BC852D8();

    v30 = v0[1];

    return v30(v22);
  }

  if (!sub_21BE2951C())
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = v0[13];
  if (v2)
  {
    v3 = v0[7];
    v4 = (v0[2] + v0[12]);
    v5 = sub_21BE25D1C();
    v6 = *(*(v5 - 8) + 56);
    v6(v3, 1, 1, v5);
    v7 = v4[3];
    v8 = v4[4];
    __swift_project_boxed_opaque_existential_1Tm(v4, v7);
    v9 = (*(v8 + 16))(v2, v7, v8);
    if (v9)
    {
      v10 = v9;
      if ([v9 integerValue])
      {
        v12 = v0[6];
        v11 = v0[7];
        [v10 doubleValue];
        sub_21BE25CCC();

        sub_21BC51500(v11);
        v6(v12, 0, 1, v5);
        sub_21BC1E320(v12, v11);
      }

      else
      {
      }
    }

    v18 = v0[15];
    v19 = v0[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE210, &unk_21BE50DB0);
    v20 = (type metadata accessor for RecoveryContactDataItem(0) - 8);
    v21 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_21BE32770;
    v23 = (v22 + v21);
    sub_21BC1E1AC(v19, &v23[v20[7]]);
    *v23 = 1;
    *&v23[v20[8]] = v18;
    v23[v20[9]] = 5;

    sub_21BC51500(v19);
    goto LABEL_14;
  }

  v14 = v0[4];
  v13 = v0[5];
  v15 = v0[3];

  (*(v14 + 104))(v13, *MEMORY[0x277D07F80], v15);
  MEMORY[0x21CF01220](0xD00000000000003DLL, 0x800000021BE62B80, v13, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000030, 0x800000021BE62BC0);
  (*(v14 + 8))(v13, v15);
  swift_willThrow();
  sub_21BC852D8();

  v16 = v0[1];

  return v16();
}

uint64_t sub_21BE19140()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCC7EC();
}

uint64_t sub_21BE19224()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAA898;

  return sub_21BBCC7EC();
}

void sub_21BE19308(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_21BE28DAC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21BE28D7C();
  v10 = a1;
  v11 = sub_21BE28D6C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  sub_21BBA932C(0, 0, v8, a4, v12);
}

void sub_21BE19454(uint64_t a1)
{
  sub_21BE194F0(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BE194F0(uint64_t a1)
{
  if (!qword_27CDBE1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBE030, &qword_21BE50740);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBE1D8);
    }
  }
}

uint64_t sub_21BE195A4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

uint64_t sub_21BE19610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 28);
  v4 = *(a2 + v3);
  v5 = sub_21BC5C62C(*(a1 + v3));
  v7 = v6;
  if (v5 == sub_21BC5C62C(v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21BE2995C();
  }

  return v10 & 1;
}

uint64_t sub_21BE1969C(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(*(v1 + *(a1 + 28)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BE19724(uint64_t a1, uint64_t a2)
{
  sub_21BE28ABC();
  sub_21BC5C62C(*(v2 + *(a2 + 28)));
  sub_21BE28ABC();
}

uint64_t sub_21BE197A4(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BE28ABC();
  sub_21BC5C62C(*(v2 + *(a2 + 28)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BE19890(uint64_t a1)
{
  *(a1 + 8) = sub_21BE19914(&qword_27CDBE1F8, type metadata accessor for RecoveryContactDataItem, asc_21BE50C90);
  result = sub_21BE19914(&qword_27CDBE200, type metadata accessor for RecoveryContactDataItem, aQ_17);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BE19914(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

id sub_21BE19978@<X0>(uint64_t a1@<X8>)
{
  sub_21BD6A378(v1, a1);
  type metadata accessor for FamilyChecklistStore();
  sub_21BE19914(&qword_27CDB63D0, type metadata accessor for FamilyChecklistStore, byte_21BE504F8);
  v3 = sub_21BE2727C();
  v5 = v4;
  v6 = type metadata accessor for RecoveryContactView(0);
  v7 = (a1 + *(v6 + 20));
  *v7 = v3;
  v7[1] = v5;
  v8 = *(v6 + 24);
  result = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  *(a1 + v8) = result;
  return result;
}

uint64_t sub_21BE19A34(uint64_t a1)
{
  *(a1 + 8) = sub_21BE19914(&qword_27CDBE208, type metadata accessor for RecoveryContactItemProvider, byte_21BE34830);
  result = sub_21BE19914(&qword_27CDB6010, type metadata accessor for RecoveryContactItemProvider, byte_21BE34878);
  *(a1 + 16) = result;
  return result;
}

void sub_21BE19AB8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BE19B38(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BE19BB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBB7EB8;

  return sub_21BE19224();
}

uint64_t sub_21BE19C64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BE19140();
}

uint64_t sub_21BE19D18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21BE260AC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_21BE28D7C();
  v2[7] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](sub_21BE19E0C, v5, v4);
}

uint64_t sub_21BE19E0C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v6 = (*(v3 + 72) + **(v3 + 72));
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_21BE19F30;

  return v6(v2, v3);
}

uint64_t sub_21BE19F30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_21BE1DA80;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_21BE1DA7C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BE1A058(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_21BE260AC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_21BE28D7C();
  v2[7] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x2822009F8](sub_21BE1A14C, v5, v4);
}

uint64_t sub_21BE1A14C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  v6 = (*(v3 + 72) + **(v3 + 72));
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_21BE1A270;

  return v6(v2, v3);
}

uint64_t sub_21BE1A270(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_21BE1A408;
  }

  else
  {
    v4[12] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_21BE1A398;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BE1A398()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_21BE1A408()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  sub_21BE295EC();

  v8 = *(v5 + qword_27CDB63F0);
  v9 = *(v5 + qword_27CDB63F0 + 8);

  MEMORY[0x21CF03CA0](0xD000000000000011, 0x800000021BE62CF0);
  (*(v4 + 104))(v2, *MEMORY[0x277D07F48], v3);
  MEMORY[0x21CF01220](v8, v9, v2, 0xD000000000000010, 0x800000021BE573A0, 0xD000000000000020, 0x800000021BE57400);

  (*(v4 + 8))(v2, v3);
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_21BE1A58C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BE1A600(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BE1AA40();
}

uint64_t sub_21BE1A6B0(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BE1A748, v4, v3);
}

uint64_t sub_21BE1A748()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_21BBCDD2C;

    return sub_21BBCCA94();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21BE1A84C()
{
  v0[2] = sub_21BE28D7C();
  v0[3] = sub_21BE28D6C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_21BBAFDA8;

  return sub_21BBCCA94();
}

void sub_21BE1A910(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21BE28DAC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21BE28D7C();
  v6 = a1;
  v7 = sub_21BE28D6C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_21BBA932C(0, 0, v4, &unk_21BE50FD0, v8);
}

uint64_t sub_21BE1AA40()
{
  v1[21] = v0;
  v2 = type metadata accessor for CommLimitsItem(0);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v3 = sub_21BE26A4C();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  sub_21BE28D7C();
  v1[35] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v1[36] = v5;
  v1[37] = v4;

  return MEMORY[0x2822009F8](sub_21BE1AC10, v5, v4);
}

uint64_t sub_21BE1AC10()
{
  v1 = v0[21];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  type metadata accessor for FamilySignpost(0);
  swift_allocObject();

  v0[38] = sub_21BC84D18(v3, v2, "computeItems", 12, 2u);
  sub_21BB3A35C(v1 + qword_27CDD4410, (v0 + 2));
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_21BE1AD38;

  return sub_21BE1A058((v0 + 2));
}

uint64_t sub_21BE1AD38(uint64_t a1)
{
  v3 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  __swift_destroy_boxed_opaque_existential_0Tm(v3 + 2);
  v4 = v3[36];
  v5 = v3[37];
  if (v1)
  {
    v6 = sub_21BE1CA14;
  }

  else
  {
    v6 = sub_21BE1AE54;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_21BE1AE54(uint64_t a1)
{
  v2 = sub_21BE290DC();
  v1[42] = v2;
  if (v2 >> 62)
  {
    result = sub_21BE2951C();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = qword_27CDD4418;
  v1[43] = result;
  v1[44] = v4;
  if (result)
  {
    v1[45] = MEMORY[0x277D84F90];
    v1[46] = 0;
    v5 = v1[42];
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CF047C0](0);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v6 = *(v5 + 32);
    }

    v7 = v6;
    v1[47] = v6;
    v1[48] = 1;
    v8 = v1[34];
    v9 = sub_21BE25D1C();
    v1[49] = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    v1[50] = v11;
    v1[51] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v8, 1, 1, v9);
    v12 = swift_task_alloc();
    v1[52] = v12;
    *v12 = v1;
    v12[1] = sub_21BE1B0CC;

    return sub_21BCCC428(v7);
  }

  else
  {
    v13 = v1[40];

    sub_21BC852D8();

    v14 = v1[1];
    v15 = MEMORY[0x277D84F90];

    return v14(v15);
  }
}

uint64_t sub_21BE1B0CC(char a1)
{
  *(*v1 + 137) = a1;

  return MEMORY[0x2822009F8](sub_21BE1B1CC, 0, 0);
}

uint64_t sub_21BE1B1CC()
{
  v1 = v0[47];
  v2 = sub_21BE261EC();
  v4 = v3;
  v5 = swift_allocObject();
  v0[53] = v5;
  *(v5 + 16) = v1;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[54] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE270, &qword_21BE50FB0);
  *v7 = v0;
  v7[1] = sub_21BE1B2E4;

  return MEMORY[0x2821372C0](v0 + 16, v2, v4, &unk_21BE50FA8, v5, v8);
}

uint64_t sub_21BE1B2E4()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_21BE1B428;
  }

  else
  {

    v2 = sub_21BE1B400;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BE1B400()
{
  v1 = *(v0 + 128);
  *(v0 + 138) = *(v0 + 136);
  *(v0 + 448) = v1;
  return MEMORY[0x2822009F8](sub_21BE1B67C, *(v0 + 288), *(v0 + 296));
}

uint64_t sub_21BE1B428()
{
  v22 = v0;
  v1 = *(v0 + 440);

  sub_21BE261AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21BE32770;
  swift_getErrorValue();
  v3 = v1;
  v4 = v1;
  v5 = sub_21BE29A5C();
  v7 = v6;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_21BBBEFE8();
  *(v2 + 32) = v5;
  *(v2 + 40) = v7;
  v8 = sub_21BE28A2C();
  v10 = v9;
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FDC();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 440);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    v17 = sub_21BB3D81C(v8, v10, &v21);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_21BB35000, v11, v12, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x21CF05C50](v16, -1, -1);
    MEMORY[0x21CF05C50](v15, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 216) + 8))(*(v0 + 256), *(v0 + 208));
  *(v0 + 138) = 1;
  *(v0 + 448) = 0;
  v18 = *(v0 + 288);
  v19 = *(v0 + 296);

  return MEMORY[0x2822009F8](sub_21BE1B67C, v18, v19);
}

uint64_t sub_21BE1B67C(uint64_t a1)
{
  v2 = *(v1 + 376);
  sub_21BE261BC();
  v3 = v2;
  v4 = sub_21BE26A2C();
  v5 = sub_21BE28FCC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 137);
    v7 = *(v1 + 376);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 67109378;
    *(v8 + 4) = v6;
    *(v8 + 8) = 2112;
    *(v8 + 10) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_21BB35000, v4, v5, "ScreenTimeEnabled %{BOOL}d for %@", v8, 0x12u);
    sub_21BB3A4CC(v9, &qword_27CDB7AF0, &qword_21BE37410);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  v11 = *(v1 + 248);
  v12 = *(v1 + 208);
  v13 = *(v1 + 216);

  v14 = *(v13 + 8);
  *(v1 + 456) = v14;
  *(v1 + 464) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);

  return MEMORY[0x2822009F8](sub_21BE1B800, 0, 0);
}

uint64_t sub_21BE1B800()
{
  v1 = [*(v0 + 376) dsid];
  *(v0 + 472) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_21BE261EC();
    v5 = v4;
    v6 = swift_allocObject();
    *(v0 + 480) = v6;
    *(v6 + 16) = v2;
    v7 = v2;
    v8 = swift_task_alloc();
    *(v0 + 488) = v8;
    *v8 = v0;
    v8[1] = sub_21BE1B994;
    v9 = *(v0 + 392);
    v10 = *(v0 + 264);

    return MEMORY[0x2821372C0](v10, v3, v5, &unk_21BE50FB8, v6, v9);
  }

  else
  {
    sub_21BCCC3D4();
    v11 = swift_allocError();
    *v12 = 1;
    swift_willThrow();
    *(v0 + 504) = v11;
    v13 = *(v0 + 288);
    v14 = *(v0 + 296);

    return MEMORY[0x2822009F8](sub_21BE1C2FC, v13, v14);
  }
}

uint64_t sub_21BE1B994()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_21BE1C0AC;
  }

  else
  {

    v2 = sub_21BE1BAB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21BE1BAB0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return MEMORY[0x2822009F8](sub_21BE1BB14, v1, v2);
}

uint64_t sub_21BE1BB14()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 392);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  sub_21BB3A4CC(v3, &qword_27CDB9720, &unk_21BE39F00);
  v1(v4, 0, 1, v2);
  sub_21BC1E320(v4, v3);
  if (*(v0 + 138) & 1) != 0 || (v20 = *(v0 + 137), v21 = (*(v0 + 168) + *(v0 + 352)), v22 = __swift_project_boxed_opaque_existential_1Tm(v21, v21[3]), (*(*v22 + 24)) || !v20)
  {
    v5 = *(v0 + 376);
    sub_21BE261BC();
    v6 = v5;
    v7 = sub_21BE26A2C();
    v8 = sub_21BE28FCC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 137);
      v10 = *(v0 + 376);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 67109378;
      *(v11 + 4) = v9;
      *(v11 + 8) = 2112;
      *(v11 + 10) = v10;
      *v12 = v10;
      v13 = v10;
      _os_log_impl(&dword_21BB35000, v7, v8, "CommLimits stEnabled %{BOOL}d; no row for %@", v11, 0x12u);
      sub_21BB3A4CC(v12, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v12, -1, -1);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    v14 = *(v0 + 456);
    v15 = *(v0 + 376);
    v16 = *(v0 + 272);
    v17 = *(v0 + 224);
    v18 = *(v0 + 208);

    v14(v17, v18);
    sub_21BB3A4CC(v16, &qword_27CDB9720, &unk_21BE39F00);
    v19 = *(v0 + 360);
    goto LABEL_18;
  }

  v23 = *(*v22 + 16);
  v24 = *(v0 + 448);
  v25 = *(v0 + 176);
  v26 = v25[5];
  v27 = *(v0 + 368);
  v28 = *(v0 + 376);
  v29 = *(v0 + 272);
  if (!v24)
  {
    v37 = *(v0 + 200);
    sub_21BC1E1AC(v29, &v37[v26]);
    *v37 = 0;
    *&v37[v25[6]] = v28;
    *&v37[v25[7]] = 0;
    *&v37[v25[8]] = v23;
    *&v37[v25[9]] = v27;
    v37[v25[10]] = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v0 + 360);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_21BBBDD94(0, v19[2] + 1, 1, *(v0 + 360));
    }

    v33 = v19[2];
    v39 = v19[3];
    v34 = v33 + 1;
    if (v33 >= v39 >> 1)
    {
      v19 = sub_21BBBDD94((v39 > 1), v33 + 1, 1, v19);
    }

    v35 = *(v0 + 272);
    v36 = *(v0 + 200);
    goto LABEL_17;
  }

  v30 = *(v0 + 192);
  sub_21BC1E1AC(v29, &v30[v26]);
  *v30 = 1;
  *&v30[v25[6]] = v28;
  *&v30[v25[7]] = v24;
  *&v30[v25[8]] = v23;
  *&v30[v25[9]] = v27;
  v30[v25[10]] = 1;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v0 + 360);
  if ((v31 & 1) == 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v33 = v19[2];
    v32 = v19[3];
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v19 = sub_21BBBDD94((v32 > 1), v33 + 1, 1, v19);
    }

    v35 = *(v0 + 272);
    v36 = *(v0 + 192);
LABEL_17:
    v40 = *(v0 + 184);
    sub_21BB3A4CC(v35, &qword_27CDB9720, &unk_21BE39F00);
    v19[2] = v34;
    sub_21BE1D8C4(v36, v19 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v33);
LABEL_18:
    v41 = *(v0 + 384);
    if (v41 == *(v0 + 344))
    {
      v42 = *(v0 + 320);

      sub_21BC852D8();

      v43 = *(v0 + 8);

      return v43(v19);
    }

    *(v0 + 360) = v19;
    *(v0 + 368) = v41;
    v45 = *(v0 + 336);
    if ((v45 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v41 < *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v46 = *(v45 + 8 * v41 + 32);
      goto LABEL_25;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    v19 = sub_21BBBDD94(0, v19[2] + 1, 1, v19);
  }

  v46 = MEMORY[0x21CF047C0](v41);
LABEL_25:
  v47 = v46;
  *(v0 + 376) = v46;
  *(v0 + 384) = v41 + 1;
  if (__OFADD__(v41, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v48 = *(v0 + 272);
  v49 = sub_21BE25D1C();
  *(v0 + 392) = v49;
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  *(v0 + 400) = v51;
  *(v0 + 408) = (v50 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v51(v48, 1, 1, v49);
  v52 = swift_task_alloc();
  *(v0 + 416) = v52;
  *v52 = v0;
  v52[1] = sub_21BE1B0CC;

  return sub_21BCCC428(v47);
}

uint64_t sub_21BE1C0AC()
{
  v23 = v0;
  v1 = *(v0 + 496);

  sub_21BE261AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21BE32770;
  swift_getErrorValue();
  v3 = v1;
  v4 = v1;
  v5 = sub_21BE29A5C();
  v7 = v6;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_21BBBEFE8();
  *(v2 + 32) = v5;
  *(v2 + 40) = v7;
  v8 = sub_21BE28A2C();
  v10 = v9;
  v11 = sub_21BE26A2C();
  v12 = sub_21BE28FDC();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 496);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    v17 = sub_21BB3D81C(v8, v10, &v22);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_21BB35000, v11, v12, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x21CF05C50](v16, -1, -1);
    MEMORY[0x21CF05C50](v15, -1, -1);
  }

  else
  {
  }

  v18 = *(v0 + 472);
  (*(v0 + 456))(*(v0 + 240), *(v0 + 208));
  swift_willThrow();

  *(v0 + 504) = *(v0 + 496);
  v19 = *(v0 + 288);
  v20 = *(v0 + 296);

  return MEMORY[0x2822009F8](sub_21BE1C2FC, v19, v20);
}

uint64_t sub_21BE1C2FC(uint64_t a1)
{
  v68 = v1;
  v2 = *(v1 + 504);
  sub_21BE261BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5AD8, &unk_21BE33030);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21BE32770;
  swift_getErrorValue();
  v4 = v2;
  v5 = v2;
  v6 = sub_21BE29A5C();
  v8 = v7;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_21BBBEFE8();
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  v9 = sub_21BE28A2C();
  v11 = v10;
  v12 = sub_21BE26A2C();
  v13 = sub_21BE28FDC();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v1 + 504);
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v67 = v17;
    *v16 = 136315138;
    v18 = sub_21BB3D81C(v9, v11, &v67);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_21BB35000, v12, v13, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x21CF05C50](v17, -1, -1);
    MEMORY[0x21CF05C50](v16, -1, -1);
  }

  else
  {
  }

  (*(v1 + 456))(*(v1 + 232), *(v1 + 208));
  if (*(v1 + 138) & 1) != 0 || (v34 = *(v1 + 137), v35 = (*(v1 + 168) + *(v1 + 352)), v36 = __swift_project_boxed_opaque_existential_1Tm(v35, v35[3]), (*(*v36 + 24)) || !v34)
  {
    v19 = *(v1 + 376);
    sub_21BE261BC();
    v20 = v19;
    v21 = sub_21BE26A2C();
    v22 = sub_21BE28FCC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v1 + 137);
      v24 = *(v1 + 376);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 67109378;
      *(v25 + 4) = v23;
      *(v25 + 8) = 2112;
      *(v25 + 10) = v24;
      *v26 = v24;
      v27 = v24;
      _os_log_impl(&dword_21BB35000, v21, v22, "CommLimits stEnabled %{BOOL}d; no row for %@", v25, 0x12u);
      sub_21BB3A4CC(v26, &qword_27CDB7AF0, &qword_21BE37410);
      MEMORY[0x21CF05C50](v26, -1, -1);
      MEMORY[0x21CF05C50](v25, -1, -1);
    }

    v28 = *(v1 + 456);
    v29 = *(v1 + 376);
    v30 = *(v1 + 272);
    v31 = *(v1 + 224);
    v32 = *(v1 + 208);

    v28(v31, v32);
    sub_21BB3A4CC(v30, &qword_27CDB9720, &unk_21BE39F00);
    v33 = *(v1 + 360);
    goto LABEL_21;
  }

  v37 = *(*v36 + 16);
  v38 = *(v1 + 448);
  v39 = *(v1 + 176);
  v40 = v39[5];
  v41 = *(v1 + 368);
  v42 = *(v1 + 376);
  v43 = *(v1 + 272);
  if (!v38)
  {
    v51 = *(v1 + 200);
    sub_21BC1E1AC(v43, &v51[v40]);
    *v51 = 0;
    *&v51[v39[6]] = v42;
    *&v51[v39[7]] = 0;
    *&v51[v39[8]] = v37;
    *&v51[v39[9]] = v41;
    v51[v39[10]] = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v1 + 360);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_21BBBDD94(0, v33[2] + 1, 1, *(v1 + 360));
    }

    v47 = v33[2];
    v53 = v33[3];
    v48 = v47 + 1;
    if (v47 >= v53 >> 1)
    {
      v33 = sub_21BBBDD94((v53 > 1), v47 + 1, 1, v33);
    }

    v49 = *(v1 + 272);
    v50 = *(v1 + 200);
    goto LABEL_20;
  }

  v44 = *(v1 + 192);
  sub_21BC1E1AC(v43, &v44[v40]);
  *v44 = 1;
  *&v44[v39[6]] = v42;
  *&v44[v39[7]] = v38;
  *&v44[v39[8]] = v37;
  *&v44[v39[9]] = v41;
  v44[v39[10]] = 1;
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v1 + 360);
  if ((v45 & 1) == 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v47 = v33[2];
    v46 = v33[3];
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v33 = sub_21BBBDD94((v46 > 1), v47 + 1, 1, v33);
    }

    v49 = *(v1 + 272);
    v50 = *(v1 + 192);
LABEL_20:
    v54 = *(v1 + 184);
    sub_21BB3A4CC(v49, &qword_27CDB9720, &unk_21BE39F00);
    v33[2] = v48;
    sub_21BE1D8C4(v50, v33 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v47);
LABEL_21:
    v55 = *(v1 + 384);
    if (v55 == *(v1 + 344))
    {
      v56 = *(v1 + 320);

      sub_21BC852D8();

      v57 = *(v1 + 8);

      return v57(v33);
    }

    *(v1 + 360) = v33;
    *(v1 + 368) = v55;
    v59 = *(v1 + 336);
    if ((v59 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v55 < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v60 = *(v59 + 8 * v55 + 32);
      goto LABEL_28;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    v33 = sub_21BBBDD94(0, v33[2] + 1, 1, v33);
  }

  v60 = MEMORY[0x21CF047C0](v55);
LABEL_28:
  v61 = v60;
  *(v1 + 376) = v60;
  *(v1 + 384) = v55 + 1;
  if (__OFADD__(v55, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  v62 = *(v1 + 272);
  v63 = sub_21BE25D1C();
  *(v1 + 392) = v63;
  v64 = *(v63 - 8);
  v65 = *(v64 + 56);
  *(v1 + 400) = v65;
  *(v1 + 408) = (v64 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v65(v62, 1, 1, v63);
  v66 = swift_task_alloc();
  *(v1 + 416) = v66;
  *v66 = v1;
  v66[1] = sub_21BE1B0CC;

  return sub_21BCCC428(v61);
}

uint64_t sub_21BE1CA14()
{

  sub_21BC852D8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21BE1CB04()
{
  v1 = qword_27CDBE220;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE140, &unk_21BE508F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4410));
  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + qword_27CDD4418));
}

id sub_21BE1CB8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommLimitsItemProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BE1CBC4(uint64_t a1)
{
  v2 = qword_27CDBE220;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE140, &unk_21BE508F0);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4410));
  return __swift_destroy_boxed_opaque_existential_0Tm((a1 + qword_27CDD4418));
}

void sub_21BE1CC70(uint64_t a1)
{
  sub_21BE1CD0C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_21BE1CD0C(uint64_t a1)
{
  if (!qword_27CDBE238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBE148, &qword_21BE50E10);
    v1 = sub_21BE26CCC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBE238);
    }
  }
}

void sub_21BE1CDC0(uint64_t a1)
{
  sub_21BC1D2A0(319);
  if (v1 <= 0x3F)
  {
    sub_21BBE66D8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ContactManagementState(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21BE1CE80(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21BE26CBC();
}

uint64_t sub_21BE1CEF8(uint64_t a1)
{
  sub_21BE29ACC();
  sub_21BE2992C();
  v3 = sub_21BE291AC();
  v5 = v4;

  MEMORY[0x21CF03CA0](v3, v5);

  sub_21BE28ABC();

  sub_21BC5C62C(*(v1 + *(a1 + 40)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BE1D010(uint64_t a1, uint64_t a2)
{
  sub_21BE2992C();
  v4 = sub_21BE291AC();
  v6 = v5;

  MEMORY[0x21CF03CA0](v4, v6);

  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 40)));
  sub_21BE28ABC();
}

uint64_t sub_21BE1D120(uint64_t a1, uint64_t a2)
{
  sub_21BE29ACC();
  sub_21BE2992C();
  v4 = sub_21BE291AC();
  v6 = v5;

  MEMORY[0x21CF03CA0](v4, v6);

  sub_21BE28ABC();

  sub_21BC5C62C(*(v2 + *(a2 + 40)));
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BE1D234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21BE2992C();
  v6 = sub_21BE291AC();
  v8 = v7;

  strcpy(v23, "commLimitsItem");
  HIBYTE(v23[1]) = -18;
  MEMORY[0x21CF03CA0](v6, v8);

  v10 = v23[0];
  v9 = v23[1];
  sub_21BE2992C();
  v11 = sub_21BE291AC();
  v13 = v12;

  strcpy(v23, "commLimitsItem");
  HIBYTE(v23[1]) = -18;
  MEMORY[0x21CF03CA0](v11, v13);

  if (__PAIR128__(v9, v23[0]) == __PAIR128__(v23[1], v10))
  {
  }

  else
  {
    v14 = sub_21BE2995C();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      return v15 & 1;
    }
  }

  v16 = *(a3 + 40);
  v17 = *(a2 + v16);
  v18 = sub_21BC5C62C(*(a1 + v16));
  v20 = v19;
  if (v18 == sub_21BC5C62C(v17) && v20 == v21)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_21BE2995C();
  }

  return v15 & 1;
}

uint64_t sub_21BE1D444@<X0>(void *a1@<X8>)
{
  sub_21BE2992C();
  v2 = sub_21BE291AC();
  v4 = v3;

  strcpy(v7, "commLimitsItem");
  HIBYTE(v7[1]) = -18;
  MEMORY[0x21CF03CA0](v2, v4);

  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

uint64_t sub_21BE1D550(uint64_t a1)
{
  *(a1 + 8) = sub_21BE1D5D4(&qword_27CDBE258, type metadata accessor for CommLimitsItem, byte_21BE50EA8);
  result = sub_21BE1D5D4(&qword_27CDBE260, type metadata accessor for CommLimitsItem, aA_7);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21BE1D5D4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21BE1D644(uint64_t a1)
{
  *(a1 + 8) = sub_21BE1D5D4(&qword_27CDBE268, type metadata accessor for CommLimitsItemProvider, byte_21BE34830);
  result = sub_21BE1D5D4(&qword_27CDB60B0, type metadata accessor for CommLimitsItemProvider, byte_21BE34878);
  *(a1 + 16) = result;
  return result;
}

void sub_21BE1D6C8(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v3;
}

uint64_t sub_21BE1D748(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21BE26CBC();
}

uint64_t sub_21BE1D7C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommLimitsItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BE1D824(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BCCB970(a1, v4);
}

uint64_t sub_21BE1D8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommLimitsItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BE1D928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBB7EB8;

  return sub_21BCCBDD0(a1, v4);
}

uint64_t sub_21BE1D9C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21BBA6A64;

  return sub_21BE1A84C();
}

id static NSBundle.familyCircleUI.getter()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t static LocalizedStringResource.BundleDescription.familyCircleUI.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = [v3 bundleURL];

  sub_21BE25B5C();
  v5 = *MEMORY[0x277CC9118];
  v6 = sub_21BE25A9C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

void *sub_21BE1DBC0()
{
  type metadata accessor for MemberDetailsPurchaseSharingCache();
  v0 = swift_allocObject();
  return sub_21BE20478(v0);
}

uint64_t sub_21BE1DBF8(void *a1)
{
  v50 = sub_21BE26A4C();
  v3 = *(v50 - 1);
  MEMORY[0x28223BE20](v50);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = [a1 subscriberDSIDs];
    if (v6)
    {
      v7 = v6;
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      v51 = sub_21BE28C3C();

      goto LABEL_10;
    }
  }

  type metadata accessor for MemberDetailsPurchaseSharingWrapper(0);
  type metadata accessor for MemberDetailsPurchaseSharingCache();
  sub_21BE1EDD8(&qword_27CDBE298, type metadata accessor for MemberDetailsPurchaseSharingCache, protocol conformance descriptor for SimpleFamilyServerCache);
  sub_21BE26EAC();
  v54 = 0x6269726373627573;
  v55 = 0xEF73444953447265;
  v8 = sub_21BE20000(&v54);

  if (v8)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v54 = 0;
      sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
      sub_21BE28C2C();

      v51 = v54;
      if (v54)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v51 = 0;
LABEL_10:
  v9 = type metadata accessor for MemberDetailsPurchaseSharingWrapper(0);
  v10 = *(v1 + *(v9 + 24));
  v11 = v10;
  if (!v10)
  {
    type metadata accessor for MemberDetailsPurchaseSharingCache();
    sub_21BE1EDD8(&qword_27CDBE298, type metadata accessor for MemberDetailsPurchaseSharingCache, protocol conformance descriptor for SimpleFamilyServerCache);
    sub_21BE26EAC();
    v54 = 0x53447265626D656DLL;
    v55 = 0xEA00000000004449;
    v31 = sub_21BE20000(&v54);

    if (v31)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
      }
    }

    else
    {
      v11 = 0;
    }
  }

  v52 = v1;
  v12 = v10;
  sub_21BE2614C();
  v13 = a1;
  v14 = sub_21BE26A2C();
  v15 = sub_21BE28FFC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v54 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_21BB3D81C(0xD000000000000015, 0x800000021BE5FFE0, &v54);
    *(v16 + 12) = 2080;
    v53 = a1;
    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDBB568, qword_21BE47588);
    v19 = sub_21BE28A5C();
    v21 = sub_21BB3D81C(v19, v20, &v54);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_21BB35000, v14, v15, "%s subscription: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CF05C50](v17, -1, -1);
    MEMORY[0x21CF05C50](v16, -1, -1);
  }

  (*(v3 + 8))(v5, v50);
  v22 = v51;
  if (!v51)
  {
    goto LABEL_21;
  }

  if (!v11)
  {

LABEL_21:
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];
    v48 = 0xE700000000000000;
    v34 = sub_21BE2599C();
LABEL_31:

    goto LABEL_32;
  }

  v23 = *(v52 + *(v9 + 40));
  v24 = type metadata accessor for MemberDetailsPurchaseSharingCache();
  sub_21BE1EDD8(&qword_27CDBE298, type metadata accessor for MemberDetailsPurchaseSharingCache, protocol conformance descriptor for SimpleFamilyServerCache);
  v25 = v11;
  v49[1] = v23;
  v49[2] = v24;
  v26 = sub_21BE26EAC();
  v27 = sub_21BE1F55C();
  v50 = v25;
  if (v27)
  {
    v28 = v27;
    v29 = *(v26 + 24);
    v54 = *(v26 + 16);
    v55 = v29;

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](0x53447265626D656DLL, 0xEA00000000004449);
    v30 = sub_21BE289CC();

    [v28 setValue:v25 forKey:v30];
  }

  else
  {
  }

  v35 = sub_21BE26EAC();
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  v36 = sub_21BE28C1C();
  v37 = sub_21BE1F55C();
  if (v37)
  {
    v38 = v37;
    v39 = *(v35 + 24);
    v54 = *(v35 + 16);
    v55 = v39;

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](0x6269726373627573, 0xEF73444953447265);
    v40 = sub_21BE289CC();

    [v38 setValue:v36 forKey:v40];

    v36 = v40;
    v22 = v51;
  }

  else
  {
  }

  sub_21BE26EAC();
  v41 = sub_21BE1F55C();
  [v41 synchronize];

  if (!*v52 || ![*v52 isEnabled])
  {

    type metadata accessor for ConfirmChildAgeViewModel();
    v46 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v48 = 0x800000021BE62D10;
    v34 = sub_21BE2599C();
    v33 = v50;

    goto LABEL_31;
  }

  v42 = v50;

  v54 = v42;
  MEMORY[0x28223BE20](v43);
  v48 = &v54;
  v44 = sub_21BC9DAC4(sub_21BBF0CE4, &v49[-4], v22);

  type metadata accessor for ConfirmChildAgeViewModel();
  v45 = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  if (v44)
  {
    v48 = 0x800000021BE62D50;
  }

  else
  {
    v48 = 0x800000021BE62D30;
  }

  v34 = sub_21BE2599C();

LABEL_32:
  return v34;
}

uint64_t sub_21BE1E554@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21BE27A2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v51[-v9];
  v11 = type metadata accessor for StaticSelectableCellTemplate(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBA80, &qword_21BE48300);
  MEMORY[0x28223BE20](v14);
  v18 = &v51[-v17];
  v19 = *v1;
  if (v19)
  {
    v57 = v18;
    v58 = v15;
    v63 = v16;
    v20 = [v19 isEnabled];
    v61 = v4;
    v62 = a1;
    if (v20)
    {
      v21 = type metadata accessor for MemberDetailsPurchaseSharingWrapper(0);
      sub_21BBF0D04(v2 + *(v21 + 20), v10);
    }

    else
    {
      v24 = sub_21BE25B9C();
      (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    }

    v25 = type metadata accessor for MemberDetailsPurchaseSharingWrapper(0);
    swift_unknownObjectWeakLoadStrong();
    v26 = sub_21BE1DBF8(v19);
    v55 = v27;
    v56 = v26;
    v28 = *(v2 + v25[6]);
    v59 = v7;
    v60 = v5;
    if (v28)
    {
      v54 = [v28 integerValue];
    }

    else
    {
      v54 = 0;
    }

    v29 = v2 + v25[8];
    v30 = *v29;
    v31 = *(v29 + 1);
    LOBYTE(v29) = v29[16];
    v67 = v30;
    v68 = v31;
    v69 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    sub_21BE2856C();
    v32 = v65;
    v53 = v64;
    v52 = v66;
    v33 = *(v2 + v25[9]);
    v34 = qword_280BD76F0;
    v35 = v33;
    if (v34 != -1)
    {
      swift_once();
    }

    *v13 = 0xD000000000000010;
    v13[1] = 0x800000021BE55930;
    sub_21BC438F8(v10, v13 + v11[5]);
    *(v13 + v11[6]) = 1;
    swift_unknownObjectWeakInit();

    swift_unknownObjectRelease();
    v36 = (v13 + v11[8]);
    v37 = v55;
    *v36 = v56;
    v36[1] = v37;
    v38 = v13 + v11[9];
    v39 = v53;
    *v38 = v54;
    v38[8] = v28 == 0;
    v40 = (v13 + v11[10]);
    *v40 = 0;
    v40[1] = 0;
    v41 = v13 + v11[11];
    *v41 = v39;
    *(v41 + 1) = v32;
    v41[16] = v52;
    *(v13 + v11[12]) = xmmword_21BE51020;
    *(v13 + v11[13]) = v33;
    *(v13 + v11[14]) = 7;
    v42 = (v13 + v11[15]);
    type metadata accessor for ServicesStore(0);
    sub_21BE1EDD8(&qword_27CDB5750, type metadata accessor for ServicesStore, protocol conformance descriptor for AsyncStore<A>);
    *v42 = sub_21BE270CC();
    v42[1] = v43;
    *(v13 + v11[16]) = 0;
    v44 = v13 + v11[17];
    LOBYTE(v64) = 0;
    sub_21BE283EC();
    v45 = v68;
    *v44 = v67;
    *(v44 + 1) = v45;
    sub_21BB3A2A4(0, &qword_280BD6908, 0x277CCA9A0);
    v46 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_27CDB4EE0 != -1)
    {
      swift_once();
    }

    sub_21BE2935C();

    v47 = v59;
    sub_21BE27A0C();
    sub_21BE1EDD8(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate, aA7F);
    v48 = v57;
    sub_21BE2805C();
    (*(v60 + 8))(v47, v61);
    sub_21BC5E088(v13);
    v49 = v62;
    v50 = v58;
    (*(v63 + 32))(v62, v48, v58);
    return (*(v63 + 56))(v49, 0, 1, v50);
  }

  else
  {
    v22 = *(v16 + 56);

    return v22(a1, 1, 1);
  }
}

uint64_t type metadata accessor for MemberDetailsPurchaseSharingWrapper(uint64_t a1)
{
  result = qword_27CDBE280;
  if (!qword_27CDBE280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BE1EBF8(uint64_t a1)
{
  sub_21BC97780(319, &qword_27CDB8B60, &unk_27CDB6550, 0x277D08338);
  if (v1 <= 0x3F)
  {
    sub_21BBF088C(319);
    if (v2 <= 0x3F)
    {
      sub_21BC97780(319, &qword_27CDB8B68, &qword_280BD68F8, 0x277CCABB0);
      if (v3 <= 0x3F)
      {
        sub_21BD39D4C();
        if (v4 <= 0x3F)
        {
          sub_21BB3A2A4(319, &qword_280BD6980, 0x277D08248);
          if (v5 <= 0x3F)
          {
            sub_21BE1ED28(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21BE1ED28(uint64_t a1)
{
  if (!qword_27CDBE290)
  {
    type metadata accessor for MemberDetailsPurchaseSharingCache();
    sub_21BE1EDD8(&qword_27CDBE298, type metadata accessor for MemberDetailsPurchaseSharingCache, protocol conformance descriptor for SimpleFamilyServerCache);
    v1 = sub_21BE26EBC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDBE290);
    }
  }
}

uint64_t sub_21BE1EDD8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_21BE1EE20()
{
  result = qword_27CDBE2A0;
  if (!qword_27CDBE2A0)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDBE2A8, &qword_21BE510F0);
    v4[1] = type metadata accessor for StaticSelectableCellTemplate(255);
    v4[2] = sub_21BE1EDD8(&qword_27CDB7F90, type metadata accessor for StaticSelectableCellTemplate, aA7F);
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27CDBE2A0);
  }

  return result;
}

uint64_t sub_21BE1EF28@<X0>(unint64_t *a1@<X8>)
{
  v2 = sub_21BE25DDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE25DFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE2B0, qword_21BE512E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  sub_21BE25DBC();
  sub_21BE25DEC();
  (*(v7 + 8))(v9, v6);
  sub_21BE25DCC();
  (*(v3 + 8))(v5, v2);
  v13 = sub_21BE25D9C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21BB3A4CC(v12, &qword_27CDBE2B0, qword_21BE512E0);
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v15 = sub_21BE25D8C();
    v16 = v17;
    (*(v14 + 8))(v12, v13);
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_21BE295EC();

  v20 = 0xD000000000000012;
  v21 = 0x800000021BE62F20;
  MEMORY[0x21CF03CA0](v15, v16);

  v19 = v21;
  *a1 = v20;
  a1[1] = v19;
  return result;
}

uint64_t sub_21BE1F210@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_21BE25DDC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21BE25DFC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBE2B0, qword_21BE512E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  sub_21BE25DBC();
  sub_21BE25DEC();
  (*(v11 + 8))(v13, v10);
  sub_21BE25DCC();
  (*(v7 + 8))(v9, v6);
  v17 = sub_21BE25D9C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_21BB3A4CC(v16, &qword_27CDBE2B0, qword_21BE512E0);
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  else
  {
    v19 = sub_21BE25D8C();
    v20 = v21;
    (*(v18 + 8))(v16, v17);
  }

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_21BE295EC();

  v24 = a1;
  v25 = a2;
  MEMORY[0x21CF03CA0](v19, v20);

  v23 = v25;
  *a3 = v24;
  a3[1] = v23;
  return result;
}

uint64_t FamilyCacheKey.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FamilyCacheKey.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id sub_21BE1F55C()
{
  v1 = sub_21BE26A4C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v7 = v6;
  if (!v6)
  {
    v8 = v3;
    if (qword_280BD8A50 != -1)
    {
      swift_once();
    }

    v9 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v10 = sub_21BE289CC();
    v7 = [v9 initWithSuiteName_];

    if (v7)
    {
      v11 = *(v0 + 48);
      *(v0 + 48) = v7;
      v12 = v7;
    }

    else
    {
      sub_21BE2614C();
      v13 = sub_21BE26A2C();
      v14 = sub_21BE28FDC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_21BB3D81C(0x6166654472657375, 0xEC00000073746C75, &v20);
        _os_log_impl(&dword_21BB35000, v13, v14, "%s Unable to get user defaults", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x21CF05C50](v16, -1, -1);
        MEMORY[0x21CF05C50](v15, -1, -1);
      }

      (*(v2 + 8))(v5, v8);
      v7 = 0;
    }
  }

  v17 = v6;
  return v7;
}

void sub_21BE1F7A4()
{
  v0 = sub_21BE1F55C();
  if (v0)
  {
    v16 = v0;
    v1 = [v0 dictionaryRepresentation];
    v2 = sub_21BE2890C();

    v3 = 1 << *(v2 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(v2 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      goto LABEL_7;
    }

    while (1)
    {
LABEL_8:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(v2 + 64 + 8 * v8);
      ++v7;
      if (v5)
      {
        while (1)
        {
          v9 = __clz(__rbit64(v5));
          v5 &= v5 - 1;
          v10 = (*(v2 + 48) + ((v8 << 10) | (16 * v9)));
          v12 = *v10;
          v11 = v10[1];

          v13 = sub_21BE2219C();
          v14 = sub_21BD6FF84(v13, v12, v11);

          if (v14)
          {
            v15 = sub_21BE289CC();

            [v16 removeObjectForKey_];

            v7 = v8;
            if (!v5)
            {
              goto LABEL_8;
            }
          }

          else
          {

            v7 = v8;
            if (!v5)
            {
              goto LABEL_8;
            }
          }

LABEL_7:
          v8 = v7;
        }
      }
    }
  }
}

void sub_21BE1F980()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  v11 = v9;
  v12 = v10;
  v13 = sub_21BE2940C();

  if (v13)
  {
    sub_21BE2614C();

    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FCC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21BB3D81C(*(v1 + 16), *(v1 + 24), &v31);
      _os_log_impl(&dword_21BB35000, v14, v15, "%s cache DSID up to date", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x21CF05C50](v17, -1, -1);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_21BE2614C();

    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FCC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_21BB3D81C(*(v1 + 16), *(v1 + 24), &v31);
      _os_log_impl(&dword_21BB35000, v18, v19, "%s updating cache DSID", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x21CF05C50](v21, -1, -1);
      MEMORY[0x21CF05C50](v20, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v22 = *(v1 + 32);
    v23 = *(v1 + 40);
    *(v1 + 40) = v22;
    v24 = v22;

    v25 = sub_21BE1F55C();
    if (v25)
    {
      v26 = v25;
      v27 = *(v1 + 32);
      v28 = sub_21BE289CC();
      [v26 setValue:v27 forKey:v28];
    }

    sub_21BE1F7A4();
    v29 = sub_21BE1F55C();
    [v29 synchronize];
  }
}

void sub_21BE1FCF8()
{
  v1 = v0;
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2614C();
  v6 = sub_21BE26A2C();
  v7 = sub_21BE28FCC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21BB3D81C(0xD000000000000011, 0x800000021BE62F80, &v13);
    _os_log_impl(&dword_21BB35000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x21CF05C50](v9, -1, -1);
    MEMORY[0x21CF05C50](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_21BE21C10();
  v10 = *(v1 + 32);
  *(v1 + 32) = v11;

  sub_21BE1F980();
}

void sub_21BE1FEE8()
{
  v0 = sub_21BE1F55C();
  [v0 synchronize];
}

void sub_21BE1FF2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21BE1F55C();
  if (v5)
  {
    v6 = v5;

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v3, v4);
    v7 = sub_21BE289CC();

    [v6 setValue:a2 forKey:v7];
  }
}

id sub_21BE20000(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_21BE1F55C();
  if (result)
  {
    v5 = result;
    v9 = *(v1 + 16);

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v2, v3);
    v6 = sub_21BE289CC();

    v7 = [v5 valueForKey_];

    if (v7)
    {
      sub_21BE294BC();

      swift_unknownObjectRelease();
    }

    else
    {

      v9 = 0u;
      v10 = 0u;
    }

    v11[0] = v9;
    v11[1] = v10;
    if (*(&v10 + 1))
    {
      sub_21BB3A2A4(0, &qword_27CDB6730, 0x277D82BB8);
      if (swift_dynamicCast())
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_21BB3A4CC(v11, &qword_27CDB5940, &unk_21BE32B10);
      return 0;
    }
  }

  return result;
}

void sub_21BE20144(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = sub_21BE1F55C();
  if (v3)
  {
    v4 = v3;

    MEMORY[0x21CF03CA0](46, 0xE100000000000000);
    MEMORY[0x21CF03CA0](v1, v2);
    v5 = sub_21BE289CC();

    [v4 removeObjectForKey_];
  }
}

uint64_t sub_21BE20204@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SimpleFamilyServerCache();
  result = sub_21BE26C0C();
  *a2 = result;
  return result;
}

void *sub_21BE20240(uint64_t a1)
{
  v1[6] = 0;
  v1[2] = 0xD00000000000001ALL;
  v1[3] = 0x800000021BE511E0;
  sub_21BE21C10();
  v1[4] = v2;
  v1[5] = sub_21BE21FF4();
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  sub_21BE1F980();
  return v1;
}

id *sub_21BE202E8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return v0;
}

void *sub_21BE20478(uint64_t a1)
{
  v1[6] = 0;
  v1[2] = 0xD000000000000021;
  v1[3] = 0x800000021BE51210;
  sub_21BE21C10();
  v1[4] = v2;
  v1[5] = sub_21BE21FF4();
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  sub_21BE1F980();
  return v1;
}

void *sub_21BE20540(uint64_t a1)
{
  v1[6] = 0;
  v1[2] = 0xD000000000000013;
  v1[3] = 0x800000021BE51240;
  sub_21BE21C10();
  v1[4] = v2;
  v1[5] = sub_21BE21FF4();
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  sub_21BE1F980();
  return v1;
}

void *sub_21BE20608(uint64_t a1)
{
  v1[6] = 0;
  v1[2] = 0xD000000000000017;
  v1[3] = 0x800000021BE51260;
  sub_21BE21C10();
  v1[4] = v2;
  v1[5] = sub_21BE21FF4();
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  sub_21BE1F980();
  return v1;
}

void *sub_21BE206D4(uint64_t a1)
{
  v1[6] = 0;
  v1[2] = 0xD000000000000014;
  v1[3] = 0x800000021BE51280;
  sub_21BE21C10();
  v1[4] = v2;
  v1[5] = sub_21BE21FF4();
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  sub_21BE1F980();
  return v1;
}

unint64_t sub_21BE20778()
{
  v0 = sub_21BE26A4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE1F210(0x726143656C707061, 0xEF2E74696D694C64, &v14);
  v13 = v14;
  v4 = sub_21BE20000(&v13);

  if (v4)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v14 = xmmword_21BE358A0;
      sub_21BE25BEC();

      v5 = *(&v14 + 1);
      if (*(&v14 + 1) >> 60 != 15)
      {
        v6 = v14;
        sub_21BE2578C();
        swift_allocObject();
        sub_21BE2577C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F30, &unk_21BE411F0);
        sub_21BE224F0(&qword_27CDBE2C0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
        sub_21BE2576C();
        sub_21BBBF0B4(v6, v5);

        return v14;
      }
    }

    else
    {
    }
  }

  sub_21BE2614C();
  v7 = sub_21BE26A2C();
  v8 = sub_21BE28FCC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(0x74696D694C746567, 0xEB00000000292873, &v14);
    _os_log_impl(&dword_21BB35000, v7, v8, "%s no card cache", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return sub_21BBB6068(MEMORY[0x277D84F90]);
}

double sub_21BE20A9C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21BE26A4C();
  MEMORY[0x28223BE20](v8);
  v9 = [a1 altDSID];
  if (v9)
  {
    v11 = v9;
    v12 = sub_21BE28A0C();
    v14 = v13;

    v30 = sub_21BE20778();
    v15 = a2;

    sub_21BE2231C(v16, v15, v12, v14, &v30);

    v17 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21BC7F9A8(a3, a4, v12, v14, isUniquelyReferenced_nonNull_native);

    sub_21BE257BC();
    swift_allocObject();
    sub_21BE257AC();
    v29[0] = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F30, &unk_21BE411F0);
    sub_21BE224F0(&qword_27CDBE2B8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    v19 = sub_21BE2579C();
    v21 = v20;

    sub_21BE1F210(0x726143656C707061, 0xEF2E74696D694C64, v29);
    v23 = v29[0];
    v22 = v29[1];
    v24 = sub_21BE25BCC();
    v25 = sub_21BE1F55C();
    if (v25)
    {
      v26 = v25;

      MEMORY[0x21CF03CA0](46, 0xE100000000000000);
      MEMORY[0x21CF03CA0](v23, v22);
      v27 = sub_21BE289CC();

      [v26 setValue:v24 forKey:v27];

      v24 = v27;
    }

    else
    {
    }

    v28 = sub_21BE1F55C();
    [v28 synchronize];

    sub_21BBBEF94(v19, v21);
  }

  return result;
}

uint64_t sub_21BE20E38(void *a1)
{
  v2 = sub_21BE26A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21BE20778();
  v7 = [a1 altDSID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_21BE28A0C();
    v11 = v10;

    if (*(v6 + 16))
    {
      v12 = sub_21BBB3108(v9, v11);
      v14 = v13;

      if (v14)
      {
        v15 = *(*(v6 + 56) + 16 * v12);

        return v15;
      }
    }

    else
    {
    }
  }

  else
  {

    sub_21BE2614C();
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_21BB3D81C(0x74696D694C746567, 0xEE00293A726F6628, &v22);
      _os_log_impl(&dword_21BB35000, v17, v18, "impossible, no altDSID in %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x21CF05C50](v20, -1, -1);
      MEMORY[0x21CF05C50](v19, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

void *sub_21BE210B8(uint64_t a1)
{
  v1[6] = 0;
  v1[2] = 0xD000000000000014;
  v1[3] = 0x800000021BE512A0;
  sub_21BE21C10();
  v1[4] = v2;
  v1[5] = sub_21BE21FF4();
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel_familyDidChange name:*MEMORY[0x277D080E0] object:0];

  sub_21BE1F980();
  return v1;
}

uint64_t sub_21BE2115C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  return swift_deallocClassInstance();
}

unsigned __int8 *sub_21BE21210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21BE28B8C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21BE2179C(result, v5);
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
      result = sub_21BE2967C();
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

uint64_t sub_21BE2179C(uint64_t a1, unint64_t a2)
{
  v2 = sub_21BE28B9C();
  v6 = sub_21BE2181C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21BE2181C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21BE2947C();
    if (!v9 || (v10 = v9, v11 = sub_21BB3DB70(v9, 0), v12 = sub_21BE21974(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_21BE28AAC();

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
      return sub_21BE28AAC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21BE2967C();
LABEL_4:

  return sub_21BE28AAC();
}

unint64_t sub_21BE21974(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_21BE21B94(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21BE28B4C();
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
          result = sub_21BE2967C();
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

    result = sub_21BE21B94(v12, a6, a7);
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

    result = sub_21BE28B2C();
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

unint64_t sub_21BE21B94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21BE28B5C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CF03CE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_21BE21C10()
{
  v0 = [objc_opt_self() defaultStore];
  if (!v0)
  {
    goto LABEL_68;
  }

  v1 = v0;
  v2 = [v0 aa_primaryAppleAccount];

  if (!v2)
  {
    goto LABEL_68;
  }

  v3 = [v2 aa_personID];

  if (!v3)
  {
    goto LABEL_68;
  }

  v4 = sub_21BE28A0C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_68;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {

    v13 = sub_21BE21210(v4, v6, 10);
    v37 = v36;
    swift_bridgeObjectRelease_n();
    if (v37)
    {
      goto LABEL_68;
    }

LABEL_71:
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    return;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = sub_21BE2967C();
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          if (v10)
          {
            v13 = 0;
            v23 = v10 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_66;
              }

              v25 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                goto LABEL_66;
              }

              v13 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_66;
              }

              v17 = 0;
              ++v23;
              if (!--v22)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_58;
        }

        goto LABEL_66;
      }

      goto LABEL_75;
    }

    if (v11 != 45)
    {
      if (v8)
      {
        if (v10)
        {
          v13 = 0;
          while (1)
          {
            v30 = *v10 - 48;
            if (v30 > 9)
            {
              goto LABEL_66;
            }

            v31 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              goto LABEL_66;
            }

            v13 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_66;
            }

            v17 = 0;
            ++v10;
            if (!--v8)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_58;
      }

LABEL_66:
      v13 = 0;
      v17 = 1;
LABEL_67:
      v39 = v17;
      v35 = v17;

      if (v35)
      {
LABEL_68:
        sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
        sub_21BE293EC();
        return;
      }

      goto LABEL_71;
    }

    if (v8 >= 1)
    {
      v12 = v8 - 1;
      if (v8 != 1)
      {
        if (v10)
        {
          v13 = 0;
          v14 = v10 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              goto LABEL_66;
            }

            v16 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              goto LABEL_66;
            }

            v13 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              goto LABEL_66;
            }

            v17 = 0;
            ++v14;
            if (!--v12)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_58:
        v13 = 0;
        v17 = 0;
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v38[0] = v4;
  v38[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v4 != 43)
  {
    if (v4 != 45)
    {
      if (v7)
      {
        v13 = 0;
        v32 = v38;
        while (1)
        {
          v33 = *v32 - 48;
          if (v33 > 9)
          {
            break;
          }

          v34 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            break;
          }

          v17 = 0;
          ++v32;
          if (!--v7)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v7)
    {
      v18 = v7 - 1;
      if (v18)
      {
        v13 = 0;
        v19 = v38 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          v17 = 0;
          ++v19;
          if (!--v18)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_74;
  }

  if (v7)
  {
    v26 = v7 - 1;
    if (v26)
    {
      v13 = 0;
      v27 = v38 + 1;
      while (1)
      {
        v28 = *v27 - 48;
        if (v28 > 9)
        {
          break;
        }

        v29 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v29 + v28;
        if (__OFADD__(v29, v28))
        {
          break;
        }

        v17 = 0;
        ++v27;
        if (!--v26)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_76:
  __break(1u);
}

uint64_t sub_21BE21FF4()
{
  if (qword_280BD8A50 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21BE289CC();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_21BB3A4CC(&v8, &qword_27CDB5940, &unk_21BE32B10);
    goto LABEL_12;
  }

  v3 = sub_21BE289CC();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_21BE294BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    return v6;
  }

LABEL_12:
  sub_21BB3A2A4(0, &qword_280BD68F8, 0x277CCABB0);
  return sub_21BE293EC();
}

uint64_t sub_21BE2219C()
{
  v22 = MEMORY[0x277D84F90];
  sub_21BC599DC(0, 6, 0);
  v0 = 0;
  result = v22;
  v2 = "erCache";
  v3 = "ChecklistStoreCache";
  v4 = "SubscriptionFamilyCache";
  v5 = "AppleCardFamilyCache";
  do
  {
    v6 = byte_282D84DF0[v0 + 32];
    v7 = 0xD00000000000001ALL;
    v8 = 0xD000000000000017;
    if (v6 == 4)
    {
      v9 = v4;
    }

    else
    {
      v9 = v5;
    }

    if (v6 == 3)
    {
      v9 = v3;
    }

    else
    {
      v8 = 0xD000000000000014;
    }

    v10 = 0xD000000000000021;
    if (v6 == 1)
    {
      v11 = "amilyCache";
    }

    else
    {
      v10 = 0xD000000000000013;
      v11 = "chaseSharingCache";
    }

    if (byte_282D84DF0[v0 + 32])
    {
      v7 = v10;
      v12 = v11;
    }

    else
    {
      v12 = v2;
    }

    if (byte_282D84DF0[v0 + 32] <= 2u)
    {
      v13 = v7;
    }

    else
    {
      v13 = v8;
    }

    if (byte_282D84DF0[v0 + 32] <= 2u)
    {
      v14 = v12;
    }

    else
    {
      v14 = v9;
    }

    v23 = result;
    v16 = *(result + 16);
    v15 = *(result + 24);
    if (v16 >= v15 >> 1)
    {
      v20 = v3;
      v21 = v2;
      v18 = v5;
      v19 = v4;
      sub_21BC599DC((v15 > 1), v16 + 1, 1);
      v5 = v18;
      v4 = v19;
      v3 = v20;
      v2 = v21;
      result = v23;
    }

    ++v0;
    *(result + 16) = v16 + 1;
    v17 = result + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14 | 0x8000000000000000;
  }

  while (v0 != 6);
  return result;
}

void sub_21BE2231C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; a5 = v19)
  {
LABEL_11:
    while (1)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (*(a1 + 48) + ((i << 10) | (16 * v13)));
      v15 = *v14;
      v16 = v14[1];

      v17 = sub_21BE289CC();
      v18 = [a2 memberForAltDSID_];

      if (!v18)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v19 = a5;

    v20 = sub_21BBB3108(v15, v16);
    v22 = v21;

    if (v22)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *a5;
      v27 = *v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21BC80E88();
        v24 = v27;
      }

      sub_21BC7ECF0(v20, v24);
      *v19 = v24;
    }
  }

LABEL_7:
  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++i;
    if (v9)
    {
      i = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_21BE224F0(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6F30, &unk_21BE411F0);
    v8[0] = a2;
    v8[1] = a2;
    result = swift_getWitnessTable(a3, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27CDD4100 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27CDD40F4 > a2)
  {
    return 1;
  }

  if (dword_27CDD40F4 < a2)
  {
    return 0;
  }

  return dword_27CDD40F8 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27CDD4108 == -1)
  {
    if (qword_27CDD4110)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27CDD4110)
    {
      return _availability_version_check();
    }
  }

  if (qword_27CDD4100 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27CDD40F4 > a3)
      {
        return 1;
      }

      if (dword_27CDD40F4 >= a3)
      {
        return dword_27CDD40F8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27CDD4110;
  if (qword_27CDD4110)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27CDD4110 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x21CF05230](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27CDD40F4, &dword_27CDD40F8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}