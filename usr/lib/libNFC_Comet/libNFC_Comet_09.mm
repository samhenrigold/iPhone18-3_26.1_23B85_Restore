uint64_t sub_297ECBC20(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetTagTypeInit");
  if (a1)
  {
    *(a1 + 2832) = 0;
    v2 = sub_297ED041C(a1, *(a1 + 2824), a1 + 2760, 0);
    if (v2 == 13)
    {
      v2 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), a1 + 2760, sub_297E5BA84, a1);
    }
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetTagTypeInit");
  return v2;
}

uint64_t sub_297ECBCD4(uint64_t a1, int a2, unint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetTagTypeResp");
  v6 = 255;
  if (a1 && !a2 && a3)
  {
    v7 = sub_297ED041C(a1, *(a1 + 2824), a1 + 2760, a3);
    if (**(a1 + 2824) == 5)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetTagTypeResp");
  return v6;
}

uint64_t sub_297ECBD74(uint64_t a1)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  memset(v10, 0, sizeof(v10));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetTagTypeMoreInfo");
  if (!a1)
  {
    goto LABEL_4;
  }

  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *(a1 + 1504) = 0;
    *(a1 + 1512) = 0;
LABEL_4:
    v2 = 1;
    goto LABEL_28;
  }

  v3 = *(a1 + 1504);
  phOsalNfc_SetMemory();
  v4 = (a1 + 1534);
  phOsalNfc_SetMemory();
  v2 = 0;
  *&v12 = a1 + 2064;
  DWORD2(v12) = 530;
  v5 = **(a1 + 2824);
  if (v5 > 18)
  {
    if (v5 > 22)
    {
      if (v5 != 23)
      {
        if (v5 == 55)
        {
          *v4 = 24720;
          *(a1 + 1538) = 0;
          LODWORD(v10[0]) = 0;
          *&v11 = a1 + 1534;
          DWORD2(v11) = 5;
          goto LABEL_27;
        }

        if (v5 != 26)
        {
          goto LABEL_28;
        }

        goto LABEL_15;
      }

      goto LABEL_24;
    }

    if (v5 != 19)
    {
      if (v5 != 22)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

LABEL_23:
    v8 = 32680;
LABEL_25:
    *(a1 + 1534) = v8;
    *(a1 + 1536) = 0;
    LODWORD(v10[0]) = 0;
    *&v11 = a1 + 1534;
    DWORD2(v11) = 19;
    v7 = 1;
    goto LABEL_26;
  }

  if (v5 > 13)
  {
    if (v5 != 14)
    {
      if (v5 != 15)
      {
        if (v5 != 18)
        {
          goto LABEL_28;
        }

LABEL_15:
        v6 = 20991856;
LABEL_22:
        *v4 = v6;
        *(a1 + 1538) = 0;
        LODWORD(v10[0]) = 0;
        *&v11 = a1 + 1534;
        DWORD2(v11) = 5;
        v7 = 4;
LABEL_26:
        *(a1 + 2832) = v7;
LABEL_27:
        sub_297ECE3AC(a1, *(v3 + 4), v10, a1 + 2760);
        v2 = sub_297F06F3C(*(a1 + 3088), v3, a1 + 2760, sub_297E5BA84, a1);
        goto LABEL_28;
      }

LABEL_24:
      v8 = -88;
      goto LABEL_25;
    }

LABEL_21:
    v6 = 20987760;
    goto LABEL_22;
  }

  if (v5 != 5)
  {
    if (v5 != 11)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  *(a1 + 1534) = 26;
  LODWORD(v10[0]) = 0;
  *&v11 = a1 + 1534;
  DWORD2(v11) = 2;
  sub_297ECE3AC(a1, *(v3 + 4), v10, a1 + 2760);
  v2 = sub_297F06F3C(*(a1 + 3088), v3, a1 + 2760, sub_297E5BA84, a1);
  if (v2 == 13)
  {
    *(a1 + 2834) = 1;
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetTagTypeMoreInfo");
  return v2;
}

uint64_t sub_297ECC000(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetTagTypeMoreInfoResp");
  if (!a1)
  {
    goto LABEL_18;
  }

  if (a2 || !a3 || (v6 = *a3) == 0)
  {
    **(a1 + 2824) = 56;
LABEL_18:
    v11 = 255;
    goto LABEL_19;
  }

  v7 = *(a3 + 8);
  if (!v7)
  {
    v9 = *(a1 + 2824);
    LODWORD(v10) = *v9;
    if (*v9 == 55)
    {
      goto LABEL_39;
    }

LABEL_27:
    if (v10 > 22)
    {
      if (v10 == 23)
      {
        v15 = 19;
      }

      else
      {
        if (v10 != 26)
        {
          goto LABEL_34;
        }

        v15 = 22;
      }
    }

    else if (v10 == 15)
    {
      v15 = 11;
    }

    else
    {
      if (v10 != 18)
      {
        goto LABEL_34;
      }

      v15 = 14;
    }

    *v9 = v15;
    sub_297E79810(a1, *(a1 + 2960), 1u);
    goto LABEL_39;
  }

  v8 = *v6;
  v9 = *(a1 + 2824);
  v10 = *v9;
  if (v8 != 144)
  {
    if (v10 == 55)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  if (v10 > 0x37)
  {
    goto LABEL_23;
  }

  if (((1 << v10) & 0x4CCC800) != 0)
  {
    goto LABEL_39;
  }

  if (v10 != 55)
  {
LABEL_23:
    if (v7 >= 8 && v8 == 175 && v10 == 5)
    {
      v11 = 0;
      v13 = 7;
      goto LABEL_35;
    }

    goto LABEL_27;
  }

LABEL_10:
  if (v7 < 9)
  {
    goto LABEL_39;
  }

  v11 = 0;
  if (v8 == 4 && v6[8] == 175)
  {
    v12 = v6[1];
    if (v12 != 4)
    {
      if (v12 == 8 && v6[5] == 19)
      {
        v11 = 0;
        v13 = 54;
LABEL_35:
        *v9 = v13;
        goto LABEL_19;
      }

LABEL_39:
      v11 = 0;
      goto LABEL_19;
    }

LABEL_34:
    v11 = 0;
    v13 = 56;
    goto LABEL_35;
  }

LABEL_19:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetTagTypeMoreInfoResp");
  return v11;
}

uint64_t sub_297ECC1D0(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  *v13 = xmmword_297F1363B;
  *&v13[15] = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_CheckMfpEVxSl");
  if (!a1)
  {
    goto LABEL_4;
  }

  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *(a1 + 1504) = 0;
    *(a1 + 1512) = 0;
LABEL_4:
    v2 = 1;
    goto LABEL_10;
  }

  v3 = *(a1 + 1504);
  phOsalNfc_SetMemory();
  phOsalNfc_SetMemory();
  *&v11 = a1 + 2064;
  DWORD2(v11) = 530;
  v4 = **(a1 + 2824);
  v5 = v4 > 0x1A;
  v6 = (1 << v4) & 0x4CCC800;
  if (v5 || v6 == 0)
  {
    v2 = 0;
  }

  else
  {
    phOsalNfc_MemCopy();
    LODWORD(v9[0]) = 0;
    *&v10 = a1 + 1534;
    DWORD2(v10) = 19;
    sub_297ECE3AC(a1, *(v3 + 4), v9, a1 + 2760);
    v2 = sub_297F06F3C(*(a1 + 3088), v3, a1 + 2760, sub_297E5BA84, a1);
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CheckMfpEVxSl");
  return v2;
}

uint64_t sub_297ECC380(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_CheckMfpEVxSlResp");
  if (a1)
  {
    if (!a2 && a3)
    {
      if (*a3 && *(a1 + 2824) && *(a3 + 2))
      {
        v6 = **a3;
        if (v6 == 144)
        {
          v7 = 1;
          goto LABEL_14;
        }

        if (v6 == 11)
        {
          v7 = 4;
LABEL_14:
          a2 = 0;
          *(a1 + 2832) = v7;
          goto LABEL_12;
        }
      }

      a2 = 0;
    }
  }

  else
  {
    a2 = 255;
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CheckMfpEVxSlResp");
  return a2;
}

uint64_t sub_297ECC448(uint64_t a1)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_CheckTagTypeMfpEV1");
  if (!a1)
  {
    goto LABEL_4;
  }

  if (!sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    v3 = *(a1 + 1504);
    v4 = *(v3 + 96);
    phOsalNfc_SetMemory();
    phOsalNfc_SetMemory();
    v2 = 0;
    *&v9 = a1 + 2064;
    DWORD2(v9) = 530;
    v5 = **(a1 + 2824);
    if (v5 > 0x1B)
    {
      goto LABEL_11;
    }

    if (((1 << v5) & 0x4CCC800) != 0)
    {
      goto LABEL_7;
    }

    if (((1 << v5) & 0x1111000) == 0)
    {
      if (v5 != 27)
      {
        goto LABEL_11;
      }

      if ((v4 & 0x20) != 0)
      {
LABEL_7:
        *(a1 + 1534) = 96;
        LODWORD(v7[0]) = 0;
        *&v8 = a1 + 1534;
        DWORD2(v8) = 1;
LABEL_10:
        sub_297ECE3AC(a1, *(v3 + 4), v7, a1 + 2760);
        v2 = sub_297F06F3C(*(a1 + 3088), v3, a1 + 2760, sub_297E5BA84, a1);
        goto LABEL_11;
      }

      if ((v4 & 8) == 0)
      {
        v2 = 0;
        goto LABEL_11;
      }
    }

    *(a1 + 1534) = 24578;
    LODWORD(v7[0]) = 0;
    *&v8 = a1 + 1534;
    DWORD2(v8) = 2;
    *(a1 + 2832) = 2;
    goto LABEL_10;
  }

  *(a1 + 1504) = 0;
  *(a1 + 1512) = 0;
LABEL_4:
  v2 = 1;
LABEL_11:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CheckTagTypeMfpEV1");
  return v2;
}

uint64_t sub_297ECC5F8(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_CheckTagTypeMfpEV1Resp");
  if (a1)
  {
    if (!a2 && a3)
    {
      v6 = *a3;
      if (*a3)
      {
        v7 = *(a1 + 2824);
        if (v7)
        {
          v8 = *(a1 + 2832);
          if (v8 == 4)
          {
            if (*(a3 + 2) >= 8u && *v6 == 175 && v6[1] == 4)
            {
              v11 = v6[2];
              if ((v11 | 0x80) == 0x82)
              {
                if ((v6[4] & 0xF) == 1 && v6[6] == 22)
                {
                  v10 = 30;
                  goto LABEL_67;
                }

                if ((v11 | 0x80) == 0x82)
                {
                  if ((v6[4] & 0xF) == 1 && v6[6] == 24)
                  {
                    v10 = 33;
                    goto LABEL_67;
                  }

                  if ((v11 | 0x80) == 0x82)
                  {
                    if ((v6[4] & 0xF) == 2 && v6[6] == 22)
                    {
                      v10 = 36;
                      goto LABEL_67;
                    }

                    if ((v11 | 0x80) == 0x82 && (v6[4] & 0xF) == 2 && v6[6] == 24)
                    {
                      v10 = 39;
                      goto LABEL_67;
                    }
                  }
                }
              }
            }
          }

          else if (v8 == 2)
          {
            if (*(a3 + 2) >= 9u && v6[1] == 175 && v6[2] == 4)
            {
              if ((v6[3] | 0x80) == 0x82 && (v6[5] & 0xF) == 1 && v6[7] == 22)
              {
                v10 = 29;
                goto LABEL_67;
              }

              if ((v6[3] | 0x80) == 0x82 && (v6[5] & 0xF) == 1 && v6[7] == 24)
              {
                v10 = 32;
                goto LABEL_67;
              }

              if ((v6[3] | 0x80) == 0x82 && (v6[5] & 0xF) == 2 && v6[7] == 22)
              {
                v10 = 35;
                goto LABEL_67;
              }

              if ((v6[3] | 0x80) == 0x82 && (v6[5] & 0xF) == 2 && v6[7] == 24)
              {
                v10 = 38;
                goto LABEL_67;
              }
            }
          }

          else if (v8 == 1 && *(a3 + 2) >= 8u && *v6 == 175 && v6[1] == 4)
          {
            v9 = v6[2];
            if ((v9 | 0x80) == 0x82)
            {
              if ((v6[4] & 0xF) == 1 && v6[6] == 22)
              {
                v10 = 28;
LABEL_67:
                a2 = 0;
                *v7 = v10;
                goto LABEL_69;
              }

              if ((v9 | 0x80) == 0x82)
              {
                if ((v6[4] & 0xF) == 1 && v6[6] == 24)
                {
                  v10 = 31;
                  goto LABEL_67;
                }

                if ((v9 | 0x80) == 0x82)
                {
                  if ((v6[4] & 0xF) == 2 && v6[6] == 22)
                  {
                    v10 = 34;
                    goto LABEL_67;
                  }

                  if ((v9 | 0x80) == 0x82 && (v6[4] & 0xF) == 2 && v6[6] == 24)
                  {
                    v10 = 37;
                    goto LABEL_67;
                  }
                }
              }
            }
          }
        }
      }

      a2 = 0;
    }
  }

  else
  {
    a2 = 255;
  }

LABEL_69:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CheckTagTypeMfpEV1Resp");
  return a2;
}

uint64_t sub_297ECC974(uint64_t a1)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_DeselectCmdMfpSL1");
  if (!a1)
  {
    goto LABEL_4;
  }

  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *(a1 + 1504) = 0;
    *(a1 + 1512) = 0;
LABEL_4:
    v2 = 1;
    goto LABEL_9;
  }

  v3 = *(a1 + 1504);
  v4 = *(v3 + 96);
  phOsalNfc_SetMemory();
  phOsalNfc_SetMemory();
  *&v9 = a1 + 2064;
  DWORD2(v9) = 530;
  v5 = **(a1 + 2824);
  if (v5 <= 0x20 && (((1 << v5) & 0x121111000) != 0 || v5 == 27 && (v4 & 8) != 0))
  {
    *(a1 + 1534) = -62;
    LODWORD(v7[0]) = 0;
    *&v8 = a1 + 1534;
    DWORD2(v8) = 1;
  }

  else
  {
    if (*(a1 + 2833) != 1 || (v5 | 2) != 3)
    {
      v2 = 0;
      goto LABEL_9;
    }

    *(a1 + 1534) = -62;
    LODWORD(v7[0]) = 0;
    *&v8 = a1 + 1534;
    DWORD2(v8) = 1;
  }

  sub_297ECE3AC(a1, *(v3 + 4), v7, a1 + 2760);
  v2 = sub_297F06F3C(*(a1 + 3088), v3, a1 + 2760, sub_297E5BA84, a1);
LABEL_9:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DeselectCmdMfpSL1");
  return v2;
}

uint64_t sub_297ECCB24(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_DeselectCmdMfpSL1Resp");
  if (a1)
  {
    if (!a2 && a3)
    {
      if (*a3 && *(a1 + 2824) && a3[2] && *(*a3 + 1) == 194)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_DeselectCmdMfpSL1Resp : Deselect Cmd succeeded");
      }

      a2 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_DeselectCmdMfpSL1Resp : Invalid Libnfc Context");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DeselectCmdMfpSL1Resp");
  return a2;
}

uint64_t sub_297ECCC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetTagTypeSeqComplete");
  if (a1)
  {
    v6 = *(a1 + 2824);
    v7 = *v6;
    if (a2 == 44 && v7 == 5)
    {
      *(a1 + 2960) = &qword_2A1A92A40;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v8 = qword_2A1A92A40;
      if (qword_2A1A92A40)
      {
        v8 = 0;
        v9 = off_2A1A92A50;
        do
        {
          ++v8;
          v10 = *v9;
          v9 += 2;
        }

        while (v10);
      }

      *(a1 + 2953) = v8;
      LODWORD(a2) = sub_297E5588C(a1, 0, a3);
      if (a2 == 13)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_GetTagTypeSeqComplete ; Success");
        a2 = 0;
        goto LABEL_37;
      }
    }

    else
    {
      if (a2 == 150 && v7 == 5)
      {
        goto LABEL_22;
      }

      if (a2 == 44 && v7 == 40)
      {
        *v6 = 55;
        goto LABEL_22;
      }

      if (*(a1 + 2833) == 1 && (v7 | 2) == 3)
      {
        *(a1 + 2833) = 0;
        goto LABEL_22;
      }
    }

    if (a2)
    {
      sub_297E50EBC(1, a1 + 9792, 4, 1u, "phLibNfc_GetTagTypeSeqComplete : Failed with Status code");
      if (a2 == 10)
      {
        v11 = sub_297F0A90C(*(a1 + 3088));
        if (v11 <= 1)
        {
          v12 = 10;
        }

        else
        {
          v12 = v11;
        }
      }

      else if ((a2 & 0xFFFFFFFD) == 0xB5 || (a2 & 0xFFFFFFFB) == 178 || (a2 & 0xFFFE) == 184 || a2 == 143)
      {
        v12 = a2;
      }

      else
      {
        v12 = 255;
      }

      **(a1 + 2824) = 56;
      v13 = 119;
      goto LABEL_36;
    }

LABEL_22:
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_GetTagTypeSeqComplete ; Success");
    v12 = 0;
    v13 = 118;
LABEL_36:
    a2 = sub_297E4F450(*(a1 + 9784), v13, v12, 0, 0);
  }

LABEL_37:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetTagTypeSeqComplete");
  return a2;
}

uint64_t sub_297ECCE24(uint64_t a1)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  memset(v5, 0, sizeof(v5));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetMfUlcReadPage");
  if (!a1)
  {
    goto LABEL_4;
  }

  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *(a1 + 1504) = 0;
    *(a1 + 1512) = 0;
LABEL_4:
    v2 = 255;
    goto LABEL_5;
  }

  v4 = *(a1 + 1504);
  phOsalNfc_SetMemory();
  phOsalNfc_SetMemory();
  v2 = 0;
  *&v7 = a1 + 2064;
  DWORD2(v7) = 530;
  if (**(a1 + 2824) == 7)
  {
    *(a1 + 1534) = 560;
    LODWORD(v5[0]) = 0;
    *&v6 = a1 + 1534;
    DWORD2(v6) = 2;
    sub_297ECE3AC(a1, *(v4 + 4), v5, a1 + 2760);
    v2 = sub_297F06F3C(*(a1 + 3088), v4, a1 + 2760, sub_297E5BA84, a1);
  }

LABEL_5:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetMfUlcReadPage");
  return v2;
}

uint64_t sub_297ECCF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetMfUlcReadPageResp");
  if (a1 && (v6 = *(a1 + 2824)) != 0)
  {
    *v6 = 7;
    if (!a2 && a3)
    {
      v7 = *a3;
      if (*a3 && *(a3 + 8) == 16 && !v7[16] && v7[2] == 9 && v7[4] == 225 && v7[5] >= 0x10u && v7[6] == 18 && !v7[7])
      {
        a2 = 0;
        *v6 = 8;
      }

      else
      {
        a2 = 0;
      }
    }
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetMfUlcReadPageResp");
  return a2;
}

uint64_t sub_297ECD06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MifareULTagTypeSeqComplete");
  if (a1)
  {
    if (a2 == 44 && **(a1 + 2824) == 5)
    {
      if (*(a1 + 2834) != 1)
      {
        LODWORD(a2) = 44;
        goto LABEL_16;
      }

      *(a1 + 2960) = &qword_2A1A92AB0;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v6 = qword_2A1A92AB0;
      if (qword_2A1A92AB0)
      {
        v6 = 0;
        v7 = off_2A1A92AC0;
        do
        {
          ++v6;
          v8 = *v7;
          v7 += 2;
        }

        while (v8);
      }

      *(a1 + 2953) = v6;
      a2 = sub_297E5588C(a1, 0, a3);
      if (a2 == 13)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_MifareULTagTypeSeqComplete ; Success");
        a2 = 0;
        *(a1 + 2834) = 0;
        goto LABEL_28;
      }
    }

    if (!a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_MifareULTagTypeSeqComplete ; Success");
      v12 = 118;
      goto LABEL_27;
    }

    if (a2 == 10)
    {
      v9 = sub_297F0A90C(*(a1 + 3088));
      if (v9 <= 1)
      {
        a2 = 10;
      }

      else
      {
        a2 = v9;
      }

LABEL_25:
      sub_297E50EBC(1, a1 + 9792, 4, 1u, "phLibNfc_MifareULTagTypeSeqComplete : Failed with Status code");
      **(a1 + 2824) = 56;
      v12 = 119;
LABEL_27:
      *(a1 + 2834) = 0;
      a2 = sub_297E4F450(*(a1 + 9784), v12, a2, 0, 0);
      goto LABEL_28;
    }

LABEL_16:
    if ((a2 - 186) >= 0xFFFBu || a2 == 178 || a2 == 121)
    {
      a2 = a2;
    }

    else
    {
      a2 = 255;
    }

    goto LABEL_25;
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MifareULTagTypeSeqComplete");
  return a2;
}

uint64_t sub_297ECD24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v23 = 1;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_297E4E1B4(0, &v24, 4, 5u, "phLibNfc_RemoteDev_InternalConnect");
  v7 = sub_297E4F050(v24, &v20);
  v8 = v20;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v20 == 0;
  }

  if (v9)
  {
    goto LABEL_13;
  }

  if (!a2 || !a3)
  {
    v7 = 1;
    sub_297E4E0B0(0, &v24, 4, 1u, "Invalid input Parameter");
    goto LABEL_13;
  }

  *(v20 + 1488) = 1;
  v22 = a2;
  if (sub_297ECD484(v8, &v22, &v21, 1))
  {
    v10 = "Mapping of LibNfc RemoteDev Handle to NCI RemoteDev Handle Failed";
    v11 = v20 + 9792;
LABEL_12:
    sub_297E4E0B0(1, v11, 4, 1u, v10);
    v7 = 149;
    goto LABEL_13;
  }

  if (sub_297E8E7EC(v20, v21))
  {
    v10 = "Validation of NCI RemoteDev Handle Failed";
    v11 = v20 + 9792;
    goto LABEL_12;
  }

  v13 = *(v20 + 1504);
  if (v21 != v13)
  {
    if (!v21 || v13)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (!v21)
  {
LABEL_24:
    sub_297E4E0B0(1, v20 + 9792, 4, 1u, "Connected Handle is not same as passed handle");
    v7 = 255;
    goto LABEL_13;
  }

  if (*(v20 + 1512) != v21)
  {
LABEL_20:
    v14 = v21[4];
    if (v14 > 127)
    {
      if (v14 == 128 || v14 == 129)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v14 == 4)
      {
        v14 = 2;
        goto LABEL_29;
      }

      if (v14 == 5)
      {
        v14 = 3;
LABEL_29:
        v23 = v14;
        v15 = sub_297EE5FD4(v21, (v20 + 760), (v20 + 761));
        v17 = v20;
        v16 = v21;
        *(v20 + 1504) = v21;
        if (v15)
        {
          v7 = 1;
          goto LABEL_13;
        }

        v18 = sub_297ECD6F0(v22, v16, &v23, v17);
        goto LABEL_33;
      }
    }

    v14 = 1;
    goto LABEL_29;
  }

  v18 = sub_297ECD57C(v20, v22, v21);
LABEL_33:
  v7 = v18;
  if (v18 == 13)
  {
    v19 = v20;
    *(v20 + 6200) = a3;
    *(v19 + 6208) = a4;
  }

LABEL_13:
  sub_297E4DFAC(0, &v24, 4, 5u, "phLibNfc_RemoteDev_InternalConnect");
  return v7;
}

uint64_t sub_297ECD484(uint64_t a1, void *a2, void *a3, int a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MapRemoteDevHandle");
  v8 = 255;
  if (a1 && a2 && a3)
  {
    v9 = *(a1 + 762);
    if (a4 == 1)
    {
      if (*(a1 + 762))
      {
        v10 = (a1 + 1248);
        while (*(v10 - 1) != *a2)
        {
          v10 += 2;
          if (!--v9)
          {
            goto LABEL_14;
          }
        }

        a2 = a3;
LABEL_16:
        v8 = 0;
        *a2 = *v10;
        goto LABEL_17;
      }
    }

    else if (*(a1 + 762))
    {
      v10 = (a1 + 1240);
      while (v10[1] != *a3)
      {
        v10 += 2;
        if (!--v9)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_16;
    }

LABEL_14:
    v8 = 149;
  }

LABEL_17:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MapRemoteDevHandle");
  return v8;
}

uint64_t sub_297ECD57C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = 1;
  v12 = 1;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RfConnect_Twice");
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_20;
  }

  v7 = a3[4];
  if (v7 > 127)
  {
    if (v7 == 128)
    {
      LODWORD(v6) = 128;
      goto LABEL_15;
    }

    if (v7 == 129)
    {
      LODWORD(v6) = 129;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v7 == 4)
  {
    LODWORD(v6) = 2;
    v12 = 2;
    goto LABEL_18;
  }

  if (v7 != 5)
  {
LABEL_11:
    v12 = 1;
    if (v7 != 2)
    {
      goto LABEL_16;
    }

LABEL_18:
    v8 = sub_297ECEC94(a1, a3, v6);
LABEL_19:
    v6 = v8;
    goto LABEL_20;
  }

  LODWORD(v6) = 3;
LABEL_15:
  v12 = v6;
LABEL_16:
  if (!sub_297EE0544(a1, a3) || a3[1] == 25)
  {
    goto LABEL_18;
  }

  v10 = a3[4];
  v6 = 255;
  if (v10 <= 6 && ((1 << v10) & 0x4A) != 0)
  {
    v11 = sub_297EE5FD4(a3, (a1 + 760), (a1 + 761));
    *(a1 + 1504) = a3;
    if (v11)
    {
      v6 = 1;
      goto LABEL_20;
    }

    v8 = sub_297ECD6F0(a2, a3, &v12, a1);
    goto LABEL_19;
  }

LABEL_20:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RfConnect_Twice");
  return v6;
}

uint64_t sub_297ECD6F0(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  sub_297E4E1B4(2, a4, 4, 5u, "phLibNfc_PrepareConnect");
  v8 = 1;
  if (a3 && a2 && a1 && a4)
  {
    if (*a2 == 1)
    {
      if (sub_297E56FC8(*(a4 + 9784)) == 5 && **(a4 + 856) == 1 && !*(a4 + 2933))
      {
        sub_297ECE0E4(a4, 0, a2);
        v8 = 0;
        goto LABEL_42;
      }

      v9 = *(a2 + 16);
      if (v9 != 3)
      {
        if (v9 == 138)
        {
          if (!*(a4 + 2933))
          {
            sub_297E4E0B0(1, a4 + 9792, 4, 2u, "Starting timer for phLibNfc_RemoteDev_ConnectTimer_Cb");
            sub_297EFD338(*(a4 + 9792), *(a4 + 1496));
            if (phOsalNfc_Timer_Start())
            {
LABEL_28:
              v8 = 255;
              goto LABEL_42;
            }

            v10 = *(a4 + 1496);
            v11 = a4 + 9792;
LABEL_30:
            sub_297E687D8(1, v11, v10, 4, 4u, "phLibNfc_PrepareConnect");
            v8 = 13;
            goto LABEL_42;
          }
        }

        else if (v9 == 4 && !*(a4 + 2933))
        {
          if (sub_297F08B18(*(a4 + 3088), sub_297EC2A2C, a4) == 13)
          {
            v8 = 13;
          }

          else
          {
            v8 = 255;
          }

          goto LABEL_42;
        }

        goto LABEL_24;
      }

      if (*(a4 + 2933))
      {
LABEL_24:
        if (*(a2 + 4) != 23 && sub_297EE0544(a4, a2) && !*(a4 + 2933))
        {
          v8 = sub_297ECDB00(a4, a1, a2);
          goto LABEL_42;
        }

        goto LABEL_27;
      }

      *(a4 + 2960) = &qword_2A1A92900;
      *(a4 + 2952) = 0;
      *(a4 + 2954) = 0;
      v12 = qword_2A1A92900;
      if (qword_2A1A92900)
      {
        v12 = 0;
        v13 = &qword_2A1A92910;
        do
        {
          ++v12;
          v14 = *v13;
          v13 += 2;
        }

        while (v14);
      }

      *(a4 + 2953) = v12;
      v15 = sub_297E5588C(a4, 0, 0);
      if (v15 == 143 || v15 == 13)
      {
        v8 = v15;
      }

      else
      {
        v8 = 255;
      }
    }

    else
    {
      if (*(a4 + 2933) && *(a4 + 762) == 1)
      {
LABEL_27:
        sub_297EFD338(*(a4 + 9792), *(a4 + 1496));
        if (phOsalNfc_Timer_Start())
        {
          goto LABEL_28;
        }

        v10 = *(a4 + 1496);
        v11 = a4 + 9792;
        goto LABEL_30;
      }

      v8 = sub_297F065F8(*(a4 + 3088), a2, *a3, sub_297ECE0E4, a4);
      if (v8 == 13)
      {
        *(a4 + 9776) = 1;
      }
    }
  }

LABEL_42:
  sub_297E4DFAC(2, a4, 4, 5u, "phLibNfc_PrepareConnect");
  return v8;
}

uint64_t sub_297ECDA20(uint64_t a1, uint64_t a2)
{
  sub_297E687D8(2, a2, a1, 4, 4u, "phLibNfc_RemoteDev_ConnectTimer_Cb");
  sub_297E4E1B4(2, a2, 4, 5u, "phLibNfc_RemoteDev_ConnectTimer_Cb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 == a2)
  {
    v6 = 0;
  }

  else
  {
LABEL_6:
    v6 = 255;
  }

  sub_297ECE0E4(a2, v6, 0);

  return sub_297E4DFAC(2, a2, 4, 5u, "phLibNfc_RemoteDev_ConnectTimer_Cb");
}

uint64_t sub_297ECDB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_InternalPrepareConnect");
  phOsalNfc_SetMemory();
  v6 = *(a2 + 4);
  v7 = 1;
  if (v6 <= 15)
  {
    if ((v6 - 13) < 3 || v6 == 11)
    {
LABEL_12:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = "phLibNfc_PrepareConnect_ISO14443_4A";
      sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PrepareConnect_ISO14443_4A");
      phOsalNfc_SetMemory();
      LODWORD(v25) = 0;
      *&v28 = &unk_2A13A5CD2;
      DWORD2(v28) = 2;
      v10 = &unk_2A18BDEA0;
LABEL_13:
      *&v27 = v10;
      DWORD2(v27) = 7;
LABEL_27:
      v16 = sub_297ECE3AC(a1, *(a3 + 4), &v25, a1 + 5376);
      v17 = a1;
      v18 = v9;
      goto LABEL_28;
    }

    if (v6 != 12)
    {
      goto LABEL_34;
    }

LABEL_25:
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = "phLibNfc_PrepareConnect_MifareUL";
    sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PrepareConnect_MifareUL");
    phOsalNfc_SetMemory();
    BYTE4(v25) = 2;
    BYTE10(v25) = 1;
    LODWORD(v25) = 48;
    *&v28 = &byte_2A13A5CF9;
    DWORD2(v28) = 19;
    *&v27 = 0;
    DWORD2(v27) = 0;
    goto LABEL_27;
  }

  if (v6 <= 20)
  {
    if (v6 != 16)
    {
      if (v6 == 18)
      {
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = "phLibNfc_PrepareConnect_14443_3B";
        sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PrepareConnect_14443_3B");
        phOsalNfc_SetMemory();
        LODWORD(v25) = 0;
        byte_2A13A5CDC = 29;
        phOsalNfc_MemCopy();
        unk_2A13A5CE1 = 3840;
        phOsalNfc_MemCopy();
        DWORD2(v27) = 13;
        *&v27 = &byte_2A13A5CDC;
        *&v28 = &unk_2A13A5CD4;
        DWORD2(v28) = 2;
        goto LABEL_27;
      }

      if (v6 != 19)
      {
        goto LABEL_34;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

  switch(v6)
  {
    case 21:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PrepareConnect_Felica");
      for (i = 0; i != 8; ++i)
      {
        *(&unk_2A18BDEA0 + i + 16) = *(a3 + 36 + i);
      }

      phOsalNfc_SetMemory();
      LODWORD(v25) = 240;
      *&v28 = &unk_2A13A5D0C;
      DWORD2(v28) = 27;
      *&v27 = &unk_2A18BDEAE;
      DWORD2(v27) = 16;
      v16 = sub_297ECE3AC(a1, *(a3 + 4), &v25, a1 + 5376);
      v18 = "phLibNfc_PrepareConnect_Felica";
      break;
    case 22:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = "phLibNfc_PrepareConnect_Jewel";
      sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PrepareConnect_Jewel");
      phOsalNfc_SetMemory();
      LODWORD(v25) = 0;
      *&v28 = &unk_2A13A5CD6;
      DWORD2(v28) = 6;
      v10 = &unk_2A18BDEA7;
      goto LABEL_13;
    case 23:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PrepareConnect_Iso15693");
      phOsalNfc_SetMemory();
      v11 = 32 * (*(a3 + 44) != 0);
      if (*(a3 + 42) == 2)
      {
        v12 = ((32 * ((*(a3 + 41) & 0xFC) - 44)) | (((*(a3 + 41) & 0xFC) - 44) >> 3));
        if (v12 <= 6 && ((1 << v12) & 0x59) != 0)
        {
          v11 |= 8u;
        }
      }

      v13 = v11 | 2;
      v14 = DWORD2(v27);
      if (DWORD2(v27) <= 0xF)
      {
        v15 = DWORD2(v27) + 1;
        ++DWORD2(v27);
        *(&unk_2A13A5CD2 + v14 + 23) = v13;
        if (v14 == 15)
        {
          LODWORD(v14) = 16;
        }

        else
        {
          LODWORD(v14) = v14 + 2;
          DWORD2(v27) = v14;
          *(&unk_2A13A5CD2 + v15 + 23) = 32;
        }
      }

      if ((v13 & 0x20) != 0)
      {
        phOsalNfc_MemCopy();
        v24 = -8 - DWORD2(v27);
        if (DWORD2(v27) > 0xFFFFFFF8)
        {
          v24 = 0;
        }

        LODWORD(v14) = -v24;
        DWORD2(v27) = v14;
      }

      if (v14 <= 0xF)
      {
        DWORD2(v27) = v14 + 1;
        *(&unk_2A13A5CD2 + v14 + 23) = 0;
        if ((v13 & 8) != 0 && v14 != 15)
        {
          DWORD2(v27) = v14 + 2;
          *(&unk_2A13A5CD2 + v14 + 24) = 0;
        }
      }

      LODWORD(v25) = 0;
      *&v27 = &unk_2A13A5CE9;
      *&v28 = &unk_2A13A5D27;
      DWORD2(v28) = 38;
      v16 = sub_297ECE3AC(a1, *(a3 + 4), &v25, a1 + 5376);
      v18 = "phLibNfc_PrepareConnect_Iso15693";
      break;
    default:
      goto LABEL_34;
  }

  v17 = a1;
LABEL_28:
  sub_297E4DFAC(2, v17, 4, 5u, v18);
  if (v16)
  {
    v7 = 1;
  }

  else
  {
    *(a1 + 5382) = 500;
    *(a1 + 2960) = off_2A1A90C88;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v19 = off_2A1A90C88[0];
    if (off_2A1A90C88[0])
    {
      v19 = 0;
      v20 = &qword_2A1A90C98;
      do
      {
        ++v19;
        v21 = *v20;
        v20 += 2;
      }

      while (v21);
    }

    *(a1 + 2953) = v19;
    v7 = sub_297E5588C(a1, 0, a1 + 5376);
  }

LABEL_34:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_InternalPrepareConnect");
  return v7;
}

uint64_t sub_297ECE0E4(uint64_t a1, uint64_t a2, char *a3)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RemoteDev_Connect_Cb");
  if (a1)
  {
    if (a2 == 121)
    {
      v10 = 123;
      LODWORD(v9) = 1;
    }

    else
    {
      if (a2 != 10)
      {
        if (a2)
        {
          LODWORD(v9) = 0;
          if (a2 == 143)
          {
            a2 = 143;
          }

          else
          {
            a2 = 255;
          }
        }

        else
        {
          v6 = *(a1 + 1512);
          if (!v6)
          {
            *(a1 + 1512) = a3;
            v6 = a3;
          }

          v19 = v6;
          *(a1 + 1504) = v6;
          if (sub_297ECD484(a1, &v18, &v19, 0))
          {
            v7 = "Mapping on NCI RemoteDev Handle to LibNfc RemoteDev Handle Failed";
          }

          else
          {
            if (!sub_297EE50BC(a1, v18, v19))
            {
              LODWORD(v9) = 0;
              a2 = 0;
              *v18 = *v19;
              *(a1 + 1531) = 0;
              v10 = 118;
              goto LABEL_25;
            }

            v7 = "Getting LibNfc RemoteDev Info by using LibNfc RemoteDev Handle Failed";
          }

          sub_297E4E0B0(1, a1 + 9792, 4, 1u, v7);
          LODWORD(v9) = 0;
          a2 = 255;
        }

        goto LABEL_24;
      }

      v8 = (a1 + 1504);
      if (!sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
      {
        v9 = *v8;
        v19 = v9;
        if (v9)
        {
          a2 = 10;
          if (*(v9 + 1) == 20)
          {
            v11 = sub_297F0A90C(*(a1 + 3088));
            LODWORD(v9) = 0;
            if (v11 <= 1)
            {
              a2 = 10;
            }

            else
            {
              a2 = v11;
            }
          }

          else
          {
            LODWORD(v9) = 0;
          }
        }

        else
        {
          a2 = 10;
        }

LABEL_24:
        v10 = 119;
        goto LABEL_25;
      }

      LODWORD(v9) = 0;
      *v8 = 0;
      *(a1 + 1512) = 0;
      a2 = 10;
      v10 = 119;
      v19 = 0;
    }

LABEL_25:
    if (*(a1 + 1488) == 1 && (v12 = *(a1 + 6200)) != 0)
    {
      v13 = *(a1 + 6208);
      *(a1 + 6200) = 0;
      *(a1 + 6208) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Invoking upper layer callback");
      sub_297E4D930(1, a1 + 9792, 4, 15, "phLibNfc_RemoteDev_Connect_Cb");
      v12(*(a1 + 9784), v13, v18, v18, a2);
      if (!a2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v9)
      {
        v14 = &v17;
        v10 = 123;
        v15 = a2;
      }

      else
      {
        v15 = a2;
        v14 = v18;
      }

      if (!sub_297E4F450(*(a1 + 9784), v10, v15, v18, v14))
      {
        goto LABEL_34;
      }
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_RemoteDev_Connect_Cb: Lower layer has returned failure status");
    *(a1 + 1504) = 0;
LABEL_34:
    *(a1 + 9776) = 0;
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RemoteDev_Connect_Cb");
  }

  sub_297E4E0B0(2, 0, 4, 1u, "Lower layer has returned Invalid LibNfc context");
  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RemoteDev_Connect_Cb");
}

uint64_t sub_297ECE3AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MapCmds");
  v8 = 1;
  if (!a1 || !a3 || !a4)
  {
    goto LABEL_113;
  }

  v8 = 0;
  *(a4 + 6) = *(a3 + 6);
  if (a2 <= 15)
  {
    if (a2 > 7)
    {
      if ((a2 - 8) < 7)
      {
        goto LABEL_7;
      }

      goto LABEL_113;
    }

    if ((a2 - 5) >= 3 && a2 != 3)
    {
      if (a2 != 4)
      {
        goto LABEL_113;
      }

LABEL_7:
      v35 = 0;
      sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MifareMap");
      v9 = *a3;
      v8 = 1;
      if (*a3 > 127)
      {
        if (v9 <= 175)
        {
          if ((v9 - 128) >= 2)
          {
            if (v9 == 160)
            {
              if (*(a3 + 32) && *(a3 + 40))
              {
                v10 = a1 + 1534;
                v11 = -96;
                goto LABEL_97;
              }
            }

            else if (v9 == 162 && *(a3 + 32) && *(a3 + 40))
            {
              v10 = a1 + 1534;
              v11 = -94;
LABEL_97:
              *(a1 + 1534) = v11;
              *(a1 + 1535) = *(a3 + 4);
              phOsalNfc_MemCopy();
              *(a4 + 16) = v10;
              v27 = *(a3 + 40);
              v16 = v27 != -1;
              v28 = -2 - v27;
              if (!v16)
              {
                v28 = 0;
              }

              *(a4 + 24) = -v28;
              *a4 = 0;
              *(a4 + 32) = a1 + 2064;
              v26 = 530;
              goto LABEL_105;
            }

LABEL_111:
            v32 = "phLibNfc_MifareMap";
LABEL_112:
            sub_297E4DFAC(2, a1, 4, 5u, v32);
            goto LABEL_113;
          }

          v35 = *(a3 + 4);
          sub_297ECF070(a1, &v35);
          *(a1 + 1534) = *a3;
          v21 = v35;
          *(a1 + 1535) = v35;
          if (*a3 == 129)
          {
            v22 = *(a3 + 5) | 0x80;
          }

          else
          {
            v22 = *(a3 + 5);
          }

          *(a1 + 1536) = v22;
          *(a4 + 16) = a1 + 1534;
          *(a4 + 24) = 3;
          *a4 = 4;
          goto LABEL_70;
        }

        if ((v9 - 192) < 3)
        {
          if (!*(a3 + 32) || !*(a3 + 40))
          {
            goto LABEL_111;
          }

          *(a1 + 1534) = v9;
          *(a1 + 1535) = *(a3 + 4);
          phOsalNfc_MemCopy();
          *(a4 + 16) = a1 + 1534;
          v15 = *(a3 + 40);
          v16 = v15 != -1;
          v17 = -2 - v15;
          if (!v16)
          {
            v17 = 0;
          }

          v18 = -v17;
          goto LABEL_92;
        }

        if (v9 != 176 || !*(a3 + 48) || !*(a3 + 56))
        {
          goto LABEL_111;
        }

        v19 = a1 + 1534;
        v20 = -80;
LABEL_91:
        *(a1 + 1534) = v20;
        *(a1 + 1535) = *(a3 + 4);
        *(a4 + 16) = v19;
        v18 = 2;
LABEL_92:
        *(a4 + 24) = v18;
        *a4 = 0;
        goto LABEL_93;
      }

      if (v9 <= 2)
      {
        if (!v9)
        {
          if (*(a3 + 32) && *(a3 + 40) && *(a3 + 48) && *(a3 + 56))
          {
            *a4 = 0;
            *(a4 + 16) = *(a3 + 32);
            *(a4 + 32) = *(a3 + 48);
            *(a4 + 24) = *(a3 + 40);
            *(a4 + 40) = *(a3 + 56);
            if (!sub_297E55558(*(a1 + 3088), *(a1 + 1504)) && *(*(a1 + 1504) + 4) == 8)
            {
              v25 = *(a3 + 32);
              if (*v25 == 194 && v25[1] == 255)
              {
                *(a1 + 1530) = 3;
              }
            }

            goto LABEL_106;
          }

          goto LABEL_111;
        }

        if (v9 != 1)
        {
          if (v9 != 2 || !*(a3 + 32) || !*(a3 + 40))
          {
            goto LABEL_111;
          }

          *a4 = 1;
          *(a4 + 4) = *(a3 + 4);
          *(a4 + 16) = *(a3 + 32);
          *(a4 + 24) = *(a3 + 40);
          *(a4 + 32) = *(a3 + 48);
          v14 = (a3 + 56);
          goto LABEL_104;
        }

        if (!*(a3 + 48))
        {
          goto LABEL_111;
        }

        v14 = (a3 + 56);
        if (!*(a3 + 56))
        {
          goto LABEL_111;
        }

        v24 = 2;
LABEL_103:
        *a4 = v24;
        *(a4 + 4) = *(a3 + 4);
        *(a4 + 5) = *(a3 + 10);
        *(a4 + 16) = *(a3 + 32);
        *(a4 + 24) = *(a3 + 40);
        *(a4 + 32) = *(a3 + 48);
LABEL_104:
        v26 = *v14;
        goto LABEL_105;
      }

      if ((v9 - 96) >= 2)
      {
        if (v9 != 3)
        {
          if (v9 != 48 || !*(a3 + 48) || !*(a3 + 56))
          {
            goto LABEL_111;
          }

          v19 = a1 + 1534;
          v20 = 48;
          goto LABEL_91;
        }

        if (!*(a3 + 48))
        {
          goto LABEL_111;
        }

        v14 = (a3 + 56);
        if (!*(a3 + 56))
        {
          goto LABEL_111;
        }

        v24 = 3;
        goto LABEL_103;
      }

      if (!*(a3 + 32) || !*(a3 + 40))
      {
        goto LABEL_111;
      }

      sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkT2Ttag");
      v23 = a1 + 1504;
      if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
      {
        *v23 = 0;
        *(a1 + 1512) = 0;
      }

      else if (*(*v23 + 16) == 2 && !*(*v23 + 96))
      {
        sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ChkT2Ttag");
        *(a1 + 1534) = 26;
        *(a4 + 16) = a1 + 1534;
        *(a4 + 24) = 2;
        *(a4 + 32) = *(a3 + 48);
        *(a4 + 40) = *(a3 + 56);
        *a4 = 0;
        goto LABEL_106;
      }

      sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ChkT2Ttag");
      v36 = 0;
      sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkAuthCmdMFC");
      if (*(a3 + 32) && *(a3 + 40))
      {
        if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
        {
          *v23 = 0;
          *(a1 + 1512) = 0;
        }

        else if (*v23 && (*a3 & 0xFFFFFFFE) == 0x60 && *(a3 + 40) == 10)
        {
          phOsalNfc_MemCopy();
          if (!phOsalNfc_MemCompare())
          {
            sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ChkAuthCmdMFC");
            v35 = *(a3 + 4);
            sub_297ECF070(a1, &v35);
            *(a1 + 1534) = *a3;
            *(a1 + 1535) = v35;
            if (*a3 == 97)
            {
              v34 = -112;
            }

            else
            {
              v34 = 16;
            }

            *(a1 + 1536) = v34;
            phOsalNfc_MemCopy();
            *(a4 + 16) = a1 + 1534;
            *(a4 + 24) = 9;
            *a4 = 4;
            v21 = v35;
LABEL_70:
            *(a4 + 4) = v21;
            *(a4 + 5) = *(a3 + 10);
LABEL_93:
            *(a4 + 32) = *(a3 + 48);
            v26 = *(a3 + 56);
LABEL_105:
            *(a4 + 40) = v26;
            goto LABEL_106;
          }

          sub_297EFD338(*(a1 + 9792), *(a1 + 1496));
          if (!phOsalNfc_Timer_Start())
          {
            sub_297E687D8(1, a1 + 9792, *(a1 + 1496), 4, 4u, "phLibNfc_ChkAuthCmdMFC");
          }
        }
      }

      sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ChkAuthCmdMFC");
LABEL_106:
      v29 = 0;
      v30 = 0;
      do
      {
        v31 = *(&unk_2A18BDDC0 + 14 * v30 + 2);
        if (v29)
        {
          break;
        }

        v29 = 1;
        v30 = 1;
      }

      while (v31 != a1);
      v8 = 0;
      if (v31 == a1)
      {
        *(a1 + 1529) = *a4;
      }

      goto LABEL_111;
    }

LABEL_28:
    if (*(a3 + 32) && *(a3 + 40) && *(a3 + 48) && *(a3 + 56) && !*a3)
    {
LABEL_64:
      v8 = 0;
      *a4 = 0;
      goto LABEL_45;
    }

LABEL_65:
    v8 = 1;
    goto LABEL_113;
  }

  if (a2 <= 19)
  {
    if (a2 == 16)
    {
      goto LABEL_28;
    }

    if (a2 == 18)
    {
      if (*(a3 + 32) && *(a3 + 40) && *(a3 + 48) && *(a3 + 56) && *a3 == 240)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    }

    if (a2 != 19)
    {
      goto LABEL_113;
    }

    sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_JewelMap");
    if (*a3)
    {
      if (*a3 == 1 && *(a3 + 32))
      {
        v12 = (a3 + 40);
        v8 = 1;
        if (!*(a3 + 40))
        {
LABEL_121:
          v32 = "phLibNfc_JewelMap";
          goto LABEL_112;
        }

        *a4 = 1;
        *(a4 + 4) = *(a3 + 4);
        *(a4 + 5) = *(a3 + 10);
        *(a4 + 16) = *(a3 + 32);
        v13 = 24;
LABEL_119:
        v8 = 0;
        *(a4 + v13) = *v12;
        *(a4 + 48) = 0;
        goto LABEL_121;
      }
    }

    else if (*(a3 + 32))
    {
      if (*(a3 + 40))
      {
        if (*(a3 + 48))
        {
          v12 = (a3 + 56);
          if (*(a3 + 56))
          {
            *a4 = 0;
            *(a4 + 16) = *(a3 + 32);
            *(a4 + 32) = *(a3 + 48);
            *(a4 + 24) = *(a3 + 40);
            v13 = 40;
            goto LABEL_119;
          }
        }
      }
    }

    v8 = 1;
    goto LABEL_121;
  }

  if (a2 == 20)
  {
    v8 = sub_297E77468(a1, a3, a4);
    goto LABEL_113;
  }

  if (a2 == 23 || a2 == 25)
  {
    v8 = 0;
LABEL_45:
    *(a4 + 16) = *(a3 + 32);
    *(a4 + 32) = *(a3 + 48);
    *(a4 + 24) = *(a3 + 40);
    *(a4 + 40) = *(a3 + 56);
  }

LABEL_113:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MapCmds");
  return v8;
}

uint64_t sub_297ECEC94(uint64_t a1, _DWORD *a2, int a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RemoteDev_ReActivate");
  if (!a1 || !a2)
  {
    v13 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "Invalid input Parameter");
    goto LABEL_24;
  }

  *(a1 + 1520) = 1;
  *(a1 + 1524) = a3;
  v6 = a2[4];
  if (v6 == 2)
  {
    *(a1 + 2960) = &qword_2A1A929B0;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v10 = qword_2A1A929B0;
    if (qword_2A1A929B0)
    {
      v10 = 0;
      v14 = off_2A1A929C0;
      do
      {
        ++v10;
        v15 = *v14;
        v14 += 2;
      }

      while (v15);
    }

    goto LABEL_19;
  }

  if (v6 == 4)
  {
    *(a1 + 2960) = &qword_2A1A92940;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v7 = qword_2A1A92940;
    if (qword_2A1A92940)
    {
      v7 = 0;
      v8 = off_2A1A92950;
      do
      {
        ++v7;
        v9 = *v8;
        v8 += 2;
      }

      while (v9);
    }

    *(a1 + 2953) = v7;
  }

  if (a2[3] == 1 || a2[1] == 25)
  {
    *(a1 + 2960) = &qword_2A1A92970;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v10 = qword_2A1A92970;
    if (qword_2A1A92970)
    {
      v10 = 0;
      v11 = off_2A1A92980;
      do
      {
        ++v10;
        v12 = *v11;
        v11 += 2;
      }

      while (v12);
    }

LABEL_19:
    *(a1 + 2953) = v10;
    goto LABEL_20;
  }

  if (!sub_297EE0544(a1, a2))
  {
    if (*(a1 + 1531) == 1)
    {
      *(a1 + 2960) = &qword_2A1A90CA8;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v10 = qword_2A1A90CA8;
      if (qword_2A1A90CA8)
      {
        v10 = 0;
        v17 = &qword_2A1A90CB8;
        do
        {
          ++v10;
          v18 = *v17;
          v17 += 2;
        }

        while (v18);
      }
    }

    else
    {
      *(a1 + 2960) = &qword_2A1A929B0;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v10 = qword_2A1A929B0;
      if (qword_2A1A929B0)
      {
        v10 = 0;
        v19 = off_2A1A929C0;
        do
        {
          ++v10;
          v20 = *v19;
          v19 += 2;
        }

        while (v20);
      }
    }

    goto LABEL_19;
  }

LABEL_20:
  v13 = sub_297E5588C(a1, 0, 0);
  if (v13 != 13)
  {
    sub_297E50EBC(1, a1 + 9792, 4, 1u, "Reactivate 4A request Failed!! wStatus");
    if (v13 == 143)
    {
      v13 = 143;
    }

    else
    {
      v13 = 255;
    }
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RemoteDev_ReActivate");
  return v13;
}

uint64_t sub_297ECEEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendTranscvCmd");
  if (a1)
  {
    a2 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), a3, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendTranscvCmd");
  return a2;
}

uint64_t sub_297ECEF8C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetTranscvResp");
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetTranscvResp");
  return a2;
}

uint64_t sub_297ECEFF4(uint64_t a1, uint64_t a2, char *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_InvokeNciTranscvComplete");
  sub_297ECE0E4(a1, a2, a3);
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_InvokeNciTranscvComplete");
  return a2;
}

uint64_t sub_297ECF070(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_CalSectorAddress");
  if (a2)
  {
    v4 = *a2;
    v5 = v4;
    v6 = (v4 >> 4) & 7 | 0x20;
    v7 = v4 >> 2;
    if (v5 < 0)
    {
      LOBYTE(v7) = v6;
    }

    *a2 = v7;
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CalSectorAddress");
}

uint64_t sub_297ECF0FC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_IsoDepFelicaPresChk_Cb");
  if (!a1)
  {
    goto LABEL_23;
  }

  if (a2 > 145)
  {
    if (a2 == 146)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Target is no more in the Rf field");
      goto LABEL_13;
    }

    if (a2 == 147)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Nfcc rejected pres chk command sent");
      goto LABEL_9;
    }

LABEL_10:
    sub_297E4E0B0(1, a1 + 9792, 4, 2u, "pres chk failed");
    a2 = 146;
LABEL_13:
    v4 = 119;
    v5 = 146;
    goto LABEL_14;
  }

  if (!a2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Target is still in the Rf field");
    v5 = 0;
    a2 = 152;
    v4 = 118;
    goto LABEL_14;
  }

  if (a2 != 44)
  {
    goto LABEL_10;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_IsoDepFelicaPresChk_Cb:NFCC not responded for Iso-Dep presence check command");
LABEL_9:
  a2 = 255;
  v4 = 119;
  v5 = 255;
LABEL_14:
  if (*(a1 + 1489) == 1 && (v6 = *(a1 + 6472)) != 0)
  {
    v7 = *(a1 + 6480);
    *(a1 + 6472) = 0;
    *(a1 + 6480) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Invoke the upper layer callback function");
    sub_297E4D930(1, a1 + 9792, 4, 22, "phLibNfc_IsoDepFelicaPresChk_Cb");
    v6(*(a1 + 9784), v7, v5);
  }

  else if (*(a1 + 6312))
  {
    v8 = *(a1 + 6248);
    if (v8)
    {
      if (*(a1 + 2664))
      {
        phOsalNfc_FreeMemory();
        *(a1 + 2664) = 0;
        v8 = *(a1 + 6248);
      }

      v9 = *(a1 + 6256);
      *(a1 + 6248) = 0;
      *(a1 + 6256) = 0;
      sub_297E4D930(1, a1 + 9792, 4, 17, "phLibNfc_IsoDepFelicaPresChk_Cb");
      v8(*(a1 + 9784), v9, 0, a1 + 2600, a2);
    }
  }

  else
  {
    sub_297E4F450(*(a1 + 9784), v4, v5, 0, 0);
  }

LABEL_23:

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_IsoDepFelicaPresChk_Cb");
}

uint64_t sub_297ECF364(uint64_t a1, uint64_t a2)
{
  v7[1] = 0;
  sub_297E4E1B4(2, a2, 4, 5u, "phLibNfc_RemoteDev_ChkPresenceTimer_Cb");
  v7[0] = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 == a2)
  {
    sub_297ECF434(a2, v7, 0);
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 4, 1u, "phLibNfc_RemoteDev_ChkPresenceTimer_Cb: Invalid  or NULL pLibContext ");
  }

  return sub_297E4DFAC(2, a2, 4, 5u, "phLibNfc_RemoteDev_ChkPresenceTimer_Cb");
}

uint64_t sub_297ECF434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RemoteDev_ChkPresence_Cb");
  if (!a1)
  {
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RemoteDev_ChkPresence_Cb");
  }

  v6 = *(a1 + 1504);
  if (!v6)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "No target is connected");
    goto LABEL_8;
  }

  if (a3 != 150)
  {
    if (a3 == 121)
    {
      v7 = 123;
      goto LABEL_10;
    }

    if (a3 == 44)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Target Lost!!");
LABEL_8:
      a3 = 146;
      goto LABEL_9;
    }

    if (!a2 || a3)
    {
      if (a3)
      {
        if (a3 == 143)
        {
          v11 = 143;
        }

        else
        {
          v11 = 146;
        }

        v7 = 119;
        a3 = v11;
        goto LABEL_10;
      }
    }

    else
    {
      if (sub_297E55558(*(a1 + 3088), v6))
      {
        *(a1 + 1504) = 0;
        *(a1 + 1512) = 0;
LABEL_26:
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Lower layer has returned Fail status!!");
        goto LABEL_8;
      }

      v12 = *(a1 + 1504);
      if (sub_297E8E88C(a1, *(v12 + 4), &v14))
      {
        goto LABEL_26;
      }

      a3 = 146;
      v7 = 119;
      if (v14 > 0x1A)
      {
        goto LABEL_10;
      }

      if (((1 << v14) & 0x2E8E800) != 0)
      {
        goto LABEL_29;
      }

      if (((1 << v14) & 0x11000) == 0)
      {
        if (v14 != 26)
        {
          goto LABEL_10;
        }

        goto LABEL_30;
      }

      if (!*(v12 + 96))
      {
LABEL_29:
        if (!*(a2 + 8))
        {
          sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_RemoteDev_ChkPresence_Cb:Lower layer has returned Invalid Buffer Length!!");
          goto LABEL_9;
        }
      }
    }

LABEL_30:
    a3 = 0;
    v7 = 118;
    goto LABEL_10;
  }

LABEL_9:
  v7 = 119;
LABEL_10:
  if (*(a1 + 1489) == 1 && (v8 = *(a1 + 6472)) != 0)
  {
    v9 = *(a1 + 6480);
    *(a1 + 6472) = 0;
    *(a1 + 6480) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Invoke the upper layer callback function");
    sub_297E4D930(1, a1 + 9792, 4, 22, "phLibNfc_RemoteDev_ChkPresence_Cb");
    v8(*(a1 + 9784), v9, a3);
  }

  else
  {
    sub_297E4F450(*(a1 + 9784), v7, a3, 0, &v13);
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RemoteDev_ChkPresence_Cb");
}

uint64_t sub_297ECF6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4, 5u, "phLibNfc_ChkPresence_Trcv_Cb");
  sub_297ECF434(a2, a4, a5);
  return sub_297E4DFAC(0, &v9, 4, 5u, "phLibNfc_ChkPresence_Trcv_Cb");
}

uint64_t sub_297ECF758(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a2, 4, 5u, "phLibNfc_Transceive_Auth_TimerCb");
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
      if (v3)
      {
        break;
      }

      v3 = 1;
      v4 = 1;
    }

    while (v5 != a2);
    if (v5 == a2)
    {
      sub_297E4E0B0(1, (a2 + 1224), 4, 1u, "phLibNfc_UIDNotMatchingCb");
      v6 = a2[779];
      v7 = a2[780];
      v8 = a2 + 188;
      if (sub_297E55558(a2[386], a2[188]))
      {
        v9 = 0;
        *v8 = 0;
        a2[189] = 0;
      }

      else
      {
        v9 = *v8;
      }

      v12 = v9;
      sub_297ECD484(a2, &v11, &v12, 0);
      if (a2[333])
      {
        phOsalNfc_FreeMemory();
        a2[333] = 0;
      }

      if (v6)
      {
        v6(a2[1223], v7, v11, 0, 255);
      }
    }
  }

  return sub_297E4DFAC(2, a2, 4, 5u, "phLibNfc_Transceive_Auth_TimerCb");
}

uint64_t sub_297ECF890(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MfcAuthInfo_Clear");
  if (a1)
  {
    *(a1 + 2616) = 255;
    *(a1 + 2620) = 0;
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MfcAuthInfo_Clear");
}

uint64_t sub_297ECF904(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RemoteDev_ClearInfo");
  sub_297ECF890(a1);
  v2 = 0uLL;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 1504) = 0u;
  if (*(a1 + 880))
  {
    phOsalNfc_FreeMemory();
    v2 = 0uLL;
  }

  *(a1 + 1000) = v2;
  *(a1 + 1016) = v2;
  *(a1 + 968) = v2;
  *(a1 + 984) = v2;
  *(a1 + 936) = v2;
  *(a1 + 952) = v2;
  *(a1 + 904) = v2;
  *(a1 + 920) = v2;
  *(a1 + 872) = v2;
  *(a1 + 888) = v2;
  *(a1 + 1240) = v2;
  *(a1 + 1256) = v2;
  *(a1 + 1272) = v2;
  *(a1 + 1288) = v2;
  *(a1 + 1304) = v2;
  *(a1 + 1320) = v2;
  *(a1 + 1336) = v2;
  *(a1 + 1352) = v2;
  *(a1 + 1368) = v2;
  *(a1 + 1384) = v2;
  if (*(a1 + 856))
  {
    *(a1 + 856) = 0;
  }

  if (*(a1 + 1400))
  {
    *(a1 + 1400) = 0;
  }

  *(a1 + 762) = 0;
  *(a1 + 1531) = 0;
  phOsalNfc_SetMemory();
  *(a1 + 1474) = 0;
  sub_297E4F1A4(*(a1 + 3088), 0);

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RemoteDev_ClearInfo");
}

uint64_t sub_297ECFA10(uint64_t a1, uint64_t a2, void *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetRemoteDevInfo");
  v6 = 255;
  if (a1)
  {
    if (a2)
    {
      v7 = *(a1 + 762);
      if (*(a1 + 762))
      {
        v8 = (a1 + 880);
        while (*(v8 - 1) != a2)
        {
          v8 += 2;
          if (!--v7)
          {
            v6 = 255;
            goto LABEL_9;
          }
        }

        v6 = 0;
        *a3 = *v8;
      }
    }
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetRemoteDevInfo");
  return v6;
}

uint64_t sub_297ECFAC0(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = a2;
  v21 = xmmword_297F136B0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_DataExPresenceCheck");
  if (!a2)
  {
    goto LABEL_36;
  }

  if (sub_297ECD484(a1, &v18, &v17, 1))
  {
    v4 = "Mapping of LibNfc RemoteDev Handle to NCI RemoteDev Handle Failed";
LABEL_6:
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v4);
    v5 = 0;
    goto LABEL_7;
  }

  if (sub_297E8E7EC(a1, v17))
  {
    v4 = "Validation of NCI RemoteDev Handle Failed";
    goto LABEL_6;
  }

  v5 = 1;
LABEL_7:
  v6 = *(v18 + 4);
  if (v6 > 15)
  {
    if (v6 <= 20)
    {
      if (v6 == 16)
      {
LABEL_25:
        phOsalNfc_SetMemory();
        *(a1 + 2676) = 2;
        *(a1 + 2682) = 1;
        *(a1 + 2672) = 48;
        *(a1 + 2720) = a1 + 2855;
        *(a1 + 2728) = 19;
        *(a1 + 2704) = 0;
        *(a1 + 2712) = 0;
        goto LABEL_34;
      }

      if (v6 == 19)
      {
        goto LABEL_23;
      }
    }

    else
    {
      switch(v6)
      {
        case 24:
          phOsalNfc_SetMemory();
          *(a1 + 2672) = 0;
          v12 = a1 + 2835;
          v13 = 3;
LABEL_33:
          phOsalNfc_MemCopy();
          *(a1 + 2704) = v12;
          *(a1 + 2712) = v13;
          *(a1 + 2720) = a1 + 2855;
          *(a1 + 2728) = 68;
          goto LABEL_34;
        case 22:
          phOsalNfc_SetMemory();
          *(a1 + 2672) = 0;
          *(a1 + 2720) = a1 + 2855;
          *(a1 + 2728) = 6;
          v10 = a1 + 2835;
          v11 = 7;
          goto LABEL_24;
        case 21:
          v8 = 0;
          v9 = v18 + 8;
          do
          {
            *(&v21 + v8 + 2) = *(v9 + v8);
            ++v8;
          }

          while (v8 != 8);
          phOsalNfc_SetMemory();
          *(a1 + 2672) = 240;
          *(a1 + 2720) = a1 + 2855;
          *(a1 + 2728) = 27;
          v10 = a1 + 2835;
          v11 = 16;
          goto LABEL_24;
      }
    }

LABEL_29:
    v14 = v5 ^ 1;
    if (v6 != 23)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      v19 = 8226;
      phOsalNfc_MemCopy();
      v20 = 0;
      phOsalNfc_SetMemory();
      *(a1 + 2672) = 0;
      v12 = a1 + 2835;
      v13 = 11;
      goto LABEL_33;
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "RemoteDev is other than Mifare PICC or SAK byte is 0");
LABEL_36:
    v15 = 255;
    goto LABEL_37;
  }

  if ((v6 - 13) >= 3 && v6 != 11)
  {
    if (v6 != 12)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_23:
  phOsalNfc_SetMemory();
  *(a1 + 2672) = 0;
  *(a1 + 2720) = a1 + 2855;
  *(a1 + 2728) = 2;
  v10 = a1 + 2835;
  v11 = 7;
LABEL_24:
  phOsalNfc_MemCopy();
  *(a1 + 2704) = v10;
  *(a1 + 2712) = v11;
LABEL_34:
  v15 = sub_297EA14F4(v18, a1 + 2672, sub_297ECF6D4, a1);
LABEL_37:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DataExPresenceCheck");
  return v15;
}

uint64_t sub_297ECFEBC(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v26 = a2;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PreparePresenceCheck");
  v4 = 1;
  if (a1 && a2)
  {
    if (!*(a1 + 1504))
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "No target is connected");
      v4 = 148;
      goto LABEL_14;
    }

    if (*(a1 + 2933))
    {
      sub_297EFD338(*(a1 + 9792), *(a1 + 1496));
      if (phOsalNfc_Timer_Start())
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_PreparePresenceCheck : Timer Failed");
      }

      else
      {
        sub_297E687D8(1, a1 + 9792, *(a1 + 1496), 4, 4u, "phLibNfc_PreparePresenceCheck");
        v4 = 13;
      }

      goto LABEL_14;
    }

    if (sub_297ECD484(a1, &v26, &v25, 1))
    {
      v5 = "Mapping of LibNfc RemoteDev Handle to NCI RemoteDev Handle Failed";
LABEL_13:
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, v5);
      v4 = 149;
      goto LABEL_14;
    }

    if (sub_297E8CCB4(a1, v25))
    {
      v5 = "NCI RemoteDev Handle is not same as Connected Handle";
      goto LABEL_13;
    }

    if (!v25)
    {
      goto LABEL_39;
    }

    v7 = v25[4];
    if (v7 == 4)
    {
      if (v25[3] == 1)
      {
        v8 = v25[1];
        if ((v8 == 25 || v8 == 4) && *(a1 + 1470) == 1)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      if (!v7)
      {
        if (v25[3] == 1)
        {
          if (*(a1 + 1470) != 1)
          {
LABEL_34:
            if (v25[1] == 25)
            {
              *(a1 + 2960) = &qword_2A1A92970;
              *(a1 + 2952) = 0;
              *(a1 + 2954) = 0;
              v10 = qword_2A1A92970;
              if (qword_2A1A92970)
              {
                v10 = 0;
                v13 = off_2A1A92980;
                do
                {
                  ++v10;
                  v14 = *v13;
                  v13 += 2;
                }

                while (v14);
              }

LABEL_38:
              *(a1 + 2953) = v10;
              v15 = v26;
              v16 = a1;
LABEL_47:
              v9 = sub_297E5588C(v16, 0, v15);
              goto LABEL_48;
            }

            goto LABEL_39;
          }

LABEL_25:
          v4 = 147;
          goto LABEL_14;
        }

LABEL_39:
        if (!sub_297EE0544(a1, v25))
        {
          v17 = *(a1 + 2616) - 96;
          if (v17 <= 0x21 && ((1 << v17) & 0x300000003) != 0)
          {
            *(a1 + 2960) = &qword_2A1A92E60;
            *(a1 + 2952) = 0;
            *(a1 + 2954) = 0;
            v18 = qword_2A1A92E60;
            if (qword_2A1A92E60)
            {
              v18 = 0;
              v19 = &qword_2A1A92E70;
              do
              {
                ++v18;
                v20 = *v19;
                v19 += 2;
              }

              while (v20);
            }
          }

          else if (*(a1 + 1531) == 1)
          {
            *(a1 + 2960) = &qword_2A1A90CC8;
            *(a1 + 2952) = 0;
            *(a1 + 2954) = 0;
            v18 = qword_2A1A90CC8;
            if (qword_2A1A90CC8)
            {
              v18 = 0;
              v21 = &qword_2A1A90CD8;
              do
              {
                ++v18;
                v22 = *v21;
                v21 += 2;
              }

              while (v22);
            }
          }

          else
          {
            *(a1 + 2960) = &qword_2A1A92AE0;
            *(a1 + 2952) = 0;
            *(a1 + 2954) = 0;
            v18 = qword_2A1A92AE0;
            if (qword_2A1A92AE0)
            {
              v18 = 0;
              v23 = off_2A1A92AF0;
              do
              {
                ++v18;
                v24 = *v23;
                v23 += 2;
              }

              while (v24);
            }
          }

          *(a1 + 2953) = v18;
          v16 = a1;
          v15 = 0;
          goto LABEL_47;
        }

        v9 = sub_297ECFAC0(a1, v26);
LABEL_48:
        v4 = v9;
        goto LABEL_14;
      }

      if ((v7 & 0xFFFFFFFE) != 4)
      {
        if (v7 == 3)
        {
          *(a1 + 2960) = &qword_2A1A92920;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v10 = qword_2A1A92920;
          if (qword_2A1A92920)
          {
            v10 = 0;
            v11 = &qword_2A1A92930;
            do
            {
              ++v10;
              v12 = *v11;
              v11 += 2;
            }

            while (v12);
          }

          goto LABEL_38;
        }

        if (v25[3] != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_34;
      }
    }

    v9 = sub_297F08B18(*(a1 + 3088), sub_297ECF0FC, a1);
    goto LABEL_48;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PreparePresenceCheck");
  return v4;
}

uint64_t sub_297ED02A0(uint64_t a1, int *a2, unint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MapDesfireTagType");
  v6 = *a3;
  if (!*a3 || *(a3 + 2) < 8u || *v6 != 175 || *(v6 + 1) != 4)
  {
    goto LABEL_23;
  }

  v7 = *(v6 + 2);
  if (v7 == 131 || v7 == 129)
  {
    v8 = *(v6 + 4) & 0xF;
    goto LABEL_13;
  }

  if (v7 != 1)
  {
    goto LABEL_23;
  }

  v8 = *(v6 + 4) & 0xF;
  if (v8 <= 1)
  {
    if ((*(v6 + 4) & 0xF) == 0)
    {
      if (*(v6 + 6) == 24)
      {
        v9 = 40;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_13:
    if (v8 == 1)
    {
      LOBYTE(v6) = ((*(v6 + 6) - 16) >> 1) | ((*(v6 + 6) - 16) << 7);
      if (v6 < 6u)
      {
        v6 = v6;
        v10 = &unk_297F13690;
LABEL_16:
        v9 = v10[v6];
        goto LABEL_24;
      }
    }

    goto LABEL_23;
  }

  if (v8 == 2)
  {
    LODWORD(v6) = *(v6 + 6) - 22;
    if (v6 < 9)
    {
      v6 = v6;
      v10 = &unk_297F13650;
      goto LABEL_16;
    }
  }

  else if (v8 == 3)
  {
    LODWORD(v6) = *(v6 + 6) - 22;
    if (v6 < 7)
    {
      v6 = v6;
      v10 = &unk_297F13674;
      goto LABEL_16;
    }
  }

LABEL_23:
  v9 = 55;
LABEL_24:
  *a2 = v9;

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MapDesfireTagType");
}

uint64_t sub_297ED041C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v31 = *MEMORY[0x29EDCA608];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  memset(v26, 0, sizeof(v26));
  *v30 = xmmword_297F1363B;
  *&v30[15] = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_FindTagTypeFromSak");
  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    *(a1 + 1504) = 0;
    *(a1 + 1512) = 0;
    v8 = 1;
    goto LABEL_3;
  }

  v8 = 1;
  if (a2 && a3)
  {
    v10 = *(a1 + 1504);
    v11 = *(v10 + 96);
    *a2 = 56;
    *(a2 + 8) = 0;
    phOsalNfc_SetMemory();
    *&v28 = a1 + 2064;
    DWORD2(v28) = 530;
    if ((v11 & 2) != 0)
    {
      v8 = 0;
      *a2 = 56;
      goto LABEL_3;
    }

    if ((v11 & 8) == 0)
    {
      if ((v11 & 0x10) != 0)
      {
        v8 = 0;
        if (v11)
        {
          v19 = 25;
        }

        else
        {
          v19 = 21;
        }

        goto LABEL_101;
      }

      if ((v11 & 0x20) == 0)
      {
        if ((v11 & 1) == 0 && *(v10 + 36) == 4)
        {
          *a2 = 5;
          if (a4)
          {
            v12 = *a4;
            if (!*a4 || (v13 = *(a1 + 2824)) == 0)
            {
              v8 = 255;
              goto LABEL_3;
            }

            if (*(a4 + 2) < 8u)
            {
              v8 = 44;
              goto LABEL_3;
            }

            v14 = v12[2];
            if (v14 == 4)
            {
              *v13 = 5;
              sub_297E4E0B0(1, a1 + 9792, 4, 4u, "NTAG 2xx is considered as Mifare UL");
              v8 = 150;
              goto LABEL_3;
            }

            if (v14 != 3)
            {
              goto LABEL_102;
            }

            v15 = v12[4];
            if ((v15 - 2) < 2)
            {
              v8 = 0;
              v16 = 10;
              goto LABEL_109;
            }

            if (v15 == 4)
            {
              v8 = 0;
              v16 = 6;
              goto LABEL_109;
            }

            if (v15 == 1)
            {
              v8 = 0;
              v16 = 9;
            }

            else
            {
LABEL_102:
              v8 = 0;
              v16 = 56;
            }

LABEL_109:
            *v13 = v16;
            goto LABEL_3;
          }

          goto LABEL_84;
        }

        v8 = 0;
        v19 = 56;
        goto LABEL_101;
      }

      v21 = *(v10 + 104);
      if (v21 < 0xB)
      {
LABEL_79:
        if (v21 >= 4)
        {
          if (a4)
          {
            sub_297ED02A0(a1, a2, a4);
            v8 = 0;
            goto LABEL_3;
          }

          *a2 = 40;
LABEL_84:
          *(a1 + 1534) = 96;
          LODWORD(v26[0]) = 0;
          *&v27 = a1 + 1534;
          v22 = 1;
          goto LABEL_85;
        }

        v8 = 0;
        v19 = 55;
LABEL_101:
        *a2 = v19;
        goto LABEL_3;
      }

      if (*(v10 + 110) == 193 && *(v10 + 111) == 5)
      {
        if (*(v10 + 114) == 1)
        {
          if (*(v10 + 115) == 188 && *(v10 + 116) == 214)
          {
            if (a4)
            {
              if (*a4 && *(a4 + 2) == 1 && **a4 == 144)
              {
                v8 = 0;
                v19 = 23;
              }

              else
              {
                v8 = 0;
                v19 = 26;
              }

              goto LABEL_101;
            }

            goto LABEL_104;
          }
        }

        else if (!*(v10 + 114) && *(v10 + 115) == 53 && *(v10 + 116) == 199)
        {
          if (a4)
          {
            if (*a4 && *(a4 + 2) == 1 && **a4 == 144)
            {
              v8 = 0;
              v19 = 15;
            }

            else
            {
              v8 = 0;
              v19 = 18;
            }

            goto LABEL_101;
          }

LABEL_104:
          phOsalNfc_MemCopy();
          LODWORD(v26[0]) = 0;
          *&v27 = a1 + 1534;
          DWORD2(v27) = 19;
          v23 = *(v10 + 4);
          v25 = a1 + 2760;
          v24 = a1;
          goto LABEL_86;
        }
      }

      if (phOsalNfc_MemCompare() && phOsalNfc_MemCompare() && phOsalNfc_MemCompare())
      {
        v21 = *(v10 + 104);
        goto LABEL_79;
      }

LABEL_100:
      v8 = 0;
      v19 = 27;
      goto LABEL_101;
    }

    if ((v11 & 0x10) == 0)
    {
      if (v11)
      {
        v8 = 0;
        v19 = 4;
        goto LABEL_101;
      }

      if ((v11 & 0x20) != 0)
      {
        v8 = 0;
        v19 = 1;
        goto LABEL_101;
      }

      if (a4)
      {
        v17 = *a4;
        if (!*a4 || *(a4 + 2) != 12)
        {
          goto LABEL_99;
        }

        if (v17[5] == 193 && v17[6] == 5)
        {
          v18 = v17[10];
          if (v17[9] || v18 != 53)
          {
            if (v18 == 188 && v17[11] == 214)
            {
              v8 = 0;
              v19 = 20;
              goto LABEL_101;
            }
          }

          else if (v17[11] == 199)
          {
            v8 = 0;
            v19 = 12;
            goto LABEL_101;
          }
        }

        if (phOsalNfc_MemCompare() && phOsalNfc_MemCompare() && phOsalNfc_MemCompare())
        {
LABEL_99:
          v8 = 0;
          v19 = 1;
          *(a1 + 2833) = 1;
          goto LABEL_101;
        }

        goto LABEL_100;
      }

LABEL_66:
      *(a1 + 1534) = -32544;
      LODWORD(v26[0]) = 0;
      *&v27 = a1 + 1534;
      v22 = 2;
LABEL_85:
      DWORD2(v27) = v22;
      v23 = *(v10 + 4);
      v24 = a1;
      v25 = a3;
LABEL_86:
      sub_297ECE3AC(v24, v23, v26, v25);
      v8 = 13;
      goto LABEL_3;
    }

    if (v11)
    {
      v8 = 0;
      v19 = 2;
      goto LABEL_101;
    }

    if ((v11 & 0x20) != 0)
    {
      v8 = 0;
    }

    else
    {
      if (!a4)
      {
        goto LABEL_66;
      }

      v20 = *a4;
      if (*a4 && *(a4 + 2) == 12 && v20[5] == 193 && v20[6] == 5)
      {
        if (!v20[9] && v20[10] == 53 && v20[11] == 199)
        {
          v8 = 0;
          v19 = 16;
          goto LABEL_101;
        }

        if (v20[10] == 188 && v20[11] == 214)
        {
          v8 = 0;
          v19 = 24;
          goto LABEL_101;
        }
      }

      v8 = 0;
      *(a1 + 2833) = 1;
    }

    v19 = 3;
    goto LABEL_101;
  }

LABEL_3:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_FindTagTypeFromSak");
  return v8;
}

uint64_t sub_297ED0A64(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Memory_Typed = 0;
  v15 = a1;
  v13 = 0;
  sub_297E4E1B4(0, &v15, 6, 5u, "phDnldNfc_SetHwDevHandle");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = &unk_2A18BDDC0 + 112 * v3;
    if (*v6 == v15)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = *(v6 + 2);
LABEL_6:
  sub_297E67F6C(v15, &Memory_Typed);
  sub_297E67EB0(v15, &v13);
  if (!Memory_Typed)
  {
    sub_297E4E0B0(0, &v15, 6, 4u, "phDnldNfc_SetHwDevHandle:Allocating Memory for Dnld Context..");
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed)
    {
      phOsalNfc_SetMemory();
      sub_297E9F7D8(v15, Memory_Typed);
      sub_297E966F4(0, &v15, 6, 4u, "####Primary NFCC, DriverHandle");
      sub_297E966F4(0, &v15, 6, 4u, "####Primary NFCC, DOWNLOAD context");
    }

    else
    {
      sub_297E4E0B0(0, &v15, 6, 1u, "phDnldNfc_SetHwDevHandle Insufficient resource!!");
    }
  }

  if (!v15 || (v8 = Memory_Typed) == 0)
  {
    v11 = "Invalid Input Parameters!!";
    goto LABEL_19;
  }

  Memory_Typed[2] = v15;
  *(v8 + 10) = v7;
  sub_297E4E0B0(0, &v15, 6, 4u, "phDnldNfc_SetHwDevHandle:Device Handle updated successfully");
  if (!v13)
  {
    phTmlNfc_ReadAbort();
    phTmlNfc_FlushTxRxBuffers();
    if (sub_297E56AFC(v15) == 1)
    {
      phTmlNfc_WriteAbort();
      sub_297E5A3A8(v15, 0);
    }

    sub_297F0DF0C(Memory_Typed, v2);
    v9 = Memory_Typed[6];
    if (v9)
    {
      v10 = sub_297F05010(v15);
      if (v10)
      {
        Memory_Typed[4] = v10;
        *(v9 + 8496) = v10;
        sub_297F0ABE8(v10, v9);
        return sub_297E4DFAC(0, &v15, 6, 5u, "phDnldNfc_SetHwDevHandle");
      }

      v11 = "Failed to create NCI Handle";
    }

    else
    {
      v11 = "Failed to create Download Core Context";
    }

LABEL_19:
    sub_297E4E0B0(0, &v15, 6, 1u, v11);
  }

  return sub_297E4DFAC(0, &v15, 6, 5u, "phDnldNfc_SetHwDevHandle");
}

uint64_t sub_297ED0CC8(uint64_t a1)
{
  v3 = 0;
  sub_297E4E1B4(2, a1, 6, 5u, "phDnldNfc_FreeDnldContext");
  if (a1)
  {
    v3 = *(a1 + 16);
    phOsalNfc_FreeMemory();
    sub_297E9F7D8(v3, 0);
  }

  return sub_297E4DFAC(0, &v3, 6, 5u, "phDnldNfc_FreeDnldContext");
}

uint64_t sub_297ED0D50(unsigned __int8 **a1, unsigned __int8 **a2, int a3)
{
  v25 = 0;
  sub_297E4E1B4(2, a1, 6, 5u, "phDnldNfc_InitImgInfo");
  if (!a1)
  {
    v20 = "phDnldNfc_InitImgInfo: Invalid DNLD context!!";
    v21 = 2;
    v22 = 0;
LABEL_16:
    sub_297E4E0B0(v21, v22, 6, 1u, v20);
    v19 = 255;
    goto LABEL_17;
  }

  sub_297E5D114(a1[2], &v25);
  if (!a2)
  {
    v23 = "phDnldNfc_InitImgInfo: Invalid input buffer !!\n";
    goto LABEL_14;
  }

  v6 = *(a2 + 2);
  if (!v6 || !*a2)
  {
    v23 = "phDnldNfc_InitImgInfo: phDnldNfc_InitImgInfo with invalid buffer length !!\n";
LABEL_14:
    sub_297E4E0B0(1, (a1 + 5), 6, 1u, v23);
    goto LABEL_15;
  }

  *a1 = *a2;
  *(a1 + 2) = v6;
  if (!v25)
  {
LABEL_15:
    v20 = "phDnldNfc_InitImgInfo: Invalid input parameters or Invalid IOCTL context!!";
    v21 = 2;
    v22 = a1;
    goto LABEL_16;
  }

  sub_297E50DB0(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: MW Major Version Number - ");
  sub_297E50DB0(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: MW Minor Version Number - ");
  v7 = v25;
  *(v25 + 834) = 1040;
  v8 = *a1;
  if (!*a1 || (v9 = *(a1 + 2)) == 0)
  {
    v20 = "phDnldNfc_InitImgInfo: Image details extraction Failed!!";
    goto LABEL_19;
  }

  if ((a3 - 8) > 2)
  {
    sub_297E50DB0(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: FW Major Version Number - ");
    sub_297E50DB0(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: FW Minor Version Number - ");
    sub_297E50DB0(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: FW Image Length - ");
    sub_297E966F4(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: FW Image Info Pointer - ");
    v19 = 0;
    *(v25 + 832) = *(*a1 + 2);
    goto LABEL_17;
  }

  *(a1 + 2) = v9 - 12;
  *(v7 + 840) = 0;
  v10 = *v8;
  *(v7 + 840) = v10;
  v11 = v10 | (v8[1] << 8);
  *(v7 + 840) = v11;
  v12 = v11 | (v8[2] << 16);
  *(v7 + 840) = v12;
  *(v7 + 840) = v12 | (v8[3] << 24);
  *(v7 + 844) = 0;
  v13 = v8[4];
  *(v7 + 844) = v13;
  v14 = v13 | (v8[5] << 8);
  *(v7 + 844) = v14;
  v15 = v14 | (v8[6] << 16);
  *(v7 + 844) = v15;
  *(v7 + 844) = v15 | (v8[7] << 24);
  *(v7 + 828) = 0;
  v16 = v8[8];
  *(v7 + 828) = v16;
  v17 = v16 | (v8[9] << 8);
  *(v7 + 828) = v17;
  v18 = v17 | (v8[10] << 16);
  *(v7 + 828) = v18;
  *(v7 + 828) = v18 | (v8[11] << 24);
  *(v7 + 832) = *&v8[__rev16(*(v8 + 6)) + 18];
  sub_297E50DB0(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: FW Major Version Number");
  sub_297E50DB0(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: FW Minor Version Number");
  sub_297E50DB0(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: FW Image Length");
  sub_297E966F4(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: FW Image Info Pointer");
  sub_297E50DB0(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: FW SVN Revision");
  sub_297E50DB0(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: Regular FW Offset");
  sub_297E50DB0(1, (a1 + 5), 6, 4u, "phDnldNfc_InitImgInfo: Degraded FW Offset");
  v19 = 0;
  if (*(v25 + 844) <= 0xBu)
  {
    v20 = "phDnldNfc_InitImgInfo: Degraded FW offset is invalid!!";
LABEL_19:
    v22 = (a1 + 5);
    v21 = 1;
    goto LABEL_16;
  }

LABEL_17:
  sub_297E4DFAC(2, a1, 6, 5u, "phDnldNfc_InitImgInfo");
  return v19;
}

uint64_t sub_297ED1128(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 6, 5u, "phDnldNfc_ClearFwBuffRef");
  if (a1)
  {
    *(a1 + 8) = 0;
    *a1 = 0;
  }

  else
  {
    sub_297E4E0B0(2, 0, 6, 1u, "phDnldNfc_ClearFwBuffRef: Invalid DNLD context!!");
  }

  return sub_297E4DFAC(2, a1, 6, 5u, "phDnldNfc_ClearFwBuffRef");
}

uint64_t sub_297ED11B8(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v15 = 0;
  v16 = a1;
  sub_297E4E1B4(0, &v16, 8, 5u, "phFriNfc_MifareUL_RdNdef");
  sub_297E57170(v16, &v15);
  v11 = 1;
  if (a3)
  {
    if (a2)
    {
      if (a5)
      {
        v12 = v15;
        if (v15)
        {
          if (a4 <= 1)
          {
            if (a4 || *(v15 + 540) == 2)
            {
              *(v15 + 16) = a5;
              *(v12 + 40) = a6;
              *(v12 + 547) = 2;
              v13 = *a3;
              if (*a3 && *(v12 + 545) != 3 && (*(v12 + 545) || *(v12 + 65) != 1))
              {
                *(v12 + 240) = a2;
                *(v12 + 248) = v13;
                *(v12 + 552) = a3;
                *a3 = 0;
                if (a4 == 1)
                {
                  *(v12 + 647) = 260;
                  *(v12 + 66) = 0;
                  *(v12 + 68) = 0;
                  *(v12 + 70) = 4;
                  *(v12 + 650) = *(v12 + 204);
                  *(v12 + 72) = 0;
                  *(v12 + 75) = 0;
                  *(v12 + 2700) = 0;
                  *(v12 + 2704) = 0;
                  *(v12 + 2710) = 0;
                  *(v12 + 540) = 2;
                  *(v12 + 560) = 1;
                  v11 = sub_297ED1358(v12, 4);
                }

                else
                {
                  *(v12 + 540) = 2;
                  *(v12 + 648) = 1;
                  if (*(v12 + 2704) == 1)
                  {
                    v11 = 26;
                  }

                  else
                  {
                    *(v12 + 560) = a4;
                    sub_297ED1444(v12);
                    v11 = 0;
                  }
                }
              }
            }

            else
            {
              v11 = 245;
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v16, 8, 5u, "phFriNfc_MifareUL_RdNdef");
  return v11;
}

uint64_t sub_297ED1358(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_RdCardfindNdefTLV");
  *a1 = 4;
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 266) = a2;
  *(a1 + 526) = 1;
  *(a1 + 264) = 260;
  *(a1 + 232) = 48;
  sub_297E4E0B0(0, a1 + 2712, 8, 4u, "phFriNfc_MfUL_H_ChkCCBytes:Sending Read command to find Ndef Tlv...");
  sub_297ED26C0(a1, *(a1 + 232), a1 + 266, *(a1 + 526), a1 + 264);
  v4 = sub_297E98D38(a1, sub_297ED29B0);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_RdCardfindNdefTLV");
  return v4;
}

uint64_t sub_297ED1444(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_CpDataToUserBuf");
  if (*(a1 + 248) >= *(a1 + 80))
  {
    phOsalNfc_MemCopy();
    v3 = 0;
    v5 = 0;
    v6 = *(a1 + 80);
    **(a1 + 552) = v6;
    *(a1 + 2704) = 1;
    v4 = *(a1 + 650) - v6;
  }

  else
  {
    phOsalNfc_MemCopy();
    v2 = *(a1 + 248);
    **(a1 + 552) = v2;
    v3 = *(a1 + 2702) + v2;
    v4 = *(a1 + 650) - v2;
    v5 = *(a1 + 80) - v2;
  }

  *(a1 + 2702) = v3;
  *(a1 + 650) = v4;
  *(a1 + 80) = v5;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_CpDataToUserBuf");
  return 0;
}

uint64_t sub_297ED1528(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v22 = 0;
  v21 = 208;
  v20 = 0;
  sub_297E4E1B4(0, &v23, 8, 5u, "phFriNfc_MifareUL_WrNdef");
  sub_297E57170(v23, &v20);
  v11 = 1;
  if (a3 && a5 && v20)
  {
    phOsalNfc_MemCopy();
    v12 = v20;
    *(v20 + 2740) = 3;
    *(v12 + 24) = a5;
    *(v12 + 40) = a6;
    *(v12 + 547) = 3;
    *(v12 + 252) = 0;
    **(v12 + 528) = 0;
    v13 = v20;
    v14 = v20 + 2736;
    v15 = (v20 + 2740);
    if (*a3)
    {
      v15 = a3;
      v14 = a2;
    }

    v11 = 1;
    if (v20)
    {
      if (v14 && a4 <= 1 && *v15 && (*(v20 + 545) | 2) != 3)
      {
        *(v20 + 648) = 2;
        *(v13 + 240) = v14;
        *(v13 + 248) = *v15;
        *(v13 + 256) = v15;
        *v15 = 0;
        if (a4 == 1 || *(v13 + 540) == 2)
        {
          v16 = *(v13 + 67);
          *(v13 + 646) = v16;
          v17 = *(v13 + 70);
          *(v13 + 647) = v17;
          *(v13 + 72) = 0;
          *(v13 + 75) = 0;
          *(v13 + 2700) = 0;
          *(v13 + 2704) = 0;
          *(v13 + 84) = 0;
          *(v13 + 644) = 0;
          *(v13 + 650) = *(v13 + 204) - (*(v13 + 133) + *(v13 + 187)) - (*(v13 + 68) + 4 * v17) + 15;
          *(v13 + 540) = 3;
          *(v13 + 648) = 2;
          if (a4)
          {
            *(v13 + 560) = 1;
            if (v16 != 1)
            {
              v18 = sub_297ED1878(v13);
LABEL_22:
              v11 = v18;
              goto LABEL_23;
            }

LABEL_20:
            *(v13 + 646) = 1;
            v18 = sub_297ED1760(v13, 1, 1, 19);
            goto LABEL_22;
          }

LABEL_19:
          *(v13 + 560) = a4;
          if (v16 != 1)
          {
            v18 = sub_297ED1B28(v13);
            goto LABEL_22;
          }

          goto LABEL_20;
        }

        *(v13 + 540) = 3;
        *(v13 + 648) = 2;
        if (*(v13 + 2704) != 1)
        {
          v16 = *(v13 + 67);
          goto LABEL_19;
        }

        v11 = 26;
      }
    }
  }

LABEL_23:
  sub_297E4DFAC(0, &v23, 8, 5u, "phFriNfc_MifareUL_WrNdef");
  return v11;
}

uint64_t sub_297ED1760(uint64_t a1, char a2, int a3, char a4)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_SelectSector");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *a1 = a4;
  if (a3 == 1)
  {
    v8 = 3;
    v9 = -1;
    a2 = -62;
  }

  else
  {
    v9 = 0;
    *(a1 + 269) = 0;
    v8 = 5;
  }

  *(a1 + 266) = 0;
  *(a1 + 267) = a2;
  *(a1 + 268) = v9;
  *(a1 + 526) = v8;
  *(a1 + 264) = 260;
  *(a1 + 232) = 0;
  sub_297E4E0B0(0, a1 + 2712, 8, 4u, "Sending sector command...");
  sub_297ED26C0(a1, *(a1 + 232), a1 + 266, *(a1 + 526), a1 + 264);
  v10 = sub_297E98D38(a1, sub_297ED29B0);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_SelectSector");
  return v10;
}

uint64_t sub_297ED1878(uint64_t a1)
{
  v2 = *(a1 + 70);
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_RdBeforeWrite");
  if (*(a1 + 68))
  {
    v3 = *(a1 + 68) - 1;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 - 1) < 2)
  {
    v7 = sub_297ED1358(a1, *(a1 + 70));
LABEL_10:
    v5 = v7;
    v6 = 0;
    goto LABEL_18;
  }

  if (v3 != 3)
  {
    if (v3)
    {
      v6 = 0;
      v5 = 29;
    }

    else
    {
      v4 = *(a1 + 70);
      *(a1 + 647) = v4;
      *(a1 + 266) = v4;
      *(a1 + 267) = 3;
      v5 = 0;
      if (*(a1 + 248) < 0xFFu)
      {
        *(a1 + 268) = 0;
        v6 = 3;
      }

      else
      {
        *(a1 + 268) = 255;
        *(a1 + 270) = 0;
        v6 = 5;
      }
    }

    goto LABEL_18;
  }

  v8 = *(a1 + 647);
  v2 = v8 + 1;
  if (v8 == 255)
  {
    v9 = *(a1 + 646) + 1;
    *(a1 + 646) = v9;
    v7 = sub_297ED1760(a1, v9, 1, 17);
    goto LABEL_10;
  }

  *(a1 + 647) = v2;
  *(a1 + 266) = v2;
  v5 = 0;
  if (*(a1 + 248) < 0xFFu)
  {
    *(a1 + 267) = 0;
    v6 = 2;
  }

  else
  {
    *(a1 + 267) = 255;
    *(a1 + 269) = 0;
    v6 = 4;
  }

LABEL_18:
  v10 = *(a1 + 68);
  if (v10 == 1)
  {
    if (v2 > 0xFF)
    {
      goto LABEL_45;
    }
  }

  else if (v10 != 4 || v2 >= 0x100)
  {
    goto LABEL_45;
  }

  if (v10 == 1)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  v12 = *(a1 + 248);
  if (v12 <= 0xFE)
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 - 2;
  }

  if (v12 >= v13)
  {
    if (v6 + v13)
    {
      v23 = (v6 + v13) - 1;
    }

    else
    {
      v23 = 0;
    }

    phOsalNfc_MemCopy();
    *(a1 + 216) = v13;
    **(a1 + 528) = v23;
  }

  else
  {
    phOsalNfc_MemCopy();
    v14 = *(a1 + 248);
    v15 = v6 + v14;
    v16 = (v6 + v14);
    *(a1 + 216) = v14;
    if (v6 + v14)
    {
      v17 = (v6 + v14) - 1;
    }

    else
    {
      v17 = 0;
    }

    **(a1 + 528) = v17;
    if (v16 <= 4)
    {
      v18 = 0;
      *(a1 + 74) = 1;
      v19 = v15 + 1;
      v20 = a1 + v15 + 266;
      do
      {
        if (v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = -2;
        }

        *(v20 + v18) = v21;
        v22 = v19++;
        ++v18;
      }

      while (v22 != 5);
    }
  }

  phOsalNfc_MemCopy();
  phOsalNfc_MemCopy();
  *a1 = 2;
  v5 = sub_297ED4A38(a1);
LABEL_45:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_RdBeforeWrite");
  return v5;
}

uint64_t sub_297ED1B28(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_fillSendBufToWr");
  phOsalNfc_MemCopy();
  phOsalNfc_MemCopy();
  v2 = *(a1 + 248);
  v3 = *(a1 + 252);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6 > *(a1 + 650))
  {
    LOWORD(v5) = *(a1 + 650);
  }

  *(a1 + 266) = *(a1 + 647);
  v7 = *(a1 + 644);
  if (4 - v7 <= v5)
  {
    v8 = 4 - v7;
  }

  else
  {
    v8 = v5;
  }

  if (*(a1 + 216) || (v27 = *(a1 + 218), !*(a1 + 218)))
  {
    v9 = 0;
  }

  else
  {
    v8 -= v27;
    *(a1 + 267) = 0;
    if (v27 == 1)
    {
      v9 = 8;
    }

    else
    {
      *(a1 + 268) = 0;
      v9 = 12;
    }
  }

  if (v7)
  {
    phOsalNfc_MemCopy();
  }

  sub_297E4E1B4(2, a1, 8, 5u, "FindLockBytePosition");
  v10 = *(a1 + 132);
  if (*(a1 + 132))
  {
    v11 = 0;
    v12 = (4 * *(a1 + 647)) & 0x3FF | ((*(a1 + 646) & 0x3F) << 10);
    v13 = v12 + 4;
    v14 = (a1 + 100);
    v15 = v9;
    do
    {
      v16 = *(v14 - 1);
      v17 = *v14;
      if (v12 <= (v16 + v17 - 1) && v13 > v16)
      {
        v20 = (v16 + v17 - 1);
        if (v16 < v12 && v13 > v20)
        {
          v9 = v15 | (15 << (v13 - (v16 + v17)));
          v24 = v20 + v11;
          if (v24 >= v12)
          {
            v19 = v24 - 4 * *(a1 + 647) + 1;
          }

          else
          {
            v19 = 1;
          }
        }

        else if (v16 < v12 || v13 > v20)
        {
          v19 = 4;
          v9 = 15;
          v4 = v16 >= v12;
          v23 = v16 - 4 * *(a1 + 647);
          if (v4 && v13 >= v20)
          {
            v9 = v15 | (15 << (v13 + ~v20)) & (0xFu >> v23);
            v19 = (v11 + v17);
          }
        }

        else
        {
          v9 = v15 | (0xFu >> (v16 - 4 * *(a1 + 647)));
          v25 = v13 + v11;
          v4 = v25 >= v16;
          v26 = v25 - v16;
          if (v4)
          {
            v19 = v26;
          }

          else
          {
            v19 = 0;
          }
        }
      }

      else
      {
        v9 = v15;
        v19 = v11;
      }

      v14 += 2;
      v15 = v9;
      v11 = v19;
      --v10;
    }

    while (v10);
  }

  else
  {
    v19 = 0;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "FindLockBytePosition");
  sub_297E4E1B4(2, a1, 8, 5u, "FindResBytePosition");
  v28 = *(a1 + 186);
  if (*(a1 + 186))
  {
    v29 = (4 * *(a1 + 647)) & 0x3FF | ((*(a1 + 646) & 0x3F) << 10);
    v30 = v29 + 4;
    v31 = (a1 + 154);
    do
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      if (v29 <= (v32 + v33 - 1) && v30 > v32)
      {
        v37 = (v32 + v33 - 1);
        if (v32 < v29 && v30 > v37)
        {
          v35 = v9 | (15 << (v30 - (v32 + v33)));
          v36 = v19 + v37 - 4 * *(a1 + 647) + 1;
        }

        else if (v32 < v29 || v30 > v37)
        {
          v36 = 4;
          v35 = 15;
          v4 = v32 >= v29;
          v40 = v32 - 4 * *(a1 + 647);
          if (v4 && v30 >= v37)
          {
            v35 = v9 | (15 << (v30 + ~v37)) & (0xFu >> v40);
            v36 = (v19 + v33);
          }
        }

        else
        {
          v35 = v9 | (0xFu >> (v32 - 4 * *(a1 + 647)));
          v41 = v30 + v19;
          v4 = v41 >= v32;
          v42 = v41 - v32;
          if (v4)
          {
            v36 = v42;
          }

          else
          {
            v36 = v19;
          }
        }
      }

      else
      {
        v35 = v9;
        v36 = v19;
      }

      v31 += 2;
      v9 = v35;
      v19 = v36;
      --v28;
    }

    while (v28);
  }

  else
  {
    LOBYTE(v35) = v9;
    LOBYTE(v36) = v19;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "FindResBytePosition");
  if (!v36)
  {
    v43 = v8;
    phOsalNfc_MemCopy();
    goto LABEL_88;
  }

  if ((v35 & 8) != 0 || *(a1 + 248) <= *(a1 + 252))
  {
    v43 = 0;
    if ((v35 & 4) != 0)
    {
      goto LABEL_80;
    }

LABEL_78:
    v44 = *(a1 + 252) + v43;
    if (*(a1 + 248) > v44)
    {
      *(a1 + 268) = *(*(a1 + 240) + v44);
      ++v43;
    }

    goto LABEL_80;
  }

  *(a1 + 267) = *(*(a1 + 240) + *(a1 + 252));
  v43 = 1;
  if ((v35 & 4) == 0)
  {
    goto LABEL_78;
  }

LABEL_80:
  if ((v35 & 2) == 0)
  {
    v45 = *(a1 + 252) + v43;
    if (*(a1 + 248) > v45)
    {
      *(a1 + 269) = *(*(a1 + 240) + v45);
      ++v43;
    }
  }

  if ((v35 & 1) == 0)
  {
    v46 = *(a1 + 252) + v43;
    if (*(a1 + 248) > v46)
    {
      *(a1 + 270) = *(*(a1 + 240) + v46);
      ++v43;
    }
  }

  v8 = v43;
LABEL_88:
  *(a1 + 216) = v8;
  **(a1 + 528) = v8 + v36 + *(a1 + 644) + *(a1 + 218);
  v47 = v43 + *(a1 + 644);
  if (v47 + v36 <= 3)
  {
    v48 = v47 + *(a1 + 218);
    v49 = v36 + v48 + 1;
    if ((v36 + v47 + *(a1 + 218) + 1) <= 4u)
    {
      v50 = 0;
      v51 = v36 + v48 + 1;
      *(a1 + 74) = 1;
      v52 = vdupq_n_s64(4 - v49);
      v53 = (19 - (v36 + v48)) & 0x10;
      v54 = v51 - v49;
      v55 = a1 + v49 + 281;
      do
      {
        v56 = vdupq_n_s64(v50);
        v57 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v56, xmmword_297F13220)));
        if (vuzp1_s8(vuzp1_s16(v57, *v52.i8), *v52.i8).u8[0])
        {
          if (v54 == v50)
          {
            v58 = -2;
          }

          else
          {
            v58 = 0;
          }

          *(v55 + v50 - 15) = v58;
        }

        if (vuzp1_s8(vuzp1_s16(v57, *&v52), *&v52).i8[1])
        {
          if (v54 - 1 == v50)
          {
            v59 = -2;
          }

          else
          {
            v59 = 0;
          }

          *(v55 + v50 - 14) = v59;
        }

        v60 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v56, xmmword_297F13210)));
        if (vuzp1_s8(vuzp1_s16(*&v52, v60), *&v52).i8[2])
        {
          if (v54 - 2 == v50)
          {
            v61 = -2;
          }

          else
          {
            v61 = 0;
          }

          *(v55 + v50 - 13) = v61;
        }

        if (vuzp1_s8(vuzp1_s16(*&v52, v60), *&v52).i8[3])
        {
          if (v54 - 3 == v50)
          {
            v62 = -2;
          }

          else
          {
            v62 = 0;
          }

          *(v55 + v50 - 12) = v62;
        }

        v63 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v56, xmmword_297F13710)));
        if (vuzp1_s8(*&v52, vuzp1_s16(v63, *&v52)).i32[1])
        {
          if (v54 - 4 == v50)
          {
            v64 = -2;
          }

          else
          {
            v64 = 0;
          }

          *(v55 + v50 - 11) = v64;
        }

        if (vuzp1_s8(*&v52, vuzp1_s16(v63, *&v52)).i8[5])
        {
          if (v54 - 5 == v50)
          {
            v65 = -2;
          }

          else
          {
            v65 = 0;
          }

          *(v55 + v50 - 10) = v65;
        }

        v66 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v56, xmmword_297F13700)));
        if (vuzp1_s8(*&v52, vuzp1_s16(*&v52, v66)).i8[6])
        {
          if (v54 - 6 == v50)
          {
            v67 = -2;
          }

          else
          {
            v67 = 0;
          }

          *(v55 + v50 - 9) = v67;
        }

        if (vuzp1_s8(*&v52, vuzp1_s16(*&v52, v66)).i8[7])
        {
          if (v54 - 7 == v50)
          {
            v68 = -2;
          }

          else
          {
            v68 = 0;
          }

          *(v55 + v50 - 8) = v68;
        }

        v69 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v56, xmmword_297F136F0)));
        if (vuzp1_s8(vuzp1_s16(v69, *v52.i8), *v52.i8).u8[0])
        {
          if (v54 - 8 == v50)
          {
            v70 = -2;
          }

          else
          {
            v70 = 0;
          }

          *(v55 + v50 - 7) = v70;
        }

        if (vuzp1_s8(vuzp1_s16(v69, *&v52), *&v52).i8[1])
        {
          if (v54 - 9 == v50)
          {
            v71 = -2;
          }

          else
          {
            v71 = 0;
          }

          *(v55 + v50 - 6) = v71;
        }

        v72 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v56, xmmword_297F136E0)));
        if (vuzp1_s8(vuzp1_s16(*&v52, v72), *&v52).i8[2])
        {
          if (v54 - 10 == v50)
          {
            v73 = -2;
          }

          else
          {
            v73 = 0;
          }

          *(v55 + v50 - 5) = v73;
        }

        if (vuzp1_s8(vuzp1_s16(*&v52, v72), *&v52).i8[3])
        {
          if (v54 - 11 == v50)
          {
            v74 = -2;
          }

          else
          {
            v74 = 0;
          }

          *(v55 + v50 - 4) = v74;
        }

        v75 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v56, xmmword_297F136D0)));
        if (vuzp1_s8(*&v52, vuzp1_s16(v75, *&v52)).i32[1])
        {
          if (v54 - 12 == v50)
          {
            v76 = -2;
          }

          else
          {
            v76 = 0;
          }

          *(v55 + v50 - 3) = v76;
        }

        if (vuzp1_s8(*&v52, vuzp1_s16(v75, *&v52)).i8[5])
        {
          if (v54 - 13 == v50)
          {
            v77 = -2;
          }

          else
          {
            v77 = 0;
          }

          *(v55 + v50 - 2) = v77;
        }

        v78 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v56, xmmword_297F136C0)));
        if (vuzp1_s8(*&v52, vuzp1_s16(*&v52, v78)).i8[6])
        {
          if (v54 - 14 == v50)
          {
            v79 = -2;
          }

          else
          {
            v79 = 0;
          }

          *(v55 + v50 - 1) = v79;
        }

        if (vuzp1_s8(*&v52, vuzp1_s16(*&v52, v78)).i8[7])
        {
          if (v54 - 15 == v50)
          {
            v80 = -2;
          }

          else
          {
            v80 = 0;
          }

          *(v55 + v50) = v80;
        }

        v50 += 16;
      }

      while (v53 != v50);
    }
  }

  phOsalNfc_MemCopy();
  v81 = *(a1 + 67);
  v82 = *(a1 + 646);
  if (*(a1 + 68) - 1 <= 2)
  {
    if (v81 == v82)
    {
      v83 = *(a1 + 647);
      v84 = *(a1 + 70);
      if (v83 != v84)
      {
LABEL_178:
        v85 = v84 + 1;
        goto LABEL_185;
      }

      phOsalNfc_MemCopy();
      v81 = *(a1 + 67);
      v82 = *(a1 + 646);
    }

    if (v81 != v82)
    {
      goto LABEL_187;
    }

    v84 = *(a1 + 70);
    v83 = *(a1 + 647);
    goto LABEL_178;
  }

  if (v81 != v82)
  {
    goto LABEL_182;
  }

  v83 = *(a1 + 647);
  v86 = *(a1 + 70);
  if (v86 + 1 == v83)
  {
    phOsalNfc_MemCopy();
    v81 = *(a1 + 67);
    v82 = *(a1 + 646);
LABEL_182:
    if (v81 != v82)
    {
      goto LABEL_187;
    }

    v86 = *(a1 + 70);
    v83 = *(a1 + 647);
  }

  v85 = v86 + 2;
LABEL_185:
  if (v85 == v83)
  {
    phOsalNfc_MemCopy();
  }

LABEL_187:
  *a1 = 2;
  *(a1 + 218) = 0;
  v87 = sub_297ED4A38(a1);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_fillSendBufToWr");
  return v87;
}

uint64_t sub_297ED2424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 8, 5u, "phFriNfc_MifareUL_ChkNdef");
  sub_297E57170(v9, &v8);
  v5 = 1;
  if (a3)
  {
    if (a2)
    {
      v6 = v8;
      if (v8)
      {
        *(v8 + 8) = a2;
        *(v6 + 40) = a3;
        *(v6 + 547) = 1;
        *(v6 + 208) &= 0xFCu;
        *(v6 + 212) = 0;
        *(v6 + 70) = 4;
        *(v6 + 647) = 2;
        *(v6 + 2710) = 0;
        *(v6 + 540) = 1;
        *(v6 + 266) = 2;
        *(v6 + 526) = 1;
        *v6 = 3;
        *(v6 + 544) = 1;
        *(v6 + 232) = 48;
        *(v6 + 48) = sub_297ED2558;
        *(v6 + 56) = v6;
        *(v6 + 264) = 16;
        sub_297ED26C0(v6, 48, v6 + 266, 1, v6 + 264);
        v5 = sub_297E98D38(v8, sub_297ED29B0);
      }
    }
  }

  sub_297E4DFAC(0, &v9, 8, 5u, "phFriNfc_MifareUL_ChkNdef");
  return v5;
}

uint64_t sub_297ED2558(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v11 = a1;
  sub_297E4E1B4(0, &v11, 8, 5u, "phFriNfc_MifareUL_Process");
  byte_2A13A5D4D = 0;
  sub_297E4E0B0(0, (a2 + 2712), 8, 4u, "Received response from card!");
  if (a3)
  {
    goto LABEL_12;
  }

  sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_MifareUL_GetNdefFuncIndex");
  v5 = 0;
  v6 = -1;
  v7 = &byte_2A1E95730;
  do
  {
    v8 = *v7;
    v7 += 16;
    if (*a2 == v8)
    {
      v6 = v5;
    }

    ++v5;
  }

  while (v5 != 20);
  sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_MifareUL_GetNdefFuncIndex");
  if (v6 == 0xFF)
  {
    a3 = 245;
    sub_297ED54CC(a2, 245);
  }

  else
  {
    v9 = *(&off_2A1E95728 + 2 * v6);
    a3 = v9 ? v9(a2, &byte_2A13A5D4D) : 0;
  }

  if (byte_2A13A5D4D == 1)
  {
LABEL_12:
    sub_297ED54CC(a2, a3);
  }

  return sub_297E4DFAC(0, &v11, 8, 5u, "phFriNfc_MifareUL_Process");
}

uint64_t sub_297ED26C0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phLibNfc_PrintSendData");
  sub_297E4E0B0(2, a1, 8, 4u, "==============================================");
  if (a2 > 96)
  {
    if (a2 <= 175)
    {
      if (a2 > 161)
      {
        if (a2 == 162)
        {
          v9 = "phLibNfc_PrintSendData: phHal_eMifareWrite4";
          goto LABEL_47;
        }

        if (a2 == 168)
        {
          v9 = "phLibNfc_PrintSendData: phHal_eMifareWriteSector";
          goto LABEL_47;
        }
      }

      else
      {
        if (a2 == 97)
        {
          v9 = "phLibNfc_PrintSendData: phHal_eMifareAuthentB";
          goto LABEL_47;
        }

        if (a2 == 160)
        {
          v9 = "phLibNfc_PrintSendData: phHal_eMifareWrite16";
          goto LABEL_47;
        }
      }
    }

    else if (a2 <= 192)
    {
      if (a2 == 176)
      {
        v9 = "phLibNfc_PrintSendData: phHal_eMifareTransfer";
        goto LABEL_47;
      }

      if (a2 == 192)
      {
        v9 = "phLibNfc_PrintSendData: phHal_eMifareDec";
        goto LABEL_47;
      }
    }

    else
    {
      switch(a2)
      {
        case 193:
          v9 = "phLibNfc_PrintSendData: phHal_eMifareInc";
          goto LABEL_47;
        case 194:
          v9 = "phLibNfc_PrintSendData: phHal_eMifareRestore";
          goto LABEL_47;
        case 255:
          v9 = "phLibNfc_PrintSendData: phHal_eMifareInvalidCmd";
          goto LABEL_47;
      }
    }

LABEL_46:
    v9 = "phLibNfc_PrintSendData: Invalid";
    goto LABEL_47;
  }

  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v9 = "phLibNfc_PrintSendData: phHal_eMifareWriteN";
      }

      else
      {
        v9 = "phLibNfc_PrintSendData: phHal_eMifareSectorSel";
      }

      goto LABEL_47;
    }

    if (!a2)
    {
      v9 = "phLibNfc_PrintSendData: phHal_eMifareRaw";
      goto LABEL_47;
    }

    if (a2 == 1)
    {
      v9 = "phLibNfc_PrintSendData: phHal_eMifareReadN";
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (a2 <= 47)
  {
    if (a2 == 4)
    {
      v9 = "phLibNfc_PrintSendData: phHal_eMifareAuth";
      goto LABEL_47;
    }

    if (a2 == 5)
    {
      v9 = "phLibNfc_PrintSendData: phHal_eMifareProxCheck";
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (a2 != 48)
  {
    if (a2 == 56)
    {
      v9 = "phLibNfc_PrintSendData: phHal_eMifareReadSector";
      goto LABEL_47;
    }

    if (a2 == 96)
    {
      v9 = "phLibNfc_PrintSendData: phHal_eMifareAuthentA";
LABEL_47:
      sub_297E4E0B0(2, a1, 8, 4u, v9);
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  sub_297E4E0B0(2, a1, 8, 4u, "phLibNfc_PrintSendData: phHal_eMifareRead16/phHal_eMifareRead");
  if (a3)
  {
    sub_297E50DB0(2, a1, 8, 4u, "Block address");
    sub_297E50DB0(2, a1, 8, 4u, "Length of Send buffer");
  }

  if (a5)
  {
    sub_297E50DB0(2, a1, 8, 4u, "Length of receive buffer");
  }

LABEL_48:
  sub_297E4E0B0(2, a1, 8, 4u, "==============================================");

  return sub_297E4DFAC(2, a1, 8, 5u, "phLibNfc_PrintSendData");
}

uint64_t sub_297ED29B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_MifareUL_CB_Transceive");
  sub_297E57170(v10, &v9);
  v7 = v9;
  if (v9)
  {
    if (a4)
    {
      *(v9 + 264) = *(a4 + 8);
    }

    (*(v7 + 48))(*(v7 + 2712), v7, a5);
  }

  return sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_MifareUL_CB_Transceive");
}

uint64_t sub_297ED2A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 8, 5u, "phFriNfc_MfUL_ConvertToReadOnly");
  sub_297E57170(v9, &v8);
  v5 = 1;
  if (a2)
  {
    v6 = v8;
    if (v8)
    {
      *(v8 + 32) = a2;
      *(v6 + 40) = a3;
      *(v6 + 547) = 6;
      *(v6 + 647) = 1027;
      *(v6 + 2710) = 0;
      *(v6 + 540) = 1;
      *(v6 + 266) = 3;
      *(v6 + 526) = 1;
      *v6 = 7;
      *(v6 + 544) = 1;
      *(v6 + 232) = 48;
      *(v6 + 48) = sub_297ED2558;
      *(v6 + 56) = v6;
      *(v6 + 264) = 16;
      sub_297ED26C0(v6, 48, v6 + 266, 1, v6 + 264);
      v5 = sub_297E98D38(v8, sub_297ED29B0);
    }
  }

  sub_297E4DFAC(0, &v9, 8, 5u, "phFriNfc_MfUL_ConvertToReadOnly");
  return v5;
}

uint64_t sub_297ED2B64(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iChkNdefComp");
  if (*(a1 + 264) != 16)
  {
    *a2 = 1;
    v6 = 27;
    goto LABEL_24;
  }

  sub_297E4E0B0(0, a1 + 2712, 8, 4u, "Checking CC in the response");
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_ChkCCBytes");
  sub_297E4E0B0(0, a1 + 2712, 8, 4u, "Verifying Capability container (CC) of the card...");
  v4 = *(a1 + 273);
  if (*(a1 + 273))
  {
    if (v4 != 15)
    {
      sub_297E4E0B0(0, a1 + 2712, 8, 4u, "Invalid Read/Write state");
      *(a1 + 545) = 3;
      goto LABEL_11;
    }

    LOBYTE(v4) = 1;
    v5 = "Card is Read-Only";
  }

  else
  {
    v5 = "Card is Read-Writable";
  }

  sub_297E4E0B0(0, a1 + 2712, 8, 4u, v5);
  *(a1 + 545) = v4;
  if (*(a1 + 270) == 225)
  {
    sub_297E4E0B0(0, a1 + 2712, 8, 4u, "NFC Forum defined data is stored in the data area (Byte 0 of CC is 0xE1)");
    v6 = sub_297E9C178(a1, 5u);
    if (v6)
    {
      v7 = *(a1 + 204);
    }

    else
    {
      v7 = 8 * *(a1 + 272);
    }

    *(a1 + 204) = v7;
    *(a1 + 650) = v7;
    if (v7 >= 0x101)
    {
      v8 = v7 - 2;
      *(a1 + 204) = v8;
      *(a1 + 650) = v8;
    }

    sub_297E50DB0(0, a1 + 2712, 8, 4u, "Memory size:)");
    goto LABEL_16;
  }

LABEL_11:
  sub_297E4E0B0(0, a1 + 2712, 8, 4u, "Failed: Either E1 byte check failed or card is in invalid state");
  *(a1 + 545) = 3;
  v6 = 22;
LABEL_16:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_ChkCCBytes");
  *a2 = v6 != 0;
  if (v6)
  {
    *(a1 + 647) = 4;
  }

  else
  {
    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_ChkLockBits");
    sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_ChkLockBits");
    *(a1 + 647) = 4;
    v6 = sub_297ED1358(a1, 4);
  }

  if (v6 == 13)
  {
    *a2 = *a2;
  }

  else
  {
    *a2 = 1;
    if (v6 && v6 != 25)
    {
      *(a1 + 545) = 3;
    }
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iChkNdefComp");
  return v6;
}

uint64_t sub_297ED2E14(uint64_t a1, BOOL *a2)
{
  v76 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iRead");
  if (*(a1 + 264) != 16)
  {
    v22 = 27;
    v23 = 1;
    goto LABEL_111;
  }

  v4 = *(a1 + 82);
  v5 = 4 * (*(a1 + 70) & 3);
  v6 = *(a1 + 68);
  v7 = v6 - 1;
  if (*(a1 + 68))
  {
    v8 = v6 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + v5;
  v10 = (v8 + v5);
  if ((v8 + v5) >= 0x10000)
  {
    v11 = 0;
  }

  else
  {
    v11 = (v8 + v5);
  }

  if (v4 >= 0xFF)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v12 + v4 >= 0x10000)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v12 + v4);
  }

  v14 = (v11 + v13) >> 16;
  if (!*(a1 + 68))
  {
    v7 = 0;
  }

  v15 = v7 + v5;
  if (v9 >= 0x10000)
  {
    v15 = 0;
  }

  v16 = (v15 + v13);
  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(a1 + 2710);
  if (!((v17 + v18) >> 16))
  {
    v19 = *(a1 + 2700);
    if (HIWORD(v9))
    {
      v21 = 0;
    }

    else
    {
      if ((v13 + v10) >> 16)
      {
        v24 = 0;
LABEL_31:
        if (v19 >= (v24 + v18))
        {
          goto LABEL_89;
        }

        memset(v75, 0, sizeof(v75));
        sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_CopyRdBytes");
        sub_297E4E1B4(2, a1, 8, 5u, "cpDynLockBytes");
        v25 = *(a1 + 132);
        if (*(a1 + 132))
        {
          v26 = 0;
          v27 = 4 * *(a1 + 647);
          v28 = v27 & 0xC;
          v29 = v27 & 0xFFFF03FF | ((*(a1 + 646) & 0x3F) << 10);
          v30 = 16 - v28;
          v31 = (a1 + 100);
          do
          {
            v32 = *(v31 - 1);
            v33 = *v31;
            if (v29 <= (v32 + v33 - 1) && v29 + 16 > v32)
            {
              v35 = v75 + 2 * v26;
              if (v32 <= v29)
              {
                *v35 = v29;
                if ((v32 + v33 - v29) <= 0x10u)
                {
                  v37 = v32 + v33 - v29;
                }

                else
                {
                  v37 = v30;
                }

                *(v75 + 2 * v26 + 1) = v37;
              }

              else
              {
                *v35 = v32;
                v36 = v75 + 4 * v26;
                *(v36 + 2) = v33;
                if (v33 >= 0x11)
                {
                  *(v36 | 2) = 16 - (v32 & 0xF);
                }
              }

              ++v26;
            }

            v31 += 2;
            --v25;
          }

          while (v25);
        }

        else
        {
          v26 = 0;
        }

        sub_297E4DFAC(2, a1, 8, 5u, "cpDynLockBytes");
        sub_297E4E1B4(2, a1, 8, 5u, "cpReservedBytes");
        v38 = *(a1 + 186);
        if (*(a1 + 186))
        {
          v39 = 4 * *(a1 + 647);
          v40 = v39 & 0xC;
          v41 = v39 & 0xFFFF03FF | ((*(a1 + 646) & 0x3F) << 10);
          v42 = 16 - v40;
          v43 = (a1 + 154);
          do
          {
            v44 = *(v43 - 1);
            v45 = *v43;
            if (v41 <= (v44 + v45 - 1) && v41 + 16 > v44)
            {
              v47 = v75 + 2 * v26;
              if (v44 <= v41)
              {
                *v47 = v41;
                if ((v44 + v45 - v41) <= 0x10u)
                {
                  v49 = v44 + v45 - v41;
                }

                else
                {
                  v49 = v42;
                }

                *(v75 + 2 * v26 + 1) = v49;
              }

              else
              {
                *v47 = v44;
                v48 = v75 + 4 * v26;
                *(v48 + 2) = v45;
                if (v45 >= 0x11)
                {
                  *(v48 | 2) = 16 - (v44 & 0xF);
                }
              }

              ++v26;
            }

            v43 += 2;
            --v38;
          }

          while (v38);
        }

        sub_297E4DFAC(2, a1, 8, 5u, "cpReservedBytes");
        sub_297E9C28C(a1, v75, v26);
        if (v26)
        {
          v72 = v4;
          v73 = a2;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v54 = v75;
          v74 = v75[0];
          v55 = v26;
          do
          {
            if (v50)
            {
              v56 = *v54 - (v52 + v51);
            }

            else
            {
              v56 = v74 - 4 * *(a1 + 647);
            }

            if (v56)
            {
              phOsalNfc_MemCopy();
              if (v56 + v19 >= 0x10000)
              {
                LOWORD(v19) = 0;
              }

              else
              {
                LOWORD(v19) = v19 + v56;
              }

              v55 = v26;
            }

            v51 = v54[2];
            v53 += v56 + v51;
            ++v50;
            v57 = *v54;
            v54 += 4;
            v52 = v57;
          }

          while (v50 < v55);
          a2 = v73;
          v4 = v72;
          if (v53 >= 0x11u)
          {
            v58 = *(a1 + 2700);
            goto LABEL_81;
          }
        }

        else
        {
          v53 = 0;
        }

        phOsalNfc_MemCopy();
        v58 = v19 - v53 + 16;
        *(a1 + 2700) = v58;
LABEL_81:
        v59 = *(a1 + 82);
        v60 = *(a1 + 647);
        if (v59 >= 0xFF)
        {
          v61 = 4;
        }

        else
        {
          v61 = 2;
        }

        v62 = v61 + v59 + *(a1 + 2710) > v58;
        if ((v60 + 4 * v62) > 0xFF)
        {
          if (!*(a1 + 646))
          {
            *(a1 + 646) = -255;
            v22 = sub_297ED1760(a1, 1, 1, 13);
            sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_CopyRdBytes");
            if (v22)
            {
              v23 = 0;
              goto LABEL_111;
            }

            goto LABEL_88;
          }
        }

        else
        {
          *(a1 + 647) = v60 + 4 * v62;
        }

        sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_CopyRdBytes");
LABEL_88:
        v6 = *(a1 + 68);
        v18 = *(a1 + 2710);
        v5 = 4 * (*(a1 + 70) & 3);
        goto LABEL_89;
      }

      v20 = v6 - 1;
      if (!*(a1 + 68))
      {
        v20 = 0;
      }

      v21 = v20 + v5;
    }

    v24 = v21 + v13;
    goto LABEL_31;
  }

LABEL_89:
  v63 = v4 + v12 + v18 + v5 + v6 - 1;
  if (!HIWORD(v63))
  {
    if (v63 <= *(a1 + 2700))
    {
      sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_CalcByteNum");
      v65 = 652;
      while (1)
      {
        if (*(a1 + v65) == 3)
        {
          v66 = *(a1 + v65 + 1);
          v67 = *(a1 + 82);
          v68 = v66 == 255 || v67 == v66;
          if (v68 && (v66 != 255 || v67 == bswap32(*(a1 + v65 + 2)) >> 16))
          {
            break;
          }
        }

        if (++v65 == 668)
        {
          goto LABEL_105;
        }
      }

      *(a1 + 2702) = v65 - 651;
LABEL_105:
      sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_CalcByteNum");
      v69 = *(a1 + 2702);
      if (*(a1 + 652 + v69) == 255)
      {
        v70 = v69 + 3;
      }

      else
      {
        v70 = v69 + 1;
      }

      *(a1 + 2702) = v70;
      sub_297ED1444(a1);
      v23 = 1;
      if (!*(a1 + 646))
      {
        v22 = 0;
        goto LABEL_111;
      }

      *(a1 + 646) = 0;
      *(a1 + 543) = 1;
      v64 = sub_297ED1760(a1, 0, 1, 11);
    }

    else
    {
      v64 = sub_297ED34C0(a1);
    }

    v22 = v64;
    v23 = v64 != 13;
LABEL_111:
    *a2 = v23;
    goto LABEL_112;
  }

  v22 = 27;
LABEL_112:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iRead");
  return v22;
}

uint64_t sub_297ED34C0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_Rd16Bytes");
  v2 = 1;
  *a1 = 1;
  *(a1 + 540) = 2;
  if (*(a1 + 248) > *(a1 + 252))
  {
    *(a1 + 208) &= 0xFCu;
    *(a1 + 212) = 0;
    *(a1 + 266) = *(a1 + 647);
    *(a1 + 526) = 1;
    *(a1 + 264) = 260;
    *(a1 + 232) = 48;
    v2 = sub_297E98D38(a1, sub_297ED29B0);
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_Rd16Bytes");
  return v2;
}

uint64_t sub_297ED358C(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iWrite");
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_ProWrittenBytes");
  v4 = *(a1 + 252);
  v5 = *(a1 + 248);
  if (v4 >= v5)
  {
    v9 = 29;
  }

  else
  {
    v6 = *(a1 + 216);
    v7 = v6 + v4;
    *(a1 + 252) = v6 + v4;
    if (**(a1 + 528) > 3u)
    {
      v8 = 0;
    }

    else
    {
      phOsalNfc_MemCopy();
      v8 = **(a1 + 528);
      v6 = *(a1 + 216);
      v7 = *(a1 + 252);
      v5 = *(a1 + 248);
    }

    *(a1 + 644) = v8;
    v10 = *(a1 + 650);
    *(a1 + 650) = v10 - v6;
    if (v5 == v7 || v10 == v6)
    {
      *(a1 + 2704) = v10 == v6;
      v14 = v10 == v6 || *(a1 + 74) == 1;
      *(a1 + 74) = v14;
      if (v8)
      {
        v15 = *(a1 + 647);
      }

      else
      {
        v15 = *(a1 + 647) + 1;
      }

      *(a1 + 647) = v15;
      **(a1 + 256) = v7;
      if (!v14)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    v11 = *(a1 + 647);
    v12 = sub_297ED5998(a1, v11 + 1, *(a1 + 646));
    if (v11 == 255)
    {
      if (!v12 || !sub_297ED5A78(a1, 256, *(a1 + 646)))
      {
        *(a1 + 540) = 5;
      }

      v17 = *(a1 + 646) + 1;
      *(a1 + 646) = v17;
      v13 = sub_297ED1760(a1, v17, 1, 15);
    }

    else if (v12 && sub_297ED5A78(a1, v11 + 1, *(a1 + 646)))
    {
      ++*(a1 + 647);
      v13 = sub_297ED1B28(a1);
    }

    else
    {
      *(a1 + 540) = 5;
      v13 = sub_297ED1358(a1, v11 + 1);
    }

    v9 = v13;
    if (!v13)
    {
      if (*(a1 + 74) != 1)
      {
LABEL_27:
        if (!*(a1 + 650))
        {
          v9 = 0;
          goto LABEL_30;
        }

        v16 = sub_297ED3F48(a1);
        goto LABEL_29;
      }

LABEL_19:
      v16 = sub_297ED3FD4(a1);
LABEL_29:
      v9 = v16;
    }
  }

LABEL_30:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_ProWrittenBytes");
  *a2 = v9 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iWrite");
  return v9;
}

uint64_t sub_297ED37E4(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_findNDEFTLV");
  if (*(a1 + 72) == 1 || ((v4 = *(a1 + 68), v5 = v4 != 0, v6 = v4 - 1, v5) ? (v7 = v6) : (v7 = 0), *(a1 + 73) == 1))
  {
    sub_297E4E1B4(2, a1, 8, 5u, "procSplitTlv");
    if (*(a1 + 72) == 1)
    {
      v7 = *(a1 + 266) + 1;
      v8 = *(a1 + 2709);
      if (v8 == 2)
      {
        v9 = sub_297ED5848(a1, 1u);
      }

      else
      {
        if (v8 != 1)
        {
          v12 = 255;
          goto LABEL_18;
        }

        v9 = sub_297ED56D8(a1, 1u);
      }

      v12 = v9;
LABEL_18:
      *(a1 + 72) = 0;
      goto LABEL_23;
    }

    if (*(a1 + 73) != 1)
    {
      sub_297E4DFAC(2, a1, 8, 5u, "procSplitTlv");
LABEL_24:
      v13 = 255;
      goto LABEL_72;
    }

    v10 = *(a1 + 2709);
    if (v10 == 2)
    {
      v11 = sub_297ED5848(a1, 0);
    }

    else
    {
      if (v10 != 1)
      {
        v12 = 255;
        goto LABEL_22;
      }

      v11 = sub_297ED56D8(a1, 0);
    }

    v12 = v11;
LABEL_22:
    *(a1 + 73) = 0;
    v7 = 3;
LABEL_23:
    *(a1 + 75) = 0;
    sub_297E4DFAC(2, a1, 8, 5u, "procSplitTlv");
    if (v12 == 255)
    {
      goto LABEL_24;
    }
  }

  v14 = a1 + 266;
  while (1)
  {
    while (1)
    {
      v15 = v7;
      v16 = *(v14 + v7);
      if (v16 > 0xFC)
      {
        if (v16 == 253)
        {
          goto LABEL_35;
        }

        if (v16 == 254)
        {
LABEL_65:
          *a2 = 1;
          goto LABEL_66;
        }

LABEL_67:
        *(a1 + 66) = v16 == 3;
        if (v16 != 3)
        {
          v33 = "No NDEF TLV found!";
          goto LABEL_74;
        }

        *(a1 + 68) = (v7 & 3) + 1;
        v30 = (*(a1 + 70) & 0xFC) + (v7 >> 2);
        *(a1 + 70) = v30;
        *(a1 + 67) = *(a1 + 646);
        *(a1 + 650) = *(a1 + 204) - (v7 & 3 | (4 * v30)) - (*(a1 + 133) + *(a1 + 187)) + 14;
        v19 = sub_297ED5620(a1, v7);
        if (v19)
        {
          goto LABEL_70;
        }

        if (!*(a1 + 650))
        {
          goto LABEL_66;
        }

        v19 = sub_297ED5620(a1, (v7 + 1));
        if (v19)
        {
LABEL_70:
          v13 = v19;
          *(a1 + 72) = 1;
          v31 = 3;
LABEL_71:
          *(a1 + 75) = v31;
          goto LABEL_72;
        }

        v34 = *(v14 + (v7 + 1));
        if (v34 == 255)
        {
          v35 = sub_297ED5620(a1, (v7 + 2));
          if (v35)
          {
            v13 = v35;
            *(a1 + 72) = 1;
            v31 = 2;
            goto LABEL_71;
          }

          v37 = *(v14 + (v7 + 2));
          v38 = sub_297ED5620(a1, (v7 + 3));
          if (v38)
          {
            v13 = v38;
            *(a1 + 72) = 1;
            *(a1 + 75) = 1;
            *(a1 + 78) = *(v14 + (v7 + 3) - 1);
            goto LABEL_72;
          }

          v34 = *(v14 + (v7 + 3)) | (v37 << 8);
          if (v34 > *(a1 + 650))
          {
            *(a1 + 82) = v34;
            goto LABEL_96;
          }

          *(a1 + 80) = v34;
          *(a1 + 82) = v34;
          *(a1 + 66) = 1;
          *(a1 + 67) = *(a1 + 646);
LABEL_98:
          if (*(a1 + 75))
          {
            v13 = 0;
            goto LABEL_72;
          }

          v28 = sub_297E9C0B8(a1, v34);
LABEL_62:
          v13 = v28;
          goto LABEL_72;
        }

        *(a1 + 80) = v34;
        *(a1 + 82) = v34;
        v36 = *(a1 + 650);
        if (v36 < v34 || v36 < 2)
        {
          if (v34)
          {
            if (v36 < v34)
            {
LABEL_96:
              *a2 = 1;
              v13 = 25;
              goto LABEL_72;
            }

            v13 = 22;
LABEL_93:
            *a2 = 1;
            goto LABEL_72;
          }
        }

        else if (v34 || *(a1 + 540) != 2)
        {
          goto LABEL_98;
        }

        if (*(a1 + 65))
        {
          v13 = 22;
        }

        else
        {
          v13 = 157;
        }

        goto LABEL_93;
      }

      if (v16 - 1 >= 2)
      {
        break;
      }

LABEL_35:
      *(a1 + 2710) += *(v14 + v7 + 1) + 2;
      *(a1 + 2709) = *(v14 + v7);
      *(a1 + 68) = (v7 & 3) + 1;
      v19 = sub_297ED5620(a1, v7);
      if (v19)
      {
        goto LABEL_70;
      }

      v20 = *(a1 + 650) - 1;
      *(a1 + 650) = v20;
      if (!v20)
      {
        goto LABEL_66;
      }

      v21 = v7 + 1;
      v19 = sub_297ED5620(a1, (v7 + 1));
      if (v19)
      {
        goto LABEL_70;
      }

      v22 = *(v14 + (v7 + 1));
      if (*(v14 + (v7 + 1)))
      {
        if (v22 == 255)
        {
          goto LABEL_65;
        }
      }

      else if (*(a1 + 66) != 1)
      {
        goto LABEL_65;
      }

      *(a1 + 80) = v22;
      *(a1 + 82) = v22;
      v23 = *(a1 + 650);
      if (v23 < v22 || v23 < 2 || !v22 && *(a1 + 540) == 2)
      {
        sub_297E4E0B0(0, a1 + 2712, 8, 4u, "No NDEF TLV found!");
        goto LABEL_65;
      }

      ++v7;
      if (*(a1 + 66) != 1)
      {
        *(a1 + 68) = ((v15 + 2 + v22) & 3) + 1;
        v24 = (*(a1 + 70) & 0xFC) + ((v22 + v21 + 1) >> 2);
        *(a1 + 70) = v24;
        if ((v15 + 1) != 15 || (v25 = *(a1 + 280), v25 != 2) && v25 != 1)
        {
          v26 = *(v14 + (v15 + 1) - 1);
          if (v26 == 2)
          {
            v27 = sub_297ED5848(a1, (v15 + 2));
          }

          else
          {
            if (v26 != 1)
            {
              goto LABEL_60;
            }

            v27 = sub_297ED56D8(a1, (v15 + 2));
          }

          if (v27 == 255)
          {
            goto LABEL_24;
          }

          LOWORD(v23) = *(a1 + 650);
          goto LABEL_60;
        }

        *(a1 + 73) = 1;
        *(a1 + 647) = v24;
LABEL_60:
        v29 = *(v14 + (v15 + 1));
        *(a1 + 650) = v23 + ~v29;
        v7 = v21 + v29 + 1;
        if ((v21 + v29) >= 0x10u)
        {
          v28 = sub_297ED1358(a1, *(a1 + 70));
          goto LABEL_62;
        }
      }
    }

    if (*(v14 + v7))
    {
      goto LABEL_67;
    }

    v17 = *(a1 + 650) - 1;
    *(a1 + 650) = v17;
    if (!v17)
    {
      break;
    }

    v18 = *(a1 + 68);
    if (v18 == 4)
    {
      *(a1 + 68) = 1;
      ++*(a1 + 70);
    }

    else
    {
      if (!*(a1 + 68))
      {
        LOBYTE(v18) = 1;
      }

      *(a1 + 68) = (v18 & 3) + 1;
    }

    ++v7;
    v28 = sub_297ED5620(a1, (v15 + 1));
    if (v28)
    {
      goto LABEL_62;
    }
  }

  v33 = "No NDEF TLV found, complete card has been read";
LABEL_74:
  sub_297E4E0B0(0, a1 + 2712, 8, 4u, v33);
LABEL_66:
  v13 = 22;
LABEL_72:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_findNDEFTLV");
  return v13;
}

uint64_t sub_297ED3DF8(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_NxtOp");
  v4 = *(a1 + 540);
  if (v4 == 2)
  {
    if (*(a1 + 67) == 1)
    {
      *(a1 + 646) = 1;
      v6 = sub_297ED1760(a1, 1, 1, 13);
    }

    else
    {
      *(a1 + 647) = *(a1 + 70) & 0xFC;
      v6 = sub_297ED34C0(a1);
    }

    v5 = v6;
    *a2 = v6 != 13;
  }

  else if (v4 == 1 && (*a2 = 1, *(a1 + 204) - 2 < *(a1 + 82)))
  {
    sub_297E4E0B0(2, a1, 8, 2u, "phFriNfc_MfUL_H_findNDEFTLV: Current NDEF message exceeds the Maximum Tag NDEF size");
    sub_297E50EBC(2, a1, 8, 2u, "phFriNfc_MfUL_H_findNDEFTLV:Current Ndef Message size");
    sub_297E50EBC(2, a1, 8, 2u, "phFriNfc_MfUL_H_findNDEFTLV:Maximum Ndef Message size");
    *(a1 + 545) = 0;
    v5 = 25;
  }

  else
  {
    v5 = 0;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_NxtOp");
  return v5;
}

uint64_t sub_297ED3F48(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_WrTermTLV");
  *a1 = 5;
  *(a1 + 266) = *(a1 + 647);
  *(a1 + 267) = -2;
  *(a1 + 268) = 0;
  v2 = sub_297ED4A38(a1);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_WrTermTLV");
  return v2;
}

uint64_t sub_297ED3FD4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_UpdateWrLen");
  if (*(a1 + 67) == *(a1 + 646))
  {
    v2 = *(a1 + 68);
    if (v2 == 4)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2 + 1;
    }

    if (v2 == 4)
    {
      v4 = *(a1 + 70) + 1;
    }

    else
    {
      v4 = *(a1 + 70);
    }
  }

  else
  {
    if (*(a1 + 70) != 255 || *(a1 + 67) || *(a1 + 68) != 4)
    {
      if (*(a1 + 67))
      {
        v6 = 245;
      }

      else
      {
        *(a1 + 646) = 0;
        *(a1 + 543) = 2;
        v6 = sub_297ED1760(a1, 0, 1, 11);
      }

      goto LABEL_38;
    }

    v4 = 0;
    v3 = 1;
  }

  if (*(a1 + 218))
  {
    phOsalNfc_MemCopy();
    v5 = *(a1 + 218);
    if (v5 == 2)
    {
      *(a1 + 267) = bswap32(*(a1 + 252)) >> 16;
    }

    else if (v5 == 1)
    {
      *(a1 + 267) = *(a1 + 252);
    }

    *(a1 + 218) = 0;
    ++v4;
  }

  else
  {
    v7 = a1 + 266;
    phOsalNfc_MemCopy();
    v8 = *(a1 + 252);
    if (v8 < 0xFF)
    {
      if (*(a1 + 560) != 1)
      {
        LOBYTE(v8) = *(v7 + v3) + v8;
      }

      *(v7 + v3) = v8;
    }

    else
    {
      if (v3 != 65534 && v3 != 0xFFFF)
      {
        v9 = v3 + 1;
      }

      else
      {
        v9 = v3;
      }

      if ((v9 & 0xFFFE) == 2)
      {
        *(v7 + v9) = __rev16(v8);
        *(a1 + 218) = 0;
      }

      else
      {
        if (v9 == 4)
        {
          *(a1 + 270) = BYTE1(v8);
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }

        *(a1 + 218) = v10;
      }
    }
  }

  phOsalNfc_MemCopy();
  *(a1 + 266) = v4;
  v6 = sub_297ED4A38(a1);
  if (*(a1 + 218))
  {
    v11 = 5;
  }

  else
  {
    v11 = 6;
  }

  *a1 = v11;
LABEL_38:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_UpdateWrLen");
  return v6;
}

uint64_t sub_297ED41E4(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iFndNdefComp");
  if (*(a1 + 264) != 16)
  {
    *a2 = 1;
    v5 = 27;
    goto LABEL_67;
  }

  v4 = *(a1 + 540);
  if ((v4 - 1) < 2)
  {
    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iFndNdefCompReadOp");
    *a2 = 0;
    if (*(a1 + 75))
    {
      sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_ChkRemainTLV");
      v7 = *(a1 + 75);
      if ((v7 - 1) > 1)
      {
        v11 = *(a1 + 266);
        if (v11 != 255 && (*(a1 + 266) || *(a1 + 66) == 1))
        {
          v12 = *(a1 + 650);
          *(a1 + 80) = v11;
          *(a1 + 82) = v11;
          if (v12 >= v11 && *(a1 + 66) != 1)
          {
            sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_UpdateLen");
            *(a1 + 650) -= v11;
            *(a1 + 68) = ((v11 + 1) & 3) + 1;
            *(a1 + 70) = *(a1 + 647) + ((v11 + 1) >> 2);
            sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_UpdateLen");
            if (*(a1 + 266) > 0xFu)
            {
              sub_297ED1358(a1, *(a1 + 70));
            }

            else
            {
              sub_297ED37E4(a1, a2);
            }
          }
        }

        else
        {
          v17 = __rev16(*(a1 + 267));
          if (v17 <= *(a1 + 650))
          {
            sub_297E9C0B8(a1, v17);
          }

          *(a1 + 80) = v17;
          *(a1 + 82) = v17;
        }
      }

      else
      {
        if (v7 == 1)
        {
          v8 = *(a1 + 78);
          v9 = 266;
        }

        else
        {
          LOBYTE(v8) = *(a1 + 266);
          v9 = 267;
        }

        v18 = *(a1 + v9) | (v8 << 8);
        *(a1 + 80) = *(a1 + v9) | (v8 << 8);
        *(a1 + 82) = v18;
        v19 = 1;
        if (v18 >= 0xFF && *(a1 + 650) > v18)
        {
          v19 = sub_297E9C0B8(a1, v18) == 1;
        }

        *a2 = v19;
      }

      *(a1 + 75) = 0;
      v5 = sub_297E9C0B8(a1, *(a1 + 82));
      sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_ChkRemainTLV");
    }

    else
    {
      v10 = *(a1 + 66);
      if (v10 == 1)
      {
        v5 = 0;
        goto LABEL_43;
      }

      sub_297E4E0B0(0, a1 + 2712, 8, 4u, "Checking NDEF TLV (Type: 0x03) in the response");
      v5 = sub_297ED37E4(a1, a2);
      *a2 = v5 != 13;
    }

    if (*(a1 + 66) != 1)
    {
LABEL_52:
      if ((v5 > 0x19 || ((1 << v5) & 0x2002001) == 0) && *(a1 + 540) == 1)
      {
        *(a1 + 545) = 3;
      }

      v21 = "phFriNfc_MifareUL_iFndNdefCompReadOp";
      goto LABEL_61;
    }

    v10 = *(a1 + 75) == 0;
LABEL_43:
    if (v10 && v5 != 157)
    {
      *a2 = 0;
      if (*(a1 + 646))
      {
        *(a1 + 646) = 0;
        *(a1 + 543) = 4;
        v5 = sub_297ED1760(a1, 0, 1, 11);
        *a2 = v5 != 13;
      }

      else
      {
        v5 = sub_297ED3DF8(a1, a2);
      }
    }

    goto LABEL_52;
  }

  if (v4 == 3)
  {
    if (*(a1 + 84) == 1)
    {
      v5 = sub_297ED3FD4(a1);
LABEL_66:
      *a2 = v5 != 13;
      goto LABEL_67;
    }

    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_CallWrOp");
    *(a1 + 647) = *(a1 + 70);
    v13 = a1 + 266;
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    *(a1 + 266) = *(a1 + 647);
    v14 = *(a1 + 68);
    v15 = v14 + 1;
    if (*(a1 + 248) < 0xFFu)
    {
      *(v13 + v15) = 0;
      if (v14 > 2 || !sub_297ED5998(a1, *(a1 + 647), *(a1 + 646)) || !sub_297ED5A78(a1, *(a1 + 647), *(a1 + 646)))
      {
        goto LABEL_65;
      }

      v20 = 1;
      phOsalNfc_MemCopy();
    }

    else
    {
      *(v13 + v15) = -1;
      if (v14 > 2)
      {
        v16 = 2;
      }

      else
      {
        *(v14 + v13 + 2) = 0;
        v16 = 1;
      }

      v20 = 0;
      *(a1 + 218) = v16;
    }

    *(a1 + 216) = v20;
LABEL_65:
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    **(a1 + 528) = 4;
    *a1 = 2;
    v5 = sub_297ED4A38(a1);
    sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_CallWrOp");
    goto LABEL_66;
  }

  if (v4 == 5)
  {
    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iFndNdefCompIntReadOp");
    if (!*(a1 + 646) || *(a1 + 647))
    {
      ++*(a1 + 647);
    }

    v5 = sub_297ED1B28(a1);
    if (v5)
    {
      goto LABEL_60;
    }

    if (*(a1 + 74) == 1)
    {
      v6 = sub_297ED3FD4(a1);
    }

    else
    {
      if (!*(a1 + 650))
      {
        v5 = 0;
        goto LABEL_60;
      }

      v6 = sub_297ED3F48(a1);
    }

    v5 = v6;
LABEL_60:
    *a2 = v5 != 13;
    v21 = "phFriNfc_MifareUL_iFndNdefCompIntReadOp";
LABEL_61:
    sub_297E4DFAC(2, a1, 8, 5u, v21);
    goto LABEL_67;
  }

  *a2 = 1;
  v5 = 29;
LABEL_67:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iFndNdefComp");
  return v5;
}

uint64_t sub_297ED47A4(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iTermTlv");
  v4 = sub_297ED3FD4(a1);
  *a2 = v4 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iTermTlv");
  return v4;
}

uint64_t sub_297ED4824(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iWrLenTlv");
  v4 = *(a1 + 68);
  if (v4 == 4)
  {
    if (*(a1 + 70) + 1 != *(a1 + 647))
    {
      goto LABEL_7;
    }

LABEL_6:
    phOsalNfc_MemCopy();
    goto LABEL_7;
  }

  if ((v4 - 1) <= 2 && *(a1 + 647) == *(a1 + 70))
  {
    goto LABEL_6;
  }

LABEL_7:
  phOsalNfc_MemCopy();
  v5 = *(a1 + 545);
  if (!v5)
  {
    v5 = 2;
  }

  *(a1 + 545) = v5;
  *(a1 + 252) = 0;
  *(a1 + 216) = 0;
  if (*(a1 + 646))
  {
    *(a1 + 646) = 0;
    *(a1 + 543) = 6;
    v6 = sub_297ED1760(a1, 0, 1, 11);
    v7 = v6 != 13;
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  *a2 = v7;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iWrLenTlv");
  return v6;
}

uint64_t sub_297ED4954(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iRoNdefComp");
  if (a1)
  {
    if (*(a1 + 264) == 16)
    {
      phOsalNfc_MemCopy();
      *(a1 + 266) = *(a1 + 647);
      phOsalNfc_MemCopy();
      *(a1 + 270) = 15;
      *a1 = 8;
      v4 = sub_297ED4A38(a1);
      v5 = v4;
      if (a2)
      {
        *a2 = v4 != 13;
      }
    }

    else
    {
      v5 = 27;
    }
  }

  else
  {
    v5 = 0;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iRoNdefComp");
  return v5;
}

uint64_t sub_297ED4A38(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_Wr4bytes");
  *(a1 + 264) = 260;
  *(a1 + 540) = 3;
  *(a1 + 232) = 162;
  *(a1 + 48) = sub_297ED2558;
  *(a1 + 56) = a1;
  *(a1 + 526) = 5;
  v2 = sub_297E98D38(a1, sub_297ED29B0);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_Wr4bytes");
  return v2;
}

uint64_t sub_297ED4AE8(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iRoNdefWriteCC");
  if (!a1)
  {
    v4 = 255;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(a1 + 266) == 10 && *(a1 + 264) == 1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 28;
  if (a2)
  {
LABEL_7:
    *a2 = 1;
  }

LABEL_8:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iRoNdefWriteCC");
  return v4;
}

uint64_t sub_297ED4B94(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorChk1");
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 266) == 10)
    {
      v4 = sub_297ED1760(a1, *(a1 + 646), 2, 10);
    }

    else
    {
      *a2 = 1;
      v4 = 28;
    }
  }

  else
  {
    *a2 = 1;
    v4 = 27;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorChk1");
  return v4;
}

uint64_t sub_297ED4C44(uint64_t a1, char *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorRd1");
  if (*(a1 + 264) != 1)
  {
    v4 = 27;
LABEL_6:
    v5 = 1;
    goto LABEL_7;
  }

  if (*(a1 + 266) != 10)
  {
    v4 = 28;
    goto LABEL_6;
  }

  v4 = sub_297ED1760(a1, *(a1 + 646), 2, 14);
  v5 = 0;
LABEL_7:
  *a2 = v5;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorRd1");
  return v4;
}

uint64_t sub_297ED4CF8(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorRd2");
  if (*(a1 + 647) == 255)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 70) & 0xFC;
  }

  *(a1 + 647) = v4;
  v5 = sub_297ED34C0(a1);
  *a2 = v5 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorRd2");
  return v5;
}

uint64_t sub_297ED4D98(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorWrite1");
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 266) == 10)
    {
      v4 = sub_297ED1760(a1, *(a1 + 646), 2, 16);
    }

    else
    {
      *a2 = 1;
      v4 = 28;
    }
  }

  else
  {
    *a2 = 1;
    v4 = 27;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorWrite1");
  return v4;
}

uint64_t sub_297ED4E48(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorWrite2");
  *(a1 + 647) = 0;
  if (*(a1 + 540) == 5)
  {
    v4 = sub_297ED1358(a1, 0);
  }

  else
  {
    v5 = sub_297ED1B28(a1);
    if (v5)
    {
      goto LABEL_5;
    }

    if (*(a1 + 74) == 1)
    {
      v4 = sub_297ED3FD4(a1);
    }

    else
    {
      if (!*(a1 + 650))
      {
        v5 = 0;
        goto LABEL_5;
      }

      v4 = sub_297ED3F48(a1);
    }
  }

  v5 = v4;
LABEL_5:
  *a2 = v5 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorWrite2");
  return v5;
}

uint64_t sub_297ED4F20(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorWrInit1");
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 266) == 10)
    {
      v4 = sub_297ED1760(a1, *(a1 + 646), 2, 20);
    }

    else
    {
      *a2 = 1;
      v4 = 28;
    }
  }

  else
  {
    *a2 = 1;
    v4 = 27;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorWrInit1");
  return v4;
}

uint64_t sub_297ED4FD0(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorRW1");
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 266) == 10)
    {
      v4 = sub_297ED1760(a1, *(a1 + 646), 2, 18);
    }

    else
    {
      *a2 = 1;
      v4 = 28;
    }
  }

  else
  {
    *a2 = 1;
    v4 = 27;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorRW1");
  return v4;
}

uint64_t sub_297ED5080(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorRW2");
  *(a1 + 647) = 0;
  *(a1 + 266) = 0;
  v4 = *(a1 + 68);
  if (v4 > 4 || ((1 << v4) & 0x13) == 0)
  {
    v16 = 0;
  }

  else
  {
    if (v4 == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    if (*(a1 + 248) >= v6)
    {
      phOsalNfc_MemCopy();
      *(a1 + 216) = v6;
      **(a1 + 528) = v6 + 1;
    }

    else
    {
      phOsalNfc_MemCopy();
      v7 = *(a1 + 248);
      v8 = v7 + 2;
      v9 = (v7 + 2);
      *(a1 + 216) = v7;
      if (v7 == 0xFE)
      {
        v10 = 0;
      }

      else
      {
        v10 = (v7 + 2) - 1;
      }

      **(a1 + 528) = v10;
      if (v9 <= 4)
      {
        v11 = 0;
        *(a1 + 74) = 1;
        v12 = v8 + 1;
        v13 = a1 + v8 + 266;
        do
        {
          if (v11)
          {
            v14 = 0;
          }

          else
          {
            v14 = -2;
          }

          *(v13 + v11) = v14;
          v15 = v12++;
          ++v11;
        }

        while (v15 != 5);
      }
    }

    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    *a1 = 2;
    v16 = sub_297ED4A38(a1);
  }

  *a2 = v16 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorRW2");
  return v16;
}

uint64_t sub_297ED5218(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorReset1");
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 266) == 10)
    {
      v4 = sub_297ED1760(a1, *(a1 + 646), 2, 12);
    }

    else
    {
      *a2 = 1;
      v4 = 28;
    }
  }

  else
  {
    *a2 = 1;
    v4 = 27;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorReset1");
  return v4;
}

uint64_t sub_297ED52C8(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorReset2");
  v4 = *(a1 + 543);
  if (v4 <= 3)
  {
    if (v4 == 1)
    {
      v5 = 0;
      goto LABEL_11;
    }

    if (v4 == 2)
    {
      v5 = sub_297ED3FD4(a1);
      LOBYTE(v4) = v5 != 13;
LABEL_11:
      *a2 = v4;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (v4 == 6)
  {
    v5 = 0;
    LOBYTE(v4) = 1;
    goto LABEL_11;
  }

  if (v4 != 4)
  {
LABEL_8:
    *a2 = 1;
    v5 = 20;
    goto LABEL_12;
  }

  v5 = sub_297ED3DF8(a1, a2);
LABEL_12:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorReset2");
  return v5;
}

uint64_t sub_297ED53AC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorChk2");
  v2 = *(a1 + 647);
  v3 = v2 <= 0xFC;
  v4 = 252 - v2;
  if (!v3)
  {
    v4 = 0;
  }

  v5 = -v4;
  *(a1 + 647) = v5;
  v6 = sub_297ED1358(a1, v5);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorChk2");
  return v6;
}

uint64_t sub_297ED5438(uint64_t a1, BOOL *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorWrInit2");
  if (*(a1 + 560) == 1)
  {
    v4 = sub_297ED1878(a1);
  }

  else
  {
    v4 = sub_297ED1B28(a1);
  }

  v5 = v4;
  *a2 = v4 != 13;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_iSelSectorWrInit2");
  return v5;
}

uint64_t sub_297ED54CC(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifareUL_H_Complete");
  *a1 = 0;
  v4 = *(a1 + 547);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      (*(a1 + 24))(*(a1 + 40), a2);
    }

    else if (v4 == 6)
    {
      (*(a1 + 32))(*(a1 + 40), a2);
    }
  }

  else if (v4 == 1)
  {
    if (a2 != 25 && a2)
    {
      *(a1 + 546) = 0;
      LOBYTE(v9) = 3;
      if (a2 == 28 || a2 == 22)
      {
        a2 = 152;
      }
    }

    else
    {
      *(a1 + 546) = 1;
      v5 = *(a1 + 650);
      HIDWORD(v9) = *(a1 + 82);
      v10 = v5;
      LOBYTE(v9) = *(a1 + 545);
    }

    (*(a1 + 8))(*(a1 + 40), a2, &v9);
  }

  else if (v4 == 2)
  {
    if (a2)
    {
      *(a1 + 540) = 1;
    }

    else
    {
      LODWORD(v8) = **(a1 + 552);
      v7 = *(a1 + 240);
    }

    (*(a1 + 16))(*(a1 + 40), a2, &v7);
  }

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifareUL_H_Complete");
}

uint64_t sub_297ED5620(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_Chk16Bytes");
  if (a2 == 16)
  {
    v4 = *(a1 + 647);
    if (v4 > 0xFB)
    {
      v8 = *(a1 + 646) + 1;
      *(a1 + 646) = v8;
      v6 = sub_297ED1760(a1, v8, 1, 9);
    }

    else
    {
      v5 = v4 + 4;
      *(a1 + 647) = v5;
      v6 = sub_297ED1358(a1, v5);
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_Chk16Bytes");
  return v7;
}

uint64_t sub_297ED56D8(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_findDynLockBytes");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 8, 4u, "Invalid Parameter");
    v13 = 1;
    goto LABEL_16;
  }

  v4 = (a1 + a2);
  v5 = v4[266];
  v6 = v4[267];
  v7 = v4[268];
  v8 = v5 >> 4;
  v9 = v5 & 0xF;
  v10 = v6 >> 3;
  if ((v6 & 7) != 0)
  {
    LOBYTE(v10) = v10 + 1;
  }

  v11 = (v8 << (v7 & 0xF)) + v9;
  if (v11 > 0x3Fu)
  {
    if (v11 + v10 < *(a1 + 204) + 16)
    {
      v14 = *(a1 + 132);
      if (v14 > 7)
      {
        v12 = "Lock control tlv count exceeds the limit";
        goto LABEL_6;
      }

      v15 = 0;
      v16 = (a1 + 98);
      while (LOWORD(v16[v15]) != v11)
      {
        if (v14 < ++v15)
        {
          v17 = &v16[v14];
          *v17 = v11;
          *(v17 + 1) = v10;
          *(a1 + 132) = v14 + 1;
          *(a1 + 133) += v10;
          sub_297E9C28C(a1, v16, (v14 + 1));
          break;
        }
      }
    }

    v13 = 0;
    goto LABEL_16;
  }

  v12 = "Incorrect Lock control TLV values";
LABEL_6:
  sub_297E4E0B0(0, a1 + 2712, 8, 4u, v12);
  v13 = 255;
LABEL_16:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_findDynLockBytes");
  return v13;
}

uint64_t sub_297ED5848(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MfUL_H_findReservedBytes");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 8, 4u, "Invalid Parameter");
    v7 = 1;
    goto LABEL_13;
  }

  v4 = (a1 + a2);
  v5 = (v4[266] >> 4 << (v4[268] & 0xF)) + (v4[266] & 0xF);
  if (((v4[266] >> 4 << (v4[268] & 0xF)) + (v4[266] & 0xF)) > 0x3Fu)
  {
    v8 = v4[267];
    if (v8 + v5 < *(a1 + 204) + 16)
    {
      v9 = *(a1 + 186);
      if (v9 > 1)
      {
        v6 = "Memory control tlv count exceeds the limit";
        goto LABEL_4;
      }

      v10 = (a1 + 152);
      if (v9 != 1 || *v10 != v5)
      {
        v11 = &v10[v9];
        *v11 = v5;
        *(v11 + 1) = v8;
        *(a1 + 186) = v9 + 1;
        *(a1 + 187) += v8;
        sub_297E9C28C(a1, v10, (v9 + 1));
      }
    }

    v7 = 0;
    goto LABEL_13;
  }

  v6 = "Incorrect Memory control TLV values";
LABEL_4:
  sub_297E4E0B0(0, a1 + 2712, 8, 4u, v6);
  v7 = 255;
LABEL_13:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MfUL_H_findReservedBytes");
  return v7;
}

uint64_t sub_297ED5998(uint64_t a1, __int16 a2, __int16 a3)
{
  sub_297E4E1B4(2, a1, 8, 5u, "chkDynLockBytes");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 8, 4u, "Invalid Parameter");
    goto LABEL_11;
  }

  v6 = *(a1 + 132);
  if (!*(a1 + 132))
  {
LABEL_11:
    v11 = 255;
    goto LABEL_12;
  }

  v7 = ((a3 << 10) + 4 * a2);
  v8 = (a1 + 100);
  while (1)
  {
    v9 = *(v8 - 1);
    if (v7 <= (v9 + *v8 - 1) && v7 + 4 > v9)
    {
      break;
    }

    v8 += 2;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_12:
  sub_297E4DFAC(2, a1, 8, 5u, "chkDynLockBytes");
  return v11;
}

uint64_t sub_297ED5A78(uint64_t a1, __int16 a2, __int16 a3)
{
  sub_297E4E1B4(2, a1, 8, 5u, "chkReservedBytes");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 8, 4u, "Invalid Parameter");
    goto LABEL_11;
  }

  v6 = *(a1 + 186);
  if (!*(a1 + 186))
  {
LABEL_11:
    v11 = 255;
    goto LABEL_12;
  }

  v7 = ((a3 << 10) + 4 * a2);
  v8 = (a1 + 154);
  while (1)
  {
    v9 = *(v8 - 1);
    if (v7 <= (v9 + *v8 - 1) && v7 + 4 > v9)
    {
      break;
    }

    v8 += 2;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  v11 = 0;
LABEL_12:
  sub_297E4DFAC(2, a1, 8, 5u, "chkReservedBytes");
  return v11;
}

uint64_t sub_297ED5B58(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_GetCurrentHeadIndex");
  if (a1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&unk_2A18BDDC0 + 14 * v5 + 5);
      if (v4)
      {
        break;
      }

      v4 = 1;
      v5 = 1;
    }

    while (v6 != a1);
    if (v6 == a1)
    {
      for (i = 0; i != 3; ++i)
      {
        v8 = *(a1 + 928 + 8 * i);
        if (v8)
        {
          v9 = *v8;
          v10 = v9 >> 5;
          if (v9 >> 5 == *(a1 + 912))
          {
            if (v10 - 2 >= 2)
            {
              if (!v10 && (v9 & 0xF) == *(a1 + 924))
              {
LABEL_18:
                v11 = 0;
                *a2 = i;
                goto LABEL_17;
              }
            }

            else if ((v9 & 0xF) == *(a1 + 916) && *(a1 + 920) == (v8[1] & 0x3F))
            {
              goto LABEL_18;
            }
          }
        }
      }
    }
  }

  v11 = 255;
LABEL_17:
  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_GetCurrentHeadIndex");
  return v11;
}

uint64_t sub_297ED5C84(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_GetAvailableHead");
  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 5);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 == a1)
  {
    v7 = 0;
    while (*(a1 + 928 + 8 * v7))
    {
      if (++v7 == 3)
      {
        goto LABEL_9;
      }
    }

    v8 = 0;
    *a2 = v7;
  }

  else
  {
LABEL_9:
    v8 = 255;
  }

  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_GetAvailableHead");
  return v8;
}

uint64_t sub_297ED5D54(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MapRemoteDevNfcIp1");
  if (!a2 || !a3)
  {
    v8 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "Invalid input parameter!");
    goto LABEL_6;
  }

  if (sub_297EE5B30(a1, *(a3 + 36), &v22))
  {
    goto LABEL_4;
  }

  v10 = 1;
  if (a4 > 130)
  {
    if (a4 != 131 && a4 != 133)
    {
      goto LABEL_13;
    }
  }

  else if (a4 != 3 && a4 != 5)
  {
LABEL_13:
    v10 = *(a3 + 32);
  }

  *(a2 + 63) = v10;
  *(a2 + 68) = v22;
  v8 = 255;
  if (a4 > 127)
  {
    if (a4 > 130)
    {
      if (a4 != 131)
      {
        if (a4 != 133)
        {
          goto LABEL_6;
        }

LABEL_31:
        v12 = *(a3 + 10);
        *(a2 + 10) = v12;
        if (v12)
        {
          phOsalNfc_SetMemory();
          if (*(a2 + 10) > 0xAu)
          {
            sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Received NFCID length exceeded max UID length");
            v8 = 255;
LABEL_65:
            if (*(a3 + 103) < 0xEu)
            {
              goto LABEL_6;
            }

            if (!*(a2 + 10))
            {
              *(a2 + 10) = 8;
              phOsalNfc_SetMemory();
              phOsalNfc_MemCopy();
            }

            v20 = *(a3 + 53);
            *(a2 + 64) = (4 * v20) & 0xC0;
            phOsalNfc_SetMemory();
            *(a2 + 59) = 0;
            if ((v20 & 2) == 0)
            {
              goto LABEL_6;
            }

            v21 = *(a3 + 103);
            if (v21 < 0xF)
            {
              goto LABEL_6;
            }

            *(a2 + 59) = v21 - 14;
            if (v21 > 0x30)
            {
              goto LABEL_71;
            }

LABEL_76:
            phOsalNfc_MemCopy();
            goto LABEL_6;
          }

          phOsalNfc_MemCopy();
        }

        v8 = 0;
        goto LABEL_65;
      }
    }

    else if (a4 != 128)
    {
      if (a4 != 130)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    }

    if (*(a3 + 103) < 0xEu)
    {
      v8 = 0;
      goto LABEL_6;
    }

    v14 = *(a3 + 53);
    *(a2 + 64) = (4 * v14) & 0xC0;
    phOsalNfc_SetMemory();
    *(a2 + 59) = 0;
    if ((v14 & 2) != 0)
    {
      v15 = *(a3 + 103);
      if (v15 >= 0xF)
      {
        *(a2 + 59) = v15 - 14;
        if (v15 > 0x30)
        {
          sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Received ATRInfo length exceeded max ATR length");
          v8 = 255;
          goto LABEL_75;
        }

        phOsalNfc_MemCopy();
      }
    }

    v8 = 0;
LABEL_75:
    *(a2 + 10) = 10;
    phOsalNfc_SetMemory();
    goto LABEL_76;
  }

  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 != 2)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

LABEL_35:
    v13 = *(a3 + 10);
    *(a2 + 10) = v13;
    if (v13)
    {
      if (v13 > 0xA)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Received NFCID length exceeded max UID length");
        v8 = 255;
LABEL_47:
        *(a2 + 61) = 0;
        if (*(a3 + 31) == 2)
        {
          phOsalNfc_MemCopy();
        }

        *(a2 + 60) = 0;
        if (*(a3 + 12))
        {
          *(a2 + 60) = *(a3 + 11);
        }

        if (*(a3 + 103) < 0xFu)
        {
          goto LABEL_6;
        }

        v16 = *(a3 + 54);
        *(a2 + 64) = (4 * v16) & 0xC0;
        phOsalNfc_SetMemory();
        *(a2 + 59) = 0;
        if ((v16 & 2) != 0)
        {
          v17 = *(a3 + 103);
          if (v17 >= 0x10)
          {
            *(a2 + 59) = v17 - 15;
            if (v17 > 0x30)
            {
              sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Received ATRInfo length exceeded max ATR length");
              v8 = 255;
            }

            else
            {
              phOsalNfc_MemCopy();
            }
          }
        }

        if (*(a2 + 10))
        {
          goto LABEL_6;
        }

        goto LABEL_75;
      }

      phOsalNfc_SetMemory();
      phOsalNfc_MemCopy();
    }

    v8 = 0;
    goto LABEL_47;
  }

  if (a4 == 3)
  {
    goto LABEL_35;
  }

  if (a4 != 5)
  {
    goto LABEL_6;
  }

LABEL_25:
  v11 = *(a3 + 10);
  *(a2 + 10) = v11;
  if (v11)
  {
    phOsalNfc_SetMemory();
    if (*(a2 + 10) > 0xAu)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Received NFCID length exceeded max UID length");
      v8 = 255;
      goto LABEL_57;
    }

    phOsalNfc_MemCopy();
  }

  v8 = 0;
LABEL_57:
  if (*(a3 + 103) >= 0xFu)
  {
    if (!*(a2 + 10))
    {
      *(a2 + 10) = 8;
      phOsalNfc_SetMemory();
      phOsalNfc_MemCopy();
    }

    v18 = *(a3 + 54);
    *(a2 + 64) = (4 * v18) & 0xC0;
    phOsalNfc_SetMemory();
    *(a2 + 59) = 0;
    if ((v18 & 2) != 0)
    {
      v19 = *(a3 + 103);
      if (v19 >= 0x10)
      {
        *(a2 + 59) = v19 - 15;
        if (v19 <= 0x30)
        {
          goto LABEL_76;
        }

LABEL_71:
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Received ATRInfo length exceeded max ATR length");
LABEL_4:
        v8 = 255;
      }
    }
  }

LABEL_6:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MapRemoteDevNfcIp1");
  return v8;
}

uint64_t sub_297ED62FC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CoreDeleteList");
  if (a2)
  {
    if (a3 < 6)
    {
      v6 = a2 + 124;
      *(a2 + 124 + 4 * a3) = 0;
      v7 = *(a2 + 64 + 8 * a3);
      v8 = a3;
      if (v7)
      {
        for (i = *(v7 + 264); i; i = *(v10 + 264))
        {
          v10 = i;
          phOsalNfc_FreeMemory();
        }

        phOsalNfc_FreeMemory();
        *(a2 + 64 + 8 * v8) = 0;
        *(a2 + 2 * v8 + 112) = 1;
        *(v6 + 4 * v8) = 0;
      }

      else
      {
        sub_297E4E0B0(2, a1, 7, 4u, "phHciNfc_CoreDeleteList:List is empty");
        *(v6 + 4 * a3) = 0;
        *(a2 + 2 * a3 + 112) = 1;
      }
    }

    else
    {
      sub_297E4E0B0(2, a1, 7, 4u, "phHciNfc_CoreDeleteList : Index out of boundary ");
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_CoreDeleteList:NULL HCI Core context!");
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CoreDeleteList");
}

uint64_t sub_297ED646C(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CoreGetNewNode");
  if (!a2)
  {
    goto LABEL_14;
  }

  v8 = a2 + 64;
  v9 = *(a2 + 64 + 8 * a4);
  if (!v9)
  {
    *(v8 + 8 * a4) = phOsalNfc_GetMemory_Typed();
    phOsalNfc_SetMemory();
    v20 = *(v8 + 8 * a4);
    *(v20 + 264) = 0;
    v13 = *(v8 + 8 * a4);
    *(v20 + 260) = 0;
    *(v13 + 264) = 0;
    *(v13 + 260) = a3;
    *(a2 + 4 * a4 + 124) = a3 - 2;
    goto LABEL_15;
  }

  do
  {
    v10 = v9;
    v9 = *(v9 + 264);
  }

  while (v9);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  *(v10 + 264) = Memory_Typed;
  if (!Memory_Typed)
  {
    sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_CoreGetNewNode:Memory allocation failed while creating new node!");
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  ++*(a2 + 2 * a4 + 112);
  phOsalNfc_SetMemory();
  v12 = *(v10 + 264);
  *(v12 + 260) = 254;
  *(v12 + 264) = 0;
  v13 = *(v10 + 264);
  LODWORD(v12) = *(v13 + 260);
  v14 = __CFADD__(a3, v12);
  v15 = v12 + a3;
  if (v14)
  {
    v15 = 0;
  }

  *(v13 + 260) = v15;
  v16 = a2 + 4 * a4;
  v17 = *(v16 + 124);
  v18 = a3 - 1;
  if (!a3)
  {
    v18 = 0;
  }

  v14 = __CFADD__(v18, v17);
  v19 = v17 + v18;
  if (v14)
  {
    v19 = 0;
  }

  *(v16 + 124) = v19;
LABEL_15:
  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CoreGetNewNode");
  return v13;
}

uint64_t sub_297ED6614(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = 255;
  if (a2 && a3)
  {
    v9 = *(a3 + 8);
    sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_HciCoreExtractData");
    v21 = a4;
    v22 = a2;
    v10 = *(a2 + 8 * a4 + 64);
    v11 = *(a2 + 2 * a4 + 112);
    *a3 = *v10 & 0x7F;
    *(a3 + 2) = *(v10 + 1) >> 6;
    *(a3 + 1) = *(v10 + 1) & 0x3F;
    v12 = *(v10 + 260);
    if (v12 <= 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 - 2;
    }

    phOsalNfc_MemCopy();
    if (v11 >= 2)
    {
      v14 = *(v10 + 264);
      if (v9)
      {
        v15 = v9 + v13;
      }

      else
      {
        v15 = 0;
      }

      for (i = 1; i < v11; ++i)
      {
        v17 = *(v14 + 260);
        v18 = v17 - 1;
        if (v17 == 1)
        {
          sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_HciCoreExtractData: HCI Core Receive- Zero Payload Length");
        }

        else
        {
          phOsalNfc_MemCopy();
          if (v15)
          {
            v15 += v18;
          }

          else
          {
            v15 = 0;
          }

          v14 = *(v14 + 264);
          if (v13 <= -v17)
          {
            v13 += v18;
          }

          else
          {
            v13 = 0;
          }

          if (!v14)
          {
            break;
          }
        }
      }
    }

    v19 = *(v22 + 4 * v21 + 124);
    *(a3 + 4) = v19;
    if (v13 == v19)
    {
      v5 = 0;
    }

    else
    {
      sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_HciCoreExtractData:HCI Core Receive- Mismatch in Number of Payload Bytes Processed and Stored");
      v5 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_HciCoreExtractData");
  return v5;
}

uint64_t sub_297ED67E8(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendConnOpenCmd");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_SendConnOpenCmd:Setting up command Info to be sent to lower layer ..");
    phOsalNfc_SetMemory();
    *&v4 = 1;
    DWORD2(v4) = 4;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    *(a1 + 3808) = 0;
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E8B810, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendConnOpenCmd");
  return v2;
}

uint64_t sub_297ED6904(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_LogConnResp");
  if (a1)
  {
    if (!a2 && *(a1 + 3808) && (v4 = *(a1 + 3800)) != 0)
    {
      if (*v4 == 241)
      {
        v5 = 81;
      }

      else
      {
        v5 = 0;
        if (!*v4)
        {
          v6 = (a1 + 32 * *(a1 + 3818));
          v6[3834] = v4[1];
          v6[3833] = v4[2];
          v6[3832] = v4[3];
          v6[3848] = 1;
        }
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Conn Response invalid..");
      v5 = 255;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_LogConnResp");
  return v5;
}

uint64_t sub_297ED6A0C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteConnOpenSequence");
  if (a1)
  {
    if (*(a1 + 896))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
    }

    v4 = *(a1 + 3960);
    if (v4)
    {
      v5 = *(a1 + 3818);
      *(a1 + 3960) = 0;
      v4(*(a1 + 3952), a1 + 32 * v5 + 3832, a2);
    }
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteConnOpenSequence");
  return a2;
}

uint64_t sub_297ED6AA8(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  v4 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendConnCloseCmd");
  if (a1)
  {
    v4 = *(a1 + 32 * *(a1 + 3818) + 3832);
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_SendConnCloseCmd:Setting up command Info to be sent to lower layer ..");
    phOsalNfc_SetMemory();
    *&v5 = 1;
    DWORD2(v5) = 5;
    *&v6 = &v4;
    DWORD2(v6) = 1;
    *(a1 + 3808) = 0;
    v2 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E8B810, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendConnCloseCmd");
  return v2;
}

uint64_t sub_297ED6BE0(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_LogConnCloseResp");
  if (a1)
  {
    if (!a2 && *(a1 + 3808) && (v4 = *(a1 + 3800)) != 0)
    {
      v5 = *v4;
      if (v5 == 241)
      {
        v6 = 81;
      }

      else
      {
        v6 = 0;
        if (!v5)
        {
          *(a1 + 32 * *(a1 + 3818) + 3848) = 0;
        }
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Conn Response invalid..");
      v6 = 255;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v6 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_LogConnCloseResp");
  return v6;
}

uint64_t sub_297ED6CCC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteConnCloseSequence");
  if (a1)
  {
    if (*(a1 + 896))
    {
      *(a1 + 896) = 0;
    }

    v4 = *(a1 + 3960);
    if (v4)
    {
      v5 = *(a1 + 3818);
      *(a1 + 3960) = 0;
      v4(*(a1 + 3952), a1 + 32 * v5 + 3832, a2);
    }
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteConnCloseSequence");
  return a2;
}

uint64_t sub_297ED6D60(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_LogConnInit");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_LogConnInit:Initializing Connection Info..");
    *(a1 + 3832) = 0;
    *(a1 + 3834) = 0;
    *(a1 + 3824) = -1;
    *(a1 + 3828) = 255;
    *(a1 + 3848) = 0;
    *(a1 + 3818) = -1;
    *(a1 + 3816) = 256;
    *(a1 + 3969) = 0;
    phOsalNfc_SetMemory();
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Registering for Conn Credits Notification");
    BYTE5(v6) = 2;
    v5 = 3;
    LODWORD(v6) = 6;
    v2 = sub_297E59AEC(a1 + 936, &v5, sub_297ED6EE0, a1);
    if (v2)
    {
      v3 = "Conn Credits Ntf Registration failed";
    }

    else
    {
      v3 = "Conn Credits Ntf successfully Registered";
    }

    sub_297E4E0B0(1, a1 + 6524, 3, 4u, v3);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_LogConnInit");
  return v2;
}

uint64_t sub_297ED6EE0(uint64_t a1, uint64_t a2, int a3)
{
  v40 = -1;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_LogConnNotifCB");
  v6 = sub_297ED7658(a1);
  if (!a1 || (v7 = v6) == 0)
  {
    sub_297E4E0B0(2, a1, 3, 4u, " Invalid Context Param..");
    v9 = 1;
LABEL_11:
    sub_297E4E0B0(2, a1, 3, 4u, "phNciNfc_LogConnNotifCB:None is waiting for Credit Ntf or Wait Credit received on different logical connection ");
    goto LABEL_12;
  }

  if (!a2 || !*(a2 + 8) || a3 || !*(a2 + 16))
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Conn Notification invalid..");
    v9 = 255;
    goto LABEL_11;
  }

  if (*(a1 + 1852))
  {
    v8 = " Invalid Gid received..";
    v9 = 1;
    v10 = a1 + 6524;
LABEL_56:
    sub_297E4E0B0(1, v10, 3, 4u, v8);
    goto LABEL_11;
  }

  if (*(a1 + 1856) != 6)
  {
    v8 = " Invalid Oid received..";
    v9 = 1;
    v10 = a1 + 6524;
    goto LABEL_56;
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_LogConnNotifCB:Core Connection Credits Notification received..");
  v12 = *(a2 + 8);
  v13 = *v12;
  *(a1 + 3816) = 1;
  *(a1 + 3969) = 0;
  if (!v13)
  {
LABEL_69:
    v9 = 0;
    *(a1 + 3816) = 0;
    goto LABEL_11;
  }

  v14 = 0;
  v15 = 0;
  LOBYTE(v16) = 0;
  v39 = 0;
  while (1)
  {
    v9 = sub_297ED7700(a1, v12[1], &v40);
    if (v9)
    {
      sub_297E50DB0(1, a1 + 6524, 3, 4u, " Failed to get Conn details for index..");
      goto LABEL_18;
    }

    v17 = *(a2 + 8);
    v18 = a1 + 3824 + 32 * v40;
    v20 = *(v18 + 9);
    v19 = (v18 + 9);
    v21 = v19 - 1;
    v22 = v20 + *(v17 + 2);
    *v19 = v22;
    v38 = *(v17 + 2);
    v39 = *(v17 + 1);
    if (v22 == -1)
    {
      *v19 = -2;
      v24 = a1 + 6524;
      v25 = "phNciNfc_LogConnNotifCB:Credits Limit exceeded for this Conn,Ignoring notification value ..";
      goto LABEL_26;
    }

    sub_297E50DB0(1, a1 + 6524, 3, 4u, " Credits updated for ConnId");
    *(a1 + 6481) = 0;
    if (*(a1 + 4776) == 1)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Using timer with 10mSec to send EOF data packet\n");
      v23 = *(a1 + 4696);
      if (v23 != 0xFFFFFFFFFFFFLL)
      {
        sub_297E5A304(*(a1 + 6524), v23);
        *(a1 + 6512) = 0;
        if (phOsalNfc_Timer_Start())
        {
          *(a1 + 4776) = 0;
          sub_297E4E0B0(1, a1 + 6524, 3, 1u, "EOF timer start failed\n");
          goto LABEL_27;
        }

        sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_LogConnNotifCB");
        v24 = a1 + 6524;
        v25 = "EOF timer started\n";
LABEL_26:
        sub_297E4E0B0(1, v24, 3, 4u, v25);
      }
    }

LABEL_27:
    v16 = *v19;
    if (*(a1 + 5246) == 1 || *(a1 + 5614) == 1)
    {
      v14 = 1;
    }

    if (*(a1 + 6657) == 1 && *(a1 + 4828) == 1 && !*(a1 + 4826))
    {
      v26 = *v21 == 3 && v38 == 0;
      if (v26)
      {
        break;
      }
    }

    if (v14 != 1 || v16)
    {
      goto LABEL_18;
    }

    sub_297E4E0B0(1, a1 + 6524, 3, 2u, " No more Credits available..waiting for Credit Ntf");
    v27 = *(v7 + 56);
    if (v27 && v27 != 0xFFFFFFFFFFFFLL)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Stopping Credit await timer as zero credit recvd..");
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      *(a1 + 6513) = 0;
      *(v7 + 64) = 0;
      v28 = *(a1 + 6524);
      *(v7 + 56) = 0;
      v26 = v28 == 0;
      v29 = &gphNfc_DebugInfo_Sec;
      if (v26)
      {
        v29 = &gphNfc_DebugInfo_Prim;
      }

      v29[1] &= ~8u;
    }

    v14 = 1;
    *(a1 + 3969) = 1;
    if (++v15 >= v13)
    {
      goto LABEL_69;
    }

    LOBYTE(v16) = 0;
LABEL_19:
    v12 = *(a2 + 8);
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Zero credit Ntf Received");
  v30 = *(v7 + 56);
  if (v30 && v30 != 0xFFFFFFFFFFFFLL)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Stopping Credit await timer as zero credit recvd..");
    phOsalNfc_Timer_Stop();
    phOsalNfc_Timer_Delete();
    *(a1 + 6513) = 0;
    *(v7 + 64) = 0;
    v31 = *(a1 + 6524);
    *(v7 + 56) = 0;
    v26 = v31 == 0;
    v32 = &gphNfc_DebugInfo_Sec;
    if (v26)
    {
      v32 = &gphNfc_DebugInfo_Prim;
    }

    v32[1] &= ~8u;
  }

  *(a1 + 3969) = 1;
  v33 = *(a1 + 712);
  if (v33)
  {
    v33(*(a1 + 704), 19, 0, 0);
  }

  else
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Upon Zero credit reception, Not Restarting HCI command response timer (Upper layer CB not registered)");
  }

LABEL_18:
  if (++v15 < v13)
  {
    goto LABEL_19;
  }

  *(a1 + 3816) = 0;
  if (!v16)
  {
    goto LABEL_11;
  }

  if (v39 != *(a1 + 6545))
  {
    goto LABEL_11;
  }

  v34 = *(a1 + 6568);
  if (!v34)
  {
    goto LABEL_11;
  }

  if (v14 == 1)
  {
    *(a1 + 6660) = 0;
  }

  v35 = *(a1 + 6592);
  if (v35 && v35 != 0xFFFFFFFFFFFFLL && *(a1 + 6600) == 1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Stopping Credit await timer..");
    phOsalNfc_Timer_Stop();
    phOsalNfc_Timer_Delete();
    *(a1 + 6513) = 0;
    *(a1 + 6600) = 0;
    *(a1 + 6592) = 0;
    v36 = &gphNfc_DebugInfo_Sec;
    if (!*(a1 + 6524))
    {
      v36 = &gphNfc_DebugInfo_Prim;
    }

    v36[1] &= ~8u;
    v34 = *(a1 + 6568);
  }

  *(a1 + 6585) = 0;
  v37 = *(a1 + 6576);
  *(a1 + 6545) = -1;
  *(a1 + 6568) = 0;
  *(a1 + 6576) = 0;
  v34(v37, v16, v9);
LABEL_12:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_LogConnNotifCB");
  return v9;
}

uint64_t sub_297ED755C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ResetLogConn");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Resetting Logical conn");
    phOsalNfc_SetMemory();
    *(a1 + 3832) = 0;
    *(a1 + 3834) = 0;
    *(a1 + 3824) = -1;
    *(a1 + 3828) = 255;
    *(a1 + 3848) = 0;
    *(a1 + 3818) = -1;
    *(a1 + 3816) = 256;
    *(a1 + 3969) = 0;
    phOsalNfc_SetMemory();
    v2 = 0;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, "Reset Logical conn: Invalid Context Param");
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ResetLogConn");
  return v2;
}

uint64_t sub_297ED7658(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_LogConnGetCtxt");
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(&unk_2A18BDDC0 + 14 * v3 + 4);
      if (v2)
      {
        break;
      }

      v2 = 1;
      v3 = 1;
    }

    while (v4 != a1);
    if (v4 == a1)
    {
      v5 = a1 + 6536;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_LogConnGetCtxt");
  return v5;
}

uint64_t sub_297ED7700(_BYTE *a1, int a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetConnInfo");
  if (a1)
  {
    if (a1[3816])
    {
      sub_297E4E0B0(1, (a1 + 6524), 3, 4u, " Notification Case..");
      v6 = 0;
      v7 = a1 + 3832;
      while (1)
      {
        v8 = *v7;
        v7 += 32;
        if (v8 == a2)
        {
          break;
        }

        if (++v6 == 4)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v10 = a1 + 3864;
      v6 = 1;
      while (1)
      {
        v11 = a1[6584] ? *v10 : *(v10 - 8);
        if (v11 == a2)
        {
          break;
        }

        ++v6;
        v10 += 32;
        if (v6 == 4)
        {
LABEL_14:
          v9 = 255;
          goto LABEL_16;
        }
      }
    }

    v9 = 0;
    *a3 = v6;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v9 = 1;
  }

LABEL_16:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetConnInfo");
  return v9;
}

uint64_t sub_297ED7828(uint64_t a1)
{
  v4 = 0;
  v5 = a1;
  sub_297E4E1B4(0, &v5, 8, 5u, "phFriNfc_MifareStdMap_H_Reset");
  sub_297E57170(v5, &v4);
  if (v4)
  {
    for (i = 697; i != 737; ++i)
    {
      *(v4 + i) = 1;
    }

    v2 = 0;
  }

  else
  {
    v2 = 49;
  }

  sub_297E4DFAC(0, &v5, 8, 5u, "phFriNfc_MifareStdMap_H_Reset");
  return v2;
}

uint64_t sub_297ED78C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = a1;
  sub_297E4E1B4(0, &v14, 8, 5u, "phFriNfc_MifareStdMap_ChkNdef");
  sub_297E57170(v14, &v13);
  v5 = 1;
  if (!a3)
  {
    goto LABEL_20;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v6 = v13;
  if (!v13)
  {
    goto LABEL_20;
  }

  *(v13 + 8) = a2;
  *(v6 + 40) = a3;
  *(v6 + 547) = 1;
  *(v6 + 208) &= 0xFCu;
  *(v6 + 212) = 0;
  *(v6 + 540) = 1;
  *(v6 + 753) = 0;
  if ((*(*(v6 + 224) + 68) & 0x18) == 8)
  {
    *(v6 + 668) = 45;
    v7 = 7;
    if (!*(v6 + 544))
    {
      v8 = 720;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  *(v6 + 668) = 210;
  v7 = 8;
  if (*(v6 + 544))
  {
LABEL_8:
    v8 = *(v6 + 740);
    goto LABEL_10;
  }

  v8 = 3360;
LABEL_10:
  *(v6 + 740) = v8;
  *(v6 + 544) = v7;
  v9 = *(v6 + 666);
  if (v9 - 64 < 3 || v9 <= 2)
  {
    if (*(v6 + 677))
    {
      *v6 = 4;
      *(v6 + 540) = 1;
      *(v6 + 739) = 1;
      *(v6 + 48) = sub_297ED7BB8;
      *(v6 + 56) = v6;
      *(v6 + 232) = 48;
      *(v6 + 264) = 260;
      *(v6 + 266) = v9;
      *(v6 + 526) = 1;
      v11 = sub_297E98D38(v6, sub_297ED7F4C);
    }

    else
    {
      if (!*(v6 + 666))
      {
        *(v6 + 666) = 1;
      }

      v11 = sub_297ED7A60(v6);
    }

    v5 = v11;
  }

LABEL_20:
  sub_297E4DFAC(0, &v14, 8, 5u, "phFriNfc_MifareStdMap_ChkNdef");
  return v5;
}

uint64_t sub_297ED7A60(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_AuthSector");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297ED7BB8;
  *(a1 + 56) = a1;
  *(a1 + 264) = 260;
  *a1 = 3;
  *(a1 + 232) = 96;
  v2 = *(a1 + 71);
  v3 = 666;
  if (v2 == 1)
  {
    v3 = 70;
  }

  *(a1 + 266) = *(a1 + v3);
  v4 = *(a1 + 666);
  if ((v4 - 64 < 3 || v4 <= 2) && v2 != 1)
  {
    *(a1 + 267) = -1549622880;
    v7 = (a1 + 271);
    v8 = -23132;
LABEL_14:
    *v7 = v8;
    goto LABEL_15;
  }

  if (*(a1 + 540) != 6)
  {
    *(a1 + 267) = -137103405;
    v7 = (a1 + 271);
    v8 = -2093;
    goto LABEL_14;
  }

  *(a1 + 232) = 97;
  phOsalNfc_MemCopy();
LABEL_15:
  *(a1 + 526) = 7;
  *(a1 + 264) = 260;
  v9 = sub_297E98D38(a1, sub_297ED7F4C);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_AuthSector");
  return v9;
}

uint64_t sub_297ED7BB8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v27 = a1;
  v26 = 0;
  sub_297E4E1B4(0, &v27, 8, 5u, "phFriNfc_MifareStdMap_Process");
  if (a3)
  {
    if (*a2 == 3)
    {
      if (a3 - 146 <= 0x27 && ((1 << (a3 + 110)) & 0xF900000041) != 0)
      {
        sub_297EDC780(a2, &v26);
        goto LABEL_14;
      }

      v10 = sub_297EDC780(a2, &v26);
      goto LABEL_13;
    }

    if (a3 - 146 > 0x26 || ((1 << (a3 + 110)) & 0x7900000001) == 0)
    {
      if (a3 == 185)
      {
        a3 = a3;
      }

      else
      {
        a3 = 245;
      }
    }

    v26 = 1;
  }

  else
  {
    sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_MifareStd_GetNdefFuncIndex");
    v5 = 0;
    v6 = -1;
    v7 = &byte_2A1E95870;
    do
    {
      v8 = *v7;
      v7 += 16;
      if (*a2 == v8)
      {
        v6 = v5;
      }

      ++v5;
    }

    while (v5 != 16);
    sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_MifareStd_GetNdefFuncIndex");
    if (v6 != 0xFF)
    {
      v9 = *(&off_2A1E95868 + 2 * v6);
      if (!v9)
      {
        goto LABEL_14;
      }

      v10 = v9(a2, &v26);
LABEL_13:
      a3 = v10;
LABEL_14:
      if (v26 != 1)
      {
        return sub_297E4DFAC(0, &v27, 8, 5u, "phFriNfc_MifareStdMap_Process");
      }

      goto LABEL_20;
    }

    v26 = 1;
    a3 = 245;
  }

LABEL_20:
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_MifStd_H_Complete");
  *a2 = 0;
  v11 = a2[547];
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      (*(a2 + 3))(*(a2 + 5), a3);
    }

    else if (v11 == 6)
    {
      (*(a2 + 4))(*(a2 + 5), a3);
    }
  }

  else if (v11 == 1)
  {
    if (a3 != 25 && a3)
    {
      a2[546] = 0;
      LOBYTE(v30) = 3;
      if (((1 << a3) & 0x34400002) != 0)
      {
        v24 = 152;
      }

      else
      {
        v24 = a3;
      }

      if (a3 <= 0x1Du)
      {
        a3 = v24;
      }

      else
      {
        a3 = a3;
      }
    }

    else
    {
      v12 = 0;
      a2[546] = 1;
      v13 = a2 + 697;
      do
      {
        v14 = v12++;
      }

      while (v14 <= 0x27 && v13[v14] == 1);
      if (v14 > 0x27)
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = (v12 - 1);
        do
        {
          if (v13[v16])
          {
            break;
          }

          v17 = a2[544] == 8 && v16 > 0x1F;
          v18 = v17 ? 240 : 48;
          v15 += v18;
          if (v16 == 15)
          {
            v16 = 17;
          }

          else
          {
            ++v16;
          }
        }

        while (v16 < 0x28);
      }

      v19 = *(a2 + 44);
      v20 = v15 >= v19;
      v21 = v15 - v19;
      if (!v20)
      {
        v21 = 0;
      }

      v22 = v21 - 2;
      if (v21 <= 1)
      {
        v22 = 0;
      }

      if (v21 <= 0xFE)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21 - 4;
      }

      HIDWORD(v30) = *(a2 + 40);
      v31 = v23;
      LOBYTE(v30) = a2[545];
    }

    (*(a2 + 1))(*(a2 + 5), a3, &v30);
  }

  else if (v11 == 2)
  {
    if (!a3)
    {
      LODWORD(v29) = **(a2 + 69);
      v28 = *(a2 + 30);
    }

    (*(a2 + 2))(*(a2 + 5), a3, &v28);
  }

  sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_MifStd_H_Complete");
  return sub_297E4DFAC(0, &v27, 8, 5u, "phFriNfc_MifareStdMap_Process");
}

uint64_t sub_297ED7F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_MifareStdMap_CB_Transceive");
  sub_297E57170(v10, &v9);
  v7 = v9;
  if (v9)
  {
    if (a4)
    {
      *(v9 + 264) = *(a4 + 8);
    }

    (*(v7 + 48))(*(v7 + 2712), v7, a5);
  }

  return sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_MifareStdMap_CB_Transceive");
}

uint64_t sub_297ED7FE4(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v22 = a1;
  v21 = 0;
  v20 = 208;
  v19 = 0;
  sub_297E4E1B4(0, &v22, 8, 5u, "phFriNfc_MifareStdMap_RdNdef");
  sub_297E57170(v22, &v19);
  v11 = 1;
  if (a4 <= 1 && a3 && a2 && a5 && v19)
  {
    if (a4 == 1 || *(v19 + 540) != 3)
    {
      phOsalNfc_MemCopy();
      v12 = v19;
      v13 = (v19 + 2740);
      *(v19 + 2740) = 3;
      *(v12 + 16) = a5;
      *(v12 + 40) = a6;
      *(v12 + 547) = 2;
      if (*a3)
      {
        v13 = a3;
        v14 = a2;
      }

      else
      {
        v14 = v12 + 2736;
      }

      *(v12 + 248) = *v13;
      *(v12 + 552) = v13;
      *v13 = 0;
      *(v12 + 252) = 0;
      *(v12 + 540) = 2;
      v11 = 1;
      *(v12 + 753) = 1;
      *(v12 + 770) = 0;
      phOsalNfc_SetMemory();
      v15 = v19;
      if (*(v19 + 545) && *(v19 + 545) != 3)
      {
        if (a4 != 1 && *(v19 + 540) != 3 || (sub_297E4E1B4(2, v19, 8, 5u, "phFriNfc_MifStd_H_RdWrReset"), *(v15 + 80) = 0, *(v15 + 75) = 0, *(v15 + 86) = 0, *(v15 + 664) = 17039360, *(v15 + 677) = 0, *(v15 + 746) = 0, *(v15 + 68) = 0, *(v15 + 72) = 0, *(v15 + 758) = 1, *(v15 + 672) = 0, *(v15 + 740) = 16 * *(v15 + 668), *(v15 + 754) = 1, sub_297E4DFAC(2, v15, 8, 5u, "phFriNfc_MifStd_H_RdWrReset"), v15 = v19, *(v19 + 738) = 1, *(v15 + 66) = 0, !a4))
        {
          if (*(v15 + 672) == 1)
          {
            v11 = 26;
            goto LABEL_27;
          }

          if (*(v15 + 540) == 3)
          {
            LOBYTE(a4) = 1;
          }
        }

        *(v15 + 560) = a4;
        if (sub_297ED8258(v15))
        {
          v11 = 1;
        }

        else
        {
          v16 = v19;
          *(v19 + 240) = v14;
          *(v16 + 672) = 0;
          if (*(v16 + 677) == 1)
          {
            v17 = sub_297ED83BC(v16);
          }

          else
          {
            v17 = sub_297ED7A60(v16);
          }

          v11 = v17;
        }
      }
    }

    else
    {
      v11 = 245;
    }
  }

LABEL_27:
  sub_297E4DFAC(0, &v22, 8, 5u, "phFriNfc_MifareStdMap_RdNdef");
  return v11;
}

uint64_t sub_297ED8258(uint64_t a1)
{
  v6 = 0;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_BlkChk");
  while (1)
  {
    v2 = sub_297EDC9B8(a1, *(a1 + 666));
    if (*(a1 + 544) == 7)
    {
      if (v2 >= 0x10)
      {
        sub_297EDC9B8(a1, *(a1 + 666));
LABEL_21:
        v4 = 1;
        goto LABEL_22;
      }

      goto LABEL_4;
    }

    v3 = *(a1 + 666);
    if (v2 == 39)
    {
      break;
    }

    if (v3 == 64)
    {
      goto LABEL_10;
    }

    if (v2 > 0x1F)
    {
      goto LABEL_14;
    }

    if (v3 == 63)
    {
      *(a1 + 666) = 67;
      goto LABEL_18;
    }

LABEL_4:
    sub_297EDCA38(a1, v2, &v6);
LABEL_18:
    if (v6 == 1)
    {
      goto LABEL_19;
    }
  }

  if (v3 == 64)
  {
LABEL_10:
    *(a1 + 666) = 68;
    goto LABEL_18;
  }

  if (v3 == 255)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (((v3 + 1) & 0xF) == 0)
  {
    *(a1 + 666) = v3 + 1;
    goto LABEL_18;
  }

  if (*(a1 + 697 + v2))
  {
    *(a1 + 666) = v3 + 16;
    goto LABEL_18;
  }

  if (16 * v2 - 384 != v3 || *(a1 + 664))
  {
LABEL_19:
    v4 = 0;
    goto LABEL_22;
  }

  v4 = 0;
  *(a1 + 677) = 0;
LABEL_22:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_BlkChk");
  return v4;
}

uint64_t sub_297ED83BC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_RdABlock");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *a1 = 1;
  *(a1 + 540) = 2;
  *(a1 + 48) = sub_297ED7BB8;
  *(a1 + 56) = a1;
  v2 = *(a1 + 252);
  v3 = *(a1 + 248);
  if (v2 >= v3)
  {
    v14 = *(a1 + 668);
    v15 = *(a1 + 667);
    if (v3 == v2 || v14 <= v15)
    {
      v13 = 0;
      *(a1 + 672) = v14 == v15;
      **(a1 + 552) = v2;
    }

    else
    {
      v13 = 255;
    }
  }

  else
  {
    if (*(a1 + 664))
    {
      sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_ChkIntLen");
      if (!*(a1 + 80))
      {
        v13 = 0;
LABEL_44:
        sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_ChkIntLen");
        goto LABEL_45;
      }

      sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_IntLenWioutNdef");
      v4 = *(a1 + 248);
      v5 = *(a1 + 252);
      v6 = v4 >= v5;
      v7 = v4 - v5;
      if (!v6)
      {
        v7 = 0;
      }

      if (*(a1 + 740) >= v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = *(a1 + 740);
      }

      v9 = *(a1 + 80);
      v10 = *(a1 + 664);
      if (v9 > v10)
      {
        if (v8 > v10)
        {
          phOsalNfc_MemCopy();
          v11 = *(a1 + 664);
          *(a1 + 252) += v11;
          *(a1 + 740) -= v11;
          v12 = *(a1 + 80) - v11;
          *(a1 + 80) = v12;
          if (v12)
          {
            *(a1 + 66) = 0;
          }

          *(a1 + 664) = 0;
          ++*(a1 + 666);
          ++*(a1 + 667);
          if (sub_297ED8258(a1))
          {
            v13 = 1;
          }

          else
          {
            if (*(a1 + 677) == 1)
            {
              v26 = sub_297ED83BC(a1);
            }

            else
            {
              v26 = sub_297ED7A60(a1);
            }

            v13 = v26;
          }

          goto LABEL_43;
        }

        phOsalNfc_MemCopy();
        *(a1 + 252) += v8;
        *(a1 + 740) -= v8;
        *(a1 + 80) -= v8;
        phOsalNfc_MemCopy();
        v18 = *(a1 + 664) - v8;
        *(a1 + 664) = v18;
        if (!v18)
        {
          ++*(a1 + 666);
          ++*(a1 + 667);
        }

        v13 = 0;
        *(a1 + 66) = 0;
LABEL_39:
        if (*(a1 + 740))
        {
          v24 = *(a1 + 80) == 0;
        }

        else
        {
          v24 = 1;
        }

        *(a1 + 672) = v24;
        **(a1 + 552) = *(a1 + 252);
LABEL_43:
        sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_IntLenWioutNdef");
        goto LABEL_44;
      }

      if (v8 <= v9)
      {
        phOsalNfc_MemCopy();
        *(a1 + 252) += v8;
        *(a1 + 740) -= v8;
        phOsalNfc_MemCopy();
        v19 = *(a1 + 664);
        v20 = *(a1 + 80);
        *(a1 + 80) = v20 - v8;
        v21 = v19 - v8;
        *(a1 + 664) = v21;
        if (!v21)
        {
          if (*(a1 + 740))
          {
            v22 = v20 == v8;
          }

          else
          {
            v22 = 1;
          }

          v23 = v22;
          *(a1 + 672) = v23;
          ++*(a1 + 666);
          ++*(a1 + 667);
        }

        if (v20 == v8)
        {
          v13 = 0;
          *(a1 + 66) = 1;
          *(a1 + 72) = 0;
          goto LABEL_39;
        }
      }

      else
      {
        phOsalNfc_MemCopy();
        v16 = *(a1 + 80);
        *(a1 + 252) += v16;
        *(a1 + 740) -= v16;
        *(a1 + 66) = 1;
        *(a1 + 72) = 0;
        *(a1 + 672) = 1;
        v17 = *(a1 + 664);
        *(a1 + 80) = 0;
        if (!v17)
        {
          ++*(a1 + 666);
          ++*(a1 + 667);
          if (sub_297ED8258(a1))
          {
            v13 = 1;
          }

          else
          {
            if (*(a1 + 677) == 1)
            {
              v27 = sub_297ED83BC(a1);
            }

            else
            {
              v27 = sub_297ED7A60(a1);
            }

            v13 = v27;
          }

          goto LABEL_39;
        }
      }

      v13 = 0;
      goto LABEL_39;
    }

    *(a1 + 266) = *(a1 + 666);
    *(a1 + 526) = 1;
    *(a1 + 264) = 260;
    *(a1 + 232) = 48;
    v13 = sub_297E98D38(a1, sub_297ED7F4C);
  }

LABEL_45:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_RdABlock");
  return v13;
}

uint64_t sub_297ED8828(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6)
{
  v21 = 0;
  v22 = a1;
  sub_297E4E1B4(0, &v22, 8, 5u, "phFriNfc_MifareStdMap_WrNdef");
  sub_297E57170(v22, &v21);
  v11 = 1;
  if (!a3 || !a5 || !v21)
  {
    goto LABEL_11;
  }

  phOsalNfc_MemCopy();
  v12 = v21;
  *(v21 + 2740) = 3;
  *(v12 + 24) = a5;
  *(v12 + 40) = a6;
  *(v12 + 547) = 3;
  *(v12 + 252) = 0;
  **(v12 + 528) = 0;
  v13 = v21;
  v14 = v21 + 2736;
  if (*a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = (v21 + 2740);
  }

  if (*a3)
  {
    v14 = a2;
  }

  *(v21 + 240) = v14;
  *(v13 + 248) = *v15;
  *(v13 + 252) = 0;
  *(v13 + 256) = v15;
  *(v13 + 216) = 0;
  *v15 = 0;
  *(v13 + 540) = 3;
  *(v13 + 753) = 2;
  phOsalNfc_SetMemory();
  v16 = v21;
  if ((*(v21 + 545) | 2) == 3)
  {
    goto LABEL_10;
  }

  if (a4 != 1 && *(v21 + 540) != 2)
  {
    if (a4)
    {
LABEL_21:
      if (*(v16 + 540) == 2)
      {
        LOBYTE(a4) = 1;
      }

      goto LABEL_23;
    }

LABEL_18:
    if (*(v16 + 672) == 1 || *(v16 + 757) == 1)
    {
      v11 = 26;
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  *(v21 + 66) = 0;
  *(v16 + 676) = 1;
  *(v16 + 737) = 1;
  *(v16 + 664) = 17039360;
  *(v16 + 756) = 0;
  *(v16 + 86) = 0;
  *(v16 + 68) = 0;
  *(v16 + 76) = 0;
  *(v16 + 71) = 0;
  *(v16 + 769) = 0;
  *(v16 + 740) = 16 * *(v16 + 668);
  *(v16 + 746) = 0;
  *(v16 + 757) = 0;
  *(v16 + 754) = 0;
  *(v16 + 759) = 1;
  if (!a4)
  {
    goto LABEL_18;
  }

  if (a4 != 1)
  {
    goto LABEL_21;
  }

LABEL_23:
  *(v16 + 560) = a4;
  *(v16 + 677) = 0;
  v18 = sub_297ED8258(v16);
  v19 = v21;
  *(v21 + 672) = 0;
  if (v18)
  {
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  if (v19[757] == 1)
  {
    v20 = sub_297ED8A90(v19);
  }

  else if (v19[677] == 1)
  {
    if (v19[560] == 1)
    {
      v20 = sub_297ED8B2C(v19);
    }

    else
    {
      v20 = sub_297ED8C74(v19);
    }
  }

  else
  {
    v20 = sub_297ED7A60(v19);
  }

  v11 = v20;
LABEL_11:
  sub_297E4DFAC(0, &v22, 8, 5u, "phFriNfc_MifareStdMap_WrNdef");
  return v11;
}

uint64_t sub_297ED8A90(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_CallDisCon");
  *a1 = 15;
  *(a1 + 48) = sub_297ED7BB8;
  *(a1 + 56) = a1;
  v2 = sub_297E98EA8(a1, sub_297EDD08C, *(a1 + 224));
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_CallDisCon");
  return v2;
}

uint64_t sub_297ED8B2C(_BYTE *a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_RdBeforeWr");
  *a1 = 9;
  a1[540] = 3;
  if (a1[769] != 1)
  {
    goto LABEL_15;
  }

  --a1[666];
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MifStd_H_BlkChk_1");
  v2 = sub_297EDC9B8(a1, a1[666]);
  if (!a1[v2 + 697])
  {
    v3 = a1[544];
    v4 = v3 != 7 || v2 >= 0x10;
    if (!v4 || v3 == 8)
    {
      v5 = a1[666];
      if (v5 <= 0x80)
      {
        v6 = 3;
      }

      else
      {
        v6 = 15;
      }

      v7 = ((v5 + 1) & v6) == 0;
      a1[71] = v7;
      a1[666] = v5 - v7;
    }
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_BlkChk_1");
  if (a1[71] == 1)
  {
    a1[677] = 0;
    v8 = sub_297ED7A60(a1);
  }

  else
  {
LABEL_15:
    v8 = sub_297EDCB98(a1, a1[666]);
  }

  v9 = v8;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MifStd_H_RdBeforeWr");
  return v9;
}