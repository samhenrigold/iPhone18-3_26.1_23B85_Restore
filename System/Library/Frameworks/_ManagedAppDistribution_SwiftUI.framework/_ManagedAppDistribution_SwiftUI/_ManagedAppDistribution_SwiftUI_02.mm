uint64_t sub_23B7AB400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938, &qword_23B7BFF60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_23B7AB470(uint64_t a1)
{
  v92 = sub_23B7BBDD0();
  v74 = *(v92 - 8);
  v2 = MEMORY[0x28223BE20](v92);
  *&v91 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v78 = &v74 - v4;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181938, &qword_23B7BFF60);
  v89 = *(v87 - 8);
  v5 = MEMORY[0x28223BE20](v87);
  v84 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v80 = &v74 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - v9;
  v11 = sub_23B7BBE10();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181940, &qword_23B7BFF68);
  MEMORY[0x28223BE20](v15);
  v17 = &v74 - v16;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181958, &qword_23B7BFF70);
  MEMORY[0x28223BE20](v75);
  v19 = &v74 - v18;
  v20 = sub_23B7AB020(&qword_27E181960, MEMORY[0x277CDF7F8], MEMORY[0x277CDF810]);
  v88 = v11;
  v86 = v20;
  v21 = sub_23B7BC8A0();
  if (*(*(a1 + *(v15 + 52)) + 16) >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = *(*(a1 + *(v15 + 52)) + 16);
  }

  v79 = v10;
  *&v90 = v15;
  v83 = v21;
  if (!v22)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_15:
    v28 = *(v89 + 80);
    v29 = *(v25 + 3);

    sub_23B779B38(a1, v17, &qword_27E181940, &qword_23B7BFF68);
    (*(v12 + 32))(v14, v17, v88);
    sub_23B7BC890();
    v30 = *&v17[*(v90 + 52)];
    v31 = &v19[*(v75 + 52)];
    v85 = v31;
    v86 = v30;
    *v31 = v30;
    *(v31 + 1) = 0;
    if (v83 < 0)
    {
LABEL_64:
      __break(1u);
    }

    else
    {
      v82 = v25;
      v76 = (v28 + 32) & ~v28;
      v32 = &v25[v76];
      v33 = v29 >> 1;
      v77 = v28;
      if (v22)
      {
        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181968, &qword_23B7BFF78) + 36);
        v35 = (v74 + 16);
        v83 = v86 + 32;
        v36 = (v74 + 32);
        v81 = v33 - v22;
        sub_23B7AB020(&qword_27E181948, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
        v37 = 0;
        while (1)
        {
          result = sub_23B7BC9C0();
          if (*&v19[v34] == v93[0])
          {
            goto LABEL_69;
          }

          v39 = sub_23B7BC9E0();
          (*v35)(v91);
          v39(v93, 0);
          sub_23B7BC9D0();
          v40 = *(v86 + 16);
          if (v37 == v40)
          {
            goto LABEL_68;
          }

          if (v37 >= v40)
          {
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v41 = v37 + 1;
          v42 = v84;
          v90 = *(v83 + 16 * v37);
          *(v85 + 1) = v37 + 1;
          v43 = *(v87 + 48);
          (*v36)(v42, v91, v92);
          *(v42 + v43) = v90;
          sub_23B7AB068(v42, v32);
          v32 += *(v89 + 72);
          v37 = v41;
          if (v22 == v41)
          {
            v44 = v74;
            v10 = v79;
            goto LABEL_24;
          }
        }
      }

      v81 = v29 >> 1;
      v44 = v74;
LABEL_24:
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181968, &qword_23B7BFF78) + 36);
      sub_23B7AB020(&qword_27E181948, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
      sub_23B7BC9C0();
      if (*&v19[v45] != v93[0])
      {
        *&v90 = v44 + 16;
        v83 = v44 + 32;
        v84 = (v86 + 32);
        v46 = v78;
        while (1)
        {
          v50 = sub_23B7BC9E0();
          (*v90)(v46);
          v50(v93, 0);
          sub_23B7BC9D0();
          v51 = *(v86 + 16);
          if (v22 == v51)
          {
            break;
          }

          if (v22 >= v51)
          {
            goto LABEL_60;
          }

          v91 = *&v84[16 * v22];
          *(v85 + 1) = v22 + 1;
          v52 = *(v87 + 48);
          v53 = v80;
          (*v83)(v80, v46, v92);
          *(v53 + v52) = v91;
          sub_23B7AB068(v53, v10);
          if (v81)
          {
            v47 = v82;
            v48 = v81 - 1;
            if (__OFSUB__(v81, 1))
            {
              goto LABEL_52;
            }
          }

          else
          {
            v54 = v82;
            v55 = *(v82 + 3);
            if (((v55 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_61;
            }

            v56 = v55 & 0xFFFFFFFFFFFFFFFELL;
            if (v56 <= 1)
            {
              v57 = 1;
            }

            else
            {
              v57 = v56;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181970, &qword_23B7BFF80);
            v58 = *(v89 + 72);
            v59 = v76;
            v47 = swift_allocObject();
            v60 = _swift_stdlib_malloc_size(v47);
            if (!v58)
            {
              goto LABEL_62;
            }

            v61 = v60 - v59;
            if (v60 - v59 == 0x8000000000000000 && v58 == -1)
            {
              goto LABEL_63;
            }

            v63 = v59;
            v64 = v61 / v58;
            *(v47 + 2) = v57;
            *(v47 + 3) = 2 * (v61 / v58);
            v65 = &v47[v59];
            v66 = *(v54 + 3) >> 1;
            v67 = v66 * v58;
            if (*(v54 + 2))
            {
              if (v47 < v54 || v65 >= &v54[v63 + v67])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v47 != v54)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              *(v54 + 2) = 0;
            }

            v32 = &v65[v67];
            v69 = (v64 & 0x7FFFFFFFFFFFFFFFLL) - v66;

            v46 = v78;
            v10 = v79;
            v70 = __OFSUB__(v69, 1);
            v48 = v69 - 1;
            if (v70)
            {
LABEL_52:
              __break(1u);
              break;
            }
          }

          v81 = v48;
          sub_23B7AB068(v10, v32);
          v32 += *(v89 + 72);
          sub_23B7BC9C0();
          v49 = *&v19[v45];
          ++v22;
          v82 = v47;
          if (v49 == v93[0])
          {
            goto LABEL_55;
          }
        }

        (*(v74 + 8))(v46, v92);
      }

      v47 = v82;
LABEL_55:
      v19[*(v75 + 56)] = 1;
      sub_23B7826E8(v19, &qword_27E181958, &qword_23B7BFF70);
      v71 = *(v47 + 3);
      if (v71 < 2)
      {
        return v47;
      }

      v72 = v71 >> 1;
      v70 = __OFSUB__(v72, v81);
      v73 = v72 - v81;
      if (!v70)
      {
        *(v47 + 2) = v73;
        return v47;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

  if (v22 <= 0)
  {
    v25 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181970, &qword_23B7BFF80);
  v23 = *(v89 + 72);
  v24 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v25 = swift_allocObject();
  v26 = _swift_stdlib_malloc_size(v25);
  if (!v23)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v26 - v24 != 0x8000000000000000 || v23 != -1)
  {
    *(v25 + 2) = v22;
    *(v25 + 3) = 2 * ((v26 - v24) / v23);
    v10 = v79;
LABEL_14:

    goto LABEL_15;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  result = (*(v74 + 8))(v91, v92);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_23B7ABE18(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 4144959;
  }

  else
  {
    v2 = 5527621;
  }

  if (*a2)
  {
    v3 = 4144959;
  }

  else
  {
    v3 = 5527621;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_23B7BCC70();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_23B7ABE90()
{
  sub_23B7BCCD0();
  sub_23B7BC830();

  return sub_23B7BCD10();
}

double sub_23B7ABEF8(uint64_t a1)
{
  sub_23B7BC830();

  return result;
}

uint64_t sub_23B7ABF44(uint64_t a1)
{
  sub_23B7BCCD0();
  sub_23B7BC830();

  return sub_23B7BCD10();
}

void sub_23B7ABFA8(char *a2@<X8>)
{
  v3 = sub_23B7BCBD0();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_23B7AC008(uint64_t *a1@<X8>)
{
  v2 = 5527621;
  if (*v1)
  {
    v2 = 4144959;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

void sub_23B7AC050(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7BCD20();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v5 = sub_23B7BCC80();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v8);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
  }
}

double sub_23B7AC124(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7BCD40();
  sub_23B7AC1EC(v2, v3, v4);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_23B7BCCA0();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

unint64_t sub_23B7AC1EC(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    if (a1)
    {
      v5 = 4144959;
    }

    else
    {
      v5 = 5527621;
    }

    MEMORY[0x23EEA8AE0](v5, 0xE300000000000000);

    sub_23B7797D8();
    v6 = sub_23B7BC870();
    MEMORY[0x23EEA8AE0](v6);

    return 0;
  }
}

uint64_t sub_23B7AC2C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_23B7AC310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void *sub_23B7AC370@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_23B7AC45C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

double sub_23B7AC3A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7BCD40();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_23B7AC5E8();
  sub_23B7BCCB0();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

void *sub_23B7AC45C(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7BCD20();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_23B7AC544();
    sub_23B7BCC90();
    v3 = v5;
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

unint64_t sub_23B7AC544()
{
  result = qword_27E181980;
  if (!qword_27E181980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181980);
  }

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

unint64_t sub_23B7AC5E8()
{
  result = qword_27E181988;
  if (!qword_27E181988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181988);
  }

  return result;
}

unint64_t sub_23B7AC650()
{
  result = qword_27E181990;
  if (!qword_27E181990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181990);
  }

  return result;
}

uint64_t sub_23B7AC6B0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v27 = a1;
  v28 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181360, &qword_23B7BEAC0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = sub_23B7BBAF0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  (*(v11 + 16))(&v27 - v15, a2, v10);
  sub_23B7BBAC0();
  sub_23B7ADB58(&qword_27E1819D8, MEMORY[0x277CD4A90], MEMORY[0x277CD4A98]);
  v17 = sub_23B7BC7B0();
  v18 = *(v11 + 8);
  v18(v14, v10);
  if (v17)
  {
    v18(a2, v10);
    v18(v16, v10);
    sub_23B7ADA24(v27, v9);
    v19 = sub_23B7BB9A0();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v9, 1, v19) != 1)
    {
      sub_23B779B38(v9, v7, &qword_27E181360, &qword_23B7BEAC0);
      v25 = (*(v20 + 88))(v7, v19);
      if (v25 == *MEMORY[0x277CD4A00])
      {
        v21 = 0;
        goto LABEL_13;
      }

      if (v25 == *MEMORY[0x277CD49F8])
      {
        v21 = 1;
        goto LABEL_13;
      }

      (*(v20 + 8))(v7, v19);
    }

    v21 = 4;
LABEL_13:
    result = sub_23B7AD9BC(v9);
    goto LABEL_14;
  }

  v22 = v27;
  sub_23B7BBAD0();
  v23 = sub_23B7BC7B0();
  v18(v14, v10);
  if (v23)
  {
    v18(a2, v10);
    sub_23B7AD9BC(v22);
    result = (v18)(v16, v10);
    v21 = 2;
  }

  else
  {
    sub_23B7BBAE0();
    v26 = sub_23B7BC7B0();
    v18(a2, v10);
    sub_23B7AD9BC(v22);
    v18(v14, v10);
    result = (v18)(v16, v10);
    if (v26)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }
  }

LABEL_14:
  *v28 = v21;
  return result;
}

uint64_t sub_23B7ACAB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684099177;
    }

    else
    {
      v4 = 0x656E6F685069;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 6513005;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6E6F69736976;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1701736302;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684099177;
    }

    else
    {
      v9 = 0x656E6F685069;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x6E6F69736976;
    if (a2 != 3)
    {
      v6 = 1701736302;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 6513005;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_23B7BCC70();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_23B7ACC14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18, &unk_23B7C0430);
  __swift_allocate_value_buffer(v0, qword_27E181998);
  v1 = __swift_project_value_buffer(v0, qword_27E181998);
  v2 = sub_23B7BB810();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_23B7ACCB4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E180868 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18, &unk_23B7C0430);
  v3 = __swift_project_value_buffer(v2, qword_27E181998);
  return sub_23B779B38(v3, a1, &qword_27E180C18, &unk_23B7C0430);
}

uint64_t sub_23B7ACD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B7ADAA4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void *sub_23B7ACDA8()
{
  sub_23B7AD968();

  return sub_23B7BBFB0();
}

unint64_t sub_23B7ACE10()
{
  result = qword_27E1819B0;
  if (!qword_27E1819B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1819B0);
  }

  return result;
}

void *sub_23B7ACE64@<X0>(_BYTE *a1@<X8>)
{
  sub_23B7ACE10();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.isViewService.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_23B7ACE10();
  sub_23B7BBFB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_23B7ACF88;
}

uint64_t sub_23B7ACFB4(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_23B7BBFB0();
  return v3;
}

unint64_t sub_23B7ACFFC()
{
  result = qword_27E1819B8;
  if (!qword_27E1819B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1819B8);
  }

  return result;
}

uint64_t (*EnvironmentValues.isPackage.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_23B7ACFFC();
  sub_23B7BBFB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_23B7AD120;
}

uint64_t sub_23B7AD168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B7AD428();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void *EnvironmentValues.binaryCompatibility.getter()
{
  sub_23B7AD214();

  return sub_23B7BBFB0();
}

unint64_t sub_23B7AD214()
{
  result = qword_27E1819C0;
  if (!qword_27E1819C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1819C0);
  }

  return result;
}

uint64_t (*EnvironmentValues.binaryCompatibility.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_23B7AD214();
  sub_23B7BBFB0();
  return sub_23B7AD308;
}

_ManagedAppDistribution_SwiftUI::BinaryCompatibility_optional __swiftcall BinaryCompatibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B7BCBD0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BinaryCompatibility.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F685069;
  v3 = 6513005;
  v4 = 0x6E6F69736976;
  if (v1 != 3)
  {
    v4 = 1701736302;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684099177;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_23B7AD428()
{
  result = qword_27E1819C8;
  if (!qword_27E1819C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1819C8);
  }

  return result;
}

uint64_t sub_23B7AD47C()
{
  sub_23B7BCCD0();
  sub_23B7BC830();

  return sub_23B7BCD10();
}

double sub_23B7AD540(uint64_t a1)
{
  sub_23B7BC830();

  return result;
}

uint64_t sub_23B7AD5F0(uint64_t a1)
{
  sub_23B7BCCD0();
  sub_23B7BC830();

  return sub_23B7BCD10();
}

void sub_23B7AD6BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6513005;
  v7 = 0xE600000000000000;
  v8 = 0x6E6F69736976;
  if (v2 != 3)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684099177;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void *sub_23B7AD73C@<X0>(_BYTE *a1@<X8>)
{
  sub_23B7ACE10();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BinaryCompatibility(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BinaryCompatibility(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23B7AD968()
{
  result = qword_27E1819D0;
  if (!qword_27E1819D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1819D0);
  }

  return result;
}

uint64_t sub_23B7AD9BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181360, &qword_23B7BEAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B7ADA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181360, &qword_23B7BEAC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B7ADAA4()
{
  result = qword_27E1819E0;
  if (!qword_27E1819E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C18, &unk_23B7C0430);
    sub_23B7ADB58(qword_27E1819E8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1819E0);
  }

  return result;
}

uint64_t sub_23B7ADB58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23B7ADBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ManagedAppCellContext(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_23B77DA18(319, &qword_27E180C08, MEMORY[0x277CDF3E0]);
    if (v5 <= 0x3F)
    {
      sub_23B77D9B4(319);
      if (v6 <= 0x3F)
      {
        sub_23B77DA18(319, &qword_27E180C20, MEMORY[0x277CE02A8]);
        if (v7 <= 0x3F)
        {
          sub_23B77DA6C(319);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23B7ADCB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v38 = *(v4 + 84);
  if (v38 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(sub_23B7BBCE0() - 8);
  v7 = *(v6 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v40 = v7;
  v8 = *(sub_23B7BB810() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(sub_23B7BC050() - 8);
  v12 = *(v11 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v39 = v12;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0) - 8);
  v14 = *(v13 + 84);
  v15 = *(v4 + 64);
  if (v14 <= v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  if (v9)
  {
    v17 = v10;
  }

  else
  {
    v17 = v10 + 1;
  }

  v18 = *(v13 + 80);
  if (v17 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 80) & 0xF8 | 7;
  v21 = ((((((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v20 + 16;
  v22 = *(v8 + 80) & 0xF8 | 7;
  v23 = v40 + v22 + 1;
  v24 = *(v11 + 80) & 0xF8 | 7;
  v25 = v19 + v24 + 1;
  v26 = v39 + v18 + 1;
  if (a2 <= v16)
  {
    goto LABEL_41;
  }

  v27 = ((*(v13 + 64) + v18 + ((v26 + ((v25 + ((v23 + (v21 & ~v20)) & ~v22)) & ~v24)) & ~v18)) & ~v18) + *(v13 + 64);
  v28 = 8 * v27;
  if (v27 <= 3)
  {
    v31 = ((a2 - v16 + ~(-1 << v28)) >> v28) + 1;
    if (HIWORD(v31))
    {
      v29 = *(a1 + v27);
      if (!v29)
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (v31 > 0xFF)
    {
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (v31 < 2)
    {
LABEL_41:
      if (v5 >= v14)
      {
        if (v38 < 0x7FFFFFFF)
        {
          v37 = *(((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
          if (v37 >= 0xFFFFFFFF)
          {
            LODWORD(v37) = -1;
          }

          return (v37 + 1);
        }

        else
        {
          v36 = *(v4 + 48);

          return v36(a1);
        }
      }

      else
      {
        v35 = *(v13 + 48);

        return v35((v26 + ((v25 + ((v23 + ((a1 + v21) & ~v20)) & ~v22)) & ~v24)) & ~v18);
      }
    }
  }

  v29 = *(a1 + v27);
  if (!*(a1 + v27))
  {
    goto LABEL_41;
  }

LABEL_28:
  v32 = (v29 - 1) << v28;
  if (v27 > 3)
  {
    v32 = 0;
  }

  if (v27)
  {
    if (v27 <= 3)
    {
      v33 = ((*(v13 + 64) + v18 + ((v26 + ((v25 + ((v23 + (v21 & ~v20)) & ~v22)) & ~v24)) & ~v18)) & ~v18) + *(v13 + 64);
    }

    else
    {
      v33 = 4;
    }

    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v34 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v34 = *a1;
      }
    }

    else if (v33 == 1)
    {
      v34 = *a1;
    }

    else
    {
      v34 = *a1;
    }
  }

  else
  {
    v34 = 0;
  }

  return v16 + (v34 | v32) + 1;
}

void sub_23B7AE134(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v40 = v4;
  v41 = *(v4 + 84);
  if (v41 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(sub_23B7BBCE0() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8;
  v9 = *(sub_23B7BB810() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(sub_23B7BC050() - 8);
  if (*(v12 + 64) > 8uLL)
  {
    v8 = *(v12 + 64);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0) - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v4 + 64);
  if (v15 <= v5)
  {
    v17 = v5;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = ((((((((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = *(v6 + 80) & 0xF8 | 7;
  v20 = *(v9 + 80) & 0xF8 | 7;
  v21 = v7 + v20 + 1;
  if (v10)
  {
    v22 = v11;
  }

  else
  {
    v22 = v11 + 1;
  }

  if (v22 <= 8)
  {
    v22 = 8;
  }

  v23 = *(v12 + 80) & 0xF8 | 7;
  v24 = v22 + v23 + 1;
  v25 = *(v13 + 80);
  v26 = v8 + v25 + 1;
  v27 = ((*(v13 + 64) + v25 + ((v26 + ((v24 + ((v21 + ((v18 + v19) & ~v19)) & ~v20)) & ~v23)) & ~v25)) & ~v25) + *(v13 + 64);
  if (a3 <= v17)
  {
    v29 = 0;
    v28 = a1;
  }

  else
  {
    v28 = a1;
    if (v27 <= 3)
    {
      v32 = ((a3 - v17 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  if (v17 < a2)
  {
    v30 = ~v17 + a2;
    if (v27 < 4)
    {
      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v34 = v30 & ~(-1 << (8 * v27));
        bzero(v28, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v28 = v34;
            if (v29 > 1)
            {
LABEL_63:
              if (v29 == 2)
              {
                *&v28[v27] = v31;
              }

              else
              {
                *&v28[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *v28 = v30;
            if (v29 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *v28 = v34;
        v28[2] = BYTE2(v34);
      }

      if (v29 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(v28, v27);
      *v28 = v30;
      v31 = 1;
      if (v29 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v29)
    {
      v28[v27] = v31;
    }

    return;
  }

  if (v29 > 1)
  {
    if (v29 != 2)
    {
      *&v28[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&v28[v27] = 0;
LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!v29)
  {
    goto LABEL_43;
  }

  v28[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v5 >= v15)
  {
    if (v5 >= a2)
    {
      if (v41 < 0x7FFFFFFF)
      {
        v39 = (&v28[v16 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v39[2] = 0;
          v39[3] = 0;
          *v39 = a2 & 0x7FFFFFFF;
          v39[1] = 0;
        }

        else
        {
          v39[3] = a2 - 1;
        }
      }

      else
      {
        v38 = *(v40 + 56);

        v38(v28, a2);
      }
    }

    else if (((((((((((v16 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(v28, v18);
      *v28 = ~v5 + a2;
    }
  }

  else
  {
    v35 = ~v25;
    v36 = *(v14 + 56);
    v37 = (v26 + ((v24 + ((v21 + (&v28[v18 + v19] & ~v19)) & ~v20)) & ~v23)) & v35;

    v36(v37, a2);
  }
}

uint64_t sub_23B7AE6C8(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

  return sub_23B7BC700();
}

uint64_t sub_23B7AE898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v3 = sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A70, &qword_23B7C04C0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A78, &qword_23B7C04C8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A80, &qword_23B7C04D0);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v40 = sub_23B7BC5D0();
  v47 = v40;
  WitnessTable = swift_getWitnessTable();
  v44 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v36 = *(OpaqueTypeMetadata2 - 8);
  v5 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - v7;
  v47 = v3;
  WitnessTable = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A88, &qword_23B7C04D8);
  v49 = type metadata accessor for OfferView(255);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A90, &unk_23B7C04E0);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50, &qword_23B7BE460);
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v8 = sub_23B7BC5D0();
  v42 = swift_getWitnessTable();
  v43 = v8;
  v47 = v8;
  WitnessTable = v42;
  v9 = swift_getOpaqueTypeMetadata2();
  v33 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = sub_23B7BC050();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = OpaqueTypeMetadata2;
  v19 = sub_23B7BC0A0();
  v37 = *(v19 - 8);
  v38 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  sub_23B79A7D4(v18);
  v22 = sub_23B7BC040();
  (*(v16 + 8))(v18, v15);
  if (v22)
  {
    sub_23B7AF054(a1, v12);
    v47 = v43;
    WitnessTable = v42;
    swift_getOpaqueTypeConformance2();
    sub_23B7BB698();
    v23 = *(v33 + 8);
    v23(v12, v9);
    sub_23B7BB698();
    v24 = v40;
    v47 = v40;
    WitnessTable = v44;
    swift_getOpaqueTypeConformance2();
    sub_23B7B8A34(v12, v9);
    v23(v12, v9);
    v23(v14, v9);
  }

  else
  {
    v25 = v35;
    sub_23B7AF3B4(a1, v35);
    v24 = v40;
    v47 = v40;
    WitnessTable = v44;
    swift_getOpaqueTypeConformance2();
    v26 = v34;
    v27 = v39;
    sub_23B7BB698();
    v28 = *(v36 + 8);
    v28(v25, v27);
    sub_23B7BB698();
    v47 = v43;
    WitnessTable = v42;
    swift_getOpaqueTypeConformance2();
    sub_23B7B8B2C(v25, v9, v27);
    v28(v25, v27);
    v28(v26, v27);
  }

  v47 = v43;
  WitnessTable = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v24;
  WitnessTable = v44;
  v30 = swift_getOpaqueTypeConformance2();
  v45 = OpaqueTypeConformance2;
  v46 = v30;
  v31 = v38;
  swift_getWitnessTable();
  sub_23B7BB698();
  return (*(v37 + 8))(v21, v31);
}

uint64_t sub_23B7AF054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v15 = sub_23B7BC150();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v19 = sub_23B7BBE70();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A88, &qword_23B7C04D8);
  v21 = type metadata accessor for OfferView(255);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A90, &unk_23B7C04E0);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50, &qword_23B7BE460);
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v8 = sub_23B7BC5D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = *(a1 + 24);
  v16 = v7;
  v17 = v12;
  v18 = v2;
  sub_23B7BBFE0();
  sub_23B7BC5C0();
  sub_23B7BC140();
  swift_getWitnessTable();
  sub_23B7BC430();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23B7AF3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v15 = sub_23B7BC150();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v19 = sub_23B7BBE70();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A70, &qword_23B7C04C0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A78, &qword_23B7C04C8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A80, &qword_23B7C04D0);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v8 = sub_23B7BC5D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  sub_23B7BBFE0();
  v12 = *(a1 + 24);
  v16 = v7;
  v17 = v12;
  v18 = v2;
  sub_23B7BC5C0();
  sub_23B7BC140();
  swift_getWitnessTable();
  sub_23B7BC430();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23B7AF6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_23B7BBE70();
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  type metadata accessor for PlatformIconClippingViewModifier(255);
  v6 = sub_23B7BBE70();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  sub_23B7BC1F0();
  v9 = sub_23B7BBE70();
  v36 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v38 = sub_23B7BBE70();
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v33 = &v32 - v12;
  v13 = sub_23B7BBE70();
  v41 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v37 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v39 = &v32 - v16;
  sub_23B7BC6A0();
  v17 = *(a1 + 24);
  sub_23B7BC460();
  v51 = v17;
  v52 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  sub_23B79759C(v3, WitnessTable);
  (*(v34 + 8))(v5, v3);
  v19 = sub_23B781A2C(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier, &unk_23B7BEBC4);
  v49 = WitnessTable;
  v50 = v19;
  v20 = swift_getWitnessTable();
  sub_23B7BC420();
  (*(v35 + 8))(v8, v6);
  v21 = sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v47 = v20;
  v48 = v21;
  v22 = swift_getWitnessTable();
  v23 = v33;
  sub_23B7BC450();
  (*(v36 + 8))(v11, v9);
  sub_23B7BC250();
  v24 = [objc_opt_self() currentDevice];
  [v24 userInterfaceIdiom];

  v25 = sub_23B781950();
  v45 = v22;
  v46 = v25;
  v26 = v38;
  v27 = swift_getWitnessTable();
  v28 = v37;
  sub_23B7BC480();
  (*(v40 + 8))(v23, v26);
  v43 = v27;
  v44 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v29 = v39;
  sub_23B7BB698();
  v30 = *(v41 + 8);
  v30(v28, v13);
  sub_23B7BB698();
  return (v30)(v29, v13);
}

void sub_23B7AFC80(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23B7BC2D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), v8);
  sub_23B7BC270();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v4);
  sub_23B7BC2E0();

  (*(v5 + 8))(v7, v4);
  v9 = sub_23B7BC360();
  v11 = v10;
  LOBYTE(a1) = v12;
  v14 = v13;

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = a1 & 1;
  *(a2 + 24) = v14;
}

uint64_t sub_23B7AFE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = (v3 + *(type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), a3) + 40));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = sub_23B7BC0E0();
  v11 = sub_23B7BC300();
  KeyPath = swift_getKeyPath();
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = v11;

  return sub_23B781E88(v6, v7, v8, v9);
}

__n128 sub_23B7AFEA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D10, &qword_23B7BE5A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_23B7BC050();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v3 + *(type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), v13) + 44));
  v15 = *v14;
  v16 = v14[2];
  v17 = v14[3];
  v31 = v14[1];
  v32 = v15;
  v29 = v17;
  v30 = v16;
  sub_23B781E88(v15, v31, v16, v17);
  sub_23B79A7D4(v12);
  LOBYTE(a1) = sub_23B7BC040();
  v18 = *(v10 + 8);
  v18(v12, v9);
  if (a1)
  {
    v19 = sub_23B7BC2F0();
  }

  else
  {
    v20 = sub_23B7BC280();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    v19 = sub_23B7BC2B0();
    sub_23B7826E8(v8, &qword_27E180D10, &qword_23B7BE5A0);
  }

  KeyPath = swift_getKeyPath();
  sub_23B79A7D4(v12);
  sub_23B7BC040();
  v18(v12, v9);
  sub_23B7BC6A0();
  sub_23B7BBEB0();
  v22 = sub_23B7BC0E0();
  v23 = swift_getKeyPath();
  v24 = v31;
  *a2 = v32;
  *(a2 + 8) = v24;
  v25 = v29;
  *(a2 + 16) = v30;
  *(a2 + 24) = v25;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v19;
  v26 = v38;
  *(a2 + 112) = v37;
  *(a2 + 128) = v26;
  *(a2 + 144) = v39;
  v27 = v34;
  *(a2 + 48) = v33;
  *(a2 + 64) = v27;
  result = v36;
  *(a2 + 80) = v35;
  *(a2 + 96) = result;
  *(a2 + 160) = v22;
  *(a2 + 168) = v23;
  *(a2 + 176) = 2;
  *(a2 + 184) = 0;
  return result;
}

uint64_t sub_23B7B0178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = (v3 + *(type metadata accessor for ManagedAppCellContext(0, *(a1 + 16), *(a1 + 24), a3) + 48));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  sub_23B781E88(*v5, v7, v8, v9);
  v10 = sub_23B7BC300();
  KeyPath = swift_getKeyPath();
  result = sub_23B7BC0E0();
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v10;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_23B7B020C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a4;
  v98 = a1;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A80, &qword_23B7C04D0);
  v6 = MEMORY[0x28223BE20](v93);
  v96 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = (&v72 - v8);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A78, &qword_23B7C04C8);
  v9 = MEMORY[0x28223BE20](v91);
  v95 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v72 - v11;
  v12 = sub_23B7BC050();
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v75 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v72 - v15;
  v16 = sub_23B7BC150();
  v81 = *(v16 - 8);
  v82 = v16;
  MEMORY[0x28223BE20](v16);
  v79 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181AF8, &qword_23B7C0590);
  v86 = *(v18 - 8);
  v87 = v18;
  MEMORY[0x28223BE20](v18);
  v100 = &v72 - v19;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A70, &qword_23B7C04C0);
  v20 = MEMORY[0x28223BE20](v89);
  v90 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v85 = &v72 - v23;
  MEMORY[0x28223BE20](v22);
  v103 = &v72 - v24;
  v78 = a2;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  v101 = sub_23B7BBE70();
  v25 = sub_23B7BBE70();
  v99 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v72 - v29;
  v73 = type metadata accessor for CompactManagedAppCell(0, a2, a3, v31);
  sub_23B7AF6AC(v73, v28);
  v120 = a3;
  v121 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v33 = sub_23B781A2C(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier, &unk_23B7BEBC4);
  v118 = WitnessTable;
  v119 = v33;
  v34 = swift_getWitnessTable();
  v35 = sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v116 = v34;
  v117 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_23B781950();
  v114 = v36;
  v115 = v37;
  v112 = swift_getWitnessTable();
  v113 = MEMORY[0x277CDF918];
  v38 = swift_getWitnessTable();
  v101 = v30;
  v80 = v38;
  sub_23B7BB698();
  v39 = *(v99 + 8);
  v102 = v28;
  v88 = v25;
  v83 = v39;
  v84 = v99 + 8;
  v39(v28, v25);
  v40 = sub_23B7BC070();
  LOBYTE(v108[0]) = 0;
  v41 = v78;
  sub_23B7B0E08(v78, a3, &v136, v42);
  v132 = v146;
  v133[0] = v147[0];
  *(v133 + 10) = *(v147 + 10);
  v128 = v142;
  v129 = v143;
  v130 = v144;
  v131 = v145;
  v124 = v138;
  v125 = v139;
  v126 = v140;
  v127 = v141;
  v122 = v136;
  v123 = v137;
  v134[10] = v146;
  v135[0] = v147[0];
  *(v135 + 10) = *(v147 + 10);
  v134[6] = v142;
  v134[7] = v143;
  v134[9] = v145;
  v134[8] = v144;
  v134[2] = v138;
  v134[3] = v139;
  v134[5] = v141;
  v134[4] = v140;
  v134[1] = v137;
  v134[0] = v136;
  sub_23B779B38(&v122, &v109, &qword_27E181B00, &qword_23B7C0598);
  sub_23B7826E8(v134, &qword_27E181B00, &qword_23B7C0598);
  *&v111[151] = v131;
  *&v111[167] = v132;
  *&v111[183] = v133[0];
  *&v111[193] = *(v133 + 10);
  *&v111[87] = v127;
  *&v111[103] = v128;
  *&v111[119] = v129;
  *&v111[135] = v130;
  *&v111[23] = v123;
  *&v111[39] = v124;
  *&v111[55] = v125;
  *&v111[71] = v126;
  *&v111[7] = v122;
  *&v110[161] = *&v111[160];
  *&v110[177] = *&v111[176];
  *&v110[193] = *&v111[192];
  *&v110[97] = *&v111[96];
  *&v110[113] = *&v111[112];
  *&v110[129] = *&v111[128];
  *&v110[145] = *&v111[144];
  *&v110[33] = *&v111[32];
  *&v110[49] = *&v111[48];
  *&v110[65] = *&v111[64];
  *&v110[81] = *&v111[80];
  *&v110[1] = *v111;
  *&v109 = v40;
  *(&v109 + 1) = 0x3FF0000000000000;
  v110[0] = v108[0];
  v110[209] = BYTE9(v133[1]);
  *&v110[17] = *&v111[16];
  v43 = v79;
  sub_23B7BC130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B08, &qword_23B7C05A0);
  sub_23B7826A0(&qword_27E181B10, &qword_27E181B08, &qword_23B7C05A0, MEMORY[0x277CE1198]);
  sub_23B7BC430();
  (*(v81 + 8))(v43, v82);
  v147[1] = *&v110[176];
  v147[2] = *&v110[192];
  v148 = *&v110[208];
  v144 = *&v110[112];
  v145 = *&v110[128];
  v147[0] = *&v110[160];
  v146 = *&v110[144];
  v140 = *&v110[48];
  v141 = *&v110[64];
  v143 = *&v110[96];
  v142 = *&v110[80];
  v136 = v109;
  v137 = *v110;
  v139 = *&v110[32];
  v138 = *&v110[16];
  v44 = v41;
  sub_23B7826E8(&v136, &qword_27E181B08, &qword_23B7C05A0);
  v46 = type metadata accessor for ManagedAppCellContext(0, v41, a3, v45);
  if (sub_23B7B4420(v46))
  {
    v47 = 1;
  }

  else
  {
    v48 = v74;
    sub_23B79A7D4(v74);
    v50 = v75;
    v49 = v76;
    v51 = v77;
    (*(v76 + 104))(v75, *MEMORY[0x277CE0290], v77);
    v52 = sub_23B7B3424(v48, v50);
    v53 = *(v49 + 8);
    v53(v50, v51);
    v53(v48, v51);
    if (v52)
    {
      v47 = 1;
    }

    else
    {
      v47 = 2;
    }
  }

  KeyPath = swift_getKeyPath();
  v55 = v85;
  (*(v86 + 32))(v85, v100, v87);
  v56 = v89;
  v57 = &v55[*(v89 + 36)];
  *v57 = KeyPath;
  *(v57 + 1) = v47;
  v57[16] = 0;
  v58 = v55;
  v59 = v103;
  sub_23B7B383C(v58, v103);
  *&v109 = 0x4030000000000000;
  BYTE8(v109) = 0;
  v60 = v92;
  sub_23B7BC420();
  v61 = sub_23B7BC060();
  v62 = v94;
  *v94 = v61;
  *(v62 + 8) = 0;
  *(v62 + 16) = 1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B18, &unk_23B7C05A8);
  sub_23B7B179C(v44, a3, v62 + *(v63 + 44));
  v64 = v102;
  v65 = v88;
  (*(v99 + 16))(v102, v101, v88);
  *&v109 = v64;
  v66 = v59;
  v67 = v90;
  sub_23B7B38AC(v66, v90);
  *(&v109 + 1) = v67;
  v68 = v95;
  sub_23B779B38(v60, v95, &qword_27E181A78, &qword_23B7C04C8);
  *v110 = v68;
  v69 = v96;
  sub_23B779B38(v62, v96, &qword_27E181A80, &qword_23B7C04D0);
  *&v110[8] = v69;
  v108[0] = v65;
  v108[1] = v56;
  v108[2] = v91;
  v108[3] = v93;
  v104 = v80;
  v105 = sub_23B7B391C();
  v106 = sub_23B7B3A44();
  v107 = sub_23B7826A0(&qword_27E181B30, &qword_27E181A80, &qword_23B7C04D0, MEMORY[0x277CE1198]);
  sub_23B7AE6C8(&v109, 4uLL, v108);
  sub_23B7826E8(v62, &qword_27E181A80, &qword_23B7C04D0);
  sub_23B7826E8(v60, &qword_27E181A78, &qword_23B7C04C8);
  sub_23B7B3B00(v103);
  v70 = v83;
  v83(v101, v65);
  sub_23B7826E8(v69, &qword_27E181A80, &qword_23B7C04D0);
  sub_23B7826E8(v68, &qword_27E181A78, &qword_23B7C04C8);
  sub_23B7B3B00(v67);
  return v70(v102, v65);
}

__n128 sub_23B7B0E08@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v6 = type metadata accessor for ManagedAppCellContext(0, a1, a2, a4);
  if (sub_23B7B4420(v6))
  {
    v8 = type metadata accessor for CompactManagedAppCell(0, a1, a2, v7);
    sub_23B7B0178(v8, &v120, v9);
    v10 = v122;
    v11 = v123;
    v52 = v121;
    v53 = v120;
    KeyPath = swift_getKeyPath();
    LOBYTE(v108) = 0;
    v13 = sub_23B7BC240();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
    sub_23B7BBD30();
    sub_23B7BBCC0();
    v68 = v53;
    v69 = v52;
    v70 = v10;
    *v71 = v11;
    *&v71[8] = KeyPath;
    *&v71[16] = 1;
    v71[24] = 0;
    *&v71[25] = v120;
    *&v71[28] = *(&v120 + 3);
    LOBYTE(v72) = v13;
    DWORD1(v72) = *(&v108 + 3);
    *(&v72 + 1) = v108;
    *(&v72 + 1) = v14;
    *v73 = v15;
    *&v73[8] = v16;
    *&v73[16] = v17;
    v73[24] = 0;
    sub_23B7AFC80(v8, &v120);
    v18 = v120;
    LOBYTE(KeyPath) = v121.n128_u8[0];
    v19 = v121.n128_u64[1];
    LOBYTE(v8) = sub_23B7BC240();
    sub_23B7BBD30();
    sub_23B7BBCC0();
    LOBYTE(v86) = 0;
    v74 = v18;
    v75.n128_u8[0] = KeyPath;
    *(v75.n128_u32 + 1) = v120;
    v75.n128_u32[1] = *(&v120 + 3);
    v75.n128_u64[1] = v19;
    LOBYTE(v76) = v8;
    DWORD1(v76) = *(&v108 + 3);
    *(&v76 + 1) = v108;
    *(&v76 + 1) = v20;
    *v77 = v21;
    *&v77[8] = v22;
    *&v77[16] = v23;
    v77[24] = 0;
    *&v65[16] = *&v71[16];
    v66 = v72;
    v67[0] = *v73;
    *(v67 + 9) = *&v73[9];
    v62 = v53;
    v63 = v52;
    v64 = v10;
    *v65 = *v71;
    *(v107 + 9) = *&v77[9];
    v107[0] = *v77;
    v106 = v76;
    v104 = v18;
    v105 = v75;
    v80 = v10;
    *v81 = *v71;
    v78 = v53;
    v79 = v52;
    *(v83 + 9) = *&v73[9];
    v83[0] = *v73;
    *&v81[16] = *&v71[16];
    v82 = v72;
    v55 = *v71;
    *&v58[9] = *&v73[9];
    LOBYTE(v92) = KeyPath;
    v56 = *&v71[16];
    v57 = v72;
    *(v85 + 9) = *&v77[9];
    v84[2] = v76;
    v85[0] = *v77;
    v84[0] = v18;
    v84[1] = v75;
    *v58 = *v73;
    v59 = v75;
    *&v61[9] = *&v77[9];
    v60 = v76;
    *v61 = *v77;
    sub_23B779B38(&v68, &v120, qword_27E181B60, &qword_23B7C05D0);
    sub_23B779B38(&v74, &v120, &qword_27E181AF0, &qword_23B7C0588);
    sub_23B779B38(&v78, &v120, qword_27E181B60, &qword_23B7C05D0);
    sub_23B779B38(v84, &v120, &qword_27E181AF0, &qword_23B7C0588);
    sub_23B7826E8(&v104, &qword_27E181AF0, &qword_23B7C0588);
    *&v89[16] = *&v65[16];
    v90 = v66;
    v91[0] = v67[0];
    *(v91 + 9) = *(v67 + 9);
    v86 = v53;
    v87 = v52;
    v88 = v10;
    *v89 = *v65;
    sub_23B7826E8(&v86, qword_27E181B60, &qword_23B7C05D0);
    v118 = v60;
    v119[0] = *v61;
    *(v119 + 9) = *&v61[9];
    v114 = *v58;
    v115 = *&v58[16];
    v117 = v59;
    v116 = v18;
    v110 = v10;
    v111 = v55;
    v113 = v57;
    v112 = v56;
    v109 = v52;
    v108 = v53;
    sub_23B7B3B74(&v108);
    v130 = v118;
    v131[0] = v119[0];
    *(v131 + 10) = *(v119 + 10);
    v126 = v114;
    v127 = v115;
    v129 = v117;
    v128 = v116;
    v122 = v110;
    v123 = v111;
    v125 = v113;
    v124 = v112;
    v121 = v109;
    v120 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B40, &qword_23B7C05C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B48, &qword_23B7C05C8);
    v24 = MEMORY[0x277CE14C0];
    sub_23B7826A0(&qword_27E181B50, &qword_27E181B40, &qword_23B7C05C0, MEMORY[0x277CE14C0]);
    sub_23B7826A0(&qword_27E181B58, &qword_27E181B48, &qword_23B7C05C8, v24);
    sub_23B7BC090();
    sub_23B7826E8(&v74, &qword_27E181AF0, &qword_23B7C0588);
    v25 = &v68;
    v26 = qword_27E181B60;
    v27 = &qword_23B7C05D0;
  }

  else
  {
    v28 = type metadata accessor for CompactManagedAppCell(0, a1, a2, v7);
    sub_23B7AFC80(v28, &v120);
    v29 = v120;
    v30 = v121.n128_u8[0];
    v31 = v121.n128_u64[1];
    v32 = sub_23B7BC240();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
    sub_23B7BBD30();
    sub_23B7BBCC0();
    LOBYTE(v92) = v30;
    v62 = v29;
    v63.n128_u8[0] = v30;
    *(v63.n128_u32 + 1) = v120;
    v63.n128_u32[1] = *(&v120 + 3);
    v63.n128_u64[1] = v31;
    LOBYTE(v64) = v32;
    DWORD1(v64) = *(&v108 + 3);
    *(&v64 + 1) = v108;
    *(&v64 + 1) = v33;
    *v65 = v34;
    *&v65[8] = v35;
    *&v65[16] = v36;
    v65[24] = 0;
    sub_23B7AFE04(v28, &v120, v37);
    v106 = v64;
    v107[0] = *v65;
    *(v107 + 9) = *&v65[9];
    v105 = v63;
    v104 = v29;
    *&v71[9] = *&v65[9];
    v70 = v64;
    *v71 = *v65;
    v68 = v29;
    v69 = v63;
    *&v89[9] = *&v65[9];
    v38 = v120;
    v39 = v121;
    v40 = v122;
    v41 = *(&v122 + 1);
    v42 = v123;
    v88 = v64;
    *v89 = *v65;
    v86 = v29;
    v87 = v63;
    sub_23B779B38(&v62, &v120, &qword_27E181AF0, &qword_23B7C0588);
    sub_23B781E88(v38, *(&v38 + 1), v39.n128_i8[0], v39.n128_i64[1]);

    sub_23B779B38(&v68, &v120, &qword_27E181AF0, &qword_23B7C0588);
    sub_23B781E88(v38, *(&v38 + 1), v39.n128_i8[0], v39.n128_i64[1]);

    sub_23B781FB4(v38, *(&v38 + 1), v39.n128_i8[0], v39.n128_i64[1], v43);

    v80 = v106;
    *v81 = v107[0];
    *&v81[9] = *(v107 + 9);
    v78 = v104;
    v79 = v105;
    sub_23B7826E8(&v78, &qword_27E181AF0, &qword_23B7C0588);
    v110 = v88;
    v111 = *v89;
    v112 = *&v89[16];
    v109 = v87;
    v108 = v86;
    v113 = v38;
    v114 = v39;
    LODWORD(v115) = v40;
    *(&v115 + 1) = v41;
    *&v116 = v42;
    sub_23B7B3B68(&v108);
    v130 = v118;
    v131[0] = v119[0];
    *(v131 + 10) = *(v119 + 10);
    v126 = v114;
    v127 = v115;
    v129 = v117;
    v128 = v116;
    v122 = v110;
    v123 = v111;
    v125 = v113;
    v124 = v112;
    v121 = v109;
    v120 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B40, &qword_23B7C05C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B48, &qword_23B7C05C8);
    v44 = MEMORY[0x277CE14C0];
    sub_23B7826A0(&qword_27E181B50, &qword_27E181B40, &qword_23B7C05C0, MEMORY[0x277CE14C0]);
    sub_23B7826A0(&qword_27E181B58, &qword_27E181B48, &qword_23B7C05C8, v44);
    sub_23B7BC090();
    sub_23B781FB4(v38, *(&v38 + 1), v39.n128_i8[0], v39.n128_i64[1], v45);

    v25 = &v62;
    v26 = &qword_27E181AF0;
    v27 = &qword_23B7C0588;
  }

  sub_23B7826E8(v25, v26, v27);
  v131[0] = v103[0];
  *(v131 + 10) = *(v103 + 10);
  v126 = v98;
  v127 = v99;
  v129 = v101;
  v128 = v100;
  v122 = v94;
  v123 = v95;
  v125 = v97;
  v124 = v96;
  v121 = v93;
  v120 = v92;
  v46 = v131[0];
  *(a3 + 160) = v102;
  *(a3 + 176) = v46;
  *(a3 + 186) = *(v131 + 10);
  v47 = v127;
  *(a3 + 96) = v126;
  *(a3 + 112) = v47;
  v48 = v129;
  *(a3 + 128) = v128;
  *(a3 + 144) = v48;
  v49 = v123;
  *(a3 + 32) = v122;
  *(a3 + 48) = v49;
  v50 = v125;
  *(a3 + 64) = v124;
  *(a3 + 80) = v50;
  result = v121;
  *a3 = v120;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_23B7B179C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D90, &qword_23B7BFD80);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v14 = type metadata accessor for CompactManagedAppCell(0, a1, a2, v13);
  sub_23B77F5BC(v14, v15, v12);
  *&v12[*(v7 + 44)] = 0x3FF0000000000000;
  v17 = type metadata accessor for ManagedAppCellContext(0, a1, a2, v16);
  if (sub_23B7B4438(v17))
  {
    sub_23B7AFEA4(v14, &v42);
    v61 = v50;
    v62 = v51;
    v63[0] = v52[0];
    *(v63 + 9) = *(v52 + 9);
    v57 = v46;
    v58 = v47;
    v59 = v48;
    v60 = v49;
    v53 = v42;
    v54 = v43;
    v55 = v44;
    v56 = v45;
    nullsub_1();
    v72 = v61;
    v73 = v62;
    v74[0] = v63[0];
    *(v74 + 9) = *(v63 + 9);
    v68 = v57;
    v69 = v58;
    v70 = v59;
    v71 = v60;
    v64 = v53;
    v65 = v54;
    v66 = v55;
    v67 = v56;
  }

  else
  {
    sub_23B7B3088(&v64);
  }

  sub_23B779B38(v12, v10, &qword_27E180D90, &qword_23B7BFD80);
  v39 = v72;
  v40 = v73;
  v41[0] = v74[0];
  *(v41 + 9) = *(v74 + 9);
  v35 = v68;
  v36 = v69;
  v37 = v70;
  v38 = v71;
  v31 = v64;
  v32 = v65;
  v33 = v66;
  v34 = v67;
  sub_23B779B38(v10, a3, &qword_27E180D90, &qword_23B7BFD80);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B38, &qword_23B7C05B8) + 48);
  v19 = v40;
  v50 = v39;
  v51 = v40;
  v20 = v41[0];
  v52[0] = v41[0];
  *(v52 + 9) = *(v41 + 9);
  v21 = v35;
  v22 = v36;
  v46 = v35;
  v47 = v36;
  v23 = v37;
  v24 = v38;
  v48 = v37;
  v49 = v38;
  v25 = v31;
  v26 = v32;
  v42 = v31;
  v43 = v32;
  v27 = v33;
  v28 = v34;
  v44 = v33;
  v45 = v34;
  v29 = (a3 + v18);
  v29[8] = v39;
  v29[9] = v19;
  v29[10] = v20;
  *(v29 + 169) = *(v41 + 9);
  v29[4] = v21;
  v29[5] = v22;
  v29[6] = v23;
  v29[7] = v24;
  *v29 = v25;
  v29[1] = v26;
  v29[2] = v27;
  v29[3] = v28;
  sub_23B779B38(&v42, &v53, &qword_27E181A90, &unk_23B7C04E0);
  sub_23B7826E8(v12, &qword_27E180D90, &qword_23B7BFD80);
  v61 = v39;
  v62 = v40;
  v63[0] = v41[0];
  *(v63 + 9) = *(v41 + 9);
  v57 = v35;
  v58 = v36;
  v59 = v37;
  v60 = v38;
  v53 = v31;
  v54 = v32;
  v55 = v33;
  v56 = v34;
  sub_23B7826E8(&v53, &qword_27E181A90, &unk_23B7C04E0);
  return sub_23B7826E8(v10, &qword_27E180D90, &qword_23B7BFD80);
}

uint64_t sub_23B7B1ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v33 = a4;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v44 = sub_23B7BBE70();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A88, &qword_23B7C04D8);
  v46 = type metadata accessor for OfferView(255);
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A90, &unk_23B7C04E0);
  swift_getTupleTypeMetadata();
  v28[2] = sub_23B7BC6F0();
  v28[1] = swift_getWitnessTable();
  v6 = sub_23B7BC640();
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v28 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50, &qword_23B7BE460);
  v9 = sub_23B7BBE70();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v31 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  MEMORY[0x28223BE20](v13);
  v29 = v28 - v16;
  sub_23B7BC070();
  type metadata accessor for CompactManagedAppCell(0, a2, a3, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  v18 = v32;
  sub_23B7BBD30();
  v34 = a2;
  v35 = a3;
  v36 = v18;
  sub_23B7BC630();
  v20 = type metadata accessor for ManagedAppCellContext(0, a2, a3, v19);
  sub_23B7B4420(v20);
  WitnessTable = swift_getWitnessTable();
  sub_23B7BC4A0();
  (*(v30 + 8))(v8, v6);
  v22 = sub_23B7826A0(&qword_27E180C58, &qword_27E180C50, &qword_23B7BE460, MEMORY[0x277CE0868]);
  v42 = WitnessTable;
  v43 = v22;
  v23 = swift_getWitnessTable();
  v24 = v29;
  sub_23B7BB698();
  v25 = *(v10 + 8);
  v25(v15, v9);
  v26 = v31;
  (*(v10 + 16))(v31, v24, v9);
  v40 = 0;
  v41 = 0;
  v44 = v26;
  v45 = &v40;
  v39[0] = v9;
  v39[1] = MEMORY[0x277CE1180];
  v37 = v23;
  v38 = MEMORY[0x277CE1170];
  sub_23B7AE6C8(&v44, 2uLL, v39);
  v25(v24, v9);
  return (v25)(v26, v9);
}

uint64_t sub_23B7B1FA4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a4;
  v71 = type metadata accessor for OfferView(0);
  v6 = MEMORY[0x28223BE20](v71);
  v76 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v56 - v8;
  v9 = sub_23B7BC150();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A88, &qword_23B7C04D8);
  v73 = *(v75 - 8);
  v11 = MEMORY[0x28223BE20](v75);
  v72 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = &v56 - v13;
  v58 = a2;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  v70 = sub_23B7BBE70();
  v78 = sub_23B7BBE70();
  v14 = sub_23B7BBE70();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  v77 = a3;
  v57 = type metadata accessor for CompactManagedAppCell(0, a2, a3, v21);
  sub_23B7AF6AC(v57, v18);
  v118 = a3;
  v119 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v23 = sub_23B781A2C(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier, &unk_23B7BEBC4);
  v116 = WitnessTable;
  v117 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v114 = v24;
  v115 = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_23B781950();
  v112 = v26;
  v113 = v27;
  v110 = swift_getWitnessTable();
  v111 = MEMORY[0x277CDF918];
  v28 = swift_getWitnessTable();
  v78 = v20;
  v64 = v28;
  sub_23B7BB698();
  v61 = v15;
  v29 = *(v15 + 8);
  v79 = v18;
  v69 = v15 + 8;
  v70 = v14;
  v68 = v29;
  v29(v18, v14);
  v30 = sub_23B7BC070();
  v31 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  sub_23B7BBD30();
  v32 = v122[0];
  LOBYTE(v97) = 0;
  v33 = v58;
  sub_23B7B28D4(v58, v77, v122, v34);
  memcpy(v120, v122, sizeof(v120));
  memcpy(v121, v122, sizeof(v121));
  sub_23B779B38(v120, v108, &qword_27E181A98, &qword_23B7C04F0);
  sub_23B7826E8(v121, &qword_27E181A98, &qword_23B7C04F0);
  memcpy(&v109[7], v120, 0x108uLL);
  *&v108[0] = v30;
  *(&v108[0] + 1) = v32;
  LOBYTE(v108[1]) = v97;
  memcpy(&v108[1] + 1, v109, 0x10FuLL);
  v35 = v63;
  sub_23B7BC130();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181AA0, &qword_23B7C04F8);
  v37 = sub_23B7826A0(&qword_27E181AA8, &qword_27E181AA0, &qword_23B7C04F8, MEMORY[0x277CE1198]);
  v38 = v62;
  v59 = v37;
  v60 = v36;
  sub_23B7BC430();
  v39 = v35;
  v40 = v31;
  (*(v65 + 8))(v39, v66);
  memcpy(v122, v108, 0x120uLL);
  sub_23B7826E8(v122, &qword_27E181AA0, &qword_23B7C04F8);
  v41 = v67;
  sub_23B77F5BC(v40, v42, v67);
  v44 = type metadata accessor for ManagedAppCellContext(0, v33, v77, v43);
  if (sub_23B7B4438(v44))
  {
    sub_23B7AFEA4(v40, &v85);
    v105 = v93;
    v106 = v94;
    v107[0] = v95[0];
    *(v107 + 9) = *(v95 + 9);
    v101 = v89;
    v102 = v90;
    v103 = v91;
    v104 = v92;
    v97 = v85;
    v98 = v86;
    v99 = v87;
    v100 = v88;
    nullsub_1();
    v108[8] = v105;
    v108[9] = v106;
    v108[10] = v107[0];
    *(&v108[10] + 9) = *(v107 + 9);
    v108[4] = v101;
    v108[5] = v102;
    v108[6] = v103;
    v108[7] = v104;
    v108[0] = v97;
    v108[1] = v98;
    v108[2] = v99;
    v108[3] = v100;
  }

  else
  {
    sub_23B7B3088(v108);
  }

  v45 = v79;
  v46 = v70;
  (*(v61 + 16))(v79, v78, v70);
  v96[0] = v45;
  v47 = v72;
  v48 = v73;
  v49 = v38;
  v50 = v38;
  v51 = v75;
  (*(v73 + 16))(v72, v50, v75);
  v96[1] = v47;
  v52 = v76;
  sub_23B7819C8(v41, v76);
  v93 = v108[8];
  v94 = v108[9];
  v95[0] = v108[10];
  *(v95 + 9) = *(&v108[10] + 9);
  v89 = v108[4];
  v90 = v108[5];
  v91 = v108[6];
  v92 = v108[7];
  v85 = v108[0];
  v86 = v108[1];
  v87 = v108[2];
  v88 = v108[3];
  v96[2] = v52;
  v96[3] = &v85;
  sub_23B779B38(v108, &v97, &qword_27E181A90, &unk_23B7C04E0);
  v84[0] = v46;
  v84[1] = v51;
  v84[2] = v71;
  v84[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A90, &unk_23B7C04E0);
  v80 = v64;
  *&v97 = v60;
  *(&v97 + 1) = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = sub_23B781A2C(&qword_27E180C90, type metadata accessor for OfferView, &protocol conformance descriptor for OfferView);
  v83 = sub_23B7B30AC();
  sub_23B7AE6C8(v96, 4uLL, v84);
  sub_23B7826E8(v108, &qword_27E181A90, &unk_23B7C04E0);
  sub_23B781E28(v41);
  v53 = *(v48 + 8);
  v53(v49, v51);
  v54 = v68;
  v68(v78, v46);
  v105 = v93;
  v106 = v94;
  v107[0] = v95[0];
  *(v107 + 9) = *(v95 + 9);
  v101 = v89;
  v102 = v90;
  v103 = v91;
  v104 = v92;
  v97 = v85;
  v98 = v86;
  v99 = v87;
  v100 = v88;
  sub_23B7826E8(&v97, &qword_27E181A90, &unk_23B7C04E0);
  sub_23B781E28(v52);
  v53(v47, v51);
  return v54(v79, v46);
}

uint64_t sub_23B7B28D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v7 = type metadata accessor for ManagedAppCellContext(0, a1, a2, a4);
  if (sub_23B7B4420(v7))
  {
    v9 = type metadata accessor for CompactManagedAppCell(0, a1, a2, v8);
    sub_23B7B0178(v9, &v85, v10);
    v11 = *(&v87 + 1);
    v44 = v87;
    v42 = v88;
    v40 = v86;
    v41 = v85;
    KeyPath = swift_getKeyPath();
    v13 = sub_23B7BC240();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
    sub_23B7BBD30();
    sub_23B7BBCC0();
    v78 = v41;
    v79 = v40;
    *&v80 = v44;
    *(&v80 + 1) = v11;
    LODWORD(v81) = v42;
    *(&v81 + 1) = KeyPath;
    *&v82 = 1;
    BYTE8(v82) = 0;
    LOBYTE(v83) = v13;
    *(&v83 + 1) = v14;
    *v84 = v15;
    *&v84[8] = v16;
    *&v84[16] = v17;
    v84[24] = 0;
    nullsub_1();
    v89 = v82;
    v90 = v83;
    v91[0] = *v84;
    *(v91 + 9) = *&v84[9];
    v85 = v41;
    v86 = v40;
    v87 = v80;
    v88 = v81;
  }

  else
  {
    sub_23B7B33FC(&v85);
    v9 = type metadata accessor for CompactManagedAppCell(0, a1, a2, v18);
  }

  sub_23B7AFC80(v9, &v78);
  v19 = v78;
  v39 = v79;
  v45 = *(&v79 + 1);
  v43 = sub_23B7BC240();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80, &unk_23B7BDED0);
  sub_23B7BBD30();
  sub_23B7BBCC0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_23B7AFE04(v9, &v78, v28);
  v56 = v89;
  v57 = v90;
  *v58 = v91[0];
  *&v58[9] = *(v91 + 9);
  v52 = v85;
  v53 = v86;
  v54 = v87;
  v55 = v88;
  v61[2] = v87;
  v61[3] = v88;
  v61[0] = v85;
  v61[1] = v86;
  *(v62 + 9) = *(v91 + 9);
  v62[0] = v91[0];
  v61[4] = v89;
  v61[5] = v90;
  v29 = v78;
  v30 = v79;
  v31 = v80;
  v32 = *(&v80 + 1);
  v33 = v81;
  *&v48[9] = *(v91 + 9);
  v47 = v90;
  *v48 = v91[0];
  v46 = v89;
  v63 = v19;
  LOBYTE(v64) = v39;
  DWORD1(v64) = *&v60[3];
  *(&v64 + 1) = *v60;
  *(&v64 + 1) = v45;
  LOBYTE(v65) = v43;
  DWORD1(v65) = *&v59[3];
  *(&v65 + 1) = *v59;
  *(&v65 + 1) = v21;
  *v66 = v23;
  *&v66[8] = v25;
  *&v66[16] = v27;
  v66[24] = 0;
  *&v51[9] = *&v66[9];
  v50 = v65;
  *v51 = *v66;
  v49 = v64;
  v34 = v85;
  v35 = v86;
  v36 = v88;
  *(a3 + 32) = v87;
  *(a3 + 48) = v36;
  *a3 = v34;
  *(a3 + 16) = v35;
  *(a3 + 96) = *v48;
  *(a3 + 112) = *&v48[16];
  *(a3 + 64) = v46;
  *(a3 + 80) = v47;
  *(a3 + 176) = *v51;
  *(a3 + 192) = *&v51[16];
  *(a3 + 144) = v49;
  *(a3 + 160) = v50;
  *(a3 + 128) = v19;
  *(a3 + 208) = v29;
  *(a3 + 224) = v30;
  *(a3 + 240) = v31;
  *(a3 + 248) = v32;
  *(a3 + 256) = v33;
  sub_23B779B38(v61, &v78, &qword_27E181AE8, &qword_23B7C0580);
  sub_23B779B38(&v63, &v78, &qword_27E181AF0, &qword_23B7C0588);
  sub_23B781E88(v29, *(&v29 + 1), v30, *(&v30 + 1));

  sub_23B781FB4(v29, *(&v29 + 1), v30, *(&v30 + 1), v37);

  v67 = v19;
  v68 = v39;
  *v69 = *v60;
  *&v69[3] = *&v60[3];
  v70 = v45;
  v71 = v43;
  *v72 = *v59;
  *&v72[3] = *&v59[3];
  v73 = v21;
  v74 = v23;
  v75 = v25;
  v76 = v27;
  v77 = 0;
  sub_23B7826E8(&v67, &qword_27E181AF0, &qword_23B7C0588);
  v82 = v56;
  v83 = v57;
  *v84 = *v58;
  *&v84[9] = *&v58[9];
  v78 = v52;
  v79 = v53;
  v80 = v54;
  v81 = v55;
  return sub_23B7826E8(&v78, &qword_27E181AE8, &qword_23B7C0580);
}

uint64_t sub_23B7B2DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ManagedAppCellContext(0, a4, a5, a4);
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v14 = type metadata accessor for CompactManagedAppCell(0, a4, a5, v13);
  sub_23B782748(a2, a6 + v14[9], &qword_27E180DA0, &unk_23B7BEB90);
  sub_23B782748(a3, a6 + v14[10], &qword_27E180DA8, &qword_23B7BE0C0);
  v15 = v14[11];
  *(a6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB0, &qword_23B7BFE30);
  swift_storeEnumTagMultiPayload();
  sub_23B77DAC8();
  sub_23B7BBD20();
  return sub_23B7BBD20();
}

uint64_t sub_23B7B2F84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18, &unk_23B7C0430);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_23B779B38(a1, &v9 - v6, &qword_27E180C18, &unk_23B7C0430);
  sub_23B779B38(v7, v5, &qword_27E180C18, &unk_23B7C0430);
  sub_23B7AD968();
  sub_23B7BBFC0();
  return sub_23B7826E8(v7, &qword_27E180C18, &unk_23B7C0430);
}

double sub_23B7B3088(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_23B7B30AC()
{
  result = qword_27E181AB0;
  if (!qword_27E181AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A90, &unk_23B7C04E0);
    sub_23B7B3130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181AB0);
  }

  return result;
}

unint64_t sub_23B7B3130()
{
  result = qword_27E181AB8;
  if (!qword_27E181AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181AC0, &qword_23B7C0500);
    sub_23B7B31E8();
    sub_23B7826A0(&qword_27E180C58, &qword_27E180C50, &qword_23B7BE460, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181AB8);
  }

  return result;
}

unint64_t sub_23B7B31E8()
{
  result = qword_27E181AC8;
  if (!qword_27E181AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181AD0, &qword_23B7C0508);
    sub_23B7B32A0();
    sub_23B7826A0(&qword_27E181890, &qword_27E181898, &unk_23B7BFCB0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181AC8);
  }

  return result;
}

unint64_t sub_23B7B32A0()
{
  result = qword_27E181AD8;
  if (!qword_27E181AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181AE0, &unk_23B7C0510);
    sub_23B781CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181AD8);
  }

  return result;
}

uint64_t sub_23B7B3334@<X0>(uint64_t a1@<X8>)
{
  result = sub_23B7BBF70();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23B7B3368@<X0>(uint64_t a1@<X8>)
{
  result = sub_23B7BBF70();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

double sub_23B7B33FC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

BOOL sub_23B7B3424(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_23B7BC050();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a2, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x277CE0268];
  if (v12 != *MEMORY[0x277CE0268])
  {
    if (v12 == *MEMORY[0x277CE0298])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE02A0])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277CE0260])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x277CE0270])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x277CE0248])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x277CE0280])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x277CE0278])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x277CE0288])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x277CE0250])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x277CE0298])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x277CE02A0])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x277CE0290])
    {
      if (v15 == *MEMORY[0x277CE0260])
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0270])
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0248])
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0280])
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0278])
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0288])
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0250])
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0258])
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

uint64_t sub_23B7B383C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A70, &qword_23B7C04C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7B38AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A70, &qword_23B7C04C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B7B391C()
{
  result = qword_27E181B20;
  if (!qword_27E181B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A70, &qword_23B7C04C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181B08, &qword_23B7C05A0);
    sub_23B7826A0(&qword_27E181B10, &qword_27E181B08, &qword_23B7C05A0, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_23B7826A0(&qword_27E180C58, &qword_27E180C50, &qword_23B7BE460, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181B20);
  }

  return result;
}

unint64_t sub_23B7B3A44()
{
  result = qword_27E181B28;
  if (!qword_27E181B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A78, &qword_23B7C04C8);
    sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181B28);
  }

  return result;
}

uint64_t sub_23B7B3B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A70, &qword_23B7C04C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B7B3BD0(void *a1)
{
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier(255);
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A88, &qword_23B7C04D8);
  type metadata accessor for OfferView(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A90, &unk_23B7C04E0);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50, &qword_23B7BE460);
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A70, &qword_23B7C04C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A78, &qword_23B7C04C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A80, &qword_23B7C04D0);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23B7BC0A0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_23B7B3F04()
{
  v0 = sub_23B7BBB30();
  __swift_allocate_value_buffer(v0, qword_27E184F18);
  __swift_project_value_buffer(v0, qword_27E184F18);
  return sub_23B7BBB20();
}

void sub_23B7B3F70(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23B7B4380();
    if (v2 <= 0x3F)
    {
      sub_23B7B43D0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B7B4024(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_23B7B4180(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19[2] = 0;
          v19[3] = 0;
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[3] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_23B7B4380()
{
  if (!qword_27E181BE8)
  {
    v0 = sub_23B7BCB30();
    if (!v1)
    {
      atomic_store(v0, &qword_27E181BE8);
    }
  }
}

unint64_t sub_23B7B43D0()
{
  result = qword_27E181BF0;
  if (!qword_27E181BF0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E181BF0);
  }

  return result;
}

__n128 sub_23B7B4450@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __n128 a14, unint64_t a15, unint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v25 = *a17;
  v26 = a17[1];
  v36 = *(a17 + 16);
  (*(*(a20 - 8) + 32))(a9, a1, a20);
  v28 = type metadata accessor for ManagedAppCellContext(0, a20, a21, v27);
  v29 = a9 + v28[9];
  *v29 = a2;
  *(v29 + 8) = a3;
  *(v29 + 16) = a4 & 1;
  *(v29 + 24) = a5;
  v30 = (a9 + v28[10]);
  *v30 = a6;
  v30[1] = a7;
  v30[2] = a8;
  v30[3] = a10;
  v31 = a9 + v28[11];
  *v31 = a11;
  *(v31 + 16) = a12;
  *(v31 + 24) = a13;
  v32 = (a9 + v28[12]);
  result = a14;
  *v32 = a14;
  v32[1].n128_u64[0] = a15;
  v32[1].n128_u64[1] = a16;
  v34 = a9 + v28[13];
  *v34 = v25;
  *(v34 + 8) = v26;
  *(v34 + 16) = v36;
  v35 = (a9 + v28[14]);
  *v35 = a18;
  v35[1] = a19;
  return result;
}

uint64_t sub_23B7B462C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B7BBFA0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ManagedAppView(0);
  sub_23B779B38(v1 + *(v10 + 24), v9, &qword_27E180DC0, &qword_23B7BE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23B7BBCE0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23B7BCA10();
    v13 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ManagedAppView.init(app:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23B7BBAF0();
  MEMORY[0x28223BE20](v4 - 8);
  v84 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181360, &qword_23B7BEAC0);
  MEMORY[0x28223BE20](v6 - 8);
  v83 = &v81 - v7;
  v85 = sub_23B7BB860();
  v82 = *(v85 - 8);
  v8 = MEMORY[0x28223BE20](v85);
  v86 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v81 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E180968, "$:");
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v81 - v16;
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v18 = type metadata accessor for ManagedAppView(0);
  v19 = v18[5];
  *(a2 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181508, &qword_23B7BEDC0);
  swift_storeEnumTagMultiPayload();
  v20 = v18[6];
  *(a2 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for LegacyAppExtensionHostView.Configuration(0);
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  sub_23B779B38(v17, v15, &unk_27E180968, "$:");
  sub_23B7BC560();
  sub_23B7826E8(v17, &unk_27E180968, "$:");
  v22 = (a2 + v18[8]);
  *&v94 = 0;
  sub_23B7BC560();
  v23 = *(&v96[0] + 1);
  *v22 = *&v96[0];
  v22[1] = v23;
  v24 = a2 + v18[9];
  type metadata accessor for CGRect(0);
  v94 = 0u;
  v95 = 0u;
  sub_23B7BC560();
  v25 = v97;
  v26 = v96[1];
  *v24 = v96[0];
  *(v24 + 16) = v26;
  *(v24 + 32) = v25;
  sub_23B7BB850();
  v27 = v82;
  v28 = v85;
  (*(v82 + 2))(v86, v11, v85);
  sub_23B7BC560();
  (*(v27 + 1))(v11, v28);
  v29 = sub_23B7BB9C0();
  v30 = (a2 + v18[11]);
  *v30 = v29;
  v30[1] = v31;
  v82 = v18;
  *(a2 + v18[12]) = 0;
  *&v96[0] = sub_23B7BBA00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181368, &qword_23B7BEAC8);
  v32 = sub_23B7826A0(&qword_27E181370, &qword_27E181368, &qword_23B7BEAC8, MEMORY[0x277D83970]);
  v85 = sub_23B7BC880();
  v86 = v33;

  v34 = v83;
  sub_23B7BB9B0();
  v35 = v84;
  sub_23B7BBA30();
  sub_23B7AC6B0(v34, v35, v96);
  v36 = LOBYTE(v96[0]);
  v37 = sub_23B7BB9D0();
  v84 = v38;
  v83 = a1;
  v39 = sub_23B7BBA40();
  if (v40)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0;
  }

  v42 = 0xE000000000000000;
  if (v40)
  {
    v43 = v40;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  v81 = v32;
  if (v36)
  {
    if (v36 == 1)
    {
      v44 = 0xD000000000000017;
      v42 = 0x800000023B7C12F0;
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v42 = 0x800000023B7C12D0;
    v44 = 0xD000000000000019;
  }

  v45 = sub_23B7A1250(v44, v42);
  v47 = v46;

  v88 = v37;
  v89 = v84;
  v48 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v48 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    v49 = v41;
  }

  else
  {
    v49 = v85;
  }

  v90 = v49;
  v91 = v50;
  v92 = v45;
  v93 = v47;

  v52 = 0;
  v53 = MEMORY[0x277D84F90];
LABEL_18:
  v54 = 3;
  if (v52 > 3)
  {
    v54 = v52;
  }

  v55 = v54 + 1;
  v56 = 16 * v52 + 40;
  while (v52 != 3)
  {
    if (v55 == ++v52)
    {
      __break(1u);
      return result;
    }

    v57 = v56 + 16;
    v58 = *&v87[v56];
    v56 += 16;
    if (v58)
    {
      v59 = *(&v84 + v57);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23B7B7368(0, *(v53 + 16) + 1, 1, v53);
        v53 = result;
      }

      v61 = *(v53 + 16);
      v60 = *(v53 + 24);
      if (v61 >= v60 >> 1)
      {
        result = sub_23B7B7368((v60 > 1), v61 + 1, 1, v53);
        v53 = result;
      }

      *(v53 + 16) = v61 + 1;
      v62 = v53 + 16 * v61;
      *(v62 + 32) = v59;
      *(v62 + 40) = v58;
      goto LABEL_18;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C00, &qword_23B7C0740);
  swift_arrayDestroy();
  *&v96[0] = v53;
  v63 = sub_23B7BC880();
  v65 = v64;

  v66 = v82;
  v67 = (a2 + v82[13]);
  *v67 = v63;
  v67[1] = v65;
  v68 = v83;
  v69 = sub_23B7BB9D0();
  v71 = v70;
  v72 = sub_23B7BBA40();
  if (v73)
  {
    v74 = v72;
  }

  else
  {
    v74 = 0;
  }

  if (v73)
  {
    v75 = v73;
  }

  else
  {
    v75 = 0xE000000000000000;
  }

  v76 = sub_23B7B7474(v69, v71, v74, v75, v85, v86);
  v78 = v77;

  v79 = sub_23B7BBA50();
  result = (*(*(v79 - 8) + 8))(v68, v79);
  v80 = (a2 + v66[14]);
  *v80 = v76;
  v80[1] = v78;
  return result;
}

uint64_t ManagedAppView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v96 = type metadata accessor for ManagedAppView(0);
  v102 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v103 = v3;
  v104 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_23B7BBCE0();
  v100 = *(v101 - 8);
  v4 = MEMORY[0x28223BE20](v101);
  v99 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v98 = &v84 - v6;
  v95 = sub_23B7BB860();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C08, &qword_23B7C0748);
  MEMORY[0x28223BE20](v87);
  v9 = (&v84 - v8);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C10, &qword_23B7C0750);
  v10 = MEMORY[0x28223BE20](v85);
  v84 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v84 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C18, &qword_23B7C0758);
  MEMORY[0x28223BE20](v86);
  v15 = &v84 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C20, &qword_23B7C0760);
  MEMORY[0x28223BE20](v88);
  v17 = &v84 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C28, &qword_23B7C0768);
  MEMORY[0x28223BE20](v89);
  v92 = &v84 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C30, &qword_23B7C0770);
  MEMORY[0x28223BE20](v91);
  v97 = &v84 - v19;
  v20 = sub_23B7BBFA0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v2;
  v25 = *(v2 + 8) == 1;
  v90 = v17;
  if (v25)
  {
    LOBYTE(v108) = v24;
  }

  else
  {

    sub_23B7BCA10();
    v26 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    v27 = sub_23B779D74(v24, 0);
    (*(v21 + 8))(v23, v20, v27);
    LOBYTE(v24) = v108;
  }

  if (v24 <= 1u)
  {
    if (v24)
    {
      v28 = 0x4056000000000000;
    }

    else
    {
      v28 = 0x404E000000000000;
    }

    goto LABEL_13;
  }

  if (v24 != 2)
  {
    v28 = 0x4067200000000000;
LABEL_13:
    v29 = *&v28;
    goto LABEL_14;
  }

  if (qword_27E180840 != -1)
  {
    swift_once();
  }

  v29 = *&qword_27E184EE0 + 0.0 + 20.0;
LABEL_14:
  v30 = *v2;
  if (*(v2 + 8))
  {
    v31 = *v2;
  }

  else
  {

    sub_23B7BCA10();
    v32 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    v33 = sub_23B779D74(v30, 0);
    (*(v21 + 8))(v23, v20, v33);
    v31 = v108;
  }

  v25 = v31 == 2;
  v34 = 52;
  if (v25)
  {
    v34 = 56;
  }

  v35 = v96;
  v36 = (v2 + *(v96 + v34));
  v38 = *v36;
  v37 = v36[1];

  *v13 = sub_23B7BC060();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C38, &qword_23B7C0778);
  sub_23B7B5DD4(v2, &v13[*(v39 + 44)]);
  sub_23B779B38(v13, v84, &qword_27E181C10, &qword_23B7C0750);
  sub_23B7826A0(&qword_27E181C40, &qword_27E181C10, &qword_23B7C0750, MEMORY[0x277CE1198]);
  *v9 = sub_23B7BC650();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C48, &qword_23B7C0780);
  sub_23B7B759C();
  sub_23B7BC090();
  sub_23B7826E8(v13, &qword_27E181C10, &qword_23B7C0750);
  *&v108 = v38;
  *(&v108 + 1) = v37;
  sub_23B7B76D0();
  sub_23B78A78C();
  v40 = v90;
  sub_23B7BC400();
  sub_23B7826E8(v15, &qword_27E181C18, &qword_23B7C0758);

  v41 = v2 + v35[9];
  v42 = *(v41 + 32);
  v43 = *(v41 + 16);
  v108 = *v41;
  v109 = v43;
  *&v110 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C60, &qword_23B7C0788);
  sub_23B7BC570();
  v44 = v106;
  v45 = v107;
  v46 = v40 + *(v88 + 36);
  *v46 = v29;
  *(v46 + 8) = v44;
  *(v46 + 24) = v45;
  *(v46 + 40) = swift_getKeyPath();
  *(v46 + 48) = 0;
  v47 = *(type metadata accessor for MaskView(0) + 28);
  *(v46 + v47) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181508, &qword_23B7BEDC0);
  swift_storeEnumTagMultiPayload();
  v48 = sub_23B7BC6A0();
  v50 = v49;
  v51 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C68, &qword_23B7C0790) + 36));
  *v51 = v48;
  v51[1] = v50;
  v52 = (v2 + v35[8]);
  v53 = *v52;
  v54 = v52[1];
  *&v108 = v53;
  *(&v108 + 1) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C70, &qword_23B7C0798);
  sub_23B7BC570();
  sub_23B7BC6B0();
  sub_23B7BBEB0();
  v55 = v92;
  sub_23B782748(v40, v92, &qword_27E181C20, &qword_23B7C0760);
  v56 = (v55 + *(v89 + 36));
  v57 = v113;
  v56[4] = v112;
  v56[5] = v57;
  v56[6] = v114;
  v58 = v109;
  *v56 = v108;
  v56[1] = v58;
  v59 = v111;
  v56[2] = v110;
  v56[3] = v59;
  v60 = (v2 + v35[11]);
  v62 = *v60;
  v61 = v60[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C78, &qword_23B7C07A0);
  v63 = v93;
  sub_23B7BC570();
  v64 = sub_23B7BB840();
  v66 = v65;
  (*(v94 + 8))(v63, v95);
  *&v106 = v62;
  *(&v106 + 1) = v61;

  MEMORY[0x23EEA8AE0](v64, v66);

  v67 = v106;
  v68 = v98;
  sub_23B7B462C(v98);
  v69 = v100;
  v70 = v99;
  v71 = v101;
  (*(v100 + 104))(v99, *MEMORY[0x277CDF3C0], v101);
  LOBYTE(v50) = sub_23B7BBCD0();
  v72 = *(v69 + 8);
  v72(v70, v71);
  v72(v68, v71);
  if (v50)
  {
    v73 = 100;
  }

  else
  {
    v73 = 108;
  }

  v106 = v67;

  MEMORY[0x23EEA8AE0](v73, 0xE100000000000000);

  v74 = v106;
  v75 = v97;
  sub_23B782748(v55, v97, &qword_27E181C28, &qword_23B7C0768);
  *(v75 + *(v91 + 52)) = v74;
  v76 = [objc_opt_self() defaultCenter];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C80, &qword_23B7C07A8);
  v78 = v105;
  sub_23B7BCAF0();

  v79 = v104;
  sub_23B7B84B8(v2, v104, type metadata accessor for ManagedAppView);
  v80 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v81 = swift_allocObject();
  sub_23B7B8640(v79, v81 + v80, type metadata accessor for ManagedAppView);
  result = sub_23B782748(v75, v78, &qword_27E181C30, &qword_23B7C0770);
  v83 = (v78 + *(v77 + 56));
  *v83 = sub_23B7B7A7C;
  v83[1] = v81;
  return result;
}

uint64_t sub_23B7B5C98()
{
  v0 = sub_23B7BB860();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  sub_23B7BB850();
  type metadata accessor for ManagedAppView(0);
  (*(v1 + 16))(v4, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C78, &qword_23B7C07A0);
  sub_23B7BC580();
  return (*(v1 + 8))(v6, v0);
}

double sub_23B7B5DD4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815C0, &qword_23B7BF270);
  v4 = MEMORY[0x28223BE20](v45);
  v44 = &v40[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v40[-2] - v6;
  v8 = sub_23B7BBFA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40[-2] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ManagedAppView(0);
  v13 = (a1 + v12[11]);
  v14 = v13[1];
  v42 = *v13;
  v43 = v14;
  v15 = *a1;
  v16 = *(a1 + 8);

  if (v16 != 1)
  {
    sub_23B779D68(v15, 0);
    sub_23B7BCA10();
    v17 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    v18 = sub_23B779D74(v15, 0);
    (*(v9 + 8))(v11, v8, v18);
    LOBYTE(v15) = v46;
  }

  v41 = (*(a1 + v12[12]) & 1) == 0;
  v19 = (a1 + v12[8]);
  v20 = *v19;
  v21 = v19[1];
  *&v50 = v20;
  *(&v50 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C70, &qword_23B7C0798);
  sub_23B7BC590();
  v22 = v46;
  v23 = v47;
  v24 = v48;
  v25 = (a1 + v12[9]);
  v26 = *(v25 + 4);
  v27 = v25[1];
  v50 = *v25;
  v51 = v27;
  v52 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C60, &qword_23B7C0788);
  sub_23B7BC590();
  v28 = v46;
  v29 = v47;
  v30 = type metadata accessor for ExtensionHostView.Session(0);
  *v40 = v48;
  v39 = v49;
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  sub_23B779B38(v7, v44, &qword_27E1815C0, &qword_23B7BF270);
  sub_23B7BC560();
  sub_23B7826E8(v7, &qword_27E1815C0, &qword_23B7BF270);
  v31 = type metadata accessor for RemoteWrapperView(0);
  v32 = a2 + v31[7];
  v33 = v43;
  *v32 = v42;
  *(v32 + 1) = v33;
  v32[16] = v15;
  v34 = v41;
  *(v32 + 3) = 0;
  *(v32 + 4) = v34;
  *(v32 + 5) = 0;
  *(v32 + 6) = 0;
  v35 = (a2 + v31[5]);
  *v35 = v22;
  v35[1] = v23;
  v35[2] = v24;
  v36 = a2 + v31[6];
  *v36 = v28;
  *(v36 + 1) = v29;
  v37 = v39;
  result = v40[0];
  *(v36 + 1) = *v40;
  *(v36 + 2) = v37;
  return result;
}

uint64_t sub_23B7B6154()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_23B7B6198(uint64_t a1)
{
  sub_23B7BC4D0();
  v1 = sub_23B7BC4E0();

  qword_27E181BF8 = v1;
}

__n128 sub_23B7B61DC@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v4 = sub_23B7BBFA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23B7BBE50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MaskView(0);
  sub_23B79A9FC(v11);
  v12 = sub_23B7BBE40();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    v14 = *(a2 + 40);
    if (*(a2 + 48) == 1)
    {
      v90 = *(a2 + 40);
    }

    else
    {

      sub_23B7BCA10();
      v18 = sub_23B7BC210();
      sub_23B7BBB00();

      sub_23B7BBF90();
      swift_getAtKeyPath();
      v19 = sub_23B779D74(v14, 0);
      (*(v5 + 8))(v7, v4, v19);
      LOBYTE(v14) = v90;
    }

    if (v14 > 1u)
    {
      if (v14 != 2)
      {
        if (qword_27E180878 != -1)
        {
          swift_once();
        }

        v27 = qword_27E181BF8;

        sub_23B7BBD90();
        sub_23B7BC6A0();
        sub_23B7BBD80();
        v42.n128_u8[0] = v49.n128_u8[8];
        v35.n128_u8[0] = v50.n128_u8[8];
        v80 = 1;
        v91.n128_u64[0] = v27;
        v91.n128_u64[1] = v49.n128_u64[0];
        v92.n128_u8[0] = v49.n128_u8[8];
        v92.n128_u64[1] = v50.n128_u64[0];
        v93[0] = v50.n128_u8[8];
        *&v93[8] = v51;
        v93[24] = 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CE0, &qword_23B7C08D8);
        sub_23B7B8728();
        sub_23B7BC090();
        v91 = v57;
        v92 = v58;
        *v93 = v59[0];
        *&v93[9] = *(v59 + 9);
        sub_23B7B87AC(&v91);
        v71 = v96;
        v72[0] = *v97;
        LOWORD(v72[1]) = *&v97[16];
        v67 = *v93;
        v68 = *&v93[16];
        v69 = v94;
        v70 = v95;
        v65 = v91;
        v66 = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CF0, &qword_23B7C08E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CF8, &qword_23B7C08E8);
        sub_23B7B87B8();
        sub_23B7B8868();
        sub_23B7BC090();
        goto LABEL_23;
      }

      v21 = sub_23B7BC690();
      v23 = v22;
      sub_23B7B6E9C(&v91);
      v39 = v94;
      v40 = v95;
      v35 = v91;
      v36 = v92;
      v37 = *v93;
      v38 = *&v93[16];
      v43 = v92;
      v44 = *v93;
      v41 = v96;
      v42 = v91;
      v45 = *&v93[16];
      v46 = v94;
      v47 = v95;
      v48 = v96;
      sub_23B779B38(&v35, &v73, &qword_27E181D30, &qword_23B7C0900);
      sub_23B7826E8(&v42, &qword_27E181D30, &qword_23B7C0900);
      v54 = v39;
      v55 = v40;
      v56 = v41;
      v50 = v35;
      v51 = v36;
      v52 = v37;
      v53 = v38;
      v49.n128_u64[0] = v21;
      v49.n128_u64[1] = v23;
      v62 = v40;
      v63 = v41;
      v60 = v38;
      v61 = v39;
      v59[0] = v36;
      v59[1] = v37;
      v57 = v49;
      v58 = v35;
      sub_23B7B8984(&v57);
    }

    else
    {
      if (!v14)
      {
        if (qword_27E180878 != -1)
        {
          swift_once();
        }

        v20 = qword_27E181BF8;

        sub_23B7BBD90();
        CGRectGetWidth(*(a2 + 8));
        sub_23B7BBD90();
        sub_23B7BC6A0();
        sub_23B7BBD80();
        v42.n128_u8[0] = v49.n128_u8[8];
        v35.n128_u8[0] = v50.n128_u8[8];
        v80 = 0;
        v91.n128_u64[0] = v20;
        v91.n128_u64[1] = v49.n128_u64[0];
        v92.n128_u8[0] = v49.n128_u8[8];
        v92.n128_u64[1] = v50.n128_u64[0];
        v93[0] = v50.n128_u8[8];
        *&v93[8] = v51;
        v93[24] = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CE0, &qword_23B7C08D8);
        sub_23B7B8728();
        sub_23B7BC090();
        v91 = v57;
        v92 = v58;
        *v93 = v59[0];
        *&v93[9] = *(v59 + 9);
        sub_23B7B87AC(&v91);
        v71 = v96;
        v72[0] = *v97;
        LOWORD(v72[1]) = *&v97[16];
        v67 = *v93;
        v68 = *&v93[16];
        v69 = v94;
        v70 = v95;
        v65 = v91;
        v66 = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CF0, &qword_23B7C08E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CF8, &qword_23B7C08E8);
        sub_23B7B87B8();
        sub_23B7B8868();
        sub_23B7BC090();
LABEL_23:

        goto LABEL_24;
      }

      v24 = sub_23B7BC690();
      v26 = v25;
      sub_23B7B6D04(&v91);
      v39 = v94;
      v40 = v95;
      v35 = v91;
      v36 = v92;
      v37 = *v93;
      v38 = *&v93[16];
      v43 = v92;
      v44 = *v93;
      v41 = v96;
      v42 = v91;
      v45 = *&v93[16];
      v46 = v94;
      v47 = v95;
      v48 = v96;
      sub_23B779B38(&v35, &v73, &qword_27E181D30, &qword_23B7C0900);
      sub_23B7826E8(&v42, &qword_27E181D30, &qword_23B7C0900);
      v54 = v39;
      v55 = v40;
      v56 = v41;
      v50 = v35;
      v51 = v36;
      v52 = v37;
      v53 = v38;
      v49.n128_u64[0] = v24;
      v49.n128_u64[1] = v26;
      v62 = v40;
      v63 = v41;
      v60 = v38;
      v61 = v39;
      v59[0] = v36;
      v59[1] = v37;
      v57 = v49;
      v58 = v35;
      sub_23B7B8998(&v57);
    }

    v96 = v62;
    *v97 = v63;
    v97[16] = v64;
    *v93 = v59[0];
    *&v93[16] = v59[1];
    v94 = v60;
    v95 = v61;
    v91 = v57;
    v92 = v58;
    sub_23B779B38(&v49, &v73, &qword_27E181D10, &qword_23B7C08F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181D10, &qword_23B7C08F0);
    sub_23B7826A0(&qword_27E181D08, &qword_27E181D10, &qword_23B7C08F0, MEMORY[0x277CE11A8]);
    sub_23B7BC090();
    v96 = v87;
    *v97 = v88;
    v97[16] = v89;
    *v93 = v83;
    *&v93[16] = v84;
    v94 = v85;
    v95 = v86;
    v91 = v81;
    v92 = v82;
    sub_23B7B8990(&v91);
    v71 = v96;
    v72[0] = *v97;
    LOWORD(v72[1]) = *&v97[16];
    v67 = *v93;
    v68 = *&v93[16];
    v69 = v94;
    v70 = v95;
    v65 = v91;
    v66 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CF0, &qword_23B7C08E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CF8, &qword_23B7C08E8);
    sub_23B7B87B8();
    sub_23B7B8868();
    sub_23B7BC090();
    sub_23B7826E8(&v49, &qword_27E181D10, &qword_23B7C08F0);
LABEL_24:
    v87 = v78;
    v88 = *v79;
    v89 = *&v79[16];
    v83 = v75[0];
    v84 = v75[1];
    v85 = v76;
    v86 = v77;
    v81 = v73;
    v82 = v74;
    sub_23B7B88EC(&v73);
    v71 = v78;
    v72[0] = *v79;
    *(v72 + 15) = *&v79[15];
    goto LABEL_25;
  }

  v13 = *(a2 + 40);
  if (*(a2 + 48) != 1)
  {

    sub_23B7BCA10();
    v15 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    v16 = sub_23B779D74(v13, 0);
    (*(v5 + 8))(v7, v4, v16);
  }

  if (qword_27E180878 != -1)
  {
    swift_once();
  }

  v17 = qword_27E181BF8;

  sub_23B7BBD90();
  sub_23B7BBD90();
  CGRectGetHeight(*(a2 + 8));
  sub_23B7BC6A0();
  sub_23B7BBD80();
  v73.n128_u64[0] = v17;
  v73.n128_u64[1] = v81.n128_u64[0];
  v74.n128_u8[0] = v81.n128_u8[8];
  v74.n128_u64[1] = v82.n128_u64[0];
  LOBYTE(v75[0]) = v82.n128_u8[8];
  *(v75 + 8) = v83;
  sub_23B7B89A0(&v73);
  v71 = v78;
  v72[0] = *v79;
  *(v72 + 15) = *&v79[15];
LABEL_25:
  v67 = v75[0];
  v68 = v75[1];
  v69 = v76;
  v70 = v77;
  v65 = v73;
  v66 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CE0, &qword_23B7C08D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181D20, &qword_23B7C08F8);
  sub_23B7B8728();
  sub_23B7B88F8();
  sub_23B7BC090();
  v28 = *v97;
  v29 = v34;
  *(v34 + 96) = v96;
  *(v29 + 112) = v28;
  *(v29 + 127) = *&v97[15];
  v30 = *&v93[16];
  *(v29 + 32) = *v93;
  *(v29 + 48) = v30;
  v31 = v95;
  *(v29 + 64) = v94;
  *(v29 + 80) = v31;
  result = v92;
  *v29 = v91;
  *(v29 + 16) = result;
  return result;
}

double sub_23B7B6D04@<D0>(uint64_t a2@<X8>)
{
  if (qword_27E180878 != -1)
  {
    swift_once();
  }

  v3 = qword_27E181BF8;

  sub_23B7BBD90();
  sub_23B7BC6A0();
  sub_23B7BBD80();

  sub_23B7BBD90();
  sub_23B7BBD90();
  sub_23B7BBD90();
  sub_23B7BC6A0();
  sub_23B7BBD80();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v3;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  result = *&v15;
  *(a2 + 96) = v15;
  return result;
}

double sub_23B7B6E9C@<D0>(uint64_t a2@<X8>)
{
  if (qword_27E180878 != -1)
  {
    swift_once();
  }

  v3 = qword_27E181BF8;
  v4 = qword_27E180840;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_23B7BBD90();
  sub_23B7BC6A0();
  sub_23B7BBD80();

  sub_23B7BBD90();
  sub_23B7BBD90();
  sub_23B7BC6A0();
  sub_23B7BBD80();
  *a2 = v3;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v11;
  *(a2 + 56) = v3;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  result = *&v16;
  *(a2 + 96) = v16;
  return result;
}

uint64_t sub_23B7B70EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_23B7B7260@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_23B7B84B8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MaskView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_23B7B8640(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for MaskView);
  *a2 = sub_23B7B86A8;
  a2[1] = v7;
  return result;
}

char *sub_23B7B7368(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1808E8, &qword_23B7BDAB0);
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

uint64_t sub_23B7B7474(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1808E8, &qword_23B7BDAB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23B7C06A0;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v12 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = a3;
  }

  else
  {
    v13 = a5;
  }

  *(v11 + 48) = v13;
  *(v11 + 56) = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181368, &qword_23B7BEAC8);
  sub_23B7826A0(&qword_27E181370, &qword_27E181368, &qword_23B7BEAC8, MEMORY[0x277D83970]);
  v15 = sub_23B7BC880();

  return v15;
}

unint64_t sub_23B7B759C()
{
  result = qword_27E181C50;
  if (!qword_27E181C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181C48, &qword_23B7C0780);
    sub_23B7B7688(&qword_27E1809C0, type metadata accessor for LegacyAppExtensionHostView, &unk_23B7BDB94);
    sub_23B7B7688(&qword_27E181620, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181C50);
  }

  return result;
}

uint64_t sub_23B7B7688(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23B7B76D0()
{
  result = qword_27E181C58;
  if (!qword_27E181C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181C18, &qword_23B7C0758);
    sub_23B7B759C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181C58);
  }

  return result;
}

uint64_t sub_23B7B777C()
{
  v1 = type metadata accessor for ManagedAppView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_23B779D74(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181508, &qword_23B7BEDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23B7BBE50();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0, &qword_23B7BE160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23B7BBCE0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v5 + v1[7];
  v11 = type metadata accessor for LegacyAppExtensionHostView.Configuration(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_23B7BB970();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C88, &qword_23B7C07B0);

  v13 = v5 + v1[10];
  v14 = sub_23B7BB860();
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C78, &qword_23B7C07A0);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_23B7B7A7C()
{
  type metadata accessor for ManagedAppView(0);

  return sub_23B7B5C98();
}

uint64_t sub_23B7B7B1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C90, &unk_23B7C0810);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0, &unk_23B7BEB90);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C88, &qword_23B7C07B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C78, &qword_23B7C07A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[10];
    goto LABEL_9;
  }

  v15 = *(a1 + a3[11] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23B7B7CFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C90, &unk_23B7C0810);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0, &unk_23B7BEB90);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C88, &qword_23B7C07B0);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[7];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C78, &qword_23B7C07A0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[11] + 8) = (a2 - 1);
          return result;
        }

        v9 = result;
        v10 = *(result - 8);
        v11 = a4[10];
      }
    }
  }

  v15 = *(v10 + 56);

  return v15(a1 + v11, a2, a2, v9);
}

void sub_23B7B7EC4(uint64_t a1)
{
  sub_23B78A01C(319, &qword_27E180988, &type metadata for ManagedContentStyle.Style, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_23B7B8148(319, &qword_27E181810, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23B7B8148(319, &qword_27E180C08, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_23B7B80E4(319);
        if (v4 <= 0x3F)
        {
          sub_23B78A01C(319, &qword_27E181CB0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_23B7B8148(319, &qword_27E181CB8, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_23B7B8148(319, &qword_27E181CC0, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23B7B80E4(uint64_t a1)
{
  if (!qword_27E181CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E180968, "$:");
    v1 = sub_23B7BC5A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E181CA8);
    }
  }
}

void sub_23B7B8148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_23B7B8228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 48);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C90, &unk_23B7C0810);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B7B82F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 48) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C90, &unk_23B7C0810);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23B7B839C(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_23B78A01C(319, &qword_27E180988, &type metadata for ManagedContentStyle.Style, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_23B7B8148(319, &qword_27E181810, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B7B84B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B7B8520()
{
  v1 = (type metadata accessor for MaskView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_23B779D74(*(v0 + v3 + 40), *(v0 + v3 + 48));
  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181508, &qword_23B7BEDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23B7BBE50();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23B7B8640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_23B7B86A8@<D0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for MaskView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  *&result = sub_23B7B61DC(v5, a2).n128_u64[0];
  return result;
}

unint64_t sub_23B7B8728()
{
  result = qword_27E181CE8;
  if (!qword_27E181CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181CE0, &qword_23B7C08D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181CE8);
  }

  return result;
}

unint64_t sub_23B7B87B8()
{
  result = qword_27E181D00;
  if (!qword_27E181D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181CF0, &qword_23B7C08E0);
    sub_23B7826A0(&qword_27E181D08, &qword_27E181D10, &qword_23B7C08F0, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181D00);
  }

  return result;
}

unint64_t sub_23B7B8868()
{
  result = qword_27E181D18;
  if (!qword_27E181D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181CF8, &qword_23B7C08E8);
    sub_23B7B8728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181D18);
  }

  return result;
}

unint64_t sub_23B7B88F8()
{
  result = qword_27E181D28;
  if (!qword_27E181D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181D20, &qword_23B7C08F8);
    sub_23B7B87B8();
    sub_23B7B8868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181D28);
  }

  return result;
}

void *sub_23B7B8A34(uint64_t a1, uint64_t a2)
{
  v8 = sub_23B7BC080();
  MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_23B7BC090();
}

void *sub_23B7B8B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_23B7BC080();
  MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_23B7BC090();
}

void *sub_23B7B8C24@<X0>(_BYTE *a1@<X8>)
{
  sub_23B7ACFFC();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

void *sub_23B7B8CC0@<X0>(_BYTE *a1@<X8>)
{
  sub_23B7AD214();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t sub_23B7B8D5C@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_23B7BBFA0();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (*(v1 + 8) == 1)
  {
    *a1 = v8;
  }

  else
  {

    sub_23B7BCA10();
    v9 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    v10 = sub_23B779D74(v8, 0);
    return (*(v4 + 8))(v7, v3, v10);
  }

  return result;
}

uint64_t ManagedContentView.init(primaryLabel:secondaryLabel:tertiaryLabel:quaternaryLabel:offerState:offerAction:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a7@<W6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t a24)
{
  LODWORD(v72) = a7;
  v78 = a4;
  LODWORD(v77) = a3;
  v76 = a2;
  v75 = a1;
  v82 = a15;
  v80 = a14;
  v73 = a13;
  LODWORD(v69) = a12;
  v74 = a11;
  v68 = a10;
  v71 = a21;
  v79 = a17;
  MEMORY[0x28223BE20](a1);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ManagedAppCellContext(255, a23, a24, v27);
  v29 = sub_23B7BCB30();
  v93 = *(v29 - 8);
  v94 = v29;
  MEMORY[0x28223BE20](v29);
  v88 = &v66 - v30;
  v31 = *a18;
  v86 = *(a18 + 8);
  v87 = v31;
  v85 = *(a18 + 16);
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = swift_getKeyPath();
  *(a9 + 24) = 0;
  *(a9 + 32) = swift_getKeyPath();
  *(a9 + 40) = 0;
  v89 = a24;
  v90 = a23;
  v33 = a9 + *(type metadata accessor for ManagedContentView(0, a23, a24, v32) + 44);
  v34 = *(v28 - 8);
  v83 = *(v34 + 56);
  v84 = v33;
  v92 = v28;
  v81 = v34 + 56;
  v35 = v83();
  v91 = v26;
  v71(v35);
  v78 = sub_23B7BC370();
  v77 = v36;
  LODWORD(v75) = v37;
  v76 = v38;
  sub_23B7BBFF0();
  v39 = sub_23B7BC000();

  if (v39)
  {

    v72 = 0;
    v71 = 0;
    v70 = 0;
    v67 = 0;
  }

  else
  {
    v72 = sub_23B7BC370();
    v71 = v40;
    v67 = v41;
    v70 = v42 & 1;
  }

  sub_23B7BBFF0();
  v43 = sub_23B7BC000();

  if (v43)
  {

    v74 = 0;
    v73 = 0;
    v69 = 0;
    v44 = 0;
  }

  else
  {
    v74 = sub_23B7BC370();
    v73 = v45;
    v44 = v46;
    v69 = v47 & 1;
  }

  sub_23B7BBFF0();
  v48 = sub_23B7BC000();

  if (v48)
  {

    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v49 = sub_23B7BC370();
    v50 = v53;
    v52 = v54;
    v51 = v55 & 1;
  }

  v57 = v86;
  v56 = v87;
  v95[0] = v87;
  v95[1] = v86;
  v58 = v85;
  v96 = v85;
  v59 = swift_allocObject();
  *(v59 + 16) = a19;
  *(v59 + 24) = a20;
  *(v59 + 32) = v56;
  *(v59 + 40) = v57;
  *(v59 + 48) = v58;
  v65.n128_u64[1] = v50;
  v64 = v44;
  v65.n128_u64[0] = v49;
  *(&v63 + 1) = v73;
  *&v63 = v74;
  v60 = v88;
  v61 = sub_23B7B4450(v91, v78, v77, v75 & 1, v76, v72, v71, v70, v88, v67, v63, v69, v64, v65, v51, v52, v95, sub_23B7B96A4, v59, v90, v89);
  (v83)(v60, 0, 1, v92, v61);
  sub_23B781F9C(v56, v57, v58);
  return (*(v93 + 40))(v84, v60, v94);
}

void *sub_23B7B9550@<X0>(_BYTE *a1@<X8>)
{
  sub_23B7ACFFC();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

void *sub_23B7B95EC@<X0>(_BYTE *a1@<X8>)
{
  sub_23B7AD214();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t ManagedContentView.init(primaryLabel:secondaryLabel:tertiaryLabel:quaternaryLabel:offerState:offerAction:icon:)@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v85 = a8;
  v77 = a7;
  v75 = a6;
  v83 = a9;
  MEMORY[0x28223BE20](a1);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ManagedAppCellContext(255, a11, a12, v19);
  v21 = sub_23B7BCB30();
  v79 = *(v21 - 8);
  v80 = v21;
  MEMORY[0x28223BE20](v21);
  v76 = &v59 - v22;
  v73 = a12;
  v74 = a11;
  v24 = type metadata accessor for ManagedContentView(0, a11, a12, v23);
  v81 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v59 - v25;
  v27 = *(a5 + 8);
  v72 = *a5;
  v70 = v27;
  v69 = *(a5 + 16);
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  *(v26 + 2) = swift_getKeyPath();
  v26[24] = 0;
  *(v26 + 4) = swift_getKeyPath();
  v26[40] = 0;
  v82 = v24;
  v28 = *(v20 - 8);
  v29 = *(v28 + 56);
  v68 = &v26[*(v24 + 44)];
  v78 = v20;
  v67 = v29;
  v66 = v28 + 56;
  v30 = v29();
  v71 = v18;
  v85(v30);
  v31 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v65 = sub_23B7BCC60();
  v64 = v32;
  v33 = *(a2 + 3);
  v85 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v33);
  v34 = sub_23B7BC9B0();
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if ((v34 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v85, *(v85 + 3));
    v35 = sub_23B7BCC60();
    v37 = MEMORY[0x277D84F90];
  }

  v61 = v37;
  v62 = v36;
  v63 = v35;
  v38 = a3;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  if (sub_23B7BC9B0())
  {
    v60 = 0;
    v59 = 0;
    v39 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v60 = sub_23B7BCC60();
    v59 = v40;
    v39 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  if (sub_23B7BC9B0())
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v41 = sub_23B7BCC60();
    v42 = v44;
    v43 = MEMORY[0x277D84F90];
  }

  v45 = v72;
  v46 = v70;
  v86[0] = v72;
  v86[1] = v70;
  v47 = v69;
  v87 = v69;
  v48 = swift_allocObject();
  v49 = v77;
  *(v48 + 16) = v75;
  *(v48 + 24) = v49;
  *(v48 + 32) = v45;
  *(v48 + 40) = v46;
  *(v48 + 48) = v47;
  v58.n128_u64[0] = v41;
  v58.n128_u64[1] = v42;
  v57 = v39;
  *(&v56 + 1) = v59;
  *&v56 = v60;
  v50 = v76;
  v51 = sub_23B7B4450(v71, v65, v64, 0, MEMORY[0x277D84F90], v63, v62, 0, v76, v61, v56, 0, v57, v58, 0, v43, v86, sub_23B7BB6A0, v48, v74, v73);
  (v67)(v50, 0, 1, v78, v51);
  sub_23B781F9C(v45, v46, v47);
  (*(v79 + 40))(v68, v50, v80);
  v53 = v81;
  v52 = v82;
  (*(v81 + 16))(v83, v26, v82);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(v85);
  v54 = __swift_destroy_boxed_opaque_existential_0(v84);
  return (*(v53 + 8))(v26, v52, v54);
}

uint64_t ManagedContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v166 = a3;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = type metadata accessor for HeaderManagedAppCell(0, v5, v4, a2);
  v143 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v142 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v146 = &v138 - v9;
  v11 = type metadata accessor for DefaultManagedAppCell(255, v5, v4, v10);
  v169 = v6;
  v12 = sub_23B7BC0A0();
  v151 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v149 = &v138 - v14;
  v152 = *(v11 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v150 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v158 = (&v138 - v17);
  v19 = type metadata accessor for CompactManagedAppCell(255, v5, v4, v18);
  v167 = v11;
  v20 = sub_23B7BC0A0();
  v148 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v147 = &v138 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA8, &qword_23B7BE0C0);
  MEMORY[0x28223BE20](v22 - 8);
  v154 = (&v138 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0, &unk_23B7BEB90);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v153 = (&v138 - v26);
  v170 = v19;
  v141 = *(v19 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v145 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v144 = &v138 - v29;
  v171 = v20;
  v168 = v12;
  v30 = sub_23B7BC0A0();
  v161 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v30);
  v160 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v159 = &v138 - v33;
  v156 = v5;
  v157 = v4;
  v35 = type metadata accessor for ManagedAppCellContext(255, v5, v4, v34);
  v36 = sub_23B7BCB30();
  v37 = *(v36 - 8);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v138 - v39;
  v41 = *(v35 - 8);
  v42 = MEMORY[0x28223BE20](v38);
  v44 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v138 - v45;
  v165 = v30;
  v47 = sub_23B7BC0A0();
  v163 = *(v47 - 8);
  v164 = v47;
  MEMORY[0x28223BE20](v47);
  v49 = &v138 - v48;
  v155 = a1;
  (*(v37 + 16))(v40, &v162[*(a1 + 44)], v36);
  if ((*(v41 + 48))(v40, 1, v35) == 1)
  {
    (*(v37 + 8))(v40, v36);
    WitnessTable = swift_getWitnessTable();
    v51 = swift_getWitnessTable();
    v207 = WitnessTable;
    v208 = v51;
    v52 = swift_getWitnessTable();
    v53 = swift_getWitnessTable();
    v205 = v51;
    v206 = v53;
    v54 = swift_getWitnessTable();
    v203 = v52;
    v204 = v54;
    v55 = v165;
    v56 = swift_getWitnessTable();
    sub_23B7B8B2C(v56, v55, MEMORY[0x277CE1428]);
  }

  else
  {
    v140 = v49;
    v57 = v167;
    v58 = v169;
    (*(v41 + 32))(v46, v40, v35);
    sub_23B7B8D5C(&v194);
    v59 = v194;
    v60 = *(v41 + 16);
    v162 = v46;
    v60(v44, v46, v35);
    v138 = v41;
    v139 = v35;
    if (v59 > 1)
    {
      v78 = v58;
      if (v59 == 2)
      {
        v79 = v142;
        sub_23B7A9054(v44, v156, v157, v142, v61);
        v80 = swift_getWitnessTable();
        v81 = v143;
        v82 = *(v143 + 16);
        v83 = v146;
        v82(v146, v79, v78);
        v158 = *(v81 + 8);
        v158(v79, v78);
        v82(v79, v83, v78);
        v84 = swift_getWitnessTable();
        v85 = v149;
        sub_23B7B8B2C(v79, v57, v78);
        v192 = swift_getWitnessTable();
        v193 = v84;
        v86 = v171;
        swift_getWitnessTable();
        v190 = v84;
        v191 = v80;
        v87 = v168;
        swift_getWitnessTable();
        v88 = v159;
        sub_23B7B8B2C(v85, v86, v87);
        (*(v151 + 8))(v85, v87);
        v89 = v158;
        v158(v79, v78);
        v89(v146, v78);
      }

      else
      {
        v106 = v153;
        v108 = v156;
        v107 = v157;
        sub_23B7816EC(v153);
        v109 = v154;
        sub_23B781708(v154);
        v110 = v150;
        sub_23B781788(v44, v106, v109, v108, v107, v150);
        v111 = swift_getWitnessTable();
        v112 = v152;
        v113 = *(v152 + 16);
        v114 = v158;
        v113(v158, v110, v57);
        v157 = *(v112 + 8);
        v157(v110, v57);
        v113(v110, v114, v57);
        v115 = swift_getWitnessTable();
        v116 = v149;
        sub_23B7B8A34(v110, v57);
        v182 = swift_getWitnessTable();
        v183 = v111;
        v117 = v171;
        swift_getWitnessTable();
        v180 = v111;
        v181 = v115;
        v118 = v168;
        swift_getWitnessTable();
        v88 = v159;
        sub_23B7B8B2C(v116, v117, v118);
        (*(v151 + 8))(v116, v118);
        v119 = v157;
        v157(v110, v57);
        v119(v158, v57);
      }

      v76 = v88;
    }

    else if (v59)
    {
      v90 = v153;
      v92 = v156;
      v91 = v157;
      sub_23B7816EC(v153);
      v93 = v154;
      sub_23B781708(v154);
      v94 = v44;
      v95 = v150;
      sub_23B781788(v94, v90, v93, v92, v91, v150);
      v96 = swift_getWitnessTable();
      v97 = v152;
      v98 = *(v152 + 16);
      v99 = v158;
      v98(v158, v95, v57);
      v157 = *(v97 + 8);
      v157(v95, v57);
      v98(v95, v99, v57);
      v100 = v170;
      v101 = swift_getWitnessTable();
      v102 = v147;
      sub_23B7B8B2C(v95, v100, v57);
      v178 = v101;
      v179 = v96;
      v103 = v171;
      swift_getWitnessTable();
      v104 = swift_getWitnessTable();
      v176 = v96;
      v177 = v104;
      swift_getWitnessTable();
      v76 = v159;
      sub_23B7B8A34(v102, v103);
      (*(v148 + 8))(v102, v103);
      v105 = v157;
      v157(v95, v57);
      v105(v158, v57);
    }

    else
    {
      v62 = v153;
      v64 = v156;
      v63 = v157;
      sub_23B7B2D84(v153);
      v65 = v154;
      sub_23B7B2DA0(v154);
      v66 = v145;
      sub_23B7B2DBC(v44, v62, v65, v64, v63, v145);
      v67 = v170;
      v68 = swift_getWitnessTable();
      v69 = v141;
      v70 = *(v141 + 16);
      v71 = v144;
      v70(v144, v66, v67);
      v158 = *(v69 + 8);
      v158(v66, v67);
      v70(v66, v71, v67);
      v72 = swift_getWitnessTable();
      v73 = v147;
      sub_23B7B8A34(v66, v67);
      v174 = v68;
      v175 = v72;
      v74 = v171;
      swift_getWitnessTable();
      v75 = swift_getWitnessTable();
      v172 = v72;
      v173 = v75;
      swift_getWitnessTable();
      v76 = v159;
      sub_23B7B8A34(v73, v74);
      (*(v148 + 8))(v73, v74);
      v77 = v158;
      v158(v145, v67);
      v77(v144, v67);
    }

    v120 = swift_getWitnessTable();
    v121 = swift_getWitnessTable();
    v188 = v120;
    v189 = v121;
    v122 = swift_getWitnessTable();
    v123 = swift_getWitnessTable();
    v186 = v121;
    v187 = v123;
    v124 = swift_getWitnessTable();
    v184 = v122;
    v185 = v124;
    v125 = v165;
    swift_getWitnessTable();
    v127 = v160;
    v126 = v161;
    v128 = v76;
    (*(v161 + 16))(v160, v76, v125);
    v49 = v140;
    sub_23B7B8A34(v127, v125);
    v129 = *(v126 + 8);
    v129(v127, v125);
    v129(v128, v125);
    (*(v138 + 8))(v162, v139);
  }

  v130 = swift_getWitnessTable();
  v131 = swift_getWitnessTable();
  v201 = v130;
  v202 = v131;
  v132 = swift_getWitnessTable();
  v133 = swift_getWitnessTable();
  v199 = v131;
  v200 = v133;
  v134 = swift_getWitnessTable();
  v197 = v132;
  v198 = v134;
  v195 = swift_getWitnessTable();
  v196 = MEMORY[0x277CE1410];
  v135 = v164;
  swift_getWitnessTable();
  v136 = v163;
  (*(v163 + 16))(v166, v49, v135);
  return (*(v136 + 8))(v49, v135);
}

double View.managedContentStyle(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_23B7BC3E0();

  return result;
}

uint64_t objectdestroyTm_0()
{

  sub_23B776230(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_23B7BAED4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

void sub_23B7BAF68(uint64_t a1)
{
  sub_23B799054(319, &qword_27E180988, &type metadata for ManagedContentStyle.Style);
  if (v2 <= 0x3F)
  {
    sub_23B799054(319, &qword_27E1813A0, MEMORY[0x277D839B0]);
    if (v3 <= 0x3F)
    {
      sub_23B799054(319, &qword_27E1813A8, &type metadata for BinaryCompatibility);
      if (v5 <= 0x3F)
      {
        type metadata accessor for ManagedAppCellContext(255, *(a1 + 16), *(a1 + 24), v4);
        sub_23B7BCB30();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23B7BB05C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(v4 + 80) & 0xF8;
  v8 = v7 | 7;
  v9 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v6 - 1 >= a2)
  {
    goto LABEL_27;
  }

  v10 = ((v7 + 48) & ~v8) + (((((((((v9 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v6;
  v12 = v10 & 0xFFFFFFF8;
  v13 = v11 + 2;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 41) & ~v8;
    if (v5 < 0x7FFFFFFF)
    {
      v21 = *(((v9 + v19) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      v20 = v21 + 1;
    }

    else
    {
      v20 = (*(v4 + 48))(v19);
    }

    if (v20 >= 2)
    {
      return v20 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = *(a1 + v10);
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_23:
  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return (v12 | v18) + v6;
}

uint64_t sub_23B7BB204(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(v5 + 80) & 0xF8;
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = (((((((((v10 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + ((v9 + 48) & ~(v9 | 7)) + 16;
  if (v7 - 1 >= a3)
  {
    v14 = 0;
    v15 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = a3 - v7 + 2;
    if ((((((((((v10 & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + ((v9 + 48) & ~(v9 | 7)) != -16)
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_16:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v11) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *(result + v11) = 0;
      }

      else if (v14)
      {
        *(result + v11) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      result = ((result & 0xFFFFFFFFFFFFFFF8) + (v9 | 7) + 41) & ~(v9 | 7);
      if (v6 < 0x7FFFFFFF)
      {
        v21 = ((v10 + result) & 0xFFFFFFFFFFFFFFF8);
        if (((a2 + 1) & 0x80000000) != 0)
        {
          v21[2] = 0;
          v21[3] = 0;
          *v21 = a2 - 0x7FFFFFFF;
          v21[1] = 0;
        }

        else
        {
          v21[3] = a2;
        }
      }

      else
      {
        v19 = *(v5 + 56);
        v20 = a2 + 1;

        return v19(result, v20);
      }

      return result;
    }
  }

  if ((((((((((v10 & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + ((v9 + 48) & ~(v9 | 7)) == -16)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if ((((((((((v10 & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + ((v9 + 48) & ~(v9 | 7)) != -16)
  {
    v17 = a2 - v7;
    v18 = result;
    bzero(result, v11);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v11) = v16;
    }

    else
    {
      *(result + v11) = v16;
    }
  }

  else if (v14)
  {
    *(result + v11) = v16;
  }

  return result;
}

uint64_t sub_23B7BB420(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for CompactManagedAppCell(255, *a1, v5, a4);
  type metadata accessor for DefaultManagedAppCell(255, v4, v5, v6);
  sub_23B7BC0A0();
  type metadata accessor for HeaderManagedAppCell(255, v4, v5, v7);
  sub_23B7BC0A0();
  sub_23B7BC0A0();
  sub_23B7BC0A0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B7BB5BC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181DC8, &qword_23B7C0A08);
  sub_23B7BBE70();
  sub_23B7BB634();
  return swift_getWitnessTable();
}

unint64_t sub_23B7BB634()
{
  result = qword_27E181DD0;
  if (!qword_27E181DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181DC8, &qword_23B7C0A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181DD0);
  }

  return result;
}

void *sub_23B7BB6A4()
{
  sub_23B78AB48();

  return sub_23B7BBFB0();
}

uint64_t sub_23B7BB6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B79B170();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}