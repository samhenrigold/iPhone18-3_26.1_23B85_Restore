uint64_t sub_22B3BE2FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22B3BE31C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 88) = v3;
  return result;
}

uint64_t sub_22B3BE394(uint64_t a1)
{
  result = sub_22B3F6184();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22B3BE430(uint64_t a1)
{
  sub_22B3F6184();
  if (v1 <= 0x3F)
  {
    sub_22B3BE51C(319, &qword_28140D268, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      sub_22B3BE51C(319, &qword_28140BF48, sub_22B3BE570);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22B3BE51C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22B3F6994();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22B3BE570()
{
  result = qword_28140BF50;
  if (!qword_28140BF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28140BF50);
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

uint64_t getEnumTagSinglePayload for BlackPearlCategorizationVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BlackPearlCategorizationVersion(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for BlackPearlThreshold.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BlackPearlThreshold.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BlackPearlVersion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BlackPearlVersion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22B3BE8E0()
{
  result = qword_27D8BE1B0;
  if (!qword_27D8BE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE1B0);
  }

  return result;
}

unint64_t sub_22B3BE938()
{
  result = qword_27D8BE1B8;
  if (!qword_27D8BE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE1B8);
  }

  return result;
}

unint64_t sub_22B3BE990()
{
  result = qword_27D8BE1C0;
  if (!qword_27D8BE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE1C0);
  }

  return result;
}

unint64_t sub_22B3BE9E8()
{
  result = qword_27D8BE1C8;
  if (!qword_27D8BE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE1C8);
  }

  return result;
}

unint64_t sub_22B3BEA40()
{
  result = qword_27D8BE1D0;
  if (!qword_27D8BE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE1D0);
  }

  return result;
}

unint64_t sub_22B3BEA98()
{
  result = qword_27D8BE1D8;
  if (!qword_27D8BE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE1D8);
  }

  return result;
}

unint64_t sub_22B3BEAF0()
{
  result = qword_27D8BE1E0;
  if (!qword_27D8BE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE1E0);
  }

  return result;
}

unint64_t sub_22B3BEB48()
{
  result = qword_27D8BE1E8;
  if (!qword_27D8BE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE1E8);
  }

  return result;
}

unint64_t sub_22B3BEBA0()
{
  result = qword_27D8BE1F0;
  if (!qword_27D8BE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE1F0);
  }

  return result;
}

unsigned __int8 *sub_22B3BEBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_22B3C0304();

  result = sub_22B3F6754();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22B3BF18C(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22B3F6AF4();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
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

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22B3BF18C(uint64_t a1, unint64_t a2)
{
  v2 = sub_22B3F6764();
  v6 = sub_22B3BF20C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22B3BF20C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22B3F69B4();
    if (!v9 || (v10 = v9, v11 = sub_22B3C8134(v9, 0), v12 = sub_22B3BF364(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22B3F6614();

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
      return sub_22B3F6614();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22B3F6AF4();
LABEL_4:

  return sub_22B3F6614();
}

unint64_t sub_22B3BF364(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_22B3CB7B0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22B3F66E4();
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
          result = sub_22B3F6AF4();
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

    result = sub_22B3CB7B0(v12, a6, a7);
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

    result = sub_22B3F66B4();
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

uint64_t sub_22B3BF584(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22B3F6AF4();
  }

  result = sub_22B3BF650(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_22B3BF650(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22B3CB7B0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22B3F66D4();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22B3CB7B0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22B3CB7B0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_22B3F66D4();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
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

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_22B3BFABC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000022B3FAD40 == a2;
  if (v3 || (sub_22B3F6C84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022B3FAD60 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022B3FAD80 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022B3FADA0 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000022B3FADC0 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022B3FADE0 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000022B3FAE00 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000020 && 0x800000022B3FAE20 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000022B3FAE50 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000022B3FAE70 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022B3FAE90 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000022B3FAEB0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_22B3F6C84();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_22B3BFE74(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000022B3FAED0 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022B3FAEF0 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022B3FAF10 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022B3FAF30 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEC00000043325064 || (sub_22B3F6C84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEF7265646E655364 || (sub_22B3F6C84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEB00000000535464 || (sub_22B3F6C84() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022B3FAF50 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022B3FAF70 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022B3FAF90 == a2 || (sub_22B3F6C84() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022B3FAFB0 == a2)
  {

    return 10;
  }

  else
  {
    v5 = sub_22B3F6C84();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_22B3C01F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22B3F6C84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746170 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22B3F6C84();

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

unint64_t sub_22B3C0304()
{
  result = qword_27D8BE1F8;
  if (!qword_27D8BE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE1F8);
  }

  return result;
}

uint64_t sub_22B3C0374(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_22B3C03BC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22B3C040C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE208, &unk_22B3F85F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B3C0754();
  sub_22B3F6D74();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE108, &qword_22B3F7E10);
  sub_22B3C0B14(&qword_27D8BE218, MEMORY[0x277D84B80], MEMORY[0x277D83948]);
  sub_22B3F6C44();
  if (v4)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v14 = 1;
  sub_22B3F6C34();
  v13 = 2;
  sub_22B3F6C34();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22B3C0608()
{
  v1 = 0x7374656B637562;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697469736F70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x70614D746962;
  }
}

uint64_t sub_22B3C0664@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22B3C07A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22B3C068C(uint64_t a1)
{
  v2 = sub_22B3C0754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B3C06C8(uint64_t a1)
{
  v2 = sub_22B3C0754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22B3C0704@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22B3C08C4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_22B3C0754()
{
  result = qword_27D8BE210;
  if (!qword_27D8BE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE210);
  }

  return result;
}

uint64_t sub_22B3C07A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70614D746962 && a2 == 0xE600000000000000;
  if (v4 || (sub_22B3F6C84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374656B637562 && a2 == 0xE700000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_22B3F6C84();

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

uint64_t sub_22B3C08C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE220, &qword_22B3F8600);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-v4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B3C0754();
  sub_22B3F6D64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE108, &qword_22B3F7E10);
  v8[7] = 0;
  sub_22B3C0B14(&qword_27D8BE228, MEMORY[0x277D84BA0], MEMORY[0x277D83978]);
  sub_22B3F6BD4();
  v7 = v9;
  v8[6] = 1;
  sub_22B3F6BC4();
  v8[5] = 2;
  sub_22B3F6BC4();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_22B3C0B14(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE108, &qword_22B3F7E10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22B3C0B94()
{
  result = qword_27D8BE230;
  if (!qword_27D8BE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE230);
  }

  return result;
}

unint64_t sub_22B3C0BEC()
{
  result = qword_27D8BE238;
  if (!qword_27D8BE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE238);
  }

  return result;
}

unint64_t sub_22B3C0C44()
{
  result = qword_27D8BE240;
  if (!qword_27D8BE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE240);
  }

  return result;
}

void BloomFilter.init(numHashFunction:numBuckets:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 & 7) != 0)
  {
    goto LABEL_8;
  }

  v4 = a2 >> 3;
  if (a2 >> 3 < 0)
  {
    __break(1u);
LABEL_8:
    sub_22B3F6B14();
    __break(1u);
    return;
  }

  if (a2)
  {
    v7 = sub_22B3F67B4();
    *(v7 + 16) = v4;
    bzero((v7 + 32), v4);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *a3 = v7;
  *(a3 + 8) = a2;
  *(a3 + 16) = v4;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
}

uint64_t sub_22B3C0D7C()
{
  v1 = 0x46687361486D756ELL;
  if (*v0 != 1)
  {
    v1 = 0x656B6375426D756ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x70614D746962;
  }
}

uint64_t sub_22B3C0DE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22B3C2254(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22B3C0E0C(uint64_t a1)
{
  v2 = sub_22B3C1084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22B3C0E48(uint64_t a1)
{
  v2 = sub_22B3C1084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BloomFilter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE248, &qword_22B3F8720);
  v13 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v17 = *(v1 + 24);
  v12[0] = v1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B3C1084();

  sub_22B3F6D74();
  v14 = v7;
  v15 = v6;
  v16 = v8;
  v18 = 0;
  sub_22B3C10D8();
  v9 = v12[1];
  sub_22B3F6C44();

  if (v9)
  {
    return (*(v13 + 8))(v5, v3);
  }

  v11 = v13;
  LOBYTE(v14) = 1;
  sub_22B3F6C54();
  LOBYTE(v14) = 2;
  sub_22B3F6C34();
  return (*(v11 + 8))(v5, v3);
}

unint64_t sub_22B3C1084()
{
  result = qword_27D8BE250;
  if (!qword_27D8BE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE250);
  }

  return result;
}

unint64_t sub_22B3C10D8()
{
  result = qword_27D8BE258;
  if (!qword_27D8BE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE258);
  }

  return result;
}

uint64_t BloomFilter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE260, &qword_22B3F8728);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22B3C1084();
  sub_22B3F6D64();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = 0;
  sub_22B3C1378();
  sub_22B3F6BD4();
  v9 = v20;
  v18 = v19;
  v10 = v21;
  LOBYTE(v19) = 1;
  v11 = sub_22B3F6BE4();
  v16 = v9;
  v17 = v10;
  v22 = v11;
  LOBYTE(v19) = 2;
  v12 = sub_22B3F6BC4();
  (*(v6 + 8))(v8, v5);
  v15 = v16;
  v14 = v17;
  *a2 = v18;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  *(a2 + 24) = v22;
  *(a2 + 32) = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22B3C1378()
{
  result = qword_27D8BE268;
  if (!qword_27D8BE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE268);
  }

  return result;
}

Swift::Void __swiftcall BloomFilter.put(object:)(Swift::String object)
{
  v4 = *(v1 + 4);
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v4))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v1 = sub_22B3C221C(v1);
    goto LABEL_14;
  }

  if (!v4)
  {
    goto LABEL_31;
  }

  v3 = object._object;
  countAndFlagsBits = object._countAndFlagsBits;
  v6 = v1[24];
  v1 = *v1;

  v7 = 0;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = sub_22B3C20EC(countAndFlagsBits, v3);
    v9 = _s20MCCKitCategorization11MurmurHash3V03getcD05bytes4seeds6UInt32VSays5UInt8VG_AHtFZ_0(v8, v7);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_22B3C199C(0, *(v2 + 2) + 1, 1, v2);
    }

    v11 = *(v2 + 2);
    v10 = *(v2 + 3);
    if (v11 >= v10 >> 1)
    {
      v2 = sub_22B3C199C((v10 > 1), v11 + 1, 1, v2);
    }

    *(v2 + 2) = v11 + 1;
    *&v2[8 * v11 + 32] = v9 % v4;
    if (v6 == v7)
    {
      break;
    }

    if (++v7 == 256)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  v3 = *(v2 + 2);
  if (!v3)
  {

    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_14:
  v12 = 32;
  do
  {
    v13 = *&v2[v12];
    v14 = v13 + 7;
    if (v13 >= 0)
    {
      v14 = *&v2[v12];
    }

    v15 = v13 - (v14 & 0xFFFFFFFFFFFFFFF8);
    if (v15 >= 1)
    {
      v16 = 2 << (v15 - 1);
    }

    else
    {
      v16 = 2uLL >> (1 - v15);
    }

    if (v13 < -7)
    {
      goto LABEL_27;
    }

    v17 = v14 >> 3;
    if (v17 >= *(v1 + 2))
    {
      goto LABEL_28;
    }

    v1[v17 + 32] |= v16;
    v12 += 8;
    --v3;
  }

  while (v3);

  *v18 = v1;
}

uint64_t sub_22B3C1654(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      v5._countAndFlagsBits = v3;
      v5._object = v4;
      BloomFilter.put(object:)(v5);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

Swift::Bool __swiftcall BloomFilter.mayContain(object:)(Swift::String object)
{
  v2 = v1[4];
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v2))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v2)
  {
    v3 = object._object;
    countAndFlagsBits = object._countAndFlagsBits;
    v5 = 0;
    v6 = *v1;
    v7 = *(v1 + 24);
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = sub_22B3C20EC(countAndFlagsBits, v3);
      v10 = _s20MCCKitCategorization11MurmurHash3V03getcD05bytes4seeds6UInt32VSays5UInt8VG_AHtFZ_0(v9, v5);

      LOBYTE(object._countAndFlagsBits) = swift_isUniquelyReferenced_nonNull_native();
      if ((object._countAndFlagsBits & 1) == 0)
      {
        object._countAndFlagsBits = sub_22B3C199C(0, *(v8 + 16) + 1, 1, v8);
        v8 = object._countAndFlagsBits;
      }

      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        object._countAndFlagsBits = sub_22B3C199C((v11 > 1), v12 + 1, 1, v8);
        v8 = object._countAndFlagsBits;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10 % v2;
      if (v7 == v5)
      {
        break;
      }

      if (++v5 == 256)
      {
        goto LABEL_26;
      }
    }

    v13 = 32;
    while (1)
    {
      v14 = *(v8 + v13);
      v15 = v14 + 7;
      if (v14 >= 0)
      {
        v15 = *(v8 + v13);
      }

      v16 = v14 - (v15 & 0xFFFFFFFFFFFFFFF8);
      v17 = v16 >= 1 ? 2 << (v16 - 1) : 2uLL >> (1 - v16);
      if (v14 < -7)
      {
        break;
      }

      v18 = v15 >> 3;
      if (v18 >= *(v6 + 16))
      {
        goto LABEL_25;
      }

      v19 = *(v6 + 32 + v18) & v17;
      if (v12-- != 0)
      {
        v13 += 8;
        if (v19)
        {
          continue;
        }
      }

      v21 = v19 != 0;

      LOBYTE(object._countAndFlagsBits) = v21;
      return object._countAndFlagsBits;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return object._countAndFlagsBits;
}

char *sub_22B3C1890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2A0, &qword_22B3F88F8);
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

char *sub_22B3C199C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2C8, &unk_22B3F8920);
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

void *sub_22B3C1AA0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2B8, &qword_22B3F8910);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2C0, &qword_22B3F8918);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B3C1BD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2B0, &qword_22B3F9C00);
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

char *sub_22B3C1CEC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_22B3C1DD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE288, &qword_22B3F9BC0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_22B3C1EDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE290, &unk_22B3F88E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_22B3C1FE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE298, &unk_22B3F9C20);
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

void *sub_22B3C20EC(uint64_t a1, unint64_t a2)
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

  v6 = sub_22B3C8134(v5, 0);
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

  result = sub_22B3F6AF4();
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
        v10 = sub_22B3F66A4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22B3C8134(v10, 0);
        result = sub_22B3F6A94();
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

uint64_t sub_22B3C2254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70614D746962 && a2 == 0xE600000000000000;
  if (v4 || (sub_22B3F6C84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46687361486D756ELL && a2 == 0xEF6E6F6974636E75 || (sub_22B3F6C84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656B6375426D756ELL && a2 == 0xEA00000000007374)
  {

    return 2;
  }

  else
  {
    v6 = sub_22B3F6C84();

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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22B3C238C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22B3C23D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_22B3C2440()
{
  result = qword_27D8BE270;
  if (!qword_27D8BE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE270);
  }

  return result;
}

unint64_t sub_22B3C2498()
{
  result = qword_27D8BE278;
  if (!qword_27D8BE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE278);
  }

  return result;
}

unint64_t sub_22B3C24F0()
{
  result = qword_27D8BE280;
  if (!qword_27D8BE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE280);
  }

  return result;
}

MCCKitCategorization::LanguageModel_optional __swiftcall LanguageModel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22B3F6B74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t LanguageModel.rawValue.getter()
{
  v1 = 0x6873696C676E65;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x726F707075536E75;
  }

  if (*v0)
  {
    v1 = 0x6E6974616CLL;
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

uint64_t sub_22B3C263C()
{
  sub_22B3F6D34();
  sub_22B3F6624();

  return sub_22B3F6D54();
}

uint64_t sub_22B3C2708(uint64_t a1)
{
  sub_22B3F6624();
}

uint64_t sub_22B3C27C0(uint64_t a1)
{
  sub_22B3F6D34();
  sub_22B3F6624();

  return sub_22B3F6D54();
}

void sub_22B3C2894(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6873696C676E65;
  v4 = 0x800000022B3FA140;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x726F707075536E75;
    v4 = 0xEB00000000646574;
  }

  if (*v1)
  {
    v3 = 0x6E6974616CLL;
    v2 = 0xE500000000000000;
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

id sub_22B3C292C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2E8, &qword_22B3F8B58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22B3F8930;
  v1 = *MEMORY[0x277CD8718];
  v2 = *MEMORY[0x277CD8810];
  *(v0 + 32) = *MEMORY[0x277CD8718];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CD87D8];
  v4 = *MEMORY[0x277CD8768];
  *(v0 + 48) = *MEMORY[0x277CD87D8];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CD8728];
  v6 = *MEMORY[0x277CD8868];
  *(v0 + 64) = *MEMORY[0x277CD8728];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CD8848];
  v8 = *MEMORY[0x277CD8700];
  *(v0 + 80) = *MEMORY[0x277CD8848];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CD8818];
  v10 = *MEMORY[0x277CD87C0];
  *(v0 + 96) = *MEMORY[0x277CD8818];
  *(v0 + 104) = v10;
  v22 = *MEMORY[0x277CD86F8];
  *(v0 + 112) = *MEMORY[0x277CD86F8];
  qword_28140C868 = v0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;

  return v22;
}

id sub_22B3C2AA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2E8, &qword_22B3F8B58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22B3F8940;
  v1 = *MEMORY[0x277CD8770];
  v2 = *MEMORY[0x277CD87F8];
  *(v0 + 32) = *MEMORY[0x277CD8770];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CD8840];
  v9 = *MEMORY[0x277CD8790];
  v4 = *MEMORY[0x277CD8790];
  *(v0 + 48) = *MEMORY[0x277CD8840];
  *(v0 + 56) = v4;
  qword_28140C878 = v0;
  v5 = v1;
  v6 = v2;
  v7 = v3;

  return v9;
}

uint64_t sub_22B3C2B7C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

void *sub_22B3C2BDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2E0, &unk_22B3F8B48);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22B3F8950;
  *(v1 + 32) = xmmword_22B3F8960;
  *(v1 + 48) = 0x9FFF00004E00;
  v0[2] = v1;
  v2 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[3] = sub_22B3CED78(0x100000000000007CLL, 0x800000022B3FB190, 0);
  v3 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[4] = sub_22B3CED78(0xD000000000000010, 0x800000022B3FB270, 0);
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[5] = sub_22B3CED78(0x1000000000000011, 0x800000022B3FB290, 0);
  v5 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[6] = sub_22B3CED78(0x1000000000000011, 0x800000022B3FB2B0, 0);
  v6 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[7] = sub_22B3CED78(0x100000000000003ELL, 0x800000022B3FB2D0, 0);
  v7 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[8] = sub_22B3CED78(0x1000000000000031, 0x800000022B3FB310, 0);
  v8 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[9] = sub_22B3CED78(0xD00000000000002BLL, 0x800000022B3FB350, 0);
  v9 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[10] = sub_22B3CED78(727525211, 0xE400000000000000, 0);
  v10 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[11] = sub_22B3CED78(0x2A5B253F5D2C5B2DLL, 0xEA00000000003F5DLL, 0);
  v11 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[12] = sub_22B3CED78(0xD00000000000006BLL, 0x800000022B3FB380, 0);
  v12 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[13] = sub_22B3CED78(0xD000000000000011, 0x800000022B3FB3F0, 0);
  v13 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[14] = sub_22B3CED78(539981600, 0xE400000000000000, 0);
  v14 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v0[15] = sub_22B3CED78(727523419, 0xE400000000000000, 0);
  return v0;
}

uint64_t sub_22B3C2F90(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
  v3 = sub_22B3F6564();
  [v2 processString_];

  result = sub_22B3F6934();
  v5 = result;
  v6 = 0;
  v7 = result + 64;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_10:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = *(*(v5 + 56) + ((v6 << 9) | (8 * v13)));
    v15 = sub_22B3F6594();
    v17 = v16;
    if (v15 == sub_22B3F6594() && v17 == v18)
    {
    }

    else
    {
      v20 = sub_22B3F6C84();

      if ((v20 & 1) == 0 && v14 > 0.95)
      {

        return 0;
      }
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return 1;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_22B3C3158(char *a1, uint64_t a2, uint64_t a3)
{
  v54 = a1;
  v6 = sub_22B3F5F94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
  sub_22B3C460C(a2, a3);
  v10 = sub_22B3C3720(a2, a3);
  v12 = sub_22B3C42A8(v10, v11);
  v14 = v13;

  v15 = MEMORY[0x23188FFF0](v12, v14);
  v16 = *(v3 + 120);
  v17 = sub_22B3F6564();
  v18 = sub_22B3F6564();
  v19 = [v16 stringByReplacingMatchesInString:v17 options:0 range:0 withTemplate:{v15, v18}];

  v20 = sub_22B3F6594();
  v22 = v21;

  v56[0] = v20;
  v56[1] = v22;
  sub_22B3F5F64();
  sub_22B3B4258();
  sub_22B3F69E4();

  (*(v7 + 8))(v9, v6);

  if (sub_22B3F6634() >= 4)
  {

    if (qword_28140C870 != -1)
    {
LABEL_36:
      swift_once();
    }

    type metadata accessor for NLLanguage(0);
    v25 = sub_22B3F6784();
    v24 = v55;
    [v55 setLanguageConstraints_];

    v23 = sub_22B3F6564();
  }

  else
  {

    v23 = sub_22B3F6564();
    v24 = v55;
  }

  [v24 processString_];

  v26 = sub_22B3F6934();
  [v24 reset];
  v27 = 0;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v31 = (v28 + 63) >> 6;
  do
  {
    if (!v30)
    {
      while (1)
      {
        v32 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v32 >= v31)
        {

          *v54 = 0;
          v43 = *MEMORY[0x277CD8708];

          return v43;
        }

        v30 = *(v26 + 64 + 8 * v32);
        ++v27;
        if (v30)
        {
          v27 = v32;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v32 = v27;
LABEL_14:
    v33 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v34 = v33 | (v32 << 6);
    v35 = *(*(v26 + 56) + 8 * v34);
  }

  while (v35 <= 0.0);
  v36 = *(*(v26 + 48) + 8 * v34);
  v37 = qword_28140C860;
  v38 = v36;
  v39 = v38;
  if (v37 != -1)
  {
    v38 = swift_once();
  }

  v56[0] = v39;
  MEMORY[0x28223BE20](v38);
  *(&v53 - 2) = v56;
  v41 = sub_22B3C46E8(sub_22B3C48DC, (&v53 - 4), v40);
  if (v41)
  {

    v42 = 1;
LABEL_25:
    *v54 = v42;
    return v39;
  }

  if (qword_28140C870 != -1)
  {
    v41 = swift_once();
  }

  v56[0] = v39;
  MEMORY[0x28223BE20](v41);
  *(&v53 - 2) = v56;
  if (sub_22B3C46E8(sub_22B3C4D38, (&v53 - 4), v45))
  {

    v42 = 2;
    goto LABEL_25;
  }

  v46 = *MEMORY[0x277CD8708];
  v47 = sub_22B3F6594();
  v49 = v48;
  if (v47 == sub_22B3F6594() && v49 == v50)
  {
  }

  else
  {
    v52 = sub_22B3F6C84();

    if (v35 >= 0.95 && (v52 & 1) == 0)
    {

      v42 = 3;
      goto LABEL_25;
    }
  }

  *v54 = 0;
  v43 = v46;

  return v43;
}

uint64_t sub_22B3C3720(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = sub_22B3F6564();
  v7 = MEMORY[0x23188FFF0](a1, a2);
  v8 = sub_22B3F6564();
  v9 = [v5 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{v7, v8}];

  sub_22B3F6594();
  v10 = sub_22B3B4258();
  v11 = MEMORY[0x277D837D0];
  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  sub_22B3F6A04();

  v42 = v10;
  v43 = v10;
  v40 = v11;
  v41 = v10;
  v12 = sub_22B3F6A04();
  v14 = v13;

  v15 = v44[4];
  v16 = sub_22B3F6564();
  v17 = MEMORY[0x23188FFF0](v12, v14);

  v18 = sub_22B3F6564();
  v19 = [v15 stringByReplacingMatchesInString:v16 options:0 range:0 withTemplate:{v17, v18, v40, v41, v42, v43}];

  v20 = v19;
  if (!v19)
  {
    sub_22B3F6594();
    v20 = sub_22B3F6564();
  }

  v21 = sub_22B3F6594();
  v22 = v44[5];
  v23 = MEMORY[0x23188FFF0](v21);

  v24 = sub_22B3F6564();
  v25 = [v22 stringByReplacingMatchesInString:v20 options:0 range:0 withTemplate:{v23, v24}];

  v26 = v25;
  if (!v25)
  {
    sub_22B3F6594();
    v26 = sub_22B3F6564();
  }

  v27 = sub_22B3F6594();
  v28 = v44[6];
  v29 = MEMORY[0x23188FFF0](v27);

  v30 = sub_22B3F6564();
  v31 = [v28 stringByReplacingMatchesInString:v26 options:0 range:0 withTemplate:{v29, v30}];

  v32 = v31;
  if (!v31)
  {
    sub_22B3F6594();
    v32 = sub_22B3F6564();
  }

  v33 = sub_22B3F6594();
  v34 = v44[8];
  v35 = MEMORY[0x23188FFF0](v33);

  v36 = sub_22B3F6564();
  v37 = [v34 stringByReplacingMatchesInString:v32 options:0 range:0 withTemplate:{v35, v36}];

  v38 = sub_22B3F6594();
  return v38;
}

uint64_t sub_22B3C42A8(uint64_t a1, uint64_t a2)
{
  v5 = v2[9];
  v6 = sub_22B3F6564();
  v7 = MEMORY[0x23188FFF0](a1, a2);
  v8 = sub_22B3F6564();
  v9 = [v5 stringByReplacingMatchesInString:v6 options:0 range:0 withTemplate:{v7, v8}];

  v10 = v9;
  if (!v9)
  {
    sub_22B3F6594();
    v10 = sub_22B3F6564();
  }

  v11 = sub_22B3F6594();
  v12 = v2[10];
  v13 = MEMORY[0x23188FFF0](v11);

  v14 = sub_22B3F6564();
  v15 = [v12 stringByReplacingMatchesInString:v10 options:0 range:0 withTemplate:{v13, v14}];

  v16 = v15;
  if (!v15)
  {
    sub_22B3F6594();
    v16 = sub_22B3F6564();
  }

  v17 = sub_22B3F6594();
  v18 = v2[11];
  v19 = MEMORY[0x23188FFF0](v17);

  v20 = sub_22B3F6564();
  v21 = [v18 stringByReplacingMatchesInString:v16 options:0 range:0 withTemplate:{v19, v20}];

  v22 = v21;
  if (!v21)
  {
    sub_22B3F6594();
    v22 = sub_22B3F6564();
  }

  v23 = sub_22B3F6594();
  v24 = v2[12];
  v25 = MEMORY[0x23188FFF0](v23);

  v26 = sub_22B3F6564();
  v27 = [v24 stringByReplacingMatchesInString:v22 options:0 range:0 withTemplate:{v25, v26}];

  v28 = v27;
  if (!v27)
  {
    sub_22B3F6594();
    v28 = sub_22B3F6564();
  }

  v29 = sub_22B3F6594();
  v30 = v2[13];
  v31 = MEMORY[0x23188FFF0](v29);

  v32 = sub_22B3F6564();
  v33 = [v30 stringByReplacingMatchesInString:v28 options:0 range:0 withTemplate:{v31, v32}];

  v34 = v33;
  if (!v33)
  {
    sub_22B3F6594();
    v34 = sub_22B3F6564();
  }

  v35 = sub_22B3F6594();
  v36 = v2[14];
  v37 = MEMORY[0x23188FFF0](v35);

  v38 = sub_22B3F6564();
  v39 = [v36 stringByReplacingMatchesInString:v34 options:0 range:0 withTemplate:{v37, v38}];

  v40 = sub_22B3F6594();
  return v40;
}

uint64_t sub_22B3C460C(uint64_t a1, uint64_t a2)
{

  v3 = sub_22B3F6694();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    do
    {
      if (sub_22B3C4B90(v5, v6, v2))
      {
        MEMORY[0x23188FF70](v5, v6);
      }

      v5 = sub_22B3F6694();
      v6 = v7;
    }

    while (v7);
  }

  return 0;
}

uint64_t sub_22B3C46E8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id *LanguageDetection.deinit()
{

  return v0;
}

uint64_t LanguageDetection.__deallocating_deinit()
{
  LanguageDetection.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t sub_22B3C484C(void *a1, uint64_t *a2)
{
  v2 = sub_22B3F6594();
  v4 = v3;
  if (v2 == sub_22B3F6594() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22B3F6C84();
  }

  return v7 & 1;
}

unint64_t sub_22B3C4900()
{
  result = qword_28140CFB8[0];
  if (!qword_28140CFB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28140CFB8);
  }

  return result;
}

unint64_t sub_22B3C4958()
{
  result = qword_27D8BE2D0;
  if (!qword_27D8BE2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE2D8, &qword_22B3F8A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE2D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LanguageModel(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LanguageModel(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22B3C4B90(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = a2 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v12 = sub_22B3F6AB4();
      goto LABEL_16;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v20[0] = a1;
      v20[1] = v8;
      v11 = v20 + v7;
    }

    else
    {
      v10 = v9;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v10 = sub_22B3F6AF4();
      }

      v11 = (v10 + v7);
    }

    v12 = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
LABEL_15:
      v13 = 1;
      goto LABEL_16;
    }

    v18 = (__clz(v12 ^ 0xFF) - 24);
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
        v13 = 3;
      }

      else
      {
        v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
        v13 = 4;
      }
    }

    else
    {
      if (v18 == 1)
      {
        goto LABEL_15;
      }

      v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
      v13 = 2;
    }

LABEL_16:
    v14 = *(a3 + 16);
    v15 = *(v14 + 16);
    if (v15)
    {
      break;
    }

LABEL_6:
    v7 += v13;
    if (v7 >= v3)
    {
      return 0;
    }
  }

  v16 = (v14 + 36);
  while (v12 < *(v16 - 1) || *v16 < v12)
  {
    v16 += 2;
    if (!--v15)
    {
      goto LABEL_6;
    }
  }

  return 1;
}

uint64_t static BloomFilterSerDe.writeToFile(input:path:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = sub_22B3F6184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = a1[2];
  if (__OFADD__(v15, 1))
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_5;
  }

  v47 = v12;
  v48 = v11;
  v49 = a3;
  v16 = *a1;
  v17 = *(a1 + 24);
  v55 = sub_22B3C5DC0(v15 + 1);
  v56 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2F0, &unk_22B3F8B60);
  v53 = v19;
  v54 = sub_22B3C5E64();
  LOBYTE(v51) = v17;
  LOBYTE(v50[0]) = *__swift_project_boxed_opaque_existential_0(&v51, v19);
  sub_22B3F61B4();
  __swift_destroy_boxed_opaque_existential_0(&v51);
  if (*(v16 + 16))
  {
    sub_22B3F61C4();
  }

  v3 = v49;
  if (qword_28140BFC8 != -1)
  {
    goto LABEL_21;
  }

LABEL_5:
  v20 = sub_22B3F6464();
  __swift_project_value_buffer(v20, qword_28140D680);
  v21 = v55;
  v22 = v56;
  sub_22B3B7874(v55, v56);

  v23 = sub_22B3F6444();
  v24 = sub_22B3F68A4();

  if (!os_log_type_enabled(v23, v24))
  {
    sub_22B3B78C8(v21, v22);

    goto LABEL_18;
  }

  v45 = v7;
  v46 = v14;
  v25 = v3;
  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v51 = v27;
  *v26 = 136315394;
  *(v26 + 4) = sub_22B3BDABC(a2, v25, &v51);
  *(v26 + 12) = 2048;
  v28 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    v14 = v46;
    if (v28 != 2)
    {
      v29 = 0;
      goto LABEL_17;
    }

    v31 = *(v21 + 16);
    v30 = *(v21 + 24);
    v32 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (!v32)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    LODWORD(v29) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      __break(1u);
    }

    v29 = v29;
    goto LABEL_17;
  }

  v14 = v46;
  if (v28)
  {
    goto LABEL_14;
  }

  v29 = BYTE6(v22);
LABEL_17:
  v7 = v45;
  *(v26 + 14) = v29 / 1000;
  sub_22B3B78C8(v21, v22);
  _os_log_impl(&dword_22B3A7000, v23, v24, "Saving bloom filter %s of size (Kb) %ld", v26, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v27);
  MEMORY[0x231890C40](v27, -1, -1);
  MEMORY[0x231890C40](v26, -1, -1);

  v3 = v49;
LABEL_18:
  v33 = [objc_opt_self() defaultManager];
  v34 = [v33 URLsForDirectory:9 inDomains:1];

  v35 = sub_22B3F6794();
  if (*(v35 + 16))
  {
    v36 = v47;
    (*(v8 + 16))(v47, v35 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    v37 = v48;
    sub_22B3F6104();
    v38 = *(v8 + 8);
    v38(v36, v7);
    (*(v8 + 32))(v14, v37, v7);
    swift_beginAccess();
    sub_22B3F61E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0C0, qword_22B3F8B70);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_22B3F79B0;
    strcpy(v50, "output path: ");
    HIWORD(v50[1]) = -4864;
    sub_22B3C5EC8();
    v40 = sub_22B3F6C74();
    MEMORY[0x23188FF80](v40);

    v41 = v50[0];
    v42 = v50[1];
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 32) = v41;
    *(v39 + 40) = v42;
    sub_22B3F6D14();

    v38(v14, v7);
    return sub_22B3B78C8(v55, v56);
  }

  else
  {

    v51 = 0;
    v52 = 0xE000000000000000;
    sub_22B3F6AC4();

    v51 = 0xD00000000000001FLL;
    v52 = 0x800000022B3FB460;
    MEMORY[0x23188FF80](a2, v3);
    result = sub_22B3F6B14();
    __break(1u);
  }

  return result;
}

uint64_t static BloomFilterSerDe.readFromBundle(name:fileExtension:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v9 = sub_22B3F6184();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  type metadata accessor for BloomFilterSerDe();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v26 = a2;
  v18 = sub_22B3F6564();
  v27 = a3;
  v28 = a4;
  v19 = sub_22B3F6564();
  v20 = [v17 URLForResource:v18 withExtension:v19];

  if (v20)
  {
    sub_22B3F6134();

    (*(v10 + 32))(v15, v12, v9);
    v21 = sub_22B3F6194();
    v23 = v22;
    sub_22B3C5708(v21, v22, v29);
    sub_22B3B78C8(v21, v23);

    return (*(v10 + 8))(v15, v9);
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_22B3F6AC4();

    v30 = 0xD000000000000018;
    v31 = 0x800000022B3FB480;
    MEMORY[0x23188FF80](a1, v26);
    MEMORY[0x23188FF80](32, 0xE100000000000000);
    MEMORY[0x23188FF80](v27, v28);
    result = sub_22B3F6B14();
    __break(1u);
  }

  return result;
}

uint64_t sub_22B3C5708@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = BYTE6(a2);
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v6)
  {
    while (a1 != a1 >> 32)
    {
LABEL_7:
      result = sub_22B3F61D4();
      v8 = result;
      if (v6 != 2)
      {
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          goto LABEL_20;
        }

        v9 = HIDWORD(a1) - a1;
        goto LABEL_15;
      }

      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    goto LABEL_12;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
LABEL_12:
    v12 = 1;
    result = sub_22B3F67B4();
    *(result + 16) = 1;
    *(result + 32) = 0;
    v13 = 8;
    v8 = 1;
LABEL_18:
    *a3 = result;
    *(a3 + 8) = v13;
    *(a3 + 16) = v12;
    *(a3 + 24) = v8;
    *(a3 + 32) = v13;
    return result;
  }

  result = sub_22B3F61D4();
  v8 = result;
  v9 = v3;
LABEL_15:
  if (v9 >= 1)
  {
    v14 = sub_22B3F61F4();
    v16 = v15;
    sub_22B3C5F5C(v14, v15);
    v18 = v17;
    result = sub_22B3B78C8(v14, v16);
    v12 = *(v18 + 16);
    if (!(v12 >> 60))
    {
      result = v18;
      v13 = 8 * v12;
      goto LABEL_18;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static BloomFilterSerDe.readFromFile(path:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22B3F6184();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = [v16 URLsForDirectory:9 inDomains:1];

  v18 = sub_22B3F6794();
  if (*(v18 + 16))
  {
    (*(v7 + 16))(v9, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    sub_22B3F6104();
    v19 = *(v7 + 8);
    v19(v9, v6);
    (*(v7 + 32))(v15, v12, v6);
    v20 = sub_22B3F6194();
    v21 = a3;
    v22 = v20;
    v24 = v23;
    sub_22B3C5708(v20, v23, v21);
    sub_22B3B78C8(v22, v24);
    return (v19)(v15, v6);
  }

  else
  {

    v27 = 0;
    v28 = 0xE000000000000000;
    sub_22B3F6AC4();

    v27 = 0xD00000000000001ELL;
    v28 = 0x800000022B3FB4D0;
    MEMORY[0x23188FF80](a1, a2);
    result = sub_22B3F6B14();
    __break(1u);
  }

  return result;
}

uint64_t static BloomFilterSerDe.readFromFile(withFilePath:)@<X0>(uint64_t a2@<X8>)
{
  if (sub_22B3F6124())
  {
    v3 = sub_22B3F6194();
    v5 = v4;
    sub_22B3C5708(v3, v4, a2);

    return sub_22B3B78C8(v3, v5);
  }

  else
  {
    sub_22B3F6AC4();

    sub_22B3F6184();
    sub_22B3C5EC8();
    v7 = sub_22B3F6C74();
    MEMORY[0x23188FF80](v7);

    result = sub_22B3F6B14();
    __break(1u);
  }

  return result;
}

uint64_t sub_22B3C5DC0(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_22B3F5FF4();
      swift_allocObject();
      sub_22B3F5FE4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22B3F61A4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22B3C5E64()
{
  result = qword_27D8BE2F8;
  if (!qword_27D8BE2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE2F0, &unk_22B3F8B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE2F8);
  }

  return result;
}

unint64_t sub_22B3C5EC8()
{
  result = qword_27D8BE0B0;
  if (!qword_27D8BE0B0)
  {
    sub_22B3F6184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE0B0);
  }

  return result;
}

void sub_22B3C5F5C(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_20:

      sub_22B3F6204();

      return;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v4 = v5 - v6;
    if (!__OFSUB__(v5, v6))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = HIDWORD(a1) - a1;
LABEL_10:
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_11:
  if (!v4)
  {
    if (v3 != 2)
    {
      goto LABEL_13;
    }

LABEL_17:
    if (__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      __break(1u);
    }

    goto LABEL_20;
  }

  v7 = sub_22B3F67B4();
  *(v7 + 16) = v4;
  bzero((v7 + 32), v4);
  if (v3 == 2)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (v3 != 1 || !__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
}

uint64_t SenderBloomFilterBuilder.__allocating_init(csvFilePath:probabilityOfFalsePositives:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t SenderBloomFilterBuilder.init(csvFilePath:probabilityOfFalsePositives:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

void *sub_22B3C60E8()
{
  v135 = sub_22B3F6324();
  v132 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v141 = &v110[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v1);
  v136 = &v110[-v2];
  v3 = sub_22B3F6354();
  v134 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v110[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE300, &qword_22B3F8BE0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v110[-v8];
  v10 = sub_22B3F63A4();
  v129 = *(v10 - 8);
  v130 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v110[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v110[-v14];
  sub_22B3C7640(&v110[-v14]);
  sub_22B3F6394();
  __swift_project_boxed_opaque_existential_0(__src, v140);
  sub_22B3F63E4();
  __swift_destroy_boxed_opaque_existential_0(__src);
  v128 = v12;
  v131 = sub_22B3C6F34();
  v127 = v15;
  sub_22B3F6364();
  v16 = v134;
  (v134[2])(v9, v5, v3);
  v17 = *(v7 + 44);
  sub_22B3C87E8();
  sub_22B3F6854();
  (v16[1])(v5, v3);
  sub_22B3F6864();
  if (*&v9[v17] == __src[0])
  {
LABEL_2:
    sub_22B3B4B3C(v9, &qword_27D8BE300, &qword_22B3F8BE0);
    v18 = *(v129 + 8);
    v19 = v130;
    v18(v128, v130);
    v18(v127, v19);
    return v131;
  }

  v133 = (v132 + 4);
  v134 = (v132 + 2);
  ++v132;
  while (1)
  {
    v21 = sub_22B3F6884();
    v22 = v135;
    v23 = v136;
    (*v134)(v136);
    v21(__src, 0);
    sub_22B3F6874();
    v24 = v141;
    (*v133)(v141, v23, v22);
    sub_22B3F6334();
    if (!v140)
    {
      (*v132)(v24, v22);
LABEL_79:
      sub_22B3B4B3C(__src, &qword_27D8BE150, &qword_22B3F7F10);
      goto LABEL_5;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      (*v132)(v24, v22);
      goto LABEL_5;
    }

    v25 = v137;
    v26 = v138;
    sub_22B3F6334();
    if (!v140)
    {
      (*v132)(v24, v22);

      goto LABEL_79;
    }

    if ((swift_dynamicCast() & 1) == 0 || (v137 + 4) >= 0xB)
    {
      (*v132)(v24, v22);

      goto LABEL_5;
    }

    v125 = v25;
    v126 = v26;
    v27 = byte_22B3F8C5A[v137 + 4];
    v28 = v131;
    if (!v131[2] || (v29 = sub_22B3B7A54(v27), v28 = v131, (v30 & 1) == 0) || (v31 = v131[7] + 40 * v29, v116 = *(v31 + 8), v117 = *(v31 + 16), v120 = *(v31 + 24), v32 = *(v31 + 32), (v118 = ) == 0))
    {

      v76 = sub_22B3B7A54(v27);
      if (v77)
      {
        v78 = v76;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __src[0] = v28;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22B3B94C8();
          v28 = __src[0];
        }

        v131 = v28;
        sub_22B3C81A8(v78, v28);
      }

      (*v132)(v141, v22);

      goto LABEL_5;
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_118;
    }

    if (HIDWORD(v32))
    {
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
      goto LABEL_124;
    }

    if (!v32)
    {
      goto LABEL_120;
    }

    v33 = v125 & 0xFFFFFFFFFFFFLL;
    v115 = HIBYTE(v126) & 0xF;
    v114 = v125 & 0xFFFFFFFFFFFFLL;
    if ((v126 & 0x2000000000000000) != 0)
    {
      v33 = HIBYTE(v126) & 0xF;
    }

    v121 = v33;
    v113 = v126 & 0xFFFFFFFFFFFFFFLL;
    v112 = (v126 & 0xFFFFFFFFFFFFFFFLL) + 32;

    v34 = 0;
    v123 = MEMORY[0x277D84F90];
    v111 = v27;
    v119 = v32;
    while (1)
    {
      v35 = v121;
      v36 = v126;
      v124 = v34;
      if ((v126 & 0x1000000000000000) != 0)
      {
        v37 = sub_22B3F66A4();
        v34 = v124;
        v35 = v37;
      }

      if (v35)
      {
        if (v35 < 1)
        {
          v38 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE200, &qword_22B3F88F0);
          v38 = swift_allocObject();
          v39 = _swift_stdlib_malloc_size(v38);
          v38[2] = v35;
          v38[3] = 2 * v39 - 64;
        }

        v122 = v38;
        if ((v36 & 0x1000000000000000) != 0)
        {
          v44 = sub_22B3F6A94();
          if (v45)
          {
            goto LABEL_123;
          }

          v42 = v44;
        }

        else
        {
          if ((v36 & 0x2000000000000000) != 0)
          {
            __src[0] = v125;
            __src[1] = v113;
            v42 = v115;
            if (v35 < v115)
            {
              goto LABEL_123;
            }

            v43 = v38 + 4;
            v41 = __src;
          }

          else
          {
            v41 = v112;
            v42 = v114;
            if ((v125 & 0x1000000000000000) != 0)
            {
              if (v35 < v114)
              {
                goto LABEL_123;
              }
            }

            else
            {
              v74 = sub_22B3F6AF4();
              v42 = v75;
              v41 = v74;
              if (v35 < v42)
              {
                goto LABEL_123;
              }
            }

            v43 = v122 + 4;
          }

          memcpy(v43, v41, v42);
        }

        v34 = v124;
        v40 = v122;
        if (v42 != v35)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v40 = MEMORY[0x277D84F90];
      }

      v46 = v40[2];
      v47 = v34;
      if (v46 >= 4)
      {
        v49 = 0;
        v50 = 0;
        v51 = v40 + 4;
        v47 = v34;
LABEL_43:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = 4 * v50++;
        while (1)
        {
          if (v49 + v56 >= v46)
          {
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          if (v56 == 0x1000000000000000)
          {
            goto LABEL_110;
          }

          if (v53 < -32 || v53 > 32)
          {
            break;
          }

          v59 = *(v51 + v56);
          if (v53 < 0)
          {
            v57 |= v59 >> (v54 & 0x18);
            if (v55)
            {
LABEL_42:
              HIDWORD(v52) = (461845907 * ((380141568 * v57) | ((-862048943 * v57) >> 17))) ^ v47;
              LODWORD(v52) = HIDWORD(v52);
              v47 = 5 * (v52 >> 19) - 430675100;
              v51 = (v51 + 4);
              v49 += 4;
              if (v50 == v46 >> 2)
              {
                goto LABEL_39;
              }

              goto LABEL_43;
            }
          }

          else
          {
            if (v53 == 32)
            {
              break;
            }

            v57 |= v59 << (v53 & 0x18);
            if (v55)
            {
              goto LABEL_42;
            }
          }

LABEL_45:
          v55 = v56 == 2;
          v54 -= 8;
          v53 += 8;
          if (__OFADD__(v58, ++v56))
          {
            goto LABEL_111;
          }
        }

        if (v55)
        {
          goto LABEL_42;
        }

        goto LABEL_45;
      }

LABEL_39:
      v48 = v46 & 0x7FFFFFFFFFFFFFFCLL;
      if ((v46 & 0x7FFFFFFFFFFFFFFCLL) == v46)
      {
      }

      else
      {
        v60 = v40[2] & 3;
        if ((v46 & 3) != 0)
        {
          v61 = v48 + v60 - 1;
          if (v61 >= v46)
          {
            goto LABEL_112;
          }

          v62 = v40 + v48 + 32;
          v63 = *(v62 + v60 - 1);
          if (v60 != 1)
          {
            if (v61 >= v46)
            {
              goto LABEL_112;
            }

            v63 = *(v62 + v60 - 2) | (v63 << 8);
            if (v60 != 2)
            {
              if (v61 >= v46)
              {
                goto LABEL_112;
              }

              v63 = *(v62 + v60 - 3) | (v63 << 8);
            }
          }

          v64 = -862048943 * v63;
        }

        else
        {

          v64 = 0;
        }

        HIDWORD(v65) = v64;
        LODWORD(v65) = v64;
        v47 ^= 461845907 * (v65 >> 17);
      }

      if (HIDWORD(v46))
      {
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
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v123 = sub_22B3C199C(0, *(v123 + 2) + 1, 1, v123);
      }

      v67 = *(v123 + 2);
      v66 = *(v123 + 3);
      v68 = (v67 + 1);
      v69 = v124;
      if (v67 >= v66 >> 1)
      {
        v122 = (v67 + 1);
        v73 = sub_22B3C199C((v66 > 1), v67 + 1, 1, v123);
        v68 = v122;
        v69 = v124;
        v123 = v73;
      }

      v70 = -2048144789 * (v47 ^ v46 ^ ((v47 ^ v46) >> 16));
      v71 = v119;
      v72 = v123;
      *(v123 + 2) = v68;
      *&v72[8 * v67 + 32] = ((-1028477387 * (v70 ^ (v70 >> 13))) ^ ((-1028477387 * (v70 ^ (v70 >> 13))) >> 16)) % v71;
      if (v69 == v120)
      {
        break;
      }

      v34 = v69 + 1;
      if (v34 == 256)
      {
        goto LABEL_114;
      }
    }

    v80 = *(v123 + 2);
    v81 = v131;
    if (v80)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = sub_22B3C221C(v118);
      }

      v82 = v118;
      v83 = v118 + 32;
      v84 = v123 + 32;
      do
      {
        v86 = *v84;
        v84 += 8;
        v85 = v86;
        v87 = v86 + 7;
        if (v86 >= 0)
        {
          v87 = v85;
        }

        v88 = v85 - (v87 & 0xFFFFFFFFFFFFFFF8);
        v89 = v88 >= 1 ? 2 << (v88 - 1) : 2uLL >> (1 - v88);
        if (v85 < -7)
        {
          goto LABEL_116;
        }

        v90 = v87 >> 3;
        if (v90 >= *(v82 + 16))
        {
          goto LABEL_117;
        }

        *(v83 + v90) |= v89;
      }

      while (--v80);
    }

    v91 = swift_isUniquelyReferenced_nonNull_native();
    __src[0] = v81;
    v92 = sub_22B3B7A54(v111);
    v94 = v131[2];
    v95 = (v93 & 1) == 0;
    v96 = __OFADD__(v94, v95);
    v97 = v94 + v95;
    if (v96)
    {
      goto LABEL_121;
    }

    v98 = v93;
    if (v131[3] < v97)
    {
      break;
    }

    v101 = v118;
    if ((v91 & 1) == 0)
    {
      v109 = v92;
      sub_22B3B94C8();
      v101 = v118;
      v92 = v109;
    }

    v100 = v141;
LABEL_104:
    v102 = __src[0];
    v131 = __src[0];
    if (v98)
    {
      v103 = *(__src[0] + 56) + 40 * v92;
      v104 = v116;
      *v103 = v101;
      *(v103 + 8) = v104;
      *(v103 + 16) = v117;
      *(v103 + 24) = v120;
      *(v103 + 32) = v119;

      (*v132)(v100, v22);
    }

    else
    {
      *(__src[0] + 8 * (v92 >> 6) + 64) |= 1 << v92;
      *(v102[6] + v92) = v111;
      v105 = v102[7] + 40 * v92;
      v106 = v116;
      *v105 = v101;
      *(v105 + 8) = v106;
      *(v105 + 16) = v117;
      *(v105 + 24) = v120;
      *(v105 + 32) = v119;
      (*v132)(v100, v22);
      v107 = v102[2];
      v96 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v96)
      {
        goto LABEL_122;
      }

      v102[2] = v108;
    }

LABEL_5:
    sub_22B3F6864();
    if (*&v9[v17] == __src[0])
    {
      goto LABEL_2;
    }
  }

  sub_22B3B7F34(v97, v91);
  v92 = sub_22B3B7A54(v111);
  if ((v98 & 1) == (v99 & 1))
  {
    v100 = v141;
    v101 = v118;
    goto LABEL_104;
  }

LABEL_124:
  result = sub_22B3F6CC4();
  __break(1u);
  return result;
}

unint64_t sub_22B3C6F34()
{
  v0 = sub_22B3F6324();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v36 - v5;
  v6 = sub_22B3F6354();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE300, &qword_22B3F8BE0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  sub_22B3F6364();
  (*(v7 + 16))(v13, v9, v6);
  v14 = *(v11 + 44);
  sub_22B3C87E8();
  sub_22B3F6854();
  (*(v7 + 8))(v9, v6);
  sub_22B3F6864();
  if (*&v13[v14] == v50)
  {
    v44 = MEMORY[0x277D84F98];
LABEL_3:
    sub_22B3B4B3C(v13, &qword_27D8BE300, &qword_22B3F8BE0);
    return v44;
  }

  v46 = (v1 + 32);
  v47 = (v1 + 16);
  v17 = (v1 + 8);
  v44 = MEMORY[0x277D84F98];
  *&v15 = 136315906;
  v38 = v15;
  while (1)
  {
    v18 = sub_22B3F6884();
    v19 = v48;
    (*v47)(v48);
    v18(&v50, 0);
    sub_22B3F6874();
    (*v46)(v3, v19, v0);
    sub_22B3F6334();
    if (!v52)
    {
LABEL_16:
      (*v17)(v3, v0);
      sub_22B3B4B3C(&v50, &qword_27D8BE150, &qword_22B3F7F10);
      goto LABEL_6;
    }

    if ((swift_dynamicCast() & 1) != 0 && (v49 + 4) < 0xB)
    {
      v45 = byte_22B3F8C5A[v49 + 4];
      sub_22B3F6334();
      if (!v52)
      {
        goto LABEL_16;
      }

      if (swift_dynamicCast())
      {
        break;
      }
    }

    (*v17)(v3, v0);
LABEL_6:
    sub_22B3F6864();
    if (*&v13[v14] == v50)
    {
      goto LABEL_3;
    }
  }

  v41 = v49;
  sub_22B3C8010(v49);
  v43 = v20;
  v42 = v21;
  v50 = 0;
  v51 = 0xE000000000000000;
  LOBYTE(v49) = v45;
  sub_22B3F6B04();
  v22 = v51;
  v40 = v50;
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v23 = sub_22B3F6464();
  __swift_project_value_buffer(v23, qword_28140D680);

  v24 = sub_22B3F6444();
  v25 = sub_22B3F68A4();

  v39 = v25;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = v24;
    v36 = v24;
    v28 = v26;
    v37 = swift_slowAlloc();
    v50 = v37;
    *v28 = v38;
    v40 = sub_22B3BDABC(v40, v22, &v50);

    v29 = v41;
    *(v28 + 4) = v40;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v29;
    *(v28 + 22) = 2048;
    v30 = v43;
    *(v28 + 24) = v43;
    *(v28 + 32) = 256;
    *(v28 + 34) = v42;
    _os_log_impl(&dword_22B3A7000, v27, v39, "Building BF for %s count %ld buckets %ld and hashes %hhu", v28, 0x23u);
    v31 = v37;
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x231890C40](v31, -1, -1);
    MEMORY[0x231890C40](v28, -1, -1);
  }

  else
  {

    v30 = v43;
  }

  if ((v30 & 7) != 0)
  {
    goto LABEL_25;
  }

  v32 = v30 >> 3;
  if (((v30 >> 3) & 0x8000000000000000) == 0)
  {
    if (v30)
    {
      v33 = sub_22B3F67B4();
      *(v33 + 16) = v32;
      bzero((v33 + 32), v32);
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    *&v53 = v33;
    *(&v53 + 1) = v43;
    v54 = v32;
    v55 = v42;
    v56 = v43;
    v34 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v34;
    sub_22B3C8688(&v53, v45, isUniquelyReferenced_nonNull_native);
    (*v17)(v3, v0);
    v44 = v50;
    goto LABEL_6;
  }

  __break(1u);
LABEL_25:
  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

uint64_t sub_22B3C7640@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_22B3F6354();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  v40 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22B3F63A4();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22B3F60A4();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A0, &qword_22B3F7FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v39 - v7;
  v44 = sub_22B3F6184();
  v54 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = sub_22B3F6434();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22B3F63D4();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x28223BE20](v16);
  v43 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  sub_22B3D063C(&unk_283F04FB0);
  swift_arrayDestroy();
  sub_22B3D063C(&unk_283F05070);
  swift_arrayDestroy();
  sub_22B3D063C(&unk_283F050D0);
  v21 = v11;
  swift_arrayDestroy();
  (*(v13 + 104))(v15, *MEMORY[0x277CE1918], v12);
  v22 = v54;
  v23 = v44;
  sub_22B3F63C4();
  (*(v22 + 56))(v45, 1, 1, v23);
  (*(v48 + 104))(v47, *MEMORY[0x277CC91D8], v50);

  v24 = v49;
  sub_22B3F6164();
  (*(v22 + 16))(v46, v21, v23);
  v25 = *(v55 + 16);
  v50 = v20;
  v25(v43, v20, v56);
  sub_22B3D07B4(MEMORY[0x277D84F90]);
  sub_22B3F6314();
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v26 = sub_22B3F6464();
  __swift_project_value_buffer(v26, qword_28140D680);
  v28 = v51;
  v27 = v52;
  v29 = v53;
  (*(v52 + 16))(v51, v24, v53);
  v30 = sub_22B3F6444();
  v31 = sub_22B3F68A4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    v33 = v21;
    v34 = v40;
    sub_22B3F6364();
    v35 = sub_22B3F6344();
    v36 = v34;
    v21 = v33;
    (*(v41 + 8))(v36, v42);
    (*(v27 + 8))(v28, v29);
    *(v32 + 4) = v35;
    _os_log_impl(&dword_22B3A7000, v30, v31, "Number of rows: %ld", v32, 0xCu);
    v37 = v32;
    v22 = v54;
    MEMORY[0x231890C40](v37, -1, -1);
  }

  else
  {
    (*(v27 + 8))(v28, v29);
  }

  (*(v22 + 8))(v21, v23);
  return (*(v55 + 8))(v50, v56);
}

uint64_t SenderBloomFilterBuilder.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_22B3C8010(uint64_t a1)
{
  if (a1 == 0x8000000000000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = ceil(log(*(v1 + 32)) * -a1 / 0.480453014);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3;
  if (v3 <= 0)
  {
    v5 = -(-v3 & 7);
  }

  else
  {
    v5 = v3 & 7;
  }

  if (__OFADD__(v4, 8 - v5))
  {
    goto LABEL_17;
  }

  v6 = ceil(v4 / a1 * 0.693147181);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 <= -1.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v6 >= 256.0)
  {
LABEL_20:
    __break(1u);
  }
}

void *sub_22B3C8134(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE200, &qword_22B3F88F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22B3C81A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B3F6A64() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + v6);
      sub_22B3F6D34();
      MEMORY[0x231890640](qword_22B3F8C68[v11]);
      result = sub_22B3F6D54();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + v3);
        v15 = (v13 + v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22B3C8350(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B3F6A64() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_22B3F6594();
      sub_22B3F6D34();
      v10 = v9;
      sub_22B3F6624();
      v11 = sub_22B3F6D54();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_22B3C8518(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22B3F6A64() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22B3F6D24();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_22B3C8688(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22B3B7A54(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22B3B7F34(v14, a3 & 1);
      result = sub_22B3B7A54(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_22B3F6CC4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22B3B94C8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    v21 = v19[7] + 40 * result;
    v22 = *a1;
    v23 = a1[1];
    *(v21 + 32) = *(a1 + 4);
    *v21 = v22;
    *(v21 + 16) = v23;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 40 * result;

  return sub_22B3C8B84(a1, v20);
}

unint64_t sub_22B3C87E8()
{
  result = qword_27D8BE308;
  if (!qword_27D8BE308)
  {
    sub_22B3F6354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE308);
  }

  return result;
}

uint64_t sub_22B3C8840(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_22B3BA424();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_22B3B8210(v13, a3 & 1);
      v8 = sub_22B3BA424();
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for NLScript(0);
        sub_22B3F6CC4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_22B3B964C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return MEMORY[0x2821F9840]();
}

unint64_t sub_22B3C89A8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_22B3BA424();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 >= v13 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    v16 = result;
    sub_22B3B97AC();
    result = v16;
    goto LABEL_8;
  }

  sub_22B3B84D4(v13, a3 & 1);
  result = sub_22B3BA424();
  if ((v14 & 1) == (v17 & 1))
  {
LABEL_8:
    v18 = *v4;
    if (v14)
    {
      *(v18[7] + result) = a1;
      return result;
    }

    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = a2;
    *(v18[7] + result) = a1;
    v19 = v18[2];
    v12 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v12)
    {
      v18[2] = v20;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_15;
  }

LABEL_16:
  type metadata accessor for NLScript(0);
  sub_22B3F6CC4();
  __break(1u);
  return MEMORY[0x2821F9840]();
}

void sub_22B3C8BE0(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_22B3C8840(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_22B3BA424();
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_22B3B964C();
        v10 = v13;
      }

      sub_22B3C8350(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

unint64_t sub_22B3C8CE4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22B3CB82C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22B3C8D2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE360, &qword_22B3F8FC0);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  v1 = MEMORY[0x277CD88C8];
  *(inited + 16) = xmmword_22B3F8950;
  v2 = *v1;
  *(inited + 40) = v2;
  v3 = MEMORY[0x277CD88D0];
  *(inited + 48) = 2;
  v4 = *v3;
  *(inited + 56) = *v3;
  *(inited + 64) = 1;
  *(inited + 72) = v2;
  v5 = v2;
  v6 = v4;
  v7 = sub_22B3CB83C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE368, &qword_22B3F8FC8);
  result = swift_arrayDestroy();
  off_28140CFB0 = v7;
  return result;
}

uint64_t static BertEmbeddings.LanguageBertMap.getter()
{
  if (qword_28140CFA8 != -1)
  {
    swift_once();
  }
}

id sub_22B3C8E68()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  qword_27D8BE310 = result;
  return result;
}

uint64_t BertEmbeddings.__allocating_init()()
{
  v0 = swift_allocObject();
  BertEmbeddings.init()();
  return v0;
}

void *BertEmbeddings.init()()
{
  v1 = v0;
  v2 = sub_22B3F68F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B3F64A4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_22B3F68E4();
  MEMORY[0x28223BE20](v7 - 8);
  sub_22B3C90CC();
  sub_22B3F68D4();
  sub_22B3F6494();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v2);
  v1[2] = sub_22B3F6924();
  v8 = MEMORY[0x277D84F90];
  v1[3] = sub_22B3CB930(MEMORY[0x277D84F90]);
  v1[4] = sub_22B3CC0EC(v8, &qword_27D8BE128, &qword_22B3F7E90, sub_22B3BA424);
  return v1;
}

unint64_t sub_22B3C90CC()
{
  result = qword_28140BF60;
  if (!qword_28140BF60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28140BF60);
  }

  return result;
}

void sub_22B3C9118(id a1@<X2>, void *a2@<X8>)
{
  v79 = MEMORY[0x277D84F90];

  v4 = [a1 string];
  sub_22B3F6594();

  sub_22B3F6944();
  v5 = v79;
  v6 = v79[2];
  if (v6)
  {
    v65 = v79[4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v6 - 1) > v79[3] >> 1)
    {
      v5 = sub_22B3C1AA0(isUniquelyReferenced_nonNull_native, v6, 1, v79);
    }

    v66 = a2;
    sub_22B3CC4C4(0, 1, 0);
    v8 = sub_22B3F67B4();
    v8[2] = 512;
    bzero(v8 + 4, 0x1000uLL);
    v9 = sub_22B3F67B4();
    *(v9 + 16) = 512;
    bzero((v9 + 32), 0x1000uLL);
    v68 = v5[2];
    if (v68)
    {
      v10 = 0;
      v69 = v5 + 4;
      v67 = v5;
      while (v10 < v5[2])
      {
        v70 = v10;
        v71 = v9;
        v11 = v69[v10];
        if (*(v11 + 16) >= v8[2])
        {
          v12 = v8[2];
        }

        else
        {
          v12 = *(v11 + 16);
        }

        v72 = MEMORY[0x277D84F90];
        v13 = v8;
        swift_bridgeObjectRetain_n();
        sub_22B3B795C(0, v12, 0);
        v8 = v72;
        if (v12)
        {
          v14 = 0;
          v15 = v13[2];
          v16 = v13 + 4;
          v17 = v11;
          v18 = v13;
          while (v15 != v14)
          {
            if (v14 >= v18[2])
            {
              goto LABEL_73;
            }

            v19 = *(v17 + 16);
            if (v14 == v19)
            {
              goto LABEL_74;
            }

            if (v14 >= v19)
            {
              goto LABEL_75;
            }

            v20 = *&v16[v14];
            v21 = *(v11 + 32 + 8 * v14);
            v73 = v8;
            v23 = v8[2];
            v22 = v8[3];
            if (v23 >= v22 >> 1)
            {
              v24 = v17;
              v63 = v18;
              sub_22B3B795C((v22 > 1), v23 + 1, 1);
              v18 = v63;
              v17 = v24;
              v9 = v71;
              v8 = v73;
            }

            ++v14;
            v8[2] = v23 + 1;
            *&v8[v23 + 4] = v20 + v21;
            if (v12 == v14)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v17 = v11;
        v18 = v13;
LABEL_24:
        v25 = v18[2];
        if (v12 != v25)
        {
          v39 = v18 + 4;
          v40 = v17 + 32;
          while (v12 < v25)
          {
            v41 = *(v17 + 16);
            if (v12 == v41)
            {
              goto LABEL_25;
            }

            if (v12 >= v41)
            {
              goto LABEL_81;
            }

            v42 = *&v39[v12];
            v43 = *(v40 + 8 * v12);
            v76 = v8;
            v45 = v8[2];
            v44 = v8[3];
            if (v45 >= v44 >> 1)
            {
              v46 = v17;
              v47 = v18;
              sub_22B3B795C((v44 > 1), v45 + 1, 1);
              v18 = v47;
              v17 = v46;
              v9 = v71;
              v8 = v76;
            }

            ++v12;
            v8[2] = v45 + 1;
            *&v8[v45 + 4] = v42 + v43;
            v25 = v18[2];
            if (v12 == v25)
            {
              goto LABEL_25;
            }
          }

LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          break;
        }

LABEL_25:
        v26 = v17;

        if (*(v26 + 16) >= *(v9 + 16))
        {
          v27 = *(v9 + 16);
        }

        else
        {
          v27 = *(v26 + 16);
        }

        v74 = MEMORY[0x277D84F90];
        sub_22B3B795C(0, v27, 0);
        v28 = v74;
        if (v27)
        {
          v29 = 0;
          v30 = *(v9 + 16);
          v31 = v9 + 32;
          v32 = v26 + 32;
          v33 = v26;
          while (v30 != v29)
          {
            if (v29 >= *(v9 + 16))
            {
              goto LABEL_77;
            }

            v34 = *(v33 + 16);
            if (v29 == v34)
            {
              goto LABEL_78;
            }

            if (v29 >= v34)
            {
              goto LABEL_79;
            }

            if (*(v31 + 8 * v29) > *(v32 + 8 * v29))
            {
              v35 = *(v31 + 8 * v29);
            }

            else
            {
              v35 = *(v32 + 8 * v29);
            }

            v75 = v28;
            v37 = *(v28 + 16);
            v36 = *(v28 + 24);
            if (v37 >= v36 >> 1)
            {
              v64 = v33;
              v38 = v30;
              sub_22B3B795C((v36 > 1), v37 + 1, 1);
              v30 = v38;
              v33 = v64;
              v9 = v71;
              v28 = v75;
            }

            ++v29;
            *(v28 + 16) = v37 + 1;
            *(v28 + 8 * v37 + 32) = v35;
            if (v27 == v29)
            {
              goto LABEL_50;
            }
          }

LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v33 = v26;
LABEL_50:
        v48 = *(v9 + 16);
        if (v27 != v48)
        {
          v49 = v9 + 32;
          v50 = v33 + 32;
          v5 = v67;
          while (v27 < v48)
          {
            v51 = *(v33 + 16);
            if (v27 == v51)
            {
              goto LABEL_8;
            }

            if (v27 >= v51)
            {
              goto LABEL_83;
            }

            if (*(v49 + 8 * v27) > *(v50 + 8 * v27))
            {
              v52 = *(v49 + 8 * v27);
            }

            else
            {
              v52 = *(v50 + 8 * v27);
            }

            v77 = v28;
            v54 = *(v28 + 16);
            v53 = *(v28 + 24);
            if (v54 >= v53 >> 1)
            {
              v55 = v33;
              sub_22B3B795C((v53 > 1), v54 + 1, 1);
              v33 = v55;
              v9 = v71;
              v28 = v77;
            }

            ++v27;
            *(v28 + 16) = v54 + 1;
            *(v28 + 8 * v54 + 32) = v52;
            v48 = *(v9 + 16);
            if (v27 == v48)
            {
              goto LABEL_8;
            }
          }

          goto LABEL_82;
        }

        v5 = v67;
LABEL_8:
        v10 = v70 + 1;

        v9 = v28;
        if (v70 + 1 == v68)
        {
          goto LABEL_64;
        }
      }

      __break(1u);
    }

    else
    {
      v28 = v9;
LABEL_64:
      v57 = v8[2];
      if (v57)
      {
        v78 = MEMORY[0x277D84F90];
        sub_22B3B795C(0, v57, 0);
        v58 = v78;
        v59 = *(v78 + 16);
        v60 = 4;
        do
        {
          v61 = *&v8[v60];
          v62 = *(v78 + 24);
          if (v59 >= v62 >> 1)
          {
            sub_22B3B795C((v62 > 1), v59 + 1, 1);
          }

          *(v78 + 16) = v59 + 1;
          *(v78 + 8 * v59 + 32) = v61 * 0.00390625;
          ++v60;
          ++v59;
          --v57;
        }

        while (v57);
      }

      else
      {

        v58 = MEMORY[0x277D84F90];
      }

      *v66 = v65;
      v66[1] = v58;
      v66[2] = v28;
    }
  }

  else
  {
    sub_22B3CBA44();
    swift_allocError();
    *v56 = 1;
    swift_willThrow();
  }
}

uint64_t sub_22B3C97D8(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v6 = *a4;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_22B3C1AA0(0, v6[2] + 1, 1, v6);
    *a4 = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_22B3C1AA0((v8 > 1), v9 + 1, 1, v6);
    *a4 = v6;
  }

  v6[2] = v9 + 1;
  v6[v9 + 4] = a1;
  return 1;
}

id sub_22B3C988C(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_28140CFA8 != -1)
  {
    v15 = v3;
    swift_once();
    v3 = v15;
  }

  v4 = off_28140CFB0;
  if (*(off_28140CFB0 + 2))
  {
    v5 = sub_22B3B7ACC(v3);
    if (v6)
    {
      v7 = *(v4[7] + 8 * v5);
      swift_beginAccess();
      v8 = *(v2 + 24);
      v9 = *(v8 + 16);
      v10 = v7;
      if (v9)
      {

        v11 = sub_22B3BA424();
        if (v12)
        {
          v13 = *(*(v8 + 56) + 8 * v11);

LABEL_10:

          return v13;
        }
      }

      v13 = sub_22B3CA75C(v10);
      goto LABEL_10;
    }
  }

  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

uint64_t sub_22B3C99E0(void *a1, char a2)
{
  v5 = sub_22B3F64A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B3F6484();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B3F6474();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  *(v13 + 32) = a2;
  aBlock[4] = sub_22B3CC498;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B3C9C9C;
  aBlock[3] = &block_descriptor_25;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  sub_22B3F6494();
  MEMORY[0x231890210](0, v8, v12, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_22B3C9C14(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 32);
  *(a1 + 32) = 0x8000000000000000;
  sub_22B3C89A8(a3, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 32) = v8;
  return swift_endAccess();
}

uint64_t sub_22B3C9C9C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_22B3C9CE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 32);
  if (*(v5 + 16))
  {

    v6 = sub_22B3BA424();
    if (v7)
    {
      v8 = *(*(v5 + 56) + v6);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_22B3C9D78(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE080, &qword_22B3F7A30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  sub_22B3C99E0(a1, 0);
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v9 = sub_22B3F6464();
  __swift_project_value_buffer(v9, qword_28140D680);
  v10 = a1;
  v11 = sub_22B3F6444();
  v12 = sub_22B3F68C4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    v15 = sub_22B3F6594();
    v17 = sub_22B3BDABC(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_22B3A7000, v11, v12, "Mbert model - %s unavailable. Requesting asset download...", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x231890C40](v14, -1, -1);
    MEMORY[0x231890C40](v13, -1, -1);
  }

  v18 = sub_22B3F67E4();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a2;
  v19[5] = v10;
  v19[6] = v3;
  v20 = v10;
  v21 = a2;

  sub_22B3AFB54(0, 0, v8, &unk_22B3F8FA0, v19);
}

uint64_t sub_22B3C9FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  return MEMORY[0x2822009F8](sub_22B3C9FFC, 0, 0);
}

uint64_t sub_22B3C9FFC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_22B3CA118;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE350, &qword_22B3F8FA8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22B3CA690;
  v0[13] = &block_descriptor_0;
  v0[14] = v2;
  [v1 requestEmbeddingAssetsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22B3CA118()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_22B3CA4E8;
  }

  else
  {
    v2 = sub_22B3CA228;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B3CA228()
{
  v25 = v0;
  if (*(v0 + 144))
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 160);
    v2 = sub_22B3F6464();
    __swift_project_value_buffer(v2, qword_28140D680);
    v3 = v1;
    v4 = sub_22B3F6444();
    v5 = sub_22B3F68B4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24 = v7;
      *v6 = 136315138;
      v8 = sub_22B3F6594();
      v10 = sub_22B3BDABC(v8, v9, &v24);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_22B3A7000, v4, v5, "Mbert model - %s asset unavailable.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x231890C40](v7, -1, -1);
      MEMORY[0x231890C40](v6, -1, -1);
    }

    v11 = 3;
  }

  else
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 160);
    v13 = sub_22B3F6464();
    __swift_project_value_buffer(v13, qword_28140D680);
    v14 = v12;
    v15 = sub_22B3F6444();
    v16 = sub_22B3F68B4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      v19 = sub_22B3F6594();
      v21 = sub_22B3BDABC(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_22B3A7000, v15, v16, "Mbert model - %s asset available.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x231890C40](v18, -1, -1);
      MEMORY[0x231890C40](v17, -1, -1);
    }

    v11 = 2;
  }

  sub_22B3C99E0(*(v0 + 160), v11);
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22B3CA4E8(uint64_t a1)
{
  swift_willThrow();
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v2 = v1[22];
  v3 = sub_22B3F6464();
  __swift_project_value_buffer(v3, qword_28140D680);
  v4 = v2;
  v5 = sub_22B3F6444();
  v6 = sub_22B3F68C4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[22];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B3A7000, v5, v6, "Mbert model asset request state: %@", v8, 0xCu);
    sub_22B3CC430(v9);
    MEMORY[0x231890C40](v9, -1, -1);
    MEMORY[0x231890C40](v8, -1, -1);
  }

  v12 = v1[22];
  v13 = v1[20];

  sub_22B3C99E0(v13, 3);
  v14 = v1[1];

  return v14();
}

uint64_t sub_22B3CA690(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

id sub_22B3CA75C(void *a1)
{
  v2 = [objc_opt_self() contextualEmbeddingWithScript_];
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    v4 = a1;
    v5 = v3;
    sub_22B3C8BE0(v3, v4);
    swift_endAccess();
    sub_22B3C99E0(v4, 1);
    if ([v5 hasAvailableAssets])
    {
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v6 = sub_22B3F6464();
      __swift_project_value_buffer(v6, qword_28140D680);
      v7 = sub_22B3F6444();
      v8 = sub_22B3F68B4();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_22B3A7000, v7, v8, "Mbert model asset available", v9, 2u);
        MEMORY[0x231890C40](v9, -1, -1);
      }

      sub_22B3C99E0(v4, 2);
    }

    else
    {
      sub_22B3C9D78(v4, v5);
    }

    return v5;
  }

  else
  {
    sub_22B3F6AC4();

    v11 = sub_22B3F6594();
    MEMORY[0x23188FF80](v11);

    result = sub_22B3F6B14();
    __break(1u);
  }

  return result;
}

id sub_22B3CA98C(unsigned __int8 *a1)
{
  v4 = *a1;
  v1 = sub_22B3C988C(&v4);
  v2 = [v1 hasAvailableAssets];

  return v2;
}

id sub_22B3CA9DC(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = v4;
  v49[3] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  if (qword_27D8BDFD8 != -1)
  {
    swift_once();
  }

  [qword_27D8BE310 lock];
  v46 = v6;
  LOBYTE(v49[0]) = v6;
  v7 = sub_22B3C988C(v49);
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v8 = sub_22B3F6464();
  __swift_project_value_buffer(v8, qword_28140D680);
  v9 = v7;
  v10 = sub_22B3F6444();
  v11 = sub_22B3F68A4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49[0] = v45;
    *v12 = 136315138;
    v13 = [v9 modelIdentifier];
    v14 = sub_22B3F6594();
    v16 = v15;

    v17 = v14;
    v5 = v4;
    v18 = sub_22B3BDABC(v17, v16, v49);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_22B3A7000, v10, v11, "MBert Identifier: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x231890C40](v45, -1, -1);
    MEMORY[0x231890C40](v12, -1, -1);
  }

  v19 = [v9 maximumSequenceLength];
  v20 = [v9 dimension];
  v21 = sub_22B3F6444();
  v22 = sub_22B3F68B4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = v19;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v20;
    _os_log_impl(&dword_22B3A7000, v21, v22, "Length: %ld, Dimension: %ld", v23, 0x16u);
    MEMORY[0x231890C40](v23, -1, -1);
  }

  v24 = sub_22B3F6564();
  v49[0] = 0;
  v25 = [v9 embeddingResultForString:v24 language:a4 error:v49];

  if (v25)
  {
    v26 = v49[0];
    sub_22B3C9118(v25, v49);
    if (!v5)
    {
      v48 = v49[0];

      sub_22B3CB2C8(v36);

      sub_22B3CB2C8(v37);

      v9 = v48;
      sub_22B3CB06C();
      return v9;
    }

LABEL_30:
    sub_22B3CB06C();
    return v9;
  }

  v27 = v49[0];
  v28 = sub_22B3F6064();

  swift_willThrow();
  v29 = sub_22B3F6444();
  v30 = sub_22B3F68C4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49[0] = v32;
    *v31 = 136315138;
    v33 = v46;
    if (v46 > 1)
    {
      if (v46 == 2)
      {
        v35 = 0xD000000000000011;
        v34 = 0x800000022B3FA140;
      }

      else
      {
        v34 = 0xEB00000000646574;
        v35 = 0x726F707075536E75;
      }
    }

    else if (v46)
    {
      v34 = 0xE500000000000000;
      v35 = 0x6E6974616CLL;
    }

    else
    {
      v34 = 0xE700000000000000;
      v35 = 0x6873696C676E65;
    }

    v38 = sub_22B3BDABC(v35, v34, v49);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_22B3A7000, v29, v30, "Mbert Returning zeros while %s model assets are still being downloaded.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x231890C40](v32, -1, -1);
    MEMORY[0x231890C40](v31, -1, -1);
  }

  else
  {

    v33 = v46;
  }

  if (qword_28140CFA8 != -1)
  {
    swift_once();
  }

  if (*(off_28140CFB0 + 2))
  {
    v39 = sub_22B3B7ACC(v33);
    if (v40)
    {
      MEMORY[0x28223BE20](v39);
      v42 = v41;
      sub_22B3F6904();
      if (LOBYTE(v49[0]) == 3)
      {
      }

      sub_22B3CBA44();
      swift_allocError();
      *v43 = 0;
      swift_willThrow();

      goto LABEL_30;
    }
  }

  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

id sub_22B3CB06C()
{
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v0 = sub_22B3F6464();
  __swift_project_value_buffer(v0, qword_28140D680);
  v1 = sub_22B3F6444();
  v2 = sub_22B3F68B4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22B3A7000, v1, v2, "Unlocking Mbert", v3, 2u);
    MEMORY[0x231890C40](v3, -1, -1);
  }

  if (qword_27D8BDFD8 != -1)
  {
    swift_once();
  }

  v4 = qword_27D8BE310;

  return [v4 unlock];
}

uint64_t BertEmbeddings.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](v1);
  return sub_22B3F6D54();
}

uint64_t BertEmbeddings.deinit()
{

  return v0;
}

uint64_t BertEmbeddings.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

char *sub_22B3CB2C8(char *result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22B3C1BD4(result, v11, 1, v3);
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
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22B3CB3B4(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_22B3F66A4();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v8 = v5 + v3;
      }

      else
      {
        v8 = v5;
      }

      v4 = sub_22B3C187C(isUniquelyReferenced_nonNull_native, v8, 1, v4);
    }

    result = sub_22B3F6AD4();
    if (v9)
    {
      goto LABEL_22;
    }

    v10 = result;

    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v11 = *(v4 + 2);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v4 + 2) = v13;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

char *sub_22B3CB4C4(char *result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22B3C1EDC(result, v11, 1, v3);
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
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[4 * v7 + 32], v6 + 32, 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_22B3CB5B0(char *result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22B3C199C(result, v11, 1, v3);
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
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22B3CB6B4(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_22B3CB7B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22B3F6704();
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
    v5 = MEMORY[0x23188FFC0](15, a1 >> 16);
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

unint64_t sub_22B3CB82C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_22B3CB83C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE370, &unk_22B3F8FD0);
    v3 = sub_22B3F6B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_22B3B7ACC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22B3CB930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE130, &qword_22B3F7E98);
    v3 = sub_22B3F6B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_22B3BA424();
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_22B3CBA44()
{
  result = qword_27D8BE318;
  if (!qword_27D8BE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE318);
  }

  return result;
}

unint64_t sub_22B3CBA9C()
{
  result = qword_27D8BE320;
  if (!qword_27D8BE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE320);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BertEmbeddings.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BertEmbeddings.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22B3CBD20()
{
  result = qword_27D8BE328;
  if (!qword_27D8BE328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE330, "*:");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE328);
  }

  return result;
}

unint64_t sub_22B3CBD88()
{
  result = qword_27D8BE338;
  if (!qword_27D8BE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE338);
  }

  return result;
}

unint64_t sub_22B3CBDDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE120, &qword_22B3F7E88);
    v3 = sub_22B3F6B54();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_22B3B7BC0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22B3CBEB8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE118, &qword_22B3F7E80);
  v3 = sub_22B3F6B54();
  v4 = a1[4];
  v5 = a1[5];
  result = sub_22B3B7BC0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 1);
    v13 = *v8;
    v14 = v5;
    result = sub_22B3B7BC0(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22B3CBFB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE340, &qword_22B3F8F80);
    v3 = sub_22B3F6B54();
    v4 = a1 + 32;

    while (1)
    {
      sub_22B3CC2E0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_22B3B79DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22B3BADA8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_22B3CC0EC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_22B3F6B54();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      result = a4();
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_22B3CC1DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE110, &qword_22B3F7E78);
    v3 = sub_22B3F6B54();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22B3B79DC(v5, v6);
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

uint64_t sub_22B3CC2E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE348, &unk_22B3F8F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B3CC350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22B3B49A0;

  return sub_22B3C9FD8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22B3CC430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE078, &qword_22B3F8C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22B3CC4C4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2C0, &qword_22B3F8918);
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

uint64_t DecisionRequest.senderName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DecisionRequest.senderEmail.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DecisionRequest.senderEmail.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t DecisionRequest.receiverEmail.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DecisionRequest.emailSubject.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DecisionRequest.localRuleCategory.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void __swiftcall DecisionRequest.init(senderName:senderEmail:emailSubject:isUnsubscribeHeaderPresent:isSenderVIP:isSenderInAddressBook:)(MCCKitCategorization::DecisionRequest *__return_ptr retstr, Swift::String senderName, Swift::String senderEmail, Swift::String emailSubject, Swift::Bool isUnsubscribeHeaderPresent, Swift::Bool isSenderVIP, Swift::Bool isSenderInAddressBook)
{
  retstr->localRuleCategory.value._countAndFlagsBits = 0;
  retstr->localRuleCategory.value._object = 0;
  retstr->senderName = senderName;
  retstr->senderEmail = senderEmail;
  retstr->receiverEmail.value._countAndFlagsBits = 0;
  retstr->receiverEmail.value._object = 0;
  retstr->emailSubject = emailSubject;
  retstr->isUnsubscribeHeaderPresent = isUnsubscribeHeaderPresent;
  retstr->isSenderVIP = isSenderVIP;
  retstr->isSenderInAddressBook = isSenderInAddressBook;
  *&retstr->isSenderRecentContact = 0;
  retstr->isNonPersonalAccount = 0;
}

void __swiftcall DecisionRequest.init(senderName:senderEmail:emailSubject:isUnsubscribeHeaderPresent:isSenderVIP:isSenderInAddressBook:receiverEmail:)(MCCKitCategorization::DecisionRequest *__return_ptr retstr, Swift::String senderName, Swift::String senderEmail, Swift::String emailSubject, Swift::Bool isUnsubscribeHeaderPresent, Swift::Bool isSenderVIP, Swift::Bool isSenderInAddressBook, Swift::String receiverEmail)
{
  retstr->localRuleCategory.value._countAndFlagsBits = 0;
  retstr->localRuleCategory.value._object = 0;
  retstr->senderName = senderName;
  retstr->senderEmail = senderEmail;
  retstr->receiverEmail.value = receiverEmail;
  retstr->emailSubject = emailSubject;
  retstr->isUnsubscribeHeaderPresent = isUnsubscribeHeaderPresent;
  retstr->isSenderVIP = isSenderVIP;
  retstr->isSenderInAddressBook = isSenderInAddressBook;
  *&retstr->isSenderRecentContact = 0;
  retstr->isNonPersonalAccount = 0;
}

void __swiftcall DecisionRequest.init(senderName:senderEmail:emailSubject:isUnsubscribeHeaderPresent:isSenderVIP:isSenderInAddressBook:isSenderRecentContact:isSenderPrimary:)(MCCKitCategorization::DecisionRequest *__return_ptr retstr, Swift::String senderName, Swift::String senderEmail, Swift::String emailSubject, Swift::Bool isUnsubscribeHeaderPresent, Swift::Bool isSenderVIP, Swift::Bool isSenderInAddressBook, Swift::Bool isSenderRecentContact, Swift::Bool isSenderPrimary)
{
  retstr->localRuleCategory.value._countAndFlagsBits = 0;
  retstr->localRuleCategory.value._object = 0;
  retstr->senderName = senderName;
  retstr->senderEmail = senderEmail;
  retstr->receiverEmail.value._countAndFlagsBits = 0;
  retstr->receiverEmail.value._object = 0;
  retstr->emailSubject = emailSubject;
  retstr->isUnsubscribeHeaderPresent = isUnsubscribeHeaderPresent;
  retstr->isSenderVIP = isSenderVIP;
  retstr->isSenderInAddressBook = isSenderInAddressBook;
  retstr->isSenderRecentContact = isSenderRecentContact;
  *&retstr->isSenderPrimary = isSenderPrimary;
}

void __swiftcall DecisionRequest.init(senderName:senderEmail:emailSubject:isUnsubscribeHeaderPresent:isSenderVIP:isSenderInAddressBook:isSenderRecentContact:isSenderPrimary:isNonPersonalAccount:)(MCCKitCategorization::DecisionRequest *__return_ptr retstr, Swift::String senderName, Swift::String senderEmail, Swift::String emailSubject, Swift::Bool isUnsubscribeHeaderPresent, Swift::Bool isSenderVIP, Swift::Bool isSenderInAddressBook, Swift::Bool isSenderRecentContact, Swift::Bool isSenderPrimary, Swift::Bool isNonPersonalAccount)
{
  retstr->localRuleCategory.value._countAndFlagsBits = 0;
  retstr->localRuleCategory.value._object = 0;
  retstr->senderName = senderName;
  retstr->senderEmail = senderEmail;
  retstr->receiverEmail.value._countAndFlagsBits = 0;
  retstr->receiverEmail.value._object = 0;
  retstr->emailSubject = emailSubject;
  retstr->isUnsubscribeHeaderPresent = isUnsubscribeHeaderPresent;
  retstr->isSenderVIP = isSenderVIP;
  retstr->isSenderInAddressBook = isSenderInAddressBook;
  retstr->isSenderRecentContact = isSenderRecentContact;
  retstr->isSenderPrimary = isSenderPrimary;
  retstr->isNonPersonalAccount = isNonPersonalAccount;
}

void __swiftcall DecisionRequest.init(senderName:senderEmail:emailSubject:receiverEmail:isUnsubscribeHeaderPresent:isSenderVIP:isSenderInAddressBook:isSenderRecentContact:isSenderPrimary:isNonPersonalAccount:)(MCCKitCategorization::DecisionRequest *__return_ptr retstr, Swift::String senderName, Swift::String senderEmail, Swift::String emailSubject, Swift::String receiverEmail, Swift::Bool isUnsubscribeHeaderPresent, Swift::Bool isSenderVIP, Swift::Bool isSenderInAddressBook, Swift::Bool isSenderRecentContact, Swift::Bool isSenderPrimary, Swift::Bool isNonPersonalAccount)
{
  retstr->localRuleCategory.value._countAndFlagsBits = 0;
  retstr->localRuleCategory.value._object = 0;
  retstr->senderName = senderName;
  retstr->senderEmail = senderEmail;
  retstr->receiverEmail.value = receiverEmail;
  retstr->emailSubject = emailSubject;
  retstr->isUnsubscribeHeaderPresent = isUnsubscribeHeaderPresent;
  retstr->isSenderVIP = isSenderVIP;
  retstr->isSenderInAddressBook = isSenderInAddressBook;
  retstr->isSenderRecentContact = isSenderRecentContact;
  retstr->isSenderPrimary = isSenderPrimary;
  retstr->isNonPersonalAccount = isNonPersonalAccount;
}

uint64_t sub_22B3CC834(uint64_t a1, int a2)
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

uint64_t sub_22B3CC87C(uint64_t result, int a2, int a3)
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

id static AssetProtection.readObfuscatedContents(fileURL:fallback:)(uint64_t a1, int a2)
{
  v28 = a2;
  v4 = sub_22B3F64D4();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22B3F6504();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22B3F6184();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v11);
  v14 = [objc_opt_self() defaultManager];
  sub_22B3F6144();
  v15 = sub_22B3F6564();

  v16 = [v14 fileExistsAtPath_];

  if (v16)
  {
    v17 = sub_22B3F6194();
    if (!v2)
    {
      v19 = v17;
      v20 = v18;
      sub_22B3B7874(v17, v18);
      sub_22B3B7564(v19, v20);
      v29 = sub_22B3CCF0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE108, &qword_22B3F7E10);
      sub_22B3BA2E4();
      sub_22B3F64C4();
      v14 = sub_22B3F64E4();
      sub_22B3B78C8(v19, v20);
      (*(v25 + 8))(v27, v26);
      (*(v23 + 8))(v8, v24);
    }
  }

  else if (v28)
  {
    v21 = sub_22B3F6194();
    if (!v2)
    {
      v14 = v21;
    }
  }

  else
  {
    sub_22B3CCCD4();
    swift_allocError();
    swift_willThrow();
  }

  (*(v10 + 8))(v13, v9);
  return v14;
}

unint64_t sub_22B3CCCD4()
{
  result = qword_27D8BE378;
  if (!qword_27D8BE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE378);
  }

  return result;
}

uint64_t sub_22B3CCD28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    result = MEMORY[0x277D84F90];
    if (v2)
    {
      v14 = MEMORY[0x277D84F90];
      sub_22B3B793C(0, v2, 0);
      result = v14;
      v6 = (a2 + 32);
      v7 = (a1 + 32);
      v8 = *(v14 + 16);
      do
      {
        v10 = *v6++;
        v9 = v10;
        v12 = *v7++;
        v11 = v12;
        v15 = result;
        v13 = *(result + 24);
        if (v8 >= v13 >> 1)
        {
          sub_22B3B793C((v13 > 1), v8 + 1, 1);
          result = v15;
        }

        *(result + 16) = v8 + 1;
        *(result + v8++ + 32) = v11 ^ v9;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    result = sub_22B3F6B14();
    __break(1u);
  }

  return result;
}

uint64_t sub_22B3CCE60()
{
  sub_22B3F6D34();
  MEMORY[0x231890640](0);
  return sub_22B3F6D54();
}

uint64_t sub_22B3CCECC(uint64_t a1)
{
  sub_22B3F6D34();
  MEMORY[0x231890640](0);
  return sub_22B3F6D54();
}

uint64_t sub_22B3CCF0C()
{
  v30 = MEMORY[0x277D84F90];
  sub_22B3B793C(0, 32, 0);
  v0 = 0;
  v1 = v30;
  do
  {
    v29 = 0;
    MEMORY[0x231890C50](&v29, 8);
    if (v29)
    {
      v2 = (255 * v29) >> 8;
    }

    else
    {
      do
      {
        v29 = 0;
        MEMORY[0x231890C50](&v29, 8);
      }

      while (!v29);
      LOBYTE(v2) = (255 * v29) >> 8;
    }

    v30 = v1;
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);
    if (v4 >= v3 >> 1)
    {
      sub_22B3B793C((v3 > 1), v4 + 1, 1);
      v1 = v30;
    }

    ++v0;
    *(v1 + 16) = v4 + 1;
    *(v1 + 32 + v4) = v2;
  }

  while (v0 != 32);

  v6 = sub_22B3CCD28(v5, &unk_283F05130);
  v7 = sub_22B3CCD28(v1, &unk_283F05170);
  v8 = sub_22B3CCD28(v1, &unk_283F051B0);
  v9 = sub_22B3CCD28(v1, &unk_283F051F0);
  if (*(v6 + 16) < 0x20uLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  v0 = v9;
  sub_22B3E1114(v6, v6 + 32, 24, 0x41uLL);
  v11 = v10;

  if (*(v1 + 16) < 0x20uLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_22B3E1114(v1, v1 + 32, 24, 0x41uLL);
  v6 = sub_22B3CCD28(v12, v11);

  v14 = *(v7 + 16);
  if (v14 >= 8)
  {
    if (v14 == 8)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  sub_22B3E1114(v7, v7 + 32, 0, 0x11uLL);
  v25 = v24;

  v7 = v25;
LABEL_13:
  v15 = *(v1 + 16);
  if (v15 < 8)
  {
    __break(1u);
  }

  else
  {
    v13 = v1;
    if (v15 == 8)
    {

      v16 = v1;
      goto LABEL_16;
    }
  }

  sub_22B3E1114(v13, v1 + 32, 0, 0x11uLL);
  v16 = v26;
LABEL_16:
  v17 = sub_22B3CCD28(v16, v7);

  if (*(v8 + 16) < 0x18uLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  sub_22B3E1114(v8, v8 + 32, 16, 0x31uLL);
  v7 = v18;

  if (*(v1 + 16) < 0x10uLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_22B3E1114(v1, v1 + 32, 16, 0x31uLL);
  v20 = v19;

  v8 = sub_22B3CCD28(v20, v7);

  if (*(v0 + 16) < 0x10uLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_22B3E1114(v0, v0 + 32, 8, 0x21uLL);
  v7 = v21;

  if (*(v1 + 16) != 8)
  {
LABEL_30:
    sub_22B3E1114(v1, v1 + 32, 8, 0x21uLL);
    v28 = v27;

    v1 = v28;
  }

  v22 = sub_22B3CCD28(v1, v7);

  sub_22B3CB2B0(v22);
  sub_22B3CB2B0(v8);
  sub_22B3CB2B0(v6);
  return v17;
}

unint64_t sub_22B3CD2D0()
{
  result = qword_27D8BE380;
  if (!qword_27D8BE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE380);
  }

  return result;
}

uint64_t sub_22B3CD360(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t MCCNLP.__allocating_init(withLevel:)(char *a1)
{
  v2 = swift_allocObject();
  MCCNLP.init(withLevel:)(a1);
  return v2;
}

uint64_t MCCNLP.init(withLevel:)(char *a1)
{
  v2 = v1;
  v74 = type metadata accessor for BloomFilterData(0);
  MEMORY[0x28223BE20](v74);
  v70 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22B3F6184();
  v82 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v71 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v64 - v7;
  v9 = type metadata accessor for BlackPearlLevels(0);
  MEMORY[0x28223BE20](v9);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v14 = sub_22B3CED78(0x100000000000001ALL, 0x800000022B3FB790, 0);
  v72 = 0;
  v96 = xmmword_22B3F91A0;
  v97 = xmmword_22B3F91B0;
  v98 = xmmword_22B3F91C0;
  *&v99 = 0x800000022B3FB790;
  *(&v99 + 1) = v14;
  LOBYTE(v84) = v12;
  v15 = type metadata accessor for TrialLoader(0);
  swift_allocObject();
  v16 = TrialLoader.init(withNLPLevel:)(&v84);
  *(v2 + 64) = v15;
  *(v2 + 72) = &protocol witness table for TrialLoader;
  *(v2 + 40) = v16;
  v68 = (v2 + 40);
  sub_22B3CEF2C(v2 + 40, &v84);
  v17 = v86;
  v18 = v87;
  __swift_project_boxed_opaque_existential_0(&v84, v86);
  LOBYTE(a1) = (v18[40])(v17, v18);
  __swift_destroy_boxed_opaque_existential_0(&v84);
  *(v2 + 16) = (a1 & 1) == 0;
  sub_22B3CEF2C(v2 + 40, &v84);
  v19 = v86;
  v20 = v87;
  __swift_project_boxed_opaque_existential_0(&v84, v86);
  (v20[38])(v19, v20);
  v21 = v2 + OBJC_IVAR____TtC20MCCKitCategorization6MCCNLP_blackPearlLevels;
  sub_22B3B2C30(v11, v2 + OBJC_IVAR____TtC20MCCKitCategorization6MCCNLP_blackPearlLevels);
  __swift_destroy_boxed_opaque_existential_0(&v84);
  swift_beginAccess();
  v22 = v9[13];
  v80 = v2;
  v23 = v82;
  v24 = v82[2];
  v25 = v67;
  v24(v8, v21 + v22 + *(v74 + 24), v67);
  type metadata accessor for NERRule();
  v26 = swift_allocObject();
  v64[1] = type metadata accessor for BloomFilterSerDe();
  static BloomFilterSerDe.readFromFile(withFilePath:)(&v84);
  v73 = v23[1];
  v82 = v23 + 1;
  v73(v8, v25);
  v27 = v86;
  v28 = v87;
  v69 = v26;
  *(v26 + 16) = v84;
  *(v26 + 24) = v85;
  *(v26 + 40) = v27;
  *(v26 + 48) = v28;
  v24(v8, v21 + v9[14], v25);
  v29 = type metadata accessor for DomainMapDataFrame(0);
  swift_allocObject();
  v81 = DomainMapDataFrame.init(withFileAtPath:)(v8);
  v24(v8, v21 + v9[15], v25);
  v30 = type metadata accessor for TokenMapDataFrame();
  swift_allocObject();
  v79 = TokenMapDataFrame.init(withFileAtPath:)(v8);
  v24(v8, v21 + v9[16], v25);
  swift_allocObject();
  v78 = TokenMapDataFrame.init(withFileAtPath:)(v8);
  v24(v8, v21 + v9[17], v25);
  v65 = v30;
  swift_allocObject();
  v77 = TokenMapDataFrame.init(withFileAtPath:)(v8);
  v24(v8, v21 + v9[19], v25);
  swift_allocObject();
  v76 = DomainMapDataFrame.init(withFileAtPath:)(v8);
  v24(v8, v21 + v9[20], v25);
  swift_allocObject();
  v75 = TokenMapDataFrame.init(withFileAtPath:)(v8);
  v31 = v9[13];
  v64[0] = v9;
  v24(v8, v21 + v31, v25);
  type metadata accessor for CommerceSenderRule();
  v32 = swift_allocObject();
  static BloomFilterSerDe.readFromFile(withFilePath:)(&v84);
  v73(v8, v25);
  v33 = v86;
  v34 = v87;
  v66 = v32;
  *(v32 + 16) = v84;
  *(v32 + 24) = v85;
  *(v32 + 40) = v33;
  *(v32 + 48) = v34;
  v35 = v70;
  sub_22B3CEE54(v21 + v9[13], v70);
  v24(v8, &v35[*(v74 + 20)], v25);
  sub_22B3CEFE4(v35, type metadata accessor for BloomFilterData);
  type metadata accessor for GuaranteeListRule();
  v36 = swift_allocObject();
  v74 = v36;
  v37 = v71;
  v24(v71, v8, v25);
  swift_allocObject();
  v38 = DomainMapDataFrame.init(withFileAtPath:)(v37);
  v86 = v29;
  v87 = &protocol witness table for DomainMapDataFrame;
  v84 = v38;
  v73(v8, v25);
  sub_22B3CEEB8(&v84, v36 + 16);
  v39 = v64[0];
  v24(v8, v21 + *(v64[0] + 72), v25);
  swift_allocObject();
  v40 = DomainMapDataFrame.init(withFileAtPath:)(v8);
  v41 = v80;
  *(v80 + OBJC_IVAR____TtC20MCCKitCategorization6MCCNLP_personalDomains) = v40;
  v42 = v40;
  v73 = v40;
  type metadata accessor for DomainHelper();
  v43 = swift_allocObject();
  v82 = v43;
  v43[5] = v29;
  v43[6] = &protocol witness table for DomainMapDataFrame;
  v43[7] = v42;
  v43[2] = v81;
  *(v41 + 32) = v43;
  v44 = v21 + *(v39 + 48);
  type metadata accessor for FinalRule();
  v45 = swift_allocObject();
  v46 = *(v44 + 48);
  *(v45 + 48) = *(v44 + 32);
  *(v45 + 64) = v46;
  *(v45 + 80) = *(v44 + 64);
  *(v45 + 96) = *(v44 + 80);
  v47 = *(v44 + 16);
  *(v45 + 16) = *v44;
  *(v45 + 32) = v47;
  sub_22B3CEF2C(v68, v93);
  type metadata accessor for DecisionStrategy(0);
  v48 = swift_allocObject();
  v92[3] = v65;
  v92[4] = &protocol witness table for TokenMapDataFrame;
  v91[4] = &protocol witness table for TokenMapDataFrame;
  v92[0] = v79;
  v91[3] = v65;
  v90[4] = &protocol witness table for TokenMapDataFrame;
  v91[0] = v78;
  v90[3] = v65;
  v90[0] = v77;
  v89[3] = v29;
  v89[4] = &protocol witness table for DomainMapDataFrame;
  v89[0] = v76;
  v88[3] = v65;
  v88[4] = &protocol witness table for TokenMapDataFrame;
  *(v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_catMaxSeqLen) = 256;
  v88[0] = v75;
  *(v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_nonCommerceCategories) = &unk_283F05328;
  v49 = v99;
  v48[3] = v98;
  v48[4] = v49;
  v50 = v97;
  v48[1] = v96;
  v48[2] = v50;
  v51 = v94;
  v52 = v95;
  v68 = __swift_project_boxed_opaque_existential_0(v93, v94);
  v70 = *(v52 + 304);
  v71 = (v52 + 304);
  v67 = OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;

  sub_22B3CEED0(&v96, &v84);
  (v70)(v51, v52);
  v53 = v66;
  v54 = v69;
  sub_22B3CEF2C(v93, v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader);
  *(v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_nerRule) = v54;
  *(v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_commerceSenderRule) = v53;
  *(v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_guaranteeList) = v74;
  *(v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_finalRule) = v45;
  sub_22B3CEF2C(v92, v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsSubjectMap);
  sub_22B3CEF2C(v91, v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsSenderMap);
  sub_22B3CEF2C(v90, v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_catMap);
  type metadata accessor for BertEmbeddings();
  swift_allocObject();

  *(v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_bertEmbeddings) = BertEmbeddings.init()();
  sub_22B3CEF2C(v89, v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_saasSenderMap);
  sub_22B3CEF2C(v88, v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_mbertDomainMap);
  type metadata accessor for LanguageDetection();
  swift_allocObject();
  *(v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_languageDetection) = sub_22B3C2BDC();
  *(v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_domainHelper) = v82;
  v55 = objc_allocWithZone(MEMORY[0x277CCAC68]);

  v56 = v72;
  v57 = sub_22B3CED78(0xD000000000000041, 0x800000022B3FB800, 1);
  if (v56)
  {
    v84 = 0;
    *&v85 = 0xE000000000000000;
    sub_22B3F6AC4();
    MEMORY[0x23188FF80](0xD00000000000002ALL, 0x800000022B3FB880);
    v83 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
    sub_22B3F6B04();
    result = sub_22B3F6B14();
    __break(1u);
  }

  else
  {
    *(v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_privateRelayRegex) = v57;
    v58 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    *(v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsRegex) = sub_22B3CED78(0x775C5E5B7C2B775CLL, 0xEB000000005D735CLL, 0);
    v59 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v60 = sub_22B3CED78(0xD000000000000014, 0x800000022B3FB8E0, 0);
    v61 = v80;
    v62 = v60;

    sub_22B3CEF90(&v96);
    __swift_destroy_boxed_opaque_existential_0(v88);
    __swift_destroy_boxed_opaque_existential_0(v89);
    __swift_destroy_boxed_opaque_existential_0(v90);
    __swift_destroy_boxed_opaque_existential_0(v91);
    __swift_destroy_boxed_opaque_existential_0(v92);
    *(v48 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_alphaNumericRegex) = v62;
    __swift_destroy_boxed_opaque_existential_0(v93);
    *(v61 + 24) = v48;
    return v61;
  }

  return result;
}

uint64_t MCCNLP.deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC20MCCKitCategorization6MCCNLP_blackPearlLevels;
  swift_beginAccess();
  v3 = type metadata accessor for BlackPearlModel(0);
  v4 = *(v3 + 32);
  v46 = *(v2 + v4);
  *(v2 + v4) = 0;
  *(v2 + *(v3 + 36)) = 0;
  v5 = type metadata accessor for BlackPearlLevels(0);
  v6 = v2 + v5[8];
  v7 = *(v3 + 32);
  v8 = *(v6 + v7);
  *(v6 + v7) = 0;
  *(v6 + *(v3 + 36)) = 0;
  v9 = v2 + v5[7];
  v10 = *(v3 + 32);
  v11 = *(v9 + v10);
  *(v9 + v10) = 0;
  *(v9 + *(v3 + 36)) = 0;
  v12 = v2 + v5[5];
  v13 = *(v3 + 32);
  v14 = *(v12 + v13);
  *(v12 + v13) = 0;
  *(v12 + *(v3 + 36)) = 0;
  v15 = v2 + v5[9];
  v16 = *(v3 + 32);
  v17 = *(v15 + v16);
  *(v15 + v16) = 0;
  *(v15 + *(v3 + 36)) = 0;
  v18 = v2 + v5[6];
  v19 = *(v3 + 32);
  v20 = *(v18 + v19);
  *(v18 + v19) = 0;
  *(v18 + *(v3 + 36)) = 0;
  v21 = v2 + v5[10];
  v22 = *(v3 + 32);
  v23 = *(v21 + v22);
  *(v21 + v22) = 0;
  *(v21 + *(v3 + 36)) = 0;

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v24 = sub_22B3F6464();
  __swift_project_value_buffer(v24, qword_28140D680);

  v25 = sub_22B3F6444();
  v26 = sub_22B3F68B4();

  if (os_log_type_enabled(v25, v26))
  {
    v44 = v26;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138413826;
    v29 = *(v2 + *(v3 + 32));
    *(v27 + 4) = v29;
    *v28 = v29;
    *(v27 + 12) = 2112;
    v30 = *(v2 + v5[7] + *(v3 + 32));
    *(v27 + 14) = v30;
    v28[1] = v30;
    *(v27 + 22) = 2112;
    v31 = *(v2 + v5[8] + *(v3 + 32));
    *(v27 + 24) = v31;
    v28[2] = v31;
    *(v27 + 32) = 2112;
    v32 = *(v2 + v5[5] + *(v3 + 32));
    *(v27 + 34) = v32;
    v28[3] = v32;
    *(v27 + 42) = 2112;
    v45 = v25;
    v47 = v1;
    v33 = *(v2 + v5[9] + *(v3 + 32));
    *(v27 + 44) = v33;
    v28[4] = v33;
    *(v27 + 52) = 2112;
    v34 = *(v2 + v5[6] + *(v3 + 32));
    *(v27 + 54) = v34;
    v28[5] = v34;
    *(v27 + 62) = 2112;
    v35 = *(v2 + v5[10] + *(v3 + 32));
    *(v27 + 64) = v35;
    v28[6] = v35;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v40 = v33;
    v25 = v45;
    v41 = v34;
    v1 = v47;
    v42 = v35;
    _os_log_impl(&dword_22B3A7000, v45, v44, "Destroyed MCCNLP model  %@, %@, %@, %@, %@, %@, %@", v27, 0x48u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE078, &qword_22B3F8C50);
    swift_arrayDestroy();
    MEMORY[0x231890C40](v28, -1, -1);
    MEMORY[0x231890C40](v27, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v1 + 40);
  sub_22B3CEFE4(v2, type metadata accessor for BlackPearlLevels);

  return v1;
}

uint64_t MCCNLP.__deallocating_deinit()
{
  MCCNLP.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B3CE61C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v5[4] = *(a1 + 64);
  v6 = *(a1 + 80);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  return sub_22B3D6534(v5, a2);
}

uint64_t sub_22B3CE66C()
{
  v1 = v0;
  v2 = type metadata accessor for BlackPearlLevels(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22B3CEF2C(v0 + 40, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_0(v10, v11);
  (*(v6 + 304))(v5, v6);
  v7 = OBJC_IVAR____TtC20MCCKitCategorization6MCCNLP_blackPearlLevels;
  swift_beginAccess();
  sub_22B3B2AD8(v4, v1 + v7);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_22B3CE760@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20MCCKitCategorization6MCCNLP_blackPearlLevels;
  swift_beginAccess();
  v4 = (v3 + *(type metadata accessor for BlackPearlLevels(0) + 44));
  v5 = v4[9];
  v6 = v4[7];
  v28 = v4[8];
  v29 = v5;
  v7 = v4[9];
  v30[0] = v4[10];
  *(v30 + 9) = *(v4 + 169);
  v8 = v4[5];
  v10 = v4[3];
  v24 = v4[4];
  v9 = v24;
  v25 = v8;
  v11 = v4[5];
  v12 = v4[7];
  v26 = v4[6];
  v13 = v26;
  v27 = v12;
  v14 = v4[1];
  v15 = v4[3];
  v22 = v4[2];
  v16 = v22;
  v23 = v15;
  v17 = v4[1];
  v21[0] = *v4;
  v18 = v21[0];
  v21[1] = v17;
  a1[8] = v28;
  a1[9] = v7;
  a1[10] = v4[10];
  *(a1 + 169) = *(v4 + 169);
  a1[4] = v9;
  a1[5] = v11;
  a1[6] = v13;
  a1[7] = v6;
  *a1 = v18;
  a1[1] = v14;
  a1[2] = v16;
  a1[3] = v10;
  return sub_22B3A9F54(v21, v20);
}

uint64_t sub_22B3CE840()
{
  sub_22B3CEF2C(v0 + 40, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_0(v5, v6);
  v3 = *(v2 + 328);

  v3(3, sub_22B3CF044, v0, v1, v2);

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_22B3CE8E8(char *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[1])
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v4 = sub_22B3F6464();
    __swift_project_value_buffer(v4, qword_28140D680);
    v5 = sub_22B3F6444();
    v6 = sub_22B3F68C4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      sub_22B3B30D4();
      swift_allocError();
      *v9 = v3;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_22B3A7000, v5, v6, "Failed model download %@", v7, 0xCu);
      sub_22B3CC430(v8);
      MEMORY[0x231890C40](v8, -1, -1);
      MEMORY[0x231890C40](v7, -1, -1);
    }

    result = swift_beginAccess();
    *(a2 + 16) = 0;
  }

  else
  {
    result = swift_beginAccess();
    *(a2 + 16) = v3 & 1;
  }

  return result;
}

uint64_t sub_22B3CEA74(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B3B568C(a1, a2);

  return v2;
}

uint64_t sub_22B3CEAA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B3B568C(a1, a2);

  return sub_22B3D2AE0(v2);
}

uint64_t sub_22B3CEAEC(uint64_t a1, unint64_t a2)
{
  v2 = sub_22B3B6414(a1, a2);
  v4 = sub_22B3B568C(v2, v3);

  return sub_22B3D2AE0(v4);
}

uint64_t sub_22B3CEB4C(uint64_t a1, unint64_t a2)
{
  sub_22B3B6414(a1, a2);
  v2 = sub_22B3F65D4();
  v4 = v3;

  v5 = sub_22B3D0178(v2, v4);
  v7 = v6;

  return (v5 > 0) & ~v7;
}

uint64_t sub_22B3CEBBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_22B3F65D4();
  v4 = sub_22B3D0178(v2, v3);
  v6 = v5;

  return (v4 > 0) & ~v6;
}

uint64_t sub_22B3CEC10@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20MCCKitCategorization6MCCNLP_blackPearlLevels;
  swift_beginAccess();
  result = type metadata accessor for BlackPearlLevels(0);
  v5 = v3 + *(result + 44);
  if (*(v5 + 184))
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v6 = sub_22B3F6464();
    __swift_project_value_buffer(v6, qword_28140D680);
    v7 = sub_22B3F6444();
    v8 = sub_22B3F68C4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B3A7000, v7, v8, "BlackPearl Categorization version is nil", v9, 2u);
      MEMORY[0x231890C40](v9, -1, -1);
    }

    sub_22B3CF04C();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }

  else
  {
    v11 = *(v5 + 176);
    *a1 = *(v5 + 160);
    *(a1 + 16) = v11;
  }

  return result;
}