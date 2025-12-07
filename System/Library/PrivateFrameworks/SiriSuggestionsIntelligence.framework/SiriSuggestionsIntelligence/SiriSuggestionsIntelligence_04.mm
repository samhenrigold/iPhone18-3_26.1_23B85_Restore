uint64_t sub_1DA3E8B3C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DA3E8BCC;

  return sub_1DA3E8ED0();
}

uint64_t sub_1DA3E8BCC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *v4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = v3;

  if (v3)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 56) = a3;

    return MEMORY[0x1EEE6DFA0](sub_1DA3E8D20);
  }
}

uint64_t sub_1DA3E8D20()
{
  if (*(v0 + 56))
  {
    if (qword_1EE102E00 != -1)
    {
      OUTLINED_FUNCTION_12(&qword_1EE102E00);
    }

    v1 = 3157552;
    v2 = sub_1DA421A94();
    __swift_project_value_buffer(v2, static Logger.extractionCategory);
    v3 = sub_1DA421A74();
    v4 = sub_1DA421F54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DA39E000, v3, v4, "[warning] DeviceFeatureExtractor: No OS version available. Assuming the latest build is already installed", v5, 2u);
      MEMORY[0x1DA74E430](v5, -1, -1);
    }

    v6 = 0xE300000000000000;
    goto LABEL_12;
  }

  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);
  v10 = sub_1DA3E8314();
  v12 = sub_1DA3E83B0(v9, v7, v10, v11);
  if (!v8)
  {
    v1 = v12;
    v6 = v13;

LABEL_12:
    v16 = *(v0 + 8);

    return v16(v1, v6);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DA3E8EF0()
{
  v1 = *(v0 + 48);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1DA3E9018;

  return v6(v2, v3);
}

uint64_t sub_1DA3E9018(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[8] = a1;
  v4[9] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA3E914C);
  }
}

unsigned __int8 *sub_1DA3E914C()
{
  v49 = v0;
  v1 = v0[9];
  if (v1)
  {
    v0[2] = v0[8];
    v0[3] = v1;
    v0[4] = 46;
    v0[5] = 0xE100000000000000;
    sub_1DA3A6A84();
    v2 = sub_1DA421FC4();
    v3 = v2;
    if (v2[2] <= 1uLL)
    {
      goto LABEL_3;
    }

    v18 = v2[4];
    v17 = v2[5];
    v19 = HIBYTE(v17) & 0xF;
    v20 = v18 & 0xFFFFFFFFFFFFLL;
    if (!((v17 & 0x2000000000000000) != 0 ? HIBYTE(v17) & 0xF : v18 & 0xFFFFFFFFFFFFLL))
    {
      goto LABEL_3;
    }

    v23 = v2[6];
    v22 = v2[7];
    if ((v17 & 0x1000000000000000) != 0)
    {

      v1 = sub_1DA3E97E8(v18, v17, 10);
      v42 = v46;
LABEL_82:

      if ((v42 & 1) == 0)
      {
        v44 = sub_1DA3E8844(v23, v22, v43);
        if ((v45 & 1) == 0)
        {
          v13 = v44;

          v14 = 0;
          goto LABEL_11;
        }

        goto LABEL_4;
      }

LABEL_3:

LABEL_4:
      if (qword_1EE102E00 != -1)
      {
        OUTLINED_FUNCTION_12(&qword_1EE102E00);
      }

      v4 = sub_1DA421A94();
      __swift_project_value_buffer(v4, static Logger.extractionCategory);

      v5 = sub_1DA421A74();
      v6 = sub_1DA421F54();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v48[0] = v8;
        *v7 = 136315138;
        v9 = MEMORY[0x1DA74D4B0](v3, MEMORY[0x1E69E6158]);
        v11 = v10;

        v12 = sub_1DA3A5FE8(v9, v11, v48);

        *(v7 + 4) = v12;
        _os_log_impl(&dword_1DA39E000, v5, v6, "BuildVersionService: Unable to extract latest install from %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x1DA74E430](v8, -1, -1);
        MEMORY[0x1DA74E430](v7, -1, -1);
      }

      else
      {
      }

      v1 = 0;
      goto LABEL_10;
    }

    if ((v17 & 0x2000000000000000) != 0)
    {

      v48[0] = v18;
      v48[1] = v17 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v19)
        {
          if (v19 != 1)
          {
            OUTLINED_FUNCTION_4_13();
            while (1)
            {
              OUTLINED_FUNCTION_1_13();
              if (!v27 & v26)
              {
                break;
              }

              OUTLINED_FUNCTION_0_15();
              if (!v27)
              {
                break;
              }

              v1 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                break;
              }

              OUTLINED_FUNCTION_3_14();
              if (v27)
              {
                goto LABEL_81;
              }
            }
          }

          goto LABEL_80;
        }

LABEL_90:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v19)
        {
          v1 = 0;
          v39 = v48;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = 10 * v1;
            if ((v1 * 10) >> 64 != (10 * v1) >> 63)
            {
              break;
            }

            v1 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              break;
            }

            v39 = (v39 + 1);
            if (!--v19)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_80;
      }

      if (v19)
      {
        if (v19 != 1)
        {
          OUTLINED_FUNCTION_4_13();
          while (1)
          {
            OUTLINED_FUNCTION_1_13();
            if (!v27 & v26)
            {
              break;
            }

            OUTLINED_FUNCTION_0_15();
            if (!v27)
            {
              break;
            }

            v1 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            OUTLINED_FUNCTION_3_14();
            if (v27)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        v24 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {

        result = sub_1DA422104();
        v24 = result;
        v20 = v47;
      }

      v25 = *v24;
      if (v25 == 43)
      {
        if (v20 >= 1)
        {
          if (v20 != 1)
          {
            v1 = 0;
            if (v24)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_13();
                if (!v27 & v26)
                {
                  goto LABEL_80;
                }

                OUTLINED_FUNCTION_0_15();
                if (!v27)
                {
                  goto LABEL_80;
                }

                v1 = v34 + v33;
                if (__OFADD__(v34, v33))
                {
                  goto LABEL_80;
                }

                OUTLINED_FUNCTION_3_14();
                if (v27)
                {
                  goto LABEL_81;
                }
              }
            }

            goto LABEL_79;
          }

          goto LABEL_80;
        }

        goto LABEL_89;
      }

      if (v25 != 45)
      {
        if (v20)
        {
          v1 = 0;
          if (v24)
          {
            while (1)
            {
              v37 = *v24 - 48;
              if (v37 > 9)
              {
                goto LABEL_80;
              }

              v38 = 10 * v1;
              if ((v1 * 10) >> 64 != (10 * v1) >> 63)
              {
                goto LABEL_80;
              }

              v1 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                goto LABEL_80;
              }

              ++v24;
              if (!--v20)
              {
                goto LABEL_79;
              }
            }
          }

          goto LABEL_79;
        }

LABEL_80:
        v1 = 0;
        v30 = 1;
        goto LABEL_81;
      }

      if (v20 >= 1)
      {
        if (v20 != 1)
        {
          v1 = 0;
          if (v24)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_13();
              if (!v27 & v26)
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_0_15();
              if (!v27)
              {
                goto LABEL_80;
              }

              v1 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_3_14();
              if (v27)
              {
                goto LABEL_81;
              }
            }
          }

LABEL_79:
          v30 = 0;
LABEL_81:
          v42 = v30;
          goto LABEL_82;
        }

        goto LABEL_80;
      }

      __break(1u);
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_10:
  v13 = 0;
  v14 = 1;
LABEL_11:
  v15 = v0[1];

  return v15(v1, v13, v14);
}

uint64_t SiriSuggestionsIntelligence.BuildVersionService.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t SiriSuggestionsIntelligence.BuildVersionService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t _s24BuildVersionServiceErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s24BuildVersionServiceErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1DA3E972C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA3E9748(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

void *sub_1DA3E9778(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAB0, &qword_1DA423398);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_1DA3E97E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1DA421C94();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DA3E9D70(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DA422104();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
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

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1DA3E9D70(unint64_t a1, unint64_t a2)
{
  v2 = sub_1DA3E9DDC(sub_1DA3E9DD8, 0, a1, a2);
  v6 = sub_1DA3E9E10(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1DA3E9DDC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x1EEE69100](15, v5 | (v4 << 16));
}

uint64_t sub_1DA3E9E10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1DA421FA4();
    if (!v9 || (v10 = v9, v11 = sub_1DA3E9778(v9, 0), v12 = sub_1DA3E9F70(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1DA421BE4();

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
      return sub_1DA421BE4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1DA422104();
LABEL_4:

  return sub_1DA421BE4();
}

unint64_t sub_1DA3E9F70(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1DA3EA180(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DA421C44();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1DA422104();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1DA3EA180(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1DA421C24();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1DA3EA180(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DA421C54();
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
    v5 = MEMORY[0x1DA74D3A0](15, a1 >> 16);
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

void *sub_1DA3EA240(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DA3B74F4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

double sub_1DA3EA288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1DA3B7764(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1DA3A69D0(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1DA3EA2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DA3B76EC(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1DA4213B4();
    OUTLINED_FUNCTION_9();
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = sub_1DA4213B4();
    v12 = a4;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

void *sub_1DA3EA3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v6 = sub_1DA3B77A8(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(a5 + 56) + 8 * v6);
  v9 = v8;
  return v8;
}

void sub_1DA3EA3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1DA3B76EC(a1, a2);
    if (v3)
    {
    }
  }
}

uint64_t sub_1DA3EA440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DA3B76EC(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

double sub_1DA3EA498@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DA3B76EC(a1, a2), (v7 & 1) != 0))
  {
    sub_1DA3A7ED4(*(a3 + 56) + 40 * v6, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DA3EA4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DA4212E4();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Interaction.getSiriSuggestionFeatures()()
{
  v104[4] = *MEMORY[0x1E69E9840];
  v99 = sub_1DA421A94();
  OUTLINED_FUNCTION_3_1();
  v1 = v0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v95 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v95 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v95 - v12;
  v14 = sub_1DA4213B4();
  OUTLINED_FUNCTION_3_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DA4211C4();
  sub_1DA3EA2EC(0xD000000000000019, 0x80000001DA42C860, v20, v13);

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1DA3A6A2C(v13, &qword_1ECBAF718, &unk_1DA4293F0);
    sub_1DA4219A4();
    v21 = sub_1DA421A74();
    v22 = sub_1DA421F54();
    v23 = OUTLINED_FUNCTION_31_0();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_23_2();
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DA39E000, v21, v22, "[warning] No FeatureField for interaction", v25, 2u);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    (*(v1 + 8))(v5, v99);
    goto LABEL_20;
  }

  v98 = v16;
  (*(v16 + 32))(v19, v13, v14);
  v27 = sub_1DA421394();
  if (!v28)
  {
    sub_1DA4219A4();
    v53 = sub_1DA421A74();
    v54 = sub_1DA421F74();
    v55 = OUTLINED_FUNCTION_31_0();
    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_23_2();
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1DA39E000, v53, v54, "json result in Interaction Features record is not of type array", v57, 2u);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    (*(v1 + 8))(v8, v99);
    goto LABEL_19;
  }

  v29 = v27;
  v30 = v28;
  sub_1DA3EE47C();
  v31 = sub_1DA3EE3F8(v29, v30, 0);
  if (!v31)
  {
    sub_1DA4219A4();
    v58 = sub_1DA421A74();
    v59 = sub_1DA421F74();
    v60 = OUTLINED_FUNCTION_31_0();
    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_23_2();
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1DA39E000, v58, v59, "unable to get data from string as it is not base64 encoded", v62, 2u);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    (*(v1 + 8))(v10, v99);
LABEL_19:
    v63 = OUTLINED_FUNCTION_29_1();
    v64(v63);
LABEL_20:
    v30 = 0;
    goto LABEL_21;
  }

  v32 = v31;
  v104[0] = 0;
  v33 = [v31 decompressedDataUsingAlgorithm:0 error:v104];
  v34 = v104[0];
  if (!v33)
  {
    v66 = v104[0];
    sub_1DA420FB4();

    swift_willThrow();
LABEL_24:
    v68 = OUTLINED_FUNCTION_29_1();
    v69(v68);
    goto LABEL_21;
  }

  v30 = v33;
  sub_1DA420F54();
  swift_allocObject();
  v35 = v34;
  v36 = sub_1DA420F44();
  v37 = objc_opt_self();
  v103[0] = 0;
  v38 = [v37 propertyListWithData:v30 options:2 format:0 error:v103];
  v39 = v103[0];
  if (!v38)
  {
    v67 = v39;
    sub_1DA420FB4();

    swift_willThrow();

    goto LABEL_24;
  }

  sub_1DA421FF4();
  swift_unknownObjectRelease();
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_4_1();
    swift_once();
  }

  v97 = v19;
  v40 = __swift_project_value_buffer(v99, static Logger.extractionCategory);
  sub_1DA3A69D0(v104, v103);
  v99 = v40;
  v41 = sub_1DA421A74();
  v42 = sub_1DA421F64();
  v43 = OUTLINED_FUNCTION_31_0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v96 = v14;
    v46 = v102;
    *v45 = 136315138;
    sub_1DA3A69D0(v103, v101);
    v47 = v36;
    v48 = sub_1DA421BB4();
    v49 = v32;
    v51 = v50;
    __swift_destroy_boxed_opaque_existential_0(v103);
    v52 = sub_1DA3A5FE8(v48, v51, &v102);
    v32 = v49;

    *(v45 + 4) = v52;
    v36 = v47;
    _os_log_impl(&dword_1DA39E000, v41, v42, "Decoding payload of: \n\n%s\n\n", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    v14 = v96;
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v103);
  }

  v70 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  v71 = v30;
  v72 = sub_1DA421014();
  v74 = v73;

  sub_1DA3EE878(&qword_1ECBAF728, &qword_1ECBAF730, &protocol conformance descriptor for SiriSuggestionsIntelligence.SourcedFeature, MEMORY[0x1E69E6330]);
  v75 = v100;
  sub_1DA420F34();
  if (v75)
  {
    sub_1DA3B5D30(v72, v74);
    v76 = v75;
    v77 = sub_1DA421A74();
    v78 = sub_1DA421F64();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = v71;
      v81 = swift_slowAlloc();
      *v79 = 138412290;
      v82 = v75;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 4) = v83;
      *v81 = v83;
      _os_log_impl(&dword_1DA39E000, v77, v78, "Unable to decode for record due to %@", v79, 0xCu);
      sub_1DA3A6A2C(v81, &qword_1ECBAEC70, &qword_1DA42A510);
      v71 = v80;
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
      v70 = v98;
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    __swift_destroy_boxed_opaque_existential_0(v104);
    (*(v70 + 8))(v97, v14);
    v30 = 0;
  }

  else
  {
    v100 = 0;
    sub_1DA3B5D30(v72, v74);
    v30 = v103[0];

    v84 = sub_1DA421A74();
    v85 = sub_1DA421F64();

    v86 = v84;
    if (os_log_type_enabled(v84, v85))
    {
      v87 = swift_slowAlloc();
      v99 = v32;
      v88 = v87;
      v89 = swift_slowAlloc();
      v98 = v36;
      v90 = v89;
      v103[0] = v89;
      *v88 = 136315138;
      v91 = type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
      v92 = MEMORY[0x1DA74D4B0](v30, v91);
      v96 = v71;
      v94 = sub_1DA3A5FE8(v92, v93, v103);

      *(v88 + 4) = v94;
      _os_log_impl(&dword_1DA39E000, v86, v85, "Successfully decoded payload as: \n\n%s\n\n", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v104);
    (*(v70 + 8))(v97, v14);
  }

LABEL_21:
  v65 = v30;
  result.value._rawValue = v65;
  result.is_nil = v26;
  return result;
}

void *SiriSuggestionsIntelligence.FeatureLogger.__allocating_init(featureService:siriRemembersLogger:loggingPolicy:)()
{
  OUTLINED_FUNCTION_20_3();
  v1 = v0;
  v2 = swift_allocObject();
  sub_1DA3A1FF8(v1, v2 + 16);
  return OUTLINED_FUNCTION_25_2();
}

void *SiriSuggestionsIntelligence.FeatureLogger.init(featureService:siriRemembersLogger:loggingPolicy:)()
{
  OUTLINED_FUNCTION_20_3();
  sub_1DA3A1FF8(v1, v0 + 16);
  return OUTLINED_FUNCTION_25_2();
}

uint64_t SiriSuggestionsIntelligence.FeatureLogger.log(from:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_16();
  v1[106] = v0;
  v1[105] = v2;
  v1[99] = v3;
  v1[93] = v4;
  v1[107] = sub_1DA421374();
  OUTLINED_FUNCTION_14_5();
  v1[108] = v5;
  v1[109] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1DA3EB0B8()
{
  v1 = v0[106];
  if (*(v1 + 72) == 1)
  {
    if (qword_1EE102E00 != -1)
    {
      OUTLINED_FUNCTION_4_1();
      swift_once();
    }

    v2 = sub_1DA421A94();
    v0[110] = __swift_project_value_buffer(v2, static Logger.extractionCategory);
    v3 = sub_1DA421A74();
    sub_1DA421F54();
    v4 = OUTLINED_FUNCTION_31_0();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_23_2();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_0(&dword_1DA39E000, v6, v7, "inserting core interaction prior to the feature extraction process");
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    v8 = swift_task_alloc();
    v0[111] = v8;
    *v8 = v0;
    v8[1] = sub_1DA3EB2F8;
    OUTLINED_FUNCTION_13_5(v0[93]);
    OUTLINED_FUNCTION_24_2();

    return MEMORY[0x1EEE403C8](v9);
  }

  else
  {
    v11 = v0[93];
    v12 = swift_allocObject();
    v0[113] = v12;
    *(v12 + 16) = v1;
    *(v12 + 24) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
    OUTLINED_FUNCTION_8_12();
    swift_asyncLet_begin();
    v13 = OUTLINED_FUNCTION_27_1();
    sub_1DA3EBC2C(v13, v14, v15);
    v0[114] = 0;
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_24_2();

    return MEMORY[0x1EEE6DEB8](v16, v17, v18, v19);
  }
}

uint64_t sub_1DA3EB2F8()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  *(v3 + 896) = v0;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_17_5();

    return MEMORY[0x1EEE6DFA0](v9);
  }
}

uint64_t sub_1DA3EB42C(uint64_t a1)
{
  v2 = sub_1DA421A74();
  sub_1DA421F54();
  v3 = OUTLINED_FUNCTION_31_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_23_2();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_0(&dword_1DA39E000, v5, v6, "finished inserting non featurised interaction");
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  v7 = v1[112];
  v8 = v1[109];
  v9 = v1[106];
  v10 = v1[105];
  v11 = v1[93];
  v12 = swift_allocObject();
  v1[113] = v12;
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  OUTLINED_FUNCTION_8_12();
  swift_asyncLet_begin();
  sub_1DA3EBC2C(v11, v10, v8);
  v1[114] = v7;
  if (v7)
  {
    v13 = OUTLINED_FUNCTION_15_4();

    return MEMORY[0x1EEE6DEB0](v13, v14, v15, v1 + 82);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_15_4();

    return MEMORY[0x1EEE6DEB8](v16, v17, v18, v1 + 88);
  }
}

uint64_t sub_1DA3EB5C0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[87];
  v0[115] = v1;

  v2 = swift_task_alloc();
  v0[116] = v2;
  *v2 = v0;
  v2[1] = sub_1DA3EB670;
  v3 = v0[109];

  return sub_1DA3EBFAC(v1, v3);
}

uint64_t sub_1DA3EB670()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 936) = v0;

  OUTLINED_FUNCTION_17_5();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1DA3EB794()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_28_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x1EEE6DEB0](v3, v4, v5, v0 + 800);
}

uint64_t sub_1DA3EB814()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_4_0();

  return v0();
}

uint64_t sub_1DA3EB890()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_4_0();

  return v0();
}

uint64_t sub_1DA3EB8F4()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_28_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x1EEE6DEB0](v3, v4, v5, v0 + 752);
}

uint64_t sub_1DA3EB974()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_4_0();

  return v0();
}

uint64_t sub_1DA3EB9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA3EB9FC);
}

uint64_t sub_1DA3EB9FC()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_3(v2[3]);
  OUTLINED_FUNCTION_14_5();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_1DA3EBB10;
  v5 = OUTLINED_FUNCTION_13_5(v2[4]);

  return v7(v5, v0, v1);
}

uint64_t sub_1DA3EBB10()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  v4 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1DA3EBBFC()
{
  **(v0 + 16) = *(v0 + 48);
  OUTLINED_FUNCTION_4_0();
  return v1();
}

uint64_t sub_1DA3EBC2C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v30 = a3;
  v31 = a4;
  v28 = a1;
  v6 = sub_1DA4217B4();
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA4210F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DA4211F4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 72);
  if (v16)
  {
    if (v16 == 1)
    {
      sub_1DA421604();
      v17 = sub_1DA4215C4();
      v18 = v33;
      sub_1DA3ED1D8(v17, v19, v31);
      v33 = v18;
    }

    else
    {
      v21 = *(v4 + 88);
      v24 = *(v5 + 80);
      v27 = *(v5 + 64);
      v28 = v21;
      v26 = v15;
      v25 = sub_1DA421604();

      v24(v30);
      v30 = sub_1DA4215C4();
      (*(v10 + 8))(v12, v9);
      v22 = v29;
      (*(v29 + 104))(v8, *MEMORY[0x1E69D2FD0], v6);
      sub_1DA4215E4();
      sub_1DA421584();

      __swift_destroy_boxed_opaque_existential_0(v32);
      (*(v22 + 8))(v8, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF750, qword_1DA429290);
      sub_1DA421AE4();
      sub_1DA421324();
    }
  }

  else
  {
    sub_1DA421604();
    sub_1DA4215E4();
    sub_1DA421564();
    return __swift_destroy_boxed_opaque_existential_0(v32);
  }
}

uint64_t sub_1DA3EBFAC(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v3[14] = *v2;
  v4 = sub_1DA421374();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3EC098);
}

uint64_t sub_1DA3EC098()
{
  v1 = v0[11];
  (*(v0[16] + 16))(v0[17], v0[12], v0[15]);
  v2 = sub_1DA421334();
  sub_1DA3EDDC8(v1);
  v3 = v0[11];
  v2(v0 + 7, 0);
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  v0[6] = sub_1DA3EE814();
  v0[2] = v3;

  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1DA3EC248;
  OUTLINED_FUNCTION_13_5(v0[17]);
  OUTLINED_FUNCTION_24_2();

  return MEMORY[0x1EEE403D8](v5);
}

uint64_t sub_1DA3EC248()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
    v7 = sub_1DA3EC3C8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    v7 = sub_1DA3EC350;
  }

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1DA3EC350()
{
  OUTLINED_FUNCTION_16();
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_4_0();

  return v1();
}

uint64_t sub_1DA3EC3C8()
{
  OUTLINED_FUNCTION_16();
  (*(v0[16] + 8))(v0[17], v0[15]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  OUTLINED_FUNCTION_4_0();

  return v1();
}

uint64_t SiriSuggestionsIntelligence.FeatureLogger.logEngagementInProcess(for:with:)()
{
  OUTLINED_FUNCTION_16();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = sub_1DA4217B4();
  OUTLINED_FUNCTION_14_5();
  v1[6] = v4;
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1DA3EC4F8()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF738, &qword_1DA427C30) + 48);
  v5 = *MEMORY[0x1E69D3148];
  sub_1DA421844();
  OUTLINED_FUNCTION_9();
  (*(v6 + 104))(v1, v5);
  v7 = *MEMORY[0x1E69D3118];
  sub_1DA421824();
  OUTLINED_FUNCTION_9();
  (*(v8 + 104))(v1, v7);
  v9 = *MEMORY[0x1E69D3140];
  sub_1DA421834();
  OUTLINED_FUNCTION_9();
  (*(v10 + 104))(v1 + v4, v9);
  (*(v2 + 104))(v1, *MEMORY[0x1E69D2FB0], v3);
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_1DA3EC6A0;
  OUTLINED_FUNCTION_13_5(v0[2]);

  return SiriSuggestionsIntelligence.FeatureLogger.logEngagement(for:with:invocationType:)();
}

uint64_t sub_1DA3EC6A0()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = v5[7];
  v7 = v5[6];
  v8 = v5[5];
  v9 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v10 = v9;
  *(v3 + 72) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA3EC830);
  }

  else
  {

    OUTLINED_FUNCTION_4_0();

    return v11();
  }
}

uint64_t sub_1DA3EC830()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_4_0();

  return v0();
}

uint64_t SiriSuggestionsIntelligence.FeatureLogger.logEngagement(for:with:invocationType:)()
{
  OUTLINED_FUNCTION_16();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[11] = sub_1DA421374();
  OUTLINED_FUNCTION_14_5();
  v1[12] = v5;
  v1[13] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6);
}

uint64_t sub_1DA3EC940()
{
  v1 = v0[10];
  if (*(v1 + 72) != 1)
  {
    OUTLINED_FUNCTION_22_3(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF740, qword_1DA427C40);
    sub_1DA421974();
    OUTLINED_FUNCTION_3_1();
    v5 = OUTLINED_FUNCTION_18_6();
    v0[15] = v5;
    v6 = OUTLINED_FUNCTION_21_4(v5, xmmword_1DA4238F0);
    v7(v6);
    OUTLINED_FUNCTION_14_5();
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_4_14(v8);
    OUTLINED_FUNCTION_30_2();

    __asm { BRAA            X3, X16 }
  }

  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1DA3ECB40;
  OUTLINED_FUNCTION_13_5(v0[7]);
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x1EEE40378](v3);
}

uint64_t sub_1DA3ECB40()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_17_5();

    return MEMORY[0x1EEE6DFA0](v9);
  }
}

void sub_1DA3ECC70()
{
  OUTLINED_FUNCTION_22_3(v0[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF740, qword_1DA427C40);
  sub_1DA421974();
  OUTLINED_FUNCTION_3_1();
  v1 = OUTLINED_FUNCTION_18_6();
  v0[15] = v1;
  v2 = OUTLINED_FUNCTION_21_4(v1, xmmword_1DA4238F0);
  v3(v2);
  OUTLINED_FUNCTION_14_5();
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_4_14(v4);
  OUTLINED_FUNCTION_30_2();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1DA3ECDEC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;
  *(v6 + 136) = v5;

  v7 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1DA3ECEF0()
{
  OUTLINED_FUNCTION_20_0();
  sub_1DA421604();
  sub_1DA4215E4();
  OUTLINED_FUNCTION_27_1();
  sub_1DA421574();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_1DA3ECFD0;
  v2 = OUTLINED_FUNCTION_13_5(v0[17]);

  return sub_1DA3EBFAC(v2, v3);
}

uint64_t sub_1DA3ECFD0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  *(v6 + 152) = v0;

  if (v0)
  {
    v7 = sub_1DA3ED164;
  }

  else
  {
    v7 = sub_1DA3ED0EC;
  }

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1DA3ED0EC()
{
  OUTLINED_FUNCTION_16();
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_4_0();

  return v1();
}

uint64_t sub_1DA3ED164()
{
  OUTLINED_FUNCTION_16();
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_4_0();

  return v1();
}

uint64_t sub_1DA3ED1D8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a1;
  v83 = a3;
  v4 = sub_1DA421A94();
  v79 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v78 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1DA421204();
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v75 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA4211F4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74[2] = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA421374();
  v81 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v74[0] = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v74 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF758, "Ɗ");
  MEMORY[0x1EEE9AC00](v14 - 8);
  v86 = v74 - v15;
  v16 = sub_1DA4212E4();
  v87 = *(v16 - 8);
  v88 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v84 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DA4212A4();
  v19 = *(v18 - 8);
  v90 = v18;
  v91 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v98 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF760, "Ɗ");
  v21 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v23 = (v74 - v22);
  v24 = sub_1DA421294();
  v95 = *(v24 - 8);
  v96 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v89 = v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v74 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v97 = v74 - v30;
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v80 = v4;
  v31 = __swift_project_value_buffer(v4, static Logger.extractionCategory);

  v74[1] = v31;
  v32 = sub_1DA421A74();
  v33 = sub_1DA421F54();

  v34 = os_log_type_enabled(v32, v33);
  v85 = v13;
  v82 = v9;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v99[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1DA3A5FE8(v100, a2, v99);
    _os_log_impl(&dword_1DA39E000, v32, v33, "fetching existing interaction of id: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x1DA74E430](v36, -1, -1);
    v37 = v35;
    v38 = v100;
    MEMORY[0x1DA74E430](v37, -1, -1);
  }

  else
  {

    v38 = v100;
  }

  sub_1DA421284();
  *v23 = v38;
  v23[1] = a2;
  v39 = v92;
  (*(v21 + 104))(v23, *MEMORY[0x1E69D29B0], v92);

  v40 = v97;
  sub_1DA421244();
  (*(v21 + 8))(v23, v39);
  v41 = v96;
  v43 = v95 + 8;
  v42 = *(v95 + 8);
  v42(v29, v96);
  v44 = sub_1DA421544();
  v45 = v94;
  v44();
  if (v45)
  {
    v42(v40, v41);
  }

  else
  {

    v47 = v89;
    sub_1DA421214();
    v48 = sub_1DA421224();
    v94 = v42;
    v42(v47, v41);
    v49 = v86;
    sub_1DA3EA4F0(v48, v86);

    v50 = v88;
    if (__swift_getEnumTagSinglePayload(v49, 1, v88) == 1)
    {
      sub_1DA3A6A2C(v49, &qword_1ECBAF758, "Ɗ");
      v51 = v78;
      sub_1DA4219A4();

      v52 = sub_1DA421A74();
      v53 = sub_1DA421F74();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v99[0] = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_1DA3A5FE8(v100, a2, v99);
        _os_log_impl(&dword_1DA39E000, v52, v53, "Unknown interaction for id: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x1DA74E430](v55, -1, -1);
        v56 = v54;
        v41 = v96;
        MEMORY[0x1DA74E430](v56, -1, -1);
      }

      (*(v79 + 8))(v51, v80);
      sub_1DA3EE944();
      swift_allocError();
      *v57 = 0;
      swift_willThrow();
      (*(v91 + 8))(v98, v90);
      return (v94)(v97, v41);
    }

    else
    {
      v58 = v84;
      (*(v87 + 32))(v84, v49, v50);
      sub_1DA4212D4();
      sub_1DA4212B4();
      v59 = v85;
      sub_1DA421324();
      (*(v76 + 104))(v75, *MEMORY[0x1E69D2A30], v77);
      sub_1DA421354();
      v60 = v50;
      v61 = sub_1DA421A74();
      v62 = sub_1DA421F54();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v93 = v63;
        v100 = swift_slowAlloc();
        v99[0] = v100;
        *v63 = 136315138;
        swift_beginAccess();
        v64 = v81;
        v65 = v82;
        (*(v81 + 16))(v74[0], v59, v82);
        v66 = sub_1DA421BB4();
        v95 = v43;
        v68 = sub_1DA3A5FE8(v66, v67, v99);
        v69 = v91;
        v70 = v87;
        LOBYTE(v63) = v62;
        v71 = v68;

        v72 = v93;
        *(v93 + 1) = v71;
        _os_log_impl(&dword_1DA39E000, v61, v63, "got existing interaction: %s", v72, 0xCu);
        v73 = v100;
        __swift_destroy_boxed_opaque_existential_0(v100);
        MEMORY[0x1DA74E430](v73, -1, -1);
        MEMORY[0x1DA74E430](v72, -1, -1);

        (*(v70 + 8))(v84, v88);
        (*(v69 + 8))(v98, v90);
        v59 = v85;
        v94(v97, v96);
      }

      else
      {

        (*(v87 + 8))(v58, v60);
        (*(v91 + 8))(v98, v90);
        v94(v97, v41);
        v65 = v82;
        v64 = v81;
      }

      swift_beginAccess();
      (*(v64 + 16))(v83, v59, v65);
      return (*(v64 + 8))(v59, v65);
    }
  }
}

uint64_t sub_1DA3EDDC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9[-v4];
  result = sub_1DA3EDED8(a1, &v9[-v4]);
  if (!v1)
  {
    v7 = sub_1DA4213B4();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v7);
    v8 = sub_1DA4211B4();
    sub_1DA3F82C0(v5, 0xD000000000000019, 0x80000001DA42C860);
    return v8(v9, 0);
  }

  return result;
}

uint64_t sub_1DA3EDED8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v20[1] = *MEMORY[0x1E69E9840];
  sub_1DA420F94();
  swift_allocObject();
  sub_1DA420F84();
  sub_1DA420F64();
  v20[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  sub_1DA3EE878(&qword_1EE100090, &qword_1EE100810, &protocol conformance descriptor for SiriSuggestionsIntelligence.SourcedFeature, MEMORY[0x1E69E6300]);
  v5 = sub_1DA420F74();
  if (v2)
  {
  }

  v8 = v5;
  v9 = v6;
  v10 = sub_1DA420FF4();
  v20[0] = 0;
  v11 = [v10 compressedDataUsingAlgorithm:0 error:v20];

  if (!v11)
  {
    v19 = v20[0];
    sub_1DA420FB4();

    swift_willThrow();
    sub_1DA3B5D30(v8, v9);
  }

  v12 = v20[0];
  v13 = [v11 base64EncodedStringWithOptions_];
  v14 = sub_1DA421B94();
  v16 = v15;
  sub_1DA3B5D30(v8, v9);

  *a2 = v14;
  a2[1] = v16;
  v17 = *MEMORY[0x1E69D2AE8];
  v18 = sub_1DA4213B4();
  return (*(*(v18 - 8) + 104))(a2, v17, v18);
}

void *SiriSuggestionsIntelligence.FeatureLogger.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  sub_1DA3EE568(v0[8], v0[9], v0[10], v0[11]);
  return v0;
}

uint64_t SiriSuggestionsIntelligence.FeatureLogger.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.FeatureLogger.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1DA3EE170()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3A8D08;

  return SiriSuggestionsIntelligence.FeatureLogger.log(from:deliveryVehicle:generationId:)();
}

uint64_t sub_1DA3EE220()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3A8004;

  return SiriSuggestionsIntelligence.FeatureLogger.logEngagement(for:with:invocationType:)();
}

uint64_t SiriSuggestionsIntelligence.Errors.hashValue.getter(unsigned __int8 a1)
{
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](a1);
  return sub_1DA422474();
}

uint64_t sub_1DA3EE36C(uint64_t a1)
{
  v2 = *v1;
  sub_1DA422434();
  SiriSuggestionsIntelligence.Errors.hash(into:)(v4, v2);
  return sub_1DA422474();
}

id sub_1DA3EE3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1DA421B64();

  v6 = [v4 initWithBase64EncodedString:v5 options:a3];

  return v6;
}

unint64_t sub_1DA3EE47C()
{
  result = qword_1ECBAF720;
  if (!qword_1ECBAF720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAF720);
  }

  return result;
}

uint64_t sub_1DA3EE4C0()
{
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DA3A8004;

  return sub_1DA3EB9D8(v3, v5, v4);
}

void sub_1DA3EE568(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
  }
}

unint64_t sub_1DA3EE5B4()
{
  result = qword_1ECBAF748;
  if (!qword_1ECBAF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF748);
  }

  return result;
}

_BYTE *_s6ErrorsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27SiriSuggestionsIntelligenceAAO13LoggingPolicyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA3EE72C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA3EE780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1DA3EE7E0(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1DA3EE814()
{
  result = qword_1EE100088;
  if (!qword_1EE100088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAED00, &qword_1DA423CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100088);
  }

  return result;
}

uint64_t sub_1DA3EE878(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAED00, &qword_1DA423CD0);
    sub_1DA3EE900(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA3EE900(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA3EE944()
{
  result = qword_1ECBAF768;
  if (!qword_1ECBAF768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF768);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_25_2()
{
  v1[7] = v5;
  v1[8] = v4;
  v1[9] = v3;
  v1[10] = v2;
  v1[11] = v0;
  return v1;
}

uint64_t SiriSuggestionsIntelligence.AppTransitionStateMachine.__allocating_init(clock:)(void *a1)
{
  v2 = type metadata accessor for SiriSuggestionsIntelligence.DefaultTimePartitionExtractor();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DA3B6FC8;
  *(v3 + 24) = 0;
  sub_1DA3A7ED4(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 40) = v2;
  *(v4 + 48) = &protocol witness table for SiriSuggestionsIntelligence.DefaultTimePartitionExtractor;
  *(v4 + 16) = v3;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = xmmword_1DA427DD0;
  sub_1DA3A1FF8(v6, v4 + 56);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_1DA3EEC20(void *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a3(v11, a2, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v13;
}

Swift::Double __swiftcall SiriSuggestionsIntelligence.AppTransitionStateMachine.getStartDate()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v0 + 7, v1, v2);
  return result;
}

uint64_t SiriSuggestionsIntelligence.AppTransitionStateMachine.transition(nextState:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v10 = v4[14];
  if (*(v4 + 112) != 0xFF)
  {
    if (*(v4 + 15) <= a4)
    {
      v5 = v4[15];
      v17 = v4[12];
      v16 = v4[13];
      if (!v4[14])
      {
        if (a3)
        {
          if (a3 != 1 && !(a1 ^ 1 | a2))
          {
            goto LABEL_3;
          }
        }

        else
        {
          v32 = v17 == a1 && v16 == a2;
          if (v32 || (sub_1DA4223A4() & 1) != 0)
          {
            goto LABEL_3;
          }
        }

        v22 = OUTLINED_FUNCTION_1_14();
        sub_1DA3EF9CC(v22, v23, 0);
        v24 = OUTLINED_FUNCTION_0_16();
        v5 = sub_1DA3EF018(v25, v26, v24, a4);
        v27 = OUTLINED_FUNCTION_1_14();
        sub_1DA3D3BF8(v27, v28, v10);
        v29 = v4[12];
        v30 = v4[13];
        v31 = v4[14];
        v4[12] = 0;
        v4[13] = 0;
        *(v4 + 7) = xmmword_1DA427DD0;
        sub_1DA3D3BF8(v29, v30, v31);
        goto LABEL_4;
      }

      sub_1DA3EF964();
      swift_allocError();
      *v18 = v17;
      *(v18 + 8) = v16;
      *(v18 + 16) = v10;
      v19 = OUTLINED_FUNCTION_1_14();
      sub_1DA3EF9B8(v19, v20, v10);
LABEL_15:
      swift_willThrow();
      return v5;
    }

LABEL_8:
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v11 = sub_1DA421A94();
    __swift_project_value_buffer(v11, static Logger.extractionCategory);
    v12 = sub_1DA421A74();
    v13 = sub_1DA421F74();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DA39E000, v12, v13, "AppTransitionStateMachine:: ERROR!!!! events are not in ascending order!!!", v14, 2u);
      MEMORY[0x1DA74E430](v14, -1, -1);
    }

    sub_1DA3EF964();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = -1;
    goto LABEL_15;
  }

  if (a4 < 0.0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = 0;
LABEL_4:
  if (*(v4 + 112) == 0xFF && !a3)
  {
    v4[12] = a1;
    v4[13] = a2;
    v4[14] = 0;
    *(v4 + 15) = a4;
  }

  return v5;
}

uint64_t sub_1DA3EF018(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = v4[5];
  v8 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v7);
  v9 = (*(v8 + 8))(v4 + 7, v7, v8, a3);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1DA3B02D0(0, v10, 0);
    v12 = v42;
    v13 = (v9 + 64);
    do
    {
      v14 = *(v13 - 4);
      v15 = *(v13 - 3);
      v16 = *(v13 - 16);
      v17 = *(v13 - 1);
      v18 = *v13;
      v20 = *(v42 + 16);
      v19 = *(v42 + 24);

      if (v20 >= v19 >> 1)
      {
        sub_1DA3B02D0((v19 > 1), v20 + 1, 1);
      }

      v13 += 5;
      *(v42 + 16) = v20 + 1;
      v21 = v42 + 56 * v20;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      *(v21 + 48) = v14;
      *(v21 + 56) = v15;
      *(v21 + 64) = v16;
      *(v21 + 72) = v17;
      *(v21 + 80) = v18;
      --v10;
    }

    while (v10);

    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v12 + 16);
  if (v22)
  {
    sub_1DA3B02B0(0, v22, 0);
    v23 = v11;
    v24 = a4 - a3;
    v39 = v22 - 1;
    v25 = (v12 + 80);
    v26 = a2;
    while (1)
    {
      v27 = *(v25 - 6);
      v28 = *(v25 - 5);
      v29 = *(v25 - 4);
      v30 = *(v25 - 3);
      v31 = *(v25 - 16);
      v32 = *v25;
      v38 = *(v25 - 1);
      v33 = *(v23 + 16);
      v34 = *(v23 + 24);

      if (v33 >= v34 >> 1)
      {
        sub_1DA3B02B0(v34 > 1, v33 + 1, 1);
      }

      *(v23 + 16) = v33 + 1;
      v35 = v23 + 88 * v33;
      *(v35 + 32) = v27;
      *(v35 + 40) = v28;
      *(v35 + 48) = v29;
      *(v35 + 56) = v30;
      *(v35 + 64) = v31;
      *(v35 + 65) = *v41;
      *(v35 + 68) = *&v41[3];
      *(v35 + 72) = v38;
      *(v35 + 80) = v32;
      *(v35 + 88) = a1;
      *(v35 + 96) = v26;
      *(v35 + 104) = 1;
      *(v35 + 112) = v24;
      if (!v39)
      {
        break;
      }

      v25 += 7;
      --v39;
    }
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  return sub_1DA3D59A8(v23);
}

void *SiriSuggestionsIntelligence.AppTransitionStateMachine.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_1DA3D3BF8(v0[12], v0[13], v0[14]);
  return v0;
}

uint64_t SiriSuggestionsIntelligence.AppTransitionStateMachine.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.AppTransitionStateMachine.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t SiriSuggestionsIntelligence.AppFocusState.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a3;
  sub_1DA422094();
  MEMORY[0x1DA74D370](0x203A65707974, 0xE600000000000000);
  v7 = SiriSuggestionsIntelligence.StateType.description.getter(a1, a2, v4);
  MEMORY[0x1DA74D370](v7);

  MEMORY[0x1DA74D370](0x7453656D6974202CLL, 0xED0000203A706D61);
  sub_1DA421E94();
  return 0;
}

uint64_t SiriSuggestionsIntelligence.StateType.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v3 = 0x286E65704F707061;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = 0x65736F6C43707061;
LABEL_5:
    v6 = v3;
    MEMORY[0x1DA74D370](a1, a2);
    MEMORY[0x1DA74D370](41, 0xE100000000000000);
    return v6;
  }

  if (a1 ^ 1 | a2)
  {
    v5 = 0x736E617254646E65;
  }

  else
  {
    v5 = 0x6E556E6565726373;
  }

  if (a1 | a2)
  {
    return v5;
  }

  else
  {
    return 0x6F4C6E6565726373;
  }
}

uint64_t static SiriSuggestionsIntelligence.StateType.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (!(a1 | a2))
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a1 ^ 1 | a2)
    {
      if (a6 != 2 || a4 != 2)
      {
        return 0;
      }
    }

    else if (a6 != 2 || a4 != 1)
    {
      return 0;
    }

    if (!a5)
    {
      return 1;
    }
  }

  else if (!a6)
  {
LABEL_6:
    if (a1 != a4 || a2 != a5)
    {
      return sub_1DA4223A4();
    }

    return 1;
  }

  return 0;
}

uint64_t SiriSuggestionsIntelligence.StateType.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v4 = 3;
LABEL_5:
    MEMORY[0x1DA74DBB0](v4);

    return sub_1DA421BF4();
  }

  if (a2 | a3)
  {
    if (a2 ^ 1 | a3)
    {
      v6 = 4;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x1DA74DBB0](v6);
}

uint64_t SiriSuggestionsIntelligence.StateType.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1DA422434();
  SiriSuggestionsIntelligence.StateType.hash(into:)(v7, a1, a2, a3);
  return sub_1DA422474();
}

uint64_t sub_1DA3EF740(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1DA422434();
  SiriSuggestionsIntelligence.StateType.hash(into:)(v6, v2, v3, v4);
  return sub_1DA422474();
}

uint64_t sub_1DA3EF7B4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  v13 = sub_1DA3EF8D4(v11, a2, v12, a4, a5);
  (*(v9 + 8))(a1, a4);
  return v13;
}

uint64_t sub_1DA3EF8D4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a3 + 40) = a4;
  *(a3 + 48) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 16));
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = xmmword_1DA427DD0;
  sub_1DA3A1FF8(a2, a3 + 56);
  return a3;
}

unint64_t sub_1DA3EF964()
{
  result = qword_1ECBAF770;
  if (!qword_1ECBAF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF770);
  }

  return result;
}

double sub_1DA3EF9B8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1DA3EF9CC(result, a2, a3);
  }

  return v3;
}

double sub_1DA3EF9CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1DA3EF9E8()
{
  result = qword_1ECBAF778;
  if (!qword_1ECBAF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF778);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27SiriSuggestionsIntelligenceAAO9StateTypeO(uint64_t a1)
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

uint64_t sub_1DA3EFA7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 32))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA3EFABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27SiriSuggestionsIntelligenceAAO24StateMachinePrerequisiteO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DA3EFB34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
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

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA3EFB7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1DA3EFBC4(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

uint64_t sub_1DA3EFBF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA3EFC38(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DA3EFC7C(uint64_t result, unsigned int a2)
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

unint64_t sub_1DA3EFCD0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = &type metadata for SiriSuggestionsIntelligence.MotionActivity;
  *(a3 + 48) = sub_1DA3F163C();
  result = sub_1DA3F1690();
  *(a3 + 24) = a2;
  strcpy(a3, "motionActivity");
  *(a3 + 15) = -18;
  *(a3 + 16) = a1;
  *(a3 + 56) = result;
  *(a3 + 64) = 0;
  return result;
}

double sub_1DA3EFD48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[5] = &type metadata for SiriSuggestionsIntelligence.FocusMode;
  a5[6] = sub_1DA3F1594();
  a5[7] = sub_1DA3F15E8();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  *a5 = 0x646F4D7375636F66;
  a5[1] = 0xE900000000000065;
  a5[2] = v10;
  a5[8] = 0;

  return result;
}

_OWORD *sub_1DA3EFDF8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v11 = &type metadata for SiriSuggestionsIntelligence.CarPlayConnection;
  v12 = sub_1DA3F1540();
  v13 = sub_1DA3D99E8();
  *&v10 = a1;
  BYTE8(v10) = a2 & 1;
  if (a2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
  v8 = OUTLINED_FUNCTION_8_13(v7);
  *(v8 + 16) = xmmword_1DA4238F0;
  *(v8 + 32) = v6;
  *a3 = 0xD000000000000011;
  *(a3 + 8) = 0x80000001DA42C1F0;
  result = sub_1DA3B3334(&v10, (a3 + 16));
  *(a3 + 64) = v8;
  return result;
}

uint64_t SiriSuggestionsIntelligence.EnvironmentFeatureExtractor.extract(_:)()
{
  *(v1 + 496) = v0;
  v2 = OUTLINED_FUNCTION_15();
  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1DA3EFF0C()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  *(v0 + 504) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3EFFA4;

  return sub_1DA408B88(v0 + 376);
}

uint64_t sub_1DA3EFFA4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3F0088()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  *(v0 + 512) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_6_12(v1);

  return sub_1DA3CD2E0();
}

uint64_t sub_1DA3F0114()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_17();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 520) = v3;
  *(v1 + 632) = v4;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1DA3F0200()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  *(v0 + 528) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_6_12(v1);

  return sub_1DA41023C();
}

uint64_t sub_1DA3F028C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_17();
  *v2 = v1;
  *v2 = *v0;
  v1[67] = v3;
  v1[68] = v4;
  v1[69] = v5;
  v1[70] = v6;

  v7 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1DA3F0380()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  *(v0 + 568) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_6_12(v1);

  return sub_1DA3F1750();
}

uint64_t sub_1DA3F040C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_17();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 576) = v3;
  *(v1 + 633) = v4;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1DA3F04F8()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  *(v0 + 584) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_6_12(v1);

  return sub_1DA41DA3C();
}

uint64_t sub_1DA3F0584()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_17();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 592) = v3;
  *(v1 + 634) = v4;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5);
}

uint64_t sub_1DA3F0670()
{
  v1 = *(v0 + 496);
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  *(v0 + 635) = (*(v3 + 8))(v2, v3);
  v4 = v1[10];
  v5 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v4);
  v8 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  *(v0 + 600) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_6_12(v6);

  return v8(v4, v5);
}

uint64_t sub_1DA3F07D0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_17();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 636) = v3;

  v4 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1DA3F0B44()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_17();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;
  *(v6 + 624) = v5;

  v7 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1DA3F0C44()
{
  (*(*(v0 + 496) + 96))();
  if (*(v0 + 480))
  {
    sub_1DA3A1FF8((v0 + 456), v0 + 416);
    v1 = *(v0 + 440);
    v2 = *(v0 + 448);
    __swift_project_boxed_opaque_existential_1((v0 + 416), v1);
    v3 = (*(v2 + 56))(v1, v2);
    v4 = MEMORY[0x1E69E6370];
    *(v0 + 232) = v3 & 1;
    v5 = MEMORY[0x1E69E6390];
    *(v0 + 256) = v4;
    *(v0 + 264) = v5;
    v6 = MEMORY[0x1E69E6378];
    *(v0 + 272) = MEMORY[0x1E69E6378];
    if (v3)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
    v9 = OUTLINED_FUNCTION_8_13(v8);
    *(v9 + 16) = xmmword_1DA4238F0;
    *(v9 + 32) = v7;
    *(v0 + 16) = 0xD000000000000012;
    *(v0 + 24) = 0x80000001DA42C270;
    sub_1DA3B3334((v0 + 232), (v0 + 32));
    *(v0 + 80) = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v0 + 624);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DA3A5520();
      v11 = v27;
    }

    if (*(v11 + 16) >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_15();
      v11 = v28;
    }

    v12 = OUTLINED_FUNCTION_7_10();
    memcpy(v12, (v0 + 16), 0x48uLL);
    v13 = *(v0 + 440);
    v14 = *(v0 + 448);
    __swift_project_boxed_opaque_existential_1((v0 + 416), v13);
    v15 = (*(v14 + 48))(v13, v14);
    *(v0 + 304) = v4;
    *(v0 + 312) = v5;
    *(v0 + 320) = v6;
    *(v0 + 280) = v15 & 1;
    v16 = 0.0;
    if (v15)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.0;
    }

    v18 = OUTLINED_FUNCTION_8_13(v8);
    *(v18 + 16) = xmmword_1DA4238F0;
    *(v18 + 32) = v17;
    *(v0 + 88) = 0xD000000000000011;
    *(v0 + 96) = 0x80000001DA42C290;
    sub_1DA3B3334((v0 + 280), (v0 + 104));
    *(v0 + 152) = v18;
    if (*(v11 + 16) >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_15();
      v11 = v29;
    }

    v19 = OUTLINED_FUNCTION_7_10();
    memcpy(v19, (v0 + 88), 0x48uLL);
    v20 = *(v0 + 440);
    v21 = *(v0 + 448);
    __swift_project_boxed_opaque_existential_1((v0 + 416), v20);
    v22 = (*(v21 + 64))(v20, v21);
    *(v0 + 352) = v4;
    *(v0 + 360) = v5;
    *(v0 + 368) = v6;
    *(v0 + 328) = v22 & 1;
    if (v22)
    {
      v16 = 1.0;
    }

    v23 = OUTLINED_FUNCTION_8_13(v8);
    *(v23 + 16) = xmmword_1DA4238F0;
    *(v23 + 32) = v16;
    strcpy((v0 + 160), "inAirplayMode");
    *(v0 + 174) = -4864;
    sub_1DA3B3334((v0 + 328), (v0 + 176));
    *(v0 + 224) = v23;
    v24 = *(v11 + 16);
    if (v24 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_15();
      v11 = v30;
    }

    *(v11 + 16) = v24 + 1;
    memcpy((v11 + 72 * v24 + 32), (v0 + 160), 0x48uLL);
    __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  }

  else
  {
    sub_1DA3BA470(v0 + 456);
    v11 = *(v0 + 624);
  }

  v25 = *(v0 + 8);

  return v25(v11);
}

unint64_t sub_1DA3F0FBC()
{
  result = qword_1EE102AE0;
  if (!qword_1EE102AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102AE0);
  }

  return result;
}

void *SiriSuggestionsIntelligence.EnvironmentFeatureExtractor.deinit()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  return v0;
}

uint64_t SiriSuggestionsIntelligence.EnvironmentFeatureExtractor.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.EnvironmentFeatureExtractor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 192, 7);
}

uint64_t sub_1DA3F10A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3F1134;

  return SiriSuggestionsIntelligence.EnvironmentFeatureExtractor.extract(_:)();
}

uint64_t sub_1DA3F1134()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  v4 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

void *sub_1DA3F1248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = a7;
  v37 = a1;
  v46[3] = a8;
  v46[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(*(a8 - 8) + 16))(boxed_opaque_existential_1, a3, a8);
  v45[3] = a9;
  v45[4] = a11;
  v18 = __swift_allocate_boxed_opaque_existential_1(v45);
  (*(*(a9 - 8) + 16))(v18, a4, a9);
  type metadata accessor for SiriSuggestionsIntelligence.NowPlayingService();
  v35 = sub_1DA408D88(a5, a6);
  type metadata accessor for SiriSuggestionsIntelligence.MotionService();
  v19 = sub_1DA3CD4AC();
  type metadata accessor for SiriSuggestionsIntelligence.FocusModeService();
  v20 = sub_1DA410420();
  type metadata accessor for SiriSuggestionsIntelligence.CarPlayService();
  v21 = sub_1DA3F191C();
  type metadata accessor for SiriSuggestionsIntelligence.LocationService();
  v22 = sub_1DA41DD70();
  sub_1DA3A7ED4(v45, v44);
  v23 = _s19DefaultAudioServiceCMa();
  v24 = swift_allocObject();
  sub_1DA3A7ED4(v46, &v41);
  v25 = type metadata accessor for SiriSuggestionsIntelligence.DefaultScreenService();
  v26 = swift_allocObject();
  sub_1DA3A1FF8(&v41, v26 + 16);
  v42 = v23;
  v43 = &off_1F55E9E60;
  *&v41 = v24;
  v40 = &protocol witness table for SiriSuggestionsIntelligence.DefaultScreenService;
  v39 = v25;
  *&v38 = v26;
  v27 = swift_allocObject();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v41, v23);
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v34 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v30;
  v27[17] = v23;
  v27[18] = &off_1F55E9E60;
  v27[14] = v32;
  v27[2] = v35;
  v27[3] = v19;
  v27[4] = v20;
  v27[5] = v21;
  v27[6] = v22;
  sub_1DA3A1FF8(v44, (v27 + 7));
  v27[12] = v37;
  v27[13] = a2;
  sub_1DA3A1FF8(&v38, (v27 + 19));

  __swift_destroy_boxed_opaque_existential_0(&v41);
  __swift_destroy_boxed_opaque_existential_0(v46);
  __swift_destroy_boxed_opaque_existential_0(v45);
  return v27;
}

unint64_t sub_1DA3F1540()
{
  result = qword_1EE102228;
  if (!qword_1EE102228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102228);
  }

  return result;
}

unint64_t sub_1DA3F1594()
{
  result = qword_1EE101010;
  if (!qword_1EE101010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101010);
  }

  return result;
}

unint64_t sub_1DA3F15E8()
{
  result = qword_1EE101018;
  if (!qword_1EE101018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101018);
  }

  return result;
}

unint64_t sub_1DA3F163C()
{
  result = qword_1EE102670;
  if (!qword_1EE102670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102670);
  }

  return result;
}

unint64_t sub_1DA3F1690()
{
  result = qword_1EE102678;
  if (!qword_1EE102678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102678);
  }

  return result;
}

void OUTLINED_FUNCTION_3_15()
{

  sub_1DA3A5520();
}

uint64_t OUTLINED_FUNCTION_8_13(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1DA3F1770()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3F1818;

  return sub_1DA41D598();
}

uint64_t sub_1DA3F1818(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t sub_1DA3F191C()
{
  v0 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v1 = [v0 Connected];
  swift_unknownObjectRelease();
  v2 = swift_allocObject();
  sub_1DA3F19B4(v1);
  return v2;
}

uint64_t sub_1DA3F19B4(uint64_t a1)
{
  v2 = v1;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7C8, &qword_1DA4285E8);
  swift_allocObject();
  *(v2 + 16) = sub_1DA420960(a1, v5, sub_1DA3F1A40, 0);
  return v2;
}

uint64_t sub_1DA3F1A40@<X0>(id a1@<X1>, uint64_t result@<X0>, uint64_t a3@<X8>)
{
  if (a1 && (v4 = result, result = [a1 starting], (result & 1) != 0))
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  return result;
}

uint64_t SiriSuggestionsIntelligence.CarPlayService.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DA3F1AF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6E6F43746F6ELL && a2 == 0xEC00000064657463;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DA3F1BC4(char a1)
{
  if (a1)
  {
    return 0x657463656E6E6F63;
  }

  else
  {
    return 0x656E6E6F43746F6ELL;
  }
}

uint64_t sub_1DA3F1C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3F1AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3F1C38(uint64_t a1)
{
  v2 = sub_1DA3F20A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F1C74(uint64_t a1)
{
  v2 = sub_1DA3F20A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F1CB0(uint64_t a1)
{
  v2 = sub_1DA3F20FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F1CEC(uint64_t a1)
{
  v2 = sub_1DA3F20FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F1D28(uint64_t a1)
{
  v2 = sub_1DA3F2150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F1D64(uint64_t a1)
{
  v2 = sub_1DA3F2150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.CarPlayConnection.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

uint64_t SiriSuggestionsIntelligence.CarPlayConnection.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v27 = a3;
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF780, &qword_1DA428210);
  OUTLINED_FUNCTION_3_1();
  v25 = v5;
  v26 = v4;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF788, &qword_1DA428218);
  OUTLINED_FUNCTION_3_1();
  v10 = v9;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF790, &qword_1DA428220);
  OUTLINED_FUNCTION_3_1();
  v16 = v15;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F20A8();
  sub_1DA422494();
  if (v27)
  {
    v28 = 0;
    sub_1DA3F2150();
    sub_1DA4222D4();
    (*(v10 + 8))(v13, v23);
  }

  else
  {
    v29 = 1;
    sub_1DA3F20FC();
    sub_1DA4222D4();
    v21 = v26;
    sub_1DA422314();
    (*(v25 + 8))(v8, v21);
  }

  return (*(v16 + 8))(v19, v14);
}

unint64_t sub_1DA3F20A8()
{
  result = qword_1EE102270;
  if (!qword_1EE102270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102270);
  }

  return result;
}

unint64_t sub_1DA3F20FC()
{
  result = qword_1ECBAF798;
  if (!qword_1ECBAF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF798);
  }

  return result;
}

unint64_t sub_1DA3F2150()
{
  result = qword_1EE102248;
  if (!qword_1EE102248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102248);
  }

  return result;
}

void *SiriSuggestionsIntelligence.CarPlayConnection.init(from:)(void *a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7A0, &qword_1DA428228);
  OUTLINED_FUNCTION_3_1();
  v48 = v2;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7A8, &qword_1DA428230);
  OUTLINED_FUNCTION_3_1();
  v47 = v7;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7B0, &unk_1DA428238);
  OUTLINED_FUNCTION_3_1();
  v49 = v11;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v42 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F20A8();
  v16 = v51;
  sub_1DA422484();
  if (v16)
  {
    goto LABEL_8;
  }

  v44 = v6;
  v45 = v10;
  v51 = v5;
  v17 = v50;
  sub_1DA4222C4();
  result = sub_1DA3C2AA0();
  v46 = a1;
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v30 = sub_1DA4220F4();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620);
    *v32 = &type metadata for SiriSuggestionsIntelligence.CarPlayConnection;
    v15 = v14;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    v33 = OUTLINED_FUNCTION_3_5();
    v34(v33);
    a1 = v46;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v15;
  }

  if (v20 < (v21 >> 1))
  {
    v22 = *(v19 + v20);
    v23 = sub_1DA3C2A9C();
    v25 = v24;
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = v48;
    if (v25 == v27 >> 1)
    {
      v43 = v23;
      v42[3] = v22;
      if (v22)
      {
        v53 = 1;
        sub_1DA3F20FC();
        v29 = v51;
        OUTLINED_FUNCTION_4_4(&_s17CarPlayConnectionO19ConnectedCodingKeysON, &v53);
        sub_1DA422294();
        v39 = v38;
        swift_unknownObjectRelease();
        (*(v28 + 8))(v29, v17);
        v40 = OUTLINED_FUNCTION_3_5();
        v41(v40);
        v15 = v39;
      }

      else
      {
        v52 = 0;
        sub_1DA3F2150();
        v35 = v45;
        OUTLINED_FUNCTION_4_4(&_s17CarPlayConnectionO22NotConnectedCodingKeysON, &v52);
        swift_unknownObjectRelease();
        (*(v47 + 8))(v35, v44);
        v36 = OUTLINED_FUNCTION_3_5();
        v37(v36);
        v15 = 0;
      }

      __swift_destroy_boxed_opaque_existential_0(v46);
      return v15;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void *sub_1DA3F26D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = SiriSuggestionsIntelligence.CarPlayConnection.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

_BYTE *_s17CarPlayConnectionO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s17CarPlayConnectionO19ConnectedCodingKeysOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DA3F28F8()
{
  result = qword_1ECBAF7B8;
  if (!qword_1ECBAF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF7B8);
  }

  return result;
}

unint64_t sub_1DA3F2950()
{
  result = qword_1ECBAF7C0;
  if (!qword_1ECBAF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF7C0);
  }

  return result;
}

unint64_t sub_1DA3F29A8()
{
  result = qword_1EE102238;
  if (!qword_1EE102238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102238);
  }

  return result;
}

unint64_t sub_1DA3F2A00()
{
  result = qword_1EE102240;
  if (!qword_1EE102240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102240);
  }

  return result;
}

unint64_t sub_1DA3F2A58()
{
  result = qword_1EE102250;
  if (!qword_1EE102250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102250);
  }

  return result;
}

unint64_t sub_1DA3F2AB0()
{
  result = qword_1EE102258;
  if (!qword_1EE102258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102258);
  }

  return result;
}

unint64_t sub_1DA3F2B08()
{
  result = qword_1EE102260;
  if (!qword_1EE102260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102260);
  }

  return result;
}

unint64_t sub_1DA3F2B60()
{
  result = qword_1EE102268;
  if (!qword_1EE102268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102268);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor.__allocating_init(possibleOwners:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor.extract(_:)()
{
  OUTLINED_FUNCTION_16();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1DA4216E4();
  v1[14] = v3;
  OUTLINED_FUNCTION_5_2(v3);
  v1[15] = v4;
  v1[16] = OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE10, &qword_1DA424078);
  v1[17] = OUTLINED_FUNCTION_40();
  v5 = sub_1DA421714();
  v1[18] = v5;
  OUTLINED_FUNCTION_5_2(v5);
  v1[19] = v6;
  v1[20] = OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE08, &qword_1DA424070);
  v1[21] = OUTLINED_FUNCTION_40();
  v7 = sub_1DA421814();
  v1[22] = v7;
  OUTLINED_FUNCTION_5_2(v7);
  v1[23] = v8;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView(0);
  v1[27] = OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](sub_1DA3F2ECC);
}

uint64_t sub_1DA3F2ECC()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[13];
  sub_1DA3F36F0(v0[12], v0[27]);
  v0[28] = *(v1 + 16);
  sub_1DA4217D4();
  sub_1DA3F3964(&qword_1ECBAF7D0, MEMORY[0x1E69D3008], MEMORY[0x1E69D3010]);
  sub_1DA421DD4();

  return MEMORY[0x1EEE6DFA0](sub_1DA3F2F90);
}

uint64_t sub_1DA3F2F90()
{
  OUTLINED_FUNCTION_16();
  *(v0 + 232) = sub_1DA4217C4();

  return MEMORY[0x1EEE6DFA0](sub_1DA3F2FF8);
}

uint64_t sub_1DA3F2FF8()
{
  v72 = v0;
  v1 = v0[29];
  v2 = *(v1 + 16);
  if (v2)
  {
    *__src = MEMORY[0x1E69E7CC0];
    sub_1DA3B0160(0, v2, 0);
    v3 = *__src;
    v4 = v1 + 32;
    do
    {
      sub_1DA3A7ED4(v4, (v0 + 2));
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_1DA421774();
      v5 = v0[10];
      v6 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
      v7 = MEMORY[0x1DA74D0B0](v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_0(v0 + 7);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      *__src = v3;
      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        sub_1DA3B0160(v10 > 1, v11 + 1, 1);
        v3 = *__src;
      }

      v3[2] = v11 + 1;
      v12 = &v3[2 * v11];
      v12[4] = v7;
      v12[5] = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[21];
  v70 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DA4275F0;
  v17 = *v14;
  v18 = v14[1];
  v19 = MEMORY[0x1E69E6190];
  *(v16 + 72) = MEMORY[0x1E69E6158];
  *(v16 + 80) = v19;
  v20 = MEMORY[0x1E69E6160];
  *(v16 + 48) = v17;
  *(v16 + 56) = v18;
  strcpy((v16 + 32), "suggestionId");
  *(v16 + 45) = 0;
  *(v16 + 46) = -5120;
  *(v16 + 88) = v20;
  *(v16 + 96) = 0;
  v21 = v14[7];
  v22 = v14[8];
  __swift_project_boxed_opaque_existential_1(v14 + 4, v21);

  v23 = MEMORY[0x1DA74D0B0](v21, v22);
  static SiriSuggestionsIntelligence.createStringFeature(featureId:featureValue:possibleValues:)(2, v23, v24, v3, (v16 + 104));

  v25 = v14[12];
  v26 = v14[13];
  __swift_project_boxed_opaque_existential_1(v14 + 9, v25);
  v27 = MEMORY[0x1DA74D0B0](v25, v26);
  static SiriSuggestionsIntelligence.createStringFeature(featureId:featureValue:possibleValues:)(3, v27, v28, v3, (v16 + 176));

  sub_1DA3A88F8(v14 + *(v13 + 32), v15, &qword_1ECBAEE08, &qword_1DA424070);
  if (__swift_getEnumTagSinglePayload(v15, 1, v70) == 1)
  {
    sub_1DA3A8CA8(v0[21], &qword_1ECBAEE08, &qword_1DA424070);
    v29 = v16;
  }

  else
  {
    (*(v0[23] + 32))(v0[25], v0[21], v0[22]);
    v30 = sub_1DA421804();
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = v0[23];
      *__src = MEMORY[0x1E69E7CC0];
      sub_1DA3B0160(0, v31, 0);
      v33 = *__src;
      v34 = *(v32 + 16);
      v32 += 16;
      v35 = v30 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
      v68 = *(v32 + 56);
      v69 = v34;
      v36 = (v32 - 8);
      do
      {
        v37 = v0[24];
        v38 = v0[22];
        v69(v37, v35, v38);
        v39 = sub_1DA4217F4();
        v41 = v40;
        (*v36)(v37, v38);
        *__src = v33;
        v43 = v33[2];
        v42 = v33[3];
        if (v43 >= v42 >> 1)
        {
          sub_1DA3B0160(v42 > 1, v43 + 1, 1);
          v33 = *__src;
        }

        v33[2] = v43 + 1;
        v44 = &v33[2 * v43];
        v44[4] = v39;
        v44[5] = v41;
        v35 += v68;
        --v31;
      }

      while (v31);
    }

    else
    {

      v33 = MEMORY[0x1E69E7CC0];
    }

    v45 = v0[25];
    v47 = v0[22];
    v46 = v0[23];
    v48 = sub_1DA4217F4();
    static SiriSuggestionsIntelligence.createStringFeature(featureId:featureValue:possibleValues:)(1, v48, v49, v33, __src);

    sub_1DA3A5520();
    v29 = v50;
    (*(v46 + 8))(v45, v47);
    v29[2] = 4;
    memcpy(v29 + 31, __src, 0x48uLL);
  }

  v52 = v0[17];
  v51 = v0[18];
  sub_1DA3A88F8(v0[27] + *(v0[26] + 36), v52, &qword_1ECBAEE10, &qword_1DA424078);
  if (__swift_getEnumTagSinglePayload(v52, 1, v51) == 1)
  {
    v53 = v0[17];
    sub_1DA3B2CA4(v0[27]);
    sub_1DA3A8CA8(v53, &qword_1ECBAEE10, &qword_1DA424078);
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
    v54 = sub_1DA4216F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1DA4238F0;
    *(v55 + 32) = v54;
    v56 = v29[2];
    if (v56 >= v29[3] >> 1)
    {
      sub_1DA3A5520();
      v29 = v66;
    }

    v58 = v0[15];
    v57 = v0[16];
    v59 = v0[14];
    v29[2] = v56 + 1;
    v60 = &v29[9 * v56];
    v60[4] = 0x6E6F697469736F70;
    v60[5] = 0xE800000000000000;
    v60[6] = v54;
    *(v60 + 7) = *__src;
    v61 = MEMORY[0x1E69E6560];
    v60[9] = MEMORY[0x1E69E6530];
    v60[10] = v61;
    v60[11] = MEMORY[0x1E69E6538];
    v60[12] = v55;
    sub_1DA421704();
    sub_1DA3F2BB4(__src, 7, v57);
    (*(v58 + 8))(v57, v59);
    v62 = v29[2];
    if (v62 >= v29[3] >> 1)
    {
      sub_1DA3A5520();
      v29 = v67;
    }

    v63 = v0[27];
    (*(v0[19] + 8))(v0[20], v0[18]);
    v29[2] = v62 + 1;
    memcpy(&v29[9 * v62 + 4], __src, 0x48uLL);
    sub_1DA3B2CA4(v63);
  }

  v64 = v0[1];

  return v64(v29);
}

uint64_t sub_1DA3F36F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DA3F37AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3F3844;

  return SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor.extract(_:)();
}

uint64_t sub_1DA3F3844()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v7 = *v1;

  v5 = *(v7 + 8);
  if (!v0)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t sub_1DA3F3964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA3F39AC()
{
  type metadata accessor for SiriSuggestionsIntelligence.NoopAccountService();
  result = swift_initStaticObject();
  static SiriSuggestionsIntelligence.noopAccountService = result;
  return result;
}

uint64_t *SiriSuggestionsIntelligence.noopAccountService.unsafeMutableAddressor()
{
  if (qword_1EE102098 != -1)
  {
    swift_once();
  }

  return &static SiriSuggestionsIntelligence.noopAccountService;
}

uint64_t static SiriSuggestionsIntelligence.noopAccountService.getter()
{
  type metadata accessor for SiriSuggestionsIntelligence.NoopAccountService();

  return swift_initStaticObject();
}

uint64_t sub_1DA3F3A9C()
{
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA421A94();
  __swift_project_value_buffer(v1, static Logger.extractionCategory);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA39E000, v2, v3, "Account service not enabled", v4, 2u);
    MEMORY[0x1DA74E430](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0) + 20);
  v7 = sub_1DA4210B4();
  __swift_storeEnumTagSinglePayload(v5 + v6, 1, 1, v7);
  *v5 = MEMORY[0x1E69E7CC0];
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DA3F3C04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3CC038;

  return SiriSuggestionsIntelligence.NoopAccountService.getAccountDetails()(a1);
}

uint64_t SiriSuggestionsIntelligence.TimePartition.featureName.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v3[0] = 0;
    v3[1] = 0xE000000000000000;
    MEMORY[0x1DA74D370](14963, 0xE200000000000000);
    sub_1DA421E94();
    MEMORY[0x1DA74D370](3826988, 0xE300000000000000);
    sub_1DA421E94();
    MEMORY[0x1DA74D370](3829548, 0xE300000000000000);
    v4 = *(v0 + 16);
    sub_1DA422194();
    v1 = 0;
  }

  sub_1DA3F3DAC(v0, v3);
  return v1;
}

uint64_t sub_1DA3F3DE4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DA3F7198();
  v6 = sub_1DA421AE4();
  if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_])
  {
    swift_isUniquelyReferenced_nonNull_native();
    v7 = OUTLINED_FUNCTION_10_8();
    sub_1DA3E29CC(v7, v8, 0xE900000000000065, v9);
  }

  else
  {
    v10 = sub_1DA3B76EC(0x6D69546C61746F74, 0xE900000000000065);
    if (v11)
    {
      v12 = v10;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF5D0, &unk_1DA427550);
      sub_1DA4221A4();

      v13 = *(*(v6 + 56) + 8 * v12);
      sub_1DA4221C4();
    }
  }

  v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  if (v14)
  {
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA3E29CC(v15, 0x65704F73656D6974, 0xEB0000000064656ELL, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_10_8();
    v19 = sub_1DA3B76EC(v17, v18);
    if (v20)
    {
      v21 = v19;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF5D0, &unk_1DA427550);
      sub_1DA4221A4();

      v22 = *(*(v6 + 56) + 8 * v21);
      sub_1DA4221C4();
    }
  }

  return v6;
}

uint64_t sub_1DA3F404C(uint64_t a1, _DWORD *a2)
{
  if (qword_1EE101B90 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v4 = qword_1EE101B98;

    v5 = sub_1DA3F61A8(v4, a1, a2);
    a2 = v5;
    v6 = v5[2];
    if (!v6)
    {
      break;
    }

    v36 = v5[2];
    v37 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0360(0, v6, 0);
    a1 = v37;
    v7 = sub_1DA3E4130();
    v9 = v8;
    v10 = v36;
    v11 = 0;
    v12 = (a2 + 16);
    v13 = 1;
    v14 = -2;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < v13 << *(a2 + 32))
      {
        v15 = v7 >> 6;
        v16 = v13 << v7;
        if ((*&v12[8 * (v7 >> 6)] & (v13 << v7)) == 0)
        {
          goto LABEL_29;
        }

        if (a2[9] != v9)
        {
          goto LABEL_30;
        }

        v17 = *(*(a2 + 6) + v7);
        v19 = *(v37 + 16);
        v18 = *(v37 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1DA3B0360(v18 > 1, v19 + 1, 1);
          OUTLINED_FUNCTION_7_11();
        }

        *(v37 + 16) = v19 + 1;
        *(v37 + v19 + 32) = v17;
        v20 = v13 << *(a2 + 32);
        if (v7 >= v20)
        {
          goto LABEL_31;
        }

        v21 = *&v12[8 * v15];
        if ((v21 & v16) == 0)
        {
          goto LABEL_32;
        }

        if (a2[9] != v9)
        {
          goto LABEL_33;
        }

        v22 = v21 & (v14 << (v7 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v15 << 6;
          v24 = v15 + 1;
          v25 = &a2[2 * v15 + 18];
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              v28 = OUTLINED_FUNCTION_10_8();
              sub_1DA3A2020(v28, v29, v30);
              OUTLINED_FUNCTION_7_11();
              v20 = __clz(__rbit64(v26)) + v23;
              goto LABEL_19;
            }
          }

          v31 = OUTLINED_FUNCTION_10_8();
          sub_1DA3A2020(v31, v32, v33);
          OUTLINED_FUNCTION_7_11();
        }

LABEL_19:
        if (++v11 == v10)
        {

          goto LABEL_24;
        }

        v9 = a2[9];
        v7 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_24:
  if (*(a1 + 16))
  {
    v34 = *(a1 + 32);
  }

  else
  {
    v34 = 5;
  }

  return v34;
}

uint64_t static SiriSuggestionsIntelligence.AggregationPartition.__derived_struct_equals(_:_:)(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v4 || (v5 = sub_1DA4223A4(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
    if (!v7 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0)
    {
      return 0;
    }

    v8 = *(a1 + 6);
    v9 = *(a2 + 48);
    if (v8)
    {
      if (v9)
      {
        v10 = *(a1 + 5) == *(a2 + 40) && v8 == v9;
        if (v10 || (sub_1DA4223A4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v9)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t static SiriSuggestionsIntelligence.TimePartition.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *(a1 + 24) == *(a2 + 24) && v3 == v4;
    if (!v5 && (sub_1DA4223A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  return 1;
}

uint64_t SiriSuggestionsIntelligence.AggregationPartition.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_11_7(a1);
  sub_1DA421BF4();
  SiriSuggestionsIntelligence.TimePartition.hash(into:)(v2);
  return sub_1DA422474();
}

uint64_t sub_1DA3F44B8(uint64_t a1)
{
  sub_1DA422434();
  SiriSuggestionsIntelligence.AggregationPartition.hash(into:)(v2);
  return sub_1DA422474();
}

uint64_t SiriSuggestionsIntelligence.Origin.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_11_7(a1);
  MEMORY[0x1DA74DBB0](v1 & 1);
  return sub_1DA422474();
}

uint64_t sub_1DA3F458C(uint64_t a1)
{
  v2 = *v1;
  sub_1DA422434();
  SiriSuggestionsIntelligence.Origin.hash(into:)(v4, v2);
  return sub_1DA422474();
}

uint64_t SiriSuggestionsIntelligence.TimePartition.label.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SiriSuggestionsIntelligence.TimePartition.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1DA74DBD0](*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1DA74DBD0](*&v3);
  MEMORY[0x1DA74DBB0](*(v1 + 16));
  if (!*(v1 + 32))
  {
    return sub_1DA422454();
  }

  sub_1DA422454();

  return sub_1DA421BF4();
}

uint64_t SiriSuggestionsIntelligence.TimePartition.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_11_7(a1);
  SiriSuggestionsIntelligence.TimePartition.hash(into:)(v2);
  return sub_1DA422474();
}

uint64_t sub_1DA3F470C(uint64_t a1)
{
  sub_1DA422434();
  SiriSuggestionsIntelligence.TimePartition.hash(into:)(v2);
  return sub_1DA422474();
}

uint64_t sub_1DA3F474C()
{
  sub_1DA3F71DC();
  result = sub_1DA421AE4();
  qword_1EE101B98 = result;
  return result;
}

uint64_t sub_1DA3F478C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E694D357473616CLL && a2 == 0xEC00000073657475;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72756F487473616CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7961447473616CLL && a2 == 0xE700000000000000;
      if (v7 || (sub_1DA4223A4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6B6565577473616CLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1DA4223A4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DA4223A4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DA3F4930(char a1)
{
  result = 0x6E694D357473616CLL;
  switch(a1)
  {
    case 1:
      result = 0x72756F487473616CLL;
      break;
    case 2:
      result = 0x7961447473616CLL;
      break;
    case 3:
      result = 0x6B6565577473616CLL;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA3F49DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3F478C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3F4A04(uint64_t a1)
{
  v2 = sub_1DA3F5134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F4A40(uint64_t a1)
{
  v2 = sub_1DA3F5134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F4A7C(uint64_t a1)
{
  v2 = sub_1DA3F52D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F4AB8(uint64_t a1)
{
  v2 = sub_1DA3F52D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F4AF4(uint64_t a1)
{
  v2 = sub_1DA3F5230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F4B30(uint64_t a1)
{
  v2 = sub_1DA3F5230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F4B6C(uint64_t a1)
{
  v2 = sub_1DA3F5284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F4BA8(uint64_t a1)
{
  v2 = sub_1DA3F5284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F4BE4(uint64_t a1)
{
  v2 = sub_1DA3F51DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F4C20(uint64_t a1)
{
  v2 = sub_1DA3F51DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F4C5C(uint64_t a1)
{
  v2 = sub_1DA3F5188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F4C98(uint64_t a1)
{
  v2 = sub_1DA3F5188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.RelativeTimePartition.encode(to:)(void *a1, uint64_t a2)
{
  v59 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7E0, &qword_1DA4286F0);
  OUTLINED_FUNCTION_3_1();
  v57 = v4;
  v58 = v3;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_5();
  v56 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7E8, &qword_1DA4286F8);
  OUTLINED_FUNCTION_3_1();
  v54 = v8;
  v55 = v7;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_5();
  v53 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7F0, &qword_1DA428700);
  OUTLINED_FUNCTION_3_1();
  v51 = v12;
  v52 = v11;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_5();
  v50 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7F8, &qword_1DA428708);
  OUTLINED_FUNCTION_3_1();
  v48 = v16;
  v49 = v15;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF800, &qword_1DA428710);
  OUTLINED_FUNCTION_3_1();
  v47 = v21;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v47 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF808, &qword_1DA428718);
  OUTLINED_FUNCTION_3_1();
  v27 = v26;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v47 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F5134();
  sub_1DA422494();
  switch(v59)
  {
    case 1:
      v60[1] = 1;
      sub_1DA3F5284();
      sub_1DA4222D4();
      (*(v48 + 8))(v19, v49);
      return (*(v27 + 8))(v30, v25);
    case 2:
      v61 = 2;
      v40 = sub_1DA3F5230();
      v35 = v50;
      OUTLINED_FUNCTION_2_16(&_s21RelativeTimePartitionO17LastDayCodingKeysON, &v61, v41, v42, v40);
      v39 = v51;
      v38 = v52;
      goto LABEL_6;
    case 3:
      v62 = 3;
      v43 = sub_1DA3F51DC();
      v35 = v53;
      OUTLINED_FUNCTION_2_16(&_s21RelativeTimePartitionO18LastWeekCodingKeysON, &v62, v44, v45, v43);
      v39 = v54;
      v38 = v55;
      goto LABEL_6;
    case 4:
      v63 = 4;
      v34 = sub_1DA3F5188();
      v35 = v56;
      OUTLINED_FUNCTION_2_16(&_s21RelativeTimePartitionO17UnknownCodingKeysON, &v63, v36, v37, v34);
      v39 = v57;
      v38 = v58;
LABEL_6:
      (*(v39 + 8))(v35, v38);
      break;
    default:
      v60[0] = 0;
      v31 = sub_1DA3F52D8();
      OUTLINED_FUNCTION_2_16(&_s21RelativeTimePartitionO22Last5MinutesCodingKeysON, v60, v32, v33, v31);
      (*(v47 + 8))(v24, v20);
      break;
  }

  return (*(v27 + 8))(v30, v25);
}

unint64_t sub_1DA3F5134()
{
  result = qword_1ECBAF810;
  if (!qword_1ECBAF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF810);
  }

  return result;
}

unint64_t sub_1DA3F5188()
{
  result = qword_1ECBAF818;
  if (!qword_1ECBAF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF818);
  }

  return result;
}

unint64_t sub_1DA3F51DC()
{
  result = qword_1ECBAF820;
  if (!qword_1ECBAF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF820);
  }

  return result;
}

unint64_t sub_1DA3F5230()
{
  result = qword_1ECBAF828;
  if (!qword_1ECBAF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF828);
  }

  return result;
}

unint64_t sub_1DA3F5284()
{
  result = qword_1ECBAF830;
  if (!qword_1ECBAF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF830);
  }

  return result;
}

unint64_t sub_1DA3F52D8()
{
  result = qword_1ECBAF838;
  if (!qword_1ECBAF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF838);
  }

  return result;
}

char *SiriSuggestionsIntelligence.RelativeTimePartition.init(from:)(void *a1)
{
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF840, &qword_1DA428720);
  OUTLINED_FUNCTION_3_1();
  v59 = v2;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_5();
  v63 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF848, &qword_1DA428728);
  OUTLINED_FUNCTION_3_1();
  v57 = v6;
  v58 = v5;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_5();
  v61 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF850, &qword_1DA428730);
  OUTLINED_FUNCTION_3_1();
  v55 = v10;
  v56 = v9;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_5();
  v60 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF858, &qword_1DA428738);
  OUTLINED_FUNCTION_3_1();
  v53 = v14;
  v54 = v13;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF860, &qword_1DA428740);
  OUTLINED_FUNCTION_3_1();
  v52 = v19;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF868, &unk_1DA428748);
  OUTLINED_FUNCTION_3_1();
  v62 = v24;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F5134();
  v28 = v65;
  sub_1DA422484();
  if (v28)
  {
    goto LABEL_8;
  }

  v49 = v18;
  v50 = v22;
  v51 = v17;
  v30 = v63;
  v29 = v64;
  v65 = a1;
  v31 = v27;
  sub_1DA4222C4();
  result = sub_1DA3C2AA0();
  if (v34 == v35 >> 1)
  {
LABEL_7:
    v42 = sub_1DA4220F4();
    swift_allocError();
    v44 = v43;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620) + 48);
    *v44 = &type metadata for SiriSuggestionsIntelligence.RelativeTimePartition;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v31, v23);
    a1 = v65;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v22;
  }

  if (v34 < (v35 >> 1))
  {
    v22 = *(v33 + v34);
    sub_1DA3C2A9C();
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();
    v31 = v27;
    if (v37 == v39 >> 1)
    {
      v40 = v62;
      switch(v22)
      {
        case 1uLL:
          v67 = 1;
          sub_1DA3F5284();
          v45 = v51;
          OUTLINED_FUNCTION_3_16(&_s21RelativeTimePartitionO18LastHourCodingKeysON, &v67);
          swift_unknownObjectRelease();
          v47 = v53;
          v46 = v54;
          goto LABEL_14;
        case 2uLL:
          v68 = 2;
          sub_1DA3F5230();
          v45 = v60;
          OUTLINED_FUNCTION_3_16(&_s21RelativeTimePartitionO17LastDayCodingKeysON, &v68);
          swift_unknownObjectRelease();
          v47 = v55;
          v46 = v56;
          goto LABEL_14;
        case 3uLL:
          v69[0] = 3;
          sub_1DA3F51DC();
          v45 = v61;
          OUTLINED_FUNCTION_3_16(&_s21RelativeTimePartitionO18LastWeekCodingKeysON, v69);
          swift_unknownObjectRelease();
          v47 = v57;
          v46 = v58;
LABEL_14:
          (*(v47 + 8))(v45, v46);
          break;
        case 4uLL:
          v69[1] = 4;
          sub_1DA3F5188();
          sub_1DA422244();
          swift_unknownObjectRelease();
          (*(v59 + 8))(v30, v29);
          break;
        default:
          v66 = 0;
          sub_1DA3F52D8();
          v41 = v50;
          OUTLINED_FUNCTION_3_16(&_s21RelativeTimePartitionO22Last5MinutesCodingKeysON, &v66);
          swift_unknownObjectRelease();
          (*(v52 + 8))(v41, v49);
          break;
      }

      (*(v40 + 8))(v27, v23);
      __swift_destroy_boxed_opaque_existential_0(v65);
      return v22;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3F59F4(uint64_t a1)
{
  v2 = *v1;
  sub_1DA422434();
  SiriSuggestionsIntelligence.RelativeTimePartition.hash(into:)(v4, v2);
  return sub_1DA422474();
}

char *sub_1DA3F5A38@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.RelativeTimePartition.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DA3F5AC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656449707061 && a2 == 0xED00007265696669;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65704F73656D6974 && a2 == 0xEB0000000064656ELL;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DA4223A4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t _s27SiriSuggestionsIntelligenceAAO21RelativeTimePartitionO9hashValueSivg_0(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_11_7(a1);
  MEMORY[0x1DA74DBB0](v1);
  return sub_1DA422474();
}

uint64_t sub_1DA3F5C24(char a1)
{
  if (!a1)
  {
    return 0x746E656449707061;
  }

  if (a1 == 1)
  {
    return 0x65704F73656D6974;
  }

  return 0x6D69546C61746F74;
}

uint64_t sub_1DA3F5C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3F5AC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3F5CC4(uint64_t a1)
{
  v2 = sub_1DA3F6584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F5D00(uint64_t a1)
{
  v2 = sub_1DA3F6584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.AppStats.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a3 != a6)
    {
      return 0;
    }

    return a7 == a8;
  }

  v13 = sub_1DA4223A4();
  result = 0;
  if ((v13 & 1) != 0 && a3 == a6)
  {
    return a7 == a8;
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.AppStats.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF870, &qword_1DA428758);
  OUTLINED_FUNCTION_3_1();
  v8 = v7;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F6584();
  sub_1DA422494();
  v16 = 0;
  sub_1DA4222F4();
  if (!v4)
  {
    v15 = 1;
    sub_1DA422324();
    v14 = 2;
    sub_1DA422314();
  }

  return (*(v8 + 8))(v11, v6);
}

double SiriSuggestionsIntelligence.AppStats.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF878, &qword_1DA428760);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F6584();
  sub_1DA422484();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_11();
    sub_1DA422274();
    OUTLINED_FUNCTION_9_11();
    sub_1DA4222A4();
    OUTLINED_FUNCTION_9_11();
    sub_1DA422294();
    v2 = v6;
    v7 = OUTLINED_FUNCTION_8_14();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

void sub_1DA3F612C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = SiriSuggestionsIntelligence.AppStats.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

void *sub_1DA3F61A8(uint64_t a1, void *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      a2 = sub_1DA3F64DC(v14, v9, a1, a2, a3);
      MEMORY[0x1DA74E430](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  v11 = v15 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1DA3D78F8(0, v9, v11);

  v12 = sub_1DA3F6380(v11, v9, a1, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return a2;
}

uint64_t sub_1DA3F6380(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*(a3 + 56) + 16 * v18);
    result = *v19;
    if (*v19 != a4 || v19[1] != a5)
    {
      result = sub_1DA4223A4();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v25 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:
      sub_1DA3C8A9C(v25, a2, v8, a3);
      v23 = v22;

      return v23;
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DA3F64DC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_1DA3F6380(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t sub_1DA3F6584()
{
  result = qword_1EE101080;
  if (!qword_1EE101080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101080);
  }

  return result;
}

unint64_t sub_1DA3F65DC()
{
  result = qword_1EE101EC8;
  if (!qword_1EE101EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101EC8);
  }

  return result;
}

unint64_t sub_1DA3F6634()
{
  result = qword_1ECBAF880;
  if (!qword_1ECBAF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF880);
  }

  return result;
}

unint64_t sub_1DA3F668C()
{
  result = qword_1EE1028D8[0];
  if (!qword_1EE1028D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1028D8);
  }

  return result;
}

unint64_t sub_1DA3F66E4()
{
  result = qword_1EE101B78;
  if (!qword_1EE101B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101B78);
  }

  return result;
}

uint64_t sub_1DA3F6738(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA3F6778(uint64_t result, int a2, int a3)
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

_BYTE *_s6OriginOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
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

uint64_t sub_1DA3F68BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA3F6910(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1DA3F6984(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA3F69C4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *_s8AppStatsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA3F6AEC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA3F6C1C()
{
  result = qword_1ECBAF888;
  if (!qword_1ECBAF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF888);
  }

  return result;
}

unint64_t sub_1DA3F6C74()
{
  result = qword_1ECBAF890;
  if (!qword_1ECBAF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF890);
  }

  return result;
}

unint64_t sub_1DA3F6CCC()
{
  result = qword_1EE101070;
  if (!qword_1EE101070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101070);
  }

  return result;
}

unint64_t sub_1DA3F6D24()
{
  result = qword_1EE101078;
  if (!qword_1EE101078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101078);
  }

  return result;
}

unint64_t sub_1DA3F6D7C()
{
  result = qword_1ECBAF898;
  if (!qword_1ECBAF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF898);
  }

  return result;
}

unint64_t sub_1DA3F6DD4()
{
  result = qword_1ECBAF8A0;
  if (!qword_1ECBAF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8A0);
  }

  return result;
}

unint64_t sub_1DA3F6E2C()
{
  result = qword_1ECBAF8A8;
  if (!qword_1ECBAF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8A8);
  }

  return result;
}

unint64_t sub_1DA3F6E84()
{
  result = qword_1ECBAF8B0;
  if (!qword_1ECBAF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8B0);
  }

  return result;
}

unint64_t sub_1DA3F6EDC()
{
  result = qword_1ECBAF8B8;
  if (!qword_1ECBAF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8B8);
  }

  return result;
}

unint64_t sub_1DA3F6F34()
{
  result = qword_1ECBAF8C0;
  if (!qword_1ECBAF8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8C0);
  }

  return result;
}

unint64_t sub_1DA3F6F8C()
{
  result = qword_1ECBAF8C8;
  if (!qword_1ECBAF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8C8);
  }

  return result;
}

unint64_t sub_1DA3F6FE4()
{
  result = qword_1ECBAF8D0;
  if (!qword_1ECBAF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8D0);
  }

  return result;
}

unint64_t sub_1DA3F703C()
{
  result = qword_1ECBAF8D8;
  if (!qword_1ECBAF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8D8);
  }

  return result;
}

unint64_t sub_1DA3F7094()
{
  result = qword_1ECBAF8E0;
  if (!qword_1ECBAF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8E0);
  }

  return result;
}

unint64_t sub_1DA3F70EC()
{
  result = qword_1ECBAF8E8;
  if (!qword_1ECBAF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8E8);
  }

  return result;
}

unint64_t sub_1DA3F7144()
{
  result = qword_1ECBAF8F0;
  if (!qword_1ECBAF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8F0);
  }

  return result;
}

unint64_t sub_1DA3F7198()
{
  result = qword_1ECBAF2A0;
  if (!qword_1ECBAF2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAF2A0);
  }

  return result;
}

unint64_t sub_1DA3F71DC()
{
  result = qword_1EE101B80;
  if (!qword_1EE101B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101B80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DA4222D4();
}

uint64_t OUTLINED_FUNCTION_3_16(uint64_t a1, uint64_t a2)
{

  return sub_1DA422244();
}

void *OUTLINED_FUNCTION_11_7(uint64_t a1, ...)
{

  return sub_1DA422434();
}

uint64_t SiriSuggestionsIntelligence.AccountDetails.init(devices:createdDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0) + 20);

  return sub_1DA3A6760(a2, v4);
}

uint64_t type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(uint64_t a1)
{
  result = qword_1EE102DE8;
  if (!qword_1EE102DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t SiriSuggestionsIntelligence.AccountDetails.description.getter()
{
  v1 = v0;
  v2 = sub_1DA4210B4();
  OUTLINED_FUNCTION_3_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1DA422094();

  v19 = 0xD000000000000018;
  v20 = 0x80000001DA42E3B0;
  v11 = *v0;
  v12 = type metadata accessor for SiriSuggestionsIntelligence.Device(0);
  v13 = MEMORY[0x1DA74D4B0](v11, v12);
  MEMORY[0x1DA74D370](v13);

  MEMORY[0x1DA74D370](0x657461657263202CLL, 0xEF203A6574614464);
  v14 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  sub_1DA3F7598(v1 + *(v14 + 20), v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    v15 = 0xE300000000000000;
    v16 = 7104878;
  }

  else
  {
    (*(v4 + 32))(v7, v10, v2);
    v16 = sub_1DA421044();
    v15 = v17;
    (*(v4 + 8))(v7, v2);
  }

  MEMORY[0x1DA74D370](v16, v15);

  MEMORY[0x1DA74D370](125, 0xE100000000000000);
  return v19;
}

uint64_t sub_1DA3F7598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SiriSuggestionsIntelligence.AccountDetails.getAccountDetails()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA3F7628);
}

uint64_t sub_1DA3F7628()
{
  sub_1DA3A50BC(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DA3F768C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656369766564 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DA3F7758(char a1)
{
  if (a1)
  {
    return 0x4464657461657263;
  }

  else
  {
    return 0x73656369766564;
  }
}

uint64_t sub_1DA3F77A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3F768C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3F77C8(uint64_t a1)
{
  v2 = sub_1DA3F7A24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F7804(uint64_t a1)
{
  v2 = sub_1DA3F7A24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.AccountDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF8F8, &qword_1DA429070);
  OUTLINED_FUNCTION_3_1();
  v7 = v6;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F7A24();
  sub_1DA422494();
  v15 = *v3;
  v14[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF900, &qword_1DA429078);
  sub_1DA3F7D7C(&qword_1EE100FE0, &qword_1EE101130, &protocol conformance descriptor for SiriSuggestionsIntelligence.Device, MEMORY[0x1E69E6300]);
  OUTLINED_FUNCTION_4_15();
  sub_1DA422334();
  if (!v2)
  {
    type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
    v14[6] = 1;
    sub_1DA4210B4();
    OUTLINED_FUNCTION_0_18();
    sub_1DA3F7E18(v11, v12, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_4_15();
    sub_1DA4222E4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1DA3F7A24()
{
  result = qword_1EE1028D0;
  if (!qword_1EE1028D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1028D0);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.AccountDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF908, &qword_1DA429080);
  OUTLINED_FUNCTION_3_1();
  v24 = v8;
  v25 = v7;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F7A24();
  sub_1DA422484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v12;
  v15 = v14;
  v16 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF900, &qword_1DA429078);
  v27 = 0;
  sub_1DA3F7D7C(&qword_1EE102D28, &qword_1EE102D48, &protocol conformance descriptor for SiriSuggestionsIntelligence.Device, MEMORY[0x1E69E6330]);
  v17 = v25;
  OUTLINED_FUNCTION_3_17();
  sub_1DA4222B4();
  v21 = v28;
  *v15 = v28;
  sub_1DA4210B4();
  v26 = 1;
  OUTLINED_FUNCTION_0_18();
  sub_1DA3F7E18(v18, v19, MEMORY[0x1E6969558]);
  OUTLINED_FUNCTION_3_17();
  sub_1DA422264();
  (*(v16 + 8))(v11, v17);
  sub_1DA3A6760(v6, v15 + *(v22 + 20));
  sub_1DA3A50BC(v15, v23);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DA3A5120(v15);
}

uint64_t sub_1DA3F7D7C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF900, &qword_1DA429078);
    sub_1DA3F7E18(a2, type metadata accessor for SiriSuggestionsIntelligence.Device, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA3F7E18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DA3F7E94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3CC038;

  return SiriSuggestionsIntelligence.AccountDetails.getAccountDetails()(a1);
}

void sub_1DA3F7F54(uint64_t a1)
{
  sub_1DA3F8038(319, &qword_1EE102D30, type metadata accessor for SiriSuggestionsIntelligence.Device, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1DA3F8038(319, &qword_1EE102E10, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA3F8038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *_s14AccountDetailsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DA3F817C()
{
  result = qword_1ECBAF910;
  if (!qword_1ECBAF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF910);
  }

  return result;
}

unint64_t sub_1DA3F81D4()
{
  result = qword_1EE102DF8;
  if (!qword_1EE102DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102DF8);
  }

  return result;
}

unint64_t sub_1DA3F822C()
{
  result = qword_1EE1028C8;
  if (!qword_1EE1028C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1028C8);
  }

  return result;
}

uint64_t sub_1DA3F82C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_171();
  v11 = sub_1DA4213B4();
  OUTLINED_FUNCTION_3_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_7();
  v17 = v16 - v15;
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    sub_1DA4039D4(a1);
    v18 = OUTLINED_FUNCTION_169();
    sub_1DA4037B4(v18, v19, v20);

    return sub_1DA4039D4(v4);
  }

  else
  {
    (*(v13 + 32))(v17, a1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    sub_1DA3E2C54(v17, a2, a3);

    *v5 = v22;
  }

  return result;
}

uint64_t sub_1DA3F8448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1DA421374();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3F8514);
}

uint64_t sub_1DA3F8514()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = OUTLINED_FUNCTION_43_0();
  v8(v7);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v9, v1, v3);
  v12 = (v11 + v10);
  *v12 = v6;
  v12[1] = v5;

  sub_1DA421364();

  OUTLINED_FUNCTION_4_0();

  return v13();
}

void sub_1DA3F8640(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_1DA4211F4();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA421374();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  if (a2)
  {
    v59 = a4;
    if (qword_1EE100EF8 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA421A94();
    __swift_project_value_buffer(v22, static Logger.conversionCategory);
    v23 = *(v13 + 16);
    v23(v19, a3, v12);
    v23(v16, a3, v12);

    v24 = sub_1DA421A74();
    v25 = sub_1DA421F74();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v58 = a5;
      v27 = v26;
      v57 = swift_slowAlloc();
      v62 = v57;
      *v27 = 136315650;
      v56 = v24;
      sub_1DA421344();
      v28 = sub_1DA421194();
      v30 = v29;
      v31 = *(v60 + 8);
      v54 = v28;
      v55 = v31;
      LODWORD(v60) = v25;
      v32 = v61;
      v31(v11, v61);
      v33 = *(v13 + 8);
      v33(v19, v12);
      v34 = v33;
      v35 = sub_1DA3A5FE8(v54, v30, &v62);

      *(v27 + 4) = v35;
      *(v27 + 12) = 2080;
      sub_1DA421344();
      v36 = sub_1DA4211A4();
      v38 = v37;
      v55(v11, v32);
      v34(v16, v12);
      v39 = sub_1DA3A5FE8(v36, v38, &v62);

      *(v27 + 14) = v39;
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_1DA3A5FE8(v59, v58, &v62);
      v40 = v56;
      _os_log_impl(&dword_1DA39E000, v56, v60, "error when donating %s with type as %s with contextForOsLog - %s", v27, 0x20u);
      v41 = v57;
      swift_arrayDestroy();
      MEMORY[0x1DA74E430](v41, -1, -1);
      MEMORY[0x1DA74E430](v27, -1, -1);
    }

    else
    {

      v52 = *(v13 + 8);
      v52(v16, v12);
      v52(v19, v12);
    }
  }

  else
  {
    if (qword_1EE100EF8 != -1)
    {
      swift_once();
    }

    v42 = sub_1DA421A94();
    __swift_project_value_buffer(v42, static Logger.conversionCategory);
    (*(v13 + 16))(v21, a3, v12);

    v43 = sub_1DA421A74();
    v44 = sub_1DA421F64();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v58 = a5;
      v47 = v46;
      v62 = v46;
      *v45 = 136315394;
      sub_1DA421344();
      v48 = sub_1DA421194();
      v59 = a4;
      v50 = v49;
      (*(v60 + 8))(v11, v61);
      (*(v13 + 8))(v21, v12);
      v51 = sub_1DA3A5FE8(v48, v50, &v62);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_1DA3A5FE8(v59, v58, &v62);
      _os_log_impl(&dword_1DA39E000, v43, v44, "Logged succesfully - interaction %s with contextForOsLog - %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA74E430](v47, -1, -1);
      MEMORY[0x1DA74E430](v45, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v21, v12);
    }
  }
}

void DefaultConversionLogger.__allocating_init()()
{
  OUTLINED_FUNCTION_178();
  v0 = _s45FeatureEngagementBiomePostConversionProcessorCMa();
  sub_1DA3C8D54();
  v2 = v1;
  v3 = sub_1DA421904();
  v5 = v4;
  v6 = type metadata accessor for EngagementProcessedBookMarkDate();
  v48 = swift_allocObject();
  *(v48 + 16) = v3;
  *(v48 + 24) = v5;
  v7 = sub_1DA421904();
  v9 = v8;
  v10 = type metadata accessor for DefaultDawnCInstallationDateGetter();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  v12 = sub_1DA421904();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  v47 = type metadata accessor for DefaultDateRetriever();
  v16 = swift_allocObject();
  v16[5] = v10;
  v16[6] = &protocol witness table for DefaultDawnCInstallationDateGetter;
  v16[2] = v11;
  v16[10] = v6;
  v16[11] = &protocol witness table for EngagementProcessedBookMarkDate;
  v16[7] = v15;
  v16[12] = 0x413BAF8000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF918, &qword_1DA429260);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DA429250;
  *(v17 + 56) = v0;
  *(v17 + 64) = &off_1F55E9698;
  *(v17 + 32) = v2;
  v18 = type metadata accessor for SelfEmitter();
  v55 = v18;
  v56 = &off_1F55EC358;
  *&v54 = swift_allocObject();
  v19 = type metadata accessor for SELFConversionProcessor();
  v20 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v54, v18);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_7();
  v24 = (v23 - v22);
  (*(v25 + 16))(v23 - v22);
  v26 = *v24;
  v20[4].i64[0] = v18;
  v20[4].i64[1] = &off_1F55EC358;
  v20[2].i64[1] = v26;
  v20[1] = vdupq_n_s64(0x413BAF8000000000uLL);
  v20[2].i8[0] = 1;

  __swift_destroy_boxed_opaque_existential_0(&v54);
  *(v17 + 96) = v19;
  *(v17 + 104) = &off_1F55EC330;
  *(v17 + 72) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF920, &qword_1DA429268);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DA4238F0;
  *(v27 + 56) = v0;
  *(v27 + 64) = &off_1F55E9688;
  *(v27 + 32) = v2;
  v28 = type metadata accessor for DefaultSiriRemembersDonator();
  v29 = swift_allocObject();
  v30 = sub_1DA421924();
  swift_allocObject();
  OUTLINED_FUNCTION_31_2();

  v31 = sub_1DA421914();
  v55 = v30;
  v56 = MEMORY[0x1E69D3190];
  *&v54 = v31;
  v32 = type metadata accessor for DefaultConversionCoreAnalyticsLogger(0);
  swift_allocObject();
  sub_1DA3B2454(&v54, &v51);
  v33 = sub_1DA4218A4();
  __swift_destroy_boxed_opaque_existential_0(&v54);
  v55 = v6;
  v56 = &protocol witness table for EngagementProcessedBookMarkDate;
  *&v54 = v48;
  v52 = v47;
  v53 = &protocol witness table for DefaultDateRetriever;
  v50[4] = &off_1F55EB298;
  *&v51 = v16;
  v50[3] = v28;
  v50[0] = v29;
  v49[3] = v32;
  v49[4] = &off_1F55E8E90;
  v49[0] = v33;
  type metadata accessor for DefaultConversionLogger();
  v34 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v50, v28);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_7();
  v38 = (v37 - v36);
  (*(v39 + 16))(v37 - v36);
  __swift_mutable_project_boxed_opaque_existential_1(v49, v32);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4_7();
  v43 = (v42 - v41);
  (*(v44 + 16))(v42 - v41);
  v45 = *v38;
  v46 = *v43;
  v34[17] = v28;
  v34[18] = &off_1F55EB298;
  v34[14] = v45;
  v34[22] = v32;
  v34[23] = &off_1F55E8E90;

  v34[19] = v46;
  v34[12] = v17;
  v34[13] = v27;
  sub_1DA3A1FF8(&v54, (v34 + 2));
  sub_1DA3A1FF8(&v51, (v34 + 7));
  __swift_destroy_boxed_opaque_existential_0(v49);
  __swift_destroy_boxed_opaque_existential_0(v50);
  OUTLINED_FUNCTION_181();
}

uint64_t sub_1DA3F91E0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_72();
  swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = sub_1DA421BB4();

  MEMORY[0x1DA74D370](a4, a5);

  return v10;
}

uint64_t sub_1DA3F9288()
{
  v1 = sub_1DA421204();
  OUTLINED_FUNCTION_3_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_7();
  v5 = OUTLINED_FUNCTION_140();
  v6 = OUTLINED_FUNCTION_18(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_171();
  sub_1DA4212D4();
  sub_1DA4212B4();
  sub_1DA421324();
  (*(v3 + 104))(v0, *MEMORY[0x1E69D2A30], v1);
  return sub_1DA421354();
}

uint64_t sub_1DA3F9398()
{
  OUTLINED_FUNCTION_16();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[14] = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v5);
  v1[15] = OUTLINED_FUNCTION_40();
  v6 = sub_1DA4212E4();
  v1[16] = v6;
  OUTLINED_FUNCTION_5_2(v6);
  v1[17] = v7;
  v1[18] = OUTLINED_FUNCTION_40();
  v8 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t sub_1DA3F9494()
{
  v2 = v1[12];
  v3 = v1[11];
  (*(v1[17] + 16))(v1[18], v3, v1[16]);
  OUTLINED_FUNCTION_146();
  sub_1DA3F91E0(v2, v4, v5, v6, 0xE800000000000000);
  OUTLINED_FUNCTION_157();
  v1[19] = v7;
  if (sub_1DA3F98F8(v3, v2))
  {
    v9 = v1[17];
    v8 = v1[18];
    v10 = v1[16];
    v11 = v1[10];

    (*(v9 + 32))(v11, v8, v10);

    OUTLINED_FUNCTION_4_0();

    return v12();
  }

  else
  {
    v14 = v1[12];
    v1[20] = v0;
    v15 = v14[3];
    v16 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v19 = (OUTLINED_FUNCTION_3_8() + 8);
    v20 = (*v19 + **v19);
    v17 = swift_task_alloc();
    v1[21] = v17;
    *v17 = v1;
    v17[1] = sub_1DA3F9698;
    v18 = OUTLINED_FUNCTION_13_5(v1[11]);

    return v20(v18, v15, v16);
  }
}

uint64_t sub_1DA3F9698()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3F977C()
{
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v17 = v0[16];
  v15 = v0[20];
  v16 = v0[10];
  *v4 = 1;
  v5 = *MEMORY[0x1E69D2AC8];
  v6 = sub_1DA4213B4();
  OUTLINED_FUNCTION_17_0();
  (*(v7 + 104))(v4, v5, v6);
  OUTLINED_FUNCTION_47();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v6);
  v11 = sub_1DA4212C4();
  v12 = sub_1DA4211B4();
  sub_1DA3F82C0(v4, v15, v1);
  v12(v0 + 6, 0);
  v11(v0 + 2, 0);
  (*(v3 + 32))(v16, v2, v17);

  OUTLINED_FUNCTION_4_0();

  return v13();
}

uint64_t sub_1DA3F98F8(uint64_t a1, void *a2)
{
  v4 = sub_1DA4211F4();
  OUTLINED_FUNCTION_3_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_171();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  OUTLINED_FUNCTION_146();
  v15 = sub_1DA3F91E0(a2, v12, v13, v14, 0xE800000000000000);
  v17 = v16;
  sub_1DA4212D4();
  v18 = sub_1DA4211C4();
  (*(v6 + 8))(v2, v4);
  sub_1DA3EA2EC(v15, v17, v18, v11);

  sub_1DA4213B4();
  v19 = OUTLINED_FUNCTION_158();
  if (__swift_getEnumTagSinglePayload(v19, 1, v4) == 1)
  {
    sub_1DA4039D4(v11);
    v20 = 0;
  }

  else
  {
    v20 = sub_1DA4213A4();
    OUTLINED_FUNCTION_17_0();
    v21 = OUTLINED_FUNCTION_24();
    v22(v21);
  }

  return v20 & 1;
}

uint64_t sub_1DA3F9ABC()
{
  OUTLINED_FUNCTION_16();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v1[24] = v5;
  v1[25] = v6;
  v1[30] = *v0;
  v7 = sub_1DA421314();
  v1[31] = v7;
  OUTLINED_FUNCTION_5_2(v7);
  v1[32] = v8;
  v1[33] = OUTLINED_FUNCTION_95();
  v1[34] = swift_task_alloc();
  v9 = sub_1DA4213B4();
  v1[35] = v9;
  OUTLINED_FUNCTION_5_2(v9);
  v1[36] = v10;
  v1[37] = OUTLINED_FUNCTION_95();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v11);
  v1[41] = OUTLINED_FUNCTION_95();
  v1[42] = swift_task_alloc();
  v12 = sub_1DA4211F4();
  v1[43] = v12;
  OUTLINED_FUNCTION_5_2(v12);
  v1[44] = v13;
  v1[45] = OUTLINED_FUNCTION_95();
  v1[46] = swift_task_alloc();
  v14 = sub_1DA4212E4();
  v1[47] = v14;
  OUTLINED_FUNCTION_5_2(v14);
  v1[48] = v15;
  v1[49] = OUTLINED_FUNCTION_40();
  v16 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v16);
}

uint64_t sub_1DA3F9CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(void), uint64_t a13, void (*a14)(uint64_t), uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_174();
  v21 = v20[46];
  v22 = v20[43];
  v23 = v20[44];
  v24 = v20[42];
  v25 = v20[35];
  v26 = v20[27];
  (*(v20[48] + 16))(v20[49], v20[25], v20[47]);
  OUTLINED_FUNCTION_148();
  v30 = sub_1DA3F91E0(v26, v27, v28, v29, 0xEA00000000006465);
  v32 = v31;
  v20[50] = v30;
  v20[51] = v31;
  sub_1DA4212D4();
  v33 = sub_1DA4211C4();
  v36 = *(v23 + 8);
  v35 = v23 + 8;
  v34 = v36;
  (v36)(v21, v22);
  v124 = v32;
  sub_1DA3EA2EC(v30, v32, v33, v24);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v25);
  v38 = v20[42];
  if (EnumTagSinglePayload)
  {
    sub_1DA4039D4(v20[42]);
LABEL_3:
    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_4;
  }

  v65 = v20[40];
  v67 = v20[35];
  v66 = v20[36];
  OUTLINED_FUNCTION_166();
  v125 = v68;
  v68();
  sub_1DA4039D4(v38);
  v69 = sub_1DA421384();
  a14 = *(v66 + 8);
  (a14)(v65, v67);
  if (!v69)
  {
    goto LABEL_3;
  }

  v70 = *(v69 + 16);
  if (!v70)
  {

    goto LABEL_3;
  }

  a12 = v34;
  a13 = v35;
  v71 = v20[36];
  a10 = v69;
  v72 = v69 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
  v73 = *(v71 + 72);
  v39 = MEMORY[0x1E69E7CC0];
  do
  {
    v74 = v20[39];
    (v125)(v74, v72, v20[35]);
    sub_1DA421394();
    OUTLINED_FUNCTION_77();
    v75 = OUTLINED_FUNCTION_38();
    a14(v75);
    if (v25)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_16_1();
        sub_1DA3A5B78();
        v39 = v79;
      }

      v77 = *(v39 + 16);
      v76 = *(v39 + 24);
      if (v77 >= v76 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v76);
        OUTLINED_FUNCTION_173();
        sub_1DA3A5B78();
        v39 = v80;
      }

      *(v39 + 16) = v77 + 1;
      v78 = v39 + 16 * v77;
      *(v78 + 32) = v74;
      *(v78 + 40) = v25;
    }

    v72 += v73;
    --v70;
  }

  while (v70);

  v34 = a12;
  v35 = a13;
LABEL_4:
  v20[52] = v39;
  sub_1DA3FBBF8(v20[25]);
  if ((v40 & 1) == 0)
  {
    goto LABEL_22;
  }

  a12 = v34;
  a13 = v35;
  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v41 = v20[34];
  v43 = v20[31];
  v42 = v20[32];
  v45 = v20[26];
  v44 = v20[27];
  v46 = sub_1DA421A94();
  __swift_project_value_buffer(v46, static Logger.conversionCategory);
  sub_1DA3B2454(v44, (v20 + 2));
  (*(v42 + 16))(v41, v45, v43);
  v47 = sub_1DA421A74();
  v48 = sub_1DA421F64();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v20[34];
  v51 = v20[31];
  v52 = v20[32];
  if (v49)
  {
    v53 = OUTLINED_FUNCTION_90();
    a17 = OUTLINED_FUNCTION_92();
    *v53 = 136315394;
    OUTLINED_FUNCTION_186();
    DynamicType = swift_getDynamicType();
    OUTLINED_FUNCTION_172(DynamicType);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
    OUTLINED_FUNCTION_149(v55);
    __swift_destroy_boxed_opaque_existential_0(v20 + 2);
    v56 = OUTLINED_FUNCTION_167();
    v59 = sub_1DA3A5FE8(v56, v57, v58);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2080;
    sub_1DA4212F4();
    (*(v52 + 8))(v50, v51);
    v60 = OUTLINED_FUNCTION_43_0();
    sub_1DA3A5FE8(v60, v61, v62);
    OUTLINED_FUNCTION_51_0();

    *(v53 + 14) = v50;
    _os_log_impl(&dword_1DA39E000, v47, v48, "processor - %s has suggestion - %s already marked as converted", v53, 0x16u);
    OUTLINED_FUNCTION_151(v63, v64, MEMORY[0x1E69E7CA0] + 8);
    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_66();
  }

  else
  {

    (*(v52 + 8))(v50, v51);
    __swift_destroy_boxed_opaque_existential_0(v20 + 2);
  }

  v81 = v20[27];
  v82 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  v83 = OUTLINED_FUNCTION_31_2();
  v34 = a12;
  if ((v84(v83, v82) & 1) == 0)
  {
    v100 = v20[29];
    v101 = v20[27];

    v102 = __swift_project_boxed_opaque_existential_1((v100 + 152), *(v100 + 176));
    sub_1DA4212D4();
    LOBYTE(v100) = sub_1DA4211D4();
    v103 = OUTLINED_FUNCTION_43_0();
    a12(v103);
    sub_1DA3B6A3C(v101, 0xD00000000000002ALL, 0x80000001DA42E4C0, 1, v100 & 1);
    sub_1DA3B2454(v101, (v20 + 7));
    v104 = sub_1DA421A74();
    v105 = sub_1DA421F64();
    if (OUTLINED_FUNCTION_52_0(v105))
    {
      v106 = OUTLINED_FUNCTION_150();
      a17 = OUTLINED_FUNCTION_139();
      *v106 = 136315138;
      __swift_project_boxed_opaque_existential_1(v20 + 7, v20[10]);
      OUTLINED_FUNCTION_72();
      v107 = swift_getDynamicType();
      v108 = v20[11];
      v20[20] = v107;
      v20[21] = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
      sub_1DA421BB4();
      __swift_destroy_boxed_opaque_existential_0(v20 + 7);
      v109 = OUTLINED_FUNCTION_74();
      v112 = sub_1DA3A5FE8(v109, v110, v111);

      *(v106 + 4) = v112;
      _os_log_impl(&dword_1DA39E000, v104, v102, "skipping the conversion because processor - %s has sendConversionsAfterNotConverted set as false", v106, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a17);
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v20 + 7);
    }

    OUTLINED_FUNCTION_85();
    v127 = v114;
    v129 = v113;
    (*(v115 + 32))(v20[24], v104);

    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_121();

    return v117(v116, v117, v118, v119, v120, v121, v122, v123, a9, a10, v124, a12, a13, a14, v127, v129, a17, a18, a19, a20);
  }

  else
  {
LABEL_22:
    v85 = v20[27];
    __swift_project_boxed_opaque_existential_1((v20[29] + 152), *(v20[29] + 176));
    sub_1DA4212D4();
    v86 = sub_1DA4211D4();
    v87 = OUTLINED_FUNCTION_24();
    v34(v87);
    sub_1DA3B6A3C(v85, 0, 0, 1, v86 & 1);
    v88 = OUTLINED_FUNCTION_167();
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v126 = (OUTLINED_FUNCTION_3_8() + 24);
    v128 = *v126 + **v126;
    v90 = swift_task_alloc();
    v20[53] = v90;
    *v90 = v20;
    v90[1] = sub_1DA3FA4E8;
    OUTLINED_FUNCTION_13_5(v20[25]);
    OUTLINED_FUNCTION_121();

    return v96(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, v124, a12, a13, a14, v126, v128, a17, a18, a19, a20);
  }
}

uint64_t sub_1DA3FA4E8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3FAAE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 == sub_1DA4212F4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DA4223A4();
  }

  return v5 & 1;
}

void sub_1DA3FAB60(uint64_t a1)
{
  OUTLINED_FUNCTION_178();
  v3 = v2;
  v72 = sub_1DA421314();
  OUTLINED_FUNCTION_3_1();
  v80 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_76();
  v74 = (v6 - v7);
  OUTLINED_FUNCTION_132();
  MEMORY[0x1EEE9AC00](v8);
  v73 = v71 - v9;
  OUTLINED_FUNCTION_104();
  v10 = sub_1DA4213B4();
  OUTLINED_FUNCTION_3_1();
  v75 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_7();
  v79 = v14 - v13;
  OUTLINED_FUNCTION_104();
  v81 = sub_1DA4211F4();
  OUTLINED_FUNCTION_3_1();
  v78 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_7();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v20);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_148();
  v77 = sub_1DA3F91E0(v3, v22, v23, v24, 0xEA00000000006465);
  v26 = v25;
  v27 = sub_1DA4212B4();
  sub_1DA421604();
  v28 = sub_1DA4215A4();
  sub_1DA3EA3F0(v28, v29, v27);
  v31 = v30;

  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA4212D4();
  v33 = sub_1DA4211C4();
  v78[1](v19, v81);
  sub_1DA3EA2EC(v77, v26, v33, v1);

  if (OUTLINED_FUNCTION_145() != 1)
  {
    v34 = sub_1DA421384();
    v35 = v75;
    v36 = OUTLINED_FUNCTION_51();
    v78 = v37;
    (v37)(v36);
    v38 = v72;
    if (v34)
    {
      v39 = *(v34 + 16);
      if (v39)
      {
        v40 = v35 + 2;
        OUTLINED_FUNCTION_49();
        v71[1] = v34;
        v42 = v34 + v41;
        v76 = v40[7];
        v77 = v43;
        v81 = MEMORY[0x1E69E7CC0];
        v75 = v40;
        do
        {
          v44 = v79;
          v77(v79, v42, v10);
          sub_1DA421394();
          v45 = OUTLINED_FUNCTION_79();
          (v78)(v45, v10);
          if (v38)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_16_1();
              sub_1DA3A5B78();
              v81 = v50;
            }

            v47 = *(v81 + 16);
            v46 = *(v81 + 24);
            if (v47 >= v46 >> 1)
            {
              OUTLINED_FUNCTION_21_3(v46);
              sub_1DA3A5B78();
              v81 = v51;
            }

            v48 = v81;
            *(v81 + 16) = v47 + 1;
            v49 = v48 + 16 * v47;
            *(v49 + 32) = v44;
            *(v49 + 40) = v38;
          }

          v42 += v76;
          --v39;
        }

        while (v39);

        goto LABEL_17;
      }
    }

    v81 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  sub_1DA4039D4(v1);
  v81 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v38 = v72;
LABEL_20:
  v52 = 0;
  v53 = *(v32 + 16);
  v78 = (v80 + 16);
  v79 = v53;
  v75 = (v80 + 32);
  v77 = (v80 + 8);
  v76 = MEMORY[0x1E69E7CC0];
  v54 = v73;
  while (1)
  {
    if (v79 == v52)
    {

      OUTLINED_FUNCTION_181();
      return;
    }

    if (v52 >= *(v32 + 16))
    {
      break;
    }

    v55 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v56 = v32;
    v57 = *(v80 + 72);
    (*(v80 + 16))(v54, v32 + v55 + v57 * v52, v38);
    v82[0] = sub_1DA4212F4();
    v82[1] = v58;
    MEMORY[0x1EEE9AC00](v82[0]);
    OUTLINED_FUNCTION_117();
    *(v59 - 16) = v82;
    v61 = sub_1DA412A3C(sub_1DA403B04, v60, v81);

    if (v61)
    {
      (*v77)(v54, v38);
      ++v52;
    }

    else
    {
      v62 = *v75;
      (*v75)(v74, v54, v38);
      v63 = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v63;
      v83 = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DA3B0508(0, *(v63 + 16) + 1, 1);
        v54 = v73;
        v65 = v83;
      }

      v32 = v56;
      v67 = *(v65 + 16);
      v66 = *(v65 + 24);
      if (v67 >= v66 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v66);
        OUTLINED_FUNCTION_72();
        sub_1DA3B0508(v68, v69, v70);
        v54 = v73;
        v65 = v83;
      }

      ++v52;
      *(v65 + 16) = v67 + 1;
      v76 = v65;
      v62(v65 + v55 + v67 * v57, v74, v38);
    }
  }

  __break(1u);
}

uint64_t sub_1DA3FB144(uint64_t a1, void *a2)
{
  v128 = a1;
  v127 = sub_1DA4212E4();
  OUTLINED_FUNCTION_3_1();
  v125 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_7();
  v121 = v7 - v6;
  OUTLINED_FUNCTION_104();
  v133 = sub_1DA421314();
  OUTLINED_FUNCTION_3_1();
  v122 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_7();
  v132 = v11 - v10;
  OUTLINED_FUNCTION_104();
  v131 = sub_1DA4213B4();
  OUTLINED_FUNCTION_3_1();
  v123 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_7();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v17);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v117 - v19;
  OUTLINED_FUNCTION_104();
  v130 = sub_1DA4210B4();
  OUTLINED_FUNCTION_3_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_7();
  v23 = OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_3_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_76();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v117 - v31;
  v33 = a2[4];
  v126 = a2;
  v34 = OUTLINED_FUNCTION_50_0();
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v36 = OUTLINED_FUNCTION_84();
  v37 = v128;
  v39 = v38(v36, v33);
  v41 = v40;
  sub_1DA4212D4();
  sub_1DA4211E4();
  v44 = *(v25 + 8);
  v43 = (v25 + 8);
  v42 = v44;
  v120 = v32;
  (v44)(v32, v23);
  sub_1DA421074();
  v46 = v45;
  (*(v21 + 8))(v2, v130);
  if (v39 + v41 > -v46)
  {
    return 0;
  }

  OUTLINED_FUNCTION_18_7();
  v51 = v42;
  v52 = sub_1DA3F91E0(v126, v47, v48, v49, v50);
  v54 = v53;
  sub_1DA4212D4();
  v55 = v29;
  sub_1DA4211C4();
  v56 = OUTLINED_FUNCTION_78();
  v119 = v23;
  v117 = v51;
  (v51)(v56, v23);
  v57 = v129;
  sub_1DA3EA2EC(v52, v54, v55, v129);

  v58 = v131;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v131);
  v118 = v43;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DA4039D4(v57);
    v60 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v61 = sub_1DA421384();
    v62 = *(v123 + 8);
    v62(v57, v58);
    if (v61)
    {
      v63 = *(v61 + 16);
      if (v63)
      {
        v130 = *(v123 + 16);
        OUTLINED_FUNCTION_49();
        v123 = v61;
        v65 = v61 + v64;
        v129 = *(v66 + 56);
        v60 = MEMORY[0x1E69E7CC0];
        do
        {
          (v130)(v16, v65, v58);
          v67 = sub_1DA421394();
          v69 = v68;
          v62(v16, v58);
          if (v69)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_16_1();
              sub_1DA3A5B78();
              v60 = v74;
            }

            v71 = *(v60 + 16);
            v70 = *(v60 + 24);
            v72 = v60;
            if (v71 >= v70 >> 1)
            {
              OUTLINED_FUNCTION_21_3(v70);
              OUTLINED_FUNCTION_72();
              sub_1DA3A5B78();
              v72 = v75;
            }

            *(v72 + 16) = v71 + 1;
            v60 = v72;
            v73 = v72 + 16 * v71;
            *(v73 + 32) = v67;
            *(v73 + 40) = v69;
            v58 = v131;
          }

          v65 += v129;
          --v63;
        }

        while (v63);
      }

      else
      {

        v60 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v60 = MEMORY[0x1E69E7CC0];
    }

    v37 = v128;
  }

  v129 = v60;
  sub_1DA3FAB60(v37);
  v77 = v76;
  v78 = *(v76 + 16);
  v79 = v127;
  if (v78)
  {
    v137[0] = MEMORY[0x1E69E7CC0];
    sub_1DA3B0160(0, v78, 0);
    v80 = v137[0];
    v131 = *(v122 + 16);
    OUTLINED_FUNCTION_49();
    v124 = v77;
    v82 = v77 + v81;
    v130 = *(v83 + 56);
    do
    {
      v131(v132, v82, v133);
      v84 = sub_1DA4212F4();
      v86 = v85;
      v87 = OUTLINED_FUNCTION_45_0();
      v88(v87);
      v137[0] = v80;
      v90 = *(v80 + 16);
      v89 = *(v80 + 24);
      if (v90 >= v89 >> 1)
      {
        v92 = OUTLINED_FUNCTION_21_3(v89);
        sub_1DA3B0160(v92, v90 + 1, 1);
        v80 = v137[0];
      }

      *(v80 + 16) = v90 + 1;
      v91 = v80 + 16 * v90;
      *(v91 + 32) = v84;
      *(v91 + 40) = v86;
      v82 += v130;
      --v78;
    }

    while (v78);

    v79 = v127;
  }

  else
  {

    v80 = MEMORY[0x1E69E7CC0];
  }

  v93 = v125;
  sub_1DA3BC3DC(v80);
  v94 = v129;

  sub_1DA3BC3DC(v95);
  v96 = OUTLINED_FUNCTION_39();
  v98 = sub_1DA3FBA50(v96, v97);

  if (v98)
  {

    return 0;
  }

  v100 = *(v94 + 16);

  if (v100)
  {
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v101 = sub_1DA421A94();
    __swift_project_value_buffer(v101, static Logger.conversionCategory);
    v102 = v121;
    v103 = OUTLINED_FUNCTION_74();
    v104(v103);
    sub_1DA3B2454(v126, v137);
    v105 = sub_1DA421A74();
    v106 = sub_1DA421F74();
    if (OUTLINED_FUNCTION_147(v106))
    {
      OUTLINED_FUNCTION_90();
      v136 = OUTLINED_FUNCTION_34_1();
      *v94 = 136315394;
      v107 = v120;
      sub_1DA4212D4();
      sub_1DA421194();
      (v117)(v107, v119);
      v108 = OUTLINED_FUNCTION_55_0();
      v109(v108);
      v110 = OUTLINED_FUNCTION_60();
      sub_1DA3A5FE8(v110, v111, v112);
      OUTLINED_FUNCTION_78();

      OUTLINED_FUNCTION_17_6();
      v113 = v138;
      __swift_project_boxed_opaque_existential_1(v137, v138);
      DynamicType = swift_getDynamicType();
      v135 = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
      sub_1DA421BB4();
      OUTLINED_FUNCTION_89();
      __swift_destroy_boxed_opaque_existential_0(v137);
      v114 = OUTLINED_FUNCTION_60();
      sub_1DA3A5FE8(v114, v115, v116);
      OUTLINED_FUNCTION_78();

      *(v94 + 14) = v113;
      OUTLINED_FUNCTION_122(&dword_1DA39E000, v105, v98, "for suggestionsShownInteraction with id - %s and for process - %s not converted is already set but the value has to be updated - This is not expected", v117, v118);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_7_9();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v137);
      (*(v93 + 8))(v102, v79);
    }
  }

  return 1;
}

uint64_t sub_1DA3FBA50(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_1DA422434();

      sub_1DA421BF4();
      v15 = sub_1DA422474();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_1DA4223A4();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
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
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1DA3FBBF8(uint64_t a1)
{
  OUTLINED_FUNCTION_178();
  v3 = v2;
  v5 = v4;
  v6 = sub_1DA4213B4();
  OUTLINED_FUNCTION_3_1();
  v51 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_140();
  OUTLINED_FUNCTION_3_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_7();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v16);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v50 - v18;
  OUTLINED_FUNCTION_18_7();
  v24 = sub_1DA3F91E0(v3, v20, v21, v22, v23);
  v26 = v25;
  sub_1DA4212D4();
  v27 = sub_1DA4211C4();
  (*(v11 + 8))(v15, v9);
  sub_1DA3EA2EC(v24, v26, v27, v19);

  if (__swift_getEnumTagSinglePayload(v19, 1, v6) == 1)
  {
    sub_1DA4039D4(v19);
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v50[2] = v5;
  v29 = sub_1DA421384();
  v30 = v51;
  v31 = OUTLINED_FUNCTION_154();
  v54 = v32;
  v32(v31);
  if (!v29)
  {
LABEL_15:
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v33 = *(v29 + 16);
  if (!v33)
  {

    goto LABEL_15;
  }

  v34 = v30 + 16;
  OUTLINED_FUNCTION_49();
  v50[1] = v29;
  v36 = v29 + v35;
  v52 = *(v34 + 56);
  v53 = v37;
  v28 = MEMORY[0x1E69E7CC0];
  v51 = v34;
  do
  {
    v53(v1, v36, v6);
    v38 = sub_1DA421394();
    v40 = v39;
    v41 = OUTLINED_FUNCTION_169();
    v54(v41);
    if (v40)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_16_1();
        sub_1DA3A5B78();
        v28 = v45;
      }

      v43 = *(v28 + 16);
      v42 = *(v28 + 24);
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v42);
        sub_1DA3A5B78();
        v28 = v46;
      }

      *(v28 + 16) = v43 + 1;
      v44 = v28 + 16 * v43;
      *(v44 + 32) = v38;
      *(v44 + 40) = v40;
    }

    v36 += v52;
    --v33;
  }

  while (v33);

LABEL_16:
  v55[0] = sub_1DA4212F4();
  v55[1] = v47;
  MEMORY[0x1EEE9AC00](v55[0]);
  OUTLINED_FUNCTION_117();
  *(v48 - 16) = v55;
  sub_1DA412A3C(sub_1DA403B04, v49, v28);

  OUTLINED_FUNCTION_181();
}

uint64_t sub_1DA3FBF84()
{
  OUTLINED_FUNCTION_16();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v1[28] = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v5);
  v1[29] = OUTLINED_FUNCTION_40();
  v6 = sub_1DA4213B4();
  v1[30] = v6;
  OUTLINED_FUNCTION_5_2(v6);
  v1[31] = v7;
  v1[32] = OUTLINED_FUNCTION_95();
  v1[33] = swift_task_alloc();
  v8 = sub_1DA4211F4();
  v1[34] = v8;
  OUTLINED_FUNCTION_5_2(v8);
  v1[35] = v9;
  v1[36] = OUTLINED_FUNCTION_40();
  v10 = sub_1DA421314();
  v1[37] = v10;
  OUTLINED_FUNCTION_5_2(v10);
  v1[38] = v11;
  v1[39] = OUTLINED_FUNCTION_40();
  v12 = sub_1DA4212E4();
  v1[40] = v12;
  OUTLINED_FUNCTION_5_2(v12);
  v1[41] = v13;
  v1[42] = OUTLINED_FUNCTION_95();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v14);
}

uint64_t sub_1DA3FC188()
{
  v51 = v0;
  v1 = v0[44];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[26];
  v5 = v0[25];
  v6 = *(v3 + 16);
  v0[45] = v6;
  v0[46] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  if (sub_1DA3FB144(v5, v4))
  {
    v7 = v0[26];
    v8 = v0[25];
    __swift_project_boxed_opaque_existential_1((v0[27] + 152), *(v0[27] + 176));
    sub_1DA3B6A3C(v7, 0, 0, 0, 2);
    sub_1DA3FAB60(v8);
    v10 = v9;
    v0[47] = v9;
    v11 = v7[3];
    v12 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v11);
    v48 = (*(v12 + 32) + **(v12 + 32));
    v13 = swift_task_alloc();
    v0[48] = v13;
    *v13 = v0;
    v13[1] = sub_1DA3FC604;
    v14 = OUTLINED_FUNCTION_13_5(v0[25]);

    return v48(v14, v10, v11, v12);
  }

  else
  {
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_9();
      swift_once();
    }

    v16 = v0[26];
    v17 = sub_1DA421A94();
    __swift_project_value_buffer(v17, static Logger.conversionCategory);
    v18 = OUTLINED_FUNCTION_87();
    (v6)(v18);
    sub_1DA3B2454(v16, (v0 + 2));
    v19 = sub_1DA421A74();
    v20 = sub_1DA421F64();
    v21 = OUTLINED_FUNCTION_7_1(v20);
    v22 = v0[41];
    v23 = v0[42];
    v24 = v0[40];
    if (v21)
    {
      v49 = v0[44];
      v25 = v0[35];
      v26 = v0[36];
      v44 = v0[34];
      v46 = v20;
      v27 = OUTLINED_FUNCTION_90();
      v50 = OUTLINED_FUNCTION_92();
      *v27 = 136315394;
      v45 = v19;
      sub_1DA4212D4();
      v28 = sub_1DA421194();
      v47 = v6;
      v30 = v29;
      (*(v25 + 8))(v26, v44);
      v31 = *(v22 + 8);
      v31(v23, v24);
      sub_1DA3A5FE8(v28, v30, &v50);
      OUTLINED_FUNCTION_135();
      v6 = v47;

      OUTLINED_FUNCTION_64();
      v32 = OUTLINED_FUNCTION_39_0();
      v33 = v0[6];
      v0[20] = v32;
      v0[21] = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
      v34 = sub_1DA421BB4();
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v35 = OUTLINED_FUNCTION_45_0();
      sub_1DA3A5FE8(v35, v36, v37);
      OUTLINED_FUNCTION_31_2();

      *(v27 + 14) = v34;
      v38 = v45;
      OUTLINED_FUNCTION_183(&dword_1DA39E000, v45, v46, "for suggestionsShownInteraction with id - %s and for process - %s - database already has correct not converted values - no update needed", v44, v45);
      OUTLINED_FUNCTION_123(v39, v40, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_53_0();

      v31(v49, v24);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      v41 = *(v22 + 8);
      v41(v23, v24);
      v42 = OUTLINED_FUNCTION_24();
      (v41)(v42);
    }

    v6(v0[24], v0[25], v0[40]);
    OUTLINED_FUNCTION_119();

    OUTLINED_FUNCTION_4_0();

    return v43();
  }
}

uint64_t sub_1DA3FC604()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1DA3FC6E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_log_t log, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_174();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = v28[47];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v28[38];
    v34 = OUTLINED_FUNCTION_127();
    sub_1DA3B0160(v34, v35, v36);
    v37 = a17;
    v33 += 16;
    OUTLINED_FUNCTION_49();
    v39 = v31 + v38;
    v125 = *(v33 + 56);
    loga = v40;
    v41 = (v33 - 8);
    do
    {
      v42 = v28[39];
      v43 = v28[37];
      v44 = OUTLINED_FUNCTION_87();
      (loga)(v44);
      v45 = sub_1DA4212F4();
      v47 = v46;
      (*v41)(v42, v43);
      a17 = v37;
      v49 = *(v37 + 16);
      v48 = *(v37 + 24);
      if (v49 >= v48 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v48);
        OUTLINED_FUNCTION_173();
        sub_1DA3B0160(v51, v52, v53);
        v37 = a17;
      }

      *(v37 + 16) = v49 + 1;
      v50 = v37 + 16 * v49;
      *(v50 + 32) = v45;
      *(v50 + 40) = v47;
      v39 += v125;
      --v32;
    }

    while (v32);
  }

  else
  {

    v37 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v54 = v28[45];
  v55 = v28[26];
  v56 = sub_1DA421A94();
  __swift_project_value_buffer(v56, static Logger.conversionCategory);
  v57 = OUTLINED_FUNCTION_60();
  v54(v57);
  sub_1DA3B2454(v55, (v28 + 7));

  v58 = sub_1DA421A74();
  sub_1DA421F64();
  OUTLINED_FUNCTION_185();
  if (OUTLINED_FUNCTION_182())
  {
    v59 = v28[35];
    v60 = v28[36];
    v124 = v28[34];
    v61 = OUTLINED_FUNCTION_139();
    a17 = swift_slowAlloc();
    *v61 = 136315650;
    logd = v58;
    sub_1DA4212D4();
    v62 = sub_1DA421194();
    v126 = v55;
    (*(v59 + 8))(v60, v124);
    v63 = OUTLINED_FUNCTION_38();
    v64(v63);
    v65 = OUTLINED_FUNCTION_87();
    sub_1DA3A5FE8(v65, v66, v67);
    OUTLINED_FUNCTION_51_0();

    *(v61 + 4) = v62;
    *(v61 + 12) = 2080;
    v68 = MEMORY[0x1DA74D4B0](v37, MEMORY[0x1E69E6158]);
    v70 = sub_1DA3A5FE8(v68, v69, &a17);

    *(v61 + 14) = v70;
    *(v61 + 22) = 2080;
    v71 = v28[10];
    __swift_project_boxed_opaque_existential_1(v28 + 7, v71);
    DynamicType = swift_getDynamicType();
    v73 = v28[11];
    v28[22] = DynamicType;
    v28[23] = v73;
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
    OUTLINED_FUNCTION_149(v74);
    OUTLINED_FUNCTION_105();
    __swift_destroy_boxed_opaque_existential_0(v28 + 7);
    v75 = OUTLINED_FUNCTION_87();
    sub_1DA3A5FE8(v75, v76, v77);
    OUTLINED_FUNCTION_51_0();

    *(v61 + 24) = v71;
    _os_log_impl(&dword_1DA39E000, logd, v126, "Updating interaction - %s with NotConverted Entities - %s for processor %s", v61, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_17();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v28 + 7);
    v78 = OUTLINED_FUNCTION_38();
    v79(v78);
  }

  v80 = *(v37 + 16);
  if (v80)
  {
    v81 = v28[31];
    logb = v28[32];
    v82 = OUTLINED_FUNCTION_127();
    sub_1DA3B04B0(v82, v83, v84);
    v85 = a17;
    v132 = *(v81 + 104);
    v86 = (v37 + 40);
    do
    {
      v87 = *v86;
      *v28[32] = *(v86 - 1);
      logb[1].isa = v87;
      v132();
      a17 = v85;
      v88 = *(v85 + 16);
      v89 = *(v85 + 24);

      if (v88 >= v89 >> 1)
      {
        OUTLINED_FUNCTION_72();
        sub_1DA3B04B0(v91, v92, v93);
        v85 = a17;
      }

      *(v85 + 16) = v88 + 1;
      OUTLINED_FUNCTION_49();
      (*(v81 + 32))(v85 + v90 + *(v81 + 72) * v88);
      v86 += 2;
      --v80;
    }

    while (v80);

    v94 = v132;
  }

  else
  {
    v95 = v28[31];

    v94 = *(v95 + 104);
    v85 = MEMORY[0x1E69E7CC0];
  }

  v123 = v28[44];
  logc = v28[41];
  v133 = v28[40];
  v96 = v28[33];
  v98 = v28[30];
  v97 = v28[31];
  v99 = v28[29];
  v100 = v28[26];
  v127 = v28[24];
  *v96 = v85;
  (v94)(v96, *MEMORY[0x1E69D2AD0], v98);
  OUTLINED_FUNCTION_18_7();
  v105 = sub_1DA3F91E0(v100, v101, v102, v103, v104);
  v121 = v106;
  v122 = v105;
  (*(v97 + 16))(v99, v96, v98);
  OUTLINED_FUNCTION_47();
  __swift_storeEnumTagSinglePayload(v107, v108, v109, v98);
  v110 = sub_1DA4212C4();
  v111 = sub_1DA4211B4();
  sub_1DA3F82C0(v99, v122, v121);
  v111(v28 + 16, 0);
  v110(v28 + 12, 0);
  (*(v97 + 8))(v96, v98);
  (logc[4].isa)(v127, v123, v133);
  OUTLINED_FUNCTION_119();

  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_121();

  return v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, v121, v122, v123, v28 + 12, v127, logc, v133, a17, a18, a19, a20);
}

void sub_1DA3FCD04(uint64_t a1)
{
  OUTLINED_FUNCTION_178();
  v2 = v1;
  v127 = v3;
  v4 = sub_1DA421314();
  OUTLINED_FUNCTION_3_1();
  v131 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_76();
  v122 = v7 - v8;
  OUTLINED_FUNCTION_132();
  MEMORY[0x1EEE9AC00](v9);
  v124 = &v110 - v10;
  OUTLINED_FUNCTION_132();
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v110 - v12;
  OUTLINED_FUNCTION_104();
  v13 = sub_1DA4211F4();
  OUTLINED_FUNCTION_3_1();
  v123 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_7();
  v18 = v17 - v16;
  v19 = sub_1DA4212E4();
  OUTLINED_FUNCTION_3_1();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_76();
  v119 = v23 - v24;
  OUTLINED_FUNCTION_132();
  MEMORY[0x1EEE9AC00](v25);
  v129 = &v110 - v26;
  OUTLINED_FUNCTION_132();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v110 - v28;
  if (qword_1EE100EF8 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v30 = sub_1DA421A94();
    v31 = __swift_project_value_buffer(v30, static Logger.conversionCategory);
    v33 = *(v21 + 16);
    v125 = v2;
    OUTLINED_FUNCTION_166();
    (v33)();
    v116 = v33;
    v117 = v21 + 16;
    (v33)(v129, v127, v19);
    v118 = v31;
    v32 = sub_1DA421A74();
    LODWORD(v33) = sub_1DA421F64();
    v34 = OUTLINED_FUNCTION_7_1(v33);
    v132 = v4;
    v112 = v13;
    v121 = v19;
    v111 = v18;
    v120 = v21;
    if (v34)
    {
      v35 = OUTLINED_FUNCTION_90();
      v128 = OUTLINED_FUNCTION_92();
      v133[0] = v128;
      *v35 = 136315394;
      v126 = v32;
      sub_1DA4212D4();
      v36 = sub_1DA421194();
      LODWORD(v114) = v33;
      v33 = v19;
      v38 = v37;
      v115 = *(v123 + 8);
      v39 = OUTLINED_FUNCTION_131();
      v40(v39);
      v4 = *(v21 + 8);
      (v4)(v29, v33);
      v41 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v41, v38, v42);
      OUTLINED_FUNCTION_78();

      *(v35 + 4) = v36;
      *(v35 + 12) = 2080;
      v43 = v129;
      sub_1DA4212D4();
      sub_1DA421194();
      OUTLINED_FUNCTION_89();
      v44 = OUTLINED_FUNCTION_131();
      v115(v44);
      v115 = v4;
      (v4)(v43, v33);
      v45 = OUTLINED_FUNCTION_25_3();
      sub_1DA3A5FE8(v45, v38, v46);
      OUTLINED_FUNCTION_78();

      *(v35 + 14) = v18;
      v47 = v126;
      _os_log_impl(&dword_1DA39E000, v126, v114, "Checking if Suggestion shown - %s and engagement %s can be considered a conversion", v35, 0x16u);
      OUTLINED_FUNCTION_151(v48, v49, MEMORY[0x1E69E7CA0] + 8);
      OUTLINED_FUNCTION_75();
      OUTLINED_FUNCTION_17();
    }

    else
    {

      v50 = *(v21 + 8);
      v50(v129, v19);
      v115 = v50;
      v50(v29, v19);
    }

    v51 = sub_1DA4212B4();
    v52 = sub_1DA421604();
    v53 = sub_1DA4215A4();
    sub_1DA3EA3F0(v53, v54, v51);
    v56 = v55;

    v57 = v56 ? v56 : MEMORY[0x1E69E7CC0];
    v58 = *(v57 + 16);
    v126 = MEMORY[0x1E69E7CC0];
    if (v58)
    {
      v114 = v52;
      v133[0] = MEMORY[0x1E69E7CC0];
      sub_1DA3B0160(0, v58, 0);
      v29 = v133[0];
      v33 = v131 + 16;
      v129 = *(v131 + 16);
      OUTLINED_FUNCTION_49();
      v113 = v57;
      v60 = v57 + v59;
      v128 = *(v33 + 56);
      do
      {
        v61 = OUTLINED_FUNCTION_83();
        v62(v61);
        v4 = sub_1DA4212F4();
        v13 = v63;
        v64 = OUTLINED_FUNCTION_60();
        v65(v64);
        v133[0] = v29;
        v67 = *(v29 + 2);
        v66 = *(v29 + 3);
        if (v67 >= v66 >> 1)
        {
          OUTLINED_FUNCTION_21_3(v66);
          OUTLINED_FUNCTION_72();
          sub_1DA3B0160(v69, v70, v71);
          v29 = v133[0];
        }

        *(v29 + 2) = v67 + 1;
        v68 = &v29[16 * v67];
        *(v68 + 4) = v4;
        *(v68 + 5) = v13;
        v60 += v128;
        --v58;
        v19 = v132;
      }

      while (v58);
    }

    else
    {

      v29 = MEMORY[0x1E69E7CC0];
      v19 = v132;
    }

    if (!*(v29 + 2))
    {
      break;
    }

    v72 = sub_1DA4212B4();
    v73 = sub_1DA4215A4();
    sub_1DA3EA3F0(v73, v74, v72);
    v76 = v75;

    v21 = 0;
    v18 = 0;
    if (!v76)
    {
      v76 = MEMORY[0x1E69E7CC0];
    }

    v77 = *(v76 + 16);
    v129 = (v131 + 16);
    v130 = v77;
    v127 = v131 + 8;
    v128 = v76;
    v125 = (v131 + 32);
    v2 = v124;
    while (1)
    {
      if (v130 == v21)
      {

        goto LABEL_32;
      }

      if (v21 >= *(v76 + 16))
      {
        break;
      }

      v4 = ((*(v131 + 80) + 32) & ~*(v131 + 80));
      v78 = *(v131 + 72);
      (*(v131 + 16))(v2, &v4[v76 + v78 * v21], v19);
      v13 = &v110;
      v133[0] = sub_1DA4212F4();
      v133[1] = v79;
      MEMORY[0x1EEE9AC00](v133[0]);
      OUTLINED_FUNCTION_117();
      *(v80 - 16) = v133;
      v82 = sub_1DA412A3C(sub_1DA3B8E14, v81, v29);

      if (v82)
      {
        v13 = v4;
        v123 = v21;
        v4 = *v125;
        v85 = v122;
        OUTLINED_FUNCTION_166();
        (v4)();
        v86 = v126;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = v86;
        v134 = v86;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v89 = OUTLINED_FUNCTION_162();
          sub_1DA3B0508(v89, v90, v91);
          v2 = v124;
          v88 = v134;
        }

        v76 = v128;
        isa = v88[2].isa;
        v92 = v88[3].isa;
        if (isa >= v92 >> 1)
        {
          OUTLINED_FUNCTION_21_3(v92);
          OUTLINED_FUNCTION_72();
          sub_1DA3B0508(v96, v97, v98);
          v2 = v124;
          v88 = v134;
        }

        v94 = v123 + 1;
        v88[2].isa = (isa + 1);
        v126 = v88;
        v95 = v13 + v88 + isa * v78;
        v21 = v94;
        v19 = v132;
        (v4)(v95, v85, v132);
      }

      else
      {
        v83 = OUTLINED_FUNCTION_60();
        v84(v83);
        ++v21;
        v76 = v128;
      }
    }

    __break(1u);
LABEL_34:
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v116(v119, v127, v121);
  v99 = sub_1DA421A74();
  v100 = sub_1DA421F74();
  if (OUTLINED_FUNCTION_147(v100))
  {
    v101 = OUTLINED_FUNCTION_150();
    v102 = OUTLINED_FUNCTION_139();
    v133[0] = v102;
    *v101 = 136315138;
    v103 = v111;
    sub_1DA4212D4();
    sub_1DA421194();
    OUTLINED_FUNCTION_89();
    (*(v123 + 8))(v103, v112);
    v104 = OUTLINED_FUNCTION_107();
    v105(v104);
    v106 = OUTLINED_FUNCTION_25_3();
    sub_1DA3A5FE8(v106, v19, v107);
    OUTLINED_FUNCTION_78();

    *(v101 + 4) = v103;
    _os_log_impl(&dword_1DA39E000, v99, v33, "suggestion entity not present in engagement %s - which is not expected", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v102);
    OUTLINED_FUNCTION_53_0();
    OUTLINED_FUNCTION_7_9();
  }

  else
  {

    v108 = OUTLINED_FUNCTION_107();
    v109(v108);
  }

LABEL_32:
  OUTLINED_FUNCTION_181();
}