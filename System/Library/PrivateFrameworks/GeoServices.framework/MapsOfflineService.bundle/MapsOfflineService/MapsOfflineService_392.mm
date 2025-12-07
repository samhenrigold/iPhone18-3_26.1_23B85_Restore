void sub_15D418C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_70;
  }

  if (v4)
  {
    v5 = *(a2 + 24);
    *(a1 + 16) |= 1u;
    v6 = *(a1 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    sub_194EA1C((a1 + 24), (v5 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v4 & 2) == 0)
    {
LABEL_4:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

  *(a1 + 16) |= 2u;
  v8 = *(a1 + 32);
  if (!v8)
  {
    v9 = *(a1 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    v8 = sub_16F5F38(v10);
    *(a1 + 32) = v8;
  }

  if (*(a2 + 32))
  {
    v11 = *(a2 + 32);
  }

  else
  {
    v11 = &off_277E980;
  }

  sub_121721C(v8, v11);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_20:
  *(a1 + 16) |= 4u;
  v12 = *(a1 + 40);
  if (!v12)
  {
    v13 = *(a1 + 8);
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    sub_15D4C54(v14);
    *(a1 + 40) = v12;
  }

  if (*(a2 + 40))
  {
    v15 = *(a2 + 40);
  }

  else
  {
    v15 = &off_27795F8;
  }

  sub_15D31B4(v12, v15);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_36:
    *(a1 + 16) |= 0x10u;
    v20 = *(a1 + 56);
    if (!v20)
    {
      v21 = *(a1 + 8);
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v20 = sub_15BAF80(v22);
      *(a1 + 56) = v20;
    }

    if (*(a2 + 56))
    {
      v23 = *(a2 + 56);
    }

    else
    {
      v23 = &off_2778B50;
    }

    sub_14B0C78(v20, v23);
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_44;
  }

LABEL_28:
  *(a1 + 16) |= 8u;
  v16 = *(a1 + 48);
  if (!v16)
  {
    v17 = *(a1 + 8);
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
    if (v17)
    {
      v18 = *v18;
    }

    sub_14D6BF8(v18);
    *(a1 + 48) = v16;
  }

  if (*(a2 + 48))
  {
    v19 = *(a2 + 48);
  }

  else
  {
    v19 = &off_2774648;
  }

  sub_14D6A80(v16, v19);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_36;
  }

LABEL_7:
  if ((v4 & 0x20) != 0)
  {
LABEL_44:
    *(a1 + 16) |= 0x20u;
    v24 = *(a1 + 64);
    if (!v24)
    {
      v25 = *(a1 + 8);
      v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
      if (v25)
      {
        v26 = *v26;
      }

      v24 = sub_16F5DB8(v26);
      *(a1 + 64) = v24;
    }

    if (*(a2 + 64))
    {
      v27 = *(a2 + 64);
    }

    else
    {
      v27 = &off_277E820;
    }

    sub_16EC8A0(v24, v27);
  }

LABEL_52:
  if ((v4 & 0x40) != 0)
  {
    *(a1 + 16) |= 0x40u;
    v28 = *(a1 + 72);
    if (!v28)
    {
      v29 = *(a1 + 8);
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
      if (v29)
      {
        v30 = *v30;
      }

      v28 = sub_157B6F8(v30);
      *(a1 + 72) = v28;
    }

    if (*(a2 + 72))
    {
      v31 = *(a2 + 72);
    }

    else
    {
      v31 = &off_2777780;
    }

    sub_15798EC(v28, v31);
  }

  if ((v4 & 0x80) != 0)
  {
    *(a1 + 16) |= 0x80u;
    v32 = *(a1 + 80);
    if (!v32)
    {
      v33 = *(a1 + 8);
      v34 = (v33 & 0xFFFFFFFFFFFFFFFCLL);
      if (v33)
      {
        v34 = *v34;
      }

      v32 = sub_157B6F8(v34);
      *(a1 + 80) = v32;
    }

    if (*(a2 + 80))
    {
      v35 = *(a2 + 80);
    }

    else
    {
      v35 = &off_2777780;
    }

    sub_15798EC(v32, v35);
  }

LABEL_70:
  if ((v4 & 0x100) != 0)
  {
    v36 = *(a2 + 88);
    *(a1 + 16) |= 0x100u;
    *(a1 + 88) = v36;
  }

  v37 = *(a2 + 8);
  if (v37)
  {

    sub_1957EF4((a1 + 8), (v37 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t sub_15D4468(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_16EE510(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_15D3400(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_14D6BB8(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = sub_16ECE70(*(a1 + 64));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_15D44EC(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F4578;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  result[5] = 0;
  return result;
}

uint64_t sub_15D4574(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F45F8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a1;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = &qword_278E990;
  *(result + 80) = &qword_278E990;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

double sub_15D462C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_15C1638(v2, a1, 0);
}

void *sub_15D468C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F46F8;
  result[2] = 0;
  result[4] = 0;
  result[5] = 0;
  result[3] = &qword_278E990;
  return result;
}

double sub_15D4714(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *v2 = &off_26F4778;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = a1;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = a1;
  *(v2 + 136) = &qword_278E990;
  *(v2 + 144) = &qword_278E990;
  result = 0.0;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 232) = 0u;
  *(v2 + 248) = 0u;
  *(v2 + 264) = 0;
  return result;
}

void *sub_15D4804(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F47F8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = 0;
  return result;
}

uint64_t sub_15D4888(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F4878;
  *(result + 8) = a1;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_15D492C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F48F8;
  *(result + 16) = 0;
  *(result + 24) = &qword_278E990;
  *(result + 32) = &qword_278E990;
  *(result + 40) = &qword_278E990;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

void *sub_15D49B8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F4978;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  result[4] = 0;
  result[5] = 0;
  result[6] = &qword_278E990;
  return result;
}

void *sub_15D4A5C(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &off_26F49F8;
  result[2] = 0;
  result[3] = &qword_278E990;
  result[4] = &qword_278E990;
  return result;
}

uint64_t sub_15D4AE0(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &off_26F4A78;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_15D4B7C(uint64_t *a1)
{
  if (!a1)
  {

    sub_15D7A78();
  }

  return sub_15CF448(v3, a1, 0);
}

uint64_t sub_15D4BD8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &off_26F4B78;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_15D4C54(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F4BF8;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  return result;
}

double sub_15D4CE8(uint64_t *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(v2 + 8) = a1;
  *v2 = &off_26F4C78;
  *(v2 + 16) = 0;
  *(v2 + 24) = &qword_278E990;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  return result;
}

void *sub_15D4D78(void *a1, uint64_t a2, int a3)
{
  v5 = a2 | 2;
  if (!a3)
  {
    v5 = a2;
  }

  a1[1] = v5;
  *a1 = off_26F4CF8;
  sub_194F82C((a1 + 2), a2);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = a2;
  a1[8] = 0;
  a1[9] = a2;
  a1[10] = &qword_278E990;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_15D4DF8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_15D4E28(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 80);
  if (*(a1 + 80) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_1956ABC(a1 + 64);
  sub_1956ABC(a1 + 48);
  sub_194F914(a1 + 16);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15D4EE0(uint64_t a1)
{
  sub_15D4E28(a1);

  operator delete();
}

unsigned __int8 *sub_15D4F18(uint64_t a1)
{
  result = sub_1951124((a1 + 16));
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

  if ((v3 & 0x1E) != 0)
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
  }

  v6 = *(a1 + 8);
  v5 = a1 + 8;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

uint64_t sub_15D4FB0(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v51 = a2;
  v6 = 0;
  if ((sub_195ADC0(a3, v51, a3[11].u32[1]) & 1) == 0)
  {
    v8 = (a1 + 8);
    do
    {
      v9 = (*v51 + 1);
      v10 = **v51;
      if (**v51 < 0)
      {
        v11 = *v9;
        v12 = v10 + (v11 << 7);
        v10 = v12 - 128;
        if (v11 < 0)
        {
          v9 = sub_1958824(*v51, v12 - 128);
          v10 = v13;
        }

        else
        {
          v9 = (*v51 + 2);
        }
      }

      *v51 = v9;
      v14 = v10 >> 3;
      if (v10 >> 3 <= 3)
      {
        if (v14 == 1)
        {
          if (v10 == 10)
          {
            *(a1 + 40) |= 1u;
            v30 = *(a1 + 8);
            v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
            if (v30)
            {
              v31 = *v31;
            }

            v32 = sub_194DB04((a1 + 80), v31);
            v33 = sub_1958890(v32, *v51, a3);
LABEL_91:
            *v51 = v33;
            if (!v33)
            {
              goto LABEL_97;
            }

            continue;
          }

LABEL_82:
          if (v10)
          {
            v49 = (v10 & 7) == 4;
          }

          else
          {
            v49 = 1;
          }

          if (v49)
          {
            if (v9)
            {
              a3[10].i32[0] = v10 - 1;
              break;
            }

LABEL_97:
            *v51 = 0;
            break;
          }

          if ((v10 - 8008) >> 3 > 0x3E6)
          {
            if (*v8)
            {
              v50 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
            }

            else
            {
              v50 = sub_11F1920((a1 + 8));
              v9 = *v51;
            }

            v33 = sub_1952690(v10, v50, v9, a3);
          }

          else
          {
            v33 = sub_19525AC((a1 + 16), v10, v9, &off_27796E0, (a1 + 8), a3);
          }

          goto LABEL_91;
        }

        if (v14 == 2)
        {
          if (v10 != 21)
          {
            goto LABEL_82;
          }

          v6 |= 2u;
          *(a1 + 88) = *v9;
          *v51 = v9 + 4;
        }

        else
        {
          if (v14 != 3 || v10 != 24)
          {
            goto LABEL_82;
          }

          v6 |= 4u;
          v20 = v9 + 1;
          LODWORD(v19) = *v9;
          if ((v19 & 0x80) != 0)
          {
            v21 = *v20;
            v19 = v19 + (v21 << 7) - 128;
            if (v21 < 0)
            {
              v47 = sub_19587DC(v9, v19);
              *v51 = v47;
              *(a1 + 92) = v48;
              if (!v47)
              {
                goto LABEL_97;
              }

              continue;
            }

            v20 = v9 + 2;
          }

          *v51 = v20;
          *(a1 + 92) = v19;
        }
      }

      else
      {
        if (v10 >> 3 > 5)
        {
          if (v14 == 6)
          {
            if (v10 == 48)
            {
              v37 = v9 - 1;
              while (1)
              {
                *v51 = v37 + 1;
                v38 = v37[1];
                if (v38 < 0)
                {
                  v39 = (v37[2] << 7) + v38;
                  LODWORD(v38) = v39 - 128;
                  if (v37[2] < 0)
                  {
                    v37 = sub_19587DC((v37 + 1), (v39 - 128));
                    LODWORD(v38) = v40;
                  }

                  else
                  {
                    v37 += 3;
                  }
                }

                else
                {
                  v37 += 2;
                }

                *v51 = v37;
                v41 = *(a1 + 48);
                if (v41 == *(a1 + 52))
                {
                  v42 = v41 + 1;
                  sub_1958E5C((a1 + 48), v41 + 1);
                  *(*(a1 + 56) + 4 * v41) = v38;
                  v37 = *v51;
                }

                else
                {
                  *(*(a1 + 56) + 4 * v41) = v38;
                  v42 = v41 + 1;
                }

                *(a1 + 48) = v42;
                if (!v37)
                {
                  goto LABEL_97;
                }

                if (*a3 <= v37 || *v37 != 48)
                {
                  goto LABEL_92;
                }
              }
            }

            if (v10 == 50)
            {
              v33 = sub_1958908((a1 + 48), v9, a3);
              goto LABEL_91;
            }

            goto LABEL_82;
          }

          if (v14 != 7)
          {
            goto LABEL_82;
          }

          if (v10 != 56)
          {
            if (v10 == 58)
            {
              *&v52 = a1 + 64;
              *(&v52 + 1) = sub_1578F74;
              v53 = a1 + 8;
              v54 = 7;
              v33 = sub_1216588(a3, v9, &v52, v5);
              goto LABEL_91;
            }

            goto LABEL_82;
          }

          v22 = (v9 - 1);
LABEL_32:
          *v51 = v22 + 1;
          v23 = *(v22 + 1);
          v24 = (v22 + 2);
          if (v23 < 0)
          {
            v25 = *v24;
            v26 = (v25 << 7) + v23;
            LODWORD(v23) = v26 - 128;
            if ((v25 & 0x80000000) == 0)
            {
              v24 = (v22 + 3);
              goto LABEL_35;
            }

            *v51 = sub_19587DC(v22 + 1, (v26 - 128));
            if (!*v51)
            {
              goto LABEL_97;
            }

            LODWORD(v23) = v29;
          }

          else
          {
LABEL_35:
            *v51 = v24;
          }

          if (sub_1578F74(v23))
          {
            v27 = *(a1 + 64);
            if (v27 == *(a1 + 68))
            {
              v28 = v27 + 1;
              sub_1958E5C((a1 + 64), v27 + 1);
              *(*(a1 + 72) + 4 * v27) = v23;
            }

            else
            {
              *(*(a1 + 72) + 4 * v27) = v23;
              v28 = v27 + 1;
            }

            *(a1 + 64) = v28;
          }

          else
          {
            sub_13137F8();
          }

          v22 = *v51;
          if (*a3 <= *v51 || **v51 != 56)
          {
            continue;
          }

          goto LABEL_32;
        }

        if (v14 == 4)
        {
          if (v10 != 32)
          {
            goto LABEL_82;
          }

          v6 |= 8u;
          v35 = v9 + 1;
          LODWORD(v34) = *v9;
          if ((v34 & 0x80) != 0)
          {
            v36 = *v35;
            v34 = v34 + (v36 << 7) - 128;
            if (v36 < 0)
            {
              v43 = sub_19587DC(v9, v34);
              *v51 = v43;
              *(a1 + 96) = v44;
              if (!v43)
              {
                goto LABEL_97;
              }

              continue;
            }

            v35 = v9 + 2;
          }

          *v51 = v35;
          *(a1 + 96) = v34;
        }

        else
        {
          if (v14 != 5 || v10 != 40)
          {
            goto LABEL_82;
          }

          v6 |= 0x10u;
          v16 = v9 + 1;
          LODWORD(v15) = *v9;
          if ((v15 & 0x80) != 0)
          {
            v17 = *v16;
            v15 = v15 + (v17 << 7) - 128;
            if (v17 < 0)
            {
              v45 = sub_19587DC(v9, v15);
              *v51 = v45;
              *(a1 + 100) = v46;
              if (!v45)
              {
                goto LABEL_97;
              }

              continue;
            }

            v16 = v9 + 2;
          }

          *v51 = v16;
          *(a1 + 100) = v15;
        }
      }

LABEL_92:
      ;
    }

    while ((sub_195ADC0(a3, v51, a3[11].u32[1]) & 1) == 0);
  }

  *(a1 + 40) |= v6;
  return *v51;
}

char *sub_15D54C0(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v8 = *(a1 + 88);
    *v4 = 21;
    *(v4 + 1) = v8;
    v4 += 5;
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v4 = sub_128AEEC(a3, 1, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
LABEL_4:
    v7 = v4;
    goto LABEL_16;
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = sub_225EB68(a3, v4);
  }

  v9 = *(a1 + 92);
  *v4 = 24;
  v4[1] = v9;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    v4[2] = v9 >> 7;
    v7 = v4 + 3;
    if (v9 >= 0x4000)
    {
      LOBYTE(v11) = v4[2];
      do
      {
        *(v7 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v7++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v7 = v4 + 2;
  }

LABEL_16:
  if ((v6 & 8) != 0)
  {
    if (*a3 <= v7)
    {
      v7 = sub_225EB68(a3, v7);
    }

    v14 = *(a1 + 96);
    *v7 = 32;
    v7[1] = v14;
    if (v14 > 0x7F)
    {
      v7[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v7[2] = v14 >> 7;
      v13 = v7 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v16) = v7[2];
        do
        {
          *(v13 - 1) = v16 | 0x80;
          v16 = v15 >> 7;
          *v13++ = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v13 = v7 + 2;
    }
  }

  else
  {
    v13 = v7;
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v13)
    {
      v13 = sub_225EB68(a3, v13);
    }

    v19 = *(a1 + 100);
    *v13 = 40;
    v13[1] = v19;
    if (v19 > 0x7F)
    {
      v13[1] = v19 | 0x80;
      v20 = v19 >> 7;
      v13[2] = v19 >> 7;
      v18 = v13 + 3;
      if (v19 >= 0x4000)
      {
        LOBYTE(v13) = v13[2];
        do
        {
          *(v18 - 1) = v13 | 0x80;
          v13 = (v20 >> 7);
          *v18++ = v20 >> 7;
          v21 = v20 >> 14;
          v20 >>= 7;
        }

        while (v21);
      }
    }

    else
    {
      v18 = v13 + 2;
    }
  }

  else
  {
    v18 = v13;
  }

  v22 = *(a1 + 48);
  if (v22 < 1)
  {
    v25 = v18;
  }

  else
  {
    for (i = 0; i != v22; ++i)
    {
      if (*a3 <= v18)
      {
        v18 = sub_225EB68(a3, v18);
      }

      v24 = *(*(a1 + 56) + 4 * i);
      *v18 = 48;
      v18[1] = v24;
      if (v24 > 0x7F)
      {
        v18[1] = v24 | 0x80;
        v26 = v24 >> 7;
        v18[2] = v24 >> 7;
        v25 = v18 + 3;
        if (v24 >= 0x4000)
        {
          LOBYTE(v18) = v18[2];
          do
          {
            *(v25 - 1) = v18 | 0x80;
            v18 = (v26 >> 7);
            *v25++ = v26 >> 7;
            v27 = v26 >> 14;
            v26 >>= 7;
          }

          while (v27);
        }
      }

      else
      {
        v25 = v18 + 2;
      }

      v18 = v25;
    }
  }

  v28 = *(a1 + 64);
  if (v28 < 1)
  {
    v31 = v25;
  }

  else
  {
    for (j = 0; j != v28; ++j)
    {
      if (*a3 <= v25)
      {
        v25 = sub_225EB68(a3, v25);
      }

      v30 = *(*(a1 + 72) + 4 * j);
      *v25 = 56;
      v25[1] = v30;
      if (v30 > 0x7F)
      {
        v25[1] = v30 | 0x80;
        v32 = v30 >> 7;
        v25[2] = v30 >> 7;
        v31 = v25 + 3;
        if (v30 >= 0x4000)
        {
          LOBYTE(v33) = v25[2];
          do
          {
            *(v31 - 1) = v33 | 0x80;
            v33 = v32 >> 7;
            *v31++ = v32 >> 7;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
        }
      }

      else
      {
        v31 = v25 + 2;
      }

      v25 = v31;
    }
  }

  if (*(a1 + 26))
  {
    v31 = sub_1953428(a1 + 16, 1001, 2000, v31, a3);
  }

  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return v31;
  }

  v37 = v35 & 0xFFFFFFFFFFFFFFFCLL;
  v38 = *(v37 + 31);
  if (v38 < 0)
  {
    v39 = *(v37 + 8);
    v38 = *(v37 + 16);
  }

  else
  {
    v39 = (v37 + 8);
  }

  if ((*a3 - v31) >= v38)
  {
    v40 = v38;
    memcpy(v31, v39, v38);
    v31 += v40;
    return v31;
  }

  return sub_1957130(a3, v39, v38, v31);
}

uint64_t sub_15D58D4(uint64_t a1)
{
  v2 = sub_1955FBC(a1 + 16);
  v3 = sub_1959E04((a1 + 48));
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 72) + 4 * v5);
      if (v7 < 0)
      {
        v8 = 10;
      }

      else
      {
        v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
      }

      v6 += v8;
      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  result = v3 + v2 + *(a1 + 48) + v4 + v6;
  v10 = *(a1 + 40);
  if ((v10 & 0x1F) == 0)
  {
    goto LABEL_23;
  }

  if (v10)
  {
    v11 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    result += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v10 & 2) != 0)
  {
    result += 5;
  }

  if ((v10 & 4) != 0)
  {
    v18 = *(a1 + 92);
    v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v18 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 11;
    }

    result += v20;
    if ((v10 & 8) == 0)
    {
LABEL_18:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_18;
  }

  v21 = *(a1 + 96);
  v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v21 >= 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 11;
  }

  result += v23;
  if ((v10 & 0x10) != 0)
  {
LABEL_19:
    v14 = *(a1 + 100);
    v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v14 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 11;
    }

    result += v16;
  }

LABEL_23:
  v17 = *(a1 + 8);
  if (v17)
  {
    v24 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = *((v17 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v25 < 0)
    {
      v25 = *(v24 + 16);
    }

    result += v25;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_15D5A9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = (a1 + 48);
    v6 = *(a1 + 48);
    sub_1958E5C((a1 + 48), v6 + v4);
    v7 = *(a1 + 56);
    *v5 += *(a2 + 48);
    memcpy((v7 + 4 * v6), *(a2 + 56), 4 * *(a2 + 48));
  }

  v8 = *(a2 + 64);
  if (v8)
  {
    v9 = *(a1 + 64);
    sub_1958E5C((a1 + 64), v9 + v8);
    v10 = *(a1 + 72);
    *(a1 + 64) += *(a2 + 64);
    memcpy((v10 + 4 * v9), *(a2 + 72), 4 * *(a2 + 64));
  }

  v11 = *(a2 + 40);
  if ((v11 & 0x1F) != 0)
  {
    if (v11)
    {
      v13 = *(a2 + 80);
      *(a1 + 40) |= 1u;
      v14 = *(a1 + 8);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      sub_194EA1C((a1 + 80), (v13 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v11 & 2) == 0)
      {
LABEL_8:
        if ((v11 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_21;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 88) = *(a2 + 88);
    if ((v11 & 4) == 0)
    {
LABEL_9:
      if ((v11 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(a1 + 92) = *(a2 + 92);
    if ((v11 & 8) == 0)
    {
LABEL_10:
      if ((v11 & 0x10) == 0)
      {
LABEL_12:
        *(a1 + 40) |= v11;
        goto LABEL_13;
      }

LABEL_11:
      *(a1 + 100) = *(a2 + 100);
      goto LABEL_12;
    }

LABEL_22:
    *(a1 + 96) = *(a2 + 96);
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  sub_225EA0C(a1 + 16, a2 + 16);
  v12 = *(a2 + 8);
  if (v12)
  {

    sub_1957EF4((a1 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void *sub_15D5C38(uint64_t *a1)
{
  if (!a1)
  {

    sub_15D7AE4();
  }

  return sub_15D4D78(v3, a1, 0);
}

void sub_15D69D8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15B6FF0(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

std::string *sub_15D6A5C(std::string *result, std::string **a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = result->__r_.__value_.__r.__words[0];
    v10 = &a2[a5];
    do
    {
      result = sub_15BA5D4(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_15D6AD8(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_15D6AE8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15BB008(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D6B6C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_15BBB14(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_15D6BE8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15D6BF8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15BC038(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D6C7C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15BC674(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D6D00(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_15BE238(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_13121F8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15D6D7C(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_15BE2BC(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_15D6DF8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15D6E08(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15C00BC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D6E8C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_16D5138(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D6F10(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15BF504(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D6F94(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15CCE90(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D7018(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15CE184(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D709C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15CE850(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D7120(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15CD8CC(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D71A4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_1672750(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D7228(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15CA798(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D72AC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15CF550(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D7330(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_15CED10(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D73B4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          sub_157D478(*v3);
          operator delete();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_15D7438(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_15D44EC(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_156BD3C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15D74B4(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      sub_16D5AB8(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_15D7530(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_15D7540(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_15BFFB0(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_13120E8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15D75BC(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_15D4804(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_13120E8(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15D7638(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_15D49B8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_15D76B4(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15D76C4(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_15D4A5C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15D7740(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_15D492C(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_15D77BC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15D77CC(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      sub_167CE88(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_15D7848(v12, v14);
      --v5;
    }

    while (v5);
  }
}

void sub_15D7858(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      sub_15D4714(v9);
      *v10++ = v11;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v13 = *a3++;
      v12 = v13;
      v14 = *v7++;
      sub_15D78D4(v12, v14);
      --v5;
    }

    while (v5);
  }
}

uint64_t **sub_15D78E4(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = sub_15D4B7C(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = sub_15D7960(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_15D7970(uint64_t **result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_15D4AE0(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_15D79EC(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15D79FC(uint64_t **a1, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *a1;
    v10 = &a2[a5];
    do
    {
      *v10++ = sub_157D9B8(v9);
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      sub_131193C(v11, v13);
      --v5;
    }

    while (v5);
  }
}

void sub_15D7C7C()
{

  operator new();
}

void sub_15D7D54()
{
  dword_278D940 = 1201;
  qword_278D948 = &off_2776BC0;
  sub_194F72C(&off_27868A0, 1201, 11, 1, 0, &off_2776BC0);
  dword_278D950 = 1202;
  qword_278D958 = &off_277C7C0;
  sub_194F72C(&off_27868A0, 1202, 11, 0, 0, &off_277C7C0);
  dword_278D960 = 1001;
  byte_278D964 = 0;
  sub_194EE44(&off_27796E0, 1001, 8, 0, 0);
  dword_278D968 = 1002;
  byte_278D96C = 0;
  sub_194EE44(&off_27796E0, 1002, 8, 0, 0);
  dword_278D970 = 1003;
  byte_278D974 = 0;
  sub_194EE44(&off_27796E0, 1003, 8, 0, 0);
  dword_278D978 = 1101;
  qword_278D980 = &unk_233B4A0;
  sub_194EE44(&off_27796E0, 1101, 9, 0, 0);
  dword_278D988 = 1201;
  qword_278D990 = 0;
  sub_194EE44(&off_27796E0, 1201, 3, 0, 0);
  dword_278D998 = 1301;
  qword_278D9A0 = 0;
  sub_194EE44(&off_27796E0, 1301, 1, 0, 0);
  dword_278D9A8 = 1302;
  qword_278D9B0 = 0;
  sub_194EE44(&off_27796E0, 1302, 1, 0, 0);
  qword_278D9B8 = 1303;
  sub_194EE44(&off_27796E0, 1303, 5, 0, 0);
  dword_278D9C0 = 1401;
  byte_278D9C4 = 0;
  sub_194EE44(&off_27796E0, 1401, 8, 0, 0);
  dword_278D9C8 = 1402;
  byte_278D9CC = 0;
  sub_194EE44(&off_27796E0, 1402, 8, 0, 0);
  dword_278D9D0 = 1403;
  byte_278D9D4 = 0;

  sub_194EE44(&off_27796E0, 1403, 8, 0, 0);
}

uint64_t sub_15D7FD8()
{
  qword_27CCB20 = "INDEX_QUERY_ANDINDEX_QUERY_NEGATIVE_TERMINDEX_QUERY_NOTINDEX_QUERY_ORINDEX_QUERY_TERM";
  *algn_27CCB28 = 15;
  dword_27CCB30 = 0;
  qword_27CCB38 = "INDEX_QUERY_NEGATIVE_TERMINDEX_QUERY_NOTINDEX_QUERY_ORINDEX_QUERY_TERM";
  unk_27CCB40 = 25;
  dword_27CCB48 = 3;
  qword_27CCB50 = "INDEX_QUERY_NOTINDEX_QUERY_ORINDEX_QUERY_TERM";
  unk_27CCB58 = 15;
  dword_27CCB60 = 4;
  qword_27CCB68 = "INDEX_QUERY_ORINDEX_QUERY_TERM";
  unk_27CCB70 = 14;
  dword_27CCB78 = 1;
  qword_27CCB80 = "INDEX_QUERY_TERM";
  unk_27CCB88 = 16;
  dword_27CCB90 = 2;
  qword_27CCB98 = "ALLOWED_XXXFIX_ANYALLOWED_XXXFIX_EMPTYALLOWED_XXXFIX_ILLEGALALLOWED_XXXFIX_NON_EMPTY";
  unk_27CCBA0 = 18;
  dword_27CCBA8 = 1;
  qword_27CCBB0 = "ALLOWED_XXXFIX_EMPTYALLOWED_XXXFIX_ILLEGALALLOWED_XXXFIX_NON_EMPTY";
  unk_27CCBB8 = 20;
  dword_27CCBC0 = 0;
  qword_27CCBC8 = "ALLOWED_XXXFIX_ILLEGALALLOWED_XXXFIX_NON_EMPTY";
  unk_27CCBD0 = 22;
  dword_27CCBD8 = 3;
  qword_27CCBE0 = "ALLOWED_XXXFIX_NON_EMPTY";
  unk_27CCBE8 = 24;
  dword_27CCBF0 = 2;
  qword_27CCBF8 = "DAY_USED_FOR_OPEN_AT_FILTERING_NADAY_USED_FOR_OPEN_AT_FILTERING_TODAYDAY_USED_FOR_OPEN_AT_FILTERING_TOMORROW";
  unk_27CCC00 = 33;
  dword_27CCC08 = 0;
  qword_27CCC10 = "DAY_USED_FOR_OPEN_AT_FILTERING_TODAYDAY_USED_FOR_OPEN_AT_FILTERING_TOMORROW";
  unk_27CCC18 = 36;
  dword_27CCC20 = 1;
  qword_27CCC28 = "DAY_USED_FOR_OPEN_AT_FILTERING_TOMORROW";
  unk_27CCC30 = 39;
  dword_27CCC38 = 2;
  qword_27CCC40 = "CUT_OFF_FIVECUT_OFF_NONECUT_OFF_TOP_FLOOR";
  *algn_27CCC48 = 12;
  dword_27CCC50 = 2;
  qword_27CCC58 = "CUT_OFF_NONECUT_OFF_TOP_FLOOR";
  unk_27CCC60 = 12;
  dword_27CCC68 = 1;
  qword_27CCC70 = "CUT_OFF_TOP_FLOOR";
  unk_27CCC78 = 17;
  dword_27CCC80 = 0;
  qword_27CCC88 = "GEO_INTERPRETATION_GEOGEO_INTERPRETATION_GLOBALGEO_INTERPRETATION_NONEGEO_INTERPRETATION_VIEWPORT";
  unk_27CCC90 = 22;
  dword_27CCC98 = 2;
  qword_27CCCA0 = "GEO_INTERPRETATION_GLOBALGEO_INTERPRETATION_NONEGEO_INTERPRETATION_VIEWPORT";
  unk_27CCCA8 = 25;
  dword_27CCCB0 = 3;
  qword_27CCCB8 = "GEO_INTERPRETATION_NONEGEO_INTERPRETATION_VIEWPORT";
  unk_27CCCC0 = 23;
  dword_27CCCC8 = 0;
  qword_27CCCD0 = "GEO_INTERPRETATION_VIEWPORT";
  unk_27CCCD8 = 27;
  dword_27CCCE0 = 1;
  qword_27CCCE8 = "GEO_EXTENSION_MINGEO_EXTENSION_NONEGEO_EXTENSION_SECOND";
  unk_27CCCF0 = 17;
  dword_27CCCF8 = 1;
  qword_27CCD00 = "GEO_EXTENSION_NONEGEO_EXTENSION_SECOND";
  unk_27CCD08 = 18;
  dword_27CCD10 = 0;
  qword_27CCD18 = "GEO_EXTENSION_SECOND";
  unk_27CCD20 = 20;
  dword_27CCD28 = 2;
  qword_27CCD30 = "CATEGORY_INTERPRETATION_CLASSIFIERCATEGORY_INTERPRETATION_FILTERCATEGORY_INTERPRETATION_NONE";
  *algn_27CCD38 = 34;
  dword_27CCD40 = 2;
  qword_27CCD48 = "CATEGORY_INTERPRETATION_FILTERCATEGORY_INTERPRETATION_NONE";
  unk_27CCD50 = 30;
  dword_27CCD58 = 1;
  qword_27CCD60 = "CATEGORY_INTERPRETATION_NONE";
  unk_27CCD68 = 28;
  dword_27CCD70 = 0;
  qword_27CCD78 = "PROPERTY_INTERPRETATION_CLASSIFIERPROPERTY_INTERPRETATION_FILTERPROPERTY_INTERPRETATION_NONE";
  unk_27CCD80 = 34;
  dword_27CCD88 = 2;
  qword_27CCD90 = "PROPERTY_INTERPRETATION_FILTERPROPERTY_INTERPRETATION_NONE";
  unk_27CCD98 = 30;
  dword_27CCDA0 = 1;
  qword_27CCDA8 = "PROPERTY_INTERPRETATION_NONE";
  unk_27CCDB0 = 28;
  dword_27CCDB8 = 0;
  qword_27CCDC0 = "ADDRESS_INTERPRETATION_ADDRESSADDRESS_INTERPRETATION_NONE";
  *algn_27CCDC8 = 30;
  dword_27CCDD0 = 1;
  qword_27CCDD8 = "ADDRESS_INTERPRETATION_NONE";
  unk_27CCDE0 = 27;
  dword_27CCDE8 = 0;
  qword_27CCDF0 = "CHAIN_INTERPRETATION_CHAINCHAIN_INTERPRETATION_NONE";
  *algn_27CCDF8 = 26;
  dword_27CCE00 = 1;
  qword_27CCE08 = "CHAIN_INTERPRETATION_NONE";
  unk_27CCE10 = 25;
  dword_27CCE18 = 0;
  qword_27CCE20 = "EXACT_INTERPRETATION_FULL_NAME_MATCHEXACT_INTERPRETATION_NONEEXACT_INTERPRETATION_PASSTHROUGH";
  *algn_27CCE28 = 36;
  dword_27CCE30 = 2;
  qword_27CCE38 = "EXACT_INTERPRETATION_NONEEXACT_INTERPRETATION_PASSTHROUGH";
  unk_27CCE40 = 25;
  dword_27CCE48 = 0;
  qword_27CCE50 = "EXACT_INTERPRETATION_PASSTHROUGH";
  unk_27CCE58 = 32;
  dword_27CCE60 = 1;
  qword_27CCE68 = "VOC_INTERPRETATION_NONEVOC_INTERPRETATION_PHRASE";
  unk_27CCE70 = 23;
  dword_27CCE78 = 0;
  qword_27CCE80 = "VOC_INTERPRETATION_PHRASE";
  unk_27CCE88 = 25;
  dword_27CCE90 = 1;
  qword_27CCE98 = "REWRITE_GEOREWRITE_POIREWRITE_REV";
  unk_27CCEA0 = 11;
  dword_27CCEA8 = 1;
  qword_27CCEB0 = "REWRITE_POIREWRITE_REV";
  unk_27CCEB8 = 11;
  dword_27CCEC0 = 0;
  qword_27CCEC8 = "REWRITE_REV";
  unk_27CCED0 = 11;
  dword_27CCED8 = 2;
  qword_27CCEE0 = "SESSION_ENTITY_TYPE_ATTRIBUTESESSION_ENTITY_TYPE_BRANDSESSION_ENTITY_TYPE_CATEGORYSESSION_ENTITY_TYPE_QUERYSESSION_ENTITY_TYPE_UNKNOWN";
  *algn_27CCEE8 = 29;
  dword_27CCEF0 = 3;
  qword_27CCEF8 = "SESSION_ENTITY_TYPE_BRANDSESSION_ENTITY_TYPE_CATEGORYSESSION_ENTITY_TYPE_QUERYSESSION_ENTITY_TYPE_UNKNOWN";
  unk_27CCF00 = 25;
  dword_27CCF08 = 2;
  qword_27CCF10 = "SESSION_ENTITY_TYPE_CATEGORYSESSION_ENTITY_TYPE_QUERYSESSION_ENTITY_TYPE_UNKNOWN";
  unk_27CCF18 = 28;
  dword_27CCF20 = 1;
  qword_27CCF28 = "SESSION_ENTITY_TYPE_QUERYSESSION_ENTITY_TYPE_UNKNOWN";
  unk_27CCF30 = 25;
  dword_27CCF38 = 4;
  qword_27CCF40 = "SESSION_ENTITY_TYPE_UNKNOWN";
  unk_27CCF48 = 27;
  dword_27CCF50 = 0;
  qword_27CCF58 = "METADATA_SOURCE_ACMETADATA_SOURCE_BROWSE_SUGGESTIONMETADATA_SOURCE_BROWSE_SUGGESTION_CARPLAYMETADATA_SOURCE_BROWSE_SUGGESTION_NAVMETADATA_SOURCE_NONEMETADATA_SOURCE_RELATED_SEARCH_SUGGESTIONMETADATA_SOURCE_ZKW";
  unk_27CCF60 = 18;
  dword_27CCF68 = 1;
  qword_27CCF70 = "METADATA_SOURCE_BROWSE_SUGGESTIONMETADATA_SOURCE_BROWSE_SUGGESTION_CARPLAYMETADATA_SOURCE_BROWSE_SUGGESTION_NAVMETADATA_SOURCE_NONEMETADATA_SOURCE_RELATED_SEARCH_SUGGESTIONMETADATA_SOURCE_ZKW";
  unk_27CCF78 = 33;
  dword_27CCF80 = 3;
  qword_27CCF88 = "METADATA_SOURCE_BROWSE_SUGGESTION_CARPLAYMETADATA_SOURCE_BROWSE_SUGGESTION_NAVMETADATA_SOURCE_NONEMETADATA_SOURCE_RELATED_SEARCH_SUGGESTIONMETADATA_SOURCE_ZKW";
  unk_27CCF90 = 41;
  dword_27CCF98 = 4;
  qword_27CCFA0 = "METADATA_SOURCE_BROWSE_SUGGESTION_NAVMETADATA_SOURCE_NONEMETADATA_SOURCE_RELATED_SEARCH_SUGGESTIONMETADATA_SOURCE_ZKW";
  unk_27CCFA8 = 37;
  dword_27CCFB0 = 5;
  qword_27CCFB8 = "METADATA_SOURCE_NONEMETADATA_SOURCE_RELATED_SEARCH_SUGGESTIONMETADATA_SOURCE_ZKW";
  unk_27CCFC0 = 20;
  dword_27CCFC8 = 0;
  qword_27CCFD0 = "METADATA_SOURCE_RELATED_SEARCH_SUGGESTIONMETADATA_SOURCE_ZKW";
  unk_27CCFD8 = 41;
  dword_27CCFE0 = 6;
  qword_27CCFE8 = "METADATA_SOURCE_ZKW";
  unk_27CCFF0 = 19;
  dword_27CCFF8 = 2;
  qword_27CD000 = "METADATA_TYPE_CATEGORYMETADATA_TYPE_CHAINMETADATA_TYPE_GEOMETADATA_TYPE_NONEMETADATA_TYPE_POIMETADATA_TYPE_REWRITE";
  *algn_27CD008 = 22;
  dword_27CD010 = 1;
  qword_27CD018 = "METADATA_TYPE_CHAINMETADATA_TYPE_GEOMETADATA_TYPE_NONEMETADATA_TYPE_POIMETADATA_TYPE_REWRITE";
  unk_27CD020 = 19;
  dword_27CD028 = 2;
  qword_27CD030 = "METADATA_TYPE_GEOMETADATA_TYPE_NONEMETADATA_TYPE_POIMETADATA_TYPE_REWRITE";
  unk_27CD038 = 17;
  dword_27CD040 = 4;
  qword_27CD048 = "METADATA_TYPE_NONEMETADATA_TYPE_POIMETADATA_TYPE_REWRITE";
  unk_27CD050 = 18;
  dword_27CD058 = 0;
  qword_27CD060 = "METADATA_TYPE_POIMETADATA_TYPE_REWRITE";
  unk_27CD068 = 17;
  dword_27CD070 = 3;
  qword_27CD078 = "METADATA_TYPE_REWRITE";
  unk_27CD080 = 21;
  dword_27CD088 = 5;
  qword_27CD090 = "DELTAFULL";
  *algn_27CD098 = 5;
  dword_27CD0A0 = 1;
  qword_27CD0A8 = "FULL";
  unk_27CD0B0 = 4;
  dword_27CD0B8 = 0;
  qword_27CD0C0 = "DOWNLOADINGFINISHEDFINISHED_ERRORINGESTINGINITIALIZED";
  *algn_27CD0C8 = 11;
  dword_27CD0D0 = 4;
  result = 8;
  qword_27CD0D8 = "FINISHEDFINISHED_ERRORINGESTINGINITIALIZED";
  unk_27CD0E0 = 8;
  dword_27CD0E8 = 0;
  qword_27CD0F0 = "FINISHED_ERRORINGESTINGINITIALIZED";
  unk_27CD0F8 = 14;
  dword_27CD100 = 1;
  qword_27CD108 = "INGESTINGINITIALIZED";
  unk_27CD110 = 9;
  dword_27CD118 = 3;
  qword_27CD120 = "INITIALIZED";
  unk_27CD128 = 11;
  dword_27CD130 = 2;
  qword_27CD138 = "PLACE_RESPONSE_DATA_ORIGIN_FROM_BUSINESS_LOGICPLACE_RESPONSE_DATA_ORIGIN_FROM_RESPONSE_CACHEPLACE_RESPONSE_DATA_ORIGIN_UNKNOWN";
  unk_27CD140 = 46;
  dword_27CD148 = 1;
  qword_27CD150 = "PLACE_RESPONSE_DATA_ORIGIN_FROM_RESPONSE_CACHEPLACE_RESPONSE_DATA_ORIGIN_UNKNOWN";
  unk_27CD158 = 46;
  dword_27CD160 = 2;
  qword_27CD168 = "PLACE_RESPONSE_DATA_ORIGIN_UNKNOWN";
  unk_27CD170 = 34;
  dword_27CD178 = 0;
  qword_27CD180 = "ALLATTRIBUTEBRANDCATEGORYKEYWORD";
  *algn_27CD188 = 3;
  dword_27CD190 = 0;
  qword_27CD198 = "ATTRIBUTEBRANDCATEGORYKEYWORD";
  unk_27CD1A0 = 9;
  dword_27CD1A8 = 3;
  qword_27CD1B0 = "BRANDCATEGORYKEYWORD";
  unk_27CD1B8 = 5;
  dword_27CD1C0 = 2;
  qword_27CD1C8 = "CATEGORYKEYWORD";
  unk_27CD1D0 = 8;
  dword_27CD1D8 = 1;
  qword_27CD1E0 = "KEYWORD";
  unk_27CD1E8 = 7;
  dword_27CD1F0 = 4;
  return result;
}

uint64_t *sub_15D84D0(uint64_t a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_27CD2F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CD2F0))
  {
    byte_27CD2E8 = sub_1956BB4(&qword_27CD270, dword_233B560, 5, qword_27CD2F8);
    __cxa_guard_release(&qword_27CD2F0);
  }

  v2 = sub_1956B30(&qword_27CD270, dword_233B560, 5uLL, v1);
  if (v2 != -1)
  {
    return &qword_27CD2F8[3 * v2];
  }

  if ((atomic_load_explicit(byte_278E9A8, memory_order_acquire) & 1) == 0)
  {
    sub_1956C4C();
  }

  return &qword_278E990;
}

uint64_t *sub_15D85B8(uint64_t a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_27CD4B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27CD4B0))
  {
    byte_27CD4A8 = sub_1956BB4(&qword_27CD370, "\n", 13, qword_27CD4B8);
    __cxa_guard_release(&qword_27CD4B0);
  }

  v2 = sub_1956B30(&qword_27CD370, "\n", 0xDuLL, v1);
  if (v2 != -1)
  {
    return &qword_27CD4B8[3 * v2];
  }

  if ((atomic_load_explicit(byte_278E9A8, memory_order_acquire) & 1) == 0)
  {
    sub_1956C4C();
  }

  return &qword_278E990;
}

uint64_t sub_15D86AC(int a1)
{
  result = 1;
  if (a1 <= 547)
  {
    if (a1 <= 269)
    {
      if (a1 <= 131)
      {
        if (a1 <= 0x3C && ((1 << a1) & 0x101D101100001101) != 0)
        {
          return result;
        }

        v6 = a1 - 64;
        if (v6 <= 0x3C)
        {
          v4 = 1 << v6;
          v5 = 0x1010110104100111;
          goto LABEL_28;
        }

        return 0;
      }

      if ((a1 - 132) <= 0x3C && ((1 << (a1 + 124)) & 0x1900044001101011) != 0)
      {
        return result;
      }

      v8 = a1 - 203;
      if (v8 > 0x3B)
      {
        return 0;
      }

      v4 = 1 << v8;
      v5 = 0x800008828080821;
    }

    else
    {
      if (a1 > 403)
      {
        if ((a1 - 404) <= 0x3A && ((1 << (a1 + 108)) & 0x444040044446451) != 0)
        {
          return result;
        }

        v3 = a1 - 478;
        if (v3 <= 0x37)
        {
          v4 = 1 << v3;
          v5 = 0xC0404404140045;
          goto LABEL_28;
        }

        return 0;
      }

      if ((a1 - 340) <= 0x3C && ((1 << (a1 - 84)) & 0x1411001011111111) != 0)
      {
        return result;
      }

      v9 = a1 - 270;
      if (v9 > 0x3E)
      {
        return 0;
      }

      v4 = 1 << v9;
      v5 = 0x4444000000400001;
    }

LABEL_28:
    if ((v4 & v5) != 0)
    {
      return result;
    }

    return 0;
  }

  if (a1 <= 779)
  {
    if (a1 > 701)
    {
      if ((a1 - 702) <= 0x3E && ((1 << (a1 + 66)) & 0x4444400004000115) != 0 || a1 == 776)
      {
        return result;
      }
    }

    else
    {
      if ((a1 - 548) <= 0x3C && ((1 << (a1 - 36)) & 0x1114044040040441) != 0)
      {
        return result;
      }

      v7 = a1 - 634;
      if (v7 <= 0x3C)
      {
        v4 = 1 << v7;
        v5 = 0x1101100000101201;
        goto LABEL_28;
      }
    }

    return 0;
  }

  switch(a1)
  {
    case 858:
    case 860:
    case 882:
    case 886:
    case 901:
    case 931:
    case 932:
    case 934:
    case 936:
    case 937:
    case 938:
    case 940:
    case 941:
    case 943:
    case 944:
    case 946:
    case 947:
    case 948:
    case 949:
    case 950:
    case 951:
    case 952:
    case 953:
    case 955:
    case 956:
    case 957:
    case 958:
    case 959:
    case 960:
    case 961:
    case 962:
    case 963:
    case 964:
    case 965:
    case 967:
    case 968:
    case 969:
    case 970:
    case 971:
    case 972:
    case 973:
    case 974:
    case 975:
    case 976:
    case 977:
    case 978:
    case 979:
    case 980:
    case 981:
    case 984:
    case 985:
    case 986:
      return result;
    case 859:
    case 861:
    case 862:
    case 863:
    case 864:
    case 865:
    case 866:
    case 867:
    case 868:
    case 869:
    case 870:
    case 871:
    case 872:
    case 873:
    case 874:
    case 875:
    case 876:
    case 877:
    case 878:
    case 879:
    case 880:
    case 881:
    case 883:
    case 884:
    case 885:
    case 887:
    case 888:
    case 889:
    case 890:
    case 891:
    case 892:
    case 893:
    case 894:
    case 895:
    case 896:
    case 897:
    case 898:
    case 899:
    case 900:
    case 902:
    case 903:
    case 904:
    case 905:
    case 906:
    case 907:
    case 908:
    case 909:
    case 910:
    case 911:
    case 912:
    case 913:
    case 914:
    case 915:
    case 916:
    case 917:
    case 918:
    case 919:
    case 920:
    case 921:
    case 922:
    case 923:
    case 924:
    case 925:
    case 926:
    case 927:
    case 928:
    case 929:
    case 930:
    case 933:
    case 935:
    case 939:
    case 942:
    case 945:
    case 954:
    case 966:
    case 982:
    case 983:
      return 0;
    default:
      if ((a1 - 780) > 0x3C || ((1 << (a1 - 12)) & 0x1040404008100111) == 0)
      {
        v10 = a1 - 990;
        if (v10 > 9 || ((1 << v10) & 0x291) == 0)
        {
          return 0;
        }
      }

      break;
  }

  return result;
}

uint64_t sub_15D8B44(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F5060;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  *(result + 60) = 1;
  return result;
}

uint64_t sub_15D8B90(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_15EEEE4((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15D8C3C(uint64_t a1)
{
  sub_15D8B90(a1);

  operator delete();
}

uint64_t sub_15D8C74(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15D9850(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
    }
  }

  if ((v5 & 6) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 60) = 1;
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_15D8D38(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v36 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, v36, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (*v36 + 1);
    v8 = **v36;
    if (**v36 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(*v36, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = (*v36 + 2);
      }
    }

    *v36 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 != 1)
      {
        if (v11 == 2 && v8 == 18)
        {
          v13 = v7 - 1;
          while (1)
          {
            v14 = v13 + 1;
            *v36 = v13 + 1;
            v15 = *(a1 + 40);
            if (v15 && (v16 = *(a1 + 32), v16 < *v15))
            {
              *(a1 + 32) = v16 + 1;
              v17 = *&v15[2 * v16 + 2];
            }

            else
            {
              v18 = sub_15E0CD4(*(a1 + 24));
              v17 = sub_19593CC(a1 + 24, v18);
              v14 = *v36;
            }

            v13 = sub_22272C4(a3, v17, v14);
            *v36 = v13;
            if (!v13)
            {
              goto LABEL_59;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_49;
            }
          }
        }

        goto LABEL_41;
      }

      if (v8 != 10)
      {
        goto LABEL_41;
      }

      *(a1 + 16) |= 1u;
      v23 = *(a1 + 8);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v25 = sub_194DB04((a1 + 48), v24);
      v26 = sub_1958890(v25, *v36, a3);
LABEL_48:
      *v36 = v26;
      if (!v26)
      {
        goto LABEL_59;
      }

      goto LABEL_49;
    }

    if (v11 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_41;
    }

    v5 |= 2u;
    v28 = v7 + 1;
    v27 = *v7;
    if ((v27 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    v29 = *v28;
    v27 = (v29 << 7) + v27 - 128;
    if ((v29 & 0x80000000) == 0)
    {
      v28 = v7 + 2;
LABEL_40:
      *v36 = v28;
      *(a1 + 56) = v27 != 0;
      goto LABEL_49;
    }

    v34 = sub_19587DC(v7, v27);
    *v36 = v34;
    *(a1 + 56) = v35 != 0;
    if (!v34)
    {
      goto LABEL_59;
    }

LABEL_49:
    if (sub_195ADC0(a3, v36, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 4 && v8 == 32)
  {
    v19 = v7 + 1;
    v20 = *v7;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    v21 = *v19;
    v22 = (v21 << 7) + v20;
    LODWORD(v20) = v22 - 128;
    if (v21 < 0)
    {
      *v36 = sub_19587DC(v7, (v22 - 128));
      if (!*v36)
      {
        goto LABEL_59;
      }

      LODWORD(v20) = v33;
    }

    else
    {
      v19 = v7 + 2;
LABEL_29:
      *v36 = v19;
    }

    if (sub_12AE1F4(v20))
    {
      *(a1 + 16) |= 4u;
      *(a1 + 60) = v20;
    }

    else
    {
      sub_12E8500();
    }

    goto LABEL_49;
  }

LABEL_41:
  if (v8)
  {
    v30 = (v8 & 7) == 4;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    v31 = *(a1 + 8);
    if (v31)
    {
      v32 = (v31 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v32 = sub_11F1920((a1 + 8));
      v7 = *v36;
    }

    v26 = sub_1952690(v8, v32, v7, a3);
    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_59:
  *v36 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return *v36;
}

char *sub_15D903C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_128AEEC(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = sub_225EB68(a3, v4);
      }

      v9 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v10 = *(v9 + 20);
      v4[1] = v10;
      if (v10 > 0x7F)
      {
        v11 = sub_19575D0(v10, v4 + 1);
      }

      else
      {
        v11 = v4 + 2;
      }

      v4 = sub_15D9AEC(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v12 = *(a1 + 56);
    *v4 = 24;
    v4[1] = v12;
    v4 += 2;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = sub_225EB68(a3, v4);
    }

    v14 = *(a1 + 60);
    *v4 = 32;
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v4[2] = v14 >> 7;
      v13 = v4 + 3;
      if (v14 >= 0x4000)
      {
        LOBYTE(v16) = v4[2];
        do
        {
          *(v13 - 1) = v16 | 0x80;
          v16 = v15 >> 7;
          *v13++ = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v13 = v4 + 2;
    }
  }

  else
  {
    v13 = v4;
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v13;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if ((*a3 - v13) >= v21)
  {
    v23 = v21;
    memcpy(v13, v22, v21);
    v13 += v23;
    return v13;
  }

  return sub_1957130(a3, v22, v21, v13);
}

uint64_t sub_15D925C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_15D9C94(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8 & 2;
    if ((v8 & 4) != 0)
    {
      v12 = *(a1 + 60);
      if (v12 < 0)
      {
        v13 = 11;
      }

      else
      {
        v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v13;
    }
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v2 += v17;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_15D9390(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15EF280((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 7) != 0)
  {
    if (v9)
    {
      v11 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      sub_194EA1C((a1 + 48), (v11 & 0xFFFFFFFFFFFFFFFELL), v13);
      if ((v9 & 2) == 0)
      {
LABEL_7:
        if ((v9 & 4) == 0)
        {
LABEL_9:
          *(a1 + 16) |= v9;
          goto LABEL_10;
        }

LABEL_8:
        *(a1 + 60) = *(a2 + 60);
        goto LABEL_9;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_7;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v9 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
  v10 = *(a2 + 8);
  if (v10)
  {

    sub_1957EF4((a1 + 8), (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15D94BC(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_15D8C74(a1);

    sub_15D9390(a1, a2);
  }
}

__n128 sub_15D9510(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  v7 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v7;
  LOBYTE(v7) = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  LODWORD(v7) = *(a1 + 60);
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = v7;
  return result;
}

void *sub_15D9594(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F50E0;
  result[1] = v3;
  result[2] = 0;
  result[3] = a2;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  return result;
}

uint64_t sub_15D95CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26F50E0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15EF30C((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_15D9754(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_2779748)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      sub_15E0864(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  sub_15EEF68((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15D9818(uint64_t a1)
{
  sub_15D9754(a1);

  operator delete();
}

uint64_t sub_15D9850(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15DA604(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48);
    v6 = *(v5 + 8);
    result = v5 + 8;
    *(result + 16) = 0;
    *(result + 8) = 0;
    if (v6)
    {
      result = sub_1957EA8(result);
    }
  }

  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1957EA8(v7);
  }

  return result;
}

uint64_t sub_15D98F0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 16) = 0;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_15D9908(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v25, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v25 + 1;
    v7 = *v25;
    if (*v25 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v25, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v25 + 2;
      }
    }

    v25 = v6;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 1u;
        v15 = *(a1 + 48);
        if (!v15)
        {
          v16 = *(a1 + 8);
          v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
          if (v16)
          {
            v17 = *v17;
          }

          v15 = sub_15E12B4(v17);
          *(a1 + 48) = v15;
          v6 = v25;
        }

        v14 = sub_22273E4(a3, v15, v6);
        goto LABEL_25;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      v18 = v6 - 1;
      while (1)
      {
        v19 = v18 + 1;
        v25 = v18 + 1;
        v20 = *(a1 + 40);
        if (v20 && (v21 = *(a1 + 32), v21 < *v20))
        {
          *(a1 + 32) = v21 + 1;
          v22 = *&v20[2 * v21 + 2];
        }

        else
        {
          sub_15E0DEC(*(a1 + 24));
          v22 = sub_19593CC(a1 + 24, v23);
          v19 = v25;
        }

        v18 = sub_2227354(a3, v22, v19);
        v25 = v18;
        if (!v18)
        {
          return 0;
        }

        if (*a3 <= v18 || *v18 != 10)
        {
          goto LABEL_35;
        }
      }
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (v6)
      {
        a3[10].i32[0] = v7 - 1;
        return v25;
      }

      return 0;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v13 = sub_11F1920((a1 + 8));
      v6 = v25;
    }

    v14 = sub_1952690(v7, v13, v6, a3);
LABEL_25:
    v25 = v14;
    if (!v14)
    {
      return 0;
    }

LABEL_35:
    ;
  }

  return v25;
}

char *sub_15D9AEC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_225EB68(a3, __dst);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 20);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        v10 = sub_19575D0(v9, __dst + 1);
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = sub_15DAB38(v8, v10, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v11 = *(a1 + 48);
    *__dst = 26;
    v12 = *(v11 + 20);
    __dst[1] = v12;
    if (v12 > 0x7F)
    {
      v13 = sub_19575D0(v12, __dst + 1);
    }

    else
    {
      v13 = __dst + 2;
    }

    __dst = sub_15E0A78(v11, v13, a3);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return __dst;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - __dst) >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return sub_1957130(a3, v18, v17, __dst);
}

uint64_t sub_15D9C94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_15DB030(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 16))
  {
    v8 = sub_15E0BA0(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_15D9D70(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(result + 24, *(a2 + 32));
    sub_15EF30C((result + 24), v6, (v5 + 8), v4, **(result + 40) - *(result + 32));
    v7 = *(result + 32) + v4;
    *(result + 32) = v7;
    v8 = *(result + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  if (*(a2 + 16))
  {
    v9 = *(a2 + 48);
    *(result + 16) |= 1u;
    v10 = *(result + 48);
    if (!v10)
    {
      v11 = *(result + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      v10 = sub_15E12B4(v12);
      *(result + 48) = v10;
      v9 = *(a2 + 48);
    }

    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &off_2779900;
    }

    sub_12B9D50(v10, v13);
  }

  v14 = *(a2 + 8);
  if (v14)
  {

    sub_1957EF4((result + 8), (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15D9E80(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    sub_15D9850(result);

    sub_15D9D70(result, a2);
  }
}

void *sub_15D9EE4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15D9F58(void *a1)
{
  sub_15D9EE4(a1);

  operator delete();
}

uint64_t sub_15D9F90(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_15D9FB8(uint64_t a1, char *a2, int32x2_t *a3)
{
  v31 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v31 + 1;
    v8 = *v31;
    if (*v31 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v31, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v31 + 2;
      }
    }

    v31 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_13;
    }

    v5 |= 4u;
    v19 = v7 + 1;
    v20 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v21 = *v19;
    v20 = v20 + (v21 << 7) - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v19 = v7 + 2;
LABEL_30:
      v31 = v19;
      *(a1 + 32) = v20;
      goto LABEL_35;
    }

    v29 = sub_1958770(v7, v20);
    v31 = v29;
    *(a1 + 32) = v30;
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_35:
    if (sub_195ADC0(a3, &v31, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_13;
    }

    v5 |= 2u;
    v16 = v7 + 1;
    v17 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v16;
    v17 = v17 + (v18 << 7) - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v16 = v7 + 2;
LABEL_25:
      v31 = v16;
      *(a1 + 28) = v17;
      goto LABEL_35;
    }

    v25 = sub_1958770(v7, v17);
    v31 = v25;
    *(a1 + 28) = v26;
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v11 == 1 && v8 == 8)
  {
    v5 |= 1u;
    v22 = v7 + 1;
    v23 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    v24 = *v22;
    v23 = v23 + (v24 << 7) - 128;
    if ((v24 & 0x80000000) == 0)
    {
      v22 = v7 + 2;
LABEL_34:
      v31 = v22;
      *(a1 + 24) = v23;
      goto LABEL_35;
    }

    v27 = sub_1958770(v7, v23);
    v31 = v27;
    *(a1 + 24) = v28;
    if (!v27)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

LABEL_13:
  if (v8)
  {
    v13 = (v8 & 7) == 4;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v15 = sub_11F1920((a1 + 8));
      v7 = v31;
    }

    v31 = sub_1952690(v8, v15, v7, a3);
    if (!v31)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_46:
  v31 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

char *sub_15DA200(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 32);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          LODWORD(v11) = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return v15;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  if ((*a3 - v15) >= v22)
  {
    v24 = v22;
    memcpy(v15, v23, v22);
    v15 += v24;
    return v15;
  }

  return sub_1957130(a3, v23, v22, v15);
}

uint64_t sub_15DA438(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_10;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_15DA514(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 8) & 1;
  if (a1 != &off_27797A8)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      sub_15D9EE4(v6);
      operator delete();
    }
  }

  if (v5)
  {
    sub_11F19CC(v3);
  }

LABEL_8:
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15DA5CC(uint64_t a1)
{
  sub_15DA514(a1);

  operator delete();
}

uint64_t sub_15DA604(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = sub_15D9F90(*(result + 24));
  }

  if ((v2 & 0xFE) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
    *(v1 + 32) = 0u;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 80) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_1957EA8(v3);
  }

  return result;
}

char *sub_15DA67C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v60 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v60, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v60 + 1;
    v8 = *v60;
    if (*v60 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v60, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v60 + 2;
      }
    }

    v60 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_68;
        }

        v5 |= 8u;
        v29 = v7 + 1;
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v29 = v7 + 2;
LABEL_51:
          v60 = v29;
          *(a1 + 48) = v28;
          goto LABEL_76;
        }

        v52 = sub_19587DC(v7, v28);
        v60 = v52;
        *(a1 + 48) = v53;
        if (!v52)
        {
          goto LABEL_97;
        }
      }

      else
      {
        if (v11 != 4 || v8 != 32)
        {
          goto LABEL_68;
        }

        v5 |= 0x10u;
        v20 = v7 + 1;
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = v7 + 2;
LABEL_34:
          v60 = v20;
          *(a1 + 56) = v19;
          goto LABEL_76;
        }

        v46 = sub_19587DC(v7, v19);
        v60 = v46;
        *(a1 + 56) = v47;
        if (!v46)
        {
          goto LABEL_97;
        }
      }
    }

    else if (v11 == 1)
    {
      if (v8 != 8)
      {
        goto LABEL_68;
      }

      v5 |= 2u;
      v26 = v7 + 1;
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = v7 + 2;
LABEL_46:
        v60 = v26;
        *(a1 + 32) = v25;
        goto LABEL_76;
      }

      v50 = sub_19587DC(v7, v25);
      v60 = v50;
      *(a1 + 32) = v51;
      if (!v50)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v11 != 2 || v8 != 16)
      {
        goto LABEL_68;
      }

      v5 |= 4u;
      v17 = v7 + 1;
      v16 = *v7;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = v7 + 2;
LABEL_27:
        v60 = v17;
        *(a1 + 40) = v16;
        goto LABEL_76;
      }

      v44 = sub_19587DC(v7, v16);
      v60 = v44;
      *(a1 + 40) = v45;
      if (!v44)
      {
        goto LABEL_97;
      }
    }

LABEL_76:
    if (sub_195ADC0(a3, &v60, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 <= 6)
  {
    if (v11 == 5)
    {
      if (v8 != 40)
      {
        goto LABEL_68;
      }

      v5 |= 0x20u;
      v36 = v7 + 1;
      v35 = *v7;
      if ((v35 & 0x8000000000000000) == 0)
      {
        goto LABEL_62;
      }

      v37 = *v36;
      v35 = (v37 << 7) + v35 - 128;
      if ((v37 & 0x80000000) == 0)
      {
        v36 = v7 + 2;
LABEL_62:
        v60 = v36;
        *(a1 + 64) = v35;
        goto LABEL_76;
      }

      v54 = sub_19587DC(v7, v35);
      v60 = v54;
      *(a1 + 64) = v55;
      if (!v54)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v11 != 6 || v8 != 48)
      {
        goto LABEL_68;
      }

      v5 |= 0x100u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_41;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_41:
        v60 = v23;
        *(a1 + 88) = v22 != 0;
        goto LABEL_76;
      }

      v48 = sub_19587DC(v7, v22);
      v60 = v48;
      *(a1 + 88) = v49 != 0;
      if (!v48)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_76;
  }

  if (v11 != 7)
  {
    if (v11 == 8)
    {
      if (v8 != 64)
      {
        goto LABEL_68;
      }

      v5 |= 0x40u;
      v39 = v7 + 1;
      v38 = *v7;
      if ((v38 & 0x8000000000000000) == 0)
      {
        goto LABEL_67;
      }

      v40 = *v39;
      v38 = (v40 << 7) + v38 - 128;
      if ((v40 & 0x80000000) == 0)
      {
        v39 = v7 + 2;
LABEL_67:
        v60 = v39;
        *(a1 + 72) = v38;
        goto LABEL_76;
      }

      v58 = sub_19587DC(v7, v38);
      v60 = v58;
      *(a1 + 72) = v59;
      if (!v58)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v11 != 9 || v8 != 72)
      {
        goto LABEL_68;
      }

      v5 |= 0x80u;
      v13 = v7 + 1;
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = v7 + 2;
LABEL_16:
        v60 = v13;
        *(a1 + 80) = v12;
        goto LABEL_76;
      }

      v56 = sub_19587DC(v7, v12);
      v60 = v56;
      *(a1 + 80) = v57;
      if (!v56)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_76;
  }

  if (v8 == 58)
  {
    *(a1 + 16) |= 1u;
    v31 = *(a1 + 24);
    if (!v31)
    {
      v32 = *(a1 + 8);
      v33 = (v32 & 0xFFFFFFFFFFFFFFFCLL);
      if (v32)
      {
        v33 = *v33;
      }

      v31 = sub_15E0D70(v33);
      *(a1 + 24) = v31;
      v7 = v60;
    }

    v34 = sub_2227474(a3, v31, v7);
LABEL_75:
    v60 = v34;
    if (!v34)
    {
      goto LABEL_97;
    }

    goto LABEL_76;
  }

LABEL_68:
  if (v8)
  {
    v41 = (v8 & 7) == 4;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    v42 = *(a1 + 8);
    if (v42)
    {
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v43 = sub_11F1920((a1 + 8));
      v7 = v60;
    }

    v34 = sub_1952690(v8, v43, v7, a3);
    goto LABEL_75;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_97:
  v60 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v60;
}

char *sub_15DAB38(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 32);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 40);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 48);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v11) = v11[2];
        do
        {
          *(v15 - 1) = v11 | 0x80;
          v11 = (v17 >> 7);
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v20 = *(a1 + 56);
    *v15 = 32;
    v15[1] = v20;
    if (v20 > 0x7F)
    {
      v15[1] = v20 | 0x80;
      v21 = v20 >> 7;
      v15[2] = v20 >> 7;
      v19 = v15 + 3;
      if (v20 >= 0x4000)
      {
        LOBYTE(v22) = v15[2];
        do
        {
          *(v19 - 1) = v22 | 0x80;
          v22 = v21 >> 7;
          *v19++ = v21 >> 7;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v19 = v15 + 2;
    }
  }

  else
  {
    v19 = v15;
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= v19)
    {
      v19 = sub_225EB68(a3, v19);
    }

    v25 = *(a1 + 64);
    *v19 = 40;
    v19[1] = v25;
    if (v25 > 0x7F)
    {
      v19[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v19[2] = v25 >> 7;
      v24 = v19 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v19) = v19[2];
        do
        {
          *(v24 - 1) = v19 | 0x80;
          v19 = (v26 >> 7);
          *v24++ = v26 >> 7;
          v27 = v26 >> 14;
          v26 >>= 7;
        }

        while (v27);
      }
    }

    else
    {
      v24 = v19 + 2;
    }
  }

  else
  {
    v24 = v19;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_48;
    }

LABEL_53:
    if (*a3 <= v24)
    {
      v24 = sub_225EB68(a3, v24);
    }

    v30 = *(a1 + 24);
    *v24 = 58;
    v31 = *(v30 + 20);
    v24[1] = v31;
    if (v31 > 0x7F)
    {
      v32 = sub_19575D0(v31, v24 + 1);
    }

    else
    {
      v32 = v24 + 2;
    }

    v24 = sub_15DA200(v30, v32, a3);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_59;
  }

  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v29 = *(a1 + 88);
  *v24 = 48;
  v24[1] = v29;
  v24 += 2;
  if (v5)
  {
    goto LABEL_53;
  }

LABEL_48:
  if ((v5 & 0x40) == 0)
  {
LABEL_49:
    v28 = v24;
    goto LABEL_66;
  }

LABEL_59:
  if (*a3 <= v24)
  {
    v24 = sub_225EB68(a3, v24);
  }

  v33 = *(a1 + 72);
  *v24 = 64;
  v24[1] = v33;
  if (v33 > 0x7F)
  {
    v24[1] = v33 | 0x80;
    v34 = v33 >> 7;
    v24[2] = v33 >> 7;
    v28 = v24 + 3;
    if (v33 >= 0x4000)
    {
      LOBYTE(v24) = v24[2];
      do
      {
        *(v28 - 1) = v24 | 0x80;
        v24 = (v34 >> 7);
        *v28++ = v34 >> 7;
        v35 = v34 >> 14;
        v34 >>= 7;
      }

      while (v35);
    }
  }

  else
  {
    v28 = v24 + 2;
  }

LABEL_66:
  if ((v5 & 0x80) != 0)
  {
    if (*a3 <= v28)
    {
      v28 = sub_225EB68(a3, v28);
    }

    v37 = *(a1 + 80);
    *v28 = 72;
    v28[1] = v37;
    if (v37 > 0x7F)
    {
      v28[1] = v37 | 0x80;
      v38 = v37 >> 7;
      v28[2] = v37 >> 7;
      v36 = v28 + 3;
      if (v37 >= 0x4000)
      {
        LOBYTE(v28) = v28[2];
        do
        {
          *(v36 - 1) = v28 | 0x80;
          v28 = (v38 >> 7);
          *v36++ = v38 >> 7;
          v39 = v38 >> 14;
          v38 >>= 7;
        }

        while (v39);
      }
    }

    else
    {
      v36 = v28 + 2;
    }
  }

  else
  {
    v36 = v28;
  }

  v40 = *(a1 + 8);
  if ((v40 & 1) == 0)
  {
    return v36;
  }

  v42 = v40 & 0xFFFFFFFFFFFFFFFCLL;
  v43 = *(v42 + 31);
  if (v43 < 0)
  {
    v44 = *(v42 + 8);
    v43 = *(v42 + 16);
  }

  else
  {
    v44 = (v42 + 8);
  }

  if ((*a3 - v36) >= v43)
  {
    v45 = v43;
    memcpy(v36, v44, v43);
    v36 += v45;
    return v36;
  }

  return sub_1957130(a3, v44, v43, v36);
}

unint64_t sub_15DB030(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = sub_15DA438(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v3 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v3 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v3 += ((9 * (__clz(*(a1 + 64) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_21:
  v3 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_15:
  result = v3 + ((v2 >> 7) & 2);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    result += v8;
  }

  *(a1 + 20) = result;
  return result;
}

std::string *sub_15DB1E4(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    if (v4)
    {
      LODWORD(result->__r_.__value_.__r.__words[2]) |= 1u;
      data = result[1].__r_.__value_.__l.__data_;
      if (!data)
      {
        size = v3->__r_.__value_.__l.__size_;
        v9 = (size & 0xFFFFFFFFFFFFFFFCLL);
        if (size)
        {
          v9 = *v9;
        }

        data = sub_15E0D70(v9);
        v3[1].__r_.__value_.__r.__words[0] = data;
      }

      if (*(a2 + 24))
      {
        v10 = *(a2 + 24);
      }

      else
      {
        v10 = &off_2779780;
      }

      result = sub_128F948(data, v10);
      if ((v4 & 2) == 0)
      {
LABEL_4:
        if ((v4 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_27;
      }
    }

    else if ((v4 & 2) == 0)
    {
      goto LABEL_4;
    }

    v3[1].__r_.__value_.__l.__size_ = *(a2 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
    }

LABEL_27:
    v3[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
    if ((v4 & 8) == 0)
    {
LABEL_6:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_29;
    }

LABEL_28:
    v3[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_29:
    v3[2].__r_.__value_.__l.__size_ = *(a2 + 56);
    if ((v4 & 0x20) == 0)
    {
LABEL_8:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_30:
    v3[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
LABEL_11:
        LODWORD(v3->__r_.__value_.__r.__words[2]) |= v4;
        goto LABEL_12;
      }

LABEL_10:
      v3[3].__r_.__value_.__l.__size_ = *(a2 + 80);
      goto LABEL_11;
    }

LABEL_31:
    v3[3].__r_.__value_.__r.__words[0] = *(a2 + 72);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  if ((v4 & 0x100) != 0)
  {
    v5 = *(a2 + 88);
    LODWORD(v3->__r_.__value_.__r.__words[2]) |= 0x100u;
    v3[3].__r_.__value_.__s.__data_[16] = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {

    return sub_1957EF4(&v3->__r_.__value_.__l.__size_, (v6 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

uint64_t sub_15DB34C(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F5260;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = &qword_278E990;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_15DB390(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26F5260;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15EF398((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_1957EF4(v4, (v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 48) = &qword_278E990;
  if (*(a2 + 16))
  {
    v11 = (*v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (*v4)
    {
      v11 = *v11;
    }

    sub_194EA1C((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v11);
  }

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

void sub_15DB4B8(_Unwind_Exception *a1)
{
  sub_15EEFEC(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_15DB500(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v5 = (a1 + 48);
  if (*(a1 + 48) != &qword_278E990)
  {
    sub_194E89C(v5);
  }

  if (v2)
  {
    sub_11F19CC(v3);
  }

LABEL_7:
  sub_15EEFEC((a1 + 24));
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15DB5AC(uint64_t a1)
{
  sub_15DB500(a1);

  operator delete();
}

uint64_t sub_15DB5E4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15DC17C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 48) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1957EA8(v6);
  }

  return result;
}

uint64_t sub_15DB698(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v29 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, v29, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = (*v29 + 1);
    v7 = **v29;
    if (**v29 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(*v29, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = (*v29 + 2);
      }
    }

    *v29 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 == 5)
    {
      if (v7 == 42)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = v19 + 1;
          *v29 = v19 + 1;
          v21 = *(a1 + 40);
          if (v21 && (v22 = *(a1 + 32), v22 < *v21))
          {
            *(a1 + 32) = v22 + 1;
            v23 = *&v21[2 * v22 + 2];
          }

          else
          {
            v24 = sub_15E0F18(*(a1 + 24));
            v23 = sub_19593CC(a1 + 24, v24);
            v20 = *v29;
          }

          v19 = sub_2227504(a3, v23, v20);
          *v29 = v19;
          if (!v19)
          {
            break;
          }

          if (*a3 <= v19 || *v19 != 42)
          {
            goto LABEL_42;
          }
        }

LABEL_50:
        *v29 = 0;
        return *v29;
      }

LABEL_13:
      if (v7)
      {
        v12 = (v7 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return *v29;
        }

        goto LABEL_50;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v14 = sub_11F1920((a1 + 8));
        v6 = *v29;
      }

      v15 = sub_1952690(v7, v14, v6, a3);
      goto LABEL_24;
    }

    if (v10 != 2)
    {
      if (v10 == 1 && v7 == 8)
      {
        v26 = v6 + 1;
        v25 = *v6;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if (v27 < 0)
        {
          *v29 = sub_19587DC(v6, v25);
          if (!*v29)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v26 = v6 + 2;
LABEL_39:
          *v29 = v26;
        }

        if (v25 > 4)
        {
          sub_12E8450();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 56) = v25;
        }

        continue;
      }

      goto LABEL_13;
    }

    if (v7 != 18)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v16 = *(a1 + 8);
    v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
    if (v16)
    {
      v17 = *v17;
    }

    v18 = sub_194DB04((a1 + 48), v17);
    v15 = sub_1958890(v18, *v29, a3);
LABEL_24:
    *v29 = v15;
    if (!v15)
    {
      goto LABEL_50;
    }

LABEL_42:
    ;
  }

  return *v29;
}

char *sub_15DB8EC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 56);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    v6 = sub_128AEEC(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v6)
      {
        v6 = sub_225EB68(a3, v6);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *v6 = 42;
      v14 = *(v13 + 20);
      v6[1] = v14;
      if (v14 > 0x7F)
      {
        v15 = sub_19575D0(v14, v6 + 1);
      }

      else
      {
        v15 = v6 + 2;
      }

      v6 = sub_15DC674(v13, v15, a3);
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v6;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if ((*a3 - v6) >= v19)
  {
    v21 = v19;
    memcpy(v6, v20, v19);
    v6 += v21;
    return v6;
  }

  return sub_1957130(a3, v20, v19, v6);
}

uint64_t sub_15DBAD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_15DC9E8(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v12 = *(a1 + 56);
      if (v12 < 0)
      {
        v13 = 11;
      }

      else
      {
        v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v13;
    }
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = *((v14 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v17 < 0)
    {
      v17 = *(v16 + 16);
    }

    v2 += v17;
  }

  *(a1 + 20) = v2;
  return v2;
}

void sub_15DBBFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15EF398((a1 + 24), v6, (v5 + 8), v4, **(a1 + 40) - *(a1 + 32));
    v7 = *(a1 + 32) + v4;
    *(a1 + 32) = v7;
    v8 = *(a1 + 40);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      v10 = *(a2 + 48);
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      sub_194EA1C((a1 + 48), (v10 & 0xFFFFFFFFFFFFFFFELL), v12);
    }

    if ((v9 & 2) != 0)
    {
      *(a1 + 56) = *(a2 + 56);
    }

    *(a1 + 16) |= v9;
  }

  v13 = *(a2 + 8);
  if (v13)
  {

    sub_1957EF4((a1 + 8), (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15DBD10(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_15DB5E4(a1);

    sub_15DBBFC(a1, a2);
  }
}

__n128 sub_15DBD64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v6 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  v7 = *(a2 + 48);
  *(a2 + 48) = *(a1 + 48);
  *(a1 + 48) = v7;
  LODWORD(v7) = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  return result;
}

uint64_t sub_15DBDD8(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F52E0;
  *(result + 8) = v3;
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = a2;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = a2;
  *(result + 88) = a2;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_15DBE20(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26F52E0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = sub_19592E8(a1 + 24, *(a2 + 32));
    sub_15EF424((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = sub_19592E8(a1 + 48, *(a2 + 56));
    sub_15EF4B0((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v15 = *(a2 + 72);
  if (v15)
  {
    sub_1959094((a1 + 72), v15);
    v16 = *(a1 + 80);
    *(a1 + 72) += *(a2 + 72);
    memcpy(v16, *(a2 + 80), 8 * *(a2 + 72));
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v17 = *(a2 + 96);
  if (v17)
  {
    v18 = *(a2 + 104);
    v19 = sub_19592E8(a1 + 88, *(a2 + 96));
    sub_15EF53C((a1 + 88), v19, (v18 + 8), v17, **(a1 + 104) - *(a1 + 96));
    v20 = *(a1 + 96) + v17;
    *(a1 + 96) = v20;
    v21 = *(a1 + 104);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  v22 = *(a2 + 8);
  if (v22)
  {
    sub_1957EF4(v4, (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void sub_15DC024(_Unwind_Exception *a1)
{
  sub_15EF178(v5);
  sub_1956ABC(v4);
  sub_15EF0F4(v3);
  sub_15EF070(v1 + 3);
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15DC0A4(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  sub_15EF178(a1 + 11);
  sub_1956ABC((a1 + 9));
  sub_15EF0F4(a1 + 6);
  sub_15EF070(a1 + 3);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15DC144(void *a1)
{
  sub_15DC0A4(a1);

  operator delete();
}

uint64_t sub_15DC17C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 >= 1)
  {
    v3 = (*(result + 40) + 8);
    do
    {
      v4 = *v3++;
      result = sub_15DE100(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      result = sub_15DF1B0(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  *(v1 + 72) = 0;
  v8 = *(v1 + 96);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 104) + 8);
    do
    {
      v10 = *v9++;
      result = sub_15DCF04(v10);
      --v8;
    }

    while (v8);
    *(v1 + 96) = 0;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 104) = 0;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1957EA8(v11);
  }

  return result;
}

char *sub_15DC254(uint64_t a1, char *a2, int32x2_t *a3)
{
  v44 = a2;
  for (i = a3[11].u32[1]; (sub_195ADC0(a3, &v44, i) & 1) == 0; i = a3[11].u32[1])
  {
    v6 = v44 + 1;
    v7 = *v44;
    if (*v44 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        v6 = sub_1958824(v44, v8 - 128);
        v7 = v9;
      }

      else
      {
        v6 = v44 + 2;
      }
    }

    v44 = v6;
    v10 = v7 >> 3;
    if (v7 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v7 == 8)
        {
          v37 = v6 + 1;
          v36 = *v6;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v44 = sub_19587DC(v6, v36);
            if (!v44)
            {
              return 0;
            }
          }

          else
          {
            v37 = v6 + 2;
LABEL_64:
            v44 = v37;
          }

          if (v36 > 0xC)
          {
            sub_12E8450();
          }

          else
          {
            *(a1 + 16) |= 1u;
            *(a1 + 112) = v36;
          }

          continue;
        }
      }

      else if (v10 == 2 && v7 == 18)
      {
        v18 = v6 - 1;
        while (1)
        {
          v19 = v18 + 1;
          v44 = v18 + 1;
          v20 = *(a1 + 40);
          if (v20 && (v21 = *(a1 + 32), v21 < *v20))
          {
            *(a1 + 32) = v21 + 1;
            v22 = *&v20[2 * v21 + 2];
          }

          else
          {
            v23 = sub_15E10C4(*(a1 + 24));
            v22 = sub_19593CC(a1 + 24, v23);
            v19 = v44;
          }

          v18 = sub_2227594(a3, v22, v19);
          v44 = v18;
          if (!v18)
          {
            return 0;
          }

          if (*a3 <= v18 || *v18 != 18)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_71;
    }

    if (v10 == 3)
    {
      if (v7 == 26)
      {
        v24 = v6 - 1;
        while (1)
        {
          v25 = v24 + 1;
          v44 = v24 + 1;
          v26 = *(a1 + 64);
          if (v26 && (v27 = *(a1 + 56), v27 < *v26))
          {
            *(a1 + 56) = v27 + 1;
            v28 = *&v26[2 * v27 + 2];
          }

          else
          {
            v29 = sub_15E1170(*(a1 + 48));
            v28 = sub_19593CC(a1 + 48, v29);
            v25 = v44;
          }

          v24 = sub_2227624(a3, v28, v25);
          v44 = v24;
          if (!v24)
          {
            return 0;
          }

          if (*a3 <= v24 || *v24 != 26)
          {
            goto LABEL_79;
          }
        }
      }

LABEL_71:
      if (v7)
      {
        v40 = (v7 & 7) == 4;
      }

      else
      {
        v40 = 1;
      }

      if (v40)
      {
        if (v6)
        {
          a3[10].i32[0] = v7 - 1;
          return v44;
        }

        return 0;
      }

      v41 = *(a1 + 8);
      if (v41)
      {
        v42 = (v41 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v42 = sub_11F1920((a1 + 8));
        v6 = v44;
      }

      v39 = sub_1952690(v7, v42, v6, a3);
      goto LABEL_78;
    }

    if (v10 != 4)
    {
      if (v10 == 5 && v7 == 42)
      {
        v11 = v6 - 1;
        while (1)
        {
          v12 = v11 + 1;
          v44 = v11 + 1;
          v13 = *(a1 + 104);
          if (v13 && (v14 = *(a1 + 96), v14 < *v13))
          {
            *(a1 + 96) = v14 + 1;
            v15 = *&v13[2 * v14 + 2];
          }

          else
          {
            sub_15E0FCC(*(a1 + 88));
            v15 = sub_19593CC(a1 + 88, v16);
            v12 = v44;
          }

          v11 = sub_22276B4(a3, v15, v12);
          v44 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 42)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_71;
    }

    if (v7 == 32)
    {
      v30 = v6 - 1;
      while (1)
      {
        v44 = v30 + 1;
        v31 = v30[1];
        if (v31 < 0)
        {
          v32 = (v30[2] << 7) + v31;
          v31 = (v32 - 128);
          if (v30[2] < 0)
          {
            v30 = sub_19587DC((v30 + 1), (v32 - 128));
            v31 = v33;
          }

          else
          {
            v30 += 3;
          }
        }

        else
        {
          v30 += 2;
        }

        v44 = v30;
        v34 = *(a1 + 72);
        if (v34 == *(a1 + 76))
        {
          v35 = v34 + 1;
          sub_1959094((a1 + 72), v34 + 1);
          *(*(a1 + 80) + 8 * v34) = v31;
          v30 = v44;
        }

        else
        {
          *(*(a1 + 80) + 8 * v34) = v31;
          v35 = v34 + 1;
        }

        *(a1 + 72) = v35;
        if (!v30)
        {
          return 0;
        }

        if (*a3 <= v30 || *v30 != 32)
        {
          goto LABEL_79;
        }
      }
    }

    if (v7 != 34)
    {
      goto LABEL_71;
    }

    v39 = sub_1958938((a1 + 72), v6, a3);
LABEL_78:
    v44 = v39;
    if (!v39)
    {
      return 0;
    }

LABEL_79:
    ;
  }

  return v44;
}

char *sub_15DC674(uint64_t a1, char *a2, unint64_t *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 112);
    *a2 = 8;
    a2[1] = v6;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      a2[2] = v6 >> 7;
      v5 = a2 + 3;
      if (v6 >= 0x4000)
      {
        LOBYTE(v8) = a2[2];
        do
        {
          *(v5 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v5++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v5 = a2 + 2;
    }
  }

  else
  {
    v5 = a2;
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
      *v5 = 18;
      v13 = *(v12 + 20);
      v5[1] = v13;
      if (v13 > 0x7F)
      {
        v14 = sub_19575D0(v13, v5 + 1);
      }

      else
      {
        v14 = v5 + 2;
      }

      v5 = sub_15DE6E4(v12, v14, a3);
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v17 = *(*(a1 + 64) + 8 * j + 8);
      *v5 = 26;
      v18 = *(v17 + 20);
      v5[1] = v18;
      if (v18 > 0x7F)
      {
        v19 = sub_19575D0(v18, v5 + 1);
      }

      else
      {
        v19 = v5 + 2;
      }

      v5 = sub_15DF534(v17, v19, a3);
    }
  }

  v20 = *(a1 + 72);
  if (v20 < 1)
  {
    v23 = v5;
  }

  else
  {
    for (k = 0; k != v20; ++k)
    {
      if (*a3 <= v5)
      {
        v5 = sub_225EB68(a3, v5);
      }

      v22 = *(*(a1 + 80) + 8 * k);
      *v5 = 32;
      v5[1] = v22;
      if (v22 > 0x7F)
      {
        v5[1] = v22 | 0x80;
        v24 = v22 >> 7;
        v5[2] = v22 >> 7;
        v23 = v5 + 3;
        if (v22 >= 0x4000)
        {
          LOBYTE(v5) = v5[2];
          do
          {
            *(v23 - 1) = v5 | 0x80;
            v5 = (v24 >> 7);
            *v23++ = v24 >> 7;
            v25 = v24 >> 14;
            v24 >>= 7;
          }

          while (v25);
        }
      }

      else
      {
        v23 = v5 + 2;
      }

      v5 = v23;
    }
  }

  v26 = *(a1 + 96);
  if (v26)
  {
    for (m = 0; m != v26; ++m)
    {
      if (*a3 <= v23)
      {
        v23 = sub_225EB68(a3, v23);
      }

      v28 = *(*(a1 + 104) + 8 * m + 8);
      *v23 = 42;
      v29 = *(v28 + 20);
      v23[1] = v29;
      if (v29 > 0x7F)
      {
        v30 = sub_19575D0(v29, v23 + 1);
      }

      else
      {
        v30 = v23 + 2;
      }

      v23 = sub_15DD248(v28, v30, a3);
    }
  }

  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return v23;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if ((*a3 - v23) >= v34)
  {
    v36 = v34;
    memcpy(v23, v35, v34);
    v23 += v36;
    return v23;
  }

  return sub_1957130(a3, v35, v34, v23);
}

uint64_t sub_15DC9E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_15DEB40(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_15DF7E0(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = sub_1959F14((a1 + 72));
  v16 = *(a1 + 96);
  v17 = v15 + *(a1 + 72) + v16 + v9;
  v18 = *(a1 + 104);
  if (v18)
  {
    v19 = (v18 + 8);
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 8 * v16;
    do
    {
      v21 = *v19++;
      v22 = sub_15DD588(v21);
      v17 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      v20 -= 8;
    }

    while (v20);
  }

  if (*(a1 + 16))
  {
    v23 = *(a1 + 112);
    v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v23 >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 11;
    }

    v17 += v25;
  }

  v26 = *(a1 + 8);
  if (v26)
  {
    v28 = v26 & 0xFFFFFFFFFFFFFFFCLL;
    v29 = *((v26 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v29 < 0)
    {
      v29 = *(v28 + 16);
    }

    v17 += v29;
  }

  *(a1 + 20) = v17;
  return v17;
}

void sub_15DCB7C(char *result, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = *(a2 + 40);
    v6 = sub_19592E8((result + 24), *(a2 + 32));
    sub_15EF424(result + 3, v6, (v5 + 8), v4, **(result + 5) - *(result + 8));
    v7 = *(result + 8) + v4;
    *(result + 8) = v7;
    v8 = *(result + 5);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = sub_19592E8((result + 48), *(a2 + 56));
    sub_15EF4B0(result + 6, v11, (v10 + 8), v9, **(result + 8) - *(result + 14));
    v12 = *(result + 14) + v9;
    *(result + 14) = v12;
    v13 = *(result + 8);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(result + 18);
    sub_1959094(result + 18, v15 + v14);
    v16 = *(result + 10);
    *(result + 18) += *(a2 + 72);
    memcpy((v16 + 8 * v15), *(a2 + 80), 8 * *(a2 + 72));
  }

  v17 = *(a2 + 96);
  if (v17)
  {
    v18 = *(a2 + 104);
    v19 = sub_19592E8((result + 88), *(a2 + 96));
    sub_15EF53C(result + 11, v19, (v18 + 8), v17, **(result + 13) - *(result + 24));
    v20 = *(result + 24) + v17;
    *(result + 24) = v20;
    v21 = *(result + 13);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  if (*(a2 + 16))
  {
    v22 = *(a2 + 112);
    *(result + 4) |= 1u;
    *(result + 28) = v22;
  }

  v23 = *(a2 + 8);
  if (v23)
  {

    sub_1957EF4(result + 1, (v23 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

void sub_15DCD50(char *result, char *a2)
{
  if (a2 != result)
  {
    sub_15DC17C(result);

    sub_15DCB7C(result, a2);
  }
}

__n128 sub_15DCDA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  v8 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v8;
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v9;
  *(a2 + 80) = v10;
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  result = *(a2 + 88);
  *(a1 + 88) = result;
  *(a2 + 88) = v11;
  *(a2 + 96) = v12;
  v14 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v14;
  LODWORD(v14) = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  return result;
}

void *sub_15DCE58(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15DCECC(void *a1)
{
  sub_15DCE58(a1);

  operator delete();
}

uint64_t sub_15DCF04(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1F) != 0)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_15DCF30(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v41, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v41 + 1;
    v8 = *v41;
    if (*v41 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v41, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v41 + 2;
      }
    }

    v41 = v7;
    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      break;
    }

    if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_41;
      }

      v5 |= 2u;
      v20 = v7 + 1;
      v19 = *v7;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = v7 + 2;
LABEL_30:
        v41 = v20;
        *(a1 + 32) = v19;
        goto LABEL_48;
      }

      v31 = sub_19587DC(v7, v19);
      v41 = v31;
      *(a1 + 32) = v32;
      if (!v31)
      {
        goto LABEL_63;
      }
    }

    else if (v11 == 4)
    {
      if (v8 != 32)
      {
        goto LABEL_41;
      }

      v5 |= 0x10u;
      v23 = v7 + 1;
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = v7 + 2;
LABEL_35:
        v41 = v23;
        *(a1 + 48) = v22;
        goto LABEL_48;
      }

      v33 = sub_19587DC(v7, v22);
      v41 = v33;
      *(a1 + 48) = v34;
      if (!v33)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v11 != 5 || v8 != 40)
      {
        goto LABEL_41;
      }

      v5 |= 8u;
      v12 = v7 + 1;
      v13 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v12;
      v13 = v13 + (v14 << 7) - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v12 = v7 + 2;
LABEL_15:
        v41 = v12;
        *(a1 + 44) = v13;
        goto LABEL_48;
      }

      v37 = sub_1958770(v7, v13);
      v41 = v37;
      *(a1 + 44) = v38;
      if (!v37)
      {
        goto LABEL_63;
      }
    }

LABEL_48:
    if (sub_195ADC0(a3, &v41, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v11 == 1)
  {
    if (v8 != 8)
    {
      goto LABEL_41;
    }

    v5 |= 4u;
    v25 = v7 + 1;
    v26 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    v27 = *v25;
    v26 = v26 + (v27 << 7) - 128;
    if ((v27 & 0x80000000) == 0)
    {
      v25 = v7 + 2;
LABEL_40:
      v41 = v25;
      *(a1 + 40) = v26;
      goto LABEL_48;
    }

    v35 = sub_1958770(v7, v26);
    v41 = v35;
    *(a1 + 40) = v36;
    if (!v35)
    {
      goto LABEL_63;
    }

    goto LABEL_48;
  }

  if (v11 == 2 && v8 == 16)
  {
    v5 |= 1u;
    v17 = v7 + 1;
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = v7 + 2;
LABEL_25:
      v41 = v17;
      *(a1 + 24) = v16;
      goto LABEL_48;
    }

    v39 = sub_19587DC(v7, v16);
    v41 = v39;
    *(a1 + 24) = v40;
    if (!v39)
    {
      goto LABEL_63;
    }

    goto LABEL_48;
  }

LABEL_41:
  if (v8)
  {
    v28 = (v8 & 7) == 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v30 = sub_11F1920((a1 + 8));
      v7 = v41;
    }

    v41 = sub_1952690(v8, v30, v7, a3);
    if (!v41)
    {
      goto LABEL_63;
    }

    goto LABEL_48;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_63:
  v41 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

char *sub_15DD248(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 40);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if (v5)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 24);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          v6 = (v13 >> 7);
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v11)
    {
      v11 = sub_225EB68(a3, v11);
    }

    v16 = *(a1 + 32);
    *v11 = 24;
    v11[1] = v16;
    if (v16 > 0x7F)
    {
      v11[1] = v16 | 0x80;
      v17 = v16 >> 7;
      v11[2] = v16 >> 7;
      v15 = v11 + 3;
      if (v16 >= 0x4000)
      {
        LOBYTE(v18) = v11[2];
        do
        {
          *(v15 - 1) = v18 | 0x80;
          v18 = v17 >> 7;
          *v15++ = v17 >> 7;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
      }
    }

    else
    {
      v15 = v11 + 2;
    }
  }

  else
  {
    v15 = v11;
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v15)
    {
      v15 = sub_225EB68(a3, v15);
    }

    v21 = *(a1 + 48);
    *v15 = 32;
    v15[1] = v21;
    if (v21 > 0x7F)
    {
      v15[1] = v21 | 0x80;
      v22 = v21 >> 7;
      v15[2] = v21 >> 7;
      v20 = v15 + 3;
      if (v21 >= 0x4000)
      {
        LOBYTE(v15) = v15[2];
        do
        {
          *(v20 - 1) = v15 | 0x80;
          v15 = (v22 >> 7);
          *v20++ = v22 >> 7;
          v23 = v22 >> 14;
          v22 >>= 7;
        }

        while (v23);
      }
    }

    else
    {
      v20 = v15 + 2;
    }
  }

  else
  {
    v20 = v15;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v20)
    {
      v20 = sub_225EB68(a3, v20);
    }

    v25 = *(a1 + 44);
    *v20 = 40;
    v20[1] = v25;
    if (v25 > 0x7F)
    {
      v20[1] = v25 | 0x80;
      v26 = v25 >> 7;
      v20[2] = v25 >> 7;
      v24 = v20 + 3;
      if (v25 >= 0x4000)
      {
        LOBYTE(v27) = v20[2];
        do
        {
          *(v24 - 1) = v27 | 0x80;
          v27 = v26 >> 7;
          *v24++ = v26 >> 7;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
      }
    }

    else
    {
      v24 = v20 + 2;
    }
  }

  else
  {
    v24 = v20;
  }

  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v24;
  }

  v31 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v32 = *(v31 + 31);
  if (v32 < 0)
  {
    v33 = *(v31 + 8);
    v32 = *(v31 + 16);
  }

  else
  {
    v33 = (v31 + 8);
  }

  if ((*a3 - v24) >= v32)
  {
    v34 = v32;
    memcpy(v24, v33, v32);
    v24 += v34;
    return v24;
  }

  return sub_1957130(a3, v33, v32, v24);
}

unint64_t sub_15DD588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 0x1F) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if (v1)
  {
    v2 = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  v2 += ((9 * (__clz(*(a1 + 44) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 0x10) != 0)
  {
LABEL_11:
    v2 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

LABEL_12:
  v3 = *(a1 + 8);
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    v2 += v6;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_15DD6A0(std::string *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    result[1].__r_.__value_.__r.__words[0] = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    HIDWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  LODWORD(result[1].__r_.__value_.__r.__words[2]) = *(a2 + 40);
  if ((v2 & 8) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
  }

LABEL_8:
  LODWORD(result->__r_.__value_.__r.__words[2]) |= v2;
LABEL_9:
  v3 = *(a2 + 8);
  if (v3)
  {
    return sub_1957EF4(&result->__r_.__value_.__l.__size_, (v3 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}

void *sub_15DD73C(void *result, uint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *result = off_26F53E0;
  result[1] = v3;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_15DD76C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = off_26F53E0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = 0;
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1957EF4((a1 + 8), (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void sub_15DD7E8(_Unwind_Exception *a1)
{
  *v1 = off_27215B8;
  sub_195A5E8(v2);
  _Unwind_Resume(a1);
}

void *sub_15DD81C(void *a1)
{
  v3 = a1 + 1;
  v2 = a1[1];
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    sub_11F19CC(a1 + 1);
  }

  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15DD890(void *a1)
{
  sub_15DD81C(a1);

  operator delete();
}

uint64_t sub_15DD8C8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = a1 + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return sub_1957EA8(result);
  }

  return result;
}

char *sub_15DD8EC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v25 = a2;
  v5 = 0;
  if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = v25 + 1;
    v8 = *v25;
    if (*v25 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        v7 = sub_1958824(v25, v9 - 128);
        v8 = v10;
      }

      else
      {
        v7 = v25 + 2;
      }
    }

    v25 = v7;
    if (v8 >> 3 != 2)
    {
      break;
    }

    if (v8 != 16)
    {
      goto LABEL_12;
    }

    v5 |= 2u;
    v15 = v7 + 1;
    v16 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    v17 = *v15;
    v16 = v16 + (v17 << 7) - 128;
    if ((v17 & 0x80000000) == 0)
    {
      v15 = v7 + 2;
LABEL_24:
      v25 = v15;
      *(a1 + 28) = v16;
      goto LABEL_31;
    }

    v22 = sub_1958770(v7, v16);
    v25 = v22;
    *(a1 + 28) = v23;
    if (!v22)
    {
      goto LABEL_41;
    }

LABEL_31:
    if (sub_195ADC0(a3, &v25, a3[11].u32[1]))
    {
      goto LABEL_2;
    }
  }

  if (v8 >> 3 == 1 && v8 == 8)
  {
    v18 = v7 + 1;
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v20 = *v18;
    v21 = (v20 << 7) + v19;
    LODWORD(v19) = v21 - 128;
    if (v20 < 0)
    {
      v25 = sub_19587DC(v7, (v21 - 128));
      if (!v25)
      {
        goto LABEL_41;
      }

      LODWORD(v19) = v24;
    }

    else
    {
      v18 = v7 + 2;
LABEL_28:
      v25 = v18;
    }

    if (sub_15D86AC(v19))
    {
      *(a1 + 16) |= 1u;
      *(a1 + 24) = v19;
    }

    else
    {
      sub_12E8450();
    }

    goto LABEL_31;
  }

LABEL_12:
  if (v8)
  {
    v12 = (v8 & 7) == 4;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL) + 8;
    }

    else
    {
      v14 = sub_11F1920((a1 + 8));
      v7 = v25;
    }

    v25 = sub_1952690(v8, v14, v7, a3);
    if (!v25)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (v7)
  {
    a3[10].i32[0] = v8 - 1;
    goto LABEL_2;
  }

LABEL_41:
  v25 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

char *sub_15DDAF8(uint64_t a1, char *__dst, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= __dst)
    {
      __dst = sub_225EB68(a3, __dst);
    }

    v7 = *(a1 + 24);
    *__dst = 8;
    __dst[1] = v7;
    if (v7 > 0x7F)
    {
      __dst[1] = v7 | 0x80;
      v8 = v7 >> 7;
      __dst[2] = v7 >> 7;
      v6 = __dst + 3;
      if (v7 >= 0x4000)
      {
        LOBYTE(v9) = __dst[2];
        do
        {
          *(v6 - 1) = v9 | 0x80;
          v9 = v8 >> 7;
          *v6++ = v8 >> 7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
      }
    }

    else
    {
      v6 = __dst + 2;
    }
  }

  else
  {
    v6 = __dst;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v6)
    {
      v6 = sub_225EB68(a3, v6);
    }

    v12 = *(a1 + 28);
    *v6 = 16;
    v6[1] = v12;
    if (v12 > 0x7F)
    {
      v6[1] = v12 | 0x80;
      v13 = v12 >> 7;
      v6[2] = v12 >> 7;
      v11 = v6 + 3;
      if (v12 >= 0x4000)
      {
        LOBYTE(v6) = v6[2];
        do
        {
          *(v11 - 1) = v6 | 0x80;
          LODWORD(v6) = v13 >> 7;
          *v11++ = v13 >> 7;
          v14 = v13 >> 14;
          v13 >>= 7;
        }

        while (v14);
      }
    }

    else
    {
      v11 = v6 + 2;
    }
  }

  else
  {
    v11 = v6;
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v11;
  }

  v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(v17 + 31);
  if (v18 < 0)
  {
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
  }

  else
  {
    v19 = (v17 + 8);
  }

  if ((*a3 - v11) >= v18)
  {
    v20 = v18;
    memcpy(v11, v19, v18);
    v11 += v20;
    return v11;
  }

  return sub_1957130(a3, v19, v18, v11);
}

uint64_t sub_15DDCA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_9;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = *(a1 + 24);
  if ((v3 & 0x80000000) == 0)
  {
    v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v2 = 11;
  if ((v1 & 2) != 0)
  {
LABEL_8:
    v2 += ((9 * (__clz(*(a1 + 28) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    v2 += v7;
  }

  *(a1 + 20) = v2;
  return v2;
}

std::string *sub_15DDD54(std::string *result, std::string *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_15DD8C8(result);

    return sub_128F8FC(v4, a2);
  }

  return result;
}

uint64_t sub_15DDDA8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(result + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  LODWORD(v2) = *(result + 16);
  *(result + 16) = *(a2 + 16);
  *(a2 + 16) = v2;
  v3 = *(result + 24);
  *(result + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_15DDDEC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = off_26F5460;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1958E5C((a1 + 24), v5);
    v6 = *(a1 + 32);
    *(a1 + 24) += *(a2 + 24);
    memcpy(v6, *(a2 + 32), 4 * *(a2 + 24));
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 40);
  if (v7)
  {
    sub_1959094((a1 + 40), v7);
    v8 = *(a1 + 48);
    *(a1 + 40) += *(a2 + 40);
    memcpy(v8, *(a2 + 48), 8 * *(a2 + 40));
  }

  v9 = *(a2 + 8);
  if (v9)
  {
    sub_1957EF4(v4, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v10 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  v11 = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = v11;
  return a1;
}

uint64_t sub_15DDFE8(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (a1 != &off_2779828)
  {
    v5 = *(a1 + 56);
    if (v5)
    {
      sub_15DD81C(v5);
      operator delete();
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      sub_15E0864(v6);
      operator delete();
    }
  }

  if (*v3)
  {
    sub_11F19CC(v3);
  }

LABEL_10:
  sub_1956ABC(a1 + 40);
  sub_1956ABC(a1 + 24);
  *a1 = off_27215B8;
  sub_195A5E8(v3);
  return a1;
}

void sub_15DE0C8(uint64_t a1)
{
  sub_15DDFE8(a1);

  operator delete();
}

uint64_t sub_15DE100(uint64_t result)
{
  v1 = result;
  *(result + 24) = 0;
  *(result + 40) = 0;
  v2 = *(result + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_15DD8C8(*(result + 56));
    }

    if ((v2 & 2) != 0)
    {
      v3 = *(v1 + 64);
      v4 = *(v3 + 8);
      result = v3 + 8;
      *(result + 16) = 0;
      *(result + 8) = 0;
      if (v4)
      {
        result = sub_1957EA8(result);
      }
    }
  }

  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 1;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1957EA8(v5);
  }

  return result;
}

char *sub_15DE19C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v52 = a2;
  v6 = 0;
  if ((sub_195ADC0(a3, &v52, a3[11].u32[1]) & 1) == 0)
  {
    v8 = (a1 + 8);
    while (1)
    {
      v9 = v52 + 1;
      v10 = *v52;
      if (*v52 < 0)
      {
        v11 = *v9;
        v12 = v10 + (v11 << 7);
        v10 = v12 - 128;
        if (v11 < 0)
        {
          v9 = sub_1958824(v52, v12 - 128);
          v10 = v13;
        }

        else
        {
          v9 = v52 + 2;
        }
      }

      v52 = v9;
      v14 = v10 >> 3;
      if (v10 >> 3 > 3)
      {
        break;
      }

      if (v14 == 1)
      {
        if (v10 != 10)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 1u;
        v26 = *(a1 + 56);
        if (!v26)
        {
          v27 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v27 = *v27;
          }

          v26 = sub_15E104C(v27);
          *(a1 + 56) = v26;
          v9 = v52;
        }

        v17 = sub_2227744(a3, v26, v9);
        goto LABEL_97;
      }

      if (v14 == 2)
      {
        if (v10 != 16)
        {
          goto LABEL_90;
        }

        v6 |= 4u;
        v42 = v9 + 1;
        v43 = *v9;
        if (*v9 < 0)
        {
          v44 = *v42;
          v43 = v43 + (v44 << 7) - 128;
          if (v44 < 0)
          {
            v48 = sub_1958770(v9, v43);
            v52 = v48;
            *(a1 + 72) = v49;
            if (!v48)
            {
              goto LABEL_104;
            }

            goto LABEL_98;
          }

          v42 = v9 + 2;
        }

        v52 = v42;
        *(a1 + 72) = v43;
      }

      else
      {
        if (v14 != 3 || v10 != 24)
        {
          goto LABEL_90;
        }

        v6 |= 8u;
        v19 = v9 + 1;
        v20 = *v9;
        if (*v9 < 0)
        {
          v21 = *v19;
          v20 = v20 + (v21 << 7) - 128;
          if (v21 < 0)
          {
            v46 = sub_1958770(v9, v20);
            v52 = v46;
            *(a1 + 76) = v47;
            if (!v46)
            {
              goto LABEL_104;
            }

            goto LABEL_98;
          }

          v19 = v9 + 2;
        }

        v52 = v19;
        *(a1 + 76) = v20;
      }

LABEL_98:
      if (sub_195ADC0(a3, &v52, a3[11].u32[1]))
      {
        goto LABEL_2;
      }
    }

    if (v10 >> 3 <= 6)
    {
      if (v14 != 4)
      {
        if (v14 != 6 || v10 != 50)
        {
          goto LABEL_90;
        }

        *(a1 + 16) |= 2u;
        v15 = *(a1 + 64);
        if (!v15)
        {
          v16 = (*v8 & 0xFFFFFFFFFFFFFFFCLL);
          if (*v8)
          {
            v16 = *v16;
          }

          v15 = sub_15E12B4(v16);
          *(a1 + 64) = v15;
          v9 = v52;
        }

        v17 = sub_22273E4(a3, v15, v9);
LABEL_97:
        v52 = v17;
        if (!v17)
        {
          goto LABEL_104;
        }

        goto LABEL_98;
      }

      if (v10 != 32)
      {
        if (v10 == 34)
        {
          *&v53 = a1 + 24;
          *(&v53 + 1) = sub_15D86A0;
          v54 = a1 + 8;
          v55 = 4;
          v17 = sub_1216588(a3, v9, &v53, v5);
          goto LABEL_97;
        }

        goto LABEL_90;
      }

      v28 = v9 - 1;
      while (2)
      {
        v52 = v28 + 1;
        v29 = v28[1];
        v30 = v28 + 2;
        if (v29 < 0)
        {
          v31 = *v30;
          v32 = (v31 << 7) + v29;
          LODWORD(v29) = v32 - 128;
          if ((v31 & 0x80000000) == 0)
          {
            v30 = v28 + 3;
            goto LABEL_49;
          }

          v52 = sub_19587DC((v28 + 1), (v32 - 128));
          if (!v52)
          {
            goto LABEL_104;
          }

          LODWORD(v29) = v35;
        }

        else
        {
LABEL_49:
          v52 = v30;
        }

        if (v29 > 2)
        {
          sub_12E8500();
        }

        else
        {
          v33 = *(a1 + 24);
          if (v33 == *(a1 + 28))
          {
            v34 = v33 + 1;
            sub_1958E5C((a1 + 24), v33 + 1);
            *(*(a1 + 32) + 4 * v33) = v29;
          }

          else
          {
            *(*(a1 + 32) + 4 * v33) = v29;
            v34 = v33 + 1;
          }

          *(a1 + 24) = v34;
        }

        v28 = v52;
        if (*a3 <= v52 || *v52 != 32)
        {
          goto LABEL_98;
        }

        continue;
      }
    }

    if (v14 == 7)
    {
      if (v10 == 56)
      {
        v36 = v9 - 1;
        while (1)
        {
          v52 = v36 + 1;
          v37 = v36[1];
          if (v37 < 0)
          {
            v38 = (v36[2] << 7) + v37;
            v37 = (v38 - 128);
            if (v36[2] < 0)
            {
              v36 = sub_19587DC((v36 + 1), (v38 - 128));
              v37 = v39;
            }

            else
            {
              v36 += 3;
            }
          }

          else
          {
            v36 += 2;
          }

          v52 = v36;
          v40 = *(a1 + 40);
          if (v40 == *(a1 + 44))
          {
            v41 = v40 + 1;
            sub_1959094((a1 + 40), v40 + 1);
            *(*(a1 + 48) + 8 * v40) = v37;
            v36 = v52;
          }

          else
          {
            *(*(a1 + 48) + 8 * v40) = v37;
            v41 = v40 + 1;
          }

          *(a1 + 40) = v41;
          if (!v36)
          {
            goto LABEL_104;
          }

          if (*a3 <= v36 || *v36 != 56)
          {
            goto LABEL_98;
          }
        }
      }

      if (v10 == 58)
      {
        v17 = sub_1958938((a1 + 40), v9, a3);
        goto LABEL_97;
      }

LABEL_90:
      if (v10)
      {
        v50 = (v10 & 7) == 4;
      }

      else
      {
        v50 = 1;
      }

      if (v50)
      {
        if (v9)
        {
          a3[10].i32[0] = v10 - 1;
          goto LABEL_2;
        }

LABEL_104:
        v52 = 0;
        goto LABEL_2;
      }

      if (*v8)
      {
        v51 = (*v8 & 0xFFFFFFFFFFFFFFFCLL) + 8;
      }

      else
      {
        v51 = sub_11F1920((a1 + 8));
        v9 = v52;
      }

      v17 = sub_1952690(v10, v51, v9, a3);
      goto LABEL_97;
    }

    if (v14 != 8 || v10 != 64)
    {
      goto LABEL_90;
    }

    v22 = v9 + 1;
    v23 = *v9;
    if (v23 < 0)
    {
      v24 = *v22;
      v25 = (v24 << 7) + v23;
      LODWORD(v23) = v25 - 128;
      if (v24 < 0)
      {
        v52 = sub_19587DC(v9, (v25 - 128));
        if (!v52)
        {
          goto LABEL_104;
        }

        LODWORD(v23) = v45;
        goto LABEL_36;
      }

      v22 = v9 + 2;
    }

    v52 = v22;
LABEL_36:
    if (sub_12AE1F4(v23))
    {
      *(a1 + 16) |= 0x10u;
      *(a1 + 80) = v23;
    }

    else
    {
      sub_12E85F0();
    }

    goto LABEL_98;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v52;
}

char *sub_15DE6E4(uint64_t a1, char *a2, unint64_t *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v6 = *(a1 + 56);
    *a2 = 10;
    v7 = *(v6 + 20);
    a2[1] = v7;
    if (v7 > 0x7F)
    {
      v8 = sub_19575D0(v7, a2 + 1);
    }

    else
    {
      v8 = a2 + 2;
    }

    a2 = sub_15DDAF8(v6, v8, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_225EB68(a3, a2);
    }

    v10 = *(a1 + 72);
    *a2 = 16;
    a2[1] = v10;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      a2[2] = v10 >> 7;
      v9 = a2 + 3;
      if (v10 >= 0x4000)
      {
        LOBYTE(v12) = a2[2];
        do
        {
          *(v9 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v9++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v9 = a2 + 2;
    }
  }

  else
  {
    v9 = a2;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= v9)
    {
      v9 = sub_225EB68(a3, v9);
    }

    v15 = *(a1 + 76);
    *v9 = 24;
    v9[1] = v15;
    if (v15 > 0x7F)
    {
      v9[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v9[2] = v15 >> 7;
      v14 = v9 + 3;
      if (v15 >= 0x4000)
      {
        LOBYTE(v9) = v9[2];
        do
        {
          *(v14 - 1) = v9 | 0x80;
          LODWORD(v9) = v16 >> 7;
          *v14++ = v16 >> 7;
          v17 = v16 >> 14;
          v16 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v14 = v9 + 2;
    }
  }

  else
  {
    v14 = v9;
  }

  v18 = *(a1 + 24);
  if (v18 < 1)
  {
    v21 = v14;
  }

  else
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= v14)
      {
        v14 = sub_225EB68(a3, v14);
      }

      v20 = *(*(a1 + 32) + 4 * i);
      *v14 = 32;
      v14[1] = v20;
      if (v20 > 0x7F)
      {
        v14[1] = v20 | 0x80;
        v22 = v20 >> 7;
        v14[2] = v20 >> 7;
        v21 = v14 + 3;
        if (v20 >= 0x4000)
        {
          LOBYTE(v14) = v14[2];
          do
          {
            *(v21 - 1) = v14 | 0x80;
            v14 = (v22 >> 7);
            *v21++ = v22 >> 7;
            v23 = v22 >> 14;
            v22 >>= 7;
          }

          while (v23);
        }
      }

      else
      {
        v21 = v14 + 2;
      }

      v14 = v21;
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= v21)
    {
      v21 = sub_225EB68(a3, v21);
    }

    v24 = *(a1 + 64);
    *v21 = 50;
    v25 = *(v24 + 20);
    v21[1] = v25;
    if (v25 > 0x7F)
    {
      v26 = sub_19575D0(v25, v21 + 1);
    }

    else
    {
      v26 = v21 + 2;
    }

    v21 = sub_15E0A78(v24, v26, a3);
  }

  v27 = *(a1 + 40);
  if (v27 < 1)
  {
    v30 = v21;
  }

  else
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= v21)
      {
        v21 = sub_225EB68(a3, v21);
      }

      v29 = *(*(a1 + 48) + 8 * j);
      *v21 = 56;
      v21[1] = v29;
      if (v29 > 0x7F)
      {
        v21[1] = v29 | 0x80;
        v31 = v29 >> 7;
        v21[2] = v29 >> 7;
        v30 = v21 + 3;
        if (v29 >= 0x4000)
        {
          LOBYTE(v21) = v21[2];
          do
          {
            *(v30 - 1) = v21 | 0x80;
            v21 = (v31 >> 7);
            *v30++ = v31 >> 7;
            v32 = v31 >> 14;
            v31 >>= 7;
          }

          while (v32);
        }
      }

      else
      {
        v30 = v21 + 2;
      }

      v21 = v30;
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= v30)
    {
      v30 = sub_225EB68(a3, v30);
    }

    v34 = *(a1 + 80);
    *v30 = 64;
    v30[1] = v34;
    if (v34 > 0x7F)
    {
      v30[1] = v34 | 0x80;
      v35 = v34 >> 7;
      v30[2] = v34 >> 7;
      v33 = v30 + 3;
      if (v34 >= 0x4000)
      {
        LOBYTE(v30) = v30[2];
        do
        {
          *(v33 - 1) = v30 | 0x80;
          v30 = (v35 >> 7);
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v30 + 2;
    }
  }

  else
  {
    v33 = v30;
  }

  v37 = *(a1 + 8);
  if ((v37 & 1) == 0)
  {
    return v33;
  }

  v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  v40 = *(v39 + 31);
  if (v40 < 0)
  {
    v41 = *(v39 + 8);
    v40 = *(v39 + 16);
  }

  else
  {
    v41 = (v39 + 8);
  }

  if ((*a3 - v33) >= v40)
  {
    v42 = v40;
    memcpy(v33, v41, v40);
    v33 += v42;
    return v33;
  }

  return sub_1957130(a3, v41, v40, v33);
}

uint64_t sub_15DEB40(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 32) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = v4 + sub_1959F14((a1 + 40)) + v2 + *(a1 + 40);
  v8 = *(a1 + 16);
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_24;
  }

  if (v8)
  {
    v9 = sub_15DDCA8(*(a1 + 56));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = sub_15E0BA0(*(a1 + 64));
  v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 += ((9 * (__clz(*(a1 + 72) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 += ((9 * (__clz(*(a1 + 76) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) == 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  v11 = *(a1 + 80);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v7 += v12;
LABEL_24:
  v13 = *(a1 + 8);
  if (v13)
  {
    v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    v7 += v16;
  }

  *(a1 + 20) = v7;
  return v7;
}

std::string *sub_15DED04(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = result + 1;
    data_low = SLODWORD(result[1].__r_.__value_.__l.__data_);
    sub_1958E5C(&result[1], data_low + v4);
    v7 = *(v3 + 32);
    LODWORD(v5->__r_.__value_.__l.__data_) += *(a2 + 24);
    result = memcpy((v7 + 4 * data_low), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(v3 + 40);
    sub_1959094((v3 + 40), v9 + v8);
    v10 = *(v3 + 48);
    *(v3 + 40) += *(a2 + 40);
    result = memcpy((v10 + 8 * v9), *(a2 + 48), 8 * *(a2 + 40));
  }

  v11 = *(a2 + 16);
  if ((v11 & 0x1F) != 0)
  {
    if (v11)
    {
      *(v3 + 16) |= 1u;
      v13 = *(v3 + 56);
      if (!v13)
      {
        v14 = *(v3 + 8);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v13 = sub_15E104C(v15);
        *(v3 + 56) = v13;
      }

      if (*(a2 + 56))
      {
        v16 = *(a2 + 56);
      }

      else
      {
        v16 = &off_2779808;
      }

      result = sub_128F8FC(v13, v16);
      if ((v11 & 2) == 0)
      {
LABEL_8:
        if ((v11 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_33;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_8;
    }

    *(v3 + 16) |= 2u;
    v17 = *(v3 + 64);
    if (!v17)
    {
      v18 = *(v3 + 8);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v17 = sub_15E12B4(v19);
      *(v3 + 64) = v17;
    }

    if (*(a2 + 64))
    {
      v20 = *(a2 + 64);
    }

    else
    {
      v20 = &off_2779900;
    }

    result = sub_12B9D50(v17, v20);
    if ((v11 & 4) == 0)
    {
LABEL_9:
      if ((v11 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(v3 + 72) = *(a2 + 72);
    if ((v11 & 8) == 0)
    {
LABEL_10:
      if ((v11 & 0x10) == 0)
      {
LABEL_12:
        *(v3 + 16) |= v11;
        goto LABEL_13;
      }

LABEL_11:
      *(v3 + 80) = *(a2 + 80);
      goto LABEL_12;
    }

LABEL_34:
    *(v3 + 76) = *(a2 + 76);
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  v12 = *(a2 + 8);
  if (v12)
  {

    return sub_1957EF4((v3 + 8), (v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return result;
}