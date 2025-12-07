char *sub_2686310A4(uint64_t a1, double a2)
{
  result = sub_26862CDF8(a1);
  if (!v2)
  {
    return sub_26863183C(result, a2);
  }

  return result;
}

char *sub_2686310E4(unint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v2)
  {
    return sub_268631A50(a1);
  }

  return result;
}

uint64_t sub_268631120(unint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      *v2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = 34;
    *v2 = v6;
    sub_2686328AC(a1);
    v10 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v10;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
      *v2 = result;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + v12 + 32) = 34;
    *v2 = v10;
  }

  return result;
}

char *sub_268631268(unsigned int a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v2)
  {
    return sub_2686328AC(a1);
  }

  return result;
}

char *sub_2686312A4(char a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v2)
  {
    if (a1)
    {
      v6 = "true";
      v7 = 4;
    }

    else
    {
      v6 = "false";
      v7 = 5;
    }

    return sub_2685B403C(v6, v7, v5);
  }

  return result;
}

uint64_t sub_268631354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  result = sub_26862CDF8(a3);
  if (!v6)
  {
    return a6(a1, a2);
  }

  return result;
}

uint64_t sub_2686314C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2686314D8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_26862F3B4(a1, a2, v3 | *(v2 + 32), *(v2 + 16), *(v2 + 24));
}

uint64_t AnyUnpackError.hashValue.getter()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1);
  return sub_268689EF4();
}

unint64_t sub_268631648()
{
  result = qword_28028D3D0;
  if (!qword_28028D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D3D0);
  }

  return result;
}

double UnknownStorage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  return result;
}

uint64_t UnknownStorage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v5 = v3[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v6)
    {
      if (result == result >> 32)
      {
        return result;
      }
    }

    else if ((v5 & 0xFF000000000000) == 0)
    {
      return result;
    }

    return (*(a3 + 448))(result);
  }

  if (v6 == 2 && *(result + 16) != *(result + 24))
  {
    return (*(a3 + 448))(result);
  }

  return result;
}

uint64_t UnknownStorage.data.getter()
{
  v1 = *v0;
  sub_2685BA80C(*v0, *(v0 + 8));
  return v1;
}

char *sub_2686317B0(float a1)
{
  if ((~LODWORD(a1) & 0x7F800000) != 0)
  {
    v3 = sub_268689BE4();

    return sub_2686689EC(v3, v4);
  }

  else
  {
    if ((LODWORD(a1) & 0x7FFFFF) != 0)
    {
      v1 = "NaN";
      v2 = 5;
    }

    else if (a1 >= 0.0)
    {
      v1 = "Infinity";
      v2 = 10;
    }

    else
    {
      v1 = "-Infinity";
      v2 = 11;
    }

    return sub_2685B403C(v1, v2, LODWORD(a1));
  }
}

char *sub_26863183C(uint64_t a1, double a2)
{
  if ((~*&a2 & 0x7FF0000000000000) != 0)
  {
    v4 = sub_268689BD4();

    return sub_2686689EC(v4, v5);
  }

  else
  {
    if ((*&a2 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v2 = "NaN";
      v3 = 5;
    }

    else if (a2 >= 0.0)
    {
      v2 = "Infinity";
      v3 = 10;
    }

    else
    {
      v2 = "-Infinity";
      v3 = 11;
    }

    return sub_2685B403C(v2, v3, *&a2);
  }
}

char *sub_2686318C8(int a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    *v1 = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v3 = sub_2685B3F48((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v7;
  v3[v6 + 32] = 34;
  *v1 = v3;
  v8 = a1;
  if (a1 < 0)
  {
    v9 = *(v3 + 3);
    v10 = v6 + 2;
    if ((v6 + 2) > (v9 >> 1))
    {
      v15 = v8;
      v3 = sub_2685B3F48((v9 > 1), v10, 1, v3);
      v8 = v15;
    }

    *(v3 + 2) = v10;
    v3[v7 + 32] = 45;
    *v1 = v3;
    v8 = -v8;
  }

  sub_2686328AC(v8);
  v11 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v11;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v11 + 2) + 1, 1, v11);
    v11 = result;
    *v1 = result;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 2) = v14 + 1;
  v11[v14 + 32] = 34;
  *v1 = v11;
  return result;
}

char *sub_268631A50(unint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    *v1 = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v3 = sub_2685B3F48((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v7;
  v3[v6 + 32] = 34;
  *v1 = v3;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v8 = *(v3 + 3);
    v9 = v6 + 2;
    if (v9 > (v8 >> 1))
    {
      v3 = sub_2685B3F48((v8 > 1), v9, 1, v3);
    }

    *(v3 + 2) = v9;
    v3[v7 + 32] = 45;
    *v1 = v3;
    a1 = -a1;
  }

  sub_2686328AC(a1);
  v10 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v10;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
    v10 = result;
    *v1 = result;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    result = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 2) = v13 + 1;
  v10[v13 + 32] = 34;
  *v1 = v10;
  return result;
}

char *sub_268631BCC(char a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    *v1 = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_2685B3F48((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v3[v6 + 32] = 34;
  *v1 = v3;
  if (a1)
  {
    v7 = "true";
    v8 = 4;
  }

  else
  {
    v7 = "false";
    v8 = 5;
  }

  sub_2685B403C(v7, v8, &v3[v6]);
  v9 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v9;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
    v9 = result;
    *v1 = result;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 2) = v12 + 1;
  v9[v12 + 32] = 34;
  *v1 = v9;
  return result;
}

char *sub_268631D18(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 16) = v9 + 1;
    *(v6 + v9 + 32) = 34;
    *v3 = v6;
    v10 = (a2 & 0x2000000000000000) != 0 ? HIBYTE(a2) & 0xF : a1 & 0xFFFFFFFFFFFFLL;
    if (!v10)
    {
      break;
    }

    v11 = 0;
    v63 = v10;
    v64 = v3;
    v62 = a1;
    v12 = a2 & 0xFFFFFFFFFFFFFFLL;
    v13 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v17 = sub_268689CD4();
        v6 = v18;
        if (v17 <= 11)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v65[0] = a1;
        v65[1] = v12;
        v16 = v65 + v11;
      }

      else
      {
        v15 = v13;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v15 = sub_268689D24();
        }

        v16 = v15 + v11;
      }

      v17 = *v16;
      if ((*v16 & 0x80000000) == 0)
      {
LABEL_27:
        v6 = 1;
        if (*v16 <= 0xBu)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      v20 = (__clz(v17 ^ 0xFF) - 24);
      if (v20 > 2)
      {
        break;
      }

      if (v20 == 1)
      {
        goto LABEL_27;
      }

      v16 = *(v16 + 1) & 0x3F | ((v17 & 0x1F) << 6);
      v17 = v16;
      v6 = 2;
      if (v16 <= 11)
      {
        goto LABEL_28;
      }

LABEL_18:
      v19 = a1;
      if (v17 > 33)
      {
        if (v17 == 34)
        {
          v14 = "\";
        }

        else
        {
          if (v17 != 92)
          {
            goto LABEL_37;
          }

          v14 = "\\\"";
        }
      }

      else if (v17 == 12)
      {
        v14 = "\\f";
      }

      else
      {
        if (v17 != 13)
        {
          goto LABEL_37;
        }

        v14 = "\\r";
      }

LABEL_10:
      sub_2685B403C(v14, 2, v16);
      a1 = v19;
LABEL_11:
      v11 += v6;
      if (v11 >= v10)
      {

        v6 = *v3;
        goto LABEL_96;
      }
    }

    if (v20 == 3)
    {
      v32 = *(v16 + 1);
      v16 = *(v16 + 2);
      v17 = ((v17 & 0xF) << 12) | ((v32 & 0x3F) << 6) | v16 & 0x3F;
      v6 = 3;
      if (v17 <= 11)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v42 = *(v16 + 1);
    v43 = *(v16 + 2);
    v16 = *(v16 + 3);
    v17 = ((v17 & 0xF) << 18) | ((v42 & 0x3F) << 12) | ((v43 & 0x3F) << 6) | v16 & 0x3F;
    v6 = 4;
    if (v17 > 11)
    {
      goto LABEL_18;
    }

LABEL_28:
    if (v17 == 8)
    {
      v14 = "\\b";
      v19 = a1;
      goto LABEL_10;
    }

    v19 = a1;
    if (v17 == 9)
    {
      v14 = "\\t";
      goto LABEL_10;
    }

    if (v17 == 10)
    {
      v14 = "\\n";
      goto LABEL_10;
    }

LABEL_37:
    if (v17 >= 0x20)
    {
      v16 = v17 - 160;
      if (v16 < 0xFFFFFFDF)
      {
        if (v17 > 0x7E)
        {
          a1 = v19;
          if (v17 <= 0x7FF)
          {
            v21 = *v3;
            v47 = swift_isUniquelyReferenced_nonNull_native();
            *v3 = v21;
            if ((v47 & 1) == 0)
            {
              v21 = sub_2685B3F48(0, *(v21 + 2) + 1, 1, v21);
              *v3 = v21;
            }

            v49 = *(v21 + 2);
            v48 = *(v21 + 3);
            v50 = v49 + 1;
            if (v49 >= v48 >> 1)
            {
              v21 = sub_2685B3F48((v48 > 1), v49 + 1, 1, v21);
            }

            *(v21 + 2) = v50;
            v21[v49 + 32] = (v17 >> 6) | 0xC0;
            *v3 = v21;
            v51 = *(v21 + 3);
            if ((v49 + 2) > (v51 >> 1))
            {
              v21 = sub_2685B3F48((v51 > 1), v49 + 2, 1, v21);
            }

            v52 = v17 & 0x3F | 0x80;
            *(v21 + 2) = v49 + 2;
            v53 = &v21[v50];
          }

          else
          {
            if (v17 - 0x10000 >= 0xFFFF0800)
            {
              v21 = *v3;
              v54 = swift_isUniquelyReferenced_nonNull_native();
              *v3 = v21;
              if ((v54 & 1) == 0)
              {
                v21 = sub_2685B3F48(0, *(v21 + 2) + 1, 1, v21);
                *v3 = v21;
              }

              v56 = *(v21 + 2);
              v55 = *(v21 + 3);
              v57 = v56 + 1;
              if (v56 >= v55 >> 1)
              {
                v21 = sub_2685B3F48((v55 > 1), v56 + 1, 1, v21);
              }

              *(v21 + 2) = v57;
              v21[v56 + 32] = (v17 >> 12) | 0xE0;
              *v3 = v21;
              v58 = *(v21 + 3);
              v29 = v56 + 2;
              if ((v56 + 2) > (v58 >> 1))
              {
                v21 = sub_2685B3F48((v58 > 1), v56 + 2, 1, v21);
              }

              *(v21 + 2) = v29;
              v21[v57 + 32] = (v17 >> 6) & 0x3F | 0x80;
              *v3 = v21;
              v30 = *(v21 + 3);
              v31 = v56 + 3;
            }

            else
            {
              if ((((v17 >> 18) + 240) & 0x100) != 0)
              {
                goto LABEL_103;
              }

              v21 = *v3;
              v22 = swift_isUniquelyReferenced_nonNull_native();
              *v3 = v21;
              if ((v22 & 1) == 0)
              {
                v21 = sub_2685B3F48(0, *(v21 + 2) + 1, 1, v21);
                *v3 = v21;
              }

              v24 = *(v21 + 2);
              v23 = *(v21 + 3);
              v25 = v24 + 1;
              if (v24 >= v23 >> 1)
              {
                v21 = sub_2685B3F48((v23 > 1), v24 + 1, 1, v21);
              }

              *(v21 + 2) = v25;
              v21[v24 + 32] = (v17 >> 18) - 16;
              *v3 = v21;
              v26 = *(v21 + 3);
              v27 = v24 + 2;
              if ((v24 + 2) > (v26 >> 1))
              {
                v21 = sub_2685B3F48((v26 > 1), v24 + 2, 1, v21);
              }

              *(v21 + 2) = v27;
              v21[v25 + 32] = (v17 >> 12) & 0x3F | 0x80;
              *v3 = v21;
              v28 = *(v21 + 3);
              v29 = v24 + 3;
              if ((v24 + 3) > (v28 >> 1))
              {
                v21 = sub_2685B3F48((v28 > 1), v24 + 3, 1, v21);
              }

              *(v21 + 2) = v29;
              v21[v27 + 32] = (v17 >> 6) & 0x3F | 0x80;
              *v3 = v21;
              v30 = *(v21 + 3);
              v31 = v24 + 4;
            }

            if (v31 > (v30 >> 1))
            {
              v21 = sub_2685B3F48((v30 > 1), v31, 1, v21);
            }

            v52 = v17 & 0x3F | 0x80;
            *(v21 + 2) = v31;
            v53 = &v21[v29];
          }

          v53[32] = v52;
          *v3 = v21;
          v10 = v63;
          goto LABEL_94;
        }

        v35 = *v3;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        *v3 = v35;
        a1 = v19;
        if ((v44 & 1) == 0)
        {
          v35 = sub_2685B3F48(0, *(v35 + 2) + 1, 1, v35);
          *v3 = v35;
        }

        v46 = *(v35 + 2);
        v45 = *(v35 + 3);
        if (v46 >= v45 >> 1)
        {
          v35 = sub_2685B3F48((v45 > 1), v46 + 1, 1, v35);
        }

        *(v35 + 2) = v46 + 1;
        v35[v46 + 32] = v17;
LABEL_75:
        *v3 = v35;
LABEL_94:
        v13 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v12 = a2 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_11;
      }
    }

    a1 = v3;
    sub_2685B403C("\\u00", 4, v16);
    if (qword_28028BDD0 != -1)
    {
      swift_once();
    }

    v33 = off_28028D3E0;
    v34 = v17 >> 4;
    if (*(off_28028D3E0 + 2) > v34)
    {
      a1 = *(off_28028D3E0 + v34 + 32);
      v35 = *v3;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      *v3 = v35;
      if ((v36 & 1) == 0)
      {
        v35 = sub_2685B3F48(0, *(v35 + 2) + 1, 1, v35);
        *v3 = v35;
      }

      v3 = *(v35 + 2);
      v37 = *(v35 + 3);
      v38 = v3 + 1;
      if (v3 >= v37 >> 1)
      {
        v35 = sub_2685B3F48((v37 > 1), v3 + 1, 1, v35);
      }

      *(v35 + 2) = v38;
      *(v3 + v35 + 32) = a1;
      *v64 = v35;
      if (v33[2] <= (v17 & 0xF))
      {
        goto LABEL_102;
      }

      v39 = *(v33 + (v17 & 0xF) + 32);
      v40 = *(v35 + 3);
      v41 = v3 + 2;
      if (v3 + 2 > (v40 >> 1))
      {
        v35 = sub_2685B3F48((v40 > 1), v3 + 2, 1, v35);
      }

      v10 = v63;
      v3 = v64;
      a1 = v62;
      *(v35 + 2) = v41;
      v38[v35 + 32] = v39;
      goto LABEL_75;
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    v6 = sub_2685B3F48(0, *(v6 + 16) + 1, 1, v6);
    *v3 = v6;
  }

LABEL_96:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
    *v3 = result;
  }

  v61 = *(v6 + 16);
  v60 = *(v6 + 24);
  if (v61 >= v60 >> 1)
  {
    result = sub_2685B3F48((v60 > 1), v61 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v61 + 1;
  *(v6 + v61 + 32) = 34;
  *v3 = v6;
  return result;
}

uint64_t sub_268632578(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 34;
  *v2 = v5;
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      if (!BYTE6(a2))
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 1)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  if (v9 == 2)
  {
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v13 >= 1)
    {
LABEL_12:
      sub_268633388(a1, a2, v2);
      v5 = *v2;
    }
  }

LABEL_13:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v15 = *(v5 + 2);
  v14 = *(v5 + 3);
  if (v15 >= v14 >> 1)
  {
    result = sub_2685B3F48((v14 > 1), v15 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v15 + 1;
  v5[v15 + 32] = 34;
  *v2 = v5;
  return result;
}

char *sub_268632720()
{
  result = sub_268632740();
  off_28028D3D8 = result;
  return result;
}

char *sub_268632740()
{
  v7 = MEMORY[0x277D84F90];
  sub_268668B04(23105);
  sub_268668B04(31329);
  sub_268668B04(14640);
  v0 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_2685B3F48(0, *(v7 + 16) + 1, 1, v7);
  }

  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_2685B3F48((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v0[v2 + 32] = 43;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    v0 = sub_2685B3F48((v1 > 1), v5, 1, v0);
  }

  *(v0 + 2) = v5;
  v0[v4 + 32] = 47;
  return v0;
}

uint64_t sub_268632858()
{
  v1 = MEMORY[0x277D84F90];
  sub_268668B04(14640);
  result = sub_268668B04(17985);
  off_28028D3E0 = v1;
  return result;
}

char *sub_2686328AC(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    sub_2686328AC(a1 / 0xA);
  }

  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    v3 = result;
    *v1 = result;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    result = sub_2685B3F48((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 2) = v6 + 1;
  v3[v6 + 32] = (a1 % 0xA) | 0x30;
  *v1 = v3;
  return result;
}

char *sub_26863298C(char *result, uint64_t a2, char **a3)
{
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = a2 - result;
  if (a2 - result < 1)
  {
    return result;
  }

  v10 = a3;
  v11 = 0;
  v12 = 0;
  do
  {
    if (v12 == 3)
    {
      if (qword_28028BDC8 != -1)
      {
        swift_once();
      }

      v3 = off_28028D3D8;
      v12 = (v11 >> 18) & 0x3F;
      if (v12 >= *(off_28028D3D8 + 2))
      {
        goto LABEL_84;
      }

      v6 = off_28028D3D8 + 32;
      v13 = *(off_28028D3D8 + v12 + 32);
      v4 = *v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v10 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_2685B3F48(0, *(v4 + 2) + 1, 1, v4);
        *v10 = v4;
      }

      v10 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v10 >= v15 >> 1)
      {
        v4 = sub_2685B3F48((v15 > 1), v10 + 1, 1, v4);
        *a3 = v4;
      }

      *(v4 + 2) = v10 + 1;
      *(v10 + v4 + 32) = v13;
      v12 = (v11 >> 12) & 0x3F;
      if (v12 >= v3[2])
      {
        goto LABEL_85;
      }

      v4 = *a3;
      v16 = *(v6 + v12);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v4;
      if ((v17 & 1) == 0)
      {
        v4 = sub_2685B3F48(0, *(v4 + 2) + 1, 1, v4);
        *a3 = v4;
      }

      v10 = *(v4 + 2);
      v18 = *(v4 + 3);
      if (v10 >= v18 >> 1)
      {
        v4 = sub_2685B3F48((v18 > 1), v10 + 1, 1, v4);
        *a3 = v4;
      }

      *(v4 + 2) = v10 + 1;
      *(v10 + v4 + 32) = v16;
      v12 = (v11 >> 6) & 0x3F;
      if (v12 >= v3[2])
      {
        goto LABEL_86;
      }

      v4 = *a3;
      v7 = *(v6 + v12);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v4;
      if ((v19 & 1) == 0)
      {
        v4 = sub_2685B3F48(0, *(v4 + 2) + 1, 1, v4);
        *a3 = v4;
      }

      v10 = *(v4 + 2);
      v20 = *(v4 + 3);
      if (v10 >= v20 >> 1)
      {
        v4 = sub_2685B3F48((v20 > 1), v10 + 1, 1, v4);
        *a3 = v4;
      }

      *(v4 + 2) = v10 + 1;
      *(v10 + v4 + 32) = v7;
      v12 = v11 & 0x3F;
      if (v12 >= v3[2])
      {
        goto LABEL_87;
      }

      v10 = a3;
      v4 = *a3;
      LOBYTE(v3) = *(v6 + v12);
      result = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v4;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
        *a3 = result;
      }

      v22 = *(v4 + 2);
      v21 = *(v4 + 3);
      v5 = (v22 + 1);
      if (v22 >= v21 >> 1)
      {
        result = sub_2685B3F48((v21 > 1), v22 + 1, 1, v4);
        v4 = result;
        *a3 = result;
      }

      v12 = 0;
      v23 = 0;
      *(v4 + 2) = v5;
      v4[v22 + 32] = v3;
    }

    else
    {
      v23 = v11;
    }

    if (__OFADD__(v12++, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v25 = *v8++;
    v4 = v25;
    v11 = v25 | (v23 << 8);
    --v9;
  }

  while (v9);
  if (v12 == 1)
  {
    v26 = v11 << 16;
    if (qword_28028BDC8 == -1)
    {
LABEL_69:
      v5 = off_28028D3D8;
      v53 = (v26 >> 18) & 0x3F;
      if (v53 < *(off_28028D3D8 + 2))
      {
        v4 = off_28028D3D8 + 32;
        v11 = *(off_28028D3D8 + v53 + 32);
        v8 = *v10;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *v10 = v8;
        if ((v54 & 1) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_71;
      }

      __break(1u);
LABEL_92:
      swift_once();
      goto LABEL_35;
    }

LABEL_90:
    swift_once();
    goto LABEL_69;
  }

  if (v12 == 2)
  {
    v26 = v11 << 8;
    if (qword_28028BDC8 != -1)
    {
      swift_once();
    }

    v4 = off_28028D3D8;
    v42 = (v26 >> 18) & 0x3F;
    if (v42 < *(off_28028D3D8 + 2))
    {
      v5 = off_28028D3D8 + 32;
      v11 = *(off_28028D3D8 + v42 + 32);
      v8 = *v10;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      *v10 = v8;
      if ((v43 & 1) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_90;
  }

  if (v12 != 3)
  {
    return result;
  }

  v6 = v23 << 8;
  if (qword_28028BDC8 != -1)
  {
    goto LABEL_92;
  }

LABEL_35:
  v26 = off_28028D3D8;
  v27 = (v6 >> 18) & 0x3F;
  if (v27 < *(off_28028D3D8 + 2))
  {
    v5 = off_28028D3D8 + 32;
    v7 = *(off_28028D3D8 + v27 + 32);
    v8 = *v10;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *v10 = v8;
    if (v28)
    {
      goto LABEL_37;
    }

    goto LABEL_98;
  }

  __break(1u);
LABEL_94:
  v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
  *v10 = v8;
LABEL_56:
  v10 = *(v8 + 2);
  v44 = *(v8 + 3);
  if (v10 >= v44 >> 1)
  {
    v8 = sub_2685B3F48((v44 > 1), v10 + 1, 1, v8);
    *a3 = v8;
  }

  *(v8 + 2) = v10 + 1;
  *(v10 + v8 + 32) = v11;
  v45 = (v26 >> 12) & 0x3F;
  if (v45 < *(v4 + 2))
  {
    v30 = a3;
    v8 = *a3;
    LOBYTE(v11) = v5[v45];
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if (v46)
    {
      goto LABEL_60;
    }

    goto LABEL_100;
  }

  __break(1u);
LABEL_96:
  v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
  *v10 = v8;
LABEL_71:
  v10 = *(v8 + 2);
  v55 = *(v8 + 3);
  if (v10 >= v55 >> 1)
  {
    v8 = sub_2685B3F48((v55 > 1), v10 + 1, 1, v8);
    *a3 = v8;
  }

  *(v8 + 2) = v10 + 1;
  *(v10 + v8 + 32) = v11;
  v56 = (v26 >> 12) & 0x30;
  if (v56 < *(v5 + 2))
  {
    v48 = a3;
    v8 = *a3;
    LOBYTE(v26) = v4[v56];
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if (result)
    {
      goto LABEL_75;
    }

    goto LABEL_102;
  }

  __break(1u);
LABEL_98:
  v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
  *v10 = v8;
LABEL_37:
  v30 = *(v8 + 2);
  v29 = *(v8 + 3);
  if (v30 >= v29 >> 1)
  {
    v8 = sub_2685B3F48((v29 > 1), v30 + 1, 1, v8);
    *a3 = v8;
  }

  *(v8 + 2) = v30 + 1;
  *(v30 + v8 + 32) = v7;
  v31 = (v6 >> 12) & 0x3F;
  if (v31 >= *(v26 + 16))
  {
    __break(1u);
LABEL_100:
    v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
    *v30 = v8;
LABEL_60:
    v48 = *(v8 + 2);
    v47 = *(v8 + 3);
    if (v48 >= v47 >> 1)
    {
      v8 = sub_2685B3F48((v47 > 1), v48 + 1, 1, v8);
      *a3 = v8;
    }

    *(v8 + 2) = v48 + 1;
    *(v48 + v8 + 32) = v11;
    v49 = (v26 >> 6) & 0x3C;
    if (v49 < *(v4 + 2))
    {
      v36 = a3;
      v32 = *a3;
      LOBYTE(v26) = v5[v49];
      result = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v32;
      if (result)
      {
LABEL_64:
        v51 = *(v32 + 2);
        v50 = *(v32 + 3);
        if (v51 >= v50 >> 1)
        {
          result = sub_2685B3F48((v50 > 1), v51 + 1, 1, v32);
          v32 = result;
          *a3 = result;
        }

        *(v32 + 2) = v51 + 1;
        v32[v51 + 32] = v26;
        v10 = a3;
        v8 = *a3;
        v4 = *(*a3 + 2);
        v52 = *(*a3 + 3);
        v9 = (v4 + 1);
        if (v4 < v52 >> 1)
        {
          LOBYTE(v3) = 61;
          goto LABEL_81;
        }

        result = sub_2685B3F48((v52 > 1), (v4 + 1), 1, *a3);
        v8 = result;
        LOBYTE(v3) = 61;
LABEL_106:
        *v10 = v8;
        goto LABEL_81;
      }

LABEL_104:
      result = sub_2685B3F48(0, *(v32 + 2) + 1, 1, v32);
      v32 = result;
      *v36 = result;
      goto LABEL_64;
    }

    __break(1u);
LABEL_102:
    result = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
    v8 = result;
    *v48 = result;
LABEL_75:
    v58 = *(v8 + 2);
    v57 = *(v8 + 3);
    if (v58 >= v57 >> 1)
    {
      result = sub_2685B3F48((v57 > 1), v58 + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    *(v8 + 2) = v58 + 1;
    v8[v58 + 32] = v26;
    v10 = a3;
    v59 = *a3;
    v3 = *(*a3 + 2);
    v60 = *(*a3 + 3);
    if (v3 >= v60 >> 1)
    {
      result = sub_2685B3F48((v60 > 1), v3 + 1, 1, v59);
      v59 = result;
      *a3 = result;
    }

    *(v59 + 2) = v3 + 1;
    v61 = v3 + v59;
    LOBYTE(v3) = 61;
    v61[32] = 61;
    v8 = *a3;
LABEL_80:
    v4 = *(v8 + 2);
    v12 = *(v8 + 3);
    v9 = (v4 + 1);
    if (v4 < v12 >> 1)
    {
LABEL_81:
      *(v8 + 2) = v9;
      v4[v8 + 32] = v3;
      return result;
    }

LABEL_88:
    result = sub_2685B3F48((v12 > 1), v9, 1, v8);
    v8 = result;
    goto LABEL_106;
  }

  v32 = *a3;
  v33 = v5[v31];
  v34 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v32;
  if ((v34 & 1) == 0)
  {
    v32 = sub_2685B3F48(0, *(v32 + 2) + 1, 1, v32);
    *a3 = v32;
  }

  v36 = *(v32 + 2);
  v35 = *(v32 + 3);
  if (v36 >= v35 >> 1)
  {
    v32 = sub_2685B3F48((v35 > 1), v36 + 1, 1, v32);
    *a3 = v32;
  }

  *(v32 + 2) = v36 + 1;
  *(v36 + v32 + 32) = v33;
  v37 = (v11 >> 6) & 0x3F;
  if (v37 >= *(v26 + 16))
  {
    __break(1u);
    goto LABEL_104;
  }

  v38 = *a3;
  v39 = v5[v37];
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v38;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v38 + 2) + 1, 1, v38);
    v38 = result;
    *a3 = result;
  }

  v41 = *(v38 + 2);
  v40 = *(v38 + 3);
  if (v41 >= v40 >> 1)
  {
    result = sub_2685B3F48((v40 > 1), v41 + 1, 1, v38);
    v38 = result;
    *a3 = result;
  }

  *(v38 + 2) = v41 + 1;
  v38[v41 + 32] = v39;
  if ((v4 & 0x3F) < *(v26 + 16))
  {
    v10 = a3;
    v8 = *a3;
    LOBYTE(v3) = v5[v4 & 0x3F];
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    goto LABEL_80;
  }

  __break(1u);
  return result;
}

char *sub_268633388(uint64_t a1, unint64_t a2, char **a3)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return sub_26863298C(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_2686334B0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2686334B0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return sub_26863298C(v8, v4, a3);
}

char *sub_2686334B0(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  result = sub_268689764();
  v8 = result;
  if (result)
  {
    result = sub_268689794();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_268689784();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v8[v12];
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_26863298C(v8, v14, a4);
}

char *sub_268633554(char *a1, uint64_t a2)
{
  v5 = *v2;
  if ((*(v2 + 9) & 1) == 0)
  {
    v6 = *(v2 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
      *v2 = v5;
    }

    v9 = *(v5 + 2);
    v8 = *(v5 + 3);
    if (v9 >= v8 >> 1)
    {
      v5 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v5);
    }

    *(v5 + 2) = v9 + 1;
    v5[v9 + 32] = v6;
    *v2 = v5;
  }

  v10 = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((v10 & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v12 = *(v5 + 2);
  v11 = *(v5 + 3);
  if (v12 >= v11 >> 1)
  {
    v5 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v5);
  }

  *(v5 + 2) = v12 + 1;
  v5[v12 + 32] = 34;
  *v2 = v5;
  sub_2685B403C(a1, a2, &v5[v12]);
  v13 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v13;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v13 + 2) + 1, 1, v13);
    v13 = result;
    *v2 = result;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    result = sub_2685B3F48((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 2) = v17;
  v13[v16 + 32] = 34;
  *v2 = v13;
  v18 = *(v13 + 3);
  v19 = v16 + 2;
  if (v19 > (v18 >> 1))
  {
    result = sub_2685B3F48((v18 > 1), v19, 1, v13);
    v13 = result;
  }

  *(v13 + 2) = v19;
  v13[v17 + 32] = 58;
  *v2 = v13;
  *(v2 + 8) = 44;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_268633774(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_2686337BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26863381C(uint64_t a1, float a2)
{
  result = sub_2685B628C(a1, 5u);
  v5 = *v2;
  *v5 = a2;
  *v2 = v5 + 1;
  return result;
}

uint64_t sub_268633894(uint64_t a1, double a2)
{
  result = sub_2685B628C(a1, 1u);
  v5 = *v2;
  *v5 = a2;
  *v2 = v5 + 1;
  return result;
}

uint64_t sub_26863390C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 40))(a3, a4);
  sub_2685B628C(a2, 0);
  return sub_2685B630C(v5);
}

uint64_t sub_268633984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2685B628C(a2, 3u);
  result = (*(a4 + 72))(v4, &type metadata for BinaryEncodingVisitor, &off_28792D5D8, a3, a4);
  if (!v5)
  {
    return sub_2685B628C(a2, 4u);
  }

  return result;
}

uint64_t sub_268633A30(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (v4 >> 61)
  {
    __break(1u);
  }

  result = sub_2685B62D0(4 * v4);
  if (v4)
  {
    v6 = *v2;
    if (v4 >= 8 && v6 - a1 - 32 >= 0x20)
    {
      v7 = v4 & 0x1FFFFFFFFFFFFFF8;
      v8 = &v6[v4 & 0x1FFFFFFFFFFFFFF8];
      v12 = v6 + 4;
      v13 = (a1 + 48);
      v14 = v4 & 0x1FFFFFFFFFFFFFF8;
      do
      {
        v15 = *v13;
        *(v12 - 1) = *(v13 - 1);
        *v12 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 8;
      }

      while (v14);
      if (v4 == v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = 0;
      v8 = *v2;
    }

    v9 = v4 - v7;
    v10 = (a1 + 4 * v7 + 32);
    do
    {
      v11 = *v10++;
      *v8++ = v11;
      --v9;
    }

    while (v9);
LABEL_8:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_268633B38(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (v4 >> 60)
  {
    __break(1u);
  }

  result = sub_2685B62D0(8 * v4);
  if (v4)
  {
    v6 = *v2;
    if (v4 >= 6 && v6 - a1 - 32 >= 0x20)
    {
      v7 = v4 & 0xFFFFFFFFFFFFFFCLL;
      v8 = &v6[v4 & 0xFFFFFFFFFFFFFFCLL];
      v12 = v6 + 2;
      v13 = (a1 + 48);
      v14 = v4 & 0xFFFFFFFFFFFFFFCLL;
      do
      {
        v15 = *v13;
        *(v12 - 1) = *(v13 - 1);
        *v12 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 4;
      }

      while (v14);
      if (v4 == v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = 0;
      v8 = *v2;
    }

    v9 = v4 - v7;
    v10 = (a1 + 8 * v7 + 32);
    do
    {
      v11 = *v10++;
      *v8++ = v11;
      --v9;
    }

    while (v9);
LABEL_8:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_268633C40(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return sub_2685B62D0(0);
  }

  result = 0;
  v6 = 0;
  v7 = a1 + 32;
  do
  {
    v8 = *(v7 + 4 * v6);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 10;
    }

    else if (v8 > 0x7F)
    {
      if (v8 >= 0x4000)
      {
        if (v8 >> 28)
        {
          v10 = 5;
        }

        else
        {
          v10 = 4;
        }

        if (v8 >= 0x200000)
        {
          v9 = v10;
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }

    v11 = __OFADD__(result, v9);
    result += v9;
    if (v11)
    {
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (v4 != v6);
  result = sub_2685B62D0(result);
  v12 = 0;
  v13 = *v2;
  do
  {
    v15 = *(v7 + 4 * v12);
    if (v15 < 0x80)
    {
      LODWORD(v14) = *(v7 + 4 * v12);
    }

    else
    {
      do
      {
        *v13++ = v15 | 0x80;
        v14 = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }

    ++v12;
    *v13++ = v14;
  }

  while (v12 != v4);
  *v2 = v13;
  return result;
}

uint64_t sub_268633D50(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return sub_2685B62D0(0);
  }

  result = 0;
  v6 = 0;
  v7 = a1 + 32;
  do
  {
    v8 = (2 * *(v7 + 4 * v6)) ^ (*(v7 + 4 * v6) >> 31);
    if (v8 >= 0x80)
    {
      if (v8 >> 14)
      {
        if (v8 >= 0x200000)
        {
          if (v8 >> 28)
          {
            v9 = 5;
          }

          else
          {
            v9 = 4;
          }
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = __OFADD__(result, v9);
    result += v9;
    if (v10)
    {
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (v4 != v6);
  result = sub_2685B62D0(result);
  v11 = 0;
  v12 = *v2;
  do
  {
    v14 = (2 * *(v7 + 4 * v11)) ^ (*(v7 + 4 * v11) >> 63);
    if (v14 < 0x80)
    {
      LOBYTE(v13) = (2 * *(v7 + 4 * v11)) ^ (*(v7 + 4 * v11) >> 63);
    }

    else
    {
      do
      {
        *v12++ = v14 | 0x80;
        v13 = v14 >> 7;
        v15 = v14 >> 14;
        v14 >>= 7;
      }

      while (v15);
    }

    ++v11;
    *v12++ = v13;
  }

  while (v11 != v4);
  *v2 = v12;
  return result;
}

uint64_t sub_268633E68(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return sub_2685B62D0(0);
  }

  result = 0;
  v6 = 0;
  v7 = a1 + 32;
  do
  {
    v8 = (2 * *(v7 + 8 * v6)) ^ (*(v7 + 8 * v6) >> 63);
    if (v8 < 0x80)
    {
      v9 = 1;
      goto LABEL_18;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = 10;
      goto LABEL_18;
    }

    if (!(v8 >> 35))
    {
      if (v8 < 0x200000)
      {
        v9 = 2;
        if (v8 >= 0x4000)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v9 = 4;
LABEL_16:
      if (!(v8 >> 28))
      {
        goto LABEL_18;
      }

LABEL_17:
      ++v9;
      goto LABEL_18;
    }

    if (v8 >> 49)
    {
      v8 >>= 28;
      v9 = 8;
      goto LABEL_16;
    }

    v9 = 6;
    if (v8 >> 42)
    {
      goto LABEL_17;
    }

LABEL_18:
    v10 = __OFADD__(result, v9);
    result += v9;
    if (v10)
    {
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (v4 != v6);
  result = sub_2685B62D0(result);
  v11 = 0;
  v12 = *v2;
  do
  {
    v14 = (2 * *(v7 + 8 * v11)) ^ (*(v7 + 8 * v11) >> 63);
    if (v14 < 0x80)
    {
      LOBYTE(v13) = (2 * *(v7 + 8 * v11)) ^ (*(v7 + 8 * v11) >> 63);
    }

    else
    {
      do
      {
        *v12++ = v14 | 0x80;
        v13 = v14 >> 7;
        v15 = v14 >> 14;
        v14 >>= 7;
      }

      while (v15);
    }

    ++v11;
    *v12++ = v13;
  }

  while (v11 != v4);
  *v2 = v12;
  return result;
}

uint64_t sub_268633FB0(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return sub_2685B62D0(0);
  }

  result = 0;
  v6 = 0;
  v7 = a1 + 32;
  do
  {
    v8 = *(v7 + 4 * v6);
    if (v8 >= 0x80)
    {
      if (v8 >> 14)
      {
        if (v8 >> 28)
        {
          v10 = 5;
        }

        else
        {
          v10 = 4;
        }

        if (v8 >= 0x200000)
        {
          v9 = v10;
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }

    v11 = __OFADD__(result, v9);
    result += v9;
    if (v11)
    {
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (v4 != v6);
  result = sub_2685B62D0(result);
  v12 = 0;
  v13 = *v2;
  do
  {
    v15 = *(v7 + 4 * v12);
    if (v15 < 0x80)
    {
      LODWORD(v14) = *(v7 + 4 * v12);
    }

    else
    {
      do
      {
        *v13++ = v15 | 0x80;
        v14 = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }

    ++v12;
    *v13++ = v14;
  }

  while (v12 != v4);
  *v2 = v13;
  return result;
}

uint64_t sub_2686340B4(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return sub_2685B62D0(0);
  }

  result = 0;
  v6 = 0;
  v7 = a1 + 32;
  do
  {
    v8 = *(v7 + 8 * v6);
    if (v8 < 0x80)
    {
      v9 = 1;
      goto LABEL_18;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = 10;
      goto LABEL_18;
    }

    if (!(v8 >> 35))
    {
      if (v8 < 0x200000)
      {
        v9 = 2;
        if (v8 >= 0x4000)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v9 = 4;
LABEL_16:
      if (!(v8 >> 28))
      {
        goto LABEL_18;
      }

LABEL_17:
      ++v9;
      goto LABEL_18;
    }

    if (v8 >> 49)
    {
      v8 >>= 28;
      v9 = 8;
      goto LABEL_16;
    }

    v9 = 6;
    if (v8 >> 42)
    {
      goto LABEL_17;
    }

LABEL_18:
    v10 = __OFADD__(result, v9);
    result += v9;
    if (v10)
    {
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (v4 != v6);
  result = sub_2685B62D0(result);
  v11 = 0;
  v12 = *v2;
  do
  {
    v14 = *(v7 + 8 * v11);
    if (v14 < 0x80)
    {
      v13 = *(v7 + 8 * v11);
    }

    else
    {
      do
      {
        *v12++ = v14 | 0x80;
        v13 = v14 >> 7;
        v15 = v14 >> 14;
        v14 >>= 7;
      }

      while (v15);
    }

    ++v11;
    *v12++ = v13;
  }

  while (v11 != v4);
  *v2 = v12;
  return result;
}

uint64_t sub_2686341EC(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  result = sub_2685B62D0(v4);
  if (v4)
  {
    v6 = *v2;
    if (v4 >= 0x20 && &v6[-2] - a1 >= 0x20)
    {
      v7 = v4 & 0x7FFFFFFFFFFFFFE0;
      v8 = (v6 + (v4 & 0x7FFFFFFFFFFFFFE0));
      v12 = a1 + 63;
      v13.i64[0] = 0x101010101010101;
      v13.i64[1] = 0x101010101010101;
      v14 = v4 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v15 = *(v12 - 15);
        *v6 = vandq_s8(*(v12 - 31), v13);
        v6[1] = vandq_s8(v15, v13);
        v6 += 2;
        v12 += 32;
        v14 -= 32;
      }

      while (v14);
      if (v4 == v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = 0;
      v8 = *v2;
    }

    v9 = v4 - v7;
    v10 = (v7 + a1 + 32);
    do
    {
      v11 = *v10++;
      v8->i8[0] = v11;
      v8 = (v8 + 1);
      --v9;
    }

    while (v9);
LABEL_7:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_2686343B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v32 = v4;
  sub_2685B628C(v13, 2u);
  if (!sub_268689B74())
  {
    goto LABEL_23;
  }

  v14 = 0;
  v15 = 0;
  v34 = *(a4 + 40);
  v35 = a4 + 40;
  v36 = (v8 + 16);
  v33 = (v8 + 8);
  while (1)
  {
    v16 = sub_268689B64();
    sub_268689B24();
    if (v16)
    {
      v17 = a4;
      (*(v8 + 16))(v12, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, a3);
      a4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      goto LABEL_5;
    }

    result = sub_268689D14();
    if (v31 != 8)
    {
      goto LABEL_40;
    }

    v17 = a4;
    v38 = result;
    (*v36)(v12, &v38, a3);
    swift_unknownObjectRelease();
    a4 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

LABEL_5:
    v18 = v34(a3, v17);
    result = (*v33)(v12, a3);
    v20 = 4;
    if (v18 >> 28)
    {
      v20 = 5;
    }

    if (v18 < 0x200000)
    {
      v20 = 3;
    }

    if (v18 < 0x4000)
    {
      v20 = 2;
    }

    if (v18 <= 0x7F)
    {
      v20 = 1;
    }

    if ((v18 & 0x80000000) != 0)
    {
      v20 = 10;
    }

    v21 = __OFADD__(v15, v20);
    v15 += v20;
    if (v21)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    ++v14;
    v22 = a4 == sub_268689B74();
    a4 = v17;
    if (v22)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_23:
  v15 = 0;
LABEL_24:
  v23 = v32;
  sub_2685B62D0(v15);
  result = sub_268689B74();
  if (!result)
  {
    return result;
  }

  v24 = 0;
  v25 = *v23;
  v34 = *(a4 + 40);
  v35 = a4 + 40;
  v36 = (v8 + 16);
  while (2)
  {
    v27 = sub_268689B64();
    sub_268689B24();
    if (v27)
    {
      result = (*(v8 + 16))(v37, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24, a3);
      v21 = __OFADD__(v24++, 1);
      if (v21)
      {
        break;
      }

      goto LABEL_30;
    }

    result = sub_268689D14();
    if (v31 != 8)
    {
      goto LABEL_41;
    }

    v38 = result;
    (*v36)(v37, &v38, a3);
    result = swift_unknownObjectRelease();
    v21 = __OFADD__(v24++, 1);
    if (!v21)
    {
LABEL_30:
      v28 = v37;
      v29 = v34(a3, a4);
      (*(v8 + 8))(v28, a3);
      if (v29 < 0x80)
      {
        LOBYTE(v26) = v29;
      }

      else
      {
        do
        {
          *v25++ = v29 | 0x80;
          v26 = v29 >> 7;
          v30 = v29 >> 14;
          v29 >>= 7;
        }

        while (v30);
      }

      *v25++ = v26;
      result = sub_268689B74();
      if (v24 == result)
      {
        goto LABEL_37;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_37:
  *v32 = v25;
  return result;
}

uint64_t sub_2686347D8(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v90 = *(a6 + 8);
  v87 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v94 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = v64 - v15;
  v91 = *(a5 + 8);
  v89 = a3;
  v16 = swift_getAssociatedTypeWitness();
  v65 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v97 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v68 = v64 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v77 = sub_268689C74();
  v20 = *(v77 - 8);
  v21 = MEMORY[0x28223BE20](v77);
  v23 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v76 = v64 - v24;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v25 = sub_268689D84();
    v26 = 0;
    v27 = 0;
    v96 = 0;
    v80 = v25 | 0x8000000000000000;
  }

  else
  {
    v28 = -1 << *(a1 + 32);
    v27 = ~v28;
    v26 = a1 + 64;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v96 = v30 & *(a1 + 64);
    v80 = a1;
  }

  v85 = (v65 + 32);
  v84 = (v66 + 32);
  v74 = TupleTypeMetadata2 - 8;
  v64[1] = v27;
  v78 = (v27 + 64) >> 6;
  v64[3] = v65 + 16;
  v64[2] = v66 + 16;
  v73 = (v20 + 32);
  v70 = 8 * (a2 & 0x1FFFFFFF);
  v69 = v70 | 2;
  v88 = v91 + 48;
  v86 = v90 + 48;
  v71 = (v66 + 8);
  v72 = (v65 + 8);

  v32 = 0;
  v93 = v7;
  v33 = v94;
  v34 = v79;
  v67 = v23;
  for (i = v26; ; v26 = i)
  {
    v81 = v32;
    if ((v80 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_268689D94())
    {
      sub_268689E04();
      swift_unknownObjectRelease();
      sub_268689E04();
      swift_unknownObjectRelease();
      v37 = v81;
      v83 = v96;
LABEL_22:
      v7 = v93;
      v43 = *(TupleTypeMetadata2 + 48);
      v23 = v67;
      (*v85)();
      (*v84)(&v23[v43], v34, AssociatedTypeWitness);
      v44 = 0;
      v39 = v37;
      v33 = v94;
      goto LABEL_23;
    }

    v44 = 1;
    v39 = v81;
    v83 = v96;
    v7 = v93;
LABEL_23:
    v45 = TupleTypeMetadata2;
    v46 = *(TupleTypeMetadata2 - 8);
    (*(v46 + 56))(v23, v44, 1, TupleTypeMetadata2);
    v47 = v76;
    (*v73)(v76, v23, v77);
    if ((*(v46 + 48))(v47, 1, v45) == 1)
    {
      return sub_2686265DC(v80);
    }

    v48 = *(TupleTypeMetadata2 + 48);
    (*v85)(v97, v47, v16);
    (*v84)(v33, &v47[v48], AssociatedTypeWitness);
    v49 = *v7;
    if (v70 < 0x80)
    {
      LOBYTE(v52) = v69;
      v51 = v92;
    }

    else
    {
      v50 = v69;
      v51 = v92;
      do
      {
        *v49++ = v50 | 0x80;
        v52 = v50 >> 7;
        v53 = v50 >> 14;
        v50 >>= 7;
      }

      while (v53);
    }

    *v49 = v52;
    v54 = v49 + 1;
    *v93 = v54;
    v98 = 0;
    v55 = *(v91 + 48);
    v55(v97, 1, &v98, &type metadata for BinaryEncodingSizeVisitor);
    if (v51)
    {
      v92 = v51;
      v63 = v94;
      sub_2686265DC(v80);
      (*v71)(v63, AssociatedTypeWitness);
      return (*v72)(v97, v16);
    }

    v56 = v16;
    v57 = AssociatedTypeWitness;
    v58 = *(v90 + 48);
    v58(v94, 2, &v98, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
    v82 = v39;
    v59 = v98;
    if (v98 < 0x80)
    {
      LOBYTE(v60) = v98;
    }

    else
    {
      do
      {
        *v54++ = v59 | 0x80;
        v60 = v59 >> 7;
        v61 = v59 >> 14;
        v59 >>= 7;
      }

      while (v61);
    }

    *v54 = v60;
    v62 = v93;
    *v93 = v54 + 1;
    v7 = v62;
    (v55)(v97, 1, v62, &type metadata for BinaryEncodingVisitor, &off_28792D5D8);
    v33 = v94;
    v58(v94, 2, v7, &type metadata for BinaryEncodingVisitor, &off_28792D5D8);
    v92 = 0;
    AssociatedTypeWitness = v57;
    (*v71)(v33, v57);
    v16 = v56;
    result = (*v72)(v97, v56);
    v32 = v82;
    v96 = v83;
    v34 = v79;
  }

  if (v96)
  {
    v35 = v96;
    v36 = v96;
    v37 = v32;
LABEL_21:
    v96 = v36;
    v83 = (v35 - 1) & v35;
    v41 = __clz(__rbit64(v35)) | (v37 << 6);
    v42 = v80;
    (*(v65 + 16))(v68, *(v80 + 48) + *(v65 + 72) * v41, v16);
    (*(v66 + 16))(v34, *(v42 + 56) + *(v66 + 72) * v41, AssociatedTypeWitness);
    goto LABEL_22;
  }

  if (v78 <= v32 + 1)
  {
    v38 = v32 + 1;
  }

  else
  {
    v38 = v78;
  }

  v39 = v38 - 1;
  v40 = v32;
  while (1)
  {
    v37 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v37 >= v78)
    {
      v83 = 0;
      v44 = 1;
      goto LABEL_23;
    }

    v35 = *(v26 + 8 * v37);
    ++v40;
    if (v35)
    {
      v36 = v96;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26863514C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v90 = a6;
  v88 = a2;
  v65 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v93 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = v63 - v12;
  v91 = *(v13 + 8);
  v89 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v67 = v63 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v79 = sub_268689C74();
  v21 = MEMORY[0x28223BE20](v79);
  v23 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v26 = v63 - v25;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v27 = v24;
    v28 = sub_268689D84();
    v24 = v27;
    v29 = 0;
    v30 = 0;
    v82 = 0;
    v80 = v28 | 0x8000000000000000;
  }

  else
  {
    v31 = -1 << *(a1 + 32);
    v30 = ~v31;
    v29 = a1 + 64;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v82 = v33 & *(a1 + 64);
    v80 = a1;
  }

  v84 = (v64 + 32);
  v83 = (v65 + 32);
  v77 = TupleTypeMetadata2 - 8;
  v63[0] = v30;
  v34 = (v30 + 64) >> 6;
  v63[2] = v64 + 16;
  v63[1] = v65 + 16;
  v76 = (v24 + 32);
  v72 = 8 * (v88 & 0x1FFFFFFF);
  v71 = v72 | 2;
  v88 = v91 + 48;
  v70 = v90 + 40;
  v73 = (v65 + 8);
  v74 = (v64 + 8);

  v36 = 0;
  v75 = AssociatedTypeWitness;
  v68 = v18;
  v66 = v23;
  v87 = v26;
  v78 = v29;
  v37 = v82;
  while (1)
  {
    v81 = v36;
    v82 = v37;
    if ((v80 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_268689D94())
    {
      v48 = 1;
      v85 = v81;
      v86 = v82;
      goto LABEL_22;
    }

    sub_268689E04();
    swift_unknownObjectRelease();
    v40 = v69;
    sub_268689E04();
    swift_unknownObjectRelease();
    v39 = v81;
    v86 = v82;
LABEL_21:
    v47 = *(TupleTypeMetadata2 + 48);
    v23 = v66;
    (*v84)();
    (*v83)(&v23[v47], v40, a4);
    v48 = 0;
    v85 = v39;
    v18 = v68;
LABEL_22:
    v26 = v87;
LABEL_23:
    v49 = *(TupleTypeMetadata2 - 8);
    (*(v49 + 56))(v23, v48, 1, TupleTypeMetadata2);
    (*v76)(v26, v23, v79);
    if ((*(v49 + 48))(v26, 1, TupleTypeMetadata2) == 1)
    {
      return sub_2686265DC(v80);
    }

    v50 = *(TupleTypeMetadata2 + 48);
    (*v84)(v18, v26, AssociatedTypeWitness);
    (*v83)(v93, &v26[v50], a4);
    v51 = *v7;
    if (v72 < 0x80)
    {
      LOBYTE(v54) = v71;
      v53 = v92;
    }

    else
    {
      v52 = v71;
      v53 = v92;
      do
      {
        *v51++ = v52 | 0x80;
        v54 = v52 >> 7;
        v55 = v52 >> 14;
        v52 >>= 7;
      }

      while (v55);
    }

    *v51 = v54;
    v56 = v51 + 1;
    *v7 = v56;
    v94 = 0;
    v57 = *(v91 + 48);
    v57(v18, 1, &v94, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
    if (v53)
    {
      v92 = v53;
      sub_2686265DC(v80);
      (*v73)(v93, a4);
      return (*v74)(v18, v75);
    }

    sub_268623B8C(v93, 2, a4, v90);
    v58 = v94;
    if (v94 < 0x80)
    {
      LOBYTE(v59) = v94;
    }

    else
    {
      do
      {
        *v56++ = v58 | 0x80;
        v59 = v58 >> 7;
        v60 = v58 >> 14;
        v58 >>= 7;
      }

      while (v60);
    }

    *v56 = v59;
    *v7 = (v56 + 1);
    v57(v18, 1, v7, &type metadata for BinaryEncodingVisitor, &off_28792D5D8);
    v92 = 0;
    v61 = v93;
    v62 = (*(v90 + 40))(a4);
    sub_2685B628C(2, 0);
    sub_2685B630C(v62);
    (*v73)(v61, a4);
    AssociatedTypeWitness = v75;
    result = (*v74)(v18, v75);
    v36 = v85;
    v37 = v86;
    v26 = v87;
    v29 = v78;
  }

  if (v37)
  {
    v38 = v37;
    v39 = v36;
LABEL_20:
    v86 = (v38 - 1) & v38;
    v44 = __clz(__rbit64(v38)) | (v39 << 6);
    v45 = v80;
    (*(v64 + 16))(v67, *(v80 + 48) + *(v64 + 72) * v44, AssociatedTypeWitness);
    v46 = *(v45 + 56) + *(v65 + 72) * v44;
    v40 = v69;
    (*(v65 + 16))(v69, v46, a4);
    goto LABEL_21;
  }

  if (v34 <= v36 + 1)
  {
    v41 = v36 + 1;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 - 1;
  v43 = v36;
  while (1)
  {
    v39 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v39 >= v34)
    {
      v85 = v42;
      v86 = 0;
      v48 = 1;
      goto LABEL_23;
    }

    v38 = *(v29 + 8 * v39);
    ++v43;
    if (v38)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2686359BC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v85 = a6;
  v92 = a2;
  v64 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = v62 - v13;
  v89 = *(v14 + 8);
  v87 = v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v66 = v62 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v78 = sub_268689C74();
  v21 = MEMORY[0x28223BE20](v78);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v77 = v62 - v25;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v26 = v24;
    v27 = sub_268689D84();
    v24 = v26;
    v28 = 0;
    v29 = 0;
    v80 = 0;
    v30 = v27 | 0x8000000000000000;
  }

  else
  {
    v31 = -1 << *(a1 + 32);
    v29 = ~v31;
    v28 = a1 + 64;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v80 = v33 & *(a1 + 64);
    v30 = a1;
  }

  v84 = (v63 + 32);
  v83 = (v64 + 32);
  v74 = TupleTypeMetadata2 - 8;
  v62[0] = v29;
  v34 = (v29 + 64) >> 6;
  v62[2] = v63 + 16;
  v62[1] = v64 + 16;
  v73 = (v24 + 32);
  v70 = 8 * (v92 & 0x1FFFFFFF);
  v69 = v70 | 2;
  v86 = v89 + 48;
  v71 = (v64 + 8);
  v72 = (v63 + 8);

  v36 = 0;
  v88 = v12;
  v92 = v7;
  v68 = v18;
  v65 = v23;
  v75 = v30;
  v76 = v28;
  v37 = v80;
  v79 = 0;
  if ((v30 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (v37)
  {
    v38 = v37;
    v39 = v36;
LABEL_19:
    v82 = (v38 - 1) & v38;
    v44 = __clz(__rbit64(v38)) | (v39 << 6);
    (*(v63 + 16))(v66, *(v30 + 48) + *(v63 + 72) * v44, AssociatedTypeWitness);
    v40 = v67;
    (*(v64 + 16))(v67, *(v30 + 56) + *(v64 + 72) * v44, a4);
    goto LABEL_20;
  }

  if (v34 <= v36 + 1)
  {
    v41 = v36 + 1;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 - 1;
  v43 = v36;
  while (1)
  {
    v39 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      return result;
    }

    if (v39 >= v34)
    {
      break;
    }

    v38 = *(v28 + 8 * v39);
    ++v43;
    if (v38)
    {
      goto LABEL_19;
    }
  }

  v81 = v42;
  v82 = 0;
  v46 = 1;
  while (1)
  {
    v47 = *(TupleTypeMetadata2 - 8);
    (*(v47 + 56))(v23, v46, 1, TupleTypeMetadata2);
    v48 = v77;
    (*v73)(v77, v23, v78);
    if ((*(v47 + 48))(v48, 1, TupleTypeMetadata2) == 1)
    {
      return sub_2686265DC(v75);
    }

    v49 = *(TupleTypeMetadata2 + 48);
    (*v84)(v18, v48, AssociatedTypeWitness);
    (*v83)(v12, &v48[v49], a4);
    v50 = *v7;
    if (v70 < 0x80)
    {
      LOBYTE(v53) = v69;
      v52 = v90;
    }

    else
    {
      v51 = v69;
      v52 = v90;
      do
      {
        *v50++ = v51 | 0x80;
        v53 = v51 >> 7;
        v54 = v51 >> 14;
        v51 >>= 7;
      }

      while (v54);
    }

    *v50 = v53;
    v55 = v50 + 1;
    *v92 = v55;
    v93 = 0;
    v56 = *(v89 + 48);
    v56(v18, 1, &v93, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
    v28 = v76;
    if (v52)
    {
      v90 = v52;
      v61 = v88;
      sub_2686265DC(v75);
      (*v71)(v61, a4);
      return (*v72)(v18, AssociatedTypeWitness);
    }

    sub_268624240(v88, 2, a4, v85);
    v57 = v93;
    if (v93 < 0x80)
    {
      LOBYTE(v58) = v93;
    }

    else
    {
      do
      {
        *v55++ = v57 | 0x80;
        v58 = v57 >> 7;
        v59 = v57 >> 14;
        v57 >>= 7;
      }

      while (v59);
    }

    *v55 = v58;
    v60 = v92;
    *v92 = v55 + 1;
    v7 = v60;
    v56(v18, 1, v60, &type metadata for BinaryEncodingVisitor, &off_28792D5D8);
    v12 = v88;
    sub_2685B61CC(v88, 2, a4, v85);
    v90 = 0;
    (*v71)(v12, a4);
    result = (*v72)(v18, AssociatedTypeWitness);
    v36 = v81;
    v37 = v82;
    v30 = v75;
    v79 = v81;
    v80 = v82;
    if ((v75 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    if (sub_268689D94())
    {
      sub_268689E04();
      swift_unknownObjectRelease();
      v40 = v67;
      sub_268689E04();
      swift_unknownObjectRelease();
      v39 = v79;
      v82 = v80;
LABEL_20:
      v45 = *(TupleTypeMetadata2 + 48);
      v23 = v65;
      (*v84)();
      (*v83)(&v23[v45], v40, a4);
      v46 = 0;
      v81 = v39;
      v7 = v92;
      v18 = v68;
      continue;
    }

    v46 = 1;
    v81 = v79;
    v82 = v80;
    v7 = v92;
  }
}

uint64_t sub_268636254(int a1, uint64_t a2)
{
  v2 = (2 * a1) ^ (a1 >> 63);
  sub_2685B628C(a2, 0);
  return sub_2685B630C(v2);
}

uint64_t sub_268636298(uint64_t a1, uint64_t a2)
{
  v2 = (2 * a1) ^ (a1 >> 63);
  sub_2685B628C(a2, 0);
  return sub_2685B630C(v2);
}

uint64_t sub_2686362D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_2685B628C(a3, 2u);
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      result = 0;
      goto LABEL_11;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    result = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    result = BYTE6(a2);
LABEL_11:
    sub_2685B62D0(result);
    return sub_2685CFF98(a1, a2);
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    result = HIDWORD(a1) - a1;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_26863647C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v7 = *v3;
  result = sub_2685DC814(&v7, a2, a3, v5);
  if (!v4)
  {
    *v3 = v7;
  }

  return result;
}

uint64_t sub_2686364E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  *v8 = 4107;
  *v4 = v8 + 1;
  sub_2685B62D0(a2);
  v9 = *v4;
  *v9 = 26;
  *v4 = v9 + 1;
  result = sub_2685B59A8(a3, a4);
  if (!v5)
  {
    sub_2685B62D0(result);
    v12 = *v4;
    result = (*(a4 + 72))(&v12, &type metadata for BinaryEncodingVisitor, &off_28792D5D8, a3, a4);
    v11 = v12;
    *v12 = 12;
    *v4 = v11 + 1;
  }

  return result;
}

unint64_t sub_2686366F0(uint64_t a1)
{
  if (a1 % 86400 >= 0)
  {
    v1 = a1 % 86400;
  }

  else
  {
    v1 = (a1 % 86400) + 86400;
  }

  v2 = sub_268649914(v1, 60) % 60;
  if (v2 >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = (v2 + 60);
  }

  return sub_268649914(v1, 3600) | (v3 << 32);
}

uint64_t sub_2686367AC(uint64_t a1)
{
  v1 = __OFADD__(a1, 0x3118A41200);
  result = a1 + 0x3118A41200;
  if (v1)
  {
    __break(1u);
    goto LABEL_31;
  }

  result = sub_268649940(result, 86400);
  v3 = result + 1401;
  if (__OFADD__(result, 1401))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((result - 0x2000000000000000) >> 62 != 3)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v1 = __OFADD__(274277, 4 * result);
  result = 4 * result + 274277;
  if (v1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v4 = sub_268649940(result, 146097);
  v5 = (v4 * 3) >> 64;
  result = 3 * v4;
  if (v5 != result >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_268649940(result, 4);
  v6 = v3 + result;
  if (__OFADD__(v3, result))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v1 = __OFSUB__(v6, 38);
  v7 = v6 - 38;
  if (v1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v7 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = (4 * v7) | 3;
  if (v8 % 1461 >= 0)
  {
    v9 = v8 % 1461;
  }

  else
  {
    v9 = v8 % 1461 + 1461;
  }

  result = sub_268649940(v9, 4);
  v10 = 5 * result;
  if ((result * 5) >> 64 != (5 * result) >> 63)
  {
    goto LABEL_38;
  }

  v11 = v10 + 2;
  v12 = ((v10 + 2) * 0x358AE0358AE0358BLL) >> 64;
  v13 = v11 - 153 * ((v12 >> 5) + (v12 >> 63));
  if (v13 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 153;
  }

  result = sub_268649940(v14, 5);
  v15 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_39;
  }

  result = sub_268649940(v11, 153);
  if (__OFADD__(result, 2))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v16 = (result + 2) % 12;
  if (v16 >= 0)
  {
    v17 = (result + 2) % 12;
  }

  else
  {
    v17 = v16 + 12;
  }

  result = sub_268649940(v8, 1461);
  v18 = result - 4716;
  if (__OFADD__(result, -4716))
  {
    goto LABEL_41;
  }

  result = sub_268649940(13 - v17, 12);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v15 < 0xFFFFFFFF80000000 || v19 < 0xFFFFFFFF80000000)
  {
    goto LABEL_44;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    return ((v18 + result) | (v17 << 32)) + 0x100000000;
  }

LABEL_45:
  __break(1u);
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_268636A0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_268636A54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_268636AB8()
{
  result = sub_2685B2EC4(&unk_287927AE0);
  qword_28028D3E8 = result;
  return result;
}

uint64_t sub_268636AE0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 - result >= 1)
    {
      v16 = v2;
      v17 = v3;
      v5 = 0;
      memset(v4, 0, sizeof(v4));
      v7 = 1;
      memset(v8, 0, sizeof(v8));
      v9 = 0;
      v10 = 1;
      v14 = xmmword_26868BD70;
      v15 = xmmword_26868BD70;
      v6[0] = result;
      v6[1] = a2 - result;
      v6[2] = result;
      v6[3] = 0;
      sub_2685B2B0C(v4, v8 + 8);
      v11 = 100;
      v12 = 0;
      v13 = 100;
      sub_26863BAB0(v6);
      return sub_2685B4BE4(v6);
    }
  }

  return result;
}

uint64_t sub_268636B98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, char **a5)
{
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = a2 - result;
  if (a2 - result < 1)
  {
    return result;
  }

  v63 = a3;
  sub_2685B42A0(a3, v43);
  v10 = v48;
  v11 = v49;
  sub_2685B2978(&v45[8], v39);
  v54 = 1;
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  v57 = 1;
  v61 = xmmword_26868BD70;
  v62 = xmmword_26868BD70;
  v53[0] = v6;
  v53[1] = v7;
  v53[2] = v6;
  v53[3] = 0;
  sub_2685B2B0C(v39, &v55[8]);
  v58 = v10;
  v59 = v11;
  v60 = v10;
  v12 = v50;
  v13 = sub_2685B4BE4(v43);
  v60 = v12;
  do
  {
    sub_2685B36C0(v13);
    if (v5)
    {
      sub_2685B403C(": ", 2, v15);
      v30 = *a4;
      v29 = a4[1];
      sub_2685BA80C(v30, v29);
      sub_2686637F4(v30, v29);
      sub_2685B593C(v30, v29);
      v31 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_2685B3F48(0, *(v31 + 2) + 1, 1, v31);
        *a5 = v31;
      }

      v34 = *(v31 + 2);
      v33 = *(v31 + 3);
      if (v34 >= v33 >> 1)
      {
        *a5 = sub_2685B3F48((v33 > 1), v34 + 1, 1, v31);
      }

      MEMORY[0x26D61DC90](v5);
      v35 = *a5;
      *(v35 + 2) = v34 + 1;
      v35[v34 + 32] = 10;
      return sub_2685B4BE4(v53);
    }
  }

  while ((v14 & 1) == 0);
  v16 = *a4;
  v17 = a4[1];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    result = v63;
    if (v18 == 2)
    {
      v22 = v16 + 16;
      v20 = *(v16 + 16);
      v21 = *(v22 + 8);
      v19 = v21 - v20;
      if (__OFSUB__(v21, v20))
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_16:
    sub_2685B42A0(result, v39);
    v25 = v40[7];
    v26 = v41;
    sub_2685B2978(v40, v38);
    v44 = 1;
    memset(v45, 0, sizeof(v45));
    v46 = 0;
    v47 = 1;
    v51 = xmmword_26868BD70;
    v52 = xmmword_26868BD70;
    v43[0] = v6;
    v43[1] = v19;
    v43[2] = v6;
    v43[3] = 0;
    sub_2685B2B0C(v38, &v45[8]);
    v48 = v25;
    v49 = v26;
    v50 = v25;
    v27 = v42;
    sub_2685B4BE4(v39);
    v50 = v27;
    sub_2686636FC(v28);
    sub_26863BAB0(v43);
    sub_2685B4D0C(*(a5[1] + 2) - 1);
    sub_2685B4D0C(*(a5[1] + 2) - 1);

    sub_2685B3560(v36);
    sub_2685B403C("}\n", 2, v37);
    sub_2685B4BE4(v43);
    return sub_2685B4BE4(v53);
  }

  result = v63;
  if (!v18)
  {
    v19 = BYTE6(v17);
    goto LABEL_16;
  }

  v23 = __OFSUB__(HIDWORD(v16), v16);
  v24 = HIDWORD(v16) - v16;
  if (!v23)
  {
    v19 = v24;
    goto LABEL_16;
  }

LABEL_25:
  __break(1u);
  return result;
}

char *sub_268636ED8(unint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  if ((a1 & 0x8000000000000000) != 0)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
      *v2 = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v5[v8 + 32] = 45;
    *v2 = v5;
    a1 = -a1;
  }

  sub_268663B88(a1);
  v9 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v9;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
    v9 = result;
    *v2 = result;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 2) = v12 + 1;
  v9[v12 + 32] = 10;
  *v2 = v9;
  return result;
}

char *sub_268637030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v8);
  sub_268663A4C(a1, a3, a4);
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v9;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
    v9 = result;
    *v4 = result;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 2) = v12 + 1;
  v9[v12 + 32] = 10;
  *v4 = v9;
  return result;
}

uint64_t sub_26863710C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2685B301C(v13);
  sub_2686636FC(v14);
  v48[3] = a3;
  v48[4] = a4;
  v33 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  v16 = *(v10 + 16);
  v36 = a1;
  v16(boxed_opaque_existential_1, a1, a3);
  v17 = *v4;
  v18 = v6[1];
  v38 = *(v6 + 64);
  sub_2685B1724(v48, &v40);
  v54 = v17;

  v39 = v18;

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v45, &v49);
    __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
    swift_getDynamicType();
    (*(v51 + 8))(&v40);
    __swift_destroy_boxed_opaque_existential_1(&v49);
    v34 = v41;
    v20 = v40;
    v21 = &v51 + 8;
  }

  else
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    v35 = 0u;
    sub_2685B2E64(&v45, &qword_28028D3C8, &unk_2686902F0);
    v20 = 0uLL;
    v21 = &v50 + 8;
  }

  *(v21 - 16) = v20;
  v37 = v5;
  sub_2685B1724(v48, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v19 = *(&v46 + 1);
    v22 = v47;
    __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
    (*(v22 + 16))(&v40, v19, v22);
    v23 = v40;
    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  else
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    sub_2685B2E64(&v45, &qword_28028D3F8, &unk_268690680);
    v23 = 0;
  }

  v24 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v49 = v54;
  *(&v49 + 1) = v39;
  v50 = v35;
  v51 = v34;
  *&v52 = v24;
  *(&v52 + 1) = v23;
  v53 = v38;
  v16(v12, v36, a3);
  if (!swift_dynamicCast())
  {
    v27 = v37;
    (*(v33 + 72))(&v49, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a3);
    v26 = v27;
    if (!v27)
    {
LABEL_22:
      v28 = v49;

      *v6 = v28;
      sub_2685B4D0C(*(*(&v28 + 1) + 16) - 1);
      sub_2685B4D0C(*(v6[1] + 16) - 1);

      sub_2685B3560(v29);
      sub_2685B403C("}\n", 2, v30);
      v42 = v51;
      v43 = v52;
      v44 = v53;
      v41 = v50;
      v40 = v49;
      return sub_2685B4DEC(&v40);
    }

    swift_unexpectedError();
    __break(1u);
LABEL_15:
    if (v25 != 2 || *(v12 + 16) == *(v12 + 24))
    {
      goto LABEL_21;
    }

LABEL_19:
    if (v38)
    {
      goto LABEL_20;
    }

LABEL_21:
    sub_2685B593C(v12, v19);

    goto LABEL_22;
  }

  v19 = *(&v40 + 1);
  v12 = v40;
  sub_26866A568(&v49);
  v25 = v19 >> 62;
  v26 = v37;
  if ((v19 >> 62) > 1)
  {
    goto LABEL_15;
  }

  if (v25)
  {
    if (v12 == v12 >> 32)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if ((v19 & 0xFF000000000000) == 0 || !v38)
  {
    goto LABEL_21;
  }

LABEL_20:
  sub_26863B108(v12, v19, &v49);
  if (!v26)
  {
    goto LABEL_21;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char *sub_26863768C(char *result, uint64_t a2)
{
  v3 = *(result + 2);
  if (v3)
  {
    for (i = (result + 32); ; ++i)
    {
      v6 = *i;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v7);
      if ((~LODWORD(v6) & 0x7F800000) == 0)
      {
        break;
      }

      v9 = sub_268689BE4();
      sub_2686689EC(v9, v10);
LABEL_12:
      v12 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v12;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v12 + 2) + 1, 1, v12);
        v12 = result;
        *v2 = result;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 2) = v14 + 1;
      v12[v14 + 32] = 10;
      *v2 = v12;
      if (!--v3)
      {
        return result;
      }
    }

    if ((LODWORD(v6) & 0x7FFFFF) != 0)
    {
      v8 = "nan";
    }

    else
    {
      if (v6 < 0.0)
      {
        v8 = "-inf";
        v11 = 4;
LABEL_11:
        sub_2685B403C(v8, v11, LODWORD(v6));
        goto LABEL_12;
      }

      v8 = "inf";
    }

    v11 = 3;
    goto LABEL_11;
  }

  return result;
}

char *sub_2686377E4(char *result, uint64_t a2)
{
  v3 = *(result + 2);
  if (v3)
  {
    for (i = (result + 32); ; ++i)
    {
      v6 = *i;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v7);
      if ((~*&v6 & 0x7FF0000000000000) == 0)
      {
        break;
      }

      v9 = sub_268689BD4();
      sub_2686689EC(v9, v10);
LABEL_12:
      v12 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v12;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v12 + 2) + 1, 1, v12);
        v12 = result;
        *v2 = result;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 2) = v14 + 1;
      v12[v14 + 32] = 10;
      *v2 = v12;
      if (!--v3)
      {
        return result;
      }
    }

    if ((*&v6 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v8 = "nan";
    }

    else
    {
      if (v6 < 0.0)
      {
        v8 = "-inf";
        v11 = 4;
LABEL_11:
        sub_2685B403C(v8, v11, *&v6);
        goto LABEL_12;
      }

      v8 = "inf";
    }

    v11 = 3;
    goto LABEL_11;
  }

  return result;
}

char *sub_26863793C(char *result, uint64_t a2)
{
  v3 = *(result + 2);
  if (v3)
  {
    v5 = result + 32;
    do
    {
      v6 = *v5;
      v5 += 4;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v7);
      sub_268663B88(v6);
      v8 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v8;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
        *v2 = result;
      }

      v10 = *(v8 + 2);
      v9 = *(v8 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_2685B3F48((v9 > 1), v10 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v10 + 1;
      v8[v10 + 32] = 10;
      *v2 = v8;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *sub_268637A40(char *result, uint64_t a2)
{
  v3 = *(result + 2);
  if (v3)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v7);
      sub_268663B88(v6);
      v8 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v8;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
        *v2 = result;
      }

      v10 = *(v8 + 2);
      v9 = *(v8 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_2685B3F48((v9 > 1), v10 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v10 + 1;
      v8[v10 + 32] = 10;
      *v2 = v8;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *sub_268637B44(char *result, uint64_t a2)
{
  v3 = *(result + 2);
  if (v3)
  {
    v5 = result + 32;
    do
    {
      v7 = *v5;
      v5 += 4;
      v6 = v7;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v8);
      if ((v7 & 0x80000000) != 0)
      {
        v9 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
          *v2 = v9;
        }

        v12 = *(v9 + 2);
        v11 = *(v9 + 3);
        if (v12 >= v11 >> 1)
        {
          v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
        }

        *(v9 + 2) = v12 + 1;
        v9[v12 + 32] = 45;
        *v2 = v9;
        v6 = -v6;
      }

      sub_268663B88(v6);
      v13 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v13;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v13 + 2) + 1, 1, v13);
        v13 = result;
        *v2 = result;
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_2685B3F48((v14 > 1), v15 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 2) = v15 + 1;
      v13[v15 + 32] = 10;
      *v2 = v13;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *sub_268637CD0(char *result, uint64_t a2)
{
  v3 = *(result + 2);
  if (v3)
  {
    v5 = result + 32;
    do
    {
      v7 = *v5;
      v5 += 8;
      v6 = v7;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v8);
      if ((v7 & 0x8000000000000000) != 0)
      {
        v9 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
          *v2 = v9;
        }

        v12 = *(v9 + 2);
        v11 = *(v9 + 3);
        if (v12 >= v11 >> 1)
        {
          v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
        }

        *(v9 + 2) = v12 + 1;
        v9[v12 + 32] = 45;
        *v2 = v9;
        v6 = -v6;
      }

      sub_268663B88(v6);
      v13 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v13;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v13 + 2) + 1, 1, v13);
        v13 = result;
        *v2 = result;
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_2685B3F48((v14 > 1), v15 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 2) = v15 + 1;
      v13[v15 + 32] = 10;
      *v2 = v13;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *sub_268637E5C(char *result, uint64_t a2)
{
  v3 = *(result + 2);
  if (v3)
  {
    v5 = result + 32;
    do
    {
      v6 = *v5;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v7);
      if (v6)
      {
        v8 = "true";
      }

      else
      {
        v8 = "false";
      }

      if (v6)
      {
        v9 = 4;
      }

      else
      {
        v9 = 5;
      }

      sub_2685B403C(v8, v9, 4);
      v10 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v10;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
        *v2 = result;
      }

      v12 = *(v10 + 2);
      v11 = *(v10 + 3);
      if (v12 >= v11 >> 1)
      {
        result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v12 + 1;
      v10[v12 + 32] = 10;
      *v2 = v10;
      ++v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_268637F7C(uint64_t result, uint64_t a2)
{
  v4 = v3;
  v39[2] = *MEMORY[0x277D85DE8];
  v5 = *(result + 16);
  if (v5)
  {
    v6 = v2;
    v7 = (result + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      sub_2685BA80C(v8, *v7);
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v10);
      v11 = *v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v6 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_2685B3F48(0, *(v11 + 2) + 1, 1, v11);
        *v6 = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_2685B3F48((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v11[v14 + 32] = 34;
      *v6 = v11;
      v15 = (v9 >> 62);
      if ((v9 >> 62) > 1)
      {
        if (v15 == 2)
        {
          v37 = v4;
          v19 = *(v8 + 16);
          v18 = *(v8 + 24);
          v20 = sub_268689764();
          if (v20)
          {
            v21 = sub_268689794();
            if (__OFSUB__(v19, v21))
            {
              goto LABEL_41;
            }

            v20 += v19 - v21;
          }

          v22 = __OFSUB__(v18, v19);
          v23 = v18 - v19;
          if (v22)
          {
            goto LABEL_40;
          }

          v24 = sub_268689784();
          if (v24 >= v23)
          {
            v25 = v23;
          }

          else
          {
            v25 = v24;
          }

LABEL_25:
          v15 = (v25 + v20);
          if (v20)
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = v20;
          v28 = v6;
          v29 = v37;
          goto LABEL_31;
        }

        memset(v39, 0, 14);
        v17 = v39;
        v16 = v39;
      }

      else
      {
        if (v15)
        {
          v37 = v4;
          if (v8 >> 32 < v8)
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
          }

          v20 = sub_268689764();
          if (v20)
          {
            v26 = sub_268689794();
            if (__OFSUB__(v8, v26))
            {
              goto LABEL_42;
            }

            v20 += v8 - v26;
          }

          v27 = sub_268689784();
          if (v27 >= (v8 >> 32) - v8)
          {
            v25 = (v8 >> 32) - v8;
          }

          else
          {
            v25 = v27;
          }

          goto LABEL_25;
        }

        v39[0] = v8;
        LOWORD(v39[1]) = v9;
        BYTE2(v39[1]) = BYTE2(v9);
        BYTE3(v39[1]) = BYTE3(v9);
        BYTE4(v39[1]) = BYTE4(v9);
        BYTE5(v39[1]) = BYTE5(v9);
        v15 = v39;
        v16 = v39 + BYTE6(v9);
        v17 = v39;
      }

      v28 = v6;
      v29 = v4;
LABEL_31:
      sub_268663EDC(v17, v16, v28, v15);
      v4 = v29;
      v30 = *v6;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      *v6 = v30;
      if ((v31 & 1) == 0)
      {
        v30 = sub_2685B3F48(0, *(v30 + 2) + 1, 1, v30);
        *v6 = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v30 = sub_2685B3F48((v32 > 1), v33 + 1, 1, v30);
      }

      *(v30 + 2) = v34;
      v30[v33 + 32] = 34;
      *v6 = v30;
      v35 = *(v30 + 3);
      v36 = v33 + 2;
      if (v36 > (v35 >> 1))
      {
        v30 = sub_2685B3F48((v35 > 1), v36, 1, v30);
      }

      v7 += 2;
      result = sub_2685B593C(v8, v9);
      *(v30 + 2) = v36;
      v30[v34 + 32] = 10;
      *v6 = v30;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2686382FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v22 = a4;
  v23 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = v7;
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268689B74();
  if (!result)
  {
    return result;
  }

  v10 = 0;
  v19 = (v23 + 8);
  v20 = (v23 + 16);
  while (1)
  {
    v11 = sub_268689B64();
    sub_268689B24();
    if ((v11 & 1) == 0)
    {
      break;
    }

    result = (*(v23 + 16))(v8, a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v10, a3);
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_16;
    }

LABEL_5:
    sub_2685B301C(v21);
    sub_2685B403C(": ", 2, v13);
    sub_268663A4C(v8, a3, v22);
    v14 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_2685B3F48(0, *(v14 + 2) + 1, 1, v14);
      *v4 = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_2685B3F48((v16 > 1), v17 + 1, 1, v14);
      *v4 = v14;
    }

    (*v19)(v8, a3);
    *(v14 + 2) = v17 + 1;
    v14[v17 + 32] = 10;
    *v4 = v14;
    result = sub_268689B74();
    ++v10;
    if (v12 == result)
    {
      return result;
    }
  }

  result = sub_268689D14();
  if (v18 != 8)
  {
    goto LABEL_17;
  }

  v24 = result;
  (*v20)(v8, &v24, a3);
  result = swift_unknownObjectRelease();
  v12 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_5;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_268638584(uint64_t a1, uint64_t a2, void (*a3)(char *, void *), uint64_t a4, uint64_t a5)
{
  v43 = a3;
  v44 = a4;
  v8 = *(a5 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v10;
  MEMORY[0x28223BE20](v9);
  v45 = &v38 - v12;
  sub_2685B301C(v13);
  sub_2685B403C(": ", 2, v14);
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v5;
  *v5 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_25:
    v15 = sub_2685B3F48(0, *(v15 + 2) + 1, 1, v15);
    *v46 = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_2685B3F48((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v15[v18 + 32] = 91;
  *v46 = v15;
  if (sub_268689B74())
  {
    v19 = sub_268689B64();
    sub_268689B24();
    v42 = (v8 + 16);
    if (v19)
    {
      v20 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v21 = v45;
      v41 = *(v8 + 16);
      v41(v45, v20, a5);
    }

    else
    {
      result = sub_268689D14();
      if (v38 != 8)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v47 = result;
      v37 = v45;
      v41 = *v42;
      v41(v45, &v47, a5);
      v21 = v37;
      swift_unknownObjectRelease();
    }

    v39 = *(v8 + 32);
    v40 = v8 + 32;
    v39(v11, v21, a5);
    v43(v11, v46);
    v15 = *(v8 + 8);
    (v15)(v11, a5);
    if (sub_268689B74() != 1)
    {
      v29 = 1;
      do
      {
        v30 = sub_268689B64();
        sub_268689B24();
        if (v30)
        {
          v31 = v8;
          v32 = v45;
          v41(v45, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v29, a5);
          v8 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          result = sub_268689D14();
          if (v38 != 8)
          {
            goto LABEL_28;
          }

          v31 = v8;
          v47 = result;
          v36 = v45;
          v41(v45, &v47, a5);
          v32 = v36;
          swift_unknownObjectRelease();
          v8 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        v39(v11, v32, a5);
        v33 = v46;
        sub_2685B403C(", ", 2, v34);
        v43(v11, v33);
        (v15)(v11, a5);
        ++v29;
        v35 = v8 == sub_268689B74();
        v8 = v31;
      }

      while (!v35);
    }
  }

  v22 = v46;
  v23 = *v46;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v23 + 16) + 1, 1, v23);
    v23 = result;
    *v46 = result;
  }

  v26 = *(v23 + 16);
  v25 = *(v23 + 24);
  v27 = v26 + 1;
  if (v26 >= v25 >> 1)
  {
    result = sub_2685B3F48((v25 > 1), v26 + 1, 1, v23);
    v23 = result;
  }

  *(v23 + 16) = v27;
  *(v23 + v26 + 32) = 93;
  *v46 = v23;
  v28 = *(v23 + 24);
  if ((v26 + 2) > (v28 >> 1))
  {
    result = sub_2685B3F48((v28 > 1), v26 + 2, 1, v23);
    v23 = result;
  }

  *(v23 + 16) = v26 + 2;
  *(v23 + v27 + 32) = 10;
  *v46 = v23;
  return result;
}

char *sub_268638A64(uint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 32);
    if ((~LODWORD(v10) & 0x7F800000) != 0)
    {
      v12 = sub_268689BE4();
      sub_2686689EC(v12, v13);
      v15 = v9 - 1;
      if (v9 == 1)
      {
LABEL_16:
        v5 = *v2;
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if ((LODWORD(v10) & 0x7FFFFF) != 0)
    {
      v11 = "nan";
    }

    else
    {
      if (v10 < 0.0)
      {
        v11 = "-inf";
        v16 = 4;
        goto LABEL_15;
      }

      v11 = "inf";
    }

    v16 = 3;
LABEL_15:
    sub_2685B403C(v11, v16, LODWORD(v10));
    v15 = v9 - 1;
    if (v9 == 1)
    {
      goto LABEL_16;
    }

LABEL_24:
    v23 = (a1 + 36);
    while (1)
    {
      v26 = *v23;
      sub_2685B403C(", ", 2, v14);
      if ((~LODWORD(v26) & 0x7F800000) != 0)
      {
        v24 = sub_268689BE4();
        sub_2686689EC(v24, v25);
      }

      else
      {
        if ((LODWORD(v26) & 0x7FFFFF) != 0)
        {
          v27 = "nan";
LABEL_33:
          sub_2685B403C(v27, 3, LODWORD(v26));
          goto LABEL_26;
        }

        if (v26 >= 0.0)
        {
          v27 = "inf";
          goto LABEL_33;
        }

        sub_2685B403C("-inf", 4, LODWORD(v26));
      }

LABEL_26:
      ++v23;
      if (!--v15)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v19 = *(v5 + 2);
  v18 = *(v5 + 3);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    result = sub_2685B3F48((v18 > 1), v19 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v20;
  v5[v19 + 32] = 93;
  *v2 = v5;
  v21 = *(v5 + 3);
  v22 = v19 + 2;
  if (v22 > (v21 >> 1))
  {
    result = sub_2685B3F48((v21 > 1), v22, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v22;
  v5[v20 + 32] = 10;
  *v2 = v5;
  return result;
}

char *sub_268638D0C(uint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 32);
    if ((~v10 & 0x7FF0000000000000) != 0)
    {
      v12 = sub_268689BD4();
      sub_2686689EC(v12, v13);
      v15 = v9 - 1;
      if (v9 == 1)
      {
LABEL_16:
        v5 = *v2;
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if ((v10 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v11 = "nan";
    }

    else
    {
      if (*(a1 + 32) < 0.0)
      {
        v11 = "-inf";
        v16 = 4;
        goto LABEL_15;
      }

      v11 = "inf";
    }

    v16 = 3;
LABEL_15:
    sub_2685B403C(v11, v16, v10);
    v15 = v9 - 1;
    if (v9 == 1)
    {
      goto LABEL_16;
    }

LABEL_24:
    v23 = (a1 + 40);
    while (1)
    {
      v26 = *v23;
      sub_2685B403C(", ", 2, v14);
      if ((~*&v26 & 0x7FF0000000000000) != 0)
      {
        v24 = sub_268689BD4();
        sub_2686689EC(v24, v25);
      }

      else
      {
        if ((*&v26 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v27 = "nan";
LABEL_33:
          sub_2685B403C(v27, 3, *&v26);
          goto LABEL_26;
        }

        if (v26 >= 0.0)
        {
          v27 = "inf";
          goto LABEL_33;
        }

        sub_2685B403C("-inf", 4, *&v26);
      }

LABEL_26:
      ++v23;
      if (!--v15)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v19 = *(v5 + 2);
  v18 = *(v5 + 3);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    result = sub_2685B3F48((v18 > 1), v19 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v20;
  v5[v19 + 32] = 93;
  *v2 = v5;
  v21 = *(v5 + 3);
  v22 = v19 + 2;
  if (v22 > (v21 >> 1))
  {
    result = sub_2685B3F48((v21 > 1), v22, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v22;
  v5[v20 + 32] = 10;
  *v2 = v5;
  return result;
}

char *sub_268638FB4(uint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_268663B88(*(a1 + 32));
    v11 = v9 - 1;
    if (v11)
    {
      v12 = (a1 + 36);
      do
      {
        v13 = *v12++;
        sub_2685B403C(", ", 2, v10);
        sub_268663B88(v13);
        --v11;
      }

      while (v11);
    }

    v5 = *v2;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v16 = *(v5 + 2);
  v15 = *(v5 + 3);
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    result = sub_2685B3F48((v15 > 1), v16 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v17;
  v5[v16 + 32] = 93;
  *v2 = v5;
  v18 = *(v5 + 3);
  v19 = v16 + 2;
  if (v19 > (v18 >> 1))
  {
    result = sub_2685B3F48((v18 > 1), v19, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v19;
  v5[v17 + 32] = 10;
  *v2 = v5;
  return result;
}

char *sub_268639184(void *a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = a1[2];
  if (v9)
  {
    sub_268663B88(a1[4]);
    v11 = v9 - 1;
    if (v11)
    {
      v12 = a1 + 5;
      do
      {
        v13 = *v12++;
        sub_2685B403C(", ", 2, v10);
        sub_268663B88(v13);
        --v11;
      }

      while (v11);
    }

    v5 = *v2;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v16 = *(v5 + 2);
  v15 = *(v5 + 3);
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    result = sub_2685B3F48((v15 > 1), v16 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v17;
  v5[v16 + 32] = 93;
  *v2 = v5;
  v18 = *(v5 + 3);
  v19 = v16 + 2;
  if (v19 > (v18 >> 1))
  {
    result = sub_2685B3F48((v18 > 1), v19, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v19;
  v5[v17 + 32] = 10;
  *v2 = v5;
  return result;
}

char *sub_268639354(uint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 32);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if ((v11 & 1) == 0)
      {
        v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
        *v2 = v5;
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v5[v13 + 32] = 45;
      *v2 = v5;
      v10 = -v10;
    }

    sub_268663B88(v10);
    v15 = v9 - 1;
    if (v15)
    {
      v22 = (a1 + 36);
      do
      {
        v24 = *v22++;
        v23 = v24;
        sub_2685B403C(", ", 2, v14);
        if ((v24 & 0x80000000) != 0)
        {
          v25 = *v2;
          v26 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v25;
          if ((v26 & 1) == 0)
          {
            v25 = sub_2685B3F48(0, *(v25 + 2) + 1, 1, v25);
            *v2 = v25;
          }

          v28 = *(v25 + 2);
          v27 = *(v25 + 3);
          if (v28 >= v27 >> 1)
          {
            v25 = sub_2685B3F48((v27 > 1), v28 + 1, 1, v25);
          }

          *(v25 + 2) = v28 + 1;
          v25[v28 + 32] = 45;
          *v2 = v25;
          v23 = -v23;
        }

        sub_268663B88(v23);
        --v15;
      }

      while (v15);
    }

    v5 = *v2;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v18 = *(v5 + 2);
  v17 = *(v5 + 3);
  v19 = v18 + 1;
  if (v18 >= v17 >> 1)
  {
    result = sub_2685B3F48((v17 > 1), v18 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v19;
  v5[v18 + 32] = 93;
  *v2 = v5;
  v20 = *(v5 + 3);
  v21 = v18 + 2;
  if (v21 > (v20 >> 1))
  {
    result = sub_2685B3F48((v20 > 1), v21, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v21;
  v5[v19 + 32] = 10;
  *v2 = v5;
  return result;
}

char *sub_268639648(void *a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = a1[2];
  if (v9)
  {
    v10 = a1[4];
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if ((v11 & 1) == 0)
      {
        v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
        *v2 = v5;
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v5[v13 + 32] = 45;
      *v2 = v5;
      v10 = -v10;
    }

    sub_268663B88(v10);
    v15 = v9 - 1;
    if (v15)
    {
      v22 = a1 + 5;
      do
      {
        v24 = *v22++;
        v23 = v24;
        sub_2685B403C(", ", 2, v14);
        if ((v24 & 0x8000000000000000) != 0)
        {
          v25 = *v2;
          v26 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v25;
          if ((v26 & 1) == 0)
          {
            v25 = sub_2685B3F48(0, *(v25 + 2) + 1, 1, v25);
            *v2 = v25;
          }

          v28 = *(v25 + 2);
          v27 = *(v25 + 3);
          if (v28 >= v27 >> 1)
          {
            v25 = sub_2685B3F48((v27 > 1), v28 + 1, 1, v25);
          }

          *(v25 + 2) = v28 + 1;
          v25[v28 + 32] = 45;
          *v2 = v25;
          v23 = -v23;
        }

        sub_268663B88(v23);
        --v15;
      }

      while (v15);
    }

    v5 = *v2;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v18 = *(v5 + 2);
  v17 = *(v5 + 3);
  v19 = v18 + 1;
  if (v18 >= v17 >> 1)
  {
    result = sub_2685B3F48((v17 > 1), v18 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v19;
  v5[v18 + 32] = 93;
  *v2 = v5;
  v20 = *(v5 + 3);
  v21 = v18 + 2;
  if (v21 > (v20 >> 1))
  {
    result = sub_2685B3F48((v20 > 1), v21, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v21;
  v5[v19 + 32] = 10;
  *v2 = v5;
  return result;
}

char *sub_26863993C(uint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = *(a1 + 16);
  if (v9)
  {
    if (*(a1 + 32))
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    if (*(a1 + 32))
    {
      v11 = 4;
    }

    else
    {
      v11 = 5;
    }

    sub_2685B403C(v10, v11, 4);
    v13 = v9 - 1;
    if (v13)
    {
      v14 = (a1 + 33);
      do
      {
        v16 = *v14++;
        v15 = v16;
        sub_2685B403C(", ", 2, v12);
        if (v16)
        {
          v18 = "true";
        }

        else
        {
          v18 = "false";
        }

        if (v15)
        {
          v19 = 4;
        }

        else
        {
          v19 = 5;
        }

        sub_2685B403C(v18, v19, v17);
        --v13;
      }

      while (v13);
    }

    v5 = *v2;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v22 = *(v5 + 2);
  v21 = *(v5 + 3);
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    result = sub_2685B3F48((v21 > 1), v22 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v23;
  v5[v22 + 32] = 93;
  *v2 = v5;
  v24 = *(v5 + 3);
  v25 = v22 + 2;
  if (v25 > (v24 >> 1))
  {
    result = sub_2685B3F48((v24 > 1), v25, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v25;
  v5[v23 + 32] = 10;
  *v2 = v5;
  return result;
}

uint64_t sub_268639B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a3;
  v5[3] = a4;
  return sub_268638584(a1, a2, sub_26863C22C, v5, a3);
}

uint64_t sub_268639B80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v38 = v10;
  v39 = v6;
  if (v9)
  {
    while (1)
    {
      v43 = v4;
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = v15[1];
      v42 = *v15;
      v17 = (*(a1 + 56) + 24 * v14);
      v19 = *v17;
      v18 = v17[1];
      v20 = v17[2];

      v21 = v19;
      v22 = v19;
      v23 = v16;
      sub_2685BA80C(v22, v18);
      v54 = v20;

      if (!v16)
      {
      }

      sub_2685B301C(a2);
      sub_2686636FC(v24);
      if (qword_28028BDD8 != -1)
      {
        swift_once();
      }

      v25 = qword_28028D3E8;
      v26 = *a3;
      v27 = a3[1];
      v28 = *(a3 + 64);

      sub_2685B2FBC(0, 0, 0, 0);
      v50 = 0u;
      v51 = 0u;
      *&v52 = v25;

      *(&v52 + 1) = 0;
      *&v49 = v26;
      *(&v49 + 1) = v27;
      v53 = v28;
      sub_2685B301C(1);
      sub_2685B403C(": ", 2, v29);
      sub_2685B43A4(v42, v23);
      v30 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_2685B3F48(0, *(v30 + 2) + 1, 1, v30);
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_2685B3F48((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v30[v32 + 32] = 10;
      *&v49 = v30;
      sub_268674784(v21, v18, v54, 2);
      v33 = v21;
      v4 = v43;
      if (v43)
      {

        sub_2685B593C(v33, v18);

        v46 = v51;
        v47 = v52;
        v48 = v53;
        v44 = v49;
        v45 = v50;
        return sub_2685B4DEC(&v44);
      }

      v9 &= v9 - 1;
      v35 = *(&v49 + 1);
      v34 = v49;

      *a3 = v34;
      a3[1] = v35;
      sub_2685B4D0C(*(v35 + 16) - 1);
      sub_2685B4D0C(*(a3[1] + 16) - 1);

      sub_2685B3560(v36);
      sub_2685B403C("}\n", 2, v37);
      sub_2685B593C(v33, v18);

      v46 = v51;
      v47 = v52;
      v48 = v53;
      v44 = v49;
      v45 = v50;
      result = sub_2685B4DEC(&v44);
      v12 = v13;
      v10 = v38;
      v6 = v39;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v43 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_268639F30(unint64_t a1, uint64_t a2, void (*a3)(__int128 *, char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v77 = a4;
  v76 = a3;
  v75 = a2;
  v66 = *(a6 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v68 = v64 - v14;
  v65 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v74 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v64 - v18;
  v85 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = sub_268689C74();
  v22 = *(v84 - 8);
  v23 = MEMORY[0x28223BE20](v84);
  MEMORY[0x28223BE20](v23);
  v79 = v24;
  v83 = v64 - v25;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v26 = sub_268689D84();
    v27 = 0;
    v28 = 0;
    v87 = 0;
    v29 = v26 | 0x8000000000000000;
  }

  else
  {
    v30 = -1 << *(a1 + 32);
    v28 = ~v30;
    v27 = a1 + 64;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v87 = v32 & *(a1 + 64);
    v29 = a1;
  }

  v89 = (v65 + 32);
  v88 = (v66 + 32);
  v81 = TupleTypeMetadata2 - 8;
  v64[0] = v28;
  v33 = (v28 + 64) >> 6;
  v64[2] = v65 + 16;
  v64[1] = v66 + 16;
  v80 = (v22 + 32);
  v72 = (v66 + 8);
  v73 = (v65 + 8);

  v35 = 0;
  v36 = v85;
  v67 = v12;
  v82 = v27;
  v78 = v29;
  v69 = v33;
  v37 = v87;
  v71 = v19;
  v70 = TupleTypeMetadata2;
  while (1)
  {
    v87 = v37;
    v86 = v35;
    if ((v29 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_268689D94())
    {
      sub_268689E04();
      swift_unknownObjectRelease();
      v40 = v68;
      sub_268689E04();
      swift_unknownObjectRelease();
      v39 = v86;
      v91 = v87;
LABEL_21:
      v45 = *(TupleTypeMetadata2 + 48);
      v46 = v79;
      (*v89)(v79, v19, a5);
      (*v88)((v46 + v45), v40, v36);
      v47 = 0;
      v90 = v39;
      v12 = v67;
      goto LABEL_25;
    }

    v47 = 1;
    v90 = v86;
    v91 = v87;
LABEL_24:
    v46 = v79;
LABEL_25:
    v48 = *(TupleTypeMetadata2 - 8);
    (*(v48 + 56))(v46, v47, 1, TupleTypeMetadata2);
    v49 = v83;
    (*v80)(v83, v46, v84);
    if ((*(v48 + 48))(v49, 1, TupleTypeMetadata2) == 1)
    {
      return sub_2686265DC(v78);
    }

    v50 = *(TupleTypeMetadata2 + 48);
    v51 = v74;
    v52 = a5;
    (*v89)(v74, v49, a5);
    (*v88)(v12, &v49[v50], v36);
    sub_2685B301C(v75);
    sub_2686636FC(v53);
    v54 = v12;
    if (qword_28028BDD8 != -1)
    {
      swift_once();
    }

    v55 = qword_28028D3E8;
    v56 = *v7;
    v57 = v7[1];
    v58 = *(v7 + 64);

    sub_2685B2FBC(0, 0, 0, 0);
    v98 = 0u;
    v99 = 0u;
    *&v100 = v55;

    *(&v100 + 1) = 0;
    *&v97 = v56;
    *(&v97 + 1) = v57;
    v101 = v58;
    v59 = v102;
    v76(&v97, v51, v54);
    v27 = v82;
    if (v59)
    {
      sub_2686265DC(v78);
      (*v72)(v54, v85);
      (*v73)(v51, v52);
      v94 = v99;
      v95 = v100;
      v96 = v101;
      v92 = v97;
      v93 = v98;
      return sub_2685B4DEC(&v92);
    }

    v102 = 0;
    v61 = *(&v97 + 1);
    v60 = v97;

    *v7 = v60;
    v7[1] = v61;
    sub_2685B4D0C(*(v61 + 16) - 1);
    sub_2685B4D0C(*(v7[1] + 16) - 1);

    sub_2685B3560(v62);
    sub_2685B403C("}\n", 2, v63);
    v36 = v85;
    (*v72)(v54, v85);
    a5 = v52;
    (*v73)(v51, v52);
    v94 = v99;
    v95 = v100;
    v96 = v101;
    v92 = v97;
    v93 = v98;
    result = sub_2685B4DEC(&v92);
    v35 = v90;
    v37 = v91;
    v12 = v54;
    v19 = v71;
    TupleTypeMetadata2 = v70;
    v29 = v78;
    v33 = v69;
  }

  if (v37)
  {
    v38 = v37;
    v39 = v35;
LABEL_20:
    v91 = (v38 - 1) & v38;
    v44 = __clz(__rbit64(v38)) | (v39 << 6);
    (*(v65 + 16))(v19, *(v29 + 48) + *(v65 + 72) * v44, a5);
    v40 = v68;
    (*(v66 + 16))(v68, *(v29 + 56) + *(v66 + 72) * v44, v36);
    goto LABEL_21;
  }

  if (v33 <= v35 + 1)
  {
    v41 = v35 + 1;
  }

  else
  {
    v41 = v33;
  }

  v42 = v41 - 1;
  v43 = v35;
  while (1)
  {
    v39 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v39 >= v33)
    {
      v90 = v42;
      v91 = 0;
      v47 = 1;
      goto LABEL_24;
    }

    v38 = *(v27 + 8 * v39);
    ++v43;
    if (v38)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26863A874(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_268639F30(a1, a2, sub_26863C20C, v11, AssociatedTypeWitness, v9);
}

uint64_t sub_26863A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a4);
  if (!v7)
  {
    return (*(*(a7 + 8) + 48))(a3, 2, a1, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a5);
  }

  return result;
}

uint64_t sub_26863AA2C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_268639F30(a1, a2, sub_26863C1EC, v11, AssociatedTypeWitness, a4);
}

char *sub_26863AAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a4);
  if (!v7)
  {
    return sub_268637030(a3, 2, a5, a7);
  }

  return result;
}

uint64_t sub_26863AB90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_268639F30(a1, a2, sub_26863C1C8, v12, AssociatedTypeWitness, a4);
}

uint64_t sub_26863AC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a4);
  if (!v7)
  {
    return sub_26863710C(a3, 2, a5, a7);
  }

  return result;
}

char *sub_26863ACF8(uint64_t a1, float a2)
{
  sub_2685B301C(a1);
  sub_2685B403C(": ", 2, v4);
  sub_26866393C(a2);
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 10;
  *v2 = v5;
  return result;
}

char *sub_26863ADC8(uint64_t a1, double a2)
{
  sub_2685B301C(a1);
  v5 = sub_2685B403C(": ", 2, v4);
  sub_2686639C4(v5, a2);
  v6 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
    v6 = result;
    *v2 = result;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    result = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v9 + 1;
  v6[v9 + 32] = 10;
  *v2 = v6;
  return result;
}

char *sub_26863AE98(unint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  sub_268663B88(a1);
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 10;
  *v2 = v5;
  return result;
}

uint64_t sub_26863B0E0(uint64_t result, unint64_t a2)
{
  if (*(v2 + 64) == 1)
  {
    return sub_26863B108(result, a2, v2);
  }

  return result;
}

uint64_t sub_26863B108(uint64_t result, unint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      *(&v14 + 6) = 0;
      *&v14 = 0;
      return sub_268636AE0(&v14, &v14);
    }

    v4 = *(result + 16);
    v5 = *(result + 24);
    return sub_26863B2BC(v4, v5);
  }

  if (v3)
  {
    v4 = result;
    v5 = result >> 32;
    if (result >> 32 < result)
    {
      __break(1u);
    }

    return sub_26863B2BC(v4, v5);
  }

  v6 = result;
  v7 = a2;
  v8 = BYTE2(a2);
  v9 = BYTE3(a2);
  v10 = BYTE4(a2);
  v11 = BYTE5(a2);
  if (BYTE6(a2))
  {
    memset(v12, 0, sizeof(v12));
    v17 = 1;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v20 = 1;
    v24 = xmmword_26868BD70;
    v25 = xmmword_26868BD70;
    v13 = 0;
    *&v14 = &v6;
    *(&v14 + 1) = BYTE6(a2);
    v15 = &v6;
    v16 = 0;
    sub_2685B2B0C(v12, v18 + 8);
    v21 = 100;
    v22 = 0;
    v23 = 100;
    sub_26863BAB0(&v14);
    return sub_2685B4BE4(&v14);
  }

  return result;
}

uint64_t sub_26863B2BC(uint64_t a1, uint64_t a2)
{
  result = sub_268689764();
  v5 = result;
  if (result)
  {
    result = sub_268689794();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_268689784();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v5;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_268636AE0(v5, v11);
}

uint64_t sub_26863B360(uint64_t a1, uint64_t a2, unint64_t a3, char **a4, uint64_t a5, uint64_t a6)
{
  v54[3] = a5;
  v54[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);

  sub_2685B3560(v13);
  v14 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_2685B3F48(0, *(v14 + 2) + 1, 1, v14);
    *a4 = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_2685B3F48((v16 > 1), v17 + 1, 1, v14);
  }

  *(v14 + 2) = v17 + 1;
  v14[v17 + 32] = 91;
  *a4 = v14;

  sub_2686689EC(a2, a3);
  v18 = *a4;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v18;
  if ((v19 & 1) == 0)
  {
    v18 = sub_2685B3F48(0, *(v18 + 2) + 1, 1, v18);
    *a4 = v18;
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v18 = sub_2685B3F48((v20 > 1), v21 + 1, 1, v18);
  }

  *(v18 + 2) = v21 + 1;
  v18[v21 + 32] = 93;
  *a4 = v18;
  sub_2686636FC(&v18[v21]);
  sub_2685B1724(v54, v48);
  v22 = *a4;
  v23 = a4[1];
  v24 = *(a4 + 64);
  sub_2685B1724(v48, &v38);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v45, &v49);
    __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
    swift_getDynamicType();
    (*(v51 + 8))(&v38);
    __swift_destroy_boxed_opaque_existential_1(&v49);
    v36 = v39;
    v37 = v38;
  }

  else
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    v37 = 0u;
    sub_2685B2E64(&v45, &qword_28028D3C8, &unk_2686902F0);
    v36 = 0u;
  }

  sub_2685B1724(v48, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v26 = *(&v46 + 1);
    v25 = v47;
    __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
    (*(v25 + 16))(&v38, v26, v25);
    v27 = v38;
    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  else
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    sub_2685B2E64(&v45, &qword_28028D3F8, &unk_268690680);
    v27 = 0;
  }

  v28 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_2685B2FBC(0, 0, 0, 0);

  *&v49 = v22;
  *(&v49 + 1) = v23;
  v51 = v36;
  v50 = v37;
  *&v52 = v28;
  *(&v52 + 1) = v27;
  v53 = v24;
  sub_2685B1724(v54, &v38);
  if (swift_dynamicCast())
  {
    v29 = v43;
    v30 = v44;
    sub_26866A568(&v49);
    v31 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v31 != 2 || *(v29 + 16) == *(v29 + 24))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (!v31)
      {
        if ((v30 & 0xFF000000000000) == 0 || !v24)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (v29 == v29 >> 32)
      {
LABEL_28:
        sub_2685B593C(v29, v30);

        goto LABEL_29;
      }
    }

    if (v24)
    {
LABEL_27:
      sub_26863B108(v29, v30, &v49);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  (*(a6 + 72))(&v49, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a5, a6);
LABEL_29:
  v32 = v49;

  *a4 = v32;
  sub_2685B4D0C(*(*(&v32 + 1) + 16) - 1);
  sub_2685B4D0C(*(a4[1] + 2) - 1);

  sub_2685B3560(v33);
  sub_2685B403C("}\n", 2, v34);
  v40 = v51;
  v41 = v52;
  v42 = v53;
  v38 = v49;
  v39 = v50;
  sub_2685B4DEC(&v38);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

unint64_t sub_26863B928(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_26863B948(_BYTE *__src, _BYTE *a2)
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

unint64_t sub_26863BA00(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_26863B948(a1, &a1[a2]);
  }

  sub_2686897B4();
  swift_allocObject();
  sub_268689754();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_268689804();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_26863BAB0(unint64_t result)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = *(result + 8);
  *(result + 16) = *result;
  *(result + 24) = 0;
  if (v3 >= 1)
  {
    v4 = v1;
    v5 = result;
    do
    {
      result = sub_2685B3B10(result);
      if (v2)
      {
        return result;
      }

      if (result > 0xFFFFFFFE || result < 8 || (v6 = result & 7, v6 >= 6))
      {
        sub_26861C77C();
        swift_allocError();
        v68 = 3;
LABEL_66:
        *v67 = v68;
        return swift_willThrow();
      }

      v7 = result >> 3;
      if ((result & 7) == 0)
      {
        *(v5 + 33) = 0;
        v5[5] = v7;

        sub_2685B3560(v8);
        sub_268663B88(v7);
        v10 = sub_2685B403C(": ", 2, v9);
        v11 = sub_2685B3B10(v10);
        *(v5 + 32) = 1;
        sub_268663B88(v11);
        goto LABEL_18;
      }

      if ((result & 7) > 2)
      {
        if (v6 == 3)
        {
          *(v5 + 33) = 3;
          v5[5] = v7;

          sub_2685B3560(v25);
          sub_268663B88(v7);
          sub_2685B403C(" {\n", 3, v26);
          v27 = v4[1];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v4[1] = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v27 = sub_2685B3F48(0, *(v27 + 2) + 1, 1, v27);
            v4[1] = v27;
          }

          v30 = *(v27 + 2);
          v29 = *(v27 + 3);
          v31 = v30 + 1;
          if (v30 >= v29 >> 1)
          {
            v27 = sub_2685B3F48((v29 > 1), v30 + 1, 1, v27);
          }

          *(v27 + 2) = v31;
          v27[v30 + 32] = 32;
          v4[1] = v27;
          v32 = *(v27 + 3);
          if ((v30 + 2) > (v32 >> 1))
          {
            v27 = sub_2685B3F48((v32 > 1), v30 + 2, 1, v27);
          }

          *(v27 + 2) = v30 + 2;
          v27[v31 + 32] = 32;
          v4[1] = v27;
          sub_26863BAB0(v5);
          sub_2685B4D0C(*(v4[1] + 2) - 1);
          sub_2685B4D0C(*(v4[1] + 2) - 1);

          sub_2685B3560(v33);
          result = sub_2685B403C("}\n", 2, v34);
          goto LABEL_23;
        }

        if (v6 == 4)
        {
          *(v5 + 33) = 4;
          v5[5] = v7;
          return result;
        }

        *(v5 + 33) = 5;
        v5[5] = v7;

        sub_2685B3560(v12);
        sub_268663B88(v7);
        sub_2685B403C(": ", 2, v13);
        v14 = v5[1];
        if (v14 <= 3)
        {
          goto LABEL_68;
        }

        v15 = **v5;
        v16 = (v14 - 4);
        ++*v5;
        v5[1] = v16;
        *(v5 + 32) = 1;
        v17 = 8;
LABEL_17:
        sub_268663DD0(v15, v17, v16);
LABEL_18:
        v21 = *v4;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v4 = v21;
        if ((result & 1) == 0)
        {
          result = sub_2685B3F48(0, *(v21 + 2) + 1, 1, v21);
          v21 = result;
          *v4 = result;
        }

        v23 = *(v21 + 2);
        v22 = *(v21 + 3);
        if (v23 >= v22 >> 1)
        {
          result = sub_2685B3F48((v22 > 1), v23 + 1, 1, v21);
          v21 = result;
        }

        *(v21 + 2) = v23 + 1;
        v21[v23 + 32] = 10;
        *v4 = v21;
        goto LABEL_23;
      }

      if (v6 == 1)
      {
        *(v5 + 33) = 1;
        v5[5] = v7;

        sub_2685B3560(v18);
        sub_268663B88(v7);
        sub_2685B403C(": ", 2, v19);
        v20 = v5[1];
        if (v20 <= 7)
        {
LABEL_68:
          sub_26861C77C();
          swift_allocError();
          v68 = 1;
          goto LABEL_66;
        }

        v15 = **v5;
        v16 = (v20 - 8);
        *v5 += 2;
        v5[1] = v16;
        *(v5 + 32) = 1;
        v17 = 16;
        goto LABEL_17;
      }

      *(v5 + 33) = 2;
      v5[5] = v7;

      sub_2685B3560(v35);
      v36 = sub_268663B88(v7);
      v72 = xmmword_26868A5E0;
      v37 = sub_2685B3B10(v36);
      v38 = v5[1];
      if ((v38 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
      }

      v39 = v37;
      v40 = (v38 - v37);
      if (v38 < v37)
      {
        sub_26861C77C();
        swift_allocError();
        *v69 = 1;
        swift_willThrow();
        return sub_2685B593C(v72, *(&v72 + 1));
      }

      sub_2685B593C(0, 0xC000000000000000);
      v41 = *v5;
      *v5 = (*v5 + v39);
      v5[1] = v40;
      v42 = sub_26863BA00(v41, v39);
      v44 = v43;
      *&v72 = v42;
      *(&v72 + 1) = v43;
      *(v5 + 32) = 1;
      v45 = v43 >> 62;
      if ((v43 >> 62) > 1)
      {
        if (v45 != 2)
        {
          memset(v71, 0, 14);
          v46 = v71;
          goto LABEL_62;
        }

        v47 = *(v42 + 16);
        v48 = *(v42 + 24);
        v70 = v42;

        v49 = sub_268689764();
        if (v49)
        {
          v50 = sub_268689794();
          if (__OFSUB__(v47, v50))
          {
            goto LABEL_73;
          }

          v49 += v47 - v50;
        }

        v51 = __OFSUB__(v48, v47);
        v52 = v48 - v47;
        if (v51)
        {
          goto LABEL_72;
        }

        v53 = sub_268689784();
        if (v53 >= v52)
        {
          v54 = v52;
        }

        else
        {
          v54 = v53;
        }

        v55 = v54 + v49;
        if (v49)
        {
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        sub_268636B98(v49, v56, v5, &v72, v4);
        v57 = v70;
      }

      else
      {
        if (!v45)
        {
          v71[0] = v42;
          LOWORD(v71[1]) = v43;
          BYTE2(v71[1]) = BYTE2(v43);
          BYTE3(v71[1]) = BYTE3(v43);
          BYTE4(v71[1]) = BYTE4(v43);
          BYTE5(v71[1]) = BYTE5(v43);
          v46 = v71 + BYTE6(v43);
LABEL_62:
          sub_268636B98(v71, v46, v5, &v72, v4);
          goto LABEL_63;
        }

        v58 = v42;
        v59 = (v42 >> 32) - v42;
        if (v42 >> 32 < v42)
        {
          goto LABEL_71;
        }

        v60 = v42;

        v61 = sub_268689764();
        if (v61)
        {
          v62 = sub_268689794();
          if (__OFSUB__(v58, v62))
          {
            goto LABEL_74;
          }

          v61 += v58 - v62;
        }

        v63 = sub_268689784();
        if (v63 >= v59)
        {
          v64 = v59;
        }

        else
        {
          v64 = v63;
        }

        v65 = v64 + v61;
        if (v61)
        {
          v66 = v65;
        }

        else
        {
          v66 = 0;
        }

        sub_268636B98(v61, v66, v5, &v72, v4);
        v57 = v60;
      }

      sub_2685B593C(v57, v44);
LABEL_63:
      result = sub_2685B593C(v72, *(&v72 + 1));
LABEL_23:
      v24 = v5[1];
      v5[2] = *v5;
      v5[3] = 0;
    }

    while (v24 > 0);
  }

  return result;
}

uint64_t sub_26863C318()
{
  v2 = v0;
  v3 = *(v0 + 73);
  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    if (v5 != v4 && *v5 == *(v0 + 72))
    {
      v6 = v5 + 1;
      *(v0 + 40) = v6;
      if (v6 == v4)
      {
        return 0;
      }

      while (1)
      {
        v7 = *v6;
        if (v7 > 0x23)
        {
          return 0;
        }

        if (((1 << v7) & 0x100002600) != 0)
        {
          ++v6;
        }

        else
        {
          if (v7 != 35)
          {
            return 0;
          }

          *(v0 + 40) = ++v6;
          while (v6 != v4)
          {
            v9 = *v6++;
            v8 = v9;
            if (v9 == 10 || v8 == 13)
            {
              goto LABEL_7;
            }
          }

          v6 = v4;
        }

LABEL_7:
        *(v0 + 40) = v6;
        if (v6 == v4)
        {
          return 0;
        }
      }
    }
  }

  v11 = *(v0 + 64);
  if (v11 >= 1)
  {
    v12 = *(v0 + 40);
    if (v12 != *(v0 + 48))
    {
      v13 = *v12;
      if (v13 == 59 || v13 == 44)
      {
        *(v0 + 40) = v12 + 1;
        sub_2685C01A0();
      }
    }
  }

  result = sub_2685C16D4();
  if (v1)
  {
    return v0;
  }

  if (v15)
  {
    if (*(v0 + 24))
    {
      v16 = result;
      v17 = v15;
      sub_2685B1724(v2, v32);
      v18 = v33;
      v19 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      result = v2[14];
      if (!result)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v0 = (*(v19 + 16))(result, v2[15], v16, v17, v18, v19);
      v21 = v20;

      result = __swift_destroy_boxed_opaque_existential_1(v32);
      if ((v21 & 1) == 0)
      {
        v22 = v11 + 1;
        if (!__OFADD__(v11, 1))
        {
          goto LABEL_43;
        }

        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
    }

    sub_2685C1CBC();
    swift_allocError();
    v30 = 7;
LABEL_37:
    *v29 = v30;
    swift_willThrow();
    return v0;
  }

  v23 = *(v0 + 80);
  if (v23)
  {
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v26 = *(v0 + 104);
    v32[0] = *(v0 + 80);
    v32[1] = v25;
    v32[2] = v24;
    v33 = v26;
    v27 = sub_2685C1818(v32);
    v35 = 0;
    v0 = v27;
    v31 = v28;
    sub_26863C664(v23, v25, v24, v26);

    if ((v31 & 1) == 0)
    {
      v22 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
LABEL_43:
        v2[8] = v22;
        return v0;
      }

      goto LABEL_47;
    }

    if (v3)
    {
      return 0;
    }

    sub_2685C1CBC();
    swift_allocError();
    v30 = 3;
    goto LABEL_37;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_26863C664(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26863C6C4(float *a1)
{
  sub_2685C01A0();
  v3 = *(v1 + 40);
  if (v3 == *(v1 + 48) || *v3 != 58)
  {
    v7 = 0;
    goto LABEL_7;
  }

  *(v1 + 40) = v3 + 1;
  sub_2685C01A0();
  *&result = COERCE_DOUBLE(sub_2685C10C4());
  if ((v5 & 1) == 0)
  {
    v6 = *&result;
    goto LABEL_9;
  }

  *&result = COERCE_DOUBLE(sub_2685C124C(&unk_287928428));
  if ((result & 1) == 0)
  {
    *&result = COERCE_DOUBLE(sub_2685C12FC());
    if ((result & 0x100000000) == 0)
    {
      v6 = *&result;
      goto LABEL_9;
    }

    v7 = 1;
LABEL_7:
    sub_2685C1CBC();
    swift_allocError();
    *v8 = v7;
    *&result = COERCE_DOUBLE(swift_willThrow());
    return result;
  }

  v6 = NAN;
LABEL_9:
  *a1 = v6;
  return result;
}

uint64_t sub_26863C798(uint64_t a1)
{
  sub_2685C01A0();
  v3 = *(v1 + 40);
  if (v3 == *(v1 + 48) || *v3 != 58)
  {
    v7 = 0;
    goto LABEL_7;
  }

  *(v1 + 40) = v3 + 1;
  sub_2685C01A0();
  v4 = COERCE_DOUBLE(sub_2685C10C4());
  if ((v5 & 1) == 0)
  {
    *&v9 = v4;
    result = v9;
    goto LABEL_9;
  }

  if ((sub_2685C124C(&unk_287928428) & 1) == 0)
  {
    result = sub_2685C12FC();
    if ((result & 0x100000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = 1;
LABEL_7:
    sub_2685C1CBC();
    swift_allocError();
    *v8 = v7;
    return swift_willThrow();
  }

  result = 2143289344;
LABEL_9:
  *a1 = result;
  *(a1 + 4) = 0;
  return result;
}

void sub_26863C868(char **a1)
{
  sub_2685C01A0();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (v3 == v4 || *v3 != 58)
  {
LABEL_60:
    v25 = 0;
    goto LABEL_61;
  }

  *(v1 + 40) = v3 + 1;
  sub_2685C01A0();
  v5 = *(v1 + 40);
  if (v5 != v4 && *v5 == 91)
  {
    *(v1 + 40) = v5 + 1;
    sub_2685C01A0();
    v6 = 1;
    while (1)
    {
      v7 = *(v1 + 40);
      if (v7 == v4)
      {
        break;
      }

      v8 = *v7;
      if (v8 == 93)
      {
        *(v1 + 40) = v7 + 1;
        sub_2685C01A0();
        return;
      }

      if ((v6 & 1) == 0)
      {
        for (; v8 <= 0x23; v8 = *v7)
        {
          if (((1 << v8) & 0x100002600) != 0)
          {
            ++v7;
          }

          else
          {
            if (v8 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v7;
            while (v7 != v4)
            {
              v10 = *v7++;
              v9 = v10;
              if (v10 == 10 || v9 == 13)
              {
                goto LABEL_12;
              }
            }

            v7 = v4;
          }

LABEL_12:
          *(v1 + 40) = v7;
          if (v7 == v4)
          {
            break;
          }
        }

LABEL_29:
        if (v7 == v4 || *v7 != 44)
        {
          goto LABEL_60;
        }

LABEL_45:
        ++v7;
LABEL_32:
        while (1)
        {
          *(v1 + 40) = v7;
          if (v7 == v4)
          {
            break;
          }

          v15 = *v7;
          if (v15 > 0x23)
          {
            break;
          }

          if (((1 << v15) & 0x100002600) != 0)
          {
            goto LABEL_45;
          }

          if (v15 != 35)
          {
            break;
          }

          *(v1 + 40) = ++v7;
          while (v7 != v4)
          {
            v17 = *v7++;
            v16 = v17;
            if (v17 == 10 || v16 == 13)
            {
              goto LABEL_32;
            }
          }

          v7 = v4;
        }
      }

LABEL_26:
      v12 = COERCE_DOUBLE(sub_2685C10C4());
      if (v13)
      {
        if (sub_2685C124C(&unk_287928738))
        {
          v14 = NAN;
        }

        else
        {
          v19 = *(v1 + 40);
          if (v19 == v4)
          {
            goto LABEL_73;
          }

          v20 = *v19;
          if (v20 == 45)
          {
            *(v1 + 40) = v19 + 1;
          }

          if ((sub_2685C124C(&unk_2879283D8) & 1) == 0 && (sub_2685C124C(&unk_287928400) & 1) == 0)
          {
            goto LABEL_73;
          }

          if (v20 == 45)
          {
            v14 = -INFINITY;
          }

          else
          {
            v14 = INFINITY;
          }
        }
      }

      else
      {
        v14 = v12;
      }

      v21 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_268666050(0, *(v21 + 2) + 1, 1, v21);
        *a1 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_268666050((v23 > 1), v24 + 1, 1, v21);
      }

      v6 = 0;
      *(v21 + 2) = v24 + 1;
      *&v21[4 * v24 + 32] = v14;
      *a1 = v21;
    }

    if (v6)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v27 = COERCE_DOUBLE(sub_2685C10C4());
  if ((v28 & 1) == 0)
  {
    v29 = v27;
    goto LABEL_66;
  }

  if ((sub_2685C124C(&unk_287928428) & 1) == 0)
  {
    v34 = sub_2685C12FC();
    if ((v34 & 0x100000000) == 0)
    {
      v29 = *&v34;
      goto LABEL_66;
    }

LABEL_73:
    v25 = 1;
LABEL_61:
    sub_2685C1CBC();
    swift_allocError();
    *v26 = v25;
    swift_willThrow();
    return;
  }

  v29 = NAN;
LABEL_66:
  v30 = *a1;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v30;
  if ((v31 & 1) == 0)
  {
    v30 = sub_268666050(0, *(v30 + 2) + 1, 1, v30);
    *a1 = v30;
  }

  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  if (v33 >= v32 >> 1)
  {
    v30 = sub_268666050((v32 > 1), v33 + 1, 1, v30);
  }

  *(v30 + 2) = v33 + 1;
  *&v30[4 * v33 + 32] = v29;
  *a1 = v30;
}

uint64_t sub_26863CC20(double *a1)
{
  sub_2685C01A0();
  v3 = *(v1 + 40);
  if (v3 == *(v1 + 48) || *v3 != 58)
  {
    v7 = 0;
    goto LABEL_7;
  }

  *(v1 + 40) = v3 + 1;
  sub_2685C01A0();
  result = sub_2685C10C4();
  if ((v5 & 1) == 0)
  {
    v6 = *&result;
    goto LABEL_9;
  }

  result = sub_2685C124C(&unk_287928450);
  if ((result & 1) == 0)
  {
    result = sub_2685C12FC();
    if ((result & 0x100000000) == 0)
    {
      v6 = *&result;
      goto LABEL_9;
    }

    v7 = 1;
LABEL_7:
    sub_2685C1CBC();
    swift_allocError();
    *v8 = v7;
    return swift_willThrow();
  }

  v6 = NAN;
LABEL_9:
  *a1 = v6;
  return result;
}

uint64_t sub_26863CCF4(uint64_t a1)
{
  sub_2685C01A0();
  v3 = *(v1 + 40);
  if (v3 == *(v1 + 48) || *v3 != 58)
  {
    v6 = 0;
    goto LABEL_7;
  }

  *(v1 + 40) = v3 + 1;
  sub_2685C01A0();
  *&result = COERCE_DOUBLE(sub_2685C10C4());
  if (v5)
  {
    if (sub_2685C124C(&unk_287928450))
    {
      *&result = NAN;
      goto LABEL_10;
    }

    v8 = sub_2685C12FC();
    if ((v8 & 0x100000000) == 0)
    {
      *&result = *&v8;
      goto LABEL_10;
    }

    v6 = 1;
LABEL_7:
    sub_2685C1CBC();
    swift_allocError();
    *v7 = v6;
    *&result = COERCE_DOUBLE(swift_willThrow());
    return result;
  }

LABEL_10:
  *a1 = *&result;
  *(a1 + 8) = 0;
  return result;
}

void sub_26863CDC4(char **a1)
{
  sub_2685C01A0();
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (v3 == v4 || *v3 != 58)
  {
LABEL_60:
    v25 = 0;
    goto LABEL_61;
  }

  *(v1 + 40) = v3 + 1;
  sub_2685C01A0();
  v5 = *(v1 + 40);
  if (v5 != v4 && *v5 == 91)
  {
    *(v1 + 40) = v5 + 1;
    sub_2685C01A0();
    v6 = 1;
    while (1)
    {
      v7 = *(v1 + 40);
      if (v7 == v4)
      {
        break;
      }

      v8 = *v7;
      if (v8 == 93)
      {
        *(v1 + 40) = v7 + 1;
        sub_2685C01A0();
        return;
      }

      if ((v6 & 1) == 0)
      {
        for (; v8 <= 0x23; v8 = *v7)
        {
          if (((1 << v8) & 0x100002600) != 0)
          {
            ++v7;
          }

          else
          {
            if (v8 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v7;
            while (v7 != v4)
            {
              v10 = *v7++;
              v9 = v10;
              if (v10 == 10 || v9 == 13)
              {
                goto LABEL_12;
              }
            }

            v7 = v4;
          }

LABEL_12:
          *(v1 + 40) = v7;
          if (v7 == v4)
          {
            break;
          }
        }

LABEL_29:
        if (v7 == v4 || *v7 != 44)
        {
          goto LABEL_60;
        }

LABEL_45:
        ++v7;
LABEL_32:
        while (1)
        {
          *(v1 + 40) = v7;
          if (v7 == v4)
          {
            break;
          }

          v15 = *v7;
          if (v15 > 0x23)
          {
            break;
          }

          if (((1 << v15) & 0x100002600) != 0)
          {
            goto LABEL_45;
          }

          if (v15 != 35)
          {
            break;
          }

          *(v1 + 40) = ++v7;
          while (v7 != v4)
          {
            v17 = *v7++;
            v16 = v17;
            if (v17 == 10 || v16 == 13)
            {
              goto LABEL_32;
            }
          }

          v7 = v4;
        }
      }

LABEL_26:
      v12 = sub_2685C10C4();
      if (v13)
      {
        if (sub_2685C124C(&unk_287928760))
        {
          v14 = NAN;
        }

        else
        {
          v19 = *(v1 + 40);
          if (v19 == v4)
          {
            goto LABEL_73;
          }

          v20 = *v19;
          if (v20 == 45)
          {
            *(v1 + 40) = v19 + 1;
          }

          if ((sub_2685C124C(&unk_2879283D8) & 1) == 0 && (sub_2685C124C(&unk_287928400) & 1) == 0)
          {
            goto LABEL_73;
          }

          if (v20 == 45)
          {
            v14 = -INFINITY;
          }

          else
          {
            v14 = INFINITY;
          }
        }
      }

      else
      {
        v14 = *&v12;
      }

      v21 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_26866617C(0, *(v21 + 2) + 1, 1, v21);
        *a1 = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_26866617C((v23 > 1), v24 + 1, 1, v21);
      }

      v6 = 0;
      *(v21 + 2) = v24 + 1;
      *&v21[8 * v24 + 32] = v14;
      *a1 = v21;
    }

    if (v6)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v27 = sub_2685C10C4();
  if ((v28 & 1) == 0)
  {
    v29 = *&v27;
    goto LABEL_66;
  }

  if ((sub_2685C124C(&unk_287928450) & 1) == 0)
  {
    v34 = sub_2685C12FC();
    if ((v34 & 0x100000000) == 0)
    {
      v29 = *&v34;
      goto LABEL_66;
    }

LABEL_73:
    v25 = 1;
LABEL_61:
    sub_2685C1CBC();
    swift_allocError();
    *v26 = v25;
    swift_willThrow();
    return;
  }

  v29 = NAN;
LABEL_66:
  v30 = *a1;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v30;
  if ((v31 & 1) == 0)
  {
    v30 = sub_26866617C(0, *(v30 + 2) + 1, 1, v30);
    *a1 = v30;
  }

  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  if (v33 >= v32 >> 1)
  {
    v30 = sub_26866617C((v32 > 1), v33 + 1, 1, v30);
  }

  *(v30 + 2) = v33 + 1;
  *&v30[8 * v33 + 32] = v29;
  *a1 = v30;
}

int64_t sub_26863D178(_DWORD *a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  if (v4 == *(v1 + 48) || *v4 != 58)
  {
    v6 = 0;
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    result = sub_2685C0AEC();
    if (v2)
    {
      return result;
    }

    if (result == result)
    {
      *a1 = result;
      return result;
    }

    v6 = 1;
  }

  sub_2685C1CBC();
  swift_allocError();
  *v7 = v6;
  return swift_willThrow();
}

int64_t sub_26863D228(uint64_t a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  if (v4 == *(v1 + 48) || *v4 != 58)
  {
    v6 = 0;
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    result = sub_2685C0AEC();
    if (v2)
    {
      return result;
    }

    if (result == result)
    {
      *a1 = result;
      *(a1 + 4) = 0;
      return result;
    }

    v6 = 1;
  }

  sub_2685C1CBC();
  swift_allocError();
  *v7 = v6;
  return swift_willThrow();
}

void sub_26863D2DC(char **a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_51:
    sub_2685C1CBC();
    swift_allocError();
    *v22 = 0;
LABEL_52:
    swift_willThrow();
    return;
  }

  *(v1 + 40) = v4 + 1;
  sub_2685C01A0();
  v6 = *(v1 + 40);
  if (v6 != v5 && *v6 == 91)
  {
    *(v1 + 40) = v6 + 1;
    sub_2685C01A0();
    v7 = 1;
    for (i = a1; ; *i = v18)
    {
      v8 = *(v1 + 40);
      if (v8 == v5)
      {
        break;
      }

      v9 = *v8;
      if (v9 == 93)
      {
        *(v1 + 40) = v8 + 1;
        sub_2685C01A0();
        return;
      }

      if ((v7 & 1) == 0)
      {
        for (; v9 <= 0x23; v9 = *v8)
        {
          if (((1 << v9) & 0x100002600) != 0)
          {
            ++v8;
          }

          else
          {
            if (v9 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v8;
            while (v8 != v5)
            {
              v11 = *v8++;
              v10 = v11;
              if (v11 == 10 || v10 == 13)
              {
                goto LABEL_12;
              }
            }

            v8 = v5;
          }

LABEL_12:
          *(v1 + 40) = v8;
          if (v8 == v5)
          {
            break;
          }
        }

LABEL_29:
        if (v8 == v5 || *v8 != 44)
        {
          goto LABEL_51;
        }

LABEL_42:
        ++v8;
LABEL_32:
        while (1)
        {
          *(v1 + 40) = v8;
          if (v8 == v5)
          {
            break;
          }

          v14 = *v8;
          if (v14 > 0x23)
          {
            break;
          }

          if (((1 << v14) & 0x100002600) != 0)
          {
            goto LABEL_42;
          }

          if (v14 != 35)
          {
            break;
          }

          *(v1 + 40) = ++v8;
          while (v8 != v5)
          {
            v16 = *v8++;
            v15 = v16;
            if (v16 == 10 || v15 == 13)
            {
              goto LABEL_32;
            }
          }

          v8 = v5;
        }
      }

LABEL_23:
      if (v8 == v5)
      {
        goto LABEL_56;
      }

      if (*v8 == 45)
      {
        *(v1 + 40) = v8 + 1;
        if (v8[1] - 58 < 0xFFFFFFF6)
        {
          goto LABEL_56;
        }

        v12 = sub_2685C08D4();
        if (v2)
        {
          return;
        }

        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }

        v13 = -v12;
      }

      else
      {
        v17 = sub_2685C08D4();
        if (v2)
        {
          return;
        }

        v13 = v17;
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }
      }

      if (v13 != v13)
      {
        goto LABEL_56;
      }

      v18 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_268666154(0, *(v18 + 2) + 1, 1, v18);
        *a1 = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_268666154((v20 > 1), v21 + 1, 1, v18);
      }

      v7 = 0;
      *(v18 + 2) = v21 + 1;
      *&v18[4 * v21 + 32] = v13;
      a1 = i;
    }

    if (v7)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  v23 = sub_2685C0AEC();
  if (!v2)
  {
    if (v23 != v23)
    {
LABEL_56:
      sub_2685C1CBC();
      swift_allocError();
      *v24 = 1;
      goto LABEL_52;
    }

    v25 = v23;
    v26 = *a1;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v26;
    if ((v27 & 1) == 0)
    {
      v26 = sub_268666154(0, *(v26 + 2) + 1, 1, v26);
      *a1 = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    if (v29 >= v28 >> 1)
    {
      v26 = sub_268666154((v28 > 1), v29 + 1, 1, v26);
    }

    *(v26 + 2) = v29 + 1;
    *&v26[4 * v29 + 32] = v25;
    *a1 = v26;
  }
}

void sub_26863D68C(char **a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_52:
    sub_2685C1CBC();
    swift_allocError();
    *v22 = 0;
LABEL_53:
    swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    v6 = *(v1 + 40);
    if (v6 != v5 && *v6 == 91)
    {
      *(v1 + 40) = v6 + 1;
      sub_2685C01A0();
      v7 = 1;
      for (i = a1; ; *i = v18)
      {
        v8 = *(v1 + 40);
        if (v8 == v5)
        {
          break;
        }

        v9 = *v8;
        if (v9 == 93)
        {
          *(v1 + 40) = v8 + 1;
          sub_2685C01A0();
          return;
        }

        if ((v7 & 1) == 0)
        {
          for (; v9 <= 0x23; v9 = *v8)
          {
            if (((1 << v9) & 0x100002600) != 0)
            {
              ++v8;
            }

            else
            {
              if (v9 != 35)
              {
                break;
              }

              *(v1 + 40) = ++v8;
              while (v8 != v5)
              {
                v11 = *v8++;
                v10 = v11;
                if (v11 == 10 || v10 == 13)
                {
                  goto LABEL_12;
                }
              }

              v8 = v5;
            }

LABEL_12:
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }
          }

LABEL_29:
          if (v8 == v5 || *v8 != 44)
          {
            goto LABEL_52;
          }

LABEL_42:
          ++v8;
LABEL_32:
          while (1)
          {
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }

            v14 = *v8;
            if (v14 > 0x23)
            {
              break;
            }

            if (((1 << v14) & 0x100002600) != 0)
            {
              goto LABEL_42;
            }

            if (v14 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v8;
            while (v8 != v5)
            {
              v16 = *v8++;
              v15 = v16;
              if (v16 == 10 || v15 == 13)
              {
                goto LABEL_32;
              }
            }

            v8 = v5;
          }
        }

LABEL_23:
        if (v8 == v5)
        {
          goto LABEL_61;
        }

        if (*v8 == 45)
        {
          *(v1 + 40) = v8 + 1;
          if (v8[1] - 58 < 0xFFFFFFF6)
          {
            goto LABEL_61;
          }

          v12 = sub_2685C08D4();
          if (v2)
          {
            return;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            v13 = 0x8000000000000000;
            if (v12 != 0x8000000000000000)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v13 = -v12;
          }
        }

        else
        {
          v17 = sub_2685C08D4();
          if (v2)
          {
            return;
          }

          v13 = v17;
          if ((v17 & 0x8000000000000000) != 0)
          {
LABEL_61:
            sub_2685C1CBC();
            swift_allocError();
            *v29 = 1;
            goto LABEL_53;
          }
        }

        v18 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_268666168(0, *(v18 + 2) + 1, 1, v18);
          *a1 = v18;
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        if (v21 >= v20 >> 1)
        {
          v18 = sub_268666168((v20 > 1), v21 + 1, 1, v18);
        }

        v7 = 0;
        *(v18 + 2) = v21 + 1;
        *&v18[8 * v21 + 32] = v13;
        a1 = i;
      }

      if (v7)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

    v23 = sub_2685C0AEC();
    if (!v2)
    {
      v24 = v23;
      v25 = *a1;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v25;
      if ((v26 & 1) == 0)
      {
        v25 = sub_268666168(0, *(v25 + 2) + 1, 1, v25);
        *a1 = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_268666168((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      *&v25[8 * v28 + 32] = v24;
      *a1 = v25;
    }
  }
}

unint64_t sub_26863DA2C(_DWORD *a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  if (v4 == *(v1 + 48) || *v4 != 58)
  {
    v6 = 0;
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    result = sub_2685C08D4();
    if (v2)
    {
      return result;
    }

    if (!HIDWORD(result))
    {
      *a1 = result;
      return result;
    }

    v6 = 1;
  }

  sub_2685C1CBC();
  swift_allocError();
  *v7 = v6;
  return swift_willThrow();
}

unint64_t sub_26863DADC(uint64_t a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  if (v4 == *(v1 + 48) || *v4 != 58)
  {
    v6 = 0;
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    result = sub_2685C08D4();
    if (v2)
    {
      return result;
    }

    if (!HIDWORD(result))
    {
      *a1 = result;
      *(a1 + 4) = 0;
      return result;
    }

    v6 = 1;
  }

  sub_2685C1CBC();
  swift_allocError();
  *v7 = v6;
  return swift_willThrow();
}

void sub_26863DB90(char **a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_44:
    sub_2685C1CBC();
    swift_allocError();
    *v21 = 0;
LABEL_45:
    swift_willThrow();
    return;
  }

  *(v1 + 40) = v4 + 1;
  sub_2685C01A0();
  v6 = *(v1 + 40);
  if (v6 != v5 && *v6 == 91)
  {
    *(v1 + 40) = v6 + 1;
    sub_2685C01A0();
    v7 = 1;
    for (i = a1; ; *i = v14)
    {
      v8 = *(v1 + 40);
      if (v8 == v5)
      {
        break;
      }

      v9 = *v8;
      if (v9 == 93)
      {
        *(v1 + 40) = v8 + 1;
        sub_2685C01A0();
        return;
      }

      if ((v7 & 1) == 0)
      {
        for (; v9 <= 0x23; v9 = *v8)
        {
          if (((1 << v9) & 0x100002600) != 0)
          {
            ++v8;
          }

          else
          {
            if (v9 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v8;
            while (v8 != v5)
            {
              v11 = *v8++;
              v10 = v11;
              if (v11 == 10 || v10 == 13)
              {
                goto LABEL_12;
              }
            }

            v8 = v5;
          }

LABEL_12:
          *(v1 + 40) = v8;
          if (v8 == v5)
          {
            break;
          }
        }

LABEL_30:
        if (v8 == v5 || *v8 != 44)
        {
          goto LABEL_44;
        }

LABEL_43:
        ++v8;
LABEL_33:
        while (1)
        {
          *(v1 + 40) = v8;
          if (v8 == v5)
          {
            break;
          }

          v18 = *v8;
          if (v18 > 0x23)
          {
            break;
          }

          if (((1 << v18) & 0x100002600) != 0)
          {
            goto LABEL_43;
          }

          if (v18 != 35)
          {
            break;
          }

          *(v1 + 40) = ++v8;
          while (v8 != v5)
          {
            v20 = *v8++;
            v19 = v20;
            if (v20 == 10 || v19 == 13)
            {
              goto LABEL_33;
            }
          }

          v8 = v5;
        }
      }

LABEL_23:
      v12 = sub_2685C08D4();
      if (v2)
      {
        return;
      }

      v13 = v12;
      if (HIDWORD(v12))
      {
        goto LABEL_49;
      }

      v14 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_268666280(0, *(v14 + 2) + 1, 1, v14);
        *a1 = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      if (v17 >= v16 >> 1)
      {
        v14 = sub_268666280((v16 > 1), v17 + 1, 1, v14);
      }

      v7 = 0;
      *(v14 + 2) = v17 + 1;
      *&v14[4 * v17 + 32] = v13;
      a1 = i;
    }

    if (v7)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  v22 = sub_2685C08D4();
  if (!v2)
  {
    if (HIDWORD(v22))
    {
LABEL_49:
      sub_2685C1CBC();
      swift_allocError();
      *v23 = 1;
      goto LABEL_45;
    }

    v24 = v22;
    v25 = *a1;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v25;
    if ((v26 & 1) == 0)
    {
      v25 = sub_268666280(0, *(v25 + 2) + 1, 1, v25);
      *a1 = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      v25 = sub_268666280((v27 > 1), v28 + 1, 1, v25);
    }

    *(v25 + 2) = v28 + 1;
    *&v25[4 * v28 + 32] = v24;
    *a1 = v25;
  }
}

uint64_t sub_26863DEE8(uint64_t *a1, uint64_t (*a2)(void))
{
  sub_2685C01A0();
  v6 = *(v2 + 40);
  if (v6 == *(v2 + 48) || *v6 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v2 + 40) = v6 + 1;
    sub_2685C01A0();
    result = a2();
    if (!v3)
    {
      *a1 = result;
    }
  }

  return result;
}

uint64_t sub_26863DF8C(uint64_t a1, uint64_t (*a2)(void))
{
  sub_2685C01A0();
  v6 = *(v2 + 40);
  if (v6 == *(v2 + 48) || *v6 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v2 + 40) = v6 + 1;
    sub_2685C01A0();
    result = a2();
    if (!v3)
    {
      *a1 = result;
      *(a1 + 8) = 0;
    }
  }

  return result;
}

void sub_26863E034(char **a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_43:
    sub_2685C1CBC();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    v6 = *(v1 + 40);
    if (v6 != v5 && *v6 == 91)
    {
      *(v1 + 40) = v6 + 1;
      sub_2685C01A0();
      v7 = 1;
      for (i = a1; ; *i = v14)
      {
        v8 = *(v1 + 40);
        if (v8 == v5)
        {
          break;
        }

        v9 = *v8;
        if (v9 == 93)
        {
          *(v1 + 40) = v8 + 1;
          sub_2685C01A0();
          return;
        }

        if ((v7 & 1) == 0)
        {
          for (; v9 <= 0x23; v9 = *v8)
          {
            if (((1 << v9) & 0x100002600) != 0)
            {
              ++v8;
            }

            else
            {
              if (v9 != 35)
              {
                break;
              }

              *(v1 + 40) = ++v8;
              while (v8 != v5)
              {
                v11 = *v8++;
                v10 = v11;
                if (v11 == 10 || v10 == 13)
                {
                  goto LABEL_12;
                }
              }

              v8 = v5;
            }

LABEL_12:
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }
          }

LABEL_29:
          if (v8 == v5 || *v8 != 44)
          {
            goto LABEL_43;
          }

LABEL_42:
          ++v8;
LABEL_32:
          while (1)
          {
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }

            v18 = *v8;
            if (v18 > 0x23)
            {
              break;
            }

            if (((1 << v18) & 0x100002600) != 0)
            {
              goto LABEL_42;
            }

            if (v18 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v8;
            while (v8 != v5)
            {
              v20 = *v8++;
              v19 = v20;
              if (v20 == 10 || v19 == 13)
              {
                goto LABEL_32;
              }
            }

            v8 = v5;
          }
        }

LABEL_23:
        v12 = sub_2685C08D4();
        if (v2)
        {
          return;
        }

        v13 = v12;
        v14 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_268666390(0, *(v14 + 2) + 1, 1, v14);
          *a1 = v14;
        }

        v17 = *(v14 + 2);
        v16 = *(v14 + 3);
        if (v17 >= v16 >> 1)
        {
          v14 = sub_268666390((v16 > 1), v17 + 1, 1, v14);
        }

        v7 = 0;
        *(v14 + 2) = v17 + 1;
        *&v14[8 * v17 + 32] = v13;
        a1 = i;
      }

      if (v7)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

    v22 = sub_2685C08D4();
    if (!v2)
    {
      v23 = v22;
      v24 = *a1;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = sub_268666390(0, *(v24 + 2) + 1, 1, v24);
        *a1 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_268666390((v26 > 1), v27 + 1, 1, v24);
      }

      *(v24 + 2) = v27 + 1;
      *&v24[8 * v27 + 32] = v23;
      *a1 = v24;
    }
  }
}

uint64_t sub_26863E34C(uint64_t *a1, uint64_t (*a2)(void))
{
  sub_2685C01A0();
  v6 = *(v2 + 40);
  if (v6 == *(v2 + 48) || *v6 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v2 + 40) = v6 + 1;
    sub_2685C01A0();
    result = a2();
    if (!v3)
    {
      *a1 = result;
    }
  }

  return result;
}

uint64_t sub_26863E3F0(uint64_t a1, uint64_t (*a2)(void))
{
  sub_2685C01A0();
  v6 = *(v2 + 40);
  if (v6 == *(v2 + 48) || *v6 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v2 + 40) = v6 + 1;
    sub_2685C01A0();
    result = a2();
    if (!v3)
    {
      *a1 = result;
      *(a1 + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_26863E498(_BYTE *a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  if (v4 == *(v1 + 48) || *v4 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    result = sub_2685C138C(v5);
    if (!v2)
    {
      *a1 = result & 1;
    }
  }

  return result;
}

void sub_26863E538(uint64_t *a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_43:
    sub_2685C1CBC();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    v7 = *(v1 + 40);
    if (v7 != v5 && *v7 == 91)
    {
      *(v1 + 40) = v7 + 1;
      sub_2685C01A0();
      v9 = 1;
      for (i = a1; ; *i = v16)
      {
        v10 = *(v1 + 40);
        if (v10 == v5)
        {
          break;
        }

        v11 = *v10;
        if (v11 == 93)
        {
          *(v1 + 40) = v10 + 1;
          sub_2685C01A0();
          return;
        }

        if ((v9 & 1) == 0)
        {
          for (; v11 <= 0x23; v11 = *v10)
          {
            if (((1 << v11) & 0x100002600) != 0)
            {
              ++v10;
            }

            else
            {
              if (v11 != 35)
              {
                break;
              }

              *(v1 + 40) = ++v10;
              while (v10 != v5)
              {
                v13 = *v10++;
                v12 = v13;
                if (v13 == 10 || v12 == 13)
                {
                  goto LABEL_12;
                }
              }

              v10 = v5;
            }

LABEL_12:
            *(v1 + 40) = v10;
            if (v10 == v5)
            {
              break;
            }
          }

LABEL_29:
          if (v10 == v5 || *v10 != 44)
          {
            goto LABEL_43;
          }

LABEL_42:
          ++v10;
LABEL_32:
          while (1)
          {
            *(v1 + 40) = v10;
            if (v10 == v5)
            {
              break;
            }

            v19 = *v10;
            if (v19 > 0x23)
            {
              break;
            }

            if (((1 << v19) & 0x100002600) != 0)
            {
              goto LABEL_42;
            }

            if (v19 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v10;
            while (v10 != v5)
            {
              v21 = *v10++;
              v20 = v21;
              if (v21 == 10 || v20 == 13)
              {
                goto LABEL_32;
              }
            }

            v10 = v5;
          }
        }

LABEL_23:
        v14 = sub_2685C138C(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          return;
        }

        v15 = v14;
        v16 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_268665E50(0, *(v16 + 16) + 1, 1, v16);
          v16 = isUniquelyReferenced_nonNull_native;
          *a1 = isUniquelyReferenced_nonNull_native;
        }

        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        if (v18 >= v17 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_268665E50((v17 > 1), v18 + 1, 1, v16);
          v16 = isUniquelyReferenced_nonNull_native;
        }

        v9 = 0;
        *(v16 + 16) = v18 + 1;
        *(v16 + v18 + 32) = v15 & 1;
        a1 = i;
      }

      if (v9)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

    v23 = sub_2685C138C(v6);
    if (!v2)
    {
      v24 = v23;
      v25 = *a1;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v25;
      if ((v26 & 1) == 0)
      {
        v25 = sub_268665E50(0, *(v25 + 2) + 1, 1, v25);
        *a1 = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_268665E50((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v25[v28 + 32] = v24 & 1;
      *a1 = v25;
    }
  }
}

uint64_t sub_26863E858(uint64_t *a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  if (v4 == *(v1 + 48) || *v4 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v9 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    result = sub_2685C0BA8();
    if (!v2)
    {
      v7 = result;
      v8 = v6;

      *a1 = v7;
      a1[1] = v8;
    }
  }

  return result;
}

void sub_26863E904(char **a1)
{
  v3 = v2;
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_43:
    sub_2685C1CBC();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    v6 = *(v1 + 40);
    if (v6 != v5 && *v6 == 91)
    {
      *(v1 + 40) = v6 + 1;
      sub_2685C01A0();
      v7 = 1;
      while (1)
      {
        v8 = *(v1 + 40);
        if (v8 == v5)
        {
          break;
        }

        v9 = *v8;
        if (v9 == 93)
        {
          *(v1 + 40) = v8 + 1;
          sub_2685C01A0();
          return;
        }

        if ((v7 & 1) == 0)
        {
          for (; v9 <= 0x23; v9 = *v8)
          {
            if (((1 << v9) & 0x100002600) != 0)
            {
              ++v8;
            }

            else
            {
              if (v9 != 35)
              {
                break;
              }

              *(v1 + 40) = ++v8;
              while (v8 != v5)
              {
                v11 = *v8++;
                v10 = v11;
                if (v11 == 10 || v10 == 13)
                {
                  goto LABEL_12;
                }
              }

              v8 = v5;
            }

LABEL_12:
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }
          }

LABEL_29:
          if (v8 == v5 || *v8 != 44)
          {
            goto LABEL_43;
          }

LABEL_42:
          ++v8;
LABEL_32:
          while (1)
          {
            *(v1 + 40) = v8;
            if (v8 == v5)
            {
              break;
            }

            v21 = *v8;
            if (v21 > 0x23)
            {
              break;
            }

            if (((1 << v21) & 0x100002600) != 0)
            {
              goto LABEL_42;
            }

            if (v21 != 35)
            {
              break;
            }

            *(v1 + 40) = ++v8;
            while (v8 != v5)
            {
              v23 = *v8++;
              v22 = v23;
              if (v23 == 10 || v22 == 13)
              {
                goto LABEL_32;
              }
            }

            v8 = v5;
          }
        }

LABEL_23:
        v12 = sub_2685C0BA8();
        if (v3)
        {
          return;
        }

        v14 = v12;
        v15 = v13;
        v16 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_2685B54B4(0, *(v16 + 2) + 1, 1, v16);
          *a1 = v16;
        }

        v19 = *(v16 + 2);
        v18 = *(v16 + 3);
        if (v19 >= v18 >> 1)
        {
          v16 = sub_2685B54B4((v18 > 1), v19 + 1, 1, v16);
        }

        v7 = 0;
        *(v16 + 2) = v19 + 1;
        v20 = &v16[16 * v19];
        *(v20 + 4) = v14;
        *(v20 + 5) = v15;
        *a1 = v16;
        v3 = 0;
      }

      if (v7)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

    v25 = sub_2685C0BA8();
    if (!v2)
    {
      v27 = v25;
      v28 = v26;
      v29 = *a1;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v29;
      if ((v30 & 1) == 0)
      {
        v29 = sub_2685B54B4(0, *(v29 + 2) + 1, 1, v29);
        *a1 = v29;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        v29 = sub_2685B54B4((v31 > 1), v32 + 1, 1, v29);
      }

      *(v29 + 2) = v32 + 1;
      v33 = &v29[16 * v32];
      *(v33 + 4) = v27;
      *(v33 + 5) = v28;
      *a1 = v29;
    }
  }
}

uint64_t sub_26863EC44(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_2685C01A0();
  v6 = *(v2 + 40);
  if (v6 == *(v2 + 48) || *v6 != 58)
  {
    sub_2685C1CBC();
    swift_allocError();
    *v11 = 0;
    return swift_willThrow();
  }

  else
  {
    *(v2 + 40) = v6 + 1;
    sub_2685C01A0();
    result = sub_2685C0DB8();
    if (!v3)
    {
      v9 = result;
      v10 = v8;
      result = a2(*a1, a1[1]);
      *a1 = v9;
      a1[1] = v10;
    }
  }

  return result;
}

void sub_26863ED00(char **a1)
{
  sub_2685C01A0();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  if (v4 == v5 || *v4 != 58)
  {
LABEL_27:
    sub_2685C1CBC();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
  }

  else
  {
    *(v1 + 40) = v4 + 1;
    sub_2685C01A0();
    v6 = *(v1 + 40);
    if (v6 == v5 || *v6 != 91)
    {
      v8 = sub_2685C0DB8();
      if (!v2)
      {
        v10 = v8;
        v11 = v9;
        v12 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_268665F44(0, *(v12 + 2) + 1, 1, v12);
          *a1 = v12;
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        if (v15 >= v14 >> 1)
        {
          v12 = sub_268665F44((v14 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 2) = v15 + 1;
        v16 = &v12[16 * v15];
        *(v16 + 4) = v10;
        *(v16 + 5) = v11;
        *a1 = v12;
      }
    }

    else
    {
      *(v1 + 40) = v6 + 1;
      sub_2685C01A0();
      v7 = *(v1 + 40);
      if (v7 != v5 && *v7 == 93)
      {
LABEL_7:
        *(v1 + 40) = v7 + 1;
        sub_2685C01A0();
        return;
      }

      v17 = sub_2685C0DB8();
      if (!v2)
      {
        v19 = v17;
        v20 = v18;
        v21 = *a1;
        v22 = swift_isUniquelyReferenced_nonNull_native();
        *a1 = v21;
        if ((v22 & 1) == 0)
        {
          v21 = sub_268665F44(0, *(v21 + 2) + 1, 1, v21);
          *a1 = v21;
        }

        v23 = *(v21 + 2);
        v24 = *(v21 + 3);
        v25 = v23 + 1;
        if (v23 >= v24 >> 1)
        {
          v39 = v23 + 1;
          v35 = v21;
          v36 = *(v21 + 2);
          v37 = sub_268665F44((v24 > 1), v23 + 1, 1, v35);
          v23 = v36;
          v25 = v39;
          v21 = v37;
        }

        while (1)
        {
          *(v21 + 2) = v25;
          v26 = &v21[16 * v23];
          *(v26 + 4) = v19;
          *(v26 + 5) = v20;
          *a1 = v21;
          v7 = *(v1 + 40);
          if (v7 != v5 && *v7 == 93)
          {
            goto LABEL_7;
          }

          sub_2685C01A0();
          v27 = *(v1 + 40);
          if (v27 == v5 || *v27 != 44)
          {
            goto LABEL_27;
          }

          *(v1 + 40) = v27 + 1;
          sub_2685C01A0();
          v19 = sub_2685C0DB8();
          v20 = v28;
          v21 = *a1;
          v29 = swift_isUniquelyReferenced_nonNull_native();
          *a1 = v21;
          if ((v29 & 1) == 0)
          {
            v21 = sub_268665F44(0, *(v21 + 2) + 1, 1, v21);
            *a1 = v21;
          }

          v23 = *(v21 + 2);
          v30 = *(v21 + 3);
          v25 = v23 + 1;
          if (v23 >= v30 >> 1)
          {
            v38 = v23 + 1;
            v31 = v21;
            v32 = *(v21 + 2);
            v33 = sub_268665F44((v30 > 1), v23 + 1, 1, v31);
            v23 = v32;
            v25 = v38;
            v21 = v33;
            *a1 = v33;
          }
        }
      }
    }
  }
}