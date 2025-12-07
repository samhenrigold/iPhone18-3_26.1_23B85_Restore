uint64_t re_ifmedia_upd_8125(uint64_t a1)
{
  if ((*(a1 + 48) & 0xE0) != 0x20)
  {
    return 22;
  }

  IOLog("rl::%s(%d): set to %x\n", "re_ifmedia_upd_8125", 7533, *(a1 + 48));
  v2 = *(a1 + 62);
  if (v2 != 33062)
  {
    if (v2 != 33063)
    {
      goto LABEL_6;
    }

    v3 = re_real_ocp_phy_read(a1, 42474);
    re_real_ocp_phy_write(a1, 0xA5EAu, v3 & 0xFFFFFFFB);
  }

  v4 = re_real_ocp_phy_read(a1, 42474);
  re_real_ocp_phy_write(a1, 0xA5EAu, v4 & 0xFFFFFFFD);
LABEL_6:
  v5 = re_real_ocp_phy_read(a1, 42024);
  re_real_ocp_phy_write(a1, 0xA428u, v5 & 0xFFFFFDFF);
  v6 = re_real_ocp_phy_read(a1, 42474);
  re_real_ocp_phy_write(a1, 0xA5EAu, v6 & 0xFFFE);
  v7 = re_real_ocp_phy_read(a1, 42452) & 0xEE7F;
  if (*(a1 + 160))
  {
    v8 = 0;
  }

  else
  {
    v8 = 42002;
  }

  v9 = re_real_ocp_phy_read(a1, v8) & 0xFFFFFCFF;
  if (*(a1 + 160))
  {
    v10 = 0;
  }

  else
  {
    v10 = 41992;
  }

  v11 = re_real_ocp_phy_read(a1, v10) & 0xF21F;
  v12 = *(a1 + 48);
  v13 = v12 & 0xF001F;
  if ((v12 & 0xF001F) <= 0xF)
  {
    if ((v12 & 0xF001F) > 2)
    {
      if (v13 == 3)
      {
LABEL_41:
        v17 = (v12 >> 20) & 1;
        if (!v13)
        {
          v17 = 1;
        }

        if (v17)
        {
          v18 = 96;
        }

        else
        {
          v18 = 32;
        }

        v11 |= v18;
        v16 = 37376;
        goto LABEL_47;
      }

      if (v13 == 6)
      {
        if ((v12 & 0x100000) == 0)
        {
LABEL_38:
          v11 |= 0x80u;
          goto LABEL_41;
        }

LABEL_40:
        v11 |= 0x180u;
        goto LABEL_41;
      }

      if (v13 != 11)
      {
        goto LABEL_63;
      }

      goto LABEL_36;
    }

    if (!v13)
    {
LABEL_31:
      v15 = *(a1 + 62);
      if (v15 == 33063)
      {
        v7 |= 0x1000u;
      }

      goto LABEL_33;
    }

    if (v13 == 2)
    {
      v16 = 38912;
LABEL_47:
      v19 = (v12 >> 22) & 1;
      if (!v13)
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = v11 | 0xC00;
      }

      else
      {
        v20 = v11;
      }

      *(a1 + 160) = 0;
      re_real_ocp_phy_write(a1, 0xA5D4u, v7);
      if (*(a1 + 160))
      {
        v21 = 0;
      }

      else
      {
        v21 = -23544;
      }

      re_real_ocp_phy_write(a1, v21, v20);
      if (*(a1 + 160))
      {
        v22 = 0;
      }

      else
      {
        v22 = -23534;
      }

      re_real_ocp_phy_write(a1, v22, v9);
      if (*(a1 + 160))
      {
        v23 = 0;
      }

      else
      {
        v23 = -23552;
      }

      re_real_ocp_phy_write(a1, v23, v16);
      return 0;
    }
  }

  else
  {
    if ((v12 & 0xF001F) <= 0x16)
    {
      if (v13 != 16)
      {
        if (v13 != 21)
        {
          if (v13 != 22)
          {
            goto LABEL_63;
          }

          goto LABEL_35;
        }

        goto LABEL_31;
      }

LABEL_36:
      LOWORD(v9) = v9 | 0x200;
      if ((v12 & 0x100000) == 0 && v13)
      {
        goto LABEL_38;
      }

      goto LABEL_40;
    }

    if (v13 == 65567 || v13 == 0x10000)
    {
LABEL_35:
      v7 |= 0x80u;
      goto LABEL_36;
    }

    if (v13 == 23)
    {
      LOWORD(v15) = *(a1 + 62);
LABEL_33:
      if ((v15 & 0xFFFE) == 0x8126)
      {
        v7 |= 0x100u;
      }

      goto LABEL_35;
    }
  }

LABEL_63:
  printf("re%d: Unsupported media type\n", *(a1 + 56));
  return 0;
}

uint64_t re_mdio_read(uint64_t a1, unsigned int a2)
{
  LOWORD(v2) = *(a1 + 160);
  if (!v2)
  {
    v2 = (a2 >> 3) | 0xA40;
    v4 = a2 & 7 | 0x10;
LABEL_6:
    v3 = ((2 * v4 - 32) & 0xFE) + 16 * v2;
    return re_real_ocp_phy_read(a1, v3);
  }

  if (a2 >= 0x10)
  {
    v4 = a2;
    goto LABEL_6;
  }

  v3 = 0;
  return re_real_ocp_phy_read(a1, v3);
}

void re_real_ocp_phy_write(uint64_t a1, unsigned __int16 a2, int a3)
{
  if (!*(a1 + 167))
  {
    __dmb(2u);
    *(*(a1 + 40) + 184) = a3 & 0x8000FFFF | (a2 >> 1 << 16) | 0x80000000;
  }

  v4 = 0;
  do
  {
    v5 = 1;
    IODelay(1u);
    if (!*(a1 + 167))
    {
      v6 = *(*(a1 + 40) + 184);
      __dmb(1u);
      v5 = v6 >> 31;
    }

    if (!v5)
    {
      break;
    }
  }

  while (v4++ < 0x63);
}

uint64_t re_ifmedia_sts_8125(uint64_t result, uint64_t a2)
{
  *a2 = 0x2000000001;
  if (*(result + 167))
  {
    *a2 = 3;
    v3 = -1;
    v4 = 32;
LABEL_3:
    v5 = v4 | 0x100000;
    goto LABEL_4;
  }

  v7 = *(*(result + 40) + 108);
  __dmb(1u);
  if ((v7 & 2) == 0)
  {
    return result;
  }

  v8 = *(result + 167);
  *a2 |= 2u;
  if (v8)
  {
    v4 = *(a2 + 4);
    v3 = -1;
    goto LABEL_3;
  }

  v3 = *(*(result + 40) + 108);
  __dmb(1u);
  v4 = *(a2 + 4);
  if (v3)
  {
    goto LABEL_3;
  }

  v5 = v4 | 0x200000;
LABEL_4:
  *(a2 + 4) = v5;
  if ((v3 & 4) != 0)
  {
    v6 = 3;
    goto LABEL_13;
  }

  if ((v3 & 8) != 0)
  {
    v6 = 6;
    goto LABEL_13;
  }

  if ((v3 & 0x80210) != 0)
  {
    v6 = 16;
LABEL_13:
    v5 |= v6;
    *(a2 + 4) = v5;
    goto LABEL_14;
  }

  if ((v3 & 0xC00) != 0)
  {
    v6 = 22;
    goto LABEL_13;
  }

  if ((v3 & 0x3000) != 0)
  {
    v6 = 23;
    goto LABEL_13;
  }

  if ((v3 & 0x4000) != 0)
  {
    v6 = 21;
    goto LABEL_13;
  }

LABEL_14:
  if ((v3 & 0x60) != 0)
  {
    v5 |= 0x400000u;
    *(a2 + 4) = v5;
  }

  if (*(result + 24))
  {
    v9 = v5 & 0xF001F;
    if ((v5 & 0xF001Fu) <= 0x14)
    {
      if (v9 == 6)
      {
        v10 = 2;
      }

      else
      {
        if (v9 != 16)
        {
          return result;
        }

        v10 = 4;
      }
    }

    else
    {
      if (v9 != 21)
      {
        if (v9 == 22)
        {
          v10 = 1;
        }

        else
        {
          if (v9 != 23)
          {
            return result;
          }

          v10 = 2;
        }

        v11 = 42704;
        goto LABEL_30;
      }

      v10 = 8;
    }

    v11 = 42450;
LABEL_30:
    result = re_real_ocp_phy_read(result, v11);
    if ((v10 & result) != 0)
    {
      *(a2 + 4) |= 0x800000u;
    }
  }

  return result;
}

uint64_t re_enable_eee(uint64_t a1)
{
  v2 = *(a1 + 57);
  v3 = v2 - 82;
  if ((v2 - 82) > 0x13)
  {
    goto LABEL_9;
  }

  if (((1 << v3) & 0x7F) != 0)
  {
    re_clear_set_mac_ocp_bit(a1, 57408, 0, 3);
    v4 = re_real_ocp_phy_read(a1, 42034);
    re_real_ocp_phy_write(a1, 0xA432u, v4 | 0x10);
    v5 = re_real_ocp_phy_read(a1, 42448);
    re_real_ocp_phy_write(a1, 0xA5D0u, v5 | 6);
    v6 = re_real_ocp_phy_read(a1, 42708) | 1;
LABEL_11:
    re_real_ocp_phy_write(a1, 0xA6D4u, v6);
    v8 = re_real_ocp_phy_read(a1, 42712) & 0xFFFFFFEF;
    v10 = a1;
    v11 = -22824;
    goto LABEL_12;
  }

  if (((1 << v3) & 0x700) == 0)
  {
    if (((1 << v3) & 0xC0000) != 0)
    {
      re_clear_set_mac_ocp_bit(a1, 57408, 0, 3);
      v9 = re_real_ocp_phy_read(a1, 42448);
      re_real_ocp_phy_write(a1, 0xA5D0u, v9 | 0xE);
      v8 = re_real_ocp_phy_read(a1, 42708) | 3;
      goto LABEL_8;
    }

LABEL_9:
    if ((v2 - 80) >= 2)
    {
      v16 = 4294967194;
      goto LABEL_13;
    }

    re_clear_set_mac_ocp_bit(a1, 57408, 0, 3);
    re_clear_set_mac_ocp_bit(a1, 60258, 0, 6);
    v12 = re_real_ocp_phy_read(a1, 42034);
    re_real_ocp_phy_write(a1, 0xA432u, v12 | 0x10);
    v13 = re_real_ocp_phy_read(a1, 42448);
    re_real_ocp_phy_write(a1, 0xA5D0u, v13 | 6);
    v6 = re_real_ocp_phy_read(a1, 42708) & 0xFFFE;
    goto LABEL_11;
  }

  re_clear_set_mac_ocp_bit(a1, 57408, 0, 3);
  v7 = re_real_ocp_phy_read(a1, 42448);
  re_real_ocp_phy_write(a1, 0xA5D0u, v7 | 6);
  v8 = re_real_ocp_phy_read(a1, 42708) & 0xFFFC;
LABEL_8:
  v10 = a1;
  v11 = -22828;
LABEL_12:
  re_real_ocp_phy_write(v10, v11, v8);
  v14 = re_real_ocp_phy_read(a1, 42024);
  re_real_ocp_phy_write(a1, 0xA428u, v14 & 0xFFFFFF7F);
  v15 = re_real_ocp_phy_read(a1, 42146);
  re_real_ocp_phy_write(a1, 0xA4A2u, v15 & 0xFFFFFDFF);
  v16 = 0;
LABEL_13:
  re_disable_advanced_eee(a1);
  return v16;
}

void re_disable_advanced_eee(uint64_t a1)
{
  if (*(a1 + 170) >= 2u)
  {
    OOB_mutex_lock(a1);
  }

  if ((re_real_ocp_phy_read(a1, 42032) & 0x8000) != 0)
  {
    re_set_phy_mcu_patch_request(a1);
    re_clear_set_mac_ocp_bit(a1, 57426, 1, 0);
    v4 = re_real_ocp_phy_read(a1, 42050);
    re_real_ocp_phy_write(a1, 0xA442u, v4 & 0xFFFFCFFF);
    v5 = re_real_ocp_phy_read(a1, 42032);
    re_real_ocp_phy_write(a1, 0xA430u, v5 & 0x7FFF);
    re_clear_phy_mcu_patch_request(a1);
  }

  else
  {
    re_clear_set_mac_ocp_bit(a1, 57426, 1, 0);
    v2 = re_real_ocp_phy_read(a1, 42050);
    re_real_ocp_phy_write(a1, 0xA442u, v2 & 0xFFFFCFFF);
    v3 = re_real_ocp_phy_read(a1, 42032);
    re_real_ocp_phy_write(a1, 0xA430u, v3 & 0x7FFF);
  }

  if (*(a1 + 170) >= 2u)
  {

    OOB_mutex_unlock(a1);
  }
}

uint64_t re_disable_eee(uint64_t a1)
{
  v2 = *(a1 + 57);
  v3 = v2 - 82;
  if ((v2 - 82) > 0x13)
  {
    goto LABEL_9;
  }

  if (((1 << v3) & 0x7F) != 0)
  {
    re_clear_set_mac_ocp_bit(a1, 57408, 3, 0);
    v4 = re_real_ocp_phy_read(a1, 42034) | 0x10;
LABEL_11:
    re_real_ocp_phy_write(a1, 0xA432u, v4);
    v9 = re_real_ocp_phy_read(a1, 42448);
    re_real_ocp_phy_write(a1, 0xA5D0u, v9 & 0xFFFFFFF9);
    v5 = 65519;
    v6 = 42712;
    v7 = 65534;
    v8 = 42708;
    goto LABEL_12;
  }

  if (((1 << v3) & 0x700) == 0)
  {
    if (((1 << v3) & 0xC0000) != 0)
    {
      re_clear_set_mac_ocp_bit(a1, 57408, 3, 0);
      v5 = 65532;
      v6 = 42708;
      v7 = 65521;
      goto LABEL_8;
    }

LABEL_9:
    if ((v2 - 80) >= 2)
    {
      v14 = 4294967194;
      goto LABEL_13;
    }

    re_clear_set_mac_ocp_bit(a1, 57408, 3, 0);
    re_clear_set_mac_ocp_bit(a1, 60258, 6, 0);
    v4 = re_real_ocp_phy_read(a1, 42034) & 0xFFFFFFEF;
    goto LABEL_11;
  }

  re_clear_set_mac_ocp_bit(a1, 57408, 3, 0);
  v5 = 65532;
  v6 = 42708;
  v7 = 65529;
LABEL_8:
  v8 = 42448;
LABEL_12:
  v10 = re_real_ocp_phy_read(a1, v8);
  re_real_ocp_phy_write(a1, v8, v10 & v7);
  v11 = re_real_ocp_phy_read(a1, v6);
  re_real_ocp_phy_write(a1, v6, v11 & v5);
  v12 = re_real_ocp_phy_read(a1, 42024);
  re_real_ocp_phy_write(a1, 0xA428u, v12 & 0xFFFFFF7F);
  v13 = re_real_ocp_phy_read(a1, 42146);
  re_real_ocp_phy_write(a1, 0xA4A2u, v13 & 0xFFFFFDFF);
  v14 = 0;
LABEL_13:
  re_disable_advanced_eee(a1);
  return v14;
}

void re_hw_phy_config(uint64_t result)
{
  if ((*(result + 57) & 0xFE) == 0x50 && re_real_ocp_phy_read(result, 50198) != 1280)
  {
    re_set_phy_mcu_patch_request(result);
    re_real_ocp_phy_write(result, 0xC416u, 0);
    re_real_ocp_phy_write(result, 0xC416u, 1280);
    re_clear_phy_mcu_patch_request(result);
  }

  if (*(result + 170) != 3 || *(result + 232) != 6)
  {
    re_real_ocp_phy_write(result, 0xA436u, 32798);
    v2 = re_real_ocp_phy_read(result, 42040);
    *(result + 158) = v2;
    if (v2 != *(result + 156))
    {
      v3 = *(result + 57) - 80;
      if (v3 <= 0x15)
      {
        __asm { BR              X16 }
      }

      __asm { BTI             j }

      re_real_ocp_phy_write(result, 0xA436u, 32798);
      re_real_ocp_phy_write(result, 0xA438u, *(result + 156));
      *(result + 158) = *(result + 156);
    }

    *(result + 160) = 0;
    v8 = *(result + 57) - 80;
    if (v8 <= 0x15)
    {
      __asm { BR              X16 }
    }

    __asm { BTI             j }

    v9 = re_real_ocp_phy_read(result, 58368);
    re_real_ocp_phy_write(result, 0xE400u, v9 | 0x8000);
    v10 = re_real_ocp_phy_read(result, 58384);
    re_real_ocp_phy_write(result, 0xE410u, v10 | 0x100);
    v11 = re_real_ocp_phy_read(result, 42560);
    re_real_ocp_phy_write(result, 0xA640u, v11 | 0x8000);
    v12 = re_real_ocp_phy_read(result, 42420);
    re_real_ocp_phy_write(result, 0xA5B4u, v12 & 0x7FFF);
    if (*(result + 24) == 1)
    {
      re_enable_eee(result);
    }

    else
    {
      re_disable_eee(result);
    }

    *(result + 160) = 0;
  }
}

void re_set_phy_mcu_patch_request(uint64_t a1)
{
  v2 = re_real_ocp_phy_read(a1, 47136);
  re_real_ocp_phy_write(a1, 0xB820u, v2 | 0x10);
  v3 = 0;
  do
  {
    v4 = re_real_ocp_phy_read(a1, 47104);
    IODelay(0x32u);
    IODelay(0x32u);
    if ((v4 & 0x40) != 0)
    {
      break;
    }
  }

  while (v3++ < 0x3E7);
}

void re_clear_phy_mcu_patch_request(uint64_t a1)
{
  v2 = re_real_ocp_phy_read(a1, 47136);
  re_real_ocp_phy_write(a1, 0xB820u, v2 & 0xFFFFFFEF);
  v3 = 0;
  do
  {
    v4 = re_real_ocp_phy_read(a1, 47104);
    IODelay(0x32u);
    IODelay(0x32u);
    if ((v4 & 0x40) == 0)
    {
      break;
    }
  }

  while (v3++ < 0x3E7);
}

uint64_t re_clear_set_mac_ocp_bit(uint64_t result, int a2, __int16 a3, __int16 a4)
{
  if (!*(result + 167))
  {
    v4 = (a2 << 15) & 0x7FFF0000;
    __dmb(2u);
    v5 = *(result + 40);
    *(v5 + 176) = v4;
    if (!*(result + 167))
    {
      v6 = *(v5 + 176);
      __dmb(1u);
      if (!*(result + 167))
      {
        __dmb(2u);
        *(*(result + 40) + 176) = v4 | (v6 & ~a3 | a4) | 0x80000000;
      }
    }
  }

  return result;
}

void re_ocp_write(uint64_t a1, int a2, char a3, int a4)
{
  if (!*(a1 + 172))
  {
    return;
  }

  v5 = a2;
  v7 = *(a1 + 169);
  switch(v7)
  {
    case 3:
      v17 = -1158217728;
      goto LABEL_26;
    case 2:
      v17 = 0;
LABEL_26:

      re_eri_write_with_oob_base_address(a1, a2, a3, a4, 2, v17);
      return;
    case 1:
      v8 = 0;
LABEL_6:
      v9 = 8 * v8;
      v10 = v5 & 0xFFFFFFFC;
LABEL_7:
      v11 = a3;
      if (a3)
      {
        if (a3 > 3u)
        {
          v12 = -1;
        }

        else
        {
          v12 = dword_225B8[a3 - 1];
        }

        v13 = v5 & 3;
        v14 = re_ocp_read(a1, v10, 4u);
        if (!*(a1 + 167))
        {
          __dmb(2u);
          *(*(a1 + 40) + 176) = v14 & ~(v12 << (8 * v13)) | ((a4 << (8 * v13)) >> v9);
          if (!*(a1 + 167))
          {
            __dmb(2u);
            *(*(a1 + 40) + 180) = v5 & 0xFFC | 0x8000F000;
          }
        }

        for (i = 0; ; ++i)
        {
          IODelay(0x64u);
          if (*(a1 + 167))
          {
            if (i > 8)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v16 = *(*(a1 + 40) + 180);
            __dmb(1u);
            if ((v16 & 0x80000000) == 0 || i >= 9)
            {
LABEL_21:
              a3 = 0;
              v8 = 4 - v13;
              LOWORD(v5) = v10;
              if (4 - v13 < v11)
              {
                v5 = v10 + 4;
                a3 = v11 - v8;
                goto LABEL_6;
              }

              goto LABEL_7;
            }
          }
        }
      }

      IODelay(0x14u);
      break;
  }
}

uint64_t re_ocp_read(uint64_t a1, int a2, unsigned __int8 a3)
{
  if (!*(a1 + 172))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 169);
  switch(v4)
  {
    case 3:
      v16 = -1158217728;
      break;
    case 2:
      v16 = 0;
      break;
    case 1:
      v5 = 0;
      v6 = 0;
LABEL_6:
      v7 = 8 * v5;
      v8 = a2 & 0xFFFFFFFC;
      while (1)
      {
        v9 = a3;
        if (!a3)
        {
          break;
        }

        if (!*(a1 + 167))
        {
          __dmb(2u);
          *(*(a1 + 40) + 180) = a2 & 0xFFC | 0xF000;
        }

        v10 = 0;
        v11 = a2 & 3;
        do
        {
          IODelay(0x64u);
          if (*(a1 + 167))
          {
            break;
          }

          v12 = *(*(a1 + 40) + 180);
          __dmb(1u);
          if (v12 < 0)
          {
            break;
          }
        }

        while (v10++ < 0x13);
        if (v9 > 3)
        {
          v14 = -1;
        }

        else
        {
          v14 = dword_225B8[v9 - 1];
        }

        if (*(a1 + 167))
        {
          v15 = -1;
        }

        else
        {
          v15 = *(*(a1 + 40) + 176);
          __dmb(1u);
        }

        a3 = 0;
        v6 = ((v15 & (v14 << (8 * v11))) >> (8 * v11) << v7) | v6;
        v5 = 4 - v11;
        LOWORD(a2) = v8;
        if (4 - v11 < v9)
        {
          a2 = v8 + 4;
          a3 = v9 - v5;
          goto LABEL_6;
        }
      }

      IODelay(0x14u);
      return v6;
    default:
      return 0;
  }

  return re_eri_read_with_oob_base_address(a1, a2, a3, 2, v16);
}

uint64_t re_read_ptp_frc_lo(uint64_t a1)
{
  if (*(a1 + 167))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 57);
  v3 = v2 == 100 || v2 == 88;
  v4 = 3512;
  if (v3)
  {
    v4 = 3496;
  }

  result = *(*(a1 + 40) + v4);
  __dmb(1u);
  return result;
}

uint64_t re_read_ptp_frc_hi(uint64_t a1)
{
  if (*(a1 + 167))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 57);
  v3 = v2 == 100 || v2 == 88;
  v4 = 3516;
  if (v3)
  {
    v4 = 3500;
  }

  result = *(*(a1 + 40) + v4);
  __dmb(1u);
  return result;
}

uint64_t re_program_valid_slot(uint64_t result, int a2, int a3, int a4)
{
  if (!*(result + 167))
  {
    if ((*(result + 57) & 0xFE) == 0x64)
    {
      v4 = 45056;
    }

    else
    {
      v4 = 43008;
    }

    __dmb(2u);
    *(*(result + 40) + (v4 + 4 * a2)) = a3 | (a4 << 16);
  }

  return result;
}

uint64_t re_program_avb_filter_entry(uint64_t result, unsigned __int16 a2, int a3, __int16 a4, int a5, int a6, int a7, unsigned int a8, unsigned __int8 a9)
{
  if (!*(result + 167))
  {
    __dmb(2u);
    *(*(result + 40) + 176) = a2 | 0xE19F0000;
    if (!*(result + 167))
    {
      __dmb(2u);
      *(*(result + 40) + 176) = a3 - 509607936;
      if (!*(result + 167))
      {
        if (a6)
        {
          v9 = 0x8000;
        }

        else
        {
          v9 = 0;
        }

        if (a5)
        {
          v10 = 0x4000;
        }

        else
        {
          v10 = 0;
        }

        __dmb(2u);
        *(*(result + 40) + 176) = (v10 | a4 | v9) - 509476864;
        if (!*(result + 167))
        {
          __dmb(2u);
          *(*(result + 40) + 176) = a7 - 509411328;
          if (!*(result + 167))
          {
            __dmb(2u);
            *(*(result + 40) + 176) = a8 - 509345792;
            if (!*(result + 167))
            {
              __dmb(2u);
              *(*(result + 40) + 176) = HIWORD(a8) - 509280256;
              if (!*(result + 167))
              {
                v11 = a9 - 509214720;
                __dmb(2u);
                *(*(result + 40) + 176) = v11;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t re_configure_avb_filter_entry(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 1 << (a2 & 0xF);
  v4 = ((a2 >> 4) - 15534);
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
    LOWORD(v3) = 0;
  }

  return re_clear_set_mac_ocp_bit(a1, v4, v5, v3);
}

BOOL re_apply_avb_filter(uint64_t a1, int a2)
{
  re_clear_set_mac_ocp_bit(a1, 49982, 0, 64);
  if (*(a1 + 167) || (__dmb(2u), v4 = *(a1 + 40), *(v4 + 176) = 1637810176, *(a1 + 167)))
  {
    result = 0;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v9 = *(v4 + 176);
    __dmb(1u);
    result = (v9 & 0x40) == 0;
    if (!a2)
    {
      return result;
    }
  }

  if (!result)
  {
    v6 = a2 - 1;
    do
    {
      IOSleep(1u);
      if (*(a1 + 167) || (__dmb(2u), v7 = *(a1 + 40), *(v7 + 176) = 1637810176, *(a1 + 167)))
      {
        result = 0;
        if (!v6)
        {
          return result;
        }
      }

      else
      {
        v8 = *(v7 + 176);
        __dmb(1u);
        result = (v8 & 0x40) == 0;
        if (!v6)
        {
          return result;
        }
      }

      --v6;
    }

    while (!result);
  }

  return result;
}

uint64_t re_write_prefetch_delay(uint64_t result, unsigned int a2, int a3)
{
  if (a2 <= 7 && !*(result + 167))
  {
    v3 = ((a2 << 15) + 1936326656) & 0x736F0000;
    __dmb(2u);
    v4 = *(result + 40);
    *(v4 + 176) = v3;
    if (!*(result + 167))
    {
      v5 = *(v4 + 176);
      __dmb(1u);
      if (!*(result + 167))
      {
        __dmb(2u);
        *(*(result + 40) + 176) = (a3 << (8 * (a2 & 1))) | v3 | v5 & ((255 << (8 * (a2 & 1))) ^ 0xFFFF) | 0x80000000;
      }
    }
  }

  return result;
}

uint64_t re_read_prefetch_delay(uint64_t a1, unsigned int a2)
{
  if (a2 <= 7)
  {
    if (*(a1 + 167) || (__dmb(2u), v3 = *(a1 + 40), *(v3 + 176) = ((a2 << 15) + 1936326656) & 0x736F0000, *(a1 + 167)))
    {
      LOWORD(v4) = -1;
    }

    else
    {
      v4 = *(v3 + 176);
      __dmb(1u);
    }

    return (v4 >> (8 * (a2 & 1)));
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

uint64_t re_enable_eee_workaround(uint64_t result)
{
  if (!*(result + 167))
  {
    __dmb(2u);
    v1 = *(result + 40);
    *(v1 + 176) = 1881145344;
    if (!*(result + 167))
    {
      v2 = *(v1 + 176);
      __dmb(1u);
      if (!*(result + 167))
      {
        __dmb(2u);
        *(*(result + 40) + 176) = v2 & 0xFFFD | 0xF0200000;
      }
    }
  }

  return result;
}

uint64_t re_configure_global_rx(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    if (!*(result + 167))
    {
      __dmb(2u);
      v2 = *(result + 40);
      *(v2 + 68) = 1090522368;
      if (!*(result + 167))
      {
        v3 = *(v2 + 216);
        __dmb(1u);
        if (!*(result + 167))
        {
          __dmb(2u);
          *(*(result + 40) + 216) = v3 & 0xFC | 1;
        }
      }
    }
  }

  else if (!*(result + 167))
  {
    __dmb(2u);
    *(*(result + 40) + 68) = 1086328064;
  }

  return result;
}

uint64_t re_configure_tally(uint64_t a1, uint64_t a2)
{
  result = re_clear_set_mac_ocp_bit(a1, 60036, 0, 3);
  if (!*(a1 + 167))
  {
    __dmb(2u);
    *(*(a1 + 40) + 20) = HIDWORD(a2);
    if (!*(a1 + 167))
    {
      __dmb(2u);
      *(*(a1 + 40) + 16) = a2;
    }
  }

  return result;
}

BOOL re_reset_tally(uint64_t a1)
{
  if (!*(a1 + 167))
  {
    v1 = *(*(a1 + 40) + 16);
    __dmb(1u);
    if (!*(a1 + 167))
    {
      __dmb(2u);
      *(*(a1 + 40) + 16) = v1 | 1;
    }
  }

  return _re_wait_reg(a1, 1);
}

BOOL _re_wait_reg(uint64_t a1, int a2)
{
  if (*(a1 + 167))
  {
    v4 = -1;
  }

  else
  {
    v4 = *(*(a1 + 40) + 16);
    __dmb(1u);
  }

  if ((v4 & a2) == 0)
  {
    return 1;
  }

  v5 = -2;
  do
  {
    IOSleep(1u);
    if (*(a1 + 167))
    {
      v6 = -1;
    }

    else
    {
      v6 = *(*(a1 + 40) + 16);
      __dmb(1u);
    }

    v7 = v6 & a2;
    result = v7 == 0;
    if (!v5)
    {
      break;
    }

    ++v5;
  }

  while (v7);
  return result;
}

BOOL re_trigger_tally(uint64_t a1)
{
  if (!*(a1 + 167))
  {
    v1 = *(*(a1 + 40) + 16);
    __dmb(1u);
    if (!*(a1 + 167))
    {
      __dmb(2u);
      *(*(a1 + 40) + 16) = v1 | 8;
    }
  }

  return _re_wait_reg(a1, 8);
}

void re_disable_mcu_bps(uint64_t a1)
{
  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v2 = -1;
    }

    else
    {
      v3 = *(*(a1 + 40) + 80);
      __dmb(1u);
      v2 = v3 | 0xC0;
    }

    *(*(a1 + 40) + 80) = v2;
  }

  _re_enable_aspm_clkreq_lock(a1, 0);
  if (!*(a1 + 167))
  {
    __dmb(2u);
    if (*(a1 + 167))
    {
      v4 = 63;
    }

    else
    {
      v5 = *(*(a1 + 40) + 80);
      __dmb(1u);
      v4 = v5 & 0x3F;
    }

    *(*(a1 + 40) + 80) = v4;
    if (!*(a1 + 167))
    {
      __dmb(2u);
      *(*(a1 + 40) + 176) = -31195136;
    }
  }

  v6 = -32243712;
  for (i = 64550; i < 0xFC46; i += 2)
  {
    if (!*(a1 + 167))
    {
      __dmb(2u);
      *(*(a1 + 40) + 176) = v6;
    }

    v6 += 0x10000;
  }

  IOSleep(3u);
  if (!*(a1 + 167))
  {
    __dmb(2u);
    *(*(a1 + 40) + 176) = -32309248;
  }
}

uint64_t re_write_mac_mcu_ram_code(uint64_t result, unsigned __int16 *a2, unsigned int a3)
{
  if (a2 && *(result + 234))
  {
    v3 = *(result + 236);
    if (*(result + 236))
    {
      if (a3)
      {
        v4 = 0;
        while (1)
        {
          v5 = v4 / v3;
          if (!(v4 % v3))
          {
            break;
          }

          if (!*(result + 167))
          {
            goto LABEL_8;
          }

LABEL_13:
          if (a3 == ++v4)
          {
            return result;
          }
        }

        if (*(result + 167))
        {
          goto LABEL_13;
        }

        __dmb(2u);
        v7 = *(result + 40);
        *(v7 + 176) = 1914896384;
        if (*(result + 167))
        {
          goto LABEL_13;
        }

        v8 = *(v7 + 176);
        __dmb(1u);
        if (*(result + 167))
        {
          goto LABEL_13;
        }

        __dmb(2u);
        *(*(result + 40) + 176) = v8 & 0xFFFC | v5 & 3 | 0xF2230000;
        if (*(result + 167))
        {
          goto LABEL_13;
        }

LABEL_8:
        v6 = ((a2[v4] | ((v4 - v5 * v3) << 16)) + 2080374784) | 0x80000000;
        __dmb(2u);
        *(*(result + 40) + 176) = v6;
        goto LABEL_13;
      }
    }

    else if (a3)
    {
      v9 = a3;
      v10 = 2080374784;
      do
      {
        if (!*(result + 167))
        {
          v11 = (v10 + *a2) | 0x80000000;
          __dmb(2u);
          *(*(result + 40) + 176) = v11;
        }

        v10 += 0x10000;
        ++a2;
        --v9;
      }

      while (v9);
    }
  }

  return result;
}

void _re_ephy_write(uint64_t a1, int a2, int a3)
{
  if (!*(a1 + 167))
  {
    __dmb(2u);
    *(*(a1 + 40) + 128) = a3 | (a2 << 16) | 0x80000000;
  }

  for (i = 0; ; ++i)
  {
    IOSleep(1u);
    if (!*(a1 + 167))
    {
      break;
    }

    if (i > 3)
    {
      return;
    }

LABEL_9:
    ;
  }

  v5 = *(*(a1 + 40) + 128);
  __dmb(1u);
  if (v5 < 0 && i < 4)
  {
    goto LABEL_9;
  }
}

void re_real_set_phy_mcu_8125a_1(uint64_t a1)
{
  re_acquire_phy_mcu_patch_key_lock(a1);
  v2 = re_real_ocp_phy_read(a1, 47136);
  re_real_ocp_phy_write(a1, 0xB820u, v2 | 0x80);
  re_real_ocp_phy_write(a1, 0xA436u, 40982);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA436u, 40978);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA436u, 40980);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32787);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32801);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32815);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32829);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32834);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32849);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32849);
  re_real_ocp_phy_write(a1, 0xA438u, 41096);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 2640);
  re_real_ocp_phy_write(a1, 0xA438u, 32776);
  re_real_ocp_phy_write(a1, 0xA438u, 53268);
  re_real_ocp_phy_write(a1, 0xA438u, 53667);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 16410);
  re_real_ocp_phy_write(a1, 0xA438u, 55047);
  re_real_ocp_phy_write(a1, 0xA438u, 16578);
  re_real_ocp_phy_write(a1, 0xA438u, 24742);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 24459);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 2694);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 2668);
  re_real_ocp_phy_write(a1, 0xA438u, 32896);
  re_real_ocp_phy_write(a1, 0xA438u, 53273);
  re_real_ocp_phy_write(a1, 0xA438u, 53666);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 16410);
  re_real_ocp_phy_write(a1, 0xA438u, 55047);
  re_real_ocp_phy_write(a1, 0xA438u, 16580);
  re_real_ocp_phy_write(a1, 0xA438u, 24742);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 24459);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 2694);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 2692);
  re_real_ocp_phy_write(a1, 0xA438u, 54531);
  re_real_ocp_phy_write(a1, 0xA438u, 35184);
  re_real_ocp_phy_write(a1, 0xA438u, 3079);
  re_real_ocp_phy_write(a1, 0xA438u, 2305);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 52737);
  re_real_ocp_phy_write(a1, 0xA438u, 53001);
  re_real_ocp_phy_write(a1, 0xA438u, 55045);
  re_real_ocp_phy_write(a1, 0xA438u, 0x4000);
  re_real_ocp_phy_write(a1, 0xA438u, 52991);
  re_real_ocp_phy_write(a1, 0xA438u, 44810);
  re_real_ocp_phy_write(a1, 0xA438u, 54532);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 4627);
  re_real_ocp_phy_write(a1, 0xA438u, 33793);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 34176);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 4691);
  re_real_ocp_phy_write(a1, 0xA438u, 53348);
  re_real_ocp_phy_write(a1, 0xA438u, 53633);
  re_real_ocp_phy_write(a1, 0xA438u, 55044);
  re_real_ocp_phy_write(a1, 0xA438u, 16408);
  re_real_ocp_phy_write(a1, 0xA438u, 54532);
  re_real_ocp_phy_write(a1, 0xA438u, 50447);
  re_real_ocp_phy_write(a1, 0xA438u, 55046);
  re_real_ocp_phy_write(a1, 0xA438u, 11353);
  re_real_ocp_phy_write(a1, 0xA438u, 32845);
  re_real_ocp_phy_write(a1, 0xA438u, 50703);
  re_real_ocp_phy_write(a1, 0xA438u, 61442);
  re_real_ocp_phy_write(a1, 0xA438u, 50693);
  re_real_ocp_phy_write(a1, 0xA438u, 44546);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 4349);
  re_real_ocp_phy_write(a1, 0xA436u, 40998);
  re_real_ocp_phy_write(a1, 0xA438u, 0xFFFF);
  re_real_ocp_phy_write(a1, 0xA436u, 40996);
  re_real_ocp_phy_write(a1, 0xA438u, 0xFFFF);
  re_real_ocp_phy_write(a1, 0xA436u, 40994);
  re_real_ocp_phy_write(a1, 0xA438u, 4340);
  re_real_ocp_phy_write(a1, 0xA436u, 40992);
  re_real_ocp_phy_write(a1, 0xA438u, 4690);
  re_real_ocp_phy_write(a1, 0xA436u, 40966);
  re_real_ocp_phy_write(a1, 0xA438u, 4614);
  re_real_ocp_phy_write(a1, 0xA436u, 40964);
  re_real_ocp_phy_write(a1, 0xA438u, 2680);
  re_real_ocp_phy_write(a1, 0xA436u, 40962);
  re_real_ocp_phy_write(a1, 0xA438u, 2656);
  re_real_ocp_phy_write(a1, 0xA436u, 40960);
  re_real_ocp_phy_write(a1, 0xA438u, 2639);
  re_real_ocp_phy_write(a1, 0xA436u, 40968);
  re_real_ocp_phy_write(a1, 0xA438u, 16128);
  re_real_ocp_phy_write(a1, 0xA436u, 40982);
  re_real_ocp_phy_write(a1, 0xA438u, 16);
  re_real_ocp_phy_write(a1, 0xA436u, 40978);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA436u, 40980);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32870);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32892);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32905);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32910);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32928);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32946);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32962);
  re_real_ocp_phy_write(a1, 0xA438u, 54529);
  re_real_ocp_phy_write(a1, 0xA438u, 52737);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 25307);
  re_real_ocp_phy_write(a1, 0xA438u, 25948);
  re_real_ocp_phy_write(a1, 0xA438u, 55102);
  re_real_ocp_phy_write(a1, 0xA438u, 24809);
  re_real_ocp_phy_write(a1, 0xA438u, 24906);
  re_real_ocp_phy_write(a1, 0xA438u, 25003);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1281);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1283);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1285);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1289);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 25916);
  re_real_ocp_phy_write(a1, 0xA438u, 55102);
  re_real_ocp_phy_write(a1, 0xA438u, 24809);
  re_real_ocp_phy_write(a1, 0xA438u, 24906);
  re_real_ocp_phy_write(a1, 0xA438u, 25003);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1283);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1282);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1286);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1290);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 55102);
  re_real_ocp_phy_write(a1, 0xA438u, 24809);
  re_real_ocp_phy_write(a1, 0xA438u, 24906);
  re_real_ocp_phy_write(a1, 0xA438u, 25003);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1285);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1286);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1284);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1292);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 55102);
  re_real_ocp_phy_write(a1, 0xA438u, 24809);
  re_real_ocp_phy_write(a1, 0xA438u, 24906);
  re_real_ocp_phy_write(a1, 0xA438u, 25003);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1289);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1290);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1292);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1288);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 772);
  re_real_ocp_phy_write(a1, 0xA438u, 54529);
  re_real_ocp_phy_write(a1, 0xA438u, 52737);
  re_real_ocp_phy_write(a1, 0xA438u, 55102);
  re_real_ocp_phy_write(a1, 0xA438u, 24809);
  re_real_ocp_phy_write(a1, 0xA438u, 24906);
  re_real_ocp_phy_write(a1, 0xA438u, 25003);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1281);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 801);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1282);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 801);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1284);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 801);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1288);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 801);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 838);
  re_real_ocp_phy_write(a1, 0xA438u, 54529);
  re_real_ocp_phy_write(a1, 0xA438u, 52737);
  re_real_ocp_phy_write(a1, 0xA438u, 33288);
  re_real_ocp_phy_write(a1, 0xA438u, 24733);
  re_real_ocp_phy_write(a1, 0xA438u, 42255);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 26);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1283);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 26);
  re_real_ocp_phy_write(a1, 0xA438u, 24701);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 171);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 171);
  re_real_ocp_phy_write(a1, 0xA438u, 54529);
  re_real_ocp_phy_write(a1, 0xA438u, 52737);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 24829);
  re_real_ocp_phy_write(a1, 0xA438u, 42255);
  re_real_ocp_phy_write(a1, 0xA438u, 52736);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 43535);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 379);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1283);
  re_real_ocp_phy_write(a1, 0xA438u, 52736);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 2565);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 379);
  re_real_ocp_phy_write(a1, 0xA438u, 54529);
  re_real_ocp_phy_write(a1, 0xA438u, 52737);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 24829);
  re_real_ocp_phy_write(a1, 0xA438u, 42255);
  re_real_ocp_phy_write(a1, 0xA438u, 52736);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 43535);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 480);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1283);
  re_real_ocp_phy_write(a1, 0xA438u, 52736);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 2565);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 480);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 24829);
  re_real_ocp_phy_write(a1, 0xA438u, 42255);
  re_real_ocp_phy_write(a1, 0xA438u, 52736);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 43535);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 561);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1283);
  re_real_ocp_phy_write(a1, 0xA438u, 52736);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 2565);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 561);
  re_real_ocp_phy_write(a1, 0xA436u, 41102);
  re_real_ocp_phy_write(a1, 0xA438u, 0xFFFF);
  re_real_ocp_phy_write(a1, 0xA436u, 41100);
  re_real_ocp_phy_write(a1, 0xA438u, 545);
  re_real_ocp_phy_write(a1, 0xA436u, 41098);
  re_real_ocp_phy_write(a1, 0xA438u, 462);
  re_real_ocp_phy_write(a1, 0xA436u, 41096);
  re_real_ocp_phy_write(a1, 0xA438u, 361);
  re_real_ocp_phy_write(a1, 0xA436u, 41094);
  re_real_ocp_phy_write(a1, 0xA438u, 166);
  re_real_ocp_phy_write(a1, 0xA436u, 41092);
  re_real_ocp_phy_write(a1, 0xA438u, 13);
  re_real_ocp_phy_write(a1, 0xA436u, 41090);
  re_real_ocp_phy_write(a1, 0xA438u, 776);
  re_real_ocp_phy_write(a1, 0xA436u, 41088);
  re_real_ocp_phy_write(a1, 0xA438u, 671);
  re_real_ocp_phy_write(a1, 0xA436u, 41104);
  re_real_ocp_phy_write(a1, 0xA438u, 127);
  re_real_ocp_phy_write(a1, 0xA436u, 40982);
  re_real_ocp_phy_write(a1, 0xA438u, 32);
  re_real_ocp_phy_write(a1, 0xA436u, 40978);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA436u, 40980);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32791);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32795);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32809);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32852);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32858);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32868);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32935);
  re_real_ocp_phy_write(a1, 0xA438u, 37936);
  re_real_ocp_phy_write(a1, 0xA438u, 38016);
  re_real_ocp_phy_write(a1, 0xA438u, 46088);
  re_real_ocp_phy_write(a1, 0xA438u, 53536);
  re_real_ocp_phy_write(a1, 0xA438u, 53335);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1611);
  re_real_ocp_phy_write(a1, 0xA438u, 52096);
  re_real_ocp_phy_write(a1, 0xA438u, 39174);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1383);
  re_real_ocp_phy_write(a1, 0xA438u, 52116);
  re_real_ocp_phy_write(a1, 0xA438u, 33168);
  re_real_ocp_phy_write(a1, 0xA438u, 33440);
  re_real_ocp_phy_write(a1, 0xA438u, 32778);
  re_real_ocp_phy_write(a1, 0xA438u, 33798);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 42816);
  re_real_ocp_phy_write(a1, 0xA438u, 36351);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2020);
  re_real_ocp_phy_write(a1, 0xA438u, 43072);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1907);
  re_real_ocp_phy_write(a1, 0xA438u, 52113);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 16483);
  re_real_ocp_phy_write(a1, 0xA438u, 53561);
  re_real_ocp_phy_write(a1, 0xA438u, 61442);
  re_real_ocp_phy_write(a1, 0xA438u, 53568);
  re_real_ocp_phy_write(a1, 0xA438u, 53312);
  re_real_ocp_phy_write(a1, 0xA438u, 46084);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 3328);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2012);
  re_real_ocp_phy_write(a1, 0xA438u, 42512);
  re_real_ocp_phy_write(a1, 0xA438u, 41232);
  re_real_ocp_phy_write(a1, 0xA438u, 41632);
  re_real_ocp_phy_write(a1, 0xA438u, 41988);
  re_real_ocp_phy_write(a1, 0xA438u, 55044);
  re_real_ocp_phy_write(a1, 0xA438u, 16453);
  re_real_ocp_phy_write(a1, 0xA438u, 41344);
  re_real_ocp_phy_write(a1, 0xA438u, 55044);
  re_real_ocp_phy_write(a1, 0xA438u, 16477);
  re_real_ocp_phy_write(a1, 0xA438u, 42784);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 1858);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2028);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 24436);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 1858);
  re_real_ocp_phy_write(a1, 0xA438u, 55042);
  re_real_ocp_phy_write(a1, 0xA438u, 32694);
  re_real_ocp_phy_write(a1, 0xA438u, 33168);
  re_real_ocp_phy_write(a1, 0xA438u, 33440);
  re_real_ocp_phy_write(a1, 0xA438u, 33796);
  re_real_ocp_phy_write(a1, 0xA438u, 34320);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 3329);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2012);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1611);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 1984);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 24487);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1153);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA438u, 38076);
  re_real_ocp_phy_write(a1, 0xA438u, 34572);
  re_real_ocp_phy_write(a1, 0xA438u, 41360);
  re_real_ocp_phy_write(a1, 0xA438u, 40970);
  re_real_ocp_phy_write(a1, 0xA438u, 41600);
  re_real_ocp_phy_write(a1, 0xA438u, 41988);
  re_real_ocp_phy_write(a1, 0xA438u, 33312);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1934);
  re_real_ocp_phy_write(a1, 0xA438u, 52114);
  re_real_ocp_phy_write(a1, 0xA438u, 43072);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 16483);
  re_real_ocp_phy_write(a1, 0xA438u, 53568);
  re_real_ocp_phy_write(a1, 0xA438u, 61442);
  re_real_ocp_phy_write(a1, 0xA438u, 53584);
  re_real_ocp_phy_write(a1, 0xA438u, 53312);
  re_real_ocp_phy_write(a1, 0xA438u, 55043);
  re_real_ocp_phy_write(a1, 0xA438u, 24736);
  re_real_ocp_phy_write(a1, 0xA438u, 24865);
  re_real_ocp_phy_write(a1, 0xA438u, 24994);
  re_real_ocp_phy_write(a1, 0xA438u, 25123);
  re_real_ocp_phy_write(a1, 0xA438u, 61487);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3344);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 42816);
  re_real_ocp_phy_write(a1, 0xA438u, 61455);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3360);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 42816);
  re_real_ocp_phy_write(a1, 0xA438u, 61450);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3376);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 42816);
  re_real_ocp_phy_write(a1, 0xA438u, 61445);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3392);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 42816);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2020);
  re_real_ocp_phy_write(a1, 0xA438u, 42512);
  re_real_ocp_phy_write(a1, 0xA438u, 40968);
  re_real_ocp_phy_write(a1, 0xA438u, 55044);
  re_real_ocp_phy_write(a1, 0xA438u, 16454);
  re_real_ocp_phy_write(a1, 0xA438u, 40962);
  re_real_ocp_phy_write(a1, 0xA438u, 55044);
  re_real_ocp_phy_write(a1, 0xA438u, 16477);
  re_real_ocp_phy_write(a1, 0xA438u, 42784);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 1858);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2039);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 24436);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 1858);
  re_real_ocp_phy_write(a1, 0xA438u, 55042);
  re_real_ocp_phy_write(a1, 0xA438u, 32693);
  re_real_ocp_phy_write(a1, 0xA438u, 32778);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3328);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2020);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 42816);
  re_real_ocp_phy_write(a1, 0xA438u, 55041);
  re_real_ocp_phy_write(a1, 0xA438u, 15060);
  re_real_ocp_phy_write(a1, 0xA438u, 1335);
  re_real_ocp_phy_write(a1, 0xA438u, 34320);
  re_real_ocp_phy_write(a1, 0xA438u, 34880);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1611);
  re_real_ocp_phy_write(a1, 0xA438u, 33537);
  re_real_ocp_phy_write(a1, 0xA438u, 32778);
  re_real_ocp_phy_write(a1, 0xA438u, 33168);
  re_real_ocp_phy_write(a1, 0xA438u, 33440);
  re_real_ocp_phy_write(a1, 0xA438u, 33796);
  re_real_ocp_phy_write(a1, 0xA438u, 42764);
  re_real_ocp_phy_write(a1, 0xA438u, 37890);
  re_real_ocp_phy_write(a1, 0xA438u, 35084);
  re_real_ocp_phy_write(a1, 0xA438u, 34880);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1611);
  re_real_ocp_phy_write(a1, 0xA436u, 41230);
  re_real_ocp_phy_write(a1, 0xA438u, 1602);
  re_real_ocp_phy_write(a1, 0xA436u, 41228);
  re_real_ocp_phy_write(a1, 0xA438u, 1670);
  re_real_ocp_phy_write(a1, 0xA436u, 41226);
  re_real_ocp_phy_write(a1, 0xA438u, 1928);
  re_real_ocp_phy_write(a1, 0xA436u, 41224);
  re_real_ocp_phy_write(a1, 0xA438u, 1147);
  re_real_ocp_phy_write(a1, 0xA436u, 41222);
  re_real_ocp_phy_write(a1, 0xA438u, 1628);
  re_real_ocp_phy_write(a1, 0xA436u, 41220);
  re_real_ocp_phy_write(a1, 0xA438u, 1897);
  re_real_ocp_phy_write(a1, 0xA436u, 41218);
  re_real_ocp_phy_write(a1, 0xA438u, 1381);
  re_real_ocp_phy_write(a1, 0xA436u, 41216);
  re_real_ocp_phy_write(a1, 0xA438u, 1785);
  re_real_ocp_phy_write(a1, 0xA436u, 41232);
  re_real_ocp_phy_write(a1, 0xA438u, 255);
  re_real_ocp_phy_write(a1, 0xA436u, 47228);
  re_real_ocp_phy_write(a1, 0xA438u, 34096);
  re_real_ocp_phy_write(a1, 0xA436u, 47230);
  re_real_ocp_phy_write(a1, 0xA438u, 44933);
  re_real_ocp_phy_write(a1, 0xA438u, 15535);
  re_real_ocp_phy_write(a1, 0xA438u, 34195);
  re_real_ocp_phy_write(a1, 0xA438u, 44933);
  re_real_ocp_phy_write(a1, 0xA438u, 40111);
  re_real_ocp_phy_write(a1, 0xA438u, 34213);
  re_real_ocp_phy_write(a1, 0xA438u, 49030);
  re_real_ocp_phy_write(a1, 0xA438u, 55042);
  re_real_ocp_phy_write(a1, 0xA438u, 23291);
  re_real_ocp_phy_write(a1, 0xA438u, 57475);
  re_real_ocp_phy_write(a1, 0xA438u, 64268);
  re_real_ocp_phy_write(a1, 0xA438u, 525);
  re_real_ocp_phy_write(a1, 0xA438u, 539);
  re_real_ocp_phy_write(a1, 0xA438u, 4287);
  re_real_ocp_phy_write(a1, 0xA438u, 34519);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34522);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 64480);
  re_real_ocp_phy_write(a1, 0xA438u, 33788);
  re_real_ocp_phy_write(a1, 0xA438u, 3074);
  re_real_ocp_phy_write(a1, 0xA438u, 3330);
  re_real_ocp_phy_write(a1, 0xA438u, 6928);
  re_real_ocp_phy_write(a1, 0xA438u, 49030);
  re_real_ocp_phy_write(a1, 0xA438u, 55810);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49030);
  re_real_ocp_phy_write(a1, 0xA438u, 56578);
  re_real_ocp_phy_write(a1, 0xA438u, 23291);
  re_real_ocp_phy_write(a1, 0xA438u, 57475);
  re_real_ocp_phy_write(a1, 0xA438u, 64780);
  re_real_ocp_phy_write(a1, 0xA438u, 525);
  re_real_ocp_phy_write(a1, 0xA438u, 539);
  re_real_ocp_phy_write(a1, 0xA438u, 4287);
  re_real_ocp_phy_write(a1, 0xA438u, 34525);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34528);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 64480);
  re_real_ocp_phy_write(a1, 0xA438u, 33790);
  re_real_ocp_phy_write(a1, 0xA438u, 3074);
  re_real_ocp_phy_write(a1, 0xA438u, 3330);
  re_real_ocp_phy_write(a1, 0xA438u, 6928);
  re_real_ocp_phy_write(a1, 0xA438u, 49030);
  re_real_ocp_phy_write(a1, 0xA438u, 57346);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 44847);
  re_real_ocp_phy_write(a1, 0xA438u, 48386);
  re_real_ocp_phy_write(a1, 0xA438u, 11436);
  re_real_ocp_phy_write(a1, 0xA438u, 646);
  re_real_ocp_phy_write(a1, 0xA438u, 26031);
  re_real_ocp_phy_write(a1, 0xA438u, 8491);
  re_real_ocp_phy_write(a1, 0xA438u, 556);
  re_real_ocp_phy_write(a1, 0xA438u, 24578);
  re_real_ocp_phy_write(a1, 0xA438u, 34486);
  re_real_ocp_phy_write(a1, 0xA438u, 44833);
  re_real_ocp_phy_write(a1, 0xA438u, 3281);
  re_real_ocp_phy_write(a1, 0xA438u, 959);
  re_real_ocp_phy_write(a1, 0xA438u, 34576);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34573);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34585);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34582);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34591);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34588);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34600);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34597);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34567);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 64429);
  re_real_ocp_phy_write(a1, 0xA438u, 10268);
  re_real_ocp_phy_write(a1, 0xA438u, 53504);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 2562);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 4866);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 8706);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 11010);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 44570);
  re_real_ocp_phy_write(a1, 0xA438u, 53505);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 2562);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 4866);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 8706);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 11010);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 53505);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 13314);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 12546);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 15618);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 14850);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 17154);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 16386);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 19458);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 18690);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 53504);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 11778);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 14082);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 17922);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 49031);
  re_real_ocp_phy_write(a1, 0xA438u, 20226);
  re_real_ocp_phy_write(a1, 0xA438u, 23223);
  re_real_ocp_phy_write(a1, 0xA438u, 44853);
  re_real_ocp_phy_write(a1, 0xA438u, 32760);
  re_real_ocp_phy_write(a1, 0xA438u, 64239);
  re_real_ocp_phy_write(a1, 0xA438u, 27071);
  re_real_ocp_phy_write(a1, 0xA438u, 34531);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 64447);
  re_real_ocp_phy_write(a1, 0xA438u, 34555);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34534);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 64447);
  re_real_ocp_phy_write(a1, 0xA438u, 34558);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34537);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 64447);
  re_real_ocp_phy_write(a1, 0xA438u, 34561);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34540);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 64447);
  re_real_ocp_phy_write(a1, 0xA438u, 34564);
  re_real_ocp_phy_write(a1, 0xA438u, 602);
  re_real_ocp_phy_write(a1, 0xA438u, 47039);
  re_real_ocp_phy_write(a1, 0xA438u, 34543);
  re_real_ocp_phy_write(a1, 0xA438u, 610);
  re_real_ocp_phy_write(a1, 0xA438u, 31935);
  re_real_ocp_phy_write(a1, 0xA438u, 34546);
  re_real_ocp_phy_write(a1, 0xA438u, 610);
  re_real_ocp_phy_write(a1, 0xA438u, 31935);
  re_real_ocp_phy_write(a1, 0xA438u, 34549);
  re_real_ocp_phy_write(a1, 0xA438u, 610);
  re_real_ocp_phy_write(a1, 0xA438u, 31935);
  re_real_ocp_phy_write(a1, 0xA438u, 34552);
  re_real_ocp_phy_write(a1, 0xA438u, 610);
  re_real_ocp_phy_write(a1, 0xA438u, 31983);
  re_real_ocp_phy_write(a1, 0xA438u, 38654);
  re_real_ocp_phy_write(a1, 0xA438u, 64516);
  re_real_ocp_phy_write(a1, 0xA438u, 63738);
  re_real_ocp_phy_write(a1, 0xA438u, 61289);
  re_real_ocp_phy_write(a1, 0xA438u, 49030);
  re_real_ocp_phy_write(a1, 0xA438u, 61186);
  re_real_ocp_phy_write(a1, 0xA438u, 25203);
  re_real_ocp_phy_write(a1, 0xA438u, 49030);
  re_real_ocp_phy_write(a1, 0xA438u, 61954);
  re_real_ocp_phy_write(a1, 0xA438u, 25203);
  re_real_ocp_phy_write(a1, 0xA438u, 49030);
  re_real_ocp_phy_write(a1, 0xA438u, 62722);
  re_real_ocp_phy_write(a1, 0xA438u, 25203);
  re_real_ocp_phy_write(a1, 0xA438u, 49030);
  re_real_ocp_phy_write(a1, 0xA438u, 63490);
  re_real_ocp_phy_write(a1, 0xA438u, 25203);
  re_real_ocp_phy_write(a1, 0xA438u, 61334);
  re_real_ocp_phy_write(a1, 0xA438u, 65276);
  re_real_ocp_phy_write(a1, 0xA438u, 1056);
  re_real_ocp_phy_write(a1, 0xA438u, 46400);
  re_real_ocp_phy_write(a1, 0xA438u, 21429);
  re_real_ocp_phy_write(a1, 0xA438u, 16518);
  re_real_ocp_phy_write(a1, 0xA438u, 46400);
  re_real_ocp_phy_write(a1, 0xA438u, 47541);
  re_real_ocp_phy_write(a1, 0xA438u, 16584);
  re_real_ocp_phy_write(a1, 0xA438u, 45114);
  re_real_ocp_phy_write(a1, 0xA438u, 51376);
  re_real_ocp_phy_write(a1, 0xA438u, 47816);
  re_real_ocp_phy_write(a1, 0xA438u, 45370);
  re_real_ocp_phy_write(a1, 0xA438u, 51377);
  re_real_ocp_phy_write(a1, 0xA438u, 47735);
  re_real_ocp_phy_write(a1, 0xA438u, 48422);
  re_real_ocp_phy_write(a1, 0xA438u, 65469);
  re_real_ocp_phy_write(a1, 0xA438u, 9847);
  re_real_ocp_phy_write(a1, 0xA438u, 48424);
  re_real_ocp_phy_write(a1, 0xA438u, 65469);
  re_real_ocp_phy_write(a1, 0xA438u, 10304);
  re_real_ocp_phy_write(a1, 0xA438u, 48422);
  re_real_ocp_phy_write(a1, 0xA438u, 51389);
  re_real_ocp_phy_write(a1, 0xA438u, 9792);
  re_real_ocp_phy_write(a1, 0xA438u, 48424);
  re_real_ocp_phy_write(a1, 0xA438u, 51389);
  re_real_ocp_phy_write(a1, 0xA438u, 10427);
  re_real_ocp_phy_write(a1, 0xA438u, 42032);
  re_real_ocp_phy_write(a1, 0xA438u, 39088);
  re_real_ocp_phy_write(a1, 0xA438u, 7866);
  re_real_ocp_phy_write(a1, 0xA438u, 45086);
  re_real_ocp_phy_write(a1, 0xA438u, 56496);
  re_real_ocp_phy_write(a1, 0xA438u, 7832);
  re_real_ocp_phy_write(a1, 0xA438u, 45214);
  re_real_ocp_phy_write(a1, 0xA438u, 47792);
  re_real_ocp_phy_write(a1, 0xA438u, 40668);
  re_real_ocp_phy_write(a1, 0xA438u, 45214);
  re_real_ocp_phy_write(a1, 0xA438u, 39089);
  re_real_ocp_phy_write(a1, 0xA438u, 7866);
  re_real_ocp_phy_write(a1, 0xA438u, 45342);
  re_real_ocp_phy_write(a1, 0xA438u, 56497);
  re_real_ocp_phy_write(a1, 0xA438u, 7832);
  re_real_ocp_phy_write(a1, 0xA438u, 45470);
  re_real_ocp_phy_write(a1, 0xA438u, 47793);
  re_real_ocp_phy_write(a1, 0xA438u, 40668);
  re_real_ocp_phy_write(a1, 0xA438u, 45470);
  re_real_ocp_phy_write(a1, 0xA438u, 4528);
  re_real_ocp_phy_write(a1, 0xA438u, 7714);
  re_real_ocp_phy_write(a1, 0xA438u, 45086);
  re_real_ocp_phy_write(a1, 0xA438u, 13232);
  re_real_ocp_phy_write(a1, 0xA438u, 7697);
  re_real_ocp_phy_write(a1, 0xA438u, 45214);
  re_real_ocp_phy_write(a1, 0xA438u, 8880);
  re_real_ocp_phy_write(a1, 0xA438u, 40499);
  re_real_ocp_phy_write(a1, 0xA438u, 45214);
  re_real_ocp_phy_write(a1, 0xA438u, 4529);
  re_real_ocp_phy_write(a1, 0xA438u, 7714);
  re_real_ocp_phy_write(a1, 0xA438u, 45342);
  re_real_ocp_phy_write(a1, 0xA438u, 13233);
  re_real_ocp_phy_write(a1, 0xA438u, 7697);
  re_real_ocp_phy_write(a1, 0xA438u, 45470);
  re_real_ocp_phy_write(a1, 0xA438u, 8881);
  re_real_ocp_phy_write(a1, 0xA438u, 40499);
  re_real_ocp_phy_write(a1, 0xA438u, 45470);
  re_real_ocp_phy_write(a1, 0xA436u, 47198);
  re_real_ocp_phy_write(a1, 0xA438u, 12145);
  re_real_ocp_phy_write(a1, 0xA436u, 47200);
  re_real_ocp_phy_write(a1, 0xA438u, 8409);
  re_real_ocp_phy_write(a1, 0xA436u, 47202);
  re_real_ocp_phy_write(a1, 0xA438u, 8457);
  re_real_ocp_phy_write(a1, 0xA436u, 47204);
  re_real_ocp_phy_write(a1, 0xA438u, 13543);
  re_real_ocp_phy_write(a1, 0xA436u, 47224);
  re_real_ocp_phy_write(a1, 0xA438u, 15);
  v3 = re_real_ocp_phy_read(a1, 47136);
  re_real_ocp_phy_write(a1, 0xB820u, v3 & 0xFFFFFF7F);

  re_release_phy_mcu_patch_key_lock(a1);
}

void re_acquire_phy_mcu_patch_key_lock(uint64_t a1)
{
  v2 = *(a1 + 57);
  if ((v2 & 0xFC) == 0x50)
  {
    v4 = 0x3701370086018600uLL >> (16 * (v2 & 0xFu));
    re_real_ocp_phy_write(a1, 0xA436u, 32804);
    re_real_ocp_phy_write(a1, 0xA438u, v4);
    re_real_ocp_phy_write(a1, 0xA436u, 47150);

    re_real_ocp_phy_write(a1, 0xA438u, 1);
  }
}

void re_release_phy_mcu_patch_key_lock(uint64_t a1)
{
  if ((*(a1 + 57) & 0xFC) == 0x50)
  {
    re_real_ocp_phy_write(a1, 0xA436u, 0);
    re_real_ocp_phy_write(a1, 0xA438u, 0);
    v3 = re_real_ocp_phy_read(a1, 47150);
    re_real_ocp_phy_write(a1, 0xB82Eu, v3 & 0xFFFE);
    re_real_ocp_phy_write(a1, 0xA436u, 32804);

    re_real_ocp_phy_write(a1, 0xA438u, 0);
  }
}

void re_real_set_phy_mcu_8125a_2(uint64_t a1)
{
  re_acquire_phy_mcu_patch_key_lock(a1);
  v2 = re_real_ocp_phy_read(a1, 47136);
  re_real_ocp_phy_write(a1, 0xB820u, v2 | 0x80);
  re_real_ocp_phy_write(a1, 0xA436u, 40982);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA436u, 40978);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA436u, 40980);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32907);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32911);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32915);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32919);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32925);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32929);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32938);
  re_real_ocp_phy_write(a1, 0xA438u, 55064);
  re_real_ocp_phy_write(a1, 0xA438u, 24699);
  re_real_ocp_phy_write(a1, 0xA438u, 16602);
  re_real_ocp_phy_write(a1, 0xA438u, 61454);
  re_real_ocp_phy_write(a1, 0xA438u, 17114);
  re_real_ocp_phy_write(a1, 0xA438u, 61470);
  re_real_ocp_phy_write(a1, 0xA438u, 55064);
  re_real_ocp_phy_write(a1, 0xA438u, 24923);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5206);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5284);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5308);
  re_real_ocp_phy_write(a1, 0xA438u, 55064);
  re_real_ocp_phy_write(a1, 0xA438u, 24366);
  re_real_ocp_phy_write(a1, 0xA438u, 61468);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5206);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5284);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5308);
  re_real_ocp_phy_write(a1, 0xA438u, 55064);
  re_real_ocp_phy_write(a1, 0xA438u, 24366);
  re_real_ocp_phy_write(a1, 0xA438u, 61476);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5206);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5284);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5308);
  re_real_ocp_phy_write(a1, 0xA438u, 55064);
  re_real_ocp_phy_write(a1, 0xA438u, 24366);
  re_real_ocp_phy_write(a1, 0xA438u, 61484);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5206);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5284);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5308);
  re_real_ocp_phy_write(a1, 0xA438u, 55064);
  re_real_ocp_phy_write(a1, 0xA438u, 24366);
  re_real_ocp_phy_write(a1, 0xA438u, 61492);
  re_real_ocp_phy_write(a1, 0xA438u, 55065);
  re_real_ocp_phy_write(a1, 0xA438u, 16664);
  re_real_ocp_phy_write(a1, 0xA438u, 54532);
  re_real_ocp_phy_write(a1, 0xA438u, 44049);
  re_real_ocp_phy_write(a1, 0xA438u, 54529);
  re_real_ocp_phy_write(a1, 0xA438u, 52737);
  re_real_ocp_phy_write(a1, 0xA438u, 42000);
  re_real_ocp_phy_write(a1, 0xA438u, 52736);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 18297);
  re_real_ocp_phy_write(a1, 0xA438u, 54532);
  re_real_ocp_phy_write(a1, 0xA438u, 44047);
  re_real_ocp_phy_write(a1, 0xA438u, 44545);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5188);
  re_real_ocp_phy_write(a1, 0xA438u, 61492);
  re_real_ocp_phy_write(a1, 0xA438u, 55065);
  re_real_ocp_phy_write(a1, 0xA438u, 16664);
  re_real_ocp_phy_write(a1, 0xA438u, 54532);
  re_real_ocp_phy_write(a1, 0xA438u, 44066);
  re_real_ocp_phy_write(a1, 0xA438u, 54529);
  re_real_ocp_phy_write(a1, 0xA438u, 52737);
  re_real_ocp_phy_write(a1, 0xA438u, 42016);
  re_real_ocp_phy_write(a1, 0xA438u, 52736);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 17753);
  re_real_ocp_phy_write(a1, 0xA438u, 54532);
  re_real_ocp_phy_write(a1, 0xA438u, 44047);
  re_real_ocp_phy_write(a1, 0xA438u, 44545);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5188);
  re_real_ocp_phy_write(a1, 0xA438u, 61475);
  re_real_ocp_phy_write(a1, 0xA438u, 55065);
  re_real_ocp_phy_write(a1, 0xA438u, 16664);
  re_real_ocp_phy_write(a1, 0xA438u, 54532);
  re_real_ocp_phy_write(a1, 0xA438u, 44100);
  re_real_ocp_phy_write(a1, 0xA438u, 54529);
  re_real_ocp_phy_write(a1, 0xA438u, 52737);
  re_real_ocp_phy_write(a1, 0xA438u, 42048);
  re_real_ocp_phy_write(a1, 0xA438u, 52736);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 17209);
  re_real_ocp_phy_write(a1, 0xA438u, 54532);
  re_real_ocp_phy_write(a1, 0xA438u, 44047);
  re_real_ocp_phy_write(a1, 0xA438u, 44545);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5188);
  re_real_ocp_phy_write(a1, 0xA438u, 61458);
  re_real_ocp_phy_write(a1, 0xA438u, 55065);
  re_real_ocp_phy_write(a1, 0xA438u, 16664);
  re_real_ocp_phy_write(a1, 0xA438u, 54532);
  re_real_ocp_phy_write(a1, 0xA438u, 44168);
  re_real_ocp_phy_write(a1, 0xA438u, 54529);
  re_real_ocp_phy_write(a1, 0xA438u, 52737);
  re_real_ocp_phy_write(a1, 0xA438u, 42112);
  re_real_ocp_phy_write(a1, 0xA438u, 52736);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 16665);
  re_real_ocp_phy_write(a1, 0xA438u, 54532);
  re_real_ocp_phy_write(a1, 0xA438u, 44047);
  re_real_ocp_phy_write(a1, 0xA438u, 44545);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5188);
  re_real_ocp_phy_write(a1, 0xA438u, 61441);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5206);
  re_real_ocp_phy_write(a1, 0xA438u, 55064);
  re_real_ocp_phy_write(a1, 0xA438u, 24492);
  re_real_ocp_phy_write(a1, 0xA438u, 50319);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 5147);
  re_real_ocp_phy_write(a1, 0xA438u, 54532);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 4634);
  re_real_ocp_phy_write(a1, 0xA438u, 53428);
  re_real_ocp_phy_write(a1, 0xA438u, 53691);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 2200);
  re_real_ocp_phy_write(a1, 0xA438u, 53428);
  re_real_ocp_phy_write(a1, 0xA438u, 53691);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 2574);
  re_real_ocp_phy_write(a1, 0xA438u, 53348);
  re_real_ocp_phy_write(a1, 0xA438u, 53642);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 2942);
  re_real_ocp_phy_write(a1, 0xA438u, 16412);
  re_real_ocp_phy_write(a1, 0xA438u, 54529);
  re_real_ocp_phy_write(a1, 0xA438u, 43012);
  re_real_ocp_phy_write(a1, 0xA438u, 34820);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1339);
  re_real_ocp_phy_write(a1, 0xA438u, 54528);
  re_real_ocp_phy_write(a1, 0xA438u, 41729);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1608);
  re_real_ocp_phy_write(a1, 0xA438u, 50464);
  re_real_ocp_phy_write(a1, 0xA438u, 41473);
  re_real_ocp_phy_write(a1, 0xA438u, 55041);
  re_real_ocp_phy_write(a1, 0xA438u, 9517);
  re_real_ocp_phy_write(a1, 0xA438u, 5702);
  re_real_ocp_phy_write(a1, 0xA438u, 55048);
  re_real_ocp_phy_write(a1, 0xA438u, 16390);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 5702);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 776);
  re_real_ocp_phy_write(a1, 0xA436u, 40998);
  re_real_ocp_phy_write(a1, 0xA438u, 775);
  re_real_ocp_phy_write(a1, 0xA436u, 40996);
  re_real_ocp_phy_write(a1, 0xA438u, 5701);
  re_real_ocp_phy_write(a1, 0xA436u, 40994);
  re_real_ocp_phy_write(a1, 0xA438u, 1607);
  re_real_ocp_phy_write(a1, 0xA436u, 40992);
  re_real_ocp_phy_write(a1, 0xA438u, 1338);
  re_real_ocp_phy_write(a1, 0xA436u, 40966);
  re_real_ocp_phy_write(a1, 0xA438u, 2940);
  re_real_ocp_phy_write(a1, 0xA436u, 40964);
  re_real_ocp_phy_write(a1, 0xA438u, 2572);
  re_real_ocp_phy_write(a1, 0xA436u, 40962);
  re_real_ocp_phy_write(a1, 0xA438u, 2198);
  re_real_ocp_phy_write(a1, 0xA436u, 40960);
  re_real_ocp_phy_write(a1, 0xA438u, 4513);
  re_real_ocp_phy_write(a1, 0xA436u, 40968);
  re_real_ocp_phy_write(a1, 0xA438u, 65280);
  re_real_ocp_phy_write(a1, 0xA436u, 40982);
  re_real_ocp_phy_write(a1, 0xA438u, 16);
  re_real_ocp_phy_write(a1, 0xA436u, 40978);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA436u, 40980);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32789);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32794);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32794);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32794);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32794);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32794);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32794);
  re_real_ocp_phy_write(a1, 0xA438u, 44290);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 727);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 237);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 1289);
  re_real_ocp_phy_write(a1, 0xA438u, 49408);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 143);
  re_real_ocp_phy_write(a1, 0xA436u, 41102);
  re_real_ocp_phy_write(a1, 0xA438u, 0xFFFF);
  re_real_ocp_phy_write(a1, 0xA436u, 41100);
  re_real_ocp_phy_write(a1, 0xA438u, 0xFFFF);
  re_real_ocp_phy_write(a1, 0xA436u, 41098);
  re_real_ocp_phy_write(a1, 0xA438u, 0xFFFF);
  re_real_ocp_phy_write(a1, 0xA436u, 41096);
  re_real_ocp_phy_write(a1, 0xA438u, 0xFFFF);
  re_real_ocp_phy_write(a1, 0xA436u, 41094);
  re_real_ocp_phy_write(a1, 0xA438u, 0xFFFF);
  re_real_ocp_phy_write(a1, 0xA436u, 41092);
  re_real_ocp_phy_write(a1, 0xA438u, 0xFFFF);
  re_real_ocp_phy_write(a1, 0xA436u, 41090);
  re_real_ocp_phy_write(a1, 0xA438u, 141);
  re_real_ocp_phy_write(a1, 0xA436u, 41088);
  re_real_ocp_phy_write(a1, 0xA438u, 235);
  re_real_ocp_phy_write(a1, 0xA436u, 41104);
  re_real_ocp_phy_write(a1, 0xA438u, 259);
  re_real_ocp_phy_write(a1, 0xA436u, 40982);
  re_real_ocp_phy_write(a1, 0xA438u, 32);
  re_real_ocp_phy_write(a1, 0xA436u, 40978);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA436u, 40980);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32788);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32792);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32804);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32849);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32853);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32882);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 32988);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA438u, 65533);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA438u, 65533);
  re_real_ocp_phy_write(a1, 0xA438u, 33537);
  re_real_ocp_phy_write(a1, 0xA438u, 32778);
  re_real_ocp_phy_write(a1, 0xA438u, 33168);
  re_real_ocp_phy_write(a1, 0xA438u, 33440);
  re_real_ocp_phy_write(a1, 0xA438u, 33796);
  re_real_ocp_phy_write(a1, 0xA438u, 42764);
  re_real_ocp_phy_write(a1, 0xA438u, 37890);
  re_real_ocp_phy_write(a1, 0xA438u, 35084);
  re_real_ocp_phy_write(a1, 0xA438u, 34880);
  re_real_ocp_phy_write(a1, 0xA438u, 41856);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1646);
  re_real_ocp_phy_write(a1, 0xA438u, 52113);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 16483);
  re_real_ocp_phy_write(a1, 0xA438u, 53561);
  re_real_ocp_phy_write(a1, 0xA438u, 61442);
  re_real_ocp_phy_write(a1, 0xA438u, 53568);
  re_real_ocp_phy_write(a1, 0xA438u, 53312);
  re_real_ocp_phy_write(a1, 0xA438u, 46084);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 3328);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2016);
  re_real_ocp_phy_write(a1, 0xA438u, 42512);
  re_real_ocp_phy_write(a1, 0xA438u, 41232);
  re_real_ocp_phy_write(a1, 0xA438u, 41632);
  re_real_ocp_phy_write(a1, 0xA438u, 41988);
  re_real_ocp_phy_write(a1, 0xA438u, 55044);
  re_real_ocp_phy_write(a1, 0xA438u, 16517);
  re_real_ocp_phy_write(a1, 0xA438u, 41344);
  re_real_ocp_phy_write(a1, 0xA438u, 41988);
  re_real_ocp_phy_write(a1, 0xA438u, 33408);
  re_real_ocp_phy_write(a1, 0xA438u, 55044);
  re_real_ocp_phy_write(a1, 0xA438u, 16477);
  re_real_ocp_phy_write(a1, 0xA438u, 42784);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 1859);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2032);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 24436);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 1859);
  re_real_ocp_phy_write(a1, 0xA438u, 55042);
  re_real_ocp_phy_write(a1, 0xA438u, 32694);
  re_real_ocp_phy_write(a1, 0xA438u, 33168);
  re_real_ocp_phy_write(a1, 0xA438u, 33440);
  re_real_ocp_phy_write(a1, 0xA438u, 33796);
  re_real_ocp_phy_write(a1, 0xA438u, 34320);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA438u, 3087);
  re_real_ocp_phy_write(a1, 0xA438u, 3329);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2016);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1646);
  re_real_ocp_phy_write(a1, 0xA438u, 53592);
  re_real_ocp_phy_write(a1, 0xA438u, 53325);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 980);
  re_real_ocp_phy_write(a1, 0xA438u, 38076);
  re_real_ocp_phy_write(a1, 0xA438u, 34572);
  re_real_ocp_phy_write(a1, 0xA438u, 33664);
  re_real_ocp_phy_write(a1, 0xA438u, 53517);
  re_real_ocp_phy_write(a1, 0xA438u, 53312);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 1988);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 24500);
  re_real_ocp_phy_write(a1, 0xA438u, 41360);
  re_real_ocp_phy_write(a1, 0xA438u, 40970);
  re_real_ocp_phy_write(a1, 0xA438u, 41600);
  re_real_ocp_phy_write(a1, 0xA438u, 41988);
  re_real_ocp_phy_write(a1, 0xA438u, 41504);
  re_real_ocp_phy_write(a1, 0xA438u, 53552);
  re_real_ocp_phy_write(a1, 0xA438u, 53312);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 1988);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 24500);
  re_real_ocp_phy_write(a1, 0xA438u, 48000);
  re_real_ocp_phy_write(a1, 0xA438u, 53700);
  re_real_ocp_phy_write(a1, 0xA438u, 53364);
  re_real_ocp_phy_write(a1, 0xA438u, 41729);
  re_real_ocp_phy_write(a1, 0xA438u, 55044);
  re_real_ocp_phy_write(a1, 0xA438u, 24651);
  re_real_ocp_phy_write(a1, 0xA438u, 43276);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1366);
  re_real_ocp_phy_write(a1, 0xA438u, 52114);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 16483);
  re_real_ocp_phy_write(a1, 0xA438u, 53526);
  re_real_ocp_phy_write(a1, 0xA438u, 61442);
  re_real_ocp_phy_write(a1, 0xA438u, 53529);
  re_real_ocp_phy_write(a1, 0xA438u, 53312);
  re_real_ocp_phy_write(a1, 0xA438u, 55043);
  re_real_ocp_phy_write(a1, 0xA438u, 24736);
  re_real_ocp_phy_write(a1, 0xA438u, 25153);
  re_real_ocp_phy_write(a1, 0xA438u, 25570);
  re_real_ocp_phy_write(a1, 0xA438u, 25987);
  re_real_ocp_phy_write(a1, 0xA438u, 61524);
  re_real_ocp_phy_write(a1, 0xA438u, 55041);
  re_real_ocp_phy_write(a1, 0xA438u, 24862);
  re_real_ocp_phy_write(a1, 0xA438u, 55041);
  re_real_ocp_phy_write(a1, 0xA438u, 16602);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3344);
  re_real_ocp_phy_write(a1, 0xA438u, 40976);
  re_real_ocp_phy_write(a1, 0xA438u, 34624);
  re_real_ocp_phy_write(a1, 0xA438u, 61487);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3408);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 42816);
  re_real_ocp_phy_write(a1, 0xA438u, 61482);
  re_real_ocp_phy_write(a1, 0xA438u, 55041);
  re_real_ocp_phy_write(a1, 0xA438u, 24862);
  re_real_ocp_phy_write(a1, 0xA438u, 55041);
  re_real_ocp_phy_write(a1, 0xA438u, 16602);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3360);
  re_real_ocp_phy_write(a1, 0xA438u, 40976);
  re_real_ocp_phy_write(a1, 0xA438u, 34624);
  re_real_ocp_phy_write(a1, 0xA438u, 61473);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3424);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 42816);
  re_real_ocp_phy_write(a1, 0xA438u, 61468);
  re_real_ocp_phy_write(a1, 0xA438u, 55041);
  re_real_ocp_phy_write(a1, 0xA438u, 24862);
  re_real_ocp_phy_write(a1, 0xA438u, 55041);
  re_real_ocp_phy_write(a1, 0xA438u, 16602);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3376);
  re_real_ocp_phy_write(a1, 0xA438u, 40976);
  re_real_ocp_phy_write(a1, 0xA438u, 34624);
  re_real_ocp_phy_write(a1, 0xA438u, 61459);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3440);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 42816);
  re_real_ocp_phy_write(a1, 0xA438u, 61454);
  re_real_ocp_phy_write(a1, 0xA438u, 55041);
  re_real_ocp_phy_write(a1, 0xA438u, 24862);
  re_real_ocp_phy_write(a1, 0xA438u, 55041);
  re_real_ocp_phy_write(a1, 0xA438u, 16602);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3392);
  re_real_ocp_phy_write(a1, 0xA438u, 40976);
  re_real_ocp_phy_write(a1, 0xA438u, 34624);
  re_real_ocp_phy_write(a1, 0xA438u, 61445);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3456);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 42816);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2024);
  re_real_ocp_phy_write(a1, 0xA438u, 42512);
  re_real_ocp_phy_write(a1, 0xA438u, 55044);
  re_real_ocp_phy_write(a1, 0xA438u, 16477);
  re_real_ocp_phy_write(a1, 0xA438u, 42784);
  re_real_ocp_phy_write(a1, 0xA438u, 55040);
  re_real_ocp_phy_write(a1, 0xA438u, 24564);
  re_real_ocp_phy_write(a1, 0xA438u, 40968);
  re_real_ocp_phy_write(a1, 0xA438u, 55044);
  re_real_ocp_phy_write(a1, 0xA438u, 16454);
  re_real_ocp_phy_write(a1, 0xA438u, 40962);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 1859);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2043);
  re_real_ocp_phy_write(a1, 0xA438u, 55043);
  re_real_ocp_phy_write(a1, 0xA438u, 32623);
  re_real_ocp_phy_write(a1, 0xA438u, 32590);
  re_real_ocp_phy_write(a1, 0xA438u, 32557);
  re_real_ocp_phy_write(a1, 0xA438u, 32524);
  re_real_ocp_phy_write(a1, 0xA438u, 32778);
  re_real_ocp_phy_write(a1, 0xA438u, 3312);
  re_real_ocp_phy_write(a1, 0xA438u, 3328);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 2024);
  re_real_ocp_phy_write(a1, 0xA438u, 32784);
  re_real_ocp_phy_write(a1, 0xA438u, 42816);
  re_real_ocp_phy_write(a1, 0xA438u, 4096);
  re_real_ocp_phy_write(a1, 0xA438u, 1859);
  re_real_ocp_phy_write(a1, 0xA438u, 55042);
  re_real_ocp_phy_write(a1, 0xA438u, 32693);
  re_real_ocp_phy_write(a1, 0xA438u, 55041);
  re_real_ocp_phy_write(a1, 0xA438u, 15060);
  re_real_ocp_phy_write(a1, 0xA438u, 1366);
  re_real_ocp_phy_write(a1, 0xA438u, 34320);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 1646);
  re_real_ocp_phy_write(a1, 0xA438u, 53749);
  re_real_ocp_phy_write(a1, 0xA438u, 53321);
  re_real_ocp_phy_write(a1, 0xA438u, 6144);
  re_real_ocp_phy_write(a1, 0xA438u, 492);
  re_real_ocp_phy_write(a1, 0xA436u, 41230);
  re_real_ocp_phy_write(a1, 0xA438u, 490);
  re_real_ocp_phy_write(a1, 0xA436u, 41228);
  re_real_ocp_phy_write(a1, 0xA438u, 1705);
  re_real_ocp_phy_write(a1, 0xA436u, 41226);
  re_real_ocp_phy_write(a1, 0xA438u, 1930);
  re_real_ocp_phy_write(a1, 0xA436u, 41224);
  re_real_ocp_phy_write(a1, 0xA438u, 978);
  re_real_ocp_phy_write(a1, 0xA436u, 41222);
  re_real_ocp_phy_write(a1, 0xA438u, 1663);
  re_real_ocp_phy_write(a1, 0xA436u, 41220);
  re_real_ocp_phy_write(a1, 0xA438u, 1637);
  re_real_ocp_phy_write(a1, 0xA436u, 41218);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA436u, 41216);
  re_real_ocp_phy_write(a1, 0xA438u, 0);
  re_real_ocp_phy_write(a1, 0xA436u, 41232);
  re_real_ocp_phy_write(a1, 0xA438u, 252);
  re_real_ocp_phy_write(a1, 0xA436u, 47228);
  re_real_ocp_phy_write(a1, 0xA438u, 34096);
  re_real_ocp_phy_write(a1, 0xA436u, 47230);
  re_real_ocp_phy_write(a1, 0xA438u, 44933);
  re_real_ocp_phy_write(a1, 0xA438u, 15535);
  re_real_ocp_phy_write(a1, 0xA438u, 34117);
  re_real_ocp_phy_write(a1, 0xA438u, 44933);
  re_real_ocp_phy_write(a1, 0xA438u, 17839);
  re_real_ocp_phy_write(a1, 0xA438u, 34117);
  re_real_ocp_phy_write(a1, 0xA438u, 61058);
  re_real_ocp_phy_write(a1, 0xA438u, 63744);
  re_real_ocp_phy_write(a1, 0xA438u, 259);
  re_real_ocp_phy_write(a1, 0xA438u, 44803);
  re_real_ocp_phy_write(a1, 0xA438u, 47096);
  re_real_ocp_phy_write(a1, 0xA438u, 57510);
  re_real_ocp_phy_write(a1, 0xA438u, 225);
  re_real_ocp_phy_write(a1, 0xA438u, 42497);
  re_real_ocp_phy_write(a1, 0xA438u, 61185);
  re_real_ocp_phy_write(a1, 0xA438u, 22768);
  re_real_ocp_phy_write(a1, 0xA438u, 41088);
  re_real_ocp_phy_write(a1, 0xA438u, 14241);
  re_real_ocp_phy_write(a1, 0xA438u, 33794);
  re_real_ocp_phy_write(a1, 0xA438u, 44566);
  re_real_ocp_phy_write(a1, 0xA438u, 41349);
  re_real_ocp_phy_write(a1, 0xA438u, 686);
  re_real_ocp_phy_write(a1, 0xA438u, 4513);
  re_real_ocp_phy_write(a1, 0xA438u, 34562);
  re_real_ocp_phy_write(a1, 0xA438u, 44556);
  re_real_ocp_phy_write(a1, 0xA438u, 41352);
  re_real_ocp_phy_write(a1, 0xA438u, 686);
  re_real_ocp_phy_write(a1, 0xA438u, 1953);
  re_real_ocp_phy_write(a1, 0xA438u, 35074);
  re_real_ocp_phy_write(a1, 0xA438u, 44546);
  re_real_ocp_phy_write(a1, 0xA438u, 44572);
  re_real_ocp_phy_write(a1, 0xA438u, 57524);
  re_real_ocp_phy_write(a1, 0xA438u, 25313);
  re_real_ocp_phy_write(a1, 0xA438u, 46179);
  re_real_ocp_phy_write(a1, 0xA438u, 26881);
  re_real_ocp_phy_write(a1, 0xA438u, 58548);
  re_real_ocp_phy_write(a1, 0xA438u, 25317);
  re_real_ocp_phy_write(a1, 0xA438u, 46179);
  re_real_ocp_phy_write(a1, 0xA438u, 57524);
  re_real_ocp_phy_write(a1, 0xA438u, 25313);
  re_real_ocp_phy_write(a1, 0xA438u, 46179);
  re_real_ocp_phy_write(a1, 0xA438u, 26881);
  re_real_ocp_phy_write(a1, 0xA438u, 58548);
  re_real_ocp_phy_write(a1, 0xA438u, 25317);
  re_real_ocp_phy_write(a1, 0xA438u, 46179);
  re_real_ocp_phy_write(a1, 0xA438u, 64516);
  re_real_ocp_phy_write(a1, 0xA436u, 47198);
  re_real_ocp_phy_write(a1, 0xA438u, 947);
  re_real_ocp_phy_write(a1, 0xA436u, 47200);
  re_real_ocp_phy_write(a1, 0xA438u, 0xFFFF);
  re_real_ocp_phy_write(a1, 0xA436u, 47202);
  re_real_ocp_phy_write(a1, 0xA438u, 0xFFFF);
  re_real_ocp_phy_write(a1, 0xA436u, 47204);
  re_real_ocp_phy_write(a1, 0xA438u, 0xFFFF);
  re_real_ocp_phy_write(a1, 0xA436u, 47224);
  re_real_ocp_phy_write(a1, 0xA438u, 1);
  v3 = re_real_ocp_phy_read(a1, 47136);
  re_real_ocp_phy_write(a1, 0xB820u, v3 & 0xFFFFFF7F);

  re_release_phy_mcu_patch_key_lock(a1);
}

uint64_t AppleEthernetRL::setPowerState(AppleEthernetRL *this, IOService *a2, IOService *a3)
{
  if (a2 && !*(this + 348))
  {
    (*(*this + 2080))(this);
    (*(*this + 2008))(this, 0x8000);
    *(this + 76) &= ~0x4000000u;
  }

  *(this + 348) = a2;

  return v6(this, a2, a3);
}

void AppleEthernetRL::hwConfigNicProxyData(_DWORD *a1, unsigned int *a2)
{
  v9[0] = 0;
  v9[1] = 0;
  if (*(a1 + 177))
  {
    IOFreeData();
    *(a1 + 177) = 0;
  }

  if (a2)
  {
    v4 = *a2;
    v5 = IOMallocZeroData();
    *(a1 + 177) = v5;
    if (v5)
    {
      v6 = *a2;
      if (v4 < v6)
      {
        __break(0xBFFEu);
        return;
      }

      memmove(v5, a2, v6);
      *(a1 + 178) = mach_continuous_time();
      if (!(*(*a1 + 2008))(a1, 0x8000) && !(*(*a1 + 2032))(a1, v9) && !(*(*a1 + 2040))(a1, v9) && !(*(*a1 + 2048))(a1, v9) && !(*(*a1 + 2056))(a1, v9) && !(*(*a1 + 2072))(a1, v9))
      {
        v7 = a1[353];
        if ((a1[336] - 1) > 0xFFFD)
        {
          if ((v7 & 1) == 0)
          {
            return;
          }

          v8 = 26;
        }

        else
        {
          (*(*a1 + 2064))(a1, a1[336]);
          if (v7)
          {
            v8 = 27;
          }

          else
          {
            v8 = 1;
          }
        }

        (*(*a1 + 2008))(a1, v8);
        a1[76] |= 0x4000000u;
        re_setwol((a1 + 74));
      }
    }
  }
}

uint64_t AppleEthernetRL::programNicProxySetWakeMode(AppleEthernetRLIPC **this, __int16 a2)
{
  *v3 = 5242880;
  *&v3[4] = a2;
  return AppleEthernetRLIPC::writeToKR4(this[172], v3, 8u);
}

uint64_t AppleEthernetRL::programNicProxyWakeTimeout(AppleEthernetRLIPC **this, __int16 a2)
{
  *v3 = 5439488;
  *&v3[4] = a2;
  return AppleEthernetRLIPC::writeToKR4(this[172], v3, 8u);
}

uint64_t AppleEthernetRL::programNicProxyV4Addresses()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  bzero(v38, 0x800uLL);
  bzero(__src, 0x800uLL);
  bzero(v36, 0x800uLL);
  v4 = *(v3 + 1416);
  v5 = *(v4 + 12);
  v2[1] = v5;
  v6 = *(v4 + 13);
  *v2 = v6;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = v4 + 12;
    do
    {
      v10 = (*(v4 + 16) + 4 * v8);
      v11 = **(v3 + 1416);
      if (v10 + 12 >= v11 || (v12 = (*(v4 + 20) + v8), v12 + 12 >= v11))
      {
        IOLog("[0x%llx] rl::%s(%d): skipping invalid handoff - IPv4 %d/%d, offset %d, len %d\n", *(v3 + 608), "programNicProxyV4Addresses", 276, v8, v6, *(v4 + 16) + 4 * v8, v11);
        v6 = *v2;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        v15 = (v9 + v12);
        if (v12 != v12)
        {
          v15 = ((v9 + v12) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        v16 = *v15;
        v32 = 0;
        for (i = 31; i != -1; --i)
        {
          v18 = v16-- != 0;
          if (!v18)
          {
            v16 = 0;
          }

          v14 = v18 | (2 * v14);
          if ((i & 7) == 0)
          {
            v19 = &v33[v13++ - 4];
            *v19 = v14;
            v14 = 0;
          }
        }

        v20 = v32;
        v21 = v2[1];
        if (v7 >= v21)
        {
          v24 = (v9 + v10);
          if (v10 != v10)
          {
            v24 = ((v9 + v10) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          v25 = 8 * (v8 - v21);
          v26 = &__src[v25];
          if (v25 != v25)
          {
            v26 = (&__src[v25] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          *v26 = *v24;
          v27 = v25 + 4;
          v28 = &__src[v27];
          if (v27 != v27)
          {
            v28 = (&__src[v27] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          *v28 = v20;
        }

        else
        {
          v22 = (v9 + v10);
          if (v10 != v10)
          {
            v22 = ((v9 + v10) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          v23 = &v38[v7];
          *v23 = *v22;
          v23[1] = v20;
        }
      }

      v8 = ++v7;
    }

    while (v7 < v6);
    v5 = v2[1];
  }

  v29 = 8 * v5;
  *v33 = 8 * v5;
  v34 = 85;
  v35 = 0;
  memcpy(v36, v38, (8 * v5));
  result = AppleEthernetRLIPC::writeToKR4(*(v3 + 1376), v33, v29 + 8);
  if (!result)
  {
    v31 = 8 * (*v2 - v2[1]);
    *v33 = v31;
    v34 = 86;
    v35 = 0;
    if (v31 >= 0x801)
    {
      __break(0xBFFEu);
    }

    else
    {
      memcpy(v36, __src, v31);
      return AppleEthernetRLIPC::writeToKR4(*(v3 + 1376), v33, (v31 + 8));
    }
  }

  return result;
}

uint64_t AppleEthernetRL::programNicProxyV6Addresses()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  bzero(__src, 0x800uLL);
  bzero(v29, 0x800uLL);
  v4 = *(v3 + 1416);
  v5 = *(v4 + 14);
  *(v2 + 3) = v5;
  v6 = *(v4 + 15);
  *(v2 + 2) = v6;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = v4 + 12;
    do
    {
      v10 = (*(v4 + 24) + 16 * v8);
      v11 = **(v3 + 1416);
      if (v10 + 12 >= v11 || (v12 = (*(v4 + 28) + v8), v12 + 12 >= v11))
      {
        IOLog("[0x%llx] rl::%s(%d): skipping invalid handoff - IPv6 %d/%d, offset %d, len %d\n", *(v3 + 608), "programNicProxyV6Addresses", 341, v8, v6, *(v4 + 24) + 16 * v8, v11);
        v6 = *(v2 + 2);
      }

      else
      {
        v13 = 0;
        v14 = 0;
        v15 = (v9 + v12);
        if (v12 != v12)
        {
          v15 = ((v9 + v12) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        v16 = *v15;
        v25 = 0uLL;
        v17 = 127;
        v18 = (v9 + v10);
        if (v10 != v10)
        {
          v18 = ((v9 + v10) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        do
        {
          v19 = v16-- != 0;
          if (!v19)
          {
            v16 = 0;
          }

          v14 = v19 | (2 * v14);
          if ((v17 & 7) == 0)
          {
            v20 = &v26[v13++ - 8];
            *v20 = v14;
            v14 = 0;
          }

          --v17;
        }

        while (v17 != -1);
        if (v7 < *(v2 + 3))
        {
          v21 = v25;
          v22 = &__src[2 * v7];
          *v22 = *v18;
          v22[1] = v21;
        }
      }

      v8 = ++v7;
    }

    while (v7 < v6);
    v5 = *(v2 + 3);
  }

  v23 = 32 * v5;
  *v26 = 32 * v5;
  v27 = 285212759;
  v28 = 0;
  if (v5 >= 0x41)
  {
    __break(0xBFFEu);
  }

  memcpy(v29, __src, 32 * v5);
  return AppleEthernetRLIPC::writeToKR4(*(v3 + 1376), v26, v23 | 8u);
}

uint64_t AppleEthernetRL::programNicProxyUDPPorts(uint64_t a1, uint64_t a2)
{
  memset(__src, 0, 512);
  memset(v17, 0, sizeof(v17));
  v3 = *(a1 + 1416);
  LOBYTE(v4) = *(v3 + 32);
  *(a2 + 4) = v4;
  v4 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = v3 + 32;
    do
    {
      v9 = (v6 + *(v3 + 36));
      v10 = **(a1 + 1416);
      if (v9 + 32 >= v10)
      {
        IOLog("[0x%llx] rl::%s(%d): skipping invalid handoff - UDP %d/%d, offset %d, len %d\n", *(a1 + 608), "programNicProxyUDPPorts", 387, v7, v4, v6 + *(v3 + 36), v10);
        v4 = *(a2 + 4);
      }

      else
      {
        v11 = (v8 + v9);
        if (v9 != v9)
        {
          v11 = ((v8 + v9) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        __src[v7] = *v11;
      }

      ++v7;
      v6 += 2;
    }

    while (v7 < v4);
  }

  v12 = 2 * v4;
  *v14 = 2 * v4;
  v15 = 89;
  v16 = 0;
  memcpy(v17, __src, 2 * v4);
  return AppleEthernetRLIPC::writeToKR4(*(a1 + 1376), v14, v12 + 8);
}

uint64_t AppleEthernetRL::programNicProxyTCPPorts(uint64_t a1, uint64_t a2)
{
  memset(__src, 0, 512);
  memset(v17, 0, sizeof(v17));
  v3 = *(a1 + 1416);
  LOBYTE(v4) = *(v3 + 34);
  *(a2 + 6) = v4;
  v4 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = v3 + 32;
    do
    {
      v9 = (v6 + *(v3 + 40));
      v10 = **(a1 + 1416);
      if (v9 + 32 >= v10)
      {
        IOLog("[0x%llx] rl::%s(%d): skipping invalid handoff - TCP %d/%d, offset %d, len %d\n", *(a1 + 608), "programNicProxyTCPPorts", 422, v7, v4, v6 + *(v3 + 40), v10);
        v4 = *(a2 + 6);
      }

      else
      {
        v11 = (v8 + v9);
        if (v9 != v9)
        {
          v11 = ((v8 + v9) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        __src[v7] = *v11;
      }

      ++v7;
      v6 += 2;
    }

    while (v7 < v4);
  }

  v12 = 2 * v4;
  *v14 = 2 * v4;
  v15 = 90;
  v16 = 0;
  memcpy(v17, __src, 2 * v4);
  return AppleEthernetRLIPC::writeToKR4(*(a1 + 1376), v14, v12 + 8);
}

uint64_t AppleEthernetRL::programNicProxyResourceRecords(uint64_t a1, uint64_t a2)
{
  bzero(v31, 0x800uLL);
  v4 = *(a1 + 1416);
  v5 = v4[17];
  *(a2 + 10) = v4[16];
  *(a2 + 8) = v5;
  v6 = v4[18];
  v7 = v4[19];
  v8 = *v4;
  if (v6 + 64 >= v8 || v7 + 64 >= v8)
  {
    IOLog("[0x%llx] rl::%s(%d): skipping invalid handoff - mDNS RR, idx offt %d, buf offt %d, len %d\n", *(a1 + 608), "programNicProxyResourceRecords", 463, v6, v7, v8);
    return 0;
  }

  v11 = v4 + 16;
  v12 = (v4 + v6 + 64);
  if (v6 != v6)
  {
    v12 = ((v11 + v6) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
  }

  v13 = *v12;
  v14 = v5 - v7 + *v12;
  v15 = (v14 + 4);
  result = IOMallocData();
  if (!result)
  {
    return 3758097085;
  }

  v17 = result;
  *result = 12;
  *(result + 2) = *(a2 + 10);
  v18 = v15 - 4;
  if (v14 > 0xFFFFFFFB)
  {
    v18 = 0;
  }

  if (v18 >= v14)
  {
    v19 = (result + 4);
    v20 = v11 + v7;
    if (v7 != v7)
    {
      v20 = ((v11 + v7) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    memmove(v19, v20, v14);
    v21 = 0;
    if (v15 >= 0x800)
    {
      v22 = 2048;
    }

    else
    {
      v22 = v15;
    }

    v23 = v13 + v5 - v7 - v22 + 4;
    v24 = 4096;
    do
    {
      *v27 = v22;
      if (v23 == v21)
      {
        v25 = v24 | 0x100;
      }

      else
      {
        v25 = v24;
      }

      v28 = 91;
      v29 = v25;
      v30 = 0;
      memmove(v31, (v17 + v21), v22);
      v26 = AppleEthernetRLIPC::writeToKR4(*(a1 + 1376), v27, v22 + 8);
      v10 = v26;
      if (v23 == v21)
      {
        break;
      }

      v24 = v25 & 0xFFFFEFFF;
      v21 += v22;
    }

    while (!v26);
    IOFreeData();
    return v10;
  }

  __break(0xBFFEu);
  return result;
}

char *AppleEthernetRL::getWakeConditionFlagString(AppleEthernetRL *this)
{
  v1 = __clz(__rbit32(this | 0x20));
  if (this)
  {
    v2 = v1 + 1;
  }

  else
  {
    v2 = 0;
  }

  return AppleEthernetRL::getWakeConditionFlagString::kNames[v2];
}

char *AppleEthernetRL::getWakeConditionMdnsString(AppleEthernetRL *this)
{
  v1 = ((this >> 8) & 0x7F) - 1;
  if (v1 >= 5)
  {
    v1 = 5;
  }

  return AppleEthernetRL::getWakeConditionMdnsString::kNames[v1];
}

uint64_t AppleEthernetRL::destroyIOReporters(AppleEthernetRL *this)
{
  v2 = *(this + 187);
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  *(this + 187) = 0;
  result = *(this + 188);
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *(this + 188) = 0;
  return result;
}

uint64_t AppleEthernetRL::updateReport(IOSimpleReporter **this, OSSet *a2, IOReportChannelList *a3, void *a4, void *a5)
{
  v6 = a4;
  v10 = 0;
  v11 = this + 189;
  v12 = 0x5061726974793030;
  do
  {
    IOSimpleReporter::setValue(this[187], v12++, *(v11 + v10));
    v10 += 4;
  }

  while (v10 != 28);
  v14 = this[188];

  return IOReporter::updateAllReports(v14, a2, a3, v6, a5, v13);
}

uint64_t _start()
{
  if (_realmain)
  {
    return _realmain();
  }

  else
  {
    return 0;
  }
}

uint64_t _stop()
{
  if (_antimain)
  {
    return _antimain();
  }

  else
  {
    return 0;
  }
}

void __chkstk_darwin_probe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &a9;
  if (v9 >= 0x1000)
  {
    do
    {
      v10 -= 512;
      v9 -= 4096;
    }

    while (v9 > 0x1000);
  }
}

uint64_t AppleEthernetRLIPC::releaseMailboxSlots(uint64_t this, int a2)
{
  v2 = *(this + 176);
  if (v2)
  {
    v4 = this;
    this = ml_io_read32(*(this + 168) + v2);
    *(*(v4 + 168) + *(v4 + 176)) = this | a2;
  }

  return this;
}

uint64_t AppleEthernetRLIPC::getAllRepliedMailboxSlot(AppleEthernetRLIPC *this)
{
  if (*(this + 44))
  {
    return ml_io_read32(*(this + 21) + (*(this + 34) + 8));
  }

  else
  {
    return OUTLINED_FUNCTION_1();
  }
}

uint64_t AppleEthernetRLIPC::wakeMailboxReplyOwner(AppleEthernetRLIPC *this)
{
  v1 = 2147483652;
  v2 = *(this + 44);
  v3 = *(this + 34);
  v4 = *(this + 21);
  if (!v2)
  {
    v11 = v3 + 12;
LABEL_7:
    *(v4 + v11) = v2;
    return v1;
  }

  v6 = ml_io_read32(v4 + (v3 + 8));
  v7 = *(this + 21);
  *(v7 + (*(this + 34) + 12)) = v6;
  if (v6)
  {
    v8 = 0;
    do
    {
      v9 = 1 << (__clz(v6) ^ 0x1F);
      v8 |= v9;
      v6 &= ~v9;
    }

    while (v6);
    v10 = *(this + 44);
    if (!v10)
    {
      return 0;
    }

    v1 = 0;
    v2 = ml_io_read32(v7 + v10) | v8;
    v11 = *(this + 44);
    v4 = *(this + 21);
    goto LABEL_7;
  }

  return v1;
}

uint64_t AppleEthernetRLIPC::writeMailbox(AppleEthernetRLIPC *this, int a2, int a3)
{
  v3 = *(this + 44);
  if (!v3)
  {
    return 3758097112;
  }

  result = 0;
  *(*(this + 21) + (v3 + a2)) = a3;
  return result;
}

uint64_t AppleEthernetRLIPC::copyFromSRAM(AppleEthernetRLIPC *this, unsigned int a2, unsigned __int8 *a3, unsigned int a4)
{
  if (!a3)
  {
    return OUTLINED_FUNCTION_0();
  }

  if (a4)
  {
    v4 = a4;
    v5 = (*(this + 21) + a2 + *(this + 35));
    do
    {
      v6 = *v5++;
      *a3++ = v6;
      --v4;
    }

    while (v4);
  }

  return OUTLINED_FUNCTION_1();
}

uint64_t AppleEthernetRLIPC::copyFromSharedSRAM(AppleEthernetRLIPC *this, unsigned int a2, unsigned __int8 *a3, unsigned int a4)
{
  if (!a3)
  {
    return OUTLINED_FUNCTION_0();
  }

  if (a4)
  {
    v4 = a4;
    v5 = (*(this + 21) + a2 + *(this + 37));
    do
    {
      v6 = *v5++;
      *a3++ = v6;
      --v4;
    }

    while (v4);
  }

  return OUTLINED_FUNCTION_1();
}

uint64_t AppleEthernetRLIPC::copyToSharedSRAM(AppleEthernetRLIPC *this, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a3)
  {
    return OUTLINED_FUNCTION_0();
  }

  if (a4)
  {
    v4 = a4;
    v5 = (*(this + 21) + a2 + *(this + 37));
    do
    {
      v6 = *a3++;
      *v5++ = v6;
      --v4;
    }

    while (v4);
  }

  return OUTLINED_FUNCTION_1();
}

uint64_t AppleEthernetRLIPC::writeToKR4(AppleEthernetRLIPC *this, char *a2, unsigned int a3)
{
  v6 = 3758097109;
  *(*(this + 21) + (*(this + 34) + 12)) = 1;
  if (AppleEthernetRLIPC::waitKR4TxIdle(this, 1000))
  {
    v7 = *(this + 21);
    if (a3)
    {
      v8 = a3;
      v9 = (v7 + *(this + 35));
      do
      {
        v10 = *a2++;
        *v9++ = v10;
        --v8;
      }

      while (v8);
      v7 = *(this + 21);
    }

    *(v7 + *(this + 34)) = 1;
    if (AppleEthernetRLIPC::waitKR4RxAck(this, 1000))
    {
      v6 = 0;
    }

    else
    {
      v6 = 3758097109;
    }
  }

  *(*(this + 21) + (*(this + 34) + 12)) = 256;
  return v6;
}

uint64_t AppleEthernetRLIPC::readFromKR4(AppleEthernetRLIPC *this, unsigned __int8 *a2, unsigned int a3)
{
  v6 = AppleEthernetRLIPC::waitKR4RxAvailable(this, 1000);
  v7 = *(this + 21);
  if (v6)
  {
    if (a3)
    {
      v8 = a3;
      v9 = (v7 + *(this + 36));
      do
      {
        v10 = *v9++;
        *a2++ = v10;
        --v8;
      }

      while (v8);
      v7 = *(this + 21);
    }

    result = 0;
    *(v7 + *(this + 34)) = 256;
  }

  else
  {
    result = 3758097109;
  }

  *(v7 + (*(this + 34) + 12)) = 256;
  return result;
}

uint64_t AppleEthernetRLIPC::readWriteKR4(AppleEthernetRLIPC *this, char *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5)
{
  result = AppleEthernetRLIPC::writeToKR4(this, a2, a3);
  if (!result)
  {

    return AppleEthernetRLIPC::readFromKR4(this, a4, a5);
  }

  return result;
}

uint64_t AppleEthernetRL::resolveEnabledFeatures(AppleEthernetRL *this)
{
  v1 = 3758097124;
  if (*(this + 306) && *(this + 305))
  {
    *(this + 1240) = *(this + 1220);
    *(this + 314) = *(this + 309);
    *(this + 155) = 0x100000001;
    PE_parse_boot_argn("rl.avb", this + 1248, 4);
    if (*(this + 312))
    {
      if (*(this + 314) && *(this + 313))
      {
        v1 = 0;
        *(this + 1252) = 0x100000001;
      }
    }

    else
    {
      v1 = 0;
      *(this + 313) = 0;
      *(this + 314) = 0;
    }
  }

  return v1;
}

void AppleEthernetRL::disableIntrs(AppleEthernetRL *this)
{
  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): <==\n", *(this + 76), "disableIntrs", 494);
    v2 = *(this + 150);
    *(this + 1208) = 0;
    if (v2)
    {
      IOLog("[0x%llx] rl::%s(%d): ==>\n", *(this + 76), "disableIntrs", 496);
    }
  }

  else
  {
    *(this + 1208) = 0;
  }
}

uint64_t AppleEthernetRL::down(AppleEthernetRL *this)
{
  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): <==\n", *(this + 76), "down", 536);
  }

  *(this + 1216) = 0;
  if (*(this + 161))
  {
    OUTLINED_FUNCTION_0_0();
    (*(v2 + 1488))();
  }

  OUTLINED_FUNCTION_0_0();
  (*(v3 + 312))();
  AppleEthernetRL::disableIntrs(this);
  re_setwol(this + 296);
  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): ==>\n", *(this + 76), "down", 547);
  }

  return 0;
}

uint64_t AppleEthernetRL::generateFakeMACAddress(IORegistryEntry *this, unsigned __int8 *a2, int a3)
{
  v6 = IORegistryEntry::fromPath("/chosen", gIODTPlane, 0, 0, 0);
  v25 = 0;
  memset(v26, 0, sizeof(v26));
  memset(&v27, 0, sizeof(v27));
  if (a3 == 2)
  {
    OUTLINED_FUNCTION_0_0();
    v10 = (*(v9 + 1448))();
  }

  else
  {
    if (a3 == 3)
    {
      v7 = 0;
      *a2 = 1749868544;
      a2[4] = 0;
      v8 = 5;
LABEL_9:
      a2[5] = v8;
      goto LABEL_10;
    }

    v10 = 0;
  }

  v11 = (v6->getProperty_1)(v6, "unique-chip-id");
  v12 = OSMetaClassBase::safeMetaCast(v11, OSData::metaClass);
  if (v12)
  {
    v13 = v12;
    OUTLINED_FUNCTION_0_0();
    v25 = *(*(v14 + 216))();
    if (v25)
    {
      MD5Init(&v27);
      v15 = (v13->__vftable[1].getMetaClass)(v13);
      MD5Update(&v27, &v25, v15);
      MD5Final(v26, &v27);
      v7 = 0;
      a2[5] = v26[2];
      *a2 = 2;
      a2[1] = -32;
      a2[2] = -4;
      *(a2 + 3) = *v26;
      v8 = a2[5] + v10;
      goto LABEL_9;
    }

    v7 = 3758096385;
  }

  else
  {
    v7 = 3758097090;
  }

LABEL_10:
  if (this[15].__vftable)
  {
    v17 = *&this[15].retainCount;
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[2];
    v21 = a2[3];
    v22 = a2[4];
    v23 = a2[5];
    RegistryEntryID = IORegistryEntry::getRegistryEntryID(this);
    IOLog("[0x%llx] rl::%s(%d): generated %02x:%02x:%02x:%02x:%02x:%02x for registryEntryID 0x%llx (mode %d), status 0x%x\n", v17, "generateFakeMACAddress", 620, v18, v19, v20, v21, v22, v23, RegistryEntryID, LODWORD(this[15].fRegistryTable), v7);
    if (!v6)
    {
      return v7;
    }

    goto LABEL_12;
  }

  if (v6)
  {
LABEL_12:
    (v6->release_0)(v6);
  }

  return v7;
}

void AppleEthernetRL::start(uint64_t a1, IOMemoryMap **a2)
{
  v3 = *(a1 + 608);
  PhysicalAddress = IOMemoryMap::getPhysicalAddress(*a2);
  OUTLINED_FUNCTION_0_0();
  v6 = (*(v5 + 120))();
  v7 = ((*a2)->getLength)();
  IOLog("[0x%llx] rl::%s(%d): PCI MemBar at p=%p v=%p len=0x%llx\n", v3, "start", 125, PhysicalAddress, v6, v7);
}

uint64_t AppleEthernetRLUserClient::sMethodExtReadRegister(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_5();
  if (v6)
  {
    OUTLINED_FUNCTION_2();
    v8 = (*(v7 + 880))();
    v9 = OSMetaClassBase::safeMetaCast(v8, &AppleEthernetRL::gMetaClass);
    if (v9)
    {
      v10 = **(v5 + 32);
      v4 = (v4 + 2);
      if (!(v10 >> 18) && (v10 & 3) == 0)
      {
        v4 = 0;
        v11 = *(&v9[42].~OSMetaClassBase + (v10 & 0x3FFFF));
        __dmb(1u);
        **(v5 + 72) = v11;
      }
    }
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtWriteRegister(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_5();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    v7 = (*(v6 + 880))();
    if (OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass))
    {
      OUTLINED_FUNCTION_8();
      if (!(v9 >> 18) && (v9 & 3) == 0)
      {
        v4 = 0;
        v11 = *(v10 + 8);
        __dmb(2u);
        *(*(v8 + 336) + (*&v9 & 0x3FFFFLL)) = v11;
      }
    }
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtReadPhyRegister(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void **a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097088;
  if (this)
  {
    OUTLINED_FUNCTION_0_0();
    v7 = (*(v6 + 880))();
    v8 = OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass);
    if (v8)
    {
      v9 = *a3[4];
      v4 = 3758097090;
      if ((v9 & 1) == 0 && (v9 & 0xFFFC) != 0xFFFC)
      {
        PhyReg16 = AppleEthernetRL::readPhyReg16(v8, *a3[4]);
        OUTLINED_FUNCTION_11(PhyReg16);
      }
    }
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtWritePhyRegister(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_5();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    v7 = (*(v6 + 880))();
    if (OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass))
    {
      OUTLINED_FUNCTION_8();
      if ((v9 & 1) == 0 && (v9 & 0xFFFC) != 0xFFFC)
      {
        AppleEthernetRL::writePhyReg16(v8, v9, *(v10 + 8));
        return 0;
      }
    }
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtReadMacRegister(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void **a3, IOExternalMethodArguments *a4)
{
  v4 = 3758097088;
  if (this)
  {
    OUTLINED_FUNCTION_0_0();
    v7 = (*(v6 + 880))();
    v8 = OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass);
    if (v8)
    {
      v9 = *a3[4];
      v4 = 3758097090;
      if ((v9 & 1) == 0 && (v9 & 0xFFFC) != 0xFFFC)
      {
        MacReg16 = AppleEthernetRL::readMacReg16(v8, *a3[4]);
        OUTLINED_FUNCTION_11(MacReg16);
      }
    }
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtWriteMacRegister(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_5();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    v7 = (*(v6 + 880))();
    if (OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass))
    {
      OUTLINED_FUNCTION_8();
      if ((v9 & 1) == 0 && (v9 & 0xFFFC) != 0xFFFC)
      {
        AppleEthernetRL::writeMacReg16(v8, v9, *(v10 + 8));
        return 0;
      }
    }
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtReadDescRing(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (v6)
  {
    OUTLINED_FUNCTION_2();
    v8 = (*(v7 + 880))();
    v9 = OSMetaClassBase::safeMetaCast(v8, &AppleEthernetRL::gMetaClass);
    if (v9)
    {
      v10 = *(v5 + 32);
      v11 = *(v10 + 8);
      if (v11 > 2)
      {
        v4 = (v4 + 2);
      }

      else
      {
        v12 = v9;
        if (*v10)
        {
          v13 = 97;
        }

        else
        {
          v13 = 124;
        }

        v14 = OUTLINED_FUNCTION_1_0();
        OutputAreaFromArgs = generateOutputAreaFromArgs(v14, v15, v16, v17);
        if (OutputAreaFromArgs)
        {
          v4 = OutputAreaFromArgs;
        }

        else
        {
          v26 = &v12[9 * (v11 & 3) + v13];
          v27 = OUTLINED_FUNCTION_3(OutputAreaFromArgs, v19, v20, v21, v22, v23, v24, v25, v39, __dst, v42, v43);
          v29 = (*(v28 + 176))(v27);
          v30 = *(v26 + 12);
          v31 = *(v26 + 24);
          v32 = (v31 * v30);
          if (v29 < v32)
          {
            v4 = (v4 + 27);
          }

          else
          {
            v33 = *(v5 + 72);
            *&v34 = *v26;
            *(&v34 + 1) = HIDWORD(*v26);
            *v33 = v34;
            *(v33 + 16) = *(v26 + 8);
            *(v33 + 24) = v30;
            *(v33 + 32) = *(v26 + 20);
            *(v33 + 40) = v31;
            *(v33 + 48) = *(v26 + 40);
            v35 = *(v26 + 32);
            if (v35)
            {
              memmove(__dsta, v35, v32);
            }

            else
            {
              bzero(__dsta, v32);
            }

            v4 = 0;
          }
        }
      }
    }

    if (v42)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v36 + 40))();
    }
  }

  if (v43)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v37 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtDbgSendTimeSyncPacket(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_0_0();
    v9 = (*(v8 + 880))();
    v10 = OSMetaClassBase::safeMetaCast(v9, &AppleEthernetRL::gMetaClass);
    if (v10)
    {
      v11 = v10;
      v12 = *v7->scalarInput;
      v13 = generateInputAreaFromArgs(v7, &v35, &v34, &__src);
      if (v13)
      {
        v4 = v13;
      }

      else
      {
        v21 = OUTLINED_FUNCTION_3(v13, v14, v15, v16, v17, v18, v19, v20, v32, __src, v34, v35);
        v23 = (*(v22 + 176))(v21);
        if (v23 > 0x7CF)
        {
          v4 = (v4 + 27);
        }

        else
        {
          v24 = v23;
          OUTLINED_FUNCTION_12();
          v26 = (*(v25 + 1976))(v11);
          v27 = v26;
          if (*(v26 + 4) == 1)
          {
            memmove(*(v26 + 8), __src, v24);
            *(v27 + 80) = v24;
            *(v27 + 16) = v24;
            v4 = (v11->__vftable[17].taggedRelease_0)(v11, v27, v12);
          }

          else
          {
            v4 = 0;
          }

          OUTLINED_FUNCTION_12();
          (*(v28 + 1984))(v11, v27);
        }
      }
    }

    if (v34)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v29 + 40))();
    }
  }

  if (v35)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v30 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtDbgSendRealtimePacket(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  v29 = 0;
  v30 = 0;
  OUTLINED_FUNCTION_5();
  __src = 0;
  v28 = 0;
  v26 = 0;
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_0_0();
    v9 = (*(v8 + 880))();
    v10 = OSMetaClassBase::safeMetaCast(v9, &AppleEthernetRL::gMetaClass);
    if (v10)
    {
      v11 = v10;
      v12 = **(v7 + 32);
      OUTLINED_FUNCTION_0_0();
      if ((*(v13 + 1792))() <= v12)
      {
        v4 = (v4 + 2);
      }

      else
      {
        v14 = *(*(v7 + 32) + 8);
        v15 = generateInputAreaFromArgs(v7, &v29, &v28, &__src);
        if (v15)
        {
          v4 = v15;
        }

        else
        {
          OUTLINED_FUNCTION_0_0();
          v17 = (*(v16 + 176))();
          v4 = (v4 + 27);
          if (v17 <= 0x7CF)
          {
            v18 = v17;
            OUTLINED_FUNCTION_12();
            v20 = (*(v19 + 1976))(v11);
            v21 = v20;
            v30 = v20;
            if (*(v20 + 4) == 1)
            {
              memmove(*(v20 + 8), __src, v18);
              *(v21 + 80) = v18;
              *(v21 + 16) = v18;
              *(v21 + 136) = (v11->__vftable[18].~OSMetaClassBase_0)(v11, 0, 0) + v14;
              *(v21 + 144) = 1;
              v4 = (v11->__vftable[17].Dispatch)(v11, v12, &v30, 1, 0, &v26);
              v21 = v30;
            }

            if (v21 && v4)
            {
              OUTLINED_FUNCTION_12();
              (*(v22 + 1984))(v11, v21);
            }
          }
        }
      }
    }
  }

  if (v28)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v23 + 40))();
  }

  if (v29)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v24 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtReadTally(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (!v6)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_2();
  v8 = (*(v7 + 880))();
  if (OSMetaClassBase::safeMetaCast(v8, &AppleEthernetRL::gMetaClass))
  {
    OUTLINED_FUNCTION_9();
    v10 = *v9;
    v11 = v9[1];
    v12 = OUTLINED_FUNCTION_1_0();
    OutputAreaFromArgs = generateOutputAreaFromArgs(v12, v13, v14, v15);
    if (OutputAreaFromArgs)
    {
LABEL_6:
      v4 = OutputAreaFromArgs;
      goto LABEL_7;
    }

    v24 = OUTLINED_FUNCTION_3(OutputAreaFromArgs, v17, v18, v19, v20, v21, v22, v23, v29, __dst, v32, v33);
    if ((*(v25 + 176))(v24) >= 0xC0)
    {
      OutputAreaFromArgs = AppleEthernetRL::readTallyInfo(v5, __dsta, v10 != 0, v11 != 0);
      goto LABEL_6;
    }

    v4 = (v4 + 27);
  }

LABEL_7:
  if (v32)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v26 + 40))();
  }

LABEL_9:
  if (v33)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v27 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtReadFwStatus(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    v7 = (*(v6 + 880))();
    if (OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass))
    {
      v8 = OUTLINED_FUNCTION_1_0();
      OutputAreaFromArgs = generateOutputAreaFromArgs(v8, v9, v10, v11);
      if (!OutputAreaFromArgs)
      {
        v20 = OUTLINED_FUNCTION_3(OutputAreaFromArgs, v13, v14, v15, v16, v17, v18, v19, v28, v29, v30, v31);
        (*(v21 + 176))(v20);
        v22 = OUTLINED_FUNCTION_7();
        OutputAreaFromArgs = AppleEthernetRL::fetchIPC_SysInfo(v22, v23, v24);
      }

      v4 = OutputAreaFromArgs;
    }

    if (v30)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v25 + 40))();
    }
  }

  if (v31)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v26 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtReadFwLifecycle(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    v7 = (*(v6 + 880))();
    if (OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass))
    {
      v8 = OUTLINED_FUNCTION_1_0();
      OutputAreaFromArgs = generateOutputAreaFromArgs(v8, v9, v10, v11);
      if (!OutputAreaFromArgs)
      {
        v20 = OUTLINED_FUNCTION_3(OutputAreaFromArgs, v13, v14, v15, v16, v17, v18, v19, v28, v29, v30, v31);
        (*(v21 + 176))(v20);
        v22 = OUTLINED_FUNCTION_7();
        OutputAreaFromArgs = AppleEthernetRL::fetchIPC_Lifecycle(v22, v23, v24);
      }

      v4 = OutputAreaFromArgs;
    }

    if (v30)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v25 + 40))();
    }
  }

  if (v31)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v26 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtReadFwKeyHash(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    v7 = (*(v6 + 880))();
    if (OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass))
    {
      OUTLINED_FUNCTION_9();
      v8 = OUTLINED_FUNCTION_1_0();
      OutputAreaFromArgs = generateOutputAreaFromArgs(v8, v9, v10, v11);
      if (!OutputAreaFromArgs)
      {
        v20 = OUTLINED_FUNCTION_3(OutputAreaFromArgs, v13, v14, v15, v16, v17, v18, v19, v29, v30, v31, v32);
        (*(v21 + 176))(v20);
        v22 = OUTLINED_FUNCTION_6();
        OutputAreaFromArgs = AppleEthernetRL::fetchIPC_ReadROTPK(v22, v23, v24, v25);
      }

      v4 = OutputAreaFromArgs;
    }

    if (v31)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v26 + 40))();
    }
  }

  if (v32)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v27 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtReadFwNvram(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    v7 = (*(v6 + 880))();
    if (OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass))
    {
      OUTLINED_FUNCTION_9();
      v8 = OUTLINED_FUNCTION_1_0();
      OutputAreaFromArgs = generateOutputAreaFromArgs(v8, v9, v10, v11);
      if (!OutputAreaFromArgs)
      {
        v20 = OUTLINED_FUNCTION_3(OutputAreaFromArgs, v13, v14, v15, v16, v17, v18, v19, v30, v31, v32, v33);
        (*(v21 + 176))(v20);
        v22 = OUTLINED_FUNCTION_10();
        OutputAreaFromArgs = AppleEthernetRL::fetchIPC_ReadNVRAM(v22, v23, v24, v25, v26);
      }

      v4 = OutputAreaFromArgs;
    }

    if (v32)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v27 + 40))();
    }
  }

  if (v33)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v28 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtEraseFwNvram(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  if (!this)
  {
    return 3758097088;
  }

  OUTLINED_FUNCTION_0_0();
  v6 = (*(v5 + 880))();
  v7 = OSMetaClassBase::safeMetaCast(v6, &AppleEthernetRL::gMetaClass);
  if (!v7)
  {
    return 3758097088;
  }

  v8 = a3[4];
  v9 = *v8;
  v10 = v8[2];
  v11 = v8[4];

  return AppleEthernetRL::fetchIPC_EraseNVRAM(v7, v9, v10, v11);
}

uint64_t AppleEthernetRLUserClient::sMethodExtWriteFwNvram(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    v7 = (*(v6 + 880))();
    if (OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass))
    {
      OUTLINED_FUNCTION_9();
      v8 = OUTLINED_FUNCTION_1_0();
      InputAreaFromArgs = generateInputAreaFromArgs(v8, v9, v10, v11);
      if (!InputAreaFromArgs)
      {
        v20 = OUTLINED_FUNCTION_3(InputAreaFromArgs, v13, v14, v15, v16, v17, v18, v19, v30, v31, v32, v33);
        (*(v21 + 176))(v20);
        v22 = OUTLINED_FUNCTION_10();
        InputAreaFromArgs = AppleEthernetRL::fetchIPC_WriteNVRAM(v22, v23, v24, v25, v26);
      }

      v4 = InputAreaFromArgs;
    }

    if (v32)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v27 + 40))();
    }
  }

  if (v33)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v28 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtWriteSecureFw(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    v7 = (*(v6 + 880))();
    if (OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass))
    {
      v8 = OUTLINED_FUNCTION_1_0();
      InputAreaFromArgs = generateInputAreaFromArgs(v8, v9, v10, v11);
      if (!InputAreaFromArgs)
      {
        v20 = OUTLINED_FUNCTION_3(InputAreaFromArgs, v13, v14, v15, v16, v17, v18, v19, v28, v29, v30, v31);
        (*(v21 + 176))(v20);
        v22 = OUTLINED_FUNCTION_7();
        InputAreaFromArgs = AppleEthernetRL::fetchIPC_WriteSecureFw(v22, v23, v24);
      }

      v4 = InputAreaFromArgs;
    }

    if (v30)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v25 + 40))();
    }
  }

  if (v31)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v26 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtWriteNonSecureFw(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    v7 = (*(v6 + 880))();
    if (OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass))
    {
      v8 = OUTLINED_FUNCTION_1_0();
      InputAreaFromArgs = generateInputAreaFromArgs(v8, v9, v10, v11);
      if (!InputAreaFromArgs)
      {
        v20 = OUTLINED_FUNCTION_3(InputAreaFromArgs, v13, v14, v15, v16, v17, v18, v19, v28, v29, v30, v31);
        (*(v21 + 176))(v20);
        v22 = OUTLINED_FUNCTION_7();
        InputAreaFromArgs = AppleEthernetRL::fetchIPC_WriteNonSecureFw(v22, v23, v24);
      }

      v4 = InputAreaFromArgs;
    }

    if (v30)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v25 + 40))();
    }
  }

  if (v31)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v26 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtCompleteWriteFw(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  if (!this)
  {
    return 3758097088;
  }

  OUTLINED_FUNCTION_0_0();
  v5 = (*(v4 + 880))();
  v6 = OSMetaClassBase::safeMetaCast(v5, &AppleEthernetRL::gMetaClass);
  if (!v6)
  {
    return 3758097088;
  }

  return AppleEthernetRL::fetchIPC_CompleteWriteFw(v6);
}

uint64_t AppleEthernetRLUserClient::sMethodExtResetFw(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_5();
  if (v6)
  {
    OUTLINED_FUNCTION_2();
    v8 = (*(v7 + 880))();
    v9 = OSMetaClassBase::safeMetaCast(v8, &AppleEthernetRL::gMetaClass);
    if (v9)
    {
      AppleEthernetRL::setResetRisc(v9, **(v5 + 32), *(*(v5 + 32) + 8), *(*(v5 + 32) + 16), *(*(v5 + 32) + 24), *(*(v5 + 32) + 32));
      return 0;
    }
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtReadLastHandoff(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (v6)
  {
    OUTLINED_FUNCTION_2();
    v8 = (*(v7 + 880))();
    v9 = OSMetaClassBase::safeMetaCast(v8, &AppleEthernetRL::gMetaClass);
    if (v9)
    {
      v10 = v9;
      v11 = OUTLINED_FUNCTION_1_0();
      OutputAreaFromArgs = generateOutputAreaFromArgs(v11, v12, v13, v14);
      if (OutputAreaFromArgs)
      {
        v4 = OutputAreaFromArgs;
      }

      else
      {
        v23 = v10[177].__vftable;
        if (v23)
        {
          v24 = LODWORD(v23->~OSMetaClassBase);
        }

        else
        {
          v24 = 0;
        }

        v25 = *(v5 + 72);
        *v25 = v24;
        v25[1] = v10[178].__vftable;
        v26 = OUTLINED_FUNCTION_3(OutputAreaFromArgs, v16, v17, v18, v19, v20, v21, v22, v31, __dst, v34, v35);
        if ((*(v27 + 176))(v26) < v24)
        {
          v4 = (v4 + 27);
        }

        else
        {
          memmove(__dsta, v10[177].__vftable, v24);
          v4 = 0;
        }
      }
    }

    if (v34)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v28 + 40))();
    }
  }

  if (v35)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v29 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtDbgSetWakeTimeout(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_5();
  if (v6)
  {
    OUTLINED_FUNCTION_2();
    v8 = (*(v7 + 880))();
    v9 = OSMetaClassBase::safeMetaCast(v8, &AppleEthernetRL::gMetaClass);
    if (v9)
    {
      v4 = 0;
      LODWORD(v9[168].__vftable) = **(v5 + 32);
    }
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtReadFwLog(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    v7 = (*(v6 + 880))();
    if (OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass))
    {
      v8 = OUTLINED_FUNCTION_1_0();
      OutputAreaFromArgs = generateOutputAreaFromArgs(v8, v9, v10, v11);
      if (!OutputAreaFromArgs)
      {
        v20 = OUTLINED_FUNCTION_3(OutputAreaFromArgs, v13, v14, v15, v16, v17, v18, v19, v29, v30, v31, v32);
        (*(v21 + 176))(v20);
        v22 = OUTLINED_FUNCTION_6();
        OutputAreaFromArgs = AppleEthernetRL::readFWLog(v22, v23, v24, v25);
      }

      v4 = OutputAreaFromArgs;
    }

    if (v31)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v26 + 40))();
    }
  }

  if (v32)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v27 + 40))();
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtReadPtpOffsets(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_5();
  if (v6)
  {
    OUTLINED_FUNCTION_2();
    v8 = (*(v7 + 880))();
    v9 = OSMetaClassBase::safeMetaCast(v8, &AppleEthernetRL::gMetaClass);
    if (v9)
    {
      v4 = 0;
      v10 = *(v5 + 72);
      *v10 = v9[162].__vftable;
      v10[1] = v9[163].__vftable;
    }
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtWritePtpOffsets(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_5();
  if (v6)
  {
    OUTLINED_FUNCTION_2();
    v8 = (*(v7 + 880))();
    v9 = OSMetaClassBase::safeMetaCast(v8, &AppleEthernetRL::gMetaClass);
    if (v9)
    {
      v10 = *(v5 + 32);
      v9[162].__vftable = *v10;
      v9[163].__vftable = v10[1];
      OUTLINED_FUNCTION_0_0();
      (*(v11 + 1968))();
      return 0;
    }
  }

  return v4;
}

uint64_t AppleEthernetRLUserClient::sMethodExtWriteFwKeyHash(AppleEthernetRLUserClient *this, AppleEthernetRLUserClient *a2, void *a3, IOExternalMethodArguments *a4)
{
  OUTLINED_FUNCTION_0_1();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    v7 = (*(v6 + 880))();
    if (OSMetaClassBase::safeMetaCast(v7, &AppleEthernetRL::gMetaClass))
    {
      OUTLINED_FUNCTION_9();
      v8 = OUTLINED_FUNCTION_1_0();
      InputAreaFromArgs = generateInputAreaFromArgs(v8, v9, v10, v11);
      if (!InputAreaFromArgs)
      {
        v20 = OUTLINED_FUNCTION_3(InputAreaFromArgs, v13, v14, v15, v16, v17, v18, v19, v29, v30, v31, v32);
        (*(v21 + 176))(v20);
        v22 = OUTLINED_FUNCTION_6();
        InputAreaFromArgs = AppleEthernetRL::fetchIPC_WriteROTPK(v22, v23, v24, v25);
      }

      v4 = InputAreaFromArgs;
    }

    if (v31)
    {
      OUTLINED_FUNCTION_0_0();
      (*(v26 + 40))();
    }
  }

  if (v32)
  {
    OUTLINED_FUNCTION_0_0();
    (*(v27 + 40))();
  }

  return v4;
}

uint64_t generateOutputAreaFromArgs(const IOExternalMethodArguments *a1, IOMemoryDescriptor **a2, IOMemoryMap **a3, unsigned __int8 **a4)
{
  OUTLINED_FUNCTION_13();
  v9 = *(v8 + 104);
  if (v9)
  {
    *v6 = v9;
    OUTLINED_FUNCTION_0_0();
    (*(v10 + 32))();
  }

  else
  {
    v17 = *(v7 + 88);
    if (v17)
    {
      v18 = *(v7 + 96);
      if (v18)
      {
        v11 = IOMemoryDescriptor::withAddress(v17, v18, 2u);
        *v6 = v11;
        goto LABEL_4;
      }
    }
  }

  v11 = *v6;
LABEL_4:
  v12 = 3758097085;
  if (v11)
  {
    OUTLINED_FUNCTION_0_0();
    v14 = (*(v13 + 232))();
    *v5 = v14;
    if (v14)
    {
      OUTLINED_FUNCTION_0_0();
      v12 = 0;
      *v4 = (*(v15 + 120))();
    }
  }

  return v12;
}

uint64_t generateInputAreaFromArgs(const IOExternalMethodArguments *a1, IOMemoryDescriptor **a2, IOMemoryMap **a3, unsigned __int8 **a4)
{
  OUTLINED_FUNCTION_13();
  v9 = *(v8 + 64);
  if (v9)
  {
    *v6 = v9;
    OUTLINED_FUNCTION_0_0();
    (*(v10 + 32))();
  }

  else
  {
    v17 = *(v7 + 48);
    if (v17)
    {
      v18 = *(v7 + 56);
      if (v18)
      {
        v11 = IOMemoryDescriptor::withAddress(v17, v18, 1u);
        *v6 = v11;
        goto LABEL_4;
      }
    }
  }

  v11 = *v6;
LABEL_4:
  v12 = 3758097085;
  if (v11)
  {
    OUTLINED_FUNCTION_0_0();
    v14 = (*(v13 + 232))();
    *v5 = v14;
    if (v14)
    {
      OUTLINED_FUNCTION_0_0();
      v12 = 0;
      *v4 = (*(v15 + 120))();
    }
  }

  return v12;
}

uint64_t AppleEthernetRL::createSnapshotService(AppleEthernetRL *this)
{
  OUTLINED_FUNCTION_0_0();
  v3 = (*(v2 + 1440))();
  if (*(this + 161))
  {
    return 0;
  }

  v5 = 3758097085;
  if (!v3)
  {
    return 3758097109;
  }

  v6 = AppleEthernetRLClock::alloc_clock(this, v3, v4);
  *(this + 161) = v6;
  if (v6)
  {
    if (*(this + 1216))
    {
      OUTLINED_FUNCTION_0_0();
      (*(v7 + 1480))();
    }

    return 0;
  }

  return v5;
}

uint64_t AppleEthernetRL::setRealtimeReceiveQueueFilter(AppleEthernetRL *this, unsigned int a2, IOEthernetController::IOEthernetAVBIngressFilterElement *a3, int a4)
{
  v7 = 3758097095;
  if (*(this + 312))
  {
    if (*(this + 314) <= a2)
    {
      v7 = 3758097090;
    }

    else if (!a2 && a4 == 1 && a3->filterType == IOEthernetAVBIngressFilterTypeEtherTypeVLANTag)
    {
      if (*(this + 158))
      {
        OUTLINED_FUNCTION_0_0();
        (*(v9 + 40))();
        *(this + 158) = 0;
      }

      *(this + 158) = OSArray::withCapacity(1u);
      v10 = OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::create();
      memcpy(v10[2], a3, 0x110uLL);
      (*(**(this + 158) + 232))();
      (*(*v10 + 5))(v10);
      AppleEthernetRL::configureAVBFilterSlots(this);
      AppleEthernetRL::activateAVBFilter(this);
      if (re_apply_avb_filter(this + 296, 1000))
      {
        v7 = 0;
      }

      else
      {
        if (*(this + 158))
        {
          OUTLINED_FUNCTION_0_0();
          (*(v11 + 40))();
        }

        *(this + 158) = 0;
        v7 = 3758097098;
      }
    }
  }

  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): qi %d, fecount %d returning 0x%x\n", *(this + 76), "setRealtimeReceiveQueueFilter", 194, a2, a4, v7);
  }

  return v7;
}

uint64_t AppleEthernetRL::getRealtimeReceiveQueueFilter(AppleEthernetRL *this, unsigned int a2, IOEthernetController::IOEthernetAVBIngressFilterElement *a3, unsigned int *a4)
{
  v7 = 3758097090;
  if (*(this + 312))
  {
    if (a4)
    {
      v8 = a3;
      if (a3)
      {
        if (*(this + 314) > a2)
        {
          v9 = *a4;
          *a4 = 0;
          v10 = 8 * a2;
          v11 = (this + v10 + 1264);
          if (v10 != v10)
          {
            v11 = ((this + v10 + 1264) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
          }

          if (*v11)
          {
            OUTLINED_FUNCTION_0_0();
            v13 = (*(v12 + 144))();
            if (v9 < v13)
            {
              v7 = 3758097115;
            }

            else
            {
              v14 = v13;
              if (v13)
              {
                v15 = 0;
                do
                {
                  OUTLINED_FUNCTION_0_0();
                  v17 = (*(v16 + 280))();
                  v18 = OSMetaClassBase::safeMetaCast(v17, &OSValueObject<IOEthernetController::IOEthernetAVBIngressFilterElement>::gMetaClass)[2].__vftable;
                  memcpy(v8, v18, sizeof(IOEthernetController::IOEthernetAVBIngressFilterElement));
                  if (*(this + 600))
                  {
                    IOLog("[0x%llx] rl::%s(%d): qi %d [%d] filterType 0x%x\n", *(this + 76), "getRealtimeReceiveQueueFilter", 221, a2, v15, v8->filterType);
                  }

                  ++v15;
                  ++v8;
                }

                while (v14 != v15);
              }

              v7 = 0;
              *a4 = v14;
            }
          }

          else
          {
            v7 = 0;
          }
        }
      }
    }
  }

  else
  {
    v7 = 3758097095;
  }

  if (*(this + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): qi %d, fecount %d returning 0x%x\n", *(this + 76), "getRealtimeReceiveQueueFilter", 227, a2, *a4, v7);
  }

  return v7;
}

uint64_t AppleEthernetRL::setRealtimeReceiveQueuePacketHandler(AppleEthernetRL *this, unsigned int a2, void (*a3)(void *, IOEthernetController::IOEthernetAVBPacket *), void *a4)
{
  result = 3758097090;
  if (!*(this + 312))
  {
    return 3758097095;
  }

  if (*(this + 314) >= a2)
  {
    result = 0;
    v6 = 8 * a2;
    v7 = (this + (8 * a2) + 1272);
    if (v6 != 8 * a2)
    {
      v7 = ((this + v6 + 1272) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    *v7 = a3;
    v8 = this + 1280;
    v9 = &v8[8 * a2];
    if (8 * a2 != 8 * a2)
    {
      v9 = (&v8[v6] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    *v9 = a4;
  }

  return result;
}

uint64_t AppleEthernetRL::transmitRealtimePackets(AppleEthernetRL *this, unsigned int a2, IOEthernetController::IOEthernetAVBPacket **a3, unsigned int a4, int a5, unsigned int *a6)
{
  result = 3758097090;
  if (*(this + 312))
  {
    if (*(this + 313) <= a2)
    {
      v34 = 0;
    }

    else if (*(this + 161))
    {
      if (*(this + 1216))
      {
        v8 = IOTimeSyncInvalidTime;
        if (a4 && a5)
        {
          packetTimestamp = IOTimeSyncInvalidTime;
          if ((*a3)->timestampValid)
          {
            packetTimestamp = (*a3)->packetTimestamp;
          }
        }

        else
        {
          packetTimestamp = IOTimeSyncInvalidTime;
          if (!a4)
          {
            v34 = 0;
            result = 0;
            goto LABEL_35;
          }
        }

        v35 = a6;
        v10 = 0;
        v39 = 0;
        v11 = 72 * (a2 + 2);
        v12 = this + v11 + 776;
        if (v11 != v11)
        {
          v12 = ((this + v11 + 776) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
        }

        v36 = 1 << (a2 + 9);
        v37 = a4;
        do
        {
          v13 = a3[v10];
          numberOfEntries = v13->numberOfEntries;
          v15 = *(v12 + 1);
          if (packetTimestamp != v8 || (v16 = v8, v13->timestampValid))
          {
            OUTLINED_FUNCTION_0_0();
            v16 = (*(v17 + 1400))();
          }

          if (numberOfEntries)
          {
            v18 = 0;
            v19 = *(v12 + 4);
            v20 = 16 * (numberOfEntries - 1);
            do
            {
              v21 = *(v12 + 4);
              v22 = v15 == v19;
              v23 = 32 * v15;
              v24 = v21 + (32 * v15);
              if (v23 != 32 * v15)
              {
                v24 = (v21 + v23) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
              }

              v25 = v13 + v18;
              v26 = *(v12 + 8);
              v27 = 8 * v15;
              v28 = (v26 + (8 * v15));
              v29 = (v26 + v27) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
              if (v27 != 8 * v15)
              {
                v28 = v29;
              }

              v30 = *(v25 + 40);
              v31 = *(v25 + 9);
              if (v20 == v18)
              {
                v32 = v13;
              }

              else
              {
                v32 = 0;
              }

              *v28 = v32;
              if (v20 == v18)
              {
                v33 = -1879048192;
              }

              else
              {
                v33 = 0x80000000;
              }

              *(v24 + 4) = 0;
              *(v24 + 8) = v31;
              *(v24 + 20) = 0;
              *(v24 + 16) = 0;
              *(v24 + 24) = v16;
              *v24 = v33 | ((v18 == 0) << 29) | v30 | (v22 << 30);
              v19 = *(v12 + 4);
              v15 = v19 & (v15 + 1);
              v18 += 16;
            }

            while (16 * numberOfEntries != v18);
            v39 += numberOfEntries;
          }

          if (v15 != *(v12 + 1))
          {
            *(v12 + 1) = v15;
            if (!*(this + 463))
            {
              __dmb(2u);
              *(*(this + 42) + 144) = v36;
            }
          }

          ++v10;
        }

        while (v10 != v37);
        result = 0;
        a6 = v35;
        v34 = v39;
      }

      else
      {
        v34 = 0;
        result = 3758097124;
      }
    }

    else
    {
      v34 = 0;
      result = 3758097112;
    }
  }

  else
  {
    v34 = 0;
    result = 3758097095;
  }

LABEL_35:
  if (a6)
  {
    *a6 = v34;
  }

  return result;
}

void AppleEthernetRL::drainRxPTPAVBRings(AppleEthernetRL *this)
{
  if (*(this + 312))
  {
    v2 = *(this + 314);
    if (v2 != -1)
    {
      v3 = 0;
      v4 = this + 992;
      do
      {
        v5 = 72 * (*(this + 311) + v3);
        v6 = &v4[v5];
        if (v5 != v5)
        {
          v6 = &v4[v5] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
        }

        *v6 = 0;
        *(v6 + 8) = 0;
        if (*(v6 + 12))
        {
          v7 = 0;
          do
          {
            OUTLINED_FUNCTION_1_1();
            if (v9)
            {
              (*(*this + 1984))(this);
              v8 = *(v6 + 12);
            }

            ++v7;
          }

          while (v7 < v8);
          v2 = *(this + 314);
        }

        ++v3;
      }

      while (v3 < v2 + 1);
    }
  }
}

_DWORD *AppleEthernetRL::drainTxPTPAVBRings(_DWORD *this)
{
  if (this[312])
  {
    v1 = this;
    if (this[313] != -1)
    {
      v2 = 0;
      v3 = this + 194;
      do
      {
        v4 = v1[310] + v2;
        v5 = 72 * v4;
        v6 = v3 + v5;
        if (v5 != v5)
        {
          v6 = &v3[v5 / 4] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000;
        }

        *v6 = 0;
        *(v6 + 8) = 0;
        v7 = *(v6 + 12);
        if (v4 == 1)
        {
          if (*(v6 + 12))
          {
            v8 = 0;
            do
            {
              OUTLINED_FUNCTION_1_1();
              this = (*(*v1 + 1960))(v1);
              ++v8;
            }

            while (v8 < *(v6 + 12));
          }
        }

        else if (*(v6 + 12))
        {
          v9 = 0;
          do
          {
            v10 = (*(v6 + 64) + 8 * v9);
            v11 = *v10;
            *v10 = 0;
            if (v11)
            {
              this = (*(*v1 + 1984))(v1);
              v7 = *(v6 + 12);
            }

            ++v9;
          }

          while (v9 < v7);
        }

        ++v2;
      }

      while (v2 < v1[313] + 1);
    }
  }

  return this;
}

uint64_t AppleEthernetRL::setAVBControllerState(AppleEthernetRL *this, IOEthernetControllerAVBState a2)
{
  v4 = *(this + 328);
  if (v4 != a2)
  {
    if (v4 < a2)
    {
      re_enable_eee_workaround(this + 296);
      SnapshotService = AppleEthernetRL::createSnapshotService(this);
      if ((*(this + 603) & 0x20) != 0)
      {
        IOLog("[0x%llx] rl::%s(%d): createSnapshotService returns 0x%x\n", *(this + 76), "setAVBControllerState", 961, SnapshotService);
      }
    }

    *(this + 328) = a2;
  }

  if ((*(this + 603) & 0x20) != 0)
  {
    v7 = &kAVBStateName[v4];
    if (8 * v4 != 8 * v4)
    {
      v7 = (&kAVBStateName[v4] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    v8 = *v7;
    v9 = a2;
    v10 = (kAVBStateName + (8 * a2));
    if (v9 != a2)
    {
      v10 = (&kAVBStateName[v9] & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
    }

    IOLog("[0x%llx] rl::%s(%d): %d (%s) -> %d (%s) returns 0x%08x\n", *(this + 76), "setAVBControllerState", 970, v4, v8, a2, *v10, 0);
  }

  return 0;
}

uint64_t AppleEthernetRL::fetchIPC_WriteROTPK(AppleEthernetRLIPC **this, int a2, char *a3, uint64_t a4)
{
  v8 = 3758097090;
  v13 = xmmword_A10;
  if (!PE_i_can_has_debugger(0))
  {
    return 3758097095;
  }

  if (a3 && a4 == 32)
  {
    v9 = 1612;
    if (a2)
    {
      v9 = 1608;
    }

    v10 = *(this + v9);
    IPC_Connect = AppleEthernetRL::fetchIPC_Connect(this, 0);
    if (IPC_Connect)
    {
      return IPC_Connect;
    }

    else
    {
      AppleEthernetRLIPC::writeToSRAM(this[171], 3840, -1610612736);
      AppleEthernetRLIPC::writeToSRAM(this[171], 3844, 32);
      AppleEthernetRLIPC::copyToSharedSRAM(this[171], 0, a3, 0x20u);
      if (AppleEthernetRLIPC::psaCall(this[171], v10, 0, &v13, 2uLL, 0, 0))
      {
        return 3758097098;
      }

      else
      {
        return 0;
      }
    }
  }

  return v8;
}

uint64_t AppleEthernetRL::readFWLog(AppleEthernetRLIPC **this, __int16 a2, unsigned __int8 *a3, unsigned int a4)
{
  *v5 = 0;
  if (!a3)
  {
    return 3758097090;
  }

  *&v5[2] = a2;
  return AppleEthernetRLIPC::readWriteKR4(this[172], v5, 8u, a3, a4);
}

uint64_t AppleEthernetRL::prepareBSDInterface(AppleEthernetRL *this, __ifnet *a2)
{
  if (!v3)
  {
    v4 = *(this + 185);
    if (v4)
    {
      v5 = IOSkywalkNetworkKDPPoller::start(v4, this, 0);
      IOLog("[0x%llx] rl::%s(%d): kdp poller start() returns 0x%x\n", *(this + 76), "prepareBSDInterface", 23, v5);
    }
  }

  return v3;
}

uint64_t AppleEthernetRL::initializeDebugger(AppleEthernetRL *this)
{
  result = (*(AppleEthernetRLKDPPoller::gMetaClass + 104))();
  *(this + 185) = result;
  if (result)
  {
    v3 = *(*result + 176);

    return v3();
  }

  return result;
}

uint64_t AppleEthernetRL::sendDebuggerPacket(AppleEthernetRL *this, char *a2, unsigned int a3)
{
  result = 3758097090;
  if (a2 && a3 <= 0x800)
  {
    if (AppleEthernetRL::sendTx4DWLegacyPacketBuffer(this, a2, a3, 0))
    {
      return 0;
    }

    else
    {
      return 3758097086;
    }
  }

  return result;
}

uint64_t AppleEthernetRL::receiveDebuggerPacket(AppleEthernetRL *this, char *a2, unsigned int a3, unsigned int *a4)
{
  v4 = 3758097090;
  if (a2 && a4)
  {
    if (*(this + 463))
    {
      goto LABEL_6;
    }

    __dmb(2u);
    *(*(this + 42) + 3328) = -1;
    if (*(this + 463))
    {
      goto LABEL_6;
    }

    __dmb(2u);
    v6 = *(this + 42);
    *(v6 + 3344) = -1;
    if (*(this + 463))
    {
      goto LABEL_6;
    }

    v9 = *(v6 + 3332);
    __dmb(1u);
    v10 = *(this + 463);
    if (*(this + 463))
    {
      v11 = -1;
    }

    else
    {
      v11 = *(*(this + 42) + 3348);
      __dmb(1u);
      v10 = *(this + 463);
    }

    if (v9 && !v10)
    {
      __dmb(2u);
      *(*(this + 42) + 3332) = v9;
      v10 = *(this + 463);
    }

    if (v11)
    {
      if (v10)
      {
LABEL_6:
        v7 = AppleEthernetRL::pollRx8DWPacket(this, a2, a3, 0);
        v4 = 0;
        *a4 = v7;
        return v4;
      }

      __dmb(2u);
      *(*(this + 42) + 3348) = v11;
      v10 = *(this + 463);
    }

    if (!v10)
    {
      __dmb(2u);
      *(*(this + 42) + 3340) = *(this + 386) | *(this + 394);
      if (!*(this + 463))
      {
        __dmb(2u);
        *(*(this + 42) + 3352) = *(this + 395);
      }
    }

    goto LABEL_6;
  }

  return v4;
}

uint64_t AppleEthernetRL::enable(AppleEthernetRL *this)
{
  Rings = AppleEthernetRL::allocateRings(this);
  if (!Rings)
  {
    Rings = AppleEthernetRL::up(this);
  }

  v3 = Rings;
  *(this + 584) = Rings == 0;
  IOLog("[0x%llx] rl::%s(%d): ==> 0x%08x\n", *(this + 76), "enable", 422, Rings);
  return v3;
}

void AppleEthernetRL::allocateRings()
{
  panic("Could not allocate mbuf array\\n @%s:%d", "en_main.cpp", 92);
}

{
  panic("Could not allocate cookie array\\n @%s:%d", "en_main.cpp", 84);
}

{
  panic("Could not allocate mbuf array\\n @%s:%d", "en_main.cpp", 82);
}

void AppleEthernetRL::startInterface()
{
  panic(" @%s:%d", "en_main.cpp", 345);
}

{
  panic(" @%s:%d", "en_main.cpp", 336);
}

{
  panic(" @%s:%d", "en_main.cpp", 294);
}

{
  panic(" @%s:%d", "en_main.cpp", 282);
}

OSDictionary *AppleEthernetRL::copyMediumDictionary(AppleEthernetRL *this)
{
  if ((*(this + 179) + 32475) >= 3u)
  {
    v1 = 14;
  }

  else
  {
    v1 = 4 * (*(this + 179) + 32475) + 18;
  }

  v2 = OSDictionary::withCapacity(1u);
  if (v2)
  {
    v3 = &qword_AA8;
    do
    {
      v4 = IONetworkMedium::medium(*(v3 - 2), *v3, 0, 0, 0);
      if (v4)
      {
        v5 = v4;
        IONetworkMedium::addMedium(v2, v4);
        (v5->release_0)(v5);
      }

      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void AppleEthernetRL::queueIntrHandler(AppleEthernetRL *this, IOInterruptEventSource *a2)
{
  if ((*(this + 1208) & 1) == 0)
  {
    return;
  }

  v4 = (a2->getIntIndex)(a2);
  v5 = v4;
  if ((*(this + 600) & 0x10) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): ^^^ %d%d%d\n", *(this + 76), "queueIntrHandler", 187, v4, v4, v4);
  }

  if (v5 > 31)
  {
    if (*(this + 463))
    {
      goto LABEL_10;
    }

    __dmb(2u);
    v6 = 3348;
  }

  else
  {
    if (*(this + 463))
    {
      goto LABEL_10;
    }

    __dmb(2u);
    v6 = 3332;
  }

  OUTLINED_FUNCTION_0_2(v6);
LABEL_10:
  __dmb(1u);
  OUTLINED_FUNCTION_1_2();
  if (v5 == v7)
  {
    if ((*(this + 169))(this, 0, 64))
    {
      (*(**(this + 90) + 352))(*(this + 90), 0, 1);
LABEL_16:
      interruptOccurred = a2->interruptOccurred;

      (interruptOccurred)(a2, 0, 0, 0);
      return;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_1_2();
  if (v5 == v8)
  {
    if ((*(this + 170))(this, 0))
    {
      (*(**(this + 84) + 352))(*(this + 84), 0, 1);
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if ((*(this + 600) & 0x10) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): UNIMPLEMENTED\n", *(this + 76), "queueIntrHandler", 217);
  }

  if (v5 <= 31)
  {
LABEL_22:
    if (*(this + 463))
    {
      goto LABEL_27;
    }

    __dmb(2u);
    v10 = 3340;
    goto LABEL_26;
  }

  if (*(this + 463))
  {
    goto LABEL_27;
  }

  __dmb(2u);
  v10 = 3352;
LABEL_26:
  OUTLINED_FUNCTION_0_2(v10);
LABEL_27:
  if ((*(this + 600) & 0x10) != 0)
  {
    IOLog("[0x%llx] rl::%s(%d): VVV %d%d%d\n", *(this + 76), "queueIntrHandler", 225, v5, v5, v5);
  }
}

uint64_t AppleEthernetRLClock::alloc_clock(AppleEthernetRLClock *this, IOService *cString, const char *a3)
{
  v4 = OSString::withCString(cString);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = (AppleEthernetRLClock::gMetaClass.alloc)();
  if (v6)
  {
    OUTLINED_FUNCTION_12();
    if ((*(v7 + 1552))(v6, v5, 0))
    {
      OUTLINED_FUNCTION_12();
      if ((*(v8 + 864))(v6, this))
      {
        OUTLINED_FUNCTION_12();
        if ((*(v9 + 688))(v6, this))
        {
          goto LABEL_6;
        }

        OUTLINED_FUNCTION_12();
        (*(v11 + 872))(v6, this);
      }
    }

    OUTLINED_FUNCTION_12();
    (*(v12 + 40))(v6);
    v6 = 0;
  }

LABEL_6:
  (v5->release_0)(v5);
  return v6;
}

uint64_t AppleEthernetRLClock::init(AppleEthernetRLClock *this, OSString *a2, OSDictionary *a3)
{
  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == 1)
  {
    *(this + 18) = a2;
    (a2->retain)(a2);
    *(this + 17) = (*(**(this + 18) + 168))();
  }

  return v6;
}

OSMetaClassBase *AppleEthernetRLClock::start(AppleEthernetRLClock *this, OSDictionary *anObject)
{
  result = OSMetaClassBase::safeMetaCast(anObject, &AppleEthernetRL::gMetaClass);
  *(this + 47) = result;
  if (result)
  {
    *(this + 248) = vdupq_n_s64(0x1DCD6500uLL);
    if (!PE_parse_boot_argn("aerl.clock.shift", this + 264, 2))
    {
      *(this + 132) = 3;
    }

    if (result)
    {
      (*(*this + 672))(this, 0);
      return (&dword_0 + 1);
    }
  }

  return result;
}

uint64_t AppleEthernetRLKDPPoller::open(AppleEthernetRLKDPPoller *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    return AppleEthernetRL::allocDebuggerResources(v1);
  }

  else
  {
    return OUTLINED_FUNCTION_0_3();
  }
}

uint64_t AppleEthernetRLKDPPoller::close(AppleEthernetRLKDPPoller *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return OUTLINED_FUNCTION_0_3();
  }

  AppleEthernetRL::freeDebuggerResources(v1);
  return 0;
}

uint64_t AppleEthernetRLKDPPoller::sendPacket(AppleEthernetRLKDPPoller *this, char *a2, unsigned int a3)
{
  v3 = *(this + 2);
  if (v3)
  {
    return AppleEthernetRL::sendDebuggerPacket(v3, a2, a3);
  }

  else
  {
    return OUTLINED_FUNCTION_0_3();
  }
}

uint64_t AppleEthernetRLKDPPoller::receivePacket(AppleEthernetRLKDPPoller *this, char *a2, unsigned int a3, unsigned int *a4)
{
  v4 = *(this + 2);
  if (v4)
  {
    return AppleEthernetRL::receiveDebuggerPacket(v4, a2, a3, a4);
  }

  else
  {
    return OUTLINED_FUNCTION_0_3();
  }
}

uint64_t AppleEthernetRLKDPPoller::getLinkStatus(AppleEthernetRLKDPPoller *this, unsigned int *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    return AppleEthernetRL::getDebuggerLinkStatus(v2, a2);
  }

  else
  {
    return OUTLINED_FUNCTION_0_3();
  }
}

uint64_t AppleEthernetRLKDPPoller::enablePolling(AppleEthernetRLKDPPoller *this)
{
  if (*(this + 24))
  {
    return 3758097109;
  }

  result = AppleEthernetRL::enableDebuggerPolling(*(this + 2));
  if (!result)
  {
    *(this + 24) = 1;
  }

  return result;
}

uint64_t AppleEthernetRLKDPPoller::disablePolling(AppleEthernetRLKDPPoller *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    return 3758097109;
  }

  result = 0;
  *(this + 24) = 0;
  return result;
}

uint64_t AppleEthernetRLKDPPoller::acquireInterface(AppleEthernetRLKDPPoller *this, AppleEthernetRL *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  *(this + 2) = a2;
  (*(*a2 + 32))(a2);
  return 0;
}

uint64_t AppleEthernetRLKDPPoller::releaseInterface(AppleEthernetRLKDPPoller *this, AppleEthernetRL *a2)
{
  result = 3758097090;
  if (a2)
  {
    v4 = *(this + 2);
    if (v4 == a2)
    {
      (*(*v4 + 40))(*(this + 2));
      result = 0;
      *(this + 2) = 0;
    }

    else
    {
      return 3758097109;
    }
  }

  return result;
}

uint64_t AppleEthernetRL::initializePowerStateHandling(IOService *this)
{
  (this->PMinit)(this);
  (*(**&this[4].retainCount + 200))();
  result = (this->registerPowerDriver)(this, this, &kPowerStateArray, 3);
  if (!result)
  {
    (*(**&this[4].retainCount + 1168))(*&this[4].retainCount, this);

    return IOService::makeUsable(this);
  }

  return result;
}

uint64_t AppleEthernetRL::initializeNicProxy(uint64_t a1, unsigned __int8 *a2)
{
  v4 = IOMallocData();
  *(a1 + 1400) = v4;
  if (!v4)
  {
    return 3758097085;
  }

  v5 = *a2;
  v6 = a2[2];
  v7 = a2[4];
  v8 = a2[6];
  v9 = *(a2 + 5);
  v10 = *(a2 + 4);
  v11 = v8 | (v9 << 16) | (v10 << 48);
  if (*(a1 + 600))
  {
    IOLog("[0x%llx] rl::%s(%d): limits : IPv4 %d, IPv6 %d, UDP %d, TCP %d, rr %d, rrBuf %d\n", *(a1 + 608), "initializeNicProxy", 86, v5, v6, v7, v8, v9, v10);
  }

  v12 = *(*a1 + 1768);

  return v12(a1, (v7 << 48) | (v6 >> 1 << 32) | ((v5 >> 1) << 16) | (v6 << 8) | v5, v11 | 0x40A00000000);
}

uint64_t AppleEthernetRL::programNicProxyGetWakeMode(AppleEthernetRLIPC **this, unsigned int *a2)
{
  *v4 = 5308416;
  result = AppleEthernetRLIPC::readWriteKR4(this[172], v4, 8u, v4, 8u);
  if (!result)
  {
    *a2 = *&v4[4];
  }

  return result;
}

double AppleEthernetRL::programNicProxyGetMdnsCapabilities(uint64_t a1, _OWORD *a2)
{
  *v4 = 5505024;
  *v5 = 0;
  v6 = 0uLL;
  if (!AppleEthernetRLIPC::readWriteKR4(*(a1 + 1376), v4, 8u, v5, 0x18u))
  {
    result = *&v6;
    *a2 = v6;
  }

  return result;
}

uint64_t AppleEthernetRL::programNicProxyGetWakeCondition(AppleEthernetRL *this)
{
  *v4 = 5373952;
  v1 = *(this + 175);
  if (!v1)
  {
    return 3758097112;
  }

  result = AppleEthernetRLIPC::readWriteKR4(*(this + 172), v4, 8u, v1, 0x808u);
  if (!result)
  {
    AppleEthernetRL::decodeWakeCondition(this, *(this + 175), 0x808u);
    return 0;
  }

  return result;
}

void AppleEthernetRL::decodeWakeCondition(AppleEthernetRL *this, unsigned __int16 *a2, unsigned int a3)
{
  if (a3 >= 8)
  {
    v6 = a2[2];
    v7 = __clz(__rbit32(a2[2] | 0x20));
    if (a2[2])
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = 0;
    }

    v9 = AppleEthernetRL::getWakeConditionFlagString::kNames[v8];
    v10 = ((v6 >> 8) & 0x7F) - 1;
    if (v10 >= 5)
    {
      v10 = 5;
    }

    IOLog("[0x%llx] rl::%s(%d): flags 0x%x : flag %s, mDNS %s, payloadLen %d\n", *(this + 76), "decodeWakeCondition", 598, v6, v9, AppleEthernetRL::getWakeConditionMdnsString::kNames[v10], *a2);
    if (*a2)
    {
      if (a3 - 8 >= *a2)
      {
        *(this + 1408) = 1;
      }
    }
  }
}

void AppleEthernetRL::publishWakePacket(AppleEthernetRL *this)
{
  if (*(this + 1408))
  {
    explicit = atomic_load_explicit(this + 187, memory_order_acquire);
    v3 = *(this + 188);
    if (v3 == explicit)
    {
      if ((*(this + 600) & 2) != 0)
      {
        IOLog("[0x%llx] rl::%s(%d): no space for PTP copy\n", *(this + 76), "publishWakePacket", 649);
      }
    }

    else
    {
      v4 = *(this + 91);
      v5 = (v4 + 8 * v3);
      if (8 * v3 != 8 * v3)
      {
        v5 = ((v4 + 8 * v3) & 0xFFFFFFFFFFFFLL | 0x2BAD000000000000);
      }

      v6 = *v5;
      v13 = 0;
      v7 = *(this + 175);
      (*(*v6 + 128))(v6, &v13, 1);
      v8 = (*(*v6 + 176))(v6);
      MemorySegmentOffset = IOSkywalkPacketBuffer::getMemorySegmentOffset(v13);
      MemorySegment = IOSkywalkPacketBuffer::getMemorySegment(v13);
      VirtualAddress = IOSkywalkMemorySegment::getVirtualAddress(MemorySegment);
      v12 = *v7;
      memmove((MemorySegmentOffset + v8 + VirtualAddress), v7 + 4, v12);
      (*(*v6 + 152))(v6, v12);
      IOSkywalkNetworkPacket::setLinkHeaderLength(v6, 0xEu);
      IOSkywalkNetworkPacket::setVlanTag(v6, 0);
      (*(*v6 + 272))(v6);
      atomic_store((v3 + 1), this + 188);
      (*(**(this + 96) + 352))();
    }
  }

  *(this + 1408) = 0;
}

OSSet *AppleEthernetRL::initializeIOReporters(AppleEthernetRL *this)
{
  result = OSSet::withCapacity(1u);
  *(this + 188) = result;
  if (result)
  {
    result = IOSimpleReporter::with(this, &unk_8000, 0, v3);
    *(this + 187) = result;
    if (result)
    {
      v4 = 0;
      v5 = 0x5061726974793030;
      do
      {
        IOReporter::addChannel(*(this + 187), v5++, kParityErrorNames[v4++]);
      }

      while (v4 != 7);
      v6 = *(this + 187);
      v7 = (*(**(this + 69) + 488))(*(this + 69), 0);
      IOReportLegend::addReporterLegend(this, v6, v7, "Realtek Parity Interrupts", v8);
      (*(**(this + 188) + 240))();
      return (&dword_0 + 1);
    }
  }

  return result;
}