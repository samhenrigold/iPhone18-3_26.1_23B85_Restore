uint64_t sub_21CF8E3B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_21CF8F5F8(&qword_28121C588, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken, &unk_21D02BAC8);
  sub_21D021F04();
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
  v13 = *(v12 + 20);
  sub_21CF7F200(a1 + v13, &qword_27CE452E0, &qword_21D0236A0);
  sub_21CF8F6AC(v11, a1 + v13, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
  result = (*(v9 + 56))(a1 + v13, 0, 1, v8);
  v15 = a1 + *(v12 + 24);
  *v15 = a4;
  *(v15 + 4) = 0;
  return result;
}

uint64_t sub_21CF8E564()
{
  v0 = sub_21D021D14();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D021D04();
  type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0);
  sub_21CF8F5F8(qword_28121C430, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest, &unk_21D02BDC0);
  v4 = sub_21D021E94();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21CF8E730(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *sub_21CF8E790(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452F0, &qword_21D0236B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_21CF8E804(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unsigned __int8 *sub_21CF8E878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21D0226A4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21CF8EE04(result, v5);
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
      result = sub_21D0229D4();
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

uint64_t sub_21CF8EE04(uint64_t a1, unint64_t a2)
{
  v2 = sub_21D0226B4();
  v6 = sub_21CF8EE84(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21CF8EE84(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21D022934();
    if (!v9 || (v10 = v9, v11 = sub_21CF8E790(v9, 0), v12 = sub_21CF8EFDC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_21D022604();

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
      return sub_21D022604();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21D0229D4();
LABEL_4:

  return sub_21D022604();
}

unint64_t sub_21CF8EFDC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_21CF8F1FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21D022684();
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
          result = sub_21D0229D4();
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

    result = sub_21CF8F1FC(v12, a6, a7);
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

    result = sub_21D022664();
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

unint64_t sub_21CF8F1FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21D022694();
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
    v5 = MEMORY[0x223D3A140](15, a1 >> 16);
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

unint64_t sub_21CF8F278()
{
  result = qword_27CE45270;
  if (!qword_27CE45270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45270);
  }

  return result;
}

uint64_t sub_21CF8F2CC(uint64_t a1)
{
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CF83390;

  return sub_21CF83288(a1, v4, v6, v5);
}

id sub_21CF8F3B4(id result, unint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
      return result;
    }
  }

  else if (a3 >> 6)
  {
    return sub_21CF8F3E0(result, a2);
  }

  else
  {
  }

  return result;
}

uint64_t sub_21CF8F3E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_21CF8F434(void *a1, unint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 == 2)
    {
    }
  }

  else if (a3 >> 6)
  {
    sub_21CF8F460(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_21CF8F460(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21CF8F4B4(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_21CF8F4C8(a1, a2);
  }

  return a1;
}

uint64_t sub_21CF8F4C8(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) == 0)
  {
    return sub_21CF8F460(result, a2);
  }

  return result;
}

uint64_t sub_21CF8F4D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_21CF8F53C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CF8F59C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = (a1 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken(0) + 20));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t sub_21CF8F5F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CF8F644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CF8F6AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CF8F714(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateCloudComputeTransport(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_21CF83390;

  return sub_21CF857A8(a1, v7, v8, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_21CF8F87C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_21CF8F944(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21CF8F98C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration.clientConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21D021BA4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration.clientConfiguration.setter(uint64_t a1)
{
  v3 = sub_21D021BA4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration.workloadType.getter()
{
  v1 = *(v0 + *(type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0) + 20));

  return v1;
}

uint64_t PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration.workloadType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration.workloadParameters.getter()
{
  type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
}

uint64_t PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration.workloadParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration.init(clientConfiguration:workloadType:workloadParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  v11 = *(v10 + 24);
  v12 = sub_21D021BA4();
  result = (*(*(v12 - 8) + 32))(a5, a1, v12);
  v14 = (a5 + *(v10 + 20));
  *v14 = a2;
  v14[1] = a3;
  *(a5 + v11) = a4;
  return result;
}

uint64_t sub_21CF8FD38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClient.Configuration.Transport(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CF8FDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClient.Configuration.Transport(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CF8FE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClient.Configuration.Transport(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CF8FEFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CF8FF34(uint64_t a1)
{
  result = type metadata accessor for PrivateMLClient.Configuration.Transport(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21CF8FFA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j_j____swift_get_extra_inhabitant_index_8Tm);
}

uint64_t sub_21CF8FFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j_j____swift_store_extra_inhabitant_index_9Tm);
}

uint64_t sub_21CF90060(uint64_t a1)
{
  result = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021BA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021BA4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_21CF902A8(uint64_t a1)
{
  sub_21D021BA4();
  if (v1 <= 0x3F)
  {
    sub_21CF90334(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CF90334(uint64_t a1)
{
  if (!qword_28121B420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45338, &qword_21D0238B0);
    v1 = sub_21D022924();
    if (!v2)
    {
      atomic_store(v1, &qword_28121B420);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21CF903E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[67] = v5;
  v6[66] = a5;
  v6[65] = a4;
  v6[63] = a2;
  v6[64] = a3;
  v6[62] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453C8, &qword_21D023968);
  v6[68] = v7;
  v6[69] = *(v7 - 8);
  v6[70] = swift_task_alloc();
  type metadata accessor for PrivateMLRequest(0);
  v6[71] = swift_task_alloc();
  v6[72] = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0);
  v6[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CF90518, 0, 0);
}

uint64_t sub_21CF90518()
{
  v53 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 568);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);
  sub_21CF94FE0(*(v0 + 504), v2, type metadata accessor for PrivateMLRequest);

  sub_21CF859A0(v2, v5, v4, v3, v1);
  v49 = sub_21D021A54();
  v50 = v8;
  v9 = sub_21CF8E564();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453C0, &qword_21D024700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21D0238C0;
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v51 = inited;

  if (sub_21D022624() >= 801)
  {

    v51 = sub_21CF93D10(800, v9, v11);
  }

  v13 = *(v51 + 16);
  if (!v13)
  {
LABEL_16:

    sub_21CF95248(qword_28121C430, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest, &unk_21D02BDC0);
    v27 = sub_21D021EC4();
    v28 = *(v0 + 584);
    v31 = *(v0 + 560);
    v32 = *(v0 + 552);
    v33 = *(v0 + 544);
    *(v0 + 480) = v27;
    *(v0 + 488) = v34;
    v35 = v27;
    v36 = v34;
    sub_21CF8F3E0(v27, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B0, &qword_21D023948);
    sub_21D022794();
    sub_21CF8F460(v35, v36);
    (*(v32 + 8))(v31, v33);
    sub_21CF951E8(v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest);
    if (qword_27CE451C8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v37 = unk_27CE46920;
    *(v0 + 184) = xmmword_27CE46910;
    *(v0 + 200) = v37;
    *(v0 + 216) = byte_27CE46930;
    sub_21CF7F198(v0 + 184, v0 + 344, &qword_27CE45288, &qword_21D023970);
    v38 = sub_21D01561C();
    sub_21CF7F200(v0 + 184, &qword_27CE45288, &qword_21D023970);
    if ((v38 & 1) == 0)
    {
      sub_21D0227A4();
    }

    v39 = *(v0 + 536);
    v40 = *(v0 + 496);
    v41 = *(v0 + 504);
    v42 = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_outputStream;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A8, &qword_21D023940);
    (*(*(v43 - 8) + 16))(v40, v39 + v42, v43);
    v44 = type metadata accessor for PrivateMLRequest.Response(0);
    sub_21CF94FE0(v41, v40 + *(v44 + 20), type metadata accessor for PrivateMLRequest);
    v45 = sub_21D022484();
    v46 = sub_21D0228B4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_21CF72000, v45, v46, "sendProtoAndReturnPrivateMLResponse construct privateMLResponse.", v47, 2u);
      MEMORY[0x223D3ADE0](v47, -1, -1);
    }

    v29 = *(v0 + 8);
    goto LABEL_20;
  }

  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = 0;
  v15 = (v51 + 40);
  v48 = v13;
  while (1)
  {
    v16 = v14 + 1;
    v17 = __OFADD__(v14, 1);
    v18 = unk_28121B198;
    *(v0 + 104) = xmmword_28121B188;
    *(v0 + 120) = v18;
    *(v0 + 136) = byte_28121B1A8;
    sub_21CF7F198(v0 + 104, v0 + 264, &qword_27CE45288, &qword_21D023970);
    v19 = sub_21D01561C();
    sub_21CF7F200(v0 + 104, &qword_27CE45288, &qword_21D023970);
    if ((v19 & 1) == 0)
    {
      goto LABEL_8;
    }

    v20 = sub_21D022484();
    v21 = sub_21D0228A4();

    if (os_log_type_enabled(v20, v21))
    {
      break;
    }

LABEL_8:
    v15 += 2;
    ++v14;
    if (v16 == v13)
    {
      goto LABEL_16;
    }
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v52[0] = v23;
  *v22 = 136315906;
  *(v22 + 4) = sub_21CF9703C(v49, v50, v52);
  *(v22 + 12) = 2048;
  if (!v17)
  {
    *(v22 + 14) = v16;
    *(v22 + 22) = 2048;
    *(v22 + 24) = *(v51 + 16);

    *(v22 + 32) = 2082;
    v24 = *(v15 - 1);
    v25 = *v15;

    v26 = sub_21CF9703C(v24, v25, v52);

    *(v22 + 34) = v26;
    _os_log_impl(&dword_21CF72000, v20, v21, "%s proto payload %ld/%ld: %{public}s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v23, -1, -1);
    MEMORY[0x223D3ADE0](v22, -1, -1);

    v13 = v48;
    goto LABEL_8;
  }

  __break(1u);
  swift_once();
  swift_beginAccess();
  v6 = unk_27CE46920;
  *(v0 + 64) = xmmword_27CE46910;
  *(v0 + 80) = v6;
  *(v0 + 96) = byte_27CE46930;
  sub_21CF7F198(v0 + 64, v0 + 224, &qword_27CE45288, &qword_21D023970);
  v7 = sub_21D01561C();
  sub_21CF7F200(v0 + 64, &qword_27CE45288, &qword_21D023970);
  if ((v7 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B0, &qword_21D023948);
    sub_21D0227A4();
  }

  swift_willThrow();

  v29 = *(v0 + 8);
LABEL_20:

  return v29();
}

void sub_21CF90D60(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_basicTask))
  {

    v2 = sub_21D022484();
    v3 = sub_21D0228B4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21CF72000, v2, v3, "Cancelling basic task", v4, 2u);
      MEMORY[0x223D3ADE0](v4, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45268, &qword_21D023D50);
    sub_21D0227D4();
  }

  else
  {
    oslog = sub_21D022484();
    v5 = sub_21D0228C4();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CF72000, oslog, v5, "No BasicTask available to cancel.", v6, 2u);
      MEMORY[0x223D3ADE0](v6, -1, -1);
    }
  }
}

uint64_t sub_21CF90F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
  v5[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453D0, &qword_21D023988);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B8, &unk_21D023950);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A8, &qword_21D023940);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453D8, &qword_21D023990);
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B0, &qword_21D023948);
  v5[20] = v10;
  v5[21] = *(v10 - 8);
  v5[22] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A0, &qword_21D023938);
  v5[23] = v11;
  v5[24] = *(v11 - 8);
  v5[25] = swift_task_alloc();
  v12 = sub_21D0224A4();
  v5[26] = v12;
  v5[27] = *(v12 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CF9127C, 0, 0);
}

uint64_t sub_21CF9127C()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[6];
  *(v5 + OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_basicTask) = 0;
  sub_21D022494();
  v6 = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_logger;
  (*(v4 + 32))(v5 + OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_logger, v2, v3);
  (*(v4 + 16))(v1, v5 + v6, v3);
  v7 = sub_21D022484();
  v8 = sub_21D0228B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21CF72000, v7, v8, "Create PrivateMLClientCloudComputeConnection.", v9, 2u);
    MEMORY[0x223D3ADE0](v9, -1, -1);
  }

  v10 = v0[27];
  v11 = v0[25];
  v38 = v0[26];
  v39 = v0[28];
  v12 = v0[24];
  v40 = v0[22];
  v41 = v0[23];
  v13 = v7;
  v14 = v0[21];
  v15 = v0[18];
  v16 = v0[19];
  v17 = v0[17];
  v46 = v0[16];
  v47 = v0[15];
  v44 = v0[20];
  v45 = v0[13];
  v48 = v0[14];
  v49 = v0[12];
  v50 = v0[11];
  v18 = v0[9];
  v42 = v0[10];
  v43 = v0[8];
  v51 = v0[7];
  v19 = v0[6];
  v52 = v0[4];

  (*(v10 + 8))(v39, v38);
  (*(v15 + 104))(v16, *MEMORY[0x277D85778], v17);
  sub_21D022784();
  (*(v15 + 8))(v16, v17);
  (*(v12 + 32))(v19 + OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_inputStream, v11, v41);
  (*(v14 + 32))(v19 + OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_inputContinuation, v40, v44);
  (*(v18 + 104))(v42, *MEMORY[0x277D858A0], v43);
  sub_21D0227F4();
  (*(v18 + 8))(v42, v43);
  (*(v47 + 32))(v19 + OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_outputStream, v46, v48);
  (*(v49 + 32))(v19 + OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_outputContinuation, v45, v50);
  v20 = sub_21D022774();
  (*(*(v20 - 8) + 56))(v51, 1, 1, v20);
  v21 = v0[6];
  v22 = v0[7];
  if (v52)
  {
    v24 = v0[4];
    v23 = v0[5];
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v24;
    v25[5] = v23;
    v25[6] = v21;
    sub_21CF94E9C(v24, v23);

    v26 = sub_21CF9FF94(0, 0, v22, &unk_21D0239B8, v25);

    sub_21CF774DC(v24, v23);
  }

  else
  {
    v27 = v0[2];
    v28 = v0[3];
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45278, &unk_21D023620) - 8);
    v30 = *(v29 + 64);
    v31 = swift_task_alloc();
    sub_21CF7F198(v27, v31, &qword_27CE45278, &unk_21D023620);
    v32 = (*(v29 + 80) + 40) & ~*(v29 + 80);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v28;
    sub_21CF94C24(v31, v33 + v32);
    *(v33 + ((v30 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;

    v26 = sub_21CF9FF94(0, 0, v22, &unk_21D0239A8, v33);
  }

  v34 = v0[6];
  sub_21CF7F200(v0[2], &qword_27CE45278, &unk_21D023620);
  *(v34 + OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_basicTask) = v26;

  v35 = v0[1];
  v36 = v0[6];

  return v35(v36);
}

uint64_t sub_21CF9183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_21CF91860, 0, 0);
}

uint64_t sub_21CF91860()
{
  v1 = v0[2];
  if (!v1)
  {
    return sub_21D022A24();
  }

  v2 = v0[3];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_inputStream;
  v5 = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_outputStream;
  v6 = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_inputContinuation;
  v7 = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_outputContinuation;

  v1(v3 + v4, v3 + v5, v3 + v6, v3 + v7);
  sub_21CF774DC(v1, v2);
  v8 = v0[1];

  return v8();
}

uint64_t sub_21CF91990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_21CF919B4, 0, 0);
}

uint64_t sub_21CF919B4()
{
  if (!v0[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45278, &unk_21D023620);
  v2 = swift_task_alloc();
  v0[6] = v2;
  sub_21CF7F198(v1, v2, &qword_27CE45278, &unk_21D023620);
  v3 = sub_21D021C54();
  v0[7] = v3;
  v4 = *(v3 - 8);
  v0[8] = v4;
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2821A1DF8]();
  }

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_21CF91B48;

  return MEMORY[0x2821A1DF8]();
}

uint64_t sub_21CF91B48()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_21CF91C98;
  }

  else
  {
    (*(v2[8] + 8))(v2[6], v2[7]);

    v3 = sub_21CF91C80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CF91C98()
{
  v1 = v0[10];
  (*(v0[8] + 8))(v0[6], v0[7]);

  v2 = v1;
  v3 = sub_21D022484();
  v4 = sub_21D0228C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_21CF72000, v3, v4, "No BasicTask available. Caught error: %@", v6, 0xCu);
    sub_21CF7F200(v7, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v7, -1, -1);
    MEMORY[0x223D3ADE0](v6, -1, -1);
  }

  v10 = v0[10];

  v0[2] = v10;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B8, &unk_21D023950);
  sub_21D022814();

  v12 = v0[1];

  return v12();
}

uint64_t sub_21CF91E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[120] = a4;
  v4[119] = a3;
  v4[118] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453E0, &qword_21D0239D8);
  v4[121] = v5;
  v4[122] = *(v5 - 8);
  v4[123] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453E8, &qword_21D0239E0);
  v4[124] = v6;
  v4[125] = *(v6 - 8);
  v4[126] = swift_task_alloc();
  v7 = *(type metadata accessor for PrivateMLClientInputServiceRequestAsyncSequence(0) - 8);
  v4[127] = v7;
  v4[128] = *(v7 + 64);
  v4[129] = swift_task_alloc();
  v4[130] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CF92004, 0, 0);
}

uint64_t sub_21CF92004()
{
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = unk_27CE46920;
  *(v0 + 696) = xmmword_27CE46910;
  *(v0 + 712) = v1;
  *(v0 + 728) = byte_27CE46930;
  sub_21CF7F198(v0 + 696, v0 + 776, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  sub_21CF7F200(v0 + 696, &qword_27CE45288, &qword_21D023970);
  *(v0 + 1048) = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_logger;
  v3 = sub_21D022484();
  v4 = sub_21D0228B4();
  v5 = os_log_type_enabled(v3, v4);
  if (v2)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CF72000, v3, v4, "Start waiting on async inputstream", v6, 2u);
      MEMORY[0x223D3ADE0](v6, -1, -1);
    }

    v7 = *(v0 + 1040);
    v8 = *(v0 + 1032);
    v30 = *(v0 + 1016);
    v9 = *(v0 + 960);

    v10 = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_inputStream;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A0, &qword_21D023938);
    (*(*(v11 - 8) + 16))(v7, v9 + v10, v11);
    v12 = sub_21D021C24();
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    v15 = swift_task_alloc();
    *(v0 + 1056) = v15;
    (*(v13 + 16))();
    sub_21CF94FE0(v7, v8, type metadata accessor for PrivateMLClientInputServiceRequestAsyncSequence);
    v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v17 = (v14 + *(v30 + 80) + v16) & ~*(v30 + 80);
    v18 = swift_allocObject();
    *(v0 + 1064) = v18;
    (*(v13 + 32))(v18 + v16, v15, v12);
    sub_21CF95048(v8, v18 + v17);
    swift_asyncLet_begin();
    v19 = sub_21D022484();
    v20 = sub_21D0228B4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_21CF72000, v19, v20, "Start streaming output.", v21, 2u);
      MEMORY[0x223D3ADE0](v21, -1, -1);
    }

    v22 = sub_21D021C34();
    *(v0 + 1072) = v22;
    *(v0 + 1080) = *(v22 - 8);
    *(v0 + 1088) = swift_task_alloc();
    sub_21D021C44();
    *(v0 + 1096) = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_outputContinuation;
    v23 = sub_21CF94F80();
    v24 = swift_task_alloc();
    *(v0 + 1104) = v24;
    *v24 = v0;
    v24[1] = sub_21CF9258C;
    v25 = *(v0 + 1072);

    return MEMORY[0x282200308](v0 + 888, v25, v23);
  }

  else
  {
    if (v5)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21CF72000, v3, v4, "Start waiting on inputstream.", v26, 2u);
      MEMORY[0x223D3ADE0](v26, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A0, &qword_21D023938);
    sub_21D0227B4();
    v27 = swift_task_alloc();
    *(v0 + 1120) = v27;
    *v27 = v0;
    v27[1] = sub_21CF92D14;
    v28 = *(v0 + 968);

    return MEMORY[0x2822003E8](v0 + 840, 0, 0, v28);
  }
}

uint64_t sub_21CF9258C()
{
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v2 = sub_21CF92858;
  }

  else
  {
    v2 = sub_21CF926A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CF926A0()
{
  v1 = v0[112];
  if (v1 >> 60 == 15)
  {
    (*(v0[135] + 8))(v0[136], v0[134]);

    return MEMORY[0x282200920](v0 + 2);
  }

  else
  {
    v2 = v0[111];
    v3 = v0[126];
    v4 = v0[125];
    v5 = v0[124];
    v0[113] = v2;
    v0[114] = v1;
    sub_21CF8F3E0(v2, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B8, &unk_21D023950);
    sub_21D022804();
    sub_21CF94FCC(v2, v1);
    (*(v4 + 8))(v3, v5);
    v6 = sub_21CF94F80();
    v7 = swift_task_alloc();
    v0[138] = v7;
    *v7 = v0;
    v7[1] = sub_21CF9258C;
    v8 = v0[134];

    return MEMORY[0x282200308](v0 + 111, v8, v6);
  }
}

uint64_t sub_21CF92858()
{
  *(v0 + 936) = *(v0 + 1112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45268, &qword_21D023D50);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_21CF928E8, 0, 0);
}

uint64_t sub_21CF928E8()
{
  (*(v0[135] + 8))(v0[136], v0[134]);

  return MEMORY[0x282200920](v0 + 2);
}

uint64_t sub_21CF9298C()
{
  sub_21CF951E8(v0[130], type metadata accessor for PrivateMLClientInputServiceRequestAsyncSequence);

  v1 = v0[139];
  v2 = v0[133];
  v3 = v1;
  v4 = sub_21D022484();
  v5 = sub_21D0228C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_21CF72000, v4, v5, "Error: basicTask failed %@", v6, 0xCu);
    sub_21CF7F200(v7, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v7, -1, -1);
    MEMORY[0x223D3ADE0](v6, -1, -1);
  }

  v0[116] = v1;
  v10 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B8, &unk_21D023950);
  sub_21D022814();

  sub_21CF93B20();
  sub_21CF774DC(&unk_21D0239F0, v2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_21CF92BBC()
{
  sub_21CF951E8(v0[130], type metadata accessor for PrivateMLClientInputServiceRequestAsyncSequence);
  v1 = v0[133];

  v2 = sub_21D022484();
  v3 = sub_21D0228B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CF72000, v2, v3, "Finished basicTask", v4, 2u);
    MEMORY[0x223D3ADE0](v4, -1, -1);
  }

  sub_21CF93B20();
  sub_21CF774DC(&unk_21D0239F0, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_21CF92D14()
{

  return MEMORY[0x2822009F8](sub_21CF92E10, 0, 0);
}

uint64_t sub_21CF92E10()
{
  v1 = v0[105];
  v0[141] = v1;
  v2 = v0[106];
  v0[142] = v2;
  if (v2 >> 60 == 15)
  {
    (*(v0[122] + 8))(v0[123], v0[121]);
    v3 = sub_21D0227E4();
    v4 = sub_21D022484();
    if (v3)
    {
      v5 = sub_21D0228C4();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_21CF72000, v4, v5, "Basic Task Task was cancelled.", v6, 2u);
        MEMORY[0x223D3ADE0](v6, -1, -1);
      }

      sub_21CF93B20();

      v7 = v0[1];

      return v7();
    }

    else
    {
      v10 = sub_21D0228B4();
      if (os_log_type_enabled(v4, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_21CF72000, v4, v10, "Start streaming output.", v11, 2u);
        MEMORY[0x223D3ADE0](v11, -1, -1);
      }

      v12 = sub_21D021C34();
      v0[145] = v12;
      v0[146] = *(v12 - 8);
      v0[147] = swift_task_alloc();
      sub_21D021C44();
      v0[148] = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_outputContinuation;
      v13 = sub_21CF94F80();
      v14 = swift_task_alloc();
      v0[149] = v14;
      *v14 = v0;
      v14[1] = sub_21CF93308;
      v15 = v0[145];

      return MEMORY[0x282200308](v0 + 107, v15, v13);
    }
  }

  else
  {
    v9 = swift_task_alloc();
    v0[143] = v9;
    *v9 = v0;
    v9[1] = sub_21CF93140;

    return MEMORY[0x2821A1E68](v1, v2);
  }
}

uint64_t sub_21CF93140()
{
  *(*v1 + 1152) = v0;

  if (v0)
  {
    v2 = sub_21CF93918;
  }

  else
  {
    v2 = sub_21CF93254;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CF93254()
{
  sub_21CF94FCC(v0[141], v0[142]);
  v1 = swift_task_alloc();
  v0[140] = v1;
  *v1 = v0;
  v1[1] = sub_21CF92D14;
  v2 = v0[121];

  return MEMORY[0x2822003E8](v0 + 105, 0, 0, v2);
}

uint64_t sub_21CF93308()
{
  *(*v1 + 1200) = v0;

  if (v0)
  {
    v2 = sub_21CF93688;
  }

  else
  {
    v2 = sub_21CF9341C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CF9341C()
{
  v1 = v0[108];
  if (v1 >> 60 == 15)
  {
    (*(v0[146] + 8))(v0[147], v0[145]);

    v2 = sub_21D022484();
    v3 = sub_21D0228B4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21CF72000, v2, v3, "Finished basicTask", v4, 2u);
      MEMORY[0x223D3ADE0](v4, -1, -1);
    }

    sub_21CF93B20();
    sub_21CF774DC(0, 0);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[107];
    v8 = v0[126];
    v9 = v0[125];
    v10 = v0[124];
    v0[109] = v7;
    v0[110] = v1;
    sub_21CF8F3E0(v7, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B8, &unk_21D023950);
    sub_21D022804();
    sub_21CF94FCC(v7, v1);
    (*(v9 + 8))(v8, v10);
    v11 = sub_21CF94F80();
    v12 = swift_task_alloc();
    v0[149] = v12;
    *v12 = v0;
    v12[1] = sub_21CF93308;
    v13 = v0[145];

    return MEMORY[0x282200308](v0 + 107, v13, v11);
  }
}

uint64_t sub_21CF93688()
{
  *(v0 + 920) = *(v0 + 1200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45268, &qword_21D023D50);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_21CF93718, 0, 0);
}

uint64_t sub_21CF93718()
{
  (*(v0[146] + 8))(v0[147], v0[145]);

  v1 = v0[150];
  v2 = v1;
  v3 = sub_21D022484();
  v4 = sub_21D0228C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_21CF72000, v3, v4, "Error: basicTask failed %@", v5, 0xCu);
    sub_21CF7F200(v6, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v6, -1, -1);
    MEMORY[0x223D3ADE0](v5, -1, -1);
  }

  v0[116] = v1;
  v9 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B8, &unk_21D023950);
  sub_21D022814();

  sub_21CF93B20();
  sub_21CF774DC(0, 0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21CF93918()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[121];
  sub_21CF94FCC(v0[141], v0[142]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[144];
  v5 = v4;
  v6 = sub_21D022484();
  v7 = sub_21D0228C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21CF72000, v6, v7, "Error: basicTask failed %@", v8, 0xCu);
    sub_21CF7F200(v9, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v9, -1, -1);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  v0[116] = v4;
  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B8, &unk_21D023950);
  sub_21D022814();

  sub_21CF93B20();
  sub_21CF774DC(0, 0);

  v13 = v0[1];

  return v13();
}

void sub_21CF93B20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B0, &qword_21D023948);
  sub_21D0227A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B8, &unk_21D023950);
  sub_21D022814();
  v0 = sub_21D022484();
  v1 = sub_21D0228B4();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21CF72000, v0, v1, "BasicTask defer complete.", v2, 2u);
    MEMORY[0x223D3ADE0](v2, -1, -1);
  }
}

uint64_t sub_21CF93C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  v6 = type metadata accessor for PrivateMLClientInputServiceRequestAsyncSequence(0);
  v7 = sub_21CF95248(&qword_27CE453F8, type metadata accessor for PrivateMLClientInputServiceRequestAsyncSequence, &unk_21D023A88);
  *v5 = v3;
  v5[1] = sub_21CF83390;

  return MEMORY[0x2821A1E60](a3, v6, v7);
}

uint64_t sub_21CF93D10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = a2;
    v6 = 0;
    v35 = 4 * v3;
    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v36 = v7 | (v3 << 16);
    while (1)
    {
      result = sub_21D022634();
      v10 = (v9 & 1) != 0 ? v36 : result;
      if (v10 >> 14 < v6)
      {
        break;
      }

      v11 = v5;
      v12 = sub_21D0226B4();
      v14 = v13;
      v16 = v15;
      v18 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_21CFB4E0C(0, *(v4 + 2) + 1, 1, v4);
      }

      v20 = *(v4 + 2);
      v19 = *(v4 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v4 = sub_21CFB4E0C((v19 > 1), v20 + 1, 1, v4);
      }

      *(v4 + 2) = v21;
      v22 = &v4[32 * v20];
      *(v22 + 4) = v12;
      *(v22 + 5) = v14;
      *(v22 + 6) = v16;
      *(v22 + 7) = v18;
      v6 = v10 >> 14;
      v5 = v11;
      if (v10 >> 14 >= v35)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = *(MEMORY[0x277D84F90] + 16);
    if (v21)
    {
LABEL_18:
      v37 = MEMORY[0x277D84F90];
      sub_21CF94AF8(0, v21, 0);
      v23 = v37;
      v24 = (v4 + 56);
      do
      {
        v25 = *(v24 - 3);
        v26 = *(v24 - 2);
        v27 = *(v24 - 1);
        v28 = *v24;

        v29 = MEMORY[0x223D3A0C0](v25, v26, v27, v28);
        v31 = v30;

        v33 = *(v37 + 16);
        v32 = *(v37 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_21CF94AF8((v32 > 1), v33 + 1, 1);
        }

        *(v37 + 16) = v33 + 1;
        v34 = v37 + 16 * v33;
        *(v34 + 32) = v29;
        *(v34 + 40) = v31;
        v24 += 4;
        --v21;
      }

      while (v21);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    return v23;
  }

  return result;
}

uint64_t sub_21CF93F60()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_inputStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A0, &qword_21D023938);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_outputStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A8, &qword_21D023940);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_inputContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B0, &qword_21D023948);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_outputContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453B8, &unk_21D023950);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC15PrivateMLClient37PrivateMLClientCloudComputeConnection_logger;
  v10 = sub_21D0224A4();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

void sub_21CF94164(uint64_t a1)
{
  sub_21CF94358(319, &qword_27CE45380, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_21CF943AC(319, &qword_27CE45388, MEMORY[0x277D858D8]);
    if (v2 <= 0x3F)
    {
      sub_21CF94358(319, &qword_27CE45390, MEMORY[0x277D85788]);
      if (v3 <= 0x3F)
      {
        sub_21CF943AC(319, &qword_27CE45398, MEMORY[0x277D858B0]);
        if (v4 <= 0x3F)
        {
          sub_21D0224A4();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_21CF94358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277CC9318]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21CF943AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45268, &qword_21D023D50);
    v7 = a3(a1, MEMORY[0x277CC9318], v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21CF94434(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  v3[5] = v2;
  v3[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453E0, &qword_21D0239D8);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CF94524, 0, 0);
}

uint64_t sub_21CF94524()
{
  v1 = v0[6];
  sub_21CF94FE0(v0[5], v1, type metadata accessor for PrivateMLClientInputServiceRequestAsyncSequence);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A0, &qword_21D023938);
  sub_21D0227B4();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_21CF9464C;
  v4 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v4);
}

uint64_t sub_21CF9464C()
{

  return MEMORY[0x2822009F8](sub_21CF94748, 0, 0);
}

uint64_t sub_21CF94748()
{
  v1 = *(v0 + 32);
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  *v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CF947E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a1;
  v6[5] = v5;
  v6[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453E0, &qword_21D0239D8);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CF948D4, 0, 0);
}

uint64_t sub_21CF948D4()
{
  v1 = v0[6];
  sub_21CF94FE0(v0[5], v1, type metadata accessor for PrivateMLClientInputServiceRequestAsyncSequence);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A0, &qword_21D023938);
  sub_21D0227B4();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_21CF949FC;
  v4 = v0[7];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v4);
}

uint64_t sub_21CF949FC()
{

  return MEMORY[0x2822009F8](sub_21CF9539C, 0, 0);
}

char *sub_21CF94AF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CF94B18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21CF94B18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453C0, &qword_21D024700);
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

uint64_t sub_21CF94C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45278, &unk_21D023620);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CF94C94(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45278, &unk_21D023620) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_21CF83390;

  return sub_21CF91990(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_21CF94DD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CF95398;

  return sub_21CF9183C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21CF94E9C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21CF94EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21CF95398;

  return sub_21CF91E5C(a1, a2, a3, v3);
}

unint64_t sub_21CF94F80()
{
  result = qword_27CE453F0;
  if (!qword_27CE453F0)
  {
    sub_21D021C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE453F0);
  }

  return result;
}

uint64_t sub_21CF94FCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21CF8F460(result, a2);
  }

  return result;
}

uint64_t sub_21CF94FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CF95048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClientInputServiceRequestAsyncSequence(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CF950AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21D021C24() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PrivateMLClientInputServiceRequestAsyncSequence(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21CF95398;

  return sub_21CF93C1C(a1, v1 + v6, v1 + v9);
}

uint64_t sub_21CF951E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CF95248(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21CF952B8(uint64_t a1)
{
  sub_21CF94358(319, &qword_27CE45380, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21CF953DC()
{
  sub_21D022C04();
  MEMORY[0x223D3A6E0](1);
  return sub_21D022C24();
}

uint64_t sub_21CF95448()
{
  sub_21D022C04();
  MEMORY[0x223D3A6E0](1);
  return sub_21D022C24();
}

uint64_t PrivateMLClient.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PrivateMLClient.init(configuration:)(a1);
  return v2;
}

char *PrivateMLClient.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v40 = *v1;
  v3 = sub_21D022414();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for PrivateCloudComputeTransport(0);
  MEMORY[0x28223BE20](v41);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v36 - v11;
  v13 = type metadata accessor for PrivateMLClient.Configuration.Transport(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PrivateMLClient.Configuration(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21D0224A4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[1] = "tie_server_token_nanos1";
  sub_21D022494();
  v42 = OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_logger;
  v43 = v20;
  v23 = *(v20 + 32);
  v44 = v19;
  v23(&v2[OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_logger], v22, v19);
  v24 = OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_configuration;
  sub_21CF97598(v51, &v2[OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_configuration], type metadata accessor for PrivateMLClient.Configuration);
  sub_21CF97598(&v2[v24], v18, type metadata accessor for PrivateMLClient.Configuration);
  sub_21CF95C24(v18, v15, type metadata accessor for PrivateMLClient.Configuration.Transport);
  sub_21CF95C24(v15, v12, type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration);
  v45 = v12;
  v25 = v12;
  v26 = v41;
  sub_21CF97598(v25, v10, type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration);
  v49 = v26;
  v50 = &off_282E91F20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
  v47 = v6;
  sub_21CF97598(v10, v6, type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration);
  v28 = sub_21D021BA4();
  MEMORY[0x28223BE20](v28);
  (*(v30 + 16))(v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_21D021BE4();
  swift_allocObject();
  v31 = v46;
  v32 = sub_21D021BB4();
  if (v31)
  {
    sub_21CF97600(v51, type metadata accessor for PrivateMLClient.Configuration);
    sub_21CF97600(v10, type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration);
    sub_21CF97600(v45, type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration);
    sub_21CF97600(v47, type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration);
    __swift_deallocate_boxed_opaque_existential_1(&v48);
    (*(v43 + 8))(&v2[v42], v44);
    sub_21CF97600(&v2[v24], type metadata accessor for PrivateMLClient.Configuration);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v47;
    *&v47[*(v26 + 20)] = v32;
    sub_21D022494();
    sub_21CF97600(v10, type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration);
    sub_21CF95C24(v33, boxed_opaque_existential_1, type metadata accessor for PrivateCloudComputeTransport);
    sub_21CF97600(v45, type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration);
    sub_21CF73FC8(&v48, &v2[OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_transport]);
    (*(v43 + 16))(v22, &v2[v42], v44);
    v34 = v37;
    sub_21D0223F4();
    sub_21CF97600(v51, type metadata accessor for PrivateMLClient.Configuration);
    (*(v38 + 32))(&v2[OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_signPoster], v34, v39);
  }

  return v2;
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

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x223D3ADE0);
  }

  return result;
}

uint64_t sub_21CF95C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t PrivateMLClient.prewarm(requestIdentifier:workloadParameters:featureIdentifier:bundleIdentifierOverride:sessionID:isPrewarmImminent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 96) = a8;
  *(v9 + 104) = v8;
  *(v9 + 168) = v13;
  *(v9 + 80) = a6;
  *(v9 + 88) = a7;
  *(v9 + 64) = a4;
  *(v9 + 72) = a5;
  *(v9 + 48) = a2;
  *(v9 + 56) = a3;
  *(v9 + 40) = a1;
  v10 = sub_21D0223E4();
  *(v9 + 112) = v10;
  *(v9 + 120) = *(v10 - 8);
  *(v9 + 128) = swift_task_alloc();
  *(v9 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CF95D74, 0, 0);
}

uint64_t sub_21CF95D74()
{

  sub_21D0223D4();
  v1 = sub_21D022404();
  v2 = sub_21D0228F4();

  if (sub_21D022914())
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[6];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v7 = 136446722;
    *(v7 + 4) = sub_21CF9703C(v6, v5, &v33);
    *(v7 + 12) = 2082;
    v9 = sub_21D022534();
    v11 = sub_21CF9703C(v9, v10, &v33);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2082;
    *(v7 + 24) = sub_21CF9703C(v4, v3, &v33);
    v12 = sub_21D0223C4();
    _os_signpost_emit_with_name_impl(&dword_21CF72000, v1, v2, v12, "prewarm", "requestIdentifier=%{public, signpost.description=attribute,public}s) workload=%{public, signpost.description=attribute,public}s) featureIdentifier=%{public, signpost.description=attribute,public}s)", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v8, -1, -1);
    MEMORY[0x223D3ADE0](v7, -1, -1);
  }

  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[15];
  (*(v15 + 16))(v0[16], v13, v14);
  sub_21D022464();
  swift_allocObject();
  v0[18] = sub_21D022454();
  (*(v15 + 8))(v13, v14);
  if (qword_28121E108[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6B0 == 1)
  {

    v16 = sub_21D022484();
    v17 = sub_21D0228D4();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = v0[5];
      v18 = v0[6];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_21CF9703C(v19, v18, &v33);
      _os_log_impl(&dword_21CF72000, v16, v17, "%s Running internal build, applying overrides.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223D3ADE0](v21, -1, -1);
      MEMORY[0x223D3ADE0](v20, -1, -1);
    }

    v22 = sub_21CFB6F58(v0[5], v0[6], v0[7]);
  }

  else
  {
    v22 = v0[7];
  }

  v0[19] = v22;
  __swift_project_boxed_opaque_existential_1((v0[13] + OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_transport), *(v0[13] + OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_transport + 24));
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_21CF961BC;
  v25 = v0[11];
  v24 = v0[12];
  v26 = v0[9];
  v27 = v0[10];
  v28 = v0[8];
  v30 = v0[5];
  v29 = v0[6];

  return sub_21CF835DC(v30, v29, v22, v28, v26, v24, v27, v25);
}

uint64_t sub_21CF961BC()
{

  return MEMORY[0x2822009F8](sub_21CF962D4, 0, 0);
}

uint64_t sub_21CF962D4()
{
  sub_21CF96AF0(v0[13], v0[18], "prewarm");

  v1 = v0[1];

  return v1();
}

uint64_t PrivateMLClient.withPrivateMLRequest<A>(request:prompt:delimiters:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = sub_21D0223E4();
  v9[11] = v10;
  v9[12] = *(v10 - 8);
  v9[13] = swift_task_alloc();
  v9[14] = swift_task_alloc();
  type metadata accessor for PrivateMLRequest(0);
  v9[15] = swift_task_alloc();
  v9[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CF9647C, 0, 0);
}

uint64_t sub_21CF9647C()
{
  v37 = v0;
  sub_21CF97598(v0[3], v0[16], type metadata accessor for PrivateMLRequest);
  sub_21D0223D4();
  v1 = sub_21D022404();
  v2 = sub_21D0228F4();
  v3 = sub_21D022914();
  v4 = v0[16];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v36 = v6;
    *v5 = 136446210;
    v7 = sub_21D021A54();
    v9 = sub_21CF9703C(v7, v8, &v36);

    *(v5 + 4) = v9;
    sub_21CF97600(v4, type metadata accessor for PrivateMLRequest);
    v10 = sub_21D0223C4();
    _os_signpost_emit_with_name_impl(&dword_21CF72000, v1, v2, v10, "Execute PrivateML Request", "requestIdentifier=%{public, signpost.description=attribute,public}s)", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D3ADE0](v6, -1, -1);
    MEMORY[0x223D3ADE0](v5, -1, -1);
  }

  else
  {

    sub_21CF97600(v4, type metadata accessor for PrivateMLRequest);
  }

  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[12];
  v14 = v0[11];
  v15 = v0[3];
  (*(v13 + 16))(v0[13], v12, v14);
  sub_21D022464();
  swift_allocObject();
  v0[17] = sub_21D022454();
  (*(v13 + 8))(v12, v14);
  sub_21CF97598(v15, v11, type metadata accessor for PrivateMLRequest);
  v16 = sub_21D022484();
  v17 = sub_21D0228D4();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[15];
  if (v18)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v21;
    *v20 = 136315138;
    sub_21D021A74();
    sub_21CF97660();
    v22 = sub_21D022B04();
    v24 = v23;
    sub_21CF97600(v19, type metadata accessor for PrivateMLRequest);
    v25 = sub_21CF9703C(v22, v24, &v36);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_21CF72000, v16, v17, "%s starting private ML request", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x223D3ADE0](v21, -1, -1);
    MEMORY[0x223D3ADE0](v20, -1, -1);
  }

  else
  {

    sub_21CF97600(v19, type metadata accessor for PrivateMLRequest);
  }

  __swift_project_boxed_opaque_existential_1((v0[10] + OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_transport), *(v0[10] + OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_transport + 24));
  v26 = swift_task_alloc();
  v0[18] = v26;
  *v26 = v0;
  v26[1] = sub_21CF96874;
  v27 = v0[8];
  v28 = v0[9];
  v29 = v0[6];
  v30 = v0[7];
  v31 = v0[4];
  v32 = v0[5];
  v33 = v0[2];
  v34 = v0[3];

  return sub_21CF7FECC(v33, v34, v31, v32, v29, v30, v27, v28);
}

uint64_t sub_21CF96874()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_21CF96A3C;
  }

  else
  {
    v2 = sub_21CF96988;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CF96988()
{
  sub_21CF96AF0(v0[10], v0[17], "Execute PrivateML Request");

  v1 = v0[1];

  return v1();
}

uint64_t sub_21CF96A3C()
{
  sub_21CF96AF0(v0[10], v0[17], "Execute PrivateML Request");

  v1 = v0[1];

  return v1();
}

uint64_t sub_21CF96AF0(uint64_t a1, uint64_t a2, const char *a3)
{
  v18 = a3;
  v3 = sub_21D022424();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21D0223E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21D022404();
  sub_21D022444();
  v12 = sub_21D0228E4();
  if (sub_21D022914())
  {

    sub_21D022474();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_21D0223C4();
    _os_signpost_emit_with_name_impl(&dword_21CF72000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x223D3ADE0](v14, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t PrivateMLClient.deinit()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_signPoster;
  v4 = sub_21D022414();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_21CF97600(v0 + OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_configuration, type metadata accessor for PrivateMLClient.Configuration);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_transport));
  return v0;
}

uint64_t PrivateMLClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_signPoster;
  v4 = sub_21D022414();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_21CF97600(v0 + OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_configuration, type metadata accessor for PrivateMLClient.Configuration);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15PrivateMLClient15PrivateMLClient_transport));

  return swift_deallocClassInstance();
}

uint64_t sub_21CF96F2C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CF96FC0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_21CF96FD0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_21CF96FE0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_21CF9703C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_21CF9703C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21CF97108(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21CF978C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21CF97108(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21CF97214(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21D0229D4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_21CF97214(uint64_t a1, unint64_t a2)
{
  v3 = sub_21CF97260(a1, a2);
  sub_21CF97390(&unk_282E915F0);
  return v3;
}

void *sub_21CF97260(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21CF8E790(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21D0229D4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21D022654();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21CF8E790(v10, 0);
        result = sub_21D022994();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21CF97390(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21CF9747C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_21CF9747C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452F0, &qword_21D0236B0);
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

uint64_t sub_21CF97598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CF97600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CF97660()
{
  result = qword_28121E098;
  if (!qword_28121E098)
  {
    sub_21D021A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121E098);
  }

  return result;
}

unint64_t sub_21CF976BC()
{
  result = qword_27CE45418;
  if (!qword_27CE45418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45418);
  }

  return result;
}

uint64_t type metadata accessor for PrivateMLClient(uint64_t a1)
{
  result = qword_28121B4F8;
  if (!qword_28121B4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CF97764(uint64_t a1)
{
  result = sub_21D0224A4();
  if (v2 <= 0x3F)
  {
    result = sub_21D022414();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21CF978C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21CF97934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID(0);
  v4 = MEMORY[0x28223BE20](v47);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = (&v42 - v6);
  v45 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID(0);
  v7 = MEMORY[0x28223BE20](v45);
  v46 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = (&v42 - v9);
  v43 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar(0);
  v10 = MEMORY[0x28223BE20](v43);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v42 - v12);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = (&v42 - v18);
  v20 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar(0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = (&v42 - v24);
  v26 = a1[1];
  v51 = *a1;
  v27 = *(a1 + 16);
  v28 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  v29 = *(v28 - 8);
  v53 = *(v29 + 56);
  v54 = v28;
  v52 = v29 + 56;
  v53(a2, 1, 1);
  type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0);
  v55 = a2;
  sub_21D021CE4();
  if (v27 <= 1)
  {
    if (v27)
    {
      *v25 = 0;
      v25[1] = 0;

      sub_21D021CE4();
      *v25 = v51;
      v25[1] = v26;
      v30 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar;
      sub_21CF97F80(v25, v23, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
      v39 = v55;
      sub_21CF97F18(v55);
      sub_21CF97FE8(v23, v39, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
      v40 = v54;
      swift_storeEnumTagMultiPayload();
      (v53)(v39, 0, 1, v40);
      v37 = v25;
      return sub_21CF98050(v37, v30);
    }

    *v19 = 0;
    v19[1] = 0;

    sub_21D021CE4();
    *v19 = v51;
    v19[1] = v26;
    v30 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema;
    sub_21CF97F80(v19, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
    v32 = v55;
    sub_21CF97F18(v55);
    sub_21CF97FE8(v17, v32, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
    v33 = v54;
    goto LABEL_10;
  }

  if (v27 != 2)
  {
    if (v27 == 3)
    {
      v19 = v48;
      *v48 = 0;
      v19[1] = 0;

      sub_21D021CE4();
      *v19 = v51;
      v19[1] = v26;
      v30 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID;
      v31 = v46;
      sub_21CF97F80(v19, v46, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);
      v32 = v55;
      sub_21CF97F18(v55);
      sub_21CF97FE8(v31, v32, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);
    }

    else
    {
      v19 = v50;
      *v50 = 0;
      v19[1] = 0;

      sub_21D021CE4();
      *v19 = v51;
      v19[1] = v26;
      v30 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID;
      v38 = v49;
      sub_21CF97F80(v19, v49, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);
      v32 = v55;
      sub_21CF97F18(v55);
      sub_21CF97FE8(v38, v32, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);
    }

    v33 = v54;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    (v53)(v32, 0, 1, v33);
    v37 = v19;
    return sub_21CF98050(v37, v30);
  }

  *v13 = 0;
  v13[1] = 0;

  sub_21D021CE4();
  *v13 = v51;
  v13[1] = v26;
  v30 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar;
  v34 = v44;
  sub_21CF97F80(v13, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);
  v35 = v55;
  sub_21CF97F18(v55);
  sub_21CF97FE8(v34, v35, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);
  v36 = v54;
  swift_storeEnumTagMultiPayload();
  (v53)(v35, 0, 1, v36);
  v37 = v13;
  return sub_21CF98050(v37, v30);
}

uint64_t sub_21CF97F18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CF97F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CF97FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CF98050(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21CF980B0(void (*a1)(__CFUserNotification *), uint64_t a2, void (*a3)(__CFUserNotification *), uint64_t a4)
{
  v5 = v4;
  v63 = *MEMORY[0x277D85DE8];
  v9 = sub_21D022484();
  v10 = sub_21D0228B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21CF72000, v9, v10, "Displaying alert", v11, 2u);
    MEMORY[0x223D3ADE0](v11, -1, -1);
  }

  error = 0;
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v61[0] = xmmword_27CE467E8;
  v61[1] = *&qword_27CE467F8;
  v62 = byte_27CE46808;
  sub_21CF987E0(v61, responseFlags);
  sub_21D016558();
  v13 = v12;
  sub_21CF98850(v61);
  v14 = sub_21D022484();
  v15 = sub_21D0228B4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v13;
    _os_log_impl(&dword_21CF72000, v14, v15, "Setting tap-to-radar timeout to %f seconds", v16, 0xCu);
    MEMORY[0x223D3ADE0](v16, -1, -1);
  }

  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_29;
  }

  v17 = sub_21D022594();
  v19 = v18;
  v20 = v5[2];
  v21 = v5[3];

  v22 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  responseFlags[0] = v22;
  sub_21CFA3AC4(v20, v21, v17, v19, isUniquelyReferenced_nonNull_native);

  if (!*MEMORY[0x277CBF198])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = responseFlags[0];
  v25 = sub_21D022594();
  v27 = v26;
  v28 = v5[4];
  v29 = v5[5];

  v30 = swift_isUniquelyReferenced_nonNull_native();
  responseFlags[0] = v24;
  sub_21CFA3AC4(v28, v29, v25, v27, v30);

  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v31 = responseFlags[0];
  v32 = sub_21D022594();
  v34 = v33;
  v35 = v5[6];
  v36 = v5[7];

  v37 = swift_isUniquelyReferenced_nonNull_native();
  responseFlags[0] = v31;
  sub_21CFA3AC4(v35, v36, v32, v34, v37);

  if (!*MEMORY[0x277CBF1C0])
  {
    goto LABEL_31;
  }

  v38 = responseFlags[0];
  v39 = sub_21D022594();
  v41 = v40;
  v42 = v5[8];
  v43 = v5[9];

  v44 = swift_isUniquelyReferenced_nonNull_native();
  responseFlags[0] = v38;
  sub_21CFA3AC4(v42, v43, v39, v41, v44);

  v45 = *MEMORY[0x277CBECE8];
  v46 = sub_21D022524();

  v47 = CFUserNotificationCreate(v45, v13, 0, &error, v46);

  v48 = sub_21D022484();
  v49 = sub_21D0228B4();
  v50 = os_log_type_enabled(v48, v49);
  if (v47)
  {
    if (v50)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_21CF72000, v48, v49, "Wait for user response", v51, 2u);
      MEMORY[0x223D3ADE0](v51, -1, -1);
    }

    responseFlags[0] = 0;
    v52 = CFUserNotificationReceiveResponse(v47, v13, responseFlags);
    v53 = sub_21D022484();
    v54 = sub_21D0228B4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 67109120;
      *(v55 + 4) = v52;
      _os_log_impl(&dword_21CF72000, v53, v54, "User response received: %d", v55, 8u);
      MEMORY[0x223D3ADE0](v55, -1, -1);
    }

    if (v52)
    {
      goto LABEL_17;
    }

    if (!responseFlags[0])
    {
      a3 = a1;
    }

    if (!a3)
    {
LABEL_17:
    }

    else
    {
      if (responseFlags[0])
      {
        v57 = a4;
      }

      else
      {
        v57 = a2;
      }

      a3(v47);

      sub_21CF774DC(a3, v57);
    }
  }

  else
  {
    if (v50)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_21CF72000, v48, v49, "Failed to create User notification for PrivateMLClient", v56, 2u);
      MEMORY[0x223D3ADE0](v56, -1, -1);
    }
  }
}

uint64_t sub_21CF98630()
{

  v1 = OBJC_IVAR____TtC15PrivateMLClient20PrivateMLClientAlert_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivateMLClientAlert(uint64_t a1)
{
  result = qword_27CE45428;
  if (!qword_27CE45428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CF98740(uint64_t a1)
{
  result = sub_21D0224A4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21CF987E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45438, &qword_21D023C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CF98850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45438, &qword_21D023C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CF988B8()
{
  type metadata accessor for PrivateMLClientConnectionManager(0);
  swift_allocObject();
  result = sub_21CF988F8();
  qword_27CE537D8 = result;
  return result;
}

uint64_t sub_21CF988F8()
{
  v1 = v0;
  v2 = sub_21D0224A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_defaultActor_initialize();
  v6 = MEMORY[0x277D84F90];
  *(v1 + 112) = sub_21CF9D6FC(MEMORY[0x277D84F90]);
  *(v1 + 120) = sub_21CF9D710(v6);
  sub_21D022494();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC15PrivateMLClient32PrivateMLClientConnectionManager_logger, v5, v2);
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13[0] = xmmword_27CE46810;
  v13[1] = unk_27CE46820;
  v14 = byte_27CE46830;
  sub_21CF9B4B8(v13, v12);
  v7 = sub_21D0146E4();
  sub_21CF9B528(v13);
  *(v1 + 128) = v7;

  v8 = sub_21D022484();
  v9 = sub_21D0228B4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = *(v1 + 128);

    _os_log_impl(&dword_21CF72000, v8, v9, "PMLCCM: immimentDelay set to %u", v10, 8u);
    MEMORY[0x223D3ADE0](v10, -1, -1);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_21CF98B58(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v59 - v9;
  swift_beginAccess();
  v11 = *(v3 + 112);
  if (*(v11 + 16))
  {

    v12 = sub_21CF9D320(a2, a3);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      v62 = v14;

      MEMORY[0x223D3A1B0](v15);
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21D022714();
      }

      sub_21D022724();
      v16 = v62;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = *(v5 + 112);
      *(v5 + 112) = 0x8000000000000000;
      sub_21CFA3C60(v16, a2, a3, isUniquelyReferenced_nonNull_native);

      *(v5 + 112) = v64;
      swift_endAccess();

      v18 = sub_21D022484();
      v19 = sub_21D0228B4();

      if (os_log_type_enabled(v18, v19))
      {
        v61 = v4;
        v20 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v63[0] = v60;
        *v20 = 136315394;
        *(v20 + 4) = sub_21CF9703C(a2, a3, v63);
        *(v20 + 12) = 2048;
        if (v16 >> 62)
        {
          v21 = sub_21D022A34();
        }

        else
        {
          v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v20 + 14) = v21;

        _os_log_impl(&dword_21CF72000, v18, v19, "PMLCCM: enqueued existing connection %s Count:%ld", v20, 0x16u);
        v22 = v60;
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x223D3ADE0](v22, -1, -1);
        MEMORY[0x223D3ADE0](v20, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      goto LABEL_16;
    }
  }

  v62 = MEMORY[0x277D84F90];

  MEMORY[0x223D3A1B0](v23);
  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21D022714();
  }

  sub_21D022724();
  v24 = v62;
  swift_beginAccess();

  v25 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v5 + 112);
  *(v5 + 112) = 0x8000000000000000;
  sub_21CFA3C60(v24, a2, a3, v25);

  *(v5 + 112) = v64;
  swift_endAccess();

  v26 = sub_21D022484();
  v27 = sub_21D0228B4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v63[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_21CF9703C(a2, a3, v63);
    _os_log_impl(&dword_21CF72000, v26, v27, "PMLCCM: enqueued new connection %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x223D3ADE0](v29, -1, -1);
    MEMORY[0x223D3ADE0](v28, -1, -1);
  }

LABEL_16:
  v30 = sub_21D022774();
  (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
  v31 = qword_27CE44EC0;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = qword_27CE537D8;
  v33 = sub_21CF9B2D0();
  v34 = swift_allocObject();
  v34[2] = v32;
  v34[3] = v33;
  v34[4] = v5;
  v34[5] = a2;
  v34[6] = a3;

  v35 = sub_21CF9FF94(0, 0, v10, &unk_21D023D70, v34);
  swift_beginAccess();
  v36 = *(v5 + 120);
  if (!*(v36 + 16))
  {
    goto LABEL_27;
  }

  v37 = sub_21CF9D320(a2, a3);
  if ((v38 & 1) == 0)
  {

LABEL_27:

    v52 = sub_21CFB4B2C(0, 1, 1, MEMORY[0x277D84F90]);
    v54 = v52[2];
    v53 = v52[3];
    if (v54 >= v53 >> 1)
    {
      v52 = sub_21CFB4B2C((v53 > 1), v54 + 1, 1, v52);
    }

    v52[2] = v54 + 1;
    v52[v54 + 4] = v35;
    v55 = v52;
    swift_beginAccess();

    v56 = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v5 + 120);
    *(v5 + 120) = 0x8000000000000000;
    sub_21CFA3C4C(v55, a2, a3, v56);

    *(v5 + 120) = v64;
    swift_endAccess();
    v43 = sub_21D022484();
    v57 = sub_21D0228B4();
    if (!os_log_type_enabled(v43, v57))
    {
      goto LABEL_32;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v47 = "PMLCCM: timeout queue created and added.";
    v48 = v57;
    v49 = v43;
    v50 = v45;
    v51 = 2;
LABEL_31:
    _os_log_impl(&dword_21CF72000, v49, v48, v47, v50, v51);
    MEMORY[0x223D3ADE0](v45, -1, -1);
LABEL_32:
  }

  v39 = *(*(v36 + 56) + 8 * v37);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = sub_21CFB4B2C(0, v39[2] + 1, 1, v39);
  }

  v41 = v39[2];
  v40 = v39[3];
  if (v41 >= v40 >> 1)
  {
    v39 = sub_21CFB4B2C((v40 > 1), v41 + 1, 1, v39);
  }

  v39[2] = v41 + 1;
  v39[v41 + 4] = v35;
  swift_beginAccess();

  v42 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v5 + 120);
  *(v5 + 120) = 0x8000000000000000;
  sub_21CFA3C4C(v39, a2, a3, v42);

  *(v5 + 120) = v64;
  swift_endAccess();

  v43 = sub_21D022484();
  v44 = sub_21D0228B4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    v46 = v39[2];

    *(v45 + 4) = v46;

    v47 = "PMLCCM: timeout queue exists and added. Count:%ld";
    v48 = v44;
    v49 = v43;
    v50 = v45;
    v51 = 12;
    goto LABEL_31;
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_21CF993F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  if (qword_27CE44EC0 != -1)
  {
    swift_once();
  }

  v7 = qword_27CE537D8;
  v6[6] = qword_27CE537D8;

  return MEMORY[0x2822009F8](sub_21CF994C0, v7, 0);
}

uint64_t sub_21CF994C0()
{
  v1 = sub_21D022584();
  v2 = sub_21D022584();
  v3 = [objc_opt_self() attributeWithDomain:v1 name:v2];
  v0[7] = v3;

  v4 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45468, &qword_21D024510);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21D023C60;
  *(v5 + 32) = v3;
  v6 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v7 = v3;
  v8 = sub_21D022584();
  sub_21CF9B900();
  v9 = sub_21D0226F4();

  v10 = [v6 initWithExplanation:v8 target:v4 attributes:v9];
  v0[8] = v10;

  v0[2] = 0;
  v11 = [v10 acquireWithError_];
  v12 = v0[2];
  if (v11)
  {
    v14 = v0[5];
    v13 = v0[6];
    v16 = v0[3];
    v15 = v0[4];
    v17 = swift_task_alloc();
    v0[9] = v17;
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = v14;
    v18 = swift_task_alloc();
    v0[10] = v18;
    v18[2] = v16;
    v18[3] = v15;
    v18[4] = v14;
    v19 = sub_21CF9B2D0();
    v20 = v12;
    v21 = swift_task_alloc();
    v0[11] = v21;
    *v21 = v0;
    v21[1] = sub_21CF99820;
    v22 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200830](v21, &unk_21D023D88, v17, sub_21CF9BA00, v18, v13, v19, v22);
  }

  else
  {
    v23 = v12;
    sub_21D0219A4();

    swift_willThrow();
    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_21CF99820()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_21CF99A44;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_21CF9999C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CF9999C()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_21CF99B04(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CF99A44()
{
  v1 = *(v0 + 64);

  sub_21CF99B04(v1);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

void sub_21CF99B04(void *a1)
{
  [a1 invalidate];
  oslog = sub_21D022484();
  v1 = sub_21D0228B4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21CF72000, oslog, v1, "PMLCCM: release rbAssertion.", v2, 2u);
    MEMORY[0x223D3ADE0](v2, -1, -1);
  }
}

uint64_t sub_21CF99BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_21D0229F4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  if (qword_27CE44EC0 != -1)
  {
    swift_once();
  }

  v6 = qword_27CE537D8;
  v4[8] = qword_27CE537D8;

  return MEMORY[0x2822009F8](sub_21CF99CBC, v6, 0);
}

uint64_t sub_21CF99CBC(uint64_t a1)
{
  v1[9] = OBJC_IVAR____TtC15PrivateMLClient32PrivateMLClientConnectionManager_logger;
  v2 = sub_21D022484();
  v3 = sub_21D0228B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CF72000, v2, v3, "PMLCCM: start sleep.", v4, 2u);
    MEMORY[0x223D3ADE0](v4, -1, -1);
  }

  v5 = v1[2];

  v6 = 1000000000000000 * *(v5 + 128);
  v7 = (*(v5 + 128) * 0x38D7EA4C68000uLL) >> 64;
  sub_21D022B84();
  v8 = swift_task_alloc();
  v1[10] = v8;
  *v8 = v1;
  v8[1] = sub_21CF99E28;

  return sub_21CFA27FC(v6, v7, 0, 0, 1);
}

uint64_t sub_21CF99E28()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_21CF9A194;
  }

  else
  {
    v7 = sub_21CF99FB0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_21CF99FB0(uint64_t a1)
{
  v2 = sub_21D022484();
  v3 = sub_21D0228B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CF72000, v2, v3, "PMLCCM: wakeup.", v4, 2u);
    MEMORY[0x223D3ADE0](v4, -1, -1);
  }

  v5 = sub_21D0227E4();
  v6 = sub_21D022484();
  if (v5)
  {
    v7 = sub_21D0228B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21CF72000, v6, v7, "PMLCCM: Timeout connection cancelled.", v8, 2u);
      MEMORY[0x223D3ADE0](v8, -1, -1);
    }
  }

  else
  {
    v9 = sub_21D0228C4();
    if (os_log_type_enabled(v6, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21CF72000, v6, v9, "PMLCCM: timed out connection was not used.", v10, 2u);
      MEMORY[0x223D3ADE0](v10, -1, -1);
    }

    v12 = v1[3];
    v11 = v1[4];

    sub_21CF9A85C(v12, v11);
  }

  v13 = v1[1];

  return v13();
}

uint64_t sub_21CF9A194()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21CF9A1F8(uint64_t a1, uint64_t a2, unint64_t a3)
{

  oslog = sub_21D022484();
  v5 = sub_21D0228B4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_21CF9703C(a2, a3, &v9);
    _os_log_impl(&dword_21CF72000, oslog, v5, "PMLCCM: onCancel timeout cancellation. %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D3ADE0](v7, -1, -1);
    MEMORY[0x223D3ADE0](v6, -1, -1);
  }
}

uint64_t sub_21CF9A318(uint64_t a1, unint64_t a2)
{
  v3 = v2;

  v6 = sub_21D022484();
  v7 = sub_21D0228B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21CF9703C(a1, a2, v30);
    _os_log_impl(&dword_21CF72000, v6, v7, "PMLCCM: dequeue Start %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D3ADE0](v9, -1, -1);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  swift_beginAccess();
  v10 = *(v3 + 112);
  if (!*(v10 + 16))
  {
    goto LABEL_12;
  }

  v11 = sub_21CF9D320(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_12:

    v22 = sub_21D022484();
    v23 = sub_21D0228B4();

    if (!os_log_type_enabled(v22, v23))
    {
LABEL_15:

      v15 = 0;
      goto LABEL_16;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_21CF9703C(a1, a2, v29);
    v26 = "PMLCCM: deqeue is nil %s";
LABEL_14:
    _os_log_impl(&dword_21CF72000, v22, v23, v26, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223D3ADE0](v25, -1, -1);
    MEMORY[0x223D3ADE0](v24, -1, -1);
    goto LABEL_15;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  v31 = v13;
  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

  if (!sub_21D022A34())
  {
LABEL_19:

    v22 = sub_21D022484();
    v23 = sub_21D0228B4();

    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_15;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_21CF9703C(a1, a2, v29);
    v26 = "PMLCCM: dequeue ConnectionQueue is empty %s";
    goto LABEL_14;
  }

LABEL_7:
  sub_21CF9A784();
  v15 = v14;
  v16 = v31;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_21CFA3C60(v16, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 112) = v28;
  swift_endAccess();

  v18 = sub_21D022484();
  v19 = sub_21D0228B4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (v16 >> 62)
    {
      v21 = sub_21D022A34();
    }

    else
    {
      v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v21;

    _os_log_impl(&dword_21CF72000, v18, v19, "PMLCCM: Cancelling timeout and return cached connection - %ld", v20, 0xCu);
    MEMORY[0x223D3ADE0](v20, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

LABEL_16:
  sub_21CF9ACB8(a1, a2);
  return v15;
}

void sub_21CF9A784()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_21D022A34())
  {
    if (sub_21D022A34())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x223D3A480](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_21D022A34();
LABEL_13:
      if (v3)
      {
        sub_21CF9B760(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_21CF9A85C(uint64_t a1, unint64_t a2)
{
  v3 = v2;

  v6 = sub_21D022484();
  v7 = sub_21D0228B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21CF9703C(a1, a2, v28);
    _os_log_impl(&dword_21CF72000, v6, v7, "PMLCCM: cancelCacheKey Start %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D3ADE0](v9, -1, -1);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  swift_beginAccess();
  v10 = *(v3 + 112);
  if (!*(v10 + 16))
  {
    goto LABEL_11;
  }

  v11 = sub_21CF9D320(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_11:

    v21 = sub_21D022484();
    v22 = sub_21D0228B4();

    if (!os_log_type_enabled(v21, v22))
    {
LABEL_14:

      goto LABEL_15;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_21CF9703C(a1, a2, v27);
    v25 = "PMLCCM: cancelCacheKey ConnectionQueue timeout nil! %s";
LABEL_13:
    _os_log_impl(&dword_21CF72000, v21, v22, v25, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x223D3ADE0](v24, -1, -1);
    MEMORY[0x223D3ADE0](v23, -1, -1);
    goto LABEL_14;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  v29 = v13;
  if (v13 >> 62)
  {
    if (sub_21D022A34())
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:

    v21 = sub_21D022484();
    v22 = sub_21D0228B4();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_14;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_21CF9703C(a1, a2, v27);
    v25 = "PMLCCM: cancelCacheKey ConnectionQueue is empty %s";
    goto LABEL_13;
  }

LABEL_7:
  sub_21CF9A784();
  v14 = v29;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_21CFA3C60(v14, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 112) = v26;
  v16 = swift_endAccess();
  sub_21CF90D60(v16);

  v17 = sub_21D022484();
  v18 = sub_21D0228B4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_21CF9703C(a1, a2, v27);
    _os_log_impl(&dword_21CF72000, v17, v18, "PMLCCM: cancelCacheKey End %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x223D3ADE0](v20, -1, -1);
    MEMORY[0x223D3ADE0](v19, -1, -1);
  }

LABEL_15:
  sub_21CF9ACB8(a1, a2);
}

void sub_21CF9ACB8(uint64_t a1, unint64_t a2)
{
  v3 = v2;

  v6 = sub_21D022484();
  v7 = sub_21D0228B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21CF9703C(a1, a2, v30);
    _os_log_impl(&dword_21CF72000, v6, v7, "PMLCCM: dequeueTimeout Start %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D3ADE0](v9, -1, -1);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  swift_beginAccess();
  v10 = *(v3 + 120);
  if (*(v10 + 16))
  {

    v11 = sub_21CF9D320(a1, a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      v14 = v13[2];
      if (v14)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v13;
        if (!isUniquelyReferenced_nonNull_native || (v14 - 1) > v13[3] >> 1)
        {
          v13 = sub_21CFB4B2C(isUniquelyReferenced_nonNull_native, v14, 1, v13);
          v31 = v13;
        }

        sub_21CF9B590(0, 1, 0);
        swift_beginAccess();

        v16 = swift_isUniquelyReferenced_nonNull_native();
        v28 = *(v3 + 120);
        *(v3 + 120) = 0x8000000000000000;
        sub_21CFA3C4C(v13, a1, a2, v16);

        *(v3 + 120) = v28;
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45268, &qword_21D023D50);
        sub_21D0227D4();
      }

      else
      {

        v20 = sub_21D022484();
        v21 = sub_21D0228B4();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v29[0] = v23;
          *v22 = 136315138;
          *(v22 + 4) = sub_21CF9703C(a1, a2, v29);
          _os_log_impl(&dword_21CF72000, v20, v21, "PMLCCM: dequeue timeoutQueue is empty %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x223D3ADE0](v23, -1, -1);
          MEMORY[0x223D3ADE0](v22, -1, -1);
        }
      }

      v24 = sub_21D022484();
      v25 = sub_21D0228B4();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v29[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_21CF9703C(a1, a2, v29);
        _os_log_impl(&dword_21CF72000, v24, v25, "PMLCCM: dequeueTimeout complete %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x223D3ADE0](v27, -1, -1);
        MEMORY[0x223D3ADE0](v26, -1, -1);
      }

      return;
    }
  }

  v17 = sub_21D022484();
  v18 = sub_21D0228B4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21CF72000, v17, v18, "PMLCCM: timeout queue has not been initialized!", v19, 2u);
    MEMORY[0x223D3ADE0](v19, -1, -1);
  }
}

uint64_t sub_21CF9B138()
{

  v1 = OBJC_IVAR____TtC15PrivateMLClient32PrivateMLClientConnectionManager_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for PrivateMLClientConnectionManager(uint64_t a1)
{
  result = qword_27CE45448;
  if (!qword_27CE45448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CF9B214(uint64_t a1)
{
  result = sub_21D0224A4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_21CF9B2D0()
{
  result = qword_27CE45458;
  if (!qword_27CE45458)
  {
    type metadata accessor for PrivateMLClientConnectionManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45458);
  }

  return result;
}

uint64_t sub_21CF9B334()
{
  if (qword_27CE44EC0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21CF9B390(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PrivateMLClientConnectionManager(0);

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_21CF9B3CC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_21CF9B3FC(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_21D022A34();
    }

    result = sub_21D0229C4();
    *v2 = result;
  }

  return result;
}

uint64_t sub_21CF9B4B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45260, &unk_21D0244F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CF9B528(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45260, &unk_21D0244F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CF9B590(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45460, &unk_21D023D58);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_21CF9B660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for PrivateMLClientCloudComputeConnection(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_21D022A34();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_21D022A34();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_21CF9B760(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_21D022A34();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_21D022A34();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_21CF9B3FC(result, 1);

  return sub_21CF9B660(v5, v3, 0);
}

uint64_t sub_21CF9B838(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CF83390;

  return sub_21CF993F4(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_21CF9B900()
{
  result = qword_27CE45470;
  if (!qword_27CE45470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE45470);
  }

  return result;
}

uint64_t sub_21CF9B94C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CF95398;

  return sub_21CF99BC0(a1, v4, v5, v6);
}

uint64_t ImageParser.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_21D022494();
  return v0;
}

uint64_t ImageParser.init()()
{
  v1 = sub_21D0224A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D022494();
  (*(v2 + 32))(v0 + OBJC_IVAR____TtC15PrivateMLClient11ImageParser_logger, v4, v1);
  return v0;
}

PrivateMLClient::ImageParser::ImageFormat_optional __swiftcall ImageParser.ImageFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21D022A74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ImageParser.ImageFormat.rawValue.getter()
{
  v1 = 6778480;
  if (*v0 != 1)
  {
    v1 = 0x70616D746962;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6778986;
  }
}

uint64_t sub_21CF9BC30(_BYTE *a1, _BYTE *a2)
{
  v2 = 6778480;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = 0xE300000000000000;
  v6 = 0x70616D746962;
  if (v3 == 1)
  {
    v6 = 6778480;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 6778986;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0x70616D746962;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 6778986;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21D022B24();
  }

  return v11 & 1;
}

uint64_t sub_21CF9BD04()
{
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

uint64_t sub_21CF9BD90(uint64_t a1)
{
  sub_21D022614();
}

uint64_t sub_21CF9BE08()
{
  sub_21D022C04();
  sub_21D022614();

  return sub_21D022C24();
}

void sub_21CF9BE9C(uint64_t *a1@<X8>)
{
  v2 = 6778480;
  v3 = 0xE300000000000000;
  if (*v1 != 1)
  {
    v2 = 0x70616D746962;
    v3 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 6778986;
    v4 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v4;
}

void sub_21CF9BEE4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = sub_21D022054();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21D022484();
  v8 = sub_21D0228D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21CF72000, v7, v8, "Converting IOSurface to JPG", v9, 2u);
    MEMORY[0x223D3ADE0](v9, -1, -1);
  }

  v10 = a1;
  v11 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithIOSurface_];

  v12 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  [v11 extent];
  v13 = [v12 createCGImage:v11 fromRect:?];
  if (v13)
  {
    v14 = v13;
    v51 = v11;
    v53 = v12;
    v15 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
    sub_21D022044();
    sub_21D022034();
    (*(v4 + 8))(v6, v3);
    v16 = sub_21D022584();

    v17 = CGImageDestinationCreateWithData(v15, v16, 1uLL, 0);

    v52 = v15;
    if (v17)
    {
      if (qword_27CE451B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v55[0] = xmmword_27CE468C0;
      v55[1] = unk_27CE468D0;
      v56 = byte_27CE468E0;
      sub_21CF7F198(v55, v54, &qword_27CE45488, &qword_21D023E00);
      v18 = sub_21D015B00();
      sub_21CF7F200(v55, &qword_27CE45488, &qword_21D023E00);
      v19 = 1.0;
      v20 = v51;
      if ((v18 & 0x100000000) == 0)
      {
        v21 = *&v18;
        v22 = sub_21D022484();
        v23 = sub_21D0228D4();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 134217984;
          v19 = v21;
          *(v24 + 4) = v19;
          _os_log_impl(&dword_21CF72000, v22, v23, "Setting user default jpgCompressionQuality=%f", v24, 0xCu);
          MEMORY[0x223D3ADE0](v24, -1, -1);
        }

        else
        {

          v19 = v21;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45490, &qword_21D023E08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21D0238C0;
      v36 = *MEMORY[0x277CD2D48];
      *(inited + 32) = *MEMORY[0x277CD2D48];
      *(inited + 64) = MEMORY[0x277D85048];
      *(inited + 40) = v19;
      v37 = v36;
      sub_21CF9DA28(inited);
      swift_setDeallocating();
      sub_21CF7F200(inited + 32, &qword_27CE45498, &qword_21D023E10);
      type metadata accessor for CFString();
      sub_21CF7D95C(&qword_27CE451F0, &unk_21D0234D4);
      v38 = sub_21D022524();

      CGImageDestinationAddImage(v17, v14, v38);

      if (CGImageDestinationFinalize(v17))
      {
        v39 = v52;
        v40 = sub_21D021A04();
        v42 = v41;

        Width = CGImageGetWidth(v14);
        Height = CGImageGetHeight(v14);

        v45 = v50;
        *v50 = v40;
        v45[1] = v42;
        v45[2] = Width;
        v45[3] = Height;
        return;
      }

      v46 = sub_21D022484();
      v47 = sub_21D0228C4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_21CF72000, v46, v47, "Could not finalize CGImageDestination.", v48, 2u);
        MEMORY[0x223D3ADE0](v48, -1, -1);
      }

      sub_21CF9C64C();
      swift_allocError();
      *v49 = xmmword_21D023DA0;
      swift_willThrow();
    }

    else
    {
      v31 = sub_21D022484();
      v32 = sub_21D0228C4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21CF72000, v31, v32, "Could not create image destination", v33, 2u);
        MEMORY[0x223D3ADE0](v33, -1, -1);
      }

      sub_21CF9C64C();
      swift_allocError();
      *v34 = xmmword_21D023DB0;
      swift_willThrow();
    }
  }

  else
  {
    v25 = sub_21D022484();
    v26 = sub_21D0228C4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v12;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_21CF72000, v25, v26, "Could not create CGImage from CIImage", v28, 2u);
      v29 = v28;
      v12 = v27;
      MEMORY[0x223D3ADE0](v29, -1, -1);
    }

    sub_21CF9C64C();
    swift_allocError();
    *v30 = xmmword_21D023DC0;
    swift_willThrow();
  }
}

unint64_t sub_21CF9C64C()
{
  result = qword_27CE45480;
  if (!qword_27CE45480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45480);
  }

  return result;
}

void sub_21CF9C6A0(unsigned __int8 *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  v6 = sub_21D022484();
  v7 = sub_21D0228D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21CF72000, v6, v7, "Converting Image to RGB", v8, 2u);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  v9 = sub_21D0219F4();
  v10 = CGDataProviderCreateWithCFData(v9);

  if (!v10)
  {
    sub_21CF9C64C();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0;
    swift_willThrow();
    return;
  }

  v11 = sub_21D022484();
  v12 = sub_21D0228D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21CF72000, v11, v12, "Created dataProvder successfully", v13, 2u);
    MEMORY[0x223D3ADE0](v13, -1, -1);
  }

  if (!v5)
  {
    v14 = CGImageCreateWithJPEGDataProvider(v10, 0, 1, kCGRenderingIntentDefault);
    if (v14)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v5 != 1)
  {
    v26 = sub_21D022484();
    v27 = sub_21D0228D4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42 = v29;
      *v28 = 136315138;
      v43 = 2;
      v30 = sub_21D0225D4();
      v32 = sub_21CF9703C(v30, v31, &v42);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_21CF72000, v26, v27, "Unsupported image format, format=%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x223D3ADE0](v29, -1, -1);
      MEMORY[0x223D3ADE0](v28, -1, -1);
    }

    v44 = 2;
    v33 = sub_21D0225D4();
    v35 = v34;
    sub_21CF9C64C();
    swift_allocError();
    *v36 = v33;
    v36[1] = v35;
    goto LABEL_21;
  }

  v14 = CGImageCreateWithPNGDataProvider(v10, 0, 1, kCGRenderingIntentDefault);
  if (!v14)
  {
LABEL_15:
    v22 = sub_21D022484();
    v23 = sub_21D0228C4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_21CF72000, v22, v23, "Unable to use jpegDataProviderSource or pngDataProviderSource", v24, 2u);
      MEMORY[0x223D3ADE0](v24, -1, -1);
    }

    sub_21CF9C64C();
    swift_allocError();
    *v25 = xmmword_21D023DD0;
LABEL_21:
    swift_willThrow();

    return;
  }

LABEL_9:
  v15 = v14;
  v16 = sub_21D022484();
  v17 = sub_21D0228D4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218752;
    *(v18 + 4) = CGImageGetWidth(v15);
    *(v18 + 12) = 2048;
    *(v18 + 14) = CGImageGetHeight(v15);
    *(v18 + 22) = 2048;
    *(v18 + 24) = CGImageGetBitsPerComponent(v15);
    *(v18 + 32) = 2048;
    *(v18 + 34) = CGImageGetBitsPerPixel(v15);
    _os_log_impl(&dword_21CF72000, v16, v17, "width: %ld, height: %ld, bitsPerComponent: %ld, bitsPerPixel: %ld", v18, 0x2Au);
    MEMORY[0x223D3ADE0](v18, -1, -1);
  }

  sub_21CF9CB60(v15);
  if (v4)
  {
  }

  else
  {
    v37 = v19;
    v38 = v20;
    Width = CGImageGetWidth(v15);
    Height = CGImageGetHeight(v15);

    *a4 = v37;
    a4[1] = v38;
    a4[2] = Width;
    a4[3] = Height;
  }
}

void sub_21CF9CB60(CGImage *a1)
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (!v2)
  {
    sub_21CF9C64C();
    swift_allocError();
    *v19 = xmmword_21D023DF0;
    swift_willThrow();
    return;
  }

  v3 = v2;
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  if (!BitsPerComponent)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (BitsPerPixel == 0x8000000000000000 && BitsPerComponent == -1)
  {
    goto LABEL_19;
  }

  v6 = BitsPerPixel / BitsPerComponent;
  if ((v6 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_16;
  }

  Width = CGImageGetWidth(a1);
  v8 = Width * v6;
  if ((Width * v6) >> 64 != (Width * v6) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  Height = CGImageGetHeight(a1);
  v10 = v8 * Height;
  if ((v8 * Height) >> 64 != (v8 * Height) >> 63)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v11 = sub_21D022484();
  v12 = sub_21D0228D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v10;
    _os_log_impl(&dword_21CF72000, v11, v12, "Buffer size: %ld", v13, 0xCu);
    MEMORY[0x223D3ADE0](v13, -1, -1);
  }

  v14 = swift_slowAlloc();
  v15 = CGImageGetWidth(a1);
  v16 = CGImageGetHeight(a1);
  v17 = __CGBitmapContextCreate(v14, v15, v16, v8, v3);
  if (v17)
  {
    v18 = v17;
    CGImageGetWidth(a1);
    CGImageGetHeight(a1);
    sub_21D022894();
    sub_21CF9DF64(v14, v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE454A0, &qword_21D023E18);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21D0238C0;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 32) = 0xD00000000000001BLL;
    *(v20 + 40) = 0x800000021D02DA10;
    sub_21D022BF4();

    sub_21CF9C64C();
    swift_allocError();
    *v21 = xmmword_21D023DE0;
    swift_willThrow();
  }

  MEMORY[0x223D3ADE0](v14, -1, -1);
}

uint64_t ImageParser.deinit()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient11ImageParser_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ImageParser.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient11ImageParser_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t ImageParserError.code.getter()
{
  v1 = *(v0 + 8);
  if (v1 >= 7)
  {
    return 2;
  }

  else
  {
    return v1 + 3;
  }
}

uint64_t sub_21CF9CF84(uint64_t a1)
{
  v2 = sub_21CF9E0EC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_21CF9CFC0(uint64_t a1)
{
  v2 = sub_21CF9E0EC();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_21CF9D05C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_21D022064();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277CEDEC0];
  if (v3 >= 7)
  {
    v6 = MEMORY[0x277CEDEB0];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t ImageParserError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_21D022064();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277CEDEC0];
  if (v3 >= 7)
  {
    v6 = MEMORY[0x277CEDEB0];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_21CF9D1A8(uint64_t a1)
{
  v2 = sub_21CF9E094();

  return MEMORY[0x2821401D0](a1, v2);
}

void sub_21CF9D1E4()
{
  sub_21CF9E094();

  JUMPOUT(0x223D39B70);
}

void sub_21CF9D230()
{
  sub_21CF9E094();

  JUMPOUT(0x223D39B90);
}

void sub_21CF9D270(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void *sub_21CF9D2A8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_21CF9D2C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_21CF9D320(uint64_t a1, uint64_t a2)
{
  sub_21D022C04();
  sub_21D022614();
  v4 = sub_21D022C24();

  return sub_21CF9D438(a1, a2, v4);
}

unint64_t sub_21CF9D398(uint64_t a1)
{
  sub_21D022C04();
  type metadata accessor for CFString();
  sub_21CF7D95C(&qword_27CE45530, &unk_21D0234A8);
  sub_21D021B74();
  v2 = sub_21D022C24();

  return sub_21CF9D4F0(a1, v2);
}

unint64_t sub_21CF9D438(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21D022B24())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21CF9D4F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_21CF7D95C(&qword_27CE45530, &unk_21D0234A8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21D021B64();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21CF9D5E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45510, &qword_21D024200);
    v3 = sub_21D022A64();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21CF9D320(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CF9D724(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_21D022A64();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21CF9D320(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CF9D820(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE454F8, &qword_21D0241E8);
    v3 = sub_21D022A64();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21CF9D320(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CF9D924(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE454F0, &qword_21D0241E0);
    v3 = sub_21D022A64();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21CF9D320(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CF9DA28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45528, &qword_21D024218);
    v3 = sub_21D022A64();
    v4 = a1 + 32;

    while (1)
    {
      sub_21CF7F198(v4, &v11, &qword_27CE45498, &qword_21D023E10);
      v5 = v11;
      result = sub_21CF9D398(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21CF9E7A8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CF9DB64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45508, &qword_21D0241F8);
    v3 = sub_21D022A64();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21CF9D320(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CF9DC68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45518, &qword_21D024208);
    v3 = sub_21D022A64();
    v4 = a1 + 32;

    while (1)
    {
      sub_21CF7F198(v4, &v13, &qword_27CE45520, &qword_21D024210);
      v5 = v13;
      v6 = v14;
      result = sub_21CF9D320(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21CF9E7A8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CF9DD98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45500, &qword_21D0241F0);
    v3 = sub_21D022A64();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21CF9D320(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21CF9DEAC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_21CF9DF64(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_21CF9DEAC(a1, &a1[a2]);
  }

  sub_21D021964();
  swift_allocObject();
  sub_21D021924();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_21D0219E4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_21CF9E018()
{
  result = qword_27CE454A8;
  if (!qword_27CE454A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE454A8);
  }

  return result;
}

unint64_t sub_21CF9E06C(uint64_t a1)
{
  result = sub_21CF9E094();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21CF9E094()
{
  result = qword_27CE454B0;
  if (!qword_27CE454B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE454B0);
  }

  return result;
}

unint64_t sub_21CF9E0EC()
{
  result = qword_27CE454B8;
  if (!qword_27CE454B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE454B8);
  }

  return result;
}

unint64_t sub_21CF9E144()
{
  result = qword_27CE454C0;
  if (!qword_27CE454C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE454C0);
  }

  return result;
}

unint64_t sub_21CF9E19C()
{
  result = qword_27CE454C8;
  if (!qword_27CE454C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE454C8);
  }

  return result;
}

uint64_t type metadata accessor for ImageParser(uint64_t a1)
{
  result = qword_27CE454D0;
  if (!qword_27CE454D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CF9E244(uint64_t a1)
{
  result = sub_21D0224A4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageParser.ImageFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageParser.ImageFormat(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21CF9E52C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
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

uint64_t sub_21CF9E580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15PrivateMLClient16ImageParserErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21CF9E604(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CF9E660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

void *sub_21CF9E6B0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_21CF9E6EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21CF9E748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_OWORD *sub_21CF9E7A8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21CF9E7C4@<X0>(void *a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata(0);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v56 - v11;
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45540, &qword_21D024228);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - v16;
  sub_21CF7F198(v1, &v56 - v16, &qword_27CE45540, &qword_21D024228);
  v18 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload(0);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    sub_21CF9ED64();
    swift_allocError();
    *v19 = 2;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    *(v19 + 40) = 0;
    *(v19 + 48) = -96;
    return swift_willThrow();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CF9EE34(v17, v4, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    v21 = &v4[v2[5]];
    if (*(v21 + 1))
    {
      v22 = *v21;
      v23 = *(v21 + 1);
    }

    else
    {
      v22 = 0;
      v23 = 0xE000000000000000;
    }

    v31 = v2[6];
    v32 = &v4[v2[7]];
    v34 = *v32;
    v33 = v32[1];
    if (v33 >> 60 == 15)
    {
      v35 = 0;
    }

    else
    {
      v35 = *v32;
    }

    if (v33 >> 60 == 15)
    {
      v36 = 0xC000000000000000;
    }

    else
    {
      v36 = v32[1];
    }

    v37 = *&v4[v31];
    v38 = v4[v31 + 4];
    v39 = v4[v2[8]];

    sub_21CF9EDB8(v34, v33);
    result = sub_21CF9EE9C(v4, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
    if (v38)
    {
      v40 = 0;
    }

    else
    {
      v40 = v37;
    }

    v41 = v59;
    *v59 = v22;
    v41[1] = v23;
    v41[2] = v35;
    v41[3] = v36;
    *(v41 + 36) = v39 & 1 | 0x80;
    *(v41 + 8) = v40;
    return result;
  }

  sub_21CF9EE34(v17, v14, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
  v24 = v58;
  sub_21CF7F198(v14, v58, &qword_27CE45538, &qword_21D024220);
  v25 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
  {
LABEL_22:
    sub_21CF9ED64();
    swift_allocError();
    *v42 = 1;
    *(v42 + 8) = 0u;
    *(v42 + 24) = 0u;
    *(v42 + 40) = 0;
    *(v42 + 48) = -96;
    swift_willThrow();
    sub_21CF9EE9C(v14, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    return sub_21CF9EDCC(v24);
  }

  sub_21CF7F198(v24, v10, &qword_27CE45538, &qword_21D024220);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21CF9EE9C(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    goto LABEL_22;
  }

  v26 = v10;
  v27 = v57;
  sub_21CF9EE34(v26, v57, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
  v28 = &v14[v12[6]];
  if (*(v28 + 1))
  {
    v29 = *v28;
    v30 = *(v28 + 1);
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  v43 = v12[8];
  v44 = &v14[v12[7]];
  v45 = *v44;
  v46 = v44[4];
  v47 = *&v14[v43];
  v48 = v14[v43 + 8];

  sub_21CF9EE9C(v14, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  v50 = *v27;
  v51 = *(v27 + 8);
  sub_21CF9EE9C(v27, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
  if (v50)
  {
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v53 = v58;
  v54 = v59;
  *v59 = v29;
  v54[1] = v30;
  if (v46)
  {
    v55 = 0;
  }

  else
  {
    v55 = v45;
  }

  v54[2] = v55;
  v54[3] = v49;
  *(v54 + 36) = 0;
  *(v54 + 8) = v52;
  return sub_21CF9EDCC(v53);
}

unint64_t sub_21CF9ED64()
{
  result = qword_27CE45548;
  if (!qword_27CE45548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE45548);
  }

  return result;
}

uint64_t sub_21CF9EDB8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21CF8F3E0(result, a2);
  }

  return result;
}

uint64_t sub_21CF9EDCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CF9EE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CF9EE9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PrivateMLClientModelOptions.init(modelName:modelAdaptorName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  v24 = a1;
  v25 = a2;
  v6 = sub_21D021A74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 100) = 1;
  *(a5 + 104) = 0;
  *(a5 + 112) = -1;
  *(a5 + 116) = 0;
  *(a5 + 120) = 1;
  *(a5 + 124) = 0;
  *(a5 + 128) = 1;
  *(a5 + 132) = 0;
  *(a5 + 136) = 1;
  *(a5 + 140) = 0;
  *(a5 + 144) = 1;
  *(a5 + 148) = 0;
  *(a5 + 152) = 1;
  *(a5 + 160) = 0;
  *(a5 + 168) = 1;
  v10 = type metadata accessor for PrivateMLClientModelOptions(0);
  v11 = v10[18];
  v12 = *(v7 + 56);
  v12(a5 + v11, 1, 1, v6);
  v13 = a5 + v10[19];
  *v13 = 0;
  *(v13 + 8) = 1;
  *(a5 + v10[20]) = 0;
  *(a5 + v10[21]) = xmmword_21D024230;
  v14 = v10[22];
  v15 = sub_21D022774();
  (*(*(v15 - 8) + 56))(a5 + v14, 1, 1, v15);
  v16 = (a5 + v10[23]);
  *v16 = 0;
  v16[1] = 0;
  v17 = a5 + v10[24];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (a5 + v10[25]);
  *v18 = 0;
  v18[1] = 0;
  v19 = a5 + v10[26];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a5 + v10[27];
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = -1;
  v21 = v25;
  *a5 = v24;
  *(a5 + 8) = v21;
  v22 = v27;
  *(a5 + 16) = v26;
  *(a5 + 24) = v22;
  sub_21D021A64();
  sub_21CF7F200(a5 + v11, &qword_27CE45228, &unk_21D023540);
  (*(v7 + 32))(a5 + v11, v9, v6);
  result = (v12)(a5 + v11, 0, 1, v6);
  *v16 = 0xD000000000000032;
  v16[1] = 0x800000021D02DA90;
  return result;
}

uint64_t type metadata accessor for PrivateMLClientModelOptions(uint64_t a1)
{
  result = qword_27CE45550;
  if (!qword_27CE45550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrivateMLClientModelOptions.init(modelName:modelAdaptorName:modelDraftName:modelVersion:modelAdaptorVersion:modelDraftVersion:numberOfCompletions:samplingStrategy:temperature:maxTokens:logProbs:lengthPenalty:frequencyPenalty:randomSeed:sessionID:timeoutSecs:stopSequences:metaData:taskPriority:tokenizerName:onBehalfOfPID:useCaseIdentifier:inputTokenSize:tmlConstraints:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, double a13@<D3>, __int128 a14, uint64_t a15, uint64_t a16, int a17, uint64_t *a18, int a19, char a20, int a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t *a35)
{
  v61 = *a18;
  v60 = *(a18 + 8);
  v76 = a35[1];
  v77 = *a35;
  v75 = *(a35 + 16);
  *a9 = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0;
  *(a9 + 100) = 1;
  *(a9 + 104) = 0;
  *(a9 + 112) = -1;
  *(a9 + 116) = 0;
  *(a9 + 120) = 1;
  *(a9 + 124) = 0;
  *(a9 + 128) = 1;
  *(a9 + 132) = 0;
  *(a9 + 136) = 1;
  *(a9 + 140) = 0;
  *(a9 + 144) = 1;
  *(a9 + 148) = 0;
  *(a9 + 152) = 1;
  *(a9 + 160) = 0;
  *(a9 + 168) = 1;
  v40 = type metadata accessor for PrivateMLClientModelOptions(0);
  v41 = a9 + v40[18];
  v42 = sub_21D021A74();
  v62 = *(v42 - 8);
  v67 = v41;
  v43 = v41;
  v44 = v42;
  v63 = *(v62 + 56);
  v63(v43, 1, 1);
  v45 = a9 + v40[19];
  *v45 = 0;
  v58 = v45;
  *(v45 + 8) = 1;
  v57 = v40[20];
  *(a9 + v57) = 0;
  v46 = a9 + v40[21];
  *v46 = xmmword_21D024230;
  v47 = a9 + v40[22];
  v48 = sub_21D022774();
  v49 = *(v48 - 8);
  v64 = v48;
  v65 = v47;
  v59 = *(v49 + 56);
  v59(v47, 1, 1);
  v50 = (a9 + v40[23]);
  *v50 = 0;
  v50[1] = 0;
  v51 = a9 + v40[24];
  *v51 = 0;
  *(v51 + 8) = 1;
  v52 = (a9 + v40[25]);
  *v52 = 0;
  v52[1] = 0;
  v53 = a9 + v40[26];
  *v53 = 0;
  *(v53 + 8) = 1;
  v54 = a9 + v40[27];
  *v54 = 0;
  *(v54 + 8) = 0;
  *(v54 + 16) = -1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a14;
  *(a9 + 80) = a15;
  *(a9 + 88) = a16;
  *(a9 + 96) = a17;
  *(a9 + 100) = 0;
  *(a9 + 104) = v61;
  *(a9 + 112) = v60;
  *(a9 + 116) = a10;
  *(a9 + 120) = 0;
  *(a9 + 124) = a19;
  *(a9 + 128) = a20 & 1;
  *(a9 + 132) = a21;
  *(a9 + 136) = 0;
  *(a9 + 140) = a11;
  *(a9 + 144) = 0;
  *(a9 + 148) = a12;
  *(a9 + 152) = 0;
  if (a23)
  {
    v78 = 0;
    MEMORY[0x223D3ADF0](&v78, 8);
    v55 = v78;
  }

  else
  {
    v55 = a22;
  }

  *(a9 + 160) = v55;
  *(a9 + 168) = 0;
  sub_21CF7F200(v67, &qword_27CE45228, &unk_21D023540);
  (*(v62 + 32))(v67, a24, v44);
  (v63)(v67, 0, 1, v44);
  *v58 = a13;
  *(v58 + 8) = 0;
  *(a9 + v57) = a25;
  sub_21CF94FCC(*v46, *(v46 + 8));
  *v46 = a26;
  *(v46 + 8) = a27;
  sub_21CF7F200(v65, &qword_27CE45310, &qword_21D0236E0);
  (*(v49 + 32))(v65, a28, v64);
  (v59)(v65, 0, 1, v64);
  *v50 = a29;
  v50[1] = a30;
  *v51 = a31;
  *(v51 + 8) = 0;
  *v52 = a32;
  v52[1] = a33;
  *v53 = a34;
  *(v53 + 8) = 0;
  result = sub_21CF9F674(*v54, *(v54 + 8), *(v54 + 16));
  *v54 = v77;
  *(v54 + 8) = v76;
  *(v54 + 16) = v75;
  return result;
}

uint64_t sub_21CF9F674(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_21CF9F688(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_21CF9F688(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

void sub_21CF9F6C8(uint64_t a1)
{
  sub_21CF9F9EC(319, &qword_28121B408, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21CF9F9EC(319, &qword_28121B0F0, MEMORY[0x277D84CC0]);
    if (v2 <= 0x3F)
    {
      sub_21CF9F9EC(319, &qword_27CE45560, &type metadata for PrivateMLClientModelOptions.SamplingStrategy);
      if (v3 <= 0x3F)
      {
        sub_21CF9F9EC(319, &qword_28121B3A8, MEMORY[0x277D83A90]);
        if (v4 <= 0x3F)
        {
          sub_21CF9F9EC(319, &qword_28121B0E0, MEMORY[0x277D84D38]);
          if (v5 <= 0x3F)
          {
            sub_21CF9F998(319, &qword_27CE45568, MEMORY[0x277CC95F0]);
            if (v6 <= 0x3F)
            {
              sub_21CF9F9EC(319, &qword_28121B3B0, MEMORY[0x277D839F8]);
              if (v7 <= 0x3F)
              {
                sub_21CF9F934(319);
                if (v8 <= 0x3F)
                {
                  sub_21CF9F9EC(319, &qword_28121E0A0, MEMORY[0x277CC9318]);
                  if (v9 <= 0x3F)
                  {
                    sub_21CF9F998(319, &qword_27CE45580, MEMORY[0x277D85720]);
                    if (v10 <= 0x3F)
                    {
                      sub_21CF9F9EC(319, &qword_27CE45588, MEMORY[0x277D83B88]);
                      if (v11 <= 0x3F)
                      {
                        sub_21CF9F9EC(319, qword_28121D878, &type metadata for PrivateMLClientModelOptions.TMLConstraints);
                        if (v12 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_21CF9F934(uint64_t a1)
{
  if (!qword_27CE45570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE45578, &unk_21D024270);
    v1 = sub_21D022924();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE45570);
    }
  }
}

void sub_21CF9F998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21D022924();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21CF9F9EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21D022924();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PrivateMLClientModelOptions.SamplingStrategy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for PrivateMLClientModelOptions.SamplingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21CF9FAD8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_21CF9FAF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_21CF9FB58(uint64_t a1, int a2)
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

uint64_t sub_21CF9FBA0(uint64_t result, int a2, int a3)
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

uint64_t sub_21CF9FBF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21CF9FC40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_21CF9FC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_21CFA3AC4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_21CF9D320(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_21CFA410C();
        v16 = v18;
      }

      result = sub_21CFA3764(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_21CF9FDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_21CFA3F90(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_21CF9D320(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_21CFA4554();
        v14 = v16;
      }

      result = sub_21CFA3914(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_21CF9FE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_21CFA3E14(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_21CF9D320(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_21CFA43E4();
        v14 = v16;
      }

      result = sub_21CFA3914(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_21CF9FF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21CF7F198(a3, v22 - v9, &qword_27CE45310, &qword_21D0236E0);
  v11 = sub_21D022774();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21CF7F200(v10, &qword_27CE45310, &qword_21D0236E0);
  }

  else
  {
    sub_21D022764();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21D022734();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21D0225E4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_21CF7F200(a3, &qword_27CE45310, &qword_21D0236E0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21CF7F200(a3, &qword_27CE45310, &qword_21D0236E0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21CFA0240()
{
  type metadata accessor for PrivateMLClientSessionManager(0);
  swift_allocObject();
  result = sub_21CFA0280();
  qword_27CE537E0 = result;
  return result;
}

uint64_t sub_21CFA0280()
{
  v1 = v0;
  v2 = sub_21D0224A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_defaultActor_initialize();
  v6 = MEMORY[0x277D84F90];
  *(v1 + 112) = sub_21CF9D820(MEMORY[0x277D84F90]);
  *(v1 + 120) = sub_21CF9D924(v6);
  sub_21D022494();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC15PrivateMLClient29PrivateMLClientSessionManager_logger, v5, v2);
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13[0] = xmmword_27CE468E8;
  v13[1] = unk_27CE468F8;
  v14 = byte_27CE46908;
  sub_21CF7F198(v13, v12, &qword_27CE45260, &unk_21D0244F0);
  v7 = sub_21D0146E4();
  sub_21CF7F200(v13, &qword_27CE45260, &unk_21D0244F0);
  *(v1 + 128) = v7;

  v8 = sub_21D022484();
  v9 = sub_21D0228B4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = *(v1 + 128);

    _os_log_impl(&dword_21CF72000, v8, v9, "PMLCSM: tLLCDelay set to %u", v10, 8u);
    MEMORY[0x223D3ADE0](v10, -1, -1);
  }

  else
  {
  }

  return v1;
}

void sub_21CFA0500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26[-v9];
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27[0] = xmmword_27CE46910;
  v27[1] = unk_27CE46920;
  v28 = byte_27CE46930;
  sub_21CF7F198(v27, v26, &qword_27CE45288, &qword_21D023970);
  v11 = sub_21D01561C();
  sub_21CF7F200(v27, &qword_27CE45288, &qword_21D023970);
  if (v11)
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v4 + 112);
    *(v4 + 112) = 0x8000000000000000;
    sub_21CFA3F90(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 112) = v29;
    swift_endAccess();
    v13 = sub_21D022774();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    v14 = qword_27CE44EC8;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = qword_27CE537E0;
    v16 = sub_21CFA484C(&qword_27CE455A8, type metadata accessor for PrivateMLClientSessionManager, &unk_21D0244C8);
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v16;
    v17[4] = v4;
    v17[5] = a2;
    v17[6] = a3;

    v18 = sub_21CF9FF94(0, 0, v10, &unk_21D024508, v17);
    swift_beginAccess();

    v19 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v4 + 120);
    *(v4 + 120) = 0x8000000000000000;
    sub_21CFA3E14(v18, a2, a3, v19);

    *(v4 + 120) = v29;
    swift_endAccess();
    v20 = sub_21D022484();
    v21 = sub_21D0228B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21CF72000, v20, v21, "PMLCSM: timeout queue created and added.", v22, 2u);
      MEMORY[0x223D3ADE0](v22, -1, -1);
    }
  }

  else
  {
    v23 = sub_21D022484();
    v24 = sub_21D0228B4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21CF72000, v23, v24, "UserDefaults.enableLLC NOT enabled", v25, 2u);
      MEMORY[0x223D3ADE0](v25, -1, -1);
    }
  }
}

uint64_t sub_21CFA0930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  if (qword_27CE44EC8 != -1)
  {
    swift_once();
  }

  v7 = qword_27CE537E0;
  v6[6] = qword_27CE537E0;

  return MEMORY[0x2822009F8](sub_21CFA09FC, v7, 0);
}

uint64_t sub_21CFA09FC()
{
  v1 = sub_21D022584();
  v2 = sub_21D022584();
  v3 = [objc_opt_self() attributeWithDomain:v1 name:v2];
  v0[7] = v3;

  v4 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45468, &qword_21D024510);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21D023C60;
  *(v5 + 32) = v3;
  v6 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v7 = v3;
  v8 = sub_21D022584();
  sub_21CF9B900();
  v9 = sub_21D0226F4();

  v10 = [v6 initWithExplanation:v8 target:v4 attributes:v9];
  v0[8] = v10;

  v0[2] = 0;
  v11 = [v10 acquireWithError_];
  v12 = v0[2];
  if (v11)
  {
    v13 = v0[3];
    if (*(v13 + 128))
    {
      v15 = v0[5];
      v14 = v0[6];
      v16 = v0[4];
      v17 = swift_task_alloc();
      v0[9] = v17;
      v17[2] = v13;
      v17[3] = v16;
      v17[4] = v15;
      v18 = swift_task_alloc();
      v0[10] = v18;
      v18[2] = v13;
      v18[3] = v16;
      v18[4] = v15;
      v19 = sub_21CFA484C(&qword_27CE455A8, type metadata accessor for PrivateMLClientSessionManager, &unk_21D0244C8);
      v20 = v12;
      v21 = swift_task_alloc();
      v0[11] = v21;
      *v21 = v0;
      v21[1] = sub_21CFA0E54;
      v22 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200830](v21, &unk_21D024520, v17, sub_21CFA4840, v18, v14, v19, v22);
    }

    v25 = v12;
    v26 = sub_21D022484();
    v27 = sub_21D0228B4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_21CF72000, v26, v27, "PMLCSM: Don't timeout on client side.", v28, 2u);
      MEMORY[0x223D3ADE0](v28, -1, -1);
    }

    v29 = v0[7];
    v30 = v0[8];
    sub_21CFA1138(v30);

    v24 = v0[1];
  }

  else
  {
    v23 = v12;
    sub_21D0219A4();

    swift_willThrow();
    v24 = v0[1];
  }

  return v24();
}

uint64_t sub_21CFA0E54()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_21CFA1078;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_21CFA0FD0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21CFA0FD0()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_21CFA1138(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CFA1078()
{
  v1 = *(v0 + 64);

  sub_21CFA1138(v1);
  v2 = *(v0 + 56);

  v3 = *(v0 + 8);

  return v3();
}

void sub_21CFA1138(void *a1)
{
  [a1 invalidate];
  oslog = sub_21D022484();
  v1 = sub_21D0228B4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_21CF72000, oslog, v1, "PMLCSM: release rbAssertion.", v2, 2u);
    MEMORY[0x223D3ADE0](v2, -1, -1);
  }
}

uint64_t sub_21CFA11F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_21D0229F4();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  if (qword_27CE44EC8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CE537E0;
  v4[8] = qword_27CE537E0;

  return MEMORY[0x2822009F8](sub_21CFA12F0, v6, 0);
}

uint64_t sub_21CFA12F0(uint64_t a1)
{
  v1[9] = OBJC_IVAR____TtC15PrivateMLClient29PrivateMLClientSessionManager_logger;
  v2 = sub_21D022484();
  v3 = sub_21D0228B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CF72000, v2, v3, "PMLCSM: start sleep.", v4, 2u);
    MEMORY[0x223D3ADE0](v4, -1, -1);
  }

  v5 = v1[2];

  v6 = 1000000000000000 * *(v5 + 128);
  v7 = (*(v5 + 128) * 0x38D7EA4C68000uLL) >> 64;
  sub_21D022B84();
  v8 = swift_task_alloc();
  v1[10] = v8;
  *v8 = v1;
  v8[1] = sub_21CFA145C;

  return sub_21CFA27FC(v6, v7, 0, 0, 1);
}

uint64_t sub_21CFA145C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_21CF9A194;
  }

  else
  {
    v7 = sub_21CFA15E4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_21CFA15E4(uint64_t a1)
{
  v2 = sub_21D022484();
  v3 = sub_21D0228B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CF72000, v2, v3, "PMLCSM: wakeup.", v4, 2u);
    MEMORY[0x223D3ADE0](v4, -1, -1);
  }

  v5 = sub_21D0227E4();
  v6 = sub_21D022484();
  if (v5)
  {
    v7 = sub_21D0228B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21CF72000, v6, v7, "PMLCSM: Timeout connection cancelled.", v8, 2u);
      MEMORY[0x223D3ADE0](v8, -1, -1);
    }
  }

  else
  {
    v9 = sub_21D0228C4();
    if (os_log_type_enabled(v6, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_21CF72000, v6, v9, "PMLCSM: timed out connection was not used.", v10, 2u);
      MEMORY[0x223D3ADE0](v10, -1, -1);
    }

    v12 = v1[3];
    v11 = v1[4];

    sub_21CFA1DD0(v12, v11);
  }

  v13 = v1[1];

  return v13();
}

void sub_21CFA17C8(uint64_t a1, uint64_t a2, unint64_t a3)
{

  oslog = sub_21D022484();
  v5 = sub_21D0228B4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_21CF9703C(a2, a3, &v9);
    _os_log_impl(&dword_21CF72000, oslog, v5, "PMLCSM: onCancel timeout cancellation. %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D3ADE0](v7, -1, -1);
    MEMORY[0x223D3ADE0](v6, -1, -1);
  }
}

uint64_t sub_21CFA18E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v33[0] = xmmword_27CE46910;
  v33[1] = unk_27CE46920;
  v34 = byte_27CE46930;
  sub_21CF7F198(v33, v32, &qword_27CE45288, &qword_21D023970);
  v6 = sub_21D01561C();
  sub_21CF7F200(v33, &qword_27CE45288, &qword_21D023970);
  if ((v6 & 1) == 0)
  {
    v20 = sub_21D022484();
    v21 = sub_21D0228B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21CF72000, v20, v21, "UserDefaults.enableLLC NOT enabled", v22, 2u);
      MEMORY[0x223D3ADE0](v22, -1, -1);
    }

    return 0;
  }

  v7 = sub_21D022484();
  v8 = sub_21D0228B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21CF9703C(a1, a2, v32);
    _os_log_impl(&dword_21CF72000, v7, v8, "PMLCSM: dequeue Start %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D3ADE0](v10, -1, -1);
    MEMORY[0x223D3ADE0](v9, -1, -1);
  }

  swift_beginAccess();
  v11 = *(v3 + 112);
  if (!*(v11 + 16))
  {
LABEL_15:

    v23 = sub_21D022484();
    v24 = sub_21D0228B4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_21CF9703C(a1, a2, &v31);
      _os_log_impl(&dword_21CF72000, v23, v24, "PMLCSM: deqeue is nil %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x223D3ADE0](v26, -1, -1);
      MEMORY[0x223D3ADE0](v25, -1, -1);
    }

    v27 = sub_21D022484();
    v28 = sub_21D0228B4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_21CF9703C(a1, a2, &v31);
      _os_log_impl(&dword_21CF72000, v27, v28, "PMLCSM: getHeldTemporaryConnection deferred %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x223D3ADE0](v30, -1, -1);
      MEMORY[0x223D3ADE0](v29, -1, -1);
    }

    return 0;
  }

  v12 = sub_21CF9D320(a1, a2);
  if ((v13 & 1) == 0)
  {

    goto LABEL_15;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  v15 = sub_21D022484();
  v16 = sub_21D0228B4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_21CF9703C(a1, a2, &v31);
    _os_log_impl(&dword_21CF72000, v15, v16, "PMLCSM: getHeldTemporaryConnection deferred %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D3ADE0](v18, -1, -1);
    MEMORY[0x223D3ADE0](v17, -1, -1);
  }

  return v14;
}

void sub_21CFA1DD0(uint64_t a1, unint64_t a2)
{
  v3 = v2;

  v6 = sub_21D022484();
  v7 = sub_21D0228B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21CF9703C(a1, a2, v25);
    _os_log_impl(&dword_21CF72000, v6, v7, "PMLCSM: cancelSessionUUID Start %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D3ADE0](v9, -1, -1);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  swift_beginAccess();
  if (!*(*(v3 + 112) + 16))
  {
LABEL_10:

    v18 = sub_21D022484();
    v19 = sub_21D0228B4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_21CF9703C(a1, a2, v24);
      _os_log_impl(&dword_21CF72000, v18, v19, "PMLCSM: expired timer connection timeout nil! %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223D3ADE0](v21, -1, -1);
      MEMORY[0x223D3ADE0](v20, -1, -1);
    }

    sub_21CFA2268(a1, a2);

    v16 = sub_21D022484();
    v17 = sub_21D0228B4();

    if (os_log_type_enabled(v16, v17))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  sub_21CF9D320(a1, a2);
  if ((v10 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_21CF90D60(v11);
  swift_beginAccess();

  sub_21CF9FDA4(0, a1, a2);
  swift_endAccess();

  v12 = sub_21D022484();
  v13 = sub_21D0228B4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_21CF9703C(a1, a2, v24);
    _os_log_impl(&dword_21CF72000, v12, v13, "PMLCSM: cancelSessionUUID End %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D3ADE0](v15, -1, -1);
    MEMORY[0x223D3ADE0](v14, -1, -1);
  }

  sub_21CFA2268(a1, a2);

  v16 = sub_21D022484();
  v17 = sub_21D0228B4();

  if (os_log_type_enabled(v16, v17))
  {
LABEL_13:
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_21CF9703C(a1, a2, v24);
    _os_log_impl(&dword_21CF72000, v16, v17, "PMLCSM: deferred timerExpiredRemoveConnection %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223D3ADE0](v23, -1, -1);
    MEMORY[0x223D3ADE0](v22, -1, -1);
  }

LABEL_14:
}

void sub_21CFA2268(uint64_t a1, unint64_t a2)
{
  v3 = v2;

  v6 = sub_21D022484();
  v7 = sub_21D0228B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_21CF9703C(a1, a2, v19);
    _os_log_impl(&dword_21CF72000, v6, v7, "PMLCSM: dequeueTimeout Start %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D3ADE0](v9, -1, -1);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  swift_beginAccess();
  if (*(*(v3 + 120) + 16))
  {

    sub_21CF9D320(a1, a2);
    if (v10)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45268, &qword_21D023D50);
      sub_21D0227D4();
      swift_beginAccess();

      sub_21CF9FE9C(0, a1, a2);
      swift_endAccess();

      v11 = sub_21D022484();
      v12 = sub_21D0228B4();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v18[0] = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_21CF9703C(a1, a2, v18);
        _os_log_impl(&dword_21CF72000, v11, v12, "PMLCSM: dequeueTimeout complete %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x223D3ADE0](v14, -1, -1);
        MEMORY[0x223D3ADE0](v13, -1, -1);
      }

      return;
    }
  }

  v15 = sub_21D022484();
  v16 = sub_21D0228B4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21CF72000, v15, v16, "PMLCSM: timeout task is empty!", v17, 2u);
    MEMORY[0x223D3ADE0](v17, -1, -1);
  }
}

uint64_t sub_21CFA2588()
{

  v1 = OBJC_IVAR____TtC15PrivateMLClient29PrivateMLClientSessionManager_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for PrivateMLClientSessionManager(uint64_t a1)
{
  result = qword_27CE45598;
  if (!qword_27CE45598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CFA2664(uint64_t a1)
{
  result = sub_21D0224A4();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21CFA2764()
{
  if (qword_27CE44EC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_21CFA27C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PrivateMLClientSessionManager(0);

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_21CFA27FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_21D0229E4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21CFA28FC, 0, 0);
}

uint64_t sub_21CFA28FC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_21D0229F4();
  v5 = sub_21CFA484C(&qword_27CE455B0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_21D022B64();
  sub_21CFA484C(&qword_27CE455B8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_21D022A04();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21CFA2A8C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_21CFA2A8C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CFA2C48, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_21CFA2C48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CFA2CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45510, &qword_21D024200);
  v37 = v4;
  result = sub_21D022A54();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_21D022C04();
      sub_21D022614();
      result = sub_21D022C24();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21CFA2F74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_21D022A54();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_21D022C04();
      sub_21D022614();
      result = sub_21D022C24();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_21CFA3214(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE454F0, &qword_21D0241E0);
  v34 = v4;
  result = sub_21D022A54();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21D022C04();
      sub_21D022614();
      result = sub_21D022C24();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21CFA34BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE454F8, &qword_21D0241E8);
  v34 = v4;
  result = sub_21D022A54();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_21D022C04();
      sub_21D022614();
      result = sub_21D022C24();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_21CFA3764(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21D022974() + 1) & ~v5;
    do
    {
      sub_21D022C04();

      sub_21D022614();
      v9 = sub_21D022C24();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21CFA3914(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21D022974() + 1) & ~v5;
    do
    {
      sub_21D022C04();

      sub_21D022614();
      v9 = sub_21D022C24();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}