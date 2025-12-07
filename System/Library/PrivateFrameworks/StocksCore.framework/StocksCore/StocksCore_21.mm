unint64_t sub_1DAC36D1C()
{
  result = qword_1ECBE9360;
  if (!qword_1ECBE9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9360);
  }

  return result;
}

unint64_t sub_1DAC36D74()
{
  result = qword_1EE124FC0;
  if (!qword_1EE124FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FC0);
  }

  return result;
}

unint64_t sub_1DAC36DCC()
{
  result = qword_1EE124FC8;
  if (!qword_1EE124FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FC8);
  }

  return result;
}

unint64_t sub_1DAC36E20(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACBA1B4();

  if (v2 >= 0x3B)
  {
    return 59;
  }

  else
  {
    return v2;
  }
}

double sub_1DAC36E74(double a1, double a2)
{
  v2 = a2 - a1;
  result = a1 / v2;
  if (v2 <= 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t dispatch thunk of StocksIntentHandlerType.handle(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DAA94754;

  return v9(a1, a2, a3);
}

unint64_t sub_1DAC36FC8()
{
  result = qword_1ECBE9368;
  if (!qword_1ECBE9368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9368);
  }

  return result;
}

BOOL sub_1DAC3701C(_BOOL8 result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  if (v2 != v3 || result == a2 || v2 == 0)
  {
    return v2 == v3;
  }

  v6 = v2 - 1;
  if (v2 < v2 - 1)
  {
    v6 = *(result + 16);
  }

  if (v6 > 1)
  {
    v7 = v6 & 0x7FFFFFFFFFFFFFFELL;
    v8 = v7;
    do
    {
      v8 -= 2;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
  }

  v9 = v2 - v7;
  while (v9)
  {
    if (!--v9)
    {
      return v2 == v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC37080(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DAC37150(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_1DAAD4C70(v3, v8);
        sub_1DAAD4C70(v4, v7);
        v5 = sub_1DAC78654(v8, v7);
        sub_1DAAD4D7C(v7);
        sub_1DAAD4D7C(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v4 += 56;
        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1DAC37210(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 56)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a1 + i + 80);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 56);
      v11 = *(a2 + i + 64);
      v12 = *(a2 + i + 72);
      v13 = *(a2 + i + 80);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      if (v4 == v9 && v5 == v10)
      {
        if (v6 != v11)
        {
          return 0;
        }
      }

      else
      {
        v14 = sub_1DACBA174();
        result = 0;
        if ((v14 & 1) == 0 || v6 != v11)
        {
          return result;
        }
      }

      if ((v7 != v12 || v8 != v13) && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DAC3736C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = a2;
  if (result == a2)
  {
    return 1;
  }

  v4 = 0;
  v20 = result;
  while (v2)
  {
    v26 = v4;
    v27 = v2;
    v6 = *(result + v4 + 48);
    v7 = *(result + v4 + 56);
    v8 = *(result + v4 + 64);
    v9 = *(result + v4 + 72);
    v23 = *(result + v4 + 80);
    v30 = *(result + v4 + 88);
    v10 = *(result + v4 + 104);
    v28 = *(result + v4 + 112);
    v11 = *(v3 + v4 + 48);
    v12 = *(v3 + v4 + 56);
    v13 = *(v3 + v4 + 64);
    v14 = *(v3 + v4 + 72);
    v22 = *(v3 + v4 + 80);
    v29 = *(v3 + v4 + 88);
    v15 = *(v3 + v4 + 104);
    v24 = *(v3 + v4 + 96);
    v25 = *(result + v4 + 96);
    v31 = *(v3 + v4 + 112);
    if ((*(result + v4 + 32) != *(v3 + v4 + 32) || *(result + v4 + 40) != *(v3 + v4 + 40)) && (sub_1DACBA174() & 1) == 0 || (v6 != v11 || v7 != v12) && (sub_1DACBA174() & 1) == 0 || (v8 != v13 || v9 != v14) && (sub_1DACBA174() & 1) == 0)
    {
      return 0;
    }

    if (v10)
    {
      if (!v15 || (v25 != v24 || v10 != v15) && (sub_1DACBA174() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    if (v30)
    {
      v16 = v31;
      if (!v29 || (v23 != v22 || v30 != v29) && (sub_1DACBA174() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v16 = v31;
      if (v29)
      {
        return 0;
      }
    }

    if (v28 > 3)
    {
      if (v28 > 5)
      {
        if (v28 == 6)
        {
          v17 = 0xE500000000000000;
          v18 = 0x5845444E49;
          if (v16 <= 3)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v18 = 0x465F4C415554554DLL;
          v17 = 0xEB00000000444E55;
          if (v16 <= 3)
          {
LABEL_59:
            if (v16 > 1)
            {
              if (v16 == 2)
              {
                v19 = 0xEF59434E45525255;
                if (v18 != 0x435F4F5450595243)
                {
                  goto LABEL_5;
                }
              }

              else
              {
                v19 = 0xE600000000000000;
                if (v18 != 0x595449555145)
                {
                  goto LABEL_5;
                }
              }
            }

            else if (v16)
            {
              v19 = 0xE800000000000000;
              if (v18 != 0x59434E4552525543)
              {
                goto LABEL_5;
              }
            }

            else
            {
              v19 = 0xE700000000000000;
              if (v18 != 0x6E776F6E6B6E75)
              {
                goto LABEL_5;
              }
            }

            goto LABEL_73;
          }
        }
      }

      else if (v28 == 4)
      {
        v17 = 0xE300000000000000;
        v18 = 4609093;
        if (v16 <= 3)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        v18 = 0x53455255545546;
        if (v16 <= 3)
        {
          goto LABEL_59;
        }
      }
    }

    else if (v28 > 1)
    {
      if (v28 == 2)
      {
        v18 = 0x435F4F5450595243;
        v17 = 0xEF59434E45525255;
        if (v16 <= 3)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v17 = 0xE600000000000000;
        v18 = 0x595449555145;
        if (v16 <= 3)
        {
          goto LABEL_59;
        }
      }
    }

    else if (v28)
    {
      v17 = 0xE800000000000000;
      v18 = 0x59434E4552525543;
      if (v16 <= 3)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v17 = 0xE700000000000000;
      v18 = 0x6E776F6E6B6E75;
      if (v16 <= 3)
      {
        goto LABEL_59;
      }
    }

    if (v16 > 5)
    {
      if (v16 == 6)
      {
        v19 = 0xE500000000000000;
        if (v18 != 0x5845444E49)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v19 = 0xEB00000000444E55;
        if (v18 != 0x465F4C415554554DLL)
        {
          goto LABEL_5;
        }
      }
    }

    else if (v16 == 4)
    {
      v19 = 0xE300000000000000;
      if (v18 != 4609093)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v18 != 0x53455255545546)
      {
        goto LABEL_5;
      }
    }

LABEL_73:
    if (v17 != v19)
    {
LABEL_5:
      v5 = sub_1DACBA174();

      if ((v5 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_6;
    }

LABEL_6:
    v4 = v26 + 88;
    v2 = v27 - 1;
    result = v20;
    v3 = a2;
    if (v27 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC377F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1DACBA174();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1DAC378B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v5 = *(a1 + v3 + 96);
      v6 = *(a2 + v3 + 96);
      if (*(a1 + v3 + 40))
      {
        if (!*(a2 + v3 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 32) == *(a2 + v3 + 32))
        {
          v7 = *(a2 + v3 + 40);
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 56))
      {
        if (!*(a2 + v3 + 56))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 48) == *(a2 + v3 + 48))
        {
          v8 = *(a2 + v3 + 56);
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 72))
      {
        if (!*(a2 + v3 + 72))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 64) == *(a2 + v3 + 64))
        {
          v9 = *(a2 + v3 + 72);
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 88))
      {
        if (v5 == v6)
        {
          v10 = *(a2 + v3 + 88);
        }

        else
        {
          v10 = 0;
        }

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v11 = 0;
        if ((*(a2 + v3 + 88) & 1) != 0 || *(a1 + v3 + 80) != *(a2 + v3 + 80) || v5 != v6)
        {
          return v11;
        }
      }

      if (*(a1 + v3 + 112))
      {
        if (!*(a2 + v3 + 112))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 104) == *(a2 + v3 + 104))
        {
          v4 = *(a2 + v3 + 112);
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      v3 += 88;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1DAC379E4(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7 != v8)
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v22[87] = v5;
  v22[88] = v6;
  v22[79] = v8;
  v22[80] = v2;
  v22[77] = v3;
  v22[78] = v4;
  v9 = (MEMORY[0x1EEE9AC00](a1) + 32);
  v11 = (v10 + 32);
  for (i = v12 - 1; ; --i)
  {
    memcpy(__dst, v9, sizeof(__dst));
    memcpy(v18, v9, sizeof(v18));
    memcpy(v20, v11, sizeof(v20));
    memcpy(__src, v11, sizeof(__src));
    sub_1DAC3CD28(__dst, v16);
    sub_1DAC3CD28(v20, v16);
    v14 = _s10StocksCore13PaywallConfigV2eeoiySbAC_ACtFZ_0(v18);
    memcpy(v21, __src, sizeof(v21));
    sub_1DAC3CD84(v21);
    memcpy(v22, v18, 0x288uLL);
    sub_1DAC3CD84(v22);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v11 += 648;
    v9 += 648;
  }

  return 1;
}

uint64_t sub_1DAC37B3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    if (a1 != a2)
    {
      v4 = 0;
      v15 = a1;
      while (1)
      {
        v5 = *(a1 + v4 + 48);
        v6 = *(a1 + v4 + 56);
        v7 = *(a1 + v4 + 64);
        v41 = *(a1 + v4 + 80);
        v42 = *(a1 + v4 + 72);
        v40 = *(a1 + v4 + 88);
        v38 = *(a1 + v4 + 96);
        v37 = *(a1 + v4 + 104);
        v34 = *(a1 + v4 + 112);
        v31 = *(a1 + v4 + 128);
        v32 = *(a1 + v4 + 120);
        v27 = *(a1 + v4 + 144);
        v28 = *(a1 + v4 + 136);
        v23 = *(a1 + v4 + 160);
        v24 = *(a1 + v4 + 152);
        v19 = *(a1 + v4 + 176);
        v20 = *(a1 + v4 + 168);
        v9 = *(v3 + v4 + 48);
        v8 = *(v3 + v4 + 56);
        v10 = *(v3 + v4 + 64);
        v11 = *(v3 + v4 + 72);
        v12 = *(v3 + v4 + 80);
        v39 = *(v3 + v4 + 88);
        v36 = *(v3 + v4 + 96);
        v35 = *(v3 + v4 + 104);
        v33 = *(v3 + v4 + 112);
        v29 = *(v3 + v4 + 128);
        v30 = *(v3 + v4 + 120);
        v25 = *(v3 + v4 + 144);
        v26 = *(v3 + v4 + 136);
        v21 = *(v3 + v4 + 160);
        v22 = *(v3 + v4 + 152);
        v17 = *(v3 + v4 + 176);
        v18 = *(v3 + v4 + 168);
        if ((*(a1 + v4 + 32) != *(v3 + v4 + 32) || *(a1 + v4 + 40) != *(v3 + v4 + 40)) && (sub_1DACBA174() & 1) == 0)
        {
          break;
        }

        if ((v5 != v9 || v6 != v8) && (sub_1DACBA174() & 1) == 0 || (v7 != v10 || v42 != v11) && (sub_1DACBA174() & 1) == 0 || (v41 != v12 || v40 != v39) && (sub_1DACBA174() & 1) == 0)
        {
          break;
        }

        if (v38 == v36 && v37 == v35)
        {
          if (v34 != v33)
          {
            return 0;
          }
        }

        else
        {
          v13 = sub_1DACBA174();
          result = 0;
          if (v13 & 1) == 0 || ((v34 ^ v33))
          {
            return result;
          }
        }

        if ((v32 != v30 || v31 != v29) && (sub_1DACBA174() & 1) == 0 || (v28 != v26 || v27 != v25) && (sub_1DACBA174() & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_1DACBA174() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_1DACBA174() & 1) == 0)
        {
          break;
        }

        v4 += 152;
        --v2;
        a1 = v15;
        v3 = a2;
        if (!v2)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DAC37DEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 80)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 72);
      v13 = *(a1 + i + 64);
      v21 = *(a1 + i + 88);
      v22 = *(a1 + i + 80);
      v18 = *(a1 + i + 104);
      v19 = *(a1 + i + 96);
      v8 = *(a2 + i + 48);
      v7 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v9 = *(a2 + i + 72);
      v11 = *(a2 + i + 80);
      v20 = *(a2 + i + 88);
      v16 = *(a2 + i + 104);
      v17 = *(a2 + i + 96);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      if ((v4 != v8 || v5 != v7) && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v9 || (v13 != v10 || v6 != v9) && (sub_1DACBA174() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if ((v22 != v11 || v21 != v20) && (sub_1DACBA174() & 1) == 0 || (v19 != v17 || v18 != v16) && (sub_1DACBA174() & 1) == 0)
      {
        break;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DAC37F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    if (a1 != a2)
    {
      v4 = 0;
      v14 = a1;
      while (1)
      {
        v5 = *(a1 + v4 + 48);
        v6 = *(a1 + v4 + 56);
        v7 = *(a1 + v4 + 72);
        v8 = *(a1 + v4 + 80);
        v10 = *(v3 + v4 + 48);
        v9 = *(v3 + v4 + 56);
        v11 = *(v3 + v4 + 72);
        v16 = *(v3 + v4 + 64);
        v17 = *(a1 + v4 + 64);
        v12 = *(v3 + v4 + 80);
        if ((*(a1 + v4 + 32) != *(v3 + v4 + 32) || *(a1 + v4 + 40) != *(v3 + v4 + 40)) && (sub_1DACBA174() & 1) == 0)
        {
          break;
        }

        if (v6)
        {
          if (!v9 || (v5 != v10 || v6 != v9) && (sub_1DACBA174() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v9)
        {
          return 0;
        }

        if (v7)
        {
          if (!v11 || (v17 != v16 || v7 != v11) && (sub_1DACBA174() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v11)
        {
          return 0;
        }

        if (v8 == 2)
        {
          if (v12 != 2)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (v12 == 2 || ((v12 ^ v8) & 1) != 0)
          {
            return result;
          }
        }

        v4 += 56;
        --v2;
        a1 = v14;
        v3 = a2;
        if (!v2)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DAC38114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v17 = *(a1 + 64);
    v7 = *(a2 + 48);
    v8 = *(a2 + 56);
    v9 = *(a2 + 64);
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (sub_1DACBA174() & 1) != 0)
    {
      v10 = 0;
      v11 = v2 - 1;
      v12 = v17;
      while (1)
      {
        if (v5 > 1u)
        {
          if (v5 == 2)
          {
            v13 = 0xE400000000000000;
            v14 = 1263681860;
          }

          else
          {
            v13 = 0xE800000000000000;
            v14 = 0x4554414C504D4554;
          }
        }

        else if (v5)
        {
          v13 = 0xE500000000000000;
          v14 = 0x544847494CLL;
        }

        else
        {
          v13 = 0xE700000000000000;
          v14 = 0x6E776F6E6B6E75;
        }

        if (v7 > 1u)
        {
          if (v7 == 2)
          {
            v15 = 0xE400000000000000;
            if (v14 != 1263681860)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v15 = 0xE800000000000000;
            if (v14 != 0x4554414C504D4554)
            {
              goto LABEL_31;
            }
          }
        }

        else if (v7)
        {
          v15 = 0xE500000000000000;
          if (v14 != 0x544847494CLL)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v15 = 0xE700000000000000;
          if (v14 != 0x6E776F6E6B6E75)
          {
            goto LABEL_31;
          }
        }

        if (v13 == v15)
        {
          sub_1DACB71E4();

          if (v12)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }

LABEL_31:
        v18 = sub_1DACBA174();
        sub_1DACB71E4();
        sub_1DACB71E4();

        if ((v18 & 1) == 0)
        {

          return 0;
        }

        if (v12)
        {
LABEL_29:
          if ((v9 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_34;
        }

LABEL_33:
        if (v9 & 1 | (v6 != v8))
        {
          return 0;
        }

LABEL_34:
        if (!v11)
        {
          return 1;
        }

        v5 = *(a1 + v10 + 88);
        v6 = *(a1 + v10 + 96);
        v12 = *(a1 + v10 + 104);
        v7 = *(a2 + v10 + 88);
        v8 = *(a2 + v10 + 96);
        v9 = *(a2 + v10 + 104);
        if ((*(a1 + v10 + 72) != *(a2 + v10 + 72) || *(a1 + v10 + 80) != *(a2 + v10 + 80)) && (sub_1DACBA174() & 1) == 0)
        {
          return 0;
        }

        v10 += 40;
        --v11;
      }
    }
  }

  return 0;
}

uint64_t sub_1DAC383D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00646579616C65;
  v3 = 0x44636972656E6567;
  v4 = a1;
  v5 = 0xEF656D69746C6165;
  v6 = 0x6E776F6E6B6E75;
  if (a1 == 5)
  {
    v6 = 0x52636972656E6567;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v7 = 0xD000000000000010;
  v8 = 0x80000001DACE2C10;
  if (a1 != 3)
  {
    v7 = 0x52544B4D6573796ELL;
    v8 = 0xEF656D69746C6165;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0x655271616473616ELL;
  v10 = 0xEE00656D69746C61;
  if (a1 != 1)
  {
    v9 = 0x6C6165526573796ELL;
    v10 = 0xEC000000656D6974;
  }

  if (!a1)
  {
    v9 = 0x44636972656E6567;
    v10 = 0xEE00646579616C65;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE00656D69746C61;
        if (v11 != 0x655271616473616ELL)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xEC000000656D6974;
        if (v11 != 0x6C6165526573796ELL)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF656D69746C6165;
        if (v11 != 0x52636972656E6567)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x80000001DACE2C10;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v3 = 0x52544B4D6573796ELL;
    v2 = 0xEF656D69746C6165;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = sub_1DACBA174();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_1DAC38650(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  v3 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v6 = 0x756F726765726F66;
      v7 = 0xEF726F6C6F43646ELL;
    }

    else
    {
      v6 = 0xD000000000000018;
      if (v3 == 4)
      {
        v7 = 0x80000001DACE1850;
      }

      else
      {
        v7 = 0x80000001DACE1D00;
      }
    }
  }

  else
  {
    v4 = 0xE500000000000000;
    v5 = 0x6C6562616CLL;
    if (a1 != 1)
    {
      v5 = 0x756F72676B636162;
      v4 = 0xEF726F6C6F43646ELL;
    }

    if (a1)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1701869940;
    }

    if (v3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0xE400000000000000;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v8 = 0xE400000000000000;
      goto LABEL_27;
    }

    if (a2 == 1)
    {
      v8 = 0xE500000000000000;
      v2 = 0x6C6562616CLL;
      goto LABEL_27;
    }

    v9 = 1801675106;
LABEL_26:
    v2 = v9 | 0x756F726700000000;
    v8 = 0xEF726F6C6F43646ELL;
    goto LABEL_27;
  }

  if (a2 == 3)
  {
    v9 = 1701998438;
    goto LABEL_26;
  }

  v2 = 0xD000000000000018;
  if (a2 == 4)
  {
    v8 = 0x80000001DACE1850;
  }

  else
  {
    v8 = 0x80000001DACE1D00;
  }

LABEL_27:
  if (v6 == v2 && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DACBA174();
  }

  return v10 & 1;
}

uint64_t sub_1DAC38828(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1701667182;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x737574617473;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x695F6D6165727473;
    }

    else
    {
      v3 = 0x65706F5F7478656ELL;
    }

    if (v2 == 3)
    {
      v4 = 0xEF6C61767265746ELL;
    }

    else
    {
      v4 = 0xE90000000000006ELL;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 1701667182;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE600000000000000;
    if (v3 != 0x737574617473)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEF6C61767265746ELL;
    if (v3 != 0x695F6D6165727473)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE90000000000006ELL;
    if (v3 != 0x65706F5F7478656ELL)
    {
LABEL_34:
      v7 = sub_1DACBA174();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1DAC389C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0x80000001DACE2990;
    v10 = 0xD000000000000022;
    if (a1 == 1)
    {
      v10 = 0xD000000000000026;
    }

    else
    {
      v9 = 0x80000001DACE29C0;
    }

    if (a1)
    {
      v7 = v10;
    }

    else
    {
      v7 = 0xD000000000000020;
    }

    if (v2)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0x80000001DACE2960;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    if (a1 == 5)
    {
      v4 = 0xD000000000000025;
    }

    else
    {
      v4 = 0x4E574F4E4B4E55;
    }

    if (a1 == 5)
    {
      v3 = 0x80000001DACE2A50;
    }

    v5 = 0x80000001DACE29F0;
    if (a1 == 3)
    {
      v6 = 0xD000000000000026;
    }

    else
    {
      v6 = 0xD000000000000025;
    }

    if (a1 != 3)
    {
      v5 = 0x80000001DACE2A20;
    }

    if (a1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 4)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0x80000001DACE2960;
      if (v7 != 0xD000000000000020)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    if (a2 != 1)
    {
      v12 = 0x80000001DACE29C0;
      if (v7 != 0xD000000000000022)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    v11 = "DataSource_Quote_NasdaqLS_FreeRealtime";
    goto LABEL_34;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v11 = "DataSource_Quote_NYSEArca_FreeRealtime";
LABEL_34:
      v12 = (v11 - 32) | 0x8000000000000000;
      if (v7 != 0xD000000000000026)
      {
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    v13 = "DataSource_Quote_NYSEMKT_FreeRealtime";
LABEL_43:
    v12 = (v13 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000025)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (a2 == 5)
  {
    v13 = "DataSource_Quote_Generic_FreeRealtime";
    goto LABEL_43;
  }

  v12 = 0xE700000000000000;
  if (v7 != 0x4E574F4E4B4E55)
  {
LABEL_48:
    v14 = sub_1DACBA174();
    goto LABEL_49;
  }

LABEL_46:
  if (v8 != v12)
  {
    goto LABEL_48;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_1DAC38BC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000656D616E5FLL;
  v3 = 0x65676E6168637865;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1701869940;
    }

    else
    {
      v5 = 0x65676E6168637865;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xED0000656D616E5FLL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x616E5F74726F6873;
    v6 = 0xEA0000000000656DLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 1701667182;
    }

    else
    {
      v5 = 0x6C6F626D7973;
    }

    if (v4 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  v7 = 0x616E5F74726F6873;
  v8 = 0xEA0000000000656DLL;
  v9 = 0xE400000000000000;
  v10 = 1701667182;
  if (a2 != 3)
  {
    v10 = 0x6C6F626D7973;
    v9 = 0xE600000000000000;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 1701869940;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DACBA174();
  }

  return v13 & 1;
}

uint64_t sub_1DAC38D30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = "icleString";
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000021;
    }

    else
    {
      v6 = 0xD00000000000001ALL;
    }

    if (v4)
    {
      v5 = "anfEmbedConfigurationAsset";
    }

    else
    {
      v5 = "icleString";
    }
  }

  else if (a1 == 2)
  {
    v5 = "klistedChannelIds";
    v6 = 0xD000000000000017;
  }

  else if (a1 == 3)
  {
    v5 = "webEmbedContentBlockers";
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = "webEmbedContentBlockerOverrides";
    v6 = 0xD000000000000019;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD000000000000021;
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }

    if (a2)
    {
      v3 = "anfEmbedConfigurationAsset";
    }
  }

  else if (a2 == 2)
  {
    v3 = "klistedChannelIds";
  }

  else if (a2 == 3)
  {
    v3 = "webEmbedContentBlockers";
    v2 = 0xD00000000000001FLL;
  }

  else
  {
    v3 = "webEmbedContentBlockerOverrides";
    v2 = 0xD000000000000019;
  }

  if (v6 == v2 && (v5 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DACBA174();
  }

  return v7 & 1;
}

uint64_t sub_1DAC38EA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x65736F6C63;
    }

    else
    {
      v4 = 1852141679;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1751607656;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 7827308;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x656D756C6F76;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x65736F6C63;
    }

    else
    {
      v9 = 1852141679;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7827308;
    if (a2 != 3)
    {
      v6 = 0x656D756C6F76;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1751607656;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
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
    v10 = sub_1DACBA174();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DAC38FF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000617465;
  v3 = 0x6D2D7365756C6176;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x736569726573;
    }

    else
    {
      v5 = 1635018093;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x636E657265666572;
    }

    else
    {
      v5 = 0x6D2D7365756C6176;
    }

    if (v4)
    {
      v6 = 0xEE006174656D2D65;
    }

    else
    {
      v6 = 0xEB00000000617465;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x736569726573;
  if (a2 != 2)
  {
    v8 = 1635018093;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0x636E657265666572;
    v2 = 0xEE006174656D2D65;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC3913C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x72756769666E6F63;
    }

    else
    {
      v3 = 0x4E64726F6365725FLL;
    }

    if (v2)
    {
      v4 = 0xED00006E6F697461;
    }

    else
    {
      v4 = 0xEB00000000656D61;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001DACE2AB0;
    v3 = 0xD000000000000014;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD00000000000001DLL;
    }

    if (v2 == 3)
    {
      v4 = 0x80000001DACE2AD0;
    }

    else
    {
      v4 = 0x80000001DACE2AF0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x72756769666E6F63;
    }

    else
    {
      v9 = 0x4E64726F6365725FLL;
    }

    if (a2)
    {
      v8 = 0xED00006E6F697461;
    }

    else
    {
      v8 = 0xEB00000000656D61;
    }

    if (v3 != v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v5 = 0x80000001DACE2AD0;
    v6 = 0xD000000000000016;
    if (a2 != 3)
    {
      v6 = 0xD00000000000001DLL;
      v5 = 0x80000001DACE2AF0;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000014;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001DACE2AB0;
    }

    else
    {
      v8 = v5;
    }

    if (v3 != v7)
    {
      goto LABEL_36;
    }
  }

  if (v4 != v8)
  {
LABEL_36:
    v10 = sub_1DACBA174();
    goto LABEL_37;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_1DAC392DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x6D614E74726F6873;
  v5 = 0xE900000000000065;
  v6 = 0x4E746361706D6F63;
  v7 = 0xEB00000000656D61;
  if (a1 != 4)
  {
    v6 = 0x79546C6F626D7973;
    v7 = 0xEA00000000006570;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1701667182;
  if (a1 != 1)
  {
    v9 = 0x6C6F626D7973;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x65676E6168637865;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x6D614E74726F6873)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000656D61;
      if (v10 != 0x4E746361706D6F63)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006570;
      if (v10 != 0x79546C6F626D7973)
      {
LABEL_34:
        v13 = sub_1DACBA174();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701667182)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6C6F626D7973)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x65676E6168637865)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1DAC394CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E6F697461727564;
    }

    else
    {
      v5 = 0x69736F5079616C70;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEC0000006E6F6974;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 7107189;
    }

    else
    {
      v5 = 0x696669746E656469;
    }

    if (v4)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x6E6F697461727564;
  if (a2 != 2)
  {
    v8 = 0x69736F5079616C70;
    v7 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    v3 = 7107189;
    v2 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC39610(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1852141679;
  v6 = 0x636E657265666572;
  v7 = 0xED00006574614465;
  if (a1 != 4)
  {
    v6 = 0x656D756C6F76;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE400000000000000;
  v9 = 1751607656;
  if (a1 != 1)
  {
    v9 = 7827308;
    v8 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x65736F6C63;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1852141679)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xED00006574614465;
      if (v10 != 0x636E657265666572)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656D756C6F76)
      {
LABEL_34:
        v13 = sub_1DACBA174();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1751607656)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7827308)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x65736F6C63)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1DAC397D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x676E615265746164;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x695474656B72616DLL;
    }

    else
    {
      v5 = 0x73756F6976657270;
    }

    if (v4 == 2)
    {
      v6 = 0xEE00656E6F5A656DLL;
    }

    else
    {
      v6 = 0xED000065736F6C43;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x73656972746E65;
    }

    else
    {
      v5 = 0x676E615265746164;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  v7 = 0x695474656B72616DLL;
  v8 = 0xEE00656E6F5A656DLL;
  if (a2 != 2)
  {
    v7 = 0x73756F6976657270;
    v8 = 0xED000065736F6C43;
  }

  if (a2)
  {
    v3 = 0x73656972746E65;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC39948(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x5845444E49;
  if (a1 != 6)
  {
    v5 = 0x465F4C415554554DLL;
    v4 = 0xEB00000000444E55;
  }

  v6 = 0xE300000000000000;
  v7 = 4609093;
  if (a1 != 4)
  {
    v7 = 0x53455255545546;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x435F4F5450595243;
  v9 = 0xEF59434E45525255;
  if (a1 != 2)
  {
    v8 = 0x595449555145;
    v9 = 0xE600000000000000;
  }

  v10 = 0x59434E4552525543;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x6E776F6E6B6E75;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x5845444E49)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEB00000000444E55;
        if (v11 != 0x465F4C415554554DLL)
        {
LABEL_45:
          v14 = sub_1DACBA174();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE300000000000000;
      if (v11 != 4609093)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x53455255545546)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEF59434E45525255;
      if (v11 != 0x435F4F5450595243)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x595449555145)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x59434E4552525543)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x6E776F6E6B6E75)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_1DAC39BC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1313165391;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x4B52414D5F455250;
    }

    else
    {
      v4 = 0x4F485F5245544641;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000005445;
    }

    else
    {
      v5 = 0xEB00000000535255;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4445534F4C43;
    }

    else
    {
      v4 = 1313165391;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x4B52414D5F455250;
  v8 = 0xEA00000000005445;
  if (a2 != 2)
  {
    v7 = 0x4F485F5245544641;
    v8 = 0xEB00000000535255;
  }

  if (a2)
  {
    v2 = 0x4445534F4C43;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC39D14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF444559414C4544;
  v3 = 0x5F434952454E4547;
  v4 = a1;
  if (a1 > 2u)
  {
    v9 = 0x80000001DACE1CB0;
    v10 = 0xD000000000000011;
    if (a1 != 4)
    {
      v10 = 0xD000000000000010;
      v9 = 0x80000001DACE1CD0;
    }

    if (a1 == 3)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v10;
    }

    if (v4 == 3)
    {
      v8 = 0x80000001DACE1C90;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v5 = 0x525F51414453414ELL;
    v6 = 0xEF454D49544C4145;
    if (a1 != 1)
    {
      v5 = 0x4145525F4553594ELL;
      v6 = 0xED0000454D49544CLL;
    }

    if (a1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x5F434952454E4547;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0xEF444559414C4544;
    }
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v11 = 0xD000000000000011;
      }

      else
      {
        v11 = 0xD000000000000010;
      }

      if (a2 == 4)
      {
        v2 = 0x80000001DACE1CB0;
      }

      else
      {
        v2 = 0x80000001DACE1CD0;
      }

      if (v7 != v11)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0x80000001DACE1C90;
    v3 = 0xD000000000000012;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xEF454D49544C4145;
      if (v7 != 0x525F51414453414ELL)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 = 0xED0000454D49544CLL;
      if (v7 != 0x4145525F4553594ELL)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_34;
  }

  if (v7 != v3)
  {
LABEL_37:
    v12 = sub_1DACBA174();
    goto LABEL_38;
  }

LABEL_34:
  if (v8 != v2)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1DAC39F3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00004449797469;
  v3 = 0x746E456B636F7473;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E6174726F706D69;
    }

    else
    {
      v5 = 0x726F697270;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000006563;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C6F626D7973;
    }

    else
    {
      v5 = 0x746E456B636F7473;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xED00004449797469;
    }
  }

  v7 = 0x6E6174726F706D69;
  v8 = 0xEA00000000006563;
  if (a2 != 2)
  {
    v7 = 0x726F697270;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 0x6C6F626D7973;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC3A080(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x446873696C627570;
    }

    else
    {
      v4 = 0x72656469766F7270;
    }

    if (v2)
    {
      v3 = 0xEB00000000657461;
    }

    else
    {
      v3 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x7972616D6D7573;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x656C746974;
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 7107189;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x446873696C627570;
    }

    else
    {
      v9 = 0x72656469766F7270;
    }

    if (a2)
    {
      v8 = 0xEB00000000657461;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x656C746974;
    if (a2 != 3)
    {
      v6 = 7107189;
      v5 = 0xE300000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x7972616D6D7573;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
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
    v10 = sub_1DACBA174();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DAC3A204(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00726F74636146;
  v3 = 0x6E6F6974756C6964;
  v4 = a1;
  v5 = 0x6573614272657375;
  v6 = 0xEC000000656E696CLL;
  if (a1 == 5)
  {
    v5 = 0xD000000000000014;
    v6 = 0x80000001DACE27C0;
  }

  v7 = 0xD000000000000015;
  if (a1 == 3)
  {
    v7 = 0x46676E6964646170;
    v8 = 0xED0000726F746361;
  }

  else
  {
    v8 = 0x80000001DACE27A0;
  }

  if (a1 <= 4u)
  {
    v9 = v8;
  }

  else
  {
    v7 = v5;
    v9 = v6;
  }

  v10 = 0x657469726F766166;
  v11 = 0xEE0074736F6F4264;
  if (a1 != 1)
  {
    v10 = 0x65576C61626F6C67;
    v11 = 0xEC00000074686769;
  }

  if (!a1)
  {
    v10 = 0x6E6F6974756C6964;
    v11 = 0xEE00726F74636146;
  }

  if (a1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      goto LABEL_33;
    }

    if (a2 == 1)
    {
      v2 = 0xEE0074736F6F4264;
      if (v12 != 0x657469726F766166)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v14 = 0x65576C61626F6C67;
    v15 = 1952999273;
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0xED0000726F746361;
        if (v12 != 0x46676E6964646170)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v2 = 0x80000001DACE27A0;
      v3 = 0xD000000000000015;
LABEL_33:
      if (v12 != v3)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 == 5)
    {
      v2 = 0x80000001DACE27C0;
      if (v12 != 0xD000000000000014)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v14 = 0x6573614272657375;
    v15 = 1701734764;
  }

  v2 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v12 != v14)
  {
LABEL_39:
    v16 = sub_1DACBA174();
    goto LABEL_40;
  }

LABEL_37:
  if (v13 != v2)
  {
    goto LABEL_39;
  }

  v16 = 1;
LABEL_40:

  return v16 & 1;
}

uint64_t sub_1DAC3A46C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x6365727065447369;
  v5 = 0xEC00000064657461;
  if (a1 != 5)
  {
    v4 = 0x6D6563616C706572;
    v5 = 0xED00004449746E65;
  }

  v6 = 0x5379616C70736964;
  v7 = 0xED00006C6F626D79;
  if (a1 != 3)
  {
    v6 = 0x746E456B636F7473;
    v7 = 0xED00004449797469;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
  }

  else
  {
    v6 = v4;
  }

  v8 = 0xD000000000000011;
  v9 = 0x80000001DACE2B90;
  if (a1 != 1)
  {
    v8 = 0x4E79616C70736964;
    v9 = 0xEB00000000656D61;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6C6F626D7973;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v14 = 0x80000001DACE2B90;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v14 = 0xEB00000000656D61;
        if (v10 != 0x4E79616C70736964)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      if (v10 != 0x6C6F626D7973)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_38;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v14 = 0xEC00000064657461;
      if (v10 != 0x6365727065447369)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v12 = 0x6D6563616C706572;
    v15 = 1232367205;
  }

  else
  {
    if (a2 == 3)
    {
      v12 = 0x5379616C70736964;
      v13 = 0x6C6F626D79;
      goto LABEL_37;
    }

    v12 = 0x746E456B636F7473;
    v15 = 1232696425;
  }

  v13 = v15 & 0xFFFF0000FFFFFFFFLL | 0x4400000000;
LABEL_37:
  v14 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
  if (v10 != v12)
  {
LABEL_40:
    v16 = sub_1DACBA174();
    goto LABEL_41;
  }

LABEL_38:
  if (v11 != v14)
  {
    goto LABEL_40;
  }

  v16 = 1;
LABEL_41:

  return v16 & 1;
}

uint64_t sub_1DAC3A6E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1263681860;
    }

    else
    {
      v4 = 0x4554414C504D4554;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x544847494CLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1263681860;
  if (a2 != 2)
  {
    v8 = 0x4554414C504D4554;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x544847494CLL;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
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
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC3A80C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE600000000000000;
    v14 = 0xE800000000000000;
    v15 = 0x68746E6F4D656E6FLL;
    v16 = 0x6E6F4D6565726874;
    v17 = 0xEB00000000736874;
    if (a1 != 3)
    {
      v16 = 0x68746E6F4D786973;
      v17 = 0xE900000000000073;
    }

    if (a1 != 2)
    {
      v15 = v16;
      v14 = v17;
    }

    v18 = 0x6B656557656E6FLL;
    if (a1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v18 = 0x796144656E6FLL;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v15;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v3 = 0x7261655965766966;
    v4 = 0xE900000000000073;
    v5 = 0xE800000000000000;
    v6 = 0x73726165596E6574;
    if (a1 != 9)
    {
      v6 = 7105633;
      v5 = 0xE300000000000000;
    }

    if (a1 != 8)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0x61446F5472616579;
    v8 = 0xEA00000000006574;
    v9 = 0xE700000000000000;
    v10 = 0x72616559656E6FLL;
    if (a1 != 6)
    {
      v10 = 0x73726165596F7774;
      v9 = 0xE800000000000000;
    }

    if (a1 != 5)
    {
      v7 = v10;
      v8 = v9;
    }

    if (a1 <= 7u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (v2 <= 7)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v19 = 0xE700000000000000;
        if (v11 != 0x6B656557656E6FLL)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v19 = 0xE600000000000000;
        if (v11 != 0x796144656E6FLL)
        {
          goto LABEL_62;
        }
      }

      goto LABEL_60;
    }

    if (a2 == 2)
    {
      v19 = 0xE800000000000000;
      if (v11 != 0x68746E6F4D656E6FLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 3)
    {
      v19 = 0xEB00000000736874;
      if (v11 != 0x6E6F4D6565726874)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v21 = 0x68746E6F4D786973;
LABEL_52:
    v19 = 0xE900000000000073;
    if (v11 != v21)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 <= 7u)
  {
    if (a2 == 5)
    {
      v19 = 0xEA00000000006574;
      if (v11 != 0x61446F5472616579)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    if (a2 == 6)
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x72616559656E6FLL)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }

    v19 = 0xE800000000000000;
    v20 = 1500477300;
LABEL_57:
    if (v11 != (v20 | 0x7372616500000000))
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 == 8)
  {
    v21 = 0x7261655965766966;
    goto LABEL_52;
  }

  if (a2 == 9)
  {
    v19 = 0xE800000000000000;
    v20 = 1500407156;
    goto LABEL_57;
  }

  v19 = 0xE300000000000000;
  if (v11 != 7105633)
  {
LABEL_62:
    v22 = sub_1DACBA174();
    goto LABEL_63;
  }

LABEL_60:
  if (v12 != v19)
  {
    goto LABEL_62;
  }

  v22 = 1;
LABEL_63:

  return v22 & 1;
}

uint64_t sub_1DAC3AB50(void *a1)
{
  v3 = v1;
  sub_1DAC3D380(0, &qword_1EE11F578, sub_1DAC3D120, &type metadata for SDSMetadata.Source.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3D120();
  sub_1DACBA304();
  v14 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v11[1] = *(v3 + 16);
    v13 = 1;
    sub_1DAC3D174();
    sub_1DAC3D218(&qword_1EE11FB88, sub_1DAC3D284, MEMORY[0x1E69E6300]);
    sub_1DACBA074();
    v12 = 2;
    sub_1DACBA024();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DAC3AD60()
{
  v1 = *(v0 + 16);
  sub_1DACBA284();
  sub_1DACB9404();
  if (!v1)
  {
    sub_1DACBA2A4();
    if (*(v0 + 32))
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DACBA2A4();
    return sub_1DACBA2C4();
  }

  sub_1DACBA2A4();
  sub_1DAC3C05C(v3, v1);
  if (!*(v0 + 32))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DACBA2A4();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3AE20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x736C72556F676F6CLL;
  if (v2 != 1)
  {
    v4 = 0x6C7255656D6F68;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x736C72556F676F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x6C7255656D6F68;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC3AF1C()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3AFB8(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC3B040(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC3B0D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC3C264(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAC3B108(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x736C72556F676F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6C7255656D6F68;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAC3B160()
{
  v1 = 0x736C72556F676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6C7255656D6F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t sub_1DAC3B1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC3C264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC3B1DC(uint64_t a1)
{
  v2 = sub_1DAC3D120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC3B218(uint64_t a1)
{
  v2 = sub_1DAC3D120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DAC3B254@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DAC3C2B0(a2, v6);
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

uint64_t sub_1DAC3B2B8(void *a1)
{
  v3 = v1;
  sub_1DAC3D380(0, &qword_1EE11F580, sub_1DAC3D2D8, &type metadata for SDSMetadata.SourceLogo.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3D2D8();
  sub_1DACBA304();
  v15 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v13 = 1;
    sub_1DAC3D3E8();
    sub_1DACBA0E4();
    v12 = 2;
    sub_1DACBA044();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DAC3B490(uint64_t a1)
{
  sub_1DACB9404();
  sub_1DACB9404();

  if (*(v1 + 32) == 1)
  {
    return sub_1DACBA2A4();
  }

  v3 = *(v1 + 24);
  sub_1DACBA2A4();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x1E1277D90](v4);
}

uint64_t sub_1DAC3B578(void *a1)
{
  v2 = v1;
  sub_1DAC3D380(0, &qword_1EE11F588, sub_1DAC3CC2C, &type metadata for SDSMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3CC2C();
  sub_1DACBA304();
  v9 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v9;
  v12 = *(v2 + 32);
  sub_1DAC3CCD4();
  sub_1DACBA0E4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DAC3B700()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1DACBA284();
  sub_1DACB9404();
  if (!v1)
  {
    sub_1DACBA2A4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DACBA2A4();
    return sub_1DACBA2C4();
  }

  sub_1DACBA2A4();
  sub_1DAC3C05C(v4, v1);
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DACBA2A4();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3B7C8()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3B880(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC3B924(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC3B9D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC3C580(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAC3BA08(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE400000000000000;
  v5 = 1263681860;
  if (*v1 != 2)
  {
    v5 = 0x4554414C504D4554;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x544847494CLL;
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

unint64_t sub_1DAC3BA7C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC3C5CC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAC3BAF8()
{
  v1 = 0x746E6169726176;
  if (*v0 != 1)
  {
    v1 = 0x656E696C65736162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1DAC3BB58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAC3C6A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAC3BB80(uint64_t a1)
{
  v2 = sub_1DAC3D2D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC3BBBC(uint64_t a1)
{
  v2 = sub_1DAC3D2D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DAC3BBF8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DAC3C7C0(a2, v6);
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

uint64_t sub_1DAC3BC58(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 3);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_1DACBA174()) && (sub_1DAC3A6E0(v2, v5))
  {
    if (v4)
    {
      if (v7)
      {
        return 1;
      }
    }

    else
    {
      if (v3 == v6)
      {
        v10 = v7;
      }

      else
      {
        v10 = 1;
      }

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DAC3BCF8()
{
  sub_1DACBA284();
  sub_1DAC3B490(v1);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3BD3C(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DAC3B490(v2);
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3BD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAC3BE10(uint64_t a1)
{
  v2 = sub_1DAC3CC2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC3BE4C(uint64_t a1)
{
  v2 = sub_1DAC3CC2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DAC3BE88@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DAC3CA50(a2, v6);
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

uint64_t sub_1DAC3BEEC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  sub_1DACB9404();
  if (!v3)
  {
    sub_1DACBA2A4();
    if (v4)
    {
      goto LABEL_3;
    }

    return sub_1DACBA2A4();
  }

  sub_1DACBA2A4();
  sub_1DAC3C05C(a1, v3);
  if (!v4)
  {
    return sub_1DACBA2A4();
  }

LABEL_3:
  sub_1DACBA2A4();

  return sub_1DACB9404();
}

uint64_t sub_1DAC3BFA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  sub_1DACBA284();
  sub_1DACB9404();
  if (!v2)
  {
    sub_1DACBA2A4();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1DACBA2A4();
    return sub_1DACBA2C4();
  }

  sub_1DACBA2A4();
  sub_1DAC3C05C(v5, v2);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DACBA2A4();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3C05C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E1277D70](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      sub_1DACB71E4();
      sub_1DACB9404();
      sub_1DACB9404();

      if (v7)
      {
        sub_1DACBA2A4();
      }

      else
      {
        sub_1DACBA2A4();
        if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v8 = v6;
        }

        else
        {
          v8 = 0;
        }

        MEMORY[0x1E1277D90](v8);
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL sub_1DAC3C194(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    sub_1DACB71E4();
    v7 = sub_1DAC38114(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a2[4];
  if (v8)
  {
    return v9 && (a1[3] == a2[3] && v8 == v9 || (sub_1DACBA174() & 1) != 0);
  }

  return !v9;
}

unint64_t sub_1DAC3C264(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAC3C2B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  sub_1DAC3D380(0, &qword_1EE123D08, sub_1DAC3D120, &type metadata for SDSMetadata.Source.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3D120();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v22;
  v26 = 0;
  v11 = sub_1DACB9FA4();
  v13 = v12;
  v21 = v11;
  sub_1DAC3D174();
  v25 = 1;
  sub_1DAC3D218(&qword_1EE123F98, sub_1DAC3D1C4, MEMORY[0x1E69E6330]);
  sub_1DACB9F84();
  v20 = v23;
  v24 = 2;
  v14 = sub_1DACB9F34();
  v15 = v8;
  v17 = v16;
  (*(v9 + 8))(v15, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v20;
  *v10 = v21;
  v10[1] = v13;
  v10[2] = v19;
  v10[3] = v14;
  v10[4] = v17;
  return result;
}

unint64_t sub_1DAC3C580(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DAC3C5CC(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACBA2D4();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v4 = sub_1DACBA184();
    LODWORD(v3) = sub_1DAC3C580(v4, v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
    if (v3 == 4)
    {
      v3 = 0;
    }

    else
    {
      v3 = v3;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1DAC3C6A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DACBA174() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E696C65736162 && a2 == 0xEE0074657366664FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DACBA174();

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

uint64_t sub_1DAC3C7C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1DAC3D380(0, &qword_1EE123D10, sub_1DAC3D2D8, &type metadata for SDSMetadata.SourceLogo.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3D2D8();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v21;
  v26 = 0;
  v11 = sub_1DACB9FA4();
  v13 = v12;
  v14 = v11;
  v24 = 1;
  sub_1DAC3D32C();
  sub_1DACB9FE4();
  v22 = v25;
  v23 = 2;
  v15 = sub_1DACB9F54();
  v16 = v8;
  v18 = v17;
  (*(v9 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v14;
  *(v10 + 8) = v13;
  *(v10 + 16) = v22;
  *(v10 + 24) = v15;
  *(v10 + 32) = v18 & 1;
  return result;
}

uint64_t sub_1DAC3CA50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1DAC3D380(0, &qword_1EE123D18, sub_1DAC3CC2C, &type metadata for SDSMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3CC2C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v18;
  sub_1DAC3CC80();
  sub_1DACB9FE4();
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  v14 = v15;
  v10 = v17;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = v13;
  *v9 = v14;
  *(v9 + 16) = v12;
  *(v9 + 32) = v10;
  return result;
}

unint64_t sub_1DAC3CC2C()
{
  result = qword_1EE1251B0;
  if (!qword_1EE1251B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1251B0);
  }

  return result;
}

unint64_t sub_1DAC3CC80()
{
  result = qword_1EE125158;
  if (!qword_1EE125158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125158);
  }

  return result;
}

unint64_t sub_1DAC3CCD4()
{
  result = qword_1EE123798;
  if (!qword_1EE123798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123798);
  }

  return result;
}

uint64_t sub_1DAC3CDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAC3CE40()
{
  result = qword_1EE1252B0;
  if (!qword_1EE1252B0)
  {
    sub_1DACB7AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1252B0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAC3CEBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1DAC3CF04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAC3CF6C()
{
  result = qword_1ECBE9370;
  if (!qword_1ECBE9370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9370);
  }

  return result;
}

unint64_t sub_1DAC3CFC4()
{
  result = qword_1ECBE9378;
  if (!qword_1ECBE9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9378);
  }

  return result;
}

unint64_t sub_1DAC3D01C()
{
  result = qword_1ECBE9380;
  if (!qword_1ECBE9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9380);
  }

  return result;
}

unint64_t sub_1DAC3D074()
{
  result = qword_1EE1251A0;
  if (!qword_1EE1251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1251A0);
  }

  return result;
}

unint64_t sub_1DAC3D0CC()
{
  result = qword_1EE1251A8;
  if (!qword_1EE1251A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1251A8);
  }

  return result;
}

unint64_t sub_1DAC3D120()
{
  result = qword_1EE125170;
  if (!qword_1EE125170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125170);
  }

  return result;
}

void sub_1DAC3D174()
{
  if (!qword_1EE123FA0)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123FA0);
    }
  }
}

unint64_t sub_1DAC3D1C4()
{
  result = qword_1EE125178;
  if (!qword_1EE125178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125178);
  }

  return result;
}

uint64_t sub_1DAC3D218(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DAC3D174();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC3D284()
{
  result = qword_1EE1237A8;
  if (!qword_1EE1237A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1237A8);
  }

  return result;
}

unint64_t sub_1DAC3D2D8()
{
  result = qword_1EE125198;
  if (!qword_1EE125198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125198);
  }

  return result;
}

unint64_t sub_1DAC3D32C()
{
  result = qword_1EE125180;
  if (!qword_1EE125180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125180);
  }

  return result;
}

void sub_1DAC3D380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC3D3E8()
{
  result = qword_1EE1237B8;
  if (!qword_1EE1237B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1237B8);
  }

  return result;
}

unint64_t sub_1DAC3D470()
{
  result = qword_1ECBE9388;
  if (!qword_1ECBE9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9388);
  }

  return result;
}

unint64_t sub_1DAC3D4C8()
{
  result = qword_1ECBE9390;
  if (!qword_1ECBE9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9390);
  }

  return result;
}

unint64_t sub_1DAC3D520()
{
  result = qword_1ECBE9398;
  if (!qword_1ECBE9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9398);
  }

  return result;
}

unint64_t sub_1DAC3D578()
{
  result = qword_1EE125188;
  if (!qword_1EE125188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125188);
  }

  return result;
}

unint64_t sub_1DAC3D5D0()
{
  result = qword_1EE125190;
  if (!qword_1EE125190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125190);
  }

  return result;
}

unint64_t sub_1DAC3D628()
{
  result = qword_1EE125160;
  if (!qword_1EE125160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125160);
  }

  return result;
}

unint64_t sub_1DAC3D680()
{
  result = qword_1EE125168;
  if (!qword_1EE125168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125168);
  }

  return result;
}

unint64_t sub_1DAC3D6D4()
{
  result = qword_1EE1237B0;
  if (!qword_1EE1237B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1237B0);
  }

  return result;
}

uint64_t sub_1DAC3D740(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3D8A0(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3D9F8(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3DB54(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3DC78(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3DDAC(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3DE9C(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3DFE4(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3E0EC(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3E210(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3E328(uint64_t a1, unsigned __int8 a2)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3E4D8(uint64_t a1)
{
  sub_1DACB9404();
}

unint64_t sub_1DAC3E628@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC3F710(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAC3E658(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00726F74636146;
  v4 = 0x6E6F6974756C6964;
  v5 = 0x80000001DACE27C0;
  v6 = 0x6573614272657375;
  if (v2 == 5)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xEC000000656E696CLL;
  }

  v7 = 0xED0000726F746361;
  v8 = 0xD000000000000015;
  if (v2 == 3)
  {
    v8 = 0x46676E6964646170;
  }

  else
  {
    v7 = 0x80000001DACE27A0;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xEE0074736F6F4264;
  v10 = 0x657469726F766166;
  if (v2 != 1)
  {
    v10 = 0x65576C61626F6C67;
    v9 = 0xEC00000074686769;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v8;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1DAC3E770()
{
  v1 = *v0;
  v2 = 0x6E6F6974756C6964;
  v3 = 0x6573614272657375;
  if (v1 == 5)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0xD000000000000015;
  if (v1 == 3)
  {
    v4 = 0x46676E6964646170;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 0x657469726F766166;
  if (v1 != 1)
  {
    v5 = 0x65576C61626F6C67;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1DAC3E884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC3F710(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC3E8AC(uint64_t a1)
{
  v2 = sub_1DAC3ED60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC3E8E8(uint64_t a1)
{
  v2 = sub_1DAC3ED60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void __swiftcall CohortConfig.init(dilutionFactor:favoritedBoost:globalWeight:paddingFactor:postBaselineCurvature:preBaselineCurvature:userBaseline:)(StocksCore::CohortConfig *__return_ptr retstr, Swift::Double_optional dilutionFactor, Swift::Double_optional favoritedBoost, Swift::Double_optional globalWeight, Swift::Double_optional paddingFactor, Swift::Double_optional postBaselineCurvature, Swift::Double_optional preBaselineCurvature, Swift::Double_optional userBaseline)
{
  retstr->dilutionFactor.value = *&dilutionFactor.is_nil;
  retstr->dilutionFactor.is_nil = favoritedBoost.is_nil;
  *(&retstr->favoritedBoost.value + 7) = *&globalWeight.is_nil;
  BYTE6(retstr->globalWeight.value) = paddingFactor.is_nil;
  *(&retstr->paddingFactor.value + 5) = *&postBaselineCurvature.is_nil;
  BYTE4(retstr->postBaselineCurvature.value) = preBaselineCurvature.is_nil;
  *(&retstr->preBaselineCurvature.value + 3) = *&userBaseline.is_nil;
  BYTE2(retstr->userBaseline.value) = v8 & 1;
  *(&retstr[1].dilutionFactor.value + 1) = v9;
  LOBYTE(retstr[1].favoritedBoost.value) = v10 & 1;
  *&retstr[1].favoritedBoost.is_nil = v11;
  HIBYTE(retstr[1].globalWeight.value) = v12 & 1;
  *(&retstr[1].paddingFactor.value + 6) = v13;
  BYTE5(retstr[1].postBaselineCurvature.value) = v14 & 1;
}

uint64_t CohortConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAC3F060(0, &qword_1EE123D00, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v38 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC3ED60();
  sub_1DACBA2F4();
  if (!v2)
  {
    v56[0] = 0;
    v10 = sub_1DACB9F54();
    v12 = v11;
    v13 = v10;
    v56[0] = 1;
    v14 = sub_1DACB9F54();
    v48 = v15;
    v49 = v14;
    v56[0] = 2;
    v16 = sub_1DACB9F54();
    v46 = v17;
    v47 = v16;
    v56[0] = 3;
    v18 = sub_1DACB9F54();
    v44 = v19;
    v45 = v18;
    v56[0] = 4;
    v20 = sub_1DACB9F54();
    v42 = v21;
    v43 = v20;
    v56[0] = 5;
    v22 = sub_1DACB9F54();
    v40 = v23;
    v41 = v22;
    v57 = 6;
    v24 = sub_1DACB9F54();
    v27 = v26;
    v28 = *(v7 + 8);
    v39 = v24;
    v28(v9, v6);
    v56[0] = v12 & 1;
    LOBYTE(v55[0]) = v48 & 1;
    LOBYTE(v54[0]) = v46 & 1;
    LOBYTE(v53[0]) = v44 & 1;
    LOBYTE(v52[0]) = v42 & 1;
    LOBYTE(v51[0]) = v40 & 1;
    v50 = v27 & 1;
    v29 = v48 & 1;
    v30 = v46 & 1;
    v31 = v44 & 1;
    v32 = v42 & 1;
    v33 = v40 & 1;
    *a2 = v13;
    *(a2 + 8) = v12 & 1;
    *(a2 + 9) = *v56;
    *(a2 + 12) = *&v56[3];
    *(a2 + 16) = v49;
    *(a2 + 24) = v29;
    *(a2 + 25) = v55[0];
    *(a2 + 28) = *(v55 + 3);
    *(a2 + 32) = v47;
    *(a2 + 40) = v30;
    v34 = v54[0];
    *(a2 + 44) = *(v54 + 3);
    *(a2 + 41) = v34;
    *(a2 + 48) = v45;
    *(a2 + 56) = v31;
    v35 = v53[0];
    *(a2 + 60) = *(v53 + 3);
    *(a2 + 57) = v35;
    *(a2 + 64) = v43;
    *(a2 + 72) = v32;
    v36 = v52[0];
    *(a2 + 76) = *(v52 + 3);
    *(a2 + 73) = v36;
    *(a2 + 80) = v41;
    *(a2 + 88) = v33;
    v37 = v51[0];
    *(a2 + 92) = *(v51 + 3);
    *(a2 + 89) = v37;
    *(a2 + 96) = v39;
    *(a2 + 104) = v27 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAC3ED60()
{
  result = qword_1EE125138;
  if (!qword_1EE125138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125138);
  }

  return result;
}

uint64_t CohortConfig.encode(to:)(void *a1)
{
  sub_1DAC3F060(0, &qword_1EE123C38, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v24 = *(v1 + 16);
  v23 = *(v1 + 24);
  v22 = *(v1 + 32);
  v21 = *(v1 + 40);
  v20 = *(v1 + 48);
  v19 = *(v1 + 56);
  v16 = *(v1 + 64);
  v17 = *(v1 + 72);
  v14 = *(v1 + 80);
  v15 = *(v1 + 88);
  v18 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(v9, v8);
  sub_1DAC3ED60();
  sub_1DACBA304();
  v32 = 0;
  v12 = v25;
  sub_1DACBA044();
  if (!v12)
  {
    LODWORD(v25) = v7;
    v31 = 1;
    sub_1DACBA044();
    v30 = 2;
    sub_1DACBA044();
    v29 = 3;
    sub_1DACBA044();
    v28 = 4;
    sub_1DACBA044();
    v27 = 5;
    sub_1DACBA044();
    v26 = 6;
    sub_1DACBA044();
  }

  return (*(v4 + 8))(v6, v11);
}

void sub_1DAC3F060(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAC3ED60();
    v7 = a3(a1, &type metadata for CohortConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t CohortConfig.hash(into:)()
{
  v1 = *(v0 + 24);
  v27 = v0[2];
  v28 = v0[4];
  v29 = *(v0 + 40);
  v2 = v0[6];
  v3 = *(v0 + 56);
  v4 = v0[8];
  v5 = *(v0 + 72);
  v6 = v0[10];
  v7 = *(v0 + 88);
  v8 = v0[12];
  v9 = *(v0 + 104);
  if (*(v0 + 8) == 1)
  {
    sub_1DACBA2A4();
    if (!v1)
    {
      goto LABEL_3;
    }

LABEL_31:
    sub_1DACBA2A4();
    if (!v29)
    {
      goto LABEL_7;
    }

LABEL_32:
    sub_1DACBA2A4();
    if (!v3)
    {
      goto LABEL_11;
    }

LABEL_33:
    sub_1DACBA2A4();
    if (!v5)
    {
      goto LABEL_15;
    }

LABEL_34:
    sub_1DACBA2A4();
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

  v26 = *(v0 + 56);
  v17 = v0[6];
  v18 = *(v0 + 72);
  v19 = v0[8];
  v20 = *(v0 + 88);
  v21 = v0[10];
  v22 = *(v0 + 104);
  v23 = v0[12];
  v24 = *v0;
  sub_1DACBA2A4();
  if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  v8 = v23;
  v9 = v22;
  v6 = v21;
  v7 = v20;
  v4 = v19;
  v5 = v18;
  v2 = v17;
  v3 = v26;
  MEMORY[0x1E1277D90](v25);
  if (v1)
  {
    goto LABEL_31;
  }

LABEL_3:
  sub_1DACBA2A4();
  if ((v27 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v27;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1E1277D90](v10);
  if (v29)
  {
    goto LABEL_32;
  }

LABEL_7:
  sub_1DACBA2A4();
  if ((v28 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v28;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1E1277D90](v11);
  if (v3)
  {
    goto LABEL_33;
  }

LABEL_11:
  sub_1DACBA2A4();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v2;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1E1277D90](v12);
  if (v5)
  {
    goto LABEL_34;
  }

LABEL_15:
  sub_1DACBA2A4();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x1E1277D90](v13);
  if (!v7)
  {
LABEL_19:
    sub_1DACBA2A4();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v6;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x1E1277D90](v14);
    if (!v9)
    {
      goto LABEL_23;
    }

    return sub_1DACBA2A4();
  }

LABEL_35:
  sub_1DACBA2A4();
  if (v9)
  {
    return sub_1DACBA2A4();
  }

LABEL_23:
  sub_1DACBA2A4();
  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  return MEMORY[0x1E1277D90](v15);
}

uint64_t CohortConfig.hashValue.getter()
{
  sub_1DACBA284();
  CohortConfig.hash(into:)();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3F318()
{
  sub_1DACBA284();
  CohortConfig.hash(into:)();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3F35C(uint64_t a1)
{
  sub_1DACBA284();
  CohortConfig.hash(into:)();
  return sub_1DACBA2C4();
}

uint64_t _s10StocksCore12CohortConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = *(a2 + 88);
  v15 = *(a2 + 104);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v17 = *(a2 + 8);
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v18 = *(a2 + 24);
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v19 = *(a2 + 40);
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  if (v7)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 48))
    {
      v20 = *(a2 + 56);
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v8 == *(a2 + 64))
    {
      v21 = *(a2 + 72);
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (v13 & 1 | ((v14 & 1) == 0))
    {
      return v14 & v15;
    }
  }

  else
  {
    if (v10 == *(a2 + 80))
    {
      v22 = *(a2 + 88);
    }

    else
    {
      v22 = 1;
    }

    if ((v22 | v13))
    {
      return (v22 ^ 1) & v15;
    }
  }

  return (v12 == *(a2 + 96)) & ~v15;
}

unint64_t sub_1DAC3F500()
{
  result = qword_1ECBE93A0;
  if (!qword_1ECBE93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93A0);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1DAC3F580(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 105))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAC3F5A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
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

  *(result + 105) = v3;
  return result;
}

unint64_t sub_1DAC3F60C()
{
  result = qword_1ECBE93A8;
  if (!qword_1ECBE93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93A8);
  }

  return result;
}

unint64_t sub_1DAC3F664()
{
  result = qword_1EE125128;
  if (!qword_1EE125128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125128);
  }

  return result;
}

unint64_t sub_1DAC3F6BC()
{
  result = qword_1EE125130;
  if (!qword_1EE125130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125130);
  }

  return result;
}

unint64_t sub_1DAC3F710(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAC3F760(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65676E6168637865;
    v7 = 0x616E5F74726F6873;
    if (a1 != 10)
    {
      v7 = 0x7079745F61746164;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x5F746B6D5F657270;
    v9 = 0x5F746B6D5F657270;
    if (a1 != 7)
    {
      v9 = 0x79636E6572727563;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6F626D79735F6469;
    v2 = 0x635F74656B72616DLL;
    v3 = 0x6B6D5F7265746661;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6563697270;
    if (a1 != 1)
    {
      v4 = 0x65676E616863;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DAC3F90C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DAC3F760(*a1);
  v5 = v4;
  if (v3 == sub_1DAC3F760(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC3F994()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC3F760(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC3F9F8(uint64_t a1)
{
  sub_1DAC3F760(*v1);
  sub_1DACB9404();
}

uint64_t sub_1DAC3FA4C(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DAC3F760(v2);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC3FAAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC42514(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DAC3FADC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAC3F760(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DAC3FB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC42514(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC3FB4C(uint64_t a1)
{
  v2 = sub_1DAC446B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC3FB88(uint64_t a1)
{
  v2 = sub_1DAC446B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DAC3FBC4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAC3FC14(unsigned __int8 a1)
{
  v1 = 7823730;
  v2 = 7630182;
  if (a1 != 2)
  {
    v2 = 0x756F735F61746164;
  }

  if (a1)
  {
    v1 = 0x6E69727453776172;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void *sub_1DAC3FC8C@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC42560(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x1D8uLL);
  }

  return result;
}

uint64_t sub_1DAC3FCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAC3FD4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DAC3FDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DAC3FE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1DAC3FE98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC3FBC4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DAC3FEC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAC3FC14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAC3FEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC3FC10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC3FF24@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1DAC42F28();
  *a2 = result;
  return result;
}

uint64_t sub_1DAC3FF50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DAC3FFA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1DAC3FFF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v7 = sub_1DACB9AF4();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v47 = v41 - v9;
  v48 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for YahooMultiQuoteResponse.Value.CodingKeys(255, a2, a3, v11);
  swift_getWitnessTable();
  v12 = sub_1DACBA004();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  v49 = a3;
  v16 = type metadata accessor for YahooMultiQuoteResponse.Value(0, a2, a3, v15);
  v42 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v41 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = v14;
  v19 = v53;
  sub_1DACBA2F4();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v56 = 0;
  v20 = sub_1DACB9FA4();
  v23 = v22;
  v24 = &v18[v16[9]];
  *v24 = v20;
  v24[1] = v22;
  v55 = 2;
  v25 = v20;
  v26 = sub_1DACB9FA4();
  v41[0] = v23;
  v41[1] = v25;
  v27 = &v18[v16[10]];
  *v27 = v26;
  v27[1] = v28;
  v54 = 3;
  v53 = 0;
  v29 = sub_1DACB9FA4();
  v30 = &v18[v16[11]];
  *v30 = v29;
  v30[1] = v31;
  sub_1DACB71E4();
  v32 = v47;
  v33 = v49;
  sub_1DACBA144();
  v34 = v32;
  v35 = v48;
  if ((*(v48 + 48))(v34, 1, a2) == 1)
  {
    (*(v44 + 8))(v34, v45);
    type metadata accessor for YahooMultiQuoteResponse.Value.ValueError(0, a2, v33, v36);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    (*(v50 + 8))(v52, v51);
    v37 = v53;
    __swift_destroy_boxed_opaque_existential_1(a1);

    if (!v37)
    {
    }
  }

  else
  {
    (*(v50 + 8))(v52, v51);
    v38 = *(v35 + 32);
    v39 = v43;
    v38(v43, v34, a2);
    v38(v18, v39, a2);
    v40 = v42;
    (*(v42 + 16))(v46, v18, v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v40 + 8))(v18, v16);
  }
}

uint64_t sub_1DAC40580(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000015;
    if (a1 == 8)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0xD000000000000015;
    if (a1 != 5)
    {
      v6 = 0x435F54454B52414DLL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x5F52414C55474552;
    v2 = 0xD000000000000014;
    if (a1 != 2)
    {
      v2 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = 0x4B52414D5F455250;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DAC40710(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1DAC40580(*a1);
  v5 = v4;
  if (v3 == sub_1DAC40580(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC40798()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAC40580(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC407FC(uint64_t a1)
{
  sub_1DAC40580(*v1);
  sub_1DACB9404();
}

uint64_t sub_1DAC40850(uint64_t a1)
{
  v2 = *v1;
  sub_1DACBA284();
  sub_1DAC40580(v2);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC408B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC42F30(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DAC408E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAC40580(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAC40918()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC409F4(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC40ABC(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC40B94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC42F7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAC40BC4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE600000000000000;
  v6 = 0x737574617473;
  v7 = 0xEF6C61767265746ELL;
  v8 = 0x695F6D6165727473;
  if (v2 != 3)
  {
    v8 = 0x65706F5F7478656ELL;
    v7 = 0xE90000000000006ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701667182;
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

uint64_t sub_1DAC40C5C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x737574617473;
  v4 = 0x695F6D6165727473;
  if (v1 != 3)
  {
    v4 = 0x65706F5F7478656ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

unint64_t sub_1DAC40CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC42F7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC40D18(uint64_t a1)
{
  v2 = sub_1DAC4465C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC40D54(uint64_t a1)
{
  v2 = sub_1DAC4465C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DAC40D90@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DAC42FC8(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1DAC40DE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC40E78()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC40EE8(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC40F44(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC40FB0@<X0>(char *a2@<X8>)
{
  v3 = sub_1DACB9F04();

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

void sub_1DAC41010(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 1701667182;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DAC4103C()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DAC41064@<X0>(char *a3@<X8>)
{
  v4 = sub_1DACB9F04();

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

uint64_t sub_1DAC410C8(uint64_t a1)
{
  v2 = sub_1DAC44608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41104(uint64_t a1)
{
  v2 = sub_1DAC44608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC41158(uint64_t a1)
{
  sub_1DACB9404();
}

unint64_t sub_1DAC41270@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC433D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAC412A0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x4E574F4E4B4E55;
  if (v2 == 5)
  {
    v4 = 0xD000000000000025;
    v3 = 0x80000001DACE2A50;
  }

  v5 = 0x80000001DACE29F0;
  if (v2 == 3)
  {
    v6 = 0xD000000000000026;
  }

  else
  {
    v6 = 0xD000000000000025;
  }

  if (v2 != 3)
  {
    v5 = 0x80000001DACE2A20;
  }

  if (*v1 <= 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001DACE2960;
  v8 = 0xD000000000000020;
  v9 = 0x80000001DACE2990;
  if (v2 == 1)
  {
    v10 = 0xD000000000000026;
  }

  else
  {
    v10 = 0xD000000000000022;
  }

  if (v2 != 1)
  {
    v9 = 0x80000001DACE29C0;
  }

  if (*v1)
  {
    v8 = v10;
    v7 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1DAC41380@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC43420(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DAC413BC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DAC41414(uint64_t a1)
{
  v2 = sub_1DAC450A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41450(uint64_t a1)
{
  v2 = sub_1DAC450A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC4148C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC4362C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1DAC414BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65676E6168637865;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x756F735F61746164;
    v4 = 0xEC00000073656372;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7365746F7571;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x65676E6168637865;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x756F735F61746164;
    v8 = 0xEC00000073656372;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7365746F7571;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC415D4()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC41680(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC41718(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC417C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC437E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAC417F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000073;
  v5 = 0x65676E6168637865;
  if (v2 != 1)
  {
    v5 = 0x756F735F61746164;
    v4 = 0xEC00000073656372;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7365746F7571;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAC41858()
{
  v1 = 0x65676E6168637865;
  if (*v0 != 1)
  {
    v1 = 0x756F735F61746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7365746F7571;
  }
}

unint64_t sub_1DAC418BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC437E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC418E4(uint64_t a1)
{
  v2 = sub_1DAC453C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41920(uint64_t a1)
{
  v2 = sub_1DAC453C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC4195C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC43830(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1DAC41998@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DAC419F0(uint64_t a1)
{
  v2 = sub_1DAC45660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41A2C(uint64_t a1)
{
  v2 = sub_1DAC45660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC41A68@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC43AC4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAC41B1C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DAC41B74(uint64_t a1)
{
  v2 = sub_1DAC45708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41BB0(uint64_t a1)
{
  v2 = sub_1DAC45708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC41BEC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC43D7C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAC41CC8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DAC41D20(uint64_t a1)
{
  v2 = sub_1DAC4589C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41D5C(uint64_t a1)
{
  v2 = sub_1DAC4589C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC41D98@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC44098(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DAC41DC4(uint64_t a1)
{
  v2 = sub_1DAC44560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC41E00(uint64_t a1)
{
  v2 = sub_1DAC44560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC41E3C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DAC443A8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

void *sub_1DAC41E6C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v1 + 16);
  sub_1DACB71E4();
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_20:

    return v5;
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = MEMORY[0x1E69E7CC8];
  while (v3 < *(v1 + 16))
  {
    v14 = *(v4 + 32);
    v13 = *(v4 + 48);
    v15 = *(v4 + 64);
    v38 = *(v4 + 16);
    v16 = *v4;
    v41 = v15;
    v40 = v13;
    v37 = v16;
    v39 = v14;
    v17 = v38;
    sub_1DAB6A0AC(&v37, v35);
    sub_1DAB6A0AC(&v37, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1DAA4BF3C(v17, *(&v17 + 1));
    v21 = v5[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_22;
    }

    v25 = v20;
    if (v5[3] < v24)
    {
      sub_1DAB62BD0(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1DAA4BF3C(v17, *(&v17 + 1));
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }

LABEL_14:
      if (v25)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v33 = v19;
    sub_1DAB6705C();
    v19 = v33;
    if (v25)
    {
LABEL_6:
      v6 = v5[7] + 72 * v19;
      v35[0] = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      v36 = *(v6 + 64);
      v35[2] = v8;
      v35[3] = v9;
      v35[1] = v7;
      v10 = v40;
      v12 = v38;
      v11 = v39;
      *(v6 + 64) = v41;
      *(v6 + 32) = v11;
      *(v6 + 48) = v10;
      *(v6 + 16) = v12;
      *v6 = v37;
      sub_1DAC422C8(v35);
      sub_1DAC422C8(&v37);
      goto LABEL_7;
    }

LABEL_15:
    v5[(v19 >> 6) + 8] |= 1 << v19;
    *(v5[6] + 16 * v19) = v17;
    v27 = v5[7] + 72 * v19;
    v28 = v41;
    v29 = v40;
    v30 = v39;
    *(v27 + 16) = v38;
    *(v27 + 32) = v30;
    *(v27 + 48) = v29;
    *(v27 + 64) = v28;
    *v27 = v37;
    sub_1DACB71E4();
    sub_1DAC422C8(&v37);
    v31 = v5[2];
    v23 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v23)
    {
      goto LABEL_23;
    }

    v5[2] = v32;
LABEL_7:
    ++v3;
    v4 += 72;
    if (v2 == v3)
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
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

void *sub_1DAC420E0(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v1 + 16);
  sub_1DACB71E4();
  if (!v2)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_20:

    return v5;
  }

  v3 = 0;
  v4 = (v1 + 48);
  v5 = MEMORY[0x1E69E7CC8];
  while (v3 < *(v1 + 16))
  {
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v9 = *v4;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1DAA4BF3C(v8, v7);
    v13 = v5[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      goto LABEL_22;
    }

    v17 = v12;
    if (v5[3] < v16)
    {
      sub_1DAB62F30(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_1DAA4BF3C(v8, v7);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_24;
      }

LABEL_14:
      if (v17)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v23 = v11;
    sub_1DAB67214();
    v11 = v23;
    if (v17)
    {
LABEL_6:
      v6 = v5[7] + 24 * v11;
      *v6 = v8;
      *(v6 + 8) = v7;
      *(v6 + 16) = v9;

      goto LABEL_7;
    }

LABEL_15:
    v5[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v5[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    v20 = v5[7] + 24 * v11;
    *v20 = v8;
    *(v20 + 8) = v7;
    *(v20 + 16) = v9;
    v21 = v5[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_23;
    }

    v5[2] = v22;
LABEL_7:
    ++v3;
    v4 += 24;
    if (v2 == v3)
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
  result = sub_1DACBA1F4();
  __break(1u);
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

uint64_t sub_1DAC4232C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DAC42374(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_10StocksCore23YahooMultiQuoteResponseV5ValueVy_SdGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAC423F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 472))
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

uint64_t sub_1DAC4243C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
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
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 472) = 1;
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

    *(result + 472) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAC42514(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

void *sub_1DAC42560@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  sub_1DAC4583C(0, &qword_1EE126D20, sub_1DAC446B0, &type metadata for YahooMultiQuoteResponse.Quote.CodingKeys);
  v5 = v4;
  v152 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC446B0();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v152;
  LOBYTE(v93) = 0;
  v9 = sub_1DACB9FA4();
  v11 = v10;
  v90 = v9;
  LOBYTE(v93) = 8;
  v12 = sub_1DACB9F34();
  v89 = v13;
  v86 = v12;
  LOBYTE(v93) = 9;
  v14 = sub_1DACB9F34();
  v88 = v15;
  v85 = v14;
  LOBYTE(v93) = 10;
  v16 = sub_1DACB9F34();
  v87 = v17;
  v84 = v16;
  LOBYTE(v93) = 11;
  v18 = sub_1DACB9F34();
  v82 = v19;
  v83 = v18;
  sub_1DAC44704(0, v19, v20, v21);
  LOBYTE(v92[0]) = 1;
  sub_1DAC44774(v22, v23, v24, v25);
  sub_1DACB9F84();
  v69 = v93;
  v40 = v94;
  v80 = v96;
  v81 = v95;
  v78 = v98;
  v79 = v97;
  v77 = v99;
  LOBYTE(v92[0]) = 2;
  sub_1DACB9F84();
  v75 = v94;
  v76 = v93;
  v73 = v96;
  v74 = v95;
  v71 = v98;
  v72 = v97;
  v70 = v99;
  LOBYTE(v92[0]) = 3;
  sub_1DACB9F84();
  v67 = v94;
  v68 = v93;
  v65 = v96;
  v66 = v95;
  v63 = v98;
  v64 = v97;
  v62 = v99;
  LOBYTE(v92[0]) = 4;
  sub_1DACB9F84();
  v60 = v94;
  v61 = v93;
  v58 = v96;
  v59 = v95;
  v56 = v98;
  v57 = v97;
  v55 = v99;
  LOBYTE(v92[0]) = 5;
  sub_1DACB9F84();
  v53 = v94;
  v54 = v93;
  v51 = v96;
  v52 = v95;
  v49 = v98;
  v50 = v97;
  v48 = v99;
  LOBYTE(v92[0]) = 6;
  sub_1DACB9F84();
  v46 = v94;
  v47 = v93;
  v44 = v96;
  v45 = v95;
  v42 = v98;
  v43 = v97;
  v41 = v99;
  LOBYTE(v92[0]) = 7;
  sub_1DACB9F84();
  v26 = v89;
  (*(v8 + 8))(v7, v5);
  v34 = v93;
  v35 = v94;
  v36 = v95;
  v37 = v96;
  v38 = v97;
  v39 = v98;
  v152 = v99;
  v27 = v90;
  v92[0] = v90;
  v92[1] = v11;
  v28 = v40;
  v92[2] = v69;
  v92[3] = v40;
  v92[4] = v81;
  v92[5] = v80;
  v92[6] = v79;
  v92[7] = v78;
  v92[8] = v77;
  v92[9] = v76;
  v92[10] = v75;
  v92[11] = v74;
  v92[12] = v73;
  v92[13] = v72;
  v92[14] = v71;
  v92[15] = v70;
  v92[16] = v68;
  v92[17] = v67;
  v92[18] = v66;
  v92[19] = v65;
  v92[20] = v64;
  v92[21] = v63;
  v92[22] = v62;
  v92[23] = v61;
  v92[24] = v60;
  v92[25] = v59;
  v92[26] = v58;
  v92[27] = v57;
  v92[28] = v56;
  v92[29] = v55;
  v92[30] = v54;
  v92[31] = v53;
  v92[32] = v52;
  v92[33] = v51;
  v92[34] = v50;
  v92[35] = v49;
  v92[36] = v48;
  v92[37] = v47;
  v92[38] = v46;
  v92[39] = v45;
  v92[40] = v44;
  v92[41] = v43;
  v92[42] = v42;
  v92[43] = v41;
  v92[44] = v93;
  v92[45] = v94;
  v92[46] = v95;
  v92[47] = v96;
  v92[48] = v97;
  v92[49] = v98;
  v92[50] = v99;
  v29 = v86;
  v92[51] = v86;
  v92[52] = v26;
  v30 = v84;
  v31 = v85;
  v92[53] = v85;
  v92[54] = v88;
  v92[55] = v84;
  v92[56] = v87;
  v92[57] = v83;
  v92[58] = v82;
  sub_1DAC2EB60(v92, &v93);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v93 = v27;
  v94 = v11;
  v95 = v69;
  v96 = v28;
  v97 = v81;
  v98 = v80;
  v99 = v79;
  v100 = v78;
  v101 = v77;
  v102 = v76;
  v103 = v75;
  v104 = v74;
  v105 = v73;
  v106 = v72;
  v107 = v71;
  v108 = v70;
  v109 = v68;
  v110 = v67;
  v111 = v66;
  v112 = v65;
  v113 = v64;
  v114 = v63;
  v115 = v62;
  v116 = v61;
  v117 = v60;
  v118 = v59;
  v119 = v58;
  v120 = v57;
  v121 = v56;
  v122 = v55;
  v123 = v54;
  v124 = v53;
  v125 = v52;
  v126 = v51;
  v127 = v50;
  v128 = v49;
  v129 = v48;
  v130 = v47;
  v131 = v46;
  v132 = v45;
  v133 = v44;
  v134 = v43;
  v135 = v42;
  v136 = v41;
  v137 = v34;
  v138 = v35;
  v139 = v36;
  v140 = v37;
  v141 = v38;
  v142 = v39;
  v143 = v152;
  v144 = v29;
  v145 = v89;
  v146 = v31;
  v147 = v88;
  v148 = v30;
  v149 = v87;
  v150 = v83;
  v151 = v82;
  sub_1DAC2EBBC(&v93);
  return memcpy(v91, v92, 0x1D8uLL);
}

unint64_t sub_1DAC42F30(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DAC42F7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAC42FC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAC4583C(0, &qword_1EE126D10, sub_1DAC4465C, &type metadata for YahooMultiQuoteResponse.Exchange.CodingKeys);
  v50 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC4465C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  LOBYTE(v42[0]) = 0;
  v11 = sub_1DACB9FA4();
  v13 = v12;
  LOBYTE(v42[0]) = 1;
  v14 = sub_1DACB9FA4();
  v36 = v15;
  v33 = v14;
  LOBYTE(v42[0]) = 3;
  v32 = sub_1DACB9F34();
  v35 = v16;
  LOBYTE(v42[0]) = 4;
  v31 = sub_1DACB9F34();
  v34 = v17;
  LOBYTE(v42[0]) = 2;
  v18 = sub_1DACB9FA4();
  v20 = sub_1DAC42F30(v18, v19);
  (*(v9 + 8))(v8, v50);
  if (v20 == 10)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  LODWORD(v50) = v21;
  *&v37 = v11;
  *(&v37 + 1) = v13;
  v22 = v33;
  v30 = v13;
  v24 = v35;
  v23 = v36;
  *&v38 = v33;
  *(&v38 + 1) = v36;
  LOBYTE(v39) = v21;
  *(&v39 + 1) = v49[0];
  DWORD1(v39) = *(v49 + 3);
  v25 = v32;
  *(&v39 + 1) = v32;
  *&v40 = v35;
  v26 = v34;
  *(&v40 + 1) = v31;
  v41 = v34;
  sub_1DAB6A0AC(&v37, v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42[0] = v11;
  v42[1] = v30;
  v42[2] = v22;
  v42[3] = v23;
  v43 = v50;
  *v44 = v49[0];
  *&v44[3] = *(v49 + 3);
  v45 = v25;
  v46 = v24;
  v47 = v31;
  v48 = v26;
  result = sub_1DAC422C8(v42);
  v27 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v27;
  *(a2 + 64) = v41;
  v28 = v38;
  *a2 = v37;
  *(a2 + 16) = v28;
  return result;
}

unint64_t sub_1DAC433D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAC43420(void *a1)
{
  sub_1DAC4583C(0, &qword_1EE126D00, sub_1DAC44608, &type metadata for YahooMultiQuoteResponse.DataSource.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC44608();
  sub_1DACBA2F4();
  if (!v1)
  {
    v14 = 0;
    v8 = sub_1DACB9FA4();
    v13 = 1;
    v10 = sub_1DACB9FA4();
    sub_1DAC433D4(v10, v11);
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void *sub_1DAC4362C(void *a1)
{
  sub_1DAC4583C(0, &qword_1EE126E00, sub_1DAC450A8, &type metadata for YahooMultiQuoteResponse.Finance.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC450A8();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC450FC();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1DAC437E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAC43830(void *a1)
{
  sub_1DAC4583C(0, &qword_1EE126EA8, sub_1DAC453C8, &type metadata for YahooMultiQuoteResponse.QuoteService.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DAC453C8();
  sub_1DACBA2F4();
  if (!v1)
  {
    v11 = 0;
    sub_1DAC4541C();
    sub_1DACB9F84();
    v8 = v12;
    v11 = 1;
    sub_1DAC45470();
    sub_1DACB9F84();
    v11 = 2;
    sub_1DAC454C4();
    sub_1DACB9F84();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1DAC43AC4(void *a1)
{
  sub_1DAC4583C(0, &qword_1EE126EE0, sub_1DAC45660, &type metadata for YahooMultiQuoteResponse.Quotes.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DAC45660();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC45944(0, &qword_1EE126EF0, &type metadata for YahooMultiQuoteResponse.Quote, MEMORY[0x1E69E62F8]);
    sub_1DAC4575C(&qword_1EE126EF8, &qword_1EE126EF0, &type metadata for YahooMultiQuoteResponse.Quote, sub_1DAC456B4);
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v8 = v10[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1DAC43D7C(void *a1)
{
  sub_1DAC4583C(0, &qword_1EE126F08, sub_1DAC45708, &type metadata for YahooMultiQuoteResponse.Exchanges.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DAC45708();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC45944(0, &qword_1EE126F18, &type metadata for YahooMultiQuoteResponse.Exchange, MEMORY[0x1E69E62F8]);
    sub_1DAC4575C(&qword_1EE126F20, &qword_1EE126F18, &type metadata for YahooMultiQuoteResponse.Exchange, sub_1DAC457E8);
    sub_1DACB9F84();
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1DAC44098(void *a1)
{
  sub_1DAC4583C(0, &qword_1EE126F30, sub_1DAC4589C, &type metadata for YahooMultiQuoteResponse.DataSources.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DAC4589C();
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC45944(0, &qword_1EE126F40, &type metadata for YahooMultiQuoteResponse.DataSource, MEMORY[0x1E69E62F8]);
    sub_1DAC4575C(&qword_1EE126F48, &qword_1EE126F40, &type metadata for YahooMultiQuoteResponse.DataSource, sub_1DAC458F0);
    sub_1DACB9F84();
    if (v11)
    {
      v8 = v11;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void *sub_1DAC443A8(void *a1)
{
  sub_1DAC4583C(0, &qword_1EE126CE8, sub_1DAC44560, &type metadata for YahooMultiQuoteResponse.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC44560();
  v9 = v8;
  sub_1DACBA2F4();
  if (!v1)
  {
    sub_1DAC445B4();
    sub_1DACB9FE4();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1DAC44560()
{
  result = qword_1EE126CF0;
  if (!qword_1EE126CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126CF0);
  }

  return result;
}

unint64_t sub_1DAC445B4()
{
  result = qword_1EE126CF8;
  if (!qword_1EE126CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126CF8);
  }

  return result;
}

unint64_t sub_1DAC44608()
{
  result = qword_1EE126D08;
  if (!qword_1EE126D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126D08);
  }

  return result;
}

unint64_t sub_1DAC4465C()
{
  result = qword_1EE126D18;
  if (!qword_1EE126D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126D18);
  }

  return result;
}

unint64_t sub_1DAC446B0()
{
  result = qword_1EE126D28;
  if (!qword_1EE126D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126D28);
  }

  return result;
}

void sub_1DAC44704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EE126D30)
  {
    v4 = type metadata accessor for YahooMultiQuoteResponse.Value(0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6420], a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EE126D30);
    }
  }
}

unint64_t sub_1DAC44774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1EE126D38[0];
  if (!qword_1EE126D38[0])
  {
    sub_1DAC44704(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE126D38);
  }

  return result;
}

uint64_t sub_1DAC4482C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAC448A8(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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

_BYTE *sub_1DAC449F4(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
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

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
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

unint64_t sub_1DAC44BDC()
{
  result = qword_1ECBE93B0;
  if (!qword_1ECBE93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93B0);
  }

  return result;
}

unint64_t sub_1DAC44C34()
{
  result = qword_1ECBE93B8;
  if (!qword_1ECBE93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93B8);
  }

  return result;
}

unint64_t sub_1DAC44C8C()
{
  result = qword_1ECBE93C0;
  if (!qword_1ECBE93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93C0);
  }

  return result;
}

unint64_t sub_1DAC44CE4()
{
  result = qword_1ECBE93C8;
  if (!qword_1ECBE93C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93C8);
  }

  return result;
}

unint64_t sub_1DAC44D3C()
{
  result = qword_1ECBE93D0;
  if (!qword_1ECBE93D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE93D0);
  }

  return result;
}

unint64_t sub_1DAC44D94()
{
  result = qword_1ECBE93D8[0];
  if (!qword_1ECBE93D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECBE93D8);
  }

  return result;
}

unint64_t sub_1DAC44DEC()
{
  result = qword_1EE126DC0;
  if (!qword_1EE126DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DC0);
  }

  return result;
}

unint64_t sub_1DAC44E44()
{
  result = qword_1EE126DC8;
  if (!qword_1EE126DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DC8);
  }

  return result;
}

unint64_t sub_1DAC44E9C()
{
  result = qword_1EE126DD0;
  if (!qword_1EE126DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DD0);
  }

  return result;
}

unint64_t sub_1DAC44EF4()
{
  result = qword_1EE126DD8;
  if (!qword_1EE126DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DD8);
  }

  return result;
}

unint64_t sub_1DAC44F4C()
{
  result = qword_1EE126DE0;
  if (!qword_1EE126DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DE0);
  }

  return result;
}

unint64_t sub_1DAC44FA4()
{
  result = qword_1EE126DE8;
  if (!qword_1EE126DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DE8);
  }

  return result;
}

unint64_t sub_1DAC44FFC()
{
  result = qword_1EE126DF0;
  if (!qword_1EE126DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DF0);
  }

  return result;
}

unint64_t sub_1DAC45054()
{
  result = qword_1EE126DF8;
  if (!qword_1EE126DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126DF8);
  }

  return result;
}

unint64_t sub_1DAC450A8()
{
  result = qword_1EE126E08;
  if (!qword_1EE126E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126E08);
  }

  return result;
}

unint64_t sub_1DAC450FC()
{
  result = qword_1EE126E10[0];
  if (!qword_1EE126E10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE126E10);
  }

  return result;
}

uint64_t sub_1DAC45190(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1DAC451EC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1DAC45254()
{
  result = qword_1ECBE9460;
  if (!qword_1ECBE9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9460);
  }

  return result;
}

unint64_t sub_1DAC4531C()
{
  result = qword_1EE126E98;
  if (!qword_1EE126E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126E98);
  }

  return result;
}

unint64_t sub_1DAC45374()
{
  result = qword_1EE126EA0;
  if (!qword_1EE126EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126EA0);
  }

  return result;
}

unint64_t sub_1DAC453C8()
{
  result = qword_1EE126EB0;
  if (!qword_1EE126EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126EB0);
  }

  return result;
}

unint64_t sub_1DAC4541C()
{
  result = qword_1EE126EB8;
  if (!qword_1EE126EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126EB8);
  }

  return result;
}

unint64_t sub_1DAC45470()
{
  result = qword_1EE126EC0;
  if (!qword_1EE126EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126EC0);
  }

  return result;
}

unint64_t sub_1DAC454C4()
{
  result = qword_1EE126EC8;
  if (!qword_1EE126EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126EC8);
  }

  return result;
}

unint64_t sub_1DAC4555C()
{
  result = qword_1ECBE9468;
  if (!qword_1ECBE9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9468);
  }

  return result;
}

unint64_t sub_1DAC455B4()
{
  result = qword_1EE126ED0;
  if (!qword_1EE126ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126ED0);
  }

  return result;
}

unint64_t sub_1DAC4560C()
{
  result = qword_1EE126ED8;
  if (!qword_1EE126ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126ED8);
  }

  return result;
}

unint64_t sub_1DAC45660()
{
  result = qword_1EE126EE8;
  if (!qword_1EE126EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126EE8);
  }

  return result;
}

unint64_t sub_1DAC456B4()
{
  result = qword_1EE126F00;
  if (!qword_1EE126F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F00);
  }

  return result;
}

unint64_t sub_1DAC45708()
{
  result = qword_1EE126F10;
  if (!qword_1EE126F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F10);
  }

  return result;
}

uint64_t sub_1DAC4575C(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAC45944(255, a2, a3, MEMORY[0x1E69E62F8]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC457E8()
{
  result = qword_1EE126F28;
  if (!qword_1EE126F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F28);
  }

  return result;
}

void sub_1DAC4583C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1DACBA004();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DAC4589C()
{
  result = qword_1EE126F38;
  if (!qword_1EE126F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F38);
  }

  return result;
}

unint64_t sub_1DAC458F0()
{
  result = qword_1EE126F50;
  if (!qword_1EE126F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F50);
  }

  return result;
}

void sub_1DAC45944(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DAC459C8()
{
  result = qword_1ECBE9480;
  if (!qword_1ECBE9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9480);
  }

  return result;
}

unint64_t sub_1DAC45A20()
{
  result = qword_1ECBE9488;
  if (!qword_1ECBE9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9488);
  }

  return result;
}

unint64_t sub_1DAC45A78()
{
  result = qword_1ECBE9490;
  if (!qword_1ECBE9490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE9490);
  }

  return result;
}

unint64_t sub_1DAC45AD0()
{
  result = qword_1EE126F60;
  if (!qword_1EE126F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F60);
  }

  return result;
}

unint64_t sub_1DAC45B28()
{
  result = qword_1EE126F68;
  if (!qword_1EE126F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F68);
  }

  return result;
}

unint64_t sub_1DAC45B80()
{
  result = qword_1EE126F70;
  if (!qword_1EE126F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F70);
  }

  return result;
}

unint64_t sub_1DAC45BD8()
{
  result = qword_1EE126F78;
  if (!qword_1EE126F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F78);
  }

  return result;
}

unint64_t sub_1DAC45C30()
{
  result = qword_1EE126F80;
  if (!qword_1EE126F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F80);
  }

  return result;
}

unint64_t sub_1DAC45C88()
{
  result = qword_1EE126F88;
  if (!qword_1EE126F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE126F88);
  }

  return result;
}

uint64_t sub_1DAC45D08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a1;
  v44 = a2;
  v42 = type metadata accessor for SymbolEntity(0);
  v40 = *(v42 - 8);
  v2 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v34 - v4;
  v43 = sub_1DACB7274();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1DAA6AB50(0, &qword_1EE123AA0, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v34 - v10;
  sub_1DAA6AB50(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, v6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v34 - v12;
  sub_1DAA6AB50(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v6);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v35 = &v34 - v14;
  v15 = sub_1DACB78E4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = sub_1DACB7904();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  sub_1DAB2AF6C(0);
  v34 = v23;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v24 = *MEMORY[0x1E6968DF0];
  v25 = *(v16 + 104);
  v25(v18, v24, v15);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v25(v18, v24, v15);
  v26 = v35;
  sub_1DACB7914();
  (*(v22 + 56))(v26, 0, 1, v21);
  (*(v40 + 56))(v36, 1, 1, v42);
  v27 = sub_1DACB6E84();
  v28 = *(*(v27 - 8) + 56);
  v28(v37, 1, 1, v27);
  v28(v38, 1, 1, v27);
  (*(v41 + 104))(v39, *MEMORY[0x1E695A500], v43);
  sub_1DAAA1620(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  v29 = sub_1DACB7014();
  v30 = v44;
  *v44 = v29;
  sub_1DAA6AB50(0, &unk_1EE123AC0, sub_1DAAEBAC4, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  sub_1DACB6D84();
  v30[1] = sub_1DACB6D54();
  v31 = v47;
  v32 = v45;
  sub_1DAAA2C80(v47, v45);
  sub_1DAAA2C80(v32, v46);
  sub_1DACB6FC4();
  sub_1DAAD5434(v31);
  return sub_1DAAD5434(v32);
}

uint64_t sub_1DAC4644C()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE9498);
  __swift_project_value_buffer(v6, qword_1ECBE9498);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAC46668()
{
  sub_1DAA6AB50(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1DACB78E4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB7904();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DACB7084();
  __swift_allocate_value_buffer(v10, qword_1ECBE94B0);
  __swift_project_value_buffer(v10, qword_1ECBE94B0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1DACB7914();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1DACB7094();
}

uint64_t sub_1DAC469B0()
{
  sub_1DAC47E64(0, &qword_1ECBE94C8, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DAC47E64(0, &qword_1ECBE94D0, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1DAB951C8();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAC46CF0(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

uint64_t sub_1DAC46B80(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for SymbolEntity(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1DAAA2C80(a1, &v10 - v7);
  sub_1DAAA2C80(v8, v6);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
  sub_1DAAD5434(v8);
}

uint64_t sub_1DAC46C60(uint64_t a1)
{
  v2 = type metadata accessor for SymbolEntity(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAAA2C80(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DACB6FC4();
  return sub_1DAAD5434(a1);
}

void sub_1DAC46CF0(uint64_t a1)
{
  if (!qword_1ECBE94D8)
  {
    sub_1DAB2AF6C(255);
    v1 = sub_1DACBA314();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE94D8);
    }
  }
}

uint64_t (*sub_1DAC46D50(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAC46DE8(void *a1)
{
  sub_1DAA4D678(a1, v3);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DAC46E2C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D74;
}