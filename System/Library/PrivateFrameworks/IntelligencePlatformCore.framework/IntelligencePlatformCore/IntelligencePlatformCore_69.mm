void sub_1C4A8D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v24 = 0;
  v4 = 0;
  v5 = a3 + 56;
  sub_1C43FD030();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v27 = (v8 - 1) & v8;
LABEL_9:
    v14 = *(a3 + 48) + 24 * (v11 | (v4 << 6));
    v16 = *v14;
    v15 = *(v14 + 8);
    v28[0] = v16;
    v28[1] = v15;
    v29 = *(v14 + 16);
    v17 = v29;
    sub_1C45E8718(v16, v15, v29);
    v18 = v30;
    v19 = a4(v28);
    sub_1C45E872C(v16, v15, v17);
    v30 = v18;
    if (v18)
    {
      return;
    }

    v8 = v27;
    if (v19)
    {
      sub_1C4404D48();
      sub_1C43FC660(v20);
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_14:

        sub_1C4A8DF38(a1, a2, v24, a3);
        return;
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v10)
    {
      goto LABEL_14;
    }

    ++v12;
    if (*(v5 + 8 * v4))
    {
      sub_1C4413608();
      v27 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1C4A8D4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v48 = a4;
  v34 = a2;
  v35 = a1;
  v36 = 0;
  v6 = 0;
  v7 = a3 + 56;
  sub_1C43FD030();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_9:
    v17 = *(a3 + 48) + 56 * (v13 | (v6 << 6));
    v19 = *(v17 + 16);
    v18 = *(v17 + 32);
    v20 = *v17;
    v47 = *(v17 + 48);
    v46[1] = v19;
    v46[2] = v18;
    v46[0] = v20;
    v21 = *(v17 + 16);
    v42 = *v17;
    v43 = v21;
    v44 = *(v17 + 32);
    v45 = *(v17 + 48);
    sub_1C461B90C(v46, &v37);
    v22 = v48(&v42);
    if (v4)
    {
      sub_1C441BBC0(v22, v23, v24, v25, v26, v27, v28, v29, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
      return;
    }

    v30 = v22;
    sub_1C441BBC0(v22, v23, v24, v25, v26, v27, v28, v29, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    if (v30)
    {
      sub_1C4404D48();
      sub_1C43FC660(v31);
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_14:

        sub_1C4A8E4C4(v35, v34, v36, a3);
        return;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v12)
    {
      goto LABEL_14;
    }

    ++v14;
    if (*(v7 + 8 * v6))
    {
      sub_1C43FCF1C();
      v10 = v16 & v15;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1C4A8D668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v23 = sub_1C456902C(&qword_1EC0B8A30, &unk_1C4F0DE50);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBC74();
  v21 = v6;
  v22 = v7;
  v8 = 0;
  v20 = 0;
  sub_1C43FD030();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v25 = (v11 - 1) & v11;
LABEL_9:
    (*(v22 + 16))(v21, *(a3 + 48) + *(v22 + 72) * (v14 | (v8 << 6)), v23);
    v17 = a4(v21);
    (*(v22 + 8))(v21, v23);
    if (v26)
    {
      return;
    }

    v11 = v25;
    if (v17)
    {
      sub_1C4404D48();
      sub_1C43FC660(v18);
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_14:

        sub_1C44FEBCC();
        return;
      }
    }
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
      goto LABEL_14;
    }

    ++v15;
    if (*(a3 + 56 + 8 * v8))
    {
      sub_1C4413608();
      v25 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_1C4A8D87C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4A8D1F4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1C4A8D90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0BDE40, &qword_1C4F32288);
      sub_1C4416310();
      sub_1C44258C8();
      if (v8 != v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      v12 = v6 + 56;
      v29 = v7;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v18 = (*(v7 + 48) + 16 * (v13 | (v11 << 6)));
        v19 = *v18;
        v20 = v18[1];
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        sub_1C4F02B68();
        sub_1C4411990();
        sub_1C4405760();
        if (v21)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v21)
            {
              if (v23)
              {
                goto LABEL_29;
              }
            }

            if (v22 == v24)
            {
              v22 = 0;
            }

            if (*(v12 + 8 * v22) != -1)
            {
              sub_1C43FCF98();
              goto LABEL_26;
            }
          }
        }

        sub_1C43FFC04();
LABEL_26:
        sub_1C4426D0C();
        *(v12 + v25) = v26;
        v28 = (*(v6 + 48) + 16 * v27);
        *v28 = v19;
        v28[1] = v20;
        sub_1C440A4C0();
        if (v9)
        {
          goto LABEL_30;
        }

        v7 = v29;
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= v4)
        {
          goto LABEL_5;
        }

        sub_1C4424F24();
        if (v15)
        {
          sub_1C43FCF1C();
          v10 = v17 & v16;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1C4A8DAC0()
{
  sub_1C43FBD3C();
  sub_1C440D70C();
  sub_1C4EFDAF8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FD2D8();
  sub_1C4435C48(v4);
  if (!v0)
  {
LABEL_23:

LABEL_24:
    sub_1C44365DC();
    sub_1C43FE9F0();
    return;
  }

  sub_1C4422428();
  if (v5)
  {
    goto LABEL_24;
  }

  sub_1C456902C(&qword_1EC0BDE88, &qword_1C4F322D0);
  sub_1C4416310();
  sub_1C4418B64();
  sub_1C4408EE0();
  while (v6)
  {
    sub_1C440AAD0();
LABEL_13:
    v9 = sub_1C4407798();
    v10(v9);
    v11 = sub_1C4A8ED18(&qword_1EDDEFFA8, MEMORY[0x1E69A94B0], MEMORY[0x1E69A94B8]);
    sub_1C4409F98(v11);
    sub_1C442D128();
    if (v5)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v5)
        {
          if (v13)
          {
            goto LABEL_26;
          }
        }

        sub_1C443002C();
        if (!v5)
        {
          sub_1C43FCF98();
          goto LABEL_21;
        }
      }
    }

    sub_1C43FFC04();
LABEL_21:
    v14 = sub_1C441A1A0(v12);
    v15(v14);
    sub_1C4433698();
    if (v16)
    {
      goto LABEL_27;
    }

    sub_1C444B224();
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    sub_1C4424F24();
    if (v8)
    {
      sub_1C4413608();
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1C4A8DCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C443FED0();
    if (!v9)
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0BDE50, &unk_1C4F4B340);
      sub_1C4416310();
      sub_1C44258C8();
      if (v10 != v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = *v6;
      }

      v13 = 0;
      while (v12)
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_16:
        v18 = *(*(a4 + 48) + (v14 | (v13 << 6)));
        sub_1C4F02AF8();
        sub_1C4F01298();

        sub_1C4F02B68();
        sub_1C4411990();
        sub_1C4405760();
        if (v9)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v9)
            {
              if (v20)
              {
                goto LABEL_30;
              }
            }

            if (v19 == v21)
            {
              v19 = 0;
            }

            if (*(v7 + 56 + 8 * v19) != -1)
            {
              sub_1C43FCF98();
              goto LABEL_26;
            }
          }
        }

        sub_1C43FFC04();
LABEL_26:
        sub_1C44064EC();
        sub_1C440CD14();
        *(v23 + v22) = v18;
        sub_1C440A4C0();
        if (v11)
        {
          goto LABEL_31;
        }

        if (!v4)
        {
          goto LABEL_5;
        }
      }

      v15 = v13;
      while (1)
      {
        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v13 >= v5)
        {
          goto LABEL_5;
        }

        ++v15;
        if (v6[v13])
        {
          sub_1C43FCF1C();
          v12 = v17 & v16;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1C4A8DF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0C2600, &qword_1C4F4B338);
      sub_1C4416310();
      sub_1C44258C8();
      if (v8 != v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      v28 = v7;
      while (v10)
      {
        sub_1C440AAD0();
        v29 = v14;
LABEL_16:
        v17 = *(v7 + 48) + (v12 | (v11 << 6)) * v13;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        sub_1C4F02AF8();
        sub_1C45E8718(v18, v19, v20);
        sub_1C494F908();
        sub_1C4F02B68();
        sub_1C4411990();
        sub_1C4405760();
        if (v21)
        {
          sub_1C43FFBF0();
          while (1)
          {
            sub_1C4410160();
            if (v21)
            {
              if (v23)
              {
                goto LABEL_29;
              }
            }

            if (v22 == v24)
            {
              v22 = 0;
            }

            if (*(v6 + 56 + 8 * v22) != -1)
            {
              sub_1C43FCF98();
              goto LABEL_26;
            }
          }
        }

        sub_1C43FFC04();
LABEL_26:
        sub_1C44064EC();
        sub_1C440CD14();
        v27 = v26 + 24 * v25;
        *v27 = v18;
        *(v27 + 8) = v19;
        *(v27 + 16) = v20;
        sub_1C440A4C0();
        if (v9)
        {
          goto LABEL_30;
        }

        v7 = v28;
        v10 = v29;
      }

      v15 = v11;
      while (1)
      {
        v11 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v11 >= v4)
        {
          goto LABEL_5;
        }

        ++v15;
        if (v5[v11])
        {
          sub_1C4413608();
          v29 = v16;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1C4A8E0F4()
{
  sub_1C43FBD3C();
  sub_1C440D70C();
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FD2D8();
  sub_1C4435C48(v4);
  if (!v0)
  {
LABEL_23:

LABEL_24:
    sub_1C44365DC();
    sub_1C43FE9F0();
    return;
  }

  sub_1C4422428();
  if (v5)
  {
    goto LABEL_24;
  }

  sub_1C456902C(&qword_1EC0BDE78, &qword_1C4F322C0);
  sub_1C4416310();
  sub_1C4418B64();
  sub_1C4408EE0();
  while (v6)
  {
    sub_1C440AAD0();
LABEL_13:
    v9 = sub_1C4407798();
    v10(v9);
    v11 = sub_1C4A8ED18(&qword_1EDDFCCB8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9758]);
    sub_1C4409F98(v11);
    sub_1C442D128();
    if (v5)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v5)
        {
          if (v13)
          {
            goto LABEL_26;
          }
        }

        sub_1C443002C();
        if (!v5)
        {
          sub_1C43FCF98();
          goto LABEL_21;
        }
      }
    }

    sub_1C43FFC04();
LABEL_21:
    v14 = sub_1C441A1A0(v12);
    v15(v14);
    sub_1C4433698();
    if (v16)
    {
      goto LABEL_27;
    }

    sub_1C444B224();
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    sub_1C4424F24();
    if (v8)
    {
      sub_1C4413608();
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1C4A8E2DC()
{
  sub_1C43FBD3C();
  sub_1C440D70C();
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FD2D8();
  sub_1C4435C48(v4);
  if (!v0)
  {
LABEL_23:

LABEL_24:
    sub_1C44365DC();
    sub_1C43FE9F0();
    return;
  }

  sub_1C4422428();
  if (v5)
  {
    goto LABEL_24;
  }

  sub_1C456902C(&qword_1EC0BDDE8, "(M\n");
  sub_1C4416310();
  sub_1C4418B64();
  sub_1C4408EE0();
  while (v6)
  {
    sub_1C440AAD0();
LABEL_13:
    v9 = sub_1C4407798();
    v10(v9);
    v11 = sub_1C4A8ED18(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
    sub_1C4409F98(v11);
    sub_1C442D128();
    if (v5)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v5)
        {
          if (v13)
          {
            goto LABEL_26;
          }
        }

        sub_1C443002C();
        if (!v5)
        {
          sub_1C43FCF98();
          goto LABEL_21;
        }
      }
    }

    sub_1C43FFC04();
LABEL_21:
    v14 = sub_1C441A1A0(v12);
    v15(v14);
    sub_1C4433698();
    if (v16)
    {
      goto LABEL_27;
    }

    sub_1C444B224();
  }

  v7 = v2;
  while (1)
  {
    v2 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v2 >= v1)
    {
      goto LABEL_23;
    }

    sub_1C4424F24();
    if (v8)
    {
      sub_1C4413608();
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_1C4A8E4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_1C443FED0();
    if (!v8)
    {
      v9 = v7;
      v10 = v6;
      sub_1C456902C(&qword_1EC0BDFA8, &qword_1C4F323A0);
      v11 = sub_1C4416310();
      if (v9 < 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = *v10;
      }

      v13 = 0;
      v14 = v11 + 56;
      v37 = v10;
      v38 = v9;
      v39 = a4;
      v36 = v11;
      if (v12)
      {
        while (1)
        {
          sub_1C440AAD0();
          v40 = v17;
LABEL_16:
          v20 = *(a4 + 48) + (v15 | (v13 << 6)) * v16;
          v22 = *v20;
          v21 = *(v20 + 16);
          v23 = *(v20 + 32);
          v45 = *(v20 + 48);
          v43 = v21;
          v44 = v23;
          v42 = v22;
          sub_1C4F02AF8();
          v24 = v45;
          sub_1C461B90C(&v42, v41);
          sub_1C4F01298();
          sub_1C4F01298();
          sub_1C4F01298();
          MEMORY[0x1C69417F0](v24);
          sub_1C4F02B38();
          sub_1C4F02B68();
          sub_1C4411990();
          sub_1C4405760();
          if (v8)
          {
            break;
          }

          sub_1C43FFC04();
          v9 = v38;
          a4 = v39;
          v10 = v37;
LABEL_26:
          sub_1C4426D0C();
          *(v14 + v28) = v29;
          v31 = *(v36 + 48) + 56 * v30;
          v32 = v42;
          v33 = v43;
          v34 = v44;
          *(v31 + 48) = v45;
          *(v31 + 16) = v33;
          *(v31 + 32) = v34;
          *v31 = v32;
          sub_1C4460324();
          if (v35)
          {
            goto LABEL_33;
          }

          if (!v4)
          {
LABEL_30:

            return;
          }

          if (!v40)
          {
            goto LABEL_11;
          }
        }

        sub_1C43FFBF0();
        v9 = v38;
        a4 = v39;
        v10 = v37;
        while (1)
        {
          sub_1C4410160();
          if (v8)
          {
            if (v26)
            {
              break;
            }
          }

          if (v25 == v27)
          {
            v25 = 0;
          }

          if (*(v14 + 8 * v25) != -1)
          {
            sub_1C43FCF98();
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_11:
        v18 = v13;
        while (1)
        {
          v13 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v13 >= v9)
          {
            goto LABEL_30;
          }

          ++v18;
          if (v10[v13])
          {
            sub_1C4413608();
            v40 = v19;
            goto LABEL_16;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_33:
      __break(1u);
    }
  }

  else
  {
  }
}

void sub_1C4A8E738()
{
  sub_1C43FBD3C();
  v4 = v3;
  if (!v5)
  {
LABEL_5:

    goto LABEL_6;
  }

  sub_1C443FED0();
  if (v6)
  {
LABEL_6:
    sub_1C43FE9F0();
    return;
  }

  sub_1C441AE30();
  sub_1C456902C(&qword_1EC0BDE20, &qword_1C4F4B330);
  v7 = sub_1C4416310();
  v8 = v7;
  if (v1 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v2;
  }

  v10 = 0;
  v11 = v7 + 56;
  while (v9)
  {
    sub_1C43FFB74();
LABEL_16:
    v16 = *(*(v4 + 48) + 8 * (v12 | (v10 << 6)));
    v17 = sub_1C4F02AE8() & ~(-1 << *(v8 + 32));
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      sub_1C43FFBF0();
      while (1)
      {
        sub_1C4410160();
        if (v6)
        {
          if (v19)
          {
            goto LABEL_30;
          }
        }

        if (v18 == v20)
        {
          v18 = 0;
        }

        if (*(v11 + 8 * v18) != -1)
        {
          sub_1C43FCF98();
          goto LABEL_26;
        }
      }
    }

    sub_1C43FFC04();
LABEL_26:
    sub_1C44064EC();
    *(v11 + v21) |= v22;
    *(*(v8 + 48) + 8 * v23) = v16;
    sub_1C4460324();
    if (v24)
    {
      goto LABEL_31;
    }

    if (!v0)
    {
      goto LABEL_5;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v1)
    {
      goto LABEL_5;
    }

    ++v13;
    if (v2[v10])
    {
      sub_1C43FCF1C();
      v9 = v15 & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1C4A8E8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = sub_1C440D70C();
  v28 = type metadata accessor for OntologyTriple(v27);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v20)
  {
LABEL_18:

LABEL_19:
    sub_1C43FE9F0();
    return;
  }

  if (*(v26 + 16) == v20)
  {
    goto LABEL_19;
  }

  sub_1C456902C(&qword_1EC0BDE90, &unk_1C4F322D8);
  sub_1C4416310();
  if (v21 < 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = *v22;
  }

  v33 = 0;
  while (v32)
  {
    sub_1C4401DF0();
LABEL_16:
    sub_1C449EFA8(*(v26 + 48) + *(v29 + 72) * (v34 | (v33 << 6)), v31, type metadata accessor for OntologyTriple);
    sub_1C4843D58();
    if (__OFSUB__(v20--, 1))
    {
      goto LABEL_21;
    }

    if (!v20)
    {
      goto LABEL_18;
    }
  }

  v35 = v33;
  while (1)
  {
    v33 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v33 >= v21)
    {
      goto LABEL_18;
    }

    ++v35;
    if (v22[v33])
    {
      sub_1C43FCF1C();
      v32 = v37 & v36;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1C4A8EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_1C441AE30();
      sub_1C456902C(&qword_1EC0BDEF8, &unk_1C4F32340);
      sub_1C4416310();
      sub_1C44258C8();
      if (v8 != v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      if (v10)
      {
        while (1)
        {
          sub_1C440AAD0();
          v30 = v13;
LABEL_15:
          v17 = (*(a4 + 48) + ((v12 | (v11 << 6)) << 6));
          v19 = *v17;
          v18 = v17[1];
          v20 = v17[3];
          v34 = v17[2];
          v35 = v20;
          v32 = v19;
          v33 = v18;
          sub_1C4F02AF8();
          if (*(&v34 + 1))
          {
            sub_1C4851520(&v32, v31);
            sub_1C4F01298();
          }

          else
          {
            sub_1C4851520(&v32, v31);
          }

          sub_1C4F01298();
          sub_1C4F02B68();
          sub_1C442D128();
          if (v21)
          {
            break;
          }

          sub_1C43FFC04();
LABEL_26:
          sub_1C4426D0C();
          *(v6 + 56 + v23) = v24;
          v26 = (*(v6 + 48) + (v25 << 6));
          v27 = v32;
          v28 = v33;
          v29 = v35;
          v26[2] = v34;
          v26[3] = v29;
          *v26 = v27;
          v26[1] = v28;
          sub_1C440A4C0();
          if (v9)
          {
            goto LABEL_32;
          }

          if (!v30)
          {
            goto LABEL_10;
          }
        }

        sub_1C43FFBF0();
        while (1)
        {
          sub_1C4410160();
          if (v21)
          {
            if (v22)
            {
              break;
            }
          }

          sub_1C443002C();
          if (!v21)
          {
            sub_1C43FCF98();
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_10:
        v14 = v11;
        while (1)
        {
          v11 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v11 >= v4)
          {

            return;
          }

          sub_1C4424F24();
          if (v15)
          {
            sub_1C4413608();
            v30 = v16;
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }
  }

  else
  {
  }
}

unint64_t sub_1C4A8ECB4()
{
  result = qword_1EC0B9150;
  if (!qword_1EC0B9150)
  {
    sub_1C4572308(&qword_1EC0B8A30, &unk_1C4F0DE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9150);
  }

  return result;
}

uint64_t sub_1C4A8ED18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C4A8ED7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v1, 0);
    v5 = sub_1C486C288();
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + (v5 << 6));
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v13 >= v12 >> 1)
        {
          sub_1C44CD9C0(v12 > 1, v13 + 1, 1);
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C440951C(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C440951C(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

float sub_1C4A8EFB4()
{
  v27 = *MEMORY[0x1E69E9840];
  v0 = sub_1C440A9B8();
  sub_1C456902C(v0, v1);
  sub_1C4401CBC(&qword_1EC0C2620, &qword_1EC0B84F0, &unk_1C4F0CF50, MEMORY[0x1E695FCF0]);
  sub_1C43FBEF8();
  v2 = *(sub_1C4F009A8() + 16);

  __C = NAN;
  sub_1C43FBEF8();
  v3 = sub_1C4F009A8();
  sub_1C43FBEF8();
  v4 = sub_1C4F009A8();
  vDSP_dotpr((v3 + 32), 1, (v4 + 32), 1, &__C, v2);

  sub_1C43FBEF8();
  v5 = sub_1C4F009A8();
  sub_1C4422B6C(v5, v6, v7, v8, v9, v10, v11, v12, v23);
  v13 = *&v24;

  sub_1C43FBEF8();
  v14 = sub_1C4F009A8();
  sub_1C4422B6C(v14, v15, v16, v17, v18, v19, v20, v21, v24);

  return __C / ((sqrtf(v13) * sqrtf(v25)) + 0.00000011921);
}

uint64_t sub_1C4A8F138(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B0C0();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C4A949E4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C4A8F1A4(uint64_t a1)
{
  v4 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4A8F138(&v4);
  v2 = v4;
  if (v1)
  {
  }

  return v2;
}

unint64_t sub_1C4A8F1F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C4A8F240(char a1)
{
  result = 0x5F746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      v3 = 0x656C646E6168;
      goto LABEL_7;
    case 3:
      v3 = 0x6E6F69736976;
LABEL_7:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6D5F000000000000;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6E5F676E6F727473;
      break;
    case 7:
      result = 0x6C696D69735F6C6DLL;
      break;
    case 8:
      result = 0x6D616E5F6B616577;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4A8F3A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4A8F1F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C4A8F3D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4A8F240(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C4A8F4B4(char a1)
{
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x206E6F736165523CLL, 0xED00003A65707974);
  sub_1C4F02438();
  MEMORY[0x1C6940010](0x3A6174614420, 0xE600000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v1 = sub_1C4404084();
  MEMORY[0x1C6940010](v1);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0;
}

double sub_1C4A8F5B4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1C4F00FF8();
  v8 = v7;
  v75 = v6;
  v76 = v7;
  *(&v71 + 1) = 0xE100000000000000;
  v9 = sub_1C4415EA8();
  sub_1C4400AD4(v9, MEMORY[0x1E69E6158], v10, v11, v12, v13, v14, v15, v60, v63, v64, v65, v66, v67, v68, v69, v70, 64);
  v16 = sub_1C4F01FC8();
  if (v16[2] != 2)
  {
    if (qword_1EDDFD028 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  if (!v16[2])
  {
    goto LABEL_23;
  }

  v17 = v16[4];
  a2 = v16[5];
  v18 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  while (1)
  {
    v75 = v17;
    v76 = a2;
    a1 = 0xE100000000000000;
    *(&v71 + 1) = 0xE100000000000000;
    sub_1C4400AD4(v18, MEMORY[0x1E69E6158], v19, v20, v21, v22, v23, v24, v61, v63, v64, v65, v66, v67, v68, v69, v70, 43);
    v31 = sub_1C4F02048();
    if (v31)
    {
      v75 = v17;
      v76 = a2;
      *(&v71 + 1) = 0xE100000000000000;
      sub_1C4400AD4(v31, MEMORY[0x1E69E6158], v32, v33, v34, v35, v36, v37, v61, v63, v64, v65, v66, v67, v68, v69, v70, 43);
      sub_1C4F01FC8();
      sub_1C44341C0();
      if (v38)
      {
        goto LABEL_18;
      }
    }

    v75 = v17;
    v76 = a2;
    a1 = 0xE200000000000000;
    *(&v71 + 1) = 0xE200000000000000;
    sub_1C4400AD4(v31, MEMORY[0x1E69E6158], v32, v33, v34, v35, v36, v37, v61, v63, v64, v65, v66, v67, v68, v69, v70, 45);
    v39 = sub_1C4F02048();
    if (v39)
    {
      v75 = v17;
      v76 = a2;
      *(&v71 + 1) = 0xE200000000000000;
      sub_1C4400AD4(v39, MEMORY[0x1E69E6158], v40, v41, v42, v43, v44, v45, v61, v63, v64, v65, v66, v67, v68, v69, v70, 45);
      sub_1C4F01FC8();
      sub_1C44341C0();
      if (v38)
      {
        goto LABEL_18;
      }
    }

    v75 = v17;
    v76 = a2;
    a1 = 0xE100000000000000;
    *(&v71 + 1) = 0xE100000000000000;
    sub_1C4400AD4(v39, MEMORY[0x1E69E6158], v40, v41, v42, v43, v44, v45, v61, v63, v64, v65, v66, v67, v68, v69, v70, 46);
    v46 = sub_1C4F02048();
    if ((v46 & 1) == 0)
    {
      goto LABEL_20;
    }

    v75 = v17;
    v76 = a2;
    *(&v71 + 1) = 0xE100000000000000;
    sub_1C4400AD4(v46, MEMORY[0x1E69E6158], v47, v48, v49, v50, v51, v52, v62, v63, v64, v65, v66, v67, v68, v69, v70, 46);
    sub_1C4F01FC8();
    sub_1C44341C0();
    if (!v38)
    {
      break;
    }

LABEL_18:
    v54 = *(a1 + 32);
    v53 = *(a1 + 40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (v16[2] >= 2uLL)
    {
      v56 = v16[6];
      v55 = v16[7];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      goto LABEL_21;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_1C4419274();
    swift_once();
LABEL_5:
    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CD8();

    if (os_log_type_enabled(v26, v27))
    {
      v61 = v6;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v75 = v29;
      *v28 = 136380675;
      v30 = sub_1C441D828(a1, a2, &v75);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_1C43F8000, v26, v27, "Invalid Email: %{private}s does not contain single '@'. Treating as empty.", v28, 0xCu);
      sub_1C440962C(v29);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v6 = v61;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }

    v17 = 0;
    a2 = 0xE000000000000000;
  }

LABEL_20:

  v54 = 0;
  v53 = 0;
  v56 = 0;
  v55 = 0;
LABEL_21:
  *&v71 = v6;
  *(&v71 + 1) = v8;
  *&v72 = v17;
  *(&v72 + 1) = a2;
  *&v73 = v54;
  *(&v73 + 1) = v53;
  *&v74 = v56;
  *(&v74 + 1) = v55;
  v75 = v6;
  v76 = v8;
  v77 = v17;
  v78 = a2;
  v79 = v54;
  v80 = v53;
  v81 = v56;
  v82 = v55;
  sub_1C4851520(&v71, &v63);
  sub_1C485157C(&v75);
  v57 = v72;
  *a3 = v71;
  a3[1] = v57;
  result = *&v73;
  v59 = v74;
  a3[2] = v73;
  a3[3] = v59;
  return result;
}

uint64_t sub_1C4A8F91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v386 = a3;
  v387 = a2;
  v394 = a1;
  v5 = sub_1C4EF9CD8();
  v384 = *(v5 - 8);
  v385 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v383 = &v348 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v391 = sub_1C4EFD548();
  v433 = *(v391 - 8);
  MEMORY[0x1EEE9AC00](v391);
  v390 = &v348 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFF0C8();
  v392 = *(v8 - 8);
  v393 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v389 = &v348 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v388 = &v348 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v382 = &v348 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v379 = &v348 - v15;
  v16 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v380 = &v348 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v381 = &v348 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v348 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v348 - v24;
  v26 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v348 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v348 - v30;
  v32 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v348 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C44D8A74();
  if (v4)
  {
    return result;
  }

  v373 = v28;
  v374 = v25;
  v375 = v34;
  v376 = v22;
  v378 = v3;
  sub_1C44D0BD8(v394, v31);
  if (sub_1C44157D4(v31, 1, v32) == 1)
  {
    sub_1C4420C3C(v31, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
LABEL_268:
      swift_once();
    }

    v36 = sub_1C4F00978();
    sub_1C442B738(v36, qword_1EDE2DE10);
    v37 = sub_1C4F00968();
    v38 = sub_1C4F01CD8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1C43F8000, v37, v38, "People Matcher: skipping entityTriples are empty", v39, 2u);
      MEMORY[0x1C6942830](v39, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v40 = 0;
    return swift_willThrow();
  }

  v41 = v375;
  sub_1C4A948D8(v31, v375);
  v42 = *(v41 + *(v32 + 40) + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44F40EC();
  sub_1C44DA574(v43, &v419);
  v367 = v42;
  v369 = 0;

  v44 = v419;
  v46 = v420;
  v45 = v421;
  v47 = v423;
  v394 = v422;
  v48 = v425;
  v372 = v424;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v366 = v44.n128_i64[1];
  v49 = v47;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v365 = v45;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v368 = v44.n128_u64[0];
  v50 = sub_1C44E1D98(v44.n128_i64[0]);
  v51 = MEMORY[0x1E69E7CC8];
  v370 = v46;
  v371 = v32;
  v377 = v50;
  v52 = v387;
  if (v387)
  {
    v53 = v48;
    v54 = v373;
    sub_1C44D0BD8(v387, v373);
    v55 = sub_1C44157D4(v54, 1, v32);
    v56 = v393;
    v57 = v433;
    if (v55 != 1)
    {
      v58 = v374;
      (*(v392 + 16))(v374, v54, v393);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C447EA28(v54, type metadata accessor for EntityTriple);
      sub_1C440BAA8(v58, 0, 1, v56);
      v418 = MEMORY[0x1E69E7CC8];
      v48 = v53;
LABEL_14:
      v59 = v376;
      sub_1C44DDE2C();
      if (sub_1C44157D4(v59, 1, v56) == 1)
      {

        sub_1C4420C3C(v59, &unk_1EC0BA0E0, &qword_1C4F105A0);
        goto LABEL_16;
      }

      v387 = v49;
      v97 = v392;
      v98 = v56;
      v99 = v379;
      (*(v392 + 32))(v379, v59, v98);
      sub_1C44F40EC();
      v100 = v369;
      sub_1C44DA574(v101, &v426);
      v369 = v100;
      if (v100)
      {

        sub_1C44DEEB4(&v419);

        swift_bridgeObjectRelease_n();

        (*(v97 + 8))(v99, v98);
        sub_1C4420C3C(v374, &unk_1EC0BA0E0, &qword_1C4F105A0);

        return sub_1C447EA28(v375, type metadata accessor for EntityTriple);
      }

      v127 = v426;
      v129 = v427;
      v128 = v428;
      v130 = v430;
      v358 = v429;
      v359 = v431;
      v361 = v432;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v364 = v127.n128_u64[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v376 = v128;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DEEB4(&v426);
      v363 = v127.n128_u64[0];
      v131 = sub_1C44E1D98(v127.n128_i64[0]);
      v373 = v129;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v362 = v131;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF048();
      v355 = v132;
      strcpy(&v413, "isCurrentUser");
      HIWORD(v413) = -4864;
      *&v414 = 1702195828;
      *(&v414 + 1) = 0xE400000000000000;
      v416 = 0;
      v415 = 0uLL;
      v417 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(&v413);
      if (v387)
      {
        if (v394 == 1702195828 && v387 == 0xE400000000000000)
        {
          LODWORD(v360) = 1;
        }

        else
        {
          LODWORD(v360) = sub_1C4F02938();
        }
      }

      else
      {
        LODWORD(v360) = 0;
      }

      *&v408 = 0xD000000000000014;
      *(&v408 + 1) = 0x80000001C4F8BE80;
      *&v409 = 1702195828;
      *(&v409 + 1) = 0xE400000000000000;
      v411 = 0;
      v410 = 0uLL;
      v412 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(&v408);
      if (v48)
      {
        if (v372 == 1702195828 && v48 == 0xE400000000000000)
        {
          LODWORD(v357) = 1;
        }

        else
        {
          LODWORD(v357) = sub_1C4F02938();
        }
      }

      else
      {
        LODWORD(v357) = 0;
      }

      strcpy(v406, "isCurrentUser");
      HIWORD(v406[1]) = -4864;
      v406[2] = 1702195828;
      v406[3] = 0xE400000000000000;
      memset(&v406[4], 0, 24);
      v407 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(v406);
      if (v130)
      {
        if (v358 == 1702195828 && v130 == 0xE400000000000000)
        {
          v149 = 1;
        }

        else
        {
          v149 = sub_1C4F02938();
        }
      }

      else
      {
        v149 = 0;
      }

      v404[0] = 0xD000000000000014;
      v404[1] = 0x80000001C4F8BE80;
      v404[2] = 1702195828;
      v404[3] = 0xE400000000000000;
      memset(&v404[4], 0, 24);
      v405 = 1;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44E3634(v404);
      v150 = v363;
      v350 = 0xD000000000000014;
      if (v361)
      {
        LODWORD(v372) = v149;
        if (v359 != 1702195828 || v361 != 0xE400000000000000)
        {
          v152 = sub_1C4F02938();

          v153 = v373;
          v154 = v370;
          if (v360)
          {
            v155 = v372 | ~v152;
            v156 = v375;
            if (v155)
            {
              v157 = v372 ^ 1;
LABEL_127:
              v359 = v157;
              goto LABEL_128;
            }

            goto LABEL_123;
          }

          if ((v372 & 1) == 0)
          {
            v159 = v357 & v152;
            v156 = v375;
            if ((v159 & 1) == 0)
            {
              goto LABEL_126;
            }

            goto LABEL_123;
          }

LABEL_122:
          v156 = v375;
          if ((v357 & 1) == 0)
          {
            goto LABEL_126;
          }

          goto LABEL_123;
        }

        v153 = v373;
        v154 = v370;
        if ((v360 & 1) == 0)
        {
          goto LABEL_122;
        }

        v156 = v375;
        if ((v372 & 1) == 0)
        {
LABEL_123:
          if (*(v154 + 16) && *(v153 + 16))
          {
            v160 = sub_1C4A935F4(v154, v153);
            sub_1C47023EC(v161, v162, v163);
            LODWORD(v372) = v160;
            v157 = v160 ^ 1u;
            goto LABEL_127;
          }

LABEL_126:
          LODWORD(v372) = 0;
          v157 = 1;
          goto LABEL_127;
        }

        v359 = 0;
        LODWORD(v372) = 1;
      }

      else
      {

        v156 = v375;
        if ((v360 & 1) == 0)
        {
          v158 = v149 & v357;
          v153 = v373;
          v154 = v370;
          if ((v158 & 1) == 0)
          {
            goto LABEL_126;
          }

          goto LABEL_123;
        }

        LODWORD(v372) = v149;
        v359 = (v149 ^ 1u);
      }

LABEL_128:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v164 = v368;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (*(v164 + 16) && *(v150 + 16))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v165 = v365;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v166 = v368;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v167 = sub_1C4A954A4(v150, v166, sub_1C4A69E28, sub_1C4A69E28);
        v351 = v167[2] != 0;
        *&v400 = v167;
        sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
        sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50, MEMORY[0x1E69E6508]);
        sub_1C4415EA8();
        v360 = sub_1C4F01568();
        v354 = v168;
        v156 = v375;

        v169 = v165;

        v170 = v366;

        v60 = v377;

        v361 = 1;
      }

      else
      {

        v169 = v365;

        v170 = v366;

        v60 = v377;

        v351 = 0;
        v360 = 0;
        v361 = 0;
        v354 = 1;
      }

      v359 = (v359 & 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v171 = v373;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v172 = v364;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (*(v170 + 16) && *(v172 + 2) || *(v169 + 16) && *(v376 + 2))
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v173 = sub_1C4A954A4(v364, v170, sub_1C4A69E28, sub_1C4A69E28);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v358 = sub_1C4A954A4(v376, v169, sub_1C4A6AD48, sub_1C4A6AD48);
        v174 = v369;
        sub_1C4A8ED7C(v358);
        v369 = v174;
        v175 = sub_1C4499940();

        *&v400 = sub_1C44999E0(v175, v173);
        sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
        sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50, MEMORY[0x1E69E6508]);
        sub_1C4415EA8();
        v60 = v377;
        v357 = sub_1C4F01568();
        v177 = v176;

        v178 = v173[2];

        if (v178)
        {

          v179 = 1;
        }

        else
        {
          v181 = *(v358 + 16);

          v179 = v181 != 0;
        }

        v358 = v179;
        v156 = v375;
        v356 = 2;
        v180 = v373;
      }

      else
      {

        v357 = 0;
        v358 = 0;
        v356 = 0;
        v177 = 2;
        v180 = v171;
      }

      v182 = v372;
      v372 = sub_1C4A92C90(v60, v362);
      v352 = v183;
      v353 = v184;
      v186 = v185;
      if (v387)
      {
        if (v182)
        {

          sub_1C4A95670(v358, v356, v357, v177);
          sub_1C47023EC(v361, v360, v354);
          sub_1C456902C(&qword_1EC0B8530, qword_1C4F0CF70);
          v187 = swift_allocObject();
          sub_1C466323C(v187, 1);
          strcpy(v188, "isCurrentUser");
          *(v188 + 7) = -4864;
          v189 = v387;
          *(v188 + 2) = v394;
          *(v188 + 3) = v189;
          v190 = sub_1C4F00F28();
          v361 = 0;
          v191 = 0;
          v418 = v190;
          v192 = &xmmword_1EDDFD000;
LABEL_159:
          v193 = v359;
LABEL_160:
          if (v193 == 1)
          {
            goto LABEL_162;
          }

          goto LABEL_161;
        }

        sub_1C47023EC(0, 0, v359);
      }

      else
      {
        sub_1C47023EC(0, 0, v359);
      }

      v191 = v360;
      if (v351)
      {

        sub_1C4A95670(v358, v356, v357, v177);
        v193 = v354;
LABEL_148:
        v192 = &xmmword_1EDDFD000;
        goto LABEL_160;
      }

      sub_1C47023EC(v361, v360, v354);
      v194 = *(v370 + 16);

      if (v194)
      {
        v195 = *(v180 + 16);

        if (v195)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v349 = v177;
          if (v186 == 2)
          {
            v196 = 0;
            LODWORD(v387) = (v177 != 2) & v358;
            v197 = (v177 == 2) | v358;
          }

          else if (v372)
          {
            v196 = (v177 != 2) & v358;
            LODWORD(v387) = 1;
            v197 = 1;
          }

          else
          {
            v196 = 0;
            v240 = v177 != 2;
            v197 = v240 & v358;
            LODWORD(v387) = v240 & v358;
          }

          v241 = sub_1C4A933E4(v370);
          v191 = v243;
          v193 = v244;
          if (v241 & 1) != 0 && (v197)
          {
            v361 = v242;

            sub_1C4A95670(v358, v356, v357, v349);
            v60 = v377;
            goto LABEL_148;
          }

          LODWORD(v361) = v196;
          v394 = v186;
          sub_1C47023EC(v242, v243, v244);
          v245 = sub_1C4A935F4(v370, v180);
          v247 = v246;
          v249 = v248;
          v251 = v250;

          if (v245 & v387)
          {
            *&v400 = sub_1C4B400F8(8);
            *(&v400 + 1) = v252;
            if (v251 < 2)
            {

              v249 = 0;
              v251 = 0xE000000000000000;
            }

            v60 = v377;
            v253 = v349;
            MEMORY[0x1C6940010](v249, v251);

            MEMORY[0x1C6940010](44, 0xE100000000000000);
            v254 = v356;
            if (v253 >= 3)
            {
              v323 = v357;
              sub_1C4A9568C(v356, v357, v253);
              v255 = v323;
              v256 = v253;
            }

            else
            {

              v255 = 0;
              v256 = 0xE000000000000000;
            }

            v186 = v394;
            MEMORY[0x1C6940010](v255, v256);

            MEMORY[0x1C6940010](44, 0xE100000000000000);
            if (v186 >= 3)
            {
              v326 = v353;
              sub_1C4A9568C(v352, v353, v186);
              v324 = v326;
              v325 = v186;
            }

            else
            {

              v324 = 0;
              v325 = 0xE000000000000000;
            }

            MEMORY[0x1C6940010](v324, v325);

            sub_1C4A95670(v358, v254, v357, v253);
            v193 = *(&v400 + 1);
            v191 = v400;
            v361 = 9;
            goto LABEL_148;
          }

          sub_1C47023EC(v247, v249, v251);
          v56 = v393;
          if (v361)
          {
            *&v400 = sub_1C4B400F8(5);
            *(&v400 + 1) = v257;
            v258 = v349;
            v186 = v394;
            if (v349 >= 3)
            {
              v327 = v357;
              sub_1C4A9568C(v356, v357, v349);
              v259 = v327;
            }

            else
            {

              v259 = 0;
              v258 = 0xE000000000000000;
            }

            MEMORY[0x1C6940010](v259, v258);

            MEMORY[0x1C6940010](44, 0xE100000000000000);
            v328 = v356;
            if (v186 >= 3)
            {
              v331 = v353;
              sub_1C4A9568C(v352, v353, v186);
              v329 = v331;
              v330 = v186;
            }

            else
            {

              v329 = 0;
              v330 = 0xE000000000000000;
            }

            v60 = v377;
            MEMORY[0x1C6940010](v329, v330);

            v193 = *(&v400 + 1);
            v332 = v400;
            v333 = sub_1C4F012A8();
            sub_1C4A95670(v358, v328, v357, v349);
            if (v333 < 2)
            {

              v193 = 0;
              v191 = 0;
              v361 = 5;
LABEL_161:
              v210 = v361;
              sub_1C4A8F4B4(v361);
              sub_1C47023EC(v210, v191, v193);
              v211 = v418;
              swift_isUniquelyReferenced_nonNull_native();
              *&v400 = v211;
              v192 = &xmmword_1EDDFD000;
              sub_1C44E737C();
              v418 = v400;
LABEL_162:
              v212 = (v378 + *(type metadata accessor for PeopleMatcher(0) + 20));
              if (*(v192 + 21) != -1)
              {
                swift_once();
              }

              v213 = type metadata accessor for Source(0);
              v214 = sub_1C442B738(v213, qword_1EDDFD0B0);
              v215 = *v214;
              v216 = v214[1];
              v217 = *v212 == *v214 && v212[1] == v216;
              if (v217 || (sub_1C4F02938()) && *(v60 + 16))
              {
                v387 = v215;
                v394 = v186;
                sub_1C45A323C();
                v219 = *(v60 + 32);
                v218 = *(v60 + 48);
                v403 = *(v60 + 80);
                v400 = v219;
                v220 = *(v60 + 64);
                v401 = v218;
                v402 = v220;
                sub_1C461B90C(&v400, &v396);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v221 = v418;
                swift_isUniquelyReferenced_nonNull_native();
                *&v396 = v221;
                sub_1C44E737C();
                v222 = v396;
                swift_isUniquelyReferenced_nonNull_native();
                *&v396 = v222;
                sub_1C44E737C();
                v418 = v396;
                v226 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

                if (v226)
                {
                  v215 = v387;
                }

                else
                {
                  v227 = v373;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v228 = *(v227 + 16);

                  v215 = v387;
                  if (!v228)
                  {
                    type metadata accessor for PhaseStores(0);
                    v229 = VisionKeyValueStore.fetchNameEntities(for:)();
                    v230 = sub_1C482FE08(v229);
                    v231 = v369;
                    v232 = sub_1C4A8F1A4(v230);
                    v369 = v231;

                    v233 = *(v232 + 16);
                    if (v233)
                    {
                      v234 = v233 - 1;
                      for (i = 32; ; i += 56)
                      {
                        v237 = *(v232 + i + 16);
                        v236 = *(v232 + i + 32);
                        v238 = *(v232 + i);
                        v399 = *(v232 + i + 48);
                        v397 = v237;
                        v398 = v236;
                        v396 = v238;
                        v239 = HIBYTE(*(&v237 + 1)) & 0xFLL;
                        if ((*(&v237 + 1) & 0x2000000000000000) == 0)
                        {
                          v239 = v237 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v239)
                        {
                          break;
                        }

                        if (!v234)
                        {
                          goto LABEL_209;
                        }

                        --v234;
                      }

                      sub_1C461B90C(&v396, v395);

                      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                      v260 = v418;
                      swift_isUniquelyReferenced_nonNull_native();
                      v395[0] = v260;
                      sub_1C44E737C();
                      sub_1C4851A34(&v396);
                      v418 = v395[0];
                    }

                    else
                    {
LABEL_209:
                    }
                  }
                }

                type metadata accessor for PhaseStores(0);
                v261 = VisionKeyValueStore.fetchRelationshipEntities(for:)();
                sub_1C4851A34(&v400);
                v262 = sub_1C482FE08(v261);
                v263 = v369;
                v264 = sub_1C4A8F1A4(v262);
                v369 = v263;

                v265 = *(v264 + 16);
                if (!v265)
                {

                  v60 = v377;
                  goto LABEL_220;
                }

                v266 = v265 - 1;
                v267 = 32;
                v60 = v377;
                while (1)
                {
                  v268 = *(v264 + v267);
                  v269 = *(v264 + v267 + 48);
                  v270 = *(v264 + v267 + 32);
                  v397 = *(v264 + v267 + 16);
                  v398 = v270;
                  v399 = v269;
                  v396 = v268;
                  v271 = HIBYTE(*(&v270 + 1)) & 0xFLL;
                  if ((*(&v270 + 1) & 0x2000000000000000) == 0)
                  {
                    v271 = v270 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v271)
                  {
                    sub_1C461B90C(&v396, v395);

                    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                    v272 = v418;
                    swift_isUniquelyReferenced_nonNull_native();
                    v395[0] = v272;
                    sub_1C44E737C();
                    v273 = v395[0];
                    v418 = v395[0];
                    sub_1C4F01A78();
                    sub_1C4851A34(&v396);
                    swift_isUniquelyReferenced_nonNull_native();
                    v395[0] = v273;
                    v215 = v387;
                    sub_1C44E737C();
                    v418 = v395[0];
                    goto LABEL_220;
                  }

                  if (!v266)
                  {
                    break;
                  }

                  --v266;
                  v267 += 56;
                }

LABEL_220:
                v186 = v394;
              }

              if (v186 == 2 || (v274 = v372, sub_1C4A95670(v372, v352, v353, v186), (v274 & 1) == 0))
              {

                swift_bridgeObjectRelease_n();
                (*(v392 + 8))(v379, v393);
              }

              else
              {
                v275 = sub_1C4A92FE0(v362, v60);

                if (*(v275 + 16))
                {
                  sub_1C45A323C();
                  v276 = *(v275 + 48);
                  v400 = *(v275 + 32);
                  v277 = *(v275 + 64);
                  v401 = v276;
                  v402 = v277;
                  v403 = *(v275 + 80);
                  sub_1C461B90C(&v400, &v396);

                  v278 = v400;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  v279 = v418;
                  swift_isUniquelyReferenced_nonNull_native();
                  *&v396 = v279;
                  v394 = v278;
                  sub_1C44E737C();
                  v280 = v396;
                  swift_isUniquelyReferenced_nonNull_native();
                  *&v396 = v280;
                  sub_1C44E737C();
                  v418 = v396;
                  v307 = &v375[*(v371 + 9)];
                  v308 = *v307 == v215 && *(v307 + 1) == v216;
                  if (!v308 && (sub_1C4F02938() & 1) == 0)
                  {
                    (*(v392 + 8))(v379, v393);

                    sub_1C4851A34(&v400);
                    v57 = v433;
                    goto LABEL_227;
                  }

                  v309 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

                  v310 = v393;
                  if (v309)
                  {
                  }

                  else
                  {

                    v311 = *(v373 + 2);

                    if (v311)
                    {
LABEL_280:
                      v57 = v433;
                      type metadata accessor for PhaseStores(0);
                      v335 = VisionKeyValueStore.fetchRelationshipEntities(for:)();
                      sub_1C4851A34(&v400);
                      v336 = sub_1C482FE08(v335);
                      v337 = v369;
                      v338 = sub_1C4A8F1A4(v336);
                      v369 = v337;

                      v339 = *(v338 + 16);
                      if (v339)
                      {
                        v340 = v339 - 1;
                        for (j = 32; ; j += 56)
                        {
                          v342 = *(v338 + j);
                          v343 = *(v338 + j + 48);
                          v344 = *(v338 + j + 32);
                          v397 = *(v338 + j + 16);
                          v398 = v344;
                          v399 = v343;
                          v396 = v342;
                          v345 = HIBYTE(*(&v344 + 1)) & 0xFLL;
                          if ((*(&v344 + 1) & 0x2000000000000000) == 0)
                          {
                            v345 = v344 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v345)
                          {
                            break;
                          }

                          if (!v340)
                          {
                            goto LABEL_287;
                          }

                          --v340;
                        }

                        sub_1C461B90C(&v396, v395);

                        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                        v346 = v418;
                        swift_isUniquelyReferenced_nonNull_native();
                        v395[0] = v346;
                        sub_1C44E737C();
                        v347 = v395[0];
                        v418 = v395[0];
                        sub_1C4F01A78();
                        sub_1C4851A34(&v396);
                        swift_isUniquelyReferenced_nonNull_native();
                        v395[0] = v347;
                        sub_1C44E737C();
                        v418 = v395[0];
                        (*(v392 + 8))(v379, v310);
                      }

                      else
                      {
LABEL_287:
                        (*(v392 + 8))(v379, v310);
                      }

LABEL_227:
                      v126 = 1.0;
                      goto LABEL_228;
                    }

                    type metadata accessor for PhaseStores(0);
                    v312 = VisionKeyValueStore.fetchNameEntities(for:)();
                    v313 = sub_1C482FE08(v312);
                    v314 = v369;
                    v315 = sub_1C4A8F1A4(v313);
                    v369 = v314;

                    v316 = *(v315 + 16);
                    if (v316)
                    {
                      v317 = v316 - 1;
                      for (k = 32; ; k += 56)
                      {
                        v320 = *(v315 + k + 16);
                        v319 = *(v315 + k + 32);
                        v321 = *(v315 + k);
                        v399 = *(v315 + k + 48);
                        v397 = v320;
                        v398 = v319;
                        v396 = v321;
                        v322 = HIBYTE(*(&v320 + 1)) & 0xFLL;
                        if ((*(&v320 + 1) & 0x2000000000000000) == 0)
                        {
                          v322 = v320 & 0xFFFFFFFFFFFFLL;
                        }

                        if (v322)
                        {
                          sub_1C461B90C(&v396, v395);

                          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                          v334 = v418;
                          swift_isUniquelyReferenced_nonNull_native();
                          v395[0] = v334;
                          sub_1C44E737C();
                          sub_1C4851A34(&v396);
                          v418 = v395[0];
                          goto LABEL_279;
                        }

                        if (!v317)
                        {
                          break;
                        }

                        --v317;
                      }

LABEL_279:
                      v310 = v393;
                      goto LABEL_280;
                    }
                  }

                  goto LABEL_280;
                }

                (*(v392 + 8))(v379, v393);
              }

              v57 = v433;
              goto LABEL_227;
            }

            v361 = 5;
            v191 = v332;
            goto LABEL_148;
          }

          sub_1C4A95670(v358, v356, v357, v349);
          sub_1C4A95670(v372, v352, v353, v394);

          swift_bridgeObjectRelease_n();

          sub_1C47023EC(0, 0, 1);
          v156 = v375;
          v60 = v377;
LABEL_172:
          v223 = v379;
          v224 = sub_1C4EFEFF8();
          (*(v392 + 8))(v223, v56);
          if ((v224 & 1) == 0)
          {
            sub_1C4420C3C(v374, &unk_1EC0BA0E0, &qword_1C4F105A0);
            sub_1C44DEEB4(&v419);

            swift_bridgeObjectRelease_n();

            sub_1C447EA28(v156, type metadata accessor for EntityTriple);
            v225 = type metadata accessor for EntityMatch(0);
            return sub_1C440BAA8(v386, 1, 1, v225);
          }

          goto LABEL_17;
        }
      }

      else
      {
      }

      v201 = v352;
      v202 = v186;
      v203 = v358;
      v204 = v356;
      v394 = v186;
      v205 = v357;
      sub_1C4A92E24(v372, v352, v353, v202, v358, v356, v357, v177);
      LODWORD(v387) = v206;
      v360 = v208;
      v361 = v207;
      v359 = v209;
      sub_1C4A95670(v203, v204, v205, v177);
      if (v387)
      {
        v192 = &xmmword_1EDDFD000;
        v191 = v360;
        v186 = v394;
        goto LABEL_159;
      }

      sub_1C4A95670(v372, v201, v353, v394);

      swift_bridgeObjectRelease_n();

      sub_1C47023EC(v361, v360, v359);
      v56 = v393;
      goto LABEL_172;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v54, &qword_1EC0BA590, &qword_1C4F1F430);
    v48 = v53;
    v51 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v56 = v393;
    v57 = v433;
  }

  sub_1C440BAA8(v374, 1, 1, v56);
  v418 = v51;
  if (v52)
  {
    goto LABEL_14;
  }

LABEL_16:
  v60 = v377;
LABEL_17:
  v61 = v380;
  sub_1C4EFF008();
  sub_1C4420C3C(v374, &unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C440BAA8(v61, 0, 1, v56);
  sub_1C44CDA7C();
  v62 = (v378 + *(type metadata accessor for PeopleMatcher(0) + 20));
  if (qword_1EDDFD0A8 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Source(0);
  v64 = sub_1C442B738(v63, qword_1EDDFD0B0);
  v65 = *v62 == *v64 && v62[1] == v64[1];
  if (!v65 && (sub_1C4F02938() & 1) == 0)
  {
LABEL_73:

    goto LABEL_74;
  }

  v66 = *(v60 + 16);
  if (!v66)
  {
LABEL_61:
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v114 = sub_1C4F00978();
    sub_1C442B738(v114, qword_1EDE2DE10);
    v115 = swift_allocObject();
    *(v115 + 16) = v60;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v116 = sub_1C4F00968();
    v117 = sub_1C4F01CE8();
    v118 = swift_allocObject();
    *(v118 + 16) = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = 8;
    v120 = swift_allocObject();
    *(v120 + 16) = sub_1C4A9493C;
    *(v120 + 24) = v115;
    v121 = swift_allocObject();
    *(v121 + 16) = sub_1C4A94948;
    *(v121 + 24) = v120;
    sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
    v122 = swift_allocObject();
    sub_1C466323C(v122, 3);
    *v123 = sub_1C44549EC;
    v123[1] = v118;
    v123[2] = sub_1C44549F4;
    v123[3] = v119;
    v123[4] = sub_1C4716C58;
    v123[5] = v121;

    if (!os_log_type_enabled(v116, v117))
    {

      goto LABEL_74;
    }

    v124 = swift_slowAlloc();
    *v124 = 134217984;
    v125 = *(v377 + 16);

    *(v124 + 4) = v125;

    _os_log_impl(&dword_1C43F8000, v116, v117, "Vision KVS should have vid-vid association as an entry. Source vision signals count: %ld", v124, 0xCu);
    MEMORY[0x1C6942830](v124, -1, -1);

    v126 = 0.8;
    goto LABEL_228;
  }

  v67 = 0;
  v68 = 0;
  v69 = v418;
  v394 = 0x80000001C4FAEDA0;
  v376 = (v66 - 1);
  v70 = 32;
  v371 = "association:identifierNoMatch";
  v372 = 0xD00000000000001BLL;
  v373 = 0;
  v364 = "association:userTaggedPhotos";
  v363 = "num_rejected_suggestions";
  v362 = "association:messages";
  v360 = "association:contactsInferred";
  v359 = "association:contactsConfirmed";
  v361 = "suggestedRelationshipConfidence";
  while (1)
  {
    if (v68 >= v66)
    {
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      v372 = 0xD00000000000001DLL;
      v200 = v360;
LABEL_205:
      v371 = v200;
LABEL_206:
      swift_isUniquelyReferenced_nonNull_native();
      v406[0] = v69;
      sub_1C44E737C();
      v418 = v406[0];
      goto LABEL_54;
    }

    v71 = *(v60 + v70);
    v72 = *(v60 + v70 + 16);
    v73 = *(v60 + v70 + 32);
    v416 = *(v60 + v70 + 48);
    v414 = v72;
    v415 = v73;
    v413 = v71;
    v74 = v416;
    if (v416 <= 6u && ((1 << v416) & 0x45) != 0)
    {
      v380 = v70;
      v387 = v68;
      v76 = *(&v413 + 1);
      v77 = v413;
      sub_1C461B90C(&v413, &v408);

      v379 = v76;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4851A34(&v413);
      v79 = v371;
      v78 = v372;
      v373 = v77;
      switch(v74)
      {
        case 1:
          break;
        case 2:
          v78 = 0xD000000000000014;
          v79 = v363;
          break;
        case 3:
          v78 = 0xD00000000000001CLL;
          v79 = v362;
          break;
        case 4:
          v78 = 0xD00000000000001DLL;
          v79 = v360;
          break;
        case 5:
          v78 = 0xD00000000000001DLL;
          v79 = v359;
          break;
        case 6:
          v78 = 0xD00000000000001CLL;
          v79 = v361;
          break;
        default:
          v78 = 0xD00000000000001DLL;
          v79 = v364;
          break;
      }

      swift_isUniquelyReferenced_nonNull_native();
      *&v408 = v69;
      v80 = sub_1C445FAA8(0xD000000000000011, v394);
      v82 = v69[2];
      v83 = (v81 & 1) == 0;
      v57 = v82 + v83;
      if (__OFADD__(v82, v83))
      {
        goto LABEL_199;
      }

      v84 = v80;
      v85 = v81;
      sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
      if (sub_1C4F02458())
      {
        v86 = v408;
        v87 = sub_1C445FAA8(0xD000000000000011, v394);
        v57 = v433;
        if ((v85 & 1) != (v88 & 1))
        {
          sub_1C4F029F8();
          __break(1u);
          goto LABEL_290;
        }

        v84 = v87;
      }

      else
      {
        v57 = v433;
      }

      v89 = v79 | 0x8000000000000000;
      v69 = v408;
      if (v85)
      {
        v90 = (*(v408 + 56) + 16 * v84);
        *v90 = v78;
        v90[1] = v89;
      }

      else
      {
        *(v408 + 8 * (v84 >> 6) + 64) |= 1 << v84;
        v91 = (v69[6] + 16 * v84);
        v92 = v394;
        *v91 = 0xD000000000000011;
        v91[1] = v92;
        v93 = (v69[7] + 16 * v84);
        *v93 = v78;
        v93[1] = v89;
        v94 = v69[2];
        v95 = __OFADD__(v94, 1);
        v96 = v94 + 1;
        if (v95)
        {
          __break(1u);
          goto LABEL_268;
        }

        v69[2] = v96;
      }

      v60 = v377;
      v68 = v387;
      v67 = v379;
      v70 = v380;
    }

    if (v376 == v68)
    {
      break;
    }

    v66 = *(v60 + 16);
    v70 += 56;
    ++v68;
  }

  v418 = v69;
  if (!v67)
  {
    goto LABEL_61;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4C808A0(v373, v67, 0xD000000000000010, 0x80000001C4FAED80);
  v102 = *(_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0() + 16);

  if (!v102)
  {
    type metadata accessor for PhaseStores(0);
    v134 = VisionKeyValueStore.fetchNameEntities(for:)();
    v135 = sub_1C482FE08(v134);
    v136 = v369;
    v137 = sub_1C4A8F1A4(v135);
    v369 = v136;

    v138 = *(v137 + 16);
    if (!v138)
    {
LABEL_118:

      goto LABEL_54;
    }

    v139 = v138 - 1;
    for (m = 32; ; m += 56)
    {
      v142 = *(v137 + m + 16);
      v141 = *(v137 + m + 32);
      v143 = *(v137 + m);
      v411 = *(v137 + m + 48);
      v409 = v142;
      v410 = v141;
      v408 = v143;
      v144 = HIBYTE(*(&v142 + 1)) & 0xFLL;
      if ((*(&v142 + 1) & 0x2000000000000000) == 0)
      {
        v144 = v142 & 0xFFFFFFFFFFFFLL;
      }

      if (v144)
      {
        break;
      }

      if (!v139)
      {
        goto LABEL_118;
      }

      --v139;
    }

    v198 = v411;
    sub_1C461B90C(&v408, v406);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v199 = v418;
    swift_isUniquelyReferenced_nonNull_native();
    v406[0] = v199;
    sub_1C44E737C();
    v69 = v406[0];
    sub_1C4851A34(&v408);
    switch(v198)
    {
      case 1:
        goto LABEL_206;
      case 2:
        v372 = 0xD000000000000014;
        v200 = v363;
        goto LABEL_205;
      case 3:
        v372 = 0xD00000000000001CLL;
        v200 = v362;
        goto LABEL_205;
      case 4:
        goto LABEL_200;
      case 5:
        v372 = 0xD00000000000001DLL;
        v200 = v359;
        goto LABEL_205;
      case 6:
        v372 = 0xD00000000000001CLL;
        v200 = v361;
        goto LABEL_205;
      default:
        v372 = 0xD00000000000001DLL;
        v200 = v364;
        goto LABEL_205;
    }

    goto LABEL_206;
  }

LABEL_54:
  type metadata accessor for PhaseStores(0);
  v103 = VisionKeyValueStore.fetchRelationshipEntities(for:)();

  v104 = sub_1C482FE08(v103);
  v105 = v369;
  v106 = sub_1C4A8F1A4(v104);

  v107 = *(v106 + 16);
  v369 = v105;
  if (!v107)
  {
    goto LABEL_73;
  }

  v108 = v107 - 1;
  for (n = 32; ; n += 56)
  {
    v110 = *(v106 + n);
    v111 = *(v106 + n + 48);
    v112 = *(v106 + n + 32);
    v409 = *(v106 + n + 16);
    v410 = v112;
    v411 = v111;
    v408 = v110;
    v113 = HIBYTE(*(&v112 + 1)) & 0xFLL;
    if ((*(&v112 + 1) & 0x2000000000000000) == 0)
    {
      v113 = v112 & 0xFFFFFFFFFFFFLL;
    }

    if (v113)
    {
      break;
    }

    if (!v108)
    {
      goto LABEL_73;
    }

    --v108;
  }

  sub_1C461B90C(&v408, v406);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v145 = v418;
  swift_isUniquelyReferenced_nonNull_native();
  v406[0] = v145;
  sub_1C44E737C();
  v146 = v406[0];
  v418 = v406[0];
  sub_1C4F01A78();
  sub_1C4851A34(&v408);
  swift_isUniquelyReferenced_nonNull_native();
  v406[0] = v146;
  sub_1C44E737C();
  v418 = v406[0];
LABEL_74:
  v126 = 0.8;
LABEL_228:
  v281 = v418;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v282 = sub_1C44E24F8(0xD000000000000010, 0x80000001C4FAED80, v281);

  if (v282 & 1) != 0 && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v283 = sub_1C44E24F8(0xD000000000000011, 0x80000001C4FAEDA0, v281), , (v283 & 1) == 0) || (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v284 = sub_1C44E24F8(0xD000000000000010, 0x80000001C4FAED80, v281), , (v284 & 1) == 0) && (_s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), v285 = sub_1C44E24F8(0xD000000000000011, 0x80000001C4FAEDA0, v281), , (v285))
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v286 = sub_1C4F00978();
    sub_1C442B738(v286, qword_1EDE2DE10);
    v287 = sub_1C4F00968();
    v288 = sub_1C4F01CD8();
    if (os_log_type_enabled(v287, v288))
    {
      v289 = swift_slowAlloc();
      *v289 = 0;
      _os_log_impl(&dword_1C43F8000, v287, v288, "Metadata invalid. Visual identifier and association reason were not simultaneously set on metadata.", v289, 2u);
      MEMORY[0x1C6942830](v289, -1, -1);
    }
  }

  v394 = v281;
  v86 = v381;
  sub_1C44DDE2C();
  v290 = v393;
  if (sub_1C44157D4(v86, 1, v393) == 1)
  {
LABEL_290:
    sub_1C4420C3C(v86, &unk_1EC0BA0E0, &qword_1C4F105A0);
    result = sub_1C4F024A8();
    __break(1u);
  }

  else
  {

    sub_1C44DEEB4(&v419);
    v291 = v392;
    v292 = v382;
    v387 = *(v392 + 32);
    (v387)(v382, v86, v290);
    v381 = type metadata accessor for PeopleMatcher(0);
    v293 = *(v57 + 16);
    v294 = v378;
    v293(v390, v378 + *(v381 + 6), v391);
    v295 = *(v291 + 16);
    v296 = v375;
    v295(v388, v375, v290);
    v295(v389, v292, v290);
    v297 = v383;
    sub_1C4EF9C88();
    sub_1C4EF9AD8();
    v299 = v298;
    (*(v384 + 8))(v297, v385);
    (*(v291 + 8))(v292, v290);
    sub_1C4420C3C(v374, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C447EA28(v296, type metadata accessor for EntityTriple);
    v300 = *(v294 + *(v381 + 8));
    v301 = v394;
    if (*(v394 + 16))
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v302 = v301;
    }

    else
    {
      v302 = 0;
    }

    v303 = v386;
    (*(v433 + 32))(v386, v390, v391);
    v304 = type metadata accessor for EntityMatch(0);
    v305 = v387;
    v306 = v393;
    (v387)(v303 + v304[5], v388, v393);
    v305(v303 + v304[6], v389, v306);
    *(v303 + v304[7]) = v126;
    *(v303 + v304[8]) = v299;
    *(v303 + v304[9]) = v300;
    *(v303 + v304[10]) = v302;
    sub_1C440BAA8(v303, 0, 1, v304);
  }

  return result;
}

uint64_t sub_1C4A92C90(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16) || !*(a2 + 16))
  {
    return _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
  }

  v2 = sub_1C4A92FE0(a2, a1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v3, 0);
    v4 = (v2 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v8 >= v7 >> 1)
      {
        sub_1C44CD9C0(v7 > 1, v8 + 1, 1);
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 7;
      --v3;
    }

    while (v3);

    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C43FDC98();
    sub_1C4401CBC(v10, v11, &unk_1C4F0E870, v12);
    sub_1C4F01048();

    return 1;
  }

  else
  {

    return _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
  }
}

void sub_1C4A92E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  if (a4 == 2)
  {
    if (a8 != 2 && (a5 & 1) != 0)
    {
      v10 = a6;
      v11 = a7;
      v12 = a8;
LABEL_8:
      sub_1C4A9568C(v10, v11, v12);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (a8 != 2)
  {
    if ((a1 & 1) == 0 || (a5 & 1) == 0)
    {
      goto LABEL_15;
    }

    v17 = 0xE000000000000000;
    if (a8 != 1)
    {
      if (a8)
      {
        sub_1C4A9568C(a6, a7, a8);
        v17 = a8;
        goto LABEL_17;
      }

      sub_1C4A95670(a5, a6, a7, 0);
    }

    v9 = 0;
LABEL_17:
    MEMORY[0x1C6940010](v9, v17);

    v18 = sub_1C447F25C();
    MEMORY[0x1C6940010](v18);
    if (a4 != 1)
    {
      if (a4)
      {
        sub_1C4A9568C(a2, a3, a4);
      }

      else
      {
        sub_1C4A95670(a1, a2, a3, 0);
      }
    }

    v19 = sub_1C4404084();
    MEMORY[0x1C6940010](v19);

    sub_1C43FBC98();
    if (sub_1C4F012A8() < 2)
    {
    }

    goto LABEL_15;
  }

  if (a1)
  {
    v10 = a2;
    v11 = a3;
    v12 = a4;
    goto LABEL_8;
  }

LABEL_15:
  sub_1C441D304();
}

uint64_t sub_1C4A92FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  v4 = MEMORY[0x1E69E7CC8];
  if (v2)
  {
    while (1)
    {
      v5 = v3[1];
      v71 = *v3;
      v72 = v5;
      v73 = v3[2];
      v74 = *(v3 + 6);
      v6 = v71;
      sub_1C461B90C(&v71, &v67);
      sub_1C461B90C(&v71, &v67);
      swift_isUniquelyReferenced_nonNull_native();
      v66[0] = v4;
      sub_1C445FAA8(v6, *(&v6 + 1));
      sub_1C441EAB4();
      if (v9)
      {
        break;
      }

      v10 = v7;
      v11 = v8;
      sub_1C456902C(&qword_1EC0C2610, &unk_1C4F4B430);
      if (sub_1C4F02458())
      {
        v12 = sub_1C445FAA8(v6, *(&v6 + 1));
        if ((v11 & 1) != (v13 & 1))
        {
          goto LABEL_37;
        }

        v10 = v12;
      }

      if (v11)
      {
        v4 = v66[0];
        v14 = *(v66[0] + 56) + 56 * v10;
        v16 = *(v14 + 16);
        v15 = *(v14 + 32);
        v17 = *v14;
        v70 = *(v14 + 48);
        v68 = v16;
        v69 = v15;
        v67 = v17;
        v18 = v71;
        v19 = v72;
        v20 = v73;
        *(v14 + 48) = v74;
        *(v14 + 16) = v19;
        *(v14 + 32) = v20;
        *v14 = v18;
        sub_1C4851A34(&v67);
        sub_1C4851A34(&v71);
      }

      else
      {
        v4 = v66[0];
        *(v66[0] + 8 * (v10 >> 6) + 64) |= 1 << v10;
        *(v4[6] + 16 * v10) = v6;
        v21 = v4[7] + 56 * v10;
        v22 = v74;
        v24 = v72;
        v23 = v73;
        *v21 = v71;
        *(v21 + 16) = v24;
        *(v21 + 32) = v23;
        *(v21 + 48) = v22;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4851A34(&v71);
        v25 = v4[2];
        v9 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v9)
        {
          goto LABEL_36;
        }

        v4[2] = v26;
      }

      v3 = (v3 + 56);
      if (!--v2)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    sub_1C4F029F8();
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_11:
    v27 = *(a1 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v28 = 0;
    v29 = a1 + 32;
    v30 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v31 = (v29 + 56 * v28);
    while (v27 != v28)
    {
      if (v28 >= v27)
      {
        goto LABEL_34;
      }

      v32 = v31[1];
      v71 = *v31;
      v72 = v32;
      v73 = v31[2];
      v74 = *(v31 + 6);
      v33 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_35;
      }

      if (v4[2])
      {
        v34 = *(&v71 + 1);
        v3 = v71;
        sub_1C461B90C(&v71, &v67);
        v35 = sub_1C4404084();
        v37 = sub_1C445FAA8(v35, v36);
        if (v38)
        {
          v39 = v4[7] + 56 * v37;
          v41 = *(v39 + 16);
          v40 = *(v39 + 32);
          v42 = *v39;
          v70 = *(v39 + 48);
          v68 = v41;
          v69 = v40;
          v67 = v42;
          v43 = v74;
          v44 = v70;
          v45 = HIDWORD(v70);
          if (v74 < v70 || ((v46 = HIDWORD(v74), v70 == v74) ? (v47 = *(&v74 + 1) < *(&v70 + 1)) : (v47 = 0), v47))
          {
            v63 = *(&v69 + 1);
            v65 = v69;
            v61 = *(&v68 + 1);
            v62 = v68;
            v34 = *(&v67 + 1);
            v3 = v67;
            sub_1C461B90C(&v67, v66);
          }

          else
          {
            v63 = *(&v73 + 1);
            v65 = v73;
            v61 = *(&v72 + 1);
            v62 = v72;
            sub_1C461B90C(&v71, v66);
            v44 = v43;
            v45 = v46;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_1C43FCEC0();
            sub_1C458EC60(v52, v53, v54, v30);
            v30 = v55;
          }

          v49 = *(v30 + 16);
          v48 = *(v30 + 24);
          if (v49 >= v48 >> 1)
          {
            v56 = sub_1C4413F5C(v48);
            sub_1C458EC60(v56, v57, v58, v30);
            v30 = v59;
          }

          *(v30 + 16) = v49 + 1;
          v50 = v30 + 56 * v49;
          *(v50 + 32) = v3;
          *(v50 + 40) = v34;
          *(v50 + 48) = v62;
          *(v50 + 56) = v61;
          *(v50 + 64) = v65;
          *(v50 + 72) = v63;
          *(v50 + 80) = v44;
          v51 = BYTE2(v66[0]);
          *(v50 + 81) = v66[0];
          *(v50 + 83) = v51;
          *(v50 + 84) = v45;
          sub_1C4851A34(&v71);
          v28 = v33;
          goto LABEL_12;
        }

        sub_1C4851A34(&v71);
      }

      ++v28;
      v31 = (v31 + 56);
    }

    swift_bridgeObjectRelease_n();
    *&v71 = v30;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4A8F138(&v71);

    return v71;
  }

  return result;
}

uint64_t sub_1C4A933E4(uint64_t a1)
{
  v1 = a1 + 56;
  sub_1C43FEC90();
  v4 = v3 & v2;
  v6 = (v5 + 63) >> 6;
  v8 = v7 + 56;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = 0;
  v28 = v6;
  v29 = v1;
  v31 = v8;
  if (v4)
  {
LABEL_2:
    v11 = v10;
LABEL_6:
    v30 = (v4 - 1) & v4;
    sub_1C4416844();
    v32 = *v12;
    v33 = v12[1];
    sub_1C4459BCC();
    v15 = v14 & v13;
    v17 = (v16 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = 0;
    if (!v15)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v19 = v18;
LABEL_11:
      sub_1C4416844();
      v21 = *v20;
      v22 = v20[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v23 = sub_1C4A938F4(v32, v33, v21, v22);
      v25 = v24;

      if (v23)
      {
        break;
      }

      v15 &= v15 - 1;
      v26 = sub_1C43FFE24();
      result = sub_1C47023EC(v26, v27, v25);
      v18 = v19;
      v8 = v31;
      if (!v15)
      {
        while (1)
        {
LABEL_8:
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_19;
          }

          if (v19 >= v17)
          {
            break;
          }

          v15 = *(v8 + 8 * v19);
          ++v18;
          if (v15)
          {
            goto LABEL_11;
          }
        }

        v10 = v11;
        v6 = v28;
        v1 = v29;
        v4 = v30;
        if (!v30)
        {
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    return 1;
  }

  else
  {
LABEL_3:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v6)
      {

        return 0;
      }

      v4 = *(v1 + 8 * v11);
      ++v10;
      if (v4)
      {
        goto LABEL_6;
      }
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4A935F4(uint64_t a1, uint64_t a2)
{
  v40 = [objc_allocWithZone(MEMORY[0x1E696ADF8]) init];
  v4 = a1 + 56;
  sub_1C43FEC90();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v10 = a2 + 56;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  v37 = v9;
  for (i = a1 + 56; v7; v4 = i)
  {
    v13 = v12;
LABEL_6:
    v7 &= v7 - 1;
    sub_1C4416844();
    sub_1C4459BCC();
    v18 = v17 & v16;
    v20 = (v19 + 63) >> 6;
    v21 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v21 = v15 & 0xFFFFFFFFFFFFLL;
    }

    v41 = v15;
    v42 = v21;
    v43 = v14;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = 0;
    if (v18)
    {
      while (1)
      {
LABEL_13:
        sub_1C4416844();
        v26 = *v24;
        v25 = v24[1];
        if (v42)
        {
          goto LABEL_17;
        }

        v27 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v27 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
LABEL_17:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v28 = sub_1C4A93D4C(v40, v41, v43);
          v39 = v26;
          v29 = sub_1C4A93D4C(v40, v26, v25);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4417658();
          v32 = *(sub_1C4A954A4(v29, v28, v30, v31) + 2);

          v33 = v32;
          v34 = *(sub_1C44999E0(v29, v28) + 16);

          if ((v33 / v34) > 0.5)
          {
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            MEMORY[0x1C6940010](8236, 0xE200000000000000);
            MEMORY[0x1C6940010](v39, v25);

            return 1;
          }
        }

        v18 &= v18 - 1;
        v35 = _s24IntelligencePlatformCore22FeedbackEventProcessorPAAE18eventVariantFilterSSSgvg_0();
        result = sub_1C47023EC(v35, v36, 1);
        if (!v18)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v10 + 8 * v23);
      ++v22;
      if (v18)
      {
        v22 = v23;
        goto LABEL_13;
      }
    }

    v12 = v13;
    v9 = v37;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return 0;
    }

    v7 = *(v4 + 8 * v13);
    ++v12;
    if (v7)
    {
      goto LABEL_6;
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C4A938F4(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v11)
    {
      return 0;
    }
  }

  if (a1 != a3 || a2 != a4)
  {
    sub_1C4418B70();
    if ((sub_1C4F02938() & 1) == 0)
    {
      v65 = 32;
      v66 = 0xE100000000000000;
      sub_1C4415EA8();
      v14 = sub_1C4440D8C(&v65);
      v62 = a4;
      v65 = 32;
      v66 = 0xE100000000000000;
      v15 = sub_1C4440D8C(&v65);
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C43FDC98();
      sub_1C4401CBC(v16, v17, &unk_1C4F0E870, v18);
      sub_1C44184F4();
      v19 = sub_1C4F01048();
      v21 = v20;
      v61 = v15;
      v23 = sub_1C4F01048();
      v24 = v22;
      v25 = v19 == v23 && v21 == v22;
      if (v25 || (sub_1C4F02938() & 1) != 0)
      {

        v61 = v19;
        v62 = v21;
        v26 = sub_1C447F25C();
        MEMORY[0x1C6940010](v26);
        MEMORY[0x1C6940010](v23, v24);
LABEL_19:

        return 1;
      }

      v28 = v14[2];
      if (v28 > 1)
      {
        goto LABEL_26;
      }

      if (v15[2] <= 1uLL)
      {

LABEL_36:

        return 0;
      }

      if (v28)
      {
LABEL_26:
        v29 = v14[5];
        v60 = v14[4];
        v30 = sub_1C4499330(1);
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v59 = v29;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v61 = v30;
        v62 = v32;
        v63 = v34;
        v64 = v36;
        v37 = sub_1C440A9B8();
        sub_1C456902C(v37, v38);
        sub_1C4401CBC(&qword_1EDDFCDC8, &qword_1EC0C0F30, &qword_1C4F41A88, MEMORY[0x1E69E6958]);
        sub_1C44184F4();
        v57 = sub_1C4F01048();
        v58 = v39;
        result = swift_unknownObjectRelease();
        if (v15[2])
        {
          v41 = v15[4];
          v40 = v15[5];
          v42 = sub_1C4499330(1);
          v44 = v43;
          v46 = v45;
          v48 = v47;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          v61 = v42;
          v62 = v44;
          v63 = v46;
          v64 = v48;
          sub_1C44184F4();
          v49 = sub_1C4F01048();
          v51 = v50;
          swift_unknownObjectRelease();
          v52 = type metadata accessor for PeopleMatcher(0);
          v53 = *(*(v5 + *(v52 + 36)) + 16);
          MEMORY[0x1EEE9AC00](v52);
          os_unfair_lock_lock(v53 + 6);
          sub_1C4A956A0(&v53[4], &v61);
          os_unfair_lock_unlock(v53 + 6);
          if (v61 == 1)
          {
            if (v57 == v49 && v58 == v51)
            {

LABEL_39:
              v61 = v60;
              v62 = v59;
              v56 = sub_1C447F25C();
              MEMORY[0x1C6940010](v56);
              MEMORY[0x1C6940010](v41, v40);
              goto LABEL_19;
            }

            v55 = sub_1C4F02938();

            if (v55)
            {
              goto LABEL_39;
            }
          }

          else
          {
          }

          goto LABEL_36;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  v61 = a1;
  v62 = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C447F25C();
  MEMORY[0x1C6940010](v13);
  MEMORY[0x1C6940010](a3, a4);
  return 1;
}

uint64_t sub_1C4A93D4C(void *a1, void *a2, unint64_t a3)
{
  v82 = a1;
  v5 = sub_1C4EF9788();
  sub_1C43FCDF8();
  v81 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v80 = v9 - v8;
  v10 = sub_1C456902C(&qword_1EC0BB2A8, &qword_1C4F1E978);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v83 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v79 - v17;
  v18 = sub_1C4EF9488();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  v88 = MEMORY[0x1E69E7CD0];
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v25 = sub_1C4F00978();
  sub_1C442B738(v25, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v26 = sub_1C4F00968();
  v27 = sub_1C4F01CF8();

  v28 = os_log_type_enabled(v26, v27);
  v85 = v5;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v86 = v30;
    *v29 = 136380675;
    *(v29 + 4) = sub_1C441D828(a2, a3, &v86);
    _os_log_impl(&dword_1C43F8000, v26, v27, "Person Name components for %{private}s", v29, 0xCu);
    sub_1C440962C(v30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v86 = a2;
  v87 = a3;
  sub_1C4EF9448();
  sub_1C4415EA8();
  v31 = sub_1C4F01FF8();
  v33 = v32;
  v34 = *(v20 + 8);
  v34(v24, v18);
  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v86 = v31;
  v87 = v33;
  sub_1C4EF9468();
  sub_1C4F01FE8();
  v37 = v36;
  v34(v24, v18);

  if (v37)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v38 = sub_1C4F01108();
  v39 = [v82 personNameComponentsFromString_];

  if (v39)
  {
    sub_1C4EF9768();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v42 = v84;
  v41 = v85;
  v43 = v83;
  sub_1C440BAA8(v15, v40, 1, v85);
  sub_1C441D304();
  sub_1C44CDA7C();
  sub_1C43FD2BC();
  sub_1C441D304();
  sub_1C44DDE2C();
  if (sub_1C44157D4(v43, 1, v41) == 1)
  {
    sub_1C4420C3C(v42, &qword_1EC0BB2A8, &qword_1C4F1E978);
    sub_1C4420C3C(v43, &qword_1EC0BB2A8, &qword_1C4F1E978);
    return MEMORY[0x1E69E7CD0];
  }

  v46 = v80;
  v45 = v81;
  (*(v81 + 32))(v80, v43, v41);
  v47 = sub_1C4EF9708();
  if (v48)
  {
    sub_1C4411100(v47, v48, v49, v50, v51, v52, v53, v54, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, vars0, vars8);
  }

  v55 = sub_1C4EF9728();
  if (v56)
  {
    sub_1C4411100(v55, v56, v57, v58, v59, v60, v61, v62, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, vars0, vars8);
  }

  v63 = sub_1C4EF9718();
  if (v64)
  {
    sub_1C4411100(v63, v64, v65, v66, v67, v68, v69, v70, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, vars0, vars8);
  }

  v71 = sub_1C4EF9778();
  if (v72)
  {
    sub_1C4411100(v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, vars0, vars8);
  }

  (*(v45 + 8))(v46, v41);
  sub_1C4420C3C(v42, &qword_1EC0BB2A8, &qword_1C4F1E978);
  return v88;
}

uint64_t sub_1C4A9424C(uint64_t a1)
{
  if (*(v1 + 40))
  {
    sub_1C4F01298();
  }

  return sub_1C4F01298();
}

uint64_t sub_1C4A942B4()
{
  sub_1C4404078();
  if (*v2 == *v0 && v1[1] == v0[1])
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1C4F02938();
  }

  v5 = v1[5];
  if (!v5)
  {
    return v4 & 1;
  }

  v6 = v0[5];
  if ((v6 == 0) | v4 & 1)
  {
    v4 |= v6 != 0;
    return v4 & 1;
  }

  v7 = v1[4];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v0[4];
  v12 = v0[6];
  v11 = v0[7];
  if (v7 != v10 || v5 != v6)
  {
    v14 = sub_1C4F02938();
    v4 = 0;
    if ((v14 & 1) == 0)
    {
      return v4 & 1;
    }
  }

  if (v9 == v12 && v8 == v11)
  {
    v4 = 1;
    return v4 & 1;
  }

  sub_1C4418B70();

  return sub_1C4F02938();
}

uint64_t sub_1C4A943A0()
{
  sub_1C4F02AF8();
  if (*(v0 + 40))
  {
    sub_1C4F01298();
  }

  sub_1C4F01298();
  return sub_1C4F02B68();
}

uint64_t sub_1C4A94420()
{
  sub_1C4F02AF8();
  sub_1C4A9424C(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4A946B8(uint64_t a1)
{
  result = sub_1C4487240(&qword_1EDDF7F88, type metadata accessor for PeopleMatcher, &protocol conformance descriptor for PeopleMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A94710(uint64_t a1)
{
  result = sub_1C4487240(qword_1EDDF7F98, type metadata accessor for PeopleMatcher, &protocol conformance descriptor for PeopleMatcher);
  *(a1 + 8) = result;
  return result;
}

void sub_1C4A94790(uint64_t a1)
{
  type metadata accessor for PhaseStores(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Source(319);
    if (v2 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Nicknames();
        if (v4 <= 0x3F)
        {
          sub_1C4A94874(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C4A94874(uint64_t a1)
{
  if (!qword_1EDDFA178)
  {
    sub_1C4572308(&qword_1EC0C2608, &qword_1C4F4B418);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDFA178);
    }
  }
}

uint64_t sub_1C4A948D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityTriple(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1C4A94950(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C441D304();
    v6 = a5();

    return v6;
  }

  return result;
}

uint64_t sub_1C4A949E4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C4A94B8C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C4A94AD8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C4A94AD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 56 * a3 - 56;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 104);
        v10 = *(v8 + 48);
        if (v10 >= v9 && (v9 != v10 || *(v8 + 52) >= *(v8 + 108)))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v12 = *(v8 + 104);
        v13 = *(v8 + 88);
        v14 = *(v8 + 56);
        v15 = *(v8 + 16);
        *(v8 + 56) = *v8;
        v16 = *(v8 + 72);
        *(v8 + 72) = v15;
        *(v8 + 88) = *(v8 + 32);
        *(v8 + 104) = *(v8 + 48);
        *v8 = v14;
        *(v8 + 16) = v16;
        *(v8 + 32) = v13;
        *(v8 + 48) = v12;
        v8 -= 56;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 56;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C4A94B8C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v91 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 >= v5)
      {
        goto LABEL_35;
      }

      v9 = *a3 + 56 * v8;
      v10 = *(v9 + 48);
      v11 = *a3 + 56 * v6;
      v12 = *(v11 + 48);
      v13 = v12 < v10 || *(v11 + 52) < *(v9 + 52) && v10 == v12;
      v15 = v6 + 2;
      if (v5 <= v6 + 2)
      {
        v8 = v6 + 2;
      }

      else
      {
        v8 = v5;
      }

      v16 = 56 * v6;
      for (i = (*a3 + 56 * v6 + 164); ; i += 14)
      {
        if (v15 >= v5)
        {
          goto LABEL_26;
        }

        v18 = *(i - 4);
        if (v10 >= v18)
        {
          break;
        }

        if (!v13)
        {
          v8 = v15;
          goto LABEL_35;
        }

LABEL_24:
        ++v15;
        v10 = v18;
      }

      if (v18 != v10)
      {
        if (v13)
        {
          v8 = v15;
          goto LABEL_27;
        }

        goto LABEL_24;
      }

      if ((v13 ^ (*(i - 14) >= *i)))
      {
        goto LABEL_24;
      }

      v8 = v15;
LABEL_26:
      if (v13)
      {
LABEL_27:
        if (v8 >= v6)
        {
          if (v6 < v8)
          {
            v19 = 56 * v8 - 56;
            v20 = v8;
            v21 = v6;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_133;
                }

                v23 = (v22 + v16);
                v24 = *(v22 + v16 + 48);
                v25 = (v22 + v19);
                v27 = v23[1];
                v26 = v23[2];
                v28 = *v23;
                v30 = v25[1];
                v29 = v25[2];
                v31 = *v25;
                *(v23 + 6) = *(v25 + 6);
                v23[1] = v30;
                v23[2] = v29;
                *v23 = v31;
                *v25 = v28;
                v25[1] = v27;
                v25[2] = v26;
                *(v25 + 6) = v24;
              }

              ++v21;
              v19 -= 56;
              v16 += 56;
            }

            while (v21 < v20);
            v5 = a3[1];
          }

          goto LABEL_35;
        }

LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
        break;
      }

LABEL_35:
      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_127;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_128;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (v8 != v5)
          {
            v32 = *a3;
            v33 = *a3 + 56 * v8 - 56;
            v34 = v6 - v8;
            do
            {
              v35 = v34;
              v36 = v33;
              do
              {
                v37 = *(v36 + 104);
                v38 = *(v36 + 48);
                if (v38 >= v37 && (v37 != v38 || *(v36 + 52) >= *(v36 + 108)))
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_131;
                }

                v40 = *(v36 + 104);
                v41 = *(v36 + 88);
                v42 = *(v36 + 56);
                v43 = *(v36 + 16);
                *(v36 + 56) = *v36;
                v44 = *(v36 + 72);
                *(v36 + 72) = v43;
                *(v36 + 88) = *(v36 + 32);
                *(v36 + 104) = *(v36 + 48);
                *v36 = v42;
                *(v36 + 16) = v44;
                *(v36 + 32) = v41;
                *(v36 + 48) = v40;
                v36 -= 56;
              }

              while (!__CFADD__(v35++, 1));
              ++v8;
              v33 += 56;
              --v34;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_126;
      }

      v93 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458A358();
        v7 = v89;
      }

      v46 = v7[2];
      v47 = v46 + 1;
      if (v46 >= v7[3] >> 1)
      {
        sub_1C458A358();
        v7 = v90;
      }

      v7[2] = v47;
      v48 = v7 + 4;
      v49 = &v7[2 * v46 + 4];
      *v49 = v6;
      v49[1] = v93;
      v94 = *a1;
      if (!*a1)
      {
        break;
      }

      if (v46)
      {
        while (1)
        {
          v50 = v47 - 1;
          v51 = &v48[2 * v47 - 2];
          v52 = &v7[2 * v47];
          if (v47 >= 4)
          {
            break;
          }

          if (v47 == 3)
          {
            v53 = v7[4];
            v54 = v7[5];
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_76:
            if (v56)
            {
              goto LABEL_116;
            }

            v68 = *v52;
            v67 = v52[1];
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_119;
            }

            v72 = v51[1];
            v73 = v72 - *v51;
            if (__OFSUB__(v72, *v51))
            {
              goto LABEL_122;
            }

            if (__OFADD__(v70, v73))
            {
              goto LABEL_124;
            }

            if (v70 + v73 >= v55)
            {
              if (v55 < v73)
              {
                v50 = v47 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          if (v47 < 2)
          {
            goto LABEL_118;
          }

          v75 = *v52;
          v74 = v52[1];
          v63 = __OFSUB__(v74, v75);
          v70 = v74 - v75;
          v71 = v63;
LABEL_91:
          if (v71)
          {
            goto LABEL_121;
          }

          v77 = *v51;
          v76 = v51[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_123;
          }

          if (v78 < v70)
          {
            goto LABEL_105;
          }

LABEL_98:
          if (v50 - 1 >= v47)
          {
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
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

          if (!*a3)
          {
            goto LABEL_132;
          }

          v82 = &v48[2 * v50 - 2];
          v83 = *v82;
          v84 = &v48[2 * v50];
          v85 = *(v84 + 1);
          sub_1C4A95248((*a3 + 56 * *v82), (*a3 + 56 * *v84), *a3 + 56 * v85, v94);
          if (v4)
          {
            goto LABEL_109;
          }

          if (v85 < v83)
          {
            goto LABEL_111;
          }

          v86 = v7;
          v87 = v7[2];
          if (v50 > v87)
          {
            goto LABEL_112;
          }

          *v82 = v83;
          v82[1] = v85;
          if (v50 >= v87)
          {
            goto LABEL_113;
          }

          v47 = v87 - 1;
          sub_1C461950C(v84 + 16, v87 - 1 - v50, &v48[2 * v50]);
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v7 = v86;
          if (!v88)
          {
            goto LABEL_105;
          }
        }

        v57 = &v48[2 * v47];
        v58 = *(v57 - 8);
        v59 = *(v57 - 7);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_114;
        }

        v62 = *(v57 - 6);
        v61 = *(v57 - 5);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_115;
        }

        v64 = v52[1];
        v65 = v64 - *v52;
        if (__OFSUB__(v64, *v52))
        {
          goto LABEL_117;
        }

        v63 = __OFADD__(v55, v65);
        v66 = v55 + v65;
        if (v63)
        {
          goto LABEL_120;
        }

        if (v66 >= v60)
        {
          v80 = *v51;
          v79 = v51[1];
          v63 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v63)
          {
            goto LABEL_125;
          }

          if (v55 < v81)
          {
            v50 = v47 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_76;
      }

LABEL_105:
      v5 = a3[1];
      v6 = v93;
      a4 = v91;
      if (v93 >= v5)
      {
        v96 = v7;
        goto LABEL_107;
      }
    }

    __break(1u);
    goto LABEL_135;
  }

LABEL_107:
  if (!*a1)
  {
LABEL_135:
    __break(1u);
    return;
  }

  sub_1C4A95110(&v96, *a1, a3);
LABEL_109:
}

uint64_t sub_1C4A95110(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C4A95248((*a3 + 56 * *v4), (*a3 + 56 * *v9), *a3 + 56 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C4A95248(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    v10 = sub_1C44000C4();
    sub_1C459C934(v10, v11, v4);
    v12 = &v4[56 * v8];
    while (1)
    {
      if (v4 >= v12 || v6 >= v5)
      {
        v24 = v7;
        goto LABEL_36;
      }

      v14 = v6[48];
      v15 = v4[48];
      if (v15 < v14)
      {
        break;
      }

      if (v14 == v15 && *(v4 + 13) < *(v6 + 13))
      {
        break;
      }

      v17 = v4;
      v18 = v7 == v4;
      v4 += 56;
      if (!v18)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 56;
    }

    v17 = v6;
    v18 = v7 == v6;
    v6 += 56;
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_16:
    v19 = *v17;
    v20 = *(v17 + 1);
    v21 = *(v17 + 2);
    *(v7 + 6) = *(v17 + 6);
    *(v7 + 1) = v20;
    *(v7 + 2) = v21;
    *v7 = v19;
    goto LABEL_17;
  }

  sub_1C459C934(a2, (a3 - a2) / 56, a4);
  v22 = &v4[56 * v9];
LABEL_19:
  v23 = 0;
  v24 = v6;
  while (1)
  {
    v12 = &v22[v23];
    if (&v22[v23] <= v4 || v6 <= v7)
    {
      break;
    }

    v26 = *(v12 - 8);
    v27 = *(v6 - 8);
    if (v27 < v26 || (v26 == v27 ? (v28 = *(v6 - 1) < *&v22[v23 - 4]) : (v28 = 0), v28))
    {
      v6 -= 56;
      v34 = (v5 + v23);
      v5 = v5 + v23 - 56;
      v22 += v23;
      if (v34 != v24)
      {
        v35 = *v6;
        v36 = *(v24 - 40);
        v37 = *(v24 - 24);
        *(v5 + 48) = *(v24 - 1);
        *(v5 + 16) = v36;
        *(v5 + 32) = v37;
        *v5 = v35;
      }

      goto LABEL_19;
    }

    if (v12 != (v5 + v23))
    {
      v29 = v5 + v23 - 56;
      v30 = v12 - 56;
      v31 = *v30;
      v32 = *(v30 + 1);
      v33 = *(v30 + 2);
      *(v29 + 48) = *(v30 + 6);
      *(v29 + 16) = v32;
      *(v29 + 32) = v33;
      *v29 = v31;
    }

    v23 -= 56;
  }

LABEL_36:
  v38 = (v12 - v4) / 56;
  if (v24 != v4 || v24 >= &v4[56 * v38])
  {
    memmove(v24, v4, 56 * v38);
  }

  return 1;
}

void *sub_1C4A95434(uint64_t a1, uint64_t a2)
{

  return sub_1C4A954A4(a1, a2, sub_1C4A69E28, sub_1C4A69E28);
}

void *sub_1C4A954A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  sub_1C4404078();
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = *(v6 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;

  if (v8 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1C4501018(0, v9, v17 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1C441D304();
    v11 = a3();
  }

  else
  {
    swift_slowAlloc();

    sub_1C441D304();
    v11 = sub_1C4A94950(v13, v14, v15, v16, a4);

    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  return v11;
}

uint64_t sub_1C4A95670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 2)
  {
    return sub_1C47023EC(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C4A9568C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonMatchReasonType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4A957C0()
{
  result = qword_1EC0C2628;
  if (!qword_1EC0C2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2628);
  }

  return result;
}

unint64_t sub_1C4A95818()
{
  result = qword_1EDDF8AA8[0];
  if (!qword_1EDDF8AA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF8AA8);
  }

  return result;
}

unint64_t sub_1C4A9586C()
{
  result = qword_1EC0C2630;
  if (!qword_1EC0C2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2630);
  }

  return result;
}

unint64_t sub_1C4A958D4()
{
  result = qword_1EC0C2638;
  if (!qword_1EC0C2638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2638);
  }

  return result;
}

uint64_t sub_1C4A9594C(uint64_t a1)
{

  return sub_1C4A8F1A4(a1);
}

uint64_t sub_1C4A95A30()
{
  result = sub_1C4F00F28();
  qword_1EC152B68 = result;
  return result;
}

uint64_t sub_1C4A95A6C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1C4F00978();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v8 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v30 = *a1;
  v29 = *(a1 + 2);
  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_localizedRelationshipTopicMap;
  sub_1C456902C(&qword_1EC0C2660, &qword_1C4F4B7C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F17CF0;
  *(inited + 32) = 0x30333838383151;
  *(inited + 40) = 0xE700000000000000;
  sub_1C448DE08();
  *(inited + 48) = v14;
  *(inited + 56) = 0x38373832313251;
  *(inited + 64) = 0xE700000000000000;
  sub_1C448DE08();
  *(inited + 72) = v15;
  *(inited + 80) = 0x3036353751;
  *(inited + 88) = 0xE500000000000000;
  sub_1C448DE08();
  *(inited + 96) = v16;
  *(inited + 104) = 0x3536353751;
  *(inited + 112) = 0xE500000000000000;
  sub_1C448DE08();
  *(inited + 120) = v17;
  *(inited + 128) = 0x32333237373151;
  *(inited + 136) = 0xE700000000000000;
  sub_1C448DE08();
  *(inited + 144) = v18;
  *(inited + 152) = 0x34393138303351;
  *(inited + 160) = 0xE700000000000000;
  sub_1C448DE08();
  *(inited + 168) = v19;
  *(inited + 176) = 0x3634313638303151;
  *(inited + 184) = 0xE900000000000035;
  sub_1C448DE08();
  *(inited + 192) = v20;
  *(inited + 200) = 0x34393035393551;
  *(inited + 208) = 0xE700000000000000;
  sub_1C448DE08();
  *(inited + 216) = v21;
  *(inited + 224) = 0x3434333833323951;
  *(inited + 232) = 0xE800000000000000;
  sub_1C448DE08();
  *(inited + 240) = v22;
  *(inited + 248) = 0x3835373533323951;
  *(inited + 256) = 0xE800000000000000;
  sub_1C448DE08();
  *(inited + 264) = v23;
  *(inited + 272) = 0x373035363751;
  *(inited + 280) = 0xE600000000000000;
  sub_1C448DE08();
  *(inited + 288) = v24;
  *(inited + 296) = 0x373535363751;
  *(inited + 304) = 0xE600000000000000;
  sub_1C448DE08();
  *(inited + 312) = v25;
  *(inited + 320) = 0x3738393030333251;
  *(inited + 328) = 0xE900000000000030;
  sub_1C448DE08();
  *(inited + 336) = v26;
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  *(v4 + v12) = sub_1C4F00F28();
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal____lazy_storage___featureNames) = 0;
  *(v4 + 16) = v30;
  *(v4 + 32) = v29;
  *(v4 + 40) = *(a1 + 24);
  sub_1C449F008(a2, v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_config, _s10ViewConfigVMa);
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_store) = a3;
  type metadata accessor for GlobalKnowledgeStore(0);
  sub_1C449F008(a3 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v11, type metadata accessor for Configuration);

  sub_1C48300AC(v11);

  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_localizedRelationshipTopicMap) = sub_1C482DA4C();

  sub_1C4A95964();

  sub_1C4400AEC();
  sub_1C449F280(a2, v27);
  return v4;
}

uint64_t sub_1C4A95F64()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v6[2] = v0[4];
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v1;
  v6[6] = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C446C37C(sub_1C4A98990, v6);
}

uint64_t sub_1C4A95FF8()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal____lazy_storage___featureNames);
  }

  else
  {
    sub_1C448DE08();
    v2 = v3;
    *(v0 + v1) = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

void sub_1C4A96064()
{
  v453 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v426 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v403 - v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD230();
  sub_1C43FD2C8(v8);
  v421 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v443 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v16 = sub_1C43FD2C8(v15);
  v460 = type metadata accessor for GraphTriple(v16);
  sub_1C43FCDF8();
  v457 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD230();
  sub_1C43FD2C8(v26);
  v465 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v445 = v27;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v403 - v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  v464 = v35;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v452 = v37;
  v38 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v403 - v39;
  v463 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v42 = v41;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBCC4();
  v46 = v45 - v44;
  v47 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v49 = v48;
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v403 - v52;
  v471 = MEMORY[0x1E69E7CC0];
  v437 = v0;
  v54 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_store);
  sub_1C4EFD4C8();
  sub_1C4EFDCC8();
  (*(v42 + 8))(v46, v463);
  v415 = sub_1C4EFF8F8();
  sub_1C440BAA8(v40, 1, 1, v415);
  v55 = sub_1C498DB80();
  v417 = v40;
  v56 = v40;
  v57 = v457;
  sub_1C482ADC8(v56);
  v58 = *(v49 + 8);
  *(&v409 + 1) = v47;
  *&v409 = v49 + 8;
  v408 = v58;
  v58(v53, v47);
  v59 = v445;
  v416 = v54;
  sub_1C486DFC0();
  v60 = *(v55 + 16);
  v459 = v6;
  v462 = v61;
  v403 = v55;
  if (v60)
  {
    v466 = MEMORY[0x1E69E7CC0];
    sub_1C459D178();
    v62 = v466;
    sub_1C43FC354();
    v64 = v55 + v63;
    v463 = *(v57 + 72);
    v461 = (v59 + 16);
    v458 = (v59 + 32);
    v65 = v465;
    v66 = i;
    v6 = v452;
    do
    {
      sub_1C44077E0();
      sub_1C449F008(v64, v66, v67);
      (*v461)(v6, v66, v65);
      sub_1C440F95C();
      sub_1C449F280(v66, v68);
      v466 = v62;
      v70 = *(v62 + 16);
      v69 = *(v62 + 24);
      v59 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        sub_1C43FCFE8(v69);
        sub_1C459D178();
        v66 = i;
        v62 = v466;
      }

      *(v62 + 16) = v59;
      sub_1C440460C();
      sub_1C43FC354();
      (*(v72 + 32))(v62 + v71 + *(v72 + 72) * v70, v6, v65);
      v64 += v463;
      --v60;
    }

    while (v60);
    sub_1C4408F20();
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC0];
  }

  v73 = 0;
  sub_1C440BEC0(*(v62 + 16));
  sub_1C440460C();
  v463 = v74 + 16;
  v76 = v75 + 56;
  v461 = (v74 + 8);
  v442 = (v74 + 32);
  v452 = MEMORY[0x1E69E7CC0];
  sub_1C440D73C();
  v446 = v62;
LABEL_9:
  while (v73 != v449)
  {
    if (v73 >= *(v62 + 16))
    {
      goto LABEL_230;
    }

    sub_1C43FC354();
    i = v77;
    v79 = *(v78 + 72);
    v80 = *(v78 + 16);
    v82 = v464;
    v81 = v465;
    v80(v464, v62 + v77 + v79 * v73++, v465);
    v83 = v462;
    if (*(v462 + 16))
    {
      v458 = v73;
      sub_1C4417670();
      sub_1C4502370(&qword_1EDDFE820, v84, MEMORY[0x1E69A9820]);
      v85 = sub_1C4F00FD8();
      v59 = ~(-1 << *(v83 + 32));
      while (1)
      {
        v6 = v85 & v59;
        if (((*(v76 + (((v85 & v59) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v85 & v59)) & 1) == 0)
        {
          break;
        }

        v86 = v465;
        v80(v33, *(v462 + 48) + v6 * v79, v465);
        sub_1C4417670();
        sub_1C4502370(&qword_1EDDFCC98, v87, MEMORY[0x1E69A9830]);
        v83 = sub_1C4F010B8();
        v88 = *v461;
        (*v461)(v33, v86);
        v85 = v6 + 1;
        if (v83)
        {
          (v88)(v464, v465);
          sub_1C4408F20();
          sub_1C440D73C();
          sub_1C440460C();
          v62 = v446;
          v73 = v458;
          goto LABEL_9;
        }
      }

      sub_1C4408F20();
      v82 = v464;
      v81 = v465;
      v73 = v458;
    }

    v89 = v81;
    v90 = *v442;
    (*v442)(v450, v82, v89);
    sub_1C4410278(&v471);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v83;
    v466 = v83;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C4408714();
      sub_1C459D178();
      v92 = v466;
    }

    v62 = v446;
    v59 = *(v92 + 16);
    v93 = *(v92 + 24);
    if (v59 >= v93 >> 1)
    {
      sub_1C43FCFE8(v93);
      v458 = v90;
      sub_1C459D178();
      v90 = v458;
      v92 = v466;
    }

    *(v92 + 16) = v59 + 1;
    v452 = v92;
    v90(i + v92 + v59 * v79, v450, v465);
    sub_1C440D73C();
    sub_1C440460C();
  }

  sub_1C443F1AC();
  sub_1C45972E0();
  v95 = v94 + 56;
  sub_1C43FEC90();
  v98 = v97 & v96;
  v433 = OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_localizedRelationshipTopicMap;
  v405 = (v437 + OBJC_IVAR____TtC24IntelligencePlatformCore16PeopleNameSignal_config);
  v100 = (v99 + 63) >> 6;
  HIDWORD(v414) = *MEMORY[0x1E69A95C0];
  v413 = (v443 + 104);
  v412 = (v443 + 8);
  v458 = (v426 + 8);
  v436 = "entity_popularity_hour_of_day";
  v424 = v101;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v425 = xmmword_1C4F0D130;
  v410 = xmmword_1C4F0C890;
  v102 = v453;
  v407 = v95;
  v406 = v100;
LABEL_23:
  sub_1C440460C();
  if (v98)
  {
LABEL_28:
    v423 = (v98 - 1) & v98;
    v422 = v104;
    v106 = *(v424 + 48) + *(v103 + 72) * (__clz(__rbit64(v98)) | (v104 << 6));
    v464 = *(v103 + 16);
    v107 = v418;
    v108 = v465;
    v109 = v103;
    (v464)(v418, v106, v465);
    v110 = v438;
    (*(v109 + 32))(v438, v107, v108);
    sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
    v111 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v112 = swift_allocObject();
    *(v112 + 16) = v425;
    (v464)(v112 + v111, v110, v108);
    sub_1C4D51ABC();
    v464 = v113;
    sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
    *(swift_allocObject() + 16) = v410;
    sub_1C4EFEBF8();
    sub_1C4EFEE68();
    sub_1C4EFE2C8();
    sub_1C4D504A4();
    i = v114;
    v115 = *v413;
    v116 = v421;
    (*v413)(v428, HIDWORD(v414), v421);
    sub_1C4426BC8();
    v115(v117);
    sub_1C4426BC8();
    v115(v118);
    v119 = v419;
    sub_1C4426BC8();
    v115(v120);
    v121 = v420;
    sub_1C4426BC8();
    v115(v122);
    v401 = v121;
    v402 = 0;
    v123 = v427;
    sub_1C4EFDCD8();

    v124 = *v412;
    (*v412)(v121, v116);
    v124(v119, v116);
    v124(v123, v116);
    v124(v429, v116);
    v124(v428, v116);
    v125 = sub_1C4410278(&v446);
    sub_1C440BAA8(v125, 1, 1, v415);
    v126 = sub_1C498DB80();
    sub_1C482ADC8(v124);
    v127 = 0;
    v464 = v126[2];
    v450 = MEMORY[0x1E69E7CC0];
    i = v126;
    while (v464 != v127)
    {
      if (v127 >= v126[2])
      {
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        swift_once();
        goto LABEL_219;
      }

      v128 = (*(v457 + 80) + 32) & ~*(v457 + 80);
      v119 = *(v457 + 72);
      sub_1C44077E0();
      sub_1C449F008(v129, v455, v130);
      sub_1C44352CC();
      sub_1C4EFEE68();
      sub_1C440B0B0();
      v132 = sub_1C4502370(&off_1EDDFCCA8, v131, MEMORY[0x1E69A9770]);
      sub_1C443FF00(v132);
      sub_1C4F01578();
      v133 = v467;
      v134 = v466 == v468 && v467 == v469;
      if (v134)
      {
        sub_1C43FDCB4();
        v137(v59, v102);
      }

      else
      {
        v123 = sub_1C4F02938();
        sub_1C43FDCB4();
        v135(v59, v102);

        if ((v123 & 1) == 0)
        {
          sub_1C440F95C();
          sub_1C449F280(v455, v136);
          ++v127;
          goto LABEL_37;
        }
      }

      sub_1C45B1EE4(v455, v431);
      sub_1C442537C();
      v138 = swift_isUniquelyReferenced_nonNull_native();
      v470 = v133;
      if ((v138 & 1) == 0)
      {
        sub_1C4408714();
        sub_1C459D7C8();
        v133 = v470;
      }

      v123 = *(v133 + 16);
      v139 = *(v133 + 24);
      if (v123 >= v139 >> 1)
      {
        sub_1C43FCFE8(v139);
        sub_1C459D7C8();
        v133 = v470;
      }

      ++v127;
      *(v133 + 16) = v123 + 1;
      v450 = v133;
      sub_1C45B1EE4(v431, v133 + v128 + v123 * v119);
LABEL_37:
      v126 = i;
    }

    sub_1C442537C();
    sub_1C440BEC0(v126[2]);
    if (v140)
    {
      sub_1C44336BC();
      sub_1C4411128(v141);
      sub_1C43FC354();
      v440 = v126 + v142;
      v143 = MEMORY[0x1E69E7CC8];
      do
      {
        if (v127 >= v126[2])
        {
          goto LABEL_226;
        }

        sub_1C44077E0();
        sub_1C449F008(v144, v448, v145);
        v146 = sub_1C442BE24();
        sub_1C4405FD4(v146, v147);
        v466 = v143;
        sub_1C4418B7C();
        sub_1C43FC438();
        v6 = v150 + v151;
        if (__OFADD__(v150, v151))
        {
          goto LABEL_227;
        }

        v152 = v148;
        v153 = v149;
        sub_1C456902C(&qword_1EC0C2658, &qword_1C4F4B7C0);
        v126 = &v466;
        if (sub_1C4F02458())
        {
          v126 = v466;
          v154 = sub_1C4418B7C();
          v6 = v459;
          v156 = v457;
          if ((v153 & 1) != (v155 & 1))
          {
            goto LABEL_246;
          }

          v152 = v154;
        }

        else
        {
          sub_1C4408F20();
          v156 = v457;
        }

        sub_1C442537C();
        v157 = v466;
        if (v153)
        {
          v143 = v466;
          sub_1C441C434();
          *v158 = v146;
          *(v158 + 8) = v159;
          *(v158 + 16) = v1;
        }

        else
        {
          v466[(v152 >> 6) + 8] |= 1 << v152;
          v160 = (*(v157 + 48) + 16 * v152);
          *v160 = v119;
          v160[1] = v123;
          sub_1C441C434();
          *v162 = v146;
          *(v162 + 8) = v163;
          *(v162 + 16) = v1;
          v164 = *(v161 + 16);
          v165 = __OFADD__(v164, 1);
          v166 = v164 + 1;
          if (v165)
          {
            goto LABEL_238;
          }

          v143 = v161;
          *(v161 + 16) = v166;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        ++v127;
        sub_1C440F95C();
        sub_1C449F280(v448, v167);
        sub_1C444FF20();
        v102 = *(v168 - 256);
      }

      while (!v134);
    }

    else
    {
      v143 = MEMORY[0x1E69E7CC8];
      v156 = v457;
    }

    v435 = v143;

    v169 = 0;
    v450 = MEMORY[0x1E69E7CC0];
    while (v464 != v169)
    {
      if (v169 >= i[2])
      {
        goto LABEL_223;
      }

      v170 = (*(v156 + 80) + 32) & ~*(v156 + 80);
      v119 = *(v156 + 72);
      sub_1C44077E0();
      sub_1C449F008(v171, v454, v172);
      sub_1C44352CC();
      sub_1C4EFE2C8();
      sub_1C440B0B0();
      v174 = sub_1C4502370(&off_1EDDFCCA8, v173, MEMORY[0x1E69A9770]);
      sub_1C443FF00(v174);
      sub_1C4F01578();
      v175 = v469;
      if (v466 == v468 && v467 == v469)
      {
        sub_1C43FDCB4();
        v179(v6, v102);
      }

      else
      {
        v123 = sub_1C4F02938();
        sub_1C43FDCB4();
        v177(v6, v102);

        if ((v123 & 1) == 0)
        {
          sub_1C440F95C();
          sub_1C449F280(v454, v178);
          v169 = (v169 + 1);
          continue;
        }
      }

      sub_1C45B1EE4(v454, v430);
      sub_1C4410278(&v469);
      v180 = swift_isUniquelyReferenced_nonNull_native();
      v181 = v175;
      v470 = v175;
      if ((v180 & 1) == 0)
      {
        sub_1C4408714();
        sub_1C459D7C8();
        v181 = v470;
      }

      v123 = *(v181 + 16);
      v182 = *(v181 + 24);
      if (v123 >= v182 >> 1)
      {
        sub_1C43FCFE8(v182);
        sub_1C459D7C8();
        v181 = v470;
      }

      v169 = (v169 + 1);
      *(v181 + 16) = v123 + 1;
      v450 = v181;
      sub_1C45B1EE4(v430, v181 + v170 + v123 * v119);
    }

    sub_1C440BEC0(v450[2]);
    if (v183)
    {
      sub_1C44336BC();
      sub_1C4411128(v184);
      sub_1C43FC354();
      v440 = (v185 + v186);
      v187 = MEMORY[0x1E69E7CC8];
      do
      {
        if (v169 >= *(v185 + 16))
        {
          goto LABEL_228;
        }

        sub_1C44077E0();
        sub_1C449F008(v188, v447, v189);
        v190 = sub_1C442BE24();
        sub_1C4405FD4(v190, v191);
        v466 = v187;
        sub_1C4418B7C();
        sub_1C43FC438();
        v6 = v194 + v195;
        if (__OFADD__(v194, v195))
        {
          goto LABEL_229;
        }

        v196 = v192;
        v197 = v193;
        sub_1C456902C(&qword_1EC0C2658, &qword_1C4F4B7C0);
        if (sub_1C4F02458())
        {
          v198 = sub_1C4418B7C();
          v6 = v459;
          if ((v197 & 1) != (v199 & 1))
          {
            goto LABEL_246;
          }

          v196 = v198;
        }

        else
        {
          sub_1C4408F20();
        }

        v187 = v466;
        if (v197)
        {
          sub_1C441C434();
          *v200 = v190;
          *(v200 + 8) = v201;
          *(v200 + 16) = v1;
        }

        else
        {
          v466[(v196 >> 6) + 8] |= 1 << v196;
          v202 = (v187[6] + 16 * v196);
          *v202 = v119;
          v202[1] = v123;
          sub_1C441C434();
          *v203 = v190;
          *(v203 + 8) = v204;
          *(v203 + 16) = v1;
          v205 = v187[2];
          v165 = __OFADD__(v205, 1);
          v206 = v205 + 1;
          if (v165)
          {
            goto LABEL_239;
          }

          v187[2] = v206;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v169 = (v169 + 1);
        sub_1C440F95C();
        sub_1C449F280(v447, v207);
        sub_1C444FF20();
        v102 = *(v208 - 256);
        v185 = v450;
      }

      while (!v134);
    }

    else
    {
      v187 = MEMORY[0x1E69E7CC8];
    }

    v209 = v435 + 64;
    sub_1C43FEC90();
    v212 = v211 & v210;
    v214 = (v213 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v215 = 0;
    v452 = MEMORY[0x1E69E7CC0];
    v450 = v187;
    if (v212)
    {
      while (2)
      {
        v216 = v215;
        v217 = v435;
LABEL_97:
        v218 = __clz(__rbit64(v212));
        v212 &= v212 - 1;
        v219 = v218 | (v216 << 6);
        v220 = *(v217 + 56) + 24 * v219;
        v221 = *(v220 + 8);
        v449 = *v220;
        v1 = *(v220 + 16);
        if (v187[2])
        {
          v222 = (*(v217 + 48) + 16 * v219);
          v223 = *v222;
          v224 = v222[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C445FAA8(v223, v224);
          v226 = v225;

          if (v226)
          {

            goto LABEL_100;
          }
        }

        else
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        sub_1C443F1AC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C4409FB4();
          sub_1C4408714();
          sub_1C458B680();
          sub_1C441BC04(v230);
        }

        sub_1C441E624();
        if (v228)
        {
          sub_1C43FCFE8(v227);
          sub_1C4409FB4();
          sub_1C458B680();
          sub_1C441BC04(v231);
        }

        sub_1C4414E44();
        *(v229 + 32) = v449;
        *(v229 + 40) = v221;
        *(v229 + 48) = v1;
LABEL_100:
        v215 = v216;
        v102 = v453;
        v187 = v450;
        if (!v212)
        {
          break;
        }

        continue;
      }
    }

    v217 = v435;
    while (1)
    {
      v216 = v215 + 1;
      if (__OFADD__(v215, 1))
      {
        goto LABEL_224;
      }

      if (v216 >= v214)
      {
        break;
      }

      v212 = *(v209 + 8 * v216);
      ++v215;
      if (v212)
      {
        goto LABEL_97;
      }
    }

    v232 = 0;
    v233 = v187 + 8;
    sub_1C43FEC90();
    v59 = v235 & v234;
    v237 = (v236 + 63) >> 6;
    while (1)
    {
      v238 = v232;
      if (!v59)
      {
        break;
      }

      while (1)
      {
        v232 = v238;
LABEL_114:
        sub_1C4410218();
        v241 = v240 | (v232 << 6);
        v242 = v187[7] + 24 * v241;
        v244 = *v242;
        v243 = *(v242 + 8);
        v1 = *(v242 + 16);
        if (!v239[2])
        {
          break;
        }

        v245 = (v187[6] + 16 * v241);
        v246 = *v245;
        v247 = v245[1];
        v187 = v239;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C445FAA8(v246, v247);
        v6 = v248;
        sub_1C442537C();

        if ((v6 & 1) == 0)
        {
          goto LABEL_118;
        }

        v238 = v232;
        v6 = v459;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_118:
      sub_1C443F1AC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4409FB4();
        sub_1C4408714();
        sub_1C458B680();
        sub_1C441BC04(v251);
      }

      sub_1C4408F20();
      sub_1C441E624();
      if (v228)
      {
        sub_1C43FCFE8(v249);
        sub_1C4409FB4();
        sub_1C458B680();
        sub_1C441BC04(v252);
      }

      sub_1C4414E44();
      *(v250 + 32) = v244;
      *(v250 + 40) = v243;
      *(v250 + 48) = v1;
      v102 = v453;
      sub_1C442537C();
    }

    while (1)
    {
      v232 = v238 + 1;
      if (__OFADD__(v238, 1))
      {
        goto LABEL_225;
      }

      if (v232 >= v237)
      {
        break;
      }

      v59 = v233[v232];
      ++v238;
      if (v59)
      {
        goto LABEL_114;
      }
    }

    if (v464)
    {
      sub_1C43FC354();
      v254 = i + v253;
      v256 = *(v255 + 72);
      v257 = v439;
      sub_1C440D73C();
      v258 = v444;
      while (1)
      {
        sub_1C44077E0();
        sub_1C449F008(v254, v258, v259);
        sub_1C44352CC();
        sub_1C4EFEBF8();
        sub_1C440B0B0();
        sub_1C4502370(&off_1EDDFCCA8, v260, MEMORY[0x1E69A9770]);
        sub_1C4F01578();
        sub_1C4F01578();
        if (v466 == v468 && v467 == v469)
        {
          break;
        }

        v262 = sub_1C4F02938();
        v263 = v257;
        v264 = v262;
        (*v458)(v263, v102);

        if (v264)
        {
          goto LABEL_132;
        }

LABEL_137:
        sub_1C440F95C();
        v258 = v444;
        sub_1C449F280(v444, v276);
        v254 += v256;
        v134 = v464 == 1;
        v464 = (v464 - 1);
        v257 = v439;
        if (v134)
        {
          goto LABEL_141;
        }
      }

      sub_1C43FDCB4();
      v265(v257, v102);

LABEL_132:
      v266 = v460;
      v267 = v444;
      v268 = sub_1C4F00FF8();
      v270 = v269;
      v1 = *(v267 + *(v266 + 40));
      v271 = v452;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4408714();
        sub_1C458B680();
        v271 = v277;
      }

      v452 = v271;
      v273 = *(v271 + 16);
      v272 = *(v271 + 24);
      if (v273 >= v272 >> 1)
      {
        sub_1C43FCFE8(v272);
        sub_1C4409FB4();
        sub_1C458B680();
        sub_1C441BC04(v278);
      }

      v274 = v452;
      *(v452 + 16) = v273 + 1;
      v275 = v274 + 24 * v273;
      *(v275 + 32) = v268;
      *(v275 + 40) = v270;
      *(v275 + 48) = v1;
      goto LABEL_137;
    }

    sub_1C440D73C();
LABEL_141:

    v279 = sub_1C4F00F28();
    v441 = *(v452 + 16);
    if (!v441)
    {
      goto LABEL_193;
    }

    v280 = 0;
    v440 = (v452 + 32);
    v281 = v437;
LABEL_143:
    if (v280 >= *(v452 + 16))
    {
      goto LABEL_237;
    }

    v449 = v279;
    v282 = &v440[24 * v280];
    v284 = *v282;
    v283 = *(v282 + 1);
    v1 = *(v282 + 2);
    v285 = *(v281 + v433);
    v443 = v280 + 1;
    v286 = v285 + 64;
    v287 = 1 << *(v285 + 32);
    if (v287 < 64)
    {
      v288 = ~(-1 << v287);
    }

    else
    {
      v288 = -1;
    }

    v289 = v288 & *(v285 + 64);
    v446 = (v287 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v290 = 0;
    for (i = v285; ; v285 = i)
    {
      do
      {
LABEL_148:
        if (!v289)
        {
          v279 = v449;
          while (1)
          {
            v291 = v290 + 1;
            if (__OFADD__(v290, 1))
            {
              __break(1u);
              goto LABEL_218;
            }

            if (v291 >= v446)
            {
              break;
            }

            v289 = *(v286 + 8 * v291);
            ++v290;
            if (v289)
            {
              v290 = v291;
              goto LABEL_154;
            }
          }

          v280 = v443;
          v281 = v437;
          v102 = v453;
          v59 = v451;
          if (v443 == v441)
          {
LABEL_193:
            v332 = *(v279 + 16);
            if (v332)
            {
              v466 = MEMORY[0x1E69E7CC0];
              sub_1C459D7A8(0, v332, 0);
              v464 = v466;
              v333 = sub_1C4703354();
              v335 = v334;
              v337 = v336;
              v6 = v279 + 64;
              v338 = sub_1C4577DBC();
              v339 = v335;
              v446 = v338;
              v340 = 0;
              v341 = v405[1];
              v443 = *v405;
              v441 = v341;
              v434 = v335;
              v432 = v279 + 72;
              v435 = v332;
              v440 = (v279 + 64);
              do
              {
                if (v333 < 0 || v333 >= 1 << *(v279 + 32))
                {
                  goto LABEL_231;
                }

                v342 = v333 >> 6;
                if ((*(v6 + 8 * (v333 >> 6)) & (1 << v333)) == 0)
                {
                  goto LABEL_232;
                }

                if (*(v279 + 36) != v339)
                {
                  goto LABEL_233;
                }

                i = v339;
                LODWORD(v449) = v337;
                v450 = v340;
                v343 = (*(v279 + 48) + 16 * v333);
                v344 = *v343;
                v345 = v343[1];
                v1 = *(*(v279 + 56) + 8 * v333);
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v346 = v441;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v347 = sub_1C4EFF048();
                v348 = v279;
                v350 = v349;
                v351 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
                v352 = sub_1C4673B1C(v443, v346, 0xD000000000000012, v436 | 0x8000000000000000, v347, v350);
                v353 = sub_1C4594E18(v344, v345);
                v354 = v353;
                v355 = v464;
                v466 = v464;
                v357 = v464[2];
                v356 = v464[3];
                v59 = v357 + 1;
                if (v357 >= v356 >> 1)
                {
                  v367 = sub_1C43FCFE8(v356);
                  v353 = sub_1C459D7A8(v367, v357 + 1, 1);
                  v355 = v466;
                }

                *(v355 + 16) = v59;
                v358 = v355 + 24 * v357;
                *(v358 + 32) = v352;
                *(v358 + 40) = v354;
                *(v358 + 48) = v1;
                v359 = 1 << *(v348 + 32);
                if (v333 >= v359)
                {
                  goto LABEL_234;
                }

                v279 = v348;
                v6 = v440;
                v360 = *&v440[8 * v342];
                if ((v360 & (1 << v333)) == 0)
                {
                  goto LABEL_235;
                }

                if (*(v279 + 36) != i)
                {
                  goto LABEL_236;
                }

                v464 = v355;
                v361 = v360 & (-2 << (v333 & 0x3F));
                if (v361)
                {
                  v359 = __clz(__rbit64(v361)) | v333 & 0x7FFFFFFFFFFFFFC0;
                  sub_1C440D73C();
                }

                else
                {
                  v362 = v342 << 6;
                  v363 = v342 + 1;
                  v364 = (v432 + 8 * v342);
                  v59 = v451;
                  while (v363 < (v359 + 63) >> 6)
                  {
                    v366 = *v364++;
                    v365 = v366;
                    v362 += 64;
                    ++v363;
                    if (v366)
                    {
                      sub_1C445E950(v353, i);
                      v359 = __clz(__rbit64(v365)) + v362;
                      goto LABEL_211;
                    }
                  }

                  sub_1C445E950(v353, i);
                }

LABEL_211:
                v337 = 0;
                v340 = v450 + 1;
                v333 = v359;
                v339 = v434;
              }

              while ((v450 + 1) != v435);
              sub_1C443F1AC();

              sub_1C49D3924(v464);
              v368 = sub_1C440FA40();
              v369(v368);
              v102 = v453;
              sub_1C4408F20();
            }

            else
            {
              v370 = sub_1C440FA40();
              v371(v370);
            }

            (*v461)(v438, v465);
            v95 = v407;
            v100 = v406;
            v98 = v423;
            goto LABEL_23;
          }

          goto LABEL_143;
        }

LABEL_154:
        sub_1C4410218();
        v293 = v292 | (v290 << 6);
        v294 = *(*(v285 + 56) + 8 * v293);
      }

      while (!*(v294 + 16));
      v295 = (*(v285 + 48) + 16 * v293);
      v296 = v295[1];
      v450 = *v295;
      sub_1C4F02AF8();
      v464 = v296;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v297 = sub_1C4F02B68();
      v298 = ~(-1 << *(v294 + 32));
      do
      {
        v6 = v297 & v298;
        if (((*(v294 + 56 + (((v297 & v298) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v297 & v298)) & 1) == 0)
        {

          sub_1C4408F20();
LABEL_176:

          goto LABEL_177;
        }

        v299 = (*(v294 + 48) + 16 * v6);
        if (*v299 == v284 && v299[1] == v283)
        {
          break;
        }

        v301 = sub_1C4F02938();
        v297 = v6 + 1;
      }

      while ((v301 & 1) == 0);

      if (qword_1EC0B7038 != -1)
      {
        swift_once();
      }

      v302 = qword_1EC152B68;
      v6 = v459;
      if (!*(qword_1EC152B68 + 16))
      {
        goto LABEL_176;
      }

      v303 = sub_1C445FAA8(v450, v464);
      v305 = v304;

      v285 = i;
      if ((v305 & 1) == 0)
      {
        goto LABEL_148;
      }

      v306 = (*(v302 + 56) + 16 * v303);
      v307 = *v306;
      v308 = v306[1];
      v309 = v449;
      v310 = *(v449 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v310 && (v311 = sub_1C445FAA8(v307, v308), (v312 & 1) != 0))
      {
        if (*(*(v309 + 56) + 8 * v311) >= v1)
        {
          goto LABEL_176;
        }

        v313 = swift_isUniquelyReferenced_nonNull_native();
        v435 = sub_1C442E4B8(v313);
        sub_1C43FC438();
        if (__OFADD__(v315, v316))
        {
          goto LABEL_243;
        }

        LODWORD(v449) = v314;
        v317 = sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
        if (sub_1C4416334(v317))
        {
          sub_1C447F268();
          sub_1C441EE60();
          if (!v134)
          {
            goto LABEL_246;
          }

          v309 = v318;
          if (v319)
          {
            goto LABEL_189;
          }
        }

        else
        {
          sub_1C440523C();
          if (v330)
          {
            goto LABEL_189;
          }
        }

        sub_1C4432824();
        if (v165)
        {
          goto LABEL_244;
        }
      }

      else
      {
        v320 = swift_isUniquelyReferenced_nonNull_native();
        v435 = sub_1C442E4B8(v320);
        sub_1C43FC438();
        if (__OFADD__(v322, v323))
        {
          goto LABEL_241;
        }

        LODWORD(v449) = v321;
        v324 = sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
        if (sub_1C4416334(v324))
        {
          sub_1C447F268();
          sub_1C441EE60();
          if (!v134)
          {
LABEL_246:
            sub_1C4F029F8();
            __break(1u);
            return;
          }

          v309 = v325;
          if (v326)
          {
LABEL_189:

            sub_1C440BEC0(v466);
            *(*(v331 + 56) + 8 * v309) = v1;
            continue;
          }
        }

        else
        {
          sub_1C440523C();
          if (v327)
          {
            goto LABEL_189;
          }
        }

        sub_1C4432824();
        if (v165)
        {
          goto LABEL_242;
        }
      }

      v449 = v329;
      *(v329 + 16) = v328;
LABEL_177:
      ;
    }
  }

  while (1)
  {
    v105 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      goto LABEL_240;
    }

    if (v105 >= v100)
    {
      break;
    }

    v98 = *(v95 + 8 * v105);
    ++v104;
    if (v98)
    {
      v104 = v105;
      goto LABEL_28;
    }
  }

  sub_1C4410278(&v453);

  v372 = v437[2];
  v373 = v437[3];
  v375 = v437[4];
  v374 = v437[5];
  v376 = v437[6];
  v377 = v471;
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4811A54(v377, v378, v379, v380, v381, v382, v383, v384, v403, v404, v405, v406, v407, v408, v409, v410, SBYTE8(v410), v411, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424);
  v386 = v385;

  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = v425;
  *(inited + 32) = v372;
  *(inited + 40) = v373;
  MEMORY[0x1EEE9AC00](inited);
  *(&v403 - 6) = v388;
  *(&v403 - 5) = v375;
  *(&v403 - 4) = v374;
  *(&v403 - 3) = v376;
  v401 = v386;
  v389 = v404;
  sub_1C4418704(sub_1C4A989BC, (&v403 - 8), v390, v391, v392, v393, v394, v395, v403, v404);
  if (v389)
  {

    swift_setDeallocating();
    sub_1C44DEE40();

    return;
  }

LABEL_218:

  swift_setDeallocating();
  sub_1C44DEE40();

  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_245;
  }

LABEL_219:
  v396 = sub_1C4F00978();
  sub_1C442B738(v396, qword_1EDE2DF70);

  v397 = sub_1C4F00968();
  v398 = sub_1C4F01CB8();

  if (os_log_type_enabled(v397, v398))
  {
    v399 = swift_slowAlloc();
    v400 = swift_slowAlloc();
    v466 = v400;
    *v399 = 136315138;
    *(v399 + 4) = sub_1C441D828(*v405, v405[1], &v466);
    _os_log_impl(&dword_1C43F8000, v397, v398, "SignalView %s: Wrote features", v399, 0xCu);
    sub_1C440962C(v400);
    MEMORY[0x1C6942830](v400, -1, -1);
    MEMORY[0x1C6942830](v399, -1, -1);
  }
}

uint64_t sub_1C4A98664()
{

  sub_1C4400AEC();
  sub_1C449F280(v0 + v1, v2);

  return v0;
}

uint64_t sub_1C4A986EC()
{
  sub_1C4A98664();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PeopleNameSignal(uint64_t a1)
{
  result = qword_1EC0C2648;
  if (!qword_1EC0C2648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A98798(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4A98858()
{
  sub_1C4A96064();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4A988D0()
{
  sub_1C4A95F64();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Person.mapLocation.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4A98A44()
{
  if (qword_1EC0B70C0 != -1)
  {
    swift_once();
  }

  qword_1EC0C2668 = qword_1EC0C3708;
  *algn_1EC0C2670 = *&qword_1EC0C3710;
  qword_1EC0C2680 = qword_1EC0C3720;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static Person.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7040 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC0C2680;
  *a1 = qword_1EC0C2668;
  *(a1 + 8) = *algn_1EC0C2670;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t Person.identifier.getter()
{
  v1 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void __swiftcall Person.init(mapLocation:identifier:name:isCurrentUser:localIdentifier:contactIdentifier:birthday:anniversary:isFav:)(IntelligencePlatformCore::Person *__return_ptr retstr, Swift::String mapLocation, Swift::String_optional identifier, Swift::String_optional name, Swift::Bool_optional isCurrentUser, Swift::String_optional localIdentifier, Swift::String_optional contactIdentifier, Swift::String_optional birthday, Swift::String_optional anniversary, Swift::String_optional isFav)
{
  countAndFlagsBits = localIdentifier.value._countAndFlagsBits;
  object = identifier.value._object;
  v60 = identifier.value._countAndFlagsBits;
  if (name.value._object)
  {
    v15 = name.value._object;
    v16 = name.value._countAndFlagsBits;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = 1;
    sub_1C458A900();
    v18 = v17;
    v20 = v17[2];
    v19 = v17[3];
    v11 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      sub_1C4405AF4(v19);
      sub_1C458A900();
      v18 = v43;
    }

    v18[2] = v11;
    v21 = &v18[8 * v20];
    v21[4] = 1701667182;
    v21[5] = 0xE400000000000000;
    v21[6] = v16;
    v21[7] = v15;
    v21[9] = 0;
    v21[10] = 0;
    v21[8] = 0;
    *(v21 + 88) = 1;
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = MEMORY[0x1E69E7CC0];
  }

  if (localIdentifier.value._object)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v18 = v44;
    }

    sub_1C4400B04();
    if (v23)
    {
      sub_1C4405AF4(v22);
      sub_1C458A900();
      v18 = v45;
    }

    v18[2] = v11;
    v24 = &v18[8 * v10];
    v24[4] = 0x6564496C61636F6CLL;
    v24[5] = 0xEF7265696669746ELL;
    v24[6] = countAndFlagsBits;
    v24[7] = localIdentifier.value._object;
    sub_1C4404B30(v24);
  }

  if (contactIdentifier.value._object)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v18 = v46;
    }

    v10 = contactIdentifier.value._countAndFlagsBits;
    v26 = v18[2];
    v25 = v18[3];
    v11 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      sub_1C4405AF4(v25);
      sub_1C458A900();
      v18 = v47;
    }

    v18[2] = v11;
    v27 = &v18[8 * v26];
    v27[2].value._countAndFlagsBits = 0xD000000000000011;
    v27[2].value._object = 0x80000001C4FAEF10;
    v27[3] = contactIdentifier;
    sub_1C4404B30(v27);
  }

  if (birthday.value._object)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v18 = v48;
    }

    v10 = birthday.value._countAndFlagsBits;
    v29 = v18[2];
    v28 = v18[3];
    v11 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      sub_1C4405AF4(v28);
      sub_1C458A900();
      v18 = v49;
    }

    v18[2] = v11;
    v30 = &v18[8 * v29];
    strcpy((v30 + 32), "birthdayDate");
    *(v30 + 45) = 0;
    *(v30 + 46) = -5120;
    *(v30 + 48) = birthday;
    sub_1C4404B30(v30);
  }

  if (anniversary.value._object)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v18 = v50;
    }

    v10 = anniversary.value._countAndFlagsBits;
    v32 = v18[2];
    v31 = v18[3];
    v11 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      sub_1C4405AF4(v31);
      sub_1C458A900();
      v18 = v51;
    }

    v18[2] = v11;
    v33 = &v18[8 * v32];
    v33[2].value._countAndFlagsBits = 0x73726576696E6E61;
    v33[2].value._object = 0xEF65746144797261;
    v33[3] = anniversary;
    sub_1C4404B30(v33);
  }

  if (isFav.value._object)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v18 = v52;
    }

    v10 = isFav.value._countAndFlagsBits;
    v35 = v18[2];
    v34 = v18[3];
    v11 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      sub_1C4405AF4(v34);
      sub_1C458A900();
      v18 = v53;
    }

    v18[2] = v11;
    v36 = &v18[8 * v35];
    v36[2].value._countAndFlagsBits = 0x69726F7661467369;
    v36[2].value._object = 0xEA00000000006574;
    v36[3] = isFav;
    v36[4] = isFav;
    v36[5].value._countAndFlagsBits = 0;
    LOBYTE(v36[5].value._object) = 1;
  }

  if (object)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v18 = v54;
    }

    sub_1C4400B04();
    if (v23)
    {
      sub_1C4405AF4(v37);
      sub_1C458A900();
      v18 = v55;
    }

    v18[2] = v11;
    sub_1C4413630();
    v38[4] = v39;
    v38[5] = 0xEA00000000007265;
    v40 = v60;
    v38[6] = v60;
    v38[7] = object;
    sub_1C4404B30(v38);
  }

  else
  {
    v40 = v60;
  }

  if (isCurrentUser.value != 2 && isCurrentUser.value)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v18 = v56;
    }

    sub_1C4400B04();
    if (v23)
    {
      sub_1C4405AF4(v41);
      sub_1C458A900();
      v18 = v57;
    }

    v18[2] = v11;
    v42 = &v18[8 * v10];
    strcpy((v42 + 32), "isCurrentUser");
    *(v42 + 46) = -4864;
    *(v42 + 48) = 1702195828;
    *(v42 + 56) = 0xE400000000000000;
    sub_1C4404B30(v42);
  }

  retstr->mapLocation = mapLocation;
  retstr->basicProperties._rawValue = v18;
  retstr->identifier.value._countAndFlagsBits = v40;
  retstr->identifier.value._object = object;
}

void __swiftcall Person.init(mapLocation:identifier:displayName:customIdentifier:relationship:aliases:personHandle:)(IntelligencePlatformCore::Person *__return_ptr retstr, Swift::String mapLocation, Swift::String_optional identifier, Swift::String displayName, Swift::String_optional customIdentifier, Swift::String_optional relationship, Swift::OpaquePointer_optional aliases, INPersonHandle_optional personHandle)
{
  object = customIdentifier.value._object;
  countAndFlagsBits = customIdentifier.value._countAndFlagsBits;
  v12 = displayName._object;
  v13 = displayName._countAndFlagsBits;
  v14 = identifier.value._object;
  v15 = identifier.value._countAndFlagsBits;
  if (identifier.value._object)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C458A900();
    v17 = v16;
    v9 = v16[2];
    v8 = v9 + 1;
    if (v9 >= v16[3] >> 1)
    {
      sub_1C442007C();
      v17 = v51;
    }

    v17[2] = v8;
    sub_1C4413630();
    *(v18 + 32) = v19;
    *(v18 + 40) = 0xEA00000000007265;
    *(v18 + 48) = v15;
    *(v18 + 56) = v14;
    *(v18 + 72) = 0;
    *(v18 + 80) = 0;
    *(v18 + 64) = 0;
    *(v18 + 88) = 1;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v20 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v20 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v17 = v52;
    }

    v21 = v17[2];
    v8 = v21 + 1;
    if (v21 >= v17[3] >> 1)
    {
      sub_1C442007C();
      v17 = v53;
    }

    v17[2] = v8;
    v22 = &v17[8 * v21];
    v22[4] = 0x4E79616C70736964;
    v22[5] = 0xEB00000000656D61;
    v22[6] = v13;
    v22[7] = v12;
    sub_1C4404B30(v22);
  }

  else
  {
  }

  v23 = relationship.value._object;
  if (object)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v17 = v54;
    }

    v13 = v17[2];
    v8 = v13 + 1;
    if (v13 >= v17[3] >> 1)
    {
      sub_1C442007C();
      v17 = v55;
    }

    v17[2] = v8;
    v24 = &v17[8 * v13];
    v24[4] = 0xD000000000000010;
    v24[5] = 0x80000001C4FAEF30;
    v24[6] = countAndFlagsBits;
    v24[7] = object;
    sub_1C4404B30(v24);
  }

  rawValue = aliases.value._rawValue;
  v25 = *&aliases.is_nil;
  if (relationship.value._object)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C43FCEC0();
      sub_1C458A900();
      v17 = v56;
    }

    object = relationship.value._countAndFlagsBits;
    v27 = v17[2];
    v8 = v27 + 1;
    if (v27 >= v17[3] >> 1)
    {
      sub_1C442007C();
      v17 = v57;
    }

    v17[2] = v8;
    v28 = &v17[8 * v27];
    strcpy((v28 + 32), "relationship");
    *(v28 + 45) = 0;
    *(v28 + 46) = -5120;
    *(v28 + 48) = relationship;
    sub_1C4404B30(v28);
    v25 = *&aliases.is_nil;
  }

  if (!v25)
  {
    goto LABEL_37;
  }

  v23 = v25;
  sub_1C4A99AB0(v23);
  if (!v29 || (v8 = v29, v30 = String.normalizedContactHandle()(), v9 = v30.value._countAndFlagsBits, v13 = v30.value._object, , !v30.value._object))
  {

    goto LABEL_40;
  }

  v31 = (v30.value._object >> 56) & 0xF;
  if ((v30.value._object & 0x2000000000000000) == 0)
  {
    v31 = v30.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

LABEL_40:
    v25 = *&aliases.is_nil;
    if (aliases.value._rawValue)
    {
      goto LABEL_41;
    }

    goto LABEL_56;
  }

  [v23 type];
  sub_1C4F02858();
  v8 = sub_1C4F01168();
  object = v32;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v34 = v17[2];
    v33 = v17[3];
    if (v34 >= v33 >> 1)
    {
      sub_1C4405AF4(v33);
      sub_1C458A900();
      v17 = v59;
    }

    v17[2] = v34 + 1;
    v35 = &v17[8 * v34];
    strcpy(v35 + 32, "personHandle");
    v35[45] = 0;
    *(v35 + 23) = -5120;
    *(v35 + 6) = v9;
    *(v35 + 7) = v13;
    *(v35 + 8) = v8;
    *(v35 + 9) = object;
    *(v35 + 10) = 0;
    v35[88] = 1;
    v25 = *&aliases.is_nil;
    rawValue = aliases.value._rawValue;
LABEL_37:
    if (!rawValue)
    {
      break;
    }

LABEL_41:
    v60 = v15;
    v36 = sub_1C4428DA0(rawValue);
    v61 = v14;
    if (!v36)
    {
      goto LABEL_55;
    }

    v15 = v36;
    if (v36 >= 1)
    {
      v37 = 0;
      v64 = rawValue & 0xC000000000000001;
      do
      {
        if (v64)
        {
          v38 = MEMORY[0x1C6940F90](v37, rawValue);
        }

        else
        {
          v38 = *(rawValue + 8 * v37 + 32);
        }

        v39 = v38;
        v40 = sub_1C4A99AB0(v38);
        if (v41)
        {
          v42 = v40;
          v43 = v41;
          [v39 type];
          sub_1C4F02858();
          v44 = sub_1C4F01168();
          v46 = v45;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C43FCEC0();
            sub_1C458A900();
            v17 = v49;
          }

          v47 = v17[2];
          if (v47 >= v17[3] >> 1)
          {
            sub_1C458A900();
            v17 = v50;
          }

          v17[2] = v47 + 1;
          v48 = &v17[8 * v47];
          v48[4] = 0x73657361696C61;
          v48[5] = 0xE700000000000000;
          v48[6] = v42;
          v48[7] = v43;
          v48[8] = v44;
          v48[9] = v46;
          v48[10] = 0;
          *(v48 + 88) = 1;
          rawValue = aliases.value._rawValue;
        }

        else
        {
        }

        ++v37;
      }

      while (v15 != v37);
LABEL_55:

      v15 = v60;
      v14 = v61;
      v25 = *&aliases.is_nil;
      break;
    }

    __break(1u);
LABEL_59:
    sub_1C43FCEC0();
    sub_1C458A900();
    v17 = v58;
  }

LABEL_56:

  retstr->mapLocation = mapLocation;
  retstr->basicProperties._rawValue = v17;
  retstr->identifier.value._countAndFlagsBits = v15;
  retstr->identifier.value._object = v14;
}

uint64_t sub_1C4A9954C(uint64_t a1)
{
  v2 = sub_1C4A99B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4A99588(uint64_t a1)
{
  v2 = sub_1C4A99B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Person.encode(to:)(void *a1)
{
  sub_1C456902C(&qword_1EC0C2688, &unk_1C4F4B7D0);
  sub_1C43FFC58();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = v1[2];
  v12[2] = v1[3];
  v13 = v9;
  v12[1] = v1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4A99B14();
  sub_1C4F02BF8();
  v18 = 0;
  v10 = v14;
  sub_1C4F02798();
  if (!v10)
  {
    v15 = v13;
    v17 = 1;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
    v16 = 2;
    sub_1C4F02738();
  }

  return (*(v5 + 8))(v8, v2);
}

uint64_t Person.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C2698, &qword_1C4F4B7E0);
  sub_1C43FFC58();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4A99B14();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v25 = 0;
  v11 = sub_1C4F02678();
  v21 = v12;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  v24 = 1;
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v20 = v22;
  v23 = 2;
  v13 = sub_1C4F02618();
  v15 = v14;
  v16 = v13;
  (*(v7 + 8))(v10, v3);
  v17 = v21;
  *a2 = v11;
  a2[1] = v17;
  a2[2] = v20;
  a2[3] = v16;
  a2[4] = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

uint64_t sub_1C4A99AB0(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

unint64_t sub_1C4A99B14()
{
  result = qword_1EC0C2690;
  if (!qword_1EC0C2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2690);
  }

  return result;
}

unint64_t sub_1C4A99B68(uint64_t a1)
{
  result = sub_1C4A99B90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4A99B90()
{
  result = qword_1EC0C26A0;
  if (!qword_1EC0C26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C26A0);
  }

  return result;
}

unint64_t sub_1C4A99BE4(uint64_t a1)
{
  *(a1 + 8) = sub_1C4A99C14();
  result = sub_1C4A99C68();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4A99C14()
{
  result = qword_1EC0C26A8;
  if (!qword_1EC0C26A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C26A8);
  }

  return result;
}

unint64_t sub_1C4A99C68()
{
  result = qword_1EC0C26B0;
  if (!qword_1EC0C26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C26B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Person.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4A99DAC()
{
  result = qword_1EC0C26B8;
  if (!qword_1EC0C26B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C26B8);
  }

  return result;
}

unint64_t sub_1C4A99E04()
{
  result = qword_1EC0C26C0;
  if (!qword_1EC0C26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C26C0);
  }

  return result;
}

unint64_t sub_1C4A99E5C()
{
  result = qword_1EC0C26C8;
  if (!qword_1EC0C26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C26C8);
  }

  return result;
}

void sub_1C4A99EB0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
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
    goto LABEL_71;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_1C4AA09B0(a1, a2, 10);
LABEL_71:

    return;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) == 0)
    {
      sub_1C4F022F8();
    }

    sub_1C444151C();
    if (v7)
    {
      if (v5 >= 1)
      {
        if (v5 != 1 && v4)
        {
          sub_1C441DDEC();
          do
          {
            sub_1C4401E84();
            if (!v7 & v8)
            {
              break;
            }

            sub_1C44035F0();
            if (!v7)
            {
              break;
            }

            if (__OFADD__(v14, v13))
            {
              break;
            }

            sub_1C4414AC0();
          }

          while (!v7);
        }

        goto LABEL_71;
      }

      goto LABEL_75;
    }

    if (v6 != 45)
    {
      if (v5)
      {
        v17 = 0;
        if (v4)
        {
          v18 = 10;
          do
          {
            v19 = *v4 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v17;
            if ((v17 * v18) >> 64 != (10 * v17) >> 63)
            {
              break;
            }

            v17 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            v4 = sub_1C441AFD4(v4);
          }

          while (!v7);
        }
      }

      goto LABEL_71;
    }

    if (v5 >= 1)
    {
      if (v5 != 1 && v4)
      {
        sub_1C441DDEC();
        do
        {
          sub_1C4401E84();
          if (!v7 & v8)
          {
            break;
          }

          sub_1C44035F0();
          if (!v7)
          {
            break;
          }

          if (__OFSUB__(v10, v9))
          {
            break;
          }

          sub_1C4414AC0();
        }

        while (!v7);
      }

      goto LABEL_71;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v2)
      {
        do
        {
          sub_1C4401E84();
          if (!v7 & v8)
          {
            break;
          }

          sub_1C44035F0();
          if (!v7)
          {
            break;
          }

          if (__OFADD__(v22, v21))
          {
            break;
          }

          sub_1C4414AC0();
        }

        while (!v7);
      }

      goto LABEL_71;
    }

    if (v2)
    {
      if (v2 != 1)
      {
        sub_1C44237C4();
        do
        {
          sub_1C4401E84();
          if (!v7 & v8)
          {
            break;
          }

          sub_1C44035F0();
          if (!v7)
          {
            break;
          }

          if (__OFSUB__(v12, v11))
          {
            break;
          }

          sub_1C4414AC0();
        }

        while (!v7);
      }

      goto LABEL_71;
    }

    goto LABEL_74;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      sub_1C44237C4();
      do
      {
        sub_1C4401E84();
        if (!v7 & v8)
        {
          break;
        }

        sub_1C44035F0();
        if (!v7)
        {
          break;
        }

        if (__OFADD__(v16, v15))
        {
          break;
        }

        sub_1C4414AC0();
      }

      while (!v7);
    }

    goto LABEL_71;
  }

LABEL_76:
  __break(1u);
}

uint64_t sub_1C4A9A108()
{
  v0 = sub_1C456902C(&qword_1EC0C27C0, &qword_1C4F4C660);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C4EF97C8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C4EF92B8();
  sub_1C44F9918(v4, qword_1EC0C26D0);
  sub_1C442B738(v4, qword_1EC0C26D0);
  sub_1C4EF97B8();
  sub_1C440BAA8(v2, 1, 1, v3);
  return sub_1C4EF92A8();
}

uint64_t static PersonalKnowledgeResult.typeDisplayRepresentation.modify(__n128 a1)
{
  if (qword_1EC0B7048 != -1)
  {
    swift_once();
  }

  v1 = sub_1C4EF92B8();
  v2 = sub_1C442B738(v1, qword_1EC0C26D0);
  sub_1C4404618(v2);
  return sub_1C443598C();
}

void *sub_1C4A9A30C(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1C4A9A344(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  memcpy(v12, a2, sizeof(v12));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4813DCC(v12, __dst);
  PersonalKnowledgeResult.answerValue.setter(v3, v4, v5, v6, v7, v8, v9, v10);
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1C4AA127C(__dst);
}

uint64_t (*PersonalKnowledgeResult.answerValue.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4A9A440;
}

uint64_t (*PersonalKnowledgeResult.answerValueInteger.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t sub_1C4A9A580(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = *(a1 + 8);
  memcpy(v10, a2, sizeof(v10));
  sub_1C4813DCC(v10, __dst);
  a5(v7, v8);
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1C4AA127C(__dst);
}

uint64_t (*PersonalKnowledgeResult.answerValueDouble.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.answerValueDate.setter()
{
  v0 = sub_1C4404084();
  v2 = sub_1C456902C(v0, v1);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4401780();
  sub_1C4405254();
  sub_1C4EF9148();
  return sub_1C445E970();
}

uint64_t (*PersonalKnowledgeResult.answerValueDate.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t sub_1C4A9A7F8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(_BYTE *))
{
  v12 = sub_1C456902C(a5, a6);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17[-v14];
  sub_1C445FFF0(a1, &v17[-v14], a5, a6);
  memcpy(v17, a2, sizeof(v17));
  sub_1C4813DCC(v17, v18);
  a7(v15);
  memcpy(v18, a2, sizeof(v18));
  return sub_1C4AA127C(v18);
}

uint64_t PersonalKnowledgeResult.answerValueDuration.setter()
{
  v0 = sub_1C4404084();
  v2 = sub_1C456902C(v0, v1);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4401780();
  sub_1C4405254();
  sub_1C4EF9148();
  return sub_1C445E970();
}

uint64_t (*PersonalKnowledgeResult.answerValueDuration.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

void *sub_1C4A9AA08@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalKnowledgeResult.answerValueType.getter();
  *a1 = v3;
  return result;
}

uint64_t (*PersonalKnowledgeResult.answerValueType.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

void *sub_1C4A9AB1C@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalKnowledgeResult.answerAttribute.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1C4A9AB58(char *a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v9 = v7;
  sub_1C4813DCC(__dst, v11);
  a5(&v9);
  memcpy(v11, a2, sizeof(v11));
  return sub_1C4AA127C(v11);
}

uint64_t (*PersonalKnowledgeResult.answerAttribute.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

void *sub_1C4A9ACA8@<X0>(_BYTE *a1@<X8>)
{
  result = PersonalKnowledgeResult.answerComputation.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1C4A9ACE4(char *a1, const void *a2)
{
  v3 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v5 = v3;
  sub_1C4813DCC(__dst, v7);
  PersonalKnowledgeResult.answerComputation.setter(&v5);
  memcpy(v7, a2, sizeof(v7));
  return sub_1C4AA127C(v7);
}

uint64_t (*PersonalKnowledgeResult.answerComputation.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t sub_1C4A9AE3C(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  memcpy(v5, a2, sizeof(v5));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4813DCC(v5, __dst);
  PersonalKnowledgeResult.answerSource.setter(v3);
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1C4AA127C(__dst);
}

uint64_t (*PersonalKnowledgeResult.answerSource.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t (*PersonalKnowledgeResult.name.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t (*PersonalKnowledgeResult.firstName.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t (*PersonalKnowledgeResult.lastName.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t (*PersonalKnowledgeResult.phoneNumber.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t (*PersonalKnowledgeResult.emailAddress.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t (*PersonalKnowledgeResult.to.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t (*PersonalKnowledgeResult.from.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t (*PersonalKnowledgeResult.relationshipName.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t (*PersonalKnowledgeResult.address.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.startDate.setter()
{
  v0 = sub_1C4404084();
  v2 = sub_1C456902C(v0, v1);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4401780();
  sub_1C4405254();
  sub_1C4EF9148();
  return sub_1C445E970();
}

uint64_t (*PersonalKnowledgeResult.startDate.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t PersonalKnowledgeResult.endDate.setter()
{
  v0 = sub_1C4404084();
  v2 = sub_1C456902C(v0, v1);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4401780();
  sub_1C4405254();
  sub_1C4EF9148();
  return sub_1C445E970();
}

uint64_t (*PersonalKnowledgeResult.endDate.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t (*PersonalKnowledgeResult.app.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

uint64_t sub_1C4A9BAF0(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  memcpy(v9, a2, sizeof(v9));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4813DCC(v9, __dst);
  v7 = sub_1C4404084();
  a5(v7);
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1C4AA127C(__dst);
}

uint64_t (*PersonalKnowledgeResult.interest.modify())()
{
  v1 = sub_1C43FF4CC();
  v2 = sub_1C4A9A30C(v1);
  sub_1C4408F2C(v2);
  *(v0 + 32) = sub_1C4EF9128();
  return sub_1C4AA1308;
}

void sub_1C4A9BBF8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t PersonalKnowledgeResult.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C4EF97C8();
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C456902C(&qword_1EC0C2738, &qword_1C4F4B9E0);
  sub_1C442D148();
  sub_1C4EF97B8();
  *a1 = sub_1C4EF9198();
  sub_1C456902C(&qword_1EC0C2740, &qword_1C4F4B9E8);
  v7 = sub_1C442D148();
  sub_1C441CCDC(v7);
  sub_1C4EF97B8();
  a1[1] = sub_1C4EF91B8();
  sub_1C456902C(&qword_1EC0C2748, &qword_1C4F4B9F0);
  sub_1C4409FC0();
  sub_1C4EF97B8();
  a1[2] = sub_1C4EF91A8();
  sub_1C456902C(&qword_1EC0C2750, &qword_1C4F4B9F8);
  sub_1C4EF97B8();
  a1[3] = sub_1C4EF9188();
  sub_1C456902C(&qword_1EC0C2758, &qword_1C4F4BA00);
  sub_1C44352DC();
  sub_1C4EF97B8();
  a1[4] = MEMORY[0x1C6937E60](v6);
  sub_1C456902C(&qword_1EC0C2760, &qword_1C4F4BA08);
  sub_1C442D148();
  sub_1C4EF97B8();
  sub_1C4A9C0DC();
  a1[5] = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2770, &qword_1C4F4BA10);
  sub_1C4430078();
  sub_1C4EF97B8();
  sub_1C4A9C130();
  a1[6] = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2780, &qword_1C4F4BA18);
  sub_1C4430078();
  sub_1C4EF97B8();
  sub_1C4A9C184();
  a1[7] = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2790, &qword_1C4F4BA20);
  v8 = sub_1C442D148();
  sub_1C44336D8(v8);
  sub_1C4EF97B8();
  a1[8] = sub_1C4EF9198();
  sub_1C456902C(&qword_1EC0C2798, &qword_1C4F4BA28);
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[9] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[10] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[11] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[12] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[13] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[14] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[15] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[16] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[17] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[18] = sub_1C4EF9188();
  sub_1C4430078();
  sub_1C4EF97B8();
  a1[19] = sub_1C4EF9188();
  sub_1C4430078();
  sub_1C4460344(v9, v10);
  a1[20] = sub_1C4EF9198();
  sub_1C4430078();
  sub_1C4460344(v11, v12);
  result = sub_1C4EF9198();
  a1[21] = result;
  return result;
}

unint64_t sub_1C4A9C0DC()
{
  result = qword_1EC0C2768;
  if (!qword_1EC0C2768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2768);
  }

  return result;
}

unint64_t sub_1C4A9C130()
{
  result = qword_1EC0C2778;
  if (!qword_1EC0C2778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2778);
  }

  return result;
}

unint64_t sub_1C4A9C184()
{
  result = qword_1EC0C2788;
  if (!qword_1EC0C2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2788);
  }

  return result;
}

void PersonalKnowledgeResult.init(answerValue:)()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = sub_1C4EF97C8();
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C456902C(&qword_1EC0C2738, &qword_1C4F4B9E0);
  sub_1C442D148();
  sub_1C4EF97B8();
  *v1 = sub_1C4EF9198();
  sub_1C456902C(&qword_1EC0C2740, &qword_1C4F4B9E8);
  v7 = sub_1C442D148();
  sub_1C441CCDC(v7);
  sub_1C4EF97B8();
  v1[1] = sub_1C4EF91B8();
  sub_1C456902C(&qword_1EC0C2748, &qword_1C4F4B9F0);
  sub_1C4409FC0();
  sub_1C4EF97B8();
  v1[2] = sub_1C4EF91A8();
  sub_1C456902C(&qword_1EC0C2750, &qword_1C4F4B9F8);
  sub_1C4EF97B8();
  v1[3] = sub_1C4EF9188();
  sub_1C456902C(&qword_1EC0C2758, &qword_1C4F4BA00);
  sub_1C44352DC();
  sub_1C4EF97B8();
  v1[4] = MEMORY[0x1C6937E60](v6);
  sub_1C456902C(&qword_1EC0C2760, &qword_1C4F4BA08);
  sub_1C442D148();
  sub_1C4EF97B8();
  sub_1C4A9C0DC();
  v1[5] = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2770, &qword_1C4F4BA10);
  sub_1C4425F0C();
  sub_1C4EF97B8();
  sub_1C4A9C130();
  v1[6] = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2780, &qword_1C4F4BA18);
  sub_1C4425F0C();
  sub_1C4EF97B8();
  sub_1C4A9C184();
  v1[7] = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2790, &qword_1C4F4BA20);
  v8 = sub_1C442D148();
  sub_1C44336D8(v8);
  sub_1C4EF97B8();
  v1[8] = sub_1C4EF9198();
  sub_1C456902C(&qword_1EC0C2798, &qword_1C4F4BA28);
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[9] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[10] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[11] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[12] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[13] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[14] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[15] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[16] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[17] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[18] = sub_1C4EF9188();
  sub_1C4425F0C();
  sub_1C4EF97B8();
  v1[19] = sub_1C4EF9188();
  sub_1C4425F0C();
  sub_1C4460344(v9, v10);
  v1[20] = sub_1C4EF9198();
  sub_1C4425F0C();
  sub_1C4460344(v11, v12);
  v1[21] = sub_1C4EF9198();
  sub_1C4EF9148();
  sub_1C43FE9F0();
}

void *static PersonalKnowledgeResult.buildBasedOnKnosisAnswer(answer:resultAttribute:dateComponentsFormatter:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v7 = sub_1C456902C(&qword_1EC0C27A0, &unk_1C4F4BA30);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4401780();
  v9 = sub_1C4EFDB88();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    sub_1C445FFF0(a1, v3, &qword_1EC0C27A0, &unk_1C4F4BA30);
    PersonalKnowledgeResult.init(_:resultAttribute:dateComponentsFormatter:)(v11, v12, v3, a2, __src);
    nullsub_1();
  }

  else
  {
    sub_1C4A9C758(__src);
  }

  return memcpy(a3, __src, 0xB0uLL);
}

void PersonalKnowledgeResult.init(_:resultAttribute:dateComponentsFormatter:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v158 = a2;
  v159 = a4;
  v156 = a3;
  v157 = a1;
  v7 = sub_1C456902C(&qword_1EC0C2730, &qword_1C4F4B9D8);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v132 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v133 = &v129 - v11;
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = sub_1C43FBD18(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v130 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v131 = &v129 - v16;
  v139 = sub_1C4F00088();
  sub_1C43FCDF8();
  v138 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v137 = v20 - v19;
  v136 = sub_1C4F000A8();
  sub_1C43FCDF8();
  v135 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  v26 = sub_1C456902C(&qword_1EC0C27A0, &unk_1C4F4BA30);
  sub_1C43FBD18(v26);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v129 - v28;
  v30 = sub_1C4F00038();
  sub_1C43FCDF8();
  v134 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  sub_1C43FE61C();
  v33 = sub_1C4EF97C8();
  v34 = sub_1C43FBD18(v33);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  v37 = v36 - v35;
  sub_1C456902C(&qword_1EC0C2738, &qword_1C4F4B9E0);
  sub_1C442D148();
  sub_1C4EF97B8();
  v155 = sub_1C4EF9198();
  sub_1C456902C(&qword_1EC0C2740, &qword_1C4F4B9E8);
  v38 = sub_1C442D148();
  sub_1C441CCDC(v38);
  sub_1C4EF97B8();
  v154 = sub_1C4EF91B8();
  sub_1C456902C(&qword_1EC0C2748, &qword_1C4F4B9F0);
  sub_1C4409FC0();
  sub_1C4EF97B8();
  v162 = sub_1C4EF91A8();
  sub_1C456902C(&qword_1EC0C2750, &qword_1C4F4B9F8);
  sub_1C4EF97B8();
  v161 = sub_1C4EF9188();
  sub_1C456902C(&qword_1EC0C2758, &qword_1C4F4BA00);
  sub_1C44352DC();
  sub_1C4EF97B8();
  v160 = MEMORY[0x1C6937E60](v37);
  sub_1C456902C(&qword_1EC0C2760, &qword_1C4F4BA08);
  sub_1C442D148();
  sub_1C4EF97B8();
  sub_1C4A9C0DC();
  v163 = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2770, &qword_1C4F4BA10);
  sub_1C43FC778();
  sub_1C4EF97B8();
  sub_1C4A9C130();
  v164 = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2780, &qword_1C4F4BA18);
  sub_1C43FC778();
  sub_1C4EF97B8();
  sub_1C4A9C184();
  v153 = sub_1C4EF9168();
  sub_1C456902C(&qword_1EC0C2790, &qword_1C4F4BA20);
  v39 = sub_1C442D148();
  sub_1C44336D8(v39);
  sub_1C4EF97B8();
  v152 = sub_1C4EF9198();
  sub_1C456902C(&qword_1EC0C2798, &qword_1C4F4BA28);
  sub_1C43FC778();
  sub_1C4EF97B8();
  v151 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v150 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v149 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v148 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v147 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v146 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v145 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v144 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v143 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v142 = sub_1C4EF9188();
  sub_1C43FC778();
  sub_1C4EF97B8();
  v40 = v30;
  v41 = sub_1C4EF9188();
  sub_1C43FC778();
  sub_1C4460344(v42, v43);
  v141 = sub_1C4EF9198();
  sub_1C43FC778();
  sub_1C4460344(v44, v45);
  v47 = v155;
  v46 = v156;
  v140 = sub_1C4EF9198();
  v166 = v157;
  v167 = v158;
  sub_1C4EF9148();
  sub_1C445FFF0(v46, v29, &qword_1EC0C27A0, &unk_1C4F4BA30);
  if (sub_1C44157D4(v29, 1, v40) != 1)
  {
    v158 = v41;
    (*(v134 + 32))(v5, v29, v40);
    sub_1C4F00018();
    v62 = sub_1C4F00098();
    v64 = v63;
    (*(v135 + 8))(v25, v136);
    v65._countAndFlagsBits = v62;
    v65._object = v64;
    PersonalKnowledgeResult.AnswerAttribute.init(rawValue:)(v65);
    v66 = v166;
    v67 = v159;
    if (v166 != 18)
    {
      sub_1C4EF9148();
      if (v66 == 15)
      {
        sub_1C446BFD8();
        v68 = sub_1C49F2108(v166, v167);
        if ((v69 & 1) == 0)
        {
          v70 = [v67 stringFromTimeInterval_];
          if (v70)
          {
            v71 = v70;
            v72 = sub_1C4F01138();
            v74 = v73;

            v166 = v72;
            v167 = v74;
            sub_1C4EF9148();
          }
        }
      }
    }

    v75 = v137;
    sub_1C4F00028();
    v76 = sub_1C4F00078();
    v78 = v77;
    (*(v138 + 8))(v75, v139);
    v79._countAndFlagsBits = v76;
    v79._object = v78;
    PersonalKnowledgeResult.AnswerValueType.init(rawValue:)(v79);
    v80 = v166;
    if (v166 == 5)
    {
LABEL_9:

      sub_1C4420C3C(v46, &qword_1EC0C27A0, &unk_1C4F4BA30);
      v81 = sub_1C443FF24();
      v82(v81);
      v48 = v154;
LABEL_10:
      v49 = v163;
LABEL_43:
      sub_1C447F288();
      v58 = v145;
      v59 = v144;
      v60 = v143;
      v61 = v142;
      v41 = v158;
      goto LABEL_44;
    }

    v49 = v163;
    sub_1C4EF9148();
    switch(v80)
    {
      case 1:
        sub_1C446BFD8();
        v83 = HIBYTE(v167) & 0xF;
        if ((v167 & 0x2000000000000000) != 0)
        {
          v84 = HIBYTE(v167) & 0xF;
        }

        else
        {
          v84 = v166 & 0xFFFFFFFFFFFFLL;
        }

        if (!v84)
        {

          goto LABEL_9;
        }

        if ((v167 & 0x1000000000000000) != 0)
        {
          sub_1C4AA09B0(v166, v167, 10);
          v89 = v127;
          v124 = v128;
          goto LABEL_97;
        }

        if ((v167 & 0x2000000000000000) != 0)
        {
          v167 &= 0xFFFFFFFFFFFFFFuLL;
          if (v166 == 43)
          {
            if (v83)
            {
              if (v83 != 1)
              {
                sub_1C443F6F4();
                while (1)
                {
                  sub_1C4401E84();
                  if (!v88 & v90)
                  {
                    break;
                  }

                  sub_1C43FDCC4();
                  if (!v88)
                  {
                    break;
                  }

                  v89 = v118 + v117;
                  if (__OFADD__(v118, v117))
                  {
                    break;
                  }

                  sub_1C4414AC0();
                  if (v88)
                  {
                    goto LABEL_96;
                  }
                }
              }

              goto LABEL_95;
            }

LABEL_104:
            __break(1u);
            return;
          }

          if (v166 != 45)
          {
            if (v83)
            {
              while (1)
              {
                sub_1C4401E84();
                if (!v88 & v90)
                {
                  break;
                }

                sub_1C43FDCC4();
                if (!v88)
                {
                  break;
                }

                v89 = v123 + v122;
                if (__OFADD__(v123, v122))
                {
                  break;
                }

                sub_1C4414AC0();
                if (v88)
                {
                  goto LABEL_96;
                }
              }
            }

            goto LABEL_95;
          }

          if (v83)
          {
            if (v83 != 1)
            {
              sub_1C443F6F4();
              while (1)
              {
                sub_1C4401E84();
                if (!v88 & v90)
                {
                  break;
                }

                sub_1C43FDCC4();
                if (!v88)
                {
                  break;
                }

                v89 = v114 - v113;
                if (__OFSUB__(v114, v113))
                {
                  break;
                }

                sub_1C4414AC0();
                if (v88)
                {
                  goto LABEL_96;
                }
              }
            }

            goto LABEL_95;
          }
        }

        else
        {
          if ((v166 & 0x1000000000000000) == 0)
          {
            sub_1C4F022F8();
          }

          sub_1C444151C();
          if (v88)
          {
            if (v86 >= 1)
            {
              if (v86 != 1)
              {
                v89 = 0;
                if (v85)
                {
                  sub_1C441DDEC();
                  while (1)
                  {
                    sub_1C4401E84();
                    if (!v88 & v90)
                    {
                      goto LABEL_95;
                    }

                    sub_1C43FDCC4();
                    if (!v88)
                    {
                      goto LABEL_95;
                    }

                    v89 = v116 + v115;
                    if (__OFADD__(v116, v115))
                    {
                      goto LABEL_95;
                    }

                    sub_1C4414AC0();
                    if (v88)
                    {
                      goto LABEL_96;
                    }
                  }
                }

                goto LABEL_86;
              }

              goto LABEL_95;
            }

            goto LABEL_103;
          }

          if (v87 != 45)
          {
            if (v86)
            {
              v89 = 0;
              if (v85)
              {
                v119 = 10;
                while (1)
                {
                  v120 = *v85 - 48;
                  if (v120 > 9)
                  {
                    goto LABEL_95;
                  }

                  v121 = 10 * v89;
                  if ((v89 * v119) >> 64 != (10 * v89) >> 63)
                  {
                    goto LABEL_95;
                  }

                  v89 = v121 + v120;
                  if (__OFADD__(v121, v120))
                  {
                    goto LABEL_95;
                  }

                  v85 = sub_1C441AFD4(v85);
                  if (v88)
                  {
                    goto LABEL_86;
                  }
                }
              }

              goto LABEL_86;
            }

LABEL_95:
            v89 = 0;
            v93 = 1;
            goto LABEL_96;
          }

          if (v86 >= 1)
          {
            if (v86 != 1)
            {
              v89 = 0;
              if (v85)
              {
                sub_1C441DDEC();
                while (1)
                {
                  sub_1C4401E84();
                  if (!v88 & v90)
                  {
                    goto LABEL_95;
                  }

                  sub_1C43FDCC4();
                  if (!v88)
                  {
                    goto LABEL_95;
                  }

                  v89 = v92 - v91;
                  if (__OFSUB__(v92, v91))
                  {
                    goto LABEL_95;
                  }

                  sub_1C4414AC0();
                  if (v88)
                  {
                    goto LABEL_96;
                  }
                }
              }

LABEL_86:
              v93 = 0;
LABEL_96:
              v165 = v93;
              v124 = v93;
LABEL_97:

              if (v124)
              {
                goto LABEL_9;
              }

              v166 = v89;
              LOBYTE(v167) = 0;
              v48 = v154;
              sub_1C4EF9148();

              sub_1C4420C3C(v46, &qword_1EC0C27A0, &unk_1C4F4BA30);
              v125 = sub_1C443FF24();
              v126(v125);
              goto LABEL_10;
            }

            goto LABEL_95;
          }

          __break(1u);
        }

        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      case 2:
        sub_1C446BFD8();
        v100 = sub_1C49F2108(v166, v167);
        v48 = v154;
        if ((v101 & 1) == 0)
        {
          v166 = v100;
          LOBYTE(v167) = 0;
          sub_1C4EF9148();
        }

        sub_1C4420C3C(v46, &qword_1EC0C27A0, &unk_1C4F4BA30);
        v102 = sub_1C443FF24();
        v103(v102);
        goto LABEL_43;
      case 3:
        sub_1C446BFD8();
        sub_1C49F2108(v166, v167);
        if (v104)
        {
          goto LABEL_39;
        }

        v106 = [objc_opt_self() seconds];
        sub_1C4A9D6B4();
        v107 = v133;
        sub_1C4EF93F8();
        v108 = sub_1C456902C(&qword_1EC0C27B0, &unk_1C4F5E170);
        sub_1C447F9DC(v108);
        v97 = &qword_1C4F4B9D8;
        sub_1C445FFF0(v107, v132, &qword_1EC0C2730, &qword_1C4F4B9D8);
        sub_1C4EF9148();

        sub_1C4420C3C(v46, &qword_1EC0C27A0, &unk_1C4F4BA30);
        v98 = v107;
        v99 = &qword_1EC0C2730;
        goto LABEL_41;
      case 4:
        sub_1C446BFD8();
        sub_1C49F2108(v166, v167);
        if (v94)
        {
          goto LABEL_39;
        }

        v95 = v131;
        sub_1C4EF9AC8();
        v96 = sub_1C4EF9CD8();
        sub_1C447F9DC(v96);
        v97 = qword_1C4F0D2D0;
        sub_1C445FFF0(v95, v130, &unk_1EC0B84E0, qword_1C4F0D2D0);
        sub_1C4EF9148();

        sub_1C4420C3C(v46, &qword_1EC0C27A0, &unk_1C4F4BA30);
        v98 = v95;
        v99 = &unk_1EC0B84E0;
LABEL_41:
        v105 = v97;
        v49 = v163;
        goto LABEL_42;
      default:
LABEL_39:

        v99 = &qword_1EC0C27A0;
        v105 = &unk_1C4F4BA30;
        v98 = v46;
LABEL_42:
        sub_1C4420C3C(v98, v99, v105);
        v109 = sub_1C443FF24();
        v110(v109);
        v48 = v154;
        goto LABEL_43;
    }
  }

  sub_1C4420C3C(v46, &qword_1EC0C27A0, &unk_1C4F4BA30);

  sub_1C4420C3C(v29, &qword_1EC0C27A0, &unk_1C4F4BA30);
  v48 = v154;
  v49 = v163;
  sub_1C447F288();
  v58 = v145;
  v59 = v144;
  v60 = v143;
  v61 = v142;
LABEL_44:
  v111 = v141;
  v112 = v140;
  *a5 = v47;
  a5[1] = v48;
  a5[2] = v162;
  a5[3] = v161;
  a5[4] = v160;
  a5[5] = v49;
  a5[6] = v164;
  a5[7] = v50;
  a5[8] = v51;
  a5[9] = v52;
  a5[10] = v53;
  a5[11] = v54;
  a5[12] = v55;
  a5[13] = v56;
  a5[14] = v57;
  a5[15] = v58;
  a5[16] = v59;
  a5[17] = v60;
  a5[18] = v61;
  a5[19] = v41;
  a5[20] = v111;
  a5[21] = v112;
}