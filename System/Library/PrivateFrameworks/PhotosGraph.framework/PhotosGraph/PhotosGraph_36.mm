void sub_22F3C2518(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_29;
  }

  v4 = sub_22F1229E8(0x756C61566E696167, 0xE900000000000065);
  if ((v5 & 1) == 0)
  {
    goto LABEL_29;
  }

  sub_22F13A100(*(v3 + 56) + 32 * v4, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_28;
  }

  v6 = sub_22F1229E8(0x6C426F5465646166, 0xEB000000006B6361);
  if ((v7 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_22F13A100(*(v3 + 56) + 32 * v6, v51);
  sub_22F170D8C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (!*(v3 + 16) || (v8 = sub_22F1229E8(0x65536E49656D6974, 0xED000073646E6F63), (v9 & 1) == 0) || (sub_22F13A100(*(v3 + 56) + 32 * v8, v51), (swift_dynamicCast() & 1) == 0))
  {
LABEL_27:

LABEL_28:

    goto LABEL_29;
  }

  if (*(v3 + 16))
  {
    v10 = sub_22F1229E8(0xD000000000000011, 0x800000022F7900B0);
    if (v11)
    {
      sub_22F13A100(*(v3 + 56) + 32 * v10, v51);
      if (swift_dynamicCast())
      {
        if (v50 >> 62)
        {
          v12 = sub_22F741A00();
        }

        else
        {
          v12 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v13 = MEMORY[0x277D84F90];
        if (v12)
        {
          v51[0] = MEMORY[0x277D84F90];
          sub_22F1464F4(0, v12 & ~(v12 >> 63), 0);
          if (v12 < 0)
          {
            __break(1u);
LABEL_51:
            __break(1u);
            return;
          }

          v14 = 0;
          v15 = v51[0];
          do
          {
            if ((v50 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x2319016F0](v14);
            }

            else
            {
              v16 = *(v50 + 8 * v14 + 32);
            }

            v17 = v16;
            [v16 floatValue];
            v19 = v18;

            v51[0] = v15;
            v21 = *(v15 + 16);
            v20 = *(v15 + 24);
            v22 = v21 + 1;
            if (v21 >= v20 >> 1)
            {
              v48 = v14;
              sub_22F1464F4((v20 > 1), v21 + 1, 1);
              v22 = v21 + 1;
              v15 = v51[0];
            }

            ++v14;
            *(v15 + 16) = v22;
            *(v15 + 4 * v21 + 32) = v19;
          }

          while (v12 != v14);

          v13 = MEMORY[0x277D84F90];
        }

        else
        {

          v15 = MEMORY[0x277D84F90];
        }

        [v50 floatValue];
        v32 = v31;
        [v50 floatValue];
        v34 = v33;
        if (v50 >> 62)
        {
          v35 = v50;
          v36 = sub_22F741A00();
          if (v36)
          {
LABEL_37:
            v49 = v50;
            v51[0] = v13;
            sub_22F1464F4(0, v36 & ~(v36 >> 63), 0);
            if ((v36 & 0x8000000000000000) == 0)
            {
              v37 = 0;
              v13 = v51[0];
              v38 = v35;
              v39 = v35 & 0xC000000000000001;
              v40 = v36;
              do
              {
                if (v39)
                {
                  v41 = MEMORY[0x2319016F0](v37, v38);
                }

                else
                {
                  v41 = *(v38 + 8 * v37 + 32);
                }

                v42 = v41;
                [v41 floatValue];
                v44 = v43;

                v51[0] = v13;
                v46 = *(v13 + 16);
                v45 = *(v13 + 24);
                v47 = v46 + 1;
                if (v46 >= v45 >> 1)
                {
                  sub_22F1464F4((v45 > 1), v46 + 1, 1);
                  v47 = v46 + 1;
                  v13 = v51[0];
                }

                ++v37;
                *(v13 + 16) = v47;
                *(v13 + 4 * v46 + 32) = v44;
                v38 = v50;
              }

              while (v40 != v37);

              goto LABEL_49;
            }

            goto LABEL_51;
          }
        }

        else
        {
          v35 = v50;
          v36 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v36)
          {
            goto LABEL_37;
          }
        }

LABEL_49:
        *a2 = v15;
        a2[1] = v32 | (v34 << 32);
        a2[2] = v13;
        return;
      }

      goto LABEL_27;
    }
  }

LABEL_29:
  if (qword_2810A9478 != -1)
  {
    swift_once();
  }

  v23 = sub_22F740B90();
  __swift_project_value_buffer(v23, qword_2810B4DC0);

  v24 = sub_22F740B70();
  v25 = sub_22F7415E0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v51[0] = v27;
    *v26 = 136315138;
    v28 = sub_22F740CB0();
    v30 = sub_22F145F20(v28, v29, v51);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_22F0FC000, v24, v25, "Could not parse expected attributes from FlexML exit points dictionary: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x2319033A0](v27, -1, -1);
    MEMORY[0x2319033A0](v26, -1, -1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_22F3C2B18(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = sub_22F1229E8(0x756C61566E696167, 0xE900000000000065);
    if (v5)
    {
      sub_22F13A100(*(v3 + 56) + 32 * v4, v50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
      if (swift_dynamicCast())
      {
        v6 = v51;
        if (*(v3 + 16))
        {
          v7 = sub_22F1229E8(0x65536E49656D6974, 0xED000073646E6F63);
          if (v8)
          {
            sub_22F13A100(*(v3 + 56) + 32 * v7, v50);
            sub_22F170D8C();
            if (swift_dynamicCast())
            {
              v9 = v51;
              if (*(v3 + 16))
              {
                v10 = sub_22F1229E8(0xD000000000000011, 0x800000022F7900B0);
                if (v11)
                {
                  sub_22F13A100(*(v3 + 56) + 32 * v10, v50);
                  if (swift_dynamicCast())
                  {
                    v12 = v51;
                    if (v6 >> 62)
                    {
                      v13 = sub_22F741A00();
                    }

                    else
                    {
                      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    v14 = MEMORY[0x277D84F90];
                    v49 = v12;
                    if (v13)
                    {
                      v15 = v9;
                      v50[0] = MEMORY[0x277D84F90];
                      sub_22F1464F4(0, v13 & ~(v13 >> 63), 0);
                      if (v13 < 0)
                      {
                        __break(1u);
LABEL_46:
                        __break(1u);
                        return;
                      }

                      v16 = 0;
                      v17 = v50[0];
                      do
                      {
                        if ((v6 & 0xC000000000000001) != 0)
                        {
                          v18 = MEMORY[0x2319016F0](v16, v6);
                        }

                        else
                        {
                          v18 = v6[v16 + 4];
                        }

                        v19 = v18;
                        [v18 floatValue];
                        v21 = v20;

                        v50[0] = v17;
                        v23 = *(v17 + 16);
                        v22 = *(v17 + 24);
                        v24 = v23 + 1;
                        if (v23 >= v22 >> 1)
                        {
                          v47 = v16;
                          sub_22F1464F4((v22 > 1), v23 + 1, 1);
                          v24 = v23 + 1;
                          v17 = v50[0];
                        }

                        ++v16;
                        *(v17 + 16) = v24;
                        *(v17 + 4 * v23 + 32) = v21;
                      }

                      while (v13 != v16);

                      v9 = v15;
                      v12 = v49;
                      v14 = MEMORY[0x277D84F90];
                    }

                    else
                    {

                      v17 = MEMORY[0x277D84F90];
                    }

                    [v9 floatValue];
                    v34 = v33;
                    if (v12 >> 62)
                    {
                      v35 = sub_22F741A00();
                      if (v35)
                      {
LABEL_32:
                        v48 = v9;
                        v50[0] = v14;
                        sub_22F1464F4(0, v35 & ~(v35 >> 63), 0);
                        if ((v35 & 0x8000000000000000) == 0)
                        {
                          v36 = 0;
                          v37 = v50[0];
                          v38 = v12;
                          v39 = v12 & 0xC000000000000001;
                          do
                          {
                            if (v39)
                            {
                              v40 = MEMORY[0x2319016F0](v36, v38);
                            }

                            else
                            {
                              v40 = *(v38 + 8 * v36 + 32);
                            }

                            v41 = v40;
                            [v40 floatValue];
                            v43 = v42;

                            v50[0] = v37;
                            v45 = *(v37 + 16);
                            v44 = *(v37 + 24);
                            v46 = v45 + 1;
                            if (v45 >= v44 >> 1)
                            {
                              sub_22F1464F4((v44 > 1), v45 + 1, 1);
                              v46 = v45 + 1;
                              v37 = v50[0];
                            }

                            ++v36;
                            *(v37 + 16) = v46;
                            *(v37 + 4 * v45 + 32) = v43;
                            v38 = v49;
                          }

                          while (v35 != v36);

                          goto LABEL_44;
                        }

                        goto LABEL_46;
                      }
                    }

                    else
                    {
                      v35 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (v35)
                      {
                        goto LABEL_32;
                      }
                    }

                    v37 = MEMORY[0x277D84F90];
LABEL_44:
                    *a2 = v17;
                    a2[1] = v34;
                    a2[2] = v37;
                    return;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_2810A9478 != -1)
  {
    swift_once();
  }

  v25 = sub_22F740B90();
  __swift_project_value_buffer(v25, qword_2810B4DC0);

  v26 = sub_22F740B70();
  v27 = sub_22F7415E0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50[0] = v29;
    *v28 = 136315138;
    v30 = sub_22F740CB0();
    v32 = sub_22F145F20(v30, v31, v50);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_22F0FC000, v26, v27, "Could not parse expected attributes from FlexML entry points dictionary: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x2319033A0](v29, -1, -1);
    MEMORY[0x2319033A0](v28, -1, -1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t sub_22F3C3070(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_22F741BD0();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_22F13A100(i, v5);
    sub_22F170D8C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22F741BA0();
    sub_22F741BE0();
    sub_22F741BF0();
    sub_22F741BB0();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

double sub_22F3C315C(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

void *sub_22F3C319C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for Song(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 80);

  sub_22F741C40();

  sub_22F741E10();
  v9 = *(v5 + 48);
  v37 = v5 + 48;
  v39 = v9;
  v10 = v9(v3, 1, v4);
  v11 = MEMORY[0x277D84F90];
  if (v10 != 1)
  {
    v12 = 0;
    v35 = v5;
    v36 = v8;
    v38 = (v8 + 32) & ~v8;
    v18 = MEMORY[0x277D84F90] + v38;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      result = sub_22F15CB04(v3, v7);
      if (v12)
      {
        v11 = v19;
        v16 = __OFSUB__(v12--, 1);
        if (v16)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v20 = v19[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0570, &qword_22F770810);
        v23 = *(v5 + 72);
        v24 = v38;
        v11 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v11);
        if (!v23)
        {
          goto LABEL_34;
        }

        v25 = result - v24;
        if ((result - v24) == 0x8000000000000000 && v23 == -1)
        {
          goto LABEL_35;
        }

        v27 = v4;
        v28 = v25 / v23;
        v11[2] = v22;
        v11[3] = 2 * (v25 / v23);
        v29 = v11 + v24;
        v30 = v19[3] >> 1;
        v31 = v30 * v23;
        if (v19[2])
        {
          if (v11 < v19 || v29 >= v19 + v38 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v18 = &v29[v31];
        v33 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;

        v4 = v27;
        v5 = v35;
        v16 = __OFSUB__(v33, 1);
        v12 = v33 - 1;
        if (v16)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      sub_22F15CB04(v7, v18);
      v18 += *(v5 + 72);
      sub_22F741E10();
      v19 = v11;
      if (v39(v3, 1, v4) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v12 = 0;
LABEL_3:

  result = sub_22F120ADC(v3, &qword_27DAB1250, &qword_22F781A10);
  v14 = v11[3];
  if (v14 >= 2)
  {
    v15 = v14 >> 1;
    v16 = __OFSUB__(v15, v12);
    v17 = v15 - v12;
    if (v16)
    {
      goto LABEL_36;
    }

    v11[2] = v17;
  }

  return v11;
}

void *sub_22F3C34E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v33 - v1;
  v3 = type metadata accessor for Song(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 80);
  sub_22F3BECB8(v2);
  v8 = *(v4 + 48);
  v36 = v4 + 48;
  v38 = v8;
  v9 = v8(v2, 1, v3);
  v10 = MEMORY[0x277D84F90];
  if (v9 != 1)
  {
    v11 = 0;
    v34 = v4;
    v35 = v7;
    v37 = (v7 + 32) & ~v7;
    v17 = MEMORY[0x277D84F90] + v37;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = sub_22F15CB04(v2, v6);
      if (v11)
      {
        v10 = v18;
        v15 = __OFSUB__(v11--, 1);
        if (v15)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v19 = v18[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0570, &qword_22F770810);
        v22 = *(v4 + 72);
        v23 = v37;
        v10 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v10);
        if (!v22)
        {
          goto LABEL_34;
        }

        v24 = result - v23;
        if ((result - v23) == 0x8000000000000000 && v22 == -1)
        {
          goto LABEL_35;
        }

        v26 = v3;
        v27 = v24 / v22;
        v10[2] = v21;
        v10[3] = 2 * (v24 / v22);
        v28 = v10 + v23;
        v29 = v18[3] >> 1;
        v30 = v29 * v22;
        if (v18[2])
        {
          if (v10 < v18 || v28 >= v18 + v37 + v30)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v17 = &v28[v30];
        v32 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;

        v3 = v26;
        v4 = v34;
        v15 = __OFSUB__(v32, 1);
        v11 = v32 - 1;
        if (v15)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }
      }

      sub_22F15CB04(v6, v17);
      v17 += *(v4 + 72);
      sub_22F3BECB8(v2);
      v18 = v10;
      if (v38(v2, 1, v3) == 1)
      {
        goto LABEL_3;
      }
    }
  }

  v11 = 0;
LABEL_3:
  result = sub_22F120ADC(v2, &qword_27DAB1250, &qword_22F781A10);
  v13 = v10[3];
  if (v13 >= 2)
  {
    v14 = v13 >> 1;
    v15 = __OFSUB__(v14, v11);
    v16 = v14 - v11;
    if (v15)
    {
      goto LABEL_36;
    }

    v10[2] = v16;
  }

  return v10;
}

void sub_22F3C3800(uint64_t a1)
{
  v34 = type metadata accessor for Song(0);
  v2 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v5 < v7)
  {
    v9 = 0;
    v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v11 = MEMORY[0x277D84F90] + v10;
    v37 = *(v2 + 80);
    v38 = v10;
    v39 = v6 + v10;
    v12 = MEMORY[0x277D84F90];
    v35 = v4;
    v36 = v6;
    while ((v5 & 0x8000000000000000) == 0)
    {
      if (v5 >= *(v6 + 16))
      {
        goto LABEL_36;
      }

      v14 = *(v2 + 72);
      v15 = v39 + v14 * v5;
      *(a1 + 24) = v5 + 1;
      sub_22F15CAA0(v15, v4);
      if (v9)
      {
        v8 = v12;
        v13 = __OFSUB__(v9--, 1);
        if (v13)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v16 = v12[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_37;
        }

        v17 = a1;
        v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0570, &qword_22F770810);
        v20 = v38;
        v8 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v8);
        if (!v14)
        {
          goto LABEL_38;
        }

        v22 = v21 - v20;
        if (v21 - v20 == 0x8000000000000000 && v14 == -1)
        {
          goto LABEL_39;
        }

        v24 = v2;
        v25 = v22 / v14;
        v8[2] = v19;
        v8[3] = 2 * (v22 / v14);
        v26 = v8 + v20;
        v27 = v12[3] >> 1;
        v28 = v27 * v14;
        if (v12[2])
        {
          if (v8 < v12 || v26 >= v12 + v38 + v28)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v12)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v12[2] = 0;
        }

        v11 = &v26[v28];
        v30 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

        v2 = v24;
        a1 = v17;
        v4 = v35;
        v6 = v36;
        v13 = __OFSUB__(v30, 1);
        v9 = v30 - 1;
        if (v13)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      sub_22F15CB04(v4, v11);
      v11 += v14;
      v5 = *(a1 + 24);
      v12 = v8;
      if (v5 >= v7)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_30:
  v9 = 0;
LABEL_31:
  *(a1 + 24) = 0;
  v31 = v8[3];
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v13 = __OFSUB__(v32, v9);
    v33 = v32 - v9;
    if (v13)
    {
LABEL_40:
      __break(1u);
      return;
    }

    v8[2] = v33;
  }
}

void sub_22F3C3A9C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (63 - v3) >> 6;

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90] + 32; ; i = (v34 + 1))
  {
    v34 = i;
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (v7 >> 62)
    {
      if (v8 == sub_22F741A00())
      {
LABEL_8:
        while (v5)
        {
          v13 = v10;
LABEL_15:
          v15 = __clz(__rbit64(v5));
          v5 &= v5 - 1;
          v16 = *(*(a1 + 56) + ((v13 << 9) | (8 * v15)));

          v8 = 0;
          v7 = v16;
          if (v16)
          {
            goto LABEL_6;
          }
        }

        v14 = v10;
        v8 = v9;
        while (1)
        {
          v13 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v13 >= v6)
          {
            goto LABEL_40;
          }

          v5 = *(v2 + 8 * v13);
          ++v14;
          if (v5)
          {
            v10 = v13;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }
    }

    else if (v8 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v18 = __OFADD__(v8++, 1);
    if (v18)
    {
      goto LABEL_39;
    }

LABEL_22:
    if (!v9)
    {
      v33 = v17;
      v19 = v11[3];
      if (((v19 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_49;
      }

      v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      v35 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v22 = swift_allocObject();
      v23 = _swift_stdlib_malloc_size(v22);
      v24 = v23 - 32;
      if (v23 < 32)
      {
        v24 = v23 - 25;
      }

      v25 = v24 >> 3;
      v22[2] = v35;
      v22[3] = (2 * (v24 >> 3)) | 1;
      v26 = (v22 + 4);
      v27 = v11[3] >> 1;
      if (v11[2])
      {
        v28 = v11 + 4;
        if (v22 != v11 || v26 >= v28 + 8 * v27)
        {
          v32 = v11[3] >> 1;
          memmove(v22 + 4, v28, 8 * v27);
          v27 = v32;
          v26 = (v22 + 4);
        }

        v11[2] = 0;
      }

      v34 = (v26 + 8 * v27);
      v9 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

      v11 = v22;
      v17 = v33;
    }

    v18 = __OFSUB__(v9--, 1);
    if (v18)
    {
      goto LABEL_48;
    }

    *v34 = v17;
  }

  v17 = MEMORY[0x2319016F0](v8, v7);
  v18 = __OFADD__(v8++, 1);
  if (!v18)
  {
    goto LABEL_22;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  sub_22F0FF590(a1);

  v29 = v11[3];
  if (v29 >= 2)
  {
    v30 = v29 >> 1;
    v18 = __OFSUB__(v30, v8);
    v31 = v30 - v8;
    if (!v18)
    {
      v11[2] = v31;
      return;
    }

    goto LABEL_45;
  }
}

void sub_22F3C3D98(uint64_t a1)
{
  v3 = v1;
  v5 = [v1 adamID];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = sub_22F740E20();
  v9 = v8;

  if (v7 == *a1 && v9 == *(a1 + 8))
  {
  }

  else
  {
    v11 = sub_22F742040();

    if ((v11 & 1) == 0)
    {
LABEL_7:
      sub_22F3C4B9C();
      swift_allocError();
      *v12 = 1;
      swift_willThrow();
      return;
    }
  }

  if (*(a1 + 24))
  {
    v13 = sub_22F740DF0();
  }

  else
  {
    v13 = 0;
  }

  [v3 setTitle_];

  if (*(a1 + 40))
  {
    v14 = sub_22F740DF0();
  }

  else
  {
    v14 = 0;
  }

  [v3 setArtist_];

  if (*(a1 + 56))
  {
    v15 = sub_22F740DF0();
  }

  else
  {
    v15 = 0;
  }

  [v3 setAlbum_];

  if (*(a1 + 72) == 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = sub_22F7412C0();
  }

  [v3 setIsExplicit_];

  if (*(a1 + 88))
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_22F741350();
  }

  [v3 setDuration_];

  if (*(a1 + 112))
  {
    v18 = sub_22F740DF0();
  }

  else
  {
    v18 = 0;
  }

  [v3 setArtworkURLFormat_];

  if (*(a1 + 128))
  {
    v19 = sub_22F740DF0();
  }

  else
  {
    v19 = 0;
  }

  [v3 setSongURLPath_];

  if (*(a1 + 144))
  {
    v20 = sub_22F740DF0();
  }

  else
  {
    v20 = 0;
  }

  [v3 setIntroPreviewPath_];

  v21 = type metadata accessor for Song(0);
  if (*(a1 + v21[26]) != 1)
  {
    sub_22F73F350();
    swift_allocObject();
    sub_22F73F340();
    sub_22F3C4BF0();
    v22 = sub_22F73F330();
    v24 = v23;

    if (v2)
    {
      return;
    }

    v25 = sub_22F73F4F0();
    sub_22F133BF0(v22, v24);
    [v3 setFlexMLAnalysisAsData_];
  }

  if (*(a1 + v21[18] + 4))
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_22F7413C0();
  }

  [v3 setArousal_];

  if (*(a1 + v21[19] + 4))
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_22F7413C0();
  }

  [v3 setValence_];

  if (*(a1 + v21[22] + 4))
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_22F7413C0();
  }

  [v3 setLoudnessMainPeak_];

  if (*(a1 + v21[23] + 4))
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_22F7413C0();
  }

  [v3 setLoudnessMainValue_];

  sub_22F170D8C();
  v30 = sub_22F7417E0();
  [v3 setClearedForPhotosMemoriesExport_];

  if (*(a1 + v21[25] + 8))
  {
    v31 = sub_22F740DF0();
  }

  else
  {
    v31 = 0;
  }

  [v3 setContentProvider_];

  v32 = sub_22F73F5B0();
  [v3 setCacheDate_];
}

void sub_22F3C428C(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v91 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  *&v9 = MEMORY[0x28223BE20](v8 - 8).n128_u64[0];
  v11 = &v91 - v10;
  v12 = [v1 adamID];
  if (!v12)
  {
    sub_22F3C4B9C();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    return;
  }

  v13 = v12;
  v113 = sub_22F740E20();
  v114 = v14;

  v15 = [v3 duration];
  v16 = v15;
  if (v15)
  {
    [v15 floatValue];
    v18 = v17;

    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  v21 = [v3 flexMLAnalysisAsData];
  if (v21)
  {
    v22 = v16;
    v23 = v21;
    v24 = sub_22F73F510();
    v26 = v25;

    sub_22F73F310();
    swift_allocObject();
    sub_22F73F300();
    sub_22F39A024();
    sub_22F73F2F0();
    if (v2)
    {
      sub_22F133BF0(v24, v26);

      return;
    }

    sub_22F133BF0(v24, v26);

    v105 = v116;
    v106 = v115;
    v107 = v118 | (v119 << 32);
    v108 = v117;
    v16 = v22;
  }

  else
  {
    v107 = 0;
    v108 = 0;
    v106 = xmmword_22F781B40;
    v105 = 0u;
  }

  v109 = v16;
  v27 = [v3 title];
  if (v27)
  {
    v28 = v27;
    v104 = sub_22F740E20();
    v103 = v29;
  }

  else
  {
    v104 = 0;
    v103 = 0;
  }

  v30 = [v3 artist];
  if (v30)
  {
    v31 = v30;
    v102 = sub_22F740E20();
    v101 = v32;
  }

  else
  {
    v102 = 0;
    v101 = 0;
  }

  v33 = [v3 album];
  if (v33)
  {
    v34 = v33;
    v100 = sub_22F740E20();
    v99 = v35;
  }

  else
  {
    v100 = 0;
    v99 = 0;
  }

  v36 = [v3 isExplicit];
  if (v36)
  {
    v37 = v36;
    v98 = [v36 BOOLValue];
  }

  else
  {
    v98 = 2;
  }

  v38 = [v3 artworkURLFormat];
  if (v38)
  {
    v39 = v38;
    v97 = sub_22F740E20();
    v96 = v40;
  }

  else
  {
    v97 = 0;
    v96 = 0;
  }

  v41 = [v3 songURLPath];
  if (v41)
  {
    v42 = v41;
    v95 = sub_22F740E20();
    v94 = v43;
  }

  else
  {
    v95 = 0;
    v94 = 0;
  }

  v44 = [v3 introPreviewPath];
  if (v44)
  {
    v45 = v44;
    v93 = sub_22F740E20();
    v92 = v46;
  }

  else
  {
    v93 = 0;
    v92 = 0;
  }

  v47 = sub_22F73F7C0();
  (*(*(v47 - 8) + 56))(v11, 1, 1, v47);
  v48 = sub_22F73F690();
  v49 = *(*(v48 - 8) + 56);
  v111 = v7;
  v49(v7, 1, 1, v48);
  v50 = [v3 arousal];
  v51 = v50;
  v52 = 0;
  v53 = 0;
  if (v50)
  {
    [v50 floatValue];
    v53 = v54;
  }

  v55 = [v3 valence];
  v56 = v55;
  if (v55)
  {
    [v55 floatValue];
    v52 = v57;
  }

  v110 = v11;
  v58 = [v3 loudnessMainPeak];
  v59 = v58;
  v60 = 0;
  v61 = 0;
  if (v58)
  {
    [v58 floatValue];
    v61 = v62;
  }

  v63 = [v3 loudnessMainValue];
  v64 = v63;
  if (v63)
  {
    [v63 floatValue];
    v60 = v65;
  }

  v66 = [v3 contentProvider];
  v112 = v2;
  if (v66)
  {
    v67 = v66;
    v68 = sub_22F740E20();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = v64 == 0;
  v72 = v114;
  *a1 = v113;
  *(a1 + 8) = v72;
  v73 = v59 == 0;
  v74 = v103;
  *(a1 + 16) = v104;
  *(a1 + 24) = v74;
  LOBYTE(v74) = v109 == 0;
  v75 = v101;
  *(a1 + 32) = v102;
  *(a1 + 40) = v75;
  v76 = v99;
  *(a1 + 48) = v100;
  *(a1 + 56) = v76;
  *(a1 + 64) = 0;
  *(a1 + 72) = v98;
  *(a1 + 80) = v19;
  *(a1 + 88) = v74;
  *(a1 + 92) = 0;
  *(a1 + 96) = 1;
  v77 = v96;
  *(a1 + 104) = v97;
  *(a1 + 112) = v77;
  v78 = v94;
  *(a1 + 120) = v95;
  *(a1 + 128) = v78;
  v79 = v92;
  *(a1 + 136) = v93;
  *(a1 + 144) = v79;
  v80 = type metadata accessor for Song(0);
  sub_22F1207AC(v110, a1 + v80[15], &qword_27DAB0C90, &unk_22F785B70);
  v81 = a1 + v80[26];
  v82 = v105;
  *v81 = v106;
  *(v81 + 16) = v82;
  v83 = v107;
  *(v81 + 32) = v108;
  *(v81 + 44) = BYTE4(v83);
  *(v81 + 40) = v83;
  sub_22F1207AC(v111, a1 + v80[16], &qword_27DAB0920, &qword_22F770B20);
  *(a1 + v80[17]) = 0;
  v84 = a1 + v80[18];
  *v84 = v53;
  *(v84 + 4) = v51 == 0;
  v85 = a1 + v80[19];
  *v85 = v52;
  *(v85 + 4) = v56 == 0;
  v86 = a1 + v80[20];
  *v86 = 0;
  *(v86 + 4) = 1;
  v87 = a1 + v80[21];
  *v87 = 0;
  *(v87 + 4) = 1;
  v88 = a1 + v80[22];
  *v88 = v61;
  *(v88 + 4) = v73;
  v89 = a1 + v80[23];
  *v89 = v60;
  *(v89 + 4) = v71;
  *(a1 + v80[24]) = 0;
  v90 = (a1 + v80[25]);
  *v90 = v68;
  v90[1] = v70;
}

id sub_22F3C4B0C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MemoryDisplaySongEntry();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22F3C4B64()
{
  v0 = qword_27DAB4028;

  return v0;
}

unint64_t sub_22F3C4B9C()
{
  result = qword_27DAB4038;
  if (!qword_27DAB4038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4038);
  }

  return result;
}

unint64_t sub_22F3C4BF0()
{
  result = qword_2810ABB90;
  if (!qword_2810ABB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABB90);
  }

  return result;
}

id sub_22F3C4C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();

  v7 = sub_22F740DF0();

  v8 = [v6 entityForName:v7 inManagedObjectContext:a1];

  if (v8)
  {
    v6 = [objc_allocWithZone(type metadata accessor for MemoryDisplaySongEntry()) initWithEntity:v8 insertIntoManagedObjectContext:a1];

    v9 = sub_22F740DF0();
    [v6 setAdamID_];

    if (*(a2 + 24))
    {
      v10 = sub_22F740DF0();
    }

    else
    {
      v10 = 0;
    }

    [v6 setTitle_];

    if (*(a2 + 40))
    {
      v11 = sub_22F740DF0();
    }

    else
    {
      v11 = 0;
    }

    [v6 setArtist_];

    if (*(a2 + 56))
    {
      v12 = sub_22F740DF0();
    }

    else
    {
      v12 = 0;
    }

    [v6 setAlbum_];

    if (*(a2 + 72) == 2)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_22F7412C0();
    }

    [v6 setIsExplicit_];

    if (*(a2 + 88))
    {
      v14 = 0;
    }

    else
    {
      v14 = sub_22F741350();
    }

    [v6 setDuration_];

    if (*(a2 + 112))
    {
      v15 = sub_22F740DF0();
    }

    else
    {
      v15 = 0;
    }

    [v6 setArtworkURLFormat_];

    if (*(a2 + 128))
    {
      v16 = sub_22F740DF0();
    }

    else
    {
      v16 = 0;
    }

    [v6 setSongURLPath_];

    if (*(a2 + 144))
    {
      v17 = sub_22F740DF0();
    }

    else
    {
      v17 = 0;
    }

    [v6 setIntroPreviewPath_];

    v18 = type metadata accessor for Song(0);
    v19 = (a2 + v18[26]);
    v20 = *v19;
    if (*v19 != 1)
    {
      v21 = *(v19 + 10);
      v22 = *(v19 + 44);
      sub_22F73F350();
      swift_allocObject();
      sub_22F73F340();
      v36 = v20;
      v38 = *(v19 + 3);
      v37 = *(v19 + 1);
      BYTE4(v39) = v22;
      LODWORD(v39) = v21;
      sub_22F3C4BF0();
      v23 = sub_22F73F330();
      if (v3)
      {

        return v6;
      }

      v25 = v23;
      v26 = v24;

      v27 = sub_22F73F4F0();
      sub_22F133BF0(v25, v26);
      [v6 setFlexMLAnalysisAsData_];
    }

    if (*(a2 + v18[18] + 4))
    {
      v28 = 0;
    }

    else
    {
      v28 = sub_22F7413C0();
    }

    [v6 setArousal_];

    if (*(a2 + v18[19] + 4))
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_22F7413C0();
    }

    [v6 setValence_];

    if (*(a2 + v18[22] + 4))
    {
      v30 = 0;
    }

    else
    {
      v30 = sub_22F7413C0();
    }

    [v6 setLoudnessMainPeak_];

    if (*(a2 + v18[23] + 4))
    {
      v31 = 0;
    }

    else
    {
      v31 = sub_22F7413C0();
    }

    [v6 setLoudnessMainValue_];

    sub_22F170D8C();
    v32 = sub_22F7417E0();
    [v6 setClearedForPhotosMemoriesExport_];

    if (*(a2 + v18[25] + 8))
    {
      v33 = sub_22F740DF0();
    }

    else
    {
      v33 = 0;
    }

    [v6 setContentProvider_];

    v34 = sub_22F73F5B0();
    [v6 setCacheDate_];
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }

  return v6;
}

unint64_t sub_22F3C5198()
{
  result = qword_27DAB4040;
  if (!qword_27DAB4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4040);
  }

  return result;
}

id sub_22F3C51EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v29 = MEMORY[0x277D84F90];
  sub_22F146E84(0, v1, 0);
  v2 = v29;
  v4 = v3 + 64;
  result = sub_22F741980();
  v6 = result;
  v7 = 0;
  v28 = *(v3 + 36);
  v24 = v3 + 72;
  v25 = v1;
  v26 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v28 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v11 = *(*(v3 + 48) + 8 * v6);
    v27 = *(*(v3 + 56) + 8 * v6);
    v12 = v3;
    v14 = *(v29 + 16);
    v13 = *(v29 + 24);
    result = v11;
    if (v14 >= v13 >> 1)
    {
      v23 = result;
      sub_22F146E84((v13 > 1), v14 + 1, 1);
      result = v23;
    }

    *(v29 + 16) = v14 + 1;
    v15 = v29 + 16 * v14;
    *(v15 + 32) = result;
    *(v15 + 40) = v27;
    v8 = 1 << *(v12 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = v26;
    v16 = *(v26 + 8 * v10);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v12;
    if (v28 != *(v12 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v9 = v25;
      v20 = (v24 + 8 * v10);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_22F107D18(v6, v28, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v6, v28, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_22F3C5440(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v34 = v6;
  v35 = v2;
  while (v5)
  {
LABEL_11:
    v10 = *(*(a1 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = *a2;
    if ((*a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x2319016F0](v10);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v12 = *(v11 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = sub_22F740E20();
    v16 = v15;
    v40 = MEMORY[0x277D839B0];
    LOBYTE(v39) = 0;
    v17 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
    swift_beginAccess();
    sub_22F107D08(&v39, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *&v13[v17];
    v19 = v41;
    v20 = sub_22F1229E8(v14, v16);
    v22 = v19[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_29;
    }

    v26 = v21;
    if (v19[3] < v25)
    {
      sub_22F125CA4(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_22F1229E8(v14, v16);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_32;
      }

LABEL_20:
      v28 = v41;
      if (v26)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v32 = v20;
    sub_22F1344D4();
    v20 = v32;
    v28 = v41;
    if (v26)
    {
LABEL_4:
      v8 = (v28[7] + 32 * v20);
      __swift_destroy_boxed_opaque_existential_0(v8);
      sub_22F107D08(v38, v8);

      goto LABEL_5;
    }

LABEL_21:
    v28[(v20 >> 6) + 8] |= 1 << v20;
    v29 = (v28[6] + 16 * v20);
    *v29 = v14;
    v29[1] = v16;
    sub_22F107D08(v38, (v28[7] + 32 * v20));
    v30 = v28[2];
    v24 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v24)
    {
      goto LABEL_31;
    }

    v28[2] = v31;
LABEL_5:
    v5 &= v5 - 1;
    *&v13[v17] = v28;
    swift_endAccess();

    v6 = v34;
    v2 = v35;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F3C5704(unint64_t a1, uint64_t *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_26:
    v4 = sub_22F741A00();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v26 = v3 & 0xFFFFFFFFFFFFFF8;
      v27 = v3 & 0xC000000000000001;
      v25 = v3;
      do
      {
        if (v27)
        {
          v6 = MEMORY[0x2319016F0](v5, v3);
        }

        else
        {
          if (v5 >= *(v26 + 16))
          {
            goto LABEL_22;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3 = *a2;
        v28 = *a2;
        *a2 = 0x8000000000000000;
        v11 = sub_22F122BD4(v7);
        v12 = *(v3 + 16);
        v13 = (v10 & 1) == 0;
        v14 = v12 + v13;
        if (__OFADD__(v12, v13))
        {
          goto LABEL_23;
        }

        v15 = v10;
        if (*(v3 + 24) >= v14)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22F13969C();
            v3 = v28;
          }
        }

        else
        {
          sub_22F12ED54(v14, isUniquelyReferenced_nonNull_native);
          sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
          v3 = v28;
          v16 = sub_22F122BD4(v7);
          if ((v15 & 1) != (v17 & 1))
          {
            sub_22F7420C0();
            __break(1u);
            return;
          }

          v11 = v16;
        }

        *a2 = v3;

        v3 = *a2;
        if ((v15 & 1) == 0)
        {
          *(v3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
          *(*(v3 + 48) + 8 * v11) = v7;
          *(*(v3 + 56) + 8 * v11) = 0;
          v18 = *(v3 + 16);
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_25;
          }

          *(v3 + 16) = v20;
          v21 = v7;
        }

        v22 = *(v3 + 56);
        v23 = *(v22 + 8 * v11);
        v19 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v19)
        {
          goto LABEL_24;
        }

        *(v22 + 8 * v11) = v24;

        ++v5;
        v3 = v25;
      }

      while (v8 != v4);
    }
  }
}

id PlaceZeroKeywordGenerator.__allocating_init(with:photoLibrary:searchComputationCache:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken;
  *&v9[v10] = [objc_allocWithZone(MEMORY[0x277CCAB00]) init];
  *&v9[OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph] = a1;
  v11 = objc_allocWithZone(PGGraphLocationHelper);
  v12 = a1;
  v13 = [v11 initWithGraph_];
  *&v9[OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationHelper] = v13;
  *&v9[OBJC_IVAR___PGPlaceZeroKeywordGenerator_photoLibrary] = a2;
  *&v9[OBJC_IVAR___PGPlaceZeroKeywordGenerator_searchComputationCache] = a3;
  *&v9[OBJC_IVAR___PGPlaceZeroKeywordGenerator_options] = a4;
  v16.receiver = v9;
  v16.super_class = v4;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

id PlaceZeroKeywordGenerator.init(with:photoLibrary:searchComputationCache:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22F3CF06C(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_22F3C5AF0()
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    if (byte_2843DE800[v1 + 32] > 1u)
    {
      v3 = byte_2843DE800[v1 + 32] == 2 ? sub_22F3C971C() : sub_22F3C6E6C();
    }

    else if (byte_2843DE800[v1 + 32])
    {
      sub_22F3C8DA4();
    }

    else
    {
      v3 = sub_22F3C7E5C();
    }

    v4 = v3;
    v5 = v3 >> 62;
    v6 = v3 >> 62 ? sub_22F741A00() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      break;
    }

    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    isUniquelyReferenced_nonNull_native = v8 + v6;
    if (__OFADD__(v8, v6))
    {
      goto LABEL_39;
    }

LABEL_15:
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (isUniquelyReferenced_nonNull_native <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

LABEL_20:
      sub_22F741A00();
      goto LABEL_21;
    }

    if (v7)
    {
      goto LABEL_20;
    }

LABEL_21:
    v2 = sub_22F741B50();
    v10 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    isUniquelyReferenced_nonNull_native = *(v10 + 16);
    v87 = v10;
    v11 = (*(v10 + 24) >> 1) - isUniquelyReferenced_nonNull_native;
    if (v5)
    {
      v13 = sub_22F741A00();
      if (v13)
      {
        v0 = v13;
        v14 = sub_22F741A00();
        if (v11 < v14)
        {
          goto LABEL_129;
        }

        if (v0 < 1)
        {
          goto LABEL_131;
        }

        v12 = v14;
        v91 = v2;
        v15 = v87 + 8 * isUniquelyReferenced_nonNull_native + 32;
        sub_22F3CF394(&unk_27DAB4088, &qword_27DAB4080, &unk_22F78A510);
        for (i = 0; i != v0; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4080, &unk_22F78A510);
          isUniquelyReferenced_nonNull_native = sub_22F14E004(&v93, i, v4);
          v18 = *v17;
          (isUniquelyReferenced_nonNull_native)(&v93, 0);
          *(v15 + 8 * i) = v18;
        }

        v2 = v91;
        v0 = v87;
        goto LABEL_32;
      }
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        if (v11 < v12)
        {
          goto LABEL_130;
        }

        v0 = v10;
        isUniquelyReferenced_nonNull_native = v10 + 8 * isUniquelyReferenced_nonNull_native;
        type metadata accessor for PlaceZeroKeyword();
        swift_arrayInitWithCopy();
LABEL_32:

        if (v12 < v6)
        {
          goto LABEL_124;
        }

        if (v12 > 0)
        {
          v19 = *(v0 + 16);
          v20 = __OFADD__(v19, v12);
          v21 = v19 + v12;
          if (v20)
          {
            goto LABEL_126;
          }

          *(v0 + 16) = v21;
        }

        goto LABEL_3;
      }
    }

    v0 = v87;
    if (v6 > 0)
    {
      goto LABEL_124;
    }

LABEL_3:
    if (++v1 == 4)
    {
      goto LABEL_40;
    }
  }

  v22 = sub_22F741A00();
  isUniquelyReferenced_nonNull_native = v22 + v6;
  if (!__OFADD__(v22, v6))
  {
    goto LABEL_15;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  sub_22F3CA834(v2);

  v95[0] = v2;
  v82 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_132;
  }

  v23 = *(v0 + 16);
  while (2)
  {
    v84 = 0;
    v24 = v2 & 0xC000000000000001;
    v85 = v23;
    v86 = v2 & 0xC000000000000001;
    while (2)
    {
      if (v23)
      {
        v90 = 0;
        v25 = 0;
        v89 = byte_2843DE828[v84 + 32];
        v26 = 15;
        if ((v89 - 1) < 2)
        {
          v26 = 5;
        }

        v88 = v26;
        do
        {
          if (v24)
          {
            v28 = *(MEMORY[0x2319016F0](v25, v2) + OBJC_IVAR___PGPlaceZeroKeyword_placeKind);
            swift_unknownObjectRelease();
            if (v28 <= 1)
            {
              if (v28)
              {
                goto LABEL_58;
              }

              goto LABEL_54;
            }

            v31 = v89;
            if (v28 == 2)
            {
              goto LABEL_64;
            }
          }

          else
          {
            if (v25 >= *(v0 + 16))
            {
              goto LABEL_121;
            }

            if (*(*(v2 + 8 * v25 + 32) + OBJC_IVAR___PGPlaceZeroKeyword_placeKind) <= 1u)
            {
              if (*(*(v2 + 8 * v25 + 32) + OBJC_IVAR___PGPlaceZeroKeyword_placeKind))
              {
LABEL_58:
                v30 = 0x6E69727275636572;
                v29 = 0xED00007069725467;
LABEL_59:
                v31 = v89;
                if (v89 <= 1)
                {
                  goto LABEL_60;
                }

                goto LABEL_70;
              }

LABEL_54:
              v29 = 0xE800000000000000;
              v30 = 0x7465737265707573;
              goto LABEL_59;
            }

            v31 = v89;
            if (*(*(v2 + 8 * v25 + 32) + OBJC_IVAR___PGPlaceZeroKeyword_placeKind) == 2)
            {
LABEL_64:
              v29 = 0xE600000000000000;
              v30 = 0x696F41706F74;
              if (v31 <= 1)
              {
                goto LABEL_60;
              }

              goto LABEL_70;
            }
          }

          v29 = 0xE400000000000000;
          v30 = 1701670760;
          if (v31 <= 1)
          {
LABEL_60:
            if (v31)
            {
              v32 = 0xED00007069725467;
              if (v30 != 0x6E69727275636572)
              {
                goto LABEL_79;
              }
            }

            else
            {
              v32 = 0xE800000000000000;
              if (v30 != 0x7465737265707573)
              {
                goto LABEL_79;
              }
            }

            goto LABEL_77;
          }

LABEL_70:
          if (v31 == 2)
          {
            v33 = 0x696F41706F74;
          }

          else
          {
            v33 = 1701670760;
          }

          if (v31 == 2)
          {
            v32 = 0xE600000000000000;
          }

          else
          {
            v32 = 0xE400000000000000;
          }

          if (v30 != v33)
          {
LABEL_79:
            isUniquelyReferenced_nonNull_native = sub_22F742040();

            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_92;
            }

            goto LABEL_80;
          }

LABEL_77:
          if (v29 != v32)
          {
            goto LABEL_79;
          }

LABEL_80:
          if (v24)
          {
            v34 = MEMORY[0x2319016F0](v25, v2);
          }

          else
          {
            if (v25 >= *(v0 + 16))
            {
              goto LABEL_122;
            }

            v34 = *(v2 + 8 * v25 + 32);
          }

          v35 = v34;
          isUniquelyReferenced_nonNull_native = sub_22F740E20();
          v37 = v36;
          v38 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
          swift_beginAccess();
          v39 = *&v35[v38];
          if (*(v39 + 16) && (, isUniquelyReferenced_nonNull_native = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v37), v41 = v40, , (v41 & 1) != 0))
          {
            sub_22F13A100(*(v39 + 56) + 32 * isUniquelyReferenced_nonNull_native, &v93);

            if (swift_dynamicCast() & 1) != 0 && (v92[0])
            {
              v20 = __OFADD__(v90++, 1);
              if (v20)
              {
                goto LABEL_125;
              }
            }
          }

          else
          {
          }

LABEL_92:
          if (v88 >= v90)
          {
            goto LABEL_50;
          }

          if (v24)
          {
            v42 = v2;
            v43 = MEMORY[0x2319016F0](v25, v2);
          }

          else
          {
            if (v25 >= *(v0 + 16))
            {
              goto LABEL_120;
            }

            v42 = v2;
            v43 = *(v2 + 8 * v25 + 32);
          }

          v44 = v43;
          v2 = sub_22F740E20();
          v0 = v45;
          v94 = MEMORY[0x277D839B0];
          LOBYTE(v93) = 0;
          v46 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
          swift_beginAccess();
          sub_22F107D08(&v93, v92);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = *&v44[v46];
          *&v44[v46] = 0x8000000000000000;
          v49 = sub_22F1229E8(v2, v0);
          v50 = v47[2];
          v51 = (v48 & 1) == 0;
          v52 = v50 + v51;
          if (__OFADD__(v50, v51))
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
            goto LABEL_127;
          }

          v53 = v48;
          if (v47[3] >= v52)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v48 & 1) == 0)
              {
                goto LABEL_103;
              }
            }

            else
            {
              sub_22F1344D4();
              if ((v53 & 1) == 0)
              {
                goto LABEL_103;
              }
            }
          }

          else
          {
            sub_22F125CA4(v52, isUniquelyReferenced_nonNull_native);
            v54 = sub_22F1229E8(v2, v0);
            if ((v53 & 1) != (v55 & 1))
            {
              goto LABEL_147;
            }

            v49 = v54;
            if ((v53 & 1) == 0)
            {
LABEL_103:
              v47[(v49 >> 6) + 8] |= 1 << v49;
              v56 = (v47[6] + 16 * v49);
              *v56 = v2;
              v56[1] = v0;
              sub_22F107D08(v92, (v47[7] + 32 * v49));
              v57 = v47[2];
              v20 = __OFADD__(v57, 1);
              v58 = v57 + 1;
              if (v20)
              {
                goto LABEL_123;
              }

              v47[2] = v58;
              goto LABEL_49;
            }
          }

          v27 = (v47[7] + 32 * v49);
          __swift_destroy_boxed_opaque_existential_0(v27);
          sub_22F107D08(v92, v27);
LABEL_49:
          *&v44[v46] = v47;

          swift_endAccess();

          v2 = v42;
          v24 = v86;
          v0 = v87;
          v23 = v85;
LABEL_50:
          ++v25;
        }

        while (v23 != v25);
      }

      if (++v84 != 4)
      {
        continue;
      }

      break;
    }

    isUniquelyReferenced_nonNull_native = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
    if (v82)
    {
      while (1)
      {
        v59 = sub_22F741A00();
        if (!v59)
        {
          break;
        }

LABEL_110:
        v60 = 0;
        while (1)
        {
          if (v86)
          {
            v61 = MEMORY[0x2319016F0](v60, v2);
          }

          else
          {
            if (v60 >= *(v0 + 16))
            {
              goto LABEL_128;
            }

            v61 = *(v2 + 8 * v60 + 32);
          }

          v62 = v61;
          v0 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            break;
          }

          v63 = [*&v61[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] elementIdentifiers];
          [isUniquelyReferenced_nonNull_native unionWithIdentifierSet_];

          ++v60;
          v64 = v0 == v59;
          v0 = v87;
          if (v64)
          {
            goto LABEL_135;
          }
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
        v65 = sub_22F741A00();
        if ((v65 & 0x8000000000000000) == 0)
        {
          goto LABEL_149;
        }

        __break(1u);
      }
    }

    else
    {
      v59 = *(v0 + 16);
      if (v59)
      {
        goto LABEL_110;
      }
    }

LABEL_135:
    v66 = [objc_allocWithZone(PGGraphAddressNodeCollection) initWithGraph:*(v83 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph) elementIdentifiers:isUniquelyReferenced_nonNull_native];
    v67 = objc_opt_self();
    v68 = v66;
    v69 = [v67 momentOfAddress];
    v70 = [objc_msgSend(v68 graph)];
    swift_unknownObjectRelease();
    v71 = [v70 concreteGraph];

    if (!v71)
    {
LABEL_148:
      v65 = sub_22F741D40();
      __break(1u);
LABEL_149:
      v23 = v65;
      continue;
    }

    break;
  }

  v72 = [v68 elementIdentifiers];
  v73 = [v71 adjacencyWithSources:v72 relation:v69];

  v74 = v73;
  swift_unknownObjectRetain();
  sub_22F3CEF8C(v95, v74, v71);
  swift_unknownObjectRelease();

  v75 = v95[0];
  if (!(v95[0] >> 62))
  {
    v76 = *((v95[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v76 > 0xF)
    {
      goto LABEL_138;
    }

    goto LABEL_143;
  }

  if (sub_22F741A00() <= 15)
  {
    goto LABEL_143;
  }

  v81 = sub_22F741A00();
  if (v81 < 15)
  {
    __break(1u);
LABEL_147:
    sub_22F7420C0();
    __break(1u);
    goto LABEL_148;
  }

  v76 = v81;
LABEL_138:
  v77 = MEMORY[0x231901000](v76 - 15, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  *&v93 = v77;
  if (v76 != 15)
  {
    v78 = 15;
    do
    {
      v79 = v78 + 1;
      sub_22F10F624(v92, v78);
      v78 = v79;
    }

    while (v76 != v79);
    v77 = v93;
  }

  sub_22F3C5440(v77, v95);

LABEL_143:
  swift_unknownObjectRelease();

  return v75;
}

uint64_t sub_22F3C669C(uint64_t *a1, char **a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v8 - 8);
  v84 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = &v76 - v11;
  MEMORY[0x28223BE20](v12);
  v88 = &v76 - v13;
  MEMORY[0x28223BE20](v14);
  v89 = &v76 - v15;
  v16 = sub_22F73F690();
  v91 = *(v16 - 8);
  v92 = v16;
  MEMORY[0x28223BE20](v16);
  v80 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v81 = &v76 - v19;
  MEMORY[0x28223BE20](v20);
  v83 = &v76 - v21;
  *&v23 = MEMORY[0x28223BE20](v22).n128_u64[0];
  v90 = &v76 - v24;
  v25 = *a1;
  v26 = *a2;
  v85 = OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection;
  v27 = [*(v25 + OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection) elementIdentifiers];
  v28 = [a3 targetsForSources_];

  v29 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a4 elementIdentifiers:v28];
  v30 = OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection;
  v31 = [*&v26[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] elementIdentifiers];
  v32 = [a3 targetsForSources_];

  v33 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a4 elementIdentifiers:v32];
  v34 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  swift_beginAccess();
  v35 = *(v25 + v34);
  v36 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  swift_beginAccess();
  if (v35 != *&v26[v36])
  {

    v44 = *&v26[v36] < *(v25 + v34);
    goto LABEL_18;
  }

  v87 = v33;
  v79 = v25;
  v37 = [v29 universalDateInterval];
  v38 = v29;
  v82 = v30;
  if (v37)
  {
    v39 = v88;
    v40 = v37;
    sub_22F73F020();

    v41 = 0;
    v42 = v92;
  }

  else
  {
    v41 = 1;
    v42 = v92;
    v39 = v88;
  }

  v43 = v89;
  v45 = sub_22F73F090();
  v46 = *(v45 - 8);
  v47 = v46;
  v92 = *(v46 + 56);
  v89 = (v46 + 56);
  v92(v39, v41, 1, v45);
  sub_22F299354(v39, v43);
  v48 = *(v47 + 48);
  if (v48(v43, 1, v45) == 1)
  {
    goto LABEL_12;
  }

  v88 = v26;
  v49 = v83;
  sub_22F73F030();
  v78 = *(v47 + 8);
  v78(v43, v45);
  v83 = *(v91 + 32);
  (v83)(v90, v49, v42);
  v50 = [v87 universalDateInterval];
  if (v50)
  {
    v77 = v38;
    v51 = v84;
    v52 = v50;
    sub_22F73F020();

    v53 = v51;
    v38 = v77;
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v53 = v84;
  }

  v92(v53, v54, 1, v45);
  v55 = v53;
  v43 = v86;
  sub_22F299354(v55, v86);
  if (v48(v43, 1, v45) == 1)
  {
    (*(v91 + 8))(v90, v42);
    v26 = v88;
LABEL_12:
    sub_22F120ADC(v43, &qword_27DAB40E0, &unk_22F779200);
    v56 = v38;
    v57 = [v56 count];
    v58 = v87;
    v59 = [v58 count];
    v60 = v82;
    if (v57 != v59)
    {
      v65 = [v56 count];

      v66 = [v58 count];
      v67 = v66 < v65;
      return v67 & 1;
    }

    [*(v79 + v85) centroidCoordinate];
    v62 = v61;
    [*&v26[v60] centroidCoordinate];
    v64 = v63;

    goto LABEL_17;
  }

  v68 = v80;
  sub_22F73F030();
  v78(v43, v45);
  v69 = v81;
  (v83)(v81, v68, v42);
  v70 = v90;
  if ((sub_22F73F630() & 1) == 0)
  {
    v67 = sub_22F73F5C0();

    v75 = *(v91 + 8);
    v75(v69, v42);
    v75(v70, v42);
    return v67 & 1;
  }

  [*(v79 + v85) centroidCoordinate];
  v62 = v71;
  [*&v88[v82] centroidCoordinate];
  v64 = v72;

  v73 = *(v91 + 8);
  v73(v69, v42);
  v73(v70, v42);
LABEL_17:
  v44 = v64 < v62;
LABEL_18:
  v67 = v44;
  return v67 & 1;
}

uint64_t sub_22F3C6E6C()
{
  v1 = sub_22F73F690();
  v103 = *(v1 - 8);
  v104 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F120634(0, &qword_2810A9038, off_27887B068);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v4);
  v96 = v0;
  v101 = [ObjCClassFromMetadata nodesInGraph_];
  v6 = [v101 homeNodes];
  v7 = objc_opt_self();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F771350;
  *(v8 + 32) = [objc_opt_self() addressOfHomeWork];
  v9 = objc_opt_self();
  *(v8 + 40) = [v9 frequentLocationOfAddress];
  sub_22F120634(0, &qword_2810A9218, 0x277D22C90);
  v10 = sub_22F741160();

  v11 = [v7 chain_];

  v12 = v6;
  v13 = v11;
  v14 = [objc_msgSend(v12 graph)];
  swift_unknownObjectRelease();
  v15 = [v14 concreteGraph];

  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = [v12 elementIdentifiers];
  v17 = [v15 adjacencyWithSources:v16 relation:v13];

  v100 = v13;
  v18 = sub_22F73F550();
  v115 = 0;
  MEMORY[0x28223BE20](v18);
  v102 = v3;
  v86 = v3;
  v87 = &v115;
  v19 = swift_allocObject();
  v19[2] = sub_22F3CF22C;
  v19[3] = &v88 - 4;
  v19[4] = v17;
  v19[5] = v15;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22F3CF234;
  *(v20 + 24) = v19;
  v113 = sub_22F15A3B8;
  v114 = v20;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v111 = sub_22F107F34;
  v112 = &block_descriptor_55;
  v21 = _Block_copy(&aBlock);

  v22 = v17;
  swift_unknownObjectRetain();

  v99 = v22;
  [v22 enumerateTargetsBySourceWith_];
  _Block_release(v21);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v115)
  {

    swift_unknownObjectRelease();
    v81 = v99;
    goto LABEL_13;
  }

  v98 = v115;
  v23 = [v98 addressNodes];
  v24 = [v9 momentOfAddress];
  v25 = [objc_msgSend(v23 graph)];
  swift_unknownObjectRelease();
  v26 = [v25 concreteGraph];

  if (v26)
  {
    v27 = [v23 elementIdentifiers];
    v28 = [v26 adjacencyWithSources:v27 relation:v24];

    v97 = v23;
    v108 = 0;
    v109 = 0;
    MEMORY[0x28223BE20](v29);
    v86 = &v109;
    v87 = &v108;
    v30 = swift_allocObject();
    v30[2] = sub_22F3CF258;
    v30[3] = &v88 - 4;
    v30[4] = v28;
    v30[5] = v26;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_22F3CF260;
    *(v31 + 24) = v30;
    v113 = sub_22F15A9A4;
    v114 = v31;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v111 = sub_22F107F34;
    v112 = &block_descriptor_16_2;
    v32 = _Block_copy(&aBlock);

    v33 = v28;
    swift_unknownObjectRetain();

    v34 = v33;
    [v33 enumerateTargetsBySourceWith_];
    _Block_release(v32);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (v108)
      {
        v36 = [v108 anyNode];
        if (v36)
        {
          v37 = v36;
          v94 = v34;
          v38 = PLSearchLocalizedHomeString();
          if (!v38)
          {
            sub_22F740E20();
            v38 = sub_22F740DF0();
          }

          v93 = sub_22F740E20();
          v92 = v39;
          v40 = v37;
          v41 = [v40 fullname];
          v42 = sub_22F740E20();
          v89 = v42;
          v44 = v43;

          v45 = v96;
          v91 = *(v96 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_photoLibrary);
          v46 = objc_allocWithZone(MEMORY[0x277D3ADA8]);
          v47 = v40;
          v90 = [v46 initWithText:v38 userCategory:10 matchType:2];

          v48 = sub_22F740E20();
          v50 = v49;
          v112 = MEMORY[0x277D837D0];
          *&aBlock = v42;
          *(&aBlock + 1) = v44;
          sub_22F107D08(&aBlock, v107);

          v51 = MEMORY[0x277D84F98];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106 = v51;
          v53 = v45;
          sub_22F130630(v107, v48, v50, isUniquelyReferenced_nonNull_native);

          v54 = v106;
          v55 = sub_22F740E20();
          v57 = v56;
          v112 = MEMORY[0x277D839B0];
          LOBYTE(aBlock) = 1;
          sub_22F107D08(&aBlock, v107);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v106 = v54;
          sub_22F130630(v107, v55, v57, v58);

          v59 = v106;
          v60 = sub_22F740E20();
          v62 = v61;
          v112 = MEMORY[0x277D837D0];
          *&aBlock = 1701670760;
          *(&aBlock + 1) = 0xE400000000000000;
          sub_22F107D08(&aBlock, v107);
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v106 = v59;
          sub_22F130630(v107, v60, v62, v63);

          v64 = v106;
          v65 = [v47 locationOrAreaNodeCollection];

          v66 = [v65 addressNodes];
          swift_unknownObjectRelease();
          v67 = type metadata accessor for PlaceZeroKeyword();
          v68 = objc_allocWithZone(v67);
          *&v68[OBJC_IVAR___PGPlaceZeroKeyword_type] = 6;
          v69 = &v68[OBJC_IVAR___PGPlaceZeroKeyword_title];
          v70 = v92;
          *v69 = v93;
          v69[1] = v70;
          v71 = &v68[OBJC_IVAR___PGPlaceZeroKeyword_address];
          *v71 = v89;
          v71[1] = v44;
          *&v68[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = v64;
          v72 = v90;
          *&v68[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = v90;
          *&v68[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = v66;
          v68[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = 3;
          *&v68[OBJC_IVAR___PGPlaceZeroKeyword_score] = 0x7FEFFFFFFFFFFFFFLL;
          v73 = v91;
          *&v68[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = v91;
          v105.receiver = v68;
          v105.super_class = v67;
          v74 = v72;
          v75 = v66;
          v76 = v73;
          v77 = objc_msgSendSuper2(&v105, sel_init);

          v78 = *(v53 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken);
          v79 = *&v77[OBJC_IVAR___PGPlaceZeroKeyword_queryToken];
          [v78 setObject:v47 forKey:v79];
          v80 = swift_allocObject();
          *(v80 + 16) = xmmword_22F771EB0;
          *(v80 + 32) = v77;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_14;
        }
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v81 = v108;
LABEL_13:

      v80 = MEMORY[0x277D84F90];
LABEL_14:
      v83 = v103;
      v82 = v104;
      v84 = v102;

      (*(v83 + 8))(v84, v82);
      return v80;
    }

    goto LABEL_16;
  }

LABEL_17:
  LODWORD(v87) = 0;
  v86 = 40;
  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F3C7AC0(void *a1, void *a2, uint64_t a3, char *a4, void **a5)
{
  v29 = a5;
  v30 = a4;
  v28 = a1;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  sub_22F73F550();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22F3CF26C;
  *(v17 + 24) = v16;
  aBlock[4] = sub_22F26B650;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_25_0;
  v18 = _Block_copy(aBlock);

  [a2 enumerateNodesAsCollectionsSortedByUniversalEndDateWithOrderAscending:0 usingBlock:v18];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v7 + 16);
    v20(v12, v15, v6);
    v21 = v30;
    v20(v9, v30, v6);
    v22 = sub_22F73F5C0();
    v23 = *(v7 + 8);
    v23(v9, v6);
    v23(v12, v6);
    if (v22)
    {
      (*(v7 + 24))(v21, v15, v6);
      v24 = v28;
      v25 = *v29;
      *v29 = v28;
      v26 = v24;
    }

    v23(v15, v6);
  }

  return result;
}

void sub_22F3C7DB0(void *a1, id a2, uint64_t a3, void *a4, id *a5)
{
  if (*a4 < [a2 count])
  {
    *a4 = [a2 count];
    v10 = *a5;
    *a5 = a1;
    v9 = a1;
  }
}

uint64_t sub_22F3C7E5C()
{
  v35 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  v1 = *(v0 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph);
  v26 = [v1 supersetCityNodes];
  v27 = sub_22F120634(0, &qword_2810A8F60, off_27887AF78);
  v28 = 16;
  v29 = [v1 supersetStateNodes];
  v30 = sub_22F120634(0, &qword_2810A8F58, off_27887B028);
  v31 = 64;
  v32 = [v1 supersetCountryNodes];
  v33 = sub_22F120634(0, &qword_2810A8F30, off_27887AFA8);
  v34 = 128;
  v2 = [objc_allocWithZone(PGGraphLocationHelper) initWithGraph_];
  v3 = 0;
  v4 = 0;
  v16 = v2;
  v5 = 32;
  while (1)
  {
    sub_22F3CF288(&v25[v5], v23);
    v6 = v24;
    sub_22F107D08(v23, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB40D0, &qword_22F78A598);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_2:
    v5 += 40;
    if (v5 == 152)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40C8, &qword_22F78A590);
      swift_arrayDestroy();
      v14 = v36;

      sub_22F107E14(v3, v4);
      return v14;
    }
  }

  v7 = v22;
  v8 = swift_allocObject();
  v8[2] = v15;
  v8[3] = v6;
  v8[4] = v16;
  v8[5] = &v35;
  v8[6] = &v36;
  v9 = v15;
  v10 = v16;
  sub_22F107E14(v3, v4);
  v11 = swift_allocObject();
  v3 = sub_22F3CF2F8;
  *(v11 + 16) = sub_22F3CF2F8;
  *(v11 + 24) = v8;
  v20 = sub_22F26B650;
  v21 = v11;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v18 = sub_22F322D74;
  v19 = &block_descriptor_34;
  v12 = _Block_copy(&aBlock);

  [v7 enumerateUsingBlock_];

  _Block_release(v12);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    v4 = v8;
    goto LABEL_2;
  }

  __break(1u);
  return result;
}

void sub_22F3C81DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t *a6, void *a7)
{
  v12 = sub_22F3CB664(a1, a4, a5);
  v82 = a7;
  v83 = a3;
  v13 = *a6;
  v84 = a6;
  v86 = a5;
  if (*a6 >> 62)
  {
LABEL_62:
    v81 = v12;
    v14 = sub_22F741A00();
    v12 = v81;
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  log = v12;

  for (i = 0; v14 != i; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x2319016F0](i, v13);
    }

    else
    {
      if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v12 = *(v13 + 8 * i + 32);
    }

    v16 = v12;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
    v17 = sub_22F741810();

    if (v17)
    {

      return;
    }
  }

  v18 = log;
  MEMORY[0x231900D00]();
  if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F7411C0();
  }

  sub_22F741220();
  v19 = [v18 locationMask];
  v20 = &selRef_maximumTimeDecayScoreByPastMemoryIdentifier;
  if (v19 < 0x11)
  {
    goto LABEL_31;
  }

  v21 = v19;
  v22 = [a1 name];
  loga = sub_22F740E20();
  v24 = v23;

  v25 = [a1 locationNodeCollection];
  v26 = [v25 nearestDeepChildLocationNodesWithLabel_];

  v27 = [v26 anyNode];
  if (!v27)
  {
    goto LABEL_24;
  }

  v28 = [v27 name];
  if (!v28)
  {

LABEL_24:

    goto LABEL_30;
  }

  v29 = v28;
  v30 = sub_22F740E20();
  v32 = v31;

  if (v30 == loga && v32 == v24)
  {
  }

  else
  {
    v33 = sub_22F742040();

    if ((v33 & 1) == 0)
    {

      goto LABEL_30;
    }
  }

  v34 = v27;
  MEMORY[0x231900D00]();
  if (*((*v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F7411C0();
  }

  sub_22F741220();

LABEL_30:
  v20 = &selRef_maximumTimeDecayScoreByPastMemoryIdentifier;
  if (v21 > 0x3F)
  {
    if (v21 > 0x7F)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_31:
  v35 = [a1 locationNodeCollection];
  v36 = [v35 v20[382]];

  v37 = [v36 anyNode];
  if (v37)
  {
    v38 = v37;
    MEMORY[0x231900D00]();
    if (*((*v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();
  }

LABEL_36:
  v39 = [a1 locationNodeCollection];
  v40 = [v39 v20[382]];

  v41 = [v40 anyNode];
  if (v41)
  {
    v42 = v41;
    MEMORY[0x231900D00]();
    if (*((*v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();
  }

LABEL_40:
  v43 = [v18 fullname];
  v44 = sub_22F740E20();
  v46 = v45;

  v47 = [objc_opt_self() beautifiedLocationNodeStringWithPlaceNode:v18 locationHelper:v86];
  if (v47 || (v47 = [v18 name]) != 0)
  {
    v48 = v47;
    v49 = sub_22F740E20();
    v51 = v50;

    if (sub_22F740F10() < 1)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v52 = sub_22F740F10();

      if (v52 > 0)
      {
        v53 = *(v83 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_photoLibrary);
        v54 = v18;
        logb = v53;
        v55 = [v54 locationNodeCollection];
        v56 = [v55 parentLocationNodes];

        v57 = [v56 anyNode];
        objc_opt_self();
        v58 = swift_dynamicCastObjCClass();
        if (v58)
        {
          v59 = v58;
          v60 = v54;
          v61 = [v59 stateOrBiggerParentLocationNode];

          v57 = v61;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22F7707D0;
        *(inited + 32) = sub_22F740E20();
        v63 = MEMORY[0x277D837D0];
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v64;
        *(inited + 48) = v44;
        *(inited + 56) = v46;
        *(inited + 80) = sub_22F740E20();
        *(inited + 88) = v65;
        *(inited + 120) = MEMORY[0x277D839B0];
        *(inited + 96) = 1;
        *(inited + 128) = sub_22F740E20();
        *(inited + 136) = v66;
        *(inited + 168) = v63;
        *(inited + 144) = 0x7465737265707573;
        *(inited + 152) = 0xE800000000000000;

        v85 = sub_22F14EA28(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
        swift_arrayDestroy();
        v87 = v57;
        if (v57)
        {
          v67 = v57;
          v68 = _s11PhotosGraph16PlaceZeroKeywordC22locationNameByCategory3forSDySo8NSNumberCSSGSo19PGGraphLocationNodeC_tFZ_0(v67);

          v69 = sub_22F740DF0();
          if (v68)
          {
            sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
            sub_22F16C010();
            v57 = sub_22F740C80();
          }

          else
          {
            v57 = 0;
          }
        }

        else
        {
          v69 = sub_22F740DF0();
        }

        v70 = [objc_allocWithZone(MEMORY[0x277D3ADA0]) initWithText:v69 locationNameByCategory:v57];

        [v70 setUserControlledCategoriesUseWildcard_];
        v71 = [-[NSObject locationOrAreaNodeCollection](v54 locationOrAreaNodeCollection)];
        swift_unknownObjectRelease();

        v72 = type metadata accessor for PlaceZeroKeyword();
        v73 = objc_allocWithZone(v72);
        *&v73[OBJC_IVAR___PGPlaceZeroKeyword_type] = 2;
        v74 = &v73[OBJC_IVAR___PGPlaceZeroKeyword_title];
        *v74 = v49;
        v74[1] = v51;
        v75 = &v73[OBJC_IVAR___PGPlaceZeroKeyword_address];
        *v75 = v44;
        v75[1] = v46;
        *&v73[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = v85;
        *&v73[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = v70;
        *&v73[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = v71;
        v73[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = 0;
        *&v73[OBJC_IVAR___PGPlaceZeroKeyword_score] = 0x3FF0000000000000;
        *&v73[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = logb;
        v91.receiver = v73;
        v91.super_class = v72;
        v76 = logb;
        v77 = v70;
        v78 = v71;
        v79 = objc_msgSendSuper2(&v91, sel_init);

        v80 = v79;
        MEMORY[0x231900D00]();
        if (*((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22F7411C0();
        }

        sub_22F741220();
        [*(v83 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken) setObject:v54 forKey:*&v80[OBJC_IVAR___PGPlaceZeroKeyword_queryToken]];

        return;
      }
    }
  }

  else
  {
  }
}

void sub_22F3C8DA4()
{
  v1 = objc_opt_self();
  v2 = *&v0[OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph];
  v3 = [v1 concludedTripTypeNodesInGraph_];
  v45 = MEMORY[0x277D84F98];
  v4 = [v3 highlightGroupNodes];
  v5 = swift_allocObject();
  *(v5 + 16) = &v45;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_22F3CF308;
  *(v6 + 24) = v5;
  v43 = sub_22F20AE34;
  v44 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_22F107F34;
  v42 = &block_descriptor_43_0;
  v7 = _Block_copy(&aBlock);

  [v4 enumerateIdentifiersAsCollectionsWithBlock_];

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
LABEL_20:
    __break(1u);
  }

  else
  {
    v36 = v2;
    v37 = v3;

    v9 = sub_22F3C51EC(v8);

    v10 = 0;
    v11 = v9[2];
    v12 = MEMORY[0x277D84F90];
LABEL_3:
    v13 = &v9[2 * v10 + 5];
    while (v11 != v10)
    {
      if (v10 >= v9[2])
      {
        __break(1u);
        goto LABEL_20;
      }

      ++v10;
      v14 = v13 + 2;
      v15 = *v13;
      v13 += 2;
      if (v15 > 1)
      {
        v16 = *(v14 - 3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F146E84(0, *(v12 + 16) + 1, 1);
          v12 = aBlock;
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_22F146E84((v18 > 1), v19 + 1, 1);
          v12 = aBlock;
        }

        *(v12 + 16) = v19 + 1;
        v20 = v12 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v15;
        goto LABEL_3;
      }
    }

    v21 = *(v12 + 16);
    if (v21)
    {
      aBlock = MEMORY[0x277D84F90];
      sub_22F741BD0();
      v22 = 32;
      v24 = v37;
      v23 = v0;
      v25 = v36;
      do
      {
        v26 = *(v12 + v22);
        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
        v22 += 16;
        --v21;
      }

      while (v21);
    }

    else
    {

      v24 = v37;
      v23 = v0;
      v25 = v36;
    }

    v27 = objc_allocWithZone(MEMORY[0x277D22BB0]);
    sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
    v28 = v25;
    v29 = sub_22F741160();

    v30 = [v27 initWithIndexArray_];

    v31 = [objc_allocWithZone(PGGraphNodeCollection) initWithGraph:v28 elementIdentifiers:v30];
    v38 = MEMORY[0x277D84F90];
    v32 = swift_allocObject();
    *(v32 + 16) = v23;
    *(v32 + 24) = 1;
    *(v32 + 32) = &v38;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_22F3CF310;
    *(v33 + 24) = v32;
    v43 = sub_22F1F68E8;
    v44 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_22F322D74;
    v42 = &block_descriptor_52_0;
    v34 = _Block_copy(&aBlock);
    v35 = v23;

    [v31 enumerateUsingBlock_];

    _Block_release(v34);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if ((v31 & 1) == 0)
    {

      return;
    }
  }

  __break(1u);
}

void sub_22F3C92F4(int a1, id a2, uint64_t a3, uint64_t *a4)
{
  v8 = [a2 featuredLocationOrAreaNodes];
  v5 = [v8 elementIdentifiers];
  v6 = [v5 indexArray];

  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v7 = sub_22F741180();

  sub_22F3C5704(v7, a4);
}

void sub_22F3C93CC(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (!v18)
    {
      return;
    }

    v9 = v18;
    v34 = a5;
    v19 = a1;
    v20 = [v9 fullname];
    v12 = sub_22F740E20();
    v17 = v21;

    v22 = [objc_opt_self() beautifiedLocationNodeStringWithPlaceNode:v9 locationHelper:*(a3 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationHelper)];
    if (v22)
    {
      v16 = v22;
      v23 = sub_22F740E20();
      v25 = v24;

LABEL_12:
      type metadata accessor for PlaceZeroKeyword();
      swift_getObjectType();
      v36 = a4;
      v27 = a3;
      v28 = *(a3 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_photoLibrary);
      v29 = a1;
      v30 = v28;
      v31 = sub_22F16ACE0(v23, v25, v12, v17, v9, 1, &v36, MEMORY[0x277D84F98], v30);
      MEMORY[0x231900D00]();
      if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
      v32 = *(v27 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken);
      v33 = *&v31[OBJC_IVAR___PGPlaceZeroKeyword_queryToken];
      [v32 setObject:v9 forKey:v33];

      goto LABEL_15;
    }

    v16 = [v9 name];

LABEL_11:
    v23 = sub_22F740E20();
    v25 = v26;
    goto LABEL_12;
  }

  v9 = v8;
  v10 = a1;
  v11 = [v9 fullname];
  v12 = sub_22F740E20();
  v14 = v13;

  v15 = [objc_opt_self() beautifiedLocationNodeStringWithPlaceNode:v9 locationHelper:*(a3 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationHelper)];
  if (v15)
  {
    v16 = v15;
    v34 = a5;
    v17 = v14;

    goto LABEL_11;
  }

  v16 = [v9 name];

  if (v16)
  {
    v34 = a5;
    v17 = v14;
    goto LABEL_11;
  }

LABEL_15:
}

uint64_t sub_22F3C971C()
{
  v44 = sub_22F73F690();
  v1 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v3 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v38 - v5;
  sub_22F120634(0, &qword_2810A8FF8, off_27887ABE0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v7);
  v42 = v0;
  v9 = *(v0 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph);
  v10 = [ObjCClassFromMetadata nodesInGraph_];
  v11 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  v52 = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &v52;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_22F3CF320;
  *(v13 + 24) = v12;
  v50 = sub_22F21F0D4;
  v51 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_22F3618B8;
  v49 = &block_descriptor_61_0;
  v14 = _Block_copy(&aBlock);
  v15 = v11;

  v43 = v10;
  [v10 enumerateIdentifiersSortedByPopularityScoreWithBlock_];
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v40 = v12;
  v16 = objc_allocWithZone(PGGraphAreaNodeCollection);
  v41 = v15;
  v17 = [v16 initWithGraph:v9 elementIdentifiers:v15];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22F771350;
  *(v19 + 32) = [objc_opt_self() addressOfArea];
  *(v19 + 40) = [objc_opt_self() momentOfAddress];
  sub_22F120634(0, &qword_2810A9218, 0x277D22C90);
  v20 = sub_22F741160();

  v21 = [v18 chain_];

  v22 = v17;
  v23 = v21;
  v24 = [objc_msgSend(v22 graph)];
  swift_unknownObjectRelease();
  v25 = [v24 concreteGraph];

  if (v25)
  {
    v26 = [v22 elementIdentifiers];
    v27 = [v25 adjacencyWithSources:v26 relation:v23];

    v45 = MEMORY[0x277D84F90];
    sub_22F73F650();
    sub_22F73F5E0();
    v39 = *(v1 + 8);
    v28 = v39(v3, v44);
    v38[1] = v38;
    MEMORY[0x28223BE20](v28);
    v29 = v42;
    v38[-4] = v6;
    v38[-3] = v29;
    LOBYTE(v36) = 2;
    v37 = &v45;
    v30 = swift_allocObject();
    v30[2] = sub_22F3CF378;
    v30[3] = &v38[-6];
    v30[4] = v27;
    v30[5] = v25;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_22F3CF388;
    *(v31 + 24) = v30;
    v50 = sub_22F15A9A4;
    v51 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_22F107F34;
    v49 = &block_descriptor_71_0;
    v32 = _Block_copy(&aBlock);
    v33 = v27;
    swift_unknownObjectRetain();

    [v33 enumerateTargetsBySourceWith_];
    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();
    swift_unknownObjectRelease();

    if ((v32 & 1) == 0)
    {
      v34 = v45;

      v39(v6, v44);

      return v34;
    }

    goto LABEL_6;
  }

LABEL_7:
  LODWORD(v37) = 0;
  v36 = 40;
  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F3C9DC4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v87 = a7;
  v86 = a6;
  v88 = a5;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v77 - v14;
  sub_22F73F550();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = swift_allocObject();
  v17[2] = sub_22F3CF470;
  v17[3] = v16;
  v89 = v16;
  aBlock[4] = sub_22F26B650;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_80_0;
  v18 = _Block_copy(aBlock);

  [a2 enumerateNodesAsCollectionsSortedByUniversalStartDateWithOrderAscending:0 usingBlock:v18];
  _Block_release(v18);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
LABEL_30:
    sub_22F7411C0();
LABEL_27:
    sub_22F741220();
    v74 = *(v88 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken);
    v75 = *&v18[*v12];
    [v74 setObject:v17 forKey:v75];

    v20 = v81;
    goto LABEL_28;
  }

  (*(v10 + 16))(v12, v15, v9);
  v19 = sub_22F73F5C0();
  v20 = *(v10 + 8);
  v20(v12, v9);
  if (v19)
  {
    v21 = [a1 anyNode];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 fullname];
      v24 = sub_22F740E20();
      v26 = v25;

      v27 = [objc_opt_self() beautifiedLocationNodeStringWithPlaceNode:v22 locationHelper:*(v88 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationHelper)];
      if (!v27)
      {
        v27 = [v22 name];
      }

      v28 = v27;
      v29 = sub_22F740E20();
      v31 = v30;

      if (sub_22F740F10() < 1)
      {

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v85 = v26;
        v84 = v29;
        v32 = sub_22F740F10();

        if (v32 > 0)
        {
          v83 = v24;
          v81 = v20;
          v33 = *(v88 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_photoLibrary);
          objc_opt_self();
          v34 = swift_dynamicCastObjCClass();
          v35 = v22;
          v36 = v35;
          v37 = v85;
          v80 = v33;
          if (v34)
          {
            v38 = v35;
            v39 = v33;
            v40 = [v34 locationNodeCollection];
            v41 = [v40 parentLocationNodes];

            v42 = [v41 anyNode];
          }

          else
          {
            v43 = v33;
            v42 = 0;
          }

          v44 = v36;
          v82 = [v44 stateOrBiggerParentLocationNode];
          v79 = v44;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22F7707D0;
          *(inited + 32) = sub_22F740E20();
          v46 = MEMORY[0x277D837D0];
          *(inited + 72) = MEMORY[0x277D837D0];
          v47 = v83;
          *(inited + 40) = v48;
          *(inited + 48) = v47;
          *(inited + 56) = v37;
          *(inited + 80) = sub_22F740E20();
          *(inited + 88) = v49;
          *(inited + 120) = MEMORY[0x277D839B0];
          *(inited + 96) = 1;
          *(inited + 128) = sub_22F740E20();
          *(inited + 136) = v50;
          v51 = v86;
          if (v86 > 1u)
          {
            v52 = v84;
            if (v86 == 2)
            {
              v53 = 0xE600000000000000;
              v54 = 0x696F41706F74;
            }

            else
            {
              v53 = 0xE400000000000000;
              v54 = 1701670760;
            }
          }

          else
          {
            v52 = v84;
            if (v86)
            {
              v53 = 0xED00007069725467;
              v54 = 0x6E69727275636572;
            }

            else
            {
              v53 = 0xE800000000000000;
              v54 = 0x7465737265707573;
            }
          }

          *(inited + 168) = v46;
          *(inited + 144) = v54;
          *(inited + 152) = v53;

          v78 = sub_22F14EA28(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
          swift_arrayDestroy();
          if (v82)
          {
            v55 = v82;
            v56 = _s11PhotosGraph16PlaceZeroKeywordC22locationNameByCategory3forSDySo8NSNumberCSSGSo19PGGraphLocationNodeC_tFZ_0(v55);

            v57 = sub_22F740DF0();
            if (v56)
            {
              sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
              sub_22F16C010();
              v58 = sub_22F740C80();
            }

            else
            {
              v58 = 0;
            }

            v59 = v84;
          }

          else
          {
            v57 = sub_22F740DF0();
            v59 = v52;
            v58 = 0;
          }

          v60 = [objc_allocWithZone(MEMORY[0x277D3ADA0]) initWithText:v57 locationNameByCategory:v58];

          [v60 setUserControlledCategoriesUseWildcard_];
          v17 = v79;
          v61 = [objc_msgSend(v79 locationOrAreaNodeCollection)];
          swift_unknownObjectRelease();

          v62 = qword_22F78A6C0[v51];
          v63 = type metadata accessor for PlaceZeroKeyword();
          v64 = objc_allocWithZone(v63);
          *&v64[OBJC_IVAR___PGPlaceZeroKeyword_type] = 2;
          v65 = &v64[OBJC_IVAR___PGPlaceZeroKeyword_title];
          *v65 = v59;
          v65[1] = v31;
          v66 = &v64[OBJC_IVAR___PGPlaceZeroKeyword_address];
          v67 = v85;
          *v66 = v83;
          v66[1] = v67;
          *&v64[OBJC_IVAR___PGPlaceZeroKeyword_displayInfo] = v78;
          v12 = &OBJC_IVAR___PGPlaceZeroKeyword_queryToken;
          *&v64[OBJC_IVAR___PGPlaceZeroKeyword_queryToken] = v60;
          *&v64[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection] = v61;
          v64[OBJC_IVAR___PGPlaceZeroKeyword_placeKind] = v51;
          *&v64[OBJC_IVAR___PGPlaceZeroKeyword_score] = v62;
          v68 = v80;
          *&v64[OBJC_IVAR___PGPlaceZeroKeyword_photoLibrary] = v80;
          v90.receiver = v64;
          v90.super_class = v63;
          v69 = v68;
          v70 = v60;
          v71 = v61;
          v72 = objc_msgSendSuper2(&v90, sel_init);

          v18 = v72;
          v73 = v87;
          MEMORY[0x231900D00]();
          if (*((*v73 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_27;
          }

          goto LABEL_30;
        }
      }
    }
  }

LABEL_28:
  v20(v15, v9);
}

void sub_22F3CA70C(void *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 anyNode];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 universalEndDate];
    sub_22F73F640();

    (*(v7 + 40))(a3, v10, v6);
    *a2 = 1;
  }
}

unint64_t sub_22F3CA834(unint64_t a1)
{
  v165 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_132;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v151 = a1;
  if (v1)
  {
LABEL_3:
    v2 = 0;
    v154 = OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken;
    v3 = a1 & 0xC000000000000001;
    v160 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = a1 + 32;
    v5 = MEMORY[0x277D84F98];
    v158 = a1 & 0xC000000000000001;
    v159 = a1 + 32;
    v149 = v1;
    while (!v2)
    {
LABEL_4:
      if (++v2 == v149)
      {
        v109 = v165;
        v110 = v151;
        goto LABEL_137;
      }
    }

    v6 = 0;
    while (1)
    {
      v7 = v165;
      if (*(v165 + 16))
      {
        a1 = sub_22F742160();
        v8 = v7 + 56;
        v9 = -1 << *(v7 + 32);
        v10 = a1 & ~v9;
        if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          v11 = ~v9;
          while (*(*(v7 + 48) + 8 * v10) != v2)
          {
            v10 = (v10 + 1) & v11;
            if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          goto LABEL_9;
        }

LABEL_15:
        a1 = sub_22F742160();
        v12 = -1 << *(v7 + 32);
        v13 = a1 & ~v12;
        if ((*(v8 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while (*(*(v7 + 48) + 8 * v13) != v6)
          {
            v13 = (v13 + 1) & v14;
            if (((*(v8 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_9;
        }
      }

LABEL_19:
      if (v5[2])
      {
        v15 = sub_22F13A8F4(v2);
        if (v16)
        {
          v17 = *(v5[7] + 8 * v15);
          v18 = v17;
        }

        else
        {
          v17 = 0;
        }

        a1 = sub_22F13A8F4(v6);
        if (v20)
        {
          v19 = *(v5[7] + 8 * a1);
          a1 = v19;
          if (v17)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v19 = 0;
          if (v17)
          {
LABEL_26:
            if (v19)
            {
              goto LABEL_27;
            }

            goto LABEL_60;
          }
        }
      }

      else
      {
        v19 = 0;
      }

      if (v3)
      {
        v28 = MEMORY[0x2319016F0](v2, v151);
      }

      else
      {
        if (v2 >= *(v160 + 16))
        {
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
          v31 = a1;
          v111 = sub_22F741A00();
          if (v111 < 0)
          {
            __break(1u);
LABEL_134:
            v111 = sub_22F7420C0();
            __break(1u);
          }

          v1 = v111;
          a1 = v31;
          v151 = v31;
          if (!v1)
          {
            break;
          }

          goto LABEL_3;
        }

        v28 = *(v4 + 8 * v2);
      }

      v29 = v28;
      v30 = *&v28[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection];

      v17 = [v30 centroidLocation];
      if (v17)
      {
        v31 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v163 = v5;
        a1 = sub_22F13A8F4(v2);
        v34 = v5[2];
        v35 = (v33 & 1) == 0;
        v36 = __OFADD__(v34, v35);
        v37 = v34 + v35;
        if (v36)
        {
          goto LABEL_125;
        }

        v38 = v33;
        if (v5[3] >= v37)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v107 = a1;
            sub_22F139394();
            a1 = v107;
          }
        }

        else
        {
          sub_22F12E81C(v37, isUniquelyReferenced_nonNull_native);
          a1 = sub_22F13A8F4(v2);
          if ((v38 & 1) != (v39 & 1))
          {
            goto LABEL_134;
          }
        }

        v4 = v159;
        v5 = v163;
        if (v38)
        {
          v43 = *(v163 + 56);
          v44 = *(v43 + 8 * a1);
          *(v43 + 8 * a1) = v31;

          if (v19)
          {
            goto LABEL_27;
          }
        }

        else
        {
          *(v163 + 8 * (a1 >> 6) + 64) |= 1 << a1;
          *(v5[6] + 8 * a1) = v2;
          *(v5[7] + 8 * a1) = v31;
          v45 = v5[2];
          v36 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v36)
          {
            goto LABEL_130;
          }

          v5[2] = v46;
          if (v19)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        a1 = sub_22F13A8F4(v2);
        if (v40)
        {
          v41 = a1;
          v42 = swift_isUniquelyReferenced_nonNull_native();
          *&v163 = v5;
          if (!v42)
          {
            sub_22F139394();
            v5 = v163;
          }

          a1 = sub_22F3BA884(v41, v5);
        }

        v17 = 0;
        if (v19)
        {
          goto LABEL_27;
        }
      }

LABEL_60:
      if (v3)
      {
        v47 = MEMORY[0x2319016F0](v6, v151);
      }

      else
      {
        if (v6 >= *(v160 + 16))
        {
          goto LABEL_126;
        }

        v47 = *(v4 + 8 * v6);
      }

      v48 = v47;
      v49 = *&v47[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection];

      v19 = [v49 centroidLocation];
      if (v19)
      {
        v31 = v19;
        v50 = swift_isUniquelyReferenced_nonNull_native();
        *&v163 = v5;
        a1 = sub_22F13A8F4(v6);
        v52 = v5[2];
        v53 = (v51 & 1) == 0;
        v36 = __OFADD__(v52, v53);
        v54 = v52 + v53;
        if (v36)
        {
          goto LABEL_128;
        }

        v55 = v51;
        if (v5[3] >= v54)
        {
          if ((v50 & 1) == 0)
          {
            v108 = a1;
            sub_22F139394();
            a1 = v108;
          }
        }

        else
        {
          sub_22F12E81C(v54, v50);
          a1 = sub_22F13A8F4(v6);
          if ((v55 & 1) != (v56 & 1))
          {
            goto LABEL_134;
          }
        }

        v4 = v159;
        v5 = v163;
        if (v55)
        {
          v61 = *(v163 + 56);
          v62 = *(v61 + 8 * a1);
          *(v61 + 8 * a1) = v31;
        }

        else
        {
          *(v163 + 8 * (a1 >> 6) + 64) |= 1 << a1;
          *(v5[6] + 8 * a1) = v6;
          *(v5[7] + 8 * a1) = v31;
          v63 = v5[2];
          v36 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v36)
          {
            goto LABEL_131;
          }

          v5[2] = v64;
        }
      }

      else
      {
        v57 = sub_22F13A8F4(v6);
        if (v58)
        {
          v59 = v57;
          v60 = swift_isUniquelyReferenced_nonNull_native();
          *&v163 = v5;
          if (!v60)
          {
            sub_22F139394();
            v5 = v163;
          }

          sub_22F3BA884(v59, v5);
        }

        v19 = 0;
      }

LABEL_27:
      if (v17)
      {
        if (v19)
        {
          a1 = [v17 distanceFromLocation_];
          if (v21 >= 15000.0)
          {
            goto LABEL_92;
          }

          if (v3)
          {
            v105 = *(MEMORY[0x2319016F0](v2, v151) + OBJC_IVAR___PGPlaceZeroKeyword_type);
            swift_unknownObjectRelease();
            v106 = *(MEMORY[0x2319016F0](v6, v151) + OBJC_IVAR___PGPlaceZeroKeyword_type);
            swift_unknownObjectRelease();
            if (v105 != 6 && v106 != 6)
            {
              v23 = MEMORY[0x2319016F0](v2, v151);
LABEL_35:
              v24 = v23;
              v25 = OBJC_IVAR___PGPlaceZeroKeyword_score;
              swift_beginAccess();
              v26 = *&v24[v25];

              if (v3)
              {
                v27 = MEMORY[0x2319016F0](v6, v151);
              }

              else
              {
                v27 = *(v4 + 8 * v6);
              }

              v65 = v27;
              v66 = OBJC_IVAR___PGPlaceZeroKeyword_score;
              swift_beginAccess();
              v67 = *&v65[v66];

              if (v26 == v67)
              {
                if (v3)
                {
                  v68 = MEMORY[0x2319016F0](v2, v151);
                }

                else
                {
                  v68 = *(v4 + 8 * v2);
                }

                v70 = v68;
                v71 = *&v68[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection];

                v72 = [v71 momentNodes];
                v73 = [v72 count];

                if (v3)
                {
                  v74 = MEMORY[0x2319016F0](v6, v151);
                }

                else
                {
                  v74 = *(v4 + 8 * v6);
                }

                v75 = v74;
                v76 = *&v74[OBJC_IVAR___PGPlaceZeroKeyword_addressNodeCollection];

                v77 = [v76 momentNodes];
                v78 = [v77 count];

                if (v78 < v73)
                {
LABEL_90:
                  v69 = v6;
                  goto LABEL_91;
                }
              }

              else if (v67 < v26)
              {
                goto LABEL_90;
              }

              v69 = v2;
LABEL_91:
              a1 = sub_22F10F624(&v163, v69);
LABEL_92:
              if (v3)
              {
                v80 = MEMORY[0x2319016F0](v2, v151);
                v81 = MEMORY[0x2319016F0](v6, v151);
              }

              else
              {
                if (v2 >= *(v160 + 16))
                {
                  goto LABEL_127;
                }

                v79 = *(v4 + 8 * v6);
                v80 = *(v4 + 8 * v2);
                v81 = v79;
              }

              v82 = v81;
              v83 = *(v156 + v154);
              v84 = [v83 objectForKey_];
              if (v84)
              {
                v85 = v84;
                objc_opt_self();
                v86 = swift_dynamicCastObjCClass();
                if (v86)
                {
                  v87 = v86;
                  v88 = [v83 objectForKey_];
                  if (!v88)
                  {

                    goto LABEL_114;
                  }

                  v89 = v88;
                  v152 = v82;
                  objc_opt_self();
                  v90 = swift_dynamicCastObjCClass();
                  if (v90)
                  {
                    v91 = v90;
                    v148 = v89;
                    v92 = [v87 label];
                    if (!v92)
                    {
                      goto LABEL_113;
                    }

                    v146 = v92;
                    v93 = v91;
                    v94 = [v91 label];
                    if (!v94)
                    {
                      goto LABEL_112;
                    }

                    v144 = v94;
                    v95 = [v87 locationMask];
                    v96 = [v93 locationMask];
                    v97 = v93;
                    if (v95 < v96)
                    {

                      v147 = [v87 locationNodeCollection];
                      v98 = [v147 nearestDeepParentLocationNodesWithLabel_];

                      v99 = v98;
                      LODWORD(v98) = [v98 containsNode_];

                      if (v98)
                      {
                        v100 = v6;
                        goto LABEL_111;
                      }

                      goto LABEL_113;
                    }

                    v101 = v95;
                    v143 = v97;
                    v102 = v96;

                    if (v102 >= v101)
                    {
LABEL_112:

                      goto LABEL_113;
                    }

                    v145 = [v143 locationNodeCollection];
                    v103 = [v145 nearestDeepParentLocationNodesWithLabel_];

                    v104 = [v103 containsNode_];
                    if (v104)
                    {
                      v100 = v2;
LABEL_111:
                      sub_22F10F624(&v163, v100);
                    }

LABEL_113:

LABEL_114:
LABEL_115:
                  }

                  else
                  {
                  }
                }

                else
                {
                }

                v3 = v158;
                v4 = v159;
                goto LABEL_9;
              }

              goto LABEL_115;
            }
          }

          else
          {
            if (v2 >= *(v160 + 16))
            {
              goto LABEL_129;
            }

            v22 = *(v4 + 8 * v2);
            if (*&v22[OBJC_IVAR___PGPlaceZeroKeyword_type] != 6 && *(*(v4 + 8 * v6) + OBJC_IVAR___PGPlaceZeroKeyword_type) != 6)
            {
              v23 = v22;
              goto LABEL_35;
            }
          }
        }
      }

      else
      {
      }

LABEL_9:
      if (++v6 == v2)
      {
        goto LABEL_4;
      }
    }
  }

  v158 = a1 & 0xC000000000000001;
  v160 = a1 & 0xFFFFFFFFFFFFFF8;
  v110 = a1;
  v109 = MEMORY[0x277D84FA0];
LABEL_137:
  v112 = v109 + 56;
  v113 = 1 << *(v109 + 32);
  v114 = -1;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  v115 = v114 & *(v109 + 56);
  v116 = (v113 + 63) >> 6;
  v157 = v110 + 32;

  v117 = 0;
  v153 = v109 + 56;
  v155 = v109;
  v150 = v116;
  while (v115)
  {
LABEL_147:
    v122 = *(*(v109 + 48) + ((v117 << 9) | (8 * __clz(__rbit64(v115)))));
    if (v158)
    {
      v123 = MEMORY[0x2319016F0](v122, v151);
    }

    else
    {
      if ((v122 & 0x8000000000000000) != 0)
      {
        goto LABEL_164;
      }

      if (v122 >= *(v160 + 16))
      {
        goto LABEL_166;
      }

      v123 = *(v157 + 8 * v122);
    }

    v124 = v123;
    v125 = sub_22F740E20();
    v127 = v126;
    v164 = MEMORY[0x277D839B0];
    LOBYTE(v163) = 0;
    v128 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
    swift_beginAccess();
    sub_22F107D08(&v163, v162);
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v130 = *&v124[v128];
    v161 = v130;
    *&v124[v128] = 0x8000000000000000;
    v131 = sub_22F1229E8(v125, v127);
    v133 = v130[2];
    v134 = (v132 & 1) == 0;
    v36 = __OFADD__(v133, v134);
    v135 = v133 + v134;
    if (v36)
    {
      goto LABEL_165;
    }

    v136 = v132;
    if (v130[3] < v135)
    {
      sub_22F125CA4(v135, v129);
      v131 = sub_22F1229E8(v125, v127);
      if ((v136 & 1) != (v137 & 1))
      {
        goto LABEL_168;
      }

LABEL_156:
      if (v136)
      {
        goto LABEL_140;
      }

      goto LABEL_157;
    }

    if (v129)
    {
      goto LABEL_156;
    }

    v141 = v131;
    sub_22F1344D4();
    v131 = v141;
    if (v136)
    {
LABEL_140:
      v118 = v131;

      v119 = v161;
      v120 = (v161[7] + 32 * v118);
      __swift_destroy_boxed_opaque_existential_0(v120);
      sub_22F107D08(v162, v120);
      goto LABEL_141;
    }

LABEL_157:
    v119 = v130;
    v130[(v131 >> 6) + 8] |= 1 << v131;
    v138 = (v130[6] + 16 * v131);
    *v138 = v125;
    v138[1] = v127;
    sub_22F107D08(v162, (v130[7] + 32 * v131));
    v139 = v130[2];
    v36 = __OFADD__(v139, 1);
    v140 = v139 + 1;
    if (v36)
    {
      goto LABEL_167;
    }

    v130[2] = v140;
LABEL_141:
    v115 &= v115 - 1;
    *&v124[v128] = v119;

    swift_endAccess();

    v112 = v153;
    v109 = v155;
    v116 = v150;
  }

  while (1)
  {
    v121 = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      break;
    }

    if (v121 >= v116)
    {

      return v151;
    }

    v115 = *(v112 + 8 * v121);
    ++v117;
    if (v115)
    {
      v117 = v121;
      goto LABEL_147;
    }
  }

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
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void *sub_22F3CB664(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v6 = v3;
  v83 = *(v3 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_searchComputationCache);
  v10 = [v83 locationInformationForLocationNode:a1 locationMask:a2];
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v3 = sub_22F740CA0();

  v75 = 0x696669746E656469;
  v76 = 0xEA00000000007265;
  sub_22F741A90();
  if (!v3[2] || (v12 = sub_22F122B24(&v79), (v13 & 1) == 0))
  {

    sub_22F139E70(&v79);
    goto LABEL_22;
  }

  sub_22F13A100(v3[7] + 32 * v12, &v77);
  sub_22F139E70(&v79);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_22;
  }

  v14 = v75;
  v75 = 0x6C6562616CLL;
  v76 = 0xE500000000000000;
  sub_22F741A90();
  if (!v3[2])
  {
    goto LABEL_31;
  }

  v15 = sub_22F122B24(&v79);
  if ((v16 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_22F13A100(v3[7] + 32 * v15, &v77);
  sub_22F139E70(&v79);
  if (swift_dynamicCast())
  {
    v73 = v75;
    v74 = v76;
    v75 = 0x6E69616D6F64;
    v76 = 0xE600000000000000;
    sub_22F741A90();
    if (!v3[2] || (v17 = sub_22F122B24(&v79), (v18 & 1) == 0))
    {
LABEL_32:

LABEL_31:

      sub_22F139E70(&v79);
      v5 = v4;
      goto LABEL_22;
    }

    sub_22F13A100(v3[7] + 32 * v17, &v77);
    sub_22F139E70(&v79);
    if (swift_dynamicCast())
    {
      v72 = v75;
      v75 = 0x69747265706F7270;
      v76 = 0xEA00000000007365;
      sub_22F741A90();
      if (v3[2])
      {
        v19 = sub_22F122B24(&v79);
        if (v20)
        {
          sub_22F13A100(v3[7] + 32 * v19, &v77);
          sub_22F139E70(&v79);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB40A8, &qword_22F78A578);
          if (swift_dynamicCast())
          {
            v71 = v75;
            v70 = *(v6 + OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph);
            v21 = [v70 nodeForIdentifier_];
            if (v21)
            {
              objc_opt_self();
              v22 = swift_dynamicCastObjCClass();
              if (v22)
              {
                v3 = v22;
                v69 = v21;
                if ([v3 domain] == v72)
                {
                  v23 = [v3 label];
                  if (v23)
                  {
                    v24 = v23;
                    v67 = sub_22F740E20();
                    v68 = v25;

                    if (v67 == v73 && v68 == v74)
                    {

                      goto LABEL_37;
                    }

                    LODWORD(v67) = sub_22F742040();

                    if (v67)
                    {
LABEL_37:
                      sub_22F214E90(v71);
                      v67 = v61;
                      v68 = sub_22F740C80();

                      v62 = [v3 hasProperties_];

                      if (v62)
                      {

                        return v3;
                      }

                      goto LABEL_40;
                    }
                  }
                }
              }
            }

LABEL_40:
            v3 = sub_22F740DF0();

            sub_22F215124(v71);

            v63 = sub_22F740C80();

            v64 = [v70 anyNodeForLabel:v3 domain:v72 properties:v63];

            v5 = v4;
            if (v64)
            {
              objc_opt_self();
              v65 = swift_dynamicCastObjCClass();
              if (v65)
              {
                return v65;
              }
            }

            goto LABEL_22;
          }

          goto LABEL_34;
        }
      }

      goto LABEL_32;
    }
  }

LABEL_34:

  v5 = v4;
LABEL_22:
  v26 = [a3 densestCloseLocationNodeFromLocationNode:a1 withDateInterval:0 locationMask:a2];
  if (v26)
  {
    v3 = v26;
    v27 = [v3 label];
    if (v27)
    {
      v74 = v5;
      v28 = v27;
      v29 = sub_22F740E20();
      v31 = v30;

      v32 = [v3 name];
      if (v32)
      {
        v33 = v32;
        v34 = sub_22F740E20();
        v36 = v35;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E40, &unk_22F78A560);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22F771340;
        *(inited + 32) = sub_22F740E20();
        *(inited + 40) = v38;
        *(inited + 48) = v34;
        *(inited + 56) = v36;
        v73 = sub_22F14F0AC(inited);
        swift_setDeallocating();
        sub_22F120ADC(inited + 32, &qword_27DAB0E48, &unk_22F7711F0);
        v3 = v3;
        v39 = [v3 identifier];
        v81 = MEMORY[0x277D83EB0];
        v82 = MEMORY[0x277D83E90];
        v80 = MEMORY[0x277D83E88];
        *&v79 = v39;
        sub_22F139F28(&v79, &v77);
        v40 = MEMORY[0x277D84F98];
        LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native();
        v75 = v40;
        v41 = __swift_mutable_project_boxed_opaque_existential_1(&v77, v78);
        sub_22F3CDA38(*v41, 0x696669746E656469, 0xEA00000000007265, v36, &v75);
        __swift_destroy_boxed_opaque_existential_0(&v77);
        v42 = v75;
        v43 = MEMORY[0x277D83808];
        v80 = MEMORY[0x277D837D0];
        v81 = MEMORY[0x277D83808];
        v44 = MEMORY[0x277D837D8];
        v82 = MEMORY[0x277D837D8];
        *&v79 = v29;
        *(&v79 + 1) = v31;
        sub_22F139F28(&v79, &v77);
        LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native();
        v75 = v42;
        v45 = __swift_mutable_project_boxed_opaque_existential_1(&v77, v78);
        v46 = MEMORY[0x28223BE20](v45);
        v48 = (&v66 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v49 + 16))(v48, v46);
        sub_22F3CDBA8(*v48, v48[1], 0x6C6562616CLL, 0xE500000000000000, v36, &v75);
        __swift_destroy_boxed_opaque_existential_0(&v77);
        v50 = v75;
        LOWORD(v36) = [v3 domain];

        v80 = MEMORY[0x277D84C58];
        v81 = MEMORY[0x277D84C88];
        v82 = MEMORY[0x277D84C60];
        LOWORD(v79) = v36;
        sub_22F139F28(&v79, &v77);
        LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native();
        v75 = v50;
        v51 = __swift_mutable_project_boxed_opaque_existential_1(&v77, v78);
        sub_22F3CDDA4(*v51, 0x6E69616D6F64, 0xE600000000000000, v36, &v75);
        __swift_destroy_boxed_opaque_existential_0(&v77);
        v52 = v75;
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0800, &qword_22F78A570);
        v81 = sub_22F222E48(&qword_2810A93A8, v43, MEMORY[0x277D83528]);
        v82 = sub_22F222E48(&qword_2810A93B0, v44, MEMORY[0x277D83508]);
        *&v79 = v73;
        sub_22F139F28(&v79, &v77);
        LOBYTE(v36) = swift_isUniquelyReferenced_nonNull_native();
        v75 = v52;
        v53 = __swift_mutable_project_boxed_opaque_existential_1(&v77, v78);
        v54 = MEMORY[0x28223BE20](v53);
        v56 = (&v66 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v57 + 16))(v56, v54);
        sub_22F3CDF14(*v56, 0x69747265706F7270, 0xEA00000000007365, v36, &v75);
        __swift_destroy_boxed_opaque_existential_0(&v77);
        sub_22F215124(v75);

        v58 = sub_22F740C80();

        [v83 setLocationInformation:v58 forLocationNode:a1 locationMask:a2];
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    sub_22F3CF1D8();
    swift_allocError();
    *v59 = 0;
    swift_willThrow();
  }

  return v3;
}

id PlaceZeroKeywordGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceZeroKeywordGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceZeroKeywordGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F3CC38C(char *__src, char **a2, id *a3, char *__dst, void *a5, uint64_t a6)
{
  v7 = a3;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    v15 = a2;
    if (__dst != __src || &__src[8 * v11] <= __dst)
    {
      v16 = __dst;
      memmove(__dst, __src, 8 * v11);
      __dst = v16;
    }

    v17 = &__dst[8 * v11];
    v18 = __dst;
    if (v9 < 8 || v15 >= v7)
    {
LABEL_21:
      v27 = v8;
      goto LABEL_53;
    }

    v19 = v15;
    while (1)
    {
      v56 = *v19;
      v55 = *v18;
      v20 = v55;
      v21 = v56;
      v22 = v20;
      v23 = sub_22F3C669C(&v56, &v55, a5, a6);
      if (v6)
      {

        v43 = v17 - v18 + 7;
        if (v17 - v18 >= 0)
        {
          v43 = v17 - v18;
        }

        if (v8 < v18 || v8 >= v18 + (v43 & 0xFFFFFFFFFFFFFFF8) || v8 != v18)
        {
          v44 = 8 * (v43 >> 3);
          v27 = v8;
          goto LABEL_59;
        }

        goto LABEL_61;
      }

      v24 = v23;

      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = v19;
      v26 = v8 == v19++;
      if (!v26)
      {
        goto LABEL_18;
      }

LABEL_19:
      v8 += 8;
      if (v18 >= v17 || v19 >= v7)
      {
        goto LABEL_21;
      }
    }

    v25 = v18;
    v26 = v8 == v18++;
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v8 = *v25;
    goto LABEL_19;
  }

  v18 = __dst;
  if (__dst != a2 || &a2[v14] <= __dst)
  {
    v28 = a2;
    memmove(__dst, a2, 8 * v14);
    a2 = v28;
  }

  v27 = a2;
  v17 = &v18[v14];
  if (v12 < 8 || a2 <= v8)
  {
LABEL_53:
    v48 = v17 - v18 + 7;
    if (v17 - v18 >= 0)
    {
      v48 = v17 - v18;
    }

    if (v27 >= v18 && v27 < (v18 + (v48 & 0xFFFFFFFFFFFFFFF8)) && v27 == v18)
    {
      goto LABEL_61;
    }

    v44 = 8 * (v48 >> 3);
LABEL_59:
    v47 = v18;
LABEL_60:
    memmove(v27, v47, v44);
    goto LABEL_61;
  }

  v52 = v18;
  v29 = -v18;
  v50 = -v18;
LABEL_28:
  v51 = v27;
  v30 = v27 - 1;
  v31 = &v17[v29];
  --v7;
  v32 = v17;
  v33 = v17;
  while (1)
  {
    v34 = *(v33 - 1);
    v33 -= 8;
    v56 = v34;
    v35 = v30;
    v55 = *v30;
    v36 = v55;
    v37 = v34;
    v38 = v36;
    v39 = sub_22F3C669C(&v56, &v55, a5, a6);
    if (v6)
    {
      break;
    }

    v40 = v39;

    v41 = v7 + 1;
    if (v40)
    {
      v42 = v35;
      if (v41 != v51)
      {
        *v7 = *v35;
      }

      v18 = v52;
      v17 = v32;
      if (v32 <= v52 || (v27 = v42, v29 = v50, v42 <= v8))
      {
        v27 = v42;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v41 != v32)
    {
      *v7 = *v33;
    }

    v31 -= 8;
    --v7;
    v32 = v33;
    v30 = v35;
    if (v33 <= v52)
    {
      v17 = v33;
      v27 = v51;
      v18 = v52;
      goto LABEL_53;
    }
  }

  if (v31 >= 0)
  {
    v45 = v31;
  }

  else
  {
    v45 = v31 + 7;
  }

  v46 = v45 >> 3;
  v27 = v51;
  v47 = v52;
  if (v51 < v52 || v51 >= (v52 + (v45 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v51, v52, 8 * v46);
    goto LABEL_61;
  }

  if (v51 != v52)
  {
    v44 = 8 * v46;
    goto LABEL_60;
  }

LABEL_61:
  swift_unknownObjectRelease();

  return 1;
}

uint64_t sub_22F3CC72C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB41A0, &qword_27DAB4198, &qword_22F78A5E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4198, &qword_22F78A5E8);
            v9 = sub_22F14E004(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CC8CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB4168, &qword_27DAB4160, &qword_22F78A5D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4160, &qword_22F78A5D0);
            v9 = sub_22F14E104(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ImportantEntitiesGraphInferenceMoment();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CCA5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&unk_27DAB4188, &qword_27DAB4180, &qword_22F78A5E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4180, &qword_22F78A5E0);
            v9 = sub_22F14E084(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ImportantEntitiesChildrenProcessorEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CCBEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB4178, &qword_27DAB4170, &qword_22F78A5D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4170, &qword_22F78A5D8);
            v9 = sub_22F14E084(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ImportantEntitiesPetProcessorEntity();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CCD7C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB4158, &qword_27DAB4150, &qword_22F78A5C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4150, &qword_22F78A5C8);
            v9 = sub_22F14DF7C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CCF18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&unk_27DAB4140, &qword_27DAB4138, &qword_22F78A5C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4138, &qword_22F78A5C0);
            v9 = sub_22F14E084(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ImportantEntitiesTuningEvent();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CD0A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&unk_2810A9290, &unk_27DAB4128, &unk_22F78A5B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB4128, &unk_22F78A5B0);
            v9 = sub_22F14E004(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22F120634(0, &qword_2810A8EF0, 0x277D289C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CD248(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB4120, &qword_27DAB32A8, &unk_22F7868C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB32A8, &unk_22F7868C0);
            v9 = sub_22F14E18C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for GraphSearchEntity(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CD3D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&unk_27DAB4110, &qword_27DAB35D0, &unk_22F784740);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35D0, &unk_22F784740);
            v9 = sub_22F14E004(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TripLocationScore();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CD568(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&unk_27DAB4100, &qword_27DAB40F8, &qword_22F78A5A8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40F8, &qword_22F78A5A8);
            v9 = sub_22F14E084(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for PGSharedLibrarySimulationEvent(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CD6F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB40F0, &qword_27DAB40E8, &qword_22F78A5A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E8, &qword_22F78A5A0);
            v9 = sub_22F14E004(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22F120634(0, &qword_2810A91D0, 0x277CD99E0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3CD898(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22F741A00();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22F741A00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22F3CF394(&qword_27DAB40C0, &qword_27DAB40B8, &unk_22F78A580);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40B8, &unk_22F78A580);
            v9 = sub_22F14E004(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22F120634(0, &qword_27DAB0590, off_27887B2F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *sub_22F3CDA38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = MEMORY[0x277D83E88];
  v25 = MEMORY[0x277D83EB0];
  v26 = MEMORY[0x277D83E90];
  v9 = *a5;
  v11 = sub_22F1229E8(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_22F139F28(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_22F1394F4();
    goto LABEL_7;
  }

  sub_22F12EA90(v14, a4 & 1);
  v20 = sub_22F1229E8(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D83E88]);
  sub_22F3CE3AC(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

_OWORD *sub_22F3CDBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D837D0];
  v31 = MEMORY[0x277D83808];
  v32 = MEMORY[0x277D837D8];
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v11 = *a6;
  v13 = sub_22F1229E8(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 48 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_22F139F28(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_22F1394F4();
    goto LABEL_7;
  }

  sub_22F12EA90(v16, a5 & 1);
  v22 = sub_22F1229E8(a3, a4);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v10);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  sub_22F3CE310(v13, a3, a4, *v27, v27[1], v19);

  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

_OWORD *sub_22F3CDDA4(__int16 a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOWORD(v23) = a1;
  v24 = MEMORY[0x277D84C58];
  v25 = MEMORY[0x277D84C88];
  v26 = MEMORY[0x277D84C60];
  v9 = *a5;
  v11 = sub_22F1229E8(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      __swift_destroy_boxed_opaque_existential_0(v18);
      return sub_22F139F28(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_22F1394F4();
    goto LABEL_7;
  }

  sub_22F12EA90(v14, a4 & 1);
  v20 = sub_22F1229E8(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v23, MEMORY[0x277D84C58]);
  sub_22F3CE274(v11, a2, a3, *v22, v17);

  return __swift_destroy_boxed_opaque_existential_0(&v23);
}

_OWORD *sub_22F3CDF14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0800, &qword_22F78A570);
  v30 = v10;
  v31 = sub_22F222E48(&qword_2810A93A8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  v32 = sub_22F222E48(&qword_2810A93B0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  *&v29 = a1;
  v11 = *a5;
  v13 = sub_22F1229E8(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 48 * v13);
      __swift_destroy_boxed_opaque_existential_0(v20);
      return sub_22F139F28(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_22F1394F4();
    goto LABEL_7;
  }

  sub_22F12EA90(v16, a4 & 1);
  v22 = sub_22F1229E8(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v10);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  sub_22F3CE168(v13, a2, a3, *v27, v19);

  return __swift_destroy_boxed_opaque_existential_0(&v29);
}

_OWORD *sub_22F3CE168(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0800, &qword_22F78A570);
  v17 = sub_22F222E48(&qword_2810A93A8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  v18 = sub_22F222E48(&qword_2810A93B0, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_22F139F28(&v15, (a5[7] + 48 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_22F3CE274(unint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, void *a5)
{
  LOWORD(v11) = a4;
  v12 = MEMORY[0x277D84C58];
  v13 = MEMORY[0x277D84C88];
  v14 = MEMORY[0x277D84C60];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22F139F28(&v11, (a5[7] + 48 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_22F3CE310(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D83808];
  v15 = MEMORY[0x277D837D8];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_22F139F28(&v12, (a6[7] + 48 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_22F3CE3AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = MEMORY[0x277D83E88];
  v13 = MEMORY[0x277D83EB0];
  v14 = MEMORY[0x277D83E90];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22F139F28(&v11, (a5[7] + 48 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_22F3CE448(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v10 = a3[1];
  v11 = a5;
  v124 = a6;
  swift_unknownObjectRetain_n();
  v123 = v11;
  if (v10 < 1)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_91:
    __dst = *a1;
    if (*a1)
    {
      v104 = v123;
      swift_unknownObjectRetain_n();
      v121 = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_93;
    }

    goto LABEL_134;
  }

  v12 = v10;
  v114 = a4;
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = v13;
    v16 = v13 + 1;
    v121 = v12;
    if (v13 + 1 >= v12)
    {
      goto LABEL_20;
    }

    v17 = *a3;
    v18 = *(*a3 + 8 * v16);
    v19 = v15;
    v20 = *(*a3 + 8 * v15);
    v125 = v20;
    v126 = v18;
    v21 = v18;
    v22 = v20;
    v23 = sub_22F3C669C(&v126, &v125, v123, v124);
    if (v7)
    {
      swift_unknownObjectRelease_n();

LABEL_105:

      return;
    }

    v24 = v23;
    __dst = v14;

    v25 = v19 + 2;
    v115 = v19;
    v26 = 8 * v19;
    v27 = (v17 + 8 * v19 + 16);
    while (v121 != v25)
    {
      v28 = *v27;
      v125 = *(v27 - 1);
      v29 = v125;
      v126 = v28;
      v30 = v28;
      v31 = v29;
      LODWORD(v29) = sub_22F3C669C(&v126, &v125, v123, v124);

      ++v25;
      ++v27;
      if ((v24 ^ v29))
      {
        v121 = v25 - 1;
        break;
      }
    }

    v15 = v115;
    if (v24)
    {
      v16 = v121;
      if (v121 < v115)
      {
        goto LABEL_128;
      }

      if (v115 >= v121)
      {
        goto LABEL_19;
      }

      v32 = 8 * v121 - 8;
      v33 = v115;
      do
      {
        if (v33 != --v16)
        {
          v34 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v35 = *(v34 + v26);
          *(v34 + v26) = *(v34 + v32);
          *(v34 + v32) = v35;
        }

        ++v33;
        v32 -= 8;
        v26 += 8;
      }

      while (v33 < v16);
    }

    v16 = v121;
LABEL_19:
    v7 = 0;
LABEL_20:
    v36 = a3[1];
    if (v16 >= v36)
    {
      goto LABEL_30;
    }

    v37 = v16;
    v55 = __OFSUB__(v16, v15);
    v38 = v16 - v15;
    if (v55)
    {
      goto LABEL_124;
    }

    if (v38 >= v114)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v15, v114))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      swift_unknownObjectRelease_n();

      __break(1u);
LABEL_130:
      swift_unknownObjectRelease_n();

      __break(1u);
      goto LABEL_131;
    }

    if (v15 + v114 >= v36)
    {
      v39 = a3[1];
    }

    else
    {
      v39 = v15 + v114;
    }

    if (v39 < v15)
    {
      goto LABEL_127;
    }

    if (v37 == v39)
    {
LABEL_29:
      v16 = v37;
LABEL_30:
      if (v16 < v15)
      {
        goto LABEL_123;
      }

      goto LABEL_31;
    }

    __dst = v14;
    v92 = *a3;
    v93 = *a3 + 8 * v37 - 8;
    v116 = v15;
    v94 = v15 - v37;
    v113 = v39;
    do
    {
      v119 = v37;
      v95 = *(v92 + 8 * v37);
      v121 = v94;
      v96 = v93;
      do
      {
        v125 = *v93;
        v97 = v125;
        v126 = v95;
        v98 = v95;
        v99 = v97;
        v100 = sub_22F3C669C(&v126, &v125, v123, v124);
        if (v7)
        {
          swift_unknownObjectRelease_n();

          return;
        }

        v101 = v100;

        if ((v101 & 1) == 0)
        {
          break;
        }

        if (!v92)
        {
          goto LABEL_130;
        }

        v102 = *v93;
        v95 = *(v93 + 8);
        *v93 = v95;
        *(v93 + 8) = v102;
        v93 -= 8;
      }

      while (!__CFADD__(v94++, 1));
      v37 = v119 + 1;
      v93 = v96 + 8;
      v94 = v121 - 1;
    }

    while (v119 + 1 != v113);
    v16 = v113;
    v14 = __dst;
    v15 = v116;
    if (v113 < v116)
    {
      goto LABEL_123;
    }

LABEL_31:
    v118 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_22F13D970(0, *(v14 + 2) + 1, 1, v14);
    }

    v41 = *(v14 + 2);
    v40 = *(v14 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v14 = sub_22F13D970((v40 > 1), v41 + 1, 1, v14);
    }

    *(v14 + 2) = v42;
    v43 = &v14[16 * v41];
    *(v43 + 4) = v15;
    *(v43 + 5) = v118;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v41)
    {
      break;
    }

LABEL_3:
    v12 = a3[1];
    v13 = v118;
    if (v118 >= v12)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v44 = v42 - 1;
    if (v42 >= 4)
    {
      v49 = &v14[16 * v42 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v14[16 * v42];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v14[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_122;
        }

        if (v47 < v81)
        {
          v44 = v42 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

    if (v42 == 3)
    {
      v45 = *(v14 + 4);
      v46 = *(v14 + 5);
      v55 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      v48 = v55;
LABEL_50:
      if (v48)
      {
        goto LABEL_112;
      }

      v61 = &v14[16 * v42];
      v63 = *v61;
      v62 = *(v61 + 1);
      v64 = __OFSUB__(v62, v63);
      v65 = v62 - v63;
      v66 = v64;
      if (v64)
      {
        goto LABEL_115;
      }

      v67 = &v14[16 * v44 + 32];
      v69 = *v67;
      v68 = *(v67 + 1);
      v55 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v55)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v65, v70))
      {
        goto LABEL_119;
      }

      if (v65 + v70 >= v47)
      {
        if (v47 < v70)
        {
          v44 = v42 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_64;
    }

    v71 = &v14[16 * v42];
    v73 = *v71;
    v72 = *(v71 + 1);
    v55 = __OFSUB__(v72, v73);
    v65 = v72 - v73;
    v66 = v55;
LABEL_64:
    if (v66)
    {
      goto LABEL_114;
    }

    v74 = &v14[16 * v44];
    v76 = *(v74 + 4);
    v75 = *(v74 + 5);
    v55 = __OFSUB__(v75, v76);
    v77 = v75 - v76;
    if (v55)
    {
      goto LABEL_117;
    }

    if (v77 < v65)
    {
      goto LABEL_3;
    }

LABEL_71:
    v82 = v44 - 1;
    if (v44 - 1 >= v42)
    {
      break;
    }

    v83 = *a3;
    if (!*a3)
    {
      goto LABEL_129;
    }

    v84 = v14;
    v85 = *&v14[16 * v82 + 32];
    v121 = v44;
    v86 = *&v14[16 * v44 + 32];
    v87 = *&v14[16 * v44 + 40];
    v14 = (v83 + 8 * v85);
    v88 = (v83 + 8 * v86);
    v89 = (v83 + 8 * v87);
    v90 = v123;
    swift_unknownObjectRetain();
    sub_22F3CC38C(v14, v88, v89, __dst, v90, v124);
    if (v7)
    {
      swift_unknownObjectRelease_n();

      return;
    }

    if (v87 < v85)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_22F3F5F98(v84);
    }

    if (v82 >= *(v84 + 2))
    {
      goto LABEL_109;
    }

    v91 = &v84[16 * v82];
    *(v91 + 4) = v85;
    *(v91 + 5) = v87;
    v127 = v84;
    sub_22F3F5F0C(v121);
    v14 = v127;
    v42 = *(v127 + 2);
    if (v42 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  v14 = sub_22F3F5F98(v14);
LABEL_93:
  v127 = v14;
  v105 = *(v14 + 2);
  if (v105 < 2)
  {
LABEL_101:

    swift_unknownObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v106 = *a3;
      if (!*a3)
      {
        break;
      }

      v107 = *&v14[16 * v105];
      v108 = v14;
      v123 = (v105 - 1);
      v109 = *&v14[16 * v105 + 24];
      v110 = (v106 + 8 * v107);
      v14 = (v106 + 8 * *&v14[16 * v105 + 16]);
      v111 = (v106 + 8 * v109);
      v22 = v121;
      swift_unknownObjectRetain();
      sub_22F3CC38C(v110, v14, v111, __dst, v22, v124);
      if (v7)
      {

        swift_unknownObjectRelease_n();

        goto LABEL_105;
      }

      if (v109 < v107)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_22F3F5F98(v108);
      }

      if (v105 - 2 >= *(v108 + 2))
      {
        goto LABEL_121;
      }

      v112 = &v108[16 * v105];
      *v112 = v107;
      *(v112 + 1) = v109;
      v127 = v108;
      sub_22F3F5F0C(v123);
      v14 = v127;
      v105 = *(v127 + 2);
      if (v105 <= 1)
      {
        goto LABEL_101;
      }
    }

LABEL_131:
    swift_unknownObjectRelease();

    __break(1u);
LABEL_132:
    swift_unknownObjectRelease_n();

    __break(1u);
LABEL_133:
    swift_unknownObjectRelease_n();

    __break(1u);
LABEL_134:
    swift_unknownObjectRelease_n();

    __break(1u);
  }
}

void sub_22F3CECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v9 = *a4;
    v10 = *a4 + 8 * a3 - 8;
    v11 = a1 - a3;
LABEL_4:
    v21 = v10;
    v22 = a3;
    v12 = *(v9 + 8 * a3);
    v20 = v11;
    while (1)
    {
      v24 = v12;
      v23 = *v10;
      v13 = v23;
      v14 = v12;
      v15 = v13;
      v16 = sub_22F3C669C(&v24, &v23, a5, a6);

      if (v6)
      {
        break;
      }

      if (v16)
      {
        if (!v9)
        {
          __break(1u);
          return;
        }

        v17 = *v10;
        v12 = *(v10 + 8);
        *v10 = v12;
        *(v10 + 8) = v17;
        v10 -= 8;
        if (!__CFADD__(v11++, 1))
        {
          continue;
        }
      }

      a3 = v22 + 1;
      v10 = v21 + 8;
      v11 = v20 - 1;
      if (v22 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_22F3CEDEC(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = a1[1];
  v6 = a2;
  swift_unknownObjectRetain_n();
  v7 = v6;
  v8 = sub_22F742000();
  if (v8 < v5)
  {
    if (v5 >= -1)
    {
      v9 = v8;
      v10 = v5 / 2;
      if (v5 <= 1)
      {
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PlaceZeroKeyword();
        v11 = sub_22F741200();
        *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
      }

      v13[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
      v13[1] = v10;
      v12 = v7;
      swift_unknownObjectRetain();
      sub_22F3CE448(v13, v14, a1, v9, v12, a3);
      swift_unknownObjectRelease();

      *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_unknownObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    v7 = v7;
    swift_unknownObjectRetain();
    sub_22F3CECEC(0, v5, 1, a1, v7, a3);
    swift_unknownObjectRelease_n();
  }

  else
  {
    swift_unknownObjectRelease_n();
  }
}

void sub_22F3CEF8C(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a2;
  swift_unknownObjectRetain_n();
  v7 = v6;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    v5 = sub_22F2F45E0();
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v10[0] = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
  v10[1] = v8;
  v9 = v7;
  swift_unknownObjectRetain();
  sub_22F3CEDEC(v10, v9, a3);
  swift_unknownObjectRelease();

  *a1 = v5;
  swift_unknownObjectRelease_n();
}

id sub_22F3CF06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationOrAreaNodeByQueryToken;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CCAB00]) init];
  *&v4[OBJC_IVAR___PGPlaceZeroKeywordGenerator_graph] = a1;
  v10 = [objc_allocWithZone(PGGraphLocationHelper) initWithGraph_];
  *&v4[OBJC_IVAR___PGPlaceZeroKeywordGenerator_locationHelper] = v10;
  *&v4[OBJC_IVAR___PGPlaceZeroKeywordGenerator_photoLibrary] = a2;
  *&v4[OBJC_IVAR___PGPlaceZeroKeywordGenerator_searchComputationCache] = a3;
  *&v4[OBJC_IVAR___PGPlaceZeroKeywordGenerator_options] = a4;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for PlaceZeroKeywordGenerator();
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_22F3CF1D8()
{
  result = qword_27DAB4098;
  if (!qword_27DAB4098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4098);
  }

  return result;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F3CF288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40C8, &qword_22F78A590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22F3CF320(uint64_t a1, _BYTE *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = [v5 addIdentifier_];
  v8 = *v6 + 1;
  if (__OFADD__(*v6, 1))
  {
    __break(1u);
  }

  else
  {
    *v6 = v8;
    if (v8 >= 50)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t sub_22F3CF394(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_22F3CF3FC()
{
  result = qword_27DAB41A8;
  if (!qword_27DAB41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41A8);
  }

  return result;
}

void __swiftcall ScoredGraphEntity.init(type:label:identifier:score:localeIdentifier:)(PhotosGraph::ScoredGraphEntity *__return_ptr retstr, PhotosGraph::GraphEntityType type, Swift::String label, Swift::String_optional identifier, Swift::Double score, Swift::String_optional localeIdentifier)
{
  retstr->type = *type;
  retstr->label = label;
  retstr->identifier = identifier;
  retstr->score = score;
  retstr->localeIdentifier = localeIdentifier;
}

PhotosGraph::GraphEntityType_optional __swiftcall GraphEntityType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 17;
  if (rawValue < 0x11)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ScoredGraphEntity.label.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ScoredGraphEntity.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ScoredGraphEntity.localeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_22F3CF638()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x696669746E656469;
  v4 = 0x65726F6373;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6562616CLL;
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

uint64_t sub_22F3CF6CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F3D04CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F3CF6F4(uint64_t a1)
{
  v2 = sub_22F3CFFFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3CF730(uint64_t a1)
{
  v2 = sub_22F3CFFFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScoredGraphEntity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB41B0, &qword_22F78A6E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v13[5] = *(v1 + 2);
  v13[6] = v9;
  v10 = *(v1 + 3);
  v13[3] = *(v1 + 4);
  v13[4] = v10;
  v11 = *(v1 + 6);
  v13[1] = *(v1 + 7);
  v13[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3CFFFC();
  sub_22F742210();
  v19 = v8;
  v18 = 0;
  sub_22F3D0050();
  sub_22F741FE0();
  if (!v2)
  {
    v17 = 1;
    sub_22F741F80();
    v16 = 2;
    sub_22F741F20();
    v15 = 3;
    sub_22F741FA0();
    v14 = 4;
    sub_22F741F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ScoredGraphEntity.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 5);
  v4 = *(v1 + 7);
  MEMORY[0x231901D30](*v1);
  sub_22F740D60();
  sub_22F742190();
  if (v2)
  {
    sub_22F740D60();
  }

  v5 = 0.0;
  if (v3 != 0.0)
  {
    v5 = v3;
  }

  MEMORY[0x231901D70](*&v5);
  if (!v4)
  {
    return sub_22F742190();
  }

  sub_22F742190();

  return sub_22F740D60();
}

uint64_t ScoredGraphEntity.hashValue.getter()
{
  sub_22F742170();
  ScoredGraphEntity.hash(into:)(v1);
  return sub_22F7421D0();
}

uint64_t ScoredGraphEntity.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB41C8, &qword_22F78A6E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3CFFFC();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v29) = 0;
  sub_22F3D00A4();
  sub_22F741F10();
  v9 = v33[0];
  v33[0] = 1;
  v10 = sub_22F741EB0();
  v12 = v11;
  v28 = v9;
  v27 = v10;
  v33[0] = 2;
  v25 = sub_22F741E50();
  v26 = v13;
  v33[0] = 3;
  sub_22F741ED0();
  v15 = v14;
  v41[0] = 4;
  v16 = sub_22F741E50();
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  LOBYTE(v29) = v28;
  v20 = v26;
  v19 = v27;
  *(&v29 + 1) = v27;
  *&v30 = v12;
  v21 = v25;
  *(&v30 + 1) = v25;
  *&v31 = v26;
  *(&v31 + 1) = v15;
  *&v32 = v16;
  *(&v32 + 1) = v18;
  v22 = v30;
  *a2 = v29;
  a2[1] = v22;
  v23 = v32;
  a2[2] = v31;
  a2[3] = v23;
  sub_22F3229A4(&v29, v33);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v33[0] = v28;
  v34 = v19;
  v35 = v12;
  v36 = v21;
  v37 = v20;
  v38 = v15;
  v39 = v16;
  v40 = v18;
  return sub_22F322A00(v33);
}

uint64_t sub_22F3CFE08()
{
  sub_22F742170();
  ScoredGraphEntity.hash(into:)(v1);
  return sub_22F7421D0();
}

uint64_t sub_22F3CFE4C(uint64_t a1)
{
  sub_22F742170();
  ScoredGraphEntity.hash(into:)(v2);
  return sub_22F7421D0();
}

BOOL _s11PhotosGraph06ScoredB6EntityV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 7);
  v8 = *(a2 + 3);
  v7 = *(a2 + 4);
  v9 = *(a2 + 5);
  v11 = *(a2 + 6);
  v10 = *(a2 + 7);
  if ((*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (sub_22F742040() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    if (v2 == v8 && v3 == v7)
    {
      if (v4 != v9)
      {
        return 0;
      }

      goto LABEL_16;
    }

    v13 = sub_22F742040();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_15:
    if (v4 != v9)
    {
      return result;
    }

LABEL_16:
    if (v6)
    {
      return v10 && (v5 == v11 && v6 == v10 || (sub_22F742040() & 1) != 0);
    }

    return !v10;
  }

  result = 0;
  if (!v7)
  {
    goto LABEL_15;
  }

  return result;
}

unint64_t sub_22F3CFFFC()
{
  result = qword_27DAB41B8;
  if (!qword_27DAB41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41B8);
  }

  return result;
}

unint64_t sub_22F3D0050()
{
  result = qword_27DAB41C0;
  if (!qword_27DAB41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41C0);
  }

  return result;
}

unint64_t sub_22F3D00A4()
{
  result = qword_27DAB41D0;
  if (!qword_27DAB41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41D0);
  }

  return result;
}

unint64_t sub_22F3D00FC()
{
  result = qword_27DAB41D8;
  if (!qword_27DAB41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41D8);
  }

  return result;
}

unint64_t sub_22F3D0154()
{
  result = qword_27DAB41E0;
  if (!qword_27DAB41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GraphEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphEntityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22F3D030C(uint64_t a1, int a2)
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

uint64_t sub_22F3D0354(uint64_t result, int a2, int a3)
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

unint64_t sub_22F3D03C8()
{
  result = qword_27DAB41E8;
  if (!qword_27DAB41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41E8);
  }

  return result;
}

unint64_t sub_22F3D0420()
{
  result = qword_27DAB41F0;
  if (!qword_27DAB41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41F0);
  }

  return result;
}

unint64_t sub_22F3D0478()
{
  result = qword_27DAB41F8;
  if (!qword_27DAB41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB41F8);
  }

  return result;
}

uint64_t sub_22F3D04CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F791B00 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_22F3D0684()
{
  result = qword_27DAB4200;
  if (!qword_27DAB4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4200);
  }

  return result;
}

_BYTE *sub_22F3D0714@<X0>(double **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_22F3D26E4(*a1, *a2, *a3);
  *a4 = result;
  return result;
}

uint64_t sub_22F3D0764(double *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v181 - v12;
  v14 = *(a2 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset);
  result = [v14 location];
  if (result)
  {
    v16 = result;
    v185 = v7;
    v17 = sub_22F16EEC4();
    v18 = *(v17 + 2);
    v186 = a1;
    if (v18)
    {
      v19 = 0;
      v20 = a1[12];
      v21 = 1;
      while (2)
      {
        v22 = &v17[16 * v19 + 32];
        v23 = v19;
        while (1)
        {
          if (v23 >= v18)
          {
            __break(1u);
LABEL_227:
            __break(1u);
            goto LABEL_228;
          }

          v19 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_227;
          }

          if (*v22 < v20)
          {
            break;
          }

          ++v23;
          v22 += 2;
          if (v19 == v18)
          {
            v24 = v21;
            v25 = v21;
            goto LABEL_13;
          }
        }

        v24 = 0;
        v25 = 0;
        v21 = 0;
        if (v19 != v18)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v24 = 0;
      v25 = 1;
    }

LABEL_13:

    v26 = sub_22F16EB3C();
    v27 = *(v26 + 2);
    if (v27)
    {
      v28 = 0;
LABEL_15:
      v29 = 16 * v28 + 32;
      while (v28 < v27)
      {
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_229;
        }

        if (*&v26[v29] < v186[12])
        {
          v25 = 0;
          ++v28;
          if (v30 != v27)
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }

        ++v28;
        v29 += 16;
        if (v30 == v27)
        {

          if ((v25 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }
      }

LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:

      v58 = *(a3 + 24);
      if (!v58)
      {
        goto LABEL_244;
      }

      goto LABEL_65;
    }

    if (v24)
    {
LABEL_24:

      return 0;
    }

LABEL_26:
    v31 = sub_22F16EEC4();
    v32 = *(v31 + 2);
    if (v32)
    {
      v33 = 0;
      v34 = 1;
      while (2)
      {
        v35 = &v31[16 * v33 + 32];
        v36 = v33;
        while (1)
        {
          if (v36 >= v32)
          {
            __break(1u);
LABEL_239:
            __break(1u);
            goto LABEL_240;
          }

          v33 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_239;
          }

          if (*v35 < v186[12])
          {
            break;
          }

          ++v36;
          v35 += 2;
          if (v33 == v32)
          {
            v37 = v34;
            v38 = v34;
            goto LABEL_37;
          }
        }

        v37 = 0;
        v38 = 0;
        v34 = 0;
        if (v33 != v32)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v37 = 0;
      v38 = 1;
    }

LABEL_37:
    v184 = v16;

    v39 = sub_22F16EB3C();
    v40 = *(v39 + 2);
    if (v40)
    {
      v41 = 0;
LABEL_39:
      v42 = 16 * v41 + 32;
      while (v41 < v40)
      {
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_241;
        }

        if (*&v39[v42] < v186[12])
        {
          v38 = 0;
          ++v41;
          if (v43 != v40)
          {
            goto LABEL_39;
          }

          goto LABEL_50;
        }

        ++v41;
        v42 += 16;
        if (v43 == v40)
        {

          if ((v38 & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_64;
        }
      }

LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
      goto LABEL_242;
    }

    if ((v37 & 1) == 0)
    {
LABEL_50:
      if (*(a3 + 24))
      {

        if (sub_22F16DA54())
        {
          sub_22F16CC5C(v13);
          sub_22F16CC5C(v9);
          sub_22F73F590();
          v45 = v44;
          v46 = *(v185 + 8);
          v46(v9, v6);
          v46(v13, v6);

          if (fabs(v45) <= v186[6])
          {
            v47 = v186[4];
            sub_22F16D08C();
            sub_22F16CC5C(v9);
            sub_22F73F590();
            v49 = v48;
            v46(v9, v6);
            v46(v13, v6);
            if (v47 <= fabs(v49))
            {
              v187 = 0;
              v188 = 0xE000000000000000;
              sub_22F741B00();
              MEMORY[0x231900B10](0xD000000000000053, 0x800000022F79E380);
              sub_22F7413B0();
              MEMORY[0x231900B10](540884512, 0xE400000000000000);
              sub_22F7413B0();
              v164 = v187;
              v163 = v188;
              if (qword_27DAAFE08 != -1)
              {
                swift_once();
              }

              if (byte_27DAD0FC8 != 1)
              {

                return 1;
              }

              if (qword_27DAAFD40 != -1)
              {
                swift_once();
              }

              v165 = sub_22F740B90();
              __swift_project_value_buffer(v165, qword_27DAD0E10);

              v166 = sub_22F740B70();
              v167 = sub_22F7415F0();

              if (os_log_type_enabled(v166, v167))
              {
                v168 = swift_slowAlloc();
                v169 = swift_slowAlloc();
                v187 = v169;
                *v168 = 136315138;
                *(v168 + 4) = sub_22F145F20(v164, v163, &v187);
                _os_log_impl(&dword_22F0FC000, v166, v167, "%s", v168, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v169);
                MEMORY[0x2319033A0](v169, -1, -1);
                MEMORY[0x2319033A0](v168, -1, -1);
              }

              if (qword_27DAAFD40 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v165, qword_27DAD0E10);
              v81 = sub_22F740B70();
              v170 = sub_22F7415F0();
              if (os_log_type_enabled(v81, v170))
              {
                v171 = swift_slowAlloc();
                v172 = swift_slowAlloc();
                v187 = v172;
                *v171 = 136315138;
                *(v171 + 4) = sub_22F145F20(0xD0000000000000B1, 0x800000022F79E810, &v187);
                _os_log_impl(&dword_22F0FC000, v81, v170, "%s", v171, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v172);
                MEMORY[0x2319033A0](v172, -1, -1);
                MEMORY[0x2319033A0](v171, -1, -1);
              }

              goto LABEL_224;
            }

            v187 = 0;
            v188 = 0xE000000000000000;
            sub_22F741B00();
            MEMORY[0x231900B10](0xD000000000000057, 0x800000022F79DFC0);
            sub_22F7413B0();
            MEMORY[0x231900B10](540884512, 0xE400000000000000);
            sub_22F7413B0();
            v50 = v187;
            v51 = v188;
            if (qword_27DAAFE08 != -1)
            {
              swift_once();
            }

            if (byte_27DAD0FC8 == 1)
            {
              v183 = v50;
              if (qword_27DAAFD40 != -1)
              {
                swift_once();
              }

              v52 = sub_22F740B90();
              __swift_project_value_buffer(v52, qword_27DAD0E10);

              v53 = sub_22F740B70();
              v54 = sub_22F7415F0();

              if (os_log_type_enabled(v53, v54))
              {
                v55 = swift_slowAlloc();
                LODWORD(v182) = v54;
                v56 = v55;
                v57 = swift_slowAlloc();
                v187 = v57;
                *v56 = 136315138;
                *(v56 + 4) = sub_22F145F20(v183, v51, &v187);
                _os_log_impl(&dword_22F0FC000, v53, v182, "%s", v56, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v57);
                MEMORY[0x2319033A0](v57, -1, -1);
                MEMORY[0x2319033A0](v56, -1, -1);
              }

              v58 = *(a3 + 24);
              if (!v58)
              {
                goto LABEL_244;
              }

              goto LABEL_65;
            }

            goto LABEL_230;
          }
        }

        else
        {
        }
      }
    }

LABEL_64:
    v58 = *(a3 + 24);
    if (!v58)
    {
LABEL_244:

      return 0;
    }

LABEL_65:

    v59 = sub_22F16EB3C();
    v60 = *(v59 + 2);
    v61 = v186;
    if (v60)
    {
      v62 = (v59 + 40);
      while (1)
      {
        v63 = *v62;
        if (*v62 <= v186[10])
        {
          v63 = v186[10];
        }

        if (v63 >= v186[11])
        {
          v63 = v186[11];
        }

        if (*(v62 - 1) < v63)
        {
          break;
        }

        v62 += 2;
        if (!--v60)
        {
          goto LABEL_73;
        }
      }

      v70 = 1;
    }

    else
    {
LABEL_73:

      v64 = sub_22F16EEC4();
      v65 = *(v64 + 2);
      if (v65)
      {
        v66 = v65 - 1;
        v67 = (v64 + 40);
        do
        {
          v69 = *(v67 - 1);
          v68 = *v67;
          if (*v67 <= *(v61 + 80))
          {
            v68 = *(v61 + 80);
          }

          if (v68 >= *(v61 + 88))
          {
            v68 = *(v61 + 88);
          }

          v70 = v69 < v68;
          v71 = v69 < v68 || v66-- == 0;
          v67 += 2;
        }

        while (!v71);
      }

      else
      {
        v70 = 0;
      }
    }

    v72 = sub_22F16EB3C();
    v73 = *(v72 + 2);
    if (v73)
    {
      v74 = (v72 + 40);
      while (1)
      {
        v75 = *v74;
        if (*v74 <= *(v61 + 80))
        {
          v75 = *(v61 + 80);
        }

        if (v75 >= *(v61 + 88))
        {
          v75 = *(v61 + 88);
        }

        if (*(v74 - 1) < v75)
        {
          break;
        }

        v74 += 2;
        if (!--v73)
        {
          goto LABEL_95;
        }
      }
    }

    else
    {
LABEL_95:

      v76 = sub_22F16EEC4();
      v77 = *(v76 + 2);
      if (!v77)
      {
LABEL_103:

        if (v70)
        {
          if (qword_27DAAFE08 != -1)
          {
            swift_once();
          }

          if (byte_27DAD0FC8 == 1)
          {
            if (qword_27DAAFD40 != -1)
            {
              swift_once();
            }

            v80 = sub_22F740B90();
            __swift_project_value_buffer(v80, qword_27DAD0E10);
            v81 = sub_22F740B70();
            v82 = sub_22F7415F0();
            if (!os_log_type_enabled(v81, v82))
            {
              goto LABEL_223;
            }

            v83 = "d at the same location: ";
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v187 = v85;
            *v84 = 136315138;
            v86 = 0xD000000000000072;
LABEL_222:
            *(v84 + 4) = sub_22F145F20(v86, v83 | 0x8000000000000000, &v187);
            _os_log_impl(&dword_22F0FC000, v81, v82, "%s", v84, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v85);
            MEMORY[0x2319033A0](v85, -1, -1);
            MEMORY[0x2319033A0](v84, -1, -1);
LABEL_223:

LABEL_224:

            return 1;
          }

LABEL_225:

          return 1;
        }

        goto LABEL_117;
      }

      v78 = (v76 + 40);
      while (1)
      {
        v79 = *v78;
        if (*v78 <= *(v61 + 80))
        {
          v79 = *(v61 + 80);
        }

        if (v79 >= *(v61 + 88))
        {
          v79 = *(v61 + 88);
        }

        if (*(v78 - 1) < v79)
        {
          break;
        }

        v78 += 2;
        if (!--v77)
        {
          goto LABEL_103;
        }
      }
    }

    if (v70)
    {
      v87 = [v14 location];
      v88 = [*(v58 + OBJC_IVAR____TtC11PhotosGraph30PGSharedLibrarySimulationEvent_asset) location];
      v89 = v88;
      if (v87)
      {
        if (v88)
        {
          sub_22F3D4054();
          v90 = sub_22F741810();

          if ((v90 & 1) == 0)
          {
LABEL_215:
            if (qword_27DAAFE08 != -1)
            {
              swift_once();
            }

            if (byte_27DAD0FC8 == 1)
            {
              if (qword_27DAAFD40 != -1)
              {
                swift_once();
              }

              v173 = sub_22F740B90();
              __swift_project_value_buffer(v173, qword_27DAD0E10);
              v81 = sub_22F740B70();
              v82 = sub_22F7415F0();
              if (!os_log_type_enabled(v81, v82))
              {
                goto LABEL_223;
              }

              v83 = " frequent location";
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v187 = v85;
              *v84 = 136315138;
              v86 = 0xD000000000000081;
              goto LABEL_222;
            }

            goto LABEL_225;
          }

          goto LABEL_117;
        }

        v89 = v87;
LABEL_214:

        goto LABEL_215;
      }

      if (v88)
      {
        goto LABEL_214;
      }
    }

LABEL_117:
    [v184 horizontalAccuracy];
    v92 = v91;
    sub_22F16D388();
    v94 = v93 - v92;
    if (v94 < 0.0)
    {
      v95 = 0.0;
    }

    else
    {
      v95 = v94;
    }

    sub_22F16CC5C(v13);
    sub_22F16D08C();
    sub_22F73F590();
    v97 = v96;
    v98 = v185 + 8;
    v99 = *(v185 + 8);
    v99(v9, v6);
    v185 = v98;
    v183 = v99;
    v99(v13, v6);
    v187 = 0;
    v188 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD00000000000004CLL, 0x800000022F79E480);
    sub_22F16D388();
    sub_22F7413B0();
    MEMORY[0x231900B10](0xD00000000000001DLL, 0x800000022F79E4D0);
    sub_22F7413B0();
    MEMORY[0x231900B10](0xD000000000000018, 0x800000022F79E4F0);
    sub_22F7413B0();
    MEMORY[0x231900B10](46, 0xE100000000000000);
    v100 = v187;
    v101 = v188;
    if (qword_27DAAFE08 != -1)
    {
      goto LABEL_251;
    }

    while (1)
    {
      v102 = byte_27DAD0FC8;
      if (byte_27DAD0FC8 == 1)
      {
        v182 = v100;
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v103 = sub_22F740B90();
        __swift_project_value_buffer(v103, qword_27DAD0E10);

        v104 = sub_22F740B70();
        v105 = sub_22F7415F0();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v181 = v58;
          v108 = v107;
          v187 = v107;
          *v106 = 136315138;
          *(v106 + 4) = sub_22F145F20(v182, v101, &v187);
          _os_log_impl(&dword_22F0FC000, v104, v105, "%s", v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v108);
          v109 = v108;
          v58 = v181;
          MEMORY[0x2319033A0](v109, -1, -1);
          v110 = v106;
          v61 = v186;
          MEMORY[0x2319033A0](v110, -1, -1);
        }
      }

      else
      {
      }

      v111 = *(v61 + 72);
      v100 = a2;
      v112 = sub_22F16EEC4();
      v113 = *(v112 + 2);
      v101 = v102;
      if (v113)
      {
        v114 = 0;
        v115 = *(v61 + 96);
        v116 = 1;
        while (2)
        {
          v117 = &v112[16 * v114 + 32];
          v118 = v114;
          while (1)
          {
            if (v118 >= v113)
            {
              __break(1u);
LABEL_248:
              __break(1u);
              goto LABEL_249;
            }

            v114 = v118 + 1;
            if (__OFADD__(v118, 1))
            {
              goto LABEL_248;
            }

            if (*v117 < v115)
            {
              break;
            }

            ++v118;
            v117 += 2;
            if (v114 == v113)
            {
              v119 = v116;
              v61 = v116;
              goto LABEL_139;
            }
          }

          v119 = 0;
          v61 = 0;
          v116 = 0;
          if (v114 != v113)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v119 = 0;
        v61 = 1;
      }

LABEL_139:

      v100 = a2;
      v120 = sub_22F16EB3C();
      v121 = *(v120 + 2);
      if (!v121)
      {
        break;
      }

      v122 = 0;
LABEL_141:
      v123 = 16 * v122 + 32;
      while (v122 < v121)
      {
        v124 = v122 + 1;
        if (__OFADD__(v122, 1))
        {
          goto LABEL_250;
        }

        if (*&v120[v123] < v186[12])
        {
          v61 = 0;
          ++v122;
          if (v124 != v121)
          {
            goto LABEL_141;
          }

          if (v95 <= v111)
          {
            v125 = 7;
            goto LABEL_155;
          }

          goto LABEL_154;
        }

        ++v122;
        v123 += 16;
        if (v124 == v121)
        {

          v126 = v61 | (v95 <= v111);
          v127 = (v61 & 1) == 0;
          goto LABEL_151;
        }
      }

LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
LABEL_251:
      swift_once();
    }

    v126 = v119 | (v95 <= v111);
    v127 = (v119 & 1) == 0;
LABEL_151:
    v125 = 7;
    if (!v127)
    {
      v125 = 6;
    }

    if ((v126 & 1) == 0)
    {
LABEL_154:
      v125 = 4;
    }

LABEL_155:
    v128 = v186[v125];
    sub_22F16D08C();
    sub_22F16CC5C(v9);
    sub_22F73F590();
    v130 = v129;
    v131 = v183;
    v183(v9, v6);
    v131(v13, v6);
    if (v128 <= fabs(v130))
    {
      v187 = 0;
      v188 = 0xE000000000000000;
      sub_22F741B00();
      MEMORY[0x231900B10](0xD000000000000053, 0x800000022F79E380);
      sub_22F7413B0();
      MEMORY[0x231900B10](540884512, 0xE400000000000000);
      sub_22F7413B0();
      v139 = v188;
      if (v101)
      {
        v140 = v187;
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v141 = sub_22F740B90();
        __swift_project_value_buffer(v141, qword_27DAD0E10);

        v142 = sub_22F740B70();
        v143 = sub_22F7415F0();

        if (os_log_type_enabled(v142, v143))
        {
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v187 = v145;
          *v144 = 136315138;
          *(v144 + 4) = sub_22F145F20(v140, v139, &v187);
          _os_log_impl(&dword_22F0FC000, v142, v143, "%s", v144, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v145);
          MEMORY[0x2319033A0](v145, -1, -1);
          MEMORY[0x2319033A0](v144, -1, -1);
        }
      }

      else
      {
      }

      v187 = 0;
      v188 = 0xE000000000000000;
      sub_22F741B00();
      MEMORY[0x231900B10](0xD000000000000088, 0x800000022F79E670);
      if (v95 > v111)
      {
        v155 = 0x65736C6166;
      }

      else
      {
        v155 = 1702195828;
      }

      if (v95 > v111)
      {
        v156 = 0xE500000000000000;
      }

      else
      {
        v156 = 0xE400000000000000;
      }

      MEMORY[0x231900B10](v155, v156);

      MEMORY[0x231900B10](0x6E6174736964202CLL, 0xEC000000203A6563);
      sub_22F7413B0();
      MEMORY[0x231900B10](0x203A656D6974202CLL, 0xE800000000000000);
      sub_22F7413B0();
      v157 = v188;
      if ((v101 & 1) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_189;
    }

    v187 = 0;
    v188 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000057, 0x800000022F79DFC0);
    sub_22F7413B0();
    MEMORY[0x231900B10](540884512, 0xE400000000000000);
    sub_22F7413B0();
    v132 = v188;
    if (v102)
    {
      v133 = v187;
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v134 = sub_22F740B90();
      __swift_project_value_buffer(v134, qword_27DAD0E10);

      v135 = sub_22F740B70();
      v136 = sub_22F7415F0();

      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v187 = v138;
        *v137 = 136315138;
        *(v137 + 4) = sub_22F145F20(v133, v132, &v187);
        _os_log_impl(&dword_22F0FC000, v135, v136, "%s", v137, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v138);
        MEMORY[0x2319033A0](v138, -1, -1);
        MEMORY[0x2319033A0](v137, -1, -1);
      }
    }

    else
    {
    }

    v187 = 0;
    v188 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000075, 0x800000022F79E510);
    if (v95 > v111)
    {
      v146 = 0x65736C6166;
    }

    else
    {
      v146 = 1702195828;
    }

    if (v95 > v111)
    {
      v147 = 0xE500000000000000;
    }

    else
    {
      v147 = 0xE400000000000000;
    }

    MEMORY[0x231900B10](v146, v147);

    MEMORY[0x231900B10](0x6E6174736964202CLL, 0xEC000000203A6563);
    sub_22F7413B0();
    MEMORY[0x231900B10](0x203A656D6974202CLL, 0xE800000000000000);
    sub_22F7413B0();
    v148 = v188;
    if (v102)
    {
      v149 = v187;
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v150 = sub_22F740B90();
      __swift_project_value_buffer(v150, qword_27DAD0E10);

      v151 = sub_22F740B70();
      v152 = sub_22F7415F0();

      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v187 = v154;
        *v153 = 136315138;
        *(v153 + 4) = sub_22F145F20(v149, v148, &v187);
        _os_log_impl(&dword_22F0FC000, v151, v152, "%s", v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v154);
        MEMORY[0x2319033A0](v154, -1, -1);
        MEMORY[0x2319033A0](v153, -1, -1);
      }
    }

    else
    {
    }

    if (v95 <= v111 || v95 <= 0.0 || v97 <= 0.0)
    {
      goto LABEL_243;
    }

    if (v186[8] < v95 / v97 * 3.6)
    {
      v187 = 0;
      v188 = 0xE000000000000000;
      sub_22F741B00();
      MEMORY[0x231900B10](0xD00000000000007ELL, 0x800000022F79E5F0);
      sub_22F7413B0();
      v157 = v188;
      if (!v101)
      {
LABEL_200:

        goto LABEL_225;
      }

LABEL_189:
      v158 = v187;
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v159 = sub_22F740B90();
      __swift_project_value_buffer(v159, qword_27DAD0E10);

      v81 = sub_22F740B70();
      v160 = sub_22F7415F0();

      if (os_log_type_enabled(v81, v160))
      {
        v161 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v187 = v162;
        *v161 = 136315138;
        *(v161 + 4) = sub_22F145F20(v158, v157, &v187);
        _os_log_impl(&dword_22F0FC000, v81, v160, "%s", v161, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v162);
        MEMORY[0x2319033A0](v162, -1, -1);
        MEMORY[0x2319033A0](v161, -1, -1);
      }

      goto LABEL_223;
    }

    v187 = 0;
    v188 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000059, 0x800000022F79E590);
    sub_22F7413B0();
    v174 = v188;
    if (v101)
    {
      v175 = v187;
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v176 = sub_22F740B90();
      __swift_project_value_buffer(v176, qword_27DAD0E10);

      v177 = sub_22F740B70();
      v178 = sub_22F7415F0();

      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v187 = v180;
        *v179 = 136315138;
        *(v179 + 4) = sub_22F145F20(v175, v174, &v187);
        _os_log_impl(&dword_22F0FC000, v177, v178, "%s", v179, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v180);
        MEMORY[0x2319033A0](v180, -1, -1);
        MEMORY[0x2319033A0](v179, -1, -1);
      }

      return 0;
    }

LABEL_242:

LABEL_243:

    goto LABEL_244;
  }

  return result;
}