unsigned __int8 *sub_5C974(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_8CFFC();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_5CEFC(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      result = sub_8D2BC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
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

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_5CEFC(uint64_t a1, unint64_t a2)
{
  v2 = sub_5CF68(sub_5CF64, 0, a1, a2);
  v6 = sub_5CF9C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_5CF9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_8D1EC();
    if (!v9 || (v10 = v9, v11 = sub_866E0(v9, 0), v12 = sub_5D0FC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_8CF3C();

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
      return sub_8CF3C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_8D2BC();
LABEL_4:

  return sub_8CF3C();
}

unint64_t sub_5D0FC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_5D30C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_8CFBC();
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
          result = sub_8D2BC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_5D30C(v12, a6, a7);
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

    result = sub_8CF9C();
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

unint64_t sub_5D30C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_8CFCC();
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
    v5 = sub_8CFAC();
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

uint64_t sub_5D388(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5D3F0()
{

  return sub_8B58C();
}

uint64_t sub_5D434()
{
}

uint64_t sub_5D49C()
{
  sub_622C((*(v0 + 64) + 96), *(*(v0 + 64) + 120));

  return sub_8B59C();
}

void sub_5D4E8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_5D508(uint64_t a1)
{

  return sub_8B40C();
}

void *sub_5D528()
{

  return sub_622C((v0 + 56), v1);
}

uint64_t sub_5D55C()
{
  v0 = sub_8AF9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664(&qword_BFF28, &unk_8EFD0);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_8D25C(151);
  v16._countAndFlagsBits = 0xD00000000000002CLL;
  v16._object = 0x8000000000097FA0;
  sub_8CF7C(v16);
  sub_8CB1C();
  if (sub_3364(v6, 1, v0))
  {
    sub_1382C(v6);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    (*(v1 + 16))(v3, v6, v0);
    sub_1382C(v6);
    v7 = sub_8AF3C();
    v8 = v9;
    (*(v1 + 8))(v3, v0);
  }

  v13[0] = v7;
  v13[1] = v8;
  sub_2664(&qword_C1A08, &unk_92B40);
  v17._countAndFlagsBits = sub_8CEEC();
  sub_5DAD0(v17);

  v18._countAndFlagsBits = 0xD00000000000001CLL;
  v18._object = 0x8000000000097FD0;
  sub_8CF7C(v18);
  sub_8CB1C();
  v19._countAndFlagsBits = sub_5DAA4();
  sub_5DAD0(v19);

  v20._countAndFlagsBits = sub_5DAC4() | 0x5273692000000000;
  v20._object = 0xED00003D796C7065;
  sub_8CF7C(v20);
  sub_8CB1C();
  if (LOBYTE(v13[0]))
  {
    v10._countAndFlagsBits = 1702195828;
  }

  else
  {
    v10._countAndFlagsBits = 0x65736C6166;
  }

  if (LOBYTE(v13[0]))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v10._object = v11;
  sub_8CF7C(v10);

  v21._countAndFlagsBits = sub_5DAC4() | 0x6D6F682000000000;
  v21._object = 0xEA00000000003D65;
  sub_8CF7C(v21);
  sub_8CB1C();
  v22._countAndFlagsBits = sub_5DAA4();
  sub_5DAD0(v22);

  v23._countAndFlagsBits = sub_5DAC4() | 0x6F6F722000000000;
  v23._object = 0xEB000000003D736DLL;
  sub_8CF7C(v23);
  sub_8CB1C();
  sub_2664(&qword_C1A10, &qword_910E0);
  v24._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v24);

  v25._countAndFlagsBits = sub_5DAC4() | 0x6E6F7A2000000000;
  v25._object = 0xEB000000003D7365;
  sub_8CF7C(v25);
  sub_8CB1C();
  v26._countAndFlagsBits = sub_8CEEC();
  sub_5DAD0(v26);

  v27._object = 0x8000000000097FF0;
  v27._countAndFlagsBits = 0xD000000000000012;
  sub_8CF7C(v27);
  sub_8CB1C();
  v28._countAndFlagsBits = sub_5DAA4();
  sub_8CF7C(v28);

  v29._countAndFlagsBits = 10506;
  v29._object = 0xE200000000000000;
  sub_8CF7C(v29);
  return v14;
}

__n128 sub_5D918(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_5D934(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_5D974(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_5D9D4()
{
  result = qword_C28E0;
  if (!qword_C28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C28E0);
  }

  return result;
}

unint64_t sub_5DA28(uint64_t a1)
{
  result = sub_5DA50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_5DA50()
{
  result = qword_C2900;
  if (!qword_C2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2900);
  }

  return result;
}

uint64_t sub_5DAA4()
{
  *(v0 - 96) = *(v0 - 96);

  return sub_8CEEC();
}

void sub_5DAD0(Swift::String a1)
{

  sub_8CF7C(a1);
}

uint64_t sub_5DAE8()
{
  sub_6608();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  sub_8B6BC();
  v1[9] = swift_task_alloc();
  v4 = sub_8BCBC();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v5);
}

uint64_t sub_5DBD0()
{
  sub_60C80();
  sub_4DFB4();
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  v0[13] = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_125A0(v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    sub_3D9B8(&dword_0, v5, v6, "#SendAnnouncementIntentHandledStrategy makeIntentHandledResponseAsync with response framework adoption");
    sub_E890(v4);
  }

  sub_2664(&qword_C2A00, &qword_92D78);
  v7 = sub_8BB6C();
  sub_2D438();

  v8 = sub_8BB8C();
  v9 = [v8 isReply];

  if (v9)
  {
    [v9 BOOLValue];
  }

  v10 = sub_8BB8C();
  v0[14] = sub_2CCA0();

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  sub_443E0(v11);
  sub_60C6C();

  return sub_4C91C(v12, v13, v14);
}

uint64_t sub_5DDA8()
{
  sub_6608();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  sub_60C10();
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;
  v3[16] = v0;

  if (!v0)
  {
  }

  sub_65B8();

  return _swift_task_switch(v8);
}

uint64_t sub_5DEAC(uint64_t a1)
{
  v18 = *(v1 + 56);
  sub_8B68C();
  *(swift_task_alloc() + 16) = vextq_s8(v18, v18, 8uLL);
  sub_8BC3C();

  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_125A0(v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    sub_3D9B8(&dword_0, v5, v6, "#SendAnnouncementIntentHandledStrategy resetting context");
    sub_E890(v4);
  }

  v7 = *(v1 + 24);
  v8 = *(v1 + 64);

  *(v1 + 136) = v7;
  sub_622C((v8 + 16), *(v8 + 40));
  type metadata accessor for SharedGlobals(0);

  sub_718EC();

  v9 = sub_8B8FC();
  sub_60BD8(v9);
  v10 = sub_8B8EC();
  *(v1 + 144) = v10;
  *(v1 + 40) = v10;
  v11 = sub_2664(&qword_C0690, &unk_8EBF0);
  v12 = sub_44464(v11);
  *(v1 + 152) = v12;
  *(v12 + 16) = xmmword_8E860;
  *(v12 + 32) = v7;
  v13 = v7;
  v14 = swift_task_alloc();
  *(v1 + 160) = v14;
  *v14 = v1;
  v14[1] = sub_5E0A0;
  v15 = *(v1 + 96);
  v16 = *(v1 + 48);

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v16, v12, v15, v8, &protocol witness table for ResponseFactory);
}

uint64_t sub_5E0A0()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  sub_65B8();

  return _swift_task_switch(v3);
}

uint64_t sub_5E1A4()
{
  sub_60C80();
  sub_4DFB4();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v2 + 8))(v1, v3);

  sub_65A0();
  sub_60C6C();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_5E240()
{
  sub_6608();

  sub_65A0();

  return v0();
}

uint64_t sub_5E2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8BC7C();
  sub_8BCAC();
  sub_600B8();
  return sub_8BC9C();
}

uint64_t sub_5E2F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_65B8();
  return _swift_task_switch(v4);
}

uint64_t sub_5E324()
{
  sub_152A0();
  sub_2664(&qword_C2A00, &qword_92D78);
  v1 = sub_8BB6C();
  [v1 code];

  v2 = sub_8BB8C();
  *(v0 + 40) = sub_2CCA0();

  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_5E41C;

  return sub_5E594();
}

uint64_t sub_5E41C()
{
  sub_6608();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_65B8();

    return _swift_task_switch(v7);
  }

  else
  {

    sub_65A0();

    return v8();
  }
}

uint64_t sub_5E538()
{
  sub_6608();

  sub_65A0();

  return v0();
}

uint64_t sub_5E594()
{
  sub_6608();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v1[34] = type metadata accessor for HomeCommunicationError(0);
  v1[35] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v5);
}

uint64_t sub_5E624()
{
  v47 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementIntentHandledStrategy makeFailureHandlingIntentResponseAsync with response framework adoption", v4, 2u);
    sub_E890(v4);
  }

  v5 = v0[31];

  switch(v5)
  {
    case 6:
      sub_60C48();
      v6 = swift_task_alloc();
      v0[37] = v6;
      *v6 = v0;
      sub_60C1C(v6);
      sub_60C54();

      return sub_4C618(v7);
    case 7:
      sub_60C48();
      v19 = swift_task_alloc();
      v0[38] = v19;
      *v19 = v0;
      sub_60C1C(v19);
      sub_60C54();

      return sub_4C500(v20);
    case 8:
      sub_60C48();
      v12 = swift_task_alloc();
      v0[36] = v12;
      *v12 = v0;
      sub_443E0(v12);
      sub_60C54();

      return sub_4C7D4();
    case 9:
      sub_60C48();
      v14 = swift_task_alloc();
      v0[40] = v14;
      *v14 = v0;
      sub_60C1C(v14);
      sub_60C54();

      return sub_4C208(v15);
    case 10:
      sub_60C48();
      v10 = swift_task_alloc();
      v0[39] = v10;
      *v10 = v0;
      sub_443E0(v10);
      sub_60C54();

      return sub_4C01C();
    case 11:
      sub_60C48();
      v22 = swift_task_alloc();
      v0[41] = v22;
      *v22 = v0;
      sub_443E0(v22);
      sub_60C54();

      return sub_4C45C();
    case 12:
      sub_60C48();
      v24 = swift_task_alloc();
      v0[42] = v24;
      *v24 = v0;
      sub_443E0(v24);
      sub_60C54();

      return sub_4C730();
    case 13:
      sub_60C48();
      v17 = swift_task_alloc();
      v0[43] = v17;
      *v17 = v0;
      sub_443E0(v17);
      sub_60C54();

      return sub_4C0C0();
    case 14:
      sub_60C48();
      v26 = swift_task_alloc();
      v0[44] = v26;
      *v26 = v0;
      sub_443E0(v26);
      sub_60C54();

      return sub_4C164();
    default:
      v28 = sub_8CCEC();
      v29 = sub_8D12C();
      if (!sub_125A0(v29))
      {
        goto LABEL_48;
      }

      v30 = v0[31];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46 = v32;
      *v31 = 136315138;
      if (v30 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v33 = v0[31];
        if (v33 <= 0x7FFFFFFF)
        {
          v34 = v32;
          switch(v33)
          {
            case 1:
              v35 = @"RECIPIENTS_UNREACHABLE";
              goto LABEL_46;
            case 2:
              v35 = @"RECIPIENTS_ANNOUNCEMENTS_DISABLED";
              goto LABEL_46;
            case 3:
              v35 = @"SENDER_ANNOUNCEMENTS_DISABLED";
              goto LABEL_46;
            case 4:
              v35 = @"RECIPIENT_CANNOT_RECEIVE_ANNOUNCEMENTS";
              goto LABEL_46;
            case 5:
              v35 = @"NO_HOMEPOD";
              goto LABEL_46;
            case 6:
              v35 = @"RECIPIENT_HOMEPODS_UPDATE_REQUIRED";
              goto LABEL_46;
            case 7:
              v35 = @"REMOTE_ACCESS_NOT_ALLOWED";
              goto LABEL_46;
            case 8:
              v35 = @"NO_OTHER_HOMEPOD_TO_RECEIVE_ANNOUNCEMENTS";
              goto LABEL_46;
            case 9:
              v35 = @"ONLY_ANNOUNCERS_DEVICE_IS_AVAILABLE";
LABEL_46:
              v36 = v35;
              break;
            default:
              v35 = [NSString stringWithFormat:@"(unknown: %i)", v0[31], v46];
              break;
          }

          v37 = v35;
          v38 = sub_8CEDC();
          v40 = v39;

          v41 = sub_862D8(v38, v40, &v46);

          *(v31 + 4) = v41;
          _os_log_impl(&dword_0, v28, v29, "#SendAnnouncementIntentHandledStrategy makeFailureHandlingIntentResponse resulted in generic error code=%s", v31, 0xCu);
          sub_2714(v34);
          sub_E890(v34);
          sub_E890(v31);
LABEL_48:

          v42 = v0[35];
          *v42 = v0[31];
          swift_storeEnumTagMultiPayload();
          sub_60B20(&qword_BFF38, type metadata accessor for HomeCommunicationError, &protocol conformance descriptor for HomeCommunicationError);
          swift_allocError();
          sub_15350(v43);
          sub_48464(v42);
          swift_willThrow();

          sub_65A0();
          sub_60C54();

          __asm { BRAA            X1, X16 }
        }
      }

      __break(1u);
      JUMPOUT(0x5ED30);
  }
}

uint64_t sub_5ED78()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  sub_60C10();
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;

  if (v0)
  {

    sub_60BC8();

    return v8();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v10);
  }
}

uint64_t sub_5EEA0()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 24);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  v5 = sub_2664(&qword_C0690, &unk_8EBF0);
  v6 = sub_44464(v5);
  v7 = sub_60C3C(v6);
  sub_60C30(v7, xmmword_8E860);
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5EF70()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  sub_60C10();
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;

  if (v0)
  {

    sub_60BC8();

    return v8();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v10);
  }
}

uint64_t sub_5F098()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 48);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  v5 = sub_2664(&qword_C0690, &unk_8EBF0);
  v6 = sub_44464(v5);
  v7 = sub_60C3C(v6);
  sub_60C30(v7, xmmword_8E860);
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5F168()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[8] = v1;
  v3[9] = v5;
  v3[10] = v0;
  sub_60C10();
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;

  if (v0)
  {

    sub_60BC8();

    return v8();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v10);
  }
}

uint64_t sub_5F290()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 72);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  v5 = sub_2664(&qword_C0690, &unk_8EBF0);
  v6 = sub_44464(v5);
  v7 = sub_60C3C(v6);
  sub_60C30(v7, xmmword_8E860);
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5F360()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[11] = v1;
  v3[12] = v5;
  v3[13] = v0;
  sub_60C10();
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;

  if (v0)
  {

    sub_60BC8();

    return v8();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v10);
  }
}

uint64_t sub_5F488()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 96);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  v5 = sub_2664(&qword_C0690, &unk_8EBF0);
  v6 = sub_44464(v5);
  v7 = sub_60C3C(v6);
  sub_60C30(v7, xmmword_8E860);
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5F558()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[14] = v1;
  v3[15] = v5;
  v3[16] = v0;
  sub_60C10();
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;

  if (v0)
  {

    sub_60BC8();

    return v8();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v10);
  }
}

uint64_t sub_5F680()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 120);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  v5 = sub_2664(&qword_C0690, &unk_8EBF0);
  v6 = sub_44464(v5);
  v7 = sub_60C3C(v6);
  sub_60C30(v7, xmmword_8E860);
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5F750()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[17] = v1;
  v3[18] = v5;
  v3[19] = v0;
  sub_60C10();
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;

  if (v0)
  {

    sub_60BC8();

    return v8();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v10);
  }
}

uint64_t sub_5F878()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 144);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  v5 = sub_2664(&qword_C0690, &unk_8EBF0);
  v6 = sub_44464(v5);
  v7 = sub_60C3C(v6);
  sub_60C30(v7, xmmword_8E860);
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5F948()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[20] = v1;
  v3[21] = v5;
  v3[22] = v0;
  sub_60C10();
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;

  if (v0)
  {

    sub_60BC8();

    return v8();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v10);
  }
}

uint64_t sub_5FA70()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 168);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  v5 = sub_2664(&qword_C0690, &unk_8EBF0);
  v6 = sub_44464(v5);
  v7 = sub_60C3C(v6);
  sub_60C30(v7, xmmword_8E860);
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5FB40()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[23] = v1;
  v3[24] = v5;
  v3[25] = v0;
  sub_60C10();
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;

  if (v0)
  {

    sub_60BC8();

    return v8();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v10);
  }
}

uint64_t sub_5FC68()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 192);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  v5 = sub_2664(&qword_C0690, &unk_8EBF0);
  v6 = sub_44464(v5);
  v7 = sub_60C3C(v6);
  sub_60C30(v7, xmmword_8E860);
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5FD38()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[26] = v1;
  v3[27] = v5;
  v3[28] = v0;
  sub_60C10();
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;

  if (v0)
  {

    sub_60BC8();

    return v8();
  }

  else
  {
    sub_4DF78();

    return _swift_task_switch(v10);
  }
}

uint64_t sub_5FE60()
{
  sub_60C80();
  sub_4DFB4();
  v1 = *(v0 + 216);
  v2 = sub_60BF4();
  sub_60BD8(v2);
  v3 = v1;
  v4 = sub_8B8EC();
  sub_60BB8(v4);
  v5 = sub_2664(&qword_C0690, &unk_8EBF0);
  v6 = sub_44464(v5);
  v7 = sub_60C3C(v6);
  sub_60C30(v7, xmmword_8E860);
  v8 = swift_task_alloc();
  v9 = sub_60BA8(v8);
  *v9 = v10;
  sub_60B70(v9);
  sub_60B94();
  sub_60C6C();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v11, v12, v13, v14, v15);
}

uint64_t sub_5FF30()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  sub_65B8();

  return _swift_task_switch(v3);
}

uint64_t sub_60050()
{
  sub_6608();

  sub_65A0();

  return v1();
}

void *sub_600B8()
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v0 = sub_8CD0C();
  sub_33F4(v0, qword_C3DF8);
  v1 = sub_8CCEC();
  v2 = sub_8D11C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_E8E0();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#SendAnnouncementIntentHandlerStrategy makePostHandleIntentCommands", v3, 2u);
    sub_E890(v3);
  }

  v4 = sub_8CCEC();
  v5 = sub_8D11C();
  if (sub_125A0(v5))
  {
    v6 = sub_E8E0();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "#SendAnnouncementIntentHandlerStrategy Making a SAIntentGroupHandleIntent that contains INPlayAnnouncementSoundIntent.", v6, 2u);
    sub_E890(v6);
  }

  v7 = [objc_allocWithZone(INPlayAnnouncementSoundIntent) initWithSoundType:1];
  sub_2664(&qword_C2A00, &qword_92D78);
  v8 = sub_8BB8C();
  v9 = [v8 _metadata];

  [v7 _setMetadata:v9];
  sub_4A528();
  sub_8BB7C();
  v10 = sub_8CA7C();
  v12 = v11;

  sub_349C(v7, v10, v12);
  sub_8D02C();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_8D06C();
  }

  sub_8D08C();

  return _swiftEmptyArrayStorage;
}

char *sub_60300()
{
  sub_2714((v0 + 16));

  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37SendAnnouncementIntentHandledStrategy_completionOutputManifest;
  v2 = sub_8BCBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_60378()
{
  sub_60300();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SendAnnouncementIntentHandledStrategy(uint64_t a1)
{
  result = qword_C2938;
  if (!qword_C2938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_60424(uint64_t a1)
{
  result = sub_8BCBC();
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

uint64_t sub_604D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendAnnouncementIntentHandledStrategy(0);
  *v8 = v4;
  v8[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_60598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendAnnouncementIntentHandledStrategy(0);
  *v8 = v4;
  v8[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_60660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendAnnouncementIntentHandledStrategy(0);
  *v8 = v4;
  v8[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_60728()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3B650;

  return sub_5DAE8();
}

uint64_t sub_607D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendAnnouncementIntentHandledStrategy(0);
  *v8 = v4;
  v8[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_6089C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendAnnouncementIntentHandledStrategy(0);
  *v8 = v4;
  v8[1] = sub_3B650;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_60964(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E2A0;

  return sub_5E2F4(a1, a2);
}

uint64_t sub_60A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendAnnouncementIntentHandledStrategy(0);
  *v8 = v4;
  v8[1] = sub_E0F4;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v9, a4);
}

uint64_t sub_60B20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_60BB8(uint64_t result)
{
  *(v1 + 368) = result;
  *(v1 + 232) = result;
  return result;
}

uint64_t sub_60BD8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_60BF4()
{
  *(v1 + 360) = v0;

  return sub_8B8FC();
}

__n128 *sub_60C30(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_60C94()
{
  sub_6608();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v0[7] = v5;
  v0[8] = v6;
  v0[5] = v7;
  v0[6] = v8;
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  sub_65E4(v9);
  v0[13] = sub_E83C();
  v10 = sub_8C7FC();
  v0[14] = v10;
  sub_115AC(v10);
  v0[15] = v11;
  v0[16] = sub_E83C();
  v12 = sub_2664(&qword_C2A40, &qword_92DB0);
  v0[17] = v12;
  sub_65E4(v12);
  v0[18] = sub_E83C();
  v13 = sub_2664(&qword_C28C8, &qword_92B00);
  sub_65E4(v13);
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  sub_65B8();

  return _swift_task_switch(v14);
}

uint64_t sub_60DE4()
{
  v42 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  (*(*(v0 + 120) + 104))(v1, enum case for InputOrigin.assistantTextInput(_:), v4);
  sub_6270(v1, 0, 1, v4);
  v6 = *(v3 + 48);
  sub_64AF4(v5, v2, &qword_C28C8, &qword_92B00);
  sub_64AF4(v1, v2 + v6, &qword_C28C8, &qword_92B00);
  if (sub_3364(v2, 1, v4) != 1)
  {
    v9 = *(v0 + 112);
    sub_64AF4(*(v0 + 144), *(v0 + 152), &qword_C28C8, &qword_92B00);
    v10 = sub_3364(v2 + v6, 1, v9);
    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    if (v10 != 1)
    {
      v18 = *(v0 + 144);
      v20 = *(v0 + 120);
      v19 = *(v0 + 128);
      v21 = *(v0 + 112);
      v40 = *(v0 + 72);
      (*(v20 + 32))(v19, v2 + v6, v21);
      sub_65094(&qword_C28D8, &type metadata accessor for InputOrigin, &protocol conformance descriptor for InputOrigin);
      v22 = sub_8CE9C();
      v23 = *(v20 + 8);
      v23(v19, v21);
      sub_1D05C(v12, &qword_C28C8, &qword_92B00);
      v23(v11, v21);
      sub_1D05C(v18, &qword_C28C8, &qword_92B00);
      if ((v22 & 1) != 0 && v40)
      {
        goto LABEL_13;
      }

LABEL_8:
      v15 = swift_task_alloc();
      *(v0 + 192) = v15;
      *v15 = v0;
      v15[1] = sub_61680;
      sub_6614();

      return sub_636D0();
    }

    sub_1D05C(*(v0 + 160), &qword_C28C8, &qword_92B00);
    v13 = sub_1D37C();
    v14(v13);
LABEL_7:
    sub_1D05C(*(v0 + 144), &qword_C2A40, &qword_92DB0);
    goto LABEL_8;
  }

  v7 = *(v0 + 112);
  sub_1D05C(*(v0 + 160), &qword_C28C8, &qword_92B00);
  if (sub_3364(v2 + v6, 1, v7) != 1)
  {
    goto LABEL_7;
  }

  v8 = *(v0 + 72);
  sub_1D05C(*(v0 + 144), &qword_C28C8, &qword_92B00);
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_13:
  v24 = *(v0 + 72);
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v25 = sub_8CD0C();
  *(v0 + 168) = sub_22B78(v25, qword_C3DF8);

  v26 = sub_8CCEC();
  v27 = sub_8D11C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 64);
    v29 = sub_1D358();
    v30 = sub_6630();
    v41 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_862D8(v28, v24, &v41);
    sub_65294();
    _os_log_impl(v31, v32, v33, v34, v29, 0xCu);
    sub_2714(v30);
    sub_65178();
    sub_5D434();
  }

  sub_622C(*(v0 + 96), *(*(v0 + 96) + 24));
  v35 = swift_task_alloc();
  *(v0 + 176) = v35;
  *v35 = v0;
  v35[1] = sub_6124C;
  sub_6614();

  return sub_64C44(v36, v37, v38);
}

uint64_t sub_6124C()
{
  sub_6608();
  sub_E884();
  sub_65D8();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = *v0;
  sub_65D8();
  *v6 = v5;
  *(v8 + 184) = v7;

  sub_65B8();

  return _swift_task_switch(v9);
}

uint64_t sub_61340(uint64_t a1)
{
  v38 = v1;
  if (*(v1 + 184))
  {
  }

  else
  {
    v2 = sub_8CCEC();
    v3 = sub_8D11C();
    if (sub_125A0(v3))
    {
      v4 = sub_E8E0();
      *v4 = 0;
      sub_3D9B8(&dword_0, v5, v6, "#SendAnnouncementIntentHelper failed to generate speech file");
      sub_E890(v4);
    }
  }

  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v7 = sub_8CD0C();
  sub_22B78(v7, qword_C3DF8);

  v8 = sub_8CCEC();
  v9 = sub_8D11C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_1D358();
    sub_6630();
    sub_652A0();
    *v10 = 136315138;
    v11 = sub_C834();
    v14 = sub_862D8(v11, v12, v13);

    *(v10 + 4) = v14;
    sub_652D8(&dword_0, v15, v16, "#SendAnnouncementIntentHelper extracted speech data URL is: %s");
    sub_651D4();
    sub_65178();
  }

  else
  {
  }

  v17 = *(v1 + 72);

  v18 = sub_8CCEC();
  v19 = sub_8D11C();

  if (os_log_type_enabled(v18, v19))
  {
    v21 = *(v1 + 64);
    v20 = *(v1 + 72);
    v22 = sub_1D358();
    sub_6630();
    sub_652A0();
    *v22 = 136315138;
    v23 = v20 == 0;
    if (v20)
    {
      v24 = v21;
    }

    else
    {
      v24 = 7104878;
    }

    if (v23)
    {
      v25 = 0xE300000000000000;
    }

    else
    {
      v25 = v17;
    }

    v26 = sub_862D8(v24, v25, &v37);

    *(v22 + 4) = v26;
    sub_652F8(&dword_0, v27, v28, "#SendAnnouncementIntentHelper speech data transcription is: %s");
    sub_651D4();
    sub_65178();
  }

  v29 = [*(v1 + 40) announcement];
  sub_C834();
  sub_8AF7C();

  if (v29)
  {
    sub_64A28(v29);
  }

  v30 = *(v1 + 40);
  v31 = objc_allocWithZone(INAnnouncement);

  v32 = sub_65260();
  v33 = sub_6514C();
  [v30 setValue:v32 forKey:v33];

  sub_6523C();

  v34 = sub_65228();

  return v35(v34);
}

uint64_t sub_61680()
{
  sub_4DFB4();
  v3 = v2;
  v5 = v4;
  sub_E884();
  v7 = v6;
  sub_65D8();
  *v8 = v7;
  v9 = *v1;
  sub_65D8();
  *v10 = v9;
  v7[25] = v0;

  if (!v0)
  {
    v7[26] = v3;
    v7[27] = v5;
  }

  sub_65B8();

  return _swift_task_switch(v11);
}

uint64_t sub_617A0()
{
  v33 = v0;
  v1 = qword_BF818;

  if (v1 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v2 = sub_8CD0C();
  sub_22B78(v2, qword_C3DF8);

  v3 = sub_8CCEC();
  v4 = sub_8D11C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_1D358();
    sub_6630();
    sub_652A0();
    *v5 = 136315138;
    v6 = sub_C834();
    v9 = sub_862D8(v6, v7, v8);

    *(v5 + 4) = v9;
    sub_652D8(&dword_0, v10, v11, "#SendAnnouncementIntentHelper extracted speech data URL is: %s");
    sub_651D4();
    sub_65178();
  }

  else
  {
  }

  v12 = *(v0 + 72);

  v13 = sub_8CCEC();
  v14 = sub_8D11C();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = sub_1D358();
    sub_6630();
    sub_652A0();
    *v17 = 136315138;
    v18 = v15 == 0;
    if (v15)
    {
      v19 = v16;
    }

    else
    {
      v19 = 7104878;
    }

    if (v18)
    {
      v20 = 0xE300000000000000;
    }

    else
    {
      v20 = v12;
    }

    v21 = sub_862D8(v19, v20, &v32);

    *(v17 + 4) = v21;
    sub_652F8(&dword_0, v22, v23, "#SendAnnouncementIntentHelper speech data transcription is: %s");
    sub_651D4();
    sub_65178();
  }

  v24 = [*(v0 + 40) announcement];
  sub_C834();
  sub_8AF7C();

  if (v24)
  {
    sub_64A28(v24);
  }

  v25 = *(v0 + 40);
  v26 = objc_allocWithZone(INAnnouncement);

  v27 = sub_65260();
  v28 = sub_6514C();
  [v25 setValue:v27 forKey:v28];

  sub_6523C();

  v29 = sub_65228();

  return v30(v29);
}

uint64_t sub_61A84()
{
  sub_4DFB4();
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v0 = sub_8CD0C();
  sub_22B78(v0, qword_C3DF8);
  swift_errorRetain();
  v1 = sub_8CCEC();
  v2 = sub_8D12C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_1D358();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    sub_65294();
    _os_log_impl(v6, v7, v8, v9, v3, 0xCu);
    sub_1D05C(v4, &qword_BFF40, &unk_90F70);
    sub_5D434();
    sub_E890(v3);
  }

  else
  {
  }

  sub_6523C();

  v10 = sub_65228();

  return v11(v10);
}

void *sub_61C18(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_2664(&qword_C2A08, &qword_92D80);
  sub_65E4(v6);
  sub_1D394();
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = sub_8C34C();
  sub_3488();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_16854();
  v16 = v15 - v14;
  sub_61E70(a1, v9);
  if (sub_3364(v9, 1, v10) == 1)
  {
    sub_1D05C(v9, &qword_C2A08, &qword_92D80);
  }

  else
  {
    (*(v12 + 32))(v16, v9, v10);
    v17 = sub_8C33C();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v21 = sub_8C32C();
      if (v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }

      v24 = sub_8C31C();
      if (v25)
      {
        v26 = 60000;
      }

      else
      {
        v26 = v24;
      }

      sub_62630(a2, v23, v26, v19, v20, a3);

      (*(v12 + 8))(v16, v10);
      return a2;
    }

    (*(v12 + 8))(v16, v10);
  }

  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v27 = sub_8CD0C();
  sub_22B78(v27, qword_C3DF8);
  v28 = sub_8CCEC();
  v29 = sub_8D11C();
  if (sub_125A0(v29))
  {
    v30 = sub_E8E0();
    *v30 = 0;
    sub_65294();
    _os_log_impl(v31, v32, v33, v34, v30, 2u);
    sub_E890(v30);
  }

  v35 = a2;
  return a2;
}

uint64_t sub_61E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664(&qword_C2A28, &qword_92D90);
  sub_65E4(v4);
  sub_1D394();
  __chkstk_darwin(v5);
  v7 = &v65 - v6;
  v8 = sub_2664(&qword_C2A30, &qword_92D98);
  sub_65E4(v8);
  sub_1D394();
  __chkstk_darwin(v9);
  v74 = (&v65 - v10);
  sub_22AE4();
  v75 = sub_8C39C();
  sub_3488();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_16854();
  v16 = v15 - v14;
  v17 = sub_2664(&qword_C2A38, &qword_92DA0);
  sub_65E4(v17);
  sub_1D394();
  __chkstk_darwin(v18);
  v20 = (&v65 - v19);
  type metadata accessor for SmsNLIntent(0);
  sub_6574();
  __chkstk_darwin(v21);
  sub_16854();
  v24 = v23 - v22;
  v25 = sub_8C41C();
  sub_3488();
  v69 = v26;
  v28 = __chkstk_darwin(v27);
  v30 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v70 = &v65 - v31;
  sub_22AE4();
  sub_8C71C();
  sub_6574();
  (*(v32 + 16))(v24, a1);
  if (qword_BF880 != -1)
  {
LABEL_24:
    swift_once();
  }

  sub_65094(&qword_C0E70, type metadata accessor for SmsNLIntent, &unk_93AB0);
  sub_8C4AC();
  sub_650DC(v24, type metadata accessor for SmsNLIntent);
  if (sub_3364(v20, 1, v25) != 1)
  {
    v35 = a2;
    v37 = v69;
    v36 = v70;
    (*(v69 + 32))(v70, v20, v25);
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v68 = v35;
    v38 = sub_8CD0C();
    sub_22B78(v38, qword_C3DF8);
    (*(v37 + 16))(v30, v36, v25);
    v20 = sub_8CCEC();
    v24 = sub_8D11C();
    v39 = os_log_type_enabled(v20, v24);
    v67 = v25;
    if (v39)
    {
      v40 = sub_1D358();
      v72 = v40;
      v73 = sub_6630();
      v76 = v73;
      *v40 = 136315138;
      sub_8C40C();
      v71 = sub_8D05C();
      v41 = v37;
      v43 = v42;

      v44 = sub_652AC(v41);
      v45(v44);
      v46 = sub_862D8(v71, v43, &v76);

      v47 = v72;
      *(v72 + 1) = v46;
      v48 = v47;
      _os_log_impl(&dword_0, v20, v24, "Successfully extracted smsMessage node: %s.", v47, 0xCu);
      v49 = v73;
      sub_2714(v73);
      sub_E890(v49);
      sub_E890(v48);
    }

    else
    {

      v50 = sub_652AC(v37);
      v51(v50);
    }

    v52 = sub_8C40C();
    v30 = v52;
    v73 = *(v52 + 16);
    if (!v73)
    {
LABEL_19:

      v66(v70, v67);
      v33 = sub_8C34C();
      v34 = v68;
      goto LABEL_20;
    }

    v53 = 0;
    v72 = (v52 + ((*(v12 + 80) + 32) & ~*(v12 + 80)));
    a2 = v12 + 16;
    v25 = v12 + 8;
    LODWORD(v71) = enum case for TerminalElement.OriginDetail.matchingSpan(_:);
    while (1)
    {
      if (v53 >= *(v30 + 2))
      {
        __break(1u);
        goto LABEL_24;
      }

      v54 = v75;
      (*(v12 + 16))(v16, v72 + *(v12 + 72) * v53, v75);
      sub_8C38C();
      (*(v12 + 8))(v16, v54);
      v24 = sub_8C37C();
      if (sub_3364(v7, 1, v24) == 1)
      {
        break;
      }

      v20 = v74;
      sub_8C36C();
      (*(*(v24 - 8) + 8))(v7, v24);
      v56 = sub_8C35C();
      if (sub_3364(v20, 1, v56) == 1)
      {
        goto LABEL_15;
      }

      v57 = *(v56 - 8);
      v58 = (*(v57 + 88))(v20, v56);
      if (v58 == v71)
      {
        v66(v70, v67);

        (*(v57 + 96))(v20, v56);
        v62 = sub_8C34C();
        sub_6574();
        v64 = v68;
        (*(v63 + 32))(v68, v20, v62);
        v34 = v64;
        v60 = 0;
        v33 = v62;
        return sub_6270(v34, v60, 1, v33);
      }

      v59 = *(v57 + 8);
      v24 = v57 + 8;
      v59(v20, v56);
LABEL_18:
      if (v73 == ++v53)
      {
        goto LABEL_19;
      }
    }

    sub_1D05C(v7, &qword_C2A28, &qword_92D90);
    v55 = sub_8C35C();
    v20 = v74;
    sub_6270(v74, 1, 1, v55);
LABEL_15:
    sub_1D05C(v20, &qword_C2A30, &qword_92D98);
    goto LABEL_18;
  }

  sub_1D05C(v20, &qword_C2A38, &qword_92DA0);
  v33 = sub_8C34C();
  v34 = a2;
LABEL_20:
  v60 = 1;
  return sub_6270(v34, v60, 1, v33);
}

void *sub_62630(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_2664(&qword_BFF28, &unk_8EFD0);
  sub_65E4(v12);
  sub_1D394();
  v14 = __chkstk_darwin(v13);
  v16 = &v56 - v15;
  v17 = sub_62A2C(v14, a2, a3, a6);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v21 = sub_8CD0C();
    sub_22B78(v21, qword_C3DF8);

    v22 = sub_8CCEC();
    v23 = sub_8D11C();

    v24 = os_log_type_enabled(v22, v23);
    v58 = v19;
    if (v24)
    {
      v25 = sub_1D358();
      v57 = a4;
      v26 = v25;
      v27 = sub_6630();
      v59 = v27;
      *v26 = 136315138;

      v28 = sub_862D8(v19, v20, &v59);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_0, v22, v23, "#SendAnnouncementIntentHelper extracted speech data URL is: %s", v26, 0xCu);
      sub_2714(v27);
      sub_E890(v27);
      v29 = v26;
      a4 = v57;
      sub_E890(v29);
    }

    v30 = sub_8CCEC();
    v31 = sub_8D11C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = sub_1D358();
      v33 = sub_6630();
      v59 = v33;
      *v32 = 136315138;
      if (a5)
      {
        v34 = a4;
      }

      else
      {
        v34 = 7104878;
      }

      v57 = v16;
      v35 = a1;
      v36 = a4;
      if (a5)
      {
        v37 = a5;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      v38 = sub_862D8(v34, v37, &v59);
      a4 = v36;
      a1 = v35;
      v16 = v57;

      *(v32 + 4) = v38;
      _os_log_impl(&dword_0, v30, v31, "#SendAnnouncementIntentHelper speech data transcription is: %s", v32, 0xCu);
      sub_2714(v33);
      sub_E890(v33);
      sub_E890(v32);
    }

    v39 = [a1 announcement];
    sub_8AF7C();

    if (v39)
    {
      v40 = sub_64A28(v39);
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    objc_allocWithZone(INAnnouncement);

    v52 = sub_64758(v16, v40, v42, a4, a5);
    v53 = sub_6514C();
    [a1 setValue:v52 forKey:v53];

    v54 = a1;
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v43 = sub_8CD0C();
    sub_22B78(v43, qword_C3DF8);
    v44 = sub_8CCEC();
    v45 = sub_8D12C();
    if (sub_125A0(v45))
    {
      v46 = sub_E8E0();
      *v46 = 0;
      sub_65294();
      _os_log_impl(v47, v48, v49, v50, v46, 2u);
      sub_E890(v46);
    }

    v51 = a1;
  }

  return a1;
}

uint64_t sub_62A2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_8CDEC();
  sub_3488();
  v83 = v8;
  v84 = v7;
  __chkstk_darwin(v7);
  sub_16854();
  v80 = (v10 - v9);
  sub_22AE4();
  sub_8CE1C();
  sub_3488();
  v81 = v12;
  v82 = v11;
  v13 = __chkstk_darwin(v11);
  v78 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v79 = &v70 - v15;
  v16 = sub_22AE4();
  v73 = type metadata accessor for SignpostLog.Signpost(v16);
  sub_3488();
  v74 = v17;
  v19 = __chkstk_darwin(v18);
  v76 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v20;
  __chkstk_darwin(v19);
  v22 = &v70 - v21;
  v77 = dispatch_semaphore_create(0);
  v23 = [objc_allocWithZone(SASExtractSpeechData) init];
  v24 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:a2];
  [v23 setStartTime:v24];

  v25 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:a3];
  [v23 setEndTime:v25];

  sub_622C(a4, a4[3]);
  sub_8B96C();
  if (v26)
  {
    v27 = sub_8CEAC();
  }

  else
  {
    v27 = 0;
  }

  [v23 setSpeechRequestId:v27];

  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v28 = sub_8CD0C();
  sub_22B78(v28, qword_C3DF8);
  sub_E528(a4, v89);
  v29 = v23;
  v72 = v27;
  v30 = sub_8CCEC();
  v31 = sub_8D11C();

  v32 = os_log_type_enabled(v30, v31);
  v85 = v29;
  if (v32)
  {
    v33 = sub_6630();
    v34 = swift_slowAlloc();
    v71 = v22;
    v35 = v34;
    v36 = sub_6630();
    v88 = v36;
    *v33 = 136315650;
    sub_622C(v89, v89[3]);
    v86 = sub_8B96C();
    v87 = v37;
    sub_2664(&qword_C1A08, &unk_92B40);
    sub_8CEEC();
    sub_2714(v89);
    v38 = sub_1D37C();
    v41 = sub_862D8(v38, v39, v40);

    *(v33 + 4) = v41;
    *(v33 + 12) = 2112;
    v42 = [v29 startTime];
    *(v33 + 14) = v42;
    *v35 = v42;
    *(v33 + 22) = 2112;
    v43 = [v29 endTime];
    *(v33 + 24) = v43;
    v35[1] = v43;
    _os_log_impl(&dword_0, v30, v31, "#SendAnnouncementIntentHelper sending SASExtractSpeechData with speechRequestId:%s, startTime in ms: %@, endTime in ms: %@", v33, 0x20u);
    sub_2664(&qword_BFF40, &unk_90F70);
    swift_arrayDestroy();
    v44 = v35;
    v22 = v71;
    sub_E890(v44);
    sub_2714(v36);
    sub_65178();
    sub_E890(v33);
  }

  else
  {

    sub_2714(v89);
  }

  if (qword_BF820 != -1)
  {
    sub_65208(&qword_BF820);
  }

  v45 = qword_C0EE8;
  sub_8CCCC();
  sub_8D16C();
  sub_65288();
  sub_8CCBC();
  v46 = &v22[*(v73 + 20)];
  *v46 = "ExtractSpeechData";
  *(v46 + 1) = 17;
  v46[16] = 2;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  v73 = v47 + 16;
  *(v47 + 24) = 0;
  sub_622C(a4, a4[3]);
  v48 = v76;
  sub_65038(v22, v76, type metadata accessor for SignpostLog.Signpost);
  v49 = (*(v74 + 80) + 24) & ~*(v74 + 80);
  v50 = (v75 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v47;
  sub_4A3B8(v48, v51 + v49);
  v52 = v77;
  *(v51 + v50) = v77;
  sub_ADE4(0, &qword_C2A10, SASExtractSpeechDataCompleted_ptr);

  v53 = v52;
  v54 = v85;
  sub_8B97C();

  v55 = v78;
  sub_8CE0C();
  v56 = v80;
  *v80 = 10000;
  v58 = v83;
  v57 = v84;
  (*(v83 + 104))(v56, enum case for DispatchTimeInterval.milliseconds(_:), v84);
  v59 = v79;
  sub_8CE2C();
  (*(v58 + 8))(v56, v57);
  v60 = *(v81 + 8);
  v61 = v55;
  v62 = v82;
  v60(v61, v82);
  sub_8D17C();
  v60(v59, v62);
  if (sub_8CDFC())
  {
    v63 = sub_8CCEC();
    v64 = sub_8D12C();
    if (sub_125A0(v64))
    {
      v65 = sub_E8E0();
      *v65 = 0;
      _os_log_impl(&dword_0, v63, v64, "#SendAnnouncementIntentHelper ExtractSpeechData ace command timed out", v65, 2u);
      sub_E890(v65);
    }

    type metadata accessor for RadarUtils();
    inited = swift_initStackObject();
    sub_8C88C();
    swift_allocObject();
    *(inited + 16) = sub_8C87C();
    sub_38AE4(1, 2, 0xD000000000000011, 0x8000000000098130);
    swift_setDeallocating();

    sub_65134();
    sub_650DC(v22, v67);
  }

  else
  {
    sub_65134();
    sub_650DC(v22, v68);
  }

  swift_beginAccess();

  return sub_1D37C();
}

Swift::Int sub_63288(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v33[1] = a3;
  v33[2] = a4;
  v6 = sub_8B9CC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v33 - v11;
  v13 = sub_2664(&qword_C2A18, &qword_92D88);
  __chkstk_darwin(v13);
  v15 = (v33 - v14);
  sub_64AF4(a1, v33 - v14, &qword_C2A18, &qword_92D88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v12, v15, v6);
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v16 = sub_8CD0C();
    sub_33F4(v16, qword_C3DF8);
    (*(v7 + 16))(v10, v12, v6);
    v17 = sub_8CCEC();
    v18 = sub_8D12C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      v34[0] = v33[0];
      *v19 = 136315138;
      sub_65094(&qword_C2A20, &type metadata accessor for SubmitCommandError, &protocol conformance descriptor for SubmitCommandError);
      v20 = sub_8D43C();
      v22 = v21;
      v23 = *(v7 + 8);
      v23(v10, v6);
      v24 = sub_862D8(v20, v22, v34);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_0, v17, v18, "#SendAnnouncementIntentHelper An error occurred while extracting speech data url: %s.", v19, 0xCu);
      sub_2714(v33[0]);

      v23(v12, v6);
    }

    else
    {

      v31 = *(v7 + 8);
      v31(v10, v6);
      v31(v12, v6);
    }
  }

  else
  {
    v25 = *v15;
    v26 = [*v15 speechDataUrl];
    if (v26)
    {
      v27 = v26;
      v28 = sub_8CEDC();
      v30 = v29;
    }

    else
    {

      v28 = 0;
      v30 = 0;
    }

    swift_beginAccess();
    *(a2 + 16) = v28;
    *(a2 + 24) = v30;
  }

  sub_8D15C();
  if (qword_BF820 != -1)
  {
    swift_once();
  }

  type metadata accessor for SignpostLog.Signpost(0);
  sub_8CCBC();
  return sub_8D18C();
}

uint64_t sub_636D0()
{
  sub_6608();
  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v4 = type metadata accessor for HomeCommunicationError(0);
  v0[12] = v4;
  sub_65E4(v4);
  v0[13] = sub_E83C();
  v5 = type metadata accessor for SignpostLog.Signpost(0);
  v0[14] = v5;
  sub_65E4(v5);
  v0[15] = sub_E83C();
  sub_65B8();

  return _swift_task_switch(v6);
}

uint64_t sub_63778()
{
  v38 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = [objc_allocWithZone(SASExtractSpeechData) init];
  v0[16] = v4;
  v5 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v3];
  [v4 setStartTime:v5];

  v6 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v2];
  [v4 setEndTime:v6];

  sub_622C(v1, v1[3]);
  sub_8BAEC();
  if (v7)
  {
    v8 = sub_8CEAC();
  }

  else
  {
    v8 = 0;
  }

  [v4 setSpeechRequestId:v8];

  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v9 = v0[11];
  v10 = sub_8CD0C();
  v0[17] = sub_33F4(v10, qword_C3DF8);
  sub_E528(v9, (v0 + 2));
  v11 = v4;
  v12 = sub_8CCEC();
  v13 = sub_8D11C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_6630();
    v15 = swift_slowAlloc();
    v36 = sub_6630();
    v37 = v36;
    *v14 = 136315650;
    sub_622C(v0 + 2, v0[5]);
    v0[7] = sub_8BAEC();
    v0[8] = v16;
    sub_2664(&qword_C1A08, &unk_92B40);
    v17 = sub_8CEEC();
    v19 = v18;
    sub_2714(v0 + 2);
    v20 = sub_862D8(v17, v19, &v37);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2112;
    v21 = [v11 startTime];
    *(v14 + 14) = v21;
    *v15 = v21;
    *(v14 + 22) = 2112;
    v22 = [v11 endTime];
    *(v14 + 24) = v22;
    v15[1] = v22;
    _os_log_impl(&dword_0, v12, v13, "#SendAnnouncementIntentHelper sending SASExtractSpeechData async with speechRequestId: %s, startTime in ms: %@, endTime in ms: %@", v14, 0x20u);
    sub_2664(&qword_BFF40, &unk_90F70);
    swift_arrayDestroy();
    sub_E890(v15);
    sub_2714(v36);
    sub_E890(v36);
    sub_5D434();
  }

  else
  {

    sub_2714(v0 + 2);
  }

  if (qword_BF820 != -1)
  {
    sub_65208(&qword_BF820);
  }

  v24 = v0[14];
  v23 = v0[15];
  v25 = v0[11];
  v26 = qword_C0EE8;
  v0[18] = qword_C0EE8;
  v27 = v26;
  sub_8CCCC();
  sub_8D16C();
  sub_65288();
  sub_8CCBC();
  v28 = v23 + *(v24 + 20);
  *v28 = "ExtractSpeechData";
  *(v28 + 8) = 17;
  *(v28 + 16) = 2;
  sub_622C(v25, v1[3]);
  v29 = swift_task_alloc();
  v0[19] = v29;
  sub_ADE4(0, &qword_C2090, SABaseCommand_ptr);
  *v29 = v0;
  v29[1] = sub_63BB8;
  sub_6614();

  return AceServiceInvokerAsync.submit<A>(_:)(v30, v31, v32, v33);
}

uint64_t sub_63BB8()
{
  sub_6608();
  sub_E884();
  sub_65D8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  sub_65B8();

  return _swift_task_switch(v5);
}

uint64_t sub_63CBC()
{
  v45 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = sub_64A98(v1, &selRef_speechDataUrl);
    if (v3)
    {
      v4 = v2;
      v5 = v3;

      v6 = sub_8CCEC();
      v7 = sub_8D11C();

      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 160);
      if (v8)
      {
        v10 = sub_1D358();
        v11 = sub_6630();
        v44 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_862D8(v4, v5, &v44);
        sub_65338(&dword_0, v12, v13, "#SendAnnouncementIntentHelper speechDataUrl unwrapped to %s");
        sub_2714(v11);
        sub_65178();
        sub_5D434();
      }

      v14 = *(v0 + 120);
      v15 = *(v0 + 128);
      sub_8D15C();
      sub_65288();
      sub_8CCBC();

      sub_65134();
      sub_650DC(v14, v16);

      v17 = *(v0 + 8);

      return v17(v4, v5);
    }

    v29 = sub_8CCEC();
    v30 = sub_8D12C();
    if (sub_125A0(v30))
    {
      v31 = sub_E8E0();
      *v31 = 0;
      sub_E890(v31);
    }

    v34 = *(v0 + 160);
    v35 = *(v0 + 104);

    *v35 = 0xD000000000000020;
    v35[1] = 0x8000000000098220;
    sub_C834();
    swift_storeEnumTagMultiPayload();
    sub_65194();
    v38 = sub_65094(v36, v37, &protocol conformance descriptor for HomeCommunicationError);
    sub_65318(v38);
    sub_15350(v39);
    sub_651AC();
    swift_willThrow();
  }

  else
  {

    v19 = sub_8CCEC();
    v20 = sub_8D12C();
    if (sub_125A0(v20))
    {
      v21 = sub_E8E0();
      *v21 = 0;
      sub_3D9B8(&dword_0, v22, v23, "#SendAnnouncementIntentHelper extractSpeechData return type is not of type SASExtractSpeechDataCompleted");
      sub_E890(v21);
    }

    v24 = *(v0 + 104);

    *v24 = 0xD000000000000068;
    v24[1] = 0x80000000000981B0;
    sub_C834();
    swift_storeEnumTagMultiPayload();
    sub_65194();
    v27 = sub_65094(v25, v26, &protocol conformance descriptor for HomeCommunicationError);
    sub_65318(v27);
    sub_15350(v28);
    sub_651AC();
    swift_willThrow();
  }

  v40 = *(v0 + 120);
  v41 = *(v0 + 128);
  sub_8D15C();
  sub_65288();
  sub_8CCBC();

  sub_65134();
  sub_650DC(v40, v42);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_64070()
{
  sub_4DFB4();
  v1 = v0[15];
  v2 = v0[16];
  sub_8D15C();
  sub_65288();
  sub_8CCBC();

  sub_65134();
  sub_650DC(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_64128(void *a1, void *a2)
{
  if (!a1)
  {
    sub_652C0();
    return;
  }

  v31 = a1;
  v4 = sub_64A28(v31);
  v6 = v5;
  v7 = sub_64A98(a2, &selRef_identifier);
  if (v6)
  {
    if (v8)
    {
      if (v4 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_8D45C();

        if ((v10 & 1) == 0)
        {
LABEL_26:
          sub_652C0();

          return;
        }
      }

LABEL_16:
      if (qword_BF818 != -1)
      {
        sub_E754(&qword_BF818);
      }

      v12 = sub_8CD0C();
      sub_22B78(v12, qword_C3DF8);
      v32 = v31;
      v13 = sub_8CCEC();
      v14 = sub_8D11C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = sub_1D358();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v32;
        *v16 = a1;
        v17 = v32;
        _os_log_impl(&dword_0, v13, v14, "previousIntent : %@.", v15, 0xCu);
        sub_1D05C(v16, &qword_BFF40, &unk_90F70);
        sub_65178();
        sub_5D434();
      }

      v18 = sub_2CF10(v32);
      if (v18)
      {
        sub_64440(v18, a2);
      }

      v19 = [v32 announcement];
      if (v19)
      {
        v20 = v19;
        v21 = v19;
        v22 = sub_8CCEC();
        v23 = sub_8D11C();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = sub_1D358();
          v25 = swift_slowAlloc();
          *v24 = 138412290;
          *(v24 + 4) = v21;
          *v25 = v20;
          v26 = v21;
          sub_65338(&dword_0, v27, v28, "Restoring the announcement slot from the previous INSendAnnouncementIntent: %@.");
          sub_1D05C(v25, &qword_BFF40, &unk_90F70);
          sub_65178();
          sub_5D434();
        }

        [a2 setValue:v21 forKey:sub_6514C()];
      }

      goto LABEL_26;
    }
  }

  else if (!v8)
  {
    goto LABEL_16;
  }

  sub_652C0();
}

void sub_64440(uint64_t a1, void *a2)
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v3 = sub_8CD0C();
  sub_22B78(v3, qword_C3DF8);

  v4 = sub_8CCEC();
  v5 = sub_8D11C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_1D358();
    v7 = sub_6630();
    v17 = v7;
    *v6 = 136315138;
    sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
    v8 = sub_8D05C();
    v10 = sub_862D8(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v4, v5, "Restoring the recipient slot from the previous INSendAnnouncementIntent: %s.", v6, 0xCu);
    sub_2714(v7);
    sub_5D434();
    sub_E890(v6);
  }

  v11 = sub_2CF10(a2);
  if (v11)
  {
    v17 = v11;

    sub_2C814(v12);
    sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
    isa = sub_8D03C().super.isa;

    [a2 setValue:isa forKey:sub_8CEAC()];
  }

  else
  {
    sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
    v14 = sub_8D03C().super.isa;
    [a2 setValue:v14 forKey:sub_8CEAC()];
  }

  sub_652C0();
}

void sub_6467C(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedPreferences];
  v6 = [v5 outputVoice];

  v7 = type metadata accessor for AnnouncementSpeechSynthesizer(0);
  v8 = swift_allocObject();
  v9 = sub_64B50(v4, v6, v8);

  a1[3] = v7;
  a1[4] = &off_B9388;
  *a1 = v9;
}

id sub_64758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_8AF9C();
  v12 = 0;
  if (sub_3364(a1, 1, v10) != 1)
  {
    sub_8AF5C(v11);
    v12 = v13;
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  if (!a3)
  {
    v14 = 0;
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v14 = sub_8CEAC();

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v15 = sub_8CEAC();

LABEL_8:
  v16 = [v6 initWithSpeechDataURL:v12 identifier:v14 speechDataTranscription:v15];

  return v16;
}

uint64_t sub_64880()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_648B8()
{
  v1 = type metadata accessor for SignpostLog.Signpost(0);
  sub_115AC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_8CCDC();
  sub_6574();
  (*(v7 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

Swift::Int sub_64990(uint64_t a1)
{
  v3 = type metadata accessor for SignpostLog.Signpost(0);
  sub_115AC(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_63288(a1, v9, (v1 + v8), v10);
}

uint64_t sub_64A28(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_8CEDC();

  return v3;
}

uint64_t sub_64A98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_8CEDC();
  }

  return sub_1D37C();
}

uint64_t sub_64AF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_2664(a3, a4);
  sub_6574();
  v5 = sub_1D37C();
  v6(v5);
  return a2;
}

uint64_t sub_64B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = sub_ADE4(0, &qword_C2A48, NSFileManager_ptr);
  v10 = &off_B9358;
  *&v8 = a1;
  sub_8AF4C();
  sub_8AF4C();
  v6 = (a3 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_audioFileExtension);
  *v6 = 1717658414;
  v6[1] = 0xE400000000000000;
  sub_E510(&v8, a3 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_fileManager);
  *(a3 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin29AnnouncementSpeechSynthesizer_voiceInfo) = a2;
  return a3;
}

uint64_t sub_64C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v3[13] = a2;
  v3[5] = type metadata accessor for SharedGlobals(0);
  v3[6] = &off_BB508;
  v5 = sub_E5DC(v3 + 2);
  sub_65038(a3, v5, type metadata accessor for SharedGlobals);

  return _swift_task_switch(sub_64CE8);
}

uint64_t sub_64CE8()
{
  sub_6608();
  sub_622C(v0 + 2, v0[5]);
  sub_6467C(v0 + 7);
  sub_622C(v0 + 7, v0[10]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_64DA0;

  return sub_38E4();
}

uint64_t sub_64DA0()
{
  sub_4DFB4();
  v3 = v2;
  v5 = v4;
  sub_E884();
  v7 = v6;
  sub_65D8();
  *v8 = v7;
  v9 = *v1;
  sub_65D8();
  *v10 = v9;
  v7[15] = v0;

  if (!v0)
  {
    v7[16] = v3;
    v7[17] = v5;
  }

  sub_65B8();

  return _swift_task_switch(v11);
}

uint64_t sub_64EC0()
{
  sub_6608();
  sub_2714((v0 + 56));
  sub_2714((v0 + 16));
  v1 = sub_1D37C();

  return v2(v1);
}

uint64_t sub_64F30()
{
  sub_2714(v0 + 7);
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  sub_22B78(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D12C();
  if (sub_125A0(v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    sub_65294();
    _os_log_impl(v5, v6, v7, v8, v4, 2u);
    sub_E890(v4);
  }

  sub_2714(v0 + 2);
  v9 = v0[1];

  return v9(0, 0);
}

uint64_t sub_65038(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_6574();
  v4 = sub_1D37C();
  v5(v4);
  return a2;
}

uint64_t sub_65094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_650DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_6574();
  (*(v3 + 8))(a1);
  return a1;
}

NSString sub_6514C()
{

  return sub_8CEAC();
}

uint64_t sub_65178()
{
}

uint64_t sub_651AC()
{

  return sub_650DC(v0, type metadata accessor for HomeCommunicationError);
}

uint64_t sub_651D4()
{
  sub_2714(v0);
}

uint64_t sub_65208(uint64_t a1)
{

  return swift_once();
}

id sub_6523C()
{
  v2 = *(v0 + 40);

  return v2;
}

id sub_65260()
{

  return sub_64758(v2, v1, v0, v4, v3);
}

uint64_t sub_652AC@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 168) = *(a1 + 8);
  return result;
}

void sub_652D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_652F8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_65318(uint64_t a1)
{

  return swift_allocError();
}

void sub_65338(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_65358(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B89A8;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_653A4(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x7964616572;
      break;
    case 2:
      result = 0x6572676F72506E69;
      break;
    case 3:
      result = 0x73736563637573;
      break;
    case 4:
      result = 0x6572756C696166;
      break;
    case 5:
      sub_65D08();
      result = v5 - 13;
      break;
    case 6:
      sub_65D08();
      result = v7 - 10;
      break;
    case 7:
      result = 0xD000000000000026;
      break;
    case 8:
      sub_65D08();
      result = v9 - 4;
      break;
    case 9:
      sub_65D08();
      result = v4 + 4;
      break;
    case 10:
      sub_65D08();
      result = v8 - 22;
      break;
    case 11:
      result = 0xD000000000000026;
      break;
    case 12:
      sub_65D08();
      result = v3 - 9;
      break;
    case 13:
      sub_65D08();
      result = v6 + 5;
      break;
    case 14:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_655E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_65358(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_65618@<X0>(unint64_t *a1@<X8>)
{
  result = sub_653A4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_65654()
{
  v0 = qword_C2A50;

  return v0;
}

uint64_t sub_6568C(uint64_t a1)
{
  v2 = sub_65CB0();

  return AppEnumRepresentation.lnValue.getter(a1, v2);
}

uint64_t sub_656C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_65AEC();

  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, v4);
}

uint64_t sub_65714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_65CB0();

  return static AppEnumRepresentation.from(_:context:)(a1, a2, a3, v6);
}

uint64_t sub_65778(uint64_t a1)
{
  v2 = sub_65CB0();

  return static AppEnumRepresentation.lnValueType.getter(a1, v2);
}

uint64_t sub_657B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_65AEC();

  return static IntentValueTypeIdentifiable.canConvertFrom(_:)(a1, a2, v4);
}

uint64_t sub_65800(char a1)
{
  v2._countAndFlagsBits = sub_653A4(a1);
  sub_8CF7C(v2);

  return 46;
}

uint64_t getEnumTagSinglePayload for SendAnnouncementIntentResponseCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SendAnnouncementIntentResponseCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x659A8);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_659E4()
{
  result = qword_C2A60;
  if (!qword_C2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A60);
  }

  return result;
}

unint64_t sub_65A3C()
{
  result = qword_C2A68;
  if (!qword_C2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A68);
  }

  return result;
}

unint64_t sub_65A94()
{
  result = qword_C2A70;
  if (!qword_C2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A70);
  }

  return result;
}

unint64_t sub_65AEC()
{
  result = qword_C2A78;
  if (!qword_C2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A78);
  }

  return result;
}

unint64_t sub_65B44()
{
  result = qword_C2A80;
  if (!qword_C2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A80);
  }

  return result;
}

unint64_t sub_65B9C()
{
  result = qword_C2A88;
  if (!qword_C2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A88);
  }

  return result;
}

unint64_t sub_65BF4()
{
  result = qword_C2A90;
  if (!qword_C2A90)
  {
    sub_B9BC(&qword_C2A98, &qword_92F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2A90);
  }

  return result;
}

unint64_t sub_65C5C()
{
  result = qword_C2AA0;
  if (!qword_C2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2AA0);
  }

  return result;
}

unint64_t sub_65CB0()
{
  result = qword_C2AA8;
  if (!qword_C2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2AA8);
  }

  return result;
}

uint64_t sub_65D44(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x614E746567726174 && a2 == 0xEA0000000000656DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_8D45C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_65DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_65D44(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_65E10(uint64_t a1)
{
  v2 = sub_65FBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_65E4C(uint64_t a1)
{
  v2 = sub_65FBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SendAnnouncementNeedsValueModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2664(&qword_C2AB0, &qword_93040);
  sub_3488();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  sub_622C(a1, a1[3]);
  sub_65FBC();
  sub_8D57C();
  sub_8D40C();
  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_65FBC()
{
  result = qword_C2AB8;
  if (!qword_C2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2AB8);
  }

  return result;
}

void *SendAnnouncementNeedsValueModel.init(from:)(void *a1)
{
  v3 = sub_2664(&qword_C2AC0, &qword_93048);
  sub_3488();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_622C(a1, a1[3]);
  sub_65FBC();
  sub_8D56C();
  if (!v1)
  {
    v9 = sub_8D3CC();
    (*(v5 + 8))(v8, v3);
  }

  sub_2714(a1);
  return v9;
}

void *sub_66168@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = SendAnnouncementNeedsValueModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_661B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_66204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SendAnnouncementNeedsValueModel.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x66300);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_6633C()
{
  result = qword_C2AC8;
  if (!qword_C2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2AC8);
  }

  return result;
}

unint64_t sub_66394()
{
  result = qword_C2AD0;
  if (!qword_C2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2AD0);
  }

  return result;
}

unint64_t sub_663EC()
{
  result = qword_C2AD8;
  if (!qword_C2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C2AD8);
  }

  return result;
}

uint64_t sub_66440(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v22 = a6;
  v11 = sub_2664(&qword_C1058, &unk_8FCA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_8B8CC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (sub_2670C(a2, a3))
  {
    sub_2664(&qword_C2608, &unk_92760);
    v18 = sub_8BC1C();
    v19 = v22;

    return v18(a1, a2, a3, a4, a5, v19);
  }

  else
  {
    sub_66674();
    (*(v15 + 16))(v13, v17, v14);
    sub_6270(v13, 0, 1, v14);
    a5(v13);
    sub_1151C(v13, &qword_C1058, &unk_8FCA0);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_66674()
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v0 = sub_8CD0C();
  sub_33F4(v0, qword_C3DF8);
  v1 = sub_8CCEC();
  v2 = sub_8D11C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#HomeCommunicationNLContextProvider generateNLContextForAnnouncement", v3, 2u);
  }

  sub_8B8BC();
  sub_1E508(0);
  sub_8B88C();
  sub_2664(&qword_C0F90, &unk_8FAE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_8E3F0;
  sub_8CF0C();
  sub_10C68();
  sub_8D1FC();

  v9 = sub_1E508(3);
  v10 = v5;
  v11._countAndFlagsBits = 0x2E65756C61562ELL;
  v11._object = 0xE700000000000000;
  sub_8CF7C(v11);
  v12._countAndFlagsBits = sub_8CF0C();
  sub_8CF7C(v12);

  *(v4 + 32) = v9;
  *(v4 + 40) = v10;
  sub_8B85C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_8E3F0;
  *(v6 + 32) = sub_1E508(4);
  *(v6 + 40) = v7;
  sub_8B86C();
  sub_668DC();
  return sub_8B83C();
}

uint64_t sub_668DC()
{
  v0 = sub_8BFDC();
  v1 = *(v0 - 8);
  v37 = v0;
  v38 = v1;
  __chkstk_darwin(v0);
  v3 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_8BE7C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_8BF4C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v35 - v10;
  v12 = sub_2664(&qword_C1090, &unk_92770);
  __chkstk_darwin(v12 - 8);
  v14 = v35 - v13;
  sub_8C6CC();
  swift_allocObject();
  v15 = sub_8C6BC();
  sub_8C68C();
  swift_allocObject();
  v16 = sub_8C67C();
  sub_8C66C();
  v40 = v16;
  sub_8C59C();
  sub_2664(&qword_C0690, &unk_8EBF0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_8E860;
  *(v17 + 32) = v15;
  v18 = sub_8C3FC();
  sub_6270(v14, 1, 1, v18);
  v39 = v15;

  v19 = sub_8C3AC();

  sub_1151C(v14, &qword_C1090, &unk_92770);
  sub_8BF3C();
  sub_8C05C();
  v36 = v3;
  sub_8BF2C();
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v35[1] = v19;
  v20 = sub_8CD0C();
  sub_33F4(v20, qword_C3DF8);
  v21 = sub_8CCEC();
  v22 = sub_8D11C();
  v23 = v5;
  if (os_log_type_enabled(v21, v22))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41[0] = v25;
    *v24 = 136315138;
    swift_beginAccess();
    (*(v6 + 16))(v9, v11, v5);
    v26 = sub_698D4(v9, &type metadata accessor for Siri_Nlu_External_SystemPrompted, &qword_C2BC0, &type metadata accessor for Siri_Nlu_External_SystemPrompted, &protocol conformance descriptor for Siri_Nlu_External_SystemPrompted);
    v28 = sub_862D8(v26, v27, v41);

    *(v24 + 4) = v28;
    v23 = v5;
    _os_log_impl(&dword_0, v21, v22, "#HomeCommunicationNLContextProvider Returning NLUSystemPrompted for prompt for send Announcement: %s", v24, 0xCu);
    sub_2714(v25);
  }

  v29 = v37;
  v30 = v38;
  v31 = v36;
  sub_8BFCC();
  swift_beginAccess();
  (*(v6 + 16))(v9, v11, v23);
  sub_8BFBC();
  sub_2664(&qword_C1098, &qword_8FCD8);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_8E3F0;
  (*(v30 + 32))(v33 + v32, v31, v29);

  (*(v6 + 8))(v11, v23);
  return v33;
}

uint64_t sub_66FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_8BDBC();
  sub_3488();
  v49 = v6;
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_8BE0C();
  sub_3488();
  v12 = v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  sub_8BD9C();
  v19 = (*(v12 + 88))(v18, v10);
  if (v19 == enum case for Parse.directInvocation(_:))
  {
    sub_8B75C();
    return (*(v12 + 8))(v18, v10);
  }

  if (v19 != enum case for Parse.NLv4IntentOnly(_:) && v19 != enum case for Parse.uso(_:))
  {
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v25 = sub_8CD0C();
    sub_33F4(v25, qword_C3DF8);
    v26 = sub_8CCEC();
    v27 = sub_8D12C();
    if (sub_125A0(v27))
    {
      v28 = sub_E8E0();
      *v28 = 0;
      sub_69AE0(&dword_0, v29, v30, "#SendAnnouncementNeedsValueStrategy Received unsupported parse ");
      sub_E890(v28);
    }

    sub_8B76C();
    return (*(v12 + 8))(v18, v10);
  }

  v48 = a2;
  v21 = *(v12 + 8);
  v21(v18, v10);
  sub_622C((v2 + 16), *(v2 + 40));

  sub_8BD9C();
  sub_2EBF0(v16, &v50);

  v21(v16, v10);
  if (v51)
  {
    sub_E510(&v50, v52);
    v22 = v53;
    v23 = v54;
    sub_622C(v52, v53);
    switch((*(v23 + 160))(v22, v23))
    {
      case 2u:

        goto LABEL_25;
      case 3u:
        goto LABEL_11;
      default:
        v24 = sub_8D45C();

        if (v24)
        {
LABEL_25:
          if (qword_BF818 != -1)
          {
            sub_E754(&qword_BF818);
          }

          v42 = sub_8CD0C();
          sub_33F4(v42, qword_C3DF8);
          v43 = sub_8CCEC();
          v44 = sub_8D11C();
          if (sub_125A0(v44))
          {
            v45 = sub_E8E0();
            *v45 = 0;
            sub_69AE0(&dword_0, v46, v47, "#SendAnnouncementNeedsValueStrategy cancelling as per homeCommunicationConfirmation");
            sub_E890(v45);
          }

          sub_8B74C();
        }

        else
        {
LABEL_11:
          sub_8B75C();
        }

        result = sub_2714(v52);
        break;
    }
  }

  else
  {
    sub_1151C(&v50, &qword_C0438, &qword_8EBD0);
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v32 = sub_8CD0C();
    sub_33F4(v32, qword_C3DF8);
    v33 = v49;
    (*(v49 + 16))(v9, a1, v5);
    v34 = sub_8CCEC();
    v35 = sub_8D12C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52[0] = v37;
      *v36 = 136315138;
      sub_8BD9C();
      v38 = sub_72160(v16);
      v40 = v39;
      (*(v33 + 8))(v9, v5);
      v41 = sub_862D8(v38, v40, v52);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_0, v34, v35, "#SendAnnouncementNeedsValueStrategy couldn't transform input: %s", v36, 0xCu);
      sub_2714(v37);
      sub_E890(v37);
      sub_E890(v36);
    }

    else
    {

      (*(v33 + 8))(v9, v5);
    }

    return sub_8B76C();
  }

  return result;
}

uint64_t sub_67570()
{
  sub_6608();
  v1[19] = v2;
  v1[20] = v0;
  v1[17] = v3;
  v1[18] = v4;
  v5 = type metadata accessor for HomeCommunicationError(0);
  v1[21] = v5;
  sub_65E4(v5);
  v1[22] = sub_E83C();
  v6 = sub_2664(&qword_C28C8, &qword_92B00);
  sub_65E4(v6);
  v1[23] = sub_E83C();
  v7 = sub_8BE0C();
  v1[24] = v7;
  sub_115AC(v7);
  v1[25] = v8;
  v1[26] = sub_E83C();
  v9 = sub_44348();

  return _swift_task_switch(v9);
}

uint64_t sub_67668()
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementNeedsValueStrategy parseResponseValue", v4, 2u);
    sub_E890(v4);
  }

  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);
  v8 = *(v0 + 160);

  sub_622C((v8 + 16), *(v8 + 40));

  sub_8BD9C();
  sub_2EBF0(v5, v0 + 56);

  (*(v6 + 8))(v5, v7);
  if (!*(v0 + 80))
  {
    v17 = *(v0 + 208);
    v18 = *(v0 + 176);
    sub_1151C(v0 + 56, &qword_C0438, &qword_8EBD0);
    sub_8BD9C();
    *v18 = sub_72160(v17);
    v18[1] = v19;
    v18[2] = 0x746E65746E494C4ELL;
    v18[3] = 0xE800000000000000;
    swift_storeEnumTagMultiPayload();
    sub_69A58(&qword_BFF38, 255, type metadata accessor for HomeCommunicationError, &protocol conformance descriptor for HomeCommunicationError);
    swift_allocError();
    sub_15350(v20);
    sub_48464(v18);
    swift_willThrow();

    sub_65A0();
    goto LABEL_10;
  }

  sub_E510((v0 + 56), v0 + 16);
  sub_2664(&qword_C25C8, &qword_92700);
  *(v0 + 216) = sub_8BD0C();
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  sub_622C((v0 + 16), v9);
  (*(v10 + 120))(v9, v10);
  if (v11 & 1) != 0 || (v12 = *(v0 + 40), v13 = *(v0 + 48), sub_622C((v0 + 16), v12), (*(v13 + 128))(v12, v13), (v14))
  {
    sub_699CC();
    sub_69AC8();
    sub_8B98C();
    v15 = sub_2664(&qword_C2610, &qword_92780);
    sub_69B00(v15);

    sub_65A0();
LABEL_10:

    return v16();
  }

  *(v0 + 224) = sub_8BD0C();
  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  sub_622C((v0 + 16), v22);
  (*(v23 + 152))(v22, v23);
  *(v0 + 232) = v24;
  sub_8B5AC();
  sub_8C7CC();
  if (sub_8C7BC())
  {
    sub_8C7AC();

    sub_8CB4C();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = *(v0 + 184);
  v27 = sub_8C7FC();
  sub_6270(v26, v25, 1, v27);
  v28 = swift_task_alloc();
  *(v0 + 240) = v28;
  *v28 = v0;
  v28[1] = sub_67B1C;

  return sub_60C94();
}

uint64_t sub_67B1C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_E6F8();
  *v6 = v5;
  *v6 = *v2;
  v5[31] = v1;

  v7 = v4[28];
  v8 = v4[23];
  if (v1)
  {

    sub_1151C(v8, &qword_C28C8, &qword_92B00);
    sub_2714(v5 + 12);
    v9 = sub_67DA0;
  }

  else
  {

    v5[32] = a1;

    sub_1151C(v8, &qword_C28C8, &qword_92B00);
    sub_2714(v5 + 12);
    v9 = sub_67CDC;
  }

  return _swift_task_switch(v9);
}

uint64_t sub_67CDC()
{
  sub_699CC();
  sub_69AC8();
  sub_8B98C();
  v1 = sub_2664(&qword_C2610, &qword_92780);
  sub_69B00(v1);

  sub_65A0();

  return v2();
}

uint64_t sub_67DA0()
{
  sub_152A0();

  sub_2714((v0 + 16));

  sub_65A0();

  return v1();
}

uint64_t sub_67E28()
{
  sub_6608();
  v1[103] = v0;
  v1[102] = v2;
  v1[101] = v3;
  v4 = sub_8B6BC();
  sub_65E4(v4);
  v1[104] = sub_E83C();
  v5 = sub_8BCBC();
  v1[105] = v5;
  sub_115AC(v5);
  v1[106] = v6;
  v1[107] = sub_E83C();
  v7 = sub_2664(&qword_C25C8, &qword_92700);
  v1[108] = v7;
  sub_115AC(v7);
  v1[109] = v8;
  v1[110] = *(v9 + 64);
  v1[111] = sub_E83C();
  v10 = sub_2664(&qword_C1058, &unk_8FCA0);
  v1[112] = v10;
  sub_65E4(v10);
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v11 = sub_44348();

  return _swift_task_switch(v11);
}

uint64_t sub_67F98()
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  v0[115] = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementNeedsValueStrategy makeParameterPromptDialogAsync with response framework adoption", v4, 2u);
    sub_E890(v4);
  }

  v5 = v0[111];
  v6 = v0[109];
  v7 = v0[108];
  v8 = v0[103];
  v9 = v0[102];

  (*(v6 + 16))(v5, v9, v7);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v0[116] = v11;
  *(v11 + 16) = v8;
  (*(v6 + 32))(v11 + v10, v5, v7);

  swift_asyncLet_begin();
  v12 = sub_8CCEC();
  v13 = sub_8D11C();
  if (sub_125A0(v13))
  {
    v14 = sub_E8E0();
    *v14 = 0;
    sub_3D9B8(&dword_0, v15, v16, "#SendAnnouncementIntent sending promptForAnnouncement dialog");
    sub_E890(v14);
  }

  v17 = swift_task_alloc();
  v0[117] = v17;
  *v17 = v0;
  v17[1] = sub_681E8;

  return sub_4D0C8();
}

uint64_t sub_681E8()
{
  sub_6608();
  sub_E884();
  v3 = v2;
  v2[87] = v1;
  v2[88] = v4;
  v2[89] = v0;
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;
  v3[118] = v0;

  if (v0)
  {

    return _swift_asyncLet_finish(v3 + 2);
  }

  else
  {

    return _swift_task_switch(sub_68324);
  }
}

uint64_t sub_68324()
{
  sub_152A0();
  sub_8B69C();
  sub_8BC3C();
  v1 = *(v0 + 912);

  return _swift_asyncLet_get(v0 + 16, v1, sub_683C4, v0 + 720);
}

uint64_t sub_683D8()
{
  sub_152A0();
  v1 = v0[103];
  sub_696CC(v0[114], v0[113]);
  sub_8BC8C();
  sub_622C((v1 + 16), *(v1 + 40));
  type metadata accessor for SharedGlobals(0);

  sub_71708();

  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (sub_125A0(v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    sub_3D9B8(&dword_0, v5, v6, "#SendAnnouncementNeedsValueStrategy registering prompt for announcement");
    sub_E890(v4);
  }

  v7 = v0[88];

  v0[119] = v7;
  v8 = sub_8B8FC();
  swift_allocObject();
  v9 = sub_8B8EC();
  v0[120] = v9;
  v0[95] = v9;
  sub_2664(&qword_C0690, &unk_8EBF0);
  v10 = swift_allocObject();
  v0[121] = v10;
  *(v10 + 16) = xmmword_8E860;
  *(v10 + 32) = v7;
  v11 = v7;
  v12 = swift_task_alloc();
  v0[122] = v12;
  *v12 = v0;
  v12[1] = sub_6859C;
  v13 = v0[107];
  v14 = v0[101];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v14, v10, v13, v8, &protocol witness table for ResponseFactory);
}

uint64_t sub_6859C()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  v3 = sub_44348();

  return _swift_task_switch(v3);
}

uint64_t sub_6869C()
{
  sub_152A0();
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);

  (*(v2 + 8))(v1, v3);

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_68750()
{
  sub_69AA0();

  sub_65A0();

  return v0();
}

uint64_t sub_687F8()
{
  sub_69AA0();

  sub_65A0();

  return v0();
}

uint64_t sub_6888C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_688B0);
}

uint64_t sub_688B0()
{
  sub_152A0();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_2664(&qword_C1058, &unk_8FCA0);
  *v2 = v0;
  v2[1] = sub_689B4;
  v4 = *(v0 + 16);

  return withCheckedContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000022, 0x80000000000982D0, sub_6973C, v1, v3);
}

uint64_t sub_689B4()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  sub_65A0();

  return v3();
}

void sub_68AB4(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v21 = sub_2664(&qword_C2600, &unk_93370);
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v17 - v4;
  v6 = sub_8BA3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 72);
  sub_2664(&qword_C25C8, &qword_92700);
  v19 = sub_8BD0C();
  sub_8BD2C();
  v18 = sub_8BA2C();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  v12 = sub_8BD1C();
  v13 = v21;
  (*(v3 + 16))(v5, v22, v21);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, v5, v13);
  v16 = v19;
  sub_66440(v19, v18, v11, v12, sub_697CC, v15);
}

uint64_t sub_68D18(uint64_t a1)
{
  v2 = sub_2664(&qword_C1058, &unk_8FCA0);
  __chkstk_darwin(v2 - 8);
  sub_696CC(a1, &v5 - v3);
  sub_2664(&qword_C2600, &unk_93370);
  return sub_8D0CC();
}

uint64_t sub_68DC0()
{
  v0 = sub_8C84C();
  __chkstk_darwin(v0 - 8);
  sub_8BC7C();
  sub_8BCAC();
  sub_8BE1C();
  sub_622C(v6, v7);
  if (sub_8B61C())
  {
    sub_622C(v6, v7);
    if (sub_8B67C())
    {
      if (qword_BF818 != -1)
      {
        swift_once();
      }

      v1 = sub_8CD0C();
      sub_33F4(v1, qword_C3DF8);
      v2 = sub_8CCEC();
      v3 = sub_8D11C();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementNeedsValueStrategy overriding responseMode to .voiceForward", v4, 2u);
      }

      sub_8C83C();
      sub_8BC4C();
    }
  }

  return sub_2714(v6);
}

void *sub_68F74()
{
  sub_2714((v0 + 16));

  return v0;
}

uint64_t sub_68FAC()
{
  sub_68F74();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_69028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3B650;

  return sub_67570();
}

uint64_t sub_690DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_E2A0;

  return sub_67E28();
}

uint64_t sub_69188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendAnnouncementNeedsValueStrategy();
  *v8 = v4;
  v8[1] = sub_3B650;

  return NeedsValueFlowStrategyAsync.makeRepromptOnEmptyParse(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_6924C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SendAnnouncementNeedsValueStrategy();
  *v8 = v4;
  v8[1] = sub_3B650;

  return NeedsValueFlowStrategyAsync.makeRepromptOnLowConfidence(resolveRecord:)(a1, a2, v9, a4);
}

uint64_t sub_69310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SendAnnouncementNeedsValueStrategy();
  *v12 = v6;
  v12[1] = sub_3B650;

  return ParameterResolutionHandlingAsync.makeFlowCancelledResponse(app:intent:parameter:)(a1, a2, a3, a4, v13, a6);
}

uint64_t sub_693EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for SendAnnouncementNeedsValueStrategy();
  *v14 = v7;
  v14[1] = sub_3B650;

  return ParameterResolutionHandlingAsync.makeErrorResponse(error:app:intent:parameter:)(a1, a2, a3, a4, a5, v15, a7);
}

uint64_t sub_69518()
{
  v1 = sub_2664(&qword_C25C8, &qword_92700);
  sub_3488();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_695DC()
{
  sub_152A0();
  v3 = v2;
  v4 = sub_2664(&qword_C25C8, &qword_92700);
  sub_65E4(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_E2A0;

  return sub_6888C(v3, v7, v0 + v6);
}

uint64_t sub_696CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1058, &unk_8FCA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_69744()
{
  sub_2664(&qword_C2600, &unk_93370);
  sub_11580();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_697CC(uint64_t a1)
{
  v2 = sub_2664(&qword_C2600, &unk_93370);
  sub_65E4(v2);

  return sub_68D18(a1);
}

uint64_t sub_698D4(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = a2(0);
  v13[3] = v9;
  v13[4] = sub_69A58(a3, 255, a4, a5);
  v10 = sub_E5DC(v13);
  (*(*(v9 - 8) + 32))(v10, a1, v9);
  sub_8C02C();
  sub_8C01C();
  v11 = sub_8CFFC();
  sub_2714(v13);
  return v11;
}

unint64_t sub_699CC()
{
  result = qword_C2620;
  if (!qword_C2620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C2620);
  }

  return result;
}

uint64_t sub_69A58(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_69AA0()
{
}

void sub_69AE0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_69B00(uint64_t a1)
{
  sub_6270(v2, 0, 1, a1);

  return sub_2714((v1 + 16));
}

uint64_t sub_69B38(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SendAnnouncementPreflightGuardFlow(0);
  sub_69FB0();
  return sub_8B34C();
}

uint64_t sub_69BA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_69BC8);
}

uint64_t sub_69BC8()
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v1 = sub_8CD0C();
  sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementPreflightGuardFlow bypassing preflight check. Guard flow passed.", v4, 2u);
  }

  v5 = *(v0 + 24);

  *(v5 + 16) = 1;
  sub_8B7FC();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_69CF0()
{
  sub_2714((v0 + 24));
  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin34SendAnnouncementPreflightGuardFlow_input;
  v2 = sub_8BDBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_69D68()
{
  sub_69CF0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SendAnnouncementPreflightGuardFlow(uint64_t a1)
{
  result = qword_C2C10;
  if (!qword_C2C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_69E14(uint64_t a1)
{
  result = sub_8BDBC();
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

uint64_t sub_69EE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_96FC;

  return sub_69BA8(a1);
}

BOOL sub_69F84@<W0>(_BYTE *a1@<X8>)
{
  result = sub_69B98();
  *a1 = result;
  return result;
}

unint64_t sub_69FB0()
{
  result = qword_C27D0;
  if (!qword_C27D0)
  {
    type metadata accessor for SendAnnouncementPreflightGuardFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C27D0);
  }

  return result;
}

uint64_t type metadata accessor for SendAnnouncementRCHFlowDelegate(uint64_t a1)
{
  result = qword_C2D08;
  if (!qword_C2D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_6A0AC(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_8D2EC();
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;

      a1(&v12, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_8D2CC();
      sub_8D2FC();
      sub_8D30C();
      sub_8D2DC();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_6A1B4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_8CEAC();

  v4 = [v2 initWithIdentifier:v3];

  return v4;
}

uint64_t sub_6A228(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2664(&qword_C2D60, &qword_934D8);
    v2 = sub_8D37C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_367F4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_367F4(v29, v30);
    result = sub_8D21C(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v21 = v2[6] + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_367F4(v30, (v2[7] + 32 * v16));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_6A4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  v12 = sub_2670C(a3, a4);
  if ((v12 - 2) >= 2)
  {
    if (v12)
    {
      v15 = &enum case for UnsupportedValueBehavior.punchOutWithCommand(_:);
    }

    else
    {
      v15 = &enum case for UnsupportedValueBehavior.dialogAndStop(_:);
    }

    v16 = *v15;
    sub_8BCCC();
    sub_4BBA4();
    v19 = *(v18 + 104);

    return v19(a6, v16, v17);
  }

  else
  {
    sub_2664(&qword_C2D58, &unk_934C8);
    v13 = sub_8B9FC();

    return v13(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_6A61C(uint64_t a1, void *a2)
{

  if (!sub_2670C(a1, a2))
  {
    return 1;
  }

  sub_2664(&qword_C2D58, &unk_934C8);
  v4 = sub_8B9FC();

  return v4(a1, a2);
}

uint64_t sub_6A6C4()
{
  v0 = sub_8CA2C();
  v1 = sub_65E4(v0);
  __chkstk_darwin(v1);
  sub_16854();
  v2 = sub_8BCEC();
  v3 = sub_65E4(v2);
  __chkstk_darwin(v3);
  sub_16854();
  v6 = v5 - v4;
  sub_8B5BC();
  sub_8BE1C();
  sub_8BCDC();
  type metadata accessor for SendAnnouncementCATs(0);
  sub_8CA1C();
  v7 = sub_8C92C();
  type metadata accessor for AppInfoBuilder();
  v8 = swift_allocObject();
  return sub_6BC6C(v6, v11, v10, v7, v8);
}

uint64_t sub_6A7C8()
{
  sub_2664(&qword_C2790, &unk_934F0);
  swift_allocObject();
  return sub_8BBFC();
}

uint64_t sub_6A80C()
{
  v0 = sub_6A6C4();
  sub_8BE1C();
  type metadata accessor for SendAnnouncementAceViewProvider(0);
  swift_allocObject();
  return sub_49A48(v0, v2);
}

uint64_t sub_6A864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_8BE0C();
  sub_3488();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_16854();
  v10 = (v9 - v8);
  v11 = sub_2664(&qword_BFDF0, qword_8E3A8);
  v12 = sub_65E4(v11);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = sub_8B47C();
  sub_3488();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_16854();
  v36 = v20 - v19;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v21 = sub_8CD0C();
  sub_33F4(v21, qword_C3DF8);
  v22 = sub_8CCEC();
  v23 = sub_8D11C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v35 = v6;
    v25 = v17;
    v26 = v4;
    v27 = a1;
    v28 = v15;
    v29 = a2;
    v30 = v24;
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "#SendAnnouncementRCHFlowDelegate makeConfirmationStateFromParse", v24, 2u);
    v31 = v30;
    a2 = v29;
    v15 = v28;
    a1 = v27;
    v4 = v26;
    v17 = v25;
    v6 = v35;
    sub_E890(v31);
  }

  (*(v6 + 16))(v10, a1, v4);
  sub_72B5C(v10, v14);
  v32 = type metadata accessor for SmsNLIntent(0);
  if (sub_3364(v14, 1, v32) == 1)
  {
    sub_4BAB0(v14, &qword_BFDF0, qword_8E3A8);
    return (*(v17 + 104))(a2, enum case for SiriKitConfirmationState.unset(_:), v15);
  }

  else
  {
    v34 = v36;
    sub_73158(v36);
    sub_342C(v14);
    return (*(v17 + 32))(a2, v34, v15);
  }
}

void *sub_6AB4C(uint64_t a1, void *a2)
{
  v83 = a2;
  v4 = sub_2664(&qword_C27B0, &unk_934E0);
  v5 = sub_65E4(v4);
  v6 = __chkstk_darwin(v5);
  v82 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v77 - v9;
  __chkstk_darwin(v8);
  v12 = &v77 - v11;
  v13 = sub_8BE0C();
  sub_3488();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_16854();
  v19 = v18 - v17;
  v20 = sub_8C71C();
  sub_3488();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_16854();
  v26 = v25 - v24;
  (*(v15 + 16))(v19, a1, v13);
  if ((*(v15 + 88))(v19, v13) == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v81 = v2;
    (*(v15 + 96))(v19, v13);
    v27 = *(v19 + *(sub_2664(&qword_C0E28, &qword_938D0) + 48));
    (*(v22 + 32))(v26, v19, v20);
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v28 = sub_8CD0C();
    v29 = sub_33F4(v28, qword_C3DF8);

    v80 = v29;
    v30 = sub_8CCEC();
    v31 = sub_8D11C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = sub_1D358();
      v78 = v26;
      v33 = v22;
      v34 = v32;
      v35 = v27;
      v36 = v20;
      v37 = v12;
      v38 = swift_slowAlloc();
      *v34 = 138412290;
      v39 = sub_8BDFC();
      *(v34 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&dword_0, v30, v31, "#SendAnnouncementRCHFlowDelegate Making a siriKit intent from parse: %@.", v34, 0xCu);
      sub_4BAB0(v38, &qword_BFF40, &unk_90F70);
      v40 = v38;
      v12 = v37;
      v20 = v36;
      v27 = v35;
      sub_E890(v40);
      v41 = v34;
      v22 = v33;
      v26 = v78;
      sub_E890(v41);
    }

    v42 = sub_8BDFC();
    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (v43)
    {
      v44 = v43;
      v79 = v27;
      v45 = v83;
      v83 = v44;
      sub_64128(v45, v44);
      v46 = sub_622C((v81 + qword_C2CF8), *(v81 + qword_C2CF8 + 24));
      v47 = type metadata accessor for SharedGlobals(0);
      sub_59EB4(v46 + *(v47 + 28), v10);
      v48 = sub_8B78C();
      sub_6C4CC(v10);
      if (v49)
      {
        sub_8C7CC();
        if (sub_8C7BC())
        {
          sub_8C79C();

          sub_8BAAC();

          v50 = 0;
        }

        else
        {
          v50 = 1;
        }

        v54 = v82;
        sub_6270(v12, v50, 1, v48);
        sub_6C4CC(v10);
        if (!v49)
        {
          sub_4BAB0(v10, &qword_C27B0, &unk_934E0);
        }
      }

      else
      {
        sub_4BBA4();
        (*(v53 + 32))(v12, v10, v48);
        sub_6270(v12, 0, 1, v48);
        v54 = v82;
      }

      sub_59EB4(v12, v54);
      sub_6C4CC(v54);
      if (v49)
      {
        sub_4BAB0(v54, &qword_C27B0, &unk_934E0);
      }

      else
      {
        v55 = sub_8B77C();
        v57 = v56;
        sub_4BBA4();
        (*(v58 + 8))(v54, v48);
        if (v57)
        {
          v82 = v42;

          v59 = sub_8CCEC();
          v60 = sub_8D11C();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = sub_1D358();
            v62 = swift_slowAlloc();
            v78 = v26;
            v63 = v12;
            v64 = v62;
            v84[0] = v62;
            *v61 = 136315138;

            v65 = v22;
            v66 = sub_862D8(v55, v57, v84);

            *(v61 + 4) = v66;
            v22 = v65;
            sub_6C4AC(&dword_0, v67, v68, "#SendAnnouncementRCHFlowDelegate sharedUserID: %s");
            sub_2714(v64);
            v69 = v64;
            v12 = v63;
            v26 = v78;
            sub_E890(v69);
            sub_E890(v61);
          }

          v42 = v82;
          v70 = v83;
          sub_6BC08(v55, v57, v83);
LABEL_27:
          sub_8B5BC();
          v52 = sub_61C18(v26, v70, v84);

          sub_2714(v84);
          sub_4BAB0(v12, &qword_C27B0, &unk_934E0);
          (*(v22 + 8))(v26, v20);
          return v52;
        }
      }

      v71 = sub_8CCEC();
      v72 = sub_8D11C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = v42;
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_0, v71, v72, "#SendAnnouncementRCHFlowDelegate not sharedUserID was found", v74, 2u);
        v75 = v74;
        v42 = v73;
        sub_E890(v75);
      }

      v70 = v83;
      goto LABEL_27;
    }

    (*(v22 + 8))(v26, v20);
  }

  else
  {
    (*(v15 + 8))(v19, v13);
  }

  sub_2664(&qword_C2D58, &unk_934C8);
  v51 = sub_8B9FC();
  return v51(a1, v83);
}

uint64_t sub_6B2C8@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ErrorDialogBehavior.openAppButton(_:);
  sub_8BA1C();
  sub_4BBA4();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_6B338(uint64_t a1, uint64_t a2, uint64_t a3, uint32_t *a4, uint64_t a5, void (*a6)(void), unint64_t a7)
{
  v8 = v7;

  if (sub_2670C(a3, a4) != 1)
  {
    goto LABEL_38;
  }

  v65 = a1;
  v16 = sub_2D8DC();
  v17 = sub_6C594(v16);
  if (!v17)
  {

    if (qword_BF818 != -1)
    {
LABEL_43:
      sub_E754(&qword_BF818);
    }

    v39 = sub_8CD0C();
    sub_33F4(v39, qword_C3DF8);
    v40 = sub_8CCEC();
    v41 = sub_8D12C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = a3;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_0, v40, v41, "Disambiguating items were not of type INHomeFilter", v43, 2u);
      v44 = v43;
      a3 = v42;
      sub_E890(v44);
    }

    goto LABEL_37;
  }

  v18 = v17;
  v61 = a6;
  v57 = a3;
  v58 = a4;
  v59 = a5;
  v60 = v8;
  v63 = a7;
  a3 = sub_2D3B4();
  a7 = 0;
  a6 = (v18 & 0xC000000000000001);
  a5 = v18 & 0xFFFFFFFFFFFFFF8;
  v66 = _swiftEmptyArrayStorage;
  a4 = &SKFlowFactory.ivar_base_size;
  v64 = a2;
  while (a3 != a7)
  {
    if (a6)
    {
      v19 = sub_8D27C();
    }

    else
    {
      if (a7 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_42;
      }

      v19 = *(v18 + 8 * a7 + 32);
    }

    v20 = v19;
    v21 = a7 + 1;
    if (__OFADD__(a7, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v22 = [v19 home];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 spokenPhrase];

      v25 = sub_8CEDC();
      v27 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_75D80(0, *(v66 + 2) + 1, 1, v66);
      }

      v29 = *(v66 + 2);
      v28 = *(v66 + 3);
      if (v29 >= v28 >> 1)
      {
        v66 = sub_75D80((v28 > 1), v29 + 1, 1, v66);
      }

      *(v66 + 2) = v29 + 1;
      v30 = &v66[16 * v29];
      *(v30 + 4) = v25;
      *(v30 + 5) = v27;
      a7 = v21;
      a2 = v64;
    }

    else
    {

      ++a7;
    }
  }

  if (*(v66 + 2) < 2uLL)
  {

    a6 = v61;
    if (qword_BF818 != -1)
    {
      sub_E754(&qword_BF818);
    }

    v31 = sub_8CD0C();
    sub_33F4(v31, qword_C3DF8);

    v32 = sub_8CCEC();
    v33 = sub_8D12C();

    a5 = v59;
    a4 = v58;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = sub_1D358();
      v62 = swift_slowAlloc();
      v67 = v62;
      *v34 = 136315138;
      v35 = sub_8D05C();
      v37 = v36;

      v38 = sub_862D8(v35, v37, &v67);
      a2 = v64;

      *(v34 + 4) = v38;
      _os_log_impl(&dword_0, v32, v33, "Error disambiguating between no homes or single home : %s", v34, 0xCu);
      sub_2714(v62);
      sub_E890(v62);
      sub_E890(v34);
    }

    else
    {
    }

    a7 = v63;
    a3 = v57;
LABEL_37:
    a1 = v65;
LABEL_38:
    sub_2664(&qword_C2D58, &unk_934C8);
    v56 = sub_8B9FC();

    return v56(a1, a2, a3, a4, a5, a6, a7);
  }

  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v45 = sub_8CD0C();
  sub_33F4(v45, qword_C3DF8);

  v46 = sub_8CCEC();
  v47 = sub_8D11C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = sub_1D358();
    v49 = swift_slowAlloc();
    v67 = v49;
    *v48 = 136315138;
    v50 = sub_8D05C();
    v52 = sub_862D8(v50, v51, &v67);

    *(v48 + 4) = v52;
    sub_6C4AC(&dword_0, v53, v54, "Disambiguating between homes : %s");
    sub_2714(v49);
    sub_E890(v49);
    sub_E890(v48);
  }

  if (qword_BF7E8 != -1)
  {
    swift_once();
  }

  sub_6C0BC(v66, qword_C3DB0, v60);

  sub_8B4DC();
  swift_allocObject();
  sub_8B4CC();
  v61();
}

uint64_t sub_6B950@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_8B54C();
  sub_8B52C();
  v5 = sub_8B53C();

  sub_8BBEC();
  swift_allocObject();
  sub_8BBDC();
  sub_622C(a2, a2[3]);
  sub_8C16C();
  sub_8BBBC();

  sub_8BBCC();

  sub_2664(&qword_C0690, &unk_8EBF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_8E860;
  *(v6 + 32) = v5;
  sub_8B4AC();
  swift_allocObject();
  result = sub_8B49C();
  *a3 = result;
  return result;
}

uint64_t sub_6BB14()
{
  v0 = sub_8BA0C();
  v1 = qword_C2CF0;

  sub_2714((v2 + v1));
  sub_2714((v0 + qword_C2CF8));

  return _swift_deallocClassInstance(v0, 97, 7);
}

void sub_6BB88(uint64_t a1, void *a2)
{
  isa = sub_8CE3C().super.isa;

  [a2 setUserData:isa];
}

void sub_6BC08(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_8CEAC();

  [a3 setSharedUserID:v4];
}

uint64_t sub_6BC6C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v32 = a2;
  v33 = a1;
  v8 = sub_2664(&qword_C0660, &qword_92260);
  __chkstk_darwin(v8 - 8);
  v10 = v31 - v9;
  v11 = sub_8B02C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppInfoBuilder();
  v37[3] = v15;
  v37[4] = &off_BA8A8;
  v37[0] = a5;
  type metadata accessor for SendAnnouncementTemplatingService(0);
  v16 = swift_allocObject();
  v17 = sub_E58C(v37, v15);
  __chkstk_darwin(v17);
  v19 = (v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v36[3] = v15;
  v36[4] = &off_BA8A8;
  v36[0] = v21;
  sub_59E54(a3, v16 + qword_C2D68);
  v31[2] = a4;
  *(v16 + qword_C2D78) = a4;
  sub_59E54(v36, v16 + qword_C2D70);
  v31[1] = "mentRCHFlowDelegate";
  sub_622C(a3, a3[3]);

  sub_8B5DC();
  v22 = sub_8B01C();
  v24 = v23;
  (*(v12 + 8))(v14, v11);
  v35[0] = v22;
  v35[1] = v24;
  v34[0] = 45;
  v34[1] = 0xE100000000000000;
  v35[5] = 95;
  v35[6] = 0xE100000000000000;
  sub_10C68();
  sub_8D1FC();

  type metadata accessor for INIntentSlotValueType(0);
  sub_10CBC();
  sub_8CE6C();
  v25 = v32;
  sub_59E54(v32, v35);
  sub_59E54(a3, v34);
  v26 = sub_8BCEC();
  v27 = *(v26 - 8);
  v28 = v33;
  (*(v27 + 16))(v10, v33, v26);
  sub_6270(v10, 0, 1, v26);
  v29 = sub_8BA5C();

  sub_2714(v25);
  (*(v27 + 8))(v28, v26);
  sub_2714(v36);
  sub_2714(a3);
  sub_2714(v37);
  return v29;
}

void *sub_6C0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29[3] = sub_2664(&qword_C07E0, &qword_8FCB0);
  v6 = sub_228D8();
  v29[4] = v6;
  v29[0] = a2;
  if (*(a3 + qword_C2D00) == 1)
  {
    v7 = qword_BF818;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_8CD0C();
    sub_33F4(v8, qword_C3DF8);
    v9 = sub_8CCEC();
    v10 = sub_8D11C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "#SendAnnouncementRCHFlowDelegate isDirectInvocation in SiriX path", v11, 2u);
    }

    v12 = *(a1 + 16);
    v13 = _swiftEmptyArrayStorage;
    if (v12)
    {
      v28 = _swiftEmptyArrayStorage;
      sub_8D2EC();
      v27 = sub_6C468();
      sub_8B54C();
      v14 = 0;
      v15 = a1 + 40;
      v26 = xmmword_8E3F0;
      v25 = xmmword_8E860;
      do
      {
        v16 = v14 + 1;
        sub_2664(&qword_C25C0, &unk_926F0);
        inited = swift_initStackObject();
        *(inited + 16) = v26;
        *(inited + 32) = 0x7865646E69;
        *(inited + 40) = 0xE500000000000000;
        *(inited + 48) = v14;

        v18 = sub_8CE6C();
        v19 = sub_6A1B4(0xD00000000000003ALL, 0x8000000000095C40);
        v20 = sub_6A228(v18);

        sub_6BB88(v20, v19);
        sub_8B52C();
        v21 = sub_8B53C();

        sub_2664(&qword_C0690, &unk_8EBF0);
        v22 = swift_allocObject();
        *(v22 + 16) = v25;
        *(v22 + 32) = v21;
        sub_8B4AC();
        swift_allocObject();
        sub_8B48C();

        sub_8D2CC();
        sub_8D2FC();
        sub_8D30C();
        sub_8D2DC();
        v15 += 16;
        v14 = v16;
      }

      while (v12 != v16);
      v13 = v28;
    }
  }

  else
  {
    __chkstk_darwin(v6);
    v24[2] = v29;

    v13 = sub_6A0AC(sub_6C448, v24, a1);
  }

  sub_2714(v29);
  return v13;
}

unint64_t sub_6C468()
{
  result = qword_C25B8;
  if (!qword_C25B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C25B8);
  }

  return result;
}

void sub_6C4AC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t type metadata accessor for SendAnnouncementTemplatingService(uint64_t a1)
{
  result = qword_C2D80;
  if (!qword_C2D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_6C594(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_8D2EC();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_1412C(v3, v5);
    sub_36598();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_8D2CC();
    sub_8D2FC();
    sub_8D30C();
    sub_8D2DC();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_6C680(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v5 = sub_8CD0C();
  sub_33F4(v5, qword_C3DF8);
  v6 = sub_8CCEC();
  v7 = sub_8D11C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Making an intent handled dialog that indicates an announcement has been sent.", v8, 2u);
  }

  v9 = [a2 isReply];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 BOOLValue];

    if (a3)
    {
LABEL_7:
      sub_2D438();
      v13 = v12;

      sub_2C8E0(v14);
      v15 = *(v13 + 16);

      v16 = v15 != 0;
      sub_2D444();
      sub_2C8E0(v17);
      sub_2D450();
      sub_2C8E0(v18);
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
    if (a3)
    {
      goto LABEL_7;
    }
  }

  v16 = 0;
LABEL_10:
  sub_4B2B0(_swiftEmptyArrayStorage, v16, v11);
}

uint64_t sub_6C858(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  if (sub_2670C(a2, a3))
  {
    sub_2664(&qword_C2DD0, &qword_93558);
    v12 = sub_8BA6C();

    return v12(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a5;
    *(v14 + 24) = a6;

    sub_4B588();
  }
}

uint64_t sub_6C994(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_8BABC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_2664(&qword_C0680, &unk_8ED30);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;
  *v6 = sub_8CEDC();
  v6[1] = v10;
  (*(v4 + 104))(v6, enum case for BehaviorAfterSpeaking.dingAndListen(_:), v3);
  sub_8D55C();
  (*(v4 + 8))(v6, v3);
  a2(v9);
  return sub_92C0(v9, &qword_C0680, &unk_8ED30);
}

void sub_6CB38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_8C99C();
  sub_3488();
  v50 = v14;
  v51 = v15;
  v16 = __chkstk_darwin(v14);
  v48 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v43 - v18;

  if (sub_2670C(a2, a3) == 1)
  {
    v20 = sub_2D8DC();
    v21 = sub_6C594(v20);

    if (v21)
    {
      v43 = a7;
      v44 = v9;
      v45 = a9;
      v46 = a8;
      v22 = sub_2D3B4();
      v23 = 0;
      v47 = (v51 + 32);
      v49 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v22 == v23)
        {

          v40 = v44;
          v41 = sub_2CD3C();
          sub_8C9FC();
          sub_E528(v40 + qword_C2D68, &v52);
          v42 = sub_8C9EC();
          sub_4AE54(v41, v49, v42);

          goto LABEL_22;
        }

        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = sub_8D27C();
        }

        else
        {
          if (v23 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_24;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v27 = [v24 home];
        if (v27)
        {
          v28 = v27;
          v29 = v48;
          sub_8D13C();

          v30 = *v47;
          (*v47)(v19, v29, v50);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_763A8();
            v49 = v34;
          }

          v31 = *(v49 + 2);
          if (v31 >= *(v49 + 3) >> 1)
          {
            sub_763A8();
            v49 = v35;
          }

          v33 = v49;
          v32 = v50;
          *(v49 + 2) = v31 + 1;
          v30(&v33[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v31], v19, v32);
          v23 = v26;
        }

        else
        {

          ++v23;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }
  }

  if (qword_BF818 != -1)
  {
LABEL_25:
    sub_E754(&qword_BF818);
  }

  v36 = sub_8CD0C();
  sub_33F4(v36, qword_C3DF8);
  v37 = sub_8CCEC();
  v38 = sub_8D12C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_0, v37, v38, "Disambiguating items were not of type INHomeFilter or incorrect slot set", v39, 2u);
  }

  sub_4B288();
LABEL_22:
  sub_115FC();
}

void sub_6CF18(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v10 = sub_2664(&qword_C1CE0, &unk_91EC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v21[-v11 - 8];

  v13 = sub_2670C(a2, a3);
  if ((v13 - 2) < 2)
  {
    sub_2664(&qword_C2DD0, &qword_93558);
    sub_8BA6C();
    sub_115FC();

    __asm { BRAA            X8, X16 }
  }

  if (!v13)
  {
    if ([a4 unsupportedReason] == &dword_0 + 1)
    {
      sub_6D8B4();
      sub_4B5B0();
    }

    goto LABEL_16;
  }

  v16 = [a4 unsupportedReason];
  if (v16 == &dword_4)
  {
    sub_4B0E0();
    goto LABEL_16;
  }

  if (v16 == (&dword_0 + 2))
  {
    sub_2CA2C();
    sub_75920(v18, v12);

    sub_8C9FC();
    sub_E528(v6 + qword_C2D68, v21);
    v19 = sub_8C9EC();
    sub_4B5D8(v12, v19);

    sub_92C0(v12, &qword_C1CE0, &unk_91EC0);
    goto LABEL_16;
  }

  if (v16 != (&dword_0 + 1))
  {
LABEL_16:
    sub_115FC();
    return;
  }

  sub_2CCA0();
  sub_4B7B0();
  sub_115FC();
}

char *sub_6D1CC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  if (sub_2670C(a2, a3))
  {
    sub_2664(&qword_C2DD0, &qword_93558);
    v14 = sub_8BA6C();

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    result = [a4 confirmationReason];
    if (result == &dword_0 + 1)
    {
      v16 = sub_6D8D8();
      sub_2CA20();
      v18 = *(v17 + 16);

      sub_4AD50(v16, v18 != 0);
    }
  }

  return result;
}

uint64_t sub_6D32C(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5)
{
  switch([a3 code])
  {
    case 6uLL:
      sub_6D8D8();
      sub_6D8C4();
      sub_4B18C();
      goto LABEL_8;
    case 7uLL:
      sub_6D8D8();
      sub_6D8C4();
      sub_4B0E0();
      goto LABEL_8;
    case 8uLL:
      sub_6D8B4();
      return sub_4B260();
    case 9uLL:
      sub_6D8D8();
      sub_6D8C4();
      sub_4B00C();
LABEL_8:

      break;
    case 0xAuLL:
      sub_6D8B4();
      result = sub_4AF94();
      break;
    case 0xBuLL:
      sub_6D8B4();
      result = sub_4B0B8();
      break;
    case 0xCuLL:
      sub_6D8B4();
      result = sub_4B238();
      break;
    case 0xDuLL:
      sub_6D8B4();
      result = sub_4AFBC();
      break;
    case 0xEuLL:
      sub_6D8B4();
      result = sub_4AFE4();
      break;
    default:
      sub_2664(&qword_C2DD0, &qword_93558);
      v11 = sub_8BA6C();

      result = v11(a1, a2, a3, a4, a5);
      break;
  }

  return result;
}

void sub_6D54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a2;
  v18[1] = a3;
  v5 = sub_8B02C();
  sub_3488();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664(&qword_C1CE0, &unk_91EC0);
  __chkstk_darwin(v11 - 8);
  v13 = v18 - v12;
  sub_622C((v3 + qword_C2D70), *(v3 + qword_C2D70 + 24));
  sub_622C((v3 + qword_C2D68), *(v3 + qword_C2D68 + 24));
  sub_8B5DC();
  sub_2D988(a1, v10);
  v15 = v14;
  (*(v7 + 8))(v10, v5);
  if (v15)
  {
    sub_8C97C();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_8C99C();
  sub_6270(v13, v16, 1, v17);
  sub_4B3F4(v13);
  sub_92C0(v13, &qword_C1CE0, &unk_91EC0);
  sub_115FC();
}

uint64_t sub_6D794()
{
  sub_2714((v0 + qword_C2D68));
  sub_2714((v0 + qword_C2D70));
}

uint64_t sub_6D7E4()
{
  v0 = sub_8BA7C();
  sub_2714((v0 + qword_C2D68));
  sub_2714((v0 + qword_C2D70));

  return v0;
}

uint64_t sub_6D83C()
{
  v0 = sub_6D7E4();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_6D874()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_6D8D8()
{

  return sub_2CCA0();
}

uint64_t sub_6D8F0()
{
  sub_6608();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = sub_8BA3C();
  v1[13] = v4;
  sub_115AC(v4);
  v1[14] = v5;
  v1[15] = sub_E83C();
  v6 = sub_2664(&qword_C25C8, &qword_92700);
  v1[16] = v6;
  sub_115AC(v6);
  v1[17] = v7;
  v1[18] = sub_E83C();
  v8 = sub_44348();

  return _swift_task_switch(v8);
}

uint64_t sub_6D9F0()
{
  v39 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v2 = sub_8CD0C();
  v0[19] = sub_33F4(v2, qword_C3DF8);
  v3 = sub_712D4();
  v4(v3);
  v5 = sub_8CCEC();
  v6 = sub_8D11C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v35 = v0[13];
    v8 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v8 = 136315138;
    v36 = v6;
    sub_8BD2C();
    sub_8BA2C();
    v9 = sub_712C0();
    v10(v9, v35);
    v11 = sub_711E0();
    v12(v11);
    v13 = sub_862D8(v7, v1, &v38);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v5, v36, "#SendAnnouncementIntentHandledStrategy makeUnsupportedValueOutput for %s", v8, 0xCu);
    sub_2714(v37);
    sub_E890(v37);
    sub_E890(v8);
  }

  else
  {

    v14 = sub_711E0();
    v15(v14);
  }

  v16 = v0[15];
  v17 = v0[13];
  v18 = v0[14];
  sub_8BD2C();
  v19 = sub_8BA2C();
  v21 = v20;
  (*(v18 + 8))(v16, v17);
  v22 = sub_2670C(v19, v21);
  if ((v22 - 2) >= 2)
  {
    if (v22)
    {
      v33 = swift_task_alloc();
      v0[20] = v33;
      *v33 = v0;
      v33[1] = sub_6DD68;
      sub_71210(v0[11]);
      sub_7122C();

      return sub_6FE0C();
    }

    else
    {
      v31 = swift_task_alloc();
      v0[21] = v31;
      *v31 = v0;
      v31[1] = sub_6E030;
      sub_71210(v0[11]);
      sub_7122C();

      return sub_70788();
    }
  }

  else
  {
    v23 = sub_8CCEC();
    v24 = sub_8D11C();
    if (sub_443A4(v24))
    {
      v25 = sub_E8E0();
      sub_1D274(v25);
      sub_3D9B8(&dword_0, v26, v27, "#SendAnnouncementIntentHandledStrategy dialogExecutionResult is nil - returning generic error");
      sub_1D214();
    }

    v28 = swift_task_alloc();
    v0[26] = v28;
    *v28 = v0;
    sub_71188(v28);
    sub_7122C();

    return sub_4C878();
  }
}

uint64_t sub_6DD68()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;

  if (v0)
  {

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    sub_65B8();

    return _swift_task_switch(v10);
  }
}

uint64_t sub_6DEAC()
{
  sub_71288();
  sub_71264();
  v1 = v0[3];
  v0[22] = v1;
  if (v1)
  {
    v2 = sub_8B8FC();
    sub_60BD8(v2);
    v3 = sub_8B8EC();
    v0[23] = v3;
    v0[9] = v3;
    v4 = sub_2664(&qword_C0690, &unk_8EBF0);
    v5 = sub_44464(v4);
    v0[24] = v5;
    sub_712A0(v5, xmmword_8E860);
    v6 = v1;
    swift_task_alloc();
    sub_44358();
    v0[25] = v7;
    *v7 = v8;
    sub_711AC(v7);
    sub_711D0();
    sub_5A0BC();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13);
  }

  else
  {
    v15 = sub_8CCEC();
    v16 = sub_8D11C();
    if (sub_443A4(v16))
    {
      v17 = sub_E8E0();
      sub_1D274(v17);
      sub_3D9B8(&dword_0, v18, v19, "#SendAnnouncementIntentHandledStrategy dialogExecutionResult is nil - returning generic error");
      sub_1D214();
    }

    v20 = swift_task_alloc();
    v0[26] = v20;
    *v20 = v0;
    sub_71188(v20);
    sub_5A0BC();

    return sub_4C878();
  }
}

uint64_t sub_6E030()
{
  sub_152A0();
  sub_E884();
  v3 = v2;
  sub_4DF58();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v6 = *v1;
  sub_E6F8();
  *v7 = v6;

  if (v0)
  {

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    sub_65B8();

    return _swift_task_switch(v10);
  }
}

uint64_t sub_6E174()
{
  sub_71288();
  sub_71264();
  v1 = v0[6];
  v0[22] = v1;
  if (v1)
  {
    v2 = sub_8B8FC();
    sub_60BD8(v2);
    v3 = sub_8B8EC();
    v0[23] = v3;
    v0[9] = v3;
    v4 = sub_2664(&qword_C0690, &unk_8EBF0);
    v5 = sub_44464(v4);
    v0[24] = v5;
    sub_712A0(v5, xmmword_8E860);
    v6 = v1;
    swift_task_alloc();
    sub_44358();
    v0[25] = v7;
    *v7 = v8;
    sub_711AC(v7);
    sub_711D0();
    sub_5A0BC();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13);
  }

  else
  {
    v15 = sub_8CCEC();
    v16 = sub_8D11C();
    if (sub_443A4(v16))
    {
      v17 = sub_E8E0();
      sub_1D274(v17);
      sub_3D9B8(&dword_0, v18, v19, "#SendAnnouncementIntentHandledStrategy dialogExecutionResult is nil - returning generic error");
      sub_1D214();
    }

    v20 = swift_task_alloc();
    v0[26] = v20;
    *v20 = v0;
    sub_71188(v20);
    sub_5A0BC();

    return sub_4C878();
  }
}

uint64_t sub_6E2F8()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  v3 = sub_44348();

  return _swift_task_switch(v3);
}

uint64_t sub_6E414()
{
  sub_6608();

  sub_65A0();

  return v1();
}

uint64_t sub_6E484()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  *(v5 + 216) = v0;

  if (!v0)
  {
    *(v5 + 224) = v3;
  }

  sub_65B8();

  return _swift_task_switch(v9);
}

uint64_t sub_6E590()
{
  sub_71288();
  sub_71264();
  v1 = v0[28];
  v2 = sub_8B8FC();
  sub_60BD8(v2);
  v3 = sub_8B8EC();
  v0[29] = v3;
  v0[8] = v3;
  v4 = sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464(v4);
  v0[30] = v5;
  sub_712A0(v5, xmmword_8E860);
  v6 = v1;
  swift_task_alloc();
  sub_44358();
  v0[31] = v7;
  *v7 = v8;
  v7[1] = sub_6E698;
  sub_711D0();
  sub_5A0BC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13);
}

uint64_t sub_6E698()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  v3 = sub_44348();

  return _swift_task_switch(v3);
}

uint64_t sub_6E7B4()
{
  sub_6608();

  sub_65A0();

  return v1();
}

uint64_t sub_6E824()
{
  sub_6608();

  sub_65A0();

  return v0();
}

uint64_t sub_6E88C()
{
  sub_6608();
  v0[2] = v1;
  v2 = sub_8BA3C();
  v0[3] = v2;
  sub_115AC(v2);
  v0[4] = v3;
  v0[5] = sub_E83C();
  v4 = sub_2664(&qword_C25C8, &qword_92700);
  v0[6] = v4;
  sub_115AC(v4);
  v0[7] = v5;
  v0[8] = sub_E83C();
  v6 = sub_44348();

  return _swift_task_switch(v6);
}

void sub_6E988()
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v2 = sub_8CD0C();
  sub_33F4(v2, qword_C3DF8);
  v3 = sub_712D4();
  v4(v3);
  v5 = sub_8CCEC();
  v6 = sub_8D11C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 40);
    v19 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v8 = 136315394;
    *(v8 + 4) = sub_862D8(0xD000000000000034, 0x8000000000098580, &v21);
    *(v8 + 12) = 2080;
    v18 = v6;
    sub_8BD2C();
    sub_8BA2C();
    v9 = sub_712C0();
    v10(v9, v19);
    v11 = sub_711E0();
    v12(v11);
    v13 = sub_862D8(v7, v1, &v21);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_0, v5, v18, "#SendAnnouncementUnsupportedValueFlowStrategy %s: unsupported for %s", v8, 0x16u);
    swift_arrayDestroy();
    sub_E890(v20);
    sub_E890(v8);
  }

  else
  {

    v14 = sub_711E0();
    v15(v14);
  }

  sub_8BD0C();

  sub_5D4DC();
  sub_7122C();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_6EBD0()
{
  sub_6608();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = type metadata accessor for HomeCommunicationError(0);
  v1[21] = v4;
  sub_65E4(v4);
  v1[22] = sub_E83C();
  v5 = sub_8BCBC();
  v1[23] = v5;
  sub_115AC(v5);
  v1[24] = v6;
  v1[25] = sub_E83C();
  v7 = type metadata accessor for HomeAppLaunchModel(0);
  v1[26] = v7;
  sub_65E4(v7);
  v1[27] = sub_E83C();
  v8 = sub_2664(&qword_C1CE0, &unk_91EC0);
  sub_65E4(v8);
  v1[28] = sub_E83C();
  v9 = sub_8B02C();
  v1[29] = v9;
  sub_115AC(v9);
  v1[30] = v10;
  v1[31] = sub_E83C();
  v11 = sub_44348();

  return _swift_task_switch(v11);
}

uint64_t sub_6ED38()
{
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v1 = sub_8CD0C();
  v0[32] = sub_33F4(v1, qword_C3DF8);
  v2 = sub_8CCEC();
  v3 = sub_8D11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_E8E0();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#SendAnnouncementIntentHandledStrategy makeLaunchAppWithIntentOutput", v4, 2u);
    sub_E890(v4);
  }

  v0[33] = sub_8CA7C();
  v0[34] = v5;
  if (v5)
  {
    v7 = v0[30];
    v6 = v0[31];
    v8 = v0[29];
    v9 = v0[20];
    sub_8BB2C();
    swift_allocObject();

    sub_8BB1C();
    sub_8BE1C();
    sub_622C(v0 + 2, v0[5]);
    sub_8B5DC();
    sub_8BB0C();
    v11 = v10;

    (*(v7 + 8))(v6, v8);
    sub_2714(v0 + 2);
    v0[35] = *(v9 + 56);
    if (v11)
    {
      sub_8C97C();
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v22 = v0[28];
    v23 = sub_8C99C();
    sub_6270(v22, v12, 1, v23);
    v24 = swift_task_alloc();
    v0[36] = v24;
    *v24 = v0;
    v24[1] = sub_6F0C0;
    sub_71210(v0[28]);

    return sub_4CCF8();
  }

  else
  {
    v13 = sub_8CCEC();
    v14 = sub_8D12C();
    if (sub_443A4(v14))
    {
      v15 = sub_E8E0();
      sub_1D274(v15);
      sub_3D9B8(&dword_0, v16, v17, "#SendAnnouncementIntentHandledStrategy missing app identifier");
      sub_1D214();
    }

    v18 = v0[22];

    swift_storeEnumTagMultiPayload();
    sub_71128(&qword_BFF38, type metadata accessor for HomeCommunicationError, &protocol conformance descriptor for HomeCommunicationError);
    swift_allocError();
    sub_15350(v19);
    sub_710D4(v18, type metadata accessor for HomeCommunicationError);
    swift_willThrow();
    sub_7121C();

    sub_65A0();

    return v20();
  }
}

uint64_t sub_6F0C0()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  v5[37] = v0;

  if (v0)
  {
    sub_7106C(v5[28]);
  }

  else
  {
    v9 = v5[28];
    v5[38] = v3;
    sub_7106C(v9);
  }

  sub_65B8();

  return _swift_task_switch(v10);
}

uint64_t sub_6F1E4()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[24];
  v3 = v0[25];
  v11 = v0[20];
  v12 = v0[23];
  v5 = sub_8CA0C();
  v7 = v6;

  v0[12] = v2;
  v0[13] = v1;
  sub_8B05C();
  v0[14] = v5;
  v0[15] = v7;
  sub_8B05C();
  v8 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin40SendAnnouncementUnsupportedValueStrategy_completionOutputManifest;
  v0[39] = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin40SendAnnouncementUnsupportedValueStrategy_completionOutputManifest;
  (*(v4 + 16))(v3, v11 + v8, v12);
  sub_8BC6C();
  v9 = swift_task_alloc();
  v0[40] = v9;
  *v9 = v0;
  v9[1] = sub_6F348;
  sub_71210(v0[19]);

  return sub_6FE0C();
}

uint64_t sub_6F348()
{
  sub_6608();
  sub_E884();
  *(v2 + 328) = v1;
  *(v2 + 336) = v0;

  sub_65B8();

  return _swift_task_switch(v3);
}

uint64_t sub_6F450()
{
  sub_4DFB4();
  v2 = v1[41];
  if (v2)
  {
    v3 = v1[27];
    v4 = sub_8B8FC();
    sub_60BD8(v4);
    v5 = sub_8B8EC();
    v1[43] = v5;
    v1[17] = v5;
    v1[10] = type metadata accessor for HomeCommunicationSnippetModel(0);
    v1[11] = sub_71128(&qword_C2078, type metadata accessor for HomeCommunicationSnippetModel, &protocol conformance descriptor for HomeCommunicationSnippetModel);
    v6 = sub_E5DC(v1 + 7);
    sub_12F98(v3, v6);
    swift_storeEnumTagMultiPayload();
    v7 = sub_2664(&qword_C0690, &unk_8EBF0);
    v8 = sub_44464(v7);
    v1[44] = v8;
    sub_712A0(v8, xmmword_8E860);
    v9 = v2;
    swift_task_alloc();
    sub_44358();
    v1[45] = v10;
    *v10 = v11;
    v10[1] = sub_6F684;
    v12 = v1[25];
    v13 = v1[18];

    return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v13, v1 + 7, v8, v12, v0, &protocol witness table for ResponseFactory);
  }

  else
  {
    v14 = sub_8CCEC();
    v15 = sub_8D11C();
    if (sub_443A4(v15))
    {
      v16 = sub_E8E0();
      sub_1D274(v16);
      sub_3D9B8(&dword_0, v17, v18, "#SendAnnouncementIntentHandledStrategy dialogExecutionResult is nil - returning generic error");
      sub_1D214();
    }

    v19 = swift_task_alloc();
    v1[46] = v19;
    *v19 = v1;
    v19[1] = sub_6F858;

    return sub_4C878();
  }
}

uint64_t sub_6F684()
{
  sub_6608();
  sub_E884();
  v2 = v1;
  sub_4DF58();
  *v3 = v2;
  v4 = *v0;
  sub_E6F8();
  *v5 = v4;

  sub_2714((v2 + 56));
  v6 = sub_44348();

  return _swift_task_switch(v6);
}

uint64_t sub_6F784()
{
  sub_4DFB4();
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);

  (*(v3 + 8))(v2, v4);
  sub_71170();
  sub_710D4(v1, v5);

  sub_7121C();

  sub_65A0();

  return v6();
}

uint64_t sub_6F858()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;
  *(v5 + 376) = v0;

  if (!v0)
  {
    *(v5 + 384) = v3;
  }

  sub_65B8();

  return _swift_task_switch(v9);
}

uint64_t sub_6F964()
{
  sub_71288();
  sub_71264();
  v1 = v0[48];
  v2 = sub_8B8FC();
  sub_60BD8(v2);
  v3 = sub_8B8EC();
  v0[49] = v3;
  v0[16] = v3;
  v4 = sub_2664(&qword_C0690, &unk_8EBF0);
  v5 = sub_44464(v4);
  v0[50] = v5;
  *(v5 + 16) = xmmword_8E860;
  *(v5 + 32) = v1;
  v6 = v1;
  swift_task_alloc();
  sub_44358();
  v0[51] = v7;
  *v7 = v8;
  v7[1] = sub_6FA6C;
  sub_711D0();
  sub_5A0BC();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v10, v11, v12, v13);
}

uint64_t sub_6FA6C()
{
  sub_6608();
  sub_E884();
  v1 = *v0;
  sub_E6F8();
  *v2 = v1;

  v3 = sub_44348();

  return _swift_task_switch(v3);
}

uint64_t sub_6FB6C()
{
  sub_4DFB4();
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);

  (*(v3 + 8))(v2, v4);
  sub_71170();
  sub_710D4(v1, v5);

  sub_7121C();

  sub_65A0();

  return v6();
}

uint64_t sub_6FC3C()
{
  sub_4DFB4();
  sub_711F0();

  sub_65A0();

  return v0();
}

uint64_t sub_6FCC4()
{
  sub_4DFB4();
  v1 = sub_712AC();
  v2(v1);
  sub_71170();
  sub_710D4(v0, v3);
  sub_711F0();

  sub_65A0();

  return v4();
}

uint64_t sub_6FD68()
{
  sub_4DFB4();
  v1 = sub_712AC();
  v2(v1);
  sub_71170();
  sub_710D4(v0, v3);
  sub_711F0();

  sub_65A0();

  return v4();
}

uint64_t sub_6FE0C()
{
  sub_6608();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_2664(&qword_C1CE0, &unk_91EC0);
  sub_65E4(v3);
  v1[6] = sub_E83C();
  v4 = sub_8BA3C();
  v1[7] = v4;
  sub_115AC(v4);
  v1[8] = v5;
  v1[9] = sub_E83C();
  v6 = sub_44348();

  return _swift_task_switch(v6);
}

uint64_t sub_6FEDC()
{
  v32 = v0;
  v2 = *(v0 + 72);
  sub_2664(&qword_C25C8, &qword_92700);
  sub_8BD2C();
  sub_8BA2C();
  v3 = sub_71270();
  v4(v3);
  if (sub_2670C(v2, v1) != 1)
  {
    goto LABEL_12;
  }

  v5 = sub_8BD1C();
  v6 = [v5 unsupportedReason];

  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v7 = sub_8CD0C();
  sub_33F4(v7, qword_C3DF8);
  v8 = sub_8CCEC();
  v9 = sub_8D12C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31[0] = v11;
    *v10 = 136315138;
    *(v0 + 16) = v6;
    *(v0 + 24) = 0;
    sub_2664(&qword_C2ED8, &qword_93668);
    v12 = sub_8CEEC();
    v14 = sub_862D8(v12, v13, v31);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "#SendAnnouncementIntentHandledStrategy Unsupported recipient reason %s", v10, 0xCu);
    sub_2714(v11);
    sub_E890(v11);
    sub_E890(v10);
  }

  if (v6 == &dword_4)
  {
    v28 = swift_task_alloc();
    *(v0 + 120) = v28;
    *v28 = v0;
    v28[1] = sub_705D8;
    sub_71210(_swiftEmptyArrayStorage);
    sub_71248();

    return sub_4C500(v29);
  }

  else
  {
    if (v6 != (&dword_0 + 2))
    {
      if (v6 == (&dword_0 + 1))
      {
        v15 = sub_8BD0C();
        *(v0 + 80) = sub_2CCA0();

        v16 = swift_task_alloc();
        *(v0 + 88) = v16;
        *v16 = v0;
        v16[1] = sub_702E0;
        sub_71248();

        return sub_4D8F4(v17);
      }

LABEL_12:

      sub_5D4DC();
      sub_71248();

      __asm { BRAA            X2, X16 }
    }

    v22 = *(v0 + 48);
    v23 = sub_8BD0C();
    sub_2CA2C();
    v25 = v24;

    sub_75920(v25, v22);

    sub_8C9FC();
    sub_8BE1C();
    *(v0 + 96) = sub_8C9EC();
    v26 = swift_task_alloc();
    *(v0 + 104) = v26;
    *v26 = v0;
    v26[1] = sub_70444;
    sub_71210(*(v0 + 48));
    sub_71248();

    return sub_4D4F0();
  }
}

uint64_t sub_702E0()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (v0)
  {

    sub_65A0();

    return v9();
  }

  else
  {

    sub_5D4DC();

    return v11(v3);
  }
}

uint64_t sub_70444()
{
  sub_4DFB4();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_E6F8();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;
  *(v5 + 112) = v0;

  sub_7106C(*(v4 + 48));

  if (v0)
  {
    sub_65B8();

    return _swift_task_switch(v8);
  }

  else
  {

    v9 = *(v7 + 8);

    return v9(v3);
  }
}

uint64_t sub_705D8()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (v0)
  {

    sub_65A0();

    return v9();
  }

  else
  {

    sub_5D4DC();

    return v11(v3);
  }
}

uint64_t sub_70720()
{
  sub_6608();

  sub_65A0();

  return v0();
}

uint64_t sub_70788()
{
  sub_6608();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_8BA3C();
  v1[6] = v3;
  sub_115AC(v3);
  v1[7] = v4;
  v1[8] = sub_E83C();
  v5 = sub_44348();

  return _swift_task_switch(v5);
}

uint64_t sub_7082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_71288();
  a17 = v20;
  a18 = v21;
  sub_71264();
  a16 = v18;
  v22 = *(v18 + 64);
  sub_2664(&qword_C25C8, &qword_92700);
  sub_8BD2C();
  sub_8BA2C();
  v23 = sub_71270();
  v24(v23);
  if (sub_2670C(v22, v19))
  {
    goto LABEL_10;
  }

  v25 = sub_8BD1C();
  v26 = [v25 unsupportedReason];

  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v27 = sub_8CD0C();
  sub_33F4(v27, qword_C3DF8);
  v28 = sub_8CCEC();
  v29 = sub_8D12C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    a9 = v31;
    *v30 = 136315138;
    *(v18 + 16) = v26;
    *(v18 + 24) = 0;
    sub_2664(&qword_C2ED0, &unk_93658);
    v32 = sub_8CEEC();
    v34 = sub_862D8(v32, v33, &a9);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_0, v28, v29, "#SendAnnouncementIntentHandledStrategy Unsupported announcement reason %s", v30, 0xCu);
    sub_2714(v31);
    sub_E890(v31);
    sub_E890(v30);
  }

  if (v26 != &dword_0 + 1)
  {
LABEL_10:

    sub_5D4DC();
    sub_5A0BC();

    return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
  }

  else
  {
    v35 = swift_task_alloc();
    *(v18 + 72) = v35;
    *v35 = v18;
    v35[1] = sub_70A94;
    sub_5A0BC();

    return sub_4D16C();
  }
}

uint64_t sub_70A94()
{
  sub_152A0();
  v3 = v2;
  sub_E884();
  v5 = v4;
  sub_4DF58();
  *v6 = v5;
  v7 = *v1;
  sub_E6F8();
  *v8 = v7;

  if (v0)
  {

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {

    v11 = *(v7 + 8);

    return v11(v3);
  }
}

char *sub_70BD0()
{
  sub_2714((v0 + 16));

  v1 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin40SendAnnouncementUnsupportedValueStrategy_completionOutputManifest;
  sub_8BCBC();
  sub_11580();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_70C3C()
{
  sub_70BD0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SendAnnouncementUnsupportedValueStrategy(uint64_t a1)
{
  result = qword_C2E08;
  if (!qword_C2E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_70CE8(uint64_t a1)
{
  result = sub_8BCBC();
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

uint64_t sub_70D94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_E2A0;

  return sub_6D8F0();
}

uint64_t sub_70E40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_70ED4;

  return sub_6E88C();
}

uint64_t sub_70ED4()
{
  sub_6608();
  v3 = v2;
  sub_E884();
  v4 = *v1;
  sub_E6F8();
  *v5 = v4;

  sub_5D4DC();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_70FC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3B650;

  return sub_6EBD0();
}

uint64_t sub_7106C(uint64_t a1)
{
  v2 = sub_2664(&qword_C1CE0, &unk_91EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_710D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_11580();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_71128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_711F0()
{
}

__n128 *sub_712A0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_712FC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2664(&qword_C27B0, &unk_934E0);
    v9 = a1 + *(a3 + 28);

    return sub_3364(v9, a2, v8);
  }
}

void *sub_713A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2664(&qword_C27B0, &unk_934E0);
    v8 = v5 + *(a4 + 28);

    return sub_6270(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SharedGlobals(uint64_t a1)
{
  result = qword_C2F38;
  if (!qword_C2F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7147C(uint64_t a1)
{
  type metadata accessor for HomeCommunicationFeatureManager();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NLTransformer();
    if (v2 <= 0x3F)
    {
      sub_715E4(319, &qword_C2F48, &protocol descriptor for SKFlowFactoryProtocol);
      if (v3 <= 0x3F)
      {
        sub_7158C(319);
        if (v4 <= 0x3F)
        {
          sub_715E4(319, &unk_C2F58, &protocol descriptor for BugTrackerProviding);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SharedNeedsValueContext();
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

void sub_7158C(uint64_t a1)
{
  if (!qword_C2F50)
  {
    sub_8B78C();
    v1 = sub_8D1CC();
    if (!v2)
    {
      atomic_store(v1, &qword_C2F50);
    }
  }
}

uint64_t sub_715E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

BOOL sub_71638(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8B60;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  return v4 != 0;
}

BOOL sub_7168C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_71638(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_716C0(uint64_t a1@<X8>)
{
  strcpy(a1, "announcement");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_71708()
{
  v1 = v0;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v2 = sub_8CD0C();
  sub_33F4(v2, qword_C3DF8);
  v3 = sub_8CCEC();
  v4 = sub_8D11C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27[0] = v6;
    *v5 = 136315138;
    v7 = sub_716E4();
    *(v5 + 4) = sub_862D8(v7, v8, v27);
    sub_72140(&dword_0, v9, v10, "#SharedNeedsValueContext registering prompt type %s");
    sub_2714(v6);
    sub_E890(v6);
    sub_E890(v5);
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + 16);
  *(v1 + 16) = 0x8000000000000000;
  v13 = sub_71D64();
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v14;
  sub_2664(&qword_C3078, &unk_937F0);
  if (!sub_8D32C(isUniquelyReferenced_nonNull_native, v17))
  {
LABEL_9:
    *(v1 + 16) = v12;
    if ((v19 & 1) == 0)
    {
      sub_72030(v18, 0, v12);
    }

    v22 = *(v12 + 56);
    v23 = *(v22 + 8 * v18);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      *(v22 + 8 * v18) = v25;
      return swift_endAccess();
    }

    goto LABEL_14;
  }

  v20 = sub_71D64();
  if ((v19 & 1) == (v21 & 1))
  {
    v18 = v20;
    goto LABEL_9;
  }

LABEL_15:
  result = sub_8D4AC();
  __break(1u);
  return result;
}

uint64_t sub_718EC()
{
  result = swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {

    sub_71D64();
    v3 = v2;

    if (v3)
    {
      if (qword_BF818 != -1)
      {
        sub_E754(&qword_BF818);
      }

      v4 = sub_8CD0C();
      sub_33F4(v4, qword_C3DF8);
      v5 = sub_8CCEC();
      v6 = sub_8D11C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v13[0] = v8;
        *v7 = 136315138;
        v9 = sub_716E4();
        *(v7 + 4) = sub_862D8(v9, v10, v13);
        sub_72140(&dword_0, v11, v12, "#SharedNeedsValueContext resetting prompt type %s");
        sub_2714(v8);
        sub_E890(v8);
        sub_E890(v7);
      }

      swift_beginAccess();
      sub_7206C();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_71A4C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

_BYTE *storeEnumTagSinglePayload for SharedNeedsValueContext.PromptType(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x71B44);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_71B80()
{
  result = qword_C3070;
  if (!qword_C3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3070);
  }

  return result;
}

unint64_t sub_71BD4(unint64_t a1)
{
  sub_8D50C();
  if ((a1 & 0x100000000) != 0)
  {
    sub_8D52C(0);
  }

  else
  {
    sub_8D52C(1u);
    sub_8D53C(a1);
  }

  v2 = sub_8D54C();

  return sub_71DD4(a1 | ((HIDWORD(a1) & 1) << 32), v2);
}

unint64_t sub_71C64(uint64_t a1, uint64_t a2)
{
  sub_8D50C();
  sub_8CF4C();
  v4 = sub_8D54C();

  return sub_71E58(a1, a2, v4);
}

unint64_t sub_71CDC(uint64_t a1)
{
  v1 = a1;
  sub_8D50C();
  sub_2E108(v1);
  sub_8CF4C();

  v2 = sub_8D54C();

  return sub_71F0C(v1, v2);
}

uint64_t sub_71D64()
{
  sub_8D50C();
  sub_8CF4C();
  v0 = sub_8D54C();

  return sub_72004(v0);
}

unint64_t sub_71DD4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_71E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_8D45C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_71F0C(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = sub_2E108(*(*(v2 + 48) + i));
    v8 = v7;
    if (v6 == sub_2E108(a1) && v8 == v9)
    {

      return i;
    }

    v11 = sub_8D45C();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_72030(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a3 + 56) + 8 * result) = a2;
  v3 = *(a3 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v5;
  }

  return result;
}

uint64_t sub_7206C()
{
  v1 = v0;
  v2 = sub_71D64();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v0;
  v6 = *(*v0 + 24);
  sub_2664(&qword_C3078, &unk_937F0);
  sub_8D32C(isUniquelyReferenced_nonNull_native, v6);
  v7 = *(*(v9 + 56) + 8 * v4);
  sub_1CED8();
  sub_8D33C();
  *v1 = v9;
  return v7;
}

void sub_72140(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_72160(char *a1)
{
  v2 = sub_8BE0C();
  sub_3488();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_8BE3C();
  sub_3488();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v2);
  if ((*(v4 + 88))(v7, v2) == enum case for Parse.uso(_:))
  {
    (*(v4 + 96))(v7, v2);
    (*(v10 + 32))(v13, v7, v8);
    strcpy(v25, ".uso parse: ");
    BYTE5(v25[1]) = 0;
    HIWORD(v25[1]) = -5120;
    sub_8C02C();
    v23 = sub_8BE9C();
    v24 = sub_72484();
    sub_E5DC(&v21);
    sub_8BE2C();
    v14 = sub_8C01C();
    v16 = v15;
    sub_2714(&v21);
    v26._countAndFlagsBits = v14;
    v26._object = v16;
    sub_8CF7C(v26);

    v21 = v25[0];
    v22 = v25[1];
    v17 = sub_8CFFC();
    (*(v4 + 8))(a1, v2);
    (*(v10 + 8))(v13, v8);
  }

  else
  {
    v18 = *(v4 + 8);
    v18(v7, v2);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_8D31C();
    v17 = sub_8CFFC();
    v18(a1, v2);
  }

  return v17;
}

unint64_t sub_72484()
{
  result = qword_C3080;
  if (!qword_C3080)
  {
    sub_8BE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3080);
  }

  return result;
}

uint64_t type metadata accessor for SkipAnnouncementCATs(uint64_t a1)
{
  result = qword_C3160;
  if (!qword_C3160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_725E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_8CA2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664(&qword_BFF28, &unk_8EFD0);
  __chkstk_darwin(v9 - 8);
  sub_137BC(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_8C90C();
  (*(v6 + 8))(a2, v5);
  sub_1382C(a1);
  return v11;
}

uint64_t type metadata accessor for SkipAnnouncementCATsSimple(uint64_t a1)
{
  result = qword_C31B0;
  if (!qword_C31B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_727E0()
{
  v3 = &async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_139E4;

  return (v3)(0xD00000000000002ELL, 0x80000000000986F0, _swiftEmptyArrayStorage);
}

uint64_t sub_728F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8CA2C();
  sub_13DCC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664(&qword_BFF28, &unk_8EFD0);
  __chkstk_darwin(v11 - 8);
  sub_137BC(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_8C9AC();
  (*(v7 + 8))(a2, v3);
  sub_1382C(a1);
  return v13;
}

uint64_t sub_72A54(uint64_t a1, uint64_t a2)
{
  sub_8CA2C();
  sub_13DCC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_8C9BC();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_72B5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_8BE0C();
  sub_3488();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v64 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v65 = &v61 - v10;
  v11 = __chkstk_darwin(v9);
  v63 = (&v61 - v12);
  __chkstk_darwin(v11);
  v14 = &v61 - v13;
  v15 = sub_8C71C();
  sub_3488();
  v17 = v16;
  __chkstk_darwin(v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SmsNLIntent(0);
  __chkstk_darwin(v66);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = (v5 + 16);
  v24 = *(v5 + 16);
  (v24)(v14, a1, v3);
  v25 = sub_75498();
  v27 = v26(v25);
  if (v27 != enum case for Parse.NLv3IntentOnly(_:))
  {
    if (v27 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      v32 = sub_75484();
      v33(v32);
      v34 = sub_75498();
      v35(v34);
      sub_2664(&qword_C0E28, &qword_938D0);

      goto LABEL_5;
    }

    if (v27 == enum case for Parse.directInvocation(_:))
    {
      if (qword_BF818 != -1)
      {
        sub_E754(&qword_BF818);
      }

      v40 = sub_8CD0C();
      sub_33F4(v40, qword_C3DF8);
      v41 = v63;
      (v24)(v63, a1, v3);
      v42 = sub_8CCEC();
      v43 = sub_8D11C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v62 = a1;
        v45 = v44;
        v64 = swift_slowAlloc();
        v68 = v64;
        *v45 = 136315138;
        v46 = sub_75470();
        v24(v46);
        sub_72160(v22);
        sub_75464();
        v48 = v47;
        sub_7543C();
        v23();
        sub_862D8(v24, v48, &v68);
        sub_75464();

        *(v45 + 4) = v24;
        _os_log_impl(&dword_0, v42, v43, "Received a direct action: %s.", v45, 0xCu);
        sub_2714(v64);

LABEL_15:

        v57 = v62;
LABEL_19:
        (v23)(v57, v3);
        v59 = sub_75498();
        (v23)(v59);
        v39 = 1;
        v38 = v67;
        return sub_6270(v38, v39, 1, v66);
      }

      sub_7543C();
      v58 = a1;
    }

    else
    {
      v49 = a1;
      if (qword_BF818 != -1)
      {
        sub_E754(&qword_BF818);
      }

      v50 = sub_8CD0C();
      sub_33F4(v50, qword_C3DF8);
      v41 = v64;
      (v24)(v64, a1, v3);
      v42 = sub_8CCEC();
      v51 = sub_8D12C();
      if (os_log_type_enabled(v42, v51))
      {
        v52 = swift_slowAlloc();
        v62 = v49;
        v53 = v52;
        v63 = swift_slowAlloc();
        v68 = v63;
        *v53 = 136315138;
        v54 = sub_75470();
        v24(v54);
        sub_72160(v22);
        sub_75464();
        v56 = v55;
        sub_7543C();
        v23();
        sub_862D8(v24, v56, &v68);
        sub_75464();

        *(v53 + 4) = v24;
        _os_log_impl(&dword_0, v42, v51, "Received an unknown parse: %s.", v53, 0xCu);
        sub_2714(v63);

        goto LABEL_15;
      }

      sub_7543C();
      v58 = v49;
    }

    (v23)(v58, v3);
    v57 = v41;
    goto LABEL_19;
  }

  v28 = sub_75484();
  v29(v28);
  v30 = sub_75498();
  v31(v30);
LABEL_5:
  v36 = *(v17 + 32);
  v36(v20, v14, v15);
  v36(v22, v20, v15);
  v37 = v22;
  v38 = v67;
  sub_74A78(v37, v67);
  v39 = 0;
  return sub_6270(v38, v39, 1, v66);
}

uint64_t sub_73158@<X0>(uint64_t a1@<X8>)
{
  if (qword_BF898 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsNLIntent(0);
  sub_75418(&qword_C0E70);
  sub_8C4BC();
  v2 = **(&off_BB798 + v5);
  v3 = sub_8B47C();
  return (*(*(v3 - 8) + 104))(a1, v2, v3);
}

BOOL sub_7323C()
{
  if (qword_BF8B8 != -1)
  {
    swift_once();
  }

  type metadata accessor for SmsNLIntent(0);
  sub_75418(&qword_C0E70);
  v0 = *(sub_8C4CC() + 16);

  if (!v0)
  {
    return 0;
  }

  return sub_7415C();
}

unint64_t sub_732F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_8C16C();
  sub_75890(v2, v3);
  v5 = v4;

  if (v5)
  {
    v6 = sub_8CE8C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v12._countAndFlagsBits = v6;
  v12._object = v8;
  sub_8CF7C(v12);

  v9 = sub_8C16C();
  sub_1EB64(1uLL, v9, v10);
  sub_1ECF8();

  sub_8CF6C();

  return 0xD000000000000012;
}

uint64_t sub_73424(char a1)
{
  result = 28532;
  switch(a1)
  {
    case 1:
      result = 1836020326;
      break;
    case 2:
      result = 0x6563616C706572;
      break;
    case 3:
      result = 0x65766F6D6572;
      break;
    case 4:
      result = 0x65726F6E6769;
      break;
    case 5:
      result = 7301239;
      break;
    case 6:
      result = 1953391987;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_73528()
{
  sub_2664(&qword_C3210, &unk_938E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_8E3F0;
  if (qword_BF888 != -1)
  {
    swift_once();
  }

  v1 = qword_C3FB0;
  *(v0 + 56) = sub_2664(&qword_C07E0, &qword_8FCB0);
  *(v0 + 64) = sub_75224(&qword_C1060, &qword_C07E0, &qword_8FCB0, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 32) = v1;
  v2 = sub_8C07C();
  sub_E824(v2);

  result = sub_8C06C();
  qword_C3FB8 = result;
  return result;
}

uint64_t sub_73644()
{
  sub_2664(&qword_C3200, &qword_938C8);
  swift_allocObject();
  result = sub_8C13C();
  qword_C3FC0 = result;
  return result;
}

uint64_t type metadata accessor for SmsNLIntent(uint64_t a1)
{
  result = qword_C3270;
  if (!qword_C3270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_73700()
{
  sub_2664(&qword_C3300, &unk_93AE0);
  swift_allocObject();
  result = sub_8C13C();
  qword_C3FC8 = result;
  return result;
}

uint64_t sub_7379C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_2664(&qword_C07E0, &qword_8FCB0);
  sub_E824(v5);
  result = sub_8C13C();
  *a4 = result;
  return result;
}

uint64_t sub_73800()
{
  v0 = sub_2664(&qword_C3208, &qword_938D8);
  sub_E824(v0);
  result = sub_8C13C();
  qword_C3FD8 = result;
  return result;
}

uint64_t sub_73864()
{
  v0 = sub_2664(&qword_C07E0, &qword_8FCB0);
  sub_E824(v0);
  result = sub_8C13C();
  qword_C3FE0 = result;
  return result;
}

uint64_t sub_738C4()
{
  sub_2664(&qword_C07E0, &qword_8FCB0);
  swift_allocObject();
  result = sub_8C13C();
  qword_C3FE8 = result;
  return result;
}

uint64_t sub_7392C()
{
  sub_2664(&qword_C07E0, &qword_8FCB0);
  swift_allocObject();
  result = sub_8C13C();
  qword_C3FF0 = result;
  return result;
}

uint64_t sub_73994()
{
  sub_2664(&qword_C07E0, &qword_8FCB0);
  swift_allocObject();
  result = sub_8C13C();
  qword_C3FF8 = result;
  return result;
}

uint64_t sub_739FC()
{
  sub_2664(&qword_C07E0, &qword_8FCB0);
  swift_allocObject();
  result = sub_8C13C();
  qword_C4000 = result;
  return result;
}

uint64_t sub_73A64()
{
  sub_2664(&qword_C07E0, &qword_8FCB0);
  swift_allocObject();
  result = sub_8C13C();
  qword_C4008 = result;
  return result;
}

uint64_t sub_73ACC()
{
  sub_2664(&qword_C3210, &unk_938E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_8FAC0;
  if (qword_BF890 != -1)
  {
    swift_once();
  }

  v1 = qword_C3FB8;
  *(v0 + 56) = sub_8C07C();
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v1;
  v2 = qword_BF8A8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_C3FD0;
  *(v0 + 96) = sub_2664(&qword_C07E0, &qword_8FCB0);
  *(v0 + 104) = sub_75224(&qword_C1060, &qword_C07E0, &qword_8FCB0, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 72) = v3;
  v4 = qword_BF8A0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_C3FC8;
  *(v0 + 136) = sub_2664(&qword_C3300, &unk_93AE0);
  *(v0 + 144) = sub_75224(&qword_C3308, &qword_C3300, &unk_93AE0, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 112) = v5;
  swift_allocObject();

  result = sub_8C06C();
  qword_C4010 = result;
  return result;
}

uint64_t sub_73CE4()
{
  sub_2664(&qword_C3210, &unk_938E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_938B0;
  if (qword_BF898 != -1)
  {
    swift_once();
  }

  v1 = qword_C3FC0;
  *(v0 + 56) = sub_2664(&qword_C3200, &qword_938C8);
  *(v0 + 64) = sub_75224(&qword_C32F8, &qword_C3200, &qword_938C8, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 32) = v1;
  v2 = qword_BF880;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_C3FA8;
  v4 = sub_2664(&qword_C07E0, &qword_8FCB0);
  *(v0 + 96) = v4;
  v5 = sub_75224(&qword_C1060, &qword_C07E0, &qword_8FCB0, &protocol conformance descriptor for TerminalOntologyNode<A>);
  *(v0 + 104) = v5;
  *(v0 + 72) = v3;
  v6 = qword_BF8E8;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_C4010;
  *(v0 + 136) = sub_8C07C();
  *(v0 + 144) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 112) = v7;
  v8 = qword_BF8B8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_C3FE0;
  *(v0 + 176) = v4;
  *(v0 + 184) = v5;
  *(v0 + 152) = v9;
  v10 = qword_BF8C0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_C3FE8;
  *(v0 + 216) = v4;
  *(v0 + 224) = v5;
  *(v0 + 192) = v11;
  v12 = qword_BF8C8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_C3FF0;
  *(v0 + 256) = v4;
  *(v0 + 264) = v5;
  *(v0 + 232) = v13;
  v14 = qword_BF8D0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_C3FF8;
  *(v0 + 296) = v4;
  *(v0 + 304) = v5;
  *(v0 + 272) = v15;
  v16 = qword_BF8D8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_C4000;
  *(v0 + 336) = v4;
  *(v0 + 344) = v5;
  *(v0 + 312) = v17;
  v18 = qword_BF8E0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_C4008;
  *(v0 + 376) = v4;
  *(v0 + 384) = v5;
  *(v0 + 352) = v19;
  qword_C4018 = v0;
}