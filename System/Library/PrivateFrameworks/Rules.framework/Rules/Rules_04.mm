uint64_t sub_26243934C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a1;
  if (!*(*a1 + 16) || (v6 = sub_2624414FC(0x7074754F656C7572, 0xEB00000000737475), (v7 & 1) == 0))
  {
LABEL_8:
    v8 = sub_262461FB8(MEMORY[0x277D84F90]);
    if (!*(v4 + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_26243FAE0(*(v5 + 56) + 40 * v6, &v30, &qword_27FF0C5F0, &qword_262463A90);
  v33 = v30;
  v34 = v31;
  v35 = v32;
  if (!*(&v31 + 1))
  {
    sub_2623F39E0(&v33, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = v36;
  if (!*(v4 + 16))
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = sub_2624414FC(0x7074754F656C7572, 0xEB00000000737475);
  if (v10)
  {
    sub_26243FAE0(*(v4 + 56) + 40 * v9, &v30, &qword_27FF0C5F0, &qword_262463A90);
    v33 = v30;
    v34 = v31;
    v35 = v32;
    if (*(&v31 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
      if (swift_dynamicCast())
      {
        v11 = v36;
        goto LABEL_15;
      }
    }

    else
    {
      sub_2623F39E0(&v33, &qword_27FF0C5F0, &qword_262463A90);
    }
  }

LABEL_14:
  v11 = sub_262461FB8(MEMORY[0x277D84F90]);
LABEL_15:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v33 = v8;
  sub_26243ECB4(v11, sub_26243DE70, 0, isUniquelyReferenced_nonNull_native, &v33);
  if (!v2)
  {

    v29 = v33;
    if (*(v5 + 16))
    {
      v13 = sub_2624414FC(0x6572656767697274, 0xEE0073656C755264);
      if (v14)
      {
        sub_26243FAE0(*(v5 + 56) + 40 * v13, &v30, &qword_27FF0C5F0, &qword_262463A90);
        v33 = v30;
        v34 = v31;
        v35 = v32;
        if (*(&v31 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
          if (swift_dynamicCast())
          {
            v15 = v36;
            if (!*(v4 + 16))
            {
              goto LABEL_29;
            }

LABEL_24:
            v16 = sub_2624414FC(0x6572656767697274, 0xEE0073656C755264);
            if (v17)
            {
              sub_26243FAE0(*(v4 + 56) + 40 * v16, &v30, &qword_27FF0C5F0, &qword_262463A90);
              v33 = v30;
              v34 = v31;
              v35 = v32;
              if (*(&v31 + 1))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
                if (swift_dynamicCast())
                {
                  v18 = v36;
LABEL_30:
                  v19 = sub_262439BF0(v18, v15);
                  if (*(v5 + 16))
                  {
                    v20 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
                    if (v21)
                    {
                      sub_26243FAE0(*(v5 + 56) + 40 * v20, &v30, &qword_27FF0C5F0, &qword_262463A90);
                      v33 = v30;
                      v34 = v31;
                      v35 = v32;
                      if (*(&v31 + 1))
                      {
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
                        if (swift_dynamicCast())
                        {
                          v22 = v36;
                          if (!*(v4 + 16))
                          {
                            goto LABEL_42;
                          }

LABEL_38:
                          v23 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
                          if (v24)
                          {
                            sub_26243FAE0(*(v4 + 56) + 40 * v23, &v30, &qword_27FF0C5F0, &qword_262463A90);
                            v33 = v30;
                            v34 = v31;
                            v35 = v32;
                            if (*(&v31 + 1))
                            {
                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
                              if (swift_dynamicCast())
                              {
                                v25 = v36;
LABEL_43:
                                v26 = sub_262439AA4(v25, v22);

                                v27 = swift_isUniquelyReferenced_nonNull_native();
                                *&v33 = *a1;
                                sub_26243ECB4(v4, sub_26243DE70, 0, v27, &v33);

                                *a1 = v33;
                                *&v30 = v29;
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
                                sub_26241EAD8();
                                sub_2624629E8();
                                sub_26245E858(&v33, 0x7074754F656C7572, 0xEB00000000737475);
                                *&v30 = v19;
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFE0, &qword_26246BDF0);
                                sub_26243F994(&qword_2813BD3B8, &qword_27FF0CFE0, &qword_26246BDF0);
                                sub_2624629E8();
                                sub_26245E858(&v33, 0x6572656767697274, 0xEE0073656C755264);
                                *&v30 = v26;
                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
                                sub_26243F994(&qword_2813BD3C0, &qword_27FF0D390, "Η");
                                sub_2624629E8();
                                return sub_26245E858(&v33, 0x45736973656D656ELL, 0xED000073726F7272);
                              }
                            }

                            else
                            {
                              sub_2623F39E0(&v33, &qword_27FF0C5F0, &qword_262463A90);
                            }
                          }

LABEL_42:
                          v25 = MEMORY[0x277D84FA0];
                          goto LABEL_43;
                        }
                      }

                      else
                      {
                        sub_2623F39E0(&v33, &qword_27FF0C5F0, &qword_262463A90);
                      }
                    }
                  }

                  v22 = MEMORY[0x277D84FA0];
                  if (!*(v4 + 16))
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_38;
                }
              }

              else
              {
                sub_2623F39E0(&v33, &qword_27FF0C5F0, &qword_262463A90);
              }
            }

LABEL_29:
            v18 = MEMORY[0x277D84FA0];
            goto LABEL_30;
          }
        }

        else
        {
          sub_2623F39E0(&v33, &qword_27FF0C5F0, &qword_262463A90);
        }
      }
    }

    v15 = MEMORY[0x277D84FA0];
    if (!*(v4 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_262439AA4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v19 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_2623F3C50(v17))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + 72 * (v10 | (v9 << 6));
    v20[0] = *v11;
    v13 = *(v11 + 32);
    v12 = *(v11 + 48);
    v14 = *(v11 + 16);
    v21 = *(v11 + 64);
    v20[2] = v13;
    v20[3] = v12;
    v20[1] = v14;
    sub_26242706C(v20, v17);
    sub_26243A4DC(v15, v20);
    v17[2] = v15[2];
    v17[3] = v15[3];
    v18 = v16;
    v17[0] = v15[0];
    v17[1] = v15[1];
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v19;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_262439BF0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_26243A38C(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_262439CF4()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_262439D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

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

uint64_t sub_262439E04(uint64_t a1)
{
  v2 = sub_26243FD84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262439E40(uint64_t a1)
{
  v2 = sub_26243FD84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262439E7C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26243F08C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_262439EAC()
{
  sub_262462CF8();
  sub_262462778();
  sub_262462778();
  return sub_262462D38();
}

uint64_t sub_262439F14(uint64_t a1)
{
  sub_262462778();

  return sub_262462778();
}

uint64_t sub_262439F64(uint64_t a1)
{
  sub_262462CF8();
  sub_262462778();
  sub_262462778();
  return sub_262462D38();
}

uint64_t sub_262439FC8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_262462C58(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_262462C58();
    }
  }

  return result;
}

uint64_t sub_26243A06C()
{
  v1 = 0x737465737361;
  if (*v0 != 1)
  {
    v1 = 0x7365676465;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_26243A0C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26243F270(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26243A0E8(uint64_t a1)
{
  v2 = sub_26243F61C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26243A124(uint64_t a1)
{
  v2 = sub_26243F61C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26243A160@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26243F380(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_26243A190(uint64_t a1)
{
  v4 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v4;
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = *(v1 + 80);
  v5 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  v6 = swift_task_alloc();
  *(v2 + 104) = v6;
  *v6 = v2;
  v6[1] = sub_26243A250;
  v7 = MEMORY[0x277D84F90];

  return sub_2624369C0(a1, v7);
}

uint64_t sub_26243A250(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26243FFD4, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_26243A38C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_262462CF8();
  sub_262462778();
  v8 = sub_262462D38();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_262462C58() & 1) != 0)
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

    sub_26243B3AC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26243A4DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v49 = *(a2 + 32);
  v50 = v6;
  v7 = *(a2 + 16);
  v47 = *a2;
  v48 = v7;
  v8 = *v2;
  v9 = *(a2 + 48);
  v44 = v49;
  v45 = v9;
  v51 = *(a2 + 64);
  v46 = *(a2 + 64);
  v42 = v47;
  v43 = v5;
  sub_262462CF8();
  NemesisError.hash(into:)(&v37);
  v10 = sub_262462D38();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(v8 + 48) + 72 * v12;
      v42 = *v14;
      v16 = *(v14 + 32);
      v15 = *(v14 + 48);
      v17 = *(v14 + 64);
      v43 = *(v14 + 16);
      v44 = v16;
      v46 = v17;
      v45 = v15;
      v33 = *(v14 + 16);
      v34 = *(v14 + 32);
      v35 = *(v14 + 48);
      v36 = *(v14 + 64);
      v32 = *v14;
      sub_26242706C(&v42, v30);
      v18 = _s5Rules12NemesisErrorO2eeoiySbAC_ACtFZ_0(&v32, &v47);
      v39 = v34;
      v40 = v35;
      v41 = v36;
      v37 = v32;
      v38 = v33;
      sub_2623F3C50(&v37);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v30[2] = v49;
    v30[3] = v50;
    v31 = v51;
    v30[0] = v47;
    v30[1] = v48;
    sub_2623F3C50(v30);
    v23 = *(v8 + 48) + 72 * v12;
    v25 = *(v23 + 16);
    v24 = *(v23 + 32);
    v26 = *(v23 + 64);
    v35 = *(v23 + 48);
    v36 = v26;
    v32 = *v23;
    v33 = v25;
    v34 = v24;
    v27 = *(v23 + 48);
    *(a1 + 32) = *(v23 + 32);
    *(a1 + 48) = v27;
    *(a1 + 64) = *(v23 + 64);
    v28 = *(v23 + 16);
    *a1 = *v23;
    *(a1 + 16) = v28;
    sub_26242706C(&v32, v29);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v49;
    v40 = v50;
    v41 = v51;
    v37 = v47;
    v38 = v48;
    *&v32 = *v3;
    sub_26242706C(&v37, &v42);
    sub_26243B52C(&v37, v12, isUniquelyReferenced_nonNull_native);
    *v3 = v32;
    v20 = v50;
    *(a1 + 32) = v49;
    *(a1 + 48) = v20;
    *(a1 + 64) = v51;
    v21 = v48;
    result = 1;
    *a1 = v47;
    *(a1 + 16) = v21;
  }

  return result;
}

uint64_t sub_26243A748(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_262462CF8();
  sub_262462778();
  sub_262462778();
  v11 = sub_262462D38();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_262462C58() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_262462C58() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = (*(v28 + 48) + 32 * v14);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *a1 = *v22;
    a1[1] = v23;
    a1[2] = v24;
    a1[3] = v25;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_26243B744(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_26243A920(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19 = *MEMORY[0x277D85DE8];
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_26243E2A4(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_26243FE30(v12, &v16);
    v13 = v16;
    MEMORY[0x266728E90](v12, -1, -1);
    v9 = v13;
  }

  return v9 & 1;
}

uint64_t sub_26243AAA0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19 = *MEMORY[0x277D85DE8];
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_26243E538(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_26243FA60(v12, &v16);
    v13 = v16;
    MEMORY[0x266728E90](v12, -1, -1);
    v9 = v13;
  }

  return v9 & 1;
}

uint64_t sub_26243AC20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D818, &qword_26246BE00);
  result = sub_262462A08();
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
      sub_262462CF8();
      sub_262462778();
      result = sub_262462D38();
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

uint64_t sub_26243AE80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D820, &qword_26246BE08);
  result = sub_262462A08();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v20 = *(v3 + 48) + 72 * (v17 | (v6 << 6));
      v21 = *(v20 + 16);
      v22 = *(v20 + 48);
      v41 = *(v20 + 32);
      v42 = v22;
      v23 = *(v20 + 16);
      v39 = *v20;
      v40 = v23;
      v24 = *(v20 + 48);
      v36 = v41;
      v37 = v24;
      v43 = *(v20 + 64);
      v38 = *(v20 + 64);
      v34 = v39;
      v35 = v21;
      sub_262462CF8();
      NemesisError.hash(into:)(v33);
      result = sub_262462D38();
      v25 = -1 << *(v5 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 72 * v13;
      v15 = v42;
      *(v14 + 32) = v41;
      *(v14 + 48) = v15;
      *(v14 + 64) = v43;
      v16 = v40;
      *v14 = v39;
      *(v14 + 16) = v16;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero((v3 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v32;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26243B128(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D830, &qword_26246BE18);
  result = sub_262462A08();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
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
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_262462CF8();
      sub_262462778();
      sub_262462778();
      result = sub_262462D38();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v32;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26243B3AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_26243AC20(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26243B910();
      goto LABEL_16;
    }

    sub_26243BD68(v8 + 1);
  }

  v10 = *v4;
  sub_262462CF8();
  sub_262462778();
  result = sub_262462D38();
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

      result = sub_262462C58();
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
  result = sub_262462C68();
  __break(1u);
  return result;
}

uint64_t sub_26243B52C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(result + 48);
  v44 = *(result + 32);
  v45 = v7;
  v46 = *(result + 64);
  v8 = *(result + 16);
  v42 = *result;
  v43 = v8;
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26243AE80(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_26243BA6C();
      goto LABEL_12;
    }

    sub_26243BFA0(v9 + 1);
  }

  v11 = *v3;
  v12 = *(v6 + 48);
  v39 = *(v6 + 32);
  v40 = v12;
  v41 = *(v6 + 64);
  v13 = *(v6 + 16);
  v37 = *v6;
  v38 = v13;
  sub_262462CF8();
  NemesisError.hash(into:)(v35);
  result = sub_262462D38();
  v14 = -1 << *(v11 + 32);
  a2 = result & ~v14;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    do
    {
      v16 = *(v11 + 48) + 72 * a2;
      v37 = *v16;
      v18 = *(v16 + 32);
      v17 = *(v16 + 48);
      v19 = *(v16 + 64);
      v38 = *(v16 + 16);
      v39 = v18;
      v41 = v19;
      v40 = v17;
      v20 = *(v16 + 48);
      v32 = *(v16 + 32);
      v33 = v20;
      v34 = *(v16 + 64);
      v21 = *(v16 + 16);
      v30 = *v16;
      v31 = v21;
      sub_26242706C(&v37, v35);
      v22 = _s5Rules12NemesisErrorO2eeoiySbAC_ACtFZ_0(&v30, &v42);
      v35[2] = v32;
      v35[3] = v33;
      v36 = v34;
      v35[0] = v30;
      v35[1] = v31;
      result = sub_2623F3C50(v35);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v24 = *(v23 + 48) + 72 * a2;
  *(v24 + 64) = v46;
  v25 = v45;
  *(v24 + 32) = v44;
  *(v24 + 48) = v25;
  v26 = v43;
  *v24 = v42;
  *(v24 + 16) = v26;
  v27 = *(v23 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v23 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_262462C68();
  __break(1u);
  return result;
}

uint64_t sub_26243B744(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_26243B128(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_26243BBFC();
      goto LABEL_22;
    }

    sub_26243C224(v12 + 1);
  }

  v14 = *v6;
  sub_262462CF8();
  sub_262462778();
  sub_262462778();
  result = sub_262462D38();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    while (1)
    {
      v19 = (v18 + 32 * a5);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_262462C58(), (result & 1) != 0))
      {
        if (v20 == a3 && v21 == a4)
        {
          break;
        }

        result = sub_262462C58();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v17;
      if (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_262462C68();
    __break(1u);
  }

LABEL_22:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void *sub_26243B910()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D818, &qword_26246BE00);
  v2 = *v0;
  v3 = sub_2624629F8();
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

void *sub_26243BA6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D820, &qword_26246BE08);
  v2 = *v0;
  v3 = sub_2624629F8();
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
        v17 = 72 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = v18[1];
        v19 = v18[2];
        v21 = v18[3];
        v24 = *(v18 + 64);
        v23[3] = v21;
        v23[0] = *v18;
        v23[1] = v20;
        v23[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x41uLL);
        result = sub_26242706C(v23, v22);
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

void *sub_26243BBFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D830, &qword_26246BE18);
  v2 = *v0;
  v3 = sub_2624629F8();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

uint64_t sub_26243BD68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D818, &qword_26246BE00);
  result = sub_262462A08();
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
      sub_262462CF8();

      sub_262462778();
      result = sub_262462D38();
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

uint64_t sub_26243BFA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D820, &qword_26246BE08);
  result = sub_262462A08();
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v20 = *(v3 + 48) + 72 * (v17 | (v6 << 6));
      v22 = *(v20 + 32);
      v21 = *(v20 + 48);
      v23 = *(v20 + 16);
      v44 = *(v20 + 64);
      v42 = v22;
      v43 = v21;
      v40 = *v20;
      v41 = v23;
      v24 = *(v20 + 48);
      v37 = *(v20 + 32);
      v38 = v24;
      v39 = *(v20 + 64);
      v25 = *(v20 + 16);
      v35 = *v20;
      v36 = v25;
      sub_262462CF8();
      sub_26242706C(&v40, v33);
      NemesisError.hash(into:)(v34);
      result = sub_262462D38();
      v26 = -1 << *(v5 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 72 * v12;
      v14 = v41;
      v15 = v42;
      v16 = v43;
      *(v13 + 64) = v44;
      *(v13 + 32) = v15;
      *(v13 + 48) = v16;
      *(v13 + 16) = v14;
      *v13 = v40;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
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

uint64_t sub_26243C224(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D830, &qword_26246BE18);
  result = sub_262462A08();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_262462CF8();

      sub_262462778();
      sub_262462778();
      result = sub_262462D38();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

char *sub_26243C488(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D6A0, &unk_26246AEF0);
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

char *sub_26243C58C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D8E0, &unk_26246C210);
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

void *sub_26243C690(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFB8, &unk_262467E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCB0, &qword_2624669F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26243C840(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D868, &qword_26246BE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D860, &qword_26246BE48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26243C974(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D808, &qword_26246BDE8);
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

void *sub_26243CA80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D800, &unk_26246BDD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26243CBD8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_26243CD20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26243CFA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26243CD40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26243D0B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26243CD60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26243D1B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26243CD80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26243D2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26243CDA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26243D440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26243CDC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26243D574(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26243CEA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_26243CEE8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

char *sub_26243CF44(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26243D6A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26243CF64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26243D7D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26243CF84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26243D920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26243CFA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D880, &qword_26246BE68);
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

char *sub_26243D0B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D6A0, &unk_26246AEF0);
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

void *sub_26243D1B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFB8, &unk_262467E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCB0, &qword_2624669F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26243D2F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D8F0, &qword_26246C230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D8F8, &qword_26246C238);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26243D440(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D8B8, &qword_26246C1E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D8C0, &qword_26246C1E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26243D574(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D868, &qword_26246BE50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D860, &qword_26246BE48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26243D6A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D828, &qword_26246BE10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26243D7D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D858, &qword_26246BE40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D850, &qword_26246BE38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26243D920(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D808, &qword_26246BDE8);
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

uint64_t sub_26243DA2C(uint64_t a1, char a2, void *a3)
{
  v32 = *(a1 + 16);
  if (!v32)
  {
  }

  v31 = a1;
  v4 = 0;
  v5 = a1 + 32;
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_262462C78();
      __break(1u);
      goto LABEL_23;
    }

    v33 = v5;
    sub_26243FAE0(v5, &v43, &qword_27FF0D850, &qword_26246BE38);
    v6 = v43;
    v7 = v45;
    v8 = v46;
    v39 = v43;
    v40 = v44;
    v41 = v45;
    v42 = v46;
    v35 = v47;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v9 = *a3;
    v10 = v44;
    v12 = sub_2624415C0(v43, v44, v45, v46);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_20;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_262461DB0();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 32 * v12);
    *v20 = v6;
    v20[1] = v10;
    v20[2] = v7;
    v20[3] = v8;
    v21 = v19[7] + 56 * v12;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    *(v21 + 48) = v38;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    *v21 = v22;
    v25 = v19[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_21;
    }

    ++v4;
    v19[2] = v27;
    v5 = v33 + 88;
    a2 = 1;
    a1 = v31;
    if (v32 == v4)
    {
    }
  }

  sub_262460A9C(v15, a2 & 1);
  v17 = sub_2624415C0(v6, v10, v7, v8);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_22;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v28 = swift_allocError();
  swift_willThrow();
  v51 = v28;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_26243F964(&v35);

    return MEMORY[0x266728D50](v51);
  }

LABEL_23:
  sub_262462A28();
  MEMORY[0x266728460](0xD00000000000001BLL, 0x80000002624718E0);
  sub_262462AA8();
  MEMORY[0x266728460](39, 0xE100000000000000);
  result = sub_262462AC8();
  __break(1u);
  return result;
}

char *sub_26243DD7C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_26243C974(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26243DE70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_26243FAE0((a1 + 2), (a2 + 2), &qword_27FF0C5F0, &qword_262463A90);
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_26243DECC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_262462C58() & 1;
  }
}

uint64_t sub_26243DF24(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 32 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26243DFBC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_262462C58(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      return sub_262462C58() & 1;
    }
  }

  return result;
}

uint64_t sub_26243E05C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26243FAE0(*(v4 + 56) + 40 * v13, &v22, &qword_27FF0C5F0, &qword_262463A90);
    v20 = v23;
    v21 = v22;
    v17 = v24;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v19 = v1[5];
      *&v22 = v16;
      *(&v22 + 1) = v15;
      v24 = v20;
      v23 = v21;
      v25 = v17;
      v19(&v22);
      return sub_2623F39E0(&v22, &qword_27FF0D810, &qword_26246BDF8);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26243E1B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266728570](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26243A38C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26243E250(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26243E2A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v22 = 0;
  v4 = 0;
  v5 = *(a2 + 16);
  v24 = v5;
  v25 = a2 + 32;
  v6 = a3 + 56;
  while (v4 != v5)
  {
    while (1)
    {
      if (v4 >= v5)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_27;
      }

      v8 = (v25 + 16 * v4);
      v10 = *v8;
      v9 = v8[1];
      sub_262462CF8();

      sub_262462778();
      v11 = sub_262462D38();
      v12 = -1 << *(a3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) != 0)
      {
        break;
      }

LABEL_5:

LABEL_6:
      v4 = v7;
      if (v7 == v5)
      {
        return 0;
      }
    }

    v16 = (*(a3 + 48) + 16 * v13);
    v17 = *v16 == v10 && v16[1] == v9;
    if (!v17)
    {
      v18 = ~v12;
      while ((sub_262462C58() & 1) == 0)
      {
        v13 = (v13 + 1) & v18;
        v14 = v13 >> 6;
        v15 = 1 << v13;
        if (((1 << v13) & *(v6 + 8 * (v13 >> 6))) == 0)
        {
          v5 = v24;
          goto LABEL_5;
        }

        v19 = (*(a3 + 48) + 16 * v13);
        if (*v19 == v10 && v19[1] == v9)
        {
          break;
        }
      }
    }

    v20 = *(v23 + 8 * v14);
    *(v23 + 8 * v14) = v20 | v15;
    if ((v20 & v15) != 0)
    {
      v5 = v24;
      goto LABEL_6;
    }

    v21 = v22 + 1;
    v5 = v24;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_28;
    }

    ++v22;
    v17 = v21 == *(a3 + 16);
    v4 = v7;
    result = 1;
    if (v17)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_26243E47C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26243FA8C();
  result = MEMORY[0x266728570](v2, &type metadata for LogicGraphAsset.VersionName, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_26243A748(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_26243E538(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v22 = 0;
  v3 = 0;
  v4 = *(a2 + 16);
  v25 = a2 + 32;
  v31 = a3 + 56;
  v24 = v4;
  while (2)
  {
    if (v3 == v4)
    {
      return 0;
    }

    while (1)
    {
      if (v3 >= v4)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      if (__OFADD__(v3, 1))
      {
        goto LABEL_27;
      }

      v5 = (v25 + 32 * v3);
      v7 = *v5;
      v6 = v5[1];
      v9 = v5[2];
      v8 = v5[3];
      v27 = v3 + 1;
      v28 = v3 + 1;
      sub_262462CF8();

      sub_262462778();
      sub_262462778();
      v10 = sub_262462D38();
      v11 = -1 << *(a3 + 32);
      v12 = v10 & ~v11;
      v13 = v12 >> 6;
      v14 = 1 << v12;
      if (((1 << v12) & *(v31 + 8 * (v12 >> 6))) != 0)
      {
        break;
      }

LABEL_4:

LABEL_5:
      v4 = v24;
      v3 = v28;
      if (v27 == v24)
      {
        return 0;
      }
    }

    v29 = ~v11;
    v30 = *(a3 + 48);
    while (1)
    {
      v15 = (v30 + 32 * v12);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == v7 && v15[1] == v6;
      if (v18 || (sub_262462C58() & 1) != 0)
      {
        v19 = v17 == v9 && v16 == v8;
        if (v19 || (sub_262462C58() & 1) != 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v29;
      v13 = v12 >> 6;
      v14 = 1 << v12;
      if ((*(v31 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_4;
      }
    }

    v20 = *(v23 + 8 * v13);
    *(v23 + 8 * v13) = v20 | v14;
    if ((v20 & v14) != 0)
    {
      goto LABEL_5;
    }

    v21 = v22 + 1;
    v3 = v28;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_28;
    }

    ++v22;
    v4 = v24;
    result = 1;
    if (v21 != *(a3 + 16))
    {
      continue;
    }

    return result;
  }
}

void *sub_26243E76C(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 4)
  {
    v36 = v2;
    v9 = i[1];
    v38 = *i;
    v39 = v9;
    v10 = i[3];
    v40 = i[2];
    v41 = v10;
    v11 = v40;
    v12 = v10;
    sub_26243FAE0(&v38, v37, &qword_27FF0D860, &qword_26246BE48);
    sub_26243FAE0(&v38, v37, &qword_27FF0D860, &qword_26246BE48);

    v14 = sub_2624415C0(v11, *(&v11 + 1), v12, *(&v12 + 1));
    v15 = v1[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    if (v1[3] < v17)
    {
      sub_262460DAC(v17, 1);
      v1 = v42;
      v19 = sub_2624415C0(v11, *(&v11 + 1), v12, *(&v12 + 1));
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_19;
      }

      v14 = v19;
    }

    if (v18)
    {

      v21 = v1[7];
      v22 = *(v21 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 8 * v14) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_26243C840(0, v22[2] + 1, 1, v22);
        *(v21 + 8 * v14) = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_26243C840((v24 > 1), v25 + 1, 1, v22);
        *(v21 + 8 * v14) = v22;
      }

      v4 = v36;
      v22[2] = v25 + 1;
      v5 = &v22[8 * v25];
      v6 = v38;
      v7 = v39;
      v8 = v41;
      v5[4] = v40;
      v5[5] = v8;
      v5[2] = v6;
      v5[3] = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D868, &qword_26246BE50);
      v26 = swift_allocObject();
      v27 = v38;
      v28 = v39;
      v26[1] = xmmword_262463D10;
      v26[2] = v27;
      v29 = v40;
      v30 = v41;
      v26[3] = v28;
      v26[4] = v29;
      v26[5] = v30;
      v1[(v14 >> 6) + 8] |= 1 << v14;
      v31 = (v1[6] + 32 * v14);
      *v31 = v11;
      v31[1] = v12;
      *(v1[7] + 8 * v14) = v26;
      v32 = v1[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v1[2] = v34;
      v4 = v36;
    }

    v2 = v4 - 1;
    if (!v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_262462C78();
  __break(1u);
  return result;
}

void *sub_26243EA10(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v42 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; i += 4)
  {
    v36 = v2;
    v9 = i[1];
    v38 = *i;
    v39 = v9;
    v10 = i[3];
    v40 = i[2];
    v41 = v10;
    v11 = v38;
    v12 = v39;
    sub_26243FAE0(&v38, v37, &qword_27FF0D860, &qword_26246BE48);
    sub_26243FAE0(&v38, v37, &qword_27FF0D860, &qword_26246BE48);

    v14 = sub_2624415C0(v11, *(&v11 + 1), v12, *(&v12 + 1));
    v15 = v1[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v18 = v13;
    if (v1[3] < v17)
    {
      sub_262460DAC(v17, 1);
      v1 = v42;
      v19 = sub_2624415C0(v11, *(&v11 + 1), v12, *(&v12 + 1));
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_19;
      }

      v14 = v19;
    }

    if (v18)
    {

      v21 = v1[7];
      v22 = *(v21 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v21 + 8 * v14) = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_26243C840(0, v22[2] + 1, 1, v22);
        *(v21 + 8 * v14) = v22;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_26243C840((v24 > 1), v25 + 1, 1, v22);
        *(v21 + 8 * v14) = v22;
      }

      v4 = v36;
      v22[2] = v25 + 1;
      v5 = &v22[8 * v25];
      v6 = v38;
      v7 = v39;
      v8 = v41;
      v5[4] = v40;
      v5[5] = v8;
      v5[2] = v6;
      v5[3] = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D868, &qword_26246BE50);
      v26 = swift_allocObject();
      v27 = v38;
      v28 = v39;
      v26[1] = xmmword_262463D10;
      v26[2] = v27;
      v29 = v40;
      v30 = v41;
      v26[3] = v28;
      v26[4] = v29;
      v26[5] = v30;
      v1[(v14 >> 6) + 8] |= 1 << v14;
      v31 = (v1[6] + 32 * v14);
      *v31 = v11;
      v31[1] = v12;
      *(v1[7] + 8 * v14) = v26;
      v32 = v1[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v1[2] = v34;
      v4 = v36;
    }

    v2 = v4 - 1;
    if (!v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_262462C78();
  __break(1u);
  return result;
}

unint64_t sub_26243ECB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v54 = a1;
  v55 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v56 = v8;
  v57 = 0;
  v58 = v11 & v9;
  v59 = a2;
  v60 = a3;

  sub_26243E05C(&v49);
  v12 = v50;
  if (!v50)
  {
    goto LABEL_25;
  }

  v13 = v49;
  v46 = v51;
  v47 = v52;
  v48 = v53;
  v14 = *a5;
  result = sub_2624414FC(v49, v50);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_26245F9EC(v20, a4 & 1);
    result = sub_2624414FC(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_262462C78();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_2624613F0();
    result = v25;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    sub_26243F9F0(&v46, v23[7] + 40 * v24);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v26 = (v23[6] + 16 * result);
  *v26 = v13;
  v26[1] = v12;
  v27 = v23[7] + 40 * result;
  v28 = v46;
  v29 = v47;
  *(v27 + 32) = v48;
  *v27 = v28;
  *(v27 + 16) = v29;
  v30 = v23[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v23[2] = v31;
LABEL_15:
    sub_26243E05C(&v49);
    v12 = v50;
    if (v50)
    {
      v21 = 1;
      do
      {
        v13 = v49;
        v46 = v51;
        v47 = v52;
        v48 = v53;
        v33 = *a5;
        result = sub_2624414FC(v49, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_26245F9EC(v37, 1);
          result = sub_2624414FC(v13, v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v32 = result;

          sub_26243F9F0(&v46, v39[7] + 40 * v32);
        }

        else
        {
          v39[(result >> 6) + 8] |= 1 << result;
          v40 = (v39[6] + 16 * result);
          *v40 = v13;
          v40[1] = v12;
          v41 = v39[7] + 40 * result;
          v42 = v46;
          v43 = v47;
          *(v41 + 32) = v48;
          *v41 = v42;
          *(v41 + 16) = v43;
          v44 = v39[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v39[2] = v45;
        }

        sub_26243E05C(&v49);
        v12 = v50;
      }

      while (v50);
    }

LABEL_25:
    sub_26243F9E8(v54);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26243EFD4(uint64_t a1, uint64_t a2)
{
  v11 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v4 = *(v3 + 48);
      v12[2] = *(v3 + 32);
      v12[3] = v4;
      v13 = *(v3 + 64);
      v5 = *(v3 + 16);
      v12[0] = *v3;
      v12[1] = v5;
      sub_26242706C(v12, v9);
      sub_26243A4DC(v7, v12);
      v9[2] = v7[2];
      v9[3] = v7[3];
      v10 = v8;
      v9[0] = v7[0];
      v9[1] = v7[1];
      sub_2623F3C50(v9);
      v3 += 72;
      --v2;
    }

    while (v2);
    return v11;
  }

  return a2;
}

uint64_t sub_26243F08C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D890, &qword_26246C0D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26243FD84();
  sub_262462D88();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_262462B88();
    v10 = 1;
    sub_262462B88();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_26243F270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365676465 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26243F380(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D7E0, &qword_26246BDB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26243F61C();
  sub_262462D88();
  if (!v1)
  {
    LOBYTE(v11) = 0;
    v7 = sub_262462B88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D7E8, &qword_26246BDB8);
    v10 = 1;
    sub_26243F670();
    sub_262462BB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D7F0, &qword_26246BDC0);
    v10 = 2;
    sub_26243F748();
    v9 = 0;
    sub_262462BB8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_26243F61C()
{
  result = qword_2813BD8F0;
  if (!qword_2813BD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8F0);
  }

  return result;
}

unint64_t sub_26243F670()
{
  result = qword_2813BD3D8;
  if (!qword_2813BD3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0D7E8, &qword_26246BDB8);
    sub_26243F6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3D8);
  }

  return result;
}

unint64_t sub_26243F6F4()
{
  result = qword_2813BD418;
  if (!qword_2813BD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD418);
  }

  return result;
}

unint64_t sub_26243F748()
{
  result = qword_2813BD3D0;
  if (!qword_2813BD3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0D7F0, &qword_26246BDC0);
    sub_26243F7CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3D0);
  }

  return result;
}

unint64_t sub_26243F7CC()
{
  result = qword_2813BD3E0;
  if (!qword_2813BD3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0D7F8, &qword_26246BDC8);
    sub_26243F850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3E0);
  }

  return result;
}

unint64_t sub_26243F850()
{
  result = qword_2813BD8C0;
  if (!qword_2813BD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8C0);
  }

  return result;
}

uint64_t sub_26243F994(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26243F9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26243FA8C()
{
  result = qword_2813BD8D0;
  if (!qword_2813BD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8D0);
  }

  return result;
}

uint64_t sub_26243FAE0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26243FB58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26243FBA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26243FC28()
{
  result = qword_27FF0D888;
  if (!qword_27FF0D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D888);
  }

  return result;
}

unint64_t sub_26243FC80()
{
  result = qword_2813BD8C8;
  if (!qword_2813BD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8C8);
  }

  return result;
}

unint64_t sub_26243FCD8()
{
  result = qword_2813BD8E0;
  if (!qword_2813BD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8E0);
  }

  return result;
}

unint64_t sub_26243FD30()
{
  result = qword_2813BD8E8;
  if (!qword_2813BD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8E8);
  }

  return result;
}

unint64_t sub_26243FD84()
{
  result = qword_27FF0D898;
  if (!qword_27FF0D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D898);
  }

  return result;
}

uint64_t sub_26243FDD8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_262462C58() & 1;
  }
}

uint64_t sub_26243FE5C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void)@<X2>, _BYTE *a3@<X8>)
{
  result = a2(a1, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result & 1;
  }

  return result;
}

unint64_t sub_26243FEB0()
{
  result = qword_27FF0D8A0;
  if (!qword_27FF0D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D8A0);
  }

  return result;
}

unint64_t sub_26243FF08()
{
  result = qword_27FF0D8A8;
  if (!qword_27FF0D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D8A8);
  }

  return result;
}

unint64_t sub_26243FF60()
{
  result = qword_27FF0D8B0;
  if (!qword_27FF0D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D8B0);
  }

  return result;
}

uint64_t sub_26243FFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a3;
  *(v3 + 96) = *a2;
  *(v3 + 112) = *(a2 + 16);
  *(v3 + 120) = *(a2 + 24);
  *(v3 + 136) = *(a2 + 40);
  *(v3 + 192) = *(a2 + 48);
  return MEMORY[0x2822009F8](sub_262440034, 0, 0);
}

uint64_t sub_262440034()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = sub_262462738();
  v5 = v4;
  v0[18] = v3;
  v0[19] = v4;
  v6 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = v0[13];
  if (!v6)
  {
    goto LABEL_14;
  }

  v8 = v0[12] & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  if (v8 && ((v9 = v0[17], (v9 & 0x2000000000000000) != 0) ? (v10 = HIBYTE(v9) & 0xF) : (v10 = v0[16] & 0xFFFFFFFFFFFFLL), v10))
  {
    sub_2624079E4(0, &qword_27FF0D928, 0x277CBFF20);
    v11 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    v0[20] = v11;
    v12 = swift_task_alloc();
    v0[21] = v12;
    *v12 = v0;
    v12[1] = sub_262440274;
    v13 = v0[11];

    return MEMORY[0x2821119B0](v13, v11);
  }

  else
  {
LABEL_14:
    v14 = v0[11];

    sub_2623F1BBC();
    swift_allocError();
    *v15 = v3;
    *(v15 + 8) = v5;
    *(v15 + 16) = 0xD00000000000002BLL;
    *(v15 + 24) = 0x8000000262471FF0;
    *(v15 + 32) = v19;
    *(v15 + 48) = v20;
    *(v15 + 64) = 0;
    swift_willThrow();
    v16 = sub_262462588();
    (*(*(v16 - 8) + 8))(v14, v16);
    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_262440274(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_26244048C;
  }

  else
  {
    v6 = *(v4 + 160);
    *(v4 + 184) = a1;

    v5 = sub_2624403A4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2624403A4()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 192);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v12 = *(v0 + 96);
  v13 = *(v0 + 112);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = sub_262462588();
  (*(*(v9 - 8) + 8))(v7, v9);
  *v8 = v12;
  *(v8 + 16) = v13;
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  *(v8 + 48) = v4;
  *(v8 + 56) = v1;
  *(v8 + 64) = v3;
  *(v8 + 72) = v2;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26244048C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);
  v4 = *(v0 + 88);

  swift_getErrorValue();

  v5 = sub_262462C88();
  v7 = v6;
  sub_2623F1BBC();
  swift_allocError();
  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v9 = *(v0 + 32);
  *(v8 + 32) = *(v0 + 16);
  *(v8 + 48) = v9;
  *(v8 + 64) = 0;
  swift_willThrow();
  MEMORY[0x266728D50](v1);
  v10 = sub_262462588();
  (*(*(v10 - 8) + 8))(v4, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2624405F8(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = *(v1 + 56);
  *(v2 + 160) = *(v1 + 72);
  return MEMORY[0x2822009F8](sub_262440628, 0, 0);
}

uint64_t sub_262440628()
{
  v1 = sub_262440D14(v0[17]);
  v2 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v3 = sub_262441414(v1);
  v0[21] = v3;
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277CBFF68]);
  v6 = v4;
  v7 = [v5 init];
  v0[22] = v7;
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_26244085C;

  return MEMORY[0x282111978](v6, v7);
}

uint64_t sub_26244085C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_262440BC0;
  }

  else
  {
    v5 = *(v3 + 168);

    v4 = sub_26244097C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26244097C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v0[21];
    v3 = [v1 dictionary];
    sub_2624079E4(0, &qword_27FF0D910, 0x277CBFEF8);
    v4 = sub_262462698();

    v5 = sub_262440F94(v4);
    swift_unknownObjectRelease();

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    v8 = v0[24];
    v9 = v0[20];
    v10 = v0[21];
    v11 = v0[19];
    *&v16 = 0;
    *(&v16 + 1) = 0xE000000000000000;

    sub_262462A28();
    v0[12] = 0;
    v0[13] = 0xE000000000000000;
    MEMORY[0x266728460](0xD00000000000003BLL, 0x8000000262472300);
    v0[16] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D908, &qword_26246C2C8);
    sub_262462AA8();
    MEMORY[0x266728460](8200224, 0xE300000000000000);
    v12 = v0[12];
    v13 = v0[13];
    sub_2623F1BBC();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v9;
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    *(v14 + 32) = v16;
    *(v14 + 48) = v17;
    *(v14 + 64) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_262440BC0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);

  sub_262462A28();

  swift_getErrorValue();
  v5 = sub_262462C88();
  MEMORY[0x266728460](v5);

  MEMORY[0x266728460](32032, 0xE200000000000000);
  sub_2623F1BBC();
  swift_allocError();
  *v6 = v4;
  *(v6 + 8) = v3;
  *(v6 + 16) = 0xD000000000000026;
  *(v6 + 24) = 0x80000002624722D0;
  v7 = *(v0 + 32);
  *(v6 + 32) = *(v0 + 16);
  *(v6 + 48) = v7;
  *(v6 + 64) = 1;
  swift_willThrow();

  MEMORY[0x266728D50](v1);
  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_262440D14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D920, &qword_26246C2D8);
    v2 = sub_262462B08();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        sub_2623F3970(*(a1 + 56) + 40 * v14, &v29);
        v27 = v17;
        v28 = v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
        swift_dynamicCast();
        sub_2624079D4(&v23, v25);
        sub_2624079D4(v25, v26);
        sub_2624079D4(v26, &v24);
        result = sub_2624414FC(v17, v16);
        if (v18)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_2624079D4(&v24, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v2[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_2624079D4(&v24, (v2[7] + 32 * result));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_262440F94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D918, &qword_26246C2D0);
    v1 = sub_262462B08();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(*(a1 + 56) + 8 * v12);
        sub_2624079E4(0, &qword_27FF0D910, 0x277CBFEF8);

        v17 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
        swift_dynamicCast();
        v31 = v28;
        v32 = v29;
        v33 = v30;
        v27 = v28;
        v28 = v29;
        *&v29 = v30;
        result = sub_2624414FC(v15, v14);
        if (v18)
        {
          v8 = (v1[6] + 16 * result);
          *v8 = v15;
          v8[1] = v14;
          v9 = result;

          result = sub_26243F9F0(&v27, v1[7] + 40 * v9);
          v7 = v10;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v1[6] + 16 * result);
          *v19 = v15;
          v19[1] = v14;
          v20 = v1[7] + 40 * result;
          v21 = v27;
          v22 = v28;
          *(v20 + 32) = v29;
          *v20 = v21;
          *(v20 + 16) = v22;
          v23 = v1[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v1[2] = v25;
          v7 = v10;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_262441210(uint64_t a1)
{
  v4 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v4;
  *(v2 + 80) = v1[4];
  v5 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  v6 = swift_task_alloc();
  *(v2 + 96) = v6;
  *v6 = v2;
  v6[1] = sub_2624412C0;

  return sub_2624405F8(a1);
}

uint64_t sub_2624412C0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 104) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2624413FC, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

id sub_262441414(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_262462688();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_262462548();

    swift_willThrow();
  }

  return v3;
}

unint64_t sub_2624414FC(uint64_t a1, uint64_t a2)
{
  sub_262462CF8();
  sub_262462778();
  v4 = sub_262462D38();

  return sub_262441660(a1, a2, v4);
}

unint64_t sub_262441574(double a1)
{
  v2 = sub_262462CE8();

  return sub_262441718(v2, a1);
}

unint64_t sub_2624415C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_262462CF8();
  sub_262462778();
  sub_262462778();
  v8 = sub_262462D38();

  return sub_262441780(a1, a2, a3, a4, v8);
}

unint64_t sub_262441660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_262462C58())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_262441718(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_262441780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_262462C58() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_262462C58() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_262441880@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CED8, &qword_26246C340);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262444608();
  result = sub_262462D88();
  if (!v2)
  {
    v10 = sub_262462BC8();
    if (*(v10 + 16))
    {
      v11 = *(v10 + 32);

      v12 = *(sub_262462BC8() + 16);

      if (v12 == 1 || (sub_26240AC64() & 1) != 0)
      {
        switch(v11)
        {
          case 1:
          case 2:
            sub_2623F3CA4(a1, v29);
            v20 = sub_2624520B4(v29);
            *(a2 + 24) = &type metadata for BooleanField;
            v21 = v20;
            v23 = v22;
            v25 = v24;
            *(a2 + 32) = sub_262452470();
            *a2 = v21;
            *(a2 + 8) = v23;
            *(a2 + 16) = v25;
            return (*(v6 + 8))(v8, v5);
          case 3:
          case 4:
          case 5:
          case 6:
            sub_2623F3CA4(a1, v29);
            *(a2 + 24) = type metadata accessor for BooleanRule(0);
            *(a2 + 32) = sub_262453BFC(&qword_27FF0DBC0, type metadata accessor for BooleanRule, &unk_26246D3BC);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
            sub_262443EC8(v29, boxed_opaque_existential_1);
            return (*(v6 + 8))(v8, v5);
          case 7:
            LOBYTE(v29[0]) = 7;
            *(a2 + 24) = &type metadata for Or;
            *(a2 + 32) = sub_262451C80();
            sub_262451CD4();
            goto LABEL_56;
          case 8:
            LOBYTE(v29[0]) = 8;
            *(a2 + 24) = &type metadata for And;
            *(a2 + 32) = sub_262451BD8();
            sub_262451C2C();
            goto LABEL_56;
          case 9:
            LOBYTE(v29[0]) = 9;
            *(a2 + 24) = &type metadata for Not;
            *(a2 + 32) = sub_262451B30();
            *a2 = swift_allocObject();
            sub_262451B84();
            goto LABEL_56;
          case 10:
            LOBYTE(v29[0]) = 10;
            *(a2 + 24) = &type metadata for BooleanEqual;
            *(a2 + 32) = sub_262451A88();
            *a2 = swift_allocObject();
            sub_262451ADC();
            goto LABEL_56;
          case 11:
            LOBYTE(v29[0]) = 11;
            *(a2 + 24) = &type metadata for BooleanIsNull;
            *(a2 + 32) = sub_2624519E0();
            *a2 = swift_allocObject();
            sub_262451A34();
            goto LABEL_56;
          case 12:
            LOBYTE(v29[0]) = 12;
            *(a2 + 24) = &type metadata for BooleanIsNone;
            *(a2 + 32) = sub_262451938();
            *a2 = swift_allocObject();
            sub_26245198C();
            goto LABEL_56;
          case 13:
            LOBYTE(v29[0]) = 13;
            *(a2 + 24) = &type metadata for BooleanIsMissing;
            *(a2 + 32) = sub_262451890();
            *a2 = swift_allocObject();
            sub_2624518E4();
            goto LABEL_56;
          case 14:
            LOBYTE(v29[0]) = 14;
            *(a2 + 24) = &type metadata for BooleanReplaceFailure;
            *(a2 + 32) = sub_2624517E8();
            *a2 = swift_allocObject();
            sub_26245183C();
            goto LABEL_56;
          case 15:
            LOBYTE(v29[0]) = 15;
            *(a2 + 24) = &type metadata for LessThan;
            *(a2 + 32) = sub_262451740();
            *a2 = swift_allocObject();
            sub_262451794();
            goto LABEL_56;
          case 16:
            LOBYTE(v29[0]) = 16;
            *(a2 + 24) = &type metadata for LessThanOrEqual;
            *(a2 + 32) = sub_262451698();
            *a2 = swift_allocObject();
            sub_2624516EC();
            goto LABEL_56;
          case 17:
            LOBYTE(v29[0]) = 17;
            *(a2 + 24) = &type metadata for GreaterThan;
            *(a2 + 32) = sub_2624515F0();
            *a2 = swift_allocObject();
            sub_262451644();
            goto LABEL_56;
          case 18:
            LOBYTE(v29[0]) = 18;
            *(a2 + 24) = &type metadata for GreaterThanOrEqual;
            *(a2 + 32) = sub_262451548();
            *a2 = swift_allocObject();
            sub_26245159C();
            goto LABEL_56;
          case 19:
            LOBYTE(v29[0]) = 19;
            *(a2 + 24) = &type metadata for NumberEqual;
            *(a2 + 32) = sub_2624514A0();
            *a2 = swift_allocObject();
            sub_2624514F4();
            goto LABEL_56;
          case 20:
            LOBYTE(v29[0]) = 20;
            *(a2 + 24) = &type metadata for NumberIsNull;
            *(a2 + 32) = sub_2624513F8();
            *a2 = swift_allocObject();
            sub_26245144C();
            goto LABEL_56;
          case 21:
            LOBYTE(v29[0]) = 21;
            *(a2 + 24) = &type metadata for NumberIsNone;
            *(a2 + 32) = sub_262451350();
            *a2 = swift_allocObject();
            sub_2624513A4();
            goto LABEL_56;
          case 22:
            LOBYTE(v29[0]) = 22;
            *(a2 + 24) = &type metadata for NumberIsMissing;
            *(a2 + 32) = sub_2624512A8();
            *a2 = swift_allocObject();
            sub_2624512FC();
            goto LABEL_56;
          case 23:
            LOBYTE(v29[0]) = 23;
            *(a2 + 24) = &type metadata for NumberListContains;
            *(a2 + 32) = sub_262451200();
            *a2 = swift_allocObject();
            sub_262451254();
            goto LABEL_56;
          case 24:
            LOBYTE(v29[0]) = 24;
            *(a2 + 24) = &type metadata for NumberListAll;
            *(a2 + 32) = sub_262451158();
            *a2 = swift_allocObject();
            sub_2624511AC();
            goto LABEL_56;
          case 25:
            LOBYTE(v29[0]) = 25;
            *(a2 + 24) = &type metadata for NumberListContainsAny;
            *(a2 + 32) = sub_2624510B0();
            *a2 = swift_allocObject();
            sub_262451104();
            goto LABEL_56;
          case 26:
            LOBYTE(v29[0]) = 26;
            *(a2 + 24) = &type metadata for NumberListContainsAll;
            *(a2 + 32) = sub_262451008();
            *a2 = swift_allocObject();
            sub_26245105C();
            goto LABEL_56;
          case 27:
            LOBYTE(v29[0]) = 27;
            *(a2 + 24) = &type metadata for NumberListEqual;
            *(a2 + 32) = sub_262450F60();
            *a2 = swift_allocObject();
            sub_262450FB4();
            goto LABEL_56;
          case 28:
            LOBYTE(v29[0]) = 28;
            *(a2 + 24) = &type metadata for NumberListIsNull;
            *(a2 + 32) = sub_262450EB8();
            *a2 = swift_allocObject();
            sub_262450F0C();
            goto LABEL_56;
          case 29:
            LOBYTE(v29[0]) = 29;
            *(a2 + 24) = &type metadata for NumberListIsNone;
            *(a2 + 32) = sub_262450E10();
            *a2 = swift_allocObject();
            sub_262450E64();
            goto LABEL_56;
          case 30:
            LOBYTE(v29[0]) = 30;
            *(a2 + 24) = &type metadata for NumberListIsMissing;
            *(a2 + 32) = sub_262450D68();
            *a2 = swift_allocObject();
            sub_262450DBC();
            goto LABEL_56;
          case 31:
            LOBYTE(v29[0]) = 31;
            *(a2 + 24) = &type metadata for RegexMatch;
            *(a2 + 32) = sub_262450CC0();
            *a2 = swift_allocObject();
            sub_262450D14();
            goto LABEL_56;
          case 32:
            LOBYTE(v29[0]) = 32;
            *(a2 + 24) = &type metadata for SubstringMatch;
            *(a2 + 32) = sub_262450C18();
            *a2 = swift_allocObject();
            sub_262450C6C();
            goto LABEL_56;
          case 33:
            LOBYTE(v29[0]) = 33;
            *(a2 + 24) = &type metadata for StringEqual;
            *(a2 + 32) = sub_262450B70();
            *a2 = swift_allocObject();
            sub_262450BC4();
            goto LABEL_56;
          case 34:
            LOBYTE(v29[0]) = 34;
            *(a2 + 24) = &type metadata for StringEqualIgnoreCase;
            *(a2 + 32) = sub_262450AC8();
            *a2 = swift_allocObject();
            sub_262450B1C();
            goto LABEL_56;
          case 35:
            LOBYTE(v29[0]) = 35;
            *(a2 + 24) = &type metadata for BooleanMatchCase;
            *(a2 + 32) = sub_262450A20();
            *a2 = swift_allocObject();
            sub_262450A74();
            goto LABEL_56;
          case 36:
            LOBYTE(v29[0]) = 36;
            *(a2 + 24) = &type metadata for StringIsNull;
            *(a2 + 32) = sub_262450978();
            *a2 = swift_allocObject();
            sub_2624509CC();
            goto LABEL_56;
          case 37:
            LOBYTE(v29[0]) = 37;
            *(a2 + 24) = &type metadata for StringIsNone;
            *(a2 + 32) = sub_2624508D0();
            *a2 = swift_allocObject();
            sub_262450924();
            goto LABEL_56;
          case 38:
            LOBYTE(v29[0]) = 38;
            *(a2 + 24) = &type metadata for StringIsMissing;
            *(a2 + 32) = sub_262450828();
            *a2 = swift_allocObject();
            sub_26245087C();
            goto LABEL_56;
          case 39:
            LOBYTE(v29[0]) = 39;
            *(a2 + 24) = &type metadata for StringListContains;
            *(a2 + 32) = sub_262450780();
            *a2 = swift_allocObject();
            sub_2624507D4();
            goto LABEL_56;
          case 40:
            LOBYTE(v29[0]) = 40;
            *(a2 + 24) = &type metadata for StringListAll;
            *(a2 + 32) = sub_2624506D8();
            *a2 = swift_allocObject();
            sub_26245072C();
            goto LABEL_56;
          case 41:
            LOBYTE(v29[0]) = 41;
            *(a2 + 24) = &type metadata for StringListContainsAny;
            *(a2 + 32) = sub_262450630();
            *a2 = swift_allocObject();
            sub_262450684();
            goto LABEL_56;
          case 42:
            LOBYTE(v29[0]) = 42;
            *(a2 + 24) = &type metadata for StringListContainsAll;
            *(a2 + 32) = sub_262450588();
            *a2 = swift_allocObject();
            sub_2624505DC();
            goto LABEL_56;
          case 43:
            LOBYTE(v29[0]) = 43;
            *(a2 + 24) = &type metadata for StringListEqual;
            *(a2 + 32) = sub_2624504E0();
            *a2 = swift_allocObject();
            sub_262450534();
            goto LABEL_56;
          case 44:
            LOBYTE(v29[0]) = 44;
            *(a2 + 24) = &type metadata for StringListIsNull;
            *(a2 + 32) = sub_262450438();
            *a2 = swift_allocObject();
            sub_26245048C();
            goto LABEL_56;
          case 45:
            LOBYTE(v29[0]) = 45;
            *(a2 + 24) = &type metadata for StringListIsNone;
            *(a2 + 32) = sub_262450390();
            *a2 = swift_allocObject();
            sub_2624503E4();
            goto LABEL_56;
          case 46:
            LOBYTE(v29[0]) = 46;
            *(a2 + 24) = &type metadata for StringListIsMissing;
            *(a2 + 32) = sub_2624502E8();
            *a2 = swift_allocObject();
            sub_26245033C();
            goto LABEL_56;
          case 47:
            LOBYTE(v29[0]) = 47;
            *(a2 + 24) = &type metadata for DecisionEqual;
            *(a2 + 32) = sub_262450240();
            *a2 = swift_allocObject();
            sub_262450294();
            goto LABEL_56;
          case 48:
            LOBYTE(v29[0]) = 48;
            *(a2 + 24) = &type metadata for DecisionIsNull;
            *(a2 + 32) = sub_262450198();
            *a2 = swift_allocObject();
            sub_2624501EC();
            goto LABEL_56;
          case 49:
            LOBYTE(v29[0]) = 49;
            *(a2 + 24) = &type metadata for DecisionIsNone;
            *(a2 + 32) = sub_2624500F0();
            *a2 = swift_allocObject();
            sub_262450144();
            goto LABEL_56;
          case 50:
            LOBYTE(v29[0]) = 50;
            *(a2 + 24) = &type metadata for DecisionIsMissing;
            *(a2 + 32) = sub_262450048();
            *a2 = swift_allocObject();
            sub_26245009C();
LABEL_56:
            sub_262462BB8();
            break;
          default:
            sub_2623F3CA4(a1, v29);
            v26 = sub_262451D74(v29);
            *(a2 + 24) = &type metadata for BooleanValue;
            v27 = v26;
            *(a2 + 32) = sub_2624524C4();
            *a2 = v27 & 1;
            break;
        }

        return (*(v6 + 8))(v8, v5);
      }
    }

    else
    {
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = sub_262462D78();
    v15 = sub_262427A60(v14);
    v17 = v16;

    sub_2623F1BBC();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    *(v18 + 16) = 0xD000000000000011;
    *(v18 + 24) = 0x800000026246C2E0;
    v19 = v29[1];
    *(v18 + 32) = v29[0];
    *(v18 + 48) = v19;
    *(v18 + 64) = 3;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_2624426D0(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = (*(v9 + 24))(&v17, a1, v8, v9);
  if (!v4)
  {
    v11 = v10;
    v12 = a3[3];
    v13 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v12);
    (*(v13 + 24))(&v16, v11, v12, v13);
    if (v17 && v16)
    {
      v15 = (a4)(v17);

      a4 = v15 & 1;
    }

    else
    {

      a4 = 2;
    }
  }

  return a4;
}

uint64_t sub_262442820(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = __swift_project_boxed_opaque_existential_1(a2, v6);
  v9 = a1;
  v10 = v8;
  v11 = (*(v7 + 24))(&v33, v9, v6, v7);
  if (!v3)
  {
    v36 = v11;
    v12 = a3[3];
    v13 = a3[4];
    v14 = v11;
    __swift_project_boxed_opaque_existential_1(a3, v12);
    v32 = (*(v13 + 24))(&v29, v14, v12, v13);
    v16 = v33;
    v17 = v34;
    v18 = v35;
    sub_262419944(v33, v34, v35);
    if (v18 != 255)
    {
      v26 = v16;
      v27 = v17;
      v28 = v18;
      v19 = v29;
      v20 = v30;
      v21 = v31;
      sub_262419944(v29, v30, v31);
      if (v21 != 255)
      {
        v23 = v19;
        v24 = v20;
        v25 = v21;
        v22 = _s5Rules8DecisionO2eeoiySbAC_ACtFZ_0(&v26, &v23);
        sub_2623F98B8(v23, v24, v25);
        sub_2623F98B8(v26, v27, v28);
        v10 = v22;
        sub_262419958(v29, v30, v31);
LABEL_9:
        sub_262419958(v33, v34, v35);

        return v10;
      }

      sub_2623F98B8(v16, v17, v18);
    }

    sub_262419958(v29, v30, v31);
    v10 = 2;
    goto LABEL_9;
  }

  return v10;
}

uint64_t sub_2624429FC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  result = (*(v7 + 24))(&v13, a1, v6, v7);
  if (!v3)
  {
    v9 = a3[3];
    v10 = a3[4];
    v11 = result;
    __swift_project_boxed_opaque_existential_1(a3, v9);
    (*(v10 + 24))(&v12, v11, v9, v10);

    if (v13 == 2)
    {
      return 2;
    }

    else if (v12 == 2)
    {
      return 2;
    }

    else
    {
      return ((v12 ^ v13) & 1) == 0;
    }
  }

  return result;
}

uint64_t sub_262442B0C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = (*(v8 + 24))(&v17, a1, v7, v8);
  if (!v3)
  {
    v10 = v9;
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    (*(v12 + 24))(&v15, v10, v11, v12);
    if (v18 && v16)
    {
      if (v17 == v15 && v18 == v16)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_262462C58();
      }

      v4 = v14 & 1;
    }

    else
    {

      v4 = 2;
    }
  }

  return v4;
}

uint64_t sub_262442C80(uint64_t a1, void *a2, void *a3)
{
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  result = (*(v7 + 24))(&v14, a1, v6, v7);
  if (!v3)
  {
    v9 = a3[3];
    v10 = a3[4];
    v11 = result;
    __swift_project_boxed_opaque_existential_1(a3, v9);
    (*(v10 + 24))(&v12, v11, v9, v10);

    if (v15 & 1) != 0 || (v13)
    {
      return 2;
    }

    else
    {
      return v14 == v12;
    }
  }

  return result;
}

uint64_t sub_262442D90(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(v20, a1, v4, v5);
  if (v2)
  {
    v22 = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      v19 = v21;
      v17 = v20[2];
      v18 = v20[3];
      v15 = v20[0];
      v16 = v20[1];
      if (v21 == 5)
      {
        MEMORY[0x266728D50](v2);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        v8 = v15;
        v9 = v16;
        sub_262427BA0(a1, &v8);
        v13[2] = v10;
        v13[3] = v11;
        v14 = v12;
        v13[0] = v8;
        v13[1] = v9;
        sub_2623F3C50(v13);
        MEMORY[0x266728D50](v22);
        return 1;
      }

      sub_2623F3C50(&v15);
    }

    MEMORY[0x266728D50](v22);
    return swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_262442F0C(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(&v20, a1, v4, v5);
  if (v2)
  {
    v25 = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      v19 = v24;
      v17 = v22;
      v18 = v23;
      v15 = v20;
      v16 = v21;
      if (v24 == 5)
      {
        MEMORY[0x266728D50](v2);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        v8 = v15;
        v9 = v16;
        sub_262427BA0(a1, &v8);
        v13[2] = v10;
        v13[3] = v11;
        v14 = v12;
        v13[0] = v8;
        v13[1] = v9;
        sub_2623F3C50(v13);
        MEMORY[0x266728D50](v25);
        return 1;
      }

      sub_2623F3C50(&v15);
    }

    MEMORY[0x266728D50](v25);
    return swift_willThrow();
  }

  else
  {
    sub_262419958(v20, *(&v20 + 1), v21);
    return 0;
  }
}

uint64_t sub_26244308C(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(v20, a1, v4, v5);
  if (!v2)
  {
    return 0;
  }

  v22 = v2;
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    v19 = v21;
    v17 = v20[2];
    v18 = v20[3];
    v15 = v20[0];
    v16 = v20[1];
    if (v21 == 5)
    {
      MEMORY[0x266728D50](v2);
      v10 = v17;
      v11 = v18;
      v12 = v19;
      v8 = v15;
      v9 = v16;
      sub_262427BA0(a1, &v8);
      v13[2] = v10;
      v13[3] = v11;
      v14 = v12;
      v13[0] = v8;
      v13[1] = v9;
      sub_2623F3C50(v13);
      MEMORY[0x266728D50](v22);
      return 1;
    }

    sub_2623F3C50(&v15);
  }

  MEMORY[0x266728D50](v22);
  return swift_willThrow();
}

uint64_t sub_2624431F8(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(v20, a1, v4, v5);
  if (v2)
  {
    v22 = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      v19 = v21;
      v17 = v20[2];
      v18 = v20[3];
      v15 = v20[0];
      v16 = v20[1];
      if (v21 == 5)
      {
        MEMORY[0x266728D50](v2);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        v8 = v15;
        v9 = v16;
        sub_262427BA0(a1, &v8);
        v13[2] = v10;
        v13[3] = v11;
        v14 = v12;
        v13[0] = v8;
        v13[1] = v9;
        sub_2623F3C50(v13);
        MEMORY[0x266728D50](v22);
        return 1;
      }

      sub_2623F3C50(&v15);
    }

    MEMORY[0x266728D50](v22);
    return swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_262443374(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(v20, a1, v4, v5);
  if (v2)
  {
    v22 = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      v19 = v21;
      v17 = v20[2];
      v18 = v20[3];
      v15 = v20[0];
      v16 = v20[1];
      if (v21 == 6)
      {
        MEMORY[0x266728D50](v2);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        v8 = v15;
        v9 = v16;
        sub_262427BA0(a1, &v8);
        v13[2] = v10;
        v13[3] = v11;
        v14 = v12;
        v13[0] = v8;
        v13[1] = v9;
        sub_2623F3C50(v13);
        MEMORY[0x266728D50](v22);
        return 1;
      }

      sub_2623F3C50(&v15);
    }

    MEMORY[0x266728D50](v22);
    return swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_2624434F0(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(&v20, a1, v4, v5);
  if (v2)
  {
    v25 = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      v19 = v24;
      v17 = v22;
      v18 = v23;
      v15 = v20;
      v16 = v21;
      if (v24 == 6)
      {
        MEMORY[0x266728D50](v2);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        v8 = v15;
        v9 = v16;
        sub_262427BA0(a1, &v8);
        v13[2] = v10;
        v13[3] = v11;
        v14 = v12;
        v13[0] = v8;
        v13[1] = v9;
        sub_2623F3C50(v13);
        MEMORY[0x266728D50](v25);
        return 1;
      }

      sub_2623F3C50(&v15);
    }

    MEMORY[0x266728D50](v25);
    return swift_willThrow();
  }

  else
  {
    sub_262419958(v20, *(&v20 + 1), v21);
    return 0;
  }
}

uint64_t sub_262443670(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(v20, a1, v4, v5);
  if (!v2)
  {
    return 0;
  }

  v22 = v2;
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    v19 = v21;
    v17 = v20[2];
    v18 = v20[3];
    v15 = v20[0];
    v16 = v20[1];
    if (v21 == 6)
    {
      MEMORY[0x266728D50](v2);
      v10 = v17;
      v11 = v18;
      v12 = v19;
      v8 = v15;
      v9 = v16;
      sub_262427BA0(a1, &v8);
      v13[2] = v10;
      v13[3] = v11;
      v14 = v12;
      v13[0] = v8;
      v13[1] = v9;
      sub_2623F3C50(v13);
      MEMORY[0x266728D50](v22);
      return 1;
    }

    sub_2623F3C50(&v15);
  }

  MEMORY[0x266728D50](v22);
  return swift_willThrow();
}

uint64_t sub_2624437DC(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 24))(v20, a1, v4, v5);
  if (v2)
  {
    v22 = v2;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if (swift_dynamicCast())
    {
      v19 = v21;
      v17 = v20[2];
      v18 = v20[3];
      v15 = v20[0];
      v16 = v20[1];
      if (v21 == 6)
      {
        MEMORY[0x266728D50](v2);
        v10 = v17;
        v11 = v18;
        v12 = v19;
        v8 = v15;
        v9 = v16;
        sub_262427BA0(a1, &v8);
        v13[2] = v10;
        v13[3] = v11;
        v14 = v12;
        v13[0] = v8;
        v13[1] = v9;
        sub_2623F3C50(v13);
        MEMORY[0x266728D50](v22);
        return 1;
      }

      sub_2623F3C50(&v15);
    }

    MEMORY[0x266728D50](v22);
    return swift_willThrow();
  }

  else
  {

    return 0;
  }
}

uint64_t sub_262443958(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      return 0x6D614E646C656966;
    case 2:
      return 0x746C7561666564;
    case 3:
      return 1701667182;
    case 4:
      return 0xD000000000000010;
    case 5:
      return 0x6C615673656C7572;
    case 6:
      return 0x6369676F6CLL;
    case 7:
      return 29263;
    case 8:
      return 6581825;
    case 9:
      return 7630670;
    case 10:
      return 0x456E61656C6F6F42;
    case 11:
    case 12:
      return 0x496E61656C6F6F42;
    case 13:
      return 0xD000000000000010;
    case 14:
    case 25:
    case 26:
    case 34:
    case 41:
    case 42:
      return 0xD000000000000015;
    case 15:
      return 0x6E6168547373654CLL;
    case 16:
      return 0x6E6168547373654CLL;
    case 17:
      return 0x5472657461657247;
    case 18:
    case 23:
    case 39:
      return 0xD000000000000012;
    case 19:
      v6 = 0x7265626D754ELL;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7145000000000000;
    case 20:
      v5 = 0x7265626D754ELL;
      goto LABEL_27;
    case 21:
      v4 = 0x7265626D754ELL;
      goto LABEL_30;
    case 22:
      v8 = 0x7265626D754ELL;
      goto LABEL_45;
    case 24:
      v7 = 0x7265626D754ELL;
      goto LABEL_19;
    case 27:
      v3 = 0x7265626D754ELL;
      goto LABEL_9;
    case 28:
      return 0xD000000000000010;
    case 29:
      return 0xD000000000000010;
    case 30:
    case 46:
      return 0xD000000000000013;
    case 31:
      return 0x74614D7865676552;
    case 32:
      return 0x6E69727473627553;
    case 33:
      v6 = 0x676E69727453;
      return v6 & 0xFFFFFFFFFFFFLL | 0x7145000000000000;
    case 35:
      return 0xD000000000000010;
    case 36:
      v5 = 0x676E69727453;
LABEL_27:
      result = v5 & 0xFFFFFFFFFFFFLL | 0x7349000000000000;
      break;
    case 37:
      v4 = 0x676E69727453;
LABEL_30:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7349000000000000;
      break;
    case 38:
      v8 = 0x676E69727453;
LABEL_45:
      result = v8 & 0xFFFFFFFFFFFFLL | 0x7349000000000000;
      break;
    case 40:
      v7 = 0x676E69727453;
LABEL_19:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x694C000000000000;
      break;
    case 43:
      v3 = 0x676E69727453;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x694C000000000000;
      break;
    case 44:
      result = 0xD000000000000010;
      break;
    case 45:
      result = 0xD000000000000010;
      break;
    case 47:
    case 48:
    case 49:
      result = 0x6E6F697369636544;
      break;
    case 50:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_262443E1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_262455244(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_262443E50(uint64_t a1)
{
  v2 = sub_262444608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262443E8C(uint64_t a1)
{
  v2 = sub_262444608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262443EC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v36 = sub_262462A88();
  v31 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4E8, &qword_262463350);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = v28 - v5;
  v32 = type metadata accessor for RulesValidity(0);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DC00, &unk_26246C380);
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  v11 = type metadata accessor for BooleanRule(0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26245263C();
  v14 = v37;
  sub_262462D88();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v7;
  LOBYTE(v39[0]) = 0;
  v15 = v10;
  *v13 = sub_262462B88();
  *(v13 + 1) = v17;
  v28[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DBF0, &qword_26246C368);
  LOBYTE(v38[0]) = 1;
  sub_2624525C0();
  sub_262462BB8();
  v13[16] = v39[0];
  LOBYTE(v39[0]) = 2;
  sub_262453BFC(&qword_2813BDBE8, type metadata accessor for RulesValidity, &unk_262470FBC);
  v18 = v32;
  v19 = v33;
  sub_262462B78();
  v20 = a1;
  v36 = v15;
  v22 = v30 + 48;
  v21 = *(v30 + 48);
  if (v21(v19, 1, v18) == 1)
  {
    v30 = v22;
    v23 = v37;
    *v37 = 0;
    swift_storeEnumTagMultiPayload();
    v24 = v21(v19, 1, v18);
    v25 = v23;
    v26 = v29;
    if (v24 != 1)
    {
      sub_2623F39E0(v19, &qword_27FF0C4E8, &qword_262463350);
    }
  }

  else
  {
    v25 = v37;
    sub_2623F2530(v19, v37);
    v26 = v29;
  }

  sub_2623F2530(v25, &v13[*(v11 + 24)]);
  v40 = 3;
  sub_262462B58();
  type metadata accessor for BooleanExpressionDecoder();
  sub_262441880(v38, v39);
  v27 = v35;
  __swift_destroy_boxed_opaque_existential_1(v38);
  (*(v27 + 8))(v36, v8);
  sub_2623EB668(v39, &v13[*(v11 + 28)]);
  sub_262452690(v13, v26);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_2624526F4(v13, type metadata accessor for BooleanRule);
}

unint64_t sub_262444608()
{
  result = qword_2813BD6F8[0];
  if (!qword_2813BD6F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813BD6F8);
  }

  return result;
}

uint64_t sub_26244465C(uint64_t a1)
{
  v2 = sub_262452518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262444698(uint64_t a1)
{
  v2 = sub_262452518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624446D4(_BYTE *a1, uint64_t a2)
{
  *a1 = *v2;

  return a2;
}

uint64_t sub_262444708@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262451D74(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_262444738(uint64_t a1)
{
  v2 = sub_26245256C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262444774(uint64_t a1)
{
  v2 = sub_26245256C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624447B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a4 == 2)
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));

    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    LOBYTE(v31) = a4 & 1;

    sub_2624629E8();
    if (!*(a1 + 16))
    {
LABEL_9:
      sub_2623F3970(v37, &v34);
      if (*(&v35 + 1))
      {
        v39 = v34;
        v40 = v35;
        v12 = v36;
        goto LABEL_15;
      }

      sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
      sub_2623F1BBC();
      swift_allocError();
      *v13 = a2;
      *(v13 + 8) = a3;
      v14 = v33;
      v15 = v32;
      *(v13 + 16) = v31;
      *(v13 + 32) = v15;
      *(v13 + 48) = v14;
      *(v13 + 64) = 6;
      swift_willThrow();
LABEL_22:
      sub_2623F39E0(v37, &qword_27FF0C5F0, &qword_262463A90);
      return v4;
    }
  }

  v8 = sub_2624414FC(a2, a3);
  if ((v9 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2623F3970(*(a1 + 56) + 40 * v8, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  v10 = sub_262462918();
  v11 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  if (v10 == v11)
  {
LABEL_13:
    sub_2623F3970(v37, &v28);
    if (*(&v29 + 1))
    {
      sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
      v39 = v28;
      v40 = v29;
      v12 = v30;
      goto LABEL_15;
    }

    sub_2623F39E0(&v28, &qword_27FF0C5F0, &qword_262463A90);
    sub_2623F1BBC();
    swift_allocError();
    *v18 = a2;
    *(v18 + 8) = a3;
    v19 = v33;
    v20 = v32;
    *(v18 + 16) = v31;
    *(v18 + 32) = v20;
    *(v18 + 48) = v19;
    *(v18 + 64) = 5;
    swift_willThrow();
    sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_22;
  }

  sub_2623F3970(&v34, &v31);
  if (!*(&v32 + 1))
  {
    sub_2623F39E0(&v31, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_13;
  }

  sub_2623F39E0(&v34, &qword_27FF0C5F0, &qword_262463A90);
  v39 = v31;
  v40 = v32;
  v12 = v33;
LABEL_15:
  v41 = v12;
  sub_2623F39E0(v37, &qword_27FF0C5F0, &qword_262463A90);
  sub_2623F3A40(&v39, &v31);
  v16 = MEMORY[0x277D839B0];
  if (swift_dynamicCast())
  {

    sub_2623F3A9C(&v39);
    v4 = LOBYTE(v37[0]);
LABEL_31:

    return v4;
  }

  sub_2623F3A40(&v39, &v31);
  if (swift_dynamicCast())
  {
    v17 = v37[0];
    if (v37[0] == __PAIR128__(0xE400000000000000, 1702195828) || (sub_262462C58() & 1) != 0)
    {

      v4 = 1;
LABEL_30:
      sub_2623F3A9C(&v39);
      goto LABEL_31;
    }

    if (v17 == __PAIR128__(0xE500000000000000, 0x65736C6166))
    {

LABEL_26:

      v4 = 0;
      goto LABEL_30;
    }

    v21 = sub_262462C58();

    if (v21)
    {
      goto LABEL_26;
    }
  }

  if (v4 != 2)
  {

    goto LABEL_30;
  }

  *&v31 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DBE0, &qword_26246C358);
  v22 = sub_262462728();
  v24 = v23;
  sub_2623F1BBC();
  swift_allocError();
  *v25 = a2;
  *(v25 + 8) = a3;
  *(v25 + 16) = v22;
  *(v25 + 24) = v24;
  v26 = v32;
  *(v25 + 32) = v31;
  *(v25 + 48) = v26;
  *(v25 + 64) = 7;
  swift_willThrow();
  sub_2623F3A9C(&v39);
  return v4;
}

uint64_t sub_262444C90(_BYTE *a1, uint64_t a2)
{
  v5 = sub_2624447B0(a2, *v2, *(v2 + 8), *(v2 + 16));
  result = v6;
  if (!v3)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_262444CD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2624520B4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_262444D04(uint64_t a1)
{
  v2 = sub_26245263C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262444D40(uint64_t a1)
{
  v2 = sub_26245263C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262444D7C(uint64_t a1)
{
  v4 = type metadata accessor for BooleanRule(0);
  sub_2623F3CA4(v1 + *(v4 + 28), v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D150, &unk_262468F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D158, &unk_26246E140);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v6, v8);
    sub_26240BCB8(v7, a1, *v1, *(v1 + 8), *(v1 + 16), v1 + *(v4 + 24), v8);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    if (!v2)
    {
      return v7[0];
    }
  }

  else
  {

    return 2;
  }

  return result;
}

uint64_t sub_262444E78(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262444D7C(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262444EC8(uint64_t a1)
{
  v2 = sub_262457C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262444F04(uint64_t a1)
{
  v2 = sub_262457C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262444F40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);

  v7 = 0;
  if (v6)
  {
    v8 = a2 + 32;
    v9 = a1;
    while (1)
    {
      sub_2623F3CA4(v8, v16);
      v10 = v17;
      v11 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v12 = (*(*(v11 + 8) + 24))(&v19, v9, v10);
      if (v3)
      {
        break;
      }

      v13 = v12;

      if (v19 == 2 || v7 == 2)
      {
        v7 = 2;
      }

      else
      {
        v7 = (v7 | v19) & 1;
      }

      __swift_destroy_boxed_opaque_existential_1(v16);
      v8 += 40;
      v9 = v13;
      if (!--v6)
      {
        return v7;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return v7;
}

void *sub_26244508C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_262457924(a1, &qword_27FF0E070, &qword_26246E138, sub_262457C84, &type metadata for Or.CodingKeys);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2624450E4(uint64_t a1)
{
  v2 = sub_262457C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262445120(uint64_t a1)
{
  v2 = sub_262457C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244515C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);

  if (!v6)
  {
    return 1;
  }

  v7 = a2 + 32;
  v8 = 1;
  v9 = a1;
  while (1)
  {
    sub_2623F3CA4(v7, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v12 = (*(*(v11 + 8) + 24))(&v19, v9, v10);
    if (v3)
    {
      break;
    }

    v13 = v12;

    if (v19 == 2 || v8 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = v8 & v19 & 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
    v7 += 40;
    v9 = v13;
    if (!--v6)
    {
      return v8;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v8;
}

uint64_t sub_2624452B0(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void))
{
  v8 = (a5)(a2, *v5, a3, a4);
  result = v9;
  if (!v6)
  {
    *a1 = v8;
  }

  return result;
}

void *sub_2624452F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_262457924(a1, &qword_27FF0E060, &qword_26246E130, sub_262457C30, &type metadata for And.CodingKeys);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26244534C(uint64_t a1)
{
  v2 = sub_2624578D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262445388(uint64_t a1)
{
  v2 = sub_2624578D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262445408(BOOL *a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  result = (*(*(v7 + 8) + 24))(&v10, a2, v6);
  if (!v3)
  {
    v9 = v10;
    if (v10 != 2)
    {
      v9 = (v10 & 1) == 0;
    }

    *a1 = v9;
  }

  return result;
}

uint64_t sub_2624454A0(uint64_t a1)
{
  v2 = sub_262457814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624454DC(uint64_t a1)
{
  v2 = sub_262457814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262445518@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E048, &qword_26246E120);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262457814();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for BooleanExpressionDecoder();
  sub_262441880(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_262441880(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262457868(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624578A0(v13);
}

uint64_t sub_262445764(uint64_t a1)
{
  sub_2623F3CA4(v1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D150, &unk_262468F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D158, &unk_26246E140);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_2623EB668(v9, v11);
  sub_2623F3CA4(v1 + 40, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    __swift_destroy_boxed_opaque_existential_1(v11);
LABEL_6:

    return 2;
  }

  sub_2623EB668(v7, v10);
  v4 = sub_2624429FC(a1, v11, v10);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v6 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v6;
  }
}

uint64_t sub_2624458C0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262445764(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262445910(uint64_t a1)
{
  v2 = sub_2624577C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244594C(uint64_t a1)
{
  v2 = sub_2624577C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624459CC(uint64_t a1)
{
  v2 = sub_26245776C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262445A08(uint64_t a1)
{
  v2 = sub_26245776C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262445A88(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D150, &unk_262468F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D158, &unk_26246E140);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_26244308C(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_262445B6C(uint64_t a1)
{
  v2 = sub_262457718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262445BA8(uint64_t a1)
{
  v2 = sub_262457718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262445C28@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v21 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-1] - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_262462D88();
  if (!v6)
  {
    v12 = v16;
    v13 = v21;
    sub_262462B58();
    type metadata accessor for BooleanExpressionDecoder();
    sub_262441880(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v17);
    (*(v12 + 8))(v11, v9);
    sub_2623EB668(v18, v19);
    v14 = v19[1];
    *v13 = v19[0];
    *(v13 + 16) = v14;
    *(v13 + 32) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262445DE4(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D150, &unk_262468F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D158, &unk_26246E140);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_262443670(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_262445EC8(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262445DE4(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262445F00(uint64_t a1)
{
  v2 = sub_26245765C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262445F3C(uint64_t a1)
{
  v2 = sub_26245765C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262445F78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_262462A88();
  v14[4] = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E008, &qword_26246E100);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  v11 = a1[3];
  v16 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_26245765C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v14[3] = v6;
  v12 = v15;
  v19[71] = 0;
  sub_262462B58();
  type metadata accessor for BooleanExpressionDecoder();
  sub_262441880(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_2623EB668(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DBF0, &qword_26246C368);
  LOBYTE(v17[0]) = 1;
  sub_2624525C0();
  sub_262462BB8();
  (*(v8 + 8))(v10, v7);
  v19[40] = v18[0];
  sub_2624576B0(v19, v12);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_2624576E8(v19);
}

uint64_t sub_2624463B8(uint64_t a1)
{
  sub_2623F3CA4(v1, &v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D150, &unk_262468F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D158, &unk_26246E140);
  if (!swift_dynamicCast())
  {

    return 2;
  }

  sub_2623EB668(v11, v19);
  v4 = *(v1 + 40);
  v5 = v20;
  v6 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v6 + 24))(&v22, a1, v5, v6);
  if (!v2)
  {
    goto LABEL_6;
  }

  v18 = v2;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    MEMORY[0x266728D50](v2);
    v11[2] = v15;
    v11[3] = v16;
    v12 = v17;
    v11[0] = v13;
    v11[1] = v14;
    v22 = v4;
    v9[2] = v15;
    v9[3] = v16;
    v10 = v17;
    v9[0] = v13;
    v9[1] = v14;
    sub_262427BA0(a1, v9);
    sub_2623F3C50(v11);
    MEMORY[0x266728D50](v18);
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v22;
  }

  MEMORY[0x266728D50](v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_262446580(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2624463B8(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2624465D0(uint64_t a1)
{
  v2 = sub_2624575A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244660C(uint64_t a1)
{
  v2 = sub_2624575A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262446648@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DFF8, &qword_26246E0F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624575A0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_2624575F4(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26245762C(v13);
}

uint64_t sub_2624468A4(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v13, a1, v5);
  if (!v2)
  {
    v8 = v13;
    v9 = v14;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v13, v12, v10);

    if ((v9 | v14))
    {
      return 2;
    }

    else
    {
      return v8 < v13;
    }
  }

  return result;
}

uint64_t sub_2624469BC(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2624468A4(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262446A0C(uint64_t a1)
{
  v2 = sub_2624574E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262446A48(uint64_t a1)
{
  v2 = sub_2624574E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262446A84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DFE8, &qword_26246E0F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624574E4();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262457538(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262457570(v13);
}

uint64_t sub_262446CE0(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v13, a1, v5);
  if (!v2)
  {
    v8 = v13;
    v9 = v14;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v13, v12, v10);

    if ((v9 | v14))
    {
      return 2;
    }

    else
    {
      return v8 <= v13;
    }
  }

  return result;
}

uint64_t sub_262446DF8(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262446CE0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262446E48(uint64_t a1)
{
  v2 = sub_262457428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262446E84(uint64_t a1)
{
  v2 = sub_262457428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262446EC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DFD8, &qword_26246E0E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262457428();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_26245747C(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624574B4(v13);
}

uint64_t sub_26244711C(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v13, a1, v5);
  if (!v2)
  {
    v8 = v13;
    v9 = v14;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v13, v12, v10);

    if ((v9 | v14))
    {
      return 2;
    }

    else
    {
      return v13 < v8;
    }
  }

  return result;
}

uint64_t sub_262447234(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244711C(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262447284(uint64_t a1)
{
  v2 = sub_26245736C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624472C0(uint64_t a1)
{
  v2 = sub_26245736C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624472FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DFC8, &qword_26246E0E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26245736C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_2624573C0(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624573F8(v13);
}

uint64_t sub_262447558(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v13, a1, v5);
  if (!v2)
  {
    v8 = v13;
    v9 = v14;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v13, v12, v10);

    if ((v9 | v14))
    {
      return 2;
    }

    else
    {
      return v13 <= v8;
    }
  }

  return result;
}

uint64_t sub_262447670(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262447558(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2624476C0(uint64_t a1)
{
  v2 = sub_2624572B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624476FC(uint64_t a1)
{
  v2 = sub_2624572B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262447738@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DFB8, &qword_26246E0D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624572B0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262457304(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26245733C(v13);
}

uint64_t sub_262447994(uint64_t a1)
{
  sub_2623F3CA4(v1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_2623EB668(v9, v11);
  sub_2623F3CA4(v1 + 40, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    __swift_destroy_boxed_opaque_existential_1(v11);
LABEL_6:

    return 2;
  }

  sub_2623EB668(v7, v10);
  v4 = sub_262442C80(a1, v11, v10);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v6 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v6;
  }
}

uint64_t sub_262447AF0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262447994(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262447B40(uint64_t a1)
{
  v2 = sub_26245725C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262447B7C(uint64_t a1)
{
  v2 = sub_26245725C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262447BB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DFA8, &qword_26246E0D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26245725C();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberExpressionDecoder();
    sub_262427F88(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v6 + 8))(v8, v5);
    sub_2623EB668(v13, v14);
    v9 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262447D8C(uint64_t a1)
{
  v2 = sub_262457208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262447DC8(uint64_t a1)
{
  v2 = sub_262457208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262447E04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF98, &qword_26246E0C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262457208();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberExpressionDecoder();
    sub_262427F88(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v6 + 8))(v8, v5);
    sub_2623EB668(v13, v14);
    v9 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262447FC0(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_26244308C(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_2624480BC(uint64_t a1)
{
  v2 = sub_2624571B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624480F8(uint64_t a1)
{
  v2 = sub_2624571B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262448134@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF88, &qword_26246E0C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624571B4();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberExpressionDecoder();
    sub_262427F88(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v6 + 8))(v8, v5);
    sub_2623EB668(v13, v14);
    v9 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2624482F0(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_262443670(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_2624483D4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2624482F0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262448424(uint64_t a1)
{
  v2 = sub_2624570F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262448460(uint64_t a1)
{
  v2 = sub_2624570F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244849C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF78, &qword_26246E0B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624570F8();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_26245714C(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262457184(v13);
}

uint64_t sub_2624486FC(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(&v21, v8, v5);
  if (!v2)
  {
    v11 = v21;
    v12 = v3[8];
    v13 = v3[9];
    v14 = v10;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
    (*(*(v13 + 8) + 24))(&v21, v14, v12);

    if (v11 == 0.0)
    {
      return 2;
    }

    if (v22)
    {

      return 2;
    }

    v16 = *(*&v11 + 16);
    v17 = 32;
    do
    {
      v18 = v16;
      if (v16-- == 0)
      {
        break;
      }

      v20 = *(*&v11 + v17);
      v17 += 8;
    }

    while (v20 != v21);
    v9 = v18 != 0;
  }

  return v9;
}

uint64_t sub_262448860(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2624486FC(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2624488B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75706E497473696CLL && a2 == 0xE900000000000074;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E497265626D756ELL && a2 == 0xEB00000000747570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

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

uint64_t sub_262448998(uint64_t a1)
{
  v2 = sub_26245703C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624489D4(uint64_t a1)
{
  v2 = sub_26245703C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262448A10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF68, &qword_26246E0B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26245703C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262457090(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624570C8(v13);
}

uint64_t sub_262448C70(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(&v20, v8, v5);
  if (!v2)
  {
    v11 = v20;
    v12 = v3[8];
    v13 = v3[9];
    v14 = v10;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
    (*(*(v13 + 8) + 24))(&v20, v14, v12);

    if (v11 == 0.0)
    {
      return 2;
    }

    if (v21)
    {

      return 2;
    }

    v16 = *(*&v11 + 16);
    v17 = 32;
    do
    {
      v18 = v16;
      if (!v16)
      {
        break;
      }

      v19 = *(*&v11 + v17);
      v17 += 8;
      --v16;
    }

    while (v19 == v20);
    v9 = v18 == 0;
  }

  return v9;
}

uint64_t sub_262448DD4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262448C70(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262448E24(uint64_t a1)
{
  v2 = sub_262456F80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262448E60(uint64_t a1)
{
  v2 = sub_262456F80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262448E9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF58, &qword_26246E0A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456F80();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_2623ED108(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262456FD4(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26245700C(v13);
}

uint64_t sub_2624490F8(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(&v22, v8, v5);
  if (!v2)
  {
    v11 = v22;
    v12 = v3[8];
    v13 = v3[9];
    v14 = v10;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
    (*(*(v13 + 8) + 24))(&v22, v14, v12);

    if (v11 && v22)
    {
      v16 = *(v11 + 16);
      if (v16)
      {
        v17 = 0;
        do
        {
          v18 = *(v11 + 32 + 8 * v17++);
          v19 = *(v22 + 16);
          v20 = (v22 + 32);
          while (v19)
          {
            v21 = *v20++;
            --v19;
            if (v21 == v18)
            {
              v9 = 1;
              goto LABEL_15;
            }
          }
        }

        while (v17 != v16);
      }

      v9 = 0;
LABEL_15:
    }

    else
    {

      return 2;
    }
  }

  return v9;
}

uint64_t sub_262449284(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2624490F8(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2624492D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75706E497473696CLL && a2 == 0xE900000000000074;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49737265626D756ELL && a2 == 0xEC0000007475706ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

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

uint64_t sub_2624493BC(uint64_t a1)
{
  v2 = sub_262456EC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624493F8(uint64_t a1)
{
  v2 = sub_262456EC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262449434@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF48, &qword_26246E0A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456EC4();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_2623ED108(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262456F18(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456F50(v13);
}

uint64_t sub_262449690(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(&v22, v8, v5);
  if (!v2)
  {
    v11 = v22;
    v12 = v3[8];
    v13 = v3[9];
    v14 = v10;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
    (*(*(v13 + 8) + 24))(&v22, v14, v12);

    if (v11 && v22)
    {
      v16 = *(v22 + 16);
      if (v16)
      {
        v17 = 0;
        while (2)
        {
          v18 = *(v22 + 32 + 8 * v17++);
          v19 = *(v11 + 16);
          v20 = (v11 + 32);
          do
          {
            if (!v19)
            {
              v9 = 0;
              goto LABEL_15;
            }

            v21 = *v20++;
            --v19;
          }

          while (v21 != v18);
          if (v17 != v16)
          {
            continue;
          }

          break;
        }
      }

      v9 = 1;
LABEL_15:
    }

    else
    {

      return 2;
    }
  }

  return v9;
}

uint64_t sub_262449818(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262449690(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262449868(uint64_t a1)
{
  v2 = sub_262456E08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624498A4(uint64_t a1)
{
  v2 = sub_262456E08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624498E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF38, &qword_26246E098);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456E08();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_2623ED108(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262456E5C(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456E94(v13);
}

uint64_t sub_262449B3C(uint64_t a1)
{
  sub_2623F3CA4(v1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_2623EB668(v9, v11);
  sub_2623F3CA4(v1 + 40, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    __swift_destroy_boxed_opaque_existential_1(v11);
LABEL_6:

    return 2;
  }

  sub_2623EB668(v7, v10);
  v4 = sub_2624426D0(a1, v11, v10, sub_262425210);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v6 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v6;
  }
}

uint64_t sub_262449CAC(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262449B3C(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262449CFC(uint64_t a1)
{
  v2 = sub_262456DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262449D38(uint64_t a1)
{
  v2 = sub_262456DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262449D74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF28, &qword_26246E090);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456DB4();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberListExpressionDecoder();
    sub_2623ED108(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v6 + 8))(v8, v5);
    sub_2623EB668(v13, v14);
    v9 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262449F48(uint64_t a1)
{
  v2 = sub_262456D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262449F84(uint64_t a1)
{
  v2 = sub_262456D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262449FC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF18, &qword_26246E088);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456D60();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberListExpressionDecoder();
    sub_2623ED108(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v6 + 8))(v8, v5);
    sub_2623EB668(v13, v14);
    v9 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244A17C(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_262442D90(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_26244A278(uint64_t a1)
{
  v2 = sub_262456D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244A2B4(uint64_t a1)
{
  v2 = sub_262456D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244A2F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF08, &qword_26246E080);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456D0C();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberListExpressionDecoder();
    sub_2623ED108(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v12);
    (*(v6 + 8))(v8, v5);
    sub_2623EB668(v13, v14);
    v9 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244A4AC(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_262443374(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_26244A590(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244A4AC(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244A5E0(uint64_t a1)
{
  v2 = sub_262456C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244A61C(uint64_t a1)
{
  v2 = sub_262456C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244A658@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DEF8, &qword_26246E078);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456C50();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_2623FB53C(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262456CA4(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456CDC(v13);
}

uint64_t sub_26244A8B4(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v24, a1, v5);
  if (!v2)
  {
    v8 = v25;
    v9 = v3[8];
    v10 = v3[9];
    v11 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v9);
    (*(*(v10 + 8) + 24))(&v24, v11, v9);

    v12 = v25;
    if (v8 && v25)
    {
      v13 = v24;
      v14 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v14 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = objc_allocWithZone(MEMORY[0x277CCAC68]);

        v16 = sub_26244FF6C(v13, v12, 0);
        v17 = sub_2624626D8();
        v18 = [v17 length];

        v19 = sub_2624626D8();

        v20 = [v16 rangeOfFirstMatchInString:v19 options:0 range:{0, v18}];
        v22 = v21;

        return !v20 && v18 == v22;
      }

      else
      {

        return 0;
      }
    }

    else
    {

      return 2;
    }
  }

  return result;
}

uint64_t sub_26244AB58(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244A8B4(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244ABA8()
{
  if (*v0)
  {
    return 0x6E69727473627573;
  }

  else
  {
    return 0x6E49676E69727473;
  }
}

uint64_t sub_26244ABF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E49676E69727473 && a2 == 0xEB00000000747570;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69727473627573 && a2 == 0xEE007475706E4967)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

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

uint64_t sub_26244ACE0(uint64_t a1)
{
  v2 = sub_262456B94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244AD1C(uint64_t a1)
{
  v2 = sub_262456B94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244AD58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DEF0, &qword_26246E070);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456B94();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_2623FB53C(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262456BE8(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456C20(v13);
}

uint64_t sub_26244AFB4(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v18, a1, v5);
  if (!v2)
  {
    v9 = v18;
    v8 = v19;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v18, v12, v10);

    v13 = v19;
    if (v8 && v19)
    {
      v14 = v18;
      v18 = v9;
      v19 = v8;
      sub_262436704();

      v15 = sub_262462958();

      swift_bridgeObjectRelease_n();
      v16 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      v17 = v16 == 0;
      return (v15 & 1) != 0 || v17;
    }

    else
    {

      return 2;
    }
  }

  return result;
}

uint64_t sub_26244B164(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244AFB4(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244B1B4(uint64_t a1)
{
  v2 = sub_262456AD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244B1F0(uint64_t a1)
{
  v2 = sub_262456AD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244B22C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DEE8, &qword_26246E068);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456AD8();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_2623FB53C(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262456B2C(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456B64(v13);
}

uint64_t sub_26244B488(uint64_t a1)
{
  sub_2623F3CA4(v1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAB8, &unk_262465A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAC0, &qword_262468F30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_2623EB668(v9, v11);
  sub_2623F3CA4(v1 + 40, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    __swift_destroy_boxed_opaque_existential_1(v11);
LABEL_6:

    return 2;
  }

  sub_2623EB668(v7, v10);
  v4 = sub_262442B0C(a1, v11, v10);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v6 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v6;
  }
}

uint64_t sub_26244B5E4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244B488(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244B634(uint64_t a1)
{
  v2 = sub_262456A1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244B670(uint64_t a1)
{
  v2 = sub_262456A1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244B6AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DED8, &qword_26246E060);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456A1C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  sub_2623EB668(v12, v13);
  v15 = 1;
  sub_262462B58();
  sub_2623FB53C(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
  (*(v6 + 8))(v8, v5);
  sub_2623EB668(v12, &v14);
  sub_262456A70(v13, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456AA8(v13);
}

uint64_t sub_26244B908(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v14, a1, v5);
  if (!v2)
  {
    v9 = v14;
    v8 = v15;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v14, v12, v10);

    if (v8 && v15)
    {
      v14 = v9;
      v15 = v8;
      sub_262436704();
      v13 = sub_262462948();

      return v13 == 0;
    }

    else
    {

      return 2;
    }
  }

  return result;
}

uint64_t sub_26244BA7C(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244B908(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244BACC(uint64_t a1)
{
  v2 = sub_262456960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244BB08(uint64_t a1)
{
  v2 = sub_262456960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244BB44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DEC8, &qword_26246E058);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_262456960();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v45 = v6;
  LOBYTE(v48[0]) = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v50, v51);
  __swift_destroy_boxed_opaque_existential_1(v50);
  sub_2623EB668(v51, v52);
  LOBYTE(v48[0]) = 2;
  sub_262462B58();
  type metadata accessor for BooleanExpressionDecoder();
  sub_262441880(v50, v51);
  __swift_destroy_boxed_opaque_existential_1(v50);
  sub_2623EB668(v51, &v54);
  LOBYTE(v51[0]) = 1;
  sub_2623F3688();
  sub_262462B38();
  v40 = v4;
  v13 = sub_262462BC8();
  v39 = *(v13 + 16);
  if (!v39)
  {
    v16 = MEMORY[0x277D84F98];
LABEL_20:

    (*(v47 + 8))(v45, v40);
    (*(v8 + 8))(v10, v7);
    v53 = v16;
    sub_2624569B4(v52, v46);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_2624569EC(v52);
  }

  v14 = 0;
  v15 = (v13 + 56);
  v16 = MEMORY[0x277D84F98];
  v38 = v13;
  while (1)
  {
    v44 = v16;
    if (v14 >= *(v13 + 16))
    {
      break;
    }

    v18 = *(v15 - 3);
    v19 = *(v15 - 2);
    v20 = *v15;
    v43 = v15;
    v21 = *(v15 - 1);
    v22 = v18;
    v48[0] = v18;
    v48[1] = v19;
    v48[2] = v21;
    v49 = v20;
    swift_bridgeObjectRetain_n();
    sub_262462B58();

    sub_262441880(v50, v51);
    v41 = v14;
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_2623EB668(v51, v50);
    v23 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = v23;
    v24 = v19;
    v26 = sub_2624414FC(v22, v19);
    v27 = v23[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_22;
    }

    v30 = v25;
    if (v23[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v25)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_262461F90();
        if (v30)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_26246107C(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_2624414FC(v22, v24);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_24;
      }

      v26 = v31;
      if (v30)
      {
LABEL_5:

        v16 = v48[0];
        v17 = (*(v48[0] + 56) + 40 * v26);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_2623EB668(v50, v17);
        goto LABEL_6;
      }
    }

    v33 = v22;
    v16 = v48[0];
    *(v48[0] + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v34 = (v16[6] + 16 * v26);
    *v34 = v33;
    v34[1] = v24;
    sub_2623EB668(v50, v16[7] + 40 * v26);
    v35 = v16[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_23;
    }

    v16[2] = v37;
LABEL_6:
    v13 = v38;
    v14 = v41 + 1;
    v15 = v43 + 32;
    if (v39 == v41 + 1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_262462C78();
  __break(1u);
  return result;
}